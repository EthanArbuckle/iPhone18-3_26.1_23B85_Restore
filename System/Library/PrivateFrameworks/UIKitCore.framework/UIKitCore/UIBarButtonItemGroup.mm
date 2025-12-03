@interface UIBarButtonItemGroup
+ (UIBarButtonItemGroup)fixedGroupWithRepresentativeItem:(UIBarButtonItem *)representativeItem items:(NSArray *)items;
+ (UIBarButtonItemGroup)groupWithFixedSpace;
+ (UIBarButtonItemGroup)movableGroupWithCustomizationIdentifier:(NSString *)customizationIdentifier representativeItem:(UIBarButtonItem *)representativeItem items:(NSArray *)items;
+ (UIBarButtonItemGroup)optionalGroupWithCustomizationIdentifier:(NSString *)customizationIdentifier inDefaultCustomization:(BOOL)inDefaultCustomization representativeItem:(UIBarButtonItem *)representativeItem items:(NSArray *)items;
- (BOOL)_canCollapse;
- (BOOL)_isHiddenForCalculation;
- (BOOL)enumerateVisibleItems:(id)items;
- (BOOL)isDisplayingRepresentativeItem;
- (BOOL)reverseEnumerateVisibleItems:(id)items;
- (NSArray)barButtonItems;
- (UIBarButtonItemGroup)initWithBarButtonItems:(NSArray *)barButtonItems representativeItem:(UIBarButtonItem *)representativeItem;
- (UIBarButtonItemGroup)initWithCoder:(NSCoder *)coder;
- (UIMenu)_representativeItemMenu;
- (UIMenuElement)_effectiveMenuRepresentation;
- (_UIBarButtonItemGroupOwner)_owner;
- (id)_synthesizedMenuElements;
- (id)description;
- (void)_ib_setCustomizationIdentifier:(id)identifier;
- (void)_relinquishOwnership:(id)ownership;
- (void)_removeBarButtonItem:(id)item;
- (void)_removeRepresentative:(id)representative;
- (void)_sendPrepareForLayout;
- (void)_setImplicitlyGenerated:(BOOL)generated;
- (void)_setLocked:(BOOL)locked;
- (void)_setRequiresOwnSection:(BOOL)section;
- (void)_setSendActionsBeforeDismiss:(BOOL)dismiss;
- (void)_validateAllItems;
- (void)encodeWithCoder:(id)coder;
- (void)setAlwaysAvailable:(BOOL)alwaysAvailable;
- (void)setBarButtonItems:(NSArray *)barButtonItems;
- (void)setHidden:(BOOL)hidden;
- (void)setMenuRepresentation:(UIMenuElement *)menuRepresentation;
- (void)setRepresentativeItem:(UIBarButtonItem *)representativeItem;
@end

@implementation UIBarButtonItemGroup

- (NSArray)barButtonItems
{
  v2 = [(NSMutableArray *)self->_barButtonItems copy];

  return v2;
}

- (_UIBarButtonItemGroupOwner)_owner
{
  WeakRetained = objc_loadWeakRetained(&self->_owner);

  return WeakRetained;
}

- (BOOL)_isHiddenForCalculation
{
  if ([(UIBarButtonItemGroup *)self _calculationVisibility])
  {
    LOBYTE(v3) = [(UIBarButtonItemGroup *)self _calculationVisibility]== 1;
  }

  else
  {
    return *&self->_groupFlags & 1;
  }

  return v3;
}

- (void)_sendPrepareForLayout
{
  notifyPrepareForLayout = self->__notifyPrepareForLayout;
  if (notifyPrepareForLayout)
  {
    notifyPrepareForLayout[2](notifyPrepareForLayout, self);
  }
}

- (BOOL)_canCollapse
{
  if (!self->_representativeItem)
  {
    return 0;
  }

  return !dyld_program_sdk_at_least() || ![(UIBarButtonItem *)self->_representativeItem isSpaceItem];
}

