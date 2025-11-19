uint64_t MLS.NegativeDeliveryOperation.deinit()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  outlined consume of Data._Representation(*(v0 + 16), *(v0 + 24));

  outlined consume of MLS.AllMember();
  v6 = *(v0 + 88);

  v7 = *(v0 + 104);

  v8 = OBJC_IVAR____TtCO15SecureMessaging3MLS25NegativeDeliveryOperation_triggeringError;
  v9 = type metadata accessor for MLS.MLSError();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = *(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS25NegativeDeliveryOperation_context + 8);
  v11 = *(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS25NegativeDeliveryOperation_context + 16);
  v12 = *(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS25NegativeDeliveryOperation_context + 24);
  v13 = *(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS25NegativeDeliveryOperation_context + 32);

  outlined consume of Data?(v11, v12);

  v14 = *(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS25NegativeDeliveryOperation_featureFlagsStore);

  v15 = OBJC_IVAR____TtCO15SecureMessaging3MLS25NegativeDeliveryOperation_logger;
  v16 = type metadata accessor for Logger();
  (*(*(v16 - 8) + 8))(v0 + v15, v16);
  return v0;
}

uint64_t MLS.NegativeDeliveryOperation.__deallocating_deinit()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  outlined consume of Data._Representation(*(v0 + 16), *(v0 + 24));

  outlined consume of MLS.AllMember();
  v6 = *(v0 + 88);

  v7 = *(v0 + 104);

  v8 = OBJC_IVAR____TtCO15SecureMessaging3MLS25NegativeDeliveryOperation_triggeringError;
  v9 = type metadata accessor for MLS.MLSError();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = *(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS25NegativeDeliveryOperation_context + 8);
  v11 = *(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS25NegativeDeliveryOperation_context + 16);
  v12 = *(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS25NegativeDeliveryOperation_context + 24);
  v13 = *(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS25NegativeDeliveryOperation_context + 32);

  outlined consume of Data?(v11, v12);

  v14 = *(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS25NegativeDeliveryOperation_featureFlagsStore);

  v15 = OBJC_IVAR____TtCO15SecureMessaging3MLS25NegativeDeliveryOperation_logger;
  v16 = type metadata accessor for Logger();
  (*(*(v16 - 8) + 8))(v0 + v15, v16);
  v17 = *(*v0 + 48);
  v18 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for MLS.RequiresGroupGroupOperation.membersRequiringKeyPackages(swiftMLSGroup:) in conformance MLS.NegativeDeliveryOperation(uint64_t a1)
{
  v4 = *(**v1 + 192);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = specialized KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v8(a1);
}

uint64_t protocol witness for MLS.RequiresGroupGroupOperation.perform(on:metricCollector:keyPackageResult:) in conformance MLS.NegativeDeliveryOperation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(**v4 + 200);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4);
}

uint64_t protocol witness for MLS.GroupOperation.group.getter in conformance MLS.NegativeDeliveryOperation()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);

  return v1;
}

uint64_t protocol witness for MLS.GroupOperation.context.getter in conformance MLS.NegativeDeliveryOperation@<X0>(void *a1@<X8>)
{
  v2 = (*v1 + OBJC_IVAR____TtCO15SecureMessaging3MLS25NegativeDeliveryOperation_context);
  v3 = v2[1];
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  *a1 = *v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;

  outlined copy of Data?(v4, v5);
}

uint64_t protocol witness for MLS.GroupOperation.logger.getter in conformance MLS.NegativeDeliveryOperation@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCO15SecureMessaging3MLS25NegativeDeliveryOperation_logger;
  v5 = type metadata accessor for Logger();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

unint64_t lazy protocol witness table accessor for type SMAFeatureFlagsKey and conformance SMAFeatureFlagsKey()
{
  result = lazy protocol witness table cache variable for type SMAFeatureFlagsKey and conformance SMAFeatureFlagsKey;
  if (!lazy protocol witness table cache variable for type SMAFeatureFlagsKey and conformance SMAFeatureFlagsKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SMAFeatureFlagsKey and conformance SMAFeatureFlagsKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SMAFeatureFlagsKey and conformance SMAFeatureFlagsKey;
  if (!lazy protocol witness table cache variable for type SMAFeatureFlagsKey and conformance SMAFeatureFlagsKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SMAFeatureFlagsKey and conformance SMAFeatureFlagsKey);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.SigningError and conformance MLS.SigningError()
{
  result = lazy protocol witness table cache variable for type MLS.SigningError and conformance MLS.SigningError;
  if (!lazy protocol witness table cache variable for type MLS.SigningError and conformance MLS.SigningError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SigningError and conformance MLS.SigningError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SigningError and conformance MLS.SigningError;
  if (!lazy protocol witness table cache variable for type MLS.SigningError and conformance MLS.SigningError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SigningError and conformance MLS.SigningError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SigningError and conformance MLS.SigningError;
  if (!lazy protocol witness table cache variable for type MLS.SigningError and conformance MLS.SigningError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SigningError and conformance MLS.SigningError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SigningError and conformance MLS.SigningError;
  if (!lazy protocol witness table cache variable for type MLS.SigningError and conformance MLS.SigningError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SigningError and conformance MLS.SigningError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SigningError and conformance MLS.SigningError;
  if (!lazy protocol witness table cache variable for type MLS.SigningError and conformance MLS.SigningError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SigningError and conformance MLS.SigningError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SigningError and conformance MLS.SigningError;
  if (!lazy protocol witness table cache variable for type MLS.SigningError and conformance MLS.SigningError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SigningError and conformance MLS.SigningError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SigningError and conformance MLS.SigningError;
  if (!lazy protocol witness table cache variable for type MLS.SigningError and conformance MLS.SigningError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SigningError and conformance MLS.SigningError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SigningError and conformance MLS.SigningError;
  if (!lazy protocol witness table cache variable for type MLS.SigningError and conformance MLS.SigningError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SigningError and conformance MLS.SigningError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SigningError and conformance MLS.SigningError;
  if (!lazy protocol witness table cache variable for type MLS.SigningError and conformance MLS.SigningError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SigningError and conformance MLS.SigningError);
  }

  return result;
}

uint64_t outlined init with take of MetricCollector.Event(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetricCollector.Event();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t instantiation function for generic protocol witness table for MLS.NegativeDeliveryOperation(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.MLSError and conformance MLS.MLSError(&lazy protocol witness table cache variable for type MLS.NegativeDeliveryOperation and conformance MLS.NegativeDeliveryOperation, type metadata accessor for MLS.NegativeDeliveryOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type MLS.MLSError and conformance MLS.MLSError(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for MLS.NegativeDeliveryOperation()
{
  result = type metadata singleton initialization cache for MLS.NegativeDeliveryOperation;
  if (!type metadata singleton initialization cache for MLS.NegativeDeliveryOperation)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for MLS.NegativeDeliveryOperation()
{
  result = type metadata accessor for MLS.MLSError();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for Logger();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t dispatch thunk of MLS.NegativeDeliveryOperation.membersRequiringKeyPackages(swiftMLSGroup:)(uint64_t a1)
{
  v4 = *(*v1 + 192);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v8(a1);
}

uint64_t dispatch thunk of MLS.NegativeDeliveryOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 200);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4);
}

uint64_t MLS.SwiftMLSGroupProtocol.expiredCredentialReplacements<A>(keyPackageResult:selfURI:selfKeyPackage:)(uint64_t *a1, void *a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 40) = a7;
  *(v8 + 48) = v7;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  v12 = type metadata accessor for MLS.Group.Group.ReplaceExpiredCredentialInput.Replacement();
  *(v8 + 56) = v12;
  v13 = *(v12 - 8);
  *(v8 + 64) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 72) = swift_task_alloc();
  *(v8 + 80) = swift_task_alloc();
  v15 = type metadata accessor for MLS.Client.KeyPackage();
  *(v8 + 88) = v15;
  v16 = *(v15 - 8);
  *(v8 + 96) = v16;
  v17 = *(v16 + 64) + 15;
  *(v8 + 104) = swift_task_alloc();
  *(v8 + 112) = swift_task_alloc();
  *(v8 + 120) = swift_task_alloc();
  *(v8 + 128) = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64) + 15;
  *(v8 + 136) = swift_task_alloc();
  *(v8 + 144) = swift_task_alloc();
  v19 = type metadata accessor for Date();
  *(v8 + 152) = v19;
  v20 = *(v19 - 8);
  *(v8 + 160) = v20;
  v21 = *(v20 + 64) + 15;
  *(v8 + 168) = swift_task_alloc();
  *(v8 + 176) = swift_task_alloc();
  *(v8 + 184) = swift_task_alloc();
  v22 = type metadata accessor for MLS.Identity.Credential();
  *(v8 + 192) = v22;
  v23 = *(v22 - 8);
  *(v8 + 200) = v23;
  v24 = *(v23 + 64) + 15;
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  v25 = type metadata accessor for MLS.Identity.SigningIdentity();
  *(v8 + 224) = v25;
  v26 = *(v25 - 8);
  *(v8 + 232) = v26;
  v27 = *(v26 + 64) + 15;
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = swift_task_alloc();
  v28 = swift_task_alloc();
  v29 = *a1;
  *(v8 + 264) = v28;
  *(v8 + 272) = v29;
  v30 = a2[1];
  *(v8 + 280) = *a2;
  *(v8 + 288) = v30;
  *(v8 + 296) = *a3;

  return MEMORY[0x2822009F8](MLS.SwiftMLSGroupProtocol.expiredCredentialReplacements<A>(keyPackageResult:selfURI:selfKeyPackage:), 0, 0);
}

uint64_t MLS.SwiftMLSGroupProtocol.expiredCredentialReplacements<A>(keyPackageResult:selfURI:selfKeyPackage:)()
{
  v1 = v0[5];
  v2 = v0[3];
  v9 = v0[34];
  v3 = type metadata accessor for MLS.KeyPackageRetrievalResult();
  v0[39] = MLS.KeyPackageRetrievalResult.uriToSwiftMLSKeyPackage.getter(v3);
  v4 = swift_task_alloc();
  v0[40] = v4;
  *v4 = v0;
  v4[1] = MLS.SwiftMLSGroupProtocol.expiredCredentialReplacements<A>(keyPackageResult:selfURI:selfKeyPackage:);
  v5 = v0[6];
  v6 = v0[4];
  v7 = v0[2];

  return MLS.SwiftMLSGroupProtocol.memberSigningIdentities.getter(v7, v6);
}

{
  v1 = 0;
  v2 = 0;
  v3 = 0;
  v4 = v0[41];
  v150 = v0[42];
  v6 = v4 + 56;
  v5 = *(v4 + 56);
  v7 = -1;
  v145 = v4;
  v8 = -1 << *(v4 + 32);
  v123 = v0[39];
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v0[20];
  v10 = v7 & v5;
  v11 = (63 - v8) >> 6;
  v153 = (v9 + 48);
  v131 = (v9 + 8);
  v132 = (v9 + 32);
  v142 = (v0[25] + 8);
  v121 = v0[12];
  v139 = v0[29];
  v135 = (v139 + 8);
  v122 = v0[8];
  v127 = MEMORY[0x277D84F90];
  v133 = v11;
  v134 = v6;
LABEL_4:
  while (2)
  {
    v124 = v2;
    v125 = v1;
    while (1)
    {
      if (!v10)
      {
        while (1)
        {
          v12 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            break;
          }

          if (v12 >= v11)
          {
            v75 = v0[41];
            v76 = v0[39];

            v77 = v124 & v125;
            goto LABEL_47;
          }

          v10 = *(v6 + 8 * v12);
          ++v3;
          if (v10)
          {
            v3 = v12;
            goto LABEL_12;
          }
        }

        __break(1u);
        goto LABEL_57;
      }

LABEL_12:
      v14 = v0[32];
      v13 = v0[33];
      v15 = v0[28];
      v17 = v0[18];
      v16 = v0[19];
      v18 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v130 = *(v139 + 16);
      v130(v13, *(v145 + 48) + *(v139 + 72) * (v18 | (v3 << 6)), v15);
      (*(v139 + 32))(v14, v13, v15);
      MLS.Identity.SigningIdentity.credential.getter();
      MLS.Identity.Credential.credentialNotAfter.getter();
      v19 = *v153;
      if ((*v153)(v17, 1, v16) == 1)
      {
        outlined destroy of Date?(v0[18]);
        goto LABEL_16;
      }

      v21 = v0[22];
      v20 = v0[23];
      v22 = v0[19];
      (*v132)(v20, v0[18], v22);
      Date.init()();
      v23 = static Date.< infix(_:_:)();
      v24 = *v131;
      (*v131)(v21, v22);
      v24(v20, v22);
      if (v23)
      {
        break;
      }

LABEL_16:
      v26 = v0[27];
      v27 = v0[17];
      MLS.Identity.Credential.participantInfoNotAfter.getter();
      if (v150)
      {
        v89 = v0[41];
        v90 = v0[39];
        v91 = v0[32];
        v93 = v0[27];
        v92 = v0[28];
        v94 = v0[24];

        (*v142)(v93, v94);
        (*v135)(v91, v92);
LABEL_51:

        goto LABEL_52;
      }

      v28 = v0[19];
      v29 = v0[17];
      v30 = v19(v29, 1, v28);
      v31 = v0[27];
      v32 = v0[24];
      if (v30 == 1)
      {
        (*v142)(v0[27], v0[24]);
        outlined destroy of Date?(v29);
        v150 = 0;
        goto LABEL_6;
      }

      v34 = v0[21];
      v33 = v0[22];
      (*v132)(v34, v29, v28);
      Date.init()();
      v128 = static Date.< infix(_:_:)();
      v35 = *v131;
      (*v131)(v33, v28);
      v35(v34, v28);
      v25 = *v142;
      (*v142)(v31, v32);
      v150 = 0;
      if (v128)
      {
        goto LABEL_19;
      }

LABEL_6:
      v11 = v133;
      v6 = v134;
      (*v135)(v0[32], v0[28]);
    }

    v25 = *v142;
    (*v142)(v0[27], v0[24]);
LABEL_19:
    v36 = v0[32];
    v37 = v0[26];
    v38 = v0[24];
    MLS.Identity.SigningIdentity.credential.getter();
    v39 = MLS.Identity.Credential.telURI.getter();
    result = (v25)(v37, v38);
    if (!v39)
    {
      goto LABEL_6;
    }

    v41 = *(v39 + 16);
    if (!v41)
    {
LABEL_55:
      v106 = v0[39];

      v107 = v0[41];
      v108 = v0[32];
      v109 = v0[28];

      lazy protocol witness table accessor for type MLS.SwiftMLSClientCoordinatorError and conformance MLS.SwiftMLSClientCoordinatorError();
      swift_allocError();
      *v110 = 6;
      *(v110 + 8) = 0;
      *(v110 + 16) = 0;
      swift_willThrow();

      (*v135)(v108, v109);
LABEL_52:
      v96 = v0[32];
      v95 = v0[33];
      v98 = v0[30];
      v97 = v0[31];
      v100 = v0[26];
      v99 = v0[27];
      v101 = v0[22];
      v102 = v0[23];
      v103 = v0[21];
      v138 = v0[18];
      v141 = v0[17];
      v144 = v0[16];
      v147 = v0[15];
      v149 = v0[14];
      v152 = v0[13];
      v104 = v0[9];
      v155 = v0[10];

      v105 = v0[1];

      return v105();
    }

    v42 = 0;
    v43 = (v39 + 40);
    while (1)
    {
      if (v42 >= *(v39 + 16))
      {
        __break(1u);
        return result;
      }

      v45 = *(v43 - 1);
      v44 = *v43;
      v46 = *(v123 + 16);

      if (v46)
      {
        v47 = v0[39];
        v48 = specialized __RawDictionaryStorage.find<A>(_:)(v45, v44, MEMORY[0x277D83758], specialized __RawDictionaryStorage.find<A>(_:hashValue:));
        if (v49)
        {
          v126 = v0[32];
          v119 = v0[31];
          v120 = v0[28];
          v62 = v0[15];
          v63 = v0[16];
          v64 = v0[14];
          v65 = v0[11];
          v129 = v0[10];
          v66 = v48;

          v67 = *(v123 + 56) + *(v121 + 72) * v66;
          v68 = *(v121 + 16);
          v68(v62, v67, v65);
          (*(v121 + 32))(v63, v62, v65);
          v130(v119, v126, v120);
          v68(v64, v63, v65);
          MLS.Group.Group.ReplaceExpiredCredentialInput.Replacement.init(target:newKeyPackage:)();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v127 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v127[2] + 1, 1, v127, &_ss23_ContiguousArrayStorageCy8SwiftMLS0E0O5GroupOAFC29ReplaceExpiredCredentialInputV11ReplacementVGMd, &_ss23_ContiguousArrayStorageCy8SwiftMLS0E0O5GroupOAFC29ReplaceExpiredCredentialInputV11ReplacementVGMR, MEMORY[0x277D6ABB0]);
          }

          v11 = v133;
          v70 = v127[2];
          v69 = v127[3];
          if (v70 >= v69 >> 1)
          {
            v127 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v69 > 1, v70 + 1, 1, v127, &_ss23_ContiguousArrayStorageCy8SwiftMLS0E0O5GroupOAFC29ReplaceExpiredCredentialInputV11ReplacementVGMd, &_ss23_ContiguousArrayStorageCy8SwiftMLS0E0O5GroupOAFC29ReplaceExpiredCredentialInputV11ReplacementVGMR, MEMORY[0x277D6ABB0]);
          }

          v71 = v0[32];
          v72 = v0[28];
          v73 = v0[10];
          v74 = v0[7];
          (*(v121 + 8))(v0[16], v0[11]);
          (*v135)(v71, v72);
          v127[2] = v70 + 1;
          (*(v122 + 32))(v127 + ((*(v122 + 80) + 32) & ~*(v122 + 80)) + *(v122 + 72) * v70, v73, v74);
          v2 = 0;
          v1 = 1;
          v6 = v134;
          if ((v124 & 1) == 0)
          {
            goto LABEL_4;
          }

          goto LABEL_57;
        }
      }

      if (v45 == v0[35] && v44 == v0[36])
      {
        break;
      }

      v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v51)
      {
        goto LABEL_33;
      }

      ++v42;
      v43 += 2;
      if (v41 == v42)
      {
        goto LABEL_55;
      }
    }

LABEL_33:

    v53 = v0[37];
    v52 = v0[38];
    v54 = v0[13];
    v130(v0[30], v0[32], v0[28]);
    outlined copy of Data._Representation(v53, v52);
    MLS.Client.KeyPackage.init(fromRaw:)();
    if (v150)
    {
      v113 = v0[41];
      v114 = v0[39];
      v115 = v0[32];
      v116 = v0[30];
      v117 = v0[28];

      v118 = *v135;
      (*v135)(v116, v117);
      v118(v115, v117);
      goto LABEL_51;
    }

    v55 = v0[30];
    v56 = v0[13];
    v57 = v0[9];
    MLS.Group.Group.ReplaceExpiredCredentialInput.Replacement.init(target:newKeyPackage:)();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v127 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v127[2] + 1, 1, v127, &_ss23_ContiguousArrayStorageCy8SwiftMLS0E0O5GroupOAFC29ReplaceExpiredCredentialInputV11ReplacementVGMd, &_ss23_ContiguousArrayStorageCy8SwiftMLS0E0O5GroupOAFC29ReplaceExpiredCredentialInputV11ReplacementVGMR, MEMORY[0x277D6ABB0]);
    }

    v59 = v127[2];
    v58 = v127[3];
    if (v59 >= v58 >> 1)
    {
      v127 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v58 > 1, v59 + 1, 1, v127, &_ss23_ContiguousArrayStorageCy8SwiftMLS0E0O5GroupOAFC29ReplaceExpiredCredentialInputV11ReplacementVGMd, &_ss23_ContiguousArrayStorageCy8SwiftMLS0E0O5GroupOAFC29ReplaceExpiredCredentialInputV11ReplacementVGMR, MEMORY[0x277D6ABB0]);
    }

    v60 = v0[9];
    v61 = v0[7];
    (*v135)(v0[32], v0[28]);
    v127[2] = v59 + 1;
    (*(v122 + 32))(v127 + ((*(v122 + 80) + 32) & ~*(v122 + 80)) + *(v122 + 72) * v59, v60, v61);
    v150 = 0;
    v1 = 0;
    v2 = 1;
    v11 = v133;
    v6 = v134;
    if ((v125 & 1) == 0)
    {
      continue;
    }

    break;
  }

LABEL_57:
  v111 = v0[41];
  v112 = v0[39];

  v77 = 1;
LABEL_47:
  v154 = v77;
  v79 = v0[32];
  v78 = v0[33];
  v81 = v0[30];
  v80 = v0[31];
  v83 = v0[26];
  v82 = v0[27];
  v85 = v0[22];
  v84 = v0[23];
  v86 = v0[21];
  v87 = v0[18];
  v136 = v0[17];
  v137 = v0[16];
  v140 = v0[15];
  v143 = v0[14];
  v146 = v0[13];
  v148 = v0[10];
  v151 = v0[9];

  v88 = v0[1];

  return v88(v127, v154 & 1);
}

uint64_t MLS.SwiftMLSGroupProtocol.expiredCredentialReplacements<A>(keyPackageResult:selfURI:selfKeyPackage:)(uint64_t a1)
{
  v3 = *(*v2 + 320);
  v4 = *v2;
  v4[41] = a1;
  v4[42] = v1;

  if (v1)
  {
    v5 = v4[39];

    v7 = v4[32];
    v6 = v4[33];
    v9 = v4[30];
    v8 = v4[31];
    v11 = v4[26];
    v10 = v4[27];
    v13 = v4[22];
    v12 = v4[23];
    v17 = v4[21];
    v18 = v4[18];
    v19 = v4[17];
    v20 = v4[16];
    v21 = v4[15];
    v22 = v4[14];
    v14 = v4[9];
    v23 = v4[13];
    v24 = v4[10];

    v15 = v4[1];

    return v15();
  }

  else
  {

    return MEMORY[0x2822009F8](MLS.SwiftMLSGroupProtocol.expiredCredentialReplacements<A>(keyPackageResult:selfURI:selfKeyPackage:), 0, 0);
  }
}

uint64_t MLS.SwiftMLSGroupProtocol.groupVersion.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v7 = *(a3 + 32);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v4[9] = v9;
  *v9 = v4;
  v9[1] = MLS.SwiftMLSGroupProtocol.groupVersion.getter;

  return v11(a2, a3);
}

uint64_t MLS.SwiftMLSGroupProtocol.groupVersion.getter(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = v1;
  v5 = v3[9];
  v6 = *v2;

  if (v1)
  {
    v7 = v6[1];

    return v7();
  }

  else
  {
    v14 = (v4[7] + 24);
    v15 = (*v14 + **v14);
    v9 = (*v14)[1];
    v10 = swift_task_alloc();
    v4[10] = v10;
    *v10 = v6;
    v10[1] = MLS.SwiftMLSGroupProtocol.groupVersion.getter;
    v11 = v4[7];
    v12 = v4[8];
    v13 = v4[6];

    return v15(v13, v11);
  }
}

{
  v2 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = a1;

  return MEMORY[0x2822009F8](MLS.SwiftMLSGroupProtocol.groupVersion.getter, 0, 0);
}

uint64_t MLS.SwiftMLSGroupProtocol.groupVersion.getter()
{
  v1 = *(v0 + 88);
  if (v1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 24);
    v3 = *(v0 + 40);
    if ((v2 & 0x100000000) != 0)
    {
      v2 = 1;
    }

    else
    {
      v2 = v2;
    }

    *v3 = v2;
    *(v3 + 8) = v2;
    *(v3 + 16) = v1;
    return (*(v0 + 8))();
  }

  return result;
}

uint64_t MLS.SwiftMLSGroupProtocol.memberSigningIdentities.getter(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for MLS.Group.Member();
  v2[2] = v5;
  v6 = *(v5 - 8);
  v2[3] = v6;
  v7 = *(v6 + 64) + 15;
  v2[4] = swift_task_alloc();
  v8 = type metadata accessor for MLS.Identity.SigningIdentity();
  v2[5] = v8;
  v9 = *(v8 - 8);
  v2[6] = v9;
  v10 = *(v9 + 64) + 15;
  v2[7] = swift_task_alloc();
  v11 = *(a2 + 16);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  v2[8] = v13;
  *v13 = v2;
  v13[1] = MLS.SwiftMLSGroupProtocol.memberSigningIdentities.getter;

  return v15(a1, a2);
}

uint64_t MLS.SwiftMLSGroupProtocol.memberSigningIdentities.getter(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 64);
  v5 = *v2;
  *(*v2 + 72) = a1;

  if (v1)
  {
    v6 = *(v3 + 56);
    v7 = *(v3 + 32);

    v8 = *(v5 + 8);

    return v8();
  }

  else
  {

    return MEMORY[0x2822009F8](MLS.SwiftMLSGroupProtocol.memberSigningIdentities.getter, 0, 0);
  }
}

uint64_t MLS.SwiftMLSGroupProtocol.memberSigningIdentities.getter()
{
  v1 = v0[9];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[6];
    v4 = v0[3];
    v25 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v5 = v25;
    v6 = *(v4 + 16);
    v4 += 16;
    v7 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v23 = *(v4 + 56);
    v24 = v6;
    v8 = (v4 - 8);
    do
    {
      v9 = v0[7];
      v10 = v0[4];
      v11 = v0[2];
      v24(v10, v7, v11);
      MLS.Group.Member.identity.getter();
      (*v8)(v10, v11);
      v13 = *(v25 + 16);
      v12 = *(v25 + 24);
      if (v13 >= v12 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v12 > 1, v13 + 1, 1);
      }

      v14 = v0[7];
      v15 = v0[5];
      *(v25 + 16) = v13 + 1;
      (*(v3 + 32))(v25 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v13, v14, v15);
      v7 += v23;
      --v2;
    }

    while (v2);
    v16 = v0[9];
  }

  else
  {
    v17 = v0[9];

    v5 = MEMORY[0x277D84F90];
  }

  v18 = v0[7];
  v19 = v0[4];
  v20 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC8SwiftMLS0C0O8IdentityO07SigningD0V_SayAJGTt0g5Tf4g_n(v5);

  v21 = v0[1];

  return v21(v20);
}

