@interface TRIActivationEventRecord
+ (id)recordWithParentId:(id)id factorPackSetId:(id)setId deploymentId:(int)deploymentId osBuild:(id)build languageCode:(id)code regionCode:(id)regionCode carrierBundleIdentifier:(id)identifier carrierCountryIsoCode:(id)self0 diagnosticsUsageEnabled:(int64_t)self1 hasAne:(int64_t)self2 aneVersion:(id)self3;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRecord:(id)record;
- (TRIActivationEventRecord)initWithParentId:(id)id factorPackSetId:(id)setId deploymentId:(int)deploymentId osBuild:(id)build languageCode:(id)code regionCode:(id)regionCode carrierBundleIdentifier:(id)identifier carrierCountryIsoCode:(id)self0 diagnosticsUsageEnabled:(int64_t)self1 hasAne:(int64_t)self2 aneVersion:(id)self3;
- (id)copyWithReplacementAneVersion:(id)version;
- (id)copyWithReplacementCarrierBundleIdentifier:(id)identifier;
- (id)copyWithReplacementCarrierCountryIsoCode:(id)code;
- (id)copyWithReplacementFactorPackSetId:(id)id;
- (id)copyWithReplacementLanguageCode:(id)code;
- (id)copyWithReplacementOsBuild:(id)build;
- (id)copyWithReplacementParentId:(id)id;
- (id)copyWithReplacementRegionCode:(id)code;
- (id)description;
- (unint64_t)hash;
@end

@implementation TRIActivationEventRecord

- (TRIActivationEventRecord)initWithParentId:(id)id factorPackSetId:(id)setId deploymentId:(int)deploymentId osBuild:(id)build languageCode:(id)code regionCode:(id)regionCode carrierBundleIdentifier:(id)identifier carrierCountryIsoCode:(id)self0 diagnosticsUsageEnabled:(int64_t)self1 hasAne:(int64_t)self2 aneVersion:(id)self3
{
  idCopy = id;
  setIdCopy = setId;
  setIdCopy2 = setId;
  buildCopy = build;
  buildCopy2 = build;
  codeCopy = code;
  codeCopy2 = code;
  regionCodeCopy = regionCode;
  identifierCopy = identifier;
  isoCodeCopy = isoCode;
  versionCopy = version;
  v41 = identifierCopy;
  v42 = versionCopy;
  if (idCopy)
  {
    if (setIdCopy2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:1266 description:{@"Invalid parameter not satisfying: %@", @"parentId != nil"}];

    identifierCopy = v41;
    versionCopy = v42;
    if (setIdCopy2)
    {
LABEL_3:
      if (buildCopy2)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:1267 description:{@"Invalid parameter not satisfying: %@", @"factorPackSetId != nil"}];

  identifierCopy = v41;
  versionCopy = v42;
  if (buildCopy2)
  {
LABEL_4:
    if (codeCopy2)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:1268 description:{@"Invalid parameter not satisfying: %@", @"osBuild != nil"}];

  identifierCopy = v41;
  versionCopy = v42;
  if (codeCopy2)
  {
LABEL_5:
    if (regionCodeCopy)
    {
      goto LABEL_6;
    }

LABEL_16:
    currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:1270 description:{@"Invalid parameter not satisfying: %@", @"regionCode != nil"}];

    versionCopy = v42;
    if (v41)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_15:
  currentHandler5 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler5 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:1269 description:{@"Invalid parameter not satisfying: %@", @"languageCode != nil"}];

  identifierCopy = v41;
  versionCopy = v42;
  if (!regionCodeCopy)
  {
    goto LABEL_16;
  }

LABEL_6:
  if (identifierCopy)
  {
    goto LABEL_7;
  }

LABEL_17:
  currentHandler6 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler6 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:1271 description:{@"Invalid parameter not satisfying: %@", @"carrierBundleIdentifier != nil"}];

  versionCopy = v42;
LABEL_7:
  if (isoCodeCopy)
  {
    if (versionCopy)
    {
      goto LABEL_9;
    }
  }

  else
  {
    currentHandler7 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler7 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:1272 description:{@"Invalid parameter not satisfying: %@", @"carrierCountryIsoCode != nil"}];

    if (v42)
    {
      goto LABEL_9;
    }
  }

  currentHandler8 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler8 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:1273 description:{@"Invalid parameter not satisfying: %@", @"aneVersion != nil"}];

