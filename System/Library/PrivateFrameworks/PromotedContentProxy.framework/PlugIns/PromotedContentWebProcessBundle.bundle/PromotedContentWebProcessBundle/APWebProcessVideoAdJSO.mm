@interface APWebProcessVideoAdJSO
- (APWebProcessVideoAdJSO)init;
- (APWebProcessVideoAdJSODelegate)delegate;
- (BOOL)shouldVideoAutoPlay;
- (void)_callListenersOfContentSizeChange;
- (void)addEventListener:(id)listener listener:(id)a4;
- (void)contentSizeDidChange:(id)change;
- (void)creativeViewLoaded;
- (void)exitFullScreenTapped:(float)tapped atVolume:(float)volume;
- (void)fullScreenTapped:(float)tapped atVolume:(float)volume;
- (void)moreInfoTapped:(float)tapped atVolume:(float)volume;
- (void)playCompletedAtVolume:(float)volume;
- (void)playFailed:(id)failed;
- (void)playPaused:(float)paused atVolume:(float)volume;
- (void)playResumed:(float)resumed atVolume:(float)volume;
- (void)playStarted:(float)started atVolume:(float)volume;
- (void)playTimeUpdated:(float)updated atVolume:(float)volume;
- (void)removeEventListener:(id)listener listener:(id)a4;
- (void)skipAdTapped:(float)tapped atVolume:(float)volume;
- (void)videoTapped:(float)tapped atVolume:(float)volume;
- (void)volumeChanged:(float)changed playtime:(float)playtime;
- (void)volumeMuted:(float)muted;
- (void)volumeUnmuted:(float)unmuted atVolume:(float)volume;
@end

@implementation APWebProcessVideoAdJSO

- (APWebProcessVideoAdJSO)init
{
  v7.receiver = self;
  v7.super_class = APWebProcessVideoAdJSO;
  v2 = [(APWebProcessVideoAdJSO *)&v7 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 12) = 0x1000000000000;
    v4 = objc_alloc_init(NSMutableDictionary);
    listenersDictionary = v3->_listenersDictionary;
    v3->_listenersDictionary = v4;

    v3->_playFailedRequestCount = 0;
  }

  return v3;
}

- (void)contentSizeDidChange:(id)change
{
  changeCopy = change;
  v5 = [changeCopy valueForKey:@"AdMarkerHeight"];
  [(APWebProcessVideoAdJSO *)self setAdMarkerHeight:v5];

  v6 = [changeCopy valueForKey:@"AdMarkerWidth"];
  [(APWebProcessVideoAdJSO *)self setAdMarkerWidth:v6];

  v7 = [changeCopy valueForKey:@"FontSize"];
  [(APWebProcessVideoAdJSO *)self setFontSize:v7];

  v8 = [changeCopy valueForKey:@"DeviceContentSize"];
  [(APWebProcessVideoAdJSO *)self setDeviceContentSize:v8];

  v9 = [changeCopy valueForKey:@"CornerRadius"];

  [(APWebProcessVideoAdJSO *)self setCornerRadius:v9];

  [(APWebProcessVideoAdJSO *)self _callListenersOfContentSizeChange];
}

- (void)playFailed:(id)failed
{
  failedCopy = failed;
  if ([(APWebProcessVideoAdJSO *)self playFailedRequestCount]< 2)
  {
    if ([failedCopy length] >= 0x1F5)
    {
      v6 = [failedCopy substringToIndex:500];

      v7 = sub_3260();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v11 = 138478083;
        v12 = objc_opt_class();
        v13 = 2114;
        v14 = @"Play failed error description truncated to 500 characters.";
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "[%{private}@] %{public}@", &v11, 0x16u);
      }

      failedCopy = v6;
    }

    delegate = [(APWebProcessVideoAdJSO *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      delegate2 = [(APWebProcessVideoAdJSO *)self delegate];
      [delegate2 webProcessVideoAdJSOMediaPlaybackFailedWithErrorDescription:failedCopy];

      [(APWebProcessVideoAdJSO *)self setPlayFailedRequestCount:([(APWebProcessVideoAdJSO *)self playFailedRequestCount]+ 1)];
    }
  }

  else
  {
    v5 = sub_3260();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_6E24(self, v5);
    }
  }
}

