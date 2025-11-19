@interface PXStoryConcreteTextResource
- (BOOL)isEqual:(id)a3;
- (PXStoryConcreteTextResource)initWithAssetCollection:(id)a3 type:(int64_t)a4;
- (PXStoryConcreteTextResource)initWithChapter:(id)a3 type:(int64_t)a4;
- (PXStoryConcreteTextResource)initWithIdentifier:(id)a3 kind:(int64_t)a4;
@end

@implementation PXStoryConcreteTextResource

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PXStoryConcreteTextResource;
  if ([(PXStoryConcreteResource *)&v9 isEqual:v4])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(PXStoryConcreteTextResource *)self px_storyResourceTextResourceInfo];
      v6 = [v4 px_storyResourceTextResourceInfo];
      if (v5 == v6)
      {
        v7 = 1;
      }

      else
      {
        v7 = [v5 isEqual:v6];
      }
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (PXStoryConcreteTextResource)initWithChapter:(id)a3 type:(int64_t)a4
{
  v6 = a3;
  v7 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8 = [v6 identifier];
  v9 = [v7 initWithFormat:@"chapter:%@ type:%ti", v8, a4];

  v20.receiver = self;
  v20.super_class = PXStoryConcreteTextResource;
  v10 = [(PXStoryConcreteResource *)&v20 initWithIdentifier:v9 kind:3];
  if (!v10)
  {
    goto LABEL_12;
  }

  v11 = [v6 localizedSubtitle];
  v12 = v11;
  if (a4 == 1)
  {
    v13 = v11;
  }

  else
  {
    if (a4)
    {
      v14 = 0;
      goto LABEL_8;
    }

    v13 = [v6 localizedTitle];
  }

  v14 = v13;
LABEL_8:
  v10->_type = a4;
  v15 = [PXStoryTextResourceInfo alloc];
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = &stru_1F1741150;
  }

  v17 = [(PXStoryTextResourceInfo *)v15 initWithString:v16 associatedSubtitleString:v12 type:a4 layoutScheme:1 assetCollectionUUID:0];
  textResourceInfo = v10->_textResourceInfo;
  v10->_textResourceInfo = v17;

LABEL_12:
  return v10;
}

- (PXStoryConcreteTextResource)initWithAssetCollection:(id)a3 type:(int64_t)a4
{
  v6 = a3;
  v7 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8 = [v6 uuid];
  v9 = [v7 initWithFormat:@"assetCollection:%@ type:%ti", v8, a4];

  v22.receiver = self;
  v22.super_class = PXStoryConcreteTextResource;
  v10 = [(PXStoryConcreteResource *)&v22 initWithIdentifier:v9 kind:3];
  if (!v10)
  {
    goto LABEL_12;
  }

  v11 = [[_TtC12PhotosUICore27PXPhotosCollectionTitleInfo alloc] initWithAssetCollection:v6];
  v12 = [(PXPhotosCollectionTitleInfo *)v11 subtitle];
  v13 = v12;
  if (a4 == 1)
  {
    v14 = v12;
  }

  else
  {
    if (a4)
    {
      v15 = 0;
      goto LABEL_8;
    }

    v14 = [(PXPhotosCollectionTitleInfo *)v11 title];
  }

  v15 = v14;
LABEL_8:
  v10->_type = a4;
  v16 = [PXStoryTextResourceInfo alloc];
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = &stru_1F1741150;
  }

  v18 = [v6 uuid];
  v19 = [(PXStoryTextResourceInfo *)v16 initWithString:v17 associatedSubtitleString:v13 type:a4 layoutScheme:0 assetCollectionUUID:v18];
  textResourceInfo = v10->_textResourceInfo;
  v10->_textResourceInfo = v19;

LABEL_12:
  return v10;
}

- (PXStoryConcreteTextResource)initWithIdentifier:(id)a3 kind:(int64_t)a4
{
  v6 = a3;
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"PXStoryConcreteResources.m" lineNumber:66 description:{@"%s is not available as initializer", "-[PXStoryConcreteTextResource initWithIdentifier:kind:]"}];

  abort();
}

@end