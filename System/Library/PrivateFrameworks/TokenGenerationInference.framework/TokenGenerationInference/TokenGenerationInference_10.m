void sub_2209DD7B8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x2209DD7C0);
  }

  _Unwind_Resume(a1);
}

void _s24TokenGenerationInference15AppAssetManagerC10identifier14cacheDirectory09temporaryI09container22adapterWeightsFileNameACSS_10Foundation3URLVAkA0D9Container33_568BE640AB36247B38BDDCAC53FE0F70LLCSgSStcAMLlfcySDySSSiGzYuYTXEfU_(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v6 = *a1;
  if (!*(*a1 + 16))
  {
    goto LABEL_6;
  }

  v7 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(*(v6 + 56) + 8 * v7);
  v10 = v9 + 1;
  if (__OFADD__(v9, 1))
  {
    __break(1u);
LABEL_6:
    v9 = 0;
    v10 = 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *a1;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, a2, a3, isUniquelyReferenced_nonNull_native);
  *a1 = v17;
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Log.device);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = v16;
    *v15 = 136446722;
    *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v17);
    *(v15 + 12) = 2050;
    *(v15 + 14) = v9;
    *(v15 + 22) = 2050;
    *(v15 + 24) = v10;
    _os_log_impl(&dword_220940000, v13, v14, "AppAssetManager reference count for %{public}s incremented from %{public}ld to %{public}ld", v15, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x223D90A10](v16, -1, -1);
    MEMORY[0x223D90A10](v15, -1, -1);
  }
}

uint64_t AppAssetManager.deinit()
{
  if (one-time initialization token for assetBundlesInUse != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&static AppAssetManager.assetBundlesInUse);
  _s24TokenGenerationInference15AppAssetManagerCfdySDySSSiGzYuYTXEfU_(&qword_27CF6DD88, v0);
  os_unfair_lock_unlock(&static AppAssetManager.assetBundlesInUse);
  v1 = OBJC_IVAR____TtC24TokenGenerationInference15AppAssetManager_cacheDirectory;
  v2 = type metadata accessor for URL();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC24TokenGenerationInference15AppAssetManager_temporaryDirectory, v2);

  return v0;
}

void _s24TokenGenerationInference15AppAssetManagerCfdySDySSSiGzYuYTXEfU_(uint64_t *a1, uint64_t a2)
{
  v68[1] = *MEMORY[0x277D85DE8];
  v62 = type metadata accessor for URL();
  v8 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v65 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  if (!*(*a1 + 16))
  {
    __break(1u);
    goto LABEL_22;
  }

  v11 = *(a2 + OBJC_IVAR____TtC24TokenGenerationInference15AppAssetManager_identifier);
  v4 = *(a2 + OBJC_IVAR____TtC24TokenGenerationInference15AppAssetManager_identifier + 8);
  v12 = specialized __RawDictionaryStorage.find<A>(_:)(v11, v4);
  if ((v13 & 1) == 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v63 = v2;
  v3 = *(*(v10 + 56) + 8 * v12);
  v5 = v3 - 1;
  if (!__OFSUB__(v3, 1))
  {
    v66 = a2;
    v61 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v68[0] = *a1;
    v64 = v11;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v3 - 1, v11, v4, isUniquelyReferenced_nonNull_native);
    *a1 = v68[0];
    if (one-time initialization token for device == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  swift_once();
LABEL_5:
  v15 = type metadata accessor for Logger();
  v16 = __swift_project_value_buffer(v15, static Log.device);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v68[0] = v20;
    *v19 = 136446722;
    *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v4, v68);
    *(v19 + 12) = 2050;
    *(v19 + 14) = v3;
    *(v19 + 22) = 2050;
    *(v19 + 24) = v5;
    _os_log_impl(&dword_220940000, v17, v18, "AppAssetManager reference count for %{public}s decremented from %{public}ld to %{public}ld", v19, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x223D90A10](v20, -1, -1);
    MEMORY[0x223D90A10](v19, -1, -1);
  }

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();

  v23 = os_log_type_enabled(v21, v22);
  v24 = v64;
  if (v5)
  {
    if (v23)
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v68[0] = v26;
      *v25 = 136446466;
      *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v4, v68);
      *(v25 + 12) = 2080;
      v67 = type metadata accessor for AppAssetManager(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference15AppAssetManagerCmMd);
      v27 = String.init<A>(describing:)();
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, v68);

      *(v25 + 14) = v29;
      _os_log_impl(&dword_220940000, v21, v22, "Not cleaning up temporary files for %{public}s because another %s is still using them", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D90A10](v26, -1, -1);
      MEMORY[0x223D90A10](v25, -1, -1);
    }
  }

  else
  {
    v60 = v16;
    if (v23)
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v68[0] = v31;
      *v30 = 136446210;
      *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v4, v68);
      _os_log_impl(&dword_220940000, v21, v22, "Deleting temporary files for asset bundle identifier: %{public}s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x223D90A10](v31, -1, -1);
      MEMORY[0x223D90A10](v30, -1, -1);
    }

    v64 = OBJC_IVAR____TtC24TokenGenerationInference15AppAssetManager_temporaryDirectory;
    URL.appendingPathComponent(_:)();
    v32 = objc_opt_self();
    v33 = [v32 defaultManager];
    countAndFlagsBits = URL.path(percentEncoded:)(1)._countAndFlagsBits;
    v35 = MEMORY[0x223D8E6B0](countAndFlagsBits);

    v36 = [v33 fileExistsAtPath_];

    isa = v61[1].isa;
    (isa)(v65, v62);
    if (v36)
    {
      v38 = [v32 defaultManager];
      URL.appendingPathComponent(_:)();
      URL._bridgeToObjectiveC()(v39);
      v41 = v40;
      (isa)(v65, v62);
      v68[0] = 0;
      v42 = [v38 removeItemAtURL:v41 error:v68];

      if (v42)
      {
        v43 = v68[0];
      }

      else
      {
        v44 = v68[0];
        v45 = _convertNSErrorToError(_:)();

        swift_willThrow();

        v46 = v45;
        v61 = Logger.logObject.getter();
        LODWORD(v60) = static os_log_type_t.error.getter();
        v63 = 0;

        v47 = v61;
        if (os_log_type_enabled(v61, v60))
        {
          v48 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          v68[0] = v59;
          *v48 = 136315394;
          URL.appendingPathComponent(_:)();
          lazy protocol witness table accessor for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
          v49 = dispatch thunk of CustomStringConvertible.description.getter();
          v51 = v50;
          (isa)(v65, v62);
          v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, v68);

          *(v48 + 4) = v52;
          *(v48 + 12) = 2114;
          v53 = v45;
          v54 = _swift_stdlib_bridgeErrorToNSError();
          *(v48 + 14) = v54;
          v55 = v58;
          *v58 = v54;
          v56 = v61;
          _os_log_impl(&dword_220940000, v61, v60, "Failed to cleanup temporary file %s: %{public}@", v48, 0x16u);
          outlined destroy of [Int](v55, &_sSo8NSObjectCSgMd);
          MEMORY[0x223D90A10](v55, -1, -1);
          v57 = v59;
          __swift_destroy_boxed_opaque_existential_1(v59);
          MEMORY[0x223D90A10](v57, -1, -1);
          MEMORY[0x223D90A10](v48, -1, -1);
        }

        else
        {
        }
      }
    }
  }
}

void sub_2209DE2F0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x2209DE2F8);
  }

  _Unwind_Resume(a1);
}

uint64_t AppAssetManager.__deallocating_deinit()
{
  AppAssetManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata completion function for AppAssetManager()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t AppAssetManager.draftWeightsURL.getter@<X0>(void *a1@<X0>, void (*a2)(uint64_t *, char *, void, unint64_t)@<X1>, uint64_t a3@<X8>)
{
  v21 = a3;
  v22 = a2;
  v18 = a1;
  v4 = type metadata accessor for URL.DirectoryHint();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v19 = *(v8 - 8);
  v20 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = 0x7466617264;
  v24 = 0xE500000000000000;
  v11 = *(v5 + 104);
  v11(v7, *MEMORY[0x277CC91C0], v4);
  v12 = lazy protocol witness table accessor for type String and conformance String();
  URL.appending<A>(component:directoryHint:)();
  v13 = *(v5 + 8);
  v13(v7, v4);
  v14 = (v3 + *v18);
  v15 = v14[1];
  v23 = *v14;
  v24 = v15;
  v11(v7, *MEMORY[0x277CC91D8], v4);

  v22(&v23, v7, MEMORY[0x277D837D0], v12);
  v13(v7, v4);

  return (*(v19 + 8))(v10, v20);
}

id AppAssetManager.createCacheDirectoryIfNeeded()()
{
  v16[2] = *MEMORY[0x277D85DE8];
  v0 = type metadata accessor for URL.DirectoryHint();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v16[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() defaultManager];
  v15 = v4;
  v9 = v8;
  v16[0] = 0x7466617264;
  v16[1] = 0xE500000000000000;
  (*(v1 + 104))(v3, *MEMORY[0x277CC91C0], v0);
  lazy protocol witness table accessor for type String and conformance String();
  URL.appending<A>(component:directoryHint:)();
  (*(v1 + 8))(v3, v0);
  URL._bridgeToObjectiveC()(v10);
  v12 = v11;
  (*(v5 + 8))(v7, v15);
  v16[0] = 0;
  LOBYTE(v0) = [v9 createDirectoryAtURL:v12 withIntermediateDirectories:1 attributes:0 error:v16];

  if (v0)
  {
    return v16[0];
  }

  v14 = v16[0];
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

void sub_2209DE96C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x2209DE974);
  }

  _Unwind_Resume(a1);
}

id AppAssetManager.createTemporaryDirectoryIfNeeded()()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(OBJC_IVAR____TtC24TokenGenerationInference15AppAssetManager_temporaryDirectory);
  v2 = v1;
  v6[0] = 0;
  v3 = [v0 createDirectoryAtURL:v1 withIntermediateDirectories:1 attributes:0 error:v6];

  if (v3)
  {
    return v6[0];
  }

  v5 = v6[0];
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

void sub_2209DEA78(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x2209DEA80);
  }

  _Unwind_Resume(a1);
}

uint64_t AppAssetManager.copyAssetsIfNeeded(metadata:adapterWeights:draftMIL:draftWeights:)@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v162 = a3;
  v163 = a4;
  LODWORD(v164) = a2;
  LODWORD(v166) = a1;
  v161 = a5;
  v171 = type metadata accessor for TokenGenerationError.Context();
  v170 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v169 = v149 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v160 = v149 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v165 = v149 - v11;
  v12 = type metadata accessor for URL();
  v167 = *(v12 - 8);
  v168 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v159 = v149 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v149 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v149 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = v149 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = v149 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = v149 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v32 = v149 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = v149 - v33;
  AppAssetManager.createCacheDirectoryIfNeeded()();
  if (v6)
  {
    v35 = v171;
    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v132 = type metadata accessor for Logger();
    __swift_project_value_buffer(v132, static Log.device);
    v133 = v6;
    v134 = Logger.logObject.getter();
    v135 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v134, v135))
    {
      v136 = swift_slowAlloc();
      v137 = swift_slowAlloc();
      *v136 = 138412290;
      v138 = v6;
      v139 = _swift_stdlib_bridgeErrorToNSError();
      *(v136 + 4) = v139;
      *v137 = v139;
      _os_log_impl(&dword_220940000, v134, v135, "Failed to copy an adapter asset: %@", v136, 0xCu);
      outlined destroy of [Int](v137, &_sSo8NSObjectCSgMd);
      MEMORY[0x223D90A10](v137, -1, -1);
      MEMORY[0x223D90A10](v136, -1, -1);
    }

    v140 = v6;
    v141 = v169;
    TokenGenerationError.Context.init(debugDescription:underlyingError:)();
    v142 = type metadata accessor for TokenGenerationError();
    lazy protocol witness table accessor for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, MEMORY[0x277D71B08]);
    swift_allocError();
    v144 = v143;
    v145 = v170;
    (*(v170 + 16))(v143, v141, v35);
    (*(*(v142 - 8) + 104))(v144, *MEMORY[0x277D71AF0], v142);
    swift_willThrow();

    return (*(v145 + 8))(v141, v35);
  }

  else
  {
    v156 = v32;
    v153 = v20;
    v154 = v29;
    v150 = v23;
    v151 = v26;
    v152 = v17;
    v158 = v34;
    v36 = v168;
    AppAssetManager.createTemporaryDirectoryIfNeeded()();
    v37 = v5;
    v38 = OBJC_IVAR____TtC24TokenGenerationInference15AppAssetManager_cacheDirectory;
    v39 = v158;
    URL.appendingPathComponent(_:)();
    v155 = objc_opt_self();
    v40 = [v155 defaultManager];
    countAndFlagsBits = URL.path(percentEncoded:)(1)._countAndFlagsBits;
    v42 = MEMORY[0x223D8E6B0](countAndFlagsBits);

    v43 = [v40 fileExistsAtPath_];

    v44 = v167 + 8;
    v157 = *(v167 + 8);
    v157(v39, v36);
    if (v43)
    {
      v45 = v38;
      if (one-time initialization token for device != -1)
      {
        swift_once();
      }

      v46 = type metadata accessor for Logger();
      __swift_project_value_buffer(v46, static Log.device);
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_220940000, v47, v48, "Adapter metadata has already been copied. Skipping.", v49, 2u);
        MEMORY[0x223D90A10](v49, -1, -1);
      }

      v38 = v45;
    }

    else
    {
      if (one-time initialization token for device != -1)
      {
        swift_once();
      }

      v50 = type metadata accessor for Logger();
      __swift_project_value_buffer(v50, static Log.device);
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.debug.getter();
      v53 = os_log_type_enabled(v51, v52);
      v54 = v166;
      if (v53)
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&dword_220940000, v51, v52, "Copying metadata.", v55, 2u);
        MEMORY[0x223D90A10](v55, -1, -1);
      }

      v56 = v156;
      URL.appendingPathComponent(_:)();
      specialized AppAssetManager.copyContents(of:to:)(v54, v56);
      v157(v56, v168);
    }

    v58 = *(v37 + OBJC_IVAR____TtC24TokenGenerationInference15AppAssetManager_adapterWeightsFileName);
    v57 = *(v37 + OBJC_IVAR____TtC24TokenGenerationInference15AppAssetManager_adapterWeightsFileName + 8);
    v149[1] = v38;
    v156 = v57;
    URL.appendingPathComponent(_:)();
    v59 = [v155 defaultManager];
    v60 = URL.path(percentEncoded:)(1)._countAndFlagsBits;
    v61 = MEMORY[0x223D8E6B0](v60);

    v62 = [v59 fileExistsAtPath_];

    v157(v39, v168);
    if (v62)
    {
      v164 = v58;
      if (one-time initialization token for device != -1)
      {
        swift_once();
      }

      v63 = type metadata accessor for Logger();
      __swift_project_value_buffer(v63, static Log.device);
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        *v66 = 0;
        _os_log_impl(&dword_220940000, v64, v65, "Adapter weights have already been copied. Skipping.", v66, 2u);
        v67 = v66;
        v39 = v158;
        MEMORY[0x223D90A10](v67, -1, -1);
      }
    }

    else
    {
      if (one-time initialization token for device != -1)
      {
        swift_once();
      }

      v68 = type metadata accessor for Logger();
      __swift_project_value_buffer(v68, static Log.device);
      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        *v71 = 0;
        _os_log_impl(&dword_220940000, v69, v70, "Copying adapter weights.", v71, 2u);
        MEMORY[0x223D90A10](v71, -1, -1);
      }

      v72 = v154;
      URL.appendingPathComponent(_:)();
      specialized AppAssetManager.copyContents(of:to:)(v164, v72);
      v164 = v58;
      v157(v72, v168);
    }

    AppAssetManager.draftWeightsURL.getter(v39);
    v73 = [v155 defaultManager];
    v74 = URL.path(percentEncoded:)(1)._countAndFlagsBits;
    v75 = v39;
    v76 = MEMORY[0x223D8E6B0](v74);

    v77 = [v73 fileExistsAtPath_];

    v171 = v44;
    v78 = v157;
    v157(v75, v168);
    v79 = v78;
    v166 = v37;
    if (v77)
    {
      if (one-time initialization token for device != -1)
      {
        swift_once();
      }

      v80 = type metadata accessor for Logger();
      __swift_project_value_buffer(v80, static Log.device);
      v81 = Logger.logObject.getter();
      v82 = static os_log_type_t.debug.getter();
      v83 = os_log_type_enabled(v81, v82);
      v84 = v158;
      v85 = v168;
      if (v83)
      {
        v86 = swift_slowAlloc();
        *v86 = 0;
        _os_log_impl(&dword_220940000, v81, v82, "Draft weights have already been copied. Skipping.", v86, 2u);
        MEMORY[0x223D90A10](v86, -1, -1);
      }
    }

    else
    {
      v87 = v163;
      if ((v163 & 0x100000000) != 0)
      {
        v84 = v158;
        v85 = v168;
      }

      else
      {
        if (one-time initialization token for device != -1)
        {
          swift_once();
        }

        v88 = type metadata accessor for Logger();
        __swift_project_value_buffer(v88, static Log.device);
        v89 = Logger.logObject.getter();
        v90 = static os_log_type_t.debug.getter();
        v91 = os_log_type_enabled(v89, v90);
        v85 = v168;
        if (v91)
        {
          v92 = swift_slowAlloc();
          *v92 = 0;
          _os_log_impl(&dword_220940000, v89, v90, "Copying draft weights.", v92, 2u);
          MEMORY[0x223D90A10](v92, -1, -1);
        }

        v93 = v151;
        AppAssetManager.draftWeightsURL.getter(v151);
        specialized AppAssetManager.copyContents(of:to:)(v87, v93);
        v84 = v158;
        v79(v93, v85);
      }
    }

    AppAssetManager.draftMILURL.getter(v84);
    v94 = [v155 defaultManager];
    v95 = URL.path(percentEncoded:)(1)._countAndFlagsBits;
    v96 = MEMORY[0x223D8E6B0](v95);

    v97 = [v94 fileExistsAtPath_];

    v79(v84, v85);
    if (v97)
    {
      if (one-time initialization token for device != -1)
      {
        swift_once();
      }

      v98 = type metadata accessor for Logger();
      __swift_project_value_buffer(v98, static Log.device);
      v99 = Logger.logObject.getter();
      v100 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v99, v100))
      {
        v101 = swift_slowAlloc();
        *v101 = 0;
        _os_log_impl(&dword_220940000, v99, v100, "Draft MIL has already been copied. Skipping.", v101, 2u);
        MEMORY[0x223D90A10](v101, -1, -1);
      }
    }

    else
    {
      v102 = v162;
      if ((v162 & 0x100000000) == 0)
      {
        if (one-time initialization token for device != -1)
        {
          swift_once();
        }

        v103 = type metadata accessor for Logger();
        __swift_project_value_buffer(v103, static Log.device);
        v104 = Logger.logObject.getter();
        v105 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v104, v105))
        {
          v106 = swift_slowAlloc();
          *v106 = 0;
          _os_log_impl(&dword_220940000, v104, v105, "Copying draft MIL.", v106, 2u);
          MEMORY[0x223D90A10](v106, -1, -1);
        }

        v107 = v150;
        AppAssetManager.draftMILURL.getter(v150);
        specialized AppAssetManager.copyContents(of:to:)(v102, v107);
        v79(v107, v85);
      }
    }

    v108 = v158;
    URL.appendingPathComponent(_:)();
    v109 = [v155 defaultManager];
    v110 = URL.path(percentEncoded:)(1)._countAndFlagsBits;
    v111 = MEMORY[0x223D8E6B0](v110);

    v112 = [v109 fileExistsAtPath_];

    v79(v108, v85);
    if (v112)
    {
      if (one-time initialization token for device != -1)
      {
        swift_once();
      }

      v113 = type metadata accessor for Logger();
      __swift_project_value_buffer(v113, static Log.device);
      v114 = Logger.logObject.getter();
      v115 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v114, v115))
      {
        v116 = swift_slowAlloc();
        *v116 = 0;
        _os_log_impl(&dword_220940000, v114, v115, "Adapter weights have already been cloned. Skipping.", v116, 2u);
        MEMORY[0x223D90A10](v116, -1, -1);
      }
    }

    else
    {
      if (one-time initialization token for device != -1)
      {
        swift_once();
      }

      v117 = type metadata accessor for Logger();
      __swift_project_value_buffer(v117, static Log.device);
      v118 = Logger.logObject.getter();
      v119 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v118, v119))
      {
        v120 = swift_slowAlloc();
        *v120 = 0;
        _os_log_impl(&dword_220940000, v118, v119, "Cloning adapter weights.", v120, 2u);
        MEMORY[0x223D90A10](v120, -1, -1);
      }

      v121 = v153;
      URL.appendingPathComponent(_:)();
      v122 = v152;
      URL.appendingPathComponent(_:)();
      specialized AppAssetManager.cloneFile(from:to:)();
      v79 = v157;
      v157(v122, v85);
      v79(v121, v85);
    }

    v123 = *(v167 + 56);
    v167 += 56;
    v123(v165, 1, 1, v85);
    v124 = v158;
    AppAssetManager.draftMILURL.getter(v158);
    v125 = [v155 defaultManager];
    v126 = URL.path(percentEncoded:)(1)._countAndFlagsBits;
    v127 = MEMORY[0x223D8E6B0](v126);

    v128 = [v125 fileExistsAtPath_];

    v79(v124, v85);
    if (!v128)
    {
      return outlined init with take of URL?(v165, v161);
    }

    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v129 = v159;
    AppAssetManager.draftMILURL.getter(v159);
    specialized DraftModelCompiler.pathToCompiledDraftModel(mil:)();
    v131 = v160;
    v147 = v130;
    v79(v129, v85);
    if (v147)
    {
      URL.init(fileURLWithPath:)();

      v148 = v165;
      outlined destroy of [Int](v165, &_s10Foundation3URLVSgMd);
      v123(v131, 0, 1, v85);
      outlined init with take of URL?(v131, v148);
      return outlined init with take of URL?(v148, v161);
    }

    else
    {
      return outlined init with take of URL?(v165, v161);
    }
  }
}

uint64_t DraftModelCompiler.findCompiledDraftPathOrBeginCompilation(mil:identifier:appAssetManager:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = v5;
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Log.device);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v28 = v5;
    v26 = a4;
    v14 = swift_slowAlloc();
    v15 = a1;
    v16 = swift_slowAlloc();
    v27 = v16;
    *v14 = 136446210;
    *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v27);
    _os_log_impl(&dword_220940000, v12, v13, "Compiling draft model if needed for asset: %{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    v17 = v16;
    a1 = v15;
    MEMORY[0x223D90A10](v17, -1, -1);
    v18 = v14;
    a4 = v26;
    v6 = v28;
    MEMORY[0x223D90A10](v18, -1, -1);
  }

  os_unfair_lock_lock((v4 + 16));
  if (specialized Set.contains(_:)(a2, a3, *(v4 + 24)))
  {
    os_unfair_lock_unlock((v4 + 16));
    v12 = 0;
  }

  else
  {
    v22 = specialized DraftModelCompiler.pathToCompiledDraftModel(mil:)();
    if (v6)
    {
      os_unfair_lock_unlock((v4 + 16));
      return v12;
    }

    if (!v23)
    {

      specialized Set._Variant.insert(_:)(&v27, a2, a3);

      os_unfair_lock_unlock((v4 + 16));
      return DraftModelCompiler.startDraftModelCompilation(mil:identifier:appAssetManager:)(a1, a2, a3, a4);
    }

    v12 = v22;
    v25 = v23;
    os_unfair_lock_unlock((v4 + 16));
    if (v25 != 1)
    {
      return v12;
    }
  }

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_220940000, v19, v20, "Draft model already in the process of compiling. Skipping.", v21, 2u);
    MEMORY[0x223D90A10](v21, -1, -1);

    outlined consume of StartState #1 in DraftModelCompiler.findCompiledDraftPathOrBeginCompilation(mil:identifier:appAssetManager:)(v12, 1uLL);
  }

  else
  {
  }

  return 0;
}

uint64_t closure #1 in AppAssetManager.copyContents(of:to:)()
{
  v0 = FileDescriptor._seek(offset:from:)();
  if (v1)
  {
    v2 = v0;
    lazy protocol witness table accessor for type Errno and conformance Errno();
    swift_willThrowTypedImpl();
    result = swift_allocError();
    *v4 = v2;
  }

  else
  {
    URL.path(percentEncoded:)(1);
    String.utf8CString.getter();

    v5 = static FileDescriptor._open(_:_:options:permissions:retryOnInterrupt:)();
    v6 = v5;
    if ((v5 & 0x100000000) != 0)
    {
      lazy protocol witness table accessor for type Errno and conformance Errno();
      swift_willThrowTypedImpl();
      swift_allocError();
      *v8 = v6;
    }

    else
    {

      MEMORY[0x28223BE20](v7);
      return FileDescriptor.closeAfter<A>(_:)();
    }
  }

  return result;
}

uint64_t closure #1 in closure #1 in AppAssetManager.copyContents(of:to:)()
{
  type metadata accessor for __DataStorage();
  swift_allocObject();
  v1[0] = 0x100000000000;
  v1[1] = __DataStorage.init(length:)();
  specialized Data.InlineSlice.withUnsafeMutableBytes<A>(_:)(v1);
}

uint64_t AppAssetGarbageCollector.Manifest.Entry.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = type metadata accessor for Date();
  v16 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v19 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24TokenGenerationInference24AppAssetGarbageCollectorV8ManifestV5EntryV10CodingKeys33_568BE640AB36247B38BDDCAC53FE0F70LLOGMd);
  v17 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for AppAssetGarbageCollector.Manifest.Entry(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AppAssetGarbageCollector.Manifest.Entry.CodingKeys and conformance AppAssetGarbageCollector.Manifest.Entry.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v12 = v16;
    v13 = v18;
    lazy protocol witness table accessor for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v17 + 8))(v8, v6);
    (*(v12 + 32))(v11, v19, v4);
    outlined init with take of AppAssetGarbageCollector(v11, v13, type metadata accessor for AppAssetGarbageCollector.Manifest.Entry);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t AppAssetGarbageCollector.Manifest.encode(to:)(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24TokenGenerationInference24AppAssetGarbageCollectorV8ManifestV10CodingKeys33_568BE640AB36247B38BDDCAC53FE0F70LLOGMd);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AppAssetGarbageCollector.Manifest.CodingKeys and conformance AppAssetGarbageCollector.Manifest.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS24TokenGenerationInference24AppAssetGarbageCollectorV8ManifestV5EntryVGMd);
  lazy protocol witness table accessor for type [String : AppAssetGarbageCollector.Manifest.Entry] and conformance <> [A : B]();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AppAssetGarbageCollector.Manifest.Entry.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656363417473616CLL && a2 == 0xEC00000064657373)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppAssetGarbageCollector.Manifest.Entry.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppAssetGarbageCollector.Manifest.Entry.CodingKeys and conformance AppAssetGarbageCollector.Manifest.Entry.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppAssetGarbageCollector.Manifest.Entry.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppAssetGarbageCollector.Manifest.Entry.CodingKeys and conformance AppAssetGarbageCollector.Manifest.Entry.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance AppAssetGarbageCollector.Manifest.Entry(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24TokenGenerationInference24AppAssetGarbageCollectorV8ManifestV5EntryV10CodingKeys33_568BE640AB36247B38BDDCAC53FE0F70LLOGMd);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AppAssetGarbageCollector.Manifest.Entry.CodingKeys and conformance AppAssetGarbageCollector.Manifest.Entry.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for Date();
  lazy protocol witness table accessor for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AppAssetGarbageCollector.Manifest.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73656972746E65 && a2 == 0xE700000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppAssetGarbageCollector.Manifest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppAssetGarbageCollector.Manifest.CodingKeys and conformance AppAssetGarbageCollector.Manifest.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppAssetGarbageCollector.Manifest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppAssetGarbageCollector.Manifest.CodingKeys and conformance AppAssetGarbageCollector.Manifest.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void *protocol witness for Decodable.init(from:) in conformance AppAssetGarbageCollector.Manifest@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = specialized AppAssetGarbageCollector.Manifest.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t AppAssetGarbageCollector.removeEntry(url:)(uint64_t a1)
{
  v47[1] = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for JSONEncoder.OutputFormatting();
  v3 = *(v2 - 1);
  v42[2] = v2;
  v42[3] = v3;
  MEMORY[0x28223BE20](v2);
  v44 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference24AppAssetGarbageCollectorV8ManifestV5EntryVSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v43 = v42 - v6;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Log.device);
  v12 = *(v8 + 16);
  v46 = a1;
  v12(v10, a1, v7);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v47[0] = v16;
    v42[0] = v15;
    *v15 = 136315138;
    lazy protocol witness table accessor for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v8 + 8))(v10, v7);
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, v47);

    *(v15 + 4) = v20;
    v21 = v42[0];
    _os_log_impl(&dword_220940000, v13, v14, "AppAssetGarbageCollector: remove %s", v42[0], 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x223D90A10](v16, -1, -1);
    MEMORY[0x223D90A10](v21, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  v22 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v23);
  v25 = v24;
  v47[0] = 0;
  v26 = [v22 removeItemAtURL:v24 error:v47];

  if (v26)
  {
    v27 = v47[0];
    v28 = URL.lastPathComponent.getter();
    v30 = v29;
    v31 = type metadata accessor for AppAssetGarbageCollector.Manifest.Entry(0);
    v32 = v43;
    (*(*(v31 - 8) + 56))(v43, 1, 1, v31);
    v33 = *(type metadata accessor for AppAssetGarbageCollector(0) + 24);
    specialized Dictionary.subscript.setter(v32, v28, v30);
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation11JSONEncoderC16OutputFormattingVGMd);
    v34 = swift_allocObject();
    v34[1] = xmmword_220AE8A30;
    static JSONEncoder.OutputFormatting.prettyPrinted.getter();
    v47[0] = v34;
    lazy protocol witness table accessor for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting(&lazy protocol witness table cache variable for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting, MEMORY[0x277CC8718]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation11JSONEncoderC16OutputFormattingVGMd);
    lazy protocol witness table accessor for type [JSONEncoder.OutputFormatting] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    dispatch thunk of JSONEncoder.outputFormatting.setter();
    v47[0] = *(v45 + v33);
    lazy protocol witness table accessor for type AppAssetGarbageCollector.Manifest and conformance AppAssetGarbageCollector.Manifest();

    v35 = v42[1];
    v36 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    if (v35)
    {
    }

    else
    {
      v40 = v36;
      v41 = v37;

      Data.write(to:options:)();
      outlined consume of Data._Representation(v40, v41);
    }
  }

  else
  {
    v39 = v47[0];
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }
}

