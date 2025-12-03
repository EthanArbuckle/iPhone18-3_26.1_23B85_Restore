@interface _UIMenuBuilder
- (BOOL)_isInternallyConsistent;
- (NSArray)_keyCommands;
- (UIMenuSystem)system;
- (_UIMenuBuilder)init;
- (_UIMenuBuilder)initWithSystem:(id)system rootMenu:(id)menu;
- (id)_commandFor:(id)for;
- (id)_firstValidMenuWithinIdentifiers:(id)identifiers;
- (id)_internalDiffForDiffv1:(id)diffv1;
- (id)_parentOfMenuForIdentifier:(id)identifier commandForIdentifier:(id)forIdentifier;
- (id)actionForIdentifier:(id)identifier;
- (id)commandForAction:(SEL)action propertyList:(id)list;
- (id)copyWithZone:(void *)zone;
- (id)menuForIdentifier:(id)identifier;
- (void)_patch:(id)_patch;
- (void)_patchInternalDiff:(id)diff;
- (void)removeActionForIdentifier:(id)identifier;
- (void)removeCommandForAction:(SEL)action propertyList:(id)list;
- (void)removeMenuForIdentifier:(id)identifier;
- (void)replaceChildrenOfMenuForIdentifier:(id)identifier fromChildrenBlock:(id)block;
- (void)replaceCommandForAction:(SEL)action propertyList:(id)list withElements:(id)elements;
- (void)replaceMenuForIdentifier:(id)identifier withMenu:(id)menu;
- (void)set_system:(id)set_system;
@end

@implementation _UIMenuBuilder

- (UIMenuSystem)system
{
  selfCopy = self;
  _system = [(_UIMenuBuilder *)selfCopy _system];
  if (!_system)
  {
    sub_188FC2D3C(0xD000000000000048, 0x800000018A69AE00);
  }

  v4 = _system;

  return v4;
}

- (void)set_system:(id)set_system
{
  v4 = *(&self->super.isa + OBJC_IVAR____UIMenuBuilder__system);
  *(&self->super.isa + OBJC_IVAR____UIMenuBuilder__system) = set_system;
  set_systemCopy = set_system;
}

- (_UIMenuBuilder)initWithSystem:(id)system rootMenu:(id)menu
{
  systemCopy = system;
  menuCopy = menu;
  v8 = sub_188FCA6E4(system, menuCopy);

  return v8;
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  result = [(_UIMenuBuilder *)selfCopy menuForIdentifier:@"com.apple.menu.root"];
  if (result)
  {
    v5 = result;
    _system = [(_UIMenuBuilder *)selfCopy _system];
    v7 = [objc_allocWithZone(_UIMenuBuilder) initWithSystem:_system rootMenu:v5];

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (BOOL)_isInternallyConsistent
{
  selfCopy = self;
  v3 = sub_188FC53E8();

  return v3 & 1;
}

- (NSArray)_keyCommands
{
  selfCopy = self;
  sub_188FC56E0();

  sub_188A34624(0, &qword_1EA931248);
  v3 = sub_18A4A7518();

  return v3;
}

- (id)_commandFor:(id)for
{
  v5 = *(&self->super.isa + OBJC_IVAR____UIMenuBuilder__currentBookkeeping);
  swift_beginAccess();
  v6 = *(v5 + 40);
  forCopy = for;
  selfCopy = self;

  v9 = sub_18903AC24(forCopy, v6);
  swift_endAccess();

  return v9;
}

- (id)_parentOfMenuForIdentifier:(id)identifier commandForIdentifier:(id)forIdentifier
{
  identifierCopy = identifier;
  forIdentifierCopy = forIdentifier;
  selfCopy = self;
  v10 = sub_188FC5B40(identifier, forIdentifier);

  return v10;
}

- (id)_firstValidMenuWithinIdentifiers:(id)identifiers
{
  _s3__C10IdentifierVMa_1(0);
  v4 = sub_18A4A7548();
  selfCopy = self;
  v6 = sub_188FC5D3C(v4);

  return v6;
}

- (id)menuForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  v6 = sub_188FC5E38(identifierCopy);

  return v6;
}

- (id)actionForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  v6 = sub_188FC61F4(identifierCopy);

  return v6;
}

