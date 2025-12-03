@interface APWebProcessPlugInLoadDelegate
- (id)webProcessPlugInBrowserContextController:(id)controller frame:(id)frame willSendRequestForResource:(unint64_t)resource request:(id)request redirectResponse:(id)response;
- (void)actionDidFailWithErrorDescription:(id)description;
- (void)contentSizeDidChange:(id)change;
- (void)creativeStateDidChange:(int64_t)change;
- (void)resetSession;
- (void)resetVideoTagPlaytime;
- (void)setExpandedWidth:(double)width andHeight:(double)height;
- (void)setWebViewProcessAdIdentifier:(id)identifier maxRequestCount:(id)count;
- (void)webProcessDiagnosticJSOStatusReported:(id)reported status:(id)status;
- (void)webProcessMRAIDJSODidCallClose;
- (void)webProcessMRAIDJSODidCallCreateCalendarEvent:(id)event;
- (void)webProcessMRAIDJSODidCallExpand:(id)expand withMaximumWidth:(double)width andHeight:(double)height;
- (void)webProcessMRAIDJSODidCallOpen:(id)open;
- (void)webProcessPlugInBrowserContextController:(id)controller didFinishDocumentLoadForFrame:(id)frame;
- (void)webProcessPlugInBrowserContextController:(id)controller globalObjectIsAvailableForFrame:(id)frame inScriptWorld:(id)world;
- (void)webProcessVideoAdJSOAudioMuted:(float)muted;
- (void)webProcessVideoAdJSOAudioUnmuted:(float)unmuted volume:(float)volume;
- (void)webProcessVideoAdJSOCreativeViewLoaded;
- (void)webProcessVideoAdJSOExitFullScreenTapped:(float)tapped volume:(float)volume;
- (void)webProcessVideoAdJSOFullScreenTapped:(float)tapped volume:(float)volume;
- (void)webProcessVideoAdJSOMediaPlaybackFailedWithErrorDescription:(id)description;
- (void)webProcessVideoAdJSOMoreInfoTapped:(float)tapped volume:(float)volume;
- (void)webProcessVideoAdJSOPlayCompletedWithVolume:(float)volume;
- (void)webProcessVideoAdJSOPlayPaused:(float)paused volume:(float)volume;
- (void)webProcessVideoAdJSOPlayProgressed:(float)progressed volume:(float)volume;
- (void)webProcessVideoAdJSOPlayResumed:(float)resumed volume:(float)volume;
- (void)webProcessVideoAdJSOPlayStarted:(float)started volume:(float)volume;
- (void)webProcessVideoAdJSOSkipAdTapped:(float)tapped volume:(float)volume;
- (void)webProcessVideoAdJSOVideoTapped:(float)tapped volume:(float)volume;
- (void)webProcessVideoAdJSOVolumeChanged:(float)changed playTime:(float)time;
@end

@implementation APWebProcessPlugInLoadDelegate