void sub_2209E1160(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x2209E1168);
  }

  _Unwind_Resume(a1);
}

uint64_t one-time initialization function for shared()
{
  type metadata accessor for DraftModelCompiler();
  v0 = swift_allocObject();
  v2 = 0;
  result = TokenMask.subscript.read(&v2);
  *(v0 + 16) = v2;
  *(v0 + 24) = MEMORY[0x277D84FA0];
  static DraftModelCompiler.shared = v0;
  return result;
}

uint64_t DraftModelCompiler.startDraftModelCompilation(mil:identifier:appAssetManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a3;
  v42 = a4;
  v39 = a2;
  v47[1] = *MEMORY[0x277D85DE8];
  v45 = type metadata accessor for Date();
  v5 = *(v45 - 8);
  v6 = MEMORY[0x28223BE20](v45);
  v38 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v35 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v35 - v11;
  v46 = specialized DraftModelCompiler.draftModelConfiguration(mil:)();
  v43 = v12;
  Date.init()();
  v13 = objc_opt_self();
  v47[0] = 0;
  v14 = [v13 compiledModelWithConfiguration:v46 bundleCachePath:0 error:v47];
  v15 = v47[0];
  if (v14)
  {
    v16 = v14;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;
    v19 = v15;

    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Log.device);
    (*(v5 + 16))(v10, v43, v45);

    v21 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v37))
    {
      v22 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v47[0] = v36;
      *v22 = 134349314;
      Date.init()();
      Date.timeIntervalSince(_:)();
      v24 = v23;
      v25 = *(v5 + 8);
      v26 = v18;
      v27 = v4;
      v28 = v45;
      v25(v38, v45);
      v29 = v28;
      v4 = v27;
      v25(v10, v29);
      *(v22 + 4) = v24;
      *(v22 + 12) = 2082;
      *(v22 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v26, v47);
      _os_log_impl(&dword_220940000, v21, v37, "Successfully compiled draft model in %{public}f seconds, to %{public}s", v22, 0x16u);
      v30 = v36;
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x223D90A10](v30, -1, -1);
      MEMORY[0x223D90A10](v22, -1, -1);

      v25(v43, v45);
    }

    else
    {

      v32 = *(v5 + 8);
      v33 = v45;
      v32(v10, v45);
      v32(v43, v33);
    }

    $defer #1 () in DraftModelCompiler.startDraftModelCompilation(mil:identifier:appAssetManager:)(v40, v39, v41);
  }

  else
  {
    v31 = v47[0];
    v44 = _convertNSErrorToError(_:)();

    swift_willThrow();
    (*(v5 + 8))(v43, v45);
    $defer #1 () in DraftModelCompiler.startDraftModelCompilation(mil:identifier:appAssetManager:)(v40, v39, v41);
  }

  return v4;
}

void sub_2209E15E0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
  }

  _Unwind_Resume(a1);
}

void $defer #1 () in DraftModelCompiler.startDraftModelCompilation(mil:identifier:appAssetManager:)(os_unfair_lock_s *a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock(a1 + 4);
  specialized Set._Variant.remove(_:)(a2, a3);

  os_unfair_lock_unlock(a1 + 4);
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Log.device);
  oslog = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_220940000, oslog, v7, "Released draft model compilation resources.", v8, 2u);
    MEMORY[0x223D90A10](v8, -1, -1);
  }
}

uint64_t DraftModelCompiler.__deallocating_deinit()
{
  outlined destroy of [Int](v0 + 24, &_sShySSGMd);

  return swift_deallocClassInstance();
}

os_log_t *AppContainer.init(auditToken:)(char *a1)
{
  v2 = v1;
  v102 = *MEMORY[0x277D85DE8];
  v91 = *v1;
  v4 = type metadata accessor for AuditToken();
  v92 = *(v4 - 8);
  v93 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v79 - v8;
  v10 = type metadata accessor for URL();
  v90 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v79 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v79 - v17;
  if (!container_query_create())
  {
    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    __swift_project_value_buffer(v42, static Log.device);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_220940000, v43, v44, "Failed to create container query", v45, 2u);
      MEMORY[0x223D90A10](v45, -1, -1);
    }

    goto LABEL_21;
  }

  v19 = AuditToken.auditToken.getter();
  v94 = 1;
  v95 = v19;
  v96 = v20;
  v97 = v21;
  v98 = v22;
  v99 = v23;
  v100 = v24;
  v101 = v25;
  v26 = container_client_create_from_audit_token();
  if (!v26)
  {
    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    __swift_project_value_buffer(v46, static Log.device);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 134217984;
      swift_beginAccess();
      *(v49 + 4) = v94;
      _os_log_impl(&dword_220940000, v47, v48, "Failed to create container client with error: %llu", v49, 0xCu);
      MEMORY[0x223D90A10](v49, -1, -1);
    }

    container_query_free();
LABEL_21:
    (*(v92 + 8))(a1, v93);
LABEL_50:
    swift_deallocPartialClassInstance();
    return 0;
  }

  v88 = v26;
  container_query_operation_set_client();
  container_query_set_class();
  container_query_operation_set_flags();
  container_query_set_persona_unique_string();
  single_result = container_query_get_single_result();
  v89 = a1;
  if (!single_result)
  {
    container_query_get_last_error();
    v50 = container_error_copy_unlocalized_description();
    if (v50)
    {
      v87 = String.init(cString:)();
      v52 = v51;
      MEMORY[0x223D90A10](v50, -1, -1);
    }

    else
    {
      v52 = 0x8000000220AFC4D0;
      v87 = 0xD000000000000014;
    }

    v61 = v89;
    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v62 = type metadata accessor for Logger();
    __swift_project_value_buffer(v62, static Log.device);
    (*(v92 + 16))(v6, v61, v93);

    v90 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();

    v64 = v90;
    if (os_log_type_enabled(v90, v63))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v95 = v66;
      *v65 = 67240450;
      v67 = AuditToken.processIdentifier.getter();
      v68 = *(v92 + 8);
      v68(v6, v93);
      *(v65 + 4) = v67;
      *(v65 + 8) = 2082;
      v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v52, &v95);

      *(v65 + 10) = v69;
      v64 = v90;
      _os_log_impl(&dword_220940000, v90, v63, "Failed to lookup app container for pid: %{public}d(error: %{public}s).", v65, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v66);
      MEMORY[0x223D90A10](v66, -1, -1);
      MEMORY[0x223D90A10](v65, -1, -1);
    }

    else
    {
      v68 = *(v92 + 8);
      v68(v6, v93);
    }

    container_free_client();
    container_query_free();
    v68(v89, v93);
    goto LABEL_50;
  }

  if (!container_get_path())
  {
    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    __swift_project_value_buffer(v53, static Log.device);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_220940000, v54, v55, "No error reported during container lookup, but path is null. This should never happen.", v56, 2u);
      MEMORY[0x223D90A10](v56, -1, -1);
    }

    goto LABEL_28;
  }

  v28 = String.init(cString:)();
  v30 = v29;
  v31 = container_copy_sandbox_token();
  if (!v31)
  {

    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    __swift_project_value_buffer(v58, static Log.device);
    v54 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v54, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_220940000, v54, v59, "Failed to copy sandbox token for app container", v60, 2u);
      MEMORY[0x223D90A10](v60, -1, -1);
    }

LABEL_28:

    container_free_client();
    container_query_free();
    v57 = v89;
LABEL_49:
    (*(v92 + 8))(v57, v93);
    goto LABEL_50;
  }

  v32 = sandbox_extension_consume();
  if (v32 < 0)
  {
    v70 = v31;
    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v71 = type metadata accessor for Logger();
    __swift_project_value_buffer(v71, static Log.device);

    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v95 = v75;
      *v74 = 136446210;
      v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v95);

      *(v74 + 4) = v76;
      _os_log_impl(&dword_220940000, v72, v73, "Failed to get sandbox extension for path: %{public}s)", v74, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v75);
      MEMORY[0x223D90A10](v75, -1, -1);
      MEMORY[0x223D90A10](v74, -1, -1);
    }

    else
    {
    }

    free(v70);
    container_free_client();
    container_query_free();
    v57 = v89;
    goto LABEL_49;
  }

  v85 = v32;
  v86 = v31;
  (v90[7].isa)(v9, 1, 1, v10);
  String.utf8CString.getter();

  URL.init(fileURLWithFileSystemRepresentation:isDirectory:relativeTo:)();
  outlined destroy of [Int](v9, &_s10Foundation3URLVSgMd);

  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  __swift_project_value_buffer(v33, static Log.device);
  isa = v90[2].isa;
  (isa)(v16, v18, v10);
  v91 = Logger.logObject.getter();
  LODWORD(v87) = static os_log_type_t.debug.getter();
  v34 = v91;
  if (os_log_type_enabled(v91, v87))
  {
    v35 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v95 = v80;
    v81 = v35;
    *v35 = 136315138;
    lazy protocol witness table accessor for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
    v82 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = v36;
    v83 = v90[1].isa;
    (v83)(v16, v10);
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v37, &v95);

    *(v35 + 4) = v38;
    v39 = v91;
    v40 = v81;
    _os_log_impl(&dword_220940000, v91, v87, "Successfully accessed app container at %s", v81, 0xCu);
    v41 = v80;
    __swift_destroy_boxed_opaque_existential_1(v80);
    MEMORY[0x223D90A10](v41, -1, -1);
    MEMORY[0x223D90A10](v40, -1, -1);
  }

  else
  {

    v83 = v90[1].isa;
    (v83)(v16, v10);
  }

  (isa)(v2 + OBJC_IVAR____TtC24TokenGenerationInferenceP33_568BE640AB36247B38BDDCAC53FE0F7012AppContainer_rootURL, v18, v10);
  URL.appendingPathComponent(_:)();
  (v83)(v18, v10);
  (v90[4].isa)(v2 + OBJC_IVAR____TtC24TokenGenerationInferenceP33_568BE640AB36247B38BDDCAC53FE0F7012AppContainer_systemDataDirectory, v13, v10);
  v77 = v86;
  *(v2 + OBJC_IVAR____TtC24TokenGenerationInferenceP33_568BE640AB36247B38BDDCAC53FE0F7012AppContainer_extensionHandle) = v85;
  free(v77);
  container_free_client();
  container_query_free();
  (*(v92 + 8))(v89, v93);
  return v2;
}

void sub_2209E2490(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x2209E2498);
  }

  _Unwind_Resume(a1);
}

uint64_t AppContainer.deinit()
{
  v1 = v0;
  v2 = sandbox_extension_release();
  if (v2)
  {
    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Log.device);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 67109120;
      *(v6 + 1) = v2;
      v7 = "Failed to release sandbox handle with code: %d";
      v8 = v5;
      v9 = v4;
      v10 = v6;
      v11 = 8;
LABEL_10:
      _os_log_impl(&dword_220940000, v9, v8, v7, v10, v11);
      MEMORY[0x223D90A10](v6, -1, -1);
    }
  }

  else
  {
    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Log.device);
    v4 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v4, v13))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "Successfully released sandbox extension";
      v8 = v13;
      v9 = v4;
      v10 = v6;
      v11 = 2;
      goto LABEL_10;
    }
  }

  v14 = OBJC_IVAR____TtC24TokenGenerationInferenceP33_568BE640AB36247B38BDDCAC53FE0F7012AppContainer_rootURL;
  v15 = type metadata accessor for URL();
  v16 = *(*(v15 - 8) + 8);
  v16(v1 + v14, v15);
  v16(v1 + OBJC_IVAR____TtC24TokenGenerationInferenceP33_568BE640AB36247B38BDDCAC53FE0F7012AppContainer_systemDataDirectory, v15);
  return v1;
}

uint64_t AppContainer.__deallocating_deinit()
{
  AppContainer.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata completion function for AppContainer()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void specialized Data.InlineSlice.withUnsafeMutableBytes<A>(_:)(int *a1)
{
  Data.InlineSlice.ensureUniqueReference()();
  v3 = *a1;
  if (a1[1] < v3)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (!__DataStorage._bytes.getter())
  {
LABEL_13:
    __break(1u);
    return;
  }

  if (__OFSUB__(v3, __DataStorage._offset.getter()))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  MEMORY[0x223D8BBA0]();
  while (1)
  {
    v4 = FileDescriptor._read(into:retryOnInterrupt:)();
    if (v1)
    {
      break;
    }

    if ((v5 & 1) == 0)
    {
      if (!v4)
      {
        break;
      }

      LODWORD(v4) = FileDescriptor._write(_:retryOnInterrupt:)();
      if ((v6 & 1) == 0)
      {
        continue;
      }
    }

    v7 = v4;
    lazy protocol witness table accessor for type Errno and conformance Errno();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v8 = v7;
    break;
  }
}

void specialized AppAssetManager.__allocating_init(identifier:auditToken:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v125 = a2;
  v123 = a1;
  v105 = type metadata accessor for JSONEncoder.OutputFormatting();
  v103 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v104 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AppAssetGarbageCollector.Manifest.Entry(0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v102 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v101 = &v94 - v8;
  v115 = type metadata accessor for Date();
  v107 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v114 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for AppAssetGarbageCollector(0);
  v10 = MEMORY[0x28223BE20](v120);
  v113 = (&v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v106 = &v94 - v12;
  v111 = type metadata accessor for URL.DirectoryHint();
  v118 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v110 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v109 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v108 = &v94 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v112 = &v94 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v124 = &v94 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v94 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v94 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v94 - v30;
  v32 = type metadata accessor for AuditToken();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v35 = &v94 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v33 + 16))(v35, a3, v32);
  type metadata accessor for AppContainer(0);
  swift_allocObject();
  v36 = AppContainer.init(auditToken:)(v35);
  if (v36)
  {
    v94 = v33;
    v95 = v32;
    v96 = a3;
    v119 = v31;
    URL.init(fileURLWithPath:)();
    v37 = OBJC_IVAR____TtC24TokenGenerationInferenceP33_568BE640AB36247B38BDDCAC53FE0F7012AppContainer_systemDataDirectory;
    v38 = v123;
    v126 = v123;
    v127 = v125;
    v100 = *MEMORY[0x277CC91C0];
    v121 = v14;
    v122 = v26;
    v39 = v118;
    v99 = *(v118 + 104);
    v41 = v110;
    v40 = v111;
    v99(v110);
    v98 = lazy protocol witness table accessor for type String and conformance String();
    v117 = v29;
    URL.appending<A>(path:directoryHint:)();
    v97 = *(v39 + 8);
    v97(v41, v40);
    v118 = v15;
    v42 = *(v15 + 16);
    v116 = v36;
    v42(v122, v36 + v37, v121);
    v126 = 795897204;
    v127 = 0xE400000000000000;
    MEMORY[0x223D8E780](v38, v125);
    (v99)(v41, v100, v40);
    v43 = v121;
    URL.appending<A>(path:directoryHint:)();
    v97(v41, v40);
    v44 = v43;

    v45 = v112;
    v42(v112, v122, v43);
    v46 = v113;
    *(v113 + *(v120 + 28)) = 0x4132750000000000;
    v110 = v42;
    v111 = v15 + 16;
    v42(v46, v45, v43);
    URL.appendingPathComponent(_:)();
    v47 = [objc_opt_self() defaultManager];
    v48 = URL.path.getter();
    v49 = MEMORY[0x223D8E6B0](v48);

    v50 = [v47 fileExistsAtPath_];

    v51 = v125;
    if (v50)
    {
      v67 = Data.init(contentsOf:options:)();
      v69 = v68;
      type metadata accessor for JSONDecoder();
      swift_allocObject();
      JSONDecoder.init()();
      lazy protocol witness table accessor for type AppAssetGarbageCollector.Manifest and conformance AppAssetGarbageCollector.Manifest();
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();

      outlined consume of Data._Representation(v67, v69);
      v92 = v126;
      v93 = v123;
      v51 = v125;
    }

    else
    {
      v92 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_24TokenGenerationInference24AppAssetGarbageCollectorV8ManifestV5EntryVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
      v93 = v123;
    }

    v52 = v114;
    v113 = *(v118 + 8);
    v113(v45, v44);
    v53 = v120;
    *(v46 + *(v120 + 24)) = v92;
    v54 = v106;
    outlined init with take of AppAssetGarbageCollector(v46, v106, type metadata accessor for AppAssetGarbageCollector);
    static Date.now.getter();
    v55 = v101;
    (*(v107 + 16))(v101, v52, v115);
    v56 = *(v53 + 24);
    v57 = v55;
    v58 = v102;
    outlined init with take of AppAssetGarbageCollector(v57, v102, type metadata accessor for AppAssetGarbageCollector.Manifest.Entry);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v126 = *(v54 + v56);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v58, v93, v51, isUniquelyReferenced_nonNull_native);
    v60 = v126;
    *(v54 + v56) = v126;
    type metadata accessor for JSONEncoder();
    swift_allocObject();

    JSONEncoder.init()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation11JSONEncoderC16OutputFormattingVGMd);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_220AE8A30;
    static JSONEncoder.OutputFormatting.prettyPrinted.getter();
    v126 = v61;
    lazy protocol witness table accessor for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting(&lazy protocol witness table cache variable for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting, MEMORY[0x277CC8718]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation11JSONEncoderC16OutputFormattingVGMd);
    lazy protocol witness table accessor for type [JSONEncoder.OutputFormatting] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    dispatch thunk of JSONEncoder.outputFormatting.setter();
    v126 = v60;
    lazy protocol witness table accessor for type AppAssetGarbageCollector.Manifest and conformance AppAssetGarbageCollector.Manifest();
    v62 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v64 = v63;
    v65 = v115;

    Data.write(to:options:)();
    (*(v107 + 8))(v114, v65);
    outlined consume of Data._Representation(v62, v64);

    AppAssetGarbageCollector.cleanUp()();
    if (v91)
    {
      outlined destroy of AppAssetGarbageCollector(v54, type metadata accessor for AppAssetGarbageCollector);
      v66 = v121;
      if (one-time initialization token for device != -1)
      {
        swift_once();
      }

      v70 = type metadata accessor for Logger();
      __swift_project_value_buffer(v70, static Log.device);
      v71 = v91;
      v72 = Logger.logObject.getter();
      v73 = static os_log_type_t.error.getter();

      v74 = v51;
      if (os_log_type_enabled(v72, v73))
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        *v75 = 138412290;
        v77 = v91;
        v78 = _swift_stdlib_bridgeErrorToNSError();
        *(v75 + 4) = v78;
        *v76 = v78;
        _os_log_impl(&dword_220940000, v72, v73, "AppAssetManager: garbage collection failed: %@", v75, 0xCu);
        outlined destroy of [Int](v76, &_sSo8NSObjectCSgMd);
        MEMORY[0x223D90A10](v76, -1, -1);
        MEMORY[0x223D90A10](v75, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      v74 = v51;
      outlined destroy of AppAssetGarbageCollector(v54, type metadata accessor for AppAssetGarbageCollector);
      v66 = v121;
    }

    v79 = v116;
    v80 = v108;
    v81 = v110;
    (v110)(v108, v117, v66);
    v82 = v109;
    v81(v109, v124, v66);
    type metadata accessor for AppAssetManager(0);
    v83 = swift_allocObject();
    v84 = (v83 + OBJC_IVAR____TtC24TokenGenerationInference15AppAssetManager_identifier);
    v85 = v123;
    *v84 = v123;
    v84[1] = v74;
    *(v83 + OBJC_IVAR____TtC24TokenGenerationInference15AppAssetManager_container) = v79;
    v81((v83 + OBJC_IVAR____TtC24TokenGenerationInference15AppAssetManager_cacheDirectory), v80, v66);
    v81((v83 + OBJC_IVAR____TtC24TokenGenerationInference15AppAssetManager_temporaryDirectory), v82, v66);
    v86 = v83 + OBJC_IVAR____TtC24TokenGenerationInference15AppAssetManager_adapterWeightsFileName;
    strcpy((v83 + OBJC_IVAR____TtC24TokenGenerationInference15AppAssetManager_adapterWeightsFileName), "lora.part.bin");
    *(v86 + 14) = -4864;
    v87 = (v83 + OBJC_IVAR____TtC24TokenGenerationInference15AppAssetManager_draftMILFileName);
    *v87 = 0x696D2E7466617264;
    v87[1] = 0xE90000000000006CLL;
    v88 = (v83 + OBJC_IVAR____TtC24TokenGenerationInference15AppAssetManager_draftWeightsFileName);
    *v88 = 0xD000000000000011;
    v88[1] = 0x8000000220AFC4B0;
    v89 = one-time initialization token for assetBundlesInUse;
    swift_retain_n();

    if (v89 != -1)
    {
      swift_once();
    }

    os_unfair_lock_lock(&static AppAssetManager.assetBundlesInUse);
    _s24TokenGenerationInference15AppAssetManagerC10identifier14cacheDirectory09temporaryI09container22adapterWeightsFileNameACSS_10Foundation3URLVAkA0D9Container33_568BE640AB36247B38BDDCAC53FE0F70LLCSgSStcAMLlfcySDySSSiGzYuYTXEfU_(&qword_27CF6DD88, v85, v74);

    os_unfair_lock_unlock(&static AppAssetManager.assetBundlesInUse);

    (*(v94 + 8))(v96, v95);
    v90 = v113;
    v113(v82, v66);
    v90(v80, v66);
    v90(v124, v66);
    v90(v122, v66);
    v90(v117, v66);
    v90(v119, v66);
  }

  else
  {
    (*(v33 + 8))(a3, v32);
  }
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

uint64_t outlined init with take of AppAssetGarbageCollector(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type [JSONEncoder.OutputFormatting] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [JSONEncoder.OutputFormatting] and conformance [A];
  if (!lazy protocol witness table cache variable for type [JSONEncoder.OutputFormatting] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10Foundation11JSONEncoderC16OutputFormattingVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [JSONEncoder.OutputFormatting] and conformance [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppAssetGarbageCollector.Manifest and conformance AppAssetGarbageCollector.Manifest()
{
  result = lazy protocol witness table cache variable for type AppAssetGarbageCollector.Manifest and conformance AppAssetGarbageCollector.Manifest;
  if (!lazy protocol witness table cache variable for type AppAssetGarbageCollector.Manifest and conformance AppAssetGarbageCollector.Manifest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppAssetGarbageCollector.Manifest and conformance AppAssetGarbageCollector.Manifest);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppAssetGarbageCollector.Manifest and conformance AppAssetGarbageCollector.Manifest;
  if (!lazy protocol witness table cache variable for type AppAssetGarbageCollector.Manifest and conformance AppAssetGarbageCollector.Manifest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppAssetGarbageCollector.Manifest and conformance AppAssetGarbageCollector.Manifest);
  }

  return result;
}

uint64_t outlined init with copy of AppAssetGarbageCollector.Manifest.Entry(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppAssetGarbageCollector.Manifest.Entry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of AppAssetGarbageCollector(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t lazy protocol witness table accessor for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t specialized AppAssetManager.copyContents(of:to:)(int a1, uint64_t a2)
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Log.device);
  (*(v6 + 16))(v8, a2, v5);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v24 = a2;
    v13 = v12;
    v23 = swift_slowAlloc();
    v26 = v23;
    *v13 = 67240450;
    *(v13 + 4) = a1;
    *(v13 + 8) = 2082;
    lazy protocol witness table accessor for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v2;
    v16 = v15;
    (*(v6 + 8))(v8, v5);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v26);

    *(v13 + 10) = v17;
    _os_log_impl(&dword_220940000, v10, v11, "Copying file descriptor %{public}d to %{public}s", v13, 0x12u);
    v18 = v23;
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x223D90A10](v18, -1, -1);
    v19 = v13;
    a2 = v24;
    MEMORY[0x223D90A10](v19, -1, -1);
  }

  else
  {

    v20 = (*(v6 + 8))(v8, v5);
  }

  MEMORY[0x28223BE20](v20);
  *(&v22 - 4) = a1;
  *(&v22 - 1) = a2;
  return FileDescriptor.closeAfter<A>(_:)();
}

id specialized AppAssetManager.cloneFile(from:to:)()
{
  v10[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v1);
  v3 = v2;
  URL._bridgeToObjectiveC()(v4);
  v6 = v5;
  v10[0] = 0;
  v7 = [v0 copyItemAtURL:v3 toURL:v5 error:v10];

  if (v7)
  {
    return v10[0];
  }

  v9 = v10[0];
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

void sub_2209E40C8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x2209E40D0);
  }

  _Unwind_Resume(a1);
}

uint64_t outlined init with take of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id specialized DraftModelCompiler.draftModelConfiguration(mil:)()
{
  v0 = URL.path(percentEncoded:)(1);
  if (MEMORY[0x277D84F90] >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo17TGIE5FunctionObjCC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
    }

    if (__CocoaSet.count.getter())
    {
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo29TGIE5AdapterConfigurationObjCC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
    }
  }

  v1 = objc_allocWithZone(TGIE5ModelConfigurationObjC);
  v2 = MEMORY[0x223D8E6B0](v0._countAndFlagsBits, v0._object);

  type metadata accessor for TGIE5FunctionObjC(0, &lazy cache variable for type metadata for TGIE5FunctionObjC);
  lazy protocol witness table accessor for type TGIE5FunctionObjC and conformance NSObject(&lazy protocol witness table cache variable for type TGIE5FunctionObjC and conformance NSObject, &lazy cache variable for type metadata for TGIE5FunctionObjC);
  isa = Set._bridgeToObjectiveC()().super.isa;

  type metadata accessor for TGIE5FunctionObjC(0, &lazy cache variable for type metadata for TGIE5AdapterConfigurationObjC);
  lazy protocol witness table accessor for type TGIE5FunctionObjC and conformance NSObject(&lazy protocol witness table cache variable for type TGIE5AdapterConfigurationObjC and conformance NSObject, &lazy cache variable for type metadata for TGIE5AdapterConfigurationObjC);
  v4 = Set._bridgeToObjectiveC()().super.isa;

  v5 = [v1 initWithModelType:1 modelBundlePath:v2 e5Functions:isa adapterConfigurations:v4];

  return v5;
}

