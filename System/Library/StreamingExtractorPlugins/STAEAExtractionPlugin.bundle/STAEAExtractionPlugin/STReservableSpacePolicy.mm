@interface STReservableSpacePolicy
+ (id)processPolicyWithErrorPtr:(id *)ptr;
+ (id)threadPolicyWithErrorPtr:(id *)ptr;
+ (void)__setErrorForPtr:(id *)ptr code:(unint64_t)code;
- (STReservableSpacePolicy)initWithPolicyType:(unint64_t)type errorPtr:(id *)ptr;
- (void)dealloc;
- (void)invalidate;
@end

@implementation STReservableSpacePolicy

+ (id)threadPolicyWithErrorPtr:(id *)ptr
{
  v3 = [[STReservableSpacePolicy alloc] initWithPolicyType:0 errorPtr:ptr];

  return v3;
}

+ (id)processPolicyWithErrorPtr:(id *)ptr
{
  v3 = [[STReservableSpacePolicy alloc] initWithPolicyType:1 errorPtr:ptr];

  return v3;
}

- (STReservableSpacePolicy)initWithPolicyType:(unint64_t)type errorPtr:(id *)ptr
{
  v15.receiver = self;
  v15.super_class = STReservableSpacePolicy;
  v6 = [(STReservableSpacePolicy *)&v15 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_17;
  }

  v6->_policyType = type;
  if (type == 1)
  {
    v12 = getiopolicy_np(14, 0);
    if (v12 < 0)
    {
      v9 = objc_opt_class();
      ptrCopy6 = ptr;
      v11 = 1;
      goto LABEL_16;
    }

    if (v12 == 1)
    {
      v9 = objc_opt_class();
      ptrCopy6 = ptr;
      v11 = 5;
      goto LABEL_16;
    }

    if (setiopolicy_np(14, 0, 1))
    {
      v9 = objc_opt_class();
      ptrCopy6 = ptr;
      v11 = 3;
      goto LABEL_16;
    }

LABEL_17:
    v13 = v7;
    goto LABEL_18;
  }

  if (type)
  {
    goto LABEL_17;
  }

  v8 = getiopolicy_np(14, 1);
  if (v8 < 0)
  {
    v9 = objc_opt_class();
    ptrCopy6 = ptr;
    v11 = 0;
    goto LABEL_16;
  }

  if (v8 != 1)
  {
    if (setiopolicy_np(14, 1, 1))
    {
      v9 = objc_opt_class();
      ptrCopy6 = ptr;
      v11 = 2;
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v9 = objc_opt_class();
  ptrCopy6 = ptr;
  v11 = 4;
LABEL_16:
  [v9 __setErrorForPtr:ptrCopy6 code:v11];
  v13 = 0;
LABEL_18:

  return v13;
}

- (void)invalidate
{
  if ((atomic_exchange(&self->_invalidated, 1u) & 1) == 0)
  {
    policyType = [(STReservableSpacePolicy *)self policyType];
    v3 = 2;
    if (policyType)
    {
      v3 = 0;
      v4 = -1;
    }

    else
    {
      v4 = 1;
    }

    if (policyType == 1)
    {
      v5 = 3;
    }

    else
    {
      v5 = v3;
    }

    if (policyType == 1)
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

+ (void)__setErrorForPtr:(id *)ptr code:(unint64_t)code
{
  if (ptr)
  {
    if (code > 5)
    {
      v6 = @"<nil>";
    }

    else
    {
      v6 = *(&off_C260 + code);
    }

    v9[0] = NSUnderlyingErrorKey;
    v7 = [NSError errorWithDomain:NSPOSIXErrorDomain code:*__error() userInfo:0];
    v9[1] = NSDebugDescriptionErrorKey;
    v10[0] = v7;
    v10[1] = v6;
    v8 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];

    *ptr = [NSError errorWithDomain:@"STReservableSpacePolicyErrorDomain" code:code userInfo:v8];
  }
}

@end