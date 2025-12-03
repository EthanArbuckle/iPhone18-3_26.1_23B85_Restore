@interface TUConversationVirtualParticipantConfig
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToConversationVirtualParticipantConfig:(id)config;
- (TUConversationVirtualParticipantConfig)initWithCoder:(id)coder;
- (TUConversationVirtualParticipantConfig)initWithConnectionRetryIntervalMillis:(unint64_t)millis connectionMaxAttempts:(unint64_t)attempts rpcStreamRetryIntervalMillis:(unint64_t)intervalMillis rpcStreamMaxAttempts:(unint64_t)maxAttempts serverCertValidationEnabled:(BOOL)enabled serverCertHostnameOverride:(id)override serverCertLeafMarkerOIDOverride:(id)dOverride;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUConversationVirtualParticipantConfig

- (TUConversationVirtualParticipantConfig)initWithConnectionRetryIntervalMillis:(unint64_t)millis connectionMaxAttempts:(unint64_t)attempts rpcStreamRetryIntervalMillis:(unint64_t)intervalMillis rpcStreamMaxAttempts:(unint64_t)maxAttempts serverCertValidationEnabled:(BOOL)enabled serverCertHostnameOverride:(id)override serverCertLeafMarkerOIDOverride:(id)dOverride
{
  overrideCopy = override;
  dOverrideCopy = dOverride;
  v21.receiver = self;
  v21.super_class = TUConversationVirtualParticipantConfig;
  v18 = [(TUConversationVirtualParticipantConfig *)&v21 init];
  v19 = v18;
  if (v18)
  {
    v18->_connectionRetryIntervalMillis = millis;
    v18->_connectionMaxAttempts = attempts;
    v18->_rpcStreamRetryIntervalMillis = intervalMillis;
    v18->_rpcStreamMaxAttempts = maxAttempts;
    v18->_serverCertValidationEnabled = enabled;
    objc_storeStrong(&v18->_serverCertHostnameOverride, override);
    objc_storeStrong(&v19->_serverCertLeafMarkerOIDOverride, dOverride);
  }

  return v19;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@" connectionRetryIntervalMillis=%lu", -[TUConversationVirtualParticipantConfig connectionRetryIntervalMillis](self, "connectionRetryIntervalMillis")];
  [v3 appendFormat:@" connectionMaxAttempts=%lu", -[TUConversationVirtualParticipantConfig connectionMaxAttempts](self, "connectionMaxAttempts")];
  [v3 appendFormat:@" rpcStreamRetryIntervalMillis=%lu", -[TUConversationVirtualParticipantConfig rpcStreamRetryIntervalMillis](self, "rpcStreamRetryIntervalMillis")];
  [v3 appendFormat:@" rpcStreamRetryIntervalMaxAttempts=%lu", -[TUConversationVirtualParticipantConfig rpcStreamMaxAttempts](self, "rpcStreamMaxAttempts")];
  serverCertValidationEnabled = [(TUConversationVirtualParticipantConfig *)self serverCertValidationEnabled];
  v5 = "NO";
  if (serverCertValidationEnabled)
  {
    v5 = "YES";
  }

  [v3 appendFormat:@" serverCertValidationEnabled=%s", v5];
  serverCertHostnameOverride = [(TUConversationVirtualParticipantConfig *)self serverCertHostnameOverride];

  if (serverCertHostnameOverride)
  {
    serverCertHostnameOverride2 = [(TUConversationVirtualParticipantConfig *)self serverCertHostnameOverride];
    [v3 appendFormat:@" serverCertHostnameOverride=%@", serverCertHostnameOverride2];
  }

  serverCertLeafMarkerOIDOverride = [(TUConversationVirtualParticipantConfig *)self serverCertLeafMarkerOIDOverride];

  if (serverCertLeafMarkerOIDOverride)
  {
    serverCertLeafMarkerOIDOverride2 = [(TUConversationVirtualParticipantConfig *)self serverCertLeafMarkerOIDOverride];
    [v3 appendFormat:@" serverCertLeafMarkerOIDOverride=%@", serverCertLeafMarkerOIDOverride2];
  }

  [v3 appendString:@">"];
  v10 = [v3 copy];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUConversationVirtualParticipantConfig *)self isEqualToConversationVirtualParticipantConfig:equalCopy];

  return v5;
}

