@interface _UITraitChangeRegistry
- (_UITraitChangeRegistry)init;
- (_UITraitRegistration)registerForTraitTokenChanges:(void *)a3 withHandler:;
- (_UITraitRegistration)registerForTraitTokenChanges:(void *)a3 withTarget:(const char *)a4 action:(int)a5 targetIsSender:;
- (id).cxx_construct;
- (void)_addRegistration:(void *)a3 forTraitTokens:;
- (void)dealloc;
- (void)invalidateAuxiliaryChildren;
- (void)recordTraitUsage:(void *)a3 forTraitEnvironment:(unint64_t)a4 insideMethod:(uint64_t)a5 withInvalidationAction:;
- (void)registerAuxiliaryChildEnvironmentForTraitInvalidations:(uint64_t)a1;
- (void)traitsDidChange:(void *)a3 forTraitEnvironment:(void *)a4 withPreviousTraitCollection:;
- (void)unregisterAuxiliaryChildEnvironmentForTraitInvalidations:(uint64_t)a1;
- (void)unregisterForTraitChanges:(uint64_t)a1;
- (void)updateAuxiliaryChildrenTraitsIfNeeded;
@end

@implementation _UITraitChangeRegistry

- (_UITraitChangeRegistry)init
{
  v6.receiver = self;
  v6.super_class = _UITraitChangeRegistry;
  v2 = [(_UITraitChangeRegistry *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    registrations = v2->_registrations;
    v2->_registrations = v3;
  }

  return v2;
}

- (id).cxx_construct
{
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 14) = 1065353216;
  return self;
}

- (void)invalidateAuxiliaryChildren
{
  v12 = *MEMORY[0x1E69E9840];
  if (a1 && [*(a1 + 16) count])
  {
    v2 = [*(a1 + 16) copy];
    v7 = 0u;
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = v2;
    v4 = [v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
    if (v4)
    {
      v5 = *v8;
      do
      {
        v6 = 0;
        do
        {
          if (*v8 != v5)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v7 + 1) + 8 * v6++) _invalidateAuxiliaryChildTraits];
        }

        while (v4 != v6);
        v4 = [v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
      }

      while (v4);
    }
  }
}

- (void)dealloc
{
  for (i = self->_traitUsageRecordsByMethodIMP.__table_.__first_node_.__next_; i; i = *i)
  {
    v4 = i[4];
    if (v4)
    {
    }
  }

  v5.receiver = self;
  v5.super_class = _UITraitChangeRegistry;
  [(_UITraitChangeRegistry *)&v5 dealloc];
}

- (void)updateAuxiliaryChildrenTraitsIfNeeded
{
  v12 = *MEMORY[0x1E69E9840];
  if (a1 && [*(a1 + 16) count])
  {
    v2 = [*(a1 + 16) copy];
    v7 = 0u;
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = v2;
    v4 = [v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
    if (v4)
    {
      v5 = *v8;
      do
      {
        v6 = 0;
        do
        {
          if (*v8 != v5)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v7 + 1) + 8 * v6++) _updateAuxiliaryChildTraitsIfNeeded];
        }

        while (v4 != v6);
        v4 = [v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
      }

      while (v4);
    }
  }
}

- (void)recordTraitUsage:(void *)a3 forTraitEnvironment:(unint64_t)a4 insideMethod:(uint64_t)a5 withInvalidationAction:
{
  v9 = a3;
  v10 = v9;
  v29[0] = a4;
  if (!a1)
  {
    goto LABEL_27;
  }

  if (v9)
  {
    if (a4)
    {
      goto LABEL_4;
    }

LABEL_29:
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:sel_recordTraitUsage_forTraitEnvironment_insideMethod_withInvalidationAction_ object:a1 file:@"_UITraitChangeRegistry.mm" lineNumber:75 description:{@"Invalid parameter not satisfying: %@", @"methodIMP != NULL"}];

    if (a5)
    {
      goto LABEL_5;
    }

    goto LABEL_30;
  }

  v23 = [MEMORY[0x1E696AAA8] currentHandler];
  [v23 handleFailureInMethod:sel_recordTraitUsage_forTraitEnvironment_insideMethod_withInvalidationAction_ object:a1 file:@"_UITraitChangeRegistry.mm" lineNumber:74 description:{@"Invalid parameter not satisfying: %@", @"traitEnvironment != nil"}];

  if (!a4)
  {
    goto LABEL_29;
  }

