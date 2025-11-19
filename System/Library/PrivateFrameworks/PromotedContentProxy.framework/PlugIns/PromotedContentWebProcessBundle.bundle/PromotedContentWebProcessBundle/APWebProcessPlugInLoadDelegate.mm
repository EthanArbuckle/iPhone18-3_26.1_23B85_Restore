@interface APWebProcessPlugInLoadDelegate
- (id)webProcessPlugInBrowserContextController:(id)a3 frame:(id)a4 willSendRequestForResource:(unint64_t)a5 request:(id)a6 redirectResponse:(id)a7;
- (void)actionDidFailWithErrorDescription:(id)a3;
- (void)contentSizeDidChange:(id)a3;
- (void)creativeStateDidChange:(int64_t)a3;
- (void)resetSession;
- (void)resetVideoTagPlaytime;
- (void)setExpandedWidth:(double)a3 andHeight:(double)a4;
- (void)setWebViewProcessAdIdentifier:(id)a3 maxRequestCount:(id)a4;
- (void)webProcessDiagnosticJSOStatusReported:(id)a3 status:(id)a4;
- (void)webProcessMRAIDJSODidCallClose;
- (void)webProcessMRAIDJSODidCallCreateCalendarEvent:(id)a3;
- (void)webProcessMRAIDJSODidCallExpand:(id)a3 withMaximumWidth:(double)a4 andHeight:(double)a5;
- (void)webProcessMRAIDJSODidCallOpen:(id)a3;
- (void)webProcessPlugInBrowserContextController:(id)a3 didFinishDocumentLoadForFrame:(id)a4;
- (void)webProcessPlugInBrowserContextController:(id)a3 globalObjectIsAvailableForFrame:(id)a4 inScriptWorld:(id)a5;
- (void)webProcessVideoAdJSOAudioMuted:(float)a3;
- (void)webProcessVideoAdJSOAudioUnmuted:(float)a3 volume:(float)a4;
- (void)webProcessVideoAdJSOCreativeViewLoaded;
- (void)webProcessVideoAdJSOExitFullScreenTapped:(float)a3 volume:(float)a4;
- (void)webProcessVideoAdJSOFullScreenTapped:(float)a3 volume:(float)a4;
- (void)webProcessVideoAdJSOMediaPlaybackFailedWithErrorDescription:(id)a3;
- (void)webProcessVideoAdJSOMoreInfoTapped:(float)a3 volume:(float)a4;
- (void)webProcessVideoAdJSOPlayCompletedWithVolume:(float)a3;
- (void)webProcessVideoAdJSOPlayPaused:(float)a3 volume:(float)a4;
- (void)webProcessVideoAdJSOPlayProgressed:(float)a3 volume:(float)a4;
- (void)webProcessVideoAdJSOPlayResumed:(float)a3 volume:(float)a4;
- (void)webProcessVideoAdJSOPlayStarted:(float)a3 volume:(float)a4;
- (void)webProcessVideoAdJSOSkipAdTapped:(float)a3 volume:(float)a4;
- (void)webProcessVideoAdJSOVideoTapped:(float)a3 volume:(float)a4;
- (void)webProcessVideoAdJSOVolumeChanged:(float)a3 playTime:(float)a4;
@end

@implementation APWebProcessPlugInLoadDelegate

