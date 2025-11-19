@interface RDXPCActivity
+ (void)initialize;
- (BOOL)deferIfNeeded;
- (RDXPCActivity)initWithName:(id)a3 criteria:(id)a4;
- (id)description;
- (void)dealloc;
- (void)markCompleted;
@end

@implementation RDXPCActivity

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    qword_10002B2A8 = os_log_create("com.apple.SensorKit", "RDXPCActivity");
  }
}

- (RDXPCActivity)initWithName:(id)a3 criteria:(id)a4
{
  v8.receiver = self;
  v8.super_class = RDXPCActivity;
  v6 = [(RDXPCActivity *)&v8 init];
  if (v6)
  {
    v6->_name = a3;
    v6->_criteria = a4;
  }

  return v6;
}

- (void)dealloc
{
  if (self)
  {
    objc_setProperty_nonatomic(self, a2, 0, 8);
    objc_setProperty_nonatomic(self, v3, 0, 16);
    objc_setProperty_nonatomic(self, v4, 0, 24);
  }

  v5.receiver = self;
  v5.super_class = RDXPCActivity;
  [(RDXPCActivity *)&v5 dealloc];
}

- (BOOL)deferIfNeeded
{
  should_defer = xpc_activity_should_defer(self->_xpcActivity);
  if (should_defer)
  {
    v4 = qword_10002B2A8;
    if (os_log_type_enabled(qword_10002B2A8, OS_LOG_TYPE_DEFAULT))
    {
      name = self->_name;
      v7 = 138543362;
      v8 = name;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Marking XPC Activity %{public}@ as DEFERRED", &v7, 0xCu);
    }

    sub_10000ABA4(self, 3);
  }

  return should_defer;
}

- (void)markCompleted
{
  v3 = qword_10002B2A8;
  if (os_log_type_enabled(qword_10002B2A8, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      name = self->_name;
    }

    else
    {
      name = 0;
    }

    v5 = 138543362;
    v6 = name;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Marking XPC Activity %{public}@ as DONE", &v5, 0xCu);
  }

  sub_10000ABA4(self, 5);
}

- (id)description
{
  v3 = xpc_copy_description(self->_criteria);
  v4 = [NSString stringWithFormat:@"%@: %@, criteria: %s", objc_opt_class(), self->_name, v3];
  free(v3);
  return v4;
}

@end