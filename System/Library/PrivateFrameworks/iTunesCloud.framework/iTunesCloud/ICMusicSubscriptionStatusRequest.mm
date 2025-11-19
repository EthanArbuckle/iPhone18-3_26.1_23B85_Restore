@interface ICMusicSubscriptionStatusRequest
- (BOOL)isEqual:(id)a3;
- (ICMusicSubscriptionStatusRequest)initWithCoder:(id)a3;
- (ICMusicSubscriptionStatusRequest)initWithStoreRequestContext:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ICMusicSubscriptionStatusRequest

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@: %p", v5, self];

  [v6 appendFormat:@"; storeRequestContext = %@", self->_storeRequestContext];
  if (self->_allowsFallbackToExpiredStatus)
  {
    [v6 appendString:@"; allowsFallbackToExpiredStatus = YES"];
  }

  if (self->_allowsFallbackToStatusNeedingReload)
  {
    [v6 appendString:@"; allowsFallbackToStatusNeedingReload = YES"];
  }

  carrierBundleProvisioningStyle = self->_carrierBundleProvisioningStyle;
  if (carrierBundleProvisioningStyle > 2)
  {
    v8 = 0;
  }

  else
  {
    v8 = off_1E7BF6520[carrierBundleProvisioningStyle];
  }

  [v6 appendFormat:@"; carrierBundleProvisioningStyle = %@", v8];
  if (self->_reason == 1)
  {
    [v6 appendFormat:@"; reason = %@", @"deepLink"];
  }

  if (self->_shouldIgnoreCache)
  {
    [v6 appendString:@"; shouldIgnoreCache = YES"];
  }

  if (self->_shouldReturnLastKnownStatusOnly)
  {
    [v6 appendString:@"; shouldReturnLastKnownStatusOnly = YES"];
  }

  if (self->_shouldBypassEnforcementOfPrivacyAcknowledgement)
  {
    [v6 appendString:@"; shouldBypassEnforcementOfPrivacyAcknowledgement = YES"];
  }

  [v6 appendFormat:@"; requestIdentifier = %@", self->_requestIdentifier];
  [v6 appendString:@">"];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  allowsFallbackToExpiredStatus = self->_allowsFallbackToExpiredStatus;
  v5 = a3;
  [v5 encodeBool:allowsFallbackToExpiredStatus forKey:@"allowsFallbackToExpiredStatus"];
  [v5 encodeBool:self->_allowsFallbackToStatusNeedingReload forKey:@"allowsFallbackToStatusNeedingReload"];
  [v5 encodeInteger:self->_carrierBundleProvisioningStyle forKey:@"carrierBundleProvisioningStyle"];
  [v5 encodeInteger:self->_reason forKey:@"reason"];
  [v5 encodeBool:self->_shouldIgnoreCache forKey:@"shouldIgnoreCache"];
  [v5 encodeObject:self->_storeRequestContext forKey:@"storeRequestContext"];
  [v5 encodeBool:self->_shouldReturnLastKnownStatusOnly forKey:@"shouldReturnLastKnownStatusOnly"];
  [v5 encodeBool:self->_shouldBypassEnforcementOfPrivacyAcknowledgement forKey:@"shouldBypassEnforcementOfPrivacyAcknowledgement"];
  [v5 encodeObject:self->_requestIdentifier forKey:@"requestIdentifier"];
}

- (ICMusicSubscriptionStatusRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"storeRequestContext"];
  v6 = [(ICMusicSubscriptionStatusRequest *)self initWithStoreRequestContext:v5];
  if (v6)
  {
    v6->_allowsFallbackToExpiredStatus = [v4 decodeBoolForKey:@"allowsFallbackToExpiredStatus"];
    v6->_allowsFallbackToStatusNeedingReload = [v4 decodeBoolForKey:@"allowsFallbackToStatusNeedingReload"];
    v6->_carrierBundleProvisioningStyle = [v4 decodeIntegerForKey:@"carrierBundleProvisioningStyle"];
    v6->_reason = [v4 decodeIntegerForKey:@"reason"];
    v6->_shouldIgnoreCache = [v4 decodeBoolForKey:@"shouldIgnoreCache"];
    v6->_shouldReturnLastKnownStatusOnly = [v4 decodeBoolForKey:@"shouldReturnLastKnownStatusOnly"];
    v6->_shouldBypassEnforcementOfPrivacyAcknowledgement = [v4 decodeBoolForKey:@"shouldBypassEnforcementOfPrivacyAcknowledgement"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestIdentifier"];
    requestIdentifier = v6->_requestIdentifier;
    v6->_requestIdentifier = v7;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_alloc(objc_opt_class()) initWithStoreRequestContext:self->_storeRequestContext];
  if (result)
  {
    *(result + 9) = self->_allowsFallbackToExpiredStatus;
    *(result + 10) = self->_allowsFallbackToStatusNeedingReload;
    *(result + 4) = self->_carrierBundleProvisioningStyle;
    *(result + 3) = self->_reason;
    *(result + 8) = self->_shouldIgnoreCache;
    *(result + 11) = self->_shouldReturnLastKnownStatusOnly;
    *(result + 12) = self->_shouldBypassEnforcementOfPrivacyAcknowledgement;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    if ([(ICMusicSubscriptionStatusRequest *)v4 isMemberOfClass:objc_opt_class()])
    {
      v5 = v4;
      storeRequestContext = v5->_storeRequestContext;
      v7 = self->_storeRequestContext;
      v8 = v7;
      if (v7 == storeRequestContext)
      {
      }

      else
      {
        v9 = [(ICStoreRequestContext *)v7 isEqual:storeRequestContext];

        if (!v9)
        {
          goto LABEL_16;
        }
      }

      if (self->_allowsFallbackToExpiredStatus == v5->_allowsFallbackToExpiredStatus && self->_allowsFallbackToStatusNeedingReload == v5->_allowsFallbackToStatusNeedingReload && self->_carrierBundleProvisioningStyle == v5->_carrierBundleProvisioningStyle && self->_reason == v5->_reason && self->_shouldIgnoreCache == v5->_shouldIgnoreCache && self->_shouldReturnLastKnownStatusOnly == v5->_shouldReturnLastKnownStatusOnly)
      {
        v10 = self->_shouldBypassEnforcementOfPrivacyAcknowledgement == v5->_shouldBypassEnforcementOfPrivacyAcknowledgement;
LABEL_17:

        goto LABEL_18;
      }

LABEL_16:
      v10 = 0;
      goto LABEL_17;
    }

    v10 = 0;
  }

LABEL_18:

  return v10;
}

