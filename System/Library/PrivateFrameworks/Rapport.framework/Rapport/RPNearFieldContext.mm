@interface RPNearFieldContext
- (BOOL)isEqual:(id)equal;
- (RPNearFieldContext)initWithApplicationLabel:(id)label supportedApplicationLabels:(id)labels pkData:(id)data bonjourListenerUUID:(id)d;
- (RPNearFieldContext)initWithCoder:(id)coder;
- (id)initWitApplicationLabel:(id)label;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RPNearFieldContext

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      applicationLabel = [(RPNearFieldContext *)self applicationLabel];
      applicationLabel2 = [(RPNearFieldContext *)v5 applicationLabel];
      v8 = applicationLabel;
      v9 = applicationLabel2;
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

      supportedApplicationLabels = [(RPNearFieldContext *)self supportedApplicationLabels];
      supportedApplicationLabels2 = [(RPNearFieldContext *)v5 supportedApplicationLabels];
      v15 = supportedApplicationLabels;
      v16 = supportedApplicationLabels2;
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

      pkData = [(RPNearFieldContext *)self pkData];
      pkData2 = [(RPNearFieldContext *)v5 pkData];
      v21 = pkData;
      v22 = pkData2;
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
      bonjourListenerUUID = [(RPNearFieldContext *)self bonjourListenerUUID];
      bonjourListenerUUID2 = [(RPNearFieldContext *)v5 bonjourListenerUUID];
      v21 = bonjourListenerUUID;
      v27 = bonjourListenerUUID2;
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

- (RPNearFieldContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(RPNearFieldContext *)self init];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = coderCopy;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  applicationLabel = self->_applicationLabel;
  v9 = coderCopy;
  if (applicationLabel)
  {
    [coderCopy encodeObject:applicationLabel forKey:@"applicationLabel"];
    coderCopy = v9;
  }

  supportedApplicationLabels = self->_supportedApplicationLabels;
  if (supportedApplicationLabels)
  {
    [v9 encodeObject:supportedApplicationLabels forKey:@"supportedApplicationLabels"];
    coderCopy = v9;
  }

  pkData = self->_pkData;
  if (pkData)
  {
    [v9 encodeObject:pkData forKey:@"pkData"];
    coderCopy = v9;
  }

  bonjourListenerUUID = self->_bonjourListenerUUID;
  if (bonjourListenerUUID)
  {
    [v9 encodeObject:bonjourListenerUUID forKey:@"bonjourListenerUUID"];
    coderCopy = v9;
  }
}

- (id)initWitApplicationLabel:(id)label
{
  labelCopy = label;
  v5 = NSRandomData();
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v7 = [(RPNearFieldContext *)self initWithApplicationLabel:labelCopy pkData:v5 bonjourListenerUUID:uUID];

  return v7;
}

- (RPNearFieldContext)initWithApplicationLabel:(id)label supportedApplicationLabels:(id)labels pkData:(id)data bonjourListenerUUID:(id)d
{
  labelCopy = label;
  labelsCopy = labels;
  dataCopy = data;
  dCopy = d;
  v22.receiver = self;
  v22.super_class = RPNearFieldContext;
  v14 = [(RPNearFieldContext *)&v22 init];
  if (v14)
  {
    v15 = [labelCopy copy];
    applicationLabel = v14->_applicationLabel;
    v14->_applicationLabel = v15;

    v17 = [labelsCopy copy];
    supportedApplicationLabels = v14->_supportedApplicationLabels;
    v14->_supportedApplicationLabels = v17;

    v19 = [dataCopy copy];
    pkData = v14->_pkData;
    v14->_pkData = v19;

    objc_storeStrong(&v14->_bonjourListenerUUID, d);
  }

  return v14;
}

@end