@interface PXVideoPlaybackReporter
- (PXVideoPlaybackReporter)init;
- (PXVideoPlaybackReporter)initWithIdentifier:(id)identifier CPAnalysticsEndpoint:(BOOL)endpoint;
- (id)description;
- (void)_sendPayloadToEndpointIfNeeded:(id)needed;
- (void)_sendPayloadToEndpointsIfNeeded;
- (void)addEndpoint:(id)endpoint;
- (void)addEndpointWithPlayerItem:(id)item;
- (void)reportAVAssetCreated;
- (void)reportPlaybackAbandoned;
- (void)reportPlaybackBegan;
- (void)reportPlaybackRequestedWithPriority:(int64_t)priority;
- (void)setState:(int64_t)state;
@end

@implementation PXVideoPlaybackReporter

- (void)addEndpointWithPlayerItem:(id)item
{
  itemCopy = item;
  v5 = [[PXVideoPlaybackReporterAVPlayerItemEndpoint alloc] initWithPlayerItem:itemCopy];

  [(PXVideoPlaybackReporter *)self addEndpoint:v5];
}

- (void)_sendPayloadToEndpointIfNeeded:(id)needed
{
  neededCopy = needed;
  if ([(PXVideoPlaybackReporter *)self isStateFinal])
  {
    [(PXVideoPlaybackReporter *)self startDate];

    [(PXVideoPlaybackReporter *)self endDate];
    endDate = [(PXVideoPlaybackReporter *)self endDate];
    startDate = [(PXVideoPlaybackReporter *)self startDate];
    [endDate timeIntervalSinceDate:startDate];
    v9 = v8;

    assetCreationDate = [(PXVideoPlaybackReporter *)self assetCreationDate];
    startDate2 = [(PXVideoPlaybackReporter *)self startDate];
    [assetCreationDate timeIntervalSinceDate:startDate2];
    v13 = v12;

    priority = [(PXVideoPlaybackReporter *)self priority];
    state = [(PXVideoPlaybackReporter *)self state];
    if (state == 2)
    {
      v16 = 1;
    }

    else if (state == 3)
    {
      v16 = 2;
    }

    else
    {
      if (state < 2)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PXVideoPlaybackReporter.m" lineNumber:185 description:@"Code which should be unreachable has been reached"];

        abort();
      }

      v16 = 0;
    }

    v18[0] = llround(v9 * 1000.0);
    v18[1] = llround(v13 * 1000.0);
    v18[2] = priority;
    v18[3] = v16;
    [neededCopy sendPayload:v18];
  }
}

- (void)_sendPayloadToEndpointsIfNeeded
{
  v15 = *MEMORY[0x1E69E9840];
  if ([(PXVideoPlaybackReporter *)self isStateFinal])
  {
    os_unfair_lock_lock(&self->_endpointsLock);
    endpoints = [(PXVideoPlaybackReporter *)self endpoints];
    v4 = [endpoints copy];

    os_unfair_lock_unlock(&self->_endpointsLock);
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [(PXVideoPlaybackReporter *)self _sendPayloadToEndpointIfNeeded:*(*(&v10 + 1) + 8 * v9++), v10];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)reportPlaybackAbandoned
{
  if ([(PXVideoPlaybackReporter *)self state]== 1)
  {
    date = [MEMORY[0x1E695DF00] date];
    [(PXVideoPlaybackReporter *)self setEndDate:date];

    [(PXVideoPlaybackReporter *)self setState:3];
  }
}

- (void)reportPlaybackBegan
{
  if ([(PXVideoPlaybackReporter *)self state]== 1)
  {
    date = [MEMORY[0x1E695DF00] date];
    [(PXVideoPlaybackReporter *)self setEndDate:date];

    [(PXVideoPlaybackReporter *)self setState:2];
  }
}

- (void)reportAVAssetCreated
{
  if ([(PXVideoPlaybackReporter *)self state]== 1)
  {
    date = [MEMORY[0x1E695DF00] date];
    [(PXVideoPlaybackReporter *)self setAssetCreationDate:date];
  }
}

- (void)reportPlaybackRequestedWithPriority:(int64_t)priority
{
  if (![(PXVideoPlaybackReporter *)self state])
  {
    date = [MEMORY[0x1E695DF00] date];
    [(PXVideoPlaybackReporter *)self setStartDate:date];

    [(PXVideoPlaybackReporter *)self setPriority:priority];
    [(PXVideoPlaybackReporter *)self setState:1];
    cpAnalyticsEndpoint = [(PXVideoPlaybackReporter *)self cpAnalyticsEndpoint];
    [cpAnalyticsEndpoint playbackRequested];
  }
}

- (void)setState:(int64_t)state
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_state != state)
  {
    self->_state = state;
  }

  [(PXVideoPlaybackReporter *)self _sendPayloadToEndpointsIfNeeded];
  v4 = PLVideoPlaybackGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [(PXVideoPlaybackReporter *)self identifier];
    v6 = 138412546;
    v7 = identifier;
    v8 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEFAULT, "[VideoPlaybackReporting] %@: Video playback reporting state changed: %@", &v6, 0x16u);
  }
}

