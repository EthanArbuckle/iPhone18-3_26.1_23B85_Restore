@interface PXPersonItem
- (PXPersonItem)initWithPerson:(id)a3;
- (UIImage)faceImage;
@end

@implementation PXPersonItem

- (UIImage)faceImage
{
  WeakRetained = objc_loadWeakRetained(&self->_faceImage);

  return WeakRetained;
}

- (PXPersonItem)initWithPerson:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXPersonItem;
  v6 = [(PXPersonItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_modelObject, a3);
  }

  return v7;
}

@end