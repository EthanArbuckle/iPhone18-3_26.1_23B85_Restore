@interface SOSUIWebRTCView
- (BOOL)resetAndReturnError:(id *)error;
- (WKWebView)webView;
- (_TtC5SOSUI15SOSUIWebRTCView)initWithFrame:(CGRect)frame;
- (_TtC5SOSUI16SOSUIWebRTCState)state;
- (_TtP5SOSUI19SOSUIWebRTCDelegate_)delegate;
- (void)endVideoPreviewWithCompletionHandler:(id)handler;
- (void)endVideoStreamWithCompletionHandler:(id)handler;
- (void)flipCameraWithCompletionHandler:(id)handler;
- (void)getCapabilitiesWithCompletionHandler:(id)handler;
- (void)goToErrorWithRetryable:(BOOL)retryable completionHandler:(id)handler;
- (void)networkInterfacesDidChangeWithCompletionHandler:(id)handler;
- (void)pauseVideoWithCompletionHandler:(id)handler;
- (void)pauseVideoWithPausedString:(NSString *)string completionHandler:(id)handler;
- (void)setDebugConnection:(BOOL)connection completionHandler:(id)handler;
- (void)setFrameRate:(double)rate completionHandler:(id)handler;
- (void)setIceRestartRetryCount:(double)count completionHandler:(id)handler;
- (void)setIceRestartTimeout:(double)timeout completionHandler:(id)handler;
- (void)setMaximumBitrate:(double)bitrate completionHandler:(id)handler;
- (void)setMinimumBitrate:(double)bitrate completionHandler:(id)handler;
- (void)setPausedString:(NSString *)string completionHandler:(id)handler;
- (void)setPoorConnectionGracePeriod:(double)period completionHandler:(id)handler;
- (void)setPoorConnectionThreshold:(double)threshold completionHandler:(id)handler;
- (void)setState:(id)state;
- (void)setVideoPreference:(int64_t)preference completionHandler:(id)handler;
- (void)setWebView:(id)view;
- (void)setZoomLevelWithZoom:(double)zoom completionHandler:(id)handler;
- (void)startVideoPreviewWithCameraFacing:(int64_t)facing completionHandler:(id)handler;
- (void)startVideoPreviewWithCompletionHandler:(id)handler;
- (void)startVideoStreamWithEndpoint:(NSString *)endpoint completionHandler:(id)handler;
- (void)startVideoStreamWithEndpoint:(NSString *)endpoint token:(NSString *)token completionHandler:(id)handler;
- (void)startVideoStreamWithEndpoint:(NSString *)endpoint token:(NSString *)token trickle:(BOOL)trickle completionHandler:(id)handler;
- (void)toggleTorchWithCompletionHandler:(id)handler;
- (void)torchOffWithCompletionHandler:(id)handler;
- (void)torchOnWithCompletionHandler:(id)handler;
- (void)unpauseVideoWithCompletionHandler:(id)handler;
- (void)useFrontCameraWithCompletionHandler:(id)handler;
- (void)useRearCameraWithCompletionHandler:(id)handler;
- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler;
- (void)webView:(id)view didFinishNavigation:(id)navigation;
- (void)webView:(id)view didReceiveAuthenticationChallenge:(id)challenge completionHandler:(id)handler;
- (void)webView:(id)view requestMediaCapturePermissionForOrigin:(id)origin initiatedByFrame:(id)frame type:(int64_t)type decisionHandler:(id)handler;
@end

@implementation SOSUIWebRTCView

- (_TtC5SOSUI16SOSUIWebRTCState)state
{
  v3 = OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_state;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setState:(id)state
{
  v5 = OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_state;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = state;
  stateCopy = state;
}

- (WKWebView)webView
{
  v3 = OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_webView;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setWebView:(id)view
{
  v5 = OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_webView;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = view;
  viewCopy = view;
}

- (_TtP5SOSUI19SOSUIWebRTCDelegate_)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (BOOL)resetAndReturnError:(id *)error
{
  selfCopy = self;
  sub_264386D88();

  return 1;
}

- (void)webView:(id)view requestMediaCapturePermissionForOrigin:(id)origin initiatedByFrame:(id)frame type:(int64_t)type decisionHandler:(id)handler
{
  v7 = _Block_copy(handler);
  v7[2](v7, 1);

  _Block_release(v7);
}

- (void)webView:(id)view didFinishNavigation:(id)navigation
{
  v4 = *(self + OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_onNavigationFinished);
  if (v4)
  {
    if (navigation)
    {
      v6 = *(self + OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_onNavigationFinished + 8);
      navigationCopy = navigation;
      selfCopy = self;
      sub_26439FC58(v4);
      v4(navigationCopy);

      sub_26439B0AC(v4);
    }

    else
    {
      __break(1u);
    }
  }
}

- (void)webView:(id)view didReceiveAuthenticationChallenge:(id)challenge completionHandler:(id)handler
{
  v7 = _Block_copy(handler);
  v8 = *((*MEMORY[0x277D85000] & *self) + 0xD0);
  challengeCopy = challenge;
  selfCopy = self;
  v11 = v8();
  if (v11)
  {
    serverAuthenticationChallengeWithChallenge_ = [v11 serverAuthenticationChallengeWithChallenge_];
    swift_unknownObjectRelease();
  }

  else
  {
    serverAuthenticationChallengeWithChallenge_ = 1;
  }

  v7[2](v7, serverAuthenticationChallengeWithChallenge_, 0);

  _Block_release(v7);
}

- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  _Block_copy(v8);
  viewCopy = view;
  actionCopy = action;
  selfCopy = self;
  sub_26439F940(actionCopy, selfCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)pauseVideoWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_2643B05F8();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2643B1FD8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2643B1FE0;
  v13[5] = v12;
  selfCopy = self;
  sub_26439A530(0, 0, v8, &unk_2643B1FE8, v13);
}

- (void)pauseVideoWithPausedString:(NSString *)string completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = string;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_2643B05F8();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2643B1FB8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2643B1FC0;
  v15[5] = v14;
  stringCopy = string;
  selfCopy = self;
  sub_26439A530(0, 0, v10, &unk_2643B1FC8, v15);
}

