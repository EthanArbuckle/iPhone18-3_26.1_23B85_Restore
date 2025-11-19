@interface PPSQLDatabase
+ (PPSQLDatabase)sharedInstance;
+ (id)createTempTableContainingRowsFromQuery:(id)a3 descriptiveTableName:(id)a4 txnWitness:(id)a5 bind:(id)a6;
+ (id)createTempViewContainingRowsFromQuery:(id)a3 descriptiveTableName:(id)a4 txnWitness:(id)a5;
+ (id)nonMigratingToolsInstance;
+ (id)nonMigratingToolsInstanceWithParentDirectory:(id)a3;
+ (void)dropTableWithName:(id)a3 txnWitness:(id)a4;
+ (void)dropViewWithName:(id)a3 txnWitness:(id)a4;
- (BOOL)_handleCorruption;
- (BOOL)_isCorruptionMarkerPresent;
- (BOOL)_prepareDatabaseHandleForMigration;
- (BOOL)_removeCorruptionMarker;
- (BOOL)optimizeDatabaseWithShouldContinueBlock:(id)a3;
- (BOOL)unmigrate;
- (BOOL)vacuumDatabaseWithShouldContinueBlock:(id)a3;
- (id)_allTables;
- (id)_initWithPath:(id)a3 performMigrations:(BOOL)a4;
- (id)_openFreshHandleForClient:(unsigned __int8)a3;
- (id)checkWithError:(id *)a3;
- (id)migrations;
- (id)queriesToSkipFromEmptyToVersion:(unsigned int *)a3;
- (id)sourceStats:(unint64_t)a3;
- (id)sourceStats:(unint64_t)a3 forTableWithName:(id)a4 txnWitness:(id)a5;
- (id)stats;
- (unint64_t)maxSchemaVersion;
- (unsigned)migration_ConvertLocationDescriptionsToLowercase;
- (void)_disableQueryLoggingForHandle:(id)a3;
- (void)_enableQueryLoggingForHandle:(id)a3;
- (void)_releaseReadOnlyHandle:(id)a3 client:(unsigned __int8)a4;
@end

@implementation PPSQLDatabase

- (id)queriesToSkipFromEmptyToVersion:(unsigned int *)a3
{
  if (a3)
  {
    *a3 = 0;
  }

  return MEMORY[0x277CBEBF8];
}

