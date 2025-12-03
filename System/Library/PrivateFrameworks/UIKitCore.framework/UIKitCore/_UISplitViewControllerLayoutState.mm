@interface _UISplitViewControllerLayoutState
- (BOOL)isEqual:(id)equal;
- (_UISplitViewControllerLayoutState)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionary;
- (id)initWithLayout:(uint64_t *)layout preferredColumns:;
- (void)encodeWithCoder:(id)coder;
- (void)initWithDictionary:(void *)dictionary;
@end

@implementation _UISplitViewControllerLayoutState

- (id)initWithLayout:(uint64_t *)layout preferredColumns:
{
  if (result)
  {
    v4 = result;
    if (!a2)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_initWithLayout_preferredColumns_ object:v4 file:@"_UISplitViewControllerLayoutState.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"layout != nil"}];
    }

    v8.receiver = v4;
    v8.super_class = _UISplitViewControllerLayoutState;
    result = objc_msgSendSuper2(&v8, sel_init);
    if (result)
    {
      if (layout[7] == 1)
      {
        v5 = *layout;
      }

      else
      {
        v5 = 999;
      }

      *(result + 1) = v5;
      if (layout[8] == 1)
      {
        v6 = layout[1];
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

- (void)initWithDictionary:(void *)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionary)
  {
    if (!a2)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_initWithDictionary_ object:dictionaryCopy file:@"_UISplitViewControllerLayoutState.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"dictionary != nil"}];
    }

    v6.receiver = dictionaryCopy;
    v6.super_class = _UISplitViewControllerLayoutState;
    dictionaryCopy = objc_msgSendSuper2(&v6, sel_init);
    if (dictionaryCopy)
    {
      dictionaryCopy[1] = _UISplitViewControllerColumnForKey(@"primaryEdgeSplitViewControllerColumn", a2);
      dictionaryCopy[2] = _UISplitViewControllerColumnForKey(@"secondaryEdgeSplitViewControllerColumn", a2);
    }
  }

  return dictionaryCopy;
}

- (id)dictionary
{
  if (self)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
    v3 = [MEMORY[0x1E696AD98] numberWithInteger:*(self + 8)];
    [v2 setObject:v3 forKey:@"primaryEdgeSplitViewControllerColumn"];

    v4 = [MEMORY[0x1E696AD98] numberWithInteger:*(self + 16)];
    [v2 setObject:v4 forKey:@"secondaryEdgeSplitViewControllerColumn"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (_UISplitViewControllerLayoutState)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = _UISplitViewControllerLayoutState;
  v4 = [(_UISplitViewControllerLayoutState *)&v6 init];
  if (v4)
  {
    v4->_primaryEdgeSplitViewControllerColumn = [coder decodeIntegerForKey:@"primaryEdgeSplitViewControllerColumn"];
    v4->_secondaryEdgeSplitViewControllerColumn = [coder decodeIntegerForKey:@"secondaryEdgeSplitViewControllerColumn"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeInteger:self->_primaryEdgeSplitViewControllerColumn forKey:@"primaryEdgeSplitViewControllerColumn"];
  secondaryEdgeSplitViewControllerColumn = self->_secondaryEdgeSplitViewControllerColumn;

  [coder encodeInteger:secondaryEdgeSplitViewControllerColumn forKey:@"secondaryEdgeSplitViewControllerColumn"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = v4;
  if (v4)
  {
    *(v4 + 8) = self->_primaryEdgeSplitViewControllerColumn;
    *(v4 + 16) = self->_secondaryEdgeSplitViewControllerColumn;
  }

  selfCopy = self;

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  if (equal)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && self->_primaryEdgeSplitViewControllerColumn == *(equal + 1))
    {
      return self->_secondaryEdgeSplitViewControllerColumn == *(equal + 2);
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
    lowercaseString = [v5 lowercaseString];
    v7 = [v4 stringWithFormat:@"primaryEdgeSplitViewControllerColumn = %@", lowercaseString];
    [v3 addObject:v7];

    v8 = MEMORY[0x1E696AEC0];
    v9 = _UISplitViewControllerColumnDescription(self->_secondaryEdgeSplitViewControllerColumn);
    lowercaseString2 = [v9 lowercaseString];
    v11 = [v8 stringWithFormat:@"secondaryEdgeSplitViewControllerColumn = %@", lowercaseString2];
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