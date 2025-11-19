@interface STAgePresetsAnalytics
- (_TtC20ScreenTimeSettingsUI21STAgePresetsAnalytics)init;
- (void)sendEnabledRestrictionsEventWithSelectionType:(int64_t)a3 lowerBound:(id)a4 upperBound:(id)a5;
- (void)sendPresetsValueChangedAnalyticsEventWithRecommendedPresetId:(id)a3 fieldName:(id)a4 recomendedValue:(id)a5 selectedValue:(id)a6;
- (void)sendPresetsViewedAnalyticsEventWithIsInitialSetup:(BOOL)a3;
- (void)sendSelectedAgeRangeAnalyticsEventWithLowerBound:(int64_t)a3 upperBound:(int64_t)a4;
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

- (void)sendPresetsViewedAnalyticsEventWithIsInitialSetup:(BOOL)a3
{
  v3 = a3;
  v5 = objc_allocWithZone(MEMORY[0x277D4B8B0]);
  v10 = self;
  v6 = sub_264CC459C();
  v7 = [v5 initWithSessionId:v6 isInitialSetup:v3];

  v8 = objc_opt_self();
  v9 = v7;
  [v8 reportEvent_];
}

- (void)sendSelectedAgeRangeAnalyticsEventWithLowerBound:(int64_t)a3 upperBound:(int64_t)a4
{
  v7 = objc_allocWithZone(MEMORY[0x277D4BA20]);
  v12 = self;
  v8 = sub_264CC459C();
  v9 = [v7 initWithSessionId:v8 lowerBoundAgeRange:a3 upperBoundAgeRange:a4];

  v10 = objc_opt_self();
  v11 = v9;
  [v10 reportEvent_];
}

- (void)sendEnabledRestrictionsEventWithSelectionType:(int64_t)a3 lowerBound:(id)a4 upperBound:(id)a5
{
  v9 = objc_allocWithZone(MEMORY[0x277D4BA30]);
  v10 = a4;
  v11 = a5;
  v16 = self;
  v12 = sub_264CC459C();
  v13 = [v9 initWithSessionId:v12 selectionType:a3 lowerBoundAgeRange:v10 upperBoundAgeRange:v11];

  v14 = objc_opt_self();
  v15 = v13;
  [v14 reportEvent_];
}

- (void)sendPresetsValueChangedAnalyticsEventWithRecommendedPresetId:(id)a3 fieldName:(id)a4 recomendedValue:(id)a5 selectedValue:(id)a6
{
  if (a3)
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
  if (!a5)
  {
    memset(v18, 0, sizeof(v18));
    swift_unknownObjectRetain();
    v16 = self;
    if (a6)
    {
      goto LABEL_6;
    }

LABEL_8:
    memset(v17, 0, sizeof(v17));
    goto LABEL_9;
  }

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v15 = self;
  sub_264CC489C();
  swift_unknownObjectRelease();
  if (!a6)
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