@interface TSPSaveMeasurements
- (TSPSaveMeasurements)init;
- (unint64_t)_startRecordingTimeForPhase:(const char *)phase;
- (void)_stopRecordingTimeForPhase:(const char *)phase;
- (void)recordLostTimePeriodAtStart:(unint64_t)start;
- (void)recordRequestProcessingLatencySecsWithStartMCT:(unint64_t)t endMCT:(unint64_t)cT;
- (void)recordTailspinDurationWithStartMCT:(unint64_t)t endMCT:(unint64_t)cT;
- (void)recordTimeForSaveStandardChunksWithoutPostProcessing:(unint64_t)processing;
- (void)startRecordingTimeForAugmentLoggingPhase:(BOOL)phase collectOSLog:(BOOL)log scrubData:(BOOL)data;
- (void)startRecordingTimeForAugmentPhase:(const char *)phase pid:(int)pid originalFd:(int)fd dupFd:(int)dupFd;
- (void)startRecordingTimeForAugmentSymbolicatePhase;
- (void)startRecordingTimeForDumpRequestPhase:(const char *)phase pid:(int)pid;
- (void)startRecordingTimeForLibktracePostProcessing;
- (void)startRecordingTimeForSaveStandardChunksPhase:(const char *)phase pid:(int)pid;
- (void)startRecordingTimeForTailspinPostProcessing;
- (void)stopRecordingTimeForAugmentLoggingPhase:(BOOL)phase;
- (void)stopRecordingTimeForAugmentPhase:(BOOL)phase finalSizeBytes:(int64_t)bytes;
- (void)stopRecordingTimeForAugmentSymbolicatePhase;
- (void)stopRecordingTimeForDumpRequestPhase:(id)phase;
- (void)stopRecordingTimeForLibktracePostProcessing;
- (void)stopRecordingTimeForSaveStandardChunksPhase:(BOOL)phase;
- (void)stopRecordingTimeForTailspinPostProcessing;
@end

@implementation TSPSaveMeasurements