LABEL_9:
  v45.receiver = self;
  v45.super_class = TRIActivationEventRecord;
  v24 = [(TRIActivationEventRecord *)&v45 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_parentId, id);
    objc_storeStrong(&v25->_factorPackSetId, setIdCopy);
    v25->_deploymentId = deploymentId;
    objc_storeStrong(&v25->_osBuild, buildCopy);
    objc_storeStrong(&v25->_languageCode, codeCopy);
    objc_storeStrong(&v25->_regionCode, regionCode);
    objc_storeStrong(&v25->_carrierBundleIdentifier, identifier);
    objc_storeStrong(&v25->_carrierCountryIsoCode, isoCode);
    v25->_diagnosticsUsageEnabled = enabled;
    v25->_hasAne = ane;
    objc_storeStrong(&v25->_aneVersion, version);
  }

  return v25;
}

+ (id)recordWithParentId:(id)id factorPackSetId:(id)setId deploymentId:(int)deploymentId osBuild:(id)build languageCode:(id)code regionCode:(id)regionCode carrierBundleIdentifier:(id)identifier carrierCountryIsoCode:(id)self0 diagnosticsUsageEnabled:(int64_t)self1 hasAne:(int64_t)self2 aneVersion:(id)self3
{
  versionCopy = version;
  isoCodeCopy = isoCode;
  identifierCopy = identifier;
  regionCodeCopy = regionCode;
  codeCopy = code;
  buildCopy = build;
  setIdCopy = setId;
  idCopy = id;
  v27 = [[self alloc] initWithParentId:idCopy factorPackSetId:setIdCopy deploymentId:deploymentId osBuild:buildCopy languageCode:codeCopy regionCode:regionCodeCopy carrierBundleIdentifier:identifierCopy carrierCountryIsoCode:isoCodeCopy diagnosticsUsageEnabled:enabled hasAne:ane aneVersion:versionCopy];

  return v27;
}

- (id)copyWithReplacementParentId:(id)id
{
  idCopy = id;
  v5 = objc_alloc(objc_opt_class());
  v6 = *&self->_carrierBundleIdentifier;
  v7 = [v5 initWithParentId:idCopy factorPackSetId:self->_factorPackSetId deploymentId:self->_deploymentId osBuild:self->_osBuild languageCode:self->_languageCode regionCode:self->_regionCode carrierBundleIdentifier:self->_carrierBundleIdentifier carrierCountryIsoCode:self->_carrierCountryIsoCode diagnosticsUsageEnabled:self->_diagnosticsUsageEnabled hasAne:self->_hasAne aneVersion:self->_aneVersion];

  return v7;
}

- (id)copyWithReplacementFactorPackSetId:(id)id
{
  idCopy = id;
  v5 = objc_alloc(objc_opt_class());
  v6 = *&self->_carrierBundleIdentifier;
  v7 = [v5 initWithParentId:self->_parentId factorPackSetId:idCopy deploymentId:self->_deploymentId osBuild:self->_osBuild languageCode:self->_languageCode regionCode:self->_regionCode carrierBundleIdentifier:self->_carrierBundleIdentifier carrierCountryIsoCode:self->_carrierCountryIsoCode diagnosticsUsageEnabled:self->_diagnosticsUsageEnabled hasAne:self->_hasAne aneVersion:self->_aneVersion];

  return v7;
}

- (id)copyWithReplacementOsBuild:(id)build
{
  buildCopy = build;
  v5 = objc_alloc(objc_opt_class());
  v6 = *&self->_carrierBundleIdentifier;
  v7 = [v5 initWithParentId:self->_parentId factorPackSetId:self->_factorPackSetId deploymentId:self->_deploymentId osBuild:buildCopy languageCode:self->_languageCode regionCode:self->_regionCode carrierBundleIdentifier:self->_carrierBundleIdentifier carrierCountryIsoCode:self->_carrierCountryIsoCode diagnosticsUsageEnabled:self->_diagnosticsUsageEnabled hasAne:self->_hasAne aneVersion:self->_aneVersion];

  return v7;
}

- (id)copyWithReplacementLanguageCode:(id)code
{
  codeCopy = code;
  v5 = objc_alloc(objc_opt_class());
  v6 = *&self->_carrierBundleIdentifier;
  v7 = [v5 initWithParentId:self->_parentId factorPackSetId:self->_factorPackSetId deploymentId:self->_deploymentId osBuild:self->_osBuild languageCode:codeCopy regionCode:self->_regionCode carrierBundleIdentifier:self->_carrierBundleIdentifier carrierCountryIsoCode:self->_carrierCountryIsoCode diagnosticsUsageEnabled:self->_diagnosticsUsageEnabled hasAne:self->_hasAne aneVersion:self->_aneVersion];

  return v7;
}

