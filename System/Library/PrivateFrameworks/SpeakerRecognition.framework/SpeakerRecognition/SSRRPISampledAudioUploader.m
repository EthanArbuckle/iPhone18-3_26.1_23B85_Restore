@interface SSRRPISampledAudioUploader
+ (BOOL)audioFileExist:(id)a3 date:(id)a4;
+ (id)_convertToMetadataWithRequestId:(id)a3 audioUUId:(id)a4 audioMetadata:(id)a5;
+ (id)_getAudioFileMetadata:(id)a3;
+ (void)_uploadAudioFilePath:(id)a3 requestId:(id)a4 audioId:(id)a5 metadataDict:(id)a6 completion:(id)a7;
+ (void)cleanUpAudioOnAndBeforeDate:(id)a3 error:(id *)a4;
+ (void)purgeOldAudioData;
+ (void)removeAllAudioDataWithError:(id *)a3;
+ (void)uploadAudioFilePath:(id)a3 requestId:(id)a4 audioId:(id)a5 completion:(id)a6;
+ (void)uploadAudioFileWithRequestId:(id)a3 audioId:(id)a4 date:(id)a5 completion:(id)a6;
@end

@implementation SSRRPISampledAudioUploader

+ (id)_convertToMetadataWithRequestId:(id)a3 audioUUId:(id)a4 audioMetadata:(id)a5
{
  v6 = a5;
  v7 = MEMORY[0x277D571E8];
  v8 = a4;
  v9 = objc_alloc_init(v7);
  v10 = [v6 objectForKeyedSubscript:*MEMORY[0x277D01AF8]];
  v11 = [v10 longLongValue];

  v12 = MEMORY[0x277CCABB0];
  v13 = [v6 objectForKeyedSubscript:*MEMORY[0x277D01AF0]];
  v14 = [v12 numberWithInteger:{objc_msgSend(v13, "integerValue")}];

  v15 = @"MHASRAUDIOCODEC_ALAC_MONO_16000HZ_VALUE";
  if (v14 && [v14 intValue] == 8000)
  {
    v15 = @"MHASRAUDIOCODEC_ALAC_MONO_8000HZ_VALUE";
  }

  [v9 setCodec:v15];
  v16 = [objc_alloc(MEMORY[0x277D5AC70]) initWithNSUUID:v8];

  [v9 setInteractionId:v16];
  v17 = [v6 objectForKeyedSubscript:*MEMORY[0x277D01AD0]];
  [v9 setLanguage:v17];

  [v9 setAudioCreatedTimestampMs:1000 * v11];

  return v9;
}

+ (void)_uploadAudioFilePath:(id)a3 requestId:(id)a4 audioId:(id)a5 metadataDict:(id)a6 completion:(id)a7
{
  v42[1] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (!v15)
  {
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot get metadata for requestId: %@", v13];
    v26 = MEMORY[0x277CCA9B8];
    v41 = @"reason";
    v42[0] = v17;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:&v41 count:1];
    v18 = [v26 errorWithDomain:@"com.apple.speakerrecognition" code:1262 userInfo:v27];

    if (v16)
    {
      v16[2](v16, 0, v12, v18);
      goto LABEL_7;
    }
  }

  v17 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v14];
  v18 = [a1 _convertToMetadataWithRequestId:v13 audioUUId:v17 audioMetadata:v15];
  v19 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v13];
  v20 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v21 = v20;
    [v19 UUIDString];
    v22 = v29 = v14;
    v23 = [v17 UUIDString];
    *buf = 136315906;
    v34 = "+[SSRRPISampledAudioUploader _uploadAudioFilePath:requestId:audioId:metadataDict:completion:]";
    v35 = 2112;
    v36 = v12;
    v37 = 2112;
    v38 = v22;
    v39 = 2112;
    v40 = v23;
    _os_log_impl(&dword_225E12000, v21, OS_LOG_TYPE_DEFAULT, "%s Uploading audioFilePath: %@ with requestId: %@ <-> audioId: %@", buf, 0x2Au);

    v14 = v29;
  }

  v24 = [MEMORY[0x277D552B8] sharedAnalytics];
  v25 = [v24 defaultMessageStream];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __93__SSRRPISampledAudioUploader__uploadAudioFilePath_requestId_audioId_metadataDict_completion___block_invoke;
  v30[3] = &unk_278579050;
  v32 = v16;
  v31 = v12;
  [v25 enqueueLargeMessageObjectFromPath:v31 assetIdentifier:v17 requestIdentifier:v19 messageMetadata:v18 completion:v30];