- (BOOL)isEqualToConversationVirtualParticipantConfig:(id)config
{
  configCopy = config;
  connectionRetryIntervalMillis = [(TUConversationVirtualParticipantConfig *)self connectionRetryIntervalMillis];
  if (connectionRetryIntervalMillis == [configCopy connectionRetryIntervalMillis])
  {
    connectionMaxAttempts = [(TUConversationVirtualParticipantConfig *)self connectionMaxAttempts];
    if (connectionMaxAttempts == [configCopy connectionMaxAttempts])
    {
      rpcStreamRetryIntervalMillis = [(TUConversationVirtualParticipantConfig *)self rpcStreamRetryIntervalMillis];
      if (rpcStreamRetryIntervalMillis == [configCopy rpcStreamRetryIntervalMillis])
      {
        rpcStreamMaxAttempts = [(TUConversationVirtualParticipantConfig *)self rpcStreamMaxAttempts];
        if (rpcStreamMaxAttempts == [configCopy rpcStreamMaxAttempts])
        {
          serverCertValidationEnabled = [(TUConversationVirtualParticipantConfig *)self serverCertValidationEnabled];
          if (serverCertValidationEnabled == [configCopy serverCertValidationEnabled])
          {
            serverCertHostnameOverride = [(TUConversationVirtualParticipantConfig *)self serverCertHostnameOverride];
            serverCertHostnameOverride2 = [configCopy serverCertHostnameOverride];
            if (serverCertHostnameOverride != serverCertHostnameOverride2)
            {
              serverCertHostnameOverride3 = [(TUConversationVirtualParticipantConfig *)self serverCertHostnameOverride];
              serverCertHostnameOverride4 = [configCopy serverCertHostnameOverride];
              if (![serverCertHostnameOverride3 isEqualToString:serverCertHostnameOverride4])
              {
                v12 = 0;
                goto LABEL_21;
              }
            }

            serverCertLeafMarkerOIDOverride = [(TUConversationVirtualParticipantConfig *)self serverCertLeafMarkerOIDOverride];
            serverCertLeafMarkerOIDOverride2 = [configCopy serverCertLeafMarkerOIDOverride];
            if (serverCertLeafMarkerOIDOverride != serverCertLeafMarkerOIDOverride2)
            {
              serverCertLeafMarkerOIDOverride3 = [(TUConversationVirtualParticipantConfig *)self serverCertLeafMarkerOIDOverride];
              serverCertLeafMarkerOIDOverride4 = [configCopy serverCertLeafMarkerOIDOverride];
              if (![serverCertLeafMarkerOIDOverride3 isEqualToString:serverCertLeafMarkerOIDOverride4])
              {
                v12 = 0;
                goto LABEL_19;
              }

              v30 = serverCertLeafMarkerOIDOverride4;
              v31 = serverCertLeafMarkerOIDOverride3;
            }

            idsAliasingSalt = [(TUConversationVirtualParticipantConfig *)self idsAliasingSalt];
            idsAliasingSalt2 = [configCopy idsAliasingSalt];
            v22 = idsAliasingSalt2;
            if (idsAliasingSalt == idsAliasingSalt2)
            {

              v12 = 1;
            }

            else
            {
              [(TUConversationVirtualParticipantConfig *)self idsAliasingSalt];
              v23 = v29 = serverCertHostnameOverride3;
              [configCopy idsAliasingSalt];
              v28 = serverCertLeafMarkerOIDOverride;
              v24 = serverCertHostnameOverride2;
              v25 = serverCertHostnameOverride;
              v27 = v26 = serverCertHostnameOverride4;
              v12 = [v23 isEqualToData:v27];

              serverCertHostnameOverride4 = v26;
              serverCertHostnameOverride = v25;
              serverCertHostnameOverride2 = v24;
              serverCertLeafMarkerOIDOverride = v28;

              serverCertHostnameOverride3 = v29;
            }

            serverCertLeafMarkerOIDOverride4 = v30;
            serverCertLeafMarkerOIDOverride3 = v31;
            if (serverCertLeafMarkerOIDOverride == serverCertLeafMarkerOIDOverride2)
            {
LABEL_20:

              if (serverCertHostnameOverride == serverCertHostnameOverride2)
              {
LABEL_22:

                goto LABEL_7;
              }

LABEL_21:

              goto LABEL_22;
            }

LABEL_19:

            goto LABEL_20;
          }
        }
      }
    }
  }

  v12 = 0;
LABEL_7:

  return v12;
}

