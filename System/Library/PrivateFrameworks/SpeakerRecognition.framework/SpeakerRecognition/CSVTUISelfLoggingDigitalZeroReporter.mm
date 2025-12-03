@interface CSVTUISelfLoggingDigitalZeroReporter
- (CSVTUISelfLoggingDigitalZeroReporter)initWithSiriSetupID:(id)d PageNumber:(int)number withPhId:(id)id withLocale:(id)locale withVTAssetConfigVersion:(id)version withSessionStatus:(int)status didDetectSpeechStart:(BOOL)start didUseTwoPassDetector:(BOOL)self0 didFirstPassTrigger:(BOOL)self1;
- (int)_getStageStatusFromTrainingManagerSessionStatus:(int)status;
- (void)logDigitalZeroDetectionComplete;
- (void)reportDigitalZerosWithAudioZeroRun:(float)run;
@end

@implementation CSVTUISelfLoggingDigitalZeroReporter

- (int)_getStageStatusFromTrainingManagerSessionStatus:(int)status
{
  if (status < 8)
  {
    return status + 1;
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

  mEMORY[0x277D01908] = [MEMORY[0x277D01908] sharedLogger];
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
  [mEMORY[0x277D01908] logSiriSetupPHSEnrollmentDigitalZeroDetectionCompletedWithSiriSetupID:siriSetupID withPageNumber:pageNumber withPhId:phId withMaxNumContinuousZeros:maxNumContinuousZeros withMaxNumAllowedContinuousZeros:maxNumAllowedContinuousZeros withIsMaxNumContinuousZerosOverThreshold:v13 withLocale:locale withVTAssetConfigVersion:vtAssetConfigVersion withStageStatus:v18 didDetectSpeechStart:? didUseTwoPassDetector:? didFirstPassTrigger:?];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)reportDigitalZerosWithAudioZeroRun:(float)run
{
  maxNumContinuousZeros = self->_maxNumContinuousZeros;
  if (maxNumContinuousZeros < run)
  {
    maxNumContinuousZeros = run;
    self->_maxNumContinuousZeros = run;
  }

  if (!self->_isMaxNumContinuousZerosOverThreshold)
  {
    self->_isMaxNumContinuousZerosOverThreshold = maxNumContinuousZeros > self->_maxNumAllowedContinuousZeros;
  }
}

- (CSVTUISelfLoggingDigitalZeroReporter)initWithSiriSetupID:(id)d PageNumber:(int)number withPhId:(id)id withLocale:(id)locale withVTAssetConfigVersion:(id)version withSessionStatus:(int)status didDetectSpeechStart:(BOOL)start didUseTwoPassDetector:(BOOL)self0 didFirstPassTrigger:(BOOL)self1
{
  dCopy = d;
  idCopy = id;
  localeCopy = locale;
  versionCopy = version;
  siriSetupID = self->_siriSetupID;
  self->_siriSetupID = dCopy;
  v21 = dCopy;

  self->_pageNumber = number;
  phId = self->_phId;
  self->_phId = idCopy;
  v23 = idCopy;

  self->_maxNumContinuousZeros = 0;
  v24 = [MEMORY[0x277D016E0] zeroFilterWindowSizeInMsForReport] / 1000.0;
  [MEMORY[0x277D016E0] inputRecordingSampleRate];
  self->_maxNumAllowedContinuousZeros = (v24 * v25);
  self->_isMaxNumContinuousZerosOverThreshold = 0;
  locale = self->_locale;
  self->_locale = localeCopy;
  v27 = localeCopy;

  vtAssetConfigVersion = self->_vtAssetConfigVersion;
  self->_vtAssetConfigVersion = versionCopy;

  self->_sessionStatus = status;
  self->_didUseTwoPassDetector = detector;
  self->_didFirstPassTrigger = trigger;
  self->_didDetectSpeechStart = start;
  return self;
}

@end