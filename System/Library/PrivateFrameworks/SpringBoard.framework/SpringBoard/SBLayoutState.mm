@interface SBLayoutState
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqual:(id)a3 withRole:(int64_t)a4;
- (BOOL)isMeaningfullyDifferentFromLayoutState:(id)a3;
- (BOOL)layoutContainsRole:(int64_t)a3;
- (SBLayoutState)init;
- (id)_initWithLayoutElements:(id)a3 interfaceOrientation:(int64_t)a4 interfaceOrientationByLayoutElement:(id)a5;
- (id)appLayout;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)elementWithIdentifier:(id)a3;
- (id)elementWithRole:(int64_t)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (int64_t)_interfaceOrientationForElementIdentifier:(id)a3 unknownAllowed:(BOOL)a4;
- (int64_t)interfaceOrientation;
- (int64_t)interfaceOrientationForLayoutElement:(id)a3;
- (int64_t)interfaceOrientationForLayoutElement:(id)a3 unknownAllowed:(BOOL)a4;
- (int64_t)interfaceOrientationForLayoutRole:(int64_t)a3;
- (unint64_t)hash;
@end

@implementation SBLayoutState

- (int64_t)interfaceOrientation
{
  if (self->_interfaceOrientation)
  {
    return self->_interfaceOrientation;
  }

  else
  {
    return [(SBLayoutState *)self _defaultInterfaceOrientation];
  }
}

- (id)succinctDescription
{
  v2 = [(SBLayoutState *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(SBLayoutState *)self elements];
  v5 = [v3 appendUnsignedInteger:objc_msgSend(v4 withName:{"count"), @"elements"}];

  return v3;
}

- (id)_initWithLayoutElements:(id)a3 interfaceOrientation:(int64_t)a4 interfaceOrientationByLayoutElement:(id)a5
{
  v8 = a3;
  v9 = a5;
  v16.receiver = self;
  v16.super_class = SBLayoutState;
  v10 = [(SBLayoutState *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    elements = v10->_elements;
    v10->_elements = v11;

    v10->_interfaceOrientation = a4;
    v13 = [v9 copy];
    interfaceOrientationByLayoutElementIdentifier = v10->_interfaceOrientationByLayoutElementIdentifier;
    v10->_interfaceOrientationByLayoutElementIdentifier = v13;
  }

  return v10;
}

- (SBLayoutState)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE648];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v3 raise:v4 format:{@"%@ does not support initialization.", v6}];

  v7 = [MEMORY[0x277CBEB98] set];
  v8 = [(SBLayoutState *)self _initWithLayoutElements:v7 interfaceOrientation:0 interfaceOrientationByLayoutElement:MEMORY[0x277CBEC10]];

  return v8;
}

- (int64_t)interfaceOrientationForLayoutRole:(int64_t)a3
{
  v4 = [(SBLayoutState *)self elementWithRole:a3];
  v5 = [(SBLayoutState *)self interfaceOrientationForLayoutElement:v4];

  return v5;
}

- (int64_t)interfaceOrientationForLayoutElement:(id)a3
{
  v4 = [a3 uniqueIdentifier];
  v5 = [(SBLayoutState *)self interfaceOrientationForElementIdentifier:v4];

  return v5;
}

- (int64_t)interfaceOrientationForLayoutElement:(id)a3 unknownAllowed:(BOOL)a4
{
  v4 = a4;
  v6 = [a3 uniqueIdentifier];
  v7 = [(SBLayoutState *)self _interfaceOrientationForElementIdentifier:v6 unknownAllowed:v4];

  return v7;
}