uint64_t MLS.SwiftMLSGroupProtocol.memberCredentials.getter(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for MLS.Identity.SigningIdentity();
  v2[2] = v5;
  v6 = *(v5 - 8);
  v2[3] = v6;
  v7 = *(v6 + 64) + 15;
  v2[4] = swift_task_alloc();
  v8 = type metadata accessor for MLS.Group.Member();
  v2[5] = v8;
  v9 = *(v8 - 8);
  v2[6] = v9;
  v10 = *(v9 + 64) + 15;
  v2[7] = swift_task_alloc();
  v11 = type metadata accessor for MLS.Identity.Credential();
  v2[8] = v11;
  v12 = *(v11 - 8);
  v2[9] = v12;
  v13 = *(v12 + 64) + 15;
  v2[10] = swift_task_alloc();
  v14 = *(a2 + 16);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  v2[11] = v16;
  *v16 = v2;
  v16[1] = MLS.SwiftMLSGroupProtocol.memberCredentials.getter;

  return v18(a1, a2);
}

uint64_t MLS.SwiftMLSGroupProtocol.memberCredentials.getter(uint64_t a1)
{
  v3 = *(*v2 + 88);
  v4 = *v2;
  v4[12] = a1;

  if (v1)
  {
    v5 = v4[10];
    v6 = v4[7];
    v7 = v4[4];

    v8 = v4[1];

    return v8();
  }

  else
  {

    return MEMORY[0x2822009F8](MLS.SwiftMLSGroupProtocol.memberCredentials.getter, 0, 0);
  }
}

uint64_t MLS.SwiftMLSGroupProtocol.memberCredentials.getter()
{
  v1 = v0[12];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[9];
    v4 = v0[6];
    v5 = v0[3];
    v31 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v6 = v31;
    v7 = *(v4 + 16);
    v4 += 16;
    v8 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v28 = *(v4 + 56);
    v29 = v7;
    v30 = v3;
    v26 = (v4 - 8);
    v27 = (v5 + 8);
    do
    {
      v9 = v0[10];
      v10 = v0[7];
      v12 = v0[4];
      v11 = v0[5];
      v13 = v0[2];
      v29(v10, v8, v11);
      MLS.Group.Member.identity.getter();
      MLS.Identity.SigningIdentity.credential.getter();
      (*v27)(v12, v13);
      (*v26)(v10, v11);
      v15 = *(v31 + 16);
      v14 = *(v31 + 24);
      if (v15 >= v14 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v14 > 1, v15 + 1, 1);
      }

      v16 = v0[10];
      v17 = v0[8];
      *(v31 + 16) = v15 + 1;
      (*(v30 + 32))(v31 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v15, v16, v17);
      v8 += v28;
      --v2;
    }

    while (v2);
    v18 = v0[12];
  }

  else
  {
    v19 = v0[12];

    v6 = MEMORY[0x277D84F90];
  }

  v20 = v0[10];
  v21 = v0[7];
  v22 = v0[4];
  v23 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC8SwiftMLS0C0O8IdentityO10CredentialO_SayAJGTt0g5Tf4g_n(v6);

  v24 = v0[1];

  return v24(v23);
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO10EventQueueC0G0VGMd, &_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO10EventQueueC0G0VGMR, type metadata accessor for MLS.EventQueue.Event);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO16PersistenceQueueC0H4ItemOGMd, &_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO16PersistenceQueueC0H4ItemOGMR, type metadata accessor for MLS.PersistenceQueue.QueueItem);
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3, char *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO9AllMemberOGMd, &_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO9AllMemberOGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO15PersistedMemberVGMd, &_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO15PersistedMemberVGMR);
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

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 1;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 5);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[32 * v10])
    {
      memmove(v15, v16, 32 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = *(v4 + 40);
  Hasher.init(_seed:)();
  if (a4 < 0)
  {
    MEMORY[0x266754DE0](1);
    String.hash(into:)();
    MEMORY[0x266754DE0](0);
    if (a4)
    {
      Hasher._combine(_:)(0);
      goto LABEL_7;
    }

    Hasher._combine(_:)(1u);
    v10 = a3;
  }

  else
  {
    MEMORY[0x266754DE0](0);
    String.hash(into:)();
    v10 = 0;
  }

  MEMORY[0x266754DE0](v10);
LABEL_7:
  v11 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, a3, a4, v11);
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  return specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, MEMORY[0x277D83758], specialized __RawDictionaryStorage.find<A>(_:hashValue:));
}

{
  return specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, MEMORY[0x277CC92D8], specialized __RawDictionaryStorage.find<A>(_:hashValue:));
}

unint64_t lazy protocol witness table accessor for type MLS.SwiftMLSClientCoordinatorError and conformance MLS.SwiftMLSClientCoordinatorError()
{
  result = lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError and conformance MLS.SwiftMLSClientCoordinatorError;
  if (!lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError and conformance MLS.SwiftMLSClientCoordinatorError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError and conformance MLS.SwiftMLSClientCoordinatorError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError and conformance MLS.SwiftMLSClientCoordinatorError;
  if (!lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError and conformance MLS.SwiftMLSClientCoordinatorError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError and conformance MLS.SwiftMLSClientCoordinatorError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError and conformance MLS.SwiftMLSClientCoordinatorError;
  if (!lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError and conformance MLS.SwiftMLSClientCoordinatorError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError and conformance MLS.SwiftMLSClientCoordinatorError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError and conformance MLS.SwiftMLSClientCoordinatorError;
  if (!lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError and conformance MLS.SwiftMLSClientCoordinatorError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError and conformance MLS.SwiftMLSClientCoordinatorError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError and conformance MLS.SwiftMLSClientCoordinatorError;
  if (!lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError and conformance MLS.SwiftMLSClientCoordinatorError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SwiftMLSClientCoordinatorError and conformance MLS.SwiftMLSClientCoordinatorError);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v3 = MEMORY[0x266754DC0](*(v1 + 40), a1);

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v5);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  MEMORY[0x266754DE0](a1);
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, Swift::Int))
{
  v8 = *(v4 + 40);
  Hasher.init(_seed:)();
  a3(v12, a1, a2);
  v9 = Hasher._finalize()();

  return a4(a1, a2, v9);
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, a3, a4, MEMORY[0x277D83758], specialized __RawDictionaryStorage.find<A>(_:hashValue:));
}

{
  return specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, a3, a4, MEMORY[0x277CC92D8], specialized __RawDictionaryStorage.find<A>(_:hashValue:));
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(_BYTE *, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, Swift::Int))
{
  v12 = *(v6 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x266754DE0](0);
  a5(v16, a3, a4);
  v13 = Hasher._finalize()();

  return a6(a1, a2, a3, a4, v13);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t *a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x266754DE0](0);
  Data.hash(into:)();
  MEMORY[0x266754E10](v8);
  MEMORY[0x266754E10](v9);
  v10 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v10);
}

