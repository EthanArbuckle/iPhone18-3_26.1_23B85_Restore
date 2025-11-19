uint64_t specialized Collection.prefix(_:)(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16);
    v3 = *(type metadata accessor for SiriUISession(0) - 8);
    v4 = a2 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    return a2;
  }

  return result;
}

uint64_t PostSiriEngagementMetricsCollector.generateBiomeFetcherConfiguration(uiSession:nextUiSession:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v77 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18PostSiriEngagement0B9UISessionVSgMd, "0W");
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v69[-v7];
  v9 = type metadata accessor for SiriUISession(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v69[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v69[-v15];
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v74 = &v69[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v20);
  v23 = &v69[-v22];
  v24 = *(v18 + 16);
  v25 = a1 + *(v9 + 24);
  v75 = v18 + 16;
  v76 = v24;
  v24(&v69[-v22], v25, v17);
  outlined init with copy of SiriUISession?(a2, v8);
  v26 = *(v10 + 48);
  v78 = v9;
  if (v26(v8, 1, v9) == 1)
  {
    outlined destroy of Date?(v8, &_s18PostSiriEngagement0B9UISessionVSgMd, "0W");
  }

  else
  {
    outlined init with take of SiriUISession(v8, v16);
    v27 = v16;
    if (static Date.> infix(_:_:)())
    {
      if (one-time initialization token for engagement != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      v29 = __swift_project_value_buffer(v28, static Logger.engagement);
      outlined init with copy of SiriUISession(a1, v14);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.info.getter();
      v32 = os_log_type_enabled(v30, v31);
      v72 = a1;
      if (v32)
      {
        v33 = swift_slowAlloc();
        v73 = v29;
        v71 = v30;
        v70 = v31;
        v34 = v33;
        v35 = swift_slowAlloc();
        v80[0] = v35;
        *v34 = 136315394;
        lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
        v36 = dispatch thunk of CustomStringConvertible.description.getter();
        v38 = v37;
        outlined destroy of SiriUISession(v14, type metadata accessor for SiriUISession);
        v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, v80);

        *(v34 + 4) = v39;
        *(v34 + 12) = 2080;
        swift_beginAccess();
        v40 = dispatch thunk of CustomStringConvertible.description.getter();
        v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, v80);

        *(v34 + 14) = v42;
        v27 = v16;
        v43 = v71;
        _os_log_impl(&dword_25ECEC000, v71, v70, "More than one session in time range [%s,%s]", v34, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25F8CEE50](v35, -1, -1);
        MEMORY[0x25F8CEE50](v34, -1, -1);
      }

      else
      {

        outlined destroy of SiriUISession(v14, type metadata accessor for SiriUISession);
      }

      swift_beginAccess();
      (*(v18 + 24))(v23, v27, v17);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v80[0] = v47;
        *v46 = 136315138;
        lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
        v48 = dispatch thunk of CustomStringConvertible.description.getter();
        v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, v80);
        v73 = v27;
        v51 = v50;

        *(v46 + 4) = v51;
        _os_log_impl(&dword_25ECEC000, v44, v45, "Setting postEndDate to %s", v46, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v47);
        MEMORY[0x25F8CEE50](v47, -1, -1);
        MEMORY[0x25F8CEE50](v46, -1, -1);

        v52 = v73;
      }

      else
      {

        v52 = v27;
      }

      outlined destroy of SiriUISession(v52, type metadata accessor for SiriUISession);
      a1 = v72;
    }

    else
    {
      outlined destroy of SiriUISession(v16, type metadata accessor for SiriUISession);
    }
  }

  swift_beginAccess();
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
  if ((dispatch thunk of static Comparable.< infix(_:_:)() & 1) == 0 || (v53 = *(v78 + 20), (dispatch thunk of static Comparable.< infix(_:_:)() & 1) == 0))
  {
    v73 = v18;
    v54 = a1;
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    __swift_project_value_buffer(v55, static Logger.engagement);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v79 = v59;
      *v58 = 136315138;
      lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
      v60 = dispatch thunk of CustomStringConvertible.description.getter();
      v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v61, &v79);

      *(v58 + 4) = v62;
      _os_log_impl(&dword_25ECEC000, v56, v57, "PostSiri Fetch asking for <= 0s slice [%s]", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v59);
      MEMORY[0x25F8CEE50](v59, -1, -1);
      MEMORY[0x25F8CEE50](v58, -1, -1);
    }

    a1 = v54;
    v63 = v54 + *(v78 + 20);
    v64 = v74;
    Date.addingTimeInterval(_:)();
    swift_beginAccess();
    v18 = v73;
    (*(v73 + 40))(v23, v64, v17);
  }

  v66 = v76;
  v65 = v77;
  v76(v77, a1, v17);
  Configuration = type metadata accessor for PSEBiomeFetchConfiguration();
  v66(v65 + *(Configuration + 20), v23, v17);
  return (*(v18 + 8))(v23, v17);
}

uint64_t PostSiriEngagementMetricsCollector.fetchDonatedEvents(biomeFetcherConfiguration:completion:)(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(type metadata accessor for PSEBiomeFetchConfiguration() + 20);
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;

  specialized static PSEBiomeEventsSourceFetcher.fetchDonatedEvents(startDate:endDate:completion:)(a1, &a1[v6], partial apply for closure #1 in PostSiriEngagementMetricsCollector.fetchDonatedEvents(biomeFetcherConfiguration:completion:), v7);
}

uint64_t PostSiriEngagementMetricsCollector.fetchSiriExecutionEvents(biomeFetcherConfiguration:)(uint64_t a1)
{
  v2 = a1 + *(type metadata accessor for PSEBiomeFetchConfiguration() + 20);

  return specialized static PSEBiomeEventsSourceFetcher.fetchSiriExecutionEvents(startDate:endDate:)(a1, v2);
}

uint64_t PostSiriEngagementMetricsCollector.__ivar_destroyer()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];
}

void *PostSiriEngagementMetricsCollector.deinit()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return v0;
}

uint64_t PostSiriEngagementMetricsCollector.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t specialized MutableCollection<>.sort(by:)(uint64_t *a1, void (*a2)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a3)(void, Swift::Int, uint64_t, uint64_t))
{
  v6 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v6);
    *a1 = v6;
  }

  v8 = *(v6 + 16);
  v10[0] = v6 + 32;
  v10[1] = v8;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v10, a2, a3);
  return specialized ContiguousArray._endMutation()();
}

Swift::Int specialized MutableCollection<>.sort(by:)(void **a1)
{
  v2 = *(type metadata accessor for SiriUISession(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  *a1 = v3;
  return result;
}

{
  v2 = *(type metadata accessor for ProtoTaskEngagementFeatureSet() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  *a1 = v3;
  return result;
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a3)(void, Swift::Int, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v6);
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for SiriExecutionTask(0);
        v10 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) = v9;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFF8;
      v12[0] = (v10 & 0xFFFFFFFFFFFFFF8) + 32;
      v12[1] = v9;
      a2(v12, v13, a1, v8);
      *(v11 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v99 = a1;
  v111 = type metadata accessor for SiriUISession(0);
  v107 = *(v111 - 8);
  v9 = *(v107 + 64);
  v10 = MEMORY[0x28223BE20](v111);
  v101 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v110 = &v96 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v96 - v15;
  result = MEMORY[0x28223BE20](v14);
  v19 = &v96 - v18;
  v109 = a3;
  v20 = a3[1];
  if (v20 < 1)
  {
    v22 = MEMORY[0x277D84F90];
LABEL_96:
    v5 = *v99;
    if (!*v99)
    {
      goto LABEL_135;
    }

    a4 = v22;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_129:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(a4);
    }

    v112 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      while (*v109)
      {
        v92 = *(result + 16 * a4);
        v93 = result;
        v94 = *(result + 16 * (a4 - 1) + 40);
        specialized _merge<A>(low:mid:high:buffer:by:)(*v109 + *(v107 + 72) * v92, *v109 + *(v107 + 72) * *(result + 16 * (a4 - 1) + 32), *v109 + *(v107 + 72) * v94, v5);
        if (v6)
        {
        }

        if (v94 < v92)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v93 = specialized _ArrayBuffer._consumeAndCreateNew()(v93);
        }

        if (a4 - 2 >= *(v93 + 2))
        {
          goto LABEL_123;
        }

        v95 = &v93[16 * a4];
        *v95 = v92;
        *(v95 + 1) = v94;
        v112 = v93;
        specialized Array.remove(at:)(a4 - 1);
        result = v112;
        a4 = *(v112 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_133;
    }
  }

  v21 = 0;
  v22 = MEMORY[0x277D84F90];
  v98 = a4;
  while (1)
  {
    v23 = v21;
    v24 = v21 + 1;
    v102 = v22;
    if (v24 >= v20)
    {
      v30 = v24;
    }

    else
    {
      v25 = *v109;
      v105 = v25;
      v26 = *(v107 + 72);
      v5 = v25 + v26 * v24;
      outlined init with copy of SiriUISession(v5, v19);
      outlined init with copy of SiriUISession(v25 + v26 * v23, v16);
      LODWORD(v106) = static Date.< infix(_:_:)();
      outlined destroy of SiriUISession(v16, type metadata accessor for SiriUISession);
      result = outlined destroy of SiriUISession(v19, type metadata accessor for SiriUISession);
      v97 = v23;
      v27 = v23 + 2;
      v108 = v26;
      v28 = v105 + v26 * (v23 + 2);
      while (v20 != v27)
      {
        outlined init with copy of SiriUISession(v28, v19);
        outlined init with copy of SiriUISession(v5, v16);
        v29 = static Date.< infix(_:_:)() & 1;
        outlined destroy of SiriUISession(v16, type metadata accessor for SiriUISession);
        result = outlined destroy of SiriUISession(v19, type metadata accessor for SiriUISession);
        ++v27;
        v28 += v108;
        v5 += v108;
        if ((v106 & 1) != v29)
        {
          v30 = v27 - 1;
          goto LABEL_11;
        }
      }

      v30 = v20;
LABEL_11:
      v23 = v97;
      a4 = v98;
      if (v106)
      {
        if (v30 < v97)
        {
          goto LABEL_126;
        }

        if (v97 < v30)
        {
          v96 = v6;
          v31 = v108 * (v30 - 1);
          v32 = v30 * v108;
          v106 = v30;
          v33 = v30;
          v34 = v97;
          v35 = v97 * v108;
          do
          {
            if (v34 != --v33)
            {
              v36 = *v109;
              if (!*v109)
              {
                goto LABEL_132;
              }

              v5 = v36 + v35;
              outlined init with take of SiriUISession(v36 + v35, v101);
              if (v35 < v31 || v5 >= v36 + v32)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v35 != v31)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = outlined init with take of SiriUISession(v101, v36 + v31);
            }

            ++v34;
            v31 -= v108;
            v32 -= v108;
            v35 += v108;
          }

          while (v34 < v33);
          v6 = v96;
          v23 = v97;
          a4 = v98;
          v30 = v106;
        }
      }
    }

    v37 = v109[1];
    if (v30 < v37)
    {
      if (__OFSUB__(v30, v23))
      {
        goto LABEL_125;
      }

      if (v30 - v23 < a4)
      {
        if (__OFADD__(v23, a4))
        {
          goto LABEL_127;
        }

        if ((v23 + a4) >= v37)
        {
          v38 = v109[1];
        }

        else
        {
          v38 = v23 + a4;
        }

        if (v38 < v23)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v30 != v38)
        {
          break;
        }
      }
    }

    v39 = v30;
    if (v30 < v23)
    {
      goto LABEL_124;
    }

LABEL_35:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v22 = v102;
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v102 + 2) + 1, 1, v102);
      v22 = result;
    }

    a4 = *(v22 + 2);
    v40 = *(v22 + 3);
    v5 = a4 + 1;
    if (a4 >= v40 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), a4 + 1, 1, v22);
      v22 = result;
    }

    *(v22 + 2) = v5;
    v41 = &v22[16 * a4];
    *(v41 + 4) = v23;
    *(v41 + 5) = v39;
    v42 = *v99;
    if (!*v99)
    {
      goto LABEL_134;
    }

    v103 = v39;
    if (a4)
    {
      while (1)
      {
        v43 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v44 = *(v22 + 4);
          v45 = *(v22 + 5);
          v54 = __OFSUB__(v45, v44);
          v46 = v45 - v44;
          v47 = v54;
LABEL_54:
          if (v47)
          {
            goto LABEL_113;
          }

          v60 = &v22[16 * v5];
          v62 = *v60;
          v61 = *(v60 + 1);
          v63 = __OFSUB__(v61, v62);
          v64 = v61 - v62;
          v65 = v63;
          if (v63)
          {
            goto LABEL_116;
          }

          v66 = &v22[16 * v43 + 32];
          v68 = *v66;
          v67 = *(v66 + 1);
          v54 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v54)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v64, v69))
          {
            goto LABEL_120;
          }

          if (v64 + v69 >= v46)
          {
            if (v46 < v69)
            {
              v43 = v5 - 2;
            }

            goto LABEL_75;
          }

          goto LABEL_68;
        }

        v70 = &v22[16 * v5];
        v72 = *v70;
        v71 = *(v70 + 1);
        v54 = __OFSUB__(v71, v72);
        v64 = v71 - v72;
        v65 = v54;
LABEL_68:
        if (v65)
        {
          goto LABEL_115;
        }

        v73 = &v22[16 * v43];
        v75 = *(v73 + 4);
        v74 = *(v73 + 5);
        v54 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v54)
        {
          goto LABEL_118;
        }

        if (v76 < v64)
        {
          goto LABEL_3;
        }

LABEL_75:
        a4 = v43 - 1;
        if (v43 - 1 >= v5)
        {
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
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (!*v109)
        {
          goto LABEL_131;
        }

        v81 = v22;
        v82 = *&v22[16 * a4 + 32];
        v5 = *&v22[16 * v43 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)(*v109 + *(v107 + 72) * v82, *v109 + *(v107 + 72) * *&v22[16 * v43 + 32], *v109 + *(v107 + 72) * v5, v42);
        if (v6)
        {
        }

        if (v5 < v82)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v81 = specialized _ArrayBuffer._consumeAndCreateNew()(v81);
        }

        if (a4 >= *(v81 + 2))
        {
          goto LABEL_110;
        }

        v83 = &v81[16 * a4];
        *(v83 + 4) = v82;
        *(v83 + 5) = v5;
        v112 = v81;
        result = specialized Array.remove(at:)(v43);
        v22 = v112;
        v5 = *(v112 + 16);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v48 = &v22[16 * v5 + 32];
      v49 = *(v48 - 64);
      v50 = *(v48 - 56);
      v54 = __OFSUB__(v50, v49);
      v51 = v50 - v49;
      if (v54)
      {
        goto LABEL_111;
      }

      v53 = *(v48 - 48);
      v52 = *(v48 - 40);
      v54 = __OFSUB__(v52, v53);
      v46 = v52 - v53;
      v47 = v54;
      if (v54)
      {
        goto LABEL_112;
      }

      v55 = &v22[16 * v5];
      v57 = *v55;
      v56 = *(v55 + 1);
      v54 = __OFSUB__(v56, v57);
      v58 = v56 - v57;
      if (v54)
      {
        goto LABEL_114;
      }

      v54 = __OFADD__(v46, v58);
      v59 = v46 + v58;
      if (v54)
      {
        goto LABEL_117;
      }

      if (v59 >= v51)
      {
        v77 = &v22[16 * v43 + 32];
        v79 = *v77;
        v78 = *(v77 + 1);
        v54 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v54)
        {
          goto LABEL_121;
        }

        if (v46 < v80)
        {
          v43 = v5 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_54;
    }

LABEL_3:
    v20 = v109[1];
    v21 = v103;
    a4 = v98;
    if (v103 >= v20)
    {
      goto LABEL_96;
    }
  }

  v96 = v6;
  v97 = v23;
  v84 = *v109;
  v85 = *(v107 + 72);
  v86 = *v109 + v85 * (v30 - 1);
  v87 = -v85;
  v88 = v23 - v30;
  v100 = v85;
  v5 = v84 + v30 * v85;
  v103 = v38;
LABEL_86:
  v105 = v88;
  v106 = v30;
  v104 = v5;
  v89 = v88;
  v108 = v86;
  v90 = v86;
  while (1)
  {
    outlined init with copy of SiriUISession(v5, v19);
    outlined init with copy of SiriUISession(v90, v16);
    a4 = static Date.< infix(_:_:)();
    outlined destroy of SiriUISession(v16, type metadata accessor for SiriUISession);
    result = outlined destroy of SiriUISession(v19, type metadata accessor for SiriUISession);
    if ((a4 & 1) == 0)
    {
LABEL_85:
      v30 = v106 + 1;
      v86 = v108 + v100;
      v88 = v105 - 1;
      v39 = v103;
      v5 = v104 + v100;
      if (v106 + 1 != v103)
      {
        goto LABEL_86;
      }

      v6 = v96;
      v23 = v97;
      if (v103 < v97)
      {
        goto LABEL_124;
      }

      goto LABEL_35;
    }

    if (!v84)
    {
      break;
    }

    a4 = v110;
    outlined init with take of SiriUISession(v5, v110);
    swift_arrayInitWithTakeFrontToBack();
    outlined init with take of SiriUISession(a4, v90);
    v90 += v87;
    v5 += v87;
    if (__CFADD__(v89++, 1))
    {
      goto LABEL_85;
    }
  }

  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v43 = type metadata accessor for SiriUISession(0);
  v8 = *(*(v43 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v43);
  v45 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v44 = &v37 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v16 = (a2 - a1) / v14;
  v48 = a1;
  v47 = a4;
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

    if (v18 < 1)
    {
      v26 = a4 + v18;
    }

    else
    {
      v23 = -v14;
      v24 = a4 + v18;
      v25 = v43;
      v26 = a4 + v18;
      v40 = a1;
      v41 = a4;
      v39 = v23;
      do
      {
        v37 = v26;
        v27 = a2 + v23;
        v42 = a2;
        v43 = a2 + v23;
        while (1)
        {
          if (a2 <= a1)
          {
            v48 = a2;
            v46 = v37;
            goto LABEL_59;
          }

          v38 = v26;
          v29 = v25;
          v30 = a3 + v23;
          v31 = v24 + v23;
          v32 = v44;
          outlined init with copy of SiriUISession(v31, v44);
          v33 = v27;
          v34 = v45;
          outlined init with copy of SiriUISession(v33, v45);
          v35 = static Date.< infix(_:_:)();
          outlined destroy of SiriUISession(v34, type metadata accessor for SiriUISession);
          outlined destroy of SiriUISession(v32, type metadata accessor for SiriUISession);
          if (v35)
          {
            break;
          }

          v26 = v31;
          if (a3 < v24 || v30 >= v24)
          {
            a3 = v30;
            v25 = v29;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v40;
          }

          else
          {
            v36 = a3 == v24;
            a3 = v30;
            v25 = v29;
            a1 = v40;
            if (!v36)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v24 = v31;
          a2 = v42;
          v28 = v31 > v41;
          v27 = v43;
          v23 = v39;
          if (!v28)
          {
            goto LABEL_57;
          }
        }

        if (a3 < v42 || v30 >= v42)
        {
          a3 = v30;
          v25 = v29;
          a2 = v43;
          swift_arrayInitWithTakeFrontToBack();
          v23 = v39;
          a1 = v40;
          v26 = v38;
        }

        else
        {
          v36 = a3 == v42;
          a3 = v30;
          v25 = v29;
          a2 = v43;
          v23 = v39;
          a1 = v40;
          v26 = v38;
          if (!v36)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v24 > v41);
    }

LABEL_57:
    v48 = a2;
    v46 = v26;
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

    v42 = a4 + v17;
    v46 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      do
      {
        v20 = v44;
        outlined init with copy of SiriUISession(a2, v44);
        v21 = v45;
        outlined init with copy of SiriUISession(a4, v45);
        v22 = static Date.< infix(_:_:)();
        outlined destroy of SiriUISession(v21, type metadata accessor for SiriUISession);
        outlined destroy of SiriUISession(v20, type metadata accessor for SiriUISession);
        if (v22)
        {
          if (a1 < a2 || a1 >= a2 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v14;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v47 = a4 + v14;
          a4 += v14;
        }

        a1 += v14;
        v48 = a1;
      }

      while (a4 < v42 && a2 < a3);
    }
  }

LABEL_59:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v48, &v47, &v46, type metadata accessor for SiriUISession);
  return 1;
}

