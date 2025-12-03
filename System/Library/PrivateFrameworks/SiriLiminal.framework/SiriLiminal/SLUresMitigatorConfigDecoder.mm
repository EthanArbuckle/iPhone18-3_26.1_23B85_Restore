@interface SLUresMitigatorConfigDecoder
- (SLUresMitigatorConfigDecoder)initWithConfigFile:(id)file errOut:(id *)out;
- (id)getBnnsIrWeightFile;
- (id)getModelFile;
@end

@implementation SLUresMitigatorConfigDecoder

- (id)getModelFile
{
  v3 = *MEMORY[0x277D01B00];
  v4 = [(NSDictionary *)self->_configDict objectForKeyedSubscript:*MEMORY[0x277D01B00]];

  if (v4)
  {
    resourcePath = self->_resourcePath;
    v6 = [(NSDictionary *)self->_configDict objectForKeyedSubscript:v3];
    v7 = [(NSString *)resourcePath stringByAppendingPathComponent:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)getBnnsIrWeightFile
{
  v3 = [(NSDictionary *)self->_configDict objectForKeyedSubscript:@"BnnsIrWeightFile"];

  if (v3)
  {
    resourcePath = self->_resourcePath;
    v5 = [(NSDictionary *)self->_configDict objectForKeyedSubscript:@"BnnsIrWeightFile"];
    v6 = [(NSString *)resourcePath stringByAppendingPathComponent:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (SLUresMitigatorConfigDecoder)initWithConfigFile:(id)file errOut:(id *)out
{
  v28[1] = *MEMORY[0x277D85DE8];
  fileCopy = file;
  v26.receiver = self;
  v26.super_class = SLUresMitigatorConfigDecoder;
  v7 = [(SLUresMitigatorConfigDecoder *)&v26 init];
  if (!v7)
  {
    goto LABEL_11;
  }

  stringByDeletingLastPathComponent = [fileCopy stringByDeletingLastPathComponent];
  resourcePath = v7->_resourcePath;
  v7->_resourcePath = stringByDeletingLastPathComponent;

  v10 = [MEMORY[0x277D01778] decodeJsonFromFile:fileCopy];
  configDict = v7->_configDict;
  v7->_configDict = v10;

  v12 = v7->_configDict;
  if (v12)
  {
    v13 = [(NSDictionary *)v12 objectForKeyedSubscript:*MEMORY[0x277D01B00]];
    if (v13)
    {
      v14 = v13;
      v15 = [(NSDictionary *)v7->_configDict objectForKeyedSubscript:@"InputOpsMap"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = [(NSDictionary *)v7->_configDict objectForKeyedSubscript:@"OutputMap"];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          goto LABEL_11;
        }
      }

      else
      {
      }
    }
  }

  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing config for Ures %@", v7->_configDict];
  v19 = MEMORY[0x277CCA9B8];
  v27 = @"reason";
  v28[0] = v18;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
  v21 = [v19 errorWithDomain:@"com.apple.sl" code:105 userInfo:v20];

  if (!out)
  {

LABEL_11:
    v23 = v7;
    goto LABEL_12;
  }

  v22 = v21;
  *out = v21;

  v23 = 0;
LABEL_12:

  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

@end