@interface _UIContextBinder
+ (id)createContextForBindable:(id)a3 withSubstrate:(id)a4;
- (BOOL)bindableEnrolled:(id)a3;
- (BOOL)bindableIsTopmostAttached:(id)a3;
- (BOOL)permitContextCreationForBindable:(id)a3;
- (_UIContextBinder)initWithSubstrate:(id)a3;
- (_UIContextBinderContextCreationPolicyHolding)contextCreationPolicyHolder;
- (id)_attachedBindablePointersAsCopy:(BOOL)a3;
- (id)_contextForBindable:(id)a3;
- (id)_enrolledBindablePointersAsCopy:(BOOL)a3;
- (void)_notifyForBindableEnrolled:(id)a3;
- (void)_notifyForBindableExpelled:(id)a3;
- (void)addObserver:(id)a3;
- (void)attachBindable:(id)a3;
- (void)createContextsWithTest:(id)a3 creationAction:(id)a4;
- (void)detachBindable:(id)a3;
- (void)enrollBindable:(id)a3;
- (void)expellBindable:(id)a3;
- (void)purgeContextsWithPurgeAction:(id)a3 afterPurgeAction:(id)a4;
- (void)recreateContextForBindable:(id)a3;
- (void)removeObserver:(id)a3;
- (void)setContextManagementPolicy:(int64_t)a3;
- (void)updateBindable:(id)a3;
- (void)updateBindableOrderWithTest:(id)a3 force:(BOOL)a4;
- (void)zombifyBindable:(id)a3;
@end

@implementation _UIContextBinder

- (_UIContextBinder)initWithSubstrate:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = _UIContextBinder;
  v6 = [(_UIContextBinder *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_substrate, a3);
    v8 = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
    enrolledBindables = v7->_enrolledBindables;
    v7->_enrolledBindables = v8;

    v10 = [MEMORY[0x1E696AE08] pointerArrayWithOptions:2];
    enrolledUnsafeUnretainedBindables = v7->_enrolledUnsafeUnretainedBindables;
    v7->_enrolledUnsafeUnretainedBindables = v10;

    v12 = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
    attachedBindables = v7->_attachedBindables;
    v7->_attachedBindables = v12;

    v14 = objc_opt_new();
    contexts = v7->_contexts;
    v7->_contexts = v14;
  }

  return v7;
}

- (void)enrollBindable:(id)a3
{
  v4 = a3;
  v5 = [v4 _contextBinder];
  v6 = v5;
  if (v5 != self)
  {
    [(_UIContextBinder *)v5 expellBindable:v4];
    [(NSPointerArray *)self->_enrolledBindables addPointer:v4];
    [(NSPointerArray *)self->_enrolledUnsafeUnretainedBindables addPointer:v4];
    [v4 _setContextBinder:self];
    if (v4)
    {
      [v4 _bindingDescription];
      if (v10)
      {
        v7 = self;
        v8 = v4;
        if ([(_UIContextBinder *)v7 permitContextCreationForBindable:v8])
        {
          v9 = [(_UIContextBinder *)v7 _contextForBindable:v8];
          [(NSMutableOrderedSet *)v7->_contexts removeObject:v9];
          [(NSMutableOrderedSet *)v7->_contexts addObject:v9];
        }
      }
    }

    [(_UIContextBinder *)self _notifyForBindableEnrolled:v4];
  }
}

