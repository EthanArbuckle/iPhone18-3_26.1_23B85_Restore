@interface RCDebugOverrides
+ (id)defaultDebugOverrides;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (RCDebugOverrides)initWithDisableAbTesting:(BOOL)testing overrideSegmentSetIDs:(id)ds additionalSegmentSetIDs:(id)iDs configurationSource:(unint64_t)source debugEnvironment:(unint64_t)environment ignoreCache:(BOOL)cache enableExtraLogs:(BOOL)logs;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
@end

@implementation RCDebugOverrides

+ (id)defaultDebugOverrides
{
  LOBYTE(v4) = 0;
  v2 = [[RCDebugOverrides alloc] initWithDisableAbTesting:0 overrideSegmentSetIDs:0 additionalSegmentSetIDs:0 configurationSource:0 debugEnvironment:0 ignoreCache:0 enableExtraLogs:v4];

  return v2;
}

- (RCDebugOverrides)initWithDisableAbTesting:(BOOL)testing overrideSegmentSetIDs:(id)ds additionalSegmentSetIDs:(id)iDs configurationSource:(unint64_t)source debugEnvironment:(unint64_t)environment ignoreCache:(BOOL)cache enableExtraLogs:(BOOL)logs
{
  dsCopy = ds;
  iDsCopy = iDs;
  v21.receiver = self;
  v21.super_class = RCDebugOverrides;
  v18 = [(RCDebugOverrides *)&v21 init];
  v19 = v18;
  if (v18)
  {
    v18->_disableAbTesting = testing;
    objc_storeStrong(&v18->_overrideSegmentSetIDs, ds);
    objc_storeStrong(&v19->_additionalSegmentSetIDs, iDs);
    v19->_configurationSource = source;
    v19->_debugEnvironment = environment;
    v19->_ignoreCache = cache;
    v19->_enableExtraLogs = logs;
  }

  return v19;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    disableAbTesting = [(RCDebugOverrides *)self disableAbTesting];
    if (disableAbTesting == [v5 disableAbTesting])
    {
      v8 = MEMORY[0x277D82BB8];
      overrideSegmentSetIDs = [(RCDebugOverrides *)self overrideSegmentSetIDs];
      overrideSegmentSetIDs2 = [v5 overrideSegmentSetIDs];
      if ([v8 rc_object:overrideSegmentSetIDs isEqualToObject:overrideSegmentSetIDs2])
      {
        v11 = MEMORY[0x277D82BB8];
        additionalSegmentSetIDs = [(RCDebugOverrides *)self additionalSegmentSetIDs];
        additionalSegmentSetIDs2 = [v5 additionalSegmentSetIDs];
        if ([v11 rc_object:additionalSegmentSetIDs isEqualToObject:additionalSegmentSetIDs2] && (v14 = -[RCDebugOverrides configurationSource](self, "configurationSource"), v14 == objc_msgSend(v5, "configurationSource")) && (v15 = -[RCDebugOverrides debugEnvironment](self, "debugEnvironment"), v15 == objc_msgSend(v5, "debugEnvironment")) && (v16 = -[RCDebugOverrides ignoreCache](self, "ignoreCache"), v16 == objc_msgSend(v5, "ignoreCache")))
        {
          enableExtraLogs = [(RCDebugOverrides *)self enableExtraLogs];
          v7 = enableExtraLogs ^ [v5 enableExtraLogs] ^ 1;
        }

        else
        {
          LOBYTE(v7) = 0;
        }
      }

      else
      {
        LOBYTE(v7) = 0;
      }
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CCABB0] numberWithBool:{-[RCDebugOverrides disableAbTesting](self, "disableAbTesting")}];
  v4 = [v3 hash];
  overrideSegmentSetIDs = [(RCDebugOverrides *)self overrideSegmentSetIDs];
  v6 = [overrideSegmentSetIDs hash];
  additionalSegmentSetIDs = [(RCDebugOverrides *)self additionalSegmentSetIDs];
  v8 = v6 ^ [additionalSegmentSetIDs hash] ^ v4;
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RCDebugOverrides configurationSource](self, "configurationSource")}];
  v10 = [v9 hash];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RCDebugOverrides debugEnvironment](self, "debugEnvironment")}];
  v12 = v8 ^ v10 ^ [v11 hash];
  v13 = [MEMORY[0x277CCABB0] numberWithBool:{-[RCDebugOverrides ignoreCache](self, "ignoreCache")}];
  v14 = [v13 hash];
  v15 = [MEMORY[0x277CCABB0] numberWithBool:{-[RCDebugOverrides enableExtraLogs](self, "enableExtraLogs")}];
  v16 = v14 ^ [v15 hash];

  return v12 ^ v16;
}

- (NSString)description
{
  v11 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  disableAbTesting = [(RCDebugOverrides *)self disableAbTesting];
  overrideSegmentSetIDs = [(RCDebugOverrides *)self overrideSegmentSetIDs];
  rc_description = [overrideSegmentSetIDs rc_description];
  additionalSegmentSetIDs = [(RCDebugOverrides *)self additionalSegmentSetIDs];
  rc_description2 = [additionalSegmentSetIDs rc_description];
  v9 = [v11 stringWithFormat:@"<%@: %p disableAbTesting: %d overrideSegmentSetIDs: %@ additionalSegmentSetIDs: %@ configurationSource: %lu debugEnvironment: %lu ignoreCache: %d enableExtraLogs: %d>", v3, self, disableAbTesting, rc_description, rc_description2, -[RCDebugOverrides configurationSource](self, "configurationSource"), -[RCDebugOverrides debugEnvironment](self, "debugEnvironment"), -[RCDebugOverrides ignoreCache](self, "ignoreCache"), -[RCDebugOverrides enableExtraLogs](self, "enableExtraLogs")];;

  return v9;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[RCDebugOverrides disableAbTesting](self, "disableAbTesting")}];
  [dictionary rc_safelySetObjectAllowingNil:v4 forKey:@"disableAbTesting"];

  overrideSegmentSetIDs = [(RCDebugOverrides *)self overrideSegmentSetIDs];
  [dictionary rc_safelySetObjectAllowingNil:overrideSegmentSetIDs forKey:@"overrideSegmentSetIds"];

  additionalSegmentSetIDs = [(RCDebugOverrides *)self additionalSegmentSetIDs];
  [dictionary rc_safelySetObjectAllowingNil:additionalSegmentSetIDs forKey:@"additionalSegmentSetIds"];

  v7 = [dictionary copy];

  return v7;
}

@end