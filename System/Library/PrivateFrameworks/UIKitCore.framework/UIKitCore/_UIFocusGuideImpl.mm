@interface _UIFocusGuideImpl
- (BOOL)_isEligibleForFocusInteraction;
- (CGRect)frame;
- (NSArray)preferredFocusEnvironments;
- (NSString)description;
- (_UIFocusGuideImpl)initWithDelegate:(id)delegate;
- (id)_preferredFocusRegionCoordinateSpace;
- (id)focusGuideRegion:(id)region preferredFocusEnvironmentsForMovementRequest:(id)request;
- (void)_searchForFocusRegionsInContext:(id)context;
- (void)_setAutomaticallyPreferOwningItem:(BOOL)item;
- (void)_setDidSetPreferredFocusedEnvironments:(BOOL)environments;
- (void)_setFocusPriorityRequired:(BOOL)required;
- (void)_setIgnoresSpeedBumpEdges:(BOOL)edges;
- (void)_setIsUnclippable:(BOOL)unclippable;
- (void)_setIsUnoccludable:(BOOL)unoccludable;
- (void)focusGuideRegion:(id)region willParticipateAsDestinationRegionInFocusUpdate:(id)update;
- (void)setPreferredFocusEnvironments:(id)environments;
@end

@implementation _UIFocusGuideImpl

- (CGRect)frame
{
  [(_UIFocusGuideImplDelegate *)self->_delegate frameForFocusGuide:self];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (_UIFocusGuideImpl)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (!delegateCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusGuideImpl.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"delegate != nil"}];
  }

  v11.receiver = self;
  v11.super_class = _UIFocusGuideImpl;
  v6 = [(_UIFocusGuideImpl *)&v11 init];
  v7 = v6;
  if (v6)
  {
    *&v6->_flags |= 0x41u;
    v6->_delegate = delegateCopy;
    if (objc_opt_respondsToSelector())
    {
      v8 = 0x80;
    }

    else
    {
      v8 = 0;
    }

    *&v7->_flags = v8 & 0x80 | *&v7->_flags & 0x7F;
  }

  return v7;
}

- (void)_setIsUnoccludable:(BOOL)unoccludable
{
  if (unoccludable)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_flags = *&self->_flags & 0xFD | v3;
}

- (void)_setIsUnclippable:(BOOL)unclippable
{
  if (unclippable)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_flags = *&self->_flags & 0xFB | v3;
}

- (void)_setFocusPriorityRequired:(BOOL)required
{
  if (required)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_flags = *&self->_flags & 0xF7 | v3;
}

- (void)_setIgnoresSpeedBumpEdges:(BOOL)edges
{
  if (edges)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_flags = *&self->_flags & 0xEF | v3;
}

- (void)_setAutomaticallyPreferOwningItem:(BOOL)item
{
  if (item)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_flags = *&self->_flags & 0xBF | v3;
}

- (void)_setDidSetPreferredFocusedEnvironments:(BOOL)environments
{
  if (environments)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_flags = *&self->_flags & 0xDF | v3;
}

- (NSArray)preferredFocusEnvironments
{
  v8[1] = *MEMORY[0x1E69E9840];
  if ([(NSArray *)self->_preferredFocusEnvironments count])
  {
    preferredFocusEnvironments = self->_preferredFocusEnvironments;
  }

  else
  {
    if ([(_UIFocusGuideImpl *)self _automaticallyPreferOwningItem])
    {
      if ((*&self->_flags & 0x20) == 0)
      {
        owningItem = [(_UIFocusGuideImpl *)self owningItem];

        if (owningItem)
        {
          owningItem2 = [(_UIFocusGuideImpl *)self owningItem];
          v8[0] = owningItem2;
          v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];

          goto LABEL_10;
        }
      }
    }

    preferredFocusEnvironments = self->_preferredFocusEnvironments;
    if (!preferredFocusEnvironments)
    {
      preferredFocusEnvironments = MEMORY[0x1E695E0F0];
    }
  }

  v6 = preferredFocusEnvironments;
