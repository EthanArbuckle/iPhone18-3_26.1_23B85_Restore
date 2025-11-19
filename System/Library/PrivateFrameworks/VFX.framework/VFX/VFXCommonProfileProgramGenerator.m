@interface VFXCommonProfileProgramGenerator
+ (id)commonProfileGeneratorAllowingHotReload:(BOOL)a3;
- (VFXCommonProfileProgramGenerator)init;
- (__CFXProgram)programWithHashCode:(__CFXProgramHashCode *)a3 engineContext:(__CFXEngineContext *)a4 trackedResource:(id)a5 introspectionDataPtr:(void *)a6;
- (void)dealloc;
- (void)emptyShaderCache;
- (void)releaseProgramForResource:(id)a3;
@end

@implementation VFXCommonProfileProgramGenerator

- (VFXCommonProfileProgramGenerator)init
{
  v7.receiver = self;
  v7.super_class = VFXCommonProfileProgramGenerator;
  v2 = [(VFXCommonProfileProgramGenerator *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_programMutex._os_unfair_lock_opaque = 0;
    v4 = *MEMORY[0x1E695E480];
    v5 = MEMORY[0x1E695E9E8];
    v2->_shaders = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v3->_trackedResourcesToHashcode = CFDictionaryCreateMutable(v4, 0, 0, v5);
    sub_1AF1BE27C(v3, sub_1AF1EB930, @"kCFXNotificationProfileWillDie", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    sub_1AF1BE27C(v3, sub_1AF1EB9A0, @"kCFXShadableDidChange", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v3;
}

- (void)dealloc
{
  sub_1AF1BE2E4(self, @"kCFXNotificationProfileWillDie", 0);
  shaders = self->_shaders;
  if (shaders)
  {
    CFRelease(shaders);
    self->_shaders = 0;
  }

  trackedResourcesToHashcode = self->_trackedResourcesToHashcode;
  if (trackedResourcesToHashcode)
  {
    CFRelease(trackedResourcesToHashcode);
    self->_trackedResourcesToHashcode = 0;
  }

  v5.receiver = self;
  v5.super_class = VFXCommonProfileProgramGenerator;
  [(VFXCommonProfileProgramGenerator *)&v5 dealloc];
}

- (void)emptyShaderCache
{
  CFDictionaryRemoveAllValues(self->_shaders);
  trackedResourcesToHashcode = self->_trackedResourcesToHashcode;

  CFDictionaryRemoveAllValues(trackedResourcesToHashcode);
}

+ (id)commonProfileGeneratorAllowingHotReload:(BOOL)a3
{
  if (a3)
  {
    if (qword_1EB658668 != -1)
    {
      sub_1AFDE45DC();
    }

    v3 = &qword_1EB658660;
  }

  else
  {
    if (qword_1EB658678 != -1)
    {
      sub_1AFDE45C8();
    }

    v3 = &qword_1EB658670;
  }

  return *v3;
}

- (__CFXProgram)programWithHashCode:(__CFXProgramHashCode *)a3 engineContext:(__CFXEngineContext *)a4 trackedResource:(id)a5 introspectionDataPtr:(void *)a6
{
  v44 = *MEMORY[0x1E69E9840];
  v11 = sub_1AF13E494(a3);
  if (v11)
  {
    v12 = v11;
    os_unfair_lock_lock(&self->_programMutex);
    Value = CFDictionaryGetValue(self->_shaders, v12);
    if (Value)
    {
      v14 = Value;
      v15 = CFSetContainsValue(Value[2], a5);
      v16 = v15 == 0;
      if (!v15)
      {
        CFSetAddValue(v14[2], a5);
      }

      v17 = v14[1];
    }

    else
    {
      v26 = objc_autoreleasePoolPush();
      v27 = sub_1AF0D5194();
      v28 = os_signpost_id_generate(v27);
      v29 = sub_1AF0D5194();
      if (v28 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v31 = v29;
        if (os_signpost_enabled(v29))
        {
          LOWORD(v40) = 0;
          _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v31, OS_SIGNPOST_INTERVAL_BEGIN, v28, "GenerateShader", &unk_1AFF70A1D, &v40, 2u);
        }
      }

      v17 = objc_msgSend__newProgramWithHashCode_engineContext_introspectionDataPtr_(self, v30, a3, a4, a6);
      v32 = sub_1AF0D5194();
      if (v28 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v33 = v32;
        if (os_signpost_enabled(v32))
        {
          LOWORD(v40) = 0;
          _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v33, OS_SIGNPOST_INTERVAL_END, v28, "GenerateShader", &unk_1AFF70A1D, &v40, 2u);
        }
      }

      objc_autoreleasePoolPop(v26);
      if (!v17)
      {
        v37 = CFCopyDescription(a3);
        v38 = sub_1AF0D5194();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          v40 = 138412546;
          v41 = v12;
          v42 = 2112;
          v43 = v37;
          _os_log_impl(&dword_1AF0CE000, v38, OS_LOG_TYPE_DEFAULT, "Warning: Failed to create program for hashcode %@: %@", &v40, 0x16u);
        }

        CFRelease(v37);
        v17 = 0;
        goto LABEL_27;
      }

      sub_1AF16CC34(v17, v12);
      v34 = objc_alloc_init(VFXCommonProfileProgramCache);
      v34->_program = CFRetain(v17);
      CFSetAddValue(v34->_owners, a5);
      CFDictionarySetValue(self->_shaders, v12, v34);

      CFRelease(v17);
      v16 = 1;
    }

    if (v16 && v17 != 0)
    {
      Mutable = CFDictionaryGetValue(self->_trackedResourcesToHashcode, a5);
      if (!Mutable)
      {
        Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
        CFDictionarySetValue(self->_trackedResourcesToHashcode, a5, Mutable);
        CFRelease(Mutable);
      }

      CFArrayAppendValue(Mutable, v12);
    }

LABEL_27:
    os_unfair_lock_unlock(&self->_programMutex);
    return v17;
  }

  v18 = sub_1AF0D5194();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDE45F0(v18, v19, v20, v21, v22, v23, v24, v25);
  }

  return 0;
}

- (void)releaseProgramForResource:(id)a3
{
  if (!a3)
  {
    v5 = sub_1AF0D5194();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE4668(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  os_unfair_lock_lock(&self->_programMutex);
  Value = CFDictionaryGetValue(self->_trackedResourcesToHashcode, a3);
  if (Value)
  {
    v14 = Value;
    Count = CFArrayGetCount(Value);
    if (Count >= 1)
    {
      v16 = Count;
      for (i = 0; i != v16; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v14, i);
        v19 = CFDictionaryGetValue(self->_shaders, ValueAtIndex);
        if (v19)
        {
          v20 = v19;
          CFSetRemoveValue(v19[2], a3);
          if (!CFSetGetCount(v20[2]))
          {
            CFDictionaryRemoveValue(self->_shaders, ValueAtIndex);
          }
        }

        else if ((byte_1EB658680 & 1) == 0)
        {
          byte_1EB658680 = 1;
          v21 = sub_1AF0D5194();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            sub_1AFDE46E0(&v22, v23, v21);
          }
        }
      }
    }
  }

  CFDictionaryRemoveValue(self->_trackedResourcesToHashcode, a3);
  os_unfair_lock_unlock(&self->_programMutex);
}

@end