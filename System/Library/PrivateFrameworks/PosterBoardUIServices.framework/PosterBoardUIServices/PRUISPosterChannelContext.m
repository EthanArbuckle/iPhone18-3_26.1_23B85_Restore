@interface PRUISPosterChannelContext
+ (PRUISPosterChannelContext)contextWithRole:(id)a3 userInfo:(id)a4;
+ (id)userInfoPersistenceClasses;
- (BOOL)_validateUserInfo:(id)a3 badKeys:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (PRUISPosterChannelContext)initWithCoder:(id)a3;
- (PRUISPosterChannelContext)initWithRole:(id)a3 userInfo:(id)a4;
- (id)contextByUpdatingUserInfo:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PRUISPosterChannelContext

- (PRUISPosterChannelContext)initWithRole:(id)a3 userInfo:(id)a4
{
  v26[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if ((PFPosterRoleIsValid() & 1) == 0)
  {
    [PRUISPosterChannelContext initWithRole:a2 userInfo:self];
  }

  v24.receiver = self;
  v24.super_class = PRUISPosterChannelContext;
  v10 = [(PRUISPosterChannelContext *)&v24 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_role, a3);
    if (v9)
    {
      v12 = v9;
    }

    else
    {
      v12 = MEMORY[0x1E695E0F8];
    }

    objc_storeStrong(&v11->_userInfo, v12);
    userInfo = v11->_userInfo;
    v23 = 0;
    v14 = [(PRUISPosterChannelContext *)v11 _validateUserInfo:userInfo badKeys:&v23];
    v15 = v23;
    if (!v14)
    {
      v17 = MEMORY[0x1E695DF30];
      v18 = *MEMORY[0x1E695D940];
      if (v15)
      {
        v19 = v15;
      }

      else
      {
        v19 = MEMORY[0x1E695E0F0];
      }

      v25 = @"badKeys";
      v26[0] = v19;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
      v21 = [v17 exceptionWithName:v18 reason:@"provided userInfo was not using Foundation classes for persistence." userInfo:v20];
      v22 = v21;

      objc_exception_throw(v21);
    }
  }

  return v11;
}

+ (PRUISPosterChannelContext)contextWithRole:(id)a3 userInfo:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithRole:v7 userInfo:v6];

  return v8;
}

- (id)contextByUpdatingUserInfo:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithRole:self->_role userInfo:v4];

  return v5;
}

- (BOOL)_validateUserInfo:(id)a3 badKeys:(id *)a4
{
  v5 = a3;
  v6 = objc_opt_new();
  v7 = [objc_opt_class() userInfoPersistenceClasses];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __55__PRUISPosterChannelContext__validateUserInfo_badKeys___block_invoke;
  v15 = &unk_1E83A87B0;
  v8 = v6;
  v16 = v8;
  v17 = v7;
  v9 = v7;
  [v5 enumerateKeysAndObjectsUsingBlock:&v12];

  if (a4)
  {
    *a4 = [v8 copy];
  }

  v10 = [v8 count] == 0;

  return v10;
}

void __55__PRUISPosterChannelContext__validateUserInfo_badKeys___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v14 = *(a1 + 32);
    v9 = [v5 description];
    [v14 addObject:v9];
LABEL_14:

    goto LABEL_15;
  }

  if (([*(a1 + 40) containsObject:objc_opt_class()] & 1) == 0)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = *(a1 + 40);
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
LABEL_5:
      v13 = 0;
      while (1)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        if (objc_opt_isKindOfClass())
        {
          goto LABEL_14;
        }

        if (v11 == ++v13)
        {
          v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
          if (v11)
          {
            goto LABEL_5;
          }

          break;
        }
      }
    }

    if ((_NSIsNSCFConstantString() & 1) == 0)
    {
      [*(a1 + 32) addObject:{v5, v15}];
    }
  }

LABEL_15:
}

- (void)encodeWithCoder:(id)a3
{
  role = self->_role;
  v5 = a3;
  [v5 encodeObject:role forKey:@"_role"];
  [v5 encodeObject:self->_userInfo forKey:@"_userInfo"];
}

+ (id)userInfoPersistenceClasses
{
  v15 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v13 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  return [v15 setWithObjects:{v14, v13, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, objc_opt_class(), 0}];
}

- (PRUISPosterChannelContext)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_role"];
  v6 = [objc_opt_class() userInfoPersistenceClasses];
  v7 = [v4 decodeObjectOfClasses:v6 forKey:@"_userInfo"];

  v8 = [objc_opt_class() contextWithRole:v5 userInfo:v7];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
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

  v8 = v7;

  if (v8)
  {
    v9 = [v8 role];
    v10 = BSEqualObjects();

    if (v10)
    {
      v11 = [v8 userInfo];
      v12 = BSEqualObjects();
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = self == 0;
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [v3 appendString:self->_role];
  v5 = [v3 appendObject:self->_userInfo];
  v6 = [v3 hash];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@:%p, role: %@, userInfo: %@>", v5, self, self->_role, self->_userInfo];

  return v6;
}

- (void)initWithRole:(const char *)a1 userInfo:(uint64_t)a2 .cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"PFPosterRoleIsValid(role)"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"PRUISPosterChannelContext.m";
    v16 = 1024;
    v17 = 22;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1CAE63000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end