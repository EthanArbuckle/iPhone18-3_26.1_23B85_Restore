uint64_t ComparingAffinityScorer.debugDescription.getter()
{
  v9 = 0;
  v10 = 0xE000000000000000;
  _StringGuts.grow(_:)(69);
  v11 = 0;
  v12 = 0xE000000000000000;
  MEMORY[0x1E12A1580](0xD00000000000001ELL, 0x80000001DCA7C6F0);
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime23ComparingAffinityScorer_score + 8);
  v9 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime23ComparingAffinityScorer_score);
  LOBYTE(v10) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
  v2 = String.init<A>(describing:)();
  MEMORY[0x1E12A1580](v2);

  MEMORY[0x1E12A1580](0x7261706D6F63202CLL, 0xED00003D6E6F7369);
  v3 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime23ComparingAffinityScorer_comparison);
  if (v3 > 3)
  {
    if (*(v0 + OBJC_IVAR____TtC14SiriKitRuntime23ComparingAffinityScorer_comparison) > 5u)
    {
      v4 = 0xE100000000000000;
      if (v3 == 6)
      {
        v5 = 42;
      }

      else
      {
        v5 = 33;
      }
    }

    else
    {
      v4 = 0xE200000000000000;
      if (v3 == 4)
      {
        v5 = 15677;
      }

      else
      {
        v5 = 15649;
      }
    }
  }

  else if (*(v0 + OBJC_IVAR____TtC14SiriKitRuntime23ComparingAffinityScorer_comparison) > 1u)
  {
    v4 = 0xE200000000000000;
    if (v3 == 2)
    {
      v5 = 15676;
    }

    else
    {
      v5 = 15678;
    }
  }

  else
  {
    v4 = 0xE100000000000000;
    if (*(v0 + OBJC_IVAR____TtC14SiriKitRuntime23ComparingAffinityScorer_comparison))
    {
      v5 = 62;
    }

    else
    {
      v5 = 60;
    }
  }

  MEMORY[0x1E12A1580](v5, v4);

  MEMORY[0x1E12A1580](0x3D7473726966202CLL, 0xE800000000000000);
  outlined init with copy of ReferenceResolutionClientProtocol(v0 + OBJC_IVAR____TtC14SiriKitRuntime23ComparingAffinityScorer_first, &v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime20AffinityValueFetcher_pMd, &_s14SiriKitRuntime20AffinityValueFetcher_pMR);
  v6 = String.init<A>(describing:)();
  MEMORY[0x1E12A1580](v6);

  MEMORY[0x1E12A1580](0x646E6F636573202CLL, 0xE90000000000003DLL);
  outlined init with copy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime23ComparingAffinityScorer_second, &v9, &_s14SiriKitRuntime20AffinityValueFetcher_pSgMd, &_s14SiriKitRuntime20AffinityValueFetcher_pSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime20AffinityValueFetcher_pSgMd, &_s14SiriKitRuntime20AffinityValueFetcher_pSgMR);
  v7 = String.init<A>(describing:)();
  MEMORY[0x1E12A1580](v7);

  MEMORY[0x1E12A1580](41, 0xE100000000000000);
  return v11;
}

uint64_t AffinityValueComparison.rawValue.getter(unsigned __int8 a1)
{
  v1 = 60;
  v2 = 42;
  if (a1 != 6)
  {
    v2 = 33;
  }

  v3 = 15677;
  if (a1 != 4)
  {
    v3 = 15649;
  }

  if (a1 <= 5u)
  {
    v2 = v3;
  }

  v4 = 15676;
  if (a1 != 2)
  {
    v4 = 15678;
  }

  if (a1)
  {
    v1 = 62;
  }

  if (a1 > 1u)
  {
    v1 = v4;
  }

  if (a1 <= 3u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t ComparingAffinityScorer.deinit()
{
  v1 = OBJC_IVAR____TtC14SiriKitRuntime21CachingAffinityScorer_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14SiriKitRuntime23ComparingAffinityScorer_first));
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime23ComparingAffinityScorer_second, &_s14SiriKitRuntime20AffinityValueFetcher_pSgMd, &_s14SiriKitRuntime20AffinityValueFetcher_pSgMR);
  return v0;
}

uint64_t ComparingAffinityScorer.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC14SiriKitRuntime21CachingAffinityScorer_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14SiriKitRuntime23ComparingAffinityScorer_first;

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v3));
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime23ComparingAffinityScorer_second, &_s14SiriKitRuntime20AffinityValueFetcher_pSgMd, &_s14SiriKitRuntime20AffinityValueFetcher_pSgMR);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

BOOL closure #1 in AffinityValueComparison.evaluate(input:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[0] = a3;
  v8 = type metadata accessor for TypeIdentifier();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v21 - v14;
  v16 = MEMORY[0x1E69E6158];
  v24 = MEMORY[0x1E69E6158];
  v22 = a1;
  v23 = a2;

  TypeIdentifier.init(for:)();
  static Transformation.defaultLengthLimit.getter();
  static Transformation.transform<A>(_:to:lengthLimit:)();
  if (v4)
  {
    (*(v9 + 8))(v15, v8);
    __swift_destroy_boxed_opaque_existential_1Tm(&v22);
  }

  else
  {
    v17 = *(v9 + 8);
    v17(v15, v8);
    __swift_destroy_boxed_opaque_existential_1Tm(&v22);
    v18 = v25;
    v24 = v16;
    v22 = v21[0];
    v23 = a4;

    TypeIdentifier.init(for:)();
    static Transformation.defaultLengthLimit.getter();
    static Transformation.transform<A>(_:to:lengthLimit:)();
    v17(v12, v8);
    __swift_destroy_boxed_opaque_existential_1Tm(&v22);
    return v18 < v21[1];
  }

  return v19;
}

BOOL closure #2 in AffinityValueComparison.evaluate(input:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[0] = a3;
  v8 = type metadata accessor for TypeIdentifier();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v21 - v14;
  v16 = MEMORY[0x1E69E6158];
  v24 = MEMORY[0x1E69E6158];
  v22 = a1;
  v23 = a2;

  TypeIdentifier.init(for:)();
  static Transformation.defaultLengthLimit.getter();
  static Transformation.transform<A>(_:to:lengthLimit:)();
  if (v4)
  {
    (*(v9 + 8))(v15, v8);
    __swift_destroy_boxed_opaque_existential_1Tm(&v22);
  }

  else
  {
    v17 = *(v9 + 8);
    v17(v15, v8);
    __swift_destroy_boxed_opaque_existential_1Tm(&v22);
    v18 = v25;
    v24 = v16;
    v22 = v21[0];
    v23 = a4;

    TypeIdentifier.init(for:)();
    static Transformation.defaultLengthLimit.getter();
    static Transformation.transform<A>(_:to:lengthLimit:)();
    v17(v12, v8);
    __swift_destroy_boxed_opaque_existential_1Tm(&v22);
    return v21[1] < v18;
  }

  return v19;
}

BOOL closure #3 in AffinityValueComparison.evaluate(input:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[0] = a3;
  v8 = type metadata accessor for TypeIdentifier();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v21 - v14;
  v16 = MEMORY[0x1E69E6158];
  v24 = MEMORY[0x1E69E6158];
  v22 = a1;
  v23 = a2;

  TypeIdentifier.init(for:)();
  static Transformation.defaultLengthLimit.getter();
  static Transformation.transform<A>(_:to:lengthLimit:)();
  if (v4)
  {
    (*(v9 + 8))(v15, v8);
    __swift_destroy_boxed_opaque_existential_1Tm(&v22);
  }

  else
  {
    v17 = *(v9 + 8);
    v17(v15, v8);
    __swift_destroy_boxed_opaque_existential_1Tm(&v22);
    v18 = v25;
    v24 = v16;
    v22 = v21[0];
    v23 = a4;

    TypeIdentifier.init(for:)();
    static Transformation.defaultLengthLimit.getter();
    static Transformation.transform<A>(_:to:lengthLimit:)();
    v17(v12, v8);
    __swift_destroy_boxed_opaque_existential_1Tm(&v22);
    return v21[1] >= v18;
  }

  return v19;
}

BOOL closure #4 in AffinityValueComparison.evaluate(input:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[0] = a3;
  v8 = type metadata accessor for TypeIdentifier();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v21 - v14;
  v16 = MEMORY[0x1E69E6158];
  v24 = MEMORY[0x1E69E6158];
  v22 = a1;
  v23 = a2;

  TypeIdentifier.init(for:)();
  static Transformation.defaultLengthLimit.getter();
  static Transformation.transform<A>(_:to:lengthLimit:)();
  if (v4)
  {
    (*(v9 + 8))(v15, v8);
    __swift_destroy_boxed_opaque_existential_1Tm(&v22);
  }

  else
  {
    v17 = *(v9 + 8);
    v17(v15, v8);
    __swift_destroy_boxed_opaque_existential_1Tm(&v22);
    v18 = v25;
    v24 = v16;
    v22 = v21[0];
    v23 = a4;

    TypeIdentifier.init(for:)();
    static Transformation.defaultLengthLimit.getter();
    static Transformation.transform<A>(_:to:lengthLimit:)();
    v17(v12, v8);
    __swift_destroy_boxed_opaque_existential_1Tm(&v22);
    return v18 >= v21[1];
  }

  return v19;
}

uint64_t closure #5 in AffinityValueComparison.evaluate(input:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t closure #6 in AffinityValueComparison.evaluate(input:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 0;
  }

  else
  {
    return (_stringCompareWithSmolCheck(_:_:expecting:)() ^ 1) & 1;
  }
}

uint64_t AffinityValueComparison.requiredChildCount.getter(char a1)
{
  if ((a1 & 0xFE) == 6)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AffinityValueComparison(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE100000000000000;
  v4 = 60;
  v5 = *a2;
  v6 = 0xE100000000000000;
  v7 = 42;
  if (v2 != 6)
  {
    v7 = 33;
    v6 = 0xE100000000000000;
  }

  v8 = 15677;
  if (v2 != 4)
  {
    v8 = 15649;
  }

  if (*a1 <= 5u)
  {
    v7 = v8;
    v6 = 0xE200000000000000;
  }

  v9 = 15676;
  if (v2 != 2)
  {
    v9 = 15678;
  }

  if (*a1)
  {
    v4 = 62;
    v3 = 0xE100000000000000;
  }

  if (*a1 > 1u)
  {
    v4 = v9;
    v3 = 0xE200000000000000;
  }

  if (*a1 <= 3u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v7;
  }

  if (v2 <= 3)
  {
    v11 = v3;
  }

  else
  {
    v11 = v6;
  }

  if (*a2 > 3u)
  {
    if (*a2 > 5u)
    {
      v12 = 0xE100000000000000;
      if (v5 == 6)
      {
        if (v10 != 42)
        {
          goto LABEL_43;
        }
      }

      else if (v10 != 33)
      {
LABEL_43:
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_44;
      }
    }

    else
    {
      v12 = 0xE200000000000000;
      if (v5 == 4)
      {
        if (v10 != 15677)
        {
          goto LABEL_43;
        }
      }

      else if (v10 != 15649)
      {
        goto LABEL_43;
      }
    }
  }

  else if (*a2 > 1u)
  {
    v12 = 0xE200000000000000;
    if (v5 == 2)
    {
      if (v10 != 15676)
      {
        goto LABEL_43;
      }
    }

    else if (v10 != 15678)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v12 = 0xE100000000000000;
    if (*a2)
    {
      if (v10 != 62)
      {
        goto LABEL_43;
      }
    }

    else if (v10 != 60)
    {
      goto LABEL_43;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_43;
  }

  v13 = 1;
LABEL_44:

  return v13 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AffinityValueComparison()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AffinityValueComparison()
{
  *v0;
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AffinityValueComparison()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AffinityValueComparison@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized AffinityValueComparison.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance AffinityValueComparison(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE100000000000000;
  v4 = 60;
  v5 = 0xE100000000000000;
  v6 = 42;
  if (v2 != 6)
  {
    v6 = 33;
    v5 = 0xE100000000000000;
  }

  v7 = 15677;
  if (v2 != 4)
  {
    v7 = 15649;
  }

  if (*v1 <= 5u)
  {
    v6 = v7;
    v5 = 0xE200000000000000;
  }

  v8 = 15676;
  if (v2 != 2)
  {
    v8 = 15678;
  }

  if (*v1)
  {
    v4 = 62;
    v3 = 0xE100000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v8;
    v3 = 0xE200000000000000;
  }

  if (*v1 <= 3u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t FixedValueFetcher.value.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t FixedValueFetcher.__allocating_init(value:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t FixedValueFetcher.init(value:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t FixedValueFetcher.fetchValue(input:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t FixedValueFetcher.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t FixedValueFetcher.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t EnvironmentValueFetcher.provider.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t EnvironmentValueFetcher.valueKey.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

void *EnvironmentValueFetcher.init(plist:)(uint64_t *a1)
{
  v2 = v1;
  outlined init with copy of Any(a1, v41);
  if ((swift_dynamicCast() & 1) == 0)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Logger.executor);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v29, v30))
    {
      goto LABEL_17;
    }

    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_1DC659000, v29, v30, "EnvironmentValueFetcher needs string argument", v31, 2u);
    v32 = v31;
LABEL_16:
    MEMORY[0x1E12A2F50](v32, -1, -1);
LABEL_17:

LABEL_18:
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    type metadata accessor for EnvironmentValueFetcher();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v41[0] = v39;
  v41[1] = v40;
  v4 = lazy protocol witness table accessor for type String and conformance String();
  v5 = MEMORY[0x1E12A1E10](46, 0xE100000000000000, 1, 1, MEMORY[0x1E69E6158], v4);
  if (v5[2] != 2)
  {

    if (one-time initialization token for executor == -1)
    {
LABEL_14:
      v33 = type metadata accessor for Logger();
      __swift_project_value_buffer(v33, static Logger.executor);

      v29 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v29, v34))
      {

        goto LABEL_18;
      }

      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v41[0] = v36;
      *v35 = 136315138;
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, v41);

      *(v35 + 4) = v37;
      _os_log_impl(&dword_1DC659000, v29, v34, "EnvironmentValueFetcher needs 2-part provider.value keypath, got %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      MEMORY[0x1E12A2F50](v36, -1, -1);
      v32 = v35;
      goto LABEL_16;
    }

LABEL_22:
    swift_once();
    goto LABEL_14;
  }

  if (!v5[2])
  {
    __break(1u);
    goto LABEL_22;
  }

  v6 = v5[4];
  v7 = v5[5];
  v8 = v5[6];
  v9 = v5[7];

  v10 = MEMORY[0x1E12A1500](v6, v7, v8, v9);
  v12 = v11;

  v2[2] = v10;
  v2[3] = v12;
  if (v5[2] < 2uLL)
  {
    __break(1u);
    goto LABEL_24;
  }

  v13 = v5[8];
  v14 = v5[9];
  v15 = v5[10];
  v16 = v5[11];

  v17 = MEMORY[0x1E12A1500](v13, v14, v15, v16);
  v19 = v18;

  v2[4] = v17;
  v2[5] = v19;
  if (one-time initialization token for executor != -1)
  {
LABEL_24:
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Logger.executor);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v41[0] = v24;
    *v23 = 136315138;
    v25 = (*(*v2 + 120))();
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v41);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_1DC659000, v21, v22, "%s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x1E12A2F50](v24, -1, -1);
    MEMORY[0x1E12A2F50](v23, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v2;
}

uint64_t EnvironmentValueFetcher.__allocating_init(provider:valueKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  EnvironmentValueFetcher.init(provider:valueKey:)(a1, a2, a3, a4);
  return v8;
}

void *EnvironmentValueFetcher.init(provider:valueKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.executor);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    v10 = (*(*v4 + 120))();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v14);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1DC659000, v6, v7, "%s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1E12A2F50](v9, -1, -1);
    MEMORY[0x1E12A2F50](v8, -1, -1);
  }

  return v4;
}

uint64_t EnvironmentValueFetcher.fetchValue(input:)()
{
  type metadata accessor for SiriEnvironment();
  v1 = static SiriEnvironment.forCurrentTask.getter();
  if (!v1)
  {
    v1 = static SiriEnvironment.default.getter();
  }

  v2 = v1;
  v6 = (*(*v0 + 120))();
  v7 = v3;
  MEMORY[0x1E12A1580](0x615668637465662ELL, 0xED0000292865756CLL);

  v4 = specialized logAction<A>(label:_:)(v6, v7, v2, v0);

  return v4;
}

uint64_t EnvironmentValueFetcher.debugDescription.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(53);
  MEMORY[0x1E12A1580](0xD000000000000022, 0x80000001DCA7C740);
  MEMORY[0x1E12A1580](v1[2], v1[3]);
  MEMORY[0x1E12A1580](0x65756C6176202C22, 0xED0000223D79654BLL);
  MEMORY[0x1E12A1580](v1[4], v1[5]);
  MEMORY[0x1E12A1580](10530, 0xE200000000000000);
  return 0;
}

uint64_t EnvironmentValueFetcher.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t EnvironmentValueFetcher.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

void closure #1 in static AffinityScore.loadAffinityScorer(from:defaultVersion:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for TypeIdentifier();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v212 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Any(a1, &v226);
  if (swift_dynamicCast())
  {
    v13 = *&v224[0];
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.executor);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_14;
    }

    v17 = swift_slowAlloc();
    *v17 = 134217984;
    *(v17 + 4) = v13;
    v18 = "FixedAffinityScorer(score: %ld)";
    v19 = v16;
    v20 = v15;
    v21 = v17;
    v22 = 12;
    goto LABEL_13;
  }

  outlined init with copy of Any(a1, &v226);
  if (swift_dynamicCast())
  {
    v23 = *&v224[0];
    v24 = round(*v224);
    if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v24 > -9.22337204e18)
    {
      if (v24 < 9.22337204e18)
      {
        if (one-time initialization token for executor == -1)
        {
LABEL_11:
          v13 = v24;
          v25 = type metadata accessor for Logger();
          __swift_project_value_buffer(v25, static Logger.executor);
          v15 = Logger.logObject.getter();
          v26 = static os_log_type_t.debug.getter();
          if (!os_log_type_enabled(v15, v26))
          {
LABEL_14:

            v27 = type metadata accessor for FixedAffinityScorer(0);
            v28 = *(v27 + 48);
            v29 = *(v27 + 52);
            v30 = swift_allocObject();
            UUID.init()();
            v31 = v30 + OBJC_IVAR____TtC14SiriKitRuntime19FixedAffinityScorer_score;
            *v31 = v13;
            *(v31 + 8) = 0;
LABEL_15:
            a3[3] = v27;
            v32 = lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type FixedAffinityScorer and conformance FixedAffinityScorer, type metadata accessor for FixedAffinityScorer);
LABEL_16:
            a3[4] = v32;
            *a3 = v30;
            return;
          }

          v17 = swift_slowAlloc();
          *v17 = 134218240;
          *(v17 + 4) = v13;
          *(v17 + 12) = 2048;
          *(v17 + 14) = v23;
          v18 = "FixedAffinityScorer(score: %ld) (rounded from double value %f)";
          v19 = v26;
          v20 = v15;
          v21 = v17;
          v22 = 22;
LABEL_13:
          _os_log_impl(&dword_1DC659000, v20, v19, v18, v21, v22);
          MEMORY[0x1E12A2F50](v17, -1, -1);
          goto LABEL_14;
        }

LABEL_68:
        v223 = v24;
        swift_once();
        v24 = v223;
        goto LABEL_11;
      }

LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    __break(1u);
    goto LABEL_67;
  }

  v223 = *&a3;
  outlined init with copy of Any(a1, &v226);
  v33 = MEMORY[0x1E69E6158];
  if (swift_dynamicCast())
  {
    v34 = *(&v224[0] + 1);
    v35 = HIBYTE(*(&v224[0] + 1)) & 0xFLL;
    if ((*(&v224[0] + 1) & 0x2000000000000000) == 0)
    {
      v35 = *&v224[0] & 0xFFFFFFFFFFFFLL;
    }

    if (!v35)
    {

      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v38 = type metadata accessor for Logger();
      __swift_project_value_buffer(v38, static Logger.executor);
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.debug.getter();
      v41 = os_log_type_enabled(v39, v40);
      a3 = *&v223;
      if (v41)
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_1DC659000, v39, v40, "FixedAffinityScorer(score: nil) (from empty string)", v42, 2u);
        MEMORY[0x1E12A2F50](v42, -1, -1);
      }

      v27 = type metadata accessor for FixedAffinityScorer(0);
      v43 = *(v27 + 48);
      v44 = *(v27 + 52);
      v30 = swift_allocObject();
      UUID.init()();
      v45 = v30 + OBJC_IVAR____TtC14SiriKitRuntime19FixedAffinityScorer_score;
      *v45 = 0;
      *(v45 + 8) = 1;
      goto LABEL_15;
    }

    v227 = v33;
    v226 = v224[0];
    v222 = *&v224[0];

    TypeIdentifier.init(for:)();
    static Transformation.defaultLengthLimit.getter();
    static Transformation.transform<A>(_:to:lengthLimit:)();
    if (!v3)
    {
      v49 = v222;
      (*(v9 + 8))(v12, v8);
      __swift_destroy_boxed_opaque_existential_1Tm(&v226);
      v50 = *&v224[0];
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v51 = type metadata accessor for Logger();
      __swift_project_value_buffer(v51, static Logger.executor);

      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        *&v226 = v55;
        *v54 = 134218242;
        *(v54 + 4) = v50;
        *(v54 + 12) = 2080;
        v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v34, &v226);

        *(v54 + 14) = v56;
        _os_log_impl(&dword_1DC659000, v52, v53, "FixedAffinityScorer(score: %ld) (from string %s)", v54, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v55);
        MEMORY[0x1E12A2F50](v55, -1, -1);
        MEMORY[0x1E12A2F50](v54, -1, -1);
      }

      else
      {
      }

      v27 = type metadata accessor for FixedAffinityScorer(0);
      v57 = *(v27 + 48);
      v58 = *(v27 + 52);
      v30 = swift_allocObject();
      UUID.init()();
      v59 = v30 + OBJC_IVAR____TtC14SiriKitRuntime19FixedAffinityScorer_score;
      *v59 = v50;
      *(v59 + 8) = 0;
      a3 = *&v223;
      goto LABEL_15;
    }

    (*(v9 + 8))(v12, v8);
    __swift_destroy_boxed_opaque_existential_1Tm(&v226);
    v4 = 0;
  }

  outlined init with copy of Any(a1, &v226);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_40;
  }

  v36 = *&v224[0];
  specialized Dictionary.getAsType<A>(key:)(1701869940, 0xE400000000000000, *&v224[0]);
  if (v4)
  {
LABEL_25:

    return;
  }

  if (!v37)
  {

LABEL_40:
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v60 = type metadata accessor for Logger();
    __swift_project_value_buffer(v60, static Logger.executor);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v61, v62))
    {
      goto LABEL_46;
    }

    v63 = swift_slowAlloc();
    *v63 = 0;
    v64 = "bad encoding dict";
    goto LABEL_44;
  }

  v46 = String.lowercased()();
  object = v46._object;

  v48 = specialized Dictionary.getAsType<A>(key:)(0x6E6572646C696863, 0xE800000000000000, v36);
  v67 = MEMORY[0x1E69E7CC0];
  if (v48)
  {
    v68 = v48;
  }

  else
  {
    v68 = MEMORY[0x1E69E7CC0];
  }

  v221 = specialized Dictionary.getAsType<A>(key:)(0x4165726975716572, 0xEA00000000006C6CLL, v36);
  v69 = specialized Dictionary.getAsType<A>(key:)(0x6E6F6973726576, 0xE700000000000000, v36);
  if (v70)
  {
    v71 = a2;
  }

  else
  {
    v71 = v69;
  }

  v72 = specialized Dictionary.getAsType<A>(key:)(0x65726F6373, 0xE500000000000000, v36);
  v222 = 0;
  if (v71 > 1)
  {

    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v74 = type metadata accessor for Logger();
    __swift_project_value_buffer(v74, static Logger.executor);
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 134218240;
      *(v77 + 4) = v71;
      *(v77 + 12) = 2048;
      *(v77 + 14) = 1;
      _os_log_impl(&dword_1DC659000, v75, v76, "bad version: got %ld, newer than our version %ld", v77, 0x16u);
      MEMORY[0x1E12A2F50](v77, -1, -1);
    }

    lazy protocol witness table accessor for type AffinityScoreError and conformance AffinityScoreError();
    swift_allocError();
    *v78 = v71;
    *(v78 + 8) = 0;
    goto LABEL_48;
  }

  v217 = v72;
  v218 = v73;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v219 = v71;
  v79 = type metadata accessor for Logger();
  v80 = __swift_project_value_buffer(v79, static Logger.executor);
  swift_bridgeObjectRetain_n();

  v214 = v80;
  v81 = Logger.logObject.getter();
  v82 = static os_log_type_t.debug.getter();

  v216 = v82;
  v83 = os_log_type_enabled(v81, v82);
  v220 = v68;
  if (v83)
  {
    v84 = swift_slowAlloc();
    v212 = v81;
    v85 = v84;
    v213 = swift_slowAlloc();
    *&v224[0] = v213;
    *v85 = 136315906;
    *(v85 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46._countAndFlagsBits, v46._object, v224);
    *(v85 + 12) = 2080;
    *&v226 = v217;
    BYTE8(v226) = v218 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
    v86 = String.init<A>(describing:)();
    v88 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v87, v224);
    v68 = v220;

    *(v85 + 14) = v88;
    *(v85 + 22) = 2048;
    v89 = *(v68 + 16);

    *(v85 + 24) = v89;

    *(v85 + 32) = 1024;
    *(v85 + 34) = v221 & 1;
    v90 = v212;
    _os_log_impl(&dword_1DC659000, v212, v216, "Loading scorer type=%s, score=%s, childCount=%ld, requireAll=%{BOOL}d", v85, 0x26u);
    v91 = v213;
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v91, -1, -1);
    MEMORY[0x1E12A2F50](v85, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  countAndFlagsBits = v46._countAndFlagsBits;
  if (v46._countAndFlagsBits == 7235949 && v46._object == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v92 = *(v68 + 16);
    if (v92)
    {
      v228 = v67;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v92, 0);
      v93 = 0;
      v94 = v228;
      v95 = v68 + 32;
      while (v93 < *(v68 + 16))
      {
        v96 = outlined init with copy of Any(v95, v224);
        MEMORY[0x1EEE9AC00](v96);
        *(&v212 - 2) = v224;
        *(&v212 - 1) = v219;
        v97 = v222;
        specialized logAction<A>(label:_:)(0xD000000000000012, 0x80000001DCA7C770, closure #1 in static AffinityScore.loadAffinityScorer(from:defaultVersion:)partial apply, &v226);
        v222 = v97;
        if (v97)
        {
          goto LABEL_155;
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v224);
        v228 = v94;
        v99 = *(v94 + 16);
        v98 = *(v94 + 24);
        if (v99 >= v98 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v98 > 1), v99 + 1, 1);
          v94 = v228;
        }

        ++v93;
        *(v94 + 16) = v99 + 1;
        outlined init with take of ReferenceResolutionClientProtocol(&v226, v94 + 40 * v99 + 32);
        v95 += 32;
        v68 = v220;
        if (v92 == v93)
        {

          goto LABEL_93;
        }
      }

      __break(1u);
LABEL_139:

LABEL_140:
      if (*(v94 + 16))
      {

        v111 = type metadata accessor for CombiningAffinityScorer(0);
        v146 = *(v111 + 48);
        v147 = *(v111 + 52);
        v30 = swift_allocObject();
        *(v30 + OBJC_IVAR____TtC14SiriKitRuntime23CombiningAffinityScorer_children) = v94;
        v148 = (v30 + OBJC_IVAR____TtC14SiriKitRuntime23CombiningAffinityScorer_reducer);
        v149 = closure #1 in static CombiningAffinityScorer.first(children:);
LABEL_142:
        *v148 = v149;
        v148[1] = 0;
        UUID.init()();
        v150 = v30 + OBJC_IVAR____TtC14SiriKitRuntime21CachingAffinityScorer_scoreState;
        *v150 = 0;
        *(v150 + 8) = 256;
        goto LABEL_96;
      }

      goto LABEL_160;
    }

    v94 = MEMORY[0x1E69E7CC0];
