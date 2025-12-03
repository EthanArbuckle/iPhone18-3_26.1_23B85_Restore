@interface VFXREBindingMeshData
- (MTLBuffer)buffer;
- (VFXREBindingMeshData)init;
- (void)setBuffer:(id)buffer;
@end

@implementation VFXREBindingMeshData

- (MTLBuffer)buffer
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setBuffer:(id)buffer
{
  *(&self->super.isa + OBJC_IVAR___VFXREBindingMeshData_buffer) = buffer;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (VFXREBindingMeshData)init
{
  *(&self->super.isa + OBJC_IVAR___VFXREBindingMeshData_buffer) = 0;
  *(&self->super.isa + OBJC_IVAR___VFXREBindingMeshData_length) = 0;
  *(&self->super.isa + OBJC_IVAR___VFXREBindingMeshData_format) = 0;
  *(&self->super.isa + OBJC_IVAR___VFXREBindingMeshData_offset) = 0;
  *(&self->super.isa + OBJC_IVAR___VFXREBindingMeshData_stride) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for VFXREBindingMeshData();
  return [(VFXREBindingMeshData *)&v3 init];
}

@end