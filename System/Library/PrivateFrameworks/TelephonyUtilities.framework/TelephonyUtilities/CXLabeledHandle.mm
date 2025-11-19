@interface CXLabeledHandle
- (TULabeledHandle)tuLabeledHandle;
@end

@implementation CXLabeledHandle

- (TULabeledHandle)tuLabeledHandle
{
  v3 = [(CXLabeledHandle *)self handle];
  v4 = [v3 tuHandle];

  if (v4)
  {
    v5 = [TULabeledHandle alloc];
    v6 = [(CXLabeledHandle *)self label];
    v7 = [v5 initWithHandle:v4 label:v6 isSuggested:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end