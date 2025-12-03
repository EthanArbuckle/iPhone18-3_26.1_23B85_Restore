@interface VTAnalyzerNDAPI
- (BOOL)_getBooleanValueFromConfigurationName:(id)name defaultTo:(BOOL)to;
- (BOOL)initializeSAT:(id)t;
- (VTAnalyzerNDAPI)initWithConfigPath:(id)path resourcePath:(id)resourcePath;
- (const)_getOptionValueFromConfigurationName:(id)name;
- (const)analyzeSAT:(const float *)t size:(unsigned int)size;
- (const)getAnalyzedResult;
- (const)getAnalyzedResult:(unsigned int)result;
- (const)getScoreSuperVector:(const float *)vector size:(unsigned int)size;
- (const)getSuperVectorWithEndPoint:(unsigned int)point;
- (double)_getFloatValueFromConfigurationName:(id)name defaultTo:(double)to;
- (double)getCombinedLoggingThreshold;
- (double)getCombinedSecondChanceThreshold;
- (double)getCombinedTriggerThreshold;
- (id)_decodeJson:(id)json;
- (id)_getNumberForKey:(id)key category:(id)category default:(id)default;
- (id)_getStringValueFromConfigurationName:(id)name defaultTo:(id)to;
- (int)_getIntValueFromConfigurationName:(id)name defaultTo:(int)to;
- (int)getSATVectorCount;
- (void)analyzeWavData:(const signed __int16 *)data length:(int)length;
- (void)dealloc;
- (void)deleteVectorIndex:(int)index;
- (void)reset;
- (void)resetBest;
- (void)updateSAT;
@end

@implementation VTAnalyzerNDAPI

- (id)_decodeJson:(id)json
{
  v19 = *MEMORY[0x277D85DE8];
  jsonCopy = json;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [defaultManager fileExistsAtPath:jsonCopy];

  if (v5)
  {
    v6 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:jsonCopy];
    if (!v6)
    {
      v12 = VTLogContextFacilityVoiceTrigger;
      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v18 = jsonCopy;
        _os_log_error_impl(&dword_223A31000, v12, OS_LOG_TYPE_ERROR, "Cannot read configuration file : %{public}@", buf, 0xCu);
      }

      v11 = 0;
      goto LABEL_19;
    }

    v16 = 0;
    v7 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v6 options:0 error:&v16];
    v8 = v16;
    if (v8)
    {
      v9 = VTLogContextFacilityVoiceTrigger;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        localizedDescription = [v8 localizedDescription];
        *buf = 138543362;
        v18 = localizedDescription;
        _os_log_error_impl(&dword_223A31000, v9, OS_LOG_TYPE_ERROR, "Cannot decode configuration json file : %{public}@", buf, 0xCu);
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v7;
LABEL_18:

LABEL_19:
        goto LABEL_20;
      }

      v13 = VTLogContextFacilityVoiceTrigger;
      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_223A31000, v13, OS_LOG_TYPE_ERROR, "Configuration json file is not expected format", buf, 2u);
      }
    }

    v11 = 0;
    goto LABEL_18;
  }

  v10 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v18 = jsonCopy;
    _os_log_error_impl(&dword_223A31000, v10, OS_LOG_TYPE_ERROR, "Configuration file is not exists : %{public}@", buf, 0xCu);
  }

  v11 = 0;
LABEL_20:

  return v11;
}

- (id)_getNumberForKey:(id)key category:(id)category default:(id)default
{
  v23 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  categoryCopy = category;
  defaultCopy = default;
  decodedInfo = self->_decodedInfo;
  if (decodedInfo && (-[NSDictionary objectForKeyedSubscript:](decodedInfo, "objectForKeyedSubscript:", categoryCopy), (v12 = objc_claimAutoreleasedReturnValue()) != 0) && (-[NSDictionary objectForKeyedSubscript:](self->_decodedInfo, "objectForKeyedSubscript:", categoryCopy), v13 = objc_claimAutoreleasedReturnValue(), [v13 objectForKeyedSubscript:keyCopy], v14 = objc_claimAutoreleasedReturnValue(), v14, v13, v12, v14))
  {
    v15 = [(NSDictionary *)self->_decodedInfo objectForKeyedSubscript:categoryCopy];
    v16 = [v15 objectForKeyedSubscript:keyCopy];
  }

  else
  {
    v17 = VTLogContextFacilityVoiceTrigger;
    v16 = defaultCopy;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
    {
      v19 = 138543618;
      v20 = categoryCopy;
      v21 = 2114;
      v22 = keyCopy;
      _os_log_error_impl(&dword_223A31000, v17, OS_LOG_TYPE_ERROR, "Cannot access to %{public}@ %{public}@ using default value", &v19, 0x16u);
      v16 = defaultCopy;
    }
  }

  return v16;
}

