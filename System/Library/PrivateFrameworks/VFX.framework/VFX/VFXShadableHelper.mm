@interface VFXShadableHelper
- (NSDictionary)shaderModifiers;
- (VFXProgram)program;
- (VFXShadableHelper)initWithCoder:(id)a3;
- (VFXShadableHelper)initWithOwner:(id)a3;
- (void)_commonInit;
- (void)_customEncodingOfVFXShadableHelper:(id)a3;
- (void)_parseAndSetShaderModifier:(id)a3;
- (void)_programDidChange:(id)a3;
- (void)_programDidCompile:(id)a3;
- (void)_setCFXProgram;
- (void)_startObservingProgram;
- (void)_stopObservingProgram;
- (void)copyModifiersFrom:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setMinimumLanguageVersion:(id)a3;
- (void)setProgram:(id)a3;
- (void)setShaderModifiers:(id)a3;
@end

@implementation VFXShadableHelper

- (void)_commonInit
{
  self->_symbolToBinder = objc_alloc_init(MEMORY[0x1E695DF90]);
  self->_symbolToUnbinder = objc_alloc_init(MEMORY[0x1E695DF90]);
  self->_arguments = objc_alloc_init(MEMORY[0x1E695DF90]);
}

- (VFXShadableHelper)initWithOwner:(id)a3
{
  v10.receiver = self;
  v10.super_class = VFXShadableHelper;
  v4 = [(VFXShadableHelper *)&v10 init];
  v8 = v4;
  if (v4)
  {
    objc_msgSend__commonInit(v4, v5, v6, v7);
    v8->_owner = a3;
  }

  return v8;
}

- (void)dealloc
{
  if (self->_owner)
  {
    v3 = sub_1AF0D5194();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF8768(v3);
    }
  }

  v4.receiver = self;
  v4.super_class = VFXShadableHelper;
  [(VFXShadableHelper *)&v4 dealloc];
}

- (void)_startObservingProgram
{
  if (self->_program)
  {
    v5 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], a2, v2, v3);
    program = self->_program;

    objc_msgSend_addObserver_selector_name_object_(v5, v6, self, sel__programDidChange_, @"VFXProgramDidChangeNotification", program);
  }
}

- (void)_stopObservingProgram
{
  if (self->_program)
  {
    v5 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], a2, v2, v3);
    objc_msgSend_removeObserver_name_object_(v5, v6, self, @"VFXProgramDidChangeNotification", self->_program);
    v10 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v7, v8, v9);

    objc_msgSend_removeObserver_name_object_(v10, v11, self, @"VFXProgramDidCompileNotification", 0);
  }
}

- (void)setProgram:(id)a3
{
  if (a3)
  {
    if (objc_msgSend_count(self->_shaderModifiers, a2, a3, v3))
    {
      v6 = sub_1AF0D5194();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AF0CE000, v6, OS_LOG_TYPE_DEFAULT, "Warning: VFXProgram overrides shader modifiers", buf, 2u);
      }
    }
  }

  if (self->_program != a3)
  {
    objc_msgSend__stopObservingProgram(self, a2, a3, v3);

    self->_program = a3;
    owner = self->_owner;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1AF329F7C;
    v9[3] = &unk_1E7A7E1D0;
    v9[4] = self;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v8, owner, v9);
  }
}

- (VFXProgram)program
{
  v2 = self->_program;

  return v2;
}

- (void)_parseAndSetShaderModifier:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  objc_msgSend_removeAllObjects(self->_arguments, a2, a3, v3);
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(a3, v6, &v33, v37, 16);
  if (v7)
  {
    v8 = v7;
    v9 = *v34;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v34 != v9)
        {
          objc_enumerationMutation(a3);
        }

        v11 = sub_1AF148894(*(*(&v33 + 1) + 8 * i));
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = sub_1AF32A280;
        v32[3] = &unk_1E7A7E7E8;
        v32[4] = self;
        objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v11, v12, v32, v13);
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(a3, v14, &v33, v37, 16);
    }

    while (v8);
  }

  p_owner = &self->_owner;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v19 = objc_msgSend___CFObject(*p_owner, v16, v17, v18);
    v20 = *p_owner;
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = sub_1AF32A30C;
    v31[3] = &unk_1E7A7E248;
    v31[4] = a3;
    v31[5] = v19;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v21, v20, v31);
  }

  else
  {
    v25 = sub_1AF0D5194();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF87EC();
    }
  }

  v26 = objc_msgSend_worldRef(*p_owner, v22, v23, v24);
  if (v26)
  {
    v27 = v26;
    if (!sub_1AF1CFF64(v26, 1))
    {
      v29 = *p_owner;
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = sub_1AF32A318;
      v30[3] = &unk_1E7A7E6C0;
      v30[4] = v27;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v28, v29, v30);
    }
  }
}

- (NSDictionary)shaderModifiers
{
  v2 = self->_shaderModifiers;

  return v2;
}