{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x266754DE0](0);
  String.hash(into:)();
  String.hash(into:)();
  v10 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v10);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x266754DE0](0);
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v6);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v6 = -1 << *(v5 + 32);
  v7 = a5 & ~v6;
  if ((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v26 = ~v6;
    do
    {
      v12 = *(v28 + 48) + 32 * v7;
      v14 = *v12;
      v13 = *(v12 + 8);
      v15 = *(v12 + 16);
      v16 = *(v12 + 24);
      if (v16 < 0)
      {
        if ((a4 & 0x80) == 0)
        {
          goto LABEL_4;
        }

        if (v14 == a1 && v13 == a2)
        {
          outlined copy of MLS.AllMember();
          outlined copy of MLS.AllMember();
          outlined consume of MLS.AllMember();
          outlined consume of MLS.AllMember();
          if (v16)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v22 = *v12;
          v23 = *(v12 + 8);
          v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
          outlined copy of MLS.AllMember();
          outlined copy of MLS.AllMember();
          outlined consume of MLS.AllMember();
          outlined consume of MLS.AllMember();
          if ((v24 & 1) == 0)
          {
            goto LABEL_5;
          }

          if (v16)
          {
LABEL_20:
            if (a4)
            {
              return v7;
            }

            goto LABEL_5;
          }
        }

        if ((a4 & 1) == 0 && v15 == a3)
        {
          return v7;
        }
      }

      else
      {
        if (a4 < 0)
        {
LABEL_4:
          outlined copy of MLS.AllMember();
          outlined copy of MLS.AllMember();
          outlined consume of MLS.AllMember();
          outlined consume of MLS.AllMember();
          goto LABEL_5;
        }

        if (v14 == a1 && v13 == a2)
        {
          outlined copy of MLS.AllMember();
          outlined copy of MLS.AllMember();
          outlined consume of MLS.AllMember();
          outlined consume of MLS.AllMember();
          return v7;
        }

        v18 = *v12;
        v19 = *(v12 + 8);
        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
        outlined copy of MLS.AllMember();
        outlined copy of MLS.AllMember();
        outlined consume of MLS.AllMember();
        outlined consume of MLS.AllMember();
        if (v20)
        {
          return v7;
        }
      }

LABEL_5:
      v7 = (v7 + 1) & v26;
    }

    while (((*(v27 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      if (*v11 == a1 && v11[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

{
  v20 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID);
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v46[3] = *MEMORY[0x277D85DE8];
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = v3;
    v8 = a2;
    v9 = a1;
    v10 = ~v5;
    if (a1)
    {
      v11 = 0;
    }

    else
    {
      v11 = a2 == 0xC000000000000000;
    }

    v12 = !v11;
    v44 = v12;
    v13 = a2 >> 62;
    v14 = __OFSUB__(HIDWORD(a1), a1);
    v41 = v14;
    v40 = HIDWORD(a1) - a1;
    v42 = v10;
    v43 = BYTE6(a2);
    v37 = v4;
    while (1)
    {
      v15 = (*(v7 + 48) + 16 * v6);
      v17 = *v15;
      v16 = v15[1];
      v18 = v16 >> 62;
      if (v16 >> 62 == 3)
      {
        break;
      }

      if (v18 > 1)
      {
        if (v18 != 2)
        {
          goto LABEL_36;
        }

        v24 = *(v17 + 16);
        v23 = *(v17 + 24);
        v25 = __OFSUB__(v23, v24);
        v22 = v23 - v24;
        if (v25)
        {
          goto LABEL_64;
        }

        if (v13 <= 1)
        {
          goto LABEL_33;
        }
      }

      else if (v18)
      {
        LODWORD(v22) = HIDWORD(v17) - v17;
        if (__OFSUB__(HIDWORD(v17), v17))
        {
          goto LABEL_65;
        }

        v22 = v22;
        if (v13 <= 1)
        {
LABEL_33:
          v26 = v43;
          if (v13)
          {
            v26 = v40;
            if (v41)
            {
              goto LABEL_63;
            }
          }

          goto LABEL_39;
        }
      }

      else
      {
        v22 = BYTE6(v16);
        if (v13 <= 1)
        {
          goto LABEL_33;
        }
      }

LABEL_37:
      if (v13 != 2)
      {
        if (!v22)
        {
          goto LABEL_61;
        }

        goto LABEL_13;
      }

      v28 = *(v9 + 16);
      v27 = *(v9 + 24);
      v25 = __OFSUB__(v27, v28);
      v26 = v27 - v28;
      if (v25)
      {
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
      }

LABEL_39:
      if (v22 != v26)
      {
        goto LABEL_13;
      }

      if (v22 < 1)
      {
        goto LABEL_61;
      }

      if (v18 <= 1)
      {
        if (!v18)
        {
          v46[0] = v17;
          LOWORD(v46[1]) = v16;
          BYTE2(v46[1]) = BYTE2(v16);
          BYTE3(v46[1]) = BYTE3(v16);
          BYTE4(v46[1]) = BYTE4(v16);
          BYTE5(v46[1]) = BYTE5(v16);
          outlined copy of Data._Representation(v17, v16);
          closure #1 in static Data.== infix(_:_:)(v46, v9, v8, &v45);
          outlined consume of Data._Representation(v17, v16);
          if (v45)
          {
            goto LABEL_61;
          }

          v10 = v42;
          goto LABEL_13;
        }

        if (v17 >> 32 < v17)
        {
          goto LABEL_66;
        }

        outlined copy of Data._Representation(v17, v16);
        v31 = __DataStorage._bytes.getter();
        if (v31)
        {
          v33 = __DataStorage._offset.getter();
          if (__OFSUB__(v17, v33))
          {
            goto LABEL_69;
          }

          v31 += v17 - v33;
        }

        goto LABEL_58;
      }

      if (v18 == 2)
      {
        v30 = *(v17 + 16);
        v29 = *(v17 + 24);
        outlined copy of Data._Representation(v17, v16);
        v31 = __DataStorage._bytes.getter();
        if (v31)
        {
          v32 = __DataStorage._offset.getter();
          if (__OFSUB__(v30, v32))
          {
            goto LABEL_68;
          }

          v31 += v30 - v32;
        }

        if (__OFSUB__(v29, v30))
        {
          goto LABEL_67;
        }

LABEL_58:
        MEMORY[0x2667538A0]();
        v34 = v31;
        v9 = a1;
        v8 = a2;
        closure #1 in static Data.== infix(_:_:)(v34, a1, a2, v46);
        outlined consume of Data._Representation(v17, v16);
        if (v46[0])
        {
          goto LABEL_61;
        }

        v4 = v37;
        v10 = v42;
        goto LABEL_13;
      }

      memset(v46, 0, 14);
      outlined copy of Data._Representation(v17, v16);
      closure #1 in static Data.== infix(_:_:)(v46, v9, v8, &v45);
      outlined consume of Data._Representation(v17, v16);
      if (v45)
      {
        goto LABEL_61;
      }

LABEL_13:
      v6 = (v6 + 1) & v10;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_61;
      }
    }

    if (v17)
    {
      v19 = 0;
    }

    else
    {
      v19 = v16 == 0xC000000000000000;
    }

    v21 = !v19 || v13 < 3;
    if (((v21 | v44) & 1) == 0)
    {
      goto LABEL_61;
    }

LABEL_36:
    v22 = 0;
    if (v13 <= 1)
    {
      goto LABEL_33;
    }

    goto LABEL_37;
  }

LABEL_61:
  v35 = *MEMORY[0x277D85DE8];
  return v6;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v16 = v15[2];
      v17 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v19 = v16 == a3 && v17 == a4;
        if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v57[3] = *MEMORY[0x277D85DE8];
  v6 = -1 << *(v5 + 32);
  v7 = a5 & ~v6;
  v54 = v5 + 64;
  if ((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = v5;
    v9 = a4;
    v11 = a2;
    v12 = a1;
    v53 = ~v6;
    if (a3)
    {
      v13 = 0;
    }

    else
    {
      v13 = a4 == 0xC000000000000000;
    }

    v14 = !v13;
    v51 = v14;
    v15 = a4 >> 62;
    v16 = __OFSUB__(HIDWORD(a3), a3);
    v49 = v16;
    v48 = HIDWORD(a3) - a3;
    v50 = BYTE6(a4);
    v52 = a4 >> 62;
    while (1)
    {
      v17 = (*(v8 + 48) + 32 * v7);
      v19 = v17[2];
      v18 = v17[3];
      if (*v17 != v12 || v17[1] != v11)
      {
        v21 = v17[1];
        v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v15 = v52;
        v12 = a1;
        if ((v22 & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      v23 = v18 >> 62;
      if (v18 >> 62 == 3)
      {
        break;
      }

      if (v23 > 1)
      {
        if (v23 != 2)
        {
          goto LABEL_41;
        }

        v29 = *(v19 + 16);
        v28 = *(v19 + 24);
        v30 = __OFSUB__(v28, v29);
        v27 = v28 - v29;
        if (v30)
        {
          goto LABEL_70;
        }

        if (v15 <= 1)
        {
          goto LABEL_38;
        }
      }

      else if (v23)
      {
        LODWORD(v27) = HIDWORD(v19) - v19;
        if (__OFSUB__(HIDWORD(v19), v19))
        {
          goto LABEL_69;
        }

        v27 = v27;
        if (v15 <= 1)
        {
LABEL_38:
          v31 = v50;
          if (v15)
          {
            v31 = v48;
            if (v49)
            {
              __break(1u);
LABEL_68:
              __break(1u);
LABEL_69:
              __break(1u);
LABEL_70:
              __break(1u);
LABEL_71:
              __break(1u);
LABEL_72:
              __break(1u);
LABEL_73:
              __break(1u);
LABEL_74:
              __break(1u);
            }
          }

          goto LABEL_44;
        }
      }

      else
      {
        v27 = BYTE6(v18);
        if (v15 <= 1)
        {
          goto LABEL_38;
        }
      }

LABEL_42:
      if (v15 != 2)
      {
        if (!v27)
        {
          goto LABEL_67;
        }

        goto LABEL_13;
      }

      v33 = *(a3 + 16);
      v32 = *(a3 + 24);
      v30 = __OFSUB__(v32, v33);
      v31 = v32 - v33;
      if (v30)
      {
        goto LABEL_68;
      }

LABEL_44:
      if (v27 != v31)
      {
        goto LABEL_13;
      }

      if (v27 < 1)
      {
        goto LABEL_67;
      }

      if (v23 > 1)
      {
        if (v23 == 2)
        {
          v34 = *(v19 + 16);
          v45 = *(v19 + 24);
          outlined copy of Data._Representation(a3, v9);
          outlined copy of Data._Representation(a3, v9);
          outlined copy of Data._Representation(a3, v9);

          outlined copy of Data._Representation(v19, v18);
          v35 = __DataStorage._bytes.getter();
          if (v35)
          {
            v36 = __DataStorage._offset.getter();
            if (__OFSUB__(v34, v36))
            {
              goto LABEL_73;
            }

            v35 += v34 - v36;
          }

          if (__OFSUB__(v45, v34))
          {
            goto LABEL_72;
          }

          MEMORY[0x2667538A0]();
          v37 = v35;
          v9 = a4;
          closure #1 in static Data.== infix(_:_:)(v37, a3, a4, v57);
          outlined consume of Data._Representation(a3, a4);
          goto LABEL_63;
        }

        memset(v57, 0, 14);
        outlined copy of Data._Representation(a3, v9);
        outlined copy of Data._Representation(a3, v9);

        outlined copy of Data._Representation(v19, v18);
      }

      else
      {
        if (v23)
        {
          if (v19 >> 32 < v19)
          {
            goto LABEL_71;
          }

          outlined copy of Data._Representation(a3, v9);
          outlined copy of Data._Representation(a3, v9);
          outlined copy of Data._Representation(a3, v9);

          outlined copy of Data._Representation(v19, v18);
          v38 = __DataStorage._bytes.getter();
          if (v38)
          {
            v39 = __DataStorage._offset.getter();
            if (__OFSUB__(v19, v39))
            {
              goto LABEL_74;
            }

            v38 += v19 - v39;
          }

          MEMORY[0x2667538A0]();
          v40 = v38;
          v9 = a4;
          closure #1 in static Data.== infix(_:_:)(v40, a3, a4, v57);
          outlined consume of Data._Representation(a3, a4);
          v8 = v44;
LABEL_63:

          outlined consume of Data._Representation(v19, v18);
          outlined consume of Data._Representation(a3, v9);
          v41 = v57[0];
          outlined consume of Data._Representation(a3, v9);
          v11 = a2;
          v12 = a1;
          v15 = v52;
          if (v41)
          {
            goto LABEL_67;
          }

          goto LABEL_13;
        }

        v57[0] = v19;
        LOWORD(v57[1]) = v18;
        BYTE2(v57[1]) = BYTE2(v18);
        BYTE3(v57[1]) = BYTE3(v18);
        BYTE4(v57[1]) = BYTE4(v18);
        BYTE5(v57[1]) = BYTE5(v18);
        outlined copy of Data._Representation(a3, v9);
        outlined copy of Data._Representation(a3, v9);

        outlined copy of Data._Representation(v19, v18);
      }

      closure #1 in static Data.== infix(_:_:)(v57, a3, v9, &v56);

      outlined consume of Data._Representation(v19, v18);
      outlined consume of Data._Representation(a3, v9);
      outlined consume of Data._Representation(a3, v9);
      v12 = a1;
      v15 = v52;
      if (v56)
      {
        goto LABEL_67;
      }

LABEL_13:
      v7 = (v7 + 1) & v53;
      if (((*(v54 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_67;
      }
    }

    if (v19)
    {
      v24 = 0;
    }

    else
    {
      v24 = v18 == 0xC000000000000000;
    }

    v26 = !v24 || v15 < 3;
    if (((v26 | v51) & 1) == 0)
    {
      goto LABEL_67;
    }

LABEL_41:
    v27 = 0;
    if (v15 <= 1)
    {
      goto LABEL_38;
    }

    goto LABEL_42;
  }

LABEL_67:
  v42 = *MEMORY[0x277D85DE8];
  return v7;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t *a1, uint64_t a2)
{
  v62[3] = *MEMORY[0x277D85DE8];
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v59 = ~v4;
    v56 = a1[5];
    v57 = a1[4];
    v7 = a1[2];
    v6 = a1[3];
    if (v7)
    {
      v8 = 0;
    }

    else
    {
      v8 = v6 == 0xC000000000000000;
    }

    v9 = !v8;
    v55 = v9;
    v10 = v6 >> 62;
    v11 = __OFSUB__(HIDWORD(v7), v7);
    v51 = v11;
    v12 = *a1;
    v13 = a1[1];
    v50 = HIDWORD(v7) - v7;
    v52 = a1[3];
    v54 = BYTE6(v6);
    v47 = a1[2];
    v48 = v2 + 64;
    v58 = v6 >> 62;
    v60 = *a1;
    while (1)
    {
      v15 = (*(v2 + 48) + 48 * v5);
      v17 = v15[2];
      v16 = v15[3];
      v19 = v15[4];
      v18 = v15[5];
      if (*v15 != v12 || v15[1] != v13)
      {
        v21 = v15[1];
        v22 = v15[4];
        v23 = v13;
        v24 = v15[5];
        v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v18 = v24;
        v13 = v23;
        v19 = v22;
        v12 = v60;
        v10 = v58;
        if ((v25 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      v26 = v16 >> 62;
      if (v16 >> 62 == 3)
      {
        break;
      }

      if (v26 > 1)
      {
        if (v26 != 2)
        {
          goto LABEL_44;
        }

        v32 = *(v17 + 16);
        v31 = *(v17 + 24);
        v33 = __OFSUB__(v31, v32);
        v30 = v31 - v32;
        if (v33)
        {
          goto LABEL_80;
        }

        if (v10 > 1)
        {
          goto LABEL_45;
        }
      }

      else if (v26)
      {
        LODWORD(v30) = HIDWORD(v17) - v17;
        if (__OFSUB__(HIDWORD(v17), v17))
        {
          goto LABEL_79;
        }

        v30 = v30;
        if (v10 > 1)
        {
LABEL_45:
          if (v10 != 2)
          {
            if (v30)
            {
              goto LABEL_16;
            }

            goto LABEL_12;
          }

          v36 = *(v7 + 16);
          v35 = *(v7 + 24);
          v33 = __OFSUB__(v35, v36);
          v34 = v35 - v36;
          if (v33)
          {
            __break(1u);
LABEL_78:
            __break(1u);
LABEL_79:
            __break(1u);
LABEL_80:
            __break(1u);
LABEL_81:
            __break(1u);
LABEL_82:
            __break(1u);
LABEL_83:
            __break(1u);
LABEL_84:
            __break(1u);
          }

          goto LABEL_47;
        }
      }

      else
      {
        v30 = BYTE6(v16);
        if (v10 > 1)
        {
          goto LABEL_45;
        }
      }

LABEL_41:
      v34 = v54;
      if (v10)
      {
        v34 = v50;
        if (v51)
        {
          goto LABEL_78;
        }
      }

LABEL_47:
      if (v30 != v34)
      {
        goto LABEL_16;
      }

      if (v30 >= 1)
      {
        v53 = v18;
        if (v26 > 1)
        {
          v37 = v52;
          if (v26 == 2)
          {
            v38 = v7;
            v39 = *(v17 + 16);
            v40 = *(v17 + 24);
            outlined copy of Data._Representation(v38, v52);
            outlined copy of Data._Representation(v38, v52);
            outlined copy of Data._Representation(v38, v52);

            outlined copy of Data._Representation(v17, v16);
            v41 = __DataStorage._bytes.getter();
            if (v41)
            {
              v42 = __DataStorage._offset.getter();
              if (__OFSUB__(v39, v42))
              {
                goto LABEL_83;
              }

              v41 += v39 - v42;
            }

            if (__OFSUB__(v40, v39))
            {
              goto LABEL_82;
            }

            goto LABEL_67;
          }

          memset(v62, 0, 14);
          outlined copy of Data._Representation(v7, v52);
          outlined copy of Data._Representation(v7, v52);

          outlined copy of Data._Representation(v17, v16);
LABEL_69:
          closure #1 in static Data.== infix(_:_:)(v62, v7, v37, &v61);

          outlined consume of Data._Representation(v17, v16);
          outlined consume of Data._Representation(v7, v37);
          outlined consume of Data._Representation(v7, v37);
          v44 = v61;
        }

        else
        {
          v37 = v52;
          if (!v26)
          {
            v62[0] = v17;
            LOWORD(v62[1]) = v16;
            BYTE2(v62[1]) = BYTE2(v16);
            BYTE3(v62[1]) = BYTE3(v16);
            BYTE4(v62[1]) = BYTE4(v16);
            BYTE5(v62[1]) = BYTE5(v16);
            outlined copy of Data._Representation(v7, v52);
            outlined copy of Data._Representation(v7, v52);

            outlined copy of Data._Representation(v17, v16);
            goto LABEL_69;
          }

          if (v17 >> 32 < v17)
          {
            goto LABEL_81;
          }

          outlined copy of Data._Representation(v47, v52);
          outlined copy of Data._Representation(v47, v52);
          outlined copy of Data._Representation(v47, v52);

          outlined copy of Data._Representation(v17, v16);
          v41 = __DataStorage._bytes.getter();
          if (v41)
          {
            v43 = __DataStorage._offset.getter();
            if (__OFSUB__(v17, v43))
            {
              goto LABEL_84;
            }

            v41 += v17 - v43;
          }

LABEL_67:
          MEMORY[0x2667538A0]();
          v7 = v47;
          closure #1 in static Data.== infix(_:_:)(v41, v47, v52, v62);
          outlined consume of Data._Representation(v47, v52);

          outlined consume of Data._Representation(v17, v16);
          outlined consume of Data._Representation(v47, v52);
          v44 = LOBYTE(v62[0]);
          outlined consume of Data._Representation(v47, v52);
        }

        v3 = v48;
        v10 = v58;
        v12 = v60;
        if (v44 && v19 == v57)
        {
          v2 = v49;
          if (v53 == v56)
          {
            goto LABEL_75;
          }
        }

        else
        {
          v2 = v49;
        }

        goto LABEL_16;
      }

LABEL_12:
      if (v19 == v57 && v18 == v56)
      {
        goto LABEL_75;
      }

LABEL_16:
      v5 = (v5 + 1) & v59;
      if (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
      {
        goto LABEL_75;
      }
    }

    if (v17)
    {
      v27 = 0;
    }

    else
    {
      v27 = v16 == 0xC000000000000000;
    }

    v29 = !v27 || v10 < 3;
    if (((v29 | v55) & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_44:
    v30 = 0;
    if (v10 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_41;
  }

LABEL_75:
  v45 = *MEMORY[0x277D85DE8];
  return v5;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v19 = ~v3;
    v6 = *a1;
    v5 = a1[1];
    v21 = a1[3];
    v22 = a1[2];
    v7 = a1[4];
    v8 = a1[5];
    v9 = *(v2 + 48);
    do
    {
      v10 = (v9 + 48 * v4);
      v12 = v10[2];
      v11 = v10[3];
      v13 = v10[4];
      v14 = v10[5];
      v15 = *v10 == v6 && v10[1] == v5;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v16 = v12 == v22 && v11 == v21;
        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v17 = v13 == v7 && v14 == v8;
          if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }
        }
      }

      v4 = (v4 + 1) & v19;
    }

    while (((*(v20 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for MLS.ExpiredCredentialReplacementResult(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t storeEnumTagSinglePayload for MLS.ExpiredCredentialReplacementResult(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type UUID and conformance UUID(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t MLS.EncryptedRCS.DeliveryIMDNSigningInput.init(version:messageID:originalMessageID:failureReason:deliveryStatus:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int16 a6@<W5>, __int16 a7@<W6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 40) = a6;
  *(a8 + 42) = a7;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  return result;
}

__n128 MLS.EncryptedRCS.SigningInput.init(deliveryIMDN:messageID:)@<Q0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 10);
  *(a4 + 8) = a3;
  *(a4 + 16) = v4;
  *(a4 + 24) = *(a1 + 4);
  result = *(a1 + 12);
  *(a4 + 40) = result;
  *(a4 + 56) = v5;
  *a4 = a2;
  return result;
}

double MLS.SigningInput.init(encryptedRCSSigningInput:)@<D0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[1];
  v6[0] = *a1;
  v6[1] = v3;
  v7[0] = a1[2];
  *(v7 + 12) = *(a1 + 44);
  outlined init with take of MLS.SigningInput.ClientSigningInput(v6, v8);
  v4 = v8[1];
  *a2 = v8[0];
  a2[1] = v4;
  a2[2] = v9[0];
  result = *(v9 + 12);
  *(a2 + 44) = *(v9 + 12);
  return result;
}

uint64_t MLS.EncryptedRCS.Member.uri.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t MLS.EncryptedRCS.Member.platform.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

void *MLS.EncryptedRCS.Member.init(uri:platform:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v4 = result[1];
  *a4 = *result;
  *(a4 + 8) = v4;
  *(a4 + 16) = a2;
  *(a4 + 24) = a3 & 1;
  return result;
}

uint64_t MLS.EncryptedRCS.Member.allMember.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24) | 0x80;
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

uint64_t MLS.EncryptedRCS.Member.init(allMember:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  v3 = *(result + 16);
  v4 = *(result + 24);
  if (v4 < 0)
  {
    *a2 = *result;
    *(a2 + 8) = v2;
    *(a2 + 16) = v3;
    *(a2 + 24) = v4 & 1;
  }

  else
  {
    lazy protocol witness table accessor for type MLS.MemberError and conformance MLS.MemberError();
    swift_allocError();
    *v5 = 0;
    v5[1] = 0;
    swift_willThrow();
    return outlined consume of MLS.AllMember();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.MemberError and conformance MLS.MemberError()
{
  result = lazy protocol witness table cache variable for type MLS.MemberError and conformance MLS.MemberError;
  if (!lazy protocol witness table cache variable for type MLS.MemberError and conformance MLS.MemberError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.MemberError and conformance MLS.MemberError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.MemberError and conformance MLS.MemberError;
  if (!lazy protocol witness table cache variable for type MLS.MemberError and conformance MLS.MemberError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.MemberError and conformance MLS.MemberError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.MemberError and conformance MLS.MemberError;
  if (!lazy protocol witness table cache variable for type MLS.MemberError and conformance MLS.MemberError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.MemberError and conformance MLS.MemberError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.MemberError and conformance MLS.MemberError;
  if (!lazy protocol witness table cache variable for type MLS.MemberError and conformance MLS.MemberError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.MemberError and conformance MLS.MemberError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.MemberError and conformance MLS.MemberError;
  if (!lazy protocol witness table cache variable for type MLS.MemberError and conformance MLS.MemberError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.MemberError and conformance MLS.MemberError);
  }

  return result;
}

uint64_t MLS.EncryptedRCS.Member.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (v0[3])
  {
    MEMORY[0x2667545A0](v1, v2);
  }

  else
  {
    v3 = v0[2];
    MEMORY[0x2667545A0](v1, v2);
    MEMORY[0x2667545A0](46, 0xE100000000000000);
    v4 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2667545A0](v4);
  }

  return 779314034;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance MLS.EncryptedRCS.Member.CodingKeys()
{
  if (*v0)
  {
    result = 0x6D726F6674616C70;
  }

  else
  {
    result = 6910581;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.EncryptedRCS.Member.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 6910581 && a2 == 0xE300000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D726F6674616C70 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.EncryptedRCS.Member.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.EncryptedRCS.Member.CodingKeys and conformance MLS.EncryptedRCS.Member.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.EncryptedRCS.Member.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.EncryptedRCS.Member.CodingKeys and conformance MLS.EncryptedRCS.Member.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.EncryptedRCS.Member.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO6MemberV10CodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO6MemberV10CodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v13 - v6;
  v8 = *v1;
  v9 = v1[1];
  v13[0] = v1[2];
  v16 = *(v1 + 24);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.EncryptedRCS.Member.CodingKeys and conformance MLS.EncryptedRCS.Member.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = v8;
  v15 = v9;
  v17 = 0;
  lazy protocol witness table accessor for type URI and conformance URI();
  v11 = v13[1];
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (!v11)
  {
    LOBYTE(v14) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

void MLS.EncryptedRCS.Member.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  String.hash(into:)();
  MEMORY[0x266754DE0](0);
  if (v4 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x266754DE0](v3);
  }
}

Swift::Int MLS.EncryptedRCS.Member.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x266754DE0](0);
  if (v4 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x266754DE0](v3);
  }

  return Hasher._finalize()();
}

uint64_t MLS.EncryptedRCS.Member.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO6MemberV10CodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO6MemberV10CodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.EncryptedRCS.Member.CodingKeys and conformance MLS.EncryptedRCS.Member.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v20 = 0;
  lazy protocol witness table accessor for type URI and conformance URI();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v19;
  v17 = v18;
  LOBYTE(v18) = 1;
  v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v14 = v13;
  (*(v6 + 8))(v9, v5);
  *a2 = v17;
  *(a2 + 8) = v11;
  *(a2 + 16) = v12;
  *(a2 + 24) = v14 & 1;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for MLS.Member.uri.getter in conformance MLS.EncryptedRCS.Member@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t protocol witness for MLS.Member.allMember.getter in conformance MLS.EncryptedRCS.Member@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24) | 0x80;
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

uint64_t protocol witness for MLS.Member.init(allMember:) in conformance MLS.EncryptedRCS.Member@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  v3 = *(result + 16);
  v4 = *(result + 24);
  if (v4 < 0)
  {
    *a2 = *result;
    *(a2 + 8) = v2;
    *(a2 + 16) = v3;
    *(a2 + 24) = v4 & 1;
  }

  else
  {
    lazy protocol witness table accessor for type MLS.MemberError and conformance MLS.MemberError();
    swift_allocError();
    *v5 = 0;
    v5[1] = 0;
    swift_willThrow();
    return outlined consume of MLS.AllMember();
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MLS.EncryptedRCS.Member()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x266754DE0](0);
  if (v4 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x266754DE0](v3);
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance MLS.EncryptedRCS.Member()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  String.hash(into:)();
  MEMORY[0x266754DE0](0);
  if (v4 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x266754DE0](v3);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MLS.EncryptedRCS.Member()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x266754DE0](0);
  if (v4 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x266754DE0](v3);
  }

  return Hasher._finalize()();
}

uint64_t MLS.EncryptedRCS.AdditionalAuthenticatedData.messageID.getter()
{
  v1 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v1;
}

uint64_t MLS.EncryptedRCS.AdditionalAuthenticatedData.originalMessageID.getter()
{
  v1 = *(v0 + 32);
  outlined copy of Data?(v1, *(v0 + 40));
  return v1;
}

uint64_t MLS.EncryptedRCS.AdditionalAuthenticatedData.init(messageID:era:originalMessageID:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 24) = a3;
  *(a6 + 32) = a4;
  *(a6 + 40) = a5;
  if (HIDWORD(a3))
  {
    __break(1u);
  }

  else
  {
    *(a6 + 16) = a3;
  }

  return result;
}

uint64_t MLS.EncryptedRCS.AdditionalAuthenticatedData.init(messageID:smallEra:originalMessageID:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 32) = a4;
  *(a6 + 40) = a5;
  *(a6 + 24) = a3;
  return result;
}

uint64_t MLS.EncryptedRCS.AdditionalAuthenticatedData.description.getter()
{
  v1 = v0[1];
  v8[0] = *v0;
  v8[1] = v1;
  v8[2] = v0[2];
  v2 = closure #1 in MLS.EncryptedRCS.AdditionalAuthenticatedData.description.getter(v8);
  v4 = v3;
  _StringGuts.grow(_:)(28);

  v5 = Data.description.getter();
  MEMORY[0x2667545A0](v5);

  MEMORY[0x2667545A0](0x203A617265202CLL, 0xE700000000000000);
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2667545A0](v6);

  MEMORY[0x2667545A0](v2, v4);

  return 0x7373656D28444141;
}

unint64_t closure #1 in MLS.EncryptedRCS.AdditionalAuthenticatedData.description.getter(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >> 60 == 15)
  {
    return 0;
  }

  v3 = *(a1 + 32);
  outlined copy of Data._Representation(v3, v1);
  _StringGuts.grow(_:)(23);

  v4 = Data.description.getter();
  MEMORY[0x2667545A0](v4);

  outlined consume of Data?(v3, v1);
  return 0xD000000000000015;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys()
{
  v1 = 0x496567617373656DLL;
  v2 = 6386277;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0x6172456C6C616D73;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys and conformance MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys and conformance MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.EncryptedRCS.AdditionalAuthenticatedData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO27AdditionalAuthenticatedDataV10CodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO27AdditionalAuthenticatedDataV10CodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v22 = *(v1 + 16);
  v10 = *(v1 + 24);
  v17 = *(v1 + 32);
  v18 = v10;
  v16 = *(v1 + 40);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  outlined copy of Data._Representation(v8, v9);
  lazy protocol witness table accessor for type MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys and conformance MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v20 = v8;
  v21 = v9;
  v23 = 0;
  lazy protocol witness table accessor for type Data and conformance Data();
  v12 = v19;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  outlined consume of Data._Representation(v20, v21);
  if (!v12)
  {
    v13 = v17;
    v14 = v16;
    LOBYTE(v20) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v20) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v20 = v13;
    v21 = v14;
    v23 = 3;
    outlined copy of Data?(v13, v14);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of Data?(v20, v21);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t MLS.EncryptedRCS.AdditionalAuthenticatedData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO27AdditionalAuthenticatedDataV10CodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO27AdditionalAuthenticatedDataV10CodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys and conformance MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v22 = 0;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v19;
  v18 = v20;
  LOBYTE(v19) = 1;
  v21 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v19) = 2;
  v17 = KeyedDecodingContainer.decode(_:forKey:)();
  v22 = 3;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v12 = v19;
  v13 = v20;
  v14 = v11;
  *a2 = v11;
  v15 = v18;
  *(a2 + 8) = v18;
  *(a2 + 16) = v21;
  *(a2 + 24) = v17;
  *(a2 + 32) = v12;
  *(a2 + 40) = v13;
  outlined copy of Data._Representation(v14, v15);
  outlined copy of Data?(v12, v13);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  outlined consume of Data._Representation(v14, v15);
  return outlined consume of Data?(v12, v13);
}

uint64_t MLS.EncryptedRCS.SigningInputError.underlyingErrorDescription.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance MLS.EncryptedRCS.SigningInputError.ErrorType@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized MLS.EncryptedRCS.SigningInputError.ErrorType.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for Error._code.getter in conformance MLS.EncryptedRCS.SigningInputError.ErrorType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInputError.ErrorType and conformance MLS.EncryptedRCS.SigningInputError.ErrorType();
  v5 = lazy protocol witness table accessor for type Int and conformance Int();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance MLS.EncryptedRCS.SigningInputError.CodingKeys()
{
  if (*v0)
  {
    result = 0xD00000000000001ALL;
  }

  else
  {
    result = 1701869940;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.EncryptedRCS.SigningInputError.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000002651E8EB0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.EncryptedRCS.SigningInputError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInputError.CodingKeys and conformance MLS.EncryptedRCS.SigningInputError.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.EncryptedRCS.SigningInputError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInputError.CodingKeys and conformance MLS.EncryptedRCS.SigningInputError.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.EncryptedRCS.SigningInputError.encode(to:)(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO17SigningInputErrorV10CodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO17SigningInputErrorV10CodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInputError.CodingKeys and conformance MLS.EncryptedRCS.SigningInputError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = a2;
  v16 = 0;
  lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInputError.ErrorType and conformance MLS.EncryptedRCS.SigningInputError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    v15 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t protocol witness for VersatileError.underlyingErrorDescription.getter in conformance MLS.EncryptedRCS.SigningInputError()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

_BYTE *protocol witness for VersatileError.init(type:underlyingErrorDescription:) in conformance MLS.EncryptedRCS.SigningInputError@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t protocol witness for Error._domain.getter in conformance MLS.EncryptedRCS.SigningInputError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInputError and conformance MLS.EncryptedRCS.SigningInputError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance MLS.EncryptedRCS.SigningInputError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInputError and conformance MLS.EncryptedRCS.SigningInputError();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance MLS.EncryptedRCS.SigningInputError@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized MLS.EncryptedRCS.SigningInputError.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t MLS.EncryptedRCS.SigningInput.messageID.getter()
{
  v1 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v1;
}

uint64_t MLS.EncryptedRCS.SigningInput.contentType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  return outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v2, v3, v4, v5, v6, v7, outlined copy of Data._Representation, outlined copy of Data?);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys()
{
  v1 = 0x4979616C70736964;
  if (*v0 != 1)
  {
    v1 = 0x6E617254656C6966;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x79726576696C6564;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.EncryptedRCS.SigningInput.ContentType.DeliveryIMDNCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInput.ContentType.DeliveryIMDNCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.DeliveryIMDNCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.EncryptedRCS.SigningInput.ContentType.DeliveryIMDNCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInput.ContentType.DeliveryIMDNCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.DeliveryIMDNCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.EncryptedRCS.SigningInput.ContentType.DisplayIMDNCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInput.ContentType.DisplayIMDNCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.DisplayIMDNCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.EncryptedRCS.SigningInput.ContentType.DisplayIMDNCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInput.ContentType.DisplayIMDNCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.DisplayIMDNCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.EncryptedRCS.SigningInput.ContentType.DeliveryIMDNCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.EncryptedRCS.SigningInput.ContentType.FileTransferCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInput.ContentType.FileTransferCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.FileTransferCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.EncryptedRCS.SigningInput.ContentType.FileTransferCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInput.ContentType.FileTransferCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.FileTransferCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.EncryptedRCS.SigningInput.ContentType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO12SigningInputV11ContentTypeO22FileTransferCodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO12SigningInputV11ContentTypeO22FileTransferCodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMR);
  v39 = *(v3 - 8);
  v40 = v3;
  v4 = *(v39 + 64);
  MEMORY[0x28223BE20](v3);
  v38 = &v33 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO12SigningInputV11ContentTypeO21DisplayIMDNCodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO12SigningInputV11ContentTypeO21DisplayIMDNCodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMR);
  v36 = *(v6 - 8);
  v37 = v6;
  v7 = *(v36 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO12SigningInputV11ContentTypeO22DeliveryIMDNCodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO12SigningInputV11ContentTypeO22DeliveryIMDNCodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMR);
  v11 = *(v10 - 8);
  v34 = v10;
  v35 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v33 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO12SigningInputV11ContentTypeO10CodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO12SigningInputV11ContentTypeO10CodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMR);
  v45 = *(v15 - 8);
  v46 = v15;
  v16 = *(v45 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v33 - v17;
  v19 = v1[1];
  v43 = *v1;
  v44 = v19;
  v20 = v1[2];
  v21 = v1[4];
  v41 = v1[3];
  v42 = v21;
  v22 = *(v1 + 10);
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v24 = (v20 >> 60) & 3;
  if (v24)
  {
    if (v24 == 1)
    {
      LOBYTE(v47) = 1;
      lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInput.ContentType.DisplayIMDNCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.DisplayIMDNCodingKeys();
      v25 = v46;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v47 = v43;
      v48 = v44;
      v49 = v20 & 0xCFFFFFFFFFFFFFFFLL;
      v50 = v41;
      v51 = v42;
      LOWORD(v52) = v22;
      lazy protocol witness table accessor for type MLS.EncryptedRCS.DisplayIMDNSigningInput and conformance MLS.EncryptedRCS.DisplayIMDNSigningInput();
      v26 = v37;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v36 + 8))(v9, v26);
    }

    else
    {
      v30 = v20 & 0xCFFFFFFFFFFFFFFFLL;
      LOBYTE(v47) = 2;
      lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInput.ContentType.FileTransferCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.FileTransferCodingKeys();
      v31 = v38;
      v25 = v46;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v47 = v43;
      v48 = v44;
      v49 = v30;
      lazy protocol witness table accessor for type MLS.EncryptedRCS.FileTransferSigningInput and conformance MLS.EncryptedRCS.FileTransferSigningInput();
      v32 = v40;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v39 + 8))(v31, v32);
    }

    return (*(v45 + 8))(v18, v25);
  }

  else
  {
    LOBYTE(v47) = 0;
    lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInput.ContentType.DeliveryIMDNCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.DeliveryIMDNCodingKeys();
    v27 = v46;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v47 = v43;
    v48 = v44;
    v49 = v20;
    v50 = v41;
    v51 = v42;
    v52 = v22;
    lazy protocol witness table accessor for type MLS.EncryptedRCS.DeliveryIMDNSigningInput and conformance MLS.EncryptedRCS.DeliveryIMDNSigningInput();
    v28 = v34;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v35 + 8))(v14, v28);
    return (*(v45 + 8))(v18, v27);
  }
}

uint64_t MLS.EncryptedRCS.SigningInput.ContentType.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO12SigningInputV11ContentTypeO22FileTransferCodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO12SigningInputV11ContentTypeO22FileTransferCodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMR);
  v47 = *(v43 - 8);
  v3 = *(v47 + 64);
  MEMORY[0x28223BE20](v43);
  v48 = &v43 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO12SigningInputV11ContentTypeO21DisplayIMDNCodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO12SigningInputV11ContentTypeO21DisplayIMDNCodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMR);
  v6 = *(v5 - 8);
  v45 = v5;
  v46 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v43 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO12SigningInputV11ContentTypeO22DeliveryIMDNCodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO12SigningInputV11ContentTypeO22DeliveryIMDNCodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMR);
  v44 = *(v10 - 8);
  v11 = *(v44 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v43 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO12SigningInputV11ContentTypeO10CodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO12SigningInputV11ContentTypeO10CodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMR);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v43 - v17;
  v19 = a1[3];
  v20 = a1[4];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys();
  v21 = v50;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v21)
  {
    v50 = v15;
    v23 = v48;
    v22 = v49;
    v24 = KeyedDecodingContainer.allKeys.getter();
    v25 = (2 * *(v24 + 16)) | 1;
    v56 = v24;
    v57 = v24 + 32;
    v58 = 0;
    v59 = v25;
    v26 = specialized Collection<>.popFirst()();
    if (v26 == 3 || v58 != v59 >> 1)
    {
      v30 = type metadata accessor for DecodingError();
      swift_allocError();
      v31 = v18;
      v33 = v32;
      v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
      *v33 = &type metadata for MLS.EncryptedRCS.SigningInput.ContentType;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v30 - 8) + 104))(v33, *MEMORY[0x277D84160], v30);
      swift_willThrow();
      (*(v50 + 8))(v31, v14);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v26)
      {
        if (v26 == 1)
        {
          LOBYTE(v51) = 1;
          lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInput.ContentType.DisplayIMDNCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.DisplayIMDNCodingKeys();
          v27 = v9;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v28 = v50;
          lazy protocol witness table accessor for type MLS.EncryptedRCS.DisplayIMDNSigningInput and conformance MLS.EncryptedRCS.DisplayIMDNSigningInput();
          v29 = v45;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v46 + 8))(v27, v29);
          (*(v28 + 8))(v18, v14);
          swift_unknownObjectRelease();
          v38 = v51;
          v39 = v52;
          v40 = v54;
          v41 = v55;
          v42 = v53 | 0x1000000000000000;
        }

        else
        {
          LOBYTE(v51) = 2;
          lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInput.ContentType.FileTransferCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.FileTransferCodingKeys();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v36 = v50;
          lazy protocol witness table accessor for type MLS.EncryptedRCS.FileTransferSigningInput and conformance MLS.EncryptedRCS.FileTransferSigningInput();
          v37 = v43;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v47 + 8))(v23, v37);
          (*(v36 + 8))(v18, v14);
          swift_unknownObjectRelease();
          v41 = 0;
          v38 = v51;
          v39 = v52;
          v42 = v53 | 0x2000000000000000;
          v40 = 0uLL;
        }
      }

      else
      {
        LOBYTE(v51) = 0;
        lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInput.ContentType.DeliveryIMDNCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.DeliveryIMDNCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        lazy protocol witness table accessor for type MLS.EncryptedRCS.DeliveryIMDNSigningInput and conformance MLS.EncryptedRCS.DeliveryIMDNSigningInput();
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v44 + 8))(v13, v10);
        (*(v50 + 8))(v18, v14);
        swift_unknownObjectRelease();
        v38 = v51;
        v39 = v52;
        v42 = v53;
        v40 = v54;
        v41 = v55;
      }

      *v22 = v38;
      *(v22 + 8) = v39;
      *(v22 + 16) = v42;
      *(v22 + 24) = v40;
      *(v22 + 40) = v41;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v60);
}

unint64_t MLS.EncryptedRCS.SigningInput.description.getter()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = (*(v0 + 32) >> 60) & 3;
  if (v6)
  {
    v8 = *(v0 + 24);
    if (v6 == 1)
    {
      v11 = *(v0 + 40);
      v13 = *(v0 + 48);
      return MLS.EncryptedRCS.DisplayIMDNSigningInput.description.getter();
    }

    else
    {
      return MLS.EncryptedRCS.FileTransferSigningInput.description.getter();
    }
  }

  else
  {
    v9 = *(v0 + 24);
    v10 = *(v0 + 32);
    v12 = *(v0 + 40);
    v14 = *(v0 + 48);
    return MLS.EncryptedRCS.DeliveryIMDNSigningInput.description.getter();
  }
}

uint64_t MLS.EncryptedRCS.DeliveryIMDNSigningInput.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v5 = *(v0 + 3);
  v4 = *(v0 + 4);
  v6 = v0[20];
  v13 = v0[21];
  outlined copy of Data?(v5, v4);
  _StringGuts.grow(_:)(102);
  MEMORY[0x2667545A0](0xD000000000000016, 0x80000002651E8DD0);
  v7 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2667545A0](v7);

  MEMORY[0x2667545A0](0x67617373656D202CLL, 0xED0000203A444965);
  v8 = Data.description.getter();
  MEMORY[0x2667545A0](v8);

  MEMORY[0x2667545A0](0xD000000000000015, 0x80000002651E8DF0);
  if (v4 >> 60 == 15)
  {
    v5 = 0;
    v4 = 0xC000000000000000;
  }

  v9 = Data.description.getter();
  MEMORY[0x2667545A0](v9);

  outlined consume of Data._Representation(v5, v4);
  MEMORY[0x2667545A0](0xD000000000000011, 0x80000002651E8770);
  v10 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2667545A0](v10);

  MEMORY[0x2667545A0](0xD000000000000012, 0x80000002651E8E10);
  v11 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2667545A0](v11);

  MEMORY[0x2667545A0](41, 0xE100000000000000);
  return 0;
}

uint64_t MLS.EncryptedRCS.DisplayIMDNSigningInput.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v5 = *(v0 + 3);
  v4 = *(v0 + 4);
  v6 = v0[20];
  outlined copy of Data?(v5, v4);
  _StringGuts.grow(_:)(81);
  MEMORY[0x2667545A0](0xD000000000000015, 0x80000002651E8E30);
  v7 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2667545A0](v7);

  MEMORY[0x2667545A0](0x67617373656D202CLL, 0xED0000203A444965);
  v8 = Data.description.getter();
  MEMORY[0x2667545A0](v8);

  MEMORY[0x2667545A0](0xD000000000000015, 0x80000002651E8DF0);
  if (v4 >> 60 == 15)
  {
    v5 = 0;
    v4 = 0xC000000000000000;
  }

  v9 = Data.description.getter();
  MEMORY[0x2667545A0](v9);

  outlined consume of Data._Representation(v5, v4);
  MEMORY[0x2667545A0](0xD000000000000011, 0x80000002651E8E50);
  v10 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2667545A0](v10);

  MEMORY[0x2667545A0](41, 0xE100000000000000);
  return 0;
}