- (unint64_t)hash
{
  connectionRetryIntervalMillis = [(TUConversationVirtualParticipantConfig *)self connectionRetryIntervalMillis];
  v4 = [(TUConversationVirtualParticipantConfig *)self connectionMaxAttempts]^ connectionRetryIntervalMillis;
  rpcStreamRetryIntervalMillis = [(TUConversationVirtualParticipantConfig *)self rpcStreamRetryIntervalMillis];
  v6 = v4 ^ rpcStreamRetryIntervalMillis ^ [(TUConversationVirtualParticipantConfig *)self rpcStreamMaxAttempts];
  serverCertValidationEnabled = [(TUConversationVirtualParticipantConfig *)self serverCertValidationEnabled];
  v8 = 1237;
  if (serverCertValidationEnabled)
  {
    v8 = 1231;
  }

  v9 = v6 ^ v8;
  serverCertHostnameOverride = [(TUConversationVirtualParticipantConfig *)self serverCertHostnameOverride];
  v11 = [serverCertHostnameOverride hash];
  serverCertLeafMarkerOIDOverride = [(TUConversationVirtualParticipantConfig *)self serverCertLeafMarkerOIDOverride];
  v13 = v11 ^ [serverCertLeafMarkerOIDOverride hash];
  idsAliasingSalt = [(TUConversationVirtualParticipantConfig *)self idsAliasingSalt];
  v15 = v13 ^ [idsAliasingSalt hash];

  return v9 ^ v15;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  connectionRetryIntervalMillis = [(TUConversationVirtualParticipantConfig *)self connectionRetryIntervalMillis];
  connectionMaxAttempts = [(TUConversationVirtualParticipantConfig *)self connectionMaxAttempts];
  rpcStreamRetryIntervalMillis = [(TUConversationVirtualParticipantConfig *)self rpcStreamRetryIntervalMillis];
  rpcStreamMaxAttempts = [(TUConversationVirtualParticipantConfig *)self rpcStreamMaxAttempts];
  serverCertValidationEnabled = [(TUConversationVirtualParticipantConfig *)self serverCertValidationEnabled];
  serverCertHostnameOverride = [(TUConversationVirtualParticipantConfig *)self serverCertHostnameOverride];
  serverCertLeafMarkerOIDOverride = [(TUConversationVirtualParticipantConfig *)self serverCertLeafMarkerOIDOverride];
  v12 = [v4 initWithConnectionRetryIntervalMillis:connectionRetryIntervalMillis connectionMaxAttempts:connectionMaxAttempts rpcStreamRetryIntervalMillis:rpcStreamRetryIntervalMillis rpcStreamMaxAttempts:rpcStreamMaxAttempts serverCertValidationEnabled:serverCertValidationEnabled serverCertHostnameOverride:serverCertHostnameOverride serverCertLeafMarkerOIDOverride:serverCertLeafMarkerOIDOverride];

  idsAliasingSalt = [(TUConversationVirtualParticipantConfig *)self idsAliasingSalt];
  [v12 setIdsAliasingSalt:idsAliasingSalt];

  return v12;
}

