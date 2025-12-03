@interface VFXState
- (NSString)description;
- (VFXState)init;
- (VFXState)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)itemMatching:(id)matching;
- (id)makeReverseStates;
- (void)addStateItem:(id)item;
- (void)applyFrom:(id)from reverse:(BOOL)reverse transition:(id)transition;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateReferencesForOperation:(int64_t)operation usingBlock:(id)block;
- (void)setBaseState:(id)state;
@end

@implementation VFXState

- (VFXState)init
{
  v11.receiver = self;
  v11.super_class = VFXState;
  v2 = [(VFXState *)&v11 init];
  if (v2)
  {
    v2->_stateItems = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v3, v4, v5);
    v2->_identifier = objc_msgSend_UUIDString(v6, v7, v8, v9);
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXState;
  [(VFXState *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(objc_opt_class());
  v8 = objc_msgSend_name(self, v5, v6, v7);
  objc_msgSend_setName_(v4, v9, v8, v10);
  v14 = objc_msgSend_baseState(self, v11, v12, v13);
  objc_msgSend_setBaseState_(v4, v15, v14, v16);
  v20 = objc_msgSend_identifier(self, v17, v18, v19);
  objc_msgSend_setIdentifier_(v4, v21, v20, v22);
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  stateItems = self->_stateItems;
  v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(stateItems, v24, &v36, v40, 16);
  if (v25)
  {
    v29 = v25;
    v30 = *v37;
    do
    {
      v31 = 0;
      do
      {
        if (*v37 != v30)
        {
          objc_enumerationMutation(stateItems);
        }

        v32 = objc_msgSend_copy(*(*(&v36 + 1) + 8 * v31), v26, v27, v28);
        objc_msgSend_addStateItem_(v4, v33, v32, v34);
        ++v31;
      }

      while (v29 != v31);
      v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(stateItems, v26, &v36, v40, 16);
    }

    while (v29);
  }

  return v4;
}

- (void)setBaseState:(id)state
{
  baseState = self->_baseState;
  if (baseState != state)
  {

    self->_baseState = state;
  }
}

- (id)itemMatching:(id)matching
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  stateItems = self->_stateItems;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(stateItems, a2, &v13, v17, 16);
  if (!v5)
  {
    return 0;
  }

  v8 = v5;
  v9 = *v14;
LABEL_3:
  v10 = 0;
  while (1)
  {
    if (*v14 != v9)
    {
      objc_enumerationMutation(stateItems);
    }

    v11 = *(*(&v13 + 1) + 8 * v10);
    if (objc_msgSend_replaces_(matching, v6, v11, v7))
    {
      return v11;
    }

    if (v8 == ++v10)
    {
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(stateItems, v6, &v13, v17, 16);
      if (v8)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (void)addStateItem:(id)item
{
  objc_msgSend_setState_(item, a2, self, v3);
  stateItems = self->_stateItems;

  objc_msgSend_addObject_(stateItems, v6, item, v7);
}

- (void)applyFrom:(id)from reverse:(BOOL)reverse transition:(id)transition
{
  reverseCopy = reverse;
  v49 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_baseState(self, a2, from, reverse))
  {
    stateManager = self->_stateManager;
    v14 = objc_msgSend_baseState(self, v9, v10, v11);
    if (reverseCopy)
    {
      v15 = objc_msgSend_transitionFrom_to_(stateManager, v13, v14, from);
    }

    else
    {
      v15 = objc_msgSend_transitionFrom_to_(stateManager, v13, from, v14);
    }

    v18 = v15;
    objc_msgSend_beginTransition_(VFXStateManager, v16, v15, v17);
    v22 = objc_msgSend_baseState(self, v19, v20, v21);
    objc_msgSend_applyFrom_reverse_transition_(v22, v23, from, reverseCopy, v18);
    objc_msgSend_commitTransition_(VFXStateManager, v24, v18, v25);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  stateItems = self->_stateItems;
  v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(stateItems, v9, &v44, v48, 16);
  if (v27)
  {
    v30 = v27;
    v31 = *v45;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v45 != v31)
        {
          objc_enumerationMutation(stateItems);
        }

        v33 = *(*(&v44 + 1) + 8 * i);
        v34 = objc_msgSend_transitionOverrideForItem_(transition, v28, v33, v29);
        if (v34)
        {
          v38 = v34;
          objc_msgSend_beginTransition_(VFXStateManager, v35, v34, v37);
          objc_msgSend_apply(v33, v39, v40, v41);
          objc_msgSend_commitTransition_(VFXStateManager, v42, v38, v43);
        }

        else
        {
          objc_msgSend_apply(v33, v35, v36, v37);
        }
      }

      v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(stateItems, v28, &v44, v48, 16);
    }

    while (v30);
  }
}

- (NSString)description
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"State %@: {\n", v2, self->_name);
  if (objc_msgSend_baseState(self, v5, v6, v7))
  {
    v11 = objc_msgSend_baseState(self, v8, v9, v10);
    v15 = objc_msgSend_description(v11, v12, v13, v14);
    v4 = objc_msgSend_stringByAppendingString_(v4, v16, v15, v17);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  stateItems = self->_stateItems;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(stateItems, v8, &v30, v34, 16);
  if (v19)
  {
    v23 = v19;
    v24 = *v31;
    do
    {
      v25 = 0;
      do
      {
        if (*v31 != v24)
        {
          objc_enumerationMutation(stateItems);
        }

        v26 = objc_msgSend_description(*(*(&v30 + 1) + 8 * v25), v20, v21, v22);
        v4 = objc_msgSend_stringByAppendingString_(v4, v27, v26, v28);
        ++v25;
      }

      while (v23 != v25);
      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(stateItems, v20, &v30, v34, 16);
    }

    while (v23);
  }

  return objc_msgSend_stringByAppendingString_(v4, v20, @"}\n", v22);
}