LABEL_93:
    if (*(v94 + 16))
    {

      v108 = swift_allocObject();
      *(v108 + 16) = 1;
      v109 = swift_allocObject();
      *(v109 + 16) = 0;
      v110 = swift_allocObject();
      *(v110 + 16) = v108;
      *(v110 + 24) = v221 & 1;
      *(v110 + 32) = v109;
      v111 = type metadata accessor for CombiningAffinityScorer(0);
      v112 = *(v111 + 48);
      v113 = *(v111 + 52);
      v30 = swift_allocObject();
      *(v30 + OBJC_IVAR____TtC14SiriKitRuntime23CombiningAffinityScorer_children) = v94;
      v114 = (v30 + OBJC_IVAR____TtC14SiriKitRuntime23CombiningAffinityScorer_reducer);
      v115 = closure #1 in static CombiningAffinityScorer.min(children:requireAll:)partial apply;
LABEL_95:
      *v114 = v115;
      v114[1] = v110;

      UUID.init()();
      v116 = v30 + OBJC_IVAR____TtC14SiriKitRuntime21CachingAffinityScorer_scoreState;
      *v116 = 0;
      *(v116 + 8) = 256;

LABEL_96:
      a3 = *&v223;
      *(*&v223 + 24) = v111;
LABEL_97:
      v32 = lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type CombiningAffinityScorer and conformance CachingAffinityScorer, type metadata accessor for CombiningAffinityScorer);
      goto LABEL_16;
    }

    goto LABEL_160;
  }

  if (v46._countAndFlagsBits == 7889261 && v46._object == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v100 = *(v220 + 16);
    if (!v100)
    {

      v102 = MEMORY[0x1E69E7CC0];
LABEL_110:
      if (*(v102 + 16))
      {

        v125 = swift_allocObject();
        *(v125 + 16) = 1;
        v126 = swift_allocObject();
        *(v126 + 16) = 0;
        v110 = swift_allocObject();
        *(v110 + 16) = v125;
        *(v110 + 24) = v221 & 1;
        *(v110 + 32) = v126;
        v111 = type metadata accessor for CombiningAffinityScorer(0);
        v127 = *(v111 + 48);
        v128 = *(v111 + 52);
        v30 = swift_allocObject();
        *(v30 + OBJC_IVAR____TtC14SiriKitRuntime23CombiningAffinityScorer_children) = v102;
        v114 = (v30 + OBJC_IVAR____TtC14SiriKitRuntime23CombiningAffinityScorer_reducer);
        v115 = closure #1 in static CombiningAffinityScorer.max(children:requireAll:)partial apply;
        goto LABEL_95;
      }

LABEL_160:

      v161 = Logger.logObject.getter();
      v162 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v161, v162))
      {

        goto LABEL_165;
      }

      v163 = swift_slowAlloc();
      v164 = swift_slowAlloc();
      *&v226 = v164;
      *v163 = 136315138;
      v165 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, v46._object, &v226);

      *(v163 + 4) = v165;
      v166 = "bad operand count, %s operator has no children";
      v167 = v162;
      v168 = v161;
      v169 = v163;
      v170 = 12;
      goto LABEL_162;
    }

    v228 = v67;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v100, 0);
    v101 = 0;
    v102 = v228;
    v103 = v220 + 32;
    while (v101 < *(v220 + 16))
    {
      v104 = outlined init with copy of Any(v103, v224);
      MEMORY[0x1EEE9AC00](v104);
      *(&v212 - 2) = v224;
      *(&v212 - 1) = v219;
      v105 = v222;
      specialized logAction<A>(label:_:)(0xD000000000000012, 0x80000001DCA7C770, closure #1 in static AffinityScore.loadAffinityScorer(from:defaultVersion:)partial apply, &v226);
      v222 = v105;
      if (v105)
      {
        goto LABEL_155;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v224);
      v228 = v102;
      v107 = *(v102 + 16);
      v106 = *(v102 + 24);
      if (v107 >= v106 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v106 > 1), v107 + 1, 1);
        v102 = v228;
      }

      ++v101;
      *(v102 + 16) = v107 + 1;
      outlined init with take of ReferenceResolutionClientProtocol(&v226, v102 + 40 * v107 + 32);
      v103 += 32;
      if (v100 == v101)
      {

        goto LABEL_110;
      }
    }

    __break(1u);
LABEL_157:

LABEL_158:
    if (*(v102 + 16))
    {

      v111 = type metadata accessor for CombiningAffinityScorer(0);
      v159 = *(v111 + 48);
      v160 = *(v111 + 52);
      v30 = swift_allocObject();
      *(v30 + OBJC_IVAR____TtC14SiriKitRuntime23CombiningAffinityScorer_children) = v102;
      v148 = (v30 + OBJC_IVAR____TtC14SiriKitRuntime23CombiningAffinityScorer_reducer);
      v149 = closure #1 in static CombiningAffinityScorer.last(children:);
      goto LABEL_142;
    }

    goto LABEL_160;
  }

  if (countAndFlagsBits == 7173491 && v46._object == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v117 = *(v220 + 16);
    if (!v117)
    {

      v119 = MEMORY[0x1E69E7CC0];
LABEL_124:
      if (*(v119 + 16))
      {

        v135 = swift_allocObject();
        *(v135 + 16) = 1;
        v136 = swift_allocObject();
        *(v136 + 16) = 0;
        v110 = swift_allocObject();
        *(v110 + 16) = v135;
        *(v110 + 24) = v221 & 1;
        *(v110 + 32) = v136;
        v111 = type metadata accessor for CombiningAffinityScorer(0);
        v137 = *(v111 + 48);
        v138 = *(v111 + 52);
        v30 = swift_allocObject();
        *(v30 + OBJC_IVAR____TtC14SiriKitRuntime23CombiningAffinityScorer_children) = v119;
        v114 = (v30 + OBJC_IVAR____TtC14SiriKitRuntime23CombiningAffinityScorer_reducer);
        v115 = closure #1 in static CombiningAffinityScorer.sum(children:requireAll:)partial apply;
        goto LABEL_95;
      }

      goto LABEL_160;
    }

    v228 = v67;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v117, 0);
    v118 = 0;
    v119 = v228;
    v120 = v220 + 32;
    while (v118 < *(v220 + 16))
    {
      v121 = outlined init with copy of Any(v120, v224);
      MEMORY[0x1EEE9AC00](v121);
      *(&v212 - 2) = v224;
      *(&v212 - 1) = v219;
      v122 = v222;
      specialized logAction<A>(label:_:)(0xD000000000000012, 0x80000001DCA7C770, closure #1 in static AffinityScore.loadAffinityScorer(from:defaultVersion:)partial apply, &v226);
      v222 = v122;
      if (v122)
      {
        goto LABEL_155;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v224);
      v228 = v119;
      v124 = *(v119 + 16);
      v123 = *(v119 + 24);
      if (v124 >= v123 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v123 > 1), v124 + 1, 1);
        v119 = v228;
      }

      ++v118;
      *(v119 + 16) = v124 + 1;
      outlined init with take of ReferenceResolutionClientProtocol(&v226, v119 + 40 * v124 + 32);
      v120 += 32;
      if (v117 == v118)
      {

        goto LABEL_124;
      }
    }

    __break(1u);
LABEL_174:

    goto LABEL_175;
  }

  if (countAndFlagsBits == 0x7473726966 && v46._object == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v129 = *(v220 + 16);
    if (!v129)
    {

      v94 = MEMORY[0x1E69E7CC0];
      goto LABEL_140;
    }

    v228 = v67;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v129, 0);
    v61 = 0;
    v94 = v228;
    v130 = v220 + 32;
    while (v61 < *(v220 + 16))
    {
      v131 = outlined init with copy of Any(v130, v224);
      MEMORY[0x1EEE9AC00](v131);
      *(&v212 - 2) = v224;
      *(&v212 - 1) = v219;
      v132 = v222;
      specialized logAction<A>(label:_:)(0xD000000000000012, 0x80000001DCA7C770, closure #1 in static AffinityScore.loadAffinityScorer(from:defaultVersion:)partial apply, &v226);
      v222 = v132;
      if (v132)
      {
        goto LABEL_155;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v224);
      v228 = v94;
      v134 = *(v94 + 16);
      v133 = *(v94 + 24);
      if (v134 >= v133 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v133 > 1), v134 + 1, 1);
        v94 = v228;
      }

      v61 = (v61 + 1);
      *(v94 + 16) = v134 + 1;
      outlined init with take of ReferenceResolutionClientProtocol(&v226, v94 + 40 * v134 + 32);
      v130 += 32;
      if (v129 == v61)
      {
        goto LABEL_139;
      }
    }

    __break(1u);
    goto LABEL_189;
  }

  if (countAndFlagsBits == 1953718636 && v46._object == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v139 = *(v220 + 16);
    if (!v139)
    {

      v102 = MEMORY[0x1E69E7CC0];
      goto LABEL_158;
    }

    v228 = v67;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v139, 0);
    v140 = 0;
    v102 = v228;
    v141 = v220 + 32;
    while (v140 < *(v220 + 16))
    {
      v142 = outlined init with copy of Any(v141, v224);
      MEMORY[0x1EEE9AC00](v142);
      *(&v212 - 2) = v224;
      *(&v212 - 1) = v219;
      v143 = v222;
      specialized logAction<A>(label:_:)(0xD000000000000012, 0x80000001DCA7C770, closure #1 in static AffinityScore.loadAffinityScorer(from:defaultVersion:)partial apply, &v226);
      v222 = v143;
      if (v143)
      {
        goto LABEL_155;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v224);
      v228 = v102;
      v145 = *(v102 + 16);
      v144 = *(v102 + 24);
      if (v145 >= v144 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v144 > 1), v145 + 1, 1);
        v102 = v228;
      }

      ++v140;
      *(v102 + 16) = v145 + 1;
      outlined init with take of ReferenceResolutionClientProtocol(&v226, v102 + 40 * v145 + 32);
      v141 += 32;
      if (v139 == v140)
      {
        goto LABEL_157;
      }
    }

    __break(1u);
LABEL_204:

    v161 = Logger.logObject.getter();
    v196 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v161, v196))
    {
      v163 = swift_slowAlloc();
      v197 = swift_slowAlloc();
      *&v226 = v197;
      *v163 = 134218498;
      v198 = *(v220 + 16);

      *(v163 + 4) = v198;

      *(v163 + 12) = 2080;
      v199 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v222, object, &v226);

      *(v163 + 14) = v199;
      *(v163 + 22) = 2048;
      *(v163 + 24) = v102;
      _os_log_impl(&dword_1DC659000, v161, v196, "bad operand count %ld for operator %s; needs %ld", v163, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v197);
      v171 = v197;
      goto LABEL_163;
    }

    goto LABEL_180;
  }

  if ((countAndFlagsBits != 0x747265766E69 || v46._object != 0xE600000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if ((countAndFlagsBits != 0x657261706D6F63 || v46._object != 0xE700000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {

      v61 = Logger.logObject.getter();
      v188 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v61, v188))
      {
        v63 = swift_slowAlloc();
        v189 = swift_slowAlloc();
        *&v226 = v189;
        *v63 = 136315138;
        v190 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, v46._object, &v226);

        *(v63 + 4) = v190;
        _os_log_impl(&dword_1DC659000, v61, v188, "unknown node type %s; throwing bad encoding", v63, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v189);
        v187 = v189;
        goto LABEL_187;
      }

LABEL_189:

      goto LABEL_46;
    }

    v172 = v222;
    v222 = specialized Dictionary.getAsType<A>(key:)(0x726F74617265706FLL, 0xE800000000000000, v36);
    if (v172)
    {

      goto LABEL_25;
    }

    object = v173;

    if (object)
    {

      v229._countAndFlagsBits = v222;
      v229._object = object;
      v221 = specialized AffinityValueComparison.init(rawValue:)(v229);
      if (v221 != 8)
      {
        v191 = *(v220 + 16);
        if ((v221 & 0xFE) == 6)
        {
          v102 = 1;
        }

        else
        {
          v102 = 2;
        }

        if (v191 == v102)
        {
          v228 = v67;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v191, 0);
          v192 = 0;
          v119 = v228;
          v193 = v220 + 32;
          while (v191 != v192)
          {
            if (v192 >= *(v220 + 16))
            {
              goto LABEL_218;
            }

            outlined init with copy of Any(v193, v224);
            static AffinityScore.loadValueFetcher(from:)(v224, &v226);
            __swift_destroy_boxed_opaque_existential_1Tm(v224);
            v228 = v119;
            v195 = *(v119 + 16);
            v194 = *(v119 + 24);
            if (v195 >= v194 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v194 > 1), v195 + 1, 1);
              v119 = v228;
            }

            ++v192;
            *(v119 + 16) = v195 + 1;
            v153 = (v119 + 32);
            outlined init with take of ReferenceResolutionClientProtocol(&v226, v119 + 32 + 40 * v195);
            v193 += 32;
            if (v191 == v192)
            {

              v152 = Logger.logObject.getter();
              v200 = static os_log_type_t.debug.getter();

              if (os_log_type_enabled(v152, v200))
              {
                v202 = swift_slowAlloc();
                v203 = swift_slowAlloc();
                *&v226 = v203;
                *v202 = 136315394;
                v204 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v222, object, &v226);

                *(v202 + 4) = v204;
                *(v202 + 12) = 2048;
                *(v202 + 14) = *(v119 + 16);

                _os_log_impl(&dword_1DC659000, v152, v200, "returning CombiningAffinityScorer(oper=%s, children=%ld)", v202, 0x16u);
                __swift_destroy_boxed_opaque_existential_1Tm(v203);
                MEMORY[0x1E12A2F50](v203, -1, -1);
                MEMORY[0x1E12A2F50](v202, -1, -1);

                goto LABEL_211;
              }

              goto LABEL_210;
            }
          }

LABEL_217:
          __break(1u);
LABEL_218:
          __break(1u);
          goto LABEL_219;
        }

        goto LABEL_204;
      }

      v61 = Logger.logObject.getter();
      v184 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v61, v184))
      {
        v63 = swift_slowAlloc();
        v185 = swift_slowAlloc();
        *&v226 = v185;
        *v63 = 136315138;
        v186 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v222, object, &v226);

        *(v63 + 4) = v186;
        _os_log_impl(&dword_1DC659000, v61, v184, "unknown comparison operator %s; throwing badEncoding", v63, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v185);
        v187 = v185;
LABEL_187:
        MEMORY[0x1E12A2F50](v187, -1, -1);
        goto LABEL_45;
      }

      goto LABEL_189;
    }

    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v61, v62))
    {
      goto LABEL_46;
    }

    v63 = swift_slowAlloc();
    *v63 = 0;
    v64 = "bad comparison operator encoding; missing or non-string operator";
LABEL_44:
    _os_log_impl(&dword_1DC659000, v61, v62, v64, v63, 2u);
LABEL_45:
    MEMORY[0x1E12A2F50](v63, -1, -1);
LABEL_46:

    lazy protocol witness table accessor for type AffinityScoreError and conformance AffinityScoreError();
    swift_allocError();
    v66 = 3;
LABEL_47:
    *v65 = v66;
    *(v65 + 8) = 1;
LABEL_48:
    swift_willThrow();
    return;
  }

  v151 = *(v220 + 16);
  if (!v151)
  {

    v119 = MEMORY[0x1E69E7CC0];
LABEL_175:
    if (*(v119 + 16) == 1)
    {

      if (*(v119 + 16))
      {
        outlined init with copy of ReferenceResolutionClientProtocol(v119 + 32, &v226);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14SiriKitRuntime14AffinityScorer_pGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime14AffinityScorer_pGMR);
        v174 = swift_allocObject();
        *(v174 + 16) = xmmword_1DCA66060;
        outlined init with copy of ReferenceResolutionClientProtocol(&v226, v174 + 32);
        v175 = swift_allocObject();
        *(v175 + 16) = v217;
        *(v175 + 24) = v218 & 1;
        v176 = type metadata accessor for CombiningAffinityScorer(0);
        v177 = *(v176 + 48);
        v178 = *(v176 + 52);
        v30 = swift_allocObject();
        *(v30 + OBJC_IVAR____TtC14SiriKitRuntime23CombiningAffinityScorer_children) = v174;
        v179 = (v30 + OBJC_IVAR____TtC14SiriKitRuntime23CombiningAffinityScorer_reducer);
        *v179 = closure #1 in static CombiningAffinityScorer.invert(child:fallbackValue:)partial apply;
        v179[1] = v175;
        UUID.init()();
        __swift_destroy_boxed_opaque_existential_1Tm(&v226);
        v180 = v30 + OBJC_IVAR____TtC14SiriKitRuntime21CachingAffinityScorer_scoreState;
        *v180 = 0;
        *(v180 + 8) = 256;
        a3 = *&v223;
        *(*&v223 + 24) = v176;
        goto LABEL_97;
      }

      __break(1u);
      goto LABEL_217;
    }

    v161 = Logger.logObject.getter();
    v181 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v161, v181))
    {
      v163 = swift_slowAlloc();
      v164 = swift_slowAlloc();
      *&v226 = v164;
      *v163 = 136315394;
      v182 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, v46._object, &v226);

      *(v163 + 4) = v182;
      *(v163 + 12) = 2048;
      v183 = *(v119 + 16);

      *(v163 + 14) = v183;

      v166 = "bad operand count, %s operator has %ld children (should have 1)";
      v167 = v181;
      v168 = v161;
      v169 = v163;
      v170 = 22;
LABEL_162:
      _os_log_impl(&dword_1DC659000, v168, v167, v166, v169, v170);
      __swift_destroy_boxed_opaque_existential_1Tm(v164);
      v171 = v164;
LABEL_163:
      MEMORY[0x1E12A2F50](v171, -1, -1);
      MEMORY[0x1E12A2F50](v163, -1, -1);
LABEL_165:

LABEL_166:
      lazy protocol witness table accessor for type AffinityScoreError and conformance AffinityScoreError();
      swift_allocError();
      v66 = 2;
      goto LABEL_47;
    }

LABEL_180:

    swift_bridgeObjectRelease_n();
    goto LABEL_166;
  }

  v228 = v67;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v151, 0);
  v152 = 0;
  v119 = v228;
  v153 = "Fetcher(provider=";
  v154 = v220 + 32;
  while (v152 < *(v220 + 16))
  {
    v155 = outlined init with copy of Any(v154, v224);
    MEMORY[0x1EEE9AC00](v155);
    *(&v212 - 2) = v224;
    *(&v212 - 1) = v219;
    v156 = v222;
    specialized logAction<A>(label:_:)(0xD000000000000012, 0x80000001DCA7C770, closure #1 in static AffinityScore.loadAffinityScorer(from:defaultVersion:)partial apply, &v226);
    v222 = v156;
    if (v156)
    {
LABEL_155:

      __swift_destroy_boxed_opaque_existential_1Tm(v224);

      return;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v224);
    v228 = v119;
    v158 = *(v119 + 16);
    v157 = *(v119 + 24);
    if (v158 >= v157 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v157 > 1), v158 + 1, 1);
      v119 = v228;
    }

    v152 = (v152 + 1);
    *(v119 + 16) = v158 + 1;
    outlined init with take of ReferenceResolutionClientProtocol(&v226, v119 + 40 * v158 + 32);
    v154 += 32;
    if (v151 == v152)
    {
      goto LABEL_174;
    }
  }

  __break(1u);
LABEL_210:

LABEL_211:
  v205 = *(v119 + 16);
  if (v205 == 2)
  {
    outlined init with copy of ReferenceResolutionClientProtocol(v153, &v226);
    outlined init with copy of ReferenceResolutionClientProtocol(v119 + 72, v224);

    v206 = type metadata accessor for ComparingAffinityScorer(0);
    v207 = v206;
LABEL_215:
    v208 = *(v206 + 48);
    v209 = *(v206 + 52);
    v30 = swift_allocObject();
    v210 = v30 + OBJC_IVAR____TtC14SiriKitRuntime23ComparingAffinityScorer_score;
    *v210 = v217;
    *(v210 + 8) = v218 & 1;
    *(v30 + OBJC_IVAR____TtC14SiriKitRuntime23ComparingAffinityScorer_comparison) = v221;
    outlined init with copy of ReferenceResolutionClientProtocol(&v226, v30 + OBJC_IVAR____TtC14SiriKitRuntime23ComparingAffinityScorer_first);
    outlined init with copy of ReferenceResolutionClientProtocol?(v224, v30 + OBJC_IVAR____TtC14SiriKitRuntime23ComparingAffinityScorer_second, &_s14SiriKitRuntime20AffinityValueFetcher_pSgMd, &_s14SiriKitRuntime20AffinityValueFetcher_pSgMR);
    UUID.init()();
    outlined destroy of ReferenceResolutionClientProtocol?(v224, &_s14SiriKitRuntime20AffinityValueFetcher_pSgMd, &_s14SiriKitRuntime20AffinityValueFetcher_pSgMR);
    __swift_destroy_boxed_opaque_existential_1Tm(&v226);
    v211 = v30 + OBJC_IVAR____TtC14SiriKitRuntime21CachingAffinityScorer_scoreState;
    *v211 = 0;
    *(v211 + 8) = 256;
    a3 = *&v223;
    *(*&v223 + 24) = v207;
    v32 = lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type ComparingAffinityScorer and conformance CachingAffinityScorer, type metadata accessor for ComparingAffinityScorer);
    goto LABEL_16;
  }

  if (v205)
  {
    outlined init with copy of ReferenceResolutionClientProtocol(v153, &v226);

    v206 = type metadata accessor for ComparingAffinityScorer(0);
    v207 = v206;
    memset(v224, 0, sizeof(v224));
    v225 = 0;
    goto LABEL_215;
  }

