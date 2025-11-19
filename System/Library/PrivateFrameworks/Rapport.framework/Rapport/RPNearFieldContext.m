@interface RPNearFieldContext
- (BOOL)isEqual:(id)a3;
- (RPNearFieldContext)initWithApplicationLabel:(id)a3 supportedApplicationLabels:(id)a4 pkData:(id)a5 bonjourListenerUUID:(id)a6;
- (RPNearFieldContext)initWithCoder:(id)a3;
- (id)initWitApplicationLabel:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RPNearFieldContext

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(RPNearFieldContext *)self applicationLabel];
      v7 = [(RPNearFieldContext *)v5 applicationLabel];
      v8 = v6;
      v9 = v7;
      v10 = v9;
      if (v8 == v9)
      {
      }

      else
      {
        if ((v8 != 0) == (v9 == 0))
        {
          v12 = 0;
          v17 = v9;
          v15 = v8;
          goto LABEL_31;
        }

        v11 = [v8 isEqual:v9];

        if (!v11)
        {
          v12 = 0;
LABEL_32:

          goto LABEL_33;
        }
      }

      v13 = [(RPNearFieldContext *)self supportedApplicationLabels];
      v14 = [(RPNearFieldContext *)v5 supportedApplicationLabels];
      v15 = v13;
      v16 = v14;
      v17 = v16;
      if (v15 == v16)
      {
      }

      else
      {
        if ((v15 != 0) == (v16 == 0))
        {
          v12 = 0;
          v23 = v16;
          v21 = v15;
          goto LABEL_30;
        }

        v18 = [v15 isEqual:v16];

        if (!v18)
        {
          v12 = 0;
LABEL_31:

          goto LABEL_32;
        }
      }

      v19 = [(RPNearFieldContext *)self pkData];
      v20 = [(RPNearFieldContext *)v5 pkData];
      v21 = v19;
      v22 = v20;
      v23 = v22;
      if (v21 == v22)
      {
      }

      else
      {
        if ((v21 != 0) == (v22 == 0))
        {
          v12 = 0;
          v28 = v22;
          v30 = v21;
LABEL_29:

          v21 = v30;
          goto LABEL_30;
        }

        v24 = [v21 isEqual:v22];

        if (!v24)
        {
          v12 = 0;
LABEL_30:

          goto LABEL_31;
        }
      }

      v30 = v21;
      v25 = [(RPNearFieldContext *)self bonjourListenerUUID];
      v26 = [(RPNearFieldContext *)v5 bonjourListenerUUID];
      v21 = v25;
      v27 = v26;
      v28 = v27;
      if (v21 == v27)
      {
        v12 = 1;
      }

      else if ((v21 != 0) == (v27 == 0))
      {
        v12 = 0;
      }

      else
      {
        v12 = [v21 isEqual:v27];
      }

      goto LABEL_29;
    }

    v12 = 0;
  }

LABEL_33:

  return v12;
}

- (RPNearFieldContext)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(RPNearFieldContext *)self init];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = v4;
  objc_opt_class();
  NSDecodeObjectIfPresent();

  objc_opt_class();
  NSDecodeNSArrayOfClassIfPresent();
  v7 = v6;
  objc_opt_class();
  NSDecodeObjectIfPresent();

  v8 = v7;
  objc_opt_class();
  NSDecodeObjectIfPresent();

  if (!v5->_pkData)
  {
    goto LABEL_5;
  }

  if (v5->_bonjourListenerUUID)
  {
    v9 = v5;
  }

  else
  {
LABEL_5:
    v9 = 0;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  applicationLabel = self->_applicationLabel;
  v9 = v4;
  if (applicationLabel)
  {
    [v4 encodeObject:applicationLabel forKey:@"applicationLabel"];
    v4 = v9;
  }

  supportedApplicationLabels = self->_supportedApplicationLabels;
  if (supportedApplicationLabels)
  {
    [v9 encodeObject:supportedApplicationLabels forKey:@"supportedApplicationLabels"];
    v4 = v9;
  }

  pkData = self->_pkData;
  if (pkData)
  {
    [v9 encodeObject:pkData forKey:@"pkData"];
    v4 = v9;
  }

  bonjourListenerUUID = self->_bonjourListenerUUID;
  if (bonjourListenerUUID)
  {
    [v9 encodeObject:bonjourListenerUUID forKey:@"bonjourListenerUUID"];
    v4 = v9;
  }
}

- (id)initWitApplicationLabel:(id)a3
{
  v4 = a3;
  v5 = NSRandomData();
  v6 = [MEMORY[0x1E696AFB0] UUID];
  v7 = [(RPNearFieldContext *)self initWithApplicationLabel:v4 pkData:v5 bonjourListenerUUID:v6];

  return v7;
}

- (RPNearFieldContext)initWithApplicationLabel:(id)a3 supportedApplicationLabels:(id)a4 pkData:(id)a5 bonjourListenerUUID:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v22.receiver = self;
  v22.super_class = RPNearFieldContext;
  v14 = [(RPNearFieldContext *)&v22 init];
  if (v14)
  {
    v15 = [v10 copy];
    applicationLabel = v14->_applicationLabel;
    v14->_applicationLabel = v15;

    v17 = [v11 copy];
    supportedApplicationLabels = v14->_supportedApplicationLabels;
    v14->_supportedApplicationLabels = v17;

    v19 = [v12 copy];
    pkData = v14->_pkData;
    v14->_pkData = v19;

    objc_storeStrong(&v14->_bonjourListenerUUID, a6);
  }

  return v14;
}

@end