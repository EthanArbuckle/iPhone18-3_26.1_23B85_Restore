@interface VFXStateTransition
- (VFXStateTransition)init;
- (VFXStateTransition)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)transitionOverrideForItem:(id)item;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateReferencesForOperation:(int64_t)operation usingBlock:(id)block;
- (void)setTransitionOverride:(id)override forItem:(id)item;
@end

@implementation VFXStateTransition

- (VFXStateTransition)init
{
  v3.receiver = self;
  v3.super_class = VFXStateTransition;
  result = [(VFXStateTransition *)&v3 init];
  if (result)
  {
    result->_duration = 0.5;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXStateTransition;
  [(VFXStateTransition *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  v8 = objc_msgSend_from(self, v5, v6, v7);
  objc_msgSend_setFrom_(v4, v9, v8, v10);
  v14 = objc_msgSend_to(self, v11, v12, v13);
  objc_msgSend_setTo_(v4, v15, v14, v16);
  objc_msgSend_duration(self, v17, v18, v19);
  objc_msgSend_setDuration_(v4, v20, v21, v22);
  objc_msgSend_beginTime(self, v23, v24, v25);
  objc_msgSend_setBeginTime_(v4, v26, v27, v28);
  v32 = objc_msgSend_timingFunction(self, v29, v30, v31);
  v36 = objc_msgSend_copy(v32, v33, v34, v35);
  objc_msgSend_setTimingFunction_(v4, v37, v36, v38);
  v4[6] = objc_msgSend_mutableCopy(self->_overrides, v39, v40, v41);
  return v4;
}

- (void)enumerateReferencesForOperation:(int64_t)operation usingBlock:(id)block
{
  if (operation != 1)
  {
    v11[9] = v4;
    v11[10] = v5;
    from = self->_from;
    if (from)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = sub_1AF331E5C;
      v11[3] = &unk_1E7A7C0C8;
      v11[4] = self;
      (*(block + 2))(block, from, 1, v11);
    }

    to = self->_to;
    if (to)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = sub_1AF331E68;
      v10[3] = &unk_1E7A7C0C8;
      v10[4] = self;
      (*(block + 2))(block, to, 1, v10);
    }
  }
}

- (void)setTransitionOverride:(id)override forItem:(id)item
{
  overrides = self->_overrides;
  if (!overrides)
  {
    overrides = objc_alloc_init(MEMORY[0x1E695DF90]);
    self->_overrides = overrides;
  }

  v9 = objc_msgSend_identifier(item, a2, override, item);

  objc_msgSend_setValue_forKey_(overrides, v8, override, v9);
}

- (id)transitionOverrideForItem:(id)item
{
  overrides = self->_overrides;
  v6 = objc_msgSend_identifier(item, a2, item, v3);

  return objc_msgSend_valueForKey_(overrides, v5, v6, v7);
}

- (VFXStateTransition)initWithCoder:(id)coder
{
  v25.receiver = self;
  v25.super_class = VFXStateTransition;
  v4 = [(VFXStateTransition *)&v25 init];
  if (v4)
  {
    v5 = objc_opt_class();
    v4->_to = objc_msgSend_decodeObjectOfClass_forKey_(coder, v6, v5, @"to");
    v7 = objc_opt_class();
    v4->_from = objc_msgSend_decodeObjectOfClass_forKey_(coder, v8, v7, @"from");
    objc_msgSend_decodeFloatForKey_(coder, v9, @"duration", v10);
    v4->_duration = v11;
    objc_msgSend_decodeFloatForKey_(coder, v12, @"beginTime", v13);
    v4->_beginTime = v14;
    v15 = objc_opt_class();
    v4->_timingFunction = objc_msgSend_decodeObjectOfClass_forKey_(coder, v16, v15, @"timingFunction");
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v20 = objc_msgSend_vfx_decodeDictionaryWithKeysOfClass_objectsOfClass_forKey_(coder, v19, v17, v18, @"overrides");
    v4->_overrides = objc_msgSend_mutableCopy(v20, v21, v22, v23);
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  to = self->_to;
  if (to)
  {
    objc_msgSend_encodeObject_forKey_(coder, a2, to, @"to");
  }

  from = self->_from;
  if (from)
  {
    objc_msgSend_encodeObject_forKey_(coder, a2, from, @"from");
  }

  duration = self->_duration;
  if (duration != 0.0)
  {
    *&duration = duration;
    objc_msgSend_encodeFloat_forKey_(coder, a2, @"duration", v3, duration);
  }

  beginTime = self->_beginTime;
  if (beginTime != 0.0)
  {
    *&beginTime = beginTime;
    objc_msgSend_encodeFloat_forKey_(coder, a2, @"beginTime", v3, beginTime);
  }

  timingFunction = self->_timingFunction;
  if (timingFunction)
  {
    objc_msgSend_encodeObject_forKey_(coder, a2, timingFunction, @"timingFunction");
  }

  overrides = self->_overrides;
  if (overrides && objc_msgSend_count(overrides, a2, timingFunction, v3))
  {
    v13 = self->_overrides;

    objc_msgSend_encodeObject_forKey_(coder, v12, v13, @"overrides");
  }
}

@end