LABEL_219:
  __break(1u);
}

uint64_t specialized Dictionary.getAsType<A>(key:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  outlined init with copy of Any(*(a3 + 56) + 32 * v4, v9);
  outlined init with take of Any(v9, v10);
  outlined init with copy of Any(v10, v9);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    return v8;
  }

  else
  {
    lazy protocol witness table accessor for type AffinityScoreError and conformance AffinityScoreError();
    swift_allocError();
    *v7 = 3;
    *(v7 + 8) = 1;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }
}

{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  outlined init with copy of Any(*(a3 + 56) + 32 * v4, v9);
  outlined init with take of Any(v9, v10);
  outlined init with copy of Any(v10, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayypGMd, &_sSayypGMR);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    return v8;
  }

  else
  {
    lazy protocol witness table accessor for type AffinityScoreError and conformance AffinityScoreError();
    swift_allocError();
    *v7 = 3;
    *(v7 + 8) = 1;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }
}

{
  if (!*(a3 + 16))
  {
    return 2;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 2;
  }

  outlined init with copy of Any(*(a3 + 56) + 32 * v4, v9);
  outlined init with take of Any(v9, v10);
  outlined init with copy of Any(v10, v9);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    return v8;
  }

  else
  {
    lazy protocol witness table accessor for type AffinityScoreError and conformance AffinityScoreError();
    swift_allocError();
    *v7 = 3;
    *(v7 + 8) = 1;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }
}

{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  outlined init with copy of Any(*(a3 + 56) + 32 * v4, v9);
  outlined init with take of Any(v9, v10);
  outlined init with copy of Any(v10, v9);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    return v8;
  }

  else
  {
    lazy protocol witness table accessor for type AffinityScoreError and conformance AffinityScoreError();
    swift_allocError();
    *v7 = 3;
    *(v7 + 8) = 1;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }
}

uint64_t static AffinityScore.loadValueFetcher(from:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  outlined init with copy of Any(a1, v65);
  if (swift_dynamicCast())
  {
    v4 = *&v64[0];
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.executor);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      *(v8 + 4) = v4;
      _os_log_impl(&dword_1DC659000, v6, v7, "FixedValueFetcher(value: %ld)", v8, 0xCu);
      MEMORY[0x1E12A2F50](v8, -1, -1);
    }

    *&v65[0] = v4;
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    v12 = type metadata accessor for FixedValueFetcher();
    result = swift_allocObject();
    *(result + 16) = v9;
    *(result + 24) = v11;
    a2[3] = v12;
    goto LABEL_20;
  }

  outlined init with copy of Any(a1, v65);
  if (swift_dynamicCast())
  {
    v14 = *&v64[0];
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.executor);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134217984;
      *(v18 + 4) = v14;
      _os_log_impl(&dword_1DC659000, v16, v17, "FixedValueFetcher(value: %f)", v18, 0xCu);
      MEMORY[0x1E12A2F50](v18, -1, -1);
    }

    *&v65[0] = 0;
    *(&v65[0] + 1) = 0xE000000000000000;
    Double.write<A>(to:)();
    v20 = *(&v65[0] + 1);
    v19 = *&v65[0];
LABEL_19:
    v26 = type metadata accessor for FixedValueFetcher();
    result = swift_allocObject();
    *(result + 16) = v19;
    *(result + 24) = v20;
    a2[3] = v26;
LABEL_20:
    a2[4] = &protocol witness table for FixedValueFetcher;
    *a2 = result;
    return result;
  }

  outlined init with copy of Any(a1, v65);
  if (swift_dynamicCast())
  {
    v20 = *(&v64[0] + 1);
    v19 = *&v64[0];
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.executor);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *&v65[0] = v25;
      *v24 = 136315138;
      *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v65);
      _os_log_impl(&dword_1DC659000, v22, v23, "FixedValueFetcher(value: %s)", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x1E12A2F50](v25, -1, -1);
      MEMORY[0x1E12A2F50](v24, -1, -1);
    }

    goto LABEL_19;
  }

  outlined init with copy of Any(a1, v65);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
  if (swift_dynamicCast())
  {
    if (*(*&v64[0] + 16) && (v27 = specialized __RawDictionaryStorage.find<A>(_:)(0x6D6E6F7269766E65, 0xEB00000000746E65), (v28 & 1) != 0))
    {
      outlined init with copy of Any(*(*&v64[0] + 56) + 32 * v27, v65);
    }

    else
    {
      memset(v65, 0, sizeof(v65));
    }

    if (*(*&v64[0] + 16) && (v34 = specialized __RawDictionaryStorage.find<A>(_:)(0x7475706E69, 0xE500000000000000), (v35 & 1) != 0))
    {
      outlined init with copy of Any(*(*&v64[0] + 56) + 32 * v34, v64);
    }

    else
    {

      memset(v64, 0, sizeof(v64));
    }

    outlined init with copy of ReferenceResolutionClientProtocol?(v65, v62, &_sypSgMd, &_sypSgMR);
    outlined init with copy of ReferenceResolutionClientProtocol?(v64, v63, &_sypSgMd, &_sypSgMR);
    outlined init with copy of ReferenceResolutionClientProtocol?(v62, &v60, &_sypSgMd, &_sypSgMR);
    v56 = v60;
    v57 = v61;
    if (*(&v61 + 1))
    {
      outlined init with take of Any(&v56, v58);
      v36 = MEMORY[0x1E69E7CC0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v36 + 2) + 1, 1, v36);
      }

      v38 = *(v36 + 2);
      v37 = *(v36 + 3);
      if (v38 >= v37 >> 1)
      {
        v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v36);
      }

      *(v36 + 2) = v38 + 1;
      outlined init with take of Any(v58, &v36[32 * v38 + 32]);
    }

    else
    {
      outlined destroy of ReferenceResolutionClientProtocol?(&v56, &_sypSgMd, &_sypSgMR);
      v36 = MEMORY[0x1E69E7CC0];
    }

    outlined init with copy of ReferenceResolutionClientProtocol?(v63, &v60, &_sypSgMd, &_sypSgMR);
    v56 = v60;
    v57 = v61;
    if (*(&v61 + 1))
    {
      outlined init with take of Any(&v56, v58);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v36 + 2) + 1, 1, v36);
      }

      v40 = *(v36 + 2);
      v39 = *(v36 + 3);
      if (v40 >= v39 >> 1)
      {
        v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v36);
      }

      *(v36 + 2) = v40 + 1;
      outlined init with take of Any(v58, &v36[32 * v40 + 32]);
    }

    else
    {
      outlined destroy of ReferenceResolutionClientProtocol?(&v56, &_sypSgMd, &_sypSgMR);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
    swift_arrayDestroy();
    v41 = *(v36 + 2);

    if (v41 == 1)
    {
      outlined init with copy of ReferenceResolutionClientProtocol?(v65, v58, &_sypSgMd, &_sypSgMR);
      if (v59)
      {
        outlined init with take of Any(v58, &v60);
        outlined init with copy of Any(&v60, v58);
        v42 = type metadata accessor for EnvironmentValueFetcher();
        swift_allocObject();
        v43 = EnvironmentValueFetcher.init(plist:)(v58);
        if (v43)
        {
          v44 = &protocol witness table for EnvironmentValueFetcher;
LABEL_62:
          a2[3] = v42;
          a2[4] = v44;
          *a2 = v43;
LABEL_64:
          __swift_destroy_boxed_opaque_existential_1Tm(&v60);
          goto LABEL_65;
        }

        goto LABEL_63;
      }

      outlined destroy of ReferenceResolutionClientProtocol?(v58, &_sypSgMd, &_sypSgMR);
      outlined init with copy of ReferenceResolutionClientProtocol?(v64, v58, &_sypSgMd, &_sypSgMR);
      if (v59)
      {
        outlined init with take of Any(v58, &v60);
        outlined init with copy of Any(&v60, v58);
        v42 = type metadata accessor for InputValueFetcher();
        swift_allocObject();
        v43 = InputValueFetcher.init(plist:)(v58);
        if (v43)
        {
          v44 = &protocol witness table for InputValueFetcher;
          goto LABEL_62;
        }

LABEL_63:
        lazy protocol witness table accessor for type AffinityScoreError and conformance AffinityScoreError();
        swift_allocError();
        *v50 = 3;
        *(v50 + 8) = 1;
        swift_willThrow();
        goto LABEL_64;
      }

      outlined destroy of ReferenceResolutionClientProtocol?(v58, &_sypSgMd, &_sypSgMR);
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v51 = type metadata accessor for Logger();
      __swift_project_value_buffer(v51, static Logger.executor);
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&dword_1DC659000, v52, v53, "loadValueFetcher logic error", v54, 2u);
        MEMORY[0x1E12A2F50](v54, -1, -1);
      }

      lazy protocol witness table accessor for type AffinityScoreError and conformance AffinityScoreError();
      swift_allocError();
      *v55 = 1;
      *(v55 + 8) = 1;
    }

    else
    {
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v45 = type metadata accessor for Logger();
      __swift_project_value_buffer(v45, static Logger.executor);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_1DC659000, v46, v47, "value fetcher must be either an input fetcher XOR an environment value fetcher", v48, 2u);
        MEMORY[0x1E12A2F50](v48, -1, -1);
      }

      lazy protocol witness table accessor for type AffinityScoreError and conformance AffinityScoreError();
      swift_allocError();
      *v49 = 3;
      *(v49 + 8) = 1;
    }

    swift_willThrow();
LABEL_65:
    outlined destroy of ReferenceResolutionClientProtocol?(v64, &_sypSgMd, &_sypSgMR);
    return outlined destroy of ReferenceResolutionClientProtocol?(v65, &_sypSgMd, &_sypSgMR);
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  __swift_project_value_buffer(v29, static Logger.executor);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_1DC659000, v30, v31, "bad encoding, not fixed or a dict", v32, 2u);
    MEMORY[0x1E12A2F50](v32, -1, -1);
  }

  lazy protocol witness table accessor for type AffinityScoreError and conformance AffinityScoreError();
  swift_allocError();
  *v33 = 3;
  *(v33 + 8) = 1;
  return swift_willThrow();
}

uint64_t _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC@<X0>(void (*a1)(_BYTE *, double)@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for Result();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v15[-v12];
  a1(v7, v11);
  swift_storeEnumTagMultiPayload();
  return (*(v9 + 32))(a3, v13, v8);
}

uint64_t specialized logAction<A>(label:_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.executor);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *&v27[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v27);
    _os_log_impl(&dword_1DC659000, v11, v12, "==>> %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x1E12A2F50](v14, -1, -1);
    MEMORY[0x1E12A2F50](v13, -1, -1);
  }

  closure #1 in implicit closure #1 in RemoteFlowPluginPackage.init(bundleId:bundlePath:supportedTopics:sharedFlowPluginServiceClient:overrideAffinityScorer:)(a3, a4, v27);
  outlined init with copy of ReferenceResolutionClientProtocol(v27, v26);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v25 = v18;
    *v17 = 136315394;
    *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v25);
    *(v17 + 12) = 2080;
    outlined init with copy of ReferenceResolutionClientProtocol(v26, &v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime14AffinityScorer_pMd, &_s14SiriKitRuntime14AffinityScorer_pMR);
    v19 = String.init<A>(describing:)();
    v21 = v20;
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v25);

    *(v17 + 14) = v22;
    _os_log_impl(&dword_1DC659000, v15, v16, "<<== %s -> %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v18, -1, -1);
    MEMORY[0x1E12A2F50](v17, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v26);
  }

  outlined init with take of ReferenceResolutionClientProtocol(v27, a5);
}

void logAction<A>(label:_:)(uint64_t a1@<X0>, unint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = a5;
  v40 = a1;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v39 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v37 - v15;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.executor);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v37[1] = a4;
    v21 = v20;
    v22 = swift_slowAlloc();
    v38 = a6;
    v23 = a3;
    v24 = v6;
    v25 = v22;
    v41 = v22;
    *v21 = 136315138;
    *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, a2, &v41);
    _os_log_impl(&dword_1DC659000, v18, v19, "==>> %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    v26 = v25;
    v6 = v24;
    a3 = v23;
    a6 = v38;
    MEMORY[0x1E12A2F50](v26, -1, -1);
    MEMORY[0x1E12A2F50](v21, -1, -1);
  }

  a3();
  v27 = *(v11 + 16);
  v27(v16, a6, v6);

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = v6;
    v32 = swift_slowAlloc();
    v41 = v32;
    *v30 = 136315394;
    *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, a2, &v41);
    *(v30 + 12) = 2080;
    v27(v39, v16, v31);
    v33 = String.init<A>(describing:)();
    v35 = v34;
    (*(v11 + 8))(v16, v31);
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, &v41);

    *(v30 + 14) = v36;
    _os_log_impl(&dword_1DC659000, v28, v29, "<<== %s -> %s", v30, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v32, -1, -1);
    MEMORY[0x1E12A2F50](v30, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v16, v6);
  }
}

uint64_t partial apply for closure #1 in logAction<A>(label:_:)(void *a1)
{
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  result = v4();
  if (v2)
  {
    *a1 = v2;
  }

  return result;
}

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC14SiriKitRuntime24RemoteConversationClientC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy14SiriKitRuntime24RemoteConversationClientCGMd, &_ss11_SetStorageCy14SiriKitRuntime24RemoteConversationClientCGMR);
    v2 = static _SetStorage.convert(_:capacity:)();
    v18 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for RemoteConversationClient();
      do
      {
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          specialized _NativeSet.resize(capacity:)(v12 + 1);
        }

        v2 = v18;
        v3 = *(v18 + 40);
        Hasher.init(_seed:)();
        v4 = *(v17 + 112);
        v5 = *(v17 + 120);
        String.hash(into:)();
        result = Hasher._finalize()();
        v7 = v18 + 56;
        v8 = -1 << *(v18 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v18 + 56 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v18 + 56 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v18 + 48) + 8 * v11) = v17;
        ++*(v18 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
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
      type metadata accessor for LNSystemProtocol();
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
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

unint64_t specialized _NativeSet._unsafeInsertNew(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  Hasher.init(_seed:)();
  v5 = *(a1 + 112);
  v6 = *(a1 + 120);
  String.hash(into:)();
  Hasher._finalize()();
  v7 = -1 << *(a2 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

{
  NSObject._rawHashValue(seed:)(*(a2 + 40));
  v4 = -1 << *(a2 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCyScTySo13SABaseCommandCSgs5Error_pGGMd, &_ss11_SetStorageCyScTySo13SABaseCommandCSgs5Error_pGGMR);
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
  return specialized _NativeSet.copy()(MEMORY[0x1E69D0820], &_ss11_SetStorageCy16SiriMessageTypes22ConversationSessionKeyOGMd, &_ss11_SetStorageCy16SiriMessageTypes22ConversationSessionKeyOGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy14SiriKitRuntime24RemoteConversationClientCGMd, &_ss11_SetStorageCy14SiriKitRuntime24RemoteConversationClientCGMR);
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

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

unint64_t lazy protocol witness table accessor for type AffinityScoreError and conformance AffinityScoreError()
{
  result = lazy protocol witness table cache variable for type AffinityScoreError and conformance AffinityScoreError;
  if (!lazy protocol witness table cache variable for type AffinityScoreError and conformance AffinityScoreError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AffinityScoreError and conformance AffinityScoreError);
  }

  return result;
}

uint64_t partial apply for closure #1 in static CombiningAffinityScorer.invert(child:fallbackValue:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = *(v4 + 24);
  if (a4)
  {
    return *(v4 + 16);
  }

  else
  {
    return 0;
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

      type metadata accessor for LNSystemProtocol();
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

  type metadata accessor for LNSystemProtocol();
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

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    specialized _NativeSet.resize(capacity:)(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
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
    type metadata accessor for LNSystemProtocol();
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

uint64_t specialized logAction<A>(label:_:)(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.executor);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v38[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v38);
    _os_log_impl(&dword_1DC659000, v7, v8, "==>> %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1E12A2F50](v10, -1, -1);
    MEMORY[0x1E12A2F50](v9, -1, -1);
  }

  v11 = a4[2];
  v12 = a4[3];
  v14 = a4[4];
  v13 = a4[5];
  if (!SiriEnvironment.getProvider(name:)(v11, v12))
  {
    countAndFlagsBits = 0;
    object = 0;
    goto LABEL_11;
  }

  swift_getObjectType();
  v15._countAndFlagsBits = v14;
  v15._object = v13;
  v17 = SiriEnvironmentStringKeyedValueFetching.getValue(forKey:)(v15);
  if (!v16)
  {
    countAndFlagsBits = v17.value._countAndFlagsBits;
    object = v17.value._object;
    swift_unknownObjectRelease();
LABEL_11:
    swift_bridgeObjectRetain_n();

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v39 = v32;
      *v31 = 136315394;
      *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v39);
      *(v31 + 12) = 2080;
      v38[0] = countAndFlagsBits;
      v38[1] = object;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v33 = String.init<A>(describing:)();
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v39);

      *(v31 + 14) = v35;
      _os_log_impl(&dword_1DC659000, v29, v30, "<<== %s -> %s", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v32, -1, -1);
      MEMORY[0x1E12A2F50](v31, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    return countAndFlagsBits;
  }

  swift_unknownObjectRelease();
  v18 = v16;

  v19 = v16;
  v20 = Logger.logObject.getter();
  countAndFlagsBits = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v20, countAndFlagsBits))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v38[0] = v23;
    *v22 = 136315394;
    *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v38);
    *(v22 + 12) = 2080;
    v39 = v16;
    v24 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v25 = String.init<A>(describing:)();
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v38);

    *(v22 + 14) = v27;
    _os_log_impl(&dword_1DC659000, v20, countAndFlagsBits, "<<== %s threw %s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v23, -1, -1);
    MEMORY[0x1E12A2F50](v22, -1, -1);
  }

  else
  {
  }

  v38[0] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  swift_willThrowTypedImpl();
  return countAndFlagsBits;
}

unint64_t specialized AffinityValueComparison.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AffinityValueComparison.init(rawValue:), v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

