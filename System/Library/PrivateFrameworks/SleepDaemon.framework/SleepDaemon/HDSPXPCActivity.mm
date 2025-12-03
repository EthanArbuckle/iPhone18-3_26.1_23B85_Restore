@interface HDSPXPCActivity
- (BOOL)deferIfNecessary;
- (HDSPXPCActivity)initWithEventName:(id)name options:(unint64_t)options criteria:(id)criteria activity:(id)activity;
@end

@implementation HDSPXPCActivity

- (HDSPXPCActivity)initWithEventName:(id)name options:(unint64_t)options criteria:(id)criteria activity:(id)activity
{
  nameCopy = name;
  criteriaCopy = criteria;
  activityCopy = activity;
  v18.receiver = self;
  v18.super_class = HDSPXPCActivity;
  v13 = [(HDSPXPCActivity *)&v18 init];
  if (v13)
  {
    v14 = [nameCopy copy];
    name = v13->_name;
    v13->_name = v14;

    objc_storeStrong(&v13->_criteria, criteria);
    objc_storeStrong(&v13->_activity, activity);
    v13->_options = options;
    v16 = v13;
  }

  return v13;
}

- (BOOL)deferIfNecessary
{
  v14 = *MEMORY[0x277D85DE8];
  activity = [(HDSPXPCActivity *)self activity];

  if (activity)
  {
    activity2 = [(HDSPXPCActivity *)self activity];
    should_defer = xpc_activity_should_defer(activity2);

    if (should_defer)
    {
      activity3 = [(HDSPXPCActivity *)self activity];
      LOBYTE(activity) = xpc_activity_set_state(activity3, 3);

      v7 = HKSPLogForCategory();
      v8 = v7;
      if (activity)
      {
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
LABEL_9:

          goto LABEL_10;
        }

        name = [(HDSPXPCActivity *)self name];
        v12 = 138543362;
        v13 = name;
        _os_log_impl(&dword_269B11000, v8, OS_LOG_TYPE_DEFAULT, "XPC activity was deferred (%{public}@)", &v12, 0xCu);
      }

      else
      {
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_9;
        }

        name = [(HDSPXPCActivity *)self name];
        v12 = 138543362;
        v13 = name;
        _os_log_error_impl(&dword_269B11000, v8, OS_LOG_TYPE_ERROR, "Failed to defer XPC activity (%{public}@)", &v12, 0xCu);
      }

      goto LABEL_9;
    }

    LOBYTE(activity) = 0;
  }

LABEL_10:
  v10 = *MEMORY[0x277D85DE8];
  return activity;
}

@end