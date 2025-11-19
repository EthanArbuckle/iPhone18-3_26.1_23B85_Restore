@interface TVPPlaybackImageLoadInfo
- (CGSize)maxSize;
- (id)description;
- (void)callCompletionHandlerWithImage:(id)a3 actualCMTime:(id *)a4 actualDate:(id)a5;
- (void)setRequestedCMTime:(id *)a3;
@end

@implementation TVPPlaybackImageLoadInfo

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  [(TVPPlaybackImageLoadInfo *)self requestedTime];
  v5 = v4;
  [(TVPPlaybackImageLoadInfo *)self maxSize];
  v6 = NSStringFromCGSize(v11);
  v7 = [(TVPPlaybackImageLoadInfo *)self identifier];
  v8 = [v3 stringWithFormat:@"requestedTime: %f, maxSize: %@, identifier: %@", v5, v6, v7];

  return v8;
}

- (void)callCompletionHandlerWithImage:(id)a3 actualCMTime:(id *)a4 actualDate:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (v8)
  {
    v13 = *a4;
    CMTimeGetSeconds(&v13);
  }

  v10 = [(TVPPlaybackImageLoadInfo *)self dateBasedHandler];
  if (v10)
  {
    v11 = [(TVPPlaybackImageLoadInfo *)self identifier];
    v12 = [(TVPPlaybackImageLoadInfo *)self requestedDate];
    (v10)[2](v10, v11, v8, v12, v9);
LABEL_7:

    goto LABEL_8;
  }

  v11 = [(TVPPlaybackImageLoadInfo *)self timeBasedHandler];
  if (v11)
  {
    v12 = [(TVPPlaybackImageLoadInfo *)self identifier];
    [(TVPPlaybackImageLoadInfo *)self requestedTime];
    (v11)[2](v11, v12, v8);
    goto LABEL_7;
  }

LABEL_8:
}

- (void)setRequestedCMTime:(id *)a3
{
  v3 = *&a3->var0;
  self->_requestedCMTime.epoch = a3->var3;
  *&self->_requestedCMTime.value = v3;
}

- (CGSize)maxSize
{
  width = self->_maxSize.width;
  height = self->_maxSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end