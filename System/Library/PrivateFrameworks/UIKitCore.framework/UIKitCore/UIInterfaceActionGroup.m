@interface UIInterfaceActionGroup
+ (BOOL)changedProperties:(id)a3 containsAny:(id)a4;
+ (id)actionGroupWithActions:(id)a3;
+ (id)actionGroupWithActionsBySection:(id)a3;
- (CGSize)leadingImageLayoutSize;
- (CGSize)trailingImageLayoutSize;
- (NSString)description;
- (UIInterfaceActionGroup)initWithTitle:(id)a3 actionsBySection:(id)a4;
- (id)_deepCopyOfActionsBySection;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_addActionGroupDisplayPropertyObserver:(id)a3;
- (void)_beginObservingActions;
- (void)_endObservingActions;
- (void)_notifyObserversDidChangeActionProperty:(id)a3;
- (void)_notifyObserversVisualStyleDidChange;
- (void)_performWithActionObservingDisabled:(id)a3;
- (void)_reloadImageLayoutSizesUsingExistingActionImages;
- (void)_removeActionGroupDisplayPropertyObserver:(id)a3;
- (void)_setVisualStyle:(id)a3;
- (void)_updateActionImageLayoutSizes;
- (void)interfaceAction:(id)a3 reloadDisplayedContentActionProperties:(id)a4;
- (void)setLeadingImageLayoutSize:(CGSize)a3;
- (void)setPreferredAction:(id)a3;
- (void)setTrailingImageLayoutSize:(CGSize)a3;
@end

@implementation UIInterfaceActionGroup

+ (BOOL)changedProperties:(id)a3 containsAny:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = *v13;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v7);
          }

          if ([v5 containsObject:{*(*(&v12 + 1) + 8 * i), v12}])
          {
            LOBYTE(v8) = 1;
            goto LABEL_12;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    LOBYTE(v8) = 1;
  }

  return v8;
}

+ (id)actionGroupWithActions:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 alloc];
  v6 = [[UIInterfaceActionSection alloc] initWithActions:v4];

  v10[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v8 = [v5 initWithTitle:&stru_1EFB14550 actionsBySection:v7];

  return v8;
}

+ (id)actionGroupWithActionsBySection:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithTitle:&stru_1EFB14550 actionsBySection:v4];

  return v5;
}

- (UIInterfaceActionGroup)initWithTitle:(id)a3 actionsBySection:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = UIInterfaceActionGroup;
  v9 = [(UIInterfaceActionGroup *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_title, a3);
    v11 = [UIInterfaceActionSection actionsFromSections:v8];
    actions = v10->_actions;
    v10->_actions = v11;

    objc_storeStrong(&v10->_actionsBySection, a4);
    v13 = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
    weakDisplayPropertyObservers = v10->_weakDisplayPropertyObservers;
    v10->_weakDisplayPropertyObservers = v13;

    v15 = *MEMORY[0x1E695F060];
    v10->_leadingImageLayoutSize = *MEMORY[0x1E695F060];
    v10->_trailingImageLayoutSize = v15;
    [(UIInterfaceActionGroup *)v10 _beginObservingActions];
    [(UIInterfaceActionGroup *)v10 _reloadImageLayoutSizesUsingExistingActionImages];
  }

  return v10;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E695DF70] array];
  if ([(NSString *)self->_title length])
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"'%@'", self->_title];
    [v3 addObject:v4];
  }

  v5 = MEMORY[0x1E696AEC0];
  if ([(NSArray *)self->_actions count])
  {
    actions = self->_actions;
  }

  else
  {
    actions = @"()";
  }

  v7 = [v5 stringWithFormat:@"actions = %@", actions];
  [v3 addObject:v7];

  v8 = MEMORY[0x1E696AEC0];
  v13.receiver = self;
  v13.super_class = UIInterfaceActionGroup;
  v9 = [(UIInterfaceActionGroup *)&v13 description];
  v10 = [v3 componentsJoinedByString:{@", "}];
  v11 = [v8 stringWithFormat:@"%@ %@", v9, v10];

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(UIInterfaceActionGroup *)self title];
  v6 = [(UIInterfaceActionGroup *)self _deepCopyOfActionsBySection];
  v7 = [v4 initWithTitle:v5 actionsBySection:v6];

  *(v7 + 56) = self->_leadingImageLayoutSize;
  *(v7 + 72) = self->_trailingImageLayoutSize;
  objc_storeStrong((v7 + 16), self->_preferredAction);
  return v7;
}

- (void)setLeadingImageLayoutSize:(CGSize)a3
{
  if (self->_leadingImageLayoutSize.width != a3.width || self->_leadingImageLayoutSize.height != a3.height)
  {
    self->_leadingImageLayoutSize = a3;
    [(UIInterfaceActionGroup *)self _updateActionImageLayoutSizes];
  }
}