- (id)webProcessPlugInBrowserContextController:(id)a3 frame:(id)a4 willSendRequestForResource:(unint64_t)a5 request:(id)a6 redirectResponse:(id)a7
{
  v8 = a6;
  v9 = [v8 URL];
  v10 = [v9 host];
  v11 = [APProxyURLUtilities shouldProxyRequestToHost:v10];

  if ((v11 & 1) == 0)
  {
    v13 = v8;
    goto LABEL_29;
  }

  v12 = [v8 mutableCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
    v14 = [v8 URL];
    v15 = [v14 videoAdIdentifier];

    [APProxyURLUtilities changeSchemeTo:2 * (v15 != 0) forUrlRequest:v13];
    v16 = [(APWebProcessPlugInLoadDelegate *)self advertisingIdentifier];
    v17 = [v13 adIdentifier];
    if (v17)
    {
      [(APWebProcessPlugInLoadDelegate *)self setAdvertisingIdentifier:v17];
    }

    v18 = [v13 maximumRequestCount];
    if (v18)
    {
      [(APWebProcessPlugInLoadDelegate *)self setMaximumRequestCount:v18];
    }

    v19 = [(APWebProcessPlugInLoadDelegate *)self advertisingIdentifier];
    if (v19)
    {
      v20 = v19;
      v21 = [(APWebProcessPlugInLoadDelegate *)self maximumRequestCount];
      if (v21)
      {

LABEL_17:
LABEL_18:
        if ([v16 length])
        {
          v23 = [(APWebProcessPlugInLoadDelegate *)self advertisingIdentifier];
          v24 = [v23 isEqualToString:v16];

          if ((v24 & 1) == 0)
          {
            [(APWebProcessPlugInLoadDelegate *)self resetSession];
          }
        }

        if (!v17)
        {
          v25 = [(APWebProcessPlugInLoadDelegate *)self advertisingIdentifier];

          if (v25)
          {
            v26 = [(APWebProcessPlugInLoadDelegate *)self advertisingIdentifier];
            [v13 setAdIdentifier:v26];
          }
        }

        if (!v18)
        {
          v27 = [(APWebProcessPlugInLoadDelegate *)self maximumRequestCount];

          if (v27)
          {
            v28 = [(APWebProcessPlugInLoadDelegate *)self maximumRequestCount];
            [v13 setMaximumRequestCount:v28];
          }
        }

        goto LABEL_28;
      }

      if (v17)
      {
        goto LABEL_15;
      }
    }

    else if (v17)
    {
LABEL_15:
      if (v18)
      {
        goto LABEL_18;
      }
    }

    v22 = [(APWebProcessPlugInLoadDelegate *)self webViewProcessAdIdentifier];
    [(APWebProcessPlugInLoadDelegate *)self setAdvertisingIdentifier:v22];

    v20 = [(APWebProcessPlugInLoadDelegate *)self webViewProcessMaxRequestCount];
    [(APWebProcessPlugInLoadDelegate *)self setMaximumRequestCount:v20];
    goto LABEL_17;
  }

  v13 = 0;
LABEL_28:

LABEL_29:

  return v13;
}

- (void)webProcessPlugInBrowserContextController:(id)a3 globalObjectIsAvailableForFrame:(id)a4 inScriptWorld:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(APWebProcessPlugInLoadDelegate *)self currentJSContext];

  if (!v9)
  {
    v10 = [v7 jsContextForWorld:v8];
    [(APWebProcessPlugInLoadDelegate *)self setCurrentJSContext:v10];

    v11 = objc_alloc_init(APWebProcessMRAIDJSO);
    [(APWebProcessPlugInLoadDelegate *)self setWebProcessMRAIDJSO:v11];

    v12 = [(APWebProcessPlugInLoadDelegate *)self webProcessMRAIDJSO];
    [v12 setDelegate:self];

    v13 = [(APWebProcessPlugInLoadDelegate *)self webProcessMRAIDJSO];
    v14 = [(APWebProcessPlugInLoadDelegate *)self currentJSContext];
    [v14 setObject:v13 forKeyedSubscript:@"mraid"];

    v15 = objc_alloc_init(APWebProcessDiagnosticJSO);
    [(APWebProcessPlugInLoadDelegate *)self setWebProcessDiagnosticJSO:v15];

    v16 = [(APWebProcessPlugInLoadDelegate *)self webProcessDiagnosticJSO];
    [v16 setDelegate:self];

    v17 = [(APWebProcessPlugInLoadDelegate *)self webProcessDiagnosticJSO];
    v18 = [(APWebProcessPlugInLoadDelegate *)self currentJSContext];
    [v18 setObject:v17 forKeyedSubscript:@"diagnosticUtility"];

    v19 = [(APWebProcessPlugInLoadDelegate *)self webProcessDelegate];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_4910;
    v20[3] = &unk_103F0;
    v20[4] = self;
    [v19 webProcessVideoAdJSOGetVideoInfo:v20];
  }
}

- (void)webProcessPlugInBrowserContextController:(id)a3 didFinishDocumentLoadForFrame:(id)a4
{
  v4 = [(APWebProcessPlugInLoadDelegate *)self webProcessDelegate:a3];
  [v4 webProcessPlugInBrowserContextControllerGlobalObjectIsAvailableForFrame];
}

- (void)webProcessDiagnosticJSOStatusReported:(id)a3 status:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(APWebProcessPlugInLoadDelegate *)self webProcessDelegate];
  [v8 webProcessDiagnosticJSOStatusReported:v7 status:v6];
}

- (void)webProcessVideoAdJSOMediaPlaybackFailedWithErrorDescription:(id)a3
{
  v4 = a3;
  v5 = [(APWebProcessPlugInLoadDelegate *)self webProcessDelegate];
  [v5 webProcessVideoAdJSOMediaPlaybackFailedWithErrorDescription:v4];
}

