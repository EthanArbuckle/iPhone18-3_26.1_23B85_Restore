uint64_t PommesSearch.cacheMUXContext(msg:)(uint64_t a1)
{
  v2 = v1;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.pommes);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2232BB000, v5, v6, "POMMES caching MUX context", v7, 2u);
    MEMORY[0x223DE0F80](v7, -1, -1);
  }

  return (*(**(v2 + 48) + 160))(a1);
}

uint64_t PommesSearch.logCompletionOfPommesRequest(requestId:pommesCandidateId:result:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  v6 = v5;
  v57 = a2;
  v58 = a3;
  v56 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch06PommesC5ErrorVSgMd, &_s21SiriInformationSearch06PommesC5ErrorVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v55 - v12;
  v14 = type metadata accessor for PommesSearchError(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v55 = (&v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = type metadata accessor for PommesSearchReason();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v23 = MEMORY[0x28223BE20](v19, v22);
  v25 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v26);
  v28 = &v55 - v27;
  if ((a5 & 1) == 0)
  {
    v41 = *(v6 + 64);
    v42 = PommesResponse.pommesRequestResult.getter();
    dispatch thunk of PommesResponse.searchReason.getter();
    v43 = PommesResponse.isHandledByPreflight.getter();
    v44 = PommesResponse.preflightClientHandlerIdentifier.getter();
    (*(*v41 + 136))(v56, v57, v58, v42, v28, v43 & 1, v44, v45);

    return (*(v20 + 8))(v28, v19);
  }

  v29 = v56;
  v60 = a4;
  v30 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v31 = swift_dynamicCast();
  v32 = *(v15 + 56);
  if (!v31)
  {
    v32(v13, 1, 1, v14);
    outlined destroy of MediaUserStateCenter?(v13, &_s21SiriInformationSearch06PommesC5ErrorVSgMd, &_s21SiriInformationSearch06PommesC5ErrorVSgMR);
    v46 = *(v6 + 64);
    (*(v20 + 104))(v28, *MEMORY[0x277D56670], v19);
    (*(*v46 + 144))(v29, v57, v58, 0, v28);
    return (*(v20 + 8))(v28, v19);
  }

  v32(v13, 0, 1, v14);
  v33 = v13;
  v34 = v55;
  outlined init with take of PerformanceUtil.Ticket(v33, v55, type metadata accessor for PommesSearchError);
  v35 = v20;
  v36 = v19;
  (*(v20 + 16))(v25, v34 + *(v14 + 20), v19);
  v60 = *v34;
  v37 = v60;
  if (!swift_dynamicCast())
  {
    v48 = *(**(v6 + 64) + 144);
    v49 = v29;
    v39 = v57;
    v40 = v58;
LABEL_11:
    v48(v49, v39, v40, 0, v25);
    goto LABEL_12;
  }

  v38 = v59 >> 6;
  v39 = v57;
  v40 = v58;
  if (!v38)
  {
    (*(**(v6 + 64) + 152))(v29, v57, v58);
    goto LABEL_12;
  }

  if (v38 != 1)
  {
    if (v59 != 128)
    {
      if (v59 == 129)
      {
        v50 = v29;
        v51 = v57;
        v52 = v58;
        v53 = [objc_allocWithZone(MEMORY[0x277D5A0A0]) init];
        v54 = v53;
        if (v53)
        {
          [v53 setPommesConfidenceScore_];
          [v54 setPegasusDomain_];
          [v54 setIsLowConfidenceKnowledgeResult_];
        }

        (*(**(v6 + 64) + 136))(v50, v51, v52, v54, v25, 0, 0, 0);

        v34 = v55;
      }

      else
      {
        (*(**(v6 + 64) + 144))(v29, v57, v58, 3, v25);
      }

      goto LABEL_12;
    }

    v48 = *(**(v6 + 64) + 144);
    v49 = v29;
    goto LABEL_11;
  }

  (*(**(v6 + 64) + 144))(v29, v57, v58, dword_2234D09F4[v59 & 0x3F], v25);
LABEL_12:
  (*(v35 + 8))(v25, v36);
  return outlined destroy of PommesSearchRequest.ParseState(v34, type metadata accessor for PommesSearchError);
}

void closure #3 in PommesSearch.runGeoPersonalizationShadowLogging(result:)(unint64_t a1, char a2)
{
  if (a2)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.pommes);
    v4 = a1;
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    outlined consume of Result<[IQFMapsPersonalizationResult], Error>(a1, 1);
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      v8 = a1;
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v9;
      *v7 = v9;
      _os_log_impl(&dword_2232BB000, oslog, v5, "Shadow logger failed due to error: %@", v6, 0xCu);
      outlined destroy of MediaUserStateCenter?(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x223DE0F80](v7, -1, -1);
LABEL_12:
      MEMORY[0x223DE0F80](v6, -1, -1);
    }
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.pommes);

    oslog = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v11))
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      if (a1 >> 62)
      {
        v12 = __CocoaSet.count.getter();
      }

      else
      {
        v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v6 + 4) = v12;
      outlined consume of Result<[IQFMapsPersonalizationResult], Error>(a1, 0);
      _os_log_impl(&dword_2232BB000, oslog, v11, "Shadow logger found and logged details about %ld events", v6, 0xCu);
      goto LABEL_12;
    }

    outlined consume of Result<[IQFMapsPersonalizationResult], Error>(a1, 0);
  }
}

void *PommesSearch.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  v7 = v0[8];

  __swift_destroy_boxed_opaque_existential_1(v0 + 9);
  v8 = v0[15];

  return v0;
}

uint64_t PommesSearch.__deallocating_deinit()
{
  PommesSearch.deinit();

  return swift_deallocClassInstance();
}

Swift::Int SearchError.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x223DE0370](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SearchError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x223DE0370](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SearchError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x223DE0370](v1);
  return Hasher._finalize()();
}

SiriInformationSearch::LocalDomainTypes_optional __swiftcall LocalDomainTypes.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of LocalDomainTypes.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = SiriInformationSearch_LocalDomainTypes_music;
  }

  else
  {
    v4.value = SiriInformationSearch_LocalDomainTypes_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t LocalDomainTypes.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x636973756DLL;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance LocalDomainTypes(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x636973756DLL;
  }

  else
  {
    v4 = 1701736302;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a2)
  {
    v6 = 0x636973756DLL;
  }

  else
  {
    v6 = 1701736302;
  }

  if (*a2)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance LocalDomainTypes()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance LocalDomainTypes()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LocalDomainTypes()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance LocalDomainTypes@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of LocalDomainTypes.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance LocalDomainTypes(uint64_t *a1@<X8>)
{
  v2 = 1701736302;
  if (*v1)
  {
    v2 = 0x636973756DLL;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t specialized AnyDataProvider.init<A>(provider:)(uint64_t a1)
{
  v3 = dispatch_group_create();
  *(v1 + 72) = a1;
  *(v1 + 80) = v3;
  *(v1 + 88) = 0;
  *(v1 + 16) = partial apply for specialized implicit closure #2 in implicit closure #1 in AnyDataProvider.init<A>(provider:);
  *(v1 + 24) = a1;
  *(v1 + 32) = partial apply for specialized implicit closure #4 in implicit closure #3 in AnyDataProvider.init<A>(provider:);
  *(v1 + 40) = a1;
  *(v1 + 48) = partial apply for specialized implicit closure #6 in implicit closure #5 in AnyDataProvider.init<A>(provider:);
  *(v1 + 56) = a1;
  *(v1 + 64) = partial apply for specialized implicit closure #8 in implicit closure #7 in AnyDataProvider.init<A>(provider:);
  type metadata accessor for AmpDataProvider();
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AmpDataProviderCmMd, &_s21SiriInformationSearch15AmpDataProviderCmMR);
  *(v1 + 96) = String.init<A>(describing:)();
  *(v1 + 104) = v4;
  return v1;
}

{
  v3 = dispatch_group_create();
  *(v1 + 72) = a1;
  *(v1 + 80) = v3;
  *(v1 + 88) = 0;
  *(v1 + 16) = partial apply for specialized implicit closure #2 in implicit closure #1 in AnyDataProvider.init<A>(provider:);
  *(v1 + 24) = a1;
  *(v1 + 32) = partial apply for specialized implicit closure #4 in implicit closure #3 in AnyDataProvider.init<A>(provider:);
  *(v1 + 40) = a1;
  *(v1 + 48) = partial apply for specialized implicit closure #6 in implicit closure #5 in AnyDataProvider.init<A>(provider:);
  *(v1 + 56) = a1;
  *(v1 + 64) = partial apply for specialized implicit closure #8 in implicit closure #7 in AnyDataProvider.init<A>(provider:);
  type metadata accessor for AudioQueueStateDataProvider();
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch27AudioQueueStateDataProviderCmMd, &_s21SiriInformationSearch27AudioQueueStateDataProviderCmMR);
  *(v1 + 96) = String.init<A>(describing:)();
  *(v1 + 104) = v4;
  return v1;
}

{
  v3 = dispatch_group_create();
  *(v1 + 72) = a1;
  *(v1 + 80) = v3;
  *(v1 + 88) = 0;
  *(v1 + 16) = partial apply for specialized implicit closure #2 in implicit closure #1 in AnyDataProvider.init<A>(provider:);
  *(v1 + 24) = a1;
  *(v1 + 32) = partial apply for specialized implicit closure #4 in implicit closure #3 in AnyDataProvider.init<A>(provider:);
  *(v1 + 40) = a1;
  *(v1 + 48) = partial apply for specialized implicit closure #6 in implicit closure #5 in AnyDataProvider.init<A>(provider:);
  *(v1 + 56) = a1;
  *(v1 + 64) = partial apply for specialized implicit closure #8 in implicit closure #7 in AnyDataProvider.init<A>(provider:);
  type metadata accessor for AppInfoDataProvider();
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch19AppInfoDataProviderCmMd, &_s21SiriInformationSearch19AppInfoDataProviderCmMR);
  *(v1 + 96) = String.init<A>(describing:)();
  *(v1 + 104) = v4;
  return v1;
}

{
  v3 = dispatch_group_create();
  *(v1 + 72) = a1;
  *(v1 + 80) = v3;
  *(v1 + 88) = 0;
  *(v1 + 16) = partial apply for specialized implicit closure #2 in implicit closure #1 in AnyDataProvider.init<A>(provider:);
  *(v1 + 24) = a1;
  *(v1 + 32) = partial apply for specialized implicit closure #4 in implicit closure #3 in AnyDataProvider.init<A>(provider:);
  *(v1 + 40) = a1;
  *(v1 + 48) = partial apply for specialized implicit closure #6 in implicit closure #5 in AnyDataProvider.init<A>(provider:);
  *(v1 + 56) = a1;
  *(v1 + 64) = partial apply for specialized implicit closure #8 in implicit closure #7 in AnyDataProvider.init<A>(provider:);
  type metadata accessor for PreferredNavigationAppDataProvider();
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch34PreferredNavigationAppDataProviderCmMd, &_s21SiriInformationSearch34PreferredNavigationAppDataProviderCmMR);
  *(v1 + 96) = String.init<A>(describing:)();
  *(v1 + 104) = v4;
  return v1;
}

{
  v3 = dispatch_group_create();
  *(v1 + 72) = a1;
  *(v1 + 80) = v3;
  *(v1 + 88) = 0;
  *(v1 + 16) = partial apply for specialized implicit closure #2 in implicit closure #1 in AnyDataProvider.init<A>(provider:);
  *(v1 + 24) = a1;
  *(v1 + 32) = partial apply for specialized implicit closure #4 in implicit closure #3 in AnyDataProvider.init<A>(provider:);
  *(v1 + 40) = a1;
  *(v1 + 48) = partial apply for specialized implicit closure #6 in implicit closure #5 in AnyDataProvider.init<A>(provider:);
  *(v1 + 56) = a1;
  *(v1 + 64) = partial apply for specialized implicit closure #8 in implicit closure #7 in AnyDataProvider.init<A>(provider:);
  type metadata accessor for SiriKitAppInfoDataProvider();
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch0A22KitAppInfoDataProviderCmMd, &_s21SiriInformationSearch0A22KitAppInfoDataProviderCmMR);
  *(v1 + 96) = String.init<A>(describing:)();
  *(v1 + 104) = v4;
  return v1;
}

{
  v3 = dispatch_group_create();
  *(v1 + 72) = a1;
  *(v1 + 80) = v3;
  *(v1 + 88) = 0;
  *(v1 + 16) = partial apply for specialized implicit closure #2 in implicit closure #1 in AnyDataProvider.init<A>(provider:);
  *(v1 + 24) = a1;
  *(v1 + 32) = partial apply for specialized implicit closure #4 in implicit closure #3 in AnyDataProvider.init<A>(provider:);
  *(v1 + 40) = a1;
  *(v1 + 48) = partial apply for specialized implicit closure #6 in implicit closure #5 in AnyDataProvider.init<A>(provider:);
  *(v1 + 56) = a1;
  *(v1 + 64) = partial apply for specialized implicit closure #8 in implicit closure #7 in AnyDataProvider.init<A>(provider:);
  type metadata accessor for MarketplaceInfoDataProvider();
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch27MarketplaceInfoDataProviderCmMd, &_s21SiriInformationSearch27MarketplaceInfoDataProviderCmMR);
  *(v1 + 96) = String.init<A>(describing:)();
  *(v1 + 104) = v4;
  return v1;
}

{
  v3 = dispatch_group_create();
  *(v1 + 72) = a1;
  *(v1 + 80) = v3;
  *(v1 + 88) = 0;
  *(v1 + 16) = partial apply for specialized implicit closure #2 in implicit closure #1 in AnyDataProvider.init<A>(provider:);
  *(v1 + 24) = a1;
  *(v1 + 32) = partial apply for specialized implicit closure #4 in implicit closure #3 in AnyDataProvider.init<A>(provider:);
  *(v1 + 40) = a1;
  *(v1 + 48) = partial apply for specialized implicit closure #6 in implicit closure #5 in AnyDataProvider.init<A>(provider:);
  *(v1 + 56) = a1;
  *(v1 + 64) = partial apply for specialized implicit closure #8 in implicit closure #7 in AnyDataProvider.init<A>(provider:);
  type metadata accessor for PairedDeviceDataProvider();
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch24PairedDeviceDataProviderCmMd, &_s21SiriInformationSearch24PairedDeviceDataProviderCmMR);
  *(v1 + 96) = String.init<A>(describing:)();
  *(v1 + 104) = v4;
  return v1;
}

{
  v3 = dispatch_group_create();
  *(v1 + 72) = a1;
  *(v1 + 80) = v3;
  *(v1 + 88) = 0;
  *(v1 + 16) = partial apply for specialized implicit closure #2 in implicit closure #1 in AnyDataProvider.init<A>(provider:);
  *(v1 + 24) = a1;
  *(v1 + 32) = partial apply for specialized implicit closure #4 in implicit closure #3 in AnyDataProvider.init<A>(provider:);
  *(v1 + 40) = a1;
  *(v1 + 48) = partial apply for specialized implicit closure #6 in implicit closure #5 in AnyDataProvider.init<A>(provider:);
  *(v1 + 56) = a1;
  *(v1 + 64) = partial apply for specialized implicit closure #8 in implicit closure #7 in AnyDataProvider.init<A>(provider:);
  type metadata accessor for GMAvailabilityPolicyDataProvider();
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch32GMAvailabilityPolicyDataProviderCmMd, &_s21SiriInformationSearch32GMAvailabilityPolicyDataProviderCmMR);
  *(v1 + 96) = String.init<A>(describing:)();
  *(v1 + 104) = v4;
  return v1;
}

{
  v3 = dispatch_group_create();
  *(v1 + 72) = a1;
  *(v1 + 80) = v3;
  *(v1 + 88) = 0;
  *(v1 + 16) = partial apply for specialized implicit closure #2 in implicit closure #1 in AnyDataProvider.init<A>(provider:);
  *(v1 + 24) = a1;
  *(v1 + 32) = partial apply for specialized implicit closure #4 in implicit closure #3 in AnyDataProvider.init<A>(provider:);
  *(v1 + 40) = a1;
  *(v1 + 48) = partial apply for specialized implicit closure #6 in implicit closure #5 in AnyDataProvider.init<A>(provider:);
  *(v1 + 56) = a1;
  *(v1 + 64) = partial apply for specialized implicit closure #8 in implicit closure #7 in AnyDataProvider.init<A>(provider:);
  type metadata accessor for ProfileSliceResolvingDataProvider();
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch33ProfileSliceResolvingDataProviderCmMd, &_s21SiriInformationSearch33ProfileSliceResolvingDataProviderCmMR);
  *(v1 + 96) = String.init<A>(describing:)();
  *(v1 + 104) = v4;
  return v1;
}

{
  v3 = dispatch_group_create();
  *(v1 + 72) = a1;
  *(v1 + 80) = v3;
  *(v1 + 88) = 0;
  *(v1 + 16) = partial apply for specialized implicit closure #2 in implicit closure #1 in AnyDataProvider.init<A>(provider:);
  *(v1 + 24) = a1;
  *(v1 + 32) = partial apply for specialized implicit closure #4 in implicit closure #3 in AnyDataProvider.init<A>(provider:);
  *(v1 + 40) = a1;
  *(v1 + 48) = partial apply for specialized implicit closure #6 in implicit closure #5 in AnyDataProvider.init<A>(provider:);
  *(v1 + 56) = a1;
  *(v1 + 64) = partial apply for specialized implicit closure #8 in implicit closure #7 in AnyDataProvider.init<A>(provider:);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch17DummyDataProviderCy10PegasusAPI013Apple_Parsec_A28_V2alpha_AudioQueueStateInfoVGMd, &_s21SiriInformationSearch17DummyDataProviderCy10PegasusAPI013Apple_Parsec_A28_V2alpha_AudioQueueStateInfoVGMR);
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch17DummyDataProviderCy10PegasusAPI013Apple_Parsec_A28_V2alpha_AudioQueueStateInfoVGmMd, &_s21SiriInformationSearch17DummyDataProviderCy10PegasusAPI013Apple_Parsec_A28_V2alpha_AudioQueueStateInfoVGmMR);
  *(v1 + 96) = String.init<A>(describing:)();
  *(v1 + 104) = v4;
  return v1;
}

{
  v3 = dispatch_group_create();
  *(v1 + 72) = a1;
  *(v1 + 80) = v3;
  *(v1 + 88) = 0;
  *(v1 + 16) = partial apply for specialized implicit closure #2 in implicit closure #1 in AnyDataProvider.init<A>(provider:);
  *(v1 + 24) = a1;
  *(v1 + 32) = partial apply for specialized implicit closure #4 in implicit closure #3 in AnyDataProvider.init<A>(provider:);
  *(v1 + 40) = a1;
  *(v1 + 48) = partial apply for specialized implicit closure #6 in implicit closure #5 in AnyDataProvider.init<A>(provider:);
  *(v1 + 56) = a1;
  *(v1 + 64) = partial apply for specialized implicit closure #8 in implicit closure #7 in AnyDataProvider.init<A>(provider:);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch0C21ToolEmptyDataProviderCySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGMd, &_s21SiriInformationSearch0C21ToolEmptyDataProviderCySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGMR);
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch0C21ToolEmptyDataProviderCySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGmMd, &_s21SiriInformationSearch0C21ToolEmptyDataProviderCySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGmMR);
  *(v1 + 96) = String.init<A>(describing:)();
  *(v1 + 104) = v4;
  return v1;
}

uint64_t specialized AnyDataProvider.init<A>(provider:)(void *a1)
{
  *(v1 + 80) = dispatch_group_create();
  *(v1 + 88) = 0;
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v1 + 16) = partial apply for specialized implicit closure #2 in implicit closure #1 in AnyDataProvider.init<A>(provider:);
  *(v1 + 24) = v3;
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v1 + 32) = partial apply for specialized implicit closure #4 in implicit closure #3 in AnyDataProvider.init<A>(provider:);
  *(v1 + 40) = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v1 + 48) = partial apply for specialized implicit closure #6 in implicit closure #5 in AnyDataProvider.init<A>(provider:);
  *(v1 + 56) = v5;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v1 + 64) = partial apply for specialized implicit closure #8 in implicit closure #7 in AnyDataProvider.init<A>(provider:);
  *(v1 + 72) = v6;
  type metadata accessor for CarPlaySessionDataProvider();
  v7 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch26CarPlaySessionDataProviderCmMd, &_s21SiriInformationSearch26CarPlaySessionDataProviderCmMR);
  *(v1 + 96) = String.init<A>(describing:)();
  *(v1 + 104) = v8;
  return v1;
}

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t closure #1 in OSLogArguments.append(_:)(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