{
  v63 = type metadata accessor for ProtoTaskEngagementFeatureSet();
  v8 = *(v63 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v63);
  v60 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v59 = &v49 - v13;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_60;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_61;
  }

  v17 = (a2 - a1) / v15;
  v66 = a1;
  v65 = a4;
  if (v17 >= v16 / v15)
  {
    v19 = v16 / v15 * v15;
    if (a4 < a2 || a2 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v33 = a4 + v19;
    if (v19 >= 1)
    {
      v34 = -v15;
      v53 = a4;
      v54 = (v8 + 16);
      v52 = (v8 + 8);
      v35 = v33;
      v62 = a1;
      v55 = v34;
      do
      {
        v50 = v33;
        v36 = a2;
        v37 = a2 + v34;
        v38 = a3;
        v56 = v36;
        v57 = v37;
        while (1)
        {
          if (v36 <= a1)
          {
            v66 = v36;
            v64 = v50;
            goto LABEL_58;
          }

          v39 = v38;
          v51 = v33;
          v61 = v38 + v34;
          v40 = v35 + v34;
          v41 = *v54;
          v42 = v59;
          v43 = v35 + v34;
          v44 = v35;
          v45 = v63;
          (*v54)(v59, v43, v63);
          v46 = v60;
          (v41)(v60, v37, v45);
          v58 = ProtoTaskEngagementFeatureSet.startTimestampMs.getter();
          v47 = ProtoTaskEngagementFeatureSet.startTimestampMs.getter();
          v48 = *v52;
          (*v52)(v46, v45);
          v48(v42, v45);
          if (v58 < v47)
          {
            break;
          }

          v33 = v40;
          v38 = v61;
          if (v39 < v44 || v61 >= v44)
          {
            swift_arrayInitWithTakeFrontToBack();
            v37 = v57;
            a1 = v62;
          }

          else
          {
            v37 = v57;
            a1 = v62;
            if (v39 != v44)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v35 = v40;
          v34 = v55;
          v36 = v56;
          if (v40 <= v53)
          {
            a2 = v56;
            goto LABEL_57;
          }
        }

        v35 = v44;
        if (v39 < v56 || v61 >= v56)
        {
          a3 = v61;
          a2 = v57;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v62;
          v33 = v51;
          v34 = v55;
        }

        else
        {
          a3 = v61;
          a2 = v57;
          a1 = v62;
          v33 = v51;
          v34 = v55;
          if (v39 != v56)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v35 > v53);
    }

LABEL_57:
    v66 = a2;
    v64 = v33;
  }

  else
  {
    v18 = v17 * v15;
    if (a4 < a1 || a1 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v58 = a4 + v18;
    v64 = a4 + v18;
    v61 = a3;
    if (v18 >= 1 && a2 < a3)
    {
      v21 = *(v8 + 16);
      v56 = v15;
      v57 = v8 + 16;
      v54 = (v8 + 8);
      v55 = v21;
      do
      {
        v62 = a1;
        v22 = v59;
        v23 = v63;
        v24 = v55;
        v55(v59, a2, v63);
        v25 = v60;
        v24(v60, a4, v23);
        v26 = a2;
        v27 = ProtoTaskEngagementFeatureSet.startTimestampMs.getter();
        v28 = ProtoTaskEngagementFeatureSet.startTimestampMs.getter();
        v29 = *v54;
        (*v54)(v25, v23);
        v29(v22, v23);
        if (v27 >= v28)
        {
          v30 = v56;
          v32 = a4 + v56;
          v31 = v62;
          if (v62 < a4 || v62 >= v32)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v26;
          }

          else
          {
            a2 = v26;
            if (v62 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v65 = v32;
          a4 += v30;
        }

        else
        {
          v30 = v56;
          a2 = v26 + v56;
          v31 = v62;
          if (v62 < v26 || v62 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v62 != v26)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v31 + v30;
        v66 = a1;
      }

      while (a4 < v58 && a2 < v61);
    }
  }

LABEL_58:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v66, &v65, &v64);
  return 1;
}

uint64_t specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t specialized PostSiriEngagementMetricsCollector.fetchSignalsAndTaskFeatureSets(for:nextUiSession:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, NSObject *a5)
{
  v206 = a5;
  v205 = a4;
  v207 = a3;
  v228 = type metadata accessor for Date();
  v7 = *(v228 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v228);
  v227 = &v204 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v229 = &v204 - v11;
  v12 = swift_allocObject();
  v218 = v12;
  *(v12 + 16) = MEMORY[0x277D84F90];
  v204 = v12 + 16;
  v234 = (*(*a1 + 248))(a2);
  v238 = v234;
  v13 = *(*a1 + 272);
  v219 = a1;
  v14 = v13(a2);
  object = v14;
  if (v14 >> 62)
  {
    goto LABEL_212;
  }

  v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
LABEL_216:

    v18 = 0;
LABEL_217:

    v235._countAndFlagsBits = specialized Array._copyToContiguousArray()(v190);
    specialized MutableCollection<>.sort(by:)(&v235._countAndFlagsBits, specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:), specialized MutableCollection<>._insertionSort(within:sortedEnd:by:));
    if (v18)
    {
      goto LABEL_235;
    }

    v235._countAndFlagsBits = specialized Array._copyToContiguousArray()(v191);
    specialized MutableCollection<>.sort(by:)(&v235._countAndFlagsBits, specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:), specialized MutableCollection<>._insertionSort(within:sortedEnd:by:));

    countAndFlagsBits = v235._countAndFlagsBits;
    v192 = *(*v219 + 144);

    v192(v193);
    if (countAndFlagsBits < 0 || (countAndFlagsBits & 0x4000000000000000) != 0)
    {
      goto LABEL_232;
    }

    v194 = *(countAndFlagsBits + 16);
    if (!v194)
    {
LABEL_233:

      swift_beginAccess();
      v201 = *(v218 + 16);

      specialized closure #1 in closure #2 in PostSiriEngagementMetricsCollector.runPSECollection(for:completion:)(v202, v207, v205, v206);
    }

LABEL_221:
    v195 = 0;
    v234 = countAndFlagsBits & 0xC000000000000001;
    while (1)
    {
      if (v234)
      {
        v196 = MEMORY[0x25F8CE460](v195, countAndFlagsBits);
        v197 = v195 + 1;
        if (__OFADD__(v195, 1))
        {
          goto LABEL_229;
        }
      }

      else
      {
        if (v195 >= *(countAndFlagsBits + 16))
        {
          goto LABEL_230;
        }

        v196 = *(countAndFlagsBits + 8 * v195 + 32);

        v197 = v195 + 1;
        if (__OFADD__(v195, 1))
        {
LABEL_229:
          __break(1u);
LABEL_230:
          __break(1u);
LABEL_231:
          __break(1u);
LABEL_232:
          v194 = MEMORY[0x25F8CE500](countAndFlagsBits);
          if (!v194)
          {
            goto LABEL_233;
          }

          goto LABEL_221;
        }
      }

      v198 = swift_allocObject();
      v199 = v218;
      *(v198 + 16) = v196;
      *(v198 + 24) = v199;
      v200 = *(*v219 + 232);

      v200(v195, partial apply for closure #9 in PostSiriEngagementMetricsCollector.fetchSignalsAndTaskFeatureSets(for:nextUiSession:completion:), v198);

      ++v195;
      if (v197 == v194)
      {
        goto LABEL_233;
      }
    }
  }

  while (2)
  {
    v17 = 0;
    v18 = 0;
    v217 = object & 0xC000000000000001;
    v211 = object & 0xFFFFFFFFFFFFFF8;
    v210 = object + 32;
    v209 = 0x800000025ED7FA70;
    v208 = (v7 + 32);
    v224 = (v7 + 8);
    v214 = xmmword_25ED7C750;
    v216 = object;
    v215 = v16;
    while (2)
    {
      if (v217)
      {
        v19 = MEMORY[0x25F8CE460](v17, object);
        v20 = __OFADD__(v17++, 1);
        if (v20)
        {
          goto LABEL_205;
        }
      }

      else
      {
        if (v17 >= *(v211 + 16))
        {
          goto LABEL_210;
        }

        v21 = *(v210 + 8 * v17);

        v20 = __OFADD__(v17++, 1);
        if (v20)
        {
          goto LABEL_205;
        }
      }

      v232 = v18;
      v22 = *(*v19 + 200);
      v23 = *v19 + 200;
      v233 = v19;
      v226 = v22;
      v225 = v23;
      v24 = v22();
      v25 = v24;
      v7 = *(v24 + 16);
      v223 = v17;
      if (!v7)
      {
        v28 = MEMORY[0x277D84F90];
        goto LABEL_27;
      }

      v26 = 0;
      v27 = v24 + 40;
      v222 = v7 - 1;
      v28 = MEMORY[0x277D84F90];
      v230 = v24 + 40;
      do
      {
        v231 = v28;
        v29 = (v27 + 16 * v26);
        v30 = v26;
        while (1)
        {
          if (v30 >= *(v25 + 16))
          {
            __break(1u);
LABEL_199:
            __break(1u);
LABEL_200:
            __break(1u);
LABEL_201:
            __break(1u);
LABEL_202:
            __break(1u);
LABEL_203:
            __break(1u);
LABEL_204:
            __break(1u);
LABEL_205:
            __break(1u);
            goto LABEL_206;
          }

          v32 = *(v29 - 1);
          v31 = *v29;
          v26 = v30 + 1;
          v33 = String.lowercased()();
          object = v33._object;
          v235 = v33;
          strcpy(v236, "externalagent");
          HIWORD(v236[1]) = -4864;
          lazy protocol witness table accessor for type String and conformance String();

          v34 = StringProtocol.contains<A>(_:)();

          if (v34)
          {
            break;
          }

          v29 += 2;
          ++v30;
          if (v7 == v26)
          {
            v17 = v223;
            v28 = v231;
            goto LABEL_27;
          }
        }

        v28 = v231;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v237 = v28;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v28 + 2) + 1, 1);
          v28 = v237;
        }

        v17 = v223;
        v37 = *(v28 + 2);
        v36 = *(v28 + 3);
        object = v37 + 1;
        if (v37 >= v36 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1);
          v28 = v237;
        }

        *(v28 + 2) = object;
        v38 = v28 + 16 * v37;
        *(v38 + 4) = v32;
        *(v38 + 5) = v31;
        v27 = v230;
      }

      while (v222 != v30);
LABEL_27:

      v39 = *(v28 + 2);

      if (v39)
      {
        if (one-time initialization token for engagement != -1)
        {
          swift_once();
        }

        v41 = type metadata accessor for Logger();
        __swift_project_value_buffer(v41, static Logger.engagement);
        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.info.getter();
        v44 = os_log_type_enabled(v42, v43);
        v18 = v232;
        if (v44)
        {
          v45 = swift_slowAlloc();
          *v45 = 0;
          _os_log_impl(&dword_25ECEC000, v42, v43, "This is a SiriX task, Fall back to Flow.", v45, 2u);
          MEMORY[0x25F8CEE50](v45, -1, -1);
        }

LABEL_5:

LABEL_6:
        object = v216;
        if (v17 == v215)
        {

          goto LABEL_217;
        }

        continue;
      }

      break;
    }

    v46 = v233;
    v47 = (*(*v233 + 128))(v40);
    v222 = v48;
    v49 = (*(*v46 + 152))();
    v213 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v51 = swift_allocObject();
    *(v51 + 16) = v214;
    v52 = *(*v46 + 176);
    v53 = *v46 + 176;
    *(v51 + 32) = v52();
    *(v51 + 40) = v54;
    v55 = swift_allocObject();
    *(v55 + 16) = v214;
    v230 = v53;
    v231 = v52;
    *(v55 + 32) = v52();
    *(v55 + 40) = v56;
    v57 = v226();
    type metadata accessor for EngagementUnderstandingFeatures();
    v58 = swift_allocObject();
    *(v58 + 16) = 2;
    *(v58 + 17) = 0;
    *(v58 + 21) = 0;
    v59 = (*v46 + 224);
    v7 = v229;
    v226 = *v59;
    v225 = v59;
    v60 = v226();
    v61 = (*v46 + 248);
    v62 = v227;
    v221 = *v61;
    v220 = v61;
    v221(v60);
    v63 = type metadata accessor for SiriExecutionTask(0);
    v64 = *(v63 + 48);
    v65 = *(v63 + 52);
    v66 = swift_allocObject();
    v67 = v222;
    v66[2] = v47;
    v66[3] = v67;
    v68 = v213;
    v66[4] = v49;
    v66[5] = v68;
    v66[6] = v51;
    v66[7] = v55;
    v69 = MEMORY[0x277D84F90];
    v66[8] = MEMORY[0x277D84F90];
    v66[9] = 0xD000000000000014;
    v66[10] = v209;
    v66[11] = v57;
    v66[12] = v58;
    object = *v208;
    v70 = v228;
    (*v208)(v66 + OBJC_IVAR____TtC18PostSiriEngagement17SiriExecutionTask_startTime, v7, v228);
    v213 = v66;
    (object)(v66 + OBJC_IVAR____TtC18PostSiriEngagement17SiriExecutionTask_endTime, v62, v70);
    v236[0] = v69;
    v71 = v234;
    v212 = v234 >> 62;
    if (v234 >> 62)
    {
      if (v234 < 0)
      {
        v78 = v234;
      }

      else
      {
        v78 = v234 & 0xFFFFFFFFFFFFFF8;
      }

      v72 = MEMORY[0x25F8CE500](v78);
      v18 = v232;
      if (v72)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v72 = *((v234 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v18 = v232;
      if (v72)
      {
LABEL_34:
        v73 = 0;
        v232 = v71 & 0xC000000000000001;
        v7 = v71 & 0xFFFFFFFFFFFFFF8;
        do
        {
          if (v232)
          {
            v74 = MEMORY[0x25F8CE460](v73, v71);
            v75 = v73 + 1;
            if (__OFADD__(v73, 1))
            {
              goto LABEL_199;
            }
          }

          else
          {
            if (v73 >= *(v7 + 16))
            {
              goto LABEL_200;
            }

            v74 = *(v71 + 8 * v73 + 32);

            v75 = v73 + 1;
            if (__OFADD__(v73, 1))
            {
              goto LABEL_199;
            }
          }

          object = (*(*v74 + 208))();
          v235._countAndFlagsBits = v231();
          v235._object = v76;
          MEMORY[0x28223BE20](v235._countAndFlagsBits);
          *(&v204 - 2) = &v235;
          v77 = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0, (&v204 - 4), object);

          if (v77)
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            object = *(v236[0] + 16);
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          else
          {
          }

          v71 = v234;
          ++v73;
        }

        while (v75 != v72);
      }
    }

    object = v236[0];
    if ((v236[0] & 0x8000000000000000) != 0 || (v236[0] & 0x4000000000000000) != 0)
    {
      v79 = MEMORY[0x25F8CE500](v236[0]);
    }

    else
    {
      v79 = *(v236[0] + 16);
    }

    v17 = v223;
    if (v79)
    {
      if ((object & 0xC000000000000001) == 0)
      {
        if (*(object + 16))
        {
          v80 = *(object + 32);

          goto LABEL_56;
        }

LABEL_211:
        __break(1u);
LABEL_212:
        if (object < 0)
        {
          v189 = object;
        }

        else
        {
          v189 = object & 0xFFFFFFFFFFFFFF8;
        }

        v16 = MEMORY[0x25F8CE500](v189);
        if (!v16)
        {
          goto LABEL_216;
        }

        continue;
      }

      v80 = MEMORY[0x25F8CE460](0, object);
LABEL_56:

      v82 = (*(*v80 + 280))(v81);
      v84 = v83;

      v85 = HIBYTE(v84) & 0xF;
      if ((v84 & 0x2000000000000000) == 0)
      {
        v85 = v82 & 0xFFFFFFFFFFFFLL;
      }

      if (v85)
      {
        if (one-time initialization token for engagement != -1)
        {
          swift_once();
        }

        v86 = type metadata accessor for Logger();
        __swift_project_value_buffer(v86, static Logger.engagement);
        v87 = Logger.logObject.getter();
        v88 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v87, v88))
        {
          v89 = swift_slowAlloc();
          *v89 = 0;
          _os_log_impl(&dword_25ECEC000, v87, v88, "This is a SiriX task, Fall back to Flow.", v89, 2u);
          MEMORY[0x25F8CEE50](v89, -1, -1);
        }

LABEL_101:

        goto LABEL_5;
      }

      v235._countAndFlagsBits = MEMORY[0x277D84F90];
      object = v234;
      if (!v212)
      {
        v90 = *((v234 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v232 = v18;
        if (!v90)
        {
          goto LABEL_125;
        }

LABEL_109:
        v124 = 0;
        v125 = object & 0xC000000000000001;
        v7 = object & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if (v125)
          {
            v126 = MEMORY[0x25F8CE460](v124, object);
            v127 = v124 + 1;
            if (__OFADD__(v124, 1))
            {
              goto LABEL_203;
            }
          }

          else
          {
            if (v124 >= *(v7 + 16))
            {
              goto LABEL_204;
            }

            v126 = *(object + 8 * v124 + 32);

            v127 = v124 + 1;
            if (__OFADD__(v124, 1))
            {
              goto LABEL_203;
            }
          }

          v128 = (*(*v126 + 184))();
          v130 = v129;
          if (v128 == (*(*v80 + 184))() && v130 == v131)
          {
          }

          else
          {
            v133 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v133)
            {
            }

            else
            {
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              v134 = *(v235._countAndFlagsBits + 16);
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
            }
          }

          object = v234;
          ++v124;
          if (v127 == v90)
          {
            goto LABEL_125;
          }
        }
      }

      if (v234 < 0)
      {
        v123 = v234;
      }

      else
      {
        v123 = v234 & 0xFFFFFFFFFFFFFF8;
      }

      v90 = MEMORY[0x25F8CE500](v123);
      v232 = v18;
      if (v90)
      {
        goto LABEL_109;
      }

LABEL_125:

      v238 = v235._countAndFlagsBits;
      if (one-time initialization token for engagement != -1)
      {
        swift_once();
      }

      v135 = type metadata accessor for Logger();
      __swift_project_value_buffer(v135, static Logger.engagement);
      v136 = Logger.logObject.getter();
      v137 = static os_log_type_t.info.getter();
      v138 = os_log_type_enabled(v136, v137);
      v18 = v232;
      v17 = v223;
      if (v138)
      {
        v139 = swift_slowAlloc();
        *v139 = 0;
        _os_log_impl(&dword_25ECEC000, v136, v137, "This is a Intelligence Flow task.", v139, 2u);
        MEMORY[0x25F8CEE50](v139, -1, -1);
      }

      MEMORY[0x25F8CE160](v140);
      if (*((v238 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v238 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v187 = *((v238 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

LABEL_190:

      v234 = v238;
      goto LABEL_6;
    }

    break;
  }

  v235._countAndFlagsBits = MEMORY[0x277D84F90];
  if (v212)
  {
    if (v71 < 0)
    {
      v91 = v71;
    }

    else
    {
      v91 = v71 & 0xFFFFFFFFFFFFFF8;
    }

    object = MEMORY[0x25F8CE500](v91);
    if (!object)
    {
      goto LABEL_90;
    }

LABEL_74:
    v92 = 0;
    v230 = v71 & 0xFFFFFFFFFFFFFF8;
    v231 = (v71 & 0xC000000000000001);
    v222 = object;
    while (1)
    {
      if (v231)
      {
        v93 = MEMORY[0x25F8CE460](v92, v71);
        v94 = v92 + 1;
        if (__OFADD__(v92, 1))
        {
          goto LABEL_201;
        }
      }

      else
      {
        if (v92 >= *(v230 + 16))
        {
          goto LABEL_202;
        }

        v93 = *(v71 + 8 * v92 + 32);

        v94 = v92 + 1;
        if (__OFADD__(v92, 1))
        {
          goto LABEL_201;
        }
      }

      v232 = v18;
      v95 = v229;
      (*(*v93 + 352))();
      Date.timeIntervalSinceReferenceDate.getter();
      v97 = v96;
      v7 = v224;
      v98 = *v224;
      v99 = v228;
      v100 = (*v224)(v95, v228);
      v101 = v227;
      (v226)(v100);
      Date.timeIntervalSinceReferenceDate.getter();
      v103 = v102;
      v104 = v98(v101, v99);
      if (vabdd_f64(v97, v103) >= 2.0)
      {
        goto LABEL_75;
      }

      (*(*v93 + 376))(v104);
      Date.timeIntervalSinceReferenceDate.getter();
      v106 = v105;
      v107 = v98(v95, v99);
      v221(v107);
      Date.timeIntervalSinceReferenceDate.getter();
      v109 = v108;
      v110 = v98(v101, v99);
      if (vabdd_f64(v106, v109) >= 2.0)
      {
LABEL_75:

        v18 = v232;
      }

      else
      {
        v111 = (*(*v93 + 280))(v110);
        v113 = v112;

        v114 = HIBYTE(v113) & 0xF;
        if ((v113 & 0x2000000000000000) == 0)
        {
          v114 = v111 & 0xFFFFFFFFFFFFLL;
        }

        v18 = v232;
        if (v114)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v115 = *(v235._countAndFlagsBits + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }
      }

      ++v92;
      object = v222;
      v71 = v234;
      if (v94 == v222)
      {
        goto LABEL_90;
      }
    }
  }

  object = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (object)
  {
    goto LABEL_74;
  }

LABEL_90:
  v116 = v235._countAndFlagsBits;
  if (v235._countAndFlagsBits < 0 || (v235._countAndFlagsBits & 0x4000000000000000) != 0)
  {
    object = v235._countAndFlagsBits;
    v117 = MEMORY[0x25F8CE500]();
    v116 = object;
  }

  else
  {
    v117 = *(v235._countAndFlagsBits + 16);
  }

  v17 = v223;
  if (v117)
  {
    if ((v116 & 0xC000000000000001) != 0)
    {
      MEMORY[0x25F8CE460](0, v116);

      swift_unknownObjectRelease();
    }

    else
    {
      countAndFlagsBits = *(v116 + 16);

      if (!countAndFlagsBits)
      {
        goto LABEL_231;
      }
    }

    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v119 = type metadata accessor for Logger();
    __swift_project_value_buffer(v119, static Logger.engagement);
    v120 = Logger.logObject.getter();
    v121 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v120, v121))
    {
      v122 = swift_slowAlloc();
      *v122 = 0;
      _os_log_impl(&dword_25ECEC000, v120, v121, "This is a SiriX task, Fall back to Flow.", v122, 2u);
      MEMORY[0x25F8CEE50](v122, -1, -1);
    }

    goto LABEL_101;
  }

  v235._countAndFlagsBits = MEMORY[0x277D84F90];
  if (v212)
  {
    if (v71 < 0)
    {
      v141 = v71;
    }

    else
    {
      v141 = v71 & 0xFFFFFFFFFFFFFF8;
    }

    v7 = MEMORY[0x25F8CE500](v141);
    if (!v7)
    {
      goto LABEL_151;
    }

    goto LABEL_136;
  }

  v7 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7)
  {
LABEL_136:
    v142 = 0;
    v230 = v71 & 0xC000000000000001;
    v222 = v71 & 0xFFFFFFFFFFFFFF8;
    v221 = v7;
    while (1)
    {
      if (v230)
      {
        v145 = MEMORY[0x25F8CE460](v142, v71);
        v144 = v145;
      }

      else
      {
        if (v142 >= *(v222 + 16))
        {
          goto LABEL_207;
        }

        v144 = *(v71 + 8 * v142 + 32);
      }

      v146 = v229;
      if (__OFADD__(v142, 1))
      {
        break;
      }

      v231 = (v142 + 1);
      v232 = v18;
      v147 = (*v144 + 352);
      v148 = *v147;
      (*v147)(v145);
      Date.timeIntervalSinceReferenceDate.getter();
      v150 = v149;
      object = *v224;
      v151 = v228;
      v152 = (*v224)(v146, v228);
      v153 = v227;
      (v226)(v152);
      Date.timeIntervalSinceReferenceDate.getter();
      v155 = v154;
      v156 = (object)(v153, v151);
      if (vabdd_f64(v150, v155) >= 2.0)
      {
        goto LABEL_137;
      }

      v148(v156);
      Date.timeIntervalSinceReferenceDate.getter();
      v158 = v157;
      v159 = (object)(v146, v151);
      (*(*v144 + 376))(v159);
      Date.timeIntervalSinceReferenceDate.getter();
      v161 = v160;
      v162 = (object)(v153, v151);
      if (vabdd_f64(v158, v161) >= 2.0)
      {
LABEL_137:

        v143 = v231;
        v18 = v232;
        v7 = v221;
      }

      else
      {
        object = (*(*v144 + 280))(v162);
        v164 = v163;

        v165 = HIBYTE(v164) & 0xF;
        if ((v164 & 0x2000000000000000) == 0)
        {
          v165 = object & 0xFFFFFFFFFFFFLL;
        }

        v143 = v231;
        v18 = v232;
        v7 = v221;
        if (v165)
        {
        }

        else
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          object = *(v235._countAndFlagsBits + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }
      }

      ++v142;
      v71 = v234;
      if (v143 == v7)
      {
        goto LABEL_151;
      }
    }

LABEL_206:
    __break(1u);
LABEL_207:
    __break(1u);
LABEL_208:
    __break(1u);
LABEL_209:
    __break(1u);
LABEL_210:
    __break(1u);
    goto LABEL_211;
  }

LABEL_151:
  object = v235._countAndFlagsBits;
  if (v235._countAndFlagsBits < 0 || (v235._countAndFlagsBits & 0x4000000000000000) != 0)
  {
    v166 = MEMORY[0x25F8CE500](v235._countAndFlagsBits);
  }

  else
  {
    v166 = *(v235._countAndFlagsBits + 16);
  }

  v17 = v223;
  if (!v166)
  {

LABEL_183:
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v182 = type metadata accessor for Logger();
    __swift_project_value_buffer(v182, static Logger.engagement);
    v183 = Logger.logObject.getter();
    v184 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v183, v184))
    {
      v185 = swift_slowAlloc();
      *v185 = 0;
      _os_log_impl(&dword_25ECEC000, v183, v184, "This is a Intelligence Flow task.", v185, 2u);
      MEMORY[0x25F8CEE50](v185, -1, -1);
    }

    MEMORY[0x25F8CE160](v186);
    if (*((v238 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v238 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v188 = *((v238 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    goto LABEL_190;
  }

  if ((object & 0xC000000000000001) != 0)
  {
    v167 = MEMORY[0x25F8CE460](0, object);
LABEL_158:

    v235._countAndFlagsBits = MEMORY[0x277D84F90];
    if (v212)
    {
      if (v71 < 0)
      {
        v169 = v71;
      }

      else
      {
        v169 = v71 & 0xFFFFFFFFFFFFFF8;
      }

      v168 = MEMORY[0x25F8CE500](v169);
      v232 = v18;
      if (!v168)
      {
        goto LABEL_182;
      }
    }

    else
    {
      v168 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v232 = v18;
      if (!v168)
      {
LABEL_182:

        v238 = v235._countAndFlagsBits;
        v18 = v232;
        v17 = v223;
        goto LABEL_183;
      }
    }

    v170 = 0;
    v171 = v71 & 0xC000000000000001;
    v7 = v71 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v171)
      {
        v172 = MEMORY[0x25F8CE460](v170, v71);
        v173 = v170 + 1;
        if (__OFADD__(v170, 1))
        {
          goto LABEL_208;
        }
      }

      else
      {
        if (v170 >= *(v7 + 16))
        {
          goto LABEL_209;
        }

        v172 = *(v71 + 8 * v170 + 32);

        v173 = v170 + 1;
        if (__OFADD__(v170, 1))
        {
          goto LABEL_208;
        }
      }

      v174 = (*(*v172 + 184))();
      v176 = v175;
      v178 = (*(*v167 + 184))();
      v179 = v174;
      object = v177;
      if (v179 == v178 && v176 == v177)
      {
      }

      else
      {
        v181 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v181)
        {
        }

        else
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          object = *(v235._countAndFlagsBits + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }
      }

      v71 = v234;
      ++v170;
      if (v173 == v168)
      {
        goto LABEL_182;
      }
    }
  }

  if (*(object + 16))
  {
    v167 = *(object + 32);

    goto LABEL_158;
  }

  __break(1u);
LABEL_235:

  __break(1u);
  return result;
}

