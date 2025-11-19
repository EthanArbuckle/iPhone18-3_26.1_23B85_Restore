@interface KNRecordingMovieEvent
- (BOOL)isEqual:(id)a3;
- (KNRecordingMovieEvent)initWithStartTime:(double)a3 movieInfo:(id)a4 movieSlideNodeUUID:(id)a5 didPlayAcrossSlides:(BOOL)a6 movieEventType:(int64_t)a7 movieEventValue:(double)a8;
- (TSDMovieInfo)movieInfo;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)loadFromMessage:(const void *)a3 unarchiver:(id)a4 parentEventTrack:(id)a5;
- (void)saveToMessage:(void *)a3 archiver:(id)a4;
@end

@implementation KNRecordingMovieEvent

- (KNRecordingMovieEvent)initWithStartTime:(double)a3 movieInfo:(id)a4 movieSlideNodeUUID:(id)a5 didPlayAcrossSlides:(BOOL)a6 movieEventType:(int64_t)a7 movieEventValue:(double)a8
{
  v14 = a4;
  v15 = a5;
  v26.receiver = self;
  v26.super_class = KNRecordingMovieEvent;
  v16 = [(KNRecordingEvent *)&v26 initWithStartTime:a3];
  if (v16)
  {
    v17 = objc_alloc(MEMORY[0x277D80868]);
    inited = objc_msgSend_initWeakReferenceWithObject_(v17, v18, v14);
    movieInfoReference = v16->_movieInfoReference;
    v16->_movieInfoReference = inited;

    v23 = objc_msgSend_copy(v15, v21, v22);
    movieSlideNodeUUID = v16->_movieSlideNodeUUID;
    v16->_movieSlideNodeUUID = v23;

    v16->_didPlayAcrossSlides = a6;
    v16->_movieEventType = a7;
    v16->_movieEventValue = a8;
  }

  return v16;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_msgSend_allocWithZone_(KNRecordingMovieEvent, a2, a3);
  objc_msgSend_startTime(self, v5, v6);
  v8 = v7;
  v11 = objc_msgSend_movieInfo(self, v9, v10);
  v14 = objc_msgSend_movieSlideNodeUUID(self, v12, v13);
  v17 = objc_msgSend_didPlayAcrossSlides(self, v15, v16);
  v20 = objc_msgSend_movieEventType(self, v18, v19);
  objc_msgSend_movieEventValue(self, v21, v22);
  started = objc_msgSend_initWithStartTime_movieInfo_movieSlideNodeUUID_didPlayAcrossSlides_movieEventType_movieEventValue_(v4, v23, v11, v14, v17, v20, v8, v24);

  return started;
}

- (id)description
{
  v4 = objc_msgSend_movieEventType(self, a2, v2);
  if (v4 > 6)
  {
    v5 = 0;
  }

  else
  {
    v5 = off_27A698850[v4];
  }

  v6 = MEMORY[0x277CCACA8];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  objc_msgSend_startTime(self, v9, v10);
  v12 = v11;
  v15 = objc_msgSend_movieInfo(self, v13, v14);
  v18 = objc_msgSend_movieSlideNodeUUID(self, v16, v17);
  v21 = objc_msgSend_didPlayAcrossSlides(self, v19, v20);
  objc_msgSend_movieEventValue(self, v22, v23);
  v26 = objc_msgSend_stringWithFormat_(v6, v24, @"<%@ %p time=%f movieInfo=%@ movieSlideNodeUUID=%@ didPlayAcrossSlides=%d movieEventType=%@ movieEventValue=%f>", v8, self, v12, v15, v18, v21, v5, v25);

  return v26;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v38.receiver = self;
  v38.super_class = KNRecordingMovieEvent;
  if (![(KNRecordingEvent *)&v38 isEqual:v4])
  {
    v25 = 0;
    goto LABEL_12;
  }

  objc_opt_class();
  v7 = TSUDynamicCast();
  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = objc_msgSend_movieInfo(self, v5, v6);
  v13 = objc_msgSend_movieInfo(v7, v9, v10);
  if (v8 != v13)
  {
    goto LABEL_8;
  }

  v14 = objc_msgSend_movieSlideNodeUUID(self, v11, v12);
  v19 = objc_msgSend_movieSlideNodeUUID(v7, v15, v16);
  if (v14 | v19 && !objc_msgSend_isEqual_(v14, v17, v19) || (v20 = objc_msgSend_didPlayAcrossSlides(self, v17, v18), v20 != objc_msgSend_didPlayAcrossSlides(v7, v21, v22)))
  {

LABEL_8:
    goto LABEL_9;
  }

  v27 = objc_msgSend_movieEventType(self, v23, v24);
  v30 = objc_msgSend_movieEventType(v7, v28, v29);

  if (v27 == v30)
  {
    objc_msgSend_movieEventValue(self, v31, v32);
    v34 = v33;
    objc_msgSend_movieEventValue(v7, v35, v36);
    v25 = v34 == v37;
    goto LABEL_10;
  }

LABEL_9:
  v25 = 0;
LABEL_10:

LABEL_12:
  return v25;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x277D811E8]);
  v21.receiver = self;
  v21.super_class = KNRecordingMovieEvent;
  v4 = [(KNRecordingEvent *)&v21 hash];
  objc_msgSend_addUnsignedInteger_(v3, v5, v4);
  objc_msgSend_addObject_(v3, v6, self->_movieInfoReference);
  objc_msgSend_addObject_(v3, v7, self->_movieSlideNodeUUID);
  objc_msgSend_addBool_(v3, v8, self->_didPlayAcrossSlides);
  objc_msgSend_addInteger_(v3, v9, self->_movieEventType);
  v10 = MEMORY[0x277CCABB0];
  objc_msgSend_movieEventValue(self, v11, v12);
  v15 = objc_msgSend_numberWithDouble_(v10, v13, v14);
  objc_msgSend_addObject_(v3, v16, v15);

  v19 = objc_msgSend_hashValue(v3, v17, v18);
  return v19;
}

