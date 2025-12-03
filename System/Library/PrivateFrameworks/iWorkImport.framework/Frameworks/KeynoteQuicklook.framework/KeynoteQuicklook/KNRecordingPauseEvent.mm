@interface KNRecordingPauseEvent
- (BOOL)isEqual:(id)equal;
- (KNRecordingPauseEvent)initWithStartTime:(double)time pauseEventType:(int64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)loadFromMessage:(const void *)message unarchiver:(id)unarchiver parentEventTrack:(id)track;
- (void)saveToMessage:(void *)message archiver:(id)archiver;
@end

@implementation KNRecordingPauseEvent

- (KNRecordingPauseEvent)initWithStartTime:(double)time pauseEventType:(int64_t)type
{
  v6.receiver = self;
  v6.super_class = KNRecordingPauseEvent;
  result = [(KNRecordingEvent *)&v6 initWithStartTime:time];
  if (result)
  {
    result->_pauseEventType = type;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_msgSend_allocWithZone_(KNRecordingPauseEvent, a2, zone);
  objc_msgSend_startTime(self, v5, v6);
  v9 = objc_msgSend_pauseEventType(self, v7, v8);

  return MEMORY[0x2821F9670](v4, sel_initWithStartTime_pauseEventType_, v9);
}

- (id)description
{
  v4 = objc_msgSend_pauseEventType(self, a2, v2);
  if (v4 > 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = off_27A698888[v4];
  }

  v6 = MEMORY[0x277CCACA8];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  objc_msgSend_startTime(self, v9, v10);
  v13 = objc_msgSend_stringWithFormat_(v6, v11, @"<%@ %p time=%f pauseEventType=%@>", v8, self, v12, v5);

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v13.receiver = self;
  v13.super_class = KNRecordingPauseEvent;
  if ([(KNRecordingEvent *)&v13 isEqual:equalCopy])
  {
    objc_opt_class();
    v7 = TSUDynamicCast();
    if (v7)
    {
      v8 = objc_msgSend_pauseEventType(self, v5, v6);
      v11 = v8 == objc_msgSend_pauseEventType(v7, v9, v10);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = KNRecordingPauseEvent;
  v3 = [(KNRecordingEvent *)&v7 hash];
  return objc_msgSend_pauseEventType(self, v4, v5) ^ v3;
}

- (void)loadFromMessage:(const void *)message unarchiver:(id)unarchiver parentEventTrack:(id)track
{
  v10.receiver = self;
  v10.super_class = KNRecordingPauseEvent;
  [(KNRecordingEvent *)&v10 loadFromMessage:message unarchiver:unarchiver parentEventTrack:track];
  v7 = &qword_2812EBA30;
  if (*(message + 5))
  {
    v7 = *(message + 5);
  }

  v8 = (*(v7 + 6) - 1);
  if (v8 < 3)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = 0;
  }

  self->_pauseEventType = v9;
}

- (void)saveToMessage:(void *)message archiver:(id)archiver
{
  archiverCopy = archiver;
  v13.receiver = self;
  v13.super_class = KNRecordingPauseEvent;
  [(KNRecordingEvent *)&v13 saveToMessage:message archiver:archiverCopy];
  *(message + 4) |= 4u;
  v9 = *(message + 5);
  if (!v9)
  {
    v10 = *(message + 1);
    if (v10)
    {
      v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
    }

    v9 = sub_275E20FFC(v10);
    *(message + 5) = v9;
  }

  v11 = objc_msgSend_pauseEventType(self, v7, v8);
  if ((v11 - 1) < 3)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  *(v9 + 16) |= 1u;
  *(v9 + 24) = v12;
}

@end