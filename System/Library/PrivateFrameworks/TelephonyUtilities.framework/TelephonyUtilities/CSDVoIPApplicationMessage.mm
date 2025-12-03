@interface CSDVoIPApplicationMessage
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToMessage:(id)message;
- (CSDVoIPApplicationMessage)initWithTransportType:(int64_t)type payload:(id)payload;
- (id)description;
- (unint64_t)hash;
@end

@implementation CSDVoIPApplicationMessage

- (CSDVoIPApplicationMessage)initWithTransportType:(int64_t)type payload:(id)payload
{
  payloadCopy = payload;
  v14.receiver = self;
  v14.super_class = CSDVoIPApplicationMessage;
  v7 = [(CSDVoIPApplicationMessage *)&v14 init];
  v8 = v7;
  if (v7)
  {
    v7->_transportType = type;
    v9 = [payloadCopy copy];
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
  payload = [(CSDVoIPApplicationMessage *)self payload];
  [v3 appendFormat:@"%@=%@", v6, payload];

  [v3 appendFormat:@", "];
  v8 = NSStringFromSelector("uuid");
  uuid = [(CSDVoIPApplicationMessage *)self uuid];
  uUIDString = [uuid UUIDString];
  [v3 appendFormat:@"%@=%@", v8, uUIDString];

  [v3 appendFormat:@">"];
  v11 = [v3 copy];

  return v11;
}

- (unint64_t)hash
{
  uuid = [(CSDVoIPApplicationMessage *)self uuid];
  v3 = [uuid hash];

  return v3;
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
      v5 = [(CSDVoIPApplicationMessage *)self isEqualToMessage:equalCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToMessage:(id)message
{
  messageCopy = message;
  uuid = [(CSDVoIPApplicationMessage *)self uuid];
  uuid2 = [messageCopy uuid];

  LOBYTE(messageCopy) = [uuid isEqual:uuid2];
  return messageCopy;
}

@end