unint64_t MLS.EncryptedRCS.FileTransferSigningInput.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  _StringGuts.grow(_:)(40);

  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2667545A0](v4);

  MEMORY[0x2667545A0](0x67617373656D202CLL, 0xED0000203A444965);
  v5 = Data.description.getter();
  MEMORY[0x2667545A0](v5);

  MEMORY[0x2667545A0](41, 0xE100000000000000);
  return 0xD000000000000016;
}

__n128 MLS.EncryptedRCS.SigningInput.init(displayIMDN:messageID:)@<Q0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 1);
  v5 = a1[20];
  v6 = *(a1 + 2) | 0x1000000000000000;
  *(a4 + 16) = *a1;
  *(a4 + 24) = v4;
  *(a4 + 32) = v6;
  result = *(a1 + 12);
  *(a4 + 40) = result;
  *(a4 + 56) = v5;
  *a4 = a2;
  *(a4 + 8) = a3;
  return result;
}

double MLS.EncryptedRCS.SigningInput.init(deliveryIMDN:)@<D0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 10);
  *(a2 + 16) = *a1;
  *(a2 + 24) = *(a1 + 4);
  *(a2 + 40) = *(a1 + 12);
  *(a2 + 56) = v2;
  result = 0.0;
  *a2 = xmmword_2651B68A0;
  return result;
}

double MLS.EncryptedRCS.SigningInput.init(displayIMDN:)@<D0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 1);
  v3 = a1[20];
  v4 = *(a1 + 2) | 0x1000000000000000;
  *(a2 + 16) = *a1;
  *(a2 + 24) = v2;
  *(a2 + 32) = v4;
  *(a2 + 40) = *(a1 + 12);
  *(a2 + 56) = v3;
  result = 0.0;
  *a2 = xmmword_2651B68A0;
  return result;
}

double MLS.EncryptedRCS.SigningInput.init(fileTransfer:)@<D0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 1);
  v3 = *(a1 + 2) | 0x2000000000000000;
  *(a2 + 16) = *a1;
  *(a2 + 24) = v2;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 32) = v3;
  *(a2 + 56) = 0;
  result = 0.0;
  *a2 = xmmword_2651B68A0;
  return result;
}

uint64_t MLS.EncryptedRCS.SigningInput.verifiableDerivedContent.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for MLS.VerifiableDerivedContentVersion();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v11 = &v22 - v10;
  v13 = *(v1 + 16);
  v12 = *(v1 + 24);
  v15 = *(v1 + 32);
  v14 = *(v1 + 40);
  v16 = *(v1 + 48);
  v17 = *(v1 + 56);
  v18 = (v15 >> 60) & 3;
  if (v18)
  {
    if (v18 == 1)
    {
      v24 = *(v1 + 16);
      v25 = v12;
      v26 = v15 & 0xCFFFFFFFFFFFFFFFLL;
      v27 = v14;
      v28 = v16;
      LOWORD(v29) = v17;
      return MLS.EncryptedRCS.DisplayIMDNSigningInput.verifiableDerivedContent.getter(a1);
    }

    else
    {
      v20 = v8;
      v23 = v16;
      v21 = v9;
      outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v13, v12, v15, v14, v16, v17, outlined copy of Data._Representation, outlined copy of Data?);
      outlined copy of Data._Representation(v12, v15 & 0xCFFFFFFFFFFFFFFFLL);
      MLS.MlsClientFailureReason.init(rawValue:)();
      (*(v21 + 16))(v7, v11, v20);
      a1[3] = type metadata accessor for MLS.VerifiableFileTransfer();
      a1[4] = lazy protocol witness table accessor for type MLS.VerifiableFileTransfer and conformance MLS.VerifiableFileTransfer(&lazy protocol witness table cache variable for type MLS.VerifiableFileTransfer and conformance MLS.VerifiableFileTransfer, MEMORY[0x277D6AAA0]);
      __swift_allocate_boxed_opaque_existential_1(a1);
      MLS.VerifiableFileTransfer.init(version:messageID:)();
      outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v13, v12, v15, v14, v23, v17, outlined consume of Data._Representation, outlined consume of Data?);
      return (*(v21 + 8))(v11, v20);
    }
  }

  else
  {
    v24 = *(v1 + 16);
    v25 = v12;
    v26 = v15;
    v27 = v14;
    v28 = v16;
    v29 = v17;
    return MLS.EncryptedRCS.DeliveryIMDNSigningInput.verifiableDerivedContent.getter(a1);
  }
}

uint64_t MLS.EncryptedRCS.DeliveryIMDNSigningInput.verifiableDerivedContent.getter@<X0>(uint64_t *a1@<X8>)
{
  v44 = a1;
  v2 = type metadata accessor for MLS.MlsClientFailureReason();
  v42 = *(v2 - 8);
  v43 = v2;
  v3 = *(v42 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v41 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v45 = v35 - v6;
  v46 = type metadata accessor for MLS.DeliveryNotificationStatus();
  v40 = *(v46 - 8);
  v7 = *(v40 + 64);
  v8 = MEMORY[0x28223BE20](v46);
  v37 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v35 - v10;
  v12 = type metadata accessor for MLS.VerifiableDerivedContentVersion();
  v36 = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v35 - v18;
  v20 = *(v1 + 1);
  v38 = *(v1 + 2);
  v39 = v20;
  v21 = *(v1 + 3);
  v22 = *(v1 + 4);
  v23 = *v1;
  v24 = v1[21];
  v25 = v1[20];
  outlined copy of Data._Representation(v20, v38);
  outlined copy of Data?(v21, v22);
  MLS.MlsClientFailureReason.init(rawValue:)();
  MLS.MlsClientFailureReason.init(rawValue:)();
  v26 = v45;
  MLS.MlsClientFailureReason.init(rawValue:)();
  (*(v13 + 16))(v17, v19, v12);
  v27 = v40;
  (*(v40 + 16))(v37, v11, v46);
  if (v22 >> 60 == 15)
  {
    v28 = 0;
  }

  else
  {
    v28 = v21;
  }

  v29 = 0xC000000000000000;
  if (v22 >> 60 != 15)
  {
    v29 = v22;
  }

  v35[1] = v29;
  v35[2] = v28;
  v30 = v42;
  v31 = v43;
  (*(v42 + 16))(v41, v26, v43);
  v32 = type metadata accessor for MLS.VerifiableDeliveryImdn();
  v33 = v44;
  v44[3] = v32;
  v33[4] = lazy protocol witness table accessor for type MLS.VerifiableFileTransfer and conformance MLS.VerifiableFileTransfer(&lazy protocol witness table cache variable for type MLS.VerifiableDeliveryImdn and conformance MLS.VerifiableDeliveryImdn, MEMORY[0x277D6AA90]);
  __swift_allocate_boxed_opaque_existential_1(v33);
  MLS.VerifiableDeliveryImdn.init(version:deliveryNotificationStatus:contentMessageId:originalContentMessageId:mlsClientFailureReason:)();
  (*(v30 + 8))(v45, v31);
  (*(v27 + 8))(v11, v46);
  return (*(v13 + 8))(v19, v36);
}

uint64_t MLS.EncryptedRCS.DisplayIMDNSigningInput.verifiableDerivedContent.getter@<X0>(uint64_t *a1@<X8>)
{
  v30 = a1;
  v29 = type metadata accessor for MLS.DisplayNotificationStatus();
  v2 = *(v29 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v29);
  v28 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - v6;
  v8 = type metadata accessor for MLS.VerifiableDerivedContentVersion();
  v25 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v25 - v14;
  v16 = *(v1 + 1);
  v26 = *(v1 + 2);
  v27 = v16;
  v17 = *(v1 + 3);
  v18 = *(v1 + 4);
  v19 = *v1;
  v20 = v1[20];
  outlined copy of Data._Representation(v16, v26);
  outlined copy of Data?(v17, v18);
  MLS.MlsClientFailureReason.init(rawValue:)();
  MLS.MlsClientFailureReason.init(rawValue:)();
  (*(v9 + 16))(v13, v15, v8);
  v21 = v29;
  (*(v2 + 16))(v28, v7, v29);
  v22 = type metadata accessor for MLS.VerifiableDisplayImdn();
  v23 = v30;
  v30[3] = v22;
  v23[4] = lazy protocol witness table accessor for type MLS.VerifiableFileTransfer and conformance MLS.VerifiableFileTransfer(&lazy protocol witness table cache variable for type MLS.VerifiableDisplayImdn and conformance MLS.VerifiableDisplayImdn, MEMORY[0x277D6AA80]);
  __swift_allocate_boxed_opaque_existential_1(v23);
  MLS.VerifiableDisplayImdn.init(version:displayNotificationStatus:contentMessageId:originalContentMessageId:)();
  (*(v2 + 8))(v7, v21);
  return (*(v9 + 8))(v15, v25);
}

uint64_t MLS.EncryptedRCS.FileTransferSigningInput.verifiableDerivedContent.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for MLS.VerifiableDerivedContentVersion();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  v11 = *(v1 + 1);
  v12 = *(v1 + 2);
  v13 = *v1;
  outlined copy of Data._Representation(v11, v12);
  MLS.MlsClientFailureReason.init(rawValue:)();
  (*(v4 + 16))(v8, v10, v3);
  a1[3] = type metadata accessor for MLS.VerifiableFileTransfer();
  a1[4] = lazy protocol witness table accessor for type MLS.VerifiableFileTransfer and conformance MLS.VerifiableFileTransfer(&lazy protocol witness table cache variable for type MLS.VerifiableFileTransfer and conformance MLS.VerifiableFileTransfer, MEMORY[0x277D6AAA0]);
  __swift_allocate_boxed_opaque_existential_1(a1);
  MLS.VerifiableFileTransfer.init(version:messageID:)();
  return (*(v4 + 8))(v10, v3);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance MLS.EncryptedRCS.SigningInput.CodingKeys()
{
  if (*v0)
  {
    result = 0x54746E65746E6F63;
  }

  else
  {
    result = 0x496567617373656DLL;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.EncryptedRCS.SigningInput.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x496567617373656DLL && a2 == 0xE900000000000044;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x54746E65746E6F63 && a2 == 0xEB00000000657079)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.EncryptedRCS.SigningInput.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInput.CodingKeys and conformance MLS.EncryptedRCS.SigningInput.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.EncryptedRCS.SigningInput.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInput.CodingKeys and conformance MLS.EncryptedRCS.SigningInput.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.EncryptedRCS.SigningInput.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO12SigningInputV10CodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO12SigningInputV10CodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMR);
  v19 = *(v4 - 8);
  v5 = *(v19 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v10 = *(v1 + 16);
  v17 = *(v1 + 24);
  v18 = v10;
  v11 = *(v1 + 32);
  v15 = *(v1 + 40);
  v16 = v11;
  v14 = *(v1 + 48);
  v26 = *(v1 + 56);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  outlined copy of Data._Representation(v8, v9);
  lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInput.CodingKeys and conformance MLS.EncryptedRCS.SigningInput.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v20 = v8;
  v21 = v9;
  v27 = 0;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  outlined consume of Data._Representation(v20, v21);
  if (!v2)
  {
    v20 = v18;
    v21 = v17;
    v22 = v16;
    v23 = v15;
    v24 = v14;
    v25 = v26;
    v27 = 1;
    outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v18, v17, v16, v15, v14, v26, outlined copy of Data._Representation, outlined copy of Data?);
    lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInput.ContentType and conformance MLS.EncryptedRCS.SigningInput.ContentType();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v20, v21, v22, v23, v24, v25, outlined consume of Data._Representation, outlined consume of Data?);
  }

  return (*(v19 + 8))(v7, v4);
}

uint64_t MLS.EncryptedRCS.SigningInput.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO12SigningInputV10CodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO12SigningInputV10CodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInput.CodingKeys and conformance MLS.EncryptedRCS.SigningInput.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v20[0]) = 0;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v12 = v22;
  v11 = v23;
  v33 = 1;
  lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInput.ContentType and conformance MLS.EncryptedRCS.SigningInput.ContentType();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v13 = v28;
  v14 = v29;
  v19 = v30;
  v32 = v31;
  *&v20[0] = v12;
  *(&v20[0] + 1) = v11;
  v20[1] = v28;
  *v21 = v29;
  *&v21[16] = v30;
  *&v21[24] = v31;
  v15 = v20[0];
  v16 = v28;
  v17 = v29;
  *(a2 + 44) = *&v21[12];
  a2[1] = v16;
  a2[2] = v17;
  *a2 = v15;
  outlined init with copy of MLS.EncryptedRCS.SigningInput(v20, &v22);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v22 = v12;
  v23 = v11;
  v24 = v13;
  v25 = v14;
  v26 = v19;
  v27 = v32;
  return outlined destroy of MLS.EncryptedRCS.SigningInput(&v22);
}

unint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.EncryptedRCS.SigningInput()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = (*(v0 + 32) >> 60) & 3;
  if (v6)
  {
    v8 = *(v0 + 24);
    if (v6 == 1)
    {
      v11 = *(v0 + 40);
      v13 = *(v0 + 48);
      return MLS.EncryptedRCS.DisplayIMDNSigningInput.description.getter();
    }

    else
    {
      return MLS.EncryptedRCS.FileTransferSigningInput.description.getter();
    }
  }

  else
  {
    v9 = *(v0 + 24);
    v10 = *(v0 + 32);
    v12 = *(v0 + 40);
    v14 = *(v0 + 48);
    return MLS.EncryptedRCS.DeliveryIMDNSigningInput.description.getter();
  }
}

uint64_t MLS.EncryptedRCS.DeliveryIMDNSigningInput.messageID.getter()
{
  v1 = *(v0 + 8);
  outlined copy of Data._Representation(v1, *(v0 + 16));
  return v1;
}

uint64_t MLS.EncryptedRCS.DeliveryIMDNSigningInput.originalMessageID.getter()
{
  v1 = *(v0 + 24);
  outlined copy of Data?(v1, *(v0 + 32));
  return v1;
}

double MLS.EncryptedRCS.DeliveryIMDNSigningInput.init(version:messageID:failureReason:deliveryStatus:)@<D0>(__int16 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int16 a4@<W3>, __int16 a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 40) = a4;
  *(a6 + 42) = a5;
  result = 0.0;
  *(a6 + 24) = xmmword_2651B5F50;
  return result;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys()
{
  v1 = *v0;
  v2 = 0x6E6F6973726576;
  v3 = 0xD000000000000011;
  v4 = 0x526572756C696166;
  if (v1 != 3)
  {
    v4 = 0x79726576696C6564;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x496567617373656DLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys and conformance MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys and conformance MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.EncryptedRCS.DeliveryIMDNSigningInput.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO24DeliveryIMDNSigningInputV10CodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO24DeliveryIMDNSigningInputV10CodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v17 - v6;
  v9 = *(v1 + 1);
  v8 = *(v1 + 2);
  v10 = *(v1 + 4);
  v19 = *(v1 + 3);
  v20 = v8;
  v18 = v10;
  v24 = v1[20];
  v17[3] = v1[21];
  v11 = a1[4];
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys and conformance MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v22) = 0;
  v13 = v21;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v13)
  {
    v15 = v18;
    v14 = v19;
    v22 = v9;
    v23 = v20;
    v25 = 1;
    outlined copy of Data._Representation(v9, v20);
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of Data._Representation(v22, v23);
    v22 = v14;
    v23 = v15;
    v25 = 2;
    outlined copy of Data?(v14, v15);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of Data?(v22, v23);
    LOBYTE(v22) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v22) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t MLS.EncryptedRCS.DeliveryIMDNSigningInput.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO24DeliveryIMDNSigningInputV10CodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO24DeliveryIMDNSigningInputV10CodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys and conformance MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v22) = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v25 = 1;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v20 = v22;
  v21 = v23;
  v25 = 2;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v18 = v23;
  v19 = v22;
  LOBYTE(v22) = 3;
  v24 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v22) = 4;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  *a2 = v11;
  v15 = v20;
  v14 = v21;
  *(a2 + 8) = v20;
  *(a2 + 16) = v14;
  v17 = v18;
  v16 = v19;
  *(a2 + 24) = v19;
  *(a2 + 32) = v17;
  *(a2 + 40) = v24;
  *(a2 + 42) = v12;
  outlined copy of Data._Representation(v15, v14);
  outlined copy of Data?(v16, v17);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  outlined consume of Data._Representation(v15, v14);
  return outlined consume of Data?(v16, v17);
}

uint64_t MLS.EncryptedRCS.DisplayIMDNSigningInput.messageID.getter()
{
  v1 = *(v0 + 8);
  outlined copy of Data._Representation(v1, *(v0 + 16));
  return v1;
}

uint64_t MLS.EncryptedRCS.DisplayIMDNSigningInput.originalMessageID.getter()
{
  v1 = *(v0 + 24);
  outlined copy of Data?(v1, *(v0 + 32));
  return v1;
}

double MLS.EncryptedRCS.DisplayIMDNSigningInput.init(version:messageID:displayNotificationStatus:)@<D0>(__int16 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int16 a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 40) = a4;
  result = 0.0;
  *(a5 + 24) = xmmword_2651B5F50;
  return result;
}

uint64_t MLS.EncryptedRCS.DisplayIMDNSigningInput.init(version:messageID:originalMessageID:displayNotificationStatus:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int16 a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 40) = a6;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  return result;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys()
{
  v1 = 0x6E6F6973726576;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000019;
  }

  if (*v0)
  {
    v1 = 0x496567617373656DLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys and conformance MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys and conformance MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.EncryptedRCS.DisplayIMDNSigningInput.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO23DisplayIMDNSigningInputV10CodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO23DisplayIMDNSigningInputV10CodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - v6;
  v8 = *(v1 + 1);
  v9 = *(v1 + 2);
  v10 = *(v1 + 4);
  v18 = *(v1 + 3);
  v19 = v8;
  v17 = v10;
  v23 = v1[20];
  v11 = a1[4];
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys and conformance MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v21) = 0;
  v13 = v20;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v13)
  {
    v14 = v17;
    v15 = v18;
    v21 = v19;
    v22 = v9;
    v24 = 1;
    outlined copy of Data._Representation(v19, v9);
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of Data._Representation(v21, v22);
    v21 = v15;
    v22 = v14;
    v24 = 2;
    outlined copy of Data?(v15, v14);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of Data?(v21, v22);
    LOBYTE(v21) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t MLS.EncryptedRCS.DisplayIMDNSigningInput.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO23DisplayIMDNSigningInputV10CodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO23DisplayIMDNSigningInputV10CodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys and conformance MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v22) = 0;
  v24 = KeyedDecodingContainer.decode(_:forKey:)();
  v25 = 1;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v12 = v22;
  v11 = v23;
  v25 = 2;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v19 = v22;
  v20 = v23;
  v21 = v11;
  LOBYTE(v22) = 3;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  *a2 = v24;
  v15 = v20;
  v14 = v21;
  *(a2 + 8) = v12;
  *(a2 + 16) = v14;
  v16 = v19;
  *(a2 + 24) = v19;
  *(a2 + 32) = v15;
  *(a2 + 40) = v13;
  outlined copy of Data._Representation(v12, v14);
  outlined copy of Data?(v16, v15);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  outlined consume of Data._Representation(v12, v14);
  return outlined consume of Data?(v16, v15);
}

uint64_t MLS.EncryptedRCS.FileTransferSigningInput.messageID.getter()
{
  v1 = *(v0 + 8);
  outlined copy of Data._Representation(v1, *(v0 + 16));
  return v1;
}

uint64_t MLS.EncryptedRCS.FileTransferSigningInput.init(version:messageID:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t static MLS.EncryptedRCS.FileTransferSigningInput.== infix(_:_:)(unsigned __int16 *a1, unsigned __int16 *a2)
{
  if (*a1 == *a2)
  {
    return specialized static Data.== infix(_:_:)(*(a1 + 1), *(a1 + 2), *(a2 + 1), *(a2 + 2));
  }

  else
  {
    return 0;
  }
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance MLS.EncryptedRCS.FileTransferSigningInput.CodingKeys()
{
  if (*v0)
  {
    result = 0x496567617373656DLL;
  }

  else
  {
    result = 0x6E6F6973726576;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.EncryptedRCS.FileTransferSigningInput.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x496567617373656DLL && a2 == 0xE900000000000044)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.EncryptedRCS.FileTransferSigningInput.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.EncryptedRCS.FileTransferSigningInput.CodingKeys and conformance MLS.EncryptedRCS.FileTransferSigningInput.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.EncryptedRCS.FileTransferSigningInput.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.EncryptedRCS.FileTransferSigningInput.CodingKeys and conformance MLS.EncryptedRCS.FileTransferSigningInput.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.EncryptedRCS.FileTransferSigningInput.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO24FileTransferSigningInputV10CodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO24FileTransferSigningInputV10CodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v13 - v6;
  v8 = *(v1 + 2);
  v13[0] = *(v1 + 1);
  v9 = a1[4];
  v10 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.EncryptedRCS.FileTransferSigningInput.CodingKeys and conformance MLS.EncryptedRCS.FileTransferSigningInput.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v14) = 0;
  v11 = v13[1];
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v11)
  {
    v14 = v13[0];
    v15 = v8;
    v16 = 1;
    outlined copy of Data._Representation(v13[0], v8);
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of Data._Representation(v14, v15);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t MLS.EncryptedRCS.FileTransferSigningInput.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO24FileTransferSigningInputV10CodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO24FileTransferSigningInputV10CodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.EncryptedRCS.FileTransferSigningInput.CodingKeys and conformance MLS.EncryptedRCS.FileTransferSigningInput.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    LOBYTE(v14) = 0;
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    v15 = 1;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    v12 = v14;
    *a2 = v11;
    *(a2 + 8) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance MLS.EncryptedRCS.FileTransferSigningInput(unsigned __int16 *a1, unsigned __int16 *a2)
{
  if (*a1 == *a2)
  {
    return specialized static Data.== infix(_:_:)(*(a1 + 1), *(a1 + 2), *(a2 + 1), *(a2 + 2));
  }

  else
  {
    return 0;
  }
}

uint64_t MLS.EncryptedRCS.Platform.rawValue.getter()
{
  if (*v0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t MLS.EncryptedRCS.Platform.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (result == 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MLS.EncryptedRCS.Platform()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x266754DE0](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MLS.EncryptedRCS.Platform()
{
  if (*v0)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  return MEMORY[0x266754DE0](v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MLS.EncryptedRCS.Platform()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x266754DE0](v2);
  return Hasher._finalize()();
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance MLS.EncryptedRCS.Platform@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance MLS.EncryptedRCS.Platform(uint64_t *a1@<X8>)
{
  v2 = 1;
  if (*v1)
  {
    v2 = 2;
  }

  *a1 = v2;
}

uint64_t static MLS.EncryptedRCS.configuration<A, B, C>(communicator:delegate:selfMember:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>)
{
  v10 = *a3;
  v9 = a3[1];
  v11 = a3[2];
  v12 = *(a3 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO23NoOpKeyPackageExchangerCy_AC12EncryptedRCSO6MemberVGMd, &_s15SecureMessaging3MLSO23NoOpKeyPackageExchangerCy_AC12EncryptedRCSO6MemberVGMR);
  v16 = swift_allocObject();
  v13 = lazy protocol witness table accessor for type MLS.NoOpKeyPackageExchanger<MLS.EncryptedRCS.Member> and conformance MLS.NoOpKeyPackageExchanger<A>();
  type metadata accessor for MLS.NoOpPersister();
  v14 = swift_allocObject();
  v19[0] = v10;
  v19[1] = v9;
  v19[2] = v11;
  v20 = v12;
  lazy protocol witness table accessor for type MLS.EncryptedRCS.Member and conformance MLS.EncryptedRCS.Member();
  swift_getAssociatedConformanceWitness();
  MLS.Configuration.init(clientIdentifier:communicator:delegate:keyPackageExchanger:persister:runInDaemon:selfMember:)(a1, a4, a2, a5, v16, v13, v14, a6, &protocol witness table for MLS.NoOpPersister, 1, v19);

  swift_unknownObjectRetain();
  return swift_unknownObjectRetain();
}

__n128 MLS.AdditionalAuthenticatedData.init(encryptedRCSAAD:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 40);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 24);
  *(a2 + 24) = result;
  *(a2 + 40) = v3;
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

BOOL specialized static MLS.EncryptedRCS.DeliveryIMDNSigningInput.== infix(_:_:)(unsigned __int16 *a1, unsigned __int16 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 3);
  v2 = *(a1 + 4);
  v4 = a1[20];
  v5 = a1[21];
  v7 = *(a2 + 3);
  v6 = *(a2 + 4);
  v8 = a2[20];
  v9 = a2[21];
  if ((specialized static Data.== infix(_:_:)(*(a1 + 1), *(a1 + 2), *(a2 + 1), *(a2 + 2)) & 1) == 0)
  {
    return 0;
  }

  if (v2 >> 60 == 15)
  {
    if (v6 >> 60 == 15)
    {
      outlined copy of Data?(v3, v2);
      outlined copy of Data?(v7, v6);
      outlined consume of Data?(v3, v2);
      if (v4 == v8)
      {
        return v5 == v9;
      }

      return 0;
    }

    goto LABEL_9;
  }

  if (v6 >> 60 == 15)
  {
LABEL_9:
    outlined copy of Data?(v3, v2);
    outlined copy of Data?(v7, v6);
    outlined consume of Data?(v3, v2);
    outlined consume of Data?(v7, v6);
    return 0;
  }

  outlined copy of Data?(v3, v2);
  outlined copy of Data?(v7, v6);
  v11 = specialized static Data.== infix(_:_:)(v3, v2, v7, v6);
  outlined consume of Data?(v7, v6);
  outlined consume of Data?(v3, v2);
  result = 0;
  if ((v11 & 1) != 0 && v4 == v8)
  {
    return v5 == v9;
  }

  return result;
}

BOOL specialized static MLS.EncryptedRCS.DisplayIMDNSigningInput.== infix(_:_:)(unsigned __int16 *a1, unsigned __int16 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 3);
  v2 = *(a1 + 4);
  v4 = a1[20];
  v6 = *(a2 + 3);
  v5 = *(a2 + 4);
  v7 = a2[20];
  if ((specialized static Data.== infix(_:_:)(*(a1 + 1), *(a1 + 2), *(a2 + 1), *(a2 + 2)) & 1) == 0)
  {
    return 0;
  }

  if (v2 >> 60 != 15)
  {
    if (v5 >> 60 != 15)
    {
      outlined copy of Data?(v3, v2);
      outlined copy of Data?(v6, v5);
      v9 = specialized static Data.== infix(_:_:)(v3, v2, v6, v5);
      outlined consume of Data?(v6, v5);
      outlined consume of Data?(v3, v2);
      if (v9)
      {
        return v4 == v7;
      }

      return 0;
    }

LABEL_8:
    outlined copy of Data?(v3, v2);
    outlined copy of Data?(v6, v5);
    outlined consume of Data?(v3, v2);
    outlined consume of Data?(v6, v5);
    return 0;
  }

  if (v5 >> 60 != 15)
  {
    goto LABEL_8;
  }

  outlined copy of Data?(v3, v2);
  outlined copy of Data?(v6, v5);
  outlined consume of Data?(v3, v2);
  return v4 == v7;
}

BOOL specialized static MLS.EncryptedRCS.SigningInput.ContentType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *a2;
  v7 = *(a2 + 8);
  v9 = *(a2 + 16);
  v50 = *(a2 + 24);
  v51 = *a1;
  v49 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a1 + 16);
  v12 = (v11 >> 60) & 3;
  v48 = *(a1 + 40);
  if (!v12)
  {
    if ((v9 & 0x3000000000000000) == 0)
    {
      v58 = *a1;
      v16 = v3;
      v17 = v10;
      v59 = v2;
      v60 = v11;
      v61 = v4;
      v62 = v5;
      v63 = v6;
      v52 = v8;
      v53 = v7;
      v54 = v9;
      v55 = v50;
      v56 = v49;
      v57 = v10;
      v18 = v6;
      v42 = v7;
      v45 = v8;
      v39 = v9;
      v19 = v7;
      v20 = v2;
      outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v8, v7, v9, v50, v49, v17, outlined copy of Data._Representation, outlined copy of Data?);
      outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v16, v20, v11, v4, v5, v18, outlined copy of Data._Representation, outlined copy of Data?);
      outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v16, v20, v11, v4, v5, v18, outlined copy of Data._Representation, outlined copy of Data?);
      outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v45, v19, v39, v50, v49, v17, outlined copy of Data._Representation, outlined copy of Data?);
      v15 = specialized static MLS.EncryptedRCS.DeliveryIMDNSigningInput.== infix(_:_:)(&v58, &v52);
      outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v51, v20, v11, v4, v5, v18, outlined consume of Data._Representation, outlined consume of Data?);
      outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v45, v42, v39, v50, v49, v17, outlined consume of Data._Representation, outlined consume of Data?);
      outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v45, v42, v39, v50, v49, v17, outlined consume of Data._Representation, outlined consume of Data?);
      outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v51, v20, v11, v4, v5, v48, outlined consume of Data._Representation, outlined consume of Data?);
      return v15;
    }

    goto LABEL_11;
  }

  if (v12 != 1)
  {
    if ((v9 & 0x3000000000000000) == 0x2000000000000000)
    {
      v40 = *(a2 + 16);
      v43 = *(a2 + 8);
      v37 = *(a1 + 24);
      if (*a1 == v8)
      {
        v46 = *a2;
        v36 = *(a2 + 40);
        v21 = *(a1 + 8);
        outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v8, v7, v9, v50, v49, v36, outlined copy of Data._Representation, outlined copy of Data?);
        outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v3, v21, v11, v4, v5, v6, outlined copy of Data._Representation, outlined copy of Data?);
        outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v3, v21, v11, v4, v5, v6, outlined copy of Data._Representation, outlined copy of Data?);
        outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v46, v43, v40, v50, v49, v36, outlined copy of Data._Representation, outlined copy of Data?);
        v34 = specialized static Data.== infix(_:_:)(v21, v11 & 0xCFFFFFFFFFFFFFFFLL, v43, v40 & 0xCFFFFFFFFFFFFFFFLL);
        outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v51, v21, v11, v4, v5, v6, outlined consume of Data._Representation, outlined consume of Data?);
        outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v46, v43, v40, v50, v49, v36, outlined consume of Data._Representation, outlined consume of Data?);
        outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v46, v43, v40, v50, v49, v36, outlined consume of Data._Representation, outlined consume of Data?);
        outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v51, v21, v11, v4, v5, v48, outlined consume of Data._Representation, outlined consume of Data?);
        return (v34 & 1) != 0;
      }

      v31 = *a2;
      v32 = *(a2 + 8);
      v33 = *(a1 + 8);
      outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(*a1, v2, v11, *(a1 + 24), v5, v6, outlined copy of Data._Representation, outlined copy of Data?);
      outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v31, v32, v40, v50, v49, v10, outlined copy of Data._Representation, outlined copy of Data?);
      outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v51, v33, v11, v37, v5, v6, outlined consume of Data._Representation, outlined consume of Data?);
      v25 = v31;
      v26 = v43;
      v27 = v40;
      v28 = v50;
      v29 = v49;
