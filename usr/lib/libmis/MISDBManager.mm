@interface MISDBManager
- (BOOL)authorizeEntryWithProfileUUID:(id)d cdHash:(id)hash gracePeriod:(int)period currentMonotonicTime:(int64_t)time currentResetCount:(int64_t)count error:(id *)error;
- (BOOL)banCDHash:(id)hash error:(id *)error;
- (BOOL)banProfileUUID:(id)d error:(id *)error;
- (BOOL)createOnlineAuthEntry:(id)entry error:(id *)error;
- (BOOL)createTrustedTeamIDEntryWithProfileUUID:(id)d signature:(id)signature error:(id *)error;
- (BOOL)createTrustedTeamIDEntryWithTeamID:(id)d signature:(id)signature error:(id *)error;
- (BOOL)deleteOnlineAuthEntryWithCdHash:(id)hash error:(id *)error;
- (BOOL)deleteOnlineAuthEntryWithProfileUUID:(id)d cdHash:(id)hash error:(id *)error;
- (BOOL)deleteTrustedWithProfileUUID:(id)d error:(id *)error;
- (BOOL)deleteTrustedWithTeamID:(id)d error:(id *)error;
- (BOOL)migrate;
- (BOOL)recordIndeterminateEntryWithProfileUUID:(id)d cdHash:(id)hash onConflictDoNothing:(BOOL)nothing error:(id *)error;
- (BOOL)rejectEntryWithProfileUUID:(id)d cdHash:(id)hash isRejectedByWholeProfile:(BOOL)profile error:(id *)error;
- (BOOL)removeProfileWithUuid:(id)uuid error:(id *)error;
- (BOOL)setGracePeriodWithProfileUUID:(id)d gracePeriod:(int)period error:(id *)error;
- (BOOL)setupSchema;
- (id)allCMSBlobs;
- (id)allProfiles;
- (id)findProfilesMatchingEntitlements:(id)entitlements withCertificate:(id)certificate;
- (id)findProfilesMatchingPredicates:(id)predicates withCertificate:(id)certificate;
- (id)findProfilesWithCertificate:(id)certificate;
- (id)getOnlineAuthEntriesNoThrow;
- (id)getOnlineAuthEntryNoThrowWithProfileUUID:(id)d cdHash:(id)hash;
- (id)getTeamIDForProfileUUID:(id)d error:(id *)error;
- (int)insertProfile:(void *)profile;
- (int64_t)countCDHashesRejectedByProfileNoThrowWithProfileUUID:(id)d;
- (void)deleteOnlineAuthEntryNoThrowWithCdHash:(id)hash;
- (void)deleteOnlineAuthEntryNoThrowWithProfileUUID:(id)d cdHash:(id)hash;
- (void)recordIndeterminateEntryNoThrowWithProfileUUID:(id)d cdHash:(id)hash onConflictDoNothing:(BOOL)nothing;
@end

@implementation MISDBManager

- (id)getTeamIDForProfileUUID:(id)d error:(id *)error
{
  v5 = sub_1B9DD2998();
  v7 = v6;
  selfCopy = self;
  sub_1B9D9A188(v5, v7);

  v9 = sub_1B9DD2968();

  return v9;
}

- (BOOL)removeProfileWithUuid:(id)uuid error:(id *)error
{
  sub_1B9DD2998();
  selfCopy = self;
  sub_1B9DB3874(sub_1B9D9BB00);

  return 1;
}

- (BOOL)createTrustedTeamIDEntryWithTeamID:(id)d signature:(id)signature error:(id *)error
{
  signatureCopy = signature;
  if (signature)
  {
    dCopy = d;
    selfCopy = self;
    v10 = signatureCopy;
    signatureCopy = sub_1B9DD2798();
    v12 = v11;

    v13 = sub_1B9DD2778();
  }

  else
  {
    dCopy2 = d;
    selfCopy2 = self;
    v13 = 0;
    v12 = 0xF000000000000000;
  }

  v16 = [objc_allocWithZone(MISTrustedTeamIDEntry) initWithTeamID:d signature:v13];

  MEMORY[0x1EEE9AC00]();
  sub_1B9DB3874(sub_1B9D9DE64);

  sub_1B9D9D520(signatureCopy, v12);
  return 1;
}

