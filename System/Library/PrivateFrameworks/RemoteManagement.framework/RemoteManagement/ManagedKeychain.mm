@interface ManagedKeychain
+ (NSString)assignedPersistentRef;
+ (NSString)assignedUserName;
+ (_TtC16RemoteManagement15ManagedKeychain)sharedInstance;
- (BOOL)hasAssetForAssetKey:(id)key scope:(int64_t)scope persona:(id)persona;
- (BOOL)removeAssetsNotMatchingStoreIdentifiers:(id)identifiers scope:(int64_t)scope persona:(id)persona error:(id *)error;
- (BOOL)storeACMEIdentityWithDirectoryURL:(id)l clientIdentifier:(id)identifier keySize:(unint64_t)size keyType:(id)type hardwareBound:(BOOL)bound subject:(id)subject subjectAltName:(id)name usageFlags:(unint64_t)self0 extendedKeyUsage:(id)self1 attest:(BOOL)self2 isUserEnrollment:(BOOL)self3 assetKey:(id)self4 scope:(int64_t)self5 persona:(id)self6 error:(id *)self7;
- (BOOL)storeSCEPIdentityWithUrl:(id)url caInstanceName:(id)name caFingerprint:(id)fingerprint caCapabilities:(id)capabilities challenge:(id)challenge subject:(id)subject keySize:(unint64_t)size usageFlags:(unint64_t)self0 subjectAltName:(id)self1 retries:(unint64_t)self2 retryDelay:(unsigned int)self3 assetKey:(id)self4 scope:(int64_t)self5 persona:(id)self6 error:(id *)self7;
- (BOOL)storeWithPassword:(id)password userName:(id)name assetKey:(id)key scope:(int64_t)scope persona:(id)persona error:(id *)error;
- (BOOL)storeWithPkcs12Data:(id)data password:(id)password assetKey:(id)key scope:(int64_t)scope persona:(id)persona error:(id *)error;
- (BOOL)unassignAssetsNotMatchingStoreIdentifiers:(id)identifiers scope:(int64_t)scope persona:(id)persona error:(id *)error;
- (_TtC16RemoteManagement15ManagedKeychain)init;
- (__SecCertificate)copyCertificateWithAssetKey:(id)key scope:(int64_t)scope persona:(id)persona error:(id *)error;
- (id)assetKeysForCertificatesWithScope:(int64_t)scope persona:(id)persona error:(id *)error;
- (id)assetKeysForIdentitiesWithScope:(int64_t)scope persona:(id)persona error:(id *)error;
- (id)assetKeysForPasswordsWithScope:(int64_t)scope persona:(id)persona error:(id *)error;
- (id)assignPasswordWithAssetKey:(id)key scope:(int64_t)scope persona:(id)persona toConfigurationKey:(id)configurationKey accessibility:(id)accessibility accessGroup:(id)group returnUserName:(id *)name error:(id *)self0;
- (id)certificatePersistentRefWithAssetKey:(id)key scope:(int64_t)scope persona:(id)persona error:(id *)error;
- (id)certificatePersistentRefsWithAssetKeys:(id)keys scope:(int64_t)scope persona:(id)persona error:(id *)error;
- (id)debugStateWithScope:(int64_t)scope persona:(id)persona;
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

- (BOOL)storeWithPkcs12Data:(id)data password:(id)password assetKey:(id)key scope:(int64_t)scope persona:(id)persona error:(id *)error
{
  dataCopy = data;
  passwordCopy = password;
  keyCopy = key;
  selfCopy = self;
  personaCopy = persona;
  v17 = sub_1E11B2F70();
  v19 = v18;

  v20 = sub_1E11B30A0();
  v22 = v21;

  v23 = sub_1E11B30A0();
  v25 = v24;

  if (personaCopy)
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
  sub_1E118F5E8(scope, v26, v28, *(&selfCopy->super.isa + OBJC_IVAR____TtC16RemoteManagement15ManagedKeychain_accessGroup), *&selfCopy->accessGroup[OBJC_IVAR____TtC16RemoteManagement15ManagedKeychain_accessGroup]);
  v31 = sub_1E11A96CC(v23, v25);
  sub_1E119F1A8(v30, v31, v32);

  sub_1E1188450(v17, v19);
  return 1;
}

