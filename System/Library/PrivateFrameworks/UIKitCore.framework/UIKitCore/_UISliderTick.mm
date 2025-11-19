@interface _UISliderTick
+ (id)tickWithPosition:(float)a3 title:(id)a4 image:(id)a5;
- (BOOL)isEqual:(id)a3;
- (_UISliderTick)initWithCoder:(id)a3;
- (_UISliderTick)initWithPosition:(float)a3 title:(id)a4 image:(id)a5;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UISliderTick

+ (id)tickWithPosition:(float)a3 title:(id)a4 image:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a1 alloc];
  *&v11 = a3;
  v12 = [v10 initWithPosition:v9 title:v8 image:v11];

  return v12;
}

- (_UISliderTick)initWithPosition:(float)a3 title:(id)a4 image:(id)a5
{
  v8 = a4;
  v9 = a5;
  v18.receiver = self;
  v18.super_class = _UISliderTick;
  v10 = [(_UISliderTick *)&v18 init];
  v11 = v10;
  if (v10)
  {
    v12 = fmax(fmin(a3, 1.0), 0.0);
    v10->_position = v12;
    v13 = [v8 copy];
    title = v11->_title;
    v11->_title = v13;

    v15 = [v9 copy];
    image = v11->_image;
    v11->_image = v15;
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  position = self->_position;
  v6 = a3;
  *&v5 = position;
  [v6 encodeFloat:@"position" forKey:v5];
  [v6 encodeObject:self->_title forKey:@"title"];
  [v6 encodeObject:self->_image forKey:@"image"];
}

- (_UISliderTick)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_UISliderTick *)self init];
  if (v5)
  {
    [v4 decodeFloatForKey:@"position"];
    v5->_position = v6;
    v7 = [v4 decodeObjectForKey:@"title"];
    title = v5->_title;
    v5->_title = v7;

    v9 = [v4 decodeObjectForKey:@"image"];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _UISliderTick;
  if ([(_UISliderTick *)&v9 isEqual:v4])
  {
    v5 = v4;
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