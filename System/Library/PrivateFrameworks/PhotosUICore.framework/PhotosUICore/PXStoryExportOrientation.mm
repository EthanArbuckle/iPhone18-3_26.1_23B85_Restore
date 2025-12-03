@interface PXStoryExportOrientation
- (BOOL)isEqual:(id)equal;
- (NSString)localizedTitle;
- (PXStoryExportOrientation)initWithOrientationType:(int64_t)type;
- (PXStoryExportOrientation)initWithUserInterfaceOrientation:(int64_t)orientation;
@end

@implementation PXStoryExportOrientation

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      type = [(PXStoryExportOrientation *)self type];
      type2 = [(PXStoryExportOrientation *)v5 type];

      v8 = type == type2;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (NSString)localizedTitle
{
  type = [(PXStoryExportOrientation *)self type];
  if (type > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_1E773D200[type];
  }

  return PXLocalizedStringFromTable(v3, @"PhotosUICore");
}

- (PXStoryExportOrientation)initWithUserInterfaceOrientation:(int64_t)orientation
{
  if (orientation)
  {
    v3 = orientation == 1;
  }

  else
  {
    v3 = 2;
  }

  return [(PXStoryExportOrientation *)self initWithOrientationType:v3];
}

- (PXStoryExportOrientation)initWithOrientationType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = PXStoryExportOrientation;
  result = [(PXStoryExportOrientation *)&v5 init];
  if (result)
  {
    result->_type = type;
  }

  return result;
}

PXStoryExportOrientation *__48__PXStoryExportOrientation_pickableOrientations__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [PXStoryExportOrientation alloc];
  v4 = [v2 integerValue];

  v5 = [(PXStoryExportOrientation *)v3 initWithOrientationType:v4];

  return v5;
}

@end