@interface WOCoreLiveWorkoutConfiguration
+ (NSString)distanceSplitAnalyticsKey;
+ (NSString)raceAlertAnalyticsKey;
+ (NSString)timeSplitAnalyticsKey;
- (BOOL)canDisplayBlockRepeatIndicator;
- (BOOL)canDisplayTrackLaneIndicator;
- (BOOL)configureWithWorkoutVoiceMotivationWithShouldLog:(BOOL)a3;
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
- (BOOL)supportsMetricType:(unint64_t)a3 domainAccessor:(id)a4;
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
- (WOCoreLiveWorkoutConfiguration)initWithConfiguration:(id)a3 startSource:(unint64_t)a4 activityMoveMode:(int64_t)a5 activityPausedRingsObserver:(id)a6 catalogWorkout:(id)a7 isWorkoutBuddyFeatureSupported:(BOOL)a8;
- (WOCorePowerZonesAlertTargetZone)currentPowerAlertTargetZone;
- (WOCorePowerZonesAlertTargetZone)currentPowerZonesAlertTargetZone;
- (WONPSDomainAccessorProtocol)domainAccessor;
- (id)analyticsAlertsConfiguredWithFormattingManager:(id)a3;
- (id)copy;
- (int64_t)currentActivityLocationType;
- (int64_t)currentMultiSportLeg;
- (int64_t)remainingMultisportLegCount;
- (int64_t)safetyCheckInWillDismissCounter;
- (unint64_t)fitnessMachineSeymourStartSource;
- (unint64_t)startSource;
- (void)advanceMultisportLegWithSuggestedConfiguration:(id)a3;
- (void)restoreFromWorkoutActivityMetadata:(id)a3;
- (void)saveWorkoutConfigurationMetadataTo:(id)a3;
- (void)setFitnessMachineSeymourStartSource:(unint64_t)a3;
- (void)setIsWorkoutBuddyFeatureNoLongerAvailable:(BOOL)a3;
- (void)setIsWorkoutBuddyMuted:(BOOL)a3;
- (void)setIsWorkoutBuddyUnavailableDueToHeadphonesOff:(BOOL)a3;
- (void)setMirroredStartInterrupted:(BOOL)a3;
- (void)setRequiresGoalConfiguration:(BOOL)a3;
- (void)setSafetyCheckInWillDismissCounter:(int64_t)a3;
- (void)setStartSource:(unint64_t)a3;
- (void)setSuggestedHKWorkoutConfiguration:(id)a3;
- (void)setVideoMetrics:(id)a3;
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

