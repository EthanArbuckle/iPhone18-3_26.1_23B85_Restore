@interface SRNowPlayingObserver
- ($1E6FB7347BE694799A5E8CC69A739A06)_constructNowPlayingMessage;
- (SRNowPlayingObserver)init;
- (double)_getCurrentTime;
- (unsigned)getSRNowPlayingMediaSubType:(int64_t)type;
- (unsigned)getSRNowPlayingMediaType:(int64_t)type;
- (unsigned)getSRNowPlayingPlaybackState:(unsigned int)state;
- (void)_activate;
- (void)_checkIfRouteChanged;
- (void)_handleShortPlaybackDetectionTimerExpiry;
- (void)_loadLastStates;
- (void)_nowPlayingControllerEnsureStarted;
- (void)_recordLastPlayedTime;
- (void)_startShortPlaybackDetectionTimer;
- (void)controller:(id)controller contentItemsDidUpdateWithContentItemChanges:(id)changes;
- (void)controller:(id)controller didFailWithError:(id)error;
- (void)controller:(id)controller playbackQueueDidChangeFrom:(id)from to:(id)to;
- (void)controller:(id)controller playbackStateDidChangeFrom:(unsigned int)from to:(unsigned int)to;
- (void)controllerWillReloadForInvalidation:(id)invalidation;
- (void)fetchCurrentNowPlayingInfo;
- (void)handleNowPlayingContentItemChanges:(id)changes;
- (void)handleNowPlayingRouteChangedFrom:(id)from toRoute:(id)route;
- (void)handlePlaybackQueueChangedTo:(id)to;
- (void)handlePlaybackStateChangedTo:(unsigned __int8)to;
- (void)sendNowPlayingMessage;
- (void)systemRouteChangedTo:(id)to;
@end

@implementation SRNowPlayingObserver