- (id)webProcessPlugInBrowserContextController:(id)controller frame:(id)frame willSendRequestForResource:(unint64_t)resource request:(id)request redirectResponse:(id)response
{
  requestCopy = request;
  v9 = [requestCopy URL];
  host = [v9 host];
  v11 = [APProxyURLUtilities shouldProxyRequestToHost:host];

  if ((v11 & 1) == 0)
  {
    v13 = requestCopy;
    goto LABEL_29;
  }

  v12 = [requestCopy mutableCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
    v14 = [requestCopy URL];
    videoAdIdentifier = [v14 videoAdIdentifier];

    [APProxyURLUtilities changeSchemeTo:2 * (videoAdIdentifier != 0) forUrlRequest:v13];
    advertisingIdentifier = [(APWebProcessPlugInLoadDelegate *)self advertisingIdentifier];
    adIdentifier = [v13 adIdentifier];
    if (adIdentifier)
    {
      [(APWebProcessPlugInLoadDelegate *)self setAdvertisingIdentifier:adIdentifier];
    }

    maximumRequestCount = [v13 maximumRequestCount];
    if (maximumRequestCount)
    {
      [(APWebProcessPlugInLoadDelegate *)self setMaximumRequestCount:maximumRequestCount];
    }

    advertisingIdentifier2 = [(APWebProcessPlugInLoadDelegate *)self advertisingIdentifier];
    if (advertisingIdentifier2)
    {
      webViewProcessMaxRequestCount = advertisingIdentifier2;
      maximumRequestCount2 = [(APWebProcessPlugInLoadDelegate *)self maximumRequestCount];
      if (maximumRequestCount2)
      {

LABEL_17:
LABEL_18:
        if ([advertisingIdentifier length])
        {
          advertisingIdentifier3 = [(APWebProcessPlugInLoadDelegate *)self advertisingIdentifier];
          v24 = [advertisingIdentifier3 isEqualToString:advertisingIdentifier];

          if ((v24 & 1) == 0)
          {
            [(APWebProcessPlugInLoadDelegate *)self resetSession];
          }
        }

        if (!adIdentifier)
        {
          advertisingIdentifier4 = [(APWebProcessPlugInLoadDelegate *)self advertisingIdentifier];

          if (advertisingIdentifier4)
          {
            advertisingIdentifier5 = [(APWebProcessPlugInLoadDelegate *)self advertisingIdentifier];
            [v13 setAdIdentifier:advertisingIdentifier5];
          }
        }

        if (!maximumRequestCount)
        {
          maximumRequestCount3 = [(APWebProcessPlugInLoadDelegate *)self maximumRequestCount];

          if (maximumRequestCount3)
          {
            maximumRequestCount4 = [(APWebProcessPlugInLoadDelegate *)self maximumRequestCount];
            [v13 setMaximumRequestCount:maximumRequestCount4];
          }
        }

        goto LABEL_28;
      }

      if (adIdentifier)
      {
        goto LABEL_15;
      }
    }

    else if (adIdentifier)
    {
LABEL_15:
      if (maximumRequestCount)
      {
        goto LABEL_18;
      }
    }

    webViewProcessAdIdentifier = [(APWebProcessPlugInLoadDelegate *)self webViewProcessAdIdentifier];
    [(APWebProcessPlugInLoadDelegate *)self setAdvertisingIdentifier:webViewProcessAdIdentifier];

    webViewProcessMaxRequestCount = [(APWebProcessPlugInLoadDelegate *)self webViewProcessMaxRequestCount];
    [(APWebProcessPlugInLoadDelegate *)self setMaximumRequestCount:webViewProcessMaxRequestCount];
    goto LABEL_17;
  }

  v13 = 0;
LABEL_28:

LABEL_29:

  return v13;
}

- (void)webProcessPlugInBrowserContextController:(id)controller globalObjectIsAvailableForFrame:(id)frame inScriptWorld:(id)world
{
  frameCopy = frame;
  worldCopy = world;
  currentJSContext = [(APWebProcessPlugInLoadDelegate *)self currentJSContext];

  if (!currentJSContext)
  {
    v10 = [frameCopy jsContextForWorld:worldCopy];
    [(APWebProcessPlugInLoadDelegate *)self setCurrentJSContext:v10];

    v11 = objc_alloc_init(APWebProcessMRAIDJSO);
    [(APWebProcessPlugInLoadDelegate *)self setWebProcessMRAIDJSO:v11];

    webProcessMRAIDJSO = [(APWebProcessPlugInLoadDelegate *)self webProcessMRAIDJSO];
    [webProcessMRAIDJSO setDelegate:self];

    webProcessMRAIDJSO2 = [(APWebProcessPlugInLoadDelegate *)self webProcessMRAIDJSO];
    currentJSContext2 = [(APWebProcessPlugInLoadDelegate *)self currentJSContext];
    [currentJSContext2 setObject:webProcessMRAIDJSO2 forKeyedSubscript:@"mraid"];

    v15 = objc_alloc_init(APWebProcessDiagnosticJSO);
    [(APWebProcessPlugInLoadDelegate *)self setWebProcessDiagnosticJSO:v15];

    webProcessDiagnosticJSO = [(APWebProcessPlugInLoadDelegate *)self webProcessDiagnosticJSO];
    [webProcessDiagnosticJSO setDelegate:self];

    webProcessDiagnosticJSO2 = [(APWebProcessPlugInLoadDelegate *)self webProcessDiagnosticJSO];
    currentJSContext3 = [(APWebProcessPlugInLoadDelegate *)self currentJSContext];
    [currentJSContext3 setObject:webProcessDiagnosticJSO2 forKeyedSubscript:@"diagnosticUtility"];

    webProcessDelegate = [(APWebProcessPlugInLoadDelegate *)self webProcessDelegate];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_4910;
    v20[3] = &unk_103F0;
    v20[4] = self;
    [webProcessDelegate webProcessVideoAdJSOGetVideoInfo:v20];
  }
}