- (void)unpauseVideoWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_2643B05F8();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2643B1F98;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2643B1FA0;
  v13[5] = v12;
  selfCopy = self;
  sub_26439A530(0, 0, v8, &unk_2643B1FA8, v13);
}

- (void)useFrontCameraWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_2643B05F8();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2643B1F78;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2643B1F80;
  v13[5] = v12;
  selfCopy = self;
  sub_26439A530(0, 0, v8, &unk_2643B1F88, v13);
}

- (void)useRearCameraWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_2643B05F8();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2643B1F58;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2643B1F60;
  v13[5] = v12;
  selfCopy = self;
  sub_26439A530(0, 0, v8, &unk_2643B1F68, v13);
}

- (void)startVideoPreviewWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_2643B05F8();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2643B1F38;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2643B1F40;
  v13[5] = v12;
  selfCopy = self;
  sub_26439A530(0, 0, v8, &unk_2643B1F48, v13);
}

- (void)startVideoPreviewWithCameraFacing:(int64_t)facing completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = facing;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_2643B05F8();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2643B1F18;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2643B1F20;
  v15[5] = v14;
  selfCopy = self;
  sub_26439A530(0, 0, v10, &unk_2643B1F28, v15);
}

- (void)startVideoStreamWithEndpoint:(NSString *)endpoint completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = endpoint;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_2643B05F8();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2643B1EF8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2643B1F00;
  v15[5] = v14;
  endpointCopy = endpoint;
  selfCopy = self;
  sub_26439A530(0, 0, v10, &unk_2643B1F08, v15);
}

- (void)startVideoStreamWithEndpoint:(NSString *)endpoint token:(NSString *)token completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = endpoint;
  v14[3] = token;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_2643B05F8();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_2643B1ED8;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_2643B1EE0;
  v17[5] = v16;
  endpointCopy = endpoint;
  tokenCopy = token;
  selfCopy = self;
  sub_26439A530(0, 0, v12, &unk_2643B1EE8, v17);
}

- (void)startVideoStreamWithEndpoint:(NSString *)endpoint token:(NSString *)token trickle:(BOOL)trickle completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v23 - v13;
  v15 = _Block_copy(handler);
  v16 = swift_allocObject();
  *(v16 + 16) = endpoint;
  *(v16 + 24) = token;
  *(v16 + 32) = trickle;
  *(v16 + 40) = v15;
  *(v16 + 48) = self;
  v17 = sub_2643B05F8();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_2643B1EB8;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_2643B1EC0;
  v19[5] = v18;
  endpointCopy = endpoint;
  tokenCopy = token;
  selfCopy = self;
  sub_26439A530(0, 0, v14, &unk_2643B1EC8, v19);
}

- (void)endVideoStreamWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_2643B05F8();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2643B1E98;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2643B1EA0;
  v13[5] = v12;
  selfCopy = self;
  sub_26439A530(0, 0, v8, &unk_2643B1EA8, v13);
}

- (void)flipCameraWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_2643B05F8();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2643B1E78;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2643B1E80;
  v13[5] = v12;
  selfCopy = self;
  sub_26439A530(0, 0, v8, &unk_2643B1E88, v13);
}

- (void)torchOnWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_2643B05F8();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2643B1E58;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2643B1E60;
  v13[5] = v12;
  selfCopy = self;
  sub_26439A530(0, 0, v8, &unk_2643B1E68, v13);
}

- (void)torchOffWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_2643B05F8();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2643B1E38;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2643B1E40;
  v13[5] = v12;
  selfCopy = self;
  sub_26439A530(0, 0, v8, &unk_2643B1E48, v13);
}

- (void)toggleTorchWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_2643B05F8();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2643B1E18;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2643B1E20;
  v13[5] = v12;
  selfCopy = self;
  sub_26439A530(0, 0, v8, &unk_2643B1E28, v13);
}

