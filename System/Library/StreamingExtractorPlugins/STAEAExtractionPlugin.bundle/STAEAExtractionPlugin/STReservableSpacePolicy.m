@interface STReservableSpacePolicy
+ (id)processPolicyWithErrorPtr:(id *)a3;
+ (id)threadPolicyWithErrorPtr:(id *)a3;
+ (void)__setErrorForPtr:(id *)a3 code:(unint64_t)a4;
- (STReservableSpacePolicy)initWithPolicyType:(unint64_t)a3 errorPtr:(id *)a4;
- (void)dealloc;
- (void)invalidate;
@end

@implementation STReservableSpacePolicy

+ (id)threadPolicyWithErrorPtr:(id *)a3
{
  v3 = [[STReservableSpacePolicy alloc] initWithPolicyType:0 errorPtr:a3];

  return v3;
}

+ (id)processPolicyWithErrorPtr:(id *)a3
{
  v3 = [[STReservableSpacePolicy alloc] initWithPolicyType:1 errorPtr:a3];

  return v3;
}

- (STReservableSpacePolicy)initWithPolicyType:(unint64_t)a3 errorPtr:(id *)a4
{
  v15.receiver = self;
  v15.super_class = STReservableSpacePolicy;
  v6 = [(STReservableSpacePolicy *)&v15 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_17;
  }

  v6->_policyType = a3;
  if (a3 == 1)
  {
    v12 = getiopolicy_np(14, 0);
    if (v12 < 0)
    {
      v9 = objc_opt_class();
      v10 = a4;
      v11 = 1;
      goto LABEL_16;
    }

    if (v12 == 1)
    {
      v9 = objc_opt_class();
      v10 = a4;
      v11 = 5;
      goto LABEL_16;
    }

    if (setiopolicy_np(14, 0, 1))
    {
      v9 = objc_opt_class();
      v10 = a4;
      v11 = 3;
      goto LABEL_16;
    }

LABEL_17:
    v13 = v7;
    goto LABEL_18;
  }

  if (a3)
  {
    goto LABEL_17;
  }

  v8 = getiopolicy_np(14, 1);
  if (v8 < 0)
  {
    v9 = objc_opt_class();
    v10 = a4;
    v11 = 0;
    goto LABEL_16;
  }

  if (v8 != 1)
  {
    if (setiopolicy_np(14, 1, 1))
    {
      v9 = objc_opt_class();
      v10 = a4;
      v11 = 2;
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v9 = objc_opt_class();
  v10 = a4;
  v11 = 4;
LABEL_16:
  [v9 __setErrorForPtr:v10 code:v11];
  v13 = 0;
LABEL_18:

  return v13;
}

- (void)invalidate
{
  if ((atomic_exchange(&self->_invalidated, 1u) & 1) == 0)
  {
    v2 = [(STReservableSpacePolicy *)self policyType];
    v3 = 2;
    if (v2)
    {
      v3 = 0;
      v4 = -1;
    }

    else
    {
      v4 = 1;
    }

    if (v2 == 1)
    {
      v5 = 3;
    }

    else
    {
      v5 = v3;
    }

    if (v2 == 1)
    {
      v6 = 0;
    }

    else
    {
      v6 = v4;
    }

    if (setiopolicy_np(14, v6, 0))
    {
      v9 = 0;
      [objc_opt_class() __setErrorForPtr:&v9 code:v5];
      v7 = v9;
      v8 = sub_124C();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_3768(v7, v8);
      }
    }

    __dmb(0xBu);
  }
}

- (void)dealloc
{
  [(STReservableSpacePolicy *)self invalidate];
  v3.receiver = self;
  v3.super_class = STReservableSpacePolicy;
  [(STReservableSpacePolicy *)&v3 dealloc];
}

+ (void)__setErrorForPtr:(id *)a3 code:(unint64_t)a4
{
  if (a3)
  {
    if (a4 > 5)
    {
      v6 = @"<nil>";
    }

    else
    {
      v6 = *(&off_C260 + a4);
    }

    v9[0] = NSUnderlyingErrorKey;
    v7 = [NSError errorWithDomain:NSPOSIXErrorDomain code:*__error() userInfo:0];
    v9[1] = NSDebugDescriptionErrorKey;
    v10[0] = v7;
    v10[1] = v6;
    v8 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];

    *a3 = [NSError errorWithDomain:@"STReservableSpacePolicyErrorDomain" code:a4 userInfo:v8];
  }
}

@end