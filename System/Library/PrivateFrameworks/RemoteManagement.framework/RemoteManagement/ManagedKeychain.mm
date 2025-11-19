@interface ManagedKeychain
+ (NSString)assignedPersistentRef;
+ (NSString)assignedUserName;
+ (_TtC16RemoteManagement15ManagedKeychain)sharedInstance;
- (BOOL)hasAssetForAssetKey:(id)a3 scope:(int64_t)a4 persona:(id)a5;
- (BOOL)removeAssetsNotMatchingStoreIdentifiers:(id)a3 scope:(int64_t)a4 persona:(id)a5 error:(id *)a6;
- (BOOL)storeACMEIdentityWithDirectoryURL:(id)a3 clientIdentifier:(id)a4 keySize:(unint64_t)a5 keyType:(id)a6 hardwareBound:(BOOL)a7 subject:(id)a8 subjectAltName:(id)a9 usageFlags:(unint64_t)a10 extendedKeyUsage:(id)a11 attest:(BOOL)a12 isUserEnrollment:(BOOL)a13 assetKey:(id)a14 scope:(int64_t)a15 persona:(id)a16 error:(id *)a17;
- (BOOL)storeSCEPIdentityWithUrl:(id)a3 caInstanceName:(id)a4 caFingerprint:(id)a5 caCapabilities:(id)a6 challenge:(id)a7 subject:(id)a8 keySize:(unint64_t)a9 usageFlags:(unint64_t)a10 subjectAltName:(id)a11 retries:(unint64_t)a12 retryDelay:(unsigned int)a13 assetKey:(id)a14 scope:(int64_t)a15 persona:(id)a16 error:(id *)a17;
- (BOOL)storeWithPassword:(id)a3 userName:(id)a4 assetKey:(id)a5 scope:(int64_t)a6 persona:(id)a7 error:(id *)a8;
- (BOOL)storeWithPkcs12Data:(id)a3 password:(id)a4 assetKey:(id)a5 scope:(int64_t)a6 persona:(id)a7 error:(id *)a8;
- (BOOL)unassignAssetsNotMatchingStoreIdentifiers:(id)a3 scope:(int64_t)a4 persona:(id)a5 error:(id *)a6;
- (_TtC16RemoteManagement15ManagedKeychain)init;
- (__SecCertificate)copyCertificateWithAssetKey:(id)a3 scope:(int64_t)a4 persona:(id)a5 error:(id *)a6;
- (id)assetKeysForCertificatesWithScope:(int64_t)a3 persona:(id)a4 error:(id *)a5;
- (id)assetKeysForIdentitiesWithScope:(int64_t)a3 persona:(id)a4 error:(id *)a5;
- (id)assetKeysForPasswordsWithScope:(int64_t)a3 persona:(id)a4 error:(id *)a5;
- (id)assignPasswordWithAssetKey:(id)a3 scope:(int64_t)a4 persona:(id)a5 toConfigurationKey:(id)a6 accessibility:(id)a7 accessGroup:(id)a8 returnUserName:(id *)a9 error:(id *)a10;
- (id)certificatePersistentRefWithAssetKey:(id)a3 scope:(int64_t)a4 persona:(id)a5 error:(id *)a6;
- (id)certificatePersistentRefsWithAssetKeys:(id)a3 scope:(int64_t)a4 persona:(id)a5 error:(id *)a6;
- (id)debugStateWithScope:(int64_t)a3 persona:(id)a4;
@end

@implementation ManagedKeychain

+ (_TtC16RemoteManagement15ManagedKeychain)sharedInstance
{
  if (qword_1ECEA7F90 != -1)
  {
    swift_once();
  }

  v3 = qword_1ECEA7F98;

  return v3;
}

+ (NSString)assignedPersistentRef
{
  v2 = sub_1E11B3090();

  return v2;
}

+ (NSString)assignedUserName
{
  v2 = sub_1E11B3090();

  return v2;
}

- (BOOL)storeWithPkcs12Data:(id)a3 password:(id)a4 assetKey:(id)a5 scope:(int64_t)a6 persona:(id)a7 error:(id *)a8
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = self;
  v16 = a7;
  v17 = sub_1E11B2F70();
  v19 = v18;

  v20 = sub_1E11B30A0();
  v22 = v21;

  v23 = sub_1E11B30A0();
  v25 = v24;

  if (v16)
  {
    v26 = sub_1E11B30A0();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0;
  }

  sub_1E118B580(v17, v19, v20, v22);
  v30 = v29;
  type metadata accessor for MKRepo();
  sub_1E118F5E8(a6, v26, v28, *(&v15->super.isa + OBJC_IVAR____TtC16RemoteManagement15ManagedKeychain_accessGroup), *&v15->accessGroup[OBJC_IVAR____TtC16RemoteManagement15ManagedKeychain_accessGroup]);
  v31 = sub_1E11A96CC(v23, v25);
  sub_1E119F1A8(v30, v31, v32);

  sub_1E1188450(v17, v19);
  return 1;
}

