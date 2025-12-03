@interface TVPPlaybackImageLoadInfo
- (CGSize)maxSize;
- (id)description;
- (void)callCompletionHandlerWithImage:(id)image actualCMTime:(id *)time actualDate:(id)date;
- (void)setRequestedCMTime:(id *)time;
@end

@implementation TVPPlaybackImageLoadInfo

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  [(TVPPlaybackImageLoadInfo *)self requestedTime];
  v5 = v4;
  [(TVPPlaybackImageLoadInfo *)self maxSize];
  v6 = NSStringFromCGSize(v11);
  identifier = [(TVPPlaybackImageLoadInfo *)self identifier];
  v8 = [v3 stringWithFormat:@"requestedTime: %f, maxSize: %@, identifier: %@", v5, v6, identifier];

  return v8;
}

- (void)callCompletionHandlerWithImage:(id)image actualCMTime:(id *)time actualDate:(id)date
{
  imageCopy = image;
  dateCopy = date;
  if (imageCopy)
  {
    v13 = *time;
    CMTimeGetSeconds(&v13);
  }

  dateBasedHandler = [(TVPPlaybackImageLoadInfo *)self dateBasedHandler];
  if (dateBasedHandler)
  {
    identifier = [(TVPPlaybackImageLoadInfo *)self identifier];
    requestedDate = [(TVPPlaybackImageLoadInfo *)self requestedDate];
    (dateBasedHandler)[2](dateBasedHandler, identifier, imageCopy, requestedDate, dateCopy);
LABEL_7:

    goto LABEL_8;
  }

  identifier = [(TVPPlaybackImageLoadInfo *)self timeBasedHandler];
  if (identifier)
  {
    requestedDate = [(TVPPlaybackImageLoadInfo *)self identifier];
    [(TVPPlaybackImageLoadInfo *)self requestedTime];
    (identifier)[2](identifier, requestedDate, imageCopy);
    goto LABEL_7;
  }

LABEL_8:
}

- (void)setRequestedCMTime:(id *)time
{
  v3 = *&time->var0;
  self->_requestedCMTime.epoch = time->var3;
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