_BYTE **closure #1 in OSLogArguments.append(_:)(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void closure #1 in OSLogArguments.append(_:)(double **a1, uint64_t a2, uint64_t a3, double (*a4)(void))
{
  v5 = a4();
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

uint64_t specialized Set._Variant.insert(_:)(_BYTE *a1, Swift::Int a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  CommonAudio.Attribute.rawValue.getter(a2);
  String.hash(into:)();

  v7 = Hasher._finalize()();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_51:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v22;
    result = 1;
    goto LABEL_54;
  }

  v10 = ~v8;
  while (2)
  {
    v11 = 0xEA00000000007473;
    v12 = 0x697472416D6F7266;
    switch(*(*(v5 + 48) + v9))
    {
      case 1:
        v11 = 0xE800000000000000;
        v12 = 0x676E6F536D6F7266;
        break;
      case 2:
        v12 = 0x75626C416D6F7266;
        v11 = 0xE90000000000006DLL;
        break;
      case 3:
        v11 = 0xE800000000000000;
        v12 = 0x7478654E79616C70;
        break;
      case 4:
        v11 = 0xE700000000000000;
        v12 = 0x776F4E79616C70;
        break;
      case 5:
        v11 = 0xE800000000000000;
        v12 = 0x7473614C79616C70;
        break;
      case 6:
        v11 = 0xE800000000000000;
        v12 = 0x7974696E69666661;
        break;
      case 7:
        v12 = 0x6E656D6D6F636572;
        v11 = 0xEB00000000646564;
        break;
      case 8:
        v11 = 0xE900000000000079;
        v12 = 0x7265766F63736964;
        break;
      case 9:
        v12 = 0xD000000000000018;
        v11 = 0x80000002234D9AC0;
        break;
      case 0xA:
        v11 = 0xE400000000000000;
        v12 = 1954047342;
        break;
      case 0xB:
        v11 = 0xE500000000000000;
        v12 = 0x64656D616ELL;
        break;
      case 0xC:
        v11 = 0xE800000000000000;
        v12 = 0x73756F6976657270;
        break;
      case 0xD:
        v12 = 0x44657361656C6572;
        v11 = 0xEB00000000657461;
        break;
      case 0xE:
        v11 = 0xE800000000000000;
        v12 = 0x6E6F697461727564;
        break;
      default:
        break;
    }

    v13 = 0x697472416D6F7266;
    v14 = 0xEA00000000007473;
    switch(a2)
    {
      case 1:
        v14 = 0xE800000000000000;
        if (v12 == 0x676E6F536D6F7266)
        {
          goto LABEL_45;
        }

        goto LABEL_46;
      case 2:
        v14 = 0xE90000000000006DLL;
        if (v12 != 0x75626C416D6F7266)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      case 3:
        v14 = 0xE800000000000000;
        if (v12 != 0x7478654E79616C70)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      case 4:
        v14 = 0xE700000000000000;
        if (v12 != 0x776F4E79616C70)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      case 5:
        v14 = 0xE800000000000000;
        if (v12 != 0x7473614C79616C70)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      case 6:
        v14 = 0xE800000000000000;
        if (v12 != 0x7974696E69666661)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      case 7:
        v15 = 0x6E656D6D6F636572;
        v16 = 6579556;
        goto LABEL_39;
      case 8:
        v14 = 0xE900000000000079;
        if (v12 != 0x7265766F63736964)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      case 9:
        v14 = 0x80000002234D9AC0;
        if (v12 != 0xD000000000000018)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      case 10:
        v14 = 0xE400000000000000;
        v13 = 1954047342;
        goto LABEL_44;
      case 11:
        v14 = 0xE500000000000000;
        if (v12 != 0x64656D616ELL)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      case 12:
        v14 = 0xE800000000000000;
        if (v12 != 0x73756F6976657270)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      case 13:
        v15 = 0x44657361656C6572;
        v16 = 6648929;
LABEL_39:
        v14 = v16 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
        if (v12 != v15)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      case 14:
        v14 = 0xE800000000000000;
        if (v12 != 0x6E6F697461727564)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      default:
LABEL_44:
        if (v12 != v13)
        {
          goto LABEL_46;
        }

LABEL_45:
        if (v11 != v14)
        {
LABEL_46:
          v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v17)
          {
            goto LABEL_53;
          }

          v9 = (v9 + 1) & v10;
          if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
          {
            goto LABEL_51;
          }

          continue;
        }

LABEL_53:
        result = 0;
        LOBYTE(a2) = *(*(v5 + 48) + v9);
LABEL_54:
        *a1 = a2;
        return result;
    }
  }
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, uint64_t a2)
{
  v33 = a1;
  matched = type metadata accessor for AudioTypeFeaturiser.ExactMatchKey(0);
  v5 = *(matched - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](matched, v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v31 = &v31 - v12;
  v32 = v2;
  v13 = *v2;
  v14 = *(*v2 + 40);
  Hasher.init(_seed:)();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_RequestedMediaType();
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_RequestedMediaType and conformance Apple_Parsec_Siri_V2alpha_RequestedMediaType, MEMORY[0x277D398B0]);
  dispatch thunk of Hashable.hash(into:)();
  v36 = matched;
  v15 = *(matched + 20);
  v16 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioItemType and conformance Apple_Parsec_Siri_V2alpha_AudioItemType, MEMORY[0x277D39530]);
  v39 = a2;
  v34 = v16;
  v35 = v15;
  dispatch thunk of Hashable.hash(into:)();
  v17 = Hasher._finalize()();
  v18 = v13 + 56;
  v38 = v13;
  v19 = -1 << *(v13 + 32);
  v20 = v17 & ~v19;
  if ((*(v13 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
  {
    v21 = ~v19;
    v22 = *(v5 + 72);
    do
    {
      v23 = *(v38 + 48);
      v37 = v22 * v20;
      outlined init with copy of PommesSearchRequest.ParseState(v23 + v22 * v20, v10, type metadata accessor for AudioTypeFeaturiser.ExactMatchKey);
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_RequestedMediaType and conformance Apple_Parsec_Siri_V2alpha_RequestedMediaType, MEMORY[0x277D398B0]);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v41 == v40)
      {
        v24 = *(v36 + 20);
        lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioItemType and conformance Apple_Parsec_Siri_V2alpha_AudioItemType, MEMORY[0x277D39530]);
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        outlined destroy of PommesSearchRequest.ParseState(v10, type metadata accessor for AudioTypeFeaturiser.ExactMatchKey);
        if (v41 == v40)
        {
          outlined destroy of PommesSearchRequest.ParseState(v39, type metadata accessor for AudioTypeFeaturiser.ExactMatchKey);
          outlined init with copy of PommesSearchRequest.ParseState(*(v38 + 48) + v37, v33, type metadata accessor for AudioTypeFeaturiser.ExactMatchKey);
          return 0;
        }
      }

      else
      {
        outlined destroy of PommesSearchRequest.ParseState(v10, type metadata accessor for AudioTypeFeaturiser.ExactMatchKey);
      }

      v20 = (v20 + 1) & v21;
    }

    while (((*(v18 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) != 0);
  }

  v26 = v32;
  v27 = *v32;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29 = v39;
  v30 = v31;
  outlined init with copy of PommesSearchRequest.ParseState(v39, v31, type metadata accessor for AudioTypeFeaturiser.ExactMatchKey);
  v41 = *v26;
  specialized _NativeSet.insertNew(_:at:isUnique:)(v30, v20, isUniquelyReferenced_nonNull_native);
  *v26 = v41;
  outlined init with take of PerformanceUtil.Ticket(v29, v33, type metadata accessor for AudioTypeFeaturiser.ExactMatchKey);
  return 1;
}

{
  v52 = a1;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents13VideoCategoryOSg_ADtMd, &_s10AppIntents13VideoCategoryOSg_ADtMR);
  v4 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64, v5);
  v7 = &v49 - v6;
  v8 = type metadata accessor for VideoCategory();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
  v59 = *(v14 - 8);
  v15 = *(v59 + 64);
  v17 = MEMORY[0x28223BE20](v14 - 8, v16);
  v63 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v57 = &v49 - v21;
  v23 = MEMORY[0x28223BE20](v20, v22);
  v50 = &v49 - v24;
  MEMORY[0x28223BE20](v23, v25);
  v27 = &v49 - v26;
  v51 = v2;
  v66 = *v2;
  v28 = *(v66 + 40);
  Hasher.init(_seed:)();
  v65 = a2;
  outlined init with copy of MediaUserStateCenter?(a2, v27, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
  v29 = *(v9 + 48);
  if (v29(v27, 1, v8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v9 + 32))(v13, v27, v8);
    Hasher._combine(_:)(1u);
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type VideoCategory and conformance VideoCategory, MEMORY[0x277CB9E20]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v9 + 8))(v13, v8);
  }

  v30 = Hasher._finalize()();
  v31 = -1 << *(v66 + 32);
  v32 = v30 & ~v31;
  v62 = v66 + 56;
  if (((*(v66 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
  {
LABEL_14:
    v43 = v51;
    v44 = *v51;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v46 = v65;
    v47 = v50;
    outlined init with copy of MediaUserStateCenter?(v65, v50, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
    v67 = *v43;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v47, v32, isUniquelyReferenced_nonNull_native);
    *v43 = v67;
    outlined init with take of PommesSearchReason?(v46, v52, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
    return 1;
  }

  v60 = v29;
  v61 = v9 + 48;
  v54 = v13;
  v58 = ~v31;
  v53 = (v9 + 32);
  v59 = *(v59 + 72);
  v56 = (v9 + 8);
  v33 = v57;
  while (1)
  {
    v34 = v59 * v32;
    outlined init with copy of MediaUserStateCenter?(*(v66 + 48) + v59 * v32, v33, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
    v35 = *(v64 + 48);
    outlined init with copy of MediaUserStateCenter?(v33, v7, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
    outlined init with copy of MediaUserStateCenter?(v65, &v7[v35], &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
    v36 = v60;
    if (v60(v7, 1, v8) == 1)
    {
      break;
    }

    outlined init with copy of MediaUserStateCenter?(v7, v63, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
    if (v36(&v7[v35], 1, v8) == 1)
    {
      v33 = v57;
      outlined destroy of MediaUserStateCenter?(v57, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
      (*v56)(v63, v8);
      goto LABEL_7;
    }

    v37 = v8;
    v38 = v63;
    v39 = v54;
    (*v53)(v54, &v7[v35], v37);
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type VideoCategory and conformance VideoCategory, MEMORY[0x277CB9E20]);
    v55 = dispatch thunk of static Equatable.== infix(_:_:)();
    v40 = *v56;
    v41 = v39;
    v42 = v38;
    v8 = v37;
    (*v56)(v41, v37);
    v33 = v57;
    outlined destroy of MediaUserStateCenter?(v57, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
    v40(v42, v8);
    outlined destroy of MediaUserStateCenter?(v7, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
    if (v55)
    {
      goto LABEL_16;
    }

LABEL_8:
    v32 = (v32 + 1) & v58;
    if (((*(v62 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  outlined destroy of MediaUserStateCenter?(v33, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
  if (v36(&v7[v35], 1, v8) != 1)
  {
LABEL_7:
    outlined destroy of MediaUserStateCenter?(v7, &_s10AppIntents13VideoCategoryOSg_ADtMd, &_s10AppIntents13VideoCategoryOSg_ADtMR);
    goto LABEL_8;
  }

  outlined destroy of MediaUserStateCenter?(v7, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
LABEL_16:
  outlined destroy of MediaUserStateCenter?(v65, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
  outlined init with copy of MediaUserStateCenter?(*(v66 + 48) + v34, v52, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
  return 0;
}

{
  v52 = a1;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17StringSearchScopeOSg_ADtMd, &_s10AppIntents17StringSearchScopeOSg_ADtMR);
  v4 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64, v5);
  v7 = &v49 - v6;
  v8 = type metadata accessor for StringSearchScope();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
  v59 = *(v14 - 8);
  v15 = *(v59 + 64);
  v17 = MEMORY[0x28223BE20](v14 - 8, v16);
  v63 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v57 = &v49 - v21;
  v23 = MEMORY[0x28223BE20](v20, v22);
  v50 = &v49 - v24;
  MEMORY[0x28223BE20](v23, v25);
  v27 = &v49 - v26;
  v51 = v2;
  v66 = *v2;
  v28 = *(v66 + 40);
  Hasher.init(_seed:)();
  v65 = a2;
  outlined init with copy of MediaUserStateCenter?(a2, v27, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
  v29 = *(v9 + 48);
  if (v29(v27, 1, v8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v9 + 32))(v13, v27, v8);
    Hasher._combine(_:)(1u);
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type StringSearchScope and conformance StringSearchScope, MEMORY[0x277CBA000]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v9 + 8))(v13, v8);
  }

  v30 = Hasher._finalize()();
  v31 = -1 << *(v66 + 32);
  v32 = v30 & ~v31;
  v62 = v66 + 56;
  if (((*(v66 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
  {
LABEL_14:
    v43 = v51;
    v44 = *v51;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v46 = v65;
    v47 = v50;
    outlined init with copy of MediaUserStateCenter?(v65, v50, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
    v67 = *v43;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v47, v32, isUniquelyReferenced_nonNull_native);
    *v43 = v67;
    outlined init with take of PommesSearchReason?(v46, v52, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
    return 1;
  }

  v60 = v29;
  v61 = v9 + 48;
  v54 = v13;
  v58 = ~v31;
  v53 = (v9 + 32);
  v59 = *(v59 + 72);
  v56 = (v9 + 8);
  v33 = v57;
  while (1)
  {
    v34 = v59 * v32;
    outlined init with copy of MediaUserStateCenter?(*(v66 + 48) + v59 * v32, v33, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
    v35 = *(v64 + 48);
    outlined init with copy of MediaUserStateCenter?(v33, v7, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
    outlined init with copy of MediaUserStateCenter?(v65, &v7[v35], &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
    v36 = v60;
    if (v60(v7, 1, v8) == 1)
    {
      break;
    }

    outlined init with copy of MediaUserStateCenter?(v7, v63, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
    if (v36(&v7[v35], 1, v8) == 1)
    {
      v33 = v57;
      outlined destroy of MediaUserStateCenter?(v57, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
      (*v56)(v63, v8);
      goto LABEL_7;
    }

    v37 = v8;
    v38 = v63;
    v39 = v54;
    (*v53)(v54, &v7[v35], v37);
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type StringSearchScope and conformance StringSearchScope, MEMORY[0x277CBA000]);
    v55 = dispatch thunk of static Equatable.== infix(_:_:)();
    v40 = *v56;
    v41 = v39;
    v42 = v38;
    v8 = v37;
    (*v56)(v41, v37);
    v33 = v57;
    outlined destroy of MediaUserStateCenter?(v57, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
    v40(v42, v8);
    outlined destroy of MediaUserStateCenter?(v7, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
    if (v55)
    {
      goto LABEL_16;
    }

LABEL_8:
    v32 = (v32 + 1) & v58;
    if (((*(v62 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  outlined destroy of MediaUserStateCenter?(v33, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
  if (v36(&v7[v35], 1, v8) != 1)
  {
LABEL_7:
    outlined destroy of MediaUserStateCenter?(v7, &_s10AppIntents17StringSearchScopeOSg_ADtMd, &_s10AppIntents17StringSearchScopeOSg_ADtMR);
    goto LABEL_8;
  }

  outlined destroy of MediaUserStateCenter?(v7, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
LABEL_16:
  outlined destroy of MediaUserStateCenter?(v65, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
  outlined init with copy of MediaUserStateCenter?(*(v66 + 48) + v34, v52, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
  return 0;
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceLabel();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  v13 = *(*v2 + 40);
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSliceLabel and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceLabel, MEMORY[0x277D39740]);
  v37 = a2;
  v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = v12 + 56;
  v35 = v12 + 56;
  v36 = v12;
  v16 = -1 << *(v12 + 32);
  v17 = v14 & ~v16;
  if ((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v32 = v3;
    v33 = a1;
    v34 = ~v16;
    v31 = v7;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    v22 = (v19 - 8);
    v30[1] = v19 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v23 = v18;
      v18(v11, *(v36 + 48) + v21 * v17, v6);
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSliceLabel and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceLabel, MEMORY[0x277D39740]);
      v24 = dispatch thunk of static Equatable.== infix(_:_:)();
      v25 = *v22;
      (*v22)(v11, v6);
      if (v24)
      {
        break;
      }

      v17 = (v17 + 1) & v34;
      v18 = v23;
      if (((*(v35 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        v3 = v32;
        a1 = v33;
        v7 = v31;
        goto LABEL_7;
      }
    }

    v25(v37, v6);
    v23(v33, *(v36 + 48) + v21 * v17, v6);
    return 0;
  }

  else
  {
    v18 = *(v7 + 16);
LABEL_7:
    v26 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = v37;
    v18(v11, v37, v6);
    v38 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v11, v17, isUniquelyReferenced_nonNull_native);
    *v3 = v38;
    (*(v7 + 32))(a1, v28, v6);
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for LNSystemProtocol, 0x277D23938);
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v20 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo16LNSystemProtocolC_Tt1g5(v7, result + 1);
    v21 = *(v20 + 16);
    if (*(v20 + 24) <= v21)
    {
      specialized _NativeSet.resize(capacity:)(v21 + 1);
    }

    v19 = v8;
    specialized _NativeSet._unsafeInsertNew(_:)(v19, v20);

    *v3 = v20;
    goto LABEL_16;
  }

  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for LNSystemProtocol, 0x277D23938);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v19 = a2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v19, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
LABEL_16:
    *a1 = v19;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v22 = *(*(v6 + 48) + 8 * v13);
  *a1 = v22;
  v23 = v22;
  return 0;
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      type metadata accessor for AnyCancellable();
      swift_dynamicCast();
      result = 0;
      *a1 = v21;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v18 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC7Combine14AnyCancellableC_Tt1g5(v7, result + 1);
    v19 = *(v18 + 16);
    if (*(v18 + 24) <= v19)
    {
      specialized _NativeSet.resize(capacity:)(v19 + 1);
    }

    specialized _NativeSet._unsafeInsertNew(_:)(v20, v18);

    *v3 = v18;
    goto LABEL_16;
  }

  type metadata accessor for AnyCancellable();
  v10 = *(v6 + 40);
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x277CBCDA8]);
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v15 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v2;

    specialized _NativeSet.insertNew(_:at:isUnique:)(v17, v13, isUniquelyReferenced_nonNull_native);
    *v2 = v23;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v14 = ~v12;
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x277CBCDA8]);
  while (1)
  {
    v22 = *(*(v6 + 48) + 8 * v13);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v13);

  return 0;
}

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo16LNSystemProtocolC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo16LNSystemProtocolCGMd, &_ss11_SetStorageCySo16LNSystemProtocolCGMR);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for LNSystemProtocol, 0x277D23938);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          specialized _NativeSet.resize(capacity:)(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC7Combine14AnyCancellableC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7Combine14AnyCancellableCGMd, &_ss11_SetStorageCy7Combine14AnyCancellableCGMR);
    v2 = static _SetStorage.convert(_:capacity:)();
    v16 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for AnyCancellable();
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          specialized _NativeSet.resize(capacity:)(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x277CBCDA8]);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy21SiriInformationSearch11CommonAudioV9AttributeOGMd, &_ss11_SetStorageCy21SiriInformationSearch11CommonAudioV9AttributeOGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v18 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_18:
      v21 = *(*(v3 + 48) + (v18 | (v7 << 6)));
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v14 = -1 << *(v6 + 32);
      v15 = result & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v13 + 8 * (v15 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v14) >> 6;
        while (++v16 != v24 || (v23 & 1) == 0)
        {
          v25 = v16 == v24;
          if (v16 == v24)
          {
            v16 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v16);
          if (v26 != -1)
          {
            v17 = __clz(__rbit64(~v26)) + (v16 << 6);
            goto LABEL_10;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v15) & ~*(v13 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v6 + 48) + v17) = v21;
      ++*(v6 + 16);
    }

    v19 = v7;
    while (1)
    {
      v7 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v7 >= v12)
      {
        break;
      }

      v20 = v8[v7];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v11 = (v20 - 1) & v20;
        goto LABEL_18;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

{
  v2 = v1;
  matched = type metadata accessor for AudioTypeFeaturiser.ExactMatchKey(0);
  v39 = *(matched - 8);
  v40 = matched;
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](matched, v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy21SiriInformationSearch19AudioTypeFeaturiserC13ExactMatchKey33_F1B61A3F9E84F78A1DE0179177191518LLVGMd, &_ss11_SetStorageCy21SiriInformationSearch19AudioTypeFeaturiserC13ExactMatchKey33_F1B61A3F9E84F78A1DE0179177191518LLVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v9 + 16))
  {
    v37 = v2;
    v38 = v9;
    v13 = 0;
    v14 = (v9 + 56);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = result + 56;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v24 = *(v9 + 48);
      v25 = *(v39 + 72);
      outlined init with take of PerformanceUtil.Ticket(v24 + v25 * (v21 | (v13 << 6)), v8, type metadata accessor for AudioTypeFeaturiser.ExactMatchKey);
      v26 = *(v12 + 40);
      Hasher.init(_seed:)();
      type metadata accessor for Apple_Parsec_Siri_V2alpha_RequestedMediaType();
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_RequestedMediaType and conformance Apple_Parsec_Siri_V2alpha_RequestedMediaType, MEMORY[0x277D398B0]);
      dispatch thunk of Hashable.hash(into:)();
      v27 = *(v40 + 20);
      type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioItemType and conformance Apple_Parsec_Siri_V2alpha_AudioItemType, MEMORY[0x277D39530]);
      dispatch thunk of Hashable.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v12 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v19 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v19 + 8 * v30);
          if (v34 != -1)
          {
            v20 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v29) & ~*(v19 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = outlined init with take of PerformanceUtil.Ticket(v8, *(v12 + 48) + v20 * v25, type metadata accessor for AudioTypeFeaturiser.ExactMatchKey);
      ++*(v12 + 16);
      v9 = v38;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    v35 = 1 << *(v9 + 32);
    if (v35 >= 64)
    {
      bzero(v14, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v35;
    }

    v2 = v37;
    *(v9 + 16) = 0;
  }

  *v2 = v12;
  return result;
}

{
  v2 = v1;
  v42 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceLabel();
  v4 = *(v42 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v42, v6);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceLabelOGMd, &_ss11_SetStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceLabelOGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v37 = v8;
    v12 = 0;
    v13 = (v8 + 56);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v40 = v4 + 4;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48) + v4[9] * (v20 | (v12 << 6));
      v24 = v4[4];
      v38 = v4[9];
      v39 = v24;
      v24(v41, v23, v42);
      v25 = v11;
      v26 = *(v11 + 40);
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSliceLabel and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceLabel, MEMORY[0x277D39740]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v11 = v25;
      v27 = -1 << *(v25 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = v39(*(v25 + 48) + v19 * v38, v41, v42);
      ++*(v25 + 16);
      v8 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    v34 = 1 << *(v8 + 32);
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    v2 = v36;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo16LNSystemProtocolCGMd, &_ss11_SetStorageCySo16LNSystemProtocolCGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v6 + 40));
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy21SiriInformationSearch11CommonAudioV8ModifierOGMd, &_ss11_SetStorageCy21SiriInformationSearch11CommonAudioV8ModifierOGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7Combine14AnyCancellableCGMd, &_ss11_SetStorageCy7Combine14AnyCancellableCGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v29 = v3;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      type metadata accessor for AnyCancellable();
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x277CBCDA8]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v29;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

{
  v2 = v1;
  v4 = type metadata accessor for VideoCategory();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v49 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
  v53 = *(v9 - 8);
  v10 = *(v53 + 64);
  v12 = MEMORY[0x28223BE20](v9 - 8, v11);
  v54 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v45 - v15;
  v17 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v18 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10AppIntents13VideoCategoryOSgGMd, &_ss11_SetStorageCy10AppIntents13VideoCategoryOSgGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v20 = result;
  v56 = v17;
  if (*(v17 + 16))
  {
    v52 = v4;
    v46 = v2;
    v21 = 0;
    v22 = (v56 + 56);
    v23 = 1 << *(v56 + 32);
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = v24 & *(v56 + 56);
    v26 = (v23 + 63) >> 6;
    v50 = v16;
    v51 = (v5 + 48);
    v47 = (v5 + 8);
    v48 = (v5 + 32);
    v27 = result + 56;
    v28 = v54;
    while (v25)
    {
      v30 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
LABEL_17:
      v33 = *(v56 + 48);
      v55 = *(v53 + 72);
      outlined init with take of PommesSearchReason?(v33 + v55 * (v30 | (v21 << 6)), v16, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
      v34 = *(v20 + 40);
      Hasher.init(_seed:)();
      outlined init with copy of MediaUserStateCenter?(v16, v28, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
      v35 = v52;
      if ((*v51)(v28, 1, v52) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v36 = v49;
        (*v48)(v49, v28, v35);
        Hasher._combine(_:)(1u);
        lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type VideoCategory and conformance VideoCategory, MEMORY[0x277CB9E20]);
        dispatch thunk of Hashable.hash(into:)();
        (*v47)(v36, v35);
      }

      result = Hasher._finalize()();
      v37 = -1 << *(v20 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      v16 = v50;
      if (((-1 << v38) & ~*(v27 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        v28 = v54;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v27 + 8 * v39);
          if (v43 != -1)
          {
            v29 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v29 = __clz(__rbit64((-1 << v38) & ~*(v27 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
      v28 = v54;
LABEL_9:
      *(v27 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
      result = outlined init with take of PommesSearchReason?(v16, *(v20 + 48) + v29 * v55, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
      ++*(v20 + 16);
    }

    v31 = v21;
    while (1)
    {
      v21 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v21 >= v26)
      {
        break;
      }

      v32 = v22[v21];
      ++v31;
      if (v32)
      {
        v30 = __clz(__rbit64(v32));
        v25 = (v32 - 1) & v32;
        goto LABEL_17;
      }
    }

    v44 = 1 << *(v56 + 32);
    if (v44 >= 64)
    {
      bzero(v22, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v22 = -1 << v44;
    }

    v2 = v46;
    *(v56 + 16) = 0;
  }

  *v2 = v20;
  return result;
}

{
  v2 = v1;
  v4 = type metadata accessor for StringSearchScope();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v49 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
  v53 = *(v9 - 8);
  v10 = *(v53 + 64);
  v12 = MEMORY[0x28223BE20](v9 - 8, v11);
  v54 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v45 - v15;
  v17 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v18 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10AppIntents17StringSearchScopeOSgGMd, &_ss11_SetStorageCy10AppIntents17StringSearchScopeOSgGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v20 = result;
  v56 = v17;
  if (*(v17 + 16))
  {
    v52 = v4;
    v46 = v2;
    v21 = 0;
    v22 = (v56 + 56);
    v23 = 1 << *(v56 + 32);
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = v24 & *(v56 + 56);
    v26 = (v23 + 63) >> 6;
    v50 = v16;
    v51 = (v5 + 48);
    v47 = (v5 + 8);
    v48 = (v5 + 32);
    v27 = result + 56;
    v28 = v54;
    while (v25)
    {
      v30 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
LABEL_17:
      v33 = *(v56 + 48);
      v55 = *(v53 + 72);
      outlined init with take of PommesSearchReason?(v33 + v55 * (v30 | (v21 << 6)), v16, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
      v34 = *(v20 + 40);
      Hasher.init(_seed:)();
      outlined init with copy of MediaUserStateCenter?(v16, v28, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
      v35 = v52;
      if ((*v51)(v28, 1, v52) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v36 = v49;
        (*v48)(v49, v28, v35);
        Hasher._combine(_:)(1u);
        lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type StringSearchScope and conformance StringSearchScope, MEMORY[0x277CBA000]);
        dispatch thunk of Hashable.hash(into:)();
        (*v47)(v36, v35);
      }

      result = Hasher._finalize()();
      v37 = -1 << *(v20 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      v16 = v50;
      if (((-1 << v38) & ~*(v27 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        v28 = v54;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v27 + 8 * v39);
          if (v43 != -1)
          {
            v29 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v29 = __clz(__rbit64((-1 << v38) & ~*(v27 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
      v28 = v54;
LABEL_9:
      *(v27 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
      result = outlined init with take of PommesSearchReason?(v16, *(v20 + 48) + v29 * v55, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
      ++*(v20 + 16);
    }

    v31 = v21;
    while (1)
    {
      v21 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v21 >= v26)
      {
        break;
      }

      v32 = v22[v21];
      ++v31;
      if (v32)
      {
        v30 = __clz(__rbit64(v32));
        v25 = (v32 - 1) & v32;
        goto LABEL_17;
      }
    }

    v44 = 1 << *(v56 + 32);
    if (v44 >= 64)
    {
      bzero(v22, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v22 = -1 << v44;
    }

    v2 = v46;
    *(v56 + 16) = 0;
  }

  *v2 = v20;
  return result;
}

unint64_t specialized _NativeSet._unsafeInsertNew(_:)(uint64_t a1, uint64_t a2)
{
  NSObject._rawHashValue(seed:)(*(a2 + 40));
  v4 = -1 << *(a2 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

{
  v4 = *(a2 + 40);
  type metadata accessor for AnyCancellable();
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x277CBCDA8]);
  dispatch thunk of Hashable._rawHashValue(seed:)();
  v5 = -1 << *(a2 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)(v7 + 1);
    }

    else
    {
      if (v8 > v7)
      {
        result = specialized _NativeSet.copy()();
        goto LABEL_58;
      }

      specialized _NativeSet.copyAndResize(capacity:)(v7 + 1);
    }

    v9 = *v3;
    v10 = *(*v3 + 40);
    Hasher.init(_seed:)();
    CommonAudio.Attribute.rawValue.getter(v6);
    String.hash(into:)();

    result = Hasher._finalize()();
    v11 = -1 << *(v9 + 32);
    a2 = result & ~v11;
    if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v12 = ~v11;
      while (2)
      {
        v13 = 0xEA00000000007473;
        v14 = 0x697472416D6F7266;
        switch(*(*(v9 + 48) + a2))
        {
          case 1:
            v13 = 0xE800000000000000;
            v14 = 0x676E6F536D6F7266;
            break;
          case 2:
            v14 = 0x75626C416D6F7266;
            v13 = 0xE90000000000006DLL;
            break;
          case 3:
            v13 = 0xE800000000000000;
            v14 = 0x7478654E79616C70;
            break;
          case 4:
            v13 = 0xE700000000000000;
            v14 = 0x776F4E79616C70;
            break;
          case 5:
            v13 = 0xE800000000000000;
            v14 = 0x7473614C79616C70;
            break;
          case 6:
            v13 = 0xE800000000000000;
            v14 = 0x7974696E69666661;
            break;
          case 7:
            v14 = 0x6E656D6D6F636572;
            v13 = 0xEB00000000646564;
            break;
          case 8:
            v13 = 0xE900000000000079;
            v14 = 0x7265766F63736964;
            break;
          case 9:
            v14 = 0xD000000000000018;
            v13 = 0x80000002234D9AC0;
            break;
          case 0xA:
            v13 = 0xE400000000000000;
            v14 = 1954047342;
            break;
          case 0xB:
            v13 = 0xE500000000000000;
            v14 = 0x64656D616ELL;
            break;
          case 0xC:
            v13 = 0xE800000000000000;
            v14 = 0x73756F6976657270;
            break;
          case 0xD:
            v14 = 0x44657361656C6572;
            v13 = 0xEB00000000657461;
            break;
          case 0xE:
            v13 = 0xE800000000000000;
            v14 = 0x6E6F697461727564;
            break;
          default:
            break;
        }

        v15 = 0x697472416D6F7266;
        v16 = 0xEA00000000007473;
        switch(v6)
        {
          case 1:
            v16 = 0xE800000000000000;
            if (v14 == 0x676E6F536D6F7266)
            {
              goto LABEL_52;
            }

            goto LABEL_53;
          case 2:
            v16 = 0xE90000000000006DLL;
            if (v14 != 0x75626C416D6F7266)
            {
              goto LABEL_53;
            }

            goto LABEL_52;
          case 3:
            v16 = 0xE800000000000000;
            if (v14 != 0x7478654E79616C70)
            {
              goto LABEL_53;
            }

            goto LABEL_52;
          case 4:
            v16 = 0xE700000000000000;
            if (v14 != 0x776F4E79616C70)
            {
              goto LABEL_53;
            }

            goto LABEL_52;
          case 5:
            v16 = 0xE800000000000000;
            if (v14 != 0x7473614C79616C70)
            {
              goto LABEL_53;
            }

            goto LABEL_52;
          case 6:
            v16 = 0xE800000000000000;
            if (v14 != 0x7974696E69666661)
            {
              goto LABEL_53;
            }

            goto LABEL_52;
          case 7:
            v17 = 0x6E656D6D6F636572;
            v18 = 6579556;
            goto LABEL_46;
          case 8:
            v16 = 0xE900000000000079;
            if (v14 != 0x7265766F63736964)
            {
              goto LABEL_53;
            }

            goto LABEL_52;
          case 9:
            v16 = 0x80000002234D9AC0;
            if (v14 != 0xD000000000000018)
            {
              goto LABEL_53;
            }

            goto LABEL_52;
          case 10:
            v16 = 0xE400000000000000;
            v15 = 1954047342;
            goto LABEL_51;
          case 11:
            v16 = 0xE500000000000000;
            if (v14 != 0x64656D616ELL)
            {
              goto LABEL_53;
            }

            goto LABEL_52;
          case 12:
            v16 = 0xE800000000000000;
            if (v14 != 0x73756F6976657270)
            {
              goto LABEL_53;
            }

            goto LABEL_52;
          case 13:
            v17 = 0x44657361656C6572;
            v18 = 6648929;
LABEL_46:
            v16 = v18 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
            if (v14 != v17)
            {
              goto LABEL_53;
            }

            goto LABEL_52;
          case 14:
            v16 = 0xE800000000000000;
            if (v14 != 0x6E6F697461727564)
            {
              goto LABEL_53;
            }

            goto LABEL_52;
          default:
LABEL_51:
            if (v14 != v15)
            {
              goto LABEL_53;
            }

LABEL_52:
            if (v13 == v16)
            {
              goto LABEL_61;
            }

LABEL_53:
            v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v19)
            {
              goto LABEL_62;
            }

            a2 = (a2 + 1) & v12;
            if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
            {
              break;
            }

            continue;
        }

        break;
      }
    }
  }

LABEL_58:
  v20 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + a2) = v6;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
LABEL_61:

LABEL_62:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v23;
  }

  return result;
}

{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v23 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_25;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_25;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1);
  }

  v8 = 0x664F65726F6DLL;
  v9 = *v3;
  v10 = *(*v3 + 40);
  Hasher.init(_seed:)();
  if (v5)
  {
    v8 = 0x6E65726566666964;
    v11 = 0xED00006E61685474;
  }

  else
  {
    v11 = 0xE600000000000000;
  }

  String.hash(into:)();

  result = Hasher._finalize()();
  v12 = -1 << *(v9 + 32);
  a2 = result & ~v12;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    do
    {
      v14 = *(*(v9 + 48) + a2) ? 0x6E65726566666964 : 0x664F65726F6DLL;
      v15 = *(*(v9 + 48) + a2) ? 0xED00006E61685474 : 0xE600000000000000;
      if (v14 == v8 && v15 == v11)
      {
        goto LABEL_28;
      }

      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v17)
      {
        goto LABEL_29;
      }

      a2 = (a2 + 1) & v13;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_25:
  v18 = *v22;
  *(*v22 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + a2) = v23 & 1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return result;
  }

  __break(1u);
LABEL_28:

LABEL_29:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  matched = type metadata accessor for AudioTypeFeaturiser.ExactMatchKey(0);
  v7 = *(matched - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](matched, v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v29 = v7;
  v30 = v3;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      specialized _NativeSet.copy()();
      goto LABEL_15;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v12 + 1);
  }

  v14 = *v3;
  v15 = *(*v3 + 40);
  Hasher.init(_seed:)();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_RequestedMediaType();
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_RequestedMediaType and conformance Apple_Parsec_Siri_V2alpha_RequestedMediaType, MEMORY[0x277D398B0]);
  dispatch thunk of Hashable.hash(into:)();
  v16 = *(matched + 20);
  v17 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioItemType and conformance Apple_Parsec_Siri_V2alpha_AudioItemType, MEMORY[0x277D39530]);
  v32 = v17;
  v33 = v16;
  dispatch thunk of Hashable.hash(into:)();
  v18 = Hasher._finalize()();
  v35 = v14;
  v19 = -1 << *(v14 + 32);
  a2 = v18 & ~v19;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v20 = ~v19;
    v21 = *(v7 + 72);
    v31 = v11;
    do
    {
      outlined init with copy of PommesSearchRequest.ParseState(*(v35 + 48) + v21 * a2, v11, type metadata accessor for AudioTypeFeaturiser.ExactMatchKey);
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_RequestedMediaType and conformance Apple_Parsec_Siri_V2alpha_RequestedMediaType, MEMORY[0x277D398B0]);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v37 == v36)
      {
        v22 = *(matched + 20);
        lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioItemType and conformance Apple_Parsec_Siri_V2alpha_AudioItemType, MEMORY[0x277D39530]);
        dispatch thunk of RawRepresentable.rawValue.getter();
        v11 = v31;
        dispatch thunk of RawRepresentable.rawValue.getter();
        outlined destroy of PommesSearchRequest.ParseState(v11, type metadata accessor for AudioTypeFeaturiser.ExactMatchKey);
        if (v37 == v36)
        {
          ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          break;
        }
      }

      else
      {
        outlined destroy of PommesSearchRequest.ParseState(v11, type metadata accessor for AudioTypeFeaturiser.ExactMatchKey);
      }

      a2 = (a2 + 1) & v20;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_15:
  v23 = *v30;
  *(*v30 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = outlined init with take of PerformanceUtil.Ticket(a1, *(v23 + 48) + *(v29 + 72) * a2, type metadata accessor for AudioTypeFeaturiser.ExactMatchKey);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(v23 + 16) = v27;
  }

  return result;
}

{
  v34 = a1;
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceLabel();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v31 = v3;
  v32 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v12 + 1);
  }

  v14 = *v3;
  v15 = *(*v3 + 40);
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSliceLabel and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceLabel, MEMORY[0x277D39740]);
  v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v17 = v14 + 56;
  v33 = v14;
  v18 = -1 << *(v14 + 32);
  a2 = v16 & ~v18;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v22 = *(v7 + 16);
    v21 = v7 + 16;
    v20 = v22;
    v23 = *(v21 + 56);
    do
    {
      v20(v11, *(v33 + 48) + v23 * a2, v6);
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSliceLabel and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceLabel, MEMORY[0x277D39740]);
      v24 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v21 - 8))(v11, v6);
      if (v24)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v19;
    }

    while (((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v25 = v32;
  v26 = *v31;
  *(v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v25 + 32))(*(v26 + 48) + *(v25 + 72) * a2, v34, v6);
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v26 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v62 = a1;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents13VideoCategoryOSg_ADtMd, &_s10AppIntents13VideoCategoryOSg_ADtMR);
  v6 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61, v7);
  v9 = &v47 - v8;
  v10 = type metadata accessor for VideoCategory();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v53 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
  v52 = *(v15 - 8);
  v16 = *(v52 + 64);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v18, v21);
  v24 = &v47 - v23;
  v26 = MEMORY[0x28223BE20](v22, v25);
  v28 = &v47 - v27;
  v29 = *(*v3 + 16);
  v30 = *(*v3 + 24);
  v49 = v3;
  if (v30 <= v29 || (a3 & 1) == 0)
  {
    if (a3)
    {
      v48 = v26;
      specialized _NativeSet.resize(capacity:)(v29 + 1);
    }

    else
    {
      if (v30 > v29)
      {
        specialized _NativeSet.copy()(&_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR, &_ss11_SetStorageCy10AppIntents13VideoCategoryOSgGMd, &_ss11_SetStorageCy10AppIntents13VideoCategoryOSgGMR);
        goto LABEL_21;
      }

      v48 = v26;
      specialized _NativeSet.copyAndResize(capacity:)(v29 + 1);
    }

    v60 = *v3;
    v31 = *(v60 + 40);
    Hasher.init(_seed:)();
    outlined init with copy of MediaUserStateCenter?(v62, v28, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
    v58 = *(v11 + 48);
    v59 = v11 + 48;
    if (v58(v28, 1, v10) == 1)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      v32 = v53;
      (*(v11 + 32))(v53, v28, v10);
      Hasher._combine(_:)(1u);
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type VideoCategory and conformance VideoCategory, MEMORY[0x277CB9E20]);
      dispatch thunk of Hashable.hash(into:)();
      (*(v11 + 8))(v32, v10);
    }

    v33 = Hasher._finalize()();
    v34 = -1 << *(v60 + 32);
    a2 = v33 & ~v34;
    v57 = v60 + 56;
    if ((*(v60 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v56 = ~v34;
      v50 = (v11 + 32);
      v35 = *(v52 + 72);
      v54 = (v11 + 8);
      v55 = v35;
      v51 = v24;
      do
      {
        outlined init with copy of MediaUserStateCenter?(*(v60 + 48) + v55 * a2, v24, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
        v40 = *(v61 + 48);
        outlined init with copy of MediaUserStateCenter?(v24, v9, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
        outlined init with copy of MediaUserStateCenter?(v62, &v9[v40], &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
        v41 = v58;
        if (v58(v9, 1, v10) == 1)
        {
          outlined destroy of MediaUserStateCenter?(v24, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
          if (v41(&v9[v40], 1, v10) == 1)
          {
            goto LABEL_24;
          }
        }

        else
        {
          outlined init with copy of MediaUserStateCenter?(v9, v20, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
          if (v41(&v9[v40], 1, v10) != 1)
          {
            v36 = v53;
            (*v50)(v53, &v9[v40], v10);
            lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type VideoCategory and conformance VideoCategory, MEMORY[0x277CB9E20]);
            v37 = dispatch thunk of static Equatable.== infix(_:_:)();
            v38 = *v54;
            v39 = v36;
            v24 = v51;
            (*v54)(v39, v10);
            outlined destroy of MediaUserStateCenter?(v24, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
            v38(v20, v10);
            outlined destroy of MediaUserStateCenter?(v9, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
            if (v37)
            {
              goto LABEL_25;
            }

            goto LABEL_14;
          }

          outlined destroy of MediaUserStateCenter?(v24, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
          (*v54)(v20, v10);
        }

        outlined destroy of MediaUserStateCenter?(v9, &_s10AppIntents13VideoCategoryOSg_ADtMd, &_s10AppIntents13VideoCategoryOSg_ADtMR);
LABEL_14:
        a2 = (a2 + 1) & v56;
      }

      while (((*(v57 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_21:
  v42 = *v49;
  *(*v49 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = outlined init with take of PommesSearchReason?(v62, *(v42 + 48) + *(v52 + 72) * a2, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
  v44 = *(v42 + 16);
  v45 = __OFADD__(v44, 1);
  v46 = v44 + 1;
  if (v45)
  {
    __break(1u);
LABEL_24:
    outlined destroy of MediaUserStateCenter?(v9, &_s10AppIntents13VideoCategoryOSgMd, &_s10AppIntents13VideoCategoryOSgMR);
LABEL_25:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v42 + 16) = v46;
  }

  return result;
}

{
  v62 = a1;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17StringSearchScopeOSg_ADtMd, &_s10AppIntents17StringSearchScopeOSg_ADtMR);
  v6 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61, v7);
  v9 = &v47 - v8;
  v10 = type metadata accessor for StringSearchScope();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v53 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
  v52 = *(v15 - 8);
  v16 = *(v52 + 64);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v18, v21);
  v24 = &v47 - v23;
  v26 = MEMORY[0x28223BE20](v22, v25);
  v28 = &v47 - v27;
  v29 = *(*v3 + 16);
  v30 = *(*v3 + 24);
  v49 = v3;
  if (v30 <= v29 || (a3 & 1) == 0)
  {
    if (a3)
    {
      v48 = v26;
      specialized _NativeSet.resize(capacity:)(v29 + 1);
    }

    else
    {
      if (v30 > v29)
      {
        specialized _NativeSet.copy()(&_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR, &_ss11_SetStorageCy10AppIntents17StringSearchScopeOSgGMd, &_ss11_SetStorageCy10AppIntents17StringSearchScopeOSgGMR);
        goto LABEL_21;
      }

      v48 = v26;
      specialized _NativeSet.copyAndResize(capacity:)(v29 + 1);
    }

    v60 = *v3;
    v31 = *(v60 + 40);
    Hasher.init(_seed:)();
    outlined init with copy of MediaUserStateCenter?(v62, v28, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
    v58 = *(v11 + 48);
    v59 = v11 + 48;
    if (v58(v28, 1, v10) == 1)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      v32 = v53;
      (*(v11 + 32))(v53, v28, v10);
      Hasher._combine(_:)(1u);
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type StringSearchScope and conformance StringSearchScope, MEMORY[0x277CBA000]);
      dispatch thunk of Hashable.hash(into:)();
      (*(v11 + 8))(v32, v10);
    }

    v33 = Hasher._finalize()();
    v34 = -1 << *(v60 + 32);
    a2 = v33 & ~v34;
    v57 = v60 + 56;
    if ((*(v60 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v56 = ~v34;
      v50 = (v11 + 32);
      v35 = *(v52 + 72);
      v54 = (v11 + 8);
      v55 = v35;
      v51 = v24;
      do
      {
        outlined init with copy of MediaUserStateCenter?(*(v60 + 48) + v55 * a2, v24, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
        v40 = *(v61 + 48);
        outlined init with copy of MediaUserStateCenter?(v24, v9, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
        outlined init with copy of MediaUserStateCenter?(v62, &v9[v40], &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
        v41 = v58;
        if (v58(v9, 1, v10) == 1)
        {
          outlined destroy of MediaUserStateCenter?(v24, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
          if (v41(&v9[v40], 1, v10) == 1)
          {
            goto LABEL_24;
          }
        }

        else
        {
          outlined init with copy of MediaUserStateCenter?(v9, v20, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
          if (v41(&v9[v40], 1, v10) != 1)
          {
            v36 = v53;
            (*v50)(v53, &v9[v40], v10);
            lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type StringSearchScope and conformance StringSearchScope, MEMORY[0x277CBA000]);
            v37 = dispatch thunk of static Equatable.== infix(_:_:)();
            v38 = *v54;
            v39 = v36;
            v24 = v51;
            (*v54)(v39, v10);
            outlined destroy of MediaUserStateCenter?(v24, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
            v38(v20, v10);
            outlined destroy of MediaUserStateCenter?(v9, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
            if (v37)
            {
              goto LABEL_25;
            }

            goto LABEL_14;
          }

          outlined destroy of MediaUserStateCenter?(v24, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
          (*v54)(v20, v10);
        }

        outlined destroy of MediaUserStateCenter?(v9, &_s10AppIntents17StringSearchScopeOSg_ADtMd, &_s10AppIntents17StringSearchScopeOSg_ADtMR);
LABEL_14:
        a2 = (a2 + 1) & v56;
      }

      while (((*(v57 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_21:
  v42 = *v49;
  *(*v49 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = outlined init with take of PommesSearchReason?(v62, *(v42 + 48) + *(v52 + 72) * a2, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
  v44 = *(v42 + 16);
  v45 = __OFADD__(v44, 1);
  v46 = v44 + 1;
  if (v45)
  {
    __break(1u);
LABEL_24:
    outlined destroy of MediaUserStateCenter?(v9, &_s10AppIntents17StringSearchScopeOSgMd, &_s10AppIntents17StringSearchScopeOSgMR);
LABEL_25:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v42 + 16) = v46;
  }

  return result;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for LNSystemProtocol, 0x277D23938);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  type metadata accessor for AnyCancellable();
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x277CBCDA8]);
  result = dispatch thunk of Hashable._rawHashValue(seed:)();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x277CBCDA8]);
    do
    {
      v16 = *(*(v8 + 48) + 8 * a2);
      result = dispatch thunk of static Equatable.== infix(_:_:)();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v5;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy21SiriInformationSearch11CommonAudioV9AttributeOGMd, &_ss11_SetStorageCy21SiriInformationSearch11CommonAudioV9AttributeOGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  matched = type metadata accessor for AudioTypeFeaturiser.ExactMatchKey(0);
  v3 = *(matched - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](matched - 8, v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy21SiriInformationSearch19AudioTypeFeaturiserC13ExactMatchKey33_F1B61A3F9E84F78A1DE0179177191518LLVGMd, &_ss11_SetStorageCy21SiriInformationSearch19AudioTypeFeaturiserC13ExactMatchKey33_F1B61A3F9E84F78A1DE0179177191518LLVGMR);
  v8 = *v0;
  v9 = static _SetStorage.copy(original:)();
  v10 = v9;
  if (*(v8 + 16))
  {
    result = (v9 + 56);
    v12 = v8 + 56;
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || result >= v12 + 8 * v13)
    {
      result = memmove(result, (v8 + 56), 8 * v13);
    }

    v14 = 0;
    *(v10 + 16) = *(v8 + 16);
    v15 = 1 << *(v8 + 32);
    v16 = *(v8 + 56);
    v17 = -1;
    if (v15 < 64)
    {
      v17 = ~(-1 << v15);
    }

    v18 = v17 & v16;
    v19 = (v15 + 63) >> 6;
    if ((v17 & v16) != 0)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
LABEL_14:
        v23 = *(v3 + 72) * (v20 | (v14 << 6));
        outlined init with copy of PommesSearchRequest.ParseState(*(v8 + 48) + v23, v7, type metadata accessor for AudioTypeFeaturiser.ExactMatchKey);
        result = outlined init with take of PerformanceUtil.Ticket(v7, *(v10 + 48) + v23, type metadata accessor for AudioTypeFeaturiser.ExactMatchKey);
      }

      while (v18);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {
        goto LABEL_16;
      }

      v22 = *(v12 + 8 * v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v10;
  }

  return result;
}

{
  v1 = v0;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceLabel();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceLabelOGMd, &_ss11_SetStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceLabelOGMR);
  v8 = *v0;
  v9 = static _SetStorage.copy(original:)();
  v10 = v9;
  if (*(v8 + 16))
  {
    v24 = v1;
    result = (v9 + 56);
    v12 = v8 + 56;
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || result >= v12 + 8 * v13)
    {
      result = memmove(result, (v8 + 56), 8 * v13);
    }

    v14 = 0;
    *(v10 + 16) = *(v8 + 16);
    v15 = 1 << *(v8 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v8 + 56);
    v18 = (v15 + 63) >> 6;
    v25 = v3 + 32;
    for (i = v3 + 16; v17; result = (*(v3 + 32))(*(v10 + 48) + v22, v7, v2))
    {
      v19 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_14:
      v22 = *(v3 + 72) * (v19 | (v14 << 6));
      (*(v3 + 16))(v7, *(v8 + 48) + v22, v2);
    }

    v20 = v14;
    while (1)
    {
      v14 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v14 >= v18)
      {

        v1 = v24;
        goto LABEL_18;
      }

      v21 = *(v12 + 8 * v14);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v10;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy21SiriInformationSearch11CommonAudioV8ModifierOGMd, &_ss11_SetStorageCy21SiriInformationSearch11CommonAudioV8ModifierOGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7Combine14AnyCancellableCGMd, &_ss11_SetStorageCy7Combine14AnyCancellableCGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo16LNSystemProtocolCGMd, &_ss11_SetStorageCySo16LNSystemProtocolCGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *specialized _NativeSet.copy()(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v9 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v32 = *(v10 - 8);
  v11 = *(v32 + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v31 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v15 = *v4;
  v16 = static _SetStorage.copy(original:)();
  v17 = v16;
  if (*(v15 + 16))
  {
    v31 = v9;
    result = (v16 + 56);
    v19 = ((1 << *(v17 + 32)) + 63) >> 6;
    if (v17 != v15 || result >= v15 + 56 + 8 * v19)
    {
      result = memmove(result, (v15 + 56), 8 * v19);
    }

    v21 = 0;
    *(v17 + 16) = *(v15 + 16);
    v22 = 1 << *(v15 + 32);
    v23 = *(v15 + 56);
    v24 = -1;
    if (v22 < 64)
    {
      v24 = ~(-1 << v22);
    }

    v25 = v24 & v23;
    v26 = (v22 + 63) >> 6;
    if ((v24 & v23) != 0)
    {
      do
      {
        v27 = __clz(__rbit64(v25));
        v25 &= v25 - 1;
LABEL_17:
        v30 = *(v32 + 72) * (v27 | (v21 << 6));
        outlined init with copy of MediaUserStateCenter?(*(v15 + 48) + v30, v14, a1, a2);
        result = outlined init with take of PommesSearchReason?(v14, *(v17 + 48) + v30, a1, a2);
      }

      while (v25);
    }

    v28 = v21;
    while (1)
    {
      v21 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v21 >= v26)
      {

        v9 = v31;
        goto LABEL_21;
      }

      v29 = *(v15 + 56 + 8 * v21);
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v25 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v9 = v17;
  }

  return result;
}

id specialized AudioQueueStateManager.init(queueStateObserver:)(uint64_t a1, _BYTE *a2)
{
  v11[3] = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SOMediaNowPlayingObserver, 0x277D5E1D0);
  v11[4] = &protocol witness table for SOMediaNowPlayingObserver;
  v11[0] = a1;
  v4 = OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_updateAudioQueueStateCacheGroup;
  *&a2[v4] = dispatch_group_create();
  a2[OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_isObserverRegistered] = 0;
  v5 = OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_lock;
  *&a2[v5] = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  *&a2[OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_nowPlayingInfoCache] = 0;
  v6 = &a2[OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_queueStateCache];
  *v6 = 0;
  v6[8] = 1;
  v7 = &a2[OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_applicationBundleIdentifierCache];
  *v7 = 0;
  v7[1] = 0;
  outlined init with copy of AppDataProviding(v11, &a2[OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_queueStateObserver]);
  v10.receiver = a2;
  v10.super_class = type metadata accessor for AudioQueueStateManager();
  v8 = objc_msgSendSuper2(&v10, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v8;
}

uint64_t _s21SiriInformationSearch34PreferredNavigationAppDataProviderC4make03appgH011preferencesAA03AnygH0CySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGAA0fG9Providing_p_So13AFPreferencesCtFZTf4enn_nAA0fgH0C_Tt1g5(uint64_t a1, void *a2)
{
  v11[3] = type metadata accessor for AppDataProvider();
  v11[4] = &protocol witness table for AppDataProvider;
  v11[0] = a1;
  outlined init with copy of AppDataProviding(v11, v10);
  type metadata accessor for PreferredNavigationAppDataProvider();
  memset(v8, 0, sizeof(v8));
  v9 = 0;
  v4 = swift_allocObject();
  *(v4 + 64) = 0u;
  *(v4 + 96) = 0u;
  *(v4 + 112) = 0;
  *(v4 + 80) = 0u;
  outlined init with take of DomainWarmupHandling(v10, v4 + 16);
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 56) = a2;
  swift_beginAccess();

  v5 = a2;
  outlined assign with take of MediaUserStateCenter?(v8, v4 + 80, &_s21SiriInformationSearch21ForegroundAppProvider_pSgMd, &_s21SiriInformationSearch21ForegroundAppProvider_pSgMR);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGMd, &_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGMR);
  swift_allocObject();
  v6 = specialized AnyDataProvider.init<A>(provider:)(v4);
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v6;
}

uint64_t _s21SiriInformationSearch0A22KitAppInfoDataProviderC4make03appgH0014satisfyingAppsgH0010foregroundeH00jc4ViewH0AA03AnygH0CySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGAA0eG9Providing_p_AA010SatisfyinglgH0_pSgAA010ForegroundeH0_pAA0ecnH0_pSgtFZTf4enenn_nAA0egH0C_AA012RunningBoardyeH0VTt3g5(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v31[3] = type metadata accessor for AppDataProvider();
  v31[4] = &protocol witness table for AppDataProvider;
  v31[0] = a1;
  v30[3] = &type metadata for RunningBoardForegroundAppProvider;
  v30[4] = &protocol witness table for RunningBoardForegroundAppProvider;
  v8 = one-time initialization token for pommes;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.pommes);
  swift_unknownObjectRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109376;
    *(v12 + 4) = 1;
    *(v12 + 8) = 1024;
    *(v12 + 10) = a2 != 0;
    swift_unknownObjectRelease();
    _os_log_impl(&dword_2232BB000, v10, v11, "SiriKitAppInfoDataProvider make, isEnabled=%{BOOL}d, satisfyingAppsDataProvider specified=%{BOOL}d", v12, 0xEu);
    MEMORY[0x223DE0F80](v12, -1, -1);

    v13 = a2;
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  else
  {

    swift_unknownObjectRelease();
    v13 = a2;
    if (!a2)
    {
LABEL_7:
      swift_beginAccess();
      v14 = off_280FB8C58;

      v13 = v14();
      a3 = v15;

      swift_unknownObjectRetain();
    }
  }

  outlined init with copy of AppDataProviding(v31, v29);
  outlined init with copy of AppDataProviding(v30, v28);
  outlined init with copy of MediaUserStateCenter?(a4, v26, &_s21SiriInformationSearch03AppC12ViewProvider_pSgMd, &_s21SiriInformationSearch03AppC12ViewProvider_pSgMR);
  v16 = type metadata accessor for SiriKitAppInfoDataProvider();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  v19 = swift_allocObject();
  v20 = OBJC_IVAR____TtC21SiriInformationSearch26SiriKitAppInfoDataProvider_appInfo;
  v21 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo();
  (*(*(v21 - 8) + 56))(v19 + v20, 1, 1, v21);
  *(v19 + OBJC_IVAR____TtC21SiriInformationSearch26SiriKitAppInfoDataProvider_searchViewVisible) = 2;
  v22 = v19 + OBJC_IVAR____TtC21SiriInformationSearch26SiriKitAppInfoDataProvider_numThirdPartyVideoApps;
  *v22 = 0;
  *(v22 + 8) = 1;
  outlined init with take of DomainWarmupHandling(v29, v19 + 16);
  *(v19 + 56) = v13;
  *(v19 + 64) = a3;
  outlined init with take of DomainWarmupHandling(v28, v19 + 72);
  v23 = v26[1];
  *(v19 + 112) = v26[0];
  *(v19 + 128) = v23;
  *(v19 + 144) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGMd, &_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGMR);
  swift_allocObject();
  swift_unknownObjectRetain_n();
  v24 = specialized AnyDataProvider.init<A>(provider:)(v19);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v31);
  __swift_destroy_boxed_opaque_existential_1(v30);
  return v24;
}

uint64_t specialized MusicDomain.init(spanMatcher:)(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd, &_ss23_ContiguousArrayStorageCys6UInt16VGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2234D0350;
  *(inited + 32) = xmmword_2234D0360;
  *(inited + 48) = -1529961267;
  *(inited + 52) = -23348;
  v5 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCs6UInt16V_Tt0g5Tf4g_n(inited);
  swift_setDeallocating();
  *(a2 + 32) = v5;
  type metadata accessor for VocabularySearchClient();
  v6 = swift_allocObject();
  *(a2 + 16) = specialized VocabularySearchClient.init(spanMatcher:)(a1, v6);
  return a2;
}

uint64_t specialized VocabularySearchClient.init(spanMatcher:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v23 = *(v4 - 8);
  v24 = v4;
  v5 = *(v23 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v22 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8, v10);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v14 = type metadata accessor for DispatchQoS.QoSClass();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SEMSpanMatcher, 0x277D55D38);
  v28 = &protocol witness table for SEMSpanMatcher;
  *&v26 = a1;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v21 = "preparedRequestsIds";
  (*(v15 + 104))(v19, *MEMORY[0x277D851C8], v14);
  static OS_dispatch_queue.global(qos:)();
  (*(v15 + 8))(v19, v14);
  static DispatchQoS.unspecified.getter();
  v25 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v23 + 104))(v22, *MEMORY[0x277D85260], v24);
  *(a2 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(a2 + 64) = 0;
  outlined init with take of DomainWarmupHandling(&v26, a2 + 24);
  return a2;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SdTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSdGMd, &_ss18_DictionaryStorageCySSSdGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t specialized static PommesSearch.defaultPreflightClients(dataProviderManager:networkAvailabilityProvider:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SiriInformationSearch06PommesF17PreflightHandling_pGMd, &_ss23_ContiguousArrayStorageCy21SiriInformationSearch06PommesF17PreflightHandling_pGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2234D0370;
  v5 = type metadata accessor for DisableSearchPreflightClient();
  v6 = swift_allocObject();
  *(v4 + 56) = v5;
  *(v4 + 64) = &protocol witness table for DisableSearchPreflightClient;
  *(v4 + 32) = v6;
  matched = type metadata accessor for UtteranceMatchPreflightClient();
  v8 = swift_allocObject();
  *(v4 + 96) = matched;
  *(v4 + 104) = &protocol witness table for UtteranceMatchPreflightClient;
  *(v4 + 72) = v8;
  v9 = type metadata accessor for ClassicFollowupPreflightClient();
  v10 = swift_allocObject();
  *(v4 + 136) = v9;
  *(v4 + 144) = &protocol witness table for ClassicFollowupPreflightClient;
  *(v4 + 112) = v10;
  v11 = type metadata accessor for SmartPlayPreflightClient();
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v4 + 176) = v11;
  *(v4 + 184) = &protocol witness table for SmartPlayPreflightClient;
  *(v4 + 152) = v12;
  v13 = type metadata accessor for CallContactPreflightClient();
  v14 = swift_allocObject();
  *(v4 + 216) = v13;
  *(v4 + 224) = &protocol witness table for CallContactPreflightClient;
  *(v4 + 192) = v14;
  v15 = objc_opt_self();

  v16 = [v15 processInfo];
  v17 = NSProcessInfo.isRunningUnitTests.getter();

  if (v17)
  {
    v18 = &type metadata for EmptyReferenceResolver;
    v19 = lazy protocol witness table accessor for type EmptyReferenceResolver and conformance EmptyReferenceResolver();
  }

  else
  {
    v18 = type metadata accessor for ReferenceResolutionClient();
    *&v35 = ReferenceResolutionClient.__allocating_init()();
    v19 = MEMORY[0x277D5FDD8];
  }

  v36 = v18;
  v37 = v19;
  v20 = type metadata accessor for PlayThisLibraryItemPreflightClient();
  v21 = swift_allocObject();
  outlined init with take of DomainWarmupHandling(&v35, v21 + 16);
  *(v4 + 256) = v20;
  *(v4 + 264) = &protocol witness table for PlayThisLibraryItemPreflightClient;
  *(v4 + 232) = v21;
  v22 = type metadata accessor for WholeHomeAudioPreflightClient();
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *(v4 + 296) = v22;
  *(v4 + 304) = &protocol witness table for WholeHomeAudioPreflightClient;
  *(v4 + 272) = v23;
  v24 = type metadata accessor for PlayRadioStationPreflightClient();
  v25 = swift_allocObject();
  *(v4 + 336) = v24;
  *(v4 + 344) = &protocol witness table for PlayRadioStationPreflightClient;
  *(v4 + 312) = v25;
  v26 = type metadata accessor for OfflineMusicPlaybackPreflightClient();
  v27 = swift_allocObject();
  *(v27 + 16) = a2;
  *(v4 + 376) = v26;
  *(v4 + 384) = &protocol witness table for OfflineMusicPlaybackPreflightClient;
  *(v4 + 352) = v27;
  v28 = type metadata accessor for EnvironmentNamePreflightClient();
  v29 = swift_allocObject();
  *(v4 + 416) = v28;
  *(v4 + 424) = &protocol witness table for EnvironmentNamePreflightClient;
  *(v4 + 392) = v29;
  v30 = type metadata accessor for OpenAppOnTVPreflightClient();
  v31 = swift_allocObject();
  *(v4 + 456) = v30;
  *(v4 + 464) = &protocol witness table for OpenAppOnTVPreflightClient;
  *(v4 + 432) = v31;
  v32 = type metadata accessor for OpenAppVocPreflightClient();
  v33 = swift_allocObject();
  *(v4 + 496) = v32;
  *(v4 + 504) = &protocol witness table for OpenAppVocPreflightClient;
  *(v4 + 472) = v33;

  return v4;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC21SiriInformationSearch16LocalDomainTypesO_AC0fgE0_pTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy21SiriInformationSearch16LocalDomainTypesOAC0fgE0_pGMd, &_ss18_DictionaryStorageCy21SiriInformationSearch16LocalDomainTypesOAC0fgE0_pGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of MediaUserStateCenter?(v4, v11, &_s21SiriInformationSearch16LocalDomainTypesO_AA0deC0_ptMd, &_s21SiriInformationSearch16LocalDomainTypesO_AA0deC0_ptMR);
      v5 = v11[0];
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11[0]);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      result = outlined init with take of DomainWarmupHandling(&v12, v3[7] + 40 * result);
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_21SiriInformationSearch13CacheHandling_pTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS21SiriInformationSearch13CacheHandling_pGMd, &_ss18_DictionaryStorageCySS21SiriInformationSearch13CacheHandling_pGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of MediaUserStateCenter?(v4, &v13, &_sSS_21SiriInformationSearch13CacheHandling_ptMd, &_sSS_21SiriInformationSearch13CacheHandling_ptMR);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of DomainWarmupHandling(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of MediaUserStateCenter?(v4, &v13, &_sSS_yptMd, &_sSS_yptMR);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_21SiriInformationSearch20DomainWarmupHandling_pTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS21SiriInformationSearch20DomainWarmupHandling_pGMd, &_ss18_DictionaryStorageCySS21SiriInformationSearch20DomainWarmupHandling_pGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of MediaUserStateCenter?(v4, &v13, &_sSS_21SiriInformationSearch20DomainWarmupHandling_ptMd, &_sSS_21SiriInformationSearch20DomainWarmupHandling_ptMR);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of DomainWarmupHandling(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_12SiriNLUTypes0C18_Nlu_External_SpanVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_12SiriNLUTypes0A18_Nlu_External_SpanVtMd, &_sSS_12SiriNLUTypes0A18_Nlu_External_SpanVtMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = (&v24 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS12SiriNLUTypes0C18_Nlu_External_SpanVGMd, &_ss18_DictionaryStorageCySS12SiriNLUTypes0C18_Nlu_External_SpanVGMR);
    v9 = static _DictionaryStorage.allocate(capacity:)();
    v10 = *(v2 + 48);
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of MediaUserStateCenter?(v11, v7, &_sSS_12SiriNLUTypes0A18_Nlu_External_SpanVtMd, &_sSS_12SiriNLUTypes0A18_Nlu_External_SpanVtMR);
      v13 = *v7;
      v14 = v7[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v7, v14);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v9[6] + 16 * result);
      *v18 = v13;
      v18[1] = v14;
      v19 = v9[7];
      v20 = type metadata accessor for Siri_Nlu_External_Span();
      result = (*(*(v20 - 8) + 32))(v19 + *(*(v20 - 8) + 72) * v17, v7 + v10, v20);
      v21 = v9[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v9[2] = v23;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SfTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSfGMd, &_ss18_DictionaryStorageCySSSfGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 6)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 4 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSJ_SaySSGTt0g5Tf4g_n(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySJSaySSGGMd, &_ss18_DictionaryStorageCySJSaySSGGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v5;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v12 = (v3[6] + 16 * v9);
    *v12 = v4;
    v12[1] = result;
    *(v3[7] + 8 * v9) = v6;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v17 = *(v11 - 1);
    v18 = *v11;

    v9 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v17);
    v11 = v16;
    v6 = v18;
    result = v17;
    if (v19)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_12SiriNLUTypes0C36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationttMd, &_sSS_12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationttMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = (&v23 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS12SiriNLUTypes0C36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtGMd, &_ss18_DictionaryStorageCySS12SiriNLUTypes0C36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtGMR);
    v9 = static _DictionaryStorage.allocate(capacity:)();
    v10 = *(v2 + 48);
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v23 = *(v3 + 72);
    v24 = v10;

    while (1)
    {
      outlined init with copy of MediaUserStateCenter?(v11, v7, &_sSS_12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationttMd, &_sSS_12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationttMR);
      v13 = *v7;
      v12 = v7[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v7, v12);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v9[6] + 16 * result);
      *v17 = v13;
      v17[1] = v12;
      v18 = v9[7];
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
      result = outlined init with take of PommesSearchReason?(v7 + v24, v18 + *(*(v19 - 8) + 72) * v16, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
      v20 = v9[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v9[2] = v22;
      v11 += v23;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_21SiriInformationSearch24PommesDialogStateManagerC0G5Value33_DDAE567450B270DABF8F98FB8100F132LLVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_21SiriInformationSearch24PommesDialogStateManagerC0E5Value33_DDAE567450B270DABF8F98FB8100F132LLVtMd, &_sSS_21SiriInformationSearch24PommesDialogStateManagerC0E5Value33_DDAE567450B270DABF8F98FB8100F132LLVtMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = (&v24 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS21SiriInformationSearch24PommesDialogStateManagerC0G5Value33_DDAE567450B270DABF8F98FB8100F132LLVGMd, &_ss18_DictionaryStorageCySS21SiriInformationSearch24PommesDialogStateManagerC0G5Value33_DDAE567450B270DABF8F98FB8100F132LLVGMR);
    v9 = static _DictionaryStorage.allocate(capacity:)();
    v10 = *(v2 + 48);
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of MediaUserStateCenter?(v11, v7, &_sSS_21SiriInformationSearch24PommesDialogStateManagerC0E5Value33_DDAE567450B270DABF8F98FB8100F132LLVtMd, &_sSS_21SiriInformationSearch24PommesDialogStateManagerC0E5Value33_DDAE567450B270DABF8F98FB8100F132LLVtMR);
      v13 = *v7;
      v14 = v7[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v7, v14);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v9[6] + 16 * result);
      *v18 = v13;
      v18[1] = v14;
      v19 = v9[7];
      v20 = type metadata accessor for PommesDialogStateManager.DialogValue();
      result = outlined init with take of PerformanceUtil.Ticket(v7 + v10, v19 + *(*(v20 - 8) + 72) * v17, type metadata accessor for PommesDialogStateManager.DialogValue);
      v21 = v9[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v9[2] = v23;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10PegasusAPI44Apple_Parsec_Siri_V2alpha_RequestedMediaTypeO_ShyAC0e1_f1_g1_h10_AudioItemK0OGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_RequestedMediaTypeO_ShyAA0c1_d1_e1_f10_AudioItemI0OGtMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_RequestedMediaTypeO_ShyAA0c1_d1_e1_f10_AudioItemI0OGtMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v21 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10PegasusAPI44Apple_Parsec_Siri_V2alpha_RequestedMediaTypeOShyAC0e1_f1_g1_h10_AudioItemK0OGGMd, &_ss18_DictionaryStorageCy10PegasusAPI44Apple_Parsec_Siri_V2alpha_RequestedMediaTypeOShyAC0e1_f1_g1_h10_AudioItemK0OGGMR);
    v9 = static _DictionaryStorage.allocate(capacity:)();
    v10 = *(v2 + 48);
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of MediaUserStateCenter?(v11, v7, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_RequestedMediaTypeO_ShyAA0c1_d1_e1_f10_AudioItemI0OGtMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_RequestedMediaTypeO_ShyAA0c1_d1_e1_f10_AudioItemI0OGtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v7);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v9[6];
      v17 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RequestedMediaType();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v7, v17);
      *(v9[7] + 8 * v15) = *&v7[v10];
      v18 = v9[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v9[2] = v20;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10PegasusAPI49Apple_Parsec_Siri_V2alpha_AudioQueueStateItemTypeOTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10PegasusAPI49Apple_Parsec_Siri_V2alpha_AudioQueueStateItemTypeOtMd, &_sSS_10PegasusAPI49Apple_Parsec_Siri_V2alpha_AudioQueueStateItemTypeOtMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = (&v24 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10PegasusAPI49Apple_Parsec_Siri_V2alpha_AudioQueueStateItemTypeOGMd, &_ss18_DictionaryStorageCySS10PegasusAPI49Apple_Parsec_Siri_V2alpha_AudioQueueStateItemTypeOGMR);
    v9 = static _DictionaryStorage.allocate(capacity:)();
    v10 = *(v2 + 48);
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of MediaUserStateCenter?(v11, v7, &_sSS_10PegasusAPI49Apple_Parsec_Siri_V2alpha_AudioQueueStateItemTypeOtMd, &_sSS_10PegasusAPI49Apple_Parsec_Siri_V2alpha_AudioQueueStateItemTypeOtMR);
      v13 = *v7;
      v14 = v7[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v7, v14);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v9[6] + 16 * result);
      *v18 = v13;
      v18[1] = v14;
      v19 = v9[7];
      v20 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateItemType();
      result = (*(*(v20 - 8) + 32))(v19 + *(*(v20 - 8) + 72) * v17, v7 + v10, v20);
      v21 = v9[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v9[2] = v23;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC21SiriInformationSearch19OnScreenContextTypeO_SSTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy21SiriInformationSearch19OnScreenContextTypeOSSGMd, &_ss18_DictionaryStorageCy21SiriInformationSearch19OnScreenContextTypeOSSGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 16);
      v7 = *(i - 1);
      v6 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = (v3[7] + 16 * result);
      *v10 = v7;
      v10[1] = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_21SiriInformationSearch11CommonAudioV6DecadeOTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS21SiriInformationSearch11CommonAudioV6DecadeOGMd, &_ss18_DictionaryStorageCySS21SiriInformationSearch11CommonAudioV6DecadeOGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC21SiriInformationSearch11CommonAudioV6DecadeO_SiTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy21SiriInformationSearch11CommonAudioV6DecadeOSiGMd, &_ss18_DictionaryStorageCy21SiriInformationSearch11CommonAudioV6DecadeOSiGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesO_0C17InformationSearch11CommonAudioV0hJ0OSgTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesO_0A17InformationSearch11CommonAudioV0fH0OSgtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesO_0A17InformationSearch11CommonAudioV0fH0OSgtMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v21 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesO0C17InformationSearch11CommonAudioV0hJ0OSgGMd, &_ss18_DictionaryStorageCy12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesO0C17InformationSearch11CommonAudioV0hJ0OSgGMR);
    v9 = static _DictionaryStorage.allocate(capacity:)();
    v10 = *(v2 + 48);
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of MediaUserStateCenter?(v11, v7, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesO_0A17InformationSearch11CommonAudioV0fH0OSgtMd, &_s12SiriOntology30UsoEntity_common_MediaItemTypeC13DefinedValuesO_0A17InformationSearch11CommonAudioV0fH0OSgtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v7);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v9[6];
      v17 = type metadata accessor for UsoEntity_common_MediaItemType.DefinedValues();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v7, v17);
      *(v9[7] + v15) = v7[v10];
      v18 = v9[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v9[2] = v20;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC21SiriInformationSearch11CommonAudioV4SortO_So07INMediaH5OrderVTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *(i - 8);
      v10 = *i;
      result = a4(v9);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v9;
      *(v7[7] + 8 * result) = v10;
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v7[2] = v15;
      if (!--v4)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo26LNSystemProtocolIdentifiera_10PegasusAPI035Apple_Parsec_Siri_V2alpha_AppIntentD8MetadataVSgSo0cdN0_pcTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo26LNSystemProtocolIdentifiera10PegasusAPI035Apple_Parsec_Siri_V2alpha_AppIntentD8MetadataVSgSo0cdN0_pcGMd, &_ss18_DictionaryStorageCySo26LNSystemProtocolIdentifiera10PegasusAPI035Apple_Parsec_Siri_V2alpha_AppIntentD8MetadataVSgSo0cdN0_pcGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i = (i + 24))
    {
      v11 = *i;
      v5 = *(i - 1);

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 16 * result) = v11;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10PegasusAPI51Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadataVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10PegasusAPI51Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadataVtMd, &_sSS_10PegasusAPI51Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadataVtMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = (&v24 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10PegasusAPI51Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadataVGMd, _ss18_DictionaryStorageCySS10PegasusAPI51Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadataVGMR);
    v9 = static _DictionaryStorage.allocate(capacity:)();
    v10 = *(v2 + 48);
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of MediaUserStateCenter?(v11, v7, &_sSS_10PegasusAPI51Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadataVtMd, &_sSS_10PegasusAPI51Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadataVtMR);
      v13 = *v7;
      v14 = v7[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v7, v14);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v9[6] + 16 * result);
      *v18 = v13;
      v18[1] = v14;
      v19 = v9[7];
      v20 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadata();
      result = (*(*(v20 - 8) + 32))(v19 + *(*(v20 - 8) + 72) * v17, v7 + v10, v20);
      v21 = v9[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v9[2] = v23;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So15StateCacheEntryCTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SbTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_21SiriInformationSearch21DomainAffinityKVStoreCTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS21SiriInformationSearch21DomainAffinityKVStoreCGMd, &_ss18_DictionaryStorageCySS21SiriInformationSearch21DomainAffinityKVStoreCGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ShySSGTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeO_SfTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeO_SftMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeO_SftMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v21 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOSfGMd, &_ss18_DictionaryStorageCy10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOSfGMR);
    v9 = static _DictionaryStorage.allocate(capacity:)();
    v10 = *(v2 + 48);
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of MediaUserStateCenter?(v11, v7, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeO_SftMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeO_SftMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v7);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v9[6];
      v17 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v7, v17);
      *(v9[7] + 4 * v15) = *&v7[v10];
      v18 = v9[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v9[2] = v20;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC21SiriInformationSearch19OnScreenContextTypeO_SaySSGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy21SiriInformationSearch19OnScreenContextTypeOSaySSGGMd, &_ss18_DictionaryStorageCy21SiriInformationSearch19OnScreenContextTypeOSaySSGGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10PegasusAPI026Apple_Parsec_Siri_V2alpha_G10KitAppInfoV10IntentTypeOTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10PegasusAPI026Apple_Parsec_Siri_V2alpha_E10KitAppInfoV10IntentTypeOtMd, &_sSS_10PegasusAPI026Apple_Parsec_Siri_V2alpha_E10KitAppInfoV10IntentTypeOtMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = (&v24 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10PegasusAPI026Apple_Parsec_Siri_V2alpha_G10KitAppInfoV10IntentTypeOGMd, &_ss18_DictionaryStorageCySS10PegasusAPI026Apple_Parsec_Siri_V2alpha_G10KitAppInfoV10IntentTypeOGMR);
    v9 = static _DictionaryStorage.allocate(capacity:)();
    v10 = *(v2 + 48);
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of MediaUserStateCenter?(v11, v7, &_sSS_10PegasusAPI026Apple_Parsec_Siri_V2alpha_E10KitAppInfoV10IntentTypeOtMd, &_sSS_10PegasusAPI026Apple_Parsec_Siri_V2alpha_E10KitAppInfoV10IntentTypeOtMR);
      v13 = *v7;
      v14 = v7[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v7, v14);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v9[6] + 16 * result);
      *v18 = v13;
      v18[1] = v14;
      v19 = v9[7];
      v20 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.IntentType();
      result = (*(*(v20 - 8) + 32))(v19 + *(*(v20 - 8) + 72) * v17, v7 + v10, v20);
      v21 = v9[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v9[2] = v23;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10PegasusAPI026Apple_Parsec_Siri_V2alpha_G10KitAppInfoV19IntentMediaCategoryOTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10PegasusAPI026Apple_Parsec_Siri_V2alpha_E10KitAppInfoV19IntentMediaCategoryOtMd, &_sSS_10PegasusAPI026Apple_Parsec_Siri_V2alpha_E10KitAppInfoV19IntentMediaCategoryOtMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = (&v24 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10PegasusAPI026Apple_Parsec_Siri_V2alpha_G10KitAppInfoV19IntentMediaCategoryOGMd, &_ss18_DictionaryStorageCySS10PegasusAPI026Apple_Parsec_Siri_V2alpha_G10KitAppInfoV19IntentMediaCategoryOGMR);
    v9 = static _DictionaryStorage.allocate(capacity:)();
    v10 = *(v2 + 48);
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of MediaUserStateCenter?(v11, v7, &_sSS_10PegasusAPI026Apple_Parsec_Siri_V2alpha_E10KitAppInfoV19IntentMediaCategoryOtMd, &_sSS_10PegasusAPI026Apple_Parsec_Siri_V2alpha_E10KitAppInfoV19IntentMediaCategoryOtMR);
      v13 = *v7;
      v14 = v7[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v7, v14);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v9[6] + 16 * result);
      *v18 = v13;
      v18[1] = v14;
      v19 = v9[7];
      v20 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.IntentMediaCategory();
      result = (*(*(v20 - 8) + 32))(v19 + *(*(v20 - 8) + 72) * v17, v7 + v10, v20);
      v21 = v9[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v9[2] = v23;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t specialized PommesSearch.init(remoteSearchClient:domainSearchClients:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for AnalyticsComponentIdGenerator();
  v6 = swift_allocObject();
  type metadata accessor for PommesRequestInstrumentationUtil();
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = v6;
  *(v3 + 64) = v7;
  v8 = [objc_opt_self() sharedPreferences];
  v9 = type metadata accessor for PommesServerFallbackPreferences();
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v3 + 96) = v9;
  *(v3 + 104) = &protocol witness table for PommesServerFallbackPreferences;
  *(v3 + 72) = v10;
  *(v3 + 112) = 0;
  *(v3 + 120) = MEMORY[0x277D84FA0];
  *(v3 + 32) = a2;
  *(v3 + 16) = MEMORY[0x277D84F90];
  *(v3 + 24) = a1;
  v11 = one-time initialization token for shared;

  if (v11 != -1)
  {
    swift_once();
  }

  *(v3 + 40) = static PegasusCacheManager.shared;

  v12 = default argument 0 of DomainWarmup.init(warmupClients:)();
  type metadata accessor for DomainWarmup();
  swift_allocObject();
  *(v3 + 56) = DomainWarmup.init(warmupClients:)(v12);
  v13 = [objc_allocWithZone(MEMORY[0x277CEF318]) init];
  v14 = AFSupportsMultiUser();
  type metadata accessor for PommesUserProfile();
  v15 = swift_allocObject();
  type metadata accessor for PommesMUXContextManager();
  swift_allocObject();
  *(v3 + 48) = PommesMUXContextManager.init(multiUserConnection:isMultiUserSupported:pommesUserProfile:)(v13, v14, v15);
  return v3;
}

void partial apply for closure #1 in PommesSearch.search(pommesSearchRequest:completion:)(char *a1, char a2)
{
  v4 = *(type metadata accessor for PerformanceUtil.Ticket(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for SignpostToken() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes18PommesSearchReasonOSgMd, &_s20SiriInformationTypes18PommesSearchReasonOSgMR) - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = (*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(type metadata accessor for PommesCandidateId() - 8);
  v16 = (*(v15 + 80) + v14 + 16) & ~*(v15 + 80);
  v17 = *(v15 + 64);
  v18 = *(type metadata accessor for PommesSearchRequest(0) - 8);
  closure #1 in PommesSearch.search(pommesSearchRequest:completion:)(a1, a2 & 1, v2 + v5, v2 + v8, (v2 + v11), *(v2 + v12), *(v2 + v12 + 8), *(v2 + v13), *(v2 + v14), *(v2 + v14 + 8), v2 + v16, v2 + ((v16 + v17 + *(v18 + 80)) & ~*(v18 + 80)));
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

id outlined copy of Result<PommesResponse, Error>?(id a1, char a2)
{
  if (a2 != -1)
  {
    return outlined copy of Result<PommesResponse, Error>(a1);
  }

  return a1;
}

void outlined consume of Result<PommesResponse, Error>?(id a1, char a2)
{
  if (a2 != -1)
  {
    outlined consume of Result<PommesResponse, Error>(a1);
  }
}

void outlined consume of PommesSearchPreflightResult(void *a1, void *a2)
{
  if (a1 != 1)
  {
  }
}

unint64_t lazy protocol witness table accessor for type SearchError and conformance SearchError()
{
  result = lazy protocol witness table cache variable for type SearchError and conformance SearchError;
  if (!lazy protocol witness table cache variable for type SearchError and conformance SearchError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchError and conformance SearchError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchError and conformance SearchError;
  if (!lazy protocol witness table cache variable for type SearchError and conformance SearchError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchError and conformance SearchError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LocalDomainTypes and conformance LocalDomainTypes()
{
  result = lazy protocol witness table cache variable for type LocalDomainTypes and conformance LocalDomainTypes;
  if (!lazy protocol witness table cache variable for type LocalDomainTypes and conformance LocalDomainTypes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocalDomainTypes and conformance LocalDomainTypes);
  }

  return result;
}

unint64_t type metadata completion function for PommesSearchError()
{
  result = type metadata accessor for Error();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PommesSearchReason();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t type metadata accessor for Error()
{
  result = lazy cache variable for type metadata for Error;
  if (!lazy cache variable for type metadata for Error)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for Error);
  }

  return result;
}

uint64_t type metadata completion function for PommesSearchEagerInfo()
{
  result = type metadata accessor for PommesSearchReason();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t dispatch thunk of PommesSearch.search(pommesSearchRequest:completion:)()
{
  return (*(*v0 + 264))();
}

{
  return (*(*v0 + 272))();
}

uint64_t getEnumTagSinglePayload for SearchError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SearchError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LocalDomainTypes(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for LocalDomainTypes(uint64_t result, unsigned int a2, unsigned int a3)
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

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t partial apply for specialized implicit closure #2 in implicit closure #1 in AnyDataProvider.init<A>(provider:)()
{
  return (*(*v0 + 216))();
}

{
  return (*(*v0 + 200))();
}

{
  return (*(*v0 + 96))();
}

{
  return (*(*v0 + 136))();
}

{
  return (*(*v0 + 104))();
}

{
  return (*(*v0 + 184))();
}

{
  return (*((*MEMORY[0x277D85000] & **(v0 + 16)) + 0x98))();
}

{
  return (*(*v0 + 224))();
}

{
  return (*(*v0 + 120))();
}

{
  return (*(*v0 + 120))();
}

{
  return (*(*v0 + 96))();
}

{
  return (*(*v0 + 152))();
}

uint64_t partial apply for specialized implicit closure #4 in implicit closure #3 in AnyDataProvider.init<A>(provider:)()
{
  return (*(*v0 + 224))() & 1;
}

{
  return (*(*v0 + 208))() & 1;
}

{
  return (*(*v0 + 104))() & 1;
}

{
  return (*(*v0 + 144))() & 1;
}

{
  return (*(*v0 + 112))() & 1;
}

{
  return (*(*v0 + 192))() & 1;
}

{
  return (*((*MEMORY[0x277D85000] & **(v0 + 16)) + 0xA0))() & 1;
}

{
  return (*(*v0 + 232))() & 1;
}

{
  return (*(*v0 + 128))() & 1;
}

{
  return (*(*v0 + 128))() & 1;
}

{
  return (*(*v0 + 104))() & 1;
}

{
  return (*(*v0 + 160))() & 1;
}

uint64_t partial apply for specialized implicit closure #6 in implicit closure #5 in AnyDataProvider.init<A>(provider:)@<X0>(uint64_t *a1@<X8>)
{
  result = (*(*v1 + 232))();
  *a1 = result;
  return result;
}

{
  result = (*(*v1 + 224))();
  *a1 = result;
  return result;
}

{
  result = (*(*v1 + 128))();
  *a1 = result;
  return result;
}

{
  result = (*(*v1 + 208))();
  *a1 = result;
  return result;
}

{
  result = (*(*v1 + 136))();
  *a1 = result;
  return result;
}

{
  result = (*(*v1 + 168))();
  *a1 = result;
  return result;
}

uint64_t outlined init with copy of PommesSearchRequest.ParseState(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *partial apply for specialized implicit closure #6 in implicit closure #5 in AnyDataProvider.init<A>(provider:)@<X0>(void *a1@<X8>)
{
  result = (*(*v1 + 120))(&v4);
  *a1 = v4;
  return result;
}

unint64_t lazy protocol witness table accessor for type PommesSearchRequestProcessorError and conformance PommesSearchRequestProcessorError()
{
  result = lazy protocol witness table cache variable for type PommesSearchRequestProcessorError and conformance PommesSearchRequestProcessorError;
  if (!lazy protocol witness table cache variable for type PommesSearchRequestProcessorError and conformance PommesSearchRequestProcessorError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesSearchRequestProcessorError and conformance PommesSearchRequestProcessorError);
  }

  return result;
}

void specialized PommesSearch.runGeoPersonalizationShadowLogging(result:)(char *a1, char a2)
{
  v4 = type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v81 = (&v73 - v13);
  MEMORY[0x28223BE20](v12, v14);
  v77 = &v73 - v15;
  v82[3] = &type metadata for FeatureFlag;
  v82[4] = lazy protocol witness table accessor for type FeatureFlag and conformance FeatureFlag();
  v16 = swift_allocObject();
  v82[0] = v16;
  *(v16 + 16) = 3;
  *(v16 + 24) = 0;
  *(v16 + 32) = 0;
  *(v16 + 40) = 0;
  *(v16 + 48) = 3;
  v17 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1(v82);
  if (v17 & 1) == 0 || (a2)
  {
    return;
  }

  a1;
  v18 = PommesResponse.metadataDomainName.getter();
  v20 = v19;
  v74 = v10;
  if (v18 == 1936744813 && v19 == 0xE400000000000000 || (v21 = v18, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) || v21 == 7300455 && v20 == 0xE300000000000000)
  {

    v22 = v4;
  }

  else
  {
    v66 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v22 = v4;
    if ((v66 & 1) == 0)
    {
      if (one-time initialization token for pommes != -1)
      {
        goto LABEL_47;
      }

      goto LABEL_36;
    }
  }

  if (one-time initialization token for pommes != -1)
  {
    goto LABEL_40;
  }

  while (1)
  {
    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.pommes);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    v26 = os_log_type_enabled(v24, v25);
    v27 = v77;
    if (v26)
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_2232BB000, v24, v25, "Shadow logging for geo personalization", v28, 2u);
      MEMORY[0x223DE0F80](v28, -1, -1);
    }

    v29 = dispatch thunk of PommesResponse.experiences.getter();
    if (v29 >> 62)
    {
      v71 = v29;
      v72 = __CocoaSet.count.getter();
      v29 = v71;
      if (!v72)
      {
LABEL_42:

        v65 = a1;
LABEL_43:
        outlined consume of Result<PommesResponse, Error>(v65);
        return;
      }
    }

    else if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_42;
    }

    if ((v29 & 0xC000000000000001) == 0)
    {
      break;
    }

    v30 = MEMORY[0x223DDFF80](0);
LABEL_17:
    v31 = v30;
    v73 = a1;

    v32 = dispatch thunk of Experience.associatedEntities.getter();

    v33 = MEMORY[0x277D84F90];
    v79 = *(v32 + 16);
    if (!v79)
    {
LABEL_30:

      v47 = *(v33 + 16);
      if (v47)
      {
        v82[0] = MEMORY[0x277D84F90];
        specialized ContiguousArray.reserveCapacity(_:)();
        v48 = *(v5 + 16);
        v49 = v5 + 16;
        v50 = v33 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
        v51 = *(v49 + 56);
        v80 = v49;
        v81 = v48;
        v78 = (v49 - 8);
        v79 = v51;
        v52 = v22;
        v53 = v74;
        do
        {
          v81(v53, v50, v52);
          v54 = Apple_Parsec_Siri_Context_ResultEntity.mapsEncryptedMuid.getter();
          v56 = v55;
          v57 = Apple_Parsec_Siri_Context_ResultEntity.name.getter();
          v59 = v58;
          v60 = objc_allocWithZone(MEMORY[0x277D1B330]);
          v61 = MEMORY[0x223DDF550](v54, v56);

          v62 = MEMORY[0x223DDF550](v57, v59);

          [v60 initWithMUID:v61 name:v62];

          (*v78)(v53, v52);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v63 = *(v82[0] + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v50 += v79;
          --v47;
        }

        while (v47);
      }

      v64 = [objc_allocWithZone(MEMORY[0x277D1B338]) initWithVisitCountThreshold:0 lastVisitDaysThreshold:0.0 visitCountGivenLocationThreshold:1.79769313e308 entityRelevanceThreshold:0.0 enableEntityRelevance:0.0];
      IQFMapsPersonalizationRanker.rankedEvents(for:completion:)();

      v65 = v73;
      goto LABEL_43;
    }

    v34 = 0;
    v78 = (v5 + 16);
    v80 = (v5 + 32);
    v75 = (v5 + 8);
    v76 = v22;
    while (v34 < *(v32 + 16))
    {
      a1 = ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v35 = *(v5 + 72);
      (*(v5 + 16))(v27, &a1[v32 + v35 * v34], v22);
      v36 = Apple_Parsec_Siri_Context_ResultEntity.mapsEncryptedMuid.getter();
      v38 = v37;

      v39 = HIBYTE(v38) & 0xF;
      if ((v38 & 0x2000000000000000) == 0)
      {
        v39 = v36 & 0xFFFFFFFFFFFFLL;
      }

      if (v39)
      {
        v40 = v27;
        v41 = v5;
        v42 = *v80;
        (*v80)(v81, v40, v22);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v82[0] = v33;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v33 + 16) + 1, 1);
          v33 = v82[0];
        }

        v45 = *(v33 + 16);
        v44 = *(v33 + 24);
        if (v45 >= v44 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v44 > 1, v45 + 1, 1);
          v33 = v82[0];
        }

        *(v33 + 16) = v45 + 1;
        v46 = &a1[v33 + v45 * v35];
        v22 = v76;
        v42(v46, v81, v76);
        v5 = v41;
        v27 = v77;
      }

      else
      {
        (*v75)(v27, v22);
      }

      if (v79 == ++v34)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_40:
    swift_once();
  }

  if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v30 = *(v29 + 32);
    goto LABEL_17;
  }

  __break(1u);
LABEL_47:
  swift_once();
LABEL_36:
  v67 = type metadata accessor for Logger();
  __swift_project_value_buffer(v67, static Logger.pommes);
  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    *v70 = 0;
    _os_log_impl(&dword_2232BB000, v68, v69, "Skipping geo personalization shadow logging because response is not geo domain", v70, 2u);
    MEMORY[0x223DE0F80](v70, -1, -1);
  }

  outlined consume of Result<PommesResponse, Error>(a1);
}

void outlined consume of Result<[IQFMapsPersonalizationResult], Error>(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t partial apply for specialized implicit closure #6 in implicit closure #5 in AnyDataProvider.init<A>(provider:)()
{
  return (*(*v0 + 152))();
}

{
  return (*((*MEMORY[0x277D85000] & **(v0 + 16)) + 0xA8))();
}

{
  return (*(*v0 + 136))();
}

{
  return (*(*v0 + 120))();
}

uint64_t partial apply for specialized implicit closure #6 in implicit closure #5 in AnyDataProvider.init<A>(provider:)@<X0>(_BYTE *a1@<X8>)
{
  result = (*(*v1 + 240))();
  *a1 = result;
  return result;
}

uint64_t PommesMUXContextManager.__allocating_init(multiUserConnection:isMultiUserSupported:pommesUserProfile:)(uint64_t a1, int a2, uint64_t a3)
{
  v6 = swift_allocObject();
  PommesMUXContextManager.init(multiUserConnection:isMultiUserSupported:pommesUserProfile:)(a1, a2, a3);
  return v6;
}

uint64_t MUXUserInfo.sharedUserId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MUXUserInfo.altDSID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t MUXUserInfo.companionName.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t MUXUserInfo.iTunesAltDSID.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t MUXUserInfo.init(sharedUserId:altDSID:companionName:homeSettings:iTunesAltDSID:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  return result;
}

uint64_t MUXContext.allInfo.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

void MUXContext.userInfo(where:is:)(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = 0uLL;
  if (a2 && (v6 = *(a3 + 16)) != 0)
  {
    v9 = (a3 + 32);
    while (1)
    {
      v10 = v9[1];
      v31 = *v9;
      v32 = v10;
      v11 = v9[3];
      v13 = *v9;
      v12 = v9[1];
      v33 = v9[2];
      v34 = v11;
      v14 = *(v9 + 8);
      v35 = v14;
      v27 = v12;
      v28 = v33;
      v29 = v9[3];
      v21 = v33;
      v22 = v32;
      v19 = v31;
      v20 = v11;
      v30 = *(v9 + 8);
      v26 = v13;
      outlined init with copy of MUXUserInfo(&v31, v23);
      outlined init with copy of MUXUserInfo(&v31, v23);
      swift_getAtKeyPath();
      v36[2] = v28;
      v36[3] = v29;
      v37 = v30;
      v36[0] = v26;
      v36[1] = v27;
      outlined destroy of MUXUserInfo(v36);
      if (v24 == a1 && v25 == a2)
      {
        break;
      }

      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v15)
      {
        goto LABEL_11;
      }

      outlined destroy of MUXUserInfo(&v31);
      v9 = (v9 + 72);
      if (!--v6)
      {
        v14 = 0;
        v16 = 0uLL;
        v17 = 0uLL;
        v18 = 0uLL;
        v5 = 0uLL;
        goto LABEL_12;
      }
    }

LABEL_11:
    v5 = v19;
    v18 = v20;
    v17 = v21;
    v16 = v22;
  }

  else
  {
    v14 = 0;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
  }

LABEL_12:
  *a4 = v5;
  *(a4 + 16) = v16;
  *(a4 + 32) = v17;
  *(a4 + 48) = v18;
  *(a4 + 64) = v14;
}

uint64_t specialized Sequence.first(where:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = result;
    v7 = a2 + 32;
    while (1)
    {
      v8 = *(v7 + 48);
      v23 = *(v7 + 32);
      v24 = v8;
      v25 = *(v7 + 64);
      v9 = *(v7 + 16);
      v22[0] = *v7;
      v22[1] = v9;
      v19 = v23;
      v20 = v8;
      v21 = v25;
      v17 = v22[0];
      v18 = v9;
      outlined init with copy of MUXUserInfo(v22, &v12);
      result = v6(&v17);
      if (v3)
      {
        v14 = v19;
        v15 = v20;
        v16 = v21;
        v12 = v17;
        v13 = v18;
        return outlined destroy of MUXUserInfo(&v12);
      }

      if (result)
      {
        break;
      }

      v14 = v19;
      v15 = v20;
      v16 = v21;
      v12 = v17;
      v13 = v18;
      result = outlined destroy of MUXUserInfo(&v12);
      v7 += 72;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }

    v10 = v20;
    *(a3 + 32) = v19;
    *(a3 + 48) = v10;
    *(a3 + 64) = v21;
    v11 = v18;
    *a3 = v17;
    *(a3 + 16) = v11;
  }

  else
  {
LABEL_6:
    *(a3 + 64) = 0;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t specialized Sequence.first(where:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_a9_V2alpha_aG8ResponseV0A11InstructionV11instructiontMd, &_s13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_a9_V2alpha_aG8ResponseV0A11InstructionV11instructiontMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7, v9);
  v13 = &v20 - v12;
  v14 = *(a2 + 16);
  if (v14)
  {
    v20 = v11;
    v21 = v10;
    v22 = a3;
    v15 = a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v16 = *(v11 + 72);
    while (1)
    {
      outlined init with copy of MediaUserStateCenter?(v15, v13, &_s13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_a9_V2alpha_aG8ResponseV0A11InstructionV11instructiontMd, &_s13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_a9_V2alpha_aG8ResponseV0A11InstructionV11instructiontMR);
      v17 = a1(v13);
      if (v3)
      {
        return outlined destroy of MediaUserStateCenter?(v13, &_s13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_a9_V2alpha_aG8ResponseV0A11InstructionV11instructiontMd, &_s13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_a9_V2alpha_aG8ResponseV0A11InstructionV11instructiontMR);
      }

      if (v17)
      {
        break;
      }

      outlined destroy of MediaUserStateCenter?(v13, &_s13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_a9_V2alpha_aG8ResponseV0A11InstructionV11instructiontMd, &_s13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_a9_V2alpha_aG8ResponseV0A11InstructionV11instructiontMR);
      v15 += v16;
      if (!--v14)
      {
        v18 = 1;
        a3 = v22;
        goto LABEL_10;
      }
    }

    a3 = v22;
    outlined init with take of PommesSearchReason?(v13, v22, &_s13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_a9_V2alpha_aG8ResponseV0A11InstructionV11instructiontMd, &_s13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_a9_V2alpha_aG8ResponseV0A11InstructionV11instructiontMR);
    v18 = 0;
LABEL_10:
    v11 = v20;
    v10 = v21;
  }

  else
  {
    v18 = 1;
  }

  return (*(v11 + 56))(a3, v18, 1, v10);
}

Swift::String_optional __swiftcall PommesUserProfile.fetchITunesAltDSID(iCloudAltDSID:)(Swift::String iCloudAltDSID)
{
  v1 = 0;
  v2 = 0;
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

uint64_t PommesMUXContextManager.cachedContext.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
}

uint64_t PommesMUXContextManager.cachedContext.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  *(v1 + 56) = a1;
}

uint64_t PommesMUXContextManager.init(multiUserConnection:isMultiUserSupported:pommesUserProfile:)(uint64_t a1, int a2, uint64_t a3)
{
  v23 = a3;
  v22 = a2;
  v21 = a1;
  v20 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v20 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v20, v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9, v11);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  *(v3 + 16) = dispatch_group_create();
  type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.unspecified.getter();
  v24 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v4 + 104))(v8, *MEMORY[0x277D85260], v20);
  v15 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v16 = v21;
  *(v3 + 24) = v15;
  *(v3 + 32) = v16;
  *(v3 + 40) = v22;
  v17 = MEMORY[0x277D84F90];
  *(v3 + 48) = v23;
  *(v3 + 56) = v17;
  return v3;
}

unint64_t type metadata accessor for OS_dispatch_queue()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue;
  if (!lazy cache variable for type metadata for OS_dispatch_queue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes()
{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes);
  }

  return result;
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

void PommesMUXContextManager.cacheWithMUXContextMessage(msg:)(char *a1)
{
  v121 = type metadata accessor for UserID();
  isa = v121[-1].isa;
  v3 = *(isa + 8);
  v5 = MEMORY[0x28223BE20](v121, v4);
  v118 = &v99 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5, v6);
  v116 = &v99 - v8;
  MEMORY[0x28223BE20](v7, v9);
  v109 = &v99 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetSgMd, &_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetSgMR);
  v12 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v11 - 8, v13);
  v16 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v107 = &v99 - v18;
  v117 = v1;
  if (*(v1 + 40) == 1)
  {
    if (one-time initialization token for pommes != -1)
    {
LABEL_34:
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    v20 = __swift_project_value_buffer(v19, static Logger.pommes);
    v21 = a1;
    v106 = v20;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();

    v24 = os_log_type_enabled(v22, v23);
    v108 = v16;
    if (v24)
    {
      v25 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      aBlock[0] = v120;
      *v25 = 136380675;
      v26 = v21;
      v27 = [v26 description];
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      v31 = v108;
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, aBlock);

      *(v25 + 4) = v32;
      v16 = v31;
      _os_log_impl(&dword_2232BB000, v22, v23, "MUXUserInfo: Received MUXContextMessage: %{private}s", v25, 0xCu);
      v33 = v120;
      __swift_destroy_boxed_opaque_existential_1(v120);
      MEMORY[0x223DE0F80](v33, -1, -1);
      MEMORY[0x223DE0F80](v25, -1, -1);
    }

    v34 = MUXContextMessage.userIdToHomeMember.getter();
    v36 = 0;
    v38 = v34 + 64;
    v37 = *(v34 + 64);
    v100 = v34;
    v39 = 1 << *(v34 + 32);
    v40 = -1;
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    v41 = v40 & v37;
    v42 = (v39 + 63) >> 6;
    v119 = (isa + 32);
    v120 = (isa + 16);
    v103 = isa + 8;
    v102 = v3 + 7;
    v101 = v123;
    *&v35 = 136315394;
    v99 = v35;
    v105 = v34 + 64;
    for (i = v42; ; v42 = i)
    {
      if (!v41)
      {
        if (v42 <= (v36 + 1))
        {
          v56 = (v36 + 1);
        }

        else
        {
          v56 = v42;
        }

        a1 = (v56 - 1);
        while (1)
        {
          v55 = (v36 + 1);
          if (__OFADD__(v36, 1))
          {
            break;
          }

          if (v55 >= v42)
          {
            v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetMd, &_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetMR);
            (*(*(v94 - 8) + 56))(v16, 1, 1, v94);
            v41 = 0;
            v36 = a1;
            goto LABEL_21;
          }

          v41 = *(v38 + 8 * v55);
          ++v36;
          if (v41)
          {
            v36 = v55;
            goto LABEL_20;
          }
        }

        __break(1u);
        goto LABEL_34;
      }

      v55 = v36;
LABEL_20:
      v57 = __clz(__rbit64(v41));
      v41 &= v41 - 1;
      v58 = v57 | (v55 << 6);
      v59 = v100;
      v61 = v109;
      v60 = isa;
      v62 = v121;
      (*(isa + 2))(v109, *(v100 + 48) + *(isa + 9) * v58, v121);
      v63 = *(*(v59 + 56) + 8 * v58);
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetMd, &_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetMR);
      v65 = *(v64 + 48);
      v66 = *(v60 + 4);
      v16 = v108;
      v66(v108, v61, v62);
      *&v16[v65] = v63;
      (*(*(v64 - 8) + 56))(v16, 0, 1, v64);
      v67 = v63;
LABEL_21:
      v68 = v107;
      outlined init with take of PommesSearchReason?(v16, v107, &_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetSgMd, &_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetSgMR);
      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetMd, &_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetMR);
      if ((*(*(v69 - 8) + 48))(v68, 1, v69) == 1)
      {
        break;
      }

      v70 = *(v68 + *(v69 + 48));
      v71 = *v119;
      v72 = v116;
      v73 = v68;
      v74 = v121;
      (*v119)(v116, v73, v121);
      dispatch_group_enter(*(v117 + 16));
      v75 = *v120;
      (*v120)(v118, v72, v74);
      v76 = v70;
      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.debug.getter();

      v79 = os_log_type_enabled(v77, v78);
      v115 = v71;
      v112 = v76;
      if (v79)
      {
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        aBlock[0] = v81;
        *v80 = v99;
        v82 = v118;
        v83 = UserID.sharedUserId.getter();
        v111 = v75;
        v85 = v84;
        v86 = *v103;
        v113 = v103 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v114 = v86;
        v86(v82, v121);
        v87 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v85, aBlock);

        *(v80 + 4) = v87;
        *(v80 + 12) = 2080;
        v88 = [v76 description];
        v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v91 = v90;

        v92 = v89;
        v75 = v111;
        v93 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v92, v91, aBlock);

        *(v80 + 14) = v93;
        _os_log_impl(&dword_2232BB000, v77, v78, "MUXUserInfo: Fetching sharedUserInfo for sharedUserId %s homeMember %s", v80, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DE0F80](v81, -1, -1);
        MEMORY[0x223DE0F80](v80, -1, -1);
      }

      else
      {

        v43 = *v103;
        v113 = v103 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v114 = v43;
        v43(v118, v121);
      }

      v44 = v116;
      v111 = *(v117 + 32);
      v45 = UserID.sharedUserId.getter();
      v46 = MEMORY[0x223DDF550](v45);

      v47 = swift_allocObject();
      swift_weakInit();
      v48 = v109;
      v49 = v121;
      (v75)(v109, v44, v121);
      v50 = (*(isa + 80) + 24) & ~*(isa + 80);
      v3 = (v102 + v50) & 0xFFFFFFFFFFFFFFF8;
      v51 = swift_allocObject();
      *(v51 + 16) = v47;
      v115(v51 + v50, v48, v49);
      v52 = v112;
      *(v51 + v3) = v112;
      v123[2] = partial apply for closure #1 in PommesMUXContextManager.cacheWithMUXContextMessage(msg:);
      v123[3] = v51;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v123[0] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed AFSharedUserInfo?) -> ();
      v123[1] = &block_descriptor_0;
      v53 = _Block_copy(aBlock);
      v54 = v52;

      [v111 getSharedUserInfoForSharedUserID:v46 completion:v53];
      _Block_release(v53);

      v114(v44, v49);
      v16 = v108;
      v38 = v105;
    }
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v95 = type metadata accessor for Logger();
    __swift_project_value_buffer(v95, static Logger.pommes);
    v121 = Logger.logObject.getter();
    v96 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v121, v96))
    {
      v97 = swift_slowAlloc();
      *v97 = 0;
      _os_log_impl(&dword_2232BB000, v121, v96, "MUXDataProvider - MultiUser not supported on this device", v97, 2u);
      MEMORY[0x223DE0F80](v97, -1, -1);
    }

    v98 = v121;
  }
}

void closure #1 in PommesMUXContextManager.cacheWithMUXContextMessage(msg:)(void *a1, uint64_t *a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for UserID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = &v147[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x28223BE20](v12, v15);
  MEMORY[0x28223BE20](v16, &v147[-v17]);
  v20 = MEMORY[0x28223BE20](&v147[-v18], v19);
  v22 = MEMORY[0x28223BE20](v20, v21);
  v24 = MEMORY[0x28223BE20](v22, v23);
  v30 = &v147[-v29];
  if (!a1)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v86 = type metadata accessor for Logger();
    __swift_project_value_buffer(v86, static Logger.pommes);
    (*(v9 + 16))(v14, a3, v8);
    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v161 = a2;
      v90 = v8;
      v91 = v89;
      v92 = swift_slowAlloc();
      *&v171 = v92;
      *v91 = 136315138;
      v93 = UserID.sharedUserId.getter();
      v95 = v94;
      (*(v9 + 8))(v14, v90);
      v96 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93, v95, &v171);

      *(v91 + 4) = v96;
      _os_log_impl(&dword_2232BB000, v87, v88, "MUXUserInfo: Could not fetch sharedUserInfo for sharedUserId %s", v91, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v92);
      MEMORY[0x223DE0F80](v92, -1, -1);
      MEMORY[0x223DE0F80](v91, -1, -1);
    }

    else
    {

      (*(v9 + 8))(v14, v8);
    }

    goto LABEL_24;
  }

  v160 = a4;
  v162 = v25;
  v156 = v26;
  v157 = v24;
  v154 = v28;
  v155 = v27;
  v31 = one-time initialization token for pommes;
  v32 = a1;
  if (v31 != -1)
  {
    swift_once();
  }

  v158 = v30;
  v33 = type metadata accessor for Logger();
  __swift_project_value_buffer(v33, static Logger.pommes);
  v34 = v32;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();
  v163 = v34;

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v159 = v9;
    v152 = v38;
    *&v171 = v38;
    *v37 = 136380675;
    v39 = v163;
    v161 = a2;
    v40 = v39;
    v41 = [v39 description];
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v153 = a3;
    v43 = v8;
    v45 = v44;

    a2 = v161;
    v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v45, &v171);
    v8 = v43;
    a3 = v153;

    *(v37 + 4) = v46;
    _os_log_impl(&dword_2232BB000, v35, v36, "MUXUserInfo: SharedUserInfo: %{private}s", v37, 0xCu);
    v47 = v152;
    __swift_destroy_boxed_opaque_existential_1(v152);
    v9 = v159;
    MEMORY[0x223DE0F80](v47, -1, -1);
    MEMORY[0x223DE0F80](v37, -1, -1);
  }

  v48 = [v163 companionDeviceInfo];
  if (!v48)
  {
    goto LABEL_20;
  }

  v49 = v48;
  v50 = [v48 productPrefix];

  if (!v50)
  {
    goto LABEL_20;
  }

  v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v53 = v52;

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {

    goto LABEL_20;
  }

  v55 = (*(*Strong + 192))(v51, v53);
  v57 = v56;

  if (!v57)
  {
LABEL_20:
    v97 = v162;
    (*(v9 + 16))(v162, a3, v8);
    v98 = Logger.logObject.getter();
    v99 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v98, v99))
    {

      (*(v9 + 8))(v97, v8);
      goto LABEL_24;
    }

    v100 = swift_slowAlloc();
    v101 = v8;
    v102 = swift_slowAlloc();
    *&v171 = v102;
    *v100 = 136315138;
    v103 = UserID.sharedUserId.getter();
    v104 = v9;
    v105 = v103;
    v107 = v106;
    (*(v104 + 8))(v97, v101);
    v108 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v105, v107, &v171);

    *(v100 + 4) = v108;
    _os_log_impl(&dword_2232BB000, v98, v99, "MUXUserInfo: Could not get companion name for sharedUserId %s", v100, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v102);
    MEMORY[0x223DE0F80](v102, -1, -1);
    MEMORY[0x223DE0F80](v100, -1, -1);

LABEL_22:
    goto LABEL_24;
  }

  v162 = v8;
  v58 = [v160 homeMemberSettings];
  if (!v58)
  {

    v111 = v157;
    v112 = v162;
    (*(v9 + 16))(v157, a3, v162);
    isEscapingClosureAtFileLocation = Logger.logObject.getter();
    v113 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(isEscapingClosureAtFileLocation, v113))
    {
LABEL_36:

      (*(v9 + 8))(v111, v112);
      goto LABEL_24;
    }

    v114 = swift_slowAlloc();
    v161 = swift_slowAlloc();
    *&v171 = v161;
    *v114 = 136315138;
    v115 = UserID.sharedUserId.getter();
    v117 = v116;
    (*(v9 + 8))(v111, v112);
    v118 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v115, v117, &v171);

    *(v114 + 4) = v118;
    _os_log_impl(&dword_2232BB000, isEscapingClosureAtFileLocation, v113, "MUXUserInfo: No saved SAHomeUserSettings for sharedUserId %s", v114, 0xCu);
    v119 = v161;
    __swift_destroy_boxed_opaque_existential_1(v161);
    MEMORY[0x223DE0F80](v119, -1, -1);
    MEMORY[0x223DE0F80](v114, -1, -1);
    goto LABEL_31;
  }

  isEscapingClosureAtFileLocation = v58;
  v60 = [v163 iCloudAltDSID];
  if (!v60)
  {

    v120 = v154;
    v121 = v162;
    (*(v9 + 16))(v154, a3, v162);
    v122 = Logger.logObject.getter();
    v123 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v122, v123))
    {

      (*(v9 + 8))(v120, v121);
LABEL_24:
      swift_beginAccess();
      v109 = swift_weakLoadStrong();
      if (v109)
      {
        v110 = *(v109 + 16);

        dispatch_group_leave(v110);
      }

      return;
    }

    v124 = swift_slowAlloc();
    v161 = v124;
    v125 = swift_slowAlloc();
    *&v171 = v125;
    *v124 = 136315138;
    v126 = UserID.sharedUserId.getter();
    v127 = v120;
    v129 = v128;
    (*(v9 + 8))(v127, v121);
    v130 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v126, v129, &v171);

    v131 = v161;
    *(v161 + 4) = v130;
    v132 = v131;
    _os_log_impl(&dword_2232BB000, v122, v123, "MUXUserInfo: No iCloudAltDSID for sharedUserId %s", v131, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v125);
    MEMORY[0x223DE0F80](v125, -1, -1);
    MEMORY[0x223DE0F80](v132, -1, -1);

LABEL_31:
    goto LABEL_22;
  }

  v160 = v55;
  v161 = a2;
  v61 = v60;
  v157 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v63 = v62;

  v64 = v158;
  v65 = v162;
  v152 = *(v9 + 16);
  v153 = v9 + 16;
  (v152)(v158, a3, v162);

  v66 = isEscapingClosureAtFileLocation;
  v150 = isEscapingClosureAtFileLocation;
  v67 = v66;
  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.debug.getter();

  v154 = v67;

  v70 = os_log_type_enabled(v68, v69);
  v159 = v9;
  if (v70)
  {
    v71 = swift_slowAlloc();
    v151 = v57;
    v72 = v71;
    v73 = swift_slowAlloc();
    v149 = swift_slowAlloc();
    *&v171 = v149;
    *v72 = 141559299;
    *(v72 + 4) = 1752392040;
    *(v72 + 12) = 2081;
    v148 = v69;
    v74 = UserID.sharedUserId.getter();
    v75 = v64;
    v77 = v76;
    (*(v9 + 8))(v75, v65);
    v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v77, &v171);

    *(v72 + 14) = v78;
    *(v72 + 22) = 2080;
    v79 = v157;
    *(v72 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v157, v63, &v171);
    *(v72 + 32) = 2080;
    v80 = v160;
    *(v72 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v160, v151, &v171);
    *(v72 + 42) = 2112;
    v81 = v154;
    *(v72 + 44) = v154;
    *v73 = v150;
    *(v72 + 52) = 2080;
    v82 = v81;
    *(v72 + 54) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v63, &v171);
    _os_log_impl(&dword_2232BB000, v68, v148, "Creating new MUXUserInfo with:\n  suid: %{private,mask.hash}s\n  altDSID: %s\n  companionName: %s\n  settings:%@\n iTunesAltDSID:%s", v72, 0x3Eu);
    outlined destroy of MediaUserStateCenter?(v73, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x223DE0F80](v73, -1, -1);
    v83 = v149;
    swift_arrayDestroy();
    MEMORY[0x223DE0F80](v83, -1, -1);
    v84 = v72;
    v57 = v151;
    MEMORY[0x223DE0F80](v84, -1, -1);

    v85 = v81;
  }

  else
  {

    (*(v9 + 8))(v64, v65);
    v80 = v160;
    v79 = v157;
    v85 = v154;
  }

  *&v166 = UserID.sharedUserId.getter();
  *(&v166 + 1) = v133;
  *&v167 = v79;
  *(&v167 + 1) = v63;
  *&v168 = v80;
  *(&v168 + 1) = v57;
  *&v169 = v85;
  *(&v169 + 1) = v79;
  v170 = v63;
  v175 = v63;
  v173 = v168;
  v174 = v169;
  v171 = v166;
  v172 = v167;
  v112 = v161;
  swift_beginAccess();
  v134 = swift_weakLoadStrong();
  if (v134)
  {
    v135 = *(v134 + 24);

    v136 = v135;

    v9 = v155;
    v137 = v162;
    (v152)(v155, a3, v162);
    v138 = v159;
    v139 = (*(v159 + 80) + 96) & ~*(v159 + 80);
    v140 = swift_allocObject();
    *(v140 + 16) = v112;
    v141 = v171;
    *(v140 + 40) = v172;
    v142 = v174;
    *(v140 + 56) = v173;
    *(v140 + 72) = v142;
    *(v140 + 88) = v175;
    *(v140 + 24) = v141;
    (*(v138 + 32))(v140 + v139, v9, v137);
    v143 = swift_allocObject();
    v111 = partial apply for closure #1 in closure #1 in PommesMUXContextManager.cacheWithMUXContextMessage(msg:);
    *(v143 + 16) = partial apply for closure #1 in closure #1 in PommesMUXContextManager.cacheWithMUXContextMessage(msg:);
    *(v143 + 24) = v140;
    v165[4] = partial apply for thunk for @callee_guaranteed () -> ();
    v165[5] = v143;
    v165[0] = MEMORY[0x277D85DD0];
    v165[1] = 1107296256;
    v165[2] = thunk for @escaping @callee_guaranteed () -> ();
    v165[3] = &block_descriptor_19;
    v144 = _Block_copy(v165);

    outlined init with copy of MUXUserInfo(&v166, &v164);

    dispatch_sync(v136, v144);

    outlined destroy of MUXUserInfo(&v166);
    _Block_release(v144);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      goto LABEL_36;
    }
  }

  else
  {

    outlined destroy of MUXUserInfo(&v166);
    v111 = 0;
  }

  swift_beginAccess();
  v145 = swift_weakLoadStrong();
  if (v145)
  {
    v146 = *(v145 + 16);

    dispatch_group_leave(v146);
  }

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v111);
}

