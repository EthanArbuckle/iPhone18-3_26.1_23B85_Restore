@interface UIResponderIntegrityProtection
@end

@implementation UIResponderIntegrityProtection

void __38___UIResponderIntegrityProtection_rip__block_invoke()
{
  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  v0 = _UIInternalPreferencesRevisionVar;
  if (_UIInternalPreferencesRevisionVar >= 1)
  {
    v1 = _UIInternalPreference_ResponderIntegrityProtection;
    if (_UIInternalPreferencesRevisionVar != _UIInternalPreference_ResponderIntegrityProtection)
    {
      while (v0 >= v1)
      {
        _UIInternalPreferenceSync(v0, &_UIInternalPreference_ResponderIntegrityProtection, @"ResponderIntegrityProtection", _UIInternalPreferenceUpdateBool);
        v1 = _UIInternalPreference_ResponderIntegrityProtection;
        if (v0 == _UIInternalPreference_ResponderIntegrityProtection)
        {
          return;
        }
      }

      if (byte_1EA95E48C)
      {
        v2 = objc_opt_new();
        v3 = _MergedGlobals_1117;
        _MergedGlobals_1117 = v2;

        ClassList = objc_getClassList(0, 0);
        if (ClassList <= 0)
        {
          v15 = *(__UILogGetCategoryCachedImpl("ResponderIntegrityProtection", &qword_1ED49E188) + 8);
          if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            return;
          }

          v20 = 0;
          v16 = &v20;
        }

        else
        {
          v5 = ClassList;
          v6 = ClassList;
          v7 = malloc_type_calloc(ClassList, 8uLL, 0x80040B8603338uLL);
          if (v7)
          {
            v8 = v7;
            if (objc_getClassList(v7, v5) == v5)
            {
              v9 = objc_opt_class();
              for (i = 0; i != v6; ++i)
              {
                v11 = v8[i];
                v12 = v11 != 0;
                if (v11)
                {
                  v13 = v11 == v9;
                }

                else
                {
                  v13 = 1;
                }

                if (!v13)
                {
                  Superclass = v8[i];
                  do
                  {
                    Superclass = class_getSuperclass(Superclass);
                    v12 = Superclass != 0;
                  }

                  while (Superclass && Superclass != v9);
                }

                if (v12)
                {
                  _rip_inject_method(v11, sel_pressesBegan_withEvent_);
                  _rip_inject_method(v11, sel_pressesChanged_withEvent_);
                  _rip_inject_method(v11, sel_pressesEnded_withEvent_);
                  _rip_inject_method(v11, sel_pressesCancelled_withEvent_);
                }
              }

              free(v8);
            }

            else
            {
              v17 = *(__UILogGetCategoryCachedImpl("ResponderIntegrityProtection", &qword_1ED49E198) + 8);
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                *v18 = 0;
                _os_log_impl(&dword_188A29000, v17, OS_LOG_TYPE_ERROR, "Unable to fetch class list.", v18, 2u);
              }

              free(v8);
            }

            return;
          }

          v15 = *(__UILogGetCategoryCachedImpl("ResponderIntegrityProtection", &qword_1ED49E190) + 8);
          if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            return;
          }

          *buf = 0;
          v16 = buf;
        }

        _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_ERROR, "Unable to fetch class list.", v16, 2u);
      }
    }
  }
}

@end