- (TUConversationVirtualParticipantConfig)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_connectionRetryIntervalMillis);
  v6 = [coderCopy decodeIntegerForKey:v5];

  v7 = NSStringFromSelector(sel_connectionMaxAttempts);
  v8 = [coderCopy decodeIntegerForKey:v7];

  v9 = NSStringFromSelector(sel_rpcStreamRetryIntervalMillis);
  v10 = [coderCopy decodeIntegerForKey:v9];

  v11 = NSStringFromSelector(sel_rpcStreamMaxAttempts);
  v12 = [coderCopy decodeIntegerForKey:v11];

  v13 = NSStringFromSelector(sel_serverCertValidationEnabled);
  v14 = [coderCopy decodeBoolForKey:v13];

  v15 = objc_opt_class();
  v16 = NSStringFromSelector(sel_serverCertHostnameOverride);
  v17 = [coderCopy decodeObjectOfClass:v15 forKey:v16];

  v18 = objc_opt_class();
  v19 = NSStringFromSelector(sel_serverCertLeafMarkerOIDOverride);
  v20 = [coderCopy decodeObjectOfClass:v18 forKey:v19];

  v21 = [(TUConversationVirtualParticipantConfig *)self initWithConnectionRetryIntervalMillis:v6 connectionMaxAttempts:v8 rpcStreamRetryIntervalMillis:v10 rpcStreamMaxAttempts:v12 serverCertValidationEnabled:v14 serverCertHostnameOverride:v17 serverCertLeafMarkerOIDOverride:v20];
  if (v21)
  {
    v22 = objc_opt_class();
    v23 = NSStringFromSelector(sel_idsAliasingSalt);
    v24 = [coderCopy decodeObjectOfClass:v22 forKey:v23];
    [(TUConversationVirtualParticipantConfig *)v21 setIdsAliasingSalt:v24];
  }

  return v21;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  connectionRetryIntervalMillis = [(TUConversationVirtualParticipantConfig *)self connectionRetryIntervalMillis];
  v6 = NSStringFromSelector(sel_connectionRetryIntervalMillis);
  [coderCopy encodeInteger:connectionRetryIntervalMillis forKey:v6];

  connectionMaxAttempts = [(TUConversationVirtualParticipantConfig *)self connectionMaxAttempts];
  v8 = NSStringFromSelector(sel_connectionMaxAttempts);
  [coderCopy encodeInteger:connectionMaxAttempts forKey:v8];

  rpcStreamRetryIntervalMillis = [(TUConversationVirtualParticipantConfig *)self rpcStreamRetryIntervalMillis];
  v10 = NSStringFromSelector(sel_rpcStreamRetryIntervalMillis);
  [coderCopy encodeInteger:rpcStreamRetryIntervalMillis forKey:v10];

  rpcStreamMaxAttempts = [(TUConversationVirtualParticipantConfig *)self rpcStreamMaxAttempts];
  v12 = NSStringFromSelector(sel_rpcStreamMaxAttempts);
  [coderCopy encodeInteger:rpcStreamMaxAttempts forKey:v12];

  serverCertValidationEnabled = [(TUConversationVirtualParticipantConfig *)self serverCertValidationEnabled];
  v14 = NSStringFromSelector(sel_serverCertValidationEnabled);
  [coderCopy encodeBool:serverCertValidationEnabled forKey:v14];

  serverCertHostnameOverride = [(TUConversationVirtualParticipantConfig *)self serverCertHostnameOverride];
  v16 = NSStringFromSelector(sel_serverCertHostnameOverride);
  [coderCopy encodeObject:serverCertHostnameOverride forKey:v16];

  serverCertLeafMarkerOIDOverride = [(TUConversationVirtualParticipantConfig *)self serverCertLeafMarkerOIDOverride];
  v18 = NSStringFromSelector(sel_serverCertLeafMarkerOIDOverride);
  [coderCopy encodeObject:serverCertLeafMarkerOIDOverride forKey:v18];

  idsAliasingSalt = [(TUConversationVirtualParticipantConfig *)self idsAliasingSalt];
  v19 = NSStringFromSelector(sel_idsAliasingSalt);
  [coderCopy encodeObject:idsAliasingSalt forKey:v19];
}

@end