- (TSPSaveMeasurements)init
{
  v12.receiver = self;
  v12.super_class = TSPSaveMeasurements;
  v2 = [(TSPSaveMeasurements *)&v12 init];
  v3 = v2;
  if (v2)
  {
    v2->_request_id = atomic_fetch_add(&qword_27DA9CD08, 1uLL);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    timeSpentByPhases = v3->_timeSpentByPhases;
    v3->_timeSpentByPhases = dictionary;

    v3->_saveStandardChunksStartTimestampMCT = 0;
    __asm { FMOV            V0.2D, #-1.0 }

    *&v3->_ratioTimePeriodCovered = _Q0;
    v3->_lostTimePeriodAtStartSecs = -1.0;
  }

  return v3;
}

- (void)startRecordingTimeForDumpRequestPhase:(const char *)phase pid:(int)pid
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = *__error();
  v8 = sub_22EE82CE0();
  v9 = v8;
  request_id = self->_request_id;
  if (request_id - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    phaseCopy = "<unknown>";
    if (phase)
    {
      phaseCopy = phase;
    }

    v13 = 136446466;
    v14 = phaseCopy;
    v15 = 1024;
    pidCopy = pid;
    _os_signpost_emit_with_name_impl(&dword_22EE81000, v9, OS_SIGNPOST_INTERVAL_BEGIN, request_id, "DumpRequest", "Request from %{public}s [%d]", &v13, 0x12u);
  }

  *__error() = v7;
  [(TSPSaveMeasurements *)self _startRecordingTimeForPhase:"DumpRequest"];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)stopRecordingTimeForDumpRequestPhase:(id)phase
{
  v20 = *MEMORY[0x277D85DE8];
  phaseCopy = phase;
  v5 = *__error();
  v6 = sub_22EE82CE0();
  v7 = v6;
  request_id = self->_request_id;
  if (phaseCopy)
  {
    if (request_id - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      filePath = self->_filePath;
      v16 = 138543618;
      v17 = phaseCopy;
      v18 = 2114;
      v19 = filePath;
      v10 = "FAILED due to reason: %{public}@.\nFile path: %{public}@";
      v11 = v7;
      v12 = request_id;
      v13 = 22;
LABEL_8:
      _os_signpost_emit_with_name_impl(&dword_22EE81000, v11, OS_SIGNPOST_INTERVAL_END, v12, "DumpRequest", v10, &v16, v13);
    }
  }

  else if (request_id - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    v14 = self->_filePath;
    v16 = 138543362;
    v17 = v14;
    v10 = "Succeeded.\nFile path: %{public}@";
    v11 = v7;
    v12 = request_id;
    v13 = 12;
    goto LABEL_8;
  }

  *__error() = v5;
  [(TSPSaveMeasurements *)self _stopRecordingTimeForPhase:"DumpRequest"];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)startRecordingTimeForSaveStandardChunksPhase:(const char *)phase pid:(int)pid
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = *__error();
  v8 = sub_22EE82CE0();
  v9 = v8;
  request_id = self->_request_id;
  if (request_id - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    phaseCopy = "<unknown>";
    if (phase)
    {
      phaseCopy = phase;
    }

    v13 = 136446466;
    v14 = phaseCopy;
    v15 = 1024;
    pidCopy = pid;
    _os_signpost_emit_with_name_impl(&dword_22EE81000, v9, OS_SIGNPOST_INTERVAL_BEGIN, request_id, "SaveStandardChunks", "Save for '%{public}s [%d]", &v13, 0x12u);
  }

  *__error() = v7;
  self->_saveStandardChunksStartTimestampMCT = [(TSPSaveMeasurements *)self _startRecordingTimeForPhase:"SaveStandardChunks"];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)stopRecordingTimeForSaveStandardChunksPhase:(BOOL)phase
{
  phaseCopy = phase;
  v13 = *MEMORY[0x277D85DE8];
  v5 = *__error();
  v6 = sub_22EE82CE0();
  v7 = v6;
  request_id = self->_request_id;
  if (request_id - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    v9 = "FAILED";
    if (phaseCopy)
    {
      v9 = "SUCCEEDED";
    }

    v11 = 136315138;
    v12 = v9;
    _os_signpost_emit_with_name_impl(&dword_22EE81000, v7, OS_SIGNPOST_INTERVAL_END, request_id, "SaveStandardChunks", "%s", &v11, 0xCu);
  }

  *__error() = v5;
  [(TSPSaveMeasurements *)self _stopRecordingTimeForPhase:"SaveStandardChunks"];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)recordTimeForSaveStandardChunksWithoutPostProcessing:(unint64_t)processing
{
  v20 = *MEMORY[0x277D85DE8];
  saveStandardChunksStartTimestampMCT = self->_saveStandardChunksStartTimestampMCT;
  if (saveStandardChunksStartTimestampMCT)
  {
    v4 = saveStandardChunksStartTimestampMCT >= processing;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v7 = *__error();
    v8 = sub_22EE82CE0();
    v9 = v8;
    request_id = self->_request_id;
    if (request_id - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      v11 = self->_saveStandardChunksStartTimestampMCT;
      v16 = 134349312;
      v17 = v11;
      v18 = 2050;
      processingCopy = processing;
      _os_signpost_emit_with_name_impl(&dword_22EE81000, v9, OS_SIGNPOST_EVENT, request_id, "SaveStandardChunks_WithoutPostProcessing", "%{public, signpost.description:begin_time}llu %{public, signpost.description:end_time}llu", &v16, 0x16u);
    }

    *__error() = v7;
    v12 = MEMORY[0x277CCABB0];
    v13 = processing - self->_saveStandardChunksStartTimestampMCT;
    if (qword_27DA9D430 != -1)
    {
      sub_22EEA9FC4();
    }

    v14 = [v12 numberWithDouble:*&qword_27DA9D428 * v13 * 0.000000001];
    [(NSMutableDictionary *)self->_timeSpentByPhases setObject:v14 forKeyedSubscript:@"SaveStandardChunks_WithoutPostProcessing"];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)startRecordingTimeForLibktracePostProcessing
{
  v3 = *__error();
  v4 = sub_22EE82CE0();
  v5 = v4;
  request_id = self->_request_id;
  if (request_id - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_22EE81000, v5, OS_SIGNPOST_INTERVAL_BEGIN, request_id, "PostProcessing_Libktrace", &unk_22EEB0741, v7, 2u);
  }

  *__error() = v3;
  [(TSPSaveMeasurements *)self _startRecordingTimeForPhase:"PostProcessing_Libktrace"];
}

