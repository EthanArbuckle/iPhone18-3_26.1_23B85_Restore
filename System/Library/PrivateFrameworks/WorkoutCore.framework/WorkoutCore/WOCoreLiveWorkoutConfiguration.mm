@interface WOCoreLiveWorkoutConfiguration
+ (NSString)distanceSplitAnalyticsKey;
+ (NSString)raceAlertAnalyticsKey;
+ (NSString)timeSplitAnalyticsKey;
- (BOOL)canDisplayBlockRepeatIndicator;
- (BOOL)canDisplayTrackLaneIndicator;
- (BOOL)configureWithWorkoutVoiceMotivationWithShouldLog:(BOOL)log;
- (BOOL)isCatalogWorkout;
- (BOOL)isGymKit;
- (BOOL)isLastIntervalWorkoutKeyPath;
- (BOOL)isLastMultiSportLeg;
- (BOOL)isLowPowerMode;
- (BOOL)isMirroredStart;
- (BOOL)isWorkoutBuddyFeatureNoLongerAvailable;
- (BOOL)isWorkoutBuddyMuted;
- (BOOL)isWorkoutBuddyUnavailableDueToHeadphonesOff;
- (BOOL)mirroredStartInterrupted;
- (BOOL)moveToNextStep;
- (BOOL)multisportAutomaticallySwitchesLegs;
- (BOOL)requiresGoalConfiguration;
- (BOOL)shouldHideMetricsUntilFirstAlert;
- (BOOL)startTrackingWhenMetricsDisplay;
- (BOOL)supportsCustomRouteAlerts;
- (BOOL)supportsMetricType:(unint64_t)type domainAccessor:(id)accessor;
- (BOOL)supportsMirroredCatalogWorkouts;
- (BOOL)supportsMirroring;
- (BOOL)supportsSegments;
- (BOOL)supportsWorkoutVoiceMotivation;
- (BOOL)trackRunningIsSuspended;
- (BOOL)usePrecisionStart;
- (FIUIWorkoutActivityType)currentActivityType;
- (FIUIWorkoutActivityType)currentMultisportDisplayedActivityType;
- (FIUIWorkoutActivityType)topLevelActivityType;
- (HKWorkoutConfiguration)hkWorkoutConfiguration;
- (HKWorkoutConfiguration)suggestedHKWorkoutConfiguration;
- (HKWorkoutConfiguration)topLevelHKWorkoutConfiguration;
- (NLSessionActivityGoal)currentGoal;
- (NLSessionActivityGoal)topLevelGoal;
- (NSArray)videoMetrics;
- (NSDictionary)hkWorkoutConfigurationMetadata;
- (NSString)analyticsActivityType;
- (NSString)analyticsConfigurationType;
- (NSString)analyticsSubActivities;
- (NSString)logString;
- (NSString)providerBundleIdentifier;
- (NSUUID)configurationUUID;
- (WOCoreCatalogWorkout)catalogWorkoutBridge;
- (WOCoreHeartRateTargetZone)currentHeartRateTargetZone;
- (WOCoreLiveWorkoutConfiguration)init;
- (WOCoreLiveWorkoutConfiguration)initWithConfiguration:(id)configuration startSource:(unint64_t)source activityMoveMode:(int64_t)mode activityPausedRingsObserver:(id)observer catalogWorkout:(id)workout isWorkoutBuddyFeatureSupported:(BOOL)supported;
- (WOCorePowerZonesAlertTargetZone)currentPowerAlertTargetZone;
- (WOCorePowerZonesAlertTargetZone)currentPowerZonesAlertTargetZone;
- (WONPSDomainAccessorProtocol)domainAccessor;
- (id)analyticsAlertsConfiguredWithFormattingManager:(id)manager;
- (id)copy;
- (int64_t)currentActivityLocationType;
- (int64_t)currentMultiSportLeg;
- (int64_t)remainingMultisportLegCount;
- (int64_t)safetyCheckInWillDismissCounter;
- (unint64_t)fitnessMachineSeymourStartSource;
- (unint64_t)startSource;
- (void)advanceMultisportLegWithSuggestedConfiguration:(id)configuration;
- (void)restoreFromWorkoutActivityMetadata:(id)metadata;
- (void)saveWorkoutConfigurationMetadataTo:(id)to;
- (void)setFitnessMachineSeymourStartSource:(unint64_t)source;
- (void)setIsWorkoutBuddyFeatureNoLongerAvailable:(BOOL)available;
- (void)setIsWorkoutBuddyMuted:(BOOL)muted;
- (void)setIsWorkoutBuddyUnavailableDueToHeadphonesOff:(BOOL)off;
- (void)setMirroredStartInterrupted:(BOOL)interrupted;
- (void)setRequiresGoalConfiguration:(BOOL)configuration;
- (void)setSafetyCheckInWillDismissCounter:(int64_t)counter;
- (void)setStartSource:(unint64_t)source;
- (void)setSuggestedHKWorkoutConfiguration:(id)configuration;
- (void)setVideoMetrics:(id)metrics;
@end

