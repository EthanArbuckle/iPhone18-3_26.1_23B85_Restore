@interface PBResponseMetadata
- (PBResponseMetadata)initWithAuthorizationStartTime:(unint64_t)time authorizationEndTime:(unint64_t)endTime authorizationAdmonished:(BOOL)admonished;
- (PBResponseMetadata)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PBResponseMetadata

- (PBResponseMetadata)initWithAuthorizationStartTime:(unint64_t)time authorizationEndTime:(unint64_t)endTime authorizationAdmonished:(BOOL)admonished
{
  v9.receiver = self;
  v9.super_class = PBResponseMetadata;
  result = [(PBResponseMetadata *)&v9 init];
  if (result)
  {
    result->_authorizationMachAbsoluteStartTime = time;
    result->_authorizationMachAbsoluteEndTime = endTime;
    result->_authorizationAdmonished = admonished;
  }

  return result;
}

- (PBResponseMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeInt64ForKey:@"authorizationStartTime"];
  v6 = [coderCopy decodeInt64ForKey:@"authorizationEndTime"];
  v7 = [coderCopy decodeBoolForKey:@"authorizationAdmonished"];

  return [(PBResponseMetadata *)self initWithAuthorizationStartTime:v5 authorizationEndTime:v6 authorizationAdmonished:v7];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:-[PBResponseMetadata authorizationMachAbsoluteStartTime](self forKey:{"authorizationMachAbsoluteStartTime"), @"authorizationStartTime"}];
  [coderCopy encodeInt64:-[PBResponseMetadata authorizationMachAbsoluteEndTime](self forKey:{"authorizationMachAbsoluteEndTime"), @"authorizationEndTime"}];
  [coderCopy encodeBool:-[PBResponseMetadata isAuthorizationAdmonished](self forKey:{"isAuthorizationAdmonished"), @"authorizationAdmonished"}];
}

@end