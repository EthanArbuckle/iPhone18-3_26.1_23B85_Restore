@interface WADeviceAnalytics_DHCPServerInfo
+ (id)dhcpServerInfoWithv4Signature:(id)signature v6Signature:(id)v6Signature;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation WADeviceAnalytics_DHCPServerInfo

+ (id)dhcpServerInfoWithv4Signature:(id)signature v6Signature:(id)v6Signature
{
  v15 = *MEMORY[0x1E69E9840];
  signatureCopy = signature;
  v6SignatureCopy = v6Signature;
  if (signatureCopy | v6SignatureCopy)
  {
    v7 = objc_opt_new();
    [v7 setIpv4networkSignature:signatureCopy];
    [v7 setIpv6networkSignature:v6SignatureCopy];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  ipv4networkSignature = [equalCopy ipv4networkSignature];
  if (!ipv4networkSignature)
  {
    ipv4networkSignature2 = [(WADeviceAnalytics_DHCPServerInfo *)self ipv4networkSignature];
    if (!ipv4networkSignature2)
    {
      ipv4networkSignature2 = 0;
      v9 = 0;
      goto LABEL_7;
    }
  }

  ipv4networkSignature3 = [equalCopy ipv4networkSignature];
  ipv4networkSignature4 = [(WADeviceAnalytics_DHCPServerInfo *)self ipv4networkSignature];
  if ([ipv4networkSignature3 isEqualToString:ipv4networkSignature4])
  {
    v9 = 1;
LABEL_7:
    ipv6networkSignature = [equalCopy ipv6networkSignature];
    if (ipv6networkSignature || ([(WADeviceAnalytics_DHCPServerInfo *)self ipv6networkSignature], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      ipv6networkSignature2 = [equalCopy ipv6networkSignature];
      ipv6networkSignature3 = [(WADeviceAnalytics_DHCPServerInfo *)self ipv6networkSignature];
      v10 = [ipv6networkSignature2 isEqualToString:ipv6networkSignature3];

      if (ipv6networkSignature)
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
  if (!ipv4networkSignature)
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

- (id)copyWithZone:(_NSZone *)zone
{
  ipv4networkSignature = [(WADeviceAnalytics_DHCPServerInfo *)self ipv4networkSignature];
  ipv6networkSignature = [(WADeviceAnalytics_DHCPServerInfo *)self ipv6networkSignature];
  v6 = [WADeviceAnalytics_DHCPServerInfo dhcpServerInfoWithv4Signature:ipv4networkSignature v6Signature:ipv6networkSignature];

  return v6;
}

@end