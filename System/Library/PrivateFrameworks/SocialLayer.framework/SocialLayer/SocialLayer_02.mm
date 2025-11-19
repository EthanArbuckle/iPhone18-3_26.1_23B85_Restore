uint64_t ProcessVerifier.acquireKey()@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v3 = type metadata accessor for SymmetricKeySize();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = type metadata accessor for SymmetricKey();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v23 - v15;
  v17 = OBJC_IVAR___SLDProcessVerifier_useStaticKeyForTesting;
  swift_beginAccess();
  if (*(v1 + v17) == 1)
  {
    ProcessVerifier.staticTestingKey.getter(v16);
    if ((*(v6 + 48))(v16, 1, v5) != 1)
    {
      return (*(v6 + 32))(v24, v16, v5);
    }

    outlined destroy of (CFStringRef, [CFStringRef? : Any])(v16, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  }

  result = specialized GenericPasswordStore.readKey<A>(account:)(0xD000000000000028, 0x8000000231846A40, v14);
  if (v2)
  {
    return result;
  }

  if ((*(v6 + 48))(v14, 1, v5) == 1)
  {
    outlined destroy of (CFStringRef, [CFStringRef? : Any])(v14, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
    if (one-time initialization token for ProcessVerifier != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Log.ProcessVerifier);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_231772000, v20, v21, "acquireKey() did not find an existing key in the keychain. Creating one.", v22, 2u);
      MEMORY[0x2319361B0](v22, -1, -1);
    }

    static SymmetricKeySize.bits128.getter();
    SymmetricKey.init(size:)();
    specialized GenericPasswordStore.storeKey<A>(_:account:)(v9, 0xD000000000000028, 0x8000000231846A40);
    v16 = v9;
  }

  else
  {
    v16 = v14;
  }

  return (*(v6 + 32))(v24, v16, v5);
}

_DWORD *ProcessVerifier.verify(data:tag:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v51 = a3;
  v52 = a4;
  v53 = a2;
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for AES.GCM.SealedBox();
  v7 = *(v6 - 1);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SymmetricKey();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  ProcessVerifier.acquireKey()(v15);
  if (!v4)
  {
    v49 = v12;
    v50 = v11;
    v16 = v52;
    v17 = v53;
    outlined copy of Data._Representation(a1, v53);
    _s9CryptoKit3AESO3GCMO9SealedBoxV8combinedAGx_tKc10Foundation12DataProtocolRzlufCAI0I0V_Tt1g5(a1, v17);
    v18 = v15;
    if (v16 >> 60 == 15)
    {
      v31 = static AES.GCM.open(_:using:)();
      v33 = v32;
      (*(v7 + 8))(v10, v6);
    }

    else
    {
      v19 = v51;
      v55 = v51;
      v56 = v16;
      outlined copy of Data._Representation(v51, v16);
      lazy protocol witness table accessor for type Data and conformance Data();
      v20 = static AES.GCM.open<A>(_:using:authenticating:)();
      v33 = v21;
      v22 = v6;
      v34 = v20;
      (*(v7 + 8))(v10, v22);
      outlined consume of Data?(v19, v16);
      v31 = v34;
    }

    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, 0x277CCAAC8);
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for RBSProcessIdentity, 0x277D46F60);
    v35 = v33;
    v36 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
    v53 = v35;
    if (v36)
    {
      ObjectType = v31;
      if (one-time initialization token for ProcessVerifier != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      __swift_project_value_buffer(v37, static Log.ProcessVerifier);
      v6 = v36;
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        *v40 = 138412290;
        *(v40 + 4) = v6;
        *v41 = v36;
        v42 = v6;
        _os_log_impl(&dword_231772000, v38, v39, "verify() successfully verified process: %@", v40, 0xCu);
        outlined destroy of (CFStringRef, [CFStringRef? : Any])(v41, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x2319361B0](v41, -1, -1);
        MEMORY[0x2319361B0](v40, -1, -1);
      }

      outlined consume of Data._Representation(ObjectType, v53);

      (*(v49 + 8))(v18, v50);
      return v6;
    }

    if (one-time initialization token for ProcessVerifier != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    __swift_project_value_buffer(v43, static Log.ProcessVerifier);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    v46 = os_log_type_enabled(v44, v45);
    v6 = v53;
    if (v46)
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_231772000, v44, v45, "verify() could not unarchive a process identity from signed data.", v47, 2u);
      MEMORY[0x2319361B0](v47, -1, -1);
    }

    lazy protocol witness table accessor for type ProcessVerifierError and conformance ProcessVerifierError();
    swift_allocError();
    *v48 = 0xD000000000000041;
    v48[1] = 0x8000000231846910;
    swift_willThrow();
    outlined consume of Data._Representation(v31, v6);
    (*(v49 + 8))(v18, v50);
  }

  if (one-time initialization token for ProcessVerifier != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static Log.ProcessVerifier);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v6 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v57 = v26;
    *v6 = 136315138;
    v55 = ObjectType;
    swift_getMetatypeMetadata();
    v27 = String.init<A>(describing:)();
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v57);

    *(v6 + 1) = v29;
    _os_log_impl(&dword_231772000, v24, v25, "verify() caught error: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x2319361B0](v26, -1, -1);
    MEMORY[0x2319361B0](v6, -1, -1);
  }

  swift_willThrow();
  return v6;
}

uint64_t specialized GenericPasswordStore.readKey<A>(account:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result[35] = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23183E340;
  v7 = *MEMORY[0x277CDBEC8];
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v9;
  strcpy((inited + 48), "sociallayerd");
  *(inited + 61) = 0;
  *(inited + 62) = -5120;
  v10 = *MEMORY[0x277CDC228];
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v11;
  v12 = *MEMORY[0x277CDC238];
  type metadata accessor for CFStringRef(0);
  *(inited + 120) = v13;
  *(inited + 96) = v12;
  v14 = *MEMORY[0x277CDBF20];
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v15;
  *(inited + 168) = v8;
  *(inited + 144) = a1;
  *(inited + 152) = a2;
  v16 = *MEMORY[0x277CDC5C8];
  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v17;
  v18 = MEMORY[0x277D839B0];
  *(inited + 216) = MEMORY[0x277D839B0];
  v19 = 1;
  *(inited + 192) = 1;
  v20 = *MEMORY[0x277CDC558];
  *(inited + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 232) = v21;
  *(inited + 264) = v18;
  *(inited + 240) = 1;
  v22 = v12;

  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  result[0] = 0;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v24 = SecItemCopyMatching(isa, result);

  if (v24 == -25300)
  {
LABEL_6:
    v25 = type metadata accessor for SymmetricKey();
    (*(*(v25 - 8) + 56))(a3, v19, 1, v25);
    goto LABEL_11;
  }

  if (!v24)
  {
    if (result[0])
    {
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        SymmetricKey.init<A>(data:)();
        v19 = 0;
      }
    }

    goto LABEL_6;
  }

  _StringGuts.grow(_:)(24);

  *&v36 = 0xD000000000000016;
  *(&v36 + 1) = 0x8000000231846A90;
  v26 = SecCopyErrorMessageString(v24, 0);
  if (v26)
  {
    v27 = v26;
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    v31 = v28;
  }

  else
  {
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v32;
  }

  MEMORY[0x231934620](v31, v30);

  lazy protocol witness table accessor for type GenericPasswordStoreError and conformance GenericPasswordStoreError();
  swift_allocError();
  *v33 = v36;
  swift_willThrow();
LABEL_11:
  v34 = swift_unknownObjectRelease();
  v35 = *MEMORY[0x277D85DE8];
  return v34;
}

uint64_t _s9CryptoKit3AESO3GCMO9SealedBoxV8combinedAGx_tKc10Foundation12DataProtocolRzlufCAI0I0V_Tt1g5(uint64_t a1, unint64_t a2)
{
  v30[5] = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_8;
    }

    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 < 28)
      {
        goto LABEL_8;
      }

LABEL_11:
      v30[3] = MEMORY[0x277CC9318];
      v30[4] = MEMORY[0x277CC9300];
      v30[0] = a1;
      v30[1] = a2;
      v10 = __swift_project_boxed_opaque_existential_1(v30, MEMORY[0x277CC9318]);
      v11 = *v10;
      v12 = v10[1];
      v13 = v12 >> 62;
      if ((v12 >> 62) > 1)
      {
        if (v13 != 2)
        {
          memset(v28, 0, 14);
          v15 = v28;
          v14 = v28;
          goto LABEL_33;
        }

        v16 = *(v11 + 16);
        v17 = *(v11 + 24);
        v18 = __DataStorage._bytes.getter();
        if (v18)
        {
          v19 = __DataStorage._offset.getter();
          v11 = v16 - v19;
          if (__OFSUB__(v16, v19))
          {
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

          v18 += v11;
        }

        v5 = __OFSUB__(v17, v16);
        v20 = v17 - v16;
        if (!v5)
        {
          goto LABEL_25;
        }

        __break(1u);
      }

      else if (!v13)
      {
        v28[0] = *v10;
        LOWORD(v28[1]) = v12;
        BYTE2(v28[1]) = BYTE2(v12);
        BYTE3(v28[1]) = BYTE3(v12);
        BYTE4(v28[1]) = BYTE4(v12);
        BYTE5(v28[1]) = BYTE5(v12);
        v14 = v28 + BYTE6(v12);
        v15 = v28;
LABEL_33:
        closure #1 in Data.init<A>(_:)(v15, v14, &v29);
        __swift_destroy_boxed_opaque_existential_0(v30);
        result = AES.GCM.SealedBox.init(combined:)();
        goto LABEL_34;
      }

      v21 = v11;
      v22 = v11 >> 32;
      v20 = v22 - v21;
      if (v22 >= v21)
      {
        v18 = __DataStorage._bytes.getter();
        if (!v18)
        {
LABEL_25:
          v24 = MEMORY[0x231933EB0]();
          if (v24 >= v20)
          {
            v25 = v20;
          }

          else
          {
            v25 = v24;
          }

          v26 = (v25 + v18);
          if (v18)
          {
            v14 = v26;
          }

          else
          {
            v14 = 0;
          }

          v15 = v18;
          goto LABEL_33;
        }

        v23 = __DataStorage._offset.getter();
        if (!__OFSUB__(v21, v23))
        {
          v18 += v21 - v23;
          goto LABEL_25;
        }

LABEL_39:
        __break(1u);
      }

LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v2)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 < 28)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }

    goto LABEL_36;
  }

  if (BYTE6(a2) >= 0x1CuLL)
  {
    goto LABEL_11;
  }

LABEL_8:
  outlined consume of Data._Representation(a1, a2);
  v7 = type metadata accessor for CryptoKitError();
  lazy protocol witness table accessor for type CryptoKitError and conformance CryptoKitError(&lazy protocol witness table cache variable for type CryptoKitError and conformance CryptoKitError, MEMORY[0x277CC51E8]);
  swift_allocError();
  (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277CC51E0], v7);
  result = swift_willThrow();
LABEL_34:
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

id ProcessVerifier.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ProcessVerifier.init()()
{
  ObjectType = swift_getObjectType();
  v0[OBJC_IVAR___SLDProcessVerifier_useStaticKeyForTesting] = 0;
  v2 = OBJC_IVAR___SLDProcessVerifier____lazy_storage___staticTestingKey;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  (*(*(v3 - 8) + 56))(&v0[v2], 1, 1, v3);
  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

id ProcessVerifier.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void specialized GenericPasswordStore.storeKey<A>(_:account:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23183E350;
  v6 = *MEMORY[0x277CDBEC8];
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  v8 = v7;
  *(inited + 40) = v9;
  strcpy((inited + 48), "sociallayerd");
  *(inited + 61) = 0;
  *(inited + 62) = -5120;
  v10 = *MEMORY[0x277CDC228];
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v11;
  v12 = *MEMORY[0x277CDC238];
  type metadata accessor for CFStringRef(0);
  v14 = v13;
  *(inited + 120) = v13;
  *(inited + 96) = v12;
  v15 = *MEMORY[0x277CDBF20];
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v16;
  *(inited + 168) = v8;
  *(inited + 144) = a2;
  *(inited + 152) = a3;
  v17 = *MEMORY[0x277CDBED8];
  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v18;
  v19 = *MEMORY[0x277CDBEE0];
  *(inited + 216) = v14;
  *(inited + 192) = v19;
  v20 = *MEMORY[0x277CDC5C8];
  *(inited + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 232) = v21;
  *(inited + 264) = MEMORY[0x277D839B0];
  *(inited + 240) = 1;
  v22 = *MEMORY[0x277CDC5E8];
  *(inited + 272) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 280) = v23;
  type metadata accessor for SymmetricKey();
  lazy protocol witness table accessor for type CryptoKitError and conformance CryptoKitError(&lazy protocol witness table cache variable for type SymmetricKey and conformance SymmetricKey, MEMORY[0x277CC5330]);
  v24 = v12;

  v25 = v19;
  v26 = MEMORY[0x277CC9318];
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  *(inited + 312) = v26;
  *(inited + 288) = v37;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v28 = SecItemAdd(isa, 0);

  if (v28)
  {
    _StringGuts.grow(_:)(24);

    *&v38 = 0xD000000000000016;
    *(&v38 + 1) = 0x8000000231846A70;
    v29 = SecCopyErrorMessageString(v28, 0);
    if (v29)
    {
      v30 = v29;
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      v34 = v31;
    }

    else
    {
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v35;
    }

    MEMORY[0x231934620](v34, v33);

    lazy protocol witness table accessor for type GenericPasswordStoreError and conformance GenericPasswordStoreError();
    swift_allocError();
    *v36 = v38;
    swift_willThrow();
  }
}

char *specialized ProcessVerifier.createSealedBox(from:using:tag:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v39 = a4;
  v42 = a2;
  v43 = a3;
  v41 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit3AESO3GCMO5NonceVSgMd, &_s9CryptoKit3AESO3GCMO5NonceVSgMR);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v36 - v11;
  v13 = type metadata accessor for AES.GCM.SealedBox();
  v37 = *(v13 - 8);
  v38 = v13;
  v14 = *(v37 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v40 = &v36 - v18;
  v19 = type metadata accessor for AES.GCM.Nonce();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  AES.GCM.Nonce.init()();
  v24 = (v20 + 16);
  v25 = (v20 + 56);
  if (a5 >> 60 == 15)
  {
    v46 = v41;
    v47 = v42;
    (*v24)(v10, v23, v19);
    (*v25)(v10, 0, 1, v19);
    lazy protocol witness table accessor for type Data and conformance Data();
    v26 = v48;
    static AES.GCM.seal<A>(_:using:nonce:)();
    if (v26)
    {
      outlined destroy of (CFStringRef, [CFStringRef? : Any])(v10, &_s9CryptoKit3AESO3GCMO5NonceVSgMd, &_s9CryptoKit3AESO3GCMO5NonceVSgMR);
LABEL_10:
      (*(v20 + 8))(v23, v19);
      return v10;
    }

    outlined destroy of (CFStringRef, [CFStringRef? : Any])(v10, &_s9CryptoKit3AESO3GCMO5NonceVSgMd, &_s9CryptoKit3AESO3GCMO5NonceVSgMR);
    v10 = AES.GCM.SealedBox.combined.getter();
    v31 = v30;
    v32 = v17;
LABEL_8:
    (*(v37 + 8))(v32, v38);
    if (v31 >> 60 == 15)
    {
      v10 = 0x80000002318469F0;
      lazy protocol witness table accessor for type ProcessVerifierError and conformance ProcessVerifierError();
      swift_allocError();
      *v34 = 0xD000000000000045;
      v34[1] = 0x80000002318469F0;
      swift_willThrow();
    }

    goto LABEL_10;
  }

  v27 = a5;
  v46 = v41;
  v47 = v42;
  (*v24)(v12, v23, v19);
  (*v25)(v12, 0, 1, v19);
  v28 = v39;
  v44 = v39;
  v45 = v27;
  outlined copy of Data._Representation(v39, v27);
  lazy protocol witness table accessor for type Data and conformance Data();
  v29 = v48;
  static AES.GCM.seal<A, B>(_:using:nonce:authenticating:)();
  if (!v29)
  {
    outlined destroy of (CFStringRef, [CFStringRef? : Any])(v12, &_s9CryptoKit3AESO3GCMO5NonceVSgMd, &_s9CryptoKit3AESO3GCMO5NonceVSgMR);
    v32 = v40;
    v10 = AES.GCM.SealedBox.combined.getter();
    v31 = v33;
    outlined consume of Data?(v28, v27);
    goto LABEL_8;
  }

  outlined destroy of (CFStringRef, [CFStringRef? : Any])(v12, &_s9CryptoKit3AESO3GCMO5NonceVSgMd, &_s9CryptoKit3AESO3GCMO5NonceVSgMR);
  (*(v20 + 8))(v23, v19);
  outlined consume of Data?(v28, v27);
  return v10;
}

