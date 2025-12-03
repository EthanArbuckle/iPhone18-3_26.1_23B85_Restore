@interface SSRSpeakerRecognitionScorer
- (BOOL)resetScorerWithModelFilePath:(id)path;
- (NSString)psrConfigFilePath;
- (NSString)psrConfigRoot;
- (SSRSpeakerRecognitionScorer)initWithProfileID:(id)d withModelFile:(id)file withConfigFile:(id)configFile withResourceFile:(id)resourceFile configData:(id)data memoryIndex:(id)index withOffsetsType:(unint64_t)type forRetraining:(BOOL)self0;
- (double)_getFloatValueForNDAPIConfigOption:(id)option defaultValue:(double)value;
- (double)_getFloatValueFromConfigurationName:(id)name defaultTo:(double)to;
- (float)analyzeSpeakerVector:(id)vector withDimensions:(unint64_t)dimensions withThresholdType:(unint64_t)type;
- (float)analyzeSuperVector:(id)vector withDimensions:(unint64_t)dimensions withThresholdType:(unint64_t)type;
- (float)normalizedScoreFromRawScore:(float)score forScoreType:(unint64_t)type;
- (float)scoreSpeakerVector:(id)vector withDimensions:(unint64_t)dimensions withThresholdType:(unint64_t)type;
- (id)_getOptionValueFromConfigurationName:(id)name;
- (id)_getStringValueFromConfigurationName:(id)name defaultTo:(id)to;
- (id)_getValueForNDAPIConfigOption:(id)option;
- (id)getSpeakerVectorAtIndex:(unint64_t)index;
- (int)_getIntValueFromConfigurationName:(id)name defaultTo:(int)to;
- (unint64_t)getSATVectorCount;
- (void)dealloc;
- (void)updateSAT;
@end

@implementation SSRSpeakerRecognitionScorer

- (id)_getValueForNDAPIConfigOption:(id)option
{
  optionCopy = option;
  v5 = optionCopy;
  novDetect = self->_novDetect;
  if (novDetect)
  {
    [optionCopy UTF8String];
    v7 = nd_getoption();
    if (v7)
    {
      novDetect = [MEMORY[0x277CCACA8] stringWithUTF8String:v7];
    }

    else
    {
      novDetect = 0;
    }
  }

  return novDetect;
}

- (double)_getFloatValueForNDAPIConfigOption:(id)option defaultValue:(double)value
{
  v5 = [(SSRSpeakerRecognitionScorer *)self _getValueForNDAPIConfigOption:option];
  v6 = v5;
  if (v5)
  {
    [v5 floatValue];
    value = v7;
  }

  return value;
}