- (void)_removeBarButtonItem:(id)item
{
  v14[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v6 = dyld_program_sdk_at_least();
  groupFlags = self->_groupFlags;
  if (v6)
  {
    if ((groupFlags & 2) != 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"UIBarButtonItemGroup.m" lineNumber:70 description:@"Taking barButtonItems from a system owned UIBarButtonItemGroup is not expected and may result in unexpected behavior."];
    }
  }

  else if ((groupFlags & 2) != 0)
  {
    v12 = *(__UILogGetCategoryCachedImpl("Assert", &_removeBarButtonItem____s_category) + 8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "Taking barButtonItems from a system owned UIBarButtonItemGroup is not expected and may result in unexpected behavior.", v13, 2u);
    }
  }

  if ([(NSMutableArray *)self->_barButtonItems count])
  {
    v9 = [(NSMutableArray *)self->_barButtonItems indexOfObjectIdenticalTo:itemCopy];
    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableArray *)self->_barButtonItems removeObjectAtIndex:v9];
      _owner = [(UIBarButtonItemGroup *)self _owner];
      v14[0] = itemCopy;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
      [_owner _groupDidUpdateItems:self removedItems:v11];
    }
  }
}

- (void)_removeRepresentative:(id)representative
{
  representativeCopy = representative;
  v6 = dyld_program_sdk_at_least();
  groupFlags = self->_groupFlags;
  if (v6)
  {
    if ((groupFlags & 2) != 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"UIBarButtonItemGroup.m" lineNumber:83 description:@"Taking barButtonItems from a system owned UIBarButtonItemGroup is not expected and may result in unexpected behavior."];
    }
  }

  else if ((groupFlags & 2) != 0)
  {
    v12 = *(__UILogGetCategoryCachedImpl("Assert", &_removeRepresentative____s_category) + 8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "Taking barButtonItems from a system owned UIBarButtonItemGroup is not expected and may result in unexpected behavior.", v13, 2u);
    }
  }

  representativeItem = self->_representativeItem;
  if (representativeItem == representativeCopy)
  {
    self->_representativeItem = 0;
    v10 = representativeItem;

    _owner = [(UIBarButtonItemGroup *)self _owner];
    [_owner _groupDidUpdateRepresentative:self fromRepresentative:v10];
  }
}

- (UIBarButtonItemGroup)initWithBarButtonItems:(NSArray *)barButtonItems representativeItem:(UIBarButtonItem *)representativeItem
{
  v6 = barButtonItems;
  v7 = representativeItem;
  v13.receiver = self;
  v13.super_class = UIBarButtonItemGroup;
  v8 = [(UIBarButtonItemGroup *)&v13 init];
  if (v8)
  {
    _UIBarButtonGroupCheckArguments(v6, v7);
    if (v6)
    {
      v9 = v6;
    }

    else
    {
      v9 = MEMORY[0x1E695E0F0];
    }

    v10 = [(NSArray *)v9 mutableCopy];
    v11 = v8->_barButtonItems;
    v8->_barButtonItems = v10;

    _UIBarButtonGroupAssign(v8->_barButtonItems, v8);
    objc_storeStrong(&v8->_representativeItem, representativeItem);
    _UIBarButtonGroupAssignRepresentative(v8->_representativeItem, v8);
  }

  return v8;
}