- (void)setShaderModifiers:(id)a3
{
  if (self->_program && objc_msgSend_count(a3, a2, a3, v3))
  {
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF8864();
    }
  }

  else
  {
    shaderModifiers = self->_shaderModifiers;
    if (shaderModifiers != a3)
    {

      if (objc_msgSend_count(a3, v8, v9, v10))
      {
        v14 = objc_alloc(MEMORY[0x1E695DF20]);
        v16 = objc_msgSend_initWithDictionary_copyItems_(v14, v15, a3, 1);
      }

      else if (a3)
      {
        v16 = MEMORY[0x1E695E0F8];
      }

      else
      {
        v16 = 0;
      }

      self->_shaderModifiers = v16;
      objc_msgSend_owner(self, v11, v12, v13);
      v17 = self->_shaderModifiers;
      v18 = MEMORY[0x1E695DF70];
      v22 = objc_msgSend_count(v17, v19, v20, v21);
      v25 = objc_msgSend_arrayWithCapacity_(v18, v23, v22, v24);
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = sub_1AF32B16C;
      v31[3] = &unk_1E7A7E7E8;
      v31[4] = v25;
      objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v17, v26, v31, v27);

      v28 = v25;
      self->_cfxShaderModifierCache = v28;
      objc_msgSend__parseAndSetShaderModifier_(self, v29, v28, v30);
    }
  }
}

- (void)copyModifiersFrom:(id)a3
{
  v5 = *(a3 + 4);
  v8 = objc_msgSend_shaderModifiers(a3, a2, a3, v3);
  if (v5 && !sub_1AF333168())
  {
    if (self->_program && objc_msgSend_count(v8, v6, v9, v7))
    {
      v10 = sub_1AF0D5194();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF8864();
      }
    }

    else
    {
      shaderModifiers = self->_shaderModifiers;
      if (shaderModifiers != v8)
      {

        if (objc_msgSend_count(v8, v12, v13, v14))
        {
          v15 = objc_alloc(MEMORY[0x1E695DF20]);
          v17 = objc_msgSend_initWithDictionary_copyItems_(v15, v16, v8, 1);
        }

        else if (v8)
        {
          v17 = MEMORY[0x1E695E0F8];
        }

        else
        {
          v17 = 0;
        }

        self->_shaderModifiers = v17;

        self->_cfxShaderModifierCache = v5;

        objc_msgSend__parseAndSetShaderModifier_(self, v18, v5, v19);
      }
    }
  }

  else
  {

    objc_msgSend_setShaderModifiers_(self, v6, v8, v7);
  }
}

- (void)setMinimumLanguageVersion:(id)a3
{
  minimumLanguageVersion = self->_minimumLanguageVersion;
  if (minimumLanguageVersion != a3)
  {
    v10[8] = v3;
    v10[9] = v4;

    self->_minimumLanguageVersion = a3;
    owner = self->_owner;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1AF32A688;
    v10[3] = &unk_1E7A7E220;
    v10[4] = self;
    v10[5] = a3;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v9, owner, v10);
  }
}

- (void)_programDidChange:(id)a3
{
  owner = self->_owner;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1AF32A7BC;
  v4[3] = &unk_1E7A7E1D0;
  v4[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, owner, v4);
}