id specialized DraftModelCompiler.pathToCompiledDraftModel(mil:)()
{
  v8[1] = *MEMORY[0x277D85DE8];
  v0 = specialized DraftModelCompiler.draftModelConfiguration(mil:)();
  v1 = objc_opt_self();
  if ([v1 doesModelRequireCompilationWithConfiguration_])
  {

    return 0;
  }

  else
  {
    v8[0] = 0;
    v3 = [v1 compiledModelWithConfiguration:v0 bundleCachePath:0 error:v8];
    v4 = v8[0];
    if (v3)
    {
      v5 = v3;
      v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = v4;
    }

    else
    {
      v2 = v8[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  return v2;
}

void sub_2209E4434(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x2209E443CLL);
  }

  _Unwind_Resume(a1);
}

unint64_t lazy protocol witness table accessor for type Errno and conformance Errno()
{
  result = lazy protocol witness table cache variable for type Errno and conformance Errno;
  if (!lazy protocol witness table cache variable for type Errno and conformance Errno)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Errno and conformance Errno);
  }

  return result;
}

uint64_t outlined consume of StartState #1 in DraftModelCompiler.findCompiledDraftPathOrBeginCompilation(mil:identifier:appAssetManager:)(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t type metadata completion function for AppAssetGarbageCollector()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for AppAssetGarbageCollector.Manifest.Entry(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata accessor for URL?()
{
  if (!lazy cache variable for type metadata for URL?)
  {
    type metadata accessor for URL();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for URL?);
    }
  }
}

unint64_t lazy protocol witness table accessor for type FoundationModelsFeatureFlags and conformance FoundationModelsFeatureFlags()
{
  result = lazy protocol witness table cache variable for type FoundationModelsFeatureFlags and conformance FoundationModelsFeatureFlags;
  if (!lazy protocol witness table cache variable for type FoundationModelsFeatureFlags and conformance FoundationModelsFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FoundationModelsFeatureFlags and conformance FoundationModelsFeatureFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FoundationModelsFeatureFlags and conformance FoundationModelsFeatureFlags;
  if (!lazy protocol witness table cache variable for type FoundationModelsFeatureFlags and conformance FoundationModelsFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FoundationModelsFeatureFlags and conformance FoundationModelsFeatureFlags);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppAssetGarbageCollector.Manifest.CodingKeys and conformance AppAssetGarbageCollector.Manifest.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AppAssetGarbageCollector.Manifest.CodingKeys and conformance AppAssetGarbageCollector.Manifest.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppAssetGarbageCollector.Manifest.CodingKeys and conformance AppAssetGarbageCollector.Manifest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppAssetGarbageCollector.Manifest.CodingKeys and conformance AppAssetGarbageCollector.Manifest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppAssetGarbageCollector.Manifest.CodingKeys and conformance AppAssetGarbageCollector.Manifest.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppAssetGarbageCollector.Manifest.CodingKeys and conformance AppAssetGarbageCollector.Manifest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppAssetGarbageCollector.Manifest.CodingKeys and conformance AppAssetGarbageCollector.Manifest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppAssetGarbageCollector.Manifest.CodingKeys and conformance AppAssetGarbageCollector.Manifest.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppAssetGarbageCollector.Manifest.CodingKeys and conformance AppAssetGarbageCollector.Manifest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppAssetGarbageCollector.Manifest.CodingKeys and conformance AppAssetGarbageCollector.Manifest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppAssetGarbageCollector.Manifest.CodingKeys and conformance AppAssetGarbageCollector.Manifest.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppAssetGarbageCollector.Manifest.CodingKeys and conformance AppAssetGarbageCollector.Manifest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppAssetGarbageCollector.Manifest.CodingKeys and conformance AppAssetGarbageCollector.Manifest.CodingKeys);
  }

  return result;
}

void *specialized AppAssetGarbageCollector.Manifest.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24TokenGenerationInference24AppAssetGarbageCollectorV8ManifestV10CodingKeys33_568BE640AB36247B38BDDCAC53FE0F70LLOGMd);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AppAssetGarbageCollector.Manifest.CodingKeys and conformance AppAssetGarbageCollector.Manifest.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS24TokenGenerationInference24AppAssetGarbageCollectorV8ManifestV5EntryVGMd);
    lazy protocol witness table accessor for type [String : AppAssetGarbageCollector.Manifest.Entry] and conformance <> [A : B]();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v7;
}

unint64_t lazy protocol witness table accessor for type AppAssetGarbageCollector.Manifest.Entry.CodingKeys and conformance AppAssetGarbageCollector.Manifest.Entry.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AppAssetGarbageCollector.Manifest.Entry.CodingKeys and conformance AppAssetGarbageCollector.Manifest.Entry.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppAssetGarbageCollector.Manifest.Entry.CodingKeys and conformance AppAssetGarbageCollector.Manifest.Entry.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppAssetGarbageCollector.Manifest.Entry.CodingKeys and conformance AppAssetGarbageCollector.Manifest.Entry.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppAssetGarbageCollector.Manifest.Entry.CodingKeys and conformance AppAssetGarbageCollector.Manifest.Entry.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppAssetGarbageCollector.Manifest.Entry.CodingKeys and conformance AppAssetGarbageCollector.Manifest.Entry.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppAssetGarbageCollector.Manifest.Entry.CodingKeys and conformance AppAssetGarbageCollector.Manifest.Entry.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppAssetGarbageCollector.Manifest.Entry.CodingKeys and conformance AppAssetGarbageCollector.Manifest.Entry.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppAssetGarbageCollector.Manifest.Entry.CodingKeys and conformance AppAssetGarbageCollector.Manifest.Entry.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppAssetGarbageCollector.Manifest.Entry.CodingKeys and conformance AppAssetGarbageCollector.Manifest.Entry.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppAssetGarbageCollector.Manifest.Entry.CodingKeys and conformance AppAssetGarbageCollector.Manifest.Entry.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppAssetGarbageCollector.Manifest.Entry.CodingKeys and conformance AppAssetGarbageCollector.Manifest.Entry.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppAssetGarbageCollector.Manifest.Entry.CodingKeys and conformance AppAssetGarbageCollector.Manifest.Entry.CodingKeys);
  }

  return result;
}

uint64_t DataStreamStateManager.startPromptProcessingInstrumenter(uuid:onBehalfOfUserIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v28 = a2;
  v29 = a1;
  v4 = type metadata accessor for Logger();
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x28223BE20](v4);
  v27 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s34GenerativeFunctionsInstrumentation28PromptProcessingInstrumenterVSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DataStreamState(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v25 - v18;
  result = swift_beginAccess();
  v21 = *(v2 + 112);
  if (*(v21 + 16))
  {

    v22 = specialized __RawDictionaryStorage.find<A>(_:)(v29);
    if (v23)
    {
      outlined init with copy of DataStreamState(*(v21 + 56) + *(v14 + 72) * v22, v17);

      outlined init with take of DataStreamState(v17, v19);
      (*(v10 + 16))(v12, v29, v9);
      (*(v25 + 16))(v27, v3 + OBJC_IVAR____TtC24TokenGenerationInference22DataStreamStateManager_logger, v26);

      PromptProcessingInstrumenter.init(signpostLogger:requestIdentifier:onBehalfOfUserIdentifier:eventReporter:)();
      v24 = type metadata accessor for PromptProcessingInstrumenter();
      (*(*(v24 - 8) + 56))(v8, 0, 1, v24);
      swift_beginAccess();
      specialized Dictionary.subscript.setter(v8, v12);
      swift_endAccess();
      return outlined destroy of DataStreamState(v19);
    }

    else
    {
    }
  }

  return result;
}

uint64_t DataStreamStateManager.endPromptProcessingInstrumenter(uuid:state:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v41 = a2;
  v49 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s34GenerativeFunctionsInstrumentation28PromptProcessingInstrumenterVSgMd);
  MEMORY[0x28223BE20](v4 - 8);
  v48 = v39 - v5;
  v6 = type metadata accessor for UUID();
  v45 = *(v6 - 8);
  v46 = v6;
  MEMORY[0x28223BE20](v6);
  v47 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Instrumenter();
  v43 = *(v8 - 8);
  v44 = v8;
  MEMORY[0x28223BE20](v8);
  v42 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary42GenerativeFunctionsInstrumentationMetadataO17TGIExecuteRequestV9ErrorTypeOSgMd);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v39 - v14;
  v16 = type metadata accessor for GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.ErrorType();
  v40 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for PromptProcessingInstrumenter();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v39 - v24;
  result = swift_beginAccess();
  v27 = *(v2 + 144);
  if (*(v27 + 16))
  {

    v28 = specialized __RawDictionaryStorage.find<A>(_:)(v49);
    if (v29)
    {
      v30 = *(v27 + 56) + *(v20 + 72) * v28;
      v39[0] = *(v20 + 16);
      v39[1] = v20 + 16;
      (v39[0])(v23, v30, v19);

      (*(v20 + 32))(v25, v23, v19);
      v31 = v41;
      PromptProcessingInstrumenter.inputTokensCount.setter();
      v32 = type metadata accessor for DataStreamState(0);
      outlined init with copy of GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.ErrorType?(v31 + *(v32 + 52), v15);
      v33 = v40;
      if ((*(v40 + 48))(v15, 1, v16) == 1)
      {
        outlined destroy of GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.ErrorType?(v15);
      }

      else
      {
        (*(v33 + 32))(v18, v15, v16);
        (*(v33 + 16))(v13, v18, v16);
        (*(v33 + 56))(v13, 0, 1, v16);
        PromptProcessingInstrumenter.errorType.setter();
        (*(v33 + 8))(v18, v16);
      }

      __swift_project_boxed_opaque_existential_1((v3 + 192), *(v3 + 216));
      v34 = v42;
      (v39[0])(v42, v25, v19);
      v36 = v43;
      v35 = v44;
      (*(v43 + 104))(v34, *MEMORY[0x277D0DEC0], v44);
      dispatch thunk of InstrumenterFinalizerProtocol.end(instrumenter:)();
      (*(v36 + 8))(v34, v35);
      v37 = v47;
      (*(v45 + 16))(v47, v49, v46);
      v38 = v48;
      (*(v20 + 56))(v48, 1, 1, v19);
      swift_beginAccess();
      specialized Dictionary.subscript.setter(v38, v37);
      swift_endAccess();
      return (*(v20 + 8))(v25, v19);
    }

    else
    {
    }
  }

  return result;
}

uint64_t DataStreamStateManager.startFirstTokenInferenceInstrumenter(uuid:onBehalfOfUserIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v28 = a2;
  v29 = a1;
  v4 = type metadata accessor for Logger();
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x28223BE20](v4);
  v27 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s34GenerativeFunctionsInstrumentation31FirstTokenInferenceInstrumenterVSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DataStreamState(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v25 - v18;
  result = swift_beginAccess();
  v21 = *(v2 + 112);
  if (*(v21 + 16))
  {

    v22 = specialized __RawDictionaryStorage.find<A>(_:)(v29);
    if (v23)
    {
      outlined init with copy of DataStreamState(*(v21 + 56) + *(v14 + 72) * v22, v17);

      outlined init with take of DataStreamState(v17, v19);
      (*(v10 + 16))(v12, v29, v9);
      (*(v25 + 16))(v27, v3 + OBJC_IVAR____TtC24TokenGenerationInference22DataStreamStateManager_logger, v26);

      FirstTokenInferenceInstrumenter.init(signpostLogger:requestIdentifier:onBehalfOfUserIdentifier:eventReporter:)();
      TokenInferenceInstrumenter = type metadata accessor for FirstTokenInferenceInstrumenter();
      (*(*(TokenInferenceInstrumenter - 8) + 56))(v8, 0, 1, TokenInferenceInstrumenter);
      swift_beginAccess();
      specialized Dictionary.subscript.setter(v8, v12);
      swift_endAccess();
      return outlined destroy of DataStreamState(v19);
    }

    else
    {
    }
  }

  return result;
}

uint64_t DataStreamStateManager.endFirstTokenInferenceInstrumenter(uuid:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s34GenerativeFunctionsInstrumentation31FirstTokenInferenceInstrumenterVSgMd);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v29 - v5;
  v7 = type metadata accessor for UUID();
  v33 = *(v7 - 8);
  v34 = v7;
  MEMORY[0x28223BE20](v7);
  v35 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Instrumenter();
  v32 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  TokenInferenceInstrumenter = type metadata accessor for FirstTokenInferenceInstrumenter();
  v13 = *(TokenInferenceInstrumenter - 8);
  v14 = MEMORY[0x28223BE20](TokenInferenceInstrumenter);
  v16 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v29 - v17;
  result = swift_beginAccess();
  v20 = v1[15];
  if (*(v20 + 16))
  {

    v21 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v22)
    {
      v23 = *(v20 + 56) + *(v13 + 72) * v21;
      v30 = a1;
      v31 = v6;
      v24 = *(v13 + 16);
      v24(v16, v23, TokenInferenceInstrumenter);

      (*(v13 + 32))(v18, v16, TokenInferenceInstrumenter);
      v25 = v2[27];
      v29[1] = v2[28];
      __swift_project_boxed_opaque_existential_1(v2 + 24, v25);
      v24(v11, v18, TokenInferenceInstrumenter);
      v26 = v32;
      (*(v32 + 104))(v11, *MEMORY[0x277D0DEC8], v9);
      dispatch thunk of InstrumenterFinalizerProtocol.end(instrumenter:)();
      (*(v26 + 8))(v11, v9);
      v27 = v35;
      (*(v33 + 16))(v35, v30, v34);
      v28 = v31;
      (*(v13 + 56))(v31, 1, 1, TokenInferenceInstrumenter);
      swift_beginAccess();
      specialized Dictionary.subscript.setter(v28, v27);
      swift_endAccess();
      return (*(v13 + 8))(v18, TokenInferenceInstrumenter);
    }

    else
    {
    }
  }

  return result;
}

uint64_t DataStreamStateManager.startExtendInferenceInstrumenter(uuid:onBehalfOfUserIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v28 = a2;
  v29 = a1;
  v4 = type metadata accessor for Logger();
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x28223BE20](v4);
  v27 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s34GenerativeFunctionsInstrumentation27ExtendInferenceInstrumenterVSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DataStreamState(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v25 - v18;
  result = swift_beginAccess();
  v21 = *(v2 + 112);
  if (*(v21 + 16))
  {

    v22 = specialized __RawDictionaryStorage.find<A>(_:)(v29);
    if (v23)
    {
      outlined init with copy of DataStreamState(*(v21 + 56) + *(v14 + 72) * v22, v17);

      outlined init with take of DataStreamState(v17, v19);
      (*(v10 + 16))(v12, v29, v9);
      (*(v25 + 16))(v27, v3 + OBJC_IVAR____TtC24TokenGenerationInference22DataStreamStateManager_logger, v26);

      ExtendInferenceInstrumenter.init(signpostLogger:requestIdentifier:onBehalfOfUserIdentifier:eventReporter:)();
      v24 = type metadata accessor for ExtendInferenceInstrumenter();
      (*(*(v24 - 8) + 56))(v8, 0, 1, v24);
      swift_beginAccess();
      specialized Dictionary.subscript.setter(v8, v12);
      swift_endAccess();
      return outlined destroy of DataStreamState(v19);
    }

    else
    {
    }
  }

  return result;
}

uint64_t DataStreamStateManager.endExtendInferenceInstrumented(uuid:state:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v34 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s34GenerativeFunctionsInstrumentation27ExtendInferenceInstrumenterVSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v30 - v6;
  v8 = type metadata accessor for UUID();
  v35 = *(v8 - 8);
  v36 = v8;
  MEMORY[0x28223BE20](v8);
  v37 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Instrumenter();
  v33 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ExtendInferenceInstrumenter();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v30 - v18;
  result = swift_beginAccess();
  v21 = v2[17];
  if (*(v21 + 16))
  {

    v22 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v23)
    {
      v24 = *(v21 + 56) + *(v14 + 72) * v22;
      v31 = a1;
      v32 = v7;
      v25 = *(v14 + 16);
      v25(v17, v24, v13);

      (*(v14 + 32))(v19, v17, v13);
      ExtendInferenceInstrumenter.outputTokensCount.setter();
      v26 = v3[27];
      v34 = v3[28];
      __swift_project_boxed_opaque_existential_1(v3 + 24, v26);
      v25(v12, v19, v13);
      v27 = v33;
      (*(v33 + 104))(v12, *MEMORY[0x277D0DEB8], v10);
      dispatch thunk of InstrumenterFinalizerProtocol.end(instrumenter:)();
      (*(v27 + 8))(v12, v10);
      v28 = v37;
      (*(v35 + 16))(v37, v31, v36);
      v29 = v32;
      (*(v14 + 56))(v32, 1, 1, v13);
      swift_beginAccess();
      specialized Dictionary.subscript.setter(v29, v28);
      swift_endAccess();
      return (*(v14 + 8))(v19, v13);
    }

    else
    {
    }
  }

  return result;
}

uint64_t DataStreamStateManager.startCompletePromptInstrumenter(uuid:onBehalfOfUserIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v28 = a2;
  v29 = a1;
  v4 = type metadata accessor for Logger();
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x28223BE20](v4);
  v27 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s34GenerativeFunctionsInstrumentation33CompletePromptRequestInstrumenterVSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DataStreamState(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v25 - v18;
  result = swift_beginAccess();
  v21 = *(v2 + 112);
  if (*(v21 + 16))
  {

    v22 = specialized __RawDictionaryStorage.find<A>(_:)(v29);
    if (v23)
    {
      outlined init with copy of DataStreamState(*(v21 + 56) + *(v14 + 72) * v22, v17);

      outlined init with take of DataStreamState(v17, v19);
      (*(v10 + 16))(v12, v29, v9);
      (*(v25 + 16))(v27, v3 + OBJC_IVAR____TtC24TokenGenerationInference22DataStreamStateManager_logger, v26);

      CompletePromptRequestInstrumenter.init(signpostLogger:requestIdentifier:oneshot:onBehalfOfUserIdentifier:eventReporter:)();
      v24 = type metadata accessor for CompletePromptRequestInstrumenter();
      (*(*(v24 - 8) + 56))(v8, 0, 1, v24);
      swift_beginAccess();
      specialized Dictionary.subscript.setter(v8, v12);
      swift_endAccess();
      return outlined destroy of DataStreamState(v19);
    }

    else
    {
    }
  }

  return result;
}

uint64_t DataStreamStateManager.endCompletePromptInstrumenter(uuid:state:)(uint64_t a1, uint64_t a2)
{
  v59 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s34GenerativeFunctionsInstrumentation33CompletePromptRequestInstrumenterVSgMd);
  MEMORY[0x28223BE20](v4 - 8);
  v57 = v48 - v5;
  v6 = type metadata accessor for UUID();
  v53 = *(v6 - 8);
  v54 = v6;
  MEMORY[0x28223BE20](v6);
  v55 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Instrumenter();
  v51 = *(v8 - 8);
  v52 = v8;
  MEMORY[0x28223BE20](v8);
  v50 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary42GenerativeFunctionsInstrumentationMetadataO17TGIExecuteRequestV9ErrorTypeOSgMd);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v48 - v14;
  v16 = type metadata accessor for GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.ErrorType();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for CompletePromptRequestInstrumenter();
  v58 = *(v20 - 8);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v48 - v24;
  result = swift_beginAccess();
  v56 = v2;
  v27 = *(v2 + 128);
  if (*(v27 + 16))
  {

    v49 = a1;
    v28 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v29)
    {
      v30 = v58;
      v31 = *(v27 + 56) + *(v58 + 72) * v28;
      v48[0] = *(v58 + 16);
      v48[1] = v58 + 16;
      (v48[0])(v23, v31, v20);

      (*(v30 + 32))(v25, v23, v20);
      v32 = type metadata accessor for DataStreamState(0);
      outlined init with copy of GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.ErrorType?(v59 + *(v32 + 52), v15);
      if ((*(v17 + 48))(v15, 1, v16) == 1)
      {
        outlined destroy of GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.ErrorType?(v15);
      }

      else
      {
        (*(v17 + 32))(v19, v15, v16);
        (*(v17 + 16))(v13, v19, v16);
        (*(v17 + 56))(v13, 0, 1, v16);
        CompletePromptRequestInstrumenter.errorType.setter();
        (*(v17 + 8))(v19, v16);
      }

      v33 = v59 + *(v32 + 60);
      v34 = *(v33 + 104);
      v35 = v49;
      if (v34 == 2)
      {
        v36 = 0;
        v37 = 0;
        v38 = 0;
        v61 = 0;
        v62 = 0;
      }

      else
      {
        v38 = lazy protocol witness table accessor for type SpeculativeDecoderPerformanceMeasurement and conformance SpeculativeDecoderPerformanceMeasurement();
        v36 = swift_allocObject();
        v39 = *(v33 + 80);
        *(v36 + 80) = *(v33 + 64);
        *(v36 + 96) = v39;
        *(v36 + 112) = *(v33 + 96);
        v40 = *(v33 + 16);
        *(v36 + 16) = *v33;
        *(v36 + 32) = v40;
        v41 = *(v33 + 48);
        *(v36 + 48) = *(v33 + 32);
        *(v36 + 64) = v41;
        *(v36 + 120) = v34;
        v37 = &type metadata for SpeculativeDecoderPerformanceMeasurement;
      }

      v60 = v36;
      v63 = v37;
      v64 = v38;
      CompletePromptRequestInstrumenter.speculativeDecoderStats.setter();
      CompletePromptRequestInstrumenter.outputTokensCount.setter();
      CompletePromptRequestInstrumenter.inputTokensCount.setter();
      CompletePromptRequestInstrumenter.prefixKVCacheTokensMatchCount.setter();
      CompletePromptRequestInstrumenter.promptModulesKVCacheTokensMatchCount.setter();
      __swift_project_boxed_opaque_existential_1((v56 + 192), *(v56 + 216));
      v42 = v50;
      (v48[0])(v50, v25, v20);
      v44 = v51;
      v43 = v52;
      (*(v51 + 104))(v42, *MEMORY[0x277D0DED0], v52);
      dispatch thunk of InstrumenterFinalizerProtocol.end(instrumenter:)();
      (*(v44 + 8))(v42, v43);
      v45 = v55;
      (*(v53 + 16))(v55, v35, v54);
      v47 = v57;
      v46 = v58;
      (*(v58 + 56))(v57, 1, 1, v20);
      swift_beginAccess();
      specialized Dictionary.subscript.setter(v47, v45);
      swift_endAccess();
      return (*(v46 + 8))(v25, v20);
    }

    else
    {
    }
  }

  return result;
}

uint64_t specialized closure #2 in DataStreamStateManager.createState(uuid:isOneShot:loggingIdentifier:onBehalfOfUserIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](specialized closure #2 in DataStreamStateManager.createState(uuid:isOneShot:loggingIdentifier:onBehalfOfUserIdentifier:), 0, 0);
}

uint64_t specialized closure #2 in DataStreamStateManager.createState(uuid:isOneShot:loggingIdentifier:onBehalfOfUserIdentifier:)()
{
  EventReporter.warmup()();
  if (v1)
  {
  }

  **(v0 + 16) = v1 != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t DataStreamStateManager.removeState(uuid:state:)(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference15DataStreamStateVSgMd);
  v3[11] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](DataStreamStateManager.removeState(uuid:state:), v2, 0);
}

uint64_t DataStreamStateManager.removeState(uuid:state:)()
{
  v1 = v0[10];
  v2 = v0[8];
  swift_beginAccess();
  v3 = *(v1 + 112);
  v4 = swift_task_alloc();
  v5 = v4;
  *(v4 + 16) = v2;

  LOBYTE(v2) = specialized Sequence.contains(where:)(partial apply for closure #1 in DataStreamStateManager.removeState(uuid:state:), v5, v3);

  if (v2)
  {
    v6 = v0[9];
    v7 = type metadata accessor for DataStreamState(0);
    if (*(v6 + *(v7 + 60) + 104) != 2)
    {
      SpeculativeDecoderPerformanceMeasurement.printToOSLogForLLMWheel()();
      v6 = v0[9];
    }

    v8 = v0[14];
    v9 = v0[11];
    v10 = v0[10];
    (*(v0[13] + 16))(v8, v0[8], v0[12]);
    (*(*(v7 - 8) + 56))(v9, 1, 1, v7);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v9, v8);
    swift_endAccess();
    v11 = __swift_project_boxed_opaque_existential_1((v10 + 152), *(v10 + 176));
    v0[15] = v11;
    v0[16] = *v6;
    v12 = *v11;

    return MEMORY[0x2822009F8](DataStreamStateManager.removeState(uuid:state:), v12, 0);
  }

  else
  {

    v13 = v0[1];

    return v13();
  }
}

{
  rawValue = v0[10]._rawValue;
  OnDeviceInferenceAssetRepository.releaseAssetObjects(assetObjects:)(v0[16]);

  return MEMORY[0x2822009F8](DataStreamStateManager.removeState(uuid:state:), rawValue, 0);
}

{
  v1 = v0[9];
  v2 = v0[8];
  DataStreamStateManager.endFirstTokenInferenceInstrumenter(uuid:)(v2);
  DataStreamStateManager.endExtendInferenceInstrumented(uuid:state:)(v2, v1);
  DataStreamStateManager.endCompletePromptInstrumenter(uuid:state:)(v2, v1);

  v3 = v0[1];

  return v3();
}

uint64_t DataStreamStateManager.deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 152);
  __swift_destroy_boxed_opaque_existential_1(v0 + 192);
  v1 = OBJC_IVAR____TtC24TokenGenerationInference22DataStreamStateManager_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t DataStreamStateManager.__deallocating_deinit()
{
  DataStreamStateManager.deinit();

  return MEMORY[0x282200960](v0);
}

