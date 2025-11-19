@interface KTIDSIdentity
- (BOOL)isEqual:(id)a3;
- (KTIDSIdentity)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation KTIDSIdentity

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(KTIDSIdentity *)self pushToken];
  [v7 encodeObject:v4 forKey:@"pushToken"];

  v5 = [(KTIDSIdentity *)self ktLoggableData];
  [v7 encodeObject:v5 forKey:@"ktLoggableData"];

  v6 = [(KTIDSIdentity *)self signature];
  [v7 encodeObject:v6 forKey:@"signature"];

  [v7 encodeBool:-[KTIDSIdentity ktCapable](self forKey:{"ktCapable"), @"ktCapable"}];
  [v7 encodeBool:-[KTIDSIdentity supportConditionalEnforcement](self forKey:{"supportConditionalEnforcement"), @"conditionalEnforcement"}];
}

- (KTIDSIdentity)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pushToken"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ktLoggableData"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"signature"];
    self = -[KTIDSIdentity initWithPushToken:ktLoggableData:signature:ktCapable:conditionalEnforcement:](self, "initWithPushToken:ktLoggableData:signature:ktCapable:conditionalEnforcement:", v5, v6, v7, [v4 decodeBoolForKey:@"ktCapable"], objc_msgSend(v4, "decodeBoolForKey:", @"conditionalEnforcement"));

    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v15) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(KTIDSIdentity *)self pushToken];
      v7 = [(KTIDSIdentity *)v5 pushToken];
      v8 = [v6 isEqual:v7];

      if (v8)
      {
        v9 = [(KTIDSIdentity *)self ktLoggableData];
        v10 = [(KTIDSIdentity *)v5 ktLoggableData];
        v11 = v10;
        if (v9 == v10)
        {
        }

        else
        {
          v12 = [(KTIDSIdentity *)self ktLoggableData];
          v13 = [(KTIDSIdentity *)v5 ktLoggableData];
          v14 = [v12 isEqual:v13];

          if (!v14)
          {
            goto LABEL_15;
          }
        }

        v16 = [(KTIDSIdentity *)self signature];
        v17 = [(KTIDSIdentity *)v5 signature];
        v18 = v17;
        if (v16 == v17)
        {
        }

        else
        {
          v19 = [(KTIDSIdentity *)self signature];
          v20 = [(KTIDSIdentity *)v5 signature];
          v21 = [v19 isEqual:v20];

          if (!v21)
          {
            goto LABEL_15;
          }
        }

        v22 = [(KTIDSIdentity *)self ktCapable];
        if (v22 == [(KTIDSIdentity *)v5 ktCapable])
        {
          v24 = [(KTIDSIdentity *)self supportConditionalEnforcement];
          v15 = v24 ^ [(KTIDSIdentity *)v5 supportConditionalEnforcement]^ 1;
          goto LABEL_16;
        }
      }

LABEL_15:
      LOBYTE(v15) = 0;
LABEL_16:

      goto LABEL_17;
    }

    LOBYTE(v15) = 0;
  }

LABEL_17:

  return v15;
}

@end