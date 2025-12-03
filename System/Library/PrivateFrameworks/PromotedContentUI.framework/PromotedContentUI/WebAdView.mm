@interface WebAdView
- (CGRect)frame;
- (id)webView:(id)view createWebViewWithConfiguration:(id)configuration forNavigationAction:(id)action windowFeatures:(id)features;
- (void)setFrame:(CGRect)frame;
- (void)sizeCategoryChanged:(id)changed;
- (void)webProcessDiagnosticJSOStatusReported:(id)reported status:(id)status;
- (void)webProcessMRAIDJSODidCallClose;
- (void)webProcessMRAIDJSODidCallCreateCalendarEvent:(id)event;
- (void)webProcessMRAIDJSODidCallExpand:(id)expand withMaximumWidth:(double)width andHeight:(double)height;
- (void)webProcessMRAIDJSODidCallOpen:(id)open;
- (void)webProcessPlugInBrowserContextControllerGlobalObjectIsAvailableForFrame;
- (void)webProcessVideoAdJSOCreativeViewLoaded;
- (void)webProcessVideoAdJSODidCallAudioMuted:(float)muted;
- (void)webProcessVideoAdJSODidCallAudioUnmuted:(float)unmuted volume:(float)volume;
- (void)webProcessVideoAdJSODidCallExitFullScreenTapped:(float)tapped volume:(float)volume;
- (void)webProcessVideoAdJSODidCallFullScreenTapped:(float)tapped volume:(float)volume;
- (void)webProcessVideoAdJSODidCallMoreInfoTapped:(float)tapped volume:(float)volume;
- (void)webProcessVideoAdJSODidCallPlayCompletedWithVolume:(float)volume;
- (void)webProcessVideoAdJSODidCallPlayPaused:(float)paused volume:(float)volume;
- (void)webProcessVideoAdJSODidCallPlayProgressed:(float)progressed volume:(float)volume;
- (void)webProcessVideoAdJSODidCallPlayResumed:(float)resumed volume:(float)volume;
- (void)webProcessVideoAdJSODidCallPlayStarted:(float)started volume:(float)volume;
- (void)webProcessVideoAdJSODidCallSkipAdTapped:(float)tapped volume:(float)volume;
- (void)webProcessVideoAdJSODidCallVideoTapped:(float)tapped volume:(float)volume;
- (void)webProcessVideoAdJSODidCallViewabilityChanged:(BOOL)changed playTime:(float)time volume:(float)volume;
- (void)webProcessVideoAdJSODidCallVolumeChanged:(float)changed playTime:(float)time;
- (void)webProcessVideoAdJSOGetVideoInfo:(id)info;
- (void)webProcessVideoAdJSOMediaPlaybackFailedWithErrorDescription:(id)description;
- (void)webView:(id)view didFailNavigation:(id)navigation withError:(id)error;
- (void)webView:(id)view didFailProvisionalNavigation:(id)navigation withError:(id)error;
- (void)webView:(id)view didFinishNavigation:(id)navigation;
- (void)webView:(id)view didStartProvisionalNavigation:(id)navigation;
- (void)webViewWebContentProcessDidTerminate:(id)terminate;
@end

@implementation WebAdView

- (id)webView:(id)view createWebViewWithConfiguration:(id)configuration forNavigationAction:(id)action windowFeatures:(id)features
{
  viewCopy = view;
  configurationCopy = configuration;
  actionCopy = action;
  featuresCopy = features;
  selfCopy = self;
  v15 = sub_1C19FA524(actionCopy);

  return v15;
}

- (void)webView:(id)view didStartProvisionalNavigation:(id)navigation
{
  viewCopy = view;
  navigationCopy = navigation;
  selfCopy = self;
  _s17PromotedContentUI9WebAdViewC03webF0_29didStartProvisionalNavigationySo05WKWebF0C_So12WKNavigationCSgtF_0();
}