uint64_t instantiation function for generic protocol witness table for FixedAffinityScorer(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type FixedAffinityScorer and conformance FixedAffinityScorer, type metadata accessor for FixedAffinityScorer);
  result = lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type FixedAffinityScorer and conformance FixedAffinityScorer, type metadata accessor for FixedAffinityScorer);
  *(a1 + 16) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for CachingAffinityScorer(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type CachingAffinityScorer and conformance CachingAffinityScorer, type metadata accessor for CachingAffinityScorer);
  result = lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type CachingAffinityScorer and conformance CachingAffinityScorer, type metadata accessor for CachingAffinityScorer);
  *(a1 + 16) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type AffinityValueComparison and conformance AffinityValueComparison()
{
  result = lazy protocol witness table cache variable for type AffinityValueComparison and conformance AffinityValueComparison;
  if (!lazy protocol witness table cache variable for type AffinityValueComparison and conformance AffinityValueComparison)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AffinityValueComparison and conformance AffinityValueComparison);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for AffinityScoreError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AffinityScoreError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t getEnumTag for AffinityScoreError(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for AffinityScoreError(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t type metadata completion function for FixedAffinityScorer()
{
  return type metadata completion function for FixedAffinityScorer();
}

{
  result = type metadata accessor for UUID();
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

uint64_t getEnumTagSinglePayload for AffinityValueComparison(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AffinityValueComparison(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AffinityScore(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for AffinityScore(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for CachingAffinityScorer.ScoreState(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 10))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CachingAffinityScorer.ScoreState(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 10) = v3;
  return result;
}

uint64_t getEnumTag for CachingAffinityScorer.ScoreState(uint64_t a1)
{
  if (*(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for CachingAffinityScorer.ScoreState(uint64_t result, int a2)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    *(result + 9) = 1;
  }

  else
  {
    *(result + 9) = 0;
  }

  return result;
}

uint64_t static AffinityScorerUtils.topCloseableEntity(candidates:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = type metadata accessor for RREntity();
  v4 = *(v23 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RRCandidate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[0] = a1;

  specialized MutableCollection<>.sort(by:)(v25);
  v13 = v25[0];
  v22 = v25[0][2];
  if (v22)
  {
    v14 = 0;
    v21 = v25[0] + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v19 = a2;
    v20 = v9 + 16;
    v15 = (v9 + 8);
    while (v14 < v13[2])
    {
      (*(v9 + 16))(v12, &v21[*(v9 + 72) * v14], v8);
      RRCandidate.entity.getter();
      RREntity.usoEntity.getter();
      (*(v4 + 8))(v7, v23);
      static UsoEntity_CodeGenConverter.convert(entity:)();

      if (v25[3])
      {
        outlined init with copy of Any?(v25, v24);
        type metadata accessor for UsoEntity_common_App();
        if (swift_dynamicCast() || (type metadata accessor for UsoEntity_common_Window(), swift_dynamicCast()))
        {

          __swift_destroy_boxed_opaque_existential_1Tm(v24);
          outlined destroy of ReferenceResolutionClientProtocol?(v25, &_sypSgMd, &_sypSgMR);
          a2 = v19;
          (*(v9 + 32))(v19, v12, v8);
          v16 = 0;
          return (*(v9 + 56))(a2, v16, 1, v8);
        }

        type metadata accessor for UsoEntity_common_AppEntity();
        if (swift_dynamicCast() || (type metadata accessor for UsoEntity_common_UserEntity(), swift_dynamicCast()))
        {

          dispatch thunk of CodeGenBase.usoIdentifiers.getter();
        }

        (*v15)(v12, v8);
        __swift_destroy_boxed_opaque_existential_1Tm(v24);
      }

      else
      {
        (*v15)(v12, v8);
      }

      ++v14;
      outlined destroy of ReferenceResolutionClientProtocol?(v25, &_sypSgMd, &_sypSgMR);
      if (v22 == v14)
      {

        v16 = 1;
        a2 = v19;
        return (*(v9 + 56))(a2, v16, 1, v8);
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {

    v16 = 1;
    return (*(v9 + 56))(a2, v16, 1, v8);
  }

  return result;
}

uint64_t static AffinityScorerUtils.topOpenableEntity(candidates:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = type metadata accessor for RREntity();
  v4 = *(v23 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RRCandidate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[0] = a1;

  specialized MutableCollection<>.sort(by:)(v25);
  v13 = v25[0];
  v22 = v25[0][2];
  if (v22)
  {
    v14 = 0;
    v21 = v25[0] + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v19 = a2;
    v20 = v9 + 16;
    v15 = (v9 + 8);
    while (v14 < v13[2])
    {
      (*(v9 + 16))(v12, &v21[*(v9 + 72) * v14], v8);
      RRCandidate.entity.getter();
      RREntity.usoEntity.getter();
      (*(v4 + 8))(v7, v23);
      static UsoEntity_CodeGenConverter.convert(entity:)();

      if (v25[3])
      {
        outlined init with copy of Any?(v25, v24);
        type metadata accessor for UsoEntity_common_App();
        if (swift_dynamicCast())
        {

          if (!RRCandidate.isOnScreen.getter())
          {

            v17 = v19;
            (*(v9 + 32))(v19, v12, v8);
            (*(v9 + 56))(v17, 0, 1, v8);
            __swift_destroy_boxed_opaque_existential_1Tm(v24);
            return outlined destroy of ReferenceResolutionClientProtocol?(v25, &_sypSgMd, &_sypSgMR);
          }
        }

        else
        {
          type metadata accessor for UsoEntity_common_AppEntity();
          if (swift_dynamicCast())
          {

            dispatch thunk of CodeGenBase.usoIdentifiers.getter();
          }
        }

        (*v15)(v12, v8);
        __swift_destroy_boxed_opaque_existential_1Tm(v24);
      }

      else
      {
        (*v15)(v12, v8);
      }

      ++v14;
      outlined destroy of ReferenceResolutionClientProtocol?(v25, &_sypSgMd, &_sypSgMR);
      if (v22 == v14)
      {

        a2 = v19;
        return (*(v9 + 56))(a2, 1, 1, v8);
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {

    return (*(v9 + 56))(a2, 1, 1, v8);
  }

  return result;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(int64_t *a1, uint64_t a2, unint64_t a3, int64_t a4)
{
  v6 = v4;
  v126 = a1;
  v9 = type metadata accessor for RRCandidate();
  v10 = *(v9 - 8);
  v11 = v10[8];
  MEMORY[0x1EEE9AC00](v9);
  v128 = &v123 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v139 = &v123 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v145 = &v123 - v16;
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v17);
  v144 = &v123 - v19;
  v136 = a3;
  v20 = *(a3 + 8);
  if (v20 < 1)
  {
    v22 = MEMORY[0x1E69E7CC0];
LABEL_95:
    v5 = *v126;
    if (!*v126)
    {
      goto LABEL_134;
    }

    a3 = v22;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v118 = a3;
    }

    else
    {
LABEL_128:
      v118 = specialized _ArrayBuffer._consumeAndCreateNew()(a3);
    }

    v146 = v118;
    a3 = *(v118 + 2);
    if (a3 >= 2)
    {
      while (*v136)
      {
        v119 = *&v118[16 * a3];
        v120 = v118;
        v121 = *&v118[16 * a3 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)(&(*v136)[v10[9] * v119], &(*v136)[v10[9] * *&v118[16 * a3 + 16]], &(*v136)[v10[9] * v121], v5);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v121 < v119)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v120 = specialized _ArrayBuffer._consumeAndCreateNew()(v120);
        }

        if (a3 - 2 >= *(v120 + 2))
        {
          goto LABEL_122;
        }

        v122 = &v120[16 * a3];
        *v122 = v119;
        *(v122 + 1) = v121;
        v146 = v120;
        specialized Array.remove(at:)(a3 - 1);
        v118 = v146;
        a3 = *(v146 + 2);
        if (a3 <= 1)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_132;
    }

LABEL_106:

    return;
  }

  v21 = 0;
  v142 = (v10 + 1);
  v143 = v10 + 2;
  v141 = (v10 + 4);
  v22 = MEMORY[0x1E69E7CC0];
  v135 = v10;
  v125 = a4;
  while (1)
  {
    v23 = v21;
    v24 = v21 + 1;
    v129 = v22;
    if (v21 + 1 >= v20)
    {
      v39 = v21 + 1;
    }

    else
    {
      v137 = v20;
      v130 = v6;
      v25 = v10[9];
      v5 = &(*v136)[v25 * v24];
      v133 = *v136;
      v26 = v133;
      v27 = v10[2];
      v28 = v144;
      v27(v144, &v133[v25 * v24], v9, v18);
      v29 = &v26[v25 * v23];
      v30 = v145;
      v138 = v27;
      (v27)(v145, v29, v9);
      RRCandidate.score.getter();
      v32 = v31;
      RRCandidate.score.getter();
      v34 = v33;
      v35 = v23;
      v36 = v10[1];
      a3 = v142;
      v36(v30, v9);
      v134 = v36;
      v36(v28, v9);
      v124 = v35;
      v37 = v35 + 2;
      v140 = v25;
      v38 = &v133[v25 * (v35 + 2)];
      while (1)
      {
        v39 = v137;
        if (v137 == v37)
        {
          break;
        }

        a3 = v144;
        v40 = v138;
        v138(v144, v38, v9);
        v41 = v145;
        v40(v145, v5, v9);
        RRCandidate.score.getter();
        v43 = v42;
        RRCandidate.score.getter();
        v45 = v44;
        v46 = v134;
        (v134)(v41, v9);
        v46(a3, v9);
        v10 = v135;
        ++v37;
        v38 += v140;
        v5 += v140;
        if (v34 < v32 == v45 >= v43)
        {
          v39 = v37 - 1;
          break;
        }
      }

      v47 = v129;
      v6 = v130;
      a4 = v125;
      v23 = v124;
      if (v34 < v32)
      {
        if (v39 < v124)
        {
          goto LABEL_125;
        }

        if (v124 < v39)
        {
          v48 = v39;
          a3 = v140 * (v39 - 1);
          v5 = v39 * v140;
          v137 = v39;
          v49 = v124 * v140;
          do
          {
            if (v23 != --v48)
            {
              v130 = v6;
              v50 = *v136;
              if (!*v136)
              {
                goto LABEL_131;
              }

              v51 = *v141;
              (*v141)(v128, &v50[v49], v9, v47);
              if (v49 < a3 || &v50[v49] >= &v50[v5])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v49 != a3)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v51(&v50[a3], v128, v9);
              v47 = v129;
              v6 = v130;
            }

            ++v23;
            a3 -= v140;
            v5 -= v140;
            v49 += v140;
          }

          while (v23 < v48);
          v10 = v135;
          a4 = v125;
          v23 = v124;
          v39 = v137;
        }
      }
    }

    v52 = v136[1];
    if (v39 < v52)
    {
      if (__OFSUB__(v39, v23))
      {
        goto LABEL_124;
      }

      if (v39 - v23 < a4)
      {
        if (__OFADD__(v23, a4))
        {
          goto LABEL_126;
        }

        if (v23 + a4 >= v52)
        {
          v5 = v136[1];
        }

        else
        {
          v5 = v23 + a4;
        }

        if (v5 < v23)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v39 != v5)
        {
          break;
        }
      }
    }

    v5 = v39;
    if (v39 < v23)
    {
      goto LABEL_123;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v22 = v129;
    }

    else
    {
      v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v129 + 2) + 1, 1, v129);
    }

    a3 = *(v22 + 2);
    v53 = *(v22 + 3);
    v54 = a3 + 1;
    if (a3 >= v53 >> 1)
    {
      v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), a3 + 1, 1, v22);
    }

    *(v22 + 2) = v54;
    v55 = &v22[16 * a3];
    *(v55 + 4) = v23;
    *(v55 + 5) = v5;
    v56 = *v126;
    if (!*v126)
    {
      goto LABEL_133;
    }

    v131 = v5;
    if (a3)
    {
      while (1)
      {
        v5 = v54 - 1;
        if (v54 >= 4)
        {
          break;
        }

        if (v54 == 3)
        {
          v57 = *(v22 + 4);
          v58 = *(v22 + 5);
          v67 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          v60 = v67;
LABEL_52:
          if (v60)
          {
            goto LABEL_112;
          }

          v73 = &v22[16 * v54];
          v75 = *v73;
          v74 = *(v73 + 1);
          v76 = __OFSUB__(v74, v75);
          v77 = v74 - v75;
          v78 = v76;
          if (v76)
          {
            goto LABEL_115;
          }

          v79 = &v22[16 * v5 + 32];
          v81 = *v79;
          v80 = *(v79 + 1);
          v67 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v67)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v77, v82))
          {
            goto LABEL_119;
          }

          if (v77 + v82 >= v59)
          {
            if (v59 < v82)
            {
              v5 = v54 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v83 = &v22[16 * v54];
        v85 = *v83;
        v84 = *(v83 + 1);
        v67 = __OFSUB__(v84, v85);
        v77 = v84 - v85;
        v78 = v67;
LABEL_66:
        if (v78)
        {
          goto LABEL_114;
        }

        v86 = &v22[16 * v5];
        v88 = *(v86 + 4);
        v87 = *(v86 + 5);
        v67 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v67)
        {
          goto LABEL_117;
        }

        if (v89 < v77)
        {
          goto LABEL_3;
        }

LABEL_73:
        a3 = v5 - 1;
        if (v5 - 1 >= v54)
        {
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
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*v136)
        {
          goto LABEL_130;
        }

        v94 = v22;
        v95 = *&v22[16 * a3 + 32];
        v96 = *&v22[16 * v5 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)(&(*v136)[v10[9] * v95], &(*v136)[v10[9] * *&v22[16 * v5 + 32]], &(*v136)[v10[9] * v96], v56);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v96 < v95)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = specialized _ArrayBuffer._consumeAndCreateNew()(v94);
        }

        if (a3 >= *(v94 + 2))
        {
          goto LABEL_109;
        }

        v97 = &v94[16 * a3];
        *(v97 + 4) = v95;
        *(v97 + 5) = v96;
        v146 = v94;
        specialized Array.remove(at:)(v5);
        v22 = v146;
        v54 = *(v146 + 2);
        if (v54 <= 1)
        {
          goto LABEL_3;
        }
      }

      v61 = &v22[16 * v54 + 32];
      v62 = *(v61 - 64);
      v63 = *(v61 - 56);
      v67 = __OFSUB__(v63, v62);
      v64 = v63 - v62;
      if (v67)
      {
        goto LABEL_110;
      }

      v66 = *(v61 - 48);
      v65 = *(v61 - 40);
      v67 = __OFSUB__(v65, v66);
      v59 = v65 - v66;
      v60 = v67;
      if (v67)
      {
        goto LABEL_111;
      }

      v68 = &v22[16 * v54];
      v70 = *v68;
      v69 = *(v68 + 1);
      v67 = __OFSUB__(v69, v70);
      v71 = v69 - v70;
      if (v67)
      {
        goto LABEL_113;
      }

      v67 = __OFADD__(v59, v71);
      v72 = v59 + v71;
      if (v67)
      {
        goto LABEL_116;
      }

      if (v72 >= v64)
      {
        v90 = &v22[16 * v5 + 32];
        v92 = *v90;
        v91 = *(v90 + 1);
        v67 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v67)
        {
          goto LABEL_120;
        }

        if (v59 < v93)
        {
          v5 = v54 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v20 = v136[1];
    v21 = v131;
    a4 = v125;
    if (v131 >= v20)
    {
      goto LABEL_95;
    }
  }

  v130 = v6;
  v98 = *v136;
  v99 = v10[9];
  v140 = v10[2];
  v100 = &v98[v99 * (v39 - 1)];
  v101 = v23;
  v102 = -v99;
  v124 = v101;
  v103 = (v101 - v39);
  v138 = v98;
  v127 = v99;
  v104 = &v98[v39 * v99];
  v131 = v5;
LABEL_85:
  v137 = v39;
  v132 = v104;
  v133 = v103;
  v105 = v104;
  v134 = v100;
  while (1)
  {
    v106 = v144;
    v107 = v140;
    (v140)(v144, v105, v9, v18);
    v108 = v145;
    v107(v145, v100, v9);
    RRCandidate.score.getter();
    v110 = v109;
    RRCandidate.score.getter();
    v112 = v111;
    v113 = *v142;
    (*v142)(v108, v9);
    v114 = v106;
    a3 = v9;
    v113(v114, v9);
    if (v112 >= v110)
    {
LABEL_84:
      v39 = v137 + 1;
      v100 = &v134[v127];
      v103 = v133 - 1;
      v5 = v131;
      v104 = &v132[v127];
      if (v137 + 1 != v131)
      {
        goto LABEL_85;
      }

      v6 = v130;
      v10 = v135;
      v23 = v124;
      if (v131 < v124)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v138)
    {
      break;
    }

    v115 = *v141;
    v116 = v139;
    (*v141)(v139, v105, v9);
    swift_arrayInitWithTakeFrontToBack();
    v115(v100, v116, v9);
    v100 += v102;
    v105 += v102;
    if (__CFADD__(v103++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
}

void specialized _merge<A>(low:mid:high:buffer:by:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v65 = type metadata accessor for RRCandidate();
  v8 = *(v65 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v64 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v63 = &v53 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_60;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v16 = (a2 - a1) / v14;
  v68 = a1;
  v67 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v34 = a4 + v18;
    if (v18 >= 1)
    {
      v35 = -v14;
      v57 = a4;
      v58 = (v8 + 16);
      v55 = (v8 + 8);
      v56 = a1;
      v36 = v34;
      v59 = -v14;
      do
      {
        v54 = v34;
        v37 = a2;
        v38 = a2 + v35;
        v61 = v37;
        v62 = v38;
        while (1)
        {
          if (v37 <= a1)
          {
            v68 = v37;
            v66 = v54;
            goto LABEL_58;
          }

          v40 = a3;
          v60 = v34;
          v41 = a3 + v35;
          v42 = v36 + v35;
          v43 = *v58;
          v44 = v63;
          v45 = v65;
          (*v58)(v63, v42, v65);
          v46 = v38;
          v47 = v64;
          (v43)(v64, v46, v45);
          RRCandidate.score.getter();
          v49 = v48;
          RRCandidate.score.getter();
          v51 = v50;
          v52 = *v55;
          (*v55)(v47, v45);
          v52(v44, v45);
          if (v51 < v49)
          {
            break;
          }

          v34 = v42;
          a3 = v41;
          if (v40 < v36 || v41 >= v36)
          {
            swift_arrayInitWithTakeFrontToBack();
            v38 = v62;
            a1 = v56;
          }

          else
          {
            v38 = v62;
            a1 = v56;
            if (v40 != v36)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v36 = v42;
          v39 = v42 > v57;
          v35 = v59;
          v37 = v61;
          if (!v39)
          {
            a2 = v61;
            goto LABEL_57;
          }
        }

        a3 = v41;
        if (v40 < v61 || v41 >= v61)
        {
          a2 = v62;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v56;
          v35 = v59;
          v34 = v60;
        }

        else
        {
          a2 = v62;
          a1 = v56;
          v35 = v59;
          v34 = v60;
          if (v40 != v61)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v36 > v57);
    }

LABEL_57:
    v68 = a2;
    v66 = v34;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v62 = a4 + v17;
    v66 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      v20 = *(v8 + 16);
      v60 = a3;
      v61 = v8 + 16;
      v58 = (v8 + 8);
      v59 = v20;
      v21 = v64;
      do
      {
        v22 = a1;
        v23 = v63;
        v24 = a2;
        v25 = v65;
        v26 = a2;
        v27 = v59;
        (v59)(v63, v24, v65);
        v27(v21, a4, v25);
        RRCandidate.score.getter();
        v29 = v28;
        RRCandidate.score.getter();
        v31 = v30;
        v32 = *v58;
        (*v58)(v21, v25);
        v32(v23, v25);
        if (v31 >= v29)
        {
          v33 = v22;
          if (v22 < a4 || v22 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v26;
          }

          else
          {
            a2 = v26;
            if (v22 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v67 = a4 + v14;
          a4 += v14;
        }

        else
        {
          a2 = v26 + v14;
          v33 = v22;
          if (v22 < v26 || v22 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v22 != v26)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v33 + v14;
        v68 = a1;
      }

      while (a4 < v62 && a2 < v60);
    }
  }

LABEL_58:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v68, &v67, &v66);
}

{
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
  v8 = *(*(v69 - 8) + 64);
  MEMORY[0x1EEE9AC00](v69);
  v63 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v62 = &v55 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v61 = &v55 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v67 = &v55 - v15;
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_62;
  }

  v18 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_63;
  }

  v19 = (a2 - a1) / v17;
  v72 = a1;
  v71 = a4;
  if (v19 >= v18 / v17)
  {
    v21 = v18 / v17 * v17;
    if (a4 < a2 || a2 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v37 = a4 + v21;
    if (v21 >= 1)
    {
      v38 = -v17;
      v39 = v37;
      v68 = a1;
      v57 = -v17;
      v58 = a4;
      while (2)
      {
        while (1)
        {
          v55 = v37;
          v40 = a2;
          v41 = a2 + v38;
          v59 = v40;
          v60 = v41;
          while (1)
          {
            if (v40 <= a1)
            {
              v72 = v40;
              v70 = v55;
              goto LABEL_60;
            }

            v56 = v37;
            v66 = a3 + v38;
            v42 = v39 + v38;
            v43 = v67;
            v44 = a3;
            outlined init with copy of ReferenceResolutionClientProtocol?(v39 + v38, v67, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
            v45 = v61;
            outlined init with copy of ReferenceResolutionClientProtocol?(v41, v61, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
            v46 = v62;
            outlined init with copy of ReferenceResolutionClientProtocol?(v43, v62, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
            v47 = v69;
            v48 = *(v69 + 48);
            v65 = *(v46 + v48);
            outlined destroy of ConversationHandlerLocator.ScoredHandler(v46 + v48);
            v49 = v63;
            outlined init with copy of ReferenceResolutionClientProtocol?(v45, v63, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
            v50 = *(v47 + 48);
            v64 = *(v49 + v50);
            outlined destroy of ConversationHandlerLocator.ScoredHandler(v49 + v50);
            v51 = type metadata accessor for UUID();
            v52 = *(*(v51 - 8) + 8);
            v52(v49, v51);
            v52(v46, v51);
            outlined destroy of ReferenceResolutionClientProtocol?(v45, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
            outlined destroy of ReferenceResolutionClientProtocol?(v67, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
            if (v64 < v65)
            {
              break;
            }

            v37 = v42;
            a3 = v66;
            v53 = v58;
            if (v44 < v39 || v66 >= v39)
            {
              swift_arrayInitWithTakeFrontToBack();
              v41 = v60;
              a1 = v68;
              v38 = v57;
            }

            else
            {
              v41 = v60;
              a1 = v68;
              v38 = v57;
              if (v44 != v39)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v39 = v42;
            v40 = v59;
            if (v42 <= v53)
            {
              a2 = v59;
              goto LABEL_59;
            }
          }

          v54 = v58;
          a3 = v66;
          if (v44 < v59 || v66 >= v59)
          {
            break;
          }

          a2 = v60;
          a1 = v68;
          v37 = v56;
          v38 = v57;
          if (v44 != v59)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v39 <= v54)
          {
            goto LABEL_59;
          }
        }

        a2 = v60;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v68;
        v37 = v56;
        v38 = v57;
        if (v39 > v54)
        {
          continue;
        }

        break;
      }
    }

LABEL_59:
    v72 = a2;
    v70 = v37;
  }

  else
  {
    v20 = v19 * v17;
    if (a4 < a1 || a1 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v60 = a4 + v20;
    v70 = a4 + v20;
    if (v20 >= 1 && a2 < a3)
    {
      v66 = a3;
      v59 = v17;
      do
      {
        v68 = a1;
        v23 = v67;
        outlined init with copy of ReferenceResolutionClientProtocol?(a2, v67, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
        v24 = v61;
        outlined init with copy of ReferenceResolutionClientProtocol?(a4, v61, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
        v25 = v62;
        outlined init with copy of ReferenceResolutionClientProtocol?(v23, v62, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
        v26 = v69;
        v27 = *(v69 + 48);
        v65 = *(v25 + v27);
        outlined destroy of ConversationHandlerLocator.ScoredHandler(v25 + v27);
        v28 = v63;
        outlined init with copy of ReferenceResolutionClientProtocol?(v24, v63, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
        v29 = *(v26 + 48);
        v64 = *(v28 + v29);
        outlined destroy of ConversationHandlerLocator.ScoredHandler(v28 + v29);
        v30 = type metadata accessor for UUID();
        v31 = *(*(v30 - 8) + 8);
        v32 = a4;
        v31(v28, v30);
        v31(v25, v30);
        outlined destroy of ReferenceResolutionClientProtocol?(v24, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v23, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
        if (v64 >= v65)
        {
          v33 = v59;
          a4 += v59;
          v34 = v68;
          v36 = v32;
          if (v68 < v32 || v68 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            v35 = v66;
          }

          else
          {
            v35 = v66;
            if (v68 != v36)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v71 = a4;
        }

        else
        {
          v33 = v59;
          v34 = v68;
          if (v68 < a2 || v68 >= a2 + v59)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v33;
            v35 = v66;
          }

          else
          {
            v35 = v66;
            if (v68 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v33;
          }
        }

        a1 = v34 + v33;
        v72 = a1;
      }

      while (a4 < v60 && a2 < v35);
    }
  }

LABEL_60:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v72, &v71, &v70);
}

uint64_t specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  return specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(a1, a2, a3, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
}

{
  return specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(a1, a2, a3, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
}

{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for RRCandidate();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(*(result - 8) + 72);
  if (!v9)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v7 - v6 == 0x8000000000000000 && v9 == -1)
  {
    goto LABEL_17;
  }

  if (v5 < v6 || v5 >= v6 + (v7 - v6) / v9 * v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v5 != v6)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

unint64_t specialized static AffinityScorerUtils.getTask(_:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v22[-v2];
  v4 = type metadata accessor for Siri_Nlu_External_UserParse();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v22[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  USOParse.userParse.getter();
  Siri_Nlu_External_UserParse.preferredUserDialogAct.getter(v3);
  (*(v5 + 8))(v8, v4);
  if ((*(v10 + 48))(v3, 1, v9) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v3, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.executor);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1DC659000, v16, v17, "Could not obtain uso tasks", v18, 2u);
      MEMORY[0x1E12A2F50](v18, -1, -1);
    }

    return 0;
  }

  (*(v10 + 32))(v13, v3, v9);
  result = static ConversionUtils.convertUserDialogActToTasks(userDialogAct:)();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

LABEL_17:
    (*(v10 + 8))(v13, v9);

    return 0;
  }

  v20 = result;
  v21 = __CocoaSet.count.getter();
  result = v20;
  if (!v21)
  {
    goto LABEL_17;
  }

LABEL_12:
  if ((result & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x1E12A1FE0](0);
    goto LABEL_15;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v19 = *(result + 32);

LABEL_15:

    (*(v10 + 8))(v13, v9);
    return v19;
  }

  __break(1u);
  return result;
}

void *specialized static AffinityScorerUtils.getEntitySpans(_:)()
{
  v70 = type metadata accessor for Node();
  v61 = *(v70 - 8);
  v0 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v69 = &v60 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v64 = *(v68 - 1);
  v2 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v63 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Siri_Nlu_External_UserParse();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v60 - v16;
  v18 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v66 = *(v18 - 8);
  v67 = v18;
  v19 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v62 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v65 = &v60 - v22;
  v23 = USOParse.userParse.getter();
  v24 = MEMORY[0x1E129C0F0](v23);
  (*(v10 + 8))(v13, v9);
  v25 = *(v24 + 16);
  if (!v25)
  {
LABEL_6:

    v27 = 1;
    goto LABEL_8;
  }

  v26 = 0;
  while (1)
  {
    if (v26 >= *(v24 + 16))
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      swift_once();
LABEL_10:
      v28 = type metadata accessor for Logger();
      __swift_project_value_buffer(v28, static Logger.executor);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_1DC659000, v29, v30, "Could not extract userStatedTask, returning empty entity spans", v31, 2u);
        MEMORY[0x1E12A2F50](v31, -1, -1);
      }

      return MEMORY[0x1E69E7CC0];
    }

    (*(v5 + 16))(v8, v24 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v26, v4);
    if (Siri_Nlu_External_UserDialogAct.hasUserStatedTask.getter())
    {
      break;
    }

    ++v26;
    (*(v5 + 8))(v8, v4);
    if (v25 == v26)
    {
      goto LABEL_6;
    }
  }

  (*(v5 + 32))(v17, v8, v4);
  v27 = 0;
LABEL_8:
  (*(v5 + 56))(v17, v27, 1, v4);
  if ((*(v5 + 48))(v17, 1, v4) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v17, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
    if (one-time initialization token for executor == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_40;
  }

  v32 = v63;
  Siri_Nlu_External_UserDialogAct.userStatedTask.getter();
  (*(v5 + 8))(v17, v4);
  v33 = v62;
  Siri_Nlu_External_UserStatedTask.task.getter();
  (*(v64 + 8))(v32, v68);
  v35 = v65;
  v34 = v66;
  v36 = v67;
  (*(v66 + 32))(v65, v33, v67);
  v64 = static UsoGraphProtoReader.fromSwiftProtobuf(protobufGraph:vocabManager:)();
  v39 = dispatch thunk of Graph.nodes.getter();
  v40 = *(v39 + 16);
  if (v40)
  {
    v68 = *(v61 + 16);
    v41 = *(v61 + 80);
    v63 = v39;
    v42 = v39 + ((v41 + 32) & ~v41);
    v43 = *(v61 + 72);
    v44 = (v61 + 8);
    v37 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v46 = v69;
      v45 = v70;
      v68(v69, v42, v70);
      v47 = Node.entitySpans.getter();
      (*v44)(v46, v45);
      v48 = *(v47 + 16);
      v49 = v37[2];
      v50 = v49 + v48;
      if (__OFADD__(v49, v48))
      {
        goto LABEL_36;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v50 <= v37[3] >> 1)
      {
        if (*(v47 + 16))
        {
          goto LABEL_28;
        }
      }

      else
      {
        if (v49 <= v50)
        {
          v52 = v49 + v48;
        }

        else
        {
          v52 = v49;
        }

        v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v52, 1, v37);
        if (*(v47 + 16))
        {
LABEL_28:
          v53 = (v37[3] >> 1) - v37[2];
          v54 = *(type metadata accessor for UsoEntitySpan() - 8);
          if (v53 < v48)
          {
            goto LABEL_38;
          }

          v55 = (*(v54 + 80) + 32) & ~*(v54 + 80);
          v56 = *(v54 + 72);
          swift_arrayInitWithCopy();

          if (v48)
          {
            v57 = v37[2];
            v58 = __OFADD__(v57, v48);
            v59 = v57 + v48;
            if (v58)
            {
              goto LABEL_39;
            }

            v37[2] = v59;
          }

          goto LABEL_18;
        }
      }

      if (v48)
      {
        goto LABEL_37;
      }

LABEL_18:
      v42 += v43;
      if (!--v40)
      {

        v34 = v66;
        v36 = v67;
        v35 = v65;
        goto LABEL_34;
      }
    }
  }

  v37 = MEMORY[0x1E69E7CC0];
LABEL_34:

  (*(v34 + 8))(v35, v36);
  return v37;
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t one-time initialization function for kAffinityScorers()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14SiriKitRuntime15AffinityScoring_pGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime15AffinityScoring_pGMR);
  v0 = swift_allocObject();
  v0[4] = 0xD00000000000001ELL;
  v0[7] = &type metadata for AlarmAffinityScorer;
  v0[8] = &protocol witness table for AlarmAffinityScorer;
  v0[5] = 0x80000001DCA7C9A0;
  v0[12] = &type metadata for AppLaunchAffinityScorer;
  v0[13] = &protocol witness table for AppLaunchAffinityScorer;
  v0[9] = 0xD00000000000001ELL;
  v0[10] = 0x80000001DCA7C9C0;
  v0[17] = &type metadata for CAMRootFlowAffinityScorer;
  v0[18] = &protocol witness table for CAMRootFlowAffinityScorer;
  v0[14] = 0xD000000000000020;
  v0[15] = 0x80000001DCA7C9E0;
  v0[22] = &type metadata for CarCommandsAffinityScorer;
  v0[23] = &protocol witness table for CarCommandsAffinityScorer;
  v0[19] = 0xD00000000000002CLL;
  v0[20] = 0x80000001DCA7CA10;
  v0[27] = &type metadata for CalendarAffinityScorer;
  v0[28] = &protocol witness table for CalendarAffinityScorer;
  v0[24] = 0xD000000000000029;
  v0[25] = 0x80000001DCA7CA40;
  v0[32] = &type metadata for ContactsAffinityScorer;
  v0[33] = &protocol witness table for ContactsAffinityScorer;
  v0[29] = 0xD000000000000029;
  v0[30] = 0x80000001DCA7CA70;
  v0[37] = &type metadata for EmergencyAffinityScorer;
  v0[38] = &protocol witness table for EmergencyAffinityScorer;
  v0[34] = 0xD000000000000022;
  v0[35] = 0x80000001DCA7CAA0;
  v0[42] = &type metadata for FindMyAffinityScorer;
  v0[43] = &protocol witness table for FindMyAffinityScorer;
  v0[39] = 0xD000000000000026;
  v0[40] = 0x80000001DCA7CAD0;
  v0[47] = &type metadata for HomeAutomationAffinityScorer;
  v0[48] = &protocol witness table for HomeAutomationAffinityScorer;
  v0[44] = 0xD00000000000002FLL;
  v0[45] = 0x80000001DCA7CB00;
  v0[52] = &type metadata for InformationAffinityScorer;
  v0[53] = &protocol witness table for InformationAffinityScorer;
  v0[49] = 0xD000000000000024;
  v0[50] = 0x80000001DCA7CB30;
  v0[57] = &type metadata for MessagesAffinityScorer;
  v0[58] = &protocol witness table for MessagesAffinityScorer;
  v0[54] = 0xD000000000000031;
  v0[55] = 0x80000001DCA7CB60;
  v0[62] = &type metadata for NotificationAffinityScorer;
  v0[63] = &protocol witness table for NotificationAffinityScorer;
  v0[59] = 0xD00000000000002ELL;
  v0[60] = 0x80000001DCA7CBA0;
  v0[67] = &type metadata for PlaybackControlsAffinityScorer;
  v0[68] = &protocol witness table for PlaybackControlsAffinityScorer;
  v0[64] = 0xD00000000000002FLL;
  v0[65] = 0x80000001DCA7CBD0;
  v0[72] = &type metadata for SettingsAffinityScorer;
  v0[73] = &protocol witness table for SettingsAffinityScorer;
  v0[69] = 0xD000000000000029;
  v0[70] = 0x80000001DCA7CC00;
  v0[77] = &type metadata for SiriAudioAffinityScorer;
  v0[78] = &protocol witness table for SiriAudioAffinityScorer;
  v0[74] = 0xD00000000000002CLL;
  v0[75] = 0x80000001DCA7CC30;
  v0[82] = &type metadata for SiriClockFlowAffinityScorer;
  v0[83] = &protocol witness table for SiriClockFlowAffinityScorer;
  v0[79] = 0xD00000000000001ELL;
  v0[80] = 0x80000001DCA7CC60;
  v0[87] = &type metadata for SiriLinkFlowAffinityScorer;
  v0[88] = &protocol witness table for SiriLinkFlowAffinityScorer;
  v0[84] = 0xD000000000000021;
  v0[85] = 0x80000001DCA7CC80;
  v0[92] = &type metadata for SocialConversationAffinityScorer;
  v0[93] = &protocol witness table for SocialConversationAffinityScorer;
  v0[89] = 0xD000000000000033;
  v0[90] = 0x80000001DCA7CCB0;
  v0[97] = &type metadata for SystemCommandsAffinityScorer;
  v0[98] = &protocol witness table for SystemCommandsAffinityScorer;
  v0[94] = 0xD00000000000002FLL;
  v0[95] = 0x80000001DCA7CCF0;
  v0[102] = &type metadata for PhoneAffinityScorer;
  v0[103] = &protocol witness table for PhoneAffinityScorer;
  v0[99] = 0xD00000000000002ALL;
  v0[100] = 0x80000001DCA7CD20;
  v0[107] = &type metadata for ReaderAffinityScorer;
  v0[108] = &protocol witness table for ReaderAffinityScorer;
  v0[104] = 0xD00000000000001FLL;
  v0[105] = 0x80000001DCA7CD50;
  v0[112] = &type metadata for TimerAffinityScorer;
  v0[113] = &protocol witness table for TimerAffinityScorer;
  v0[109] = 0xD000000000000026;
  v0[110] = 0x80000001DCA7CD70;
  v0[117] = &type metadata for TranslationAffinityScorer;
  v0[118] = &protocol witness table for TranslationAffinityScorer;
  v0[114] = 0xD00000000000002CLL;
  v0[115] = 0x80000001DCA7CDA0;
  v0[122] = &type metadata for NotebookAffinityScorer;
  v0[123] = &protocol witness table for NotebookAffinityScorer;
  v0[119] = 0xD000000000000021;
  v0[120] = 0x80000001DCA7CDD0;
  v0[127] = &type metadata for HealthAffinityScorer;
  v0[128] = &protocol witness table for HealthAffinityScorer;
  v0[124] = 0xD000000000000021;
  v0[125] = 0x80000001DCA7CE00;
  v0[132] = &type metadata for PhotosAffinityScorer;
  v0[133] = &protocol witness table for PhotosAffinityScorer;
  v0[129] = 0xD000000000000027;
  v0[130] = 0x80000001DCA7CE30;
  v0[137] = &type metadata for SiriVideoAffinityScorer;
  v0[138] = &protocol witness table for SiriVideoAffinityScorer;
  v0[134] = 0xD000000000000026;
  v0[135] = 0x80000001DCA7CE60;
  v0[142] = &type metadata for SiriSafariAffinityScorer;
  v0[143] = &protocol witness table for SiriSafariAffinityScorer;
  v0[139] = 0xD000000000000027;
  v0[140] = 0x80000001DCA7CE90;
  v19 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 28, 0);
  v1 = v19;
  for (i = 4; i != 144; i += 5)
  {
    outlined init with copy of ReferenceResolutionClientProtocol(&v0[i], &v16);
    v3 = *(&v17 + 1);
    v4 = v18;
    __swift_project_boxed_opaque_existential_1(&v16, *(&v17 + 1));
    *&v15 = (*(v4 + 8))(v3, v4);
    *(&v15 + 1) = v5;
    v19 = v1;
    v7 = *(v1 + 16);
    v6 = *(v1 + 24);
    if (v7 >= v6 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
      v1 = v19;
    }

    *(v1 + 16) = v7 + 1;
    v8 = v1 + 56 * v7;
    v9 = v15;
    v10 = v16;
    v11 = v17;
    *(v8 + 80) = v18;
    *(v8 + 48) = v10;
    *(v8 + 64) = v11;
    *(v8 + 32) = v9;
  }

  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime15AffinityScoring_pMd, &_s14SiriKitRuntime15AffinityScoring_pMR);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (*(v1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS14SiriKitRuntime15AffinityScoring_pGMd, &_ss18_DictionaryStorageCySS14SiriKitRuntime15AffinityScoring_pGMR);
    v12 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC8];
  }

  *&v15 = v12;

  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v13, 1, &v15);

  static AffinityScorerManager.kAffinityScorers = v15;
  return result;
}

uint64_t *AffinityScorerManager.kAffinityScorers.unsafeMutableAddressor()
{
  if (one-time initialization token for kAffinityScorers != -1)
  {
    swift_once();
  }

  return &static AffinityScorerManager.kAffinityScorers;
}

uint64_t static AffinityScorerManager.kAffinityScorers.getter()
{
  if (one-time initialization token for kAffinityScorers != -1)
  {
    swift_once();
  }
}

SiriKitRuntime::AffinityScorerManager::DefaultAffinityScorer __swiftcall AffinityScorerManager.DefaultAffinityScorer.init(score:)(SiriKitRuntime::Affinity score)
{
  v2 = 0x80000001DCA7C910;
  v3 = 0xD000000000000023;
  result.bundleIdentifier._object = v2;
  result.bundleIdentifier._countAndFlagsBits = v3;
  result.score = score;
  return result;
}

void static AffinityScorerManager.affinityScorer(for:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (one-time initialization token for kAffinityScorers != -1)
  {
    swift_once();
  }

  v6 = static AffinityScorerManager.kAffinityScorers;
  if (*(static AffinityScorerManager.kAffinityScorers + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v8 & 1) != 0))
  {
    outlined init with copy of ReferenceResolutionClientProtocol(*(v6 + 56) + 40 * v7, v14);
    outlined init with take of NSExtensionProtocol(v14, v15);
    outlined init with take of NSExtensionProtocol(v15, a3);
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.executor);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15[0] = v13;
      *v12 = 136315138;
      *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v15);
      _os_log_impl(&dword_1DC659000, v10, v11, "No AffinityScorer found for %s, returning default.", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x1E12A2F50](v13, -1, -1);
      MEMORY[0x1E12A2F50](v12, -1, -1);
    }

    *(a3 + 24) = &type metadata for AffinityScorerManager.DefaultAffinityScorer;
    *(a3 + 32) = &protocol witness table for AffinityScorerManager.DefaultAffinityScorer;
    *a3 = 0xD000000000000023;
    *(a3 + 8) = 0x80000001DCA7C910;
    *(a3 + 16) = 2;
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Affinity()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1E12A23F0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Affinity()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1E12A23F0](v1);
  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Affinity@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Affinity.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t AffinityScoringAdapter.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AffinityScoringAdapter.affinityScorer.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AffinityScoringAdapter() + 20);

  return outlined init with copy of ReferenceResolutionClientProtocol(v3, a1);
}

uint64_t AffinityScoringAdapter.init(affinityScorer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UUID.init()();
  v4 = a2 + *(type metadata accessor for AffinityScoringAdapter() + 20);

  return outlined init with take of NSExtensionProtocol(a1, v4);
}

uint64_t AffinityScoringAdapter.score(for:loopCheck:)(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for AffinityScoringAdapter() + 20));
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  type metadata accessor for SiriEnvironment();
  v6 = static SiriEnvironment.default.getter();
  v7 = (*(v5 + 16))(a1, v6, v4, v5);

  return v7;
}

uint64_t protocol witness for AffinityScorer.id.getter in conformance AffinityScoringAdapter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_22;
  }

  outlined init with copy of (String, AffinityScoring)(a1 + 32, &v46);
  v8 = v46;
  v7 = v47;
  v44 = v46;
  v45 = v47;
  outlined init with take of NSExtensionProtocol(v48, v43);
  v9 = *a3;
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, a2 & 1);
    v17 = *a3;
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
    if ((v16 & 1) != (v18 & 1))
    {
LABEL_5:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v21 = v10;
  specialized _NativeDictionary.copy()();
  v10 = v21;
  if (v16)
  {
LABEL_9:
    v19 = swift_allocError();
    swift_willThrow();
    v49 = v19;
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v43);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v23 = (v22[6] + 16 * v10);
  *v23 = v8;
  v23[1] = v7;
  outlined init with take of NSExtensionProtocol(v43, v22[7] + 40 * v10);
  v24 = v22[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (!v14)
  {
    v22[2] = v25;
    if (v4 == 1)
    {
LABEL_22:

      return;
    }

    v26 = a1 + 88;
    v27 = 1;
    while (v27 < *(a1 + 16))
    {
      outlined init with copy of (String, AffinityScoring)(v26, &v46);
      v29 = v46;
      v28 = v47;
      v44 = v46;
      v45 = v47;
      outlined init with take of NSExtensionProtocol(v48, v43);
      v30 = *a3;
      v31 = specialized __RawDictionaryStorage.find<A>(_:)(v29, v28);
      v33 = v30[2];
      v34 = (v32 & 1) == 0;
      v14 = __OFADD__(v33, v34);
      v35 = v33 + v34;
      if (v14)
      {
        goto LABEL_23;
      }

      v36 = v32;
      if (v30[3] < v35)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v35, 1);
        v37 = *a3;
        v31 = specialized __RawDictionaryStorage.find<A>(_:)(v29, v28);
        if ((v36 & 1) != (v38 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v36)
      {
        goto LABEL_9;
      }

      v39 = *a3;
      *(*a3 + 8 * (v31 >> 6) + 64) |= 1 << v31;
      v40 = (v39[6] + 16 * v31);
      *v40 = v29;
      v40[1] = v28;
      outlined init with take of NSExtensionProtocol(v43, v39[7] + 40 * v31);
      v41 = v39[2];
      v14 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v27;
      v39[2] = v42;
      v26 += 56;
      if (v4 == v27)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  _StringGuts.grow(_:)(30);
  MEMORY[0x1E12A1580](0xD00000000000001BLL, 0x80000001DCA7CF00);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t specialized AffinityScorerManager.DefaultAffinityScorer.score(input:environment:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Parse();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  Input.parse.getter();
  if ((*(v4 + 88))(v7, v3) == *MEMORY[0x1E69D0138])
  {
    (*(v4 + 96))(v7, v3);
    v8 = *v7;
    dispatch thunk of PommesResponse.primaryQueryConfidence()();
    if (v9 <= 0.5)
    {
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      __swift_project_value_buffer(v14, static Logger.executor);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_1DC659000, v15, v16, "Detected low confidence pommes result", v17, 2u);
        MEMORY[0x1E12A2F50](v17, -1, -1);
      }

      return 0;
    }

    else
    {
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      __swift_project_value_buffer(v10, static Logger.executor);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_1DC659000, v11, v12, "Detected high confidence pommes result", v13, 2u);
        MEMORY[0x1E12A2F50](v13, -1, -1);
      }
    }
  }

  else
  {
    (*(v4 + 8))(v7, v3);
  }

  return a2;
}

uint64_t type metadata accessor for AffinityScoringAdapter()
{
  result = type metadata singleton initialization cache for AffinityScoringAdapter;
  if (!type metadata singleton initialization cache for AffinityScoringAdapter)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Affinity and conformance Affinity()
{
  result = lazy protocol witness table cache variable for type Affinity and conformance Affinity;
  if (!lazy protocol witness table cache variable for type Affinity and conformance Affinity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Affinity and conformance Affinity);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for AffinityScoringAdapter(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type AffinityScoringAdapter and conformance AffinityScoringAdapter(&lazy protocol witness table cache variable for type AffinityScoringAdapter and conformance AffinityScoringAdapter, type metadata accessor for AffinityScoringAdapter);
  result = lazy protocol witness table accessor for type AffinityScoringAdapter and conformance AffinityScoringAdapter(&lazy protocol witness table cache variable for type AffinityScoringAdapter and conformance AffinityScoringAdapter, type metadata accessor for AffinityScoringAdapter);
  *(a1 + 16) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type AffinityScoringAdapter and conformance AffinityScoringAdapter(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t initializeBufferWithCopyOfBuffer for AffinityScorerManager.DefaultAffinityScorer(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithCopy for AffinityScorerManager.DefaultAffinityScorer(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t assignWithTake for AffinityScorerManager.DefaultAffinityScorer(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a1 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t getEnumTagSinglePayload for AffinityScorerManager.DefaultAffinityScorer(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t storeEnumTagSinglePayload for AffinityScorerManager.DefaultAffinityScorer(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for Affinity(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t destroy for AffinityScoringAdapter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(a1, v4);
  return __swift_destroy_boxed_opaque_existential_1Tm((a1 + *(a2 + 20)));
}

uint64_t initializeWithCopy for AffinityScoringAdapter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = *(a2 + v7 + 24);
  *(a1 + v7 + 24) = v8;
  (**(v8 - 8))();
  return a1;
}

uint64_t assignWithCopy for AffinityScoringAdapter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  __swift_assign_boxed_opaque_existential_1((a1 + *(a3 + 20)), (a2 + *(a3 + 20)));
  return a1;
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v14 = *result;
        v15 = *a2;
        v16 = result;

        *v16 = v15;
      }

      else
      {
        v11 = *(v10 + 24);
        v12 = result[3];

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        v13 = *result;
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v17);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v17, v2);
      }
    }
  }

  return result;
}

uint64_t initializeWithTake for AffinityScoringAdapter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = a1 + v7;
  v9 = a2 + v7;
  v10 = *(v9 + 16);
  *v8 = *v9;
  *(v8 + 16) = v10;
  *(v8 + 32) = *(v9 + 32);
  return a1;
}

uint64_t assignWithTake for AffinityScoringAdapter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = a1 + v7;
  v9 = a2 + v7;
  __swift_destroy_boxed_opaque_existential_1Tm((a1 + v7));
  v10 = *(v9 + 16);
  *v8 = *v9;
  *(v8 + 16) = v10;
  *(v8 + 32) = *(v9 + 32);
  return a1;
}

uint64_t type metadata completion function for AffinityScoringAdapter()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t outlined init with copy of (String, AffinityScoring)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_14SiriKitRuntime15AffinityScoring_ptMd, &_sSS_14SiriKitRuntime15AffinityScoring_ptMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

SiriKitRuntime::AlarmAffinityScorer __swiftcall AlarmAffinityScorer.init()()
{
  v0 = 0x80000001DCA7C9A0;
  v1 = 0xD00000000000001ELL;
  result.bundleIdentifier._object = v0;
  result.bundleIdentifier._countAndFlagsBits = v1;
  return result;
}

uint64_t one-time initialization function for kAppBundleIdMatches()
{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for kAppBundleIdMatches);
  result = swift_arrayDestroy();
  static AlarmAffinityScorer.kAppBundleIdMatches = v0;
  return result;
}

{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for kAppBundleIdMatches);
  result = swift_arrayDestroy();
  static HomeAutomationAffinityScorer.kAppBundleIdMatches = v0;
  return result;
}