- (BOOL)createTrustedTeamIDEntryWithProfileUUID:(id)d signature:(id)signature error:(id *)error
{
  sub_1B9DD2998();
  selfCopy = self;
  if (signature)
  {
    signatureCopy = signature;
    signature = sub_1B9DD2798();
    v10 = v9;
  }

  else
  {
    v10 = 0xF000000000000000;
  }

  MEMORY[0x1EEE9AC00]();
  sub_1B9DB3874(sub_1B9D9DE4C);

  sub_1B9D9D520(signature, v10);

  return 1;
}

- (BOOL)deleteTrustedWithTeamID:(id)d error:(id *)error
{
  v5 = sub_1B9DD2998();
  v7 = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  *(v8 + 24) = v7;
  selfCopy = self;
  sub_1B9DB3518(0xD00000000000002FLL, 0x80000001B9DDD440, sub_1B9D9BB18, v8, 0, 0);

  return 1;
}

- (BOOL)deleteTrustedWithProfileUUID:(id)d error:(id *)error
{
  v5 = sub_1B9DD2998();
  v7 = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  *(v8 + 24) = v7;
  selfCopy = self;
  sub_1B9DB3518(0xD000000000000090, 0x80000001B9DDD470, sub_1B9D9BB18, v8, 0, 0);

  return 1;
}

- (BOOL)createOnlineAuthEntry:(id)entry error:(id *)error
{
  v6 = swift_allocObject();
  *(v6 + 16) = entry;
  entryCopy = entry;
  selfCopy = self;
  sub_1B9DB3518(0xD00000000000019CLL, 0x80000001B9DDDF60, sub_1B9DB2D48, v6, 0, 0);

  return 1;
}

- (BOOL)authorizeEntryWithProfileUUID:(id)d cdHash:(id)hash gracePeriod:(int)period currentMonotonicTime:(int64_t)time currentResetCount:(int64_t)count error:(id *)error
{
  v13 = sub_1B9DD2998();
  v15 = v14;
  hashCopy = hash;
  selfCopy = self;
  v18 = sub_1B9DD2798();
  v20 = v19;

  v21 = swift_allocObject();
  *(v21 + 16) = time;
  *(v21 + 24) = count;
  *(v21 + 32) = v13;
  *(v21 + 40) = v15;
  *(v21 + 48) = v18;
  *(v21 + 56) = v20;
  *(v21 + 64) = period;
  sub_1B9D9DB90(v18, v20);
  sub_1B9DB3518(0xD000000000000198, 0x80000001B9DDE100, sub_1B9DB2D14, v21, 0, 0);

  sub_1B9D9D534(v18, v20);
  return 1;
}

- (BOOL)recordIndeterminateEntryWithProfileUUID:(id)d cdHash:(id)hash onConflictDoNothing:(BOOL)nothing error:(id *)error
{
  v9 = sub_1B9DD2998();
  v11 = v10;
  hashCopy = hash;
  selfCopy = self;
  v14 = sub_1B9DD2798();
  v16 = v15;

  sub_1B9DAF118(v9, v11, v14, v16, nothing);
  sub_1B9D9D534(v14, v16);

  return 1;
}

- (void)recordIndeterminateEntryNoThrowWithProfileUUID:(id)d cdHash:(id)hash onConflictDoNothing:(BOOL)nothing
{
  nothingCopy = nothing;
  v8 = sub_1B9DD2998();
  v10 = v9;
  hashCopy = hash;
  selfCopy = self;
  v13 = sub_1B9DD2798();
  v15 = v14;

  sub_1B9DAF36C(v8, v10, v13, v15, nothingCopy);
  sub_1B9D9D534(v13, v15);
}

- (BOOL)setGracePeriodWithProfileUUID:(id)d gracePeriod:(int)period error:(id *)error
{
  v7 = sub_1B9DD2998();
  v9 = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  *(v10 + 24) = v9;
  *(v10 + 32) = period;
  selfCopy = self;
  sub_1B9DB3518(0xD000000000000038, 0x80000001B9DDE440, sub_1B9DB2D10, v10, 0, 0);

  return 1;
}