LABEL_4:
  if (a5)
  {
    goto LABEL_5;
  }

LABEL_30:
  v25 = [MEMORY[0x1E696AAA8] currentHandler];
  [v25 handleFailureInMethod:sel_recordTraitUsage_forTraitEnvironment_insideMethod_withInvalidationAction_ object:a1 file:@"_UITraitChangeRegistry.mm" lineNumber:76 description:{@"Invalid parameter not satisfying: %@", @"invalidationAction != NULL"}];

LABEL_5:
  v11 = a1[4];
  if (v11)
  {
    v12 = 0x9DDFEA08EB382D69 * ((8 * (a4 & 0x1FFFFFFF) + 8) ^ HIDWORD(a4));
    v13 = 0x9DDFEA08EB382D69 * (HIDWORD(a4) ^ (v12 >> 47) ^ v12);
    v14 = 0x9DDFEA08EB382D69 * (v13 ^ (v13 >> 47));
    v15 = vcnt_s8(v11);
    v15.i16[0] = vaddlv_u8(v15);
    if (v15.u32[0] > 1uLL)
    {
      v16 = v14;
      if (v14 >= *&v11)
      {
        v16 = v14 % *&v11;
      }
    }

    else
    {
      v16 = v14 & (*&v11 - 1);
    }

    v17 = *(*&a1[3] + 8 * v16);
    if (v17)
    {
      for (i = *v17; i; i = *i)
      {
        v19 = i[1];
        if (v14 == v19)
        {
          if (i[2] == a4)
          {
            v20 = std::__hash_table<std::__hash_value_type<void (*)(void),_UITrackedTraitUsageRecord>,std::__unordered_map_hasher<void (*)(void),std::__hash_value_type<void (*)(void),_UITrackedTraitUsageRecord>,std::hash<void (*)(void)>,std::equal_to<void (*)(void)>,true>,std::__unordered_map_equal<void (*)(void),std::__hash_value_type<void (*)(void),_UITrackedTraitUsageRecord>,std::equal_to<void (*)(void)>,std::hash<void (*)(void)>,true>,std::allocator<std::__hash_value_type<void (*)(void),_UITrackedTraitUsageRecord>>>::__emplace_unique_key_args<void (*)(void),std::piecewise_construct_t const&,std::tuple<void (* const&)(void)>,std::tuple<>>(&a1[3], a4)[4];
            if (v20)
            {
            }

            break;
          }
        }

        else
        {
          if (v15.u32[0] > 1uLL)
          {
            if (v19 >= *&v11)
            {
              v19 %= *&v11;
            }
          }

          else
          {
            v19 &= *&v11 - 1;
          }

          if (v19 != v16)
          {
            break;
          }
        }
      }
    }
  }

  if (*a2)
  {
    v21 = *a2;
  }

  v26 = *a2;
  v27 = a2[1];
  v28 = *(a2 + 4);
  v29[1] = v29;
  v22 = std::__hash_table<std::__hash_value_type<void (*)(void),_UITrackedTraitUsageRecord>,std::__unordered_map_hasher<void (*)(void),std::__hash_value_type<void (*)(void),_UITrackedTraitUsageRecord>,std::hash<void (*)(void)>,std::equal_to<void (*)(void)>,true>,std::__unordered_map_equal<void (*)(void),std::__hash_value_type<void (*)(void),_UITrackedTraitUsageRecord>,std::equal_to<void (*)(void)>,std::hash<void (*)(void)>,true>,std::allocator<std::__hash_value_type<void (*)(void),_UITrackedTraitUsageRecord>>>::__emplace_unique_key_args<void (*)(void),std::piecewise_construct_t const&,std::tuple<void (* const&)(void)>,std::tuple<>>(&a1[3], v29[0]);
  v22[3] = a5;
  *(v22 + 2) = v26;
  *(v22 + 3) = v27;
  v22[8] = v28;
