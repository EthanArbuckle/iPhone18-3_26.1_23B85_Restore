@interface SBSwitcherModifierStackSnapshot
- (SBSwitcherModifierStackSnapshot)initWithRootModifier:(id)a3;
- (unint64_t)countOfAllChildSnapshots;
- (void)_enumerateModifierSnapshots:(id)a3 stop:(BOOL *)a4;
@end

@implementation SBSwitcherModifierStackSnapshot

- (SBSwitcherModifierStackSnapshot)initWithRootModifier:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [SBSwitcherModifierStackSnapshot initWithRootModifier:];
  }

  v18.receiver = self;
  v18.super_class = SBSwitcherModifierStackSnapshot;
  v5 = [(SBSwitcherModifierStackSnapshot *)&v18 init];
  if (v5)
  {
    v6 = [v4 displayName];
    v7 = [v6 copy];
    modifierName = v5->_modifierName;
    v5->_modifierName = v7;

    v9 = [v4 description];
    v10 = [v9 copy];
    modifierDescription = v5->_modifierDescription;
    v5->_modifierDescription = v10;

    v12 = [[SBSwitcherModifierQuerySnapshot alloc] initWithModifier:v4];
    querySnapshot = v5->_querySnapshot;
    v5->_querySnapshot = v12;

    v14 = [v4 debugPotentialChildModifiers];
    v15 = [v14 bs_map:&__block_literal_global_413];
    childSnapshots = v5->_childSnapshots;
    v5->_childSnapshots = v15;
  }

  return v5;
}

SBSwitcherModifierStackSnapshot *__56__SBSwitcherModifierStackSnapshot_initWithRootModifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[SBSwitcherModifierStackSnapshot alloc] initWithRootModifier:v2];

  return v3;
}

- (void)_enumerateModifierSnapshots:(id)a3 stop:(BOOL *)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = v6;
  if (!*a4)
  {
    (*(v6 + 2))(v6, self, a4);
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = self->_childSnapshots;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      do
      {
        v12 = 0;
        do
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v13 + 1) + 8 * v12++) _enumerateModifierSnapshots:v7 stop:{a4, v13}];
        }

        while (v10 != v12);
        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v10);
    }
  }
}

- (unint64_t)countOfAllChildSnapshots
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __59__SBSwitcherModifierStackSnapshot_countOfAllChildSnapshots__block_invoke;
  v4[3] = &unk_2783C2C58;
  v4[4] = &v5;
  [(SBSwitcherModifierStackSnapshot *)self enumerateModifierSnapshots:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)initWithRootModifier:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"rootModifier" object:? file:? lineNumber:? description:?];
}

@end