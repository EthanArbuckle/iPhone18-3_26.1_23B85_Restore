@interface KNRecordingLaserEvent
- (BOOL)isEqual:(id)equal;
- (CGPoint)unitLocation;
- (KNRecordingLaserEvent)initWithStartTime:(double)time unitLocation:(CGPoint)location;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)loadFromMessage:(const void *)message unarchiver:(id)unarchiver parentEventTrack:(id)track;
- (void)saveToMessage:(void *)message archiver:(id)archiver;
@end

@implementation KNRecordingLaserEvent

- (KNRecordingLaserEvent)initWithStartTime:(double)time unitLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  v7.receiver = self;
  v7.super_class = KNRecordingLaserEvent;
  result = [(KNRecordingEvent *)&v7 initWithStartTime:time];
  if (result)
  {
    result->_unitLocation.x = x;
    result->_unitLocation.y = y;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_msgSend_allocWithZone_(KNRecordingLaserEvent, a2, zone);
  objc_msgSend_startTime(self, v5, v6);
  objc_msgSend_unitLocation(self, v7, v8);

  return MEMORY[0x2821F9670](v4, sel_initWithStartTime_unitLocation_, v9);
}

- (id)description
{
  objc_msgSend_unitLocation(self, a2, v2);
  v5 = v4;
  v7 = v6;
  v8 = MEMORY[0x277CCACA8];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  objc_msgSend_startTime(self, v11, v12);
  v15 = objc_msgSend_stringWithFormat_(v8, v13, @"<%@: %p time=%f unitPoint={%f, %f}>", v10, self, v14, v5, v7);

  return v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v18.receiver = self;
  v18.super_class = KNRecordingLaserEvent;
  if ([(KNRecordingEvent *)&v18 isEqual:equalCopy])
  {
    objc_opt_class();
    v7 = TSUDynamicCast();
    if (v7)
    {
      objc_msgSend_unitLocation(self, v5, v6);
      v9 = v8;
      v11 = v10;
      objc_msgSend_unitLocation(v7, v12, v13);
      v16 = v11 == v15 && v9 == v14;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (unint64_t)hash
{
  v11.receiver = self;
  v11.super_class = KNRecordingLaserEvent;
  v3 = [(KNRecordingEvent *)&v11 hash];
  objc_msgSend_unitLocation(self, v4, v5);
  DictionaryRepresentation = CGPointCreateDictionaryRepresentation(v12);
  v9 = objc_msgSend_hash(DictionaryRepresentation, v7, v8);

  return v9 ^ v3;
}

- (CGPoint)unitLocation
{
  x = self->_unitLocation.x;
  y = self->_unitLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)loadFromMessage:(const void *)message unarchiver:(id)unarchiver parentEventTrack:(id)track
{
  v9.receiver = self;
  v9.super_class = KNRecordingLaserEvent;
  [(KNRecordingEvent *)&v9 loadFromMessage:message unarchiver:unarchiver parentEventTrack:track];
  v7 = *(message + 4);
  if (!v7)
  {
    v7 = &qword_2812EBA08;
  }

  if ((v7[2] & 2) != 0)
  {
    v8 = vcvtq_f64_f32(*(v7[4] + 24));
  }

  else
  {
    v8 = vdupq_n_s64(0x7FF8000000000000uLL);
  }

  self->_unitLocation = v8;
}

- (void)saveToMessage:(void *)message archiver:(id)archiver
{
  archiverCopy = archiver;
  v19.receiver = self;
  v19.super_class = KNRecordingLaserEvent;
  [(KNRecordingEvent *)&v19 saveToMessage:message archiver:archiverCopy];
  *(message + 4) |= 2u;
  v9 = *(message + 4);
  if (!v9)
  {
    v10 = *(message + 1);
    if (v10)
    {
      v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
    }

    v9 = sub_275E20F30(v10);
    *(message + 4) = v9;
  }

  objc_msgSend_unitLocation(self, v7, v8);
  v12 = v11;
  v14 = v13;
  *(v9 + 16) |= 2u;
  v15 = *(v9 + 32);
  if (!v15)
  {
    v16 = *(v9 + 8);
    if (v16)
    {
      v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
    }

    v15 = MEMORY[0x277C8F020](v16);
    *(v9 + 32) = v15;
  }

  v17 = v12;
  v18 = v14;
  *(v15 + 16) |= 3u;
  *(v15 + 24) = v17;
  *(v15 + 28) = v18;
}

@end