LABEL_27:
}

- (void)_addRegistration:(void *)a3 forTraitTokens:
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = a3;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v7)
  {
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = _UIGetTraitTokenValue(v10);
        if ((_UITraitTokenSetContains(v21, v11) & 1) == 0)
        {
          _UITraitTokenSetInsert(v21, v11, v12);
          v13 = [*(a1 + 8) objectForKey:v10];
          v14 = v13;
          if (v13)
          {
            [v13 addObject:v5];
          }

          else
          {
            v15 = *(a1 + 8);
            v16 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:{v5, 0}];
            [v15 setObject:v16 forKey:v10];
          }
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v7);
  }

  if (*&v21[0])
  {
  }
}

- (_UITraitRegistration)registerForTraitTokenChanges:(void *)a3 withHandler:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    if (dyld_program_sdk_at_least())
    {
      if (![v5 count])
      {
        v7 = [MEMORY[0x1E696AAA8] currentHandler];
        [v7 handleFailureInMethod:sel_registerForTraitTokenChanges_withHandler_ object:a1 file:@"_UITraitChangeRegistry.mm" lineNumber:109 description:@"Must pass one or more traits to register for"];
      }
    }

    else if (![v5 count])
    {
      v13 = *(__UILogGetCategoryCachedImpl("Assert", &[_UITraitChangeRegistry registerForTraitTokenChanges:withHandler:]::__s_category) + 8);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14[0] = 0;
        _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "Must pass one or more traits to register for", v14, 2u);
      }
    }

    if (!v6)
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:sel_registerForTraitTokenChanges_withHandler_ object:a1 file:@"_UITraitChangeRegistry.mm" lineNumber:110 description:@"Must pass a non-nil trait change handler to register"];
    }

    v8 = objc_alloc_init(_UITraitRegistration);
    v10 = v8;
    if (v8)
    {
      objc_setProperty_nonatomic_copy(v8, v9, v6, 16);
    }

    [(_UITraitChangeRegistry *)a1 _addRegistration:v10 forTraitTokens:v5];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (_UITraitRegistration)registerForTraitTokenChanges:(void *)a3 withTarget:(const char *)a4 action:(int)a5 targetIsSender:
{
  v9 = a2;
  v10 = a3;
  if (a1)
  {
    if (dyld_program_sdk_at_least())
    {
      if (![v9 count])
      {
        v11 = [MEMORY[0x1E696AAA8] currentHandler];
        [v11 handleFailureInMethod:sel_registerForTraitTokenChanges_withTarget_action_targetIsSender_ object:a1 file:@"_UITraitChangeRegistry.mm" lineNumber:118 description:@"Must pass one or more traits to register for"];
      }
    }

    else if (![v9 count])
    {
      v18 = *(__UILogGetCategoryCachedImpl("Assert", &[_UITraitChangeRegistry registerForTraitTokenChanges:withTarget:action:targetIsSender:]::__s_category) + 8);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19[0] = 0;
        _os_log_impl(&dword_188A29000, v18, OS_LOG_TYPE_ERROR, "Must pass one or more traits to register for", v19, 2u);
      }
    }

    if (v10)
    {
      if (a4)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v16 = [MEMORY[0x1E696AAA8] currentHandler];
      [v16 handleFailureInMethod:sel_registerForTraitTokenChanges_withTarget_action_targetIsSender_ object:a1 file:@"_UITraitChangeRegistry.mm" lineNumber:119 description:@"Must pass a non-nil target to register for trait changes"];

      if (a4)
      {
        goto LABEL_8;
      }
    }

    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:sel_registerForTraitTokenChanges_withTarget_action_targetIsSender_ object:a1 file:@"_UITraitChangeRegistry.mm" lineNumber:120 description:@"Must pass a nonnull action selector to register for trait changes"];

