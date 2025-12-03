@interface ATXFaceGallerySection(PRSAdditions)
- (PRSPosterGallerySection)posterBoardRepresentation;
- (id)initWithPosterBoardRepresentation:()PRSAdditions;
@end

@implementation ATXFaceGallerySection(PRSAdditions)

- (id)initWithPosterBoardRepresentation:()PRSAdditions
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = &off_1F4282AF8;
  v5 = objc_msgSendSuper2(&v17, sel_init);
  if (v5)
  {
    localizedTitle = [v4 localizedTitle];
    [v5 setLocalizedTitle:localizedTitle];

    symbolImageName = [v4 symbolImageName];
    [v5 setSymbolImageName:symbolImageName];

    symbolColorName = [v4 symbolColorName];
    [v5 setSymbolColorName:symbolColorName];

    localizedSubtitle = [v4 localizedSubtitle];
    [v5 setLocalizedSubtitle:localizedSubtitle];

    localizedDescriptiveText = [v4 localizedDescriptiveText];
    [v5 setLocalizedDescriptiveText:localizedDescriptiveText];

    unityDescription = [v4 unityDescription];
    [v5 setUnityDescription:unityDescription];

    type = [v4 type];
    if ((type - 1) >= 4)
    {
      v13 = 0;
    }

    else
    {
      v13 = type;
    }

    [v5 setType:v13];
    items = [v4 items];
    v15 = [items bs_map:&__block_literal_global_13];
    [v5 setItems:v15];
  }

  return v5;
}

- (PRSPosterGallerySection)posterBoardRepresentation
{
  v1 = [[PRSPosterGallerySection alloc] initWithProactiveRepresentation:self];

  return v1;
}

@end