uint64_t specialized PostSiriEngagementMetricsCollector.runPSECollection(for:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (**a5)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  v117 = a5;
  v119 = a2;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v107 = *(v10 - 8);
  v108 = v10;
  v11 = *(v107 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v106 = *(v14 - 8);
  v15 = *(v106 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for DispatchQoS.QoSClass();
  v104 = *(v105 - 8);
  v18 = *(v104 + 64);
  MEMORY[0x28223BE20](v105);
  v103 = &v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18PostSiriEngagement0B9UISessionVSgMd, "0W");
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v24 = &v99 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v115 = &v99 - v25;
  v118 = type metadata accessor for SiriUISession(0);
  v109 = *(v118 - 8);
  v26 = *(v109 + 64);
  MEMORY[0x28223BE20](v118);
  v114 = &v99 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_18PostSiriEngagement0C9UISessionV7elementtMd, &_sSi6offset_18PostSiriEngagement0C9UISessionV7elementtMR);
  v28 = *(*(v113 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v113);
  v31 = (&v99 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v29);
  v112 = &v99 - v32;
  v33 = type metadata accessor for Date();
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v36 = &v99 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = swift_allocObject();
  v38 = v117;
  v39 = a3;
  v37[2] = a3;
  v37[3] = a4;
  v40 = a4;
  v37[4] = v38;
  v37[5] = a6;
  v116 = *(a1 + 16);
  if (v116)
  {
    v41 = a1;
    v110 = v24;
    v99 = v17;
    v100 = v13;
    v101 = v14;
    v102 = v37;
    v42 = MEMORY[0x277D84F90];
    v122 = MEMORY[0x277D84F90];

    specialized ContiguousArray.reserveCapacity(_:)();
    v43 = 0;
    v44 = v41 + ((*(v109 + 80) + 32) & ~*(v109 + 80));
    v111 = *(v109 + 72);
    v117 = (v109 + 56);
    do
    {
      v46 = v112;
      v45 = v113;
      v47 = *(v113 + 48);
      v48 = v43 + 1;
      outlined init with copy of SiriUISession(v44, &v112[v47]);
      *v31 = v43;
      v49 = *(v45 + 48);
      outlined init with take of SiriUISession(&v46[v47], v31 + v49);
      v50 = v31 + v49;
      v51 = v31;
      v52 = v114;
      outlined init with copy of SiriUISession(v50, v114);
      v53 = type metadata accessor for UISessionSignalBuilder(0);
      v54 = *(v53 + 48);
      v55 = *(v53 + 52);
      v56 = swift_allocObject();
      v57 = OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_siriUISession;
      v58 = v118;
      v40 = *v117;
      (*v117)(v56 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_siriUISession, 1, 1, v118);
      *(v56 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_siriExecutionTasks) = v42;
      v59 = v56 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_postSiriDataStream;
      *(v59 + 112) = 0;
      *(v59 + 80) = 0u;
      *(v59 + 96) = 0u;
      *(v59 + 48) = 0u;
      *(v59 + 64) = 0u;
      *(v59 + 16) = 0u;
      *(v59 + 32) = 0u;
      *v59 = 0u;
      v60 = v52;
      v31 = v51;
      v61 = v115;
      outlined init with take of SiriUISession(v60, v115);
      v40(v61, 0, 1, v58);
      swift_beginAccess();
      outlined assign with take of SiriUISession?(v61, v56 + v57);
      swift_endAccess();
      *(v56 + OBJC_IVAR____TtC18PostSiriEngagement22UISessionSignalBuilder_collector) = v119;

      outlined destroy of Date?(v51, &_sSi6offset_18PostSiriEngagement0C9UISessionV7elementtMd, &_sSi6offset_18PostSiriEngagement0C9UISessionV7elementtMR);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v62 = *(v122 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      v42 = MEMORY[0x277D84F90];
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v44 += v111;
      v43 = v48;
    }

    while (v116 != v48);
    v36 = v122;
    v122 = 0;
    v63 = dispatch_group_create();
    v64 = (v36 >> 62) & 1;
    if (v36 < 0)
    {
      LODWORD(v64) = 1;
    }

    LODWORD(v116) = v64;
    if (v64 == 1)
    {
      goto LABEL_38;
    }

    v65 = *(v36 + 16);
    if (v65)
    {
      while (1)
      {
        v66 = 0;
        v67 = v36 & 0xC000000000000001;
        v114 = v36 + 32;
        v115 = v65;
        while (v67)
        {
          v70 = MEMORY[0x25F8CE460](v66, v36);
          v71 = v66 + 1;
          if (__OFADD__(v66, 1))
          {
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

LABEL_14:
          v72 = MEMORY[0x25F8CE7F0]();
          dispatch_group_enter(v63);
          if (v116)
          {
            v73 = MEMORY[0x25F8CE500](v36);
          }

          else
          {
            v73 = *(v36 + 16);
          }

          if (v71 >= v73)
          {
            v68 = v110;
            v40(v110, 1, 1, v118);
          }

          else
          {
            if (v67)
            {
              v74 = MEMORY[0x25F8CE460](v71, v36);
            }

            else
            {
              if (v71 < 0)
              {
                goto LABEL_36;
              }

              if (v71 >= *(v36 + 16))
              {
                goto LABEL_37;
              }

              v74 = *(v114 + 8 * v71);
            }

            v68 = v110;
            (*(*v74 + 112))();
          }

          v69 = v63;
          specialized PostSiriEngagementMetricsCollector.fetchSignalsAndTaskFeatureSets(for:nextUiSession:completion:)(v70, v68, v119, &v122, v69);

          outlined destroy of Date?(v68, &_s18PostSiriEngagement0B9UISessionVSgMd, "0W");
          objc_autoreleasePoolPop(v72);

          ++v66;
          if (v71 == v115)
          {
            goto LABEL_39;
          }
        }

        if (v66 < *(v36 + 16))
        {
          break;
        }

        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        v65 = MEMORY[0x25F8CE500](v36);
        if (!v65)
        {
          goto LABEL_39;
        }
      }

      v70 = *(v36 + 8 * v66 + 32);

      v71 = v66 + 1;
      if (__OFADD__(v66, 1))
      {
        goto LABEL_26;
      }

      goto LABEL_14;
    }

LABEL_39:

    type metadata accessor for OS_dispatch_queue();
    v88 = v104;
    v89 = v103;
    v90 = v105;
    (*(v104 + 104))(v103, *MEMORY[0x277D851C8], v105);
    v91 = static OS_dispatch_queue.global(qos:)();
    (*(v88 + 8))(v89, v90);
    v92 = swift_allocObject();
    v93 = v102;
    *(v92 + 16) = partial apply for closure #1 in PostSiriEngagementMetricsCollector.collect(callback:);
    *(v92 + 24) = v93;
    aBlock[4] = closure #3 in PostSiriEngagementMetricsCollector.runPSECollection(for:completion:)partial apply;
    aBlock[5] = v92;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_39;
    v94 = _Block_copy(aBlock);

    v95 = v99;
    static DispatchQoS.unspecified.getter();
    v120 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v96 = v100;
    v97 = v108;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v94);

    (*(v107 + 8))(v96, v97);
    (*(v106 + 8))(v95, v101);
  }

  else
  {
LABEL_27:
    v75 = v38;
    v76 = one-time initialization token for engagement;
    v77 = v39;

    v78 = v40;
    v79 = v77;
    if (v76 != -1)
    {
      swift_once();
    }

    v80 = type metadata accessor for Logger();
    __swift_project_value_buffer(v80, static Logger.engagement);
    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&dword_25ECEC000, v81, v82, "There are no Siri UI events in Biome stream to submit.", v83, 2u);
      MEMORY[0x25F8CEE50](v83, -1, -1);
    }

    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      *v86 = 134217984;
      *(v86 + 4) = *(v79 + 16);

      _os_log_impl(&dword_25ECEC000, v84, v85, "Successfully completed collection of %ld activities.", v86, 0xCu);
      MEMORY[0x25F8CEE50](v86, -1, -1);
    }

    else
    {
    }

    v87 = *(v78 + 6);
    Date.init()();
    UserDefaultsDomainProvider.lastCollectionDate.setter(v36);
    (v75)(0);
  }
}

uint64_t outlined init with copy of SiriUISession(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriUISession(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of SiriUISession(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriUISession(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #2 in PostSiriEngagementMetricsCollector.collect(startDate:timeWindowInSeconds:numSiriUISessions:completion:)()
{
  v1 = *(type metadata accessor for SiriUISession(0) - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return closure #2 in PostSiriEngagementMetricsCollector.collect(startDate:timeWindowInSeconds:numSiriUISessions:completion:)(v3, v4, v5, v6, v0 + v2, v8);
}

uint64_t outlined destroy of SiriUISession(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of SiriUISession?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18PostSiriEngagement0B9UISessionVSgMd, "0W");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in PostSiriEngagementMetricsCollector.fetchDonatedEvents(biomeFetcherConfiguration:completion:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(a2 + 80);
  v9[4] = *(a2 + 64);
  v9[5] = v5;
  v9[6] = *(a2 + 96);
  v10 = *(a2 + 112);
  v6 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v6;
  v7 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v7;
  return v3(a1, v9);
}

uint64_t outlined assign with take of SiriUISession?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18PostSiriEngagement0B9UISessionVSgMd, "0W");
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
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

uint64_t partial apply for closure #3 in PostSiriEngagementMetricsCollector.runPSECollection(for:completion:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t lazy protocol witness table accessor for type Date and conformance Date(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  }

  return result;
}

uint64_t objectdestroy_25Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t CallsIntentSignalFactory.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t CallsIntentSignalFactory.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

void CallsIntentSignalFactory.convertBmEventToSignal(bmEvent:siriUISession:)(void *a1, char *a2)
{
  v284 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v291 = &v273 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v290 = &v273 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v289 = &v273 - v10;
  MEMORY[0x28223BE20](v9);
  v292 = &v273 - v11;
  v285 = type metadata accessor for Date();
  v294 = *(v285 - 1);
  v12 = *(v294 + 8);
  v13 = MEMORY[0x28223BE20](v285);
  v282 = &v273 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v283 = &v273 - v16;
  MEMORY[0x28223BE20](v15);
  v293 = &v273 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v286 = &v273 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v287 = &v273 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v273 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v273 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v33 = &v273 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v35 = &v273 - v34;
  v36 = type metadata accessor for ReliabilityCategory();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  v39 = MEMORY[0x28223BE20](v36);
  v41 = &v273 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x25F8CE7F0](v39);
  v43 = v296;
  closure #1 in static Utils.extractInteraction(fromAppIntentEvent:)(a1, &v298, &v300);
  if (v43)
  {
    objc_autoreleasePoolPop(v42);
    return;
  }

  v276 = v26;
  v277 = v28;
  v278 = v33;
  v274 = v41;
  v275 = v37;
  v279 = v35;
  v44 = v293;
  v281 = a1;
  v280 = 0;
  objc_autoreleasePoolPop(v42);
  v288 = v300;
  v296 = [v300 intent];
  v45 = [v296 domain];
  v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v48 = v47;

  if (v46 == 0x736C6C6143 && v48 == 0xE500000000000000)
  {

    v49 = v294;
  }

  else
  {
    v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v49 = v294;
    if ((v50 & 1) == 0)
    {
      if (one-time initialization token for engagement == -1)
      {
LABEL_13:
        v59 = type metadata accessor for Logger();
        __swift_project_value_buffer(v59, static Logger.engagement);
        *&v300 = 0;
        *(&v300 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(55);
        MEMORY[0x25F8CE090](0xD000000000000012, 0x800000025ED7F2D0);
        v60 = [v296 domain];
        v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v63 = v62;

        MEMORY[0x25F8CE090](v61, v63);

        MEMORY[0x25F8CE090](0xD000000000000023, 0x800000025ED7F2F0);
        v64 = v300;
        v65 = *MEMORY[0x277D616E0];
        v66 = type metadata accessor for AppIntentEventDataIssues();
        v67 = v274;
        (*(*(v66 - 8) + 104))(v274, v65, v66);
        v68 = v275;
        (*(v275 + 104))(v67, *MEMORY[0x277D61678], v36);

        v69 = Logger.logObject.getter();
        v70 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          *&v300 = v72;
          *v71 = 136315138;
          *(v71 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, *(&v64 + 1), &v300);
          _os_log_impl(&dword_25ECEC000, v69, v70, "%s", v71, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v72);
          MEMORY[0x25F8CEE50](v72, -1, -1);
          MEMORY[0x25F8CEE50](v71, -1, -1);
        }

        type metadata accessor for SiriTaskEngagementUtils();
        v73 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
        MEMORY[0x25F8CDB30](v67, v73, v74);

        (*(v68 + 8))(v67, v36);
        return;
      }

LABEL_123:
      swift_once();
      goto LABEL_13;
    }
  }

  v51 = v281;
  if ([v281 donatedBySiri])
  {
    v52 = (*(*v295 + 144))(&v300);
    if (!__OFADD__(*v53, 1))
    {
      ++*v53;
      v52(&v300, 0);

      return;
    }

    __break(1u);
    goto LABEL_123;
  }

  v302 = MEMORY[0x277D84F98];
  v54 = [v51 absoluteTimestamp];
  if (v54)
  {
    v55 = v279;
    v56 = v54;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v57 = 0;
    v58 = v285;
  }

  else
  {
    v57 = 1;
    v58 = v285;
    v55 = v279;
  }

  v75 = 1;
  (*(v49 + 7))(v55, v57, 1, v58);
  v76 = [v288 dateInterval];
  v77 = v276;
  if (v76)
  {
    v78 = v76;
    static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

    v75 = 0;
  }

  v79 = type metadata accessor for DateInterval();
  v80 = *(v79 - 8);
  v81 = *(v80 + 56);
  v293 = (v80 + 56);
  v294 = v81;
  (v81)(v77, v75, 1, v79);
  v82 = v77;
  v83 = v277;
  outlined init with take of DateInterval?(v82, v277, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v285 = *(v80 + 48);
  v84 = 0;
  if (!(v285)(v83, 1, v79))
  {
    DateInterval.duration.getter();
    v84 = v85;
  }

  outlined destroy of Date?(v83, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v86 = *(v49 + 2);
  v87 = v284;
  v86(v44, v284, v58);
  v88 = v87 + *(type metadata accessor for SiriUISession(0) + 20);
  v89 = v283;
  v86(v283, v88, v58);
  v90 = v279;
  v91 = v278;
  outlined init with copy of Date?(v279, v278);
  LODWORD(v277) = (*(v49 + 6))(v91, 1, v58);
  if (v277 == 1)
  {
    v105 = *(v49 + 1);
    v105(v89, v58);
    v105(v44, v58);
    outlined destroy of Date?(v90, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    outlined destroy of Date?(v91, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v278 = 0x3FF0000000000000;
    v94 = 0;
    v98 = 0.0;
    v104 = 0.0;
    v84 = 0;
  }

  else
  {
    v92 = v282;
    (*(v49 + 4))(v282, v91, v58);
    Date.timeIntervalSinceReferenceDate.getter();
    v94 = v93;
    Date.timeIntervalSinceReferenceDate.getter();
    v96 = v95;
    Date.timeIntervalSinceReferenceDate.getter();
    v98 = v96 - v97;
    Date.timeIntervalSinceReferenceDate.getter();
    v100 = v99;
    Date.timeIntervalSinceReferenceDate.getter();
    v102 = v101;
    v103 = *(v49 + 1);
    v103(v92, v58);
    v103(v89, v58);
    v103(v44, v58);
    outlined destroy of Date?(v90, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v278 = 0;
    v104 = v100 - v102;
  }

  v106 = [v288 dateInterval];
  v107 = v286;
  if (v106)
  {
    v108 = v106;
    static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

    v109 = 0;
  }

  else
  {
    v109 = 1;
  }

  (v294)(v107, v109, 1, v79);
  v110 = v107;
  v111 = v287;
  outlined init with take of DateInterval?(v110, v287, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  if ((v285)(v111, 1, v79))
  {
    outlined destroy of Date?(v111, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    v301 = MEMORY[0x277D83B88];
    *&v300 = -1;
  }

  else
  {
    DateInterval.duration.getter();
    v299 = MEMORY[0x277D839F8];
    *&v298 = v112;
    outlined destroy of Date?(v111, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    outlined init with take of Any(&v298, &v300);
  }

  outlined init with take of Any(&v300, &v298);
  v113 = v302;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v297 = v113;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v298, 0x617275446C6C6163, 0xEC0000006E6F6974, isUniquelyReferenced_nonNull_native);
  v115 = v297;
  v302 = v297;
  v116 = [v296 parametersByName];
  v117 = MEMORY[0x277D837D0];
  if (v116)
  {
    v118 = v116;
    v119 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v119 + 16))
    {
      v120 = specialized __RawDictionaryStorage.find<A>(_:)(0x756F526F69647561, 0xEA00000000006574);
      if (v121)
      {
        outlined init with copy of Any(*(v119 + 56) + 32 * v120, &v298);

        outlined init with take of Any(&v298, &v300);
        goto LABEL_36;
      }
    }
  }

  v301 = v117;
  *&v300 = 0;
  *(&v300 + 1) = 0xE000000000000000;
LABEL_36:
  outlined init with take of Any(&v300, &v298);
  v122 = swift_isUniquelyReferenced_nonNull_native();
  v297 = v115;
  v123 = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v298, 0x756F526F69647561, 0xEA00000000006574, v122);
  v124 = v297;
  v125 = (*(*v295 + 128))(v123);
  v126 = MEMORY[0x277D839B0];
  v301 = MEMORY[0x277D839B0];
  LOBYTE(v300) = v125 != 0;
  outlined init with take of Any(&v300, &v298);
  v127 = swift_isUniquelyReferenced_nonNull_native();
  v297 = v124;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v298, 0x42646574616E6F64, 0xED00006972695379, v127);
  v128 = v297;
  v129 = [v296 typeName];
  v130 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v132 = v131;

  v301 = v117;
  *&v300 = v130;
  *(&v300 + 1) = v132;
  outlined init with take of Any(&v300, &v298);
  v133 = swift_isUniquelyReferenced_nonNull_native();
  v297 = v128;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v298, 0x7954746E65746E69, 0xEE00656D614E6570, v133);
  v302 = v297;
  v134 = [v281 bundleID];
  if (v134)
  {
    v135 = v134;
    v136 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v138 = v137;
  }

  else
  {
    v136 = 0;
    v138 = 0xE000000000000000;
  }

  *&v300 = v136;
  *(&v300 + 1) = v138;
  *&v298 = 0x6C7070612E6D6F63;
  *(&v298 + 1) = 0xEA00000000002E65;
  lazy protocol witness table accessor for type String and conformance String();
  v139 = StringProtocol.contains<A>(_:)();

  v301 = v126;
  LOBYTE(v300) = v139 & 1;
  outlined init with take of Any(&v300, &v298);
  v140 = v302;
  v141 = swift_isUniquelyReferenced_nonNull_native();
  v297 = v140;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v298, 0xD000000000000016, 0x800000025ED7E770, v141);
  v142 = v297;
  v302 = v297;
  (*(*v295 + 136))(0);
  v143 = [v296 donationMetadata];
  if (v143)
  {
    v144 = v143;
    objc_opt_self();
    v145 = swift_dynamicCastObjCClass();
    if (v145)
    {
      v146 = v145;
      [v145 callDuration];
      v147 = MEMORY[0x277D839F8];
      v301 = MEMORY[0x277D839F8];
      *&v300 = v148;
      outlined init with take of Any(&v300, &v298);
      v149 = swift_isUniquelyReferenced_nonNull_native();
      v297 = v142;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v298, 0x617275446C6C6163, 0xEC0000006E6F6974, v149);
      v150 = v297;
      [v146 timeToEstablish];
      v301 = v147;
      *&v300 = v151;
      outlined init with take of Any(&v300, &v298);
      v152 = swift_isUniquelyReferenced_nonNull_native();
      v297 = v150;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v298, 0xD000000000000018, 0x800000025ED7F380, v152);
      v153 = v297;
      v302 = v297;
      v154 = [v146 recentCallStatus];
      if (v154)
      {
        v155 = v154;
        v299 = type metadata accessor for NSNumber();
        *&v298 = v155;
        outlined init with take of Any(&v298, &v300);
      }

      else
      {
        v301 = MEMORY[0x277D83B88];
        *&v300 = 0;
      }

      outlined init with take of Any(&v300, &v298);
      v156 = swift_isUniquelyReferenced_nonNull_native();
      v297 = v153;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v298, 0xD000000000000010, 0x800000025ED7F3A0, v156);
      v157 = v297;
      v158 = [v146 disconnectedReason];
      if (v158)
      {
        v159 = v158;
        v299 = type metadata accessor for NSNumber();
        *&v298 = v159;
        outlined init with take of Any(&v298, &v300);
      }

      else
      {
        v301 = MEMORY[0x277D83B88];
        *&v300 = 0;
      }

      outlined init with take of Any(&v300, &v298);
      v160 = swift_isUniquelyReferenced_nonNull_native();
      v297 = v157;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v298, 0xD000000000000012, 0x800000025ED7F3C0, v160);

      v142 = v297;
      v302 = v297;
    }

    else
    {
    }
  }

  v161 = [v296 parametersByName];
  if (!v161)
  {
    goto LABEL_105;
  }

  v162 = v161;
  v163 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v163 + 16))
  {
    goto LABEL_104;
  }

  v164 = specialized __RawDictionaryStorage.find<A>(_:)(0x73746361746E6F63, 0xE800000000000000);
  if ((v165 & 1) == 0)
  {
    goto LABEL_104;
  }

  outlined init with copy of Any(*(v163 + 56) + 32 * v164, &v300);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
  if (swift_dynamicCast())
  {
    v166 = v298;
    if (v298 >> 62)
    {
      if (v298 < 0)
      {
        v272 = v298;
      }

      else
      {
        v272 = v298 & 0xFFFFFFFFFFFFFF8;
      }

      v167 = MEMORY[0x25F8CE500](v272);
      if (v167)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v167 = *((v298 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v167)
      {
LABEL_55:
        if (v167 < 1)
        {
          __break(1u);
          return;
        }

        v168 = 0;
        v279 = v166 & 0xC000000000000001;
        v169 = MEMORY[0x277D84F90];
        v294 = MEMORY[0x277D84F90];
        v170 = MEMORY[0x277D84F90];
        v171 = MEMORY[0x277D84F90];
        v172 = MEMORY[0x277D84F90];
        v282 = v166;
        v281 = v167;
        while (1)
        {
          if (v279)
          {
            v173 = MEMORY[0x25F8CE460](v168, v166);
          }

          else
          {
            v173 = *&v166[8 * v168 + 32];
          }

          v174 = v173;
          v175 = [v173 personHandle];
          if (v175 && (v176 = v175, v177 = [v175 value], v176, v177))
          {
            v178 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v180 = v179;
          }

          else
          {
            v178 = 0;
            v180 = 0xE000000000000000;
          }

          v181 = swift_isUniquelyReferenced_nonNull_native();
          *&v295 = v174;
          if ((v181 & 1) == 0)
          {
            v171 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v171 + 2) + 1, 1, v171);
          }

          v183 = *(v171 + 2);
          v182 = *(v171 + 3);
          v284 = v168;
          if (v183 >= v182 >> 1)
          {
            v171 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v182 > 1), v183 + 1, 1, v171);
          }

          *(v171 + 2) = v183 + 1;
          v184 = &v171[16 * v183];
          *(v184 + 4) = v178;
          *(v184 + 5) = v180;
          v185 = v295;
          v186 = [v295 displayName];
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v187 = specialized static PSEPhoneticEmbedder.normalizedString(from:)();
          v189 = v188;

          v190 = swift_isUniquelyReferenced_nonNull_native();
          v285 = v171;
          if ((v190 & 1) == 0)
          {
            v170 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v170 + 2) + 1, 1, v170);
          }

          v191 = v292;
          v193 = *(v170 + 2);
          v192 = *(v170 + 3);
          if (v193 >= v192 >> 1)
          {
            v170 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v192 > 1), v193 + 1, 1, v170);
          }

          *(v170 + 2) = v193 + 1;
          v194 = &v170[16 * v193];
          *(v194 + 4) = v187;
          *(v194 + 5) = v189;
          v195 = [v185 nameComponents];
          v293 = v170;
          v287 = v172;
          v286 = v169;
          if (v195)
          {
            v196 = v289;
            v197 = v195;
            static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

            v198 = 0;
          }

          else
          {
            v198 = 1;
            v196 = v289;
          }

          v199 = type metadata accessor for PersonNameComponents();
          v200 = *(v199 - 8);
          v283 = *(v200 + 56);
          (v283)(v196, v198, 1, v199);
          outlined init with take of DateInterval?(v196, v191, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
          v201 = *(v200 + 48);
          if (v201(v191, 1, v199))
          {
            break;
          }

          PersonNameComponents.givenName.getter();
          v203 = v202;
          outlined destroy of Date?(v191, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
          if (!v203)
          {
            goto LABEL_77;
          }

LABEL_79:
          v204 = specialized static PSEPhoneticEmbedder.normalizedString(from:)();
          v206 = v205;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v294 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v294 + 2) + 1, 1, v294);
          }

          v208 = *(v294 + 2);
          v207 = *(v294 + 3);
          if (v208 >= v207 >> 1)
          {
            v294 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v207 > 1), v208 + 1, 1, v294);
          }

          v210 = v294;
          v209 = v295;
          *(v294 + 2) = v208 + 1;
          v211 = &v210[16 * v208];
          *(v211 + 4) = v204;
          *(v211 + 5) = v206;
          v212 = [v209 nameComponents];
          if (v212)
          {
            v213 = v291;
            v214 = v212;
            static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

            v215 = 0;
          }

          else
          {
            v215 = 1;
            v213 = v291;
          }

          v216 = v290;
          (v283)(v213, v215, 1, v199);
          outlined init with take of DateInterval?(v213, v216, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
          if (v201(v216, 1, v199))
          {
            outlined destroy of Date?(v216, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
            v170 = v293;
            v172 = v287;
            v169 = v286;
          }

          else
          {
            PersonNameComponents.familyName.getter();
            v218 = v217;
            outlined destroy of Date?(v216, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
            v170 = v293;
            v172 = v287;
            v169 = v286;
            if (v218)
            {
              goto LABEL_90;
            }
          }

LABEL_90:
          v219 = specialized static PSEPhoneticEmbedder.normalizedString(from:)();
          v221 = v220;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v169 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v169 + 2) + 1, 1, v169);
          }

          v223 = *(v169 + 2);
          v222 = *(v169 + 3);
          if (v223 >= v222 >> 1)
          {
            v169 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v222 > 1), v223 + 1, 1, v169);
          }

          *(v169 + 2) = v223 + 1;
          v224 = &v169[16 * v223];
          *(v224 + 4) = v219;
          *(v224 + 5) = v221;
          v225 = [v295 personHandle];
          if (v225)
          {
            v226 = v225;
            v227 = [v225 label];

            v166 = v282;
            if (v227)
            {
              static String._unconditionallyBridgeFromObjectiveC(_:)();
            }
          }

          else
          {
            v166 = v282;
          }

          v228 = specialized static PSEPhoneticEmbedder.normalizedString(from:)();
          v230 = v229;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v172 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v172 + 2) + 1, 1, v172);
          }

          v231 = v284;
          v233 = *(v172 + 2);
          v232 = *(v172 + 3);
          if (v233 >= v232 >> 1)
          {
            v172 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v232 > 1), v233 + 1, 1, v172);
          }

          v168 = v231 + 1;

          *(v172 + 2) = v233 + 1;
          v234 = &v172[16 * v233];
          *(v234 + 4) = v228;
          *(v234 + 5) = v230;
          v171 = v285;
          if (v281 == v168)
          {
            v271 = v169;

            v142 = v302;
            goto LABEL_106;
          }
        }

        outlined destroy of Date?(v191, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
LABEL_77:

        goto LABEL_79;
      }
    }