uint64_t outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t lazy protocol witness table accessor for type ProcessVerifierError and conformance ProcessVerifierError()
{
  result = lazy protocol witness table cache variable for type ProcessVerifierError and conformance ProcessVerifierError;
  if (!lazy protocol witness table cache variable for type ProcessVerifierError and conformance ProcessVerifierError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProcessVerifierError and conformance ProcessVerifierError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Data and conformance Data()
{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProcessVerifierError(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ProcessVerifierError(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for ProcessVerifier()
{
  result = type metadata singleton initialization cache for ProcessVerifier;
  if (!type metadata singleton initialization cache for ProcessVerifier)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for ProcessVerifier()
{
  type metadata accessor for SymmetricKey??();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for SymmetricKey??()
{
  if (!lazy cache variable for type metadata for SymmetricKey??)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for SymmetricKey??);
    }
  }
}

uint64_t outlined assign with take of SymmetricKey??(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgSgMd, &_s9CryptoKit12SymmetricKeyVSgSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of SymmetricKey?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type CryptoKitError and conformance CryptoKitError(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GenericPasswordStoreError and conformance GenericPasswordStoreError()
{
  result = lazy protocol witness table cache variable for type GenericPasswordStoreError and conformance GenericPasswordStoreError;
  if (!lazy protocol witness table cache variable for type GenericPasswordStoreError and conformance GenericPasswordStoreError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenericPasswordStoreError and conformance GenericPasswordStoreError);
  }

  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  return specialized Array.append<A>(contentsOf:)(a1, &_ss23_ContiguousArrayStorageCy9CryptoKit12SHA256DigestVGMd, &_ss23_ContiguousArrayStorageCy9CryptoKit12SHA256DigestVGMR, MEMORY[0x277CC5290], MEMORY[0x277CC5290]);
}

{
  return specialized Array.append<A>(contentsOf:)(a1, &_ss23_ContiguousArrayStorageCy9CryptoKit4P256O7SigningO9PublicKeyVGMd, &_ss23_ContiguousArrayStorageCy9CryptoKit4P256O7SigningO9PublicKeyVGMR, MEMORY[0x277CC54E8], MEMORY[0x277CC54E8]);
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v6 = *(result + 16);
  v7 = *v5;
  v8 = *(*v5 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = result;
  v15 = *v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v9 <= v7[3] >> 1)
  {
    if (*(v14 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v8 <= v9)
  {
    v24 = v8 + v6;
  }

  else
  {
    v24 = v8;
  }

  v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v24, 1, v7, a2, a3, a4);
  if (!*(v14 + 16))
  {
LABEL_13:

    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v17 = (v7[3] >> 1) - v7[2];
  result = a5(0);
  v18 = *(result - 8);
  if (v17 < v6)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = *(v18 + 72);
  swift_arrayInitWithCopy();

  if (!v6)
  {
LABEL_14:
    *v5 = v7;
    return result;
  }

  v21 = v7[2];
  v22 = __OFADD__(v21, v6);
  v23 = v21 + v6;
  if (!v22)
  {
    v7[2] = v23;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t one-time initialization function for SL_GLT_SEED_EXTRACTION_LABEL()
{
  result = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(0xD000000000000017, 0x8000000231846BF0);
  SL_GLT_SEED_EXTRACTION_LABEL = result;
  unk_27DD6B610 = v1;
  return result;
}

uint64_t *SL_GLT_SEED_EXTRACTION_LABEL.unsafeMutableAddressor()
{
  if (one-time initialization token for SL_GLT_SEED_EXTRACTION_LABEL != -1)
  {
    swift_once();
  }

  return &SL_GLT_SEED_EXTRACTION_LABEL;
}

uint64_t KeyQueryController.service.getter()
{
  v1 = *(v0 + OBJC_IVAR___SLKeyQueryController_service);
  v2 = *(v0 + OBJC_IVAR___SLKeyQueryController_service + 8);

  return v1;
}

void KeyQueryController.pushTokenForSelf.getter()
{
  v1 = (v0 + OBJC_IVAR___SLKeyQueryController____lazy_storage___pushTokenForSelf);
  v2 = *(v0 + OBJC_IVAR___SLKeyQueryController____lazy_storage___pushTokenForSelf);
  v3 = *(v0 + OBJC_IVAR___SLKeyQueryController____lazy_storage___pushTokenForSelf + 8);
  if (v3 >> 60 != 15)
  {
    goto LABEL_5;
  }

  v4 = [objc_opt_self() sharedInstance];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 pushToken];

    if (v6)
    {
      v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;

      v10 = *v1;
      v11 = v1[1];
      *v1 = v7;
      v1[1] = v9;
      outlined copy of Data._Representation(v7, v9);
      outlined consume of Data?(v10, v11);
LABEL_5:
      outlined copy of Data?(v2, v3);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t outlined copy of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t KeyQueryController.pushTokenForSelf.setter(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___SLKeyQueryController____lazy_storage___pushTokenForSelf);
  v4 = *(v2 + OBJC_IVAR___SLKeyQueryController____lazy_storage___pushTokenForSelf);
  v5 = *(v2 + OBJC_IVAR___SLKeyQueryController____lazy_storage___pushTokenForSelf + 8);
  *v3 = a1;
  v3[1] = a2;
  return outlined consume of Data?(v4, v5);
}

uint64_t (*KeyQueryController.pushTokenForSelf.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  KeyQueryController.pushTokenForSelf.getter();
  *a1 = v3;
  a1[1] = v4;
  return KeyQueryController.pushTokenForSelf.modify;
}

uint64_t KeyQueryController.pushTokenForSelf.modify(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *a1;
  v4 = (a1[2] + OBJC_IVAR___SLKeyQueryController____lazy_storage___pushTokenForSelf);
  v5 = *v4;
  v6 = v4[1];
  *v4 = *a1;
  v4[1] = v2;
  if (a2)
  {
    outlined copy of Data._Representation(v3, v2);
    outlined consume of Data?(v5, v6);

    return outlined consume of Data._Representation(v3, v2);
  }

  else
  {

    return outlined consume of Data?(v5, v6);
  }
}

id KeyQueryController.localAccountHandles.getter()
{
  v1 = OBJC_IVAR___SLKeyQueryController____lazy_storage___localAccountHandles;
  v2 = *(v0 + OBJC_IVAR___SLKeyQueryController____lazy_storage___localAccountHandles);
  v3 = v2;
  if (v2 != 1)
  {
    goto LABEL_4;
  }

  result = [*(v0 + OBJC_IVAR___SLKeyQueryController_idsService) accounts];
  if (result)
  {
    v5 = result;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for IDSAccount, 0x277D186C0);
    lazy protocol witness table accessor for type IDSAccount and conformance NSObject();
    v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    specialized Sequence.compactMap<A>(_:)(v6);
    v3 = v7;

    v8 = *(v0 + v1);
    *(v0 + v1) = v3;

    outlined consume of [String]??(v8);
LABEL_4:
    outlined copy of [String]??(v2);
    return v3;
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type IDSAccount and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type IDSAccount and conformance NSObject;
  if (!lazy protocol witness table cache variable for type IDSAccount and conformance NSObject)
  {
    type metadata accessor for OS_dispatch_queue(255, &lazy cache variable for type metadata for IDSAccount, 0x277D186C0);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IDSAccount and conformance NSObject);
  }

  return result;
}

uint64_t outlined consume of [String]??(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t outlined copy of [String]??(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t KeyQueryController.localAccountHandles.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___SLKeyQueryController____lazy_storage___localAccountHandles);
  *(v1 + OBJC_IVAR___SLKeyQueryController____lazy_storage___localAccountHandles) = a1;
  return outlined consume of [String]??(v2);
}

uint64_t (*KeyQueryController.localAccountHandles.modify(id *a1))(void *a1, char a2)
{
  a1[1] = v1;
  *a1 = KeyQueryController.localAccountHandles.getter();
  return KeyQueryController.localAccountHandles.modify;
}

uint64_t KeyQueryController.localAccountHandles.modify(void *a1, char a2)
{
  v2 = a1[1];
  v3 = *(v2 + OBJC_IVAR___SLKeyQueryController____lazy_storage___localAccountHandles);
  *(v2 + OBJC_IVAR___SLKeyQueryController____lazy_storage___localAccountHandles) = *a1;
  if (a2)
  {

    outlined consume of [String]??(v3);
  }

  else
  {

    return outlined consume of [String]??(v3);
  }
}

id KeyQueryController.__allocating_init(service:targetQueue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = objc_allocWithZone(v4);
  ObjectType = swift_getObjectType();
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v11 = result;
    v13[3] = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for IDSIDQueryController, 0x277D18728);
    v13[4] = &protocol witness table for IDSIDQueryController;
    v13[0] = v11;
    v12 = (*(ObjectType + 176))(a1, a2, a3, v13);
    swift_deallocPartialClassInstance();
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id KeyQueryController.init(service:targetQueue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v8 = result;
    v10[3] = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for IDSIDQueryController, 0x277D18728);
    v10[4] = &protocol witness table for IDSIDQueryController;
    v10[0] = v8;
    v9 = (*(ObjectType + 176))(a1, a2, a3, v10);
    swift_deallocPartialClassInstance();
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t KeyQueryController.__allocating_init(service:targetQueue:queryController:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  specialized KeyQueryController.init(service:targetQueue:queryController:)(a1, a2, a3, a4);
  v11 = v10;

  return v11;
}

uint64_t KeyQueryController.init(service:targetQueue:queryController:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  specialized KeyQueryController.init(service:targetQueue:queryController:)(a1, a2, a3, a4);
  v6 = v5;

  return v6;
}

uint64_t KeyQueryController.publicKeysAndTPS(for:documentIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[16] = a4;
  v5[17] = v4;
  v5[14] = a2;
  v5[15] = a3;
  v5[13] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O7SigningO9PublicKeyVSgMd, &_s9CryptoKit4P256O7SigningO9PublicKeyVSgMR) - 8) + 64) + 15;
  v5[18] = swift_task_alloc();
  v7 = type metadata accessor for P256.Signing.PublicKey();
  v5[19] = v7;
  v8 = *(v7 - 8);
  v5[20] = v8;
  v9 = *(v8 + 64) + 15;
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O7SigningO9PublicKeyV3key_10Foundation4DataV3tpstMd, &_s9CryptoKit4P256O7SigningO9PublicKeyV3key_10Foundation4DataV3tpstMR);
  v5[26] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](KeyQueryController.publicKeysAndTPS(for:documentIdentifier:), 0, 0);
}

uint64_t KeyQueryController.publicKeysAndTPS(for:documentIdentifier:)()
{
  v26 = v0;
  if (one-time initialization token for keyController != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = v0[14];
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Log.keyController);

  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[17];
    v9 = v0[13];
    v8 = v0[14];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25 = v11;
    *v10 = 136315394;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v25);
    *(v10 + 12) = 2080;
    *(v10 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v7 + OBJC_IVAR___SLKeyQueryController_service), *(v7 + OBJC_IVAR___SLKeyQueryController_service + 8), &v25);
    _os_log_impl(&dword_231772000, v5, v6, "Querying for IDSEndpoints for handles %s on service: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2319361B0](v11, -1, -1);
    MEMORY[0x2319361B0](v10, -1, -1);
  }

  v12 = v0[17];
  v13 = *(v12 + OBJC_IVAR___SLKeyQueryController_queryController + 24);
  v14 = *(v12 + OBJC_IVAR___SLKeyQueryController_queryController + 32);
  __swift_project_boxed_opaque_existential_1((v12 + OBJC_IVAR___SLKeyQueryController_queryController), v13);
  v15 = *(v12 + OBJC_IVAR___SLKeyQueryController_service);
  v16 = *(v12 + OBJC_IVAR___SLKeyQueryController_service + 8);
  v17 = *(v12 + OBJC_IVAR___SLKeyQueryController_queue);
  v18 = *(v14 + 8);
  v24 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  v0[29] = v20;
  *v20 = v0;
  v20[1] = KeyQueryController.publicKeysAndTPS(for:documentIdentifier:);
  v21 = v0[14];
  v22 = v0[13];

  return v24(v22, v21, v15, v16, v17, v13, v14);
}

{
  v1 = *(v0 + 240);
  if (*(v1 + 16))
  {
    result = outlined init with copy of HighlightDisambiguationPillMetricVariant(v1 + 32, v0 + 16);
    v3 = *(v1 + 16);
    if (!v3)
    {
      __break(1u);
LABEL_25:
      __break(1u);
      return result;
    }

    v4 = *(v0 + 240);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 96) = v4;
    v6 = *(v0 + 240);
    if (!isUniquelyReferenced_nonNull_native || (v3 - 1) > v6[3] >> 1)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v3, 1, *(v0 + 240));
      *(v0 + 96) = v6;
    }

    v7 = *(v0 + 200);
    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 1, 0);
    v8 = *(v0 + 40);
    v9 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v8);
    (*(v9 + 8))(v8, v9);
    v10 = *((*MEMORY[0x277D85000] & **(v0 + 136)) + 0xD0);
    v23 = v10(*(v0 + 224), *(v0 + 200), 0, 0xF000000000000000, *(v0 + 120), *(v0 + 128));
    v25 = v24;
    v64 = v10;
    v26 = *(v0 + 216);
    v27 = *(v0 + 224);
    v61 = *(v0 + 208);
    v28 = *(v0 + 160);
    v68 = *(v0 + 152);
    v29 = (v27 + *(v61 + 48));
    v63 = *(v28 + 8);
    (v63)(*(v0 + 200));
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    *v29 = v23;
    v29[1] = v25;
    outlined init with copy of (NSAttributedStringKey, Any)(v27, v26, &_s9CryptoKit4P256O7SigningO9PublicKeyV3key_10Foundation4DataV3tpstMd, &_s9CryptoKit4P256O7SigningO9PublicKeyV3key_10Foundation4DataV3tpstMR);
    v30 = (v26 + *(v61 + 48));
    v65 = v30[1];
    v66 = *v30;
    v63(v26, v68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9CryptoKit4P256O7SigningO9PublicKeyVGMd, &_ss23_ContiguousArrayStorageCy9CryptoKit4P256O7SigningO9PublicKeyVGMR);
    v31 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    v58 = *(v28 + 72);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_23183D7E0;
    outlined init with copy of (NSAttributedStringKey, Any)(v27, v26, &_s9CryptoKit4P256O7SigningO9PublicKeyV3key_10Foundation4DataV3tpstMd, &_s9CryptoKit4P256O7SigningO9PublicKeyV3key_10Foundation4DataV3tpstMR);
    outlined consume of Data._Representation(*(v26 + *(v61 + 48)), *(v26 + *(v61 + 48) + 8));
    v34 = v28 + 32;
    v33 = *(v28 + 32);
    v57 = v31;
    result = v33(v32 + v31, v26, v68);
    v70 = v32;
    v62 = v6[2];
    if (v62)
    {
      v35 = 0;
      v36 = *(v0 + 160);
      v37 = (v6 + 4);
      v59 = (v36 + 48);
      v60 = (v36 + 56);
      v69 = MEMORY[0x277D84F90];
      while (v35 < v6[2])
      {
        v38 = v34;
        v39 = *(v0 + 176);
        outlined init with copy of HighlightDisambiguationPillMetricVariant(v37, v0 + 56);
        v41 = *(v0 + 80);
        v40 = *(v0 + 88);
        __swift_project_boxed_opaque_existential_1((v0 + 56), v41);
        (*(v40 + 8))(v41, v40);
        v42 = *(v0 + 136);
        v43 = v64(*(v0 + 184), *(v0 + 176), v66, v65, *(v0 + 120), *(v0 + 128));
        v45 = *(v0 + 176);
        v44 = *(v0 + 184);
        v47 = *(v0 + 144);
        v46 = *(v0 + 152);
        outlined consume of Data._Representation(v43, v48);
        v63(v45, v46);
        v33(v47, v44, v46);
        (*v60)(v47, 0, 1, v46);
        __swift_destroy_boxed_opaque_existential_0((v0 + 56));
        if ((*v59)(v47, 1, v46) == 1)
        {
          result = outlined destroy of (CFStringRef, [CFStringRef? : Any])(*(v0 + 144), &_s9CryptoKit4P256O7SigningO9PublicKeyVSgMd, &_s9CryptoKit4P256O7SigningO9PublicKeyVSgMR);
          v34 = v38;
        }

        else
        {
          v49 = *(v0 + 192);
          v50 = *(v0 + 168);
          v51 = *(v0 + 152);
          v33(v49, *(v0 + 144), v51);
          v33(v50, v49, v51);
          v34 = v38;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v69 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v69[2] + 1, 1, v69, &_ss23_ContiguousArrayStorageCy9CryptoKit4P256O7SigningO9PublicKeyVGMd, &_ss23_ContiguousArrayStorageCy9CryptoKit4P256O7SigningO9PublicKeyVGMR, MEMORY[0x277CC54E8]);
          }

          v53 = v69[2];
          v52 = v69[3];
          if (v53 >= v52 >> 1)
          {
            v69 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v52 > 1, v53 + 1, 1, v69, &_ss23_ContiguousArrayStorageCy9CryptoKit4P256O7SigningO9PublicKeyVGMd, &_ss23_ContiguousArrayStorageCy9CryptoKit4P256O7SigningO9PublicKeyVGMR, MEMORY[0x277CC54E8]);
          }

          v54 = *(v0 + 168);
          v55 = *(v0 + 152);
          v69[2] = v53 + 1;
          result = v33(v69 + v57 + v53 * v58, v54, v55);
        }

        ++v35;
        v37 += 40;
        if (v62 == v35)
        {
          goto LABEL_23;
        }
      }

      goto LABEL_25;
    }

    v69 = MEMORY[0x277D84F90];
LABEL_23:
    v56 = *(v0 + 224);

    specialized Array.append<A>(contentsOf:)(v69, &_ss23_ContiguousArrayStorageCy9CryptoKit4P256O7SigningO9PublicKeyVGMd, &_ss23_ContiguousArrayStorageCy9CryptoKit4P256O7SigningO9PublicKeyVGMR, MEMORY[0x277CC54E8], MEMORY[0x277CC54E8]);
    outlined destroy of (CFStringRef, [CFStringRef? : Any])(v56, &_s9CryptoKit4P256O7SigningO9PublicKeyV3key_10Foundation4DataV3tpstMd, &_s9CryptoKit4P256O7SigningO9PublicKeyV3key_10Foundation4DataV3tpstMR);
    v67 = v70;
    v13 = v65;
    v12 = v66;
  }

  else
  {
    v11 = *(v0 + 240);

    v67 = 0;
    v12 = 0;
    v13 = 0;
  }

  v15 = *(v0 + 216);
  v14 = *(v0 + 224);
  v17 = *(v0 + 192);
  v16 = *(v0 + 200);
  v19 = *(v0 + 176);
  v18 = *(v0 + 184);
  v20 = *(v0 + 168);
  v21 = *(v0 + 144);

  v22 = *(v0 + 8);

  return v22(v67, v12, v13);
}

uint64_t KeyQueryController.publicKeysAndTPS(for:documentIdentifier:)(uint64_t a1)
{
  v2 = *(*v1 + 232);
  v4 = *v1;
  *(*v1 + 240) = a1;

  return MEMORY[0x2822009F8](KeyQueryController.publicKeysAndTPS(for:documentIdentifier:), 0, 0);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> KeyQueryController.validateKeyType(_:isPublicKey:)(SecKeyRef _, Swift::Bool isPublicKey)
{
  v2 = SecKeyCopyAttributes(_);
  if (v2)
  {
    v3 = v2;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v4 = 0;
      type metadata accessor for CFStringRef(0);
      lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
      static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
    }
  }

  lazy protocol witness table accessor for type KeyQueryController.DiversificationErrors and conformance KeyQueryController.DiversificationErrors();
  swift_allocError();
  swift_willThrow();
}

id KeyQueryController.diversify(publicKey:tps:docId:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v20[1] = *MEMORY[0x277D85DE8];
  if (a4 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v11 = objc_opt_self();
  v12 = MEMORY[0x231934530](a5, a6);
  v20[0] = 0;
  v13 = [v11 diversifyPublicKey:a2 trackingPreventionSalt:isa withDocumentIdentifier:v12 error:v20];

  if (v13)
  {
    v14 = v20[0];
    v15 = [v13 diversifiedKey];
    v16 = v15;
    SecKeyRef.p256PublicKey.getter();
    if (v6)
    {
    }

    else
    {

      v17 = [v13 trackingPreventionSalt];
      v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    }
  }

  else
  {
    v16 = v20[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v18 = *MEMORY[0x277D85DE8];
  return v16;
}

NSObject *KeyQueryController.diversifyKey(_:trackingPreventionSalt:documentIdentifier:)(uint64_t a1, uint64_t a2, uint64_t *a3, char *a4, char *a5, uint64_t a6)
{
  v52 = a6;
  v7 = v6;
  v50 = a4;
  v51 = a5;
  v48 = a1;
  v49 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O7SigningO9PublicKeyVSgMd, &_s9CryptoKit4P256O7SigningO9PublicKeyVSgMR);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v46 - v14;
  v16 = type metadata accessor for P256.Signing.PublicKey();
  v47 = *(v16 - 8);
  v17 = *(v47 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v46 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v46 - v24;
  v26 = P256.Signing.PublicKey.secKey.getter();
  if (v26)
  {
    v27 = v26;
    v28 = (*((*MEMORY[0x277D85000] & *v7) + 0xC8))(v48, v26, v49, v50, v51, v52);
  }

  else
  {
    v50 = v20;
    v51 = v23;
    v52 = v13;
    v53 = v25;
    v29 = v47;
    if (one-time initialization token for keyController != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Log.keyController);
    v31 = *(v29 + 16);
    v32 = v53;
    v33 = v16;
    v31(v53, a2, v16);
    v28 = Logger.logObject.getter();
    LODWORD(v34) = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v34))
    {
      v35 = v32;
      v36 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v54 = v49;
      *v36 = 136315138;
      v31(v15, v35, v16);
      (*(v29 + 56))(v15, 0, 1, v16);
      v37 = v52;
      outlined init with copy of (NSAttributedStringKey, Any)(v15, v52, &_s9CryptoKit4P256O7SigningO9PublicKeyVSgMd, &_s9CryptoKit4P256O7SigningO9PublicKeyVSgMR);
      if ((*(v29 + 48))(v37, 1, v16) == 1)
      {
        v38 = 0xE300000000000000;
        v39 = 7104878;
      }

      else
      {
        v40 = *(v29 + 32);
        LODWORD(v48) = v34;
        v34 = v51;
        v40(v51, v37, v16);
        v31(v50, v34, v16);
        v39 = String.init<A>(reflecting:)();
        v38 = v41;
        v42 = v34;
        LOBYTE(v34) = v48;
        (*(v29 + 8))(v42, v33);
      }

      outlined destroy of (CFStringRef, [CFStringRef? : Any])(v15, &_s9CryptoKit4P256O7SigningO9PublicKeyVSgMd, &_s9CryptoKit4P256O7SigningO9PublicKeyVSgMR);
      (*(v29 + 8))(v53, v33);
      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v38, &v54);

      *(v36 + 4) = v43;
      _os_log_impl(&dword_231772000, v28, v34, "Failed to create SecKey from P256 publicKey %s", v36, 0xCu);
      v44 = v49;
      __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x2319361B0](v44, -1, -1);
      MEMORY[0x2319361B0](v36, -1, -1);
    }

    else
    {

      (*(v29 + 8))(v32, v16);
    }

    lazy protocol witness table accessor for type KeyQueryController.DiversificationErrors and conformance KeyQueryController.DiversificationErrors();
    swift_allocError();
    swift_willThrow();
  }

  return v28;
}

uint64_t KeyQueryController.signData(data:documentIdentifier:trackingPreventionSalt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[24] = a5;
  v6[25] = v5;
  v6[22] = a3;
  v6[23] = a4;
  v6[20] = a1;
  v6[21] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O7SigningO9PublicKeyV3key_10Foundation4DataV3tpstMd, &_s9CryptoKit4P256O7SigningO9PublicKeyV3key_10Foundation4DataV3tpstMR);
  v6[26] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O7SigningO9PublicKeyVSgMd, &_s9CryptoKit4P256O7SigningO9PublicKeyVSgMR) - 8) + 64) + 15;
  v6[29] = swift_task_alloc();
  v10 = swift_task_alloc();
  v6[30] = v10;
  v11 = *((*MEMORY[0x277D85000] & *v5) + 0xE0);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  v6[31] = v13;
  *v13 = v6;
  v13[1] = KeyQueryController.signData(data:documentIdentifier:trackingPreventionSalt:);

  return v15(v10);
}

uint64_t KeyQueryController.signData(data:documentIdentifier:trackingPreventionSalt:)()
{
  v2 = *(*v1 + 248);
  v5 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v3 = KeyQueryController.signData(data:documentIdentifier:trackingPreventionSalt:);
  }

  else
  {
    v3 = KeyQueryController.signData(data:documentIdentifier:trackingPreventionSalt:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v45 = v0;
  v1 = *(v0 + 232);
  outlined init with copy of (NSAttributedStringKey, Any)(*(v0 + 240), v1, &_s9CryptoKit4P256O7SigningO9PublicKeyVSgMd, &_s9CryptoKit4P256O7SigningO9PublicKeyVSgMR);
  v2 = type metadata accessor for P256.Signing.PublicKey();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 232);
    outlined destroy of (CFStringRef, [CFStringRef? : Any])(*(v0 + 240), &_s9CryptoKit4P256O7SigningO9PublicKeyVSgMd, &_s9CryptoKit4P256O7SigningO9PublicKeyVSgMR);
    v5 = v4;
LABEL_11:
    outlined destroy of (CFStringRef, [CFStringRef? : Any])(v5, &_s9CryptoKit4P256O7SigningO9PublicKeyVSgMd, &_s9CryptoKit4P256O7SigningO9PublicKeyVSgMR);
LABEL_12:
    v21 = *(v0 + 232);
    v20 = *(v0 + 240);
    v23 = *(v0 + 216);
    v22 = *(v0 + 224);

    v24 = *(v0 + 8);

    return v24(0, 0xF000000000000000);
  }

  v6 = *(v0 + 232);
  v7 = P256.Signing.PublicKey.secKey.getter();
  *(v0 + 264) = v7;
  v8 = *(v3 + 8);
  v8(v6, v2);
  if (!v7)
  {
    v5 = *(v0 + 240);
    goto LABEL_11;
  }

  v9 = *(v0 + 256);
  v10 = (*((*MEMORY[0x277D85000] & **(v0 + 200)) + 0xC8))(*(v0 + 224), v7, *(v0 + 184), *(v0 + 192), *(v0 + 168), *(v0 + 176));
  if (v9)
  {
    outlined destroy of (CFStringRef, [CFStringRef? : Any])(*(v0 + 240), &_s9CryptoKit4P256O7SigningO9PublicKeyVSgMd, &_s9CryptoKit4P256O7SigningO9PublicKeyVSgMR);

    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 176);
    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Log.default);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v17 = *(v0 + 168);
      v16 = *(v0 + 176);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v44 = v19;
      *v18 = 136315138;
      *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v16, &v44);
      _os_log_impl(&dword_231772000, v14, v15, "Error while signing data for document with identifier: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x2319361B0](v19, -1, -1);
      MEMORY[0x2319361B0](v18, -1, -1);
    }

    goto LABEL_12;
  }

  v27 = *(v0 + 216);
  v26 = *(v0 + 224);
  v28 = *(v0 + 208);
  v42 = *(v0 + 200);
  v30 = *(v0 + 168);
  v29 = *(v0 + 176);
  v43 = *(v0 + 160);
  v31 = (v26 + *(v28 + 48));
  *v31 = v10;
  v31[1] = v11;
  outlined init with copy of (NSAttributedStringKey, Any)(v26, v27, &_s9CryptoKit4P256O7SigningO9PublicKeyV3key_10Foundation4DataV3tpstMd, &_s9CryptoKit4P256O7SigningO9PublicKeyV3key_10Foundation4DataV3tpstMR);
  v32 = (v27 + *(v28 + 48));
  v33 = *v32;
  v34 = v32[1];
  v35 = objc_allocWithZone(MEMORY[0x277D18A38]);
  v36 = MEMORY[0x231934530](v30, v29);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v38 = [v35 initWithDiversifier:v36 trackingPreventionSecret:isa];
  *(v0 + 272) = v38;

  outlined consume of Data._Representation(v33, v34);
  v8(v27, v2);
  v39 = [objc_allocWithZone(MEMORY[0x277D18A40]) initWithKeyType:1 diversifier:v38];
  *(v0 + 280) = v39;
  v40 = *(v42 + OBJC_IVAR___SLKeyQueryController_idsService);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = KeyQueryController.signData(data:documentIdentifier:trackingPreventionSalt:);
  v41 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccy10Foundation4DataVs5Error_pGMd, &_sSccy10Foundation4DataVs5Error_pGMR);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSData?, @unowned NSError?) -> () with result type Data;
  *(v0 + 104) = &block_descriptor_2;
  *(v0 + 112) = v41;
  [v40 signData:v43 withAlgorithm:1 options:v39 completion:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 288) = v2;
  if (v2)
  {
    v3 = KeyQueryController.signData(data:documentIdentifier:trackingPreventionSalt:);
  }

  else
  {
    v3 = KeyQueryController.signData(data:documentIdentifier:trackingPreventionSalt:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[33];
  v4 = v0[30];
  v5 = v0[28];

  outlined destroy of (CFStringRef, [CFStringRef? : Any])(v5, &_s9CryptoKit4P256O7SigningO9PublicKeyV3key_10Foundation4DataV3tpstMd, &_s9CryptoKit4P256O7SigningO9PublicKeyV3key_10Foundation4DataV3tpstMR);
  outlined destroy of (CFStringRef, [CFStringRef? : Any])(v4, &_s9CryptoKit4P256O7SigningO9PublicKeyVSgMd, &_s9CryptoKit4P256O7SigningO9PublicKeyVSgMR);
  v7 = v0[18];
  v6 = v0[19];

  v9 = v0[29];
  v8 = v0[30];
  v11 = v0[27];
  v10 = v0[28];

  v12 = v0[1];

  return v12(v7, v6);
}

{
  v17 = v0;
  v1 = v0[32];
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v2 = v0[22];
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Log.default);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[21];
    v6 = v0[22];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v16);
    _os_log_impl(&dword_231772000, v4, v5, "Error while signing data for document with identifier: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x2319361B0](v9, -1, -1);
    MEMORY[0x2319361B0](v8, -1, -1);
  }

  v11 = v0[29];
  v10 = v0[30];
  v13 = v0[27];
  v12 = v0[28];

  v14 = v0[1];

  return v14(0, 0xF000000000000000);
}

{
  v23 = v0;
  v2 = v0[35];
  v1 = v0[36];
  v4 = v0[33];
  v3 = v0[34];
  v5 = v0[30];
  v6 = v0[28];
  swift_willThrow();

  outlined destroy of (CFStringRef, [CFStringRef? : Any])(v6, &_s9CryptoKit4P256O7SigningO9PublicKeyV3key_10Foundation4DataV3tpstMd, &_s9CryptoKit4P256O7SigningO9PublicKeyV3key_10Foundation4DataV3tpstMR);
  outlined destroy of (CFStringRef, [CFStringRef? : Any])(v5, &_s9CryptoKit4P256O7SigningO9PublicKeyVSgMd, &_s9CryptoKit4P256O7SigningO9PublicKeyVSgMR);

  v7 = v0[36];
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v8 = v0[22];
  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Log.default);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v13 = v0[21];
    v12 = v0[22];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v22 = v15;
    *v14 = 136315138;
    *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v12, &v22);
    _os_log_impl(&dword_231772000, v10, v11, "Error while signing data for document with identifier: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x2319361B0](v15, -1, -1);
    MEMORY[0x2319361B0](v14, -1, -1);
  }

  v17 = v0[29];
  v16 = v0[30];
  v19 = v0[27];
  v18 = v0[28];

  v20 = v0[1];

  return v20(0, 0xF000000000000000);
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSData?, @unowned NSError?) -> () with result type Data(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    v9 = a2;
    v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = *(*(v5 + 64) + 40);
    *v13 = v10;
    v13[1] = v12;

    return swift_continuation_throwingResume();
  }
}

