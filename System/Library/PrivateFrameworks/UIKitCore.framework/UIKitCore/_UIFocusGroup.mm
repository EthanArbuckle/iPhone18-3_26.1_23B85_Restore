@interface _UIFocusGroup
+ (id)nullGroupWithCoordinateSpace:(id)space;
- (BOOL)isEqual:(id)equal;
- (CGRect)boundingBox;
- (CGRect)primaryRect;
- (NSArray)childGroups;
- (NSArray)items;
- (UIFocusItem)primaryItem;
- (_UIFocusGroup)initWithIdentifier:(id)identifier parentGroup:(id)group coordinateSpace:(id)space;
- (_UIFocusGroup)parentGroup;
- (id)_deepCopyWithNewIdentifierToGroupMap:(id)map;
- (id)debugDescription;
- (id)description;
- (void)_insertChildGroup:(id)group;
- (void)_insertItem:(id)item;
- (void)_updateWithEnvironment:(id)environment;
- (void)_validateChildGroupOrderIfNecessary;
- (void)_validateItemOrderIfNecessary;
- (void)_validatePrimaryItemIfNecessary;
- (void)_validatePrimaryRectIfNeccessary;
@end

@implementation _UIFocusGroup

+ (id)nullGroupWithCoordinateSpace:(id)space
{
  spaceCopy = space;
  v4 = [(_UIFocusGroup *)[_UIFocusNullGroup alloc] initWithIdentifier:@"com.apple.UIKit.null" parentGroup:0 coordinateSpace:spaceCopy];

  return v4;
}

- (_UIFocusGroup)initWithIdentifier:(id)identifier parentGroup:(id)group coordinateSpace:(id)space
{
  identifierCopy = identifier;
  groupCopy = group;
  spaceCopy = space;
  if (identifierCopy && [identifierCopy length])
  {
    if (spaceCopy)
    {
      goto LABEL_4;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusGroup.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"identifier && identifier.length > 0"}];

    if (spaceCopy)
    {
      goto LABEL_4;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIFocusGroup.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"coordinateSpace"}];

LABEL_4:
  v24.receiver = self;
  v24.super_class = _UIFocusGroup;
  v12 = [(_UIFocusGroup *)&v24 init];
  if (v12)
  {
    v13 = [identifierCopy copy];
    v14 = *(v12 + 5);
    *(v12 + 5) = v13;

    v15 = objc_opt_new();
    v16 = *(v12 + 2);
    *(v12 + 2) = v15;

    v17 = objc_opt_new();
    v18 = *(v12 + 3);
    *(v12 + 3) = v17;

    objc_storeStrong(v12 + 7, space);
    v19 = *MEMORY[0x1E695F050];
    v20 = *(MEMORY[0x1E695F050] + 16);
    *(v12 + 104) = *MEMORY[0x1E695F050];
    *(v12 + 120) = v20;
    *(v12 + 72) = v19;
    *(v12 + 88) = v20;
    objc_storeWeak(v12 + 6, groupCopy);
    [groupCopy _insertChildGroup:v12];
  }

  return v12;
}

- (id)_deepCopyWithNewIdentifierToGroupMap:(id)map
{
  v24 = *MEMORY[0x1E69E9840];
  mapCopy = map;
  if (!mapCopy)
  {
    mapCopy = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  }

  identifier = [(_UIFocusGroup *)self identifier];
  v6 = [mapCopy objectForKey:identifier];
  if (!v6)
  {
    v7 = objc_alloc(objc_opt_class());
    coordinateSpace = [(_UIFocusGroup *)self coordinateSpace];
    v6 = [v7 initWithIdentifier:identifier parentGroup:0 coordinateSpace:coordinateSpace];

    v9 = [(NSMutableArray *)self->_items mutableCopy];
    v10 = *(v6 + 24);
    *(v6 + 24) = v9;

    origin = self->_boundingBox.origin;
    *(v6 + 120) = self->_boundingBox.size;
    *(v6 + 104) = origin;
    objc_storeStrong((v6 + 32), self->_primaryItem);
    *(v6 + 8) = self->_flags;
    [mapCopy setObject:v6 forKey:identifier];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    childGroups = [(_UIFocusGroup *)self childGroups];
    v13 = [childGroups countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(childGroups);
          }

          v17 = [*(*(&v19 + 1) + 8 * i) _deepCopyWithNewIdentifierToGroupMap:mapCopy];
          objc_storeWeak(v17 + 6, v6);
          [v6 _insertChildGroup:v17];
        }

        v14 = [childGroups countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v14);
    }
  }

  return v6;
}

