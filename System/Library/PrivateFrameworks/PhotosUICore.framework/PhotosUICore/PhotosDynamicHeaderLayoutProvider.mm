@interface PhotosDynamicHeaderLayoutProvider
- (_TtC12PhotosUICore33PhotosDynamicHeaderLayoutProvider)init;
- (id)createGlobalHeaderLayoutForPhotosViewModel:(id)model dataSource:(id)source spec:(id)spec;
- (void)configureGlobalHeaderLayout:(id)layout dataSource:(id)source spec:(id)spec;
@end

@implementation PhotosDynamicHeaderLayoutProvider

- (id)createGlobalHeaderLayoutForPhotosViewModel:(id)model dataSource:(id)source spec:(id)spec
{
  modelCopy = model;
  sourceCopy = source;
  specCopy = spec;
  selfCopy = self;
  sub_1A4425524(modelCopy, sourceCopy, specCopy);
}

- (void)configureGlobalHeaderLayout:(id)layout dataSource:(id)source spec:(id)spec
{
  type metadata accessor for PhotosDynamicHeaderLayout();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = v8;
    v10 = MEMORY[0x1E69E7D40];
    v11 = *((*MEMORY[0x1E69E7D40] & *v8) + 0xC8);
    sourceCopy = source;
    layoutCopy = layout;
    specCopy = spec;
    v11(source);
    (*((*v10 & *v9) + 0xE0))(specCopy);
  }
}

- (_TtC12PhotosUICore33PhotosDynamicHeaderLayoutProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end