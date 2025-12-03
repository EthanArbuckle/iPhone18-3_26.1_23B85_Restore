@interface SSRRPISampledAudioUploader
+ (BOOL)audioFileExist:(id)exist date:(id)date;
+ (id)_convertToMetadataWithRequestId:(id)id audioUUId:(id)uId audioMetadata:(id)metadata;
+ (id)_getAudioFileMetadata:(id)metadata;
+ (void)_uploadAudioFilePath:(id)path requestId:(id)id audioId:(id)audioId metadataDict:(id)dict completion:(id)completion;
+ (void)cleanUpAudioOnAndBeforeDate:(id)date error:(id *)error;
+ (void)purgeOldAudioData;
+ (void)removeAllAudioDataWithError:(id *)error;
+ (void)uploadAudioFilePath:(id)path requestId:(id)id audioId:(id)audioId completion:(id)completion;
+ (void)uploadAudioFileWithRequestId:(id)id audioId:(id)audioId date:(id)date completion:(id)completion;
@end

@implementation SSRRPISampledAudioUploader

+ (id)_convertToMetadataWithRequestId:(id)id audioUUId:(id)uId audioMetadata:(id)metadata
{
  metadataCopy = metadata;
  v7 = MEMORY[0x277D571E8];
  uIdCopy = uId;
  v9 = objc_alloc_init(v7);
  v10 = [metadataCopy objectForKeyedSubscript:*MEMORY[0x277D01AF8]];
  longLongValue = [v10 longLongValue];

  v12 = MEMORY[0x277CCABB0];
  v13 = [metadataCopy objectForKeyedSubscript:*MEMORY[0x277D01AF0]];
  v14 = [v12 numberWithInteger:{objc_msgSend(v13, "integerValue")}];

  v15 = @"MHASRAUDIOCODEC_ALAC_MONO_16000HZ_VALUE";
  if (v14 && [v14 intValue] == 8000)
  {
    v15 = @"MHASRAUDIOCODEC_ALAC_MONO_8000HZ_VALUE";
  }

  [v9 setCodec:v15];
  v16 = [objc_alloc(MEMORY[0x277D5AC70]) initWithNSUUID:uIdCopy];

  [v9 setInteractionId:v16];
  v17 = [metadataCopy objectForKeyedSubscript:*MEMORY[0x277D01AD0]];
  [v9 setLanguage:v17];

  [v9 setAudioCreatedTimestampMs:1000 * longLongValue];

  return v9;
}

+ (void)_uploadAudioFilePath:(id)path requestId:(id)id audioId:(id)audioId metadataDict:(id)dict completion:(id)completion
{
  v42[1] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  idCopy = id;
  audioIdCopy = audioId;
  dictCopy = dict;
  completionCopy = completion;
  if (!dictCopy)
  {
    idCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot get metadata for requestId: %@", idCopy];
    v26 = MEMORY[0x277CCA9B8];
    v41 = @"reason";
    v42[0] = idCopy;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:&v41 count:1];
    v18 = [v26 errorWithDomain:@"com.apple.speakerrecognition" code:1262 userInfo:v27];

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0, pathCopy, v18);
      goto LABEL_7;
    }
  }

  idCopy = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:audioIdCopy];
  v18 = [self _convertToMetadataWithRequestId:idCopy audioUUId:idCopy audioMetadata:dictCopy];
  v19 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:idCopy];
  v20 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v21 = v20;
    [v19 UUIDString];
    v22 = v29 = audioIdCopy;
    uUIDString = [idCopy UUIDString];
    *buf = 136315906;
    v34 = "+[SSRRPISampledAudioUploader _uploadAudioFilePath:requestId:audioId:metadataDict:completion:]";
    v35 = 2112;
    v36 = pathCopy;
    v37 = 2112;
    v38 = v22;
    v39 = 2112;
    v40 = uUIDString;
    _os_log_impl(&dword_225E12000, v21, OS_LOG_TYPE_DEFAULT, "%s Uploading audioFilePath: %@ with requestId: %@ <-> audioId: %@", buf, 0x2Au);

    audioIdCopy = v29;
  }

  mEMORY[0x277D552B8] = [MEMORY[0x277D552B8] sharedAnalytics];
  defaultMessageStream = [mEMORY[0x277D552B8] defaultMessageStream];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __93__SSRRPISampledAudioUploader__uploadAudioFilePath_requestId_audioId_metadataDict_completion___block_invoke;
  v30[3] = &unk_278579050;
  v32 = completionCopy;
  v31 = pathCopy;
  [defaultMessageStream enqueueLargeMessageObjectFromPath:v31 assetIdentifier:idCopy requestIdentifier:v19 messageMetadata:v18 completion:v30];

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