{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for kAppBundleIdMatches);
  result = swift_arrayDestroy();
  static ReaderAffinityScorer.kAppBundleIdMatches = v0;
  return result;
}

{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for kAppBundleIdMatches);
  result = swift_arrayDestroy();
  static TimerAffinityScorer.kAppBundleIdMatches = v0;
  return result;
}

uint64_t *AlarmAffinityScorer.kAppBundleIdMatches.unsafeMutableAddressor()
{
  if (one-time initialization token for kAppBundleIdMatches != -1)
  {
    swift_once();
  }

  return &static AlarmAffinityScorer.kAppBundleIdMatches;
}

uint64_t static AlarmAffinityScorer.kAppBundleIdMatches.getter()
{
  if (one-time initialization token for kAppBundleIdMatches != -1)
  {
    swift_once();
  }
}

uint64_t specialized static AlarmAffinityScorer.isCreateAlarmTaskWithRelativeOffset(task:)()
{
  static UsoTask_CodegenConverter.convert(task:)();
  outlined init with copy of Any?(v5, v3);
  if (!v4)
  {
    outlined destroy of Any?(v3);
LABEL_5:
    outlined init with copy of Any?(v5, v3);
    if (v4)
    {
      type metadata accessor for UsoTask_noVerb_common_Alarm();
      if (swift_dynamicCast())
      {

        dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();
        goto LABEL_8;
      }
    }

    else
    {
      outlined destroy of Any?(v3);
    }

    outlined destroy of Any?(v5);
    return 0;
  }

  type metadata accessor for UsoTask_create_common_Alarm();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_5;
  }

  dispatch thunk of Uso_VerbTemplate_Target.target.getter();
LABEL_8:

  if (v3[0] && (v0 = dispatch thunk of UsoEntity_common_Alarm.endDateTime.getter(), , v0))
  {
    v1 = dispatch thunk of UsoEntity_common_DateTime.offsetValue.getter();

    outlined destroy of Any?(v5);
    if (v1)
    {

      return 1;
    }
  }

  else
  {
    outlined destroy of Any?(v5);
  }

  return 0;
}

