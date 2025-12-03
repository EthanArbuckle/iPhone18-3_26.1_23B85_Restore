@interface ICClientInfo
+ (ICClientInfo)defaultInfo;
+ (id)clientInfoForMusicKitRequestWithClientIdentifier:(id)identifier clientVersion:(id)version;
+ (id)clientInfoForMusicKitRequestWithClientIdentifier:(id)identifier clientVersion:(id)version bundleIdentifier:(id)bundleIdentifier;
- (BOOL)isEqual:(id)equal;
- (ICClientInfo)initWithBundleIdentifier:(id)identifier;
- (ICClientInfo)initWithCoder:(id)coder;
- (ICClientInfo)initWithSystemApplicationType:(int64_t)type;
- (NSString)clientBundleIdentifier;
- (id)_clientInfoCopyWithClass:(Class)class;
- (id)description;
- (unint64_t)hash;
- (void)_setDefaultBagProfileForClientIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ICClientInfo

+ (ICClientInfo)defaultInfo
{
  if (defaultInfo_sOnceToken != -1)
  {
    dispatch_once(&defaultInfo_sOnceToken, &__block_literal_global_41790);
  }

  v3 = defaultInfo_sDefaultInstance;

  return v3;
}

void __27__ICClientInfo_defaultInfo__block_invoke()
{
  v13 = objc_alloc_init(ICMutableClientInfo);
  v0 = [MEMORY[0x1E696AE30] processInfo];
  v1 = [v0 processName];

  [(ICMutableClientInfo *)v13 setProcessName:v1];
  [(ICMutableClientInfo *)v13 setClientIdentifier:v1];
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 infoDictionary];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E695E148]];

  if ([v4 length])
  {
    goto LABEL_4;
  }

  v5 = [v2 infoDictionary];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E695E500]];

  if ([(__CFString *)v6 length])
  {
    v4 = v6;
LABEL_4:
    v6 = v4;
    v7 = v6;
    goto LABEL_5;
  }

  v7 = @"1.0";
LABEL_5:
  v8 = [v2 bundleIdentifier];
  v9 = [v8 length];
  v10 = v13;
  if (v9)
  {
    [(ICMutableClientInfo *)v13 setBundleIdentifier:v8];
    v10 = v13;
  }

  [(ICMutableClientInfo *)v10 setClientVersion:v7];
  [(ICClientInfo *)v13 _setDefaultBagProfileForClientIdentifier:v1];
  v11 = [(ICMutableClientInfo *)v13 copy];
  v12 = defaultInfo_sDefaultInstance;
  defaultInfo_sDefaultInstance = v11;
}

+ (id)clientInfoForMusicKitRequestWithClientIdentifier:(id)identifier clientVersion:(id)version bundleIdentifier:(id)bundleIdentifier
{
  bundleIdentifierCopy = bundleIdentifier;
  versionCopy = version;
  identifierCopy = identifier;
  v11 = [(ICClientInfo *)[ICMutableClientInfo alloc] initWithBundleIdentifier:bundleIdentifierCopy];

  bundleIdentifier = [(ICClientInfo *)v11 bundleIdentifier];
  [(ICMutableClientInfo *)v11 setRequestingBundleIdentifier:bundleIdentifier];

  clientVersion = [(ICClientInfo *)v11 clientVersion];
  [(ICMutableClientInfo *)v11 setRequestingBundleVersion:clientVersion];

  [(ICMutableClientInfo *)v11 setClientIdentifier:identifierCopy];
  [(ICMutableClientInfo *)v11 setClientVersion:versionCopy];

  [(ICMutableClientInfo *)v11 setBagProfile:@"itunescloudd"];
  [(ICMutableClientInfo *)v11 setBagProfileVersion:@"1"];
  if (objc_opt_class() == self)
  {
    v14 = [(ICMutableClientInfo *)v11 copy];
  }

  else
  {
    v14 = v11;
  }

  v15 = v14;

  return v15;
}

