@interface ADAMSoundAnalysisWriter
- (BOOL)_isMonitoringEmotion;
- (BOOL)_isMonitoringSoundDetection;
- (BOOL)_isMonitoringSpeechMetrics;
- (BOOL)isMonitoring;
- (BOOL)verifyStateInit;
- (BOOL)verifyStateOn;
- (id).cxx_construct;
- (int)write:(id)write withMetadata:(const Metadata *)metadata;
- (void)_initializeSoundAnalyzer;
- (void)_setProcessing:(BOOL)processing;
- (void)createAndLogOSTransaction;
- (void)destroyAndLogOSTransaction;
- (void)logResultCountAndFirstTimeStamp;
- (void)reinitializeSpeechEmotionRequest;
- (void)request:(id)request didFailWithError:(id)error;
- (void)request:(id)request didProduceResult:(id)result;
- (void)requestDidComplete:(id)complete;
- (void)sendCachedDetectionResultsToSensorKit;
@end

@implementation ADAMSoundAnalysisWriter

- (id).cxx_construct
{
  *(self + 152) = 0;
  *(self + 160) = 0;
  *(self + 184) = 0;
  *(self + 192) = 0;
  *(self + 30) = 0;
  *(self + 29) = self + 240;
  *(self + 33) = 0;
  *(self + 34) = 0;
  *(self + 31) = 0;
  *(self + 32) = self + 264;
  return self;
}

- (BOOL)isMonitoring
{
  if ([(ADAMSoundAnalysisWriter *)self _isMonitoringEmotion]|| [(ADAMSoundAnalysisWriter *)self _isMonitoringSoundDetection])
  {
    return 1;
  }

  return [(ADAMSoundAnalysisWriter *)self _isMonitoringSpeechMetrics];
}

- (BOOL)_isMonitoringEmotion
{
  ADAM::Parameters::instance(self);
  if (ADAM::Parameters::GetParamValue<BOOL>(5u))
  {
    LOBYTE(isValidSRSensorWriterPresent) = 1;
  }

  else
  {
    isValidSRSensorWriterPresent = [(ADAMSRSensorWriter *)self->_speechEmotionSRWriter isValidSRSensorWriterPresent];
    if (isValidSRSensorWriterPresent)
    {
      isValidSRSensorWriterPresent = [(ADAMSRSensorWriter *)self->_speechEmotionSRWriter isMonitoring];
      if (isValidSRSensorWriterPresent)
      {
        speechEmotionSRWriter = self->_speechEmotionSRWriter;

        LOBYTE(isValidSRSensorWriterPresent) = [(ADAMSRSensorWriter *)speechEmotionSRWriter isBundleIdentifierEligible];
      }
    }
  }

  return isValidSRSensorWriterPresent;
}

- (BOOL)_isMonitoringSoundDetection
{
  ADAM::Parameters::instance(self);
  if (ADAM::Parameters::GetParamValue<BOOL>(5u))
  {
    LOBYTE(isValidSRSensorWriterPresent) = 1;
  }

  else
  {
    isValidSRSensorWriterPresent = [(ADAMSRSensorWriter *)self->_soundDetectionSRWriter isValidSRSensorWriterPresent];
    if (isValidSRSensorWriterPresent)
    {
      isValidSRSensorWriterPresent = [(ADAMSRSensorWriter *)self->_soundDetectionSRWriter isMonitoring];
      if (isValidSRSensorWriterPresent)
      {
        soundDetectionSRWriter = self->_soundDetectionSRWriter;

        LOBYTE(isValidSRSensorWriterPresent) = [(ADAMSRSensorWriter *)soundDetectionSRWriter isBundleIdentifierEligible];
      }
    }
  }

  return isValidSRSensorWriterPresent;
}

- (BOOL)_isMonitoringSpeechMetrics
{
  ADAM::Parameters::instance(self);
  if (ADAM::Parameters::GetParamValue<BOOL>(5u))
  {
    LOBYTE(isValidSRSensorWriterPresent) = 1;
  }

  else
  {
    isValidSRSensorWriterPresent = [(ADAMSRSensorWriter *)self->_speechMetricsSRWriter isValidSRSensorWriterPresent];
    if (isValidSRSensorWriterPresent)
    {
      isValidSRSensorWriterPresent = [(ADAMSRSensorWriter *)self->_speechMetricsSRWriter isMonitoring];
      if (isValidSRSensorWriterPresent)
      {
        speechMetricsSRWriter = self->_speechMetricsSRWriter;

        LOBYTE(isValidSRSensorWriterPresent) = [(ADAMSRSensorWriter *)speechMetricsSRWriter isBundleIdentifierEligible];
      }
    }
  }

  return isValidSRSensorWriterPresent;
}