- (const)_getOptionValueFromConfigurationName:(id)name
{
  nameCopy = name;
  novDetect = self->_novDetect;
  if (novDetect)
  {
    IntNovDetect::getoption(novDetect, [nameCopy UTF8String]);
  }

  return 0;
}

- (BOOL)_getBooleanValueFromConfigurationName:(id)name defaultTo:(BOOL)to
{
  toCopy = to;
  v16 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v7 = [(VTAnalyzerNDAPI *)self _getOptionValueFromConfigurationName:nameCopy];
  if (v7)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:v7];
    LOBYTE(toCopy) = [v8 BOOLValue];
  }

  else
  {
    v9 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      v10 = @"NO";
      if (toCopy)
      {
        v10 = @"YES";
      }

      v12 = 138543618;
      v13 = nameCopy;
      v14 = 2114;
      v15 = v10;
      _os_log_impl(&dword_223A31000, v9, OS_LOG_TYPE_DEFAULT, "::: ndetect config does not define external parameter %{public}@, defaulting to provided value: %{public}@", &v12, 0x16u);
    }
  }

  return toCopy;
}

- (double)_getFloatValueFromConfigurationName:(id)name defaultTo:(double)to
{
  v16 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v7 = [(VTAnalyzerNDAPI *)self _getOptionValueFromConfigurationName:nameCopy];
  if (v7)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:v7];
    [v8 floatValue];
    to = v9;
  }

  else
  {
    v10 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543618;
      v13 = nameCopy;
      v14 = 2050;
      toCopy = to;
      _os_log_impl(&dword_223A31000, v10, OS_LOG_TYPE_DEFAULT, "::: ndetect config does not define external parameter %{public}@, defaulting to provided value: %{public}f", &v12, 0x16u);
    }
  }

  return to;
}

- (int)_getIntValueFromConfigurationName:(id)name defaultTo:(int)to
{
  v15 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v7 = [(VTAnalyzerNDAPI *)self _getOptionValueFromConfigurationName:nameCopy];
  if (v7)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:v7];
    to = [v8 intValue];
  }

  else
  {
    v9 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543618;
      v12 = nameCopy;
      v13 = 1026;
      toCopy = to;
      _os_log_impl(&dword_223A31000, v9, OS_LOG_TYPE_DEFAULT, "::: ndetect config does not define external parameter %{public}@, defaulting to provided value: %{public}d", &v11, 0x12u);
    }
  }

  return to;
}

- (id)_getStringValueFromConfigurationName:(id)name defaultTo:(id)to
{
  v17 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  toCopy = to;
  v8 = [(VTAnalyzerNDAPI *)self _getOptionValueFromConfigurationName:nameCopy];
  if (v8)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:v8];
  }

  else
  {
    v10 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543618;
      v14 = nameCopy;
      v15 = 2114;
      v16 = toCopy;
      _os_log_impl(&dword_223A31000, v10, OS_LOG_TYPE_DEFAULT, "::: ndetect config does not define external parameter %{public}@, defaulting to provided value: %{public}@", &v13, 0x16u);
    }

    v9 = toCopy;
  }

  v11 = v9;

  return v11;
}

