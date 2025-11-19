@interface PXPhotoStyleCollectionWrapper
+ (id)macStyleCollections;
- (PXPhotoStyleCollectionWrapper)initWithCollection:(id)a3;
- (id)styleElements;
@end

@implementation PXPhotoStyleCollectionWrapper

- (id)styleElements
{
  [(PXPhotoStyleCollection *)self->_underlyingCollection elements];
  objc_claimAutoreleasedReturnValue();
  PXMap();
}

PXPhotoStyleElementWrapper *__46__PXPhotoStyleCollectionWrapper_styleElements__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PXPhotoStyleElementWrapper alloc] initWithPhotoStyleElement:v2];

  return v3;
}

- (PXPhotoStyleCollectionWrapper)initWithCollection:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXPhotoStyleCollectionWrapper;
  v6 = [(PXPhotoStyleCollectionWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingCollection, a3);
  }

  return v7;
}

+ (id)macStyleCollections
{
  +[PXPhotoStyleCollection macStyleCollections];
  objc_claimAutoreleasedReturnValue();
  PXMap();
}

PXPhotoStyleCollectionWrapper *__52__PXPhotoStyleCollectionWrapper_macStyleCollections__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PXPhotoStyleCollectionWrapper alloc] initWithCollection:v2];

  return v3;
}

@end