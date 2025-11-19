@interface VFXStateItem
+ (id)addAnimation:(id)a3 to:(id)a4 keyPath:(id)a5;
+ (id)insertChildNode:(id)a3 parent:(id)a4 atIndex:(unint64_t)a5;
+ (id)removeAnimationFrom:(id)a3 keyPath:(id)a4;
+ (id)removeNode:(id)a3;
+ (id)setValue:(id)a3 to:(id)a4 keyPath:(id)a5;
- (BOOL)replaces:(id)a3;
- (NSString)description;
- (VFXStateItem)init;
- (VFXStateItem)initWithAction:(int64_t)a3 target:(id)a4 keyPath:(id)a5 value:(id)a6 parent:(id)a7 index:(unint64_t)a8;
- (VFXStateItem)initWithCoder:(id)a3;
- (id)_makeReverseItem;
- (id)copyWithZone:(_NSZone *)a3;
- (id)effectiveTarget;
- (id)makeReverseItem;
- (void)apply;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateReferencesForOperation:(int64_t)a3 usingBlock:(id)a4;
- (void)setTarget:(id)a3;
- (void)setValue:(id)a3;
@end

@implementation VFXStateItem

- (BOOL)replaces:(id)a3
{
  if (*(a3 + 1) != self->_action)
  {
    return 0;
  }

  v6 = objc_msgSend_target(a3, a2, a3, v3);
  if (v6 != objc_msgSend_target(self, v7, v8, v9))
  {
    return 0;
  }

  v13 = *(a3 + 3);
  keyPath = self->_keyPath;

  return objc_msgSend_isEqualToString_(v13, v10, keyPath, v11);
}

- (VFXStateItem)init
{
  v11.receiver = self;
  v11.super_class = VFXStateItem;
  v5 = [(VFXStateItem *)&v11 init];
  if (v5)
  {
    v6 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v2, v3, v4);
    v5->_identifier = objc_msgSend_UUIDString(v6, v7, v8, v9);
  }

  return v5;
}

- (VFXStateItem)initWithAction:(int64_t)a3 target:(id)a4 keyPath:(id)a5 value:(id)a6 parent:(id)a7 index:(unint64_t)a8
{
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v28.receiver = self;
  v28.super_class = VFXStateItem;
  v16 = [(VFXStateItem *)&v28 init];
  v19 = v16;
  if (v16)
  {
    if (isKindOfClass)
    {
      a6 = 0;
    }

    v16->_action = a3;
    objc_msgSend_setTarget_(v16, v17, a4, v18);
    v19->_keyPath = a5;
    v19->_value = a6;
    v19->_parent = a7;
    v19->_index = a8;
    v23 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v20, v21, v22);
    v19->_identifier = objc_msgSend_UUIDString(v23, v24, v25, v26);
  }

  return v19;
}

+ (id)setValue:(id)a3 to:(id)a4 keyPath:(id)a5
{
  v8 = [VFXStateItem alloc];
  v10 = objc_msgSend_initWithAction_target_keyPath_value_parent_index_(v8, v9, 0, a4, a5, a3, 0, 0);

  return v10;
}

+ (id)removeNode:(id)a3
{
  v4 = [VFXStateItem alloc];
  v6 = objc_msgSend_initWithAction_target_keyPath_value_parent_index_(v4, v5, 3, a3, 0, 0, 0, 0);

  return v6;
}

+ (id)insertChildNode:(id)a3 parent:(id)a4 atIndex:(unint64_t)a5
{
  v8 = [VFXStateItem alloc];
  v10 = objc_msgSend_initWithAction_target_keyPath_value_parent_index_(v8, v9, 4, a3, 0, 0, a4, a5);

  return v10;
}

+ (id)addAnimation:(id)a3 to:(id)a4 keyPath:(id)a5
{
  v8 = [VFXStateItem alloc];
  v10 = objc_msgSend_initWithAction_target_keyPath_value_parent_index_(v8, v9, 1, a4, a5, a3, 0, 0);

  return v10;
}

