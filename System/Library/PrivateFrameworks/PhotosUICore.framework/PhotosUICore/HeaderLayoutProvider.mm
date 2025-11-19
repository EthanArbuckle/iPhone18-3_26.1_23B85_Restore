@interface HeaderLayoutProvider
- (_TtC12PhotosUICoreP33_5DC3BAD9D894674C1E26919FC61C1C2C20HeaderLayoutProvider)init;
- (id)createGlobalHeaderLayoutForPhotosViewModel:(id)a3 dataSource:(id)a4 spec:(id)a5;
- (void)configureGlobalHeaderLayout:(id)a3 dataSource:(id)a4 spec:(id)a5;
@end

@implementation HeaderLayoutProvider

- (id)createGlobalHeaderLayoutForPhotosViewModel:(id)a3 dataSource:(id)a4 spec:(id)a5
{
  v5 = [objc_allocWithZone(type metadata accessor for TopInsetSpacerLayout()) init];

  return v5;
}

- (void)configureGlobalHeaderLayout:(id)a3 dataSource:(id)a4 spec:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_1A4A09DDC(v8, v10);
}

- (_TtC12PhotosUICoreP33_5DC3BAD9D894674C1E26919FC61C1C2C20HeaderLayoutProvider)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for HeaderLayoutProvider();
  return [(HeaderLayoutProvider *)&v3 init];
}

@end