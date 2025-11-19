@interface OKProducerMediaAttributes
- (CGPoint)offset;
- (CGPoint)offset2;
- (OKProducerMediaAttributes)init;
- (OKProducerMediaAttributes)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)clearText;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)updateWithText:(id)a3;
@end

@implementation OKProducerMediaAttributes

- (OKProducerMediaAttributes)init
{
  v8.receiver = self;
  v8.super_class = OKProducerMediaAttributes;
  result = [(OKProducerMediaAttributes *)&v8 init];
  if (result)
  {
    result->_scale2 = -1.0;
    __asm { FMOV            V0.2D, #-1.0 }

    *&result->_duration = _Q0;
  }

  return result;
}

- (void)dealloc
{
  text = self->_text;
  if (text)
  {

    self->_text = 0;
  }

  attributedText = self->_attributedText;
  if (attributedText)
  {

    self->_attributedText = 0;
  }

  v5.receiver = self;
  v5.super_class = OKProducerMediaAttributes;
  [(OKProducerMediaAttributes *)&v5 dealloc];
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] string];
  v4 = v3;
  if (self->_duration > -1.0)
  {
    [v3 appendFormat:@"duration: %f, ", *&self->_duration];
  }

  y = self->_offset.y;
  if (self->_offset.x != 0.0 || y != 0.0)
  {
    [v4 appendFormat:@"offset: (%f, %f), ", *&self->_offset.x, *&y];
  }

  if (self->_scale >= 0.0)
  {
    [v4 appendFormat:@"scale: %f, ", *&self->_scale];
  }

  v6 = self->_offset2.y;
  if (self->_offset2.x != 0.0 || v6 != 0.0)
  {
    [v4 appendFormat:@"offset2: (%f, %f), ", *&self->_offset2.x, *&v6];
  }

  if (self->_scale2 >= 0.0)
  {
    [v4 appendFormat:@"scale2: %f, ", *&self->_scale2];
  }

  if (self->_text)
  {
    [v4 appendFormat:@"text: %@, ", self->_text];
  }

  if (self->_attributedText)
  {
    [v4 appendFormat:@"attributedText: %@, ", self->_attributedText];
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = v4;
  if (v4)
  {
    [v4 setDuration:self->_duration];
    [v5 setOffset:{self->_offset.x, self->_offset.y}];
    [v5 setScale:self->_scale];
    [v5 setOffset2:{self->_offset2.x, self->_offset2.y}];
    [v5 setScale2:self->_scale2];
    v5[4] = [(NSString *)self->_text copy];
    v5[5] = [(NSAttributedString *)self->_attributedText copy];
  }

  return v5;
}

- (OKProducerMediaAttributes)initWithCoder:(id)a3
{
  v18.receiver = self;
  v18.super_class = OKProducerMediaAttributes;
  v4 = [(OKProducerMediaAttributes *)&v18 init];
  if (v4)
  {
    v5 = [a3 containsValueForKey:@"d"];
    v6 = -1.0;
    v7 = -1.0;
    if (v5)
    {
      [a3 decodeDoubleForKey:{@"d", -1.0}];
    }

    v4->_duration = v7;
    if ([a3 containsValueForKey:@"s"])
    {
      [a3 decodeDoubleForKey:@"s"];
      v6 = v8;
    }

    v4->_scale = v6;
    v9 = [a3 containsValueForKey:@"s2"];
    v10 = -1.0;
    if (v9)
    {
      [a3 decodeDoubleForKey:{@"s2", -1.0}];
    }

    v4->_scale2 = v10;
    if ([a3 containsValueForKey:@"o"])
    {
      v11 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"o"];
      if (v11)
      {
        [v11 CGPointValue];
        v4->_offset.x = v12;
        v4->_offset.y = v13;
      }

      else
      {
        v4->_offset = *MEMORY[0x277CBF348];
      }
    }

    if ([a3 containsValueForKey:@"o2"])
    {
      v14 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"o2"];
      if (v14)
      {
        [v14 CGPointValue];
        v4->_offset2.x = v15;
        v4->_offset2.y = v16;
      }

      else
      {
        v4->_offset2 = *MEMORY[0x277CBF348];
      }
    }

    if ([a3 containsValueForKey:@"t"])
    {
      v4->_text = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"t"];
    }

    if ([a3 containsValueForKey:@"at"])
    {
      v4->_attributedText = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"at"];
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  if (self->_duration >= 0.0)
  {
    [a3 encodeDouble:@"d" forKey:?];
  }

  if (self->_offset.x != 0.0 || self->_offset.y != 0.0)
  {
    [a3 encodeObject:objc_msgSend(MEMORY[0x277CCAE60] forKey:{"valueWithCGPoint:"), @"o"}];
  }

  scale = self->_scale;
  if (scale >= 0.0)
  {
    *&scale = scale;
    [a3 encodeFloat:@"s" forKey:scale];
  }

  if (self->_offset2.x != 0.0 || self->_offset2.y != 0.0)
  {
    [a3 encodeObject:objc_msgSend(MEMORY[0x277CCAE60] forKey:{"valueWithCGPoint:"), @"o2"}];
  }

  scale2 = self->_scale2;
  if (scale2 >= 0.0)
  {
    *&scale2 = scale2;
    [a3 encodeFloat:@"s2" forKey:scale2];
  }

  text = self->_text;
  if (text)
  {
    [a3 encodeObject:text forKey:@"t"];
  }

  if (self->_attributedText)
  {

    [a3 encodeObject:? forKey:?];
  }
}

- (void)updateWithText:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(OKProducerMediaAttributes *)self setAttributedText:a3];

    [(OKProducerMediaAttributes *)self setText:0];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(OKProducerMediaAttributes *)self setText:a3];

      [(OKProducerMediaAttributes *)self setAttributedText:0];
    }
  }
}

- (void)clearText
{
  [(OKProducerMediaAttributes *)self setAttributedText:0];

  [(OKProducerMediaAttributes *)self setText:0];
}

- (CGPoint)offset
{
  x = self->_offset.x;
  y = self->_offset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)offset2
{
  x = self->_offset2.x;
  y = self->_offset2.y;
  result.y = y;
  result.x = x;
  return result;
}

@end