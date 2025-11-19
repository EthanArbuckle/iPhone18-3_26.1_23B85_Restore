@interface JourneyMetricsHelper
- (APMetricPrimitiveCreating)primitiveCreator;
- (APPCPromotableContent)promotedContent;
- (BOOL)didImpress;
- (BOOL)didUnload;
- (BOOL)hasBeenOnScreen;
- (BOOL)isClickImpression;
- (BOOL)isCurrentlyOnScreen;
- (NSDate)impressionStartDate;
- (_TtC15PromotedContent20JourneyMetricsHelper)init;
- (_TtC15PromotedContent31JourneyMetricsHelperDiagnostics)diagnostics;
- (double)impressionDuration;
- (double)impressionThresholdDuration;
- (id)debugging;
- (id)registerForPCUsedEventWithAction:(id)a3;
- (void)adMarkerInteracted;
- (void)addUnfilledReason:(int64_t)a3;
- (void)contentLoadFailure;
- (void)createdWithAdType:(int64_t)a3;
- (void)createdWithAdType:(int64_t)a3 container:(int64_t)a4;
- (void)createdWithAdType:(int64_t)a3 container:(int64_t)a4 format:(int64_t)a5;
- (void)dealloc;
- (void)discardedWithCode:(int64_t)a3;
- (void)getAppWithButtonState:(int64_t)a3 timeToPreviousInstall:(int64_t)a4;
- (void)interacted;
- (void)interactedAtXPos:(float)a3 yPos:(float)a4;
- (void)interactedWithElementID:(unsigned __int8)a3 atXPos:(float)a4 yPos:(float)a5;
- (void)interactedWithType:(int64_t)a3;
- (void)interstitialOnScreenWithCollapsed:(BOOL)a3;
- (void)loaded;
- (void)notConsumedWithCode:(int64_t)a3 placeholder:(BOOL)a4;
- (void)notifyListenersPCUsed;
- (void)offScreenWithCollapsed:(BOOL)a3;
- (void)onScreenWithCollapsed:(BOOL)a3;
- (void)placedWithPlacementType:(int64_t)a3 placement:(int64_t)a4;
- (void)placedWithPlacementType:(int64_t)a3 placement:(int64_t)a4 position:(int64_t)a5;
- (void)placedWithPlacementType:(int64_t)a3 placement:(int64_t)a4 unfilledReason:(int64_t)a5;
- (void)placedWithPlacementType:(int64_t)a3 placement:(int64_t)a4 wasNativeSlot:(BOOL)a5;
- (void)ready;
- (void)registerHandlerForAllMetricsWithClosure:(id)a3;
- (void)removeHandler;
- (void)replacedWithHelper:(id)a3;
- (void)setDiagnostics:(id)a3;
- (void)setDidImpress:(BOOL)a3;
- (void)setDidUnload:(BOOL)a3;
- (void)setHasBeenOnScreen:(BOOL)a3;
- (void)setImpressionDuration:(double)a3;
- (void)setImpressionStartDate:(id)a3;
- (void)setImpressionThresholdDuration:(double)a3;
- (void)setIsClickImpression:(BOOL)a3;
- (void)setIsCurrentlyOnScreen:(BOOL)a3;
- (void)setPrimitiveCreator:(id)a3;
- (void)trackTimeSpent;
- (void)unloadedWithReason:(int64_t)a3;
- (void)unregisterForPCUsedEventWithListenerID:(id)a3;
- (void)updateElementsShownWithShown:(id)a3 partiallyShown:(id)a4;
- (void)userReturnedFromInteractionWithIsVoiceOverEnabled:(BOOL)a3;
- (void)userReturnedFromInteractionWithIsVoiceOverEnabled:(BOOL)a3 ignoreVisibilityState:(BOOL)a4;
- (void)visibleWithPercent:(int64_t)a3 starting:(id)a4 duration:(double)a5 collapsed:(BOOL)a6;
- (void)visibleWithPercent:(int64_t)a3 starting:(id)a4 duration:(double)a5 scrollVelocity:(float)a6 collapsed:(BOOL)a7;
- (void)webAdRemoved;
@end

@implementation JourneyMetricsHelper

- (void)setImpressionThresholdDuration:(double)a3
{
  v5 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_impressionThresholdDuration;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (id)registerForPCUsedEventWithAction:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  JourneyMetricsHelper.registerForPCUsedEvent(action:)(sub_1C1B4AD80, v5);

  v7 = sub_1C1B94D78();

  return v7;
}

- (void)createdWithAdType:(int64_t)a3 container:(int64_t)a4
{
  *(self + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_wasCreated) = 1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = self;
  v9 = sub_1C1AB2B4C(Strong, a3, a4, 0, 0);
  swift_unknownObjectRelease();
  v10 = sub_1C1AB35FC();
  sub_1C1AB3CFC(1400, v9, v10);
}

