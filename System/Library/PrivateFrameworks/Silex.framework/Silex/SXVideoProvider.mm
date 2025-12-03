@interface SXVideoProvider
- (SVVideoMetadata)metadata;
- (SXVideoProvider)initWithURL:(id)l;
- (id)loadWithCompletionBlock:(id)block;
- (void)muteStateChanged:(BOOL)changed;
- (void)playbackFailedWithError:(id)error;
- (void)playbackFinished;
- (void)playbackInitiatedWithButtonTapped:(BOOL)tapped;
- (void)playbackPassedQuartile:(unint64_t)quartile;
- (void)playbackPaused;
- (void)playbackResumed;
- (void)playbackStarted;
@end

@implementation SXVideoProvider

- (SXVideoProvider)initWithURL:(id)l
{
  lCopy = l;
  v14.receiver = self;
  v14.super_class = SXVideoProvider;
  v6 = [(SXVideoProvider *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_URL, l);
    v8 = objc_alloc_init(MEMORY[0x1E69CE118]);
    timeline = v7->_timeline;
    v7->_timeline = v8;

    v10 = objc_alloc_init(SXVideoMediaIdentifierGenerator);
    v11 = [(SXVideoMediaIdentifierGenerator *)v10 identifierForURL:lCopy];
    mediaIdentifier = v7->_mediaIdentifier;
    v7->_mediaIdentifier = v11;
  }

  return v7;
}

- (id)loadWithCompletionBlock:(id)block
{
  blockCopy = block;
  v6 = [(SXVideoProvider *)self URL];
  v7 = (*(block + 2))(blockCopy, v6);

  [(SXVideoProvider *)self setMetadata:v7];
  return &__block_literal_global_61;
}

- (void)playbackInitiatedWithButtonTapped:(BOOL)tapped
{
  if (tapped)
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
  mediaIdentifier = [(SXVideoProvider *)self mediaIdentifier];
  [(SXMediaEvent *)v7 setMediaId:mediaIdentifier];

  [(SXMediaEngageEvent *)v7 setMediaPlayMethod:[(SXVideoProvider *)self playMethod]];
  [(SXAnalyticsEvent *)v7 determineEndDate];
  analyticsReporter = [(SXVideoProvider *)self analyticsReporter];
  [analyticsReporter reportEvent:v7];
}

- (void)playbackStarted
{
  v9 = objc_alloc_init(SXMediaEngageEvent);
  [(SXMediaEvent *)v9 setMediaType:2];
  metadata = [(SXVideoProvider *)self metadata];
  [metadata duration];
  [(SXMediaEngageEvent *)v9 setMediaDuration:?];

  metadata2 = [(SXVideoProvider *)self metadata];
  [metadata2 framerate];
  [(SXMediaEngageEvent *)v9 setMediaFrameRate:?];

  [(SXMediaEngageEvent *)v9 setUserAction:1];
  [(SXMediaEvent *)v9 setVideoType:1];
  metadata3 = [(SXVideoProvider *)self metadata];
  -[SXMediaEngageEvent setMuted:](v9, "setMuted:", [metadata3 muted]);

  metadata4 = [(SXVideoProvider *)self metadata];
  [metadata4 volume];
  [(SXMediaEngageEvent *)v9 setVolume:?];

  mediaIdentifier = [(SXVideoProvider *)self mediaIdentifier];
  [(SXMediaEvent *)v9 setMediaId:mediaIdentifier];

  [(SXMediaEngageEvent *)v9 setMediaPlayMethod:[(SXVideoProvider *)self playMethod]];
  [(SXAnalyticsEvent *)v9 determineEndDate];
  analyticsReporter = [(SXVideoProvider *)self analyticsReporter];
  [analyticsReporter reportEvent:v9];
}

- (void)playbackPaused
{
  v12 = objc_alloc_init(SXMediaEngageEvent);
  [(SXMediaEvent *)v12 setMediaType:2];
  metadata = [(SXVideoProvider *)self metadata];
  [metadata duration];
  [(SXMediaEngageEvent *)v12 setMediaDuration:?];

  metadata2 = [(SXVideoProvider *)self metadata];
  [metadata2 framerate];
  [(SXMediaEngageEvent *)v12 setMediaFrameRate:?];

  [(SXMediaEngageEvent *)v12 setUserAction:2];
  metadata3 = [(SXVideoProvider *)self metadata];
  [metadata3 time];
  [(SXMediaEngageEvent *)v12 setMediaPausePosition:v6];

  metadata4 = [(SXVideoProvider *)self metadata];
  [metadata4 timePlayed];
  [(SXMediaEngageEvent *)v12 setMediaTimePlayed:?];

  [(SXMediaEvent *)v12 setVideoType:1];
  metadata5 = [(SXVideoProvider *)self metadata];
  -[SXMediaEngageEvent setMuted:](v12, "setMuted:", [metadata5 muted]);

  metadata6 = [(SXVideoProvider *)self metadata];
  [metadata6 volume];
  [(SXMediaEngageEvent *)v12 setVolume:?];

  mediaIdentifier = [(SXVideoProvider *)self mediaIdentifier];
  [(SXMediaEvent *)v12 setMediaId:mediaIdentifier];

  [(SXAnalyticsEvent *)v12 determineEndDate];
  analyticsReporter = [(SXVideoProvider *)self analyticsReporter];
  [analyticsReporter reportEvent:v12];
}

