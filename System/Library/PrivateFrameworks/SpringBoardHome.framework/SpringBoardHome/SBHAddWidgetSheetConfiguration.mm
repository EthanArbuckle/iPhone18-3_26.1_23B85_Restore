@interface SBHAddWidgetSheetConfiguration
- (Class)listViewClass;
- (NSString)searchPlaceholderText;
- (SBIconListLayoutProvider)listLayoutProvider;
- (SBIconViewProviding)iconViewProvider;
- (id)copyWithZone:(void *)zone;
- (void)setGridSizeClassDomain:(id)domain;
- (void)setGridSizeClassForContentWidth:(id)width;
- (void)setListViewClass:(Class)class;
- (void)setSearchPlaceholderText:(id)text;
- (void)setSearchTintColor:(id)color;
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

- (void)setGridSizeClassDomain:(id)domain
{
  v4 = *(self + OBJC_IVAR___SBHAddWidgetSheetConfiguration_gridSizeClassDomain);
  *(self + OBJC_IVAR___SBHAddWidgetSheetConfiguration_gridSizeClassDomain) = domain;
  domainCopy = domain;
}

- (void)setGridSizeClassForContentWidth:(id)width
{
  v4 = *(self + OBJC_IVAR___SBHAddWidgetSheetConfiguration_gridSizeClassForContentWidth);
  *(self + OBJC_IVAR___SBHAddWidgetSheetConfiguration_gridSizeClassForContentWidth) = width;
  widthCopy = width;
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

- (void)setSearchPlaceholderText:(id)text
{
  if (text)
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

- (void)setSearchTintColor:(id)color
{
  v4 = *(self + OBJC_IVAR___SBHAddWidgetSheetConfiguration_searchTintColor);
  *(self + OBJC_IVAR___SBHAddWidgetSheetConfiguration_searchTintColor) = color;
  colorCopy = color;
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

- (void)setListViewClass:(Class)class
{
  if (class)
  {
    ObjCClassMetadata = swift_getObjCClassMetadata();
  }

  else
  {
    ObjCClassMetadata = 0;
  }

  *(self + OBJC_IVAR___SBHAddWidgetSheetConfiguration_listViewClass) = ObjCClassMetadata;
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  sub_1BEE00230(v6);

  __swift_project_boxed_opaque_existential_0(v6, v6[3]);
  v4 = sub_1BEE476FC();
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v4;
}

@end