@interface PXPhotoStyleElementWrapper
+ (id)wrapperWithPhotoStyleElement:(id)a3;
- (PXPhotoStyleElementWrapper)initWithPhotoStyleElement:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)updateWithTone:(double)a3 color:(double)a4 intensity:(double)a5;
@end

@implementation PXPhotoStyleElementWrapper

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [(PXPhotoStyleElement *)self->_underlyingStyleElement copy];
  v4 = [objc_alloc(objc_opt_class()) initWithPhotoStyleElement:v3];

  return v4;
}

- (void)updateWithTone:(double)a3 color:(double)a4 intensity:(double)a5
{
  v9 = *MEMORY[0x1E69E9840];
  if (![(PXPhotoStyleElement *)self->_underlyingStyleElement updateWithTone:a3 color:a4 intensity:a5])
  {
    v6 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = self;
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEFAULT, "Unable to update style %@", &v7, 0xCu);
    }
  }
}

- (PXPhotoStyleElementWrapper)initWithPhotoStyleElement:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXPhotoStyleElementWrapper;
  v6 = [(PXPhotoStyleElementWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingStyleElement, a3);
  }

  return v7;
}

+ (id)wrapperWithPhotoStyleElement:(id)a3
{
  v3 = a3;
  v4 = [[PXPhotoStyleElementWrapper alloc] initWithPhotoStyleElement:v3];

  return v4;
}

@end