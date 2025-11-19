@interface CSDVoIPApplicationMessage
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToMessage:(id)a3;
- (CSDVoIPApplicationMessage)initWithTransportType:(int64_t)a3 payload:(id)a4;
- (id)description;
- (unint64_t)hash;
@end

@implementation CSDVoIPApplicationMessage

- (CSDVoIPApplicationMessage)initWithTransportType:(int64_t)a3 payload:(id)a4
{
  v6 = a4;
  v14.receiver = self;
  v14.super_class = CSDVoIPApplicationMessage;
  v7 = [(CSDVoIPApplicationMessage *)&v14 init];
  v8 = v7;
  if (v7)
  {
    v7->_transportType = a3;
    v9 = [v6 copy];
    payload = v8->_payload;
    v8->_payload = v9;

    v11 = objc_alloc_init(NSUUID);
    uuid = v8->_uuid;
    v8->_uuid = v11;
  }

  return v8;
}

- (id)description
{
  v3 = objc_alloc_init(NSMutableString);
  [v3 appendFormat:@"<%@ %p ", objc_opt_class(), self];
  v4 = NSStringFromSelector("transportType");
  v5 = [NSString csd_stringWithCSDVoIPApplicationMessageTransportType:[(CSDVoIPApplicationMessage *)self transportType]];
  [v3 appendFormat:@"%@=%@", v4, v5];

  [v3 appendFormat:@", "];
  v6 = NSStringFromSelector("payload");
  v7 = [(CSDVoIPApplicationMessage *)self payload];
  [v3 appendFormat:@"%@=%@", v6, v7];

  [v3 appendFormat:@", "];
  v8 = NSStringFromSelector("uuid");
  v9 = [(CSDVoIPApplicationMessage *)self uuid];
  v10 = [v9 UUIDString];
  [v3 appendFormat:@"%@=%@", v8, v10];

  [v3 appendFormat:@">"];
  v11 = [v3 copy];

  return v11;
}

- (unint64_t)hash
{
  v2 = [(CSDVoIPApplicationMessage *)self uuid];
  v3 = [v2 hash];

  return v3;
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
      v5 = [(CSDVoIPApplicationMessage *)self isEqualToMessage:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToMessage:(id)a3
{
  v4 = a3;
  v5 = [(CSDVoIPApplicationMessage *)self uuid];
  v6 = [v4 uuid];

  LOBYTE(v4) = [v5 isEqual:v6];
  return v4;
}

@end