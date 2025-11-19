@interface VUIJSBookmarkInterface
- (id)cachedElapsedTimeForReferenceId:(id)a3;
@end

@implementation VUIJSBookmarkInterface

- (id)cachedElapsedTimeForReferenceId:(id)a3
{
  v3 = a3;
  v4 = +[VUIStreamingBookmarkCache sharedInstance];
  v8 = 0;
  [v4 resumeTimeInfoForReferenceID:v3 outAbsoluteResumeTime:&v8 outAbsoluteTimestamp:0 outMainContentRelativeResumeTime:0 outMainContentRelativeTimestamp:0];

  v5 = v8;
  v6 = v8;

  return v5;
}

@end