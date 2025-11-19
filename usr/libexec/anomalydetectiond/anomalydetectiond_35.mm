uint64_t sub_100180708(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  if (v3 == v4)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    v6 = *v3++;
    v5 ^= CMMsl::WifiScanEntry::hash_value(v6);
  }

  while (v3 != v4);
  return v5;
}

uint64_t sub_100180764(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  if (v3 == v4)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    v6 = *v3++;
    v5 ^= CMMsl::WorkoutPriorInformation::hash_value(v6);
  }

  while (v3 != v4);
  return v5;
}

uint64_t CMMsl::Item::makeGyroBiasCorrection(uint64_t this)
{
  if (!*(this + 1360))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeGyroBiasConstraints(uint64_t this)
{
  if (!*(this + 1352))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeGravityCorrection(uint64_t this)
{
  if (!*(this + 1328))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeGravityConstraints(uint64_t this)
{
  if (!*(this + 1320))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeCompassCorrection(uint64_t this)
{
  if (!*(this + 768))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeCompassConstraints(uint64_t this)
{
  if (!*(this + 760))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeCourseCorrection(uint64_t this)
{
  if (!*(this + 816))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeCourseConstraints(uint64_t this)
{
  if (!*(this + 808))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeIntersiloNSCodingData(uint64_t this)
{
  if (!*(this + 1672))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeDeviceMotionCovariance(uint64_t this)
{
  if (!*(this + 856))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeAccessoryAccel(uint64_t this)
{
  if (!*(this + 112))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeAccessoryGyro(uint64_t this)
{
  if (!*(this + 176))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeAccessoryProx(uint64_t this)
{
  if (!*(this + 256))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeWorkoutRecorderAccel(uint64_t this)
{
  if (!*(this + 3720))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeWorkoutRecorderBodyMetrics(uint64_t this)
{
  if (!*(this + 3760))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeWorkoutRecorderElevation(uint64_t this)
{
  if (!*(this + 3776))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeWorkoutRecorderHeartRate(uint64_t this)
{
  if (!*(this + 3808))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeWorkoutRecorderRotationRate(uint64_t this)
{
  if (!*(this + 3864))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeWorkoutRecorderOdometer(uint64_t this)
{
  if (!*(this + 3848))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeWorkoutRecorderWorkoutEvent(uint64_t this)
{
  if (!*(this + 3896))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeVo2MaxInput(uint64_t this)
{
  if (!*(this + 3592))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeBraveHeartDeviceMotion(uint64_t this)
{
  if (!*(this + 600))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeBraveHeartNatalieData(uint64_t this)
{
  if (!*(this + 608))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeBraveHeartVO2MaxInput(uint64_t this)
{
  if (!*(this + 616))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeBraveHeartAccel(uint64_t this)
{
  if (!*(this + 592))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeBraveHeartWorkoutEvent(uint64_t this)
{
  if (!*(this + 624))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeWorkoutRecorderHealthKitInfo(uint64_t this)
{
  if (!*(this + 3800))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makePearlAttitude(uint64_t this)
{
  if (!*(this + 2544))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeRotationRate(uint64_t this)
{
  if (!*(this + 2968))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeWorkoutRecorderWatchOrientationSettings(uint64_t this)
{
  if (!*(this + 3880))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeWatchOnWristState(uint64_t this)
{
  if (!*(this + 3672))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeCatherineHealthKitData(uint64_t this)
{
  if (!*(this + 688))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeWifiScanResults(uint64_t this)
{
  if (!*(this + 3688))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeInEarTransitionEntry(uint64_t this)
{
  if (!*(this + 1640))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeInEarSession(uint64_t this)
{
  if (!*(this + 1624))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeInEarBaseline(uint64_t this)
{
  if (!*(this + 1584))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeAccessoryProxSensorDrop(uint64_t this)
{
  if (!*(this + 264))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeAccessoryProxTempComp(uint64_t this)
{
  if (!*(this + 272))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeAccessoryWake(uint64_t this)
{
  if (!*(this + 312))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeFacePose(uint64_t this)
{
  if (!*(this + 1024))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeWorkoutRecorderWifiScanResults(uint64_t this)
{
  if (!*(this + 3888))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeWorkoutRecorderPressure(uint64_t this)
{
  if (!*(this + 3856))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeInEarAdditionalState(uint64_t this)
{
  if (!*(this + 1576))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeAccessoryDeviceMotion(uint64_t this)
{
  if (!*(this + 160))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeVisionCompassBias(uint64_t this)
{
  if (!*(this + 3552))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeArSessionState(uint64_t this)
{
  if (!*(this + 392))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeVioEstimation(uint64_t this)
{
  if (!*(this + 3528))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeLslHeadingEstimation(uint64_t this)
{
  if (!*(this + 2088))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeFallSnippet(uint64_t this)
{
  if (!*(this + 1112))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeAccelerometerPace(uint64_t this)
{
  if (!*(this + 104))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeMovementStats(uint64_t this)
{
  if (!*(this + 2288))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeStepCountEntry(uint64_t this)
{
  if (!*(this + 3280))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeMobilityBoutMetrics(uint64_t this)
{
  if (!*(this + 2168))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeCoprocessorReplyGaitMetrics(uint64_t this)
{
  if (!*(this + 800))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeVioPose(uint64_t this)
{
  if (!*(this + 3536))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeSignalEnvironment(uint64_t this)
{
  if (!*(this + 3096))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeVioReplayPose(uint64_t this)
{
  if (!*(this + 3544))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeVisualStateMeasurement(uint64_t this)
{
  if (!*(this + 3584))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeKappaTriggerDebug(uint64_t this)
{
  if (!*(this + 1960))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeKappaDirectionOfTravel(uint64_t this)
{
  if (!*(this + 1760))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeHgAccel(uint64_t this)
{
  if (!*(this + 1552))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeKappaSteps(uint64_t this)
{
  if (!*(this + 1928))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeUserInteraction(uint64_t this)
{
  if (!*(this + 3448))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeKappaRoads(uint64_t this)
{
  if (!*(this + 1888))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeUserStudyEvent(uint64_t this)
{
  if (!*(this + 3456))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeAuxiliaryDeviceMotion(uint64_t this)
{
  if (!*(this + 424))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeTempestPoCAuxiliaryDeviceMotion(uint64_t this)
{
  if (!*(this + 3392))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeAudioAccessoryDeviceMotion(uint64_t this)
{
  if (!*(this + 416))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeTempestPoCListenerOrientation(uint64_t this)
{
  if (!*(this + 3400))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeWorkoutRecorderAccel800(uint64_t this)
{
  if (!*(this + 3728))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeAlsData(uint64_t this)
{
  if (!*(this + 336))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeWorkoutRecorderALSData(uint64_t this)
{
  if (!*(this + 3712))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeVisualLocalization(uint64_t this)
{
  if (!*(this + 3560))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeGyroFactoryCalibrationData(uint64_t this)
{
  if (!*(this + 1448))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeSpl(uint64_t this)
{
  if (!*(this + 3184))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeFrequencyResponse(uint64_t this)
{
  if (!*(this + 1216))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeEmergencyState(uint64_t this)
{
  if (!*(this + 984))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeAccel800(uint64_t this)
{
  if (!*(this + 48))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeMotionLocation(uint64_t this)
{
  if (!*(this + 2240))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeMotionActivity(uint64_t this)
{
  if (!*(this + 2200))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeBioMotionPose(uint64_t this)
{
  if (!*(this + 552))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeKappaTrigger(uint64_t this)
{
  if (!*(this + 1944))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeRelDMInSystemConfig(uint64_t this)
{
  if (!*(this + 2912))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeJointLinkModelPose(uint64_t this)
{
  if (!*(this + 1696))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeConstrainedIntegratorPose(uint64_t this)
{
  if (!*(this + 792))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeGyroCalibrationSample(uint64_t this)
{
  if (!*(this + 1408))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeGyroCalibrationSampleNonlinear(uint64_t this)
{
  if (!*(this + 1416))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeGyroCalibrationDataNonlinearNonFactory(uint64_t this)
{
  if (!*(this + 1400))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeGyroCalibrationDataFactory(uint64_t this)
{
  if (!*(this + 1392))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeBioMotionClassification(uint64_t this)
{
  if (!*(this + 528))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeFusedBioMotionClassification(uint64_t this)
{
  if (!*(this + 1224))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeModelBasedBioMotionClassification(uint64_t this)
{
  if (!*(this + 2192))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeMLBasedBioMotionClassification(uint64_t this)
{
  if (!*(this + 2096))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makePose(uint64_t this)
{
  if (!*(this + 2672))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makePoseState(uint64_t this)
{
  if (!*(this + 2680))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeBioMotionPredictedPose(uint64_t this)
{
  if (!*(this + 560))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeJointLinkModelPredictedPose(uint64_t this)
{
  if (!*(this + 1704))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeConstrainedIntegratorModelPredictedPose(uint64_t this)
{
  if (!*(this + 784))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makePressureCompensated(uint64_t this)
{
  if (!*(this + 2784))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeVo2MaxOutput(uint64_t this)
{
  if (!*(this + 3600))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeMagneticAccessoryType1(uint64_t this)
{
  if (!*(this + 2112))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeMagneticAccessoryType2(uint64_t this)
{
  if (!*(this + 2120))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makePressureCalibration(uint64_t this)
{
  if (!*(this + 2776))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeWorkoutRecorderMagnetometer(uint64_t this)
{
  if (!*(this + 3840))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeWorkoutRecorderCompassCalibration(uint64_t this)
{
  if (!*(this + 3768))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeRawAudio(uint64_t this)
{
  if (!*(this + 2904))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeCV3DPredictedPose(uint64_t this)
{
  if (!*(this + 656))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeBioMotionLinkLengthFitParameters(uint64_t this)
{
  if (!*(this + 536))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeBioMotionOnlineLinkLengthUpdate(uint64_t this)
{
  if (!*(this + 544))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeOdtPose(uint64_t this)
{
  if (!*(this + 2352))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makePencilTipForce(uint64_t this)
{
  if (!*(this + 2632))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makePencilTouch(uint64_t this)
{
  if (!*(this + 2640))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeAveragedALSData(uint64_t this)
{
  if (!*(this + 432))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeTimestamp(uint64_t this)
{
  if (!*(this + 3408))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeAppleCV3DSLAMState(uint64_t this)
{
  if (!*(this + 384))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeBioMotionAnchorPose(uint64_t this)
{
  if (!*(this + 520))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeBioMotionPropagatedAnchor(uint64_t this)
{
  if (!*(this + 568))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeWalkingSteadinessClassification(uint64_t this)
{
  if (!*(this + 3632))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeSteadinessModelResult(uint64_t this)
{
  if (!*(this + 3248))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeSteadinessEvent(uint64_t this)
{
  if (!*(this + 3208))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeSteadinessModelGaitBaselineFeatures(uint64_t this)
{
  if (!*(this + 3232))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeSteadinessModelContinuousWalkingFeatures(uint64_t this)
{
  if (!*(this + 3224))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeSteadinessModelTemporalDispersionFeatures(uint64_t this)
{
  if (!*(this + 3256))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeSteadinessModelTemporalEntropyFeatures(uint64_t this)
{
  if (!*(this + 3264))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeSteadinessModelBalanceFeatures(uint64_t this)
{
  if (!*(this + 3216))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeMagnetometerReset(uint64_t this)
{
  if (!*(this + 2144))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeWorkoutRecorderWatchOnWristStatus(uint64_t this)
{
  if (!*(this + 3872))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeLiftToWakeOnHeadStatus(uint64_t this)
{
  if (!*(this + 2048))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeAccessoryMagnetometer(uint64_t this)
{
  if (!*(this + 232))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeStepCountEntryAddition(uint64_t this)
{
  if (!*(this + 3288))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeStepDistanceFusionResult(uint64_t this)
{
  if (!*(this + 3296))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeSkeleton3D(uint64_t this)
{
  if (!*(this + 3152))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeCvWatchCalories(uint64_t this)
{
  if (!*(this + 832))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeFaceBlendShapeCoefficientsSample(uint64_t this)
{
  if (!*(this + 1000))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeBatteryStatus(uint64_t this)
{
  if (!*(this + 512))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeLockScreenStatus(uint64_t this)
{
  if (!*(this + 2080))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeBatterySaverModeStatus(uint64_t this)
{
  if (!*(this + 504))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makePowerManagementUserActivity(uint64_t this)
{
  if (!*(this + 2704))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeFocusModes(uint64_t this)
{
  if (!*(this + 1208))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeDisplayStatus(uint64_t this)
{
  if (!*(this + 888))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeAPSleep(uint64_t this)
{
  if (!*(this + 24))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeAPWake(uint64_t this)
{
  if (!*(this + 32))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeAltimeterKF(uint64_t this)
{
  if (!*(this + 360))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeLiftToWakeState(uint64_t this)
{
  if (!*(this + 2056))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeViewObstructedState(uint64_t this)
{
  if (!*(this + 3520))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeRunningFormMetrics(uint64_t this)
{
  if (!*(this + 2992))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeWorkoutSessionPriors(uint64_t this)
{
  if (!*(this + 3912))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeWorkoutRecorderWorkoutSessionPriors(uint64_t this)
{
  if (!*(this + 3904))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeArkitWorldPose(uint64_t this)
{
  if (!*(this + 400))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makePdrImpulse(uint64_t this)
{
  if (!*(this + 2488))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makePocketDetectionPacket(uint64_t this)
{
  if (!*(this + 2664))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeLiftToWakeFeaturesNeo(uint64_t this)
{
  if (!*(this + 2040))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeLiftToWakeStatusNeo(uint64_t this)
{
  if (!*(this + 2064))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeRunningPower(uint64_t this)
{
  if (!*(this + 3000))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeBasebandCompassCoex(uint64_t this)
{
  if (!*(this + 456))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeBasebandCompassCoexConstraints(uint64_t this)
{
  if (!*(this + 464))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeMotionContextActivity(uint64_t this)
{
  if (!*(this + 2216))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makePdrAlgType(uint64_t this)
{
  if (!*(this + 2376))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeAccelTNBFrame(uint64_t this)
{
  if (!*(this + 96))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeDotEstimatorWithTNB(uint64_t this)
{
  if (!*(this + 936))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makePdrMLModelOutput(uint64_t this)
{
  if (!*(this + 2496))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeGaitEventsModelOutput(uint64_t this)
{
  if (!*(this + 1264))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeGaitEventsStrideAggregation(uint64_t this)
{
  if (!*(this + 1272))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeGaitEventsHKResult(uint64_t this)
{
  if (!*(this + 1256))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeFaceCovered(uint64_t this)
{
  if (!*(this + 1008))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeWorkoutRecorderAveragedALSData(uint64_t this)
{
  if (!*(this + 3752))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeStrideCalEntry(uint64_t this)
{
  if (!*(this + 3352))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeRunningSpeedKFResult(uint64_t this)
{
  if (!*(this + 3016))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeProxPDP(uint64_t this)
{
  if (!*(this + 2856))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeKeyboardMotionFeatures(uint64_t this)
{
  if (!*(this + 2000))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeKeyboardMotionState(uint64_t this)
{
  if (!*(this + 2008))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeAlsPhone(uint64_t this)
{
  if (!*(this + 344))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeKeyboardKeyPress(uint64_t this)
{
  if (!*(this + 1992))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeWakeGestureNotification(uint64_t this)
{
  if (!*(this + 3608))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeProxBaselineEstimatorState(uint64_t this)
{
  if (!*(this + 2840))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeBaselineResetCheck(uint64_t this)
{
  if (!*(this + 480))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeRhythmicGnssOperatorStatus(uint64_t this)
{
  if (!*(this + 2960))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeKeyboardMotionTrackpad(uint64_t this)
{
  if (!*(this + 2016))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeKeyboardAttached(uint64_t this)
{
  if (!*(this + 1984))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeBacklightState(uint64_t this)
{
  if (!*(this + 448))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeBatchedLocationFromOdometer(uint64_t this)
{
  if (!*(this + 488))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeHeartRateReference(uint64_t this)
{
  if (!*(this + 1536))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeSkeleton2D(uint64_t this)
{
  if (!*(this + 3144))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeSkeleton3DRetargeted(uint64_t this)
{
  if (!*(this + 3168))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeSkeleton3DLifted(uint64_t this)
{
  if (!*(this + 3160))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeFitnessMachineSample(uint64_t this)
{
  if (!*(this + 1144))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeWatchHeartRateData(uint64_t this)
{
  if (!*(this + 3664))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeFacePoseSynchronized(uint64_t this)
{
  if (!*(this + 1032))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeWatchActiveCalories(uint64_t this)
{
  if (!*(this + 3640))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeWatchBasalCalories(uint64_t this)
{
  if (!*(this + 3648))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeTrackRunData(uint64_t this)
{
  if (!*(this + 3432))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeGnssAvailabilityPredictorData(uint64_t this)
{
  if (!*(this + 1304))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeGnssLeechLocationData(uint64_t this)
{
  if (!*(this + 1312))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeMapsRouteHintData(uint64_t this)
{
  if (!*(this + 2152))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeFitnessMachineData(uint64_t this)
{
  if (!*(this + 1136))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeWorkoutRecorderFitnessMachineData(uint64_t this)
{
  if (!*(this + 3792))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeAccessoryActivityStateUpdate(uint64_t this)
{
  if (!*(this + 136))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makePedestrianFenceExit(uint64_t this)
{
  if (!*(this + 2568))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeInertialOdometry(uint64_t this)
{
  if (!*(this + 1648))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makePhysicalEffortInput(uint64_t this)
{
  if (!*(this + 2648))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makePhysicalEffortSample(uint64_t this)
{
  if (!*(this + 2656))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makePedestrianCalorieModelDebugging(uint64_t this)
{
  if (!*(this + 2560))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeElevationThreshold(uint64_t this)
{
  if (!*(this + 976))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeInitialHistoricalMeanSeaLevelPressure(uint64_t this)
{
  if (!*(this + 1656))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeWorkoutActivity(uint64_t this)
{
  if (!*(this + 3696))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makePencilDeviceMotion(uint64_t this)
{
  if (!*(this + 2592))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makePencilFusionResult(uint64_t this)
{
  if (!*(this + 2616))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeHapticModuleState(uint64_t this)
{
  if (!*(this + 1488))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeSteadinessModelHarmonicFeatures(uint64_t this)
{
  if (!*(this + 3240))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makePencilFusionReplayResult(uint64_t this)
{
  if (!*(this + 2608))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeMobilitySmoothedGaitMetrics(uint64_t this)
{
  if (!*(this + 2184))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeWatchEnclosureMaterial(uint64_t this)
{
  if (!*(this + 3656))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeAccessoryHeartRate(uint64_t this)
{
  if (!*(this + 208))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeAccessoryPPG(uint64_t this)
{
  if (!*(this + 248))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeMotionLoiAltitudeData(uint64_t this)
{
  if (!*(this + 2248))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeDisplacingState(uint64_t this)
{
  if (!*(this + 872))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makePostureJoint(uint64_t this)
{
  if (!*(this + 2688))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makePostureSkeleton(uint64_t this)
{
  if (!*(this + 2696))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeHidShower(uint64_t this)
{
  if (!*(this + 1560))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeWorkoutRecorderFaceCovered(uint64_t this)
{
  if (!*(this + 3784))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeStreamingHighFrequencyHeartRateData(uint64_t this)
{
  if (!*(this + 3328))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeNormalGammaCalibrationBin(uint64_t this)
{
  if (!*(this + 2328))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeMobilityCalibrationMessage(uint64_t this)
{
  if (!*(this + 2176))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeElevationBatchProcessingTimestamps(uint64_t this)
{
  if (!*(this + 952))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeCompanionStepCountElevation(uint64_t this)
{
  if (!*(this + 720))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeGPSCalibrationBin(uint64_t this)
{
  if (!*(this + 1232))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeAccessoryInEarDetection(uint64_t this)
{
  if (!*(this + 216))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeAccessoryBatchedPPG(uint64_t this)
{
  if (!*(this + 144))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeBatchedPPGData(uint64_t this)
{
  if (!*(this + 496))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeWorkoutRecorderAudioAccessoryDeviceMotion(uint64_t this)
{
  if (!*(this + 3744))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeWorkoutRecorderAccessoryDeviceMotionConfig(uint64_t this)
{
  if (!*(this + 3736))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeHeartRateSourceDevice(uint64_t this)
{
  if (!*(this + 1544))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeAFHeartRate(uint64_t this)
{
  if (!*(this + 16))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeStreamingHeartRateDataWatch(uint64_t this)
{
  if (!*(this + 3320))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeStreamingHighFrequencyHeartRateDataWatch(uint64_t this)
{
  if (!*(this + 3336))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeAudioAFDeviceMotion(uint64_t this)
{
  if (!*(this + 408))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeAFDeviceMotionConfig(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeWorkoutRecorderHeartRateSourceDevice(uint64_t this)
{
  if (!*(this + 3824))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeWorkoutRecorderHighFrequencyHeartRateWatch(uint64_t this)
{
  if (!*(this + 3832))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeWorkoutRecorderHeartRateAccessory(uint64_t this)
{
  if (!*(this + 3816))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeUltraFastAccel(uint64_t this)
{
  if (!*(this + 3440))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeAccel(uint64_t this)
{
  if (!*(this + 40))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeAccelBatch(uint64_t this)
{
  if (!*(this + 56))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeAccelOscarEmu(uint64_t this)
{
  if (!*(this + 88))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeAccelGesture(uint64_t this)
{
  if (!*(this + 72))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeGyro(uint64_t this)
{
  if (!*(this + 1336))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeGyroOscarEmu(uint64_t this)
{
  if (!*(this + 1464))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeGyroTemperature(uint64_t this)
{
  if (!*(this + 1480))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeGyroBiasAndVariance(uint64_t this)
{
  if (!*(this + 1344))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeGyroBiasFit(uint64_t this)
{
  if (!*(this + 1384))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeGyroDt(uint64_t this)
{
  if (!*(this + 1440))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeMagnetometer(uint64_t this)
{
  if (!*(this + 2128))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeCompass(uint64_t this)
{
  if (!*(this + 728))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeCompassAlignment(uint64_t this)
{
  if (!*(this + 736))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeGyroCompass(uint64_t this)
{
  if (!*(this + 1424))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeCompassCalibration(uint64_t this)
{
  if (!*(this + 744))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makePressure(uint64_t this)
{
  if (!*(this + 2768))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makePressureOscarEmu(uint64_t this)
{
  if (!*(this + 2824))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makePressureFiltered(uint64_t this)
{
  if (!*(this + 2792))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeProx(uint64_t this)
{
  if (!*(this + 2832))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeTouchOscarEmu(uint64_t this)
{
  if (!*(this + 3424))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeDeviceMotion(uint64_t this)
{
  if (!*(this + 840))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeMotionStateUpdate(uint64_t this)
{
  if (!*(this + 2264))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeAccelGps(uint64_t this)
{
  if (!*(this + 80))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeGyroGps(uint64_t this)
{
  if (!*(this + 1456))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makePressureGps(uint64_t this)
{
  if (!*(this + 2816))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeBTConnection(uint64_t this)
{
  if (!*(this + 440))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeSessionOverride(uint64_t this)
{
  if (!*(this + 3088))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeLocationOscarEmu(uint64_t this)
{
  if (!*(this + 2072))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeMotionHint(uint64_t this)
{
  if (!*(this + 2232))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeEnhancedDeviceMotion(uint64_t this)
{
  if (!*(this + 992))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeNonlinearBiasFit(uint64_t this)
{
  if (!*(this + 2320))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeNatalieData(uint64_t this)
{
  if (!*(this + 2312))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeBodyMetrics(uint64_t this)
{
  if (!*(this + 584))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeWorkoutEvent(uint64_t this)
{
  if (!*(this + 3704))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeOnsetHeartRateData(uint64_t this)
{
  if (!*(this + 2360))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeStreamingHeartRateData(uint64_t this)
{
  if (!*(this + 3312))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeElevationChange(uint64_t this)
{
  if (!*(this + 960))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeCoarseElevationChange(uint64_t this)
{
  if (!*(this + 712))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeMotionGPSLocation(uint64_t this)
{
  if (!*(this + 2224))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeMotionWifiLocation(uint64_t this)
{
  if (!*(this + 2280))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeStrideCalBin(uint64_t this)
{
  if (!*(this + 3344))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeCalorimetryPauseEvent(uint64_t this)
{
  if (!*(this + 680))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeOdometer(uint64_t this)
{
  if (!*(this + 2336))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeMetsInfo(uint64_t this)
{
  if (!*(this + 2160))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeFallStats(uint64_t this)
{
  if (!*(this + 1120))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeBasebandSpeed(uint64_t this)
{
  if (!*(this + 472))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeVibrationEvent(uint64_t this)
{
  if (!*(this + 3488))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeStepCadenceToStrideLengthBin(uint64_t this)
{
  if (!*(this + 3272))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeWatchOrientationSettings(uint64_t this)
{
  if (!*(this + 3680))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeMotionWifiAssociation(uint64_t this)
{
  if (!*(this + 2272))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeMotionLoiData(uint64_t this)
{
  if (!*(this + 2256))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeOdometerWithAltitude(uint64_t this)
{
  if (!*(this + 2344))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makePressureFilteredNoTemperature(uint64_t this)
{
  if (!*(this + 2808))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeInEarTransition(uint64_t this)
{
  if (!*(this + 1632))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeClefCalibration(uint64_t this)
{
  if (!*(this + 704))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeAirpodEvent(uint64_t this)
{
  if (!*(this + 328))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeInEarOptical(uint64_t this)
{
  if (!*(this + 1616))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeInEarConstraints(uint64_t this)
{
  if (!*(this + 1600))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeInEarOpenLid(uint64_t this)
{
  if (!*(this + 1608))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeInEarBaselining(uint64_t this)
{
  if (!*(this + 1592))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeAccessoryConfig(uint64_t this)
{
  if (!*(this + 152))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeAccessoryAccelConfig(uint64_t this)
{
  if (!*(this + 120))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeAccessoryProximityConfig(uint64_t this)
{
  if (!*(this + 280))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeTapDetect(uint64_t this)
{
  if (!*(this + 3384))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeTapAccept(uint64_t this)
{
  if (!*(this + 3376))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeDoubleTap(uint64_t this)
{
  if (!*(this + 944))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeAccessoryWakeDebug(uint64_t this)
{
  if (!*(this + 320))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeGeomagneticData(uint64_t this)
{
  if (!*(this + 1280))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeRelativeDeviceMotionInternal(uint64_t this)
{
  if (!*(this + 2936))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeRelativeGravityCorrection(uint64_t this)
{
  if (!*(this + 2952))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeRelativeGravityConstraints(uint64_t this)
{
  if (!*(this + 2944))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeZeroVelocityCorrection(uint64_t this)
{
  if (!*(this + 3920))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeAnchorCorrection(uint64_t this)
{
  if (!*(this + 368))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makePredictedRelativeDeviceMotion(uint64_t this)
{
  if (!*(this + 2760))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeMovementStatsSignal(uint64_t this)
{
  if (!*(this + 2304))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeMovementStatsGravityProjection(uint64_t this)
{
  if (!*(this + 2296))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeBleedToZeroCorrection(uint64_t this)
{
  if (!*(this + 576))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeAccessoryGyroConfig(uint64_t this)
{
  if (!*(this + 192))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeAccessoryGyroGYTT(uint64_t this)
{
  if (!*(this + 200))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeAccessoryGyroCachedBias(uint64_t this)
{
  if (!*(this + 184))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeGaitCycleSegment(uint64_t this)
{
  if (!*(this + 1240))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeGaitCycleSegmentationState(uint64_t this)
{
  if (!*(this + 1248))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeCompassCalibrationAttempt(uint64_t this)
{
  if (!*(this + 752))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeVisualLocalizationAttitudeCorrection(uint64_t this)
{
  if (!*(this + 3576))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeVisualLocalizationAttitudeConstraints(uint64_t this)
{
  if (!*(this + 3568))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeAccessoryMagnetometerConfig(uint64_t this)
{
  if (!*(this + 240))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeFallDetectionReferee(uint64_t this)
{
  if (!*(this + 1064))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeFallDetectionReplay(uint64_t this)
{
  if (!*(this + 1072))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeFallDetectionStateMachine(uint64_t this)
{
  if (!*(this + 1080))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeFallDetectionDetector(uint64_t this)
{
  if (!*(this + 1048))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeFallFalsePositiveSuppressionFeatures(uint64_t this)
{
  if (!*(this + 1104))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeAccessoryDeviceMotionConfig(uint64_t this)
{
  if (!*(this + 168))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeRelativeDeviceMotionCorrelatedMotion(uint64_t this)
{
  if (!*(this + 2928))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeRelativeDeviceMotionComplexTransition(uint64_t this)
{
  if (!*(this + 2920))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeDeviceMotionAlwaysOn(uint64_t this)
{
  if (!*(this + 848))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeFallDetectionGyroControllerReplay(uint64_t this)
{
  if (!*(this + 1056))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeWalkingDetectionResult(uint64_t this)
{
  if (!*(this + 3624))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeAccessoryInEarStatus(uint64_t this)
{
  if (!*(this + 224))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeFallDetectionWristStateReplay(uint64_t this)
{
  if (!*(this + 1088))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeGyroBiasEstimateError(uint64_t this)
{
  if (!*(this + 1376))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeStepLikelihoodFeatures(uint64_t this)
{
  if (!*(this + 3304))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeFirstStepFeatures(uint64_t this)
{
  if (!*(this + 1128))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeAccessoryStepDetectorDebug(uint64_t this)
{
  if (!*(this + 304))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeSitStandDetectorFeatures(uint64_t this)
{
  if (!*(this + 3112))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeSitStandDetectorTransitions(uint64_t this)
{
  if (!*(this + 3136))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeSitStandDetectorPosteriorBufferStatsForSitToStand(uint64_t this)
{
  if (!*(this + 3120))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeSitStandDetectorPosteriorBufferStatsForStandToSit(uint64_t this)
{
  if (!*(this + 3128))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeSpatialEvent(uint64_t this)
{
  if (!*(this + 3176))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeFallDistanceReplay(uint64_t this)
{
  if (!*(this + 1096))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeJitterBufferLevel(uint64_t this)
{
  if (!*(this + 1688))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makePressureFiltered1HzLowPass(uint64_t this)
{
  if (!*(this + 2800))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeMotionActivityReplay(uint64_t this)
{
  if (!*(this + 2208))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeFallDetectionActivityClassifierReplay(uint64_t this)
{
  if (!*(this + 1040))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeLegacyALS5CHInput(uint64_t this)
{
  if (!*(this + 2032))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeDopplerSample(uint64_t this)
{
  if (!*(this + 920))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeDopplerProximityEvent(uint64_t this)
{
  if (!*(this + 904))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeDopplerRawDataInput(uint64_t this)
{
  if (!*(this + 912))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeDopplerDebugRecord(uint64_t this)
{
  if (!*(this + 896))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeOrientation(uint64_t this)
{
  if (!*(this + 2368))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeKappaAudioResult(uint64_t this)
{
  if (!*(this + 1736))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeKappaBaroResult(uint64_t this)
{
  if (!*(this + 1744))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeKappaGpsResult(uint64_t this)
{
  if (!*(this + 1768))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeKappaPulseResult(uint64_t this)
{
  if (!*(this + 1856))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeKappaZgResult(uint64_t this)
{
  if (!*(this + 1976))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeKappaZgDetected(uint64_t this)
{
  if (!*(this + 1968))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeKappaPulseInertialAccel(uint64_t this)
{
  if (!*(this + 1840))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeHeadTrackingClientModeUpdate(uint64_t this)
{
  if (!*(this + 1528))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeHeadTrackingBehaviorUpdate(uint64_t this)
{
  if (!*(this + 1520))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeKappaAirbagResult(uint64_t this)
{
  if (!*(this + 1728))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeKappaCrashResult(uint64_t this)
{
  if (!*(this + 1752))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeKappaQuiescenceResult(uint64_t this)
{
  if (!*(this + 1864))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeKappaRecoveryResult(uint64_t this)
{
  if (!*(this + 1872))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeKappaRolloverCrashResult(uint64_t this)
{
  if (!*(this + 1904))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeKappaMildImpactResult(uint64_t this)
{
  if (!*(this + 1808))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeKappaLackOfMotionResult(uint64_t this)
{
  if (!*(this + 1792))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeKappaSevereCrashResult(uint64_t this)
{
  if (!*(this + 1912))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeKappaLocalAudioResult(uint64_t this)
{
  if (!*(this + 1800))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeKappaRemoteAudioResult(uint64_t this)
{
  if (!*(this + 1880))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeDirectionOfTravelMetrics(uint64_t this)
{
  if (!*(this + 864))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeViewObstructedMachineLearningDecision(uint64_t this)
{
  if (!*(this + 3496))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeHeadToHeadsetTransformationEstimate(uint64_t this)
{
  if (!*(this + 1512))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeViewObstructedMachineLearningFeatures(uint64_t this)
{
  if (!*(this + 3504))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeViewObstructedMachineLearningProbabilities(uint64_t this)
{
  if (!*(this + 3512))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeRunningArmSwingSignals(uint64_t this)
{
  if (!*(this + 2976))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeRunningCentripetalAccelSignals(uint64_t this)
{
  if (!*(this + 2984))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeRunningRotationAxis(uint64_t this)
{
  if (!*(this + 3008))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeRunningVerticalOscillationSignals(uint64_t this)
{
  if (!*(this + 3048))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeRunningVerticalOscillation(uint64_t this)
{
  if (!*(this + 3032))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeKappaSpinResult(uint64_t this)
{
  if (!*(this + 1920))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeKappaPulseDeltaV(uint64_t this)
{
  if (!*(this + 1832))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeRunningStrideLength(uint64_t this)
{
  if (!*(this + 3024))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeIspPacket(uint64_t this)
{
  if (!*(this + 1680))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeKappaHighSpeedCrashResult(uint64_t this)
{
  if (!*(this + 1784))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeKappaPulseInertialHgAccel(uint64_t this)
{
  if (!*(this + 1848))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeHarmonicMetrics(uint64_t this)
{
  if (!*(this + 1496))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeCalorimetryMETsConsumed(uint64_t this)
{
  if (!*(this + 672))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makePedometerPathStraightness(uint64_t this)
{
  if (!*(this + 2576))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeComplexHandMotion(uint64_t this)
{
  if (!*(this + 776))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeElevationGradeEstimator(uint64_t this)
{
  if (!*(this + 968))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeVO2MaxModelInput(uint64_t this)
{
  if (!*(this + 3472))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeProxCalibration(uint64_t this)
{
  if (!*(this + 2848))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeKappaStepsResult(uint64_t this)
{
  if (!*(this + 1936))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeWakeGestureSample(uint64_t this)
{
  if (!*(this + 3616))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeKappaGravityAutocorrelationResult(uint64_t this)
{
  if (!*(this + 1776))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeRunningVerticalOscillationGradientBoostedSignals(uint64_t this)
{
  if (!*(this + 3040))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeSubStats(uint64_t this)
{
  if (!*(this + 3360))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makePedOdomFusionExtendedModeSegment(uint64_t this)
{
  if (!*(this + 2552))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeMagicMountState(uint64_t this)
{
  if (!*(this + 2104))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makePdrPedestrianClassifierState(uint64_t this)
{
  if (!*(this + 2504))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makePdrPlacementClassifierState(uint64_t this)
{
  if (!*(this + 2512))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makePdrSpeedEstimatorState(uint64_t this)
{
  if (!*(this + 2520))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makePdrDOTEstimatorState(uint64_t this)
{
  if (!*(this + 2384))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makePdrVelocityEstimatorState(uint64_t this)
{
  if (!*(this + 2536))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeKmVelocityEstimatorState(uint64_t this)
{
  if (!*(this + 2024))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeVelocityEstimatorFusionState(uint64_t this)
{
  if (!*(this + 3480))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makePdrFenceReference(uint64_t this)
{
  if (!*(this + 2472))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makePdrFenceState(uint64_t this)
{
  if (!*(this + 2480))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeUwbRange(uint64_t this)
{
  if (!*(this + 3464))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeSwingDoTCandidate(uint64_t this)
{
  if (!*(this + 3368))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeDotEstimatorHandSwing(uint64_t this)
{
  if (!*(this + 928))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeKappaTriggerClustersResult(uint64_t this)
{
  if (!*(this + 1952))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeSimActivityEvent(uint64_t this)
{
  if (!*(this + 3104))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makePdrFeatures(uint64_t this)
{
  if (!*(this + 2464))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makePdrDOTEstimatorStateBody(uint64_t this)
{
  if (!*(this + 2400))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makePdrDOTEstimatorStateArmSwing(uint64_t this)
{
  if (!*(this + 2392))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makePdrDOTEstimatorStateHeading(uint64_t this)
{
  if (!*(this + 2424))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeAccessoryActivityAsleepConfidenceEpoch(uint64_t this)
{
  if (!*(this + 128))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makePdrSpeedEstimatorStateDebug(uint64_t this)
{
  if (!*(this + 2528))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makePrecisionFindingDOTEstimate(uint64_t this)
{
  if (!*(this + 2712))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makePrecisionFindingState(uint64_t this)
{
  if (!*(this + 2736))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeKappaRoadsResult(uint64_t this)
{
  if (!*(this + 1896))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makePrecisionFindingVelocityEstimate(uint64_t this)
{
  if (!*(this + 2744))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makePrecisionFindingRangeFilter(uint64_t this)
{
  if (!*(this + 2720))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makePdrDOTMeasurementSelectorState(uint64_t this)
{
  if (!*(this + 2456))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeBumpToWakeState(uint64_t this)
{
  if (!*(this + 632))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makePdrDOTEstimatorUncertaintyModelOnBody(uint64_t this)
{
  if (!*(this + 2448))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makePeerState(uint64_t this)
{
  if (!*(this + 2584))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeMagnetometerCalibratorFilterParameters(uint64_t this)
{
  if (!*(this + 2136))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeKappaActivityPhone(uint64_t this)
{
  if (!*(this + 1712))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeKappaActivityWatch(uint64_t this)
{
  if (!*(this + 1720))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makePrecisionFindingSessionStartStop(uint64_t this)
{
  if (!*(this + 2728))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makePdrDOTEstimatorStateDebug(uint64_t this)
{
  if (!*(this + 2416))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makePdrDOTEstimatorStateBodyDebug(uint64_t this)
{
  if (!*(this + 2408))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeKappaPeakDetectorMapResult(uint64_t this)
{
  if (!*(this + 1824))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeKappaPeakDetectorMapMagTimestamps(uint64_t this)
{
  if (!*(this + 1816))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makePrecisionFindingVerticalState(uint64_t this)
{
  if (!*(this + 2752))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeAltimeter(uint64_t this)
{
  if (!*(this + 352))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeFaceDownDetection(uint64_t this)
{
  if (!*(this + 1016))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makePencilFusionDMYawAlignmentUpdate(uint64_t this)
{
  if (!*(this + 2600))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makePencilFusionRingSensorTrustModelUpdate(uint64_t this)
{
  if (!*(this + 2624))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeAccessorySleepStateUpdate(uint64_t this)
{
  if (!*(this + 296))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeAccessorySleepStateConfidenceEpoch(uint64_t this)
{
  if (!*(this + 288))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeSafetyHertzSample(uint64_t this)
{
  if (!*(this + 3064))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeSafetyCompanionStatus(uint64_t this)
{
  if (!*(this + 3056))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makePtsConsumedGNSS(uint64_t this)
{
  if (!*(this + 2864))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makePtsForwardPropagation(uint64_t this)
{
  if (!*(this + 2872))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makePtsReconstructedRoute(uint64_t this)
{
  if (!*(this + 2888))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeHeadToHeadsetAttitudeEstimatorMeasurementUpdate(uint64_t this)
{
  if (!*(this + 1504))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makePtsMapMatchedRoute(uint64_t this)
{
  if (!*(this + 2880))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeAnchorMotionCorrespondence(uint64_t this)
{
  if (!*(this + 376))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeFlickGesture(uint64_t this)
{
  if (!*(this + 1176))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeFlickFeatures(uint64_t this)
{
  if (!*(this + 1168))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeFlickControlParameters(uint64_t this)
{
  if (!*(this + 1152))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeSafetyRemoteSample(uint64_t this)
{
  if (!*(this + 3072))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeSafetyTrustedAudioResult(uint64_t this)
{
  if (!*(this + 3080))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeDisplayPoseState(uint64_t this)
{
  if (!*(this + 880))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeTnb(uint64_t this)
{
  if (!*(this + 3416))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makePdrDOTEstimatorStateTNBDebug(uint64_t this)
{
  if (!*(this + 2440))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeCVIMUMeasurement(uint64_t this)
{
  if (!*(this + 664))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makePdrDOTEstimatorStateSwingDebug(uint64_t this)
{
  if (!*(this + 2432))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeImuComboPacket(uint64_t this)
{
  if (!*(this + 1568))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeGyroScaleEstimate(uint64_t this)
{
  if (!*(this + 1472))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeGyroBiasEstimate(uint64_t this)
{
  if (!*(this + 1368))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeAccelBiasEstimate(uint64_t this)
{
  if (!*(this + 64))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeGyroController(uint64_t this)
{
  if (!*(this + 1432))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makePtsSmoothedRoute(uint64_t this)
{
  if (!*(this + 2896))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeFlickMaxima(uint64_t this)
{
  if (!*(this + 1200))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeFlickGyroMaxima(uint64_t this)
{
  if (!*(this + 1184))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeFlickFPDetectorFeatures(uint64_t this)
{
  if (!*(this + 1160))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeFlickLPFDM6Data(uint64_t this)
{
  if (!*(this + 1192))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeCourseFusion(uint64_t this)
{
  if (!*(this + 824))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeCMPedometerStep(uint64_t this)
{
  if (!*(this + 648))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeCMPedEntry(uint64_t this)
{
  if (!*(this + 640))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeGestureQuaternion(uint64_t this)
{
  if (!*(this + 1296))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeGestureLogSource(uint64_t this)
{
  if (!*(this + 1288))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeSpuPlaybackExampleDeviceMotion(uint64_t this)
{
  if (!*(this + 3192))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeSpuPlaybackExampleMotionStateUpdate(uint64_t this)
{
  if (!*(this + 3200))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::Item::makeInterpolatedAccessoryAccel(uint64_t this)
{
  if (!*(this + 1664))
  {
    operator new();
  }

  return this;
}

void CMMsl::JitterBufferLevel::~JitterBufferLevel(CMMsl::JitterBufferLevel *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::JitterBufferLevel::JitterBufferLevel(uint64_t this, const CMMsl::JitterBufferLevel *a2)
{
  *this = off_10041F458;
  *(this + 20) = 0;
  v2 = *(a2 + 20);
  if ((v2 & 4) != 0)
  {
    v4 = *(a2 + 4);
    v3 = 4;
    *(this + 20) = 4;
    *(this + 16) = v4;
    v2 = *(a2 + 20);
    if ((v2 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if (*(a2 + 20))
  {
LABEL_5:
    v5 = *(a2 + 2);
    v3 |= 1u;
    *(this + 20) = v3;
    *(this + 8) = v5;
    v2 = *(a2 + 20);
  }

LABEL_6:
  if ((v2 & 2) != 0)
  {
    v6 = *(a2 + 3);
    *(this + 20) = v3 | 2;
    *(this + 12) = v6;
  }

  return this;
}

uint64_t CMMsl::JitterBufferLevel::operator=(uint64_t a1, const CMMsl::JitterBufferLevel *a2)
{
  if (a1 != a2)
  {
    CMMsl::JitterBufferLevel::JitterBufferLevel(v7, a2);
    v3 = *(a1 + 20);
    *(a1 + 20) = v10;
    v10 = v3;
    v4 = *(a1 + 16);
    *(a1 + 16) = v9;
    v9 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v5;
    PB::Base::~Base(v7);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::JitterBufferLevel *a2, CMMsl::JitterBufferLevel *a3)
{
  v3 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v3;
  result = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = result;
  v5 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  return result;
}

float CMMsl::JitterBufferLevel::JitterBufferLevel(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041F458;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  result = *(a2 + 16);
  *(a1 + 16) = result;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  return result;
}

{
  *a1 = off_10041F458;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  result = *(a2 + 16);
  *(a1 + 16) = result;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  return result;
}

uint64_t CMMsl::JitterBufferLevel::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v9[0] = off_10041F458;
    v3 = *(a2 + 20);
    *(a2 + 20) = 0;
    v4 = *(a2 + 16);
    v11 = *(a1 + 20);
    v5 = *(a1 + 16);
    *(a1 + 16) = v4;
    v10 = v5;
    v6 = *(a1 + 8);
    v7 = *(a2 + 8);
    *(a1 + 20) = v3;
    *(a1 + 8) = v7;
    v9[1] = v6;
    PB::Base::~Base(v9);
  }

  return a1;
}

uint64_t CMMsl::JitterBufferLevel::formatText(CMMsl::JitterBufferLevel *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 20);
  if (v5)
  {
    PB::TextFormatter::format(a2, "level", *(this + 2));
    v5 = *(this + 20);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(this + 20) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "threshold", *(this + 3));
  if ((*(this + 20) & 4) != 0)
  {
LABEL_4:
    PB::TextFormatter::format(a2, "timestamp", *(this + 4));
  }

LABEL_5:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::JitterBufferLevel::readFrom(CMMsl::JitterBufferLevel *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            goto LABEL_75;
          }

          v21 = *v19;
          *(a2 + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(a2 + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        *(this + 20) |= 2u;
        v31 = *(a2 + 1);
        v2 = *(a2 + 2);
        v32 = *a2;
        if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
        {
          v46 = 0;
          v47 = 0;
          v35 = 0;
          if (v2 <= v31)
          {
            v2 = *(a2 + 1);
          }

          v48 = v2 - v31;
          v49 = (v32 + v31);
          v50 = v31 + 1;
          while (1)
          {
            if (!v48)
            {
              LODWORD(v35) = 0;
              *(a2 + 24) = 1;
              goto LABEL_70;
            }

            v51 = v50;
            v52 = *v49;
            *(a2 + 1) = v51;
            v35 |= (v52 & 0x7F) << v46;
            if ((v52 & 0x80) == 0)
            {
              break;
            }

            v46 += 7;
            --v48;
            ++v49;
            v50 = v51 + 1;
            v14 = v47++ > 8;
            if (v14)
            {
              LODWORD(v35) = 0;
              goto LABEL_69;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v35) = 0;
          }

LABEL_69:
          v2 = v51;
        }

        else
        {
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v36 = (v32 + v31);
          v37 = v31 + 1;
          while (1)
          {
            v2 = v37;
            *(a2 + 1) = v37;
            v38 = *v36++;
            v35 |= (v38 & 0x7F) << v33;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            ++v37;
            v14 = v34++ > 8;
            if (v14)
            {
              LODWORD(v35) = 0;
              break;
            }
          }
        }

LABEL_70:
        *(this + 3) = v35;
      }

      else if (v22 == 2)
      {
        *(this + 20) |= 1u;
        v23 = *(a2 + 1);
        v2 = *(a2 + 2);
        v24 = *a2;
        if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
        {
          v39 = 0;
          v40 = 0;
          v27 = 0;
          if (v2 <= v23)
          {
            v2 = *(a2 + 1);
          }

          v41 = v2 - v23;
          v42 = (v24 + v23);
          v43 = v23 + 1;
          while (1)
          {
            if (!v41)
            {
              LODWORD(v27) = 0;
              *(a2 + 24) = 1;
              goto LABEL_66;
            }

            v44 = v43;
            v45 = *v42;
            *(a2 + 1) = v44;
            v27 |= (v45 & 0x7F) << v39;
            if ((v45 & 0x80) == 0)
            {
              break;
            }

            v39 += 7;
            --v41;
            ++v42;
            v43 = v44 + 1;
            v14 = v40++ > 8;
            if (v14)
            {
              LODWORD(v27) = 0;
              goto LABEL_65;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v27) = 0;
          }

LABEL_65:
          v2 = v44;
        }

        else
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = (v24 + v23);
          v29 = v23 + 1;
          while (1)
          {
            v2 = v29;
            *(a2 + 1) = v29;
            v30 = *v28++;
            v27 |= (v30 & 0x7F) << v25;
            if ((v30 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            ++v29;
            v14 = v26++ > 8;
            if (v14)
            {
              LODWORD(v27) = 0;
              break;
            }
          }
        }

LABEL_66:
        *(this + 2) = v27;
      }

      else if (v22 == 1)
      {
        *(this + 20) |= 4u;
        v2 = *(a2 + 1);
        if (v2 <= 0xFFFFFFFFFFFFFFFBLL && v2 + 4 <= *(a2 + 2))
        {
          *(this + 4) = *(*a2 + v2);
          v2 = *(a2 + 1) + 4;
          *(a2 + 1) = v2;
        }

        else
        {
          *(a2 + 24) = 1;
        }
      }

      else
      {
        if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
        {
          v53 = 0;
          return v53 & 1;
        }

        v2 = *(a2 + 1);
      }

      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_75:
  v53 = v4 ^ 1;
  return v53 & 1;
}

uint64_t CMMsl::JitterBufferLevel::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 20);
  if ((v4 & 4) == 0)
  {
    if ((*(this + 20) & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = PB::Writer::writeVarInt(a2, *(v3 + 8), 2u);
    if ((*(v3 + 20) & 2) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = PB::Writer::write(a2, *(this + 16), 1u);
  v4 = *(v3 + 20);
  if (v4)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v4 & 2) == 0)
  {
    return this;
  }

LABEL_7:
  v5 = *(v3 + 12);

  return PB::Writer::writeVarInt(a2, v5, 3u);
}

uint64_t CMMsl::JitterBufferLevel::hash_value(CMMsl::JitterBufferLevel *this)
{
  if ((*(this + 20) & 4) == 0)
  {
    v1 = 0;
    if (*(this + 20))
    {
      goto LABEL_3;
    }

LABEL_8:
    v2 = 0;
    if ((*(this + 20) & 2) != 0)
    {
      goto LABEL_4;
    }

LABEL_9:
    v3 = 0;
    return v2 ^ v1 ^ v3;
  }

  v4 = *(this + 4);
  v1 = LODWORD(v4);
  if (v4 == 0.0)
  {
    v1 = 0;
  }

  if ((*(this + 20) & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  v2 = *(this + 2);
  if ((*(this + 20) & 2) == 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  v3 = *(this + 3);
  return v2 ^ v1 ^ v3;
}

void CMMsl::JointLinkModelPose::~JointLinkModelPose(CMMsl::JointLinkModelPose *this)
{
  v2 = *(this + 1);
  *this = off_10041F490;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::JointLinkModelPose::~JointLinkModelPose(this);

  operator delete();
}

void *CMMsl::JointLinkModelPose::JointLinkModelPose(void *this, const CMMsl::JointLinkModelPose *a2)
{
  *this = off_10041F490;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const CMMsl::JointLinkModelPose *CMMsl::JointLinkModelPose::operator=(const CMMsl::JointLinkModelPose *a1, const CMMsl::JointLinkModelPose *a2)
{
  if (a1 != a2)
  {
    CMMsl::JointLinkModelPose::JointLinkModelPose(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    CMMsl::JointLinkModelPose::~JointLinkModelPose(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::JointLinkModelPose *a2, CMMsl::JointLinkModelPose *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::JointLinkModelPose::JointLinkModelPose(void *a1, uint64_t a2)
{
  *a1 = off_10041F490;
  a1[1] = 0;
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  v4 = a1[1];
  a1[1] = v3;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

{
  *a1 = off_10041F490;
  a1[1] = 0;
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  v4 = a1[1];
  a1[1] = v3;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

uint64_t CMMsl::JointLinkModelPose::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = off_10041F490;
    v6[1] = v4;
    CMMsl::JointLinkModelPose::~JointLinkModelPose(v6);
  }

  return a1;
}

uint64_t CMMsl::JointLinkModelPose::formatText(CMMsl::JointLinkModelPose *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::JointLinkModelPose::readFrom(CMMsl::JointLinkModelPose *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v6 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v14 = 0;
        v15 = 0;
        v9 = 0;
        v16 = v3 >= v2;
        v17 = v3 - v2;
        if (!v16)
        {
          v17 = 0;
        }

        v18 = (v6 + v2);
        v19 = v2 + 1;
        while (1)
        {
          if (!v17)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            goto LABEL_29;
          }

          v20 = *v18;
          *(a2 + 1) = v19;
          v9 |= (v20 & 0x7F) << v14;
          if ((v20 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          --v17;
          ++v18;
          ++v19;
          v13 = v15++ > 8;
          if (v13)
          {
LABEL_18:
            v9 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v9 = 0;
        }
      }

      else
      {
        v7 = 0;
        v8 = 0;
        v9 = 0;
        v10 = (v6 + v2);
        v11 = v2 + 1;
        while (1)
        {
          *(a2 + 1) = v11;
          v12 = *v10++;
          v9 |= (v12 & 0x7F) << v7;
          if ((v12 & 0x80) == 0)
          {
            break;
          }

          v7 += 7;
          ++v11;
          v13 = v8++ > 8;
          if (v13)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v9 & 7) == 4))
      {
        break;
      }

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

      if ((PB::Reader::skip(a2, v9 >> 3, v9 & 7, 0) & 1) == 0)
      {
        v21 = 0;
        return v21 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_29:
  v21 = v4 ^ 1;
  return v21 & 1;
}

uint64_t CMMsl::JointLinkModelPose::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2, 1u);
  }

  return this;
}

CMMsl::BioMotionPose *CMMsl::JointLinkModelPose::hash_value(CMMsl::JointLinkModelPose *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::BioMotionPose::hash_value(result);
  }

  return result;
}

uint64_t CMMsl::JointLinkModelPose::makeSuper(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

void CMMsl::JointLinkModelPredictedPose::~JointLinkModelPredictedPose(CMMsl::JointLinkModelPredictedPose *this)
{
  v2 = *(this + 1);
  *this = off_10041F4C8;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::JointLinkModelPredictedPose::~JointLinkModelPredictedPose(this);

  operator delete();
}

void *CMMsl::JointLinkModelPredictedPose::JointLinkModelPredictedPose(void *this, const CMMsl::JointLinkModelPredictedPose *a2)
{
  *this = off_10041F4C8;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const CMMsl::JointLinkModelPredictedPose *CMMsl::JointLinkModelPredictedPose::operator=(const CMMsl::JointLinkModelPredictedPose *a1, const CMMsl::JointLinkModelPredictedPose *a2)
{
  if (a1 != a2)
  {
    CMMsl::JointLinkModelPredictedPose::JointLinkModelPredictedPose(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    CMMsl::JointLinkModelPredictedPose::~JointLinkModelPredictedPose(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::JointLinkModelPredictedPose *a2, CMMsl::JointLinkModelPredictedPose *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::JointLinkModelPredictedPose::JointLinkModelPredictedPose(void *a1, uint64_t a2)
{
  *a1 = off_10041F4C8;
  a1[1] = 0;
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  v4 = a1[1];
  a1[1] = v3;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

{
  *a1 = off_10041F4C8;
  a1[1] = 0;
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  v4 = a1[1];
  a1[1] = v3;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

uint64_t CMMsl::JointLinkModelPredictedPose::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = off_10041F4C8;
    v6[1] = v4;
    CMMsl::JointLinkModelPredictedPose::~JointLinkModelPredictedPose(v6);
  }

  return a1;
}

uint64_t CMMsl::JointLinkModelPredictedPose::formatText(CMMsl::JointLinkModelPredictedPose *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::JointLinkModelPredictedPose::readFrom(CMMsl::JointLinkModelPredictedPose *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v6 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v14 = 0;
        v15 = 0;
        v9 = 0;
        v16 = v3 >= v2;
        v17 = v3 - v2;
        if (!v16)
        {
          v17 = 0;
        }

        v18 = (v6 + v2);
        v19 = v2 + 1;
        while (1)
        {
          if (!v17)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            goto LABEL_29;
          }

          v20 = *v18;
          *(a2 + 1) = v19;
          v9 |= (v20 & 0x7F) << v14;
          if ((v20 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          --v17;
          ++v18;
          ++v19;
          v13 = v15++ > 8;
          if (v13)
          {
LABEL_18:
            v9 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v9 = 0;
        }
      }

      else
      {
        v7 = 0;
        v8 = 0;
        v9 = 0;
        v10 = (v6 + v2);
        v11 = v2 + 1;
        while (1)
        {
          *(a2 + 1) = v11;
          v12 = *v10++;
          v9 |= (v12 & 0x7F) << v7;
          if ((v12 & 0x80) == 0)
          {
            break;
          }

          v7 += 7;
          ++v11;
          v13 = v8++ > 8;
          if (v13)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v9 & 7) == 4))
      {
        break;
      }

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

      if ((PB::Reader::skip(a2, v9 >> 3, v9 & 7, 0) & 1) == 0)
      {
        v21 = 0;
        return v21 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_29:
  v21 = v4 ^ 1;
  return v21 & 1;
}

uint64_t CMMsl::JointLinkModelPredictedPose::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2, 1u);
  }

  return this;
}

CMMsl::BioMotionPredictedPose *CMMsl::JointLinkModelPredictedPose::hash_value(CMMsl::JointLinkModelPredictedPose *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::BioMotionPredictedPose::hash_value(result);
  }

  return result;
}

uint64_t CMMsl::JointLinkModelPredictedPose::makeSuper(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

void CMMsl::KMVelocityEstimatorState::~KMVelocityEstimatorState(CMMsl::KMVelocityEstimatorState *this)
{
  PB::Base::~Base(this);

  operator delete();
}

double CMMsl::KMVelocityEstimatorState::KMVelocityEstimatorState(CMMsl::KMVelocityEstimatorState *this, const CMMsl::KMVelocityEstimatorState *a2)
{
  *this = off_10041F500;
  *(this + 13) = 0;
  v2 = *(a2 + 26);
  if (v2)
  {
    result = *(a2 + 1);
    v3 = 1;
    *(this + 26) = 1;
    *(this + 1) = result;
    v2 = *(a2 + 26);
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x20) != 0)
  {
LABEL_5:
    LODWORD(result) = *(a2 + 9);
    v3 |= 0x20u;
    *(this + 26) = v3;
    *(this + 9) = LODWORD(result);
    v2 = *(a2 + 26);
  }

LABEL_6:
  if ((v2 & 0x40) != 0)
  {
    LODWORD(result) = *(a2 + 10);
    v3 |= 0x40u;
    *(this + 26) = v3;
    *(this + 10) = LODWORD(result);
    v2 = *(a2 + 26);
    if ((v2 & 0x80) == 0)
    {
LABEL_8:
      if ((v2 & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_18;
    }
  }

  else if ((v2 & 0x80) == 0)
  {
    goto LABEL_8;
  }

  LODWORD(result) = *(a2 + 11);
  v3 |= 0x80u;
  *(this + 26) = v3;
  *(this + 11) = LODWORD(result);
  v2 = *(a2 + 26);
  if ((v2 & 4) == 0)
  {
LABEL_9:
    if ((v2 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  LODWORD(result) = *(a2 + 6);
  v3 |= 4u;
  *(this + 26) = v3;
  *(this + 6) = LODWORD(result);
  v2 = *(a2 + 26);
  if ((v2 & 8) == 0)
  {
LABEL_10:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

LABEL_19:
  LODWORD(result) = *(a2 + 7);
  v3 |= 8u;
  *(this + 26) = v3;
  *(this + 7) = LODWORD(result);
  v2 = *(a2 + 26);
  if ((v2 & 0x10) == 0)
  {
LABEL_11:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

LABEL_20:
  LODWORD(result) = *(a2 + 8);
  v3 |= 0x10u;
  *(this + 26) = v3;
  *(this + 8) = LODWORD(result);
  v2 = *(a2 + 26);
  if ((v2 & 0x100) == 0)
  {
LABEL_12:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_22;
  }

LABEL_21:
  v5 = *(a2 + 48);
  v3 |= 0x100u;
  *(this + 26) = v3;
  *(this + 48) = v5;
  v2 = *(a2 + 26);
  if ((v2 & 0x200) == 0)
  {
LABEL_13:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_23;
  }

LABEL_22:
  v6 = *(a2 + 49);
  v3 |= 0x200u;
  *(this + 26) = v3;
  *(this + 49) = v6;
  v2 = *(a2 + 26);
  if ((v2 & 0x400) == 0)
  {
LABEL_14:
    if ((v2 & 2) == 0)
    {
      return result;
    }

LABEL_24:
    result = *(a2 + 2);
    *(this + 26) = v3 | 2;
    *(this + 2) = result;
    return result;
  }

LABEL_23:
  v7 = *(a2 + 50);
  v3 |= 0x400u;
  *(this + 26) = v3;
  *(this + 50) = v7;
  if ((*(a2 + 26) & 2) != 0)
  {
    goto LABEL_24;
  }

  return result;
}

CMMsl *CMMsl::KMVelocityEstimatorState::operator=(CMMsl *a1, const CMMsl::KMVelocityEstimatorState *a2)
{
  if (a1 != a2)
  {
    CMMsl::KMVelocityEstimatorState::KMVelocityEstimatorState(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::KMVelocityEstimatorState *a2, CMMsl::KMVelocityEstimatorState *a3)
{
  v3 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v4;
  LODWORD(v4) = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v4;
  LODWORD(v4) = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v4;
  LODWORD(v4) = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v4;
  LODWORD(v4) = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v4;
  LODWORD(v4) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v4;
  LOBYTE(v3) = *(this + 48);
  *(this + 48) = *(a2 + 48);
  *(a2 + 48) = v3;
  LOBYTE(v3) = *(this + 49);
  *(this + 49) = *(a2 + 49);
  *(a2 + 49) = v3;
  LOBYTE(v3) = *(this + 50);
  *(this + 50) = *(a2 + 50);
  *(a2 + 50) = v3;
  result = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = result;
  return result;
}

double CMMsl::KMVelocityEstimatorState::KMVelocityEstimatorState(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041F500;
  *(a1 + 52) = *(a2 + 52);
  *(a2 + 52) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 49) = *(a2 + 49);
  *(a1 + 50) = *(a2 + 50);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

CMMsl *CMMsl::KMVelocityEstimatorState::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::KMVelocityEstimatorState::KMVelocityEstimatorState(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::KMVelocityEstimatorState::formatText(CMMsl::KMVelocityEstimatorState *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 26);
  if (v5)
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 1));
    v5 = *(this + 26);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "timestampPast", *(this + 2));
  v5 = *(this + 26);
  if ((v5 & 0x100) == 0)
  {
LABEL_4:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  PB::TextFormatter::format(a2, "validX", *(this + 48));
  v5 = *(this + 26);
  if ((v5 & 0x200) == 0)
  {
LABEL_5:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  PB::TextFormatter::format(a2, "validY", *(this + 49));
  v5 = *(this + 26);
  if ((v5 & 0x400) == 0)
  {
LABEL_6:
    if ((v5 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(a2, "validZ", *(this + 50));
  v5 = *(this + 26);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(a2, "velocityUncX", *(this + 6));
  v5 = *(this + 26);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(a2, "velocityUncY", *(this + 7));
  v5 = *(this + 26);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(a2, "velocityUncZ", *(this + 8));
  v5 = *(this + 26);
  if ((v5 & 0x20) == 0)
  {
LABEL_10:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(a2, "velocityX", *(this + 9));
  v5 = *(this + 26);
  if ((v5 & 0x40) == 0)
  {
LABEL_11:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_25:
  PB::TextFormatter::format(a2, "velocityY", *(this + 10));
  if ((*(this + 26) & 0x80) != 0)
  {
LABEL_12:
    PB::TextFormatter::format(a2, "velocityZ", *(this + 11));
  }

LABEL_13:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::KMVelocityEstimatorState::readFrom(CMMsl::KMVelocityEstimatorState *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            goto LABEL_82;
          }

          v21 = *v19;
          *(a2 + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(a2 + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) <= 5)
      {
        if (v22 <= 2)
        {
          if (v22 == 1)
          {
            *(this + 26) |= 1u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
LABEL_64:
              *(a2 + 24) = 1;
              goto LABEL_78;
            }

            *(this + 1) = *(*a2 + v2);
LABEL_50:
            v2 = *(a2 + 1) + 8;
            goto LABEL_77;
          }

          if (v22 == 2)
          {
            *(this + 26) |= 0x20u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
              goto LABEL_64;
            }

            *(this + 9) = *(*a2 + v2);
LABEL_76:
            v2 = *(a2 + 1) + 4;
LABEL_77:
            *(a2 + 1) = v2;
            goto LABEL_78;
          }
        }

        else
        {
          switch(v22)
          {
            case 3:
              *(this + 26) |= 0x40u;
              v2 = *(a2 + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
              {
                goto LABEL_64;
              }

              *(this + 10) = *(*a2 + v2);
              goto LABEL_76;
            case 4:
              *(this + 26) |= 0x80u;
              v2 = *(a2 + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
              {
                goto LABEL_64;
              }

              *(this + 11) = *(*a2 + v2);
              goto LABEL_76;
            case 5:
              *(this + 26) |= 4u;
              v2 = *(a2 + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
              {
                goto LABEL_64;
              }

              *(this + 6) = *(*a2 + v2);
              goto LABEL_76;
          }
        }
      }

      else if (v22 > 8)
      {
        switch(v22)
        {
          case 9:
            *(this + 26) |= 0x200u;
            v2 = *(a2 + 1);
            if (v2 >= *(a2 + 2))
            {
              v28 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v27 = *(*a2 + v2++);
              *(a2 + 1) = v2;
              v28 = v27 != 0;
            }

            *(this + 49) = v28;
            goto LABEL_78;
          case 0xA:
            *(this + 26) |= 0x400u;
            v2 = *(a2 + 1);
            if (v2 >= *(a2 + 2))
            {
              v26 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v25 = *(*a2 + v2++);
              *(a2 + 1) = v2;
              v26 = v25 != 0;
            }

            *(this + 50) = v26;
            goto LABEL_78;
          case 0xB:
            *(this + 26) |= 2u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
              goto LABEL_64;
            }

            *(this + 2) = *(*a2 + v2);
            goto LABEL_50;
        }
      }

      else
      {
        switch(v22)
        {
          case 6:
            *(this + 26) |= 8u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
              goto LABEL_64;
            }

            *(this + 7) = *(*a2 + v2);
            goto LABEL_76;
          case 7:
            *(this + 26) |= 0x10u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
              goto LABEL_64;
            }

            *(this + 8) = *(*a2 + v2);
            goto LABEL_76;
          case 8:
            *(this + 26) |= 0x100u;
            v2 = *(a2 + 1);
            if (v2 >= *(a2 + 2))
            {
              v24 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v23 = *(*a2 + v2++);
              *(a2 + 1) = v2;
              v24 = v23 != 0;
            }

            *(this + 48) = v24;
            goto LABEL_78;
        }
      }

      if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
      {
        v29 = 0;
        return v29 & 1;
      }

      v2 = *(a2 + 1);
LABEL_78:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_82:
  v29 = v4 ^ 1;
  return v29 & 1;
}

uint64_t CMMsl::KMVelocityEstimatorState::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 52);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8), 1u);
    v4 = *(v3 + 52);
    if ((v4 & 0x20) == 0)
    {
LABEL_3:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((v4 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 36), 2u);
  v4 = *(v3 + 52);
  if ((v4 & 0x40) == 0)
  {
LABEL_4:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  this = PB::Writer::write(a2, *(v3 + 40), 3u);
  v4 = *(v3 + 52);
  if ((v4 & 0x80) == 0)
  {
LABEL_5:
    if ((v4 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = PB::Writer::write(a2, *(v3 + 44), 4u);
  v4 = *(v3 + 52);
  if ((v4 & 4) == 0)
  {
LABEL_6:
    if ((v4 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = PB::Writer::write(a2, *(v3 + 24), 5u);
  v4 = *(v3 + 52);
  if ((v4 & 8) == 0)
  {
LABEL_7:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = PB::Writer::write(a2, *(v3 + 28), 6u);
  v4 = *(v3 + 52);
  if ((v4 & 0x10) == 0)
  {
LABEL_8:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = PB::Writer::write(a2, *(v3 + 32), 7u);
  v4 = *(v3 + 52);
  if ((v4 & 0x100) == 0)
  {
LABEL_9:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = PB::Writer::write(a2, *(v3 + 48), 8u);
  v4 = *(v3 + 52);
  if ((v4 & 0x200) == 0)
  {
LABEL_10:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    this = PB::Writer::write(a2, *(v3 + 50), 0xAu);
    if ((*(v3 + 52) & 2) == 0)
    {
      return this;
    }

    goto LABEL_23;
  }

LABEL_21:
  this = PB::Writer::write(a2, *(v3 + 49), 9u);
  v4 = *(v3 + 52);
  if ((v4 & 0x400) != 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  if ((v4 & 2) == 0)
  {
    return this;
  }

LABEL_23:
  v5 = *(v3 + 16);

  return PB::Writer::write(a2, v5, 0xBu);
}

uint64_t CMMsl::KMVelocityEstimatorState::hash_value(CMMsl::KMVelocityEstimatorState *this)
{
  v1 = *(this + 26);
  if ((v1 & 1) == 0)
  {
    v2 = 0.0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_3;
    }

LABEL_30:
    v4 = 0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_6;
    }

LABEL_31:
    v6 = 0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_9;
    }

LABEL_32:
    v8 = 0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_12;
    }

LABEL_33:
    v10 = 0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_15;
    }

LABEL_34:
    v12 = 0;
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_18;
    }

LABEL_35:
    v14 = 0;
    if ((*(this + 26) & 0x100) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_36;
  }

  v2 = *(this + 1);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((v1 & 0x20) == 0)
  {
    goto LABEL_30;
  }

LABEL_3:
  v3 = *(this + 9);
  v4 = LODWORD(v3);
  if (v3 == 0.0)
  {
    v4 = 0;
  }

  if ((v1 & 0x40) == 0)
  {
    goto LABEL_31;
  }

LABEL_6:
  v5 = *(this + 10);
  v6 = LODWORD(v5);
  if (v5 == 0.0)
  {
    v6 = 0;
  }

  if ((v1 & 0x80) == 0)
  {
    goto LABEL_32;
  }

LABEL_9:
  v7 = *(this + 11);
  v8 = LODWORD(v7);
  if (v7 == 0.0)
  {
    v8 = 0;
  }

  if ((v1 & 4) == 0)
  {
    goto LABEL_33;
  }

LABEL_12:
  v9 = *(this + 6);
  v10 = LODWORD(v9);
  if (v9 == 0.0)
  {
    v10 = 0;
  }

  if ((v1 & 8) == 0)
  {
    goto LABEL_34;
  }

LABEL_15:
  v11 = *(this + 7);
  v12 = LODWORD(v11);
  if (v11 == 0.0)
  {
    v12 = 0;
  }

  if ((v1 & 0x10) == 0)
  {
    goto LABEL_35;
  }

LABEL_18:
  v13 = *(this + 8);
  v14 = LODWORD(v13);
  if (v13 == 0.0)
  {
    v14 = 0;
  }

  if ((*(this + 26) & 0x100) != 0)
  {
LABEL_21:
    v15 = *(this + 48);
    if ((*(this + 26) & 0x200) != 0)
    {
      goto LABEL_22;
    }

    goto LABEL_37;
  }

LABEL_36:
  v15 = 0;
  if ((*(this + 26) & 0x200) != 0)
  {
LABEL_22:
    v16 = *(this + 49);
    if ((*(this + 26) & 0x400) != 0)
    {
      goto LABEL_23;
    }

    goto LABEL_38;
  }

LABEL_37:
  v16 = 0;
  if ((*(this + 26) & 0x400) != 0)
  {
LABEL_23:
    v17 = *(this + 50);
    if ((v1 & 2) != 0)
    {
      goto LABEL_24;
    }

LABEL_39:
    v18 = 0.0;
    return v4 ^ *&v2 ^ v6 ^ v8 ^ v10 ^ v12 ^ v14 ^ v15 ^ v16 ^ v17 ^ *&v18;
  }

LABEL_38:
  v17 = 0;
  if ((v1 & 2) == 0)
  {
    goto LABEL_39;
  }

LABEL_24:
  v18 = *(this + 2);
  if (v18 == 0.0)
  {
    v18 = 0.0;
  }

  return v4 ^ *&v2 ^ v6 ^ v8 ^ v10 ^ v12 ^ v14 ^ v15 ^ v16 ^ v17 ^ *&v18;
}

void CMMsl::KappaActivityPhone::~KappaActivityPhone(CMMsl::KappaActivityPhone *this)
{
  *this = off_10041F538;
  v2 = *(this + 10);
  if (v2)
  {
    *(this + 11) = v2;
    operator delete(v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    *(this + 8) = v3;
    operator delete(v3);
  }

  v4 = *(this + 4);
  if (v4)
  {
    *(this + 5) = v4;
    operator delete(v4);
  }

  v5 = *(this + 1);
  if (v5)
  {
    *(this + 2) = v5;
    operator delete(v5);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::KappaActivityPhone::~KappaActivityPhone(this);

  operator delete();
}

CMMsl::KappaActivityPhone *CMMsl::KappaActivityPhone::KappaActivityPhone(CMMsl::KappaActivityPhone *this, const CMMsl::KappaActivityPhone *a2)
{
  *this = off_10041F538;
  *(this + 8) = 0u;
  v4 = (this + 8);
  *(this + 56) = 0u;
  *(this + 35) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  if (*(a2 + 140))
  {
    v5 = *(a2 + 13);
    *(this + 140) = 1;
    *(this + 13) = v5;
  }

  if (this != a2)
  {
    sub_100035D1C(v4, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 2);
  }

  if ((*(a2 + 140) & 4) != 0)
  {
    v6 = *(a2 + 30);
    *(this + 140) |= 4u;
    *(this + 30) = v6;
  }

  if (this != a2)
  {
    sub_100035D1C(this + 10, *(a2 + 10), *(a2 + 11), (*(a2 + 11) - *(a2 + 10)) >> 2);
  }

  if ((*(a2 + 140) & 2) != 0)
  {
    v7 = *(a2 + 14);
    *(this + 140) |= 2u;
    *(this + 14) = v7;
  }

  if (this != a2)
  {
    sub_100035D1C(this + 4, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 2);
    sub_100035D1C(this + 7, *(a2 + 7), *(a2 + 8), (*(a2 + 8) - *(a2 + 7)) >> 2);
  }

  v8 = *(a2 + 140);
  if ((v8 & 0x20) != 0)
  {
    v11 = *(a2 + 33);
    *(this + 140) |= 0x20u;
    *(this + 33) = v11;
    v8 = *(a2 + 140);
    if ((v8 & 8) == 0)
    {
LABEL_15:
      if ((v8 & 0x10) == 0)
      {
        goto LABEL_16;
      }

LABEL_21:
      v13 = *(a2 + 32);
      *(this + 140) |= 0x10u;
      *(this + 32) = v13;
      if ((*(a2 + 140) & 0x40) == 0)
      {
        return this;
      }

      goto LABEL_17;
    }
  }

  else if ((*(a2 + 140) & 8) == 0)
  {
    goto LABEL_15;
  }

  v12 = *(a2 + 31);
  *(this + 140) |= 8u;
  *(this + 31) = v12;
  v8 = *(a2 + 140);
  if ((v8 & 0x10) != 0)
  {
    goto LABEL_21;
  }

LABEL_16:
  if ((v8 & 0x40) != 0)
  {
LABEL_17:
    v9 = *(a2 + 34);
    *(this + 140) |= 0x40u;
    *(this + 34) = v9;
  }

  return this;
}

CMMsl *CMMsl::KappaActivityPhone::operator=(CMMsl *a1, const CMMsl::KappaActivityPhone *a2)
{
  if (a1 != a2)
  {
    CMMsl::KappaActivityPhone::KappaActivityPhone(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::KappaActivityPhone::~KappaActivityPhone(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::KappaActivityPhone *a2, CMMsl::KappaActivityPhone *a3)
{
  v3 = *(this + 35);
  *(this + 35) = *(a2 + 35);
  *(a2 + 35) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  v5 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  LODWORD(v6) = *(this + 30);
  *(this + 30) = *(a2 + 30);
  *(a2 + 30) = v6;
  v7 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v7;
  v8 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v8;
  v10 = *(this + 12);
  v9 = *(this + 13);
  v11 = *(a2 + 13);
  *(this + 12) = *(a2 + 12);
  *(this + 13) = v11;
  *(a2 + 12) = v10;
  *(a2 + 13) = v9;
  v12 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v12;
  v13 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v13;
  v14 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v14;
  v15 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v15;
  v16 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v16;
  v17 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v17;
  v18 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v18;
  v19 = *(this + 33);
  *(this + 33) = *(a2 + 33);
  *(a2 + 33) = v19;
  v20 = *(this + 31);
  *(this + 31) = *(a2 + 31);
  *(a2 + 31) = v20;
  v21 = *(this + 32);
  *(this + 32) = *(a2 + 32);
  *(a2 + 32) = v21;
  result = *(this + 34);
  *(this + 34) = *(a2 + 34);
  *(a2 + 34) = result;
  return result;
}

uint64_t CMMsl::KappaActivityPhone::KappaActivityPhone(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041F538;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  v4 = a1 + 56;
  *(a1 + 8) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 140) = *(a2 + 140);
  *(a2 + 140) = 0;
  *(a1 + 104) = *(a2 + 104);
  sub_1002A2DD0(a1 + 8, (a2 + 8));
  *(a1 + 120) = *(a2 + 120);
  sub_1002A2DD0(a1 + 80, (a2 + 80));
  *(a1 + 112) = *(a2 + 112);
  sub_1002A2DD0(a1 + 32, (a2 + 32));
  sub_1002A2DD0(v4, (a2 + 56));
  *(a1 + 132) = *(a2 + 132);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  return a1;
}

CMMsl *CMMsl::KappaActivityPhone::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::KappaActivityPhone::KappaActivityPhone(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::KappaActivityPhone::~KappaActivityPhone(v5);
  }

  return a1;
}

uint64_t CMMsl::KappaActivityPhone::formatText(CMMsl::KappaActivityPhone *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if ((*(this + 140) & 4) != 0)
  {
    PB::TextFormatter::format(a2, "armTimeActivityHints", *(this + 30));
  }

  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(a2, "armTimeImuConfidences", v7);
  }

  v8 = *(this + 140);
  if ((v8 & 8) != 0)
  {
    PB::TextFormatter::format(a2, "sessionBtHintPercentage", *(this + 31));
    v8 = *(this + 140);
    if ((v8 & 0x10) == 0)
    {
LABEL_7:
      if ((v8 & 0x20) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*(this + 140) & 0x10) == 0)
  {
    goto LABEL_7;
  }

  PB::TextFormatter::format(a2, "sessionGpsHintPercentage", *(this + 32));
  if ((*(this + 140) & 0x20) != 0)
  {
LABEL_8:
    PB::TextFormatter::format(a2, "sessionImuHintPercentage", *(this + 33));
  }

LABEL_9:
  v9 = *(this + 4);
  v10 = *(this + 5);
  while (v9 != v10)
  {
    v11 = *v9++;
    PB::TextFormatter::format(a2, "sessionSwivelAngleDegHistogram", v11);
  }

  v12 = *(this + 7);
  v13 = *(this + 8);
  while (v12 != v13)
  {
    v14 = *v12++;
    PB::TextFormatter::format(a2, "sessionTiltAngleDegHistogram", v14);
  }

  v15 = *(this + 140);
  if ((v15 & 0x40) != 0)
  {
    PB::TextFormatter::format(a2, "sessionWifiHintPercentage", *(this + 34));
    v15 = *(this + 140);
    if ((v15 & 1) == 0)
    {
LABEL_15:
      if ((v15 & 2) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else if ((*(this + 140) & 1) == 0)
  {
    goto LABEL_15;
  }

  PB::TextFormatter::format(a2, "timestamp", *(this + 13));
  if ((*(this + 140) & 2) != 0)
  {
LABEL_16:
    PB::TextFormatter::format(a2, "triggerTimeLastHighImuDrivingConfidenceTimestamp", *(this + 14));
  }

LABEL_17:
  v16 = *(this + 10);
  v17 = *(this + 11);
  while (v16 != v17)
  {
    v18 = *v16++;
    PB::TextFormatter::format(a2, "windowAfterArmImuConfidences", v18);
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::KappaActivityPhone::readFrom(CMMsl::KappaActivityPhone *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v14 = 0;
        v15 = 0;
        v10 = 0;
        v16 = v3 >= v2;
        v17 = v3 - v2;
        if (!v16)
        {
          v17 = 0;
        }

        v18 = (v7 + v2);
        v19 = v2 + 1;
        while (v17)
        {
          v20 = *v18;
          *(a2 + 1) = v19;
          v10 |= (v20 & 0x7F) << v14;
          if ((v20 & 0x80) == 0)
          {
            if (v4)
            {
              v10 = 0;
            }

            goto LABEL_21;
          }

          v14 += 7;
          --v17;
          ++v18;
          ++v19;
          v92 = v15++ > 8;
          if (v92)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        v4 = 1;
        *(a2 + 24) = 1;
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v2);
      v12 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v12;
        v13 = *v11++;
        v10 |= (v13 & 0x7F) << v8;
        if ((v13 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        ++v12;
        v92 = v9++ > 8;
        if (v92)
        {
          goto LABEL_18;
        }
      }

LABEL_21:
      v21 = v10 & 7;
      if (v4 & 1 | (v21 == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) <= 5)
      {
        if (v22 <= 2)
        {
          if (v22 == 1)
          {
            *(this + 140) |= 1u;
            v51 = *(a2 + 1);
            v50 = *(a2 + 2);
            v52 = *a2;
            if (v51 > 0xFFFFFFFFFFFFFFF5 || v51 + 10 > v50)
            {
              v139 = 0;
              v140 = 0;
              v55 = 0;
              v16 = v50 >= v51;
              v141 = v50 - v51;
              if (!v16)
              {
                v141 = 0;
              }

              v142 = (v52 + v51);
              v143 = v51 + 1;
              while (1)
              {
                if (!v141)
                {
                  v55 = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_261;
                }

                v144 = *v142;
                *(a2 + 1) = v143;
                v55 |= (v144 & 0x7F) << v139;
                if ((v144 & 0x80) == 0)
                {
                  break;
                }

                v139 += 7;
                --v141;
                ++v142;
                ++v143;
                v92 = v140++ > 8;
                if (v92)
                {
LABEL_196:
                  v55 = 0;
                  goto LABEL_261;
                }
              }

              if (*(a2 + 24))
              {
                v55 = 0;
              }
            }

            else
            {
              v53 = 0;
              v54 = 0;
              v55 = 0;
              v56 = (v52 + v51);
              v57 = v51 + 1;
              while (1)
              {
                *(a2 + 1) = v57;
                v58 = *v56++;
                v55 |= (v58 & 0x7F) << v53;
                if ((v58 & 0x80) == 0)
                {
                  break;
                }

                v53 += 7;
                ++v57;
                v92 = v54++ > 8;
                if (v92)
                {
                  goto LABEL_196;
                }
              }
            }

LABEL_261:
            *(this + 13) = v55;
            goto LABEL_317;
          }

          if (v22 == 2)
          {
            if (v21 == 2)
            {
              if (PB::Reader::placeMark())
              {
                goto LABEL_323;
              }

              v34 = *(a2 + 1);
              v35 = *(a2 + 2);
              while (v34 < v35 && (*(a2 + 24) & 1) == 0)
              {
                v37 = *(this + 2);
                v36 = *(this + 3);
                if (v37 >= v36)
                {
                  v39 = *(this + 1);
                  v40 = v37 - v39;
                  v41 = (v37 - v39) >> 2;
                  v42 = v41 + 1;
                  if ((v41 + 1) >> 62)
                  {
                    goto LABEL_324;
                  }

                  v43 = v36 - v39;
                  if (v43 >> 1 > v42)
                  {
                    v42 = v43 >> 1;
                  }

                  if (v43 >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v44 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v44 = v42;
                  }

                  if (v44)
                  {
                    sub_10002290C(this + 8, v44);
                  }

                  v45 = (v37 - v39) >> 2;
                  v46 = (4 * v41);
                  v47 = (4 * v41 - 4 * v45);
                  *v46 = 0;
                  v38 = v46 + 1;
                  memcpy(v47, v39, v40);
                  v48 = *(this + 1);
                  *(this + 1) = v47;
                  *(this + 2) = v38;
                  *(this + 3) = 0;
                  if (v48)
                  {
                    operator delete(v48);
                  }
                }

                else
                {
                  *v37 = 0;
                  v38 = v37 + 4;
                }

                *(this + 2) = v38;
                v49 = *(a2 + 1);
                if (v49 > 0xFFFFFFFFFFFFFFFBLL || v49 + 4 > *(a2 + 2))
                {
LABEL_222:
                  *(a2 + 24) = 1;
                  break;
                }

                *(v38 - 1) = *(*a2 + v49);
                v35 = *(a2 + 2);
                v34 = *(a2 + 1) + 4;
                *(a2 + 1) = v34;
              }

LABEL_223:
              PB::Reader::recallMark();
              goto LABEL_317;
            }

            v146 = *(this + 2);
            v145 = *(this + 3);
            if (v146 >= v145)
            {
              v167 = *(this + 1);
              v168 = v146 - v167;
              v169 = (v146 - v167) >> 2;
              v170 = v169 + 1;
              if ((v169 + 1) >> 62)
              {
                goto LABEL_324;
              }

              v171 = v145 - v167;
              if (v171 >> 1 > v170)
              {
                v170 = v171 >> 1;
              }

              if (v171 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v172 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v172 = v170;
              }

              if (v172)
              {
                sub_10002290C(this + 8, v172);
              }

              v191 = (v146 - v167) >> 2;
              v192 = (4 * v169);
              v193 = (4 * v169 - 4 * v191);
              *v192 = 0;
              v147 = v192 + 1;
              memcpy(v193, v167, v168);
              v194 = *(this + 1);
              *(this + 1) = v193;
              *(this + 2) = v147;
              *(this + 3) = 0;
              if (v194)
              {
                operator delete(v194);
              }
            }

            else
            {
              *v146 = 0;
              v147 = v146 + 4;
            }

            *(this + 2) = v147;
LABEL_274:
            v199 = *(a2 + 1);
            if (v199 > 0xFFFFFFFFFFFFFFFBLL || v199 + 4 > *(a2 + 2))
            {
LABEL_276:
              *(a2 + 24) = 1;
              goto LABEL_317;
            }

            *(v147 - 1) = *(*a2 + v199);
LABEL_278:
            *(a2 + 1) += 4;
            goto LABEL_317;
          }
        }

        else
        {
          switch(v22)
          {
            case 3:
              *(this + 140) |= 4u;
              v104 = *(a2 + 1);
              v103 = *(a2 + 2);
              v105 = *a2;
              if (v104 > 0xFFFFFFFFFFFFFFF5 || v104 + 10 > v103)
              {
                v159 = 0;
                v160 = 0;
                v108 = 0;
                v16 = v103 >= v104;
                v161 = v103 - v104;
                if (!v16)
                {
                  v161 = 0;
                }

                v162 = (v105 + v104);
                v163 = v104 + 1;
                while (1)
                {
                  if (!v161)
                  {
                    LODWORD(v108) = 0;
                    *(a2 + 24) = 1;
                    goto LABEL_267;
                  }

                  v164 = *v162;
                  *(a2 + 1) = v163;
                  v108 |= (v164 & 0x7F) << v159;
                  if ((v164 & 0x80) == 0)
                  {
                    break;
                  }

                  v159 += 7;
                  --v161;
                  ++v162;
                  ++v163;
                  v92 = v160++ > 8;
                  if (v92)
                  {
LABEL_218:
                    LODWORD(v108) = 0;
                    goto LABEL_267;
                  }
                }

                if (*(a2 + 24))
                {
                  LODWORD(v108) = 0;
                }
              }

              else
              {
                v106 = 0;
                v107 = 0;
                v108 = 0;
                v109 = (v105 + v104);
                v110 = v104 + 1;
                while (1)
                {
                  *(a2 + 1) = v110;
                  v111 = *v109++;
                  v108 |= (v111 & 0x7F) << v106;
                  if ((v111 & 0x80) == 0)
                  {
                    break;
                  }

                  v106 += 7;
                  ++v110;
                  v92 = v107++ > 8;
                  if (v92)
                  {
                    goto LABEL_218;
                  }
                }
              }

LABEL_267:
              *(this + 30) = v108;
              goto LABEL_317;
            case 4:
              if (v21 == 2)
              {
                if (PB::Reader::placeMark())
                {
                  goto LABEL_323;
                }

                v59 = *(a2 + 1);
                v60 = *(a2 + 2);
                while (v59 < v60 && (*(a2 + 24) & 1) == 0)
                {
                  v62 = *(this + 11);
                  v61 = *(this + 12);
                  if (v62 >= v61)
                  {
                    v64 = *(this + 10);
                    v65 = v62 - v64;
                    v66 = (v62 - v64) >> 2;
                    v67 = v66 + 1;
                    if ((v66 + 1) >> 62)
                    {
                      goto LABEL_324;
                    }

                    v68 = v61 - v64;
                    if (v68 >> 1 > v67)
                    {
                      v67 = v68 >> 1;
                    }

                    if (v68 >= 0x7FFFFFFFFFFFFFFCLL)
                    {
                      v69 = 0x3FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v69 = v67;
                    }

                    if (v69)
                    {
                      sub_10002290C(this + 80, v69);
                    }

                    v70 = (v62 - v64) >> 2;
                    v71 = (4 * v66);
                    v72 = (4 * v66 - 4 * v70);
                    *v71 = 0;
                    v63 = v71 + 1;
                    memcpy(v72, v64, v65);
                    v73 = *(this + 10);
                    *(this + 10) = v72;
                    *(this + 11) = v63;
                    *(this + 12) = 0;
                    if (v73)
                    {
                      operator delete(v73);
                    }
                  }

                  else
                  {
                    *v62 = 0;
                    v63 = v62 + 4;
                  }

                  *(this + 11) = v63;
                  v74 = *(a2 + 1);
                  if (v74 > 0xFFFFFFFFFFFFFFFBLL || v74 + 4 > *(a2 + 2))
                  {
                    goto LABEL_222;
                  }

                  *(v63 - 1) = *(*a2 + v74);
                  v60 = *(a2 + 2);
                  v59 = *(a2 + 1) + 4;
                  *(a2 + 1) = v59;
                }

                goto LABEL_223;
              }

              v149 = *(this + 11);
              v148 = *(this + 12);
              if (v149 >= v148)
              {
                v173 = *(this + 10);
                v174 = v149 - v173;
                v175 = (v149 - v173) >> 2;
                v176 = v175 + 1;
                if ((v175 + 1) >> 62)
                {
LABEL_324:
                  sub_10000CD24();
                }

                v177 = v148 - v173;
                if (v177 >> 1 > v176)
                {
                  v176 = v177 >> 1;
                }

                if (v177 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v178 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v178 = v176;
                }

                if (v178)
                {
                  sub_10002290C(this + 80, v178);
                }

                v195 = (v149 - v173) >> 2;
                v196 = (4 * v175);
                v197 = (4 * v175 - 4 * v195);
                *v196 = 0;
                v147 = v196 + 1;
                memcpy(v197, v173, v174);
                v198 = *(this + 10);
                *(this + 10) = v197;
                *(this + 11) = v147;
                *(this + 12) = 0;
                if (v198)
                {
                  operator delete(v198);
                }
              }

              else
              {
                *v149 = 0;
                v147 = v149 + 4;
              }

              *(this + 11) = v147;
              goto LABEL_274;
            case 5:
              *(this + 140) |= 2u;
              v25 = *(a2 + 1);
              v24 = *(a2 + 2);
              v26 = *a2;
              if (v25 > 0xFFFFFFFFFFFFFFF5 || v25 + 10 > v24)
              {
                v153 = 0;
                v154 = 0;
                v29 = 0;
                v16 = v24 >= v25;
                v155 = v24 - v25;
                if (!v16)
                {
                  v155 = 0;
                }

                v156 = (v26 + v25);
                v157 = v25 + 1;
                while (1)
                {
                  if (!v155)
                  {
                    v29 = 0;
                    *(a2 + 24) = 1;
                    goto LABEL_264;
                  }

                  v158 = *v156;
                  *(a2 + 1) = v157;
                  v29 |= (v158 & 0x7F) << v153;
                  if ((v158 & 0x80) == 0)
                  {
                    break;
                  }

                  v153 += 7;
                  --v155;
                  ++v156;
                  ++v157;
                  v92 = v154++ > 8;
                  if (v92)
                  {
LABEL_210:
                    v29 = 0;
                    goto LABEL_264;
                  }
                }

                if (*(a2 + 24))
                {
                  v29 = 0;
                }
              }

              else
              {
                v27 = 0;
                v28 = 0;
                v29 = 0;
                v30 = (v26 + v25);
                v31 = v25 + 1;
                while (1)
                {
                  *(a2 + 1) = v31;
                  v32 = *v30++;
                  v29 |= (v32 & 0x7F) << v27;
                  if ((v32 & 0x80) == 0)
                  {
                    break;
                  }

                  v27 += 7;
                  ++v31;
                  v92 = v28++ > 8;
                  if (v92)
                  {
                    goto LABEL_210;
                  }
                }
              }

LABEL_264:
              *(this + 14) = v29;
              goto LABEL_317;
          }
        }
      }

      else if (v22 > 8)
      {
        switch(v22)
        {
          case 9:
            *(this + 140) |= 8u;
            v138 = *(a2 + 1);
            if (v138 > 0xFFFFFFFFFFFFFFFBLL || v138 + 4 > *(a2 + 2))
            {
              goto LABEL_276;
            }

            *(this + 31) = *(*a2 + v138);
            goto LABEL_278;
          case 0xA:
            *(this + 140) |= 0x10u;
            v102 = *(a2 + 1);
            if (v102 > 0xFFFFFFFFFFFFFFFBLL || v102 + 4 > *(a2 + 2))
            {
              goto LABEL_276;
            }

            *(this + 32) = *(*a2 + v102);
            goto LABEL_278;
          case 0xB:
            *(this + 140) |= 0x40u;
            v33 = *(a2 + 1);
            if (v33 > 0xFFFFFFFFFFFFFFFBLL || v33 + 4 > *(a2 + 2))
            {
              goto LABEL_276;
            }

            *(this + 34) = *(*a2 + v33);
            goto LABEL_278;
        }
      }

      else
      {
        switch(v22)
        {
          case 6:
            if (v21 == 2)
            {
              if (PB::Reader::placeMark())
              {
                goto LABEL_323;
              }

              if (*(a2 + 1) < *(a2 + 2) && (*(a2 + 24) & 1) == 0)
              {
                v75 = *(this + 5);
                while (1)
                {
                  v112 = *(this + 6);
                  if (v75 >= v112)
                  {
                    v113 = *(this + 4);
                    v114 = v75 - v113;
                    v115 = (v75 - v113) >> 2;
                    v116 = v115 + 1;
                    if ((v115 + 1) >> 62)
                    {
                      goto LABEL_325;
                    }

                    v117 = v112 - v113;
                    if (v117 >> 1 > v116)
                    {
                      v116 = v117 >> 1;
                    }

                    if (v117 >= 0x7FFFFFFFFFFFFFFCLL)
                    {
                      v118 = 0x3FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v118 = v116;
                    }

                    if (v118)
                    {
                      sub_10002290C(this + 32, v118);
                    }

                    v119 = (v75 - v113) >> 2;
                    v120 = (4 * v115);
                    v121 = (4 * v115 - 4 * v119);
                    *v120 = 0;
                    v75 = (v120 + 1);
                    memcpy(v121, v113, v114);
                    v122 = *(this + 4);
                    *(this + 4) = v121;
                    *(this + 5) = v75;
                    *(this + 6) = 0;
                    if (v122)
                    {
                      operator delete(v122);
                    }
                  }

                  else
                  {
                    *v75 = 0;
                    v75 += 4;
                  }

                  *(this + 5) = v75;
                  v124 = *(a2 + 1);
                  v123 = *(a2 + 2);
                  v125 = *a2;
                  v126 = 0;
                  v127 = 0;
                  if (v124 > 0xFFFFFFFFFFFFFFF5 || v124 + 10 > v123)
                  {
                    break;
                  }

                  v134 = 0;
                  v135 = (v125 + v124);
                  v136 = v124 + 1;
                  while (1)
                  {
                    v132 = v136;
                    *(a2 + 1) = v136;
                    v137 = *v135++;
                    v134 |= (v137 & 0x7F) << v126;
                    if ((v137 & 0x80) == 0)
                    {
                      break;
                    }

                    v126 += 7;
                    ++v136;
                    v92 = v127++ > 8;
                    if (v92)
                    {
                      goto LABEL_178;
                    }
                  }

LABEL_181:
                  *(v75 - 1) = v134;
                  if (v132 >= v123 || (*(a2 + 24) & 1) != 0)
                  {
                    goto LABEL_223;
                  }
                }

                v134 = 0;
                v129 = v123 - v124;
                if (v123 < v124)
                {
                  v129 = 0;
                }

                v130 = (v125 + v124);
                v131 = v124 + 1;
                while (v129)
                {
                  v132 = v131;
                  v133 = *v130;
                  *(a2 + 1) = v132;
                  v134 |= (v133 & 0x7F) << v126;
                  if ((v133 & 0x80) == 0)
                  {
                    if (*(a2 + 24))
                    {
                      LODWORD(v134) = 0;
                    }

                    goto LABEL_181;
                  }

                  v126 += 7;
                  --v129;
                  ++v130;
                  v131 = v132 + 1;
                  v92 = v127++ > 8;
                  if (v92)
                  {
LABEL_178:
                    LODWORD(v134) = 0;
                    goto LABEL_181;
                  }
                }

LABEL_221:
                *(a2 + 24) = 1;
                *(v75 - 1) = 0;
              }

              goto LABEL_223;
            }

            v166 = *(this + 5);
            v165 = *(this + 6);
            if (v166 >= v165)
            {
              v185 = *(this + 4);
              v186 = v166 - v185;
              v187 = (v166 - v185) >> 2;
              v188 = v187 + 1;
              if ((v187 + 1) >> 62)
              {
LABEL_325:
                sub_10000CD24();
              }

              v189 = v165 - v185;
              if (v189 >> 1 > v188)
              {
                v188 = v189 >> 1;
              }

              if (v189 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v190 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v190 = v188;
              }

              if (v190)
              {
                sub_10002290C(this + 32, v190);
              }

              v219 = (v166 - v185) >> 2;
              v220 = (4 * v187);
              v221 = (4 * v187 - 4 * v219);
              *v220 = 0;
              v152 = v220 + 1;
              memcpy(v221, v185, v186);
              v222 = *(this + 4);
              *(this + 4) = v221;
              *(this + 5) = v152;
              *(this + 6) = 0;
              if (v222)
              {
                operator delete(v222);
              }
            }

            else
            {
              *v166 = 0;
              v152 = v166 + 4;
            }

            *(this + 5) = v152;
            v224 = *(a2 + 1);
            v223 = *(a2 + 2);
            v225 = *a2;
            if (v224 <= 0xFFFFFFFFFFFFFFF5 && v224 + 10 <= v223)
            {
              v226 = 0;
              v227 = 0;
              v209 = 0;
              v228 = (v225 + v224);
              v229 = v224 + 1;
              while (1)
              {
                *(a2 + 1) = v229;
                v230 = *v228++;
                v209 |= (v230 & 0x7F) << v226;
                if ((v230 & 0x80) == 0)
                {
                  goto LABEL_316;
                }

                v226 += 7;
                ++v229;
                v92 = v227++ > 8;
                if (v92)
                {
                  goto LABEL_312;
                }
              }
            }

            v231 = 0;
            v232 = 0;
            v209 = 0;
            v16 = v223 >= v224;
            v233 = v223 - v224;
            if (!v16)
            {
              v233 = 0;
            }

            v234 = (v225 + v224);
            v235 = v224 + 1;
            while (v233)
            {
              v236 = *v234;
              *(a2 + 1) = v235;
              v209 |= (v236 & 0x7F) << v231;
              if ((v236 & 0x80) == 0)
              {
LABEL_314:
                if (*(a2 + 24))
                {
                  LODWORD(v209) = 0;
                }

                goto LABEL_316;
              }

              v231 += 7;
              --v233;
              ++v234;
              ++v235;
              v92 = v232++ > 8;
              if (v92)
              {
LABEL_312:
                LODWORD(v209) = 0;
                goto LABEL_316;
              }
            }

            goto LABEL_313;
          case 7:
            if (v21 == 2)
            {
              if (PB::Reader::placeMark())
              {
                goto LABEL_323;
              }

              if (*(a2 + 1) < *(a2 + 2) && (*(a2 + 24) & 1) == 0)
              {
                v75 = *(this + 8);
                do
                {
                  v76 = *(this + 9);
                  if (v75 >= v76)
                  {
                    v77 = *(this + 7);
                    v78 = v75 - v77;
                    v79 = (v75 - v77) >> 2;
                    v80 = v79 + 1;
                    if ((v79 + 1) >> 62)
                    {
                      goto LABEL_325;
                    }

                    v81 = v76 - v77;
                    if (v81 >> 1 > v80)
                    {
                      v80 = v81 >> 1;
                    }

                    if (v81 >= 0x7FFFFFFFFFFFFFFCLL)
                    {
                      v82 = 0x3FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v82 = v80;
                    }

                    if (v82)
                    {
                      sub_10002290C(this + 56, v82);
                    }

                    v83 = (v75 - v77) >> 2;
                    v84 = (4 * v79);
                    v85 = (4 * v79 - 4 * v83);
                    *v84 = 0;
                    v75 = (v84 + 1);
                    memcpy(v85, v77, v78);
                    v86 = *(this + 7);
                    *(this + 7) = v85;
                    *(this + 8) = v75;
                    *(this + 9) = 0;
                    if (v86)
                    {
                      operator delete(v86);
                    }
                  }

                  else
                  {
                    *v75 = 0;
                    v75 += 4;
                  }

                  *(this + 8) = v75;
                  v88 = *(a2 + 1);
                  v87 = *(a2 + 2);
                  v89 = *a2;
                  v90 = 0;
                  v91 = 0;
                  v92 = v88 > 0xFFFFFFFFFFFFFFF5 || v88 + 10 > v87;
                  if (v92)
                  {
                    v98 = 0;
                    v93 = v87 - v88;
                    if (v87 < v88)
                    {
                      v93 = 0;
                    }

                    v94 = (v89 + v88);
                    v95 = v88 + 1;
                    while (1)
                    {
                      if (!v93)
                      {
                        goto LABEL_221;
                      }

                      v96 = v95;
                      v97 = *v94;
                      *(a2 + 1) = v96;
                      v98 |= (v97 & 0x7F) << v90;
                      if ((v97 & 0x80) == 0)
                      {
                        break;
                      }

                      v90 += 7;
                      --v93;
                      ++v94;
                      v95 = v96 + 1;
                      v92 = v91++ > 8;
                      if (v92)
                      {
LABEL_129:
                        LODWORD(v98) = 0;
                        goto LABEL_132;
                      }
                    }

                    if (*(a2 + 24))
                    {
                      LODWORD(v98) = 0;
                    }
                  }

                  else
                  {
                    v98 = 0;
                    v99 = (v89 + v88);
                    v100 = v88 + 1;
                    while (1)
                    {
                      v96 = v100;
                      *(a2 + 1) = v100;
                      v101 = *v99++;
                      v98 |= (v101 & 0x7F) << v90;
                      if ((v101 & 0x80) == 0)
                      {
                        break;
                      }

                      v90 += 7;
                      ++v100;
                      v92 = v91++ > 8;
                      if (v92)
                      {
                        goto LABEL_129;
                      }
                    }
                  }

LABEL_132:
                  *(v75 - 1) = v98;
                }

                while (v96 < v87 && (*(a2 + 24) & 1) == 0);
              }

              goto LABEL_223;
            }

            v151 = *(this + 8);
            v150 = *(this + 9);
            if (v151 >= v150)
            {
              v179 = *(this + 7);
              v180 = v151 - v179;
              v181 = (v151 - v179) >> 2;
              v182 = v181 + 1;
              if ((v181 + 1) >> 62)
              {
                goto LABEL_325;
              }

              v183 = v150 - v179;
              if (v183 >> 1 > v182)
              {
                v182 = v183 >> 1;
              }

              if (v183 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v184 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v184 = v182;
              }

              if (v184)
              {
                sub_10002290C(this + 56, v184);
              }

              v200 = (v151 - v179) >> 2;
              v201 = (4 * v181);
              v202 = (4 * v181 - 4 * v200);
              *v201 = 0;
              v152 = v201 + 1;
              memcpy(v202, v179, v180);
              v203 = *(this + 7);
              *(this + 7) = v202;
              *(this + 8) = v152;
              *(this + 9) = 0;
              if (v203)
              {
                operator delete(v203);
              }
            }

            else
            {
              *v151 = 0;
              v152 = v151 + 4;
            }

            *(this + 8) = v152;
            v205 = *(a2 + 1);
            v204 = *(a2 + 2);
            v206 = *a2;
            if (v205 <= 0xFFFFFFFFFFFFFFF5 && v205 + 10 <= v204)
            {
              v207 = 0;
              v208 = 0;
              v209 = 0;
              v210 = (v206 + v205);
              v211 = v205 + 1;
              while (1)
              {
                *(a2 + 1) = v211;
                v212 = *v210++;
                v209 |= (v212 & 0x7F) << v207;
                if ((v212 & 0x80) == 0)
                {
                  goto LABEL_316;
                }

                v207 += 7;
                ++v211;
                v92 = v208++ > 8;
                if (v92)
                {
                  goto LABEL_312;
                }
              }
            }

            v213 = 0;
            v214 = 0;
            v209 = 0;
            v16 = v204 >= v205;
            v215 = v204 - v205;
            if (!v16)
            {
              v215 = 0;
            }

            v216 = (v206 + v205);
            v217 = v205 + 1;
            while (v215)
            {
              v218 = *v216;
              *(a2 + 1) = v217;
              v209 |= (v218 & 0x7F) << v213;
              if ((v218 & 0x80) == 0)
              {
                goto LABEL_314;
              }

              v213 += 7;
              --v215;
              ++v216;
              ++v217;
              v92 = v214++ > 8;
              if (v92)
              {
                goto LABEL_312;
              }
            }

LABEL_313:
            LODWORD(v209) = 0;
            *(a2 + 24) = 1;
LABEL_316:
            *(v152 - 1) = v209;
            goto LABEL_317;
          case 8:
            *(this + 140) |= 0x20u;
            v23 = *(a2 + 1);
            if (v23 > 0xFFFFFFFFFFFFFFFBLL || v23 + 4 > *(a2 + 2))
            {
              goto LABEL_276;
            }

            *(this + 33) = *(*a2 + v23);
            goto LABEL_278;
        }
      }

      if ((PB::Reader::skip(a2, v22, v21, 0) & 1) == 0)
      {
LABEL_323:
        v237 = 0;
        return v237 & 1;
      }

LABEL_317:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

  v237 = v4 ^ 1;
  return v237 & 1;
}

uint64_t CMMsl::KappaActivityPhone::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if (*(this + 140))
  {
    this = PB::Writer::writeVarInt(a2, *(this + 104), 1u);
  }

  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  while (v4 != v5)
  {
    v6 = *v4++;
    this = PB::Writer::write(a2, v6, 2u);
  }

  if ((*(v3 + 140) & 4) != 0)
  {
    this = PB::Writer::writeVarInt(a2, *(v3 + 120), 3u);
  }

  v7 = *(v3 + 80);
  v8 = *(v3 + 88);
  while (v7 != v8)
  {
    v9 = *v7++;
    this = PB::Writer::write(a2, v9, 4u);
  }

  if ((*(v3 + 140) & 2) != 0)
  {
    this = PB::Writer::writeVarInt(a2, *(v3 + 112), 5u);
  }

  v10 = *(v3 + 32);
  v11 = *(v3 + 40);
  while (v10 != v11)
  {
    v12 = *v10++;
    this = PB::Writer::writeVarInt(a2, v12, 6u);
  }

  v13 = *(v3 + 56);
  v14 = *(v3 + 64);
  while (v13 != v14)
  {
    v15 = *v13++;
    this = PB::Writer::writeVarInt(a2, v15, 7u);
  }

  v16 = *(v3 + 140);
  if ((v16 & 0x20) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 132), 8u);
    v16 = *(v3 + 140);
    if ((v16 & 8) == 0)
    {
LABEL_21:
      if ((v16 & 0x10) == 0)
      {
        goto LABEL_22;
      }

LABEL_26:
      this = PB::Writer::write(a2, *(v3 + 128), 0xAu);
      if ((*(v3 + 140) & 0x40) == 0)
      {
        return this;
      }

      goto LABEL_27;
    }
  }

  else if ((*(v3 + 140) & 8) == 0)
  {
    goto LABEL_21;
  }

  this = PB::Writer::write(a2, *(v3 + 124), 9u);
  v16 = *(v3 + 140);
  if ((v16 & 0x10) != 0)
  {
    goto LABEL_26;
  }

LABEL_22:
  if ((v16 & 0x40) == 0)
  {
    return this;
  }

LABEL_27:
  v17 = *(v3 + 136);

  return PB::Writer::write(a2, v17, 0xBu);
}

uint64_t CMMsl::KappaActivityPhone::hash_value(CMMsl::KappaActivityPhone *this)
{
  if (*(this + 140))
  {
    v2 = *(this + 13);
  }

  else
  {
    v2 = 0;
  }

  v3 = *(this + 1);
  v4 = *(this + 2);
  v5 = PBHashBytes();
  if ((*(this + 140) & 4) != 0)
  {
    v6 = *(this + 30);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(this + 10);
  v8 = *(this + 11);
  v9 = PBHashBytes();
  if ((*(this + 140) & 2) != 0)
  {
    v10 = *(this + 14);
  }

  else
  {
    v10 = 0;
  }

  v11 = *(this + 4);
  v12 = *(this + 5);
  v13 = PBHashBytes();
  v14 = *(this + 7);
  v15 = *(this + 8);
  v16 = PBHashBytes();
  if ((*(this + 140) & 0x20) == 0)
  {
    v17 = 0;
    if ((*(this + 140) & 8) != 0)
    {
      goto LABEL_12;
    }

LABEL_24:
    v19 = 0;
    if ((*(this + 140) & 0x10) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_25;
  }

  v24 = *(this + 33);
  v17 = LODWORD(v24);
  if (v24 == 0.0)
  {
    v17 = 0;
  }

  if ((*(this + 140) & 8) == 0)
  {
    goto LABEL_24;
  }

LABEL_12:
  v18 = *(this + 31);
  v19 = LODWORD(v18);
  if (v18 == 0.0)
  {
    v19 = 0;
  }

  if ((*(this + 140) & 0x10) != 0)
  {
LABEL_15:
    v20 = *(this + 32);
    v21 = LODWORD(v20);
    if (v20 == 0.0)
    {
      v21 = 0;
    }

    if ((*(this + 140) & 0x40) != 0)
    {
      goto LABEL_18;
    }

LABEL_26:
    v23 = 0;
    return v5 ^ v2 ^ v6 ^ v9 ^ v10 ^ v13 ^ v16 ^ v17 ^ v19 ^ v21 ^ v23;
  }

LABEL_25:
  v21 = 0;
  if ((*(this + 140) & 0x40) == 0)
  {
    goto LABEL_26;
  }

LABEL_18:
  v22 = *(this + 34);
  v23 = LODWORD(v22);
  if (v22 == 0.0)
  {
    v23 = 0;
  }

  return v5 ^ v2 ^ v6 ^ v9 ^ v10 ^ v13 ^ v16 ^ v17 ^ v19 ^ v21 ^ v23;
}

void CMMsl::KappaActivityWatch::~KappaActivityWatch(CMMsl::KappaActivityWatch *this)
{
  *this = off_10041F570;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::KappaActivityWatch::~KappaActivityWatch(this);

  operator delete();
}

CMMsl::KappaActivityWatch *CMMsl::KappaActivityWatch::KappaActivityWatch(CMMsl::KappaActivityWatch *this, const CMMsl::KappaActivityWatch *a2)
{
  *this = off_10041F570;
  *(this + 8) = 0u;
  v4 = (this + 8);
  *(this + 26) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  if (*(a2 + 52))
  {
    v5 = *(a2 + 7);
    *(this + 52) = 1;
    *(this + 7) = v5;
  }

  if (this != a2)
  {
    sub_100035D1C(this + 4, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 2);
  }

  v6 = *(a2 + 52);
  if ((v6 & 0x100) != 0)
  {
    v12 = *(a2 + 25);
    *(this + 52) |= 0x100u;
    *(this + 25) = v12;
    v6 = *(a2 + 52);
    if ((v6 & 0x40) == 0)
    {
LABEL_7:
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_21;
    }
  }

  else if ((v6 & 0x40) == 0)
  {
    goto LABEL_7;
  }

  v13 = *(a2 + 23);
  *(this + 52) |= 0x40u;
  *(this + 23) = v13;
  v6 = *(a2 + 52);
  if ((v6 & 0x80) == 0)
  {
LABEL_8:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  v14 = *(a2 + 24);
  *(this + 52) |= 0x80u;
  *(this + 24) = v14;
  v6 = *(a2 + 52);
  if ((v6 & 0x20) == 0)
  {
LABEL_9:
    if ((v6 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  v15 = *(a2 + 22);
  *(this + 52) |= 0x20u;
  *(this + 22) = v15;
  v6 = *(a2 + 52);
  if ((v6 & 2) == 0)
  {
LABEL_10:
    if ((v6 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  v16 = *(a2 + 8);
  *(this + 52) |= 2u;
  *(this + 8) = v16;
  if ((*(a2 + 52) & 4) != 0)
  {
LABEL_11:
    v7 = *(a2 + 9);
    *(this + 52) |= 4u;
    *(this + 9) = v7;
  }

LABEL_12:
  if (this != a2)
  {
    sub_100035D1C(v4, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 2);
  }

  v8 = *(a2 + 52);
  if ((v8 & 0x10) != 0)
  {
    v9 = *(a2 + 21);
    *(this + 52) |= 0x10u;
    *(this + 21) = v9;
    v8 = *(a2 + 52);
  }

  if ((v8 & 8) != 0)
  {
    v10 = *(a2 + 20);
    *(this + 52) |= 8u;
    *(this + 20) = v10;
  }

  return this;
}

CMMsl *CMMsl::KappaActivityWatch::operator=(CMMsl *a1, const CMMsl::KappaActivityWatch *a2)
{
  if (a1 != a2)
  {
    CMMsl::KappaActivityWatch::KappaActivityWatch(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::KappaActivityWatch::~KappaActivityWatch(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::KappaActivityWatch *a2, CMMsl::KappaActivityWatch *a3)
{
  v3 = *(this + 26);
  *(this + 26) = *(a2 + 26);
  *(a2 + 26) = v3;
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v5;
  v7 = *(this + 6);
  v6 = *(this + 7);
  v8 = *(a2 + 7);
  *(this + 6) = *(a2 + 6);
  *(this + 7) = v8;
  *(a2 + 6) = v7;
  *(a2 + 7) = v6;
  v9 = *(this + 25);
  *(this + 25) = *(a2 + 25);
  *(a2 + 25) = v9;
  v10 = *(this + 23);
  *(this + 23) = *(a2 + 23);
  *(a2 + 23) = v10;
  v11 = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v11;
  LODWORD(v6) = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v6;
  v12 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v12;
  v13 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v13;
  v14 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v14;
  v15 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v15;
  v16 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v16;
  v17 = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v17;
  result = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = result;
  return result;
}

uint64_t CMMsl::KappaActivityWatch::KappaActivityWatch(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041F570;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  v4 = a1 + 8;
  *(a1 + 40) = 0u;
  *(a1 + 104) = *(a2 + 104);
  *(a2 + 104) = 0;
  *(a1 + 56) = *(a2 + 56);
  sub_1002A2DD0(a1 + 32, (a2 + 32));
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  sub_1002A2DD0(v4, (a2 + 8));
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

CMMsl *CMMsl::KappaActivityWatch::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::KappaActivityWatch::KappaActivityWatch(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::KappaActivityWatch::~KappaActivityWatch(v5);
  }

  return a1;
}

uint64_t CMMsl::KappaActivityWatch::formatText(CMMsl::KappaActivityWatch *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 52);
  if ((v5 & 8) != 0)
  {
    PB::TextFormatter::format(a2, "sessionGreenFieldPercentage", *(this + 20));
    v5 = *(this + 52);
  }

  if ((v5 & 0x10) != 0)
  {
    PB::TextFormatter::format(a2, "sessionHighRotationPercentage", *(this + 21));
  }

  v6 = *(this + 1);
  v7 = *(this + 2);
  while (v6 != v7)
  {
    v8 = *v6++;
    PB::TextFormatter::format(a2, "sessionMeanPoseAngleXHistogram", v8);
  }

  v9 = *(this + 52);
  if (v9)
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 7));
    v9 = *(this + 52);
    if ((v9 & 0x20) == 0)
    {
LABEL_9:
      if ((v9 & 2) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_22;
    }
  }

  else if ((v9 & 0x20) == 0)
  {
    goto LABEL_9;
  }

  PB::TextFormatter::format(a2, "triggerTimeInternalDrivingState", *(this + 22));
  v9 = *(this + 52);
  if ((v9 & 2) == 0)
  {
LABEL_10:
    if ((v9 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(a2, "triggerTimeLastHighElevationGainTimestamp", *(this + 8));
  v9 = *(this + 52);
  if ((v9 & 4) == 0)
  {
LABEL_11:
    if ((v9 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(a2, "triggerTimeLastHighImuDrivingConfidenceTimestamp", *(this + 9));
  v9 = *(this + 52);
  if ((v9 & 0x40) == 0)
  {
LABEL_12:
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(a2, "windowAfterArmGreenFieldPercentage", *(this + 23));
  v9 = *(this + 52);
  if ((v9 & 0x80) == 0)
  {
LABEL_13:
    if ((v9 & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_25:
  PB::TextFormatter::format(a2, "windowAfterArmHighImuDrivingConfidencePercentage", *(this + 24));
  if ((*(this + 52) & 0x100) != 0)
  {
LABEL_14:
    PB::TextFormatter::format(a2, "windowAfterArmHighRotationPercentage", *(this + 25));
  }

LABEL_15:
  v10 = *(this + 4);
  v11 = *(this + 5);
  while (v10 != v11)
  {
    v12 = *v10++;
    PB::TextFormatter::format(a2, "windowAfterArmMeanPoseAngleXHistogram", v12);
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::KappaActivityWatch::readFrom(CMMsl::KappaActivityWatch *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v14 = 0;
        v15 = 0;
        v10 = 0;
        v16 = v3 >= v2;
        v17 = v3 - v2;
        if (!v16)
        {
          v17 = 0;
        }

        v18 = (v7 + v2);
        v19 = v2 + 1;
        while (v17)
        {
          v20 = *v18;
          *(a2 + 1) = v19;
          v10 |= (v20 & 0x7F) << v14;
          if ((v20 & 0x80) == 0)
          {
            if (v4)
            {
              v10 = 0;
            }

            goto LABEL_21;
          }

          v14 += 7;
          --v17;
          ++v18;
          ++v19;
          v51 = v15++ > 8;
          if (v51)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        v4 = 1;
        *(a2 + 24) = 1;
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v2);
      v12 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v12;
        v13 = *v11++;
        v10 |= (v13 & 0x7F) << v8;
        if ((v13 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        ++v12;
        v51 = v9++ > 8;
        if (v51)
        {
          goto LABEL_18;
        }
      }

LABEL_21:
      v21 = v10 & 7;
      if (v4 & 1 | (v21 == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) <= 5)
      {
        if (v22 <= 2)
        {
          if (v22 == 1)
          {
            *(this + 52) |= 1u;
            v62 = *(a2 + 1);
            v61 = *(a2 + 2);
            v63 = *a2;
            if (v62 > 0xFFFFFFFFFFFFFFF5 || v62 + 10 > v61)
            {
              v117 = 0;
              v118 = 0;
              v66 = 0;
              v16 = v61 >= v62;
              v119 = v61 - v62;
              if (!v16)
              {
                v119 = 0;
              }

              v120 = (v63 + v62);
              v121 = v62 + 1;
              while (1)
              {
                if (!v119)
                {
                  v66 = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_221;
                }

                v122 = *v120;
                *(a2 + 1) = v121;
                v66 |= (v122 & 0x7F) << v117;
                if ((v122 & 0x80) == 0)
                {
                  break;
                }

                v117 += 7;
                --v119;
                ++v120;
                ++v121;
                v51 = v118++ > 8;
                if (v51)
                {
LABEL_166:
                  v66 = 0;
                  goto LABEL_221;
                }
              }

              if (*(a2 + 24))
              {
                v66 = 0;
              }
            }

            else
            {
              v64 = 0;
              v65 = 0;
              v66 = 0;
              v67 = (v63 + v62);
              v68 = v62 + 1;
              while (1)
              {
                *(a2 + 1) = v68;
                v69 = *v67++;
                v66 |= (v69 & 0x7F) << v64;
                if ((v69 & 0x80) == 0)
                {
                  break;
                }

                v64 += 7;
                ++v68;
                v51 = v65++ > 8;
                if (v51)
                {
                  goto LABEL_166;
                }
              }
            }

LABEL_221:
            *(this + 7) = v66;
            goto LABEL_269;
          }

          if (v22 == 2)
          {
            if (v21 == 2)
            {
              if (PB::Reader::placeMark())
              {
                goto LABEL_275;
              }

              if (*(a2 + 1) < *(a2 + 2) && (*(a2 + 24) & 1) == 0)
              {
                v34 = *(this + 5);
                while (1)
                {
                  v35 = *(this + 6);
                  if (v34 >= v35)
                  {
                    v36 = *(this + 4);
                    v37 = v34 - v36;
                    v38 = (v34 - v36) >> 2;
                    v39 = v38 + 1;
                    if ((v38 + 1) >> 62)
                    {
                      goto LABEL_276;
                    }

                    v40 = v35 - v36;
                    if (v40 >> 1 > v39)
                    {
                      v39 = v40 >> 1;
                    }

                    if (v40 >= 0x7FFFFFFFFFFFFFFCLL)
                    {
                      v41 = 0x3FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v41 = v39;
                    }

                    if (v41)
                    {
                      sub_10002290C(this + 32, v41);
                    }

                    v42 = (v34 - v36) >> 2;
                    v43 = (4 * v38);
                    v44 = (4 * v38 - 4 * v42);
                    *v43 = 0;
                    v34 = (v43 + 1);
                    memcpy(v44, v36, v37);
                    v45 = *(this + 4);
                    *(this + 4) = v44;
                    *(this + 5) = v34;
                    *(this + 6) = 0;
                    if (v45)
                    {
                      operator delete(v45);
                    }
                  }

                  else
                  {
                    *v34 = 0;
                    v34 += 4;
                  }

                  *(this + 5) = v34;
                  v47 = *(a2 + 1);
                  v46 = *(a2 + 2);
                  v48 = *a2;
                  v49 = 0;
                  v50 = 0;
                  v51 = v47 > 0xFFFFFFFFFFFFFFF5 || v47 + 10 > v46;
                  if (v51)
                  {
                    break;
                  }

                  v57 = 0;
                  v58 = (v48 + v47);
                  v59 = v47 + 1;
                  while (1)
                  {
                    v55 = v59;
                    *(a2 + 1) = v59;
                    v60 = *v58++;
                    v57 |= (v60 & 0x7F) << v49;
                    if ((v60 & 0x80) == 0)
                    {
                      break;
                    }

                    v49 += 7;
                    ++v59;
                    v51 = v50++ > 8;
                    if (v51)
                    {
                      goto LABEL_82;
                    }
                  }

LABEL_85:
                  *(v34 - 1) = v57;
                  if (v55 >= v46 || (*(a2 + 24) & 1) != 0)
                  {
                    goto LABEL_196;
                  }
                }

                v57 = 0;
                v52 = v46 - v47;
                if (v46 < v47)
                {
                  v52 = 0;
                }

                v53 = (v48 + v47);
                v54 = v47 + 1;
                while (v52)
                {
                  v55 = v54;
                  v56 = *v53;
                  *(a2 + 1) = v55;
                  v57 |= (v56 & 0x7F) << v49;
                  if ((v56 & 0x80) == 0)
                  {
                    if (*(a2 + 24))
                    {
                      LODWORD(v57) = 0;
                    }

                    goto LABEL_85;
                  }

                  v49 += 7;
                  --v52;
                  ++v53;
                  v54 = v55 + 1;
                  v51 = v50++ > 8;
                  if (v51)
                  {
LABEL_82:
                    LODWORD(v57) = 0;
                    goto LABEL_85;
                  }
                }

LABEL_195:
                *(a2 + 24) = 1;
                *(v34 - 1) = 0;
              }

LABEL_196:
              PB::Reader::recallMark();
              goto LABEL_269;
            }

            v124 = *(this + 5);
            v123 = *(this + 6);
            if (v124 >= v123)
            {
              v146 = *(this + 4);
              v147 = v124 - v146;
              v148 = (v124 - v146) >> 2;
              v149 = v148 + 1;
              if ((v148 + 1) >> 62)
              {
                goto LABEL_276;
              }

              v150 = v123 - v146;
              if (v150 >> 1 > v149)
              {
                v149 = v150 >> 1;
              }

              if (v150 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v151 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v151 = v149;
              }

              if (v151)
              {
                sub_10002290C(this + 32, v151);
              }

              v158 = (v124 - v146) >> 2;
              v159 = (4 * v148);
              v160 = (4 * v148 - 4 * v158);
              *v159 = 0;
              v125 = v159 + 1;
              memcpy(v160, v146, v147);
              v161 = *(this + 4);
              *(this + 4) = v160;
              *(this + 5) = v125;
              *(this + 6) = 0;
              if (v161)
              {
                operator delete(v161);
              }
            }

            else
            {
              *v124 = 0;
              v125 = v124 + 4;
            }

            *(this + 5) = v125;
            v163 = *(a2 + 1);
            v162 = *(a2 + 2);
            v164 = *a2;
            if (v163 <= 0xFFFFFFFFFFFFFFF5 && v163 + 10 <= v162)
            {
              v165 = 0;
              v166 = 0;
              v167 = 0;
              v168 = (v164 + v163);
              v169 = v163 + 1;
              while (1)
              {
                *(a2 + 1) = v169;
                v170 = *v168++;
                v167 |= (v170 & 0x7F) << v165;
                if ((v170 & 0x80) == 0)
                {
                  goto LABEL_268;
                }

                v165 += 7;
                ++v169;
                v51 = v166++ > 8;
                if (v51)
                {
                  goto LABEL_264;
                }
              }
            }

            v171 = 0;
            v172 = 0;
            v167 = 0;
            v16 = v162 >= v163;
            v173 = v162 - v163;
            if (!v16)
            {
              v173 = 0;
            }

            v174 = (v164 + v163);
            v175 = v163 + 1;
            while (v173)
            {
              v176 = *v174;
              *(a2 + 1) = v175;
              v167 |= (v176 & 0x7F) << v171;
              if ((v176 & 0x80) == 0)
              {
LABEL_266:
                if (*(a2 + 24))
                {
                  LODWORD(v167) = 0;
                }

                goto LABEL_268;
              }

              v171 += 7;
              --v173;
              ++v174;
              ++v175;
              v51 = v172++ > 8;
              if (v51)
              {
LABEL_264:
                LODWORD(v167) = 0;
                goto LABEL_268;
              }
            }

LABEL_265:
            LODWORD(v167) = 0;
            *(a2 + 24) = 1;
            goto LABEL_268;
          }
        }

        else
        {
          switch(v22)
          {
            case 3:
              *(this + 52) |= 0x100u;
              v81 = *(a2 + 1);
              if (v81 > 0xFFFFFFFFFFFFFFFBLL || v81 + 4 > *(a2 + 2))
              {
LABEL_110:
                *(a2 + 24) = 1;
                goto LABEL_269;
              }

              *(this + 25) = *(*a2 + v81);
              goto LABEL_206;
            case 4:
              *(this + 52) |= 0x40u;
              v70 = *(a2 + 1);
              if (v70 > 0xFFFFFFFFFFFFFFFBLL || v70 + 4 > *(a2 + 2))
              {
                goto LABEL_110;
              }

              *(this + 23) = *(*a2 + v70);
              goto LABEL_206;
            case 5:
              *(this + 52) |= 0x80u;
              v32 = *(a2 + 1);
              if (v32 > 0xFFFFFFFFFFFFFFFBLL || v32 + 4 > *(a2 + 2))
              {
                goto LABEL_110;
              }

              *(this + 24) = *(*a2 + v32);
              goto LABEL_206;
          }
        }
      }

      else if (v22 > 8)
      {
        switch(v22)
        {
          case 9:
            if (v21 == 2)
            {
              if (PB::Reader::placeMark())
              {
                goto LABEL_275;
              }

              if (*(a2 + 1) < *(a2 + 2) && (*(a2 + 24) & 1) == 0)
              {
                v34 = *(this + 2);
                do
                {
                  v91 = *(this + 3);
                  if (v34 >= v91)
                  {
                    v92 = *(this + 1);
                    v93 = v34 - v92;
                    v94 = (v34 - v92) >> 2;
                    v95 = v94 + 1;
                    if ((v94 + 1) >> 62)
                    {
                      goto LABEL_276;
                    }

                    v96 = v91 - v92;
                    if (v96 >> 1 > v95)
                    {
                      v95 = v96 >> 1;
                    }

                    if (v96 >= 0x7FFFFFFFFFFFFFFCLL)
                    {
                      v97 = 0x3FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v97 = v95;
                    }

                    if (v97)
                    {
                      sub_10002290C(this + 8, v97);
                    }

                    v98 = (v34 - v92) >> 2;
                    v99 = (4 * v94);
                    v100 = (4 * v94 - 4 * v98);
                    *v99 = 0;
                    v34 = (v99 + 1);
                    memcpy(v100, v92, v93);
                    v101 = *(this + 1);
                    *(this + 1) = v100;
                    *(this + 2) = v34;
                    *(this + 3) = 0;
                    if (v101)
                    {
                      operator delete(v101);
                    }
                  }

                  else
                  {
                    *v34 = 0;
                    v34 += 4;
                  }

                  *(this + 2) = v34;
                  v103 = *(a2 + 1);
                  v102 = *(a2 + 2);
                  v104 = *a2;
                  v105 = 0;
                  v106 = 0;
                  if (v103 > 0xFFFFFFFFFFFFFFF5 || v103 + 10 > v102)
                  {
                    v113 = 0;
                    v108 = v102 - v103;
                    if (v102 < v103)
                    {
                      v108 = 0;
                    }

                    v109 = (v104 + v103);
                    v110 = v103 + 1;
                    while (1)
                    {
                      if (!v108)
                      {
                        goto LABEL_195;
                      }

                      v111 = v110;
                      v112 = *v109;
                      *(a2 + 1) = v111;
                      v113 |= (v112 & 0x7F) << v105;
                      if ((v112 & 0x80) == 0)
                      {
                        break;
                      }

                      v105 += 7;
                      --v108;
                      ++v109;
                      v110 = v111 + 1;
                      v51 = v106++ > 8;
                      if (v51)
                      {
LABEL_151:
                        LODWORD(v113) = 0;
                        goto LABEL_154;
                      }
                    }

                    if (*(a2 + 24))
                    {
                      LODWORD(v113) = 0;
                    }
                  }

                  else
                  {
                    v113 = 0;
                    v114 = (v104 + v103);
                    v115 = v103 + 1;
                    while (1)
                    {
                      v111 = v115;
                      *(a2 + 1) = v115;
                      v116 = *v114++;
                      v113 |= (v116 & 0x7F) << v105;
                      if ((v116 & 0x80) == 0)
                      {
                        break;
                      }

                      v105 += 7;
                      ++v115;
                      v51 = v106++ > 8;
                      if (v51)
                      {
                        goto LABEL_151;
                      }
                    }
                  }

LABEL_154:
                  *(v34 - 1) = v113;
                }

                while (v111 < v102 && (*(a2 + 24) & 1) == 0);
              }

              goto LABEL_196;
            }

            v145 = *(this + 2);
            v144 = *(this + 3);
            if (v145 >= v144)
            {
              v152 = *(this + 1);
              v153 = v145 - v152;
              v154 = (v145 - v152) >> 2;
              v155 = v154 + 1;
              if ((v154 + 1) >> 62)
              {
LABEL_276:
                sub_10000CD24();
              }

              v156 = v144 - v152;
              if (v156 >> 1 > v155)
              {
                v155 = v156 >> 1;
              }

              if (v156 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v157 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v157 = v155;
              }

              if (v157)
              {
                sub_10002290C(this + 8, v157);
              }

              v177 = (v145 - v152) >> 2;
              v178 = (4 * v154);
              v179 = (4 * v154 - 4 * v177);
              *v178 = 0;
              v125 = v178 + 1;
              memcpy(v179, v152, v153);
              v180 = *(this + 1);
              *(this + 1) = v179;
              *(this + 2) = v125;
              *(this + 3) = 0;
              if (v180)
              {
                operator delete(v180);
              }
            }

            else
            {
              *v145 = 0;
              v125 = v145 + 4;
            }

            *(this + 2) = v125;
            v182 = *(a2 + 1);
            v181 = *(a2 + 2);
            v183 = *a2;
            if (v182 > 0xFFFFFFFFFFFFFFF5 || v182 + 10 > v181)
            {
              v189 = 0;
              v190 = 0;
              v167 = 0;
              v16 = v181 >= v182;
              v191 = v181 - v182;
              if (!v16)
              {
                v191 = 0;
              }

              v192 = (v183 + v182);
              v193 = v182 + 1;
              while (v191)
              {
                v194 = *v192;
                *(a2 + 1) = v193;
                v167 |= (v194 & 0x7F) << v189;
                if ((v194 & 0x80) == 0)
                {
                  goto LABEL_266;
                }

                v189 += 7;
                --v191;
                ++v192;
                ++v193;
                v51 = v190++ > 8;
                if (v51)
                {
                  goto LABEL_264;
                }
              }

              goto LABEL_265;
            }

            v184 = 0;
            v185 = 0;
            v167 = 0;
            v186 = (v183 + v182);
            v187 = v182 + 1;
            while (1)
            {
              *(a2 + 1) = v187;
              v188 = *v186++;
              v167 |= (v188 & 0x7F) << v184;
              if ((v188 & 0x80) == 0)
              {
                break;
              }

              v184 += 7;
              ++v187;
              v51 = v185++ > 8;
              if (v51)
              {
                goto LABEL_264;
              }
            }

LABEL_268:
            *(v125 - 1) = v167;
            goto LABEL_269;
          case 0xA:
            *(this + 52) |= 0x10u;
            v80 = *(a2 + 1);
            if (v80 > 0xFFFFFFFFFFFFFFFBLL || v80 + 4 > *(a2 + 2))
            {
              goto LABEL_110;
            }

            *(this + 21) = *(*a2 + v80);
            goto LABEL_206;
          case 0xB:
            *(this + 52) |= 8u;
            v33 = *(a2 + 1);
            if (v33 > 0xFFFFFFFFFFFFFFFBLL || v33 + 4 > *(a2 + 2))
            {
              goto LABEL_110;
            }

            *(this + 20) = *(*a2 + v33);
LABEL_206:
            *(a2 + 1) += 4;
            goto LABEL_269;
        }
      }

      else
      {
        switch(v22)
        {
          case 6:
            *(this + 52) |= 0x20u;
            v83 = *(a2 + 1);
            v82 = *(a2 + 2);
            v84 = *a2;
            if (v83 > 0xFFFFFFFFFFFFFFF5 || v83 + 10 > v82)
            {
              v138 = 0;
              v139 = 0;
              v87 = 0;
              v16 = v82 >= v83;
              v140 = v82 - v83;
              if (!v16)
              {
                v140 = 0;
              }

              v141 = (v84 + v83);
              v142 = v83 + 1;
              while (1)
              {
                if (!v140)
                {
                  LODWORD(v87) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_230;
                }

                v143 = *v141;
                *(a2 + 1) = v142;
                v87 |= (v143 & 0x7F) << v138;
                if ((v143 & 0x80) == 0)
                {
                  break;
                }

                v138 += 7;
                --v140;
                ++v141;
                ++v142;
                v51 = v139++ > 8;
                if (v51)
                {
LABEL_192:
                  LODWORD(v87) = 0;
                  goto LABEL_230;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v87) = 0;
              }
            }

            else
            {
              v85 = 0;
              v86 = 0;
              v87 = 0;
              v88 = (v84 + v83);
              v89 = v83 + 1;
              while (1)
              {
                *(a2 + 1) = v89;
                v90 = *v88++;
                v87 |= (v90 & 0x7F) << v85;
                if ((v90 & 0x80) == 0)
                {
                  break;
                }

                v85 += 7;
                ++v89;
                v51 = v86++ > 8;
                if (v51)
                {
                  goto LABEL_192;
                }
              }
            }

LABEL_230:
            *(this + 22) = v87;
            goto LABEL_269;
          case 7:
            *(this + 52) |= 2u;
            v72 = *(a2 + 1);
            v71 = *(a2 + 2);
            v73 = *a2;
            if (v72 > 0xFFFFFFFFFFFFFFF5 || v72 + 10 > v71)
            {
              v126 = 0;
              v127 = 0;
              v76 = 0;
              v16 = v71 >= v72;
              v128 = v71 - v72;
              if (!v16)
              {
                v128 = 0;
              }

              v129 = (v73 + v72);
              v130 = v72 + 1;
              while (1)
              {
                if (!v128)
                {
                  v76 = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_224;
                }

                v131 = *v129;
                *(a2 + 1) = v130;
                v76 |= (v131 & 0x7F) << v126;
                if ((v131 & 0x80) == 0)
                {
                  break;
                }

                v126 += 7;
                --v128;
                ++v129;
                ++v130;
                v51 = v127++ > 8;
                if (v51)
                {
LABEL_176:
                  v76 = 0;
                  goto LABEL_224;
                }
              }

              if (*(a2 + 24))
              {
                v76 = 0;
              }
            }

            else
            {
              v74 = 0;
              v75 = 0;
              v76 = 0;
              v77 = (v73 + v72);
              v78 = v72 + 1;
              while (1)
              {
                *(a2 + 1) = v78;
                v79 = *v77++;
                v76 |= (v79 & 0x7F) << v74;
                if ((v79 & 0x80) == 0)
                {
                  break;
                }

                v74 += 7;
                ++v78;
                v51 = v75++ > 8;
                if (v51)
                {
                  goto LABEL_176;
                }
              }
            }

LABEL_224:
            *(this + 8) = v76;
            goto LABEL_269;
          case 8:
            *(this + 52) |= 4u;
            v24 = *(a2 + 1);
            v23 = *(a2 + 2);
            v25 = *a2;
            if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
            {
              v132 = 0;
              v133 = 0;
              v28 = 0;
              v16 = v23 >= v24;
              v134 = v23 - v24;
              if (!v16)
              {
                v134 = 0;
              }

              v135 = (v25 + v24);
              v136 = v24 + 1;
              while (1)
              {
                if (!v134)
                {
                  v28 = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_227;
                }

                v137 = *v135;
                *(a2 + 1) = v136;
                v28 |= (v137 & 0x7F) << v132;
                if ((v137 & 0x80) == 0)
                {
                  break;
                }

                v132 += 7;
                --v134;
                ++v135;
                ++v136;
                v51 = v133++ > 8;
                if (v51)
                {
LABEL_184:
                  v28 = 0;
                  goto LABEL_227;
                }
              }

              if (*(a2 + 24))
              {
                v28 = 0;
              }
            }

            else
            {
              v26 = 0;
              v27 = 0;
              v28 = 0;
              v29 = (v25 + v24);
              v30 = v24 + 1;
              while (1)
              {
                *(a2 + 1) = v30;
                v31 = *v29++;
                v28 |= (v31 & 0x7F) << v26;
                if ((v31 & 0x80) == 0)
                {
                  break;
                }

                v26 += 7;
                ++v30;
                v51 = v27++ > 8;
                if (v51)
                {
                  goto LABEL_184;
                }
              }
            }

LABEL_227:
            *(this + 9) = v28;
            goto LABEL_269;
        }
      }

      if ((PB::Reader::skip(a2, v22, v21, 0) & 1) == 0)
      {
LABEL_275:
        v195 = 0;
        return v195 & 1;
      }

LABEL_269:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

  v195 = v4 ^ 1;
  return v195 & 1;
}