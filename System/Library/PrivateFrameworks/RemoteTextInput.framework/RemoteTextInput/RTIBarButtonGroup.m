@interface RTIBarButtonGroup
- (BOOL)isEqual:(id)a3;
- (RTIBarButtonGroup)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTIBarButtonGroup

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  if (([v6 allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The coder must allow keyed coding."];
  }

  itemWidths = self->_itemWidths;
  if (itemWidths)
  {
    [v6 encodeObject:itemWidths forKey:@"items"];
  }

  v5 = v6;
  if (self->_representativeItemWidth != 0.0)
  {
    [v6 encodeFloat:@"rpItem" forKey:?];
    v5 = v6;
  }
}

- (RTIBarButtonGroup)initWithCoder:(id)a3
{
  v4 = a3;
  if (([v4 allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The decoder must allow keyed coding."];
  }

  v13.receiver = self;
  v13.super_class = RTIBarButtonGroup;
  v5 = [(RTIBarButtonGroup *)&v13 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"items"];
    itemWidths = v5->_itemWidths;
    v5->_itemWidths = v9;

    [v4 decodeFloatForKey:@"rpItem"];
    v5->_representativeItemWidth = v11;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[RTIBarButtonGroup allocWithZone:?]];
  v5 = [(NSArray *)self->_itemWidths copy];
  itemWidths = v4->_itemWidths;
  v4->_itemWidths = v5;

  v4->_representativeItemWidth = self->_representativeItemWidth;
  return v4;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p", objc_opt_class(), self];
  v4 = [(RTIBarButtonGroup *)self itemWidths];

  if (v4)
  {
    v5 = [(RTIBarButtonGroup *)self itemWidths];
    [v3 appendFormat:@"; leadingBarButtonGroupWidths = %@", v5];
  }

  [(RTIBarButtonGroup *)self representativeItemWidth];
  if (v6 != 0.0)
  {
    [(RTIBarButtonGroup *)self representativeItemWidth];
    [v3 appendFormat:@"; trailingBarButtonGroupWidths = %f", v7];
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(RTIBarButtonGroup *)self itemWidths];
      v7 = [(RTIBarButtonGroup *)v5 itemWidths];
      v8 = v7;
      if (v6 == v7)
      {
      }

      else
      {
        v9 = [(RTIBarButtonGroup *)self itemWidths];
        v10 = [(RTIBarButtonGroup *)v5 itemWidths];
        v11 = [v9 isEqual:v10];

        if (!v11)
        {
          v12 = 0;
LABEL_10:

          goto LABEL_11;
        }
      }

      [(RTIBarButtonGroup *)self representativeItemWidth];
      v14 = v13;
      [(RTIBarButtonGroup *)v5 representativeItemWidth];
      v12 = v14 == v15;
      goto LABEL_10;
    }

    v12 = 0;
  }

LABEL_11:

  return v12;
}

@end