- (id)migrations
{
  v30[37] = *MEMORY[0x277D85DE8];
  v29[0] = &unk_284783D80;
  v28[0] = @"CREATE TABLE sources(   id INTEGER PRIMARY KEY AUTOINCREMENT,     ref_count INTEGER NOT NULL,     bundle_id TEXT NOT NULL,     group_id TEXT,     doc_id TEXT NOT NULL,     seconds_from_1970 REAL NOT NULL,     sha256 BLOB UNIQUE NOT NULL)";
  v28[1] = @"CREATE INDEX ix_sources_ref_count ON sources (ref_count)";
  v28[2] = @"CREATE INDEX ix_sources_bundle_id ON sources (bundle_id)";
  v28[3] = @"CREATE INDEX ix_sources_bundle_id_group_id ON sources (bundle_id, group_id)";
  v28[4] = @"CREATE INDEX ix_sources_bundle_id_group_id_doc_id ON sources (bundle_id, group_id, doc_id)";
  v28[5] = @"CREATE INDEX ix_sources_seconds_from_1970 ON sources (seconds_from_1970)";
  v28[6] = @"CREATE TABLE ne_records(   id INTEGER PRIMARY KEY AUTOINCREMENT,     name TEXT NOT NULL,     lc_name TEXT NOT NULL,     category INTEGER NOT NULL,     language TEXT NOT NULL,     algorithm INTEGER NOT NULL,     initial_score REAL NOT NULL,     decay_rate REAL NOT NULL,     extraction_os_build TEXT,     extraction_asset_version INTEGER,     source_id INTEGER NOT NULL REFERENCES sources (id),     is_remote INTEGER NOT NULL,     dk_event_id BLOB)";
  v28[7] = @"CREATE INDEX ne_ix_records_lc_name ON ne_records (lc_name)";
  v28[8] = @"CREATE INDEX ne_ix_records_category ON ne_records (category)";
  v28[9] = @"CREATE INDEX ne_ix_records_source_id ON ne_records (source_id)";
  v28[10] = @"CREATE INDEX ne_ix_records_dk_event_id ON ne_records (dk_event_id)";
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:11];
  v30[0] = v16;
  v29[1] = &unk_284783DB0;
  v27[0] = @"ALTER TABLE ne_records ADD COLUMN is_sync_eligible INTEGER NOT NULL DEFAULT 0";
  v27[1] = @"CREATE TABLE kv_blobs(   id INTEGER PRIMARY KEY AUTOINCREMENT,     key TEXT UNIQUE NOT NULL,     value BLOB NOT NULL)";
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
  v30[1] = v15;
  v30[2] = &unk_284785388;
  v29[2] = &unk_284783DC8;
  v29[3] = &unk_284783DE0;
  v26[0] = @"CREATE TABLE tp_records(   id INTEGER PRIMARY KEY AUTOINCREMENT,     qid TEXT NOT NULL,     algorithm INTEGER NOT NULL,     initial_score REAL NOT NULL,     decay_rate REAL NOT NULL,     sentiment_score REAL NOT NULL,     extraction_os_build TEXT,     extraction_asset_version INTEGER,     source_id INTEGER NOT NULL REFERENCES sources (id),     is_remote INTEGER NOT NULL,     is_sync_eligible INTEGER NOT NULL,     dk_event_id BLOB)";
  v26[1] = @"CREATE INDEX tp_ix_records_qid ON tp_records (qid)";
  v26[2] = @"CREATE INDEX tp_ix_records_source_id ON tp_records (source_id)";
  v26[3] = @"CREATE INDEX tp_ix_records_dk_event_id ON tp_records (dk_event_id)";
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:4];
  v30[3] = v14;
  v30[4] = &unk_2847853A0;
  v29[4] = &unk_284783DF8;
  v29[5] = &unk_284783E10;
  v30[5] = &unk_2847853B8;
  v29[6] = &unk_284783E28;
  v25[0] = @"CREATE TABLE loc_records(   id INTEGER PRIMARY KEY AUTOINCREMENT,     clp_location BLOB,     cll_latitude_degrees REAL,     cll_longitude_degrees REAL,     clp_name TEXT,     clp_thoroughfare TEXT,     clp_subThoroughfare TEXT,     clp_locality TEXT,     clp_subLocality TEXT,     clp_administrativeArea TEXT,     clp_subAdministrativeArea TEXT,     clp_postalCode TEXT,     clp_ISOcountryCode TEXT,     clp_country TEXT,     clp_inlandWater TEXT,     clp_ocean TEXT,     uuid BLOB NOT NULL,     category INTEGER NOT NULL,     algorithm INTEGER NOT NULL,     initial_score REAL NOT NULL,     decay_rate REAL NOT NULL,     sentiment_score REAL NOT NULL,     extraction_os_build TEXT,     extraction_asset_version INTEGER,     source_id INTEGER NOT NULL REFERENCES sources (id),     is_remote INTEGER NOT NULL,     is_sync_eligible INTEGER NOT NULL,     dk_event_id BLOB)";
  v25[1] = @"CREATE INDEX ix_loc_records_source_id ON loc_records (source_id)";
  v25[2] = @"CREATE INDEX ix_loc_records_dk_event_id ON loc_records (dk_event_id)";
  v25[3] = @"CREATE INDEX ix_loc_records_cll_latitude ON loc_records (cll_latitude_degrees)";
  v25[4] = @"CREATE INDEX ix_loc_records_cll_longitude ON loc_records (cll_longitude_degrees)";
  v25[5] = @"CREATE TABLE loc_records_clp_areasOfInterest(   id INTEGER PRIMARY KEY AUTOINCREMENT,     loc_id INTEGER NOT NULL REFERENCES loc_records (id),     name TEXT NOT NULL)";
  v25[6] = @"CREATE INDEX ix_loc_records_clp_areasOfInterest_loc_id ON loc_records_clp_areasOfInterest (loc_id)";
  v25[7] = @"CREATE TABLE loc_records_contextual_ne(   id INTEGER PRIMARY KEY AUTOINCREMENT,     loc_id INTEGER NOT NULL REFERENCES loc_records (id),     name TEXT NOT NULL)";
  v25[8] = @"CREATE INDEX ix_loc_records_contextual_ne_loc_id ON loc_records_contextual_ne (loc_id)";
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:9];
  v30[6] = v13;
  v30[7] = &unk_2847853D0;
  v29[7] = &unk_284783E40;
  v29[8] = &unk_284783E58;
  v30[8] = &unk_2847853E8;
  v30[9] = &unk_284785400;
  v29[9] = &unk_284783E70;
  v29[10] = &unk_284783E88;
  v30[10] = &unk_284785418;
  v30[11] = &unk_284785430;
  v29[11] = &unk_284783EA0;
  v29[12] = &unk_284783EB8;
  v24[0] = @"CREATE TEMPORARY TABLE first_party_sources AS SELECT DISTINCT id AS source_id FROM sources WHERE bundle_id IN ('com.apple.mail',   'com.apple.mobilemail',                     'com.apple.iChat',  'com.apple.MobileSMS',                     'com.apple.Photos', 'com.apple.mobileslideshow',                     'com.apple.Notes',  'com.apple.mobilenotes',                     'com.apple.iCal',   'com.apple.mobilecal',                     'com.apple.camera', 'com.apple.reminders') ";
  v24[1] = @"CREATE TEMPORARY TABLE invalid_ne_records AS SELECT ne.id, ne.source_id FROM ne_records AS ne JOIN first_party_sources USING (source_id) WHERE is_remote = 1";
  v24[2] = @"CREATE TEMPORARY TABLE invalid_tp_records AS SELECT tp.id, tp.source_id FROM tp_records AS tp JOIN first_party_sources USING (source_id) WHERE is_remote = 1 ";
  v24[3] = @"CREATE TEMPORARY TABLE invalid_ref_counts AS SELECT source_id, count(source_id) AS drop_count FROM (SELECT source_id FROM invalid_ne_records       UNION ALL       SELECT source_id FROM invalid_tp_records) GROUP BY source_id";
  v24[4] = @"UPDATE sources    SET ref_count = (SELECT ref_count - drop_count                     FROM invalid_ref_counts AS ifc                     WHERE sources.id = ifc.source_id) WHERE EXISTS (SELECT *               FROM invalid_ref_counts AS ifc               WHERE sources.id = ifc.source_id)";
  v24[5] = @"DELETE FROM ne_records WHERE id IN (SELECT id FROM invalid_ne_records)";
  v24[6] = @"DELETE FROM tp_records WHERE id IN (SELECT id FROM invalid_tp_records)";
  v24[7] = @"DELETE FROM sources WHERE ref_count <= 0";
  v24[8] = @"DROP TABLE invalid_ref_counts";
  v24[9] = @"DROP TABLE invalid_tp_records";
  v24[10] = @"DROP TABLE invalid_ne_records";
  v24[11] = @"DROP TABLE first_party_sources";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:12];
  v30[12] = v2;
  v29[13] = &unk_284783ED0;
  v23[0] = @"CREATE TABLE fb_pending_records (id INTEGER PRIMARY KEY AUTOINCREMENT, seconds_from_1970 REAL NOT NULL, store_type INTEGER NOT NULL, client_bundleid TEXT NOT NULL, client_identifier TEXT NOT NULL, item_string TEXT NOT NULL, feedback_type INTEGER NOT NULL, mapping_id TEXT)";
  v23[1] = @"CREATE INDEX ix_fb_pending_records_store_type ON fb_pending_records (store_type)";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  v30[13] = v3;
  v30[14] = &unk_284785448;
  v29[14] = &unk_284783EE8;
  v29[15] = &unk_284783F00;
  v30[15] = &unk_284785460;
  v29[16] = &unk_284783F18;
  v22[0] = @"CREATE TABLE new_loc_records(    id INTEGER PRIMARY KEY AUTOINCREMENT,     clp_location BLOB,     cll_latitude_degrees REAL,     cll_longitude_degrees REAL,     clp_name TEXT,     clp_thoroughfare TEXT,     clp_subThoroughfare TEXT,     clp_locality TEXT,     clp_subLocality TEXT,     clp_administrativeArea TEXT,     clp_subAdministrativeArea TEXT,     clp_postalCode TEXT,     clp_ISOcountryCode TEXT,     clp_country TEXT,     clp_inlandWater TEXT,     clp_ocean TEXT,     uuid BLOB NOT NULL,     category INTEGER NOT NULL,     algorithm INTEGER NOT NULL,     initial_score REAL NOT NULL,     decay_rate REAL NOT NULL,     sentiment_score REAL NOT NULL,     extraction_os_build TEXT,     extraction_asset_version INTEGER,     source_id INTEGER NOT NULL REFERENCES sources (id),     is_remote INTEGER NOT NULL,     is_sync_eligible INTEGER NOT NULL,     dk_event_id BLOB,     lc_description TEXT NOT NULL)";
  v22[1] = @"INSERT INTO new_loc_records SELECT *, COALESCE(clp_name,                    clp_subThoroughfare || ' ' || clp_thoroughfare,                    clp_thoroughfare,                    clp_locality,                    clp_administrativeArea,                    hex(uuid)) AS lc_description FROM loc_records";
  v22[2] = @"CREATE TABLE new_loc_records_clp_areasOfInterest(   id INTEGER PRIMARY KEY AUTOINCREMENT,     loc_id INTEGER NOT NULL REFERENCES new_loc_records (id),     name TEXT NOT NULL)";
  v22[3] = @"INSERT INTO new_loc_records_clp_areasOfInterest SELECT * FROM loc_records_clp_areasOfInterest";
  v22[4] = @"DROP TABLE loc_records_clp_areasOfInterest";
  v22[5] = @"ALTER TABLE new_loc_records_clp_areasOfInterest RENAME TO loc_records_clp_areasOfInterest";
  v22[6] = @"CREATE INDEX ix_loc_records_clp_areasOfInterest_loc_id ON loc_records_clp_areasOfInterest (loc_id)";
  v22[7] = @"CREATE TABLE new_loc_records_contextual_ne(   id INTEGER PRIMARY KEY AUTOINCREMENT,     loc_id INTEGER NOT NULL REFERENCES new_loc_records (id),     name TEXT NOT NULL)";
  v22[8] = @"INSERT INTO new_loc_records_contextual_ne SELECT * FROM loc_records_contextual_ne";
  v22[9] = @"DROP TABLE loc_records_contextual_ne";
  v22[10] = @"ALTER TABLE new_loc_records_contextual_ne RENAME TO loc_records_contextual_ne";
  v22[11] = @"CREATE INDEX ix_loc_records_contextual_ne_loc_id ON loc_records_contextual_ne (loc_id)";
  v22[12] = @"DROP TABLE loc_records";
  v22[13] = @"ALTER TABLE new_loc_records RENAME TO loc_records";
  v22[14] = @"migration_ConvertLocationDescriptionsToLowercase";
  v22[15] = @"CREATE INDEX ix_loc_records_source_id ON loc_records (source_id)";
  v22[16] = @"CREATE INDEX ix_loc_records_dk_event_id ON loc_records (dk_event_id)";
  v22[17] = @"CREATE INDEX ix_loc_records_cll_latitude ON loc_records (cll_latitude_degrees)";
  v22[18] = @"CREATE INDEX ix_loc_records_cll_longitude ON loc_records (cll_longitude_degrees)";
  v22[19] = @"CREATE INDEX ix_loc_records_lc_description ON loc_records (lc_description)";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:20];
  v30[16] = v4;
  v29[17] = &unk_284783F30;
  v21[0] = @"CREATE TABLE cn_handles(   id INTEGER PRIMARY KEY AUTOINCREMENT,     value TEXT NOT NULL)";
  v21[1] = @"CREATE UNIQUE INDEX ix_cn_handles_value ON cn_handles (value)";
  v21[2] = @"CREATE TABLE cn_handles_sources(   cn_handle_id INTEGER NOT NULL REFERENCES cn_handles (id),     source_id INTEGER NOT NULL REFERENCES sources (id))";
  v21[3] = @"CREATE INDEX ix_cn_handles_sources_cn_handle_id ON cn_handles_sources (cn_handle_id)";
  v21[4] = @"CREATE INDEX ix_cn_handles_sources_source_id ON cn_handles_sources (source_id)";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:5];
  v30[17] = v5;
  v30[18] = &unk_284785478;
  v29[18] = &unk_284783F48;
  v29[19] = &unk_284783F60;
  v20 = @"CREATE TABLE cn_history_tokens(   client_identifier TEXT PRIMARY KEY,     token BLOB)";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
  v30[19] = v6;
  v29[20] = &unk_284783F78;
  v19[0] = @"CREATE TABLE ft_records(    id INTEGER PRIMARY KEY AUTOINCREMENT,     name TEXT NOT NULL,     group_id TEXT,     bundle_id TEXT NOT NULL,     category INTEGER NOT NULL,     seconds_from_1970 REAL NOT NULL,     state INTEGER NOT NULL,     value TEXT) ";
  v19[1] = @"CREATE INDEX ix_ft_record_bundle_group_name ON ft_records (bundle_id, group_id, name)";
  v19[2] = @"CREATE INDEX ix_ft_record_date ON ft_records (seconds_from_1970)";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:3];
  v30[20] = v7;
  v29[21] = &unk_284783F90;
  v18[0] = @"CREATE TABLE tp_records_fb_pseudocounts(    id INTEGER PRIMARY KEY AUTOINCREMENT,     item_string TEXT NOT NULL,     feedback_type INTEGER NOT NULL,     last_update_seconds_from_1970 REAL NOT NULL,     pseudocount REAL NOT NULL DEFAULT 1.0,     UNIQUE(item_string, feedback_type))";
  v18[1] = @"CREATE TABLE ne_records_fb_pseudocounts(    id INTEGER PRIMARY KEY AUTOINCREMENT,     item_string TEXT NOT NULL,     feedback_type INTEGER NOT NULL,     last_update_seconds_from_1970 REAL NOT NULL,     pseudocount REAL NOT NULL DEFAULT 1.0,     UNIQUE(item_string, feedback_type))";
  v18[2] = @"CREATE TABLE loc_records_fb_pseudocounts(    id INTEGER PRIMARY KEY AUTOINCREMENT,     item_string TEXT NOT NULL,     feedback_type INTEGER NOT NULL,     last_update_seconds_from_1970 REAL NOT NULL,     pseudocount REAL NOT NULL DEFAULT 1.0,     UNIQUE(item_string, feedback_type))";
  v18[3] = @"CREATE INDEX ix_tp_records_fb_pseudocounts_last_update_seconds_from_1970 ON tp_records_fb_pseudocounts (last_update_seconds_from_1970)";
  v18[4] = @"CREATE INDEX ix_ne_records_fb_pseudocounts_last_update_seconds_from_1970 ON ne_records_fb_pseudocounts (last_update_seconds_from_1970)";
  v18[5] = @"CREATE INDEX ix_loc_records_fb_pseudocounts_last_update_seconds_from_1970 ON loc_records_fb_pseudocounts (last_update_seconds_from_1970)";
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:6];
  v30[21] = v8;
  v30[22] = &unk_284785490;
  v29[22] = &unk_284783FA8;
  v29[23] = &unk_284783FC0;
  v30[23] = &unk_2847854A8;
  v30[24] = &unk_2847854C0;
  v29[24] = &unk_284783FD8;
  v29[25] = &unk_284783FF0;
  v30[25] = &unk_2847854D8;
  v30[26] = &unk_2847854F0;
  v29[26] = &unk_284784008;
  v29[27] = &unk_284784020;
  v17[0] = @"UPDATE loc_records SET lc_description = COALESCE(clp_name || ' ' || clp_subThoroughfare || ' ' || clp_thoroughfare,          clp_name || ' ' || clp_thoroughfare,          clp_name,          clp_subThoroughfare || ' ' || clp_thoroughfare,          clp_thoroughfare,          clp_locality,          clp_administrativeArea,          hex(uuid))";
  v17[1] = @"migration_ConvertLocationDescriptionsToLowercase";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  v30[27] = v9;
  v30[28] = &unk_284785508;
  v29[28] = &unk_284784038;
  v29[29] = &unk_284784050;
  v30[29] = &unk_284785520;
  v30[30] = &unk_284785538;
  v29[30] = &unk_284784068;
  v29[31] = &unk_284784080;
  v30[31] = &unk_284785550;
  v30[32] = &unk_284785568;
  v29[32] = &unk_284784098;
  v29[33] = &unk_2847840B0;
  v30[33] = &unk_284785580;
  v30[34] = &unk_284785598;
  v29[34] = &unk_2847840C8;
  v29[35] = &unk_2847840E0;
  v29[36] = &unk_2847840F8;
  v30[35] = &unk_2847855B0;
  v30[36] = &unk_2847855C8;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:37];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (unsigned)migration_ConvertLocationDescriptionsToLowercase
{
  v4 = [(PPSQLDatabase *)self databaseHandle];
  v5 = [v4 numberOfRowsInTable:@"loc_records"];
  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v5];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __65__PPSQLDatabase_migration_ConvertLocationDescriptionsToLowercase__block_invoke;
  v13[3] = &unk_278974D98;
  v14 = v6;
  v15 = a2;
  v13[4] = self;
  v7 = v6;
  [v4 prepAndRunQuery:@"SELECT id onPrep:uuid onRow:hex(uuid) AS uuid_hex onError:{lc_description FROM loc_records", 0, v13, &__block_literal_global_200}];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__PPSQLDatabase_migration_ConvertLocationDescriptionsToLowercase__block_invoke_204;
  v10[3] = &unk_278974DC0;
  v11 = v4;
  v12 = @"UPDATE loc_records SET lc_description = :lcDescription WHERE id = :id";
  v8 = v4;
  [v7 enumerateObjectsUsingBlock:v10];

  return 4;
}

