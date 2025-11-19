@interface WebAdView
- (CGRect)frame;
- (id)webView:(id)a3 createWebViewWithConfiguration:(id)a4 forNavigationAction:(id)a5 windowFeatures:(id)a6;
- (void)setFrame:(CGRect)a3;
- (void)sizeCategoryChanged:(id)a3;
- (void)webProcessDiagnosticJSOStatusReported:(id)a3 status:(id)a4;
- (void)webProcessMRAIDJSODidCallClose;
- (void)webProcessMRAIDJSODidCallCreateCalendarEvent:(id)a3;
- (void)webProcessMRAIDJSODidCallExpand:(id)a3 withMaximumWidth:(double)a4 andHeight:(double)a5;
- (void)webProcessMRAIDJSODidCallOpen:(id)a3;
- (void)webProcessPlugInBrowserContextControllerGlobalObjectIsAvailableForFrame;
- (void)webProcessVideoAdJSOCreativeViewLoaded;
- (void)webProcessVideoAdJSODidCallAudioMuted:(float)a3;
- (void)webProcessVideoAdJSODidCallAudioUnmuted:(float)a3 volume:(float)a4;
- (void)webProcessVideoAdJSODidCallExitFullScreenTapped:(float)a3 volume:(float)a4;
- (void)webProcessVideoAdJSODidCallFullScreenTapped:(float)a3 volume:(float)a4;
- (void)webProcessVideoAdJSODidCallMoreInfoTapped:(float)a3 volume:(float)a4;
- (void)webProcessVideoAdJSODidCallPlayCompletedWithVolume:(float)a3;
- (void)webProcessVideoAdJSODidCallPlayPaused:(float)a3 volume:(float)a4;
- (void)webProcessVideoAdJSODidCallPlayProgressed:(float)a3 volume:(float)a4;
- (void)webProcessVideoAdJSODidCallPlayResumed:(float)a3 volume:(float)a4;
- (void)webProcessVideoAdJSODidCallPlayStarted:(float)a3 volume:(float)a4;
- (void)webProcessVideoAdJSODidCallSkipAdTapped:(float)a3 volume:(float)a4;
- (void)webProcessVideoAdJSODidCallVideoTapped:(float)a3 volume:(float)a4;
- (void)webProcessVideoAdJSODidCallViewabilityChanged:(BOOL)a3 playTime:(float)a4 volume:(float)a5;
- (void)webProcessVideoAdJSODidCallVolumeChanged:(float)a3 playTime:(float)a4;
- (void)webProcessVideoAdJSOGetVideoInfo:(id)a3;
- (void)webProcessVideoAdJSOMediaPlaybackFailedWithErrorDescription:(id)a3;
- (void)webView:(id)a3 didFailNavigation:(id)a4 withError:(id)a5;
- (void)webView:(id)a3 didFailProvisionalNavigation:(id)a4 withError:(id)a5;
- (void)webView:(id)a3 didFinishNavigation:(id)a4;
- (void)webView:(id)a3 didStartProvisionalNavigation:(id)a4;
- (void)webViewWebContentProcessDidTerminate:(id)a3;
@end

@implementation WebAdView

- (id)webView:(id)a3 createWebViewWithConfiguration:(id)a4 forNavigationAction:(id)a5 windowFeatures:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = self;
  v15 = sub_1C19FA524(v12);

  return v15;
}

- (void)webView:(id)a3 didStartProvisionalNavigation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  _s17PromotedContentUI9WebAdViewC03webF0_29didStartProvisionalNavigationySo05WKWebF0C_So12WKNavigationCSgtF_0();
}

- (void)webView:(id)a3 didFailProvisionalNavigation:(id)a4 withError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v11 = a5;
  v10 = self;
  sub_1C1A02694(v11, "[PCUI] promoted content (%{public}@) failed provisional navigation at %{public}.8f", 82);
}

- (void)webView:(id)a3 didFailNavigation:(id)a4 withError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v11 = a5;
  v10 = self;
  sub_1C1A02694(v11, "[PCUI] promoted content (%{public}@) failed navigation at %{public}.8f", 70);
}

- (void)webView:(id)a3 didFinishNavigation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  _s17PromotedContentUI9WebAdViewC03webF0_9didFinishySo05WKWebF0C_So12WKNavigationCSgtF_0(v6);
}

- (void)webViewWebContentProcessDidTerminate:(id)a3
{
  v4 = a3;
  v5 = self;
  _s17PromotedContentUI9WebAdViewC03webfdB19ProcessDidTerminateyySo05WKWebF0CF_0();
}

- (void)webProcessPlugInBrowserContextControllerGlobalObjectIsAvailableForFrame
{
  v2 = self;
  WebAdView.webProcessPlugInBrowserContextControllerGlobalObjectIsAvailableForFrame()();
}

- (void)webProcessDiagnosticJSOStatusReported:(id)a3 status:(id)a4
{
  v6 = *(&self->super.super.super.super.isa + OBJC_IVAR___APPCPromotedContentView_promotedContent);
  v7 = a3;
  v8 = a4;
  v9 = self;
  [objc_msgSend(v6 diagnosticMetricHelper)];
  swift_unknownObjectRelease();
}

- (void)webProcessMRAIDJSODidCallClose
{
  v2 = self;
  WebAdView.webProcessMRAIDJSODidCallClose()();
}