- (BOOL)storeWithPassword:(id)password userName:(id)name assetKey:(id)key scope:(int64_t)scope persona:(id)persona error:(id *)error
{
  v27 = sub_1E11B30A0();
  v12 = v11;
  v26 = sub_1E11B30A0();
  v28 = v13;
  v14 = sub_1E11B30A0();
  v16 = v15;
  if (persona)
  {
    persona = sub_1E11B30A0();
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  type metadata accessor for MKRepo();
  v20 = *(&self->super.isa + OBJC_IVAR____TtC16RemoteManagement15ManagedKeychain_accessGroup);
  v19 = *&self->accessGroup[OBJC_IVAR____TtC16RemoteManagement15ManagedKeychain_accessGroup];
  selfCopy = self;
  sub_1E118F5E8(scope, persona, v18, v20, v19);

  v22 = sub_1E11A96CC(v14, v16);
  v24 = v23;

  sub_1E119F970(v27, v12, v26, v28, v22, v24);

  return 1;
}

- (BOOL)storeSCEPIdentityWithUrl:(id)url caInstanceName:(id)name caFingerprint:(id)fingerprint caCapabilities:(id)capabilities challenge:(id)challenge subject:(id)subject keySize:(unint64_t)size usageFlags:(unint64_t)self0 subjectAltName:(id)self1 retries:(unint64_t)self2 retryDelay:(unsigned int)self3 assetKey:(id)self4 scope:(int64_t)self5 persona:(id)self6 error:(id *)self7
{
  v58 = sub_1E11B30A0();
  v59 = v23;
  if (name)
  {
    v57 = sub_1E11B30A0();
    v60 = v24;
  }

  else
  {
    v57 = 0;
    v60 = 0;
  }

  if (fingerprint)
  {
    fingerprintCopy = fingerprint;
    capabilitiesCopy = capabilities;
    challengeCopy = challenge;
    subjectCopy = subject;
    altNameCopy = altName;
    keyCopy = key;
    personaCopy = persona;
    selfCopy = self;
    v33 = sub_1E11B2F70();
    v55 = v34;
    v56 = v33;

    if (capabilities)
    {
      goto LABEL_6;
    }
  }

  else
  {
    capabilitiesCopy2 = capabilities;
    challengeCopy2 = challenge;
    subjectCopy2 = subject;
    altNameCopy2 = altName;
    keyCopy2 = key;
    personaCopy2 = persona;
    selfCopy2 = self;
    v55 = 0xF000000000000000;
    v56 = 0;
    if (capabilities)
    {
LABEL_6:
      v54 = sub_1E11B31F0();

      if (challenge)
      {
        goto LABEL_7;
      }

LABEL_11:
      v52 = 0;
      v53 = 0;
      if (subject)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }
  }

  v54 = 0;
  if (!challenge)
  {
    goto LABEL_11;
  }

LABEL_7:
  v52 = sub_1E11B30A0();
  v53 = v35;

  if (subject)
  {
LABEL_8:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA81C0, &unk_1E11B6FC0);
    v51 = sub_1E11B31F0();

    goto LABEL_13;
  }

LABEL_12:
  v51 = 0;
LABEL_13:
  if (altName)
  {
    v43 = sub_1E11B3070();
  }

  else
  {
    v43 = 0;
  }

  v44 = sub_1E11B30A0();
  v46 = v45;

  if (persona)
  {
    v47 = sub_1E11B30A0();
    v49 = v48;
  }

  else
  {
    v47 = 0;
    v49 = 0;
  }

  sub_1E117EA3C(v58, v59, v57, v60, v56, v55, v54, v52, v53, v51, size, flags, v43, retries, delay, v44, v46, scope, v47, v49);

  sub_1E118843C(v56, v55);

  return 1;
}

