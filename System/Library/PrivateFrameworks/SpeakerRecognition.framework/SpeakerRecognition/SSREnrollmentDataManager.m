@interface SSREnrollmentDataManager
+ (BOOL)saveMetadata:(id)a3 phId:(id)a4;
+ (BOOL)saveRawUtteranceAndMetadata:(id)a3 withMetadata:(id)a4 atDirectory:(id)a5 isExplicitEnrollment:(BOOL)a6;
+ (BOOL)saveUtterance:(id)a3 utteranceAudioPath:(id)a4 numSamplesToWrite:(unint64_t)a5;
+ (BOOL)saveUtteranceAndMetadata:(id)a3 phId:(id)a4 atDirectory:(id)a5;
+ (BOOL)writeMetaDict:(id)a3 atMetaPath:(id)a4;
+ (id)_getBaseMetaDictionaryForUtterancePath:(id)a3;
@end

@implementation SSREnrollmentDataManager

+ (BOOL)writeMetaDict:(id)a3 atMetaPath:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v11 = *MEMORY[0x277D01970];
    if (!os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
LABEL_8:
      v10 = 0;
      goto LABEL_13;
    }

    *buf = 136315138;
    v20 = "+[SSREnrollmentDataManager writeMetaDict:atMetaPath:]";
    v12 = "%s ERR: called with nil metaPath";
LABEL_15:
    _os_log_error_impl(&dword_225E12000, v11, OS_LOG_TYPE_ERROR, v12, buf, 0xCu);
    goto LABEL_8;
  }

  if (!v6)
  {
    v11 = *MEMORY[0x277D01970];
    if (!os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    *buf = 136315138;
    v20 = "+[SSREnrollmentDataManager writeMetaDict:atMetaPath:]";
    v12 = "%s ERR: called with nil uttMeta";
    goto LABEL_15;
  }

  v18 = 0;
  v8 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v6 options:3 error:&v18];
  v9 = v18;
  if (v8)
  {
    v10 = [a1 writeMetaData:v8 atMetaPath:v7];
  }

  else
  {
    v13 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v16 = v13;
      v17 = [v9 localizedDescription];
      *buf = 136315394;
      v20 = "+[SSREnrollmentDataManager writeMetaDict:atMetaPath:]";
      v21 = 2114;
      v22 = v17;
      _os_log_error_impl(&dword_225E12000, v16, OS_LOG_TYPE_ERROR, "%s Cannot create json file : %{public}@", buf, 0x16u);
    }

    v10 = 0;
  }

LABEL_13:
  v14 = *MEMORY[0x277D85DE8];
  return v10;
}

+ (id)_getBaseMetaDictionaryForUtterancePath:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x277D018F8] deviceProductType];
    v11[0] = v4;
    v10[1] = @"productVersion";
    v5 = [MEMORY[0x277D018F8] deviceProductVersion];
    v10[2] = @"utteranceWav";
    v11[1] = v5;
    v11[2] = v3;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];
  }

  else
  {
    v7 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v13 = "+[SSREnrollmentDataManager _getBaseMetaDictionaryForUtterancePath:]";
      _os_log_error_impl(&dword_225E12000, v7, OS_LOG_TYPE_ERROR, "%s ERR: called with nil uttPath", buf, 0xCu);
    }

    v6 = MEMORY[0x277CBEC10];
  }

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (BOOL)saveMetadata:(id)a3 phId:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [v6 stringByReplacingOccurrencesOfString:@".json" withString:@".wav"];
    v9 = MEMORY[0x277CBEB38];
    v10 = [a1 _getBaseMetaDictionaryForUtterancePath:v8];
    v11 = [v9 dictionaryWithDictionary:v10];

    [v11 setObject:@"explicit" forKeyedSubscript:@"trainingType"];
    v12 = [MEMORY[0x277D018F8] timeStampWithSaltGrain];
    [v11 setObject:v12 forKeyedSubscript:@"grainedDate"];

    if (v7)
    {
      [v11 setObject:v7 forKeyedSubscript:@"phId"];
    }

    v13 = [a1 writeMetaDict:v11 atMetaPath:v6];
  }

  else
  {
    v14 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v17 = 136315138;
      v18 = "+[SSREnrollmentDataManager saveMetadata:phId:]";
      _os_log_error_impl(&dword_225E12000, v14, OS_LOG_TYPE_ERROR, "%s ERR: called with nil metaPath", &v17, 0xCu);
    }

    v13 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v13;
}

