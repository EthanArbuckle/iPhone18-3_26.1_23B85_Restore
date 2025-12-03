@interface SCDAAssertionContext
+ (id)newWithBuilder:(id)builder;
- (BOOL)isEqual:(id)equal;
- (SCDAAssertionContext)initWithBuilder:(id)builder;
- (SCDAAssertionContext)initWithCoder:(id)coder;
- (SCDAAssertionContext)initWithTimestamp:(unint64_t)timestamp reason:(id)reason effectiveDate:(id)date expirationDuration:(double)duration userInfo:(id)info;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SCDAAssertionContext

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  timestamp = self->_timestamp;
  coderCopy = coder;
  v6 = [v4 numberWithUnsignedLongLong:timestamp];
  [coderCopy encodeObject:v6 forKey:@"SCDAAssertionContext::timestamp"];

  [coderCopy encodeObject:self->_reason forKey:@"SCDAAssertionContext::reason"];
  [coderCopy encodeObject:self->_effectiveDate forKey:@"SCDAAssertionContext::effectiveDate"];
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_expirationDuration];
  [coderCopy encodeObject:v7 forKey:@"SCDAAssertionContext::expirationDuration"];

  [coderCopy encodeObject:self->_userInfo forKey:@"SCDAAssertionContext::userInfo"];
}

- (SCDAAssertionContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SCDAAssertionContext::timestamp"];
  unsignedLongLongValue = [v4 unsignedLongLongValue];

  v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SCDAAssertionContext::reason"];
  v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SCDAAssertionContext::effectiveDate"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SCDAAssertionContext::expirationDuration"];
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
  v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"SCDAAssertionContext::userInfo"];

  v19 = [(SCDAAssertionContext *)self initWithTimestamp:unsignedLongLongValue reason:v24 effectiveDate:v23 expirationDuration:v18 userInfo:v7];
  return v19;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      timestamp = self->_timestamp;
      if (timestamp == [(SCDAAssertionContext *)v5 timestamp]&& (expirationDuration = self->_expirationDuration, [(SCDAAssertionContext *)v5 expirationDuration], expirationDuration == v8))
      {
        reason = [(SCDAAssertionContext *)v5 reason];
        reason = self->_reason;
        if (reason == reason || [(NSString *)reason isEqual:reason])
        {
          effectiveDate = [(SCDAAssertionContext *)v5 effectiveDate];
          effectiveDate = self->_effectiveDate;
          if (effectiveDate == effectiveDate || [(NSDate *)effectiveDate isEqual:effectiveDate])
          {
            userInfo = [(SCDAAssertionContext *)v5 userInfo];
            userInfo = self->_userInfo;
            v9 = userInfo == userInfo || [(NSDictionary *)userInfo isEqual:userInfo];
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

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = SCDAAssertionContext;
  v5 = [(SCDAAssertionContext *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {timestamp = %llu, reason = %@, effectiveDate = %@, expirationDuration = %f, userInfo = %@}", v5, self->_timestamp, self->_reason, self->_effectiveDate, *&self->_expirationDuration, self->_userInfo];

  return v6;
}

- (SCDAAssertionContext)initWithTimestamp:(unint64_t)timestamp reason:(id)reason effectiveDate:(id)date expirationDuration:(double)duration userInfo:(id)info
{
  reasonCopy = reason;
  dateCopy = date;
  infoCopy = info;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __91__SCDAAssertionContext_initWithTimestamp_reason_effectiveDate_expirationDuration_userInfo___block_invoke;
  v20[3] = &unk_1E85D2E88;
  v21 = reasonCopy;
  v22 = dateCopy;
  durationCopy = duration;
  v23 = infoCopy;
  timestampCopy = timestamp;
  v15 = infoCopy;
  v16 = dateCopy;
  v17 = reasonCopy;
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

- (SCDAAssertionContext)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v19.receiver = self;
  v19.super_class = SCDAAssertionContext;
  v5 = [(SCDAAssertionContext *)&v19 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_SCDAAssertionContextMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_SCDAAssertionContextMutation *)v7 isDirty])
    {
      v6->_timestamp = [(_SCDAAssertionContextMutation *)v7 getTimestamp];
      getReason = [(_SCDAAssertionContextMutation *)v7 getReason];
      v9 = [getReason copy];
      reason = v6->_reason;
      v6->_reason = v9;

      getEffectiveDate = [(_SCDAAssertionContextMutation *)v7 getEffectiveDate];
      v12 = [getEffectiveDate copy];
      effectiveDate = v6->_effectiveDate;
      v6->_effectiveDate = v12;

      [(_SCDAAssertionContextMutation *)v7 getExpirationDuration];
      v6->_expirationDuration = v14;
      getUserInfo = [(_SCDAAssertionContextMutation *)v7 getUserInfo];
      v16 = [getUserInfo copy];
      userInfo = v6->_userInfo;
      v6->_userInfo = v16;
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:builderCopy];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_SCDAAssertionContextMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_SCDAAssertionContextMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(SCDAAssertionContext);
      v6->_timestamp = [(_SCDAAssertionContextMutation *)v5 getTimestamp];
      getReason = [(_SCDAAssertionContextMutation *)v5 getReason];
      v8 = [getReason copy];
      reason = v6->_reason;
      v6->_reason = v8;

      getEffectiveDate = [(_SCDAAssertionContextMutation *)v5 getEffectiveDate];
      v11 = [getEffectiveDate copy];
      effectiveDate = v6->_effectiveDate;
      v6->_effectiveDate = v11;

      [(_SCDAAssertionContextMutation *)v5 getExpirationDuration];
      v6->_expirationDuration = v13;
      getUserInfo = [(_SCDAAssertionContextMutation *)v5 getUserInfo];
      v15 = [getUserInfo copy];
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