- (double)getCombinedLoggingThreshold
{
  v2 = [(VTAnalyzerNDAPI *)self _getNumberForKey:@"loggingThreshold" category:@"voiceTriggerSecondPass" default:&unk_2837155C8];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (double)getCombinedSecondChanceThreshold
{
  v2 = [(VTAnalyzerNDAPI *)self _getNumberForKey:@"2ndChanceThreshold" category:@"voiceTriggerSecondPass" default:&unk_2837155C8];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (double)getCombinedTriggerThreshold
{
  v2 = [(VTAnalyzerNDAPI *)self _getNumberForKey:@"threshold" category:@"voiceTriggerSecondPass" default:&unk_2837155C8];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (int)getSATVectorCount
{
  v7 = *MEMORY[0x277D85DE8];
  novDetect = self->_novDetect;
  if (!novDetect)
  {
    return -1;
  }

  if (*novDetect != -1838836561)
  {
    v5 = "Invalid NovDetect Object Signature";
    goto LABEL_10;
  }

  if (novDetect[3] != 1)
  {
    v5 = "NovDetect: sat_vectorcount() can only be called after sat_initialize()";
LABEL_10:
    Error::chuck(v5, a2);
  }

  result = novDetect[617];
  if (*(novDetect + 40) == 1)
  {
    v4 = novDetect[617];
    v6[0] = 6;
    (*(*(novDetect + 2) + 64))(novDetect + 4, "all ok", v6);
    *(novDetect + 40) = 0;
    return v4;
  }

  return result;
}

- (void)deleteVectorIndex:(int)index
{
  novDetect = self->_novDetect;
  if (novDetect)
  {
    IntNovDetect::sat_deletevector(novDetect, *&index);
  }
}

- (const)getScoreSuperVector:(const float *)vector size:(unsigned int)size
{
  result = self->_novDetect;
  if (result)
  {
    return IntNovDetect::scoresupervector(result, vector, *&size);
  }

  return result;
}

- (void)updateSAT
{
  novDetect = self->_novDetect;
  if (novDetect)
  {
    IntNovDetect::sat_update(novDetect, a2);
  }
}

- (const)analyzeSAT:(const float *)t size:(unsigned int)size
{
  v9 = *MEMORY[0x277D85DE8];
  novDetect = self->_novDetect;
  if (!novDetect)
  {
    return 0;
  }

  if (*novDetect != -1838836561)
  {
    v7 = "Invalid NovDetect Object Signature";
    goto LABEL_8;
  }

  if (*(novDetect + 3) != 1)
  {
    v7 = "NovDetect: sat_analyze() can only be called after sat_initialize()";
LABEL_8:
    Error::chuck(v7, a2, t, *&size);
  }

  *(novDetect + 710) = 0;
  TSSATScorer::score((novDetect + 2344), t, *&size);
  result = (novDetect + 2840);
  *(novDetect + 710) = v6;
  if (novDetect[40] == 1)
  {
    v8 = 6;
    (*(*(novDetect + 2) + 64))(novDetect + 16, "all ok", &v8);
    novDetect[40] = 0;
    return (novDetect + 2840);
  }

  return result;
}

- (const)getSuperVectorWithEndPoint:(unsigned int)point
{
  result = self->_novDetect;
  if (result)
  {
    return IntNovDetect::getsupervector(result, *&point, v3);
  }

  return result;
}

- (BOOL)initializeSAT:(id)t
{
  tCopy = t;
  novDetect = self->_novDetect;
  if (novDetect)
  {
    IntNovDetect::sat_initialize(novDetect, [tCopy cStringUsingEncoding:4]);
  }

  return 0;
}

- (const)getAnalyzedResult:(unsigned int)result
{
  v10 = *MEMORY[0x277D85DE8];
  novDetect = self->_novDetect;
  if (!novDetect)
  {
    return 0;
  }

  if (*novDetect != -1838836561)
  {
    v8 = "Invalid NovDetect Object Signature";
    goto LABEL_11;
  }

  if (novDetect[1] != 1)
  {
    v8 = "NovDetect: phrasecount() can only be called after initialize()";
LABEL_11:
    Error::chuck(v8, a2, *&result);
  }

  v4 = self->_novDetect;
  if (*(novDetect + 40) == 1)
  {
    v6 = *&result;
    v9 = 6;
    (*(*(novDetect + 2) + 64))(novDetect + 4, "all ok", &v9);
    *(novDetect + 40) = 0;
    v4 = self->_novDetect;
    *&result = v6;
  }

  if (novDetect[794] < 1)
  {
    return IntNovDetect::getresults(v4, a2);
  }

  else
  {
    return IntNovDetect::getphraseresults(v4, *&result);
  }
}

- (const)getAnalyzedResult
{
  result = self->_novDetect;
  if (result)
  {
    return IntNovDetect::getresults(result, a2);
  }

  return result;
}

- (void)analyzeWavData:(const signed __int16 *)data length:(int)length
{
  novDetect = self->_novDetect;
  if (novDetect)
  {
    IntNovDetect::wavedata(novDetect, data, length);
  }
}

- (void)resetBest
{
  novDetect = self->_novDetect;
  if (novDetect)
  {
    IntNovDetect::resetbest(novDetect, a2);
  }
}

- (void)reset
{
  novDetect = self->_novDetect;
  if (novDetect)
  {
    IntNovDetect::reset(novDetect, a2);
  }
}

- (void)dealloc
{
  novDetect = self->_novDetect;
  if (novDetect)
  {
    IntNovDetect::~IntNovDetect(novDetect);
    MEMORY[0x223DF1D20]();
  }

  v4.receiver = self;
  v4.super_class = VTAnalyzerNDAPI;
  [(VTAnalyzerNDAPI *)&v4 dealloc];
}

- (VTAnalyzerNDAPI)initWithConfigPath:(id)path resourcePath:(id)resourcePath
{
  v11 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  resourcePathCopy = resourcePath;
  v10.receiver = self;
  v10.super_class = VTAnalyzerNDAPI;
  if ([(VTAnalyzerNDAPI *)&v10 init])
  {
    operator new();
  }

  v8 = 0;

  return v8;
}

@end