+ (id)removeAnimationFrom:(id)a3 keyPath:(id)a4
{
  v6 = [VFXStateItem alloc];
  v8 = objc_msgSend_initWithAction_target_keyPath_value_parent_index_(v6, v7, 2, a3, a4, 0, 0, 0);

  return v8;
}

- (void)dealloc
{
  objc_storeWeak(&self->_target, 0);
  v3.receiver = self;
  v3.super_class = VFXStateItem;
  [(VFXStateItem *)&v3 dealloc];
}

- (void)enumerateReferencesForOperation:(int64_t)a3 usingBlock:(id)a4
{
  if (a3 != 1)
  {
    v11[9] = v4;
    v11[10] = v5;
    v8 = objc_msgSend_target(self, a2, a3, a4);
    if (v8)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = sub_1AF330F7C;
      v11[3] = &unk_1E7A7C0C8;
      v11[4] = self;
      (*(a4 + 2))(a4, v8, 1, v11);
    }

    value = self->_value;
    if (value)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = sub_1AF330F88;
      v10[3] = &unk_1E7A7C0C8;
      v10[4] = self;
      (*(a4 + 2))(a4, value, 1, v10);
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v8 = objc_msgSend_target(self, v5, v6, v7);
  objc_msgSend_setTarget_(v4, v9, v8, v10);
  v4[3] = objc_msgSend_copy(self->_keyPath, v11, v12, v13);
  v4[4] = self->_value;
  v4[5] = self->_parent;
  v4[6] = self->_index;
  v4[1] = self->_action;

  v4[7] = self->_identifier;
  return v4;
}

- (id)effectiveTarget
{
  if (objc_msgSend_target(self, a2, v2, v3))
  {

    return objc_msgSend_target(self, v5, v6, v7);
  }

  else
  {
    v9 = objc_msgSend_stateManager(self->_state, v5, v6, v7);

    return objc_msgSend_owner(v9, v10, v11, v12);
  }
}

- (void)setTarget:(id)a3
{
  if (objc_msgSend_target(self, a2, a3, v3) != a3)
  {
    v9 = objc_msgSend_stateManager(self->_state, v6, v7, v8);
    if (objc_msgSend_owner(v9, v10, v11, v12) == a3)
    {
      v13 = 0;
    }

    else
    {
      v13 = a3;
    }

    objc_storeWeak(&self->_target, v13);
  }
}

- (void)setValue:(id)a3
{
  value = self->_value;
  if (value != a3)
  {

    self->_value = a3;
  }
}

- (void)apply
{
  action = self->_action;
  if (action <= 1)
  {
    if (action)
    {
      if (action == 1)
      {
        v12 = objc_msgSend_effectiveTarget(self, a2, v2, v3);
        keyPath = self->_keyPath;
        value = self->_value;

        objc_msgSend_addAnimationPlayer_forKey_(v12, v13, value, keyPath);
      }
    }

    else
    {
      v24 = objc_msgSend_effectiveTarget(self, a2, v2, v3);
      objc_msgSend_setValue_forKeyPath_(v24, v25, self->_value, self->_keyPath);
    }
  }

  else
  {
    switch(action)
    {
      case 2:
        v16 = objc_msgSend_effectiveTarget(self, a2, v2, v3);
        v19 = self->_keyPath;

        objc_msgSend_removeAnimationForKey_(v16, v17, v19, v18);
        break;
      case 3:
        v20 = objc_msgSend_effectiveTarget(self, a2, v2, v3);

        objc_msgSend_removeFromParentNode(v20, v21, v22, v23);
        break;
      case 4:
        v6 = objc_msgSend_parent(self, a2, v2, v3);
        v10 = objc_msgSend_effectiveTarget(self, v7, v8, v9);
        index = self->_index;

        MEMORY[0x1EEE66B58](v6, sel_insertChildNode_atIndex_, v10, index);
        break;
    }
  }
}