- (id)_getStringValueFromConfigurationName:(id)name defaultTo:(id)to
{
  v21 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  toCopy = to;
  v8 = [(SSRSpeakerRecognitionScorer *)self _getOptionValueFromConfigurationName:nameCopy];
  v9 = v8;
  if (!v8)
  {
    v10 = *MEMORY[0x277D01970];
    v11 = os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT);
    v9 = toCopy;
    if (v11)
    {
      v15 = 136315650;
      v16 = "[SSRSpeakerRecognitionScorer _getStringValueFromConfigurationName:defaultTo:]";
      v17 = 2114;
      v18 = nameCopy;
      v19 = 2114;
      v20 = toCopy;
      _os_log_impl(&dword_225E12000, v10, OS_LOG_TYPE_DEFAULT, "%s ::: ndetect config does not define external parameter %{public}@, defaulting to provided value: %{public}@", &v15, 0x20u);
      v9 = toCopy;
    }
  }

  v12 = v9;

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (int)_getIntValueFromConfigurationName:(id)name defaultTo:(int)to
{
  v18 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v7 = [(SSRSpeakerRecognitionScorer *)self _getOptionValueFromConfigurationName:nameCopy];
  v8 = v7;
  if (v7)
  {
    to = [v7 intValue];
  }

  else
  {
    v9 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315650;
      v13 = "[SSRSpeakerRecognitionScorer _getIntValueFromConfigurationName:defaultTo:]";
      v14 = 2114;
      v15 = nameCopy;
      v16 = 1026;
      toCopy = to;
      _os_log_impl(&dword_225E12000, v9, OS_LOG_TYPE_DEFAULT, "%s ::: ndetect config does not define external parameter %{public}@, defaulting to provided value: %{public}d", &v12, 0x1Cu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return to;
}

- (double)_getFloatValueFromConfigurationName:(id)name defaultTo:(double)to
{
  v19 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v7 = [(SSRSpeakerRecognitionScorer *)self _getOptionValueFromConfigurationName:nameCopy];
  v8 = v7;
  if (v7)
  {
    [v7 floatValue];
    to = v9;
  }

  else
  {
    v10 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315650;
      v14 = "[SSRSpeakerRecognitionScorer _getFloatValueFromConfigurationName:defaultTo:]";
      v15 = 2114;
      v16 = nameCopy;
      v17 = 2050;
      toCopy = to;
      _os_log_impl(&dword_225E12000, v10, OS_LOG_TYPE_DEFAULT, "%s ::: ndetect config does not define external parameter %{public}@, defaulting to provided value: %{public}f", &v13, 0x20u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return to;
}

- (id)_getOptionValueFromConfigurationName:(id)name
{
  v5 = 0;
  if (name)
  {
    if (self->_novDetect)
    {
      [name UTF8String];
      v5 = nd_getoption();
      if (v5)
      {
        v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:v5];
      }
    }

    v3 = vars8;
  }

  return v5;
}

- (id)getSpeakerVectorAtIndex:(unint64_t)index
{
  indexCopy = index;
  v14 = *MEMORY[0x277D85DE8];
  if (self->_novDetect && (v4 = nd_sat_getspeakervector()) != 0)
  {
    if (*v4)
    {
      v5 = [MEMORY[0x277CBEA90] dataWithBytes:*v4 length:4 * *(v4 + 8)];
      goto LABEL_7;
    }

    v6 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "[SSRSpeakerRecognitionScorer getSpeakerVectorAtIndex:]";
      v12 = 1024;
      v13 = indexCopy;
      v9 = "%s ERR: vector data is nil for index %u";
LABEL_13:
      _os_log_error_impl(&dword_225E12000, v6, OS_LOG_TYPE_ERROR, v9, &v10, 0x12u);
    }
  }

  else
  {
    v6 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "[SSRSpeakerRecognitionScorer getSpeakerVectorAtIndex:]";
      v12 = 1024;
      v13 = indexCopy;
      v9 = "%s ERR: ndspeakervector is nil for index %u";
      goto LABEL_13;
    }
  }

  v5 = 0;
LABEL_7:
  v7 = *MEMORY[0x277D85DE8];

  return v5;
}

- (NSString)psrConfigRoot
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [(SSRSpeakerRecognitionScorer *)self _getValueForNDAPIConfigOption:@"spid_frontend_sys_conf_root_node"];
  if (!v3)
  {
    v3 = [(SSRSpeakerRecognitionScorer *)self _getValueForNDAPIConfigOption:@"td_sr_frontend_sys_conf_root_node"];
    if (!v3)
    {
      v4 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        configFilePath = self->_configFilePath;
        v8 = 136315394;
        v9 = "[SSRSpeakerRecognitionScorer psrConfigRoot]";
        v10 = 2114;
        v11 = configFilePath;
        _os_log_error_impl(&dword_225E12000, v4, OS_LOG_TYPE_ERROR, "%s ERR: td_sr_frontend_sys_conf_root_node option missing in %{public}@", &v8, 0x16u);
      }

      v3 = 0;
    }
  }

  v5 = *MEMORY[0x277D85DE8];

  return v3;
}

