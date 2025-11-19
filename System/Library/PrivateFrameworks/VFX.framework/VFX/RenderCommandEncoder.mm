@interface RenderCommandEncoder
- (_TtC3VFX20RenderCommandEncoder)init;
- (_TtC3VFX20RenderCommandEncoder)initWithEncoder:(id)a3;
- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(id)a6 indexBufferOffset:(unint64_t)a7;
- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(id)a6 indexBufferOffset:(unint64_t)a7 instanceCount:(unint64_t)a8;
- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(id)a6 indexBufferOffset:(unint64_t)a7 instanceCount:(unint64_t)a8 baseVertex:(int64_t)a9 baseInstance:(unint64_t)a10;
- (void)drawIndexedPrimitives:(unint64_t)a3 indexType:(unint64_t)a4 indexBuffer:(id)a5 indexBufferOffset:(unint64_t)a6 indirectBuffer:(id)a7 indirectBufferOffset:(unint64_t)a8;
- (void)drawPrimitives:(unint64_t)a3 indirectBuffer:(id)a4 indirectBufferOffset:(unint64_t)a5;
- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5;
- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5 instanceCount:(unint64_t)a6;
- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5 instanceCount:(unint64_t)a6 baseInstance:(unint64_t)a7;
@end

@implementation RenderCommandEncoder

- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5
{
  if (a5)
  {
    v8.receiver = self;
    v8.super_class = swift_getObjectType();
    [(RGCachedRenderCommandEncoder *)&v8 drawPrimitives:a3 vertexStart:a4 vertexCount:a5];
  }
}

- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5 instanceCount:(unint64_t)a6
{
  ObjectType = swift_getObjectType();
  if (a5)
  {
    if (a6 == 1)
    {
      v12.receiver = self;
      v12.super_class = ObjectType;
      [(RGCachedRenderCommandEncoder *)&v12 drawPrimitives:a3 vertexStart:a4 vertexCount:a5];
    }

    else
    {
      v13.receiver = self;
      v13.super_class = ObjectType;
      [(RGCachedRenderCommandEncoder *)&v13 drawPrimitives:a3 vertexStart:a4 vertexCount:a5 instanceCount:a6];
    }
  }
}

- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5 instanceCount:(unint64_t)a6 baseInstance:(unint64_t)a7
{
  ObjectType = swift_getObjectType();
  if (a5)
  {
    if (a6 != 1 || a7)
    {
      if (a7)
      {
        v15.receiver = self;
        v15.super_class = ObjectType;
        [(RGCachedRenderCommandEncoder *)&v15 drawPrimitives:a3 vertexStart:a4 vertexCount:a5 instanceCount:a6 baseInstance:a7];
      }

      else
      {
        v16.receiver = self;
        v16.super_class = ObjectType;
        [(RGCachedRenderCommandEncoder *)&v16 drawPrimitives:a3 vertexStart:a4 vertexCount:a5 instanceCount:a6];
      }
    }

    else
    {
      v14.receiver = self;
      v14.super_class = ObjectType;
      [(RGCachedRenderCommandEncoder *)&v14 drawPrimitives:a3 vertexStart:a4 vertexCount:a5];
    }
  }
}

- (void)drawPrimitives:(unint64_t)a3 indirectBuffer:(id)a4 indirectBufferOffset:(unint64_t)a5
{
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  [(RGCachedRenderCommandEncoder *)&v8 drawPrimitives:a3 indirectBuffer:a4 indirectBufferOffset:a5];
}

- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(id)a6 indexBufferOffset:(unint64_t)a7
{
  if (a4)
  {
    v12.receiver = self;
    v12.super_class = swift_getObjectType();
    [(RGCachedRenderCommandEncoder *)&v12 drawIndexedPrimitives:a3 indexCount:a4 indexType:a5 indexBuffer:a6 indexBufferOffset:a7];
  }
}

- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(id)a6 indexBufferOffset:(unint64_t)a7 instanceCount:(unint64_t)a8
{
  ObjectType = swift_getObjectType();
  if (a4)
  {
    if (a8 == 1)
    {
      v16.receiver = self;
      v16.super_class = ObjectType;
      [(RGCachedRenderCommandEncoder *)&v16 drawIndexedPrimitives:a3 indexCount:a4 indexType:a5 indexBuffer:a6 indexBufferOffset:a7];
    }

    else
    {
      v17.receiver = self;
      v17.super_class = ObjectType;
      [(RGCachedRenderCommandEncoder *)&v17 drawIndexedPrimitives:a3 indexCount:a4 indexType:a5 indexBuffer:a6 indexBufferOffset:a7 instanceCount:a8];
    }
  }
}

- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(id)a6 indexBufferOffset:(unint64_t)a7 instanceCount:(unint64_t)a8 baseVertex:(int64_t)a9 baseInstance:(unint64_t)a10
{
  swift_unknownObjectRetain();
  v17 = self;
  sub_1AF6F6210(a3, a4, a5, a6, a7, a8, a9, a10);
  swift_unknownObjectRelease();
}

- (void)drawIndexedPrimitives:(unint64_t)a3 indexType:(unint64_t)a4 indexBuffer:(id)a5 indexBufferOffset:(unint64_t)a6 indirectBuffer:(id)a7 indirectBufferOffset:(unint64_t)a8
{
  v14.receiver = self;
  v14.super_class = swift_getObjectType();
  [(RGCachedRenderCommandEncoder *)&v14 drawIndexedPrimitives:a3 indexType:a4 indexBuffer:a5 indexBufferOffset:a6 indirectBuffer:a7 indirectBufferOffset:a8];
}

- (_TtC3VFX20RenderCommandEncoder)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(RGCachedRenderCommandEncoder *)&v3 init];
}

- (_TtC3VFX20RenderCommandEncoder)initWithEncoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  return [(RGCachedRenderCommandEncoder *)&v5 initWithEncoder:a3];
}

@end