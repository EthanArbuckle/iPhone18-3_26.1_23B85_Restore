@interface RCPEventScreen
- (CGSize)pointSize;
- (RCPEventScreen)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RCPEventScreen

- (CGSize)pointSize
{
  width = self->_pointSize.width;
  height = self->_pointSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)description
{
  scale = self->_scale;
  if (scale <= 0.0)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%g×%g", *&self->_pointSize.width, *&self->_pointSize.height, v5];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%g×%g∙%g", *&self->_pointSize.width, *&self->_pointSize.height, *&scale];
  }
  v3 = ;

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  scale = self->_scale;
  coderCopy = coder;
  [coderCopy encodeDouble:@"scale" forKey:scale];
  [coderCopy encodeDouble:@"width" forKey:self->_pointSize.width];
  [coderCopy encodeDouble:@"height" forKey:self->_pointSize.height];
}

- (RCPEventScreen)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(RCPEventScreen *)self init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"scale"];
    v5->_scale = v6;
    [coderCopy decodeDoubleForKey:@"width"];
    v5->_pointSize.width = v7;
    [coderCopy decodeDoubleForKey:@"height"];
    v5->_pointSize.height = v8;
  }

  return v5;
}

@end