- (void)webProcessPlugInBrowserContextController:(id)controller didFinishDocumentLoadForFrame:(id)frame
{
  v4 = [(APWebProcessPlugInLoadDelegate *)self webProcessDelegate:controller];
  [v4 webProcessPlugInBrowserContextControllerGlobalObjectIsAvailableForFrame];
}

- (void)webProcessDiagnosticJSOStatusReported:(id)reported status:(id)status
{
  statusCopy = status;
  reportedCopy = reported;
  webProcessDelegate = [(APWebProcessPlugInLoadDelegate *)self webProcessDelegate];
  [webProcessDelegate webProcessDiagnosticJSOStatusReported:reportedCopy status:statusCopy];
}

- (void)webProcessVideoAdJSOMediaPlaybackFailedWithErrorDescription:(id)description
{
  descriptionCopy = description;
  webProcessDelegate = [(APWebProcessPlugInLoadDelegate *)self webProcessDelegate];
  [webProcessDelegate webProcessVideoAdJSOMediaPlaybackFailedWithErrorDescription:descriptionCopy];
}

- (void)webProcessVideoAdJSOCreativeViewLoaded
{
  webProcessDelegate = [(APWebProcessPlugInLoadDelegate *)self webProcessDelegate];
  [webProcessDelegate webProcessVideoAdJSOCreativeViewLoaded];
}

- (void)webProcessVideoAdJSOPlayStarted:(float)started volume:(float)volume
{
  webProcessDelegate = [(APWebProcessPlugInLoadDelegate *)self webProcessDelegate];
  *&v6 = started;
  *&v7 = volume;
  [webProcessDelegate webProcessVideoAdJSODidCallPlayStarted:v6 volume:v7];
}

- (void)webProcessVideoAdJSOPlayResumed:(float)resumed volume:(float)volume
{
  webProcessDelegate = [(APWebProcessPlugInLoadDelegate *)self webProcessDelegate];
  *&v6 = resumed;
  *&v7 = volume;
  [webProcessDelegate webProcessVideoAdJSODidCallPlayResumed:v6 volume:v7];
}

- (void)webProcessVideoAdJSOPlayPaused:(float)paused volume:(float)volume
{
  webProcessDelegate = [(APWebProcessPlugInLoadDelegate *)self webProcessDelegate];
  *&v6 = paused;
  *&v7 = volume;
  [webProcessDelegate webProcessVideoAdJSODidCallPlayPaused:v6 volume:v7];
}

- (void)webProcessVideoAdJSOPlayProgressed:(float)progressed volume:(float)volume
{
  webProcessDelegate = [(APWebProcessPlugInLoadDelegate *)self webProcessDelegate];
  *&v6 = progressed;
  *&v7 = volume;
  [webProcessDelegate webProcessVideoAdJSODidCallPlayProgressed:v6 volume:v7];
}

- (void)webProcessVideoAdJSOPlayCompletedWithVolume:(float)volume
{
  webProcessDelegate = [(APWebProcessPlugInLoadDelegate *)self webProcessDelegate];
  *&v4 = volume;
  [webProcessDelegate webProcessVideoAdJSODidCallPlayCompletedWithVolume:v4];
}

