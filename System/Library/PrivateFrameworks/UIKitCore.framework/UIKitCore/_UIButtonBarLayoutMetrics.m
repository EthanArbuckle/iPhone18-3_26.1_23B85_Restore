@interface _UIButtonBarLayoutMetrics
- (NSString)description;
- (id)_copyWithModifications:(id)a3;
- (id)_upcastIfReadOnly;
@end

@implementation _UIButtonBarLayoutMetrics

- (id)_upcastIfReadOnly
{
  if (!self->_locked)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"_UIButtonBarLayout.m" lineNumber:48 description:@"Attempt to upcast a locked metrics object"];
  }

  return self;
}

- (id)_copyWithModifications:(id)a3
{
  v4 = a3;
  if (v4 || !self->_locked)
  {
    v5 = objc_alloc_init(_UIButtonBarLayoutMetrics);
    [(_UIButtonBarLayoutMetrics *)v5 setVerticalSizeGuide:self->_verticalSizeGuide];
    [(_UIButtonBarLayoutMetrics *)v5 setMinimumSpaceGuide:self->_minimumSpaceGuide];
    [(_UIButtonBarLayoutMetrics *)v5 setFlexibleSpaceGuide:self->_flexibleSpaceGuide];
    [(_UIButtonBarLayoutMetrics *)v5 setGroupSizeGuide:self->_groupSizeGuide];
    [(_UIButtonBarLayoutMetrics *)v5 setAllowsViewWrappers:self->_allowsViewWrappers];
    if (v4)
    {
      v4[2](v4, v5);
    }

    v5->_locked = 1;
  }

  else
  {
    v5 = self;
  }

  return v5;
}

- (NSString)description
{
  v6.receiver = self;
  v6.super_class = _UIButtonBarLayoutMetrics;
  v3 = [(_UIButtonBarLayoutMetrics *)&v6 description];
  v4 = [v3 mutableCopy];

  [v4 appendFormat:@" verticalSizeGuide=%p minimumSpaceGuide=%p flexibleSpaceGuide=%p", self->_verticalSizeGuide, self->_minimumSpaceGuide, self->_flexibleSpaceGuide];
  if (self->_groupSizeGuide)
  {
    [v4 appendFormat:@" groupSizeGuide=%p", self->_groupSizeGuide];
  }

  if (self->_allowsViewWrappers)
  {
    [v4 appendString:@" allowsViewWrappers"];
  }

  return v4;
}

@end