- (void)sendCachedDetectionResultsToSensorKit
{
  v66 = *MEMORY[0x29EDCA608];
  begin_node = self->_detectionCachedTimestamps.__tree_.__begin_node_;
  p_end_node = &self->_detectionCachedTimestamps.__tree_.__end_node_;
  if (begin_node != &self->_detectionCachedTimestamps.__tree_.__end_node_)
  {
    v4 = 0;
    while (1)
    {
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v42 = begin_node;
      frameCnt = begin_node->_frameCnt;
      p_frameCnt = &begin_node->_frameCnt;
      *buf = &begin_node->_frameCnt;
      obj = std::__tree<std::__value_type<unsigned long long,NSMutableArray * {__strong}>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,NSMutableArray * {__strong}>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,NSMutableArray * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_detectionCachedResultMap, frameCnt)[5];
      v6 = [obj countByEnumeratingWithState:&v52 objects:v65 count:16];
      if (v6)
      {
        break;
      }

LABEL_37:

      v36 = v42;
      SNAnalyzer = v42->_SNAnalyzer;
      if (SNAnalyzer)
      {
        do
        {
          left = SNAnalyzer;
          SNAnalyzer = SNAnalyzer->super.isa;
        }

        while (SNAnalyzer);
      }

      else
      {
        do
        {
          left = v36[2].__left_;
          v39 = left->__left_ == v36;
          v36 = left;
        }

        while (!v39);
      }

      begin_node = left;
      if (left == p_end_node)
      {
        goto LABEL_45;
      }
    }

    LODWORD(v7) = 0;
    v44 = *v53;
LABEL_5:
    v45 = v6;
    v8 = 0;
    v7 = v7;
    while (1)
    {
      if (*v53 != v44)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v52 + 1) + 8 * v8);
      v10 = *p_frameCnt;
      if ([(ADAMSoundAnalysisWriter *)self _isMonitoringSoundDetection])
      {
        v11 = v7 + v10;
        soundDetectionSRWriter = self->_soundDetectionSRWriter;
        v51 = v4;
        [(ADAMSRSensorWriter *)soundDetectionSRWriter provideSample:v9 continuousTimestamp:v7 + v10 error:&v51];
        v13 = v51;

        if (v13)
        {
          {
            ADAM::get_log(void)::adam_os_log = os_log_create("com.apple.coreaudio", "adam");
          }

          v14 = ADAM::get_log(void)::adam_os_log;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            v15 = SRAbsoluteTimeFromContinuousTime(v11);
            *buf = 136317186;
            *&buf[4] = "ADAMSoundAnalysisWriter.mm";
            *&buf[12] = 1024;
            *&buf[14] = 607;
            *&buf[18] = 1040;
            *&buf[20] = 23;
            *&buf[24] = 2080;
            *&buf[26] = "ADAMSoundAnalysisWriter]";
            *&buf[34] = 2048;
            *&buf[36] = self;
            *&buf[44] = 2112;
            *&buf[46] = v9;
            v59 = 2048;
            v60 = v11;
            v61 = 2048;
            v62 = v15;
            v63 = 2112;
            v64 = v13;
            _os_log_impl(&dword_296C34000, v14, OS_LOG_TYPE_ERROR, "[%s:%-5d %.*s:%p] failed to write SNDetectionResult result to SensorKit: %@, timestamp: continuous %llu, absolute %f, err: %@", buf, 0x54u);
          }

          v4 = v13;
        }

        else
        {
          v4 = 0;
        }
      }

      if (![(ADAMSoundAnalysisWriter *)self _isMonitoringSpeechMetrics])
      {
        goto LABEL_28;
      }

      identifier = [v9 identifier];
      v56 = identifier;
      v17 = MEMORY[0x29EDBA070];
      [v9 confidence];
      v18 = [v17 numberWithDouble:?];
      v57 = v18;
      v19 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v57 forKeys:&v56 count:1];

      v20 = [objc_alloc(MEMORY[0x29EDBBDC0]) initWithClassificationDictionary:v19];
      if (v9)
      {
        [v9 timeRange];
      }

      else
      {
        v49 = 0u;
        v50 = 0u;
        v48 = 0u;
      }

      *buf = v48;
      *&buf[16] = v49;
      *&buf[32] = v50;
      [v20 setTimeRange:buf];
      v21 = objc_alloc(MEMORY[0x29EDBBD00]);
      sessionID = self->_sessionID;
      v23 = SRAbsoluteTimeFromContinuousTime(*p_frameCnt);
      v24 = [v21 initWithSessionIdentifier:sessionID sessionFlags:0 timestamp:0 audioLevel:0 speechRecognition:v20 soundClassification:0 speechExpression:SRAbsoluteTimeToCFAbsoluteTime(v23)];
      speechMetricsSRWriter = self->_speechMetricsSRWriter;
      v47 = v4;
      [(ADAMSRSensorWriter *)speechMetricsSRWriter provideSample:v24 error:&v47];
      v26 = v47;

      if (v26)
      {
        {
          ADAM::get_log(void)::adam_os_log = os_log_create("com.apple.coreaudio", "adam");
        }

        v27 = ADAM::get_log(void)::adam_os_log;
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_27;
        }

        v28 = *p_frameCnt;
        v29 = SRAbsoluteTimeFromContinuousTime(*p_frameCnt);
        *buf = 136317186;
        *&buf[4] = "ADAMSoundAnalysisWriter.mm";
        *&buf[12] = 1024;
        *&buf[14] = 624;
        *&buf[18] = 1040;
        *&buf[20] = 23;
        *&buf[24] = 2080;
        *&buf[26] = "ADAMSoundAnalysisWriter]";
        *&buf[34] = 2048;
        *&buf[36] = self;
        *&buf[44] = 2112;
        *&buf[46] = v24;
        v59 = 2048;
        v60 = v28;
        v61 = 2048;
        v62 = v29;
        v63 = 2112;
        v64 = v26;
        v30 = v27;
        v31 = OS_LOG_TYPE_ERROR;
        v32 = "[%s:%-5d %.*s:%p] failed to write SRSpeechMetrics result to SensorKit: %@, timestamp: continuous %llu, absolute %f, err: %@";
        v33 = 84;
      }

      else
      {
        ++self->_detectionResultCounterPerMinute;
        {
          ADAM::get_log(void)::adam_os_log = os_log_create("com.apple.coreaudio", "adam");
        }

        v27 = ADAM::get_log(void)::adam_os_log;
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_27;
        }

        v34 = *p_frameCnt;
        v35 = SRAbsoluteTimeFromContinuousTime(*p_frameCnt);
        *buf = 136316930;
        *&buf[4] = "ADAMSoundAnalysisWriter.mm";
        *&buf[12] = 1024;
        *&buf[14] = 629;
        *&buf[18] = 1040;
        *&buf[20] = 23;
        *&buf[24] = 2080;
        *&buf[26] = "ADAMSoundAnalysisWriter]";
        *&buf[34] = 2048;
        *&buf[36] = self;
        *&buf[44] = 2112;
        *&buf[46] = v24;
        v59 = 2048;
        v60 = v34;
        v61 = 2048;
        v62 = v35;
        v30 = v27;
        v31 = OS_LOG_TYPE_DEBUG;
        v32 = "[%s:%-5d %.*s:%p] Write SRSpeechMetrics result: %@, timestamp: continuous %llu, absolute %f";
        v33 = 74;
      }

      _os_log_impl(&dword_296C34000, v30, v31, v32, buf, v33);
LABEL_27:

      v4 = v26;
LABEL_28:
      v7 += 5;
      if (v45 == ++v8)
      {
        v6 = [obj countByEnumeratingWithState:&v52 objects:v65 count:16];
        if (!v6)
        {
          goto LABEL_37;
        }

        goto LABEL_5;
      }
    }
  }

  v4 = 0;
LABEL_45:
  std::__tree<std::__value_type<unsigned long long,NSMutableArray * {__strong}>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,NSMutableArray * {__strong}>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,NSMutableArray * {__strong}>>>::destroy(self->_detectionCachedResultMap.__tree_.__end_node_.__left_);
  self->_detectionCachedResultMap.__tree_.__end_node_.__left_ = 0;
  self->_detectionCachedResultMap.__tree_.__size_ = 0;
  self->_detectionCachedResultMap.__tree_.__begin_node_ = &self->_detectionCachedResultMap.__tree_.__end_node_;
  std::__tree<ADAM::EndPointBitMask>::destroy(self->_detectionCachedTimestamps.__tree_.__end_node_.__left_);
  self->_detectionCachedTimestamps.__tree_.__end_node_.__left_ = 0;
  self->_detectionCachedTimestamps.__tree_.__size_ = 0;
  self->_detectionCachedTimestamps.__tree_.__begin_node_ = p_end_node;

  v40 = *MEMORY[0x29EDCA608];
}

