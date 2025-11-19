@interface KNRecordingEvent
- (BOOL)isEqual:(id)a3;
- (KNRecordingEvent)initWithMessage:(const void *)a3 unarchiver:(id)a4 parentEventTrack:(id)a5;
- (KNRecordingEvent)initWithStartTime:(double)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)recordingEventByAddingTimeOffset:(double)a3;
- (unint64_t)hash;
- (void)saveToMessage:(void *)a3 archiver:(id)a4;
@end

@implementation KNRecordingEvent

- (KNRecordingEvent)initWithStartTime:(double)a3
{
  v5.receiver = self;
  v5.super_class = KNRecordingEvent;
  result = [(KNRecordingEvent *)&v5 init];
  if (result)
  {
    result->_startTime = a3;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_msgSend_allocWithZone_(KNRecordingEvent, a2, a3);
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
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

- (id)recordingEventByAddingTimeOffset:(double)a3
{
  v5 = objc_msgSend_copy(self, a2, v3);
  v5[1] = v5[1] + a3;

  return v5;
}

- (KNRecordingEvent)initWithMessage:(const void *)a3 unarchiver:(id)a4 parentEventTrack:(id)a5
{
  v8 = a4;
  v9 = a5;
  v14.receiver = self;
  v14.super_class = KNRecordingEvent;
  v10 = [(KNRecordingEvent *)&v14 init];
  v12 = v10;
  if (v10)
  {
    objc_msgSend_loadFromMessage_unarchiver_parentEventTrack_(v10, v11, a3, v8, v9);
  }

  return v12;
}

- (void)saveToMessage:(void *)a3 archiver:(id)a4
{
  objc_msgSend_startTime(self, a2, a3, a4);
  *(a3 + 4) |= 0x10u;
  *(a3 + 7) = v5;
}

@end