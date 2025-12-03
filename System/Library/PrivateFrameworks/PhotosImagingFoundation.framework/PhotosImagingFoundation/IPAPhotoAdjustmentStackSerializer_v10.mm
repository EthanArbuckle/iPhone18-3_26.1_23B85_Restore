@interface IPAPhotoAdjustmentStackSerializer_v10
- (id)archiveFromData:(id)data error:(id *)error;
- (id)dataFromArchive:(id)archive error:(id *)error;
- (id)dataFromPhotoAdjustmentStack:(id)stack error:(id *)error;
- (id)photoAdjustmentFromArchive:(id)archive error:(id *)error;
- (id)photoAdjustmentStackFromData:(id)data error:(id *)error;
@end

@implementation IPAPhotoAdjustmentStackSerializer_v10

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

- (id)photoAdjustmentStackFromData:(id)data error:(id *)error
{
  v86 = *MEMORY[0x277D85DE8];
  v84 = 0;
  v6 = [IPAAdjustmentStackSerializer decompressData:data error:&v84];
  v7 = v84;
  if (v6)
  {
    v83 = v7;
    v8 = [IPAAdjustmentStackSerializer JSONFromData:v6 error:&v83];
    v9 = v83;

    if (!v8)
    {
      v29 = 0;
      v28 = 0;
      v37 = 0;
      goto LABEL_55;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v38 = objc_opt_class();
      v36 = IPAAdjustmentError(1007, @"Malformed archive of type: %@", v39, v40, v41, v42, v43, v44, v38);
      v29 = 0;
      v28 = 0;
      goto LABEL_16;
    }

    v10 = [v8 objectForKeyedSubscript:@"formatVersion"];
    if (v10)
    {
      array = v10;
      v18 = [IPAAdjustmentVersion versionFromArchivalRepresentation:v10];
      if (v18)
      {
        v19 = [IPAAdjustmentVersion versionForMajor:1 minor:0];
        v20 = [v18 isEqualToAdjustmentVersion:v19];

        if (v20)
        {

          goto LABEL_8;
        }

        IPAAdjustmentError(1007, @"unsupported version %@", v21, v22, v23, v24, v25, v26, v18);
      }

      else
      {
        IPAAdjustmentError(1007, @"unable to parse stack formatVersion: %@", v12, v13, v14, v15, v16, v17, array);
      }
      v54 = ;

      v29 = 0;
      v28 = 0;
      v37 = 0;
      v9 = v54;
      goto LABEL_54;
    }

LABEL_8:
    v27 = [v8 objectForKeyedSubscript:@"versionInfo"];
    v28 = [IPAAdjustmentVersionInfo versionInfoFromArchivalRepresentation:v27];

    v29 = [v8 objectForKeyedSubscript:@"adjustments"];
    if (!v29 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      if (!v9)
      {
        objc_opt_class();
        v36 = IPAAdjustmentError(1001, @"bad input: archived '%@' missing or wrong type: %@", v30, v31, v32, v33, v34, v35, @"adjustments");
LABEL_16:
        v37 = 0;
        array = v9;
        v9 = v36;
LABEL_54:

LABEL_55:
        v7 = v9;
        if (!error)
        {
          goto LABEL_58;
        }

        goto LABEL_56;
      }
    }

    v45 = [v29 count];
    v72 = v28;
    errorCopy = error;
    if (!v45)
    {
      array = 0;
LABEL_39:
      if (!(array | v9))
      {
        array = [MEMORY[0x277CBEA60] array];
      }

      if (array)
      {
        v37 = objc_opt_new();
        [v37 setAdjustments:array];
        [v37 setVersionInfo:v28];
        v55 = [v8 objectForKeyedSubscript:@"metadata"];
        obja = [v55 objectForKeyedSubscript:@"pipelineVersion"];
        v56 = [IPAPhotoAdjustmentPipeline pipelineFromString:?];
        v71 = v56;
        if (v56)
        {
          [v37 setPipeline:v56];
        }

        else
        {
          v57 = +[IPAPhotoAdjustmentPipeline current];
          [v37 setPipeline:v57];
        }

        v58 = [v55 objectForKeyedSubscript:@"orientation"];
        v77 = v55;
        if (v58 || ([v55 objectForKeyedSubscript:@"masterOrientation"], (v58 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v59 = v58;
          integerValue = [v58 integerValue];
        }

        else
        {
          integerValue = 0;
        }

        [v37 setOrientation:integerValue];
        v61 = [v77 objectForKeyedSubscript:@"masterWidth"];
        v62 = [v77 objectForKeyedSubscript:@"masterHeight"];
        v63 = v62;
        integerValue2 = 0;
        v65 = v61;
        integerValue3 = 0;
        if (v61)
        {
          v67 = obja;
          if (v62)
          {
            integerValue2 = [v65 integerValue];
            integerValue3 = [v63 integerValue];
          }
        }

        else
        {
          v67 = obja;
        }

        [v37 setInputSize:{integerValue2, integerValue3}];

        v28 = v72;
        error = errorCopy;
      }

      else
      {
        v37 = 0;
      }

      goto LABEL_54;
    }

    v76 = [MEMORY[0x277CBEB18] arrayWithCapacity:v45];
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v46 = v29;
    v47 = [v46 countByEnumeratingWithState:&v79 objects:v85 count:16];
    if (v47)
    {
      v48 = v47;
      obj = v46;
      v49 = *v80;
      while (2)
      {
        for (i = 0; i != v48; ++i)
        {
          if (*v80 != v49)
          {
            objc_enumerationMutation(obj);
          }

          v51 = *(*(&v79 + 1) + 8 * i);
          v78 = v9;
          v52 = [(IPAPhotoAdjustmentStackSerializer_v10 *)self photoAdjustmentFromArchive:v51 error:&v78];
          v53 = v78;

          if (v52)
          {
            [v76 addObject:v52];
          }

          if (v53)
          {

            array = 0;
            v28 = v72;
            error = errorCopy;
            goto LABEL_38;
          }

          v9 = 0;
        }

        v48 = [obj countByEnumeratingWithState:&v79 objects:v85 count:16];
        v9 = 0;
        if (v48)
        {
          continue;
        }

        break;
      }

      v28 = v72;
    }

    else
    {

      if (v9)
      {
        array = 0;
        v53 = v9;
        goto LABEL_37;
      }
    }

    array = v76;
    v53 = 0;
LABEL_37:
    error = errorCopy;
LABEL_38:

    v9 = v53;
    goto LABEL_39;
  }

  v29 = 0;
  v28 = 0;
  v8 = 0;
  v37 = 0;
  if (!error)
  {
    goto LABEL_58;
  }

LABEL_56:
  if (v7)
  {
    v68 = v7;
    *error = v7;
  }

LABEL_58:
  v69 = v37;

  return v37;
}

- (id)photoAdjustmentFromArchive:(id)archive error:(id *)error
{
  archiveCopy = archive;
  v5 = [archiveCopy objectForKeyedSubscript:@"identifier"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = [archiveCopy objectForKeyedSubscript:@"version"];
  if (!v8)
  {
    v8 = [archiveCopy objectForKeyedSubscript:@"formatVersion"];
  }

  v9 = [archiveCopy objectForKeyedSubscript:@"settings"];
  v10 = [archiveCopy objectForKeyedSubscript:@"enabled"];
  if ([(__CFString *)v7 isEqualToString:@"PosterFrame"])
  {
    v11 = @"VideoPosterFrame";

    v12 = [v9 objectForKeyedSubscript:@"frameTime"];
    if (v12)
    {
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v12 forKey:@"time"];

      v9 = v13;
    }

    v14 = MEMORY[0x277CBEC38];
    v7 = @"VideoPosterFrame";
  }

  else if (v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = MEMORY[0x277CBEC38];
  }

  v15 = [archiveCopy objectForKeyedSubscript:@"maskUUID"];
  v16 = [archiveCopy objectForKeyedSubscript:@"auto"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ![(__CFString *)v7 length])
  {
    v58 = objc_opt_class();
    IPAAdjustmentError(1001, @"bad input: identifier missing or wrong type: %@, expected NSString", v25, v26, v27, v28, v29, v30, v58);
    v17 = LABEL_29:;
    goto LABEL_30;
  }

  if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v59 = objc_opt_class();
    IPAAdjustmentError(1001, @"bad input: settings missing or wrong type: %@, expected NSDictionary", v34, v35, v36, v37, v38, v39, v59);
    goto LABEL_29;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v60 = objc_opt_class();
    IPAAdjustmentError(1001, @"bad input: enabled missing or wrong type: %@, expected NSNumber", v40, v41, v42, v43, v44, v45, v60);
    goto LABEL_29;
  }

  if (v15)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![v15 length])
    {
      v61 = objc_opt_class();
      IPAAdjustmentError(1001, @"bad input: maskUUID is present but wrong type %@, expecting NSString", v46, v47, v48, v49, v50, v51, v61);
      goto LABEL_29;
    }
  }

  if (v16)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v62 = objc_opt_class();
      IPAAdjustmentError(1001, @"bad input: auto settings present but wrong type %@, expecting NSDictionary", v52, v53, v54, v55, v56, v57, v62);
      goto LABEL_29;
    }
  }

  if (!v8)
  {
    v17 = 0;
LABEL_41:
    v31 = objc_opt_new();
    [v31 setIdentifier:v7];
    [v31 setVersion:v17];
    [v31 setSettings:v9];
    [v31 setEnabled:{objc_msgSend(v14, "BOOLValue")}];
    [v31 setMaskUUID:v15];
    [v31 setAutoSettings:v16];

    v17 = 0;
    goto LABEL_33;
  }

  v17 = [IPAAdjustmentVersion versionFromArchivalRepresentation:v8];
  if (v17)
  {
    goto LABEL_41;
  }

  v18 = objc_opt_class();
  v17 = IPAAdjustmentError(1001, @"bad input: adjustment version wrong type: %@, expected NSNumber|NSString", v19, v20, v21, v22, v23, v24, v18);
  if (!v17)
  {
    goto LABEL_41;
  }