LABEL_7:
  v28 = *MEMORY[0x277D85DE8];
}

uint64_t __93__SSRRPISampledAudioUploader__uploadAudioFilePath_requestId_audioId_metadataDict_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, a2, *(a1 + 32), a3);
  }

  return result;
}

+ (id)_getAudioFileMetadata:(id)a3
{
  v3 = [a3 stringByDeletingPathExtension];
  v4 = [v3 stringByAppendingPathExtension:@"plist"];

  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [v5 fileExistsAtPath:v4];

  if (v6)
  {
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (void)purgeOldAudioData
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = [MEMORY[0x277CBEA80] currentCalendar];
  v5 = [v4 dateByAddingUnit:16 value:-7 toDate:v3 options:0];
  v9 = 0;
  [a1 cleanUpAudioOnAndBeforeDate:v5 error:&v9];
  v6 = v9;
  [SSRRequestIdToAudioIdMappingHelper removeMappingOnAndBefore:v5 completion:&__block_literal_global_5057];
  v7 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "+[SSRRPISampledAudioUploader purgeOldAudioData]";
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_225E12000, v7, OS_LOG_TYPE_DEFAULT, "%s Purged audio data prior to %@", buf, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __47__SSRRPISampledAudioUploader_purgeOldAudioData__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "+[SSRRPISampledAudioUploader purgeOldAudioData]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_impl(&dword_225E12000, v3, OS_LOG_TYPE_DEFAULT, "%s Purged mapping with err: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

+ (void)removeAllAudioDataWithError:(id *)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277D01788] sharedPreferences];
  v5 = [v4 getRPIAssistantAudioSamplingDirectory];

  v6 = [MEMORY[0x277CCAA00] defaultManager];
  [v6 removeItemAtPath:v5 error:a3];

  v7 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "+[SSRRPISampledAudioUploader removeAllAudioDataWithError:]";
    v11 = 2114;
    v12 = v5;
    _os_log_impl(&dword_225E12000, v7, OS_LOG_TYPE_DEFAULT, "%s Deleting all items in path: %{public}@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)cleanUpAudioOnAndBeforeDate:(id)a3 error:(id *)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277D01788] sharedPreferences];
  v7 = [v6 getRPIAssistantAudioSamplingDirectory];

  v8 = [MEMORY[0x277CCAA00] defaultManager];
  v24 = a4;
  v9 = [v8 contentsOfDirectoryAtPath:v7 error:a4];

  if (v9)
  {
    v23 = v7;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v26;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v26 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v25 + 1) + 8 * i);
          v16 = [MEMORY[0x277D018F8] defaultDateFormatter];
          v17 = [v16 dateFromString:v15];

          v18 = [MEMORY[0x277D01788] sharedPreferences];
          v19 = [v18 getRPIAssistantAudioSamplingDirectory];
          v20 = [v19 stringByAppendingPathComponent:v15];

          if (([v17 compare:v5] + 1) <= 1)
          {
            v21 = [MEMORY[0x277CCAA00] defaultManager];
            [v21 removeItemAtPath:v20 error:v24];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v12);
    }

    v7 = v23;
  }

  v22 = *MEMORY[0x277D85DE8];
}

+ (BOOL)audioFileExist:(id)a3 date:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277D01788] sharedPreferences];
  v8 = [v7 getRPIAssistantAudioSamplingDateSubDirectory:v6];

  v9 = [MEMORY[0x277CCAA00] defaultManager];
  v10 = [v9 contentsOfDirectoryAtPath:v8 error:0];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v22 = v8;
    v23 = v6;
    v14 = 0;
    v15 = 0;
    v16 = *v25;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v11);
        }

        v18 = *(*(&v24 + 1) + 8 * i);
        if ([v18 containsString:{v5, v22, v23, v24}])
        {
          v15 |= [v18 hasSuffix:@"pcm"];
        }

        if ([v18 containsString:v5])
        {
          v14 |= [v18 hasSuffix:@"plist"];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v13);
    v19 = v15 & v14;
    v8 = v22;
    v6 = v23;
  }

  else
  {
    v19 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v19 & 1;
}