void type metadata completion function for DataStreamState()
{
  type metadata accessor for [OnDeviceInferenceAssetObject]();
  if (v0 <= 0x3F)
  {
    type metadata accessor for [Token](319, &lazy cache variable for type metadata for [Token], MEMORY[0x277D71DA0], MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for [Token](319, &lazy cache variable for type metadata for [ToolCallParser.FunctionDelta], MEMORY[0x277D71E38], MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for StopSequenceMonitor();
        if (v3 <= 0x3F)
        {
          type metadata accessor for ToolCallParser();
          if (v4 <= 0x3F)
          {
            type metadata accessor for [Token](319, &lazy cache variable for type metadata for GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.ErrorType?, MEMORY[0x277D20BD8], MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              type metadata accessor for SpeculativeDecoderPerformanceMeasurement?(319, &lazy cache variable for type metadata for SpeculativeDecoderPerformanceMeasurement?);
              if (v6 <= 0x3F)
              {
                type metadata accessor for [Token](319, &lazy cache variable for type metadata for FinishReason?, MEMORY[0x277D71B70], MEMORY[0x277D83D88]);
                if (v7 <= 0x3F)
                {
                  type metadata accessor for SpeculativeDecoderPerformanceMeasurement?(319, &lazy cache variable for type metadata for Int?);
                  if (v8 <= 0x3F)
                  {
                    type metadata accessor for EventReporter();
                    if (v9 <= 0x3F)
                    {
                      type metadata accessor for [Token](319, &lazy cache variable for type metadata for Prompt.Rendering?, MEMORY[0x277D71DD8], MEMORY[0x277D83D88]);
                      if (v10 <= 0x3F)
                      {
                        swift_cvw_initStructMetadataWithLayoutString();
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for [OnDeviceInferenceAssetObject]()
{
  if (!lazy cache variable for type metadata for [OnDeviceInferenceAssetObject])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s24TokenGenerationInference08OnDeviceC11AssetObject_pMd);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [OnDeviceInferenceAssetObject]);
    }
  }
}

void type metadata accessor for [Token](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t outlined init with copy of GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.ErrorType?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary42GenerativeFunctionsInstrumentationMetadataO17TGIExecuteRequestV9ErrorTypeOSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.ErrorType?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary42GenerativeFunctionsInstrumentationMetadataO17TGIExecuteRequestV9ErrorTypeOSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type SpeculativeDecoderPerformanceMeasurement and conformance SpeculativeDecoderPerformanceMeasurement()
{
  result = lazy protocol witness table cache variable for type SpeculativeDecoderPerformanceMeasurement and conformance SpeculativeDecoderPerformanceMeasurement;
  if (!lazy protocol witness table cache variable for type SpeculativeDecoderPerformanceMeasurement and conformance SpeculativeDecoderPerformanceMeasurement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpeculativeDecoderPerformanceMeasurement and conformance SpeculativeDecoderPerformanceMeasurement);
  }

  return result;
}

uint64_t DraftingBehavior.updated(with:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v30 = *(v1 + 24);
  v31 = *v1;
  v4 = *(v1 + 32);
  v29 = *(v1 + 36);
  v32 = *(v1 + 41);
  v33 = *(v1 + 8);
  v24 = *(v1 + 42);
  v25 = *(v1 + 40);
  v23 = *(v1 + 44);
  v26 = *(v1 + 48);
  v36 = *(v1 + 49);
  v34 = *(v1 + 64);
  v35 = *(v1 + 56);
  v5 = *(v1 + 72);
  v28 = SpeculationParameters.draftSteps.getter();
  v27 = v6;
  v7 = SpeculationParameters.treeFactor.getter();
  if ((v8 & 1) == 0)
  {
    v3 = v7;
  }

  v22 = SpeculationParameters.secondaryTreeFactor.getter();
  v10 = v9;
  matched = SpeculationParameters.softMatchTolerance.getter();
  v12 = SpeculationParameters.earlyReturn.getter();
  v13 = SpeculationParameters.earlyReturnProbabilityThreshold.getter();
  result = SpeculationParameters.useMaximumLikelihoodTree.getter();
  if (v3 < 1)
  {
    __break(1u);
  }

  else
  {
    if (result == 2)
    {
      v15 = v5;
    }

    else
    {
      v15 = result;
    }

    v16 = v23;
    if ((v13 & 0x100000000) == 0)
    {
      v16 = v13;
    }

    v17 = v24;
    if (v12 != 2)
    {
      v17 = v12;
    }

    v18 = ((matched & 0x100000000uLL) >> 32) & *&v25;
    v19 = v29;
    if ((matched & 0x100000000) == 0)
    {
      v19 = matched;
    }

    v20 = v30;
    if ((v10 & 1) == 0)
    {
      v20 = v22;
    }

    v21 = v31;
    result = v28;
    if ((v27 & 1) == 0)
    {
      v21 = v28;
    }

    *a1 = v21;
    *(a1 + 8) = v33;
    *(a1 + 16) = v3;
    *(a1 + 24) = v20;
    *(a1 + 32) = v10 & v4 & 1;
    *(a1 + 36) = v19;
    *(a1 + 40) = v18 & 1;
    *(a1 + 41) = v32 & v18;
    *(a1 + 42) = v17 & 1;
    *(a1 + 44) = v16;
    *(a1 + 48) = BYTE4(v13) & 1 & v26;
    *(a1 + 49) = v36;
    *(a1 + 56) = v35;
    *(a1 + 64) = v34;
    *(a1 + 72) = v15 & 1;
  }

  return result;
}

uint64_t ImageTokenizer.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t OnDeviceAttachmentTokenizer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t protocol witness for AttachmentTokenizer.tokenize(imageAttachment:configuration:) in conformance OnDeviceAttachmentTokenizer(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](protocol witness for AttachmentTokenizer.tokenize(imageAttachment:configuration:) in conformance OnDeviceAttachmentTokenizer, 0, 0);
}

uint64_t protocol witness for AttachmentTokenizer.tokenize(imageAttachment:configuration:) in conformance OnDeviceAttachmentTokenizer()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = EncodedImageArray.appendAndTokenize(image:configuration:);
  v4 = v0[3];

  return EncodedImageArray.appendAndTokenize(configuration:_:)(v4, &async function pointer to partial apply for closure #1 in EncodedImageArray.appendAndTokenize(image:configuration:), v2);
}

uint64_t protocol witness for AttachmentTokenizer.tokenize(imageSurfaceAttachment:configuration:) in conformance OnDeviceAttachmentTokenizer(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](protocol witness for AttachmentTokenizer.tokenize(imageSurfaceAttachment:configuration:) in conformance OnDeviceAttachmentTokenizer, 0, 0);
}

uint64_t protocol witness for AttachmentTokenizer.tokenize(imageSurfaceAttachment:configuration:) in conformance OnDeviceAttachmentTokenizer()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = EncodedImageArray.appendAndTokenize(preprocessedImage:configuration:);
  v4 = v0[3];

  return EncodedImageArray.appendAndTokenize(configuration:_:)(v4, &async function pointer to partial apply for closure #1 in EncodedImageArray.appendAndTokenize(imageSurface:configuration:), v2);
}

uint64_t protocol witness for AttachmentTokenizer.tokenize(preprocessedImageAttachment:configuration:) in conformance OnDeviceAttachmentTokenizer(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](protocol witness for AttachmentTokenizer.tokenize(preprocessedImageAttachment:configuration:) in conformance OnDeviceAttachmentTokenizer, 0, 0);
}

uint64_t protocol witness for AttachmentTokenizer.tokenize(preprocessedImageAttachment:configuration:) in conformance OnDeviceAttachmentTokenizer()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = EncodedImageArray.appendAndTokenize(image:configuration:);
  v4 = v0[3];

  return EncodedImageArray.appendAndTokenize(configuration:_:)(v4, &async function pointer to partial apply for closure #1 in EncodedImageArray.appendAndTokenize(preprocessedImage:configuration:), v2);
}

uint64_t partial apply for closure #1 in EncodedImageArray.appendAndTokenize(imageSurface:configuration:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in EncodedImageArray.appendAndTokenize(image:configuration:);

  return closure #1 in EncodedImageArray.appendAndTokenize(imageSurface:configuration:)(a1, v4);
}

uint64_t specialized OnDeviceAttachmentTokenizer.__allocating_init(imageTokenIDGenerator:useHighQualityImageTokenization:imageTokenizer:)(uint64_t a1, char a2, uint64_t a3)
{
  type metadata accessor for OnDeviceAttachmentTokenizer();
  v6 = swift_allocObject();
  type metadata accessor for EncodedImageArray();
  if (a3)
  {
    swift_allocObject();
    v7 = specialized EncodedImageArray.init(imageTokenIDGenerator:imageTokenizer:useHighQualityImageTokenization:)(a1, a3, a2 & 1);
  }

  else
  {
    v7 = swift_allocObject();
    *(v7 + 152) = MEMORY[0x277D84F90];
    *(v7 + 16) = a1;
    *(v7 + 24) = xmmword_220AEB790;
    *(v7 + 40) = xmmword_220AEB7A0;
    *(v7 + 56) = xmmword_220AEB7B0;
    *(v7 + 72) = 10000000;
    *(v7 + 80) = 0u;
    *(v7 + 96) = 0u;
    *(v7 + 112) = 0u;
    *(v7 + 128) = 0u;
    *(v7 + 144) = 0;
  }

  *(v6 + 16) = v7;
  return v6;
}

__n128 OnDeviceImagePreprocessor.__allocating_init(imageTokenizerConfiguration:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *(a1 + 48);
  v4 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v4;
  result = *(a1 + 32);
  *(v2 + 48) = result;
  *(v2 + 64) = v3;
  return result;
}

uint64_t OnDeviceImagePreprocessor.init(imageTokenizerConfiguration:)(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v3;
  *(v1 + 48) = *(a1 + 32);
  *(v1 + 64) = v2;
  return v1;
}

void OnDeviceImagePreprocessor.processCGImage(_:newImageDimension:)(CGImage *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  v10 = Width;
  v11 = Height;
  v12 = a2;
  if (Width > Height)
  {
    v13 = Width;
  }

  else
  {
    v13 = Height;
  }

  if (v13 == v12)
  {
    v12 = Height;
  }

  else if (v10 >= v11)
  {
    v14 = v11 / v10 * v12;
    v10 = a2;
    v12 = round(v14);
  }

  else
  {
    v10 = round(v10 / v11 * v12);
  }

  if (v10 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_35;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_36;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v12 >= 9.22337204e18)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v15 = v10;
  v16 = v12;
  v17 = v10 * v12;
  if ((v10 * v12) >> 64 != v17 >> 63)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if ((v17 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v18 = 4 * v17;
  if (4 * v17 < 0)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v18)
  {
    v19 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v19 + 16) = v18;
    bzero((v19 + 32), v18);
  }

  else
  {
    v19 = MEMORY[0x277D84F90];
  }

  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  if ((v15 - 0x2000000000000000) >> 62 != 3)
  {
    goto LABEL_42;
  }

  v54 = DeviceRGB;
  v21 = CGBitmapContextCreate((v19 + 32), v15, v16, v4[2], 4 * v15, DeviceRGB, 0x2006u);
  v22 = v21;
  if (v21)
  {
    CGContextSetInterpolationQuality(v21, kCGInterpolationLow);
    CGContextSetBlendMode(v22, kCGBlendModeCopy);
    v55 = a2;
    v56.size.width = v15;
    v56.size.height = v16;
    v56.origin.x = 0.0;
    v56.origin.y = 0.0;
    CGContextRef.draw(_:in:byTiling:)(a1, v56, 0);
    if ((*(v19 + 16) & 3) != 0)
    {
      goto LABEL_47;
    }

    v31 = v4[3];
    if (v31)
    {
      v32 = v4[2];
      v33 = v4[4];
      v34 = v4[5];
      v35 = v4[6];
      v36 = v4[7];
      v37 = v4[8];
      if (v55 == 0x8000000000000000 && v31 == -1)
      {
        __break(1u);
      }

      else
      {
        v38 = v55 / v31;
        if (!(v55 % v31))
        {
          if ((v38 * v38) >> 64 == (v38 * v38) >> 63)
          {
            v50 = v33;
            v51 = v35;
            v39 = v34;
            v52 = v36;
            v53 = v37;
            v49 = v32;
            specialized static CLIPImagePlanarizer.computedPaddingValue(pixelData:)(v19, v23, v24, v25, v26, v27, v28, v29, v30);
            v41 = v40;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
            v42 = swift_allocObject();
            *(v42 + 16) = xmmword_220AEC420;
            *(v42 + 32) = 1;
            *(v42 + 40) = v39;
            *(v42 + 48) = v31;
            *(v42 + 56) = v31;

            *a3 = v15;
            *(a3 + 8) = v16;
            *(a3 + 16) = v19;
            *(a3 + 24) = 4;
            *(a3 + 32) = v41;
            *(a3 + 40) = v55;
            *(a3 + 48) = v42;
            *(a3 + 56) = v49;
            *(a3 + 64) = v31;
            *(a3 + 72) = v50;
            *(a3 + 80) = v39;
            *(a3 + 88) = v51;
            *(a3 + 96) = v52;
            *(a3 + 104) = v53;
            *(a3 + 112) = v38 * v38;
            *(a3 + 120) = v38;
            return;
          }

          goto LABEL_44;
        }
      }

LABEL_47:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (one-time initialization token for device != -1)
  {
LABEL_45:
    swift_once();
  }

  v43 = type metadata accessor for Logger();
  __swift_project_value_buffer(v43, static Log.device);
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_220940000, v44, v45, "Failed to create CGContext for image to get the pixel data", v46, 2u);
    MEMORY[0x223D90A10](v46, -1, -1);
  }

  v47 = type metadata accessor for GenerationError();
  lazy protocol witness table accessor for type GenerationError and conformance GenerationError(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, MEMORY[0x277D71E28]);
  swift_allocError();
  (*(*(v47 - 8) + 104))(v48, *MEMORY[0x277D71E18], v47);
  swift_willThrow();
}

uint64_t OnDeviceImagePreprocessor.processSurfaceFastPath(surface:useHighQualityImageTokenization:)(void *a1, char a2)
{
  if (a2)
  {
    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Log.device);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_26;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_220940000, v5, v6, "Cannot use fast path for high quality image tokenization", v7, 2u);
    v8 = v7;
LABEL_25:
    MEMORY[0x223D90A10](v8, -1, -1);
LABEL_26:

    return 0;
  }

  v10 = v2[3];
  v11 = [a1 width];
  v12 = [a1 height];
  v13 = v12;
  if (v11 != v10 && v12 != v10)
  {
    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Log.device);
    v5 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v5, v17))
    {
      goto LABEL_26;
    }

    v18 = swift_slowAlloc();
    *v18 = 134218496;
    *(v18 + 4) = v11;
    *(v18 + 12) = 2048;
    *(v18 + 14) = v13;
    *(v18 + 22) = 2048;
    *(v18 + 24) = v10;
    v19 = "Cannot use fast path for image %ldx%ld, neither dimension is %ld";
    goto LABEL_24;
  }

  if (v10 < v11 || v10 < v12)
  {
    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Log.device);
    v5 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v5, v17))
    {
      goto LABEL_26;
    }

    v18 = swift_slowAlloc();
    *v18 = 134218496;
    *(v18 + 4) = v11;
    *(v18 + 12) = 2048;
    *(v18 + 14) = v13;
    *(v18 + 22) = 2048;
    *(v18 + 24) = v10;
    v19 = "Cannot use fast path for image %ldx%ld, max dimension is %ld";
LABEL_24:
    _os_log_impl(&dword_220940000, v5, v17, v19, v18, 0x20u);
    v8 = v18;
    goto LABEL_25;
  }

  v22 = [a1 pixelFormat];
  if (v22 != 1111970369)
  {
    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static Log.device);
    v36 = a1;
    v5 = Logger.logObject.getter();
    v37 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v5, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 67109120;
      *(v38 + 4) = [v36 pixelFormat];

      v39 = "Cannot use fast path for pixel format %u";
      v40 = v37;
      v41 = v5;
      v42 = v38;
      v43 = 8;
LABEL_45:
      _os_log_impl(&dword_220940000, v41, v40, v39, v42, v43);
      v8 = v38;
      goto LABEL_25;
    }

LABEL_46:

    return 0;
  }

  v23 = [a1 bytesPerRow];
  if ((v11 - 0x2000000000000000) >> 62 == 3)
  {
    v24 = 4 * v11;
    if (v23 == (4 * v11))
    {
      v3 = v2;
      if (one-time initialization token for device == -1)
      {
        goto LABEL_32;
      }

      goto LABEL_56;
    }

    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    __swift_project_value_buffer(v44, static Log.device);
    v36 = a1;
    v5 = Logger.logObject.getter();
    v45 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v5, v45))
    {
      v38 = swift_slowAlloc();
      *v38 = 134218240;
      *(v38 + 4) = [v36 bytesPerRow];

      *(v38 + 12) = 2048;
      *(v38 + 14) = v24;
      v39 = "Cannot use fast path for unpacked surface %ld != %ld";
      v40 = v45;
      v41 = v5;
      v42 = v38;
      v43 = 22;
      goto LABEL_45;
    }

    goto LABEL_46;
  }

  __break(1u);
LABEL_56:
  swift_once();
LABEL_32:
  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static Log.device);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 134218240;
    *(v28 + 4) = v11;
    *(v28 + 12) = 2048;
    *(v28 + 14) = v13;
    _os_log_impl(&dword_220940000, v26, v27, "Using image tokenizer IOSurface fast path for %ldx%ld surface", v28, 0x16u);
    MEMORY[0x223D90A10](v28, -1, -1);
  }

  v29 = [a1 bytesPerRow];
  v30 = v13 * v29;
  if ((v13 * v29) >> 64 != (v13 * v29) >> 63)
  {
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  [a1 lockWithOptions:1 seed:0];
  v31 = a1;
  v32 = [v31 baseAddress];
  v33 = v31;
  if (v30)
  {
    v34 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1g5(v30, 0);
    memcpy(v34 + 4, v32, v30);
  }

  else
  {
    v34 = MEMORY[0x277D84F90];
  }

  [v31 unlockWithOptions:1 seed:0];
  if ((v34[2] & 3) != 0)
  {
    goto LABEL_61;
  }

  v54 = v3[3];
  if (!v54)
  {
    goto LABEL_58;
  }

  v55 = v3[2];
  v56 = v3[4];
  v57 = v3[5];
  v58 = v3[6];
  v59 = v3[7];
  v60 = v3[8];
  if (v10 == 0x8000000000000000 && v54 == -1)
  {
    goto LABEL_60;
  }

  v61 = v10 / v54;
  if (!(v10 % v54))
  {
    v65 = v60;
    v66 = v55;
    v67 = v59;
    v68 = v58;
    v69 = v56;
    if ((v61 * v61) >> 64 == (v61 * v61) >> 63)
    {
      specialized static CLIPImagePlanarizer.computedPaddingValue(pixelData:)(v34, v46, v47, v48, v49, v50, v51, v52, v53);
      v63 = v62;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_220AEC420;
      *(v64 + 32) = 1;
      *(v64 + 40) = v57;
      *(v64 + 48) = v54;
      *(v64 + 56) = v54;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy24TokenGenerationInference14ProcessedImageVGMd);
      result = swift_allocObject();
      *(result + 16) = xmmword_220AE8A30;
      *(result + 32) = v11;
      *(result + 40) = v13;
      *(result + 48) = v34;
      *(result + 56) = 4;
      *(result + 64) = v63;
      *(result + 72) = v10;
      *(result + 80) = v64;
      *(result + 88) = v66;
      *(result + 96) = v54;
      *(result + 104) = v69;
      *(result + 112) = v57;
      *(result + 120) = v68;
      *(result + 128) = v67;
      *(result + 136) = v65;
      *(result + 144) = v61 * v61;
      *(result + 152) = v61;
      return result;
    }

    goto LABEL_59;
  }

LABEL_61:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

__n128 OnDeviceImagePreprocessor.processCGImage(_:useHighQualityImageTokenization:)(CGImage *a1, char a2)
{
  v6 = *(v2 + 24);
  OnDeviceImagePreprocessor.processCGImage(_:newImageDimension:)(a1, v6, v34);
  if (!v3)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
    v10 = *(v8 + 2);
    v9 = *(v8 + 3);
    if (v10 >= v9 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v8);
    }

    *(v8 + 2) = v10 + 1;
    v11 = &v8[128 * v10];
    v12 = v38;
    *(v11 + 96) = v37;
    *(v11 + 112) = v12;
    v13 = v40;
    *(v11 + 128) = v39;
    *(v11 + 144) = v13;
    v14 = v34[1];
    *(v11 + 32) = v34[0];
    *(v11 + 48) = v14;
    result.n128_u64[0] = v35;
    v15 = v36;
    *(v11 + 64) = v35;
    *(v11 + 80) = v15;
    if (a2)
    {
      v16 = *(v2 + 32);
      if (v16 < 1)
      {
LABEL_9:

        if (one-time initialization token for device != -1)
        {
          swift_once();
        }

        v17 = type metadata accessor for Logger();
        __swift_project_value_buffer(v17, static Log.device);
        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          *v20 = 134218240;
          *(v20 + 4) = v16;
          *(v20 + 12) = 2048;
          *(v20 + 14) = v6;
          _os_log_impl(&dword_220940000, v18, v19, "High quality image dimension %ld must be greater than 0 and a multiple of input image dimension %ld", v20, 0x16u);
          MEMORY[0x223D90A10](v20, -1, -1);
        }

        v21 = type metadata accessor for GenerationError();
        lazy protocol witness table accessor for type GenerationError and conformance GenerationError(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, MEMORY[0x277D71E28]);
        swift_allocError();
        (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277D71E18], v21);
        swift_willThrow();
        return result;
      }

      if (v6)
      {
        if (v16 % v6)
        {
          goto LABEL_9;
        }

        v23 = v8;
        OnDeviceImagePreprocessor.processCGImage(_:newImageDimension:)(a1, *(v2 + 32), v33);
        v29 = v33[4];
        v30 = v33[5];
        v31 = v33[6];
        v32 = v33[7];
        v25 = v33[0];
        v26 = v33[1];
        v8 = v23;
        v2 = *(v23 + 2);
        v11 = *(v23 + 3);
        v6 = v2 + 1;
        v27 = v33[2];
        v28 = v33[3];
        if (v2 < v11 >> 1)
        {
LABEL_15:
          *(v8 + 2) = v6;
          v24 = &v8[128 * v2];
          *(v24 + 4) = v27;
          *(v24 + 5) = v28;
          *(v24 + 2) = v25;
          *(v24 + 3) = v26;
          result = v29;
          *(v24 + 8) = v31;
          *(v24 + 9) = v32;
          *(v24 + 6) = v29;
          *(v24 + 7) = v30;
          return result;
        }
      }

      else
      {
        __break(1u);
      }

      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v6, 1, v8);
      goto LABEL_15;
    }
  }

  return result;
}

uint64_t OnDeviceImagePreprocessor.processImageAttachment(imageAttachment:useHighQualityImageTokenization:)(uint64_t a1, char a2)
{
  v4 = v2;
  v6 = Prompt.ImageAttachment.data.getter();
  v8 = v7;
  v9 = specialized OnDeviceImagePreprocessor.makeCGImageWithImageIO(data:newImageDimension:)(v6, v7);
  outlined consume of Data._Representation(v6, v8);
  if (!v3)
  {
    OnDeviceImagePreprocessor.processCGImage(_:useHighQualityImageTokenization:)(v9, a2 & 1);
    v4 = v10;
  }

  return v4;
}

void OnDeviceImagePreprocessor.processImageAttachment(imageSurfaceAttachment:useHighQualityImageTokenization:)(uint64_t a1, char a2)
{
  v4 = Prompt.ImageSurfaceAttachment.surface.getter();
  v5 = OnDeviceImagePreprocessor.processSurfaceFastPath(surface:useHighQualityImageTokenization:)(v4, a2);
  if (v2 || v5)
  {
LABEL_3:

    return;
  }

  if ([v4 pixelFormat] != 1111970369)
  {
    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Log.device);
    v20 = v4;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 67109120;
      *(v23 + 4) = [v20 pixelFormat];

      _os_log_impl(&dword_220940000, v21, v22, "Unsupported surface pixel format: %u", v23, 8u);
      MEMORY[0x223D90A10](v23, -1, -1);
    }

    else
    {

      v21 = v20;
    }

    v24 = type metadata accessor for GenerationError();
    lazy protocol witness table accessor for type GenerationError and conformance GenerationError(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, MEMORY[0x277D71E28]);
    swift_allocError();
    (*(*(v24 - 8) + 104))(v25, *MEMORY[0x277D71E18], v24);
    swift_willThrow();
    goto LABEL_3;
  }

  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  [v4 lockWithOptions:1 seed:0];
  v7 = [v4 width];
  space = DeviceRGB;
  height = [v4 height];
  v8 = [v4 bytesPerRow];
  v9 = v4;
  v10 = [v9 baseAddress];
  v11 = [v9 bytesPerRow];
  v12 = [v9 height];
  if ((v11 * v12) >> 64 != (v11 * v12) >> 63)
  {
    __break(1u);
    goto LABEL_16;
  }

  v13 = specialized Data.init(bytes:count:)(v10, v11 * v12);
  v15 = v14;
  isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v13, v15);
  v17 = CGDataProviderCreateWithCFData(isa);

  if (!v17)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v18 = CGImageCreate(v7, height, 8uLL, 0x20uLL, v8, space, 0x2006u, v17, 0, 0, kCGRenderingIntentDefault);

  if (v18)
  {
    [v9 unlockWithOptions:1 seed:0];
    OnDeviceImagePreprocessor.processCGImage(_:useHighQualityImageTokenization:)(v18, a2 & 1);

    return;
  }

LABEL_17:
  __break(1u);
}

uint64_t specialized OnDeviceImagePreprocessor.makeCGImageWithImageIO(data:newImageDimension:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v7 = CGImageSourceCreateWithData(isa, 0);

  if (!v7)
  {
    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Log.device);
    outlined copy of Data._Representation(a1, a2);
    ImageAtIndex = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(ImageAtIndex, v12))
    {
      result = swift_slowAlloc();
      *result = 134217984;
      v13 = a2 >> 62;
      if ((a2 >> 62) > 1)
      {
        if (v13 == 2)
        {
          v18 = *(a1 + 16);
          v17 = *(a1 + 24);
          v19 = __OFSUB__(v17, v18);
          v14 = v17 - v18;
          if (v19)
          {
            __break(1u);
            do
            {
              if (v14 != 2)
              {
                v16 = 0;
                goto LABEL_36;
              }

              v21 = *(a1 + 16);
              v20 = *(a1 + 24);
              v19 = __OFSUB__(v20, v21);
              v16 = v20 - v21;
              if (!v19)
              {
                goto LABEL_36;
              }

              __break(1u);
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_yptGMd);
              inited = swift_initStackObject();
              *(inited + 16) = xmmword_220AE8A30;
              v29 = *MEMORY[0x277CD3650];
              *(inited + 32) = *MEMORY[0x277CD3650];
              *(inited + 64) = ImageAtIndex;
              *(inited + 40) = 8;
              v30 = v29;
              _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ypTt0g5Tf4g_n(inited);
              swift_setDeallocating();
              outlined destroy of (CFStringRef, Any)(inited + 32);
              v9 = Dictionary._bridgeToObjectiveC()().super.isa;

              ImageAtIndex = CGImageSourceCreateImageAtIndex(v12, 0, v9);

              if (ImageAtIndex)
              {

                return ImageAtIndex;
              }

              if (one-time initialization token for device != -1)
              {
                swift_once();
              }

              v15 = type metadata accessor for Logger();
              __swift_project_value_buffer(v15, static Log.device);
              a1 = v31;
              outlined copy of Data._Representation(v31, a2);
              ImageAtIndex = Logger.logObject.getter();
              v3 = static os_log_type_t.error.getter();
              if (!os_log_type_enabled(ImageAtIndex, v3))
              {
                outlined consume of Data._Representation(v31, a2);
                goto LABEL_37;
              }

              result = swift_slowAlloc();
              *result = 134217984;
              v14 = a2 >> 62;
            }

            while ((a2 >> 62) > 1);
            if (v14)
            {
              LODWORD(v16) = HIDWORD(v31) - v31;
              if (__OFSUB__(HIDWORD(v31), v31))
              {
                goto LABEL_40;
              }

              v16 = v16;
            }

            else
            {
              v16 = BYTE6(a2);
            }

LABEL_36:
            *(result + 4) = v16;
            v25 = result;
            outlined consume of Data._Representation(v31, a2);
            _os_log_impl(&dword_220940000, ImageAtIndex, v3, "Failed to create CGImage from %ld bytes using)", v25, 0xCu);
            MEMORY[0x223D90A10](v25, -1, -1);
LABEL_37:

            v26 = type metadata accessor for GenerationError();
            lazy protocol witness table accessor for type GenerationError and conformance GenerationError(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, MEMORY[0x277D71E28]);
            swift_allocError();
            (*(*(v26 - 8) + 104))(v27, *MEMORY[0x277D71E18], v26);
            swift_willThrow();

            return ImageAtIndex;
          }
        }

        else
        {
          v14 = 0;
        }
      }

      else if (v13)
      {
        LODWORD(v14) = HIDWORD(a1) - a1;
        if (__OFSUB__(HIDWORD(a1), a1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        v14 = v14;
      }

      else
      {
        v14 = BYTE6(a2);
      }

      *(result + 4) = v14;
      v22 = result;
      outlined consume of Data._Representation(a1, a2);
      _os_log_impl(&dword_220940000, ImageAtIndex, v12, "Failed to create CGImageSource with %ld bytes", v22, 0xCu);
      MEMORY[0x223D90A10](v22, -1, -1);
    }

    else
    {
      outlined consume of Data._Representation(a1, a2);
    }

    v23 = type metadata accessor for GenerationError();
    lazy protocol witness table accessor for type GenerationError and conformance GenerationError(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, MEMORY[0x277D71E28]);
    swift_allocError();
    (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277D71E18], v23);
    swift_willThrow();
    return ImageAtIndex;
  }

  result = CGImageSourceCopyPropertiesAtIndex(v7, 0, 0);
  if (!result)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  v32 = 0;
  type metadata accessor for CFStringRef(0);
  lazy protocol witness table accessor for type GenerationError and conformance GenerationError(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
  result = static Dictionary._forceBridgeFromObjectiveC(_:result:)();
LABEL_42:
  __break(1u);
  return result;
}

