@interface TSDPartitionedPartialLayout
- (CGRect)bounds;
- (TSDPartitionedPartialLayout)initWithInfo:(id)a3 bounds:(CGRect)a4 partitioner:(id)a5 isLayoutRTL:(BOOL)a6;
- (id)computeLayoutGeometry;
@end

@implementation TSDPartitionedPartialLayout

- (TSDPartitionedPartialLayout)initWithInfo:(id)a3 bounds:(CGRect)a4 partitioner:(id)a5 isLayoutRTL:(BOOL)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v14 = a5;
  v18.receiver = self;
  v18.super_class = TSDPartitionedPartialLayout;
  v15 = [(TSDLayout *)&v18 initWithInfo:a3];
  v16 = v15;
  if (v15)
  {
    v15->_bounds.origin.x = x;
    v15->_bounds.origin.y = y;
    v15->_bounds.size.width = width;
    v15->_bounds.size.height = height;
    objc_storeStrong(&v15->_partitioner, a5);
    v16->_isLayoutRTL = a6;
  }

  return v16;
}

- (id)computeLayoutGeometry
{
  v3 = [TSDLayoutGeometry alloc];
  width = self->_bounds.size.width;
  height = self->_bounds.size.height;
  v6 = *(MEMORY[0x277CBF2C0] + 16);
  v10[0] = *MEMORY[0x277CBF2C0];
  v10[1] = v6;
  v10[2] = *(MEMORY[0x277CBF2C0] + 32);
  v8 = objc_msgSend_initWithSize_transform_(v3, v7, v10, width, height);

  return v8;
}

- (CGRect)bounds
{
  x = self->_bounds.origin.x;
  y = self->_bounds.origin.y;
  width = self->_bounds.size.width;
  height = self->_bounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end