- (UIBarButtonItemGroup)initWithCoder:(NSCoder *)coder
{
  v4 = coder;
  v20.receiver = self;
  v20.super_class = UIBarButtonItemGroup;
  v5 = [(UIBarButtonItemGroup *)&v20 init];
  if (v5)
  {
    v6 = [(NSCoder *)v4 decodeObjectForKey:@"UIBarButtonItems"];
    v7 = v6;
    if (!v6)
    {
      v6 = MEMORY[0x1E695E0F0];
    }

    v8 = [v6 mutableCopy];
    barButtonItems = v5->_barButtonItems;
    v5->_barButtonItems = v8;

    _UIBarButtonGroupAssign(v5->_barButtonItems, v5);
    v10 = [(NSCoder *)v4 decodeObjectForKey:@"UIRepresentativeItem"];
    representativeItem = v5->_representativeItem;
    v5->_representativeItem = v10;

    v12 = [(NSCoder *)v4 decodeObjectForKey:@"UIMenuRepresentation"];
    menuRepresentation = v5->_menuRepresentation;
    v5->_menuRepresentation = v12;

    *&v5->_groupFlags = *&v5->_groupFlags & 0xFFFE | [(NSCoder *)v4 decodeBoolForKey:@"UIGroupHidden"];
    if ([(NSCoder *)v4 decodeBoolForKey:@"UIShowInOverflow"])
    {
      v14 = 8;
    }

    else
    {
      v14 = 0;
    }

    *&v5->_groupFlags = *&v5->_groupFlags & 0xFFF7 | v14;
    v15 = [(NSCoder *)v4 decodeObjectForKey:@"UICustomizationIdentifier"];
    customizationIdentifier = v5->_customizationIdentifier;
    v5->_customizationIdentifier = v15;

    if (v5->_customizationIdentifier)
    {
      *&v5->_groupFlags = (16 * ([(NSCoder *)v4 decodeIntegerForKey:@"UICustomizationDisposition"]& 3)) | *&v5->_groupFlags & 0xFFCF;
    }

    if ([(NSCoder *)v4 decodeBoolForKey:@"UIGroupImplicitlyGenerated"])
    {
      v17 = 64;
    }

    else
    {
      v17 = 0;
    }

    *&v5->_groupFlags = *&v5->_groupFlags & 0xFFBF | v17;
    if ([(NSCoder *)v4 decodeBoolForKey:@"UIGroupRequiresOwnSection"])
    {
      v18 = 128;
    }

    else
    {
      v18 = 0;
    }

    *&v5->_groupFlags = *&v5->_groupFlags & 0xFF7F | v18;
    _UIBarButtonGroupAssignRepresentative(v5->_representativeItem, v5);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  barButtonItems = self->_barButtonItems;
  v11 = coderCopy;
  if (barButtonItems)
  {
    [coderCopy encodeObject:barButtonItems forKey:@"UIBarButtonItems"];
    coderCopy = v11;
  }

  representativeItem = self->_representativeItem;
  if (representativeItem)
  {
    [v11 encodeObject:representativeItem forKey:@"UIRepresentativeItem"];
    coderCopy = v11;
  }

  menuRepresentation = self->_menuRepresentation;
  if (menuRepresentation)
  {
    [v11 encodeObject:menuRepresentation forKey:@"UIMenuRepresentation"];
    coderCopy = v11;
  }

  groupFlags = self->_groupFlags;
  if (groupFlags)
  {
    [v11 encodeBool:1 forKey:@"UIGroupHidden"];
    coderCopy = v11;
    groupFlags = self->_groupFlags;
  }

  if ((groupFlags & 8) != 0)
  {
    [v11 encodeBool:1 forKey:@"UIShowInOverflow"];
    coderCopy = v11;
  }

  customizationIdentifier = self->_customizationIdentifier;
  if (customizationIdentifier)
  {
    [v11 encodeObject:customizationIdentifier forKey:@"UICustomizationIdentifier"];
    [v11 encodeInteger:(*&self->_groupFlags >> 4) & 3 forKey:@"UICustomizationDisposition"];
    coderCopy = v11;
  }

  v10 = self->_groupFlags;
  if ((v10 & 0x40) != 0)
  {
    [v11 encodeBool:1 forKey:@"UIGroupImplicitlyGenerated"];
    coderCopy = v11;
    v10 = self->_groupFlags;
  }

  if ((v10 & 0x80) != 0)
  {
    [v11 encodeBool:1 forKey:@"UIGroupRequiresOwnSection"];
    coderCopy = v11;
  }
}

- (void)setBarButtonItems:(NSArray *)barButtonItems
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = barButtonItems;
  if ((*&self->_groupFlags & 2) != 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIBarButtonItemGroup.m" lineNumber:189 description:@"You cannot change the barButtonItems of system owned UIBarButtonItemGroups"];
  }

  if (![(NSArray *)v5 isEqualToArray:self->_barButtonItems])
  {
    v6 = [MEMORY[0x1E695DFA8] setWithArray:self->_barButtonItems];
    if ([(NSArray *)v5 count])
    {
      v7 = [MEMORY[0x1E695DFD8] setWithArray:v5];
      [v6 minusSet:v7];
    }

    _UIBarButtonGroupCheckArguments(v5, self->_representativeItem);
    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = MEMORY[0x1E695E0F0];
    }

    v9 = [(NSArray *)v8 mutableCopy];
    v10 = self->_barButtonItems;
    self->_barButtonItems = v9;

    _UIBarButtonGroupAssign(self->_barButtonItems, self);
    if ([v6 count])
    {
      [v6 allObjects];
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v11 = v21 = 0u;
      v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v19;
        do
        {
          v15 = 0;
          do
          {
            if (*v19 != v14)
            {
              objc_enumerationMutation(v11);
            }

            [*(*(&v18 + 1) + 8 * v15++) _setButtonGroup:0 isRepresentative:{0, v18}];
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v13);
      }
    }

    else
    {
      v11 = 0;
    }

    _owner = [(UIBarButtonItemGroup *)self _owner];
    [_owner _groupDidUpdateItems:self removedItems:v11];
  }
}

