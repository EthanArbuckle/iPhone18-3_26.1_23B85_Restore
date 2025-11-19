@interface _PXVideoPlaybackCPAnalyticsEndpoint
- (void)sendPayload:(_PXVideoPlaybackReporterPayload *)a3;
@end

@implementation _PXVideoPlaybackCPAnalyticsEndpoint

- (void)sendPayload:(_PXVideoPlaybackReporterPayload *)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (a3->var3 == 1)
  {
    signpost = self->_signpost;
    if (signpost)
    {
      v5 = MEMORY[0x1E6991F28];
      v6 = *MEMORY[0x1E6991C98];
      v8 = *MEMORY[0x1E6991E40];
      v9[0] = @"com.apple.photos.CPAnalytics.videoSessionPlaybackLatency";
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
      [v5 endSignpost:signpost forEventName:v6 withPayload:v7];

      self->_signpost = 0;
    }
  }
}

@end