- (void)logResultCountAndFirstTimeStamp
{
  v28 = *MEMORY[0x29EDCA608];
  if (self->_detectionFirstContinuousTimeStampPerMinute.__engaged_)
  {
    {
      ADAM::get_log(void)::adam_os_log = os_log_create("com.apple.coreaudio", "adam");
    }

    v3 = ADAM::get_log(void)::adam_os_log;
    if (os_log_type_enabled(ADAM::get_log(void)::adam_os_log, OS_LOG_TYPE_DEFAULT))
    {
      detectionResultCounterPerMinute = self->_detectionResultCounterPerMinute;
      v14 = 136316418;
      v15 = "ADAMSoundAnalysisWriter.mm";
      v16 = 1024;
      v17 = 566;
      v18 = 1040;
      v19 = 23;
      v20 = 2080;
      v21 = "ADAMSoundAnalysisWriter]";
      v22 = 2048;
      selfCopy4 = self;
      v24 = 1024;
      LODWORD(v25) = detectionResultCounterPerMinute;
      _os_log_impl(&dword_296C34000, v3, OS_LOG_TYPE_DEFAULT, "[%s:%-5d %.*s:%p] # detection results sent previous minute : %d", &v14, 0x32u);
    }

    self->_detectionResultCounterPerMinute = 0;
    {
      ADAM::get_log(void)::adam_os_log = os_log_create("com.apple.coreaudio", "adam");
    }

    v5 = ADAM::get_log(void)::adam_os_log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      if (!self->_detectionFirstContinuousTimeStampPerMinute.__engaged_)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      val = self->_detectionFirstContinuousTimeStampPerMinute.var0.__val_;
      detectionFirstAbsoluteTimestampPerMinute = self->_detectionFirstAbsoluteTimestampPerMinute;
      v14 = 136316674;
      v15 = "ADAMSoundAnalysisWriter.mm";
      v16 = 1024;
      v17 = 569;
      v18 = 1040;
      v19 = 23;
      v20 = 2080;
      v21 = "ADAMSoundAnalysisWriter]";
      v22 = 2048;
      selfCopy4 = self;
      v24 = 2048;
      v25 = val;
      v26 = 2048;
      v27 = detectionFirstAbsoluteTimestampPerMinute;
      _os_log_impl(&dword_296C34000, v5, OS_LOG_TYPE_DEFAULT, "[%s:%-5d %.*s:%p] first detection timestamp of previous minute : continuous %llu, absolute %f", &v14, 0x40u);
    }

    if (self->_detectionFirstContinuousTimeStampPerMinute.__engaged_)
    {
      self->_detectionFirstContinuousTimeStampPerMinute.__engaged_ = 0;
    }
  }

  if (self->_emotionFirstContinuousTimeStampPerMinute.__engaged_)
  {
    {
      ADAM::get_log(void)::adam_os_log = os_log_create("com.apple.coreaudio", "adam");
    }

    v8 = ADAM::get_log(void)::adam_os_log;
    if (os_log_type_enabled(ADAM::get_log(void)::adam_os_log, OS_LOG_TYPE_DEFAULT))
    {
      emotionResultCounterPerMinute = self->_emotionResultCounterPerMinute;
      v14 = 136316418;
      v15 = "ADAMSoundAnalysisWriter.mm";
      v16 = 1024;
      v17 = 575;
      v18 = 1040;
      v19 = 23;
      v20 = 2080;
      v21 = "ADAMSoundAnalysisWriter]";
      v22 = 2048;
      selfCopy4 = self;
      v24 = 1024;
      LODWORD(v25) = emotionResultCounterPerMinute;
      _os_log_impl(&dword_296C34000, v8, OS_LOG_TYPE_DEFAULT, "[%s:%-5d %.*s:%p] # emotion results sent previous minute : %d", &v14, 0x32u);
    }

    self->_emotionResultCounterPerMinute = 0;
    {
      ADAM::get_log(void)::adam_os_log = os_log_create("com.apple.coreaudio", "adam");
    }

    v10 = ADAM::get_log(void)::adam_os_log;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      if (!self->_emotionFirstContinuousTimeStampPerMinute.__engaged_)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      v11 = self->_emotionFirstContinuousTimeStampPerMinute.var0.__val_;
      emotionFirstAbsoluteTimestampPerMinute = self->_emotionFirstAbsoluteTimestampPerMinute;
      v14 = 136316674;
      v15 = "ADAMSoundAnalysisWriter.mm";
      v16 = 1024;
      v17 = 578;
      v18 = 1040;
      v19 = 23;
      v20 = 2080;
      v21 = "ADAMSoundAnalysisWriter]";
      v22 = 2048;
      selfCopy4 = self;
      v24 = 2048;
      v25 = v11;
      v26 = 2048;
      v27 = emotionFirstAbsoluteTimestampPerMinute;
      _os_log_impl(&dword_296C34000, v10, OS_LOG_TYPE_DEFAULT, "[%s:%-5d %.*s:%p] first emotion timestamps of previous minute : continuous %llu, absolute %f", &v14, 0x40u);
    }

    if (self->_emotionFirstContinuousTimeStampPerMinute.__engaged_)
    {
      self->_emotionFirstContinuousTimeStampPerMinute.__engaged_ = 0;
    }
  }

  v13 = *MEMORY[0x29EDCA608];
}

- (BOOL)verifyStateOn
{
  isValidSRSensorWriterPresent = [(ADAMSRSensorWriter *)self->_speechEmotionSRWriter isValidSRSensorWriterPresent];
  if (isValidSRSensorWriterPresent)
  {
    soundDetectionSRWriter = self->_soundDetectionSRWriter;

    LOBYTE(isValidSRSensorWriterPresent) = [(ADAMSRSensorWriter *)soundDetectionSRWriter isValidSRSensorWriterPresent];
  }

  return isValidSRSensorWriterPresent;
}

- (BOOL)verifyStateInit
{
  isValidSRSensorWriterPresent = [(ADAMSRSensorWriter *)self->_speechEmotionSRWriter isValidSRSensorWriterPresent];
  if (isValidSRSensorWriterPresent)
  {
    isValidSRSensorWriterPresent = [(ADAMSRSensorWriter *)self->_soundDetectionSRWriter isValidSRSensorWriterPresent];
    if (isValidSRSensorWriterPresent)
    {
      LOBYTE(isValidSRSensorWriterPresent) = self->_SNAnalyzer == 0;
    }
  }

  return isValidSRSensorWriterPresent;
}

