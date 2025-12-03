@interface UIKeyboardUISnapshot
- (BOOL)isEqual:(id)equal;
- (CGSize)size;
- (UIKeyboardUISnapshot)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UIKeyboardUISnapshot

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The coder must allow keyed coding."];
  }

  slotID = self->_slotID;
  if (slotID)
  {
    [coderCopy encodeInt32:slotID forKey:@"slot"];
  }

  if (self->_size.width != *MEMORY[0x1E695F060] || self->_size.height != *(MEMORY[0x1E695F060] + 8))
  {
    v6 = [MEMORY[0x1E696B098] valueWithSize:?];
    [coderCopy encodeObject:v6 forKey:@"size"];
  }
}

- (UIKeyboardUISnapshot)initWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The decoder must allow keyed coding."];
  }

  v11.receiver = self;
  v11.super_class = UIKeyboardUISnapshot;
  v5 = [(UIKeyboardUISnapshot *)&v11 init];
  if (v5)
  {
    v5->_slotID = [coderCopy decodeInt32ForKey:@"slot"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"size"];
    v7 = v6;
    if (v6)
    {
      [v6 sizeValue];
      v5->_size.width = v8;
      v5->_size.height = v9;
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [[UIKeyboardUISnapshot allocWithZone:?]];
  *(result + 2) = self->_slotID;
  *(result + 1) = self->_size;
  return result;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p", objc_opt_class(), self];
  if ([(UIKeyboardUISnapshot *)self slotID])
  {
    [v3 appendFormat:@"; slotID = %u", -[UIKeyboardUISnapshot slotID](self, "slotID")];
  }

  [(UIKeyboardUISnapshot *)self size];
  if (v5 != *MEMORY[0x1E695F060] || v4 != *(MEMORY[0x1E695F060] + 8))
  {
    [(UIKeyboardUISnapshot *)self size];
    v7 = NSStringFromSize(v10);
    [v3 appendFormat:@"; size = %@", v7];
  }

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      slotID = [(UIKeyboardUISnapshot *)self slotID];
      if (slotID == [(UIKeyboardUISnapshot *)v5 slotID])
      {
        [(UIKeyboardUISnapshot *)self size];
        v8 = v7;
        v10 = v9;
        [(UIKeyboardUISnapshot *)v5 size];
        v13 = v10 == v12 && v8 == v11;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end