- (void)expellBindable:(id)a3
{
  v5 = a3;
  v6 = [v5 _contextBinder];

  if (v6 != self)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"_UIContextBinder.m" lineNumber:136 description:@"Cannot expell bindable from a binder which doesn't own it"];
  }

  [(_UIContextBinder *)self detachBindable:v5];
  v13 = v5;
  if (objc_opt_respondsToSelector())
  {
    v7 = objc_opt_respondsToSelector();

    if (v7 & 1) != 0 && (objc_opt_respondsToSelector())
    {
      [v13 expelBindable];
    }
  }

  else
  {
  }

  __UIContextBinderDisposeContextForBindable(self, v13, 1);
  enrolledBindables = self->_enrolledBindables;
  if ([(NSPointerArray *)enrolledBindables count])
  {
    v9 = 0;
    while ([(NSPointerArray *)enrolledBindables pointerAtIndex:v9]!= v13)
    {
      if (++v9 >= [(NSPointerArray *)enrolledBindables count])
      {
        goto LABEL_15;
      }
    }

    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSPointerArray *)enrolledBindables removePointerAtIndex:v9];
      [(NSPointerArray *)enrolledBindables compact];
    }
  }

LABEL_15:
  enrolledUnsafeUnretainedBindables = self->_enrolledUnsafeUnretainedBindables;
  if ([(NSPointerArray *)enrolledUnsafeUnretainedBindables count])
  {
    v11 = 0;
    while ([(NSPointerArray *)enrolledUnsafeUnretainedBindables pointerAtIndex:v11]!= v13)
    {
      if (++v11 >= [(NSPointerArray *)enrolledUnsafeUnretainedBindables count])
      {
        goto LABEL_22;
      }
    }

    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSPointerArray *)enrolledUnsafeUnretainedBindables removePointerAtIndex:v11];
      [(NSPointerArray *)enrolledUnsafeUnretainedBindables compact];
    }
  }

LABEL_22:
  [v13 _setContextBinder:0];
  [(_UIContextBinder *)self _notifyForBindableExpelled:v13];
}

- (void)zombifyBindable:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 _contextBinder];

  if (v6 != self)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"_UIContextBinder.m" lineNumber:153 description:@"Cannot zombify bindable from a binder which doesn't own it"];
  }

  v7 = v5;
  v8 = [v7 _boundContext];
  if (v7)
  {
    [v7 _bindingDescription];
  }

  if (v8)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v10 = *(__UILogGetCategoryCachedImpl("ContextCreation", __UIContextBinderZombifyContextForBindable___s_category) + 8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v10;
        v12 = [v8 contextId];
        *buf = 138412802;
        v14 = v8;
        v15 = 1024;
        v16 = v12;
        v17 = 2112;
        v18 = v7;
        _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_DEFAULT, "Zombifying CAContext: %@; contextId: 0x%X; bindable: %@", buf, 0x1Cu);
      }
    }

    [v8 setZombifyOnInvalidate:1];
    [v8 invalidate];
  }
}

- (void)attachBindable:(id)a3
{
  v5 = a3;
  v6 = [v5 _contextBinder];

  if (v6 != self)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"_UIContextBinder.m" lineNumber:158 description:@"Cannot attach bindable in a binder which doesn't own it"];
  }

  v7 = self;
  v8 = v5;
  attachedBindables = v7->_attachedBindables;
  if ([(NSPointerArray *)attachedBindables count])
  {
    v10 = 0;
    while ([(NSPointerArray *)attachedBindables pointerAtIndex:v10]!= v8)
    {
      if (++v10 >= [(NSPointerArray *)attachedBindables count])
      {
        goto LABEL_10;
      }
    }

    if (v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSPointerArray *)attachedBindables removePointerAtIndex:v10];
      [(NSPointerArray *)attachedBindables compact];
    }
  }

LABEL_10:
  [(NSPointerArray *)v7->_attachedBindables insertPointer:v8 atIndex:0];

  __UIContextBinderDetachContext(v7, v8);
  v11 = v7;
  v14 = v8;
  if ([v11 permitContextCreationForBindable:?])
  {
    v12 = [v11 _contextForBindable:v14];
    [v11[4] removeObject:v12];
    [v11[4] addObject:v12];

    if (v12)
    {
      __UIContextBinderAttachContext(v11, v14);
    }
  }

  else
  {
  }
}

