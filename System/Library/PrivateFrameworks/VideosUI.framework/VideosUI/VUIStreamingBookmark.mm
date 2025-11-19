@interface VUIStreamingBookmark
- (VUIStreamingBookmark)initWithAbsoluteResumeTime:(id)a3 absoluteTimestamp:(id)a4 relativeResumeTime:(id)a5 relativeBookmarkTimestamp:(id)a6;
@end

@implementation VUIStreamingBookmark

- (VUIStreamingBookmark)initWithAbsoluteResumeTime:(id)a3 absoluteTimestamp:(id)a4 relativeResumeTime:(id)a5 relativeBookmarkTimestamp:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = 0;
  if (v10 && v11)
  {
    v25.receiver = self;
    v25.super_class = VUIStreamingBookmark;
    v15 = [(VUIStreamingBookmark *)&v25 init];
    if (v15)
    {
      v16 = [v10 copy];
      absoluteResumeTime = v15->_absoluteResumeTime;
      v15->_absoluteResumeTime = v16;

      v18 = [v11 copy];
      absoluteBookmarkTimestamp = v15->_absoluteBookmarkTimestamp;
      v15->_absoluteBookmarkTimestamp = v18;

      v20 = [v12 copy];
      relativeResumeTime = v15->_relativeResumeTime;
      v15->_relativeResumeTime = v20;

      v22 = [v13 copy];
      relativeBookmarkTimestamp = v15->_relativeBookmarkTimestamp;
      v15->_relativeBookmarkTimestamp = v22;
    }

    self = v15;
    v14 = self;
  }

  return v14;
}

@end