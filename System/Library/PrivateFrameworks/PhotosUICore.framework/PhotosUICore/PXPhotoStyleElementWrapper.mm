@interface PXPhotoStyleElementWrapper
+ (id)wrapperWithPhotoStyleElement:(id)element;
- (PXPhotoStyleElementWrapper)initWithPhotoStyleElement:(id)element;
- (id)copyWithZone:(_NSZone *)zone;
- (void)updateWithTone:(double)tone color:(double)color intensity:(double)intensity;
@end

@implementation PXPhotoStyleElementWrapper

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [(PXPhotoStyleElement *)self->_underlyingStyleElement copy];
  v4 = [objc_alloc(objc_opt_class()) initWithPhotoStyleElement:v3];

  return v4;
}

- (void)updateWithTone:(double)tone color:(double)color intensity:(double)intensity
{
  v9 = *MEMORY[0x1E69E9840];
  if (![(PXPhotoStyleElement *)self->_underlyingStyleElement updateWithTone:tone color:color intensity:intensity])
  {
    v6 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEFAULT, "Unable to update style %@", &v7, 0xCu);
    }
  }
}

- (PXPhotoStyleElementWrapper)initWithPhotoStyleElement:(id)element
{
  elementCopy = element;
  v9.receiver = self;
  v9.super_class = PXPhotoStyleElementWrapper;
  v6 = [(PXPhotoStyleElementWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingStyleElement, element);
  }

  return v7;
}

+ (id)wrapperWithPhotoStyleElement:(id)element
{
  elementCopy = element;
  v4 = [[PXPhotoStyleElementWrapper alloc] initWithPhotoStyleElement:elementCopy];

  return v4;
}

@end