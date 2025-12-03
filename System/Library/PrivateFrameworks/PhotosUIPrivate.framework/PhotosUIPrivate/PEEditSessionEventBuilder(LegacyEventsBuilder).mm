@interface PEEditSessionEventBuilder(LegacyEventsBuilder)
- (id)initWithLegacyEnterEditEvent:()LegacyEventsBuilder andExitEvent:;
@end

@implementation PEEditSessionEventBuilder(LegacyEventsBuilder)

- (id)initWithLegacyEnterEditEvent:()LegacyEventsBuilder andExitEvent:
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = &off_1F2CB2FE8;
  v8 = objc_msgSendSuper2(&v12, sel_init);
  if (v8)
  {
    asset = [v6 asset];
    [v8 setAsset:asset];

    [v6 enterEditDuration];
    [v8 setEnterEditDuration:?];
    [v6 resourceCheckingDuration];
    [v8 setResourceCheckingDuration:?];
    [v6 resourceDownloadDuration];
    [v8 setResourceDownloadDuration:?];
    [v6 resourceLoadingDuration];
    [v8 setResourceLoadingDuration:?];
    [v6 resourceProcessingDuration];
    [v8 setResourceProcessingDuration:?];
    [v6 autoCalcDuration];
    [v8 setAutoCalcDuration:?];
    [v8 setSessionEndReason:{objc_msgSend(v7, "sessionEndReason")}];
    [v7 exitEditDuration];
    [v8 setExitEditDuration:?];
    [v8 setFirstSinceLaunch:{objc_msgSend(v7, "isFirstSinceLaunch")}];
    compositionController = [v7 compositionController];
    [v8 setCompositionController:compositionController];

    [v8 setSaveActionType:{objc_msgSend(v7, "saveActionType")}];
  }

  return v8;
}

@end