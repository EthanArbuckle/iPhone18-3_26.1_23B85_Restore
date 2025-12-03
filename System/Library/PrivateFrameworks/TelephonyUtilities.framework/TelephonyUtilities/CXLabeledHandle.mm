@interface CXLabeledHandle
- (TULabeledHandle)tuLabeledHandle;
@end

@implementation CXLabeledHandle

- (TULabeledHandle)tuLabeledHandle
{
  handle = [(CXLabeledHandle *)self handle];
  tuHandle = [handle tuHandle];

  if (tuHandle)
  {
    v5 = [TULabeledHandle alloc];
    label = [(CXLabeledHandle *)self label];
    v7 = [v5 initWithHandle:tuHandle label:label isSuggested:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end