LABEL_8:
    v12 = objc_alloc_init(_UITraitRegistration);
    v13 = v12;
    if (a5)
    {
      if (v12)
      {
        v12->_targetIsSender = 1;
LABEL_13:
        if (a4)
        {
          v14 = a4;
        }

        else
        {
          v14 = 0;
        }

        v13->_action = v14;
      }
    }

    else if (v12)
    {
      objc_storeWeak(&v12->_target, v10);
      goto LABEL_13;
    }

    [(_UITraitChangeRegistry *)a1 _addRegistration:v13 forTraitTokens:v9];
    goto LABEL_18;
  }

  v13 = 0;
LABEL_18:

  return v13;
}

- (void)unregisterForTraitChanges:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (!v3)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      [v6 handleFailureInMethod:sel_unregisterForTraitChanges_ object:a1 file:@"_UITraitChangeRegistry.mm" lineNumber:133 description:@"Must pass a non-nil registration to unregister"];
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    v12 = 0u;
    v13 = 0u;
    v11 = 0u;
    v5 = *(a1 + 8);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __52___UITraitChangeRegistry_unregisterForTraitChanges___block_invoke;
    v8[3] = &unk_1E710E1D0;
    v9 = v4;
    v10 = &v11;
    [v5 enumerateKeysAndObjectsUsingBlock:v8];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __52___UITraitChangeRegistry_unregisterForTraitChanges___block_invoke_2;
    v7[3] = &unk_1E710E1F8;
    v7[4] = a1;
    _UIInlinePointerSetEnumerate(&v11, v7);
    if (v12)
    {
    }
  }
}

- (void)registerAuxiliaryChildEnvironmentForTraitInvalidations:(uint64_t)a1
{
  v10 = a2;
  if (a1)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = NSStringFromSelector(sel__invalidateAuxiliaryChildTraits);
      [v6 handleFailureInMethod:sel_registerAuxiliaryChildEnvironmentForTraitInvalidations_ object:a1 file:@"_UITraitChangeRegistry.mm" lineNumber:154 description:{@"Child must implement -%@ to handle trait invalidations: %@", v7, v10}];
    }

    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      v9 = NSStringFromSelector(sel__updateAuxiliaryChildTraitsIfNeeded);
      [v8 handleFailureInMethod:sel_registerAuxiliaryChildEnvironmentForTraitInvalidations_ object:a1 file:@"_UITraitChangeRegistry.mm" lineNumber:156 description:{@"Child must implement -%@ to handle trait updates: %@", v9, v10}];
    }

    v3 = *(a1 + 16);
    if (!v3)
    {
      v4 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:517 capacity:1];
      v5 = *(a1 + 16);
      *(a1 + 16) = v4;

      v3 = *(a1 + 16);
    }

    [v3 addObject:v10];
  }
}

- (void)unregisterAuxiliaryChildEnvironmentForTraitInvalidations:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    [*(a1 + 16) removeObject:v3];
  }
}

- (void)traitsDidChange:(void *)a3 forTraitEnvironment:(void *)a4 withPreviousTraitCollection:
{
  v53 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!a1)
  {
    goto LABEL_26;
  }

  if (a2)
  {
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_28:
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:sel_traitsDidChange_forTraitEnvironment_withPreviousTraitCollection_ object:a1 file:@"_UITraitChangeRegistry.mm" lineNumber:187 description:{@"Invalid parameter not satisfying: %@", @"traitEnvironment != nil"}];

    if (v8)
    {
      goto LABEL_5;
    }

LABEL_29:
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:sel_traitsDidChange_forTraitEnvironment_withPreviousTraitCollection_ object:a1 file:@"_UITraitChangeRegistry.mm" lineNumber:188 description:{@"Invalid parameter not satisfying: %@", @"previousTraitCollection != nil"}];

    goto LABEL_5;
  }

  v20 = [MEMORY[0x1E696AAA8] currentHandler];
  [v20 handleFailureInMethod:sel_traitsDidChange_forTraitEnvironment_withPreviousTraitCollection_ object:a1 file:@"_UITraitChangeRegistry.mm" lineNumber:186 description:{@"Invalid parameter not satisfying: %@", @"traitTokens != NULL"}];

  if (!v7)
  {
    goto LABEL_28;
  }

LABEL_4:
  if (!v8)
  {
    goto LABEL_29;
  }