LABEL_30:
  v31 = 0;
  if (error && v17)
  {
    v32 = v17;
    v31 = 0;
    *error = v17;
  }

LABEL_33:

  return v31;
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

- (id)dataFromPhotoAdjustmentStack:(id)stack error:(id *)error
{
  v65 = *MEMORY[0x277D85DE8];
  stackCopy = stack;
  pipeline = [stackCopy pipeline];
  if (pipeline)
  {
    v14 = objc_opt_new();
    string = [pipeline string];
    v51 = string;
    if (string)
    {
      [v14 setObject:string forKeyedSubscript:@"pipelineVersion"];
    }

    else
    {
      _PFAssertContinueHandler();
    }

    selfCopy = self;
    v54 = pipeline;
    errorCopy = error;
    v18 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(stackCopy, "orientation")}];
    [v14 setObject:v18 forKeyedSubscript:@"orientation"];

    inputSize = [stackCopy inputSize];
    v21 = v20;
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:inputSize];
    [v14 setObject:v22 forKeyedSubscript:@"masterWidth"];

    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v21];
    [v14 setObject:v23 forKeyedSubscript:@"masterHeight"];

    v24 = objc_opt_new();
    v52 = v14;
    [v24 setObject:v14 forKeyedSubscript:@"metadata"];
    versionInfo = [stackCopy versionInfo];
    v26 = versionInfo;
    if (versionInfo)
    {
      archivalRepresentation = [versionInfo archivalRepresentation];
      [v24 setObject:archivalRepresentation forKeyedSubscript:@"versionInfo"];
    }

    v49 = v26;
    v50 = v24;
    v56 = stackCopy;
    v57 = objc_opt_new();
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    obj = [stackCopy adjustments];
    v28 = [obj countByEnumeratingWithState:&v60 objects:v64 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v61;
      do
      {
        v31 = 0;
        do
        {
          if (*v61 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v32 = *(*(&v60 + 1) + 8 * v31);
          identifier = [v32 identifier];
          if (!identifier)
          {
            v48 = v32;
LABEL_17:
            _PFAssertContinueHandler();
            goto LABEL_29;
          }

          version = [v32 version];
          if (version)
          {
            v35 = version;
          }

          else
          {
            identifier2 = [v32 identifier];
            v35 = IPAAdjustmentCurrentVersionForIdentifier(identifier2);

            if (!v35)
            {
              v48 = v56;
              goto LABEL_17;
            }
          }

          archivalRepresentation2 = [v35 archivalRepresentation];
          if (archivalRepresentation2)
          {
            v38 = objc_opt_new();
            [v38 setObject:identifier forKeyedSubscript:@"identifier"];
            v39 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v32, "enabled")}];
            [v38 setObject:v39 forKeyedSubscript:@"enabled"];

            [v38 setObject:archivalRepresentation2 forKeyedSubscript:@"formatVersion"];
            maskUUID = [v32 maskUUID];
            if (maskUUID)
            {
              [v38 setObject:maskUUID forKeyedSubscript:@"maskUUID"];
            }

            settings = [v32 settings];
            if (settings)
            {
              [v38 setObject:settings forKeyedSubscript:@"settings"];
            }

            autoSettings = [v32 autoSettings];
            if (autoSettings)
            {
              [v38 setObject:autoSettings forKeyedSubscript:@"auto"];
            }

            [v57 addObject:v38];
          }

          else
          {
            v48 = v35;
            _PFAssertContinueHandler();
          }

LABEL_29:
          ++v31;
        }

        while (v29 != v31);
        v43 = [obj countByEnumeratingWithState:&v60 objects:v64 count:16];
        v29 = v43;
      }

      while (v43);
    }

    v17 = v50;
    [v50 setObject:v57 forKeyedSubscript:@"adjustments"];
    [v50 setObject:&unk_287048FA0 forKeyedSubscript:@"formatVersion"];

    v16 = 0;
    error = errorCopy;
    stackCopy = v56;
    self = selfCopy;
    pipeline = v54;
  }

  else
  {
    v16 = IPAAdjustmentError(1000, @"expected adjustment stack to have a pipeline: %@", v7, v8, v9, v10, v11, v12, stackCopy);
    v17 = 0;
  }

  v59 = v16;
  v44 = [(IPAPhotoAdjustmentStackSerializer_v10 *)self dataFromArchive:v17 error:&v59, v48];
  v45 = v59;

  if (error && v45)
  {
    v46 = v45;
    *error = v45;
  }

  return v44;
}

@end