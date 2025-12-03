@interface VUIDataImageDescriptor
- (CGSize)backgroundSize;
- (CGSize)renderSize;
- (VUIDataImageDescriptor)initWithData:(id)data;
@end

@implementation VUIDataImageDescriptor

- (VUIDataImageDescriptor)initWithData:(id)data
{
  dataCopy = data;
  v10.receiver = self;
  v10.super_class = VUIDataImageDescriptor;
  v6 = [(VUIDataImageDescriptor *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_data, data);
    v8 = *MEMORY[0x277CBF3A8];
    v7->_renderSize = *MEMORY[0x277CBF3A8];
    v7->_backgroundSize = v8;
    v7->_scaleWithinRenderSize = 1.0;
  }

  return v7;
}

- (CGSize)renderSize
{
  width = self->_renderSize.width;
  height = self->_renderSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)backgroundSize
{
  width = self->_backgroundSize.width;
  height = self->_backgroundSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end