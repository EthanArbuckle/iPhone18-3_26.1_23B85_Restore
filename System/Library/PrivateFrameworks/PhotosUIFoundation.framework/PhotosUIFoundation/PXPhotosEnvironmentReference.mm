@interface PXPhotosEnvironmentReference
- (PXPhotosEnvironmentReference)init;
- (PXPhotosEnvironmentReference)initWithWrappedValue:(id)value;
@end

@implementation PXPhotosEnvironmentReference

- (PXPhotosEnvironmentReference)initWithWrappedValue:(id)value
{
  valueCopy = value;
  v9.receiver = self;
  v9.super_class = PXPhotosEnvironmentReference;
  v6 = [(PXPhotosEnvironmentReference *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wrappedValue, value);
  }

  return v7;
}

- (PXPhotosEnvironmentReference)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosEnvironmentReference.m" lineNumber:16 description:{@"%s is not available as initializer", "-[PXPhotosEnvironmentReference init]"}];

  abort();
}

@end