- (id)copyWithReplacementRegionCode:(id)code
{
  codeCopy = code;
  v5 = objc_alloc(objc_opt_class());
  v6 = *&self->_carrierBundleIdentifier;
  v7 = [v5 initWithParentId:self->_parentId factorPackSetId:self->_factorPackSetId deploymentId:self->_deploymentId osBuild:self->_osBuild languageCode:self->_languageCode regionCode:codeCopy carrierBundleIdentifier:self->_carrierBundleIdentifier carrierCountryIsoCode:self->_carrierCountryIsoCode diagnosticsUsageEnabled:self->_diagnosticsUsageEnabled hasAne:self->_hasAne aneVersion:self->_aneVersion];

  return v7;
}

- (id)copyWithReplacementCarrierBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [objc_alloc(objc_opt_class()) initWithParentId:self->_parentId factorPackSetId:self->_factorPackSetId deploymentId:self->_deploymentId osBuild:self->_osBuild languageCode:self->_languageCode regionCode:self->_regionCode carrierBundleIdentifier:identifierCopy carrierCountryIsoCode:self->_carrierCountryIsoCode diagnosticsUsageEnabled:self->_diagnosticsUsageEnabled hasAne:self->_hasAne aneVersion:self->_aneVersion];

  return v5;
}

- (id)copyWithReplacementCarrierCountryIsoCode:(id)code
{
  codeCopy = code;
  v5 = [objc_alloc(objc_opt_class()) initWithParentId:self->_parentId factorPackSetId:self->_factorPackSetId deploymentId:self->_deploymentId osBuild:self->_osBuild languageCode:self->_languageCode regionCode:self->_regionCode carrierBundleIdentifier:self->_carrierBundleIdentifier carrierCountryIsoCode:codeCopy diagnosticsUsageEnabled:self->_diagnosticsUsageEnabled hasAne:self->_hasAne aneVersion:self->_aneVersion];

  return v5;
}

- (id)copyWithReplacementAneVersion:(id)version
{
  versionCopy = version;
  v5 = [objc_alloc(objc_opt_class()) initWithParentId:self->_parentId factorPackSetId:self->_factorPackSetId deploymentId:self->_deploymentId osBuild:self->_osBuild languageCode:self->_languageCode regionCode:self->_regionCode carrierBundleIdentifier:self->_carrierBundleIdentifier carrierCountryIsoCode:self->_carrierCountryIsoCode diagnosticsUsageEnabled:self->_diagnosticsUsageEnabled hasAne:self->_hasAne aneVersion:versionCopy];

  return v5;
}