uint64_t specialized AlarmAffinityScorer.supportedAppIsOnScreen(with:)(uint64_t a1)
{
  v2 = type metadata accessor for RRDataSourceMetadataValue();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v128 = &v102[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v127 = &v102[-v7];
  MEMORY[0x1EEE9AC00](v8);
  v144 = &v102[-v9];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v102[-v11];
  v13 = type metadata accessor for RRMetadata();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v102[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v143 = &v102[-v19];
  v148 = type metadata accessor for UsoIdentifier();
  v20 = *(v148 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v148);
  v130 = &v102[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v23);
  v147 = &v102[-v24];
  v121 = type metadata accessor for RREntity();
  v25 = *(v121 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v121);
  v113 = &v102[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v28);
  v115 = &v102[-v29];
  v118 = type metadata accessor for RRCandidate();
  v30 = *(*(v118 - 8) + 64);
  MEMORY[0x1EEE9AC00](v118);
  v122 = &v102[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v112 = *(a1 + 16);
  if (!v112)
  {
    return 0;
  }

  v33 = v31;
  v111 = type metadata accessor for UsoEntity_common_App();
  v34 = 0;
  v110 = *(v33 + 16);
  v109 = a1 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
  v108 = *(v33 + 72);
  v120 = (v25 + 8);
  v131 = v20 + 16;
  v129 = (v20 + 32);
  v134 = v20;
  v123 = (v20 + 8);
  v141 = (v14 + 32);
  v142 = v14 + 16;
  v140 = (v14 + 88);
  v139 = *MEMORY[0x1E69D27E8];
  v125 = (v14 + 8);
  v124 = (v14 + 96);
  v138 = (v3 + 32);
  v106 = *MEMORY[0x1E69D2918];
  v35 = (v3 + 104);
  v126 = v3;
  v105 = (v3 + 8);
  v107 = (v33 + 8);
  v103 = *MEMORY[0x1E69D28F8];
  v116 = v12;
  v146 = v13;
  v136 = v14;
  v145 = v17;
  v137 = (v3 + 104);
  v132 = v2;
  v104 = v33 + 16;
  while (1)
  {
    v117 = v34;
    v110(v122, v109 + v108 * v34, v118);
    v36 = v115;
    RRCandidate.entity.getter();
    RREntity.usoEntity.getter();
    v119 = *v120;
    v119(v36, v121);
    static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

    v37 = v149;
    if (!v149)
    {
      goto LABEL_39;
    }

    v38 = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
    v114 = v37;

    result = v38;
    v135 = *(v38 + 16);
    if (v135)
    {
      break;
    }

    v41 = MEMORY[0x1E69E7CC0];
LABEL_38:

    v73 = *(v41 + 16);

    v12 = v116;
    if (v73)
    {
      (*v107)(v122, v118);
      return 1;
    }

LABEL_39:
    v74 = v113;
    RRCandidate.entity.getter();
    v75 = RREntity.metadata.getter();
    v119(v74, v121);
    v76 = *(v75 + 16);
    if (v76)
    {
      v77 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v135 = v75;
      v78 = v75 + v77;
      v79 = *(v14 + 72);
      v80 = *(v14 + 16);
      v81 = MEMORY[0x1E69E7CC0];
      do
      {
        v82 = v143;
        v80(v143, v78, v13);
        (*v141)(v17, v82, v13);
        v83 = (*v140)(v17, v13);
        if (v83 == v139)
        {
          (*v124)(v17, v13);
          v84 = v17;
          v85 = *v138;
          v86 = v128;
          (*v138)(v128, v84, v2);
          v87 = v127;
          v85(v127, v86, v2);
          v85(v144, v87, v2);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v81 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v81[2] + 1, 1, v81);
          }

          v89 = v81[2];
          v88 = v81[3];
          v90 = v126;
          if (v89 >= v88 >> 1)
          {
            v91 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v88 > 1, v89 + 1, 1, v81);
            v90 = v126;
            v81 = v91;
          }

          v81[2] = v89 + 1;
          v85(v81 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v89, v144, v2);
          v17 = v145;
          v13 = v146;
        }

        else
        {
          (*v125)(v17, v13);
        }

        v78 += v79;
        --v76;
      }

      while (v76);

      v12 = v116;
      v14 = v136;
      v35 = v137;
    }

    else
    {

      v81 = MEMORY[0x1E69E7CC0];
    }

    v92 = *v35;
    (*v35)(v12, v106, v2);
    v93 = specialized Sequence<>.contains(_:)(v12, v81);
    v94 = *v105;
    (*v105)(v12, v2);
    if (v93)
    {
      v92(v12, v103, v2);
      v95 = specialized Sequence<>.contains(_:)(v12, v81);

      v94(v12, v2);
      if (v95)
      {
        (*v107)(v122, v118);
        v12 = v116;
      }

      else
      {
        if (one-time initialization token for kAppBundleIdMatches != -1)
        {
          swift_once();
        }

        v96 = static AlarmAffinityScorer.kAppBundleIdMatches;
        v97 = v115;
        v98 = v122;
        RRCandidate.entity.getter();
        v99 = RREntity.appBundleId.getter();
        v101 = v100;
        v119(v97, v121);
        LOBYTE(v99) = specialized Set.contains(_:)(v99, v101, v96);

        (*v107)(v98, v118);
        v12 = v116;
        if (v99)
        {
          return 1;
        }
      }
    }

    else
    {
      (*v107)(v122, v118);
    }

    v34 = v117 + 1;
    v35 = v137;
    if (v117 + 1 == v112)
    {
      return 0;
    }
  }

  v40 = 0;
  v41 = MEMORY[0x1E69E7CC0];
  v42 = v134;
  v43 = v147;
  v133 = result;
  while (v40 < *(result + 16))
  {
    v44 = (*(v42 + 80) + 32) & ~*(v42 + 80);
    v45 = *(v42 + 72);
    (*(v42 + 16))(v43, result + v44 + v45 * v40, v148);
    if (one-time initialization token for kAppBundleIdMatches != -1)
    {
      swift_once();
    }

    v46 = static AlarmAffinityScorer.kAppBundleIdMatches;
    v47 = UsoIdentifier.appBundleId.getter();
    v49 = v48;
    if (*(v46 + 16))
    {
      v50 = v47;
      v51 = *(v46 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      v52 = Hasher._finalize()();
      v53 = -1 << *(v46 + 32);
      v54 = v52 & ~v53;
      if ((*(v46 + 56 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54))
      {
        v55 = ~v53;
        do
        {
          v56 = (*(v46 + 48) + 16 * v54);
          v57 = *v56 == v50 && v56[1] == v49;
          if (v57 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            goto LABEL_32;
          }

          v54 = (v54 + 1) & v55;
        }

        while (((*(v46 + 56 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) != 0);
      }
    }

    v58 = UsoIdentifier.value.getter();
    v60 = v59;
    if (*(v46 + 16))
    {
      v61 = v58;
      v62 = *(v46 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      v63 = Hasher._finalize()();
      v64 = -1 << *(v46 + 32);
      v65 = v63 & ~v64;
      if ((*(v46 + 56 + ((v65 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v65))
      {
        v66 = ~v64;
        while (1)
        {
          v67 = (*(v46 + 48) + 16 * v65);
          v68 = *v67 == v61 && v67[1] == v60;
          if (v68 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v65 = (v65 + 1) & v66;
          if (((*(v46 + 56 + ((v65 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v65) & 1) == 0)
          {
            goto LABEL_8;
          }
        }

LABEL_32:

        v69 = *v129;
        v43 = v147;
        (*v129)(v130, v147, v148);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v150 = v41;
        v2 = v132;
        v13 = v146;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v41 + 16) + 1, 1);
          v43 = v147;
          v41 = v150;
        }

        v72 = *(v41 + 16);
        v71 = *(v41 + 24);
        if (v72 >= v71 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v71 > 1, v72 + 1, 1);
          v43 = v147;
          v41 = v150;
        }

        *(v41 + 16) = v72 + 1;
        v69(v41 + v44 + v72 * v45, v130, v148);
        goto LABEL_9;
      }
    }

LABEL_8:

    v43 = v147;
    (*v123)(v147, v148);
    v2 = v132;
    v13 = v146;
LABEL_9:
    ++v40;
    v14 = v136;
    v17 = v145;
    v42 = v134;
    v35 = v137;
    result = v133;
    if (v40 == v135)
    {
      goto LABEL_38;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized AlarmAffinityScorer.priorityForSharedTask(_:environment:)()
{
  v56 = type metadata accessor for RREntity();
  v0 = *(v56 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v55 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for RRCandidate();
  v57 = *(v3 - 8);
  v4 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v54 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v46 - v7;
  static UsoTask_CodegenConverter.convert(task:)();
  outlined init with copy of Any?(v63, &v60);
  if (v62)
  {
    type metadata accessor for UsoTask_noVerb_uso_NoEntity();
    if (swift_dynamicCast())
    {
      outlined destroy of Any?(v63);

      return 2;
    }
  }

  else
  {
    outlined destroy of Any?(&v60);
  }

  v60 = UsoTask.baseEntityAsString.getter();
  v61 = v9;
  strcpy(v59, "uso_NoEntity");
  HIBYTE(v59[6]) = 0;
  v59[7] = -5120;
  v53 = lazy protocol witness table accessor for type String and conformance String();
  v10 = StringProtocol.contains<A>(_:)();

  if ((v10 & 1) == 0)
  {
    goto LABEL_31;
  }

  SiriEnvironment.salientEntitiesProvider.getter();
  v11 = dispatch thunk of SalientEntitiesDataProvider.salientEntities.getter();

  v52 = *(v11 + 16);
  if (v52)
  {
    v12 = 0;
    v50 = (v0 + 8);
    v51 = v57 + 16;
    v47 = (v57 + 8);
    v49 = (v57 + 32);
    v13 = MEMORY[0x1E69E7CC0];
    v48 = v3;
    while (v12 < *(v11 + 16))
    {
      v14 = (*(v57 + 80) + 32) & ~*(v57 + 80);
      v15 = v11;
      v16 = v11 + v14;
      v17 = *(v57 + 72);
      (*(v57 + 16))(v8, v16 + v17 * v12, v3);
      v18 = v55;
      RRCandidate.entity.getter();
      RREntity.usoEntity.getter();
      (*v50)(v18, v56);
      v19 = UsoTask.verbString.getter();
      v21 = v20;

      v60 = v19;
      v61 = v21;
      strcpy(v59, "common_Alarm");
      HIBYTE(v59[6]) = 0;
      v59[7] = -5120;
      v22 = StringProtocol.contains<A>(_:)();

      if (v22)
      {
        v23 = *v49;
        (*v49)(v54, v8, v3);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v58 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 16) + 1, 1);
          v13 = v58;
        }

        v26 = *(v13 + 16);
        v25 = *(v13 + 24);
        if (v26 >= v25 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v25 > 1, v26 + 1, 1);
          v13 = v58;
        }

        *(v13 + 16) = v26 + 1;
        v27 = v13 + v14 + v26 * v17;
        v3 = v48;
        v23(v27, v54, v48);
      }

      else
      {
        (*v47)(v8, v3);
      }

      ++v12;
      v11 = v15;
      if (v52 == v12)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_35;
  }

  v13 = MEMORY[0x1E69E7CC0];
LABEL_18:
  if (!*(v13 + 16))
  {

    v39 = specialized AlarmAffinityScorer.supportedAppIsOnScreen(with:)(v11);

    if ((v39 & 1) == 0)
    {
      outlined destroy of Any?(v63);
      return 0;
    }

    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    __swift_project_value_buffer(v40, static Logger.executor);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = 2;
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_1DC659000, v41, v42, "AlarmAffinityScorer found commonApp entity with Clock/NanoAlarm bundle ID", v44, 2u);
      MEMORY[0x1E12A2F50](v44, -1, -1);

      outlined destroy of Any?(v63);
      return v43;
    }

LABEL_31:
    outlined destroy of Any?(v63);
    return 2;
  }

  if (one-time initialization token for executor != -1)
  {
LABEL_35:
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  __swift_project_value_buffer(v28, static Logger.executor);

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = v3;
    v34 = v32;
    v60 = v32;
    *v31 = 136315138;
    v35 = MEMORY[0x1E12A16D0](v13, v33);
    v37 = v36;

    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, &v60);

    *(v31 + 4) = v38;
    _os_log_impl(&dword_1DC659000, v29, v30, "AlarmAffinityScorer found salient alarm entities %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    MEMORY[0x1E12A2F50](v34, -1, -1);
    MEMORY[0x1E12A2F50](v31, -1, -1);
  }

  else
  {
  }

  outlined destroy of Any?(v63);
  return 3;
}

uint64_t specialized AlarmAffinityScorer.score(input:environment:)()
{
  v0 = type metadata accessor for Parse();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for USOParse();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Input.parse.getter();
  if ((*(v1 + 88))(v4, v0) == *MEMORY[0x1E69D0168])
  {
    (*(v1 + 96))(v4, v0);
    (*(v6 + 32))(v9, v4, v5);
    if (specialized static AffinityScorerUtils.getTask(_:)())
    {
      v30[2] = UsoTask.baseEntityAsString.getter();
      v30[3] = v10;
      v30[0] = 0x6D72616C41;
      v30[1] = 0xE500000000000000;
      lazy protocol witness table accessor for type String and conformance String();
      v11 = StringProtocol.contains<A>(_:)();

      if ((v11 & 1) == 0)
      {
        v15 = specialized AlarmAffinityScorer.priorityForSharedTask(_:environment:)();
        goto LABEL_20;
      }

      if (specialized static AlarmAffinityScorer.isCreateAlarmTaskWithRelativeOffset(task:)())
      {
        if (one-time initialization token for executor != -1)
        {
          swift_once();
        }

        v12 = type metadata accessor for Logger();
        __swift_project_value_buffer(v12, static Logger.executor);
        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v13, v14))
        {
          v15 = 2;
          v16 = swift_slowAlloc();
          *v16 = 0;
          _os_log_impl(&dword_1DC659000, v13, v14, "AlarmAffinityScorer Task is Create Alarm with a relative offset duration – alarm should not take a first pass; timer should handle first", v16, 2u);
          MEMORY[0x1E12A2F50](v16, -1, -1);

LABEL_20:

          (*(v6 + 8))(v9, v5);
          return v15;
        }
      }

      else
      {
        if (one-time initialization token for executor != -1)
        {
          swift_once();
        }

        v25 = type metadata accessor for Logger();
        __swift_project_value_buffer(v25, static Logger.executor);
        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          *v28 = 0;
          _os_log_impl(&dword_1DC659000, v26, v27, "AlarmAffinityScorer Task contains Alarm – using .default affinity", v28, 2u);
          MEMORY[0x1E12A2F50](v28, -1, -1);

          (*(v6 + 8))(v9, v5);
          return 2;
        }
      }

      (*(v6 + 8))(v9, v5);
      return 2;
    }

    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.executor);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1DC659000, v22, v23, "AlarmAffinityScorer Could not extract usoTask from parse", v24, 2u);
      MEMORY[0x1E12A2F50](v24, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
    return 0;
  }

  else
  {
    (*(v1 + 8))(v4, v0);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.executor);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v18, v19))
    {

      return 2;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_1DC659000, v18, v19, "AlarmAffinityScorer Not a USO parse – .default", v20, 2u);
    MEMORY[0x1E12A2F50](v20, -1, -1);

    return 2;
  }
}

uint64_t getEnumTagSinglePayload for AlarmAffinityScorer(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for AlarmAffinityScorer(uint64_t result, int a2, int a3)
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

void one-time initialization function for forceEnabled()
{
  static AmbiguityFeatureFlags.forceEnabled = MEMORY[0x1E69E7CC8];
}

{
  static SydneyConversationFeatureFlags.forceEnabled = MEMORY[0x1E69E7CC8];
}

{
  static SiriKitFlowFeatureFlagDefinitions.forceEnabled = MEMORY[0x1E69E7CC8];
}

{
  static SiriPlaybackControlFeature.forceEnabled = MEMORY[0x1E69E7CC8];
}

{
  static SiriPhoneFeature.forceEnabled = MEMORY[0x1E69E7CC8];
}

{
  static LinkFeature.forceEnabled = MEMORY[0x1E69E7CC8];
}

uint64_t *AmbiguityFeatureFlags.forceEnabled.unsafeMutableAddressor()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  return &static AmbiguityFeatureFlags.forceEnabled;
}

uint64_t static AmbiguityFeatureFlags.forceEnabled.getter()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static AmbiguityFeatureFlags.forceEnabled.setter(uint64_t a1)
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static AmbiguityFeatureFlags.forceEnabled = a1;
}

uint64_t (*static AmbiguityFeatureFlags.forceEnabled.modify())()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static AmbiguityFeatureFlags.forceEnabled.modify;
}

uint64_t key path getter for static AmbiguityFeatureFlags.forceEnabled : AmbiguityFeatureFlags.Type@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = static AmbiguityFeatureFlags.forceEnabled;
}

uint64_t key path setter for static AmbiguityFeatureFlags.forceEnabled : AmbiguityFeatureFlags.Type(uint64_t *a1)
{
  v1 = *a1;
  v2 = one-time initialization token for forceEnabled;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static AmbiguityFeatureFlags.forceEnabled = v1;
}

const char *AmbiguityFeatureFlags.feature.getter(char a1)
{
  if (!a1)
  {
    return "affinity_scoring_v2";
  }

  if (a1 == 1)
  {
    return "input_paraphrasing_flows";
  }

  return "app_shortcuts_omitting_app_name";
}

Swift::Int AmbiguityFeatureFlags.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12A23F0](a1);
  return Hasher._finalize()();
}

const char *protocol witness for FeatureFlagsKey.feature.getter in conformance AmbiguityFeatureFlags()
{
  v1 = "input_paraphrasing_flows";
  if (*v0 != 1)
  {
    v1 = "app_shortcuts_omitting_app_name";
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return "affinity_scoring_v2";
  }
}

uint64_t protocol witness for static FeatureToggle.forceEnabled.getter in conformance AmbiguityFeatureFlags()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t protocol witness for static FeatureToggle.forceEnabled.setter in conformance AmbiguityFeatureFlags(uint64_t a1)
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static AmbiguityFeatureFlags.forceEnabled = a1;
}

uint64_t (*protocol witness for static FeatureToggle.forceEnabled.modify in conformance AmbiguityFeatureFlags())()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return protocol witness for static FeatureToggle.forceEnabled.modify in conformance AmbiguityFeatureFlags;
}

unint64_t instantiation function for generic protocol witness table for AmbiguityFeatureFlags(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AmbiguityFeatureFlags and conformance AmbiguityFeatureFlags();
  *(a1 + 8) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AmbiguityFeatureFlags(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AmbiguityFeatureFlags(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t AmbiguityServiceResponse.topParse.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AmbiguityServiceResponse(0) + 24);
  v4 = type metadata accessor for Parse();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AmbiguityServiceResponse.init(correctionsOutput:ambiguityOutput:topParse:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(a1, a4, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v7 = type metadata accessor for AmbiguityServiceResponse(0);
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(a2, a4 + *(v7 + 20), &_s14SiriKitRuntime15AmbiguityOutputOSgMd, &_s14SiriKitRuntime15AmbiguityOutputOSgMR);
  v8 = *(v7 + 24);
  v9 = type metadata accessor for Parse();
  v10 = *(*(v9 - 8) + 32);

  return v10(a4 + v8, a3, v9);
}

uint64_t AmbiguityService.__allocating_init(correctionsService:camBridge:)(uint64_t a1, __int128 *a2)
{
  v4 = swift_allocObject();
  type metadata accessor for ServerFallbackDisablingUtils();
  v5 = swift_allocObject();
  v5[2] = [objc_allocWithZone(type metadata accessor for ExperimentationAnalyticsManager()) init];
  v5[3] = closure #1 in default argument 5 of ConversationService.init(conversationHandlerLocator:referenceResolutionClient:useStubCamBridge:useNoopEventSender:doWarmup:selfEmitter:serverFallbackDisablingUtils:);
  v5[4] = 0;
  *(v4 + 64) = v5;
  *(v4 + 16) = a1;
  outlined init with take of ReferenceResolutionClientProtocol(a2, v4 + 24);
  return v4;
}

uint64_t AmbiguityService.init(correctionsService:camBridge:)(uint64_t a1, __int128 *a2)
{
  type metadata accessor for ServerFallbackDisablingUtils();
  v5 = swift_allocObject();
  v5[2] = [objc_allocWithZone(type metadata accessor for ExperimentationAnalyticsManager()) init];
  v5[3] = closure #1 in default argument 5 of ConversationService.init(conversationHandlerLocator:referenceResolutionClient:useStubCamBridge:useNoopEventSender:doWarmup:selfEmitter:serverFallbackDisablingUtils:);
  v5[4] = 0;
  *(v2 + 64) = v5;
  *(v2 + 16) = a1;
  outlined init with take of ReferenceResolutionClientProtocol(a2, v2 + 24);
  return v2;
}

Swift::Void __swiftcall AmbiguityService.newSessionStarted()()
{
  v1 = v0[6];
  v2 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v1);
  (*(v2 + 16))(v1, v2);
}

uint64_t AmbiguityService.newTurnStarted(executionUUID:)(uint64_t a1)
{
  v3 = v1[6];
  v4 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v3);
  (*(v4 + 64))(a1, v3, v4);
  v5 = v1[2];
  v6 = v5[5];
  v7 = v5[6];
  __swift_project_boxed_opaque_existential_1(v5 + 2, v6);
  return (*(v7 + 8))(a1, v6, v7);
}

uint64_t AmbiguityService.createRankedInput(from:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v174 = &v174 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v177 = &v174 - v9;
  v188 = type metadata accessor for Siri_Nlu_External_ResponseStatus.StatusCode();
  v187 = *(v188 - 8);
  v10 = *(v187 + 64);
  MEMORY[0x1EEE9AC00](v188);
  v186 = &v174 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = type metadata accessor for NLRouterParse();
  v182 = *(v183 - 8);
  v12 = *(v182 + 64);
  MEMORY[0x1EEE9AC00](v183);
  v175 = &v174 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v181 = &v174 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v184 = &v174 - v17;
  v192 = type metadata accessor for NLRouterParse.InputCandidate();
  v191 = *(v192 - 8);
  v18 = *(v191 + 64);
  MEMORY[0x1EEE9AC00](v192);
  v180 = &v174 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v190 = (&v174 - v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v196 = &v174 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow8USOParseVSgMd, &_s11SiriKitFlow8USOParseVSgMR);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v179 = &v174 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v189 = &v174 - v29;
  v30 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v31 = *(v30 - 8);
  v219 = v30;
  v220 = v31;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v218 = &v174 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMR);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v200 = &v174 - v36;
  v37 = type metadata accessor for NLRoutingDecisionMessage.RoutingDecision();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v178 = &v174 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v197 = &v174 - v42;
  v213 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
  v202 = *(v213 - 8);
  v43 = *(v202 + 64);
  MEMORY[0x1EEE9AC00](v213);
  v223 = &v174 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v222 = (&v174 - v46);
  v212 = type metadata accessor for Siri_Nlu_External_Parser();
  v201 = *(v212 - 8);
  v47 = *(v201 + 64);
  MEMORY[0x1EEE9AC00](v212);
  v211 = &v174 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = type metadata accessor for Siri_Nlu_External_UserParse();
  v49 = *(v224 - 8);
  v50 = *(v49 + 8);
  MEMORY[0x1EEE9AC00](v224);
  v194 = &v174 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v195 = &v174 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v176 = &v174 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v225 = &v174 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v226 = &v174 - v59;
  MEMORY[0x1EEE9AC00](v60);
  v62 = &v174 - v61;
  v207 = type metadata accessor for Parse();
  v209 = *(v207 - 8);
  v63 = *(v209 + 64);
  MEMORY[0x1EEE9AC00](v207);
  v198 = &v174 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v65);
  v67 = &v174 - v66;
  if (one-time initialization token for executor != -1)
  {
LABEL_72:
    swift_once();
  }

  v68 = type metadata accessor for Logger();
  v193 = __swift_project_value_buffer(v68, static Logger.executor);
  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    *v71 = 0;
    _os_log_impl(&dword_1DC659000, v69, v70, "[AmbiguityService] Creating ranked input by ranking between NL and Pommes", v71, 2u);
    MEMORY[0x1E12A2F50](v71, -1, -1);
  }

  v203 = v38;
  v204 = v37;
  v205 = a2;

  v185 = a1;
  v206 = *(a1 + 56);
  v72 = *(v206 + 16);
  v73 = *(v72 + 16);
  v215 = v49;
  v221 = v73;
  v208 = v67;
  a1 = 0;
  if (!v73)
  {
    v78 = v224;
    goto LABEL_17;
  }

  v217 = v49 + 16;
  v216 = (v201 + 8);
  LODWORD(v214) = *MEMORY[0x1E69D0980];
  v67 = (v202 + 104);
  v38 = v202 + 8;
  v210 = (v49 + 8);
  v49 = v223;
  while (1)
  {
    if (a1 >= *(v72 + 16))
    {
      __break(1u);
      goto LABEL_72;
    }

    v74 = v72;
    (*(v215 + 2))(v62, v72 + ((v215[80] + 32) & ~v215[80]) + *(v215 + 9) * a1, v224);
    v75 = v211;
    Siri_Nlu_External_UserParse.parser.getter();
    v37 = v222;
    Siri_Nlu_External_Parser.parserID.getter();
    (*v216)(v75, v212);
    a2 = v213;
    (*v67)(v49, v214, v213);
    lazy protocol witness table accessor for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier(&lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier, MEMORY[0x1E69D0990]);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v76 = *v38;
    (*v38)(v49, a2);
    v76(v37, a2);
    if (v228 == v227 || (Siri_Nlu_External_UserParse.isOverriddenSNLC.getter() & 1) != 0)
    {
      v78 = v224;
      (*v210)(v62, v224);
      goto LABEL_15;
    }

    v77 = Siri_Nlu_External_UserParse.isNlv3FallbackException.getter();
    (*v210)(v62, v224);
    if (v77)
    {
      break;
    }

    ++a1;
    v72 = v74;
    if (v221 == a1)
    {
      a1 = v221;
      v78 = v224;
      goto LABEL_16;
    }
  }

  v78 = v224;
LABEL_15:
  v72 = v74;
LABEL_16:
  v49 = v215;
  if (*(v72 + 16) < a1)
  {
    __break(1u);
    goto LABEL_74;
  }

LABEL_17:
  v79 = (v49[80] + 32) & ~v49[80];

  v221 = v79;
  v199 = v80;
  if (a1)
  {
    v81 = v80 + v79;
    v82 = v49 + 16;
    v222 = *(v49 + 2);
    v223 = v49 + 16;
    v83 = *(v49 + 9);
    v216 = (v220 + 8);
    v217 = (v220 + 16);
    v214 = (v82 - 8);
    v84 = (v82 + 16);
    v85 = MEMORY[0x1E69E7CC0];
    for (i = v222(v226, v81, v78); ; i = v222(v226, v81, v78))
    {
      v87 = MEMORY[0x1E129C0F0](i);
      if (*(v87 + 16))
      {
        v88 = v219;
        v89 = v220;
        v90 = v218;
        (*(v220 + 16))(v218, v87 + ((*(v89 + 80) + 32) & ~*(v89 + 80)), v219);

        v91 = Siri_Nlu_External_UserDialogAct.hasDelegated.getter();
        (*(v89 + 8))(v90, v88);
        if (v91)
        {
          (*v214)(v226, v78);
          goto LABEL_20;
        }
      }

      else
      {
      }

      v92 = *v84;
      (*v84)(v225, v226, v78);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v228 = v85;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v85 + 16) + 1, 1);
        v85 = v228;
      }

      v95 = *(v85 + 16);
      v94 = *(v85 + 24);
      if (v95 >= v94 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v94 > 1, v95 + 1, 1);
        v85 = v228;
      }

      *(v85 + 16) = v95 + 1;
      v78 = v224;
      v92((v85 + v221 + v95 * v83), v225, v224);