uint64_t KeyQueryController.localPublicKey()(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](KeyQueryController.localPublicKey(), 0, 0);
}

{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 32);
  v7 = *v1;
  *(*v1 + 56) = a1;

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](KeyQueryController.localPublicKey(), 0, 0);
}

uint64_t KeyQueryController.localPublicKey()()
{
  v32 = v0;
  v31[1] = *MEMORY[0x277D85DE8];
  v1 = (*((*MEMORY[0x277D85000] & **(v0 + 24)) + 0x98))();
  if (v1)
  {
    if (v1[2])
    {
      v2 = v1[4];
      v3 = v1[5];
      *(v0 + 32) = v3;

      if (one-time initialization token for keyController != -1)
      {
        swift_once();
      }

      v4 = *(v0 + 24);
      v5 = type metadata accessor for Logger();
      *(v0 + 40) = v5;
      __swift_project_value_buffer(v5, static Log.keyController);

      v6 = v4;
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = *(v0 + 24);
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v31[0] = v11;
        *v10 = 136315394;
        *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2, v3, v31);
        *(v10 + 12) = 2080;
        *(v10 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v9 + OBJC_IVAR___SLKeyQueryController_service), *(v9 + OBJC_IVAR___SLKeyQueryController_service + 8), v31);
        _os_log_impl(&dword_231772000, v7, v8, "Querying for IDSEndpoints for handles %s on service: %s", v10, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2319361B0](v11, -1, -1);
        MEMORY[0x2319361B0](v10, -1, -1);
      }

      v12 = *(v0 + 24);
      v13 = *(v12 + OBJC_IVAR___SLKeyQueryController_queryController + 24);
      v14 = *(v12 + OBJC_IVAR___SLKeyQueryController_queryController + 32);
      __swift_project_boxed_opaque_existential_1((v12 + OBJC_IVAR___SLKeyQueryController_queryController), v13);
      v15 = *(v12 + OBJC_IVAR___SLKeyQueryController_service);
      v16 = *(v12 + OBJC_IVAR___SLKeyQueryController_service + 8);
      v17 = *(v12 + OBJC_IVAR___SLKeyQueryController_queue);
      v30 = (*(v14 + 8) + **(v14 + 8));
      v18 = *(*(v14 + 8) + 4);
      v19 = swift_task_alloc();
      *(v0 + 48) = v19;
      *v19 = v0;
      v19[1] = KeyQueryController.localPublicKey();
      v20 = *MEMORY[0x277D85DE8];

      return v30(v2, v3, v15, v16, v17, v13, v14);
    }
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Log.default);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_231772000, v23, v24, "KeyQueryController.localPublicKey() Could not get localHandle", v25, 2u);
    MEMORY[0x2319361B0](v25, -1, -1);
  }

  v26 = *(v0 + 16);

  v27 = type metadata accessor for P256.Signing.PublicKey();
  (*(*(v27 - 8) + 56))(v26, 1, 1, v27);
  v28 = *(v0 + 8);
  v29 = *MEMORY[0x277D85DE8];

  return v28();
}

{
  v57 = v0;
  v56 = *MEMORY[0x277D85DE8];
  v1 = specialized _arrayConditionalCast<A, B>(_:)(*(v0 + 56));

  if (!v1)
  {
    if (one-time initialization token for default != -1)
    {
      goto LABEL_87;
    }

    goto LABEL_67;
  }

  v50 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
    goto LABEL_78;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
LABEL_79:

    v42 = *(v0 + 16);
    v43 = type metadata accessor for P256.Signing.PublicKey();
    (*(*(v43 - 8) + 56))(v42, 1, 1, v43);
    goto LABEL_80;
  }

LABEL_4:
  v3 = 0;
  v47 = v0 + 64;
  v52 = *((*MEMORY[0x277D85000] & **(v0 + 24)) + 0x80);
  v53 = v1 & 0xC000000000000001;
  v48 = v1;
  v49 = v0;
  v51 = v2;
  while (1)
  {
    if (v53)
    {
      v4 = MEMORY[0x231934AB0](v3, v1);
      v5 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_74;
      }
    }

    else
    {
      if (v3 >= *(v50 + 16))
      {
        goto LABEL_75;
      }

      v4 = *(v1 + 8 * v3 + 32);
      v5 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        v2 = __CocoaSet.count.getter();
        if (!v2)
        {
          goto LABEL_79;
        }

        goto LABEL_4;
      }
    }

    v6 = *(v0 + 24);
    v54 = v4;
    v7 = [v4 pushToken];
    v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v11 = v52();
    v13 = v11;
    v14 = v12;
    v15 = v10 >> 62;
    v16 = v12 >> 62;
    if (v10 >> 62 == 3)
    {
      if (v8)
      {
        v17 = 0;
      }

      else
      {
        v17 = v10 == 0xC000000000000000;
      }

      v18 = 0;
      v19 = v17 && v12 >> 62 == 3;
      if (v19 && !v11 && v12 == 0xC000000000000000)
      {

        outlined consume of Data._Representation(0, 0xC000000000000000);
        v37 = 0;
        v38 = 0xC000000000000000;
        goto LABEL_72;
      }

LABEL_35:
      if (v16 > 1)
      {
        goto LABEL_29;
      }

      goto LABEL_36;
    }

    if (v15 <= 1)
    {
      break;
    }

    if (v15 == 2)
    {
      v25 = *(v8 + 16);
      v24 = *(v8 + 24);
      v22 = __OFSUB__(v24, v25);
      v18 = v24 - v25;
      if (v22)
      {
        goto LABEL_84;
      }

      goto LABEL_35;
    }

    v18 = 0;
    if (v16 > 1)
    {
LABEL_29:
      if (v16 != 2)
      {
        if (!v18)
        {
          goto LABEL_70;
        }

        goto LABEL_6;
      }

      v21 = *(v11 + 16);
      v20 = *(v11 + 24);
      v22 = __OFSUB__(v20, v21);
      v23 = v20 - v21;
      if (v22)
      {
        goto LABEL_77;
      }

      goto LABEL_38;
    }

LABEL_36:
    if (!v16)
    {
      v23 = BYTE6(v12);
LABEL_38:
      if (v18 == v23)
      {
        goto LABEL_42;
      }

      goto LABEL_6;
    }

    if (__OFSUB__(HIDWORD(v11), v11))
    {
      goto LABEL_76;
    }

    if (v18 == HIDWORD(v11) - v11)
    {
LABEL_42:
      if (v18 < 1)
      {
LABEL_70:

        outlined consume of Data._Representation(v13, v14);
        v37 = v8;
        v38 = v10;
LABEL_72:
        outlined consume of Data._Representation(v37, v38);
LABEL_73:
        v39 = *(v0 + 16);
        IDSEndpoint.applicationPublicDeviceKey.getter();
        v40 = *(v0 + 16);
        v41 = type metadata accessor for P256.Signing.PublicKey();
        (*(*(v41 - 8) + 56))(v40, 0, 1, v41);

        goto LABEL_80;
      }

      if (v15 > 1)
      {
        if (v15 != 2)
        {
          *(v0 + 84) = 0;
          *(v0 + 78) = 0;
          outlined copy of Data._Representation(v11, v12);
          v26 = v0 + 78;
          goto LABEL_64;
        }

        v28 = *(v8 + 16);
        v27 = *(v8 + 24);
        outlined copy of Data._Representation(v11, v12);
        v29 = __DataStorage._bytes.getter();
        if (v29)
        {
          v30 = __DataStorage._offset.getter();
          if (__OFSUB__(v28, v30))
          {
            __break(1u);
LABEL_89:
            __break(1u);
          }

          v29 += v28 - v30;
        }

        v22 = __OFSUB__(v27, v28);
        v0 = v27 - v28;
        if (v22)
        {
          goto LABEL_86;
        }
      }

      else
      {
        if (!v15)
        {
          *(v0 + 64) = v8;
          *(v0 + 72) = v10;
          *(v0 + 74) = BYTE2(v10);
          *(v0 + 75) = BYTE3(v10);
          *(v0 + 76) = BYTE4(v10);
          *(v0 + 77) = BYTE5(v10);
          outlined copy of Data._Representation(v11, v12);
          v26 = v47;
LABEL_64:
          closure #1 in static Data.== infix(_:_:)(v26, v13, v14, v55);
          outlined consume of Data._Representation(v13, v14);
          outlined consume of Data._Representation(v8, v10);
          outlined consume of Data._Representation(v13, v14);
          if (v55[0])
          {
LABEL_71:

            goto LABEL_73;
          }

LABEL_65:

          goto LABEL_7;
        }

        v0 = v8;
        if (v8 >> 32 < v8)
        {
          goto LABEL_85;
        }

        outlined copy of Data._Representation(v11, v12);
        v29 = __DataStorage._bytes.getter();
        if (v29)
        {
          v31 = __DataStorage._offset.getter();
          if (__OFSUB__(v8, v31))
          {
            goto LABEL_89;
          }

          v29 += v8 - v31;
        }
      }

      MEMORY[0x231933EB0]();
      closure #1 in static Data.== infix(_:_:)(v29, v13, v14, v55);
      outlined consume of Data._Representation(v13, v14);
      outlined consume of Data._Representation(v8, v10);
      outlined consume of Data._Representation(v13, v14);
      v1 = v48;
      v0 = v49;
      if (v55[0])
      {
        goto LABEL_71;
      }

      goto LABEL_65;
    }

LABEL_6:

    outlined consume of Data._Representation(v13, v14);
    outlined consume of Data._Representation(v8, v10);
LABEL_7:
    ++v3;
    if (v5 == v51)
    {
      goto LABEL_79;
    }
  }

  if (!v15)
  {
    v18 = BYTE6(v10);
    if (v16 > 1)
    {
      goto LABEL_29;
    }

    goto LABEL_36;
  }

  LODWORD(v18) = HIDWORD(v8) - v8;
  if (!__OFSUB__(HIDWORD(v8), v8))
  {
    v18 = v18;
    if (v16 > 1)
    {
      goto LABEL_29;
    }

    goto LABEL_36;
  }

  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  swift_once();
LABEL_67:
  __swift_project_value_buffer(*(v0 + 40), static Log.default);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_231772000, v32, v33, "KeyQueryController.localPublicKey() Could not get currentRemoteDevice", v34, 2u);
    MEMORY[0x2319361B0](v34, -1, -1);
  }

  v35 = *(v0 + 16);

  v36 = type metadata accessor for P256.Signing.PublicKey();
  (*(*(v36 - 8) + 56))(v35, 1, 1, v36);
LABEL_80:
  v44 = *(v0 + 8);
  v45 = *MEMORY[0x277D85DE8];

  return v44();
}

uint64_t specialized _arrayConditionalCast<A, B>(_:)(uint64_t a1)
{
  v7 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 40)
  {
    outlined init with copy of HighlightDisambiguationPillMetricVariant(i, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SocialLayer8Endpoint_pMd, &_s11SocialLayer8Endpoint_pMR);
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for IDSEndpoint, 0x277D189C0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v4 = *(v7 + 16);
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

void IDSEndpoint.applicationPublicDeviceKey.getter()
{
  v1 = [v0 applicationPublicDeviceIdentity];
  if (v1)
  {
    v2 = v1;
    SecKeyRef.p256PublicKey.getter();
  }

  else
  {
    if (one-time initialization token for keyController != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Log.keyController);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_231772000, v4, v5, "Failed to convert IDSEndpoint's publicIdentity to SecKey, this is a failing forward declare!", v6, 2u);
      MEMORY[0x2319361B0](v6, -1, -1);
    }

    lazy protocol witness table accessor for type KeyQueryController.DiversificationErrors and conformance KeyQueryController.DiversificationErrors();
    swift_allocError();
    swift_willThrow();
  }
}

uint64_t KeyQueryController.localPublicKey(using:trackingPreventionSalt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O7SigningO9PublicKeyVSgMd, &_s9CryptoKit4P256O7SigningO9PublicKeyVSgMR) - 8) + 64) + 15;
  v8 = swift_task_alloc();
  v6[8] = v8;
  v9 = type metadata accessor for P256.Signing.PublicKey();
  v6[9] = v9;
  v10 = *(v9 - 8);
  v6[10] = v10;
  v11 = *(v10 + 64) + 15;
  v6[11] = swift_task_alloc();
  v12 = *((*MEMORY[0x277D85000] & *v5) + 0xE0);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  v6[12] = v14;
  *v14 = v6;
  v14[1] = KeyQueryController.localPublicKey(using:trackingPreventionSalt:);

  return v16(v8);
}

uint64_t KeyQueryController.localPublicKey(using:trackingPreventionSalt:)()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = KeyQueryController.localPublicKey(using:trackingPreventionSalt:);
  }

  else
  {
    v3 = KeyQueryController.localPublicKey(using:trackingPreventionSalt:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of (CFStringRef, [CFStringRef? : Any])(v3, &_s9CryptoKit4P256O7SigningO9PublicKeyVSgMd, &_s9CryptoKit4P256O7SigningO9PublicKeyVSgMR);
    lazy protocol witness table accessor for type KeyQueryController.DiversificationErrors and conformance KeyQueryController.DiversificationErrors();
    swift_allocError();
    swift_willThrow();
LABEL_5:
    v14 = v0[11];
    v15 = v0[8];

    v16 = v0[1];

    return v16();
  }

  v4 = v0[11];
  v5 = v0[7];
  v23 = v0[6];
  v24 = v0[13];
  v7 = v0[4];
  v6 = v0[5];
  v8 = v0[2];
  v9 = v0[3];
  (*(v2 + 32))(v4, v3, v1);
  v11 = (*((*MEMORY[0x277D85000] & *v5) + 0xD0))(v8, v4, v6, v23, v9, v7);
  v12 = v0[10];
  v13 = v0[9];
  if (v24)
  {
    (*(v12 + 8))(v0[11], v0[9]);
    goto LABEL_5;
  }

  v18 = v0[8];
  v19 = v0[11];
  v20 = v10;
  v21 = v0[9];
  (*(v12 + 8))();

  v22 = v0[1];

  return v22(v11, v20);
}

{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[8];

  v4 = v0[1];

  return v4();
}

id KeyQueryController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id KeyQueryController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for KeyQueryController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Int KeyQueryController.DiversificationErrors.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x231934D10](0);
  return Hasher._finalize()();
}

uint64_t IDSIDQueryController.currentRemoteDevice(for:service:queue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  return MEMORY[0x2822009F8](IDSIDQueryController.currentRemoteDevice(for:service:queue:), 0, 0);
}

uint64_t IDSIDQueryController.currentRemoteDevice(for:service:queue:)()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = objc_opt_self();
  v4 = MEMORY[0x231934530](v1, v2);
  v5 = [v3 normalizedHandleWithDestinationID_];

  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = [v5 value];

  if (!v6)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = MEMORY[0x231934530](v7);
  }

  v8 = [v6 IDSFormattedDestinationID];

  if (v8)
  {
    v9 = *(v0 + 64);
    v10 = *(v0 + 40);
    v25 = *(v0 + 48);
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    *(v0 + 72) = v13;
    v14 = swift_task_alloc();
    *(v0 + 80) = v14;
    *(v14 + 16) = v9;
    *(v14 + 24) = v11;
    *(v14 + 32) = v13;
    *(v14 + 40) = v10;
    *(v14 + 48) = v25;
    v15 = *(MEMORY[0x277D859E0] + 4);
    v16 = swift_task_alloc();
    *(v0 + 88) = v16;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11SocialLayer8Endpoint_pGMd, &_sSay11SocialLayer8Endpoint_pGMR);
    *v16 = v0;
    v16[1] = IDSIDQueryController.currentRemoteDevice(for:service:queue:);

    return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0xD000000000000027, 0x8000000231846AF0, partial apply for closure #1 in IDSIDQueryController.currentRemoteDevice(for:service:queue:), v14, v17);
  }

  else
  {
LABEL_8:
    if (one-time initialization token for keyController != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Log.keyController);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_231772000, v19, v20, "Failed to format destination handle to IDS destinationID", v21, 2u);
      MEMORY[0x2319361B0](v21, -1, -1);
    }

    v22 = *(v0 + 8);
    v23 = MEMORY[0x277D84F90];

    return v22(v23);
  }
}

{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v5 = *v0;

  return MEMORY[0x2822009F8](IDSIDQueryController.currentRemoteDevice(for:service:queue:), 0, 0);
}

{
  return (*(v0 + 8))(*(v0 + 16));
}

void closure #1 in IDSIDQueryController.currentRemoteDevice(for:service:queue:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v40 = a2;
  v41 = a7;
  v36 = a6;
  v37 = a5;
  v38 = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay11SocialLayer8Endpoint_pGs5NeverOGMd, &_sScCySay11SocialLayer8Endpoint_pGs5NeverOGMR);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v36 - v15;
  v43 = MEMORY[0x231934530](a3, a4);
  v42 = MEMORY[0x231934530](a5, a6);
  v17 = [objc_opt_self() mainBundle];
  v39 = [v17 bundleIdentifier];

  (*(v13 + 16))(v16, a1, v12);
  v18 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v19 = (v14 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 23) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  (*(v13 + 32))(v22 + v18, v16, v12);
  v24 = v40;
  v23 = v41;
  *(v22 + v19) = v40;
  v25 = (v22 + v20);
  v26 = v37;
  *v25 = v38;
  v25[1] = a4;
  v27 = (v22 + v21);
  v28 = v36;
  *v27 = v26;
  v27[1] = v28;
  *(v22 + ((v21 + 23) & 0xFFFFFFFFFFFFFFF8)) = v23;
  aBlock[4] = partial apply for closure #1 in closure #1 in IDSIDQueryController.currentRemoteDevice(for:service:queue:);
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned IDSIDStatus) -> ();
  aBlock[3] = &block_descriptor_25;
  v29 = _Block_copy(aBlock);
  v30 = v24;

  v31 = v23;

  v32 = v30;
  v34 = v42;
  v33 = v43;
  v35 = v39;
  [v32 refreshIDStatusForDestination:v43 service:v42 listenerID:v39 queue:v31 completionBlock:v29];
  _Block_release(v29);
}

void closure #1 in closure #1 in IDSIDQueryController.currentRemoteDevice(for:service:queue:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = a3;
  v36 = a8;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay11SocialLayer8Endpoint_pGs5NeverOGMd, &_sScCySay11SocialLayer8Endpoint_pGs5NeverOGMR);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  if (a1 == 2)
  {
    if (one-time initialization token for keyController != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Log.keyController);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_231772000, v20, v21, "Failed to refresh IDSStatus, can't proceed", v22, 2u);
      MEMORY[0x2319361B0](v22, -1, -1);
    }

    aBlock[0] = MEMORY[0x277D84F90];
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    v34 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_23183D7E0;
    *(v23 + 56) = MEMORY[0x277D837D0];
    *(v23 + 32) = a4;
    *(v23 + 40) = a5;

    isa = Array._bridgeToObjectiveC()().super.isa;

    v32 = MEMORY[0x231934530](a6, a7);
    v24 = [objc_opt_self() mainBundle];
    v25 = [v24 bundleIdentifier];

    if (v25)
    {
      (*(v15 + 16))(v18, v34, v14);
      v26 = (*(v15 + 80) + 48) & ~*(v15 + 80);
      v27 = swift_allocObject();
      *(v27 + 2) = a6;
      *(v27 + 3) = a7;
      *(v27 + 4) = a4;
      *(v27 + 5) = a5;
      (*(v15 + 32))(&v27[v26], v18, v14);
      aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in IDSIDQueryController.currentRemoteDevice(for:service:queue:);
      aBlock[5] = v27;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed [AnyHashable : Any]?) -> ();
      aBlock[3] = &block_descriptor_31;
      v28 = _Block_copy(aBlock);

      v30 = v32;
      v29 = isa;
      [v35 currentRemoteDevicesForDestinations:isa service:v32 listenerID:v25 queue:v36 completionBlock:v28];
      _Block_release(v28);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t closure #1 in closure #1 in closure #1 in IDSIDQueryController.currentRemoteDevice(for:service:queue:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  if (one-time initialization token for keyController != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.keyController);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, v23);
    _os_log_impl(&dword_231772000, v11, v12, "Received IDSEndpoints on service: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x2319361B0](v14, -1, -1);
    MEMORY[0x2319361B0](v13, -1, -1);
  }

  if (!a1)
  {
    goto LABEL_12;
  }

  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v15 = specialized __RawDictionaryStorage.find<A>(_:)(v23), (v16 & 1) == 0))
  {
    outlined destroy of AnyHashable(v23);
LABEL_12:
    v24 = 0u;
    v25 = 0u;
    goto LABEL_13;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v15, &v24);
  outlined destroy of AnyHashable(v23);
  if (!*(&v25 + 1))
  {
LABEL_13:
    outlined destroy of (CFStringRef, [CFStringRef? : Any])(&v24, &_sypSgMd, &_sypSgMR);
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo11IDSEndpointCGMd, &_sSaySo11IDSEndpointCGMR);
  if (swift_dynamicCast())
  {
    v17 = specialized _arrayForceCast<A, B>(_:)(v23[0]);

    v23[0] = v17;
    goto LABEL_17;
  }

LABEL_14:

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v23[0] = v21;
    *v20 = 136315138;
    *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, v23);
    _os_log_impl(&dword_231772000, v18, v19, "Failed to find remoteDevices for destination %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x2319361B0](v21, -1, -1);
    MEMORY[0x2319361B0](v20, -1, -1);
  }

  v23[0] = MEMORY[0x277D84F90];
LABEL_17:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay11SocialLayer8Endpoint_pGs5NeverOGMd, &_sScCySay11SocialLayer8Endpoint_pGs5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