- (void)addUnfilledReason:(int64_t)a3
{
  v4 = self;
  sub_1C1AB6130(a3);
}

- (void)userReturnedFromInteractionWithIsVoiceOverEnabled:(BOOL)a3
{
  v4 = self;
  sub_1C1AB86CC(a3, 0);
}

- (BOOL)hasBeenOnScreen
{
  v3 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_hasBeenOnScreen;
  swift_beginAccess();
  return *(self + v3);
}

- (void)interstitialOnScreenWithCollapsed:(BOOL)a3
{
  v4 = self;
  sub_1C1AB8B34(a3);
}

- (void)placedWithPlacementType:(int64_t)a3 placement:(int64_t)a4 wasNativeSlot:(BOOL)a5
{
  v7 = self;
  sub_1C1AB8C60(a3, a4, 0, 1, 200, 0);
}

- (void)notifyListenersPCUsed
{
  v2 = self;
  JourneyMetricsHelper.notifyListenersPCUsed()();
}

- (void)unregisterForPCUsedEventWithListenerID:(id)a3
{
  v4 = sub_1C1B94D88();
  v6 = v5;
  v7 = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  JourneyMetricsHelper.unregisterForPCUsedEvent(listenerID:)(v8);
}

- (APPCPromotableContent)promotedContent
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (APMetricPrimitiveCreating)primitiveCreator
{
  v3 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_primitiveCreator;
  swift_beginAccess();
  v4 = *(self + v3);
  v5 = swift_unknownObjectRetain();

  return v5;
}

- (void)setPrimitiveCreator:(id)a3
{
  v5 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_primitiveCreator;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (void)setHasBeenOnScreen:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_hasBeenOnScreen;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)isCurrentlyOnScreen
{
  v3 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_isCurrentlyOnScreen;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsCurrentlyOnScreen:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_isCurrentlyOnScreen;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)didUnload
{
  v3 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_didUnload;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setDidUnload:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_didUnload;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)didImpress
{
  v3 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_didImpress;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setDidImpress:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_didImpress;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (NSDate)impressionStartDate
{
  v3 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - v5;
  v7 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_impressionStartDate;
  swift_beginAccess();
  sub_1C1ABB0C4(self + v7, v6);
  v8 = sub_1C1B94588();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    v12 = sub_1C1B94538();
    (*(v9 + 8))(v6, v8);
    v11 = v12;
  }

  return v11;
}

