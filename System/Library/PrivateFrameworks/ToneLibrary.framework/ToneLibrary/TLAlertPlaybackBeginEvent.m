@interface TLAlertPlaybackBeginEvent
- (BOOL)isEqual:(id)a3;
- (id)_initWithAudioSessionReporterID:(int64_t)a3 isForMusicPlayback:(BOOL)a4;
- (id)description;
@end

@implementation TLAlertPlaybackBeginEvent

- (id)_initWithAudioSessionReporterID:(int64_t)a3 isForMusicPlayback:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = TLAlertPlaybackBeginEvent;
  result = [(TLAlertPlaybackBeginEvent *)&v7 init];
  if (result)
  {
    *(result + 2) = a3;
    *(result + 8) = a4;
  }

  return result;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@: %p", v5, self];

  [v6 appendFormat:@"; audioSessionReporterID = %lld", self->_audioSessionReporterID];
  if (self->_forMusicPlayback)
  {
    [v6 appendFormat:@"; isForMusicPlayback = YES"];
  }

  [v6 appendString:@">"];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_audioSessionReporterID == v4->_audioSessionReporterID && self->_forMusicPlayback == v4->_forMusicPlayback;
  }

  return v5;
}

@end