LABEL_20:
      v81 += v83;
      if (!--a1)
      {
        goto LABEL_32;
      }
    }
  }

  v85 = MEMORY[0x1E69E7CC0];
LABEL_32:

  v96 = v206;
  v97 = v200;
  outlined init with copy of ReferenceResolutionClientProtocol?(v206 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_nlRoutingDecision, v200, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMR);
  v98 = v203;
  v99 = v204;
  if ((*(v203 + 48))(v97, 1, v204) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v97, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMR);
    v74 = v205;
    v49 = v207;
    v78 = v209;
  }

  else
  {
    v100 = v197;
    (*(v98 + 32))(v197, v97, v99);
    v101 = NLRoutingDecisionMessage.RoutingDecision.shouldBeHandledBySiriX.getter();
    v74 = v205;
    v49 = v207;
    v78 = v209;
    if ((v101 & 1) == 0)
    {
      v102 = *(v185 + OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_utterance + 8);
      if (v102)
      {
        v103 = *(v185 + OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_utterance);
        if (*(v85 + 16))
        {
          v104 = v215;
          v105 = *(v215 + 2);
          v226 = *(v185 + OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_utterance + 8);
          v106 = v176;
          v107 = v224;
          v105(v176, v85 + v221, v224);

          v105(v195, v106, v107);
          v108 = v211;
          Siri_Nlu_External_UserParse.parser.getter();
          v109 = v196;
          Siri_Nlu_External_Parser.parserID.getter();
          (*(v201 + 8))(v108, v212);
          (*(v202 + 56))(v109, 0, 1, v213);
          v110 = v189;
          USOParse.init(userParse:parserIdentifier:appBundleId:)();
          v111 = v106;
          v102 = v226;
          (*(v104 + 1))(v111, v107);
          v112 = 0;
        }

        else
        {

          v112 = 1;
          v110 = v189;
        }

        v143 = type metadata accessor for USOParse();
        (*(*(v143 - 8) + 56))(v110, v112, 1, v143);
        v144 = v190;
        *v190 = v103;
        v144[1] = v102;
        v145 = v191;
        v146 = v192;
        (*(v191 + 104))(v144, *MEMORY[0x1E69CFE20], v192);
        (*(v98 + 16))(v178, v197, v99);
        (*(v145 + 16))(v180, v144, v146);
        outlined init with copy of ReferenceResolutionClientProtocol?(v110, v179, &_s11SiriKitFlow8USOParseVSgMd, &_s11SiriKitFlow8USOParseVSgMR);
        v147 = *(v206 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_pommesInfo);
        if (v147)
        {
          v148 = *(v147 + 16);
        }

        v149 = v184;
        v150 = v181;

        NLRouterParse.init(nlRoutingDecision:input:usoParse:pommesResponse:)();
        v151 = v182;
        v152 = *(v182 + 16);
        v153 = v208;
        v154 = v183;
        v152(v208, v149, v183);
        (*(v209 + 104))(v153, *MEMORY[0x1E69D0180], v207);
        v152(v150, v149, v154);
        v155 = Logger.logObject.getter();
        v156 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v155, v156))
        {
          v157 = swift_slowAlloc();
          v158 = swift_slowAlloc();
          v228 = v158;
          *v157 = 136315138;
          v152(v175, v150, v154);
          v159 = String.init<A>(describing:)();
          v161 = v160;
          v162 = *(v151 + 8);
          v162(v150, v154);
          v163 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v159, v161, &v228);

          *(v157 + 4) = v163;
          _os_log_impl(&dword_1DC659000, v155, v156, "[AmbiguityService] Choosing NLRouterParse. nl router parse: %s", v157, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v158);
          MEMORY[0x1E12A2F50](v158, -1, -1);
          MEMORY[0x1E12A2F50](v157, -1, -1);

          v162(v184, v154);
        }

        else
        {

          v164 = *(v151 + 8);
          v164(v150, v154);
          v164(v149, v154);
        }

        (*(v191 + 8))(v190, v192);
        outlined destroy of ReferenceResolutionClientProtocol?(v189, &_s11SiriKitFlow8USOParseVSgMd, &_s11SiriKitFlow8USOParseVSgMR);
        (*(v203 + 8))(v197, v204);
        v49 = v207;
        v78 = v209;
        v138 = v198;
        v74 = v205;
        goto LABEL_51;
      }
    }

    (*(v98 + 8))(v100, v99);
  }

  v113 = *(v96 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_pommesInfo);
  if (v113)
  {
    v114 = *(v113 + 16);
    if (v114)
    {
      v115 = v114;
      dispatch thunk of PommesResponse.primaryQueryConfidence()();
      if (v116 >= 0.7)
      {
        v131 = Logger.logObject.getter();
        v132 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v131, v132))
        {
          v133 = v74;
          v134 = swift_slowAlloc();
          *v134 = 0;
          _os_log_impl(&dword_1DC659000, v131, v132, "[AmbiguityService] Choosing pommes as top as it has higher confidence", v134, 2u);
          v135 = v134;
          v74 = v133;
          MEMORY[0x1E12A2F50](v135, -1, -1);
        }

        *v208 = v115;
        v136 = *MEMORY[0x1E69D0138];
        (*(v78 + 104))();
        v137 = v115;
        specialized AmbiguityService.getAlternatives<A>(nlParses:)(v85);

        goto LABEL_50;
      }
    }
  }

  if (!*(v85 + 16))
  {

    v127 = v187;
    v128 = v186;
    v129 = v188;
    (*(v187 + 104))(v186, *MEMORY[0x1E69D0A98], v188);
    lazy protocol witness table accessor for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier(&lazy protocol witness table cache variable for type Siri_Nlu_External_ResponseStatus.StatusCode and conformance Siri_Nlu_External_ResponseStatus.StatusCode, MEMORY[0x1E69D0AA8]);
    v130 = v206;
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    (*(v127 + 8))(v128, v129);
    if (v228 == v227)
    {
LABEL_46:
      (*(v78 + 104))(v208, *MEMORY[0x1E69D0178], v49);
      goto LABEL_50;
    }

    if (*(*(v130 + 16) + 16))
    {
LABEL_54:
      v140 = 1;
      goto LABEL_52;
    }

    (*(v215 + 7))(v177, 1, 1, v224);
    v165 = type metadata accessor for ServerFallbackReason();
    v62 = v174;
    (*(*(v165 - 8) + 56))(v174, 1, 1, v165);
    if (one-time initialization token for fallbackDisabledOverride == -1)
    {
LABEL_63:
      v166 = static ServerFallbackDisablingUtils.fallbackDisabledOverride;
      os_unfair_lock_lock(static ServerFallbackDisablingUtils.fallbackDisabledOverride + 5);
      os_unfair_lock_opaque_low = LOBYTE(v166[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v166 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        v168 = v177;
        if ((specialized ServerFallbackDisablingUtils.shouldDisableServerFallback(isDomainDirected:topNlParse:serverFallbackReason:)(1, v177, v62) & 1) == 0)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(v62, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
          outlined destroy of ReferenceResolutionClientProtocol?(v168, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
          v140 = 1;
          goto LABEL_52;
        }

        v169 = [objc_opt_self() sharedPreferences];
        LOBYTE(os_unfair_lock_opaque_low) = [v169 shouldDisableServerFallbackDomain];
      }

      v170 = v177;
      outlined destroy of ReferenceResolutionClientProtocol?(v62, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v170, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
      if (os_unfair_lock_opaque_low)
      {
        v171 = Logger.logObject.getter();
        v172 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v171, v172))
        {
          v173 = swift_slowAlloc();
          *v173 = 0;
          _os_log_impl(&dword_1DC659000, v171, v172, "[AmbiguityService] Empty nlParses and isServerFallbackDisabled = true", v173, 2u);
          MEMORY[0x1E12A2F50](v173, -1, -1);
        }

        goto LABEL_46;
      }

      goto LABEL_54;
    }

LABEL_74:
    swift_once();
    goto LABEL_63;
  }

  v117 = v215;
  v118 = *(v215 + 2);
  v119 = v221;
  v120 = v194;
  v121 = v224;
  v118(v194, v85 + v221, v224);
  v122 = v208;
  v118(v195, v120, v121);
  v123 = v211;
  Siri_Nlu_External_UserParse.parser.getter();
  v124 = v196;
  Siri_Nlu_External_Parser.parserID.getter();
  (*(v201 + 8))(v123, v212);
  (*(v202 + 56))(v124, 0, 1, v213);
  v125 = v122;
  v74 = v205;
  v49 = v207;
  USOParse.init(userParse:parserIdentifier:appBundleId:)();
  (*(v209 + 104))(v125, *MEMORY[0x1E69D0168], v49);
  specialized AmbiguityService.getAlternatives<A>(nlParses:)(v85 + v119, *(v85 + 16) != 0, (2 * *(v85 + 16)) | 1);

  v126 = v120;
  v78 = v209;
  (*(v117 + 1))(v126, v121);
LABEL_50:
  v138 = v198;
LABEL_51:
  v139 = v208;
  (*(v78 + 16))(v138, v208, v49);
  Input.init(parse:alternatives:)();
  (*(v78 + 8))(v139, v49);
  v140 = 0;
LABEL_52:
  v141 = type metadata accessor for Input();
  return (*(*(v141 - 8) + 56))(v74, v140, 1, v141);
}

uint64_t AmbiguityService.findBestActionFor(conversationUserInput:conversationHelperInput:conversationHelper:actionCandidates:rrCandidates:fallback:previousConversation:inputOrigin:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[18] = v51;
  v9[19] = v8;
  v9[16] = a8;
  v9[17] = v50;
  v9[14] = a6;
  v9[15] = a7;
  v9[12] = a4;
  v9[13] = a5;
  v9[10] = a2;
  v9[11] = a3;
  v9[9] = a1;
  v10 = type metadata accessor for AmbiguityServiceResponse(0);
  v9[20] = v10;
  v11 = *(v10 - 8);
  v9[21] = v11;
  v12 = *(v11 + 64) + 15;
  v9[22] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR) - 8) + 64) + 15;
  v9[23] = swift_task_alloc();
  v9[24] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime9CamOutputOSgMd, &_s14SiriKitRuntime9CamOutputOSgMR) - 8) + 64) + 15;
  v9[25] = swift_task_alloc();
  v15 = type metadata accessor for CamOutput();
  v9[26] = v15;
  v16 = *(v15 - 8);
  v9[27] = v16;
  v17 = *(v16 + 64) + 15;
  v9[28] = swift_task_alloc();
  v9[29] = swift_task_alloc();
  v9[30] = swift_task_alloc();
  v18 = type metadata accessor for Input();
  v9[31] = v18;
  v19 = *(v18 - 8);
  v9[32] = v19;
  v20 = *(v19 + 64) + 15;
  v9[33] = swift_task_alloc();
  v9[34] = swift_task_alloc();
  v21 = type metadata accessor for CamParse();
  v9[35] = v21;
  v22 = *(v21 - 8);
  v9[36] = v22;
  v23 = *(v22 + 64) + 15;
  v9[37] = swift_task_alloc();
  v24 = type metadata accessor for Parse();
  v9[38] = v24;
  v25 = *(v24 - 8);
  v9[39] = v25;
  v26 = *(v25 + 64) + 15;
  v9[40] = swift_task_alloc();
  v9[41] = swift_task_alloc();
  v27 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR) - 8) + 64) + 15;
  v9[42] = swift_task_alloc();
  v28 = type metadata accessor for PluginAction();
  v9[43] = v28;
  v29 = *(v28 - 8);
  v9[44] = v29;
  v30 = *(v29 + 64) + 15;
  v9[45] = swift_task_alloc();
  v9[46] = swift_task_alloc();
  v9[47] = swift_task_alloc();
  v31 = type metadata accessor for RankedAction();
  v9[48] = v31;
  v32 = *(v31 - 8);
  v9[49] = v32;
  v33 = *(v32 + 64) + 15;
  v9[50] = swift_task_alloc();
  v9[51] = swift_task_alloc();
  v9[52] = swift_task_alloc();
  v34 = *(*(type metadata accessor for ResponseMode() - 8) + 64) + 15;
  v9[53] = swift_task_alloc();
  v35 = type metadata accessor for RankerContext();
  v9[54] = v35;
  v36 = *(v35 - 8);
  v9[55] = v36;
  v37 = *(v36 + 64) + 15;
  v9[56] = swift_task_alloc();
  v38 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
  v9[57] = v38;
  v39 = *(v38 - 8);
  v9[58] = v39;
  v40 = *(v39 + 64) + 15;
  v9[59] = swift_task_alloc();
  v9[60] = swift_task_alloc();
  v41 = type metadata accessor for Siri_Nlu_External_Parser();
  v9[61] = v41;
  v42 = *(v41 - 8);
  v9[62] = v42;
  v43 = *(v42 + 64) + 15;
  v9[63] = swift_task_alloc();
  v44 = type metadata accessor for Siri_Nlu_External_UserParse();
  v9[64] = v44;
  v45 = *(v44 - 8);
  v9[65] = v45;
  v46 = *(v45 + 64) + 15;
  v9[66] = swift_task_alloc();
  v9[67] = swift_task_alloc();
  v9[68] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v47 = static MessageBusActor.shared;
  v9[69] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](AmbiguityService.findBestActionFor(conversationUserInput:conversationHelperInput:conversationHelper:actionCandidates:rrCandidates:fallback:previousConversation:inputOrigin:), v47, 0);
}

uint64_t AmbiguityService.findBestActionFor(conversationUserInput:conversationHelperInput:conversationHelper:actionCandidates:rrCandidates:fallback:previousConversation:inputOrigin:)()
{
  v119 = v0;
  if (one-time initialization token for executor != -1)
  {
    goto LABEL_44;
  }

  while (1)
  {
    v1 = *(v0 + 104);
    v2 = type metadata accessor for Logger();
    *(v0 + 560) = __swift_project_value_buffer(v2, static Logger.executor);
    Logger.debugF(file:function:)();
    if (!*(v1 + 16))
    {
      v24 = *(v0 + 552);

      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_1DC659000, v25, v26, "[AmbiguityService] findBestActionFor was not given a list of action candidates, returning a default response.", v27, 2u);
        MEMORY[0x1E12A2F50](v27, -1, -1);
      }

      v28 = *(v0 + 152);
      v29 = *(v0 + 120);
      v31 = *(v0 + 72);
      v30 = *(v0 + 80);

      AmbiguityService.getDefaultResponse(input:conversationUserInput:)(v29, v30, v31);
      v32 = *(v0 + 544);
      v33 = *(v0 + 536);
      v34 = *(v0 + 528);
      v35 = *(v0 + 504);
      v37 = *(v0 + 472);
      v36 = *(v0 + 480);
      v38 = *(v0 + 448);
      v40 = *(v0 + 416);
      v39 = *(v0 + 424);
      v41 = *(v0 + 408);
      v87 = *(v0 + 400);
      v88 = *(v0 + 376);
      v89 = *(v0 + 368);
      v90 = *(v0 + 360);
      v92 = *(v0 + 336);
      v94 = *(v0 + 328);
      v96 = *(v0 + 320);
      v98 = *(v0 + 296);
      v100 = *(v0 + 272);
      v102 = *(v0 + 264);
      v104 = *(v0 + 240);
      v106 = *(v0 + 232);
      v108 = *(v0 + 224);
      v109 = *(v0 + 200);
      v111 = *(v0 + 192);
      v113 = *(v0 + 184);
      v115 = *(v0 + 176);

      v42 = *(v0 + 8);

      return v42();
    }

    v3 = *(v0 + 80);
    v93 = v3[2];
    *(v0 + 568) = v93;
    v91 = v3[3];
    *(v0 + 576) = v91;
    v4 = *(*(v3[7] + 16) + 16);

    v114 = v4;
    if (!v4)
    {
      break;
    }

    v6 = 0;
    v7 = *(v0 + 520);
    v8 = *(v0 + 464);
    v107 = (*(v0 + 496) + 8);
    v105 = *MEMORY[0x1E69D0968];
    v101 = (v8 + 8);
    v103 = (v8 + 104);
    v95 = (v7 + 32);
    v110 = v7;
    v99 = (v7 + 8);
    v97 = MEMORY[0x1E69E7CC0];
    v112 = v5;
    while (v6 < *(v5 + 16))
    {
      v9 = *(v0 + 504);
      v11 = *(v0 + 480);
      v10 = *(v0 + 488);
      v12 = *(v0 + 472);
      v13 = *(v0 + 456);
      v14 = (*(v110 + 80) + 32) & ~*(v110 + 80);
      v15 = *(v110 + 72);
      (*(v110 + 16))(*(v0 + 544), v5 + v14 + v15 * v6, *(v0 + 512));
      Siri_Nlu_External_UserParse.parser.getter();
      Siri_Nlu_External_Parser.parserID.getter();
      (*v107)(v9, v10);
      (*v103)(v12, v105, v13);
      lazy protocol witness table accessor for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier(&lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier, MEMORY[0x1E69D0990]);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v16 = *v101;
      (*v101)(v12, v13);
      v16(v11, v13);
      if (*(v0 + 56) == *(v0 + 64) || (v17 = *(v0 + 544), (Siri_Nlu_External_UserParse.isOverriddenPSC.getter() & 1) != 0))
      {
        (*v99)(*(v0 + 544), *(v0 + 512));
      }

      else
      {
        v18 = *v95;
        (*v95)(*(v0 + 536), *(v0 + 544), *(v0 + 512));
        v19 = v97;
        v118 = v97;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v97 + 16) + 1, 1);
          v19 = v118;
        }

        v21 = *(v19 + 16);
        v20 = *(v19 + 24);
        if (v21 >= v20 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v20 > 1, v21 + 1, 1);
          v19 = v118;
        }

        v22 = *(v0 + 536);
        v23 = *(v0 + 512);
        *(v19 + 16) = v21 + 1;
        v97 = v19;
        v18(v19 + v14 + v21 * v15, v22, v23);
      }

      ++v6;
      v5 = v112;
      if (v114 == v6)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_44:
    swift_once();
  }

  v97 = MEMORY[0x1E69E7CC0];
LABEL_21:

  v44 = *(v97 + 16);
  if (v44)
  {
    v45 = *(v0 + 520);
    v118 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v44, 0);
    v46 = v118;
    v47 = *(v45 + 16);
    v45 += 16;
    v116 = v47;
    v48 = v97 + ((*(v45 + 64) + 32) & ~*(v45 + 64));
    v49 = *(v45 + 56);
    v50 = (v45 - 8);
    do
    {
      v51 = *(v0 + 528);
      v52 = *(v0 + 512);
      v116(v51, v48, v52);
      Siri_Nlu_External_UserParse.comparableProbability.getter();
      v54 = v53;
      (*v50)(v51, v52);
      v118 = v46;
      v56 = *(v46 + 16);
      v55 = *(v46 + 24);
      if (v56 >= v55 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v56 + 1, 1);
        v46 = v118;
      }

      *(v46 + 16) = v56 + 1;
      *(v46 + 8 * v56 + 32) = v54;
      v48 += v49;
      --v44;
    }

    while (v44);
  }

  else
  {

    v46 = MEMORY[0x1E69E7CC0];
  }

  v57 = *(v46 + 16);
  if (v57)
  {
    v58 = *(v46 + 32);
    v59 = v57 - 1;
    if (v57 != 1)
    {
      v60 = (v46 + 40);
      do
      {
        v61 = *v60++;
        v62 = v61;
        if (v58 < v61)
        {
          v58 = v62;
        }

        --v59;
      }

      while (v59);
    }

    v63 = v58;
  }

  else
  {
    v63 = 0.0;
  }

  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v118 = v67;
    *v66 = 136315138;
    *(v0 + 40) = v63;
    *(v0 + 48) = v57 == 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
    v68 = String.init<A>(describing:)();
    v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v69, &v118);

    *(v66 + 4) = v70;
    _os_log_impl(&dword_1DC659000, v64, v65, "Extracted maxNLProba %s", v66, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v67);
    MEMORY[0x1E12A2F50](v67, -1, -1);
    MEMORY[0x1E12A2F50](v66, -1, -1);
  }

  v71 = *(v0 + 424);
  v72 = *(v0 + 128);
  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  SiriEnvironment.currentRequest.getter();

  CurrentRequest.responseMode.getter();

  if (v72)
  {
    v73 = *(v0 + 128);
    v75 = *(v73 + 112);
    v74 = *(v73 + 120);
  }

  v76 = *(v0 + 448);
  v77 = *(v0 + 424);
  v78 = *(v0 + 152);
  v79 = *(v0 + 112);

  RankerContext.init(rrCandidates:responseMode:previousConversationHandlerId:maxNLProba:)();
  v80 = v78[6];
  v81 = v78[7];
  __swift_project_boxed_opaque_existential_1(v78 + 3, v80);
  v82 = *(v81 + 56);
  v117 = (v82 + *v82);
  v83 = v82[1];
  v84 = swift_task_alloc();
  *(v0 + 584) = v84;
  *v84 = v0;
  v84[1] = AmbiguityService.findBestActionFor(conversationUserInput:conversationHelperInput:conversationHelper:actionCandidates:rrCandidates:fallback:previousConversation:inputOrigin:);
  v85 = *(v0 + 448);
  v86 = *(v0 + 104);

  return v117(v93, v91, v86, v85, v80, v81);
}

{
  v1 = *(v0 + 592);
  if (v1)
  {
    v2 = *(v1 + 16);
    *(v0 + 600) = v2;
    if (v2)
    {
      v3 = *(v0 + 560);
      v5 = *(v0 + 408);
      v4 = *(v0 + 416);
      v7 = *(v0 + 384);
      v6 = *(v0 + 392);
      v8 = *(v6 + 16);
      v6 += 16;
      v9 = *(v6 + 64);
      *(v0 + 52) = v9;
      *(v0 + 608) = v8;
      *(v0 + 616) = v6 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v8(v4, v1 + ((v9 + 32) & ~v9), v7);
      v8(v5, v4, v7);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.debug.getter();
      v12 = os_log_type_enabled(v10, v11);
      v13 = *(v0 + 408);
      v15 = *(v0 + 384);
      v14 = *(v0 + 392);
      if (v12)
      {
        v16 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v94 = v87;
        *v16 = 136315138;
        lazy protocol witness table accessor for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier(&lazy protocol witness table cache variable for type RankedAction and conformance RankedAction, MEMORY[0x1E69CE360]);
        v17 = dispatch thunk of CustomStringConvertible.description.getter();
        v19 = v18;
        v20 = *(v14 + 8);
        v20(v13, v15);
        v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v94);

        *(v16 + 4) = v21;
        _os_log_impl(&dword_1DC659000, v10, v11, "[AmbiguityService] Top action after CAAR ranking: %s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v87);
        MEMORY[0x1E12A2F50](v87, -1, -1);
        MEMORY[0x1E12A2F50](v16, -1, -1);
      }

      else
      {

        v20 = *(v14 + 8);
        v20(v13, v15);
      }

      *(v0 + 624) = v20;
      v46 = *(v0 + 416);
      v47 = *(v0 + 376);
      v48 = *(v0 + 328);
      v49 = *(v0 + 336);
      v51 = *(v0 + 312);
      v50 = *(v0 + 320);
      v52 = *(v0 + 296);
      v86 = *(v0 + 304);
      v53 = *(v0 + 288);
      v82 = *(v0 + 280);
      v84 = *(v0 + 272);
      v54 = *(v0 + 152);
      v89 = *(v0 + 80);
      v55 = type metadata accessor for ActionParaphrase();
      *(v0 + 632) = v55;
      v56 = *(v55 - 8);
      v57 = *(v56 + 56);
      *(v0 + 640) = v57;
      *(v0 + 648) = (v56 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
      v57(v49, 1, 1, v55);
      RankedAction.toPluginAction(withSpeechPackage:withParaphrase:)(0, v49, v47);
      outlined destroy of ReferenceResolutionClientProtocol?(v49, &_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
      RankedAction.parse.getter();
      CamParse.asSKEParse()(v48);
      (*(v53 + 8))(v52, v82);
      (*(v51 + 16))(v50, v48, v86);
      Input.init(parse:)();
      v58 = v54[7];
      __swift_project_boxed_opaque_existential_1(v54 + 3, v54[6]);
      v59 = *(v89 + 48);
      v60 = *(v58 + 32);
      v90 = v60 + *v60;
      v61 = v60[1];
      v62 = swift_task_alloc();
      *(v0 + 656) = v62;
      *v62 = v0;
      v62[1] = AmbiguityService.findBestActionFor(conversationUserInput:conversationHelperInput:conversationHelper:actionCandidates:rrCandidates:fallback:previousConversation:inputOrigin:);
      v63 = *(v0 + 576);
      v64 = *(v0 + 568);
      v65 = *(v0 + 200);
      v66 = *(v0 + 136);
      v67 = *(v0 + 88);
      v68 = *(v0 + 96);
      v93 = *(v0 + 144);

      __asm { BRAA            X8, X16 }
    }
  }

  v22 = *(v0 + 560);
  v23 = *(v0 + 552);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_1DC659000, v24, v25, "[AmbiguityService] Despite a non-empty list of action candidates, CAAR didn't return a list of ranked actions or returned an empty one. This might be a bug in CAAR. Returning a default response.", v26, 2u);
    MEMORY[0x1E12A2F50](v26, -1, -1);
  }

  v28 = *(v0 + 440);
  v27 = *(v0 + 448);
  v29 = *(v0 + 432);
  v30 = *(v0 + 152);
  v31 = *(v0 + 120);
  v33 = *(v0 + 72);
  v32 = *(v0 + 80);

  AmbiguityService.getDefaultResponse(input:conversationUserInput:)(v31, v32, v33);
  (*(v28 + 8))(v27, v29);
  v34 = *(v0 + 544);
  v35 = *(v0 + 536);
  v36 = *(v0 + 528);
  v37 = *(v0 + 504);
  v39 = *(v0 + 472);
  v38 = *(v0 + 480);
  v40 = *(v0 + 448);
  v42 = *(v0 + 416);
  v41 = *(v0 + 424);
  v43 = *(v0 + 408);
  v69 = *(v0 + 400);
  v70 = *(v0 + 376);
  v71 = *(v0 + 368);
  v72 = *(v0 + 360);
  v73 = *(v0 + 336);
  v74 = *(v0 + 328);
  v75 = *(v0 + 320);
  v76 = *(v0 + 296);
  v77 = *(v0 + 272);
  v78 = *(v0 + 264);
  v79 = *(v0 + 240);
  v80 = *(v0 + 232);
  v81 = *(v0 + 224);
  v83 = *(v0 + 200);
  v85 = *(v0 + 192);
  v88 = *(v0 + 184);
  v91 = *(v0 + 176);

  v44 = *(v0 + 8);

  return v44();
}

