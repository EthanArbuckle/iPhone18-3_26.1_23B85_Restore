@interface HeaderLayoutProvider
- (_TtC12PhotosUICoreP33_5DC3BAD9D894674C1E26919FC61C1C2C20HeaderLayoutProvider)init;
- (id)createGlobalHeaderLayoutForPhotosViewModel:(id)model dataSource:(id)source spec:(id)spec;
- (void)configureGlobalHeaderLayout:(id)layout dataSource:(id)source spec:(id)spec;
@end

@implementation HeaderLayoutProvider

- (id)createGlobalHeaderLayoutForPhotosViewModel:(id)model dataSource:(id)source spec:(id)spec
{
  v5 = [objc_allocWithZone(type metadata accessor for TopInsetSpacerLayout()) init];

  return v5;
}

- (void)configureGlobalHeaderLayout:(id)layout dataSource:(id)source spec:(id)spec
{
  layoutCopy = layout;
  sourceCopy = source;
  specCopy = spec;
  selfCopy = self;
  sub_1A4A09DDC(layoutCopy, specCopy);
}

- (_TtC12PhotosUICoreP33_5DC3BAD9D894674C1E26919FC61C1C2C20HeaderLayoutProvider)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for HeaderLayoutProvider();
  return [(HeaderLayoutProvider *)&v3 init];
}

@end