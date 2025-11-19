@interface SASBookendViewProvider
+ (BOOL)willShowAnimationWithLogo;
- (BOOL)isAnimating;
- (BOOL)willAnimateWithLogo;
- (CGImage)layerSnapshot;
- (CGRect)largestRectForAnimation;
- (NSNumber)totalAnimationDuration;
- (NSString)currentLanguage;
- (SASBookendViewProvider)init;
- (SASBookendViewProvider)initWithBookendType:(unint64_t)a3 callbacks:(id)a4;
- (UIView)view;
- (id)animationConstrainingView;
- (void)advanceToEndOfAnimation;
- (void)pauseAnimation;
- (void)setAnimationConfiguration:(id)a3;
- (void)setBackgroundData:(id)a3;
- (void)setBackgroundTexture:(id)a3;
- (void)setBackgroundTextureDataSource:(id)a3;
- (void)setCallbackConfiguration:(id)a3;
- (void)setView:(id)a3;
- (void)shouldRenderBackgroundTexture:(BOOL)a3;
- (void)startAnimation;
- (void)stopAnimation;
- (void)updateLanguages:(id)a3;
@end

@implementation SASBookendViewProvider

- (UIView)view
{
  v2 = self;
  v3 = sub_265A66D7C();

  return v3;
}

- (void)setView:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___SASBookendViewProvider____lazy_storage___view);
  *(&self->super.isa + OBJC_IVAR___SASBookendViewProvider____lazy_storage___view) = a3;
  v3 = a3;
}

- (SASBookendViewProvider)initWithBookendType:(unint64_t)a3 callbacks:(id)a4
{
  v6 = a4;
  v7 = sub_265A69688(a3, a4);

  return v7;
}

- (NSString)currentLanguage
{
  v3 = *&self->$__lazy_storage_$_view[OBJC_IVAR___SASBookendViewProvider_viewWrapper];
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 24);
  v6 = self;
  swift_unknownObjectRetain();
  v7 = v5(ObjectType, v3);
  v9 = v8;
  swift_unknownObjectRelease();
  if (v7)
  {
    v10 = swift_getObjectType();
    (*(v9 + 16))(v10, v9);
    v12 = v11;

    swift_unknownObjectRelease();
    if (v12)
    {
      v13 = sub_265AA7540();

      v14 = v13;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v14 = 0;
LABEL_6:

  return v14;
}

- (NSNumber)totalAnimationDuration
{
  v2 = self;
  v3 = SASBookendViewProvider.totalAnimationDuration.getter();

  return v3;
}

- (void)setCallbackConfiguration:(id)a3
{
  v5 = *(&self->super.isa + OBJC_IVAR___SASBookendViewProvider_viewWrapper);
  swift_getObjectType();
  v6 = swift_conformsToProtocol2();
  if (v6)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = v6;
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 48);
    v11 = a3;
    v12 = self;
    swift_unknownObjectRetain();
    v10(a3, ObjectType, v8);
    swift_unknownObjectRelease();
  }
}

- (void)setAnimationConfiguration:(id)a3
{
  v5 = *(&self->super.isa + OBJC_IVAR___SASBookendViewProvider_viewWrapper);
  swift_getObjectType();
  v6 = swift_conformsToProtocol2();
  if (v6)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = v6;
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 40);
    v11 = a3;
    v12 = self;
    swift_unknownObjectRetain();
    v10(v11, ObjectType, v8);
    swift_unknownObjectRelease();
  }
}

