@interface ClipImageFetchOperation
- (void)cancel;
- (void)executionDidBegin;
@end

@implementation ClipImageFetchOperation

- (void)executionDidBegin
{
  selfCopy = self;
  sub_1E3E3FCC8();
}

- (void)cancel
{
  selfCopy = self;
  sub_1E3E40048();
}

@end