- (void)requestDidComplete:(id)complete
{
  v15 = *MEMORY[0x29EDCA608];
  completeCopy = complete;
  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  if (ADAM::ADAMLogScope(void)::scope)
  {
    v5 = *ADAM::ADAMLogScope(void)::scope;
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = MEMORY[0x29EDCA988];
    v6 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315650;
    v10 = "ADAMSoundAnalysisWriter.mm";
    v11 = 1024;
    v12 = 542;
    v13 = 2112;
    v14 = completeCopy;
    _os_log_impl(&dword_296C34000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d SN Request: %@ did complete", &v9, 0x1Cu);
  }

LABEL_10:
  [(NSMutableArray *)self->_requests removeObject:completeCopy];
  if (![(NSMutableArray *)self->_requests count])
  {
    completeHandler = self->_completeHandler;
    if (completeHandler)
    {
      completeHandler[2](completeHandler, 0);
    }
  }

  v8 = *MEMORY[0x29EDCA608];
}

- (void)request:(id)request didFailWithError:(id)error
{
  v18 = *MEMORY[0x29EDCA608];
  requestCopy = request;
  errorCopy = error;
  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  if (ADAM::ADAMLogScope(void)::scope)
  {
    v7 = *ADAM::ADAMLogScope(void)::scope;
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = MEMORY[0x29EDCA988];
    v8 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315906;
    v11 = "ADAMSoundAnalysisWriter.mm";
    v12 = 1024;
    v13 = 535;
    v14 = 2112;
    v15 = requestCopy;
    v16 = 2112;
    v17 = errorCopy;
    _os_log_impl(&dword_296C34000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d SN Request: %@ failed with error: %@", &v10, 0x26u);
  }

LABEL_10:
  v9 = *MEMORY[0x29EDCA608];
}

- (void)request:(id)request didProduceResult:(id)result
{
  v112 = *MEMORY[0x29EDCA608];
  resultCopy = result;
  if (ADAM::isXCTest(void)::once != -1)
  {
    dispatch_once(&ADAM::isXCTest(void)::once, &__block_literal_global_61);
  }

  if (ADAM::isXCTest(void)::isXCTest)
  {
    goto LABEL_82;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (![(ADAMSoundAnalysisWriter *)self _isMonitoringEmotion]&& ![(ADAMSoundAnalysisWriter *)self _isMonitoringSpeechMetrics])
    {
      goto LABEL_82;
    }

    v6 = resultCopy;
    speechEmotionTimestamp = self->_speechEmotionTimestamp;
    cont = 0;
    *buf = 0;
    mach_get_times();
    v8 = speechEmotionTimestamp;
    if (!self->_emotionFirstContinuousTimeStampPerMinute.__engaged_)
    {
      self->_emotionFirstAbsoluteTimestampPerMinute = SRAbsoluteTimeFromContinuousTime(*buf + speechEmotionTimestamp - cont);
      self->_emotionFirstContinuousTimeStampPerMinute.var0.__val_ = speechEmotionTimestamp;
      self->_emotionFirstContinuousTimeStampPerMinute.__engaged_ = 1;
    }

    if (![(ADAMSoundAnalysisWriter *)self _isMonitoringEmotion])
    {
      v10 = 0;
      goto LABEL_59;
    }

    speechEmotionSRWriter = self->_speechEmotionSRWriter;
    v105 = 0;
    [(ADAMSRSensorWriter *)speechEmotionSRWriter provideSample:v6 continuousTimestamp:speechEmotionTimestamp error:&v105];
    v10 = v105;
    if (!v10)
    {
      goto LABEL_59;
    }

    if (ADAM::ADAMLogScope(void)::once != -1)
    {
      dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
    }

    if (ADAM::ADAMLogScope(void)::scope)
    {
      v11 = *ADAM::ADAMLogScope(void)::scope;
      if (!v11)
      {
        goto LABEL_59;
      }
    }

    else
    {
      v11 = MEMORY[0x29EDCA988];
      v46 = MEMORY[0x29EDCA988];
    }

    v47 = v11;
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v48 = SRAbsoluteTimeFromContinuousTime(v8);
      *buf = 136316418;
      *&buf[4] = "ADAMSoundAnalysisWriter.mm";
      *&buf[12] = 1024;
      *&buf[14] = 415;
      *&buf[18] = 2112;
      *&buf[20] = v6;
      *&buf[28] = 2048;
      *&buf[30] = v8;
      *&buf[38] = 2048;
      *&buf[40] = v48;
      *&buf[48] = 2112;
      *&buf[50] = v10;
      _os_log_impl(&dword_296C34000, v47, OS_LOG_TYPE_DEFAULT, "%25s:%-5d failed to write SNSpeechEmotionResult result to SensorKit: %@, continuous timestamp: continuous %llu, absolute %f, err: %@", buf, 0x3Au);
    }

LABEL_59:
    v49 = objc_alloc(MEMORY[0x29EDBBCF8]);
    v50 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"1"];
    if (v6)
    {
      [v6 timeRange];
    }

    else
    {
      memset(buf, 0, 48);
    }

    [v6 confidence];
    v52 = v51;
    [v6 mood];
    v54 = v53;
    [v6 valence];
    v56 = v55;
    [v6 arousal];
    v58 = v57;
    [v6 dominance];
    v60 = [v49 initWithVersion:v50 timeRange:buf confidence:v52 mood:v54 valence:v56 activation:v58 dominance:v59];

    v61 = objc_alloc(MEMORY[0x29EDBBD00]);
    sessionID = self->_sessionID;
    v63 = SRAbsoluteTimeFromContinuousTime(v8);
    v64 = [v61 initWithSessionIdentifier:sessionID sessionFlags:0 timestamp:0 audioLevel:0 speechRecognition:0 soundClassification:v60 speechExpression:SRAbsoluteTimeToCFAbsoluteTime(v63)];
    if (![(ADAMSoundAnalysisWriter *)self _isMonitoringSpeechMetrics])
    {
      goto LABEL_78;
    }

    speechMetricsSRWriter = self->_speechMetricsSRWriter;
    v104 = 0;
    [(ADAMSRSensorWriter *)speechMetricsSRWriter provideSample:v64 error:&v104];
    v68 = v104;
    if (v68)
    {
      v10 = v68;
      if (ADAM::ADAMLogScope(void)::once != -1)
      {
        dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
      }

      if (ADAM::ADAMLogScope(void)::scope)
      {
        v69 = *ADAM::ADAMLogScope(void)::scope;
        if (!v69)
        {
          goto LABEL_78;
        }
      }

      else
      {
        v69 = MEMORY[0x29EDCA988];
        v72 = MEMORY[0x29EDCA988];
      }

      v70 = v69;
      if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
      {
        v73 = SRAbsoluteTimeFromContinuousTime(v8);
        *buf = 136316418;
        *&buf[4] = "ADAMSoundAnalysisWriter.mm";
        *&buf[12] = 1024;
        *&buf[14] = 432;
        *&buf[18] = 2112;
        *&buf[20] = v64;
        *&buf[28] = 2048;
        *&buf[30] = v8;
        *&buf[38] = 2048;
        *&buf[40] = v73;
        *&buf[48] = 2112;
        *&buf[50] = v10;
        _os_log_impl(&dword_296C34000, v70, OS_LOG_TYPE_DEFAULT, "%25s:%-5d failed to write SRSpeechMetrics result to SensorKit: %@, continuous timestamp: continuous %llu, absolute %f, err: %@", buf, 0x3Au);
      }
    }

    else
    {
      ++self->_emotionResultCounterPerMinute;
      {
        ADAM::get_log(void)::adam_os_log = os_log_create("com.apple.coreaudio", "adam");
      }

      v70 = ADAM::get_log(void)::adam_os_log;
      if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
      {
        v71 = SRAbsoluteTimeFromContinuousTime(v8);
        *buf = 136316930;
        *&buf[4] = "ADAMSoundAnalysisWriter.mm";
        *&buf[12] = 1024;
        *&buf[14] = 438;
        *&buf[18] = 1040;
        *&buf[20] = 23;
        *&buf[24] = 2080;
        *&buf[26] = "ADAMSoundAnalysisWriter]";
        *&buf[34] = 2048;
        *&buf[36] = self;
        *&buf[44] = 2112;
        *&buf[46] = v64;
        *&buf[54] = 2048;
        *&buf[56] = v8;
        v108 = 2048;
        v109 = v71;
        _os_log_impl(&dword_296C34000, v70, OS_LOG_TYPE_DEBUG, "[%s:%-5d %.*s:%p] Write SpeechExpression result: %@, timestamp: continuous %llu, absolute %f", buf, 0x4Au);
      }

      v10 = 0;
    }

LABEL_78:
    v74 = self->_speechEmotionTimestamp;
    if (v6)
    {
      [v6 timeRange];
      v76 = *&buf[24];
      v77 = *&buf[32];
    }

    else
    {
      v77 = 0;
      v76 = 0;
      v75 = 0.0;
      memset(buf, 0, 48);
    }

    self->_speechEmotionTimestamp = ADAM::absoluteTimeFromCMTimeRange(v74, v76, v77, v75, v65, v66);

    goto LABEL_82;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      {
        ADAM::get_log(void)::adam_os_log = os_log_create("com.apple.coreaudio", "adam");
      }

      v21 = ADAM::get_log(void)::adam_os_log;
      if (os_log_type_enabled(ADAM::get_log(void)::adam_os_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        *&buf[4] = "ADAMSoundAnalysisWriter.mm";
        *&buf[12] = 1024;
        *&buf[14] = 527;
        *&buf[18] = 1040;
        *&buf[20] = 23;
        *&buf[24] = 2080;
        *&buf[26] = "ADAMSoundAnalysisWriter]";
        *&buf[34] = 2048;
        *&buf[36] = self;
        *&buf[44] = 2112;
        *&buf[46] = resultCopy;
        _os_log_impl(&dword_296C34000, v21, OS_LOG_TYPE_ERROR, "[%s:%-5d %.*s:%p] Unknown SN result: %@", buf, 0x36u);
      }

      goto LABEL_82;
    }

    if (![(ADAMSoundAnalysisWriter *)self _isMonitoringSpeechMetrics])
    {
      goto LABEL_82;
    }

    v18 = resultCopy;
    audioLevelTimestamp = self->_audioLevelTimestamp;
    cont = 0;
    *buf = 0;
    mach_get_times();
    v20 = objc_alloc(MEMORY[0x29EDBBCE8]);
    if (v18)
    {
      [v18 timeRange];
    }

    else
    {
      memset(buf, 0, 48);
    }

    [v18 decibelLevel];
    v80 = [v20 initWithTimeRange:buf loudness:v79];
    v81 = objc_alloc(MEMORY[0x29EDBBD00]);
    v82 = audioLevelTimestamp;
    v83 = self->_sessionID;
    v84 = SRAbsoluteTimeFromContinuousTime(v82);
    v85 = [v81 initWithSessionIdentifier:v83 sessionFlags:0 timestamp:v80 audioLevel:0 speechRecognition:0 soundClassification:0 speechExpression:SRAbsoluteTimeToCFAbsoluteTime(v84)];
    v86 = self->_speechMetricsSRWriter;
    v103 = 0;
    [(ADAMSRSensorWriter *)v86 provideSample:v85 error:&v103];
    v87 = v103;
    {
      ADAM::get_log(void)::adam_os_log = os_log_create("com.apple.coreaudio", "adam");
    }

    v88 = ADAM::get_log(void)::adam_os_log;
    v89 = v88;
    if (v87)
    {
      if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
      {
        v90 = SRAbsoluteTimeFromContinuousTime(v82);
        *buf = 136317186;
        *&buf[4] = "ADAMSoundAnalysisWriter.mm";
        *&buf[12] = 1024;
        *&buf[14] = 513;
        *&buf[18] = 1040;
        *&buf[20] = 23;
        *&buf[24] = 2080;
        *&buf[26] = "ADAMSoundAnalysisWriter]";
        *&buf[34] = 2048;
        *&buf[36] = self;
        *&buf[44] = 2112;
        *&buf[46] = v85;
        *&buf[54] = 2048;
        *&buf[56] = v82;
        v108 = 2048;
        v109 = v90;
        v110 = 2112;
        v111 = v87;
        v91 = "[%s:%-5d %.*s:%p] failed to write SNLKFSResult result to SensorKit: %@, continuous timestamp: continuous %llu, absolute %f, err: %@";
        v92 = v89;
        v93 = OS_LOG_TYPE_ERROR;
        v94 = 84;
LABEL_93:
        _os_log_impl(&dword_296C34000, v92, v93, v91, buf, v94);
      }
    }

    else if (os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
    {
      v96 = SRAbsoluteTimeFromContinuousTime(v82);
      *buf = 136316930;
      *&buf[4] = "ADAMSoundAnalysisWriter.mm";
      *&buf[12] = 1024;
      *&buf[14] = 518;
      *&buf[18] = 1040;
      *&buf[20] = 23;
      *&buf[24] = 2080;
      *&buf[26] = "ADAMSoundAnalysisWriter]";
      *&buf[34] = 2048;
      *&buf[36] = self;
      *&buf[44] = 2112;
      *&buf[46] = v85;
      *&buf[54] = 2048;
      *&buf[56] = v82;
      v108 = 2048;
      v109 = v96;
      v91 = "[%s:%-5d %.*s:%p] Write SNLKFSResult result: %@, timestamp: continuous %llu, absolute %f";
      v92 = v89;
      v93 = OS_LOG_TYPE_DEBUG;
      v94 = 74;
      goto LABEL_93;
    }

    v99 = self->_audioLevelTimestamp;
    if (v18)
    {
      [v18 timeRange];
      v101 = *&buf[24];
      v102 = *&buf[32];
    }

    else
    {
      v102 = 0;
      v101 = 0;
      v100 = 0.0;
      memset(buf, 0, 48);
    }

    self->_audioLevelTimestamp = ADAM::absoluteTimeFromCMTimeRange(v99, v101, v102, v100, v97, v98);

    goto LABEL_82;
  }

  if (![(ADAMSoundAnalysisWriter *)self _isMonitoringSoundDetection]&& ![(ADAMSoundAnalysisWriter *)self _isMonitoringSpeechMetrics])
  {
    goto LABEL_82;
  }

  v12 = resultCopy;
  selfCopy = self;
  v14 = v12;
  identifier = [v14 identifier];
  v16 = [identifier isEqualToString:*MEMORY[0x29EDBBE10]];

  if (v16)
  {
    v17 = 208;
  }

  else
  {
    identifier2 = [v14 identifier];
    v23 = [identifier2 isEqualToString:*MEMORY[0x29EDBBE18]];

    if (v23)
    {
      v17 = 216;
    }

    else
    {
      identifier3 = [v14 identifier];
      v25 = [identifier3 isEqualToString:*MEMORY[0x29EDBBE20]];

      if (!v25)
      {
        v95 = ADAM::get_log(v26);
        if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
        {
          *buf = 136316418;
          *&buf[4] = "ADAMSoundAnalysisWriter.mm";
          *&buf[12] = 1024;
          *&buf[14] = 490;
          *&buf[18] = 1040;
          *&buf[20] = 23;
          *&buf[24] = 2080;
          *&buf[26] = "ADAMSoundAnalysisWriter]";
          *&buf[34] = 2048;
          *&buf[36] = selfCopy;
          *&buf[44] = 2112;
          *&buf[46] = v14;
          _os_log_impl(&dword_296C34000, v95, OS_LOG_TYPE_ERROR, "[%s:%-5d %.*s:%p] Unknown SNDetection result: %@", buf, 0x36u);
        }

        goto LABEL_82;
      }

      v17 = 224;
    }
  }

  v27 = *(&selfCopy->super.isa + v17);
  *buf = 0;
  mach_get_times();
  v28 = v27;
  cont = v27;
  left = selfCopy->_detectionCachedTimestamps.__tree_.__end_node_.__left_;
  if (!left)
  {
    goto LABEL_41;
  }

  p_end_node = &selfCopy->_detectionCachedTimestamps.__tree_.__end_node_;
  do
  {
    frameCnt = left->_frameCnt;
    v32 = frameCnt >= v27;
    v33 = frameCnt < v27;
    if (v32)
    {
      p_end_node = left;
    }

    left = *(&left->super.isa + v33);
  }

  while (left);
  if (p_end_node == &selfCopy->_detectionCachedTimestamps.__tree_.__end_node_ || v27 < p_end_node->_frameCnt)
  {
LABEL_41:
    v34 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:3];
    *buf = &cont;
    v35 = std::__tree<std::__value_type<unsigned long long,NSMutableArray * {__strong}>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,NSMutableArray * {__strong}>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,NSMutableArray * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&selfCopy->_detectionCachedResultMap, cont);
    v36 = v35[5];
    v35[5] = v34;

    v28 = cont;
  }

  *buf = &cont;
  [std::__tree<std::__value_type<unsigned long long NSMutableArray * {:std::__map_value_compare<unsigned long long :{std::__value_type<unsigned long long, NSMutableArray * {__strong}>, std::less<unsigned long long>, true>, std::allocator<std::__value_type<unsigned long long, NSMutableArray * {__strong}>>>::__emplace_unique_key_args<unsigned long long, std::piecewise_construct_t const&, std::tuple<unsigned long long const&>, std::tuple<>>(&selfCopy->_detectionCachedResultMap, v28)[5], "addObject:", v14}strong}>];
  v39 = selfCopy->_detectionCachedTimestamps.__tree_.__end_node_.__left_;
  if (!v39)
  {
LABEL_48:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v40 = v39;
      v41 = v39[4];
      if (cont >= v41)
      {
        break;
      }

      v39 = *v40;
      if (!*v40)
      {
        goto LABEL_48;
      }
    }

    if (v41 >= cont)
    {
      break;
    }

    v39 = v40[1];
    if (!v39)
    {
      goto LABEL_48;
    }
  }

  v42 = *(&selfCopy->super.isa + v17);
  if (v14)
  {
    [v14 timeRange];
    v44 = *&buf[24];
    v45 = *&buf[32];
  }

  else
  {
    v45 = 0;
    v44 = 0;
    v43 = 0.0;
    memset(buf, 0, 48);
  }

  *(&selfCopy->super.isa + v17) = ADAM::absoluteTimeFromCMTimeRange(v42, v44, v45, v43, v37, v38);
  if (!selfCopy->_detectionFirstContinuousTimeStampPerMinute.__engaged_)
  {
    selfCopy->_detectionFirstAbsoluteTimestampPerMinute = SRAbsoluteTimeFromContinuousTime(cont);
    selfCopy->_detectionFirstContinuousTimeStampPerMinute.var0.__val_ = cont;
    selfCopy->_detectionFirstContinuousTimeStampPerMinute.__engaged_ = 1;
  }

