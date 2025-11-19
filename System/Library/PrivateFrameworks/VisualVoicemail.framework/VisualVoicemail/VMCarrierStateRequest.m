@interface VMCarrierStateRequest
+ (id)unarchivedObjectClasses;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToStateRequest:(id)a3;
- (VMCarrierStateRequest)initWithCoder:(id)a3;
- (VMCarrierStateRequest)initWithSubscription:(id)a3;
- (VMCarrierStateRequest)initWithSubscription:(id)a3 destination:(id)a4 serviceCenter:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VMCarrierStateRequest

- (VMCarrierStateRequest)initWithSubscription:(id)a3
{
  [(VMCarrierStateRequest *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (VMCarrierStateRequest)initWithSubscription:(id)a3 destination:(id)a4 serviceCenter:(id)a5
{
  v8 = a4;
  v9 = a5;
  v18.receiver = self;
  v18.super_class = VMCarrierStateRequest;
  v10 = [(VMTelephonyRequest *)&v18 initWithSubscription:a3];
  if (v10)
  {
    v11 = [v8 copy];
    destination = v10->_destination;
    v10->_destination = v11;

    v10->_identifier = 12345;
    v13 = [@"STATE" copy];
    message = v10->_message;
    v10->_message = v13;

    v15 = [v9 copy];
    serviceCenter = v10->_serviceCenter;
    v10->_serviceCenter = v15;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc(objc_opt_class());
  v6 = [(VMTelephonyRequest *)self subscription];
  v7 = [(VMCarrierStateRequest *)self destination];
  v8 = [(VMCarrierStateRequest *)self serviceCenter];
  v9 = [v5 initWithSubscription:v6 destination:v7 serviceCenter:v8];

  v9[3] = self->_identifier;
  v10 = [(NSString *)self->_message copyWithZone:a3];
  v11 = v9[4];
  v9[4] = v10;

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v13.receiver = self;
  v13.super_class = VMCarrierStateRequest;
  v4 = a3;
  [(VMTelephonyRequest *)&v13 encodeWithCoder:v4];
  destination = self->_destination;
  v6 = NSStringFromSelector("destination");
  [v4 encodeObject:destination forKey:{v6, v13.receiver, v13.super_class}];

  identifier = self->_identifier;
  v8 = NSStringFromSelector("identifier");
  [v4 encodeInteger:identifier forKey:v8];

  message = self->_message;
  v10 = NSStringFromSelector("message");
  [v4 encodeObject:message forKey:v10];

  serviceCenter = self->_serviceCenter;
  v12 = NSStringFromSelector("serviceCenter");
  [v4 encodeObject:serviceCenter forKey:v12];
}

- (VMCarrierStateRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = VMCarrierStateRequest;
  v5 = [(VMTelephonyRequest *)&v20 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector("destination");
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    destination = v5->_destination;
    v5->_destination = v8;

    v10 = NSStringFromSelector("identifier");
    v5->_identifier = [v4 decodeIntegerForKey:v10];

    v11 = objc_opt_class();
    v12 = NSStringFromSelector("message");
    v13 = [v4 decodeObjectOfClass:v11 forKey:v12];
    message = v5->_message;
    v5->_message = v13;

    v15 = objc_opt_class();
    v16 = NSStringFromSelector("serviceCenter");
    v17 = [v4 decodeObjectOfClass:v15 forKey:v16];
    serviceCenter = v5->_serviceCenter;
    v5->_serviceCenter = v17;
  }

  return v5;
}

- (id)debugDescription
{
  v3 = objc_alloc_init(NSMutableString);
  [v3 appendFormat:@"<%@ %p ", objc_opt_class(), self];
  v4 = NSStringFromSelector("subscription");
  v5 = [(VMTelephonyRequest *)self subscription];
  [v3 appendFormat:@"%@=%@", v4, v5];

  [v3 appendFormat:@", "];
  v6 = NSStringFromSelector("destination");
  v7 = [(VMCarrierStateRequest *)self destination];
  [v3 appendFormat:@"%@=%@", v6, v7];

  [v3 appendFormat:@", "];
  v8 = NSStringFromSelector("serviceCenter");
  v9 = [(VMCarrierStateRequest *)self serviceCenter];
  [v3 appendFormat:@"%@=%@", v8, v9];

  [v3 appendFormat:@", "];
  v10 = NSStringFromSelector("identifier");
  [v3 appendFormat:@"%@=%ld", v10, -[VMCarrierStateRequest identifier](self, "identifier")];

  [v3 appendFormat:@", "];
  v11 = NSStringFromSelector("message");
  v12 = [(VMCarrierStateRequest *)self message];
  [v3 appendFormat:@"%@=%@", v11, v12];

  [v3 appendFormat:@">"];
  v13 = [v3 copy];

  return v13;
}

- (unint64_t)hash
{
  v12.receiver = self;
  v12.super_class = VMCarrierStateRequest;
  v3 = [(VMTelephonyRequest *)&v12 hash];
  v4 = [(VMCarrierStateRequest *)self destination];
  v5 = [v4 hash];
  v6 = v5 ^ [(VMCarrierStateRequest *)self identifier];
  v7 = [(VMCarrierStateRequest *)self message];
  v8 = v6 ^ [v7 hash];
  v9 = [(VMCarrierStateRequest *)self serviceCenter];
  v10 = v8 ^ [v9 hash];

  return v10 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(VMCarrierStateRequest *)self isEqualToStateRequest:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToStateRequest:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = VMCarrierStateRequest;
  if ([(VMTelephonyRequest *)&v22 isEqualToRequest:v4])
  {
    v5 = [(VMCarrierStateRequest *)self destination];
    v6 = [v4 destination];
    v7 = v5;
    v8 = v6;
    v9 = v8;
    if (v7 | v8)
    {
      if (!v8)
      {
        v20 = 0;
        v14 = v7;
LABEL_18:

        goto LABEL_19;
      }

      v10 = [v7 isEqualToString:v8];

      if (!v10)
      {
        goto LABEL_13;
      }
    }

    v11 = [(VMCarrierStateRequest *)self identifier];
    if (v11 != [v4 identifier])
    {
LABEL_13:
      v20 = 0;
LABEL_19:

      goto LABEL_20;
    }

    v12 = [(VMCarrierStateRequest *)self message];
    v13 = [v4 message];
    v14 = v12;
    v15 = v13;
    v16 = v15;
    if (v14 | v15)
    {
      if (!v15)
      {
        v20 = 0;
        v18 = v14;
LABEL_16:

LABEL_17:
        goto LABEL_18;
      }

      v17 = [v14 isEqualToString:v15];

      if (!v17)
      {
        v20 = 0;
        goto LABEL_17;
      }
    }

    v18 = [(VMCarrierStateRequest *)self serviceCenter];
    v19 = [v4 serviceCenter];
    v20 = (v18 | v19) == 0;
    if (v19)
    {
      v20 = [v18 isEqualToString:v19];
    }

    goto LABEL_16;
  }

  v20 = 0;
LABEL_20:

  return v20;
}

+ (id)unarchivedObjectClasses
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___VMCarrierStateRequest;
  v2 = objc_msgSendSuper2(&v5, "unarchivedObjectClasses");
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

@end