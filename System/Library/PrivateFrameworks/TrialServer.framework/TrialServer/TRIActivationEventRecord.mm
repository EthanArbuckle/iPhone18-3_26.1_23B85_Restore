@interface TRIActivationEventRecord
+ (id)recordWithParentId:(id)a3 factorPackSetId:(id)a4 deploymentId:(int)a5 osBuild:(id)a6 languageCode:(id)a7 regionCode:(id)a8 carrierBundleIdentifier:(id)a9 carrierCountryIsoCode:(id)a10 diagnosticsUsageEnabled:(int64_t)a11 hasAne:(int64_t)a12 aneVersion:(id)a13;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRecord:(id)a3;
- (TRIActivationEventRecord)initWithParentId:(id)a3 factorPackSetId:(id)a4 deploymentId:(int)a5 osBuild:(id)a6 languageCode:(id)a7 regionCode:(id)a8 carrierBundleIdentifier:(id)a9 carrierCountryIsoCode:(id)a10 diagnosticsUsageEnabled:(int64_t)a11 hasAne:(int64_t)a12 aneVersion:(id)a13;
- (id)copyWithReplacementAneVersion:(id)a3;
- (id)copyWithReplacementCarrierBundleIdentifier:(id)a3;
- (id)copyWithReplacementCarrierCountryIsoCode:(id)a3;
- (id)copyWithReplacementFactorPackSetId:(id)a3;
- (id)copyWithReplacementLanguageCode:(id)a3;
- (id)copyWithReplacementOsBuild:(id)a3;
- (id)copyWithReplacementParentId:(id)a3;
- (id)copyWithReplacementRegionCode:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation TRIActivationEventRecord

