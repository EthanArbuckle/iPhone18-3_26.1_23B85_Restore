@interface PXVideoPlaybackReporter
- (PXVideoPlaybackReporter)init;
- (PXVideoPlaybackReporter)initWithIdentifier:(id)a3 CPAnalysticsEndpoint:(BOOL)a4;
- (id)description;
- (void)_sendPayloadToEndpointIfNeeded:(id)a3;
- (void)_sendPayloadToEndpointsIfNeeded;
- (void)addEndpoint:(id)a3;
- (void)addEndpointWithPlayerItem:(id)a3;
- (void)reportAVAssetCreated;
- (void)reportPlaybackAbandoned;
- (void)reportPlaybackBegan;
- (void)reportPlaybackRequestedWithPriority:(int64_t)a3;
- (void)setState:(int64_t)a3;
@end

@implementation PXVideoPlaybackReporter

- (void)addEndpointWithPlayerItem:(id)a3
{
  v4 = a3;
  v5 = [[PXVideoPlaybackReporterAVPlayerItemEndpoint alloc] initWithPlayerItem:v4];

  [(PXVideoPlaybackReporter *)self addEndpoint:v5];
}

- (void)_sendPayloadToEndpointIfNeeded:(id)a3
{
  v5 = a3;
  if ([(PXVideoPlaybackReporter *)self isStateFinal])
  {
    [(PXVideoPlaybackReporter *)self startDate];

    [(PXVideoPlaybackReporter *)self endDate];
    v6 = [(PXVideoPlaybackReporter *)self endDate];
    v7 = [(PXVideoPlaybackReporter *)self startDate];
    [v6 timeIntervalSinceDate:v7];
    v9 = v8;

    v10 = [(PXVideoPlaybackReporter *)self assetCreationDate];
    v11 = [(PXVideoPlaybackReporter *)self startDate];
    [v10 timeIntervalSinceDate:v11];
    v13 = v12;

    v14 = [(PXVideoPlaybackReporter *)self priority];
    v15 = [(PXVideoPlaybackReporter *)self state];
    if (v15 == 2)
    {
      v16 = 1;
    }

    else if (v15 == 3)
    {
      v16 = 2;
    }

    else
    {
      if (v15 < 2)
      {
        v17 = [MEMORY[0x1E696AAA8] currentHandler];
        [v17 handleFailureInMethod:a2 object:self file:@"PXVideoPlaybackReporter.m" lineNumber:185 description:@"Code which should be unreachable has been reached"];

        abort();
      }

      v16 = 0;
    }

    v18[0] = llround(v9 * 1000.0);
    v18[1] = llround(v13 * 1000.0);
    v18[2] = v14;
    v18[3] = v16;
    [v5 sendPayload:v18];
  }
}

- (void)_sendPayloadToEndpointsIfNeeded
{
  v15 = *MEMORY[0x1E69E9840];
  if ([(PXVideoPlaybackReporter *)self isStateFinal])
  {
    os_unfair_lock_lock(&self->_endpointsLock);
    v3 = [(PXVideoPlaybackReporter *)self endpoints];
    v4 = [v3 copy];

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
    v3 = [MEMORY[0x1E695DF00] date];
    [(PXVideoPlaybackReporter *)self setEndDate:v3];

    [(PXVideoPlaybackReporter *)self setState:3];
  }
}

- (void)reportPlaybackBegan
{
  if ([(PXVideoPlaybackReporter *)self state]== 1)
  {
    v3 = [MEMORY[0x1E695DF00] date];
    [(PXVideoPlaybackReporter *)self setEndDate:v3];

    [(PXVideoPlaybackReporter *)self setState:2];
  }
}

- (void)reportAVAssetCreated
{
  if ([(PXVideoPlaybackReporter *)self state]== 1)
  {
    v3 = [MEMORY[0x1E695DF00] date];
    [(PXVideoPlaybackReporter *)self setAssetCreationDate:v3];
  }
}

- (void)reportPlaybackRequestedWithPriority:(int64_t)a3
{
  if (![(PXVideoPlaybackReporter *)self state])
  {
    v5 = [MEMORY[0x1E695DF00] date];
    [(PXVideoPlaybackReporter *)self setStartDate:v5];

    [(PXVideoPlaybackReporter *)self setPriority:a3];
    [(PXVideoPlaybackReporter *)self setState:1];
    v6 = [(PXVideoPlaybackReporter *)self cpAnalyticsEndpoint];
    [v6 playbackRequested];
  }
}

- (void)setState:(int64_t)a3
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_state != a3)
  {
    self->_state = a3;
  }

  [(PXVideoPlaybackReporter *)self _sendPayloadToEndpointsIfNeeded];
  v4 = PLVideoPlaybackGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(PXVideoPlaybackReporter *)self identifier];
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = self;
    _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEFAULT, "[VideoPlaybackReporting] %@: Video playback reporting state changed: %@", &v6, 0x16u);
  }
}

- (void)addEndpoint:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLVideoPlaybackGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(PXVideoPlaybackReporter *)self identifier];
    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "[VideoPlaybackReporting] %@: Adding video playback reporter endpoint: %@", &v8, 0x16u);
  }

  v7 = [(PXVideoPlaybackReporter *)self identifier];
  [v4 setLoggingIdentifier:v7];

  os_unfair_lock_lock(&self->_endpointsLock);
  [(NSMutableArray *)self->_endpoints addObject:v4];
  os_unfair_lock_unlock(&self->_endpointsLock);
  [(PXVideoPlaybackReporter *)self _sendPayloadToEndpointIfNeeded:v4];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PXVideoPlaybackReporter *)self identifier];
  v7 = [(PXVideoPlaybackReporter *)self state];
  if ((v7 - 1) > 2)
  {
    v8 = @"Unknown";
  }

  else
  {
    v8 = off_1E774A428[v7 - 1];
  }

  v9 = [v3 initWithFormat:@"<%@ %p; %@; State: %@>", v5, self, v6, v8];

  return v9;
}

- (PXVideoPlaybackReporter)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXVideoPlaybackReporter.m" lineNumber:89 description:{@"%s is not available as initializer", "-[PXVideoPlaybackReporter init]"}];

  abort();
}

- (PXVideoPlaybackReporter)initWithIdentifier:(id)a3 CPAnalysticsEndpoint:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v15.receiver = self;
  v15.super_class = PXVideoPlaybackReporter;
  v7 = [(PXVideoPlaybackReporter *)&v15 init];
  if (v7)
  {
    v8 = [v6 copy];
    identifier = v7->_identifier;
    v7->_identifier = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    endpoints = v7->_endpoints;
    v7->_endpoints = v10;

    v7->_endpointsLock._os_unfair_lock_opaque = 0;
    if (v4)
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