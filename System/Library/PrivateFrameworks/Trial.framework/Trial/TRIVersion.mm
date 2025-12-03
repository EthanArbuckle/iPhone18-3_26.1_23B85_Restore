@interface TRIVersion
+ (id)parseVersionFromString:(id)string withPrefix:(id)prefix;
+ (id)versionWithMajorVersion:(id)version minorVersion:(id)minorVersion patchVersion:(id)patchVersion;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToVersion:(id)version;
- (TRIVersion)initWithMajorVersion:(id)version minorVersion:(id)minorVersion patchVersion:(id)patchVersion;
- (id)copyWithReplacementMajorVersion:(id)version;
- (id)copyWithReplacementMinorVersion:(id)version;
- (id)copyWithReplacementPatchVersion:(id)version;
- (id)description;
- (int64_t)compare:(id)compare;
- (unint64_t)hash;
@end

@implementation TRIVersion

+ (id)parseVersionFromString:(id)string withPrefix:(id)prefix
{
  v30 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  prefixCopy = prefix;
  if (!stringCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIVersion+Factory.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"string"}];
  }

  v9 = stringCopy;
  v10 = v9;
  if (prefixCopy)
  {
    v10 = v9;
    if ([prefixCopy length])
    {
      if (([v9 hasPrefix:prefixCopy] & 1) == 0)
      {
        v18 = [[TRIVersion alloc] initWithMajorVersion:&unk_28436F9C8 minorVersion:&unk_28436F9C8 patchVersion:&unk_28436F9C8];
        v10 = v9;
        goto LABEL_18;
      }

      v10 = [v9 substringFromIndex:{objc_msgSend(prefixCopy, "length")}];

      if (!v10)
      {
        currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIVersion+Factory.m" lineNumber:27 description:@"expected version string to be not nil"];

        v10 = 0;
      }
    }
  }

  v11 = [v10 componentsSeparatedByString:@"."];
  v12 = v11;
  if (v11)
  {
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __57__TRIVersion_Factory__parseVersionFromString_withPrefix___block_invoke;
    v26[3] = &unk_27885EDE0;
    v27 = v11;
    v13 = MEMORY[0x2318F2490](v26);
    v25 = 1;
    v14 = [TRIVersion alloc];
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{(v13)[2](v13, 0, &v25)}];
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{(v13)[2](v13, 1, &v25)}];
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{(v13)[2](v13, 2, &v25)}];
    v18 = [(TRIVersion *)v14 initWithMajorVersion:v15 minorVersion:v16 patchVersion:v17];

    if ((v25 & 1) == 0)
    {
      v19 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v29 = v9;
        _os_log_impl(&dword_22EA6B000, v19, OS_LOG_TYPE_DEFAULT, "error in parsing version string %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v20 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = v9;
      _os_log_impl(&dword_22EA6B000, v20, OS_LOG_TYPE_DEFAULT, "could not parse version string %@", buf, 0xCu);
    }

    v18 = [[TRIVersion alloc] initWithMajorVersion:&unk_28436F9C8 minorVersion:&unk_28436F9C8 patchVersion:&unk_28436F9C8];
  }

LABEL_18:
  v21 = *MEMORY[0x277D85DE8];

  return v18;
}

uint64_t __57__TRIVersion_Factory__parseVersionFromString_withPrefix___block_invoke(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (*a3 != 1 || [*(a1 + 32) count] <= a2)
  {
    return 0;
  }

  v6 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  v9 = -1;
  if (![TRIMisc convertFromString:v6 usingBase:10 toI64:&v9]|| (v7 = v9, v9 < 0))
  {
    v7 = 0;
    *a3 = 0;
  }

  return v7;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  majorVersion = [(TRIVersion *)self majorVersion];
  majorVersion2 = [compareCopy majorVersion];
  v7 = [majorVersion compare:majorVersion2];

  if (!v7)
  {
    minorVersion = [(TRIVersion *)self minorVersion];
    minorVersion2 = [compareCopy minorVersion];
    v7 = [minorVersion compare:minorVersion2];

    if (!v7)
    {
      patchVersion = [(TRIVersion *)self patchVersion];
      patchVersion2 = [compareCopy patchVersion];
      v7 = [patchVersion compare:patchVersion2];
    }
  }

  return v7;
}