uint64_t specialized Data.init(bytes:count:)(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return specialized Data.InlineData.init(_:)(a1, &a1[a2]);
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  __DataStorage.init(bytes:length:)();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  type metadata accessor for Data.RangeReference();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t lazy protocol witness table accessor for type GenerationError and conformance GenerationError(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined destroy of (CFStringRef, Any)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11CFStringRefa_yptMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t instantiation function for generic protocol witness table for LLMModelAssetMetadata.DraftMetadata(uint64_t a1)
{
  v2 = MEMORY[0x277D29B58];
  *(a1 + 8) = lazy protocol witness table accessor for type LLMModelAssetMetadata.DraftMetadata and conformance LLMModelAssetMetadata.DraftMetadata(&lazy protocol witness table cache variable for type LLMModelAssetMetadata.DraftMetadata and conformance LLMModelAssetMetadata.DraftMetadata, MEMORY[0x277D29B58]);
  result = lazy protocol witness table accessor for type LLMModelAssetMetadata.DraftMetadata and conformance LLMModelAssetMetadata.DraftMetadata(&lazy protocol witness table cache variable for type LLMModelAssetMetadata.DraftMetadata and conformance LLMModelAssetMetadata.DraftMetadata, v2);
  *(a1 + 16) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for LLMDraftModelAssetMetadata.DraftMetadata(uint64_t a1)
{
  v2 = MEMORY[0x277D29980];
  *(a1 + 8) = lazy protocol witness table accessor for type LLMModelAssetMetadata.DraftMetadata and conformance LLMModelAssetMetadata.DraftMetadata(&lazy protocol witness table cache variable for type LLMDraftModelAssetMetadata.DraftMetadata and conformance LLMDraftModelAssetMetadata.DraftMetadata, MEMORY[0x277D29980]);
  result = lazy protocol witness table accessor for type LLMModelAssetMetadata.DraftMetadata and conformance LLMModelAssetMetadata.DraftMetadata(&lazy protocol witness table cache variable for type LLMDraftModelAssetMetadata.DraftMetadata and conformance LLMDraftModelAssetMetadata.DraftMetadata, v2);
  *(a1 + 16) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for LLMAdapterAssetMetadata.DraftMetadata(uint64_t a1)
{
  v2 = MEMORY[0x277D29C00];
  *(a1 + 8) = lazy protocol witness table accessor for type LLMModelAssetMetadata.DraftMetadata and conformance LLMModelAssetMetadata.DraftMetadata(&lazy protocol witness table cache variable for type LLMAdapterAssetMetadata.DraftMetadata and conformance LLMAdapterAssetMetadata.DraftMetadata, MEMORY[0x277D29C00]);
  result = lazy protocol witness table accessor for type LLMModelAssetMetadata.DraftMetadata and conformance LLMModelAssetMetadata.DraftMetadata(&lazy protocol witness table cache variable for type LLMAdapterAssetMetadata.DraftMetadata and conformance LLMAdapterAssetMetadata.DraftMetadata, v2);
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ClassifierOutputClass(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ClassifierOutputClass(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 12) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ClassifierMetadata(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for ClassifierMetadata(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MetadataSpecialToken(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for MetadataSpecialToken(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t MetadataSpecialToken.encode(to:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v20 = a2;
  v21 = a4;
  v18 = a3;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24TokenGenerationInference015MetadataSpecialD0O16StringCodingKeys33_00FC6DBF691860C008D9C69E9A6F04F6LLOGMd);
  v17 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24TokenGenerationInference015MetadataSpecialD0O13IntCodingKeys33_00FC6DBF691860C008D9C69E9A6F04F6LLOGMd);
  v16 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24TokenGenerationInference015MetadataSpecialD0O10CodingKeys33_00FC6DBF691860C008D9C69E9A6F04F6LLOGMd);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MetadataSpecialToken.CodingKeys and conformance MetadataSpecialToken.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v21)
  {
    v23 = 1;
    lazy protocol witness table accessor for type MetadataSpecialToken.StringCodingKeys and conformance MetadataSpecialToken.StringCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v14 = v19;
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v17 + 8))(v6, v14);
  }

  else
  {
    v22 = 0;
    lazy protocol witness table accessor for type MetadataSpecialToken.IntCodingKeys and conformance MetadataSpecialToken.IntCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v16 + 8))(v9, v7);
  }

  return (*(v11 + 8))(v13, v10);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance MetadataSpecialToken.CodingKeys()
{
  if (*v0)
  {
    return 0x676E69727473;
  }

  else
  {
    return 7630441;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MetadataSpecialToken.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7630441 && a2 == 0xE300000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x676E69727473 && a2 == 0xE600000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MetadataSpecialToken.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MetadataSpecialToken.CodingKeys and conformance MetadataSpecialToken.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MetadataSpecialToken.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MetadataSpecialToken.CodingKeys and conformance MetadataSpecialToken.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MetadataSpecialToken.IntCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MetadataSpecialToken.IntCodingKeys and conformance MetadataSpecialToken.IntCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MetadataSpecialToken.IntCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MetadataSpecialToken.IntCodingKeys and conformance MetadataSpecialToken.IntCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MetadataSpecialToken.IntCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MetadataSpecialToken.StringCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MetadataSpecialToken.StringCodingKeys and conformance MetadataSpecialToken.StringCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MetadataSpecialToken.StringCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MetadataSpecialToken.StringCodingKeys and conformance MetadataSpecialToken.StringCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance MetadataSpecialToken@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized MetadataSpecialToken.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance MetadataSpecialToken(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *(a2 + 16);
  if (*(a1 + 16) != 1)
  {
    return (v3 == v4) & ~v5;
  }

  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = a1[1];
  if (v3 == v4 && v6 == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

unint64_t specialized SpecialTokenMetadataProtocol.mapToDictionary()()
{
  v0 = type metadata accessor for Prompt.SpecialToken();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v77 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_24TokenGenerationInference015MetadataSpecialC0OTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v5 = MEMORY[0x223D8C3D0]();
  if ((v6 & 1) == 0)
  {
    v7 = v5;
    static Prompt.SpecialToken.startPrompt.getter();
    v8 = Prompt.SpecialToken.identifier.getter();
    v10 = v9;
    (*(v1 + 8))(v3, v0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v78 = v4;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, 0, 0, v8, v10, isUniquelyReferenced_nonNull_native);

    v4 = v78;
  }

  v12 = MEMORY[0x223D8C3B0](v5);
  if (v13)
  {
    v14 = v12;
    v15 = v13;
    static Prompt.SpecialToken.endPrompt.getter();
    v16 = Prompt.SpecialToken.identifier.getter();
    v18 = v17;
    (*(v1 + 8))(v3, v0);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v78 = v4;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, v15, 1, v16, v18, v19);

    v4 = v78;
  }

  v20 = MEMORY[0x223D8C3A0](v12);
  if (v21)
  {
    v22 = v20;
    v23 = v21;
    static Prompt.SpecialToken.Chat.instructions.getter();
    v24 = Prompt.SpecialToken.identifier.getter();
    v26 = v25;
    (*(v1 + 8))(v3, v0);
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v78 = v4;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v22, v23, 1, v24, v26, v27);

    v4 = v78;
  }

  v28 = MEMORY[0x223D8C390](v20);
  if (v29)
  {
    v30 = v28;
    v31 = v29;
    static Prompt.SpecialToken.Chat.user.getter();
    v32 = Prompt.SpecialToken.identifier.getter();
    v34 = v33;
    (*(v1 + 8))(v3, v0);
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v78 = v4;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v30, v31, 1, v32, v34, v35);

    v4 = v78;
  }

  v36 = MEMORY[0x223D8C3E0](v28);
  if (v37)
  {
    v38 = v36;
    v39 = v37;
    static Prompt.SpecialToken.Chat.response.getter();
    v40 = Prompt.SpecialToken.identifier.getter();
    v42 = v41;
    (*(v1 + 8))(v3, v0);
    v43 = swift_isUniquelyReferenced_nonNull_native();
    v78 = v4;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v38, v39, 1, v40, v42, v43);

    v4 = v78;
  }

  v44 = MEMORY[0x223D8C400](v36);
  if (v45)
  {
    v46 = v44;
    v47 = v45;
    static Prompt.SpecialToken.Chat.turnEnd.getter();
    v48 = Prompt.SpecialToken.identifier.getter();
    v50 = v49;
    (*(v1 + 8))(v3, v0);
    v51 = swift_isUniquelyReferenced_nonNull_native();
    v78 = v4;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v46, v47, 1, v48, v50, v51);

    v4 = v78;
  }

  v52 = MEMORY[0x223D8C410](v44);
  if (v53)
  {
    v54 = v52;
    v55 = v53;
    static Prompt.SpecialToken.Chat.defaultInstructions.getter();
    v56 = Prompt.SpecialToken.identifier.getter();
    v58 = v57;
    (*(v1 + 8))(v3, v0);
    v59 = swift_isUniquelyReferenced_nonNull_native();
    v78 = v4;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v54, v55, 1, v56, v58, v59);

    v4 = v78;
  }

  v60 = MEMORY[0x223D8C3F0](v52);
  if (v61)
  {
    v62 = v60;
    v63 = v61;
    static Prompt.SpecialToken.startImageStr.getter();
    v64 = Prompt.SpecialToken.identifier.getter();
    v66 = v65;
    (*(v1 + 8))(v3, v0);
    v67 = swift_isUniquelyReferenced_nonNull_native();
    v78 = v4;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v62, v63, 1, v64, v66, v67);

    v4 = v78;
  }

  v68 = MEMORY[0x223D8C3C0](v60);
  if (v69)
  {
    v70 = v68;
    v71 = v69;
    static Prompt.SpecialToken.endImageStr.getter();
    v72 = Prompt.SpecialToken.identifier.getter();
    v74 = v73;
    (*(v1 + 8))(v3, v0);
    v75 = swift_isUniquelyReferenced_nonNull_native();
    v78 = v4;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v70, v71, 1, v72, v74, v75);

    return v78;
  }

  return v4;
}

{
  v0 = type metadata accessor for Prompt.SpecialToken();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v77 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_24TokenGenerationInference015MetadataSpecialC0OTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v5 = MEMORY[0x223D8BFF0]();
  if ((v6 & 1) == 0)
  {
    v7 = v5;
    static Prompt.SpecialToken.startPrompt.getter();
    v8 = Prompt.SpecialToken.identifier.getter();
    v10 = v9;
    (*(v1 + 8))(v3, v0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v78 = v4;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, 0, 0, v8, v10, isUniquelyReferenced_nonNull_native);

    v4 = v78;
  }

  v12 = MEMORY[0x223D8BFD0](v5);
  if (v13)
  {
    v14 = v12;
    v15 = v13;
    static Prompt.SpecialToken.endPrompt.getter();
    v16 = Prompt.SpecialToken.identifier.getter();
    v18 = v17;
    (*(v1 + 8))(v3, v0);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v78 = v4;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, v15, 1, v16, v18, v19);

    v4 = v78;
  }

  v20 = MEMORY[0x223D8BFC0](v12);
  if (v21)
  {
    v22 = v20;
    v23 = v21;
    static Prompt.SpecialToken.Chat.instructions.getter();
    v24 = Prompt.SpecialToken.identifier.getter();
    v26 = v25;
    (*(v1 + 8))(v3, v0);
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v78 = v4;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v22, v23, 1, v24, v26, v27);

    v4 = v78;
  }

  v28 = MEMORY[0x223D8BFB0](v20);
  if (v29)
  {
    v30 = v28;
    v31 = v29;
    static Prompt.SpecialToken.Chat.user.getter();
    v32 = Prompt.SpecialToken.identifier.getter();
    v34 = v33;
    (*(v1 + 8))(v3, v0);
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v78 = v4;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v30, v31, 1, v32, v34, v35);

    v4 = v78;
  }

  v36 = MEMORY[0x223D8C000](v28);
  if (v37)
  {
    v38 = v36;
    v39 = v37;
    static Prompt.SpecialToken.Chat.response.getter();
    v40 = Prompt.SpecialToken.identifier.getter();
    v42 = v41;
    (*(v1 + 8))(v3, v0);
    v43 = swift_isUniquelyReferenced_nonNull_native();
    v78 = v4;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v38, v39, 1, v40, v42, v43);

    v4 = v78;
  }

  v44 = MEMORY[0x223D8C020](v36);
  if (v45)
  {
    v46 = v44;
    v47 = v45;
    static Prompt.SpecialToken.Chat.turnEnd.getter();
    v48 = Prompt.SpecialToken.identifier.getter();
    v50 = v49;
    (*(v1 + 8))(v3, v0);
    v51 = swift_isUniquelyReferenced_nonNull_native();
    v78 = v4;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v46, v47, 1, v48, v50, v51);

    v4 = v78;
  }

  v52 = MEMORY[0x223D8C030](v44);
  if (v53)
  {
    v54 = v52;
    v55 = v53;
    static Prompt.SpecialToken.Chat.defaultInstructions.getter();
    v56 = Prompt.SpecialToken.identifier.getter();
    v58 = v57;
    (*(v1 + 8))(v3, v0);
    v59 = swift_isUniquelyReferenced_nonNull_native();
    v78 = v4;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v54, v55, 1, v56, v58, v59);

    v4 = v78;
  }

  v60 = MEMORY[0x223D8C010](v52);
  if (v61)
  {
    v62 = v60;
    v63 = v61;
    static Prompt.SpecialToken.startImageStr.getter();
    v64 = Prompt.SpecialToken.identifier.getter();
    v66 = v65;
    (*(v1 + 8))(v3, v0);
    v67 = swift_isUniquelyReferenced_nonNull_native();
    v78 = v4;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v62, v63, 1, v64, v66, v67);

    v4 = v78;
  }

  v68 = MEMORY[0x223D8BFE0](v60);
  if (v69)
  {
    v70 = v68;
    v71 = v69;
    static Prompt.SpecialToken.endImageStr.getter();
    v72 = Prompt.SpecialToken.identifier.getter();
    v74 = v73;
    (*(v1 + 8))(v3, v0);
    v75 = swift_isUniquelyReferenced_nonNull_native();
    v78 = v4;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v70, v71, 1, v72, v74, v75);

    return v78;
  }

  return v4;
}

{
  v0 = type metadata accessor for Prompt.SpecialToken();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v77 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_24TokenGenerationInference015MetadataSpecialC0OTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v5 = MEMORY[0x223D8C700]();
  if ((v6 & 1) == 0)
  {
    v7 = v5;
    static Prompt.SpecialToken.startPrompt.getter();
    v8 = Prompt.SpecialToken.identifier.getter();
    v10 = v9;
    (*(v1 + 8))(v3, v0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v78 = v4;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, 0, 0, v8, v10, isUniquelyReferenced_nonNull_native);

    v4 = v78;
  }

  v12 = MEMORY[0x223D8C6E0](v5);
  if (v13)
  {
    v14 = v12;
    v15 = v13;
    static Prompt.SpecialToken.endPrompt.getter();
    v16 = Prompt.SpecialToken.identifier.getter();
    v18 = v17;
    (*(v1 + 8))(v3, v0);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v78 = v4;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, v15, 1, v16, v18, v19);

    v4 = v78;
  }

  v20 = MEMORY[0x223D8C6D0](v12);
  if (v21)
  {
    v22 = v20;
    v23 = v21;
    static Prompt.SpecialToken.Chat.instructions.getter();
    v24 = Prompt.SpecialToken.identifier.getter();
    v26 = v25;
    (*(v1 + 8))(v3, v0);
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v78 = v4;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v22, v23, 1, v24, v26, v27);

    v4 = v78;
  }

  v28 = MEMORY[0x223D8C6C0](v20);
  if (v29)
  {
    v30 = v28;
    v31 = v29;
    static Prompt.SpecialToken.Chat.user.getter();
    v32 = Prompt.SpecialToken.identifier.getter();
    v34 = v33;
    (*(v1 + 8))(v3, v0);
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v78 = v4;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v30, v31, 1, v32, v34, v35);

    v4 = v78;
  }

  v36 = MEMORY[0x223D8C710](v28);
  if (v37)
  {
    v38 = v36;
    v39 = v37;
    static Prompt.SpecialToken.Chat.response.getter();
    v40 = Prompt.SpecialToken.identifier.getter();
    v42 = v41;
    (*(v1 + 8))(v3, v0);
    v43 = swift_isUniquelyReferenced_nonNull_native();
    v78 = v4;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v38, v39, 1, v40, v42, v43);

    v4 = v78;
  }

  v44 = MEMORY[0x223D8C730](v36);
  if (v45)
  {
    v46 = v44;
    v47 = v45;
    static Prompt.SpecialToken.Chat.turnEnd.getter();
    v48 = Prompt.SpecialToken.identifier.getter();
    v50 = v49;
    (*(v1 + 8))(v3, v0);
    v51 = swift_isUniquelyReferenced_nonNull_native();
    v78 = v4;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v46, v47, 1, v48, v50, v51);

    v4 = v78;
  }

  v52 = MEMORY[0x223D8C740](v44);
  if (v53)
  {
    v54 = v52;
    v55 = v53;
    static Prompt.SpecialToken.Chat.defaultInstructions.getter();
    v56 = Prompt.SpecialToken.identifier.getter();
    v58 = v57;
    (*(v1 + 8))(v3, v0);
    v59 = swift_isUniquelyReferenced_nonNull_native();
    v78 = v4;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v54, v55, 1, v56, v58, v59);

    v4 = v78;
  }

  v60 = MEMORY[0x223D8C720](v52);
  if (v61)
  {
    v62 = v60;
    v63 = v61;
    static Prompt.SpecialToken.startImageStr.getter();
    v64 = Prompt.SpecialToken.identifier.getter();
    v66 = v65;
    (*(v1 + 8))(v3, v0);
    v67 = swift_isUniquelyReferenced_nonNull_native();
    v78 = v4;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v62, v63, 1, v64, v66, v67);

    v4 = v78;
  }

  v68 = MEMORY[0x223D8C6F0](v60);
  if (v69)
  {
    v70 = v68;
    v71 = v69;
    static Prompt.SpecialToken.endImageStr.getter();
    v72 = Prompt.SpecialToken.identifier.getter();
    v74 = v73;
    (*(v1 + 8))(v3, v0);
    v75 = swift_isUniquelyReferenced_nonNull_native();
    v78 = v4;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v70, v71, 1, v72, v74, v75);

    return v78;
  }

  return v4;
}