- (void)stopRecordingTimeForLibktracePostProcessing
{
  v3 = *__error();
  v4 = sub_22EE82CE0();
  v5 = v4;
  request_id = self->_request_id;
  if (request_id - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_22EE81000, v5, OS_SIGNPOST_INTERVAL_END, request_id, "PostProcessing_Libktrace", &unk_22EEB0741, v7, 2u);
  }

  *__error() = v3;
  [(TSPSaveMeasurements *)self _stopRecordingTimeForPhase:"PostProcessing_Libktrace"];
}

- (void)startRecordingTimeForTailspinPostProcessing
{
  v3 = *__error();
  v4 = sub_22EE82CE0();
  v5 = v4;
  request_id = self->_request_id;
  if (request_id - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_22EE81000, v5, OS_SIGNPOST_INTERVAL_BEGIN, request_id, "PostProcessing_Tailspin", &unk_22EEB0741, v7, 2u);
  }

  *__error() = v3;
  [(TSPSaveMeasurements *)self _startRecordingTimeForPhase:"PostProcessing_Tailspin"];
}

- (void)stopRecordingTimeForTailspinPostProcessing
{
  v3 = *__error();
  v4 = sub_22EE82CE0();
  v5 = v4;
  request_id = self->_request_id;
  if (request_id - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_22EE81000, v5, OS_SIGNPOST_INTERVAL_END, request_id, "PostProcessing_Tailspin", &unk_22EEB0741, v7, 2u);
  }

  *__error() = v3;
  [(TSPSaveMeasurements *)self _stopRecordingTimeForPhase:"PostProcessing_Tailspin"];
}

- (void)startRecordingTimeForAugmentPhase:(const char *)phase pid:(int)pid originalFd:(int)fd dupFd:(int)dupFd
{
  v25 = *MEMORY[0x277D85DE8];
  v11 = *__error();
  v12 = sub_22EE82CE0();
  v13 = v12;
  request_id = self->_request_id;
  if (request_id - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    phaseCopy = "<unknown>";
    v17 = 136446978;
    if (phase)
    {
      phaseCopy = phase;
    }

    v18 = phaseCopy;
    v19 = 1024;
    pidCopy = pid;
    v21 = 1024;
    fdCopy = fd;
    v23 = 1024;
    dupFdCopy = dupFd;
    _os_signpost_emit_with_name_impl(&dword_22EE81000, v13, OS_SIGNPOST_INTERVAL_BEGIN, request_id, "Augment", "Augment for %{public}s [%d], fd: %d, dup fd: %d", &v17, 0x1Eu);
  }

  *__error() = v11;
  [(TSPSaveMeasurements *)self _startRecordingTimeForPhase:"Augment"];
  v16 = *MEMORY[0x277D85DE8];
}

- (void)stopRecordingTimeForAugmentPhase:(BOOL)phase finalSizeBytes:(int64_t)bytes
{
  phaseCopy = phase;
  v17 = *MEMORY[0x277D85DE8];
  v7 = *__error();
  v8 = sub_22EE82CE0();
  v9 = v8;
  request_id = self->_request_id;
  if (request_id - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v11 = "FAILED";
    if (phaseCopy)
    {
      v11 = "SUCCEEDED";
    }

    v13 = 136315394;
    v14 = v11;
    v15 = 2048;
    bytesCopy = bytes;
    _os_signpost_emit_with_name_impl(&dword_22EE81000, v9, OS_SIGNPOST_INTERVAL_END, request_id, "Augment", "%s (final size: %{bytes}lld)", &v13, 0x16u);
  }

  *__error() = v7;
  [(TSPSaveMeasurements *)self _stopRecordingTimeForPhase:"Augment"];
  self->_fileSizeBytes = bytes;
  v12 = *MEMORY[0x277D85DE8];
}