+ (BOOL)saveUtterance:(id)a3 utteranceAudioPath:(id)a4 numSamplesToWrite:(unint64_t)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = MEMORY[0x277D01970];
  v10 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v26 = "+[SSREnrollmentDataManager saveUtterance:utteranceAudioPath:numSamplesToWrite:]";
    v27 = 2050;
    v28 = a5;
    _os_log_impl(&dword_225E12000, v10, OS_LOG_TYPE_DEFAULT, "%s numSamplesToWrite %{public}lu", buf, 0x16u);
  }

  v11 = v7;
  v12 = v11;
  if ([MEMORY[0x277D016E0] inputRecordingIsFloat])
  {
    v12 = [MEMORY[0x277D01760] convertToShortLPCMBufFromFloatLPCMBuf:v11];
  }

  v13 = objc_alloc(MEMORY[0x277D01830]);
  v14 = [MEMORY[0x277CBEBC0] URLWithString:v8];
  [MEMORY[0x277D01748] lpcmInt16ASBD];
  [MEMORY[0x277D01748] lpcmInt16ASBD];
  v15 = [v13 initWithURL:v14 inputFormat:buf outputFormat:v24];

  if (!v15)
  {
    v17 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v26 = "+[SSREnrollmentDataManager saveUtterance:utteranceAudioPath:numSamplesToWrite:]";
      v18 = "%s Failed to get CSAudioFileWriter:";
      v19 = v17;
      v20 = 12;
LABEL_16:
      _os_log_error_impl(&dword_225E12000, v19, OS_LOG_TYPE_ERROR, v18, buf, v20);
      goto LABEL_17;
    }

    goto LABEL_17;
  }

  if (([v15 addSamples:objc_msgSend(v12 numSamples:{"bytes"), a5}] & 1) == 0)
  {
    v21 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v26 = "+[SSREnrollmentDataManager saveUtterance:utteranceAudioPath:numSamplesToWrite:]";
      v27 = 2114;
      v28 = v15;
      v18 = "%s Failed to addSamples to CSAudioFileWriter: %{public}@";
LABEL_15:
      v19 = v21;
      v20 = 22;
      goto LABEL_16;
    }

LABEL_17:
    v16 = 0;
    goto LABEL_18;
  }

  if (([v15 endAudio] & 1) == 0)
  {
    v21 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v26 = "+[SSREnrollmentDataManager saveUtterance:utteranceAudioPath:numSamplesToWrite:]";
      v27 = 2114;
      v28 = v15;
      v18 = "%s Failed to endAudio on CSAudioFileWriter: %{public}@";
      goto LABEL_15;
    }

    goto LABEL_17;
  }

  v16 = 1;
LABEL_18:

  v22 = *MEMORY[0x277D85DE8];
  return v16;
}

+ (BOOL)saveUtteranceAndMetadata:(id)a3 phId:(id)a4 atDirectory:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v24 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277CCAD78] UUID];
  v11 = [v10 UUIDString];

  v12 = [v11 stringByAppendingString:@".wav"];
  v13 = [v11 stringByAppendingString:@".json"];
  v14 = [v9 stringByAppendingPathComponent:v12];
  v15 = [v9 stringByAppendingPathComponent:v13];
  v16 = [v8 length];
  v17 = [MEMORY[0x277D016E0] inputRecordingSampleByteDepth];
  v18 = *MEMORY[0x277D01970];
  v19 = v16 / v17;
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v26 = "+[SSREnrollmentDataManager saveUtteranceAndMetadata:phId:atDirectory:]";
    v27 = 2114;
    v28 = v11;
    v29 = 2114;
    v30 = v9;
    v31 = 2114;
    v32 = @"explicit";
    _os_log_impl(&dword_225E12000, v18, OS_LOG_TYPE_DEFAULT, "%s Saving %{public}@ at %{public}@ as %{public}@ training.", buf, 0x2Au);
  }

  if ([a1 saveUtterance:v8 utteranceAudioPath:v14 numSamplesToWrite:v19])
  {
    v20 = v24;
    v21 = [a1 saveMetadata:v15 phId:v24];
  }

  else
  {
    v21 = 0;
    v20 = v24;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

+ (BOOL)saveRawUtteranceAndMetadata:(id)a3 withMetadata:(id)a4 atDirectory:(id)a5 isExplicitEnrollment:(BOOL)a6
{
  v6 = a6;
  v31 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = MEMORY[0x277D01970];
  v14 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v15 = @"implicit";
    if (v6)
    {
      v15 = @"explicit";
    }

    v27 = 136315394;
    v28 = "+[SSREnrollmentDataManager saveRawUtteranceAndMetadata:withMetadata:atDirectory:isExplicitEnrollment:]";
    v29 = 2114;
    v30 = v15;
    _os_log_impl(&dword_225E12000, v14, OS_LOG_TYPE_DEFAULT, "%s Saving utterance and meta as %{public}@ training.", &v27, 0x16u);
  }

  v16 = [MEMORY[0x277CCAD78] UUID];
  v17 = [v16 UUIDString];

  v18 = [v17 stringByAppendingString:@".wav"];
  v19 = [v17 stringByAppendingString:@".json"];
  v20 = [v12 stringByAppendingPathComponent:v18];
  v21 = [v12 stringByAppendingPathComponent:v19];
  if ([v10 writeToFile:v20 atomically:1])
  {
    if (v11)
    {
      v22 = [a1 writeMetaData:v11 atMetaPath:v21];
    }

    else
    {
      v22 = [a1 saveMetadata:v21 phId:0];
    }

    v24 = v22;
  }

  else
  {
    v23 = *v13;
    v24 = 0;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 136315394;
      v28 = "+[SSREnrollmentDataManager saveRawUtteranceAndMetadata:withMetadata:atDirectory:isExplicitEnrollment:]";
      v29 = 2114;
      v30 = v20;
      _os_log_impl(&dword_225E12000, v23, OS_LOG_TYPE_DEFAULT, "%s Failed to write utterance into %{public}@", &v27, 0x16u);
      v24 = 0;
    }
  }

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

@end