+ (id)clientInfoForMusicKitRequestWithClientIdentifier:(id)identifier clientVersion:(id)version
{
  versionCopy = version;
  identifierCopy = identifier;
  v8 = +[ICClientInfo defaultInfo];
  bundleIdentifier = [v8 bundleIdentifier];

  v10 = [self clientInfoForMusicKitRequestWithClientIdentifier:identifierCopy clientVersion:versionCopy bundleIdentifier:bundleIdentifier];

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  bundleIdentifier = self->_bundleIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:bundleIdentifier forKey:@"bundleIdentifier"];
  [coderCopy encodeObject:self->_processName forKey:@"processName"];
  [coderCopy encodeObject:self->_clientIdentifier forKey:@"clientIdentifier"];
  [coderCopy encodeObject:self->_clientVersion forKey:@"clientVersion"];
  [coderCopy encodeObject:self->_requestingBundleIdentifier forKey:@"requestingBundleIdentifier"];
  [coderCopy encodeObject:self->_requestingBundleVersion forKey:@"requestingBundleVersion"];
  [coderCopy encodeObject:self->_bagProfile forKey:@"bagProfile"];
  [coderCopy encodeObject:self->_bagProfileVersion forKey:@"bagProfileVersion"];
}

- (ICClientInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v31.receiver = self;
  v31.super_class = ICClientInfo;
  v5 = [(ICClientInfo *)&v31 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    v7 = [v6 copy];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"processName"];
    v10 = [v9 copy];
    processName = v5->_processName;
    v5->_processName = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientIdentifier"];
    v13 = [v12 copy];
    clientIdentifier = v5->_clientIdentifier;
    v5->_clientIdentifier = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientVersion"];
    v16 = [v15 copy];
    clientVersion = v5->_clientVersion;
    v5->_clientVersion = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestingBundleIdentifier"];
    v19 = [v18 copy];
    requestingBundleIdentifier = v5->_requestingBundleIdentifier;
    v5->_requestingBundleIdentifier = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestingBundleVersion"];
    v22 = [v21 copy];
    requestingBundleVersion = v5->_requestingBundleVersion;
    v5->_requestingBundleVersion = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bagProfile"];
    v25 = [v24 copy];
    bagProfile = v5->_bagProfile;
    v5->_bagProfile = v25;

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bagProfileVersion"];
    v28 = [v27 copy];
    bagProfileVersion = v5->_bagProfileVersion;
    v5->_bagProfileVersion = v28;
  }

  return v5;
}

- (void)_setDefaultBagProfileForClientIdentifier:(id)identifier
{
  v17 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (_setDefaultBagProfileForClientIdentifier__sDefaultBagProfilesOnceToken != -1)
  {
    dispatch_once(&_setDefaultBagProfileForClientIdentifier__sDefaultBagProfilesOnceToken, &__block_literal_global_44);
  }

  v5 = [_setDefaultBagProfileForClientIdentifier__sDefaultBagProfileNames objectForKey:self->_clientIdentifier];
  bagProfile = self->_bagProfile;
  self->_bagProfile = v5;

  v7 = self->_bagProfile;
  if (!v7)
  {
    v8 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      clientIdentifier = self->_clientIdentifier;
      v13 = 138543618;
      v14 = clientIdentifier;
      v15 = 2114;
      v16 = @"itunescloudd";
      _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_DEFAULT, "No default bag profile for client '%{public}@' - using default '%{public}@'", &v13, 0x16u);
    }

    v10 = self->_bagProfile;
    self->_bagProfile = @"itunescloudd";

    v7 = self->_bagProfile;
  }

  v11 = [_setDefaultBagProfileForClientIdentifier__sDefaultBagProfileVersions objectForKey:v7];
  bagProfileVersion = self->_bagProfileVersion;
  self->_bagProfileVersion = v11;

  if (!self->_bagProfileVersion)
  {
    self->_bagProfileVersion = @"1";
  }
}