- (void)creativeViewLoaded
{
  delegate = [(APWebProcessVideoAdJSO *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(APWebProcessVideoAdJSO *)self delegate];
    [delegate2 webProcessVideoAdJSOCreativeViewLoaded];
  }
}

- (void)playStarted:(float)started atVolume:(float)volume
{
  delegate = [(APWebProcessVideoAdJSO *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(APWebProcessVideoAdJSO *)self delegate];
    *&v9 = started;
    *&v10 = volume;
    [delegate2 webProcessVideoAdJSOPlayStarted:v9 volume:v10];
  }
}

- (void)playResumed:(float)resumed atVolume:(float)volume
{
  delegate = [(APWebProcessVideoAdJSO *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(APWebProcessVideoAdJSO *)self delegate];
    *&v9 = resumed;
    *&v10 = volume;
    [delegate2 webProcessVideoAdJSOPlayResumed:v9 volume:v10];
  }
}

- (void)playTimeUpdated:(float)updated atVolume:(float)volume
{
  delegate = [(APWebProcessVideoAdJSO *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(APWebProcessVideoAdJSO *)self delegate];
    *&v9 = updated;
    *&v10 = volume;
    [delegate2 webProcessVideoAdJSOPlayProgressed:v9 volume:v10];
  }
}

- (void)playPaused:(float)paused atVolume:(float)volume
{
  delegate = [(APWebProcessVideoAdJSO *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(APWebProcessVideoAdJSO *)self delegate];
    *&v9 = paused;
    *&v10 = volume;
    [delegate2 webProcessVideoAdJSOPlayPaused:v9 volume:v10];
  }
}

- (void)playCompletedAtVolume:(float)volume
{
  delegate = [(APWebProcessVideoAdJSO *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(APWebProcessVideoAdJSO *)self delegate];
    *&v7 = volume;
    [delegate2 webProcessVideoAdJSOPlayCompletedWithVolume:v7];
  }
}

- (void)volumeChanged:(float)changed playtime:(float)playtime
{
  delegate = [(APWebProcessVideoAdJSO *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(APWebProcessVideoAdJSO *)self delegate];
    *&v9 = changed;
    *&v10 = playtime;
    [delegate2 webProcessVideoAdJSOVolumeChanged:v9 playTime:v10];
  }
}

- (void)volumeMuted:(float)muted
{
  delegate = [(APWebProcessVideoAdJSO *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(APWebProcessVideoAdJSO *)self delegate];
    *&v7 = muted;
    [delegate2 webProcessVideoAdJSOAudioMuted:v7];
  }
}

- (void)volumeUnmuted:(float)unmuted atVolume:(float)volume
{
  delegate = [(APWebProcessVideoAdJSO *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(APWebProcessVideoAdJSO *)self delegate];
    *&v9 = unmuted;
    *&v10 = volume;
    [delegate2 webProcessVideoAdJSOAudioUnmuted:v9 volume:v10];
  }
}

- (void)moreInfoTapped:(float)tapped atVolume:(float)volume
{
  delegate = [(APWebProcessVideoAdJSO *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(APWebProcessVideoAdJSO *)self delegate];
    *&v9 = tapped;
    *&v10 = volume;
    [delegate2 webProcessVideoAdJSOMoreInfoTapped:v9 volume:v10];
  }
}

- (BOOL)shouldVideoAutoPlay
{
  IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
  IsVideoAutoplayEnabled = UIAccessibilityIsVideoAutoplayEnabled();
  v4 = sub_3260();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = objc_opt_class();
    v6 = @"NO";
    if (IsReduceMotionEnabled)
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    v9 = 138478339;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    if (IsVideoAutoplayEnabled)
    {
      v6 = @"YES";
    }

    v13 = 2114;
    v14 = v6;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "[%{private}@] Checking if video should autoplay with values isReduceMotionEnabled: %{public}@, isVideoAutoplayEnabled: %{public}@", &v9, 0x20u);
  }

  return !IsReduceMotionEnabled && IsVideoAutoplayEnabled;
}