void *specialized _arrayForceCast<A, B>(_:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v17 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x231934AB0](v5, a1);
        v17 = v3;
        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
          v3 = v17;
        }

        ++v5;
        v15 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for IDSEndpoint, 0x277D189C0);
        v16 = &protocol witness table for IDSEndpoint;
        *&v14 = v6;
        *(v3 + 16) = v8 + 1;
        outlined init with take of Endpoint(&v14, v3 + 40 * v8 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v17 = v3;
        v12 = *(v3 + 16);
        v11 = *(v3 + 24);
        v13 = v10;
        if (v12 >= v11 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
          v3 = v17;
        }

        v15 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for IDSEndpoint, 0x277D189C0);
        v16 = &protocol witness table for IDSEndpoint;
        *&v14 = v13;
        *(v3 + 16) = v12 + 1;
        outlined init with take of Endpoint(&v14, v3 + 40 * v12 + 32);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned IDSIDStatus) -> ()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t protocol witness for EndpointQueryController.currentRemoteDevice(for:service:queue:) in conformance IDSIDQueryController(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *v5;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = protocol witness for EndpointQueryController.currentRemoteDevice(for:service:queue:) in conformance IDSIDQueryController;

  return IDSIDQueryController.currentRemoteDevice(for:service:queue:)(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for EndpointQueryController.currentRemoteDevice(for:service:queue:) in conformance IDSIDQueryController(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t closure #1 in static Data.== infix(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = MEMORY[0x231933EB0]();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = MEMORY[0x231933EB0]();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t specialized Data.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    outlined consume of Data._Representation(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  closure #1 in static Data.== infix(_:_:)(v14, a3, a4, &v13);
  v10 = v4;
  outlined consume of Data._Representation(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy11SocialLayer38CloudKitCollaborationInitiationRequestC8ResponseV9RecipientVGMd, &_ss23_ContiguousArrayStorageCy11SocialLayer38CloudKitCollaborationInitiationRequestC8ResponseV9RecipientVGMR, type metadata accessor for CloudKitCollaborationInitiationRequest.Response.Recipient);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9CryptoKit12SHA256DigestVGMd, &_ss23_ContiguousArrayStorageCy9CryptoKit12SHA256DigestVGMR, MEMORY[0x277CC5290]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9CryptoKit4P256O7SigningO9PublicKeyVGMd, &_ss23_ContiguousArrayStorageCy9CryptoKit4P256O7SigningO9PublicKeyVGMR, MEMORY[0x277CC54E8]);
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SocialLayer8Endpoint_pGMd, &_ss23_ContiguousArrayStorageCy11SocialLayer8Endpoint_pGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SocialLayer8Endpoint_pMd, &_s11SocialLayer8Endpoint_pMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  MEMORY[0x231933EB0]();
  closure #1 in static Data.== infix(_:_:)(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

void specialized KeyQueryController.init(service:targetQueue:queryController:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v26 = a3;
  v27 = a4;
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v24 = *(v8 - 8);
  v25 = v8;
  v9 = *(v24 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OS_dispatch_queue.Attributes();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v14 = type metadata accessor for DispatchQoS();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  *&v4[OBJC_IVAR___SLKeyQueryController____lazy_storage___pushTokenForSelf] = xmmword_23183D0D0;
  *&v4[OBJC_IVAR___SLKeyQueryController____lazy_storage___localAccountHandles] = 1;
  v16 = &v4[OBJC_IVAR___SLKeyQueryController_service];
  *v16 = a1;
  *(v16 + 1) = a2;
  v17 = objc_allocWithZone(MEMORY[0x277D18778]);

  v18 = MEMORY[0x231934530](a1, a2);
  v19 = [v17 initWithService_];

  if (v19)
  {

    *&v4[OBJC_IVAR___SLKeyQueryController_idsService] = v19;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v20 = v26;
    static DispatchQoS.unspecified.getter();
    v29 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v24 + 104))(v11, *MEMORY[0x277D85260], v25);
    *&v4[OBJC_IVAR___SLKeyQueryController_queue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v21 = v27;
    outlined init with copy of HighlightDisambiguationPillMetricVariant(v27, v5 + OBJC_IVAR___SLKeyQueryController_queryController);
    Controller = type metadata accessor for KeyQueryController();
    v28.receiver = v5;
    v28.super_class = Controller;
    objc_msgSendSuper2(&v28, sel_init);
    __swift_destroy_boxed_opaque_existential_0(v21);
  }

  else
  {
    __break(1u);
  }
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *v3;
  v8 = v7 + 32 + 40 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SocialLayer8Endpoint_pMd, &_s11SocialLayer8Endpoint_pMR);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_14;
  }

  result = v8 + 40 * a3;
  v13 = (v7 + 32 + 40 * a2);
  if (result != v13 || result >= v13 + 40 * v12)
  {
    result = memmove(result, v13, 40 * v12);
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v7 + 16) = v15;
LABEL_10:
  if (a3 > 0)
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KeyQueryController.DiversificationErrors and conformance KeyQueryController.DiversificationErrors()
{
  result = lazy protocol witness table cache variable for type KeyQueryController.DiversificationErrors and conformance KeyQueryController.DiversificationErrors;
  if (!lazy protocol witness table cache variable for type KeyQueryController.DiversificationErrors and conformance KeyQueryController.DiversificationErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KeyQueryController.DiversificationErrors and conformance KeyQueryController.DiversificationErrors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KeyQueryController.DiversificationErrors and conformance KeyQueryController.DiversificationErrors;
  if (!lazy protocol witness table cache variable for type KeyQueryController.DiversificationErrors and conformance KeyQueryController.DiversificationErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KeyQueryController.DiversificationErrors and conformance KeyQueryController.DiversificationErrors);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t dispatch thunk of EndpointQueryController.currentRemoteDevice(for:service:queue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(a7 + 8);
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v7 + 16) = v17;
  *v17 = v7;
  v17[1] = protocol witness for EndpointQueryController.currentRemoteDevice(for:service:queue:) in conformance IDSIDQueryController;

  return v19(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of KeyQueryController.publicKeysAndTPS(for:documentIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *((*MEMORY[0x277D85000] & *v4) + 0xB8);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = dispatch thunk of KeyQueryController.publicKeysAndTPS(for:documentIdentifier:);

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of KeyQueryController.publicKeysAndTPS(for:documentIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 16);
  v10 = *v3;

  v8 = *(v10 + 8);

  return v8(a1, a2, a3);
}

uint64_t dispatch thunk of KeyQueryController.signData(data:documentIdentifier:trackingPreventionSalt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *((*MEMORY[0x277D85000] & *v5) + 0xD8);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = dispatch thunk of KeyQueryController.signData(data:documentIdentifier:trackingPreventionSalt:);

  return v16(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of KeyQueryController.localPublicKey()(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0xE0);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of CollaborationInitiationRequest.initiateCollaboration();

  return v8(a1);
}

uint64_t dispatch thunk of KeyQueryController.localPublicKey(using:trackingPreventionSalt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *((*MEMORY[0x277D85000] & *v5) + 0xE8);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = dispatch thunk of KeyQueryController.localPublicKey(using:trackingPreventionSalt:);

  return v16(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of KeyQueryController.localPublicKey(using:trackingPreventionSalt:)(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

void partial apply for closure #1 in closure #1 in IDSIDQueryController.currentRemoteDevice(for:service:queue:)(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay11SocialLayer8Endpoint_pGs5NeverOGMd, &_sScCySay11SocialLayer8Endpoint_pGs5NeverOGMR) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + v6 + 8);
  v11 = *(v1 + v7);
  v12 = *(v1 + v7 + 8);
  v13 = *(v1 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8));

  closure #1 in closure #1 in IDSIDQueryController.currentRemoteDevice(for:service:queue:)(a1, v1 + v4, v8, v9, v10, v11, v12, v13);
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in IDSIDQueryController.currentRemoteDevice(for:service:queue:)(uint64_t a1)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay11SocialLayer8Endpoint_pGs5NeverOGMd, &_sScCySay11SocialLayer8Endpoint_pGs5NeverOGMR) - 8) + 80);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];

  return closure #1 in closure #1 in closure #1 in IDSIDQueryController.currentRemoteDevice(for:service:queue:)(a1, v4, v5, v6, v7);
}

uint64_t outlined init with take of Endpoint(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A];
  if (!lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A]);
  }

  return result;
}

void __swiftcall HeaderFallback.init(title:subtitle:image:)(SocialLayer::HeaderFallback *__return_ptr retstr, Swift::String title, Swift::String subtitle, UIImage_optional image)
{
  retstr->title = title;
  retstr->subtitle = subtitle;
  retstr->image.value.super.isa = image.value.super.isa;
}

uint64_t HeaderFallback.title.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t HeaderFallback.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t HeaderFallback.subtitle.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t HeaderFallback.subtitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void *HeaderFallback.image.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t HeaderFallback.imageView.getter()
{
  v1 = *(v0 + 4);
  v4 = *v0;
  v5 = *(v0 + 2);
  v6 = *(v0 + 3);
  v2 = HeaderFallback.isComplete.getter();
  if ((v2 & 1) == 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (!v1)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x28212FFE8](v2);
  }

  v2 = v1;

  return MEMORY[0x28212FFE8](v2);
}

BOOL HeaderFallback.isComplete.getter()
{
  if (!v0[4])
  {
    return 0;
  }

  v1 = v0[1];
  if (!((v1 & 0x2000000000000000) != 0 ? HIBYTE(v1) & 0xF : *v0 & 0xFFFFFFFFFFFFLL))
  {
    return 0;
  }

  v3 = v0[3];
  v4 = v0[2] & 0xFFFFFFFFFFFFLL;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(v3) & 0xF;
  }

  return v4 != 0;
}

uint64_t CollaborationAttributionViewRepresentable.fallback.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  *a1 = v1[1];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
  v6 = v5;
}

__n128 CollaborationAttributionViewRepresentable.init(highlight:fallback:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  *a3 = a1;
  *(a3 + 8) = result;
  *(a3 + 24) = v4;
  *(a3 + 40) = v5;
  return result;
}

void *CollaborationAttributionViewRepresentable.makeUIView(context:)()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = objc_allocWithZone(type metadata accessor for CollaborationAttributionView());
  v6 = v1;
  v7 = specialized CollaborationAttributionView.init(highlight:variant:)(v6, 0);

  LODWORD(v8) = 1132068864;
  [v7 setContentCompressionResistancePriority:0 forAxis:v8];
  [v7 setRemoteRenderingEnabled_];
  (*((*MEMORY[0x277D85000] & *v7) + 0x108))(1);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Log.default);
  v10 = v4;
  v11 = v6;

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v24 = v15;
    *v14 = 136315138;
    v16 = [v11 attributions];
    v17 = type metadata accessor for SLAttribution();
    v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v19 = MEMORY[0x231934700](v18, v17);
    v21 = v20;

    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v24);

    *(v14 + 4) = v22;
    _os_log_impl(&dword_231772000, v12, v13, "LTP: makeUIView called with highlight: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x2319361B0](v15, -1, -1);
    MEMORY[0x2319361B0](v14, -1, -1);
  }

  return v7;
}

uint64_t CollaborationAttributionViewRepresentable.updateUIView(_:context:)(void *a1)
{
  v2 = *v1;
  v3 = *((*MEMORY[0x277D85000] & *a1) + 0xC0);
  v4 = v2;
  return v3(v2);
}

uint64_t protocol witness for UIViewRepresentable.updateUIView(_:context:) in conformance CollaborationAttributionViewRepresentable(void *a1)
{
  v2 = *v1;
  v3 = *((*MEMORY[0x277D85000] & *a1) + 0xC0);
  v4 = v2;
  return v3(v2);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance CollaborationAttributionViewRepresentable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type CollaborationAttributionViewRepresentable and conformance CollaborationAttributionViewRepresentable();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance CollaborationAttributionViewRepresentable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type CollaborationAttributionViewRepresentable and conformance CollaborationAttributionViewRepresentable();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance CollaborationAttributionViewRepresentable()
{
  lazy protocol witness table accessor for type CollaborationAttributionViewRepresentable and conformance CollaborationAttributionViewRepresentable();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t lazy protocol witness table accessor for type CollaborationAttributionViewRepresentable and conformance CollaborationAttributionViewRepresentable()
{
  result = lazy protocol witness table cache variable for type CollaborationAttributionViewRepresentable and conformance CollaborationAttributionViewRepresentable;
  if (!lazy protocol witness table cache variable for type CollaborationAttributionViewRepresentable and conformance CollaborationAttributionViewRepresentable)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CollaborationAttributionViewRepresentable and conformance CollaborationAttributionViewRepresentable);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CollaborationAttributionViewRepresentable and conformance CollaborationAttributionViewRepresentable;
  if (!lazy protocol witness table cache variable for type CollaborationAttributionViewRepresentable and conformance CollaborationAttributionViewRepresentable)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CollaborationAttributionViewRepresentable and conformance CollaborationAttributionViewRepresentable);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for HeaderFallback(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for HeaderFallback(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CollaborationAttributionViewRepresentable(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for CollaborationAttributionViewRepresentable(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t >> prefix<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4[2] = a2;
  type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in >> prefix<A>(_:), v4, MEMORY[0x277D84A98], MEMORY[0x277D837D0], v2, v5);
  if (v5[1])
  {
    return v5[0];
  }

  else
  {
    return 7104878;
  }
}

uint64_t Logger.init<A>(subsystem:category:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  dispatch thunk of RawRepresentable.rawValue.getter();
  Logger.init(subsystem:category:)();
  return (*(*(a4 - 8) + 8))(a1, a4);
}

BOOL Subsystem.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Subsystem.init(rawValue:), v2);

  return v3 != 0;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Subsystem()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Subsystem()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Subsystem@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance Subsystem, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t one-time initialization function for personIdentityGenerator()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.personIdentityGenerator);
  __swift_project_value_buffer(v0, static Log.personIdentityGenerator);
  return Logger.init(subsystem:category:)();
}

uint64_t Log.default.unsafeMutableAddressor(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t one-time initialization function for keyController(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for collaborationRenderer()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.collaborationRenderer);
  __swift_project_value_buffer(v0, static Log.collaborationRenderer);
  return Logger.init(subsystem:category:)();
}

uint64_t static Log.keyController.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v29 = a5;
  v30 = a2;
  v32 = a4;
  v31 = a1;
  v28 = *(a3 - 8);
  v10 = *(v28 + 64);
  v11 = (MEMORY[0x28223BE20])();
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v11);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v24 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v6);
  v26 = 1;
  if ((*(v16 + 48))(v24, 1, v15) != 1)
  {
    (*(v16 + 32))(v20, v24, v15);
    v31(v20, v13);
    (*(v16 + 8))(v20, v15);
    if (v7)
    {
      return (*(v28 + 32))(v29, v13, a3);
    }

    v26 = 0;
  }

  return (*(*(v32 - 8) + 56))(a6, v26, 1);
}

uint64_t DefaultStringInterpolation.appendInterpolation<A>(_:)(uint64_t a1, uint64_t a2)
{
  v6[2] = a2;
  type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in DefaultStringInterpolation.appendInterpolation<A>(_:), v6, MEMORY[0x277D84A98], MEMORY[0x277D837D0], v2, &v7);
  if (v8)
  {
    v3 = v7;
  }

  else
  {
    v3 = 7104878;
  }

  if (v8)
  {
    v4 = v8;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  MEMORY[0x231934620](v3, v4);
}

uint64_t closure #1 in >> prefix<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v6 + 16))(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = String.init<A>(reflecting:)();
  *a3 = result;
  a3[1] = v8;
  return result;
}

unint64_t lazy protocol witness table accessor for type Subsystem and conformance Subsystem()
{
  result = lazy protocol witness table cache variable for type Subsystem and conformance Subsystem;
  if (!lazy protocol witness table cache variable for type Subsystem and conformance Subsystem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Subsystem and conformance Subsystem);
  }

  return result;
}

uint64_t _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(uint64_t a1, unint64_t a2)
{
  v44 = *MEMORY[0x277D85DE8];
  *&v41 = a1;
  *(&v41 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation15ContiguousBytes_pMd, &_s10Foundation15ContiguousBytes_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of Endpoint(__src, &v42);
    __swift_project_boxed_opaque_existential_1(&v42, v43);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    __src[0] = v41;
    __swift_destroy_boxed_opaque_existential_0(&v42);
    goto LABEL_63;
  }

  v40 = 0;
  memset(__src, 0, sizeof(__src));
  outlined destroy of (CFStringRef, [CFStringRef? : Any])(__src, &_s10Foundation15ContiguousBytes_pSgMd, &_s10Foundation15ContiguousBytes_pSgMR);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = _StringObject.sharedUTF8.getter();
  }

  closure #2 in Data.init<A>(_:)(v4, v5, &v42);
  v6 = *(&v42 + 1);
  v7 = v42;
  if (*(&v42 + 1) >> 60 != 15)
  {
    __src[0] = v42;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = specialized Data._Representation.init(count:)(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0]);
  v10 = specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(partial apply for specialized closure #3 in Data.init<A>(_:));
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        Data._Representation.replaceSubrange(_:with:count:)();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v41 + 7) = 0;
  *&v41 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = _StringGuts._slowEnsureMatchingEncoding(_:)(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = String.UTF8View._foreignCount()();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = String.UTF8View._foreignSubscript(position:)();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v42 = v14;
      *(&v42 + 1) = v38;
      v31 = *(&v42 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = _StringObject.sharedUTF8.getter();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = _StringGuts._slowEnsureMatchingEncoding(_:)(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = String.UTF8View._foreignIndex(after:)();
LABEL_52:
    *(&v41 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v42 = v41;
      *(&v42 + 6) = *(&v41 + 6);
      Data._Representation.append(contentsOf:)();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v42 = v41;
    *(&v42 + 6) = *(&v41 + 6);
    Data._Representation.append(contentsOf:)();
    outlined consume of Data?(v36, v35);
    goto LABEL_62;
  }

LABEL_57:

  outlined consume of Data?(v36, v6);
LABEL_63:
  v32 = __src[0];
  outlined copy of Data._Representation(*&__src[0], *(&__src[0] + 1));

  outlined consume of Data._Representation(v32, *(&v32 + 1));
  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

Swift::Int PersonIdentityGenerator.GenerationErrors.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x231934D10](a1 & 1);
  return Hasher._finalize()();
}

id PersonIdentityGenerator.init(queue:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = objc_allocWithZone(type metadata accessor for KeyQueryController());
  v4 = swift_getObjectType();
  v5 = objc_opt_self();
  v6 = a1;
  result = [v5 sharedInstance];
  if (result)
  {
    v8 = result;
    v13[3] = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for IDSIDQueryController, 0x277D18728);
    v13[4] = &protocol witness table for IDSIDQueryController;
    v13[0] = v8;
    v9 = (*(v4 + 176))(0xD00000000000001ELL, 0x8000000231846C50, v6, v13);
    swift_deallocPartialClassInstance();
    v10 = objc_allocWithZone(ObjectType);
    *&v10[OBJC_IVAR___SLPersonIdentityGenerator_queue] = v6;
    *&v10[OBJC_IVAR___SLPersonIdentityGenerator_keyQueryController] = v9;
    v12.receiver = v10;
    v12.super_class = ObjectType;
    v11 = objc_msgSendSuper2(&v12, sel_init);
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id PersonIdentityGenerator.__allocating_init(queue:keyQueryController:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR___SLPersonIdentityGenerator_queue] = a1;
  *&v5[OBJC_IVAR___SLPersonIdentityGenerator_keyQueryController] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id PersonIdentityGenerator.init(queue:keyQueryController:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR___SLPersonIdentityGenerator_queue] = a1;
  *&v2[OBJC_IVAR___SLPersonIdentityGenerator_keyQueryController] = a2;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t PersonIdentityGenerator.generatePersonIdentitiesForHandles(handles:documentIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  v5 = type metadata accessor for P256.Signing.PublicKey();
  v4[13] = v5;
  v6 = *(v5 - 8);
  v4[14] = v6;
  v7 = *(v6 + 64) + 15;
  v4[15] = swift_task_alloc();
  v8 = type metadata accessor for NodeIdentity(0);
  v4[16] = v8;
  v9 = *(v8 - 8);
  v4[17] = v9;
  v10 = *(v9 + 64) + 15;
  v4[18] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SHA256DigestVSgMd, &_s9CryptoKit12SHA256DigestVSgMR) - 8) + 64) + 15;
  v4[19] = swift_task_alloc();
  v12 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](PersonIdentityGenerator.generatePersonIdentitiesForHandles(handles:documentIdentifier:), 0, 0);
}

{
  v12 = *MEMORY[0x277D85DE8];
  v5 = *v4;
  v6 = *(*v4 + 200);
  v13 = *v4;
  v5[26] = a1;
  v5[27] = a2;
  v5[28] = a3;
  v5[29] = v3;

  if (v3)
  {
    v7 = v5[23];
    v8 = v5[7];

    v9 = PersonIdentityGenerator.generatePersonIdentitiesForHandles(handles:documentIdentifier:);
  }

  else
  {
    v9 = PersonIdentityGenerator.generatePersonIdentitiesForHandles(handles:documentIdentifier:);
  }

  v10 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t PersonIdentityGenerator.generatePersonIdentitiesForHandles(handles:documentIdentifier:)()
{
  v17 = *MEMORY[0x277D85DE8];
  v0[7] = MEMORY[0x277D84F98];
  v1 = v0[9];
  v2 = v1[2];
  v0[20] = v2;
  if (v2)
  {
    v3 = v1[4];
    v0[22] = v3;
    v4 = v1[5];
    v0[23] = v4;
    v0[24] = 1;

    v5 = swift_task_alloc();
    v0[25] = v5;
    *v5 = v0;
    v5[1] = PersonIdentityGenerator.generatePersonIdentitiesForHandles(handles:documentIdentifier:);
    v6 = v0[11];
    v7 = v0[12];
    v8 = v0[10];
    v9 = *MEMORY[0x277D85DE8];

    return PersonIdentityGenerator.paddedPublicKeys(for:using:alignment:)(v3, v4, v8, v6, 32);
  }

  else
  {
    v12 = v0[18];
    v11 = v0[19];
    v13 = v0[15];

    v14 = v0[1];
    v15 = *MEMORY[0x277D85DE8];
    v16 = MEMORY[0x277D84F98];

    return v14(v16);
  }
}

{
  v93 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 208);
  if (!v1)
  {
    v26 = *(v0 + 184);

LABEL_10:
    v27 = *(v0 + 192);
    v28 = *(v0 + 160);
    if (v27 != v28)
    {
      if (v27 < v28)
      {
        goto LABEL_12;
      }

      goto LABEL_37;
    }

    goto LABEL_33;
  }

  v3 = *(v0 + 216);
  v2 = *(v0 + 224);
  v4 = *(v0 + 208);

  outlined copy of Data._Representation(v3, v2);
  outlined consume of Data._Representation(v3, v2);
  v5 = *(v1 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v7 = *(v0 + 112);
    *(v0 + 64) = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
    v6 = *(v0 + 64);
    v8 = v1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v9 = *(v7 + 72);
    v10 = *(v7 + 16);
    do
    {
      v11 = *(v0 + 128);
      v12 = *(v0 + 112) + 16;
      v10(*(v0 + 144), v8, *(v0 + 104));
      swift_storeEnumTagMultiPayload();
      *(v0 + 64) = v6;
      v14 = *(v6 + 16);
      v13 = *(v6 + 24);
      if (v14 >= v13 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v13 > 1, v14 + 1, 1);
        v6 = *(v0 + 64);
      }

      v16 = *(v0 + 136);
      v15 = *(v0 + 144);
      *(v6 + 16) = v14 + 1;
      outlined init with take of NodeIdentity(v15, v6 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v14);
      v8 += v9;
      --v5;
    }

    while (v5);
  }

  v17 = *(v0 + 152);
  type metadata accessor for MerkleTree();
  swift_allocObject();
  v18 = MerkleTree.init(nodeIdentities:)(v6);
  (*(*v18 + 120))();
  v19 = type metadata accessor for SHA256Digest();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v17, 1, v19) == 1)
  {
    v22 = *(v0 + 216);
    v21 = *(v0 + 224);
    v23 = *(v0 + 208);
    v24 = *(v0 + 184);
    v25 = *(v0 + 152);

    outlined consume of (keys: [P256.Signing.PublicKey], tps: Data)?(v23, v22, v21);
    outlined destroy of (CFStringRef, [CFStringRef? : Any])(v25, &_s9CryptoKit12SHA256DigestVSgMd, &_s9CryptoKit12SHA256DigestVSgMR);
    goto LABEL_10;
  }

  v38 = *(v0 + 152);
  lazy protocol witness table accessor for type SHA256Digest and conformance SHA256Digest();
  v39 = Digest.makeIterator()();
  v41 = specialized _copySequenceToContiguousArray<A>(_:)(v39, v40);

  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  *(v0 + 40) = v42;
  *(v0 + 48) = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A]();
  *(v0 + 16) = v41;
  v43 = __swift_project_boxed_opaque_existential_1((v0 + 16), v42);
  v44 = *v43;
  v45 = *(*v43 + 16);
  if (!v45)
  {
    v90 = 0;
    v84 = *(v0 + 168);
    v52 = 0xC000000000000000;
LABEL_22:
    v89 = v52;
    goto LABEL_25;
  }

  if (v45 <= 0xE)
  {
    v53 = *(v0 + 168);
    *(v0 + 240) = 0;
    *(v0 + 246) = 0;
    *(v0 + 254) = v45;
    memcpy((v0 + 240), (v44 + 32), v45);
    v90 = *(v0 + 240);
    v52 = v53 & 0xF00000000000000 | *(v0 + 248) | ((*(v0 + 252) | (*(v0 + 254) << 16)) << 32);
    v84 = v52;
    goto LABEL_22;
  }

  v46 = type metadata accessor for __DataStorage();
  v47 = *(v46 + 48);
  v48 = *(v46 + 52);
  swift_allocObject();
  v49 = __DataStorage.init(bytes:length:)();
  v50 = v49;
  if (v45 >= 0x7FFFFFFF)
  {
    type metadata accessor for Data.RangeReference();
    v54 = swift_allocObject();
    *(v54 + 16) = 0;
    *(v54 + 24) = v45;
    v90 = v54;
    v51 = v50 | 0x8000000000000000;
  }

  else
  {
    v90 = v45 << 32;
    v51 = v49 | 0x4000000000000000;
  }

  v89 = v51;
  v84 = *(v0 + 168);