void __57__ICClientInfo__setDefaultBagProfileForClientIdentifier___block_invoke()
{
  v0 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:&unk_1F2C925D8];
  v1 = _setDefaultBagProfileForClientIdentifier__sDefaultBagProfileNames;
  _setDefaultBagProfileForClientIdentifier__sDefaultBagProfileNames = v0;

  v2 = _setDefaultBagProfileForClientIdentifier__sDefaultBagProfileVersions;
  _setDefaultBagProfileForClientIdentifier__sDefaultBagProfileVersions = &unk_1F2C92600;
}

- (id)_clientInfoCopyWithClass:(Class)class
{
  v4 = objc_alloc_init(class);
  if (v4)
  {
    v5 = [(NSString *)self->_bundleIdentifier copy];
    v6 = v4[1];
    v4[1] = v5;

    v7 = [(NSString *)self->_processName copy];
    v8 = v4[2];
    v4[2] = v7;

    v9 = [(NSString *)self->_clientIdentifier copy];
    v10 = v4[3];
    v4[3] = v9;

    v11 = [(NSString *)self->_clientVersion copy];
    v12 = v4[4];
    v4[4] = v11;

    v13 = [(NSString *)self->_requestingBundleIdentifier copy];
    v14 = v4[5];
    v4[5] = v13;

    v15 = [(NSString *)self->_requestingBundleVersion copy];
    v16 = v4[6];
    v4[6] = v15;

    v17 = [(NSString *)self->_bagProfile copy];
    v18 = v4[7];
    v4[7] = v17;

    v19 = [(NSString *)self->_bagProfileVersion copy];
    v20 = v4[8];
    v4[8] = v19;
  }

  return v4;
}

- (NSString)clientBundleIdentifier
{
  requestingBundleIdentifier = self->_requestingBundleIdentifier;
  if (requestingBundleIdentifier || (requestingBundleIdentifier = self->_bundleIdentifier) != 0)
  {
    bundleIdentifier = requestingBundleIdentifier;
  }

  else
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
  }

  return bundleIdentifier;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    if ([(ICClientInfo *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v5 = equalCopy;
      bundleIdentifier = v5->_bundleIdentifier;
      v7 = self->_bundleIdentifier;
      v8 = v7;
      if (v7 == bundleIdentifier)
      {
      }

      else
      {
        v9 = [(NSString *)v7 isEqual:bundleIdentifier];

        if (!v9)
        {
          goto LABEL_31;
        }
      }

      processName = v5->_processName;
      v12 = self->_processName;
      v13 = v12;
      if (v12 == processName)
      {
      }

      else
      {
        v14 = [(NSString *)v12 isEqual:processName];

        if (!v14)
        {
          goto LABEL_31;
        }
      }

      clientIdentifier = v5->_clientIdentifier;
      v16 = self->_clientIdentifier;
      v17 = v16;
      if (v16 == clientIdentifier)
      {
      }

      else
      {
        v18 = [(NSString *)v16 isEqual:clientIdentifier];

        if (!v18)
        {
          goto LABEL_31;
        }
      }

      clientVersion = v5->_clientVersion;
      v20 = self->_clientVersion;
      v21 = v20;
      if (v20 == clientVersion)
      {
      }

      else
      {
        v22 = [(NSString *)v20 isEqual:clientVersion];

        if (!v22)
        {
          goto LABEL_31;
        }
      }

      requestingBundleIdentifier = v5->_requestingBundleIdentifier;
      v24 = self->_requestingBundleIdentifier;
      v25 = v24;
      if (v24 == requestingBundleIdentifier)
      {
      }

      else
      {
        v26 = [(NSString *)v24 isEqual:requestingBundleIdentifier];

        if (!v26)
        {
          goto LABEL_31;
        }
      }

      requestingBundleVersion = v5->_requestingBundleVersion;
      v28 = self->_requestingBundleVersion;
      v29 = v28;
      if (v28 == requestingBundleVersion)
      {
      }

      else
      {
        v30 = [(NSString *)v28 isEqual:requestingBundleVersion];

        if (!v30)
        {
          goto LABEL_31;
        }
      }

      bagProfile = v5->_bagProfile;
      v32 = self->_bagProfile;
      v33 = v32;
      if (v32 == bagProfile)
      {
      }

      else
      {
        v34 = [(NSString *)v32 isEqual:bagProfile];

        if (!v34)
        {
LABEL_31:
          v10 = 0;
LABEL_32:

          goto LABEL_33;
        }
      }

      bagProfileVersion = self->_bagProfileVersion;
      v37 = v5->_bagProfileVersion;
      v38 = bagProfileVersion;
      v39 = v38;
      if (v38 == v37)
      {
        v10 = 1;
      }

      else
      {
        v10 = [(NSString *)v38 isEqual:v37];
      }

      goto LABEL_32;
    }

    v10 = 0;
  }

LABEL_33:

  return v10;
}

