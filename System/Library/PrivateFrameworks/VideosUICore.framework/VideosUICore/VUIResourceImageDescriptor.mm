@interface VUIResourceImageDescriptor
- (CGSize)containerSize;
- (CGSize)size;
- (VUIResourceImageDescriptor)initWithResource:(id)resource size:(CGSize)size;
- (VUIResourceImageDescriptor)initWithResource:(id)resource size:(CGSize)size containerSize:(CGSize)containerSize;
- (VUIResourceImageDescriptor)initWithResourceSymbol:(id)symbol size:(CGSize)size symbolConfiguration:(id)configuration;
- (VUIResourceImageDescriptor)initWithSymbol:(id)symbol size:(CGSize)size symbolConfiguration:(id)configuration;
- (_VUICornerRadii)borderRadii;
@end

@implementation VUIResourceImageDescriptor

- (VUIResourceImageDescriptor)initWithSymbol:(id)symbol size:(CGSize)size symbolConfiguration:(id)configuration
{
  height = size.height;
  width = size.width;
  symbolCopy = symbol;
  configurationCopy = configuration;
  v16.receiver = self;
  v16.super_class = VUIResourceImageDescriptor;
  v12 = [(VUIResourceImageDescriptor *)&v16 init];
  if (v12)
  {
    if ([symbolCopy length])
    {
      objc_storeStrong(&v12->_name, symbol);
      v12->_size.width = width;
      v12->_size.height = height;
      v12->_containerSize.width = width;
      v12->_containerSize.height = height;
      v12->_type = 0;
      v12->_scaleMode = 1;
      v13 = configurationCopy;
      symbolConfiguration = v12->_symbolConfiguration;
      v12->_symbolConfiguration = v13;
    }

    else
    {
      symbolConfiguration = v12;
      v12 = 0;
    }
  }

  else
  {
    symbolConfiguration = 0;
  }

  return v12;
}

- (VUIResourceImageDescriptor)initWithResource:(id)resource size:(CGSize)size
{
  height = size.height;
  width = size.width;
  resourceCopy = resource;
  v11.receiver = self;
  v11.super_class = VUIResourceImageDescriptor;
  v9 = [(VUIResourceImageDescriptor *)&v11 init];
  if (v9 && [resourceCopy length])
  {
    objc_storeStrong(&v9->_name, resource);
    v9->_size.width = width;
    v9->_size.height = height;
    v9->_containerSize.width = width;
    v9->_containerSize.height = height;
    v9->_scaleMode = 1;
    v9->_type = 1;
  }

  else
  {

    v9 = 0;
  }

  return v9;
}

- (VUIResourceImageDescriptor)initWithResource:(id)resource size:(CGSize)size containerSize:(CGSize)containerSize
{
  height = containerSize.height;
  width = containerSize.width;
  result = [(VUIResourceImageDescriptor *)self initWithResource:resource size:size.width, size.height];
  if (result)
  {
    result->_containerSize.width = width;
    result->_containerSize.height = height;
  }

  return result;
}

- (VUIResourceImageDescriptor)initWithResourceSymbol:(id)symbol size:(CGSize)size symbolConfiguration:(id)configuration
{
  height = size.height;
  width = size.width;
  symbolCopy = symbol;
  configurationCopy = configuration;
  v16.receiver = self;
  v16.super_class = VUIResourceImageDescriptor;
  v12 = [(VUIResourceImageDescriptor *)&v16 init];
  if (v12)
  {
    if ([symbolCopy length])
    {
      objc_storeStrong(&v12->_name, symbol);
      v12->_size.width = width;
      v12->_size.height = height;
      v12->_containerSize.width = width;
      v12->_containerSize.height = height;
      v12->_type = 2;
      v12->_scaleMode = 1;
      v13 = configurationCopy;
      symbolConfiguration = v12->_symbolConfiguration;
      v12->_symbolConfiguration = v13;
    }

    else
    {
      symbolConfiguration = v12;
      v12 = 0;
    }
  }

  else
  {
    symbolConfiguration = 0;
  }

  return v12;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)containerSize
{
  width = self->_containerSize.width;
  height = self->_containerSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (_VUICornerRadii)borderRadii
{
  topLeft = self->_borderRadii.topLeft;
  topRight = self->_borderRadii.topRight;
  bottomLeft = self->_borderRadii.bottomLeft;
  bottomRight = self->_borderRadii.bottomRight;
  result.bottomRight = bottomRight;
  result.bottomLeft = bottomLeft;
  result.topRight = topRight;
  result.topLeft = topLeft;
  return result;
}

@end