void closure #1 in closure #1 in PommesMUXContextManager.cacheWithMUXContextMessage(msg:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for UserID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v32 = (*(*Strong + 144))(v34);
    v13 = v12;
    v14 = *v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v13 = v14;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 2) + 1, 1, v14);
      *v13 = v14;
    }

    v17 = *(v14 + 2);
    v16 = *(v14 + 3);
    if (v17 >= v16 >> 1)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v14);
      *v13 = v14;
    }

    *(v14 + 2) = v17 + 1;
    v18 = &v14[72 * v17];
    *(v18 + 2) = *a2;
    v19 = *(a2 + 16);
    v20 = *(a2 + 32);
    v21 = *(a2 + 48);
    *(v18 + 12) = *(a2 + 64);
    *(v18 + 4) = v20;
    *(v18 + 5) = v21;
    *(v18 + 3) = v19;
    outlined init with copy of MUXUserInfo(a2, v33);
    v32(v34, 0);
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Logger.pommes);
  (*(v6 + 16))(v10, a3, v5);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v33[0] = v26;
    *v25 = 141558275;
    *(v25 + 4) = 1752392040;
    *(v25 + 12) = 2081;
    v27 = UserID.sharedUserId.getter();
    v29 = v28;
    (*(v6 + 8))(v10, v5);
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, v33);

    *(v25 + 14) = v30;
    _os_log_impl(&dword_2232BB000, v23, v24, "MUXUserInfo for suid(%{private,mask.hash}s) added to cache", v25, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x223DE0F80](v26, -1, -1);
    MEMORY[0x223DE0F80](v25, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v10, v5);
  }
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed AFSharedUserInfo?) -> ()(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t PommesMUXContextManager.fetch(timeout:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A4TimeVSgMd, &_s8Dispatch0A4TimeVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = v16 - v6;
  v8 = type metadata accessor for DispatchTime();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of MediaUserStateCenter?(a1, v7, &_s8Dispatch0A4TimeVSgMd, &_s8Dispatch0A4TimeVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v7, &_s8Dispatch0A4TimeVSgMd, &_s8Dispatch0A4TimeVSgMR);
  }

  else
  {
    (*(v9 + 32))(v13, v7, v8);
    (*(*v1 + 168))(v13);
    (*(v9 + 8))(v13, v8);
  }

  v14 = v1[3];
  OS_dispatch_queue.sync<A>(execute:)();
  return v16[1];
}