LABEL_12:
      outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v25, v26, v27, v28, v29, v10, outlined consume of Data._Representation, outlined consume of Data?);
      return 0;
    }

LABEL_11:
    v22 = *a2;
    v23 = *(a2 + 16);
    v24 = *(a2 + 8);
    v47 = *(a1 + 8);
    outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(*a1, v2, v11, v4, v5, v6, outlined copy of Data._Representation, outlined copy of Data?);
    outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v22, v24, v23, v50, v49, v10, outlined copy of Data._Representation, outlined copy of Data?);
    outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v51, v47, v11, v4, v5, v48, outlined consume of Data._Representation, outlined consume of Data?);
    v25 = v22;
    v26 = v24;
    v27 = v23;
    v28 = v50;
    v29 = v49;
    goto LABEL_12;
  }

  if ((v9 & 0x3000000000000000) != 0x1000000000000000)
  {
    goto LABEL_11;
  }

  v58 = *a1;
  v59 = v2;
  v60 = v11 & 0xCFFFFFFFFFFFFFFFLL;
  v61 = v4;
  v62 = v5;
  LOWORD(v63) = v6;
  v52 = v8;
  v53 = v7;
  v54 = v9 & 0xCFFFFFFFFFFFFFFFLL;
  v55 = v50;
  v56 = v49;
  LOWORD(v57) = v10;
  v35 = v10;
  v41 = v7;
  v44 = v8;
  v38 = v9;
  v13 = v10;
  v14 = v2;
  outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v8, v7, v9, v50, v49, v13, outlined copy of Data._Representation, outlined copy of Data?);
  outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v51, v14, v11, v4, v5, v6, outlined copy of Data._Representation, outlined copy of Data?);
  outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v51, v14, v11, v4, v5, v6, outlined copy of Data._Representation, outlined copy of Data?);
  outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v44, v41, v38, v50, v49, v35, outlined copy of Data._Representation, outlined copy of Data?);
  v15 = specialized static MLS.EncryptedRCS.DisplayIMDNSigningInput.== infix(_:_:)(&v58, &v52);
  outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v51, v14, v11, v4, v5, v6, outlined consume of Data._Representation, outlined consume of Data?);
  outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v44, v41, v38, v50, v49, v35, outlined consume of Data._Representation, outlined consume of Data?);
  outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v44, v41, v38, v50, v49, v35, outlined consume of Data._Representation, outlined consume of Data?);
  outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v51, v14, v11, v4, v5, v48, outlined consume of Data._Representation, outlined consume of Data?);
  return v15;
}

BOOL specialized static MLS.EncryptedRCS.SigningInput.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v15 = *(a1 + 40);
  v5 = *(a1 + 48);
  v14 = *(a1 + 56);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  if (specialized static Data.== infix(_:_:)(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    v22 = v2;
    v23 = v3;
    v24 = v4;
    v25 = v15;
    v26 = v5;
    v27 = v14;
    v16 = v6;
    v17 = v7;
    v18 = v8;
    v19 = v9;
    v20 = v10;
    v21 = v11;
    outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v2, v3, v4, v15, v5, v14, outlined copy of Data._Representation, outlined copy of Data?);
    outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v6, v7, v8, v9, v10, v11, outlined copy of Data._Representation, outlined copy of Data?);
    v12 = specialized static MLS.EncryptedRCS.SigningInput.ContentType.== infix(_:_:)(&v22, &v16);
    outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v16, v17, v18, v19, v20, v21, outlined consume of Data._Representation, outlined consume of Data?);
    outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v22, v23, v24, v25, v26, v27, outlined consume of Data._Representation, outlined consume of Data?);
  }

  else
  {
    return 0;
  }

  return v12;
}

uint64_t specialized static MLS.EncryptedRCS.SigningInputError.== infix(_:_:)(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  if (a1 == a4)
  {
    if (a3)
    {
      if (a6)
      {
        if (a2 == a5 && a3 == a6)
        {
          return 1;
        }

        if (_stringCompareWithSmolCheck(_:_:expecting:)())
        {
          return 1;
        }
      }
    }

    else if (!a6)
    {
      return 1;
    }
  }

  return 0;
}

BOOL specialized static MLS.EncryptedRCS.AdditionalAuthenticatedData.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a2 + 16);
  v8 = *(a2 + 24);
  v7 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = specialized static Data.== infix(_:_:)(*a1, *(a1 + 8), *a2, *(a2 + 8));
  result = 0;
  if ((v10 & 1) != 0 && v2 == v6 && v4 == v8)
  {
    if (v5 >> 60 == 15)
    {
      if (v9 >> 60 == 15)
      {
        outlined copy of Data?(v3, v5);
        outlined copy of Data?(v7, v9);
        outlined consume of Data?(v3, v5);
        return 1;
      }
    }

    else if (v9 >> 60 != 15)
    {
      outlined copy of Data?(v3, v5);
      outlined copy of Data?(v7, v9);
      v12 = specialized static Data.== infix(_:_:)(v3, v5, v7, v9);
      outlined consume of Data?(v7, v9);
      outlined consume of Data?(v3, v5);
      return (v12 & 1) != 0;
    }

    outlined copy of Data?(v3, v5);
    outlined copy of Data?(v7, v9);
    outlined consume of Data?(v3, v5);
    outlined consume of Data?(v7, v9);
    return 0;
  }

  return result;
}

uint64_t specialized static MLS.EncryptedRCS.Member.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v6 || (v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if ((v5 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v2 == v4)
      {
        v9 = v5;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.EncryptedRCS.Member.CodingKeys and conformance MLS.EncryptedRCS.Member.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.Member.CodingKeys and conformance MLS.EncryptedRCS.Member.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.Member.CodingKeys and conformance MLS.EncryptedRCS.Member.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.Member.CodingKeys and conformance MLS.EncryptedRCS.Member.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.Member.CodingKeys and conformance MLS.EncryptedRCS.Member.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.Member.CodingKeys and conformance MLS.EncryptedRCS.Member.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.Member.CodingKeys and conformance MLS.EncryptedRCS.Member.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.Member.CodingKeys and conformance MLS.EncryptedRCS.Member.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.Member.CodingKeys and conformance MLS.EncryptedRCS.Member.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.Member.CodingKeys and conformance MLS.EncryptedRCS.Member.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.Member.CodingKeys and conformance MLS.EncryptedRCS.Member.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.Member.CodingKeys and conformance MLS.EncryptedRCS.Member.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.Member.CodingKeys and conformance MLS.EncryptedRCS.Member.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type URI and conformance URI()
{
  result = lazy protocol witness table cache variable for type URI and conformance URI;
  if (!lazy protocol witness table cache variable for type URI and conformance URI)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URI and conformance URI);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URI and conformance URI;
  if (!lazy protocol witness table cache variable for type URI and conformance URI)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URI and conformance URI);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URI and conformance URI;
  if (!lazy protocol witness table cache variable for type URI and conformance URI)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URI and conformance URI);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys and conformance MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys and conformance MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys and conformance MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys and conformance MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys and conformance MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys and conformance MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys and conformance MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys and conformance MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys and conformance MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys and conformance MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys and conformance MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys and conformance MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys and conformance MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys);
  }

  return result;
}

uint64_t specialized MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x496567617373656DLL && a2 == 0xE900000000000044;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6172456C6C616D73 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 6386277 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002651E8E90 == a2)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t specialized MLS.EncryptedRCS.SigningInputError.ErrorType.init(rawValue:)(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInputError.CodingKeys and conformance MLS.EncryptedRCS.SigningInputError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError.CodingKeys and conformance MLS.EncryptedRCS.SigningInputError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError.CodingKeys and conformance MLS.EncryptedRCS.SigningInputError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError.CodingKeys and conformance MLS.EncryptedRCS.SigningInputError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError.CodingKeys and conformance MLS.EncryptedRCS.SigningInputError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError.CodingKeys and conformance MLS.EncryptedRCS.SigningInputError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError.CodingKeys and conformance MLS.EncryptedRCS.SigningInputError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError.CodingKeys and conformance MLS.EncryptedRCS.SigningInputError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError.CodingKeys and conformance MLS.EncryptedRCS.SigningInputError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError.CodingKeys and conformance MLS.EncryptedRCS.SigningInputError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError.CodingKeys and conformance MLS.EncryptedRCS.SigningInputError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError.CodingKeys and conformance MLS.EncryptedRCS.SigningInputError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError.CodingKeys and conformance MLS.EncryptedRCS.SigningInputError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInputError.ErrorType and conformance MLS.EncryptedRCS.SigningInputError.ErrorType()
{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError.ErrorType and conformance MLS.EncryptedRCS.SigningInputError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError.ErrorType and conformance MLS.EncryptedRCS.SigningInputError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError.ErrorType and conformance MLS.EncryptedRCS.SigningInputError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError.ErrorType and conformance MLS.EncryptedRCS.SigningInputError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError.ErrorType and conformance MLS.EncryptedRCS.SigningInputError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError.ErrorType and conformance MLS.EncryptedRCS.SigningInputError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError.ErrorType and conformance MLS.EncryptedRCS.SigningInputError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError.ErrorType and conformance MLS.EncryptedRCS.SigningInputError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError.ErrorType and conformance MLS.EncryptedRCS.SigningInputError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError.ErrorType and conformance MLS.EncryptedRCS.SigningInputError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError.ErrorType and conformance MLS.EncryptedRCS.SigningInputError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError.ErrorType and conformance MLS.EncryptedRCS.SigningInputError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError.ErrorType and conformance MLS.EncryptedRCS.SigningInputError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError.ErrorType and conformance MLS.EncryptedRCS.SigningInputError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError.ErrorType and conformance MLS.EncryptedRCS.SigningInputError.ErrorType);
  }

  return result;
}

uint64_t specialized MLS.EncryptedRCS.SigningInputError.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO17SigningInputErrorV10CodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO17SigningInputErrorV10CodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInputError.CodingKeys and conformance MLS.EncryptedRCS.SigningInputError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v10[14] = 0;
    lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInputError.ErrorType and conformance MLS.EncryptedRCS.SigningInputError.ErrorType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v8 = v10[15];
    v10[13] = 1;
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v8;
}

unint64_t lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInput.ContentType.FileTransferCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.FileTransferCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.FileTransferCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.FileTransferCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.FileTransferCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.FileTransferCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.FileTransferCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.FileTransferCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.FileTransferCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.FileTransferCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.FileTransferCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.FileTransferCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.FileTransferCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.FileTransferCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.FileTransferCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.FileTransferCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.FileTransferCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.FileTransferCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.FileTransferCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.FileTransferCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.FileTransferCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.FileTransferCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.FileTransferCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.FileTransferCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.FileTransferCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.FileTransferCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.EncryptedRCS.FileTransferSigningInput and conformance MLS.EncryptedRCS.FileTransferSigningInput()
{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.FileTransferSigningInput and conformance MLS.EncryptedRCS.FileTransferSigningInput;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.FileTransferSigningInput and conformance MLS.EncryptedRCS.FileTransferSigningInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.FileTransferSigningInput and conformance MLS.EncryptedRCS.FileTransferSigningInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.FileTransferSigningInput and conformance MLS.EncryptedRCS.FileTransferSigningInput;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.FileTransferSigningInput and conformance MLS.EncryptedRCS.FileTransferSigningInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.FileTransferSigningInput and conformance MLS.EncryptedRCS.FileTransferSigningInput);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInput.ContentType.DisplayIMDNCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.DisplayIMDNCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.DisplayIMDNCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.DisplayIMDNCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.DisplayIMDNCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.DisplayIMDNCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.DisplayIMDNCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.DisplayIMDNCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.DisplayIMDNCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.DisplayIMDNCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.DisplayIMDNCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.DisplayIMDNCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.DisplayIMDNCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.DisplayIMDNCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.DisplayIMDNCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.DisplayIMDNCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.DisplayIMDNCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.DisplayIMDNCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.DisplayIMDNCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.DisplayIMDNCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.DisplayIMDNCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.DisplayIMDNCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.DisplayIMDNCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.DisplayIMDNCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.DisplayIMDNCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.DisplayIMDNCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.EncryptedRCS.DisplayIMDNSigningInput and conformance MLS.EncryptedRCS.DisplayIMDNSigningInput()
{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.DisplayIMDNSigningInput and conformance MLS.EncryptedRCS.DisplayIMDNSigningInput;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.DisplayIMDNSigningInput and conformance MLS.EncryptedRCS.DisplayIMDNSigningInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.DisplayIMDNSigningInput and conformance MLS.EncryptedRCS.DisplayIMDNSigningInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.DisplayIMDNSigningInput and conformance MLS.EncryptedRCS.DisplayIMDNSigningInput;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.DisplayIMDNSigningInput and conformance MLS.EncryptedRCS.DisplayIMDNSigningInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.DisplayIMDNSigningInput and conformance MLS.EncryptedRCS.DisplayIMDNSigningInput);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInput.ContentType.DeliveryIMDNCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.DeliveryIMDNCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.DeliveryIMDNCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.DeliveryIMDNCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.DeliveryIMDNCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.DeliveryIMDNCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.DeliveryIMDNCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.DeliveryIMDNCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.DeliveryIMDNCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.DeliveryIMDNCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.DeliveryIMDNCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.DeliveryIMDNCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.DeliveryIMDNCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.DeliveryIMDNCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.DeliveryIMDNCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.DeliveryIMDNCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.DeliveryIMDNCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.DeliveryIMDNCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.DeliveryIMDNCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.DeliveryIMDNCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.DeliveryIMDNCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.DeliveryIMDNCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.DeliveryIMDNCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.DeliveryIMDNCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.DeliveryIMDNCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.DeliveryIMDNCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.EncryptedRCS.DeliveryIMDNSigningInput and conformance MLS.EncryptedRCS.DeliveryIMDNSigningInput()
{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.DeliveryIMDNSigningInput and conformance MLS.EncryptedRCS.DeliveryIMDNSigningInput;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.DeliveryIMDNSigningInput and conformance MLS.EncryptedRCS.DeliveryIMDNSigningInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.DeliveryIMDNSigningInput and conformance MLS.EncryptedRCS.DeliveryIMDNSigningInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.DeliveryIMDNSigningInput and conformance MLS.EncryptedRCS.DeliveryIMDNSigningInput;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.DeliveryIMDNSigningInput and conformance MLS.EncryptedRCS.DeliveryIMDNSigningInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.DeliveryIMDNSigningInput and conformance MLS.EncryptedRCS.DeliveryIMDNSigningInput);
  }

  return result;
}

uint64_t outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, unint64_t), uint64_t (*a8)(uint64_t, uint64_t))
{
  result = a2;
  v9 = (a3 >> 60) & 3;
  if (((a3 >> 60) & 3) > 1)
  {
    if (v9 == 2)
    {

      return a7(a2, a3 & 0xCFFFFFFFFFFFFFFFLL);
    }
  }

  else
  {
    if (v9)
    {
      v12 = a3 & 0xCFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = a3;
    }

    a7(result, v12);

    return a8(a4, a5);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type MLS.VerifiableFileTransfer and conformance MLS.VerifiableFileTransfer(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInput.CodingKeys and conformance MLS.EncryptedRCS.SigningInput.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.CodingKeys and conformance MLS.EncryptedRCS.SigningInput.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.CodingKeys and conformance MLS.EncryptedRCS.SigningInput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.CodingKeys and conformance MLS.EncryptedRCS.SigningInput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.CodingKeys and conformance MLS.EncryptedRCS.SigningInput.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.CodingKeys and conformance MLS.EncryptedRCS.SigningInput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.CodingKeys and conformance MLS.EncryptedRCS.SigningInput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.CodingKeys and conformance MLS.EncryptedRCS.SigningInput.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.CodingKeys and conformance MLS.EncryptedRCS.SigningInput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.CodingKeys and conformance MLS.EncryptedRCS.SigningInput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.CodingKeys and conformance MLS.EncryptedRCS.SigningInput.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.CodingKeys and conformance MLS.EncryptedRCS.SigningInput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.CodingKeys and conformance MLS.EncryptedRCS.SigningInput.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInput.ContentType and conformance MLS.EncryptedRCS.SigningInput.ContentType()
{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType and conformance MLS.EncryptedRCS.SigningInput.ContentType;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType and conformance MLS.EncryptedRCS.SigningInput.ContentType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType and conformance MLS.EncryptedRCS.SigningInput.ContentType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType and conformance MLS.EncryptedRCS.SigningInput.ContentType;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType and conformance MLS.EncryptedRCS.SigningInput.ContentType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType and conformance MLS.EncryptedRCS.SigningInput.ContentType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys and conformance MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys and conformance MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys and conformance MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys and conformance MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys and conformance MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys and conformance MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys and conformance MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys and conformance MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys and conformance MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys and conformance MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys and conformance MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys and conformance MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys and conformance MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys and conformance MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys and conformance MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys and conformance MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys and conformance MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys and conformance MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys and conformance MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys and conformance MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys and conformance MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys and conformance MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys and conformance MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys and conformance MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys and conformance MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys and conformance MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.EncryptedRCS.FileTransferSigningInput.CodingKeys and conformance MLS.EncryptedRCS.FileTransferSigningInput.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.FileTransferSigningInput.CodingKeys and conformance MLS.EncryptedRCS.FileTransferSigningInput.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.FileTransferSigningInput.CodingKeys and conformance MLS.EncryptedRCS.FileTransferSigningInput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.FileTransferSigningInput.CodingKeys and conformance MLS.EncryptedRCS.FileTransferSigningInput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.FileTransferSigningInput.CodingKeys and conformance MLS.EncryptedRCS.FileTransferSigningInput.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.FileTransferSigningInput.CodingKeys and conformance MLS.EncryptedRCS.FileTransferSigningInput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.FileTransferSigningInput.CodingKeys and conformance MLS.EncryptedRCS.FileTransferSigningInput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.FileTransferSigningInput.CodingKeys and conformance MLS.EncryptedRCS.FileTransferSigningInput.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.FileTransferSigningInput.CodingKeys and conformance MLS.EncryptedRCS.FileTransferSigningInput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.FileTransferSigningInput.CodingKeys and conformance MLS.EncryptedRCS.FileTransferSigningInput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.FileTransferSigningInput.CodingKeys and conformance MLS.EncryptedRCS.FileTransferSigningInput.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.FileTransferSigningInput.CodingKeys and conformance MLS.EncryptedRCS.FileTransferSigningInput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.FileTransferSigningInput.CodingKeys and conformance MLS.EncryptedRCS.FileTransferSigningInput.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.NoOpKeyPackageExchanger<MLS.EncryptedRCS.Member> and conformance MLS.NoOpKeyPackageExchanger<A>()
{
  result = lazy protocol witness table cache variable for type MLS.NoOpKeyPackageExchanger<MLS.EncryptedRCS.Member> and conformance MLS.NoOpKeyPackageExchanger<A>;
  if (!lazy protocol witness table cache variable for type MLS.NoOpKeyPackageExchanger<MLS.EncryptedRCS.Member> and conformance MLS.NoOpKeyPackageExchanger<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s15SecureMessaging3MLSO23NoOpKeyPackageExchangerCy_AC12EncryptedRCSO6MemberVGMd, &_s15SecureMessaging3MLSO23NoOpKeyPackageExchangerCy_AC12EncryptedRCSO6MemberVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.NoOpKeyPackageExchanger<MLS.EncryptedRCS.Member> and conformance MLS.NoOpKeyPackageExchanger<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.EncryptedRCS.Member and conformance MLS.EncryptedRCS.Member()
{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.Member and conformance MLS.EncryptedRCS.Member;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.Member and conformance MLS.EncryptedRCS.Member)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.Member and conformance MLS.EncryptedRCS.Member);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.Member and conformance MLS.EncryptedRCS.Member;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.Member and conformance MLS.EncryptedRCS.Member)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.Member and conformance MLS.EncryptedRCS.Member);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.Member and conformance MLS.EncryptedRCS.Member;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.Member and conformance MLS.EncryptedRCS.Member)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.Member and conformance MLS.EncryptedRCS.Member);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.Member and conformance MLS.EncryptedRCS.Member;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.Member and conformance MLS.EncryptedRCS.Member)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.Member and conformance MLS.EncryptedRCS.Member);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.Member and conformance MLS.EncryptedRCS.Member;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.Member and conformance MLS.EncryptedRCS.Member)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.Member and conformance MLS.EncryptedRCS.Member);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.EncryptedRCS.Member(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type MLS.EncryptedRCS.Member and conformance MLS.EncryptedRCS.Member();
  a1[2] = lazy protocol witness table accessor for type MLS.EncryptedRCS.Member and conformance MLS.EncryptedRCS.Member();
  result = lazy protocol witness table accessor for type MLS.EncryptedRCS.Member and conformance MLS.EncryptedRCS.Member();
  a1[3] = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.EncryptedRCS.SigningInputError(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInputError and conformance MLS.EncryptedRCS.SigningInputError();
  a1[2] = lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInputError and conformance MLS.EncryptedRCS.SigningInputError();
  a1[3] = lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInputError and conformance MLS.EncryptedRCS.SigningInputError();
  result = lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInputError and conformance MLS.EncryptedRCS.SigningInputError();
  a1[4] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInputError and conformance MLS.EncryptedRCS.SigningInputError()
{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError and conformance MLS.EncryptedRCS.SigningInputError;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError and conformance MLS.EncryptedRCS.SigningInputError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError and conformance MLS.EncryptedRCS.SigningInputError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError and conformance MLS.EncryptedRCS.SigningInputError;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError and conformance MLS.EncryptedRCS.SigningInputError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError and conformance MLS.EncryptedRCS.SigningInputError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError and conformance MLS.EncryptedRCS.SigningInputError;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError and conformance MLS.EncryptedRCS.SigningInputError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError and conformance MLS.EncryptedRCS.SigningInputError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError and conformance MLS.EncryptedRCS.SigningInputError;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError and conformance MLS.EncryptedRCS.SigningInputError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError and conformance MLS.EncryptedRCS.SigningInputError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError and conformance MLS.EncryptedRCS.SigningInputError;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError and conformance MLS.EncryptedRCS.SigningInputError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError and conformance MLS.EncryptedRCS.SigningInputError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.EncryptedRCS.Platform and conformance MLS.EncryptedRCS.Platform()
{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.Platform and conformance MLS.EncryptedRCS.Platform;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.Platform and conformance MLS.EncryptedRCS.Platform)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.Platform and conformance MLS.EncryptedRCS.Platform);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MLS.EncryptedRCS.Member(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t storeEnumTagSinglePayload for MLS.EncryptedRCS.Member(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
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

uint64_t getEnumTagSinglePayload for MLS.EncryptedRCS.AdditionalAuthenticatedData(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 48))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for MLS.EncryptedRCS.AdditionalAuthenticatedData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MLS.EncryptedRCS.SigningInputError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for MLS.EncryptedRCS.SigningInputError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy60_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MLS.EncryptedRCS.SigningInput(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 60))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 18);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double storeEnumTagSinglePayload for MLS.EncryptedRCS.SigningInput(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 56) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 60) = 1;
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
      *(a1 + 16) = -a2 << 16;
      result = 0.0;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0;
      return result;
    }

    *(a1 + 60) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy44_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 28) = *(a2 + 28);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for MLS.EncryptedRCS.SigningInput.ContentType(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 44))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 2);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double storeEnumTagSinglePayload for MLS.EncryptedRCS.SigningInput.ContentType(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 40) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 44) = 1;
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
      *a1 = -a2 << 16;
      result = 0.0;
      *(a1 + 8) = 0u;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0;
      return result;
    }

    *(a1 + 44) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for MLS.EncryptedRCS.SigningInput.ContentType(void *result, char a2)
{
  v2 = result[2] & 0xCFFFFFFFFFFFFFFFLL | ((a2 & 3) << 60);
  *result = *result;
  result[2] = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for MLS.EncryptedRCS.DeliveryIMDNSigningInput(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 44))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for MLS.EncryptedRCS.DeliveryIMDNSigningInput(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 44) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 44) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for MLS.EncryptedRCS.DisplayIMDNSigningInput(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 42))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for MLS.EncryptedRCS.DisplayIMDNSigningInput(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MLS.EncryptedRCS.FileTransferSigningInput(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 24))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for MLS.EncryptedRCS.FileTransferSigningInput(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t specialized MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79726576696C6564 && a2 == 0xEC0000004E444D49;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4979616C70736964 && a2 == 0xEB000000004E444DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E617254656C6966 && a2 == 0xEC00000072656673)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t specialized MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x496567617373656DLL && a2 == 0xE900000000000044 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002651E8E90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x526572756C696166 && a2 == 0xED00006E6F736165 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x79726576696C6564 && a2 == 0xEE00737574617453)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t specialized MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x496567617373656DLL && a2 == 0xE900000000000044 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002651E8E90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000019 && 0x80000002651E8ED0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t lazy protocol witness table accessor for type Int and conformance Int()
{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

uint64_t static XPCUtils.XPCClient.weakSharedInstance.getter()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #2 in KDSRegistration.XPCCoordinator.isRegisteredChanged(simUniqueID:isRegistered:context:completion:);

  return specialized static XPCUtils.XPCClient.weakSharedInstance.getter();
}