- (void)setTrailingImageLayoutSize:(CGSize)a3
{
  if (self->_trailingImageLayoutSize.width != a3.width || self->_trailingImageLayoutSize.height != a3.height)
  {
    self->_trailingImageLayoutSize = a3;
    [(UIInterfaceActionGroup *)self _updateActionImageLayoutSizes];
  }
}

- (void)setPreferredAction:(id)a3
{
  v5 = a3;
  if (([(UIInterfaceAction *)self->_preferredAction isEqual:v5]& 1) == 0)
  {
    objc_storeStrong(&self->_preferredAction, a3);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __45__UIInterfaceActionGroup_setPreferredAction___block_invoke;
    v6[3] = &unk_1E70F3590;
    v6[4] = self;
    [(UIInterfaceActionGroup *)self _performWithActionObservingDisabled:v6];
  }
}

uint64_t __45__UIInterfaceActionGroup_setPreferredAction___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) actions];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__UIInterfaceActionGroup_setPreferredAction___block_invoke_2;
  v4[3] = &unk_1E70F3970;
  v4[4] = *(a1 + 32);
  [v2 enumerateObjectsUsingBlock:v4];

  return [*(a1 + 32) _notifyObserversDidChangeActionProperty:@"preferredAction"];
}

void __45__UIInterfaceActionGroup_setPreferredAction___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = a2;
  [v3 _setIsPreferred:{objc_msgSend(v3, "isEqual:", v2)}];
}

- (void)_setVisualStyle:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (![(UIInterfaceActionVisualStyle *)self->_visualStyle isEqual:v5])
  {
    objc_storeStrong(&self->_visualStyle, a3);
    [(UIInterfaceActionGroup *)self _notifyObserversVisualStyleDidChange];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_actions;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10++) _setVisualStyle:{v5, v11}];
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)_addActionGroupDisplayPropertyObserver:(id)a3
{
  weakDisplayPropertyObservers = self->_weakDisplayPropertyObservers;
  v5 = a3;
  [(NSPointerArray *)weakDisplayPropertyObservers compact];
  [(NSPointerArray *)self->_weakDisplayPropertyObservers addPointer:v5];
}

- (void)_removeActionGroupDisplayPropertyObserver:(id)a3
{
  weakDisplayPropertyObservers = self->_weakDisplayPropertyObservers;
  v5 = a3;
  [(NSPointerArray *)weakDisplayPropertyObservers compact];
  v6 = [(NSPointerArray *)self->_weakDisplayPropertyObservers allObjects];
  v7 = [v6 indexOfObject:v5];

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = self->_weakDisplayPropertyObservers;

    [(NSPointerArray *)v8 removePointerAtIndex:v7];
  }
}

- (void)interfaceAction:(id)a3 reloadDisplayedContentActionProperties:(id)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v13[0] = 0x1EFB16390;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v9 = [UIInterfaceAction changedProperties:v7 containsAny:v8];

  if (v9)
  {
    if ([v6 _isPreferred])
    {
      [(UIInterfaceActionGroup *)self setPreferredAction:v6];
    }
  }

  else
  {
    v12[0] = 0x1EFB16430;
    v12[1] = 0x1EFB16470;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
    v11 = [UIInterfaceAction changedProperties:v7 containsAny:v10];

    if (v11)
    {
      [(UIInterfaceActionGroup *)self _reloadImageLayoutSizesUsingExistingActionImages];
    }
  }
}

- (void)_updateActionImageLayoutSizes
{
  actions = self->_actions;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __55__UIInterfaceActionGroup__updateActionImageLayoutSizes__block_invoke;
  v3[3] = &unk_1E70F3970;
  v3[4] = self;
  [(NSArray *)actions enumerateObjectsUsingBlock:v3];
}

void __55__UIInterfaceActionGroup__updateActionImageLayoutSizes__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 56);
  v5 = *(v3 + 64);
  v6 = a2;
  [v6 setLeadingImageLayoutSize:{v4, v5}];
  [v6 setTrailingImageLayoutSize:{*(*(a1 + 32) + 72), *(*(a1 + 32) + 80)}];
}