{
  v1 = *(*v0 + 656);
  v2 = *(*v0 + 552);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](AmbiguityService.findBestActionFor(conversationUserInput:conversationHelperInput:conversationHelper:actionCandidates:rrCandidates:fallback:previousConversation:inputOrigin:), v2, 0);
}

{
  v133 = v0;
  v1 = *(v0 + 200);
  if ((*(*(v0 + 216) + 48))(v1, 1, *(v0 + 208)) == 1)
  {
    v2 = *(v0 + 560);
    outlined destroy of ReferenceResolutionClientProtocol?(v1, &_s14SiriKitRuntime9CamOutputOSgMd, &_s14SiriKitRuntime9CamOutputOSgMR);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1DC659000, v3, v4, "[AmbiguityService] CAM ambiguity handling failed. Fall back to returning pluginActions", v5, 2u);
      MEMORY[0x1E12A2F50](v5, -1, -1);
    }

    v6 = *(v0 + 592);
    v7 = *(v0 + 560);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 592);
    if (v10)
    {
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      *(v12 + 4) = *(v11 + 16);

      _os_log_impl(&dword_1DC659000, v8, v9, "[AmbiguityService] Converting %ld rankedActions to PluginActions", v12, 0xCu);
      MEMORY[0x1E12A2F50](v12, -1, -1);
    }

    else
    {
    }

    v29 = 0;
    v30 = 0;
    v31 = *(v0 + 392);
    v32 = *(v31 + 72);
    v119 = v32;
    v122 = *(v0 + 352);
    v33 = MEMORY[0x1E69E7CC0];
    v114 = (v31 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    do
    {
      v34 = *(v0 + 640);
      v35 = *(v0 + 632);
      v126 = *(v0 + 648);
      v129 = *(v0 + 624);
      v36 = *(v0 + 616);
      v37 = *(v0 + 400);
      v38 = *(v0 + 384);
      v39 = v33;
      v40 = *(v0 + 368);
      v41 = *(v0 + 336);
      (*(v0 + 608))(v37, *(v0 + 592) + v29 + ((*(v0 + 52) + 32) & ~*(v0 + 52)), v38);
      v34(v41, 1, 1, v35);
      v42 = v40;
      v33 = v39;
      RankedAction.toPluginAction(withSpeechPackage:withParaphrase:)(0, v41, v42);
      outlined destroy of ReferenceResolutionClientProtocol?(v41, &_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
      *(v0 + 672) = v114;
      v129(v37, v38);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v39[2] + 1, 1, v39);
      }

      v44 = v33[2];
      v43 = v33[3];
      if (v44 >= v43 >> 1)
      {
        v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v43 > 1, v44 + 1, 1, v33);
      }

      *(v0 + 680) = v33;
      v45 = *(v0 + 600);
      v46 = *(v0 + 368);
      v47 = *(v0 + 344);
      ++v30;
      v33[2] = v44 + 1;
      v48 = v33 + ((*(v122 + 80) + 32) & ~*(v122 + 80));
      (*(v122 + 32))(&v48[*(v122 + 72) * v44], v46, v47);
      v29 += v119;
    }

    while (v30 != v45);
    v49 = *(v0 + 592);
    v50 = *(v0 + 560);
    swift_bridgeObjectRetain_n();

    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.debug.getter();
    v53 = os_log_type_enabled(v51, v52);
    v54 = *(v0 + 592);
    if (v53)
    {
      v55 = swift_slowAlloc();
      *v55 = 134218240;
      v56 = *(v54 + 16);

      *(v55 + 4) = v56;

      *(v55 + 12) = 2048;
      v57 = v33[2];

      *(v55 + 14) = v57;

      _os_log_impl(&dword_1DC659000, v51, v52, "[AmbiguityService] Converted %ld rankedActions to %ld pluginActions", v55, 0x16u);
      MEMORY[0x1E12A2F50](v55, -1, -1);

      if (v33[2])
      {
LABEL_17:
        v58 = *(v0 + 248);
        v59 = *(v0 + 256);
        v60 = *(v0 + 184);
        v61 = *(v0 + 152);
        (*(*(v0 + 352) + 16))(*(v0 + 360), v48, *(v0 + 344));
        v62 = *(v61 + 16);
        (*(v59 + 56))(v60, 1, 1, v58);
        v63 = swift_task_alloc();
        *(v0 + 688) = v63;
        *v63 = v0;
        v63[1] = AmbiguityService.findBestActionFor(conversationUserInput:conversationHelperInput:conversationHelper:actionCandidates:rrCandidates:fallback:previousConversation:inputOrigin:);
        v64 = *(v0 + 360);
        v66 = *(v0 + 184);
        v65 = *(v0 + 192);
        v67 = *(v0 + 80);

        return CorrectionsService.getCorrectionsAction(pluginAction:conversationUserInput:followup:)(v65, v64, v67, v66);
      }
    }

    else
    {
      swift_bridgeObjectRelease_n();

      swift_bridgeObjectRelease_n();
      if (v33[2])
      {
        goto LABEL_17;
      }
    }

    v75 = *(v0 + 560);
    v76 = *(v0 + 552);

    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&dword_1DC659000, v77, v78, "[AmbiguityService] Could not convert ranked actions to plugin actions", v79, 2u);
      MEMORY[0x1E12A2F50](v79, -1, -1);
    }

    v123 = *(v0 + 624);
    v80 = *(v0 + 440);
    v127 = *(v0 + 432);
    v130 = *(v0 + 448);
    v117 = *(v0 + 384);
    v120 = *(v0 + 416);
    v81 = *(v0 + 352);
    v112 = *(v0 + 344);
    v115 = *(v0 + 376);
    v82 = *(v0 + 312);
    v108 = *(v0 + 304);
    v110 = *(v0 + 328);
    v83 = *(v0 + 272);
    v84 = *(v0 + 248);
    v85 = *(v0 + 256);
    v86 = v77;
    v87 = *(v0 + 152);
    v89 = *(v0 + 72);
    v88 = *(v0 + 80);

    AmbiguityService.getDefaultResponse(input:conversationUserInput:)(v83, v88, v89);
    (*(v85 + 8))(v83, v84);
    (*(v82 + 8))(v110, v108);
    (*(v81 + 8))(v115, v112);
    v123(v120, v117);
    (*(v80 + 8))(v130, v127);
    v90 = *(v0 + 544);
    v91 = *(v0 + 536);
    v92 = *(v0 + 528);
    v93 = *(v0 + 504);
    v95 = *(v0 + 472);
    v94 = *(v0 + 480);
    v96 = *(v0 + 448);
    v98 = *(v0 + 416);
    v97 = *(v0 + 424);
    v99 = *(v0 + 408);
    v101 = *(v0 + 400);
    v102 = *(v0 + 376);
    v103 = *(v0 + 368);
    v104 = *(v0 + 360);
    v105 = *(v0 + 336);
    v106 = *(v0 + 328);
    v107 = *(v0 + 320);
    v109 = *(v0 + 296);
    v111 = *(v0 + 272);
    v113 = *(v0 + 264);
    v116 = *(v0 + 240);
    v118 = *(v0 + 232);
    v121 = *(v0 + 224);
    v124 = *(v0 + 200);
    v125 = *(v0 + 192);
    v128 = *(v0 + 184);
    v131 = *(v0 + 176);

    v100 = *(v0 + 8);

    return v100();
  }

  else
  {
    v13 = *(v0 + 592);
    v14 = *(v0 + 560);
    v16 = *(v0 + 232);
    v15 = *(v0 + 240);

    outlined init with take of AmbiguityServiceResponse(v1, v15, type metadata accessor for CamOutput);
    outlined init with copy of CamOutput(v15, v16);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 232);
    if (v19)
    {
      v21 = *(v0 + 224);
      v22 = *(v0 + 208);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v132 = v24;
      *v23 = 136315138;
      outlined init with copy of CamOutput(v20, v21);
      v25 = String.init<A>(describing:)();
      v27 = v26;
      outlined destroy of CamOutput(v20, type metadata accessor for CamOutput);
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v132);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_1DC659000, v17, v18, "[AmbiguityService] CAM output: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x1E12A2F50](v24, -1, -1);
      MEMORY[0x1E12A2F50](v23, -1, -1);
    }

    else
    {

      outlined destroy of CamOutput(v20, type metadata accessor for CamOutput);
    }

    v69 = swift_task_alloc();
    *(v0 + 664) = v69;
    *v69 = v0;
    v69[1] = AmbiguityService.findBestActionFor(conversationUserInput:conversationHelperInput:conversationHelper:actionCandidates:rrCandidates:fallback:previousConversation:inputOrigin:);
    v70 = *(v0 + 376);
    v71 = *(v0 + 240);
    v72 = *(v0 + 152);
    v73 = *(v0 + 72);
    v74 = *(v0 + 80);

    return AmbiguityService.getAmbiguityServiceResponse(camOutput:topPluginAction:conversationUserInput:)(v73, v71, v70, v74);
  }
}

{
  v1 = *(*v0 + 664);
  v2 = *(*v0 + 552);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](AmbiguityService.findBestActionFor(conversationUserInput:conversationHelperInput:conversationHelper:actionCandidates:rrCandidates:fallback:previousConversation:inputOrigin:), v2, 0);
}

{
  v1 = v0[69];
  v2 = v0[55];
  v49 = v0[56];
  v45 = v0[78];
  v47 = v0[54];
  v35 = v0[49];
  v37 = v0[48];
  v3 = v0[44];
  v31 = v0[43];
  v33 = v0[47];
  v29 = v0[41];
  v5 = v0[38];
  v4 = v0[39];
  v6 = v0[34];
  v7 = v0[31];
  v8 = v0[32];
  v9 = v0[30];
  v10 = v0[21];
  v41 = v0[52];
  v43 = v0[20];
  v39 = v0[9];

  outlined destroy of CamOutput(v9, type metadata accessor for CamOutput);
  (*(v8 + 8))(v6, v7);
  (*(v4 + 8))(v29, v5);
  (*(v3 + 8))(v33, v31);
  v45(v41, v37);
  (*(v2 + 8))(v49, v47);
  (*(v10 + 56))(v39, 0, 1, v43);
  v11 = v0[68];
  v12 = v0[67];
  v13 = v0[66];
  v14 = v0[63];
  v16 = v0[59];
  v15 = v0[60];
  v17 = v0[56];
  v19 = v0[52];
  v18 = v0[53];
  v20 = v0[51];
  v23 = v0[50];
  v24 = v0[47];
  v25 = v0[46];
  v26 = v0[45];
  v27 = v0[42];
  v28 = v0[41];
  v30 = v0[40];
  v32 = v0[37];
  v34 = v0[34];
  v36 = v0[33];
  v38 = v0[30];
  v40 = v0[29];
  v42 = v0[28];
  v44 = v0[25];
  v46 = v0[24];
  v48 = v0[23];
  v50 = v0[22];

  v21 = v0[1];

  return v21();
}

{
  v1 = *(*v0 + 688);
  v2 = *(*v0 + 552);
  v3 = *(*v0 + 184);
  v5 = *v0;

  outlined destroy of ReferenceResolutionClientProtocol?(v3, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);

  return MEMORY[0x1EEE6DFA0](AmbiguityService.findBestActionFor(conversationUserInput:conversationHelperInput:conversationHelper:actionCandidates:rrCandidates:fallback:previousConversation:inputOrigin:), v2, 0);
}

{
  v1 = v0[85];
  v53 = v0[78];
  v55 = v0[84];
  v2 = v0[69];
  v59 = v0[56];
  v51 = v0[55];
  v57 = v0[54];
  v45 = v0[48];
  v47 = v0[52];
  v3 = v0[44];
  v39 = v0[41];
  v41 = v0[47];
  v4 = v0[39];
  v37 = v0[38];
  v5 = v0[33];
  v33 = v0[43];
  v35 = v0[34];
  v6 = v0[32];
  v28 = v0[45];
  v30 = v0[31];
  v7 = v0[24];
  v27 = v7;
  v8 = v0[22];
  v49 = v0[21];
  v9 = v0[20];
  v43 = v0[9];

  outlined init with copy of ReferenceResolutionClientProtocol?(v7, v8, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v10 = *(v9 + 20);
  *(v8 + v10) = v1;
  v11 = type metadata accessor for AmbiguityOutput(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v11 - 8) + 56))(v8 + v10, 0, 1, v11);
  PluginAction.input.getter();
  v12 = v8 + *(v9 + 24);
  Input.parse.getter();
  v13 = *(v6 + 8);
  v13(v5, v30);
  outlined destroy of ReferenceResolutionClientProtocol?(v27, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v14 = *(v3 + 8);
  v14(v28, v33);
  v13(v35, v30);
  (*(v4 + 8))(v39, v37);
  v14(v41, v33);
  v53(v47, v45);
  (*(v51 + 8))(v59, v57);
  outlined init with take of AmbiguityServiceResponse(v8, v43, type metadata accessor for AmbiguityServiceResponse);
  (*(v49 + 56))(v43, 0, 1, v9);
  v15 = v0[68];
  v16 = v0[67];
  v17 = v0[66];
  v18 = v0[63];
  v20 = v0[59];
  v19 = v0[60];
  v21 = v0[56];
  v23 = v0[52];
  v22 = v0[53];
  v24 = v0[51];
  v29 = v0[50];
  v31 = v0[47];
  v32 = v0[46];
  v34 = v0[45];
  v36 = v0[42];
  v38 = v0[41];
  v40 = v0[40];
  v42 = v0[37];
  v44 = v0[34];
  v46 = v0[33];
  v48 = v0[30];
  v50 = v0[29];
  v52 = v0[28];
  v54 = v0[25];
  v56 = v0[24];
  v58 = v0[23];
  v60 = v0[22];

  v25 = v0[1];

  return v25();
}

uint64_t AmbiguityService.findBestActionFor(conversationUserInput:conversationHelperInput:conversationHelper:actionCandidates:rrCandidates:fallback:previousConversation:inputOrigin:)(uint64_t a1)
{
  v2 = *(*v1 + 584);
  v3 = *(*v1 + 552);
  v5 = *v1;
  *(*v1 + 592) = a1;

  return MEMORY[0x1EEE6DFA0](AmbiguityService.findBestActionFor(conversationUserInput:conversationHelperInput:conversationHelper:actionCandidates:rrCandidates:fallback:previousConversation:inputOrigin:), v3, 0);
}

uint64_t AmbiguityService.getDefaultResponse(input:conversationUserInput:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for Input();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v3 + 16);
  CorrectionsService.getCorrectionsAction(input:conversationUserInput:)(a1, a2, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v10, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    v17 = type metadata accessor for AmbiguityServiceResponse(0);
    return (*(*(v17 - 8) + 56))(a3, 1, 1, v17);
  }

  else
  {
    (*(v12 + 32))(v15, v10, v11);
    (*(v12 + 16))(a3, v15, v11);
    (*(v12 + 56))(a3, 0, 1, v11);
    v19 = type metadata accessor for AmbiguityServiceResponse(0);
    v20 = *(v19 + 20);
    v21 = type metadata accessor for AmbiguityOutput(0);
    (*(*(v21 - 8) + 56))(a3 + v20, 1, 1, v21);
    v22 = a3 + *(v19 + 24);
    Input.parse.getter();
    (*(v12 + 8))(v15, v11);
    return (*(*(v19 - 8) + 56))(a3, 0, 1, v19);
  }
}

int64_t specialized Sequence<>.max()(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    if (v1 >= 5)
    {
      v4 = v3 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v5 = vdupq_n_s64(v2);
      v6 = (a1 + 56);
      v7 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      v8 = v5;
      do
      {
        v5 = vbslq_s8(vcgtq_s64(v5, v6[-1]), v5, v6[-1]);
        v8 = vbslq_s8(vcgtq_s64(v8, *v6), v8, *v6);
        v6 += 2;
        v7 -= 4;
      }

      while (v7);
      v9 = vbslq_s8(vcgtq_s64(v5, v8), v5, v8);
      v10 = vextq_s8(v9, v9, 8uLL).u64[0];
      v2 = vbsl_s8(vcgtd_s64(v9.i64[0], v10), *v9.i8, v10);
      if (v3 == (v3 & 0xFFFFFFFFFFFFFFFCLL))
      {
        return v2;
      }
    }

    else
    {
      v4 = 1;
    }

    v11 = v1 - v4;
    v12 = (a1 + 8 * v4 + 32);
    do
    {
      v14 = *v12++;
      v13 = v14;
      if (v2 <= v14)
      {
        v2 = v13;
      }

      --v11;
    }

    while (v11);
  }

  return v2;
}

uint64_t AmbiguityService.getAmbiguityServiceResponse(camOutput:topPluginAction:conversationUserInput:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR) - 8) + 64) + 15;
  v5[10] = swift_task_alloc();
  v7 = type metadata accessor for CamOutput();
  v5[11] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v5[12] = swift_task_alloc();
  v9 = type metadata accessor for Input();
  v5[13] = v9;
  v10 = *(v9 - 8);
  v5[14] = v10;
  v11 = *(v10 + 64) + 15;
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v12 = type metadata accessor for Parse();
  v5[18] = v12;
  v13 = *(v12 - 8);
  v5[19] = v13;
  v14 = *(v13 + 64) + 15;
  v5[20] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v15 = static MessageBusActor.shared;
  v5[21] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](AmbiguityService.getAmbiguityServiceResponse(camOutput:topPluginAction:conversationUserInput:), v15, 0);
}

uint64_t AmbiguityService.getAmbiguityServiceResponse(camOutput:topPluginAction:conversationUserInput:)()
{
  v59 = v0;
  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[13];
  v4 = v0[14];
  v6 = v0[11];
  v5 = v0[12];
  v8 = v0[6];
  v7 = v0[7];
  PluginAction.input.getter();
  Input.parse.getter();
  v9 = *(v4 + 8);
  v9(v2, v3);
  outlined init with copy of CamOutput(v8, v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = v0[16];
    v11 = v0[13];
    v12 = v0[14];
    v13 = v0[12];
    v14 = *(v12 + 32);
    v0[24] = v14;
    v0[25] = (v12 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v14(v10, v13, v11);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v15 = v0[15];
    v16 = v0[16];
    v17 = v0[13];
    v18 = v0[14];
    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.executor);
    v20 = *(v18 + 16);
    v20(v15, v16, v17);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    v23 = os_log_type_enabled(v21, v22);
    v24 = v0[15];
    v25 = v0[13];
    if (v23)
    {
      v26 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v58 = v57;
      *v26 = 136315138;
      lazy protocol witness table accessor for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier(&lazy protocol witness table cache variable for type Input and conformance Input, MEMORY[0x1E69D0100]);
      v56 = v22;
      v27 = v20;
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v9;
      v31 = v30;
      v29(v24, v25);
      v32 = v28;
      v20 = v27;
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v31, &v58);

      *(v26 + 4) = v33;
      _os_log_impl(&dword_1DC659000, v21, v56, "[AmbiguityService] Returning a Direct Invocation for CAM flow: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v57);
      MEMORY[0x1E12A2F50](v57, -1, -1);
      MEMORY[0x1E12A2F50](v26, -1, -1);
    }

    else
    {

      v9(v24, v25);
    }

    v47 = v0[13];
    v48 = v0[14];
    v49 = v0[10];
    v50 = *(v0[9] + 16);
    v20(v49, v0[16], v47);
    (*(v48 + 56))(v49, 0, 1, v47);
    v45 = swift_task_alloc();
    v0[26] = v45;
    *v45 = v0;
    v46 = AmbiguityService.getAmbiguityServiceResponse(camOutput:topPluginAction:conversationUserInput:);
  }

  else
  {
    v34 = *v0[12];
    v0[22] = v34;
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static Logger.executor);

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v58 = v39;
      *v38 = 136315138;
      v40 = type metadata accessor for PluginAction();
      v41 = MEMORY[0x1E12A16D0](v34, v40);
      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, &v58);

      *(v38 + 4) = v43;
      _os_log_impl(&dword_1DC659000, v36, v37, "[AmbiguityService] Returning set of actions to execute: %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      MEMORY[0x1E12A2F50](v39, -1, -1);
      MEMORY[0x1E12A2F50](v38, -1, -1);
    }

    v44 = *(v0[9] + 16);
    (*(v0[14] + 56))(v0[10], 1, 1, v0[13]);
    v45 = swift_task_alloc();
    v0[23] = v45;
    *v45 = v0;
    v46 = AmbiguityService.getAmbiguityServiceResponse(camOutput:topPluginAction:conversationUserInput:);
  }

  v45[1] = v46;
  v51 = v0[10];
  v52 = v0[7];
  v53 = v0[8];
  v54 = v0[5];

  return CorrectionsService.getCorrectionsAction(pluginAction:conversationUserInput:followup:)(v54, v52, v53, v51);
}

{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 80);
  v5 = *v0;

  outlined destroy of ReferenceResolutionClientProtocol?(v3, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);

  return MEMORY[0x1EEE6DFA0](AmbiguityService.getAmbiguityServiceResponse(camOutput:topPluginAction:conversationUserInput:), v2, 0);
}

{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[5];

  v4 = type metadata accessor for AmbiguityServiceResponse(0);
  v5 = *(v4 + 20);
  *(v3 + v5) = v2;
  v6 = type metadata accessor for AmbiguityOutput(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v6 - 8) + 56))(v3 + v5, 0, 1, v6);
  v7 = v0[17];
  v9 = v0[15];
  v8 = v0[16];
  v10 = v0[12];
  v11 = v0[10];
  (*(v0[19] + 32))(v0[5] + *(v4 + 24), v0[20], v0[18]);

  v12 = v0[1];

  return v12();
}

{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 80);
  v5 = *v0;

  outlined destroy of ReferenceResolutionClientProtocol?(v3, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);

  return MEMORY[0x1EEE6DFA0](AmbiguityService.getAmbiguityServiceResponse(camOutput:topPluginAction:conversationUserInput:), v2, 0);
}

{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[21];
  v4 = v0[16];
  v5 = v0[13];
  v6 = v0[5];

  v7 = type metadata accessor for AmbiguityServiceResponse(0);
  v8 = *(v7 + 20);
  v2(v6 + v8, v4, v5);
  v9 = type metadata accessor for AmbiguityOutput(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v9 - 8) + 56))(v6 + v8, 0, 1, v9);
  v10 = v0[17];
  v12 = v0[15];
  v11 = v0[16];
  v13 = v0[12];
  v14 = v0[10];
  (*(v0[19] + 32))(v0[5] + *(v7 + 24), v0[20], v0[18]);

  v15 = v0[1];

  return v15();
}