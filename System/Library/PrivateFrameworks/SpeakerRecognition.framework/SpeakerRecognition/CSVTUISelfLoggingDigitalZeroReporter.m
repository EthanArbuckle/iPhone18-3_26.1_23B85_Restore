@interface CSVTUISelfLoggingDigitalZeroReporter
- (CSVTUISelfLoggingDigitalZeroReporter)initWithSiriSetupID:(id)a3 PageNumber:(int)a4 withPhId:(id)a5 withLocale:(id)a6 withVTAssetConfigVersion:(id)a7 withSessionStatus:(int)a8 didDetectSpeechStart:(BOOL)a9 didUseTwoPassDetector:(BOOL)a10 didFirstPassTrigger:(BOOL)a11;
- (int)_getStageStatusFromTrainingManagerSessionStatus:(int)a3;
- (void)logDigitalZeroDetectionComplete;
- (void)reportDigitalZerosWithAudioZeroRun:(float)a3;
@end

@implementation CSVTUISelfLoggingDigitalZeroReporter

- (int)_getStageStatusFromTrainingManagerSessionStatus:(int)a3
{
  if (a3 < 8)
  {
    return a3 + 1;
  }

  else
  {
    return 0;
  }
}

- (void)logDigitalZeroDetectionComplete
{
  v21 = *MEMORY[0x277D85DE8];
  isMaxNumContinuousZerosOverThreshold = self->_isMaxNumContinuousZerosOverThreshold;
  v4 = *MEMORY[0x277D015D8];
  v5 = os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT);
  if (isMaxNumContinuousZerosOverThreshold)
  {
    if (v5)
    {
      *buf = 136315138;
      v20 = "[CSVTUISelfLoggingDigitalZeroReporter logDigitalZeroDetectionComplete]";
      v6 = "%s CSVTUI continuousZeros detected.";
LABEL_6:
      _os_log_impl(&dword_225E12000, v4, OS_LOG_TYPE_DEFAULT, v6, buf, 0xCu);
    }
  }

  else if (v5)
  {
    *buf = 136315138;
    v20 = "[CSVTUISelfLoggingDigitalZeroReporter logDigitalZeroDetectionComplete]";
    v6 = "%s CSVTUI continuousZeros not detected.";
    goto LABEL_6;
  }

  v7 = [MEMORY[0x277D01908] sharedLogger];
  siriSetupID = self->_siriSetupID;
  pageNumber = self->_pageNumber;
  phId = self->_phId;
  maxNumContinuousZeros = self->_maxNumContinuousZeros;
  maxNumAllowedContinuousZeros = self->_maxNumAllowedContinuousZeros;
  v13 = self->_isMaxNumContinuousZerosOverThreshold;
  locale = self->_locale;
  vtAssetConfigVersion = self->_vtAssetConfigVersion;
  v16 = [(CSVTUISelfLoggingDigitalZeroReporter *)self _getStageStatusFromTrainingManagerSessionStatus:self->_sessionStatus];
  BYTE6(v18) = self->_didFirstPassTrigger;
  WORD2(v18) = *&self->_didDetectSpeechStart;
  LODWORD(v18) = v16;
  [v7 logSiriSetupPHSEnrollmentDigitalZeroDetectionCompletedWithSiriSetupID:siriSetupID withPageNumber:pageNumber withPhId:phId withMaxNumContinuousZeros:maxNumContinuousZeros withMaxNumAllowedContinuousZeros:maxNumAllowedContinuousZeros withIsMaxNumContinuousZerosOverThreshold:v13 withLocale:locale withVTAssetConfigVersion:vtAssetConfigVersion withStageStatus:v18 didDetectSpeechStart:? didUseTwoPassDetector:? didFirstPassTrigger:?];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)reportDigitalZerosWithAudioZeroRun:(float)a3
{
  maxNumContinuousZeros = self->_maxNumContinuousZeros;
  if (maxNumContinuousZeros < a3)
  {
    maxNumContinuousZeros = a3;
    self->_maxNumContinuousZeros = a3;
  }

  if (!self->_isMaxNumContinuousZerosOverThreshold)
  {
    self->_isMaxNumContinuousZerosOverThreshold = maxNumContinuousZeros > self->_maxNumAllowedContinuousZeros;
  }
}

- (CSVTUISelfLoggingDigitalZeroReporter)initWithSiriSetupID:(id)a3 PageNumber:(int)a4 withPhId:(id)a5 withLocale:(id)a6 withVTAssetConfigVersion:(id)a7 withSessionStatus:(int)a8 didDetectSpeechStart:(BOOL)a9 didUseTwoPassDetector:(BOOL)a10 didFirstPassTrigger:(BOOL)a11
{
  v16 = a3;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  siriSetupID = self->_siriSetupID;
  self->_siriSetupID = v16;
  v21 = v16;

  self->_pageNumber = a4;
  phId = self->_phId;
  self->_phId = v17;
  v23 = v17;

  self->_maxNumContinuousZeros = 0;
  v24 = [MEMORY[0x277D016E0] zeroFilterWindowSizeInMsForReport] / 1000.0;
  [MEMORY[0x277D016E0] inputRecordingSampleRate];
  self->_maxNumAllowedContinuousZeros = (v24 * v25);
  self->_isMaxNumContinuousZerosOverThreshold = 0;
  locale = self->_locale;
  self->_locale = v18;
  v27 = v18;

  vtAssetConfigVersion = self->_vtAssetConfigVersion;
  self->_vtAssetConfigVersion = v19;

  self->_sessionStatus = a8;
  self->_didUseTwoPassDetector = a10;
  self->_didFirstPassTrigger = a11;
  self->_didDetectSpeechStart = a9;
  return self;
}

@end