- (void)_insertChildGroup:(id)group
{
  [(NSMutableArray *)self->_childGroups addObject:group];

  [(_UIFocusGroup *)self _invalidateChildGroupOrder];
}

- (void)_insertItem:(id)item
{
  [(NSMutableArray *)self->_items addObject:item];

  [(_UIFocusGroup *)self _invalidateItemOrder];
}

- (void)_updateWithEnvironment:(id)environment
{
  environmentCopy = environment;
  v11 = environmentCopy;
  if (!self->_owningEnvironment)
  {
    objc_storeStrong(&self->_owningEnvironment, environment);
    environmentCopy = v11;
  }

  v6 = _UIFocusItemSafeCast(environmentCopy);
  v7 = v6;
  if (v6)
  {
    v13.origin.x = _UIFocusItemFrameInCoordinateSpace(v6, self->_coordinateSpace);
    v13.origin.y = v8;
    v13.size.width = v9;
    v13.size.height = v10;
    self->_boundingBox = CGRectUnion(self->_boundingBox, v13);
  }
}

- (NSArray)childGroups
{
  [(_UIFocusGroup *)self _validateChildGroupOrderIfNecessary];
  v3 = [(NSMutableArray *)self->_childGroups copy];

  return v3;
}

- (NSArray)items
{
  [(_UIFocusGroup *)self _validateItemOrderIfNecessary];
  v3 = [(NSMutableArray *)self->_items copy];

  return v3;
}

- (UIFocusItem)primaryItem
{
  [(_UIFocusGroup *)self _validatePrimaryItemIfNecessary];
  primaryItem = self->_primaryItem;

  return primaryItem;
}

- (CGRect)primaryRect
{
  [(_UIFocusGroup *)self _validatePrimaryRectIfNeccessary];
  x = self->_primaryRect.origin.x;
  y = self->_primaryRect.origin.y;
  width = self->_primaryRect.size.width;
  height = self->_primaryRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)_validateItemOrderIfNecessary
{
  if ((*&self->_flags & 1) == 0)
  {
    *&self->_flags |= 1u;
    if ([(NSMutableArray *)self->_items count])
    {
      items = self->_items;

      [(NSMutableArray *)items sortUsingComparator:&__block_literal_global_404];
    }
  }
}

- (void)_validateChildGroupOrderIfNecessary
{
  if ((*&self->_flags & 2) == 0)
  {
    *&self->_flags |= 2u;
    if ([(NSMutableArray *)self->_childGroups count])
    {
      childGroups = self->_childGroups;

      [(NSMutableArray *)childGroups sortUsingComparator:&__block_literal_global_19_0];
    }
  }
}

- (void)_validatePrimaryItemIfNecessary
{
  v29 = *MEMORY[0x1E69E9840];
  if ((*&self->_flags & 4) == 0)
  {
    *&self->_flags |= 4u;
    if ([(NSMutableArray *)self->_items count])
    {
      firstObject = [(NSMutableArray *)self->_items firstObject];
      v4 = [UIFocusSystem focusSystemForEnvironment:firstObject];

      focusedItem = [v4 focusedItem];
      v22 = v4;
      _focusGroupHistory = [v4 _focusGroupHistory];
      identifier = [(_UIFocusGroup *)self identifier];
      v8 = [_focusGroupHistory lastFocusedItemForGroupIdentifier:identifier];

      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      selfCopy = self;
      items = [(_UIFocusGroup *)self items];
      v10 = [items countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = 0;
        v13 = 0;
        v14 = *v25;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v25 != v14)
            {
              objc_enumerationMutation(items);
            }

            v16 = *(*(&v24 + 1) + 8 * i);
            v17 = _UIFocusGroupPriorityForItem(v16, focusedItem, v8);
            if (v17 > v13)
            {
              v18 = v17;
              v19 = v16;

              v12 = v19;
              v13 = v18;
            }
          }

          v11 = [items countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v11);
      }

      else
      {
        v12 = 0;
      }

      primaryItem = selfCopy->_primaryItem;
      selfCopy->_primaryItem = v12;
    }

    else
    {
      v20 = self->_primaryItem;
      self->_primaryItem = 0;
    }
  }
}

