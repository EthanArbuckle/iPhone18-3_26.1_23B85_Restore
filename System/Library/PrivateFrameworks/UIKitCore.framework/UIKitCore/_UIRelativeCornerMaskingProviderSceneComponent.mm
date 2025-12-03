@interface _UIRelativeCornerMaskingProviderSceneComponent
+ (NSString)componentKey;
- (UIScene)__scene;
- (UIScene)_scene;
- (UITraitCollection)_traitOverrides;
- (UITraitCollection)traitOverrides;
- (_TtC5UIKit33_UIConcentricCornerMaskingSupport)concentricMaskingSupport;
- (_UIRelativeCornerMaskingProviderSceneComponent)init;
- (_UIRelativeCornerMaskingProviderSceneComponent)initWithScene:(id)scene;
- (double)resolvedCornerRadiusForDescedant:(id)descedant context:(id)context corner:(unint64_t)corner;
- (id)registerDescendant:(id)descendant forGeometryOrMaskingConfigurationChanges:(id)changes;
- (void)setConcentricMaskingSupport:(id)support;
- (void)setTraitOverrides:(id)overrides;
@end

@implementation _UIRelativeCornerMaskingProviderSceneComponent

- (_UIRelativeCornerMaskingProviderSceneComponent)initWithScene:(id)scene
{
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR____UIRelativeCornerMaskingProviderSceneComponent____lazy_storage___traitOverrides) = 0;
  *(self + OBJC_IVAR____UIRelativeCornerMaskingProviderSceneComponent____lazy_storage___concentricMaskingSupport) = 0;
  swift_unknownObjectWeakAssign();
  v5.receiver = self;
  v5.super_class = _UIRelativeCornerMaskingProviderSceneComponent;
  return [(_UIRelativeCornerMaskingProviderSceneComponent *)&v5 init];
}

- (UITraitCollection)_traitOverrides
{
  traitOverrides = [(_UIRelativeCornerMaskingProviderSceneComponent *)self traitOverrides];

  return traitOverrides;
}

+ (NSString)componentKey
{
  v2 = sub_18A4A7258();

  return v2;
}

- (UITraitCollection)traitOverrides
{
  selfCopy = self;
  v3 = sub_188AD316C();

  return v3;
}

- (double)resolvedCornerRadiusForDescedant:(id)descedant context:(id)context corner:(unint64_t)corner
{
  swift_unknownObjectRetain();
  contextCopy = context;
  selfCopy = self;
  sub_188AFC6E4(descedant, corner);
  v12 = v11;
  swift_unknownObjectRelease();

  return v12;
}

- (UIScene)_scene
{
  __scene = [(_UIRelativeCornerMaskingProviderSceneComponent *)self __scene];

  return __scene;
}

- (UIScene)__scene
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC5UIKit33_UIConcentricCornerMaskingSupport)concentricMaskingSupport
{
  selfCopy = self;
  v3 = sub_188AFCAB8();

  return v3;
}

- (id)registerDescendant:(id)descendant forGeometryOrMaskingConfigurationChanges:(id)changes
{
  v6 = _Block_copy(changes);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  swift_unknownObjectRetain();
  selfCopy = self;
  v9 = sub_188BB99F8(descendant, sub_188A4AA04, v7);
  v11 = v10;
  swift_unknownObjectRelease();

  v14[4] = v9;
  v14[5] = v11;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_188A4A8F0;
  v14[3] = &block_descriptor_23;
  v12 = _Block_copy(v14);

  return v12;
}

- (void)setTraitOverrides:(id)overrides
{
  v4 = *(self + OBJC_IVAR____UIRelativeCornerMaskingProviderSceneComponent____lazy_storage___traitOverrides);
  *(self + OBJC_IVAR____UIRelativeCornerMaskingProviderSceneComponent____lazy_storage___traitOverrides) = overrides;
  overridesCopy = overrides;
}

- (void)setConcentricMaskingSupport:(id)support
{
  v4 = *(self + OBJC_IVAR____UIRelativeCornerMaskingProviderSceneComponent____lazy_storage___concentricMaskingSupport);
  *(self + OBJC_IVAR____UIRelativeCornerMaskingProviderSceneComponent____lazy_storage___concentricMaskingSupport) = support;
  supportCopy = support;
}

- (_UIRelativeCornerMaskingProviderSceneComponent)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end