- (id)commandForAction:(SEL)action propertyList:(id)list
{
  if (list)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    selfCopy2 = self;
  }

  v8 = sub_188FC62EC(action, v10);

  sub_188A3F5FC(v10, &qword_1EA934050);

  return v8;
}

- (void)replaceMenuForIdentifier:(id)identifier withMenu:(id)menu
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18A64B710;
  *(inited + 32) = menu;
  menuCopy = menu;
  identifierCopy = identifier;
  selfCopy = self;
  sub_188FC6520(identifier, 0, inited);

  swift_setDeallocating();
  swift_arrayDestroy();
}

- (void)replaceChildrenOfMenuForIdentifier:(id)identifier fromChildrenBlock:(id)block
{
  v6 = _Block_copy(block);
  _Block_copy(v6);
  identifierCopy = identifier;
  selfCopy = self;
  sub_188FCD81C(identifierCopy, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)replaceCommandForAction:(SEL)action propertyList:(id)list withElements:(id)elements
{
  if (list)
  {
    elementsCopy = elements;
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v13, 0, sizeof(v13));
    elementsCopy2 = elements;
    selfCopy2 = self;
  }

  sub_188A34624(0, &qword_1ED48FC30);
  v12 = sub_18A4A7548();

  sub_188FC751C(action, v13, v12);

  sub_188A3F5FC(v13, &qword_1EA934050);
}

- (void)removeMenuForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  sub_188FC87DC(identifier, 0);
}

- (void)removeActionForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  sub_188FC87DC(identifier, 1u);
}

- (void)removeCommandForAction:(SEL)action propertyList:(id)list
{
  if (list)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  sub_188FC8FFC(action, v8);

  sub_188A3F5FC(v8, &qword_1EA934050);
}

- (_UIMenuBuilder)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)_internalDiffForDiffv1:(id)diffv1
{
  v45 = *MEMORY[0x1E69E9840];
  diffv1Copy = diffv1;
  v5 = objc_alloc_init(_UICommandInternalDiff);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __48___UIMenuBuilder_Patch___internalDiffForDiffv1___block_invoke;
  aBlock[3] = &unk_1E711F850;
  aBlock[4] = self;
  v6 = v5;
  v43 = v6;
  v22 = _Block_copy(aBlock);
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __48___UIMenuBuilder_Patch___internalDiffForDiffv1___block_invoke_2;
  v40[3] = &unk_1E711F878;
  v40[4] = self;
  v7 = v6;
  v41 = v7;
  v21 = _Block_copy(v40);
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __48___UIMenuBuilder_Patch___internalDiffForDiffv1___block_invoke_3;
  v38[3] = &unk_1E711F8A0;
  v38[4] = self;
  v8 = v7;
  v39 = v8;
  v20 = _Block_copy(v38);
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __48___UIMenuBuilder_Patch___internalDiffForDiffv1___block_invoke_4;
  v36[3] = &unk_1E711F8C8;
  v36[4] = self;
  v18 = v8;
  v37 = v18;
  v9 = _Block_copy(v36);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = [diffv1Copy changes];
  v10 = [obj countByEnumeratingWithState:&v32 objects:v44 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v33;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v33 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v32 + 1) + 8 * i);
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __48___UIMenuBuilder_Patch___internalDiffForDiffv1___block_invoke_5;
        v30[3] = &unk_1E711F8F0;
        v15 = v22;
        v31 = v15;
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __48___UIMenuBuilder_Patch___internalDiffForDiffv1___block_invoke_6;
        v28[3] = &unk_1E711F918;
        v29 = v20;
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __48___UIMenuBuilder_Patch___internalDiffForDiffv1___block_invoke_7;
        v25[3] = &unk_1E711F940;
        v26 = v15;
        v27 = v21;
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __48___UIMenuBuilder_Patch___internalDiffForDiffv1___block_invoke_8;
        v23[3] = &unk_1E711F968;
        v24 = v9;
        [v14 acceptItemInsertionVisit:v30 itemDeletionVisit:v28 menuInsertionVisit:v25 menuDeletionVisit:v23];
      }

      v11 = [obj countByEnumeratingWithState:&v32 objects:v44 count:16];
    }

    while (v11);
  }

  v16 = v18;
  return v18;
}