- (BOOL)storeACMEIdentityWithDirectoryURL:(id)l clientIdentifier:(id)identifier keySize:(unint64_t)size keyType:(id)type hardwareBound:(BOOL)bound subject:(id)subject subjectAltName:(id)name usageFlags:(unint64_t)self0 extendedKeyUsage:(id)self1 attest:(BOOL)self2 isUserEnrollment:(BOOL)self3 assetKey:(id)self4 scope:(int64_t)self5 persona:(id)self6 error:(id *)self7
{
  v33 = sub_1E11B30A0();
  v37 = v17;
  v31 = sub_1E11B30A0();
  v36 = v18;
  v29 = sub_1E11B30A0();
  v35 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA81C0, &unk_1E11B6FC0);
  v32 = sub_1E11B31F0();
  if (name)
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
  if (persona)
  {
    v24 = sub_1E11B30A0();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0;
  }

  selfCopy = self;
  sub_1E117F860(v33, v37, v31, v36, size, v29, v35, bound, v32, v34, flags, v20, attest, enrollment, v21, v23, scope, v24, v26);

  return 1;
}

- (BOOL)hasAssetForAssetKey:(id)key scope:(int64_t)scope persona:(id)persona
{
  v8 = sub_1E11B30A0();
  v10 = v9;
  if (persona)
  {
    v11 = sub_1E11B30A0();
    persona = v12;
  }

  else
  {
    v11 = 0;
  }

  type metadata accessor for MKRepo();
  v13 = *(&self->super.isa + OBJC_IVAR____TtC16RemoteManagement15ManagedKeychain_accessGroup);
  v14 = *&self->accessGroup[OBJC_IVAR____TtC16RemoteManagement15ManagedKeychain_accessGroup];
  selfCopy = self;
  sub_1E118F5E8(scope, v11, persona, v13, v14);
  v16 = sub_1E11A96CC(v8, v10);
  v18 = sub_1E119FF24(v16, v17);

  return v18 & 1;
}

