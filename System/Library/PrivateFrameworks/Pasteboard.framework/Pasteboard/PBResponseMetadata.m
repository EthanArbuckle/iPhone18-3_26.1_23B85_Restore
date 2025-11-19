@interface PBResponseMetadata
- (PBResponseMetadata)initWithAuthorizationStartTime:(unint64_t)a3 authorizationEndTime:(unint64_t)a4 authorizationAdmonished:(BOOL)a5;
- (PBResponseMetadata)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PBResponseMetadata

- (PBResponseMetadata)initWithAuthorizationStartTime:(unint64_t)a3 authorizationEndTime:(unint64_t)a4 authorizationAdmonished:(BOOL)a5
{
  v9.receiver = self;
  v9.super_class = PBResponseMetadata;
  result = [(PBResponseMetadata *)&v9 init];
  if (result)
  {
    result->_authorizationMachAbsoluteStartTime = a3;
    result->_authorizationMachAbsoluteEndTime = a4;
    result->_authorizationAdmonished = a5;
  }

  return result;
}

- (PBResponseMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeInt64ForKey:@"authorizationStartTime"];
  v6 = [v4 decodeInt64ForKey:@"authorizationEndTime"];
  v7 = [v4 decodeBoolForKey:@"authorizationAdmonished"];

  return [(PBResponseMetadata *)self initWithAuthorizationStartTime:v5 authorizationEndTime:v6 authorizationAdmonished:v7];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt64:-[PBResponseMetadata authorizationMachAbsoluteStartTime](self forKey:{"authorizationMachAbsoluteStartTime"), @"authorizationStartTime"}];
  [v4 encodeInt64:-[PBResponseMetadata authorizationMachAbsoluteEndTime](self forKey:{"authorizationMachAbsoluteEndTime"), @"authorizationEndTime"}];
  [v4 encodeBool:-[PBResponseMetadata isAuthorizationAdmonished](self forKey:{"isAuthorizationAdmonished"), @"authorizationAdmonished"}];
}

@end