@interface _UIButtonBarLayoutMetrics
- (NSString)description;
- (id)_copyWithModifications:(id)modifications;
- (id)_upcastIfReadOnly;
@end

@implementation _UIButtonBarLayoutMetrics

- (id)_upcastIfReadOnly
{
  if (!self->_locked)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIButtonBarLayout.m" lineNumber:48 description:@"Attempt to upcast a locked metrics object"];
  }

  return self;
}

- (id)_copyWithModifications:(id)modifications
{
  modificationsCopy = modifications;
  if (modificationsCopy || !self->_locked)
  {
    selfCopy = objc_alloc_init(_UIButtonBarLayoutMetrics);
    [(_UIButtonBarLayoutMetrics *)selfCopy setVerticalSizeGuide:self->_verticalSizeGuide];
    [(_UIButtonBarLayoutMetrics *)selfCopy setMinimumSpaceGuide:self->_minimumSpaceGuide];
    [(_UIButtonBarLayoutMetrics *)selfCopy setFlexibleSpaceGuide:self->_flexibleSpaceGuide];
    [(_UIButtonBarLayoutMetrics *)selfCopy setGroupSizeGuide:self->_groupSizeGuide];
    [(_UIButtonBarLayoutMetrics *)selfCopy setAllowsViewWrappers:self->_allowsViewWrappers];
    if (modificationsCopy)
    {
      modificationsCopy[2](modificationsCopy, selfCopy);
    }

    selfCopy->_locked = 1;
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
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