Swift::Int XPCUtils.XPCInterfaceType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x266754DE0](v1);
  return Hasher._finalize()();
}

uint64_t XPCUtils.XPCClient.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCO15SecureMessaging8XPCUtils9XPCClient_logger;
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t XPCUtils.XPCClient.__allocating_init(machServiceName:listenerEndpoint:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 16) = a3;
  v8 = *(v3 + 48);
  v9 = *(v3 + 52);
  swift_allocObject();
  v10 = swift_task_alloc();
  *(v4 + 24) = v10;
  *v10 = v4;
  v10[1] = XPCUtils.XPCClient.__allocating_init(machServiceName:listenerEndpoint:);

  return (specialized XPCUtils.XPCClient.init(machServiceName:listenerEndpoint:))(a1, a2, a3);
}

uint64_t XPCUtils.XPCClient.__allocating_init(machServiceName:listenerEndpoint:)(uint64_t a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  v5 = *(v7 + 8);

  return v5(a1);
}

uint64_t XPCUtils.XPCClient.init(machServiceName:listenerEndpoint:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = XPCUtils.XPCClient.init(machServiceName:listenerEndpoint:);

  return (specialized XPCUtils.XPCClient.init(machServiceName:listenerEndpoint:))(a1, a2, a3);
}

uint64_t closure #1 in XPCUtils.XPCClient.init(machServiceName:listenerEndpoint:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return MEMORY[0x2822009F8](closure #1 in XPCUtils.XPCClient.init(machServiceName:listenerEndpoint:), 0, 0);
}

uint64_t closure #1 in XPCUtils.XPCClient.init(machServiceName:listenerEndpoint:)()
{
  v1 = *(v0 + 56);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  *(v0 + 64) = result;
  if (result)
  {
    *(v0 + 96) = 0;
    v3 = swift_task_alloc();
    *(v0 + 72) = v3;
    *v3 = v0;
    v3[1] = closure #1 in XPCUtils.XPCClient.init(machServiceName:listenerEndpoint:);

    return XPCUtils.XPCClient.remoteObjectProxy(for:)((v0 + 96));
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v1 = v0[11];
  v2 = v0[6];
  v0[5] = &unk_2876DCC70;
  *v2 = swift_dynamicCastObjCProtocolUnconditional();
  v3 = v0[1];

  return v3();
}

{
  v1 = *(v0 + 80);
  return (*(v0 + 8))();
}

uint64_t closure #1 in XPCUtils.XPCClient.init(machServiceName:listenerEndpoint:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 64);
  v7 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v8 = closure #1 in XPCUtils.XPCClient.init(machServiceName:listenerEndpoint:);
  }

  else
  {
    *(v4 + 88) = a1;
    v8 = closure #1 in XPCUtils.XPCClient.init(machServiceName:listenerEndpoint:);
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t closure #2 in XPCUtils.XPCClient.init(machServiceName:listenerEndpoint:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return MEMORY[0x2822009F8](closure #2 in XPCUtils.XPCClient.init(machServiceName:listenerEndpoint:), 0, 0);
}

uint64_t closure #2 in XPCUtils.XPCClient.init(machServiceName:listenerEndpoint:)()
{
  v1 = *(v0 + 56);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  *(v0 + 64) = result;
  if (result)
  {
    *(v0 + 96) = 1;
    v3 = swift_task_alloc();
    *(v0 + 72) = v3;
    *v3 = v0;
    v3[1] = closure #2 in XPCUtils.XPCClient.init(machServiceName:listenerEndpoint:);

    return XPCUtils.XPCClient.remoteObjectProxy(for:)((v0 + 96));
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v1 = v0[11];
  v2 = v0[6];
  v0[5] = &unk_2876DCD30;
  *v2 = swift_dynamicCastObjCProtocolUnconditional();
  v3 = v0[1];

  return v3();
}

uint64_t closure #2 in XPCUtils.XPCClient.init(machServiceName:listenerEndpoint:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 64);
  v7 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v8 = closure #2 in XPCUtils.XPCClient.init(machServiceName:listenerEndpoint:);
  }

  else
  {
    *(v4 + 88) = a1;
    v8 = closure #2 in XPCUtils.XPCClient.init(machServiceName:listenerEndpoint:);
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t closure #3 in XPCUtils.XPCClient.init(machServiceName:listenerEndpoint:)()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtCO15SecureMessaging8XPCUtils9XPCClient_deliveryInterface);

    (*(*v1 + 400))(v2);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *(result + OBJC_IVAR____TtCO15SecureMessaging8XPCUtils9XPCClient_registrationInterface);

    (*(*v4 + 400))(v5);
  }

  return result;
}

uint64_t XPCUtils.XPCClient.remoteObjectProxy(for:)(_BYTE *a1)
{
  *(v2 + 16) = v1;
  *(v2 + 41) = *a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v3 = static XPCActor.shared;

  return MEMORY[0x2822009F8](XPCUtils.XPCClient.remoteObjectProxy(for:), v3, 0);
}

uint64_t XPCUtils.XPCClient.remoteObjectProxy(for:)()
{
  v17 = v0;
  v1 = *(v0 + 16) + OBJC_IVAR____TtCO15SecureMessaging8XPCUtils9XPCClient_logger;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 41);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    *(v0 + 40) = v4;
    v7 = String.init<A>(describing:)();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v16);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_264F1F000, v2, v3, "XPCClient -- Getting remote object proxy for %s interface.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x266755550](v6, -1, -1);
    MEMORY[0x266755550](v5, -1, -1);
  }

  v10 = *(*(v0 + 16) + OBJC_IVAR____TtCO15SecureMessaging8XPCUtils9XPCClient_xpc);
  if (*(v0 + 41))
  {
    v15 = _s15SecureMessaging8XPCUtilsO10ConnectionC21createDaemonInterface10resultType05errorI019isReconnectionEvent20requestCreationBlock03xpcP0qd__qd__m_qd_0_mSbAC19XPCInterfaceRequestVScCyAC20CollaboratorProtocol_ps5Error_pGYbXEyx_yAcN_pSg_10Foundation4DataVSgtYbctYbXEtYaKAcNRd__AC07XPCableV0Rd_0_r0_lFAC09XPCDaemonU0_p_AC012RegistrationtU0_pAC09XPCClientoV0VTtt0g5Tf4dnnn_n;
    v11 = swift_task_alloc();
    *(v0 + 32) = v11;
    *v11 = v0;
    v11[1] = XPCUtils.XPCClient.remoteObjectProxy(for:);
    v12 = closure #4 in XPCUtils.XPCClient.remoteObjectProxy(for:);
  }

  else
  {
    v15 = _s15SecureMessaging8XPCUtilsO10ConnectionC21createDaemonInterface10resultType05errorI019isReconnectionEvent20requestCreationBlock03xpcP0qd__qd__m_qd_0_mSbAC19XPCInterfaceRequestVScCyAC20CollaboratorProtocol_ps5Error_pGYbXEyx_yAcN_pSg_10Foundation4DataVSgtYbctYbXEtYaKAcNRd__AC07XPCableV0Rd_0_r0_lFAC09XPCDaemonU0_p_AC08DeliverytU0_pAC09XPCClientoV0VTtt0g5Tf4dnnn_n;
    v13 = swift_task_alloc();
    *(v0 + 24) = v13;
    *v13 = v0;
    v13[1] = XPCUtils.XPCClient.remoteObjectProxy(for:);
    v12 = closure #2 in XPCUtils.XPCClient.remoteObjectProxy(for:);
  }

  return v15(closure #1 in XPCUtils.XPCClient.remoteObjectProxy(for:), 0, v12, 0);
}

uint64_t XPCUtils.XPCClient.remoteObjectProxy(for:)(uint64_t a1)
{
  v4 = *(*v2 + 24);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

{
  v4 = *(*v2 + 32);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed XPCUtils.CollaboratorProtocol?, @guaranteed Data?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a3)
  {

    swift_unknownObjectRetain();
    v7 = v3;
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {

    swift_unknownObjectRetain();
    v9 = 0xF000000000000000;
  }

  v6(a2, v3, v9);
  swift_unknownObjectRelease();
  outlined consume of Data?(v3, v9);
}

uint64_t closure #1 in XPCUtils.XPCClient.remoteObjectProxy(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy15SecureMessaging8XPCUtilsO20CollaboratorProtocol_ps5Error_pGMd, &_sScCy15SecureMessaging8XPCUtilsO20CollaboratorProtocol_ps5Error_pGMR);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

void closure #2 in XPCUtils.XPCClient.remoteObjectProxy(for:)(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a1;
  v8[4] = a2;
  v8[5] = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed XPCUtils.CollaboratorProtocol?, @guaranteed Data?) -> ();
  v8[3] = a4;
  v7 = _Block_copy(v8);

  [v6 *a5];
  _Block_release(v7);
}

uint64_t XPCUtils.XPCClient.deinit()
{
  v1 = OBJC_IVAR____TtCO15SecureMessaging8XPCUtils9XPCClient_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtCO15SecureMessaging8XPCUtils9XPCClient_xpc);

  v4 = *(v0 + OBJC_IVAR____TtCO15SecureMessaging8XPCUtils9XPCClient_deliveryInterface);

  v5 = *(v0 + OBJC_IVAR____TtCO15SecureMessaging8XPCUtils9XPCClient_registrationInterface);

  return v0;
}

uint64_t XPCUtils.XPCClient.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCO15SecureMessaging8XPCUtils9XPCClient_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtCO15SecureMessaging8XPCUtils9XPCClient_xpc);

  v4 = *(v0 + OBJC_IVAR____TtCO15SecureMessaging8XPCUtils9XPCClient_deliveryInterface);

  v5 = *(v0 + OBJC_IVAR____TtCO15SecureMessaging8XPCUtils9XPCClient_registrationInterface);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void specialized XPCUtils.Connection.failAllRunningRequestsAndRestartConnection()()
{
  v1 = type metadata accessor for XPCUtils.XPCInterfaceRequest();
  v79 = *(v1 - 8);
  v2 = *(v79 + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v84 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v78 = &v75 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi3key_15SecureMessaging8XPCUtilsO19XPCInterfaceRequestV5valuetSgMd, &_sSi3key_15SecureMessaging8XPCUtilsO19XPCInterfaceRequestV5valuetSgMR);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = (&v75 - v11);
  v13 = *(*v0 + 184);
  swift_beginAccess();
  v82 = v0;
  v76 = v13;
  v14 = *(v0 + v13);
  v15 = v14 + 64;
  v16 = 1 << *(v14 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v14 + 64);
  v81 = direct field offset for XPCUtils.Connection.logger;
  v19 = (v16 + 63) >> 6;
  v80 = v14;

  v20 = 0;
  v21 = &_sSi3key_15SecureMessaging8XPCUtilsO19XPCInterfaceRequestV5valuetMd;
  *&v22 = 134217984;
  v77 = v22;
  for (i = v10; ; v10 = i)
  {
    if (!v18)
    {
      if (v19 <= v20 + 1)
      {
        v26 = v20 + 1;
      }

      else
      {
        v26 = v19;
      }

      v27 = v26 - 1;
      while (1)
      {
        v25 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v25 >= v19)
        {
          v49 = __swift_instantiateConcreteTypeFromMangledNameV2(v21, &_sSi3key_15SecureMessaging8XPCUtilsO19XPCInterfaceRequestV5valuetMR);
          (*(*(v49 - 8) + 56))(v10, 1, 1, v49);
          v18 = 0;
          goto LABEL_16;
        }

        v18 = *(v15 + 8 * v25);
        ++v20;
        if (v18)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_35;
    }

    v25 = v20;
LABEL_15:
    v28 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v29 = v28 | (v25 << 6);
    v30 = *(*(v80 + 48) + 8 * v29);
    v31 = v78;
    outlined init with copy of XPCUtils.XPCInterfaceRequest(*(v80 + 56) + *(v79 + 72) * v29, v78);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(v21, &_sSi3key_15SecureMessaging8XPCUtilsO19XPCInterfaceRequestV5valuetMR);
    v33 = *(v32 + 48);
    v34 = i;
    *i = v30;
    v10 = v34;
    outlined init with take of XPCUtils.XPCInterfaceRequest(v31, &v34[v33]);
    (*(*(v32 - 8) + 56))(v10, 0, 1, v32);
    v27 = v25;
LABEL_16:
    outlined init with take of (key: Int, value: XPCUtils.XPCInterfaceRequest)?(v10, v12);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(v21, &_sSi3key_15SecureMessaging8XPCUtilsO19XPCInterfaceRequestV5valuetMR);
    if ((*(*(v35 - 8) + 48))(v12, 1, v35) == 1)
    {
      break;
    }

    v36 = v21;
    v37 = *v12;
    outlined init with take of XPCUtils.XPCInterfaceRequest(v12 + *(v35 + 48), v84);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = v77;
      *(v40 + 4) = v37;
      _os_log_impl(&dword_264F1F000, v38, v39, "XPCConnection failing request due to interruption event { requestID: %ld }", v40, 0xCu);
      MEMORY[0x266755550](v40, -1, -1);
    }

    lazy protocol witness table accessor for type XPCUtils.XPCError and conformance XPCUtils.XPCError();
    v41 = swift_allocError();
    *v42 = 0;
    *(v42 + 8) = 0;
    *(v42 + 16) = 0;
    v87 = v41;
    v43 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {

      aBlock[0] = v41;
      v23 = v41;
    }

    else
    {
      lazy protocol witness table accessor for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError();
      v44 = swift_allocError();
      v46 = v45;
      swift_getErrorValue();
      v47 = Error.readableDescription.getter(v85, v86);
      *v46 = 3;
      *(v46 + 8) = v47;
      *(v46 + 16) = v48;
      aBlock[0] = v44;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy15SecureMessaging8XPCUtilsO20CollaboratorProtocol_ps5Error_pGMd, &_sScCy15SecureMessaging8XPCUtilsO20CollaboratorProtocol_ps5Error_pGMR);
    v24 = v84;
    CheckedContinuation.resume(throwing:)();
    outlined destroy of XPCUtils.XPCInterfaceRequest(v24);

    v20 = v27;
    v21 = v36;
  }

  v50 = v82;
  v51 = v76;
  swift_beginAccess();
  if (*(*(v50 + v51) + 16))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v87 = *(v50 + v51);
    *(v50 + v51) = 0x8000000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySi15SecureMessaging8XPCUtilsO19XPCInterfaceRequestVGMd, &_ss17_NativeDictionaryVySi15SecureMessaging8XPCUtilsO19XPCInterfaceRequestVGMR);
    _NativeDictionary.removeAll(isUnique:)(isUniquelyReferenced_nonNull_native);
    *(v50 + v51) = v87;
  }

  swift_endAccess();
  v53 = *(v50 + direct field offset for XPCUtils.Connection.listenerEndpoint);
  if (v53)
  {
    v54 = [objc_allocWithZone(MEMORY[0x277CCAE80]) initWithListenerEndpoint_];
  }

  else
  {
    v55 = *(v50 + direct field offset for XPCUtils.Connection.machServiceName);
    v56 = *(v50 + direct field offset for XPCUtils.Connection.machServiceName + 8);
    v57 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v58 = MEMORY[0x266754510](v55, v56);
    v54 = [v57 initWithMachServiceName:v58 options:0];
  }

  v59 = *(v50 + direct field offset for XPCUtils.Connection.queue);
  v60 = v54;
  [v60 _setQueue_];
  [v60 setRemoteObjectInterface_];
  aBlock[4] = partial apply for specialized closure #1 in XPCUtils.Connection.failAllRunningRequestsAndRestartConnection();
  aBlock[5] = v50;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_50;
  v61 = _Block_copy(aBlock);

  [v60 setInterruptionHandler_];
  _Block_release(v61);
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    *v64 = 0;
    _os_log_impl(&dword_264F1F000, v62, v63, "XPCConnection starting new connection after interrupt", v64, 2u);
    MEMORY[0x266755550](v64, -1, -1);
  }

  [v60 resume];
  v65 = direct field offset for XPCUtils.Connection.connection;
  v66 = *(v50 + direct field offset for XPCUtils.Connection.connection);
  *(v50 + direct field offset for XPCUtils.Connection.connection) = v60;
  v67 = *(v50 + direct field offset for XPCUtils.Connection._nextConnectionID);
  if (__OFADD__(v67, 1))
  {
LABEL_35:
    __break(1u);
    return;
  }

  *(v50 + direct field offset for XPCUtils.Connection._nextConnectionID) = v67 + 1;
  *(v50 + direct field offset for XPCUtils.Connection.connectionID) = v67;
  [v66 setInterruptionHandler_];
  [v66 setInvalidationHandler_];
  [v66 invalidate];
  v68 = [*(v50 + v65) remoteObjectProxy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging8XPCUtilsO17XPCDaemonProtocol_pMd, &_s15SecureMessaging8XPCUtilsO17XPCDaemonProtocol_pMR);
  swift_dynamicCast();
  v69 = *(*v50 + 176);
  swift_beginAccess();
  v70 = *(v50 + v69);
  *(v50 + v69) = v88;
  swift_unknownObjectRelease();
  v71 = v50 + *(*v50 + 192);
  swift_beginAccess();
  v72 = *v71;
  if (*v71)
  {
    v73 = *(v71 + 8);

    v72(v74);

    outlined consume of (@escaping @callee_guaranteed @Sendable @async (@guaranteed String) -> (@error @owned Error))?(v72);
  }

  else
  {

    v66 = v60;
  }
}

uint64_t specialized closure #1 in XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, void (*a6)(uint64_t *, uint64_t, uint64_t), uint64_t a7, uint64_t a8, uint64_t a9)
{
  v26 = a6;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging8XPCUtilsO19XPCInterfaceRequestVSgMd, &_s15SecureMessaging8XPCUtilsO19XPCInterfaceRequestVSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v25 - v15;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  a4(a1);
  v17 = type metadata accessor for XPCUtils.XPCInterfaceRequest();
  (*(*(v17 - 8) + 56))(v16, 0, 1, v17);
  v18 = *(*a2 + 184);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v16, a3);
  swift_endAccess();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 134217984;
    *(v21 + 4) = a3;
    _os_log_impl(&dword_264F1F000, v19, v20, "XPCConnection stored and sending request { requestID: %ld }", v21, 0xCu);
    MEMORY[0x266755550](v21, -1, -1);
  }

  v22 = *(*a2 + 176);
  swift_beginAccess();
  v27 = *(a2 + v22);
  v23 = swift_allocObject();
  *(v23 + 16) = a2;
  *(v23 + 24) = a3;
  swift_unknownObjectRetain();

  v26(&v27, a9, v23);
  swift_unknownObjectRelease();
}

uint64_t specialized closure #1 in closure #1 in XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v23 - v15;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);

  outlined copy of Data?(a2, a3);
  v18 = one-time initialization token for shared;
  swift_unknownObjectRetain();
  if (v18 != -1)
  {
    swift_once();
  }

  v19 = static XPCActor.shared;
  v20 = _s15SecureMessaging8XPCActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type XPCActor and conformance XPCActor, type metadata accessor for XPCActor);
  v21 = swift_allocObject();
  v21[2] = v19;
  v21[3] = v20;
  v21[4] = a4;
  v21[5] = a5;
  v21[6] = a2;
  v21[7] = a3;
  v21[8] = a1;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v16, a7, v21);
}

uint64_t specialized closure #1 in closure #1 in closure #1 in XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[23] = a7;
  v8[24] = a8;
  v8[21] = a5;
  v8[22] = a6;
  v8[20] = a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static XPCActor.shared;

  return MEMORY[0x2822009F8](specialized closure #1 in closure #1 in closure #1 in XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:), v9, 0);
}

