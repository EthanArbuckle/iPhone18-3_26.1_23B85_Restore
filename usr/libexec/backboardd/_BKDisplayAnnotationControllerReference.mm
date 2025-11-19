@interface _BKDisplayAnnotationControllerReference
- (_BKDisplayAnnotationControllerReference)initWithController:(id)a3;
- (void)dealloc;
@end

@implementation _BKDisplayAnnotationControllerReference

- (void)dealloc
{
  controller = self->_controller;
  if (controller)
  {
    os_unfair_lock_lock(&controller->_lock);
    lock_externalReferenceCount = controller->_lock_externalReferenceCount;
    controller->_lock_externalReferenceCount = lock_externalReferenceCount - 1;
    if (lock_externalReferenceCount <= 0)
    {
      v13 = [NSString stringWithFormat:@"Invalid condition not satisfying: %@", @"_lock_externalReferenceCount >= 0"];
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v14 = NSStringFromSelector("removeExternalReference");
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        *buf = 138544642;
        v19 = v14;
        v20 = 2114;
        v21 = v16;
        v22 = 2048;
        v23 = controller;
        v24 = 2114;
        v25 = @"BKDisplayAnnotationController.m";
        v26 = 1024;
        v27 = 282;
        v28 = 2114;
        v29 = v13;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v13 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x10003FBA0);
    }

    if (lock_externalReferenceCount == 1)
    {
      displayController = controller->_displayController;
      v6 = controller;
      if (displayController)
      {
        v7 = sub_1000525A0();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v19 = v6;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "removing last reference to %{public}@", buf, 0xCu);
        }

        os_unfair_lock_lock(&displayController->_lock);
        v8 = [(BKDisplayAnnotationController *)v6 display];
        v9 = [v8 uniqueId];
        v10 = [v9 length];
        v11 = BKSDisplayUUIDMainKey;
        if (v10)
        {
          v11 = v9;
        }

        v12 = v11;

        [(NSMutableDictionary *)displayController->_lock_displayToAnnotationContext removeObjectForKey:v12];
        os_unfair_lock_unlock(&displayController->_lock);
      }

      [(BKDisplayAnnotationController *)v6 _lock_invalidate];
    }

    os_unfair_lock_unlock(&controller->_lock);
  }

  v17.receiver = self;
  v17.super_class = _BKDisplayAnnotationControllerReference;
  [(_BKDisplayAnnotationControllerReference *)&v17 dealloc];
}

- (_BKDisplayAnnotationControllerReference)initWithController:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _BKDisplayAnnotationControllerReference;
  v6 = [(_BKDisplayAnnotationControllerReference *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_controller, a3);
    if (v5)
    {
      os_unfair_lock_lock(v5 + 8);
      ++*&v5[10]._os_unfair_lock_opaque;
      os_unfair_lock_unlock(v5 + 8);
    }
  }

  return v7;
}

@end