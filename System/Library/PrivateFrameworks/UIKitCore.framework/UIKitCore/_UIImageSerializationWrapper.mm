@interface _UIImageSerializationWrapper
- (_UIImageSerializationWrapper)initWithCoder:(id)coder;
- (_UIImageSerializationWrapper)initWithImage:(id)image;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIImageSerializationWrapper

- (_UIImageSerializationWrapper)initWithImage:(id)image
{
  imageCopy = image;
  v6 = [(_UIImageSerializationWrapper *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_image, image);
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(UIImage *)self->_image encodeWithCoder:coderCopy];
  v4 = _UIImageName(self->_image);
  if ([(UIImage *)self->_image _canEncodeWithName:v4 coder:coderCopy])
  {
    [(UIImage *)self->_image _encodeDataWithCoder:coderCopy imageName:v4];
    [(UIImage *)self->_image _encodePropertiesWithCoder:coderCopy];
  }
}

- (_UIImageSerializationWrapper)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = _UIImageSerializationWrapper;
  return [(_UIImageSerializationWrapper *)&v4 init];
}

@end