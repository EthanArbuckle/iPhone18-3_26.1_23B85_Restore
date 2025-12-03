@interface PXStoryConcreteTextResource
- (BOOL)isEqual:(id)equal;
- (PXStoryConcreteTextResource)initWithAssetCollection:(id)collection type:(int64_t)type;
- (PXStoryConcreteTextResource)initWithChapter:(id)chapter type:(int64_t)type;
- (PXStoryConcreteTextResource)initWithIdentifier:(id)identifier kind:(int64_t)kind;
@end

@implementation PXStoryConcreteTextResource

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v9.receiver = self;
  v9.super_class = PXStoryConcreteTextResource;
  if ([(PXStoryConcreteResource *)&v9 isEqual:equalCopy])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      px_storyResourceTextResourceInfo = [(PXStoryConcreteTextResource *)self px_storyResourceTextResourceInfo];
      px_storyResourceTextResourceInfo2 = [equalCopy px_storyResourceTextResourceInfo];
      if (px_storyResourceTextResourceInfo == px_storyResourceTextResourceInfo2)
      {
        v7 = 1;
      }

      else
      {
        v7 = [px_storyResourceTextResourceInfo isEqual:px_storyResourceTextResourceInfo2];
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

- (PXStoryConcreteTextResource)initWithChapter:(id)chapter type:(int64_t)type
{
  chapterCopy = chapter;
  v7 = objc_alloc(MEMORY[0x1E696AEC0]);
  identifier = [chapterCopy identifier];
  type = [v7 initWithFormat:@"chapter:%@ type:%ti", identifier, type];

  v20.receiver = self;
  v20.super_class = PXStoryConcreteTextResource;
  v10 = [(PXStoryConcreteResource *)&v20 initWithIdentifier:type kind:3];
  if (!v10)
  {
    goto LABEL_12;
  }

  localizedSubtitle = [chapterCopy localizedSubtitle];
  v12 = localizedSubtitle;
  if (type == 1)
  {
    localizedTitle = localizedSubtitle;
  }

  else
  {
    if (type)
    {
      v14 = 0;
      goto LABEL_8;
    }

    localizedTitle = [chapterCopy localizedTitle];
  }

  v14 = localizedTitle;
LABEL_8:
  v10->_type = type;
  v15 = [PXStoryTextResourceInfo alloc];
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = &stru_1F1741150;
  }

  v17 = [(PXStoryTextResourceInfo *)v15 initWithString:v16 associatedSubtitleString:v12 type:type layoutScheme:1 assetCollectionUUID:0];
  textResourceInfo = v10->_textResourceInfo;
  v10->_textResourceInfo = v17;

LABEL_12:
  return v10;
}

- (PXStoryConcreteTextResource)initWithAssetCollection:(id)collection type:(int64_t)type
{
  collectionCopy = collection;
  v7 = objc_alloc(MEMORY[0x1E696AEC0]);
  uuid = [collectionCopy uuid];
  type = [v7 initWithFormat:@"assetCollection:%@ type:%ti", uuid, type];

  v22.receiver = self;
  v22.super_class = PXStoryConcreteTextResource;
  v10 = [(PXStoryConcreteResource *)&v22 initWithIdentifier:type kind:3];
  if (!v10)
  {
    goto LABEL_12;
  }

  v11 = [[_TtC12PhotosUICore27PXPhotosCollectionTitleInfo alloc] initWithAssetCollection:collectionCopy];
  subtitle = [(PXPhotosCollectionTitleInfo *)v11 subtitle];
  v13 = subtitle;
  if (type == 1)
  {
    title = subtitle;
  }

  else
  {
    if (type)
    {
      v15 = 0;
      goto LABEL_8;
    }

    title = [(PXPhotosCollectionTitleInfo *)v11 title];
  }

  v15 = title;
LABEL_8:
  v10->_type = type;
  v16 = [PXStoryTextResourceInfo alloc];
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = &stru_1F1741150;
  }

  uuid2 = [collectionCopy uuid];
  v19 = [(PXStoryTextResourceInfo *)v16 initWithString:v17 associatedSubtitleString:v13 type:type layoutScheme:0 assetCollectionUUID:uuid2];
  textResourceInfo = v10->_textResourceInfo;
  v10->_textResourceInfo = v19;

LABEL_12:
  return v10;
}

- (PXStoryConcreteTextResource)initWithIdentifier:(id)identifier kind:(int64_t)kind
{
  identifierCopy = identifier;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryConcreteResources.m" lineNumber:66 description:{@"%s is not available as initializer", "-[PXStoryConcreteTextResource initWithIdentifier:kind:]"}];

  abort();
}

@end