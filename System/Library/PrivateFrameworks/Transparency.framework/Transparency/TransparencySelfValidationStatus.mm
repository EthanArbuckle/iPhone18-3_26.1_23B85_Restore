@interface TransparencySelfValidationStatus
- (TransparencySelfValidationStatus)initWithCoder:(id)a3;
- (TransparencySelfValidationStatus)initWithStatus:(unint64_t)a3 pushToken:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TransparencySelfValidationStatus

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = KTResultGetString([(TransparencySelfValidationStatus *)self status]);
  v5 = [(TransparencySelfValidationStatus *)self pushToken];
  v6 = [v5 kt_hexString];
  v7 = [v3 stringWithFormat:@"<TransparencySelfValidationStatus: %@ push: %@>", v4, v6];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(TransparencySelfValidationStatus *)self loggableDatas];
  [v6 encodeObject:v4 forKey:@"loggableDatas"];

  v5 = [(TransparencySelfValidationStatus *)self pushToken];
  [v6 encodeObject:v5 forKey:@"pushToken"];

  [v6 encodeInt:-[TransparencySelfValidationStatus status](self forKey:{"status"), @"status"}];
}

- (TransparencySelfValidationStatus)initWithCoder:(id)a3
{
  v28[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeIntForKey:@"status"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pushToken"];
  v7 = [(TransparencySelfValidationStatus *)self initWithStatus:v5 pushToken:v6];
  if (v7)
  {
    v8 = MEMORY[0x1E695DFD8];
    v28[0] = objc_opt_class();
    v28[1] = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
    v10 = [v8 setWithArray:v9];

    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"loggableDatas"];
    [(TransparencySelfValidationStatus *)v7 setLoggableDatas:v11];

    v12 = [(TransparencySelfValidationStatus *)v7 loggableDatas];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v14 = [(TransparencySelfValidationStatus *)v7 loggableDatas];
      v15 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v23 + 1) + 8 * i);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {

              goto LABEL_14;
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
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

- (TransparencySelfValidationStatus)initWithStatus:(unint64_t)a3 pushToken:(id)a4
{
  v6 = a4;
  v7 = KTResultGetString(a3);

  if (v7 && (v11.receiver = self, v11.super_class = TransparencySelfValidationStatus, v8 = [(TransparencySelfValidationStatus *)&v11 init], (self = v8) != 0))
  {
    [(TransparencySelfValidationStatus *)v8 setStatus:a3];
    [(TransparencySelfValidationStatus *)self setPushToken:v6];
    self = self;
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end