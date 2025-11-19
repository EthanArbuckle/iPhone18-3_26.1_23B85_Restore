@interface PXStoryStyleSelectionDataSource
- (BOOL)isEqual:(id)a3;
- (PXStoryStyleDescriptor)styleInfoForCurrentStyle;
- (PXStoryStyleSelectionDataSource)init;
- (PXStoryStyleSelectionDataSource)initWithStyleInfos:(id)a3 indexOfCurrentStyle:(int64_t)a4 indexOfCustomStyle:(int64_t)a5;
- (id)songForStyleAtIndex:(int64_t)a3;
@end

@implementation PXStoryStyleSelectionDataSource

- (PXStoryStyleDescriptor)styleInfoForCurrentStyle
{
  v3 = [(PXStoryStyleSelectionDataSource *)self indexOfCurrentStyle];

  return [(PXStoryStyleSelectionDataSource *)self styleInfoAtIndex:v3];
}

- (id)songForStyleAtIndex:(int64_t)a3
{
  v3 = [(NSArray *)self->_styleInfos objectAtIndexedSubscript:a3];
  v4 = [v3 songResource];
  v5 = [v4 px_storyResourceSongAsset];

  return v5;
}

- (PXStoryStyleSelectionDataSource)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryStyleSelectionDataSource.m" lineNumber:42 description:{@"%s is not available as initializer", "-[PXStoryStyleSelectionDataSource init]"}];

  abort();
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_4;
      }

      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      v16 = objc_opt_class();
      v15 = NSStringFromClass(v16);
      v17 = [v6 px_descriptionForAssertionMessage];
      [v13 handleFailureInMethod:a2 object:self file:@"PXStoryStyleSelectionDataSource.m" lineNumber:33 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"object", v15, v17}];
    }

    else
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      [v13 handleFailureInMethod:a2 object:self file:@"PXStoryStyleSelectionDataSource.m" lineNumber:33 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"object", v15}];
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

- (PXStoryStyleSelectionDataSource)initWithStyleInfos:(id)a3 indexOfCurrentStyle:(int64_t)a4 indexOfCustomStyle:(int64_t)a5
{
  v8 = a3;
  v15.receiver = self;
  v15.super_class = PXStoryStyleSelectionDataSource;
  v9 = [(PXStoryStyleSelectionDataSource *)&v15 init];
  v10 = v9;
  if (v9)
  {
    v9->_indexOfCurrentStyle = a4;
    v9->_indexOfCustomStyle = a5;
    v11 = [v8 copy];
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