- (void)setStartSource:(unint64_t)a3
{
  v5 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_startSource;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)mirroredStartInterrupted
{
  v3 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_mirroredStartInterrupted;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setMirroredStartInterrupted:(BOOL)a3
{
  v5 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_mirroredStartInterrupted;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (WOCoreCatalogWorkout)catalogWorkoutBridge
{
  v2 = self;
  v3 = LiveWorkoutConfiguration.catalogWorkoutBridge.getter();

  return v3;
}

- (unint64_t)fitnessMachineSeymourStartSource
{
  v3 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_fitnessMachineSeymourStartSource;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setFitnessMachineSeymourStartSource:(unint64_t)a3
{
  v5 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_fitnessMachineSeymourStartSource;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (HKWorkoutConfiguration)suggestedHKWorkoutConfiguration
{
  v3 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_suggestedHKWorkoutConfiguration;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setSuggestedHKWorkoutConfiguration:(id)a3
{
  v5 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_suggestedHKWorkoutConfiguration;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
}

- (BOOL)requiresGoalConfiguration
{
  v3 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_requiresGoalConfiguration;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setRequiresGoalConfiguration:(BOOL)a3
{
  v5 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_requiresGoalConfiguration;
  swift_beginAccess();
  *(self + v5) = a3;
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
  v2 = self;
  v3 = LiveWorkoutConfiguration.currentMultisportDisplayedActivityType.getter();

  return v3;
}

- (FIUIWorkoutActivityType)currentActivityType
{
  v2 = self;
  v3 = LiveWorkoutConfiguration.currentActivityType.getter();

  return v3;
}

- (int64_t)currentActivityLocationType
{
  v2 = self;
  v3 = LiveWorkoutConfiguration.currentActivityType.getter();
  v4 = [v3 isIndoor];

  if (v4)
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
  v3 = self;
  static Published.subscript.getter();

  return v5;
}

- (int64_t)remainingMultisportLegCount
{
  v2 = self;
  LiveWorkoutConfiguration.remainingMultisportLegCount.getter();
  v4 = v3;

  return v4;
}

- (WOCorePowerZonesAlertTargetZone)currentPowerZonesAlertTargetZone
{
  v2 = self;
  v3 = LiveWorkoutConfiguration.currentPowerZonesAlertTargetZone.getter();

  return v3;
}

- (WOCorePowerZonesAlertTargetZone)currentPowerAlertTargetZone
{
  v2 = self;
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
    v5 = self;
    v6 = LiveWorkoutConfiguration.currentGoal.getter();

    v4 = v6;
  }

  return v4;
}

- (NLSessionActivityGoal)currentGoal
{
  v2 = self;
  v3 = LiveWorkoutConfiguration.currentGoal.getter();

  return v3;
}

- (WOCoreHeartRateTargetZone)currentHeartRateTargetZone
{
  v2 = self;
  v3 = LiveWorkoutConfiguration.currentHeartRateTargetZone.getter();

  return v3;
}

- (BOOL)isWorkoutBuddyMuted
{
  v3 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyMuted;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsWorkoutBuddyMuted:(BOOL)a3
{
  v5 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyMuted;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)isWorkoutBuddyFeatureNoLongerAvailable
{
  v3 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyFeatureNoLongerAvailable;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsWorkoutBuddyFeatureNoLongerAvailable:(BOOL)a3
{
  v5 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyFeatureNoLongerAvailable;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)isWorkoutBuddyUnavailableDueToHeadphonesOff
{
  v3 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyUnavailableDueToHeadphonesOff;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsWorkoutBuddyUnavailableDueToHeadphonesOff:(BOOL)a3
{
  v5 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyUnavailableDueToHeadphonesOff;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)multisportAutomaticallySwitchesLegs
{
  v3 = *(self + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  type metadata accessor for MultiSportWorkoutConfiguration();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = self;
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

- (void)setVideoMetrics:(id)a3
{
  if (a3)
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
  v2 = self;
  v3 = LiveWorkoutConfiguration.topLevelHKWorkoutConfiguration.getter();

  return v3;
}

- (HKWorkoutConfiguration)hkWorkoutConfiguration
{
  v2 = self;
  v3 = LiveWorkoutConfiguration.hkWorkoutConfiguration.getter();

  return v3;
}

- (BOOL)isLowPowerMode
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 processInfo];
  v6 = [v5 isLowPowerModeEnabled];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = [*(v4 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_domainAccessor) isPowerSavingModeEnabled];
  }

  return v7;
}

- (NSDictionary)hkWorkoutConfigurationMetadata
{
  v2 = self;
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
  v6 = self;
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
  v2 = self;
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
  v2 = self;
  v3 = LiveWorkoutConfiguration.supportsWorkoutVoiceMotivation.getter();

  return v3 & 1;
}

- (BOOL)configureWithWorkoutVoiceMotivationWithShouldLog:(BOOL)a3
{
  v4 = self;
  v5 = LiveWorkoutConfiguration.configureWithWorkoutVoiceMotivation(shouldLog:)(a3);

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
  v2 = self;
  v3 = LiveWorkoutConfiguration.canDisplayBlockRepeatIndicator.getter();

  return v3 & 1;
}

- (BOOL)canDisplayTrackLaneIndicator
{
  v2 = self;
  v3 = LiveWorkoutConfiguration.canDisplayTrackLaneIndicator.getter();

  return v3 & 1;
}

- (BOOL)startTrackingWhenMetricsDisplay
{
  v2 = self;
  v3 = LiveWorkoutConfiguration.startTrackingWhenMetricsDisplay.getter();

  return v3 & 1;
}

- (BOOL)shouldHideMetricsUntilFirstAlert
{
  v2 = self;
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

- (void)setSafetyCheckInWillDismissCounter:(int64_t)a3
{
  v5 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_safetyCheckInWillDismissCounter;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (WOCoreLiveWorkoutConfiguration)initWithConfiguration:(id)a3 startSource:(unint64_t)a4 activityMoveMode:(int64_t)a5 activityPausedRingsObserver:(id)a6 catalogWorkout:(id)a7 isWorkoutBuddyFeatureSupported:(BOOL)a8
{
  v8 = a8;
  v13 = a3;
  v14 = a6;
  v15 = a7;
  return LiveWorkoutConfiguration.init(configuration:startSource:activityMoveMode:activityPausedRingsObserver:catalogWorkout:isWorkoutBuddyFeatureSupported:)(v13, a4, a5, v14, a7, v8);
}

- (BOOL)moveToNextStep
{
  v2 = self;
  v3 = LiveWorkoutConfiguration.moveToNextStep()();

  return v3;
}

- (BOOL)isLastIntervalWorkoutKeyPath
{
  v2 = self;
  IntervalWorkoutKey = LiveWorkoutConfiguration.isLastIntervalWorkoutKeyPath()();

  return IntervalWorkoutKey;
}

- (BOOL)isLastMultiSportLeg
{
  v2 = self;
  MultiSport = LiveWorkoutConfiguration.isLastMultiSportLeg()();

  return MultiSport;
}

- (void)advanceMultisportLegWithSuggestedConfiguration:(id)a3
{
  v5 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_suggestedHKWorkoutConfiguration;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
  v8 = self;

  swift_getKeyPath();
  swift_getKeyPath();
  v9 = v7;
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

- (void)restoreFromWorkoutActivityMetadata:(id)a3
{
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  LiveWorkoutConfiguration.restoreFromWorkoutActivityMetadata(_:)(v4);
}

- (BOOL)supportsSegments
{
  v2 = self;
  v3 = LiveWorkoutConfiguration.supportsSegments.getter();

  return v3 & 1;
}

- (BOOL)trackRunningIsSuspended
{
  v2 = *(self + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  v3 = self;
  LOBYTE(v2) = specialized WorkoutConfiguration.trackRunningIsSuspended(domainAccessor:)();

  return v2 & 1;
}

- (BOOL)supportsMetricType:(unint64_t)a3 domainAccessor:(id)a4
{
  swift_unknownObjectRetain();
  v6 = self;
  LOBYTE(a3) = specialized LiveWorkoutConfiguration.supportsMetricType(_:domainAccessor:)(a3);
  swift_unknownObjectRelease();

  return a3 & 1;
}

- (NSString)logString
{
  v2 = self;
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

- (id)analyticsAlertsConfiguredWithFormattingManager:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = LiveWorkoutConfiguration.analyticsAlertsConfigured(formattingManager:)(v4);
  v8 = v7;

  v9 = MEMORY[0x20F2E6C00](v6, v8);

  return v9;
}

- (NSString)analyticsActivityType
{
  v2 = self;
  v3 = LiveWorkoutConfiguration.analyticsActivityType.getter();
  v5 = v4;

  v6 = MEMORY[0x20F2E6C00](v3, v5);

  return v6;
}

- (NSString)analyticsConfigurationType
{
  v2 = [*(self + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration) analyticsKey];

  return v2;
}

- (NSString)analyticsSubActivities
{
  v2 = [*(self + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration) analyticsSubActivities];

  return v2;
}

- (void)saveWorkoutConfigurationMetadataTo:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  LiveWorkoutConfiguration.saveWorkoutConfigurationMetadata(to:)(a3);
  swift_unknownObjectRelease();
}

@end