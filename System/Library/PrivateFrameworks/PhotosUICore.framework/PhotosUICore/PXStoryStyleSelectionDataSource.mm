@interface PXStoryStyleSelectionDataSource
- (BOOL)isEqual:(id)equal;
- (PXStoryStyleDescriptor)styleInfoForCurrentStyle;
- (PXStoryStyleSelectionDataSource)init;
- (PXStoryStyleSelectionDataSource)initWithStyleInfos:(id)infos indexOfCurrentStyle:(int64_t)style indexOfCustomStyle:(int64_t)customStyle;
- (id)songForStyleAtIndex:(int64_t)index;
@end

@implementation PXStoryStyleSelectionDataSource

- (PXStoryStyleDescriptor)styleInfoForCurrentStyle
{
  indexOfCurrentStyle = [(PXStoryStyleSelectionDataSource *)self indexOfCurrentStyle];

  return [(PXStoryStyleSelectionDataSource *)self styleInfoAtIndex:indexOfCurrentStyle];
}

- (id)songForStyleAtIndex:(int64_t)index
{
  v3 = [(NSArray *)self->_styleInfos objectAtIndexedSubscript:index];
  songResource = [v3 songResource];
  px_storyResourceSongAsset = [songResource px_storyResourceSongAsset];

  return px_storyResourceSongAsset;
}

- (PXStoryStyleSelectionDataSource)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryStyleSelectionDataSource.m" lineNumber:42 description:{@"%s is not available as initializer", "-[PXStoryStyleSelectionDataSource init]"}];

  abort();
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = equalCopy;
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_4;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v16 = objc_opt_class();
      v15 = NSStringFromClass(v16);
      px_descriptionForAssertionMessage = [v6 px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryStyleSelectionDataSource.m" lineNumber:33 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"object", v15, px_descriptionForAssertionMessage}];
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryStyleSelectionDataSource.m" lineNumber:33 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"object", v15}];
    }

LABEL_4:
    styleInfos = self->_styleInfos;
    v8 = v6[3];
    v9 = v8;
    if (v8 == styleInfos)
    {
    }

    else
    {
      v10 = [(NSArray *)v8 isEqual:styleInfos];

      if (!v10)
      {
        goto LABEL_11;
      }
    }

    if (v6[1] == self->_indexOfCurrentStyle)
    {
      v11 = v6[2] == self->_indexOfCustomStyle;
LABEL_12:

      goto LABEL_13;
    }

LABEL_11:
    v11 = 0;
    goto LABEL_12;
  }

  v11 = 0;
LABEL_13:

  return v11;
}

- (PXStoryStyleSelectionDataSource)initWithStyleInfos:(id)infos indexOfCurrentStyle:(int64_t)style indexOfCustomStyle:(int64_t)customStyle
{
  infosCopy = infos;
  v15.receiver = self;
  v15.super_class = PXStoryStyleSelectionDataSource;
  v9 = [(PXStoryStyleSelectionDataSource *)&v15 init];
  v10 = v9;
  if (v9)
  {
    v9->_indexOfCurrentStyle = style;
    v9->_indexOfCustomStyle = customStyle;
    v11 = [infosCopy copy];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong(&v10->_styleInfos, v13);
  }

  return v10;
}

@end