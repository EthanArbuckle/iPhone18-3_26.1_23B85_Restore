@interface SLODLDConfigDecoder
- (BOOL)isSPMModelMmapable;
- (SLODLDConfigDecoder)initWithConfigFile:(id)file;
- (id)getBertModelOutputNodes;
- (id)getOdldModelBnnsIrWeightFile;
- (id)getRegexMapConfig;
- (id)getSPMEncoderOptions;
- (id)getSPMModelFile;
- (unint64_t)getInputType;
- (unint64_t)getPreProcessorType;
- (unint64_t)getTokenizerType;
@end

@implementation SLODLDConfigDecoder

- (BOOL)isSPMModelMmapable
{
  v2 = [MEMORY[0x277D01778] getOdldValueForKey:@"tokenizer" categoryKey:*MEMORY[0x277D01AE0] configDict:self->_dictionary];
  v3 = [v2 objectForKeyedSubscript:@"mmapModel"];

  if (v3)
  {
    v4 = [v2 objectForKeyedSubscript:@"mmapModel"];
    LOBYTE(v3) = [v4 BOOLValue];
  }

  return v3;
}

- (id)getBertModelOutputNodes
{
  v2 = [MEMORY[0x277D01778] getOdldValueForKey:*MEMORY[0x277D01AD8] categoryKey:*MEMORY[0x277D01AE0] configDict:self->_dictionary];
  v3 = [v2 objectForKeyedSubscript:@"outputNodeName"];

  if (v3)
  {
    v3 = [v2 objectForKeyedSubscript:@"outputNodeName"];
  }

  return v3;
}

- (id)getOdldModelBnnsIrWeightFile
{
  v3 = [MEMORY[0x277D01778] getOdldValueForKey:@"BnnsIrWeightFile" categoryKey:*MEMORY[0x277D01AE0] configDict:self->_dictionary];
  getBertModelFile = [(SLODLDConfigDecoder *)self getBertModelFile];
  if ([getBertModelFile hasSuffix:*MEMORY[0x277D01588]] && (objc_msgSend(v3, "objectForKeyedSubscript:", @"BnnsIrWeightFile"), v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    resourcePath = self->_resourcePath;
    v7 = [v3 objectForKeyedSubscript:@"BnnsIrWeightFile"];
    v8 = [(NSString *)resourcePath stringByAppendingPathComponent:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)getSPMEncoderOptions
{
  v2 = [MEMORY[0x277D01778] getOdldValueForKey:@"tokenizer" categoryKey:*MEMORY[0x277D01AE0] configDict:self->_dictionary];
  v3 = [v2 objectForKeyedSubscript:@"spmEncodeOptions"];

  if (v3)
  {
    v3 = [v2 objectForKeyedSubscript:@"spmEncodeOptions"];
  }

  return v3;
}

- (id)getSPMModelFile
{
  v3 = [MEMORY[0x277D01778] getOdldValueForKey:@"tokenizer" categoryKey:*MEMORY[0x277D01AE0] configDict:self->_dictionary];
  v4 = [v3 objectForKeyedSubscript:@"spmModel"];

  if (v4)
  {
    resourcePath = self->_resourcePath;
    v6 = [v3 objectForKeyedSubscript:@"spmModel"];
    v7 = [(NSString *)resourcePath stringByAppendingPathComponent:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)getRegexMapConfig
{
  v3 = [MEMORY[0x277D01778] getOdldValueForKey:@"preprocessing" categoryKey:*MEMORY[0x277D01AE0] configDict:self->_dictionary];
  v4 = [v3 objectForKeyedSubscript:@"regexMapConfig"];

  if (v4)
  {
    resourcePath = self->_resourcePath;
    v6 = [v3 objectForKeyedSubscript:@"regexMapConfig"];
    v7 = [(NSString *)resourcePath stringByAppendingPathComponent:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)getTokenizerType
{
  v2 = [MEMORY[0x277D01778] getOdldValueForKey:@"tokenizer" categoryKey:*MEMORY[0x277D01AE0] configDict:self->_dictionary];
  v3 = [v2 objectForKeyedSubscript:@"spmModel"];

  return v3 != 0;
}

- (unint64_t)getPreProcessorType
{
  v2 = [MEMORY[0x277D01778] getOdldValueForKey:@"preprocessing" categoryKey:*MEMORY[0x277D01AE0] configDict:self->_dictionary];
  v3 = [v2 objectForKeyedSubscript:@"regexMapConfig"];

  return v3 != 0;
}

- (unint64_t)getInputType
{
  v2 = [(NSDictionary *)self->_dictionary objectForKeyedSubscript:@"inputType"];
  if ([v2 isEqualToString:@"PostITN"])
  {
    v3 = 1;
  }

  else if ([v2 isEqualToString:@"PreITN"])
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SLODLDConfigDecoder)initWithConfigFile:(id)file
{
  v30[1] = *MEMORY[0x277D85DE8];
  fileCopy = file;
  v24.receiver = self;
  v24.super_class = SLODLDConfigDecoder;
  v5 = [(SLODLDConfigDecoder *)&v24 init];
  if (!v5)
  {
LABEL_12:
    v14 = v5;
    goto LABEL_13;
  }

  v6 = [MEMORY[0x277D01778] decodeJsonFromFile:fileCopy];
  v7 = v6;
  if (v6)
  {
    v8 = [(NSDictionary *)v6 objectForKeyedSubscript:@"version"];

    if (v8)
    {
LABEL_9:
      stringByDeletingLastPathComponent = [fileCopy stringByDeletingLastPathComponent];
      resourcePath = v5->_resourcePath;
      v5->_resourcePath = stringByDeletingLastPathComponent;

      v17 = SLLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        v18 = v5->_resourcePath;
        *buf = 136315394;
        v26 = "[SLODLDConfigDecoder initWithConfigFile:]";
        v27 = 2112;
        v28 = v18;
        _os_log_impl(&dword_26754E000, v17, OS_LOG_TYPE_DEFAULT, "%s Decoded config at path: %@", buf, 0x16u);
      }

      dictionary = v5->_dictionary;
      v5->_dictionary = v7;

      goto LABEL_12;
    }
  }

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing config for regex matcher %@", v7];
  v10 = MEMORY[0x277CCA9B8];
  v29 = @"reason";
  v30[0] = v9;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
  v12 = [v10 errorWithDomain:@"com.apple.sl" code:115 userInfo:v11];

  if (!v12)
  {

    goto LABEL_9;
  }

  v13 = SLLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    v22 = v13;
    localizedDescription = [v12 localizedDescription];
    *buf = 136315394;
    v26 = "[SLODLDConfigDecoder initWithConfigFile:]";
    v27 = 2112;
    v28 = localizedDescription;
    _os_log_error_impl(&dword_26754E000, v22, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
  }

  v14 = 0;
LABEL_13:

  v20 = *MEMORY[0x277D85DE8];
  return v14;
}

@end