- (void)webProcessMRAIDJSODidCallExpand:(id)a3 withMaximumWidth:(double)a4 andHeight:(double)a5
{
  v8 = sub_1C1A6D48C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1A6D43C();
  v12 = self;
  WebAdView.webProcessMRAIDJSODidCallExpand(_:withMaximumWidth:andHeight:)(v11, a4, a5);

  (*(v9 + 8))(v11, v8);
}

- (void)webProcessMRAIDJSODidCallCreateCalendarEvent:(id)a3
{
  v4 = sub_1C1A6F31C();
  v5 = self;
  WebAdView.webProcessMRAIDJSODidCallCreateCalendarEvent(_:)(v4);
}

- (void)webProcessMRAIDJSODidCallOpen:(id)a3
{
  v4 = sub_1C1A6D48C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1A6D43C();
  v8 = self;
  WebAdView.webProcessMRAIDJSODidCallOpen(_:)(v7);

  (*(v5 + 8))(v7, v4);
}

- (void)webProcessVideoAdJSOGetVideoInfo:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_1C1A22208(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)webProcessVideoAdJSOMediaPlaybackFailedWithErrorDescription:(id)a3
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR___APPCPromotedContentView_promotedContent);
  v5 = a3;
  v6 = self;
  [objc_msgSend(v4 diagnosticMetricHelper)];
  swift_unknownObjectRelease();
}

- (void)webProcessVideoAdJSOCreativeViewLoaded
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR___APPCPromotedContentView_promotedContent);
  v4 = self;
  v3 = [v2 mediaMetricHelper];
  if (v3)
  {
    [v3 mediaLoaded];
    swift_unknownObjectRelease();
  }
}

- (void)webProcessVideoAdJSODidCallPlayStarted:(float)a3 volume:(float)a4
{
  v4 = self;
  _s17PromotedContentUI9WebAdViewC015webProcessVideoE21JSODidCallPlayStarted_6volumeySf_SftF_0();
}

- (void)webProcessVideoAdJSODidCallPlayResumed:(float)a3 volume:(float)a4
{
  v5 = self;
  sub_1C1A23114(&selRef_mediaPlayedAtPosition_, a3);
}

- (void)webProcessVideoAdJSODidCallPlayPaused:(float)a3 volume:(float)a4
{
  v5 = self;
  sub_1C1A23114(&selRef_mediaPausedAtPosition_, a3);
}

- (void)webProcessVideoAdJSODidCallPlayProgressed:(float)a3 volume:(float)a4
{
  v5 = self;
  _s17PromotedContentUI9WebAdViewC015webProcessVideoE24JSODidCallPlayProgressed_6volumeySf_SftF_0(a3);
}

- (void)webProcessVideoAdJSODidCallPlayCompletedWithVolume:(float)a3
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR___APPCPromotedContentView_promotedContent);
  v5 = self;
  v4 = [v3 mediaMetricHelper];
  if (v4)
  {
    [v4 mediaFinished];
    swift_unknownObjectRelease();
  }
}

- (void)webProcessVideoAdJSODidCallViewabilityChanged:(BOOL)a3 playTime:(float)a4 volume:(float)a5
{
  v6 = self;
  _s17PromotedContentUI9WebAdViewC015webProcessVideoE28JSODidCallViewabilityChanged_8playTime6volumeySb_S2ftF_0(a3);
}

- (void)webProcessVideoAdJSODidCallVolumeChanged:(float)a3 playTime:(float)a4
{
  v5 = self;
  _s17PromotedContentUI9WebAdViewC015webProcessVideoE23JSODidCallVolumeChanged_8playTimeySf_SftF_0(a3);
}

- (void)webProcessVideoAdJSODidCallAudioMuted:(float)a3
{
  v4 = self;
  WebAdView.webProcessVideoAdJSODidCallAudioMuted(_:)(a3);
}

- (void)webProcessVideoAdJSODidCallAudioUnmuted:(float)a3 volume:(float)a4
{
  v5 = self;
  _s17PromotedContentUI9WebAdViewC015webProcessVideoE22JSODidCallAudioUnmuted_6volumeySf_SftF_0(a3);
}

- (void)webProcessVideoAdJSODidCallMoreInfoTapped:(float)a3 volume:(float)a4
{
  v4 = self;
  _s17PromotedContentUI9WebAdViewC015webProcessVideoE24JSODidCallMoreInfoTapped_6volumeySf_SftF_0();
}

- (void)webProcessVideoAdJSODidCallVideoTapped:(float)a3 volume:(float)a4
{
  v5 = self;
  _s17PromotedContentUI9WebAdViewC015webProcessVideoe10JSODidCallI6Tapped_6volumeySf_SftF_0(a3);
}

- (void)webProcessVideoAdJSODidCallSkipAdTapped:(float)a3 volume:(float)a4
{
  v5 = self;
  sub_1C1A23114(&selRef_mediaSkippedAtPosition_, a3);
}

- (void)webProcessVideoAdJSODidCallFullScreenTapped:(float)a3 volume:(float)a4
{
  v5 = self;
  sub_1C1A243BC(&selRef_mediaExpandedAtPosition_fullScreen_, a3);
}

- (void)webProcessVideoAdJSODidCallExitFullScreenTapped:(float)a3 volume:(float)a4
{
  v5 = self;
  sub_1C1A243BC(&selRef_mediaContractedAtPosition_fullScreen_, a3);
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

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  sub_1C1A63B28(x, y, width, height);
}

- (void)sizeCategoryChanged:(id)a3
{
  v4 = sub_1C1A6D25C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1A6D24C();
  v8 = self;
  sub_1C1A641EC();

  (*(v5 + 8))(v7, v4);
}

@end