uint64_t __65__PPSQLDatabase_migration_ConvertLocationDescriptionsToLowercase__block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getInt64AsNSNumberForColumnAlias:"id"];
  v5 = [v3 getNSStringForColumnAlias:"uuid_hex"];
  v6 = [v3 getNSStringForColumnAlias:"lc_description"];
  if (!v5)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a1[6] object:a1[4] file:@"PPSQLDatabase.m" lineNumber:878 description:@"unexpected nil hex(uuid) during migration_ConvertLocationDescriptionsToLowercase"];
  }

  if ([v6 isEqualToString:v5])
  {
    v7 = [v3 getNSDataForColumnAlias:"uuid"];
    v8 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:{objc_msgSend(v7, "bytes")}];
    v9 = [v8 UUIDString];

    v6 = v9;
  }

  v10 = a1[5];
  v11 = [MEMORY[0x277D42648] tupleWithFirst:v4 second:v6];
  [v10 addObject:v11];

  v12 = MEMORY[0x277D42690];
  return *v12;
}

void __65__PPSQLDatabase_migration_ConvertLocationDescriptionsToLowercase__block_invoke_204(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__PPSQLDatabase_migration_ConvertLocationDescriptionsToLowercase__block_invoke_2_205;
  v7[3] = &unk_278978CF8;
  v8 = v3;
  v6 = v3;
  [v5 prepAndRunQuery:v4 onPrep:v7 onRow:0 onError:&__block_literal_global_210];
}