- (void)webProcessVideoAdJSOCreativeViewLoaded
{
  v2 = [(APWebProcessPlugInLoadDelegate *)self webProcessDelegate];
  [v2 webProcessVideoAdJSOCreativeViewLoaded];
}

- (void)webProcessVideoAdJSOPlayStarted:(float)a3 volume:(float)a4
{
  v8 = [(APWebProcessPlugInLoadDelegate *)self webProcessDelegate];
  *&v6 = a3;
  *&v7 = a4;
  [v8 webProcessVideoAdJSODidCallPlayStarted:v6 volume:v7];
}

- (void)webProcessVideoAdJSOPlayResumed:(float)a3 volume:(float)a4
{
  v8 = [(APWebProcessPlugInLoadDelegate *)self webProcessDelegate];
  *&v6 = a3;
  *&v7 = a4;
  [v8 webProcessVideoAdJSODidCallPlayResumed:v6 volume:v7];
}

- (void)webProcessVideoAdJSOPlayPaused:(float)a3 volume:(float)a4
{
  v8 = [(APWebProcessPlugInLoadDelegate *)self webProcessDelegate];
  *&v6 = a3;
  *&v7 = a4;
  [v8 webProcessVideoAdJSODidCallPlayPaused:v6 volume:v7];
}

- (void)webProcessVideoAdJSOPlayProgressed:(float)a3 volume:(float)a4
{
  v8 = [(APWebProcessPlugInLoadDelegate *)self webProcessDelegate];
  *&v6 = a3;
  *&v7 = a4;
  [v8 webProcessVideoAdJSODidCallPlayProgressed:v6 volume:v7];
}

- (void)webProcessVideoAdJSOPlayCompletedWithVolume:(float)a3
{
  v5 = [(APWebProcessPlugInLoadDelegate *)self webProcessDelegate];
  *&v4 = a3;
  [v5 webProcessVideoAdJSODidCallPlayCompletedWithVolume:v4];
}

- (void)webProcessVideoAdJSOVolumeChanged:(float)a3 playTime:(float)a4
{
  v8 = [(APWebProcessPlugInLoadDelegate *)self webProcessDelegate];
  *&v6 = a3;
  *&v7 = a4;
  [v8 webProcessVideoAdJSODidCallVolumeChanged:v6 playTime:v7];
}

- (void)webProcessVideoAdJSOAudioMuted:(float)a3
{
  v5 = [(APWebProcessPlugInLoadDelegate *)self webProcessDelegate];
  *&v4 = a3;
  [v5 webProcessVideoAdJSODidCallAudioMuted:v4];
}

- (void)webProcessVideoAdJSOAudioUnmuted:(float)a3 volume:(float)a4
{
  v8 = [(APWebProcessPlugInLoadDelegate *)self webProcessDelegate];
  *&v6 = a3;
  *&v7 = a4;
  [v8 webProcessVideoAdJSODidCallAudioUnmuted:v6 volume:v7];
}

- (void)webProcessVideoAdJSOMoreInfoTapped:(float)a3 volume:(float)a4
{
  v8 = [(APWebProcessPlugInLoadDelegate *)self webProcessDelegate];
  *&v6 = a3;
  *&v7 = a4;
  [v8 webProcessVideoAdJSODidCallMoreInfoTapped:v6 volume:v7];
}

- (void)webProcessVideoAdJSOVideoTapped:(float)a3 volume:(float)a4
{
  v8 = [(APWebProcessPlugInLoadDelegate *)self webProcessDelegate];
  *&v6 = a3;
  *&v7 = a4;
  [v8 webProcessVideoAdJSODidCallVideoTapped:v6 volume:v7];
}

- (void)webProcessVideoAdJSOSkipAdTapped:(float)a3 volume:(float)a4
{
  v8 = [(APWebProcessPlugInLoadDelegate *)self webProcessDelegate];
  *&v6 = a3;
  *&v7 = a4;
  [v8 webProcessVideoAdJSODidCallSkipAdTapped:v6 volume:v7];
}

- (void)webProcessVideoAdJSOFullScreenTapped:(float)a3 volume:(float)a4
{
  v8 = [(APWebProcessPlugInLoadDelegate *)self webProcessDelegate];
  *&v6 = a3;
  *&v7 = a4;
  [v8 webProcessVideoAdJSODidCallFullScreenTapped:v6 volume:v7];
}

