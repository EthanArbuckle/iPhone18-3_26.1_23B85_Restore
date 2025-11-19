@interface LANMO
+ (BOOL)verifyConstraints:(id)a3 withError:(id *)a4;
+ (id)constraintsWithDhcpServerInfo:(id)a3;
+ (id)predicateForLANsInNetwork:(id)a3 withError:(id *)a4;
+ (id)predicateForLanContainingBSS:(id)a3 withError:(id *)a4;
- (BOOL)isEnterprise;
- (BOOL)isPublic;
@end

@implementation LANMO

+ (BOOL)verifyConstraints:(id)a3 withError:(id *)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"ipv4NetworkSignature"];
  if (v6)
  {

LABEL_4:
    LOBYTE(a4) = 1;
    goto LABEL_5;
  }

  v7 = [v5 objectForKeyedSubscript:@"ipv6NetworkSignature"];

  if (v7)
  {
    goto LABEL_4;
  }

  v10 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = [v5 objectForKeyedSubscript:@"ipv4NetworkSignature"];
    if (v11)
    {
      v12 = @"not nil";
    }

    else
    {
      v12 = @"nil";
    }

    v13 = [v5 objectForKeyedSubscript:@"ipv6NetworkSignature"];
    v20 = "+[LANMO verifyConstraints:withError:]";
    *buf = 136446978;
    if (v13)
    {
      v14 = @"not nil";
    }

    else
    {
      v14 = @"nil";
    }

    v21 = 1024;
    v22 = 24;
    v23 = 2112;
    v24 = v12;
    v25 = 2112;
    v26 = v14;
    _os_log_impl(&dword_1C8460000, v10, OS_LOG_TYPE_ERROR, "%{public}s::%d:Neither ipv4 signature (%@) nor ipv6 signature (%@) were provided", buf, 0x26u);
  }

  if (a4)
  {
    v15 = MEMORY[0x1E696ABC0];
    v17 = *MEMORY[0x1E696A588];
    v18 = @"WAErrorCodeLacksRequiredArgument";
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    *a4 = [v15 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9010 userInfo:v16];

    LOBYTE(a4) = 0;
  }

LABEL_5:

  v8 = *MEMORY[0x1E69E9840];
  return a4;
}

- (BOOL)isEnterprise
{
  v2 = [(LANMO *)self bsses];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF.network.authFlags != nil && (SELF.network.authFlags & %u) != 0", 8];
  v4 = [WAUtil filterSet:v2 usingPredicate:v3];
  v5 = [v4 count] != 0;

  return v5;
}

- (BOOL)isPublic
{
  v2 = [(LANMO *)self bsses];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF.network.isPublic = YES"];
  v4 = [WAUtil filterSet:v2 usingPredicate:v3];
  v5 = [v4 count] != 0;

  return v5;
}

+ (id)constraintsWithDhcpServerInfo:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 ipv4networkSignature];
  [v4 setValue:v5 forKey:@"ipv4NetworkSignature"];

  v6 = [v3 ipv6networkSignature];

  [v4 setValue:v6 forKey:@"ipv6NetworkSignature"];

  return v4;
}

+ (id)predicateForLANsInNetwork:(id)a3 withError:(id *)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"SUBQUERY(bsses, $b, $b.network == %@).@count > 0", v5];
    a4 = LABEL_5:;
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"SUBQUERY(bsses, $b, $b.network.ssid == %@).@count > 0", v5];
    goto LABEL_5;
  }

  if (a4)
  {
    v8 = MEMORY[0x1E696ABC0];
    v11 = *MEMORY[0x1E696A588];
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalid network %@ (%@)", objc_opt_class(), v5];
    v12[0] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    *a4 = [v8 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9039 userInfo:v10];

    a4 = 0;
  }

LABEL_6:

  v6 = *MEMORY[0x1E69E9840];

  return a4;
}

+ (id)predicateForLanContainingBSS:(id)a3 withError:(id *)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    a4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SUBQUERY(bsses, $bss, $bss == %@).@count > 0", v5];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = MEMORY[0x1E696AE18];
      v7 = [BSSMO formattedMACAddressNotation:v5 as:6];
      a4 = [v6 predicateWithFormat:@"SUBQUERY(bsses, $bss, $bss.bssid == %@).@count > 0", v7];
    }

    else if (a4)
    {
      v8 = MEMORY[0x1E696ABC0];
      v13 = *MEMORY[0x1E696A588];
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalid bss %@ (%@)", objc_opt_class(), v5];
      v14[0] = v9;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      *a4 = [v8 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9038 userInfo:v10];

      a4 = 0;
    }
  }

  v11 = *MEMORY[0x1E69E9840];

  return a4;
}

@end