- (void)webView:(id)view didFailProvisionalNavigation:(id)navigation withError:(id)error
{
  viewCopy = view;
  navigationCopy = navigation;
  errorCopy = error;
  selfCopy = self;
  sub_1C1A02694(errorCopy, "[PCUI] promoted content (%{public}@) failed provisional navigation at %{public}.8f", 82);
}

- (void)webView:(id)view didFailNavigation:(id)navigation withError:(id)error
{
  viewCopy = view;
  navigationCopy = navigation;
  errorCopy = error;
  selfCopy = self;
  sub_1C1A02694(errorCopy, "[PCUI] promoted content (%{public}@) failed navigation at %{public}.8f", 70);
}

- (void)webView:(id)view didFinishNavigation:(id)navigation
{
  viewCopy = view;
  navigationCopy = navigation;
  selfCopy = self;
  _s17PromotedContentUI9WebAdViewC03webF0_9didFinishySo05WKWebF0C_So12WKNavigationCSgtF_0(viewCopy);
}

- (void)webViewWebContentProcessDidTerminate:(id)terminate
{
  terminateCopy = terminate;
  selfCopy = self;
  _s17PromotedContentUI9WebAdViewC03webfdB19ProcessDidTerminateyySo05WKWebF0CF_0();
}

- (void)webProcessPlugInBrowserContextControllerGlobalObjectIsAvailableForFrame
{
  selfCopy = self;
  WebAdView.webProcessPlugInBrowserContextControllerGlobalObjectIsAvailableForFrame()();
}

- (void)webProcessDiagnosticJSOStatusReported:(id)reported status:(id)status
{
  v6 = *(&self->super.super.super.super.isa + OBJC_IVAR___APPCPromotedContentView_promotedContent);
  reportedCopy = reported;
  statusCopy = status;
  selfCopy = self;
  [objc_msgSend(v6 diagnosticMetricHelper)];
  swift_unknownObjectRelease();
}

- (void)webProcessMRAIDJSODidCallClose
{
  selfCopy = self;
  WebAdView.webProcessMRAIDJSODidCallClose()();
}

- (void)webProcessMRAIDJSODidCallExpand:(id)expand withMaximumWidth:(double)width andHeight:(double)height
{
  v8 = sub_1C1A6D48C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1A6D43C();
  selfCopy = self;
  WebAdView.webProcessMRAIDJSODidCallExpand(_:withMaximumWidth:andHeight:)(v11, width, height);

  (*(v9 + 8))(v11, v8);
}

- (void)webProcessMRAIDJSODidCallCreateCalendarEvent:(id)event
{
  v4 = sub_1C1A6F31C();
  selfCopy = self;
  WebAdView.webProcessMRAIDJSODidCallCreateCalendarEvent(_:)(v4);
}

- (void)webProcessMRAIDJSODidCallOpen:(id)open
{
  v4 = sub_1C1A6D48C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1A6D43C();
  selfCopy = self;
  WebAdView.webProcessMRAIDJSODidCallOpen(_:)(v7);

  (*(v5 + 8))(v7, v4);
}

- (void)webProcessVideoAdJSOGetVideoInfo:(id)info
{
  v4 = _Block_copy(info);
  _Block_copy(v4);
  selfCopy = self;
  sub_1C1A22208(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)webProcessVideoAdJSOMediaPlaybackFailedWithErrorDescription:(id)description
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR___APPCPromotedContentView_promotedContent);
  descriptionCopy = description;
  selfCopy = self;
  [objc_msgSend(v4 diagnosticMetricHelper)];
  swift_unknownObjectRelease();
}

- (void)webProcessVideoAdJSOCreativeViewLoaded
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR___APPCPromotedContentView_promotedContent);
  selfCopy = self;
  mediaMetricHelper = [v2 mediaMetricHelper];
  if (mediaMetricHelper)
  {
    [mediaMetricHelper mediaLoaded];
    swift_unknownObjectRelease();
  }
}

- (void)webProcessVideoAdJSODidCallPlayStarted:(float)started volume:(float)volume
{
  selfCopy = self;
  _s17PromotedContentUI9WebAdViewC015webProcessVideoE21JSODidCallPlayStarted_6volumeySf_SftF_0();
}

