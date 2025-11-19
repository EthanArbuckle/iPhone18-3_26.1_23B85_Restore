@interface PhotosDynamicHeaderLayoutProvider
- (_TtC12PhotosUICore33PhotosDynamicHeaderLayoutProvider)init;
- (id)createGlobalHeaderLayoutForPhotosViewModel:(id)a3 dataSource:(id)a4 spec:(id)a5;
- (void)configureGlobalHeaderLayout:(id)a3 dataSource:(id)a4 spec:(id)a5;
@end

@implementation PhotosDynamicHeaderLayoutProvider

- (id)createGlobalHeaderLayoutForPhotosViewModel:(id)a3 dataSource:(id)a4 spec:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_1A4425524(v8, v9, v10);
}

- (void)configureGlobalHeaderLayout:(id)a3 dataSource:(id)a4 spec:(id)a5
{
  type metadata accessor for PhotosDynamicHeaderLayout();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = v8;
    v10 = MEMORY[0x1E69E7D40];
    v11 = *((*MEMORY[0x1E69E7D40] & *v8) + 0xC8);
    v14 = a4;
    v12 = a3;
    v13 = a5;
    v11(a4);
    (*((*v10 & *v9) + 0xE0))(v13);
  }
}

- (_TtC12PhotosUICore33PhotosDynamicHeaderLayoutProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end