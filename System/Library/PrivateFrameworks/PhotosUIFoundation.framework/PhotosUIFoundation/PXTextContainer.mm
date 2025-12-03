@interface PXTextContainer
- (PXTextContainer)initWithCoder:(id)coder;
- (PXTextContainer)initWithSize:(CGSize)size layoutOrientation:(int64_t)orientation;
@end

@implementation PXTextContainer

- (PXTextContainer)initWithSize:(CGSize)size layoutOrientation:(int64_t)orientation
{
  v6.receiver = self;
  v6.super_class = PXTextContainer;
  result = [(PXTextContainer *)&v6 initWithSize:size.width, size.height];
  if (result)
  {
    result->_preferredOrientation = orientation;
  }

  return result;
}

- (PXTextContainer)initWithCoder:(id)coder
{
  coderCopy = coder;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXTextContainer.m" lineNumber:20 description:{@"%s is not available as initializer", "-[PXTextContainer initWithCoder:]"}];

  abort();
}

@end