- (void)setZoomLevelWithZoom:(double)zoom completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  *(v12 + 16) = zoom;
  *(v12 + 24) = v11;
  *(v12 + 32) = self;
  v13 = sub_2643B05F8();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2643B1DF8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2643B1E00;
  v15[5] = v14;
  selfCopy = self;
  sub_26439A530(0, 0, v10, &unk_2643B1E08, v15);
}

- (void)endVideoPreviewWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_2643B05F8();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2643B1DD8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2643B1DE0;
  v13[5] = v12;
  selfCopy = self;
  sub_26439A530(0, 0, v8, &unk_2643B1DE8, v13);
}

- (void)getCapabilitiesWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_2643B05F8();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2643B1DB8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2643B1DC0;
  v13[5] = v12;
  selfCopy = self;
  sub_26439A530(0, 0, v8, &unk_2643B1DC8, v13);
}

- (void)setPoorConnectionThreshold:(double)threshold completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  *(v12 + 16) = threshold;
  *(v12 + 24) = v11;
  *(v12 + 32) = self;
  v13 = sub_2643B05F8();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2643B1D98;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2643B1DA0;
  v15[5] = v14;
  selfCopy = self;
  sub_26439A530(0, 0, v10, &unk_2643B1DA8, v15);
}

- (void)setPoorConnectionGracePeriod:(double)period completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  *(v12 + 16) = period;
  *(v12 + 24) = v11;
  *(v12 + 32) = self;
  v13 = sub_2643B05F8();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2643B1D78;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2643B1D80;
  v15[5] = v14;
  selfCopy = self;
  sub_26439A530(0, 0, v10, &unk_2643B1D88, v15);
}

- (void)setIceRestartTimeout:(double)timeout completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  *(v12 + 16) = timeout;
  *(v12 + 24) = v11;
  *(v12 + 32) = self;
  v13 = sub_2643B05F8();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2643B1D58;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2643B1D60;
  v15[5] = v14;
  selfCopy = self;
  sub_26439A530(0, 0, v10, &unk_2643B1D68, v15);
}

- (void)setIceRestartRetryCount:(double)count completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  *(v12 + 16) = count;
  *(v12 + 24) = v11;
  *(v12 + 32) = self;
  v13 = sub_2643B05F8();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2643B1D38;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2643B1D40;
  v15[5] = v14;
  selfCopy = self;
  sub_26439A530(0, 0, v10, &unk_2643B1D48, v15);
}

- (void)setMinimumBitrate:(double)bitrate completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  *(v12 + 16) = bitrate;
  *(v12 + 24) = v11;
  *(v12 + 32) = self;
  v13 = sub_2643B05F8();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2643B1D18;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2643B1D20;
  v15[5] = v14;
  selfCopy = self;
  sub_26439A530(0, 0, v10, &unk_2643B1D28, v15);
}

- (void)setMaximumBitrate:(double)bitrate completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  *(v12 + 16) = bitrate;
  *(v12 + 24) = v11;
  *(v12 + 32) = self;
  v13 = sub_2643B05F8();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2643B1CF8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2643B1D00;
  v15[5] = v14;
  selfCopy = self;
  sub_26439A530(0, 0, v10, &unk_2643B1D08, v15);
}

- (void)setPausedString:(NSString *)string completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = string;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_2643B05F8();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2643B1CD8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2643B1CE0;
  v15[5] = v14;
  stringCopy = string;
  selfCopy = self;
  sub_26439A530(0, 0, v10, &unk_2643B1CE8, v15);
}

- (void)setDebugConnection:(BOOL)connection completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  *(v12 + 16) = connection;
  *(v12 + 24) = v11;
  *(v12 + 32) = self;
  v13 = sub_2643B05F8();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2643B1CB8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2643B1CC0;
  v15[5] = v14;
  selfCopy = self;
  sub_26439A530(0, 0, v10, &unk_2643B1CC8, v15);
}

- (void)setVideoPreference:(int64_t)preference completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = preference;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_2643B05F8();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2643B1C98;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2643B1CA0;
  v15[5] = v14;
  selfCopy = self;
  sub_26439A530(0, 0, v10, &unk_2643B1CA8, v15);
}

- (void)setFrameRate:(double)rate completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  *(v12 + 16) = rate;
  *(v12 + 24) = v11;
  *(v12 + 32) = self;
  v13 = sub_2643B05F8();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2643B1C78;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2643B1C80;
  v15[5] = v14;
  selfCopy = self;
  sub_26439A530(0, 0, v10, &unk_2643B1C88, v15);
}

- (void)goToErrorWithRetryable:(BOOL)retryable completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  *(v12 + 16) = retryable;
  *(v12 + 24) = v11;
  *(v12 + 32) = self;
  v13 = sub_2643B05F8();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2643B1C58;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2643B1C60;
  v15[5] = v14;
  selfCopy = self;
  sub_26439A530(0, 0, v10, &unk_2643B1C68, v15);
}

- (void)networkInterfacesDidChangeWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_2643B05F8();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2643B1C10;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2643B1C20;
  v13[5] = v12;
  selfCopy = self;
  sub_26439A530(0, 0, v8, &unk_2643B1C30, v13);
}

- (_TtC5SOSUI15SOSUIWebRTCView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end