- (NSString)description
{
  action = self->_action;
  if (action <= 1)
  {
    if (!action)
    {
      v22 = MEMORY[0x1E696AEC0];
      keyPath = self->_keyPath;
      value = self->_value;
      v31 = objc_msgSend_target(self, a2, v2, v3);
      return objc_msgSend_stringWithFormat_(v22, v25, @"set: %@ to %@ of %@\n", v26, value, keyPath, v31);
    }

    if (action == 1)
    {
      v10 = MEMORY[0x1E696AEC0];
      v12 = self->_keyPath;
      v11 = self->_value;
      v30 = objc_msgSend_target(self, a2, v2, v3);
      return objc_msgSend_stringWithFormat_(v10, v13, @"addAnim: %@ at %@ to %@\n", v14, v11, v12, v30);
    }
  }

  else
  {
    switch(action)
    {
      case 2:
        v15 = MEMORY[0x1E696AEC0];
        v16 = self->_keyPath;
        v29 = objc_msgSend_target(self, a2, v2, v3);
        return objc_msgSend_stringWithFormat_(v15, v17, @"removeAnim: at %@ from:%@\n", v18, v16, v29);
      case 3:
        v19 = MEMORY[0x1E696AEC0];
        v28 = objc_msgSend_target(self, a2, v2, v3);
        return objc_msgSend_stringWithFormat_(v19, v20, @"remove: %@\n", v21, v28);
      case 4:
        v6 = MEMORY[0x1E696AEC0];
        v27 = objc_msgSend_target(self, a2, v2, v3);
        return objc_msgSend_stringWithFormat_(v6, v7, @"insert: %@ at %d\n", v8, v27, self->_index);
    }
  }

  return 0;
}

- (id)_makeReverseItem
{
  action = self->_action;
  if (action <= 1)
  {
    if (action)
    {
      if (action != 1)
      {
        return 0;
      }

      v8 = objc_msgSend_effectiveTarget(self, a2, v2, v3);
      keyPath = self->_keyPath;

      return MEMORY[0x1EEE66B58](VFXStateItem, sel_removeAnimationFrom_keyPath_, v8, keyPath);
    }

    else
    {
      v33 = objc_msgSend_effectiveTarget(self, a2, v2, v3);
      v36 = objc_msgSend_valueForKeyPath_(v33, v34, self->_keyPath, v35);
      v40 = objc_msgSend_effectiveTarget(self, v37, v38, v39);

      return MEMORY[0x1EEE66B58](VFXStateItem, sel_setValue_to_keyPath_, v36, v40);
    }
  }

  else
  {
    switch(action)
    {
      case 2:
        v10 = objc_msgSend_effectiveTarget(self, a2, v2, v3);
        v13 = objc_msgSend_animationPlayerForKey_(v10, v11, self->_keyPath, v12);
        v17 = objc_msgSend_effectiveTarget(self, v14, v15, v16);

        return MEMORY[0x1EEE66B58](VFXStateItem, sel_addAnimation_to_keyPath_, v13, v17);
      case 3:
        v18 = objc_msgSend_effectiveTarget(self, a2, v2, v3);
        v22 = objc_msgSend_parentNode(v18, v19, v20, v21);
        v26 = objc_msgSend_effectiveTarget(self, v23, v24, v25);
        objc_msgSend_indexOfChildNode_(v22, v27, v26, v28);
        v32 = objc_msgSend_effectiveTarget(self, v29, v30, v31);

        return MEMORY[0x1EEE66B58](VFXStateItem, sel_insertChildNode_parent_atIndex_, v32, v22);
      case 4:
        v6 = objc_msgSend_effectiveTarget(self, a2, v2, v3);

        return MEMORY[0x1EEE66B58](VFXStateItem, sel_removeNode_, v6, v7);
      default:
        return 0;
    }
  }
}

- (id)makeReverseItem
{
  ReverseItem = objc_msgSend__makeReverseItem(self, a2, v2, v3);
  v9 = objc_msgSend_identifier(self, v6, v7, v8);
  objc_msgSend_setIdentifier_(ReverseItem, v10, v9, v11);
  objc_msgSend_setState_(ReverseItem, v12, self->_state, v13);
  return ReverseItem;
}