uint64_t specialized LocalizationMetadataProtocol.mapToDictionary()(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v218 = a7;
  v219 = a6;
  v220 = a5;
  v221 = a4;
  v222 = a3;
  v10 = type metadata accessor for Prompt.SpecialToken();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v213 = &v210 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v214 = &v210 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v215 = &v210 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v216 = &v210 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v217 = &v210 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v210 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v210 - v25;
  v27 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SDySS24TokenGenerationInference015MetadataSpecialC0OGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v225 = v7;
  v28 = a1();
  v223 = v11;
  v224 = v10;
  if (v28)
  {
    v29 = v28;
    v212 = a2;
    v226 = v27;
    static Prompt.SpecialToken.localeInstruction.getter();
    v210 = Prompt.SpecialToken.identifier.getter();
    v211 = v30;
    (*(v11 + 8))(v26, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS24TokenGenerationInference015MetadataSpecialC0OGMd);
    result = static _DictionaryStorage.copy(original:)();
    v32 = result;
    v33 = 0;
    v34 = 1 << *(v29 + 32);
    v35 = -1;
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    v36 = v35 & *(v29 + 64);
    v37 = (v34 + 63) >> 6;
    for (i = result + 64; v36; result = )
    {
      v39 = __clz(__rbit64(v36));
      v36 &= v36 - 1;
LABEL_11:
      v42 = v39 | (v33 << 6);
      v43 = (*(v29 + 48) + 16 * v42);
      v44 = *v43;
      result = v43[1];
      v45 = (*(v29 + 56) + 16 * v42);
      v46 = *v45;
      v47 = v45[1];
      *(i + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v42;
      v48 = (v32[6] + 16 * v42);
      *v48 = v44;
      v48[1] = result;
      v49 = v32[7] + 24 * v42;
      *v49 = v46;
      *(v49 + 8) = v47;
      *(v49 + 16) = 1;
      v50 = v32[2];
      v51 = __OFADD__(v50, 1);
      v52 = v50 + 1;
      if (v51)
      {
        goto LABEL_107;
      }

      v32[2] = v52;
    }

    v40 = v33;
    while (1)
    {
      v33 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      if (v33 >= v37)
      {

        v53 = v226;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v227 = v53;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v32, v210, v211, isUniquelyReferenced_nonNull_native);

        v27 = v227;
        v11 = v223;
        v10 = v224;
        a2 = v212;
        goto LABEL_15;
      }

      v41 = *(v29 + 64 + 8 * v33);
      ++v40;
      if (v41)
      {
        v39 = __clz(__rbit64(v41));
        v36 = (v41 - 1) & v41;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_101;
  }

LABEL_15:
  v55 = a2();
  if (v55)
  {
    v56 = v55;
    v226 = v27;
    static Prompt.SpecialToken.localeInstructionInjectionLocation.getter();
    v211 = Prompt.SpecialToken.identifier.getter();
    v212 = v57;
    (*(v11 + 8))(v24, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS24TokenGenerationInference015MetadataSpecialC0OGMd);
    result = static _DictionaryStorage.copy(original:)();
    v58 = result;
    v59 = 0;
    v60 = 1 << *(v56 + 32);
    v61 = -1;
    if (v60 < 64)
    {
      v61 = ~(-1 << v60);
    }

    v62 = v61 & *(v56 + 64);
    v63 = (v60 + 63) >> 6;
    for (j = result + 64; v62; result = )
    {
      v65 = __clz(__rbit64(v62));
      v62 &= v62 - 1;
LABEL_25:
      v68 = v65 | (v59 << 6);
      v69 = (*(v56 + 48) + 16 * v68);
      v70 = *v69;
      result = v69[1];
      v71 = (*(v56 + 56) + 16 * v68);
      v72 = *v71;
      v73 = v71[1];
      *(j + ((v68 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v68;
      v74 = (v58[6] + 16 * v68);
      *v74 = v70;
      v74[1] = result;
      v75 = v58[7] + 24 * v68;
      *v75 = v72;
      *(v75 + 8) = v73;
      *(v75 + 16) = 1;
      v76 = v58[2];
      v51 = __OFADD__(v76, 1);
      v77 = v76 + 1;
      if (v51)
      {
        goto LABEL_108;
      }

      v58[2] = v77;
    }

    v66 = v59;
    while (1)
    {
      v59 = v66 + 1;
      if (__OFADD__(v66, 1))
      {
        break;
      }

      if (v59 >= v63)
      {

        v78 = v226;
        v79 = swift_isUniquelyReferenced_nonNull_native();
        v227 = v78;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v58, v211, v212, v79);

        v27 = v227;
        v11 = v223;
        v10 = v224;
        goto LABEL_29;
      }

      v67 = *(v56 + 64 + 8 * v59);
      ++v66;
      if (v67)
      {
        v65 = __clz(__rbit64(v67));
        v62 = (v67 - 1) & v67;
        goto LABEL_25;
      }
    }

LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

LABEL_29:
  v80 = v222();
  if (v80)
  {
    v81 = v80;
    v226 = v27;
    v82 = v217;
    static Prompt.SpecialToken.Chat.instructions.getter();
    v212 = Prompt.SpecialToken.identifier.getter();
    v222 = v83;
    (*(v11 + 8))(v82, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS24TokenGenerationInference015MetadataSpecialC0OGMd);
    result = static _DictionaryStorage.copy(original:)();
    v84 = result;
    v85 = 0;
    v86 = 1 << *(v81 + 32);
    v87 = -1;
    if (v86 < 64)
    {
      v87 = ~(-1 << v86);
    }

    v88 = v87 & *(v81 + 64);
    v89 = (v86 + 63) >> 6;
    for (k = result + 64; v88; result = )
    {
      v91 = __clz(__rbit64(v88));
      v88 &= v88 - 1;
LABEL_39:
      v94 = v91 | (v85 << 6);
      v95 = (*(v81 + 48) + 16 * v94);
      v96 = *v95;
      result = v95[1];
      v97 = (*(v81 + 56) + 16 * v94);
      v98 = *v97;
      v99 = v97[1];
      *(k + ((v94 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v94;
      v100 = (v84[6] + 16 * v94);
      *v100 = v96;
      v100[1] = result;
      v101 = v84[7] + 24 * v94;
      *v101 = v98;
      *(v101 + 8) = v99;
      *(v101 + 16) = 1;
      v102 = v84[2];
      v51 = __OFADD__(v102, 1);
      v103 = v102 + 1;
      if (v51)
      {
        goto LABEL_109;
      }

      v84[2] = v103;
    }

    v92 = v85;
    while (1)
    {
      v85 = v92 + 1;
      if (__OFADD__(v92, 1))
      {
        goto LABEL_102;
      }

      if (v85 >= v89)
      {

        v104 = v226;
        v105 = swift_isUniquelyReferenced_nonNull_native();
        v227 = v104;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v84, v212, v222, v105);

        v27 = v227;
        v11 = v223;
        v10 = v224;
        break;
      }

      v93 = *(v81 + 64 + 8 * v85);
      ++v92;
      if (v93)
      {
        v91 = __clz(__rbit64(v93));
        v88 = (v93 - 1) & v93;
        goto LABEL_39;
      }
    }
  }

  v106 = v221();
  if (v106)
  {
    v107 = v106;
    v226 = v27;
    v108 = v216;
    static Prompt.SpecialToken.Chat.defaultInstructions.getter();
    v221 = Prompt.SpecialToken.identifier.getter();
    v222 = v109;
    (*(v11 + 8))(v108, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS24TokenGenerationInference015MetadataSpecialC0OGMd);
    result = static _DictionaryStorage.copy(original:)();
    v110 = result;
    v111 = 0;
    v112 = 1 << *(v107 + 32);
    v113 = -1;
    if (v112 < 64)
    {
      v113 = ~(-1 << v112);
    }

    v114 = v113 & *(v107 + 64);
    v115 = (v112 + 63) >> 6;
    for (m = result + 64; v114; result = )
    {
      v117 = __clz(__rbit64(v114));
      v114 &= v114 - 1;
LABEL_53:
      v120 = v117 | (v111 << 6);
      v121 = (*(v107 + 48) + 16 * v120);
      v122 = *v121;
      result = v121[1];
      v123 = (*(v107 + 56) + 16 * v120);
      v124 = *v123;
      v125 = v123[1];
      *(m + ((v120 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v120;
      v126 = (v110[6] + 16 * v120);
      *v126 = v122;
      v126[1] = result;
      v127 = v110[7] + 24 * v120;
      *v127 = v124;
      *(v127 + 8) = v125;
      *(v127 + 16) = 1;
      v128 = v110[2];
      v51 = __OFADD__(v128, 1);
      v129 = v128 + 1;
      if (v51)
      {
        goto LABEL_110;
      }

      v110[2] = v129;
    }

    v118 = v111;
    while (1)
    {
      v111 = v118 + 1;
      if (__OFADD__(v118, 1))
      {
        goto LABEL_103;
      }

      if (v111 >= v115)
      {

        v130 = v226;
        v131 = swift_isUniquelyReferenced_nonNull_native();
        v227 = v130;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v110, v221, v222, v131);

        v27 = v227;
        v11 = v223;
        v10 = v224;
        break;
      }

      v119 = *(v107 + 64 + 8 * v111);
      ++v118;
      if (v119)
      {
        v117 = __clz(__rbit64(v119));
        v114 = (v119 - 1) & v119;
        goto LABEL_53;
      }
    }
  }

  v132 = v220();
  if (v132)
  {
    v133 = v132;
    v226 = v27;
    v134 = v215;
    static Prompt.SpecialToken.Chat.response.getter();
    v221 = Prompt.SpecialToken.identifier.getter();
    v222 = v135;
    (*(v11 + 8))(v134, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS24TokenGenerationInference015MetadataSpecialC0OGMd);
    result = static _DictionaryStorage.copy(original:)();
    v136 = result;
    v137 = 0;
    v138 = 1 << *(v133 + 32);
    v139 = -1;
    if (v138 < 64)
    {
      v139 = ~(-1 << v138);
    }

    v140 = v139 & *(v133 + 64);
    v141 = (v138 + 63) >> 6;
    for (n = result + 64; v140; result = )
    {
      v143 = __clz(__rbit64(v140));
      v140 &= v140 - 1;
LABEL_67:
      v146 = v143 | (v137 << 6);
      v147 = (*(v133 + 48) + 16 * v146);
      v148 = *v147;
      result = v147[1];
      v149 = (*(v133 + 56) + 16 * v146);
      v150 = *v149;
      v151 = v149[1];
      *(n + ((v146 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v146;
      v152 = (v136[6] + 16 * v146);
      *v152 = v148;
      v152[1] = result;
      v153 = v136[7] + 24 * v146;
      *v153 = v150;
      *(v153 + 8) = v151;
      *(v153 + 16) = 1;
      v154 = v136[2];
      v51 = __OFADD__(v154, 1);
      v155 = v154 + 1;
      if (v51)
      {
        goto LABEL_111;
      }

      v136[2] = v155;
    }

    v144 = v137;
    while (1)
    {
      v137 = v144 + 1;
      if (__OFADD__(v144, 1))
      {
        goto LABEL_104;
      }

      if (v137 >= v141)
      {

        v156 = v226;
        v157 = swift_isUniquelyReferenced_nonNull_native();
        v227 = v156;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v136, v221, v222, v157);

        v27 = v227;
        v11 = v223;
        v10 = v224;
        break;
      }

      v145 = *(v133 + 64 + 8 * v137);
      ++v144;
      if (v145)
      {
        v143 = __clz(__rbit64(v145));
        v140 = (v145 - 1) & v145;
        goto LABEL_67;
      }
    }
  }

  v158 = v219();
  if (!v158)
  {
LABEL_85:
    v184 = v218();
    if (!v184)
    {
      return v27;
    }

    v185 = v184;
    v226 = v27;
    v186 = v213;
    static Prompt.SpecialToken.Chat.turnEnd.getter();
    v224 = Prompt.SpecialToken.identifier.getter();
    v225 = v187;
    (*(v11 + 8))(v186, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS24TokenGenerationInference015MetadataSpecialC0OGMd);
    result = static _DictionaryStorage.copy(original:)();
    v188 = result;
    v189 = 0;
    v190 = 1 << *(v185 + 32);
    v191 = -1;
    if (v190 < 64)
    {
      v191 = ~(-1 << v190);
    }

    v192 = v191 & *(v185 + 64);
    v193 = (v190 + 63) >> 6;
    for (ii = result + 64; v192; result = )
    {
      v195 = __clz(__rbit64(v192));
      v192 &= v192 - 1;
LABEL_95:
      v198 = v195 | (v189 << 6);
      v199 = (*(v185 + 48) + 16 * v198);
      v200 = *v199;
      result = v199[1];
      v201 = (*(v185 + 56) + 16 * v198);
      v202 = *v201;
      v203 = v201[1];
      *(ii + ((v198 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v198;
      v204 = (v188[6] + 16 * v198);
      *v204 = v200;
      v204[1] = result;
      v205 = v188[7] + 24 * v198;
      *v205 = v202;
      *(v205 + 8) = v203;
      *(v205 + 16) = 1;
      v206 = v188[2];
      v51 = __OFADD__(v206, 1);
      v207 = v206 + 1;
      if (v51)
      {
        goto LABEL_113;
      }

      v188[2] = v207;
    }

    v196 = v189;
    while (1)
    {
      v189 = v196 + 1;
      if (__OFADD__(v196, 1))
      {
        goto LABEL_106;
      }

      if (v189 >= v193)
      {

        v208 = v226;
        v209 = swift_isUniquelyReferenced_nonNull_native();
        v227 = v208;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v188, v224, v225, v209);

        return v227;
      }

      v197 = *(v185 + 64 + 8 * v189);
      ++v196;
      if (v197)
      {
        v195 = __clz(__rbit64(v197));
        v192 = (v197 - 1) & v197;
        goto LABEL_95;
      }
    }
  }

  v159 = v158;
  v226 = v27;
  v160 = v214;
  static Prompt.SpecialToken.Chat.user.getter();
  v221 = Prompt.SpecialToken.identifier.getter();
  v222 = v161;
  (*(v11 + 8))(v160, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS24TokenGenerationInference015MetadataSpecialC0OGMd);
  result = static _DictionaryStorage.copy(original:)();
  v162 = result;
  v163 = 0;
  v164 = 1 << *(v159 + 32);
  v165 = -1;
  if (v164 < 64)
  {
    v165 = ~(-1 << v164);
  }

  v166 = v165 & *(v159 + 64);
  v167 = (v164 + 63) >> 6;
  for (jj = result + 64; v166; result = )
  {
    v169 = __clz(__rbit64(v166));
    v166 &= v166 - 1;
LABEL_81:
    v172 = v169 | (v163 << 6);
    v173 = (*(v159 + 48) + 16 * v172);
    v174 = *v173;
    result = v173[1];
    v175 = (*(v159 + 56) + 16 * v172);
    v176 = *v175;
    v177 = v175[1];
    *(jj + ((v172 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v172;
    v178 = (v162[6] + 16 * v172);
    *v178 = v174;
    v178[1] = result;
    v179 = v162[7] + 24 * v172;
    *v179 = v176;
    *(v179 + 8) = v177;
    *(v179 + 16) = 1;
    v180 = v162[2];
    v51 = __OFADD__(v180, 1);
    v181 = v180 + 1;
    if (v51)
    {
      goto LABEL_112;
    }

    v162[2] = v181;
  }

  v170 = v163;
  while (1)
  {
    v163 = v170 + 1;
    if (__OFADD__(v170, 1))
    {
      break;
    }

    if (v163 >= v167)
    {

      v182 = v226;
      v183 = swift_isUniquelyReferenced_nonNull_native();
      v227 = v182;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v162, v221, v222, v183);

      v27 = v227;
      v11 = v223;
      v10 = v224;
      goto LABEL_85;
    }

    v171 = *(v159 + 64 + 8 * v163);
    ++v170;
    if (v171)
    {
      v169 = __clz(__rbit64(v171));
      v166 = (v171 - 1) & v171;
      goto LABEL_81;
    }
  }

LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
  return result;
}

uint64_t E5Function.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24TokenGenerationInference10E5FunctionV10CodingKeys33_00FC6DBF691860C008D9C69E9A6F04F6LLOGMd);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type E5Function.CodingKeys and conformance E5Function.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[12] = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance E5Function.CodingKeys()
{
  v1 = 1701869940;
  v2 = 0x6E654C716573;
  if (*v0 != 2)
  {
    v2 = 0x6E654C787463;
  }

  if (*v0)
  {
    v1 = 0x5472657470616461;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance E5Function.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized E5Function.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance E5Function.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type E5Function.CodingKeys and conformance E5Function.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance E5Function.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type E5Function.CodingKeys and conformance E5Function.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

double protocol witness for Decodable.init(from:) in conformance E5Function@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  specialized E5Function.init(from:)(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t StopToken.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24TokenGenerationInference04StopD0V10CodingKeys33_00FC6DBF691860C008D9C69E9A6F04F6LLOGMd);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type StopToken.CodingKeys and conformance StopToken.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v5)
  {
    v13 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance StopToken.CodingKeys()
{
  if (*v0)
  {
    return 0x6156676E69727473;
  }

  else
  {
    return 0x65756C6156746E69;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance StopToken.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65756C6156746E69 && a2 == 0xE800000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6156676E69727473 && a2 == 0xEB0000000065756CLL)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance StopToken.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StopToken.CodingKeys and conformance StopToken.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance StopToken.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StopToken.CodingKeys and conformance StopToken.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance StopToken@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized StopToken.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance StopToken(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a2 + 24);
  if (v4)
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v9 = *(a2 + 8);
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

  if (v6)
  {
    if (v7 && (v5 == *(a2 + 16) && v6 == v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v7)
  {
    return 1;
  }

  return 0;
}

unint64_t DefaultParameters.CodingKeys.stringValue.getter(char a1)
{
  result = 0x6574537466617264;
  switch(a1)
  {
    case 1:
      return 0x4173497466617264;
    case 2:
      return 0x6572547466617264;
    case 3:
      return 0xD000000000000018;
    case 4:
      return 0xD000000000000017;
    case 5:
      return 0xD000000000000013;
    case 6:
      return 0xD000000000000010;
    case 7:
      return 0xD000000000000024;
    case 8:
      v3 = 9;
      goto LABEL_16;
    case 9:
      return 0xD000000000000012;
    case 10:
      v3 = 5;
      goto LABEL_16;
    case 11:
      return 0x74617265706D6574;
    case 12:
      return 0xD000000000000010;
    case 13:
      v3 = 13;
LABEL_16:
      result = v3 | 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t DefaultParameters.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24TokenGenerationInference17DefaultParametersV10CodingKeys33_00FC6DBF691860C008D9C69E9A6F04F6LLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DefaultParameters.CodingKeys and conformance DefaultParameters.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v15 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = v3[48];
    v15 = 4;
    v14 = v9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10 = v3[56];
    v15 = 7;
    v14 = v10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11 = v3[100];
    v15 = 11;
    v14 = v11;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = 12;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = 13;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance DefaultParameters.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized DefaultParameters.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DefaultParameters.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DefaultParameters.CodingKeys and conformance DefaultParameters.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DefaultParameters.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DefaultParameters.CodingKeys and conformance DefaultParameters.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

double protocol witness for Decodable.init(from:) in conformance DefaultParameters@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  specialized DefaultParameters.init(from:)(a1, v8);
  if (!v2)
  {
    v5 = v12;
    *(a2 + 64) = v11;
    *(a2 + 80) = v5;
    *(a2 + 96) = v13;
    *(a2 + 112) = v14;
    v6 = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = v6;
    result = *&v9;
    v7 = v10;
    *(a2 + 32) = v9;
    *(a2 + 48) = v7;
  }

  return result;
}

unint64_t ModelMetadata.CodingKeys.stringValue.getter(char a1)
{
  result = 0x7079546C65646F6DLL;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001ALL;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
    case 11:
      result = 0xD00000000000001DLL;
      break;
    case 7:
      result = 0x617A696C61636F6CLL;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0x656B6F54706F7473;
      break;
    case 12:
      result = 0xD000000000000022;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t ModelMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24TokenGenerationInference13ModelMetadataV10CodingKeys33_00FC6DBF691860C008D9C69E9A6F04F6LLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ModelMetadata.CodingKeys and conformance ModelMetadata.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v32[0]) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    *&v32[0] = *(v3 + 16);
    LOBYTE(v24) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd);
    lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v32[0] = *(v3 + 24);
    LOBYTE(v24) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS24TokenGenerationInference10E5FunctionVGMd);
    lazy protocol witness table accessor for type [String : E5Function] and conformance <> [A : B]();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v35 = *(v3 + 32);
    v34 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS24TokenGenerationInference015MetadataSpecialA0OGMd);
    lazy protocol witness table accessor for type [String : MetadataSpecialToken] and conformance <> [A : B]();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v9 = *(v3 + 120);
    v32[4] = *(v3 + 104);
    v32[5] = v9;
    v32[6] = *(v3 + 136);
    v33 = *(v3 + 152);
    v10 = *(v3 + 56);
    v32[0] = *(v3 + 40);
    v32[1] = v10;
    v11 = *(v3 + 88);
    v32[2] = *(v3 + 72);
    v32[3] = v11;
    v12 = *(v3 + 120);
    v28 = *(v3 + 104);
    v29 = v12;
    v30 = *(v3 + 136);
    v31 = *(v3 + 152);
    v13 = *(v3 + 56);
    v24 = *(v3 + 40);
    v25 = v13;
    v14 = *(v3 + 88);
    v26 = *(v3 + 72);
    v27 = v14;
    v23 = 4;
    outlined init with copy of DefaultParameters?(v32, v21);
    lazy protocol witness table accessor for type DefaultParameters and conformance DefaultParameters();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v21[4] = v28;
    v21[5] = v29;
    v21[6] = v30;
    v22 = v31;
    v21[0] = v24;
    v21[1] = v25;
    v21[2] = v26;
    v21[3] = v27;
    outlined destroy of [Int](v21, &_s24TokenGenerationInference17DefaultParametersVSgMd);
    LOBYTE(v18) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    *&v18 = *(v3 + 176);
    v20 = 6;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v18 = *(v3 + 184);
    v20 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSDySS24TokenGenerationInference015MetadataSpecialA0OGGMd);
    lazy protocol witness table accessor for type [String : [String : MetadataSpecialToken]] and conformance <> [A : B]();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v18) = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = *(v3 + 216);
    v18 = *(v3 + 200);
    *&v19 = v15;
    v20 = 9;
    lazy protocol witness table accessor for type ClassifierMetadata and conformance ClassifierMetadata();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v16 = *(v3 + 240);
    v18 = *(v3 + 224);
    v19 = v16;
    v20 = 10;
    lazy protocol witness table accessor for type StopToken and conformance StopToken();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v18) = 11;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    type metadata accessor for ModelMetadata();
    LOBYTE(v18) = 12;
    type metadata accessor for PromptPreprocessingTemplateVersion();
    lazy protocol witness table accessor for type LLMModelAssetMetadata.DraftMetadata and conformance LLMModelAssetMetadata.DraftMetadata(&lazy protocol witness table cache variable for type PromptPreprocessingTemplateVersion and conformance PromptPreprocessingTemplateVersion, MEMORY[0x277D71ED8]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ModelMetadata.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v51 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24TokenGenerationInference13ModelMetadataV10CodingKeys33_00FC6DBF691860C008D9C69E9A6F04F6LLOGMd);
  v54 = *(v6 - 8);
  v55 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v51 - v7;
  v9 = type metadata accessor for ModelMetadata();
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v12 + 40) = 0u;
  v87 = v12 + 40;
  *(v12 + 104) = 0u;
  *(v12 + 88) = 0u;
  *(v12 + 72) = 0u;
  *(v12 + 56) = 0u;
  *(v12 + 15) = 0;
  *(v12 + 16) = 1;
  *(v12 + 17) = 0;
  *(v12 + 18) = 0;
  *(v12 + 76) = 0;
  v13 = *(v10 + 72);
  v14 = type metadata accessor for PromptPreprocessingTemplateVersion();
  v15 = *(*(v14 - 8) + 56);
  v60 = v13;
  v15(&v12[v13], 1, 1, v14);
  v16 = a1[3];
  v59 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  lazy protocol witness table accessor for type ModelMetadata.CodingKeys and conformance ModelMetadata.CodingKeys();
  v56 = v8;
  v17 = v61;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v62 = v12;
  if (v17)
  {
    v61 = v17;
    __swift_destroy_boxed_opaque_existential_1(v59);
    swift_bridgeObjectRelease_n();
    v57 = 0;
    v58 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 1;
LABEL_4:
    v24 = *(v87 + 5);
    v83 = *(v87 + 4);
    v84 = v24;
    v85 = *(v87 + 6);
    v86 = *(v87 + 56);
    v25 = *(v87 + 1);
    v79 = *v87;
    v80 = v25;
    v26 = *(v87 + 3);
    v81 = *(v87 + 2);
    v82 = v26;
    outlined destroy of [Int](&v79, &_s24TokenGenerationInference17DefaultParametersVSgMd);

    outlined consume of ClassifierMetadata?(v21, v22);
    outlined consume of StopToken?(v57, v20, v58, v23);
    return outlined destroy of [Int](&v62[v60], &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd);
  }

  v51[5] = v14;
  v52 = v5;
  LOBYTE(v79) = 0;
  v18 = KeyedDecodingContainer.decode(_:forKey:)();
  v19 = v87;
  *v12 = v18;
  *(v12 + 1) = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd);
  LOBYTE(v76[0]) = 1;
  lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B]);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v51[1] = v79;
  *(v12 + 2) = v79;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS24TokenGenerationInference10E5FunctionVGMd);
  LOBYTE(v76[0]) = 2;
  lazy protocol witness table accessor for type [String : E5Function] and conformance <> [A : B]();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v51[4] = v79;
  *(v12 + 3) = v79;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS24TokenGenerationInference015MetadataSpecialA0OGMd);
  LOBYTE(v76[0]) = 3;
  lazy protocol witness table accessor for type [String : MetadataSpecialToken] and conformance <> [A : B]();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v51[3] = v79;
  *(v12 + 4) = v79;
  v78 = 4;
  lazy protocol witness table accessor for type DefaultParameters and conformance DefaultParameters();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v72 = v83;
  v73 = v84;
  v74 = v85;
  v75 = v86;
  v68 = v79;
  v69 = v80;
  v70 = v81;
  v71 = v82;
  v29 = *v19;
  v30 = *(v19 + 1);
  v31 = *(v19 + 3);
  v76[2] = *(v19 + 2);
  v76[3] = v31;
  v76[0] = v29;
  v76[1] = v30;
  v32 = *(v19 + 4);
  v33 = *(v19 + 5);
  v34 = *(v19 + 6);
  v77 = *(v19 + 56);
  v76[5] = v33;
  v76[6] = v34;
  v76[4] = v32;
  outlined destroy of [Int](v76, &_s24TokenGenerationInference17DefaultParametersVSgMd);
  v35 = v73;
  *(v19 + 4) = v72;
  *(v19 + 5) = v35;
  *(v19 + 6) = v74;
  *(v19 + 56) = v75;
  v36 = v69;
  *v19 = v68;
  *(v19 + 1) = v36;
  v37 = v71;
  *(v19 + 2) = v70;
  *(v19 + 3) = v37;
  LOBYTE(v63) = 5;
  *(v12 + 20) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v12 + 21) = v38;
  v51[2] = v38;
  v67 = 6;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *(v12 + 22) = v63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSDySS24TokenGenerationInference015MetadataSpecialA0OGGMd);
  v67 = 7;
  lazy protocol witness table accessor for type [String : [String : MetadataSpecialToken]] and conformance <> [A : B]();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *(v12 + 23) = v63;
  LOBYTE(v63) = 8;
  v39 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v12[192] = v39;
  v67 = 9;
  lazy protocol witness table accessor for type ClassifierMetadata and conformance ClassifierMetadata();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v61 = 0;
  v40 = v64;
  v41 = v65;
  v21 = v63;
  v42 = v62;
  *(v62 + 25) = v63;
  *(v42 + 26) = v40;
  v22 = v40;
  *(v42 + 27) = v41;
  v67 = 10;
  lazy protocol witness table accessor for type StopToken and conformance StopToken();
  v43 = v61;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v61 = v43;
  if (v43)
  {
    (*(v54 + 8))(v56, v55);
    __swift_destroy_boxed_opaque_existential_1(v59);
    v57 = 0;
    v58 = 0;
    v20 = 0;
    v23 = 1;
LABEL_5:

    goto LABEL_4;
  }

  v44 = v64;
  v45 = v65;
  v46 = v66;
  v57 = v63;
  v58 = v65;
  v47 = v62;
  *(v62 + 28) = v63;
  v47[29] = v44;
  v20 = v44;
  v47[30] = v45;
  v47[31] = v46;
  v23 = v46;
  LOBYTE(v63) = 11;
  v48 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v61 = 0;
  v62[256] = v48;
  LOBYTE(v63) = 12;
  lazy protocol witness table accessor for type LLMModelAssetMetadata.DraftMetadata and conformance LLMModelAssetMetadata.DraftMetadata(&lazy protocol witness table cache variable for type PromptPreprocessingTemplateVersion and conformance PromptPreprocessingTemplateVersion, MEMORY[0x277D71ED8]);
  v49 = v61;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v61 = v49;
  if (v49)
  {
    (*(v54 + 8))(v56, v55);
    __swift_destroy_boxed_opaque_existential_1(v59);
    goto LABEL_5;
  }

  (*(v54 + 8))(v56, v55);
  v50 = v62;
  outlined assign with take of PromptPreprocessingTemplateVersion?(v52, &v62[v60]);
  outlined init with copy of ModelMetadata(v50, v53);
  __swift_destroy_boxed_opaque_existential_1(v59);
  return outlined destroy of ModelMetadata(v50);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ModelMetadata.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized ModelMetadata.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ModelMetadata.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ModelMetadata.CodingKeys and conformance ModelMetadata.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModelMetadata.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ModelMetadata.CodingKeys and conformance ModelMetadata.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ModelMetadata.init(from:metadataUrl:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v174 = &v155 - v7;
  v8 = type metadata accessor for PromptPreprocessingTemplateVersion();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v159 = &v155 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog21LLMModelAssetMetadataV34PromptPreprocessingTemplateVersionOSgMd);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v155 - v12;
  v179 = type metadata accessor for LLMModelAssetMetadata.PromptPreprocessingTemplateVersion();
  v176 = *(v179 - 8);
  v14 = MEMORY[0x28223BE20](v179);
  v160 = &v155 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v166 = &v155 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog21LLMModelAssetMetadataV05DraftE0VSgMd);
  MEMORY[0x28223BE20](v17 - 8);
  v170 = &v155 - v18;
  v172 = type metadata accessor for LLMModelAssetMetadata.DraftMetadata();
  v171 = *(v172 - 8);
  v19 = MEMORY[0x28223BE20](v172);
  v164 = &v155 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v163 = &v155 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog21LLMModelAssetMetadataV18DeviceLocalizationVSgMd);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v155 - v23;
  v169 = type metadata accessor for LLMModelAssetMetadata.DeviceLocalization();
  v168 = *(v169 - 8);
  MEMORY[0x28223BE20](v169);
  v162 = &v155 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog9StopTokenVSgMd);
  MEMORY[0x28223BE20](v26 - 8);
  v185 = &v155 - v27;
  v167 = type metadata accessor for StopToken();
  v186 = *(v167 - 8);
  MEMORY[0x28223BE20](v167);
  v161 = &v155 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog21LLMModelAssetMetadataV22DeviceSpecialTokensMapVSgMd);
  v30 = MEMORY[0x28223BE20](v29 - 8);
  v184 = &v155 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v33 = &v155 - v32;
  v183 = type metadata accessor for LLMModelAssetMetadata.DeviceSpecialTokensMap();
  v190 = *(v183 - 8);
  MEMORY[0x28223BE20](v183);
  v178 = &v155 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = type metadata accessor for LLMModelAssetMetadata.ANEExtendInfo();
  v35 = *(v199 - 8);
  v36 = MEMORY[0x28223BE20](v199);
  v198 = &v155 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v197 = &v155 - v38;
  *(a3 + 32) = 0u;
  v177 = (a3 + 32);
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 136) = 0;
  *(a3 + 144) = 0;
  *(a3 + 128) = 1;
  *(a3 + 152) = 0;
  *(a3 + 160) = 0u;
  *(a3 + 176) = 0u;
  *(a3 + 192) = 2;
  *(a3 + 200) = 0u;
  *(a3 + 216) = 0u;
  *(a3 + 232) = 0u;
  *(a3 + 248) = 1;
  *(a3 + 256) = 2;
  v39 = *(type metadata accessor for ModelMetadata() + 64);
  v165 = v9;
  v40 = *(v9 + 56);
  v156 = v39;
  v158 = v9 + 56;
  v157 = v40;
  v40(a3 + v39, 1, 1, v8);
  *a3 = LLMModelAssetMetadata.modelType.getter();
  *(a3 + 8) = v41;
  *(a3 + 16) = LLMModelAssetMetadata.adapterTypeToSymbolMapping.getter();
  v218 = a1;
  v42 = LLMModelAssetMetadata.e5FunctionNameMap.getter();
  v180 = v24;
  v188 = a3;
  v189 = a2;
  v175 = v8;
  v173 = v13;
  if (v42)
  {
    v43 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS24TokenGenerationInference10E5FunctionVGMd);
    v44 = static _DictionaryStorage.copy(original:)();
    v45 = v44;
    v46 = 0;
    v200 = v43;
    v47 = *(v43 + 64);
    v182 = v43 + 64;
    v48 = 1 << *(v43 + 32);
    v49 = -1;
    if (v48 < 64)
    {
      v49 = ~(-1 << v48);
    }

    v50 = v49 & v47;
    v181 = (v48 + 63) >> 6;
    v194 = v35 + 16;
    v196 = v35;
    v193 = v35 + 8;
    v192 = v44 + 64;
    v191 = v33;
    v195 = v44;
    if (v50)
    {
      while (1)
      {
        v51 = __clz(__rbit64(v50));
        v201 = (v50 - 1) & v50;
LABEL_11:
        v54 = v51 | (v46 << 6);
        v206 = 16 * v54;
        v55 = *(v200 + 56);
        v56 = (*(v200 + 48) + 16 * v54);
        v57 = v56[1];
        v207 = *v56;
        v58 = v196;
        v59 = *(v196 + 16);
        v60 = v197;
        v61 = v199;
        v59(v197, v55 + *(v196 + 72) * v54, v199);
        v62 = v198;
        v59(v198, v60, v61);
        v63 = v57;

        v64 = LLMModelAssetMetadata.ANEExtendInfo.type.getter();
        v205 = v65;
        v204 = LLMModelAssetMetadata.ANEExtendInfo.adapterType.getter();
        v203 = v66;
        v202 = LLMModelAssetMetadata.ANEExtendInfo.seqLen.getter();
        v67 = LLMModelAssetMetadata.ANEExtendInfo.ctxLen.getter();
        v68 = *(v58 + 8);
        v68(v62, v61);
        v68(v60, v61);
        *(v192 + ((v54 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v54;
        v45 = v195;
        v69 = (*(v195 + 48) + v206);
        *v69 = v207;
        v69[1] = v63;
        v70 = (*(v45 + 56) + 48 * v54);
        v71 = v205;
        *v70 = v64;
        v70[1] = v71;
        v72 = v203;
        v70[2] = v204;
        v70[3] = v72;
        v70[4] = v202;
        v70[5] = v67;
        v73 = *(v45 + 16);
        v74 = __OFADD__(v73, 1);
        v75 = v73 + 1;
        if (v74)
        {
          break;
        }

        *(v45 + 16) = v75;
        v33 = v191;
        v50 = v201;
        if (!v201)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      v52 = v46;
      while (1)
      {
        v46 = v52 + 1;
        if (__OFADD__(v52, 1))
        {
          break;
        }

        if (v46 >= v181)
        {

          a3 = v188;
          goto LABEL_16;
        }

        v53 = *(v182 + 8 * v46);
        ++v52;
        if (v53)
        {
          v51 = __clz(__rbit64(v53));
          v201 = (v53 - 1) & v53;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_47;
  }

  v45 = 0;
LABEL_16:
  *(a3 + 24) = v45;
  LLMModelAssetMetadata.specialTokensMap.getter();
  v76 = v190;
  v77 = *(v190 + 48);
  v78 = v33;
  v79 = v33;
  v80 = v183;
  if (v77(v78, 1, v183) == 1)
  {
    outlined destroy of [Int](v79, &_s12ModelCatalog21LLMModelAssetMetadataV22DeviceSpecialTokensMapVSgMd);
  }

  else
  {
    v81 = v178;
    (*(v76 + 32))(v178, v79, v80);
    v82 = v76;
    v83 = specialized SpecialTokenMetadataProtocol.mapToDictionary()();
    v84 = v82;
    a3 = v188;
    (*(v84 + 8))(v81, v80);
    *v177 = v83;
  }

  v85 = v184;
  LLMModelAssetMetadata.specialTokensMap.getter();
  if (v77(v85, 1, v80) == 1)
  {
    outlined destroy of [Int](v85, &_s12ModelCatalog21LLMModelAssetMetadataV22DeviceSpecialTokensMapVSgMd);
    v210 = 0u;
    v211 = 0u;
    *&v212 = 0;
  }

  else
  {
    *(&v211 + 1) = v80;
    *&v212 = MEMORY[0x277D29BA8];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v210);
    (*(v190 + 32))(boxed_opaque_existential_1, v85, v80);
  }

  v87 = v189;
  v88 = v186;
  v89 = v185;
  v90 = type metadata accessor for LLMModelAssetMetadata();
  lazy protocol witness table accessor for type LLMModelAssetMetadata.DraftMetadata and conformance LLMModelAssetMetadata.DraftMetadata(&lazy protocol witness table cache variable for type LLMModelAssetMetadata and conformance LLMModelAssetMetadata, MEMORY[0x277D29BB8]);
  v91 = v187;
  AssetMetadata.stopToken(metadataURL:deviceSpecialTokensMap:)();
  if (v91)
  {
    v92 = type metadata accessor for URL();
    (*(*(v92 - 8) + 8))(v87, v92);
    (*(*(v90 - 8) + 8))(v218, v90);
    outlined destroy of [Int](&v210, &_s12ModelCatalog30DeviceSpecialTokensMapProtocol_pSgMd);
    return outlined destroy of ModelMetadata(a3);
  }

  v207 = v90;
  outlined destroy of [Int](&v210, &_s12ModelCatalog30DeviceSpecialTokensMapProtocol_pSgMd);
  v94 = v167;
  v95 = (*(v88 + 48))(v89, 1, v167);
  v206 = 0;
  if (v95 == 1)
  {
    outlined destroy of [Int](v89, &_s12ModelCatalog9StopTokenVSgMd);
    v96 = v171;
    v97 = v169;
    v98 = v175;
    v99 = v173;
  }

  else
  {
    v100 = v161;
    (*(v88 + 32))(v161, v89, v94);
    v101 = StopToken.intValue.getter();
    v103 = v102;
    v104 = StopToken.stringValue.getter();
    v105 = v88;
    v107 = v106;
    (*(v105 + 8))(v100, v94);
    v108 = v103 & 1;
    v99 = v173;
    *(a3 + 224) = v101;
    *(a3 + 232) = v108;
    v98 = v175;
    *(a3 + 240) = v104;
    *(a3 + 248) = v107;
    v96 = v171;
    v97 = v169;
  }

  *(a3 + 160) = LLMModelAssetMetadata.backboneSignature.getter();
  *(a3 + 168) = v109;
  *(a3 + 176) = LLMModelAssetMetadata.adapterTypeToSignatureMapping.getter();
  v110 = v180;
  LLMModelAssetMetadata.localization.getter();
  v111 = v168;
  if ((*(v168 + 48))(v110, 1, v97) == 1)
  {
    outlined destroy of [Int](v180, &_s12ModelCatalog21LLMModelAssetMetadataV18DeviceLocalizationVSgMd);
  }

  else
  {
    v112 = v162;
    (*(v111 + 32))(v162, v180, v97);
    v113 = specialized LocalizationMetadataProtocol.mapToDictionary()(MEMORY[0x277D29B88], MEMORY[0x277D29BA0], MEMORY[0x277D29B78], MEMORY[0x277D29B98], MEMORY[0x277D29B80], MEMORY[0x277D29B70], MEMORY[0x277D29B90]);
    (*(v111 + 8))(v112, v97);
    *(a3 + 184) = v113;
  }

  *(a3 + 192) = LLMModelAssetMetadata.allowPromptFallback.getter();
  v114 = v170;
  LLMModelAssetMetadata.defaultParameters.getter();
  v115 = v172;
  if ((*(v96 + 48))(v114, 1, v172) == 1)
  {
    outlined destroy of [Int](v114, &_s12ModelCatalog21LLMModelAssetMetadataV05DraftE0VSgMd);
  }

  else
  {
    v116 = v163;
    (*(v96 + 32))(v163, v114, v115);
    v117 = v164;
    (*(v96 + 16))(v164, v116, v115);
    _s24TokenGenerationInference17DefaultParametersV4fromAcA21DraftMetadataProtocol_p_tcfCTf4en_n12ModelCatalog013LLMModelAssetH0V0gH0V_Tt0g5(v117, v208);
    (*(v96 + 8))(v116, v115);
    v118 = *(a3 + 104);
    v119 = *(a3 + 136);
    v215 = *(a3 + 120);
    v216 = v119;
    v217 = *(a3 + 152);
    v210 = *(a3 + 40);
    v120 = *(a3 + 72);
    v211 = *(a3 + 56);
    v212 = v120;
    v213 = *(a3 + 88);
    v214 = v118;
    outlined destroy of [Int](&v210, &_s24TokenGenerationInference17DefaultParametersVSgMd);
    v121 = v208[5];
    *(a3 + 104) = v208[4];
    *(a3 + 120) = v121;
    *(a3 + 136) = v208[6];
    v122 = v208[1];
    *(a3 + 40) = v208[0];
    *(a3 + 56) = v122;
    v123 = v208[3];
    *(a3 + 72) = v208[2];
    *(a3 + 152) = v209;
    *(a3 + 88) = v123;
  }

  v124 = LLMModelAssetMetadata.prewarmForConstrainedDecoding.getter();
  if (v124 != 2)
  {
    *(a3 + 256) = v124;
  }

  LLMModelAssetMetadata.promptPreprocessingTemplateVersion.getter();
  v125 = v176;
  v126 = v179;
  if ((*(v176 + 48))(v99, 1, v179) == 1)
  {
    v127 = type metadata accessor for URL();
    (*(*(v127 - 8) + 8))(v189, v127);
    (*(*(v207 - 8) + 8))(v218);
    return outlined destroy of [Int](v99, &_s12ModelCatalog21LLMModelAssetMetadataV34PromptPreprocessingTemplateVersionOSgMd);
  }

  else
  {
    v128 = *(v125 + 32);
    v129 = v99;
    v130 = v125;
    v131 = v166;
    v128(v166, v129, v126);
    LLMModelAssetMetadata.PromptPreprocessingTemplateVersion.rawValue.getter();
    v132 = v174;
    PromptPreprocessingTemplateVersion.init(rawValue:)();
    if ((*(v165 + 48))(v132, 1, v98) == 1)
    {
      outlined destroy of [Int](v174, &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd);
      if (one-time initialization token for device == -1)
      {
LABEL_40:
        v133 = type metadata accessor for Logger();
        __swift_project_value_buffer(v133, static Log.device);
        v134 = v176;
        v135 = v160;
        v136 = v166;
        (*(v176 + 16))(v160, v166, v179);
        v137 = Logger.logObject.getter();
        v138 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v137, v138))
        {
          v139 = swift_slowAlloc();
          v140 = swift_slowAlloc();
          *&v210 = v140;
          *v139 = 136315138;
          v141 = LLMModelAssetMetadata.PromptPreprocessingTemplateVersion.rawValue.getter();
          v143 = v142;
          v144 = *(v134 + 8);
          v144(v135, v179);
          v145 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v141, v143, &v210);

          *(v139 + 4) = v145;
          _os_log_impl(&dword_220940000, v137, v138, "Invalid promptPreprocessingTemplateVersion: %s", v139, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v140);
          v136 = v166;
          MEMORY[0x223D90A10](v140, -1, -1);
          MEMORY[0x223D90A10](v139, -1, -1);
        }

        else
        {

          v144 = *(v134 + 8);
          v144(v135, v179);
        }

        v150 = type metadata accessor for TokenGenerationError();
        lazy protocol witness table accessor for type LLMModelAssetMetadata.DraftMetadata and conformance LLMModelAssetMetadata.DraftMetadata(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, MEMORY[0x277D71B08]);
        swift_allocError();
        v152 = v151;
        *&v210 = 0;
        *(&v210 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(46);

        *&v210 = 0xD00000000000002CLL;
        *(&v210 + 1) = 0x8000000220AFC8B0;
        v153 = LLMModelAssetMetadata.PromptPreprocessingTemplateVersion.rawValue.getter();
        MEMORY[0x223D8E780](v153);

        TokenGenerationError.Context.init(debugDescription:underlyingError:)();
        (*(*(v150 - 8) + 104))(v152, *MEMORY[0x277D71AF0], v150);
        swift_willThrow();
        v154 = type metadata accessor for URL();
        (*(*(v154 - 8) + 8))(v189, v154);
        (*(*(v207 - 8) + 8))(v218);
        v144(v136, v179);
        a3 = v188;
        return outlined destroy of ModelMetadata(a3);
      }

LABEL_47:
      swift_once();
      goto LABEL_40;
    }

    v146 = type metadata accessor for URL();
    (*(*(v146 - 8) + 8))(v189, v146);
    (*(*(v207 - 8) + 8))(v218);
    (*(v130 + 8))(v131, v126);
    v147 = *(v165 + 32);
    v148 = v159;
    v147(v159, v174, v98);
    v149 = v156;
    outlined destroy of [Int](a3 + v156, &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd);
    v147((a3 + v149), v148, v98);
    return v157(a3 + v149, 0, 1, v98);
  }
}

{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog08LLMDraftA13AssetMetadataV05DraftE0VSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v96 - v7;
  v104 = type metadata accessor for LLMDraftModelAssetMetadata.DraftMetadata();
  v103 = *(v104 - 8);
  v9 = MEMORY[0x28223BE20](v104);
  v98 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v97 = &v96 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog9StopTokenVSgMd);
  MEMORY[0x28223BE20](v12 - 8);
  v108 = &v96 - v13;
  v101 = type metadata accessor for StopToken();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v96 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog08LLMDraftA13AssetMetadataV22DeviceSpecialTokensMapVSgMd);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v112 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v96 - v18;
  v20 = type metadata accessor for LLMDraftModelAssetMetadata.DeviceSpecialTokensMap();
  v111 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v106 = &v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for LLMDraftModelAssetMetadata.ANEExtendInfo();
  v22 = *(v124 - 8);
  v23 = MEMORY[0x28223BE20](v124);
  v123 = &v96 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v122 = &v96 - v25;
  *(a3 + 16) = 0;
  *(a3 + 32) = 0u;
  v105 = (a3 + 32);
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 136) = 0;
  *(a3 + 144) = 0;
  *(a3 + 128) = 1;
  *(a3 + 152) = 0;
  *(a3 + 160) = 0u;
  *(a3 + 176) = 0u;
  *(a3 + 192) = 2;
  *(a3 + 200) = 0u;
  *(a3 + 216) = 0u;
  *(a3 + 232) = 0u;
  *(a3 + 248) = 1;
  *(a3 + 256) = 2;
  v26 = *(type metadata accessor for ModelMetadata() + 64);
  v27 = type metadata accessor for PromptPreprocessingTemplateVersion();
  (*(*(v27 - 8) + 56))(a3 + v26, 1, 1, v27);
  *a3 = LLMDraftModelAssetMetadata.modelType.getter();
  *(a3 + 8) = v28;
  v29 = MEMORY[0x223D8BFA0]();
  v110 = a2;
  v102 = v8;
  if (v29)
  {
    v30 = v29;
    v99 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS24TokenGenerationInference10E5FunctionVGMd);
    result = static _DictionaryStorage.copy(original:)();
    v32 = result;
    v33 = 0;
    v34 = *(v30 + 64);
    v107 = v30 + 64;
    v35 = 1 << *(v30 + 32);
    v36 = -1;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    v37 = v36 & v34;
    v38 = (v35 + 63) >> 6;
    v120 = v22 + 2;
    v119 = v22 + 1;
    v118 = result + 64;
    v113 = v38;
    v117 = a1;
    v116 = v20;
    v115 = v19;
    v114 = v30;
    v121 = result;
    if (v37)
    {
      while (1)
      {
        v39 = __clz(__rbit64(v37));
        v125 = (v37 - 1) & v37;
LABEL_11:
        v42 = v39 | (v33 << 6);
        v130 = 16 * v42;
        v43 = *(v30 + 56);
        v44 = (*(v30 + 48) + 16 * v42);
        v45 = v44[1];
        v141 = *v44;
        v46 = v22[2];
        v47 = v122;
        v48 = v124;
        v46(v122, v43 + v22[9] * v42, v124);
        v49 = v123;
        v46(v123, v47, v48);

        v129 = LLMDraftModelAssetMetadata.ANEExtendInfo.type.getter();
        v128 = v50;
        v127 = LLMDraftModelAssetMetadata.ANEExtendInfo.seqLen.getter();
        v126 = LLMDraftModelAssetMetadata.ANEExtendInfo.ctxLen.getter();
        v51 = v22;
        v52 = v22[1];
        v52(v49, v48);
        result = (v52)(v47, v48);
        *(v118 + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v42;
        v32 = v121;
        v53 = (*(v121 + 48) + v130);
        *v53 = v141;
        v53[1] = v45;
        v54 = (*(v32 + 56) + 48 * v42);
        v55 = v128;
        *v54 = v129;
        v54[1] = v55;
        v54[2] = 0;
        v54[3] = 0;
        v56 = v126;
        v54[4] = v127;
        v54[5] = v56;
        v57 = *(v32 + 16);
        v58 = __OFADD__(v57, 1);
        v59 = v57 + 1;
        if (v58)
        {
          break;
        }

        *(v32 + 16) = v59;
        a1 = v117;
        v20 = v116;
        v19 = v115;
        v22 = v51;
        v30 = v114;
        v37 = v125;
        v38 = v113;
        if (!v125)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      v40 = v33;
      while (1)
      {
        v33 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          break;
        }

        if (v33 >= v38)
        {

          a3 = v99;
          goto LABEL_16;
        }

        v41 = *(v107 + 8 * v33);
        ++v40;
        if (v41)
        {
          v39 = __clz(__rbit64(v41));
          v125 = (v41 - 1) & v41;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v32 = 0;
LABEL_16:
    *(a3 + 24) = v32;
    LLMDraftModelAssetMetadata.specialTokensMap.getter();
    v60 = v111;
    v61 = *(v111 + 48);
    if (v61(v19, 1, v20) == 1)
    {
      outlined destroy of [Int](v19, &_s12ModelCatalog08LLMDraftA13AssetMetadataV22DeviceSpecialTokensMapVSgMd);
    }

    else
    {
      v62 = v106;
      (*(v60 + 32))(v106, v19, v20);
      v63 = v60;
      v64 = specialized SpecialTokenMetadataProtocol.mapToDictionary()();
      (*(v63 + 8))(v62, v20);
      *v105 = v64;
    }

    v65 = v109;
    LLMDraftModelAssetMetadata.specialTokensMap.getter();
    v66 = v112;
    if (v61(v112, 1, v20) == 1)
    {
      outlined destroy of [Int](v66, &_s12ModelCatalog08LLMDraftA13AssetMetadataV22DeviceSpecialTokensMapVSgMd);
      v133 = 0u;
      v134 = 0u;
      *&v135 = 0;
    }

    else
    {
      *(&v134 + 1) = v20;
      *&v135 = MEMORY[0x277D29998];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v133);
      (*(v111 + 32))(boxed_opaque_existential_1, v66, v20);
    }

    v68 = v110;
    v69 = v108;
    v70 = type metadata accessor for LLMDraftModelAssetMetadata();
    lazy protocol witness table accessor for type LLMModelAssetMetadata.DraftMetadata and conformance LLMModelAssetMetadata.DraftMetadata(&lazy protocol witness table cache variable for type LLMDraftModelAssetMetadata and conformance LLMDraftModelAssetMetadata, MEMORY[0x277D299A8]);
    AssetMetadata.stopToken(metadataURL:deviceSpecialTokensMap:)();
    if (v65)
    {
      v71 = type metadata accessor for URL();
      (*(*(v71 - 8) + 8))(v68, v71);
      (*(*(v70 - 8) + 8))(a1, v70);
      outlined destroy of [Int](&v133, &_s12ModelCatalog30DeviceSpecialTokensMapProtocol_pSgMd);
      return outlined destroy of ModelMetadata(a3);
    }

    else
    {
      outlined destroy of [Int](&v133, &_s12ModelCatalog30DeviceSpecialTokensMapProtocol_pSgMd);
      v72 = v100;
      v73 = v101;
      if ((*(v100 + 48))(v69, 1, v101) == 1)
      {
        outlined destroy of [Int](v69, &_s12ModelCatalog9StopTokenVSgMd);
      }

      else
      {
        v74 = *(v72 + 32);
        v141 = 0;
        v75 = v96;
        v74(v96, v69, v73);
        v130 = StopToken.intValue.getter();
        v77 = v76;
        v78 = StopToken.stringValue.getter();
        v80 = v79;
        (*(v72 + 8))(v75, v73);
        v81 = v77 & 1;
        v68 = v110;
        *(a3 + 224) = v130;
        *(a3 + 232) = v81;
        *(a3 + 240) = v78;
        *(a3 + 248) = v80;
      }

      v82 = v104;
      v83 = v102;
      LLMDraftModelAssetMetadata.defaultParameters.getter();
      v84 = v103;
      if ((*(v103 + 48))(v83, 1, v82) == 1)
      {
        outlined destroy of [Int](v83, &_s12ModelCatalog08LLMDraftA13AssetMetadataV05DraftE0VSgMd);
      }

      else
      {
        v85 = v97;
        (*(v84 + 32))(v97, v83, v82);
        v86 = v98;
        (*(v84 + 16))(v98, v85, v82);
        _s24TokenGenerationInference17DefaultParametersV4fromAcA21DraftMetadataProtocol_p_tcfCTf4en_n12ModelCatalog08LLMDraftj5AssetH0V0gH0V_Tt0g5(v86, v131);
        (*(v84 + 8))(v85, v82);
        v87 = *(a3 + 104);
        v88 = *(a3 + 136);
        v138 = *(a3 + 120);
        v139 = v88;
        v140 = *(a3 + 152);
        v133 = *(a3 + 40);
        v89 = *(a3 + 72);
        v134 = *(a3 + 56);
        v135 = v89;
        v136 = *(a3 + 88);
        v137 = v87;
        outlined destroy of [Int](&v133, &_s24TokenGenerationInference17DefaultParametersVSgMd);
        v90 = v131[5];
        *(a3 + 104) = v131[4];
        *(a3 + 120) = v90;
        *(a3 + 136) = v131[6];
        v91 = v131[1];
        *(a3 + 40) = v131[0];
        *(a3 + 56) = v91;
        v92 = v131[3];
        *(a3 + 72) = v131[2];
        *(a3 + 152) = v132;
        *(a3 + 88) = v92;
      }

      *(a3 + 160) = LLMDraftModelAssetMetadata.backboneSignature.getter();
      *(a3 + 168) = v93;
      v94 = LLMDraftModelAssetMetadata.prewarmForConstrainedDecoding.getter();
      v95 = type metadata accessor for URL();
      (*(*(v95 - 8) + 8))(v68, v95);
      result = (*(*(v70 - 8) + 8))(a1, v70);
      if (v94 != 2)
      {
        *(a3 + 256) = v94;
      }
    }
  }

  return result;
}

uint64_t AdapterMetadata.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 1701869940;
    v7 = 0xD000000000000010;
    v8 = 0xD000000000000011;
    if (a1 != 3)
    {
      v8 = 0xD000000000000016;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x656B6F54706F7473;
    v2 = 0xD00000000000001DLL;
    if (a1 != 9)
    {
      v2 = 0xD000000000000013;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000025;
    v4 = 0xD000000000000012;
    if (a1 == 6)
    {
      v4 = 0x617A696C61636F6CLL;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t AdapterMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24TokenGenerationInference15AdapterMetadataV10CodingKeys33_00FC6DBF691860C008D9C69E9A6F04F6LLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AdapterMetadata.CodingKeys and conformance AdapterMetadata.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v21) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    *&v21 = *(v3 + 16);
    LOBYTE(v19[0]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS24TokenGenerationInference015MetadataSpecialA0OGMd);
    lazy protocol witness table accessor for type [String : MetadataSpecialToken] and conformance <> [A : B]();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v21) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v21) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v21) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = *(v3 + 152);
    v29[4] = *(v3 + 136);
    v29[5] = v9;
    v29[6] = *(v3 + 168);
    v30 = *(v3 + 184);
    v10 = *(v3 + 88);
    v29[0] = *(v3 + 72);
    v29[1] = v10;
    v11 = *(v3 + 120);
    v29[2] = *(v3 + 104);
    v29[3] = v11;
    v12 = *(v3 + 152);
    v25 = *(v3 + 136);
    v26 = v12;
    v27 = *(v3 + 168);
    v28 = *(v3 + 184);
    v13 = *(v3 + 88);
    v21 = *(v3 + 72);
    v22 = v13;
    v14 = *(v3 + 120);
    v23 = *(v3 + 104);
    v24 = v14;
    v32 = 5;
    outlined init with copy of DefaultParameters?(v29, v19);
    lazy protocol witness table accessor for type DefaultParameters and conformance DefaultParameters();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v19[4] = v25;
    v19[5] = v26;
    v19[6] = v27;
    v20 = v28;
    v19[0] = v21;
    v19[1] = v22;
    v19[2] = v23;
    v19[3] = v24;
    outlined destroy of [Int](v19, &_s24TokenGenerationInference17DefaultParametersVSgMd);
    *&v17 = *(v3 + 192);
    v31 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSDySS24TokenGenerationInference015MetadataSpecialA0OGGMd);
    lazy protocol witness table accessor for type [String : [String : MetadataSpecialToken]] and conformance <> [A : B]();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v17 = *(v3 + 200);
    *&v18 = *(v3 + 216);
    v31 = 7;
    lazy protocol witness table accessor for type ClassifierMetadata and conformance ClassifierMetadata();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v15 = *(v3 + 240);
    v17 = *(v3 + 224);
    v18 = v15;
    v31 = 8;
    lazy protocol witness table accessor for type StopToken and conformance StopToken();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v17) = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v17) = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AdapterMetadata.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized AdapterMetadata.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AdapterMetadata.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AdapterMetadata.CodingKeys and conformance AdapterMetadata.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AdapterMetadata.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AdapterMetadata.CodingKeys and conformance AdapterMetadata.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void *protocol witness for Decodable.init(from:) in conformance AdapterMetadata@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = specialized AdapterMetadata.init(from:)(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x102uLL);
  }

  return result;
}

