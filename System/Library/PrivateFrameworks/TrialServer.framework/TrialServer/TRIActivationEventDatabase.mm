@interface TRIActivationEventDatabase
- ($61A80719B04F7407D3E47539F1B23CAA)addRecordWithParentId:(id)id factorPackSetId:(id)setId deploymentId:(int)deploymentId osBuild:(id)build languageCode:(id)code regionCode:(id)regionCode carrierBundleId:(id)bundleId carrierCountryCode:(id)self0 diagnosticsUsageEnabled:(BOOL)self1 hasAne:(BOOL)self2 aneVersion:(id)self3 transaction:(id)self4;
- ($61A80719B04F7407D3E47539F1B23CAA)deleteRecordWithParentId:(id)id factorPackSetId:(id)setId deploymentId:(int)deploymentId;
- (TRIActivationEventDatabase)initWithDatabase:(id)database;
- (id)activationEventRecordWithParentId:(id)id factorPackSetId:(id)setId deploymentId:(int)deploymentId;
@end

@implementation TRIActivationEventDatabase

- (TRIActivationEventDatabase)initWithDatabase:(id)database
{
  databaseCopy = database;
  if (!databaseCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIActivationEventDatabase.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"database"}];
  }

  v11.receiver = self;
  v11.super_class = TRIActivationEventDatabase;
  v7 = [(TRIActivationEventDatabase *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_db, database);
  }

  return v8;
}

- ($61A80719B04F7407D3E47539F1B23CAA)addRecordWithParentId:(id)id factorPackSetId:(id)setId deploymentId:(int)deploymentId osBuild:(id)build languageCode:(id)code regionCode:(id)regionCode carrierBundleId:(id)bundleId carrierCountryCode:(id)self0 diagnosticsUsageEnabled:(BOOL)self1 hasAne:(BOOL)self2 aneVersion:(id)self3 transaction:(id)self4
{
  idCopy = id;
  setIdCopy = setId;
  buildCopy = build;
  codeCopy = code;
  regionCodeCopy = regionCode;
  bundleIdCopy = bundleId;
  countryCodeCopy = countryCode;
  versionCopy = version;
  transactionCopy = transaction;
  v27 = idCopy;
  if (idCopy)
  {
    if (setIdCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIActivationEventDatabase.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"parentId"}];

    v27 = 0;
    if (setIdCopy)
    {
      goto LABEL_3;
    }
  }

  v44 = v27;
  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIActivationEventDatabase.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"factorPackSetId"}];

  v27 = v44;
LABEL_3:
  v28 = buildCopy;
  if (buildCopy)
  {
    if (codeCopy)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v46 = v27;
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"TRIActivationEventDatabase.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"osBuild"}];

    v27 = v46;
    if (codeCopy)
    {
      goto LABEL_5;
    }
  }

  v48 = v27;
  currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler4 handleFailureInMethod:a2 object:self file:@"TRIActivationEventDatabase.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"languageCode"}];

  v27 = v48;