- (VFXStateItem)initWithCoder:(id)a3
{
  v51[13] = *MEMORY[0x1E69E9840];
  v49.receiver = self;
  v49.super_class = VFXStateItem;
  v6 = [(VFXStateItem *)&v49 init];
  if (v6)
  {
    v6->_action = objc_msgSend_decodeIntegerForKey_(a3, v4, @"action", v5);
    v6->_index = objc_msgSend_decodeIntegerForKey_(a3, v7, @"index", v8);
    v9 = objc_opt_class();
    v6->_keyPath = objc_msgSend_decodeObjectOfClass_forKey_(a3, v10, v9, @"keyPath");
    v11 = MEMORY[0x1E695DFD8];
    v51[0] = objc_opt_class();
    v51[1] = objc_opt_class();
    v51[2] = objc_opt_class();
    v51[3] = objc_opt_class();
    v51[4] = objc_opt_class();
    v51[5] = objc_opt_class();
    v51[6] = objc_opt_class();
    v51[7] = objc_opt_class();
    v51[8] = objc_opt_class();
    v51[9] = objc_opt_class();
    v51[10] = objc_opt_class();
    v51[11] = objc_opt_class();
    v51[12] = objc_opt_class();
    v13 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v12, v51, 13);
    v16 = objc_msgSend_setWithArray_(v11, v14, v13, v15);
    v18 = objc_msgSend_decodeObjectOfClasses_forKey_(a3, v17, v16, @"target");
    objc_msgSend_setTarget_(v6, v19, v18, v20);
    v21 = MEMORY[0x1E695DFD8];
    v50[0] = objc_opt_class();
    v50[1] = objc_opt_class();
    v50[2] = objc_opt_class();
    v50[3] = objc_opt_class();
    v50[4] = objc_opt_class();
    v50[5] = objc_opt_class();
    v50[6] = objc_opt_class();
    v50[7] = objc_opt_class();
    v50[8] = objc_opt_class();
    v23 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v22, v50, 9);
    v26 = objc_msgSend_setWithArray_(v21, v24, v23, v25);
    v28 = objc_msgSend_decodeObjectOfClasses_forKey_(a3, v27, v26, @"value");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = VFXValueFromData(v28, v29, v30, v31);
    }

    v6->_value = v28;
    v32 = objc_opt_class();
    v6->_parent = objc_msgSend_decodeObjectOfClass_forKey_(a3, v33, v32, @"parent");
    if (objc_msgSend_containsValueForKey_(a3, v34, @"identifier", v35))
    {
      v39 = objc_opt_class();
      v41 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v40, v39, @"identifier");
    }

    else
    {
      v44 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v36, v37, v38);
      v41 = objc_msgSend_UUIDString(v44, v45, v46, v47);
    }

    objc_msgSend_setIdentifier_(v6, v42, v41, v43);
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  objc_msgSend_encodeInteger_forKey_(a3, a2, self->_action, @"action");
  if (objc_msgSend_target(self, v5, v6, v7))
  {
    v11 = objc_msgSend_target(self, v8, v9, v10);
    objc_msgSend_encodeObject_forKey_(a3, v12, v11, @"target");
  }

  keyPath = self->_keyPath;
  if (keyPath)
  {
    objc_msgSend_encodeObject_forKey_(a3, v8, keyPath, @"keyPath");
  }

  value = self->_value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    value = VFXDataFromValue(self->_value, 1, v16, v17);
  }

  if (value)
  {
    if (objc_msgSend_conformsToProtocol_(value, v15, &unk_1F25D6D40, v17))
    {
      objc_msgSend_encodeObject_forKey_(a3, v18, value, @"value");
    }

    else
    {
      NSLog(&cfstr_FailedToArchiv_3.isa, value);
    }
  }

  parent = self->_parent;
  if (parent)
  {
    objc_msgSend_encodeObject_forKey_(a3, v15, parent, @"parent");
  }

  index = self->_index;
  if (index)
  {
    objc_msgSend_encodeInteger_forKey_(a3, v15, index, @"index");
  }

  identifier = self->_identifier;

  objc_msgSend_encodeObject_forKey_(a3, v15, identifier, @"identifier");
}

@end