{
  v8[23] = a7;
  v8[24] = a8;
  v8[21] = a5;
  v8[22] = a6;
  v8[20] = a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static XPCActor.shared;

  return MEMORY[0x2822009F8](specialized closure #1 in closure #1 in closure #1 in XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:), v9, 0);
}

uint64_t specialized closure #1 in closure #1 in closure #1 in XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:)()
{
  v79 = v0;
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v3 = *(v0 + 160);
  outlined copy of Data?(v2, v1);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  outlined consume of Data?(v2, v1);
  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 176);
    v6 = *(v0 + 184);
    v8 = *(v0 + 168);
    v9 = swift_slowAlloc();
    v77 = v0;
    v78 = swift_slowAlloc();
    v10 = v78;
    *v9 = 134218242;
    *(v9 + 4) = v8;
    *(v9 + 12) = 2080;
    if (v6 >> 60 == 15)
    {
      v11 = 0;
    }

    else
    {
      v11 = v7;
    }

    if (v6 >> 60 == 15)
    {
      v12 = 0xC000000000000000;
    }

    else
    {
      v12 = v6;
    }

    outlined copy of Data?(v7, v6);
    v13 = Data.description.getter();
    v15 = v14;
    outlined consume of Data._Representation(v11, v12);
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v78);

    *(v9 + 14) = v16;
    _os_log_impl(&dword_264F1F000, v4, v5, "XPCConnection received result { requestID: %ld, errorData: %s }", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    v17 = v10;
    v0 = v77;
    MEMORY[0x266755550](v17, -1, -1);
    MEMORY[0x266755550](v9, -1, -1);
  }

  v18 = *(v0 + 192);
  if (v18)
  {
    v19 = *(v0 + 192);
    swift_unknownObjectRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = *(v0 + 168);
      v23 = swift_slowAlloc();
      *v23 = 134217984;
      *(v23 + 4) = v22;
      _os_log_impl(&dword_264F1F000, v20, v21, "XPCConnection fullfilling with result { requestID: %ld }", v23, 0xCu);
      MEMORY[0x266755550](v23, -1, -1);
    }

    v24 = *(v0 + 160);
    v25 = *(v0 + 168);

    specialized XPCUtils.Connection.finish(requestID:with:)(v25, v18);
    swift_unknownObjectRelease();
  }

  else
  {
    v26 = *(v0 + 184);
    if (v26 >> 60 == 15)
    {
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = *(v0 + 168);
        v30 = swift_slowAlloc();
        *v30 = 134217984;
        *(v30 + 4) = v29;
        _os_log_impl(&dword_264F1F000, v27, v28, "XPCConnection failing with empty result { requestID: %ld }", v30, 0xCu);
        MEMORY[0x266755550](v30, -1, -1);
      }

      lazy protocol witness table accessor for type XPCUtils.XPCError and conformance XPCUtils.XPCError();
      v31 = swift_allocError();
      v33 = v32;
      *(v32 + 8) = 0;
      *(v32 + 16) = 0;

      *v33 = 1;
      swift_getErrorValue();
      v34 = *(v0 + 40);
      v35 = Error.readableDescription.getter(*(v0 + 48), *(v0 + 56));
      v37 = v36;

      *(v0 + 16) = 3;
      *(v0 + 24) = v35;
      *(v0 + 32) = v37;
      lazy protocol witness table accessor for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError();
      v38 = _getErrorEmbeddedNSError<A>(_:)();
      if (v38)
      {
        v39 = v38;
        v40 = *(v0 + 32);
      }

      else
      {
        v39 = swift_allocError();
        v49 = *(v0 + 24);
        *v50 = *(v0 + 16);
        *(v50 + 8) = v49;
      }

      v51 = *(v0 + 160);
      specialized XPCUtils.Connection.fail(requestID:with:)(*(v0 + 168), v39);
    }

    else
    {
      outlined copy of Data._Representation(*(v0 + 176), v26);
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = *(v0 + 168);
        v44 = swift_slowAlloc();
        *v44 = 134217984;
        *(v44 + 4) = v43;
        _os_log_impl(&dword_264F1F000, v41, v42, "XPCConnection decoding error data { requestID: %ld }", v44, 0xCu);
        MEMORY[0x266755550](v44, -1, -1);
      }

      v46 = *(v0 + 176);
      v45 = *(v0 + 184);
      v47 = *(v0 + 160);

      v48 = *(v47 + direct field offset for XPCUtils.Connection.jsonDecoder);
      lazy protocol witness table accessor for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError();
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      v52 = *(v0 + 16);
      v54 = *(v0 + 24);
      v53 = *(v0 + 32);
      swift_bridgeObjectRetain_n();
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = *(v0 + 168);
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        *v58 = 134218242;
        *(v58 + 4) = v57;
        *(v58 + 12) = 2112;
        *(v0 + 112) = v52;
        *(v0 + 120) = v54;
        *(v0 + 128) = v53;
        lazy protocol witness table accessor for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError();

        if (_getErrorEmbeddedNSError<A>(_:)())
        {
          v60 = *(v0 + 128);
        }

        else
        {
          swift_allocError();
          v63 = *(v0 + 120);
          *v64 = *(v0 + 112);
          *(v64 + 8) = v63;
        }

        v65 = _swift_stdlib_bridgeErrorToNSError();

        *(v58 + 14) = v65;
        *v59 = v65;
        _os_log_impl(&dword_264F1F000, v55, v56, "XPCConnection failing with error { requestID: %ld, error: %@ }", v58, 0x16u);
        outlined destroy of NSObject?(v59, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x266755550](v59, -1, -1);
        MEMORY[0x266755550](v58, -1, -1);
      }

      else
      {
      }

      v66 = *(v0 + 24);
      v67 = *(v0 + 32);
      *(v0 + 112) = *(v0 + 16);
      *(v0 + 120) = v66;
      *(v0 + 128) = v67;
      lazy protocol witness table accessor for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError();

      v68 = _getErrorEmbeddedNSError<A>(_:)();
      if (v68)
      {
        v69 = v68;
        v70 = *(v0 + 128);
      }

      else
      {
        v69 = swift_allocError();
        v71 = *(v0 + 120);
        *v72 = *(v0 + 112);
        *(v72 + 8) = v71;
      }

      v74 = *(v0 + 176);
      v73 = *(v0 + 184);
      v75 = *(v0 + 160);
      specialized XPCUtils.Connection.fail(requestID:with:)(*(v0 + 168), v69);
      outlined consume of Data?(v74, v73);

      v76 = *(v0 + 32);
    }
  }

  v61 = *(v0 + 8);

  return v61();
}

void specialized XPCUtils.Connection.finish(requestID:with:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging8XPCUtilsO19XPCInterfaceRequestVSgMd, &_s15SecureMessaging8XPCUtilsO19XPCInterfaceRequestVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v18 - v7;
  v9 = type metadata accessor for XPCUtils.XPCInterfaceRequest();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*v2 + 184);
  swift_beginAccess();
  specialized Dictionary.removeValue(forKey:)(a1, v8);
  swift_endAccess();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    outlined destroy of NSObject?(v8, &_s15SecureMessaging8XPCUtilsO19XPCInterfaceRequestVSgMd, &_s15SecureMessaging8XPCUtilsO19XPCInterfaceRequestVSgMR);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      *(v17 + 4) = a1;
      _os_log_impl(&dword_264F1F000, v15, v16, "XPCConnection not tracking requestID. Failing finish operation { requestID: %ld }", v17, 0xCu);
      MEMORY[0x266755550](v17, -1, -1);
    }
  }

  else
  {
    outlined init with take of XPCUtils.XPCInterfaceRequest(v8, v13);
    v18[1] = a2;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy15SecureMessaging8XPCUtilsO20CollaboratorProtocol_ps5Error_pGMd, &_sScCy15SecureMessaging8XPCUtilsO20CollaboratorProtocol_ps5Error_pGMR);
    CheckedContinuation.resume(returning:)();
    outlined destroy of XPCUtils.XPCInterfaceRequest(v13);
  }
}

void specialized XPCUtils.Connection.fail(requestID:with:)(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging8XPCUtilsO19XPCInterfaceRequestVSgMd, &_s15SecureMessaging8XPCUtilsO19XPCInterfaceRequestVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v18 - v7;
  v9 = type metadata accessor for XPCUtils.XPCInterfaceRequest();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*v2 + 184);
  swift_beginAccess();
  specialized Dictionary.removeValue(forKey:)(a1, v8);
  swift_endAccess();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    outlined destroy of NSObject?(v8, &_s15SecureMessaging8XPCUtilsO19XPCInterfaceRequestVSgMd, &_s15SecureMessaging8XPCUtilsO19XPCInterfaceRequestVSgMR);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      *(v17 + 4) = a1;
      _os_log_impl(&dword_264F1F000, v15, v16, "XPCConnection not tracking requestID. Failing fail operation { requestID: %ld }", v17, 0xCu);
      MEMORY[0x266755550](v17, -1, -1);
    }
  }

  else
  {
    outlined init with take of XPCUtils.XPCInterfaceRequest(v8, v13);
    XPCUtils.XPCInterfaceRequest.resume(throwing:)(a2);
    outlined destroy of XPCUtils.XPCInterfaceRequest(v13);
  }
}

uint64_t specialized closure #1 in XPCUtils.Connection.init(queue:machServiceName:remoteObjectInterface:listenerEndpoint:)()
{
  v0 = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_264F1F000, v0, v1, "XPCConnection interrupted", v2, 2u);
    MEMORY[0x266755550](v2, -1, -1);
  }

  return specialized XPCUtils.Connection.failAllRunningRequestsAndRestartConnection()();
}

uint64_t specialized XPCUtils.XPCInterface.init(remoteInterface:)(uint64_t a1)
{
  v2 = v1;
  Logger.init(subsystem:category:)();
  *(v1 + direct field offset for XPCUtils.XPCInterface.needsReconnection) = 0;
  v4 = direct field offset for XPCUtils.XPCInterface.jsonDecoder;
  v5 = type metadata accessor for JSONDecoder();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  *(v1 + v4) = JSONDecoder.init()();
  v8 = direct field offset for XPCUtils.XPCInterface.jsonEncoder;
  v9 = type metadata accessor for JSONEncoder();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  *(v1 + v8) = JSONEncoder.init()();
  *(v1 + direct field offset for XPCUtils.XPCInterface._nextRequestID) = 0;
  *(v1 + direct field offset for XPCUtils.XPCInterface._nextConnectionID) = 1;
  v12 = direct field offset for XPCUtils.XPCInterface.runningRequests;
  *(v2 + v12) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_15SecureMessaging8XPCUtilsO10XPCRequest_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v13 = (v2 + direct field offset for XPCUtils.XPCInterface.connectionBlock);
  *v13 = 0;
  v13[1] = 0;
  v14 = (v2 + direct field offset for XPCUtils.XPCInterface.reconnectionBlock);
  *v14 = 0;
  v14[1] = 0;
  v15 = *(*v2 + 160);
  *(v2 + v15) = 0;
  swift_beginAccess();
  *(v2 + v15) = a1;
  return v2;
}

uint64_t specialized XPCUtils.Connection.init(queue:machServiceName:remoteObjectInterface:listenerEndpoint:)(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v6 = v5;
  Logger.init(subsystem:category:)();
  *(v5 + direct field offset for XPCUtils.Connection._nextRequestID) = 0;
  *(v5 + direct field offset for XPCUtils.Connection._nextConnectionID) = 1;
  v12 = direct field offset for XPCUtils.Connection.jsonDecoder;
  v13 = type metadata accessor for JSONDecoder();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *(v5 + v12) = JSONDecoder.init()();
  v16 = direct field offset for XPCUtils.Connection.jsonEncoder;
  v17 = type metadata accessor for JSONEncoder();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  *(v5 + v16) = JSONEncoder.init()();
  *(v5 + direct field offset for XPCUtils.Connection.connectionID) = 0;
  v20 = *(*v5 + 184);
  *(v6 + v20) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_15SecureMessaging8XPCUtilsO19XPCInterfaceRequestVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v21 = (v6 + *(*v6 + 192));
  *v21 = 0;
  v21[1] = 0;
  *(v6 + direct field offset for XPCUtils.Connection.queue) = a1;
  v22 = (v6 + direct field offset for XPCUtils.Connection.machServiceName);
  *v22 = a2;
  v22[1] = a3;
  *(v6 + direct field offset for XPCUtils.Connection.remoteObjectInterface) = a4;
  *(v6 + direct field offset for XPCUtils.Connection.listenerEndpoint) = a5;
  v23 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v24 = a1;
  v25 = a4;
  if (a5)
  {
    v26 = [v23 initWithListenerEndpoint_];
  }

  else
  {

    v27 = MEMORY[0x266754510](a2, a3);

    v26 = [v23 initWithMachServiceName:v27 options:0];
  }

  v28 = *(v6 + direct field offset for XPCUtils.Connection.queue);
  v29 = v26;
  [v29 _setQueue_];
  v30 = v29;
  [v30 setRemoteObjectInterface_];
  *(v6 + direct field offset for XPCUtils.Connection.connection) = v30;
  v31 = [v30 remoteObjectProxy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v32 = *(*v6 + 176);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging8XPCUtilsO17XPCDaemonProtocol_pMd, &_s15SecureMessaging8XPCUtilsO17XPCDaemonProtocol_pMR);
  swift_dynamicCast();
  v38[4] = partial apply for specialized closure #1 in XPCUtils.Connection.init(queue:machServiceName:remoteObjectInterface:listenerEndpoint:);
  v38[5] = v6;
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 1107296256;
  v38[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v38[3] = &block_descriptor_47;
  v33 = _Block_copy(v38);

  [v30 setInterruptionHandler_];
  _Block_release(v33);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_264F1F000, v34, v35, "XPCConnection starting XPC connection", v36, 2u);
    MEMORY[0x266755550](v36, -1, -1);
  }

  [v30 resume];
  return v6;
}

uint64_t specialized XPCUtils.XPCClient.init(machServiceName:listenerEndpoint:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64) + 15;
  v4[12] = swift_task_alloc();
  v8 = type metadata accessor for OS_dispatch_queue_serial.Attributes();
  v4[13] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v4[14] = swift_task_alloc();
  v10 = *(*(type metadata accessor for DispatchQoS() - 8) + 64) + 15;
  v4[15] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v11 = static XPCActor.shared;
  v4[16] = static XPCActor.shared;

  return MEMORY[0x2822009F8](specialized XPCUtils.XPCClient.init(machServiceName:listenerEndpoint:), v11, 0);
}

uint64_t specialized XPCUtils.XPCClient.init(machServiceName:listenerEndpoint:)()
{
  v1 = v0;
  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[11];
  v7 = v0[9];
  v27 = v0[10];
  v28 = v0[8];
  v29 = v0[6];
  v31 = v0[7];
  Logger.init(subsystem:category:)();
  type metadata accessor for OS_dispatch_queue_serial();
  static DispatchQoS.unspecified.getter();
  v0[5] = MEMORY[0x277D84F90];
  _s15SecureMessaging8XPCActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes, MEMORY[0x277D852D8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMd, &_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue_serial.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v6 + 104))(v5, *MEMORY[0x277D85268], v27);
  v8 = OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v9 = specialized static XPCUtils.interfaceForXPCDaemonProtocol()();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging8XPCUtilsO10ConnectionCy_AC17XPCDaemonProtocol_pGMd, &_s15SecureMessaging8XPCUtilsO10ConnectionCy_AC17XPCDaemonProtocol_pGMR);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = v28;
  v14 = specialized XPCUtils.Connection.init(queue:machServiceName:remoteObjectInterface:listenerEndpoint:)(v8, v29, v31, v9, v28);

  *(v7 + OBJC_IVAR____TtCO15SecureMessaging8XPCUtils9XPCClient_xpc) = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging8XPCUtilsO12XPCInterfaceCy_AC28DeliveryCollaboratorProtocol_pGMd, &_s15SecureMessaging8XPCUtilsO12XPCInterfaceCy_AC28DeliveryCollaboratorProtocol_pGMR);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  *(v7 + OBJC_IVAR____TtCO15SecureMessaging8XPCUtils9XPCClient_deliveryInterface) = specialized XPCUtils.XPCInterface.init(remoteInterface:)(0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging8XPCUtilsO12XPCInterfaceCy_AC32RegistrationCollaboratorProtocol_pGMd, &_s15SecureMessaging8XPCUtilsO12XPCInterfaceCy_AC32RegistrationCollaboratorProtocol_pGMR);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  *(v7 + OBJC_IVAR____TtCO15SecureMessaging8XPCUtils9XPCClient_registrationInterface) = specialized XPCUtils.XPCInterface.init(remoteInterface:)(0);
  v21 = *(v7 + OBJC_IVAR____TtCO15SecureMessaging8XPCUtils9XPCClient_deliveryInterface);
  v1[17] = v21;
  v22 = swift_allocObject();
  v1[18] = v22;
  swift_weakInit();
  v23 = *(*v21 + 344);

  v30 = (v23 + *v23);
  v24 = v23[1];
  v25 = swift_task_alloc();
  v1[19] = v25;
  *v25 = v1;
  v25[1] = specialized XPCUtils.XPCClient.init(machServiceName:listenerEndpoint:);

  return v30(&async function pointer to partial apply for closure #1 in XPCUtils.XPCClient.init(machServiceName:listenerEndpoint:), v22);
}

{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 136);
  v4 = *(*v0 + 128);
  v6 = *v0;

  return MEMORY[0x2822009F8](specialized XPCUtils.XPCClient.init(machServiceName:listenerEndpoint:), v4, 0);
}

{
  v1 = *(v0[9] + OBJC_IVAR____TtCO15SecureMessaging8XPCUtils9XPCClient_registrationInterface);
  v0[20] = v1;
  v2 = swift_allocObject();
  v0[21] = v2;
  swift_weakInit();
  v3 = *(*v1 + 344);

  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[22] = v5;
  *v5 = v0;
  v5[1] = specialized XPCUtils.XPCClient.init(machServiceName:listenerEndpoint:);

  return v7(&async function pointer to partial apply for closure #2 in XPCUtils.XPCClient.init(machServiceName:listenerEndpoint:), v2);
}

{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 160);
  v4 = *(*v0 + 128);
  v6 = *v0;

  return MEMORY[0x2822009F8](specialized XPCUtils.XPCClient.init(machServiceName:listenerEndpoint:), v4, 0);
}

{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[12];
  v4 = *(v0[9] + OBJC_IVAR____TtCO15SecureMessaging8XPCUtils9XPCClient_xpc);
  v5 = swift_allocObject();
  swift_weakInit();

  v6 = (v4 + *(*v4 + 192));

  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = partial apply for closure #3 in XPCUtils.XPCClient.init(machServiceName:listenerEndpoint:);
  v6[1] = v5;
  outlined consume of (@escaping @callee_guaranteed @Sendable @async (@guaranteed String) -> (@error @owned Error))?(v7);

  v9 = v0[1];
  v10 = v0[9];

  return v9(v10);
}

uint64_t specialized static XPCUtils.XPCClient.weakSharedInstance.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static XPCActor.shared;
  *(v0 + 16) = static XPCActor.shared;

  return MEMORY[0x2822009F8](specialized static XPCUtils.XPCClient.weakSharedInstance.getter, v1, 0);
}

{
  if (one-time initialization token for weakReference != -1)
  {
    swift_once();
  }

  if (swift_weakLoadStrong())
  {
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = type metadata accessor for XPCUtils.XPCClient();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    v6 = swift_task_alloc();
    *(v0 + 24) = v6;
    *v6 = v0;
    v6[1] = specialized static XPCUtils.XPCClient.weakSharedInstance.getter;

    return (specialized XPCUtils.XPCClient.init(machServiceName:listenerEndpoint:))(0xD00000000000001ELL, 0x80000002651E7980, 0);
  }
}

{
  v1 = *(v0 + 32);
  swift_weakAssign();
  v2 = *(v0 + 32);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t specialized static XPCUtils.XPCClient.weakSharedInstance.getter(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v3 = *(*v1 + 16);
  v5 = *v1;
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](specialized static XPCUtils.XPCClient.weakSharedInstance.getter, v3, 0);
}

unint64_t lazy protocol witness table accessor for type XPCUtils.XPCInterfaceType and conformance XPCUtils.XPCInterfaceType()
{
  result = lazy protocol witness table cache variable for type XPCUtils.XPCInterfaceType and conformance XPCUtils.XPCInterfaceType;
  if (!lazy protocol witness table cache variable for type XPCUtils.XPCInterfaceType and conformance XPCUtils.XPCInterfaceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCUtils.XPCInterfaceType and conformance XPCUtils.XPCInterfaceType);
  }

  return result;
}

uint64_t type metadata accessor for XPCUtils.XPCClient()
{
  result = type metadata singleton initialization cache for XPCUtils.XPCClient;
  if (!type metadata singleton initialization cache for XPCUtils.XPCClient)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for XPCUtils.XPCClient()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of XPCUtils.XPCClient.__allocating_init(machServiceName:listenerEndpoint:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 112);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for closure #2 in KDSRegistration.XPCCoordinator.isRegisteredChanged(simUniqueID:isRegistered:context:completion:);

  return v12(a1, a2, a3);
}

uint64_t _s15SecureMessaging8XPCUtilsO10ConnectionC21createDaemonInterface10resultType05errorI019isReconnectionEvent20requestCreationBlock03xpcP0qd__qd__m_qd_0_mSbAC19XPCInterfaceRequestVScCyAC20CollaboratorProtocol_ps5Error_pGYbXEyx_yAcN_pSg_10Foundation4DataVSgtYbctYbXEtYaKAcNRd__AC07XPCableV0Rd_0_r0_lFAC09XPCDaemonU0_p_AC08DeliverytU0_pAC09XPCClientoV0VTtt0g5Tf4dnnn_n(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v6 = static XPCActor.shared;
  v5[10] = static XPCActor.shared;

  return MEMORY[0x2822009F8](_s15SecureMessaging8XPCUtilsO10ConnectionC21createDaemonInterface10resultType05errorI019isReconnectionEvent20requestCreationBlock03xpcP0qd__qd__m_qd_0_mSbAC19XPCInterfaceRequestVScCyAC20CollaboratorProtocol_ps5Error_pGYbXEyx_yAcN_pSg_10Foundation4DataVSgtYbctYbXEtYaKAcNRd__AC07XPCableV0Rd_0_r0_lFAC09XPCDaemonU0_p_AC08DeliverytU0_pAC09XPCClientoV0VTtt0g5Tf4dnnn_nTY0_, v6, 0);
}

uint64_t _s15SecureMessaging8XPCUtilsO10ConnectionC21createDaemonInterface10resultType05errorI019isReconnectionEvent20requestCreationBlock03xpcP0qd__qd__m_qd_0_mSbAC19XPCInterfaceRequestVScCyAC20CollaboratorProtocol_ps5Error_pGYbXEyx_yAcN_pSg_10Foundation4DataVSgtYbctYbXEtYaKAcNRd__AC07XPCableV0Rd_0_r0_lFAC09XPCDaemonU0_p_AC08DeliverytU0_pAC09XPCClientoV0VTtt0g5Tf4dnnn_nTY0_(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t (*a6)(uint64_t a1), uint64_t a7, uint64_t a8)
{
  v9 = *(v8 + 72);
  v10 = direct field offset for XPCUtils.Connection._nextRequestID;
  v11 = *(v9 + direct field offset for XPCUtils.Connection._nextRequestID);
  *(v8 + 88) = v11;
  if (__OFADD__(v11, 1))
  {
    __break(1u);
  }

  else
  {
    *(v9 + v10) = v11 + 1;
    *(v8 + 96) = direct field offset for XPCUtils.Connection.logger;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      *(v14 + 4) = v11;
      _os_log_impl(&dword_264F1F000, v12, v13, "XPCConnection told to send { requestID: %ld }", v14, 0xCu);
      MEMORY[0x266755550](v14, -1, -1);
    }

    v16 = *(v8 + 72);
    v15 = *(v8 + 80);
    v22 = *(v8 + 56);
    v23 = *(v8 + 40);

    v17 = _s15SecureMessaging8XPCActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type XPCActor and conformance XPCActor, type metadata accessor for XPCActor);
    v18 = swift_task_alloc();
    *(v8 + 104) = v18;
    *(v18 + 16) = v16;
    *(v18 + 24) = v11;
    *(v18 + 32) = v23;
    *(v18 + 48) = v22;
    v19 = *(MEMORY[0x277D85A40] + 4);
    v20 = swift_task_alloc();
    *(v8 + 112) = v20;
    a8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging8XPCUtilsO20CollaboratorProtocol_pMd, &_s15SecureMessaging8XPCUtilsO20CollaboratorProtocol_pMR);
    *(v8 + 120) = a8;
    *v20 = v8;
    v20[1] = _s15SecureMessaging8XPCUtilsO10ConnectionC21createDaemonInterface10resultType05errorI019isReconnectionEvent20requestCreationBlock03xpcP0qd__qd__m_qd_0_mSbAC19XPCInterfaceRequestVScCyAC20CollaboratorProtocol_ps5Error_pGYbXEyx_yAcN_pSg_10Foundation4DataVSgtYbctYbXEtYaKAcNRd__AC07XPCableV0Rd_0_r0_lFAC09XPCDaemonU0_p_AC08DeliverytU0_pAC09XPCClientoV0VTtt0g5Tf4dnnn_nTQ1_;
    a6 = partial apply for specialized closure #1 in XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:);
    a1 = v8 + 16;
    a5 = 0x80000002651E8F70;
    a2 = v15;
    a3 = v17;
    a4 = 0xD00000000000005ELL;
    a7 = v18;
  }

  return MEMORY[0x2822008A0](a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t _s15SecureMessaging8XPCUtilsO10ConnectionC21createDaemonInterface10resultType05errorI019isReconnectionEvent20requestCreationBlock03xpcP0qd__qd__m_qd_0_mSbAC19XPCInterfaceRequestVScCyAC20CollaboratorProtocol_ps5Error_pGYbXEyx_yAcN_pSg_10Foundation4DataVSgtYbctYbXEtYaKAcNRd__AC07XPCableV0Rd_0_r0_lFAC09XPCDaemonU0_p_AC08DeliverytU0_pAC09XPCClientoV0VTtt0g5Tf4dnnn_nTQ1_()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v9 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = *(v2 + 80);
    v5 = _s15SecureMessaging8XPCUtilsO10ConnectionC21createDaemonInterface10resultType05errorI019isReconnectionEvent20requestCreationBlock03xpcP0qd__qd__m_qd_0_mSbAC19XPCInterfaceRequestVScCyAC20CollaboratorProtocol_ps5Error_pGYbXEyx_yAcN_pSg_10Foundation4DataVSgtYbctYbXEtYaKAcNRd__AC07XPCableV0Rd_0_r0_lFAC09XPCDaemonU0_p_AC08DeliverytU0_pAC09XPCClientoV0VTtt0g5Tf4dnnn_nTY3_;
  }

  else
  {
    v6 = *(v2 + 104);
    v7 = *(v2 + 80);

    v5 = _s15SecureMessaging8XPCUtilsO10ConnectionC21createDaemonInterface10resultType05errorI019isReconnectionEvent20requestCreationBlock03xpcP0qd__qd__m_qd_0_mSbAC19XPCInterfaceRequestVScCyAC20CollaboratorProtocol_ps5Error_pGYbXEyx_yAcN_pSg_10Foundation4DataVSgtYbctYbXEtYaKAcNRd__AC07XPCableV0Rd_0_r0_lFAC09XPCDaemonU0_p_AC08DeliverytU0_pAC09XPCClientoV0VTtt0g5Tf4dnnn_nTY2_;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t _s15SecureMessaging8XPCUtilsO10ConnectionC21createDaemonInterface10resultType05errorI019isReconnectionEvent20requestCreationBlock03xpcP0qd__qd__m_qd_0_mSbAC19XPCInterfaceRequestVScCyAC20CollaboratorProtocol_ps5Error_pGYbXEyx_yAcN_pSg_10Foundation4DataVSgtYbctYbXEtYaKAcNRd__AC07XPCableV0Rd_0_r0_lFAC09XPCDaemonU0_p_AC08DeliverytU0_pAC09XPCClientoV0VTtt0g5Tf4dnnn_nTY2_()
{
  v1 = v0[2];
  v2 = v0[9] + v0[12];
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[11];
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = v5;
    _os_log_impl(&dword_264F1F000, v3, v4, "XPCConnection fulfilling with successful result { requestID: %ld }", v6, 0xCu);
    MEMORY[0x266755550](v6, -1, -1);
  }

  v7 = v0[15];

  v0[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging8XPCUtilsO28DeliveryCollaboratorProtocol_pMd, &_s15SecureMessaging8XPCUtilsO28DeliveryCollaboratorProtocol_pMR);
  swift_dynamicCast();
  v8 = v0[4];
  v9 = v0[1];

  return v9(v8);
}