- (TSDMovieInfo)movieInfo
{
  objc_opt_class();
  v4 = objc_msgSend_objectAndReturnError_(self->_movieInfoReference, v3, 0);
  v5 = TSUCheckedDynamicCast();

  return v5;
}

- (void)loadFromMessage:(const void *)a3 unarchiver:(id)a4 parentEventTrack:(id)a5
{
  v8 = a4;
  v30.receiver = self;
  v30.super_class = KNRecordingMovieEvent;
  [(KNRecordingEvent *)&v30 loadFromMessage:a3 unarchiver:v8 parentEventTrack:a5];
  if (*(a3 + 6))
  {
    v10 = *(a3 + 6);
  }

  else
  {
    v10 = &unk_2812EBA50;
  }

  v11 = *(v10 + 4);
  if (v11)
  {
    v17 = *(v10 + 3);
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = sub_275DC9DBC;
    v29[3] = &unk_27A6982D0;
    v29[4] = self;
    v18 = v8;
    v19 = objc_opt_class();
    objc_msgSend_readWeakLazyReferenceMessage_class_protocol_completion_(v18, v20, v17, v19, 0, v29);
    v16 = 0;
  }

  else
  {
    if ((v11 & 2) == 0)
    {
      goto LABEL_9;
    }

    v12 = *(v10 + 4);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = sub_275DC9DD4;
    v28[3] = &unk_27A6982D0;
    v28[4] = self;
    v13 = v8;
    v14 = objc_opt_class();
    objc_msgSend_readWeakLazyReferenceMessage_class_protocol_completion_(v13, v15, v12, v14, 0, v28);
    v16 = 1;
  }

  self->_didPlayAcrossSlides = v16;
LABEL_9:
  if ((*(v10 + 16) & 4) != 0)
  {
    v21 = objc_msgSend_readWeakObjectUUIDReferenceMessage_(v8, v9, *(v10 + 5));
    v24 = objc_msgSend_copy(v21, v22, v23);
    movieSlideNodeUUID = self->_movieSlideNodeUUID;
    self->_movieSlideNodeUUID = v24;
  }

  v26 = (*(v10 + 14) - 1);
  if (v26 < 6)
  {
    v27 = v26 + 1;
  }

  else
  {
    v27 = 0;
  }

  self->_movieEventType = v27;
  self->_movieEventValue = *(v10 + 6);
}

- (void)saveToMessage:(void *)a3 archiver:(id)a4
{
  v6 = a4;
  v27.receiver = self;
  v27.super_class = KNRecordingMovieEvent;
  [(KNRecordingEvent *)&v27 saveToMessage:a3 archiver:v6];
  *(a3 + 4) |= 8u;
  v8 = *(a3 + 6);
  if (!v8)
  {
    v9 = *(a3 + 1);
    if (v9)
    {
      v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
    }

    v8 = sub_275E21070(v9);
    *(a3 + 6) = v8;
  }

  movieInfoReference = self->_movieInfoReference;
  v11 = *(v8 + 16);
  if (!self->_didPlayAcrossSlides)
  {
    *(v8 + 16) = v11 | 1;
    v12 = *(v8 + 24);
    if (!v12)
    {
      v18 = *(v8 + 8);
      if (v18)
      {
        v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = MEMORY[0x277C8F050](v18);
      *(v8 + 24) = v12;
    }

    goto LABEL_14;
  }

  *(v8 + 16) = v11 | 2;
  v12 = *(v8 + 32);
  if (v12)
  {
LABEL_14:
    objc_msgSend_setWeakLazyReference_message_(v6, v7, movieInfoReference, v12);
    goto LABEL_15;
  }

  v13 = *(v8 + 8);
  if (v13)
  {
    v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
  }

  v14 = MEMORY[0x277C8F050](v13);
  *(v8 + 32) = v14;
  objc_msgSend_setWeakLazyReference_message_(v6, v15, movieInfoReference, v14);
LABEL_15:
  movieSlideNodeUUID = self->_movieSlideNodeUUID;
  if (movieSlideNodeUUID)
  {
    *(v8 + 16) |= 4u;
    v20 = *(v8 + 40);
    if (!v20)
    {
      v21 = *(v8 + 8);
      if (v21)
      {
        v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
      }

      v20 = MEMORY[0x277C8F000](v21);
      *(v8 + 40) = v20;
    }

    objc_msgSend_setWeakReferenceToObjectUUID_message_(v6, v16, movieSlideNodeUUID, v20);
  }

  v22 = objc_msgSend_movieEventType(self, v16, v17);
  if ((v22 - 1) < 6)
  {
    v25 = v22;
  }

  else
  {
    v25 = 0;
  }

  *(v8 + 16) |= 0x10u;
  *(v8 + 56) = v25;
  objc_msgSend_movieEventValue(self, v23, v24);
  *(v8 + 16) |= 8u;
  *(v8 + 48) = v26;
}

@end