void __65__PPSQLDatabase_migration_ConvertLocationDescriptionsToLowercase__block_invoke_2_205(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 first];
  [v4 bindNamedParam:":id" toInt64:{objc_msgSend(v5, "longLongValue")}];

  v7 = [*(a1 + 32) second];
  v6 = [v7 lowercaseString];
  [v4 bindNamedParam:":lcDescription" toNSString:v6];
}

uint64_t __65__PPSQLDatabase_migration_ConvertLocationDescriptionsToLowercase__block_invoke_3(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = pp_default_log_handle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v2;
    _os_log_error_impl(&dword_23224A000, v3, OS_LOG_TYPE_ERROR, "Error updating location record during Location table migration: %@", &v6, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
  return *MEMORY[0x277D42690];
}

uint64_t __65__PPSQLDatabase_migration_ConvertLocationDescriptionsToLowercase__block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = pp_default_log_handle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v2;
    _os_log_error_impl(&dword_23224A000, v3, OS_LOG_TYPE_ERROR, "Error reading location record during Location table migration: %@", &v6, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
  return *MEMORY[0x277D42690];
}

- (BOOL)_prepareDatabaseHandleForMigration
{
  v2 = [(PPSQLDatabase *)self _nullableHandleWithClient:0];
  v3 = v2 != 0;

  return v3;
}

- (unint64_t)maxSchemaVersion
{
  v2 = [(PPSQLDatabase *)self migrations];
  v3 = [v2 count];

  return v3;
}

- (BOOL)unmigrate
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D42588]);
  v8[0] = self;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5 = [v3 initWithMigrationObjects:v4];

  LOBYTE(v4) = [v5 unmigrateDatabases] == 1;
  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

- (BOOL)_handleCorruption
{
  if ([(PPSQLDatabase *)self isInMemory])
  {
    return 1;
  }

  else
  {
    [(NSCondition *)self->_handlePoolCond lock];
    v4 = pp_default_log_handle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_23224A000, v4, OS_LOG_TYPE_ERROR, "PPSQLDatabase is waiting to clean up a corrupted database", buf, 2u);
    }

    [(_PASSqliteDatabase *)self->_handlePool->readWriteHandle closePermanently];
    handlePool = self->_handlePool;
    readWriteHandle = handlePool->readWriteHandle;
    handlePool->readWriteHandle = 0;

    while ([(NSMutableArray *)self->_handlePool->availableReadOnlyHandles count]!= self->_handlePool->totalReadOnlyHandles)
    {
      [(NSCondition *)self->_handlePoolCond wait];
    }

    v7 = pp_default_log_handle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_23224A000, v7, OS_LOG_TYPE_ERROR, "PPSQLDatabase is cleaning up corrupted database", v9, 2u);
    }

    [(NSMutableArray *)self->_handlePool->availableReadOnlyHandles enumerateObjectsUsingBlock:&__block_literal_global_181_12651];
    [(NSMutableArray *)self->_handlePool->availableReadOnlyHandles removeAllObjects];
    self->_handlePool->totalReadOnlyHandles = 0;
    [MEMORY[0x277D42630] truncateDatabaseAtPath:self->_path];
    v3 = [(PPSQLDatabase *)self _removeCorruptionMarker];
    [(NSCondition *)self->_handlePoolCond unlock];
  }

  return v3;
}

- (BOOL)_removeCorruptionMarker
{
  v15 = *MEMORY[0x277D85DE8];
  if ([(PPSQLDatabase *)self isInMemory])
  {
    v3 = 1;
  }

  else
  {
    v4 = [MEMORY[0x277D42630] corruptionMarkerPathForPath:self->_path];
    v5 = [MEMORY[0x277CCAA00] defaultManager];
    v10 = 0;
    v3 = [v5 removeItemAtPath:v4 error:&v10];
    v6 = v10;

    if ((v3 & 1) == 0)
    {
      v7 = pp_default_log_handle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v12 = v4;
        v13 = 2112;
        v14 = v6;
        _os_log_error_impl(&dword_23224A000, v7, OS_LOG_TYPE_ERROR, "Failed to remove corruption marker at %@: %@", buf, 0x16u);
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v3;
}

- (BOOL)_isCorruptionMarkerPresent
{
  if ([(PPSQLDatabase *)self isInMemory])
  {
    return 0;
  }

  v4 = [MEMORY[0x277D42630] corruptionMarkerPathForPath:self->_path];
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [v5 fileExistsAtPath:v4 isDirectory:0];

  return v6;
}

- (BOOL)vacuumDatabaseWithShouldContinueBlock:(id)a3
{
  v4 = a3;
  if ([(PPSQLDatabase *)self isInMemory])
  {
    v5 = 1;
  }

  else
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    while ((v14[3] & 1) == 0 && v4[2](v4))
    {
      v6 = pp_default_log_handle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_23224A000, v6, OS_LOG_TYPE_INFO, "Vacuuming database with write handle", buf, 2u);
      }

      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __55__PPSQLDatabase_vacuumDatabaseWithShouldContinueBlock___block_invoke;
      v9[3] = &unk_278974D50;
      v10 = v4;
      v11 = &v13;
      v7 = [(PPSQLDatabase *)self writeTransactionWithClient:0 timeoutInSeconds:v9 block:3.0];

      if (v7)
      {
        v5 = *(v14 + 24) ^ 1;
        goto LABEL_11;
      }
    }

    v5 = 0;
LABEL_11:
    _Block_object_dispose(&v13, 8);
  }

  return v5 & 1;
}

void __55__PPSQLDatabase_vacuumDatabaseWithShouldContinueBlock___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [a2 db];
  v4 = *(a1 + 32);
  v9 = 0;
  v5 = [v3 vacuumWithShouldContinueBlock:v4 error:&v9];
  v6 = v9;

  if ((v5 & 1) == 0)
  {
    v7 = pp_default_log_handle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v6;
      _os_log_error_impl(&dword_23224A000, v7, OS_LOG_TYPE_ERROR, "PPSQLDatabase: unable to vacuum database: %@", buf, 0xCu);
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)optimizeDatabaseWithShouldContinueBlock:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(PPSQLDatabase *)self isInMemory])
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v6 = objc_opt_new();
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __57__PPSQLDatabase_optimizeDatabaseWithShouldContinueBlock___block_invoke;
    aBlock[3] = &unk_278974D28;
    aBlock[4] = self;
    v7 = v4;
    v27 = v7;
    v19 = v6;
    v26 = v19;
    v8 = _Block_copy(aBlock);
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    if (v7[2](v7))
    {
      v9 = MEMORY[0x277D85DD0];
      do
      {
        v10 = v8[2](v8);
        if (!v10)
        {
          break;
        }

        v11 = pp_default_log_handle();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = [v19 count];
          *buf = 67109120;
          v29 = v12;
          _os_log_impl(&dword_23224A000, v11, OS_LOG_TYPE_INFO, "Optimizing database with read-only handle %u", buf, 8u);
        }

        v22[0] = v9;
        v22[1] = 3221225472;
        v22[2] = __57__PPSQLDatabase_optimizeDatabaseWithShouldContinueBlock___block_invoke_175;
        v22[3] = &unk_2789797E0;
        v13 = v10;
        v23 = v13;
        v24 = @"PRAGMA optimize(0xFFF6)";
        [v13 writeTransaction:v22];

        [(PPSQLDatabase *)self _releaseReadOnlyHandle:v13 client:0];
      }

      while ((v7[2](v7) & 1) != 0);
    }

    v14 = MEMORY[0x277D85DD0];
    do
    {
      v5 = v7[2](v7);
      if (!v5)
      {
        break;
      }

      v15 = pp_default_log_handle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_23224A000, v15, OS_LOG_TYPE_INFO, "Optimizing database with write handle", buf, 2u);
      }

      v20[0] = v14;
      v20[1] = 3221225472;
      v20[2] = __57__PPSQLDatabase_optimizeDatabaseWithShouldContinueBlock___block_invoke_176;
      v20[3] = &unk_278978B68;
      v21 = @"PRAGMA optimize(0xFFF6)";
      v16 = [(PPSQLDatabase *)self writeTransactionWithClient:0 timeoutInSeconds:v20 block:3.0];
    }

    while (!v16);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v5;
}