- (BOOL)storeWithPassword:(id)a3 userName:(id)a4 assetKey:(id)a5 scope:(int64_t)a6 persona:(id)a7 error:(id *)a8
{
  v27 = sub_1E11B30A0();
  v12 = v11;
  v26 = sub_1E11B30A0();
  v28 = v13;
  v14 = sub_1E11B30A0();
  v16 = v15;
  if (a7)
  {
    a7 = sub_1E11B30A0();
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  type metadata accessor for MKRepo();
  v20 = *(&self->super.isa + OBJC_IVAR____TtC16RemoteManagement15ManagedKeychain_accessGroup);
  v19 = *&self->accessGroup[OBJC_IVAR____TtC16RemoteManagement15ManagedKeychain_accessGroup];
  v21 = self;
  sub_1E118F5E8(a6, a7, v18, v20, v19);

  v22 = sub_1E11A96CC(v14, v16);
  v24 = v23;

  sub_1E119F970(v27, v12, v26, v28, v22, v24);

  return 1;
}

- (BOOL)storeSCEPIdentityWithUrl:(id)a3 caInstanceName:(id)a4 caFingerprint:(id)a5 caCapabilities:(id)a6 challenge:(id)a7 subject:(id)a8 keySize:(unint64_t)a9 usageFlags:(unint64_t)a10 subjectAltName:(id)a11 retries:(unint64_t)a12 retryDelay:(unsigned int)a13 assetKey:(id)a14 scope:(int64_t)a15 persona:(id)a16 error:(id *)a17
{
  v58 = sub_1E11B30A0();
  v59 = v23;
  if (a4)
  {
    v57 = sub_1E11B30A0();
    v60 = v24;
  }

  else
  {
    v57 = 0;
    v60 = 0;
  }

  if (a5)
  {
    v25 = a5;
    v26 = a6;
    v27 = a7;
    v28 = a8;
    v29 = a11;
    v30 = a14;
    v31 = a16;
    v32 = self;
    v33 = sub_1E11B2F70();
    v55 = v34;
    v56 = v33;

    if (a6)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v36 = a6;
    v37 = a7;
    v38 = a8;
    v39 = a11;
    v40 = a14;
    v41 = a16;
    v42 = self;
    v55 = 0xF000000000000000;
    v56 = 0;
    if (a6)
    {
LABEL_6:
      v54 = sub_1E11B31F0();

      if (a7)
      {
        goto LABEL_7;
      }

LABEL_11:
      v52 = 0;
      v53 = 0;
      if (a8)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }
  }

  v54 = 0;
  if (!a7)
  {
    goto LABEL_11;
  }

LABEL_7:
  v52 = sub_1E11B30A0();
  v53 = v35;

  if (a8)
  {
LABEL_8:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA81C0, &unk_1E11B6FC0);
    v51 = sub_1E11B31F0();

    goto LABEL_13;
  }

LABEL_12:
  v51 = 0;
LABEL_13:
  if (a11)
  {
    v43 = sub_1E11B3070();
  }

  else
  {
    v43 = 0;
  }

  v44 = sub_1E11B30A0();
  v46 = v45;

  if (a16)
  {
    v47 = sub_1E11B30A0();
    v49 = v48;
  }

  else
  {
    v47 = 0;
    v49 = 0;
  }

  sub_1E117EA3C(v58, v59, v57, v60, v56, v55, v54, v52, v53, v51, a9, a10, v43, a12, a13, v44, v46, a15, v47, v49);

  sub_1E118843C(v56, v55);

  return 1;
}

- (BOOL)storeACMEIdentityWithDirectoryURL:(id)a3 clientIdentifier:(id)a4 keySize:(unint64_t)a5 keyType:(id)a6 hardwareBound:(BOOL)a7 subject:(id)a8 subjectAltName:(id)a9 usageFlags:(unint64_t)a10 extendedKeyUsage:(id)a11 attest:(BOOL)a12 isUserEnrollment:(BOOL)a13 assetKey:(id)a14 scope:(int64_t)a15 persona:(id)a16 error:(id *)a17
{
  v33 = sub_1E11B30A0();
  v37 = v17;
  v31 = sub_1E11B30A0();
  v36 = v18;
  v29 = sub_1E11B30A0();
  v35 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA81C0, &unk_1E11B6FC0);
  v32 = sub_1E11B31F0();
  if (a9)
  {
    v34 = sub_1E11B3070();
  }

  else
  {
    v34 = 0;
  }

  v20 = sub_1E11B31F0();
  v21 = sub_1E11B30A0();
  v23 = v22;
  if (a16)
  {
    v24 = sub_1E11B30A0();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0;
  }

  v27 = self;
  sub_1E117F860(v33, v37, v31, v36, a5, v29, v35, a7, v32, v34, a10, v20, a12, a13, v21, v23, a15, v24, v26);

  return 1;
}