+ (void)uploadAudioFileWithRequestId:(id)a3 audioId:(id)a4 date:(id)a5 completion:(id)a6
{
  v72 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [MEMORY[0x277D01788] sharedPreferences];
  v15 = [v14 getRPIAssistantAudioSamplingDateSubDirectory:v12];

  v16 = [MEMORY[0x277CCAA00] defaultManager];
  v60 = 0;
  v54 = v15;
  v17 = [v16 contentsOfDirectoryAtPath:v15 error:&v60];
  v18 = v60;

  if (v17)
  {
    v47 = a1;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v51 = v17;
    v19 = v17;
    v20 = [v19 countByEnumeratingWithState:&v56 objects:v67 count:16];
    if (v20)
    {
      v48 = v18;
      v49 = v13;
      v50 = v11;
      v55 = 0;
      v21 = 0;
      v22 = *v57;
      v52 = v10;
      v53 = v19;
      while (2)
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v57 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v56 + 1) + 8 * i);
          if ([v24 hasSuffix:@"pcm"] && objc_msgSend(v24, "rangeOfString:", v10) != 0x7FFFFFFFFFFFFFFFLL)
          {
            v25 = [v24 stringByDeletingPathExtension];
            v26 = [v25 stringByAppendingPathExtension:@"plist"];
            v27 = [v54 stringByAppendingPathComponent:v26];

            v28 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v27];

            v29 = [v25 stringByAppendingPathExtension:@"pcm"];
            v21 = [v54 stringByAppendingPathComponent:v29];

            if (!v28)
            {
              v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"metadata cannot be loaded with plist: %@", v27];
              v38 = MEMORY[0x277CCA9B8];
              v65 = @"reason";
              v66 = v37;
              v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
              v33 = [v38 errorWithDomain:@"com.apple.speakerrecognition" code:1261 userInfo:v39];

              v13 = v49;
              if (v49)
              {
                (*(v49 + 2))(v49, 0, 0, v33);
              }

              v17 = v51;
              v10 = v52;
              v11 = v50;
              v32 = v53;
              goto LABEL_27;
            }

            v55 = v21;
            v21 = v28;
            v10 = v52;
            v19 = v53;
          }
        }

        v20 = [v19 countByEnumeratingWithState:&v56 objects:v67 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }

      if (!v55)
      {
        v20 = v21;
        v11 = v50;
        v18 = v48;
        v13 = v49;
        goto LABEL_24;
      }

      v30 = [MEMORY[0x277CCAA00] defaultManager];
      v31 = [v30 fileExistsAtPath:v55];

      v17 = v51;
      if (v31)
      {
        v11 = v50;
        v13 = v49;
        [v47 _uploadAudioFilePath:v55 requestId:v10 audioId:v50 metadataDict:v21 completion:v49];
        v32 = v55;
        v33 = v48;
      }

      else
      {
        v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"file does not exists: %@", v55];
        v45 = MEMORY[0x277CCA9B8];
        v61 = @"reason";
        v62 = v44;
        v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
        v33 = [v45 errorWithDomain:@"com.apple.speakerrecognition" code:1262 userInfo:v46];

        v13 = v49;
        if (v49)
        {
          (*(v49 + 2))(v49, 0, 0, v33);
        }

        v32 = v55;
        v11 = v50;
      }
    }

    else
    {

LABEL_24:
      v17 = v51;
      v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"no audio file is found for requestId: %@", v10];
      v41 = MEMORY[0x277CCA9B8];
      v63 = @"reason";
      v64 = v40;
      v32 = v40;
      v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
      v33 = [v41 errorWithDomain:@"com.apple.speakerrecognition" code:1262 userInfo:v42];

      if (v13)
      {
        (*(v13 + 2))(v13, 0, 0, v33);
      }

      v21 = v20;
    }

LABEL_27:

    v18 = v33;
  }

  else if (v13)
  {
    v34 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v35 = v34;
      v36 = [v18 localizedDescription];
      *buf = 136315394;
      v69 = "+[SSRRPISampledAudioUploader uploadAudioFileWithRequestId:audioId:date:completion:]";
      v70 = 2112;
      v71 = v36;
      _os_log_impl(&dword_225E12000, v35, OS_LOG_TYPE_DEFAULT, "%s Failed with error: %@", buf, 0x16u);
    }

    (*(v13 + 2))(v13, 0, 0, v18);
  }

  v43 = *MEMORY[0x277D85DE8];
}

+ (void)uploadAudioFilePath:(id)a3 requestId:(id)a4 audioId:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [SSRRPISampledAudioUploader _getAudioFileMetadata:v13];
  [a1 _uploadAudioFilePath:v13 requestId:v12 audioId:v11 metadataDict:v14 completion:v10];
}

@end