- (id)makeReverseStates
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(VFXState);
  v7 = objc_msgSend_name(self, v4, v5, v6);
  objc_msgSend_setName_(v3, v8, v7, v9);
  objc_msgSend_setStateManager_(v3, v10, self->_stateManager, v11);
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v15 = objc_msgSend_reverseObjectEnumerator(self->_stateItems, v12, v13, v14, 0);
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v40, v44, 16);
  if (v17)
  {
    v21 = v17;
    v22 = *v41;
    do
    {
      v23 = 0;
      do
      {
        if (*v41 != v22)
        {
          objc_enumerationMutation(v15);
        }

        ReverseItem = objc_msgSend_makeReverseItem(*(*(&v40 + 1) + 8 * v23), v18, v19, v20);
        objc_msgSend_addStateItem_(v3, v25, ReverseItem, v26);
        ++v23;
      }

      while (v21 != v23);
      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v18, &v40, v44, 16);
    }

    while (v21);
  }

  if (objc_msgSend_baseState(self, v18, v19, v20))
  {
    v30 = objc_msgSend_baseState(self, v27, v28, v29);
    ReverseStates = objc_msgSend_makeReverseStates(v30, v31, v32, v33);
    objc_msgSend_setStateManager_(ReverseStates, v35, self->_stateManager, v36);
    objc_msgSend_setBaseState_(ReverseStates, v37, v3, v38);

    v3 = ReverseStates;
  }

  return v3;
}

- (void)enumerateReferencesForOperation:(int64_t)operation usingBlock:(id)block
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_baseState(self, a2, operation, block);
  v7 = *(block + 2);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = sub_1AF330778;
  v22[3] = &unk_1E7A7C0C8;
  v22[4] = self;
  v7(block, v6, 1, v22);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = objc_msgSend_stateItems(self, v8, v9, v10, 0);
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v18, v23, 16);
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      v16 = 0;
      do
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v11);
        }

        (*(block + 2))(block, *(*(&v18 + 1) + 8 * v16++), 0, 0);
      }

      while (v14 != v16);
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v17, &v18, v23, 16);
    }

    while (v14);
  }
}

- (VFXState)initWithCoder:(id)coder
{
  v43 = *MEMORY[0x1E69E9840];
  v41.receiver = self;
  v41.super_class = VFXState;
  v4 = [(VFXState *)&v41 init];
  if (v4)
  {
    v5 = objc_opt_class();
    v4->_baseState = objc_msgSend_decodeObjectOfClass_forKey_(coder, v6, v5, @"baseState");
    v7 = objc_opt_class();
    v4->_name = objc_msgSend_decodeObjectOfClass_forKey_(coder, v8, v7, @"name");
    v9 = objc_opt_class();
    v11 = objc_msgSend_vfx_decodeArrayOfObjectsOfClass_forKey_(coder, v10, v9, @"stateItems");
    v4->_stateItems = objc_msgSend_mutableCopy(v11, v12, v13, v14);
    v15 = objc_opt_class();
    v17 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v16, v15, @"identifier");
    objc_msgSend_setIdentifier_(v4, v18, v17, v19);
    if (!v4->_identifier)
    {
      v23 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v20, v21, v22);
      v27 = objc_msgSend_UUIDString(v23, v24, v25, v26);
      objc_msgSend_setIdentifier_(v4, v28, v27, v29);
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    stateItems = v4->_stateItems;
    v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(stateItems, v20, &v37, v42, 16);
    if (v33)
    {
      v34 = *v38;
      do
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v38 != v34)
          {
            objc_enumerationMutation(stateItems);
          }

          objc_msgSend_setState_(*(*(&v37 + 1) + 8 * i), v31, v4, v32);
        }

        v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(stateItems, v31, &v37, v42, 16);
      }

      while (v33);
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeObject_forKey_(coder, a2, self->_stateItems, @"stateItems");
  name = self->_name;
  if (name)
  {
    objc_msgSend_encodeObject_forKey_(coder, v5, name, @"name");
  }

  baseState = self->_baseState;
  if (baseState)
  {
    objc_msgSend_encodeObject_forKey_(coder, v5, baseState, @"baseState");
  }

  identifier = self->_identifier;

  objc_msgSend_encodeObject_forKey_(coder, v5, identifier, @"identifier");
}

@end