- (unint64_t)hash
{
  v3 = MSVHasherSharedSeed();
  v5 = v4;
  v6 = v3 ^ 0x736F6D6570736575;
  v7 = v3 ^ 0x6C7967656E657261;
  v8 = v4 ^ 0x646F72616E646F6DLL;
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [v10 hash];
  v12 = v5 ^ 0x7465646279746573 ^ v11;
  v13 = (v6 + v8) ^ __ROR8__(v8, 51);
  v14 = v7 + v12;
  v15 = (v7 + v12) ^ __ROR8__(v12, 48);
  v16 = v15 + __ROR8__(v6 + v8, 32);
  v97 = __ROR8__(v14 + v13, 32);
  v101 = v16 ^ __ROR8__(v15, 43);
  v17 = v16 ^ v11;
  v91 = (v14 + v13) ^ __ROR8__(v13, 47);

  v18 = self->_storeRequestContext;
  v19 = [(ICStoreRequestContext *)v18 hash];
  v20 = (v17 + v91) ^ __ROR8__(v91, 51);
  v21 = v97 + (v101 ^ v19);
  v22 = __ROR8__(v101 ^ v19, 48);
  v23 = (v21 ^ v22) + __ROR8__(v17 + v91, 32);
  v24 = v23 ^ __ROR8__(v21 ^ v22, 43);
  v25 = v21 + v20;
  v98 = __ROR8__(v25, 32);
  v102 = v24;
  v86 = v23 ^ v19;
  v92 = v25 ^ __ROR8__(v20, 47);

  v26 = self->_allowsFallbackToExpiredStatus | (self->_allowsFallbackToStatusNeedingReload << 32);
  v27 = (v86 + v92) ^ __ROR8__(v92, 51);
  v28 = v98 + (v102 ^ v26);
  v29 = __ROR8__(v102 ^ v26, 48);
  v30 = (v28 ^ v29) + __ROR8__(v86 + v92, 32);
  v31 = v30 ^ __ROR8__(v28 ^ v29, 43);
  v32 = v28 + v27;
  v87 = v30 ^ v26;
  v93 = v32 ^ __ROR8__(v27, 47);
  carrierBundleProvisioningStyle = self->_carrierBundleProvisioningStyle;
  v34 = __ROR8__(v32, 32);
  v35 = (v87 + v93) ^ __ROR8__(v93, 51);
  v36 = v34 + (v31 ^ carrierBundleProvisioningStyle);
  v37 = __ROR8__(v31 ^ carrierBundleProvisioningStyle, 48);
  v38 = (v36 ^ v37) + __ROR8__(v87 + v93, 32);
  v39 = v38 ^ __ROR8__(v36 ^ v37, 43);
  v40 = v36 + v35;
  v88 = v38 ^ carrierBundleProvisioningStyle;
  v94 = v40 ^ __ROR8__(v35, 47);
  reason = self->_reason;
  v42 = v39 ^ reason;
  v43 = (v88 + v94) ^ __ROR8__(v94, 51);
  v44 = __ROR8__(v40, 32) + v42;
  v45 = __ROR8__(v42, 48);
  v46 = (v44 ^ v45) + __ROR8__(v88 + v94, 32);
  v47 = v46 ^ __ROR8__(v44 ^ v45, 43);
  v48 = v44 + v43;
  v99 = __ROR8__(v48, 32);
  v89 = v46 ^ reason;
  v95 = v48 ^ __ROR8__(v43, 47);
  v49 = self->_shouldIgnoreCache | (self->_shouldReturnLastKnownStatusOnly << 32);
  v50 = (v89 + v95) ^ __ROR8__(v95, 51);
  v51 = v99 + (v47 ^ v49);
  v52 = __ROR8__(v47 ^ v49, 48);
  v53 = (v51 ^ v52) + __ROR8__(v89 + v95, 32);
  v54 = v53 ^ __ROR8__(v51 ^ v52, 43);
  v55 = v51 + v50;
  v100 = __ROR8__(v55, 32);
  v103 = v54;
  v90 = v53 ^ v49;
  v96 = v55 ^ __ROR8__(v50, 47);
  v56 = self->_shouldBypassEnforcementOfPrivacyAcknowledgement | 0x3400000000000000;
  v57 = (v90 + v96) ^ __ROR8__(v96, 51);
  v58 = v100 + (v54 ^ v56);
  v59 = __ROR8__(v103 ^ v56, 48);
  v60 = (v58 ^ v59) + __ROR8__(v90 + v96, 32);
  v61 = v60 ^ __ROR8__(v58 ^ v59, 43);
  v62 = v58 + v57;
  v63 = v62 ^ __ROR8__(v57, 47);
  v64 = (v60 ^ v56) + v63;
  v65 = v64 ^ __ROR8__(v63, 51);
  v66 = (__ROR8__(v62, 32) ^ 0xFFLL) + v61;
  v67 = __ROR8__(v61, 48);
  v68 = __ROR8__(v64, 32) + (v66 ^ v67);
  v69 = v68 ^ __ROR8__(v66 ^ v67, 43);
  v70 = v65 + v66;
  v71 = v70 ^ __ROR8__(v65, 47);
  v72 = v71 + v68;
  v73 = v72 ^ __ROR8__(v71, 51);
  v74 = __ROR8__(v70, 32) + v69;
  v75 = __ROR8__(v69, 48);
  v76 = __ROR8__(v72, 32) + (v74 ^ v75);
  v77 = v76 ^ __ROR8__(v74 ^ v75, 43);
  v78 = v73 + v74;
  v79 = v78 ^ __ROR8__(v73, 47);
  v80 = v79 + v76;
  v81 = v80 ^ __ROR8__(v79, 51);
  v82 = __ROR8__(v78, 32) + v77;
  v83 = __ROR8__(v77, 48);
  v84 = __ROR8__(v80, 32) + (v82 ^ v83);
  return (v81 + v82) ^ __ROR8__(v81, 47) ^ v84 ^ __ROR8__(v81 + v82, 32) ^ v84 ^ __ROR8__(v82 ^ v83, 43);
}

- (ICMusicSubscriptionStatusRequest)initWithStoreRequestContext:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = ICMusicSubscriptionStatusRequest;
  v5 = [(ICMusicSubscriptionStatusRequest *)&v12 init];
  v6 = v5;
  if (v5)
  {
    *(v5 + 9) = 257;
    *(v5 + 3) = 0;
    *(v5 + 4) = 0;
    v7 = [v4 copy];
    storeRequestContext = v6->_storeRequestContext;
    v6->_storeRequestContext = v7;

    v9 = [MEMORY[0x1E696AFB0] UUID];
    requestIdentifier = v6->_requestIdentifier;
    v6->_requestIdentifier = v9;
  }

  return v6;
}

@end