@interface _UISplitViewControllerLayoutState
- (BOOL)isEqual:(id)a3;
- (_UISplitViewControllerLayoutState)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionary;
- (id)initWithLayout:(uint64_t *)a3 preferredColumns:;
- (void)encodeWithCoder:(id)a3;
- (void)initWithDictionary:(void *)a1;
@end

@implementation _UISplitViewControllerLayoutState

- (id)initWithLayout:(uint64_t *)a3 preferredColumns:
{
  if (result)
  {
    v4 = result;
    if (!a2)
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      [v7 handleFailureInMethod:sel_initWithLayout_preferredColumns_ object:v4 file:@"_UISplitViewControllerLayoutState.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"layout != nil"}];
    }

    v8.receiver = v4;
    v8.super_class = _UISplitViewControllerLayoutState;
    result = objc_msgSendSuper2(&v8, sel_init);
    if (result)
    {
      if (a3[7] == 1)
      {
        v5 = *a3;
      }

      else
      {
        v5 = 999;
      }

      *(result + 1) = v5;
      if (a3[8] == 1)
      {
        v6 = a3[1];
      }

      else
      {
        v6 = 999;
      }

      *(result + 2) = v6;
    }
  }

  return result;
}

- (void)initWithDictionary:(void *)a1
{
  v2 = a1;
  if (a1)
  {
    if (!a2)
    {
      v5 = [MEMORY[0x1E696AAA8] currentHandler];
      [v5 handleFailureInMethod:sel_initWithDictionary_ object:v2 file:@"_UISplitViewControllerLayoutState.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"dictionary != nil"}];
    }

    v6.receiver = v2;
    v6.super_class = _UISplitViewControllerLayoutState;
    v2 = objc_msgSendSuper2(&v6, sel_init);
    if (v2)
    {
      v2[1] = _UISplitViewControllerColumnForKey(@"primaryEdgeSplitViewControllerColumn", a2);
      v2[2] = _UISplitViewControllerColumnForKey(@"secondaryEdgeSplitViewControllerColumn", a2);
    }
  }

  return v2;
}

- (id)dictionary
{
  if (a1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
    v3 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 8)];
    [v2 setObject:v3 forKey:@"primaryEdgeSplitViewControllerColumn"];

    v4 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 16)];
    [v2 setObject:v4 forKey:@"secondaryEdgeSplitViewControllerColumn"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (_UISplitViewControllerLayoutState)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = _UISplitViewControllerLayoutState;
  v4 = [(_UISplitViewControllerLayoutState *)&v6 init];
  if (v4)
  {
    v4->_primaryEdgeSplitViewControllerColumn = [a3 decodeIntegerForKey:@"primaryEdgeSplitViewControllerColumn"];
    v4->_secondaryEdgeSplitViewControllerColumn = [a3 decodeIntegerForKey:@"secondaryEdgeSplitViewControllerColumn"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeInteger:self->_primaryEdgeSplitViewControllerColumn forKey:@"primaryEdgeSplitViewControllerColumn"];
  secondaryEdgeSplitViewControllerColumn = self->_secondaryEdgeSplitViewControllerColumn;

  [a3 encodeInteger:secondaryEdgeSplitViewControllerColumn forKey:@"secondaryEdgeSplitViewControllerColumn"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = v4;
  if (v4)
  {
    *(v4 + 8) = self->_primaryEdgeSplitViewControllerColumn;
    *(v4 + 16) = self->_secondaryEdgeSplitViewControllerColumn;
  }

  v6 = self;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  if (a3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && self->_primaryEdgeSplitViewControllerColumn == *(a3 + 1))
    {
      return self->_secondaryEdgeSplitViewControllerColumn == *(a3 + 2);
    }
  }

  return 0;
}

- (id)description
{
  if (self)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4 = MEMORY[0x1E696AEC0];
    v5 = _UISplitViewControllerColumnDescription(self->_primaryEdgeSplitViewControllerColumn);
    v6 = [v5 lowercaseString];
    v7 = [v4 stringWithFormat:@"primaryEdgeSplitViewControllerColumn = %@", v6];
    [v3 addObject:v7];

    v8 = MEMORY[0x1E696AEC0];
    v9 = _UISplitViewControllerColumnDescription(self->_secondaryEdgeSplitViewControllerColumn);
    v10 = [v9 lowercaseString];
    v11 = [v8 stringWithFormat:@"secondaryEdgeSplitViewControllerColumn = %@", v10];
    [v3 addObject:v11];
  }

  else
  {
    v3 = 0;
  }

  v12 = MEMORY[0x1E696AEC0];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v15 = [v3 componentsJoinedByString:@" "];;
  v16 = [v12 stringWithFormat:@"<%@: %p %@>", v14, self, v15];;

  return v16;
}

@end