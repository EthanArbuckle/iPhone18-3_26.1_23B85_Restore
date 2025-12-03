@interface TSDPartitionedPartialLayout
- (CGRect)bounds;
- (TSDPartitionedPartialLayout)initWithInfo:(id)info bounds:(CGRect)bounds partitioner:(id)partitioner isLayoutRTL:(BOOL)l;
- (id)computeLayoutGeometry;
@end

@implementation TSDPartitionedPartialLayout

- (TSDPartitionedPartialLayout)initWithInfo:(id)info bounds:(CGRect)bounds partitioner:(id)partitioner isLayoutRTL:(BOOL)l
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  partitionerCopy = partitioner;
  v18.receiver = self;
  v18.super_class = TSDPartitionedPartialLayout;
  v15 = [(TSDLayout *)&v18 initWithInfo:info];
  v16 = v15;
  if (v15)
  {
    v15->_bounds.origin.x = x;
    v15->_bounds.origin.y = y;
    v15->_bounds.size.width = width;
    v15->_bounds.size.height = height;
    objc_storeStrong(&v15->_partitioner, partitioner);
    v16->_isLayoutRTL = l;
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