- (void)webProcessVideoAdJSOExitFullScreenTapped:(float)a3 volume:(float)a4
{
  v8 = [(APWebProcessPlugInLoadDelegate *)self webProcessDelegate];
  *&v6 = a3;
  *&v7 = a4;
  [v8 webProcessVideoAdJSODidCallExitFullScreenTapped:v6 volume:v7];
}

- (void)webProcessMRAIDJSODidCallClose
{
  v2 = [(APWebProcessPlugInLoadDelegate *)self webProcessDelegate];
  [v2 webProcessMRAIDJSODidCallClose];
}

- (void)webProcessMRAIDJSODidCallExpand:(id)a3 withMaximumWidth:(double)a4 andHeight:(double)a5
{
  v8 = a3;
  v9 = [(APWebProcessPlugInLoadDelegate *)self webProcessDelegate];
  [v9 webProcessMRAIDJSODidCallExpand:v8 withMaximumWidth:a4 andHeight:a5];
}

- (void)webProcessMRAIDJSODidCallOpen:(id)a3
{
  v4 = a3;
  v5 = [(APWebProcessPlugInLoadDelegate *)self webProcessDelegate];
  [v5 webProcessMRAIDJSODidCallOpen:v4];
}

- (void)webProcessMRAIDJSODidCallCreateCalendarEvent:(id)a3
{
  v4 = a3;
  v5 = [(APWebProcessPlugInLoadDelegate *)self webProcessDelegate];
  [v5 webProcessMRAIDJSODidCallCreateCalendarEvent:v4];
}

- (void)creativeStateDidChange:(int64_t)a3
{
  v5 = [(APWebProcessPlugInLoadDelegate *)self webProcessMRAIDJSO];

  if (v5)
  {
    v6 = [(APWebProcessPlugInLoadDelegate *)self webProcessMRAIDJSO];
    [v6 setState:a3];
  }
}

- (void)contentSizeDidChange:(id)a3
{
  v6 = a3;
  v4 = [(APWebProcessPlugInLoadDelegate *)self webProcessVideoAdJSO];

  if (v4)
  {
    v5 = [(APWebProcessPlugInLoadDelegate *)self webProcessVideoAdJSO];
    [v5 contentSizeDidChange:v6];
  }
}

- (void)setExpandedWidth:(double)a3 andHeight:(double)a4
{
  v7 = [(APWebProcessPlugInLoadDelegate *)self webProcessMRAIDJSO];

  if (v7)
  {
    v8 = [(APWebProcessPlugInLoadDelegate *)self webProcessMRAIDJSO];
    [v8 setExpandedSize:{a3, a4}];
  }
}

- (void)actionDidFailWithErrorDescription:(id)a3
{
  v6 = a3;
  v4 = [(APWebProcessPlugInLoadDelegate *)self webProcessMRAIDJSO];

  if (v4)
  {
    v5 = [(APWebProcessPlugInLoadDelegate *)self webProcessMRAIDJSO];
    [v5 actionDidFailWithErrorDescription:v6];
  }
}

- (void)resetVideoTagPlaytime
{
  v3 = [(APWebProcessPlugInLoadDelegate *)self webProcessMRAIDJSO];

  if (v3)
  {
    v4 = [(APWebProcessPlugInLoadDelegate *)self webProcessMRAIDJSO];
    [v4 resetVideoTagPlaytime];
  }
}

- (void)resetSession
{
  if (qword_162B0 != -1)
  {
    sub_6ED8();
  }

  v3 = qword_162B8;
  if (os_log_type_enabled(qword_162B8, OS_LOG_TYPE_INFO))
  {
    v4 = v3;
    v5 = [(APWebProcessPlugInLoadDelegate *)self advertisingIdentifier];
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "Resetting session %{public}@", &v6, 0xCu);
  }

  [(APWebProcessPlugInLoadDelegate *)self setCurrentJSContext:0];
  [(APWebProcessPlugInLoadDelegate *)self setAdvertisingIdentifier:0];
  [(APWebProcessPlugInLoadDelegate *)self setMaximumRequestCount:0];
  [(APWebProcessPlugInLoadDelegate *)self setWebProcessMRAIDJSO:0];
  [(APWebProcessPlugInLoadDelegate *)self setWebProcessVideoAdJSO:0];
}

- (void)setWebViewProcessAdIdentifier:(id)a3 maxRequestCount:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (v7)
  {
    [(APWebProcessPlugInLoadDelegate *)self setWebViewProcessAdIdentifier:v7];
  }

  if (v6)
  {
    [(APWebProcessPlugInLoadDelegate *)self setWebViewProcessMaxRequestCount:v6];
  }
}

@end