- (SRNowPlayingObserver)init
{
  v10.receiver = self;
  v10.super_class = SRNowPlayingObserver;
  v2 = [(SRNowPlayingObserver *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("SRNowPlayingObserver", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    v6 = objc_alloc_init(NSDateFormatter);
    dateFormatter = v2->_dateFormatter;
    v2->_dateFormatter = v6;

    [(NSDateFormatter *)v2->_dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    v8 = v2;
  }

  return v2;
}

- (void)_activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007C074;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_checkIfRouteChanged
{
  getCurrentRoute = [(BTSmartRoutingDaemon *)self->_srDaemon getCurrentRoute];
  v4 = self->_currentSystemRoute;
  v5 = getCurrentRoute;
  v7 = v5;
  if (v4 == v5)
  {

    goto LABEL_8;
  }

  if ((v5 == 0) == (v4 != 0))
  {

    goto LABEL_7;
  }

  v6 = [(NSString *)v4 isEqual:v5];

  if ((v6 & 1) == 0)
  {
LABEL_7:
    [(SRNowPlayingObserver *)self handleNowPlayingRouteChangedFrom:self->_currentSystemRoute toRoute:v7];
  }

LABEL_8:
}

- ($1E6FB7347BE694799A5E8CC69A739A06)_constructNowPlayingMessage
{
  LOWORD(v13) = 3;
  WORD1(v13) = self->_currentPlaybackState;
  mediaType = self->_mediaType;
  BYTE4(v13) = self->_mediaType;
  mediaSubType = self->_mediaSubType;
  BYTE5(v13) = self->_mediaSubType;
  lastPlayedTime = self->_lastPlayedTime;
  HIWORD(v13) = lastPlayedTime;
  if (dword_1002F6A08 <= 30 && (dword_1002F6A08 != -1 || _LogCategory_Initialize()))
  {
    if (mediaType <= 2)
    {
      v6 = off_1002B94C8[mediaType];
    }

    if (mediaSubType <= 7)
    {
      v7 = off_1002B94E0[mediaSubType];
    }

    dateFormatter = self->_dateFormatter;
    v9 = [NSDate dateWithTimeIntervalSince1970:lastPlayedTime];
    v12 = [(NSDateFormatter *)dateFormatter stringFromDate:v9];
    LogPrintF();
  }

  v10 = lastPlayedTime >> 16;
  v11 = v13;
  result.var5 = v10;
  result.var0 = v11;
  result.var1 = BYTE2(v11);
  result.var2 = BYTE3(v11);
  result.var3 = BYTE4(v11);
  result.var4 = BYTE5(v11);
  return result;
}

- (double)_getCurrentTime
{
  v2 = +[NSDate date];
  [v2 timeIntervalSince1970];
  v4 = v3;

  return v4;
}

- (unsigned)getSRNowPlayingMediaType:(int64_t)type
{
  if (type == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (type == 2);
  }
}

- (unsigned)getSRNowPlayingMediaSubType:(int64_t)type
{
  if (type >= 8)
  {
    return 0;
  }

  else
  {
    return type;
  }
}

- (unsigned)getSRNowPlayingPlaybackState:(unsigned int)state
{
  if (state >= 5)
  {
    return 0;
  }

  else
  {
    return state;
  }
}

- (void)_loadLastStates
{
  CFPrefs_GetDouble();
  self->_lastPlayedTime = v3;
  CFStringGetTypeID();
  v4 = CFPrefs_CopyTypedValue();
  lastTargetHeadsetAddress = self->_lastTargetHeadsetAddress;
  self->_lastTargetHeadsetAddress = v4;
}

- (void)_nowPlayingControllerEnsureStarted
{
  v3 = +[MRNowPlayingController localRouteController];
  nowPlayingController = self->_nowPlayingController;
  self->_nowPlayingController = v3;

  [(MRNowPlayingController *)self->_nowPlayingController setDelegate:self];
  v5 = self->_nowPlayingController;

  [(MRNowPlayingController *)v5 beginLoadingUpdates];
}

- (void)_recordLastPlayedTime
{
  [(SRNowPlayingObserver *)self _getCurrentTime];
  self->_lastPlayedTime = v3;

  _CFPrefs_SetDouble(@"com.apple.bluetooth", @"lastNowPlayedTime");
}

- (void)sendNowPlayingMessage
{
  DeviceClass = GestaltGetDeviceClass();
  if (self->_lastTarget == 4)
  {
    currentPlaybackState = self->_currentPlaybackState;
    if (DeviceClass == 1 || self->_currentPlaybackState != 1)
    {
      v5 = self->_shortPlaybackDetectionTimer == 0;
      self->_currentPlaybackState;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = self->_shortPlaybackDetectionTimer == 0;
  }

  if (dword_1002F6A08 <= 30 && (dword_1002F6A08 != -1 || _LogCategory_Initialize()))
  {
    lastTargetHeadsetAddress = self->_lastTargetHeadsetAddress;
    LogPrintF();
  }

  if (v5)
  {
    _constructNowPlayingMessage = [(SRNowPlayingObserver *)self _constructNowPlayingMessage];
    srDaemon = self->_srDaemon;
    lastTarget = self->_lastTarget;
    v10 = self->_lastTargetHeadsetAddress;

    [(BTSmartRoutingDaemon *)srDaemon updateNowPlayingInfoForConnectedWx:_constructNowPlayingMessage withLastPlayedTarget:v6 & 0xFFFFFFFFFFFFLL andHeadsetAddress:lastTarget, v10];
  }
}

- (void)systemRouteChangedTo:(id)to
{
  toCopy = to;
  v5 = self->_currentSystemRoute;
  v6 = toCopy;
  v8 = v6;
  if (v5 == v6)
  {

    goto LABEL_8;
  }

  if ((v6 == 0) == (v5 != 0))
  {

    goto LABEL_7;
  }

  v7 = [(NSString *)v5 isEqual:v6];

  if ((v7 & 1) == 0)
  {
LABEL_7:
    [(SRNowPlayingObserver *)self handleNowPlayingRouteChangedFrom:self->_currentSystemRoute toRoute:v8];
  }

LABEL_8:
}

- (void)handlePlaybackStateChangedTo:(unsigned __int8)to
{
  toCopy = to;
  if (to)
  {
    v5 = (to & 0xFE) == 2;
  }

  else
  {
    v5 = 1;
  }

  currentPlaybackState = self->_currentPlaybackState;
  v8 = v5 && currentPlaybackState == 1;
  if (currentPlaybackState != to)
  {
    if (dword_1002F6A08 <= 30)
    {
      if (dword_1002F6A08 != -1)
      {
LABEL_13:
        if (currentPlaybackState <= 4)
        {
          v9 = off_1002B9520[currentPlaybackState];
        }

        if (toCopy <= 4)
        {
          v10 = off_1002B9520[toCopy];
        }

        LogPrintF();
        goto LABEL_20;
      }

      if (_LogCategory_Initialize())
      {
        currentPlaybackState = self->_currentPlaybackState;
        goto LABEL_13;
      }
    }

LABEL_20:
    self->_currentPlaybackState = toCopy;
  }

  if (toCopy - 2 >= 2 && toCopy)
  {
    if (toCopy != 1)
    {
      return;
    }

    [(SRNowPlayingObserver *)self _checkIfRouteChanged];
    if (!self->_shortPlaybackDetectionTimer)
    {
      [(SRNowPlayingObserver *)self _startShortPlaybackDetectionTimer];
    }
  }

  if (v8)
  {
    [(SRNowPlayingObserver *)self _recordLastPlayedTime];
  }

  [(SRNowPlayingObserver *)self sendNowPlayingMessage];
}

- (void)handleNowPlayingContentItemChanges:(id)changes
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [changes copy];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * v8);
        if (!self->_currentPlayingContentItem || ([*(*(&v16 + 1) + 8 * v8) identifier], v10 = objc_claimAutoreleasedReturnValue(), -[MRContentItem identifier](self->_currentPlayingContentItem, "identifier"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "isEqualToString:", v11), v11, v10, (v12 & 1) != 0))
        {
          metadata = [v9 metadata];

          if (metadata)
          {
            if ([metadata hasMediaType])
            {
              if ([metadata hasMediaSubType])
              {
                v14 = -[SRNowPlayingObserver getSRNowPlayingMediaType:](self, "getSRNowPlayingMediaType:", [metadata mediaType]);
                v15 = -[SRNowPlayingObserver getSRNowPlayingMediaSubType:](self, "getSRNowPlayingMediaSubType:", [metadata mediaSubType]);
                if (self->_mediaType != v14 || self->_mediaSubType != v15)
                {
                  self->_mediaType = v14;
                  self->_mediaSubType = v15;
                  [(SRNowPlayingObserver *)self sendNowPlayingMessage];
                }
              }
            }
          }

          goto LABEL_17;
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  metadata = 0;
LABEL_17:
}

- (void)handleNowPlayingRouteChangedFrom:(id)from toRoute:(id)route
{
  fromCopy = from;
  routeCopy = route;
  if (self->_currentPlaybackState == 1)
  {
    if (dword_1002F6A08 <= 30 && (dword_1002F6A08 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    objc_storeStrong(&self->_currentSystemRoute, route);
    if ([(NSString *)self->_currentSystemRoute isEqualToString:@"Bluetooth"])
    {
      self->_lastTarget = 1;
      getCurrentBTRouteAddress = [(BTSmartRoutingDaemon *)self->_srDaemon getCurrentBTRouteAddress];
      lastTargetHeadsetAddress = self->_lastTargetHeadsetAddress;
      self->_lastTargetHeadsetAddress = getCurrentBTRouteAddress;

      if (!self->_lastTargetHeadsetAddress)
      {
        self->_lastTarget = 2;
      }

      CFPrefs_SetValue();
    }

    else
    {
      if ([(NSString *)self->_currentSystemRoute isEqualToString:@"Speaker"])
      {
        v9 = 3;
      }

      else
      {
        v9 = 4;
      }

      self->_lastTarget = v9;
      v10 = self->_lastTargetHeadsetAddress;
      self->_lastTargetHeadsetAddress = 0;
    }
  }

  else
  {
    sub_1001EF108(dword_1002F6A08 < 31, dword_1002F6A08);
  }
}

- (void)handlePlaybackQueueChangedTo:(id)to
{
  if (to)
  {
    contentItems = [to contentItems];
    firstObject = [contentItems firstObject];
    v5 = [firstObject copy];

    identifier = [v5 identifier];
    if (identifier)
    {
      v7 = identifier;
      currentPlayingContentItem = self->_currentPlayingContentItem;
      p_currentPlayingContentItem = &self->_currentPlayingContentItem;
      identifier2 = [(MRContentItem *)currentPlayingContentItem identifier];
      identifier3 = [v5 identifier];
      v12 = [identifier2 isEqualToString:identifier3];

      if ((v12 & 1) == 0)
      {
        objc_storeStrong(p_currentPlayingContentItem, v5);
        if (dword_1002F6A08 <= 30 && (dword_1002F6A08 != -1 || _LogCategory_Initialize()))
        {
          sub_1001EF15C(p_currentPlayingContentItem);
        }
      }
    }
  }
}

- (void)_handleShortPlaybackDetectionTimerExpiry
{
  if (self->_currentPlaybackState == 1)
  {
    if (dword_1002F6A08 <= 30 && (dword_1002F6A08 != -1 || _LogCategory_Initialize()))
    {
      sub_1001EF1BC();
    }

    [(SRNowPlayingObserver *)self sendNowPlayingMessage];
  }

  shortPlaybackDetectionTimer = self->_shortPlaybackDetectionTimer;
  if (shortPlaybackDetectionTimer)
  {
    v5 = shortPlaybackDetectionTimer;
    dispatch_source_cancel(v5);
    v4 = self->_shortPlaybackDetectionTimer;
    self->_shortPlaybackDetectionTimer = 0;
  }
}

- (void)fetchCurrentNowPlayingInfo
{
  nowPlayingController = self->_nowPlayingController;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10007CD70;
  v3[3] = &unk_1002B94A8;
  v3[4] = self;
  [(MRNowPlayingController *)nowPlayingController performRequestWithCompletion:v3];
}

- (void)_startShortPlaybackDetectionTimer
{
  if (dword_1002F6A08 <= 30 && (dword_1002F6A08 != -1 || _LogCategory_Initialize()))
  {
    sub_1001EF1D8();
  }

  v3 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
  shortPlaybackDetectionTimer = self->_shortPlaybackDetectionTimer;
  self->_shortPlaybackDetectionTimer = v3;
  v5 = v3;

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10007CFF4;
  handler[3] = &unk_1002B6880;
  handler[4] = self;
  dispatch_source_set_event_handler(v5, handler);
  CUDispatchTimerSet();
  dispatch_activate(v5);
}

- (void)controller:(id)controller playbackStateDidChangeFrom:(unsigned int)from to:(unsigned int)to
{
  dispatchQueue = self->_dispatchQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10007D074;
  v6[3] = &unk_1002B68F8;
  v6[4] = self;
  toCopy = to;
  dispatch_async(dispatchQueue, v6);
}

- (void)controller:(id)controller playbackQueueDidChangeFrom:(id)from to:(id)to
{
  toCopy = to;
  dispatchQueue = self->_dispatchQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10007D150;
  v9[3] = &unk_1002B6D18;
  v9[4] = self;
  v10 = toCopy;
  v8 = toCopy;
  dispatch_async(dispatchQueue, v9);
}

- (void)controller:(id)controller contentItemsDidUpdateWithContentItemChanges:(id)changes
{
  changesCopy = changes;
  dispatchQueue = self->_dispatchQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10007D1F4;
  v8[3] = &unk_1002B6D18;
  v8[4] = self;
  v9 = changesCopy;
  v7 = changesCopy;
  dispatch_async(dispatchQueue, v8);
}

- (void)controller:(id)controller didFailWithError:(id)error
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007D274;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)controllerWillReloadForInvalidation:(id)invalidation
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007D2F0;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

@end