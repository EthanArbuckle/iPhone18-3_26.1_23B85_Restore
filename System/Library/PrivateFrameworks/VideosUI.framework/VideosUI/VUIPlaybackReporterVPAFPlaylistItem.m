@interface VUIPlaybackReporterVPAFPlaylistItem
- (NSString)description;
- (VUIPlaybackReporterVPAFPlaylistItem)initWithPosition:(unint64_t)a3 duration:(unint64_t)a4 eventData:(id)a5;
- (_NSRange)timeRange;
@end

@implementation VUIPlaybackReporterVPAFPlaylistItem

- (VUIPlaybackReporterVPAFPlaylistItem)initWithPosition:(unint64_t)a3 duration:(unint64_t)a4 eventData:(id)a5
{
  v15[1] = *MEMORY[0x1E69E9840];
  v8 = a5;
  v14.receiver = self;
  v14.super_class = VUIPlaybackReporterVPAFPlaylistItem;
  v9 = [(VUIPlaybackReporterVPAFPlaylistItem *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_startOverallPosition = a3;
    v9->_duration = a4;
    if (a4)
    {
      v9->_timeRange.location = a3;
      v9->_timeRange.length = a4;
    }

    if (v8)
    {
      v15[0] = v8;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
      eventData = v10->_eventData;
      v10->_eventData = v11;
    }
  }

  return v10;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = VUIPlaybackReporterVPAFPlaylistItem;
  v4 = [(VUIPlaybackReporterVPAFPlaylistItem *)&v9 description];
  v5 = NSStringFromRange(self->_timeRange);
  v6 = [(NSArray *)self->_eventData firstObject];
  v7 = [v3 stringWithFormat:@"%@ range:%@ data:%@", v4, v5, v6];

  return v7;
}

- (_NSRange)timeRange
{
  length = self->_timeRange.length;
  location = self->_timeRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end