uint64_t ClassifierMetadata.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24TokenGenerationInference18ClassifierMetadataV10CodingKeys33_00FC6DBF691860C008D9C69E9A6F04F6LLOGMd);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ClassifierMetadata.CodingKeys and conformance ClassifierMetadata.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = a2;
  v14 = 0;
  lazy protocol witness table accessor for type ClassifierDefaultOutputClass and conformance ClassifierDefaultOutputClass();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    v15 = v13;
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay24TokenGenerationInference21ClassifierOutputClassVGMd);
    lazy protocol witness table accessor for type [ClassifierOutputClass] and conformance <A> [A](&lazy protocol witness table cache variable for type [ClassifierOutputClass] and conformance <A> [A], lazy protocol witness table accessor for type ClassifierOutputClass and conformance ClassifierOutputClass);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = a4;
    v14 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSay24TokenGenerationInference21ClassifierOutputClassVGGMd);
    lazy protocol witness table accessor for type [String : [ClassifierOutputClass]] and conformance <> [A : B]();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v9 + 8))(v11, v8);
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance ClassifierMetadata.CodingKeys()
{
  v1 = 0x6C4374757074756FLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000019;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ClassifierMetadata.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized ClassifierMetadata.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ClassifierMetadata.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ClassifierMetadata.CodingKeys and conformance ClassifierMetadata.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ClassifierMetadata.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ClassifierMetadata.CodingKeys and conformance ClassifierMetadata.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance ClassifierMetadata@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized ClassifierMetadata.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t ClassifierOutputClass.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24TokenGenerationInference21ClassifierOutputClassV10CodingKeys33_00FC6DBF691860C008D9C69E9A6F04F6LLOGMd);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ClassifierOutputClass.CodingKeys and conformance ClassifierOutputClass.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v9 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ClassifierDefaultOutputClass.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x64496E656B6F74 && a2 == 0xE700000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ClassifierDefaultOutputClass.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ClassifierDefaultOutputClass.CodingKeys and conformance ClassifierDefaultOutputClass.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ClassifierDefaultOutputClass.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ClassifierDefaultOutputClass.CodingKeys and conformance ClassifierDefaultOutputClass.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance ClassifierDefaultOutputClass@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24TokenGenerationInference28ClassifierDefaultOutputClassV10CodingKeys33_00FC6DBF691860C008D9C69E9A6F04F6LLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ClassifierDefaultOutputClass.CodingKeys and conformance ClassifierDefaultOutputClass.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v9;
  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance ClassifierDefaultOutputClass(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24TokenGenerationInference28ClassifierDefaultOutputClassV10CodingKeys33_00FC6DBF691860C008D9C69E9A6F04F6LLOGMd);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ClassifierDefaultOutputClass.CodingKeys and conformance ClassifierDefaultOutputClass.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ClassifierOutputClass.CodingKeys()
{
  if (*v0)
  {
    return 0xD000000000000019;
  }

  else
  {
    return 0x64496E656B6F74;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ClassifierOutputClass.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64496E656B6F74 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000220AFC8E0 == a2)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ClassifierOutputClass.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ClassifierOutputClass.CodingKeys and conformance ClassifierOutputClass.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ClassifierOutputClass.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ClassifierOutputClass.CodingKeys and conformance ClassifierOutputClass.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void protocol witness for Decodable.init(from:) in conformance ClassifierOutputClass(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = specialized ClassifierOutputClass.init(from:)(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
  }
}

unint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSi_SiTt1g5(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + 8 * v12);
    result = specialized __RawDictionaryStorage.find<A>(_:)(*(*(v3 + 48) + 8 * v12));
    if ((v14 & 1) == 0 || *(*(a2 + 56) + 8 * result) != v13)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_Say24TokenGenerationInference21ClassifierOutputClassVGTt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  if (v7)
  {
    while (1)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = v9 | (v4 << 6);
      v13 = (*(v3 + 48) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = *(*(v3 + 56) + 8 * v12);

      v17 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v15);
      v19 = v18;

      if ((v19 & 1) == 0 || (v20 = *(*(a2 + 56) + 8 * v17), v21 = *(v20 + 16), v21 != *(v16 + 16)))
      {
LABEL_27:

        return 0;
      }

      if (v21 && v20 != v16)
      {
        break;
      }

LABEL_19:

      if (!v7)
      {
        goto LABEL_7;
      }
    }

    v23 = (v20 + 40);
    v24 = (v16 + 40);
    while (v21)
    {
      if (*(v23 - 1) != *(v24 - 1) || *v23 != *v24)
      {
        goto LABEL_27;
      }

      v23 += 4;
      v24 += 4;
      if (!--v21)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
LABEL_7:
    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return 1;
      }

      v11 = *(v3 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SSTt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_24TokenGenerationInference015MetadataSpecialB0OTt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v26 = (v5 + 63) >> 6;
  v27 = result;
  while (v7)
  {
    v8 = __clz(__rbit64(v7));
    v28 = (v7 - 1) & v7;
LABEL_13:
    v11 = v8 | (v3 << 6);
    v12 = (*(result + 48) + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    v15 = *(result + 56) + 24 * v11;
    v16 = *v15;
    v17 = *(v15 + 8);
    v18 = *(v15 + 16);

    outlined copy of MetadataSpecialToken(v16, v17, v18);
    v19 = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
    v21 = v20;

    if ((v21 & 1) == 0)
    {
      goto LABEL_28;
    }

    v22 = *(a2 + 56) + 24 * v19;
    v23 = *v22;
    if (*(v22 + 16) == 1)
    {
      if ((v18 & 1) == 0)
      {
        return 0;
      }

      v24 = v23 == v16 && *(v22 + 8) == v17;
      if (v24)
      {
        outlined consume of MetadataSpecialToken(v16, v17, 1);
        result = v27;
        v7 = v28;
      }

      else
      {
        v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
        outlined consume of MetadataSpecialToken(v16, v17, 1);
        result = v27;
        v7 = v28;
        if ((v25 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else
    {
      if (v18)
      {
        v18 = 1;
LABEL_28:
        outlined consume of MetadataSpecialToken(v16, v17, v18);
        return 0;
      }

      v24 = v23 == v16;
      result = v27;
      v7 = v28;
      if (!v24)
      {
        return 0;
      }
    }
  }

  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v26)
    {
      return 1;
    }

    v10 = *(v4 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v28 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SDySS24TokenGenerationInference015MetadataSpecialB0OGTt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
LABEL_13:
    v11 = v8 | (v3 << 6);
    v12 = (*(v2 + 48) + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    v15 = *(*(v2 + 56) + 8 * v11);

    specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
    v17 = v16;

    if ((v17 & 1) == 0)
    {

      return 0;
    }

    v19 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_24TokenGenerationInference015MetadataSpecialB0OTt1g5(v18, v15);

    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v2 + 64 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v6 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s24TokenGenerationInference17DefaultParametersV4fromAcA21DraftMetadataProtocol_p_tcfCTf4en_n12ModelCatalog013LLMModelAssetH0V0gH0V_Tt0g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = 1;
  v4 = MEMORY[0x223D8C1F0]();
  v84 = v5 & 1;
  v6 = MEMORY[0x223D8C210]();
  v7 = MEMORY[0x223D8C220]();
  v83 = v8 & 1;
  v9 = MEMORY[0x223D8C290]();
  v82 = v10 & 1;
  v11 = MEMORY[0x223D8C2A0]();
  *&result = COERCE_DOUBLE(MEMORY[0x223D8C280]());
  v14 = v13;
  v15 = 0.0;
  v16 = 0.0;
  if ((v13 & 1) == 0)
  {
    *&result = COERCE_DOUBLE(MEMORY[0x223D8C280](result));
    if (v17)
    {
      __break(1u);
      goto LABEL_11;
    }

    v16 = *&result;
  }

  v42 = v11;
  v43 = v6;
  v44 = v4;
  v81 = v14 & 1;
  v40 = MEMORY[0x223D8C260](result);
  v18 = MEMORY[0x223D8C230]();
  v19 = COERCE_DOUBLE(MEMORY[0x223D8C2B0]());
  if ((v20 & 1) == 0)
  {
    v15 = v19;
    v80 = 0;
  }

  v41 = v7;
  v21 = MEMORY[0x223D8C1E0](*&v19);
  v22 = MEMORY[0x223D8C250]();
  v79 = v23 & 1;
  v24 = MEMORY[0x223D8C270]();
  v26 = v25;
  *&result = COERCE_DOUBLE(MEMORY[0x223D8C200]());
  v28 = v27;
  v29 = 0.0;
  if (v27)
  {
    goto LABEL_9;
  }

  *&result = COERCE_DOUBLE(MEMORY[0x223D8C200](result));
  if ((v30 & 1) == 0)
  {
    v29 = *&result;
LABEL_9:
    v78 = v28 & 1;
    v31 = MEMORY[0x223D8C240](result);
    v33 = v32;
    v34 = type metadata accessor for LLMModelAssetMetadata.DraftMetadata();
    (*(*(v34 - 8) + 8))(a1, v34);
    v77 = v33 & 1;
    *&v46 = v44;
    BYTE8(v46) = v84;
    BYTE9(v46) = v43;
    *&v47 = v41;
    BYTE8(v47) = v83;
    *&v48 = v9;
    BYTE8(v48) = v82;
    *(&v48 + 3) = v16;
    LOBYTE(v49) = v81;
    BYTE1(v49) = v40;
    BYTE2(v49) = v18;
    *(&v49 + 1) = v15;
    BYTE8(v49) = v80;
    BYTE9(v49) = v21;
    *&v50 = v22;
    BYTE8(v50) = v79;
    *&v51 = v24;
    *(&v51 + 1) = v26;
    *&v52 = v29;
    BYTE4(v52) = v78;
    *(&v52 + 1) = v31;
    LOBYTE(v53) = v33 & 1;
    HIBYTE(v53) = v42;
    v54 = v44;
    v55 = v84;
    v56 = v43;
    v57 = v41;
    v58 = v83;
    v59 = v9;
    v60 = v82;
    v61 = v16;
    v62 = v81;
    v63 = v40;
    v64 = v18;
    v65 = v15;
    v66 = v80;
    v67 = v21;
    v68 = v22;
    v69 = v79;
    v70 = v24;
    v71 = v26;
    v72 = v29;
    v73 = v78;
    v74 = v31;
    v75 = v33 & 1;
    v76 = v42;
    outlined init with copy of DefaultParameters(&v46, v45);
    *&result = COERCE_DOUBLE(outlined destroy of DefaultParameters(&v54));
    v35 = v51;
    v36 = v52;
    v37 = v49;
    *(a2 + 64) = v50;
    *(a2 + 80) = v35;
    *(a2 + 96) = v36;
    v38 = v47;
    v39 = v48;
    *a2 = v46;
    *(a2 + 16) = v38;
    *(a2 + 112) = v53;
    *(a2 + 32) = v39;
    *(a2 + 48) = v37;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t _s24TokenGenerationInference17DefaultParametersV4fromAcA21DraftMetadataProtocol_p_tcfCTf4en_n12ModelCatalog08LLMDraftj5AssetH0V0gH0V_Tt0g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = 1;
  v4 = MEMORY[0x223D8BE50]();
  v84 = v5 & 1;
  v6 = MEMORY[0x223D8BE70]();
  v7 = MEMORY[0x223D8BE80]();
  v83 = v8 & 1;
  v9 = MEMORY[0x223D8BEF0]();
  v82 = v10 & 1;
  v11 = MEMORY[0x223D8BF00]();
  *&result = COERCE_DOUBLE(MEMORY[0x223D8BEE0]());
  v14 = v13;
  v15 = 0.0;
  v16 = 0.0;
  if ((v13 & 1) == 0)
  {
    *&result = COERCE_DOUBLE(MEMORY[0x223D8BEE0](result));
    if (v17)
    {
      __break(1u);
      goto LABEL_11;
    }

    v16 = *&result;
  }

  v42 = v11;
  v43 = v6;
  v44 = v4;
  v81 = v14 & 1;
  v40 = MEMORY[0x223D8BEC0](result);
  v18 = MEMORY[0x223D8BE90]();
  v19 = COERCE_DOUBLE(MEMORY[0x223D8BF10]());
  if ((v20 & 1) == 0)
  {
    v15 = v19;
    v80 = 0;
  }

  v41 = v7;
  v21 = MEMORY[0x223D8BE40](*&v19);
  v22 = MEMORY[0x223D8BEB0]();
  v79 = v23 & 1;
  v24 = MEMORY[0x223D8BED0]();
  v26 = v25;
  *&result = COERCE_DOUBLE(MEMORY[0x223D8BE60]());
  v28 = v27;
  v29 = 0.0;
  if (v27)
  {
    goto LABEL_9;
  }

  *&result = COERCE_DOUBLE(MEMORY[0x223D8BE60](result));
  if ((v30 & 1) == 0)
  {
    v29 = *&result;
LABEL_9:
    v78 = v28 & 1;
    v31 = MEMORY[0x223D8BEA0](result);
    v33 = v32;
    v34 = type metadata accessor for LLMDraftModelAssetMetadata.DraftMetadata();
    (*(*(v34 - 8) + 8))(a1, v34);
    v77 = v33 & 1;
    *&v46 = v44;
    BYTE8(v46) = v84;
    BYTE9(v46) = v43;
    *&v47 = v41;
    BYTE8(v47) = v83;
    *&v48 = v9;
    BYTE8(v48) = v82;
    *(&v48 + 3) = v16;
    LOBYTE(v49) = v81;
    BYTE1(v49) = v40;
    BYTE2(v49) = v18;
    *(&v49 + 1) = v15;
    BYTE8(v49) = v80;
    BYTE9(v49) = v21;
    *&v50 = v22;
    BYTE8(v50) = v79;
    *&v51 = v24;
    *(&v51 + 1) = v26;
    *&v52 = v29;
    BYTE4(v52) = v78;
    *(&v52 + 1) = v31;
    LOBYTE(v53) = v33 & 1;
    HIBYTE(v53) = v42;
    v54 = v44;
    v55 = v84;
    v56 = v43;
    v57 = v41;
    v58 = v83;
    v59 = v9;
    v60 = v82;
    v61 = v16;
    v62 = v81;
    v63 = v40;
    v64 = v18;
    v65 = v15;
    v66 = v80;
    v67 = v21;
    v68 = v22;
    v69 = v79;
    v70 = v24;
    v71 = v26;
    v72 = v29;
    v73 = v78;
    v74 = v31;
    v75 = v33 & 1;
    v76 = v42;
    outlined init with copy of DefaultParameters(&v46, v45);
    *&result = COERCE_DOUBLE(outlined destroy of DefaultParameters(&v54));
    v35 = v51;
    v36 = v52;
    v37 = v49;
    *(a2 + 64) = v50;
    *(a2 + 80) = v35;
    *(a2 + 96) = v36;
    v38 = v47;
    v39 = v48;
    *a2 = v46;
    *(a2 + 16) = v38;
    *(a2 + 112) = v53;
    *(a2 + 32) = v39;
    *(a2 + 48) = v37;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t _s24TokenGenerationInference17DefaultParametersV4fromAcA21DraftMetadataProtocol_p_tcfCTf4en_n12ModelCatalog015LLMAdapterAssetH0V0gH0V_Tt0g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = 1;
  v4 = MEMORY[0x223D8C550]();
  v84 = v5 & 1;
  v6 = MEMORY[0x223D8C570]();
  v7 = MEMORY[0x223D8C580]();
  v83 = v8 & 1;
  v9 = MEMORY[0x223D8C5F0]();
  v82 = v10 & 1;
  v11 = MEMORY[0x223D8C600]();
  *&result = COERCE_DOUBLE(MEMORY[0x223D8C5E0]());
  v14 = v13;
  v15 = 0.0;
  v16 = 0.0;
  if ((v13 & 1) == 0)
  {
    *&result = COERCE_DOUBLE(MEMORY[0x223D8C5E0](result));
    if (v17)
    {
      __break(1u);
      goto LABEL_11;
    }

    v16 = *&result;
  }

  v42 = v11;
  v43 = v6;
  v44 = v4;
  v81 = v14 & 1;
  v40 = MEMORY[0x223D8C5C0](result);
  v18 = MEMORY[0x223D8C590]();
  v19 = COERCE_DOUBLE(MEMORY[0x223D8C610]());
  if ((v20 & 1) == 0)
  {
    v15 = v19;
    v80 = 0;
  }

  v41 = v7;
  v21 = MEMORY[0x223D8C540](*&v19);
  v22 = MEMORY[0x223D8C5B0]();
  v79 = v23 & 1;
  v24 = MEMORY[0x223D8C5D0]();
  v26 = v25;
  *&result = COERCE_DOUBLE(MEMORY[0x223D8C560]());
  v28 = v27;
  v29 = 0.0;
  if (v27)
  {
    goto LABEL_9;
  }

  *&result = COERCE_DOUBLE(MEMORY[0x223D8C560](result));
  if ((v30 & 1) == 0)
  {
    v29 = *&result;
LABEL_9:
    v78 = v28 & 1;
    v31 = MEMORY[0x223D8C5A0](result);
    v33 = v32;
    v34 = type metadata accessor for LLMAdapterAssetMetadata.DraftMetadata();
    (*(*(v34 - 8) + 8))(a1, v34);
    v77 = v33 & 1;
    *&v46 = v44;
    BYTE8(v46) = v84;
    BYTE9(v46) = v43;
    *&v47 = v41;
    BYTE8(v47) = v83;
    *&v48 = v9;
    BYTE8(v48) = v82;
    *(&v48 + 3) = v16;
    LOBYTE(v49) = v81;
    BYTE1(v49) = v40;
    BYTE2(v49) = v18;
    *(&v49 + 1) = v15;
    BYTE8(v49) = v80;
    BYTE9(v49) = v21;
    *&v50 = v22;
    BYTE8(v50) = v79;
    *&v51 = v24;
    *(&v51 + 1) = v26;
    *&v52 = v29;
    BYTE4(v52) = v78;
    *(&v52 + 1) = v31;
    LOBYTE(v53) = v33 & 1;
    HIBYTE(v53) = v42;
    v54 = v44;
    v55 = v84;
    v56 = v43;
    v57 = v41;
    v58 = v83;
    v59 = v9;
    v60 = v82;
    v61 = v16;
    v62 = v81;
    v63 = v40;
    v64 = v18;
    v65 = v15;
    v66 = v80;
    v67 = v21;
    v68 = v22;
    v69 = v79;
    v70 = v24;
    v71 = v26;
    v72 = v29;
    v73 = v78;
    v74 = v31;
    v75 = v33 & 1;
    v76 = v42;
    outlined init with copy of DefaultParameters(&v46, v45);
    *&result = COERCE_DOUBLE(outlined destroy of DefaultParameters(&v54));
    v35 = v51;
    v36 = v52;
    v37 = v49;
    *(a2 + 64) = v50;
    *(a2 + 80) = v35;
    *(a2 + 96) = v36;
    v38 = v47;
    v39 = v48;
    *a2 = v46;
    *(a2 + 16) = v38;
    *(a2 + 112) = v53;
    *(a2 + 32) = v39;
    *(a2 + 48) = v37;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t specialized static ClassifierMetadata.== infix(_:_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result != a4)
  {
    return 0;
  }

  v6 = *(a2 + 16);
  if (v6 != *(a5 + 16))
  {
    return 0;
  }

  if (v6)
  {
    v7 = a2 == a5;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
LABEL_15:
    if (a3)
    {
      if (a6)
      {
        v12 = a3;

        LOBYTE(v12) = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_Say24TokenGenerationInference21ClassifierOutputClassVGTt1g5(v12, a6);

        if (v12)
        {
          return 1;
        }
      }
    }

    else if (!a6)
    {
      return 1;
    }

    return 0;
  }

  v8 = (a2 + 40);
  v9 = (a5 + 40);
  while (v6)
  {
    if (*(v8 - 1) != *(v9 - 1) || *v8 != *v9)
    {
      return 0;
    }

    v8 += 4;
    v9 += 4;
    if (!--v6)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized MetadataSpecialToken.init(from:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v1)
  {

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    dispatch thunk of Decoder.singleValueContainer()();
    __swift_project_boxed_opaque_existential_1(v5, v6);
    v3 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v5, v6);
    v3 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
  }

  __swift_destroy_boxed_opaque_existential_1(v5);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t specialized E5Function.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5472657470616461 && a2 == 0xEB00000000657079 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E654C716573 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E654C787463 && a2 == 0xE600000000000000)
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

uint64_t specialized E5Function.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24TokenGenerationInference10E5FunctionV10CodingKeys33_00FC6DBF691860C008D9C69E9A6F04F6LLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type E5Function.CodingKeys and conformance E5Function.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v25 = 0;
    v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v11 = v10;
    v21 = v9;
    v24 = 1;
    v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v14 = v13;
    v20 = v12;
    v23 = 2;
    v19 = KeyedDecodingContainer.decode(_:forKey:)();
    v22 = 3;
    v18 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    result = __swift_destroy_boxed_opaque_existential_1(a1);
    v16 = v20;
    *a2 = v21;
    a2[1] = v11;
    a2[2] = v16;
    a2[3] = v14;
    v17 = v18;
    a2[4] = v19;
    a2[5] = v17;
  }

  return result;
}

uint64_t specialized StopToken.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24TokenGenerationInference04StopD0V10CodingKeys33_00FC6DBF691860C008D9C69E9A6F04F6LLOGMd);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  lazy protocol witness table accessor for type StopToken.CodingKeys and conformance StopToken.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v11 = 0;
    v7 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v10 = 1;
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

uint64_t specialized DefaultParameters.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574537466617264 && a2 == 0xEA00000000007370;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4173497466617264 && a2 == 0xEF65766974706164 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6572547466617264 && a2 == 0xEF726F7463614665 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000220AFCA50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000220AFCA70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000220AFB270 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000220AFCA90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000024 && 0x8000000220AFCAB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000220AFB2B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000220AFB2D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000220AFCAE0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x74617265706D6574 && a2 == 0xEB00000000657275 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000220AFB2F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000220AFCB00 == a2)
  {

    return 13;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t specialized DefaultParameters.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24TokenGenerationInference17DefaultParametersV10CodingKeys33_00FC6DBF691860C008D9C69E9A6F04F6LLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - v7;
  v111 = 1;
  v108 = 1;
  v106 = 1;
  v103 = 1;
  v102 = 1;
  v99 = 1;
  v97 = 1;
  v94 = 1;
  v9 = a1[3];
  v45 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  lazy protocol witness table accessor for type DefaultParameters.CodingKeys and conformance DefaultParameters.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v112 = v2;
    v46 = 0;
    v47 = 0;
    v50 = 0;
    v51 = 0;
    v48 = 0;
    v49 = 0;
    __swift_destroy_boxed_opaque_existential_1(v45);
    v61 = 0;
    v62 = v111;
    v63 = 2;
    v64 = v109;
    v65 = v110;
    v66 = 0;
    v67 = v108;
    *v68 = *v107;
    *&v68[3] = *&v107[3];
    v69 = 0;
    v70 = v106;
    v72 = v105;
    v71 = v104;
    v73 = 0;
    v74 = v103;
    v75 = 2;
    v76 = 2;
    v77 = v46;
    v78 = v102;
    v79 = 2;
    v80 = v100;
    v81 = v101;
    v82 = v51;
    v83 = v99;
    *&v84[3] = *&v98[3];
    *v84 = *v98;
    v85 = v50;
    v86 = v49;
    v87 = v48;
    v88 = v97;
    v90 = v96;
    v89 = v95;
    v91 = v47;
    v92 = v94;
    v93 = 2;
    return outlined destroy of DefaultParameters(&v61);
  }

  else
  {
    LOBYTE(v61) = 0;
    v44 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v111 = v11 & 1;
    LOBYTE(v61) = 1;
    v43 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v61) = 2;
    v42 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v108 = v12 & 1;
    LOBYTE(v61) = 3;
    v41 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v106 = v13 & 1;
    LOBYTE(v61) = 4;
    v40 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v103 = BYTE4(v40) & 1;
    LOBYTE(v61) = 5;
    v39 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v61) = 6;
    v38 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v61) = 7;
    v46 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v102 = BYTE4(v46) & 1;
    LOBYTE(v61) = 8;
    v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v112 = 0;
    v37 = v14;
    LOBYTE(v61) = 9;
    v51 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v112 = 0;
    v99 = v15 & 1;
    LOBYTE(v61) = 10;
    v16 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v49 = v17;
    v50 = v16;
    v112 = 0;
    LOBYTE(v61) = 11;
    v48 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v112 = 0;
    v97 = BYTE4(v48) & 1;
    LOBYTE(v61) = 12;
    v47 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v112 = 0;
    v94 = v18 & 1;
    v60 = 13;
    v19 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v112 = 0;
    v20 = v19;
    (*(v6 + 8))(v8, v5);
    v21 = v44;
    *&v52 = v44;
    v22 = v111;
    BYTE8(v52) = v111;
    v23 = v43;
    BYTE9(v52) = v43;
    v24 = v42;
    *&v53 = v42;
    v30 = v108;
    BYTE8(v53) = v108;
    *&v54 = v41;
    v31 = v106;
    BYTE8(v54) = v106;
    HIDWORD(v54) = v40;
    v33 = v103;
    LOBYTE(v55) = v103;
    BYTE1(v55) = v39;
    BYTE2(v55) = v38;
    v25 = v46;
    DWORD1(v55) = v46;
    v32 = v102;
    BYTE8(v55) = v102;
    v26 = v37;
    BYTE9(v55) = v37;
    *&v56 = v51;
    v34 = v99;
    BYTE8(v56) = v99;
    *&v57 = v50;
    *(&v57 + 1) = v49;
    LODWORD(v58) = v48;
    v35 = v97;
    BYTE4(v58) = v97;
    *(&v58 + 1) = v47;
    v36 = v94;
    LOBYTE(v59) = v94;
    HIBYTE(v59) = v20;
    outlined init with copy of DefaultParameters(&v52, &v61);
    __swift_destroy_boxed_opaque_existential_1(v45);
    v61 = v21;
    v62 = v22;
    v63 = v23;
    v64 = v109;
    v65 = v110;
    v66 = v24;
    v67 = v30;
    *v68 = *v107;
    *&v68[3] = *&v107[3];
    v69 = v41;
    v70 = v31;
    v72 = v105;
    v71 = v104;
    v73 = v40;
    v74 = v33;
    v75 = v39;
    v76 = v38;
    v77 = v25;
    v78 = v32;
    v79 = v26;
    v80 = v100;
    v81 = v101;
    v82 = v51;
    v83 = v34;
    *v84 = *v98;
    *&v84[3] = *&v98[3];
    v85 = v50;
    v86 = v49;
    v87 = v48;
    v88 = v35;
    v90 = v96;
    v89 = v95;
    v91 = v47;
    v92 = v36;
    v93 = v20;
    result = outlined destroy of DefaultParameters(&v61);
    v27 = v57;
    *(a2 + 64) = v56;
    *(a2 + 80) = v27;
    *(a2 + 96) = v58;
    *(a2 + 112) = v59;
    v28 = v53;
    *a2 = v52;
    *(a2 + 16) = v28;
    v29 = v55;
    *(a2 + 32) = v54;
    *(a2 + 48) = v29;
  }

  return result;
}

uint64_t specialized ModelMetadata.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7079546C65646F6DLL && a2 == 0xE900000000000065;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000220AFCB20 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000220AFCB40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000220AFC940 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000220AFCB60 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000220AFC980 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000220AFCB80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x617A696C61636F6CLL && a2 == 0xEC0000006E6F6974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000220AFCA30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000220AFC9F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x656B6F54706F7473 && a2 == 0xE90000000000006ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000220AFCA10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000022 && 0x8000000220AFCBA0 == a2)
  {

    return 12;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

uint64_t specialized AdapterMetadata.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000220AFC940 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000220AFC960 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000220AFC980 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000220AFC9A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000025 && 0x8000000220AFC9C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x617A696C61636F6CLL && a2 == 0xEC0000006E6F6974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000220AFC9F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x656B6F54706F7473 && a2 == 0xE90000000000006ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000220AFCA10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000220AFCA30 == a2)
  {

    return 10;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

void *specialized AdapterMetadata.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24TokenGenerationInference15AdapterMetadataV10CodingKeys33_00FC6DBF691860C008D9C69E9A6F04F6LLOGMd);
  v5 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v7 = &v23 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AdapterMetadata.CodingKeys and conformance AdapterMetadata.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v119 = 0;
    v53 = 0;
    v54 = 0;
    v51 = 0;
    v52 = 0;
    v49 = 0;
    v50 = 0;
    v47 = 0;
    v48 = 0;
    v45 = 0;
    v46 = 0;
    v43 = 0;
    v44 = 0;
    v42 = 0;
    v40 = 0;
    v41 = 1;

    v56 = v119;
    v57 = v54;
    v58 = v53;
    v59 = v52;
    v60 = v51;
    v61 = v50;
    v62 = v49;
    v63 = v48;
    v64 = v47;
    v65 = v46;
    v66 = v45;
    v67 = v41;
    v68 = v44;
    v69 = v43;
    LOWORD(v70) = v42;
    outlined destroy of [Int](&v56, &_s24TokenGenerationInference17DefaultParametersVSgMd);

    outlined consume of ClassifierMetadata?(0, 0);
    return outlined consume of StopToken?(0, 0, 0, 1);
  }

  else
  {
    v8 = a1;
    v9 = v5;
    v10 = a2;
    LOBYTE(v56) = 0;
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    v38 = v12;
    v36 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS24TokenGenerationInference015MetadataSpecialA0OGMd);
    LOBYTE(v55[0]) = 1;
    lazy protocol witness table accessor for type [String : MetadataSpecialToken] and conformance <> [A : B]();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v37 = v56;
    LOBYTE(v56) = 2;
    v13 = KeyedDecodingContainer.decode(_:forKey:)();
    v34 = a1;
    v32 = v13;
    v33 = v14;
    LOBYTE(v56) = 3;
    v31 = KeyedDecodingContainer.decode(_:forKey:)();
    v35 = v15;
    LOBYTE(v56) = 4;
    v30 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v118 = v16 & 1;
    v99 = 5;
    lazy protocol witness table accessor for type DefaultParameters and conformance DefaultParameters();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v119 = v100;
    v53 = v102;
    v54 = v101;
    v51 = v104;
    v52 = v103;
    v49 = v106;
    v50 = v105;
    v47 = v108;
    v48 = v107;
    v45 = v110;
    v46 = v109;
    v41 = v111;
    v43 = v113;
    v44 = v112;
    v42 = v114;
    memset(v93, 0, sizeof(v93));
    v94 = 0;
    v95 = 1;
    v96 = 0;
    v97 = 0;
    v98 = 0;
    outlined destroy of [Int](v93, &_s24TokenGenerationInference17DefaultParametersVSgMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSDySS24TokenGenerationInference015MetadataSpecialA0OGGMd);
    LOBYTE(v55[0]) = 6;
    lazy protocol witness table accessor for type [String : [String : MetadataSpecialToken]] and conformance <> [A : B]();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v40 = v56;
    LOBYTE(v55[0]) = 7;
    lazy protocol witness table accessor for type ClassifierMetadata and conformance ClassifierMetadata();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v27 = v56;
    v28 = v57;
    v29 = v58;
    LOBYTE(v55[0]) = 8;
    lazy protocol witness table accessor for type StopToken and conformance StopToken();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v24 = v57;
    v25 = v56;
    v26 = v58;
    v34 = v59;
    LOBYTE(v56) = 9;
    v17 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v92 = 10;
    v18 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v9 + 8))(v7, v39);
    v19 = v36;
    v55[0] = v36;
    v55[1] = v38;
    v55[2] = v37;
    v55[3] = v32;
    v21 = v30;
    v20 = v31;
    v55[4] = v33;
    v55[5] = v31;
    v55[6] = v35;
    v55[7] = v30;
    LODWORD(v39) = v118;
    LOBYTE(v55[8]) = v118;
    v55[9] = v119;
    v55[10] = v54;
    v55[11] = v53;
    v55[12] = v52;
    v55[13] = v51;
    v55[14] = v50;
    v55[15] = v49;
    v55[16] = v48;
    v55[17] = v47;
    v55[18] = v46;
    v55[19] = v45;
    v55[20] = v41;
    v55[21] = v44;
    v55[22] = v43;
    LOWORD(v55[23]) = v42;
    v55[24] = v40;
    v55[25] = v27;
    v55[26] = v28;
    v55[27] = v29;
    v55[28] = v25;
    v55[29] = v24;
    v55[30] = v26;
    v55[31] = v34;
    LOBYTE(v55[32]) = v17;
    BYTE1(v55[32]) = v18;
    outlined init with copy of AdapterMetadata(v55, &v56);
    __swift_destroy_boxed_opaque_existential_1(v8);
    v56 = v19;
    v57 = v38;
    v58 = v37;
    v59 = v32;
    v60 = v33;
    v61 = v20;
    v62 = v35;
    v63 = v21;
    LOBYTE(v64) = v39;
    *(&v64 + 1) = v117[0];
    HIDWORD(v64) = *(v117 + 3);
    v65 = v119;
    v66 = v54;
    v67 = v53;
    v68 = v52;
    v69 = v51;
    v70 = v50;
    v71 = v49;
    v72 = v48;
    v73 = v47;
    v74 = v46;
    v75 = v45;
    v76 = v41;
    v77 = v44;
    v78 = v43;
    v79 = v42;
    v80 = v115;
    v81 = v116;
    v82 = v40;
    v83 = v27;
    v84 = v28;
    v85 = v29;
    v86 = v25;
    v87 = v24;
    v88 = v26;
    v89 = v34;
    v90 = v17;
    v91 = v18;
    outlined destroy of AdapterMetadata(&v56);
    return memcpy(v10, v55, 0x102uLL);
  }
}