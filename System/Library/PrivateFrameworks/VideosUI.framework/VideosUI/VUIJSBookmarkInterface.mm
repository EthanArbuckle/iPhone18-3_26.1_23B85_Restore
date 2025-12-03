@interface VUIJSBookmarkInterface
- (id)cachedElapsedTimeForReferenceId:(id)id;
@end

@implementation VUIJSBookmarkInterface

- (id)cachedElapsedTimeForReferenceId:(id)id
{
  idCopy = id;
  v4 = +[VUIStreamingBookmarkCache sharedInstance];
  v8 = 0;
  [v4 resumeTimeInfoForReferenceID:idCopy outAbsoluteResumeTime:&v8 outAbsoluteTimestamp:0 outMainContentRelativeResumeTime:0 outMainContentRelativeTimestamp:0];

  v5 = v8;
  v6 = v8;

  return v5;
}

@end