- (id)assignPasswordWithAssetKey:(id)key scope:(int64_t)scope persona:(id)persona toConfigurationKey:(id)configurationKey accessibility:(id)accessibility accessGroup:(id)group returnUserName:(id *)name error:(id *)self0
{
  v13 = sub_1E11B30A0();
  v15 = v14;
  if (persona)
  {
    v16 = sub_1E11B30A0();
    persona = v17;
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
  selfCopy = self;
  v25 = sub_1E1180F48(v13, v15, scope, v16, persona, v18, v20, accessibility, v21, v23, name);
  v27 = v26;

  swift_unknownObjectRelease();

  v28 = sub_1E11B2F50();
  sub_1E1188450(v25, v27);

  return v28;
}

- (id)assetKeysForCertificatesWithScope:(int64_t)scope persona:(id)persona error:(id *)error
{
  if (persona)
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
  selfCopy = self;
  v13 = sub_1E118F5E8(scope, v7, v9, v10, v11);

  swift_beginAccess();
  v14 = *(v13 + 56);

  sub_1E11834A4(v15);

  v16 = sub_1E11B31D0();

  return v16;
}

- (id)assetKeysForIdentitiesWithScope:(int64_t)scope persona:(id)persona error:(id *)error
{
  if (persona)
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
  selfCopy = self;
  v13 = sub_1E118F5E8(scope, v7, v9, v10, v11);

  swift_beginAccess();
  v14 = *(v13 + 72);

  sub_1E11834A4(v15);

  v16 = sub_1E11B31D0();

  return v16;
}

- (id)assetKeysForPasswordsWithScope:(int64_t)scope persona:(id)persona error:(id *)error
{
  if (persona)
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
  selfCopy = self;
  v13 = sub_1E118F5E8(scope, v7, v9, v10, v11);

  swift_beginAccess();
  v14 = *(v13 + 88);

  sub_1E11834A4(v15);

  v16 = sub_1E11B31D0();

  return v16;
}

- (id)certificatePersistentRefWithAssetKey:(id)key scope:(int64_t)scope persona:(id)persona error:(id *)error
{
  v9 = sub_1E11B30A0();
  v11 = v10;
  if (persona)
  {
    v12 = sub_1E11B30A0();
    persona = v13;
  }

  else
  {
    v12 = 0;
  }

  type metadata accessor for MKRepo();
  v14 = *(&self->super.isa + OBJC_IVAR____TtC16RemoteManagement15ManagedKeychain_accessGroup);
  v15 = *&self->accessGroup[OBJC_IVAR____TtC16RemoteManagement15ManagedKeychain_accessGroup];
  selfCopy = self;
  sub_1E118F5E8(scope, v12, persona, v14, v15);

  v17 = sub_1E11A96CC(v9, v11);
  v19 = v18;
  v20 = v17;

  v21 = sub_1E11A0834(v20, v19);
  v23 = v22;

  v24 = sub_1E11B2F50();
  sub_1E1188450(v21, v23);

  return v24;
}

- (id)certificatePersistentRefsWithAssetKeys:(id)keys scope:(int64_t)scope persona:(id)persona error:(id *)error
{
  v9 = sub_1E11B31F0();
  if (persona)
  {
    v10 = sub_1E11B30A0();
    persona = v11;
  }

  else
  {
    v10 = 0;
  }

  selfCopy = self;
  sub_1E1182084(v9, scope, v10, persona);

  v13 = sub_1E11B3060();

  return v13;
}

- (__SecCertificate)copyCertificateWithAssetKey:(id)key scope:(int64_t)scope persona:(id)persona error:(id *)error
{
  v9 = sub_1E11B30A0();
  v11 = v10;
  if (persona)
  {
    v12 = sub_1E11B30A0();
    persona = v13;
  }

  else
  {
    v12 = 0;
  }

  type metadata accessor for MKRepo();
  v14 = *(&self->super.isa + OBJC_IVAR____TtC16RemoteManagement15ManagedKeychain_accessGroup);
  v15 = *&self->accessGroup[OBJC_IVAR____TtC16RemoteManagement15ManagedKeychain_accessGroup];
  selfCopy = self;
  sub_1E118F5E8(scope, v12, persona, v14, v15);

  v17 = sub_1E11A96CC(v9, v11);
  v19 = v18;
  v20 = v17;

  v21 = sub_1E11A09DC(v20, v19);

  return v21;
}

- (BOOL)removeAssetsNotMatchingStoreIdentifiers:(id)identifiers scope:(int64_t)scope persona:(id)persona error:(id *)error
{
  v9 = sub_1E11B3220();
  if (persona)
  {
    v10 = sub_1E11B30A0();
    persona = v11;
  }

  else
  {
    v10 = 0;
  }

  selfCopy = self;
  sub_1E11827F0(v9, scope, v10, persona);

  return 1;
}

- (BOOL)unassignAssetsNotMatchingStoreIdentifiers:(id)identifiers scope:(int64_t)scope persona:(id)persona error:(id *)error
{
  v9 = sub_1E11B3220();
  if (persona)
  {
    v10 = sub_1E11B30A0();
    persona = v11;
  }

  else
  {
    v10 = 0;
  }

  type metadata accessor for MKRepo();
  v12 = *(&self->super.isa + OBJC_IVAR____TtC16RemoteManagement15ManagedKeychain_accessGroup);
  v13 = *&self->accessGroup[OBJC_IVAR____TtC16RemoteManagement15ManagedKeychain_accessGroup];
  selfCopy = self;
  sub_1E118F5E8(scope, v10, persona, v12, v13);

  sub_1E11980C0(v9);

  return 1;
}

- (id)debugStateWithScope:(int64_t)scope persona:(id)persona
{
  if (persona)
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
  selfCopy = self;
  sub_1E118F5E8(scope, v6, v8, v9, v10);

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