- (BOOL)rejectEntryWithProfileUUID:(id)d cdHash:(id)hash isRejectedByWholeProfile:(BOOL)profile error:(id *)error
{
  v9 = sub_1B9DD2998();
  v11 = v10;
  hashCopy = hash;
  selfCopy = self;
  v14 = sub_1B9DD2798();
  v16 = v15;

  v17 = swift_allocObject();
  *(v17 + 16) = v9;
  *(v17 + 24) = v11;
  *(v17 + 32) = v14;
  *(v17 + 40) = v16;
  *(v17 + 48) = profile;
  sub_1B9D9DB90(v14, v16);
  sub_1B9DB3518(0xD000000000000139, 0x80000001B9DDE480, sub_1B9DB2D0C, v17, 0, 0);

  sub_1B9D9D534(v14, v16);
  return 1;
}

- (BOOL)banProfileUUID:(id)d error:(id *)error
{
  v5 = sub_1B9DD2998();
  v7 = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  *(v8 + 24) = v7;
  selfCopy = self;
  sub_1B9DB3518(0xD00000000000004ALL, 0x80000001B9DDE5C0, sub_1B9D9BB18, v8, 0, 0);

  return 1;
}

- (BOOL)banCDHash:(id)hash error:(id *)error
{
  hashCopy = hash;
  selfCopy = self;
  v7 = sub_1B9DD2798();
  v9 = v8;

  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  *(v10 + 24) = v9;
  sub_1B9D9DB90(v7, v9);
  sub_1B9DB3518(0xD000000000000047, 0x80000001B9DDE610, sub_1B9DB2D08, v10, 0, 0);

  sub_1B9D9D534(v7, v9);
  return 1;
}

- (id)getOnlineAuthEntryNoThrowWithProfileUUID:(id)d cdHash:(id)hash
{
  v6 = sub_1B9DD2998();
  v8 = v7;
  hashCopy = hash;
  selfCopy = self;
  v11 = sub_1B9DD2798();
  v13 = v12;

  v14 = sub_1B9DB01C8(v6, v8, v11, v13);
  sub_1B9D9D534(v11, v13);

  return v14;
}

- (id)getOnlineAuthEntriesNoThrow
{
  selfCopy = self;
  sub_1B9DB08E8();

  sub_1B9DB2AE4();
  v3 = sub_1B9DD2A68();

  return v3;
}

- (int64_t)countCDHashesRejectedByProfileNoThrowWithProfileUUID:(id)d
{
  v4 = sub_1B9DD2998();
  v6 = v5;
  selfCopy = self;
  v8 = sub_1B9DB1338(v4, v6);

  return v8;
}

- (BOOL)deleteOnlineAuthEntryWithProfileUUID:(id)d cdHash:(id)hash error:(id *)error
{
  v7 = sub_1B9DD2998();
  v9 = v8;
  hashCopy = hash;
  selfCopy = self;
  v12 = sub_1B9DD2798();
  v14 = v13;

  v15 = swift_allocObject();
  v15[2] = v7;
  v15[3] = v9;
  v15[4] = v12;
  v15[5] = v14;
  sub_1B9D9DB90(v12, v14);
  sub_1B9DB3518(0xD000000000000037, 0x80000001B9DDEB70, sub_1B9DB2CFC, v15, 0, 0);

  sub_1B9D9D534(v12, v14);
  return 1;
}

- (void)deleteOnlineAuthEntryNoThrowWithProfileUUID:(id)d cdHash:(id)hash
{
  v6 = sub_1B9DD2998();
  v8 = v7;
  hashCopy = hash;
  selfCopy = self;
  v11 = sub_1B9DD2798();
  v13 = v12;

  sub_1B9DB19F4(v6, v8, v11, v13);
  sub_1B9D9D534(v11, v13);
}

- (BOOL)deleteOnlineAuthEntryWithCdHash:(id)hash error:(id *)error
{
  hashCopy = hash;
  selfCopy = self;
  v7 = sub_1B9DD2798();
  v9 = v8;

  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  *(v10 + 24) = v9;
  sub_1B9D9DB90(v7, v9);
  sub_1B9DB3518(0xD000000000000029, 0x80000001B9DDEBB0, sub_1B9DB2D08, v10, 0, 0);

  sub_1B9D9D534(v7, v9);
  return 1;
}