- (unint64_t)hash
{
  v3 = MSVHasherSharedSeed();
  v5 = v4;
  v6 = v3 ^ 0x736F6D6570736575;
  v7 = v4 ^ 0x646F72616E646F6DLL;
  v8 = v3 ^ 0x6C7967656E657261;
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [v10 hash];
  v12 = v5 ^ 0x7465646279746573 ^ v11;
  v13 = (v6 + v7) ^ __ROR8__(v7, 51);
  v14 = v8 + v12;
  v15 = (v8 + v12) ^ __ROR8__(v12, 48);
  v16 = v15 + __ROR8__(v6 + v7, 32);
  v128 = __ROR8__(v14 + v13, 32);
  v137 = v16 ^ __ROR8__(v15, 43);
  v17 = v16 ^ v11;
  v119 = (v14 + v13) ^ __ROR8__(v13, 47);

  v18 = self->_bundleIdentifier;
  v19 = [(NSString *)v18 hash];
  v20 = (v17 + v119) ^ __ROR8__(v119, 51);
  v21 = v128 + (v137 ^ v19);
  v22 = __ROR8__(v137 ^ v19, 48);
  v23 = (v21 ^ v22) + __ROR8__(v17 + v119, 32);
  v24 = v23 ^ __ROR8__(v21 ^ v22, 43);
  v25 = v21 + v20;
  v129 = __ROR8__(v25, 32);
  v138 = v24;
  v111 = v23 ^ v19;
  v120 = v25 ^ __ROR8__(v20, 47);

  v26 = self->_processName;
  v27 = [(NSString *)v26 hash];
  v28 = (v111 + v120) ^ __ROR8__(v120, 51);
  v29 = v129 + (v138 ^ v27);
  v30 = __ROR8__(v138 ^ v27, 48);
  v31 = (v29 ^ v30) + __ROR8__(v111 + v120, 32);
  v32 = v31 ^ __ROR8__(v29 ^ v30, 43);
  v33 = v29 + v28;
  v130 = __ROR8__(v33, 32);
  v139 = v32;
  v112 = v31 ^ v27;
  v121 = v33 ^ __ROR8__(v28, 47);

  v34 = self->_clientIdentifier;
  v35 = [(NSString *)v34 hash];
  v36 = (v112 + v121) ^ __ROR8__(v121, 51);
  v37 = v130 + (v139 ^ v35);
  v38 = __ROR8__(v139 ^ v35, 48);
  v39 = (v37 ^ v38) + __ROR8__(v112 + v121, 32);
  v40 = v39 ^ __ROR8__(v37 ^ v38, 43);
  v41 = v37 + v36;
  v131 = __ROR8__(v41, 32);
  v140 = v40;
  v113 = v39 ^ v35;
  v122 = v41 ^ __ROR8__(v36, 47);

  v42 = self->_clientVersion;
  v43 = [(NSString *)v42 hash];
  v44 = (v113 + v122) ^ __ROR8__(v122, 51);
  v45 = v131 + (v140 ^ v43);
  v46 = __ROR8__(v140 ^ v43, 48);
  v47 = (v45 ^ v46) + __ROR8__(v113 + v122, 32);
  v48 = v47 ^ __ROR8__(v45 ^ v46, 43);
  v49 = v45 + v44;
  v132 = __ROR8__(v49, 32);
  v141 = v48;
  v114 = v47 ^ v43;
  v123 = v49 ^ __ROR8__(v44, 47);

  v50 = self->_requestingBundleIdentifier;
  v51 = [(NSString *)v50 hash];
  v52 = (v114 + v123) ^ __ROR8__(v123, 51);
  v53 = v132 + (v141 ^ v51);
  v54 = __ROR8__(v141 ^ v51, 48);
  v55 = (v53 ^ v54) + __ROR8__(v114 + v123, 32);
  v56 = v55 ^ __ROR8__(v53 ^ v54, 43);
  v57 = v53 + v52;
  v133 = __ROR8__(v57, 32);
  v142 = v56;
  v115 = v55 ^ v51;
  v124 = v57 ^ __ROR8__(v52, 47);

  v58 = self->_requestingBundleVersion;
  v59 = [(NSString *)v58 hash];
  v60 = (v115 + v124) ^ __ROR8__(v124, 51);
  v61 = v133 + (v142 ^ v59);
  v62 = __ROR8__(v142 ^ v59, 48);
  v63 = (v61 ^ v62) + __ROR8__(v115 + v124, 32);
  v64 = v63 ^ __ROR8__(v61 ^ v62, 43);
  v65 = v61 + v60;
  v134 = __ROR8__(v65, 32);
  v143 = v64;
  v116 = v63 ^ v59;
  v125 = v65 ^ __ROR8__(v60, 47);

  v66 = self->_bagProfile;
  v67 = [(NSString *)v66 hash];
  v68 = (v116 + v125) ^ __ROR8__(v125, 51);
  v69 = v134 + (v143 ^ v67);
  v70 = __ROR8__(v143 ^ v67, 48);
  v71 = (v69 ^ v70) + __ROR8__(v116 + v125, 32);
  v72 = v71 ^ __ROR8__(v69 ^ v70, 43);
  v73 = v69 + v68;
  v135 = __ROR8__(v73, 32);
  v144 = v72;
  v117 = v71 ^ v67;
  v126 = v73 ^ __ROR8__(v68, 47);

  v74 = self->_bagProfileVersion;
  v75 = [(NSString *)v74 hash];
  v76 = (v117 + v126) ^ __ROR8__(v126, 51);
  v77 = v135 + (v144 ^ v75);
  v78 = __ROR8__(v144 ^ v75, 48);
  v79 = (v77 ^ v78) + __ROR8__(v117 + v126, 32);
  v80 = v79 ^ __ROR8__(v77 ^ v78, 43);
  v81 = v77 + v76;
  v136 = __ROR8__(v81, 32);
  v145 = v80;
  v118 = v79 ^ v75;
  v127 = v81 ^ __ROR8__(v76, 47);

  v82 = (v118 + v127) ^ __ROR8__(v127, 51);
  v83 = v136 + (v145 ^ 0x4800000000000000);
  v84 = __ROR8__(v145 ^ 0x4800000000000000, 48);
  v85 = (v83 ^ v84) + __ROR8__(v118 + v127, 32);
  v86 = v85 ^ __ROR8__(v83 ^ v84, 43);
  v87 = v83 + v82;
  v88 = v87 ^ __ROR8__(v82, 47);
  v89 = (v85 ^ 0x4800000000000000) + v88;
  v90 = v89 ^ __ROR8__(v88, 51);
  v91 = (__ROR8__(v87, 32) ^ 0xFFLL) + v86;
  v92 = __ROR8__(v86, 48);
  v93 = __ROR8__(v89, 32) + (v91 ^ v92);
  v94 = v93 ^ __ROR8__(v91 ^ v92, 43);
  v95 = v90 + v91;
  v96 = v95 ^ __ROR8__(v90, 47);
  v97 = v96 + v93;
  v98 = v97 ^ __ROR8__(v96, 51);
  v99 = __ROR8__(v95, 32) + v94;
  v100 = __ROR8__(v94, 48);
  v101 = __ROR8__(v97, 32) + (v99 ^ v100);
  v102 = v101 ^ __ROR8__(v99 ^ v100, 43);
  v103 = v98 + v99;
  v104 = v103 ^ __ROR8__(v98, 47);
  v105 = v104 + v101;
  v106 = v105 ^ __ROR8__(v104, 51);
  v107 = __ROR8__(v103, 32) + v102;
  v108 = __ROR8__(v102, 48);
  v109 = __ROR8__(v105, 32) + (v107 ^ v108);
  return (v106 + v107) ^ __ROR8__(v106, 47) ^ v109 ^ __ROR8__(v106 + v107, 32) ^ v109 ^ __ROR8__(v107 ^ v108, 43);
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@: %p", v5, self];

  if (self->_bundleIdentifier)
  {
    [v6 appendFormat:@"; bundleIdentifier = %@", self->_bundleIdentifier];
  }

  if (self->_processName)
  {
    [v6 appendFormat:@"; processName = %@", self->_processName];
  }

  if (self->_clientIdentifier)
  {
    [v6 appendFormat:@"; clientIdentifier = %@", self->_clientIdentifier];
  }

  if (self->_clientVersion)
  {
    [v6 appendFormat:@"; clientVersion = %@", self->_clientVersion];
  }

  if (self->_requestingBundleIdentifier)
  {
    [v6 appendFormat:@"; requestingBundleIdentifier = %@", self->_requestingBundleIdentifier];
  }

  if (self->_requestingBundleVersion)
  {
    [v6 appendFormat:@"; requestingBundleVersion = %@", self->_requestingBundleVersion];
  }

  if (self->_bagProfile)
  {
    [v6 appendFormat:@"; bagProfile = %@", self->_bagProfile];
  }

  if (self->_bagProfileVersion)
  {
    [v6 appendFormat:@"; bagProfileVersion = %@", self->_bagProfileVersion];
  }

  [v6 appendString:@">"];
  v7 = [v6 copy];

  return v7;
}

