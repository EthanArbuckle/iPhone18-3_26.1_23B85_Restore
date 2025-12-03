@interface VUIStreamingBookmark
- (VUIStreamingBookmark)initWithAbsoluteResumeTime:(id)time absoluteTimestamp:(id)timestamp relativeResumeTime:(id)resumeTime relativeBookmarkTimestamp:(id)bookmarkTimestamp;
@end

@implementation VUIStreamingBookmark

- (VUIStreamingBookmark)initWithAbsoluteResumeTime:(id)time absoluteTimestamp:(id)timestamp relativeResumeTime:(id)resumeTime relativeBookmarkTimestamp:(id)bookmarkTimestamp
{
  timeCopy = time;
  timestampCopy = timestamp;
  resumeTimeCopy = resumeTime;
  bookmarkTimestampCopy = bookmarkTimestamp;
  selfCopy = 0;
  if (timeCopy && timestampCopy)
  {
    v25.receiver = self;
    v25.super_class = VUIStreamingBookmark;
    v15 = [(VUIStreamingBookmark *)&v25 init];
    if (v15)
    {
      v16 = [timeCopy copy];
      absoluteResumeTime = v15->_absoluteResumeTime;
      v15->_absoluteResumeTime = v16;

      v18 = [timestampCopy copy];
      absoluteBookmarkTimestamp = v15->_absoluteBookmarkTimestamp;
      v15->_absoluteBookmarkTimestamp = v18;

      v20 = [resumeTimeCopy copy];
      relativeResumeTime = v15->_relativeResumeTime;
      v15->_relativeResumeTime = v20;

      v22 = [bookmarkTimestampCopy copy];
      relativeBookmarkTimestamp = v15->_relativeBookmarkTimestamp;
      v15->_relativeBookmarkTimestamp = v22;
    }

    self = v15;
    selfCopy = self;
  }

  return selfCopy;
}

@end