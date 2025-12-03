@interface IPAVideoAdjustmentStackSerializer_v10
- (id)archiveFromData:(id)data error:(id *)error;
- (id)dataFromArchive:(id)archive error:(id *)error;
- (id)dataFromVideoAdjustmentStack:(id)stack error:(id *)error;
- (id)videoAdjustmentFromArchive:(id)archive error:(id *)error;
- (id)videoAdjustmentStackFromData:(id)data error:(id *)error;
@end

@implementation IPAVideoAdjustmentStackSerializer_v10

- (id)archiveFromData:(id)data error:(id *)error
{
  v5 = [IPAAdjustmentStackSerializer decompressData:data error:?];
  if (v5)
  {
    v6 = [IPAAdjustmentStackSerializer JSONFromData:v5 error:error];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)videoAdjustmentStackFromData:(id)data error:(id *)error
{
  v42 = *MEMORY[0x277D85DE8];
  v40 = 0;
  v5 = [IPAAdjustmentStackSerializer decompressData:data error:&v40];
  v6 = v40;
  if (v5)
  {
    v39 = v6;
    v7 = [IPAAdjustmentStackSerializer JSONFromData:v5 error:&v39];
    v8 = v39;

    v6 = v8;
  }

  else
  {
    v7 = 0;
  }

  v9 = [v7 objectForKeyedSubscript:@"adjustments"];
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 count];
      if (v10)
      {
        v30 = v7;
        v31 = v5;
        array = [MEMORY[0x277CBEB18] arrayWithCapacity:v10];
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v12 = v9;
        v13 = [v12 countByEnumeratingWithState:&v35 objects:v41 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v36;
LABEL_9:
          v16 = 0;
          while (1)
          {
            if (*v36 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v35 + 1) + 8 * v16);
            v34 = v6;
            v18 = [(IPAVideoAdjustmentStackSerializer_v10 *)self videoAdjustmentFromArchive:v17 error:&v34];
            v19 = v34;

            if (v18)
            {
              [array addObject:v18];
            }

            if (v19)
            {
              break;
            }

            v6 = 0;
            if (v14 == ++v16)
            {
              v14 = [v12 countByEnumeratingWithState:&v35 objects:v41 count:16];
              v6 = 0;
              v19 = 0;
              if (v14)
              {
                goto LABEL_9;
              }

              break;
            }
          }
        }

        else
        {
          v19 = v6;
        }

        v7 = v30;
        v5 = v31;
        if (array)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v19 = v6;
      }

      array = [MEMORY[0x277CBEA60] array];
LABEL_23:
      v26 = objc_opt_new();
      [v26 setAdjustments:array];
      v6 = array;
      goto LABEL_24;
    }
  }

  objc_opt_class();
  v19 = IPAAdjustmentError(1001, @"bad input: archived '%@' missing or wrong type: %@", v20, v21, v22, v23, v24, v25, @"adjustments");
  v26 = 0;
LABEL_24:

  v33 = **&MEMORY[0x277CC08F0];
  v27 = [v7 objectForKeyedSubscript:@"naturalDuration"];
  v28 = v27;
  if (v27)
  {
    memset(&v32, 0, sizeof(v32));
    CMTimeMakeFromDictionary(&v32, v27);
    if (v32.flags)
    {
      v33 = v32;
    }
  }

  v32 = v33;
  [v26 setNaturalDuration:&v32];

  return v26;
}

- (id)videoAdjustmentFromArchive:(id)archive error:(id *)error
{
  archiveCopy = archive;
  v6 = [archiveCopy objectForKeyedSubscript:@"identifier"];
  v7 = [archiveCopy objectForKeyedSubscript:@"version"];
  if (!v7)
  {
    v7 = [archiveCopy objectForKeyedSubscript:@"formatVersion"];
  }

  v8 = [archiveCopy objectForKeyedSubscript:@"settings"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ![v6 length])
  {
    v32 = objc_opt_class();
    IPAAdjustmentError(1001, @"bad input: identifier missing or wrong type: %@, expected NSString", v17, v18, v19, v20, v21, v22, v32);
    goto LABEL_12;
  }

  if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v33 = objc_opt_class();
    IPAAdjustmentError(1001, @"bad input: settings missing or wrong type: %@, expected NSDictionary", v26, v27, v28, v29, v30, v31, v33);
    v16 = LABEL_12:;
    v23 = 0;
    if (!error)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (v7)
  {
    v15 = [IPAAdjustmentVersion versionFromArchivalRepresentation:v7];
    if (v15)
    {
      v16 = 0;
    }

    else
    {
      v16 = IPAAdjustmentError(1001, @"bad input: invalid formatVersion %@", v9, v10, v11, v12, v13, v14, v7);
    }
  }

  else
  {
    v16 = 0;
    v15 = 0;
  }

  v23 = objc_opt_new();
  [v23 setIdentifier:v6];
  [v23 setVersion:v15];
  [v23 setSettings:v8];

  if (!error)
  {
    goto LABEL_15;
  }

LABEL_13:
  if (v16)
  {
    v24 = v16;
    *error = v16;
  }

LABEL_15:

  return v23;
}