- (void)deleteOnlineAuthEntryNoThrowWithCdHash:(id)hash
{
  hashCopy = hash;
  selfCopy = self;
  v5 = sub_1B9DD2798();
  v7 = v6;

  sub_1B9DB1EFC(v5, v7);
  sub_1B9D9D534(v5, v7);
}

- (id)findProfilesWithCertificate:(id)certificate
{
  certificateCopy = certificate;
  v7 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v5, 2);
  v8 = @"SELECT uuid FROM certificate_provisioning_cache JOIN certificates ON certificates.pk = leaf_pk WHERE certificates.leaf = @cert";
  if (!certificateCopy)
  {
    v8 = @"SELECT uuid FROM profiles";
  }

  v9 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v6, @"WITH filteredProfileUUIDs(uuid) AS (%@) SELECT profiles.uuid, profiles.team_id, profiles.name, profiles.expires, profiles.is_for_all_devices, profiles.is_apple_internal, profiles.is_local, profiles.is_beta, profiles.is_der FROM filteredProfileUUIDs JOIN profiles ON profiles.uuid = filteredProfileUUIDs.uuid ORDER BY  profiles.is_der DESC, profiles.is_local ASC, profiles.is_for_all_devices ASC", v8);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_1B9DBF3C4;
  v18[3] = &unk_1E7ED8548;
  v19 = certificateCopy;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1B9DBF44C;
  v16[3] = &unk_1E7ED8308;
  v10 = v7;
  v17 = v10;
  v11 = certificateCopy;
  objc_msgSend_executeQuery_withBind_withResults_(self, v12, v9, v18, v16);

  v13 = v17;
  v14 = v10;

  return v10;
}

- (id)findProfilesMatchingPredicates:(id)predicates withCertificate:(id)certificate
{
  predicatesCopy = predicates;
  certificateCopy = certificate;
  v10 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v8, 2);
  if (certificateCopy)
  {
    v11 = @"SELECT uuid FROM certificate_provisioning_cache JOIN certificates ON certificates.pk = leaf_pk WHERE certificates.leaf = @cert";
  }

  else
  {
    v11 = @"SELECT uuid FROM profiles";
  }

  v12 = objc_msgSend_stringWithCapacity_(MEMORY[0x1E696AD60], v9, 1024);
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = sub_1B9DBF6B0;
  v29[3] = &unk_1E7ED83F8;
  v30 = v12;
  v13 = v12;
  objc_msgSend_enumerateObjectsUsingBlock_(predicatesCopy, v14, v29);
  v16 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v15, @"WITH predicates(idx, predicate) AS (VALUES %@), filteredProfileUUIDs(uuid) AS (%@) SELECT * FROM (SELECT profiles.uuid, profiles.team_id, profiles.name, profiles.expires, profiles.is_for_all_devices, profiles.is_apple_internal, profiles.is_local, profiles.is_beta, profiles.is_der, COUNT(DISTINCT predicates.idx) as matchCount FROM filteredProfileUUIDs JOIN profiles ON profiles.uuid = filteredProfileUUIDs.uuid JOIN entitlements_provisioning_cache ON entitlements_provisioning_cache.uuid = filteredProfileUUIDs.uuid CROSS JOIN predicates WHERE profiles.is_apple_internal OR ((entitlements_provisioning_cache.wildcard = 0 AND entitlements_provisioning_cache.predicate = predicates.predicate) OR (entitlements_provisioning_cache.wildcard = 1 AND glob(entitlements_provisioning_cache.predicate, predicates.predicate))) GROUP BY profiles.uuid, profiles.is_apple_internal) AS aggregated WHERE aggregated.matchCount = @totalPredicates OR aggregated.is_apple_internal ORDER BY  aggregated.is_der DESC, aggregated.is_local ASC, aggregated.is_for_all_devices ASC", v13, v11);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = sub_1B9DBF708;
  v26[3] = &unk_1E7ED8598;
  v27 = certificateCopy;
  v28 = predicatesCopy;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = sub_1B9DBF890;
  v24[3] = &unk_1E7ED8308;
  v17 = v10;
  v25 = v17;
  v18 = predicatesCopy;
  v19 = certificateCopy;
  objc_msgSend_executeQuery_withBind_withResults_(self, v20, v16, v26, v24);

  v21 = v25;
  v22 = v17;

  return v17;
}

