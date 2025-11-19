@interface VFXRendererLegacy
- (BOOL)hasRenderableObjects;
- (MTLTexture)depthTexture;
- (MTLTexture)texture;
- (_TtC3VFX17VFXRendererLegacy)initWithCommandQueue:(id)a3;
- (id)postRenderCallback;
- (id)snapshotImageWithSize:(CGSize)a3 deltaTime:(double)a4;
- (id)snapshotWithSize:(CGSize)a3 deltaTime:(double)a4;
- (void)encodeWithCommandBuffer:(id)a3;
- (void)finalizeEncoding;
- (void)setBackgroundColor:(id)a3;
- (void)setDepthTexture:(id)a3;
- (void)setEffect:(id)a3;
- (void)setEnableDeferredRendering:(BOOL)a3;
- (void)setPointOfView:(id)a3;
- (void)setPostRenderCallback:(id)a3;
- (void)setScene:(id)a3;
- (void)setTexture:(id)a3;
@end

@implementation VFXRendererLegacy

- (_TtC3VFX17VFXRendererLegacy)initWithCommandQueue:(id)a3
{
  swift_unknownObjectRetain();
  v4 = sub_1AF0D113C(a3);
  swift_unknownObjectRelease();
  return v4;
}

- (void)setBackgroundColor:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC3VFX17VFXRendererLegacy_backgroundColor);
  *(self + OBJC_IVAR____TtC3VFX17VFXRendererLegacy_backgroundColor) = a3;
  v3 = a3;
}

- (void)setScene:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC3VFX17VFXRendererLegacy_scene);
  *(self + OBJC_IVAR____TtC3VFX17VFXRendererLegacy_scene) = a3;
  v3 = a3;
}

- (void)setEffect:(id)a3
{
  v5 = OBJC_IVAR____TtC3VFX17VFXRendererLegacy_effect;
  v6 = *(self + OBJC_IVAR____TtC3VFX17VFXRendererLegacy_effect);
  *(self + OBJC_IVAR____TtC3VFX17VFXRendererLegacy_effect) = a3;
  v7 = self;
  v8 = a3;

  if (*(self + v5))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
  }

  else
  {
    Strong = 0;
  }

  v10 = *(v7 + OBJC_IVAR____TtC3VFX17VFXRendererLegacy_scene);
  *(v7 + OBJC_IVAR____TtC3VFX17VFXRendererLegacy_scene) = Strong;
}

- (MTLTexture)texture
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setTexture:(id)a3
{
  *(self + OBJC_IVAR____TtC3VFX17VFXRendererLegacy_texture) = a3;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (MTLTexture)depthTexture
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setDepthTexture:(id)a3
{
  *(self + OBJC_IVAR____TtC3VFX17VFXRendererLegacy_depthTexture) = a3;
  swift_unknownObjectRetain_n();
  v6 = self;
  swift_unknownObjectRelease();
  if (a3)
  {
    v5 = *(v6 + OBJC_IVAR____TtC3VFX17VFXRendererLegacy_renderer);
    *(v5 + 448) = [a3 pixelFormat];
    sub_1AF0D8E28();
    swift_unknownObjectRelease();
  }
}

- (void)setPointOfView:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC3VFX17VFXRendererLegacy_pointOfView);
  *(self + OBJC_IVAR____TtC3VFX17VFXRendererLegacy_pointOfView) = a3;
  v3 = a3;
}

- (BOOL)hasRenderableObjects
{
  v2 = self;
  v3 = sub_1AFCBAFD0();

  return v3 & 1;
}

- (void)encodeWithCommandBuffer:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1AFCBB128(a3);
  swift_unknownObjectRelease();
}

- (void)finalizeEncoding
{
  v2 = *(self + OBJC_IVAR____TtC3VFX17VFXRendererLegacy_scene);
  if (v2)
  {
    v4 = v2;
    v7 = self;
    v5 = v4;

    sub_1AF664A64(v6, v5, v7);
  }
}

- (void)setEnableDeferredRendering:(BOOL)a3
{
  *(*(self + OBJC_IVAR____TtC3VFX17VFXRendererLegacy_renderer) + 392) = !a3;
  v3 = self;
  sub_1AF0D8E28();
  sub_1AF0D8E28();
}

- (id)snapshotWithSize:(CGSize)a3 deltaTime:(double)a4
{
  height = a3.height;
  width = a3.width;
  v7 = self;
  v8 = sub_1AFCBB68C(width, height, a4);

  return v8;
}

- (id)snapshotImageWithSize:(CGSize)a3 deltaTime:(double)a4
{
  height = a3.height;
  width = a3.width;
  v7 = self;
  sub_1AFCBB68C(width, height, a4);
  swift_getObjectType();
  MTLTexture.toImage()(v8);
  v10 = v9;

  swift_unknownObjectRelease();

  return v10;
}

- (id)postRenderCallback
{
  if (*(self + OBJC_IVAR____TtC3VFX17VFXRendererLegacy_postRenderCallback))
  {
    v2 = *(self + OBJC_IVAR____TtC3VFX17VFXRendererLegacy_postRenderCallback + 8);
    v5[4] = *(self + OBJC_IVAR____TtC3VFX17VFXRendererLegacy_postRenderCallback);
    v5[5] = v2;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 1107296256;
    v5[2] = sub_1AF756610;
    v5[3] = &unk_1F24E6320;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPostRenderCallback:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_1AFCBC5AC;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC3VFX17VFXRendererLegacy_postRenderCallback);
  v8 = *(self + OBJC_IVAR____TtC3VFX17VFXRendererLegacy_postRenderCallback);
  *v7 = v6;
  v7[1] = v4;

  sub_1AF719C94(v8);
}

@end