- (void)setImpressionStartDate:(id)a3
{
  v5 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v13 - v7;
  if (a3)
  {
    sub_1C1B94558();
    v9 = sub_1C1B94588();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  }

  else
  {
    v10 = sub_1C1B94588();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  v11 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_impressionStartDate;
  swift_beginAccess();
  v12 = self;
  sub_1C1AABE90(v8, self + v11);
  swift_endAccess();
}

- (double)impressionDuration
{
  v3 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_impressionDuration;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setImpressionDuration:(double)a3
{
  v5 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_impressionDuration;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)isClickImpression
{
  v3 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_isClickImpression;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsClickImpression:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_isClickImpression;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (_TtC15PromotedContent31JourneyMetricsHelperDiagnostics)diagnostics
{
  v3 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_diagnostics;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setDiagnostics:(id)a3
{
  v5 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_diagnostics;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
}

- (double)impressionThresholdDuration
{
  v3 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_impressionThresholdDuration;
  swift_beginAccess();
  return *(self + v3);
}

- (void)dealloc
{
  v2 = self;
  sub_1C1B7D0A4();
  sub_1C1B7EF7C(9102);
  v3.receiver = v2;
  v3.super_class = type metadata accessor for JourneyMetricsHelper();
  [(JourneyMetricsHelper *)&v3 dealloc];
}

- (void)registerHandlerForAllMetricsWithClosure:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_1C1B7DB78(sub_1C1AFB3A0, v5);
}

- (void)removeHandler
{
  v2 = self;
  sub_1C1B7DD6C();
}

- (void)discardedWithCode:(int64_t)a3
{
  v4 = self;
  sub_1C1B7DEDC(a3);
}

- (void)notConsumedWithCode:(int64_t)a3 placeholder:(BOOL)a4
{
  v5 = self;
  sub_1C1B85A58(a3);
}

- (void)trackTimeSpent
{
  v2 = self;
  sub_1C1B7E168();
}

- (void)createdWithAdType:(int64_t)a3
{
  v4 = self;
  sub_1C1B7E3B4(a3);
}

- (void)createdWithAdType:(int64_t)a3 container:(int64_t)a4 format:(int64_t)a5
{
  *(self + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_wasCreated) = 1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = self;
  v10 = sub_1C1AB2B4C(Strong, a3, a4, 0, 0);
  swift_unknownObjectRelease();
  v11 = sub_1C1AB35FC();
  sub_1C1AB3CFC(1400, v10, v11);
}

- (void)replacedWithHelper:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1C1B7E648(a3);
  swift_unknownObjectRelease();
}

- (void)loaded
{
  v2 = self;
  sub_1C1B7EE58();
}

- (void)webAdRemoved
{
  v2 = self + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_unloadReason;
  *v2 = 9101;
  v2[8] = 0;
}

- (void)unloadedWithReason:(int64_t)a3
{
  v4 = self;
  sub_1C1B7EF7C(a3);
}

- (void)placedWithPlacementType:(int64_t)a3 placement:(int64_t)a4
{
  v6 = self;
  sub_1C1AB8C60(a3, a4, 0, 0, 200, 0);
}

- (void)placedWithPlacementType:(int64_t)a3 placement:(int64_t)a4 unfilledReason:(int64_t)a5
{
  v8 = self;
  sub_1C1AB8C60(a3, a4, 0, 0, a5, 0);
}

- (void)placedWithPlacementType:(int64_t)a3 placement:(int64_t)a4 position:(int64_t)a5
{
  v8 = self;
  sub_1C1AB8C60(a3, a4, a5, 0, 200, 0);
}

- (void)ready
{
  v2 = self;
  sub_1C1B7F484();
}

- (void)onScreenWithCollapsed:(BOOL)a3
{
  v4 = self;
  sub_1C1B7F588(a3);
}

- (void)visibleWithPercent:(int64_t)a3 starting:(id)a4 duration:(double)a5 collapsed:(BOOL)a6
{
  v6 = a6;
  v10 = sub_1C1B94588();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v16[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C1B94558();
  v15 = self;
  v16[12] = 1;
  sub_1C1B7FF1C(a3, v14, 0x100000000, v6, a5);

  (*(v11 + 8))(v14, v10);
}

- (void)visibleWithPercent:(int64_t)a3 starting:(id)a4 duration:(double)a5 scrollVelocity:(float)a6 collapsed:(BOOL)a7
{
  v7 = a7;
  v12 = sub_1C1B94588();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v18[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C1B94558();
  v17 = self;
  v18[12] = 0;
  sub_1C1B7FF1C(a3, v16, LODWORD(a6), v7, a5);

  (*(v13 + 8))(v16, v12);
}

- (void)offScreenWithCollapsed:(BOOL)a3
{
  v4 = self;
  sub_1C1B80E54(a3);
}

- (void)interacted
{
  v2 = self;
  sub_1C1B81934();
}

- (void)interactedAtXPos:(float)a3 yPos:(float)a4
{
  v4 = LODWORD(a3);
  v5 = LODWORD(a4);
  v6 = self;
  sub_1C1B8119C(256, v4, v5, 7300, 0);
}

- (void)interactedWithElementID:(unsigned __int8)a3 atXPos:(float)a4 yPos:(float)a5
{
  v5 = a3;
  v6 = LODWORD(a4);
  v7 = LODWORD(a5);
  v8 = self;
  sub_1C1B8119C(v5, v6, v7, 7300, 0);
}

- (void)interactedWithType:(int64_t)a3
{
  v4 = self;
  sub_1C1B81AF0(a3);
}

- (void)userReturnedFromInteractionWithIsVoiceOverEnabled:(BOOL)a3 ignoreVisibilityState:(BOOL)a4
{
  v6 = self;
  sub_1C1AB86CC(a3, a4);
}

- (void)adMarkerInteracted
{
  v2 = self;
  sub_1C1B821DC();
}

- (void)getAppWithButtonState:(int64_t)a3 timeToPreviousInstall:(int64_t)a4
{
  v5 = self;
  sub_1C1B85ECC(a3);
}

- (void)contentLoadFailure
{
  v2 = self;
  sub_1C1B824F8();
}

- (_TtC15PromotedContent20JourneyMetricsHelper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)updateElementsShownWithShown:(id)a3 partiallyShown:(id)a4
{
  v5 = sub_1C1B94EC8();
  v6 = sub_1C1B94EC8();
  v7 = self;
  JourneyMetricsHelper.updateElementsShown(shown:partiallyShown:)(v5, v6);
}

- (id)debugging
{
  v2 = self;
  v3 = [(JourneyMetricsHelper *)v2 debugDescription];
  if (!v3)
  {
    sub_1C1B94D88();
    v3 = sub_1C1B94D78();
  }

  return v3;
}

@end