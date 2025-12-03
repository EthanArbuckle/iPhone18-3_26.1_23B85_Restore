@interface RMActivationPayloadState
- (NSArray)inactiveReasons;
- (id)reportDetails;
- (void)setInactiveReasons:(id)reasons;
@end

@implementation RMActivationPayloadState

- (NSArray)inactiveReasons
{
  [(RMActivationPayloadState *)self willAccessValueForKey:@"inactiveReasons"];
  v3 = [(RMActivationPayloadState *)self primitiveValueForKey:@"inactiveReasons"];
  [(RMActivationPayloadState *)self didAccessValueForKey:@"inactiveReasons"];
  if (!v3)
  {
    inactiveReasons = [(RMActivationPayloadState *)self inactiveReasons];
    if (inactiveReasons)
    {
      v5 = objc_opt_class();
      v6 = [NSSet setWithObjects:v5, objc_opt_class(), 0];
      v9 = 0;
      v3 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v6 fromData:inactiveReasons error:&v9];
      v7 = v9;

      if (v3)
      {
        [(RMActivationPayloadState *)self setPrimitiveValue:v3 forKey:@"inactiveReasons"];
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
      {
        sub_100007938();
      }
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (void)setInactiveReasons:(id)reasons
{
  reasonsCopy = reasons;
  [(RMActivationPayloadState *)self willChangeValueForKey:@"inactiveReasons"];
  [(RMActivationPayloadState *)self setPrimitiveValue:reasonsCopy forKey:@"inactiveReasons"];
  if ([reasonsCopy count])
  {
    v14 = 0;
    v5 = [NSKeyedArchiver archivedDataWithRootObject:reasonsCopy requiringSecureCoding:1 error:&v14];
    v6 = v14;
    v7 = v5 == 0;
    if (!v5 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_1000079D4();
    }

    if ((v5 == 0) != [(RMActivationPayloadState *)self active])
    {
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    v7 = 1;
    if (([(RMActivationPayloadState *)self active]& 1) == 0)
    {
LABEL_6:
      [(RMActivationPayloadState *)self setActive:v7];
    }
  }

  inactiveReasons = [(RMActivationPayloadState *)self inactiveReasons];
  v9 = v5;
  v10 = v9;
  if (inactiveReasons == v9)
  {
  }

  else
  {
    if (inactiveReasons)
    {
      v11 = v7;
    }

    else
    {
      v11 = 0;
    }

    if (inactiveReasons)
    {
      v12 = 1;
    }

    else
    {
      v12 = v9 == 0;
    }

    if (!v12 || v11)
    {
    }

    else
    {
      v13 = [inactiveReasons isEqual:v9];

      if (v13)
      {
        goto LABEL_24;
      }
    }

    [(RMActivationPayloadState *)self setInactiveReasons_:v10];
  }

LABEL_24:
  [(RMActivationPayloadState *)self didChangeValueForKey:@"inactiveReasons"];
}

- (id)reportDetails
{
  v3 = objc_opt_new();
  v4 = [NSNumber numberWithBool:[(RMActivationPayloadState *)self active]];
  [v3 setObject:v4 forKeyedSubscript:@"active"];

  v5 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  inactiveReasons = [(RMActivationPayloadState *)self inactiveReasons];
  v7 = [inactiveReasons countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(inactiveReasons);
        }

        v11 = [*(*(&v14 + 1) + 8 * i) serializeWithType:1];
        [v5 addObject:v11];
      }

      v8 = [inactiveReasons countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  [v3 setObject:v5 forKeyedSubscript:@"inactiveReasons"];
  v12 = [v3 copy];

  return v12;
}

@end