LABEL_5:
  v29 = codeCopy;
  if (!regionCodeCopy)
  {
    v50 = v27;
    currentHandler5 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler5 handleFailureInMethod:a2 object:self file:@"TRIActivationEventDatabase.m" lineNumber:54 description:{@"Invalid parameter not satisfying: %@", @"regionCode"}];

    v27 = v50;
  }

  v30 = regionCodeCopy;
  if (!bundleIdCopy)
  {
    v52 = v27;
    currentHandler6 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler6 handleFailureInMethod:a2 object:self file:@"TRIActivationEventDatabase.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"carrierBundleId"}];

    v27 = v52;
  }

  v31 = bundleIdCopy;
  v62 = transactionCopy;
  if (!countryCodeCopy)
  {
    v54 = v27;
    currentHandler7 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler7 handleFailureInMethod:a2 object:self file:@"TRIActivationEventDatabase.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"carrierCountryCode"}];

    v27 = v54;
  }

  v32 = countryCodeCopy;
  if (!versionCopy)
  {
    v58 = v27;
    currentHandler8 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler8 handleFailureInMethod:a2 object:self file:@"TRIActivationEventDatabase.m" lineNumber:57 description:{@"Invalid parameter not satisfying: %@", @"aneVersion"}];

    v27 = v58;
  }

  v78 = 0;
  v79 = &v78;
  v80 = 0x2810000000;
  v81 = &unk_26F7089E2;
  v82 = 0;
  v64[0] = MEMORY[0x277D85DD0];
  v64[1] = 3221225472;
  v64[2] = __202__TRIActivationEventDatabase_addRecordWithParentId_factorPackSetId_deploymentId_osBuild_languageCode_regionCode_carrierBundleId_carrierCountryCode_diagnosticsUsageEnabled_hasAne_aneVersion_transaction___block_invoke;
  v64[3] = &unk_279DE1470;
  v60 = v27;
  v65 = v60;
  v57 = setIdCopy;
  v66 = v57;
  deploymentIdCopy = deploymentId;
  v33 = v28;
  v67 = v33;
  v34 = v29;
  v68 = v34;
  v35 = v30;
  v69 = v35;
  v36 = v31;
  v70 = v36;
  v37 = v32;
  v71 = v37;
  enabledCopy = enabled;
  aneCopy = ane;
  v38 = versionCopy;
  v72 = v38;
  selfCopy = self;
  v74 = &v78;
  v39 = MEMORY[0x2743948D0](v64);
  v40 = v39;
  if (v62)
  {
    (*(v39 + 16))(v39, v62);
  }

  else
  {
    [(TRIActivationEventDatabase *)self writeTransactionWithFailableBlock:v39];
  }

  v41.var0 = v79[4];

  _Block_object_dispose(&v78, 8);
  return v41;
}

uint64_t __202__TRIActivationEventDatabase_addRecordWithParentId_factorPackSetId_deploymentId_osBuild_languageCode_regionCode_carrierBundleId_carrierCountryCode_diagnosticsUsageEnabled_hasAne_aneVersion_transaction___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 db];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __202__TRIActivationEventDatabase_addRecordWithParentId_factorPackSetId_deploymentId_osBuild_languageCode_regionCode_carrierBundleId_carrierCountryCode_diagnosticsUsageEnabled_hasAne_aneVersion_transaction___block_invoke_2;
  v26[3] = &unk_279DE1448;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v31 = *(a1 + 112);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  *&v10 = v5;
  *(&v10 + 1) = v6;
  v27 = v10;
  v28 = v9;
  v11 = *(a1 + 64);
  v12 = *(a1 + 72);
  v13 = *(a1 + 80);
  v32 = *(a1 + 116);
  v14 = *(a1 + 88);
  *&v15 = v13;
  *(&v15 + 1) = v14;
  *&v16 = v11;
  *(&v16 + 1) = v12;
  v29 = v16;
  v30 = v15;
  v17 = *(*(a1 + 96) + 8);
  v25 = 0;
  v18 = [v17 generalErrorHandlerWithOutError:&v25];
  v19 = v25;
  LOBYTE(v13) = [v4 prepAndRunQuery:@" INSERT OR IGNORE INTO activationEvents(    experimentId onPrep:treatmentId onRow:deploymentId onError:{osBuild, languageCode, regionCode, carrierBundleId, carrierCountryCode, diagnosticsUsageEnabled, hasAne, aneVersion) VALUES(    :experiment_id, :treatment_id, :deployment_id, :os_build, :language_code, :region_code, :carrier_bundle_id, :carrier_country_code, :diagnostics_usage_enabled, :has_ane, :ane_version);", v26, 0, v18}];

  if (v13)
  {
    v20 = [v3 db];
    v21 = sqlite3_changes([v20 handle]);

    if (v21)
    {
      v22 = 1;
    }

    else
    {
      v22 = 2;
    }

    *(*(*(a1 + 104) + 8) + 32) = v22;
    v23 = MEMORY[0x277D42670];
  }

  else
  {
    *(*(*(a1 + 104) + 8) + 32) = 0;
    v23 = MEMORY[0x277D42678];
  }

  return *v23;
}