LABEL_25:
  v55 = *(v0 + 152);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  (*(v20 + 8))(v55, v19);
  v56 = *(v1 + 16);
  if (v56)
  {
    v57 = *(v0 + 112);
    v58 = v1 + ((*(v57 + 80) + 32) & ~*(v57 + 80));
    v91 = *(v57 + 72);
    v59 = *(v57 + 16);
    v60 = MEMORY[0x277D84F90];
    do
    {
      v62 = *(v0 + 112);
      v61 = *(v0 + 120);
      v63 = *(v0 + 104);
      v64 = v59(v61, v58, v63);
      v65 = MEMORY[0x2319343F0](v64);
      v67 = v66;
      (*(v62 + 8))(v61, v63);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v60 + 2) + 1, 1, v60);
      }

      v69 = *(v60 + 2);
      v68 = *(v60 + 3);
      if (v69 >= v68 >> 1)
      {
        v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v68 > 1), v69 + 1, 1, v60);
      }

      *(v60 + 2) = v69 + 1;
      v70 = &v60[16 * v69];
      *(v70 + 4) = v65;
      *(v70 + 5) = v67;
      v58 += v91;
      --v56;
    }

    while (v56);
  }

  v72 = *(v0 + 216);
  v71 = *(v0 + 224);
  v92 = *(v0 + 192);
  v86 = *(v0 + 184);
  v87 = *(v0 + 208);
  v85 = *(v0 + 176);
  v88 = *(v0 + 160);

  outlined copy of Data._Representation(v72, v71);

  v73 = objc_allocWithZone(MEMORY[0x277CDC6B0]);
  outlined copy of Data._Representation(v90, v89);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v75 = Array._bridgeToObjectiveC()().super.isa;

  v76 = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v72, v71);
  v77 = [v73 initWithRootHash:isa publicKeys:v75 trackingPreventionSalt:v76];

  outlined consume of Data._Representation(v90, v89);
  specialized Dictionary.subscript.setter(v77, v85, v86);
  outlined consume of (keys: [P256.Signing.PublicKey], tps: Data)?(v87, v72, v71);
  outlined consume of Data._Representation(v90, v89);

  if (v92 != v88)
  {
    v27 = *(v0 + 192);
    *(v0 + 168) = v84;
    if (v27 < *(v0 + 160))
    {
LABEL_12:
      v29 = *(v0 + 72) + 16 * v27;
      v30 = *(v29 + 32);
      *(v0 + 176) = v30;
      v31 = *(v29 + 40);
      *(v0 + 184) = v31;
      *(v0 + 192) = v27 + 1;
      if (!__OFADD__(v27, 1))
      {

        v32 = swift_task_alloc();
        *(v0 + 200) = v32;
        *v32 = v0;
        v32[1] = PersonIdentityGenerator.generatePersonIdentitiesForHandles(handles:documentIdentifier:);
        v33 = *(v0 + 88);
        v34 = *(v0 + 96);
        v35 = *(v0 + 80);
        v36 = *MEMORY[0x277D85DE8];

        return PersonIdentityGenerator.paddedPublicKeys(for:using:alignment:)(v30, v31, v35, v33, 32);
      }

LABEL_38:
      __break(1u);
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

LABEL_33:
  v79 = *(v0 + 144);
  v78 = *(v0 + 152);
  v80 = *(v0 + 120);
  v81 = *(v0 + 56);

  v82 = *(v0 + 8);
  v83 = *MEMORY[0x277D85DE8];

  return v82(v81);
}

{
  v23 = v0;
  v22[1] = *MEMORY[0x277D85DE8];
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = v0[9];
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Log.default);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[10];
    v6 = v0[11];
    v8 = v0[9];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22[0] = v10;
    *v9 = 136315394;
    v11 = MEMORY[0x231934700](v8, MEMORY[0x277D837D0]);
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v22);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    *(v9 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, v22);
    _os_log_impl(&dword_231772000, v4, v5, "Error while requesting public keys for handle: %s documentIdentifier: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2319361B0](v10, -1, -1);
    MEMORY[0x2319361B0](v9, -1, -1);
  }

  v14 = v0[29];
  v15 = v0[18];
  v16 = v0[19];
  v17 = v0[15];
  swift_willThrow();

  v18 = v0[1];
  v19 = v0[29];
  v20 = *MEMORY[0x277D85DE8];

  return v18();
}

uint64_t PersonIdentityGenerator.paddedPublicKeys(for:using:alignment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = type metadata accessor for P256.Signing.PrivateKey();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();
  v10 = type metadata accessor for P256.Signing.PublicKey();
  v6[11] = v10;
  v11 = *(v10 - 8);
  v6[12] = v11;
  v12 = *(v11 + 64) + 15;
  v6[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](PersonIdentityGenerator.paddedPublicKeys(for:using:alignment:), 0, 0);
}

uint64_t PersonIdentityGenerator.paddedPublicKeys(for:using:alignment:)()
{
  v1 = *((*MEMORY[0x277D85000] & **(v0[7] + OBJC_IVAR___SLPersonIdentityGenerator_keyQueryController)) + 0xB8);
  v9 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = PersonIdentityGenerator.paddedPublicKeys(for:using:alignment:);
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[2];
  v6 = v0[3];

  return v9(v7, v6, v4, v5);
}

{
  v1 = v0[15];
  if (v1)
  {
    v3 = v0[16];
    v2 = v0[17];
    v4 = v0[6];
    v5 = v0[15];

    outlined copy of Data._Representation(v3, v2);
    result = outlined consume of Data._Representation(v3, v2);
    if (!v4)
    {
      __break(1u);
      goto LABEL_25;
    }

    v7 = v0[6];
    v8 = *(v1 + 16) % v7;
    if (!v8)
    {
      goto LABEL_14;
    }

    v9 = v7 - v8;
    if (__OFSUB__(v7, v8))
    {
      __break(1u);
    }

    else if ((v9 & 0x8000000000000000) == 0)
    {
      if (v9)
      {
        v10 = v0[12];
        v11 = (v0[9] + 8);
        v3 = MEMORY[0x277D84F90];
        do
        {
          v12 = v0[13];
          v13 = v0[10];
          v14 = v0[8];
          v15 = MEMORY[0x2319343D0](1);
          MEMORY[0x2319343C0](v15);
          (*v11)(v13, v14);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
          }

          v17 = v3[2];
          v16 = v3[3];
          if (v17 >= v16 >> 1)
          {
            v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v16 > 1, v17 + 1, 1, v3);
          }

          v18 = v0[13];
          v19 = v0[11];
          v3[2] = v17 + 1;
          (*(v10 + 32))(v3 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v17, v18, v19);
          --v9;
        }

        while (v9);
LABEL_15:
        if (one-time initialization token for personIdentityGenerator == -1)
        {
LABEL_16:
          v20 = type metadata accessor for Logger();
          __swift_project_value_buffer(v20, static Log.personIdentityGenerator);

          v21 = Logger.logObject.getter();
          v22 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v21, v22))
          {
            v23 = swift_slowAlloc();
            *v23 = 134217984;
            *(v23 + 4) = v3[2];

            _os_log_impl(&dword_231772000, v21, v22, "Added %ld anonymous keys", v23, 0xCu);
            MEMORY[0x2319361B0](v23, -1, -1);
          }

          else
          {
          }

          specialized Array.append<A>(contentsOf:)(v3);

          v24 = v1;
          v25 = v0[16];
          v1 = v0[17];
          goto LABEL_21;
        }

LABEL_25:
        swift_once();
        goto LABEL_16;
      }

LABEL_14:
      v3 = MEMORY[0x277D84F90];
      goto LABEL_15;
    }

    __break(1u);
    return result;
  }

  v24 = 0;
  v25 = 0;
LABEL_21:
  v26 = v0[13];
  v27 = v0[10];

  v28 = v0[1];

  return v28(v24, v25, v1);
}

uint64_t PersonIdentityGenerator.paddedPublicKeys(for:using:alignment:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 112);
  v7 = *v4;
  v5[15] = a1;
  v5[16] = a2;
  v5[17] = a3;

  if (v3)
  {
    v8 = v5[13];
    v9 = v5[10];

    v10 = *(v7 + 8);

    return v10();
  }

  else
  {

    return MEMORY[0x2822009F8](PersonIdentityGenerator.paddedPublicKeys(for:using:alignment:), 0, 0);
  }
}

uint64_t Digest.data.getter()
{
  v0 = Digest.bytes.getter();
  v1 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(v0);

  return v1;
}

uint64_t @objc closure #1 in PersonIdentityGenerator.generatePersonIdentitiesForHandles(handles:documentIdentifier:)(int a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v4[4] = v6;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v4[5] = v8;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = @objc closure #1 in PersonIdentityGenerator.generatePersonIdentitiesForHandles(handles:documentIdentifier:);

  return PersonIdentityGenerator.generatePersonIdentitiesForHandles(handles:documentIdentifier:)(v6, v7, v9);
}

uint64_t @objc closure #1 in PersonIdentityGenerator.generatePersonIdentitiesForHandles(handles:documentIdentifier:)()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 16);
  v8 = *v1;

  if (v2)
  {
    v9 = _convertErrorToNSError(_:)();

    v10 = v9;
    v11 = 0;
  }

  else
  {
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SWPersonIdentity, 0x277CDC6B0);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v11 = isa;
    v10 = 0;
    v9 = isa;
  }

  v13 = *(v3 + 24);
  (v13)[2](v13, v11, v10);

  _Block_release(v13);
  v14 = *(v8 + 8);

  return v14();
}

uint64_t PersonIdentityGenerator.generateLocalIdentity(documentIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](PersonIdentityGenerator.generateLocalIdentity(documentIdentifier:), 0, 0);
}

uint64_t PersonIdentityGenerator.generateLocalIdentity(documentIdentifier:)()
{
  v1 = (*((*MEMORY[0x277D85000] & **(v0[4] + OBJC_IVAR___SLPersonIdentityGenerator_keyQueryController)) + 0x98))();
  v0[5] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    v0[6] = v3;
    *v3 = v0;
    v3[1] = PersonIdentityGenerator.generateLocalIdentity(documentIdentifier:);
    v4 = v0[3];
    v5 = v0[4];
    v6 = v0[2];

    return PersonIdentityGenerator.generatePersonIdentitiesForHandles(handles:documentIdentifier:)(v2, v6, v4);
  }

  else
  {
    v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So16SWPersonIdentityCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v9 = v0[1];

    return v9(v8);
  }
}

{
  v1 = v0[5];

  v2 = v0[8];
  v3 = v0[1];

  return v3(v2);
}

{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t PersonIdentityGenerator.generateLocalIdentity(documentIdentifier:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v7 = PersonIdentityGenerator.generateLocalIdentity(documentIdentifier:);
  }

  else
  {
    *(v4 + 64) = a1;
    v7 = PersonIdentityGenerator.generateLocalIdentity(documentIdentifier:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t @objc closure #1 in PersonIdentityGenerator.generateLocalIdentity(documentIdentifier:)(int a1, void *aBlock, void *a3)
{
  v3[4] = a3;
  v3[5] = _Block_copy(aBlock);
  v3[2] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3[3] = v5;
  v3[6] = v5;
  v6 = a3;

  return MEMORY[0x2822009F8](@objc closure #1 in PersonIdentityGenerator.generateLocalIdentity(documentIdentifier:), 0, 0);
}

uint64_t @objc closure #1 in PersonIdentityGenerator.generateLocalIdentity(documentIdentifier:)()
{
  v1 = (*((*MEMORY[0x277D85000] & **(v0[4] + OBJC_IVAR___SLPersonIdentityGenerator_keyQueryController)) + 0x98))();
  v0[7] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = v0[2];
    v4 = swift_task_alloc();
    v0[8] = v4;
    *v4 = v0;
    v4[1] = @objc closure #1 in PersonIdentityGenerator.generateLocalIdentity(documentIdentifier:);
    v5 = v0[6];
    v6 = v0[4];

    return PersonIdentityGenerator.generatePersonIdentitiesForHandles(handles:documentIdentifier:)(v2, v3, v5);
  }

  else
  {
    v8 = v0[6];
    v9 = v0[4];

    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So16SWPersonIdentityCTt0g5Tf4g_n(MEMORY[0x277D84F90]);

    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SWPersonIdentity, 0x277CDC6B0);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v11 = v0[5];
    (v11)[2](v11, isa, 0);

    _Block_release(v11);
    v12 = v0[1];

    return v12();
  }
}

{

  v1 = *(v0 + 80);
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SWPersonIdentity, 0x277CDC6B0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v3 = *(v0 + 40);
  (v3)[2](v3, isa, 0);

  _Block_release(v3);
  v4 = *(v0 + 8);

  return v4();
}

{
  v1 = *(v0 + 72);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);

  v4 = _convertErrorToNSError(_:)();

  v5 = *(v0 + 40);
  (v5)[2](v5, 0, v4);

  _Block_release(v5);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t @objc closure #1 in PersonIdentityGenerator.generateLocalIdentity(documentIdentifier:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = @objc closure #1 in PersonIdentityGenerator.generateLocalIdentity(documentIdentifier:);
  }

  else
  {
    v8 = v4[6];
    v9 = v4[7];

    v4[10] = a1;
    v7 = @objc closure #1 in PersonIdentityGenerator.generateLocalIdentity(documentIdentifier:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t PersonIdentityGenerator.generateProofForIdentity(_:documentIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v4[32] = a3;
  v4[33] = v3;
  v4[30] = a1;
  v4[31] = a2;
  v5 = type metadata accessor for SHA256Digest();
  v4[34] = v5;
  v6 = *(v5 - 8);
  v4[35] = v6;
  v7 = *(v6 + 64) + 15;
  v4[36] = swift_task_alloc();
  v8 = type metadata accessor for NodeIdentity(0);
  v4[37] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v4[38] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O7SigningO9PublicKeyV3key_10Foundation4DataV3tpstMd, &_s9CryptoKit4P256O7SigningO9PublicKeyV3key_10Foundation4DataV3tpstMR);
  v4[39] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SHA256DigestVSgMd, &_s9CryptoKit12SHA256DigestVSgMR) - 8) + 64) + 15;
  v4[43] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O7SigningO9PublicKeyVSgMd, &_s9CryptoKit4P256O7SigningO9PublicKeyVSgMR) - 8) + 64) + 15;
  v4[44] = swift_task_alloc();
  v14 = type metadata accessor for P256.Signing.PublicKey();
  v4[45] = v14;
  v15 = *(v14 - 8);
  v4[46] = v15;
  v16 = *(v15 + 64) + 15;
  v4[47] = swift_task_alloc();
  v4[48] = swift_task_alloc();
  v17 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](PersonIdentityGenerator.generateProofForIdentity(_:documentIdentifier:), 0, 0);
}

uint64_t PersonIdentityGenerator.generateProofForIdentity(_:documentIdentifier:)()
{
  v134 = v0;
  v133[1] = *MEMORY[0x277D85DE8];
  v1 = v0[30];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v127 = v0;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23183D0C0;
  v3 = *MEMORY[0x277CDC028];
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v4;
  v5 = *MEMORY[0x277CDC040];
  type metadata accessor for CFStringRef(0);
  v7 = v6;
  *(inited + 72) = v6;
  *(inited + 48) = v5;
  v8 = *MEMORY[0x277CDBFE0];
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v9;
  v10 = *MEMORY[0x277CDC000];
  *(inited + 120) = v7;
  *(inited + 96) = v10;
  v11 = v5;
  v12 = v10;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  v13 = [v1 publicKeys];
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v16 = 0;
  v129 = MEMORY[0x277D84F90];
  v133[0] = MEMORY[0x277D84F90];
  v17 = *(v14 + 16);
  v18 = v14 + 40;
LABEL_2:
  v19 = (v18 + 16 * v16);
  while (1)
  {
    if (v17 == v16)
    {

      v15 = v129;
      if (v129 >> 62)
      {
        goto LABEL_34;
      }

      v27 = *((v129 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v28 = v127;
      if (v27)
      {
        goto LABEL_11;
      }

      goto LABEL_35;
    }

    if (v16 >= *(v14 + 16))
    {
      break;
    }

    v20 = v19 + 2;
    ++v16;
    v22 = *(v19 - 1);
    v21 = *v19;
    outlined copy of Data._Representation(v22, *v19);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v24 = Dictionary._bridgeToObjectiveC()().super.isa;
    v25 = SecKeyCreateWithData(isa, v24, 0);

    v15 = outlined consume of Data._Representation(v22, v21);
    v19 = v20;
    if (v25)
    {
      MEMORY[0x2319346D0](v15);
      if (*((v133[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v133[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v26 = *((v133[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v15 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v129 = v133[0];
      v18 = v14 + 40;
      goto LABEL_2;
    }
  }

  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v60 = v15;
    v27 = __CocoaSet.count.getter();
    v15 = v60;
    v28 = v127;
    if (!v27)
    {
      break;
    }

LABEL_11:
    v29 = 0;
    v30 = v28[46];
    v125 = v15 & 0xFFFFFFFFFFFFFF8;
    v126 = v15 & 0xC000000000000001;
    v123 = v30;
    v124 = (v30 + 56);
    v31 = (v30 + 48);
    v32 = (v30 + 32);
    v131 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v126)
      {
        v15 = MEMORY[0x231934AB0](v29, v15);
      }

      else
      {
        if (v29 >= *(v125 + 16))
        {
          goto LABEL_33;
        }

        v15 = *(v15 + 8 * v29 + 32);
      }

      v33 = v15;
      v34 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      v35 = SecKeyCopyExternalRepresentation(v15, 0);
      if (!v35)
      {
        if (one-time initialization token for default != -1)
        {
          swift_once();
        }

        v50 = type metadata accessor for Logger();
        __swift_project_value_buffer(v50, static Log.default);
        v51 = v33;
        v52 = Logger.logObject.getter();
        v53 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          v133[0] = v55;
          *v54 = 136315138;
          v28[29] = v51;
          type metadata accessor for SecKeyRef(0);
          v56 = v51;
          v57 = String.init<A>(reflecting:)();
          v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v58, v133);

          *(v54 + 4) = v59;
          _os_log_impl(&dword_231772000, v52, v53, "Failed to create external representation of current SecKey %s", v54, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v55);
          MEMORY[0x2319361B0](v55, -1, -1);
          MEMORY[0x2319361B0](v54, -1, -1);
        }

        lazy protocol witness table accessor for type SecKeyRef.SecKeyConversionErrors and conformance SecKeyRef.SecKeyConversionErrors();
        v128 = swift_allocError();
        swift_willThrow();

        goto LABEL_49;
      }

      v36 = v35;
      v37 = v28[44];
      v28[26] = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v28[27] = v38;
      P256.Signing.PublicKey.init<A>(x963Representation:)();
      v40 = v28[44];
      v39 = v28[45];

      (*v124)(v40, 0, 1, v39);
      if ((*v31)(v40, 1, v39) == 1)
      {
        outlined destroy of (CFStringRef, [CFStringRef? : Any])(v28[44], &_s9CryptoKit4P256O7SigningO9PublicKeyVSgMd, &_s9CryptoKit4P256O7SigningO9PublicKeyVSgMR);
      }

      else
      {
        v42 = v28[47];
        v41 = v28[48];
        v43 = v28[44];
        v44 = v28[45];
        v45 = *v32;
        (*v32)(v41, v43, v44);
        v45(v42, v41, v44);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v131 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v131[2] + 1, 1, v131);
        }

        v47 = v131[2];
        v46 = v131[3];
        if (v47 >= v46 >> 1)
        {
          v131 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v46 > 1, v47 + 1, 1, v131);
        }

        v48 = v127[47];
        v49 = v127[45];
        v131[2] = v47 + 1;
        v45(v131 + ((*(v123 + 80) + 32) & ~*(v123 + 80)) + *(v123 + 72) * v47, v48, v49);
        v28 = v127;
      }

      ++v29;
      v15 = v129;
      if (v34 == v27)
      {
        goto LABEL_36;
      }
    }
  }

LABEL_35:
  v131 = MEMORY[0x277D84F90];
LABEL_36:
  v61 = v28[43];
  v62 = v127[35];
  v63 = v127[34];

  v64 = specialized PersonIdentityGenerator.merkleTreeForPublicKeys(_:)(v131);
  v127[49] = v64;

  (*(*v64 + 120))(v65);
  v66 = (*(v62 + 48))(v61, 1, v63);
  v28 = v127;
  v67 = v127[43];
  if (v66 == 1)
  {
    outlined destroy of (CFStringRef, [CFStringRef? : Any])(v127[43], &_s9CryptoKit12SHA256DigestVSgMd, &_s9CryptoKit12SHA256DigestVSgMR);
    v68 = 0;
    v69 = 0xF000000000000000;
  }

  else
  {
    v70 = v127[35];
    v71 = v127[34];
    lazy protocol witness table accessor for type SHA256Digest and conformance SHA256Digest();
    v72 = Digest.makeIterator()();
    v74 = specialized _copySequenceToContiguousArray<A>(_:)(v72, v73);

    v68 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(v74);
    v69 = v75;

    (*(v70 + 8))(v67, v71);
    v28 = v127;
  }

  v76 = [v28[30] rootHash];
  v77 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v79 = v78;

  if (v69 >> 60 == 15)
  {
    if (v79 >> 60 == 15)
    {
      outlined consume of Data?(v68, v69);
LABEL_57:
      v110 = *(v28[33] + OBJC_IVAR___SLPersonIdentityGenerator_keyQueryController);
      v111 = [v28[30] trackingPreventionSalt];
      if (v111)
      {
        v112 = v111;
        v113 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v115 = v114;
      }

      else
      {
        v113 = 0;
        v115 = 0xF000000000000000;
      }

      v28[50] = v113;
      v28[51] = v115;
      v116 = *((*MEMORY[0x277D85000] & *v110) + 0xE8);
      v130 = (v116 + *v116);
      v117 = v116[1];
      v118 = swift_task_alloc();
      v28[52] = v118;
      *v118 = v28;
      v118[1] = PersonIdentityGenerator.generateProofForIdentity(_:documentIdentifier:);
      v119 = v28[42];
      v120 = v28[31];
      v121 = v28[32];
      v122 = *MEMORY[0x277D85DE8];

      return v130(v119, v120, v121, v113, v115);
    }

    goto LABEL_43;
  }

  if (v79 >> 60 == 15)
  {
LABEL_43:
    outlined consume of Data?(v68, v69);
    outlined consume of Data?(v77, v79);
    goto LABEL_44;
  }

  outlined copy of Data?(v68, v69);
  outlined copy of Data._Representation(v77, v79);
  v109 = specialized static Data.== infix(_:_:)(v68, v69, v77, v79);
  outlined consume of Data?(v77, v79);
  outlined consume of Data._Representation(v77, v79);
  outlined consume of Data?(v68, v69);
  outlined consume of Data?(v68, v69);
  if (v109)
  {
    goto LABEL_57;
  }

LABEL_44:
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v80 = type metadata accessor for Logger();
  __swift_project_value_buffer(v80, static Log.default);
  v81 = Logger.logObject.getter();
  v82 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    *v83 = 0;
    _os_log_impl(&dword_231772000, v81, v82, "PersonIdentityGenerator: Root hash of given identity did not match the root hash of the tree generated by the identity.", v83, 2u);
    MEMORY[0x2319361B0](v83, -1, -1);
  }

  lazy protocol witness table accessor for type PersonIdentityGenerator.GenerationErrors and conformance PersonIdentityGenerator.GenerationErrors();
  v84 = swift_allocError();
  *v85 = 1;
  v128 = v84;
  swift_willThrow();

LABEL_49:
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v86 = type metadata accessor for Logger();
  __swift_project_value_buffer(v86, static Log.default);
  v87 = v128;
  v88 = Logger.logObject.getter();
  v89 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v133[0] = v91;
    *v90 = 136315138;
    swift_getErrorValue();
    v93 = v28[23];
    v92 = v28[24];
    v94 = v28[25];
    v95 = Error.localizedDescription.getter();
    v97 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v95, v96, v133);

    *(v90 + 4) = v97;
    _os_log_impl(&dword_231772000, v88, v89, "PersonIdentityGenerator: Error while generating identity proof: %s", v90, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v91);
    MEMORY[0x2319361B0](v91, -1, -1);
    MEMORY[0x2319361B0](v90, -1, -1);
  }

  v99 = v28[47];
  v98 = v28[48];
  v101 = v28[43];
  v100 = v28[44];
  v103 = v28[41];
  v102 = v28[42];
  v104 = v28[40];
  v105 = v28[38];
  v132 = v28[36];
  swift_willThrow();

  v106 = v28[1];
  v107 = *MEMORY[0x277D85DE8];

  return v106();
}