- (void)detachBindable:(id)a3
{
  v5 = a3;
  v6 = [v5 _contextBinder];

  if (v6 != self)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"_UIContextBinder.m" lineNumber:167 description:@"Cannot detach bindable in a binder which doesn't own it"];
  }

  v10 = v5;
  attachedBindables = self->_attachedBindables;
  if ([(NSPointerArray *)attachedBindables count])
  {
    v8 = 0;
    while ([(NSPointerArray *)attachedBindables pointerAtIndex:v8]!= v10)
    {
      if (++v8 >= [(NSPointerArray *)attachedBindables count])
      {
        goto LABEL_10;
      }
    }

    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSPointerArray *)attachedBindables removePointerAtIndex:v8];
      [(NSPointerArray *)attachedBindables compact];
    }
  }

LABEL_10:

  __UIContextBinderDetachContext(self, v10);
}

- (void)updateBindable:(id)a3
{
  v5 = a3;
  v6 = [v5 _contextBinder];

  if (v6 != self)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"_UIContextBinder.m" lineNumber:173 description:@"Cannot update bindable in a binder which doesn't own it"];
  }

  v10 = v5;
  attachedBindables = self->_attachedBindables;
  if ([(NSPointerArray *)attachedBindables count])
  {
    v8 = 0;
    while ([(NSPointerArray *)attachedBindables pointerAtIndex:v8]!= v10)
    {
      if (++v8 >= [(NSPointerArray *)attachedBindables count])
      {
        goto LABEL_7;
      }
    }

    __UIContextBinderAttachContext(self, v10);
  }

  else
  {
LABEL_7:
  }
}

- (void)setContextManagementPolicy:(int64_t)a3
{
  self->_contextManagementPolicy = a3;
  if (a3 == 1)
  {

    [(_UIContextBinder *)self updateBindableOrderWithTest:0 force:1];
  }

  else if (!a3)
  {
    [(_UIContextBinder *)self purgeContextsWithPurgeAction:?];

    [(_UIContextBinder *)self createContextsWithTest:0 creationAction:0];
  }
}

- (id)_attachedBindablePointersAsCopy:(BOOL)a3
{
  attachedBindables = self->_attachedBindables;
  if (a3)
  {
    v4 = [(NSPointerArray *)attachedBindables copy];
  }

  else
  {
    v4 = attachedBindables;
  }

  return v4;
}

- (id)_enrolledBindablePointersAsCopy:(BOOL)a3
{
  enrolledBindables = self->_enrolledBindables;
  if (a3)
  {
    v4 = [(NSPointerArray *)enrolledBindables copy];
  }

  else
  {
    v4 = enrolledBindables;
  }

  return v4;
}

- (BOOL)bindableEnrolled:(id)a3
{
  v4 = a3;
  enrolledBindables = self->_enrolledBindables;
  if ([(NSPointerArray *)enrolledBindables count])
  {
    v6 = 0;
    do
    {
      v7 = [(NSPointerArray *)enrolledBindables pointerAtIndex:v6];
      v8 = v7 == v4;
      if (v7 == v4)
      {
        break;
      }

      ++v6;
    }

    while (v6 < [(NSPointerArray *)enrolledBindables count]);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)bindableIsTopmostAttached:(id)a3
{
  v4 = a3;
  attachedBindables = self->_attachedBindables;
  if ([(NSPointerArray *)attachedBindables count])
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = [(NSPointerArray *)attachedBindables pointerAtIndex:v6];
      if (v8)
      {
        if (v8 == v4)
        {
          v9 = v7 == 0;
          goto LABEL_9;
        }

        ++v7;
      }

      ++v6;
    }

    while (v6 < [(NSPointerArray *)attachedBindables count]);
  }

  v9 = 0;
LABEL_9:

  return v9;
}