LABEL_104:
  }

LABEL_105:
  v172 = MEMORY[0x277D84F90];
  v294 = MEMORY[0x277D84F90];
  v170 = MEMORY[0x277D84F90];
  v171 = MEMORY[0x277D84F90];
  v271 = MEMORY[0x277D84F90];
LABEL_106:
  v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  v301 = v235;
  *&v300 = v171;
  outlined init with take of Any(&v300, &v298);
  v236 = swift_isUniquelyReferenced_nonNull_native();
  v297 = v142;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v298, 0x73746361746E6F63, 0xED000065756C6156, v236);
  v237 = v297;
  v301 = v235;
  v302 = v297;
  *&v300 = v170;
  outlined init with take of Any(&v300, &v298);

  v238 = swift_isUniquelyReferenced_nonNull_native();
  v297 = v237;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v298, 0xD000000000000013, 0x800000025ED7F320, v238);
  v239 = v297;
  if (!*(v170 + 2))
  {
    v301 = MEMORY[0x277D837D0];
LABEL_110:
    v241 = 0;
    v242 = 0xE000000000000000;
    goto LABEL_111;
  }

  v241 = *(v170 + 4);
  v240 = *(v170 + 5);
  v301 = MEMORY[0x277D837D0];

  if (!v242)
  {
    goto LABEL_110;
  }

LABEL_111:
  *&v300 = v241;
  *(&v300 + 1) = v242;
  outlined init with take of Any(&v300, &v298);
  v243 = swift_isUniquelyReferenced_nonNull_native();
  v297 = v239;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v298, 0x4E79616C70736964, 0xEB00000000656D61, v243);
  v244 = v297;
  v301 = v235;
  *&v300 = v294;
  outlined init with take of Any(&v300, &v298);
  v245 = swift_isUniquelyReferenced_nonNull_native();
  v297 = v244;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v298, 0xD000000000000011, 0x800000025ED7F340, v245);
  v246 = v297;
  v301 = v235;
  *&v300 = v271;
  outlined init with take of Any(&v300, &v298);
  v247 = swift_isUniquelyReferenced_nonNull_native();
  v297 = v246;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v298, 0xD000000000000010, 0x800000025ED7F360, v247);
  v302 = v297;
  if (*(v172 + 2))
  {
    v248 = *(v172 + 4);
    v249 = *(v172 + 5);

    *&v300 = 46;
    *(&v300 + 1) = 0xE100000000000000;
    MEMORY[0x28223BE20](v250);
    *(&v273 - 2) = &v300;
    v251 = specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)(0x7FFFFFFFFFFFFFFFLL, 1, partial apply for specialized closure #1 in Sequence<>.contains(_:), (&v273 - 4), v248, v249, &v273);
    v252 = *(v251 + 16);
    if (v252)
    {
      v253 = v251 + 32 * v252;
      v295 = *v253;
      v255 = *(v253 + 16);
      v254 = *(v253 + 24);

      v299 = MEMORY[0x277D83E40];
      v256 = swift_allocObject();
      *&v298 = v256;
      *(v256 + 16) = v295;
      *(v256 + 32) = v255;
      *(v256 + 40) = v254;
      outlined init with take of Any(&v298, &v300);
    }

    else
    {

      v301 = MEMORY[0x277D837D0];
      *&v300 = 0;
      *(&v300 + 1) = 0xE000000000000000;
    }

    if (v301)
    {
      outlined init with take of Any(&v300, &v298);
      v257 = v302;
      v258 = swift_isUniquelyReferenced_nonNull_native();
      v297 = v257;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v298, 0x6C6562616CLL, 0xE500000000000000, v258);
      v302 = v297;
    }

    else
    {
      outlined destroy of Date?(&v300, &_sypSgMd, &_sypSgMR);
      specialized Dictionary._Variant.removeValue(forKey:)(0x6C6562616CLL, 0xE500000000000000, &v298);
      outlined destroy of Date?(&v298, &_sypSgMd, &_sypSgMR);
    }
  }

  else
  {
  }

  v259 = [v296 verb];
  v260 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v262 = v261;

  if ([v288 direction] == 2)
  {

    v262 = 0xEA00000000006C6CLL;
    v260 = 0x6143726577736E41;
  }

  v263 = v277 != 1;
  v264 = v296;
  v265 = [v296 domain];
  v266 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v268 = v267;

  v269 = v302;
  type metadata accessor for Signal();
  v270 = swift_allocObject();
  *(v270 + 16) = v94;
  *(v270 + 24) = v98;
  *(v270 + 32) = v104;
  *(v270 + 40) = v84;
  *(v270 + 48) = v278;
  *(v270 + 56) = v263;
  *(v270 + 64) = v266;
  *(v270 + 72) = v268;
  *(v270 + 80) = v260;
  *(v270 + 88) = v262;
  *(v270 + 96) = 1;
  *(v270 + 104) = v269;
}

unint64_t specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = String.subscript.getter();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = String.subscript.getter();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = String.index(after:)();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = String.index(after:)();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = String.subscript.getter();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = String.subscript.getter();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = String.index(after:)();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    outlined init with take of Any((*(v12 + 56) + 32 * v9), a3);
    specialized _NativeDictionary._delete(at:)(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = type metadata accessor for Date();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a3, v14 + *(v22 + 72) * v9, v15);
    specialized _NativeDictionary._delete(at:)(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for Date();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t PSEBiomeDonator.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = [BiomeLibrary() Siri];
  swift_unknownObjectRelease();
  v2 = [v1 PostSiriEngagement];
  swift_unknownObjectRelease();
  v3 = [v2 source];

  *(v0 + 16) = v3;
  return v0;
}

uint64_t PSEBiomeDonator.init()()
{
  v1 = [BiomeLibrary() Siri];
  swift_unknownObjectRelease();
  v2 = [v1 PostSiriEngagement];
  swift_unknownObjectRelease();
  v3 = [v2 source];

  *(v0 + 16) = v3;
  return v0;
}

void PSEBiomeDonator.donatePSESignals(signals:siriTask:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a2)
  {
    v5 = v2[2];
    if (v5)
    {
      v6 = a1;
      v7 = *(*a2 + 304);
      v78 = v5;
      v82[0] = v7();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A]();
      v8 = BidirectionalCollection<>.joined(separator:)();
      v10 = v9;

      v82[0] = (*(*a2 + 256))(v11);
      v12 = BidirectionalCollection<>.joined(separator:)();
      v14 = v13;

      v16 = (*(*a2 + 328))(v15);
LABEL_8:
      v79 = (*(*v3 + 104))(v16);

      (*(*v3 + 112))(v6);
      if (a2)
      {
        v72 = (*(*a2 + 160))();
        v19 = v18;
        v71 = (*(*a2 + 184))();
        v69 = v20;
        v70 = (*(*a2 + 280))();
        if (v10)
        {
          v22 = v8;
        }

        else
        {
          v22 = 0;
        }

        v23 = 0xE000000000000000;
        if (v10)
        {
          v24 = v10;
        }

        else
        {
          v24 = 0xE000000000000000;
        }

        if (v14)
        {
          v25 = v12;
        }

        else
        {
          v25 = 0;
        }

        v76 = v25;
        if (v14)
        {
          v23 = v14;
        }

        v67 = v21;
        v68 = v23;
        (*(*a2 + 232))();
        v26 = ((*(*a2 + 208))() + 16);
        v74 = v22;
        if (*v26)
        {
          v27 = &v26[2 * *v26];
          v73 = *v27;
          v75 = v27[1];
        }

        else
        {

          v73 = 0;
          v75 = 0;
        }

        v38 = v71;
        v39 = v72;
        v41 = v69;
        v35 = v70;
        v42 = v67;
        v40 = v68;
      }

      else
      {
        v35 = 0;
        if (v10)
        {
          v36 = v8;
        }

        else
        {
          v36 = 0;
        }

        v73 = 0;
        v74 = v36;
        v19 = 0xE000000000000000;
        if (v10)
        {
          v24 = v10;
        }

        else
        {
          v24 = 0xE000000000000000;
        }

        if (v14)
        {
          v37 = v12;
        }

        else
        {
          v37 = 0;
        }

        v75 = 0;
        v76 = v37;
        v38 = 0;
        v39 = 0;
        if (v14)
        {
          v40 = v14;
        }

        else
        {
          v40 = 0xE000000000000000;
        }

        v41 = 0xE000000000000000;
        v42 = 0xE000000000000000;
      }

      v81 = v79;
      v43 = MEMORY[0x25F8CDFC0](v39, v19);

      v44 = MEMORY[0x25F8CDFC0](v38, v41);

      v45 = MEMORY[0x25F8CDFC0](v35, v42);

      v46 = MEMORY[0x25F8CDFC0](v74, v24);

      v47 = MEMORY[0x25F8CDFC0](v76, v40);

      v48.super.isa = Array._bridgeToObjectiveC()().super.isa;

      type metadata accessor for BMSiriPostSiriEngagementSignal(0, &lazy cache variable for type metadata for BMSiriPostSiriEngagementSignal, 0x277CF1550);
      v49.super.isa = Array._bridgeToObjectiveC()().super.isa;

      if (v75)
      {
        v50 = MEMORY[0x25F8CDFC0](v73, v75);
      }

      else
      {
        v50 = 0;
      }

      v77 = [objc_allocWithZone(MEMORY[0x277CF1540]) initWithUISessionID:v43 taskID:v44 taskType:v45 conversationPath:v46 appPattern:v47 requestIds:v48.super.isa engagementUnderstandingFeatures:v81 pseEvents:v49.super.isa clientSessionId:0 lastRequestId:v50 executionUUID:0];

      if (one-time initialization token for engagement != -1)
      {
        swift_once();
      }

      v51 = type metadata accessor for Logger();
      __swift_project_value_buffer(v51, static Logger.engagement);

      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v82[0] = v55;
        *v54 = 136315138;
        if (a2)
        {
          v56 = (*(*a2 + 160))();
          v58 = v57;
        }

        else
        {
          v56 = 0;
          v58 = 0xE000000000000000;
        }

        v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v58, v82);

        *(v54 + 4) = v59;
        _os_log_impl(&dword_25ECEC000, v52, v53, "Biome donation of PSE signals with SiriExecutionTask within a UISession: %s", v54, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v55);
        MEMORY[0x25F8CEE50](v55, -1, -1);
        MEMORY[0x25F8CEE50](v54, -1, -1);
      }

      [v78 sendEvent_];
      return;
    }

LABEL_22:
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Logger.engagement);

    v80 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v80, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v82[0] = v31;
      *v30 = 136315138;
      if (a2)
      {
        v32 = (*(*a2 + 160))();
        v34 = v33;
      }

      else
      {
        v32 = 0;
        v34 = 0xE000000000000000;
      }

      v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, v82);

      *(v30 + 4) = v60;
      _os_log_impl(&dword_25ECEC000, v80, v29, "nil biomePSESource, unable to donate PSE signals with SiriExecutionTask within a UISession:  %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x25F8CEE50](v31, -1, -1);
      MEMORY[0x25F8CEE50](v30, -1, -1);

      return;
    }

    goto LABEL_62;
  }

  if (a1 >> 62)
  {
    v61 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v61 = a1;
    }

    v62 = a1;
    v63 = MEMORY[0x25F8CE500](v61);
    a1 = v62;
    if (v63 >= 1)
    {
LABEL_6:
      v17 = v3[2];
      if (v17)
      {
        v6 = a1;
        v78 = v17;
        v16 = 0;
        v12 = 0;
        v14 = 0;
        v8 = 0;
        v10 = 0;
        goto LABEL_8;
      }

      goto LABEL_22;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
    goto LABEL_6;
  }

  if (one-time initialization token for engagement != -1)
  {
    swift_once();
  }

  v64 = type metadata accessor for Logger();
  __swift_project_value_buffer(v64, static Logger.engagement);
  v80 = Logger.logObject.getter();
  v65 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v80, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 0;
    _os_log_impl(&dword_25ECEC000, v80, v65, "both SiriExecutionTask and PSE signals are nil, nothing to donate to Biome", v66, 2u);
    MEMORY[0x25F8CEE50](v66, -1, -1);
  }

LABEL_62:
}

id PSEBiomeDonator.createEngagementUnderstandingFeatures(engagementFeatures:)(uint64_t a1)
{
  if (a1)
  {
    v3 = (*(*a1 + 104))(a1);
  }

  else
  {
    v3 = 5;
  }

  v4 = (*(*v1 + 120))(v3);
  if (a1)
  {
    (*(*a1 + 184))();
    v5.super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;
    (*(*a1 + 192))();
    v6.super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;
    (*(*a1 + 200))();
    v7.super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;
    (*(*a1 + 208))();
    v8.super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;
    (*(*a1 + 216))();
    v9.super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;
    (*(*a1 + 224))();
    v10.super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;
    (*(*a1 + 232))();
    v11.super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;
  }

  else
  {
    v11.super.super.isa = 0;
    v10.super.super.isa = 0;
    v9.super.super.isa = 0;
    v8.super.super.isa = 0;
    v7.super.super.isa = 0;
    v6.super.super.isa = 0;
    v5.super.super.isa = 0;
  }

  v12 = [objc_allocWithZone(MEMORY[0x277CF1548]) initWithTaskSuccess:v4 isUserAbandoned:v5.super.super.isa isUserCancelled:v6.super.super.isa isSiriCompleted:v7.super.super.isa isPromptInteraction:v8.super.super.isa isConfirmInteraction:v9.super.super.isa isDisambiguateInteraction:v10.super.super.isa isUnsupportedPromptInteraction:v11.super.super.isa];

  return v12;
}

uint64_t PSEBiomeDonator.createBiomePSESignal(signals:)(uint64_t a1)
{
  v75 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_70;
  }

  v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = 0;
    v62 = a1 + 32;
    v63 = a1 & 0xFFFFFFFFFFFFFF8;
    v67 = a1 & 0xC000000000000001;
    v64 = a1;
    v66 = v1;
    while (1)
    {
      if (v67)
      {
        a1 = MEMORY[0x25F8CE460](v3, v64);
        v4 = a1;
        v5 = __OFADD__(v3++, 1);
        if (v5)
        {
          goto LABEL_68;
        }
      }

      else
      {
        if (v3 >= *(v63 + 16))
        {
          goto LABEL_69;
        }

        v4 = *(v62 + 8 * v3);

        v5 = __OFADD__(v3++, 1);
        if (v5)
        {
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          v60 = a1;
          if (a1 >= 0)
          {
            a1 &= 0xFFFFFFFFFFFFFF8uLL;
          }

          v1 = MEMORY[0x25F8CE500](a1);
          a1 = v60;
          goto LABEL_3;
        }
      }

      v6 = *(*v4 + 120);
      v7 = v6(&v73);
      v8 = MEMORY[0x25F8CE240](v7, v74);
      v9 = v6(v72);
      v10 = MEMORY[0x25F8CE240](v9, *(v72 + 1));
      v69 = v6;
      v11 = v6(v71);
      v12 = MEMORY[0x25F8CE240](v11, *&v71[2]);
      v68 = [objc_allocWithZone(MEMORY[0x277CF1560]) initWithDuration:v8 sinceUIEnd:v10 sinceUIStart:v12];

      v71[0] = v2;
      v65 = *(*v4 + 216);
      a1 = v65();
      v13 = a1;
      v14 = 0;
      v15 = a1 + 64;
      v16 = 1 << *(a1 + 32);
      if (v16 < 64)
      {
        v17 = ~(-1 << v16);
      }

      else
      {
        v17 = -1;
      }

      v18 = v17 & *(a1 + 64);
      v19 = (v16 + 63) >> 6;
      while (v18)
      {
LABEL_20:
        v21 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
        v22 = (*(v13 + 48) + ((v14 << 10) | (16 * v21)));
        v23 = *v22;
        v24 = v22[1];
        if (*v22 != 0x73746361746E6F63 || v24 != 0xED000065756C6156)
        {
          a1 = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((a1 & 1) == 0 && (v23 != 0xD000000000000013 || 0x800000025ED7F320 != v24))
          {
            a1 = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((a1 & 1) == 0 && (v23 != 0xD000000000000011 || 0x800000025ED7F340 != v24))
            {
              a1 = _stringCompareWithSmolCheck(_:_:expecting:)();
              if ((a1 & 1) == 0 && (v23 != 0xD000000000000010 || 0x800000025ED7F360 != v24))
              {
                a1 = _stringCompareWithSmolCheck(_:_:expecting:)();
                if ((a1 & 1) == 0 && (v23 != 0xD000000000000018 || 0x800000025ED7FAD0 != v24))
                {
                  a1 = _stringCompareWithSmolCheck(_:_:expecting:)();
                  v28 = v23 == 0xD000000000000018 && 0x800000025ED7FAF0 == v24;
                  v29 = v28;
                  if ((a1 & 1) == 0 && !v29)
                  {
                    a1 = _stringCompareWithSmolCheck(_:_:expecting:)();
                    if ((a1 & 1) == 0 && (v23 != 0x7265755172657375 || v24 != 0xE900000000000079))
                    {
                      a1 = _stringCompareWithSmolCheck(_:_:expecting:)();
                      if ((a1 & 1) == 0 && (v23 != 0x6169726574697263 || v24 != 0xE800000000000000))
                      {
                        a1 = _stringCompareWithSmolCheck(_:_:expecting:)();
                        if ((a1 & 1) == 0)
                        {

                          v31 = (v65)(v30);
                          if (*(v31 + 16) && (v32 = specialized __RawDictionaryStorage.find<A>(_:)(v23, v24), (v33 & 1) != 0))
                          {
                            outlined init with copy of Any(*(v31 + 56) + 32 * v32, v72);

                            outlined init with take of Any(v72, &v73);
                          }

                          else
                          {

                            v74 = MEMORY[0x277D837D0];
                            *&v73 = 0;
                            *(&v73 + 1) = 0xE000000000000000;
                          }

                          outlined init with copy of Any(&v73, v72);
                          v61 = String.init<A>(describing:)();
                          v35 = v34;
                          v70 = objc_allocWithZone(MEMORY[0x277CF1558]);
                          v36 = MEMORY[0x25F8CDFC0](v23, v24);

                          v37 = MEMORY[0x25F8CDFC0](v61, v35);

                          v38 = [v70 initWithKey:v36 value:v37];

                          v39 = v38;
                          MEMORY[0x25F8CE160]();
                          if (*((v71[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v71[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                          {
                            v40 = *((v71[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
                            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                          }

                          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

                          a1 = __swift_destroy_boxed_opaque_existential_0(&v73);
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

      while (1)
      {
        v20 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          __break(1u);
          goto LABEL_68;
        }

        if (v20 >= v19)
        {
          break;
        }

        v18 = *(v15 + 8 * v20);
        ++v14;
        if (v18)
        {
          v14 = v20;
          goto LABEL_20;
        }
      }

      v42 = (*(*v4 + 144))(v41);
      v44 = v43;
      v45 = (*(*v4 + 168))();
      v47 = v46;
      (*(*v4 + 192))();
      isa = Bool._bridgeToObjectiveC()().super.super.isa;
      v49 = v68;
      v50 = v69(&v73);
      v51 = MEMORY[0x25F8CE240](v50, *&v73);
      v52 = objc_allocWithZone(MEMORY[0x277CF1550]);
      v53 = MEMORY[0x25F8CDFC0](v42, v44);

      v54 = MEMORY[0x25F8CDFC0](v45, v47);

      type metadata accessor for BMSiriPostSiriEngagementSignal(0, &lazy cache variable for type metadata for BMSiriPostSiriEngagementSignalContent, 0x277CF1558);
      v55 = Array._bridgeToObjectiveC()().super.isa;

      v56 = [v52 initWithDomain:v53 action:v54 isPostSiriEngagement:isa pseDelta:v49 pseContents:v55 donatedTimestamp:v51];

      v57 = v56;
      MEMORY[0x25F8CE160]();
      if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v58 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v2 = MEMORY[0x277D84F90];
      if (v3 == v66)
      {
        return v75;
      }
    }
  }

  return v2;
}

uint64_t PSEBiomeDonator.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

unint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance [A]);
  }

  return result;
}

uint64_t type metadata accessor for BMSiriPostSiriEngagementSignal(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void MessagesIntentSignalFactory.convertBmEventToSignal(bmEvent:siriUISession:)(void *a1, uint64_t a2)
{
  v277 = a2;
  v274 = type metadata accessor for Date();
  v272 = *(v274 - 8);
  v3 = *(v272 + 64);
  v4 = MEMORY[0x28223BE20](v274);
  v275 = &v251 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v270 = &v251 - v7;
  MEMORY[0x28223BE20](v6);
  v271 = &v251 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v267 = &v251 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v268 = &v251 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v269 = &v251 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v273 = &v251 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = &v251 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v251 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v251 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v251 - v30;
  v32 = type metadata accessor for ReliabilityCategory();
  v33 = *(v32 - 1);
  v34 = v33[8];
  v35 = MEMORY[0x28223BE20](v32);
  v37 = &v251 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x25F8CE7F0](v35);
  v39 = v276;
  closure #1 in static Utils.extractInteraction(fromAppIntentEvent:)(a1, v279, &v280);
  if (v39)
  {
    objc_autoreleasePoolPop(v38);
    return;
  }

  v256 = v37;
  v262 = v33;
  v263 = v32;
  v257 = v31;
  v258 = v29;
  v259 = v26;
  v260 = v23;
  v265 = a1;
  v261 = 0;
  objc_autoreleasePoolPop(v38);
  v264 = v280;
  v276 = [v280 intent];
  v40 = [v276 domain];
  v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v42;

  if (v41 == 0x736567617373654DLL && v43 == 0xE800000000000000)
  {

    v44 = v265;
  }

  else
  {
    v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v44 = v265;
    if ((v45 & 1) == 0)
    {
      if (one-time initialization token for engagement != -1)
      {
        swift_once();
      }

      v65 = type metadata accessor for Logger();
      __swift_project_value_buffer(v65, static Logger.engagement);
      *&v280 = 0;
      *(&v280 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(59);
      MEMORY[0x25F8CE090](0xD000000000000012, 0x800000025ED7F2D0);
      v66 = [v276 domain];
      v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v69 = v68;

      MEMORY[0x25F8CE090](v67, v69);

      MEMORY[0x25F8CE090](0xD000000000000027, 0x800000025ED7FB50);
      v70 = v280;
      v71 = *MEMORY[0x277D616E0];
      v72 = type metadata accessor for AppIntentEventDataIssues();
      v73 = v256;
      (*(*(v72 - 8) + 104))(v256, v71, v72);
      v74 = v262;
      v75 = v263;
      (v262)[13](v73, *MEMORY[0x277D61678], v263);

      v76 = Logger.logObject.getter();
      v77 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        *&v280 = v79;
        *v78 = 136315138;
        *(v78 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, *(&v70 + 1), &v280);
        _os_log_impl(&dword_25ECEC000, v76, v77, "%s", v78, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v79);
        MEMORY[0x25F8CEE50](v79, -1, -1);
        MEMORY[0x25F8CEE50](v78, -1, -1);
      }

      type metadata accessor for SiriTaskEngagementUtils();
      v80 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
      MEMORY[0x25F8CDB30](v73, v80, v81);

      (v74[1])(v73, v75);
      return;
    }
  }

  if ([v44 interactionDirection] != 2)
  {
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v61 = type metadata accessor for Logger();
    __swift_project_value_buffer(v61, static Logger.engagement);
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_25ECEC000, v62, v63, "Drop received Messages Intents.", v64, 2u);
      MEMORY[0x25F8CEE50](v64, -1, -1);
    }

    return;
  }

  v46 = [v44 donatedBySiri];
  v47 = MEMORY[0x277D839B0];
  v281 = MEMORY[0x277D839B0];
  LOBYTE(v280) = v46;
  outlined init with take of Any(&v280, v279);
  v48 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v282 = v48;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v279, 0x42646574616E6F64, 0xED00006972695379, isUniquelyReferenced_nonNull_native);
  v50 = v282;
  v51 = [v276 typeName];
  v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v54 = v53;

  v281 = MEMORY[0x277D837D0];
  *&v280 = v52;
  *(&v280 + 1) = v54;
  outlined init with take of Any(&v280, v279);
  v55 = swift_isUniquelyReferenced_nonNull_native();
  v278 = v50;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v279, 0x7954746E65746E69, 0xEE00656D614E6570, v55);
  v282 = v278;
  v56 = [v44 bundleID];
  if (v56)
  {
    v57 = v56;
    v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v60 = v59;
  }

  else
  {
    v58 = 0;
    v60 = 0xE000000000000000;
  }

  *&v280 = v58;
  *(&v280 + 1) = v60;
  *&v279[0] = 0x6C7070612E6D6F63;
  *(&v279[0] + 1) = 0xEA00000000002E65;
  lazy protocol witness table accessor for type String and conformance String();
  v82 = MEMORY[0x277D837D0];
  v83 = StringProtocol.contains<A>(_:)();

  v281 = v47;
  LOBYTE(v280) = v83 & 1;
  outlined init with take of Any(&v280, v279);
  v84 = v282;
  v85 = swift_isUniquelyReferenced_nonNull_native();
  v278 = v84;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v279, 0xD000000000000016, 0x800000025ED7E770, v85);
  v86 = v278;
  v87 = [v265 interactionDirection];
  type metadata accessor for BMAppIntentInteractionDirection(0);
  v281 = v88;
  LODWORD(v280) = v87;
  outlined init with take of Any(&v280, v279);
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v278 = v86;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v279, 0xD000000000000014, 0x800000025ED7FB80, v89);
  v90 = v278;
  v282 = v278;
  v91 = [v264 intentResponse];
  v92 = v277;
  if (!v91)
  {
    goto LABEL_44;
  }

  v93 = v91;
  v94 = [v91 _intentResponseCode];
  v95 = (*(*v266 + 104))(v94);
  v281 = v82;
  *&v280 = v95;
  *(&v280 + 1) = v96;
  outlined init with take of Any(&v280, v279);
  v97 = swift_isUniquelyReferenced_nonNull_native();
  v278 = v90;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v279, 0xD000000000000012, 0x800000025ED7FBC0, v97);
  v282 = v278;
  objc_opt_self();
  v98 = swift_dynamicCastObjCClass();
  if (v98)
  {
    v99 = [v98 sentMessages];
    if (v99)
    {
      v100 = v99;
      type metadata accessor for INMessage();
      v101 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v101 >> 62)
      {
        if (v101 < 0)
        {
          v120 = v101;
        }

        else
        {
          v120 = v101 & 0xFFFFFFFFFFFFFF8;
        }

        if (MEMORY[0x25F8CE500](v120))
        {
          v266 = MEMORY[0x25F8CE500](v120);
          if (!v266)
          {
            v263 = v93;

            v105 = MEMORY[0x277D84F90];
LABEL_36:
            v281 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
            *&v280 = v105;
            outlined init with take of Any(&v280, v279);
            v118 = v282;
            v119 = swift_isUniquelyReferenced_nonNull_native();
            v278 = v118;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v279, 0xD000000000000018, 0x800000025ED7FAD0, v119);

            v282 = v278;
            goto LABEL_44;
          }

LABEL_26:
          v263 = v93;
          *&v279[0] = MEMORY[0x277D84F90];
          v102 = v266;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v102 & ~(v102 >> 63), 0);
          if (v102 < 0)
          {
            __break(1u);
            goto LABEL_115;
          }

          v104 = 0;
          v105 = *&v279[0];
          v106 = v101;
          v107 = v101 & 0xC000000000000001;
          v108 = v106;
          do
          {
            if (v107)
            {
              v109 = MEMORY[0x25F8CE460](v104);
            }

            else
            {
              v109 = *(v106 + 8 * v104 + 32);
            }

            v110 = v109;
            v111 = [v109 identifier];
            v112 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v114 = v113;

            *&v279[0] = v105;
            v116 = *(v105 + 16);
            v115 = *(v105 + 24);
            if (v116 >= v115 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v115 > 1), v116 + 1, 1);
              v105 = *&v279[0];
            }

            ++v104;
            *(v105 + 16) = v116 + 1;
            v117 = v105 + 16 * v116;
            *(v117 + 32) = v112;
            *(v117 + 40) = v114;
            v92 = v277;
            v106 = v108;
          }

          while (v266 != v104);

          goto LABEL_36;
        }
      }

      else
      {
        v266 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v266)
        {
          goto LABEL_26;
        }
      }

      goto LABEL_44;
    }
  }

