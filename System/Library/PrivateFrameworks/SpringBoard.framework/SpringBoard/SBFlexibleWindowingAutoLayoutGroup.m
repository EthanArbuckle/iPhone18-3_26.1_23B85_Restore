@interface SBFlexibleWindowingAutoLayoutGroup
- (BOOL)isEqual:(id)a3;
- (CGPoint)resizeGrabberPosition;
- (NSArray)displayItemsInGroup;
- (SBFlexibleWindowingAutoLayoutGroup)initWithItems:(id)a3;
- (id)_copyWithClass:(Class)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
@end

@implementation SBFlexibleWindowingAutoLayoutGroup

- (SBFlexibleWindowingAutoLayoutGroup)initWithItems:(id)a3
{
  v5 = a3;
  v36.receiver = self;
  v36.super_class = SBFlexibleWindowingAutoLayoutGroup;
  v6 = [(SBFlexibleWindowingAutoLayoutGroup *)&v36 init];
  if (v6)
  {
    if (!v5)
    {
      [(SBFlexibleWindowingAutoLayoutGroup *)a2 initWithItems:v6];
    }

    v7 = [v5 copy];
    itemsInGroup = v6->_itemsInGroup;
    v6->_itemsInGroup = v7;

    v9 = [v5 firstObject];
    v10 = [v5 lastObject];
    [v9 frame];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    [v10 frame];
    v21 = v14 + v18;
    v22 = v19 + v20;
    v24 = v12 + v16 + (v23 - (v12 + v16)) * 0.5;
    if (v20 >= v18 || v19 < v14 || v22 > v21)
    {
      if (v14 < v19 || v21 > v22)
      {
        v27 = v22 <= v21;
        v28 = v22 - v14;
        v29 = v21 - v19;
        v30 = v19 + v29 * 0.5;
        if (v27)
        {
          v25 = v14 + v28 * 0.5;
        }

        else
        {
          v25 = v30;
        }

        if (v27)
        {
          v26 = v28;
        }

        else
        {
          v26 = v29;
        }
      }

      else
      {
        v25 = v14 + v18 * 0.5;
        v26 = v22 - v14;
      }
    }

    else
    {
      v25 = v19 + v20 * 0.5;
      v26 = v21 - v19;
    }

    v6->_resizeGrabberPosition.x = v24;
    v6->_resizeGrabberPosition.y = v25;
    v6->_intersectionHeight = v26;
    v31 = objc_alloc_init(MEMORY[0x277CF0C40]);
    v32 = [v31 appendCGPoint:{v6->_resizeGrabberPosition.x, v6->_resizeGrabberPosition.y}];
    v33 = [v31 appendObject:v6->_itemsInGroup];
    v34 = [v31 appendCGFloat:v6->_intersectionHeight];
    v6->_hash = [v31 hash];
  }

  return v6;
}

- (NSArray)displayItemsInGroup
{
  cached_displayItemsInGroup = self->_cached_displayItemsInGroup;
  if (!cached_displayItemsInGroup)
  {
    v4 = [(NSArray *)self->_itemsInGroup bs_map:&__block_literal_global_163];
    v5 = self->_cached_displayItemsInGroup;
    self->_cached_displayItemsInGroup = v4;

    cached_displayItemsInGroup = self->_cached_displayItemsInGroup;
  }

  return cached_displayItemsInGroup;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = SBFlexibleWindowingAutoLayoutGroup;
    if ([(SBFlexibleWindowingAutoLayoutGroup *)&v12 isEqual:v4])
    {
      v5 = objc_opt_class();
      v6 = v4;
      if (v5)
      {
        if (objc_opt_isKindOfClass())
        {
          v7 = v6;
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

      v9 = v7;

      if (v9)
      {
        v10 = [(SBFlexibleWindowingAutoLayoutGroup *)v9 itemsInGroup];
        v8 = BSEqualArrays();
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_class();

  return [(SBFlexibleWindowingAutoLayoutGroup *)self _copyWithClass:v4];
}

- (id)_copyWithClass:(Class)a3
{
  v4 = [a3 alloc];
  v5 = [(NSArray *)self->_itemsInGroup copy];
  v6 = [v4 initWithItems:v5];

  *(v6 + 40) = self->_resizeGrabberPosition;
  *(v6 + 32) = self->_intersectionHeight;
  return v6;
}

- (id)succinctDescription
{
  v2 = [(SBFlexibleWindowingAutoLayoutGroup *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBFlexibleWindowingAutoLayoutGroup *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBFlexibleWindowingAutoLayoutGroup *)self succinctDescriptionBuilder];
  v5 = [v4 appendObject:self->_itemsInGroup withName:@"itemsInGroup"];
  v6 = [v4 appendPoint:@"resizeGrabberPosition" withName:{self->_resizeGrabberPosition.x, self->_resizeGrabberPosition.y}];
  v7 = [v4 appendFloat:@"intersectionHeight" withName:self->_intersectionHeight];

  return v4;
}

- (CGPoint)resizeGrabberPosition
{
  x = self->_resizeGrabberPosition.x;
  y = self->_resizeGrabberPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)initWithItems:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBFlexibleWindowingAutoLayoutGroup.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"items"}];
}

@end