- (void)_patchInternalDiff:(id)diff
{
  v63 = *MEMORY[0x1E69E9840];
  diffCopy = diff;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  menuDeletes = [diffCopy menuDeletes];
  v6 = [menuDeletes countByEnumeratingWithState:&v55 objects:v62 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v56;
    do
    {
      v9 = 0;
      do
      {
        if (*v56 != v8)
        {
          objc_enumerationMutation(menuDeletes);
        }

        [(_UIMenuBuilder *)self removeMenuForIdentifier:*(*(&v55 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [menuDeletes countByEnumeratingWithState:&v55 objects:v62 count:16];
    }

    while (v7);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = [diffCopy itemDeletes];
  v10 = [obj countByEnumeratingWithState:&v51 objects:v61 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v52;
    do
    {
      v13 = 0;
      do
      {
        if (*v52 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v51 + 1) + 8 * v13);
        itemDeletes = [diffCopy itemDeletes];
        v16 = [itemDeletes objectForKeyedSubscript:v14];

        v49[0] = MEMORY[0x1E69E9820];
        v49[1] = 3221225472;
        v49[2] = __44___UIMenuBuilder_Patch___patchInternalDiff___block_invoke;
        v49[3] = &unk_1E70F45F8;
        v50 = v16;
        v17 = v16;
        [(_UIMenuBuilder *)self replaceChildrenOfMenuForIdentifier:v14 fromChildrenBlock:v49];

        ++v13;
      }

      while (v11 != v13);
      v11 = [obj countByEnumeratingWithState:&v51 objects:v61 count:16];
    }

    while (v11);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obja = [diffCopy inserts];
  v18 = [obja countByEnumeratingWithState:&v45 objects:v60 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v46;
    do
    {
      v21 = 0;
      do
      {
        if (*v46 != v20)
        {
          objc_enumerationMutation(obja);
        }

        v22 = *(*(&v45 + 1) + 8 * v21);
        inserts = [diffCopy inserts];
        v24 = [inserts objectForKeyedSubscript:v22];

        v43[0] = MEMORY[0x1E69E9820];
        v43[1] = 3221225472;
        v43[2] = __44___UIMenuBuilder_Patch___patchInternalDiff___block_invoke_4;
        v43[3] = &unk_1E70F45F8;
        v44 = v24;
        v25 = v24;
        [(_UIMenuBuilder *)self replaceChildrenOfMenuForIdentifier:v22 fromChildrenBlock:v43];

        ++v21;
      }

      while (v19 != v21);
      v19 = [obja countByEnumeratingWithState:&v45 objects:v60 count:16];
    }

    while (v19);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  objb = [diffCopy replacements];
  v26 = [objb countByEnumeratingWithState:&v39 objects:v59 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v40;
    do
    {
      v29 = 0;
      do
      {
        if (*v40 != v28)
        {
          objc_enumerationMutation(objb);
        }

        v30 = *(*(&v39 + 1) + 8 * v29);
        replacements = [diffCopy replacements];
        v32 = [replacements objectForKeyedSubscript:v30];

        v37[0] = MEMORY[0x1E69E9820];
        v37[1] = 3221225472;
        v37[2] = __44___UIMenuBuilder_Patch___patchInternalDiff___block_invoke_3_16;
        v37[3] = &unk_1E70F45F8;
        v38 = v32;
        v33 = v32;
        [(_UIMenuBuilder *)self replaceChildrenOfMenuForIdentifier:v30 fromChildrenBlock:v37];

        ++v29;
      }

      while (v27 != v29);
      v27 = [objb countByEnumeratingWithState:&v39 objects:v59 count:16];
    }

    while (v27);
  }
}

- (void)_patch:(id)_patch
{
  v4 = [(_UIMenuBuilder *)self _internalDiffForDiffv1:_patch];
  [(_UIMenuBuilder *)self _patchInternalDiff:v4];
}

@end