id __57__PPSQLDatabase_optimizeDatabaseWithShouldContinueBlock___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 24) lock];
  while ((*(*(a1 + 48) + 16))())
  {
    v2 = [*(a1 + 40) count];
    v3 = *(*(a1 + 32) + 16);
    if (v2 >= *(v3 + 24))
    {
      break;
    }

    for (i = 0; [*(v3 + 16) count] > i; ++i)
    {
      v5 = [*(*(*(a1 + 32) + 16) + 16) objectAtIndex:i];
      if (([*(a1 + 40) containsObject:v5] & 1) == 0)
      {
        [*(*(*(a1 + 32) + 16) + 16) removeObjectAtIndex:i];
        [*(a1 + 40) addObject:v5];
        goto LABEL_11;
      }

      v3 = *(*(a1 + 32) + 16);
    }

    if ([*(a1 + 40) count] < *(*(*(a1 + 32) + 16) + 24))
    {
      v6 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:3.0];
      [*(*(a1 + 32) + 24) waitUntilDate:v6];
    }
  }

  v5 = 0;
LABEL_11:
  [*(*(a1 + 32) + 24) unlock];

  return v5;
}

void __57__PPSQLDatabase_optimizeDatabaseWithShouldContinueBlock___block_invoke_176(uint64_t a1, void *a2)
{
  v3 = [a2 db];
  [v3 prepAndRunQuery:*(a1 + 32) onPrep:0 onRow:0 onError:0];
}

- (id)_allTables
{
  v3 = objc_opt_new();
  v4 = [(PPSQLDatabase *)self handleWithClient:0];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __27__PPSQLDatabase__allTables__block_invoke;
  v7[3] = &unk_278978DB8;
  v5 = v3;
  v8 = v5;
  [v4 prepAndRunQuery:@"SELECT name FROM sqlite_master WHERE type = 'table'" onPrep:0 onRow:v7 onError:&__block_literal_global_169_12669];

  return v5;
}

uint64_t __27__PPSQLDatabase__allTables__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 getNSStringForColumn:0];
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }

  v4 = MEMORY[0x277D42690];

  return *v4;
}

uint64_t __27__PPSQLDatabase__allTables__block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = pp_default_log_handle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v2;
    _os_log_error_impl(&dword_23224A000, v3, OS_LOG_TYPE_ERROR, "PPSQLDatabase: _allTables error: %@", &v6, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
  return *MEMORY[0x277D42698];
}

- (id)checkWithError:(id *)a3
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__12674;
  v25 = __Block_byref_object_dispose__12675;
  v26 = 0;
  v5 = objc_opt_new();
  v6 = [(PPSQLDatabase *)self handleWithClient:0];
  v7 = objc_opt_new();
  [v5 setObject:v7 forKeyedSubscript:@"integrity_check"];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __32__PPSQLDatabase_checkWithError___block_invoke;
  v19[3] = &unk_278978DB8;
  v8 = v5;
  v20 = v8;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __32__PPSQLDatabase_checkWithError___block_invoke_2;
  v18[3] = &unk_278974D00;
  v18[4] = &v21;
  [v6 prepAndRunQuery:@"pragma integrity_check" onPrep:0 onRow:v19 onError:v18];
  v9 = objc_opt_new();
  [v8 setObject:v9 forKeyedSubscript:@"foreign_key_check"];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __32__PPSQLDatabase_checkWithError___block_invoke_3;
  v16[3] = &unk_278978DB8;
  v10 = v8;
  v17 = v10;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __32__PPSQLDatabase_checkWithError___block_invoke_4;
  v15[3] = &unk_278974D00;
  v15[4] = &v21;
  [v6 prepAndRunQuery:@"pragma foreign_key_check" onPrep:0 onRow:v16 onError:v15];
  if (a3)
  {
    v11 = v22[5];
    if (v11)
    {
      *a3 = v11;
    }
  }

  v12 = v17;
  v13 = v10;

  _Block_object_dispose(&v21, 8);

  return v13;
}

uint64_t __32__PPSQLDatabase_checkWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 getNSStringForColumn:0];
  if (v3)
  {
    v4 = [*(a1 + 32) objectForKeyedSubscript:@"integrity_check"];
    [v4 addObject:v3];
  }

  v5 = MEMORY[0x277D42690];

  return *v5;
}

uint64_t __32__PPSQLDatabase_checkWithError___block_invoke_3(uint64_t a1, void *a2)
{
  v17[4] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 getNSStringForColumn:0];
  v5 = [v3 getInt64AsNSNumberForColumn:1];
  v6 = [v3 getNSStringForColumn:2];
  v7 = [v3 getInt64AsNSNumberForColumn:3];

  v16[0] = @"referencesTable";
  v8 = v4;
  if (!v4)
  {
    v8 = [MEMORY[0x277CBEB68] null];
  }

  v17[0] = v8;
  v16[1] = @"rowid";
  v9 = v5;
  if (!v5)
  {
    v9 = [MEMORY[0x277CBEB68] null];
  }

  v17[1] = v9;
  v16[2] = @"referredTable";
  v10 = v6;
  if (!v6)
  {
    v10 = [MEMORY[0x277CBEB68] null];
  }

  v17[2] = v10;
  v16[3] = @"constraintIndex";
  v11 = v7;
  if (!v7)
  {
    v11 = [MEMORY[0x277CBEB68] null];
  }

  v17[3] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:4];
  if (v7)
  {
    if (v6)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (v6)
    {
LABEL_11:
      if (v5)
      {
        goto LABEL_12;
      }

LABEL_16:

      if (v4)
      {
        goto LABEL_13;
      }

LABEL_17:

      goto LABEL_13;
    }
  }

  if (!v5)
  {
    goto LABEL_16;
  }

LABEL_12:
  if (!v4)
  {
    goto LABEL_17;
  }

LABEL_13:
  v13 = [*(a1 + 32) objectForKeyedSubscript:@"foreign_key_check"];
  [v13 addObject:v12];

  v14 = *MEMORY[0x277D85DE8];
  return *MEMORY[0x277D42690];
}

- (id)sourceStats:(unint64_t)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__12674;
  v10 = __Block_byref_object_dispose__12675;
  v11 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __29__PPSQLDatabase_sourceStats___block_invoke;
  v5[3] = &unk_278974CD8;
  v5[4] = self;
  v5[5] = &v6;
  v5[6] = a3;
  [(PPSQLDatabase *)self readTransactionWithClient:8 block:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __29__PPSQLDatabase_sourceStats___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) sourceStats:*(a1 + 48) forTableWithName:0 txnWitness:a2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

