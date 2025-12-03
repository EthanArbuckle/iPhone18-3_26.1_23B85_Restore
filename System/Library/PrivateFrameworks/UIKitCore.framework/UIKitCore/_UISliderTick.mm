@interface _UISliderTick
+ (id)tickWithPosition:(float)position title:(id)title image:(id)image;
- (BOOL)isEqual:(id)equal;
- (_UISliderTick)initWithCoder:(id)coder;
- (_UISliderTick)initWithPosition:(float)position title:(id)title image:(id)image;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UISliderTick

+ (id)tickWithPosition:(float)position title:(id)title image:(id)image
{
  imageCopy = image;
  titleCopy = title;
  v10 = [self alloc];
  *&v11 = position;
  v12 = [v10 initWithPosition:titleCopy title:imageCopy image:v11];

  return v12;
}

- (_UISliderTick)initWithPosition:(float)position title:(id)title image:(id)image
{
  titleCopy = title;
  imageCopy = image;
  v18.receiver = self;
  v18.super_class = _UISliderTick;
  v10 = [(_UISliderTick *)&v18 init];
  v11 = v10;
  if (v10)
  {
    v12 = fmax(fmin(position, 1.0), 0.0);
    v10->_position = v12;
    v13 = [titleCopy copy];
    title = v11->_title;
    v11->_title = v13;

    v15 = [imageCopy copy];
    image = v11->_image;
    v11->_image = v15;
  }

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  position = self->_position;
  coderCopy = coder;
  *&v5 = position;
  [coderCopy encodeFloat:@"position" forKey:v5];
  [coderCopy encodeObject:self->_title forKey:@"title"];
  [coderCopy encodeObject:self->_image forKey:@"image"];
}

- (_UISliderTick)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(_UISliderTick *)self init];
  if (v5)
  {
    [coderCopy decodeFloatForKey:@"position"];
    v5->_position = v6;
    v7 = [coderCopy decodeObjectForKey:@"title"];
    title = v5->_title;
    v5->_title = v7;

    v9 = [coderCopy decodeObjectForKey:@"image"];
    image = v5->_image;
    v5->_image = v9;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = (self->_position * 100.0);
  v4 = [(NSString *)self->_title hash];
  return v4 ^ [(UIImage *)self->_image hash]^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v9.receiver = self;
  v9.super_class = _UISliderTick;
  if ([(_UISliderTick *)&v9 isEqual:equalCopy])
  {
    v5 = equalCopy;
    v6 = v5;
    if (*(v5 + 2) == self->_position && [v5[2] isEqualToString:self->_title])
    {
      v7 = [v6[3] isEqual:self->_image];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end