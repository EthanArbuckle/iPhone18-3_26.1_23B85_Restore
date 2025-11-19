@interface VUIResourceImageDescriptor
- (CGSize)containerSize;
- (CGSize)size;
- (VUIResourceImageDescriptor)initWithResource:(id)a3 size:(CGSize)a4;
- (VUIResourceImageDescriptor)initWithResource:(id)a3 size:(CGSize)a4 containerSize:(CGSize)a5;
- (VUIResourceImageDescriptor)initWithResourceSymbol:(id)a3 size:(CGSize)a4 symbolConfiguration:(id)a5;
- (VUIResourceImageDescriptor)initWithSymbol:(id)a3 size:(CGSize)a4 symbolConfiguration:(id)a5;
- (_VUICornerRadii)borderRadii;
@end

@implementation VUIResourceImageDescriptor

- (VUIResourceImageDescriptor)initWithSymbol:(id)a3 size:(CGSize)a4 symbolConfiguration:(id)a5
{
  height = a4.height;
  width = a4.width;
  v10 = a3;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = VUIResourceImageDescriptor;
  v12 = [(VUIResourceImageDescriptor *)&v16 init];
  if (v12)
  {
    if ([v10 length])
    {
      objc_storeStrong(&v12->_name, a3);
      v12->_size.width = width;
      v12->_size.height = height;
      v12->_containerSize.width = width;
      v12->_containerSize.height = height;
      v12->_type = 0;
      v12->_scaleMode = 1;
      v13 = v11;
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

- (VUIResourceImageDescriptor)initWithResource:(id)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v8 = a3;
  v11.receiver = self;
  v11.super_class = VUIResourceImageDescriptor;
  v9 = [(VUIResourceImageDescriptor *)&v11 init];
  if (v9 && [v8 length])
  {
    objc_storeStrong(&v9->_name, a3);
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

- (VUIResourceImageDescriptor)initWithResource:(id)a3 size:(CGSize)a4 containerSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  result = [(VUIResourceImageDescriptor *)self initWithResource:a3 size:a4.width, a4.height];
  if (result)
  {
    result->_containerSize.width = width;
    result->_containerSize.height = height;
  }

  return result;
}

- (VUIResourceImageDescriptor)initWithResourceSymbol:(id)a3 size:(CGSize)a4 symbolConfiguration:(id)a5
{
  height = a4.height;
  width = a4.width;
  v10 = a3;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = VUIResourceImageDescriptor;
  v12 = [(VUIResourceImageDescriptor *)&v16 init];
  if (v12)
  {
    if ([v10 length])
    {
      objc_storeStrong(&v12->_name, a3);
      v12->_size.width = width;
      v12->_size.height = height;
      v12->_containerSize.width = width;
      v12->_containerSize.height = height;
      v12->_type = 2;
      v12->_scaleMode = 1;
      v13 = v11;
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