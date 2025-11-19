@interface HDSPXPCActivity
- (BOOL)deferIfNecessary;
- (HDSPXPCActivity)initWithEventName:(id)a3 options:(unint64_t)a4 criteria:(id)a5 activity:(id)a6;
@end

@implementation HDSPXPCActivity

- (HDSPXPCActivity)initWithEventName:(id)a3 options:(unint64_t)a4 criteria:(id)a5 activity:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v18.receiver = self;
  v18.super_class = HDSPXPCActivity;
  v13 = [(HDSPXPCActivity *)&v18 init];
  if (v13)
  {
    v14 = [v10 copy];
    name = v13->_name;
    v13->_name = v14;

    objc_storeStrong(&v13->_criteria, a5);
    objc_storeStrong(&v13->_activity, a6);
    v13->_options = a4;
    v16 = v13;
  }

  return v13;
}

- (BOOL)deferIfNecessary
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(HDSPXPCActivity *)self activity];

  if (v3)
  {
    v4 = [(HDSPXPCActivity *)self activity];
    should_defer = xpc_activity_should_defer(v4);

    if (should_defer)
    {
      v6 = [(HDSPXPCActivity *)self activity];
      LOBYTE(v3) = xpc_activity_set_state(v6, 3);

      v7 = HKSPLogForCategory();
      v8 = v7;
      if (v3)
      {
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
LABEL_9:

          goto LABEL_10;
        }

        v9 = [(HDSPXPCActivity *)self name];
        v12 = 138543362;
        v13 = v9;
        _os_log_impl(&dword_269B11000, v8, OS_LOG_TYPE_DEFAULT, "XPC activity was deferred (%{public}@)", &v12, 0xCu);
      }

      else
      {
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_9;
        }

        v9 = [(HDSPXPCActivity *)self name];
        v12 = 138543362;
        v13 = v9;
        _os_log_error_impl(&dword_269B11000, v8, OS_LOG_TYPE_ERROR, "Failed to defer XPC activity (%{public}@)", &v12, 0xCu);
      }

      goto LABEL_9;
    }

    LOBYTE(v3) = 0;
  }

LABEL_10:
  v10 = *MEMORY[0x277D85DE8];
  return v3;
}

@end