void __202__TRIActivationEventDatabase_addRecordWithParentId_factorPackSetId_deploymentId_osBuild_languageCode_regionCode_carrierBundleId_carrierCountryCode_diagnosticsUsageEnabled_hasAne_aneVersion_transaction___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindNamedParam:":experiment_id" toNSString:v3];
  [v4 bindNamedParam:":treatment_id" toNSString:*(a1 + 40)];
  [v4 bindNamedParam:":deployment_id" toInt64:*(a1 + 96)];
  [v4 bindNamedParam:":os_build" toNSString:*(a1 + 48)];
  [v4 bindNamedParam:":language_code" toNSString:*(a1 + 56)];
  [v4 bindNamedParam:":region_code" toNSString:*(a1 + 64)];
  [v4 bindNamedParam:":carrier_bundle_id" toNSString:*(a1 + 72)];
  [v4 bindNamedParam:":carrier_country_code" toNSString:*(a1 + 80)];
  [v4 bindNamedParam:":diagnostics_usage_enabled" toInteger:*(a1 + 100)];
  [v4 bindNamedParam:":has_ane" toInteger:*(a1 + 101)];
  [v4 bindNamedParam:":ane_version" toNSString:*(a1 + 88)];
}

- (id)activationEventRecordWithParentId:(id)id factorPackSetId:(id)setId deploymentId:(int)deploymentId
{
  idCopy = id;
  setIdCopy = setId;
  v11 = setIdCopy;
  if (idCopy)
  {
    if (setIdCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIActivationEventDatabase.m" lineNumber:130 description:{@"Invalid parameter not satisfying: %@", @"parentId"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIActivationEventDatabase.m" lineNumber:131 description:{@"Invalid parameter not satisfying: %@", @"factorPackSetId"}];

LABEL_3:
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__17;
  v29 = __Block_byref_object_dispose__17;
  v30 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __93__TRIActivationEventDatabase_activationEventRecordWithParentId_factorPackSetId_deploymentId___block_invoke;
  v18[3] = &unk_279DE14E8;
  v12 = idCopy;
  v19 = v12;
  v13 = v11;
  deploymentIdCopy = deploymentId;
  v20 = v13;
  selfCopy = self;
  v22 = &v25;
  v23 = a2;
  [(TRIActivationEventDatabase *)self readTransactionWithFailableBlock:v18];
  v14 = v26[5];

  _Block_object_dispose(&v25, 8);

  return v14;
}

uint64_t __93__TRIActivationEventDatabase_activationEventRecordWithParentId_factorPackSetId_deploymentId___block_invoke(uint64_t a1, void *a2)
{
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __93__TRIActivationEventDatabase_activationEventRecordWithParentId_factorPackSetId_deploymentId___block_invoke_2;
  v19[3] = &unk_279DE1498;
  v20 = *(a1 + 32);
  v21 = *(a1 + 40);
  v22 = *(a1 + 72);
  v4 = a2;
  v5 = MEMORY[0x2743948D0](v19);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __93__TRIActivationEventDatabase_activationEventRecordWithParentId_factorPackSetId_deploymentId___block_invoke_3;
  v14[3] = &unk_279DE14C0;
  v14[4] = *(a1 + 48);
  v17 = *(a1 + 56);
  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  v18 = *(a1 + 72);
  v6 = MEMORY[0x2743948D0](v14);
  v7 = [v4 db];

  v8 = [*(*(a1 + 48) + 8) generalErrorHandlerWithOutError:0];
  v9 = [v7 prepAndRunQuery:@" SELECT * FROM     activationEvents  WHERE         experimentId = :experiment_id    AND treatmentId = :treatment_id    AND deploymentId = :deployment_id" onPrep:v5 onRow:v6 onError:v8];

  v10 = *(*(a1 + 56) + 8);
  if (v9)
  {
    v11 = *(v10 + 40);
    v12 = MEMORY[0x277D42670];
  }

  else
  {
    v11 = 0;
    v12 = MEMORY[0x277D42678];
  }

  objc_storeStrong((v10 + 40), v11);

  return *v12;
}

void __93__TRIActivationEventDatabase_activationEventRecordWithParentId_factorPackSetId_deploymentId___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindNamedParam:":experiment_id" toNSString:v3];
  [v4 bindNamedParam:":treatment_id" toNSString:*(a1 + 40)];
  [v4 bindNamedParam:":deployment_id" toInt64:*(a1 + 48)];
}

