@interface PXStoryExportOrientation
- (BOOL)isEqual:(id)a3;
- (NSString)localizedTitle;
- (PXStoryExportOrientation)initWithOrientationType:(int64_t)a3;
- (PXStoryExportOrientation)initWithUserInterfaceOrientation:(int64_t)a3;
@end

@implementation PXStoryExportOrientation

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(PXStoryExportOrientation *)self type];
      v7 = [(PXStoryExportOrientation *)v5 type];

      v8 = v6 == v7;
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
  v2 = [(PXStoryExportOrientation *)self type];
  if (v2 > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_1E773D200[v2];
  }

  return PXLocalizedStringFromTable(v3, @"PhotosUICore");
}

- (PXStoryExportOrientation)initWithUserInterfaceOrientation:(int64_t)a3
{
  if (a3)
  {
    v3 = a3 == 1;
  }

  else
  {
    v3 = 2;
  }

  return [(PXStoryExportOrientation *)self initWithOrientationType:v3];
}

- (PXStoryExportOrientation)initWithOrientationType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = PXStoryExportOrientation;
  result = [(PXStoryExportOrientation *)&v5 init];
  if (result)
  {
    result->_type = a3;
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