- (BOOL)hasAssetForAssetKey:(id)a3 scope:(int64_t)a4 persona:(id)a5
{
  v8 = sub_1E11B30A0();
  v10 = v9;
  if (a5)
  {
    v11 = sub_1E11B30A0();
    a5 = v12;
  }

  else
  {
    v11 = 0;
  }

  type metadata accessor for MKRepo();
  v13 = *(&self->super.isa + OBJC_IVAR____TtC16RemoteManagement15ManagedKeychain_accessGroup);
  v14 = *&self->accessGroup[OBJC_IVAR____TtC16RemoteManagement15ManagedKeychain_accessGroup];
  v15 = self;
  sub_1E118F5E8(a4, v11, a5, v13, v14);
  v16 = sub_1E11A96CC(v8, v10);
  v18 = sub_1E119FF24(v16, v17);

  return v18 & 1;
}

- (id)assignPasswordWithAssetKey:(id)a3 scope:(int64_t)a4 persona:(id)a5 toConfigurationKey:(id)a6 accessibility:(id)a7 accessGroup:(id)a8 returnUserName:(id *)a9 error:(id *)a10
{
  v13 = sub_1E11B30A0();
  v15 = v14;
  if (a5)
  {
    v16 = sub_1E11B30A0();
    a5 = v17;
  }

  else
  {
    v16 = 0;
  }

  v18 = sub_1E11B30A0();
  v20 = v19;
  v21 = sub_1E11B30A0();
  v23 = v22;
  swift_unknownObjectRetain();
  v24 = self;
  v25 = sub_1E1180F48(v13, v15, a4, v16, a5, v18, v20, a7, v21, v23, a9);
  v27 = v26;

  swift_unknownObjectRelease();

  v28 = sub_1E11B2F50();
  sub_1E1188450(v25, v27);

  return v28;
}

