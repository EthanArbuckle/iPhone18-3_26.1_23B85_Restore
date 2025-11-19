@interface SSRSpeakerRecognitionScorer
- (BOOL)resetScorerWithModelFilePath:(id)a3;
- (NSString)psrConfigFilePath;
- (NSString)psrConfigRoot;
- (SSRSpeakerRecognitionScorer)initWithProfileID:(id)a3 withModelFile:(id)a4 withConfigFile:(id)a5 withResourceFile:(id)a6 configData:(id)a7 memoryIndex:(id)a8 withOffsetsType:(unint64_t)a9 forRetraining:(BOOL)a10;
- (double)_getFloatValueForNDAPIConfigOption:(id)a3 defaultValue:(double)a4;
- (double)_getFloatValueFromConfigurationName:(id)a3 defaultTo:(double)a4;
- (float)analyzeSpeakerVector:(id)a3 withDimensions:(unint64_t)a4 withThresholdType:(unint64_t)a5;
- (float)analyzeSuperVector:(id)a3 withDimensions:(unint64_t)a4 withThresholdType:(unint64_t)a5;
- (float)normalizedScoreFromRawScore:(float)a3 forScoreType:(unint64_t)a4;
- (float)scoreSpeakerVector:(id)a3 withDimensions:(unint64_t)a4 withThresholdType:(unint64_t)a5;
- (id)_getOptionValueFromConfigurationName:(id)a3;
- (id)_getStringValueFromConfigurationName:(id)a3 defaultTo:(id)a4;
- (id)_getValueForNDAPIConfigOption:(id)a3;
- (id)getSpeakerVectorAtIndex:(unint64_t)a3;
- (int)_getIntValueFromConfigurationName:(id)a3 defaultTo:(int)a4;
- (unint64_t)getSATVectorCount;
- (void)dealloc;
- (void)updateSAT;
@end

@implementation SSRSpeakerRecognitionScorer