{
  v109 = v0;
  v108 = *MEMORY[0x277D85DE8];
  v1 = v0[22].i64[1];
  v2 = v0[23].i64[0];
  v4 = v0[20].i64[1];
  v3 = v0[21].i64[0];
  v5 = v0[19].i64[1];
  *(v3 + v0[28].i32[0]) = vextq_s8(v0[27], v0[27], 8uLL);
  outlined init with copy of (NSAttributedStringKey, Any)(v3, v4, &_s9CryptoKit4P256O7SigningO9PublicKeyV3key_10Foundation4DataV3tpstMd, &_s9CryptoKit4P256O7SigningO9PublicKeyV3key_10Foundation4DataV3tpstMR);
  outlined consume of Data._Representation(*(v4 + *(v5 + 48)), *(v4 + *(v5 + 48) + 8));
  v6 = P256.Signing.PublicKey.secKeyData.getter();
  v8 = v7;
  (*(v2 + 8))(v4, v1);
  if (v8 >> 60 == 15)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Log.default);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_231772000, v10, v11, "PersonIdentityGenerator: Could not generate local key data", v12, 2u);
      MEMORY[0x2319361B0](v12, -1, -1);
    }

    v13 = v0[24].i64[1];
    v14 = v0[21].i64[0];

    lazy protocol witness table accessor for type PersonIdentityGenerator.GenerationErrors and conformance PersonIdentityGenerator.GenerationErrors();
    v15 = swift_allocError();
    *v16 = 0;
    swift_willThrow();

    goto LABEL_19;
  }

  v96 = v6;
  v17 = v0[24].i64[1];
  v18 = v0[22].i64[1];
  v19 = v0[23].i64[0];
  v21 = v0[19].i64[1];
  v20 = v0[20].i64[0];
  v23 = v0[18].i64[1];
  v22 = v0[19].i64[0];
  outlined init with copy of (NSAttributedStringKey, Any)(v0[21].i64[0], v20, &_s9CryptoKit4P256O7SigningO9PublicKeyV3key_10Foundation4DataV3tpstMd, &_s9CryptoKit4P256O7SigningO9PublicKeyV3key_10Foundation4DataV3tpstMR);
  outlined consume of Data._Representation(*(v20 + *(v21 + 48)), *(v20 + *(v21 + 48) + 8));
  (*(v19 + 32))(v22, v20, v18);
  swift_storeEnumTagMultiPayload();
  v24 = (*(*v17 + 136))(v22);
  if (!v24)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static Log.default);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v28, v29))
    {
      goto LABEL_18;
    }

    v30 = swift_slowAlloc();
    *v30 = 0;
    v31 = "PersonIdentityGenerator: Could not get inclusionNodes to generate the identity proof";
    goto LABEL_17;
  }

  if (v26)
  {

    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Log.default);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v28, v29))
    {
      goto LABEL_18;
    }

    v30 = swift_slowAlloc();
    *v30 = 0;
    v31 = "PersonIdentityGenerator: Could not get localKeyIndex to generate the identity proof";
LABEL_17:
    _os_log_impl(&dword_231772000, v28, v29, v31, v30, 2u);
    MEMORY[0x2319361B0](v30, -1, -1);
LABEL_18:
    v33 = v0[24].i64[1];
    v14 = v0[21].i64[0];
    v34 = v0[19].i64[0];

    lazy protocol witness table accessor for type PersonIdentityGenerator.GenerationErrors and conformance PersonIdentityGenerator.GenerationErrors();
    v15 = swift_allocError();
    *v35 = 1;
    swift_willThrow();
    outlined consume of Data?(v96, v8);

    outlined destroy of NodeIdentity(v34);
LABEL_19:
    outlined destroy of (CFStringRef, [CFStringRef? : Any])(v14, &_s9CryptoKit4P256O7SigningO9PublicKeyV3key_10Foundation4DataV3tpstMd, &_s9CryptoKit4P256O7SigningO9PublicKeyV3key_10Foundation4DataV3tpstMR);
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, static Log.default);
    v37 = v15;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *__dst = v41;
      *v40 = 136315138;
      swift_getErrorValue();
      v43 = v0[11].i64[1];
      v42 = v0[12].i64[0];
      v44 = v0[12].i64[1];
      v45 = Error.localizedDescription.getter();
      v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, __dst);

      *(v40 + 4) = v47;
      _os_log_impl(&dword_231772000, v38, v39, "PersonIdentityGenerator: Error while generating identity proof: %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x2319361B0](v41, -1, -1);
      MEMORY[0x2319361B0](v40, -1, -1);
    }

    v48 = v0[23].i64[1];
    v49 = v0[24].i64[0];
    v51 = v0[21].i64[1];
    v50 = v0[22].i64[0];
    v53 = v0[20].i64[1];
    v52 = v0[21].i64[0];
    v54 = v0[20].i64[0];
    v101 = v0[19].i64[0];
    v104 = v0[18].i64[0];
    swift_willThrow();

    v55 = v0->i64[1];
    v56 = *MEMORY[0x277D85DE8];

    return v55();
  }

  v94 = v8;
  v95 = v25;
  v58 = *(v24 + 16);
  if (v58)
  {
    v59 = v0[17].i64[1];
    v60 = *(v59 + 16);
    v59 += 16;
    v61 = v24 + ((*(v59 + 64) + 32) & ~*(v59 + 64));
    v99 = *(v59 + 56);
    v102 = v60;
    v62 = MEMORY[0x277D84F90];
    v63 = (v59 - 8);
    do
    {
      v102(v0[18].i64[0], v61, v0[17].i64[0]);
      lazy protocol witness table accessor for type SHA256Digest and conformance SHA256Digest();
      v64 = Digest.makeIterator()();
      v66 = specialized _copySequenceToContiguousArray<A>(_:)(v64, v65);

      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
      v0[10].i64[1] = v67;
      v0[11].i64[0] = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A]();
      v0[9].i64[0] = v66;
      v68 = __swift_project_boxed_opaque_existential_1(v0[9].i64, v67);
      v69 = *v68;
      v70 = *(*v68 + 16);
      if (v70)
      {
        v71 = v0[18].i64[0];
        v72 = v0[17].i64[0];
        if (v70 <= 0xE)
        {
          memset(__dst, 0, sizeof(__dst));
          v107 = v70;
          memcpy(__dst, (v69 + 32), v70);
          (*v63)(v71, v72);
          v77 = *__dst;
          v78 = v97 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v107 << 16)) << 32);
          v97 = v78;
        }

        else
        {
          v73 = type metadata accessor for __DataStorage();
          v74 = *(v73 + 48);
          v75 = *(v73 + 52);
          swift_allocObject();
          v76 = __DataStorage.init(bytes:length:)();
          (*v63)(v71, v72);
          if (v70 >= 0x7FFFFFFF)
          {
            type metadata accessor for Data.RangeReference();
            v77 = swift_allocObject();
            *(v77 + 16) = 0;
            *(v77 + 24) = v70;
            v78 = v76 | 0x8000000000000000;
          }

          else
          {
            v77 = v70 << 32;
            v78 = v76 | 0x4000000000000000;
          }
        }
      }

      else
      {
        (*v63)(v0[18].i64[0], v0[17].i64[0]);
        v77 = 0;
        v78 = 0xC000000000000000;
      }

      __swift_destroy_boxed_opaque_existential_0(v0[9].i64);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v62 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v62 + 2) + 1, 1, v62);
      }

      v80 = *(v62 + 2);
      v79 = *(v62 + 3);
      if (v80 >= v79 >> 1)
      {
        v62 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v79 > 1), v80 + 1, 1, v62);
      }

      *(v62 + 2) = v80 + 1;
      v81 = &v62[16 * v80];
      *(v81 + 4) = v77;
      *(v81 + 5) = v78;
      v61 += v99;
      --v58;
    }

    while (v58);
  }

  v83 = v0[24].i64[0];
  v82 = v0[24].i64[1];
  v84 = v0[23].i64[1];
  v93 = v0[22].i64[0];
  v85 = v0[21].i64[0];
  v98 = v0[21].i64[1];
  v100 = v0[20].i64[1];
  v86 = v0[19].i64[0];
  v103 = v0[20].i64[0];
  v105 = v0[18].i64[0];

  v87 = objc_allocWithZone(MEMORY[0x277CDC6B8]);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v89 = [v87 initWithInclusionHashes_];

  [v89 setLocalKeyIndex_];
  v90 = Data._bridgeToObjectiveC()().super.isa;
  [v89 setPublicKey_];
  outlined consume of Data?(v96, v94);

  outlined destroy of NodeIdentity(v86);
  outlined destroy of (CFStringRef, [CFStringRef? : Any])(v85, &_s9CryptoKit4P256O7SigningO9PublicKeyV3key_10Foundation4DataV3tpstMd, &_s9CryptoKit4P256O7SigningO9PublicKeyV3key_10Foundation4DataV3tpstMR);

  v91 = v0->i64[1];
  v92 = *MEMORY[0x277D85DE8];

  return v91(v89);
}

{
  v28 = v0;
  v27[1] = *MEMORY[0x277D85DE8];
  v1 = v0[49];

  v2 = v0[53];
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Log.default);
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v27[0] = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[23];
    v9 = v0[24];
    v11 = v0[25];
    v12 = Error.localizedDescription.getter();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v27);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_231772000, v5, v6, "PersonIdentityGenerator: Error while generating identity proof: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x2319361B0](v8, -1, -1);
    MEMORY[0x2319361B0](v7, -1, -1);
  }

  v16 = v0[47];
  v15 = v0[48];
  v18 = v0[43];
  v17 = v0[44];
  v20 = v0[41];
  v19 = v0[42];
  v21 = v0[40];
  v25 = v0[38];
  v26 = v0[36];
  swift_willThrow();

  v22 = v0[1];
  v23 = *MEMORY[0x277D85DE8];

  return v22();
}

uint64_t PersonIdentityGenerator.generateProofForIdentity(_:documentIdentifier:)(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = *v3;
  v7 = *(*v3 + 416);
  v8 = *v3;
  *(v6 + 424) = v2;

  v9 = *(v6 + 408);
  v10 = *(v6 + 400);
  if (v2)
  {
    outlined consume of Data?(v10, v9);
    v11 = PersonIdentityGenerator.generateProofForIdentity(_:documentIdentifier:);
  }

  else
  {
    v12 = *(v6 + 312);
    *(v6 + 432) = a2;
    *(v6 + 440) = a1;
    outlined consume of Data?(v10, v9);
    *(v6 + 448) = *(v12 + 48);
    v11 = PersonIdentityGenerator.generateProofForIdentity(_:documentIdentifier:);
  }

  v13 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t @objc closure #1 in PersonIdentityGenerator.generateProofForIdentity(_:documentIdentifier:)(void *a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v4[5] = v8;
  v10 = a1;
  a4;
  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = @objc closure #1 in PersonIdentityGenerator.generateProofForIdentity(_:documentIdentifier:);

  return PersonIdentityGenerator.generateProofForIdentity(_:documentIdentifier:)(v10, v7, v9);
}

uint64_t @objc closure #1 in PersonIdentityGenerator.generateProofForIdentity(_:documentIdentifier:)(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 48);
  v7 = *(*v2 + 40);
  v8 = *(*v2 + 24);
  v9 = *(*v2 + 16);
  v10 = *v2;

  v11 = *(v5 + 32);
  if (v3)
  {
    v12 = _convertErrorToNSError(_:)();

    (v11)[2](v11, 0, v12);
    _Block_release(v11);
  }

  else
  {
    (v11)[2](*(v5 + 32), a1, 0);
    _Block_release(v11);
  }

  v13 = *(v10 + 8);

  return v13();
}

uint64_t PersonIdentityGenerator.signData(data:documentIdentifier:trackingPreventionSalt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](PersonIdentityGenerator.signData(data:documentIdentifier:trackingPreventionSalt:), 0, 0);
}

uint64_t PersonIdentityGenerator.signData(data:documentIdentifier:trackingPreventionSalt:)()
{
  v1 = *((*MEMORY[0x277D85000] & **(v0[7] + OBJC_IVAR___SLPersonIdentityGenerator_keyQueryController)) + 0xD8);
  v10 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = PersonIdentityGenerator.signData(data:documentIdentifier:trackingPreventionSalt:);
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[2];

  return v10(v8, v6, v7, v4, v5);
}

uint64_t PersonIdentityGenerator.signData(data:documentIdentifier:trackingPreventionSalt:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 64);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t @objc closure #1 in PersonIdentityGenerator.signData(data:documentIdentifier:trackingPreventionSalt:)(void *a1, int a2, void *a3, void *aBlock, void *a5)
{
  v5[2] = a1;
  v5[3] = a5;
  v5[4] = _Block_copy(aBlock);
  v5[5] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5[6] = v9;
  if (a3)
  {
    v10 = a3;
    v11 = a1;
    v12 = a5;
    v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v16 = a1;
    v17 = a5;
    v13 = 0;
    v15 = 0xF000000000000000;
  }

  v5[7] = v13;
  v5[8] = v15;

  return MEMORY[0x2822009F8](@objc closure #1 in PersonIdentityGenerator.signData(data:documentIdentifier:trackingPreventionSalt:), 0, 0);
}

uint64_t @objc closure #1 in PersonIdentityGenerator.signData(data:documentIdentifier:trackingPreventionSalt:)()
{
  v1 = *((*MEMORY[0x277D85000] & **(v0[3] + OBJC_IVAR___SLPersonIdentityGenerator_keyQueryController)) + 0xD8);
  v10 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = @objc closure #1 in PersonIdentityGenerator.signData(data:documentIdentifier:trackingPreventionSalt:);
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[2];

  return v10(v8, v6, v7, v4, v5);
}

{
  v1 = *(v0 + 80);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 48);
  v5 = *(v0 + 24);

  outlined consume of Data?(v3, v2);

  v6 = _convertErrorToNSError(_:)();

  v7 = *(v0 + 32);
  (v7)[2](v7, 0, v6);

  _Block_release(v7);
  v8 = *(v0 + 8);

  return v8();
}

uint64_t @objc closure #1 in PersonIdentityGenerator.signData(data:documentIdentifier:trackingPreventionSalt:)(uint64_t a1, unint64_t a2)
{
  v6 = *(*v3 + 72);
  v7 = *v3;
  *(v7 + 80) = v2;

  if (v2)
  {

    return MEMORY[0x2822009F8](@objc closure #1 in PersonIdentityGenerator.signData(data:documentIdentifier:trackingPreventionSalt:), 0, 0);
  }

  else
  {
    v9 = *(v7 + 56);
    v8 = *(v7 + 64);
    v10 = *(v7 + 48);
    v11 = *(v7 + 24);

    outlined consume of Data?(v9, v8);

    if (a2 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      isa = Data._bridgeToObjectiveC()().super.isa;
      outlined consume of Data?(a1, a2);
    }

    v13 = *(v7 + 32);
    (v13)[2](v13, isa, 0);

    _Block_release(v13);
    v14 = *(v7 + 8);

    return v14();
  }
}

id PersonIdentityGenerator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PersonIdentityGenerator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t Digest.bytes.getter()
{
  v0 = Digest.makeIterator()();
  v2 = specialized _copySequenceToContiguousArray<A>(_:)(v0, v1);

  return v2;
}

uint64_t _sIeghH_IeAgH_TR(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = partial apply for specialized closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:);

  return v7();
}

uint64_t _sIeAgH_ytIeAgHr_TR(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = dispatch thunk of CollaborationInitiationRequest.initiateCollaboration();

  return v8();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  outlined init with copy of (NSAttributedStringKey, Any)(a3, v25 - v11, &_sScPSgMd, &_sScPSgMR);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    outlined destroy of (CFStringRef, [CFStringRef? : Any])(v12, &_sScPSgMd, &_sScPSgMR);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = dispatch thunk of Actor.unownedExecutor.getter();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = String.utf8CString.getter() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    outlined destroy of (CFStringRef, [CFStringRef? : Any])(a3, &_sScPSgMd, &_sScPSgMR);

    return v23;
  }

LABEL_8:
  outlined destroy of (CFStringRef, [CFStringRef? : Any])(a3, &_sScPSgMd, &_sScPSgMR);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TQ0_;

  return v7(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TQ0_()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

size_t specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy11SocialLayer38CloudKitCollaborationInitiationRequestC8ResponseV9RecipientVGMd, &_ss23_ContiguousArrayStorageCy11SocialLayer38CloudKitCollaborationInitiationRequestC8ResponseV9RecipientVGMR, type metadata accessor for CloudKitCollaborationInitiationRequest.Response.Recipient);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy11SocialLayer12NodeIdentityOGMd, &_ss23_ContiguousArrayStorageCy11SocialLayer12NodeIdentityOGMR, type metadata accessor for NodeIdentity);
  *v3 = result;
  return result;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SocialLayer8Endpoint_pGMd, &_ss23_ContiguousArrayStorageCy11SocialLayer8Endpoint_pGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SocialLayer8Endpoint_pMd, &_s11SocialLayer8Endpoint_pMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t closure #2 in Data.init<A>(_:)@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = specialized Data.InlineData.init(_:)(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = type metadata accessor for __DataStorage();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = __DataStorage.init(bytes:length:)();
      if (a2 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v22[2] = *MEMORY[0x277D85DE8];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      outlined consume of Data._Representation(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      result = a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        result = v20;
      }

      v9 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v3 = v22[0];
      v3[1] = v9;
      goto LABEL_22;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    outlined consume of Data._Representation(v6, v5);
    *v3 = xmmword_23183E920;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v6, __DataStorage._offset.getter()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = type metadata accessor for __DataStorage();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        result = v17;
        goto LABEL_22;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    outlined consume of Data._Representation(v6, v5);
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_23183E920;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    result = specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(v20[2], v20[3], a1);
    v10 = v21 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v20;
      v3[1] = v10;
      goto LABEL_22;
    }

    *v3 = v20;
LABEL_21:
    v3[1] = v10;
    goto LABEL_22;
  }

  memset(v22, 0, 15);
  result = a1(&v20, v22, v22);
  if (!v2)
  {
    result = v20;
  }

LABEL_22:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *closure #1 in Data.init<A>(_:)@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = specialized Data.InlineData.init(_:)(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = specialized Data.LargeSlice.init(_:)(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = specialized Data.InlineSlice.init(_:)(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t outlined consume of (keys: [P256.Signing.PublicKey], tps: Data)?(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result)
  {

    return outlined consume of Data._Representation(a2, a3);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SHA256Digest and conformance SHA256Digest()
{
  result = lazy protocol witness table cache variable for type SHA256Digest and conformance SHA256Digest;
  if (!lazy protocol witness table cache variable for type SHA256Digest and conformance SHA256Digest)
  {
    type metadata accessor for SHA256Digest();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SHA256Digest and conformance SHA256Digest);
  }

  return result;
}

void *_sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFs5UInt8V_s5NeverOs16IndexingIteratorVySS8UTF8ViewVG_SitTt1g5(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = __DataStorage._offset.getter();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = MEMORY[0x231933EB0]();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x231934650](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t specialized closure #1 in closure #3 in Data.init<A>(_:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = _StringGuts.copyUTF8(into:)();
    if ((v7 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      a3[2] = 15;
      a3[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized _copySequenceToContiguousArray<A>(_:)(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  v3 = MEMORY[0x277D84F90];
  v4 = v2 - a2;
  if (v2 != a2)
  {
    if (v2 > a2)
    {
      if (a2 < 0)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      if (!v2)
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v5 = 0;
      v6 = (a2 + result + 32);
      v7 = (MEMORY[0x277D84F90] + 32);
      while (1)
      {
        v9 = *v6++;
        v8 = v9;
        if (!v5)
        {
          v10 = v3[3];
          if (((v10 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_28;
          }

          v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
          if (v11 <= 1)
          {
            v12 = 1;
          }

          else
          {
            v12 = v11;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
          v13 = swift_allocObject();
          v14 = 2 * _swift_stdlib_malloc_size(v13) - 64;
          v13[2] = v12;
          v13[3] = v14;
          v15 = (v13 + 4);
          v16 = v3[3] >> 1;
          if (v3[2])
          {
            if (v13 != v3 || v15 >= v3 + v16 + 32)
            {
              memmove(v13 + 4, v3 + 4, v16);
            }

            v3[2] = 0;
          }

          v7 = (v15 + v16);
          v5 = (v14 >> 1) - v16;

          v3 = v13;
        }

        v18 = __OFSUB__(v5--, 1);
        if (v18)
        {
          break;
        }

        *v7++ = v8;
        if (!--v4)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
    }

    __break(1u);
    goto LABEL_30;
  }

  v5 = 0;
LABEL_23:
  v19 = v3[3];
  if (v19 < 2)
  {
    return v3;
  }

  v20 = v19 >> 1;
  v18 = __OFSUB__(v20, v5);
  v21 = v20 - v5;
  if (!v18)
  {
    v3[2] = v21;
    return v3;
  }

LABEL_32:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type [UInt8] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A]);
  }

  return result;
}

uint64_t specialized static Data.== infix(_:_:)(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          outlined copy of Data._Representation(a3, a4);
          return specialized Data.withUnsafeBytes<A>(_:)(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t specialized Data.InlineData.init(_:)(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t specialized Data.LargeSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t specialized Data.InlineSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t specialized Data._Representation.init(count:)(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = type metadata accessor for __DataStorage();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      __DataStorage.init(length:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  v10 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A]();
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  closure #1 in Data.init<A>(_:)(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_0(v8);
  return v5;
}

uint64_t specialized PersonIdentityGenerator.merkleTreeForPublicKeys(_:)(uint64_t a1)
{
  v17 = type metadata accessor for NodeIdentity(0);
  v2 = *(v17 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v17);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v18 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
    v7 = v18;
    v16 = type metadata accessor for P256.Signing.PublicKey();
    v8 = *(v16 - 8);
    v9 = *(v8 + 16);
    v10 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v11 = *(v8 + 72);
    do
    {
      v9(v5, v10, v16);
      swift_storeEnumTagMultiPayload();
      v18 = v7;
      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v12 > 1, v13 + 1, 1);
        v7 = v18;
      }

      *(v7 + 16) = v13 + 1;
      outlined init with take of NodeIdentity(v5, v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v13);
      v10 += v11;
      --v6;
    }

    while (v6);
  }

  type metadata accessor for MerkleTree();
  swift_allocObject();
  return MerkleTree.init(nodeIdentities:)(v7);
}

unint64_t lazy protocol witness table accessor for type PersonIdentityGenerator.GenerationErrors and conformance PersonIdentityGenerator.GenerationErrors()
{
  result = lazy protocol witness table cache variable for type PersonIdentityGenerator.GenerationErrors and conformance PersonIdentityGenerator.GenerationErrors;
  if (!lazy protocol witness table cache variable for type PersonIdentityGenerator.GenerationErrors and conformance PersonIdentityGenerator.GenerationErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonIdentityGenerator.GenerationErrors and conformance PersonIdentityGenerator.GenerationErrors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonIdentityGenerator.GenerationErrors and conformance PersonIdentityGenerator.GenerationErrors;
  if (!lazy protocol witness table cache variable for type PersonIdentityGenerator.GenerationErrors and conformance PersonIdentityGenerator.GenerationErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonIdentityGenerator.GenerationErrors and conformance PersonIdentityGenerator.GenerationErrors);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PersonIdentityGenerator.GenerationErrors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PersonIdentityGenerator.GenerationErrors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t partial apply for @objc closure #1 in PersonIdentityGenerator.signData(data:documentIdentifier:trackingPreventionSalt:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = partial apply for specialized closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:);

  return @objc closure #1 in PersonIdentityGenerator.signData(data:documentIdentifier:trackingPreventionSalt:)(v2, v3, v4, v5, v6);
}

uint64_t _sIeghH_IeAgH_TRTA()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = partial apply for specialized closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:);

  return _sIeghH_IeAgH_TR(v2, v3, v5);
}

uint64_t _sIeAgH_ytIeAgHr_TRTA(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for specialized closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:);

  return _sIeAgH_ytIeAgHr_TR(a1, v4, v5, v7);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5(a1, v5);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA_33(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of CollaborationInitiationRequest.initiateCollaboration();

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5(a1, v5);
}

uint64_t partial apply for @objc closure #1 in PersonIdentityGenerator.generateProofForIdentity(_:documentIdentifier:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = partial apply for specialized closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:);

  return @objc closure #1 in PersonIdentityGenerator.generateProofForIdentity(_:documentIdentifier:)(v2, v3, v5, v4);
}

uint64_t partial apply for @objc closure #1 in PersonIdentityGenerator.generateLocalIdentity(documentIdentifier:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = dispatch thunk of CollaborationInitiationRequest.initiateCollaboration();

  return @objc closure #1 in PersonIdentityGenerator.generateLocalIdentity(documentIdentifier:)(v2, v3, v4);
}

uint64_t objectdestroy_40Tm()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t partial apply for @objc closure #1 in PersonIdentityGenerator.generatePersonIdentitiesForHandles(handles:documentIdentifier:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = partial apply for specialized closure #1 in static Task<>.retrying(maxRetryCount:delay:shouldRetry:operation:);

  return @objc closure #1 in PersonIdentityGenerator.generatePersonIdentitiesForHandles(handles:documentIdentifier:)(v2, v3, v5, v4);
}

uint64_t objectdestroy_19Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void *partial apply for specialized closure #3 in Data.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = _sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFs5UInt8V_s5NeverOs16IndexingIteratorVySS8UTF8ViewVG_SitTt1g5(partial apply for specialized closure #1 in closure #3 in Data.init<A>(_:), v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

void GenericPasswordStore.storeKey<A>(_:account:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23183E350;
  v9 = *MEMORY[0x277CDBEC8];
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  v11 = v10;
  *(inited + 40) = v12;
  strcpy((inited + 48), "sociallayerd");
  *(inited + 61) = 0;
  *(inited + 62) = -5120;
  v13 = *MEMORY[0x277CDC228];
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v14;
  v15 = *MEMORY[0x277CDC238];
  type metadata accessor for CFStringRef(0);
  v17 = v16;
  *(inited + 120) = v16;
  *(inited + 96) = v15;
  v18 = *MEMORY[0x277CDBF20];
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v19;
  *(inited + 168) = v11;
  *(inited + 144) = a2;
  *(inited + 152) = a3;
  v20 = *MEMORY[0x277CDBED8];
  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v21;
  v22 = *MEMORY[0x277CDBEE0];
  *(inited + 216) = v17;
  *(inited + 192) = v22;
  v23 = *MEMORY[0x277CDC5C8];
  *(inited + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 232) = v24;
  *(inited + 264) = MEMORY[0x277D839B0];
  *(inited + 240) = 1;
  v25 = *MEMORY[0x277CDC5E8];
  *(inited + 272) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 280) = v26;
  v27 = *(a5 + 24);
  v28 = v15;

  v29 = v22;
  v30 = v27(a4, a5);
  *(inited + 312) = MEMORY[0x277CC9318];
  *(inited + 288) = v30;
  *(inited + 296) = v31;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v33 = SecItemAdd(isa, 0);

  if (v33)
  {
    _StringGuts.grow(_:)(24);

    v34 = SecCopyErrorMessageString(v33, 0);
    if (v34)
    {
      v35 = v34;
      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;

      v39 = v36;
    }

    else
    {
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v38 = v40;
    }

    MEMORY[0x231934620](v39, v38);

    lazy protocol witness table accessor for type GenericPasswordStoreError and conformance GenericPasswordStoreError();
    swift_allocError();
    *v41 = 0xD000000000000016;
    v41[1] = 0x8000000231846A70;
    swift_willThrow();
  }
}

