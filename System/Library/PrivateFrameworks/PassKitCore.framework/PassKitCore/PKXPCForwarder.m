@interface PKXPCForwarder
- (id)forwardingTargetForSelector:(SEL)a3;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)_initWithTarget:(uint64_t)a3 targetClass:;
- (void)forwardInvocation:(id)a3;
@end

@implementation PKXPCForwarder

- (void)_initWithTarget:(uint64_t)a3 targetClass:
{
  result = a2;
  v6 = result;
  if (!a1)
  {
    goto LABEL_5;
  }

  if (a3)
  {
    v8.receiver = a1;
    v8.super_class = PKXPCForwarder;
    v7 = objc_msgSendSuper2(&v8, sel_init);
    a1 = v7;
    if (v7)
    {
      *(v7 + 2) = 0;
      objc_storeWeak(v7 + 2, v6);
      a1[3] = a3;
    }

LABEL_5:

    return a1;
  }

  __break(1u);
  return result;
}

- (id)forwardingTargetForSelector:(SEL)a3
{
  os_unfair_lock_lock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_target);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v11.receiver = self;
  v11.super_class = PKXPCForwarder;
  v5 = [(PKXPCForwarder *)&v11 methodSignatureForSelector:?];
  if (!v5)
  {
    os_unfair_lock_lock(&self->_lock);
    WeakRetained = objc_loadWeakRetained(&self->_target);
    os_unfair_lock_unlock(&self->_lock);
    if (WeakRetained)
    {
      v7 = [WeakRetained methodSignatureForSelector:a3];
    }

    else
    {
      InstanceMethod = class_getInstanceMethod(self->_targetClass, a3);
      if (!InstanceMethod || (Description = method_getDescription(InstanceMethod)) == 0)
      {
        v5 = 0;
        goto LABEL_9;
      }

      v7 = [MEMORY[0x1E695DF68] signatureWithObjCTypes:Description->types];
    }

    v5 = v7;
LABEL_9:
  }

  return v5;
}

- (void)forwardInvocation:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_target);
  os_unfair_lock_unlock(&self->_lock);
  if (WeakRetained)
  {
    [v4 invokeWithTarget:WeakRetained];
  }

  else
  {
    v6 = PKLogFacilityTypeGetObject(5uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = NSStringFromClass(self->_targetClass);
      v8 = NSStringFromSelector([v4 selector]);
      v9 = 138543618;
      v10 = v7;
      v11 = 2112;
      v12 = v8;
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "PKXPCForwarder: dropping [%{public}@ %@].", &v9, 0x16u);
    }

    [v4 setTarget:0];
    [v4 invoke];
  }
}

@end