Swift::String_optional __swiftcall PommesMUXContextManager.companionNameFromUserAgentString(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v3 = type metadata accessor for CharacterSet();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.pommes);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, v20);
    _os_log_impl(&dword_2232BB000, v10, v11, "Getting companion name from UAString: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x223DE0F80](v13, -1, -1);
    MEMORY[0x223DE0F80](v12, -1, -1);
  }

  v20[0] = countAndFlagsBits;
  v20[1] = object;
  CharacterSet.init(charactersIn:)();
  lazy protocol witness table accessor for type String and conformance String();
  v14 = StringProtocol.components(separatedBy:)();
  (*(v4 + 8))(v8, v3);
  if (v14[2] < 3uLL)
  {
    v15 = 0;
    v16 = 0;
  }

  else
  {
    v15 = v14[6];
    v16 = v14[7];
  }

  v17 = v15;
  v18 = v16;
  result.value._object = v18;
  result.value._countAndFlagsBits = v17;
  return result;
}

uint64_t PommesMUXContextManager.deinit()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 56);

  return v0;
}

uint64_t PommesMUXContextManager.__deallocating_deinit()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 56);

  return swift_deallocClassInstance();
}

void partial apply for closure #1 in PommesMUXContextManager.cacheWithMUXContextMessage(msg:)(void *a1)
{
  v3 = *(type metadata accessor for UserID() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  closure #1 in PommesMUXContextManager.cacheWithMUXContextMessage(msg:)(a1, v5, v1 + v4, v6);
}

uint64_t partial apply for closure #1 in PommesMUXContextManager.fetch(timeout:)@<X0>(uint64_t *a1@<X8>)
{
  result = (*(*v1 + 128))();
  *a1 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MUXUserInfo(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t storeEnumTagSinglePayload for MUXUserInfo(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void partial apply for closure #1 in closure #1 in PommesMUXContextManager.cacheWithMUXContextMessage(msg:)()
{
  v1 = *(type metadata accessor for UserID() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 96) & ~*(v1 + 80));

  closure #1 in closure #1 in PommesMUXContextManager.cacheWithMUXContextMessage(msg:)(v2, v0 + 24, v3);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioDecade.toString.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioDecade();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v7, v1, v2);
  v8 = (*(v3 + 88))(v7, v2);
  result = 0;
  if (v8 != *MEMORY[0x277D392E8] && v8 != *MEMORY[0x277D39348])
  {
    result = 7548978;
    if (v8 != *MEMORY[0x277D392F0])
    {
      if (v8 == *MEMORY[0x277D392F8])
      {
        return 7548979;
      }

      else if (v8 == *MEMORY[0x277D39300])
      {
        return 7548980;
      }

      else if (v8 == *MEMORY[0x277D39308])
      {
        return 7548981;
      }

      else if (v8 == *MEMORY[0x277D39310])
      {
        return 7548982;
      }

      else if (v8 == *MEMORY[0x277D39318])
      {
        return 7548983;
      }

      else if (v8 == *MEMORY[0x277D39320])
      {
        return 7548984;
      }

      else if (v8 == *MEMORY[0x277D39328])
      {
        return 7548985;
      }

      else
      {
        result = 0x7330303032;
        if (v8 != *MEMORY[0x277D39330])
        {
          if (v8 == *MEMORY[0x277D39338])
          {
            return 0x7330313032;
          }

          else if (v8 == *MEMORY[0x277D39340])
          {
            return 0x7330323032;
          }

          else
          {
            (*(v3 + 8))(v7, v2);
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioRadioType.toString.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioRadioType();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v7, v1, v2);
  v8 = (*(v3 + 88))(v7, v2);
  result = 0;
  if (v8 != *MEMORY[0x277D395F8])
  {
    if (v8 == *MEMORY[0x277D395D8])
    {
      return 28001;
    }

    else if (v8 == *MEMORY[0x277D395E0])
    {
      return 28006;
    }

    else if (v8 == *MEMORY[0x277D395E8])
    {
      return 25704;
    }

    else if (v8 == *MEMORY[0x277D39600])
    {
      return 0x74696C6C65746173;
    }

    else if (v8 == *MEMORY[0x277D395F0])
    {
      return 6447460;
    }

    else
    {
      (*(v3 + 8))(v7, v2);
      return 0;
    }
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_RequestedMediaType.toString.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RequestedMediaType();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v7, v1, v2);
  v8 = (*(v3 + 88))(v7, v2);
  if (v8 == *MEMORY[0x277D39890])
  {
    return 0x6E776F6E6B6E75;
  }

  if (v8 == *MEMORY[0x277D39898])
  {
    return 0x7473696C79616C70;
  }

  if (v8 == *MEMORY[0x277D39880])
  {
    return 0x74736163646F70;
  }

  if (v8 == *MEMORY[0x277D39848])
  {
    return 0x636973756DLL;
  }

  if (v8 == *MEMORY[0x277D397E0])
  {
    return 0x646956636973756DLL;
  }

  if (v8 == *MEMORY[0x277D398A0])
  {
    return 0x6F6F426F69647561;
  }

  if (v8 == *MEMORY[0x277D39850])
  {
    return 0x6F65646976;
  }

  if (v8 == *MEMORY[0x277D39878])
  {
    return 0x5573656E757469;
  }

  if (v8 == *MEMORY[0x277D397E8])
  {
    return 0x74616C69706D6F63;
  }

  if (v8 == *MEMORY[0x277D39838])
  {
    return 0x6D75626C61;
  }

  if (v8 == *MEMORY[0x277D39858])
  {
    return 0x747369747261;
  }

  if (v8 == *MEMORY[0x277D39868])
  {
    return 0x776F68537674;
  }

  if (v8 == *MEMORY[0x277D398A8])
  {
    return 0x6F68536F69646172;
  }

  if (v8 == *MEMORY[0x277D39828])
  {
    return 2003789939;
  }

  if (v8 == *MEMORY[0x277D397F8])
  {
    return 0x6174536F69646172;
  }

  if (v8 == *MEMORY[0x277D39808])
  {
    return 0x5374736163646F70;
  }

  if (v8 == *MEMORY[0x277D39888])
  {
    return 0x6E6F6974617473;
  }

  if (v8 == *MEMORY[0x277D39800])
  {
    return 0x616C50636973756DLL;
  }

  if (v8 == *MEMORY[0x277D39870])
  {
    return 0x65646F73697065;
  }

  if (v8 == *MEMORY[0x277D39860])
  {
    return 0x656C676E6973;
  }

  if (v8 == *MEMORY[0x277D39810])
  {
    return 28773;
  }

  if (v8 == *MEMORY[0x277D39818])
  {
    return 28780;
  }

  if (v8 == *MEMORY[0x277D39830])
  {
    return 1735290739;
  }

  if (v8 == *MEMORY[0x277D39840])
  {
    return 0x65726E6567;
  }

  if (v8 == *MEMORY[0x277D39820])
  {
    return 1937204590;
  }

  (*(v3 + 8))(v7, v2);
  return 0;
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioSort.toString.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioSort();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v7, v1, v2);
  v8 = (*(v3 + 88))(v7, v2);
  result = 0;
  if (v8 != *MEMORY[0x277D39130])
  {
    if (v8 == *MEMORY[0x277D39168])
    {
      return 0x6E776F6E6B6E75;
    }

    else if (v8 == *MEMORY[0x277D39160])
    {
      return 0x72616C75706F70;
    }

    else if (v8 == *MEMORY[0x277D39180])
    {
      return 0x616C75706F706E75;
    }

    else if (v8 == *MEMORY[0x277D39138])
    {
      return 1953719650;
    }

    else if (v8 == *MEMORY[0x277D39140])
    {
      return 0x7473726F77;
    }

    else if (v8 == *MEMORY[0x277D39148])
    {
      return 0x74736577656ELL;
    }

    else if (v8 == *MEMORY[0x277D39150])
    {
      return 0x747365646C6FLL;
    }

    else if (v8 == *MEMORY[0x277D39158])
    {
      return 0x74736574746F68;
    }

    else if (v8 == *MEMORY[0x277D39178])
    {
      return 0x6572636F6964656DLL;
    }

    else if (v8 == *MEMORY[0x277D39170])
    {
      return 0x7473657461657267;
    }

    else
    {
      (*(v3 + 8))(v7, v2);
      return 0;
    }
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.radioStationFrequencyStr.getter()
{
  Apple_Parsec_Siri_V2alpha_AudioUnderstanding.radioStationFrequency.getter();
  if (v0 < 0.01)
  {
    return 0;
  }

  Apple_Parsec_Siri_V2alpha_AudioUnderstanding.radioStationFrequency.getter();
  return Double.description.getter();
}

uint64_t OnScreenContextType.USOEntityBuilder.getter(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v1 = type metadata accessor for UsoEntityBuilder_common_Uri();
      v2 = *(v1 + 48);
      v3 = *(v1 + 52);
      swift_allocObject();
      return UsoEntityBuilder_common_Uri.init()();
    }

    else
    {
      v8 = type metadata accessor for UsoEntityBuilder_common_AppEntity();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      return UsoEntityBuilder_common_AppEntity.init()();
    }
  }

  else
  {
    v5 = type metadata accessor for UsoEntityBuilder_common_App();
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    return UsoEntityBuilder_common_App.init()();
  }
}

uint64_t OnScreenContextType.domainAffinityKVStore.getter(char a1)
{
  if (a1)
  {
    if (a1 != 1)
    {
      return 0;
    }

    v1 = 0xEB00000000495255;
    v2 = 0x6E65657263536E6FLL;
  }

  else
  {
    v1 = 0x80000002234D9320;
    v2 = 0xD000000000000013;
  }

  type metadata accessor for DomainAffinityKVStoreManager();
  v3 = static DomainAffinityKVStoreManager.domainAffinityKVStore(name:)(v2, v1);

  return v3;
}

uint64_t OnScreenContextType.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0xD000000000000013;
  }

  if (a1 == 1)
  {
    return 0x6E65657263536E6FLL;
  }

  return 0xD000000000000011;
}

Swift::String __swiftcall OnScreenContextType.normalize(_:)(Swift::String a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v33 - v6;
  v8 = String.lowercased()();
  countAndFlagsBits = v8._countAndFlagsBits;
  object = v8._object;
  if (v2)
  {
    if (v2 == 1)
    {
      URL.init(string:)();
      v11 = type metadata accessor for URL();
      v12 = *(v11 - 8);
      if ((*(v12 + 48))(v7, 1, v11) == 1)
      {
        outlined destroy of MediaUserStateCenter?(v7, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      }

      else
      {
        v20 = URL.host.getter();
        v22 = v21;
        (*(v12 + 8))(v7, v11);
        if (v22)
        {

          countAndFlagsBits = v20;
          object = v22;
        }
      }

      v37._countAndFlagsBits = countAndFlagsBits;
      v37._object = object;
      v35 = 11885;
      v36 = 0xE200000000000000;
      v33 = 0;
      v34 = 0xE000000000000000;
      lazy protocol witness table accessor for type String and conformance String();
      v23 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v25 = v24;

      v37._countAndFlagsBits = v23;
      v37._object = v25;
      v35 = 779581303;
      v36 = 0xE400000000000000;
      v33 = 0;
      v34 = 0xE000000000000000;
      v26 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v28 = v27;

      v37._countAndFlagsBits = v26;
      v37._object = v28;
      v35 = 1836016430;
      v36 = 0xE400000000000000;
      v33 = 0;
      v34 = 0xE000000000000000;
      countAndFlagsBits = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      object = v29;
    }

    else
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      __swift_project_value_buffer(v15, static Logger.pommes);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v37._countAndFlagsBits = v19;
        *v18 = 136315138;
        *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x80000002234D9340, &v37._countAndFlagsBits);
        _os_log_impl(&dword_2232BB000, v16, v17, "No normalization needed for %s", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v19);
        MEMORY[0x223DE0F80](v19, -1, -1);
        MEMORY[0x223DE0F80](v18, -1, -1);
      }
    }
  }

  else
  {
    v37 = v8;
    v35 = 778923875;
    v36 = 0xE400000000000000;
    v33 = 0;
    v34 = 0xE000000000000000;
    lazy protocol witness table accessor for type String and conformance String();
    countAndFlagsBits = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v14 = v13;

    object = v14;
  }

  v30 = countAndFlagsBits;
  v31 = object;
  result._object = v31;
  result._countAndFlagsBits = v30;
  return result;
}

uint64_t OnScreenContextType.GeneratedClientEntity.clientEntity.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Apple_Parsec_Siri_Context_ClientEntity();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t OnScreenContextType.GeneratedClientEntity.identifier.getter()
{
  v1 = (v0 + *(type metadata accessor for OnScreenContextType.GeneratedClientEntity() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t OnScreenContextType.GeneratedClientEntity.value.getter()
{
  v1 = (v0 + *(type metadata accessor for OnScreenContextType.GeneratedClientEntity() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

int *OnScreenContextType.GeneratedClientEntity.init(clientEntity:identifier:value:score:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v14 = type metadata accessor for Apple_Parsec_Siri_Context_ClientEntity();
  (*(*(v14 - 8) + 32))(a6, a1, v14);
  result = type metadata accessor for OnScreenContextType.GeneratedClientEntity();
  v16 = (a6 + result[5]);
  *v16 = a2;
  v16[1] = a3;
  v17 = (a6 + result[6]);
  *v17 = a4;
  v17[1] = a5;
  *(a6 + result[7]) = a7;
  return result;
}

uint64_t OnScreenContextType.generateClientEntity(context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v119 = a1;
  v114 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v7 = *(v114 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v114, v9);
  v113 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v104 - v14;
  v16 = type metadata accessor for UsoIdentifier();
  v17 = *(*(v16 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v104 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v120) = a3;
  v115 = v19;
  v116 = a4;
  v117 = v21;
  v118 = v22;
  v111 = v7;
  if (a3)
  {
    if (a3 != 1)
    {
      v26 = 0x80000002234D9340;
      v124 = 0xD000000000000011;
      v125 = 0x80000002234D9340;

      UsoIdentifier.init(value:appBundleId:namespace:)();
      v123 = 1.0;
      v39 = type metadata accessor for UsoEntityBuilder_common_AppEntity();
      v40 = *(v39 + 48);
      v41 = *(v39 + 52);
      swift_allocObject();

      v42 = UsoEntityBuilder_common_AppEntity.init()();
      v109 = 0xD000000000000011;
      v31 = v119;
      goto LABEL_28;
    }

    v112 = v15;
    v23 = a2;
    v24 = v120;
    v124 = 0x6E65657263536E6FLL;
    v125 = 0xEB00000000495255;
  }

  else
  {
    v112 = v15;
    v23 = a2;
    v24 = v120;
    v124 = 0xD000000000000013;
    v125 = 0x80000002234D9320;
  }

  MEMORY[0x223DDF6D0](0x6E69616D6F44, 0xE600000000000000);
  v25 = v124;
  v26 = v125;

  v109 = v25;
  UsoIdentifier.init(value:appBundleId:namespace:)();
  v123 = 1.0;
  if (v24 == 1)
  {
    v27 = 0x6E65657263536E6FLL;
  }

  else
  {
    v27 = 0xD000000000000013;
  }

  if (v24 == 1)
  {
    v28 = 0xEB00000000495255;
  }

  else
  {
    v28 = 0x80000002234D9320;
  }

  type metadata accessor for DomainAffinityKVStoreManager();
  v29 = static DomainAffinityKVStoreManager.domainAffinityKVStore(name:)(v27, v28);

  v30 = swift_allocObject();
  *(v30 + 16) = v24;
  v31 = (*(*v29 + 152))(v119, v23, partial apply for implicit closure #2 in implicit closure #1 in OnScreenContextType.generateClientEntity(context:), v30);
  a2 = v32;
  v34 = v33;

  if (!a2)
  {

    v43 = v115;
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    __swift_project_value_buffer(v44, static Logger.pommes);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v121 = v48;
      *v47 = 136315138;
      if (v120)
      {
        v49 = 0x6E65657263536E6FLL;
      }

      else
      {
        v49 = 0xD000000000000013;
      }

      if (v120)
      {
        v50 = 0xEB00000000495255;
      }

      else
      {
        v50 = 0x80000002234D9320;
      }

      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, &v121);

      *(v47 + 4) = v51;
      _os_log_impl(&dword_2232BB000, v45, v46, "[OnScreenContextUtils][%s] Failed to create client entity due to domain affinity translation failure", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v48);
      MEMORY[0x223DE0F80](v48, -1, -1);
      MEMORY[0x223DE0F80](v47, -1, -1);
    }

    (*(v118 + 8))(v117, v43);
    v52 = type metadata accessor for OnScreenContextType.GeneratedClientEntity();
    v53 = *(*(v52 - 8) + 56);
    v54 = v116;
    return v53(v54, 1, 1, v52);
  }

  v123 = v34;
  v16 = v115;
  if (v120)
  {
    v35 = type metadata accessor for UsoEntityBuilder_common_Uri();
    v36 = *(v35 + 48);
    v37 = *(v35 + 52);
    swift_allocObject();
    v38 = UsoEntityBuilder_common_Uri.init()();
  }

  else
  {
    v55 = type metadata accessor for UsoEntityBuilder_common_App();
    v56 = *(v55 + 48);
    v57 = *(v55 + 52);
    swift_allocObject();
    v38 = UsoEntityBuilder_common_App.init()();
  }

  v42 = v38;
  a4 = v116;
  v21 = v117;
  v15 = v112;
LABEL_28:
  v121 = v31;
  v122 = a2;

  dispatch thunk of UsoEntityBuilder.setAsHelper<A>(attributeName:value:)();
  v121 = v31;
  v122 = a2;
  dispatch thunk of UsoEntityBuilder.setAsHelper<A>(attributeName:value:)();

  dispatch thunk of UsoBuilder.addUsoIdentifier(usoIdentifier:)();
  v58 = MEMORY[0x223DDCA80](v42);
  if (!v58)
  {

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v71 = type metadata accessor for Logger();
    __swift_project_value_buffer(v71, static Logger.pommes);
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = v21;
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v121 = v76;
      *v75 = 136315138;
      if (v120)
      {
        if (v120 == 1)
        {
          v77 = 0x6E65657263536E6FLL;
        }

        else
        {
          v77 = 0xD000000000000011;
        }

        if (v120 == 1)
        {
          v78 = 0xEB00000000495255;
        }

        else
        {
          v78 = 0x80000002234D9340;
        }
      }

      else
      {
        v78 = 0x80000002234D9320;
        v77 = 0xD000000000000013;
      }

      v93 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v78, &v121);

      *(v75 + 4) = v93;
      _os_log_impl(&dword_2232BB000, v72, v73, "[OnScreenContextUtils][%s] Failed to create client entity due to USO entity conversion failure", v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v76);
      MEMORY[0x223DE0F80](v76, -1, -1);
      MEMORY[0x223DE0F80](v75, -1, -1);

      (*(v118 + 8))(v74, v16);
    }

    else
    {

      (*(v118 + 8))(v21, v16);
    }

    v52 = type metadata accessor for OnScreenContextType.GeneratedClientEntity();
    v53 = *(*(v52 - 8) + 56);
    v54 = a4;
    return v53(v54, 1, 1, v52);
  }

  v119 = v31;
  v59 = v58;
  v112 = static UsoBuilderConversionUtils.convertEntityToGraph(entity:)();
  v60 = type metadata accessor for UsoBuilderOptions();
  (*(*(v60 - 8) + 56))(v15, 1, 1, v60);
  v108 = v59;
  v61 = static UsoBuilderConversionUtils.convertEntityToRootedEntityGraph(entity:options:)();
  outlined destroy of MediaUserStateCenter?(v15, &_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v62 = type metadata accessor for Logger();
  __swift_project_value_buffer(v62, static Logger.pommes);

  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.debug.getter();
  v65 = v61;
  v66 = v64;
  v110 = v65;

  if (os_log_type_enabled(v63, v66))
  {
    v106 = v26;
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v121 = v68;
    *v67 = 136315394;
    v107 = a2;
    if (v120)
    {
      if (v120 == 1)
      {
        v69 = 0x6E65657263536E6FLL;
      }

      else
      {
        v69 = 0xD000000000000011;
      }

      if (v120 == 1)
      {
        v70 = 0xEB00000000495255;
      }

      else
      {
        v70 = 0x80000002234D9340;
      }
    }

    else
    {
      v70 = 0x80000002234D9320;
      v69 = 0xD000000000000013;
    }

    v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v70, &v121);

    *(v67 + 4) = v79;
    *(v67 + 12) = 2080;
    v80 = static UsoPrintUtils.flattenUsoGraph(graph:printIdentifiers:)();
    v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v81, &v121);

    *(v67 + 14) = v82;
    _os_log_impl(&dword_2232BB000, v63, v66, "[OnScreenContextUtils][%s] Created USO graph for client entity: %s", v67, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE0F80](v68, -1, -1);
    MEMORY[0x223DE0F80](v67, -1, -1);

    v16 = v115;
    a4 = v116;
    a2 = v107;
    v26 = v106;
  }

  else
  {
  }

  v83 = v113;
  static UsoGraphProtoWriter.toSwiftProtobuf(graph:vocabManager:)();
  v84 = v114;
  lazy protocol witness table accessor for type Siri_Nlu_External_UsoGraph and conformance Siri_Nlu_External_UsoGraph(&lazy protocol witness table cache variable for type Siri_Nlu_External_UsoGraph and conformance Siri_Nlu_External_UsoGraph, MEMORY[0x277D5DAD8]);
  v85 = Message.serializedData(partial:)();
  v104 = v86;
  v105 = v85;
  (*(v111 + 8))(v83, v84);
  v87 = Logger.logObject.getter();
  v88 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v87, v88))
  {
    v106 = v26;
    v89 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v121 = v90;
    *v89 = 136315138;
    v107 = a2;
    if (v120)
    {
      if (v120 == 1)
      {
        v91 = 0x6E65657263536E6FLL;
      }

      else
      {
        v91 = 0xD000000000000011;
      }

      if (v120 == 1)
      {
        v92 = 0xEB00000000495255;
      }

      else
      {
        v92 = 0x80000002234D9340;
      }
    }

    else
    {
      v92 = 0x80000002234D9320;
      v91 = 0xD000000000000013;
    }

    v95 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v92, &v121);

    *(v89 + 4) = v95;
    _os_log_impl(&dword_2232BB000, v87, v88, "[OnScreenContextUtils][%s] Successfully created client entity", v89, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v90);
    MEMORY[0x223DE0F80](v90, -1, -1);
    MEMORY[0x223DE0F80](v89, -1, -1);

    v16 = v115;
    a4 = v116;
    a2 = v107;
    v26 = v106;
  }

  else
  {
  }

  v96 = type metadata accessor for Apple_Parsec_Siri_Context_ClientEntity();
  v120 = &v104;
  MEMORY[0x28223BE20](v96, v97);
  v98 = v105;
  v99 = v104;
  *(&v104 - 4) = v105;
  *(&v104 - 3) = v99;
  *(&v104 - 2) = &v123;
  lazy protocol witness table accessor for type Siri_Nlu_External_UsoGraph and conformance Siri_Nlu_External_UsoGraph(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_Context_ClientEntity and conformance Apple_Parsec_Siri_Context_ClientEntity, MEMORY[0x277D39438]);
  static Message.with(_:)();

  outlined consume of Data._Representation(v98, v99);

  (*(v118 + 8))(v117, v16);
  v100 = v123;
  v101 = type metadata accessor for OnScreenContextType.GeneratedClientEntity();
  v102 = (a4 + v101[5]);
  *v102 = v109;
  v102[1] = v26;
  v103 = (a4 + v101[6]);
  *v103 = v119;
  v103[1] = a2;
  *(a4 + v101[7]) = v100;
  return (*(*(v101 - 1) + 56))(a4, 0, 1, v101);
}

uint64_t OnScreenContextType.parseClientEntity(clientEntity:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v75) = a2;
  v76 = a3;
  v4 = type metadata accessor for BinaryDecodingOptions();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v68 - v10;
  v12 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI38Apple_Parsec_Siri_Context_ClientEntityVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_Context_ClientEntityVSgMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8, v20);
  v22 = &v68 - v21;
  v23 = type metadata accessor for Apple_Parsec_Siri_Context_ClientEntity();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23, v26);
  v28 = &v68 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Parsec_Siri_Context_ClientEntity?(a1, v22);
  if ((*(v24 + 48))(v22, 1, v23) != 1)
  {
    (*(v24 + 32))(v28, v22, v23);
    v79 = Apple_Parsec_Siri_Context_ClientEntity.usoGraph.getter();
    v80 = v29;
    v78 = 0;
    memset(v77, 0, sizeof(v77));
    BinaryDecodingOptions.init()();
    lazy protocol witness table accessor for type Siri_Nlu_External_UsoGraph and conformance Siri_Nlu_External_UsoGraph(&lazy protocol witness table cache variable for type Siri_Nlu_External_UsoGraph and conformance Siri_Nlu_External_UsoGraph, MEMORY[0x277D5DAD8]);
    Message.init<A>(contiguousBytes:extensions:partial:options:)();
    (*(v13 + 56))(v11, 0, 1, v12);
    (*(v13 + 32))(v17, v11, v12);
    v74 = static UsoGraphProtoReader.fromSwiftProtobuf(protobufGraph:vocabManager:)();
    if (static UsoConversionUtils.extractFirstEntityFromGraph(graph:)())
    {
      v40 = UsoEntity.attributes.getter();
      if (*(v40 + 16))
      {
        v41 = specialized __RawDictionaryStorage.find<A>(_:)(1701667182, 0xE400000000000000, MEMORY[0x277D83758], specialized __RawDictionaryStorage.find<A>(_:hashValue:));
        if (v42)
        {
          v43 = *(*(v40 + 56) + 8 * v41);

          if ((v43 & 0xC000000000000001) != 0)
          {
            v44 = MEMORY[0x223DDFF80](0, v43);
          }

          else
          {
            if (!*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_45;
            }

            v44 = *(v43 + 32);
          }

          v45 = UsoEntity.attributes.getter();
          if (*(v45 + 16))
          {
            v46 = specialized __RawDictionaryStorage.find<A>(_:)(0x65756C6176, 0xE500000000000000, MEMORY[0x277D83758], specialized __RawDictionaryStorage.find<A>(_:hashValue:));
            if (v47)
            {
              v73 = v44;
              v40 = *(*(v45 + 56) + 8 * v46);

              if ((v40 & 0xC000000000000001) == 0)
              {
                if (!*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
LABEL_47:
                  __break(1u);
                  return result;
                }

                v69 = *(v40 + 32);

LABEL_28:

                if (one-time initialization token for pommes != -1)
                {
                  swift_once();
                }

                v48 = type metadata accessor for Logger();
                __swift_project_value_buffer(v48, static Logger.pommes);
                v49 = Logger.logObject.getter();
                v50 = static os_log_type_t.debug.getter();
                if (os_log_type_enabled(v49, v50))
                {
                  v51 = swift_slowAlloc();
                  v52 = swift_slowAlloc();
                  *&v77[0] = v52;
                  *v51 = 136315138;
                  v72 = v51;
                  LODWORD(v71) = v50;
                  v70 = v52;
                  if (v75)
                  {
                    if (v75 == 1)
                    {
                      v53 = 0x6E65657263536E6FLL;
                      v54 = 0xEB00000000495255;
                    }

                    else
                    {
                      v53 = 0xD000000000000011;
                      v54 = 0x80000002234D9340;
                    }
                  }

                  else
                  {
                    v54 = 0x80000002234D9320;
                    v53 = 0xD000000000000013;
                  }

                  v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, v77);

                  v56 = v72;
                  *(v72 + 1) = v55;
                  _os_log_impl(&dword_2232BB000, v49, v71, "[OnScreenContextUtils][%s] Successfully parsed client entity", v56, 0xCu);
                  v57 = v70;
                  __swift_destroy_boxed_opaque_existential_1(v70);
                  MEMORY[0x223DE0F80](v57, -1, -1);
                  MEMORY[0x223DE0F80](v56, -1, -1);
                }

                v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierV03usoD0_AA0C5ValueC0E13NameAttributeAF0efH0Sd5scoretMd, &_s12SiriOntology13UsoIdentifierV03usoD0_AA0C5ValueC0E13NameAttributeAF0efH0Sd5scoretMR);
                v59 = v58[12];
                v70 = v58[16];
                v71 = v59;
                v75 = v58;
                v72 = v58[20];
                result = UsoEntity.usoIdentifiers.getter();
                if (*(result + 16))
                {
                  v60 = result;
                  v61 = type metadata accessor for UsoIdentifier();
                  v62 = v76;
                  (*(*(v61 - 8) + 16))(v76, v60 + ((*(*(v61 - 8) + 80) + 32) & ~*(*(v61 - 8) + 80)), v61);

                  v63 = v70;
                  *(v62 + v71) = v73;
                  *(v63 + v62) = v69;

                  Apple_Parsec_Siri_Context_ClientEntity.score.getter();
                  v65 = v64;

                  (*(v13 + 8))(v17, v12);
                  (*(v24 + 8))(v28, v23);
                  v67 = v75;
                  v66 = v76;
                  *(v72 + v76) = v65;
                  return (*(*(v67 - 1) + 56))(v66, 0, 1, v67);
                }

                __break(1u);
                goto LABEL_47;
              }

LABEL_45:
              v69 = MEMORY[0x223DDFF80](0, v40);
              goto LABEL_28;
            }
          }
        }
      }
    }

    (*(v13 + 8))(v17, v12);
    (*(v24 + 8))(v28, v23);
    goto LABEL_4;
  }

  outlined destroy of MediaUserStateCenter?(v22, &_s10PegasusAPI38Apple_Parsec_Siri_Context_ClientEntityVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_Context_ClientEntityVSgMR);
LABEL_4:
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  __swift_project_value_buffer(v30, static Logger.pommes);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *&v77[0] = v34;
    *v33 = 136315138;
    if (v75)
    {
      if (v75 == 1)
      {
        v35 = 0x6E65657263536E6FLL;
      }

      else
      {
        v35 = 0xD000000000000011;
      }

      if (v75 == 1)
      {
        v36 = 0xEB00000000495255;
      }

      else
      {
        v36 = 0x80000002234D9340;
      }
    }

    else
    {
      v36 = 0x80000002234D9320;
      v35 = 0xD000000000000013;
    }

    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, v77);

    *(v33 + 4) = v37;
    _os_log_impl(&dword_2232BB000, v31, v32, "[OnScreenContextUtils][%s] Failed to parse client entity", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v34);
    MEMORY[0x223DE0F80](v34, -1, -1);
    MEMORY[0x223DE0F80](v33, -1, -1);
  }

  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierV03usoD0_AA0C5ValueC0E13NameAttributeAF0efH0Sd5scoretMd, &_s12SiriOntology13UsoIdentifierV03usoD0_AA0C5ValueC0E13NameAttributeAF0efH0Sd5scoretMR);
  return (*(*(v38 - 8) + 56))(v76, 1, 1, v38);
}