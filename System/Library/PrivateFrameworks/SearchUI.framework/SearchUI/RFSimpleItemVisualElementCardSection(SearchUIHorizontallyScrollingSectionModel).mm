@interface RFSimpleItemVisualElementCardSection(SearchUIHorizontallyScrollingSectionModel)
- (double)searchUIHorizontallyScrollingSectionModel_widthDimensionMultiplier;
@end

@implementation RFSimpleItemVisualElementCardSection(SearchUIHorizontallyScrollingSectionModel)

- (double)searchUIHorizontallyScrollingSectionModel_widthDimensionMultiplier
{
  image = [self image];
  visual_elements = [image visual_elements];
  v4 = [visual_elements objectAtIndexedSubscript:0];
  image_element = [v4 image_element];
  sources = [image_element sources];
  v7 = [sources objectAtIndexedSubscript:0];
  v8 = [v7 url];
  image_style = [v8 image_style];

  if (image_style > 0x1E)
  {
    return 0.5;
  }

  if (((1 << image_style) & 0x44A000E1) != 0)
  {
    isMacOS = [MEMORY[0x1E69D9240] isMacOS];
    result = 0.666666667;
    if (isMacOS)
    {
      return 0.8;
    }

    return result;
  }

  if (((1 << image_style) & 0x2000E00) != 0)
  {
    v12.receiver = self;
    v12.super_class = &off_1F56856A8;
    objc_msgSendSuper2(&v12, sel_searchUIHorizontallyScrollingSectionModel_widthDimensionMultiplier);
    return result;
  }

  result = 1.0;
  if (((1 << image_style) & 0x1000100) == 0)
  {
    return 0.5;
  }

  return result;
}

@end