- (NSString)psrConfigFilePath
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [(SSRSpeakerRecognitionScorer *)self _getValueForNDAPIConfigOption:@"spid_frontend_config_file"];
  if (!v3)
  {
    v3 = [(SSRSpeakerRecognitionScorer *)self _getValueForNDAPIConfigOption:@"td_sr_frontend_config_file"];
    if (!v3)
    {
      v4 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        configFilePath = self->_configFilePath;
        v8 = 136315394;
        v9 = "[SSRSpeakerRecognitionScorer psrConfigFilePath]";
        v10 = 2114;
        v11 = configFilePath;
        _os_log_error_impl(&dword_225E12000, v4, OS_LOG_TYPE_ERROR, "%s ERR: FrontEnd Config option missing in %{public}@", &v8, 0x16u);
      }

      v3 = 0;
    }
  }

  v5 = *MEMORY[0x277D85DE8];

  return v3;
}

- (unint64_t)getSATVectorCount
{
  result = self->_novDetect;
  if (result)
  {
    v3 = nd_sat_vectorcount();
    return v3 & ~(v3 >> 31);
  }

  return result;
}

- (void)updateSAT
{
  v18 = *MEMORY[0x277D85DE8];
  if (!self->_novDetect)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SSRSpeakerRecognitionScorer.m" lineNumber:391 description:@"updateSAT called with _novDetect = nullptr"];

    novDetect = self->_novDetect;
  }

  v3 = nd_sat_update();
  if (v3)
  {
    v4 = v3;
    v5 = *MEMORY[0x277D015C8];
    if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
    {
      v6 = self->_novDetect;
      v7 = v5;
      v12 = 136315650;
      v13 = "[SSRSpeakerRecognitionScorer updateSAT]";
      v14 = 1024;
      v15 = v4;
      v16 = 2080;
      v17 = nd_error();
      _os_log_impl(&dword_225E12000, v7, OS_LOG_TYPE_DEFAULT, "%s ERR: Failed to persist via sat_update: %d, %s", &v12, 0x1Cu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (float)normalizedScoreFromRawScore:(float)score forScoreType:(unint64_t)type
{
  v35 = *MEMORY[0x277D85DE8];
  [(SSRSpeakerRecognitionScorer *)self _satScoreVTScale];
  v8 = v7;
  [(SSRSpeakerRecognitionScorer *)self _satScoreVTOffset];
  v10 = v9;
  [(SSRSpeakerRecognitionScorer *)self _satLogitCeilScore];
  v12 = v11;
  [(SSRSpeakerRecognitionScorer *)self _satLogitFloorScore];
  v14 = v13;
  if (self->_offsetsType == 1)
  {
    [(SSRSpeakerRecognitionScorer *)self _satScoreNonVTScale];
    v8 = v15;
    [(SSRSpeakerRecognitionScorer *)self _satScoreNonVTOffset];
    v10 = v16;
  }

  v17 = v10 + (v8 * score);
  if (type - 1 > 1)
  {
    if ((v12 - v14) >= 0.1)
    {
      v21 = v14;
      v20 = v12;
    }

    else
    {
      v19 = *MEMORY[0x277D01970];
      v20 = 7.0;
      v21 = -7.0;
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        v25 = 136316162;
        v26 = "[SSRSpeakerRecognitionScorer normalizedScoreFromRawScore:forScoreType:]";
        v27 = 2048;
        v28 = v12;
        v29 = 2048;
        v30 = v14;
        v31 = 2048;
        v32 = 0x401C000000000000;
        v33 = 2048;
        v34 = 0xC01C000000000000;
        _os_log_error_impl(&dword_225E12000, v19, OS_LOG_TYPE_ERROR, "%s Incorrect logitCeil %f and logitFloor %f - defaulting them to %f and %f", &v25, 0x34u);
      }
    }

    v22 = 1.0 / (v20 - v21);
    v23 = -(v21 * v22);
    result = v23 + (v22 * (v17 + v17));
    if (result < 0.0)
    {
      result = 0.0;
    }
  }

  else
  {
    result = 1.0 / (exp((v17 * -2.0)) + 1.0);
  }

  v24 = *MEMORY[0x277D85DE8];
  return result;
}

- (float)scoreSpeakerVector:(id)vector withDimensions:(unint64_t)dimensions withThresholdType:(unint64_t)type
{
  v29 = *MEMORY[0x277D85DE8];
  vectorCopy = vector;
  mEMORY[0x277D01788] = [MEMORY[0x277D01788] sharedPreferences];
  speakerIdScoreReportingType = [mEMORY[0x277D01788] speakerIdScoreReportingType];

  if (vectorCopy && dimensions)
  {
    [vectorCopy bytes];
    if (self->_novDetect)
    {
      v11 = nd_sat_analyze();
      if (v11)
      {
        v13 = *v11;
      }

      else
      {
        v17 = *MEMORY[0x277D015C8];
        v13 = -1.0;
        if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
        {
          novDetect = self->_novDetect;
          v19 = v17;
          v23 = 136315394;
          v24 = "[SSRSpeakerRecognitionScorer scoreSpeakerVector:withDimensions:withThresholdType:]";
          v25 = 2080;
          v26 = nd_error();
          _os_log_impl(&dword_225E12000, v19, OS_LOG_TYPE_DEFAULT, "%s ERR: Failed to compute SAT score: err: %s", &v23, 0x16u);
        }
      }
    }

    else
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"SSRSpeakerRecognitionScorer.m" lineNumber:332 description:@"Unexpected _novDetect is nil"];

      v13 = -1.0;
    }

    *&v12 = v13;
    [(SSRSpeakerRecognitionScorer *)self normalizedScoreFromRawScore:speakerIdScoreReportingType forScoreType:v12];
    v15 = v20;
  }

  else
  {
    v14 = *MEMORY[0x277D015C8];
    v15 = -1.0;
    if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
    {
      v23 = 136315650;
      v24 = "[SSRSpeakerRecognitionScorer scoreSpeakerVector:withDimensions:withThresholdType:]";
      v25 = 2112;
      v26 = vectorCopy;
      v27 = 2048;
      dimensionsCopy = dimensions;
      _os_log_impl(&dword_225E12000, v14, OS_LOG_TYPE_DEFAULT, "%s ERR: speakerVec invalid: %@:%lu", &v23, 0x20u);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return v15;
}

- (float)analyzeSuperVector:(id)vector withDimensions:(unint64_t)dimensions withThresholdType:(unint64_t)type
{
  v29 = *MEMORY[0x277D85DE8];
  vectorCopy = vector;
  mEMORY[0x277D01788] = [MEMORY[0x277D01788] sharedPreferences];
  speakerIdScoreReportingType = [mEMORY[0x277D01788] speakerIdScoreReportingType];

  if (vectorCopy && dimensions)
  {
    [vectorCopy bytes];
    if (self->_novDetect)
    {
      v11 = nd_sat_analyze();
      if (v11)
      {
        v13 = *v11;
      }

      else
      {
        v17 = *MEMORY[0x277D015C8];
        v13 = -1.0;
        if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
        {
          novDetect = self->_novDetect;
          v19 = v17;
          v23 = 136315394;
          v24 = "[SSRSpeakerRecognitionScorer analyzeSuperVector:withDimensions:withThresholdType:]";
          v25 = 2080;
          v26 = nd_error();
          _os_log_impl(&dword_225E12000, v19, OS_LOG_TYPE_DEFAULT, "%s ERR: Failed to compute SAT score: err: %s", &v23, 0x16u);
        }
      }
    }

    else
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"SSRSpeakerRecognitionScorer.m" lineNumber:291 description:@"Unexpected _novDetect is nil"];

      v13 = -1.0;
    }

    *&v12 = v13;
    [(SSRSpeakerRecognitionScorer *)self normalizedScoreFromRawScore:speakerIdScoreReportingType forScoreType:v12];
    v15 = v20;
  }

  else
  {
    v14 = *MEMORY[0x277D015C8];
    v15 = -1.0;
    if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
    {
      v23 = 136315650;
      v24 = "[SSRSpeakerRecognitionScorer analyzeSuperVector:withDimensions:withThresholdType:]";
      v25 = 2112;
      v26 = vectorCopy;
      v27 = 2048;
      dimensionsCopy = dimensions;
      _os_log_impl(&dword_225E12000, v14, OS_LOG_TYPE_DEFAULT, "%s ERR: superVec invalid: %@:%lu", &v23, 0x20u);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return v15;
}

- (float)analyzeSpeakerVector:(id)vector withDimensions:(unint64_t)dimensions withThresholdType:(unint64_t)type
{
  v29 = *MEMORY[0x277D85DE8];
  vectorCopy = vector;
  mEMORY[0x277D01788] = [MEMORY[0x277D01788] sharedPreferences];
  speakerIdScoreReportingType = [mEMORY[0x277D01788] speakerIdScoreReportingType];

  if (vectorCopy && dimensions)
  {
    [vectorCopy bytes];
    if (self->_novDetect)
    {
      v11 = nd_sat_analyze();
      if (v11)
      {
        v13 = *v11;
      }

      else
      {
        v17 = *MEMORY[0x277D015C8];
        v13 = -1.0;
        if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
        {
          novDetect = self->_novDetect;
          v19 = v17;
          v23 = 136315394;
          v24 = "[SSRSpeakerRecognitionScorer analyzeSpeakerVector:withDimensions:withThresholdType:]";
          v25 = 2080;
          v26 = nd_error();
          _os_log_impl(&dword_225E12000, v19, OS_LOG_TYPE_DEFAULT, "%s ERR: Failed to compute SAT score: err: %s", &v23, 0x16u);
        }
      }
    }

    else
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"SSRSpeakerRecognitionScorer.m" lineNumber:260 description:@"Unexpected _novDetect is nil"];

      v13 = -1.0;
    }

    *&v12 = v13;
    [(SSRSpeakerRecognitionScorer *)self normalizedScoreFromRawScore:speakerIdScoreReportingType forScoreType:v12];
    v15 = v20;
  }

  else
  {
    v14 = *MEMORY[0x277D015C8];
    v15 = -1.0;
    if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
    {
      v23 = 136315650;
      v24 = "[SSRSpeakerRecognitionScorer analyzeSpeakerVector:withDimensions:withThresholdType:]";
      v25 = 2112;
      v26 = vectorCopy;
      v27 = 2048;
      dimensionsCopy = dimensions;
      _os_log_impl(&dword_225E12000, v14, OS_LOG_TYPE_DEFAULT, "%s ERR: speakerVec invalid: %@:%lu", &v23, 0x20u);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)resetScorerWithModelFilePath:(id)path
{
  v22 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v5 = pathCopy;
  if (self->_novDetect)
  {
    path = [pathCopy path];
    [path UTF8String];
    v7 = nd_sat_initialize();

    if (!v7)
    {
      v11 = 1;
      goto LABEL_7;
    }

    v8 = *MEMORY[0x277D015C8];
    if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
    {
      novDetect = self->_novDetect;
      v10 = v8;
      v14 = 136315906;
      v15 = "[SSRSpeakerRecognitionScorer resetScorerWithModelFilePath:]";
      v16 = 2114;
      v17 = v5;
      v18 = 1026;
      v19 = v7;
      v20 = 2082;
      v21 = nd_error();
      _os_log_impl(&dword_225E12000, v10, OS_LOG_TYPE_DEFAULT, "%s ERR: Failed to initialize at %{public}@, err=%{public}d:%{public}s", &v14, 0x26u);
    }
  }

  v11 = 0;
LABEL_7:

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)dealloc
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D015C8];
  if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v7 = "[SSRSpeakerRecognitionScorer dealloc]";
    v8 = 2114;
    selfCopy = self;
    _os_log_impl(&dword_225E12000, v3, OS_LOG_TYPE_DEFAULT, "%s dealloc %{public}@", buf, 0x16u);
  }

  if (self->_novDetect)
  {
    nd_close();
    self->_novDetect = 0;
  }

  v5.receiver = self;
  v5.super_class = SSRSpeakerRecognitionScorer;
  [(SSRSpeakerRecognitionScorer *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (SSRSpeakerRecognitionScorer)initWithProfileID:(id)d withModelFile:(id)file withConfigFile:(id)configFile withResourceFile:(id)resourceFile configData:(id)data memoryIndex:(id)index withOffsetsType:(unint64_t)type forRetraining:(BOOL)self0
{
  v103 = *MEMORY[0x277D85DE8];
  dCopy = d;
  fileCopy = file;
  configFileCopy = configFile;
  resourceFileCopy = resourceFile;
  dataCopy = data;
  indexCopy = index;
  v87.receiver = self;
  v87.super_class = SSRSpeakerRecognitionScorer;
  v21 = [(SSRSpeakerRecognitionScorer *)&v87 init];
  v22 = v21;
  if (!v21)
  {
    goto LABEL_47;
  }

  objc_storeStrong(&v21->_configFilePath, configFile);
  objc_storeStrong(&v22->_resourceFilePath, resourceFile);
  objc_storeStrong(&v22->_modelFilePath, file);
  objc_storeStrong(&v22->_profileID, d);
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  if (!(dataCopy | indexCopy))
  {
    path = [(NSURL *)v22->_configFilePath path];
    v24 = [defaultManager fileExistsAtPath:path];

    if ((v24 & 1) == 0)
    {
      v35 = *MEMORY[0x277D015C8];
      if (!os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      configFilePath = v22->_configFilePath;
      *buf = 136315394;
      *&buf[4] = "[SSRSpeakerRecognitionScorer initWithProfileID:withModelFile:withConfigFile:withResourceFile:configData:memoryIndex:withOffsetsType:forRetraining:]";
      *&buf[12] = 2114;
      *&buf[14] = configFilePath;
      v36 = "%s ERR: Config file not found at %{public}@";
      goto LABEL_13;
    }
  }

  v25 = nd_create();
  v22->_novDetect = v25;
  if (!v25)
  {
    v35 = *MEMORY[0x277D015C8];
    if (!os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    *buf = 136315394;
    *&buf[4] = "[SSRSpeakerRecognitionScorer initWithProfileID:withModelFile:withConfigFile:withResourceFile:configData:memoryIndex:withOffsetsType:forRetraining:]";
    *&buf[12] = 2114;
    *&buf[14] = configFileCopy;
    v36 = "%s ERR: Failed to create NovDetect using %{public}@";
LABEL_13:
    v38 = v35;
    v39 = 22;
LABEL_14:
    _os_log_impl(&dword_225E12000, v38, OS_LOG_TYPE_DEFAULT, v36, buf, v39);
    goto LABEL_15;
  }

  if (!configFileCopy)
  {
    if (!dataCopy || !indexCopy)
    {
      v48 = *MEMORY[0x277D015C8];
      if (!os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      *buf = 136315138;
      *&buf[4] = "[SSRSpeakerRecognitionScorer initWithProfileID:withModelFile:withConfigFile:withResourceFile:configData:memoryIndex:withOffsetsType:forRetraining:]";
      v36 = "%s ERR: Failed to initialize _novDetect: config path or config data or memory index is nil";
      goto LABEL_43;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    buf[24] = 1;
    memoryIndexes = [indexCopy memoryIndexes];
    v84[0] = MEMORY[0x277D85DD0];
    v84[1] = 3221225472;
    v84[2] = __148__SSRSpeakerRecognitionScorer_initWithProfileID_withModelFile_withConfigFile_withResourceFile_configData_memoryIndex_withOffsetsType_forRetraining___block_invoke;
    v84[3] = &unk_278578A48;
    v86 = buf;
    v85 = v22;
    [memoryIndexes enumerateKeysAndObjectsUsingBlock:v84];

    if (*(*&buf[8] + 24))
    {
      novDetect = v22->_novDetect;
      v43 = dataCopy;
      [dataCopy cStringUsingEncoding:4];
      v44 = nd_initialize();
      if (!v44)
      {

        _Block_object_dispose(buf, 8);
        goto LABEL_27;
      }

      v45 = *MEMORY[0x277D015C8];
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v46 = v22->_novDetect;
        v47 = nd_error();
        *v97 = 136315650;
        v98 = "[SSRSpeakerRecognitionScorer initWithProfileID:withModelFile:withConfigFile:withResourceFile:configData:memoryIndex:withOffsetsType:forRetraining:]";
        v99 = 1026;
        v100 = v44;
        v101 = 2082;
        v102 = v47;
        _os_log_impl(&dword_225E12000, v45, OS_LOG_TYPE_DEFAULT, "%s ERR: Failed to initialize secure _novDetect: err=[%{public}d]:%{public}s", v97, 0x1Cu);
      }
    }

    _Block_object_dispose(buf, 8);
    goto LABEL_15;
  }

  path2 = [configFileCopy path];
  v27 = path2;
  [path2 UTF8String];
  path3 = [(NSURL *)v22->_resourceFilePath path];
  v29 = path3;
  [path3 UTF8String];
  v30 = nd_initialize();

  if (v30)
  {
    v31 = *MEMORY[0x277D015C8];
    if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
    {
      v32 = v22->_novDetect;
      v33 = v31;
      v34 = nd_error();
      *buf = 136315650;
      *&buf[4] = "[SSRSpeakerRecognitionScorer initWithProfileID:withModelFile:withConfigFile:withResourceFile:configData:memoryIndex:withOffsetsType:forRetraining:]";
      *&buf[12] = 1026;
      *&buf[14] = v30;
      *&buf[18] = 2082;
      *&buf[20] = v34;
      _os_log_impl(&dword_225E12000, v33, OS_LOG_TYPE_DEFAULT, "%s ERR: Failed to initialize _novDetect: err=[%{public}d]:%{public}s", buf, 0x1Cu);
    }

    goto LABEL_15;
  }

LABEL_27:
  defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
  path4 = [fileCopy path];
  v51 = [defaultManager2 fileExistsAtPath:path4];

  if (v51)
  {
    v22->_satModelAvailable = 1;
LABEL_33:
    v59 = v22->_novDetect;
    path5 = [fileCopy path];
    v61 = path5;
    [path5 UTF8String];
    v62 = nd_sat_initialize();

    if (v62)
    {
      v63 = *MEMORY[0x277D015C8];
      if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
      {
        v64 = v22->_novDetect;
        v65 = v63;
        v66 = nd_error();
        *buf = 136315650;
        *&buf[4] = "[SSRSpeakerRecognitionScorer initWithProfileID:withModelFile:withConfigFile:withResourceFile:configData:memoryIndex:withOffsetsType:forRetraining:]";
        *&buf[12] = 1026;
        *&buf[14] = v62;
        *&buf[18] = 2082;
        *&buf[20] = v66;
        _os_log_impl(&dword_225E12000, v65, OS_LOG_TYPE_DEFAULT, "%s ERR: Failed to initialize: err=%{public}d:%{public}s", buf, 0x1Cu);
      }

      goto LABEL_15;
    }

    v67 = v22->_novDetect;
    v68 = nd_sat_vectorcount();
    if (!retraining)
    {
      v69 = v68;
      if (v68 <= 0)
      {
        v70 = *MEMORY[0x277D015C8];
        if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "[SSRSpeakerRecognitionScorer initWithProfileID:withModelFile:withConfigFile:withResourceFile:configData:memoryIndex:withOffsetsType:forRetraining:]";
          *&buf[12] = 1024;
          *&buf[14] = v69;
          _os_log_impl(&dword_225E12000, v70, OS_LOG_TYPE_DEFAULT, "%s ERR: numVectors:%d for inference, abort", buf, 0x12u);
        }

        goto LABEL_15;
      }
    }

    v22->_offsetsType = type;
    uRLByDeletingLastPathComponent = [fileCopy URLByDeletingLastPathComponent];
    v72 = *MEMORY[0x277D015C8];
    if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
    {
      v73 = v72;
      getSATVectorCount = [(SSRSpeakerRecognitionScorer *)v22 getSATVectorCount];
      lastPathComponent = [fileCopy lastPathComponent];
      lastPathComponent2 = [uRLByDeletingLastPathComponent lastPathComponent];
      v71URLByDeletingLastPathComponent = [uRLByDeletingLastPathComponent URLByDeletingLastPathComponent];
      lastPathComponent3 = [v71URLByDeletingLastPathComponent lastPathComponent];
      *buf = 136316674;
      *&buf[4] = "[SSRSpeakerRecognitionScorer initWithProfileID:withModelFile:withConfigFile:withResourceFile:configData:memoryIndex:withOffsetsType:forRetraining:]";
      *&buf[12] = 2114;
      *&buf[14] = dCopy;
      *&buf[22] = 2114;
      *&buf[24] = v22;
      v89 = 1026;
      v90 = getSATVectorCount;
      v91 = 2114;
      v92 = lastPathComponent;
      v93 = 2114;
      v94 = lastPathComponent2;
      v95 = 2114;
      v96 = lastPathComponent3;
      _os_log_impl(&dword_225E12000, v73, OS_LOG_TYPE_DEFAULT, "%s Initialized Scorer for %{public}@ - (%{public}@, %{public}d, %{public}@, %{public}@, %{public}@)", buf, 0x44u);
    }

LABEL_47:
    v40 = v22;
    goto LABEL_48;
  }

  v52 = MEMORY[0x277D015C8];
  v53 = *MEMORY[0x277D015C8];
  if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
  {
    v54 = v53;
    path6 = [fileCopy path];
    *buf = 136315394;
    *&buf[4] = "[SSRSpeakerRecognitionScorer initWithProfileID:withModelFile:withConfigFile:withResourceFile:configData:memoryIndex:withOffsetsType:forRetraining:]";
    *&buf[12] = 2112;
    *&buf[14] = path6;
    _os_log_impl(&dword_225E12000, v54, OS_LOG_TYPE_DEFAULT, "%s %@, satModel doesn't exist", buf, 0x16u);
  }

  v22->_satModelAvailable = 0;
  if (retraining)
  {
    uRLByDeletingLastPathComponent2 = [fileCopy URLByDeletingLastPathComponent];
    path7 = [uRLByDeletingLastPathComponent2 path];
    v58 = [SSRUtils createDirectoryIfDoesNotExist:path7];

    goto LABEL_33;
  }

  v48 = *v52;
  if (os_log_type_enabled(*v52, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[SSRSpeakerRecognitionScorer initWithProfileID:withModelFile:withConfigFile:withResourceFile:configData:memoryIndex:withOffsetsType:forRetraining:]";
    v36 = "%s Bailing out since we don't have modelPath for inference";
LABEL_43:
    v38 = v48;
    v39 = 12;
    goto LABEL_14;
  }

LABEL_15:

  v40 = 0;
LABEL_48:

  v77 = *MEMORY[0x277D85DE8];
  return v40;
}

void __148__SSRSpeakerRecognitionScorer_initWithProfileID_withModelFile_withConfigFile_withResourceFile_configData_memoryIndex_withOffsetsType_forRetraining___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = v7;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v9 = *(*(a1 + 32) + 8);
    v10 = v7;
    v11 = a3;
    [v8 cStringUsingEncoding:4];
    [v11 bytes];
    [v11 length];

    if (nd_addresource())
    {
      v12 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEBUG))
      {
        v14 = 136315395;
        v15 = "[SSRSpeakerRecognitionScorer initWithProfileID:withModelFile:withConfigFile:withResourceFile:configData:memoryIndex:withOffsetsType:forRetraining:]_block_invoke";
        v16 = 2113;
        v17 = v8;
        _os_log_debug_impl(&dword_225E12000, v12, OS_LOG_TYPE_DEBUG, "%s Failed to add resource %{private}@", &v14, 0x16u);
      }

      *(*(*(a1 + 40) + 8) + 24) = 0;
      *a4 = 1;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end