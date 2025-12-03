@interface ATXFaceGalleryConfiguration(PRSAdditions)
- (PRSPosterGalleryLayout)posterBoardRepresentation;
- (id)initWithPosterBoardRepresentation:()PRSAdditions;
@end

@implementation ATXFaceGalleryConfiguration(PRSAdditions)

- (id)initWithPosterBoardRepresentation:()PRSAdditions
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = &off_1F4280868;
  v5 = objc_msgSendSuper2(&v10, sel_init);
  if (v5)
  {
    sections = [v4 sections];
    v7 = [sections bs_map:&__block_literal_global_4];
    [v5 setSections:v7];

    locale = [v4 locale];
    [v5 setLocale:locale];

    [v5 setSource:{objc_msgSend(v4, "source") != 0}];
  }

  return v5;
}

- (PRSPosterGalleryLayout)posterBoardRepresentation
{
  v1 = [[PRSPosterGalleryLayout alloc] initWithProactiveRepresentation:self];

  return v1;
}

@end