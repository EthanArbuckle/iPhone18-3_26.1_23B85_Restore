@interface PXTextContainer
- (PXTextContainer)initWithCoder:(id)a3;
- (PXTextContainer)initWithSize:(CGSize)a3 layoutOrientation:(int64_t)a4;
@end

@implementation PXTextContainer

- (PXTextContainer)initWithSize:(CGSize)a3 layoutOrientation:(int64_t)a4
{
  v6.receiver = self;
  v6.super_class = PXTextContainer;
  result = [(PXTextContainer *)&v6 initWithSize:a3.width, a3.height];
  if (result)
  {
    result->_preferredOrientation = a4;
  }

  return result;
}

- (PXTextContainer)initWithCoder:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXTextContainer.m" lineNumber:20 description:{@"%s is not available as initializer", "-[PXTextContainer initWithCoder:]"}];

  abort();
}

@end