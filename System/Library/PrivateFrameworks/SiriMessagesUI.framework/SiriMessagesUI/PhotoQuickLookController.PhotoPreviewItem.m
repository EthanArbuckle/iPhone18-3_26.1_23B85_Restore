@interface PhotoQuickLookController.PhotoPreviewItem
- (NSString)previewItemTitle;
- (NSURL)previewItemURL;
@end

@implementation PhotoQuickLookController.PhotoPreviewItem

- (NSString)previewItemTitle
{
  sub_268038E60();
  if (v2)
  {
    v3 = sub_26804E6BC();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSURL)previewItemURL
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242C60);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  sub_268038F94(&v8 - v3);
  v5 = sub_26804BD7C();
  v6 = 0;
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) != 1)
  {
    v6 = sub_26804BD2C();
    (*(*(v5 - 8) + 8))(v4, v5);
  }

  return v6;
}

@end