- (id)assetKeysForCertificatesWithScope:(int64_t)a3 persona:(id)a4 error:(id *)a5
{
  if (a4)
  {
    v7 = sub_1E11B30A0();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  type metadata accessor for MKRepo();
  v10 = *(&self->super.isa + OBJC_IVAR____TtC16RemoteManagement15ManagedKeychain_accessGroup);
  v11 = *&self->accessGroup[OBJC_IVAR____TtC16RemoteManagement15ManagedKeychain_accessGroup];
  v12 = self;
  v13 = sub_1E118F5E8(a3, v7, v9, v10, v11);

  swift_beginAccess();
  v14 = *(v13 + 56);

  sub_1E11834A4(v15);

  v16 = sub_1E11B31D0();

  return v16;
}

- (id)assetKeysForIdentitiesWithScope:(int64_t)a3 persona:(id)a4 error:(id *)a5
{
  if (a4)
  {
    v7 = sub_1E11B30A0();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  type metadata accessor for MKRepo();
  v10 = *(&self->super.isa + OBJC_IVAR____TtC16RemoteManagement15ManagedKeychain_accessGroup);
  v11 = *&self->accessGroup[OBJC_IVAR____TtC16RemoteManagement15ManagedKeychain_accessGroup];
  v12 = self;
  v13 = sub_1E118F5E8(a3, v7, v9, v10, v11);

  swift_beginAccess();
  v14 = *(v13 + 72);

  sub_1E11834A4(v15);

  v16 = sub_1E11B31D0();

  return v16;
}

- (id)assetKeysForPasswordsWithScope:(int64_t)a3 persona:(id)a4 error:(id *)a5
{
  if (a4)
  {
    v7 = sub_1E11B30A0();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  type metadata accessor for MKRepo();
  v10 = *(&self->super.isa + OBJC_IVAR____TtC16RemoteManagement15ManagedKeychain_accessGroup);
  v11 = *&self->accessGroup[OBJC_IVAR____TtC16RemoteManagement15ManagedKeychain_accessGroup];
  v12 = self;
  v13 = sub_1E118F5E8(a3, v7, v9, v10, v11);

  swift_beginAccess();
  v14 = *(v13 + 88);

  sub_1E11834A4(v15);

  v16 = sub_1E11B31D0();

  return v16;
}

- (id)certificatePersistentRefWithAssetKey:(id)a3 scope:(int64_t)a4 persona:(id)a5 error:(id *)a6
{
  v9 = sub_1E11B30A0();
  v11 = v10;
  if (a5)
  {
    v12 = sub_1E11B30A0();
    a5 = v13;
  }

  else
  {
    v12 = 0;
  }

  type metadata accessor for MKRepo();
  v14 = *(&self->super.isa + OBJC_IVAR____TtC16RemoteManagement15ManagedKeychain_accessGroup);
  v15 = *&self->accessGroup[OBJC_IVAR____TtC16RemoteManagement15ManagedKeychain_accessGroup];
  v16 = self;
  sub_1E118F5E8(a4, v12, a5, v14, v15);

  v17 = sub_1E11A96CC(v9, v11);
  v19 = v18;
  v20 = v17;

  v21 = sub_1E11A0834(v20, v19);
  v23 = v22;

  v24 = sub_1E11B2F50();
  sub_1E1188450(v21, v23);

  return v24;
}

- (id)certificatePersistentRefsWithAssetKeys:(id)a3 scope:(int64_t)a4 persona:(id)a5 error:(id *)a6
{
  v9 = sub_1E11B31F0();
  if (a5)
  {
    v10 = sub_1E11B30A0();
    a5 = v11;
  }

  else
  {
    v10 = 0;
  }

  v12 = self;
  sub_1E1182084(v9, a4, v10, a5);

  v13 = sub_1E11B3060();

  return v13;
}

- (__SecCertificate)copyCertificateWithAssetKey:(id)a3 scope:(int64_t)a4 persona:(id)a5 error:(id *)a6
{
  v9 = sub_1E11B30A0();
  v11 = v10;
  if (a5)
  {
    v12 = sub_1E11B30A0();
    a5 = v13;
  }

  else
  {
    v12 = 0;
  }

  type metadata accessor for MKRepo();
  v14 = *(&self->super.isa + OBJC_IVAR____TtC16RemoteManagement15ManagedKeychain_accessGroup);
  v15 = *&self->accessGroup[OBJC_IVAR____TtC16RemoteManagement15ManagedKeychain_accessGroup];
  v16 = self;
  sub_1E118F5E8(a4, v12, a5, v14, v15);

  v17 = sub_1E11A96CC(v9, v11);
  v19 = v18;
  v20 = v17;

  v21 = sub_1E11A09DC(v20, v19);

  return v21;
}

- (BOOL)removeAssetsNotMatchingStoreIdentifiers:(id)a3 scope:(int64_t)a4 persona:(id)a5 error:(id *)a6
{
  v9 = sub_1E11B3220();
  if (a5)
  {
    v10 = sub_1E11B30A0();
    a5 = v11;
  }

  else
  {
    v10 = 0;
  }

  v12 = self;
  sub_1E11827F0(v9, a4, v10, a5);

  return 1;
}

- (BOOL)unassignAssetsNotMatchingStoreIdentifiers:(id)a3 scope:(int64_t)a4 persona:(id)a5 error:(id *)a6
{
  v9 = sub_1E11B3220();
  if (a5)
  {
    v10 = sub_1E11B30A0();
    a5 = v11;
  }

  else
  {
    v10 = 0;
  }

  type metadata accessor for MKRepo();
  v12 = *(&self->super.isa + OBJC_IVAR____TtC16RemoteManagement15ManagedKeychain_accessGroup);
  v13 = *&self->accessGroup[OBJC_IVAR____TtC16RemoteManagement15ManagedKeychain_accessGroup];
  v14 = self;
  sub_1E118F5E8(a4, v10, a5, v12, v13);

  sub_1E11980C0(v9);

  return 1;
}

- (id)debugStateWithScope:(int64_t)a3 persona:(id)a4
{
  if (a4)
  {
    v6 = sub_1E11B30A0();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  type metadata accessor for MKRepo();
  v9 = *(&self->super.isa + OBJC_IVAR____TtC16RemoteManagement15ManagedKeychain_accessGroup);
  v10 = *&self->accessGroup[OBJC_IVAR____TtC16RemoteManagement15ManagedKeychain_accessGroup];
  v11 = self;
  sub_1E118F5E8(a3, v6, v8, v9, v10);

  sub_1E11907A4();

  v12 = sub_1E11B3060();

  return v12;
}

- (_TtC16RemoteManagement15ManagedKeychain)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end