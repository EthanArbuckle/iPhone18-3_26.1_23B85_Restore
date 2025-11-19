@interface VFXStateManager
+ (void)beginTransition:(id)a3;
+ (void)commitTransition:(id)a3;
- (VFXStateManager)init;
- (VFXStateManager)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)stateWithName:(id)a3;
- (id)transitionFrom:(id)a3 to:(id)a4;
- (void)addReverseItem:(id)a3;
- (void)addState:(id)a3;
- (void)copyTo:(id)a3 withContext:(id)a4;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateReferencesForOperation:(int64_t)a3 usingBlock:(id)a4;
- (void)setActiveState:(id)a3;
@end

@implementation VFXStateManager

- (VFXStateManager)init
{
  v4.receiver = self;
  v4.super_class = VFXStateManager;
  v2 = [(VFXStateManager *)&v4 init];
  if (v2)
  {
    v2->_states = objc_alloc_init(MEMORY[0x1E695DF70]);
    v2->_transitions = objc_alloc_init(MEMORY[0x1E695DF70]);
    v2->_transitionsEnabled = 1;
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXStateManager;
  [(VFXStateManager *)&v3 dealloc];
}

- (void)copyTo:(id)a3 withContext:(id)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v7 = objc_msgSend_states(self, a2, a3, a4);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v40, v45, 16);
  if (v9)
  {
    v13 = v9;
    v14 = *v41;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v41 != v14)
        {
          objc_enumerationMutation(v7);
        }

        v16 = *(*(&v40 + 1) + 8 * i);
        v17 = sub_1AF2BED30(v16, a4);
        v20 = v17;
        if (self->_activeState == v16)
        {
          v21 = *(a3 + 2);
          if (v21 != v17)
          {

            *(a3 + 2) = v20;
          }
        }

        objc_msgSend_addState_(a3, v18, v20, v19);
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v22, &v40, v45, 16);
    }

    while (v13);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v23 = objc_msgSend_transitions(self, v10, v11, v12, 0);
  v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v36, v44, 16);
  if (v25)
  {
    v29 = v25;
    v30 = *v37;
    do
    {
      for (j = 0; j != v29; ++j)
      {
        if (*v37 != v30)
        {
          objc_enumerationMutation(v23);
        }

        v32 = objc_msgSend_copy(*(*(&v36 + 1) + 8 * j), v26, v27, v28);
        objc_msgSend_addStateTransition_(a3, v33, v32, v34);
      }

      v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v26, &v36, v44, 16);
    }

    while (v29);
  }

  reverseActiveState = self->_reverseActiveState;
  if (reverseActiveState)
  {
    *(a3 + 3) = sub_1AF2BED30(reverseActiveState, a4);
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  objc_msgSend_copyTo_withContext_(self, v5, v4, 0);
  return v4;
}

- (void)enumerateReferencesForOperation:(int64_t)a3 usingBlock:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  states = self->_states;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(states, a2, &v14, v18, 16);
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(states);
        }

        (*(a4 + 2))(a4, *(*(&v14 + 1) + 8 * i), 0, 0);
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(states, v11, &v14, v18, 16);
    }

    while (v8);
  }

  reverseActiveState = self->_reverseActiveState;
  if (reverseActiveState)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1AF32F644;
    v13[3] = &unk_1E7A7C0C8;
    v13[4] = self;
    (*(a4 + 2))(a4, reverseActiveState, 1, v13);
  }
}

- (void)addState:(id)a3
{
  objc_msgSend_setStateManager_(a3, a2, self, v3);
  states = self->_states;

  objc_msgSend_addObject_(states, v6, a3, v7);
}

- (id)stateWithName:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  states = self->_states;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(states, a2, &v17, v21, 16);
  if (!v5)
  {
    return 0;
  }

  v9 = v5;
  v10 = *v18;
