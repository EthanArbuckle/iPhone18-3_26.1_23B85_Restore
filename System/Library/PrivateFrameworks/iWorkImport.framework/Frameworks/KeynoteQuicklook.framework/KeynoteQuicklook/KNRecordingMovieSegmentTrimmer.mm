@interface KNRecordingMovieSegmentTrimmer
- (KNRecordingMovieSegmentTrimmer)initWithMovieSegment:(id)a3 trimDuration:(double)a4;
- (void)trimMovieSegmentWithCompletionHandler:(id)a3;
@end

@implementation KNRecordingMovieSegmentTrimmer

- (KNRecordingMovieSegmentTrimmer)initWithMovieSegment:(id)a3 trimDuration:(double)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = KNRecordingMovieSegmentTrimmer;
  v8 = [(KNRecordingMovieSegmentTrimmer *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_movieSegment, a3);
    v9->_trimDurationInSeconds = a4;
  }

  return v9;
}

- (void)trimMovieSegmentWithCompletionHandler:(id)a3
{
  v28[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7 = objc_msgSend_movieData(self->_movieSegment, v5, v6);
  v10 = v7;
  if (v7)
  {
    if (objc_msgSend_length(v7, v8, v9))
    {
      v27 = *MEMORY[0x277CE6240];
      v28[0] = MEMORY[0x277CBEC38];
      v12 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v11, v28, &v27, 1);
      v14 = objc_msgSend_AVAssetWithOptions_(v10, v13, v12);

      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = sub_275E27734;
      v22[3] = &unk_27A699558;
      v23 = v14;
      v24 = self;
      v25 = v10;
      v26 = v4;
      inited = v14;
      objc_msgSend_loadValuesAsynchronouslyForKeys_completionHandler_(inited, v16, &unk_2884F3E50, v22);
    }

    else
    {
      if (KNRecordingMovieSegmentTrimmerCat_init_token != -1)
      {
        sub_275E604B8();
      }

      v17 = [KNMovieSegment alloc];
      objc_msgSend_startTime(self->_movieSegment, v18, v19);
      inited = objc_msgSend_initEmptySegmentWithStartTime_(v17, v20, v21);
      (*(v4 + 2))(v4, inited, 0);
    }
  }

  else
  {
    (*(v4 + 2))(v4, self->_movieSegment, 0);
  }
}

@end