@interface SBStatusBarPartVisibilityAssertion
- (SBStatusBarPartVisibilityAssertion)initWithIdentifier:(id)a3 statusBar:(id)a4 forReason:(id)a5;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)_setStatusBarPartWithIdentifier:(id)a3 hidden:(BOOL)a4 animatedWithDuration:(double)a5;
- (void)setStatusBarPartWithIdentifier:(id)a3 hidden:(BOOL)a4 animated:(BOOL)a5;
- (void)setStatusBarPartWithIdentifier:(id)a3 hidden:(BOOL)a4 animatedWithDuration:(double)a5;
@end

@implementation SBStatusBarPartVisibilityAssertion

- (SBStatusBarPartVisibilityAssertion)initWithIdentifier:(id)a3 statusBar:(id)a4 forReason:(id)a5
{
  v9 = a4;
  v15.receiver = self;
  v15.super_class = SBStatusBarPartVisibilityAssertion;
  v10 = [(BSSimpleAssertion *)&v15 initWithIdentifier:a3 forReason:a5 invalidationBlock:&__block_literal_global_79];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_statusBar, a4);
    v12 = [MEMORY[0x277CBEB58] set];
    hiddenParts = v11->_hiddenParts;
    v11->_hiddenParts = v12;
  }

  return v11;
}

void __77__SBStatusBarPartVisibilityAssertion_initWithIdentifier_statusBar_forReason___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = objc_opt_class();
  v4 = SBSafeCast(v3, v2);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v4[7];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 _setStatusBarPartWithIdentifier:*(*(&v10 + 1) + 8 * v9++) hidden:0 animatedWithDuration:{0.0, v10}];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)setStatusBarPartWithIdentifier:(id)a3 hidden:(BOOL)a4 animated:(BOOL)a5
{
  v5 = 0.35;
  if (!a5)
  {
    v5 = 0.0;
  }

  [(SBStatusBarPartVisibilityAssertion *)self setStatusBarPartWithIdentifier:a3 hidden:a4 animatedWithDuration:v5];
}

- (void)setStatusBarPartWithIdentifier:(id)a3 hidden:(BOOL)a4 animatedWithDuration:(double)a5
{
  v6 = a4;
  v10 = a3;
  if ([(SBStatusBarPartVisibilityAssertion *)self isHidingStatusBarPartWithIdentifier:?]!= v6)
  {
    hiddenParts = self->_hiddenParts;
    if (v6)
    {
      v9 = [v10 copy];
      [(NSMutableSet *)hiddenParts addObject:v9];
    }

    else
    {
      [(NSMutableSet *)self->_hiddenParts removeObject:v10];
    }

    [(SBStatusBarPartVisibilityAssertion *)self _setStatusBarPartWithIdentifier:v10 hidden:v6 animatedWithDuration:a5];
  }
}

- (id)succinctDescription
{
  v2 = [(SBStatusBarPartVisibilityAssertion *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(NSMutableSet *)self->_hiddenParts allObjects];
  v5 = [v4 componentsJoinedByString:{@", "}];
  [v3 appendString:v5 withName:@"hiddenParts" skipIfEmpty:1];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBStatusBarPartVisibilityAssertion *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(SBStatusBarPartVisibilityAssertion *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __76__SBStatusBarPartVisibilityAssertion_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_2783A92D8;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];

  v7 = v6;
  return v6;
}

void __76__SBStatusBarPartVisibilityAssertion_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 48) withName:@"statusBar"];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) identifier];
  [v3 appendString:v4 withName:@"identifier"];

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) reason];
  [v5 appendString:v6 withName:@"reason"];
}

- (void)_setStatusBarPartWithIdentifier:(id)a3 hidden:(BOOL)a4 animatedWithDuration:(double)a5
{
  v6 = a4;
  v8 = a3;
  v9 = v8;
  if (a5 <= 0.0)
  {
    __98__SBStatusBarPartVisibilityAssertion__setStatusBarPartWithIdentifier_hidden_animatedWithDuration___block_invoke(v8, self->_statusBar, v8, v6);
  }

  else
  {
    v10 = MEMORY[0x277D75D18];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __98__SBStatusBarPartVisibilityAssertion__setStatusBarPartWithIdentifier_hidden_animatedWithDuration___block_invoke_2;
    v11[3] = &unk_2783B0748;
    v13 = &__block_literal_global_19_0;
    v11[4] = self;
    v12 = v8;
    v14 = v6;
    [v10 animateWithDuration:v11 animations:0 completion:a5];
  }
}

void __98__SBStatusBarPartVisibilityAssertion__setStatusBarPartWithIdentifier_hidden_animatedWithDuration___block_invoke(uint64_t a1, void *a2, void *a3, int a4)
{
  v14 = a2;
  v6 = a3;
  v7 = [v14 disabledPartIdentifiers];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [MEMORY[0x277CBEA60] array];
  }

  v10 = v9;

  v11 = [v10 containsObject:v6];
  if (a4)
  {
    if (v11)
    {
      goto LABEL_10;
    }

    v12 = [v10 arrayByAddingObject:v6];
  }

  else
  {
    if (!v11)
    {
      goto LABEL_10;
    }

    v12 = [v10 sb_arrayByRemovingObject:v6];
  }

  v13 = v12;
  [v14 setDisabledPartIdentifiers:v12];

LABEL_10:
}

@end