- (id)sourceStats:(unint64_t)a3 forTableWithName:(id)a4 txnWitness:(id)a5
{
  v6 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [v8 db];
  v10 = [v9 hasTableNamed:@"sources"];

  if (v10)
  {
    if (v7)
    {
      v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@" INNER JOIN %@ ON (sources.id = %@.source_id)", v7, v7];
    }

    else
    {
      v11 = &stru_284759D38;
    }

    v82 = 0;
    v83 = &v82;
    v84 = 0x2020000000;
    v85 = 0;
    v78 = 0;
    v79 = &v78;
    v80 = 0x2020000000;
    v81 = 0;
    v74 = 0;
    v75 = &v74;
    v76 = 0x2020000000;
    v77 = 0;
    v70 = 0;
    v71 = &v70;
    v72 = 0x2020000000;
    v73 = 0;
    v66 = 0;
    v67 = &v66;
    v68 = 0x2020000000;
    v69 = 0;
    v63 = &v62;
    v64 = 0x2020000000;
    v65 = 0xBFF0000000000000;
    v58 = 0;
    v59 = &v58;
    v60 = 0x2020000000;
    v61 = 0x7FEFFFFFFFFFFFFFLL;
    v62 = 0;
    v54 = 0;
    v55 = &v54;
    v56 = 0x2020000000;
    v57 = 0x7FEFFFFFFFFFFFFFLL;
    v50 = 0;
    v51 = &v50;
    v52 = 0x2020000000;
    v53 = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __57__PPSQLDatabase_sourceStats_forTableWithName_txnWitness___block_invoke;
    aBlock[3] = &unk_278974CB0;
    v13 = v11;
    v49 = v13;
    v14 = _Block_copy(aBlock);
    if (v6)
    {
      v15 = [v8 db];
      v16 = v14[2](v14, @"ref_count", 0);
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __57__PPSQLDatabase_sourceStats_forTableWithName_txnWitness___block_invoke_2;
      v47[3] = &unk_278976450;
      v47[4] = &v82;
      [v15 prepAndRunQuery:v16 onPrep:0 onRow:v47 onError:0];
    }

    if ((v6 & 2) != 0)
    {
      v17 = [v8 db];
      v18 = v14[2](v14, @"ref_count", 1);
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __57__PPSQLDatabase_sourceStats_forTableWithName_txnWitness___block_invoke_3;
      v46[3] = &unk_278976450;
      v46[4] = &v78;
      [v17 prepAndRunQuery:v18 onPrep:0 onRow:v46 onError:0];
    }

    if ((v6 & 0x10) != 0)
    {
      v19 = [v8 db];
      v20 = v14[2](v14, @"seconds_from_1970", 0);
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __57__PPSQLDatabase_sourceStats_forTableWithName_txnWitness___block_invoke_4;
      v45[3] = &unk_278976450;
      v45[4] = &v58;
      [v19 prepAndRunQuery:v20 onPrep:0 onRow:v45 onError:0];
    }

    if ((v6 & 0x20) != 0)
    {
      v21 = [v8 db];
      v22 = v14[2](v14, @"seconds_from_1970", 1);
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __57__PPSQLDatabase_sourceStats_forTableWithName_txnWitness___block_invoke_5;
      v44[3] = &unk_278976450;
      v44[4] = &v54;
      [v21 prepAndRunQuery:v22 onPrep:0 onRow:v44 onError:0];
    }

    if ((v6 & 0x40) != 0)
    {
      v23 = [v8 db];
      v24 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SELECT COUNT(DISTINCT bundle_id) AS bundle_id_count FROM sources%@", v13];
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __57__PPSQLDatabase_sourceStats_forTableWithName_txnWitness___block_invoke_6;
      v43[3] = &unk_278976450;
      v43[4] = &v74;
      [v23 prepAndRunQuery:v24 onPrep:0 onRow:v43 onError:0];
    }

    if ((v6 & 0x80) != 0)
    {
      v25 = [v8 db];
      v26 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SELECT COUNT(*) AS doc_id_count FROM (SELECT DISTINCT bundle_id, doc_id FROM sources%@)", v13];
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __57__PPSQLDatabase_sourceStats_forTableWithName_txnWitness___block_invoke_7;
      v42[3] = &unk_278976450;
      v42[4] = &v70;
      [v25 prepAndRunQuery:v26 onPrep:0 onRow:v42 onError:0];
    }

    if ((v6 & 0x100) != 0 && v7)
    {
      v27 = [v8 db];
      v28 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SELECT COUNT(DISTINCT source_id) AS record_count FROM %@", v7];
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __57__PPSQLDatabase_sourceStats_forTableWithName_txnWitness___block_invoke_8;
      v41[3] = &unk_278976450;
      v41[4] = &v50;
      [v27 prepAndRunQuery:v28 onPrep:0 onRow:v41 onError:0];
    }

    if ((v6 & 4) != 0)
    {
      if (v7)
      {
        v29 = objc_autoreleasePoolPush();
        v30 = [@"SELECT AVG(ref_count) FROM sources" stringByAppendingString:v13];
        objc_autoreleasePoolPop(v29);
      }

      else
      {
        v30 = @"SELECT AVG(ref_count) FROM sources";
      }

      v31 = [v8 db];
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __57__PPSQLDatabase_sourceStats_forTableWithName_txnWitness___block_invoke_9;
      v40[3] = &unk_278976450;
      v40[4] = &v66;
      [v31 prepAndRunQuery:v30 onPrep:0 onRow:v40 onError:0];
    }

    if ((v6 & 8) != 0)
    {
      v32 = [v8 db];
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __57__PPSQLDatabase_sourceStats_forTableWithName_txnWitness___block_invoke_10;
      v39[3] = &unk_278976450;
      v39[4] = &v62;
      [v32 prepAndRunQuery:@"SELECT ref_count FROM sources ORDER BY ref_count LIMIT 1 OFFSET (SELECT COUNT(*) FROM sources) / 2" onPrep:0 onRow:v39 onError:0];
    }

    if (v59[3] == 1.79769313e308)
    {
      v34 = 0;
    }

    else
    {
      v33 = objc_alloc(MEMORY[0x277CBEAA8]);
      v34 = [v33 initWithTimeIntervalSince1970:v59[3]];
    }

    if (v55[3] == 1.79769313e308)
    {
      v36 = 0;
    }

    else
    {
      v35 = objc_alloc(MEMORY[0x277CBEAA8]);
      v36 = [v35 initWithTimeIntervalSince1970:v55[3]];
    }

    v37 = [PPSourceStats alloc];
    v12 = [(PPSourceStats *)v37 initWithMinRefCount:v83[3] maxRefCount:v79[3] avgRefCount:v34 medianRefCount:v36 earliestDate:v75[3] latestDate:v71[3] uniqueBundleIdCount:v67[3] uniqueDocIdCount:v63[3] recordCount:v51[3]];

    _Block_object_dispose(&v50, 8);
    _Block_object_dispose(&v54, 8);
    _Block_object_dispose(&v58, 8);
    _Block_object_dispose(&v62, 8);
    _Block_object_dispose(&v66, 8);
    _Block_object_dispose(&v70, 8);
    _Block_object_dispose(&v74, 8);
    _Block_object_dispose(&v78, 8);
    _Block_object_dispose(&v82, 8);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

id __57__PPSQLDatabase_sourceStats_forTableWithName_txnWitness___block_invoke(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = objc_autoreleasePoolPush();
  v7 = objc_alloc(MEMORY[0x277CCACA8]);
  v8 = @"ASC";
  if (a3)
  {
    v8 = @"DESC";
  }

  v9 = [v7 initWithFormat:@"SELECT %@ FROM sources%@ ORDER BY %@ %@ LIMIT 1", v5, *(a1 + 32), v5, v8];
  objc_autoreleasePoolPop(v6);

  return v9;
}

uint64_t __57__PPSQLDatabase_sourceStats_forTableWithName_txnWitness___block_invoke_4(uint64_t a1, void *a2)
{
  [a2 getDoubleForColumn:0];
  *(*(*(a1 + 32) + 8) + 24) = v3;
  return *MEMORY[0x277D42698];
}

uint64_t __57__PPSQLDatabase_sourceStats_forTableWithName_txnWitness___block_invoke_5(uint64_t a1, void *a2)
{
  [a2 getDoubleForColumn:0];
  *(*(*(a1 + 32) + 8) + 24) = v3;
  return *MEMORY[0x277D42698];
}

uint64_t __57__PPSQLDatabase_sourceStats_forTableWithName_txnWitness___block_invoke_9(uint64_t a1, void *a2)
{
  [a2 getDoubleForColumn:0];
  *(*(*(a1 + 32) + 8) + 24) = v3;
  return *MEMORY[0x277D42698];
}

uint64_t __57__PPSQLDatabase_sourceStats_forTableWithName_txnWitness___block_invoke_10(uint64_t a1, void *a2)
{
  [a2 getDoubleForColumn:0];
  *(*(*(a1 + 32) + 8) + 24) = v3;
  return *MEMORY[0x277D42698];
}

- (id)stats
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = [(PPSQLDatabase *)self handleWithClient:0];
  v4 = objc_opt_new();
  v5 = v3;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v3, "userVersion")}];
  [v4 setObject:v6 forKeyedSubscript:@"version"];

  v7 = objc_opt_new();
  [v4 setObject:v7 forKeyedSubscript:@"rowCounts"];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v27 = self;
  obj = [(PPSQLDatabase *)self _allTables];
  v8 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v33;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v32 + 1) + 8 * i);
        v13 = objc_autoreleasePoolPush();
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v5, "numberOfRowsInTable:", v12)}];
        v15 = [v4 objectForKeyedSubscript:@"rowCounts"];
        [v15 setObject:v14 forKeyedSubscript:v12];

        objc_autoreleasePoolPop(v13);
      }

      v9 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v9);
  }

  v16 = objc_opt_new();
  [v4 setObject:v16 forKeyedSubscript:@"remoteRecordCounts"];

  v17 = objc_autoreleasePoolPush();
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __22__PPSQLDatabase_stats__block_invoke;
  aBlock[3] = &unk_278974C88;
  v18 = v5;
  v30 = v18;
  v19 = v4;
  v31 = v19;
  v20 = _Block_copy(aBlock);
  v21 = [PPSQLDatabase tableNameForTable:0];
  v20[2](v20, v21);

  v22 = [PPSQLDatabase tableNameForTable:1];
  v20[2](v20, v22);

  objc_autoreleasePoolPop(v17);
  v23 = [(PPSQLDatabase *)v27 sourceStats:-1];
  v24 = [v23 toDictionary];
  [v19 setObject:v24 forKeyedSubscript:@"sources"];

  v25 = *MEMORY[0x277D85DE8];

  return v19;
}