- (BOOL)isAnimating
{
  v3 = *&self->$__lazy_storage_$_view[OBJC_IVAR___SASBookendViewProvider_viewWrapper];
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 24);
  v6 = self;
  swift_unknownObjectRetain();
  v7 = v5(ObjectType, v3);
  v9 = v8;
  swift_unknownObjectRelease();
  if (v7)
  {
    v10 = swift_getObjectType();
    v11 = (*(v9 + 8))(v10, v9);
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

- (BOOL)willAnimateWithLogo
{
  v3 = *&self->$__lazy_storage_$_view[OBJC_IVAR___SASBookendViewProvider_viewWrapper];
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 24);
  v6 = self;
  swift_unknownObjectRetain();
  v7 = v5(ObjectType, v3);
  v9 = v8;
  swift_unknownObjectRelease();
  if (v7)
  {
    v10 = swift_getObjectType();
    v11 = (*(v9 + 32))(v10, v9);
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

- (void)advanceToEndOfAnimation
{
  v2 = self;
  SASBookendViewProvider.advanceToEndOfAnimation()();
}

- (void)startAnimation
{
  v2 = self;
  SASBookendViewProvider.startAnimation()();
}

- (void)stopAnimation
{
  v2 = self;
  SASBookendViewProvider.stopAnimation()();
}

- (void)pauseAnimation
{
  v2 = self;
  SASBookendViewProvider.pauseAnimation()();
}

- (void)updateLanguages:(id)a3
{
  v4 = sub_265AA7640();
  v5 = self;
  SASBookendViewProvider.updateLanguages(_:)(v4);
}

- (void)setBackgroundData:(id)a3
{
  v4 = a3;
  v8 = self;
  v5 = sub_265AA6D90();
  v7 = v6;

  SASBookendViewProvider.setBackgroundData(_:)(v5, v7);
  sub_265A6572C(v5, v7);
}

- (void)setBackgroundTexture:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  SASBookendViewProvider.setBackgroundTexture(_:)(a3);
  swift_unknownObjectRelease();
}

- (void)setBackgroundTextureDataSource:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  SASBookendViewProvider.setBackgroundTextureDataSource(_:)(a3);
  swift_unknownObjectRelease();
}

- (void)shouldRenderBackgroundTexture:(BOOL)a3
{
  v3 = a3;
  v5 = *&self->$__lazy_storage_$_view[OBJC_IVAR___SASBookendViewProvider_viewWrapper];
  ObjectType = swift_getObjectType();
  v7 = *(v5 + 24);
  v12 = self;
  swift_unknownObjectRetain();
  v8 = v7(ObjectType, v5);
  v10 = v9;
  swift_unknownObjectRelease();
  if (v8)
  {
    v11 = swift_getObjectType();
    (*(v10 + 40))(v3, v11, v10);
    swift_unknownObjectRelease();
  }
}

+ (BOOL)willShowAnimationWithLogo
{
  v2 = [objc_allocWithZone(SASBookendViewProvider) initWithBookendType:0 callbacks:0];
  v3 = [v2 willAnimateWithLogo];

  return v3;
}

- (CGImage)layerSnapshot
{
  v3 = *(&self->super.isa + OBJC_IVAR___SASBookendViewProvider_viewWrapper);
  swift_getObjectType();
  v4 = swift_conformsToProtocol2();
  if (v4)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v11 = 0;
  }

  else
  {
    v6 = v4;
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 56);
    v9 = self;
    swift_unknownObjectRetain();
    v10 = v8(ObjectType, v6);
    swift_unknownObjectRelease();

    v11 = v10;
  }

  return v11;
}

- (CGRect)largestRectForAnimation
{
  v3 = *(&self->super.isa + OBJC_IVAR___SASBookendViewProvider_viewWrapper);
  swift_getObjectType();
  v4 = swift_conformsToProtocol2();
  v5 = 0.0;
  if (v4)
  {
    v6 = v3 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  if (!v6)
  {
    v10 = v4;
    ObjectType = swift_getObjectType();
    v12 = *(v10 + 72);
    v13 = self;
    swift_unknownObjectRetain();
    v14 = v12(ObjectType, v10);
    v16 = v15;
    v18 = v17;
    v20 = v19;
    swift_unknownObjectRelease();

    v9 = v20;
    v8 = v18;
    v7 = v16;
    v5 = v14;
  }

  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v5;
  return result;
}

- (id)animationConstrainingView
{
  v3 = *(&self->super.isa + OBJC_IVAR___SASBookendViewProvider_viewWrapper);
  swift_getObjectType();
  v4 = swift_conformsToProtocol2();
  if (v4)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v11 = 0;
  }

  else
  {
    v6 = v4;
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 64);
    v9 = self;
    swift_unknownObjectRetain();
    v10 = v8(ObjectType, v6);
    swift_unknownObjectRelease();

    v11 = v10;
  }

  return v11;
}

- (SASBookendViewProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end