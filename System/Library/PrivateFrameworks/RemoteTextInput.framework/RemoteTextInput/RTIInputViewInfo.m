@interface RTIInputViewInfo
- (BOOL)isEqual:(id)a3;
- (CGSize)size;
- (NSEdgeInsets)insets;
- (RTIInputViewInfo)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTIInputViewInfo

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  if (([v8 allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The coder must allow keyed coding."];
  }

  contextId = self->_contextId;
  if (contextId)
  {
    [v8 encodeInt32:contextId forKey:@"cid"];
  }

  if (self->_size.width != *MEMORY[0x1E695F060] || self->_size.height != *(MEMORY[0x1E695F060] + 8))
  {
    v6 = [MEMORY[0x1E696B098] valueWithSize:?];
    [v8 encodeObject:v6 forKey:@"size"];
  }

  if (!NSEdgeInsetsEqual(self->_insets, *MEMORY[0x1E696A2A0]))
  {
    v7 = [MEMORY[0x1E696B098] valueWithEdgeInsets:{self->_insets.top, self->_insets.left, self->_insets.bottom, self->_insets.right}];
    [v8 encodeObject:v7 forKey:@"insets"];
  }

  [v8 encodeBool:self->_shouldShowDockView forKey:@"dockView"];
}

- (RTIInputViewInfo)initWithCoder:(id)a3
{
  v4 = a3;
  if (([v4 allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The decoder must allow keyed coding."];
  }

  v17.receiver = self;
  v17.super_class = RTIInputViewInfo;
  v5 = [(RTIInputViewInfo *)&v17 init];
  if (v5)
  {
    v5->_contextId = [v4 decodeInt32ForKey:@"cid"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"size"];
    v7 = v6;
    if (v6)
    {
      [v6 sizeValue];
      v5->_size.width = v8;
      v5->_size.height = v9;
    }

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"insets"];
    v11 = v10;
    if (v10)
    {
      [v10 edgeInsetsValue];
      v5->_insets.top = v12;
      v5->_insets.left = v13;
      v5->_insets.bottom = v14;
      v5->_insets.right = v15;
    }

    v5->_shouldShowDockView = [v4 decodeBoolForKey:@"dockView"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [[RTIInputViewInfo allocWithZone:?]];
  *(result + 3) = self->_contextId;
  *(result + 1) = self->_size;
  v5 = *&self->_insets.bottom;
  *(result + 2) = *&self->_insets.top;
  *(result + 3) = v5;
  *(result + 8) = self->_shouldShowDockView;
  return result;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p", objc_opt_class(), self];
  if ([(RTIInputViewInfo *)self contextId])
  {
    [v3 appendFormat:@"; contextId = %u", -[RTIInputViewInfo contextId](self, "contextId")];
  }

  [(RTIInputViewInfo *)self size];
  if (v5 != *MEMORY[0x1E695F060] || v4 != *(MEMORY[0x1E695F060] + 8))
  {
    [(RTIInputViewInfo *)self size];
    v7 = NSStringFromSize(v17);
    [v3 appendFormat:@"; size = %@", v7];
  }

  [(RTIInputViewInfo *)self insets];
  if (!NSEdgeInsetsEqual(v18, *MEMORY[0x1E696A2A0]))
  {
    [(RTIInputViewInfo *)self insets];
    v9 = v8;
    [(RTIInputViewInfo *)self insets];
    v11 = v10;
    [(RTIInputViewInfo *)self insets];
    v13 = v12;
    [(RTIInputViewInfo *)self insets];
    [v3 appendFormat:@"; insets = {%f, %f, %f, %f}", v9, v11, v13, v14];
  }

  if ([(RTIInputViewInfo *)self shouldShowDockView])
  {
    [v3 appendFormat:@"; shouldShowDockView = YES"];
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(RTIInputViewInfo *)self contextId];
      if (v6 != [(RTIInputViewInfo *)v5 contextId])
      {
        goto LABEL_10;
      }

      [(RTIInputViewInfo *)self size];
      v8 = v7;
      v10 = v9;
      [(RTIInputViewInfo *)v5 size];
      LOBYTE(v12) = 0;
      if (v8 != v13 || v10 != v11)
      {
        goto LABEL_11;
      }

      [(RTIInputViewInfo *)self insets];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;
      [(RTIInputViewInfo *)v5 insets];
      v29.top = v22;
      v29.left = v23;
      v29.bottom = v24;
      v29.right = v25;
      v28.top = v15;
      v28.left = v17;
      v28.bottom = v19;
      v28.right = v21;
      if (NSEdgeInsetsEqual(v28, v29))
      {
        v26 = [(RTIInputViewInfo *)self shouldShowDockView];
        v12 = v26 ^ [(RTIInputViewInfo *)v5 shouldShowDockView]^ 1;
      }

      else
      {
LABEL_10:
        LOBYTE(v12) = 0;
      }

LABEL_11:

      goto LABEL_12;
    }

    LOBYTE(v12) = 0;
  }

LABEL_12:

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

- (NSEdgeInsets)insets
{
  top = self->_insets.top;
  left = self->_insets.left;
  bottom = self->_insets.bottom;
  right = self->_insets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end