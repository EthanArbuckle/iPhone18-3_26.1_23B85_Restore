@interface CSAlgRemoteAudioOutput
- (CSAlgRemoteAudioOutput)initWithTimestamp:(unint64_t)timestamp maxRMS:(float)s companionAOPTriggerTs:(unint64_t)ts allCrashesMaxEnergy:(float)energy allCrashesMaxChaos:(float)chaos allCrashesMaxSaturation:(float)saturation allCrashesEnergyMet:(BOOL)met allCrashesChaosMet:(BOOL)self0 allCrashesSaturationMet:(BOOL)self1 allCrashesChaosOrSaturationMet:(BOOL)self2 allCrashesEnergyAndChaosOrSaturationMet:(BOOL)self3 allCrashesPassThru:(BOOL)self4 rolloverCrashesMaxEnergy:(float)self5 rolloverCrashesMaxChaos:(float)self6 rolloverCrashesMaxSaturation:(float)self7 rolloverCrashesEnergyMet:(BOOL)self8 rolloverCrashesChaosMet:(BOOL)self9 rolloverCrashesSaturationMet:(BOOL)crashesSaturationMet rolloverCrashesChaosOrSaturationMet:(BOOL)crashesChaosOrSaturationMet rolloverCrashesEnergyAndChaosOrSaturationMet:(BOOL)andChaosOrSaturationMet rolloverCrashesPassThru:(BOOL)passThru;
- (id).cxx_construct;
@end

@implementation CSAlgRemoteAudioOutput

- (CSAlgRemoteAudioOutput)initWithTimestamp:(unint64_t)timestamp maxRMS:(float)s companionAOPTriggerTs:(unint64_t)ts allCrashesMaxEnergy:(float)energy allCrashesMaxChaos:(float)chaos allCrashesMaxSaturation:(float)saturation allCrashesEnergyMet:(BOOL)met allCrashesChaosMet:(BOOL)self0 allCrashesSaturationMet:(BOOL)self1 allCrashesChaosOrSaturationMet:(BOOL)self2 allCrashesEnergyAndChaosOrSaturationMet:(BOOL)self3 allCrashesPassThru:(BOOL)self4 rolloverCrashesMaxEnergy:(float)self5 rolloverCrashesMaxChaos:(float)self6 rolloverCrashesMaxSaturation:(float)self7 rolloverCrashesEnergyMet:(BOOL)self8 rolloverCrashesChaosMet:(BOOL)self9 rolloverCrashesSaturationMet:(BOOL)crashesSaturationMet rolloverCrashesChaosOrSaturationMet:(BOOL)crashesChaosOrSaturationMet rolloverCrashesEnergyAndChaosOrSaturationMet:(BOOL)andChaosOrSaturationMet rolloverCrashesPassThru:(BOOL)passThru
{
  v36.receiver = self;
  v36.super_class = CSAlgRemoteAudioOutput;
  result = [(CSAlgRemoteAudioOutput *)&v36 init:timestamp];
  if (result)
  {
    result->_c_struct.timestamp = timestamp;
    result->_c_struct.maxRMS = s;
    result->_c_struct.allCrashes.maxEnergy = energy;
    result->_c_struct.allCrashes.maxChaos = chaos;
    result->_c_struct.allCrashes.maxSaturation = saturation;
    result->_c_struct.allCrashes.energyMet = met;
    result->_c_struct.allCrashes.chaosMet = chaosMet;
    result->_c_struct.allCrashes.saturationMet = saturationMet;
    result->_c_struct.allCrashes.chaosOrSaturationMet = orSaturationMet;
    result->_c_struct.allCrashes.energyAndChaosOrSaturationMet = chaosOrSaturationMet;
    result->_c_struct.allCrashes.passThru = thru;
    result->_c_struct.rolloverCrashes.maxEnergy = maxEnergy;
    result->_c_struct.rolloverCrashes.maxChaos = maxChaos;
    result->_c_struct.rolloverCrashes.maxSaturation = maxSaturation;
    result->_c_struct.rolloverCrashes.energyMet = energyMet;
    result->_c_struct.rolloverCrashes.chaosMet = crashesChaosMet;
    result->_c_struct.rolloverCrashes.saturationMet = crashesSaturationMet;
    result->_c_struct.rolloverCrashes.chaosOrSaturationMet = crashesChaosOrSaturationMet;
    result->_c_struct.rolloverCrashes.energyAndChaosOrSaturationMet = andChaosOrSaturationMet;
    result->_c_struct.rolloverCrashes.passThru = passThru;
  }

  return result;
}

- (id).cxx_construct
{
  *(self + 5) = 0;
  *(self + 6) = 0;
  *(self + 28) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 30) = 0;
  return self;
}

@end