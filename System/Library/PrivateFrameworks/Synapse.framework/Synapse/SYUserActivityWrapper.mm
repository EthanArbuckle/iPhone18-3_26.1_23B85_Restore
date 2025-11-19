@interface SYUserActivityWrapper
- (SYUserActivityWrapper)initWithCoder:(id)a3;
- (SYUserActivityWrapper)initWithUserActivity:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SYUserActivityWrapper

- (SYUserActivityWrapper)initWithUserActivity:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SYUserActivityWrapper;
  v6 = [(SYUserActivityWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_userActivity, a3);
  }

  return v7;
}

- (SYUserActivityWrapper)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userActivityData"];

  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CC1EF0]) _initWithUserActivityData:v5];
    if (v6)
    {
      self = [(SYUserActivityWrapper *)self initWithUserActivity:v6];
      v7 = self;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  userActivity = self->_userActivity;
  v9 = 0;
  v6 = [(NSUserActivity *)userActivity _createUserActivityDataWithSaving:0 options:0 error:&v9];
  v7 = v9;
  if (!v6)
  {
    v8 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(SYUserActivityWrapper *)v7 encodeWithCoder:v8];
    }
  }

  [v4 encodeObject:v6 forKey:@"userActivityData"];
}

- (void)encodeWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_225901000, a2, OS_LOG_TYPE_ERROR, "Unable to serialize user activity, error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end