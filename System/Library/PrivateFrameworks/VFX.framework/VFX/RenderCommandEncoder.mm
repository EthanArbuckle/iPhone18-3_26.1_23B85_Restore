@interface RenderCommandEncoder
- (_TtC3VFX20RenderCommandEncoder)init;
- (_TtC3VFX20RenderCommandEncoder)initWithEncoder:(id)encoder;
- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset;
- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset instanceCount:(unint64_t)instanceCount;
- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset instanceCount:(unint64_t)instanceCount baseVertex:(int64_t)vertex baseInstance:(unint64_t)self0;
- (void)drawIndexedPrimitives:(unint64_t)primitives indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)bufferOffset;
- (void)drawPrimitives:(unint64_t)primitives indirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset;
- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count;
- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count instanceCount:(unint64_t)instanceCount;
- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count instanceCount:(unint64_t)instanceCount baseInstance:(unint64_t)instance;
@end

@implementation RenderCommandEncoder

- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count
{
  if (count)
  {
    v8.receiver = self;
    v8.super_class = swift_getObjectType();
    [(RGCachedRenderCommandEncoder *)&v8 drawPrimitives:primitives vertexStart:start vertexCount:count];
  }
}

- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count instanceCount:(unint64_t)instanceCount
{
  ObjectType = swift_getObjectType();
  if (count)
  {
    if (instanceCount == 1)
    {
      v12.receiver = self;
      v12.super_class = ObjectType;
      [(RGCachedRenderCommandEncoder *)&v12 drawPrimitives:primitives vertexStart:start vertexCount:count];
    }

    else
    {
      v13.receiver = self;
      v13.super_class = ObjectType;
      [(RGCachedRenderCommandEncoder *)&v13 drawPrimitives:primitives vertexStart:start vertexCount:count instanceCount:instanceCount];
    }
  }
}

- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count instanceCount:(unint64_t)instanceCount baseInstance:(unint64_t)instance
{
  ObjectType = swift_getObjectType();
  if (count)
  {
    if (instanceCount != 1 || instance)
    {
      if (instance)
      {
        v15.receiver = self;
        v15.super_class = ObjectType;
        [(RGCachedRenderCommandEncoder *)&v15 drawPrimitives:primitives vertexStart:start vertexCount:count instanceCount:instanceCount baseInstance:instance];
      }

      else
      {
        v16.receiver = self;
        v16.super_class = ObjectType;
        [(RGCachedRenderCommandEncoder *)&v16 drawPrimitives:primitives vertexStart:start vertexCount:count instanceCount:instanceCount];
      }
    }

    else
    {
      v14.receiver = self;
      v14.super_class = ObjectType;
      [(RGCachedRenderCommandEncoder *)&v14 drawPrimitives:primitives vertexStart:start vertexCount:count];
    }
  }
}

- (void)drawPrimitives:(unint64_t)primitives indirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset
{
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  [(RGCachedRenderCommandEncoder *)&v8 drawPrimitives:primitives indirectBuffer:buffer indirectBufferOffset:offset];
}

- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset
{
  if (count)
  {
    v12.receiver = self;
    v12.super_class = swift_getObjectType();
    [(RGCachedRenderCommandEncoder *)&v12 drawIndexedPrimitives:primitives indexCount:count indexType:type indexBuffer:buffer indexBufferOffset:offset];
  }
}

- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset instanceCount:(unint64_t)instanceCount
{
  ObjectType = swift_getObjectType();
  if (count)
  {
    if (instanceCount == 1)
    {
      v16.receiver = self;
      v16.super_class = ObjectType;
      [(RGCachedRenderCommandEncoder *)&v16 drawIndexedPrimitives:primitives indexCount:count indexType:type indexBuffer:buffer indexBufferOffset:offset];
    }

    else
    {
      v17.receiver = self;
      v17.super_class = ObjectType;
      [(RGCachedRenderCommandEncoder *)&v17 drawIndexedPrimitives:primitives indexCount:count indexType:type indexBuffer:buffer indexBufferOffset:offset instanceCount:instanceCount];
    }
  }
}

- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset instanceCount:(unint64_t)instanceCount baseVertex:(int64_t)vertex baseInstance:(unint64_t)self0
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1AF6F6210(primitives, count, type, buffer, offset, instanceCount, vertex, instance);
  swift_unknownObjectRelease();
}

- (void)drawIndexedPrimitives:(unint64_t)primitives indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)bufferOffset
{
  v14.receiver = self;
  v14.super_class = swift_getObjectType();
  [(RGCachedRenderCommandEncoder *)&v14 drawIndexedPrimitives:primitives indexType:type indexBuffer:buffer indexBufferOffset:offset indirectBuffer:indirectBuffer indirectBufferOffset:bufferOffset];
}

- (_TtC3VFX20RenderCommandEncoder)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(RGCachedRenderCommandEncoder *)&v3 init];
}

- (_TtC3VFX20RenderCommandEncoder)initWithEncoder:(id)encoder
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  return [(RGCachedRenderCommandEncoder *)&v5 initWithEncoder:encoder];
}

@end