@interface SXVideoProvider
- (SVVideoMetadata)metadata;
- (SXVideoProvider)initWithURL:(id)a3;
- (id)loadWithCompletionBlock:(id)a3;
- (void)muteStateChanged:(BOOL)a3;
- (void)playbackFailedWithError:(id)a3;
- (void)playbackFinished;
- (void)playbackInitiatedWithButtonTapped:(BOOL)a3;
- (void)playbackPassedQuartile:(unint64_t)a3;
- (void)playbackPaused;
- (void)playbackResumed;
- (void)playbackStarted;
@end

@implementation SXVideoProvider

- (SXVideoProvider)initWithURL:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = SXVideoProvider;
  v6 = [(SXVideoProvider *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_URL, a3);
    v8 = objc_alloc_init(MEMORY[0x1E69CE118]);
    timeline = v7->_timeline;
    v7->_timeline = v8;

    v10 = objc_alloc_init(SXVideoMediaIdentifierGenerator);
    v11 = [(SXVideoMediaIdentifierGenerator *)v10 identifierForURL:v5];
    mediaIdentifier = v7->_mediaIdentifier;
    v7->_mediaIdentifier = v11;
  }

  return v7;
}

- (id)loadWithCompletionBlock:(id)a3
{
  v5 = a3;
  v6 = [(SXVideoProvider *)self URL];
  v7 = (*(a3 + 2))(v5, v6);

  [(SXVideoProvider *)self setMetadata:v7];
  return &__block_literal_global_61;
}

- (void)playbackInitiatedWithButtonTapped:(BOOL)a3
{
  if (a3)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  [(SXVideoProvider *)self setPlayMethod:v4];
  v7 = objc_alloc_init(SXMediaEngageEvent);
  [(SXMediaEvent *)v7 setMediaType:2];
  [(SXMediaEngageEvent *)v7 setUserAction:4];
  [(SXMediaEvent *)v7 setVideoType:1];
  v5 = [(SXVideoProvider *)self mediaIdentifier];
  [(SXMediaEvent *)v7 setMediaId:v5];

  [(SXMediaEngageEvent *)v7 setMediaPlayMethod:[(SXVideoProvider *)self playMethod]];
  [(SXAnalyticsEvent *)v7 determineEndDate];
  v6 = [(SXVideoProvider *)self analyticsReporter];
  [v6 reportEvent:v7];
}

- (void)playbackStarted
{
  v9 = objc_alloc_init(SXMediaEngageEvent);
  [(SXMediaEvent *)v9 setMediaType:2];
  v3 = [(SXVideoProvider *)self metadata];
  [v3 duration];
  [(SXMediaEngageEvent *)v9 setMediaDuration:?];

  v4 = [(SXVideoProvider *)self metadata];
  [v4 framerate];
  [(SXMediaEngageEvent *)v9 setMediaFrameRate:?];

  [(SXMediaEngageEvent *)v9 setUserAction:1];
  [(SXMediaEvent *)v9 setVideoType:1];
  v5 = [(SXVideoProvider *)self metadata];
  -[SXMediaEngageEvent setMuted:](v9, "setMuted:", [v5 muted]);

  v6 = [(SXVideoProvider *)self metadata];
  [v6 volume];
  [(SXMediaEngageEvent *)v9 setVolume:?];

  v7 = [(SXVideoProvider *)self mediaIdentifier];
  [(SXMediaEvent *)v9 setMediaId:v7];

  [(SXMediaEngageEvent *)v9 setMediaPlayMethod:[(SXVideoProvider *)self playMethod]];
  [(SXAnalyticsEvent *)v9 determineEndDate];
  v8 = [(SXVideoProvider *)self analyticsReporter];
  [v8 reportEvent:v9];
}

- (void)playbackPaused
{
  v12 = objc_alloc_init(SXMediaEngageEvent);
  [(SXMediaEvent *)v12 setMediaType:2];
  v3 = [(SXVideoProvider *)self metadata];
  [v3 duration];
  [(SXMediaEngageEvent *)v12 setMediaDuration:?];

  v4 = [(SXVideoProvider *)self metadata];
  [v4 framerate];
  [(SXMediaEngageEvent *)v12 setMediaFrameRate:?];

  [(SXMediaEngageEvent *)v12 setUserAction:2];
  v5 = [(SXVideoProvider *)self metadata];
  [v5 time];
  [(SXMediaEngageEvent *)v12 setMediaPausePosition:v6];

  v7 = [(SXVideoProvider *)self metadata];
  [v7 timePlayed];
  [(SXMediaEngageEvent *)v12 setMediaTimePlayed:?];

  [(SXMediaEvent *)v12 setVideoType:1];
  v8 = [(SXVideoProvider *)self metadata];
  -[SXMediaEngageEvent setMuted:](v12, "setMuted:", [v8 muted]);

  v9 = [(SXVideoProvider *)self metadata];
  [v9 volume];
  [(SXMediaEngageEvent *)v12 setVolume:?];

  v10 = [(SXVideoProvider *)self mediaIdentifier];
  [(SXMediaEvent *)v12 setMediaId:v10];

  [(SXAnalyticsEvent *)v12 determineEndDate];
  v11 = [(SXVideoProvider *)self analyticsReporter];
  [v11 reportEvent:v12];
}

