@interface SBHAddWidgetSheetConfiguration
- (Class)listViewClass;
- (NSString)searchPlaceholderText;
- (SBIconListLayoutProvider)listLayoutProvider;
- (SBIconViewProviding)iconViewProvider;
- (id)copyWithZone:(void *)a3;
- (void)setGridSizeClassDomain:(id)a3;
- (void)setGridSizeClassForContentWidth:(id)a3;
- (void)setListViewClass:(Class)a3;
- (void)setSearchPlaceholderText:(id)a3;
- (void)setSearchTintColor:(id)a3;
@end

@implementation SBHAddWidgetSheetConfiguration

- (SBIconListLayoutProvider)listLayoutProvider
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (SBIconViewProviding)iconViewProvider
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setGridSizeClassDomain:(id)a3
{
  v4 = *(self + OBJC_IVAR___SBHAddWidgetSheetConfiguration_gridSizeClassDomain);
  *(self + OBJC_IVAR___SBHAddWidgetSheetConfiguration_gridSizeClassDomain) = a3;
  v3 = a3;
}

- (void)setGridSizeClassForContentWidth:(id)a3
{
  v4 = *(self + OBJC_IVAR___SBHAddWidgetSheetConfiguration_gridSizeClassForContentWidth);
  *(self + OBJC_IVAR___SBHAddWidgetSheetConfiguration_gridSizeClassForContentWidth) = a3;
  v3 = a3;
}

- (NSString)searchPlaceholderText
{
  if (*(self + OBJC_IVAR___SBHAddWidgetSheetConfiguration_searchPlaceholderText + 8))
  {

    v2 = sub_1BEE4705C();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setSearchPlaceholderText:(id)a3
{
  if (a3)
  {
    v4 = sub_1BEE4708C();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___SBHAddWidgetSheetConfiguration_searchPlaceholderText);
  *v6 = v4;
  v6[1] = v5;
}

- (void)setSearchTintColor:(id)a3
{
  v4 = *(self + OBJC_IVAR___SBHAddWidgetSheetConfiguration_searchTintColor);
  *(self + OBJC_IVAR___SBHAddWidgetSheetConfiguration_searchTintColor) = a3;
  v3 = a3;
}

- (Class)listViewClass
{
  result = *(self + OBJC_IVAR___SBHAddWidgetSheetConfiguration_listViewClass);
  if (result)
  {
    return swift_getObjCClassFromMetadata();
  }

  return result;
}

- (void)setListViewClass:(Class)a3
{
  if (a3)
  {
    ObjCClassMetadata = swift_getObjCClassMetadata();
  }

  else
  {
    ObjCClassMetadata = 0;
  }

  *(self + OBJC_IVAR___SBHAddWidgetSheetConfiguration_listViewClass) = ObjCClassMetadata;
}

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  sub_1BEE00230(v6);

  __swift_project_boxed_opaque_existential_0(v6, v6[3]);
  v4 = sub_1BEE476FC();
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v4;
}

@end