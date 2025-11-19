@interface SCDAAssertionContext
+ (id)newWithBuilder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (SCDAAssertionContext)initWithBuilder:(id)a3;
- (SCDAAssertionContext)initWithCoder:(id)a3;
- (SCDAAssertionContext)initWithTimestamp:(unint64_t)a3 reason:(id)a4 effectiveDate:(id)a5 expirationDuration:(double)a6 userInfo:(id)a7;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SCDAAssertionContext

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  timestamp = self->_timestamp;
  v8 = a3;
  v6 = [v4 numberWithUnsignedLongLong:timestamp];
  [v8 encodeObject:v6 forKey:@"SCDAAssertionContext::timestamp"];

  [v8 encodeObject:self->_reason forKey:@"SCDAAssertionContext::reason"];
  [v8 encodeObject:self->_effectiveDate forKey:@"SCDAAssertionContext::effectiveDate"];
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_expirationDuration];
  [v8 encodeObject:v7 forKey:@"SCDAAssertionContext::expirationDuration"];

  [v8 encodeObject:self->_userInfo forKey:@"SCDAAssertionContext::userInfo"];
}

- (SCDAAssertionContext)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"SCDAAssertionContext::timestamp"];
  v25 = [v4 unsignedLongLongValue];

  v24 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"SCDAAssertionContext::reason"];
  v23 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"SCDAAssertionContext::effectiveDate"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"SCDAAssertionContext::expirationDuration"];
  [v5 doubleValue];
  v7 = v6;

  v22 = MEMORY[0x1E695DFD8];
  v21 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = [v22 setWithObjects:{v21, v8, v9, v10, v11, v12, v13, v14, v15, v16, objc_opt_class(), 0}];
  v18 = [v3 decodeObjectOfClasses:v17 forKey:@"SCDAAssertionContext::userInfo"];

  v19 = [(SCDAAssertionContext *)self initWithTimestamp:v25 reason:v24 effectiveDate:v23 expirationDuration:v18 userInfo:v7];
  return v19;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      timestamp = self->_timestamp;
      if (timestamp == [(SCDAAssertionContext *)v5 timestamp]&& (expirationDuration = self->_expirationDuration, [(SCDAAssertionContext *)v5 expirationDuration], expirationDuration == v8))
      {
        v11 = [(SCDAAssertionContext *)v5 reason];
        reason = self->_reason;
        if (reason == v11 || [(NSString *)reason isEqual:v11])
        {
          v13 = [(SCDAAssertionContext *)v5 effectiveDate];
          effectiveDate = self->_effectiveDate;
          if (effectiveDate == v13 || [(NSDate *)effectiveDate isEqual:v13])
          {
            v15 = [(SCDAAssertionContext *)v5 userInfo];
            userInfo = self->_userInfo;
            v9 = userInfo == v15 || [(NSDictionary *)userInfo isEqual:v15];
          }

          else
          {
            v9 = 0;
          }
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_timestamp];
  v4 = [v3 hash];
  v5 = [(NSString *)self->_reason hash];
  v6 = v5 ^ [(NSDate *)self->_effectiveDate hash]^ v4;
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_expirationDuration];
  v8 = [v7 hash];
  v9 = v8 ^ [(NSDictionary *)self->_userInfo hash];

  return v6 ^ v9;
}

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = SCDAAssertionContext;
  v5 = [(SCDAAssertionContext *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {timestamp = %llu, reason = %@, effectiveDate = %@, expirationDuration = %f, userInfo = %@}", v5, self->_timestamp, self->_reason, self->_effectiveDate, *&self->_expirationDuration, self->_userInfo];

  return v6;
}

- (SCDAAssertionContext)initWithTimestamp:(unint64_t)a3 reason:(id)a4 effectiveDate:(id)a5 expirationDuration:(double)a6 userInfo:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __91__SCDAAssertionContext_initWithTimestamp_reason_effectiveDate_expirationDuration_userInfo___block_invoke;
  v20[3] = &unk_1E85D2E88;
  v21 = v12;
  v22 = v13;
  v25 = a6;
  v23 = v14;
  v24 = a3;
  v15 = v14;
  v16 = v13;
  v17 = v12;
  v18 = [(SCDAAssertionContext *)self initWithBuilder:v20];

  return v18;
}

void __91__SCDAAssertionContext_initWithTimestamp_reason_effectiveDate_expirationDuration_userInfo___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 56);
  v4 = a2;
  [v4 setTimestamp:v3];
  [v4 setReason:*(a1 + 32)];
  [v4 setEffectiveDate:*(a1 + 40)];
  [v4 setExpirationDuration:*(a1 + 64)];
  [v4 setUserInfo:*(a1 + 48)];
}

- (SCDAAssertionContext)initWithBuilder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = SCDAAssertionContext;
  v5 = [(SCDAAssertionContext *)&v19 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_SCDAAssertionContextMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_SCDAAssertionContextMutation *)v7 isDirty])
    {
      v6->_timestamp = [(_SCDAAssertionContextMutation *)v7 getTimestamp];
      v8 = [(_SCDAAssertionContextMutation *)v7 getReason];
      v9 = [v8 copy];
      reason = v6->_reason;
      v6->_reason = v9;

      v11 = [(_SCDAAssertionContextMutation *)v7 getEffectiveDate];
      v12 = [v11 copy];
      effectiveDate = v6->_effectiveDate;
      v6->_effectiveDate = v12;

      [(_SCDAAssertionContextMutation *)v7 getExpirationDuration];
      v6->_expirationDuration = v14;
      v15 = [(_SCDAAssertionContextMutation *)v7 getUserInfo];
      v16 = [v15 copy];
      userInfo = v6->_userInfo;
      v6->_userInfo = v16;
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:v3];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_SCDAAssertionContextMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_SCDAAssertionContextMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(SCDAAssertionContext);
      v6->_timestamp = [(_SCDAAssertionContextMutation *)v5 getTimestamp];
      v7 = [(_SCDAAssertionContextMutation *)v5 getReason];
      v8 = [v7 copy];
      reason = v6->_reason;
      v6->_reason = v8;

      v10 = [(_SCDAAssertionContextMutation *)v5 getEffectiveDate];
      v11 = [v10 copy];
      effectiveDate = v6->_effectiveDate;
      v6->_effectiveDate = v11;

      [(_SCDAAssertionContextMutation *)v5 getExpirationDuration];
      v6->_expirationDuration = v13;
      v14 = [(_SCDAAssertionContextMutation *)v5 getUserInfo];
      v15 = [v14 copy];
      userInfo = v6->_userInfo;
      v6->_userInfo = v15;
    }

    else
    {
      v6 = [(SCDAAssertionContext *)self copy];
    }
  }

  else
  {
    v6 = [(SCDAAssertionContext *)self copy];
  }

  return v6;
}

@end