LABEL_82:
  v78 = *MEMORY[0x29EDCA608];
}

- (void)_setProcessing:(BOOL)processing
{
  os_unfair_lock_lock(&self->_statusLock);
  self->_processing = processing;

  os_unfair_lock_unlock(&self->_statusLock);
}

- (int)write:(id)write withMetadata:(const Metadata *)metadata
{
  v23 = *MEMORY[0x29EDCA608];
  writeCopy = write;
  if ([(ADAMSoundAnalysisWriter *)self _isMonitoringEmotion]|| [(ADAMSoundAnalysisWriter *)self _isMonitoringSoundDetection]|| [(ADAMSoundAnalysisWriter *)self _isMonitoringSpeechMetrics])
  {
    if (!self->_transaction)
    {
      [(ADAMSoundAnalysisWriter *)self createAndLogOSTransaction];
    }

    v7 = metadata->var2 != 0;
    mHostTime = metadata->var0.mHostTime;
    queue = self->_queue;
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 3221225472;
    block[2] = __46__ADAMSoundAnalysisWriter_write_withMetadata___block_invoke;
    block[3] = &unk_29EE525A0;
    block[4] = self;
    v16 = mHostTime;
    v15 = writeCopy;
    metadataCopy = metadata;
    v18 = v7;
    dispatch_async(queue, block);
  }

  else
  {
    if (ADAM::ADAMLogScope(void)::once != -1)
    {
      dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
    }

    if (ADAM::ADAMLogScope(void)::scope)
    {
      v12 = *ADAM::ADAMLogScope(void)::scope;
      if (!v12)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v12 = MEMORY[0x29EDCA988];
      v13 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v20 = "ADAMSoundAnalysisWriter.mm";
      v21 = 1024;
      v22 = 372;
      _os_log_impl(&dword_296C34000, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d emotion and detection not being monitored...", buf, 0x12u);
    }
  }

LABEL_7:

  v10 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t __46__ADAMSoundAnalysisWriter_write_withMetadata___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  [*(a1 + 32) _initializeSoundAnalyzer];
  v2 = *(a1 + 32);
  if (v2[97] == 1)
  {
    v3 = v2[96];
    if (((-64 * v3) | ((-85 * v3) >> 2)) <= 0x15u)
    {
      [v2 reinitializeSpeechEmotionRequest];
      v2 = *(a1 + 32);
      v3 = v2[96];
    }

    v2[96] = v3 + 1;
    *(*(a1 + 32) + 96) %= 0xCu;
  }

  else
  {
    [v2 reinitializeSpeechEmotionRequest];
  }

  [*(a1 + 32) _setProcessing:1];
  v4 = *(a1 + 48);
  *(*(a1 + 32) + 40) = v4;
  *(*(a1 + 32) + 208) = v4;
  v5 = *(a1 + 48);
  *(*(a1 + 32) + 216) = v5;
  *(*(a1 + 32) + 224) = v5;
  *(*(a1 + 32) + 280) = *(a1 + 48);
  [*(*(a1 + 32) + 8) analyzeAudioBuffer:*(a1 + 40) atAudioFramePosition:*(*(a1 + 32) + 32)];
  [*(a1 + 32) sendCachedDetectionResultsToSensorKit];
  [*(a1 + 32) logResultCountAndFirstTimeStamp];
  *(*(a1 + 32) + 32) += *(*(a1 + 56) + 64);
  [*(a1 + 32) _setProcessing:0];
  if (*(a1 + 64) == 1)
  {
    if (ADAM::ADAMLogScope(void)::once != -1)
    {
      dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
    }

    if (ADAM::ADAMLogScope(void)::scope)
    {
      v6 = *ADAM::ADAMLogScope(void)::scope;
      if (!v6)
      {
LABEL_16:
        *(*(a1 + 32) + 68) = 1;
        [*(*(a1 + 32) + 8) completeAnalysis];
        goto LABEL_17;
      }
    }

    else
    {
      v6 = MEMORY[0x29EDCA988];
      v7 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315394;
      v11 = "ADAMSoundAnalysisWriter.mm";
      v12 = 1024;
      v13 = 361;
      _os_log_impl(&dword_296C34000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d sending the last batch of audio data to SoundAnalysis", &v10, 0x12u);
    }

    goto LABEL_16;
  }

LABEL_17:
  result = [*(a1 + 32) destroyAndLogOSTransaction];
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

- (void)reinitializeSpeechEmotionRequest
{
  v28 = *MEMORY[0x29EDCA608];
  WeakRetained = objc_loadWeakRetained(&self->_speechEmotionRequest);

  if (WeakRetained)
  {
    SNAnalyzer = self->_SNAnalyzer;
    v5 = objc_loadWeakRetained(&self->_speechEmotionRequest);
    [(SNAudioStreamAnalyzer *)SNAnalyzer removeRequest:v5];

    requests = self->_requests;
    v7 = objc_loadWeakRetained(&self->_speechEmotionRequest);
    [(NSMutableArray *)requests removeObject:v7];

    objc_storeWeak(&self->_speechEmotionRequest, 0);
  }

  v8 = objc_alloc_init(MEMORY[0x29EDBBDD8]);
  [(NSMutableArray *)self->_requests addObject:v8];
  v9 = objc_storeWeak(&self->_speechEmotionRequest, v8);
  v10 = self->_SNAnalyzer;
  v11 = v9;
  v21 = 0;
  [(SNAudioStreamAnalyzer *)v10 addRequest:v8 withObserver:self error:&v21];
  v12 = v21;

  if (v12)
  {
    if (ADAM::ADAMLogScope(void)::once != -1)
    {
      dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
    }

    if (ADAM::ADAMLogScope(void)::scope)
    {
      v13 = *ADAM::ADAMLogScope(void)::scope;
      if (!v13)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v13 = MEMORY[0x29EDCA988];
      v15 = MEMORY[0x29EDCA988];
    }

    v16 = v13;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = objc_loadWeakRetained(&self->_speechEmotionRequest);
      *buf = 136315650;
      v23 = "ADAMSoundAnalysisWriter.mm";
      v24 = 1024;
      v25 = 298;
      v26 = 2112;
      v27 = v17;
      _os_log_impl(&dword_296C34000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d failed to add SN request: %@", buf, 0x1Cu);
    }
  }

  else
  {
    if (ADAM::ADAMLogScope(void)::once != -1)
    {
      dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
    }

    if (ADAM::ADAMLogScope(void)::scope)
    {
      v14 = *ADAM::ADAMLogScope(void)::scope;
      if (!v14)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v14 = MEMORY[0x29EDCA988];
      v18 = MEMORY[0x29EDCA988];
    }

    v16 = v14;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v19 = objc_loadWeakRetained(&self->_speechEmotionRequest);
      *buf = 136315650;
      v23 = "ADAMSoundAnalysisWriter.mm";
      v24 = 1024;
      v25 = 302;
      v26 = 2112;
      v27 = v19;
      _os_log_impl(&dword_296C34000, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d added SN request: %@", buf, 0x1Cu);
    }
  }

LABEL_21:
  v20 = *MEMORY[0x29EDCA608];
}

- (void)_initializeSoundAnalyzer
{
  v40 = *MEMORY[0x29EDCA608];
  os_unfair_lock_lock(&self->_initLock);
  if (!self->_soundAnalyzerInitialized)
  {
    v3 = [objc_alloc(MEMORY[0x29EDBBDB8]) initWithFormat:self->_format];
    SNAnalyzer = self->_SNAnalyzer;
    self->_SNAnalyzer = v3;

    if (ADAM::ADAMLogScope(void)::once != -1)
    {
      dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
    }

    if (ADAM::ADAMLogScope(void)::scope)
    {
      v5 = *ADAM::ADAMLogScope(void)::scope;
      if (!v5)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v5 = MEMORY[0x29EDCA988];
      v6 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = self->_SNAnalyzer;
      *buf = 136315650;
      v33 = "ADAMSoundAnalysisWriter.mm";
      v34 = 1024;
      v35 = 182;
      v36 = 2112;
      *v37 = v7;
      _os_log_impl(&dword_296C34000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Created SN AudioStreamAnalyzer %@", buf, 0x1Cu);
    }

LABEL_11:
    v8 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    requests = self->_requests;
    self->_requests = v8;

    v10 = objc_opt_new();
    [v10 setComputeUnits:0];
    v11 = objc_alloc(MEMORY[0x29EDBBDC8]);
    v12 = [v11 initWithDetectorIdentifier:*MEMORY[0x29EDBBDF8] error:0];
    [v12 setModelConfiguration:v10];
    [(NSMutableArray *)self->_requests addObject:v12];
    v13 = objc_alloc(MEMORY[0x29EDBBDC8]);
    v14 = [v13 initWithDetectorIdentifier:*MEMORY[0x29EDBBE00] error:0];
    [v14 setModelConfiguration:v10];
    [(NSMutableArray *)self->_requests addObject:v14];
    v15 = objc_alloc(MEMORY[0x29EDBBDC8]);
    v16 = [v15 initWithDetectorIdentifier:*MEMORY[0x29EDBBE08] error:0];
    [v16 setModelConfiguration:v10];
    [(NSMutableArray *)self->_requests addObject:v16];
    v17 = self->_requests;
    v31[0] = MEMORY[0x29EDCA5F8];
    v31[1] = 3221225472;
    v31[2] = __51__ADAMSoundAnalysisWriter__initializeSoundAnalyzer__block_invoke;
    v31[3] = &unk_29EE52578;
    v31[4] = self;
    [(NSMutableArray *)v17 enumerateObjectsUsingBlock:v31];
    v18 = objc_alloc_init(MEMORY[0x29EDBBDE8]);
    audioLevelRequest = self->_audioLevelRequest;
    self->_audioLevelRequest = v18;

    [(NSMutableArray *)self->_requests addObject:self->_audioLevelRequest];
    v20 = self->_SNAnalyzer;
    v21 = self->_audioLevelRequest;
    v30 = 0;
    [(SNAudioStreamAnalyzer *)v20 addRequest:v21 withObserver:self error:&v30];
    v22 = v30;
    if (v22)
    {
      {
        ADAM::get_log(void)::adam_os_log = os_log_create("com.apple.coreaudio", "adam");
      }

      v24 = ADAM::get_log(void)::adam_os_log;
      if (!os_log_type_enabled(ADAM::get_log(void)::adam_os_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      *buf = 136316162;
      v33 = "ADAMSoundAnalysisWriter.mm";
      v34 = 1024;
      v35 = 232;
      v36 = 1040;
      *v37 = 23;
      *&v37[4] = 2080;
      *&v37[6] = "ADAMSoundAnalysisWriter]";
      v38 = 2048;
      selfCopy2 = self;
      v25 = "[%s:%-5d %.*s:%p] failed to add SNMeasureAudioLevelRequest";
      v26 = v24;
      v27 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      {
        ADAM::get_log(void)::adam_os_log = os_log_create("com.apple.coreaudio", "adam");
      }

      v28 = ADAM::get_log(void)::adam_os_log;
      if (!os_log_type_enabled(ADAM::get_log(void)::adam_os_log, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_19;
      }

      *buf = 136316162;
      v33 = "ADAMSoundAnalysisWriter.mm";
      v34 = 1024;
      v35 = 236;
      v36 = 1040;
      *v37 = 23;
      *&v37[4] = 2080;
      *&v37[6] = "ADAMSoundAnalysisWriter]";
      v38 = 2048;
      selfCopy2 = self;
      v25 = "[%s:%-5d %.*s:%p] added SNMeasureAudioLevelRequest";
      v26 = v28;
      v27 = OS_LOG_TYPE_DEBUG;
    }

    _os_log_impl(&dword_296C34000, v26, v27, v25, buf, 0x2Cu);
LABEL_19:

    self->_frameCnt = 0;
    self->_speechEmotionTimestamp = 0;
    self->_soundAnalyzerInitialized = 1;
  }

  os_unfair_lock_unlock(&self->_initLock);
  v29 = *MEMORY[0x29EDCA608];
}

void __51__ADAMSoundAnalysisWriter__initializeSoundAnalyzer__block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x29EDCA608];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  v14 = 0;
  [v5 addRequest:v3 withObserver:v4 error:&v14];
  v6 = v14;
  if (!v6)
  {
    if (ADAM::ADAMLogScope(void)::once != -1)
    {
      dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
    }

    if (ADAM::ADAMLogScope(void)::scope)
    {
      v7 = *ADAM::ADAMLogScope(void)::scope;
      if (!v7)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v7 = MEMORY[0x29EDCA988];
      v12 = MEMORY[0x29EDCA988];
    }

    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    *buf = 136315650;
    v16 = "ADAMSoundAnalysisWriter.mm";
    v17 = 1024;
    v18 = 217;
    v19 = 2112;
    v20 = v3;
    v9 = "%25s:%-5d added SN request: %@";
    v10 = v7;
    v11 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_18;
  }

  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  if (ADAM::ADAMLogScope(void)::scope)
  {
    v7 = *ADAM::ADAMLogScope(void)::scope;
    if (!v7)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v7 = MEMORY[0x29EDCA988];
    v8 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v16 = "ADAMSoundAnalysisWriter.mm";
    v17 = 1024;
    v18 = 213;
    v19 = 2112;
    v20 = v3;
    v9 = "%25s:%-5d failed to add SN request: %@";
    v10 = v7;
    v11 = OS_LOG_TYPE_ERROR;
LABEL_18:
    _os_log_impl(&dword_296C34000, v10, v11, v9, buf, 0x1Cu);
  }

LABEL_19:

LABEL_20:
  v13 = *MEMORY[0x29EDCA608];
}

- (void)destroyAndLogOSTransaction
{
  v10 = *MEMORY[0x29EDCA608];
  transaction = self->_transaction;
  self->_transaction = 0;

  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  if (ADAM::ADAMLogScope(void)::scope)
  {
    v3 = *ADAM::ADAMLogScope(void)::scope;
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = MEMORY[0x29EDCA988];
    v4 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "ADAMSoundAnalysisWriter.mm";
    v8 = 1024;
    v9 = 97;
    _os_log_impl(&dword_296C34000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Destroyed os_transaction for sound analysis", &v6, 0x12u);
  }

LABEL_10:
  v5 = *MEMORY[0x29EDCA608];
}

- (void)createAndLogOSTransaction
{
  v12 = *MEMORY[0x29EDCA608];
  v3 = os_transaction_create();
  transaction = self->_transaction;
  self->_transaction = v3;

  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  if (ADAM::ADAMLogScope(void)::scope)
  {
    v5 = *ADAM::ADAMLogScope(void)::scope;
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = MEMORY[0x29EDCA988];
    v6 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "ADAMSoundAnalysisWriter.mm";
    v10 = 1024;
    v11 = 91;
    _os_log_impl(&dword_296C34000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Created os_transaction for sound analysis", &v8, 0x12u);
  }

LABEL_10:
  v7 = *MEMORY[0x29EDCA608];
}

@end