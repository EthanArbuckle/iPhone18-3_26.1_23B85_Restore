@interface SNConnectionInfo
- (SNConnectionInfo)init;
- (int64_t)communicationProtocolTechnology;
- (int64_t)connectionProtocolTechnology;
@end

@implementation SNConnectionInfo

- (SNConnectionInfo)init
{
  v6.receiver = self;
  v6.super_class = SNConnectionInfo;
  v2 = [(SNConnectionInfo *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(SNConnectionInfoInternal);
    underlyingConnectionInfo = v2->_underlyingConnectionInfo;
    v2->_underlyingConnectionInfo = v3;
  }

  return v2;
}

- (int64_t)connectionProtocolTechnology
{
  if ([(SNConnectionInfoInternal *)self->_underlyingConnectionInfo connectionProtocolTechnology]== 2)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (int64_t)communicationProtocolTechnology
{
  if ([(SNConnectionInfoInternal *)self->_underlyingConnectionInfo communicationProtocolTechnology]== 2)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

@end