LABEL_44:
  v121 = [v276 parametersByName];
  v93 = v275;
  if (!v121)
  {
    goto LABEL_93;
  }

  v122 = v121;
  v123 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v123 + 16))
  {
    goto LABEL_92;
  }

  v124 = specialized __RawDictionaryStorage.find<A>(_:)(0x6E65697069636572, 0xEA00000000007374);
  if ((v125 & 1) == 0)
  {
    goto LABEL_92;
  }

  outlined init with copy of Any(*(v123 + 56) + 32 * v124, &v280);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_93:
    v128 = MEMORY[0x277D84F90];
    v248 = MEMORY[0x277D84F90];
    v129 = MEMORY[0x277D84F90];
    v247 = MEMORY[0x277D84F90];
LABEL_94:
    v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v281 = v182;
    *&v280 = v247;
    outlined init with take of Any(&v280, v279);
    v183 = v282;
    v184 = swift_isUniquelyReferenced_nonNull_native();
    v278 = v183;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v279, 0x73746361746E6F63, 0xED000065756C6156, v184);
    v185 = v278;
    v281 = v182;
    *&v280 = v129;
    outlined init with take of Any(&v280, v279);
    v186 = swift_isUniquelyReferenced_nonNull_native();
    v278 = v185;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v279, 0xD000000000000013, 0x800000025ED7F320, v186);
    v187 = v278;
    v281 = v182;
    *&v280 = v248;
    outlined init with take of Any(&v280, v279);
    v188 = swift_isUniquelyReferenced_nonNull_native();
    v278 = v187;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v279, 0xD000000000000011, 0x800000025ED7F340, v188);
    v189 = v278;
    v281 = v182;
    *&v280 = v128;
    outlined init with take of Any(&v280, v279);
    v190 = swift_isUniquelyReferenced_nonNull_native();
    v278 = v189;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v279, 0xD000000000000010, 0x800000025ED7F360, v190);
    v191 = v278;
    v282 = v278;
    objc_opt_self();
    v192 = swift_dynamicCastObjCClass();
    v193 = v270;
    v194 = v272;
    if (!v192)
    {
      goto LABEL_103;
    }

    v195 = [v276 parametersByName];
    if (v195)
    {
      v196 = v195;
      v197 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v197 + 16) && (v198 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000012, 0x800000025ED7FBA0), (v199 & 1) != 0))
      {
        outlined init with copy of Any(*(v197 + 56) + 32 * v198, &v280);

        if (swift_dynamicCast())
        {
          v281 = v182;
          *&v280 = *&v279[0];
          outlined init with take of Any(&v280, v279);
          v200 = swift_isUniquelyReferenced_nonNull_native();
          v278 = v191;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v279, 0xD000000000000018, 0x800000025ED7FAF0, v200);
          v282 = v278;
LABEL_102:
          v93 = v275;
LABEL_103:
          v201 = [v265 absoluteTimestamp];
          if (v201)
          {
            v202 = v273;
            v203 = v201;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v204 = 0;
          }

          else
          {
            v204 = 1;
            v202 = v273;
          }

          v205 = v267;
          v206 = 1;
          (*(v194 + 56))(v202, v204, 1, v274);
          v207 = [v264 dateInterval];
          if (v207)
          {
            v208 = v207;
            static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

            v206 = 0;
          }

          v209 = type metadata accessor for DateInterval();
          v210 = *(v209 - 8);
          (*(v210 + 56))(v205, v206, 1, v209);
          v211 = v268;
          outlined init with take of DateInterval?(v205, v268, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
          v212 = 0;
          if (!(*(v210 + 48))(v211, 1, v209))
          {
            DateInterval.duration.getter();
            v212 = v213;
          }

          outlined destroy of Date?(v211, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
          v214 = *(v194 + 16);
          v215 = v271;
          v216 = v274;
          v214(v271, v92, v274);
          v217 = type metadata accessor for SiriUISession(0);
          v214(v193, v92 + *(v217 + 20), v216);
          v218 = v273;
          v219 = v269;
          outlined init with copy of Date?(v273, v269);
          v220 = (*(v194 + 48))(v219, 1, v216);
          if (v220 == 1)
          {
            v234 = *(v194 + 8);
            v234(v193, v216);
            v234(v215, v216);
            outlined destroy of Date?(v218, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
            outlined destroy of Date?(v219, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
            v232 = 0x3FF0000000000000;
            v222 = 0;
            v226 = 0.0;
            v233 = 0.0;
            v212 = 0;
          }

          else
          {
            (*(v194 + 32))(v93, v219, v216);
            Date.timeIntervalSinceReferenceDate.getter();
            v222 = v221;
            Date.timeIntervalSinceReferenceDate.getter();
            v224 = v223;
            Date.timeIntervalSinceReferenceDate.getter();
            v226 = v224 - v225;
            Date.timeIntervalSinceReferenceDate.getter();
            v228 = v227;
            Date.timeIntervalSinceReferenceDate.getter();
            v230 = v229;
            v231 = *(v194 + 8);
            v231(v93, v216);
            v231(v193, v216);
            v231(v215, v216);
            outlined destroy of Date?(v218, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
            v232 = 0;
            v233 = v228 - v230;
          }

          v235 = v220 != 1;
          v236 = v276;
          v237 = [v276 domain];
          v238 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v240 = v239;

          v241 = [v236 verb];
          v242 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v244 = v243;

          v245 = v282;
          type metadata accessor for Signal();
          v246 = swift_allocObject();
          *(v246 + 16) = v222;
          *(v246 + 24) = v226;
          *(v246 + 32) = v233;
          *(v246 + 40) = v212;
          *(v246 + 48) = v232;
          *(v246 + 56) = v235;
          *(v246 + 64) = v238;
          *(v246 + 72) = v240;
          *(v246 + 80) = v242;
          *(v246 + 88) = v244;
          *(v246 + 96) = 1;
          *(v246 + 104) = v245;
          return;
        }
      }

      else
      {
      }
    }

    specialized Dictionary._Variant.removeValue(forKey:)(0xD000000000000018, 0x800000025ED7FAF0, &v280);
    outlined destroy of Date?(&v280, &_sypSgMd, &_sypSgMR);
    goto LABEL_102;
  }

  v103 = *&v279[0];
  if (*&v279[0] >> 62)
  {
LABEL_115:
    if (v103 < 0)
    {
      v249 = v103;
    }

    else
    {
      v249 = v103 & 0xFFFFFFFFFFFFFF8;
    }

    v250 = v103;
    v126 = MEMORY[0x25F8CE500](v249);
    v103 = v250;
    if (v126)
    {
      goto LABEL_50;
    }

    goto LABEL_92;
  }

  v126 = *((*&v279[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v126)
  {
LABEL_92:

    goto LABEL_93;
  }

LABEL_50:
  if (v126 >= 1)
  {
    v127 = 0;
    v128 = MEMORY[0x277D84F90];
    v251 = v103 & 0xC000000000000001;
    v263 = MEMORY[0x277D84F90];
    v129 = MEMORY[0x277D84F90];
    v266 = MEMORY[0x277D84F90];
    v253 = v103;
    v252 = v126;
    while (1)
    {
      if (v251)
      {
        v130 = MEMORY[0x25F8CE460](v127);
      }

      else
      {
        v130 = *(v103 + 8 * v127 + 32);
      }

      v131 = v130;
      v132 = v258;
      v133 = v257;
      v134 = [v130 personHandle];
      if (v134 && (v135 = v134, v136 = [v134 value], v135, v136))
      {
        v137 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v139 = v138;
      }

      else
      {
        v137 = 0;
        v139 = 0xE000000000000000;
      }

      v140 = swift_isUniquelyReferenced_nonNull_native();
      v254 = v127;
      if ((v140 & 1) == 0)
      {
        v266 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v266 + 2) + 1, 1, v266);
      }

      v142 = *(v266 + 2);
      v141 = *(v266 + 3);
      if (v142 >= v141 >> 1)
      {
        v266 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v141 > 1), v142 + 1, 1, v266);
      }

      v143 = v266;
      *(v266 + 2) = v142 + 1;
      v144 = &v143[16 * v142];
      *(v144 + 4) = v137;
      *(v144 + 5) = v139;
      v145 = [v131 displayName];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v146 = specialized static PSEPhoneticEmbedder.normalizedString(from:)();
      v148 = v147;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v129 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v129 + 2) + 1, 1, v129);
      }

      v150 = *(v129 + 2);
      v149 = *(v129 + 3);
      if (v150 >= v149 >> 1)
      {
        v129 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v149 > 1), v150 + 1, 1, v129);
      }

      *(v129 + 2) = v150 + 1;
      v151 = &v129[16 * v150];
      *(v151 + 4) = v146;
      *(v151 + 5) = v148;
      v152 = [v131 nameComponents];
      v256 = v128;
      v255 = v129;
      v262 = v131;
      if (v152)
      {
        v153 = v152;
        static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

        v154 = 0;
      }

      else
      {
        v154 = 1;
      }

      v155 = type metadata accessor for PersonNameComponents();
      v156 = *(v155 - 8);
      v157 = *(v156 + 56);
      v157(v132, v154, 1, v155);
      outlined init with take of DateInterval?(v132, v133, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
      v158 = *(v156 + 48);
      if (v158(v133, 1, v155))
      {
        break;
      }

      PersonNameComponents.givenName.getter();
      v160 = v159;
      outlined destroy of Date?(v133, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
      if (!v160)
      {
        goto LABEL_72;
      }

LABEL_74:
      v161 = specialized static PSEPhoneticEmbedder.normalizedString(from:)();
      v163 = v162;

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v164 = v263;
      }

      else
      {
        v164 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v263 + 2) + 1, 1, v263);
      }

      v166 = *(v164 + 2);
      v165 = *(v164 + 3);
      if (v166 >= v165 >> 1)
      {
        v164 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v165 > 1), v166 + 1, 1, v164);
      }

      *(v164 + 2) = v166 + 1;
      v263 = v164;
      v167 = &v164[16 * v166];
      *(v167 + 4) = v161;
      *(v167 + 5) = v163;
      v168 = [v262 nameComponents];
      if (v168)
      {
        v169 = v260;
        v170 = v168;
        static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

        v171 = 0;
      }

      else
      {
        v171 = 1;
        v169 = v260;
      }

      v157(v169, v171, 1, v155);
      v172 = v259;
      outlined init with take of DateInterval?(v169, v259, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
      if (v158(v172, 1, v155))
      {
        outlined destroy of Date?(v172, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
        v173 = v277;
        v128 = v256;
      }

      else
      {
        PersonNameComponents.familyName.getter();
        v175 = v174;
        outlined destroy of Date?(v172, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
        v173 = v277;
        v128 = v256;
        if (v175)
        {
          goto LABEL_85;
        }
      }

LABEL_85:
      v129 = v255;
      v176 = specialized static PSEPhoneticEmbedder.normalizedString(from:)();
      v178 = v177;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v128 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v128 + 2) + 1, 1, v128);
      }

      v180 = *(v128 + 2);
      v179 = *(v128 + 3);
      if (v180 >= v179 >> 1)
      {
        v128 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v179 > 1), v180 + 1, 1, v128);
      }

      v127 = v254 + 1;

      *(v128 + 2) = v180 + 1;
      v181 = &v128[16 * v180];
      *(v181 + 4) = v176;
      *(v181 + 5) = v178;
      v93 = v275;
      v103 = v253;
      if (v252 == v127)
      {

        v247 = v266;
        v248 = v263;
        v92 = v173;
        goto LABEL_94;
      }
    }

    outlined destroy of Date?(v133, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
LABEL_72:

    goto LABEL_74;
  }

  __break(1u);
}

void MessagesIntentSignalFactory.processBiomeEventsToSignals(bmEvents:siriUISession:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v80 = a2;
  v58 = a3;
  v82 = type metadata accessor for ReliabilityCategory();
  v6 = *(v82 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v82);
  v81 = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtobC10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtobC10FeatureSetVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v54 - v11;
  v13 = type metadata accessor for ProtoTaskEngagementFeatureSet();
  v61 = *(v13 - 8);
  v14 = *(v61 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v60 = v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v59 = v54 - v19;
  v87 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_53;
  }

  v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v20)
  {
LABEL_3:
    v65 = v17;
    v63 = v12;
    v21 = 0;
    v22 = (*v4 + 88);
    v78 = *v22;
    v77 = v22;
    v79 = a1 & 0xC000000000000001;
    v69 = a1 & 0xFFFFFFFFFFFFFF8;
    v68 = a1 + 32;
    v75 = "intentResponseCode";
    v74 = *MEMORY[0x277D615C0];
    v73 = *MEMORY[0x277D616A8];
    v72 = v6 + 104;
    v71 = v6 + 8;
    v62 = v61 + 56;
    v56 = (v61 + 48);
    v57 = (v61 + 32);
    v55 = (v61 + 16);
    v54[1] = v61 + 8;
    *&v18 = 136315138;
    v67 = v18;
    v64 = MEMORY[0x277D84F90];
    v83 = MEMORY[0x277D84F90];
    v70 = v4;
    v76 = v20;
    v66 = a1;
    while (1)
    {
      if (v79)
      {
        v17 = MEMORY[0x25F8CE460](v21, a1);
      }

      else
      {
        if (v21 >= *(v69 + 16))
        {
          goto LABEL_52;
        }

        v17 = *(v68 + 8 * v21);
      }

      v23 = v17;
      if (__OFADD__(v21++, 1))
      {
        goto LABEL_51;
      }

      v12 = v4;
      v17 = v78(v17, v80);
      v25 = v17;
      if (v17)
      {
        break;
      }

LABEL_4:
      if (v21 == v20)
      {
        goto LABEL_58;
      }
    }

    v6 = v83;
    if (v83 >> 62)
    {
      if (v83 < 0)
      {
        v40 = v83;
      }

      else
      {
        v40 = v83 & 0xFFFFFFFFFFFFFF8;
      }

      v17 = MEMORY[0x25F8CE500](v40);
      v12 = v17;
      if (v17)
      {
LABEL_13:
        v26 = 0;
        v27 = v6 & 0xC000000000000001;
        v4 = (v6 & 0xFFFFFFFFFFFFFF8);
        do
        {
          if (v27)
          {
            v17 = MEMORY[0x25F8CE460](v26, v83);
            v6 = v17;
            a1 = v26 + 1;
            if (__OFADD__(v26, 1))
            {
              goto LABEL_49;
            }
          }

          else
          {
            if (v26 >= v4[2])
            {
              goto LABEL_50;
            }

            v6 = *(v83 + 8 * v26 + 32);

            a1 = v26 + 1;
            if (__OFADD__(v26, 1))
            {
LABEL_49:
              __break(1u);
LABEL_50:
              __break(1u);
LABEL_51:
              __break(1u);
LABEL_52:
              __break(1u);
LABEL_53:
              v50 = v17;
              if (a1 < 0)
              {
                v51 = a1;
              }

              else
              {
                v51 = a1 & 0xFFFFFFFFFFFFFF8;
              }

              v20 = MEMORY[0x25F8CE500](v51);
              v17 = v50;
              if (!v20)
              {
                goto LABEL_57;
              }

              goto LABEL_3;
            }
          }

          *&v85 = v6;
          if (closure #1 in MessagesIntentSignalFactory.processBiomeEventsToSignals(bmEvents:siriUISession:)(&v85, v25))
          {
            v28 = (*(*v6 + 216))();
            if (*(v28 + 16) && (v29 = specialized __RawDictionaryStorage.find<A>(_:)(0x42646574616E6F64, 0xED00006972695379), (v30 & 1) != 0))
            {
              outlined init with copy of Any(*(v28 + 56) + 32 * v29, &v85);

              v31 = swift_dynamicCast();
              v4 = v70;
              a1 = v66;
              if (v31 && (v84[0] & 1) == 0)
              {
                *(&v86 + 1) = MEMORY[0x277D839B0];
                LOBYTE(v85) = 1;
                v32 = (*(*v6 + 232))(v84);
                v12 = v33;
                v34 = 0x42646574616E6F64;
                v35 = 0x6972695379;
LABEL_35:
                specialized Dictionary.subscript.setter(&v85, v34, v35 & 0xFFFFFFFFFFFFLL | 0xED00000000000000);
                v32(v84, 0);

                v20 = v76;
                goto LABEL_4;
              }
            }

            else
            {

              v4 = v70;
              a1 = v66;
            }

            v36 = (*(*v25 + 216))();
            if (*(v36 + 16) && (v37 = specialized __RawDictionaryStorage.find<A>(_:)(0x73746361746E6F63, 0xED000065756C6156), (v38 & 1) != 0))
            {
              outlined init with copy of Any(*(v36 + 56) + 32 * v37, &v85);
            }

            else
            {

              v85 = 0u;
              v86 = 0u;
            }

            v32 = (*(*v6 + 232))(v84);
            v12 = v39;
            v34 = 0x73746361746E6F63;
            v35 = 0x65756C6156;
            goto LABEL_35;
          }

          ++v26;
        }

        while (a1 != v12);
      }
    }

    else
    {
      v12 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12)
      {
        goto LABEL_13;
      }
    }

    MEMORY[0x25F8CE160](v41);
    a1 = v66;
    if (*((v87 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v87 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v49 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v83 = v87;
    v4 = v70;
    v6 = v63;
    v12 = v70;
    (*(*v70 + 80))(v23);
    v20 = v76;
    v42 = v65;
    if ((*v56)(v6, 1, v65) == 1)
    {

      v17 = outlined destroy of Date?(v6, &_s18SiriTaskEngagement05ProtobC10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtobC10FeatureSetVSgMR);
    }

    else
    {
      v12 = *v57;
      v43 = v59;
      (*v57)(v59, v6, v42);
      (*v55)(v60, v43, v42);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v64 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v64[2] + 1, 1, v64);
      }

      v45 = v64[2];
      v44 = v64[3];
      v6 = v45 + 1;
      v20 = v76;
      if (v45 >= v44 >> 1)
      {
        v64 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v44 > 1, v45 + 1, 1, v64);
      }

      v46 = v61;
      v47 = v65;
      (*(v61 + 8))(v59, v65);
      v48 = v64;
      v64[2] = v6;
      v17 = (v12)(v48 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v45, v60, v47);
    }

    goto LABEL_4;
  }

LABEL_57:
  v64 = MEMORY[0x277D84F90];
  v83 = MEMORY[0x277D84F90];
LABEL_58:
  v52 = v58;
  v53 = v64;
  *v58 = v83;
  v52[1] = v53;
}

BOOL closure #1 in MessagesIntentSignalFactory.processBiomeEventsToSignals(bmEvents:siriUISession:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*(*a2 + 168))();
  v6 = v5;
  if (v4 == (*(*v3 + 168))() && v6 == v7)
  {
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  v11 = (*(*a2 + 216))(v10);
  if (*(v11 + 16) && (v12 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000014, 0x800000025ED7FB80), (v13 & 1) != 0))
  {
    outlined init with copy of Any(*(v11 + 56) + 32 * v12, v28);

    type metadata accessor for BMAppIntentInteractionDirection(0);
    v14 = swift_dynamicCast();
    if (v14)
    {
      v15 = LODWORD(v27[0]);
    }

    else
    {
      v15 = 0;
    }

    v16 = v14 ^ 1;
  }

  else
  {

    v15 = 0;
    v16 = 1;
  }

  v17 = (*(*v3 + 216))();
  if (*(v17 + 16) && (v18 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000014, 0x800000025ED7FB80), (v19 & 1) != 0))
  {
    outlined init with copy of Any(*(v17 + 56) + 32 * v18, v28);

    type metadata accessor for BMAppIntentInteractionDirection(0);
    v20 = swift_dynamicCast();
    v21 = LODWORD(v27[0]);
    if (!v20)
    {
      v21 = 0;
    }

    v22 = v20 ^ 1;
    if ((v16 & 1) == 0)
    {
LABEL_20:
      if (v15 == v21)
      {
        v23 = v22;
      }

      else
      {
        v23 = 1;
      }

      if (v23)
      {
        return 0;
      }

LABEL_24:
      v24 = (*(*a2 + 120))(v28);
      v25 = *v28;
      (*(*v3 + 120))(v27, v24);
      return vabdd_f64(v25, v27[0]) < 2.0;
    }
  }

  else
  {

    v21 = 0;
    v22 = 1;
    if ((v16 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  if (v22)
  {
    goto LABEL_24;
  }

  return 0;
}

unint64_t type metadata accessor for INMessage()
{
  result = lazy cache variable for type metadata for INMessage;
  if (!lazy cache variable for type metadata for INMessage)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for INMessage);
  }

  return result;
}

uint64_t static TaskSuccessCalculator.calculateTaskSuccess(signals:task:)(unint64_t a1, uint64_t a2)
{
  v2 = a1;
  v80[0] = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_52;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v78 = a2;
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x25F8CE460](v5, v2);
        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_19:
          __break(1u);