- (void)webProcessVideoAdJSOVolumeChanged:(float)changed playTime:(float)time
{
  webProcessDelegate = [(APWebProcessPlugInLoadDelegate *)self webProcessDelegate];
  *&v6 = changed;
  *&v7 = time;
  [webProcessDelegate webProcessVideoAdJSODidCallVolumeChanged:v6 playTime:v7];
}

- (void)webProcessVideoAdJSOAudioMuted:(float)muted
{
  webProcessDelegate = [(APWebProcessPlugInLoadDelegate *)self webProcessDelegate];
  *&v4 = muted;
  [webProcessDelegate webProcessVideoAdJSODidCallAudioMuted:v4];
}

- (void)webProcessVideoAdJSOAudioUnmuted:(float)unmuted volume:(float)volume
{
  webProcessDelegate = [(APWebProcessPlugInLoadDelegate *)self webProcessDelegate];
  *&v6 = unmuted;
  *&v7 = volume;
  [webProcessDelegate webProcessVideoAdJSODidCallAudioUnmuted:v6 volume:v7];
}

- (void)webProcessVideoAdJSOMoreInfoTapped:(float)tapped volume:(float)volume
{
  webProcessDelegate = [(APWebProcessPlugInLoadDelegate *)self webProcessDelegate];
  *&v6 = tapped;
  *&v7 = volume;
  [webProcessDelegate webProcessVideoAdJSODidCallMoreInfoTapped:v6 volume:v7];
}

- (void)webProcessVideoAdJSOVideoTapped:(float)tapped volume:(float)volume
{
  webProcessDelegate = [(APWebProcessPlugInLoadDelegate *)self webProcessDelegate];
  *&v6 = tapped;
  *&v7 = volume;
  [webProcessDelegate webProcessVideoAdJSODidCallVideoTapped:v6 volume:v7];
}

- (void)webProcessVideoAdJSOSkipAdTapped:(float)tapped volume:(float)volume
{
  webProcessDelegate = [(APWebProcessPlugInLoadDelegate *)self webProcessDelegate];
  *&v6 = tapped;
  *&v7 = volume;
  [webProcessDelegate webProcessVideoAdJSODidCallSkipAdTapped:v6 volume:v7];
}

- (void)webProcessVideoAdJSOFullScreenTapped:(float)tapped volume:(float)volume
{
  webProcessDelegate = [(APWebProcessPlugInLoadDelegate *)self webProcessDelegate];
  *&v6 = tapped;
  *&v7 = volume;
  [webProcessDelegate webProcessVideoAdJSODidCallFullScreenTapped:v6 volume:v7];
}

- (void)webProcessVideoAdJSOExitFullScreenTapped:(float)tapped volume:(float)volume
{
  webProcessDelegate = [(APWebProcessPlugInLoadDelegate *)self webProcessDelegate];
  *&v6 = tapped;
  *&v7 = volume;
  [webProcessDelegate webProcessVideoAdJSODidCallExitFullScreenTapped:v6 volume:v7];
}

- (void)webProcessMRAIDJSODidCallClose
{
  webProcessDelegate = [(APWebProcessPlugInLoadDelegate *)self webProcessDelegate];
  [webProcessDelegate webProcessMRAIDJSODidCallClose];
}

- (void)webProcessMRAIDJSODidCallExpand:(id)expand withMaximumWidth:(double)width andHeight:(double)height
{
  expandCopy = expand;
  webProcessDelegate = [(APWebProcessPlugInLoadDelegate *)self webProcessDelegate];
  [webProcessDelegate webProcessMRAIDJSODidCallExpand:expandCopy withMaximumWidth:width andHeight:height];
}

- (void)webProcessMRAIDJSODidCallOpen:(id)open
{
  openCopy = open;
  webProcessDelegate = [(APWebProcessPlugInLoadDelegate *)self webProcessDelegate];
  [webProcessDelegate webProcessMRAIDJSODidCallOpen:openCopy];
}