- (id)dataFromArchive:(id)archive error:(id *)error
{
  v5 = [IPAAdjustmentStackSerializer dataFromJSON:archive error:?];
  if (v5)
  {
    v6 = [IPAAdjustmentStackSerializer compressData:v5 error:error];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)dataFromVideoAdjustmentStack:(id)stack error:(id *)error
{
  v46 = *MEMORY[0x277D85DE8];
  stackCopy = stack;
  v32 = objc_opt_new();
  v34 = stackCopy;
  v35 = objc_opt_new();
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  adjustments = [stackCopy adjustments];
  v6 = [adjustments countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = "[IPAVideoAdjustmentStackSerializer_v10 dataFromVideoAdjustmentStack:error:]";
    v9 = "/Library/Caches/com.apple.xbs/Sources/Photos/lib/photosimagingfoundation/source/adjustments/serialization/serializers/video/IPAVideoAdjustmentStackSerializer_v10.m";
    v10 = *v41;
    do
    {
      v11 = 0;
      v36 = v7;
      do
      {
        if (*v41 != v10)
        {
          objc_enumerationMutation(adjustments);
        }

        v12 = *(*(&v40 + 1) + 8 * v11);
        identifier = [v12 identifier];
        if (identifier)
        {
          version = [v12 version];
          v15 = version;
          if (version)
          {
            archivalRepresentation = [version archivalRepresentation];
            if (archivalRepresentation)
            {
              v17 = v10;
              v18 = adjustments;
              v19 = v9;
              v20 = v8;
              settings = [v12 settings];
              if (settings)
              {
                v22 = objc_opt_new();
                [v22 setObject:identifier forKeyedSubscript:@"identifier"];
                [v22 setObject:archivalRepresentation forKeyedSubscript:@"formatVersion"];
                [v22 setObject:settings forKeyedSubscript:@"settings"];
                [v35 addObject:v22];
              }

              else
              {
                v30 = v12;
                _PFAssertContinueHandler();
              }

              v8 = v20;
              v9 = v19;
              adjustments = v18;
              v10 = v17;
              v7 = v36;
            }

            else
            {
              v30 = v15;
              _PFAssertContinueHandler();
            }
          }

          else
          {
            v30 = v12;
            _PFAssertContinueHandler();
          }
        }

        else
        {
          v30 = v12;
          _PFAssertContinueHandler();
        }

        ++v11;
      }

      while (v7 != v11);
      v7 = [adjustments countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v7);
  }

  [v32 setObject:v35 forKeyedSubscript:@"adjustments"];
  memset(&v39, 0, sizeof(v39));
  if (v34 && ([v34 naturalDuration], (v39.flags & 0x1D) == 1) && (time1 = v39, time2 = **&MEMORY[0x277CC08F0], CMTimeCompare(&time1, &time2) > 0))
  {
    time1 = v39;
    v23 = CMTimeCopyAsDictionary(&time1, 0);
    if (v23)
    {
      [v32 setObject:v23 forKeyedSubscript:@"naturalDuration"];
    }
  }

  else
  {
    v23 = IPAAdjustmentGetLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      time1 = v39;
      v24 = CMTimeCopyDescription(*MEMORY[0x277CBECE8], &time1);
      LODWORD(time1.value) = 138412290;
      *(&time1.value + 4) = v24;
      _os_log_impl(&dword_25E5BB000, v23, OS_LOG_TYPE_DEBUG, "invalid natural duration %@ on persist", &time1, 0xCu);
    }
  }

  v37 = 0;
  v25 = [(IPAVideoAdjustmentStackSerializer_v10 *)self dataFromArchive:v32 error:&v37];
  v26 = v37;
  v27 = v26;
  if (error && v26)
  {
    v28 = v26;
    *error = v27;
  }

  return v25;
}

@end