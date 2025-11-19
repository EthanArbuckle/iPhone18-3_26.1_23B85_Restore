@interface RCDebugOverrides
+ (id)defaultDebugOverrides;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (RCDebugOverrides)initWithDisableAbTesting:(BOOL)a3 overrideSegmentSetIDs:(id)a4 additionalSegmentSetIDs:(id)a5 configurationSource:(unint64_t)a6 debugEnvironment:(unint64_t)a7 ignoreCache:(BOOL)a8 enableExtraLogs:(BOOL)a9;
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

- (RCDebugOverrides)initWithDisableAbTesting:(BOOL)a3 overrideSegmentSetIDs:(id)a4 additionalSegmentSetIDs:(id)a5 configurationSource:(unint64_t)a6 debugEnvironment:(unint64_t)a7 ignoreCache:(BOOL)a8 enableExtraLogs:(BOOL)a9
{
  v16 = a4;
  v17 = a5;
  v21.receiver = self;
  v21.super_class = RCDebugOverrides;
  v18 = [(RCDebugOverrides *)&v21 init];
  v19 = v18;
  if (v18)
  {
    v18->_disableAbTesting = a3;
    objc_storeStrong(&v18->_overrideSegmentSetIDs, a4);
    objc_storeStrong(&v19->_additionalSegmentSetIDs, a5);
    v19->_configurationSource = a6;
    v19->_debugEnvironment = a7;
    v19->_ignoreCache = a8;
    v19->_enableExtraLogs = a9;
  }

  return v19;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(RCDebugOverrides *)self disableAbTesting];
    if (v6 == [v5 disableAbTesting])
    {
      v8 = MEMORY[0x277D82BB8];
      v9 = [(RCDebugOverrides *)self overrideSegmentSetIDs];
      v10 = [v5 overrideSegmentSetIDs];
      if ([v8 rc_object:v9 isEqualToObject:v10])
      {
        v11 = MEMORY[0x277D82BB8];
        v12 = [(RCDebugOverrides *)self additionalSegmentSetIDs];
        v13 = [v5 additionalSegmentSetIDs];
        if ([v11 rc_object:v12 isEqualToObject:v13] && (v14 = -[RCDebugOverrides configurationSource](self, "configurationSource"), v14 == objc_msgSend(v5, "configurationSource")) && (v15 = -[RCDebugOverrides debugEnvironment](self, "debugEnvironment"), v15 == objc_msgSend(v5, "debugEnvironment")) && (v16 = -[RCDebugOverrides ignoreCache](self, "ignoreCache"), v16 == objc_msgSend(v5, "ignoreCache")))
        {
          v18 = [(RCDebugOverrides *)self enableExtraLogs];
          v7 = v18 ^ [v5 enableExtraLogs] ^ 1;
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
  v5 = [(RCDebugOverrides *)self overrideSegmentSetIDs];
  v6 = [v5 hash];
  v7 = [(RCDebugOverrides *)self additionalSegmentSetIDs];
  v8 = v6 ^ [v7 hash] ^ v4;
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
  v4 = [(RCDebugOverrides *)self disableAbTesting];
  v5 = [(RCDebugOverrides *)self overrideSegmentSetIDs];
  v6 = [v5 rc_description];
  v7 = [(RCDebugOverrides *)self additionalSegmentSetIDs];
  v8 = [v7 rc_description];
  v9 = [v11 stringWithFormat:@"<%@: %p disableAbTesting: %d overrideSegmentSetIDs: %@ additionalSegmentSetIDs: %@ configurationSource: %lu debugEnvironment: %lu ignoreCache: %d enableExtraLogs: %d>", v3, self, v4, v6, v8, -[RCDebugOverrides configurationSource](self, "configurationSource"), -[RCDebugOverrides debugEnvironment](self, "debugEnvironment"), -[RCDebugOverrides ignoreCache](self, "ignoreCache"), -[RCDebugOverrides enableExtraLogs](self, "enableExtraLogs")];;

  return v9;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[RCDebugOverrides disableAbTesting](self, "disableAbTesting")}];
  [v3 rc_safelySetObjectAllowingNil:v4 forKey:@"disableAbTesting"];

  v5 = [(RCDebugOverrides *)self overrideSegmentSetIDs];
  [v3 rc_safelySetObjectAllowingNil:v5 forKey:@"overrideSegmentSetIds"];

  v6 = [(RCDebugOverrides *)self additionalSegmentSetIDs];
  [v3 rc_safelySetObjectAllowingNil:v6 forKey:@"additionalSegmentSetIds"];

  v7 = [v3 copy];

  return v7;
}

@end