LABEL_20:
          v12 = v80[0];
          v4 = MEMORY[0x277D84F90];
          goto LABEL_22;
        }
      }

      else
      {
        if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          if (v2 < 0)
          {
            v25 = v2;
          }

          else
          {
            v25 = v2 & 0xFFFFFFFFFFFFFF8;
          }

          v26 = a2;
          v27 = MEMORY[0x25F8CE500](v25);
          a2 = v26;
          v3 = v27;
          goto LABEL_3;
        }

        v6 = *(v2 + 8 * v5 + 32);

        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_19;
        }
      }

      if ((*(*v6 + 144))() == 0x636E75614C707041 && v8 == 0xE900000000000068)
      {
      }

      else
      {
        v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v10)
        {
        }

        else
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v11 = *(v80[0] + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }
      }

      ++v5;
      if (v7 == v3)
      {
        goto LABEL_20;
      }
    }
  }

  v12 = MEMORY[0x277D84F90];
LABEL_22:
  v13 = v12 < 0 || (v12 & 0x4000000000000000) != 0;
  if (v13)
  {
    if (MEMORY[0x25F8CE500](v12) > 0 && MEMORY[0x25F8CE500](v12))
    {
LABEL_27:
      if ((v12 & 0xC000000000000001) != 0)
      {
        v2 = MEMORY[0x25F8CE460](0, v12);
        v80[0] = v4;
        if (v13)
        {
LABEL_30:
          v14 = MEMORY[0x25F8CE500](v12);
          if (v14)
          {
LABEL_31:
            v15 = 0;
            while (1)
            {
              if ((v12 & 0xC000000000000001) != 0)
              {
                v16 = MEMORY[0x25F8CE460](v15, v12);
                v17 = v15 + 1;
                if (__OFADD__(v15, 1))
                {
                  goto LABEL_50;
                }
              }

              else
              {
                if (v15 >= *(v12 + 16))
                {
                  goto LABEL_51;
                }

                v16 = *(v12 + 8 * v15 + 32);

                v17 = v15 + 1;
                if (__OFADD__(v15, 1))
                {
                  goto LABEL_50;
                }
              }

              v18 = (*(*v16 + 144))();
              v20 = v19;
              if (v18 == (*(*v2 + 144))() && v20 == v21)
              {
                break;
              }

              v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v23)
              {
                goto LABEL_47;
              }

LABEL_33:
              ++v15;
              if (v17 == v14)
              {
                v3 = v80[0];
                goto LABEL_72;
              }
            }

LABEL_47:
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v24 = *(v80[0] + 16);
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            goto LABEL_33;
          }

LABEL_71:
          v3 = MEMORY[0x277D84F90];
LABEL_72:

          v13 = v3 < 0 || (v3 & 0x4000000000000000) != 0;
          if (!v13)
          {
            v45 = *(v3 + 16);
            if (!v45)
            {
              goto LABEL_85;
            }

            goto LABEL_77;
          }

LABEL_130:
          v45 = MEMORY[0x25F8CE500](v3);
          if (!v45)
          {
LABEL_85:
            if (v13)
            {
              result = MEMORY[0x25F8CE500](v3);
              if (result != 1)
              {
                goto LABEL_87;
              }
            }

            else
            {
              result = *(v3 + 16);
              if (result != 1)
              {
LABEL_87:
                if (result < 2)
                {
                  goto LABEL_95;
                }

                v56 = (*(*v2 + 144))();
                v57 = v55;
                if (v56 == 0x736567617373654DLL && v55 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  v59 = (*(*v78 + 328))(v58);
                  v60 = v77[12](v3);
LABEL_94:
                  v61 = v60;

                  (*(*v59 + 112))(v61);
LABEL_95:

                  goto LABEL_96;
                }

                if (v56 == 1936744781 && v57 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  v59 = (*(*v78 + 328))(v70);
                  v60 = v77[13](v3);
                  goto LABEL_94;
                }

                if (v56 == 0x6D72616C41 && v57 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  v59 = (*(*v78 + 328))(v71);
                  v60 = v77[14](v3);
                  goto LABEL_94;
                }

                if (v56 == 0x636973754DLL && v57 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  v59 = (*(*v78 + 328))(v72);
                  v60 = v77[15](v3);
                  goto LABEL_94;
                }

                if (v56 == 0x6E65746E49707041 && v57 == 0xE900000000000074)
                {

LABEL_135:
                  v59 = (*(*v78 + 328))(v73);
                  v60 = v77[16](v3);
                  goto LABEL_94;
                }

LABEL_134:
                v74 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v74 & 1) == 0)
                {

                  v76 = (*(*v78 + 328))(v75);
                  (*(*v76 + 112))(2);
                  goto LABEL_95;
                }

                goto LABEL_135;
              }
            }

            if (v45)
            {
              if ((v3 & 0xC000000000000001) != 0)
              {
                v62 = MEMORY[0x25F8CE460](0, v3);
              }

              else
              {
                if (!*(v3 + 16))
                {
                  __break(1u);
                  return result;
                }

                v62 = *(v3 + 32);
              }

              v64 = v78;
              v65 = (*(*v62 + 216))(v63);

              if (*(v65 + 16) && (v66 = specialized __RawDictionaryStorage.find<A>(_:)(0x42646574616E6F64, 0xED00006972695379), (v67 & 1) != 0))
              {
                outlined init with copy of Any(*(v65 + 56) + 32 * v66, v80);

                if ((swift_dynamicCast() & 1) != 0 && (v79 & 1) == 0)
                {
                  v68 = *(*(*(*v78 + 328))() + 112);
                  v68(4);
LABEL_113:
                }
              }

              else
              {
              }
            }

            else
            {

              v64 = v78;
            }

            v69 = *(*(*(*v64 + 328))() + 112);
            v69(3);
            goto LABEL_113;
          }

LABEL_77:
          if ((v3 & 0xC000000000000001) != 0)
          {
            v47 = MEMORY[0x25F8CE460](0, v3);
            v46 = v47;
          }

          else
          {
            if (!*(v3 + 16))
            {
              __break(1u);
              goto LABEL_134;
            }

            v46 = *(v3 + 32);
          }

          v48 = (*(*v46 + 144))(v47);
          v50 = v49;

          if (v48 == 0x736C6C6143 && v50 == 0xE500000000000000)
          {
          }

          else
          {
            v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v52 & 1) == 0)
            {
              goto LABEL_85;
            }
          }

          v59 = (*(*v78 + 328))(v53);
          v60 = v77[11](v3);
          goto LABEL_94;
        }
      }

      else
      {
        if (!*(v12 + 16))
        {
          __break(1u);
          goto LABEL_130;
        }

        v2 = *(v12 + 32);

        v80[0] = v4;
        if (v13)
        {
          goto LABEL_30;
        }
      }

      v14 = *(v12 + 16);
      if (v14)
      {
        goto LABEL_31;
      }

      goto LABEL_71;
    }
  }

  else if (*(v12 + 16))
  {
    goto LABEL_27;
  }

  v29 = (*v78 + 328);
  v30 = *v29;
  v31 = (*v29)(v28);
  v32 = (*(*v31 + 200))(v31);

  v34 = *v30(v33);
  if (v32)
  {
    (*(v34 + 112))(3);
  }

  else
  {
    v35 = (*(v34 + 240))();

    if ((v35 & 1) == 0)
    {
      v37 = v30(v36);
      v38 = (*(*v37 + 192))(v37);

      if ((v38 & 1) == 0)
      {
        v39 = v30(v36);
        v40 = (*(*v39 + 184))(v39);

        if ((v40 & 1) == 0)
        {
          if ((*(*v78 + 280))(v36) == 0xD000000000000014 && 0x800000025ED7FA70 == v41)
          {
          }

          else
          {
            v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v42 & 1) == 0)
            {
              v44 = *(*v30(v36) + 112);
              v44(1);
              goto LABEL_96;
            }
          }
        }
      }
    }

    v43 = *(*v30(v36) + 112);
    v43(4);
  }

LABEL_96:
}

uint64_t static TaskSuccessCalculator.calculateCallsTaskSuccess(callSignals:)(uint64_t result)
{
  if (result >> 62)
  {
    v13 = result & 0xFFFFFFFFFFFFFF8;
    if (result < 0)
    {
      v13 = result;
    }

    v14 = result;
    v15 = MEMORY[0x25F8CE500](v13);
    result = v14;
    if (!v15)
    {
      return 4;
    }
  }

  else if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return 4;
  }

  if ((result & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x25F8CE460](0, result);
    v1 = v2;
LABEL_6:
    v3 = *(*v1 + 216);
    v4 = (v3)(v2);
    if (*(v4 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(0x42646574616E6F64, 0xED00006972695379), (v6 & 1) != 0))
    {
      outlined init with copy of Any(*(v4 + 56) + 32 * v5, v17);

      if ((swift_dynamicCast() & 1) != 0 && LOBYTE(v16) == 1)
      {
        v7 = v3();
        if (*(v7 + 16))
        {
          v8 = specialized __RawDictionaryStorage.find<A>(_:)(0x617275446C6C6163, 0xEC0000006E6F6974);
          if (v9)
          {
            outlined init with copy of Any(*(v7 + 56) + 32 * v8, v17);

            if ((swift_dynamicCast() & 1) == 0 || v16 != 0.0)
            {
              goto LABEL_24;
            }

            v10 = v3();
            if (*(v10 + 16))
            {
              v11 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000018, 0x800000025ED7F380);
              if (v12)
              {
                outlined init with copy of Any(*(v10 + 56) + 32 * v11, v17);

                if ((swift_dynamicCast() & 1) == 0 || v16 < 0.0 || v16 >= 2.0)
                {
                  return 3;
                }

                return 4;
              }
            }
          }
        }

LABEL_24:

        return 3;
      }
    }

    else
    {
    }

    return 4;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v1 = *(result + 32);

    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t static TaskSuccessCalculator.calculateMessagesTaskSuccess(messageSignals:)(uint64_t a1)
{
  if (a1 >> 62)
  {
    v20 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v20 = a1;
    }

    v21 = a1;
    v22 = MEMORY[0x25F8CE500](v20);
    a1 = v21;
    if (!v22)
    {
      return 4;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return 4;
  }

  v4 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v1 = a1;
    v6 = MEMORY[0x25F8CE460](0);
    v5 = v6;
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_34;
    }

    v1 = a1;
    v5 = *(a1 + 32);
  }

  v3 = *(*v5 + 216);
  v7 = (v3)(v6);
  if (!*(v7 + 16) || (v8 = specialized __RawDictionaryStorage.find<A>(_:)(0x42646574616E6F64, 0xED00006972695379), (v9 & 1) == 0))
  {

    goto LABEL_13;
  }

  outlined init with copy of Any(*(v7 + 56) + 32 * v8, v36);

  result = swift_dynamicCast();
  if ((result & 1) == 0 || v35 != 1)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v11 = MEMORY[0x25F8CE460](1, v1);
LABEL_17:
    v12 = (*(*v11 + 216))();

    if (*(v12 + 16) && (v13 = specialized __RawDictionaryStorage.find<A>(_:)(0x42646574616E6F64, 0xED00006972695379), (v14 & 1) != 0))
    {
      outlined init with copy of Any(*(v12 + 56) + 32 * v13, v36);

      if ((swift_dynamicCast() & 1) != 0 && (v35 & 1) == 0)
      {
        v15 = v3();
        if (!*(v15 + 16) || (v16 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000018, 0x800000025ED7FAD0), (v17 & 1) == 0))
        {
LABEL_45:

          goto LABEL_46;
        }

        outlined init with copy of Any(*(v15 + 56) + 32 * v16, v36);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        v18 = swift_dynamicCast();
        if ((v18 & 1) == 0)
        {
LABEL_46:
          v27 = (v3)(v18);
          if (*(v27 + 16))
          {
            v28 = specialized __RawDictionaryStorage.find<A>(_:)(0x73746361746E6F63, 0xED000065756C6156);
            if (v29)
            {
              outlined init with copy of Any(*(v27 + 56) + 32 * v28, v36);

              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
              if ((swift_dynamicCast() & 1) == 0)
              {
LABEL_62:

                return 3;
              }

              if (v4)
              {
                v30 = MEMORY[0x25F8CE460](1, v1);
              }

              else
              {
                v30 = *(v1 + 40);
              }

              v31 = (*(*v30 + 216))();

              if (!*(v31 + 16) || (v32 = specialized __RawDictionaryStorage.find<A>(_:)(0x73746361746E6F63, 0xED000065756C6156), (v33 & 1) == 0))
              {

                return 3;
              }

              outlined init with copy of Any(*(v31 + 56) + 32 * v32, v36);

              if (swift_dynamicCast())
              {
                if (*(v35 + 16))
                {
                  v34 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v35, v35);

                  if ((v34 & 1) == 0)
                  {
                    return 3;
                  }

                  return 4;
                }
              }
            }
          }

          goto LABEL_62;
        }

        v2 = v35;
        if (v4)
        {
          v19 = MEMORY[0x25F8CE460](1, v1);
LABEL_35:
          v23 = (*(*v19 + 216))();

          if (*(v23 + 16) && (v24 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000018, 0x800000025ED7FAF0), (v25 & 1) != 0))
          {
            outlined init with copy of Any(*(v23 + 56) + 32 * v24, v36);

            if (swift_dynamicCast())
            {
              if (*(v2 + 16) && *(v35 + 16))
              {
                v26 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v2, v35);

                if ((v26 & 1) == 0)
                {
                  goto LABEL_46;
                }

LABEL_13:

                return 4;
              }
            }
          }

          else
          {
          }

          goto LABEL_45;
        }

LABEL_34:
        v19 = *(v1 + 40);

        goto LABEL_35;
      }
    }

    else
    {
    }

    return 3;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
  {
    v11 = *(v1 + 40);

    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t static TaskSuccessCalculator.calculateMapsTaskSuccess(geoSignals:)(uint64_t a1)
{
  v53 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_57;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
LABEL_61:
    v27 = MEMORY[0x277D84F90];
    v26 = MEMORY[0x277D84F90];
    v25 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
    {
      goto LABEL_79;
    }

    goto LABEL_62;
  }

LABEL_3:
  v3 = 0;
  v4 = a1 & 0xC000000000000001;
  while (!v4)
  {
    if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      if (a1 < 0)
      {
        v28 = a1;
      }

      else
      {
        v28 = a1 & 0xFFFFFFFFFFFFFF8;
      }

      v2 = MEMORY[0x25F8CE500](v28);
      if (!v2)
      {
        goto LABEL_61;
      }

      goto LABEL_3;
    }

    v6 = *(a1 + 8 * v3 + 32);

    v7 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_18;
    }

LABEL_10:
    if ((*(*v6 + 168))() == 2003789907 && v8 == 0xE400000000000000)
    {
    }

    else
    {
      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v10 & 1) == 0)
      {

        goto LABEL_6;
      }
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v5 = *(v53 + 16);
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
LABEL_6:
    ++v3;
    if (v7 == v2)
    {
      goto LABEL_19;
    }
  }

  v6 = MEMORY[0x25F8CE460](v3, a1);
  v7 = v3 + 1;
  if (!__OFADD__(v3, 1))
  {
    goto LABEL_10;
  }

LABEL_18:
  __break(1u);
LABEL_19:
  v11 = 0;
  v49 = v53;
  v53 = MEMORY[0x277D84F90];
  while (2)
  {
    if (v4)
    {
      v12 = MEMORY[0x25F8CE460](v11, a1);
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_35;
      }

LABEL_25:
      if ((*(*v12 + 168))() == 0x7261436563616C50 && v14 == 0xEC00000070615464)
      {
      }

      else
      {
        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v16 & 1) == 0)
        {

          goto LABEL_21;
        }
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v17 = *(v53 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
LABEL_21:
      ++v11;
      if (v13 == v2)
      {
        goto LABEL_36;
      }

      continue;
    }

    break;
  }

  if (v11 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_55;
  }

  v12 = *(a1 + 8 * v11 + 32);

  v13 = v11 + 1;
  if (!__OFADD__(v11, 1))
  {
    goto LABEL_25;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  v18 = 0;
  v48 = v53;
  v53 = MEMORY[0x277D84F90];
  while (2)
  {
    if (v4)
    {
      v20 = MEMORY[0x25F8CE460](v18, a1);
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_51;
      }

LABEL_43:
      if ((*(*v20 + 168))() == 0x697461676976614ELL && v22 == 0xEA00000000006E6FLL)
      {
      }

      else
      {
        v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v24 & 1) == 0)
        {

LABEL_39:
          ++v18;
          if (v21 == v2)
          {
            goto LABEL_52;
          }

          continue;
        }
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v19 = *(v53 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      goto LABEL_39;
    }

    break;
  }

  if (v18 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_56;
  }

  v20 = *(a1 + 8 * v18 + 32);

  v21 = v18 + 1;
  if (!__OFADD__(v18, 1))
  {
    goto LABEL_43;
  }

LABEL_51:
  __break(1u);
LABEL_52:
  v25 = v53;
  v27 = v48;
  v26 = v49;
  if (v49 < 0)
  {
LABEL_79:
    if (!MEMORY[0x25F8CE500](v26))
    {
      goto LABEL_80;
    }

LABEL_64:
    if ((v26 & 0xC000000000000001) != 0)
    {
      goto LABEL_106;
    }

    if (*(v26 + 16))
    {
      v29 = *(v26 + 32);

      goto LABEL_67;
    }

    __break(1u);
    goto LABEL_108;
  }

LABEL_62:
  if ((v26 & 0x4000000000000000) != 0)
  {
    goto LABEL_79;
  }

  if (*(v26 + 16))
  {
    goto LABEL_64;
  }

LABEL_80:

  v34 = v25 & 0x4000000000000000;
  while (2)
  {
    v52 = MEMORY[0x277D84F90];
    if (v25 < 0 || v34)
    {
LABEL_108:
      v26 = MEMORY[0x25F8CE500](v25);
      if (!v26)
      {
LABEL_109:
        v47 = MEMORY[0x277D84F90];
LABEL_110:

        if (v47 < 0 || (v47 & 0x4000000000000000) != 0)
        {
          MEMORY[0x25F8CE500](v47);
        }

        goto LABEL_112;
      }
    }

    else
    {
      v26 = *(v25 + 16);
      if (!v26)
      {
        goto LABEL_109;
      }
    }

    v27 = 0;
    v36 = 0x697461676976614ELL;
    v37 = MEMORY[0x277D84F70];
    while (2)
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        v38 = MEMORY[0x25F8CE460](v27, v25);
        v39 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
LABEL_103:
          __break(1u);
LABEL_104:
          v47 = v52;
          goto LABEL_110;
        }

LABEL_90:
        v40 = (*(*v38 + 216))();
        if (!*(v40 + 16) || (v41 = specialized __RawDictionaryStorage.find<A>(_:)(v36 + 32, 0xEE00657079546E6FLL), (v42 & 1) == 0))
        {

          goto LABEL_86;
        }

        outlined init with copy of Any(*(v40 + 56) + 32 * v41, &v53);

        if ((swift_dynamicCast() & 1) == 0)
        {

          goto LABEL_86;
        }

        v43 = v36;
        v44 = v37;
        if (v50 == 0x65756E69746E6F43 && v51 == 0xE800000000000000)
        {
        }

        else
        {
          v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v45 & 1) == 0)
          {

            goto LABEL_100;
          }
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v46 = *(v52 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
LABEL_100:
        v37 = v44;
        v36 = v43;
LABEL_86:
        ++v27;
        if (v39 == v26)
        {
          goto LABEL_104;
        }

        continue;
      }

      break;
    }

    if (v27 < *(v25 + 16))
    {
      v38 = *(v25 + 8 * v27 + 32);

      v39 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        goto LABEL_103;
      }

      goto LABEL_90;
    }

    __break(1u);
LABEL_106:
    v29 = MEMORY[0x25F8CE460](0, v26);
LABEL_67:

    (*(*v29 + 120))(&v53, v30);
    v31.n128_f64[0] = v54;
    if (v54 > 3.0)
    {

      return 4;
    }

    if ((v27 & 0x8000000000000000) != 0 || (v27 & 0x4000000000000000) != 0)
    {
      v33 = MEMORY[0x25F8CE500](v27, v31);
    }

    else
    {
      v33 = *(v27 + 16);
    }

    if (v33 < 1)
    {
      v34 = v25 & 0x4000000000000000;
      if (v25 < 0 || v34)
      {
        v35 = MEMORY[0x25F8CE500](v25);
      }

      else
      {
        v35 = *(v25 + 16);
      }

      if (v35 >= 1)
      {
        goto LABEL_112;
      }

      continue;
    }

    break;
  }

LABEL_112:

  return 3;
}

