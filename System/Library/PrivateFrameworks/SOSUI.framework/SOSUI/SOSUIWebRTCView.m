@interface SOSUIWebRTCView
- (BOOL)resetAndReturnError:(id *)a3;
- (WKWebView)webView;
- (_TtC5SOSUI15SOSUIWebRTCView)initWithFrame:(CGRect)a3;
- (_TtC5SOSUI16SOSUIWebRTCState)state;
- (_TtP5SOSUI19SOSUIWebRTCDelegate_)delegate;
- (void)endVideoPreviewWithCompletionHandler:(id)a3;
- (void)endVideoStreamWithCompletionHandler:(id)a3;
- (void)flipCameraWithCompletionHandler:(id)a3;
- (void)getCapabilitiesWithCompletionHandler:(id)a3;
- (void)goToErrorWithRetryable:(BOOL)a3 completionHandler:(id)a4;
- (void)networkInterfacesDidChangeWithCompletionHandler:(id)a3;
- (void)pauseVideoWithCompletionHandler:(id)a3;
- (void)pauseVideoWithPausedString:(NSString *)a3 completionHandler:(id)a4;
- (void)setDebugConnection:(BOOL)a3 completionHandler:(id)a4;
- (void)setFrameRate:(double)a3 completionHandler:(id)a4;
- (void)setIceRestartRetryCount:(double)a3 completionHandler:(id)a4;
- (void)setIceRestartTimeout:(double)a3 completionHandler:(id)a4;
- (void)setMaximumBitrate:(double)a3 completionHandler:(id)a4;
- (void)setMinimumBitrate:(double)a3 completionHandler:(id)a4;
- (void)setPausedString:(NSString *)a3 completionHandler:(id)a4;
- (void)setPoorConnectionGracePeriod:(double)a3 completionHandler:(id)a4;
- (void)setPoorConnectionThreshold:(double)a3 completionHandler:(id)a4;
- (void)setState:(id)a3;
- (void)setVideoPreference:(int64_t)a3 completionHandler:(id)a4;
- (void)setWebView:(id)a3;
- (void)setZoomLevelWithZoom:(double)a3 completionHandler:(id)a4;
- (void)startVideoPreviewWithCameraFacing:(int64_t)a3 completionHandler:(id)a4;
- (void)startVideoPreviewWithCompletionHandler:(id)a3;
- (void)startVideoStreamWithEndpoint:(NSString *)a3 completionHandler:(id)a4;
- (void)startVideoStreamWithEndpoint:(NSString *)a3 token:(NSString *)a4 completionHandler:(id)a5;
- (void)startVideoStreamWithEndpoint:(NSString *)a3 token:(NSString *)a4 trickle:(BOOL)a5 completionHandler:(id)a6;
- (void)toggleTorchWithCompletionHandler:(id)a3;
- (void)torchOffWithCompletionHandler:(id)a3;
- (void)torchOnWithCompletionHandler:(id)a3;
- (void)unpauseVideoWithCompletionHandler:(id)a3;
- (void)useFrontCameraWithCompletionHandler:(id)a3;
- (void)useRearCameraWithCompletionHandler:(id)a3;
- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5;
- (void)webView:(id)a3 didFinishNavigation:(id)a4;
- (void)webView:(id)a3 didReceiveAuthenticationChallenge:(id)a4 completionHandler:(id)a5;
- (void)webView:(id)a3 requestMediaCapturePermissionForOrigin:(id)a4 initiatedByFrame:(id)a5 type:(int64_t)a6 decisionHandler:(id)a7;
@end

@implementation SOSUIWebRTCView

- (_TtC5SOSUI16SOSUIWebRTCState)state
{
  v3 = OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_state;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setState:(id)a3
{
  v5 = OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_state;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
}

- (WKWebView)webView
{
  v3 = OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_webView;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setWebView:(id)a3
{
  v5 = OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_webView;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
}

- (_TtP5SOSUI19SOSUIWebRTCDelegate_)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (BOOL)resetAndReturnError:(id *)a3
{
  v3 = self;
  sub_264386D88();

  return 1;
}

- (void)webView:(id)a3 requestMediaCapturePermissionForOrigin:(id)a4 initiatedByFrame:(id)a5 type:(int64_t)a6 decisionHandler:(id)a7
{
  v7 = _Block_copy(a7);
  v7[2](v7, 1);

  _Block_release(v7);
}

- (void)webView:(id)a3 didFinishNavigation:(id)a4
{
  v4 = *(self + OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_onNavigationFinished);
  if (v4)
  {
    if (a4)
    {
      v6 = *(self + OBJC_IVAR____TtC5SOSUI15SOSUIWebRTCView_onNavigationFinished + 8);
      v7 = a4;
      v8 = self;
      sub_26439FC58(v4);
      v4(v7);

      sub_26439B0AC(v4);
    }

    else
    {
      __break(1u);
    }
  }
}

- (void)webView:(id)a3 didReceiveAuthenticationChallenge:(id)a4 completionHandler:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = *((*MEMORY[0x277D85000] & *self) + 0xD0);
  v9 = a4;
  v10 = self;
  v11 = v8();
  if (v11)
  {
    v12 = [v11 serverAuthenticationChallengeWithChallenge_];
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 1;
  }

  v7[2](v7, v12, 0);

  _Block_release(v7);
}

- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a3;
  v10 = a4;
  v11 = self;
  sub_26439F940(v10, v11, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)pauseVideoWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
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
  v14 = self;
  sub_26439A530(0, 0, v8, &unk_2643B1FE8, v13);
}