uint64_t GenericPasswordStore.readKey<A>(account:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  result[35] = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23183E340;
  v10 = *MEMORY[0x277CDBEC8];
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v12;
  strcpy((inited + 48), "sociallayerd");
  *(inited + 61) = 0;
  *(inited + 62) = -5120;
  v13 = *MEMORY[0x277CDC228];
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v14;
  v15 = *MEMORY[0x277CDC238];
  type metadata accessor for CFStringRef(0);
  *(inited + 120) = v16;
  *(inited + 96) = v15;
  v17 = *MEMORY[0x277CDBF20];
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v18;
  *(inited + 168) = v11;
  *(inited + 144) = a1;
  *(inited + 152) = a2;
  v19 = *MEMORY[0x277CDC5C8];
  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v20;
  v21 = MEMORY[0x277D839B0];
  *(inited + 216) = MEMORY[0x277D839B0];
  v22 = 1;
  *(inited + 192) = 1;
  v23 = *MEMORY[0x277CDC558];
  *(inited + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 232) = v24;
  *(inited + 264) = v21;
  *(inited + 240) = 1;
  v25 = v15;

  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  result[0] = 0;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v27 = SecItemCopyMatching(isa, result);

  if (v27 == -25300)
  {
    goto LABEL_7;
  }

  if (v27)
  {
    _StringGuts.grow(_:)(24);

    *&v41 = 0xD000000000000016;
    *(&v41 + 1) = 0x8000000231846A90;
    v29 = SecCopyErrorMessageString(v27, 0);
    if (v29)
    {
      v30 = v29;
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      v34 = v31;
    }

    else
    {
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v35;
    }

    MEMORY[0x231934620](v34, v33);

    lazy protocol witness table accessor for type GenericPasswordStoreError and conformance GenericPasswordStoreError();
    swift_allocError();
    *v36 = v41;
    swift_willThrow();
    goto LABEL_13;
  }

  if (!result[0])
  {
LABEL_7:
    v28 = a5;
    goto LABEL_8;
  }

  swift_unknownObjectRetain();
  v28 = a5;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    (*(*(a3 - 8) + 56))(v28, v22, 1, a3);
    goto LABEL_13;
  }

  (*(a4 + 16))(&v41, MEMORY[0x277CC9318], MEMORY[0x277CC9300], a3);
  if (!v5)
  {
    v22 = 0;
    goto LABEL_8;
  }

LABEL_13:
  v37 = swift_unknownObjectRelease();
  v38 = *MEMORY[0x277D85DE8];
  return v37;
}

uint64_t GenericPasswordStoreError.message.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Int32.message.getter(OSStatus a1)
{
  v1 = SecCopyErrorMessageString(a1, 0);
  if (!v1)
  {
    return dispatch thunk of CustomStringConvertible.description.getter();
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> GenericPasswordStore.deleteKey(account:)(Swift::String account)
{
  object = account._object;
  countAndFlagsBits = account._countAndFlagsBits;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23183D7F0;
  v4 = *MEMORY[0x277CDC228];
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v5;
  v6 = *MEMORY[0x277CDC238];
  type metadata accessor for CFStringRef(0);
  *(inited + 72) = v7;
  *(inited + 48) = v6;
  v8 = *MEMORY[0x277CDC5C8];
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v9;
  *(inited + 120) = MEMORY[0x277D839B0];
  *(inited + 96) = 1;
  v10 = *MEMORY[0x277CDBF20];
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v11;
  *(inited + 168) = MEMORY[0x277D837D0];
  *(inited + 144) = countAndFlagsBits;
  *(inited + 152) = object;
  v12 = v6;

  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v14 = SecItemDelete(isa);

  if (v14 != -25300 && v14)
  {
    _StringGuts.grow(_:)(29);

    v15 = SecCopyErrorMessageString(v14, 0);
    if (v15)
    {
      v16 = v15;
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      v20 = v17;
    }

    else
    {
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v21;
    }

    MEMORY[0x231934620](v20, v19);

    lazy protocol witness table accessor for type GenericPasswordStoreError and conformance GenericPasswordStoreError();
    swift_allocError();
    *v22 = 0xD00000000000001BLL;
    v22[1] = 0x8000000231846E20;
    swift_willThrow();
  }
}

uint64_t SLLocString(key:localization:)(uint64_t a1)
{
  v2 = type metadata accessor for Locale();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  (*(v7 + 16))(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v8 = SLFrameworkBundle();

  static Locale.current.getter();
  return String.init(localized:table:bundle:localization:locale:comment:)();
}

Swift::Int AttributionTextPrefix.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x231934D10](a1 & 1);
  return Hasher._finalize()();
}

uint64_t one-time initialization function for senderName()
{
  result = MEMORY[0x231934530](0xD000000000000017, 0x8000000231846E40);
  static NSAttributedStringKey.senderName = result;
  return result;
}

uint64_t *NSAttributedStringKey.senderName.unsafeMutableAddressor()
{
  if (one-time initialization token for senderName != -1)
  {
    swift_once();
  }

  return &static NSAttributedStringKey.senderName;
}

uint64_t one-time initialization function for numContacts()
{
  result = MEMORY[0x231934530](0xD000000000000018, 0x8000000231846E60);
  static NSAttributedStringKey.numContacts = result;
  return result;
}

uint64_t *NSAttributedStringKey.numContacts.unsafeMutableAddressor()
{
  if (one-time initialization token for numContacts != -1)
  {
    swift_once();
  }

  return &static NSAttributedStringKey.numContacts;
}

uint64_t one-time initialization function for listOfNames()
{
  result = MEMORY[0x231934530](0xD000000000000022, 0x8000000231846E80);
  static NSAttributedStringKey.listOfNames = result;
  return result;
}

uint64_t *NSAttributedStringKey.listOfNames.unsafeMutableAddressor()
{
  if (one-time initialization token for listOfNames != -1)
  {
    swift_once();
  }

  return &static NSAttributedStringKey.listOfNames;
}

id static NSAttributedStringKey.senderName.getter(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

uint64_t AttributeScopes.HighlightPillAttributes.foundation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AttributeScopes.FoundationAttributes();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t protocol witness for static DecodingConfigurationProviding.decodingConfiguration.getter in conformance AttributeScopes.HighlightPillAttributes(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions(&lazy protocol witness table cache variable for type AttributeScopes.HighlightPillAttributes and conformance AttributeScopes.HighlightPillAttributes, type metadata accessor for AttributeScopes.HighlightPillAttributes);

  return MEMORY[0x28211BCD8](a1, v2);
}

uint64_t protocol witness for static EncodingConfigurationProviding.encodingConfiguration.getter in conformance AttributeScopes.HighlightPillAttributes(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions(&lazy protocol witness table cache variable for type AttributeScopes.HighlightPillAttributes and conformance AttributeScopes.HighlightPillAttributes, type metadata accessor for AttributeScopes.HighlightPillAttributes);

  return MEMORY[0x28211BCD8](a1, v2);
}

uint64_t SLLocAttributedString(key:localization:)(uint64_t a1, uint64_t a2)
{
  v16[1] = a2;
  v3 = type metadata accessor for AttributedString.FormattingOptions();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for String.LocalizationValue();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  (*(v12 + 16))(v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v13 = SLFrameworkBundle();
  v14 = type metadata accessor for Locale();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  swift_getKeyPath();
  v16[3] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions(&lazy protocol witness table cache variable for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions, MEMORY[0x277CC8B58]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation16AttributedStringV17FormattingOptionsVGMd, &_sSay10Foundation16AttributedStringV17FormattingOptionsVGMR);
  lazy protocol witness table accessor for type [AttributedString.FormattingOptions] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for AttributeScopes.HighlightPillAttributes();
  lazy protocol witness table accessor for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions(&lazy protocol witness table cache variable for type AttributeScopes.HighlightPillAttributes and conformance AttributeScopes.HighlightPillAttributes, type metadata accessor for AttributeScopes.HighlightPillAttributes);
  return AttributedString.init<A>(localized:options:table:bundle:localization:locale:comment:including:)();
}

unint64_t lazy protocol witness table accessor for type [AttributedString.FormattingOptions] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [AttributedString.FormattingOptions] and conformance [A];
  if (!lazy protocol witness table cache variable for type [AttributedString.FormattingOptions] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10Foundation16AttributedStringV17FormattingOptionsVGMd, &_sSay10Foundation16AttributedStringV17FormattingOptionsVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [AttributedString.FormattingOptions] and conformance [A]);
  }

  return result;
}

uint64_t type metadata accessor for AttributeScopes.HighlightPillAttributes()
{
  result = type metadata singleton initialization cache for AttributeScopes.HighlightPillAttributes;
  if (!type metadata singleton initialization cache for AttributeScopes.HighlightPillAttributes)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::tuple_localizedString_NSMutableAttributedString_baseFontTargetRanges_OpaquePointer_senderFontTargetRanges_OpaquePointer __swiftcall MeAttributionLocAttributedString(prefix:multiline:localization:)(SocialLayer::AttributionTextPrefix prefix, Swift::Bool multiline, Swift::String_optional localization)
{
  v34 = localization;
  v3 = type metadata accessor for String.LocalizationValue();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AttributedString();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v33 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v33 - v17;
  String.LocalizationValue.init(_:)();
  SLLocAttributedString(key:localization:)(v7, v34.value._countAndFlagsBits);
  v19 = v7;
  v20 = v8;
  (*(v4 + 8))(v19, v3);
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSMutableAttributedString, 0x277CCAB48);
  v34.value._object = v9;
  (*(v9 + 16))(v16, v18, v8);
  swift_getKeyPath();
  type metadata accessor for AttributeScopes.HighlightPillAttributes();
  lazy protocol witness table accessor for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions(&lazy protocol witness table cache variable for type AttributeScopes.HighlightPillAttributes and conformance AttributeScopes.HighlightPillAttributes, type metadata accessor for AttributeScopes.HighlightPillAttributes);
  v21 = NSAttributedString.init<A>(_:including:)();
  v22 = [v21 length];
  if ((v22 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v13 = v22;
    v36 = MEMORY[0x277D84F90];
    v37 = MEMORY[0x277D84F90];
    if (one-time initialization token for senderName == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v23 = static NSAttributedStringKey.senderName;
  v24 = swift_allocObject();
  *(v24 + 16) = &v36;
  *(v24 + 24) = &v37;
  v25 = swift_allocObject();
  *(v25 + 16) = partial apply for closure #1 in MeAttributionLocAttributedString(prefix:multiline:localization:);
  *(v25 + 24) = v24;
  aBlock[4] = partial apply for thunk for @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  aBlock[3] = &block_descriptor_3;
  v26 = _Block_copy(aBlock);

  [v21 enumerateAttribute:v23 inRange:0 options:v13 usingBlock:{0, v26}];
  _Block_release(v26);

  (*(v34.value._object + 1))(v18, v20);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v32 = v36;
    v31 = v37;

    v28 = v21;
    v29 = v31;
    v30 = v32;
  }

  result.senderFontTargetRanges._rawValue = v30;
  result.baseFontTargetRanges._rawValue = v29;
  result.localizedString.super.super.isa = v28;
  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v12 = a2;
    outlined init with take of Any(&v12, v14);
  }

  else
  {
    memset(v14, 0, sizeof(v14));
  }

  swift_unknownObjectRetain();
  v10(v14, a3, a4, a5);
  return outlined destroy of (CFStringRef, [CFStringRef? : Any])(v14, &_sypSgMd, &_sypSgMR);
}

uint64_t closure #1 in MeAttributionLocAttributedString(prefix:multiline:localization:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  outlined init with copy of (NSAttributedStringKey, Any)(a1, v18, &_sypSgMd, &_sypSgMR);
  if (v19)
  {
    if ((swift_dynamicCast() & 1) != 0 && v17 == 1)
    {
      v10 = *a5;
      result = swift_isUniquelyReferenced_nonNull_native();
      *a5 = v10;
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1, v10);
        v10 = result;
        *a5 = result;
      }

      v13 = *(v10 + 16);
      v12 = *(v10 + 24);
      v14 = v13 + 1;
      if (v13 >= v12 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v10);
        v10 = result;
        *a5 = result;
      }

      goto LABEL_13;
    }
  }

  else
  {
    outlined destroy of (CFStringRef, [CFStringRef? : Any])(v18, &_sypSgMd, &_sypSgMR);
  }

  v10 = *a6;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a6 = v10;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1, v10);
    v10 = result;
    *a6 = result;
  }

  v13 = *(v10 + 16);
  v15 = *(v10 + 24);
  v14 = v13 + 1;
  if (v13 >= v15 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v13 + 1, 1, v10);
    v10 = result;
    *a6 = result;
  }

LABEL_13:
  *(v10 + 16) = v14;
  v16 = v10 + 16 * v13;
  *(v16 + 32) = a2;
  *(v16 + 40) = a3;
  return result;
}

Swift::String __swiftcall formattedDisplayNameListAndNOthers(prefix:names:nOthers:localization:)(SocialLayer::AttributionTextPrefix prefix, Swift::OpaquePointer names, Swift::Int nOthers, Swift::String_optional localization)
{
  v49 = localization;
  v43 = prefix;
  v6 = type metadata accessor for Locale();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v48 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for String.LocalizationValue();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v47 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v38 - v14;
  v50 = 0;
  v51 = 0xE000000000000000;
  v16 = *(names._rawValue + 2);
  if (v16)
  {
    v17 = 0;
    v39 = nOthers;
    v40 = v16 - 1;
    v44 = (v13 + 16);
    v46 = (v13 + 8);
    v38[2] = "AND_N_OTHERS_FORMAT";
    v38[3] = "umContacts: true)";
    v38[1] = "WITH_NAME_OR_ADDRESS_FINAL_ITEM";
    v38[0] = "RESS_NON_FINAL_ITEM";
    v38[4] = "FROM_NAME_OR_ADDRESS_FIRST_ITEM";
    v38[5] = "RESS_NON_FINAL_ITEM";
    v18 = (names._rawValue + 40);
    v45 = xmmword_23183D7E0;
    v42 = v16;
    do
    {
      v26 = *(v18 - 1);
      v25 = *v18;

      String.LocalizationValue.init(stringLiteral:)();
      v41 = *v44;
      v41(v47, v15, v9);
      v19 = SLFrameworkBundle();

      static Locale.current.getter();
      String.init(localized:table:bundle:localization:locale:comment:)();
      ++v17;
      v20 = *v46;
      (*v46)(v15, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v21 = swift_allocObject();
      *(v21 + 16) = v45;
      *(v21 + 56) = MEMORY[0x277D837D0];
      *(v21 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v21 + 32) = v26;
      *(v21 + 40) = v25;
      v22 = static String.localizedStringWithFormat(_:_:)();
      v24 = v23;

      MEMORY[0x231934610](v22, v24);

      v18 += 2;
    }

    while (v42 != v17);
    v27 = v39;
    if (v39 >= 1)
    {
      String.LocalizationValue.init(stringLiteral:)();
      v41(v47, v15, v9);
      v28 = SLFrameworkBundle();

      static Locale.current.getter();
      String.init(localized:table:bundle:localization:locale:comment:)();
      v20(v15, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v29 = swift_allocObject();
      v30 = MEMORY[0x277D83B88];
      *(v29 + 16) = v45;
      v31 = MEMORY[0x277D83C10];
      *(v29 + 56) = v30;
      *(v29 + 64) = v31;
      *(v29 + 32) = v27;
      v32 = static String.localizedStringWithFormat(_:_:)();
      v34 = v33;

      MEMORY[0x231934610](v32, v34);
    }
  }

  v35 = v50;
  v36 = v51;
  result._object = v36;
  result._countAndFlagsBits = v35;
  return result;
}

void attributedStringSplitByLineBreak(inString:)(void *a1)
{
  v2 = [a1 string];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  lazy protocol witness table accessor for type String and conformance String();
  v3 = StringProtocol.components<A>(separatedBy:)();

  v18 = MEMORY[0x277D84F90];
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = (v3 + 40);
    while (1)
    {
      v7 = *(v6 - 1);
      if ((*v6 & 0x1000000000000000) != 0)
      {
        v15 = *(v6 - 1);
        v16 = *v6;
        v9 = String.UTF16View._foreignCount()();
      }

      else
      {
        if ((*v6 & 0x2000000000000000) == 0)
        {
          v8 = *(v6 - 1);
        }

        v9 = String.UTF16View._nativeGetOffset(for:)();
      }

      v10 = v9;
      v11 = [a1 attributedSubstringFromRange_];
      MEMORY[0x2319346D0]();
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v17 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v12 = String.count.getter();

      v13 = v10 + v12;
      if (__OFADD__(v10, v12))
      {
        break;
      }

      v14 = __OFADD__(v5, v13);
      v5 += v13;
      if (v14)
      {
        goto LABEL_16;
      }

      v6 += 2;
      if (!--v4)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_14:
  }
}

void specialized HighlightPillMetricVariant.avatarContainerWidth.getter(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 preferredContentSizeCategory];
  v6 = 3;
  if ((v5 - 9) < 3)
  {
    v6 = 1;
  }

  if (v6 >= a3)
  {
    v6 = a3;
  }

  if (__OFSUB__(v6, 1))
  {
    __break(1u);
  }

  else
  {
    v7 = [a1 preferredContentSizeCategory];
    if (v7 <= 0xB)
    {
      v8 = dbl_23183F4A8[v7];
    }

    v9 = [a1 preferredContentSizeCategory];
    if (v9 > 0xB)
    {
      v10 = 19.92;
    }

    else
    {
      v10 = dbl_23183F508[v9];
    }

    SLRoundToScale(v10, [a1 displayScale]);
  }
}

{
  v5 = [a1 preferredContentSizeCategory];
  v6 = 3;
  if ((v5 - 9) < 3)
  {
    v6 = 1;
  }

  if (v6 >= a3)
  {
    v6 = a3;
  }

  if (__OFSUB__(v6, 1))
  {
    __break(1u);
  }

  else
  {
    v7 = [a1 preferredContentSizeCategory];
    if (v7 <= 0xB)
    {
      v8 = dbl_23183F688[v7];
    }

    v9 = [a1 preferredContentSizeCategory];
    v10 = 12.0;
    if (v9 <= 0xB)
    {
      v10 = dbl_23183F6E8[v9];
    }

    SLRoundToScale(v10, [a1 displayScale]);
  }
}

uint64_t specialized HighlightPillMetricVariant.chevronFontDescriptor.getter(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_SDyADypGtGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_SDyADypGtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23183D7E0;
  v3 = *MEMORY[0x277CC4950];
  *(inited + 32) = *MEMORY[0x277CC4950];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_yptGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_yptGMR);
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_23183D0C0;
  v5 = *MEMORY[0x277CC4948];
  *(v4 + 32) = *MEMORY[0x277CC4948];
  v6 = MEMORY[0x277D83B88];
  *(v4 + 40) = 0x8000;
  v7 = *MEMORY[0x277CC49B8];
  v8 = MEMORY[0x277CC49A0];
  *(v4 + 64) = v6;
  *(v4 + 72) = v7;
  v9 = *v8;
  *(v4 + 104) = MEMORY[0x277D85048];
  *(v4 + 80) = v9;
  v10 = v3;
  v11 = v5;
  v12 = v7;
  v13 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ypTt0g5Tf4g_n(v4);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11CFStringRefa_yptMd, &_sSo11CFStringRefa_yptMR);
  swift_arrayDestroy();
  *(inited + 40) = v13;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_SDyADypGTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (CFStringRef, [CFStringRef? : Any])(inited + 32, &_sSo11CFStringRefa_SDyABypGtMd, &_sSo11CFStringRefa_SDyABypGtMR);
  type metadata accessor for CFStringRef(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo11CFStringRefaypGMd, &_sSDySo11CFStringRefaypGMR);
  lazy protocol witness table accessor for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v15 = [a1 fontContentSizeCategory];
  v16 = *MEMORY[0x277CC4A40];
  v17 = CTFontDescriptorCreateWithTextStyleAndAttributes();

  return v17;
}