- (void)_validatePrimaryRectIfNeccessary
{
  if ((*&self->_flags & 8) != 0)
  {
    return;
  }

  *&self->_flags |= 8u;
  v3 = *(MEMORY[0x1E695F050] + 16);
  self->_primaryRect.origin = *MEMORY[0x1E695F050];
  self->_primaryRect.size = v3;
  [(_UIFocusGroup *)self _validatePrimaryItemIfNecessary];
  firstObject = self->_primaryItem;
  if (!firstObject)
  {
    [(_UIFocusGroup *)self _validateItemOrderIfNecessary];
    firstObject = [(NSMutableArray *)self->_items firstObject];
    if (!firstObject)
    {
      firstObject = 0;
      goto LABEL_8;
    }
  }

  coordinateSpace = [(_UIFocusGroup *)self coordinateSpace];
  v5 = _UIFocusItemFrameInCoordinateSpace(firstObject, coordinateSpace);
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v29.origin.x = v5;
  v29.origin.y = v7;
  v29.size.width = v9;
  v29.size.height = v11;
  if (CGRectIsNull(v29))
  {
LABEL_8:
    [(_UIFocusGroup *)self _validateChildGroupOrderIfNecessary];
    firstObject2 = [(NSMutableArray *)self->_childGroups firstObject];
    if (firstObject2)
    {
      coordinateSpace2 = [(_UIFocusGroup *)self coordinateSpace];
      [firstObject2 primaryRect];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;
      coordinateSpace3 = [firstObject2 coordinateSpace];
      [coordinateSpace2 convertRect:coordinateSpace3 fromCoordinateSpace:{v15, v17, v19, v21}];
      self->_primaryRect.origin.x = v23;
      self->_primaryRect.origin.y = v24;
      self->_primaryRect.size.width = v25;
      self->_primaryRect.size.height = v26;
    }

    else
    {
      self->_primaryRect.origin = self->_boundingBox.origin;
      self->_primaryRect.size = self->_boundingBox.size;
    }

    goto LABEL_12;
  }

  self->_primaryRect.origin.x = v5;
  self->_primaryRect.origin.y = v7;
  self->_primaryRect.size.width = v9;
  self->_primaryRect.size.height = v11;
LABEL_12:
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(_UIFocusGroup *)self isEqualToFocusGroup:v5];
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  identifier = self->_identifier;
  v5 = NSStringFromCGRect(self->_boundingBox);
  v6 = NSStringFromCGRect(self->_primaryRect);
  v7 = [v3 stringWithFormat:@"<%@ boundingBox: %@; primaryRect: %@>", identifier, v5, v6];;

  return v7;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  identifier = self->_identifier;
  v7 = NSStringFromCGRect(self->_boundingBox);
  v8 = NSStringFromCGRect(self->_primaryRect);
  v9 = [v3 stringWithFormat:@"<%@: %p identifier: %@; boundingBox: %@; primaryRect: %@; items: %@>", v5, self, identifier, v7, v8, self->_items];;

  return v9;
}

- (_UIFocusGroup)parentGroup
{
  WeakRetained = objc_loadWeakRetained(&self->_parentGroup);

  return WeakRetained;
}

- (CGRect)boundingBox
{
  x = self->_boundingBox.origin.x;
  y = self->_boundingBox.origin.y;
  width = self->_boundingBox.size.width;
  height = self->_boundingBox.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end