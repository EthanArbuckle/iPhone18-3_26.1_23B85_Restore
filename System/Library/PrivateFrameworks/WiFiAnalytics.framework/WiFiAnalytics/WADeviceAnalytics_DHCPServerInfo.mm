@interface WADeviceAnalytics_DHCPServerInfo
+ (id)dhcpServerInfoWithv4Signature:(id)a3 v6Signature:(id)a4;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation WADeviceAnalytics_DHCPServerInfo

+ (id)dhcpServerInfoWithv4Signature:(id)a3 v6Signature:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (v5 | v6)
  {
    v7 = objc_opt_new();
    [v7 setIpv4networkSignature:v5];
    [v7 setIpv6networkSignature:v6];
  }

  else
  {
    v10 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = 136446466;
      v12 = "+[WADeviceAnalytics_DHCPServerInfo dhcpServerInfoWithv4Signature:v6Signature:]";
      v13 = 1024;
      v14 = 20;
      _os_log_impl(&dword_1C8460000, v10, OS_LOG_TYPE_ERROR, "%{public}s::%d:both signatures are nil - bailing", &v11, 0x12u);
    }

    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v7 = a3;
  v8 = [v7 ipv4networkSignature];
  if (!v8)
  {
    v15 = [(WADeviceAnalytics_DHCPServerInfo *)self ipv4networkSignature];
    if (!v15)
    {
      v15 = 0;
      v9 = 0;
      goto LABEL_7;
    }
  }

  v3 = [v7 ipv4networkSignature];
  v4 = [(WADeviceAnalytics_DHCPServerInfo *)self ipv4networkSignature];
  if ([v3 isEqualToString:v4])
  {
    v9 = 1;
LABEL_7:
    v11 = [v7 ipv6networkSignature];
    if (v11 || ([(WADeviceAnalytics_DHCPServerInfo *)self ipv6networkSignature], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v12 = [v7 ipv6networkSignature];
      v13 = [(WADeviceAnalytics_DHCPServerInfo *)self ipv6networkSignature];
      v10 = [v12 isEqualToString:v13];

      if (v11)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v10 = 1;
    }

LABEL_13:
    if (!v9)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v10 = 0;
LABEL_14:

LABEL_15:
  if (!v8)
  {
  }

  return v10;
}

- (unint64_t)hash
{
  v2 = [(WADeviceAnalytics_DHCPServerInfo *)self description];
  v3 = [v2 hash];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(WADeviceAnalytics_DHCPServerInfo *)self ipv4networkSignature];
  v5 = [(WADeviceAnalytics_DHCPServerInfo *)self ipv6networkSignature];
  v6 = [WADeviceAnalytics_DHCPServerInfo dhcpServerInfoWithv4Signature:v4 v6Signature:v5];

  return v6;
}

@end