- (void)videoTapped:(float)tapped atVolume:(float)volume
{
  delegate = [(APWebProcessVideoAdJSO *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(APWebProcessVideoAdJSO *)self delegate];
    *&v9 = tapped;
    *&v10 = volume;
    [delegate2 webProcessVideoAdJSOVideoTapped:v9 volume:v10];
  }
}

- (void)skipAdTapped:(float)tapped atVolume:(float)volume
{
  delegate = [(APWebProcessVideoAdJSO *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(APWebProcessVideoAdJSO *)self delegate];
    *&v9 = tapped;
    *&v10 = volume;
    [delegate2 webProcessVideoAdJSOSkipAdTapped:v9 volume:v10];
  }
}

- (void)fullScreenTapped:(float)tapped atVolume:(float)volume
{
  delegate = [(APWebProcessVideoAdJSO *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(APWebProcessVideoAdJSO *)self delegate];
    *&v9 = tapped;
    *&v10 = volume;
    [delegate2 webProcessVideoAdJSOFullScreenTapped:v9 volume:v10];
  }
}

- (void)exitFullScreenTapped:(float)tapped atVolume:(float)volume
{
  delegate = [(APWebProcessVideoAdJSO *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(APWebProcessVideoAdJSO *)self delegate];
    *&v9 = tapped;
    *&v10 = volume;
    [delegate2 webProcessVideoAdJSOExitFullScreenTapped:v9 volume:v10];
  }
}

- (void)addEventListener:(id)listener listener:(id)a4
{
  listenerCopy = listener;
  v7 = a4;
  v8 = sub_3260();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *v14 = 138478083;
    *&v14[4] = objc_opt_class();
    *&v14[12] = 2114;
    *&v14[14] = listenerCopy;
    v9 = *&v14[4];
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "[%{private}@] Adding event listener of type: %{public}@", v14, 0x16u);
  }

  v10 = [listenerCopy length];
  if (v7 && v10)
  {
    [(APWebProcessVideoAdJSO *)self lock];
    listenersDictionary = [(APWebProcessVideoAdJSO *)self listenersDictionary];
    v12 = [listenersDictionary objectForKeyedSubscript:listenerCopy];

    if (!v12)
    {
      v12 = +[NSMutableArray array];
      listenersDictionary2 = [(APWebProcessVideoAdJSO *)self listenersDictionary];
      [listenersDictionary2 setObject:v12 forKey:listenerCopy];
    }

    if (([v12 containsObject:{v7, *v14, *&v14[16]}] & 1) == 0)
    {
      [v12 addObject:v7];
    }

    [(APWebProcessVideoAdJSO *)self unlock];
  }
}

- (void)removeEventListener:(id)listener listener:(id)a4
{
  listenerCopy = listener;
  v7 = a4;
  v8 = sub_3260();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v13 = 138478083;
    v14 = objc_opt_class();
    v15 = 2114;
    v16 = listenerCopy;
    v9 = v14;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "[%{private}@] Removing event listener of type: %{public}@", &v13, 0x16u);
  }

  if (listenerCopy)
  {
    v10 = [listenerCopy length];
    if (v7)
    {
      if (v10)
      {
        [(APWebProcessVideoAdJSO *)self lock];
        listenersDictionary = [(APWebProcessVideoAdJSO *)self listenersDictionary];
        v12 = [listenersDictionary objectForKeyedSubscript:listenerCopy];
        [v12 removeObject:v7];

        [(APWebProcessVideoAdJSO *)self unlock];
      }
    }
  }
}

- (void)_callListenersOfContentSizeChange
{
  v3 = sub_3260();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 138478083;
    v22 = objc_opt_class();
    v23 = 2114;
    v24 = @"contentSizeChange";
    v4 = v22;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "[%{private}@] Calling listeners of event %{public}@.", buf, 0x16u);
  }

  [(APWebProcessVideoAdJSO *)self lock];
  listenersDictionary = [(APWebProcessVideoAdJSO *)self listenersDictionary];
  v6 = [listenersDictionary objectForKeyedSubscript:@"contentSizeChange"];
  v7 = [v6 copy];

  [(APWebProcessVideoAdJSO *)self unlock];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * v12);
        v14 = +[NSArray array];
        v15 = [v13 callWithArguments:v14];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }
}

- (APWebProcessVideoAdJSODelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end