- (void)_reloadImageLayoutSizesUsingExistingActionImages
{
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__2;
  v29 = __Block_byref_object_dispose__2;
  v30 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3010000000;
  v23 = "";
  v24 = *MEMORY[0x1E695F060];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__2;
  v18 = __Block_byref_object_dispose__2;
  v19 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3010000000;
  v12 = "";
  v13 = v24;
  actions = self->_actions;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __74__UIInterfaceActionGroup__reloadImageLayoutSizesUsingExistingActionImages__block_invoke;
  v8[3] = &unk_1E70F3998;
  v8[4] = &v25;
  v8[5] = &v20;
  v8[6] = &v14;
  v8[7] = &v9;
  [(NSArray *)actions enumerateObjectsUsingBlock:v8];
  [v26[5] size];
  self->_leadingImageLayoutSize.width = v4.f64[0];
  self->_leadingImageLayoutSize.height = v5;
  v4.f64[1] = v5;
  self->_leadingImageLayoutSize = vaddq_f64(v4, v21[2]);
  [v15[5] size];
  self->_trailingImageLayoutSize.width = v6.f64[0];
  self->_trailingImageLayoutSize.height = v7;
  v6.f64[1] = v7;
  self->_trailingImageLayoutSize = vaddq_f64(v6, v10[2]);
  [(UIInterfaceActionGroup *)self _updateActionImageLayoutSizes];
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v25, 8);
}

void __74__UIInterfaceActionGroup__reloadImageLayoutSizesUsingExistingActionImages__block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = *(a1[4] + 8);
  v8 = *(v7 + 40);
  v34 = v6;
  if (v8)
  {
    v9 = v8;
    v10 = *(v7 + 40);
    *(v7 + 40) = v9;
  }

  else
  {
    v11 = [v6 leadingImage];
    v12 = *(a1[4] + 8);
    v10 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  v13 = *(*(a1[4] + 8) + 40);
  if (v13)
  {
    [v13 alignmentRectInsets];
    v15 = v14;
    [*(*(a1[4] + 8) + 40) alignmentRectInsets];
    *(*(a1[5] + 8) + 32) = -(v15 + v16);
    [*(*(a1[4] + 8) + 40) alignmentRectInsets];
    v18 = v17;
    [*(*(a1[4] + 8) + 40) alignmentRectInsets];
    *(*(a1[5] + 8) + 40) = -(v18 + v19);
  }

  v20 = *(a1[6] + 8);
  v21 = *(v20 + 40);
  if (v21)
  {
    v22 = v21;
    v23 = *(v20 + 40);
    *(v20 + 40) = v22;
  }

  else
  {
    v24 = [v34 trailingImage];
    v25 = *(a1[6] + 8);
    v23 = *(v25 + 40);
    *(v25 + 40) = v24;
  }

  v26 = *(*(a1[6] + 8) + 40);
  if (v26)
  {
    [v26 alignmentRectInsets];
    v28 = v27;
    [*(*(a1[6] + 8) + 40) alignmentRectInsets];
    *(*(a1[7] + 8) + 32) = -(v28 + v29);
    [*(*(a1[6] + 8) + 40) alignmentRectInsets];
    v31 = v30;
    [*(*(a1[6] + 8) + 40) alignmentRectInsets];
    *(*(a1[7] + 8) + 40) = -(v31 + v32);
  }

  v33 = *(*(a1[4] + 8) + 40);
  if (v33)
  {
    LOBYTE(v33) = *(*(a1[6] + 8) + 40) != 0;
  }

  *a4 = v33;
}

- (void)_notifyObserversVisualStyleDidChange
{
  v13 = *MEMORY[0x1E69E9840];
  [(NSPointerArray *)self->_weakDisplayPropertyObservers compact];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = [(NSPointerArray *)self->_weakDisplayPropertyObservers copy];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
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

        [*(*(&v8 + 1) + 8 * v7++) interfaceActionGroup:self reloadDisplayedContentVisualStyle:self->_visualStyle];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_notifyObserversDidChangeActionProperty:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(NSPointerArray *)self->_weakDisplayPropertyObservers compact];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObject:v4];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(NSPointerArray *)self->_weakDisplayPropertyObservers copy];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10++) interfaceActionGroup:self reloadDisplayedContentActionGroupProperties:v5];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)_performWithActionObservingDisabled:(id)a3
{
  v4 = a3;
  [(UIInterfaceActionGroup *)self _endObservingActions];
  v4[2](v4);

  [(UIInterfaceActionGroup *)self _beginObservingActions];
}

- (void)_beginObservingActions
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_actions;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
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

        [*(*(&v8 + 1) + 8 * v7++) _addActionDisplayPropertyObserver:{self, v8}];
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_endObservingActions
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_actions;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
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

        [*(*(&v8 + 1) + 8 * v7++) _removeActionDisplayPropertyObserver:{self, v8}];
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (id)_deepCopyOfActionsBySection
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_actionsBySection;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) copy];
        [v3 addObject:v9];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (CGSize)leadingImageLayoutSize
{
  width = self->_leadingImageLayoutSize.width;
  height = self->_leadingImageLayoutSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)trailingImageLayoutSize
{
  width = self->_trailingImageLayoutSize.width;
  height = self->_trailingImageLayoutSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end