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
- (id)registerForPCUsedEventWithAction:(id)action;
- (void)adMarkerInteracted;
- (void)addUnfilledReason:(int64_t)reason;
- (void)contentLoadFailure;
- (void)createdWithAdType:(int64_t)type;
- (void)createdWithAdType:(int64_t)type container:(int64_t)container;
- (void)createdWithAdType:(int64_t)type container:(int64_t)container format:(int64_t)format;
- (void)dealloc;
- (void)discardedWithCode:(int64_t)code;
- (void)getAppWithButtonState:(int64_t)state timeToPreviousInstall:(int64_t)install;
- (void)interacted;
- (void)interactedAtXPos:(float)pos yPos:(float)yPos;
- (void)interactedWithElementID:(unsigned __int8)d atXPos:(float)pos yPos:(float)yPos;
- (void)interactedWithType:(int64_t)type;
- (void)interstitialOnScreenWithCollapsed:(BOOL)collapsed;
- (void)loaded;
- (void)notConsumedWithCode:(int64_t)code placeholder:(BOOL)placeholder;
- (void)notifyListenersPCUsed;
- (void)offScreenWithCollapsed:(BOOL)collapsed;
- (void)onScreenWithCollapsed:(BOOL)collapsed;
- (void)placedWithPlacementType:(int64_t)type placement:(int64_t)placement;
- (void)placedWithPlacementType:(int64_t)type placement:(int64_t)placement position:(int64_t)position;
- (void)placedWithPlacementType:(int64_t)type placement:(int64_t)placement unfilledReason:(int64_t)reason;
- (void)placedWithPlacementType:(int64_t)type placement:(int64_t)placement wasNativeSlot:(BOOL)slot;
- (void)ready;
- (void)registerHandlerForAllMetricsWithClosure:(id)closure;
- (void)removeHandler;
- (void)replacedWithHelper:(id)helper;
- (void)setDiagnostics:(id)diagnostics;
- (void)setDidImpress:(BOOL)impress;
- (void)setDidUnload:(BOOL)unload;
- (void)setHasBeenOnScreen:(BOOL)screen;
- (void)setImpressionDuration:(double)duration;
- (void)setImpressionStartDate:(id)date;
- (void)setImpressionThresholdDuration:(double)duration;
- (void)setIsClickImpression:(BOOL)impression;
- (void)setIsCurrentlyOnScreen:(BOOL)screen;
- (void)setPrimitiveCreator:(id)creator;
- (void)trackTimeSpent;
- (void)unloadedWithReason:(int64_t)reason;
- (void)unregisterForPCUsedEventWithListenerID:(id)d;
- (void)updateElementsShownWithShown:(id)shown partiallyShown:(id)partiallyShown;
- (void)userReturnedFromInteractionWithIsVoiceOverEnabled:(BOOL)enabled;
- (void)userReturnedFromInteractionWithIsVoiceOverEnabled:(BOOL)enabled ignoreVisibilityState:(BOOL)state;
- (void)visibleWithPercent:(int64_t)percent starting:(id)starting duration:(double)duration collapsed:(BOOL)collapsed;
- (void)visibleWithPercent:(int64_t)percent starting:(id)starting duration:(double)duration scrollVelocity:(float)velocity collapsed:(BOOL)collapsed;
- (void)webAdRemoved;
@end

@implementation JourneyMetricsHelper

- (void)setImpressionThresholdDuration:(double)duration
{
  v5 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_impressionThresholdDuration;
  swift_beginAccess();
  *(self + v5) = duration;
}

- (id)registerForPCUsedEventWithAction:(id)action
{
  v4 = _Block_copy(action);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  JourneyMetricsHelper.registerForPCUsedEvent(action:)(sub_1C1B4AD80, v5);

  v7 = sub_1C1B94D78();

  return v7;
}

- (void)createdWithAdType:(int64_t)type container:(int64_t)container
{
  *(self + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_wasCreated) = 1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  selfCopy = self;
  v9 = sub_1C1AB2B4C(Strong, type, container, 0, 0);
  swift_unknownObjectRelease();
  v10 = sub_1C1AB35FC();
  sub_1C1AB3CFC(1400, v9, v10);
}

- (void)addUnfilledReason:(int64_t)reason
{
  selfCopy = self;
  sub_1C1AB6130(reason);
}

- (void)userReturnedFromInteractionWithIsVoiceOverEnabled:(BOOL)enabled
{
  selfCopy = self;
  sub_1C1AB86CC(enabled, 0);
}