- (void)purgeContextsWithPurgeAction:(id)a3 afterPurgeAction:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (![(_UIContextBinder *)self contextManagementPolicy])
  {
    v16 = v7;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [(_UIContextBinder *)self enrolledBindables];
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          attachedBindables = self->_attachedBindables;
          if ([(NSPointerArray *)attachedBindables count])
          {
            v15 = 0;
            while ([(NSPointerArray *)attachedBindables pointerAtIndex:v15]!= v13)
            {
              if (++v15 >= [(NSPointerArray *)attachedBindables count])
              {
                goto LABEL_11;
              }
            }

            __UIContextBinderDetachContext(self, v13);
          }

          else
          {
LABEL_11:
          }

          __UIContextBinderDisposeContextForBindable(self, v13, 0);
          if (v6)
          {
            v6[2](v6, v13);
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }

    v7 = v16;
    if (v16)
    {
      v16[2](v16);
    }
  }
}

- (void)createContextsWithTest:(id)a3 creationAction:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a4;
  [(_UIContextBinder *)self updateBindableOrderWithTest:a3];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [(_UIContextBinder *)self enrolledBindables];
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * v11);
        v13 = self;
        v14 = v12;
        if ([(_UIContextBinder *)v13 permitContextCreationForBindable:v14])
        {
          v15 = [(_UIContextBinder *)v13 _contextForBindable:v14];
          [(NSMutableOrderedSet *)self->_contexts removeObject:v15];
          [(NSMutableOrderedSet *)self->_contexts addObject:v15];
        }

        if (v6)
        {
          v6[2](v6, v14);
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }
}

- (void)updateBindableOrderWithTest:(id)a3 force:(BOOL)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (a4 || [(_UIContextBinder *)self contextManagementPolicy]!= 1)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = [(_UIContextBinder *)self attachedBindables];
    v8 = [v7 reverseObjectEnumerator];

    obj = v8;
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (!v9)
    {
      goto LABEL_22;
    }

    v10 = v9;
    v11 = *v21;
    while (1)
    {
      v12 = 0;
      do
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v20 + 1) + 8 * v12);
        if (!v6 || v6[2](v6, *(*(&v20 + 1) + 8 * v12)))
        {
          [MEMORY[0x1E6979518] begin];
          v14 = self;
          v15 = v13;
          if ([(_UIContextBinder *)v14 permitContextCreationForBindable:v15])
          {
            v16 = [(_UIContextBinder *)v14 _contextForBindable:v15];
            [(NSMutableOrderedSet *)self->_contexts removeObject:v16];
            [(NSMutableOrderedSet *)self->_contexts addObject:v16];

            if (v16)
            {
              __UIContextBinderAttachContext(v14, v15);
              v14 = [v15 _boundContext];
              if (v15)
              {
                [v15 _bindingDescription];
                if (v19)
                {
                  [(_UIContextBinder *)v14 orderAbove:0];

                  [MEMORY[0x1E6979518] commit];
                  [MEMORY[0x1E6979518] synchronize];
                  goto LABEL_18;
                }
              }

              else
              {
                v19 = 0;
              }

LABEL_16:
            }

            [MEMORY[0x1E6979518] commit];
            goto LABEL_18;
          }

          goto LABEL_16;
        }

LABEL_18:
        ++v12;
      }

      while (v10 != v12);
      v17 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
      v10 = v17;
      if (!v17)
      {
LABEL_22:

        break;
      }
    }
  }
}