uint64_t static TaskSuccessCalculator.calculateAlarmsTaskSuccess(alarmSignals:)(uint64_t a1)
{
  if (a1 >> 62)
  {
    v23 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v23 = a1;
    }

    v24 = a1;
    v25 = MEMORY[0x25F8CE500](v23);
    a1 = v24;
    if (!v25)
    {
      return 3;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return 3;
  }

  v1 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = a1;
    v4 = MEMORY[0x25F8CE460](0);
    v3 = v4;
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_47;
    }

    v2 = a1;
    v3 = *(a1 + 32);
  }

  v5 = *(*v3 + 216);
  v6 = (v5)(v4);
  if (!*(v6 + 16) || (v7 = specialized __RawDictionaryStorage.find<A>(_:)(0x42646574616E6F64, 0xED00006972695379), (v8 & 1) == 0))
  {
LABEL_20:

LABEL_21:

    return 3;
  }

  outlined init with copy of Any(*(v6 + 56) + 32 * v7, v28);

  result = swift_dynamicCast();
  if ((result & 1) == 0 || v26[0] != 1)
  {
    goto LABEL_21;
  }

  if (v1)
  {
    v10 = MEMORY[0x25F8CE460](1, v2);
LABEL_14:
    v11 = (*(*v10 + 216))();

    if (*(v11 + 16))
    {
      v12 = specialized __RawDictionaryStorage.find<A>(_:)(0x42646574616E6F64, 0xED00006972695379);
      if (v13)
      {
        outlined init with copy of Any(*(v11 + 56) + 32 * v12, v28);

        if (swift_dynamicCast() & 1) == 0 || (v26[0])
        {
          goto LABEL_21;
        }

        if (v1)
        {
          v14 = MEMORY[0x25F8CE460](1, v2);
        }

        else
        {
          v14 = *(v2 + 40);
        }

        v15 = (*(*v14 + 216))();
        if (!*(v15 + 16) || (v16 = specialized __RawDictionaryStorage.find<A>(_:)(0x6564496D72616C61, 0xEF7265696669746ELL), (v17 & 1) == 0))
        {

          return 3;
        }

        outlined init with copy of Any(*(v15 + 56) + 32 * v16, v28);

        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_48;
        }

        v18 = v5();
        if (!*(v18 + 16) || (v19 = specialized __RawDictionaryStorage.find<A>(_:)(0x6564496D72616C61, 0xEF7265696669746ELL), (v20 & 1) == 0))
        {

          return 3;
        }

        outlined init with copy of Any(*(v18 + 56) + 32 * v19, v28);

        if (swift_dynamicCast())
        {
          v21 = HIBYTE(v27) & 0xF;
          if ((v27 & 0x2000000000000000) == 0)
          {
            v21 = *v26 & 0xFFFFFFFFFFFFLL;
          }

          if (v21)
          {
            v22 = HIBYTE(v27) & 0xF;
            if ((v27 & 0x2000000000000000) == 0)
            {
              v22 = *v26 & 0xFFFFFFFFFFFFLL;
            }

            if (v22)
            {

              return 4;
            }
          }
        }

LABEL_47:

LABEL_48:

        goto LABEL_21;
      }
    }

    goto LABEL_20;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
  {
    v10 = *(v2 + 40);

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t static TaskSuccessCalculator.calculateMusicTaskSuccess(musicSignals:)(uint64_t result)
{
  if (result >> 62)
  {
    v9 = result & 0xFFFFFFFFFFFFFF8;
    if (result < 0)
    {
      v9 = result;
    }

    v10 = result;
    v11 = MEMORY[0x25F8CE500](v9);
    result = v10;
    if (!v11)
    {
      return 3;
    }
  }

  else if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return 3;
  }

  if ((result & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x25F8CE460](0, result);
    v1 = v2;
LABEL_6:
    v12[0] = (*(*v1 + 168))(v2);
    v12[1] = v3;
    v13 = 2036427856;
    v14 = 0xE400000000000000;
    lazy protocol witness table accessor for type String and conformance String();
    v4 = StringProtocol.contains<A>(_:)();

    if (v4)
    {
      v6 = (*(*v1 + 216))(v5);
      if (!*(v6 + 16) || (v7 = specialized __RawDictionaryStorage.find<A>(_:)(0x6172754479616C70, 0xEC0000006E6F6974), (v8 & 1) == 0))
      {

        return 4;
      }

      outlined init with copy of Any(*(v6 + 56) + 32 * v7, v12);

      if ((swift_dynamicCast() & 1) == 0 || *&v13 < 10.0)
      {
        return 4;
      }
    }

    else
    {
    }

    return 3;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v1 = *(result + 32);

    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t static TaskSuccessCalculator.calculateTranscriptTaskSuccess(appIntentSignals:)(uint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    if (a1 >= 0)
    {
      a1 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    result = MEMORY[0x25F8CE500](a1);
    if (!result)
    {
      return 3;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return 3;
    }
  }

  v3 = v1 & 0xC000000000000001;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x25F8CE460](0, v1);
    v4 = v5;
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_38;
    }

    v4 = *(v1 + 32);
  }

  result = (*(*v4 + 168))(v5);
  v6 = result;
  v8 = v7;
  if (v3)
  {
    v9 = MEMORY[0x25F8CE460](1, v1);
    goto LABEL_10;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
  {
    v9 = *(v1 + 40);

LABEL_10:
    v10 = (*(*v9 + 168))();
    v12 = v11;

    if (v6 == v10 && v8 == v12)
    {
    }

    else
    {
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v14 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    v16 = (*(*v4 + 216))(v15);
    if (*(v16 + 16))
    {
      v17 = specialized __RawDictionaryStorage.find<A>(_:)(0x42646574616E6F64, 0xED00006972695379);
      if (v18)
      {
        outlined init with copy of Any(*(v16 + 56) + 32 * v17, v24);

        if ((swift_dynamicCast() & 1) == 0 || v23 != 1)
        {
          goto LABEL_30;
        }

        if (v3)
        {
          v19 = MEMORY[0x25F8CE460](1, v1);
        }

        else
        {
          v19 = *(v1 + 40);
        }

        v20 = (*(*v19 + 216))();

        if (*(v20 + 16))
        {
          v21 = specialized __RawDictionaryStorage.find<A>(_:)(0x42646574616E6F64, 0xED00006972695379);
          if (v22)
          {
            outlined init with copy of Any(*(v20 + 56) + 32 * v21, v24);

            if ((swift_dynamicCast() & 1) != 0 && (v23 & 1) == 0)
            {
              return 4;
            }

            return 3;
          }
        }
      }
    }

LABEL_30:

    return 3;
  }

LABEL_38:
  __break(1u);
  return result;
}

uint64_t ExtendedAlarmSignalFactory.convertBmEventToSignal(bmEvent:siriUISession:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v55 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v55 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v55 - v20;
  if ([a1 eventType] == 6)
  {
    v56 = a1;
    v61 = MEMORY[0x277D84F98];
    Date.init(timeIntervalSinceReferenceDate:)();
    (*(v5 + 56))(v21, 0, 1, v4);
    v22 = *(v5 + 16);
    v22(v14, a2, v4);
    v23 = type metadata accessor for SiriUISession(0);
    v22(v12, a2 + *(v23 + 20), v4);
    outlined init with copy of Date?(v21, v19);
    v24 = (*(v5 + 48))(v19, 1, v4);
    if (v24 == 1)
    {
      v44 = *(v5 + 8);
      v44(v12, v4);
      v44(v14, v4);
      outlined destroy of Date?(v21, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      outlined destroy of Date?(v19, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v36 = 0x3FF0000000000000;
      v26 = 0;
      v30 = 0.0;
      v37 = 0.0;
    }

    else
    {
      (*(v5 + 32))(v9, v19, v4);
      Date.timeIntervalSinceReferenceDate.getter();
      v26 = v25;
      Date.timeIntervalSinceReferenceDate.getter();
      v28 = v27;
      Date.timeIntervalSinceReferenceDate.getter();
      v30 = v28 - v29;
      Date.timeIntervalSinceReferenceDate.getter();
      v32 = v31;
      Date.timeIntervalSinceReferenceDate.getter();
      v34 = v33;
      v35 = *(v5 + 8);
      v35(v9, v4);
      v35(v12, v4);
      v35(v14, v4);
      outlined destroy of Date?(v21, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v36 = 0;
      v37 = v32 - v34;
    }

    v60 = MEMORY[0x277D839B0];
    LOBYTE(v59) = v30 < 0.0;
    outlined init with take of Any(&v59, v58);
    v45 = v61;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v57 = v45;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v58, 0x42646574616E6F64, 0xED00006972695379, isUniquelyReferenced_nonNull_native);
    v47 = v57;
    v61 = v57;
    v48 = [v56 alarmID];
    if (v48)
    {
      v49 = v48;
      v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v51;

      v60 = MEMORY[0x277D837D0];
      *&v59 = v50;
      *(&v59 + 1) = v52;
      outlined init with take of Any(&v59, v58);
      v53 = swift_isUniquelyReferenced_nonNull_native();
      v57 = v47;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v58, 0x6564496D72616C61, 0xEF7265696669746ELL, v53);
      v54 = v57;
    }

    else
    {
      specialized Dictionary._Variant.removeValue(forKey:)(0x6564496D72616C61, 0xEF7265696669746ELL, &v59);
      outlined destroy of Date?(&v59, &_sypSgMd, &_sypSgMR);
      v54 = v61;
    }

    type metadata accessor for Signal();
    result = swift_allocObject();
    *(result + 16) = v26;
    *(result + 24) = v30;
    *(result + 32) = v37;
    *(result + 40) = 0;
    *(result + 48) = v36;
    *(result + 56) = v24 != 1;
    *(result + 64) = 0x6D72616C41;
    *(result + 72) = 0xE500000000000000;
    *(result + 80) = 0xD000000000000011;
    *(result + 88) = 0x800000025ED7FC80;
    *(result + 96) = 1;
    *(result + 104) = v54;
  }

  else
  {
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, static Logger.engagement);
    v39 = a1;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 67109120;
      *(v42 + 4) = [v39 0x279A52678];

      _os_log_impl(&dword_25ECEC000, v40, v41, "This eventType: %d is not for deletion", v42, 8u);
      MEMORY[0x25F8CEE50](v42, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  return result;
}

uint64_t ExtendedAlarmSignalFactory.convertBmEventToEngagementFeatureSet(bmEvent:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v4 = v3;
  v8 = type metadata accessor for ProtoAlarmTaskFeatureSet();
  v64 = *(v8 - 8);
  v65 = v8;
  v9 = *(v64 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v61 - v13;
  v15 = type metadata accessor for ProtoTaskFeatureSet();
  v62 = *(v15 - 8);
  v63 = v15;
  v16 = *(v62 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v61 - v20;
  v22 = type metadata accessor for ProtoTaskEngagementType();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = type metadata accessor for ProtoTaskEngagementFeatureSet();
  v68 = *(v24 - 8);
  v69 = v24;
  v25 = *(v68 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for ReliabilityCategory();
  v66 = *(v28 - 8);
  v67 = v28;
  v29 = *(v66 + 64);
  MEMORY[0x28223BE20](v28);
  v31 = &v61 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 eventType] != 6)
  {
    v38 = a2;
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    __swift_project_value_buffer(v39, static Logger.engagement);
    v71 = 0;
    v72 = 0xE000000000000000;
    _StringGuts.grow(_:)(38);

    v71 = 0xD000000000000010;
    v72 = 0x800000025ED7FCE0;
    v70 = [a1 eventType];
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x25F8CE090](v40);

    MEMORY[0x25F8CE090](0xD000000000000014, 0x800000025ED7FD00);
    v42 = v71;
    v41 = v72;
    v43 = *MEMORY[0x277D616C0];
    v44 = type metadata accessor for AlarmEventDataIssues();
    (*(*(v44 - 8) + 104))(v31, v43, v44);
    v46 = v66;
    v45 = v67;
    (*(v66 + 104))(v31, *MEMORY[0x277D61668], v67);

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v71 = v50;
      *v49 = 136315138;
      *(v49 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v41, &v71);
      _os_log_impl(&dword_25ECEC000, v47, v48, "%s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x25F8CEE50](v50, -1, -1);
      MEMORY[0x25F8CEE50](v49, -1, -1);
    }

    type metadata accessor for SiriTaskEngagementUtils();
    v51 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
    MEMORY[0x25F8CDB30](v31, v51, v52);

    (*(v46 + 8))(v31, v45);
    v53 = 1;
    v54 = v38;
    v56 = v68;
    v55 = v69;
    return (*(v56 + 56))(v54, v53, 1, v55);
  }

  result = ProtoTaskEngagementFeatureSet.init()();
  v33 = round(a3 * 1000.0);
  v34 = 0.0;
  if (v33 < 0.0)
  {
LABEL_10:
    v35 = a2;
    ProtoTaskEngagementFeatureSet.startTimestampMs.setter();
    (*(*v4 + 104))([a1 eventType]);
    ProtoTaskEngagementFeatureSet.engagementType.setter();
    ProtoTaskFeatureSet.init()();
    ProtoAlarmTaskFeatureSet.init()();
    v36 = [a1 alarmID];
    if (v36)
    {
      v37 = v36;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    ProtoAlarmTaskFeatureSet.alarmIdentifier.setter();
    v58 = v64;
    v57 = v65;
    (*(v64 + 16))(v12, v14, v65);
    ProtoTaskFeatureSet.alarmFeatureSet.setter();
    v60 = v62;
    v59 = v63;
    (*(v62 + 16))(v19, v21, v63);
    ProtoTaskEngagementFeatureSet.featureSet.setter();
    (*(v58 + 8))(v14, v57);
    (*(v60 + 8))(v21, v59);
    v56 = v68;
    v55 = v69;
    v54 = v35;
    (*(v68 + 32))(v35, v27, v69);
    v53 = 0;
    return (*(v56 + 56))(v54, v53, 1, v55);
  }

  if ((*&v33 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    v34 = v33;
  }

  if ((~*&v33 & 0x7FF0000000000000) != 0)
  {
    v34 = v33;
  }

  if ((*&v34 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (v34 <= -1.0)
    {
      __break(1u);
    }

    else if (v34 < 1.84467441e19)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void ExtendedAlarmSignalFactory.processBiomeEventsToSignals(bmEvents:siriUISession:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a2;
  v29[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriTaskEngagement05ProtobC10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtobC10FeatureSetVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v29 - v7;
  v9 = type metadata accessor for ProtoTaskEngagementFeatureSet();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v37 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v36 = v29 - v14;
  v15 = MEMORY[0x277D84F90];
  v41 = MEMORY[0x277D84F90];
  v16 = *(a1 + 16);
  if (v16)
  {
    v17 = *(*v3 + 80);
    v38 = *v3 + 80;
    v39 = v17;
    v34 = (v13 + 32);
    v35 = (v13 + 48);
    v30 = (v13 + 16);
    v31 = v13;
    v29[1] = v13 + 8;
    v18 = (a1 + 40);
    v19 = MEMORY[0x277D84F90];
    v32 = v3;
    do
    {
      v20 = *v18;
      v21 = *(v18 - 1);
      if (v39(v20))
      {

        MEMORY[0x25F8CE160](v22);
        if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v19 = v41;
        ExtendedAlarmSignalFactory.convertBmEventToEngagementFeatureSet(bmEvent:)(v21, v8, v20);
        if ((*v35)(v8, 1, v9) == 1)
        {

          outlined destroy of Date?(v8, &_s18SiriTaskEngagement05ProtobC10FeatureSetVSgMd, &_s18SiriTaskEngagement05ProtobC10FeatureSetVSgMR);
        }

        else
        {
          v33 = v19;
          v23 = *v34;
          v24 = v36;
          (*v34)(v36, v8, v9);
          (*v30)(v37, v24, v9);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
          }

          v26 = *(v15 + 2);
          v25 = *(v15 + 3);
          if (v26 >= v25 >> 1)
          {
            v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v25 > 1, v26 + 1, 1, v15);
          }

          v27 = v31;
          (*(v31 + 8))(v36, v9);
          *(v15 + 2) = v26 + 1;
          v23(&v15[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v26], v37, v9);
          v19 = v33;
        }
      }

      else
      {
      }

      v18 += 2;
      --v16;
    }

    while (v16);
  }

  else
  {
    v19 = MEMORY[0x277D84F90];
  }

  v28 = v29[0];
  *v29[0] = v19;
  *(v28 + 8) = v15;
}

uint64_t ExtendedAlarmSignalFactory.getTaskEngagementType(eventType:)@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ProtoTaskEngagementType();
  v5 = *(*(v4 - 8) + 104);
  if (a1 > 6)
  {
    v6 = MEMORY[0x277D61528];
  }

  else
  {
    v6 = qword_279A51778[a1];
  }

  v7 = *v6;

  return v5(a2, v7, v4);
}

uint64_t PSEPhoneticEmbedder.__allocating_init()()
{
  v0 = type metadata accessor for PhoneticEmbedder.LoadingOption();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PhoneticEmbedder.InputFormat();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Locale();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = swift_allocObject();
  Locale.init(identifier:)();
  (*(v6 + 104))(v9, *MEMORY[0x277CDCC88], v5);
  (*(v1 + 104))(v4, *MEMORY[0x277CDCC90], v0);
  v13 = type metadata accessor for PhoneticEmbedder();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *(v12 + 16) = PhoneticEmbedder.init(locale:clientID:inputFormat:loadingOption:)();
  return v12;
}

uint64_t PSEPhoneticEmbedder.init()()
{
  v1 = v0;
  v2 = type metadata accessor for PhoneticEmbedder.LoadingOption();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PhoneticEmbedder.InputFormat();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  Locale.init(identifier:)();
  (*(v8 + 104))(v11, *MEMORY[0x277CDCC88], v7);
  (*(v3 + 104))(v6, *MEMORY[0x277CDCC90], v2);
  v14 = type metadata accessor for PhoneticEmbedder();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  *(v1 + 16) = PhoneticEmbedder.init(locale:clientID:inputFormat:loadingOption:)();
  return v1;
}

Swift::Double_optional __swiftcall PSEPhoneticEmbedder.distanceBetween(siriContact:userContact:)(Swift::String siriContact, Swift::String userContact)
{
  object = userContact._object;
  countAndFlagsBits = userContact._countAndFlagsBits;
  v5 = siriContact._object;
  v6 = siriContact._countAndFlagsBits;
  v7 = type metadata accessor for ReliabilityCategory();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_25ED7C970;
  *(v9 + 32) = v6;
  *(v9 + 40) = v5;
  *(v9 + 48) = countAndFlagsBits;
  *(v9 + 56) = object;
  v10 = *(*v2 + 104);

  v11 = v10(v9);

  if (v11[2] < 2uLL)
  {

    v16 = 0;
  }

  else
  {
    v12 = v11[4];
    v13 = v11[5];

    v14 = COERCE_UNSIGNED_INT64((*(*v2 + 112))(v12, v13));

    v16 = v14;
  }

  result.value = v15;
  result.is_nil = v16;
  return result;
}

uint64_t PSEPhoneticEmbedder.embedding(queries:)()
{
  v2 = v1;
  v3 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySdGGMd, &_ss23_ContiguousArrayStorageCySaySdGGMR);
  v4 = swift_allocObject();
  *(v3 + 16) = v4;
  *(v4 + 16) = xmmword_25ED7C750;
  *(v4 + 32) = MEMORY[0x277D84F90];
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = *(v0 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v3;

  PhoneticEmbedder.embeddings(of:completion:)();
  if (v1)
  {
  }

  else
  {

    swift_beginAccess();
    v8 = *(v5 + 16);
    if (v8)
    {
      swift_willThrow();
      v9 = v8;
    }

    else
    {
      swift_beginAccess();
      v2 = *(v3 + 16);
    }
  }

  return v2;
}

void closure #1 in PSEPhoneticEmbedder.embedding(queries:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = *(a3 + 16);
  *(a3 + 16) = a2;
  v9 = a2;

  if (a1)
  {
    swift_beginAccess();
    v10 = *(a4 + 16);
    *(a4 + 16) = a1;
  }
}

Swift::Double __swiftcall PSEPhoneticEmbedder.distanceBetween(sourceVector:targetVector:)(Swift::OpaquePointer sourceVector, Swift::OpaquePointer targetVector)
{
  v2 = *(sourceVector._rawValue + 2);
  if (v2 == *(targetVector._rawValue + 2))
  {
    if (!v2)
    {
      v4 = 0.0;
      goto LABEL_16;
    }

    if (v2 >= 4)
    {
      v3 = v2 & 0x7FFFFFFFFFFFFFFCLL;
      v10 = (sourceVector._rawValue + 48);
      v11 = (targetVector._rawValue + 48);
      v4 = 0.0;
      v12 = v2 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v13 = vsubq_f64(v10[-1], v11[-1]);
        v14 = vsubq_f64(*v10, *v11);
        v15 = vmulq_f64(v13, v13);
        v16 = vmulq_f64(v14, v14);
        v4 = v4 + v15.f64[0] + v15.f64[1] + v16.f64[0] + v16.f64[1];
        v10 += 2;
        v11 += 2;
        v12 -= 4;
      }

      while (v12);
      if (v2 == v3)
      {
LABEL_16:

        return sqrt(v4);
      }
    }

    else
    {
      v3 = 0;
      v4 = 0.0;
    }

    v17 = v2 - v3;
    v18 = 8 * v3 + 32;
    v19 = (targetVector._rawValue + v18);
    v20 = (sourceVector._rawValue + v18);
    do
    {
      v21 = *v20++;
      v22 = v21;
      v23 = *v19++;
      v4 = v4 + (v22 - v23) * (v22 - v23);
      --v17;
    }

    while (v17);
    goto LABEL_16;
  }

  if (one-time initialization token for engagement != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.engagement);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_25ECEC000, v6, v7, "Vector sizes are different", v8, 2u);
    MEMORY[0x25F8CEE50](v8, -1, -1);
  }

  return 0.0;
}

uint64_t PSEPhoneticEmbedder.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t PSEPhoneticEmbedder.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t specialized static PSEPhoneticEmbedder.normalizedString(from:)()
{
  String.lowercased()();
  v0 = String.Iterator.next()();
  if (v0.value._object)
  {
    countAndFlagsBits = v0.value._countAndFlagsBits;
    object = v0.value._object;
    do
    {
      if ((Character.isSymbol.getter() & 1) == 0)
      {
        MEMORY[0x25F8CE080](countAndFlagsBits, object);
      }

      v3 = String.Iterator.next()();
      countAndFlagsBits = v3.value._countAndFlagsBits;
      object = v3.value._object;
    }

    while (v3.value._object);
  }

  return 0;
}

uint64_t TranscriptStep.clientGroupIdentifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t TranscriptStep.clientGroupIdentifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 72);
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

uint64_t TranscriptStep.eventType.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t TranscriptStep.eventType.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 88);
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
}

uint64_t key path setter for TranscriptStep.eventTime : TranscriptStep(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  return (*(**a2 + 256))(v7);
}

uint64_t TranscriptStep.__allocating_init(sessionId:clientRequestId:clientApplicationId:eventType:eventTime:clientGroupIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v19 = *(v11 + 48);
  v20 = *(v11 + 52);
  v21 = swift_allocObject();
  *(v21 + 64) = 0u;
  *(v21 + 80) = 0u;
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  *(v21 + 32) = a3;
  *(v21 + 40) = a4;
  *(v21 + 48) = a5;
  *(v21 + 56) = a6;
  swift_beginAccess();
  *(v21 + 80) = a7;
  *(v21 + 88) = a8;
  v22 = OBJC_IVAR____TtC18PostSiriEngagement14TranscriptStep_eventTime;
  v23 = type metadata accessor for Date();
  (*(*(v23 - 8) + 32))(v21 + v22, a9, v23);
  swift_beginAccess();
  *(v21 + 64) = a10;
  *(v21 + 72) = a11;
  return v21;
}

uint64_t TranscriptStep.init(sessionId:clientRequestId:clientApplicationId:eventType:eventTime:clientGroupIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v11 + 64) = 0u;
  *(v11 + 80) = 0u;
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3;
  *(v11 + 40) = a4;
  *(v11 + 48) = a5;
  *(v11 + 56) = a6;
  swift_beginAccess();
  *(v11 + 80) = a7;
  *(v11 + 88) = a8;
  v14 = OBJC_IVAR____TtC18PostSiriEngagement14TranscriptStep_eventTime;
  v15 = type metadata accessor for Date();
  (*(*(v15 - 8) + 32))(v11 + v14, a9, v15);
  swift_beginAccess();
  *(v11 + 64) = a10;
  *(v11 + 72) = a11;
  return v11;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance TranscriptStep.CodingKeys()
{
  v1 = *v0;
  v2 = 0x496E6F6973736573;
  v3 = 0xD000000000000015;
  v4 = 0x707954746E657665;
  if (v1 != 4)
  {
    v4 = 0x6D6954746E657665;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6552746E65696C63;
  if (v1 != 1)
  {
    v5 = 0xD000000000000013;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TranscriptStep.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized TranscriptStep.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TranscriptStep.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TranscriptStep.CodingKeys and conformance TranscriptStep.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TranscriptStep.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TranscriptStep.CodingKeys and conformance TranscriptStep.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

char *TranscriptStep.deinit()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 5);

  v3 = *(v0 + 7);

  v4 = *(v0 + 9);

  v5 = *(v0 + 11);

  v6 = OBJC_IVAR____TtC18PostSiriEngagement14TranscriptStep_eventTime;
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 8))(&v0[v6], v7);
  return v0;
}

uint64_t TranscriptStep.__deallocating_deinit()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 5);

  v3 = *(v0 + 7);

  v4 = *(v0 + 9);

  v5 = *(v0 + 11);

  v6 = OBJC_IVAR____TtC18PostSiriEngagement14TranscriptStep_eventTime;
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 8))(&v0[v6], v7);
  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v8, v9);
}

uint64_t TranscriptStep.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v23 = *(v4 - 8);
  v5 = *(v23 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18PostSiriEngagement14TranscriptStepC10CodingKeys33_402B16CC62EEDA558AAEA73AC4ED505FLLOGMd, &_ss22KeyedEncodingContainerVy18PostSiriEngagement14TranscriptStepC10CodingKeys33_402B16CC62EEDA558AAEA73AC4ED505FLLOGMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TranscriptStep.CodingKeys and conformance TranscriptStep.CodingKeys();
  v14 = dispatch thunk of Encoder.container<A>(keyedBy:)();
  (*(*v2 + 128))(v14);
  v30 = 0;
  v15 = v24;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v15)
  {
    (*(v9 + 8))(v12, v8);
  }

  else
  {
    v24 = v7;

    (*(*v2 + 152))(v16);
    v29 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();

    (*(*v2 + 176))(v18);
    v28 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();

    (*(*v2 + 200))(v19);
    v27 = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();

    (*(*v2 + 224))(v20);
    v26 = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();

    v22 = v24;
    (*(*v2 + 248))(v21);
    v25 = 5;
    lazy protocol witness table accessor for type Date and conformance Date();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v23 + 8))(v22, v4);
    return (*(v9 + 8))(v12, v8);
  }
}

unint64_t lazy protocol witness table accessor for type TranscriptStep.CodingKeys and conformance TranscriptStep.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TranscriptStep.CodingKeys and conformance TranscriptStep.CodingKeys;
  if (!lazy protocol witness table cache variable for type TranscriptStep.CodingKeys and conformance TranscriptStep.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TranscriptStep.CodingKeys and conformance TranscriptStep.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TranscriptStep.CodingKeys and conformance TranscriptStep.CodingKeys;
  if (!lazy protocol witness table cache variable for type TranscriptStep.CodingKeys and conformance TranscriptStep.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TranscriptStep.CodingKeys and conformance TranscriptStep.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TranscriptStep.CodingKeys and conformance TranscriptStep.CodingKeys;
  if (!lazy protocol witness table cache variable for type TranscriptStep.CodingKeys and conformance TranscriptStep.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TranscriptStep.CodingKeys and conformance TranscriptStep.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TranscriptStep.CodingKeys and conformance TranscriptStep.CodingKeys;
  if (!lazy protocol witness table cache variable for type TranscriptStep.CodingKeys and conformance TranscriptStep.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TranscriptStep.CodingKeys and conformance TranscriptStep.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date and conformance Date()
{
  result = lazy protocol witness table cache variable for type Date and conformance Date;
  if (!lazy protocol witness table cache variable for type Date and conformance Date)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date and conformance Date);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date and conformance Date;
  if (!lazy protocol witness table cache variable for type Date and conformance Date)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date and conformance Date);
  }

  return result;
}

uint64_t TranscriptStep.sessionId.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t TranscriptStep.sessionId.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t TranscriptStep.clientRequestId.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t TranscriptStep.clientRequestId.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t TranscriptStep.clientApplicationId.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t TranscriptStep.clientApplicationId.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 56);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t TranscriptTask.eventTypes.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
}

uint64_t TranscriptTask.eventTypes.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 64);
  *(v1 + 64) = a1;
}

uint64_t key path setter for TranscriptTask.startTime : TranscriptTask(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  return (*(**a2 + 232))(v7);
}

uint64_t key path setter for TranscriptTask.endTime : TranscriptTask(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  return (*(**a2 + 256))(v7);
}

char *TranscriptTask.__allocating_init(uiSessionId:sessionId:clientRequestId:eventTypes:startTime:endTime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = *(v9 + 48);
  v19 = *(v9 + 52);
  v20 = swift_allocObject();
  *(v20 + 2) = a1;
  *(v20 + 3) = a2;
  *(v20 + 4) = a3;
  *(v20 + 5) = a4;
  *(v20 + 6) = a5;
  *(v20 + 7) = a6;
  *(v20 + 8) = a7;
  v21 = OBJC_IVAR____TtC18PostSiriEngagement14TranscriptTask_startTime;
  v22 = type metadata accessor for Date();
  v23 = *(*(v22 - 8) + 32);
  v23(&v20[v21], a8, v22);
  v23(&v20[OBJC_IVAR____TtC18PostSiriEngagement14TranscriptTask_endTime], a9, v22);
  return v20;
}