- (BOOL)hasBeenOnScreen
{
  v3 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_hasBeenOnScreen;
  swift_beginAccess();
  return *(self + v3);
}

- (void)interstitialOnScreenWithCollapsed:(BOOL)collapsed
{
  selfCopy = self;
  sub_1C1AB8B34(collapsed);
}

- (void)placedWithPlacementType:(int64_t)type placement:(int64_t)placement wasNativeSlot:(BOOL)slot
{
  selfCopy = self;
  sub_1C1AB8C60(type, placement, 0, 1, 200, 0);
}

- (void)notifyListenersPCUsed
{
  selfCopy = self;
  JourneyMetricsHelper.notifyListenersPCUsed()();
}

- (void)unregisterForPCUsedEventWithListenerID:(id)d
{
  v4 = sub_1C1B94D88();
  v6 = v5;
  selfCopy = self;
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

- (void)setPrimitiveCreator:(id)creator
{
  v5 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_primitiveCreator;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = creator;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (void)setHasBeenOnScreen:(BOOL)screen
{
  v5 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_hasBeenOnScreen;
  swift_beginAccess();
  *(self + v5) = screen;
}

- (BOOL)isCurrentlyOnScreen
{
  v3 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_isCurrentlyOnScreen;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsCurrentlyOnScreen:(BOOL)screen
{
  v5 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_isCurrentlyOnScreen;
  swift_beginAccess();
  *(self + v5) = screen;
}

- (BOOL)didUnload
{
  v3 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_didUnload;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setDidUnload:(BOOL)unload
{
  v5 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_didUnload;
  swift_beginAccess();
  *(self + v5) = unload;
}

- (BOOL)didImpress
{
  v3 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_didImpress;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setDidImpress:(BOOL)impress
{
  v5 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_didImpress;
  swift_beginAccess();
  *(self + v5) = impress;
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

- (void)setImpressionStartDate:(id)date
{
  v5 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v13 - v7;
  if (date)
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
  selfCopy = self;
  sub_1C1AABE90(v8, self + v11);
  swift_endAccess();
}

- (double)impressionDuration
{
  v3 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_impressionDuration;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setImpressionDuration:(double)duration
{
  v5 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_impressionDuration;
  swift_beginAccess();
  *(self + v5) = duration;
}

- (BOOL)isClickImpression
{
  v3 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_isClickImpression;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsClickImpression:(BOOL)impression
{
  v5 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_isClickImpression;
  swift_beginAccess();
  *(self + v5) = impression;
}

- (_TtC15PromotedContent31JourneyMetricsHelperDiagnostics)diagnostics
{
  v3 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_diagnostics;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setDiagnostics:(id)diagnostics
{
  v5 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_diagnostics;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = diagnostics;
  diagnosticsCopy = diagnostics;
}

- (double)impressionThresholdDuration
{
  v3 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_impressionThresholdDuration;
  swift_beginAccess();
  return *(self + v3);
}

- (void)dealloc
{
  selfCopy = self;
  sub_1C1B7D0A4();
  sub_1C1B7EF7C(9102);
  v3.receiver = selfCopy;
  v3.super_class = type metadata accessor for JourneyMetricsHelper();
  [(JourneyMetricsHelper *)&v3 dealloc];
}

- (void)registerHandlerForAllMetricsWithClosure:(id)closure
{
  v4 = _Block_copy(closure);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_1C1B7DB78(sub_1C1AFB3A0, v5);
}

- (void)removeHandler
{
  selfCopy = self;
  sub_1C1B7DD6C();
}

- (void)discardedWithCode:(int64_t)code
{
  selfCopy = self;
  sub_1C1B7DEDC(code);
}

- (void)notConsumedWithCode:(int64_t)code placeholder:(BOOL)placeholder
{
  selfCopy = self;
  sub_1C1B85A58(code);
}

- (void)trackTimeSpent
{
  selfCopy = self;
  sub_1C1B7E168();
}

- (void)createdWithAdType:(int64_t)type
{
  selfCopy = self;
  sub_1C1B7E3B4(type);
}

- (void)createdWithAdType:(int64_t)type container:(int64_t)container format:(int64_t)format
{
  *(self + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_wasCreated) = 1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  selfCopy = self;
  v10 = sub_1C1AB2B4C(Strong, type, container, 0, 0);
  swift_unknownObjectRelease();
  v11 = sub_1C1AB35FC();
  sub_1C1AB3CFC(1400, v10, v11);
}

- (void)replacedWithHelper:(id)helper
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1C1B7E648(helper);
  swift_unknownObjectRelease();
}

- (void)loaded
{
  selfCopy = self;
  sub_1C1B7EE58();
}

- (void)webAdRemoved
{
  v2 = self + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_unloadReason;
  *v2 = 9101;
  v2[8] = 0;
}

- (void)unloadedWithReason:(int64_t)reason
{
  selfCopy = self;
  sub_1C1B7EF7C(reason);
}

- (void)placedWithPlacementType:(int64_t)type placement:(int64_t)placement
{
  selfCopy = self;
  sub_1C1AB8C60(type, placement, 0, 0, 200, 0);
}

- (void)placedWithPlacementType:(int64_t)type placement:(int64_t)placement unfilledReason:(int64_t)reason
{
  selfCopy = self;
  sub_1C1AB8C60(type, placement, 0, 0, reason, 0);
}

- (void)placedWithPlacementType:(int64_t)type placement:(int64_t)placement position:(int64_t)position
{
  selfCopy = self;
  sub_1C1AB8C60(type, placement, position, 0, 200, 0);
}

- (void)ready
{
  selfCopy = self;
  sub_1C1B7F484();
}

- (void)onScreenWithCollapsed:(BOOL)collapsed
{
  selfCopy = self;
  sub_1C1B7F588(collapsed);
}

- (void)visibleWithPercent:(int64_t)percent starting:(id)starting duration:(double)duration collapsed:(BOOL)collapsed
{
  collapsedCopy = collapsed;
  v10 = sub_1C1B94588();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v16[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C1B94558();
  selfCopy = self;
  v16[12] = 1;
  sub_1C1B7FF1C(percent, v14, 0x100000000, collapsedCopy, duration);

  (*(v11 + 8))(v14, v10);
}

- (void)visibleWithPercent:(int64_t)percent starting:(id)starting duration:(double)duration scrollVelocity:(float)velocity collapsed:(BOOL)collapsed
{
  collapsedCopy = collapsed;
  v12 = sub_1C1B94588();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v18[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C1B94558();
  selfCopy = self;
  v18[12] = 0;
  sub_1C1B7FF1C(percent, v16, LODWORD(velocity), collapsedCopy, duration);

  (*(v13 + 8))(v16, v12);
}

- (void)offScreenWithCollapsed:(BOOL)collapsed
{
  selfCopy = self;
  sub_1C1B80E54(collapsed);
}

- (void)interacted
{
  selfCopy = self;
  sub_1C1B81934();
}

- (void)interactedAtXPos:(float)pos yPos:(float)yPos
{
  v4 = LODWORD(pos);
  v5 = LODWORD(yPos);
  selfCopy = self;
  sub_1C1B8119C(256, v4, v5, 7300, 0);
}

- (void)interactedWithElementID:(unsigned __int8)d atXPos:(float)pos yPos:(float)yPos
{
  dCopy = d;
  v6 = LODWORD(pos);
  v7 = LODWORD(yPos);
  selfCopy = self;
  sub_1C1B8119C(dCopy, v6, v7, 7300, 0);
}

- (void)interactedWithType:(int64_t)type
{
  selfCopy = self;
  sub_1C1B81AF0(type);
}

- (void)userReturnedFromInteractionWithIsVoiceOverEnabled:(BOOL)enabled ignoreVisibilityState:(BOOL)state
{
  selfCopy = self;
  sub_1C1AB86CC(enabled, state);
}

- (void)adMarkerInteracted
{
  selfCopy = self;
  sub_1C1B821DC();
}

- (void)getAppWithButtonState:(int64_t)state timeToPreviousInstall:(int64_t)install
{
  selfCopy = self;
  sub_1C1B85ECC(state);
}

- (void)contentLoadFailure
{
  selfCopy = self;
  sub_1C1B824F8();
}

- (_TtC15PromotedContent20JourneyMetricsHelper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)updateElementsShownWithShown:(id)shown partiallyShown:(id)partiallyShown
{
  v5 = sub_1C1B94EC8();
  v6 = sub_1C1B94EC8();
  selfCopy = self;
  JourneyMetricsHelper.updateElementsShown(shown:partiallyShown:)(v5, v6);
}

- (id)debugging
{
  selfCopy = self;
  v3 = [(JourneyMetricsHelper *)selfCopy debugDescription];
  if (!v3)
  {
    sub_1C1B94D88();
    v3 = sub_1C1B94D78();
  }

  return v3;
}

@end