LABEL_5:
  if (_UITraitTokenSetCount(a2) && ([*(a1 + 8) count] || objc_msgSend(*(a1 + 16), "count") || *(a1 + 48)))
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __90___UITraitChangeRegistry_traitsDidChange_forTraitEnvironment_withPreviousTraitCollection___block_invoke;
    v38[3] = &unk_1E710E220;
    v38[4] = a1;
    v38[5] = &v39;
    _UITraitTokenSetEnumerate(a2, v38);
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    if (*(a1 + 48))
    {
      v9 = *(a1 + 40);
      if (v9)
      {
        do
        {
          if (_UITraitTokenSetIntersectsSet((v9 + 4), a2))
          {
            __UIInlinePointerSetInsertElement(&v30, v9[3], 0);
          }

          v9 = *v9;
        }

        while (v9);
        v10 = v30;
        if (v30)
        {
          v11 = v7;
          v12 = v8;
          if (_UIShouldLogTrackedState())
          {
            v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v10];
          }

          else
          {
            v13 = 0;
          }

          v47[0] = MEMORY[0x1E69E9820];
          v47[1] = 3221225472;
          v47[2] = __108___UITraitChangeRegistry__performTrackedTraitInvalidations_forTraitEnvironment_withPreviousTraitCollection___block_invoke;
          v47[3] = &unk_1E710E248;
          v14 = v11;
          v48 = v14;
          v15 = v13;
          v49 = v15;
          _UIInlinePointerSetEnumerate(&v30, v47);
          if (v15)
          {
            v29 = [v14 traitCollection];
            v26 = *(__UILogGetCategoryCachedImpl("TraitCollectionChange", &_MergedGlobals_1168) + 8);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              v28 = [v15 componentsJoinedByString:{@", "}];
              v27 = [UITraitCollection _descriptionForChangeFromTraitCollection:v12 toTraitCollection:v29];
              *buf = 138413314;
              *&buf[4] = v14;
              *&buf[12] = 2112;
              *&buf[14] = v28;
              *&buf[22] = 2112;
              v51 = v27;
              *v52 = 2112;
              *&v52[2] = v12;
              *&v52[10] = 2112;
              *&v52[12] = v29;
              _os_log_impl(&dword_188A29000, v26, OS_LOG_TYPE_ERROR, "Traits with tracked usage changed for %@\n\t► performed invalidation selectors: [ %@ ]\n\t► trait changes: %@\n\t► previous: %@\n\t► current: %@", buf, 0x34u);
            }
          }
        }
      }
    }

    if (v39)
    {
      v16 = v7;
      v17 = v8;
      if (_UIShouldLogTraitRegistryChange())
      {
        v23 = [v16 traitCollection];
        v24 = *(__UILogGetCategoryCachedImpl("TraitCollectionChange", &qword_1ED49EF98) + 8);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v25 = [UITraitCollection _descriptionForChangeFromTraitCollection:v17 toTraitCollection:v23];
          *buf = 138413058;
          *&buf[4] = v16;
          *&buf[12] = 2112;
          *&buf[14] = v25;
          *&buf[22] = 2112;
          v51 = v17;
          *v52 = 2112;
          *&v52[2] = v23;
          _os_log_impl(&dword_188A29000, v24, OS_LOG_TYPE_ERROR, "Traits changed for %@\n\t► trait changes: %@\n\t► previous: %@\n\t► current: %@", buf, 0x2Au);
        }
      }

      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __103___UITraitChangeRegistry__performTraitChangeCallbacks_forTraitEnvironment_withPreviousTraitCollection___block_invoke;
      v51 = &unk_1E710E248;
      v18 = v16;
      *v52 = v18;
      v19 = v17;
      *&v52[8] = v19;
      _UIInlinePointerSetEnumerate(&v39, buf);
    }

    [(_UITraitChangeRegistry *)a1 invalidateAuxiliaryChildren];
    if (v31)
    {
    }

    _UIInlinePointerSetEnumerate(&v39, &__block_literal_global_340);
    if (v40)
    {
    }
  }

LABEL_26:
}

@end