LABEL_3:
  v11 = 0;
  while (1)
  {
    if (*v18 != v10)
    {
      objc_enumerationMutation(states);
    }

    v12 = *(*(&v17 + 1) + 8 * v11);
    v13 = objc_msgSend_name(v12, v6, v7, v8);
    if (objc_msgSend_isEqualToString_(v13, v14, a3, v15))
    {
      return v12;
    }

    if (v9 == ++v11)
    {
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(states, v6, &v17, v21, 16);
      if (v9)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (id)transitionFrom:(id)a3 to:(id)a4
{
  if (!self->_transitionsEnabled)
  {
    return 0;
  }

  v7 = objc_msgSend_count(self->_transitions, a2, a3, a4);
  if (v7 < 1)
  {
    return 0;
  }

  v10 = 0;
  v11 = 0;
  v12 = (v7 & 0x7FFFFFFF) + 1;
  do
  {
    v13 = objc_msgSend_objectAtIndex_(self->_transitions, v8, v12 - 2, v9);
    if (!objc_msgSend_from(v13, v14, v15, v16) || (v18 = objc_msgSend_from(v13, v8, v17, v9), v22 = objc_msgSend_name(v18, v19, v20, v21), v26 = objc_msgSend_name(a3, v23, v24, v25), objc_msgSend_isEqualToString_(v22, v27, v26, v28)))
    {
      if (!objc_msgSend_to(v13, v8, v17, v9) || (v30 = objc_msgSend_to(v13, v8, v29, v9), v34 = objc_msgSend_name(v30, v31, v32, v33), v38 = objc_msgSend_name(a4, v35, v36, v37), objc_msgSend_isEqualToString_(v34, v39, v38, v40)))
      {
        v44 = objc_msgSend_to(v13, v8, v29, v9) ? 2 : 1;
        v45 = objc_msgSend_from(v13, v41, v42, v43) ? v44 + 1 : v44;
        if (v45 > v10)
        {
          v11 = v13;
          v10 = v45;
          if (v45 == 3)
          {
            break;
          }
        }
      }
    }

    --v12;
    v13 = v11;
  }

  while (v12 > 1);
  return v13;
}

+ (void)beginTransition:(id)a3
{
  if (a3)
  {
    objc_msgSend_begin(VFXTransaction, a2, a3, v3);
    objc_msgSend_duration(a3, v5, v6, v7);
    objc_msgSend_setAnimationDuration_(VFXTransaction, v8, v9, v10);
    v14 = objc_msgSend_timingFunction(a3, v11, v12, v13);
    objc_msgSend_setTimingFunction_(VFXTransaction, v15, v14, v16);
    objc_msgSend_beginTime(a3, v17, v18, v19);

    objc_msgSend_setBeginTime_(VFXTransaction, v20, v21, v22);
  }
}

+ (void)commitTransition:(id)a3
{
  if (a3)
  {
    objc_msgSend_commit(VFXTransaction, a2, a3, v3);
  }
}

- (void)addReverseItem:(id)a3
{
  if (!objc_msgSend_itemMatching_(self->_reverseActiveState, a2, a3, v3))
  {
    reverseActiveState = self->_reverseActiveState;

    objc_msgSend_addStateItem_(reverseActiveState, v6, a3, v7);
  }
}

- (void)setActiveState:(id)a3
{
  if (self->_activeState != a3)
  {
    v24 = self->_reverseActiveState;
    reverseActiveState = self->_reverseActiveState;
    if (reverseActiveState)
    {
      v8 = objc_msgSend_transitionFrom_to_(self, v6, reverseActiveState, a3);
      objc_msgSend_beginTransition_(VFXStateManager, v9, v8, v10);
      objc_msgSend_applyFrom_reverse_transition_(self->_reverseActiveState, v11, a3, 1, v8);
      objc_msgSend_commitTransition_(VFXStateManager, v12, v8, v13);

      self->_reverseActiveState = 0;
    }

    self->_activeState = a3;
    self->_reverseActiveState = objc_msgSend_makeReverseStates(a3, v14, v15, v16);
    v18 = objc_msgSend_transitionFrom_to_(self, v17, v24, self->_activeState);
    objc_msgSend_beginTransition_(VFXStateManager, v19, v18, v20);
    objc_msgSend_applyFrom_reverse_transition_(self->_activeState, v21, v24, 0, v18);
    objc_msgSend_commitTransition_(VFXStateManager, v22, v18, v23);
  }
}

- (VFXStateManager)initWithCoder:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v31.receiver = self;
  v31.super_class = VFXStateManager;
  v4 = [(VFXStateManager *)&v31 init];
  if (v4)
  {
    v5 = objc_opt_class();
    v7 = objc_msgSend_vfx_decodeArrayOfObjectsOfClass_forKey_(a3, v6, v5, @"states");
    v4->_states = objc_msgSend_mutableCopy(v7, v8, v9, v10);
    v11 = objc_opt_class();
    v13 = objc_msgSend_vfx_decodeArrayOfObjectsOfClass_forKey_(a3, v12, v11, @"transitions");
    v17 = objc_msgSend_mutableCopy(v13, v14, v15, v16);
    v4->_transitions = v17;
    if (!v17)
    {
      v4->_transitions = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    states = v4->_states;
    v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(states, v18, &v27, v32, 16);
    if (v20)
    {
      v23 = v20;
      v24 = *v28;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v28 != v24)
          {
            objc_enumerationMutation(states);
          }

          objc_msgSend_setStateManager_(*(*(&v27 + 1) + 8 * i), v21, v4, v22);
        }

        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(states, v21, &v27, v32, 16);
      }

      while (v23);
    }

    v4->_transitionsEnabled = 1;
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  objc_msgSend_encodeObject_forKey_(a3, a2, self->_states, @"states");
  transitions = self->_transitions;

  objc_msgSend_encodeObject_forKey_(a3, v5, transitions, @"transitions");
}

@end