@interface TransparencySelfValidationStatus
- (TransparencySelfValidationStatus)initWithCoder:(id)coder;
- (TransparencySelfValidationStatus)initWithStatus:(unint64_t)status pushToken:(id)token;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TransparencySelfValidationStatus

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = KTResultGetString([(TransparencySelfValidationStatus *)self status]);
  pushToken = [(TransparencySelfValidationStatus *)self pushToken];
  kt_hexString = [pushToken kt_hexString];
  v7 = [v3 stringWithFormat:@"<TransparencySelfValidationStatus: %@ push: %@>", v4, kt_hexString];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  loggableDatas = [(TransparencySelfValidationStatus *)self loggableDatas];
  [coderCopy encodeObject:loggableDatas forKey:@"loggableDatas"];

  pushToken = [(TransparencySelfValidationStatus *)self pushToken];
  [coderCopy encodeObject:pushToken forKey:@"pushToken"];

  [coderCopy encodeInt:-[TransparencySelfValidationStatus status](self forKey:{"status"), @"status"}];
}

- (TransparencySelfValidationStatus)initWithCoder:(id)coder
{
  v28[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeIntForKey:@"status"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pushToken"];
  v7 = [(TransparencySelfValidationStatus *)self initWithStatus:v5 pushToken:v6];
  if (v7)
  {
    v8 = MEMORY[0x1E695DFD8];
    v28[0] = objc_opt_class();
    v28[1] = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
    v10 = [v8 setWithArray:v9];

    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"loggableDatas"];
    [(TransparencySelfValidationStatus *)v7 setLoggableDatas:v11];

    loggableDatas = [(TransparencySelfValidationStatus *)v7 loggableDatas];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      loggableDatas2 = [(TransparencySelfValidationStatus *)v7 loggableDatas];
      v15 = [loggableDatas2 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v24;
        while (2)
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v24 != v17)
            {
              objc_enumerationMutation(loggableDatas2);
            }

            v19 = *(*(&v23 + 1) + 8 * i);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {

              goto LABEL_14;
            }
          }

          v16 = [loggableDatas2 countByEnumeratingWithState:&v23 objects:v27 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }
      }

      v20 = v7;
    }

    else
    {
LABEL_14:
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

- (TransparencySelfValidationStatus)initWithStatus:(unint64_t)status pushToken:(id)token
{
  tokenCopy = token;
  v7 = KTResultGetString(status);

  if (v7 && (v11.receiver = self, v11.super_class = TransparencySelfValidationStatus, v8 = [(TransparencySelfValidationStatus *)&v11 init], (self = v8) != 0))
  {
    [(TransparencySelfValidationStatus *)v8 setStatus:status];
    [(TransparencySelfValidationStatus *)self setPushToken:tokenCopy];
    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end