- (id)_getValueForNDAPIConfigOption:(id)a3
{
  v4 = a3;
  v5 = v4;
  novDetect = self->_novDetect;
  if (novDetect)
  {
    [v4 UTF8String];
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

- (double)_getFloatValueForNDAPIConfigOption:(id)a3 defaultValue:(double)a4
{
  v5 = [(SSRSpeakerRecognitionScorer *)self _getValueForNDAPIConfigOption:a3];
  v6 = v5;
  if (v5)
  {
    [v5 floatValue];
    a4 = v7;
  }

  return a4;
}

- (id)_getStringValueFromConfigurationName:(id)a3 defaultTo:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(SSRSpeakerRecognitionScorer *)self _getOptionValueFromConfigurationName:v6];
  v9 = v8;
  if (!v8)
  {
    v10 = *MEMORY[0x277D01970];
    v11 = os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT);
    v9 = v7;
    if (v11)
    {
      v15 = 136315650;
      v16 = "[SSRSpeakerRecognitionScorer _getStringValueFromConfigurationName:defaultTo:]";
      v17 = 2114;
      v18 = v6;
      v19 = 2114;
      v20 = v7;
      _os_log_impl(&dword_225E12000, v10, OS_LOG_TYPE_DEFAULT, "%s ::: ndetect config does not define external parameter %{public}@, defaulting to provided value: %{public}@", &v15, 0x20u);
      v9 = v7;
    }
  }

  v12 = v9;

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (int)_getIntValueFromConfigurationName:(id)a3 defaultTo:(int)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(SSRSpeakerRecognitionScorer *)self _getOptionValueFromConfigurationName:v6];
  v8 = v7;
  if (v7)
  {
    a4 = [v7 intValue];
  }

  else
  {
    v9 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315650;
      v13 = "[SSRSpeakerRecognitionScorer _getIntValueFromConfigurationName:defaultTo:]";
      v14 = 2114;
      v15 = v6;
      v16 = 1026;
      v17 = a4;
      _os_log_impl(&dword_225E12000, v9, OS_LOG_TYPE_DEFAULT, "%s ::: ndetect config does not define external parameter %{public}@, defaulting to provided value: %{public}d", &v12, 0x1Cu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return a4;
}

- (double)_getFloatValueFromConfigurationName:(id)a3 defaultTo:(double)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(SSRSpeakerRecognitionScorer *)self _getOptionValueFromConfigurationName:v6];
  v8 = v7;
  if (v7)
  {
    [v7 floatValue];
    a4 = v9;
  }

  else
  {
    v10 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315650;
      v14 = "[SSRSpeakerRecognitionScorer _getFloatValueFromConfigurationName:defaultTo:]";
      v15 = 2114;
      v16 = v6;
      v17 = 2050;
      v18 = a4;
      _os_log_impl(&dword_225E12000, v10, OS_LOG_TYPE_DEFAULT, "%s ::: ndetect config does not define external parameter %{public}@, defaulting to provided value: %{public}f", &v13, 0x20u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return a4;
}

- (id)_getOptionValueFromConfigurationName:(id)a3
{
  v5 = 0;
  if (a3)
  {
    if (self->_novDetect)
    {
      [a3 UTF8String];
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

- (id)getSpeakerVectorAtIndex:(unint64_t)a3
{
  v3 = a3;
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
      v13 = v3;
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
      v13 = v3;
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
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"SSRSpeakerRecognitionScorer.m" lineNumber:391 description:@"updateSAT called with _novDetect = nullptr"];

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

- (float)normalizedScoreFromRawScore:(float)a3 forScoreType:(unint64_t)a4
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

  v17 = v10 + (v8 * a3);
  if (a4 - 1 > 1)
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

- (float)scoreSpeakerVector:(id)a3 withDimensions:(unint64_t)a4 withThresholdType:(unint64_t)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [MEMORY[0x277D01788] sharedPreferences];
  v10 = [v9 speakerIdScoreReportingType];

  if (v8 && a4)
  {
    [v8 bytes];
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
      v16 = [MEMORY[0x277CCA890] currentHandler];
      [v16 handleFailureInMethod:a2 object:self file:@"SSRSpeakerRecognitionScorer.m" lineNumber:332 description:@"Unexpected _novDetect is nil"];

      v13 = -1.0;
    }

    *&v12 = v13;
    [(SSRSpeakerRecognitionScorer *)self normalizedScoreFromRawScore:v10 forScoreType:v12];
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
      v26 = v8;
      v27 = 2048;
      v28 = a4;
      _os_log_impl(&dword_225E12000, v14, OS_LOG_TYPE_DEFAULT, "%s ERR: speakerVec invalid: %@:%lu", &v23, 0x20u);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return v15;
}

- (float)analyzeSuperVector:(id)a3 withDimensions:(unint64_t)a4 withThresholdType:(unint64_t)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [MEMORY[0x277D01788] sharedPreferences];
  v10 = [v9 speakerIdScoreReportingType];

  if (v8 && a4)
  {
    [v8 bytes];
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
      v16 = [MEMORY[0x277CCA890] currentHandler];
      [v16 handleFailureInMethod:a2 object:self file:@"SSRSpeakerRecognitionScorer.m" lineNumber:291 description:@"Unexpected _novDetect is nil"];

      v13 = -1.0;
    }

    *&v12 = v13;
    [(SSRSpeakerRecognitionScorer *)self normalizedScoreFromRawScore:v10 forScoreType:v12];
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
      v26 = v8;
      v27 = 2048;
      v28 = a4;
      _os_log_impl(&dword_225E12000, v14, OS_LOG_TYPE_DEFAULT, "%s ERR: superVec invalid: %@:%lu", &v23, 0x20u);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return v15;
}

- (float)analyzeSpeakerVector:(id)a3 withDimensions:(unint64_t)a4 withThresholdType:(unint64_t)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [MEMORY[0x277D01788] sharedPreferences];
  v10 = [v9 speakerIdScoreReportingType];

  if (v8 && a4)
  {
    [v8 bytes];
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
      v16 = [MEMORY[0x277CCA890] currentHandler];
      [v16 handleFailureInMethod:a2 object:self file:@"SSRSpeakerRecognitionScorer.m" lineNumber:260 description:@"Unexpected _novDetect is nil"];

      v13 = -1.0;
    }

    *&v12 = v13;
    [(SSRSpeakerRecognitionScorer *)self normalizedScoreFromRawScore:v10 forScoreType:v12];
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
      v26 = v8;
      v27 = 2048;
      v28 = a4;
      _os_log_impl(&dword_225E12000, v14, OS_LOG_TYPE_DEFAULT, "%s ERR: speakerVec invalid: %@:%lu", &v23, 0x20u);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)resetScorerWithModelFilePath:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (self->_novDetect)
  {
    v6 = [v4 path];
    [v6 UTF8String];
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
    v9 = self;
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

- (SSRSpeakerRecognitionScorer)initWithProfileID:(id)a3 withModelFile:(id)a4 withConfigFile:(id)a5 withResourceFile:(id)a6 configData:(id)a7 memoryIndex:(id)a8 withOffsetsType:(unint64_t)a9 forRetraining:(BOOL)a10
{
  v103 = *MEMORY[0x277D85DE8];
  v83 = a3;
  v17 = a4;
  v18 = a5;
  v82 = a6;
  v19 = a7;
  v20 = a8;
  v87.receiver = self;
  v87.super_class = SSRSpeakerRecognitionScorer;
  v21 = [(SSRSpeakerRecognitionScorer *)&v87 init];
  v22 = v21;
  if (!v21)
  {
    goto LABEL_47;
  }

  objc_storeStrong(&v21->_configFilePath, a5);
  objc_storeStrong(&v22->_resourceFilePath, a6);
  objc_storeStrong(&v22->_modelFilePath, a4);
  objc_storeStrong(&v22->_profileID, a3);
  v81 = [MEMORY[0x277CCAA00] defaultManager];
  if (!(v19 | v20))
  {
    v23 = [(NSURL *)v22->_configFilePath path];
    v24 = [v81 fileExistsAtPath:v23];

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
    *&buf[14] = v18;
    v36 = "%s ERR: Failed to create NovDetect using %{public}@";
LABEL_13:
    v38 = v35;
    v39 = 22;
LABEL_14:
    _os_log_impl(&dword_225E12000, v38, OS_LOG_TYPE_DEFAULT, v36, buf, v39);
    goto LABEL_15;
  }

  if (!v18)
  {
    if (!v19 || !v20)
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
    v41 = [v20 memoryIndexes];
    v84[0] = MEMORY[0x277D85DD0];
    v84[1] = 3221225472;
    v84[2] = __148__SSRSpeakerRecognitionScorer_initWithProfileID_withModelFile_withConfigFile_withResourceFile_configData_memoryIndex_withOffsetsType_forRetraining___block_invoke;
    v84[3] = &unk_278578A48;
    v86 = buf;
    v85 = v22;
    [v41 enumerateKeysAndObjectsUsingBlock:v84];

    if (*(*&buf[8] + 24))
    {
      novDetect = v22->_novDetect;
      v43 = v19;
      [v19 cStringUsingEncoding:4];
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

  v26 = [v18 path];
  v27 = v26;
  [v26 UTF8String];
  v28 = [(NSURL *)v22->_resourceFilePath path];
  v29 = v28;
  [v28 UTF8String];
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
  v49 = [MEMORY[0x277CCAA00] defaultManager];
  v50 = [v17 path];
  v51 = [v49 fileExistsAtPath:v50];

  if (v51)
  {
    v22->_satModelAvailable = 1;
LABEL_33:
    v59 = v22->_novDetect;
    v60 = [v17 path];
    v61 = v60;
    [v60 UTF8String];
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
    if (!a10)
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

    v22->_offsetsType = a9;
    v71 = [v17 URLByDeletingLastPathComponent];
    v72 = *MEMORY[0x277D015C8];
    if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
    {
      v73 = v72;
      v79 = [(SSRSpeakerRecognitionScorer *)v22 getSATVectorCount];
      v74 = [v17 lastPathComponent];
      v80 = [v71 lastPathComponent];
      v75 = [v71 URLByDeletingLastPathComponent];
      v76 = [v75 lastPathComponent];
      *buf = 136316674;
      *&buf[4] = "[SSRSpeakerRecognitionScorer initWithProfileID:withModelFile:withConfigFile:withResourceFile:configData:memoryIndex:withOffsetsType:forRetraining:]";
      *&buf[12] = 2114;
      *&buf[14] = v83;
      *&buf[22] = 2114;
      *&buf[24] = v22;
      v89 = 1026;
      v90 = v79;
      v91 = 2114;
      v92 = v74;
      v93 = 2114;
      v94 = v80;
      v95 = 2114;
      v96 = v76;
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
    v55 = [v17 path];
    *buf = 136315394;
    *&buf[4] = "[SSRSpeakerRecognitionScorer initWithProfileID:withModelFile:withConfigFile:withResourceFile:configData:memoryIndex:withOffsetsType:forRetraining:]";
    *&buf[12] = 2112;
    *&buf[14] = v55;
    _os_log_impl(&dword_225E12000, v54, OS_LOG_TYPE_DEFAULT, "%s %@, satModel doesn't exist", buf, 0x16u);
  }

  v22->_satModelAvailable = 0;
  if (a10)
  {
    v56 = [v17 URLByDeletingLastPathComponent];
    v57 = [v56 path];
    v58 = [SSRUtils createDirectoryIfDoesNotExist:v57];

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