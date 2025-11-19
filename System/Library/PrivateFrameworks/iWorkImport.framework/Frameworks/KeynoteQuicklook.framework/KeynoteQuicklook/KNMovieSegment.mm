@interface KNMovieSegment
- (BOOL)isEmptySegment;
- (KNMovieSegment)initWithContext:(id)a3 message:(const void *)a4 unarchiver:(id)a5;
- (KNMovieSegment)initWithMovieData:(id)a3 startTime:(double)a4;
- (id)description;
- (id)movieSegmentByAddingTimeOffset:(double)a3;
- (void)saveToMessage:(void *)a3 archiver:(id)a4;
@end

@implementation KNMovieSegment

- (KNMovieSegment)initWithMovieData:(id)a3 startTime:(double)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = KNMovieSegment;
  v8 = [(KNMovieSegment *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_movieData, a3);
    v9->_startTime = a4;
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  objc_msgSend_startTime(self, v6, v7);
  v9 = v8;
  isEmptySegment = objc_msgSend_isEmptySegment(self, v10, v11);
  v14 = objc_msgSend_stringWithFormat_(v3, v13, @"<%@: %p startTime=%f, isEmptySegment=%d>", v5, self, v9, isEmptySegment);

  return v14;
}

- (BOOL)isEmptySegment
{
  v3 = objc_msgSend_movieData(self, a2, v2);
  v4 = v3 == 0;

  return v4;
}

- (id)movieSegmentByAddingTimeOffset:(double)a3
{
  v5 = [KNMovieSegment alloc];
  v8 = objc_msgSend_movieData(self, v6, v7);
  objc_msgSend_startTime(self, v9, v10);
  started = objc_msgSend_initWithMovieData_startTime_(v5, v12, v8, v11 + a3);

  return started;
}

- (KNMovieSegment)initWithContext:(id)a3 message:(const void *)a4 unarchiver:(id)a5
{
  v7 = a5;
  v21.receiver = self;
  v21.super_class = KNMovieSegment;
  v8 = [(KNMovieSegment *)&v21 init];
  v10 = v8;
  if (v8)
  {
    v11 = *(a4 + 4);
    if (v11)
    {
      v14 = *(a4 + 3);
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = sub_275DBCB08;
      v19[3] = &unk_27A698368;
      v20 = v8;
      v15 = v7;
      v16 = objc_opt_class();
      objc_msgSend_readReferenceMessage_class_protocol_completion_(v15, v17, v14, v16, 0, v19);

      movieData = v20;
    }

    else
    {
      if ((v11 & 2) == 0)
      {
LABEL_7:
        v10->_startTime = *(a4 + 5);
        goto LABEL_8;
      }

      v12 = objc_msgSend_readDataReferenceMessage_(v7, v9, *(a4 + 4));
      movieData = v10->_movieData;
      v10->_movieData = v12;
    }

    goto LABEL_7;
  }

LABEL_8:

  return v10;
}

- (void)saveToMessage:(void *)a3 archiver:(id)a4
{
  v12 = a4;
  movieData = self->_movieData;
  if (movieData)
  {
    *(a3 + 4) |= 2u;
    v9 = *(a3 + 4);
    if (!v9)
    {
      v10 = *(a3 + 1);
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      v9 = MEMORY[0x277C8EFD0](v10);
      *(a3 + 4) = v9;
    }

    objc_msgSend_setDataReference_message_(v12, v6, movieData, v9);
  }

  objc_msgSend_startTime(self, v6, v7);
  *(a3 + 4) |= 4u;
  *(a3 + 5) = v11;
}

@end