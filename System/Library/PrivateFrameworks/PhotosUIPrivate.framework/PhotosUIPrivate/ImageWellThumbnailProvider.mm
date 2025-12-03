@interface ImageWellThumbnailProvider
- (void)cancelThumbnailRequest:(int64_t)request;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
@end

@implementation ImageWellThumbnailProvider

- (void)cancelThumbnailRequest:(int64_t)request
{
  selfCopy = self;
  sub_1B371E224(request);
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  selfCopy = self;
  sub_1B371E34C(observableCopy, changeCopy);
}

@end