+ (id)_getAudioFileMetadata:(id)metadata
{
  stringByDeletingPathExtension = [metadata stringByDeletingPathExtension];
  v4 = [stringByDeletingPathExtension stringByAppendingPathExtension:@"plist"];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [defaultManager fileExistsAtPath:v4];

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
  date = [MEMORY[0x277CBEAA8] date];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v5 = [currentCalendar dateByAddingUnit:16 value:-7 toDate:date options:0];
  v9 = 0;
  [self cleanUpAudioOnAndBeforeDate:v5 error:&v9];
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

+ (void)removeAllAudioDataWithError:(id *)error
{
  v13 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D01788] = [MEMORY[0x277D01788] sharedPreferences];
  getRPIAssistantAudioSamplingDirectory = [mEMORY[0x277D01788] getRPIAssistantAudioSamplingDirectory];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  [defaultManager removeItemAtPath:getRPIAssistantAudioSamplingDirectory error:error];

  v7 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "+[SSRRPISampledAudioUploader removeAllAudioDataWithError:]";
    v11 = 2114;
    v12 = getRPIAssistantAudioSamplingDirectory;
    _os_log_impl(&dword_225E12000, v7, OS_LOG_TYPE_DEFAULT, "%s Deleting all items in path: %{public}@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)cleanUpAudioOnAndBeforeDate:(id)date error:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  mEMORY[0x277D01788] = [MEMORY[0x277D01788] sharedPreferences];
  getRPIAssistantAudioSamplingDirectory = [mEMORY[0x277D01788] getRPIAssistantAudioSamplingDirectory];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  errorCopy = error;
  v9 = [defaultManager contentsOfDirectoryAtPath:getRPIAssistantAudioSamplingDirectory error:error];

  if (v9)
  {
    v23 = getRPIAssistantAudioSamplingDirectory;
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
          defaultDateFormatter = [MEMORY[0x277D018F8] defaultDateFormatter];
          v17 = [defaultDateFormatter dateFromString:v15];

          mEMORY[0x277D01788]2 = [MEMORY[0x277D01788] sharedPreferences];
          getRPIAssistantAudioSamplingDirectory2 = [mEMORY[0x277D01788]2 getRPIAssistantAudioSamplingDirectory];
          v20 = [getRPIAssistantAudioSamplingDirectory2 stringByAppendingPathComponent:v15];

          if (([v17 compare:dateCopy] + 1) <= 1)
          {
            defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
            [defaultManager2 removeItemAtPath:v20 error:errorCopy];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v12);
    }

    getRPIAssistantAudioSamplingDirectory = v23;
  }

  v22 = *MEMORY[0x277D85DE8];
}

+ (BOOL)audioFileExist:(id)exist date:(id)date
{
  v29 = *MEMORY[0x277D85DE8];
  existCopy = exist;
  dateCopy = date;
  mEMORY[0x277D01788] = [MEMORY[0x277D01788] sharedPreferences];
  v8 = [mEMORY[0x277D01788] getRPIAssistantAudioSamplingDateSubDirectory:dateCopy];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v10 = [defaultManager contentsOfDirectoryAtPath:v8 error:0];

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
    v23 = dateCopy;
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
        if ([v18 containsString:{existCopy, v22, v23, v24}])
        {
          v15 |= [v18 hasSuffix:@"pcm"];
        }

        if ([v18 containsString:existCopy])
        {
          v14 |= [v18 hasSuffix:@"plist"];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v13);
    v19 = v15 & v14;
    v8 = v22;
    dateCopy = v23;
  }

  else
  {
    v19 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v19 & 1;
}