- (void)addEndpoint:(id)endpoint
{
  v12 = *MEMORY[0x1E69E9840];
  endpointCopy = endpoint;
  v5 = PLVideoPlaybackGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [(PXVideoPlaybackReporter *)self identifier];
    v8 = 138412546;
    v9 = identifier;
    v10 = 2112;
    v11 = endpointCopy;
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "[VideoPlaybackReporting] %@: Adding video playback reporter endpoint: %@", &v8, 0x16u);
  }

  identifier2 = [(PXVideoPlaybackReporter *)self identifier];
  [endpointCopy setLoggingIdentifier:identifier2];

  os_unfair_lock_lock(&self->_endpointsLock);
  [(NSMutableArray *)self->_endpoints addObject:endpointCopy];
  os_unfair_lock_unlock(&self->_endpointsLock);
  [(PXVideoPlaybackReporter *)self _sendPayloadToEndpointIfNeeded:endpointCopy];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  identifier = [(PXVideoPlaybackReporter *)self identifier];
  state = [(PXVideoPlaybackReporter *)self state];
  if ((state - 1) > 2)
  {
    v8 = @"Unknown";
  }

  else
  {
    v8 = off_1E774A428[state - 1];
  }

  v9 = [v3 initWithFormat:@"<%@ %p; %@; State: %@>", v5, self, identifier, v8];

  return v9;
}

- (PXVideoPlaybackReporter)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXVideoPlaybackReporter.m" lineNumber:89 description:{@"%s is not available as initializer", "-[PXVideoPlaybackReporter init]"}];

  abort();
}

- (PXVideoPlaybackReporter)initWithIdentifier:(id)identifier CPAnalysticsEndpoint:(BOOL)endpoint
{
  endpointCopy = endpoint;
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = PXVideoPlaybackReporter;
  v7 = [(PXVideoPlaybackReporter *)&v15 init];
  if (v7)
  {
    v8 = [identifierCopy copy];
    identifier = v7->_identifier;
    v7->_identifier = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    endpoints = v7->_endpoints;
    v7->_endpoints = v10;

    v7->_endpointsLock._os_unfair_lock_opaque = 0;
    if (endpointCopy)
    {
      v12 = objc_alloc_init(_PXVideoPlaybackCPAnalyticsEndpoint);
      cpAnalyticsEndpoint = v7->_cpAnalyticsEndpoint;
      v7->_cpAnalyticsEndpoint = v12;

      [(PXVideoPlaybackReporter *)v7 addEndpoint:v7->_cpAnalyticsEndpoint];
    }
  }

  return v7;
}

@end