- (void)webProcessVideoAdJSODidCallPlayResumed:(float)resumed volume:(float)volume
{
  selfCopy = self;
  sub_1C1A23114(&selRef_mediaPlayedAtPosition_, resumed);
}

- (void)webProcessVideoAdJSODidCallPlayPaused:(float)paused volume:(float)volume
{
  selfCopy = self;
  sub_1C1A23114(&selRef_mediaPausedAtPosition_, paused);
}

- (void)webProcessVideoAdJSODidCallPlayProgressed:(float)progressed volume:(float)volume
{
  selfCopy = self;
  _s17PromotedContentUI9WebAdViewC015webProcessVideoE24JSODidCallPlayProgressed_6volumeySf_SftF_0(progressed);
}

- (void)webProcessVideoAdJSODidCallPlayCompletedWithVolume:(float)volume
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR___APPCPromotedContentView_promotedContent);
  selfCopy = self;
  mediaMetricHelper = [v3 mediaMetricHelper];
  if (mediaMetricHelper)
  {
    [mediaMetricHelper mediaFinished];
    swift_unknownObjectRelease();
  }
}

- (void)webProcessVideoAdJSODidCallViewabilityChanged:(BOOL)changed playTime:(float)time volume:(float)volume
{
  selfCopy = self;
  _s17PromotedContentUI9WebAdViewC015webProcessVideoE28JSODidCallViewabilityChanged_8playTime6volumeySb_S2ftF_0(changed);
}

- (void)webProcessVideoAdJSODidCallVolumeChanged:(float)changed playTime:(float)time
{
  selfCopy = self;
  _s17PromotedContentUI9WebAdViewC015webProcessVideoE23JSODidCallVolumeChanged_8playTimeySf_SftF_0(changed);
}

- (void)webProcessVideoAdJSODidCallAudioMuted:(float)muted
{
  selfCopy = self;
  WebAdView.webProcessVideoAdJSODidCallAudioMuted(_:)(muted);
}

- (void)webProcessVideoAdJSODidCallAudioUnmuted:(float)unmuted volume:(float)volume
{
  selfCopy = self;
  _s17PromotedContentUI9WebAdViewC015webProcessVideoE22JSODidCallAudioUnmuted_6volumeySf_SftF_0(unmuted);
}

- (void)webProcessVideoAdJSODidCallMoreInfoTapped:(float)tapped volume:(float)volume
{
  selfCopy = self;
  _s17PromotedContentUI9WebAdViewC015webProcessVideoE24JSODidCallMoreInfoTapped_6volumeySf_SftF_0();
}

- (void)webProcessVideoAdJSODidCallVideoTapped:(float)tapped volume:(float)volume
{
  selfCopy = self;
  _s17PromotedContentUI9WebAdViewC015webProcessVideoe10JSODidCallI6Tapped_6volumeySf_SftF_0(tapped);
}

- (void)webProcessVideoAdJSODidCallSkipAdTapped:(float)tapped volume:(float)volume
{
  selfCopy = self;
  sub_1C1A23114(&selRef_mediaSkippedAtPosition_, tapped);
}

- (void)webProcessVideoAdJSODidCallFullScreenTapped:(float)tapped volume:(float)volume
{
  selfCopy = self;
  sub_1C1A243BC(&selRef_mediaExpandedAtPosition_fullScreen_, tapped);
}

- (void)webProcessVideoAdJSODidCallExitFullScreenTapped:(float)tapped volume:(float)volume
{
  selfCopy = self;
  sub_1C1A243BC(&selRef_mediaContractedAtPosition_fullScreen_, tapped);
}

- (CGRect)frame
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for WebAdView();
  [(APPCPromotedContentView *)&v6 frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  selfCopy = self;
  sub_1C1A63B28(x, y, width, height);
}

- (void)sizeCategoryChanged:(id)changed
{
  v4 = sub_1C1A6D25C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1A6D24C();
  selfCopy = self;
  sub_1C1A641EC();

  (*(v5 + 8))(v7, v4);
}

@end