- (BOOL)isEqualToRecord:(id)record
{
  recordCopy = record;
  v5 = recordCopy;
  if (!recordCopy)
  {
    goto LABEL_29;
  }

  v6 = self->_parentId == 0;
  parentId = [recordCopy parentId];
  v8 = parentId != 0;

  if (v6 == v8)
  {
    goto LABEL_29;
  }

  parentId = self->_parentId;
  if (parentId)
  {
    parentId2 = [v5 parentId];
    v11 = [(NSString *)parentId isEqual:parentId2];

    if (!v11)
    {
      goto LABEL_29;
    }
  }

  v12 = self->_factorPackSetId == 0;
  factorPackSetId = [v5 factorPackSetId];
  v14 = factorPackSetId != 0;

  if (v12 == v14)
  {
    goto LABEL_29;
  }

  factorPackSetId = self->_factorPackSetId;
  if (factorPackSetId)
  {
    factorPackSetId2 = [v5 factorPackSetId];
    v17 = [(NSString *)factorPackSetId isEqual:factorPackSetId2];

    if (!v17)
    {
      goto LABEL_29;
    }
  }

  deploymentId = self->_deploymentId;
  if (deploymentId != [v5 deploymentId])
  {
    goto LABEL_29;
  }

  v19 = self->_osBuild == 0;
  osBuild = [v5 osBuild];
  v21 = osBuild != 0;

  if (v19 == v21)
  {
    goto LABEL_29;
  }

  osBuild = self->_osBuild;
  if (osBuild)
  {
    osBuild2 = [v5 osBuild];
    v24 = [(NSString *)osBuild isEqual:osBuild2];

    if (!v24)
    {
      goto LABEL_29;
    }
  }

  v25 = self->_languageCode == 0;
  languageCode = [v5 languageCode];
  v27 = languageCode != 0;

  if (v25 == v27)
  {
    goto LABEL_29;
  }

  languageCode = self->_languageCode;
  if (languageCode)
  {
    languageCode2 = [v5 languageCode];
    v30 = [(NSString *)languageCode isEqual:languageCode2];

    if (!v30)
    {
      goto LABEL_29;
    }
  }

  v31 = self->_regionCode == 0;
  regionCode = [v5 regionCode];
  v33 = regionCode != 0;

  if (v31 == v33)
  {
    goto LABEL_29;
  }

  regionCode = self->_regionCode;
  if (regionCode)
  {
    regionCode2 = [v5 regionCode];
    v36 = [(NSString *)regionCode isEqual:regionCode2];

    if (!v36)
    {
      goto LABEL_29;
    }
  }

  v37 = self->_carrierBundleIdentifier == 0;
  carrierBundleIdentifier = [v5 carrierBundleIdentifier];
  v39 = carrierBundleIdentifier != 0;

  if (v37 == v39)
  {
    goto LABEL_29;
  }

  carrierBundleIdentifier = self->_carrierBundleIdentifier;
  if (carrierBundleIdentifier)
  {
    carrierBundleIdentifier2 = [v5 carrierBundleIdentifier];
    v42 = [(NSString *)carrierBundleIdentifier isEqual:carrierBundleIdentifier2];

    if (!v42)
    {
      goto LABEL_29;
    }
  }

  v43 = self->_carrierCountryIsoCode == 0;
  carrierCountryIsoCode = [v5 carrierCountryIsoCode];
  v45 = carrierCountryIsoCode != 0;

  if (v43 == v45)
  {
    goto LABEL_29;
  }

  carrierCountryIsoCode = self->_carrierCountryIsoCode;
  if (carrierCountryIsoCode)
  {
    carrierCountryIsoCode2 = [v5 carrierCountryIsoCode];
    v48 = [(NSString *)carrierCountryIsoCode isEqual:carrierCountryIsoCode2];

    if (!v48)
    {
      goto LABEL_29;
    }
  }

  diagnosticsUsageEnabled = self->_diagnosticsUsageEnabled;
  if (diagnosticsUsageEnabled != [v5 diagnosticsUsageEnabled] || (hasAne = self->_hasAne, hasAne != objc_msgSend(v5, "hasAne")) || (v51 = self->_aneVersion == 0, objc_msgSend(v5, "aneVersion"), v52 = objc_claimAutoreleasedReturnValue(), v53 = v52 != 0, v52, v51 == v53))
  {
LABEL_29:
    v56 = 0;
  }

  else
  {
    aneVersion = self->_aneVersion;
    if (aneVersion)
    {
      aneVersion = [v5 aneVersion];
      v56 = [(NSString *)aneVersion isEqual:aneVersion];
    }

    else
    {
      v56 = 1;
    }
  }

  return v56 & 1;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIActivationEventRecord *)self isEqualToRecord:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_parentId hash];
  v4 = [(NSString *)self->_factorPackSetId hash];
  v5 = self->_deploymentId - (v4 - v3 + 32 * v3) + 32 * (v4 - v3 + 32 * v3);
  v6 = [(NSString *)self->_osBuild hash]- v5 + 32 * v5;
  v7 = [(NSString *)self->_languageCode hash]- v6 + 32 * v6;
  v8 = [(NSString *)self->_regionCode hash]- v7 + 32 * v7;
  v9 = [(NSString *)self->_carrierBundleIdentifier hash]- v8 + 32 * v8;
  v10 = [(NSString *)self->_carrierCountryIsoCode hash];
  v11 = self->_diagnosticsUsageEnabled - (v10 - v9 + 32 * v9) + 32 * (v10 - v9 + 32 * v9);
  v12 = self->_hasAne - v11 + 32 * v11;
  return [(NSString *)self->_aneVersion hash]- v12 + 32 * v12;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  parentId = self->_parentId;
  factorPackSetId = self->_factorPackSetId;
  v6 = [MEMORY[0x277CCABB0] numberWithInt:self->_deploymentId];
  v13 = *&self->_osBuild;
  v12 = *&self->_regionCode;
  carrierCountryIsoCode = self->_carrierCountryIsoCode;
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:self->_diagnosticsUsageEnabled];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:self->_hasAne];
  v10 = [v3 initWithFormat:@"<TRIActivationEventRecord | parentId:%@ factorPackSetId:%@ deploymentId:%@ osBuild:%@ languageCode:%@ regionCode:%@ carrierBundleIdentifier:%@ carrierCountryIsoCode:%@ diagnosticsUsageEnabled:%@ hasAne:%@ aneVersion:%@>", parentId, factorPackSetId, v6, v13, v12, carrierCountryIsoCode, v8, v9, self->_aneVersion];

  return v10;
}

@end