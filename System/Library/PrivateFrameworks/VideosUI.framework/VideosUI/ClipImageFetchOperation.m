@interface ClipImageFetchOperation
- (void)cancel;
- (void)executionDidBegin;
@end

@implementation ClipImageFetchOperation

- (void)executionDidBegin
{
  v2 = self;
  sub_1E3E3FCC8();
}

- (void)cancel
{
  v2 = self;
  sub_1E3E40048();
}

@end