- (void)webProcessMRAIDJSODidCallCreateCalendarEvent:(id)event
{
  eventCopy = event;
  webProcessDelegate = [(APWebProcessPlugInLoadDelegate *)self webProcessDelegate];
  [webProcessDelegate webProcessMRAIDJSODidCallCreateCalendarEvent:eventCopy];
}

- (void)creativeStateDidChange:(int64_t)change
{
  webProcessMRAIDJSO = [(APWebProcessPlugInLoadDelegate *)self webProcessMRAIDJSO];

  if (webProcessMRAIDJSO)
  {
    webProcessMRAIDJSO2 = [(APWebProcessPlugInLoadDelegate *)self webProcessMRAIDJSO];
    [webProcessMRAIDJSO2 setState:change];
  }
}

- (void)contentSizeDidChange:(id)change
{
  changeCopy = change;
  webProcessVideoAdJSO = [(APWebProcessPlugInLoadDelegate *)self webProcessVideoAdJSO];

  if (webProcessVideoAdJSO)
  {
    webProcessVideoAdJSO2 = [(APWebProcessPlugInLoadDelegate *)self webProcessVideoAdJSO];
    [webProcessVideoAdJSO2 contentSizeDidChange:changeCopy];
  }
}

- (void)setExpandedWidth:(double)width andHeight:(double)height
{
  webProcessMRAIDJSO = [(APWebProcessPlugInLoadDelegate *)self webProcessMRAIDJSO];

  if (webProcessMRAIDJSO)
  {
    webProcessMRAIDJSO2 = [(APWebProcessPlugInLoadDelegate *)self webProcessMRAIDJSO];
    [webProcessMRAIDJSO2 setExpandedSize:{width, height}];
  }
}

- (void)actionDidFailWithErrorDescription:(id)description
{
  descriptionCopy = description;
  webProcessMRAIDJSO = [(APWebProcessPlugInLoadDelegate *)self webProcessMRAIDJSO];

  if (webProcessMRAIDJSO)
  {
    webProcessMRAIDJSO2 = [(APWebProcessPlugInLoadDelegate *)self webProcessMRAIDJSO];
    [webProcessMRAIDJSO2 actionDidFailWithErrorDescription:descriptionCopy];
  }
}

- (void)resetVideoTagPlaytime
{
  webProcessMRAIDJSO = [(APWebProcessPlugInLoadDelegate *)self webProcessMRAIDJSO];

  if (webProcessMRAIDJSO)
  {
    webProcessMRAIDJSO2 = [(APWebProcessPlugInLoadDelegate *)self webProcessMRAIDJSO];
    [webProcessMRAIDJSO2 resetVideoTagPlaytime];
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
    advertisingIdentifier = [(APWebProcessPlugInLoadDelegate *)self advertisingIdentifier];
    v6 = 138543362;
    v7 = advertisingIdentifier;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "Resetting session %{public}@", &v6, 0xCu);
  }

  [(APWebProcessPlugInLoadDelegate *)self setCurrentJSContext:0];
  [(APWebProcessPlugInLoadDelegate *)self setAdvertisingIdentifier:0];
  [(APWebProcessPlugInLoadDelegate *)self setMaximumRequestCount:0];
  [(APWebProcessPlugInLoadDelegate *)self setWebProcessMRAIDJSO:0];
  [(APWebProcessPlugInLoadDelegate *)self setWebProcessVideoAdJSO:0];
}

- (void)setWebViewProcessAdIdentifier:(id)identifier maxRequestCount:(id)count
{
  identifierCopy = identifier;
  countCopy = count;
  if (identifierCopy)
  {
    [(APWebProcessPlugInLoadDelegate *)self setWebViewProcessAdIdentifier:identifierCopy];
  }

  if (countCopy)
  {
    [(APWebProcessPlugInLoadDelegate *)self setWebViewProcessMaxRequestCount:countCopy];
  }
}

@end