- (int64_t)_interfaceOrientationForElementIdentifier:(id)a3 unknownAllowed:(BOOL)a4
{
  v7 = a3;
  v8 = [(SBLayoutState *)self elementWithIdentifier:v7];
  if (!v8 || (interfaceOrientationByLayoutElementIdentifier = self->_interfaceOrientationByLayoutElementIdentifier, v8, !interfaceOrientationByLayoutElementIdentifier))
  {
    v11 = 0;
LABEL_8:
    if (!a4)
    {
      v11 = [(SBLayoutState *)self _defaultInterfaceOrientation];
    }

    goto LABEL_10;
  }

  v10 = [(NSDictionary *)self->_interfaceOrientationByLayoutElementIdentifier objectForKey:v7];
  if (!v10)
  {
    [SBLayoutState _interfaceOrientationForElementIdentifier:a2 unknownAllowed:self];
  }

  v11 = [v10 integerValue];

  if (!v11)
  {
    goto LABEL_8;
  }

LABEL_10:

  return v11;
}

- (BOOL)layoutContainsRole:(int64_t)a3
{
  v3 = [(SBLayoutState *)self elementWithRole:a3];
  v4 = v3 != 0;

  return v4;
}

- (id)elementWithRole:(int64_t)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(SBLayoutState *)self elements];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 layoutRole] == a3)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (id)elementWithIdentifier:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(SBLayoutState *)self elements];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 uniqueIdentifier];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (BOOL)isEqual:(id)a3 withRole:(int64_t)a4
{
  v6 = a3;
  if (self == v6)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"layoutRole == %d", a4];
      v8 = [(SBLayoutState *)self elements];
      v9 = [v8 filteredSetUsingPredicate:v7];
      v10 = [v9 anyObject];

      v11 = [(SBLayoutState *)v6 elements];
      v12 = [v11 filteredSetUsingPredicate:v7];
      v13 = [v12 anyObject];

      if (v10 | v13)
      {
        v14 = 0;
        if (v10 && v13)
        {
          v15 = [v10 uniqueIdentifier];
          v16 = [v13 uniqueIdentifier];
          v14 = [v15 isEqualToString:v16];
        }
      }

      else
      {
        v14 = 1;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBLayoutState *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(SBLayoutState *)self succinctDescriptionBuilder];
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = [(SBLayoutState *)self interfaceOrientationByLayoutElementIdentifier];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __55__SBLayoutState_descriptionBuilderWithMultilinePrefix___block_invoke;
  v14[3] = &unk_2783B7F10;
  v15 = v6;
  v8 = v6;
  [v7 bs_each:v14];

  if ([(SBLayoutState *)self interfaceOrientation]== 1)
  {
    v9 = @"UIInterfaceOrientationPortrait";
  }

  else if ([(SBLayoutState *)self interfaceOrientation]== 4)
  {
    v9 = @"UIInterfaceOrientationLandscapeLeft";
  }

  else if ([(SBLayoutState *)self interfaceOrientation]== 3)
  {
    v9 = @"UIInterfaceOrientationLandscapeRight";
  }

  else if ([(SBLayoutState *)self interfaceOrientation]== 2)
  {
    v9 = @"UIInterfaceOrientationPortraitUpsideDown";
  }

  else
  {
    v9 = 0;
  }

  v10 = [v5 appendObject:v9 withName:@"interfaceOrientation"];
  [v5 appendDictionarySection:v8 withName:@"interfaceOrientationByLayoutElement" skipIfEmpty:0];
  v11 = [(SBLayoutState *)self elements];
  v12 = [v11 allObjects];
  [v5 appendArraySection:v12 withName:@"elements" multilinePrefix:v4 skipIfEmpty:1];

  return v5;
}

void __55__SBLayoutState_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if ([v5 integerValue] == 1)
  {
    v7 = @"UIInterfaceOrientationPortrait";
  }

  else if ([v5 integerValue] == 4)
  {
    v7 = @"UIInterfaceOrientationLandscapeLeft";
  }

  else if ([v5 integerValue] == 3)
  {
    v7 = @"UIInterfaceOrientationLandscapeRight";
  }

  else if ([v5 integerValue] == 2)
  {
    v7 = @"UIInterfaceOrientationPortraitUpsideDown";
  }

  else
  {
    v7 = 0;
  }

  [v6 setObject:v7 forKey:v8];
}

