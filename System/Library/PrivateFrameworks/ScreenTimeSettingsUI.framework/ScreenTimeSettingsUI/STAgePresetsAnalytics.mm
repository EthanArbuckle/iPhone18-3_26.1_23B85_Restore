@interface STAgePresetsAnalytics
- (_TtC20ScreenTimeSettingsUI21STAgePresetsAnalytics)init;
- (void)sendEnabledRestrictionsEventWithSelectionType:(int64_t)type lowerBound:(id)bound upperBound:(id)upperBound;
- (void)sendPresetsValueChangedAnalyticsEventWithRecommendedPresetId:(id)id fieldName:(id)name recomendedValue:(id)value selectedValue:(id)selectedValue;
- (void)sendPresetsViewedAnalyticsEventWithIsInitialSetup:(BOOL)setup;
- (void)sendSelectedAgeRangeAnalyticsEventWithLowerBound:(int64_t)bound upperBound:(int64_t)upperBound;
@end

@implementation STAgePresetsAnalytics

- (_TtC20ScreenTimeSettingsUI21STAgePresetsAnalytics)init
{
  v2 = sub_264CC2FFC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264CC2FEC();
  v6 = sub_264CC2FDC();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v9 = type metadata accessor for STAgePresetsAnalytics();
  v10 = objc_allocWithZone(v9);
  v11 = &v10[OBJC_IVAR____TtC20ScreenTimeSettingsUI21STAgePresetsAnalytics_sessionId];
  *v11 = v6;
  v11[1] = v8;
  v14.receiver = v10;
  v14.super_class = v9;
  v12 = [(STAgePresetsAnalytics *)&v14 init];
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v12;
}

- (void)sendPresetsViewedAnalyticsEventWithIsInitialSetup:(BOOL)setup
{
  setupCopy = setup;
  v5 = objc_allocWithZone(MEMORY[0x277D4B8B0]);
  selfCopy = self;
  v6 = sub_264CC459C();
  v7 = [v5 initWithSessionId:v6 isInitialSetup:setupCopy];

  v8 = objc_opt_self();
  v9 = v7;
  [v8 reportEvent_];
}

- (void)sendSelectedAgeRangeAnalyticsEventWithLowerBound:(int64_t)bound upperBound:(int64_t)upperBound
{
  v7 = objc_allocWithZone(MEMORY[0x277D4BA20]);
  selfCopy = self;
  v8 = sub_264CC459C();
  v9 = [v7 initWithSessionId:v8 lowerBoundAgeRange:bound upperBoundAgeRange:upperBound];

  v10 = objc_opt_self();
  v11 = v9;
  [v10 reportEvent_];
}

- (void)sendEnabledRestrictionsEventWithSelectionType:(int64_t)type lowerBound:(id)bound upperBound:(id)upperBound
{
  v9 = objc_allocWithZone(MEMORY[0x277D4BA30]);
  boundCopy = bound;
  upperBoundCopy = upperBound;
  selfCopy = self;
  v12 = sub_264CC459C();
  v13 = [v9 initWithSessionId:v12 selectionType:type lowerBoundAgeRange:boundCopy upperBoundAgeRange:upperBoundCopy];

  v14 = objc_opt_self();
  v15 = v13;
  [v14 reportEvent_];
}

- (void)sendPresetsValueChangedAnalyticsEventWithRecommendedPresetId:(id)id fieldName:(id)name recomendedValue:(id)value selectedValue:(id)selectedValue
{
  if (id)
  {
    v9 = sub_264CC45DC();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v12 = sub_264CC45DC();
  v14 = v13;
  if (!value)
  {
    memset(v18, 0, sizeof(v18));
    swift_unknownObjectRetain();
    selfCopy = self;
    if (selectedValue)
    {
      goto LABEL_6;
    }

LABEL_8:
    memset(v17, 0, sizeof(v17));
    goto LABEL_9;
  }

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  selfCopy2 = self;
  sub_264CC489C();
  swift_unknownObjectRelease();
  if (!selectedValue)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_264CC489C();
  swift_unknownObjectRelease();
LABEL_9:
  sub_264CBBEC0(v9, v11, v12, v14, v18, v17);

  sub_264CBC4B0(v17);
  sub_264CBC4B0(v18);
}

@end