- (id)findProfilesMatchingEntitlements:(id)entitlements withCertificate:(id)certificate
{
  v6 = MEMORY[0x1E695DF70];
  certificateCopy = certificate;
  entitlementsCopy = entitlements;
  v10 = objc_msgSend_arrayWithCapacity_(v6, v9, 10);
  v13 = objc_msgSend_Entitlements(self, v11, v12);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_1B9DBFA10;
  v19[3] = &unk_1E7ED83D0;
  v20 = v10;
  v14 = v10;
  objc_msgSend_emitEntitlementPredicates_predicateHandler_(v13, v15, entitlementsCopy, v19);

  v17 = objc_msgSend_findProfilesMatchingPredicates_withCertificate_(self, v16, v14, certificateCopy);

  return v17;
}

- (id)allProfiles
{
  v3 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], a2, 20);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1B9DBFADC;
  v7[3] = &unk_1E7ED8308;
  v4 = v3;
  v8 = v4;
  objc_msgSend_executeQuery_withBind_withResults_(self, v5, @"SELECT uuid, team_id, name, expires, is_for_all_devices, is_apple_internal, is_local, is_beta FROM profiles", 0, v7);

  return v4;
}

- (id)allCMSBlobs
{
  v3 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], a2, 20);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1B9DBFC6C;
  v13[3] = &unk_1E7ED8308;
  v4 = v3;
  v14 = v4;
  objc_msgSend_executeQuery_withBind_withResults_(self, v5, @"SELECT cms_blob FROM profiles WHERE is_der = 0", 0, v13);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1B9DBFCF8;
  v11[3] = &unk_1E7ED8308;
  v6 = v4;
  v12 = v6;
  objc_msgSend_executeQuery_withBind_withResults_(self, v7, @"SELECT cms_blob as blob FROM xml_profiles_cache", 0, v11);
  v8 = v12;
  v9 = v6;

  return v6;
}

- (int)insertProfile:(void *)profile
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1B9DBFE44;
  v5[3] = &unk_1E7ED83A8;
  v5[5] = &v6;
  v5[6] = profile;
  v5[4] = self;
  objc_msgSend_transaction_(self, a2, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)migrate
{
  if (objc_msgSend_checkpoint(self, a2, v2))
  {
    v8 = sub_1B9D98960();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1B9D96000, v8, OS_LOG_TYPE_ERROR, "Critical SQLite error, could not checkpoint", buf, 2u);
    }

    abort();
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  *buf = 0;
  v11 = buf;
  v12 = 0x3032000000;
  v13 = sub_1B9DC0078;
  v14 = sub_1B9DC0088;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B9DC0090;
  v9[3] = &unk_1E7ED8380;
  v9[4] = self;
  v9[5] = buf;
  v9[6] = &v16;
  v5 = objc_msgSend_transaction_immediate_(self, v4, v9, 1);
  *(v17 + 6) = v5;
  v6 = v5 == 0;
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(&v16, 8);
  return v6;
}

- (BOOL)setupSchema
{
  v3 = [MISProfileModel alloc];
  v5 = objc_msgSend_initWithDB_(v3, v4, self);
  Profiles = self->Profiles;
  self->Profiles = v5;

  v7 = [MISEntitlementsModel alloc];
  v9 = objc_msgSend_initWithDB_(v7, v8, self);
  Entitlements = self->Entitlements;
  self->Entitlements = v9;

  v15.receiver = self;
  v15.super_class = MISDBManager;
  setupSchema = [(SQLDB *)&v15 setupSchema];
  if (setupSchema)
  {
    LOBYTE(setupSchema) = objc_msgSend_migrate(self, v12, v13);
  }

  return setupSchema;
}

@end