+ (void)uploadAudioFileWithRequestId:(id)id audioId:(id)audioId date:(id)date completion:(id)completion
{
  v72 = *MEMORY[0x277D85DE8];
  idCopy = id;
  audioIdCopy = audioId;
  dateCopy = date;
  completionCopy = completion;
  mEMORY[0x277D01788] = [MEMORY[0x277D01788] sharedPreferences];
  v15 = [mEMORY[0x277D01788] getRPIAssistantAudioSamplingDateSubDirectory:dateCopy];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v60 = 0;
  v54 = v15;
  v17 = [defaultManager contentsOfDirectoryAtPath:v15 error:&v60];
  v18 = v60;

  if (v17)
  {
    selfCopy = self;
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
      v49 = completionCopy;
      v50 = audioIdCopy;
      v55 = 0;
      v21 = 0;
      v22 = *v57;
      v52 = idCopy;
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
          if ([v24 hasSuffix:@"pcm"] && objc_msgSend(v24, "rangeOfString:", idCopy) != 0x7FFFFFFFFFFFFFFFLL)
          {
            stringByDeletingPathExtension = [v24 stringByDeletingPathExtension];
            v26 = [stringByDeletingPathExtension stringByAppendingPathExtension:@"plist"];
            v27 = [v54 stringByAppendingPathComponent:v26];

            v28 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v27];

            v29 = [stringByDeletingPathExtension stringByAppendingPathExtension:@"pcm"];
            v21 = [v54 stringByAppendingPathComponent:v29];

            if (!v28)
            {
              v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"metadata cannot be loaded with plist: %@", v27];
              v38 = MEMORY[0x277CCA9B8];
              v65 = @"reason";
              v66 = v37;
              v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
              v33 = [v38 errorWithDomain:@"com.apple.speakerrecognition" code:1261 userInfo:v39];

              completionCopy = v49;
              if (v49)
              {
                (*(v49 + 2))(v49, 0, 0, v33);
              }

              v17 = v51;
              idCopy = v52;
              audioIdCopy = v50;
              v32 = v53;
              goto LABEL_27;
            }

            v55 = v21;
            v21 = v28;
            idCopy = v52;
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
        audioIdCopy = v50;
        v18 = v48;
        completionCopy = v49;
        goto LABEL_24;
      }

      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      v31 = [defaultManager2 fileExistsAtPath:v55];

      v17 = v51;
      if (v31)
      {
        audioIdCopy = v50;
        completionCopy = v49;
        [selfCopy _uploadAudioFilePath:v55 requestId:idCopy audioId:v50 metadataDict:v21 completion:v49];
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

        completionCopy = v49;
        if (v49)
        {
          (*(v49 + 2))(v49, 0, 0, v33);
        }

        v32 = v55;
        audioIdCopy = v50;
      }
    }

    else
    {

LABEL_24:
      v17 = v51;
      idCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"no audio file is found for requestId: %@", idCopy];
      v41 = MEMORY[0x277CCA9B8];
      v63 = @"reason";
      v64 = idCopy;
      v32 = idCopy;
      v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
      v33 = [v41 errorWithDomain:@"com.apple.speakerrecognition" code:1262 userInfo:v42];

      if (completionCopy)
      {
        (*(completionCopy + 2))(completionCopy, 0, 0, v33);
      }

      v21 = v20;
    }

LABEL_27:

    v18 = v33;
  }

  else if (completionCopy)
  {
    v34 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v35 = v34;
      localizedDescription = [v18 localizedDescription];
      *buf = 136315394;
      v69 = "+[SSRRPISampledAudioUploader uploadAudioFileWithRequestId:audioId:date:completion:]";
      v70 = 2112;
      v71 = localizedDescription;
      _os_log_impl(&dword_225E12000, v35, OS_LOG_TYPE_DEFAULT, "%s Failed with error: %@", buf, 0x16u);
    }

    (*(completionCopy + 2))(completionCopy, 0, 0, v18);
  }

  v43 = *MEMORY[0x277D85DE8];
}

+ (void)uploadAudioFilePath:(id)path requestId:(id)id audioId:(id)audioId completion:(id)completion
{
  completionCopy = completion;
  audioIdCopy = audioId;
  idCopy = id;
  pathCopy = path;
  v14 = [SSRRPISampledAudioUploader _getAudioFileMetadata:pathCopy];
  [self _uploadAudioFilePath:pathCopy requestId:idCopy audioId:audioIdCopy metadataDict:v14 completion:completionCopy];
}

@end