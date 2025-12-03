@interface PFTDispatchSource
- (PFTDispatchSource)initWithSource:(id)source;
@end

@implementation PFTDispatchSource

- (PFTDispatchSource)initWithSource:(id)source
{
  sourceCopy = source;
  v10.receiver = self;
  v10.super_class = PFTDispatchSource;
  v6 = [(PFTDispatchSource *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_source, source);
    v8 = v7;
  }

  return v7;
}

@end