- (void)startRecordingTimeForAugmentLoggingPhase:(BOOL)phase collectOSLog:(BOOL)log scrubData:(BOOL)data
{
  dataCopy = data;
  logCopy = log;
  phaseCopy = phase;
  v19 = *MEMORY[0x277D85DE8];
  v9 = *__error();
  v10 = sub_22EE82CE0();
  v11 = v10;
  request_id = self->_request_id;
  if (request_id - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v14[0] = 67109632;
    v14[1] = phaseCopy;
    v15 = 1024;
    v16 = logCopy;
    v17 = 1024;
    v18 = dataCopy;
    _os_signpost_emit_with_name_impl(&dword_22EE81000, v11, OS_SIGNPOST_INTERVAL_BEGIN, request_id, "Augment_LoggingData", "os_signpost: %{BOOL}d\nos_log: %{BOOL}d\nscrub_data: %{BOOL}d", v14, 0x14u);
  }

  *__error() = v9;
  [(TSPSaveMeasurements *)self _startRecordingTimeForPhase:"Augment_LoggingData"];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)stopRecordingTimeForAugmentLoggingPhase:(BOOL)phase
{
  phaseCopy = phase;
  v13 = *MEMORY[0x277D85DE8];
  v5 = *__error();
  v6 = sub_22EE82CE0();
  v7 = v6;
  request_id = self->_request_id;
  if (request_id - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    v9 = "FAILED";
    if (phaseCopy)
    {
      v9 = "SUCCEEDED";
    }

    v11 = 136315138;
    v12 = v9;
    _os_signpost_emit_with_name_impl(&dword_22EE81000, v7, OS_SIGNPOST_INTERVAL_END, request_id, "Augment_LoggingData", "%s", &v11, 0xCu);
  }

  *__error() = v5;
  [(TSPSaveMeasurements *)self _stopRecordingTimeForPhase:"Augment_LoggingData"];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)startRecordingTimeForAugmentSymbolicatePhase
{
  v3 = *__error();
  v4 = sub_22EE82CE0();
  v5 = v4;
  request_id = self->_request_id;
  if (request_id - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_22EE81000, v5, OS_SIGNPOST_INTERVAL_BEGIN, request_id, "Augment_Symbolicate", &unk_22EEB0741, v7, 2u);
  }

  *__error() = v3;
  [(TSPSaveMeasurements *)self _startRecordingTimeForPhase:"Augment_Symbolicate"];
}

- (void)stopRecordingTimeForAugmentSymbolicatePhase
{
  v3 = *__error();
  v4 = sub_22EE82CE0();
  v5 = v4;
  request_id = self->_request_id;
  if (request_id - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_22EE81000, v5, OS_SIGNPOST_INTERVAL_END, request_id, "Augment_Symbolicate", &unk_22EEB0741, v7, 2u);
  }

  *__error() = v3;
  [(TSPSaveMeasurements *)self _stopRecordingTimeForPhase:"Augment_Symbolicate"];
}

- (void)recordRequestProcessingLatencySecsWithStartMCT:(unint64_t)t endMCT:(unint64_t)cT
{
  if (qword_27DA9D430 != -1)
  {
    sub_22EEA9FB0();
  }

  self->_requestProcessingLatencySecs = *&qword_27DA9D428 * (cT - t) * 0.000000001;
}

- (void)recordTailspinDurationWithStartMCT:(unint64_t)t endMCT:(unint64_t)cT
{
  if (qword_27DA9D430 != -1)
  {
    sub_22EEA9FB0();
  }

  self->_tailspinDurationSecs = *&qword_27DA9D428 * (cT - t) * 0.000000001;
}

- (void)recordLostTimePeriodAtStart:(unint64_t)start
{
  if (qword_27DA9D430 != -1)
  {
    sub_22EEA9FB0();
  }

  self->_lostTimePeriodAtStartSecs = *&qword_27DA9D428 * start * 0.000000001;
}

- (unint64_t)_startRecordingTimeForPhase:(const char *)phase
{
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:phase];
  v5 = mach_continuous_time();
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v5];
  [(NSMutableDictionary *)self->_timeSpentByPhases setObject:v6 forKeyedSubscript:v4];

  return v5;
}

- (void)_stopRecordingTimeForPhase:(const char *)phase
{
  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:phase];
  v4 = mach_continuous_time();
  v5 = [(NSMutableDictionary *)self->_timeSpentByPhases objectForKeyedSubscript:v10];
  if (!v5)
  {
    sub_22EEA9FEC();
  }

  v6 = v5;
  unsignedLongLongValue = [v5 unsignedLongLongValue];
  v8 = MEMORY[0x277CCABB0];
  if (qword_27DA9D430 != -1)
  {
    sub_22EEA9FB0();
  }

  v9 = [v8 numberWithDouble:*&qword_27DA9D428 * (v4 - unsignedLongLongValue) * 0.000000001];
  [(NSMutableDictionary *)self->_timeSpentByPhases setObject:v9 forKeyedSubscript:v10];
}

@end