- (void)pauseVideoWithPausedString:(NSString *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
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
  v16 = a3;
  v17 = self;
  sub_26439A530(0, 0, v10, &unk_2643B1FC8, v15);
}

- (void)unpauseVideoWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
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
  v14 = self;
  sub_26439A530(0, 0, v8, &unk_2643B1FA8, v13);
}

- (void)useFrontCameraWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
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
  v14 = self;
  sub_26439A530(0, 0, v8, &unk_2643B1F88, v13);
}

- (void)useRearCameraWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
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
  v14 = self;
  sub_26439A530(0, 0, v8, &unk_2643B1F68, v13);
}

- (void)startVideoPreviewWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
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
  v14 = self;
  sub_26439A530(0, 0, v8, &unk_2643B1F48, v13);
}

- (void)startVideoPreviewWithCameraFacing:(int64_t)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
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
  v16 = self;
  sub_26439A530(0, 0, v10, &unk_2643B1F28, v15);
}

- (void)startVideoStreamWithEndpoint:(NSString *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
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
  v16 = a3;
  v17 = self;
  sub_26439A530(0, 0, v10, &unk_2643B1F08, v15);
}

- (void)startVideoStreamWithEndpoint:(NSString *)a3 token:(NSString *)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
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
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_26439A530(0, 0, v12, &unk_2643B1EE8, v17);
}

- (void)startVideoStreamWithEndpoint:(NSString *)a3 token:(NSString *)a4 trickle:(BOOL)a5 completionHandler:(id)a6
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v23 - v13;
  v15 = _Block_copy(a6);
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  *(v16 + 32) = a5;
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
  v20 = a3;
  v21 = a4;
  v22 = self;
  sub_26439A530(0, 0, v14, &unk_2643B1EC8, v19);
}

- (void)endVideoStreamWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
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
  v14 = self;
  sub_26439A530(0, 0, v8, &unk_2643B1EA8, v13);
}

- (void)flipCameraWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
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
  v14 = self;
  sub_26439A530(0, 0, v8, &unk_2643B1E88, v13);
}

- (void)torchOnWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
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
  v14 = self;
  sub_26439A530(0, 0, v8, &unk_2643B1E68, v13);
}

- (void)torchOffWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
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
  v14 = self;
  sub_26439A530(0, 0, v8, &unk_2643B1E48, v13);
}

- (void)toggleTorchWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
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
  v14 = self;
  sub_26439A530(0, 0, v8, &unk_2643B1E28, v13);
}

- (void)setZoomLevelWithZoom:(double)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
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
  v16 = self;
  sub_26439A530(0, 0, v10, &unk_2643B1E08, v15);
}

- (void)endVideoPreviewWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
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
  v14 = self;
  sub_26439A530(0, 0, v8, &unk_2643B1DE8, v13);
}

- (void)getCapabilitiesWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
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
  v14 = self;
  sub_26439A530(0, 0, v8, &unk_2643B1DC8, v13);
}

- (void)setPoorConnectionThreshold:(double)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
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
  v16 = self;
  sub_26439A530(0, 0, v10, &unk_2643B1DA8, v15);
}

- (void)setPoorConnectionGracePeriod:(double)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
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
  v16 = self;
  sub_26439A530(0, 0, v10, &unk_2643B1D88, v15);
}

- (void)setIceRestartTimeout:(double)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
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
  v16 = self;
  sub_26439A530(0, 0, v10, &unk_2643B1D68, v15);
}

- (void)setIceRestartRetryCount:(double)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
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
  v16 = self;
  sub_26439A530(0, 0, v10, &unk_2643B1D48, v15);
}

- (void)setMinimumBitrate:(double)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
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
  v16 = self;
  sub_26439A530(0, 0, v10, &unk_2643B1D28, v15);
}

- (void)setMaximumBitrate:(double)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
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
  v16 = self;
  sub_26439A530(0, 0, v10, &unk_2643B1D08, v15);
}

- (void)setPausedString:(NSString *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
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
  v16 = a3;
  v17 = self;
  sub_26439A530(0, 0, v10, &unk_2643B1CE8, v15);
}

- (void)setDebugConnection:(BOOL)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
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
  v16 = self;
  sub_26439A530(0, 0, v10, &unk_2643B1CC8, v15);
}

- (void)setVideoPreference:(int64_t)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
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
  v16 = self;
  sub_26439A530(0, 0, v10, &unk_2643B1CA8, v15);
}

- (void)setFrameRate:(double)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
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
  v16 = self;
  sub_26439A530(0, 0, v10, &unk_2643B1C88, v15);
}

- (void)goToErrorWithRetryable:(BOOL)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
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
  v16 = self;
  sub_26439A530(0, 0, v10, &unk_2643B1C68, v15);
}

- (void)networkInterfacesDidChangeWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF66D30, &qword_2643B1928);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
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
  v14 = self;
  sub_26439A530(0, 0, v8, &unk_2643B1C30, v13);
}

- (_TtC5SOSUI15SOSUIWebRTCView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end