uint64_t _s15SecureMessaging8XPCUtilsO10ConnectionC21createDaemonInterface10resultType05errorI019isReconnectionEvent20requestCreationBlock03xpcP0qd__qd__m_qd_0_mSbAC19XPCInterfaceRequestVScCyAC20CollaboratorProtocol_ps5Error_pGYbXEyx_yAcN_pSg_10Foundation4DataVSgtYbctYbXEtYaKAcNRd__AC07XPCableV0Rd_0_r0_lFAC09XPCDaemonU0_p_AC012RegistrationtU0_pAC09XPCClientoV0VTtt0g5Tf4dnnn_n(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v6 = static XPCActor.shared;
  v5[10] = static XPCActor.shared;

  return MEMORY[0x2822009F8](_s15SecureMessaging8XPCUtilsO10ConnectionC21createDaemonInterface10resultType05errorI019isReconnectionEvent20requestCreationBlock03xpcP0qd__qd__m_qd_0_mSbAC19XPCInterfaceRequestVScCyAC20CollaboratorProtocol_ps5Error_pGYbXEyx_yAcN_pSg_10Foundation4DataVSgtYbctYbXEtYaKAcNRd__AC07XPCableV0Rd_0_r0_lFAC09XPCDaemonU0_p_AC012RegistrationtU0_pAC09XPCClientoV0VTtt0g5Tf4dnnn_nTY0_, v6, 0);
}

uint64_t _s15SecureMessaging8XPCUtilsO10ConnectionC21createDaemonInterface10resultType05errorI019isReconnectionEvent20requestCreationBlock03xpcP0qd__qd__m_qd_0_mSbAC19XPCInterfaceRequestVScCyAC20CollaboratorProtocol_ps5Error_pGYbXEyx_yAcN_pSg_10Foundation4DataVSgtYbctYbXEtYaKAcNRd__AC07XPCableV0Rd_0_r0_lFAC09XPCDaemonU0_p_AC012RegistrationtU0_pAC09XPCClientoV0VTtt0g5Tf4dnnn_nTY0_(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t (*a6)(uint64_t a1), uint64_t a7, uint64_t a8)
{
  v9 = *(v8 + 72);
  v10 = direct field offset for XPCUtils.Connection._nextRequestID;
  v11 = *(v9 + direct field offset for XPCUtils.Connection._nextRequestID);
  *(v8 + 88) = v11;
  if (__OFADD__(v11, 1))
  {
    __break(1u);
  }

  else
  {
    *(v9 + v10) = v11 + 1;
    *(v8 + 96) = direct field offset for XPCUtils.Connection.logger;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      *(v14 + 4) = v11;
      _os_log_impl(&dword_264F1F000, v12, v13, "XPCConnection told to send { requestID: %ld }", v14, 0xCu);
      MEMORY[0x266755550](v14, -1, -1);
    }

    v16 = *(v8 + 72);
    v15 = *(v8 + 80);
    v22 = *(v8 + 56);
    v23 = *(v8 + 40);

    v17 = _s15SecureMessaging8XPCActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type XPCActor and conformance XPCActor, type metadata accessor for XPCActor);
    v18 = swift_task_alloc();
    *(v8 + 104) = v18;
    *(v18 + 16) = v16;
    *(v18 + 24) = v11;
    *(v18 + 32) = v23;
    *(v18 + 48) = v22;
    v19 = *(MEMORY[0x277D85A40] + 4);
    v20 = swift_task_alloc();
    *(v8 + 112) = v20;
    a8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging8XPCUtilsO20CollaboratorProtocol_pMd, &_s15SecureMessaging8XPCUtilsO20CollaboratorProtocol_pMR);
    *(v8 + 120) = a8;
    *v20 = v8;
    v20[1] = _s15SecureMessaging8XPCUtilsO10ConnectionC21createDaemonInterface10resultType05errorI019isReconnectionEvent20requestCreationBlock03xpcP0qd__qd__m_qd_0_mSbAC19XPCInterfaceRequestVScCyAC20CollaboratorProtocol_ps5Error_pGYbXEyx_yAcN_pSg_10Foundation4DataVSgtYbctYbXEtYaKAcNRd__AC07XPCableV0Rd_0_r0_lFAC09XPCDaemonU0_p_AC012RegistrationtU0_pAC09XPCClientoV0VTtt0g5Tf4dnnn_nTQ1_;
    a6 = partial apply for specialized closure #1 in XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:);
    a1 = v8 + 16;
    a5 = 0x80000002651E8F70;
    a2 = v15;
    a3 = v17;
    a4 = 0xD00000000000005ELL;
    a7 = v18;
  }

  return MEMORY[0x2822008A0](a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t _s15SecureMessaging8XPCUtilsO10ConnectionC21createDaemonInterface10resultType05errorI019isReconnectionEvent20requestCreationBlock03xpcP0qd__qd__m_qd_0_mSbAC19XPCInterfaceRequestVScCyAC20CollaboratorProtocol_ps5Error_pGYbXEyx_yAcN_pSg_10Foundation4DataVSgtYbctYbXEtYaKAcNRd__AC07XPCableV0Rd_0_r0_lFAC09XPCDaemonU0_p_AC012RegistrationtU0_pAC09XPCClientoV0VTtt0g5Tf4dnnn_nTQ1_()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v9 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = *(v2 + 80);
    v5 = _s15SecureMessaging8XPCUtilsO10ConnectionC21createDaemonInterface10resultType05errorI019isReconnectionEvent20requestCreationBlock03xpcP0qd__qd__m_qd_0_mSbAC19XPCInterfaceRequestVScCyAC20CollaboratorProtocol_ps5Error_pGYbXEyx_yAcN_pSg_10Foundation4DataVSgtYbctYbXEtYaKAcNRd__AC07XPCableV0Rd_0_r0_lFAC09XPCDaemonU0_p_AC012RegistrationtU0_pAC09XPCClientoV0VTtt0g5Tf4dnnn_nTY3_;
  }

  else
  {
    v6 = *(v2 + 104);
    v7 = *(v2 + 80);

    v5 = _s15SecureMessaging8XPCUtilsO10ConnectionC21createDaemonInterface10resultType05errorI019isReconnectionEvent20requestCreationBlock03xpcP0qd__qd__m_qd_0_mSbAC19XPCInterfaceRequestVScCyAC20CollaboratorProtocol_ps5Error_pGYbXEyx_yAcN_pSg_10Foundation4DataVSgtYbctYbXEtYaKAcNRd__AC07XPCableV0Rd_0_r0_lFAC09XPCDaemonU0_p_AC012RegistrationtU0_pAC09XPCClientoV0VTtt0g5Tf4dnnn_nTY2_;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t _s15SecureMessaging8XPCUtilsO10ConnectionC21createDaemonInterface10resultType05errorI019isReconnectionEvent20requestCreationBlock03xpcP0qd__qd__m_qd_0_mSbAC19XPCInterfaceRequestVScCyAC20CollaboratorProtocol_ps5Error_pGYbXEyx_yAcN_pSg_10Foundation4DataVSgtYbctYbXEtYaKAcNRd__AC07XPCableV0Rd_0_r0_lFAC09XPCDaemonU0_p_AC012RegistrationtU0_pAC09XPCClientoV0VTtt0g5Tf4dnnn_nTY2_()
{
  v1 = v0[2];
  v2 = v0[9] + v0[12];
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[11];
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = v5;
    _os_log_impl(&dword_264F1F000, v3, v4, "XPCConnection fulfilling with successful result { requestID: %ld }", v6, 0xCu);
    MEMORY[0x266755550](v6, -1, -1);
  }

  v7 = v0[15];

  v0[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging8XPCUtilsO32RegistrationCollaboratorProtocol_pMd, &_s15SecureMessaging8XPCUtilsO32RegistrationCollaboratorProtocol_pMR);
  swift_dynamicCast();
  v8 = v0[4];
  v9 = v0[1];

  return v9(v8);
}

uint64_t _s15SecureMessaging8XPCUtilsO10ConnectionC21createDaemonInterface10resultType05errorI019isReconnectionEvent20requestCreationBlock03xpcP0qd__qd__m_qd_0_mSbAC19XPCInterfaceRequestVScCyAC20CollaboratorProtocol_ps5Error_pGYbXEyx_yAcN_pSg_10Foundation4DataVSgtYbctYbXEtYaKAcNRd__AC07XPCableV0Rd_0_r0_lFAC09XPCDaemonU0_p_AC012RegistrationtU0_pAC09XPCClientoV0VTtt0g5Tf4dnnn_nTY3_()
{
  v1 = v0[13];

  v2 = v0[1];
  v3 = v0[16];

  return v2();
}

uint64_t partial apply for specialized closure #1 in XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:)(uint64_t a1)
{
  return partial apply for specialized closure #1 in XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:)(a1, &unk_2876C85E0, partial apply for specialized closure #1 in closure #1 in XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:));
}

{
  return partial apply for specialized closure #1 in XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:)(a1, &unk_2876C8658, partial apply for specialized closure #1 in closure #1 in XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:));
}

uint64_t sub_264FA5BD0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t partial apply for specialized closure #1 in closure #1 in XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  return specialized closure #1 in closure #1 in XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:)(a1, a2, a3, *(v3 + 16), *(v3 + 24), &unk_2876C8608, &async function pointer to partial apply for specialized closure #1 in closure #1 in closure #1 in XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:));
}

{
  return specialized closure #1 in closure #1 in XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:)(a1, a2, a3, *(v3 + 16), *(v3 + 24), &unk_2876C8680, &async function pointer to partial apply for specialized closure #1 in closure #1 in closure #1 in XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:));
}

uint64_t partial apply for specialized closure #1 in closure #1 in closure #1 in XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return specialized closure #1 in closure #1 in closure #1 in XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return specialized closure #1 in closure #1 in closure #1 in XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t lazy protocol witness table accessor for type XPCUtils.XPCError and conformance XPCUtils.XPCError()
{
  result = lazy protocol witness table cache variable for type XPCUtils.XPCError and conformance XPCUtils.XPCError;
  if (!lazy protocol witness table cache variable for type XPCUtils.XPCError and conformance XPCUtils.XPCError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCUtils.XPCError and conformance XPCUtils.XPCError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCUtils.XPCError and conformance XPCUtils.XPCError;
  if (!lazy protocol witness table cache variable for type XPCUtils.XPCError and conformance XPCUtils.XPCError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCUtils.XPCError and conformance XPCUtils.XPCError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCUtils.XPCError and conformance XPCUtils.XPCError;
  if (!lazy protocol witness table cache variable for type XPCUtils.XPCError and conformance XPCUtils.XPCError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCUtils.XPCError and conformance XPCUtils.XPCError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCUtils.XPCError and conformance XPCUtils.XPCError;
  if (!lazy protocol witness table cache variable for type XPCUtils.XPCError and conformance XPCUtils.XPCError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCUtils.XPCError and conformance XPCUtils.XPCError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCUtils.XPCError and conformance XPCUtils.XPCError;
  if (!lazy protocol witness table cache variable for type XPCUtils.XPCError and conformance XPCUtils.XPCError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCUtils.XPCError and conformance XPCUtils.XPCError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError()
{
  result = lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError;
  if (!lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError;
  if (!lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError;
  if (!lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError;
  if (!lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError;
  if (!lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError;
  if (!lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError);
  }

  return result;
}

uint64_t outlined init with take of XPCUtils.XPCInterfaceRequest(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCUtils.XPCInterfaceRequest();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of XPCUtils.XPCInterfaceRequest(uint64_t a1)
{
  v2 = type metadata accessor for XPCUtils.XPCInterfaceRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_17Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[7];
  if (v3 >> 60 != 15)
  {
    outlined consume of Data._Representation(v0[6], v3);
  }

  v4 = v0[8];
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

unint64_t type metadata accessor for OS_dispatch_queue_serial()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue_serial;
  if (!lazy cache variable for type metadata for OS_dispatch_queue_serial)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue_serial);
  }

  return result;
}

uint64_t _s15SecureMessaging8XPCActorCACScAAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type [OS_dispatch_queue_serial.Attributes] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [OS_dispatch_queue_serial.Attributes] and conformance [A];
  if (!lazy protocol witness table cache variable for type [OS_dispatch_queue_serial.Attributes] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMd, &_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [OS_dispatch_queue_serial.Attributes] and conformance [A]);
  }

  return result;
}

uint64_t sub_264FA61B8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t partial apply for closure #1 in XPCUtils.XPCClient.init(machServiceName:listenerEndpoint:)(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in XPCUtils.XPCClient.init(machServiceName:listenerEndpoint:)(a1, v1);
}

uint64_t partial apply for closure #2 in XPCUtils.XPCClient.init(machServiceName:listenerEndpoint:)(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #2 in XPCUtils.XPCClient.init(machServiceName:listenerEndpoint:)(a1, v1);
}

uint64_t outlined init with copy of XPCUtils.XPCInterfaceRequest(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCUtils.XPCInterfaceRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of (key: Int, value: XPCUtils.XPCInterfaceRequest)?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi3key_15SecureMessaging8XPCUtilsO19XPCInterfaceRequestV5valuetSgMd, &_sSi3key_15SecureMessaging8XPCUtilsO19XPCInterfaceRequestV5valuetSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t VersatileError.init(type:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v12 - v9;
  (*(v7 + 16))(&v12 - v9, a1, AssociatedTypeWitness);
  (*(a3 + 104))(v10, 0, 0, a2, a3);
  return (*(v7 + 8))(a1, AssociatedTypeWitness);
}

uint64_t _s15SecureMessaging12asyncRethrow_2as3logq_q_yYaYbKXK_xySSYbcSgtYaxYKAA14VersatileErrorRzr0_lF(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = v7;
  v9[14] = v17;
  v9[15] = v18;
  v9[12] = a6;
  v9[13] = a7;
  v9[10] = a4;
  v9[11] = a5;
  v11 = *(*(swift_getAssociatedTypeWitness() - 8) + 64) + 15;
  v9[16] = swift_task_alloc();
  v15 = (a2 + *a2);
  v12 = a2[1];
  v13 = swift_task_alloc();
  v9[17] = v13;
  *v13 = v9;
  v13[1] = _s15SecureMessaging12asyncRethrow_2as3logq_q_yYaYbKXK_xySSYbcSgtYaxYKAA14VersatileErrorRzr0_lFTQ0_;

  return v15(a1);
}

uint64_t _s15SecureMessaging12asyncRethrow_2as3logq_q_yYaYbKXK_xySSYbcSgtYaxYKAA14VersatileErrorRzr0_lFTQ0_()
{
  v2 = *(*v1 + 136);
  v3 = *v1;
  v3[18] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](_s15SecureMessaging12asyncRethrow_2as3logq_q_yYaYbKXK_xySSYbcSgtYaxYKAA14VersatileErrorRzr0_lFTY1_, 0, 0);
  }

  else
  {
    v4 = v3[16];

    v5 = v3[1];

    return v5();
  }
}

uint64_t _s15SecureMessaging12asyncRethrow_2as3logq_q_yYaYbKXK_xySSYbcSgtYaxYKAA14VersatileErrorRzr0_lFTY1_()
{
  v1 = v0[18];
  v2 = v0[11];
  swift_getErrorValue();
  v3 = v0[2];
  v4 = Error.readableDescription.getter(v0[3], v0[4]);
  if (v2)
  {
    v6 = v0[12];
    (v0[11])(v4, v5);
  }

  v7 = v0[18];
  v9 = v0[15];
  v8 = v0[16];
  v11 = v0[13];
  v10 = v0[14];
  v12 = v0[10];

  (*(v10 + 88))(v11, v10);
  swift_getErrorValue();
  v13 = v0[5];
  v14 = Error.readableDescription.getter(v0[6], v0[7]);
  (*(v10 + 104))(v8, v14, v15, v11, v10);
  v16 = *(*(v10 + 8) + 8);
  swift_willThrowTypedImpl();

  v17 = v0[1];

  return v17();
}

uint64_t _s15SecureMessaging23asyncRethrowIfWrongType_2as3logq_q_yYaYbKXK_xySSYbcSgtYaxYKAA14VersatileErrorRzr0_lF(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = v7;
  v10[15] = v20;
  v10[16] = v21;
  v10[13] = a6;
  v10[14] = a7;
  v10[11] = a4;
  v10[12] = a5;
  v12 = *(*(swift_getAssociatedTypeWitness() - 8) + 64) + 15;
  v10[17] = swift_task_alloc();
  v13 = *(a7 - 8);
  v10[18] = v13;
  v14 = *(v13 + 64) + 15;
  v10[19] = swift_task_alloc();
  v10[20] = swift_task_alloc();
  v18 = (a2 + *a2);
  v15 = a2[1];
  v16 = swift_task_alloc();
  v10[21] = v16;
  *v16 = v10;
  v16[1] = _s15SecureMessaging23asyncRethrowIfWrongType_2as3logq_q_yYaYbKXK_xySSYbcSgtYaxYKAA14VersatileErrorRzr0_lFTQ0_;

  return v18(a1);
}

uint64_t _s15SecureMessaging23asyncRethrowIfWrongType_2as3logq_q_yYaYbKXK_xySSYbcSgtYaxYKAA14VersatileErrorRzr0_lFTQ0_()
{
  v2 = *(*v1 + 168);
  v3 = *v1;
  v3[22] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](_s15SecureMessaging23asyncRethrowIfWrongType_2as3logq_q_yYaYbKXK_xySSYbcSgtYaxYKAA14VersatileErrorRzr0_lFTY1_, 0, 0);
  }

  else
  {
    v5 = v3[19];
    v4 = v3[20];
    v6 = v3[17];

    v7 = v3[1];

    return v7();
  }
}

uint64_t _s15SecureMessaging23asyncRethrowIfWrongType_2as3logq_q_yYaYbKXK_xySSYbcSgtYaxYKAA14VersatileErrorRzr0_lFTY1_()
{
  v1 = *(v0 + 176);
  *(v0 + 64) = v1;
  v2 = *(v0 + 160);
  v3 = *(v0 + 112);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 152);
    v6 = *(v0 + 160);
    v7 = *(v0 + 144);
    v8 = *(v0 + 112);
    v9 = *(v0 + 96);

    (*(v7 + 32))(v5, v6, v8);
    if (v9)
    {
      v10 = *(v0 + 152);
      v12 = *(v0 + 96);
      v11 = *(v0 + 104);
      v13 = Error.readableDescription.getter(*(v0 + 112), *(*(*(v0 + 120) + 8) + 8));
      v12(v13);
    }

    v15 = *(v0 + 144);
    v14 = *(v0 + 152);
    v16 = *(v0 + 120);
    v17 = *(v0 + 112);
    (*(v15 + 16))(*(v0 + 128), v14, v17);
    v18 = *(*(v16 + 8) + 8);
    swift_willThrowTypedImpl();
    (*(v15 + 8))(v14, v17);
    v19 = *(v0 + 64);
  }

  else
  {
    v20 = *(v0 + 176);
    v21 = *(v0 + 96);

    swift_getErrorValue();
    v22 = *(v0 + 16);
    v23 = Error.readableDescription.getter(*(v0 + 24), *(v0 + 32));
    if (v21)
    {
      v25 = *(v0 + 104);
      (*(v0 + 96))(v23, v24);
    }

    v26 = *(v0 + 176);
    v28 = *(v0 + 128);
    v27 = *(v0 + 136);
    v30 = *(v0 + 112);
    v29 = *(v0 + 120);
    v31 = *(v0 + 88);

    (*(v29 + 88))(v30, v29);
    swift_getErrorValue();
    v32 = *(v0 + 40);
    v33 = Error.readableDescription.getter(*(v0 + 48), *(v0 + 56));
    (*(v29 + 104))(v27, v33, v34, v30, v29);
    v35 = *(*(v29 + 8) + 8);
    swift_willThrowTypedImpl();
    v19 = v26;
  }

  v37 = *(v0 + 152);
  v36 = *(v0 + 160);
  v38 = *(v0 + 136);

  v39 = *(v0 + 8);

  return v39();
}

void _s15SecureMessaging7rethrow_2as3logq_q_yKXK_xySScSgtxYKAA14VersatileErrorRzr0_lF(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23[0] = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(*(AssociatedTypeWitness - 8) + 64);
  v15 = MEMORY[0x28223BE20](AssociatedTypeWitness - 8);
  v17 = v23 - v16;
  a1(v15);
  if (v8)
  {
    swift_getErrorValue();
    v18 = Error.readableDescription.getter(v23[6], v23[7]);
    if (a4)
    {
      a4(v18, v19);
    }

    (*(a8 + 88))(a6, a8);
    swift_getErrorValue();
    v20 = Error.readableDescription.getter(v23[2], v23[3]);
    (*(a8 + 104))(v17, v20, v21, a6, a8);
    v22 = *(*(a8 + 8) + 8);
    swift_willThrowTypedImpl();
  }
}

uint64_t VersatileError.errorCode.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = v10 - v7;
  (*(a2 + 88))(a1, a2);
  swift_getAssociatedConformanceWitness();
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(v5 + 8))(v8, AssociatedTypeWitness);
  return v10[1];
}

uint64_t Error.readableDescription.getter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v61 = a2;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8SwiftMLS0B0O8MLSErrorOSgMd, &_s8SwiftMLS0B0O8MLSErrorOSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = (MEMORY[0x28223BE20])();
  v8 = &v59 - v7;
  v9 = *(a1 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v6);
  v59 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v59 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v59 - v16;
  v18 = type metadata accessor for MLS.MLSError();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v9;
  v23 = *(v9 + 16);
  v62 = v3;
  v23(v17, v3, a1);
  v24 = swift_dynamicCast();
  v25 = *(v19 + 56);
  if (v24)
  {
    v25(v8, 0, 1, v18);
    (*(v19 + 32))(v22, v8, v18);
    v65 = 0;
    v66 = 0xE000000000000000;
    _StringGuts.grow(_:)(16);
    MEMORY[0x2667545A0](0x534C4D7466697753, 0xEE002E726F727245);
    _print_unlocked<A, B>(_:_:)();
    v26 = v65;
    (*(v19 + 8))(v22, v18);
  }

  else
  {
    v25(v8, 1, 1, v18);
    outlined destroy of NSObject?(v8, &_s8SwiftMLS0B0O8MLSErrorOSgMd, &_s8SwiftMLS0B0O8MLSErrorOSgMR);
    v27 = v62;
    v23(v15, v62, a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging14VersatileError_pMd, &_s15SecureMessaging14VersatileError_pMR);
    if (swift_dynamicCast())
    {
      outlined init with take of MLS.KeyUpdatePolicy(v63, &v65);
      v28 = v67;
      v29 = v68;
      __swift_project_boxed_opaque_existential_1(&v65, v67);
      v30 = (*(v29 + 96))(v28, v29);
      if (v31)
      {
        v32 = v30;
        v33 = v31;
        *&v63[0] = 0;
        *(&v63[0] + 1) = 0xE000000000000000;
        v34 = v67;
        v35 = v68;
        __swift_project_boxed_opaque_existential_1(&v65, v67);
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v37 = *(AssociatedTypeWitness - 8);
        v38 = (*(v37 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
        MEMORY[0x28223BE20](AssociatedTypeWitness);
        v40 = &v59 - v39;
        (*(v35 + 88))(v34, v35);
        DefaultStringInterpolation.appendInterpolation<A>(_:)();
        (*(v37 + 8))(v40, AssociatedTypeWitness);
        MEMORY[0x2667545A0](v32, v33);
      }

      else
      {
        *&v63[0] = 0;
        *(&v63[0] + 1) = 0xE000000000000000;
        v44 = v67;
        v45 = v68;
        __swift_project_boxed_opaque_existential_1(&v65, v67);
        v46 = swift_getAssociatedTypeWitness();
        v47 = *(v46 - 8);
        v48 = (*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
        MEMORY[0x28223BE20](v46);
        v50 = &v59 - v49;
        (*(v45 + 88))(v44, v45);
        DefaultStringInterpolation.appendInterpolation<A>(_:)();
        (*(v47 + 8))(v50, v46);
      }

      v26 = *&v63[0];
      __swift_destroy_boxed_opaque_existential_1Tm(&v65);
    }

    else
    {
      v64 = 0;
      memset(v63, 0, sizeof(v63));
      outlined destroy of NSObject?(v63, &_s15SecureMessaging14VersatileError_pSgMd, &_s15SecureMessaging14VersatileError_pSgMR);
      v41 = v59;
      v23(v59, v27, a1);
      v42 = _getErrorEmbeddedNSError<A>(_:)();
      if (v42)
      {
        v43 = v42;
        (*(v60 + 8))(v41, a1);
      }

      else
      {
        v43 = swift_allocError();
        (*(v60 + 32))(v51, v41, a1);
      }

      v52 = _convertErrorToNSError(_:)();

      v53 = [v52 domain];
      v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v56 = v55;

      v65 = v54;
      v66 = v56;
      MEMORY[0x2667545A0](58, 0xE100000000000000);
      *&v63[0] = [v52 code];
      v57 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2667545A0](v57);

      return v65;
    }
  }

  return v26;
}