- (void)recreateContextForBindable:(id)a3
{
  v9 = a3;
  v4 = [(_UIContextBinder *)self bindableEnrolled:v9];
  v5 = v9;
  if (v4)
  {
    v6 = v9;
    attachedBindables = self->_attachedBindables;
    if ([(NSPointerArray *)attachedBindables count])
    {
      v8 = 0;
      while ([(NSPointerArray *)attachedBindables pointerAtIndex:v8]!= v6)
      {
        if (++v8 >= [(NSPointerArray *)attachedBindables count])
        {
          goto LABEL_6;
        }
      }

      __UIContextBinderDetachContext(self, v6);
      __UIContextBinderDisposeContextForBindable(self, v6, 1);
      [(_UIContextBinder *)self updateBindableOrderWithTest:0 force:1];
    }

    else
    {
LABEL_6:
    }

    v5 = v9;
  }
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  observers = self->_observers;
  v8 = v4;
  if (!observers)
  {
    v6 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = v6;

    v4 = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:v4];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  observers = self->_observers;
  if (observers)
  {
    v8 = v4;
    [(NSHashTable *)observers removeObject:v4];
    v6 = [(NSHashTable *)self->_observers count];
    v4 = v8;
    if (!v6)
    {
      v7 = self->_observers;
      self->_observers = 0;

      v4 = v8;
    }
  }
}

- (void)_notifyForBindableExpelled:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_observers;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) contextBinderDidExpellBindable:{v4, v10}];
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_notifyForBindableEnrolled:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_observers;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) contextBinderDidEnrollBindable:{v4, v10}];
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (BOOL)permitContextCreationForBindable:(id)a3
{
  v4 = a3;
  [(NSPointerArray *)self->_enrolledBindables compact];
  if ([(NSPointerArray *)self->_enrolledBindables count])
  {
    if ([(_UIContextBinder *)self contextManagementPolicy]== 1)
    {
      v5 = 1;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_contextCreationPolicyHolder);
      if (v4)
      {
        [v4 _bindingDescription];
      }

      else
      {
        memset(v8, 0, sizeof(v8));
      }

      v5 = [WeakRetained _permitContextCreationForBindingDescription:v8];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_contextForBindable:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 _boundContext];
  if (!v5)
  {
    v6 = objc_opt_class();
    v7 = [(_UIContextBinder *)self substrate];
    v5 = [v6 createContextForBindable:v4 withSubstrate:v7];

    [v4 _setBoundContext:v5];
    if (os_variant_has_internal_diagnostics())
    {
      v9 = *(__UILogGetCategoryCachedImpl("ContextCreation", &_contextForBindable____s_category) + 8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v9;
        v11 = 138412802;
        v12 = v5;
        v13 = 1024;
        v14 = [v5 contextId];
        v15 = 2112;
        v16 = v4;
        _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_DEFAULT, "Created CAContext: %@; contextId: 0x%X; bindable: %@", &v11, 0x1Cu);
      }
    }
  }

  return v5;
}

+ (id)createContextForBindable:(id)a3 withSubstrate:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    [v5 _bindingDescription];
  }

  v7 = objc_opt_new();
  v8 = [UIScreen _screenWithFBSDisplayIdentity:0];
  v9 = v8;
  if (v8)
  {
    v10 = MEMORY[0x1E696AD98];
    v11 = [v8 displayIdentity];
    v12 = [v10 numberWithUnsignedInt:{objc_msgSend(v11, "displayID")}];
    [v7 setObject:v12 forKey:*MEMORY[0x1E6979698]];
  }

  v13 = [MEMORY[0x1E696AD98] numberWithBool:0];
  [v7 setObject:v13 forKey:*MEMORY[0x1E69796A8]];

  v14 = [v5 _contextOptionsWithInitialOptions:v7];
  v15 = [v14 mutableCopy];

  v16 = __UIKIT_IS_REQUESTING_A_CACONTEXT_FROM_COREANIMATION(0, v15);
  [v16 setCommitPriority:100];
  if (v5)
  {
    [v5 _bindableLevel];
    *&v17 = v17;
    [v16 setLevel:v17];
    v18 = [v5 _bindingLayer];
    [v16 setLayer:v18];
  }

  return v16;
}

- (_UIContextBinderContextCreationPolicyHolding)contextCreationPolicyHolder
{
  WeakRetained = objc_loadWeakRetained(&self->_contextCreationPolicyHolder);

  return WeakRetained;
}

@end