- (void)playbackResumed
{
  v12 = objc_alloc_init(SXMediaEngageEvent);
  [(SXMediaEvent *)v12 setMediaType:2];
  metadata = [(SXVideoProvider *)self metadata];
  [metadata duration];
  [(SXMediaEngageEvent *)v12 setMediaDuration:?];

  metadata2 = [(SXVideoProvider *)self metadata];
  [metadata2 framerate];
  [(SXMediaEngageEvent *)v12 setMediaFrameRate:?];

  [(SXMediaEngageEvent *)v12 setUserAction:3];
  metadata3 = [(SXVideoProvider *)self metadata];
  [metadata3 time];
  [(SXMediaEngageEvent *)v12 setMediaResumePosition:v6];

  metadata4 = [(SXVideoProvider *)self metadata];
  [metadata4 timePlayed];
  [(SXMediaEngageEvent *)v12 setMediaTimePlayed:?];

  [(SXMediaEvent *)v12 setVideoType:1];
  metadata5 = [(SXVideoProvider *)self metadata];
  -[SXMediaEngageEvent setMuted:](v12, "setMuted:", [metadata5 muted]);

  metadata6 = [(SXVideoProvider *)self metadata];
  [metadata6 volume];
  [(SXMediaEngageEvent *)v12 setVolume:?];

  mediaIdentifier = [(SXVideoProvider *)self mediaIdentifier];
  [(SXMediaEvent *)v12 setMediaId:mediaIdentifier];

  [(SXAnalyticsEvent *)v12 determineEndDate];
  analyticsReporter = [(SXVideoProvider *)self analyticsReporter];
  [analyticsReporter reportEvent:v12];
}

- (void)playbackFinished
{
  v8 = objc_alloc_init(SXMediaEngageCompleteEvent);
  [(SXMediaEvent *)v8 setMediaType:2];
  metadata = [(SXVideoProvider *)self metadata];
  [metadata timePlayed];
  [(SXMediaEngageCompleteEvent *)v8 setMediaTimePlayed:?];

  metadata2 = [(SXVideoProvider *)self metadata];
  [metadata2 duration];
  [(SXMediaEngageCompleteEvent *)v8 setMediaDuration:?];

  metadata3 = [(SXVideoProvider *)self metadata];
  [metadata3 framerate];
  [(SXMediaEngageCompleteEvent *)v8 setMediaFrameRate:?];

  [(SXMediaEvent *)v8 setVideoType:1];
  mediaIdentifier = [(SXVideoProvider *)self mediaIdentifier];
  [(SXMediaEvent *)v8 setMediaId:mediaIdentifier];

  [(SXAnalyticsEvent *)v8 determineEndDate];
  analyticsReporter = [(SXVideoProvider *)self analyticsReporter];
  [analyticsReporter reportEvent:v8];
}

- (void)playbackFailedWithError:(id)error
{
  errorCopy = error;
  v7 = objc_alloc_init(SXMediaEngageEvent);
  [(SXMediaEvent *)v7 setMediaType:2];
  [(SXMediaEngageEvent *)v7 setUserAction:6];
  [(SXMediaEvent *)v7 setVideoType:1];
  [(SXMediaEngageEvent *)v7 setError:errorCopy];

  mediaIdentifier = [(SXVideoProvider *)self mediaIdentifier];
  [(SXMediaEvent *)v7 setMediaId:mediaIdentifier];

  [(SXAnalyticsEvent *)v7 determineEndDate];
  analyticsReporter = [(SXVideoProvider *)self analyticsReporter];
  [analyticsReporter reportEvent:v7];
}

- (void)muteStateChanged:(BOOL)changed
{
  v10 = objc_alloc_init(SXMediaEngageEvent);
  [(SXMediaEvent *)v10 setMediaType:2];
  metadata = [(SXVideoProvider *)self metadata];
  [metadata duration];
  [(SXMediaEngageEvent *)v10 setMediaDuration:?];

  [(SXMediaEngageEvent *)v10 setUserAction:5];
  metadata2 = [(SXVideoProvider *)self metadata];
  [metadata2 timePlayed];
  [(SXMediaEngageEvent *)v10 setMediaTimePlayed:?];

  [(SXMediaEvent *)v10 setVideoType:1];
  metadata3 = [(SXVideoProvider *)self metadata];
  -[SXMediaEngageEvent setMuted:](v10, "setMuted:", [metadata3 muted]);

  metadata4 = [(SXVideoProvider *)self metadata];
  [metadata4 volume];
  [(SXMediaEngageEvent *)v10 setVolume:?];

  mediaIdentifier = [(SXVideoProvider *)self mediaIdentifier];
  [(SXMediaEvent *)v10 setMediaId:mediaIdentifier];

  [(SXAnalyticsEvent *)v10 determineEndDate];
  analyticsReporter = [(SXVideoProvider *)self analyticsReporter];
  [analyticsReporter reportEvent:v10];
}

- (void)playbackPassedQuartile:(unint64_t)quartile
{
  v6 = [[SXVideoQuartileEvent alloc] initWithQuartile:quartile];
  [(SXMediaEvent *)v6 setVideoType:1];
  mediaIdentifier = [(SXVideoProvider *)self mediaIdentifier];
  [(SXMediaEvent *)v6 setMediaId:mediaIdentifier];

  [(SXAnalyticsEvent *)v6 determineEndDate];
  analyticsReporter = [(SXVideoProvider *)self analyticsReporter];
  [analyticsReporter reportEvent:v6];
}

- (SVVideoMetadata)metadata
{
  WeakRetained = objc_loadWeakRetained(&self->_metadata);

  return WeakRetained;
}

@end