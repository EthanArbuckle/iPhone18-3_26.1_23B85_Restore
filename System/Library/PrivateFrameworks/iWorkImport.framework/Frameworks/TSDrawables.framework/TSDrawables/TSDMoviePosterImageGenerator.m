@interface TSDMoviePosterImageGenerator
- (CGImage)copyCGImageAtTime:(id *)a3 error:(id *)a4;
- (CGSize)maximumSize;
- (TSDMoviePosterImageGenerator)initWithAsset:(id)a3;
- (void)generateCGImageAsynchronouslyForTime:(id *)a3 completionHandler:(id)a4;
@end

@implementation TSDMoviePosterImageGenerator

- (TSDMoviePosterImageGenerator)initWithAsset:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = TSDMoviePosterImageGenerator;
  v5 = [(TSDMoviePosterImageGenerator *)&v21 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CE6408]);
    v8 = objc_msgSend_initWithAsset_(v6, v7, v4);
    v9 = *(v5 + 1);
    *(v5 + 1) = v8;

    v10 = *(v5 + 1);
    v19 = *MEMORY[0x277CC08F0];
    v18 = v19;
    v20 = *(MEMORY[0x277CC08F0] + 16);
    v11 = v20;
    objc_msgSend_setRequestedTimeToleranceAfter_(v10, v12, &v19);
    v13 = *(v5 + 1);
    v19 = v18;
    v20 = v11;
    objc_msgSend_setRequestedTimeToleranceBefore_(v13, v14, &v19);
    objc_msgSend_setAppliesPreferredTrackTransform_(*(v5 + 1), v15, 1);
    objc_msgSend_setDynamicRangePolicy_(*(v5 + 1), v16, *MEMORY[0x277CE5CB8]);
    *(v5 + 24) = *MEMORY[0x277CBF3A8];
  }

  return v5;
}

- (CGImage)copyCGImageAtTime:(id *)a3 error:(id *)a4
{
  assetImageGenerator = self->_assetImageGenerator;
  if (!assetImageGenerator)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDMoviePosterImageGenerator copyCGImageAtTime:error:]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDMoviePosterImageGenerator.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 50, 0, "invalid nil value for '%{public}s'", "_assetImageGenerator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
    assetImageGenerator = self->_assetImageGenerator;
  }

  objc_msgSend_setMaximumSize_(assetImageGenerator, a2, a3, self->_maximumSize.width, self->_maximumSize.height);
  v15 = self->_assetImageGenerator;
  v18 = *&a3->var0;
  var3 = a3->var3;
  return objc_msgSend_copyCGImageAtTime_actualTime_error_(v15, v16, &v18, 0, a4);
}

- (void)generateCGImageAsynchronouslyForTime:(id *)a3 completionHandler:(id)a4
{
  v7 = a4;
  if (v7)
  {
    v8 = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_27671CCB4;
    block[3] = &unk_27A6CD578;
    block[4] = self;
    v18 = *&a3->var0;
    var3 = a3->var3;
    v17 = v7;
    dispatch_async(v8, block);
  }

  else
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSDMoviePosterImageGenerator generateCGImageAsynchronouslyForTime:completionHandler:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDMoviePosterImageGenerator.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 82, 0, "invalid nil value for '%{public}s'", "handler");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }
}

- (CGSize)maximumSize
{
  width = self->_maximumSize.width;
  height = self->_maximumSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end