- (BOOL)isDisplayingRepresentativeItem
{
  view = [(UIBarButtonItem *)self->_representativeItem view];
  window = [view window];
  v4 = window != 0;

  return v4;
}

- (void)setRepresentativeItem:(UIBarButtonItem *)representativeItem
{
  v5 = representativeItem;
  if ((*&self->_groupFlags & 2) != 0)
  {
    v13 = v5;
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIBarButtonItemGroup.m" lineNumber:246 description:@"You cannot change the representativeItem of system owned UIBarButtonItemGroups"];

    v5 = v13;
  }

  if (self->_representativeItem != v5)
  {
    v12 = v5;
    _UIBarButtonGroupCheckArguments(self->_barButtonItems, v5);
    _UIBarButtonGroupAssignRepresentative(self->_representativeItem, 0);
    v6 = self->_representativeItem;
    v7 = v12;
    v8 = self->_representativeItem;
    self->_representativeItem = v7;
    v9 = v6;

    _UIBarButtonGroupAssignRepresentative(self->_representativeItem, self);
    _owner = [(UIBarButtonItemGroup *)self _owner];
    [_owner _groupDidUpdateRepresentative:self fromRepresentative:v9];

    v5 = v12;
  }
}

- (void)setAlwaysAvailable:(BOOL)alwaysAvailable
{
  if (alwaysAvailable)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_groupFlags = *&self->_groupFlags & 0xFFF7 | v3;
}