- (void)playbackResumed
{
  v12 = objc_alloc_init(SXMediaEngageEvent);
  [(SXMediaEvent *)v12 setMediaType:2];
  v3 = [(SXVideoProvider *)self metadata];
  [v3 duration];
  [(SXMediaEngageEvent *)v12 setMediaDuration:?];

  v4 = [(SXVideoProvider *)self metadata];
  [v4 framerate];
  [(SXMediaEngageEvent *)v12 setMediaFrameRate:?];

  [(SXMediaEngageEvent *)v12 setUserAction:3];
  v5 = [(SXVideoProvider *)self metadata];
  [v5 time];
  [(SXMediaEngageEvent *)v12 setMediaResumePosition:v6];

  v7 = [(SXVideoProvider *)self metadata];
  [v7 timePlayed];
  [(SXMediaEngageEvent *)v12 setMediaTimePlayed:?];

  [(SXMediaEvent *)v12 setVideoType:1];
  v8 = [(SXVideoProvider *)self metadata];
  -[SXMediaEngageEvent setMuted:](v12, "setMuted:", [v8 muted]);

  v9 = [(SXVideoProvider *)self metadata];
  [v9 volume];
  [(SXMediaEngageEvent *)v12 setVolume:?];

  v10 = [(SXVideoProvider *)self mediaIdentifier];
  [(SXMediaEvent *)v12 setMediaId:v10];

  [(SXAnalyticsEvent *)v12 determineEndDate];
  v11 = [(SXVideoProvider *)self analyticsReporter];
  [v11 reportEvent:v12];
}

- (void)playbackFinished
{
  v8 = objc_alloc_init(SXMediaEngageCompleteEvent);
  [(SXMediaEvent *)v8 setMediaType:2];
  v3 = [(SXVideoProvider *)self metadata];
  [v3 timePlayed];
  [(SXMediaEngageCompleteEvent *)v8 setMediaTimePlayed:?];

  v4 = [(SXVideoProvider *)self metadata];
  [v4 duration];
  [(SXMediaEngageCompleteEvent *)v8 setMediaDuration:?];

  v5 = [(SXVideoProvider *)self metadata];
  [v5 framerate];
  [(SXMediaEngageCompleteEvent *)v8 setMediaFrameRate:?];

  [(SXMediaEvent *)v8 setVideoType:1];
  v6 = [(SXVideoProvider *)self mediaIdentifier];
  [(SXMediaEvent *)v8 setMediaId:v6];

  [(SXAnalyticsEvent *)v8 determineEndDate];
  v7 = [(SXVideoProvider *)self analyticsReporter];
  [v7 reportEvent:v8];
}

- (void)playbackFailedWithError:(id)a3
{
  v4 = a3;
  v7 = objc_alloc_init(SXMediaEngageEvent);
  [(SXMediaEvent *)v7 setMediaType:2];
  [(SXMediaEngageEvent *)v7 setUserAction:6];
  [(SXMediaEvent *)v7 setVideoType:1];
  [(SXMediaEngageEvent *)v7 setError:v4];

  v5 = [(SXVideoProvider *)self mediaIdentifier];
  [(SXMediaEvent *)v7 setMediaId:v5];

  [(SXAnalyticsEvent *)v7 determineEndDate];
  v6 = [(SXVideoProvider *)self analyticsReporter];
  [v6 reportEvent:v7];
}

- (void)muteStateChanged:(BOOL)a3
{
  v10 = objc_alloc_init(SXMediaEngageEvent);
  [(SXMediaEvent *)v10 setMediaType:2];
  v4 = [(SXVideoProvider *)self metadata];
  [v4 duration];
  [(SXMediaEngageEvent *)v10 setMediaDuration:?];

  [(SXMediaEngageEvent *)v10 setUserAction:5];
  v5 = [(SXVideoProvider *)self metadata];
  [v5 timePlayed];
  [(SXMediaEngageEvent *)v10 setMediaTimePlayed:?];

  [(SXMediaEvent *)v10 setVideoType:1];
  v6 = [(SXVideoProvider *)self metadata];
  -[SXMediaEngageEvent setMuted:](v10, "setMuted:", [v6 muted]);

  v7 = [(SXVideoProvider *)self metadata];
  [v7 volume];
  [(SXMediaEngageEvent *)v10 setVolume:?];

  v8 = [(SXVideoProvider *)self mediaIdentifier];
  [(SXMediaEvent *)v10 setMediaId:v8];

  [(SXAnalyticsEvent *)v10 determineEndDate];
  v9 = [(SXVideoProvider *)self analyticsReporter];
  [v9 reportEvent:v10];
}

- (void)playbackPassedQuartile:(unint64_t)a3
{
  v6 = [[SXVideoQuartileEvent alloc] initWithQuartile:a3];
  [(SXMediaEvent *)v6 setVideoType:1];
  v4 = [(SXVideoProvider *)self mediaIdentifier];
  [(SXMediaEvent *)v6 setMediaId:v4];

  [(SXAnalyticsEvent *)v6 determineEndDate];
  v5 = [(SXVideoProvider *)self analyticsReporter];
  [v5 reportEvent:v6];
}

- (SVVideoMetadata)metadata
{
  WeakRetained = objc_loadWeakRetained(&self->_metadata);

  return WeakRetained;
}

@end