void __22__PPSQLDatabase_stats__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SELECT count(*) AS remote_count FROM %@ WHERE is_remote=1", v3];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __22__PPSQLDatabase_stats__block_invoke_2;
  v10[3] = &unk_278974C38;
  v11 = *(a1 + 40);
  v12 = v3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __22__PPSQLDatabase_stats__block_invoke_3;
  v7[3] = &unk_278974C60;
  v8 = v12;
  v9 = *(a1 + 40);
  v6 = v12;
  [v4 prepAndRunQuery:v5 onPrep:0 onRow:v10 onError:v7];
}

uint64_t __22__PPSQLDatabase_stats__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a2, "getIntegerForColumnAlias:", "remote_count")}];
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"remoteRecordCounts"];
  [v4 setObject:v3 forKeyedSubscript:*(a1 + 40)];

  return *MEMORY[0x277D42690];
}

uint64_t __22__PPSQLDatabase_stats__block_invoke_3(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pp_default_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    v8 = *(a1 + 32);
    v9 = 138412546;
    v10 = v8;
    v11 = 2112;
    v12 = v3;
    _os_log_fault_impl(&dword_23224A000, v4, OS_LOG_TYPE_FAULT, "PPSQLDatabase stats failed querying remote record count in table %@: %@", &v9, 0x16u);
  }

  v5 = [*(a1 + 40) objectForKeyedSubscript:@"remoteRecordCounts"];
  [v5 setObject:&unk_284783D98 forKeyedSubscript:*(a1 + 32)];

  v6 = *MEMORY[0x277D85DE8];
  return *MEMORY[0x277D42690];
}

- (void)_releaseReadOnlyHandle:(id)a3 client:(unsigned __int8)a4
{
  v14 = a3;
  v5 = [MEMORY[0x277CCACC8] currentThread];
  v6 = [v5 threadDictionary];
  v7 = [v6 objectForKeyedSubscript:@"readOnlyHandleCountTLSKey"];

  if ([v7 intValue] < 2)
  {
    v10 = [v5 threadDictionary];
    [v10 removeObjectForKey:@"readOnlyHandleTLSKey"];

    v11 = [v5 threadDictionary];
    [v11 removeObjectForKey:@"readOnlyHandleCountTLSKey"];

    v12 = [v5 threadDictionary];
    v13 = [v12 objectForKeyedSubscript:@"writeTxnOpenTLSKey"];

    if (v13 != v14)
    {
      [(NSCondition *)self->_handlePoolCond lock];
      [(NSMutableArray *)self->_handlePool->availableReadOnlyHandles addObject:v14];
      [(NSCondition *)self->_handlePoolCond signal];
      [(NSCondition *)self->_handlePoolCond unlock];
    }
  }

  else
  {
    v8 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v7, "intValue") - 1}];
    v9 = [v5 threadDictionary];
    [v9 setObject:v8 forKeyedSubscript:@"readOnlyHandleCountTLSKey"];
  }
}

- (void)_disableQueryLoggingForHandle:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a3;
  [v3 disableQueryPlanLogging];
  v4 = pp_default_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = v3;
    _os_log_impl(&dword_23224A000, v4, OS_LOG_TYPE_DEFAULT, "PPSQLDatabase: disable EXPLAIN QUERY PLAN log for handle %p", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_enableQueryLoggingForHandle:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setFormatOptions:51];
  v5 = objc_alloc(MEMORY[0x277CCACA8]);
  v6 = objc_opt_new();
  v7 = [v4 stringFromDate:v6];
  v8 = [MEMORY[0x277CCAC38] processInfo];
  v9 = [v5 initWithFormat:@"explainQueryPlan-%@-pid_%d-handle_%p.log", v7, objc_msgSend(v8, "processIdentifier"), v3];

  v10 = objc_autoreleasePoolPush();
  v11 = +[PPPaths logDirectory];
  v12 = [v11 stringByAppendingPathComponent:v9];

  objc_autoreleasePoolPop(v10);
  LODWORD(v11) = [v3 enableQueryPlanLoggingWithPath:v12];
  v13 = pp_default_log_handle();
  v14 = v13;
  if (v11)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v12;
      _os_log_impl(&dword_23224A000, v14, OS_LOG_TYPE_DEFAULT, "PPSQLDatabase: generating EXPLAIN QUERY PLAN log at %@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v17 = v12;
    _os_log_error_impl(&dword_23224A000, v14, OS_LOG_TYPE_ERROR, "PPSQLDatabase: unable to generate EXPLAIN QUERY PLAN log at %@", buf, 0xCu);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)_openFreshHandleForClient:(unsigned __int8)a3
{
  v3 = a3;
  v29 = *MEMORY[0x277D85DE8];
  v24 = 0;
  v5 = MEMORY[0x277D42630];
  path = self->_path;
  v7 = objc_opt_new();
  v8 = [v5 initializeDatabase:path withContentProtection:3 newDatabaseCreated:&v24 errorHandler:v7];

  if (v8)
  {
    [v8 prepAndRunNonDataQueries:&unk_284785370 onError:&__block_literal_global_12809];
    if (v24 == 1)
    {
      v9 = pp_default_log_handle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = self->_path;
        *buf = 138412546;
        v26 = v10;
        v27 = 1024;
        v28 = v3;
        _os_log_impl(&dword_23224A000, v9, OS_LOG_TYPE_DEFAULT, "PPSQLDatabase: creating new database at %@ for client %d", buf, 0x12u);
      }
    }

    objc_initWeak(buf, v8);
    objc_initWeak(&location, self);
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __43__PPSQLDatabase__openFreshHandleForClient___block_invoke_48;
    v20 = &unk_278974C10;
    objc_copyWeak(&v21, buf);
    objc_copyWeak(&v22, &location);
    v11 = _Block_copy(&v17);
    v12 = [PPSettings sharedInstance:v17];
    [v12 registerQueryPlanLoggingChangeHandler:v11];

    v11[2](v11);
    v13 = v8;

    objc_destroyWeak(&v22);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
  }

  else
  {
    v14 = pp_default_log_handle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_23224A000, v14, OS_LOG_TYPE_ERROR, "Failed to instantiate new database handle", buf, 2u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];

  return v8;
}