- (void)setHidden:(BOOL)hidden
{
  groupFlags = self->_groupFlags;
  if ((groupFlags & 1) != hidden)
  {
    *&self->_groupFlags = groupFlags & 0xFFFE | hidden;
    _owner = [(UIBarButtonItemGroup *)self _owner];
    [_owner _groupDidUpdateVisibility:self];
  }
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = UIBarButtonItemGroup;
  v3 = [(UIBarButtonItemGroup *)&v8 description];
  v4 = [v3 mutableCopy];

  if (*&self->_groupFlags)
  {
    [v4 appendString:@" hidden"];
  }

  if (self->_customizationIdentifier)
  {
    [v4 appendFormat:@" customizationIdentifier='%@'", self->_customizationIdentifier];
    [v4 appendString:off_1E70F75F0[(*&self->_groupFlags >> 4) & 3]];
  }

  groupFlags = self->_groupFlags;
  if ((groupFlags & 8) != 0)
  {
    [v4 appendString:@" alwaysAvailable"];
    groupFlags = self->_groupFlags;
    if ((groupFlags & 0x40) == 0)
    {
LABEL_7:
      if ((groupFlags & 0x80) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((groupFlags & 0x40) == 0)
  {
    goto LABEL_7;
  }

  [v4 appendString:@" implicitlyGenerated"];
  if ((*&self->_groupFlags & 0x80) != 0)
  {
LABEL_8:
    [v4 appendString:@" requiresOwnSection"];
  }

LABEL_9:
  if (self->_representativeItem)
  {
    [v4 appendFormat:@" representativeItem=%@", self->_representativeItem];
  }

  if ([(NSMutableArray *)self->_barButtonItems count])
  {
    v6 = [(NSMutableArray *)self->_barButtonItems componentsJoinedByString:@"\n\t"];
    [v4 appendFormat:@" barButtonItems={\n\t%@\n}", v6];
  }

  if (self->_menuRepresentation)
  {
    [v4 appendFormat:@" menuRepresentation=%@", self->_menuRepresentation];
  }

  return v4;
}

+ (UIBarButtonItemGroup)fixedGroupWithRepresentativeItem:(UIBarButtonItem *)representativeItem items:(NSArray *)items
{
  v5 = items;
  v6 = representativeItem;
  v7 = [objc_alloc(objc_opt_class()) initWithBarButtonItems:v5 representativeItem:v6];

  v8 = *(v7 + 16);
  *(v7 + 16) = 0;

  *(v7 + 24) &= 0xFFCFu;

  return v7;
}

+ (UIBarButtonItemGroup)movableGroupWithCustomizationIdentifier:(NSString *)customizationIdentifier representativeItem:(UIBarButtonItem *)representativeItem items:(NSArray *)items
{
  v7 = items;
  v8 = representativeItem;
  v9 = customizationIdentifier;
  v10 = [objc_alloc(objc_opt_class()) initWithBarButtonItems:v7 representativeItem:v8];

  v11 = [(NSString *)v9 copy];
  v12 = *(v10 + 16);
  *(v10 + 16) = v11;

  *(v10 + 24) = *(v10 + 24) & 0xFFCF | 0x10;

  return v10;
}

+ (UIBarButtonItemGroup)optionalGroupWithCustomizationIdentifier:(NSString *)customizationIdentifier inDefaultCustomization:(BOOL)inDefaultCustomization representativeItem:(UIBarButtonItem *)representativeItem items:(NSArray *)items
{
  v7 = inDefaultCustomization;
  v9 = items;
  v10 = representativeItem;
  v11 = customizationIdentifier;
  v12 = [objc_alloc(objc_opt_class()) initWithBarButtonItems:v9 representativeItem:v10];

  v13 = [(NSString *)v11 copy];
  v14 = *(v12 + 16);
  *(v12 + 16) = v13;

  if (v7)
  {
    v15 = 32;
  }

  else
  {
    v15 = 48;
  }

  *(v12 + 24) = *(v12 + 24) & 0xFFCF | v15;

  return v12;
}

+ (UIBarButtonItemGroup)groupWithFixedSpace
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(objc_opt_class());
  v3 = +[UIBarButtonItem fixedSpaceItem];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v5 = [v2 initWithBarButtonItems:v4 representativeItem:0];

  return v5;
}

- (void)setMenuRepresentation:(UIMenuElement *)menuRepresentation
{
  if (self->_menuRepresentation != menuRepresentation)
  {
    v5 = [(UIMenuElement *)menuRepresentation copy];
    v6 = self->_menuRepresentation;
    self->_menuRepresentation = v5;

    [(UIBarButtonItemGroup *)self _sendNeedsToolbarUpdate];
  }
}

- (void)_setLocked:(BOOL)locked
{
  if (locked)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_groupFlags = *&self->_groupFlags & 0xFFFD | v3;
}

- (void)_setSendActionsBeforeDismiss:(BOOL)dismiss
{
  if (dismiss)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_groupFlags = *&self->_groupFlags & 0xFFFB | v3;
}

- (void)_relinquishOwnership:(id)ownership
{
  ownershipCopy = ownership;
  WeakRetained = objc_loadWeakRetained(&self->_owner);

  v5 = WeakRetained;
  if (WeakRetained == ownershipCopy)
  {
    objc_storeWeak(&self->_owner, 0);
    v5 = WeakRetained;
  }
}

- (id)_synthesizedMenuElements
{
  v18 = *MEMORY[0x1E69E9840];
  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_barButtonItems;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if (([v9 isHidden] & 1) == 0)
        {
          _effectiveMenuRepresentation = [v9 _effectiveMenuRepresentation];
          if (_effectiveMenuRepresentation)
          {
            [orderedSet addObject:_effectiveMenuRepresentation];
          }
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  array = [orderedSet array];

  return array;
}

- (UIMenu)_representativeItemMenu
{
  _synthesizedMenuElements = [(UIBarButtonItemGroup *)self _synthesizedMenuElements];
  v3 = [UIMenu menuWithChildren:_synthesizedMenuElements];

  return v3;
}

- (UIMenuElement)_effectiveMenuRepresentation
{
  notifyWillRequestMenuRepresentation = self->__notifyWillRequestMenuRepresentation;
  if (notifyWillRequestMenuRepresentation)
  {
    notifyWillRequestMenuRepresentation[2](notifyWillRequestMenuRepresentation, self);
  }

  menuRepresentation = self->_menuRepresentation;
  if (menuRepresentation)
  {
    v5 = menuRepresentation;
  }

  else
  {
    _synthesizedMenuElements = [(UIBarButtonItemGroup *)self _synthesizedMenuElements];
    if ([_synthesizedMenuElements count] == 1)
    {
      [_synthesizedMenuElements firstObject];
    }

    else
    {
      [UIMenu menuWithTitle:&stru_1EFB14550 image:0 identifier:0 options:1 children:_synthesizedMenuElements];
    }
    v5 = ;
  }

  return v5;
}

- (BOOL)enumerateVisibleItems:(id)items
{
  itemsCopy = items;
  v5 = itemsCopy;
  v6 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  if ((*&self->_groupFlags & 1) == 0)
  {
    barButtonItems = self->_barButtonItems;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __46__UIBarButtonItemGroup_enumerateVisibleItems___block_invoke;
    v9[3] = &unk_1E70F75D0;
    v10 = itemsCopy;
    v11 = &v12;
    [(NSMutableArray *)barButtonItems enumerateObjectsUsingBlock:v9];

    v6 = *(v13 + 24);
  }

  _Block_object_dispose(&v12, 8);

  return v6 & 1;
}

void __46__UIBarButtonItemGroup_enumerateVisibleItems___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if (([v6 isHidden] & 1) == 0)
  {
    (*(*(a1 + 32) + 16))();
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 0;
  }
}

- (BOOL)reverseEnumerateVisibleItems:(id)items
{
  itemsCopy = items;
  v5 = itemsCopy;
  v6 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  if ((*&self->_groupFlags & 1) == 0)
  {
    barButtonItems = self->_barButtonItems;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __53__UIBarButtonItemGroup_reverseEnumerateVisibleItems___block_invoke;
    v9[3] = &unk_1E70F75D0;
    v10 = itemsCopy;
    v11 = &v12;
    [(NSMutableArray *)barButtonItems enumerateObjectsWithOptions:2 usingBlock:v9];

    v6 = *(v13 + 24);
  }

  _Block_object_dispose(&v12, 8);

  return v6 & 1;
}

void __53__UIBarButtonItemGroup_reverseEnumerateVisibleItems___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if (([v6 isHidden] & 1) == 0)
  {
    (*(*(a1 + 32) + 16))();
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 0;
  }
}

- (void)_validateAllItems
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_barButtonItems;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) _executeValidationHandler];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(UIBarButtonItem *)self->_representativeItem _executeValidationHandler];
}

- (void)_setImplicitlyGenerated:(BOOL)generated
{
  if (generated)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_groupFlags = *&self->_groupFlags & 0xFFBF | v3;
}

- (void)_setRequiresOwnSection:(BOOL)section
{
  groupFlags = self->_groupFlags;
  if (((((groupFlags & 0x80) == 0) ^ section) & 1) == 0)
  {
    if (section)
    {
      v6 = 128;
    }

    else
    {
      v6 = 0;
    }

    *&self->_groupFlags = groupFlags & 0xFF7F | v6;
    _owner = [(UIBarButtonItemGroup *)self _owner];
    [_owner _groupDidUpdatePlatterizationPreference:self];
  }
}

- (void)_ib_setCustomizationIdentifier:(id)identifier
{
  v4 = [identifier copy];
  customizationIdentifier = self->_customizationIdentifier;
  self->_customizationIdentifier = v4;

  if (!self->_customizationIdentifier)
  {
    *&self->_groupFlags &= 0xFFCFu;
  }
}

@end