- (BOOL)isEqual:(id)a3
{
  v7 = a3;
  if (self == v7)
  {
    v10 = 1;
    goto LABEL_19;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = 0;
    goto LABEL_19;
  }

  v8 = [(SBLayoutState *)self elements];
  if (v8 || ([(SBLayoutState *)v7 elements], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = [(SBLayoutState *)self elements];
    v5 = [(SBLayoutState *)v7 elements];
    if (([v4 isEqualToSet:v5] & 1) == 0)
    {

      v10 = 0;
      goto LABEL_16;
    }

    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  v11 = [(SBLayoutState *)self interfaceOrientation];
  if (v11 == [(SBLayoutState *)v7 interfaceOrientation])
  {
    v12 = [(SBLayoutState *)self interfaceOrientationByLayoutElementIdentifier];
    v13 = [(SBLayoutState *)v7 interfaceOrientationByLayoutElementIdentifier];
    v10 = SBEqualObjects(v12, v13);

    if (!v9)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v10 = 0;
  if (v9)
  {
LABEL_15:
  }

LABEL_16:
  if (!v8)
  {
  }

LABEL_19:
  return v10;
}

- (unint64_t)hash
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CF0C40]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(SBLayoutState *)self elements];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [v3 appendObject:*(*(&v13 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [v3 appendUnsignedInteger:{-[SBLayoutState interfaceOrientation](self, "interfaceOrientation")}];
  v11 = [v3 hash];

  return v11;
}

- (id)appLayout
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = [(SBLayoutState *)self elementWithRole:1];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v5 = [SBDisplayItem displayItemForLayoutElement:v3];
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:1];
    [v4 setObject:v5 forKeyedSubscript:v6];

    v7 = [(SBLayoutState *)self elementWithRole:2];
    v29 = v7;
    if (v7)
    {
      v8 = [SBDisplayItem displayItemForLayoutElement:v7];
      v9 = [MEMORY[0x277CCABB0] numberWithInteger:2];
      [v4 setObject:v8 forKeyedSubscript:v9];

      v10 = 3;
    }

    else
    {
      v10 = 1;
    }

    v28 = v10;
    v12 = [(SBLayoutState *)self elementWithRole:4];
    v27 = v12;
    if (v12)
    {
      v13 = [SBDisplayItem displayItemForLayoutElement:v12];
      v14 = [MEMORY[0x277CCABB0] numberWithInteger:4];
      [v4 setObject:v13 forKeyedSubscript:v14];

      v26 = 1;
    }

    else
    {
      v26 = 0;
    }

    v15 = objc_opt_new();
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v16 = v4;
    v17 = [v16 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v31;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v31 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [v16 objectForKey:{*(*(&v30 + 1) + 8 * i), v26, v27}];
          v22 = objc_alloc_init(SBDisplayItemLayoutAttributes);
          [v15 setObject:v22 forKey:v21];
        }

        v18 = [v16 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v18);
    }

    v23 = [v15 copy];
    cachedLayoutAttributesIfAny = self->_cachedLayoutAttributesIfAny;
    self->_cachedLayoutAttributesIfAny = v23;

    v11 = [[SBAppLayout alloc] initWithItemsForLayoutRoles:v16 configuration:v28 centerConfiguration:v26 environment:1 hidden:0 preferredDisplayOrdinal:0];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isMeaningfullyDifferentFromLayoutState:(id)a3
{
  v4 = [a3 elements];
  v5 = [v4 bs_filter:&__block_literal_global_195];

  v6 = [(SBLayoutState *)self elements];
  v7 = [v6 bs_filter:&__block_literal_global_195];

  LOBYTE(v6) = [v5 isEqual:v7];
  return v6 ^ 1;
}

BOOL __73__SBLayoutState_SwitcherSupport__isMeaningfullyDifferentFromLayoutState___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 layoutRole] != 3 && objc_msgSend(v2, "layoutRole") != 4;

  return v3;
}

- (void)_interfaceOrientationForElementIdentifier:(uint64_t)a1 unknownAllowed:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBLayoutState.m" lineNumber:81 description:@"Layout state element is known but its orientation is not mapped."];
}

@end