void __43__PPSQLDatabase__openFreshHandleForClient___block_invoke_48(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  if (v2 && WeakRetained)
  {
    v3 = +[PPSettings sharedInstance];
    v4 = [v3 queryPlanLoggingEnabled];

    if (v4)
    {
      [v2 _enableQueryLoggingForHandle:WeakRetained];
    }

    else
    {
      [v2 _disableQueryLoggingForHandle:WeakRetained];
    }
  }
}

uint64_t __43__PPSQLDatabase__openFreshHandleForClient___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = pp_default_log_handle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v2;
    _os_log_error_impl(&dword_23224A000, v3, OS_LOG_TYPE_ERROR, "Failed to enable foreign keys: %@", &v6, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
  return *MEMORY[0x277D42698];
}

- (id)_initWithPath:(id)a3 performMigrations:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if ([MEMORY[0x277D42598] isClassCLocked])
  {
    v8 = pp_default_log_handle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v8, OS_LOG_TYPE_DEFAULT, "PPSQLDatabase: cannot instantiate PPSQLDatabase before Class C unlock.", buf, 2u);
    }

    goto LABEL_17;
  }

  v25.receiver = self;
  v25.super_class = PPSQLDatabase;
  v9 = [(PPSQLDatabase *)&v25 init];
  self = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_path, a3);
    if ([(PPSQLDatabase *)self isInMemory])
    {
      v10 = NSTemporaryDirectory();
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      v10 = [(NSString *)self->_path stringByDeletingLastPathComponent];
      objc_autoreleasePoolPop(v11);
    }

    parentDirectory = self->_parentDirectory;
    self->_parentDirectory = v10;

    v13 = objc_opt_new();
    writeLock = self->_writeLock;
    self->_writeLock = v13;

    v15 = objc_opt_new();
    handlePool = self->_handlePool;
    self->_handlePool = v15;

    v17 = objc_opt_new();
    v18 = self->_handlePool;
    availableReadOnlyHandles = v18->availableReadOnlyHandles;
    v18->availableReadOnlyHandles = v17;

    v20 = objc_opt_new();
    handlePoolCond = self->_handlePoolCond;
    self->_handlePoolCond = v20;

    if ([(PPSQLDatabase *)self _isCorruptionMarkerPresent])
    {
      [(PPSQLDatabase *)self _handleCorruption];
    }

    if (v4)
    {
      if ([(PPSQLDatabase *)self _prepareDatabaseHandleForMigration])
      {
        if ([(PPSQLDatabase *)self migrateToVersion:*MEMORY[0x277D426A0]])
        {
          goto LABEL_13;
        }

        v8 = pp_default_log_handle();
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
LABEL_17:

          v22 = 0;
          goto LABEL_18;
        }

        *buf = 0;
        v23 = "PPSQLDatabase: migrations failed";
      }

      else
      {
        v8 = pp_default_log_handle();
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_17;
        }

        *buf = 0;
        v23 = "PPSQLDatabase: can't migrate right now because db can't be opened";
      }

      _os_log_error_impl(&dword_23224A000, v8, OS_LOG_TYPE_ERROR, v23, buf, 2u);
      goto LABEL_17;
    }
  }

LABEL_13:
  self = self;
  v22 = self;
LABEL_18:

  return v22;
}

+ (id)createTempTableContainingRowsFromQuery:(id)a3 descriptiveTableName:(id)a4 txnWitness:(id)a5 bind:(id)a6
{
  v9 = a6;
  v10 = MEMORY[0x277CCACA8];
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v10 alloc];
  v15 = [MEMORY[0x277D3A578] hexUUID];
  v16 = [v14 initWithFormat:@"temp.%@_%@", v12, v15];

  v17 = [v11 db];

  v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"CREATE TABLE %@ AS %@", v16, v13];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __93__PPSQLDatabase_createTempTableContainingRowsFromQuery_descriptiveTableName_txnWitness_bind___block_invoke;
  v21[3] = &unk_278974DE8;
  v22 = v9;
  v19 = v9;
  [v17 prepAndRunQuery:v18 onPrep:v21 onRow:0 onError:0];

  return v16;
}

uint64_t __93__PPSQLDatabase_createTempTableContainingRowsFromQuery_descriptiveTableName_txnWitness_bind___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

+ (id)createTempViewContainingRowsFromQuery:(id)a3 descriptiveTableName:(id)a4 txnWitness:(id)a5
{
  v7 = MEMORY[0x277CCACA8];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v7 alloc];
  v12 = [MEMORY[0x277D3A578] hexUUID];
  v13 = [v11 initWithFormat:@"temp.%@_%@", v9, v12];

  v14 = [v8 db];

  v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"CREATE TEMP VIEW %@ AS %@", v13, v10];
  [v14 prepAndRunQuery:v15 onPrep:0 onRow:0 onError:0];

  return v13;
}

+ (void)dropTableWithName:(id)a3 txnWitness:(id)a4
{
  v5 = a3;
  v7 = [a4 db];
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"DROP TABLE %@", v5];

  [v7 prepAndRunQuery:v6 onPrep:0 onRow:0 onError:0];
}

+ (void)dropViewWithName:(id)a3 txnWitness:(id)a4
{
  v5 = a3;
  v7 = [a4 db];
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"DROP VIEW %@", v5];

  [v7 prepAndRunQuery:v6 onPrep:0 onRow:0 onError:0];
}

+ (id)nonMigratingToolsInstanceWithParentDirectory:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithParentDirectory:v4 performMigrations:0];

  return v5;
}

+ (id)nonMigratingToolsInstance
{
  v3 = +[PPPaths topDirectory];
  v4 = [a1 nonMigratingToolsInstanceWithParentDirectory:v3];

  return v4;
}

+ (PPSQLDatabase)sharedInstance
{
  pthread_mutex_lock(&sharedInstance_lock);
  if (!sharedInstance_instance)
  {
    v3 = [[a1 alloc] _initInStandardParentDirectoryWithPerformMigrations:1];
    v4 = sharedInstance_instance;
    sharedInstance_instance = v3;

    if (!sharedInstance_instance)
    {
      v5 = pp_default_log_handle();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *v8 = 0;
        _os_log_impl(&dword_23224A000, v5, OS_LOG_TYPE_INFO, "PPSQLDatabase sharedInstance did not initialize, will try again later. Device may be Class C locked.", v8, 2u);
      }
    }
  }

  v6 = sharedInstance_instance;
  pthread_mutex_unlock(&sharedInstance_lock);

  return v6;
}

@end