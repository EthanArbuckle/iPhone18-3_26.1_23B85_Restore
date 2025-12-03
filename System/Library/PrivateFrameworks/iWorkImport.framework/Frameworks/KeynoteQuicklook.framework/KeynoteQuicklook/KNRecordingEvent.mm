@interface KNRecordingEvent
- (BOOL)isEqual:(id)equal;
- (KNRecordingEvent)initWithMessage:(const void *)message unarchiver:(id)unarchiver parentEventTrack:(id)track;
- (KNRecordingEvent)initWithStartTime:(double)time;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)recordingEventByAddingTimeOffset:(double)offset;
- (unint64_t)hash;
- (void)saveToMessage:(void *)message archiver:(id)archiver;
@end

@implementation KNRecordingEvent

- (KNRecordingEvent)initWithStartTime:(double)time
{
  v5.receiver = self;
  v5.super_class = KNRecordingEvent;
  result = [(KNRecordingEvent *)&v5 init];
  if (result)
  {
    result->_startTime = time;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_msgSend_allocWithZone_(KNRecordingEvent, a2, zone);
  objc_msgSend_startTime(self, v5, v6);

  return MEMORY[0x2821F9670](v4, sel_initWithStartTime_, v7);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  objc_msgSend_startTime(self, v6, v7);
  v10 = objc_msgSend_stringWithFormat_(v3, v8, @"<%@: %p time=%f>", v5, self, v9);

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    v7 = TSUDynamicCast();
    if (v7)
    {
      objc_msgSend_startTime(self, v5, v6);
      v9 = v8;
      objc_msgSend_startTime(v7, v10, v11);
      v13 = v9 == v12;
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = MEMORY[0x277CCABB0];
  objc_msgSend_startTime(self, a2, v2);
  v6 = objc_msgSend_numberWithDouble_(v3, v4, v5);
  v9 = objc_msgSend_hash(v6, v7, v8);

  return v9;
}

- (id)recordingEventByAddingTimeOffset:(double)offset
{
  v5 = objc_msgSend_copy(self, a2, v3);
  v5[1] = v5[1] + offset;

  return v5;
}

- (KNRecordingEvent)initWithMessage:(const void *)message unarchiver:(id)unarchiver parentEventTrack:(id)track
{
  unarchiverCopy = unarchiver;
  trackCopy = track;
  v14.receiver = self;
  v14.super_class = KNRecordingEvent;
  v10 = [(KNRecordingEvent *)&v14 init];
  v12 = v10;
  if (v10)
  {
    objc_msgSend_loadFromMessage_unarchiver_parentEventTrack_(v10, v11, message, unarchiverCopy, trackCopy);
  }

  return v12;
}

- (void)saveToMessage:(void *)message archiver:(id)archiver
{
  objc_msgSend_startTime(self, a2, message, archiver);
  *(message + 4) |= 0x10u;
  *(message + 7) = v5;
}

@end