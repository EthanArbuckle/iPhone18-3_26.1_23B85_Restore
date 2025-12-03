@interface VFXRendererLegacy
- (BOOL)hasRenderableObjects;
- (MTLTexture)depthTexture;
- (MTLTexture)texture;
- (_TtC3VFX17VFXRendererLegacy)initWithCommandQueue:(id)queue;
- (id)postRenderCallback;
- (id)snapshotImageWithSize:(CGSize)size deltaTime:(double)time;
- (id)snapshotWithSize:(CGSize)size deltaTime:(double)time;
- (void)encodeWithCommandBuffer:(id)buffer;
- (void)finalizeEncoding;
- (void)setBackgroundColor:(id)color;
- (void)setDepthTexture:(id)texture;
- (void)setEffect:(id)effect;
- (void)setEnableDeferredRendering:(BOOL)rendering;
- (void)setPointOfView:(id)view;
- (void)setPostRenderCallback:(id)callback;
- (void)setScene:(id)scene;
- (void)setTexture:(id)texture;
@end

@implementation VFXRendererLegacy

- (_TtC3VFX17VFXRendererLegacy)initWithCommandQueue:(id)queue
{
  swift_unknownObjectRetain();
  v4 = sub_1AF0D113C(queue);
  swift_unknownObjectRelease();
  return v4;
}

- (void)setBackgroundColor:(id)color
{
  v4 = *(self + OBJC_IVAR____TtC3VFX17VFXRendererLegacy_backgroundColor);
  *(self + OBJC_IVAR____TtC3VFX17VFXRendererLegacy_backgroundColor) = color;
  colorCopy = color;
}

- (void)setScene:(id)scene
{
  v4 = *(self + OBJC_IVAR____TtC3VFX17VFXRendererLegacy_scene);
  *(self + OBJC_IVAR____TtC3VFX17VFXRendererLegacy_scene) = scene;
  sceneCopy = scene;
}

- (void)setEffect:(id)effect
{
  v5 = OBJC_IVAR____TtC3VFX17VFXRendererLegacy_effect;
  v6 = *(self + OBJC_IVAR____TtC3VFX17VFXRendererLegacy_effect);
  *(self + OBJC_IVAR____TtC3VFX17VFXRendererLegacy_effect) = effect;
  selfCopy = self;
  effectCopy = effect;

  if (*(self + v5))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
  }

  else
  {
    Strong = 0;
  }

  v10 = *(selfCopy + OBJC_IVAR____TtC3VFX17VFXRendererLegacy_scene);
  *(selfCopy + OBJC_IVAR____TtC3VFX17VFXRendererLegacy_scene) = Strong;
}

- (MTLTexture)texture
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setTexture:(id)texture
{
  *(self + OBJC_IVAR____TtC3VFX17VFXRendererLegacy_texture) = texture;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (MTLTexture)depthTexture
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setDepthTexture:(id)texture
{
  *(self + OBJC_IVAR____TtC3VFX17VFXRendererLegacy_depthTexture) = texture;
  swift_unknownObjectRetain_n();
  selfCopy = self;
  swift_unknownObjectRelease();
  if (texture)
  {
    v5 = *(selfCopy + OBJC_IVAR____TtC3VFX17VFXRendererLegacy_renderer);
    *(v5 + 448) = [texture pixelFormat];
    sub_1AF0D8E28();
    swift_unknownObjectRelease();
  }
}

- (void)setPointOfView:(id)view
{
  v4 = *(self + OBJC_IVAR____TtC3VFX17VFXRendererLegacy_pointOfView);
  *(self + OBJC_IVAR____TtC3VFX17VFXRendererLegacy_pointOfView) = view;
  viewCopy = view;
}

- (BOOL)hasRenderableObjects
{
  selfCopy = self;
  v3 = sub_1AFCBAFD0();

  return v3 & 1;
}

- (void)encodeWithCommandBuffer:(id)buffer
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1AFCBB128(buffer);
  swift_unknownObjectRelease();
}

- (void)finalizeEncoding
{
  v2 = *(self + OBJC_IVAR____TtC3VFX17VFXRendererLegacy_scene);
  if (v2)
  {
    v4 = v2;
    selfCopy = self;
    v5 = v4;

    sub_1AF664A64(v6, v5, selfCopy);
  }
}

- (void)setEnableDeferredRendering:(BOOL)rendering
{
  *(*(self + OBJC_IVAR____TtC3VFX17VFXRendererLegacy_renderer) + 392) = !rendering;
  selfCopy = self;
  sub_1AF0D8E28();
  sub_1AF0D8E28();
}

- (id)snapshotWithSize:(CGSize)size deltaTime:(double)time
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  v8 = sub_1AFCBB68C(width, height, time);

  return v8;
}

- (id)snapshotImageWithSize:(CGSize)size deltaTime:(double)time
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  sub_1AFCBB68C(width, height, time);
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

- (void)setPostRenderCallback:(id)callback
{
  v4 = _Block_copy(callback);
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