- (void)_programDidCompile:(id)a3
{
  v57 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_userInfo(a3, a2, a3, v3);
  v8 = objc_msgSend_valueForKey_(v5, v6, @"bindings", v7);
  objc_msgSend_removeAllObjects(self->_arguments, v9, v10, v11);
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v12, &v52, v56, 16);
  if (v13)
  {
    v17 = v13;
    v18 = *v53;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v53 != v18)
        {
          objc_enumerationMutation(v8);
        }

        v20 = *(*(&v52 + 1) + 8 * i);
        if (objc_msgSend_type(v20, v14, v15, v16))
        {
          if (objc_msgSend_type(v20, v21, v22, v23) != 2)
          {
            continue;
          }

          v24 = objc_alloc_init(VFXShaderArgument);
          v28 = objc_msgSend_name(v20, v25, v26, v27);
          objc_msgSend_setName_(v24, v29, v28, v30);
          objc_msgSend_setType_(v24, v31, 58, v32);
        }

        else
        {
          v24 = objc_alloc_init(VFXShaderArgument);
          v39 = objc_msgSend_name(v20, v36, v37, v38);
          objc_msgSend_setName_(v24, v40, v39, v41);
          v45 = objc_msgSend_bufferDataType(v20, v42, v43, v44);
          objc_msgSend_setType_(v24, v46, v45, v47);
        }

        arguments = self->_arguments;
        v49 = objc_msgSend_name(v24, v33, v34, v35);
        objc_msgSend_setValue_forKey_(arguments, v50, v24, v49);
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v14, &v52, v56, 16);
    }

    while (v17);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1AF32AA40;
  block[3] = &unk_1E7A7A770;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_setCFXProgram
{
  IfNeeded = objc_msgSend_materialRefCreateIfNeeded(self->_owner, a2, v2, v3);
  if (!IfNeeded)
  {
    v9 = sub_1AF0D5194();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF8914(v9);
    }
  }

  v10 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v5, v6, v7);
  objc_msgSend_removeObserver_name_object_(v10, v11, self, @"VFXProgramDidCompileNotification", 0);
  program = self->_program;
  if (program)
  {
    if (objc_msgSend_source(self->_program, v12, v13, v14))
    {
      v19 = objc_msgSend_vertexFunctionName(self->_program, v16, v17, v18);
      v23 = objc_msgSend_fragmentFunctionName(self->_program, v20, v21, v22);
      v27 = objc_msgSend_source(self->_program, v24, v25, v26);
      v28 = sub_1AF1F32F0();
      v29 = sub_1AF1D5628(v19, v23, 0, v27, 0, 0, 0, 0, v28, 1);
    }

    else
    {
      v52[4] = program;
      v53[0] = MEMORY[0x1E69E9820];
      v53[1] = 3221225472;
      v53[2] = sub_1AF32AD28;
      v53[3] = &unk_1E7A7F100;
      v53[4] = program;
      v52[0] = MEMORY[0x1E69E9820];
      v52[1] = 3221225472;
      v52[2] = sub_1AF32ADB4;
      v52[3] = &unk_1E7A7F128;
      v37 = objc_msgSend_vertexFunctionName(self->_program, v16, v17, v18);
      v41 = objc_msgSend_fragmentFunctionName(self->_program, v38, v39, v40);
      v29 = sub_1AF1D5518(v37, v41, 0, v53, v52);
    }

    v42 = v29;
    v43 = objc_msgSend__bufferBindings(self->_program, v30, v31, v32);
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = sub_1AF32ADF0;
    v51[3] = &unk_1E7A7F148;
    v51[4] = v42;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v43, v44, v51, v45);
    sub_1AF1D5E48(v42, 1);
    v49 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v46, v47, v48);
    objc_msgSend_addObserver_selector_name_object_(v49, v50, self, sel__programDidCompile_, @"VFXProgramDidCompileNotification", v42);
    sub_1AF1A1AB0(IfNeeded, v42);
    CFRelease(v42);
  }

  else
  {
    sub_1AF1A1AB0(IfNeeded, 0);
    sub_1AF1A1A4C(IfNeeded);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v36 = objc_msgSend_modelRef(self->_owner, v33, v34, v35);
      sub_1AF1B3970(v36, 0);
    }
  }
}

- (void)_customEncodingOfVFXShadableHelper:(id)a3
{
  owner = self->_owner;
  if (owner)
  {
    objc_msgSend_encodeObject_forKey_(a3, a2, owner, @"owner");
  }
}

- (void)encodeWithCoder:(id)a3
{
  objc_msgSend__customEncodingOfVFXShadableHelper_(self, a2, a3, v3);
  program = self->_program;
  if (program)
  {
    objc_msgSend_encodeObject_forKey_(a3, v6, program, @"program");
  }

  shaderModifiers = self->_shaderModifiers;
  if (shaderModifiers)
  {
    objc_msgSend_encodeObject_forKey_(a3, v6, shaderModifiers, @"shaderModifiers");
  }

  minimumLanguageVersion = self->_minimumLanguageVersion;
  if (minimumLanguageVersion)
  {

    objc_msgSend_encodeObject_forKey_(a3, v6, minimumLanguageVersion, @"minimumLanguageVersion");
  }
}

- (VFXShadableHelper)initWithCoder:(id)a3
{
  v42[2] = *MEMORY[0x1E69E9840];
  v41.receiver = self;
  v41.super_class = VFXShadableHelper;
  v4 = [(VFXShadableHelper *)&v41 init];
  v8 = v4;
  if (v4)
  {
    objc_msgSend__commonInit(v4, v5, v6, v7);
    v12 = objc_msgSend_immediateMode(VFXTransaction, v9, v10, v11);
    objc_msgSend_setImmediateMode_(VFXTransaction, v13, 1, v14);
    v15 = sub_1AF37287C();
    v17 = objc_msgSend_decodeObjectOfClasses_forKey_(a3, v16, v15, @"owner");
    v8->_owner = v17;
    if (v17)
    {
      v20 = objc_opt_class();
      v22 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v21, v20, @"program");
      objc_msgSend_setProgram_(v8, v23, v22, v24);
      v25 = MEMORY[0x1E695DFD8];
      v42[0] = objc_opt_class();
      v42[1] = objc_opt_class();
      v27 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v26, v42, 2);
      v30 = objc_msgSend_setWithArray_(v25, v28, v27, v29);
      v32 = objc_msgSend_decodeObjectOfClasses_forKey_(a3, v31, v30, @"shaderModifiers");
      objc_msgSend_setShaderModifiers_(v8, v33, v32, v34);
      v35 = objc_opt_class();
      v37 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v36, v35, @"minimumLanguageVersion");
      objc_msgSend_setMinimumLanguageVersion_(v8, v38, v37, v39);
    }

    objc_msgSend_setImmediateMode_(VFXTransaction, v18, v12, v19);
  }

  return v8;
}

@end