- (TRIVersion)initWithMajorVersion:(id)version minorVersion:(id)minorVersion patchVersion:(id)patchVersion
{
  versionCopy = version;
  minorVersionCopy = minorVersion;
  patchVersionCopy = patchVersion;
  if (versionCopy)
  {
    if (minorVersionCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIClientTupleTypes.m" lineNumber:308 description:{@"Invalid parameter not satisfying: %@", @"minorVersion != nil"}];

    if (patchVersionCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIClientTupleTypes.m" lineNumber:307 description:{@"Invalid parameter not satisfying: %@", @"majorVersion != nil"}];

  if (!minorVersionCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (patchVersionCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"TRIClientTupleTypes.m" lineNumber:309 description:{@"Invalid parameter not satisfying: %@", @"patchVersion != nil"}];

LABEL_4:
  v19.receiver = self;
  v19.super_class = TRIVersion;
  v13 = [(TRIVersion *)&v19 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_majorVersion, version);
    objc_storeStrong(&v14->_minorVersion, minorVersion);
    objc_storeStrong(&v14->_patchVersion, patchVersion);
  }

  return v14;
}

+ (id)versionWithMajorVersion:(id)version minorVersion:(id)minorVersion patchVersion:(id)patchVersion
{
  patchVersionCopy = patchVersion;
  minorVersionCopy = minorVersion;
  versionCopy = version;
  v11 = [[self alloc] initWithMajorVersion:versionCopy minorVersion:minorVersionCopy patchVersion:patchVersionCopy];

  return v11;
}

- (id)copyWithReplacementMajorVersion:(id)version
{
  versionCopy = version;
  v5 = [objc_alloc(objc_opt_class()) initWithMajorVersion:versionCopy minorVersion:self->_minorVersion patchVersion:self->_patchVersion];

  return v5;
}

- (id)copyWithReplacementMinorVersion:(id)version
{
  versionCopy = version;
  v5 = [objc_alloc(objc_opt_class()) initWithMajorVersion:self->_majorVersion minorVersion:versionCopy patchVersion:self->_patchVersion];

  return v5;
}

- (id)copyWithReplacementPatchVersion:(id)version
{
  versionCopy = version;
  v5 = [objc_alloc(objc_opt_class()) initWithMajorVersion:self->_majorVersion minorVersion:self->_minorVersion patchVersion:versionCopy];

  return v5;
}

- (BOOL)isEqualToVersion:(id)version
{
  versionCopy = version;
  v5 = versionCopy;
  if (!versionCopy)
  {
    goto LABEL_11;
  }

  v6 = self->_majorVersion == 0;
  majorVersion = [versionCopy majorVersion];
  v8 = majorVersion != 0;

  if (v6 == v8)
  {
    goto LABEL_11;
  }

  majorVersion = self->_majorVersion;
  if (majorVersion)
  {
    majorVersion2 = [v5 majorVersion];
    v11 = [(NSNumber *)majorVersion isEqual:majorVersion2];

    if (!v11)
    {
      goto LABEL_11;
    }
  }

  v12 = self->_minorVersion == 0;
  minorVersion = [v5 minorVersion];
  v14 = minorVersion != 0;

  if (v12 == v14)
  {
    goto LABEL_11;
  }

  minorVersion = self->_minorVersion;
  if (minorVersion)
  {
    minorVersion2 = [v5 minorVersion];
    v17 = [(NSNumber *)minorVersion isEqual:minorVersion2];

    if (!v17)
    {
      goto LABEL_11;
    }
  }

  v18 = self->_patchVersion == 0;
  patchVersion = [v5 patchVersion];
  v20 = patchVersion != 0;

  if (v18 == v20)
  {
LABEL_11:
    v23 = 0;
  }

  else
  {
    patchVersion = self->_patchVersion;
    if (patchVersion)
    {
      patchVersion2 = [v5 patchVersion];
      v23 = [(NSNumber *)patchVersion isEqual:patchVersion2];
    }

    else
    {
      v23 = 1;
    }
  }

  return v23 & 1;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIVersion *)self isEqualToVersion:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSNumber *)self->_majorVersion hash];
  v4 = [(NSNumber *)self->_minorVersion hash]- v3 + 32 * v3;
  return [(NSNumber *)self->_patchVersion hash]- v4 + 32 * v4;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<TRIVersion | majorVersion:%@ minorVersion:%@ patchVersion:%@>", self->_majorVersion, self->_minorVersion, self->_patchVersion];

  return v2;
}

@end