- (TRIActivationEventRecord)initWithParentId:(id)a3 factorPackSetId:(id)a4 deploymentId:(int)a5 osBuild:(id)a6 languageCode:(id)a7 regionCode:(id)a8 carrierBundleIdentifier:(id)a9 carrierCountryIsoCode:(id)a10 diagnosticsUsageEnabled:(int64_t)a11 hasAne:(int64_t)a12 aneVersion:(id)a13
{
  v17 = a3;
  v37 = a4;
  v18 = a4;
  v39 = a6;
  v19 = a6;
  v40 = a7;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v44 = a10;
  v23 = a13;
  v41 = v22;
  v42 = v23;
  if (v17)
  {
    if (v18)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v27 = [MEMORY[0x277CCA890] currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:1266 description:{@"Invalid parameter not satisfying: %@", @"parentId != nil"}];

    v22 = v41;
    v23 = v42;
    if (v18)
    {
LABEL_3:
      if (v19)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  v28 = [MEMORY[0x277CCA890] currentHandler];
  [v28 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:1267 description:{@"Invalid parameter not satisfying: %@", @"factorPackSetId != nil"}];

  v22 = v41;
  v23 = v42;
  if (v19)
  {
LABEL_4:
    if (v20)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v29 = [MEMORY[0x277CCA890] currentHandler];
  [v29 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:1268 description:{@"Invalid parameter not satisfying: %@", @"osBuild != nil"}];

  v22 = v41;
  v23 = v42;
  if (v20)
  {
LABEL_5:
    if (v21)
    {
      goto LABEL_6;
    }

LABEL_16:
    v31 = [MEMORY[0x277CCA890] currentHandler];
    [v31 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:1270 description:{@"Invalid parameter not satisfying: %@", @"regionCode != nil"}];

    v23 = v42;
    if (v41)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_15:
  v30 = [MEMORY[0x277CCA890] currentHandler];
  [v30 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:1269 description:{@"Invalid parameter not satisfying: %@", @"languageCode != nil"}];

  v22 = v41;
  v23 = v42;
  if (!v21)
  {
    goto LABEL_16;
  }

LABEL_6:
  if (v22)
  {
    goto LABEL_7;
  }

LABEL_17:
  v32 = [MEMORY[0x277CCA890] currentHandler];
  [v32 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:1271 description:{@"Invalid parameter not satisfying: %@", @"carrierBundleIdentifier != nil"}];

  v23 = v42;
LABEL_7:
  if (v44)
  {
    if (v23)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v33 = [MEMORY[0x277CCA890] currentHandler];
    [v33 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:1272 description:{@"Invalid parameter not satisfying: %@", @"carrierCountryIsoCode != nil"}];

    if (v42)
    {
      goto LABEL_9;
    }
  }

  v34 = [MEMORY[0x277CCA890] currentHandler];
  [v34 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:1273 description:{@"Invalid parameter not satisfying: %@", @"aneVersion != nil"}];

LABEL_9:
  v45.receiver = self;
  v45.super_class = TRIActivationEventRecord;
  v24 = [(TRIActivationEventRecord *)&v45 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_parentId, a3);
    objc_storeStrong(&v25->_factorPackSetId, v37);
    v25->_deploymentId = a5;
    objc_storeStrong(&v25->_osBuild, v39);
    objc_storeStrong(&v25->_languageCode, v40);
    objc_storeStrong(&v25->_regionCode, a8);
    objc_storeStrong(&v25->_carrierBundleIdentifier, a9);
    objc_storeStrong(&v25->_carrierCountryIsoCode, a10);
    v25->_diagnosticsUsageEnabled = a11;
    v25->_hasAne = a12;
    objc_storeStrong(&v25->_aneVersion, a13);
  }

  return v25;
}

+ (id)recordWithParentId:(id)a3 factorPackSetId:(id)a4 deploymentId:(int)a5 osBuild:(id)a6 languageCode:(id)a7 regionCode:(id)a8 carrierBundleIdentifier:(id)a9 carrierCountryIsoCode:(id)a10 diagnosticsUsageEnabled:(int64_t)a11 hasAne:(int64_t)a12 aneVersion:(id)a13
{
  v19 = a13;
  v20 = a10;
  v21 = a9;
  v22 = a8;
  v23 = a7;
  v24 = a6;
  v25 = a4;
  v26 = a3;
  v27 = [[a1 alloc] initWithParentId:v26 factorPackSetId:v25 deploymentId:a5 osBuild:v24 languageCode:v23 regionCode:v22 carrierBundleIdentifier:v21 carrierCountryIsoCode:v20 diagnosticsUsageEnabled:a11 hasAne:a12 aneVersion:v19];

  return v27;
}

- (id)copyWithReplacementParentId:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  v6 = *&self->_carrierBundleIdentifier;
  v7 = [v5 initWithParentId:v4 factorPackSetId:self->_factorPackSetId deploymentId:self->_deploymentId osBuild:self->_osBuild languageCode:self->_languageCode regionCode:self->_regionCode carrierBundleIdentifier:self->_carrierBundleIdentifier carrierCountryIsoCode:self->_carrierCountryIsoCode diagnosticsUsageEnabled:self->_diagnosticsUsageEnabled hasAne:self->_hasAne aneVersion:self->_aneVersion];

  return v7;
}

- (id)copyWithReplacementFactorPackSetId:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  v6 = *&self->_carrierBundleIdentifier;
  v7 = [v5 initWithParentId:self->_parentId factorPackSetId:v4 deploymentId:self->_deploymentId osBuild:self->_osBuild languageCode:self->_languageCode regionCode:self->_regionCode carrierBundleIdentifier:self->_carrierBundleIdentifier carrierCountryIsoCode:self->_carrierCountryIsoCode diagnosticsUsageEnabled:self->_diagnosticsUsageEnabled hasAne:self->_hasAne aneVersion:self->_aneVersion];

  return v7;
}

- (id)copyWithReplacementOsBuild:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  v6 = *&self->_carrierBundleIdentifier;
  v7 = [v5 initWithParentId:self->_parentId factorPackSetId:self->_factorPackSetId deploymentId:self->_deploymentId osBuild:v4 languageCode:self->_languageCode regionCode:self->_regionCode carrierBundleIdentifier:self->_carrierBundleIdentifier carrierCountryIsoCode:self->_carrierCountryIsoCode diagnosticsUsageEnabled:self->_diagnosticsUsageEnabled hasAne:self->_hasAne aneVersion:self->_aneVersion];

  return v7;
}

- (id)copyWithReplacementLanguageCode:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  v6 = *&self->_carrierBundleIdentifier;
  v7 = [v5 initWithParentId:self->_parentId factorPackSetId:self->_factorPackSetId deploymentId:self->_deploymentId osBuild:self->_osBuild languageCode:v4 regionCode:self->_regionCode carrierBundleIdentifier:self->_carrierBundleIdentifier carrierCountryIsoCode:self->_carrierCountryIsoCode diagnosticsUsageEnabled:self->_diagnosticsUsageEnabled hasAne:self->_hasAne aneVersion:self->_aneVersion];

  return v7;
}

- (id)copyWithReplacementRegionCode:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  v6 = *&self->_carrierBundleIdentifier;
  v7 = [v5 initWithParentId:self->_parentId factorPackSetId:self->_factorPackSetId deploymentId:self->_deploymentId osBuild:self->_osBuild languageCode:self->_languageCode regionCode:v4 carrierBundleIdentifier:self->_carrierBundleIdentifier carrierCountryIsoCode:self->_carrierCountryIsoCode diagnosticsUsageEnabled:self->_diagnosticsUsageEnabled hasAne:self->_hasAne aneVersion:self->_aneVersion];

  return v7;
}

- (id)copyWithReplacementCarrierBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithParentId:self->_parentId factorPackSetId:self->_factorPackSetId deploymentId:self->_deploymentId osBuild:self->_osBuild languageCode:self->_languageCode regionCode:self->_regionCode carrierBundleIdentifier:v4 carrierCountryIsoCode:self->_carrierCountryIsoCode diagnosticsUsageEnabled:self->_diagnosticsUsageEnabled hasAne:self->_hasAne aneVersion:self->_aneVersion];

  return v5;
}

- (id)copyWithReplacementCarrierCountryIsoCode:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithParentId:self->_parentId factorPackSetId:self->_factorPackSetId deploymentId:self->_deploymentId osBuild:self->_osBuild languageCode:self->_languageCode regionCode:self->_regionCode carrierBundleIdentifier:self->_carrierBundleIdentifier carrierCountryIsoCode:v4 diagnosticsUsageEnabled:self->_diagnosticsUsageEnabled hasAne:self->_hasAne aneVersion:self->_aneVersion];

  return v5;
}

- (id)copyWithReplacementAneVersion:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithParentId:self->_parentId factorPackSetId:self->_factorPackSetId deploymentId:self->_deploymentId osBuild:self->_osBuild languageCode:self->_languageCode regionCode:self->_regionCode carrierBundleIdentifier:self->_carrierBundleIdentifier carrierCountryIsoCode:self->_carrierCountryIsoCode diagnosticsUsageEnabled:self->_diagnosticsUsageEnabled hasAne:self->_hasAne aneVersion:v4];

  return v5;
}

- (BOOL)isEqualToRecord:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_29;
  }

  v6 = self->_parentId == 0;
  v7 = [v4 parentId];
  v8 = v7 != 0;

  if (v6 == v8)
  {
    goto LABEL_29;
  }

  parentId = self->_parentId;
  if (parentId)
  {
    v10 = [v5 parentId];
    v11 = [(NSString *)parentId isEqual:v10];

    if (!v11)
    {
      goto LABEL_29;
    }
  }

  v12 = self->_factorPackSetId == 0;
  v13 = [v5 factorPackSetId];
  v14 = v13 != 0;

  if (v12 == v14)
  {
    goto LABEL_29;
  }

  factorPackSetId = self->_factorPackSetId;
  if (factorPackSetId)
  {
    v16 = [v5 factorPackSetId];
    v17 = [(NSString *)factorPackSetId isEqual:v16];

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
  v20 = [v5 osBuild];
  v21 = v20 != 0;

  if (v19 == v21)
  {
    goto LABEL_29;
  }

  osBuild = self->_osBuild;
  if (osBuild)
  {
    v23 = [v5 osBuild];
    v24 = [(NSString *)osBuild isEqual:v23];

    if (!v24)
    {
      goto LABEL_29;
    }
  }

  v25 = self->_languageCode == 0;
  v26 = [v5 languageCode];
  v27 = v26 != 0;

  if (v25 == v27)
  {
    goto LABEL_29;
  }

  languageCode = self->_languageCode;
  if (languageCode)
  {
    v29 = [v5 languageCode];
    v30 = [(NSString *)languageCode isEqual:v29];

    if (!v30)
    {
      goto LABEL_29;
    }
  }

  v31 = self->_regionCode == 0;
  v32 = [v5 regionCode];
  v33 = v32 != 0;

  if (v31 == v33)
  {
    goto LABEL_29;
  }

  regionCode = self->_regionCode;
  if (regionCode)
  {
    v35 = [v5 regionCode];
    v36 = [(NSString *)regionCode isEqual:v35];

    if (!v36)
    {
      goto LABEL_29;
    }
  }

  v37 = self->_carrierBundleIdentifier == 0;
  v38 = [v5 carrierBundleIdentifier];
  v39 = v38 != 0;

  if (v37 == v39)
  {
    goto LABEL_29;
  }

  carrierBundleIdentifier = self->_carrierBundleIdentifier;
  if (carrierBundleIdentifier)
  {
    v41 = [v5 carrierBundleIdentifier];
    v42 = [(NSString *)carrierBundleIdentifier isEqual:v41];

    if (!v42)
    {
      goto LABEL_29;
    }
  }

  v43 = self->_carrierCountryIsoCode == 0;
  v44 = [v5 carrierCountryIsoCode];
  v45 = v44 != 0;

  if (v43 == v45)
  {
    goto LABEL_29;
  }

  carrierCountryIsoCode = self->_carrierCountryIsoCode;
  if (carrierCountryIsoCode)
  {
    v47 = [v5 carrierCountryIsoCode];
    v48 = [(NSString *)carrierCountryIsoCode isEqual:v47];

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
      v55 = [v5 aneVersion];
      v56 = [(NSString *)aneVersion isEqual:v55];
    }

    else
    {
      v56 = 1;
    }
  }

  return v56 & 1;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIActivationEventRecord *)self isEqualToRecord:v5];
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