char *TranscriptTask.init(uiSessionId:sessionId:clientRequestId:eventTypes:startTime:endTime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 2) = a1;
  *(v9 + 3) = a2;
  *(v9 + 4) = a3;
  *(v9 + 5) = a4;
  *(v9 + 6) = a5;
  *(v9 + 7) = a6;
  *(v9 + 8) = a7;
  v11 = OBJC_IVAR____TtC18PostSiriEngagement14TranscriptTask_startTime;
  v12 = type metadata accessor for Date();
  v13 = *(*(v12 - 8) + 32);
  v13(&v9[v11], a8, v12);
  v13(&v9[OBJC_IVAR____TtC18PostSiriEngagement14TranscriptTask_endTime], a9, v12);
  return v9;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance TranscriptTask.CodingKeys()
{
  v1 = *v0;
  v2 = 0x6F69737365536975;
  v3 = 0x707954746E657665;
  v4 = 0x6D69547472617473;
  if (v1 != 4)
  {
    v4 = 0x656D6954646E65;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x496E6F6973736573;
  if (v1 != 1)
  {
    v5 = 0x6552746E65696C63;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TranscriptTask.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized TranscriptTask.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TranscriptTask.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TranscriptTask.CodingKeys and conformance TranscriptTask.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TranscriptTask.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TranscriptTask.CodingKeys and conformance TranscriptTask.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

char *TranscriptTask.deinit()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 5);

  v3 = *(v0 + 7);

  v4 = *(v0 + 8);

  v5 = OBJC_IVAR____TtC18PostSiriEngagement14TranscriptTask_startTime;
  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 8);
  v7(&v0[v5], v6);
  v7(&v0[OBJC_IVAR____TtC18PostSiriEngagement14TranscriptTask_endTime], v6);
  return v0;
}

uint64_t TranscriptTask.__deallocating_deinit()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 5);

  v3 = *(v0 + 7);

  v4 = *(v0 + 8);

  v5 = OBJC_IVAR____TtC18PostSiriEngagement14TranscriptTask_startTime;
  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 8);
  v7(&v0[v5], v6);
  v7(&v0[OBJC_IVAR____TtC18PostSiriEngagement14TranscriptTask_endTime], v6);
  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v8, v9);
}

uint64_t TranscriptTask.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v33 = *(v4 - 8);
  v34 = v4;
  v5 = *(v33 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18PostSiriEngagement14TranscriptTaskC10CodingKeys33_402B16CC62EEDA558AAEA73AC4ED505FLLOGMd, &_ss22KeyedEncodingContainerVy18PostSiriEngagement14TranscriptTaskC10CodingKeys33_402B16CC62EEDA558AAEA73AC4ED505FLLOGMR);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v31 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TranscriptTask.CodingKeys and conformance TranscriptTask.CodingKeys();
  v17 = dispatch thunk of Encoder.container<A>(keyedBy:)();
  (*(*v2 + 128))(v17);
  v42 = 0;
  v18 = v35;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v18)
  {
    (*(v12 + 8))(v15, v11);
  }

  else
  {
    v35 = v10;
    v32 = v8;
    v19 = v34;

    (*(*v2 + 152))(v20);
    v41 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();

    (*(*v2 + 176))(v21);
    v40 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();

    v36 = (*(*v2 + 200))(v22);
    v39 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance <A> [A]();
    KeyedEncodingContainer.encode<A>(_:forKey:)();

    v25 = v35;
    (*(*v2 + 224))(v23);
    v38 = 4;
    v31[2] = lazy protocol witness table accessor for type Date and conformance Date();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v31[1] = v11;
    v26 = v25;
    v27 = *(v33 + 8);
    v28 = v27(v26, v19);
    v29 = *(*v2 + 248);
    v30 = v32;
    v29(v28);
    v37 = 5;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v27(v30, v19);
    return (*(v12 + 8))(0, v11);
  }
}

unint64_t lazy protocol witness table accessor for type TranscriptTask.CodingKeys and conformance TranscriptTask.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TranscriptTask.CodingKeys and conformance TranscriptTask.CodingKeys;
  if (!lazy protocol witness table cache variable for type TranscriptTask.CodingKeys and conformance TranscriptTask.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TranscriptTask.CodingKeys and conformance TranscriptTask.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TranscriptTask.CodingKeys and conformance TranscriptTask.CodingKeys;
  if (!lazy protocol witness table cache variable for type TranscriptTask.CodingKeys and conformance TranscriptTask.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TranscriptTask.CodingKeys and conformance TranscriptTask.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TranscriptTask.CodingKeys and conformance TranscriptTask.CodingKeys;
  if (!lazy protocol witness table cache variable for type TranscriptTask.CodingKeys and conformance TranscriptTask.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TranscriptTask.CodingKeys and conformance TranscriptTask.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TranscriptTask.CodingKeys and conformance TranscriptTask.CodingKeys;
  if (!lazy protocol witness table cache variable for type TranscriptTask.CodingKeys and conformance TranscriptTask.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TranscriptTask.CodingKeys and conformance TranscriptTask.CodingKeys);
  }

  return result;
}

uint64_t Sequence<>.dedupe()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a1 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = static Array._allocateUninitialized(_:)();
  if (MEMORY[0x25F8CE210](v13, AssociatedTypeWitness))
  {
    v14 = specialized Set.init(_nonEmptyArrayLiteral:)(v13, AssociatedTypeWitness, a3);
  }

  else
  {
    v14 = MEMORY[0x277D84FA0];
  }

  v19 = v14;
  v15 = (*(v8 + 16))(v11, v4, a1);
  MEMORY[0x28223BE20](v15);
  *(&v18 - 4) = a1;
  *(&v18 - 3) = a2;
  *(&v18 - 2) = a3;
  *(&v18 - 1) = &v19;
  v16 = Sequence.filter(_:)();

  return v16;
}

uint64_t closure #1 in Sequence<>.dedupe()(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  (*(v3 + 16))(v7, a1, AssociatedTypeWitness);
  type metadata accessor for Set();
  v10 = Set.insert(_:)();
  (*(v3 + 8))(v9, AssociatedTypeWitness);
  return v10 & 1;
}

uint64_t _sSD8grouping2bySDyxSay7ElementQyd__GGqd__n_xADKXEtKcAERs_STRd__lufCSS_Say18PostSiriEngagement14TranscriptStepCGTt1g504_s18de12Engagement23g71SignalFactoryC05buildD5Tasks15siriUISessionId8bmEventsSayAA0D4TaskCGSS_s50So018BMIntelligenceFlowD15DatastreamEventCGtFSSAA0uH7CXEfU0_Tf1nc_nTf4g_n(uint64_t a1)
{
  v29 = MEMORY[0x277D84F98];
  if (a1 >> 62)
  {
LABEL_24:
    if (a1 < 0)
    {
      v26 = a1;
    }

    else
    {
      v26 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    v2 = MEMORY[0x25F8CE500](v26);
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v4 = MEMORY[0x277D84F98];
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x25F8CE460](v3, a1);
          v8 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_20;
          }
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v7 = *(a1 + 8 * v3 + 32);

          v8 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_20:
            __break(1u);
LABEL_21:
            __break(1u);
LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }
        }

        v28 = v8;
        v9 = (*(*v7 + 152))();
        v11 = v10;
        v13 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v10);
        v14 = v4[2];
        v15 = (v12 & 1) == 0;
        v16 = v14 + v15;
        if (__OFADD__(v14, v15))
        {
          goto LABEL_22;
        }

        v17 = v12;
        if (v4[3] < v16)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, 1);
          v4 = v29;
          v18 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v11);
          if ((v17 & 1) != (v19 & 1))
          {
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }

          v13 = v18;
        }

        if (v17)
        {

          v6 = (v4[7] + 8 * v13);
          MEMORY[0x25F8CE160](v5);
          if (*((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v25 = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
          v20 = swift_allocObject();
          *(v20 + 16) = xmmword_25ED7ACC0;
          *(v20 + 32) = v7;
          v4[(v13 >> 6) + 8] |= 1 << v13;
          v21 = (v4[6] + 16 * v13);
          *v21 = v9;
          v21[1] = v11;
          *(v4[7] + 8 * v13) = v20;
          v22 = v4[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_23;
          }

          v4[2] = v24;
        }

        ++v3;
        if (v28 == v2)
        {
          return v4;
        }
      }
    }
  }

  return MEMORY[0x277D84F98];
}

uint64_t specialized TranscriptSignalFactory.convertBiomeEventToTranscriptStep(bmEvent:)(void *a1)
{
  v2 = type metadata accessor for ReliabilityCategory();
  v132 = *(v2 - 8);
  v3 = *(v132 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v123 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v123 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v123 - v11;
  MEMORY[0x28223BE20](v10);
  v129 = &v123 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v123 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v123 - v19;
  v21 = type metadata accessor for Date();
  v131 = *(v21 - 8);
  v22 = *(v131 + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v123 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v123 - v26;
  v28 = [a1 absoluteTimestamp];
  if (!v28)
  {
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static Logger.engagement);
    v35 = *MEMORY[0x277D61730];
    v36 = type metadata accessor for TranscriptEventDataIssues();
    (*(*(v36 - 8) + 104))(v6, v35, v36);
    v37 = v132;
    (*(v132 + 104))(v6, *MEMORY[0x277D61690], v2);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = v2;
      v42 = swift_slowAlloc();
      v133[0] = v42;
      *v40 = 136315138;
      *(v40 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000023, 0x800000025ED7FEE0, v133);
      _os_log_impl(&dword_25ECEC000, v38, v39, "%s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      v43 = v42;
      v2 = v41;
      v37 = v132;
      MEMORY[0x25F8CEE50](v43, -1, -1);
      MEMORY[0x25F8CEE50](v40, -1, -1);
    }

    type metadata accessor for SiriTaskEngagementUtils();
    v44 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
    MEMORY[0x25F8CDB30](v6, v44, v45);

    (*(v37 + 8))(v6, v2);
    return 0;
  }

  v130 = v21;
  v29 = v28;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v30 = [a1 identifiers];
  if (!v30)
  {
    goto LABEL_13;
  }

  v127 = v27;
  v31 = v30;
  v32 = [v30 sessionId];

  v128 = v2;
  if (v32)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v33 = 0;
  }

  else
  {
    v33 = 1;
  }

  v46 = type metadata accessor for UUID();
  v47 = *(v46 - 8);
  (*(v47 + 56))(v18, v33, 1, v46);
  outlined init with take of UUID?(v18, v20);
  if ((*(v47 + 48))(v20, 1, v46) == 1)
  {
    outlined destroy of UUID?(v20);
    v27 = v127;
    v2 = v128;
LABEL_13:
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    __swift_project_value_buffer(v48, static Logger.engagement);
    v49 = *MEMORY[0x277D61728];
    v50 = type metadata accessor for TranscriptEventDataIssues();
    (*(*(v50 - 8) + 104))(v9, v49, v50);
    v51 = v132;
    (*(v132 + 104))(v9, *MEMORY[0x277D61690], v2);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = v2;
      v56 = swift_slowAlloc();
      v133[0] = v56;
      *v54 = 136315138;
      *(v54 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x800000025ED7FF10, v133);
      _os_log_impl(&dword_25ECEC000, v52, v53, "%s", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v56);
      v57 = v56;
      v2 = v55;
      MEMORY[0x25F8CEE50](v57, -1, -1);
      MEMORY[0x25F8CEE50](v54, -1, -1);
    }

    v58 = v130;
    type metadata accessor for SiriTaskEngagementUtils();
    v59 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
    MEMORY[0x25F8CDB30](v9, v59, v60);

    (*(v51 + 8))(v9, v2);
LABEL_29:
    (*(v131 + 8))(v27, v58);
    return 0;
  }

  v61 = UUID.uuidString.getter();
  v63 = v62;
  (*(v47 + 8))(v20, v46);
  v64 = [a1 identifiers];
  if (!v64 || (v65 = v64, v66 = [v64 clientApplicationId], v65, !v66))
  {

    v81 = v128;
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v82 = type metadata accessor for Logger();
    __swift_project_value_buffer(v82, static Logger.engagement);
    v83 = *MEMORY[0x277D61738];
    v84 = type metadata accessor for TranscriptEventDataIssues();
    (*(*(v84 - 8) + 104))(v12, v83, v84);
    (*(v132 + 104))(v12, *MEMORY[0x277D61690], v81);
    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.error.getter();
    v87 = os_log_type_enabled(v85, v86);
    v27 = v127;
    if (v87)
    {
      v88 = swift_slowAlloc();
      v89 = v81;
      v90 = swift_slowAlloc();
      v133[0] = v90;
      *v88 = 136315138;
      *(v88 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x800000025ED7FF30, v133);
      _os_log_impl(&dword_25ECEC000, v85, v86, "%s", v88, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v90);
      v91 = v90;
      v81 = v89;
      MEMORY[0x25F8CEE50](v91, -1, -1);
      MEMORY[0x25F8CEE50](v88, -1, -1);
    }

    v58 = v130;
    type metadata accessor for SiriTaskEngagementUtils();
    v92 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
    MEMORY[0x25F8CDB30](v12, v92, v93);

    (*(v132 + 8))(v12, v81);
    goto LABEL_29;
  }

  v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v69 = v68;

  v70 = [a1 eventType];
  v71 = v128;
  if (!v70)
  {

    v95 = v127;
    if (one-time initialization token for engagement != -1)
    {
      swift_once();
    }

    v96 = type metadata accessor for Logger();
    __swift_project_value_buffer(v96, static Logger.engagement);
    v97 = *MEMORY[0x277D61718];
    v98 = type metadata accessor for TranscriptEventDataIssues();
    v99 = v129;
    (*(*(v98 - 8) + 104))(v129, v97, v98);
    (*(v132 + 104))(v99, *MEMORY[0x277D61690], v71);
    v100 = Logger.logObject.getter();
    v101 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v133[0] = v103;
      *v102 = 136315138;
      *(v102 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x800000025ED7FF50, v133);
      _os_log_impl(&dword_25ECEC000, v100, v101, "%s", v102, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v103);
      MEMORY[0x25F8CEE50](v103, -1, -1);
      MEMORY[0x25F8CEE50](v102, -1, -1);
    }

    v104 = v130;
    type metadata accessor for SiriTaskEngagementUtils();
    v105 = dispatch thunk of static SiriTaskEngagementUtils.formulateSimplifiedReliabilityReasonDescription(reliabilityDescription:)();
    MEMORY[0x25F8CDB30](v99, v105, v106);

    (*(v132 + 8))(v99, v71);
    (*(v131 + 8))(v95, v104);
    return 0;
  }

  v132 = v69;
  v72 = v70;
  v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v128 = v74;
  v129 = v73;

  v75 = [a1 0x279A52978];
  v76 = v127;
  if (v75)
  {
    v77 = v75;
    v78 = [v75 clientRequestId];

    if (v78)
    {
      v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v125 = v80;
      v126 = v79;
    }

    else
    {
      v125 = 0xE000000000000000;
      v126 = 0;
    }
  }

  else
  {
    v125 = 0xE000000000000000;
    v126 = 0;
  }

  v107 = v130;
  (*(v131 + 16))(v25, v76, v130);
  v108 = [a1 0x279A52978];
  v109 = v61;
  if (v108)
  {
    v110 = v108;
    v111 = [v108 clientGroupIdentifier];

    v112 = v67;
    if (v111)
    {
      v124 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v114 = v113;
    }

    else
    {
      v124 = 0;
      v114 = 0;
    }

    v107 = v130;
  }

  else
  {
    v112 = v67;
    v124 = 0;
    v114 = 0;
  }

  v115 = v131;
  (*(v131 + 8))(v76, v107);
  v116 = type metadata accessor for TranscriptStep(0);
  v117 = *(v116 + 48);
  v118 = *(v116 + 52);
  v119 = swift_allocObject();
  *(v119 + 64) = 0u;
  *(v119 + 80) = 0u;
  *(v119 + 16) = v109;
  *(v119 + 24) = v63;
  v120 = v125;
  *(v119 + 32) = v126;
  *(v119 + 40) = v120;
  v121 = v132;
  *(v119 + 48) = v112;
  *(v119 + 56) = v121;
  swift_beginAccess();
  v122 = v128;
  *(v119 + 80) = v129;
  *(v119 + 88) = v122;
  (*(v115 + 32))(v119 + OBJC_IVAR____TtC18PostSiriEngagement14TranscriptStep_eventTime, v25, v107);
  swift_beginAccess();
  result = v119;
  *(v119 + 64) = v124;
  *(v119 + 72) = v114;
  return result;
}

uint64_t specialized TranscriptSignalFactory.buildTranscriptTasks(siriUISessionId:bmEvents:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v88 = a1;
  v89 = a2;
  v90 = type metadata accessor for Date();
  v95 = *(v90 - 8);
  v4 = *(v95 + 64);
  v5 = MEMORY[0x28223BE20](v90);
  v92 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v91 = &v76 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v93 = &v76 - v10;
  MEMORY[0x28223BE20](v9);
  v94 = &v76 - v11;
  v96 = MEMORY[0x277D84F90];
  v97 = MEMORY[0x277D84F90];
  v12 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
    goto LABEL_71;
  }

  v13 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v14 = 0;
  v15 = 0;
  v16 = MEMORY[0x277D84F90];
  while (v13 != v14)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x25F8CE460](v14, a3);
    }

    else
    {
      if (v14 >= *(v12 + 16))
      {
        goto LABEL_69;
      }

      v17 = *(a3 + 8 * v14 + 32);
    }

    v18 = v17;
    v19 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    v20 = specialized TranscriptSignalFactory.convertBiomeEventToTranscriptStep(bmEvent:)(v17);

    ++v14;
    if (v20)
    {
      MEMORY[0x25F8CE160]();
      if (*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v96 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v21 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v16 = v96;
      v14 = v19;
    }
  }

  if (v16 >> 62)
  {
    if (v16 < 0)
    {
      v71 = v16;
    }

    else
    {
      v71 = v16 & 0xFFFFFFFFFFFFFF8;
    }

    if (MEMORY[0x25F8CE500](v71))
    {
      goto LABEL_16;
    }
  }

  else if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_16:
    v22 = _sSD8grouping2bySDyxSay7ElementQyd__GGqd__n_xADKXEtKcAERs_STRd__lufCSS_Say18PostSiriEngagement14TranscriptStepCGTt1g504_s18de12Engagement23g71SignalFactoryC05buildD5Tasks15siriUISessionId8bmEventsSayAA0D4TaskCGSS_s50So018BMIntelligenceFlowD15DatastreamEventCGtFSSAA0uH7CXEfU0_Tf1nc_nTf4g_n(v16);

    v23 = 1 << *(v22 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & *(v22 + 64);
    v12 = (v23 + 63) >> 6;
    v26 = (v95 + 32);
    v85 = (v95 + 8);
    v86 = (v95 + 16);

    v27 = 0;
    while (1)
    {
      do
      {
        if (!v25)
        {
          while (1)
          {
            v28 = v27 + 1;
            if (__OFADD__(v27, 1))
            {
              break;
            }

            if (v28 >= v12)
            {

              v96 = specialized Array._copyToContiguousArray()(v68);
              specialized MutableCollection<>.sort(by:)(&v96);
              if (v15)
              {
                goto LABEL_90;
              }

              return v96;
            }

            v25 = *(v22 + 64 + 8 * v28);
            ++v27;
            if (v25)
            {
              v27 = v28;
              goto LABEL_25;
            }
          }

LABEL_70:
          __break(1u);
LABEL_71:
          if (a3 < 0)
          {
            v70 = a3;
          }

          else
          {
            v70 = v12;
          }

          v13 = MEMORY[0x25F8CE500](v70);
          goto LABEL_3;
        }

LABEL_25:
        v29 = __clz(__rbit64(v25));
        v25 &= v25 - 1;
        v30 = (*(v22 + 48) + ((v27 << 10) | (16 * v29)));
        v31 = *v30;
        a3 = v30[1];
        v32 = HIBYTE(a3) & 0xF;
        if ((a3 & 0x2000000000000000) == 0)
        {
          v32 = v31 & 0xFFFFFFFFFFFFLL;
        }
      }

      while (!v32 || !*(v22 + 16));

      v87 = v31;
      v33 = specialized __RawDictionaryStorage.find<A>(_:)(v31, a3);
      if ((v34 & 1) == 0)
      {
        goto LABEL_19;
      }

      v35 = *(*(v22 + 56) + 8 * v33);
      v95 = v35;
      if (v35 >> 62)
      {
        if (v35 >= 0)
        {
          v35 &= 0xFFFFFFFFFFFFFF8uLL;
        }

        v36 = MEMORY[0x25F8CE500](v35);
        v35 = v95;
        if (!v36)
        {
          goto LABEL_19;
        }

LABEL_32:
        v83 = v36;
        v84 = v35 & 0xC000000000000001;
        if ((v35 & 0xC000000000000001) != 0)
        {
          v66 = v35;

          v38 = MEMORY[0x25F8CE460](0, v66);
          v37 = v38;
        }

        else
        {
          if (!*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_87;
          }

          v37 = *(v35 + 32);
        }

        v78 = (*(*v37 + 128))(v38);
        v77 = v39;

        if (v84)
        {
          v40 = MEMORY[0x25F8CE460](0, v95);
        }

        else
        {
          v40 = *(v95 + 32);
        }

        (*(*v40 + 248))();

        v41 = v83 - 1;
        if (__OFSUB__(v83, 1))
        {
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
LABEL_89:
          __break(1u);
LABEL_90:

          __break(1u);
          return result;
        }

        v76 = v15;
        v79 = v26;
        if (v84)
        {
          v15 = v95;
          v42 = MEMORY[0x25F8CE460](v41, v95);
          v81 = v15 & 0xFFFFFFFFFFFFFF8;
        }

        else
        {
          if ((v41 & 0x8000000000000000) != 0)
          {
            goto LABEL_88;
          }

          v81 = v95 & 0xFFFFFFFFFFFFFF8;
          if (v41 >= *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_89;
          }

          v42 = *(v95 + 8 * v41 + 32);
        }

        (*(*v42 + 248))();

        v43 = 0;
        v80 = MEMORY[0x277D84F90];
        v44 = v95;
        while (v83 != v43)
        {
          if (v84)
          {
            v45 = MEMORY[0x25F8CE460](v43, v44);
            v46 = v43 + 1;
            if (__OFADD__(v43, 1))
            {
              goto LABEL_83;
            }
          }

          else
          {
            if (v43 >= *(v81 + 16))
            {
              __break(1u);
              goto LABEL_86;
            }

            v45 = *(v44 + 8 * v43 + 32);

            v46 = v43 + 1;
            if (__OFADD__(v43, 1))
            {
LABEL_83:
              __break(1u);
              goto LABEL_84;
            }
          }

          v82 = v46;
          v15 = (*(*v45 + 224))();
          v48 = v47;

          ++v43;
          v44 = v95;
          if (v48)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v80 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v80 + 2) + 1, 1, v80);
            }

            v50 = *(v80 + 2);
            v49 = *(v80 + 3);
            v44 = v95;
            if (v50 >= v49 >> 1)
            {
              v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1, v80);
              v44 = v95;
              v80 = v53;
            }

            v51 = v80;
            *(v80 + 2) = v50 + 1;
            v52 = &v51[16 * v50];
            *(v52 + 4) = v15;
            *(v52 + 5) = v48;
            v43 = v82;
          }
        }

        v54 = *v86;
        v55 = v90;
        (*v86)(v91, v94, v90);
        v54(v92, v93, v55);
        v56 = type metadata accessor for TranscriptTask(0);
        v57 = *(v56 + 48);
        v58 = *(v56 + 52);
        v59 = swift_allocObject();
        v60 = v89;
        v59[2] = v88;
        v59[3] = v60;
        v61 = v77;
        v59[4] = v78;
        v59[5] = v61;
        v59[6] = v87;
        v59[7] = a3;
        a3 = v55;
        v62 = v79;
        v59[8] = v80;
        v63 = *v62;
        (*v62)(v59 + OBJC_IVAR____TtC18PostSiriEngagement14TranscriptTask_startTime, v91, a3);
        v63(v59 + OBJC_IVAR____TtC18PostSiriEngagement14TranscriptTask_endTime, v92, a3);

        MEMORY[0x25F8CE160](v64);
        if (*((v97 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v97 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v67 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          a3 = v90;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v65 = *v85;
        (*v85)(v93, a3);
        v65(v94, a3);
        v15 = v76;
        v26 = v79;
      }

      else
      {
        v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v36)
        {
          goto LABEL_32;
        }

LABEL_19:
      }
    }
  }

  if (one-time initialization token for engagement != -1)
  {
LABEL_84:
    swift_once();
  }

  v72 = type metadata accessor for Logger();
  __swift_project_value_buffer(v72, static Logger.engagement);
  v73 = Logger.logObject.getter();
  v74 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    *v75 = 0;
    _os_log_impl(&dword_25ECEC000, v73, v74, "No Intelligence Flow Transcript to construct session boundary", v75, 2u);
    MEMORY[0x25F8CEE50](v75, -1, -1);
  }

  return MEMORY[0x277D84F90];
}