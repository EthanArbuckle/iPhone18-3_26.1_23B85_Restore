@interface PALTCCAttributionResolver
- (PALTCCAttributionResolver)init;
- (id)resolveAttributionForTCCAccess:(id)access clientProvidedIdentity:(id)identity;
@end

@implementation PALTCCAttributionResolver

- (PALTCCAttributionResolver)init
{
  v6.receiver = self;
  v6.super_class = PALTCCAttributionResolver;
  v2 = [(PALTCCAttributionResolver *)&v6 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.PrivacyAccounting", "PALTCCAttributionResolver");
    logger = v2->_logger;
    v2->_logger = v3;
  }

  return v2;
}

- (id)resolveAttributionForTCCAccess:(id)access clientProvidedIdentity:(id)identity
{
  accessCopy = access;
  identityCopy = identity;
  accessor = [accessCopy accessor];
  identifierType = [accessor identifierType];

  if (identifierType == 2)
  {
    accessor2 = [accessCopy accessor];
    v11 = accessor2;
    if (accessor2)
    {
      [accessor2 auditToken];
    }

    v13 = PAAuthenticatedClientIdentity();

    if (v13)
    {
      v14 = tcc_object_copy_description();
      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
      {
        sub_100006C44();
      }

      v15 = [[PAApplication alloc] initWithTCCIdentity:v13];
      if (v15)
      {
        v12 = [accessCopy copyWithNewAccessor:v15];
      }

      else
      {
        if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
        {
          sub_100006CBC();
        }

        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = accessCopy;
  }

  return v12;
}

@end