void specialized HighlightPillMetricVariant.chevronSize.getter(void *a1)
{
  v2 = [a1 layoutDirection];
  v3 = specialized HighlightPillMetricVariant.chevronFontDescriptor.getter(a1);
  if (CTFontDescriptorCopyAttribute(v3, *MEMORY[0x277CC4938]))
  {
    if (v2 == 1)
    {
      v4 = 0xEC0000007466656CLL;
    }

    else
    {
      v4 = 0xED00007468676972;
    }

    type metadata accessor for CFNumberRef(0);
    v5 = swift_dynamicCastUnknownClassUnconditional();
    CGFloat.init(truncating:)();
    v7 = v6;

    v8 = MEMORY[0x231934530](0x2E6E6F7276656863, v4);

    v9 = SLDSystemVectorGlyphWithSlotStyle(a1, v8, 1, 5, v7);

    [v9 contentBounds];
  }

  else
  {
    __break(1u);
  }
}

CTFontRef specialized HighlightPillMetricVariant.baseFont.getter(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_SDyADSiGtGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_SDyADSiGtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23183D7E0;
  v3 = *MEMORY[0x277CC4950];
  *(inited + 32) = *MEMORY[0x277CC4950];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_SitGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_SitGMR);
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_23183D7E0;
  v5 = *MEMORY[0x277CC4948];
  *(v4 + 32) = *MEMORY[0x277CC4948];
  *(v4 + 40) = 0x8000;
  v6 = v3;
  v7 = v5;
  v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_SiTt0g5Tf4g_n(v4);
  swift_setDeallocating();
  outlined destroy of (CFStringRef, [CFStringRef? : Any])(v4 + 32, &_sSo11CFStringRefa_SitMd, &_sSo11CFStringRefa_SitMR);
  *(inited + 40) = v8;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_SDyADSiGTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (CFStringRef, [CFStringRef? : Any])(inited + 32, &_sSo11CFStringRefa_SDyABSiGtMd, &_sSo11CFStringRefa_SDyABSiGtMR);
  type metadata accessor for CFStringRef(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo11CFStringRefaSiGMd, &_sSDySo11CFStringRefaSiGMR);
  lazy protocol witness table accessor for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v10 = CTContentSizeCategoryForSlotStyle(a1);
  v11 = *MEMORY[0x277CC4A40];
  v12 = CTFontDescriptorCreateWithTextStyleAndAttributes();
  v13 = CTFontCreateWithFontDescriptor(v12, 0.0, 0);

  return v13;
}

CTFontRef specialized HighlightPillMetricVariant.baseFont.getter(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_SDyADSiGtGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_SDyADSiGtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23183D7E0;
  v7 = *MEMORY[0x277CC4950];
  *(inited + 32) = *MEMORY[0x277CC4950];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_SitGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_SitGMR);
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_23183D7E0;
  v9 = *MEMORY[0x277CC4948];
  *(v8 + 32) = *MEMORY[0x277CC4948];
  *(v8 + 40) = 0x8000;
  v10 = v7;
  v11 = v9;
  v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_SiTt0g5Tf4g_n(v8);
  swift_setDeallocating();
  outlined destroy of (CFStringRef, [CFStringRef? : Any])(v8 + 32, &_sSo11CFStringRefa_SitMd, &_sSo11CFStringRefa_SitMR);
  *(inited + 40) = v12;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_SDyADSiGTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (CFStringRef, [CFStringRef? : Any])(inited + 32, &_sSo11CFStringRefa_SDyABSiGtMd, &_sSo11CFStringRefa_SDyABSiGtMR);
  type metadata accessor for CFStringRef(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo11CFStringRefaSiGMd, &_sSDySo11CFStringRefaSiGMR);
  lazy protocol witness table accessor for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v14 = CTContentSizeCategoryForSlotStyle(a1);
  v15 = *a4;
  v16 = CTFontDescriptorCreateWithTextStyleAndAttributes();
  v17 = CTFontCreateWithFontDescriptor(v16, 0.0, 0);

  return v17;
}

CTFontRef specialized HighlightPillMetricVariant.senderFont.getter(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_SDyADypGtGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_SDyADypGtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23183D7E0;
  v3 = *MEMORY[0x277CC4950];
  *(inited + 32) = *MEMORY[0x277CC4950];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_yptGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_yptGMR);
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_23183D0C0;
  v5 = *MEMORY[0x277CC4948];
  *(v4 + 32) = *MEMORY[0x277CC4948];
  v6 = MEMORY[0x277D83B88];
  *(v4 + 40) = 32770;
  v7 = *MEMORY[0x277CC49B8];
  v8 = MEMORY[0x277CC49B0];
  *(v4 + 64) = v6;
  *(v4 + 72) = v7;
  v9 = *v8;
  *(v4 + 104) = MEMORY[0x277D85048];
  *(v4 + 80) = v9;
  v10 = v3;
  v11 = v5;
  v12 = v7;
  v13 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ypTt0g5Tf4g_n(v4);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11CFStringRefa_yptMd, &_sSo11CFStringRefa_yptMR);
  swift_arrayDestroy();
  *(inited + 40) = v13;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_SDyADypGTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (CFStringRef, [CFStringRef? : Any])(inited + 32, &_sSo11CFStringRefa_SDyABypGtMd, &_sSo11CFStringRefa_SDyABypGtMR);
  type metadata accessor for CFStringRef(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo11CFStringRefaypGMd, &_sSDySo11CFStringRefaypGMR);
  lazy protocol witness table accessor for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v15 = [a1 fontContentSizeCategory];
  v16 = *MEMORY[0x277CC4A40];
  v17 = CTFontDescriptorCreateWithTextStyleAndAttributes();
  v18 = CTFontCreateWithFontDescriptor(v17, 0.0, 0);

  return v18;
}

CTFontRef specialized HighlightPillMetricVariant.senderFont.getter(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_SDyADypGtGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_SDyADypGtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23183D7E0;
  v7 = *MEMORY[0x277CC4950];
  *(inited + 32) = *MEMORY[0x277CC4950];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_yptGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_yptGMR);
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_23183D0C0;
  v9 = *MEMORY[0x277CC4948];
  *(v8 + 32) = *MEMORY[0x277CC4948];
  v10 = MEMORY[0x277D83B88];
  *(v8 + 40) = 32770;
  v11 = *MEMORY[0x277CC49B8];
  v12 = MEMORY[0x277CC49B0];
  *(v8 + 64) = v10;
  *(v8 + 72) = v11;
  v13 = *v12;
  *(v8 + 104) = MEMORY[0x277D85048];
  *(v8 + 80) = v13;
  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ypTt0g5Tf4g_n(v8);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11CFStringRefa_yptMd, &_sSo11CFStringRefa_yptMR);
  swift_arrayDestroy();
  *(inited + 40) = v17;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_SDyADypGTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (CFStringRef, [CFStringRef? : Any])(inited + 32, &_sSo11CFStringRefa_SDyABypGtMd, &_sSo11CFStringRefa_SDyABypGtMR);
  type metadata accessor for CFStringRef(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo11CFStringRefaypGMd, &_sSDySo11CFStringRefaypGMR);
  lazy protocol witness table accessor for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v19 = [a1 fontContentSizeCategory];
  v20 = *a4;
  v21 = CTFontDescriptorCreateWithTextStyleAndAttributes();
  v22 = CTFontCreateWithFontDescriptor(v21, 0.0, 0);

  return v22;
}

double VisionPillMetric.maximumWidth.getter(void *a1)
{
  v1 = [a1 preferredContentSizeCategory];
  if ((v1 - 5) > 6)
  {
    return 340.0;
  }

  else
  {
    return dbl_23183F410[(v1 - 5)];
  }
}

double VisionPillMetric.labelHorizontalMargins.getter(void *a1, double a2)
{
  v4 = [a1 preferredContentSizeCategory];
  if ((v4 - 7) < 2)
  {
    if (a2 <= 380.0)
    {
      return 0.0;
    }

    goto LABEL_12;
  }

  if ((v4 - 10) < 2)
  {
    if (a2 < 466.0)
    {
      return 0.0;
    }

    goto LABEL_12;
  }

  if (v4 != 9 || a2 > 353.0)
  {
LABEL_12:
    v6 = [a1 preferredContentSizeCategory];
    if (v6 <= 0xB)
    {
      v7 = qword_23183F448[v6];
      v8 = qword_23183F5C8[v6];
    }
  }

  return 0.0;
}

BOOL VisionPillMetric.useDoubleLineLabel.getter(void *a1, double a2)
{
  v3 = [a1 preferredContentSizeCategory];
  v4 = a2 <= 353.0;
  if (v3 != 9)
  {
    v4 = 0;
  }

  if ((v3 - 10) >= 2)
  {
    v5 = v4;
  }

  else
  {
    v5 = a2 < 466.0;
  }

  if ((v3 - 7) >= 2)
  {
    return v5;
  }

  else
  {
    return a2 <= 380.0;
  }
}

double VisionPillMetric.avatarDiameter.getter(void *a1)
{
  v1 = [a1 preferredContentSizeCategory];
  result = 24.0;
  if ((v1 - 9) <= 2)
  {
    return dbl_23183F3F8[(v1 - 9)];
  }

  return result;
}

double VisionPillMetric.overlappedAvatarVisibleWidth.getter(void *a1)
{
  v2 = [a1 preferredContentSizeCategory];
  if (v2 > 0xB)
  {
    v3 = 19.92;
  }

  else
  {
    v3 = dbl_23183F508[v2];
  }

  v4 = [a1 displayScale];

  return SLRoundToScale(v3, v4);
}

BOOL VisionPillMetric.allowLineWrapForMultilineSingleSenderName.getter(void *a1, double a2)
{
  v4 = [a1 preferredContentSizeCategory];
  if ((v4 - 7) < 2)
  {
    v5 = 380.0;
    goto LABEL_8;
  }

  if ((v4 - 10) >= 2)
  {
    if (v4 != 9)
    {
      return 0;
    }

    v5 = 353.0;
LABEL_8:
    if (a2 <= v5)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (a2 >= 466.0)
  {
    return 0;
  }

LABEL_9:
  if ([a1 preferredContentSizeCategory] - 9 > 2)
  {
    return 0;
  }

  v6 = [a1 localization];
  if (!v6)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = MEMORY[0x231934530](v7);
  }

  v8 = [objc_allocWithZone(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier_];

  IsHyphenationAvailableForLocale = CFStringIsHyphenationAvailableForLocale(v8);
  return IsHyphenationAvailableForLocale != 0;
}

void specialized HighlightPillMetricVariant.chevronSize.getter(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, void))
{
  v6 = [a1 layoutDirection];
  v7 = a4(a1, 0);
  if (CTFontDescriptorCopyAttribute(v7, *MEMORY[0x277CC4938]))
  {
    if (v6 == 1)
    {
      v8 = 0xEC0000007466656CLL;
    }

    else
    {
      v8 = 0xED00007468676972;
    }

    type metadata accessor for CFNumberRef(0);
    v9 = swift_dynamicCastUnknownClassUnconditional();
    CGFloat.init(truncating:)();
    v11 = v10;

    v12 = MEMORY[0x231934530](0x2E6E6F7276656863, v8);

    v13 = SLDSystemVectorGlyphWithSlotStyle(a1, v12, 1, 5, v11);

    [v13 contentBounds];
  }

  else
  {
    __break(1u);
  }
}

double protocol witness for HighlightPillMetricVariant.maximumWidth.getter in conformance VisionPillMetric()
{
  v1 = [*v0 preferredContentSizeCategory];
  if ((v1 - 5) > 6)
  {
    return 340.0;
  }

  else
  {
    return dbl_23183F410[(v1 - 5)];
  }
}

double protocol witness for HighlightPillMetricVariant.labelHorizontalMargins.getter in conformance VisionPillMetric()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  v3 = [*v0 preferredContentSizeCategory];
  if ((v3 - 7) < 2)
  {
    if (v2 <= 380.0)
    {
      return 0.0;
    }

    goto LABEL_12;
  }

  if ((v3 - 10) < 2)
  {
    if (v2 < 466.0)
    {
      return 0.0;
    }

    goto LABEL_12;
  }

  if (v3 != 9 || v2 > 353.0)
  {
LABEL_12:
    v5 = [v1 preferredContentSizeCategory];
    if (v5 <= 0xB)
    {
      v6 = qword_23183F448[v5];
      v7 = qword_23183F5C8[v5];
    }
  }

  return 0.0;
}

double protocol witness for HighlightPillMetricVariant.avatarDiameter.getter in conformance VisionPillMetric()
{
  v1 = [*v0 preferredContentSizeCategory];
  result = 24.0;
  if (v1 <= 0xB)
  {
    return dbl_23183F4A8[v1];
  }

  return result;
}

double protocol witness for HighlightPillMetricVariant.overlappedAvatarVisibleWidth.getter in conformance VisionPillMetric()
{
  v1 = *v0;
  v2 = [*v0 preferredContentSizeCategory];
  if (v2 > 0xB)
  {
    v3 = 19.92;
  }

  else
  {
    v3 = dbl_23183F508[v2];
  }

  v4 = [v1 displayScale];

  return SLRoundToScale(v3, v4);
}

double protocol witness for HighlightPillMetricVariant.avatarContainerWidth.getter in conformance VisionPillMetric()
{
  v1 = *(v0 + 16);
  specialized HighlightPillMetricVariant.avatarContainerWidth.getter(*v0, *(v0 + 8), *(v0 + 24));
  return result;
}

BOOL protocol witness for HighlightPillMetricVariant.useDoubleLineLabel.getter in conformance VisionPillMetric()
{
  v1 = *(v0 + 16);
  v2 = [*v0 preferredContentSizeCategory];
  v3 = v1 <= 353.0;
  if (v2 != 9)
  {
    v3 = 0;
  }

  if ((v2 - 10) >= 2)
  {
    v4 = v3;
  }

  else
  {
    v4 = v1 < 466.0;
  }

  if ((v2 - 7) >= 2)
  {
    return v4;
  }

  else
  {
    return v1 <= 380.0;
  }
}

double VisionSafariBannerPillMetric.overlappedAvatarVisibleWidth.getter(void *a1)
{
  v1 = [a1 displayScale];

  return SLRoundToScale(19.92, v1);
}

uint64_t VisionPillMetric.chevronFontDescriptor.getter(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_SDyAD12CoreGraphics7CGFloatVGtGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_SDyAD12CoreGraphics7CGFloatVGtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23183D7E0;
  v3 = *MEMORY[0x277CC4950];
  *(inited + 32) = *MEMORY[0x277CC4950];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_12CoreGraphics7CGFloatVtGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_12CoreGraphics7CGFloatVtGMR);
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_23183D7E0;
  v5 = *MEMORY[0x277CC49B8];
  *(v4 + 32) = *MEMORY[0x277CC49B8];
  *(v4 + 40) = *MEMORY[0x277CC49B0];
  v6 = v3;
  v7 = v5;
  v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_12CoreGraphics7CGFloatVTt0g5Tf4g_n(v4);
  swift_setDeallocating();
  outlined destroy of (CFStringRef, [CFStringRef? : Any])(v4 + 32, &_sSo11CFStringRefa_12CoreGraphics7CGFloatVtMd, &_sSo11CFStringRefa_12CoreGraphics7CGFloatVtMR);
  *(inited + 40) = v8;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_SDyAD12CoreGraphics7CGFloatVGTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (CFStringRef, [CFStringRef? : Any])(inited + 32, &_sSo11CFStringRefa_SDyAB12CoreGraphics7CGFloatVGtMd, &_sSo11CFStringRefa_SDyAB12CoreGraphics7CGFloatVGtMR);
  type metadata accessor for CFStringRef(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo11CFStringRefa12CoreGraphics7CGFloatVGMd, &_sSDySo11CFStringRefa12CoreGraphics7CGFloatVGMR);
  lazy protocol witness table accessor for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v10 = [a1 fontContentSizeCategory];
  v11 = *MEMORY[0x277CC4A38];
  v12 = CTFontDescriptorCreateWithTextStyleAndAttributes();

  return v12;
}

CTFontRef VisionPillMetric.baseFont.getter(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_SDyAD12CoreGraphics7CGFloatVGtGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_SDyAD12CoreGraphics7CGFloatVGtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23183D7E0;
  v3 = *MEMORY[0x277CC4950];
  *(inited + 32) = *MEMORY[0x277CC4950];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_12CoreGraphics7CGFloatVtGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_12CoreGraphics7CGFloatVtGMR);
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_23183D7E0;
  v5 = *MEMORY[0x277CC49B8];
  *(v4 + 32) = *MEMORY[0x277CC49B8];
  *(v4 + 40) = *MEMORY[0x277CC49B0];
  v6 = v3;
  v7 = v5;
  v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_12CoreGraphics7CGFloatVTt0g5Tf4g_n(v4);
  swift_setDeallocating();
  outlined destroy of (CFStringRef, [CFStringRef? : Any])(v4 + 32, &_sSo11CFStringRefa_12CoreGraphics7CGFloatVtMd, &_sSo11CFStringRefa_12CoreGraphics7CGFloatVtMR);
  *(inited + 40) = v8;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_SDyAD12CoreGraphics7CGFloatVGTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (CFStringRef, [CFStringRef? : Any])(inited + 32, &_sSo11CFStringRefa_SDyAB12CoreGraphics7CGFloatVGtMd, &_sSo11CFStringRefa_SDyAB12CoreGraphics7CGFloatVGtMR);
  type metadata accessor for CFStringRef(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo11CFStringRefa12CoreGraphics7CGFloatVGMd, &_sSDySo11CFStringRefa12CoreGraphics7CGFloatVGMR);
  lazy protocol witness table accessor for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v10 = CTContentSizeCategoryForSlotStyle(a1);
  v11 = *MEMORY[0x277CC4A38];
  v12 = CTFontDescriptorCreateWithTextStyleAndAttributes();
  v13 = CTFontCreateWithFontDescriptor(v12, 0.0, 0);

  return v13;
}

CTFontRef VisionPillMetric.senderFont.getter(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_SDyAD12CoreGraphics7CGFloatVGtGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_SDyAD12CoreGraphics7CGFloatVGtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23183D7E0;
  v3 = *MEMORY[0x277CC4950];
  *(inited + 32) = *MEMORY[0x277CC4950];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_12CoreGraphics7CGFloatVtGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_12CoreGraphics7CGFloatVtGMR);
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_23183D7E0;
  v5 = *MEMORY[0x277CC49B8];
  *(v4 + 32) = *MEMORY[0x277CC49B8];
  *(v4 + 40) = *MEMORY[0x277CC49B0];
  v6 = v3;
  v7 = v5;
  v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_12CoreGraphics7CGFloatVTt0g5Tf4g_n(v4);
  swift_setDeallocating();
  outlined destroy of (CFStringRef, [CFStringRef? : Any])(v4 + 32, &_sSo11CFStringRefa_12CoreGraphics7CGFloatVtMd, &_sSo11CFStringRefa_12CoreGraphics7CGFloatVtMR);
  *(inited + 40) = v8;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_SDyAD12CoreGraphics7CGFloatVGTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (CFStringRef, [CFStringRef? : Any])(inited + 32, &_sSo11CFStringRefa_SDyAB12CoreGraphics7CGFloatVGtMd, &_sSo11CFStringRefa_SDyAB12CoreGraphics7CGFloatVGtMR);
  type metadata accessor for CFStringRef(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo11CFStringRefa12CoreGraphics7CGFloatVGMd, &_sSDySo11CFStringRefa12CoreGraphics7CGFloatVGMR);
  lazy protocol witness table accessor for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v10 = [a1 fontContentSizeCategory];
  v11 = *MEMORY[0x277CC4A38];
  v12 = CTFontDescriptorCreateWithTextStyleAndAttributes();
  v13 = CTFontCreateWithFontDescriptor(v12, 0.0, 0);

  return v13;
}

double protocol witness for HighlightPillMetricVariant.overlappedAvatarVisibleWidth.getter in conformance VisionSafariBannerPillMetric()
{
  v1 = [*v0 displayScale];

  return SLRoundToScale(19.92, v1);
}

void protocol witness for HighlightPillMetricVariant.avatarContainerWidth.getter in conformance VisionSafariBannerPillMetric()
{
  v1 = *(v0 + 24);
  if (v1 >= 3)
  {
    v1 = 3;
  }

  v2 = __OFSUB__(v1, 1);
  v3 = v1 - 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    v4 = SLRoundToScale(19.92, [*v0 displayScale]) * v3 + 24.0;
  }
}

double protocol witness for HighlightPillMetricVariant.chevronSize.getter in conformance VisionSafariBannerPillMetric()
{
  v1 = *(v0 + 16);
  specialized HighlightPillMetricVariant.chevronSize.getter(*v0, *(v0 + 8), *(v0 + 24), VisionSafariBannerPillMetric.chevronFontDescriptor.getter);
  return result;
}

uint64_t iOSPillMetric.maxImageCount.getter(void *a1)
{
  if ([a1 preferredContentSizeCategory] - 9 < 3)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

uint64_t iOSPillMetric.maxNameCount.getter(uint64_t a1, char a2)
{
  if (a2)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

double iOSPillMetric.maximumWidth.getter(void *a1)
{
  v1 = [a1 preferredContentSizeCategory];
  if ((v1 - 5) > 6)
  {
    return 250.0;
  }

  else
  {
    return dbl_23183F590[(v1 - 5)];
  }
}

double iOSPillMetric.labelHorizontalMargins.getter(void *a1, double a2)
{
  v4 = [a1 preferredContentSizeCategory];
  if ((v4 - 7) < 2)
  {
    if (a2 <= 280.0)
    {
      return 0.0;
    }

    goto LABEL_12;
  }

  if ((v4 - 10) < 2)
  {
    if (a2 < 343.0)
    {
      return 0.0;
    }

    goto LABEL_12;
  }

  if (v4 != 9 || a2 > 260.0)
  {
LABEL_12:
    v6 = [a1 preferredContentSizeCategory];
    if (v6 <= 0xB)
    {
      v7 = qword_23183F5C8[v6];
      v8 = qword_23183F628[v6];
    }
  }

  return 0.0;
}

BOOL iOSPillMetric.useDoubleLineLabel.getter(void *a1, double a2)
{
  v3 = [a1 preferredContentSizeCategory];
  v4 = a2 <= 260.0;
  if (v3 != 9)
  {
    v4 = 0;
  }

  if ((v3 - 10) >= 2)
  {
    v5 = v4;
  }

  else
  {
    v5 = a2 < 343.0;
  }

  if ((v3 - 7) >= 2)
  {
    return v5;
  }

  else
  {
    return a2 <= 280.0;
  }
}

double iOSPillMetric.avatarDiameter.getter(void *a1)
{
  v1 = [a1 preferredContentSizeCategory];
  result = 16.0;
  if ((v1 - 7) <= 4)
  {
    return dbl_23183F568[(v1 - 7)];
  }

  return result;
}

double iOSPillMetric.avatarOverlapKnockoutWidth.getter(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = [a1 preferredContentSizeCategory];
  v5 = 3;
  if ((v4 - 9) < 3)
  {
    v5 = 1;
  }

  if (v5 >= a3)
  {
    v5 = a3;
  }

  result = 0.0;
  if (v5 > 1)
  {
    return 1.0;
  }

  return result;
}

BOOL iOSPillMetric.allowLineWrapForMultilineSingleSenderName.getter(void *a1, double a2)
{
  v4 = [a1 preferredContentSizeCategory];
  if ((v4 - 7) < 2)
  {
    v5 = 280.0;
    goto LABEL_8;
  }

  if ((v4 - 10) >= 2)
  {
    if (v4 != 9)
    {
      return 0;
    }

    v5 = 260.0;
LABEL_8:
    if (a2 <= v5)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (a2 >= 343.0)
  {
    return 0;
  }

LABEL_9:
  if ([a1 preferredContentSizeCategory] - 9 > 2)
  {
    return 0;
  }

  v6 = [a1 localization];
  if (!v6)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = MEMORY[0x231934530](v7);
  }

  v8 = [objc_allocWithZone(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier_];

  IsHyphenationAvailableForLocale = CFStringIsHyphenationAvailableForLocale(v8);
  return IsHyphenationAvailableForLocale != 0;
}

double protocol witness for HighlightPillMetricVariant.maximumWidth.getter in conformance iOSPillMetric()
{
  v1 = [*v0 preferredContentSizeCategory];
  if ((v1 - 5) > 6)
  {
    return 250.0;
  }

  else
  {
    return dbl_23183F590[(v1 - 5)];
  }
}