- (ICClientInfo)initWithSystemApplicationType:(int64_t)type
{
  v4 = ICBundleIdentifierForSystemApplicationType(type);
  v5 = [(ICClientInfo *)self initWithBundleIdentifier:v4];

  return v5;
}

- (ICClientInfo)initWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v24.receiver = self;
  v24.super_class = ICClientInfo;
  v6 = [(ICClientInfo *)&v24 init];
  if (v6)
  {
    v7 = [identifierCopy copy];
    bundleIdentifier = v6->_bundleIdentifier;
    v6->_bundleIdentifier = v7;

    v23 = 0;
    v9 = [MEMORY[0x1E6963620] bundleRecordWithBundleIdentifier:identifierCopy allowPlaceholder:0 error:&v23];
    v10 = v23;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || v10)
    {
      v11 = ICKnownProcessNameForSystemApplication(identifierCopy);
      v19 = ICKnownClientVersionForSystemApplication(identifierCopy);
      v18 = v19;
      if (v11 && v19)
      {
        objc_storeStrong(&v6->_processName, v11);
        objc_storeStrong(&v6->_clientIdentifier, v6->_processName);
        v20 = v18;
        clientVersion = v6->_clientVersion;
        v6->_clientVersion = v20;
      }

      else
      {
        objc_storeStrong(&v6->_clientIdentifier, identifier);
        objc_storeStrong(&v6->_processName, identifier);
        clientVersion = v6->_clientVersion;
        v6->_clientVersion = @"1.0";
      }
    }

    else
    {
      v11 = v9;
      executableURL = [v11 executableURL];
      lastPathComponent = [executableURL lastPathComponent];
      processName = v6->_processName;
      v6->_processName = lastPathComponent;

      objc_storeStrong(&v6->_clientIdentifier, v6->_processName);
      shortVersionString = [v11 shortVersionString];
      v16 = v6->_clientVersion;
      v6->_clientVersion = shortVersionString;

      if ([(NSString *)v6->_clientVersion length])
      {
LABEL_12:

        [(ICClientInfo *)v6 _setDefaultBagProfileForClientIdentifier:v6->_clientIdentifier];
        goto LABEL_13;
      }

      bundleVersion = [v11 bundleVersion];
      v18 = v6->_clientVersion;
      v6->_clientVersion = bundleVersion;
    }

    goto LABEL_12;
  }

LABEL_13:

  return v6;
}

@end