uint64_t __93__TRIActivationEventDatabase_activationEventRecordWithParentId_factorPackSetId_deploymentId___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getNSStringForColumnName:"osBuild" table:0];
  v5 = [v3 getNSStringForColumnName:"languageCode" table:0];
  v6 = [v3 getNSStringForColumnName:"regionCode" table:0];
  v7 = [v3 getNSStringForColumnName:"carrierBundleId" table:0];
  if (!v7)
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"TRIActivationEventDatabase.m" lineNumber:153 description:{@"Expression was unexpectedly nil/false: %@", @"[stmt getNSStringForColumnName:carrierBundleId table:nil]"}];
  }

  v8 = [v3 getNSStringForColumnName:"carrierCountryCode" table:0];
  if (!v8)
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"TRIActivationEventDatabase.m" lineNumber:154 description:{@"Expression was unexpectedly nil/false: %@", @"[stmt getNSStringForColumnName:carrierCountryCode table:nil]"}];
  }

  v9 = [v3 getIntegerForColumnName:"diagnosticsUsageEnabled" table:0];
  v10 = [v3 getIntegerForColumnName:"hasAne" table:0];
  v11 = [v3 getNSStringForColumnName:"aneVersion" table:0];
  if (!v11)
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    [v19 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"TRIActivationEventDatabase.m" lineNumber:157 description:{@"Expression was unexpectedly nil/false: %@", @"[stmt getNSStringForColumnName:aneVersion table:nil]"}];
  }

  v12 = 0;
  if (v4 && v5 && v6)
  {
    v12 = [TRIActivationEventRecord recordWithParentId:*(a1 + 40) factorPackSetId:*(a1 + 48) deploymentId:*(a1 + 72) osBuild:v4 languageCode:v5 regionCode:v6 carrierBundleIdentifier:v7 carrierCountryIsoCode:v8 diagnosticsUsageEnabled:v9 hasAne:v10 aneVersion:v11];
  }

  v13 = *(*(a1 + 56) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  v15 = MEMORY[0x277D42698];
  return *v15;
}

- ($61A80719B04F7407D3E47539F1B23CAA)deleteRecordWithParentId:(id)id factorPackSetId:(id)setId deploymentId:(int)deploymentId
{
  idCopy = id;
  setIdCopy = setId;
  v11 = setIdCopy;
  if (!idCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIActivationEventDatabase.m" lineNumber:192 description:{@"Invalid parameter not satisfying: %@", @"parentId"}];

    if (v11)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIActivationEventDatabase.m" lineNumber:193 description:{@"Invalid parameter not satisfying: %@", @"factorPackSetId"}];

    goto LABEL_3;
  }

  if (!setIdCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v24 = 0;
  v25 = &v24;
  v26 = 0x2810000000;
  v27 = &unk_26F7089E2;
  v28 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __84__TRIActivationEventDatabase_deleteRecordWithParentId_factorPackSetId_deploymentId___block_invoke;
  v18[3] = &unk_279DE1510;
  v12 = idCopy;
  v19 = v12;
  v13 = v11;
  deploymentIdCopy = deploymentId;
  v20 = v13;
  selfCopy = self;
  v22 = &v24;
  [(TRIActivationEventDatabase *)self writeTransactionWithFailableBlock:v18];
  v14.var0 = v25[4];

  _Block_object_dispose(&v24, 8);
  return v14;
}

uint64_t __84__TRIActivationEventDatabase_deleteRecordWithParentId_factorPackSetId_deploymentId___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 db];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __84__TRIActivationEventDatabase_deleteRecordWithParentId_factorPackSetId_deploymentId___block_invoke_2;
  v12[3] = &unk_279DE1498;
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = *(a1 + 64);
  v5 = [*(*(a1 + 48) + 8) generalErrorHandlerWithOutError:0];
  v6 = [v4 prepAndRunQuery:@" DELETE FROM     activationEvents  WHERE         experimentId = :experiment_id    AND treatmentId = :treatment_id    AND deploymentId = :deployment_id;" onPrep:v12 onRow:0 onError:v5];

  if (v6)
  {
    v7 = [v3 db];
    v8 = sqlite3_changes([v7 handle]);
    v9 = 1;
    if (v8 <= 0)
    {
      v9 = 2;
    }

    *(*(*(a1 + 56) + 8) + 32) = v9;

    v10 = MEMORY[0x277D42670];
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 32) = 0;
    v10 = MEMORY[0x277D42678];
  }

  return *v10;
}

void __84__TRIActivationEventDatabase_deleteRecordWithParentId_factorPackSetId_deploymentId___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindNamedParam:":experiment_id" toNSString:v3];
  [v4 bindNamedParam:":treatment_id" toNSString:*(a1 + 40)];
  [v4 bindNamedParam:":deployment_id" toInt64:*(a1 + 48)];
}

@end