LABEL_10:

  return v6;
}

- (void)setPreferredFocusEnvironments:(id)environments
{
  environmentsCopy = environments;
  if (!environmentsCopy || self->_preferredFocusEnvironments != environmentsCopy)
  {
    v8 = environmentsCopy;
    v5 = [(NSArray *)environmentsCopy copy];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong(&self->_preferredFocusEnvironments, v7);

    environmentsCopy = v8;
  }

  *&self->_flags |= 0x20u;
}

- (BOOL)_isEligibleForFocusInteraction
{
  if (![(_UIFocusGuideImpl *)self isEnabled])
  {
    return 0;
  }

  owningItem = [(_UIFocusGuideImpl *)self owningItem];
  if (owningItem)
  {
    preferredFocusEnvironments = [(_UIFocusGuideImpl *)self preferredFocusEnvironments];
    v5 = [preferredFocusEnvironments count] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_preferredFocusRegionCoordinateSpace
{
  owningItem = [(_UIFocusGuideImpl *)self owningItem];
  focusItemContainer = [owningItem focusItemContainer];
  coordinateSpace = [focusItemContainer coordinateSpace];

  return coordinateSpace;
}

- (void)_searchForFocusRegionsInContext:(id)context
{
  contextCopy = context;
  v5 = [_UIFocusGuideRegion alloc];
  [(_UIFocusGuideImpl *)self frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  owningItem = [(_UIFocusGuideImpl *)self owningItem];
  focusItemContainer = [owningItem focusItemContainer];
  coordinateSpace = [focusItemContainer coordinateSpace];
  v19 = [(_UIFocusGuideRegion *)v5 initWithFrame:coordinateSpace coordinateSpace:v7, v9, v11, v13];

  [(_UIFocusGuideRegion *)v19 setDelegate:self];
  [(_UIFocusGuideRegion *)v19 _setIsUnoccludable:[(_UIFocusGuideImpl *)self _isUnoccludable]];
  _focusPriorityRequired = [(_UIFocusGuideImpl *)self _focusPriorityRequired];
  LODWORD(v18) = 1140457472;
  if (_focusPriorityRequired)
  {
    *&v18 = 1000.0;
  }

  [(_UIFocusGuideRegion *)v19 _setFocusPriority:v18];
  [(_UIFocusGuideRegion *)v19 _setIgnoresSpeedBumpEdges:[(_UIFocusGuideImpl *)self _ignoresSpeedBumpEdges]];
  [(_UIFocusGuideRegion *)v19 _setIsUnclippable:[(_UIFocusGuideImpl *)self _isUnclippable]];
  [contextCopy addRegion:v19];
}

- (id)focusGuideRegion:(id)region preferredFocusEnvironmentsForMovementRequest:(id)request
{
  if ((*&self->_flags & 0x80000000) != 0)
  {
    movementInfo = [request movementInfo];
    heading = [movementInfo heading];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      heading = [movementInfo originatingHeading];
    }

    v5 = [(_UIFocusGuideImplDelegate *)self->_delegate focusGuide:self preferredEnvironmentsForHeading:heading];
  }

  else
  {
    v5 = [(_UIFocusGuideImpl *)self preferredFocusEnvironments:region];
  }

  return v5;
}

- (void)focusGuideRegion:(id)region willParticipateAsDestinationRegionInFocusUpdate:(id)update
{
  updateCopy = update;
  _focusedGuideImpl = [updateCopy _focusedGuideImpl];

  if (!_focusedGuideImpl)
  {
    [updateCopy _setFocusedGuideImpl:self];
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = _UIFocusGuideImpl;
  v4 = [(_UIFocusGuideImpl *)&v9 description];
  isEnabled = [(_UIFocusGuideImpl *)self isEnabled];
  v6 = @"NO";
  if (isEnabled)
  {
    v6 = @"YES";
  }

  v7 = [v3 stringWithFormat:@"%@, isEnabled: %@", v4, v6];

  return v7;
}

@end