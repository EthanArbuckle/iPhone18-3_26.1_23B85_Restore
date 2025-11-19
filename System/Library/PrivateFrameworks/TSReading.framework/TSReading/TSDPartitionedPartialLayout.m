@interface TSDPartitionedPartialLayout
- (CGRect)bounds;
- (TSDPartitionedPartialLayout)initWithInfo:(id)a3 bounds:(CGRect)a4 partitioner:(id)a5;
- (id)computeLayoutGeometry;
@end

@implementation TSDPartitionedPartialLayout

- (TSDPartitionedPartialLayout)initWithInfo:(id)a3 bounds:(CGRect)a4 partitioner:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11.receiver = self;
  v11.super_class = TSDPartitionedPartialLayout;
  result = [(TSDLayout *)&v11 initWithInfo:a3];
  if (result)
  {
    result->mBounds.origin.x = x;
    result->mBounds.origin.y = y;
    result->mBounds.size.width = width;
    result->mBounds.size.height = height;
    result->mPartitioner = a5;
  }

  return result;
}

- (id)computeLayoutGeometry
{
  v3 = [TSDLayoutGeometry alloc];
  width = self->mBounds.size.width;
  height = self->mBounds.size.height;
  v6 = *(MEMORY[0x277CBF2C0] + 16);
  v8[0] = *MEMORY[0x277CBF2C0];
  v8[1] = v6;
  v8[2] = *(MEMORY[0x277CBF2C0] + 32);
  return [(TSDLayoutGeometry *)v3 initWithSize:v8 transform:width, height];
}

- (CGRect)bounds
{
  x = self->mBounds.origin.x;
  y = self->mBounds.origin.y;
  width = self->mBounds.size.width;
  height = self->mBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end