@implementation WOCoreLiveWorkoutConfiguration

- (NSUUID)configurationUUID
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(self + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  v9 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
  swift_beginAccess();
  (*(v4 + 16))(v7, v8 + v9, v3);
  v10.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v7, v3);

  return v10.super.isa;
}

- (unint64_t)startSource
{
  v3 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_startSource;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setStartSource:(unint64_t)source
{
  v5 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_startSource;
  swift_beginAccess();
  *(self + v5) = source;
}

- (BOOL)mirroredStartInterrupted
{
  v3 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_mirroredStartInterrupted;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setMirroredStartInterrupted:(BOOL)interrupted
{
  v5 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_mirroredStartInterrupted;
  swift_beginAccess();
  *(self + v5) = interrupted;
}

- (WOCoreCatalogWorkout)catalogWorkoutBridge
{
  selfCopy = self;
  v3 = LiveWorkoutConfiguration.catalogWorkoutBridge.getter();

  return v3;
}

- (unint64_t)fitnessMachineSeymourStartSource
{
  v3 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_fitnessMachineSeymourStartSource;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setFitnessMachineSeymourStartSource:(unint64_t)source
{
  v5 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_fitnessMachineSeymourStartSource;
  swift_beginAccess();
  *(self + v5) = source;
}

- (HKWorkoutConfiguration)suggestedHKWorkoutConfiguration
{
  v3 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_suggestedHKWorkoutConfiguration;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setSuggestedHKWorkoutConfiguration:(id)configuration
{
  v5 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_suggestedHKWorkoutConfiguration;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = configuration;
  configurationCopy = configuration;
}

- (BOOL)requiresGoalConfiguration
{
  v3 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_requiresGoalConfiguration;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setRequiresGoalConfiguration:(BOOL)configuration
{
  v5 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_requiresGoalConfiguration;
  swift_beginAccess();
  *(self + v5) = configuration;
}

- (WONPSDomainAccessorProtocol)domainAccessor
{
  v2 = *(self + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_domainAccessor);
  v3 = swift_unknownObjectRetain();

  return v3;
}

- (FIUIWorkoutActivityType)topLevelActivityType
{
  v2 = *(self + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  v3 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  return *(v2 + v3);
}

- (FIUIWorkoutActivityType)currentMultisportDisplayedActivityType
{
  selfCopy = self;
  v3 = LiveWorkoutConfiguration.currentMultisportDisplayedActivityType.getter();

  return v3;
}

- (FIUIWorkoutActivityType)currentActivityType
{
  selfCopy = self;
  v3 = LiveWorkoutConfiguration.currentActivityType.getter();

  return v3;
}

- (int64_t)currentActivityLocationType
{
  selfCopy = self;
  v3 = LiveWorkoutConfiguration.currentActivityType.getter();
  isIndoor = [v3 isIndoor];

  if (isIndoor)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

- (int64_t)currentMultiSportLeg
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  static Published.subscript.getter();

  return v5;
}

- (int64_t)remainingMultisportLegCount
{
  selfCopy = self;
  LiveWorkoutConfiguration.remainingMultisportLegCount.getter();
  v4 = v3;

  return v4;
}

- (WOCorePowerZonesAlertTargetZone)currentPowerZonesAlertTargetZone
{
  selfCopy = self;
  v3 = LiveWorkoutConfiguration.currentPowerZonesAlertTargetZone.getter();

  return v3;
}

- (WOCorePowerZonesAlertTargetZone)currentPowerAlertTargetZone
{
  selfCopy = self;
  v3 = LiveWorkoutConfiguration.currentPowerAlertTargetZone.getter();

  return v3;
}

- (NLSessionActivityGoal)topLevelGoal
{
  v3 = *(self + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  type metadata accessor for IntervalWorkoutConfiguration();
  if (swift_dynamicCastClass())
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:0 value:0];
  }

  else
  {
    selfCopy = self;
    v6 = LiveWorkoutConfiguration.currentGoal.getter();

    v4 = v6;
  }

  return v4;
}

- (NLSessionActivityGoal)currentGoal
{
  selfCopy = self;
  v3 = LiveWorkoutConfiguration.currentGoal.getter();

  return v3;
}

- (WOCoreHeartRateTargetZone)currentHeartRateTargetZone
{
  selfCopy = self;
  v3 = LiveWorkoutConfiguration.currentHeartRateTargetZone.getter();

  return v3;
}

- (BOOL)isWorkoutBuddyMuted
{
  v3 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyMuted;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsWorkoutBuddyMuted:(BOOL)muted
{
  v5 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyMuted;
  swift_beginAccess();
  *(self + v5) = muted;
}

- (BOOL)isWorkoutBuddyFeatureNoLongerAvailable
{
  v3 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyFeatureNoLongerAvailable;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsWorkoutBuddyFeatureNoLongerAvailable:(BOOL)available
{
  v5 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyFeatureNoLongerAvailable;
  swift_beginAccess();
  *(self + v5) = available;
}

- (BOOL)isWorkoutBuddyUnavailableDueToHeadphonesOff
{
  v3 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyUnavailableDueToHeadphonesOff;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsWorkoutBuddyUnavailableDueToHeadphonesOff:(BOOL)off
{
  v5 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyUnavailableDueToHeadphonesOff;
  swift_beginAccess();
  *(self + v5) = off;
}

- (BOOL)multisportAutomaticallySwitchesLegs
{
  v3 = *(self + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  type metadata accessor for MultiSportWorkoutConfiguration();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    selfCopy = self;
    v6 = specialized static MultisportTransitionsStore.read()();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    LOBYTE(v4) = v8;
  }

  return v4;
}

- (BOOL)isGymKit
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - v5;
  v7 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_fitnessMachineSessionUUID;
  swift_beginAccess();
  _s11SeymourCore14CatalogWorkoutVSgWOcTm_0(self + v7, v6, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v8 = type metadata accessor for UUID();
  LOBYTE(self) = (*(*(v8 - 8) + 48))(v6, 1, v8) != 1;
  _s11SeymourCore14CatalogWorkoutVSgWOhTm_0(v6, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  return self;
}

- (BOOL)isCatalogWorkout
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v9 - v5;
  _s11SeymourCore14CatalogWorkoutVSgWOcTm_0(self + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_catalogWorkout, &v9 - v5, &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  v7 = type metadata accessor for CatalogWorkout();
  LOBYTE(self) = (*(*(v7 - 8) + 48))(v6, 1, v7) != 1;
  _s11SeymourCore14CatalogWorkoutVSgWOhTm_0(v6, &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  return self;
}

- (NSString)providerBundleIdentifier
{
  v2 = *(self + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  v3 = OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (v4)
  {
    swift_beginAccess();
    v6 = *(v4 + 32);
    v5 = *(v4 + 40);
  }

  else
  {
    v6 = 0;
    v5 = 0xE000000000000000;
  }

  v7 = MEMORY[0x20F2E6C00](v6, v5);

  return v7;
}

- (NSArray)videoMetrics
{
  v3 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_videoMetrics;
  swift_beginAccess();
  if (*(self + v3))
  {

    v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (void)setVideoMetrics:(id)metrics
{
  if (metrics)
  {
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  v5 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_videoMetrics;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v4;
}

- (HKWorkoutConfiguration)topLevelHKWorkoutConfiguration
{
  selfCopy = self;
  v3 = LiveWorkoutConfiguration.topLevelHKWorkoutConfiguration.getter();

  return v3;
}

- (HKWorkoutConfiguration)hkWorkoutConfiguration
{
  selfCopy = self;
  v3 = LiveWorkoutConfiguration.hkWorkoutConfiguration.getter();

  return v3;
}

- (BOOL)isLowPowerMode
{
  v3 = objc_opt_self();
  selfCopy = self;
  processInfo = [v3 processInfo];
  isLowPowerModeEnabled = [processInfo isLowPowerModeEnabled];

  if (isLowPowerModeEnabled)
  {
    isPowerSavingModeEnabled = 1;
  }

  else
  {
    isPowerSavingModeEnabled = [*(selfCopy + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_domainAccessor) isPowerSavingModeEnabled];
  }

  return isPowerSavingModeEnabled;
}

- (NSDictionary)hkWorkoutConfigurationMetadata
{
  selfCopy = self;
  LiveWorkoutConfiguration.hkWorkoutConfigurationMetadata.getter();

  v3.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (BOOL)usePrecisionStart
{
  v3 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_startSource;
  swift_beginAccess();
  v4 = *(self + v3);
  v5 = *(self + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_domainAccessor);
  selfCopy = self;
  LOBYTE(v4) = specialized static PrecisionStartChecker.usePrecisionStart(startSource:domainAccessor:)(v4, v5);

  return v4 & 1;
}

- (BOOL)isMirroredStart
{
  v3 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_startSource;
  swift_beginAccess();
  return (*(self + v3) - 19) < 2;
}

- (BOOL)supportsMirroring
{
  selfCopy = self;
  v3 = LiveWorkoutConfiguration.supportsMirroring.getter();

  return v3 & 1;
}

- (BOOL)supportsMirroredCatalogWorkouts
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v18 - v5;
  v7 = type metadata accessor for CatalogWorkout();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s11SeymourCore14CatalogWorkoutVSgWOcTm_0(self + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_catalogWorkout, v6, &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    _s11SeymourCore14CatalogWorkoutVSgWOhTm_0(v6, &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    v12 = CatalogWorkout.mediaType.getter();
    v14 = v13;
    v16 = v15;
    (*(v8 + 8))(v11, v7);
    if (v16)
    {
      return 0;
    }

    outlined consume of PortableEnum<CatalogMediaType>(v12, v14, 0);
  }

  return 1;
}

- (BOOL)supportsWorkoutVoiceMotivation
{
  selfCopy = self;
  v3 = LiveWorkoutConfiguration.supportsWorkoutVoiceMotivation.getter();

  return v3 & 1;
}

- (BOOL)configureWithWorkoutVoiceMotivationWithShouldLog:(BOOL)log
{
  selfCopy = self;
  v5 = LiveWorkoutConfiguration.configureWithWorkoutVoiceMotivation(shouldLog:)(log);

  return v5;
}

- (BOOL)supportsCustomRouteAlerts
{
  v2 = *(self + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  type metadata accessor for RaceWorkoutConfiguration();
  if (swift_dynamicCastClass())
  {
    return 0;
  }

  v4 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  return [*(v2 + v4) supportsCustomRouteAlerts];
}

- (BOOL)canDisplayBlockRepeatIndicator
{
  selfCopy = self;
  v3 = LiveWorkoutConfiguration.canDisplayBlockRepeatIndicator.getter();

  return v3 & 1;
}

- (BOOL)canDisplayTrackLaneIndicator
{
  selfCopy = self;
  v3 = LiveWorkoutConfiguration.canDisplayTrackLaneIndicator.getter();

  return v3 & 1;
}

- (BOOL)startTrackingWhenMetricsDisplay
{
  selfCopy = self;
  v3 = LiveWorkoutConfiguration.startTrackingWhenMetricsDisplay.getter();

  return v3 & 1;
}

- (BOOL)shouldHideMetricsUntilFirstAlert
{
  selfCopy = self;
  v3 = LiveWorkoutConfiguration.shouldHideMetricsUntilFirstAlert.getter();

  return v3 & 1;
}

- (id)copy
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (int64_t)safetyCheckInWillDismissCounter
{
  v3 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_safetyCheckInWillDismissCounter;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setSafetyCheckInWillDismissCounter:(int64_t)counter
{
  v5 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_safetyCheckInWillDismissCounter;
  swift_beginAccess();
  *(self + v5) = counter;
}

- (WOCoreLiveWorkoutConfiguration)initWithConfiguration:(id)configuration startSource:(unint64_t)source activityMoveMode:(int64_t)mode activityPausedRingsObserver:(id)observer catalogWorkout:(id)workout isWorkoutBuddyFeatureSupported:(BOOL)supported
{
  supportedCopy = supported;
  configurationCopy = configuration;
  observerCopy = observer;
  workoutCopy = workout;
  return LiveWorkoutConfiguration.init(configuration:startSource:activityMoveMode:activityPausedRingsObserver:catalogWorkout:isWorkoutBuddyFeatureSupported:)(configurationCopy, source, mode, observerCopy, workout, supportedCopy);
}

- (BOOL)moveToNextStep
{
  selfCopy = self;
  v3 = LiveWorkoutConfiguration.moveToNextStep()();

  return v3;
}

- (BOOL)isLastIntervalWorkoutKeyPath
{
  selfCopy = self;
  IntervalWorkoutKey = LiveWorkoutConfiguration.isLastIntervalWorkoutKeyPath()();

  return IntervalWorkoutKey;
}

- (BOOL)isLastMultiSportLeg
{
  selfCopy = self;
  MultiSport = LiveWorkoutConfiguration.isLastMultiSportLeg()();

  return MultiSport;
}

- (void)advanceMultisportLegWithSuggestedConfiguration:(id)configuration
{
  v5 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_suggestedHKWorkoutConfiguration;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = configuration;
  configurationCopy = configuration;
  selfCopy = self;

  swift_getKeyPath();
  swift_getKeyPath();
  v9 = configurationCopy;
  v10 = static Published.subscript.modify();
  if (__OFADD__(*v11, 1))
  {
    __break(1u);
  }

  else
  {
    ++*v11;
    v10(v12, 0);
  }
}

- (void)restoreFromWorkoutActivityMetadata:(id)metadata
{
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  LiveWorkoutConfiguration.restoreFromWorkoutActivityMetadata(_:)(v4);
}

- (BOOL)supportsSegments
{
  selfCopy = self;
  v3 = LiveWorkoutConfiguration.supportsSegments.getter();

  return v3 & 1;
}

- (BOOL)trackRunningIsSuspended
{
  v2 = *(self + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  selfCopy = self;
  LOBYTE(v2) = specialized WorkoutConfiguration.trackRunningIsSuspended(domainAccessor:)();

  return v2 & 1;
}

- (BOOL)supportsMetricType:(unint64_t)type domainAccessor:(id)accessor
{
  swift_unknownObjectRetain();
  selfCopy = self;
  LOBYTE(type) = specialized LiveWorkoutConfiguration.supportsMetricType(_:domainAccessor:)(type);
  swift_unknownObjectRelease();

  return type & 1;
}

- (NSString)logString
{
  selfCopy = self;
  v3 = LiveWorkoutConfiguration.logString.getter();
  v5 = v4;

  v6 = MEMORY[0x20F2E6C00](v3, v5);

  return v6;
}

- (WOCoreLiveWorkoutConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (NSString)timeSplitAnalyticsKey
{
  v2 = MEMORY[0x20F2E6C00](1701669236, 0xE400000000000000);

  return v2;
}

+ (NSString)distanceSplitAnalyticsKey
{
  v2 = MEMORY[0x20F2E6C00](0x74696C7073, 0xE500000000000000);

  return v2;
}

+ (NSString)raceAlertAnalyticsKey
{
  v2 = MEMORY[0x20F2E6C00](1701011826, 0xE400000000000000);

  return v2;
}

- (id)analyticsAlertsConfiguredWithFormattingManager:(id)manager
{
  managerCopy = manager;
  selfCopy = self;
  v6 = LiveWorkoutConfiguration.analyticsAlertsConfigured(formattingManager:)(managerCopy);
  v8 = v7;

  v9 = MEMORY[0x20F2E6C00](v6, v8);

  return v9;
}

- (NSString)analyticsActivityType
{
  selfCopy = self;
  v3 = LiveWorkoutConfiguration.analyticsActivityType.getter();
  v5 = v4;

  v6 = MEMORY[0x20F2E6C00](v3, v5);

  return v6;
}

- (NSString)analyticsConfigurationType
{
  analyticsKey = [*(self + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration) analyticsKey];

  return analyticsKey;
}

- (NSString)analyticsSubActivities
{
  analyticsSubActivities = [*(self + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration) analyticsSubActivities];

  return analyticsSubActivities;
}

- (void)saveWorkoutConfigurationMetadataTo:(id)to
{
  swift_unknownObjectRetain();
  selfCopy = self;
  LiveWorkoutConfiguration.saveWorkoutConfigurationMetadata(to:)(to);
  swift_unknownObjectRelease();
}

@end