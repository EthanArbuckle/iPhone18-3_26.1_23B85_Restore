@interface VMCarrierStateRequest
+ (id)unarchivedObjectClasses;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToStateRequest:(id)request;
- (VMCarrierStateRequest)initWithCoder:(id)coder;
- (VMCarrierStateRequest)initWithSubscription:(id)subscription;
- (VMCarrierStateRequest)initWithSubscription:(id)subscription destination:(id)destination serviceCenter:(id)center;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VMCarrierStateRequest

- (VMCarrierStateRequest)initWithSubscription:(id)subscription
{
  [(VMCarrierStateRequest *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (VMCarrierStateRequest)initWithSubscription:(id)subscription destination:(id)destination serviceCenter:(id)center
{
  destinationCopy = destination;
  centerCopy = center;
  v18.receiver = self;
  v18.super_class = VMCarrierStateRequest;
  v10 = [(VMTelephonyRequest *)&v18 initWithSubscription:subscription];
  if (v10)
  {
    v11 = [destinationCopy copy];
    destination = v10->_destination;
    v10->_destination = v11;

    v10->_identifier = 12345;
    v13 = [@"STATE" copy];
    message = v10->_message;
    v10->_message = v13;

    v15 = [centerCopy copy];
    serviceCenter = v10->_serviceCenter;
    v10->_serviceCenter = v15;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc(objc_opt_class());
  subscription = [(VMTelephonyRequest *)self subscription];
  destination = [(VMCarrierStateRequest *)self destination];
  serviceCenter = [(VMCarrierStateRequest *)self serviceCenter];
  v9 = [v5 initWithSubscription:subscription destination:destination serviceCenter:serviceCenter];

  v9[3] = self->_identifier;
  v10 = [(NSString *)self->_message copyWithZone:zone];
  v11 = v9[4];
  v9[4] = v10;

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  v13.receiver = self;
  v13.super_class = VMCarrierStateRequest;
  coderCopy = coder;
  [(VMTelephonyRequest *)&v13 encodeWithCoder:coderCopy];
  destination = self->_destination;
  v6 = NSStringFromSelector("destination");
  [coderCopy encodeObject:destination forKey:{v6, v13.receiver, v13.super_class}];

  identifier = self->_identifier;
  v8 = NSStringFromSelector("identifier");
  [coderCopy encodeInteger:identifier forKey:v8];

  message = self->_message;
  v10 = NSStringFromSelector("message");
  [coderCopy encodeObject:message forKey:v10];

  serviceCenter = self->_serviceCenter;
  v12 = NSStringFromSelector("serviceCenter");
  [coderCopy encodeObject:serviceCenter forKey:v12];
}

- (VMCarrierStateRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = VMCarrierStateRequest;
  v5 = [(VMTelephonyRequest *)&v20 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector("destination");
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    destination = v5->_destination;
    v5->_destination = v8;

    v10 = NSStringFromSelector("identifier");
    v5->_identifier = [coderCopy decodeIntegerForKey:v10];

    v11 = objc_opt_class();
    v12 = NSStringFromSelector("message");
    v13 = [coderCopy decodeObjectOfClass:v11 forKey:v12];
    message = v5->_message;
    v5->_message = v13;

    v15 = objc_opt_class();
    v16 = NSStringFromSelector("serviceCenter");
    v17 = [coderCopy decodeObjectOfClass:v15 forKey:v16];
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
  subscription = [(VMTelephonyRequest *)self subscription];
  [v3 appendFormat:@"%@=%@", v4, subscription];

  [v3 appendFormat:@", "];
  v6 = NSStringFromSelector("destination");
  destination = [(VMCarrierStateRequest *)self destination];
  [v3 appendFormat:@"%@=%@", v6, destination];

  [v3 appendFormat:@", "];
  v8 = NSStringFromSelector("serviceCenter");
  serviceCenter = [(VMCarrierStateRequest *)self serviceCenter];
  [v3 appendFormat:@"%@=%@", v8, serviceCenter];

  [v3 appendFormat:@", "];
  v10 = NSStringFromSelector("identifier");
  [v3 appendFormat:@"%@=%ld", v10, -[VMCarrierStateRequest identifier](self, "identifier")];

  [v3 appendFormat:@", "];
  v11 = NSStringFromSelector("message");
  message = [(VMCarrierStateRequest *)self message];
  [v3 appendFormat:@"%@=%@", v11, message];

  [v3 appendFormat:@">"];
  v13 = [v3 copy];

  return v13;
}

- (unint64_t)hash
{
  v12.receiver = self;
  v12.super_class = VMCarrierStateRequest;
  v3 = [(VMTelephonyRequest *)&v12 hash];
  destination = [(VMCarrierStateRequest *)self destination];
  v5 = [destination hash];
  v6 = v5 ^ [(VMCarrierStateRequest *)self identifier];
  message = [(VMCarrierStateRequest *)self message];
  v8 = v6 ^ [message hash];
  serviceCenter = [(VMCarrierStateRequest *)self serviceCenter];
  v10 = v8 ^ [serviceCenter hash];

  return v10 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(VMCarrierStateRequest *)self isEqualToStateRequest:equalCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToStateRequest:(id)request
{
  requestCopy = request;
  v22.receiver = self;
  v22.super_class = VMCarrierStateRequest;
  if ([(VMTelephonyRequest *)&v22 isEqualToRequest:requestCopy])
  {
    destination = [(VMCarrierStateRequest *)self destination];
    destination2 = [requestCopy destination];
    v7 = destination;
    v8 = destination2;
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

    identifier = [(VMCarrierStateRequest *)self identifier];
    if (identifier != [requestCopy identifier])
    {
LABEL_13:
      v20 = 0;
LABEL_19:

      goto LABEL_20;
    }

    message = [(VMCarrierStateRequest *)self message];
    message2 = [requestCopy message];
    v14 = message;
    v15 = message2;
    v16 = v15;
    if (v14 | v15)
    {
      if (!v15)
      {
        v20 = 0;
        serviceCenter = v14;
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

    serviceCenter = [(VMCarrierStateRequest *)self serviceCenter];
    serviceCenter2 = [requestCopy serviceCenter];
    v20 = (serviceCenter | serviceCenter2) == 0;
    if (serviceCenter2)
    {
      v20 = [serviceCenter isEqualToString:serviceCenter2];
    }

    goto LABEL_16;
  }

  v20 = 0;
LABEL_20:

  return v20;
}

+ (id)unarchivedObjectClasses
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___VMCarrierStateRequest;
  v2 = objc_msgSendSuper2(&v5, "unarchivedObjectClasses");
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

@end