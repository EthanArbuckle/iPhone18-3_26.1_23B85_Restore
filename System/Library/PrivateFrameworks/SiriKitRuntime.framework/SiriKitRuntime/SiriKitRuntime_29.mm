uint64_t specialized HomeAutomationAffinityScorer.hasGeneralNamespaceMatch(_:)(uint64_t a1)
{
  v78 = type metadata accessor for SpanProperty();
  v2 = *(v78 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v77 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UsoEntitySpan();
  v6 = *(v5 - 8);
  v7 = v6[8];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  v10 = *(*(v59 - 8) + 64);
  MEMORY[0x1EEE9AC00](v59);
  v58 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v57 - v13;
  v16.n128_f64[0] = MEMORY[0x1EEE9AC00](v15);
  v60 = v6;
  v61 = &v57 - v17;
  v71 = *(a1 + 16);
  if (v71)
  {
    v18 = 0;
    v20 = v6[2];
    v19 = v6 + 2;
    v68 = a1 + ((*(v19 + 64) + 32) & ~*(v19 + 64));
    v69 = v20;
    v75 = (v2 + 8);
    v76 = v2 + 16;
    v70 = v19;
    v21 = v19[7];
    v66 = (v19 - 1);
    v67 = v21;
    v64 = v14;
    v65 = v5;
    v62 = v9;
    v63 = v2;
    while (1)
    {
      v69(v9, v68 + v67 * v18, v5, v16);
      if (one-time initialization token for kHAGeneralNamespaceMatches != -1)
      {
        swift_once();
      }

      v22 = static HomeAutomationAffinityScorer.kHAGeneralNamespaceMatches;
      v23 = UsoEntitySpan.properties.getter();
      v24 = *(v23 + 16);
      if (v24)
      {
        v73 = v22;
        v74 = v18;
        v79 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24, 0);
        v25 = v79;
        v26 = *(v2 + 80);
        v72 = v23;
        v27 = v23 + ((v26 + 32) & ~v26);
        v28 = *(v2 + 72);
        v29 = *(v2 + 16);
        do
        {
          v30 = v77;
          v31 = v78;
          v29(v77, v27, v78);
          v32 = SpanProperty.key.getter();
          v34 = v33;
          (*v75)(v30, v31);
          v79 = v25;
          v36 = *(v25 + 16);
          v35 = *(v25 + 24);
          if (v36 >= v35 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1);
            v25 = v79;
          }

          *(v25 + 16) = v36 + 1;
          v37 = v25 + 16 * v36;
          *(v37 + 32) = v32;
          *(v37 + 40) = v34;
          v27 += v28;
          --v24;
        }

        while (v24);

        v14 = v64;
        v5 = v65;
        v9 = v62;
        v2 = v63;
        v22 = v73;
        v18 = v74;
      }

      else
      {

        v25 = MEMORY[0x1E69E7CC0];
      }

      v38 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v25);

      v39 = specialized Set.isDisjoint(with:)(v38, v22);

      if ((v39 & 1) == 0)
      {
        break;
      }

      ++v18;
      (*v66)(v9, v5);
      if (v18 == v71)
      {
        v40 = 1;
        v6 = v60;
        goto LABEL_17;
      }
    }

    v6 = v60;
    (v60[4])(v61, v9, v5);
    v40 = 0;
  }

  else
  {
    v40 = 1;
  }

LABEL_17:
  v41 = v6[7];
  v42 = v61;
  v41(v61, v40, 1, v5, v16);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v43 = type metadata accessor for Logger();
  __swift_project_value_buffer(v43, static Logger.executor);
  outlined init with copy of ReferenceResolutionClientProtocol?(v42, v14, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v79 = v47;
    *v46 = 136315138;
    outlined init with copy of ReferenceResolutionClientProtocol?(v14, v58, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
    v48 = String.init<A>(describing:)();
    v50 = v49;
    outlined destroy of ReferenceResolutionClientProtocol?(v14, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
    v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, &v79);

    *(v46 + 4) = v51;
    _os_log_impl(&dword_1DC659000, v44, v45, "HomeAutomationAffinityScorer - Found HomeAutomation GeneralSpan match: %s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v47);
    v52 = v47;
    v42 = v61;
    MEMORY[0x1E12A2F50](v52, -1, -1);
    MEMORY[0x1E12A2F50](v46, -1, -1);
  }

  else
  {

    outlined destroy of ReferenceResolutionClientProtocol?(v14, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  }

  v53 = (v60[6])(v42, 1, v5) == 1;
  v54 = v42;
  v55 = !v53;
  outlined destroy of ReferenceResolutionClientProtocol?(v54, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  return v55;
}

BOOL specialized HomeAutomationAffinityScorer.hasExactNamespaceMatch(_:)()
{
  v101 = type metadata accessor for SpanProperty();
  v0 = *(v101 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v101);
  v96 = &v77 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v98 = &v77 - v4;
  v5 = type metadata accessor for UsoEntitySpan();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  v10 = *(*(v80 - 8) + 64);
  MEMORY[0x1EEE9AC00](v80);
  v79 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v77 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v77 - v16;
  v20.n128_f64[0] = MEMORY[0x1EEE9AC00](v18);
  v83 = &v77 - v21;
  v22 = *(v19 + 16);
  v82 = v6;
  v93 = v22;
  v81 = v19;
  if (v22)
  {
    v78 = v17;
    v23 = 0;
    v25 = *(v6 + 16);
    v24 = v6 + 16;
    v90 = v19 + ((*(v24 + 64) + 32) & ~*(v24 + 64));
    v91 = v25;
    v99 = (v0 + 8);
    v100 = v0 + 16;
    v92 = v24;
    v26 = *(v24 + 56);
    v88 = (v24 - 8);
    v89 = v26;
    v85 = v9;
    v86 = v0;
    v84 = v5;
    v87 = v14;
    v25(v9, v90, v5, v20);
    while (1)
    {
      v30 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of HomeAutomationAffinityScorer.hasExactNamespaceMatch(_:));
      outlined destroy of String(&unk_1F5825048);
      v31 = UsoEntitySpan.properties.getter();
      v32 = *(v31 + 16);
      v95 = v23;
      if (v32)
      {
        v97 = v30;
        v102 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32, 0);
        v33 = v102;
        v34 = *(v0 + 80);
        v94 = v31;
        v35 = v31 + ((v34 + 32) & ~v34);
        v36 = *(v0 + 72);
        v37 = *(v0 + 16);
        do
        {
          v38 = v98;
          v39 = v101;
          v37(v98, v35, v101);
          v40 = SpanProperty.key.getter();
          v42 = v41;
          (*v99)(v38, v39);
          v102 = v33;
          v44 = *(v33 + 16);
          v43 = *(v33 + 24);
          if (v44 >= v43 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1);
            v33 = v102;
          }

          *(v33 + 16) = v44 + 1;
          v45 = v33 + 16 * v44;
          *(v45 + 32) = v40;
          *(v45 + 40) = v42;
          v35 += v36;
          --v32;
        }

        while (v32);

        v5 = v84;
        v9 = v85;
        v0 = v86;
        v14 = v87;
        v23 = v95;
        v30 = v97;
      }

      else
      {

        v33 = MEMORY[0x1E69E7CC0];
      }

      v46 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v33);

      v47 = specialized Set.isDisjoint(with:)(v46, v30);

      if ((v47 & 1) == 0)
      {
        v27 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #1 of HomeAutomationAffinityScorer.hasExactNamespaceMatch(_:));
        outlined destroy of String(&unk_1F5825078);
        v48 = UsoEntitySpan.properties.getter();
        v49 = *(v48 + 16);
        if (v49)
        {
          v94 = v27;
          v50 = v48 + ((*(v0 + 80) + 32) & ~*(v0 + 80));
          v97 = *(v0 + 72);
          v51 = *(v0 + 16);
          v52 = MEMORY[0x1E69E7CC0];
          do
          {
            v54 = v96;
            v55 = v101;
            v51(v96, v50, v101);
            v56 = SpanProperty.valueString.getter();
            v58 = v57;
            (*v99)(v54, v55);
            if (v58)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v52 + 2) + 1, 1, v52);
              }

              v60 = *(v52 + 2);
              v59 = *(v52 + 3);
              if (v60 >= v59 >> 1)
              {
                v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1, v52);
              }

              *(v52 + 2) = v60 + 1;
              v53 = &v52[16 * v60];
              *(v53 + 4) = v56;
              *(v53 + 5) = v58;
            }

            v50 += v97;
            --v49;
          }

          while (v49);

          v9 = v85;
          v0 = v86;
          v27 = v94;
          v23 = v95;
          v14 = v87;
        }

        else
        {

          v52 = MEMORY[0x1E69E7CC0];
        }

        v28 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v52);

        v29 = specialized Set.isDisjoint(with:)(v28, v27);

        if ((v29 & 1) == 0)
        {
          break;
        }
      }

      ++v23;
      (*v88)(v9, v5);
      if (v23 == v93)
      {
        v61 = 1;
        v6 = v82;
        goto LABEL_28;
      }

      v91(v9, v90 + v89 * v23, v5, v20);
    }

    v6 = v82;
    (*(v82 + 32))(v83, v9, v5);
    v61 = 0;
LABEL_28:
    v17 = v78;
  }

  else
  {
    v61 = 1;
  }

  v62 = v83;
  v63 = (*(v6 + 56))(v83, v61, 1, v5, v20);
  MEMORY[0x1EEE9AC00](v63);
  *(&v77 - 2) = v62;
  specialized Sequence.first(where:)(partial apply for closure #2 in HomeAutomationAffinityScorer.hasExactNamespaceMatch(_:), v81, v17);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v64 = type metadata accessor for Logger();
  __swift_project_value_buffer(v64, static Logger.executor);
  v65 = v17;
  outlined init with copy of ReferenceResolutionClientProtocol?(v17, v14, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v102 = v69;
    *v68 = 136315138;
    outlined init with copy of ReferenceResolutionClientProtocol?(v14, v79, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
    v70 = String.init<A>(describing:)();
    v71 = v14;
    v73 = v72;
    outlined destroy of ReferenceResolutionClientProtocol?(v71, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
    v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v73, &v102);

    *(v68 + 4) = v74;
    _os_log_impl(&dword_1DC659000, v66, v67, "HomeAutomationAffinityScorer - Found HomeAutomation ExactSpan %s", v68, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v69);
    MEMORY[0x1E12A2F50](v69, -1, -1);
    MEMORY[0x1E12A2F50](v68, -1, -1);
  }

  else
  {

    outlined destroy of ReferenceResolutionClientProtocol?(v14, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  }

  v75 = (*(v82 + 48))(v65, 1, v5) != 1;
  outlined destroy of ReferenceResolutionClientProtocol?(v65, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v83, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  return v75;
}

BOOL specialized HomeAutomationAffinityScorer.hasNamespaceMatch(_:)(uint64_t a1)
{
  v90 = type metadata accessor for SpanProperty();
  v2 = *(v90 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v90);
  v5 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UsoEntitySpan();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  v11 = *(*(v71 - 8) + 64);
  MEMORY[0x1EEE9AC00](v71);
  v70 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v72 = &v69 - v14;
  v16.n128_f64[0] = MEMORY[0x1EEE9AC00](v15);
  v73 = v7;
  v74 = &v69 - v17;
  v76 = *(a1 + 16);
  if (v76)
  {
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v78 = a1 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
    v79 = v19;
    v20 = 0;
    v88 = (v2 + 8);
    v89 = v2 + 16;
    v75 = (v18 - 8);
    v80 = v18;
    v81 = v6;
    v77 = *(v18 + 56);
    v84 = v10;
    v85 = v2;
    while (1)
    {
      v79(v10, v78 + v77 * v20, v6, v16);
      if (one-time initialization token for kHAGeneralNamespaceMatches != -1)
      {
        swift_once();
      }

      v86 = v20;
      v21 = static HomeAutomationAffinityScorer.kHAGeneralNamespaceMatches;
      v22 = UsoEntitySpan.properties.getter();
      v23 = *(v22 + 16);
      if (v23)
      {
        v83 = v21;
        v91 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23, 0);
        v24 = v91;
        v25 = *(v2 + 80);
        v82 = v22;
        v26 = v22 + ((v25 + 32) & ~v25);
        v87 = *(v2 + 72);
        v27 = *(v2 + 16);
        do
        {
          v28 = v90;
          v27(v5, v26, v90);
          v29 = SpanProperty.key.getter();
          v31 = v30;
          (*v88)(v5, v28);
          v91 = v24;
          v33 = *(v24 + 16);
          v32 = *(v24 + 24);
          if (v33 >= v32 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1);
            v24 = v91;
          }

          *(v24 + 16) = v33 + 1;
          v34 = v24 + 16 * v33;
          *(v34 + 32) = v29;
          *(v34 + 40) = v31;
          v26 += v87;
          --v23;
        }

        while (v23);

        v10 = v84;
        v2 = v85;
        v21 = v83;
      }

      else
      {

        v24 = MEMORY[0x1E69E7CC0];
      }

      v35 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v24);

      v36 = specialized Set.isDisjoint(with:)(v35, v21);

      if ((v36 & 1) == 0)
      {
        break;
      }

      if (one-time initialization token for kHAExactNamespaceMatches != -1)
      {
        swift_once();
      }

      v37 = static HomeAutomationAffinityScorer.kHAExactNamespaceMatches;
      v38 = UsoEntitySpan.properties.getter();
      v39 = *(v38 + 16);
      if (v39)
      {
        v83 = v37;
        v91 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v39, 0);
        v40 = v91;
        v41 = *(v2 + 80);
        v82 = v38;
        v42 = v38 + ((v41 + 32) & ~v41);
        v87 = *(v2 + 72);
        v43 = *(v2 + 16);
        do
        {
          v44 = v90;
          v43(v5, v42, v90);
          v45 = SpanProperty.key.getter();
          v47 = v46;
          (*v88)(v5, v44);
          v91 = v40;
          v49 = *(v40 + 16);
          v48 = *(v40 + 24);
          if (v49 >= v48 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1);
            v40 = v91;
          }

          *(v40 + 16) = v49 + 1;
          v50 = v40 + 16 * v49;
          *(v50 + 32) = v45;
          *(v50 + 40) = v47;
          v42 += v87;
          --v39;
        }

        while (v39);

        v10 = v84;
        v2 = v85;
        v37 = v83;
      }

      else
      {

        v40 = MEMORY[0x1E69E7CC0];
      }

      v51 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v40);

      v52 = specialized Set.isDisjoint(with:)(v51, v37);

      if ((v52 & 1) == 0)
      {
        break;
      }

      v20 = v86 + 1;
      v6 = v81;
      (*v75)(v10, v81);
      if (v20 == v76)
      {
        v54 = 1;
        v7 = v73;
        goto LABEL_27;
      }
    }

    v7 = v73;
    v53 = v74;
    v6 = v81;
    (*(v73 + 32))(v74, v10, v81);
    v54 = 0;
  }

  else
  {
    v54 = 1;
LABEL_27:
    v53 = v74;
  }

  (*(v7 + 56))(v53, v54, 1, v6);
  v55 = v72;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v56 = type metadata accessor for Logger();
  __swift_project_value_buffer(v56, static Logger.executor);
  outlined init with copy of ReferenceResolutionClientProtocol?(v53, v55, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = v6;
    v61 = swift_slowAlloc();
    v91 = v61;
    *v59 = 136315138;
    outlined init with copy of ReferenceResolutionClientProtocol?(v55, v70, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
    v62 = String.init<A>(describing:)();
    v64 = v63;
    outlined destroy of ReferenceResolutionClientProtocol?(v55, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
    v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v64, &v91);

    *(v59 + 4) = v65;
    _os_log_impl(&dword_1DC659000, v57, v58, "HomeAutomationAffinityScorer - Found HomeAutomation Span match: %s", v59, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v61);
    v66 = v61;
    v6 = v60;
    v7 = v73;
    v53 = v74;
    MEMORY[0x1E12A2F50](v66, -1, -1);
    MEMORY[0x1E12A2F50](v59, -1, -1);
  }

  else
  {

    outlined destroy of ReferenceResolutionClientProtocol?(v55, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  }

  v67 = (*(v7 + 48))(v53, 1, v6) != 1;
  outlined destroy of ReferenceResolutionClientProtocol?(v53, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  return v67;
}

BOOL specialized HomeAutomationAffinityScorer.hasSpanLemmatizationMatch(_:)(uint64_t a1)
{
  matched = type metadata accessor for MatchInfo.AliasType();
  v77 = *(matched - 8);
  v2 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](matched);
  v67 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for MatchInfo.MatchSignals();
  v75 = *(v73 - 8);
  v4 = *(v75 + 8);
  MEMORY[0x1EEE9AC00](v73);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology9MatchInfoVSgMd, &_s12SiriOntology9MatchInfoVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v56 - v9;
  v78 = type metadata accessor for MatchInfo();
  v11 = *(v78 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for UsoEntitySpan();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  v20 = *(*(v60 - 8) + 64);
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v61 = &v56 - v23;
  v26.n128_f64[0] = MEMORY[0x1EEE9AC00](v24);
  v27 = &v56 - v25;
  v28 = *(a1 + 16);
  v79 = v15;
  if (v28)
  {
    v57 = &v56 - v25;
    v58 = v16;
    v29 = v16 + 16;
    v76 = *(v16 + 16);
    v30 = a1 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v31 = (v11 + 48);
    v71 = (v75 + 8);
    v72 = (v11 + 32);
    v70 = (v11 + 8);
    v64 = *MEMORY[0x1E69D2338];
    v62 = (v77 + 8);
    v63 = (v77 + 104);
    v32 = (v16 + 8);
    v77 = v29;
    v74 = *(v29 + 56);
    v75 = v14;
    v65 = v10;
    v66 = v6;
    v76(v19, v30, v15, v26);
    while (1)
    {
      UsoEntitySpan.matchInfo.getter();
      v34 = v78;
      if ((*v31)(v10, 1, v78) == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v10, &_s12SiriOntology9MatchInfoVSgMd, &_s12SiriOntology9MatchInfoVSgMR);
      }

      else
      {
        (*v72)(v14, v10, v34);
        static MatchInfo.MatchSignals.aliasMatch.getter();
        v35 = MatchInfo.hasMatchSignals(_:)();
        (*v71)(v6, v73);
        if (v35)
        {
          v36 = MatchInfo.matchedAliasTypes.getter();
          v38 = v67;
          v37 = matched;
          (*v63)(v67, v64, matched);
          v69 = specialized Sequence<>.contains(_:)(v38, v36);

          v39 = v38;
          v40 = v37;
          v10 = v65;
          v6 = v66;
          (*v62)(v39, v40);
          (*v70)(v14, v34);
          if (v69)
          {
            v16 = v58;
            v27 = v57;
            v15 = v79;
            (*(v58 + 32))(v57, v19, v79);
            v41 = 0;
            goto LABEL_13;
          }
        }

        else
        {
          (*v70)(v14, v34);
        }
      }

      v15 = v79;
      (*v32)(v19, v79);
      v14 = v75;
      v30 += v74;
      if (!--v28)
      {
        break;
      }

      v76(v19, v30, v15, v33);
    }

    v41 = 1;
    v16 = v58;
    v27 = v57;
  }

  else
  {
    v41 = 1;
  }

LABEL_13:
  (*(v16 + 56))(v27, v41, 1, v15);
  v42 = v61;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v43 = type metadata accessor for Logger();
  __swift_project_value_buffer(v43, static Logger.executor);
  outlined init with copy of ReferenceResolutionClientProtocol?(v27, v42, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v80 = v47;
    *v46 = 136315138;
    outlined init with copy of ReferenceResolutionClientProtocol?(v42, v59, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
    v48 = String.init<A>(describing:)();
    v49 = v42;
    v50 = v48;
    v52 = v51;
    outlined destroy of ReferenceResolutionClientProtocol?(v49, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
    v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v52, &v80);
    v15 = v79;

    *(v46 + 4) = v53;
    _os_log_impl(&dword_1DC659000, v44, v45, "HomeAutomationAffinityScorer - Found HomeAutomation Span Lemmatization match: %s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v47);
    MEMORY[0x1E12A2F50](v47, -1, -1);
    MEMORY[0x1E12A2F50](v46, -1, -1);
  }

  else
  {

    outlined destroy of ReferenceResolutionClientProtocol?(v42, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  }

  v54 = (*(v16 + 48))(v27, 1, v15) != 1;
  outlined destroy of ReferenceResolutionClientProtocol?(v27, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  return v54;
}

BOOL specialized HomeAutomationAffinityScorer.hasHKExactMatch(_:)(uint64_t a1)
{
  v109 = type metadata accessor for SpanProperty();
  v2 = *(v109 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v109);
  v104 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v106 = &v81 - v6;
  v101 = type metadata accessor for IdentifierNamespace();
  v7 = *(v101 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v101);
  v100 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UsoEntitySpan();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  v15 = *(*(v83 - 8) + 64);
  MEMORY[0x1EEE9AC00](v83);
  v82 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v81 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v84 = &v81 - v21;
  v22 = *(a1 + 16);
  v85 = v11;
  v99 = v22;
  if (v22)
  {
    v24 = *(v11 + 16);
    v23 = v11 + 16;
    v96 = a1 + ((*(v23 + 64) + 32) & ~*(v23 + 64));
    v97 = v24;
    v95 = *MEMORY[0x1E69D1B18];
    v94 = (v7 + 104);
    v93 = (v7 + 8);
    v25 = 0;
    v107 = (v2 + 8);
    v108 = v2 + 16;
    v90 = (v23 - 8);
    v98 = v23;
    v92 = *(v23 + 56);
    v91 = xmmword_1DCA66060;
    v88 = v2;
    v87 = v14;
    v86 = v10;
    v89 = v19;
    while (1)
    {
      v103 = v25;
      v97(v14, v96 + v92 * v25, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      inited = swift_initStackObject();
      *(inited + 16) = v91;
      v28 = v100;
      v27 = v101;
      (*v94)(v100, v95, v101);
      v29 = IdentifierNamespace.rawValue.getter();
      v31 = v30;
      (*v93)(v28, v27);
      *(inited + 32) = v29;
      *(inited + 40) = v31;
      v32 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(inited);
      swift_setDeallocating();
      outlined destroy of String(inited + 32);
      v33 = UsoEntitySpan.properties.getter();
      v34 = *(v33 + 16);
      if (v34)
      {
        v105 = v32;
        v110 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v34, 0);
        v35 = v110;
        v36 = *(v2 + 80);
        v102 = v33;
        v37 = v33 + ((v36 + 32) & ~v36);
        v38 = *(v2 + 72);
        v39 = *(v2 + 16);
        do
        {
          v40 = v106;
          v41 = v109;
          v39(v106, v37, v109);
          v42 = SpanProperty.key.getter();
          v44 = v43;
          (*v107)(v40, v41);
          v110 = v35;
          v46 = *(v35 + 16);
          v45 = *(v35 + 24);
          if (v46 >= v45 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1);
            v35 = v110;
          }

          *(v35 + 16) = v46 + 1;
          v47 = v35 + 16 * v46;
          *(v47 + 32) = v42;
          *(v47 + 40) = v44;
          v37 += v38;
          --v34;
        }

        while (v34);

        v10 = v86;
        v19 = v89;
        v2 = v88;
        v14 = v87;
        v32 = v105;
      }

      else
      {

        v35 = MEMORY[0x1E69E7CC0];
      }

      v48 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v35);

      v49 = specialized Set.isDisjoint(with:)(v48, v32);

      if ((v49 & 1) == 0)
      {
        if (one-time initialization token for kHKEntityTypes != -1)
        {
          swift_once();
        }

        v50 = static HomeAutomationAffinityScorer.kHKEntityTypes;
        v51 = UsoEntitySpan.properties.getter();
        v52 = *(v51 + 16);
        if (v52)
        {
          v102 = v50;
          v53 = v51 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
          v105 = *(v2 + 72);
          v54 = *(v2 + 16);
          v55 = MEMORY[0x1E69E7CC0];
          do
          {
            v57 = v104;
            v58 = v109;
            v54(v104, v53, v109);
            v59 = SpanProperty.valueString.getter();
            v61 = v60;
            (*v107)(v57, v58);
            if (v61)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v55 + 2) + 1, 1, v55);
              }

              v63 = *(v55 + 2);
              v62 = *(v55 + 3);
              if (v63 >= v62 >> 1)
              {
                v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v62 > 1), v63 + 1, 1, v55);
              }

              *(v55 + 2) = v63 + 1;
              v56 = &v55[16 * v63];
              *(v56 + 4) = v59;
              *(v56 + 5) = v61;
            }

            v53 += v105;
            --v52;
          }

          while (v52);

          v2 = v88;
          v14 = v87;
          v50 = v102;
          v19 = v89;
        }

        else
        {

          v55 = MEMORY[0x1E69E7CC0];
        }

        v64 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v55);

        v65 = specialized Set.isDisjoint(with:)(v64, v50);

        if ((v65 & 1) == 0 && (UsoEntitySpan.hasExactMatch()() || UsoEntitySpan.hasApproximateHighScoreMatch()()))
        {
          break;
        }
      }

      v25 = v103 + 1;
      (*v90)(v14, v10);
      if (v25 == v99)
      {
        v66 = 1;
        v67 = v85;
        goto LABEL_31;
      }
    }

    v67 = v85;
    v68 = v84;
    (*(v85 + 32))(v84, v14, v10);
    v66 = 0;
  }

  else
  {
    v66 = 1;
    v67 = v11;
LABEL_31:
    v68 = v84;
  }

  (*(v67 + 56))(v68, v66, 1, v10);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v69 = type metadata accessor for Logger();
  __swift_project_value_buffer(v69, static Logger.executor);
  outlined init with copy of ReferenceResolutionClientProtocol?(v68, v19, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v110 = v73;
    *v72 = 136315138;
    outlined init with copy of ReferenceResolutionClientProtocol?(v19, v82, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
    v74 = String.init<A>(describing:)();
    v76 = v75;
    outlined destroy of ReferenceResolutionClientProtocol?(v19, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
    v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v76, &v110);

    *(v72 + 4) = v77;
    _os_log_impl(&dword_1DC659000, v70, v71, "HomeAutomationAffinityScorer - Found HomeKitSpan with ExactMatch %s", v72, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v73);
    MEMORY[0x1E12A2F50](v73, -1, -1);
    v78 = v72;
    v68 = v84;
    MEMORY[0x1E12A2F50](v78, -1, -1);
  }

  else
  {

    outlined destroy of ReferenceResolutionClientProtocol?(v19, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  }

  v79 = (*(v85 + 48))(v68, 1, v10) != 1;
  outlined destroy of ReferenceResolutionClientProtocol?(v68, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  return v79;
}

BOOL specialized HomeAutomationAffinityScorer.hasHKFuzzyMatch(_:)(uint64_t a1)
{
  matched = type metadata accessor for MatchInfo.MatchSignals();
  v2 = *(matched - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](matched);
  v138 = &v123 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology9MatchInfoVSgMd, &_s12SiriOntology9MatchInfoVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v141 = &v123 - v7;
  v145 = type metadata accessor for MatchInfo();
  v8 = *(v145 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v145);
  v11 = &v123 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21PayloadAttachmentInfoVSgMd, &_s12SiriOntology21PayloadAttachmentInfoVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v143 = &v123 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v142 = &v123 - v17;
  v144 = type metadata accessor for PayloadAttachmentInfo.AttachmentType();
  v18 = *(v144 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v144);
  v130 = &v123 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v129 = &v123 - v22;
  v170 = type metadata accessor for SpanProperty();
  v23 = *(v170 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v170);
  v166 = &v123 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v167 = &v123 - v27;
  v161 = type metadata accessor for IdentifierNamespace();
  v28 = *(v161 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v161);
  v160 = &v123 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for UsoEntitySpan();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v123 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  v36 = *(*(v124 - 8) + 64);
  MEMORY[0x1EEE9AC00](v124);
  v123 = &v123 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v131 = &v123 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v136 = &v123 - v41;
  v42 = *(a1 + 16);
  v137 = v32;
  v159 = v42;
  if (!v42)
  {
    v107 = 1;
    v108 = v32;
LABEL_39:
    v109 = v136;
    goto LABEL_40;
  }

  v44 = *(v32 + 16);
  v43 = v32 + 16;
  v157 = v44;
  v156 = a1 + ((*(v43 + 64) + 32) & ~*(v43 + 64));
  v155 = (v28 + 104);
  v154 = *MEMORY[0x1E69D1B18];
  v153 = (v28 + 8);
  v45 = 0;
  v168 = (v23 + 8);
  v169 = v23 + 16;
  v135 = (v18 + 48);
  v128 = (v18 + 32);
  v127 = *MEMORY[0x1E69D1B60];
  v126 = (v18 + 104);
  v125 = (v18 + 8);
  v134 = (v18 + 56);
  v139 = (v8 + 48);
  v132 = (v8 + 32);
  v133 = (v8 + 8);
  v150 = (v43 - 8);
  v158 = v43;
  v152 = *(v43 + 56);
  v151 = xmmword_1DCA66060;
  v148 = v11;
  v147 = v23;
  v146 = v35;
  v149 = v31;
  v164 = (v2 + 8);
  while (1)
  {
    v165 = v45;
    v157(v35, v156 + v152 * v45, v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    inited = swift_initStackObject();
    *(inited + 16) = v151;
    v48 = v160;
    v47 = v161;
    (*v155)(v160, v154, v161);
    v49 = IdentifierNamespace.rawValue.getter();
    v51 = v50;
    (*v153)(v48, v47);
    *(inited + 32) = v49;
    *(inited + 40) = v51;
    v52 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of String(inited + 32);
    v53 = UsoEntitySpan.properties.getter();
    v54 = *(v53 + 16);
    if (v54)
    {
      v163 = v52;
      v172 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v54, 0);
      v55 = v172;
      v56 = *(v23 + 80);
      v162 = v53;
      v57 = v53 + ((v56 + 32) & ~v56);
      v58 = *(v23 + 72);
      v59 = *(v23 + 16);
      do
      {
        v60 = v167;
        v61 = v170;
        v59(v167, v57, v170);
        v62 = SpanProperty.key.getter();
        v64 = v63;
        (*v168)(v60, v61);
        v172 = v55;
        v66 = *(v55 + 16);
        v65 = *(v55 + 24);
        if (v66 >= v65 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v65 > 1), v66 + 1, 1);
          v55 = v172;
        }

        *(v55 + 16) = v66 + 1;
        v67 = v55 + 16 * v66;
        *(v67 + 32) = v62;
        *(v67 + 40) = v64;
        v57 += v58;
        --v54;
      }

      while (v54);

      v31 = v149;
      v11 = v148;
      v23 = v147;
      v35 = v146;
      v52 = v163;
    }

    else
    {

      v55 = MEMORY[0x1E69E7CC0];
    }

    v68 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v55);

    v69 = specialized Set.isDisjoint(with:)(v68, v52);

    v70 = v164;
    if (v69)
    {
      goto LABEL_4;
    }

    if (one-time initialization token for kHKEntityTypes != -1)
    {
      swift_once();
    }

    v71 = static HomeAutomationAffinityScorer.kHKEntityTypes;
    v72 = UsoEntitySpan.properties.getter();
    v73 = *(v72 + 16);
    if (v73)
    {
      v163 = v71;
      v74 = v72 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
      v75 = *(v23 + 72);
      v76 = *(v23 + 16);
      v77 = MEMORY[0x1E69E7CC0];
      do
      {
        v79 = v166;
        v80 = v170;
        v76(v166, v74, v170);
        v81 = SpanProperty.valueString.getter();
        v83 = v82;
        (*v168)(v79, v80);
        if (v83)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v77 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v77 + 2) + 1, 1, v77);
          }

          v85 = *(v77 + 2);
          v84 = *(v77 + 3);
          if (v85 >= v84 >> 1)
          {
            v77 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v84 > 1), v85 + 1, 1, v77);
          }

          *(v77 + 2) = v85 + 1;
          v78 = &v77[16 * v85];
          *(v78 + 4) = v81;
          *(v78 + 5) = v83;
        }

        v74 += v75;
        --v73;
      }

      while (v73);

      v11 = v148;
      v23 = v147;
      v35 = v146;
      v71 = v163;
      v70 = v164;
      v31 = v149;
    }

    else
    {

      v77 = MEMORY[0x1E69E7CC0];
    }

    v86 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v77);

    v87 = specialized Set.isDisjoint(with:)(v86, v71);

    if (v87)
    {
      goto LABEL_4;
    }

    v88 = v143;
    UsoEntitySpan.payloadAttachmentInfo.getter();
    v89 = type metadata accessor for PayloadAttachmentInfo();
    v90 = *(v89 - 8);
    if ((*(v90 + 48))(v88, 1, v89) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v88, &_s12SiriOntology21PayloadAttachmentInfoVSgMd, &_s12SiriOntology21PayloadAttachmentInfoVSgMR);
      v91 = v142;
      (*v134)(v142, 1, 1, v144);
LABEL_30:
      outlined destroy of ReferenceResolutionClientProtocol?(v91, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
      goto LABEL_32;
    }

    v92 = v142;
    PayloadAttachmentInfo.attachmentType.getter();
    v93 = v89;
    v91 = v92;
    (*(v90 + 8))(v88, v93);
    if ((*v135)(v92, 1, v144) == 1)
    {
      goto LABEL_30;
    }

    v94 = v129;
    v95 = v144;
    (*v128)(v129, v91, v144);
    v96 = v130;
    (*v126)(v130, v127, v95);
    lazy protocol witness table accessor for type PayloadAttachmentInfo.AttachmentType and conformance PayloadAttachmentInfo.AttachmentType(&lazy protocol witness table cache variable for type PayloadAttachmentInfo.AttachmentType and conformance PayloadAttachmentInfo.AttachmentType, MEMORY[0x1E69D1B68]);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v97 = *v125;
    (*v125)(v96, v95);
    v97(v94, v95);
    if (v172 == v171)
    {
      goto LABEL_47;
    }

LABEL_32:
    v98 = v141;
    UsoEntitySpan.matchInfo.getter();
    v99 = v145;
    if ((*v139)(v98, 1, v145) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v98, &_s12SiriOntology9MatchInfoVSgMd, &_s12SiriOntology9MatchInfoVSgMR);
      goto LABEL_4;
    }

    (*v132)(v11, v98, v99);
    v100 = v138;
    static MatchInfo.MatchSignals.approximateMatch.getter();
    v101 = MatchInfo.hasMatchSignals(_:)();
    v102 = *v70;
    (*v70)(v100, matched);
    if (v101)
    {
      break;
    }

    static MatchInfo.MatchSignals.partialMatch.getter();
    v103 = MatchInfo.hasMatchSignals(_:)();
    v104 = matched;
    v105 = v103;
    v102(v100, matched);
    if (v105)
    {
      break;
    }

    static MatchInfo.MatchSignals.aliasMatch.getter();
    v106 = MatchInfo.hasMatchSignals(_:)();
    v102(v100, v104);
    (*v133)(v11, v145);
    if (v106)
    {
      goto LABEL_47;
    }

LABEL_4:
    v45 = v165 + 1;
    (*v150)(v35, v31);
    if (v45 == v159)
    {
      v107 = 1;
      v108 = v137;
      goto LABEL_39;
    }
  }

  (*v133)(v11, v145);
LABEL_47:
  v108 = v137;
  v109 = v136;
  (*(v137 + 32))(v136, v35, v31);
  v107 = 0;
LABEL_40:
  (*(v108 + 56))(v109, v107, 1, v31);
  v110 = v131;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v111 = type metadata accessor for Logger();
  __swift_project_value_buffer(v111, static Logger.executor);
  outlined init with copy of ReferenceResolutionClientProtocol?(v109, v110, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  v112 = Logger.logObject.getter();
  v113 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v112, v113))
  {
    v114 = swift_slowAlloc();
    v115 = swift_slowAlloc();
    v172 = v115;
    *v114 = 136315138;
    outlined init with copy of ReferenceResolutionClientProtocol?(v110, v123, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
    v116 = String.init<A>(describing:)();
    v118 = v117;
    outlined destroy of ReferenceResolutionClientProtocol?(v110, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
    v119 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v116, v118, &v172);

    *(v114 + 4) = v119;
    _os_log_impl(&dword_1DC659000, v112, v113, "HomeAutomationAffinityScorer - Found HomeKitSpan with FuzzyMatch %s", v114, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v115);
    v120 = v115;
    v109 = v136;
    MEMORY[0x1E12A2F50](v120, -1, -1);
    MEMORY[0x1E12A2F50](v114, -1, -1);
  }

  else
  {

    outlined destroy of ReferenceResolutionClientProtocol?(v110, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  }

  v121 = (*(v137 + 48))(v109, 1, v31) != 1;
  outlined destroy of ReferenceResolutionClientProtocol?(v109, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  return v121;
}

uint64_t specialized HomeAutomationAffinityScorer.hasAppBundleIdMatch(_:)(uint64_t a1)
{
  v38 = type metadata accessor for IdentifierAppBundle();
  v2 = *(v38 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UsoEntitySpan();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(a1 + 16);
  if (!v31)
  {
    return 0;
  }

  v12 = 0;
  v14 = *(v7 + 16);
  v13 = v7 + 16;
  v35 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
  v36 = v14;
  v15 = *(v13 + 56);
  v32 = (v2 + 8);
  v33 = v15;
  v34 = (v13 - 8);
  v37 = v6;
  v14(v11, v35, v6, v9);
  while (1)
  {
    if (one-time initialization token for kAppBundleIdMatches != -1)
    {
      swift_once();
    }

    v18 = static HomeAutomationAffinityScorer.kAppBundleIdMatches;
    UsoEntitySpan.appBundleSemantic.getter();
    v19 = IdentifierAppBundle.rawValue.getter();
    v21 = v20;
    (*v32)(v5, v38);
    if (*(v18 + 16))
    {
      v22 = *(v18 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      v23 = Hasher._finalize()();
      v24 = -1 << *(v18 + 32);
      v25 = v23 & ~v24;
      if ((*(v18 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25))
      {
        break;
      }
    }

LABEL_3:
    ++v12;
    v16 = v37;
    (*v34)(v11, v37);

    if (v12 == v31)
    {
      return 0;
    }

    v36(v11, v35 + v33 * v12, v16, v17);
  }

  v26 = ~v24;
  while (1)
  {
    v27 = (*(v18 + 48) + 16 * v25);
    v28 = *v27 == v19 && v27[1] == v21;
    if (v28 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v25 = (v25 + 1) & v26;
    if (((*(v18 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  (*v34)(v11, v37);

  return 1;
}

BOOL specialized HomeAutomationAffinityScorer.hasPlaceHintMatch(_:)(uint64_t a1)
{
  v84 = type metadata accessor for SpanProperty();
  v2 = *(v84 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v84);
  v83 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UsoEntitySpan();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  v10 = *(*(v66 - 8) + 64);
  MEMORY[0x1EEE9AC00](v66);
  v65 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v63 - v13;
  v17.n128_f64[0] = MEMORY[0x1EEE9AC00](v15);
  v18 = &v63 - v16;
  v73 = *(a1 + 16);
  v71 = v6;
  if (v73)
  {
    v64 = &v63 - v16;
    v19 = 0;
    v21 = *(v6 + 16);
    v20 = v6 + 16;
    v77 = a1 + ((*(v20 + 64) + 32) & ~*(v20 + 64));
    v78 = v21;
    v82 = v2 + 16;
    v80 = 0x80000001DCA7B220;
    v81 = (v2 + 8);
    v72 = (v20 - 8);
    v79 = v20;
    v76 = *(v20 + 56);
    v70 = v5;
    v69 = v14;
    v68 = v2;
    v67 = v9;
    v21(v9, v77, v5, v17);
    while (1)
    {
      v23 = UsoEntitySpan.properties.getter();
      v24 = *(v23 + 16);
      if (v24)
      {
        v75 = v19;
        v85[0] = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24, 0);
        v25 = v85[0];
        v26 = *(v2 + 80);
        v74 = v23;
        v27 = v23 + ((v26 + 32) & ~v26);
        v28 = *(v2 + 72);
        v29 = *(v2 + 16);
        do
        {
          v30 = v83;
          v31 = v84;
          v29(v83, v27, v84);
          v32 = SpanProperty.key.getter();
          v34 = v33;
          (*v81)(v30, v31);
          v85[0] = v25;
          v36 = *(v25 + 16);
          v35 = *(v25 + 24);
          if (v36 >= v35 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1);
            v25 = v85[0];
          }

          *(v25 + 16) = v36 + 1;
          v37 = v25 + 16 * v36;
          *(v37 + 32) = v32;
          *(v37 + 40) = v34;
          v27 += v28;
          --v24;
        }

        while (v24);

        v5 = v70;
        v14 = v69;
        v2 = v68;
        v9 = v67;
        v19 = v75;
      }

      else
      {

        v25 = MEMORY[0x1E69E7CC0];
      }

      v38 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v25);

      if (*(v38 + 16))
      {
        v39 = *(v38 + 40);
        Hasher.init(_seed:)();
        String.hash(into:)();
        v40 = Hasher._finalize()();
        v41 = v80;
        v42 = -1 << *(v38 + 32);
        v43 = v40 & ~v42;
        if ((*(v38 + 56 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43))
        {
          break;
        }
      }

LABEL_3:
      ++v19;

      (*v72)(v9, v5);
      if (v19 == v73)
      {
        v48 = 1;
        v6 = v71;
        v18 = v64;
        goto LABEL_24;
      }

      v78(v9, v77 + v76 * v19, v5, v22);
    }

    v44 = ~v42;
    while (1)
    {
      v45 = (*(v38 + 48) + 16 * v43);
      if (*v45 == 0xD000000000000017 && v41 == v45[1])
      {
        break;
      }

      v47 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v41 = v80;
      if (v47)
      {
        break;
      }

      v43 = (v43 + 1) & v44;
      if (((*(v38 + 56 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    v6 = v71;
    v18 = v64;
    (*(v71 + 32))(v64, v9, v5);
    v48 = 0;
  }

  else
  {
    v48 = 1;
  }

LABEL_24:
  (*(v6 + 56))(v18, v48, 1, v5);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v49 = type metadata accessor for Logger();
  __swift_project_value_buffer(v49, static Logger.executor);
  outlined init with copy of ReferenceResolutionClientProtocol?(v18, v14, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v85[0] = v53;
    *v52 = 136315138;
    outlined init with copy of ReferenceResolutionClientProtocol?(v14, v65, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
    v54 = String.init<A>(describing:)();
    v55 = v14;
    v56 = v54;
    v58 = v57;
    outlined destroy of ReferenceResolutionClientProtocol?(v55, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
    v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v58, v85);

    *(v52 + 4) = v59;
    _os_log_impl(&dword_1DC659000, v50, v51, "HomeAutomationAffinityScorer - Found HomeAutomation PlaceHint: %s", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v53);
    v60 = v53;
    v6 = v71;
    MEMORY[0x1E12A2F50](v60, -1, -1);
    MEMORY[0x1E12A2F50](v52, -1, -1);
  }

  else
  {

    outlined destroy of ReferenceResolutionClientProtocol?(v14, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  }

  v61 = (*(v6 + 48))(v18, 1, v5) != 1;
  outlined destroy of ReferenceResolutionClientProtocol?(v18, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  return v61;
}

uint64_t specialized HomeAutomationAffinityScorer.isiOSLockRequest(_:)(uint64_t a1)
{
  v52 = type metadata accessor for SpanProperty();
  v2 = *(v52 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UsoEntitySpan();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v11 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = *(a1 + 16);
  if (v47)
  {
    v12 = 0;
    v14 = *(v7 + 16);
    v13 = v7 + 16;
    v45 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v46 = v14;
    v15 = *(v13 + 56);
    v51 = v2 + 16;
    v16 = (v2 + 8);
    v43 = (v13 - 8);
    v44 = v15;
    v41 = v6;
    v42 = v2;
    v39 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v40 = v13;
    do
    {
      v50 = v12;
      v46(v11, v45 + v44 * v12, v6, v10);
      if (one-time initialization token for kLockRelatedValues != -1)
      {
        swift_once();
      }

      v49 = static HomeAutomationAffinityScorer.kLockRelatedValues;
      v17 = UsoEntitySpan.properties.getter();
      v18 = *(v17 + 16);
      if (v18)
      {
        v19 = *(v2 + 80);
        v48 = v17;
        v20 = v17 + ((v19 + 32) & ~v19);
        v53 = *(v2 + 72);
        v21 = *(v2 + 16);
        v22 = MEMORY[0x1E69E7CC0];
        do
        {
          v24 = v52;
          v21(v5, v20, v52);
          v25 = SpanProperty.valueString.getter();
          v27 = v26;
          (*v16)(v5, v24);
          if (v27)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 2) + 1, 1, v22);
            }

            v29 = *(v22 + 2);
            v28 = *(v22 + 3);
            if (v29 >= v28 >> 1)
            {
              v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v22);
            }

            *(v22 + 2) = v29 + 1;
            v23 = &v22[16 * v29];
            *(v23 + 4) = v25;
            *(v23 + 5) = v27;
          }

          v20 += v53;
          --v18;
        }

        while (v18);

        v6 = v41;
        v2 = v42;
        v11 = v39;
      }

      else
      {

        v22 = MEMORY[0x1E69E7CC0];
      }

      v30 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v22);

      v31 = specialized Set.isDisjoint(with:)(v30, v49);

      (*v43)(v11, v6);
      if ((v31 & 1) == 0)
      {
        break;
      }

      v12 = v50 + 1;
    }

    while (v50 + 1 != v47);
    v32 = v31 ^ 1;
  }

  else
  {
    v32 = 0;
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  __swift_project_value_buffer(v33, static Logger.executor);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 67109120;
    *(v36 + 4) = v32 & 1;
    _os_log_impl(&dword_1DC659000, v34, v35, "HomeAutomationAffinityScorer - haMatchConditions.isiOSLockRequest %{BOOL}d ", v36, 8u);
    MEMORY[0x1E12A2F50](v36, -1, -1);
  }

  return v32 & 1;
}

uint64_t specialized HomeAutomationAffinityScorer.scoreSummariseSetting(usoTask:_:)(uint64_t a1, void (**a2)(void, void))
{
  v3 = type metadata accessor for IdentifierNamespace();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v127 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for IdentifierAppBundle();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v127 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = type metadata accessor for SpanProperty();
  v159 = *(v165 - 8);
  v13 = *(v159 + 64);
  MEMORY[0x1EEE9AC00](v165);
  v161 = &v127 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v162 = &v127 - v16;
  v17 = type metadata accessor for UsoEntitySpan();
  v160 = *(v17 - 8);
  v18 = *(v160 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v127 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v158 = &v127 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v149 = &v127 - v24;
  static UsoTask_CodegenConverter.convert(task:)();
  if (!v166[3])
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v166, &_sypSgMd, &_sypSgMR);
    return 5;
  }

  type metadata accessor for UsoTask_summarise_common_Setting();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 5;
  }

  v142 = a2;
  v25 = v167;

  dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
  if (!v166[0])
  {
    goto LABEL_20;
  }

  v143 = v25;
  v26 = dispatch thunk of CodeGenGlobalArgs.getEntitySpansFor(attributeName:)();

  if (!v26)
  {
    goto LABEL_20;
  }

  *&v137 = v9;
  v138 = v4;
  v144 = v12;
  v145 = v8;
  v140 = v7;
  v141 = v3;
  v27 = v158;
  v28 = v26;
  v151 = *(v26 + 16);
  if (!v151)
  {
LABEL_17:

LABEL_20:

    return 5;
  }

  v29 = 0;
  v136 = (*(v160 + 80) + 32) & ~*(v160 + 80);
  v150 = v26 + v136;
  v157 = v160 + 16;
  v163 = (v159 + 8);
  v164 = v159 + 16;
  v30 = (v160 + 8);
  v147 = v17;
  v148 = (v160 + 8);
  v139 = v20;
  v146 = v26;
  while (1)
  {
    if (v29 >= *(v28 + 16))
    {
      __break(1u);
      goto LABEL_120;
    }

    v156 = *(v160 + 72);
    v155 = *(v160 + 16);
    v155(v27, v150 + v156 * v29, v17);
    v31 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of HomeAutomationAffinityScorer.scoreSummariseSetting(usoTask:_:));
    outlined destroy of String(&unk_1F58252C8);
    v32 = UsoEntitySpan.properties.getter();
    v33 = *(v32 + 16);
    if (v33)
    {
      v153 = v31;
      v154 = v29;
      v166[0] = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v33, 0);
      v34 = v166[0];
      v35 = (*(v159 + 80) + 32) & ~*(v159 + 80);
      v152 = v32;
      v36 = v32 + v35;
      v37 = *(v159 + 72);
      v38 = *(v159 + 16);
      do
      {
        v39 = v162;
        v40 = v165;
        v38(v162, v36, v165);
        v41 = SpanProperty.key.getter();
        v43 = v42;
        (*v163)(v39, v40);
        v166[0] = v34;
        v45 = *(v34 + 16);
        v44 = *(v34 + 24);
        if (v45 >= v44 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1);
          v34 = v166[0];
        }

        *(v34 + 16) = v45 + 1;
        v46 = v34 + 16 * v45;
        *(v46 + 32) = v41;
        *(v46 + 40) = v43;
        v36 += v37;
        --v33;
      }

      while (v33);

      v17 = v147;
      v30 = v148;
      v27 = v158;
      v28 = v146;
      v29 = v154;
      v31 = v153;
    }

    else
    {

      v34 = MEMORY[0x1E69E7CC0];
    }

    v26 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v34);

    v47 = specialized Set.isDisjoint(with:)(v26, v31);

    if ((v47 & 1) == 0)
    {
      break;
    }

    ++v29;
    (*v30)(v27, v17);
    if (v29 == v151)
    {
      goto LABEL_17;
    }
  }

  v26 = v149;
  (*(v160 + 32))(v149, v27, v17);
  if (one-time initialization token for kSummariseSettingStrictValues != -1)
  {
    goto LABEL_123;
  }

  while (1)
  {
    if (!UsoEntitySpan.anyPropertiesValueMatchAny(value:)(static HomeAutomationAffinityScorer.kSummariseSettingStrictValues))
    {

      (*v30)(v26, v17);
      return 5;
    }

    if ((~v142 & 0x100000000010000) == 0)
    {
      break;
    }

    v53 = dispatch thunk of Uso_VerbTemplate_Reference.userEntities.getter();

    if (!v53)
    {
      goto LABEL_107;
    }

    swift_getKeyPath();
    v166[0] = MEMORY[0x1E69E7CC0];
    if (v53 >> 62)
    {
      v54 = __CocoaSet.count.getter();
    }

    else
    {
      v54 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v54)
    {
      v30 = 0;
      v128 = MEMORY[0x1E69E7CC0];
      do
      {
        v26 = v30;
        while (1)
        {
          if ((v53 & 0xC000000000000001) != 0)
          {
            v55 = MEMORY[0x1E12A1FE0](v26, v53);
            v30 = (v26 + 1);
            if (__OFADD__(v26, 1))
            {
              goto LABEL_121;
            }
          }

          else
          {
            if (v26 >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_122;
            }

            v55 = *(v53 + 8 * v26 + 32);

            v30 = (v26 + 1);
            if (__OFADD__(v26, 1))
            {
              goto LABEL_121;
            }
          }

          v166[9] = v55;

          swift_getAtKeyPath();

          if (v167)
          {
            break;
          }

          ++v26;
          if (v30 == v54)
          {
            goto LABEL_51;
          }
        }

        MEMORY[0x1E12A1680](v56);
        if (*((v166[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v166[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v57 = *((v166[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v128 = v166[0];
      }

      while (v30 != v54);
    }

    else
    {
      v128 = MEMORY[0x1E69E7CC0];
    }

LABEL_51:

    v30 = v148;
    if (v128 >> 62)
    {
      v26 = __CocoaSet.count.getter();
    }

    else
    {
      v26 = *((v128 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v58 = v139;
    if (!v26)
    {
LABEL_106:

LABEL_107:
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v114 = type metadata accessor for Logger();
      __swift_project_value_buffer(v114, static Logger.executor);
      v115 = Logger.logObject.getter();
      v116 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v115, v116))
      {
        v117 = swift_slowAlloc();
        *v117 = 0;
        _os_log_impl(&dword_1DC659000, v115, v116, "HomeAutomationAffinityScorer - [Low] Summarise setting with no mentioned HA specific user entities", v117, 2u);
        MEMORY[0x1E12A2F50](v117, -1, -1);
      }

      else
      {
      }

      (*v30)(v149, v17);
      return 1;
    }

    v59 = 0;
    v132 = v128 & 0xC000000000000001;
    v131 = v128 & 0xFFFFFFFFFFFFFF8;
    v130 = v128 + 32;
    v152 = (v137 + 8);
    LODWORD(v146) = *MEMORY[0x1E69D1B18];
    v142 = (v138 + 13);
    ++v138;
    v137 = xmmword_1DCA66060;
    v129 = v26;
    while (1)
    {
      if (v132)
      {
        v134 = MEMORY[0x1E12A1FE0](v59, v128);
      }

      else
      {
        if (v59 >= *(v131 + 16))
        {
          goto LABEL_125;
        }

        v134 = *(v130 + 8 * v59);
      }

      v133 = v59 + 1;
      if (__OFADD__(v59, 1))
      {
        __break(1u);
LABEL_125:
        __break(1u);
        goto LABEL_126;
      }

      v60 = dispatch thunk of CodeGenGlobalArgs.getEntitySpansFor(attributeName:)();
      v61 = v60 ? v60 : MEMORY[0x1E69E7CC0];
      v154 = *(v61 + 16);
      if (v154)
      {
        break;
      }

LABEL_55:

      v26 = v129;
      v59 = v133;
      if (v133 == v129)
      {
        goto LABEL_106;
      }
    }

    v62 = 0;
    v153 = v61 + v136;
    v151 = v61;
    while (v62 < *(v61 + 16))
    {
      v158 = v62;
      v155(v58, v153 + v62 * v156, v17);
      if (one-time initialization token for kAppBundleIdMatches != -1)
      {
        swift_once();
      }

      v63 = static HomeAutomationAffinityScorer.kAppBundleIdMatches;
      v64 = v144;
      UsoEntitySpan.appBundleSemantic.getter();
      v26 = IdentifierAppBundle.rawValue.getter();
      v66 = v65;
      (*v152)(v64, v145);
      if (*(v63 + 16))
      {
        v67 = *(v63 + 40);
        Hasher.init(_seed:)();
        String.hash(into:)();
        v68 = Hasher._finalize()();
        v69 = -1 << *(v63 + 32);
        v70 = v68 & ~v69;
        if ((*(v63 + 56 + ((v70 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v70))
        {
          v71 = ~v69;
          while (1)
          {
            v72 = (*(v63 + 48) + 16 * v70);
            v73 = *v72 == v26 && v72[1] == v66;
            if (v73 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v70 = (v70 + 1) & v71;
            if (((*(v63 + 56 + ((v70 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v70) & 1) == 0)
            {
              goto LABEL_79;
            }
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
          inited = swift_initStackObject();
          *(inited + 16) = v137;
          v75 = v140;
          v76 = v141;
          (*v142)(v140, v146, v141);
          v77 = IdentifierNamespace.rawValue.getter();
          v79 = v78;
          (*v138)(v75, v76);
          *(inited + 32) = v77;
          *(inited + 40) = v79;
          v80 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(inited);
          swift_setDeallocating();
          outlined destroy of String(inited + 32);
          v81 = UsoEntitySpan.properties.getter();
          v82 = *(v81 + 16);
          if (v82)
          {
            v160 = v80;
            v166[0] = MEMORY[0x1E69E7CC0];
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v82, 0);
            v83 = v166[0];
            v84 = (*(v159 + 80) + 32) & ~*(v159 + 80);
            v150 = v81;
            v85 = v81 + v84;
            v86 = *(v159 + 72);
            v87 = *(v159 + 16);
            do
            {
              v88 = v162;
              v89 = v165;
              v87(v162, v85, v165);
              v90 = SpanProperty.key.getter();
              v92 = v91;
              (*v163)(v88, v89);
              v166[0] = v83;
              v94 = *(v83 + 16);
              v93 = *(v83 + 24);
              if (v94 >= v93 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v93 > 1), v94 + 1, 1);
                v83 = v166[0];
              }

              *(v83 + 16) = v94 + 1;
              v95 = v83 + 16 * v94;
              *(v95 + 32) = v90;
              *(v95 + 40) = v92;
              v85 += v86;
              --v82;
            }

            while (v82);

            v17 = v147;
            v30 = v148;
            v58 = v139;
            v80 = v160;
          }

          else
          {

            v83 = MEMORY[0x1E69E7CC0];
          }

          v26 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v83);

          v96 = specialized Set.isDisjoint(with:)(v26, v80);

          v61 = v151;
          if (v96)
          {
            (*v30)(v58, v17);
          }

          else
          {
            if (one-time initialization token for kHKEntityTypes != -1)
            {
              swift_once();
            }

            v97 = static HomeAutomationAffinityScorer.kHKEntityTypes;
            v98 = UsoEntitySpan.properties.getter();
            v99 = *(v98 + 16);
            if (v99)
            {
              v150 = v97;
              v100 = (*(v159 + 80) + 32) & ~*(v159 + 80);
              v135 = v98;
              v101 = v98 + v100;
              v160 = *(v159 + 72);
              v102 = *(v159 + 16);
              v103 = MEMORY[0x1E69E7CC0];
              do
              {
                v105 = v161;
                v106 = v165;
                v102(v161, v101, v165);
                v107 = SpanProperty.valueString.getter();
                v109 = v108;
                (*v163)(v105, v106);
                if (v109)
                {
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v103 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v103 + 2) + 1, 1, v103);
                  }

                  v111 = *(v103 + 2);
                  v110 = *(v103 + 3);
                  if (v111 >= v110 >> 1)
                  {
                    v103 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v110 > 1), v111 + 1, 1, v103);
                  }

                  *(v103 + 2) = v111 + 1;
                  v104 = &v103[16 * v111];
                  *(v104 + 4) = v107;
                  *(v104 + 5) = v109;
                }

                v101 += v160;
                --v99;
              }

              while (v99);

              v30 = v148;
              v97 = v150;
            }

            else
            {

              v103 = MEMORY[0x1E69E7CC0];
            }

            v26 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v103);

            v112 = specialized Set.isDisjoint(with:)(v26, v97);

            v113 = *v30;
            v58 = v139;
            (*v30)(v139, v17);
            if ((v112 & 1) == 0)
            {

              if (one-time initialization token for executor != -1)
              {
                swift_once();
              }

              v118 = type metadata accessor for Logger();
              __swift_project_value_buffer(v118, static Logger.executor);
              v119 = v134;

              v120 = Logger.logObject.getter();
              v121 = static os_log_type_t.debug.getter();

              if (os_log_type_enabled(v120, v121))
              {
                v122 = swift_slowAlloc();
                v123 = swift_slowAlloc();
                v166[0] = v123;
                *v122 = 136315138;
                v167 = v119;
                type metadata accessor for UsoEntity_common_UserEntity();

                v124 = String.init<A>(describing:)();
                v126 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v124, v125, v166);

                *(v122 + 4) = v126;
                _os_log_impl(&dword_1DC659000, v120, v121, "HomeAutomationAffinityScorer - [High] Summarise setting with salient HA entity %s", v122, 0xCu);
                __swift_destroy_boxed_opaque_existential_1Tm(v123);
                MEMORY[0x1E12A2F50](v123, -1, -1);
                MEMORY[0x1E12A2F50](v122, -1, -1);
              }

              else
              {
              }

              v113(v149, v17);
              return 3;
            }
          }
        }

        else
        {
LABEL_79:
          (*v30)(v58, v17);

          v61 = v151;
        }
      }

      else
      {
        (*v30)(v58, v17);
      }

      v62 = (v158 + 1);
      if (v158 + 1 == v154)
      {
        goto LABEL_55;
      }
    }

LABEL_120:
    __break(1u);
LABEL_121:
    __break(1u);
LABEL_122:
    __break(1u);
LABEL_123:
    swift_once();
  }

  if (one-time initialization token for executor != -1)
  {
LABEL_126:
    swift_once();
  }

  v49 = type metadata accessor for Logger();
  __swift_project_value_buffer(v49, static Logger.executor);
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&dword_1DC659000, v50, v51, "HomeAutomationAffinityScorer - [High] USO entity spans satisfy condition:\n(GeneralNamespaceMatches || ExactNameSpaceMatch) && PlaceHintGeneralMatches", v52, 2u);
    MEMORY[0x1E12A2F50](v52, -1, -1);
  }

  else
  {
  }

  (*v30)(v149, v17);
  return 3;
}

uint64_t specialized HomeAutomationAffinityScorer.isDefaultScore(_:_:_:)(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1010000010000) != 0)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.executor);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_7;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "HomeAutomationAffinityScorer - [Default] USO entity spans satisfy condition:\nGeneralNamespaceMatches || ExactNameSpaceMatch || HomeKitEntityType.FuzzyMatch || appBundleIdMatch";
LABEL_6:
    _os_log_impl(&dword_1DC659000, v3, v4, v6, v5, 2u);
    MEMORY[0x1E12A2F50](v5, -1, -1);
LABEL_7:

    return 1;
  }

  static UsoTask_CodegenConverter.convert(task:)();
  if (v11)
  {
    type metadata accessor for UsoTask_disable_common_Setting();
    if (swift_dynamicCast())
    {

      SiriEnvironment.currentDevice.getter();
      v8 = dispatch thunk of CurrentDevice.isAppleTV.getter();

      if (v8)
      {
        if (one-time initialization token for executor != -1)
        {
          swift_once();
        }

        v9 = type metadata accessor for Logger();
        __swift_project_value_buffer(v9, static Logger.executor);
        v3 = Logger.logObject.getter();
        v4 = static os_log_type_t.debug.getter();
        if (!os_log_type_enabled(v3, v4))
        {
          goto LABEL_7;
        }

        v5 = swift_slowAlloc();
        *v5 = 0;
        v6 = "HomeAutomationAffinityScorer - [Default] Turn off on AppleTV case";
        goto LABEL_6;
      }
    }
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v10, &_sypSgMd, &_sypSgMR);
  }

  return 0;
}

unint64_t specialized HomeAutomationAffinityScorer.HomeAutomationNamespace.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of HomeAutomationAffinityScorer.HomeAutomationNamespace.init(rawValue:), v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

unint64_t specialized HomeAutomationAffinityScorer.HomeAppEntityType.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of HomeAutomationAffinityScorer.HomeAppEntityType.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type HomeAutomationAffinityScorer.HomeAutomationNamespace and conformance HomeAutomationAffinityScorer.HomeAutomationNamespace()
{
  result = lazy protocol witness table cache variable for type HomeAutomationAffinityScorer.HomeAutomationNamespace and conformance HomeAutomationAffinityScorer.HomeAutomationNamespace;
  if (!lazy protocol witness table cache variable for type HomeAutomationAffinityScorer.HomeAutomationNamespace and conformance HomeAutomationAffinityScorer.HomeAutomationNamespace)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HomeAutomationAffinityScorer.HomeAutomationNamespace and conformance HomeAutomationAffinityScorer.HomeAutomationNamespace);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HomeAutomationAffinityScorer.HomeAppEntityType and conformance HomeAutomationAffinityScorer.HomeAppEntityType()
{
  result = lazy protocol witness table cache variable for type HomeAutomationAffinityScorer.HomeAppEntityType and conformance HomeAutomationAffinityScorer.HomeAppEntityType;
  if (!lazy protocol witness table cache variable for type HomeAutomationAffinityScorer.HomeAppEntityType and conformance HomeAutomationAffinityScorer.HomeAppEntityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HomeAutomationAffinityScorer.HomeAppEntityType and conformance HomeAutomationAffinityScorer.HomeAppEntityType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HomeAutomationAffinityScorer.HomeAppEntityType and conformance HomeAutomationAffinityScorer.HomeAppEntityType;
  if (!lazy protocol witness table cache variable for type HomeAutomationAffinityScorer.HomeAppEntityType and conformance HomeAutomationAffinityScorer.HomeAppEntityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HomeAutomationAffinityScorer.HomeAppEntityType and conformance HomeAutomationAffinityScorer.HomeAppEntityType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [HomeAutomationAffinityScorer.HomeAppEntityType] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [HomeAutomationAffinityScorer.HomeAppEntityType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [HomeAutomationAffinityScorer.HomeAppEntityType] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay14SiriKitRuntime28HomeAutomationAffinityScorerV0D13AppEntityTypeOGMd, &_sSay14SiriKitRuntime28HomeAutomationAffinityScorerV0D13AppEntityTypeOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [HomeAutomationAffinityScorer.HomeAppEntityType] and conformance [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SpanMatchAccuracy and conformance SpanMatchAccuracy()
{
  result = lazy protocol witness table cache variable for type SpanMatchAccuracy and conformance SpanMatchAccuracy;
  if (!lazy protocol witness table cache variable for type SpanMatchAccuracy and conformance SpanMatchAccuracy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpanMatchAccuracy and conformance SpanMatchAccuracy);
  }

  return result;
}

uint64_t __swift_memcpy10_1(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for HomeAutomationAffinityScorer.HAMatchConditions(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[10])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for HomeAutomationAffinityScorer.HAMatchConditions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type PayloadAttachmentInfo.AttachmentType and conformance PayloadAttachmentInfo.AttachmentType(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t IdentifiedUser.extractLocale(userSpecificInfo:settings:defaultLocale:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v70 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV9HourCycleOSgMd, &_s10Foundation6LocaleV9HourCycleOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v65 = &v56 - v7;
  v8 = type metadata accessor for Locale.Language.Components();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v66 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV6RegionVSgMd, &_s10Foundation6LocaleV6RegionVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v56 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV6ScriptVSgMd, &_s10Foundation6LocaleV6ScriptVSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v56 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v56 - v21;
  v23 = type metadata accessor for Locale.Components();
  v68 = *(v23 - 8);
  v69 = v23;
  v24 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v67 = &v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v56 - v28;
  v71 = a2;
  if (a1)
  {
    v30 = *(a1 + OBJC_IVAR___SKEUserSpecificInfo_preferredLanguage + 8);
    if (v30)
    {
      v64 = *(a1 + OBJC_IVAR___SKEUserSpecificInfo_preferredLanguage);

      goto LABEL_6;
    }
  }

  if (a2)
  {
    v31 = [a2 preferredLanguage];
    v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v32;

    if (a1)
    {
      goto LABEL_6;
    }

LABEL_13:
    if (!a2)
    {
LABEL_10:

      if (!v30)
      {
        goto LABEL_25;
      }

LABEL_27:

      goto LABEL_28;
    }

LABEL_14:
    v36 = [a2 countryCode];
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v37;

    if (!v30)
    {
      goto LABEL_25;
    }

    goto LABEL_15;
  }

  v64 = 0;
  v30 = 0;
  if (!a1)
  {
    goto LABEL_13;
  }

LABEL_6:
  v33 = *(a1 + OBJC_IVAR___SKEUserSpecificInfo_countryCode + 8);
  if (!v33)
  {
    a2 = v71;
    if (!v71)
    {
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  v34 = *(a1 + OBJC_IVAR___SKEUserSpecificInfo_countryCode);
  v35 = *(a1 + OBJC_IVAR___SKEUserSpecificInfo_countryCode + 8);

  if (v30)
  {
LABEL_15:
    if (v33)
    {
      v38 = HIBYTE(v30) & 0xF;
      if ((v30 & 0x2000000000000000) == 0)
      {
        v38 = v64 & 0xFFFFFFFFFFFFLL;
      }

      if (v38)
      {
        v39 = HIBYTE(v33) & 0xF;
        if ((v33 & 0x2000000000000000) == 0)
        {
          v39 = v34 & 0xFFFFFFFFFFFFLL;
        }

        if (v39)
        {
          v61 = type metadata accessor for Locale.LanguageCode();
          v40 = *(v61 - 8);
          v62 = *(v40 + 56);
          v63 = v40 + 56;
          v62(v22, 1, 1, v61);
          v58 = type metadata accessor for Locale.Script();
          v41 = *(v58 - 8);
          v59 = *(v41 + 56);
          v60 = v41 + 56;
          v59(v18, 1, 1, v58);
          v57 = type metadata accessor for Locale.Region();
          v42 = *(*(v57 - 8) + 56);
          v42(v14, 1, 1, v57);
          Locale.Components.init(languageCode:script:languageRegion:)();
          MEMORY[0x1E129A320](v64, v30);
          v62(v22, 0, 1, v61);
          v59(v18, 1, 1, v58);
          Locale.Region.init(_:)();
          v42(v14, 0, 1, v57);
          Locale.Language.Components.init(languageCode:script:region:)();
          a2 = v71;
          goto LABEL_31;
        }
      }

      goto LABEL_25;
    }

    a2 = v71;
    goto LABEL_27;
  }

LABEL_25:

  a2 = v71;
LABEL_28:
  v43 = type metadata accessor for Locale.LanguageCode();
  (*(*(v43 - 8) + 56))(v22, 1, 1, v43);
  v44 = type metadata accessor for Locale.Script();
  (*(*(v44 - 8) + 56))(v18, 1, 1, v44);
  v45 = type metadata accessor for Locale.Region();
  (*(*(v45 - 8) + 56))(v14, 1, 1, v45);
  Locale.Components.init(languageCode:script:languageRegion:)();
  v46 = [objc_opt_self() sharedPreferences];
  v47 = [v46 languageCode];

  if (v47)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  Locale.Language.Components.init(identifier:)();
LABEL_31:
  Locale.Components.languageComponents.setter();
  if (a1)
  {
    if (*(a1 + OBJC_IVAR___SKEUserSpecificInfo_twentyFourHourTimeDisplay))
    {
LABEL_33:
      v48 = MEMORY[0x1E6969758];
LABEL_37:
      v49 = *v48;
      v50 = type metadata accessor for Locale.HourCycle();
      v51 = *(v50 - 8);
      v52 = v65;
      (*(v51 + 104))(v65, v49, v50);
      (*(v51 + 56))(v52, 0, 1, v50);
      Locale.Components.hourCycle.setter();
      goto LABEL_38;
    }

LABEL_36:
    v48 = MEMORY[0x1E6969748];
    goto LABEL_37;
  }

  if (a2)
  {
    if ([a2 twentyFourHourTimeDisplay])
    {
      goto LABEL_33;
    }

    goto LABEL_36;
  }

LABEL_38:
  v53 = v68;
  v54 = v69;
  (*(v68 + 16))(v67, v29, v69);
  Locale.init(components:)();
  return (*(v53 + 8))(v29, v54);
}

uint64_t specialized Sequence.flatMap<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v34 = *(a1 + 16);
  if (!v34)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = 0;
  v5 = *(type metadata accessor for Siri_Nlu_External_UserDialogAct() - 8);
  v33 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v6 = MEMORY[0x1E69E7CC0];
  v32 = *(v5 + 72);
  while (1)
  {
    v8 = static ConversionUtils.convertUserDialogActToTasks(userDialogAct:)();
    if (v2)
    {

      return v6;
    }

    v9 = v8;
    v10 = v8 >> 62;
    v11 = v8 >> 62 ? __CocoaSet.count.getter() : *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = v6 >> 62;
    if (v6 >> 62)
    {
      v30 = __CocoaSet.count.getter();
      v14 = v30 + v11;
      if (__OFADD__(v30, v11))
      {
LABEL_35:
        __break(1u);
        return MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v13 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v14 = v13 + v11;
      if (__OFADD__(v13, v11))
      {
        goto LABEL_35;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (v12)
      {
        goto LABEL_17;
      }

      v15 = v6 & 0xFFFFFFFFFFFFFF8;
      if (v14 <= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v16 = v11;
        goto LABEL_19;
      }
    }

    else
    {
      if (v12)
      {
LABEL_17:
        __CocoaSet.count.getter();
        goto LABEL_18;
      }

      v15 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v17 = *(v15 + 16);
LABEL_18:
    v16 = v11;
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v6 = result;
    v15 = result & 0xFFFFFFFFFFFFFF8;
LABEL_19:
    v18 = *(v15 + 16);
    v19 = *(v15 + 24);
    if (v10)
    {
      break;
    }

    v20 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v20)
    {
      goto LABEL_3;
    }

LABEL_23:
    if (((v19 >> 1) - v18) < v16)
    {
      goto LABEL_40;
    }

    v36 = v16;
    v22 = v15 + 8 * v18 + 32;
    v31 = v15;
    if (v10)
    {
      if (v20 < 1)
      {
        goto LABEL_42;
      }

      lazy protocol witness table accessor for type [UsoTask] and conformance [A]();
      for (i = 0; i != v20; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology7UsoTaskCGMd, &_sSay12SiriOntology7UsoTaskCGMR);
        v24 = specialized protocol witness for Collection.subscript.read in conformance [A](v35, i, v9);
        v26 = *v25;

        (v24)(v35, 0);
        *(v22 + 8 * i) = v26;
      }
    }

    else
    {
      type metadata accessor for UsoTask();
      swift_arrayInitWithCopy();
    }

    v2 = 0;
    if (v36 >= 1)
    {
      v27 = *(v31 + 16);
      v28 = __OFADD__(v27, v36);
      v29 = v27 + v36;
      if (v28)
      {
        goto LABEL_41;
      }

      *(v31 + 16) = v29;
    }

LABEL_4:
    if (++v4 == v34)
    {
      return v6;
    }
  }

  v21 = v15;
  result = __CocoaSet.count.getter();
  v15 = v21;
  v20 = result;
  if (result)
  {
    goto LABEL_23;
  }

LABEL_3:

  if (v16 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

SiriKitRuntime::InformationAffinityScorer __swiftcall InformationAffinityScorer.init()()
{
  v0 = 0x80000001DCA7CB30;
  v1 = 0xD000000000000024;
  result.bundleIdentifier._object = v0;
  result.bundleIdentifier._countAndFlagsBits = v1;
  return result;
}

uint64_t closure #1 in InformationAffinityScorer.score(input:environment:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v44 - v4;
  v6 = type metadata accessor for PommesContext();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v44 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v44 - v15;
  PommesResponse.previousPommesContext.getter();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of PommesContext?(v5);
LABEL_21:
    v42 = 0;
    return v42 & 1;
  }

  (*(v7 + 32))(v16, v5, v6);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.executor);
  v18 = *(v7 + 16);
  v18(v13, v16, v6);
  v18(v10, v16, v6);
  v19 = a1;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();

  v22 = os_log_type_enabled(v20, v21);
  v48 = v19;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v49 = v47;
    *v23 = 67109634;
    v46 = v21;
    v24 = PommesContext.listenAfterSpeaking.getter() & 1;
    v45 = v20;
    v25 = *(v7 + 8);
    v25(v13, v6);
    *(v23 + 4) = v24;
    *(v23 + 8) = 2080;
    v26 = PommesResponse.metadataDomainName.getter();
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v49);

    *(v23 + 10) = v28;
    *(v23 + 18) = 2080;
    v29 = PommesContext.domain.getter();
    if (v30)
    {
      v31 = v29;
    }

    else
    {
      v31 = 0x3E6C696E3CLL;
    }

    if (v30)
    {
      v32 = v30;
    }

    else
    {
      v32 = 0xE500000000000000;
    }

    v25(v10, v6);
    v33 = v25;
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &v49);

    *(v23 + 20) = v34;
    v35 = v45;
    _os_log_impl(&dword_1DC659000, v45, v46, "Checking high affinity: previousPommesContext.listenAfterSpeaking=%{BOOL}d && pommes.metadataDomainName=%s == previousPommesContext.domain=%s", v23, 0x1Cu);
    v36 = v47;
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v36, -1, -1);
    MEMORY[0x1E12A2F50](v23, -1, -1);
  }

  else
  {
    v33 = *(v7 + 8);
    v33(v13, v6);

    v33(v10, v6);
  }

  if ((PommesContext.listenAfterSpeaking.getter() & 1) == 0)
  {
LABEL_20:
    v33(v16, v6);
    goto LABEL_21;
  }

  v37 = PommesResponse.metadataDomainName.getter();
  v39 = v38;
  v40 = PommesContext.domain.getter();
  if (!v41)
  {

    goto LABEL_20;
  }

  if (v37 == v40 && v41 == v39)
  {
    v42 = 1;
  }

  else
  {
    v42 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v33(v16, v6);
  return v42 & 1;
}

uint64_t Siri_Nlu_External_UserParse.firstRecipeTask()()
{
  v1 = MEMORY[0x1E129C0F0]();
  v2 = specialized Sequence.flatMap<A>(_:)(v1);

  if (!v0)
  {
    if (v2 >> 62)
    {
      goto LABEL_16;
    }

    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      while (1)
      {
        v4 = 0;
        while ((v2 & 0xC000000000000001) != 0)
        {
          v1 = MEMORY[0x1E12A1FE0](v4, v2);
          v5 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:

            return v1;
          }

LABEL_8:
          if (UsoTask.isRecipeTask()())
          {
            goto LABEL_14;
          }

          ++v4;
          if (v5 == v3)
          {
            goto LABEL_17;
          }
        }

        if (v4 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_16:
        v3 = __CocoaSet.count.getter();
        if (!v3)
        {
          goto LABEL_17;
        }
      }

      v1 = *(v2 + 8 * v4 + 32);

      v5 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

LABEL_17:

    return 0;
  }

  return v1;
}

uint64_t specialized InformationAffinityScorer.score(input:environment:)()
{
  v0 = type metadata accessor for Siri_Nlu_External_UserParse();
  v56 = *(v0 - 8);
  v1 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v55 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for USOParse();
  v58 = *(v4 - 8);
  v59 = v4;
  v5 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v57 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PommesSearchReason();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v55 - v13;
  v15 = type metadata accessor for Parse();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = (&v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  Input.parse.getter();
  v20 = (*(v16 + 88))(v19, v15);
  if (v20 == *MEMORY[0x1E69D0138])
  {
    (*(v16 + 96))(v19, v15);
    v21 = *v19;
    dispatch thunk of PommesResponse.searchReason.getter();
    (*(v8 + 104))(v11, *MEMORY[0x1E69CE648], v7);
    lazy protocol witness table accessor for type PommesSearchReason and conformance PommesSearchReason();
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v62 == v60 && v63 == v61)
    {
      v22 = *(v8 + 8);
      v22(v11, v7);
      v22(v14, v7);

LABEL_8:
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      __swift_project_value_buffer(v28, static Logger.executor);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_1DC659000, v29, v30, "Detected fallback pommes response", v31, 2u);
        MEMORY[0x1E12A2F50](v31, -1, -1);
      }

      return 4;
    }

    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v27 = *(v8 + 8);
    v27(v11, v7);
    v27(v14, v7);

    if (v26)
    {
      goto LABEL_8;
    }

    dispatch thunk of PommesResponse.primaryQueryConfidence()();
    if (v37 <= 0.5)
    {
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
        *v54 = 0;
        _os_log_impl(&dword_1DC659000, v52, v53, "Detected low confidence pommes response", v54, 2u);
        MEMORY[0x1E12A2F50](v54, -1, -1);
      }

      return 0;
    }

    else
    {
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v38 = type metadata accessor for Logger();
      __swift_project_value_buffer(v38, static Logger.executor);
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_1DC659000, v39, v40, "Detected high confidence pommes response", v41, 2u);
        MEMORY[0x1E12A2F50](v41, -1, -1);
      }

      v42 = closure #1 in InformationAffinityScorer.score(input:environment:)(v21);
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 67109120;
        *(v45 + 4) = v42 & 1;
        _os_log_impl(&dword_1DC659000, v43, v44, "Detected high affinity? %{BOOL}d", v45, 8u);
        MEMORY[0x1E12A2F50](v45, -1, -1);
      }

      if (v42)
      {
        return 3;
      }

      else
      {
        return 2;
      }
    }
  }

  else
  {
    if (v20 == *MEMORY[0x1E69D0168])
    {
      (*(v16 + 96))(v19, v15);
      v24 = v57;
      v23 = v58;
      v25 = v59;
      (*(v58 + 32))(v57, v19, v59);
      USOParse.userParse.getter();
      v46 = Siri_Nlu_External_UserParse.firstRecipeTask()();
      (*(v56 + 8))(v3, v0);
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v47 = type metadata accessor for Logger();
      __swift_project_value_buffer(v47, static Logger.executor);

      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 67109120;
        *(v50 + 4) = v46 != 0;

        _os_log_impl(&dword_1DC659000, v48, v49, "Parse has recipe task? %{BOOL}d", v50, 8u);
        MEMORY[0x1E12A2F50](v50, -1, -1);
      }

      else
      {
      }

      (*(v23 + 8))(v24, v25);
      if (v46)
      {

        return 1;
      }
    }

    else
    {
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      __swift_project_value_buffer(v33, static Logger.executor);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_1DC659000, v34, v35, "Got unexpected parse", v36, 2u);
        MEMORY[0x1E12A2F50](v36, -1, -1);
      }

      (*(v16 + 8))(v19, v15);
    }

    return 2;
  }
}

unint64_t lazy protocol witness table accessor for type PommesSearchReason and conformance PommesSearchReason()
{
  result = lazy protocol witness table cache variable for type PommesSearchReason and conformance PommesSearchReason;
  if (!lazy protocol witness table cache variable for type PommesSearchReason and conformance PommesSearchReason)
  {
    type metadata accessor for PommesSearchReason();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesSearchReason and conformance PommesSearchReason);
  }

  return result;
}

uint64_t outlined destroy of PommesContext?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type [UsoTask] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [UsoTask] and conformance [A];
  if (!lazy protocol witness table cache variable for type [UsoTask] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay12SiriOntology7UsoTaskCGMd, &_sSay12SiriOntology7UsoTaskCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [UsoTask] and conformance [A]);
  }

  return result;
}

uint64_t InputValueFetcher.argument.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t InputValueFetcher.init(type:argument:)(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v3 + 16) = a1;
  if (a3)
  {
    if (a1 <= 7u && ((1 << a1) & 0x83) != 0)
    {

      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      __swift_project_value_buffer(v6, static Logger.executor);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v7, v8))
      {
        goto LABEL_27;
      }

      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v43 = v10;
      v11 = 0xE800000000000000;
      v12 = 0x657079546B736174;
      *v9 = 136315138;
      v13 = 0x636E657265666572;
      v14 = 0xE900000000000065;
      v15 = 0xE700000000000000;
      if (a1 != 6)
      {
        v13 = 0x65707954616475;
        v14 = 0xE700000000000000;
      }

      v16 = 0x65756C6176736ELL;
      if (a1 != 4)
      {
        v16 = 0x797469746E65;
        v15 = 0xE600000000000000;
      }

      if (a1 <= 5u)
      {
        v13 = v16;
        v14 = v15;
      }

      v17 = 0xE500000000000000;
      v18 = 0x6261636F76;
      if (a1 != 2)
      {
        v18 = 0x63617073656D616ELL;
        v17 = 0xE900000000000065;
      }

      if (a1)
      {
        v12 = 0x726573726170;
        v11 = 0xE600000000000000;
      }

      if (a1 > 1u)
      {
        v12 = v18;
        v11 = v17;
      }

      if (a1 <= 3u)
      {
        v19 = v12;
      }

      else
      {
        v19 = v13;
      }

      if (a1 <= 3u)
      {
        v20 = v11;
      }

      else
      {
        v20 = v14;
      }

      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v43);

      *(v9 + 4) = v21;
      v22 = "input value fetcher %s given bogus argument";
LABEL_26:
      _os_log_impl(&dword_1DC659000, v7, v8, v22, v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x1E12A2F50](v10, -1, -1);
      MEMORY[0x1E12A2F50](v9, -1, -1);
LABEL_27:

      type metadata accessor for InputValueFetcher();
      swift_deallocPartialClassInstance();
      return 0;
    }

    *(v3 + 24) = a2;
    *(v3 + 32) = a3;
  }

  else
  {
    if (a1 > 7u || ((1 << a1) & 0x83) == 0)
    {
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      __swift_project_value_buffer(v32, static Logger.executor);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v7, v8))
      {
        goto LABEL_27;
      }

      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v43 = v10;
      *v9 = 136315138;
      v33 = 0xE500000000000000;
      v34 = 0xE700000000000000;
      v35 = 0x65707954616475;
      if (a1 != 7)
      {
        v35 = 0xD000000000000019;
        v34 = 0x80000001DCA79790;
      }

      v36 = 0xE600000000000000;
      v37 = 0x797469746E65;
      if (a1 != 5)
      {
        v37 = 0x636E657265666572;
        v36 = 0xE900000000000065;
      }

      if (a1 <= 6u)
      {
        v35 = v37;
        v34 = v36;
      }

      v38 = 0x63617073656D616ELL;
      v39 = 0xE900000000000065;
      if (a1 != 3)
      {
        v38 = 0x65756C6176736ELL;
        v39 = 0xE700000000000000;
      }

      if (a1 == 2)
      {
        v38 = 0x6261636F76;
      }

      else
      {
        v33 = v39;
      }

      if (a1 <= 4u)
      {
        v40 = v38;
      }

      else
      {
        v40 = v35;
      }

      if (a1 <= 4u)
      {
        v41 = v33;
      }

      else
      {
        v41 = v34;
      }

      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, &v43);

      *(v9 + 4) = v42;
      v22 = "input value fetcher %s missing argument";
      goto LABEL_26;
    }

    *(v3 + 24) = 0;
    *(v3 + 32) = 0;
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static Logger.executor);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v43 = v27;
    *v26 = 136315138;
    v28 = (*(*v3 + 112))();
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v43);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_1DC659000, v24, v25, "%s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    MEMORY[0x1E12A2F50](v27, -1, -1);
    MEMORY[0x1E12A2F50](v26, -1, -1);
  }

  return v4;
}

uint64_t InputValueType.rawValue.getter(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x657079546B736174;
    v6 = 0x6261636F76;
    if (a1 != 2)
    {
      v6 = 0x63617073656D616ELL;
    }

    if (a1)
    {
      v5 = 0x726573726170;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x636E657265666572;
    v2 = 0x65707954616475;
    if (a1 != 7)
    {
      v2 = 0xD000000000000019;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x65756C6176736ELL;
    if (a1 != 4)
    {
      v3 = 0x797469746E65;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t InputValueFetcher.init(plist:)(uint64_t *a1)
{
  v2 = v1;
  outlined init with copy of Any(a1, v69);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_74;
  }

  v69[0] = v67;
  v69[1] = v68;
  v4 = lazy protocol witness table accessor for type String and conformance String();
  v5 = MEMORY[0x1E12A1E10](58, 0xE100000000000000, 1, 1, MEMORY[0x1E69E6158], v4);

  if (!v5[2])
  {
    goto LABEL_4;
  }

  v6 = v5[4];
  v7 = v5[5];
  v8 = v5[6];
  v9 = v5[7];

  v10 = MEMORY[0x1E12A1500](v6, v7, v8, v9);
  v12 = v11;

  v70._countAndFlagsBits = v10;
  v70._object = v12;
  v13 = specialized InputValueType.init(rawValue:)(v70);
  if (v13 == 9)
  {
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1Tm(a1);

LABEL_75:
    type metadata accessor for InputValueFetcher();
    swift_deallocPartialClassInstance();
    return 0;
  }

  *(v2 + 16) = v13;
  if (v13 > 7u || ((1 << v13) & 0x83) == 0)
  {
    if (v5[2] == 2)
    {
      v30 = v5[8];
      v31 = v5[9];
      v32 = v5[10];
      v33 = v5[11];

      v34 = MEMORY[0x1E12A1500](v30, v31, v32, v33);
      v36 = v35;

      *(v2 + 24) = v34;
      *(v2 + 32) = v36;
      goto LABEL_29;
    }

    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    __swift_project_value_buffer(v45, static Logger.executor);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v17, v18))
    {
      goto LABEL_73;
    }

    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v69[0] = v20;
    *v19 = 136315138;
    v46 = *(v2 + 16);
    if (v46 <= 3)
    {
      v61 = 0x657079546B736174;
      v62 = 0xE800000000000000;
      v63 = 0xE500000000000000;
      v64 = 0x6261636F76;
      if (v46 != 2)
      {
        v64 = 0x63617073656D616ELL;
        v63 = 0xE900000000000065;
      }

      if (*(v2 + 16))
      {
        v61 = 0x726573726170;
        v62 = 0xE600000000000000;
      }

      if (*(v2 + 16) <= 1u)
      {
        v53 = v61;
      }

      else
      {
        v53 = v64;
      }

      if (*(v2 + 16) <= 1u)
      {
        v54 = v62;
      }

      else
      {
        v54 = v63;
      }
    }

    else
    {
      v47 = 0x636E657265666572;
      v48 = 0xE900000000000065;
      v49 = 0xE700000000000000;
      v50 = 0x65707954616475;
      if (v46 != 7)
      {
        v50 = 0xD000000000000019;
        v49 = 0x80000001DCA79790;
      }

      if (v46 != 6)
      {
        v47 = v50;
        v48 = v49;
      }

      v51 = 0xE700000000000000;
      v52 = 0x65756C6176736ELL;
      if (v46 != 4)
      {
        v52 = 0x797469746E65;
        v51 = 0xE600000000000000;
      }

      if (*(v2 + 16) <= 5u)
      {
        v53 = v52;
      }

      else
      {
        v53 = v47;
      }

      if (*(v2 + 16) <= 5u)
      {
        v54 = v51;
      }

      else
      {
        v54 = v48;
      }
    }

    v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, v69);

    *(v19 + 4) = v65;
    v60 = "input value fetcher %s missing argument";
    goto LABEL_72;
  }

  v15 = v5[2];

  if (v15 != 1)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.executor);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v17, v18))
    {
      goto LABEL_73;
    }

    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v69[0] = v20;
    *v19 = 136315138;
    v21 = *(v2 + 16);
    if (v21 <= 3)
    {
      v55 = 0x657079546B736174;
      v56 = 0xE800000000000000;
      v57 = 0xE500000000000000;
      v58 = 0x6261636F76;
      if (v21 != 2)
      {
        v58 = 0x63617073656D616ELL;
        v57 = 0xE900000000000065;
      }

      if (*(v2 + 16))
      {
        v55 = 0x726573726170;
        v56 = 0xE600000000000000;
      }

      if (*(v2 + 16) <= 1u)
      {
        v28 = v55;
      }

      else
      {
        v28 = v58;
      }

      if (*(v2 + 16) <= 1u)
      {
        v29 = v56;
      }

      else
      {
        v29 = v57;
      }
    }

    else
    {
      v22 = 0x636E657265666572;
      v23 = 0xE900000000000065;
      v24 = 0xE700000000000000;
      v25 = 0x65707954616475;
      if (v21 != 7)
      {
        v25 = 0xD000000000000019;
        v24 = 0x80000001DCA79790;
      }

      if (v21 != 6)
      {
        v22 = v25;
        v23 = v24;
      }

      v26 = 0xE700000000000000;
      v27 = 0x65756C6176736ELL;
      if (v21 != 4)
      {
        v27 = 0x797469746E65;
        v26 = 0xE600000000000000;
      }

      if (*(v2 + 16) <= 5u)
      {
        v28 = v27;
      }

      else
      {
        v28 = v22;
      }

      if (*(v2 + 16) <= 5u)
      {
        v29 = v26;
      }

      else
      {
        v29 = v23;
      }
    }

    v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, v69);

    *(v19 + 4) = v59;
    v60 = "input value fetcher %s given bogus argument(s)";
LABEL_72:
    _os_log_impl(&dword_1DC659000, v17, v18, v60, v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x1E12A2F50](v20, -1, -1);
    MEMORY[0x1E12A2F50](v19, -1, -1);
LABEL_73:

LABEL_74:
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    goto LABEL_75;
  }

  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
LABEL_29:
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  __swift_project_value_buffer(v37, static Logger.executor);

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v69[0] = v41;
    *v40 = 136315138;
    v42 = (*(*v2 + 112))();
    v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, v69);

    *(v40 + 4) = v44;
    _os_log_impl(&dword_1DC659000, v38, v39, "%s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
    MEMORY[0x1E12A2F50](v41, -1, -1);
    MEMORY[0x1E12A2F50](v40, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v2;
}

uint64_t InputValueFetcher.debugDescription.getter()
{
  _StringGuts.grow(_:)(47);
  MEMORY[0x1E12A1580](0xD00000000000001FLL, 0x80000001DCA84170);
  v3 = *(v0 + 16);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](0x656D75677261202CLL, 0xEB000000003D746ELL);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v1 = String.init<A>(describing:)();
  MEMORY[0x1E12A1580](v1);

  MEMORY[0x1E12A1580](41, 0xE100000000000000);
  return 0;
}

uint64_t InputValueFetcher.fetchValue(input:)()
{
  v1 = (*(*v0 + 112))();
  v3 = specialized logAction<A>(label:_:)(v1, v2, partial apply for closure #1 in InputValueFetcher.fetchValue(input:));

  return v3;
}

uint64_t InputValueFetcher.internalFetchValue(input:)()
{
  v264 = type metadata accessor for Google_Protobuf_StringValue();
  v245 = *(v264 - 8);
  v0 = *(v245 + 64);
  MEMORY[0x1EEE9AC00](v264);
  v251 = &v233 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v256 = &v233 - v3;
  MEMORY[0x1EEE9AC00](v4);
  v252 = &v233 - v5;
  v273 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier();
  v263 = *(v273 - 8);
  v6 = *(v263 + 64);
  MEMORY[0x1EEE9AC00](v273);
  v270 = (&v233 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v266 = &v233 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v253 = &v233 - v11;
  v238 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
  v12 = *(*(v238 - 8) + 64);
  MEMORY[0x1EEE9AC00](v238);
  v237 = &v233 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v240 = type metadata accessor for Siri_Nlu_External_Parser();
  v241 = *(v240 - 8);
  v14 = *(v241 + 64);
  MEMORY[0x1EEE9AC00](v240);
  v239 = &v233 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v250 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v249 = *(v250 - 8);
  v16 = *(v249 + 64);
  MEMORY[0x1EEE9AC00](v250);
  v248 = &v233 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v244 = &v233 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v243 = &v233 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v242 = &v233 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v261 = &v233 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v30 = &v233 - v29;
  v31 = type metadata accessor for USOParse();
  v258 = *(v31 - 8);
  v259 = v31;
  v32 = *(v258 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v257 = &v233 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for Parse();
  v268 = *(v34 - 8);
  v35 = *(v268 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v37 = (&v233 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v267 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v271 = *(v267 - 8);
  v38 = *(v271 + 64);
  MEMORY[0x1EEE9AC00](v267);
  v246 = &v233 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v233 - v41;
  MEMORY[0x1EEE9AC00](v43);
  v247 = &v233 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v260 = &v233 - v46;
  v47 = type metadata accessor for Siri_Nlu_External_UserParse();
  v48 = *(v47 - 1);
  v255 = v48;
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v51 = &v233 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v233 - v53;
  MEMORY[0x1EEE9AC00](v55);
  v262 = &v233 - v56;
  Input.parse.getter();
  v57 = v268;
  v58 = (*(v268 + 88))(v37, v34);
  if (v58 != *MEMORY[0x1E69D0128])
  {
    v254 = v47;
    if (v58 == *MEMORY[0x1E69D0168])
    {
      (*(v57 + 96))(v37, v34);
      (*(v258 + 32))(v257, v37, v259);
      v63 = v262;
      USOParse.userParse.getter();
      v64 = USOParse.appBundleId.getter();
      v66 = v65;
      v67 = USOParse.userParse.getter();
      v68 = MEMORY[0x1E129C0F0](v67);
      v69 = *(v48 + 8);
      v69(v54, v254);
      v70 = *(v68 + 16);
      if (v70)
      {
        v234 = v64;
        v236 = v66;
        v235 = v69;
        v71 = 0;
        v268 = v271 + 16;
        v72 = (v271 + 8);
        v73 = v267;
        while (v71 < *(v68 + 16))
        {
          v74 = v68 + ((*(v271 + 80) + 32) & ~*(v271 + 80));
          v75 = *(v271 + 16);
          v75(v42, v74 + *(v271 + 72) * v71, v73);
          v76 = v73;
          if (Siri_Nlu_External_UserDialogAct.hasUserStatedTask.getter())
          {
            (*(v258 + 8))(v257, v259);

            v98 = *(v271 + 32);
            v99 = v247;
            v98(v247, v42, v76);
            v42 = v260;
            v98(v260, v99, v76);
            v78 = v265;
            v47 = v254;
            goto LABEL_28;
          }

          ++v71;
          (*v72)(v42, v73);
          if (v70 == v71)
          {
            v47 = v254;
            v63 = v266;
            if (*(v68 + 16))
            {
              v77 = v246;
              v75(v246, v74, v73);

              (*(v258 + 8))(v257, v259);
              v42 = v260;
              (*(v271 + 32))(v260, v77, v73);
              v78 = v265;
              v79 = v261;
              goto LABEL_29;
            }

            __break(1u);
LABEL_200:
            v79 = __CocoaSet.count.getter();
            v254 = v47;
            if (!v79)
            {
LABEL_201:
              v123 = MEMORY[0x1E69E7CC0];
              goto LABEL_202;
            }

LABEL_67:
            v47 = 0;
            v63 = v74 & 0xC000000000000001;
            v123 = MEMORY[0x1E69E7CC0];
            do
            {
              v124 = v47;
              while (1)
              {
                if (v63)
                {
                  v71 = MEMORY[0x1E12A1FE0](v124, v74);
                  v47 = (v124 + 1);
                  if (__OFADD__(v124, 1))
                  {
                    goto LABEL_192;
                  }
                }

                else
                {
                  if (v124 >= *(v42 + 2))
                  {
                    goto LABEL_194;
                  }

                  v71 = *(v74 + 8 * v124 + 32);

                  v47 = (v124 + 1);
                  if (__OFADD__(v124, 1))
                  {
LABEL_192:
                    __break(1u);
                    goto LABEL_193;
                  }
                }

                if (dispatch thunk of UsoValue.getAsEntity()())
                {
                  break;
                }

                ++v124;
                v73 = v267;
                if (v47 == v79)
                {
                  goto LABEL_202;
                }
              }

              v125 = UsoTask.verbString.getter();
              v273 = v126;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v123 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v123 + 2) + 1, 1, v123);
              }

              v128 = *(v123 + 2);
              v127 = *(v123 + 3);
              v71 = v128 + 1;
              if (v128 >= v127 >> 1)
              {
                v123 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v127 > 1), v128 + 1, 1, v123);
              }

              *(v123 + 2) = v71;
              v129 = &v123[16 * v128];
              v130 = v273;
              *(v129 + 4) = v125;
              *(v129 + 5) = v130;
              v73 = v267;
            }

            while (v47 != v79);
LABEL_202:

            v219 = *(v123 + 2);
            v273 = v123;
            if (v219)
            {
              v220 = (v123 + 40);
              v47 = v254;
              v42 = v260;
              v79 = v261;
              v221 = v269;
              while (1)
              {
                v222 = *(v221 + 32);
                if (v222)
                {
                  v148 = *(v220 - 1);
                  if (v148 == *(v221 + 24) && v222 == *v220)
                  {
                    goto LABEL_226;
                  }

                  v224 = *(v220 - 1);
                  v225 = *v220;
                  if (_stringCompareWithSmolCheck(_:_:expecting:)())
                  {
                    goto LABEL_226;
                  }
                }

                v220 += 2;
                if (!--v219)
                {
                  goto LABEL_225;
                }
              }
            }

            goto LABEL_224;
          }
        }

        __break(1u);
        goto LABEL_38;
      }

      v47 = v69;

      if (one-time initialization token for executor == -1)
      {
        goto LABEL_23;
      }

      goto LABEL_198;
    }

    v48 = v57;
    if (one-time initialization token for executor == -1)
    {
LABEL_18:
      v82 = type metadata accessor for Logger();
      __swift_project_value_buffer(v82, static Logger.executor);
      v83 = v269;

      v84 = Logger.logObject.getter();
      v85 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v272[0] = v87;
        *v86 = 136315138;
        v88 = (*(*v83 + 112))();
        v90 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v89, v272);

        *(v86 + 4) = v90;
        _os_log_impl(&dword_1DC659000, v84, v85, "%s: given non-USO parse, returning nil", v86, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v87);
        MEMORY[0x1E12A2F50](v87, -1, -1);
        MEMORY[0x1E12A2F50](v86, -1, -1);
      }

      (*(v48 + 8))(v37, v34);
      return 0;
    }

LABEL_40:
    swift_once();
    goto LABEL_18;
  }

  (*(v57 + 96))(v37, v34);
  v37 = *v37;
  static ConversionUtils.toUserParse(from:)();
  if ((*(v48 + 48))(v30, 1, v47) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v30, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
    if (one-time initialization token for executor == -1)
    {
LABEL_4:
      v59 = type metadata accessor for Logger();
      __swift_project_value_buffer(v59, static Logger.executor);
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&dword_1DC659000, v60, v61, "Could not convert to UserDialogAct", v62, 2u);
        MEMORY[0x1E12A2F50](v62, -1, -1);
      }

      swift_unknownObjectRelease();
      return 0;
    }

LABEL_38:
    swift_once();
    goto LABEL_4;
  }

  (*(v48 + 32))(v51, v30, v47);
  v80 = (*(v48 + 16))(v262, v51, v47);
  v81 = MEMORY[0x1E129C0F0](v80);
  v78 = v265;
  if (!*(v81 + 16))
  {
    __break(1u);
    goto LABEL_40;
  }

  v42 = v260;
  (*(v271 + 16))(v260, v81 + ((*(v271 + 80) + 32) & ~*(v271 + 80)), v267);

  swift_unknownObjectRelease();
  v235 = *(v48 + 8);
  v235(v51, v47);
  v234 = 0;
  v236 = 0;
LABEL_28:
  v79 = v261;
  v63 = v266;
LABEL_29:
  v100 = static ConversionUtils.convertUserDialogActToTasks(userDialogAct:)();
  v71 = v78;
  if (v78)
  {

    v259 = 0;
    v71 = 0;
    goto LABEL_43;
  }

  if (v100 >> 62)
  {
    v101 = v100;
    v102 = __CocoaSet.count.getter();
    v100 = v101;
    if (v102)
    {
      goto LABEL_33;
    }
  }

  else if (*((v100 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_33:
    if ((v100 & 0xC000000000000001) != 0)
    {
      goto LABEL_196;
    }

    if (*((v100 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v259 = *(v100 + 32);

      goto LABEL_36;
    }

    __break(1u);
LABEL_198:
    swift_once();
LABEL_23:
    v92 = type metadata accessor for Logger();
    __swift_project_value_buffer(v92, static Logger.executor);
    v93 = Logger.logObject.getter();
    v94 = static os_log_type_t.error.getter();
    v95 = os_log_type_enabled(v93, v94);
    v96 = v254;
    if (v95)
    {
      v97 = swift_slowAlloc();
      *v97 = 0;
      _os_log_impl(&dword_1DC659000, v93, v94, "Could not extract UserDialogAct from USO parse", v97, 2u);
      MEMORY[0x1E12A2F50](v97, -1, -1);
    }

    (*(v258 + 8))(v257, v259);
    (v47)(v63, v96);
    return 0;
  }

  v259 = 0;
LABEL_43:
  if (Siri_Nlu_External_UserDialogAct.hasUserStatedTask.getter())
  {
    v103 = v248;
    Siri_Nlu_External_UserDialogAct.userStatedTask.getter();
    Siri_Nlu_External_UserStatedTask.task.getter();
    (*(v249 + 8))(v103, v250);
    v104 = 0;
  }

  else
  {
    v104 = 1;
  }

  v73 = v267;
  v105 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v106 = *(v105 - 8);
  (*(v106 + 56))(v79, v104, 1, v105);
  v107 = *(v269 + 16);
  if (v107 > 3)
  {
    if (*(v269 + 16) > 5u)
    {
      if (v107 != 6)
      {
        v108 = v262;
        if (v107 == 7)
        {

          countAndFlagsBits = Siri_Nlu_External_UserDialogAct.typeAsString()().value._countAndFlagsBits;

          outlined destroy of ReferenceResolutionClientProtocol?(v79, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
          (*(v271 + 8))(v42, v73);
          v235(v108, v47);
          return countAndFlagsBits;
        }

        else
        {

          outlined destroy of ReferenceResolutionClientProtocol?(v79, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
          (*(v271 + 8))(v42, v73);
          v235(v108, v47);
          return v234;
        }
      }

      v119 = v262;
      if (!v259)
      {
        v148 = 0;
        goto LABEL_229;
      }

      v120 = UsoTask.arguments.getter();

      if (!*(v120 + 16) || (v121 = specialized __RawDictionaryStorage.find<A>(_:)(0x636E657265666572, 0xE900000000000065), (v122 & 1) == 0))
      {
LABEL_112:
        v273 = v120;
        v148 = 0;
        v73 = v267;
        goto LABEL_228;
      }

      v265 = v71;
      v74 = *(*(v120 + 56) + 8 * v121);

      v73 = v267;
      v42 = (v74 & 0xFFFFFFFFFFFFFF8);
      if (v74 >> 62)
      {
        goto LABEL_200;
      }

      v79 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v254 = v47;
      if (!v79)
      {
        goto LABEL_201;
      }

      goto LABEL_67;
    }

    if (v107 != 4)
    {

      if (!v259)
      {
        v148 = 0;
        v119 = v262;
        goto LABEL_229;
      }

      v120 = UsoTask.arguments.getter();

      v119 = v262;
      if (!*(v120 + 16))
      {
        goto LABEL_112;
      }

      v137 = specialized __RawDictionaryStorage.find<A>(_:)(0x69746E4572657375, 0xEC00000073656974);
      if ((v138 & 1) == 0)
      {
        goto LABEL_112;
      }

      v265 = v71;
      v139 = *(*(v120 + 56) + 8 * v137);

      v73 = v267;
      v42 = (v139 & 0xFFFFFFFFFFFFFF8);
      if (v139 >> 62)
      {
        v79 = __CocoaSet.count.getter();
        v254 = v47;
        if (!v79)
        {
LABEL_213:
          v140 = MEMORY[0x1E69E7CC0];
LABEL_214:

          v226 = *(v140 + 2);
          v273 = v140;
          if (v226)
          {
            v227 = (v140 + 40);
            v47 = v254;
            v42 = v260;
            v79 = v261;
            v228 = v269;
            while (1)
            {
              v229 = *(v228 + 32);
              if (v229)
              {
                v148 = *(v227 - 1);
                if (v148 == *(v228 + 24) && v229 == *v227)
                {
                  break;
                }

                v231 = *(v227 - 1);
                v232 = *v227;
                if (_stringCompareWithSmolCheck(_:_:expecting:)())
                {
                  break;
                }
              }

              v227 += 2;
              if (!--v226)
              {
LABEL_225:
                v148 = 0;
                goto LABEL_227;
              }
            }

LABEL_226:

LABEL_227:
            v119 = v262;
            v73 = v267;
LABEL_228:

LABEL_229:
            outlined destroy of ReferenceResolutionClientProtocol?(v79, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
            (*(v271 + 8))(v42, v73);
            v235(v119, v47);
            return v148;
          }

LABEL_224:
          v148 = 0;
          v47 = v254;
          v79 = v261;
          v119 = v262;
          v42 = v260;
          goto LABEL_228;
        }
      }

      else
      {
        v79 = *((v139 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v254 = v47;
        if (!v79)
        {
          goto LABEL_213;
        }
      }

      v47 = 0;
      v63 = v139 & 0xC000000000000001;
      v140 = MEMORY[0x1E69E7CC0];
LABEL_96:
      v141 = v47;
      while (1)
      {
        if (v63)
        {
          v71 = MEMORY[0x1E12A1FE0](v141, v139);
          v47 = (v141 + 1);
          if (__OFADD__(v141, 1))
          {
            goto LABEL_193;
          }
        }

        else
        {
          if (v141 >= *((v139 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_195;
          }

          v71 = *(v139 + 8 * v141 + 32);

          v47 = (v141 + 1);
          if (__OFADD__(v141, 1))
          {
LABEL_193:
            __break(1u);
LABEL_194:
            __break(1u);
LABEL_195:
            __break(1u);
LABEL_196:
            v259 = MEMORY[0x1E12A1FE0](0);
LABEL_36:

            goto LABEL_43;
          }
        }

        if (dispatch thunk of UsoValue.getAsEntity()())
        {
          v142 = UsoTask.verbString.getter();
          v273 = v143;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v140 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v140 + 2) + 1, 1, v140);
          }

          v145 = *(v140 + 2);
          v144 = *(v140 + 3);
          v71 = v145 + 1;
          if (v145 >= v144 >> 1)
          {
            v140 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v144 > 1), v145 + 1, 1, v140);
          }

          *(v140 + 2) = v71;
          v146 = &v140[16 * v145];
          v147 = v273;
          *(v146 + 4) = v142;
          *(v146 + 5) = v147;
          v73 = v267;
          if (v47 == v79)
          {
            goto LABEL_214;
          }

          goto LABEL_96;
        }

        ++v141;
        v73 = v267;
        if (v47 == v79)
        {
          goto LABEL_214;
        }
      }
    }

    v116 = v242;
    outlined init with copy of Siri_Nlu_External_UsoGraph?(v79, v242);
    v117 = (*(v106 + 48))(v116, 1, v105);
    v265 = v71;
    v254 = v47;
    if (v117 == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v116, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
      v118 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v193 = Siri_Nlu_External_UsoGraph.identifiers.getter();
      v73 = v267;
      v118 = v193;
      (*(v106 + 8))(v116, v105);
    }

    v194 = v253;
    v195 = *(v118 + 16);
    if (v195)
    {
      v196 = v263 + 16;
      v270 = *(v263 + 16);
      v197 = *(v263 + 80);
      v263 = v118;
      v198 = v118 + ((v197 + 32) & ~v197);
      v268 = *(v196 + 56);
      v266 = v245 + 8;
      v199 = (v196 - 8);
      v178 = MEMORY[0x1E69E7CC0];
      v200 = v252;
      v270(v253, v198, v273);
      while (1)
      {
        if ((Siri_Nlu_External_UsoEntityIdentifier.hasNamespace.getter() & 1) == 0)
        {
          goto LABEL_160;
        }

        Siri_Nlu_External_UsoEntityIdentifier.namespace.getter();
        v201 = Google_Protobuf_StringValue.value.getter();
        v203 = v202;
        (*v266)(v200, v264);
        v204 = *(v269 + 32);
        if (!v204)
        {
          break;
        }

        if (v201 == *(v269 + 24) && v204 == v203)
        {
        }

        else
        {
          v205 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v205 & 1) == 0)
          {
            goto LABEL_160;
          }
        }

        v206 = Siri_Nlu_External_UsoEntityIdentifier.value.getter();
        v208 = v207;
        (*v199)(v194, v273);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v178 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v178 + 2) + 1, 1, v178);
        }

        v210 = *(v178 + 2);
        v209 = *(v178 + 3);
        if (v210 >= v209 >> 1)
        {
          v178 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v209 > 1), v210 + 1, 1, v178);
        }

        *(v178 + 2) = v210 + 1;
        v211 = &v178[16 * v210];
        *(v211 + 4) = v206;
        *(v211 + 5) = v208;
        v200 = v252;
        v194 = v253;
LABEL_161:
        v198 += v268;
        if (!--v195)
        {
          goto LABEL_175;
        }

        v270(v194, v198, v273);
      }

LABEL_160:
      (*v199)(v194, v273);
      goto LABEL_161;
    }

LABEL_174:

    v178 = MEMORY[0x1E69E7CC0];
    v212 = v261;
    goto LABEL_176;
  }

  if (*(v269 + 16) <= 1u)
  {
    if (!*(v269 + 16))
    {

      v110 = v262;
      v111 = v259;
      if (v259)
      {
        v272[0] = UsoTask.verbString.getter();
        v272[1] = v112;
        MEMORY[0x1E12A1580](14906, 0xE200000000000000);
        v113 = UsoTask.baseEntityAsString.getter();
        MEMORY[0x1E12A1580](v113);
        v73 = v267;

        v111 = v272[0];
      }

      outlined destroy of ReferenceResolutionClientProtocol?(v79, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
      (*(v271 + 8))(v42, v73);
      v235(v110, v47);
      return v111;
    }

    v131 = v262;
    if (Siri_Nlu_External_UserParse.hasParserID.getter())
    {
      v132 = Siri_Nlu_External_UserParse.parserID.getter();

      outlined destroy of ReferenceResolutionClientProtocol?(v79, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
      (*(v271 + 8))(v42, v267);
      v133 = v131;
LABEL_86:
      v235(v133, v47);
      return v132;
    }

    if (Siri_Nlu_External_UserParse.hasParser.getter())
    {
      v169 = v239;
      Siri_Nlu_External_UserParse.parser.getter();
      LODWORD(v273) = Siri_Nlu_External_Parser.hasParserID.getter();
      v171 = v241 + 8;
      v170 = *(v241 + 8);
      v170(v169, v240);
      if (v273)
      {
        v241 = v171;
        Siri_Nlu_External_UserParse.parser.getter();
        Siri_Nlu_External_Parser.parserID.getter();
        v170(v169, v240);
        v132 = String.init<A>(describing:)();

        outlined destroy of ReferenceResolutionClientProtocol?(v79, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
        (*(v271 + 8))(v42, v267);
        v133 = v262;
        goto LABEL_86;
      }

      outlined destroy of ReferenceResolutionClientProtocol?(v79, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
      (*(v271 + 8))(v42, v267);
      v218 = v262;
    }

    else
    {

      outlined destroy of ReferenceResolutionClientProtocol?(v79, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
      (*(v271 + 8))(v42, v267);
      v218 = v131;
    }

    v235(v218, v47);
    return 0;
  }

  v254 = v47;
  if (v107 == 2)
  {

    v114 = v244;
    outlined init with copy of Siri_Nlu_External_UsoGraph?(v79, v244);
    if ((*(v106 + 48))(v114, 1, v105) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v114, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
      v115 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v115 = Siri_Nlu_External_UsoGraph.identifiers.getter();
      (*(v106 + 8))(v114, v105);
    }

    v149 = v262;
    v150 = *(v115 + 16);
    if (!v150)
    {

      v153 = MEMORY[0x1E69E7CC0];
      goto LABEL_183;
    }

    v264 = v115;
    v265 = v71;
    v268 = *(v263 + 16);
    v151 = v115 + ((*(v263 + 80) + 32) & ~*(v263 + 80));
    v266 = *(v263 + 72);
    v152 = (v263 + 8);
    v153 = MEMORY[0x1E69E7CC0];
    v154 = v270;
    while (1)
    {
      v155 = v79;
      (v268)(v154, v151, v273);
      v156 = Siri_Nlu_External_UsoEntityIdentifier.hasBackingAppBundleID.getter();
      v154 = v270;
      if (v156)
      {
        v157 = Siri_Nlu_External_UsoEntityIdentifier.backingAppBundleID.getter();
        v159 = *(v269 + 32);
        if (v159)
        {
          if (v157 == *(v269 + 24) && v159 == v158)
          {

            v154 = v270;
LABEL_128:
            v162 = v154;
            v163 = Siri_Nlu_External_UsoEntityIdentifier.backingAppBundleID.getter();
            v165 = v164;
            (*v152)(v162, v273);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v153 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v153 + 2) + 1, 1, v153);
            }

            v167 = *(v153 + 2);
            v166 = *(v153 + 3);
            if (v167 >= v166 >> 1)
            {
              v153 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v166 > 1), v167 + 1, 1, v153);
            }

            *(v153 + 2) = v167 + 1;
            v168 = &v153[16 * v167];
            *(v168 + 4) = v163;
            *(v168 + 5) = v165;
            v42 = v260;
            v79 = v261;
            v154 = v270;
            goto LABEL_118;
          }

          v161 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v154 = v270;
          if (v161)
          {
            goto LABEL_128;
          }
        }

        else
        {

          v154 = v270;
        }
      }

      (*v152)(v154, v273);
      v79 = v155;
LABEL_118:
      v151 += v266;
      if (!--v150)
      {

        v149 = v262;
LABEL_183:
        v213 = v254;
        if (*(v153 + 2))
        {
          v214 = *(v153 + 4);
          v217 = *(v153 + 5);
        }

        else
        {
          v214 = 0;
        }

        outlined destroy of ReferenceResolutionClientProtocol?(v79, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
        (*(v271 + 8))(v42, v267);
        v216 = v149;
        goto LABEL_187;
      }
    }
  }

  v134 = v243;
  outlined init with copy of Siri_Nlu_External_UsoGraph?(v79, v243);
  v135 = (*(v106 + 48))(v134, 1, v105);
  v265 = v71;
  if (v135 == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v134, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
    v136 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v172 = Siri_Nlu_External_UsoGraph.identifiers.getter();
    v73 = v267;
    v136 = v172;
    (*(v106 + 8))(v134, v105);
  }

  v173 = *(v136 + 16);
  if (!v173)
  {
    goto LABEL_174;
  }

  v270 = *(v263 + 16);
  v174 = *(v263 + 80);
  v258 = v136;
  v175 = v136 + ((v174 + 32) & ~v174);
  v268 = *(v263 + 72);
  v176 = (v245 + 8);
  v263 += 16;
  v177 = (v263 - 8);
  v178 = MEMORY[0x1E69E7CC0];
  v270(v63, v175, v273);
  while (1)
  {
    if ((Siri_Nlu_External_UsoEntityIdentifier.hasNamespace.getter() & 1) == 0)
    {
      goto LABEL_141;
    }

    v179 = v256;
    Siri_Nlu_External_UsoEntityIdentifier.namespace.getter();
    v180 = Google_Protobuf_StringValue.value.getter();
    v182 = v181;
    v183 = *v176;
    (*v176)(v179, v264);
    v184 = *(v269 + 32);
    if (!v184)
    {

      v63 = v266;
LABEL_141:
      (*v177)(v63, v273);
      goto LABEL_142;
    }

    if (v180 == *(v269 + 24) && v184 == v182)
    {
    }

    else
    {
      v185 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v63 = v266;
      if ((v185 & 1) == 0)
      {
        goto LABEL_141;
      }
    }

    v186 = v251;
    Siri_Nlu_External_UsoEntityIdentifier.namespace.getter();
    v187 = Google_Protobuf_StringValue.value.getter();
    v189 = v188;
    v183(v186, v264);
    (*v177)(v266, v273);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v178 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v178 + 2) + 1, 1, v178);
    }

    v191 = *(v178 + 2);
    v190 = *(v178 + 3);
    if (v191 >= v190 >> 1)
    {
      v178 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v190 > 1), v191 + 1, 1, v178);
    }

    *(v178 + 2) = v191 + 1;
    v192 = &v178[16 * v191];
    *(v192 + 4) = v187;
    *(v192 + 5) = v189;
    v63 = v266;
LABEL_142:
    v175 += v268;
    if (!--v173)
    {
      break;
    }

    v270(v63, v175, v273);
  }

LABEL_175:

  v73 = v267;
  v42 = v260;
  v212 = v261;
LABEL_176:
  v213 = v254;
  if (*(v178 + 2))
  {
    v214 = *(v178 + 4);
    v215 = *(v178 + 5);
  }

  else
  {
    v214 = 0;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v212, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
  (*(v271 + 8))(v42, v73);
  v216 = v262;
LABEL_187:
  v235(v216, v213);
  return v214;
}

uint64_t InputValueFetcher.deinit()
{
  v1 = *(v0 + 32);

  return v0;
}

uint64_t InputValueFetcher.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance InputValueType(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = InputValueType.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == InputValueType.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance InputValueType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  InputValueType.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance InputValueType()
{
  InputValueType.rawValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance InputValueType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  InputValueType.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance InputValueType@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized InputValueType.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance InputValueType@<X0>(uint64_t *a1@<X8>)
{
  result = InputValueType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t specialized InputValueType.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of InputValueType.init(rawValue:), v2);

  if (v3 >= 9)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

uint64_t partial apply for closure #1 in InputValueFetcher.fetchValue(input:)@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 24);
  v5 = *(v1 + 16);
  result = InputValueFetcher.internalFetchValue(input:)();
  if (!v2)
  {
    *a1 = result;
    a1[1] = v7;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InputValueType and conformance InputValueType()
{
  result = lazy protocol witness table cache variable for type InputValueType and conformance InputValueType;
  if (!lazy protocol witness table cache variable for type InputValueType and conformance InputValueType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InputValueType and conformance InputValueType);
  }

  return result;
}

uint64_t outlined init with copy of Siri_Nlu_External_UsoGraph?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void InsightRequestSummaryLogger.emitDebug(_:)(uint64_t (*a1)(void))
{

  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 136315138;
    v24 = v4;
    v5 = a1();
    v6 = *(v5 + 16);
    if (v6)
    {
      v19 = v4;
      v20 = v3;
      v21 = v2;
      v23 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
      v7 = (v5 + 56);
      do
      {
        v8 = *(v7 - 3);
        v9 = *(v7 - 2);
        v11 = *(v7 - 1);
        v10 = *v7;

        MEMORY[0x1E12A1580](v8, v9);
        MEMORY[0x1E12A1580](2243106, 0xE300000000000000);
        MEMORY[0x1E12A1580](v11, v10);
        MEMORY[0x1E12A1580](34, 0xE100000000000000);

        v13 = *(v23 + 16);
        v12 = *(v23 + 24);
        if (v13 >= v12 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
        }

        *(v23 + 16) = v13 + 1;
        v14 = v23 + 16 * v13;
        *(v14 + 32) = 34;
        *(v14 + 40) = 0xE100000000000000;
        v7 += 4;
        --v6;
      }

      while (v6);

      v2 = v21;
      v4 = v19;
      v3 = v20;
    }

    else
    {
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v15 = BidirectionalCollection<>.joined(separator:)();
    v17 = v16;

    MEMORY[0x1E12A1580](v15, v17);

    MEMORY[0x1E12A1580](125, 0xE100000000000000);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(123, 0xE100000000000000, &v24);

    *(v3 + 4) = v18;
    _os_log_impl(&dword_1DC659000, oslog, v2, "%s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    MEMORY[0x1E12A2F50](v4, -1, -1);
    MEMORY[0x1E12A2F50](v3, -1, -1);
  }

  else
  {
  }
}

uint64_t InsightRequestSummaryLogger.log.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Logger();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t InsightRequestSummaryLogger.log.setter(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t InsightRequestSummaryLogger.init()()
{
  type metadata accessor for OS_os_log();
  OS_os_log.init(subsystem:category:)();

  return Logger.init(_:)();
}

void InsightRequestSummaryLogger.emitError(_:)(uint64_t (*a1)(void))
{
  v3 = type metadata accessor for InsightRequestSummaryLogger();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of InsightRequestSummaryLogger(v1, v6);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;

    v11 = specialized InsightRequestSummaryLogger.constructLogJsonString(_:)(v6, a1);
    v13 = v12;

    outlined destroy of InsightRequestSummaryLogger(v6);
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v16);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_1DC659000, v7, v8, "%s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1E12A2F50](v10, -1, -1);
    MEMORY[0x1E12A2F50](v9, -1, -1);
  }

  else
  {

    outlined destroy of InsightRequestSummaryLogger(v6);
  }
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance InsightRequestSummaryKey@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance InsightRequestSummaryKey@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

unint64_t type metadata accessor for OS_os_log()
{
  result = lazy cache variable for type metadata for OS_os_log;
  if (!lazy cache variable for type metadata for OS_os_log)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_os_log);
  }

  return result;
}

uint64_t type metadata accessor for InsightRequestSummaryLogger()
{
  result = type metadata singleton initialization cache for InsightRequestSummaryLogger;
  if (!type metadata singleton initialization cache for InsightRequestSummaryLogger)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of InsightRequestSummaryLogger(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InsightRequestSummaryLogger();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of InsightRequestSummaryLogger(uint64_t a1)
{
  v2 = type metadata accessor for InsightRequestSummaryLogger();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void specialized InsightRequestSummaryLogger.emitDebug(_:)(uint64_t a1, void *a2, uint64_t a3)
{
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v5))
  {
    v25 = v5;
    v6 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v26 = v6;
    *v6 = 136315138;
    v29 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14SiriKitRuntime24InsightRequestSummaryKeyV_SStGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime24InsightRequestSummaryKeyV_SStGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DCA69C00;
    *(inited + 32) = 0x614E656764697262;
    *(inited + 40) = 0xEA0000000000656DLL;
    *(inited + 48) = 0xD000000000000012;
    *(inited + 56) = 0x80000001DCA7F2A0;
    *(inited + 64) = 0xD000000000000012;
    *(inited + 72) = 0x80000001DCA7F2C0;
    *(inited + 80) = 0xD00000000000001CLL;
    *(inited + 88) = 0x80000001DCA7B740;
    *(inited + 96) = 0x6E61747369737361;
    *(inited + 104) = 0xEB00000000644974;
    v8 = a2[13];
    *(inited + 112) = a2[12];
    *(inited + 120) = v8;
    *(inited + 128) = 0x496E6F6973736573;
    *(inited + 136) = 0xE900000000000064;
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type UUID and conformance UUID();

    *(inited + 144) = dispatch thunk of CustomStringConvertible.description.getter();
    *(inited + 152) = v9;
    *(inited + 160) = 0x4974736575716572;
    *(inited + 168) = 0xE900000000000064;
    v10 = a2[9];
    *(inited + 176) = a2[8];
    *(inited + 184) = v10;
    *(inited + 192) = 0x6449707274;
    *(inited + 200) = 0xE500000000000000;
    v11 = *(a3 + 24);
    *(inited + 208) = *(a3 + 16);
    *(inited + 216) = v11;
    v28 = MEMORY[0x1E69E7CC0];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 6, 0);
    for (i = 0; i != 192; i += 32)
    {
      v13 = *(inited + i + 32);
      v14 = *(inited + i + 40);
      v15 = *(inited + i + 48);
      v16 = *(inited + i + 56);

      MEMORY[0x1E12A1580](v13, v14);
      MEMORY[0x1E12A1580](2243106, 0xE300000000000000);
      MEMORY[0x1E12A1580](v15, v16);
      MEMORY[0x1E12A1580](34, 0xE100000000000000);

      v18 = *(v28 + 16);
      v17 = *(v28 + 24);
      if (v18 >= v17 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
      }

      *(v28 + 16) = v18 + 1;
      v19 = v28 + 16 * v18;
      *(v19 + 32) = 34;
      *(v19 + 40) = 0xE100000000000000;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v20 = BidirectionalCollection<>.joined(separator:)();
    v22 = v21;

    MEMORY[0x1E12A1580](v20, v22);

    MEMORY[0x1E12A1580](125, 0xE100000000000000);
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(123, 0xE100000000000000, &v29);

    *(v26 + 1) = v23;
    _os_log_impl(&dword_1DC659000, oslog, v25, "%s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x1E12A2F50](v24, -1, -1);
    MEMORY[0x1E12A2F50](v26, -1, -1);
  }

  else
  {
  }
}

{
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v5))
  {
    v35 = v5;
    v6 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v6 = 136315138;
    v38 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14SiriKitRuntime24InsightRequestSummaryKeyV_SStGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime24InsightRequestSummaryKeyV_SStGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DCA696F0;
    *(inited + 32) = 0x614E656764697262;
    *(inited + 40) = 0xEA0000000000656DLL;
    *(inited + 48) = 0xD000000000000012;
    *(inited + 56) = 0x80000001DCA7F2A0;
    *(inited + 64) = 0xD000000000000012;
    *(inited + 72) = 0x80000001DCA7F2C0;
    *(inited + 80) = 0xD00000000000001FLL;
    *(inited + 88) = 0x80000001DCA7B880;
    *(inited + 96) = 0x6E61747369737361;
    *(inited + 104) = 0xEB00000000644974;
    v8 = a2[13];
    *(inited + 112) = a2[12];
    *(inited + 120) = v8;
    *(inited + 128) = 0x496E6F6973736573;
    *(inited + 136) = 0xE900000000000064;
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type UUID and conformance UUID();

    *(inited + 144) = dispatch thunk of CustomStringConvertible.description.getter();
    *(inited + 152) = v9;
    *(inited + 160) = 0x4974736575716572;
    *(inited + 168) = 0xE900000000000064;
    v10 = a2[11];
    *(inited + 176) = a2[10];
    *(inited + 184) = v10;
    *(inited + 192) = 0x4E646E616D6D6F63;
    *(inited + 200) = 0xEB00000000656D61;
    v11 = *(a3 + OBJC_IVAR___SKRExecutionOutput_command);
    if (v11)
    {

      v12 = [v11 encodedClassName];
      if (v12)
      {
        v13 = v12;
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;

        v12 = v14;
LABEL_10:
        MEMORY[0x1E12A1580](v12, v16);

        *(inited + 208) = 0;
        *(inited + 216) = 0xE000000000000000;
        strcpy((inited + 224), "commandAceId");
        *(inited + 237) = 0;
        *(inited + 238) = -5120;
        v17 = 0xE000000000000000;
        if (v11)
        {
          v18 = [v11 aceId];
          if (v18)
          {
            v19 = v18;
            v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v17 = v21;

            v18 = v20;
          }
        }

        else
        {
          v18 = 0;
        }

        MEMORY[0x1E12A1580](v18, v17);

        *(inited + 240) = 0;
        *(inited + 248) = 0xE000000000000000;
        v37 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 7, 0);
        for (i = 0; i != 224; i += 32)
        {
          v23 = *(inited + i + 32);
          v24 = *(inited + i + 40);
          v25 = *(inited + i + 48);
          v26 = *(inited + i + 56);

          MEMORY[0x1E12A1580](v23, v24);
          MEMORY[0x1E12A1580](2243106, 0xE300000000000000);
          MEMORY[0x1E12A1580](v25, v26);
          MEMORY[0x1E12A1580](34, 0xE100000000000000);

          v28 = *(v37 + 16);
          v27 = *(v37 + 24);
          if (v28 >= v27 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1);
          }

          *(v37 + 16) = v28 + 1;
          v29 = v37 + 16 * v28;
          *(v29 + 32) = 34;
          *(v29 + 40) = 0xE100000000000000;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type [String] and conformance [A]();
        v30 = BidirectionalCollection<>.joined(separator:)();
        v32 = v31;

        MEMORY[0x1E12A1580](v30, v32);

        MEMORY[0x1E12A1580](125, 0xE100000000000000);
        v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(123, 0xE100000000000000, &v38);

        *(v6 + 4) = v33;
        _os_log_impl(&dword_1DC659000, oslog, v35, "%s", v6, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v34);
        MEMORY[0x1E12A2F50](v34, -1, -1);
        MEMORY[0x1E12A2F50](v6, -1, -1);

        return;
      }
    }

    else
    {

      v12 = 0;
    }

    v16 = 0xE000000000000000;
    goto LABEL_10;
  }
}

{
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v5))
  {
    v35 = v5;
    v6 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v6 = 136315138;
    v38 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14SiriKitRuntime24InsightRequestSummaryKeyV_SStGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime24InsightRequestSummaryKeyV_SStGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DCA696F0;
    *(inited + 32) = 0x614E656764697262;
    *(inited + 40) = 0xEA0000000000656DLL;
    *(inited + 48) = 0xD000000000000012;
    *(inited + 56) = 0x80000001DCA7F2A0;
    *(inited + 64) = 0xD000000000000012;
    *(inited + 72) = 0x80000001DCA7F2C0;
    *(inited + 80) = 0xD000000000000019;
    *(inited + 88) = 0x80000001DCA7B830;
    *(inited + 96) = 0x6E61747369737361;
    *(inited + 104) = 0xEB00000000644974;
    v8 = a2[13];
    *(inited + 112) = a2[12];
    *(inited + 120) = v8;
    *(inited + 128) = 0x496E6F6973736573;
    *(inited + 136) = 0xE900000000000064;
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type UUID and conformance UUID();

    *(inited + 144) = dispatch thunk of CustomStringConvertible.description.getter();
    *(inited + 152) = v9;
    *(inited + 160) = 0x4974736575716572;
    *(inited + 168) = 0xE900000000000064;
    v10 = a2[11];
    *(inited + 176) = a2[10];
    *(inited + 184) = v10;
    *(inited + 192) = 0x4E646E616D6D6F63;
    *(inited + 200) = 0xEB00000000656D61;
    v11 = *(a3 + OBJC_IVAR___SKRExecutionOutput_command);
    if (v11)
    {

      v12 = [v11 encodedClassName];
      if (v12)
      {
        v13 = v12;
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;

        v12 = v14;
LABEL_10:
        MEMORY[0x1E12A1580](v12, v16);

        *(inited + 208) = 0;
        *(inited + 216) = 0xE000000000000000;
        strcpy((inited + 224), "commandAceId");
        *(inited + 237) = 0;
        *(inited + 238) = -5120;
        v17 = 0xE000000000000000;
        if (v11)
        {
          v18 = [v11 aceId];
          if (v18)
          {
            v19 = v18;
            v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v17 = v21;

            v18 = v20;
          }
        }

        else
        {
          v18 = 0;
        }

        MEMORY[0x1E12A1580](v18, v17);

        *(inited + 240) = 0;
        *(inited + 248) = 0xE000000000000000;
        v37 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 7, 0);
        for (i = 0; i != 224; i += 32)
        {
          v23 = *(inited + i + 32);
          v24 = *(inited + i + 40);
          v25 = *(inited + i + 48);
          v26 = *(inited + i + 56);

          MEMORY[0x1E12A1580](v23, v24);
          MEMORY[0x1E12A1580](2243106, 0xE300000000000000);
          MEMORY[0x1E12A1580](v25, v26);
          MEMORY[0x1E12A1580](34, 0xE100000000000000);

          v28 = *(v37 + 16);
          v27 = *(v37 + 24);
          if (v28 >= v27 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1);
          }

          *(v37 + 16) = v28 + 1;
          v29 = v37 + 16 * v28;
          *(v29 + 32) = 34;
          *(v29 + 40) = 0xE100000000000000;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type [String] and conformance [A]();
        v30 = BidirectionalCollection<>.joined(separator:)();
        v32 = v31;

        MEMORY[0x1E12A1580](v30, v32);

        MEMORY[0x1E12A1580](125, 0xE100000000000000);
        v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(123, 0xE100000000000000, &v38);

        *(v6 + 4) = v33;
        _os_log_impl(&dword_1DC659000, oslog, v35, "%s", v6, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v34);
        MEMORY[0x1E12A2F50](v34, -1, -1);
        MEMORY[0x1E12A2F50](v6, -1, -1);

        return;
      }
    }

    else
    {

      v12 = 0;
    }

    v16 = 0xE000000000000000;
    goto LABEL_10;
  }
}

{
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v5))
  {
    v35 = v5;
    v6 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v6 = 136315138;
    v38 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14SiriKitRuntime24InsightRequestSummaryKeyV_SStGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime24InsightRequestSummaryKeyV_SStGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DCA6FBB0;
    *(inited + 32) = 0x614E656764697262;
    *(inited + 40) = 0xEA0000000000656DLL;
    *(inited + 48) = 0xD000000000000012;
    *(inited + 56) = 0x80000001DCA7F2A0;
    *(inited + 64) = 0xD000000000000012;
    *(inited + 72) = 0x80000001DCA7F2C0;
    *(inited + 80) = 0xD000000000000027;
    *(inited + 88) = 0x80000001DCA7B850;
    strcpy((inited + 96), "failureReason");
    *(inited + 110) = -4864;
    *(inited + 112) = 0xD000000000000052;
    *(inited + 120) = 0x80000001DCA84290;
    *(inited + 128) = 0x6E61747369737361;
    *(inited + 136) = 0xEB00000000644974;
    v8 = a2[13];
    *(inited + 144) = a2[12];
    *(inited + 152) = v8;
    *(inited + 160) = 0x496E6F6973736573;
    *(inited + 168) = 0xE900000000000064;
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type UUID and conformance UUID();

    *(inited + 176) = dispatch thunk of CustomStringConvertible.description.getter();
    *(inited + 184) = v9;
    *(inited + 192) = 0x4974736575716572;
    *(inited + 200) = 0xE900000000000064;
    v10 = a2[9];
    *(inited + 208) = a2[8];
    *(inited + 216) = v10;
    *(inited + 224) = 0x4E646E616D6D6F63;
    *(inited + 232) = 0xEB00000000656D61;
    v11 = *(a3 + OBJC_IVAR___SKRExecutionOutput_command);
    if (v11)
    {

      v12 = [v11 encodedClassName];
      if (v12)
      {
        v13 = v12;
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;

        v12 = v14;
LABEL_10:
        MEMORY[0x1E12A1580](v12, v16);

        *(inited + 240) = 0;
        *(inited + 248) = 0xE000000000000000;
        strcpy((inited + 256), "commandAceId");
        *(inited + 269) = 0;
        *(inited + 270) = -5120;
        v17 = 0xE000000000000000;
        if (v11)
        {
          v18 = [v11 aceId];
          if (v18)
          {
            v19 = v18;
            v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v17 = v21;

            v18 = v20;
          }
        }

        else
        {
          v18 = 0;
        }

        MEMORY[0x1E12A1580](v18, v17);

        *(inited + 272) = 0;
        *(inited + 280) = 0xE000000000000000;
        v37 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 8, 0);
        for (i = 0; i != 256; i += 32)
        {
          v23 = *(inited + i + 32);
          v24 = *(inited + i + 40);
          v25 = *(inited + i + 48);
          v26 = *(inited + i + 56);

          MEMORY[0x1E12A1580](v23, v24);
          MEMORY[0x1E12A1580](2243106, 0xE300000000000000);
          MEMORY[0x1E12A1580](v25, v26);
          MEMORY[0x1E12A1580](34, 0xE100000000000000);

          v28 = *(v37 + 16);
          v27 = *(v37 + 24);
          if (v28 >= v27 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1);
          }

          *(v37 + 16) = v28 + 1;
          v29 = v37 + 16 * v28;
          *(v29 + 32) = 34;
          *(v29 + 40) = 0xE100000000000000;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type [String] and conformance [A]();
        v30 = BidirectionalCollection<>.joined(separator:)();
        v32 = v31;

        MEMORY[0x1E12A1580](v30, v32);

        MEMORY[0x1E12A1580](125, 0xE100000000000000);
        v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(123, 0xE100000000000000, &v38);

        *(v6 + 4) = v33;
        _os_log_impl(&dword_1DC659000, oslog, v35, "%s", v6, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v34);
        MEMORY[0x1E12A2F50](v34, -1, -1);
        MEMORY[0x1E12A2F50](v6, -1, -1);

        return;
      }
    }

    else
    {

      v12 = 0;
    }

    v16 = 0xE000000000000000;
    goto LABEL_10;
  }
}

{
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v5))
  {
    v25 = v5;
    v6 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v26 = v6;
    *v6 = 136315138;
    v29 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14SiriKitRuntime24InsightRequestSummaryKeyV_SStGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime24InsightRequestSummaryKeyV_SStGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DCA69C00;
    *(inited + 32) = 0x614E656764697262;
    *(inited + 40) = 0xEA0000000000656DLL;
    *(inited + 48) = 0xD000000000000012;
    *(inited + 56) = 0x80000001DCA7F2A0;
    *(inited + 64) = 0xD000000000000012;
    *(inited + 72) = 0x80000001DCA7F2C0;
    *(inited + 80) = 0xD000000000000020;
    *(inited + 88) = 0x80000001DCA7B7D0;
    *(inited + 96) = 0x6E61747369737361;
    *(inited + 104) = 0xEB00000000644974;
    v8 = a2[13];
    *(inited + 112) = a2[12];
    *(inited + 120) = v8;
    *(inited + 128) = 0x496E6F6973736573;
    *(inited + 136) = 0xE900000000000064;
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type UUID and conformance UUID();

    *(inited + 144) = dispatch thunk of CustomStringConvertible.description.getter();
    *(inited + 152) = v9;
    *(inited + 160) = 0x4974736575716572;
    *(inited + 168) = 0xE900000000000064;
    v10 = a2[9];
    *(inited + 176) = a2[8];
    *(inited + 184) = v10;
    *(inited + 192) = 0xD000000000000011;
    *(inited + 200) = 0x80000001DCA7AB40;
    v11 = *(a3 + 24);
    *(inited + 208) = *(a3 + 16);
    *(inited + 216) = v11;
    v28 = MEMORY[0x1E69E7CC0];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 6, 0);
    for (i = 0; i != 192; i += 32)
    {
      v13 = *(inited + i + 32);
      v14 = *(inited + i + 40);
      v15 = *(inited + i + 48);
      v16 = *(inited + i + 56);

      MEMORY[0x1E12A1580](v13, v14);
      MEMORY[0x1E12A1580](2243106, 0xE300000000000000);
      MEMORY[0x1E12A1580](v15, v16);
      MEMORY[0x1E12A1580](34, 0xE100000000000000);

      v18 = *(v28 + 16);
      v17 = *(v28 + 24);
      if (v18 >= v17 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
      }

      *(v28 + 16) = v18 + 1;
      v19 = v28 + 16 * v18;
      *(v19 + 32) = 34;
      *(v19 + 40) = 0xE100000000000000;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v20 = BidirectionalCollection<>.joined(separator:)();
    v22 = v21;

    MEMORY[0x1E12A1580](v20, v22);

    MEMORY[0x1E12A1580](125, 0xE100000000000000);
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(123, 0xE100000000000000, &v29);

    *(v26 + 1) = v23;
    _os_log_impl(&dword_1DC659000, oslog, v25, "%s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x1E12A2F50](v24, -1, -1);
    MEMORY[0x1E12A2F50](v26, -1, -1);
  }

  else
  {
  }
}

{
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v5))
  {
    v35 = v5;
    v6 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v6 = 136315138;
    v38 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14SiriKitRuntime24InsightRequestSummaryKeyV_SStGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime24InsightRequestSummaryKeyV_SStGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DCA696F0;
    *(inited + 32) = 0x614E656764697262;
    *(inited + 40) = 0xEA0000000000656DLL;
    *(inited + 48) = 0xD000000000000012;
    *(inited + 56) = 0x80000001DCA7F2A0;
    *(inited + 64) = 0xD000000000000012;
    *(inited + 72) = 0x80000001DCA7F2C0;
    *(inited + 80) = 0xD00000000000001ELL;
    *(inited + 88) = 0x80000001DCA7B8D0;
    *(inited + 96) = 0x6E61747369737361;
    *(inited + 104) = 0xEB00000000644974;
    v8 = a2[13];
    *(inited + 112) = a2[12];
    *(inited + 120) = v8;
    *(inited + 128) = 0x496E6F6973736573;
    *(inited + 136) = 0xE900000000000064;
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type UUID and conformance UUID();

    *(inited + 144) = dispatch thunk of CustomStringConvertible.description.getter();
    *(inited + 152) = v9;
    *(inited + 160) = 0x4974736575716572;
    *(inited + 168) = 0xE900000000000064;
    v10 = a2[11];
    *(inited + 176) = a2[10];
    *(inited + 184) = v10;
    *(inited + 192) = 0x4E646E616D6D6F63;
    *(inited + 200) = 0xEB00000000656D61;
    v11 = *(a3 + OBJC_IVAR___SKRExecutionOutput_command);
    if (v11)
    {

      v12 = [v11 encodedClassName];
      if (v12)
      {
        v13 = v12;
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;

        v12 = v14;
LABEL_10:
        MEMORY[0x1E12A1580](v12, v16);

        *(inited + 208) = 0;
        *(inited + 216) = 0xE000000000000000;
        strcpy((inited + 224), "commandAceId");
        *(inited + 237) = 0;
        *(inited + 238) = -5120;
        v17 = 0xE000000000000000;
        if (v11)
        {
          v18 = [v11 aceId];
          if (v18)
          {
            v19 = v18;
            v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v17 = v21;

            v18 = v20;
          }
        }

        else
        {
          v18 = 0;
        }

        MEMORY[0x1E12A1580](v18, v17);

        *(inited + 240) = 0;
        *(inited + 248) = 0xE000000000000000;
        v37 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 7, 0);
        for (i = 0; i != 224; i += 32)
        {
          v23 = *(inited + i + 32);
          v24 = *(inited + i + 40);
          v25 = *(inited + i + 48);
          v26 = *(inited + i + 56);

          MEMORY[0x1E12A1580](v23, v24);
          MEMORY[0x1E12A1580](2243106, 0xE300000000000000);
          MEMORY[0x1E12A1580](v25, v26);
          MEMORY[0x1E12A1580](34, 0xE100000000000000);

          v28 = *(v37 + 16);
          v27 = *(v37 + 24);
          if (v28 >= v27 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1);
          }

          *(v37 + 16) = v28 + 1;
          v29 = v37 + 16 * v28;
          *(v29 + 32) = 34;
          *(v29 + 40) = 0xE100000000000000;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type [String] and conformance [A]();
        v30 = BidirectionalCollection<>.joined(separator:)();
        v32 = v31;

        MEMORY[0x1E12A1580](v30, v32);

        MEMORY[0x1E12A1580](125, 0xE100000000000000);
        v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(123, 0xE100000000000000, &v38);

        *(v6 + 4) = v33;
        _os_log_impl(&dword_1DC659000, oslog, v35, "%s", v6, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v34);
        MEMORY[0x1E12A2F50](v34, -1, -1);
        MEMORY[0x1E12A2F50](v6, -1, -1);

        return;
      }
    }

    else
    {

      v12 = 0;
    }

    v16 = 0xE000000000000000;
    goto LABEL_10;
  }
}

{
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v5))
  {
    v35 = v5;
    v6 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v6 = 136315138;
    v38 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14SiriKitRuntime24InsightRequestSummaryKeyV_SStGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime24InsightRequestSummaryKeyV_SStGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DCA696F0;
    *(inited + 32) = 0x614E656764697262;
    *(inited + 40) = 0xEA0000000000656DLL;
    *(inited + 48) = 0xD000000000000012;
    *(inited + 56) = 0x80000001DCA7F2A0;
    *(inited + 64) = 0xD000000000000012;
    *(inited + 72) = 0x80000001DCA7F2C0;
    *(inited + 80) = 0xD000000000000021;
    *(inited + 88) = 0x80000001DCA7B8A0;
    *(inited + 96) = 0x6E61747369737361;
    *(inited + 104) = 0xEB00000000644974;
    v8 = a2[13];
    *(inited + 112) = a2[12];
    *(inited + 120) = v8;
    *(inited + 128) = 0x496E6F6973736573;
    *(inited + 136) = 0xE900000000000064;
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type UUID and conformance UUID();

    *(inited + 144) = dispatch thunk of CustomStringConvertible.description.getter();
    *(inited + 152) = v9;
    *(inited + 160) = 0x4974736575716572;
    *(inited + 168) = 0xE900000000000064;
    v10 = a2[11];
    *(inited + 176) = a2[10];
    *(inited + 184) = v10;
    *(inited + 192) = 0x4E646E616D6D6F63;
    *(inited + 200) = 0xEB00000000656D61;
    v11 = *(a3 + OBJC_IVAR___SKRExecutionOutput_command);
    if (v11)
    {

      v12 = [v11 encodedClassName];
      if (v12)
      {
        v13 = v12;
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;

        v12 = v14;
LABEL_10:
        MEMORY[0x1E12A1580](v12, v16);

        *(inited + 208) = 0;
        *(inited + 216) = 0xE000000000000000;
        strcpy((inited + 224), "commandAceId");
        *(inited + 237) = 0;
        *(inited + 238) = -5120;
        v17 = 0xE000000000000000;
        if (v11)
        {
          v18 = [v11 aceId];
          if (v18)
          {
            v19 = v18;
            v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v17 = v21;

            v18 = v20;
          }
        }

        else
        {
          v18 = 0;
        }

        MEMORY[0x1E12A1580](v18, v17);

        *(inited + 240) = 0;
        *(inited + 248) = 0xE000000000000000;
        v37 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 7, 0);
        for (i = 0; i != 224; i += 32)
        {
          v23 = *(inited + i + 32);
          v24 = *(inited + i + 40);
          v25 = *(inited + i + 48);
          v26 = *(inited + i + 56);

          MEMORY[0x1E12A1580](v23, v24);
          MEMORY[0x1E12A1580](2243106, 0xE300000000000000);
          MEMORY[0x1E12A1580](v25, v26);
          MEMORY[0x1E12A1580](34, 0xE100000000000000);

          v28 = *(v37 + 16);
          v27 = *(v37 + 24);
          if (v28 >= v27 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1);
          }

          *(v37 + 16) = v28 + 1;
          v29 = v37 + 16 * v28;
          *(v29 + 32) = 34;
          *(v29 + 40) = 0xE100000000000000;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type [String] and conformance [A]();
        v30 = BidirectionalCollection<>.joined(separator:)();
        v32 = v31;

        MEMORY[0x1E12A1580](v30, v32);

        MEMORY[0x1E12A1580](125, 0xE100000000000000);
        v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(123, 0xE100000000000000, &v38);

        *(v6 + 4) = v33;
        _os_log_impl(&dword_1DC659000, oslog, v35, "%s", v6, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v34);
        MEMORY[0x1E12A2F50](v34, -1, -1);
        MEMORY[0x1E12A2F50](v6, -1, -1);

        return;
      }
    }

    else
    {

      v12 = 0;
    }

    v16 = 0xE000000000000000;
    goto LABEL_10;
  }
}

{
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v5))
  {
    v25 = v5;
    v6 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v26 = v6;
    *v6 = 136315138;
    v29 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14SiriKitRuntime24InsightRequestSummaryKeyV_SStGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime24InsightRequestSummaryKeyV_SStGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DCA69C00;
    *(inited + 32) = 0x614E656764697262;
    *(inited + 40) = 0xEA0000000000656DLL;
    *(inited + 48) = 0xD000000000000012;
    *(inited + 56) = 0x80000001DCA7F2A0;
    *(inited + 64) = 0xD000000000000012;
    *(inited + 72) = 0x80000001DCA7F2C0;
    *(inited + 80) = 0xD00000000000001DLL;
    *(inited + 88) = 0x80000001DCA7B6B0;
    *(inited + 96) = 0x6E61747369737361;
    *(inited + 104) = 0xEB00000000644974;
    v8 = a2[13];
    *(inited + 112) = a2[12];
    *(inited + 120) = v8;
    *(inited + 128) = 0x496E6F6973736573;
    *(inited + 136) = 0xE900000000000064;
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type UUID and conformance UUID();

    *(inited + 144) = dispatch thunk of CustomStringConvertible.description.getter();
    *(inited + 152) = v9;
    *(inited + 160) = 0x4974736575716572;
    *(inited + 168) = 0xE900000000000064;
    v10 = a2[9];
    *(inited + 176) = a2[8];
    *(inited + 184) = v10;
    *(inited + 192) = 0xD000000000000011;
    *(inited + 200) = 0x80000001DCA7AB40;
    v11 = *(a3 + 24);
    *(inited + 208) = *(a3 + 16);
    *(inited + 216) = v11;
    v28 = MEMORY[0x1E69E7CC0];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 6, 0);
    for (i = 0; i != 192; i += 32)
    {
      v13 = *(inited + i + 32);
      v14 = *(inited + i + 40);
      v15 = *(inited + i + 48);
      v16 = *(inited + i + 56);

      MEMORY[0x1E12A1580](v13, v14);
      MEMORY[0x1E12A1580](2243106, 0xE300000000000000);
      MEMORY[0x1E12A1580](v15, v16);
      MEMORY[0x1E12A1580](34, 0xE100000000000000);

      v18 = *(v28 + 16);
      v17 = *(v28 + 24);
      if (v18 >= v17 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
      }

      *(v28 + 16) = v18 + 1;
      v19 = v28 + 16 * v18;
      *(v19 + 32) = 34;
      *(v19 + 40) = 0xE100000000000000;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v20 = BidirectionalCollection<>.joined(separator:)();
    v22 = v21;

    MEMORY[0x1E12A1580](v20, v22);

    MEMORY[0x1E12A1580](125, 0xE100000000000000);
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(123, 0xE100000000000000, &v29);

    *(v26 + 1) = v23;
    _os_log_impl(&dword_1DC659000, oslog, v25, "%s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x1E12A2F50](v24, -1, -1);
    MEMORY[0x1E12A2F50](v26, -1, -1);
  }

  else
  {
  }
}

void specialized InsightRequestSummaryLogger.emitDebug(_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  oslog = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v9))
  {
    v30 = v9;
    v10 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v31 = v10;
    *v10 = 136315138;
    v34 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14SiriKitRuntime24InsightRequestSummaryKeyV_SStGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime24InsightRequestSummaryKeyV_SStGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DCA69C10;
    *(inited + 32) = 0x614E656764697262;
    *(inited + 40) = 0xEA0000000000656DLL;
    *(inited + 48) = 0xD000000000000012;
    *(inited + 56) = 0x80000001DCA7F2A0;
    *(inited + 64) = 0xD000000000000012;
    *(inited + 72) = 0x80000001DCA7F2C0;
    *(inited + 80) = 0xD000000000000013;
    *(inited + 88) = 0x80000001DCA7B6D0;
    *(inited + 96) = 0x4974736575716572;
    *(inited + 104) = 0xE900000000000064;
    *(inited + 112) = a2;
    *(inited + 120) = a3;
    v12 = (a4 & 1) == 0;
    *(inited + 128) = 0xD000000000000016;
    *(inited + 136) = 0x80000001DCA841D0;
    if (a4)
    {
      v13 = 1702195828;
    }

    else
    {
      v13 = 0x65736C6166;
    }

    v14 = 0xE500000000000000;
    if (v12)
    {
      v15 = 0xE500000000000000;
    }

    else
    {
      v15 = 0xE400000000000000;
    }

    MEMORY[0x1E12A1580](v13, v15);

    *(inited + 144) = 0;
    *(inited + 152) = 0xE000000000000000;
    strcpy((inited + 160), "mitigatedByURS");
    *(inited + 175) = -18;
    if (a5)
    {
      v16 = 1702195828;
    }

    else
    {
      v16 = 0x65736C6166;
    }

    if (a5)
    {
      v14 = 0xE400000000000000;
    }

    MEMORY[0x1E12A1580](v16, v14);

    *(inited + 176) = 0;
    *(inited + 184) = 0xE000000000000000;
    v33 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 5, 0);
    for (i = 0; i != 160; i += 32)
    {
      v18 = *(inited + i + 32);
      v19 = *(inited + i + 40);
      v20 = *(inited + i + 48);
      v21 = *(inited + i + 56);

      MEMORY[0x1E12A1580](v18, v19);
      MEMORY[0x1E12A1580](2243106, 0xE300000000000000);
      MEMORY[0x1E12A1580](v20, v21);
      MEMORY[0x1E12A1580](34, 0xE100000000000000);

      v23 = *(v33 + 16);
      v22 = *(v33 + 24);
      if (v23 >= v22 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1);
      }

      *(v33 + 16) = v23 + 1;
      v24 = v33 + 16 * v23;
      *(v24 + 32) = 34;
      *(v24 + 40) = 0xE100000000000000;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v25 = BidirectionalCollection<>.joined(separator:)();
    v27 = v26;

    MEMORY[0x1E12A1580](v25, v27);

    MEMORY[0x1E12A1580](125, 0xE100000000000000);
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(123, 0xE100000000000000, &v34);

    *(v31 + 1) = v28;
    _os_log_impl(&dword_1DC659000, oslog, v30, "%s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    MEMORY[0x1E12A2F50](v29, -1, -1);
    MEMORY[0x1E12A2F50](v31, -1, -1);
  }

  else
  {
  }
}

void specialized InsightRequestSummaryLogger.emitDebug(_:)(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4)
{
  oslog = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v7))
  {
    v24 = v7;
    v8 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v25 = v8;
    *v8 = 136315138;
    v28 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14SiriKitRuntime24InsightRequestSummaryKeyV_SStGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime24InsightRequestSummaryKeyV_SStGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DCA6EB80;
    *(inited + 32) = 0x614E656764697262;
    *(inited + 40) = 0xEA0000000000656DLL;
    *(inited + 48) = 0xD000000000000012;
    *(inited + 56) = 0x80000001DCA7F2A0;
    *(inited + 64) = 0xD000000000000012;
    *(inited + 72) = 0x80000001DCA7F2C0;
    *(inited + 80) = 0xD000000000000017;
    *(inited + 88) = 0x80000001DCA7B720;
    *(inited + 96) = 0xD000000000000014;
    *(inited + 104) = 0x80000001DCA841F0;
    *(inited + 112) = PreExecutionDecision.rawValue.getter(a2);
    *(inited + 120) = v10;
    *(inited + 128) = 0x4974736575716572;
    *(inited + 136) = 0xE900000000000064;
    *(inited + 144) = a3;
    *(inited + 152) = a4;
    v27 = MEMORY[0x1E69E7CC0];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 4, 0);
    for (i = 0; i != 128; i += 32)
    {
      v12 = *(inited + i + 32);
      v13 = *(inited + i + 40);
      v14 = *(inited + i + 48);
      v15 = *(inited + i + 56);

      MEMORY[0x1E12A1580](v12, v13);
      MEMORY[0x1E12A1580](2243106, 0xE300000000000000);
      MEMORY[0x1E12A1580](v14, v15);
      MEMORY[0x1E12A1580](34, 0xE100000000000000);

      v17 = *(v27 + 16);
      v16 = *(v27 + 24);
      if (v17 >= v16 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
      }

      *(v27 + 16) = v17 + 1;
      v18 = v27 + 16 * v17;
      *(v18 + 32) = 34;
      *(v18 + 40) = 0xE100000000000000;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v19 = BidirectionalCollection<>.joined(separator:)();
    v21 = v20;

    MEMORY[0x1E12A1580](v19, v21);

    MEMORY[0x1E12A1580](125, 0xE100000000000000);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(123, 0xE100000000000000, &v28);

    *(v25 + 1) = v22;
    _os_log_impl(&dword_1DC659000, oslog, v24, "%s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x1E12A2F50](v23, -1, -1);
    MEMORY[0x1E12A2F50](v25, -1, -1);
  }

  else
  {
  }
}

void specialized InsightRequestSummaryLogger.emitDebug(_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v34 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v34, v8))
  {
    v33 = v8;
    v9 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = v9;
    *v9 = 136315138;
    v36 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14SiriKitRuntime24InsightRequestSummaryKeyV_SStGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime24InsightRequestSummaryKeyV_SStGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DCA6FBB0;
    *(inited + 32) = 0x614E656764697262;
    *(inited + 40) = 0xEA0000000000656DLL;
    *(inited + 48) = 0xD000000000000012;
    *(inited + 56) = 0x80000001DCA7F2A0;
    *(inited + 64) = 0xD000000000000012;
    *(inited + 72) = 0x80000001DCA7F2C0;
    *(inited + 80) = 0xD000000000000027;
    *(inited + 88) = 0x80000001DCA7B800;
    *(inited + 96) = 0xD00000000000001BLL;
    *(inited + 104) = 0x80000001DCA84210;
    PommesResultCandidateMessage.error.getter();
    *(inited + 112) = String.init<A>(describing:)();
    *(inited + 120) = v11;
    *(inited + 128) = 0xD000000000000019;
    *(inited + 136) = 0x80000001DCA84230;
    v12 = PommesResultCandidateMessage.pommesResponse.getter();
    if (v12)
    {

      v13 = 0xE500000000000000;
      v14 = 0x65736C6146;
    }

    else
    {
      v13 = 0xE400000000000000;
      v14 = 1702195796;
    }

    *(inited + 144) = v14;
    *(inited + 152) = v13;
    *(inited + 160) = 0x6E61747369737361;
    *(inited + 168) = 0xEB00000000644974;
    v15 = a3[13];
    *(inited + 176) = a3[12];
    *(inited + 184) = v15;
    *(inited + 192) = 0x496E6F6973736573;
    *(inited + 200) = 0xE900000000000064;
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type UUID and conformance UUID();

    *(inited + 208) = dispatch thunk of CustomStringConvertible.description.getter();
    *(inited + 216) = v16;
    *(inited + 224) = 0x4974736575716572;
    *(inited + 232) = 0xE900000000000064;
    v17 = a3[9];
    *(inited + 240) = a3[8];
    *(inited + 248) = v17;
    *(inited + 256) = 0xD000000000000011;
    *(inited + 264) = 0x80000001DCA7AB40;
    v18 = *(a4 + 24);
    *(inited + 272) = *(a4 + 16);
    *(inited + 280) = v18;
    v35 = MEMORY[0x1E69E7CC0];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 8, 0);
    for (i = 0; i != 256; i += 32)
    {
      v20 = *(inited + i + 32);
      v21 = *(inited + i + 40);
      v22 = *(inited + i + 48);
      v23 = *(inited + i + 56);

      MEMORY[0x1E12A1580](v20, v21);
      MEMORY[0x1E12A1580](2243106, 0xE300000000000000);
      MEMORY[0x1E12A1580](v22, v23);
      MEMORY[0x1E12A1580](34, 0xE100000000000000);

      v25 = *(v35 + 16);
      v24 = *(v35 + 24);
      if (v25 >= v24 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1);
      }

      *(v35 + 16) = v25 + 1;
      v26 = v35 + 16 * v25;
      *(v26 + 32) = 34;
      *(v26 + 40) = 0xE100000000000000;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v27 = BidirectionalCollection<>.joined(separator:)();
    v29 = v28;

    MEMORY[0x1E12A1580](v27, v29);

    MEMORY[0x1E12A1580](125, 0xE100000000000000);
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(123, 0xE100000000000000, &v36);

    *(v32 + 1) = v30;
    _os_log_impl(&dword_1DC659000, v34, v33, "%s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    MEMORY[0x1E12A2F50](v31, -1, -1);
    MEMORY[0x1E12A2F50](v32, -1, -1);
  }

  else
  {
  }
}

void specialized InsightRequestSummaryLogger.emitDebug(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v5))
  {
    v22 = v5;
    v6 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v23 = v6;
    *v6 = 136315138;
    v26 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14SiriKitRuntime24InsightRequestSummaryKeyV_SStGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime24InsightRequestSummaryKeyV_SStGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DCA6EB80;
    *(inited + 32) = 0x614E656764697262;
    *(inited + 40) = 0xEA0000000000656DLL;
    *(inited + 48) = 0xD000000000000012;
    *(inited + 56) = 0x80000001DCA7F2A0;
    *(inited + 64) = 0xD000000000000012;
    *(inited + 72) = 0x80000001DCA7F2C0;
    *(inited + 80) = 0xD000000000000017;
    *(inited + 88) = 0x80000001DCA7B7B0;
    *(inited + 96) = 0x4974736575716572;
    *(inited + 104) = 0xE900000000000064;
    *(inited + 112) = a2;
    *(inited + 120) = a3;
    *(inited + 128) = 0x646F43726F727265;
    *(inited + 136) = 0xE900000000000065;

    *(inited + 144) = dispatch thunk of CustomStringConvertible.description.getter();
    *(inited + 152) = v8;
    v25 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 4, 0);
    for (i = 0; i != 128; i += 32)
    {
      v10 = *(inited + i + 32);
      v11 = *(inited + i + 40);
      v12 = *(inited + i + 48);
      v13 = *(inited + i + 56);

      MEMORY[0x1E12A1580](v10, v11);
      MEMORY[0x1E12A1580](2243106, 0xE300000000000000);
      MEMORY[0x1E12A1580](v12, v13);
      MEMORY[0x1E12A1580](34, 0xE100000000000000);

      v15 = *(v25 + 16);
      v14 = *(v25 + 24);
      if (v15 >= v14 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
      }

      *(v25 + 16) = v15 + 1;
      v16 = v25 + 16 * v15;
      *(v16 + 32) = 34;
      *(v16 + 40) = 0xE100000000000000;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v17 = BidirectionalCollection<>.joined(separator:)();
    v19 = v18;

    MEMORY[0x1E12A1580](v17, v19);

    MEMORY[0x1E12A1580](125, 0xE100000000000000);
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(123, 0xE100000000000000, &v26);

    *(v23 + 1) = v20;
    _os_log_impl(&dword_1DC659000, oslog, v22, "%s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    MEMORY[0x1E12A2F50](v21, -1, -1);
    MEMORY[0x1E12A2F50](v23, -1, -1);
  }

  else
  {
  }
}

void specialized InsightRequestSummaryLogger.emitDebug(_:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  oslog = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v11))
  {
    v31 = v11;
    v12 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v32 = v12;
    *v12 = 136315138;
    v35 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14SiriKitRuntime24InsightRequestSummaryKeyV_SStGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime24InsightRequestSummaryKeyV_SStGMR);
    v29 = a3;
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DCA6FBB0;
    *(inited + 32) = 0x614E656764697262;
    *(inited + 40) = 0xEA0000000000656DLL;
    *(inited + 48) = 0xD000000000000012;
    *(inited + 56) = 0x80000001DCA7F2A0;
    *(inited + 64) = 0xD000000000000012;
    *(inited + 72) = 0x80000001DCA7F2C0;
    *(inited + 80) = 0xD000000000000022;
    *(inited + 88) = 0x80000001DCA7B6F0;
    *(inited + 96) = 0x6E61747369737361;
    *(inited + 104) = 0xEB00000000644974;
    v14 = a2[13];
    *(inited + 112) = a2[12];
    *(inited + 120) = v14;
    *(inited + 128) = 0x496E6F6973736573;
    *(inited + 136) = 0xE900000000000064;
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type UUID and conformance UUID();

    *(inited + 144) = dispatch thunk of CustomStringConvertible.description.getter();
    *(inited + 152) = v15;
    *(inited + 160) = 0x4974736575716572;
    *(inited + 168) = 0xE900000000000064;
    v16 = a2[9];
    *(inited + 176) = a2[8];
    *(inited + 184) = v16;
    *(inited + 192) = 0xD000000000000011;
    *(inited + 200) = 0x80000001DCA7AB40;
    *(inited + 208) = v29;
    *(inited + 216) = a4;
    *(inited + 224) = 0x6449707274;
    *(inited + 232) = 0xE500000000000000;
    *(inited + 240) = v29;
    *(inited + 248) = a4;
    *(inited + 256) = 0x6449756374;
    *(inited + 264) = 0xE500000000000000;
    *(inited + 272) = a5;
    *(inited + 280) = a6;
    v34 = MEMORY[0x1E69E7CC0];
    swift_bridgeObjectRetain_n();

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 8, 0);
    for (i = 0; i != 256; i += 32)
    {
      v18 = *(inited + i + 32);
      v19 = *(inited + i + 40);
      v20 = *(inited + i + 48);
      v21 = *(inited + i + 56);

      MEMORY[0x1E12A1580](v18, v19);
      MEMORY[0x1E12A1580](2243106, 0xE300000000000000);
      MEMORY[0x1E12A1580](v20, v21);
      MEMORY[0x1E12A1580](34, 0xE100000000000000);

      v23 = *(v34 + 16);
      v22 = *(v34 + 24);
      if (v23 >= v22 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1);
      }

      *(v34 + 16) = v23 + 1;
      v24 = v34 + 16 * v23;
      *(v24 + 32) = 34;
      *(v24 + 40) = 0xE100000000000000;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v25 = BidirectionalCollection<>.joined(separator:)();
    v27 = v26;

    MEMORY[0x1E12A1580](v25, v27);

    MEMORY[0x1E12A1580](125, 0xE100000000000000);
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(123, 0xE100000000000000, &v35);

    *(v32 + 1) = v28;
    _os_log_impl(&dword_1DC659000, oslog, v31, "%s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    MEMORY[0x1E12A2F50](v30, -1, -1);
    MEMORY[0x1E12A2F50](v32, -1, -1);
  }

  else
  {
  }
}

uint64_t specialized InsightRequestSummaryLogger.constructLogJsonString(_:)(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = a2();
  v3 = *(v2 + 16);
  if (v3)
  {
    v16 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v4 = (v2 + 56);
    do
    {
      v5 = *(v4 - 3);
      v6 = *(v4 - 2);
      v7 = *(v4 - 1);
      v8 = *v4;

      MEMORY[0x1E12A1580](v5, v6);
      MEMORY[0x1E12A1580](2243106, 0xE300000000000000);
      MEMORY[0x1E12A1580](v7, v8);
      MEMORY[0x1E12A1580](34, 0xE100000000000000);

      v10 = *(v16 + 16);
      v9 = *(v16 + 24);
      if (v10 >= v9 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
      }

      *(v16 + 16) = v10 + 1;
      v11 = v16 + 16 * v10;
      *(v11 + 32) = 34;
      *(v11 + 40) = 0xE100000000000000;
      v4 += 4;
      --v3;
    }

    while (v3);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v12 = BidirectionalCollection<>.joined(separator:)();
  v14 = v13;

  MEMORY[0x1E12A1580](v12, v14);

  MEMORY[0x1E12A1580](125, 0xE100000000000000);
  return 123;
}

uint64_t initializeBufferWithCopyOfBuffer for InsightRequestSummaryLogger(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = **(v4 - 8);

  return v5(a1, a2, v4);
}

uint64_t destroy for InsightRequestSummaryLogger(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t initializeWithCopy for InsightRequestSummaryLogger(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  (*(*(v4 - 8) + 16))(a1, a2, v4);
  return a1;
}

uint64_t assignWithCopy for InsightRequestSummaryLogger(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  (*(*(v4 - 8) + 24))(a1, a2, v4);
  return a1;
}

uint64_t initializeWithTake for InsightRequestSummaryLogger(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  (*(*(v4 - 8) + 32))(a1, a2, v4);
  return a1;
}

uint64_t assignWithTake for InsightRequestSummaryLogger(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  (*(*(v4 - 8) + 40))(a1, a2, v4);
  return a1;
}

uint64_t type metadata completion function for InsightRequestSummaryLogger()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UUID and conformance UUID()
{
  result = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID and conformance UUID);
  }

  return result;
}

id InstrumentationUtil.convertUUIDStringToSISchemaUUID(uuidStr:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v13 - v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init(uuidString:)();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    outlined destroy of UUID?(v3);
    return 0;
  }

  else
  {
    (*(v5 + 32))(v8, v3, v4);
    v10 = objc_allocWithZone(MEMORY[0x1E69CF638]);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v12 = [v10 initWithNSUUID_];

    (*(v5 + 8))(v8, v4);
    return v12;
  }
}

Swift::UInt64 __swiftcall InstrumentationUtil.roundOffToTwoSignificantFigures(_:)(Swift::UInt64 a1)
{
  v1 = a1;
  v2 = a1;
  v3 = ceil(log10(a1));
  if (v3 <= 2.0)
  {
    return v1;
  }

  v5 = __exp10(v3 + -2.0);
  v6 = v5 * rint(v2 / v5);
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v6 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v6 < 1.84467441e19)
  {
    return v6;
  }

LABEL_9:
  __break(1u);
  return result;
}

NSObject *specialized InstrumentationUtil.buildRequestLinkEvent(sourceComponent:sourceUUID:targetComponent:targetUUID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x1E69CF5E0]) init];
  if (!v5)
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.conversationBridge);
    v6 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v44 = v20;
      *v19 = 136315394;
      v21 = SISchemaComponentName.description.getter();
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v44);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;
      v24 = SISchemaComponentName.description.getter();
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v44);

      *(v19 + 14) = v26;
      _os_log_impl(&dword_1DC659000, v6, v18, "Failed to create RequestLink event for source component: %s and target component: %s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v20, -1, -1);
      MEMORY[0x1E12A2F50](v19, -1, -1);
    }

    goto LABEL_14;
  }

  v6 = v5;
  v7 = [objc_allocWithZone(MEMORY[0x1E69CF5F0]) init];
  if (!v7)
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Logger.conversationBridge);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v44 = v31;
      *v30 = 136315138;
      v32 = SISchemaComponentName.description.getter();
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v44);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_1DC659000, v28, v29, "Failed to create source link event for source component: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x1E12A2F50](v31, -1, -1);
      MEMORY[0x1E12A2F50](v30, -1, -1);
    }

LABEL_14:
    return 0;
  }

  v8 = v7;
  v9 = [objc_allocWithZone(MEMORY[0x1E69CF5F0]) init];
  if (!v9)
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, static Logger.conversationBridge);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v44 = v40;
      *v39 = 136315138;
      v41 = SISchemaComponentName.description.getter();
      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, &v44);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_1DC659000, v37, v38, "Failed to create target link event for target component: %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      MEMORY[0x1E12A2F50](v40, -1, -1);
      MEMORY[0x1E12A2F50](v39, -1, -1);
    }

    return 0;
  }

  v10 = v9;
  [v8 setComponent_];
  v11 = objc_allocWithZone(MEMORY[0x1E69CF638]);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v13 = [v11 initWithNSUUID_];

  [v8 setUuid_];
  [v10 setComponent_];
  v14 = objc_allocWithZone(MEMORY[0x1E69CF638]);
  v15 = UUID._bridgeToObjectiveC()().super.isa;
  v16 = [v14 initWithNSUUID_];

  [v10 setUuid_];
  [v6 setSource:v8];
  [v6 setTarget:v10];

  return v6;
}

void *InstrumentedStack.__allocating_init(initialFlowAgent:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v2[5] = MEMORY[0x1E69E7CC8];
  v2[3] = 0;
  v2[4] = 0;
  v2[2] = 0;
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime4NodeCyAA9FlowAgentCGMd, &_s14SiriKitRuntime4NodeCyAA9FlowAgentCGMR);
    swift_allocObject();

    v4 = specialized Node.init(value:parent:)(v3);
    specialized OrderedForest._push(_:)(v4);
    v5 = v4[2];
    v6 = type metadata accessor for InstrumentedStack.TrackedFlowAgent(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();

    v10 = specialized InstrumentedStack.TrackedFlowAgent.init(agent:parent:)(v9, 0);

    swift_beginAccess();
    v11 = v2[5];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = v2[5];
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, v5, isUniquelyReferenced_nonNull_native);
    v2[5] = v14;
    swift_endAccess();
  }

  return v2;
}

void *InstrumentedStack.init(initialFlowAgent:)(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC8];
  v1[4] = 0;
  v1[5] = v2;
  v1[2] = 0;
  v1[3] = 0;
  if (a1)
  {
    v5 = a1;
    v3 = *(*v1 + 208);

    v3(&v5, 0);
  }

  return v1;
}

Swift::Void __swiftcall InstrumentedStack.clear()()
{
  swift_beginAccess();
  v1 = v0[5];
  v0[5] = MEMORY[0x1E69E7CC8];

  v2 = v0[2];
  v0[2] = 0;

  v3 = v0[3];
  v0[3] = 0;

  swift_beginAccess();
  v0[4] = 0;
}

uint64_t InstrumentedStack.push(value:parentNode:)(uint64_t a1, void *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime4NodeCyAA9FlowAgentCGMd, &_s14SiriKitRuntime4NodeCyAA9FlowAgentCGMR);
  swift_allocObject();

  v6 = specialized Node.init(value:parent:)(v5);
  v7 = v6;
  if (a2)
  {
    swift_beginAccess();

    MEMORY[0x1E12A1680](v8);
    if (*((a2[4] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((a2[4] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v22 = *((a2[4] & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();

    specialized OrderedForest._push(_:)(v7);
    v9 = a2[2];
    swift_beginAccess();
    v10 = *(v2 + 40);
    if (*(v10 + 16) && (v11 = specialized __RawDictionaryStorage.find<A>(_:)(v9), (v12 & 1) != 0))
    {
      a2 = *(*(v10 + 56) + 8 * v11);
    }

    else
    {
      a2 = 0;
    }
  }

  else
  {
    specialized OrderedForest._push(_:)(v6);
  }

  v13 = *(v7 + 16);
  v14 = type metadata accessor for InstrumentedStack.TrackedFlowAgent(0);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();

  v18 = specialized InstrumentedStack.TrackedFlowAgent.init(agent:parent:)(v17, a2);

  swift_beginAccess();
  v19 = *(v3 + 40);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *(v3 + 40);
  *(v3 + 40) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, v13, isUniquelyReferenced_nonNull_native);
  *(v3 + 40) = v23;
  swift_endAccess();

  return v7;
}

void *InstrumentedStack.replan(node:)(void *a1)
{
  v2 = v1;
  v129 = specialized OrderedForest.replan(node:)(a1);
  v3 = (*(*v129 + 152))();
  v4 = v3;
  if (v3 >> 62)
  {
LABEL_123:
    result = __CocoaSet.count.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_124:

    return v129;
  }

  result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_124;
  }

LABEL_3:
  v6 = 0;
  v7 = v4 & 0xC000000000000001;
  v8 = v4 & 0xFFFFFFFFFFFFFF8;
  v9 = v4 + 32;
  v147 = v2;
  v114 = v4 & 0xC000000000000001;
  v115 = result;
  v112 = v4 + 32;
  v113 = v4 & 0xFFFFFFFFFFFFFF8;
  v116 = v4;
  while (1)
  {
    if (v7)
    {
      v106 = v6;
      result = MEMORY[0x1E12A1FE0](v6, v4);
      v133 = result;
      v11 = __OFADD__(v106, 1);
      v12 = (v106 + 1);
      if (v11)
      {
        goto LABEL_128;
      }
    }

    else
    {
      if (v6 >= *(v8 + 16))
      {
        goto LABEL_127;
      }

      v133 = *(v9 + 8 * v6);
      v10 = v6;

      v11 = __OFADD__(v10, 1);
      v12 = (v10 + 1);
      if (v11)
      {
        goto LABEL_128;
      }
    }

    v128 = v12;
    v13 = (*(*v133 + 152))();
    v14 = v13;
    if (!(v13 >> 62))
    {
      result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        break;
      }

      goto LABEL_108;
    }

    result = __CocoaSet.count.getter();
    if (result)
    {
      break;
    }

LABEL_108:

    v105 = v133[2];
    swift_beginAccess();
    specialized Dictionary._Variant.removeValue(forKey:)(v105);
    swift_endAccess();

    v4 = v116;
    v6 = v128;
    v8 = v113;
    v7 = v114;
    v9 = v112;
    if (v128 == v115)
    {
      goto LABEL_124;
    }
  }

  v15 = 0;
  v16 = v14 & 0xC000000000000001;
  v17 = v14 & 0xFFFFFFFFFFFFFF8;
  v18 = v14 + 32;
  v109 = v14 & 0xC000000000000001;
  v110 = result;
  v107 = v14 + 32;
  v108 = v14 & 0xFFFFFFFFFFFFFF8;
  v111 = v14;
  while (1)
  {
    if (v16)
    {
      v103 = v15;
      result = MEMORY[0x1E12A1FE0](v15, v14);
      v132 = result;
      v11 = __OFADD__(v103, 1);
      v20 = (v103 + 1);
      if (v11)
      {
        goto LABEL_129;
      }
    }

    else
    {
      if (v15 >= *(v17 + 16))
      {
        goto LABEL_130;
      }

      v132 = *(v18 + 8 * v15);
      v19 = v15;

      v11 = __OFADD__(v19, 1);
      v20 = (v19 + 1);
      if (v11)
      {
        goto LABEL_129;
      }
    }

    v127 = v20;
    v21 = (*(*v132 + 152))();
    v22 = v21;
    if (!(v21 >> 62))
    {
      result = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        break;
      }

      goto LABEL_107;
    }

    result = __CocoaSet.count.getter();
    if (result)
    {
      break;
    }

LABEL_107:

    v104 = v132[2];
    swift_beginAccess();
    specialized Dictionary._Variant.removeValue(forKey:)(v104);
    swift_endAccess();

    v14 = v111;
    v15 = v127;
    v17 = v108;
    v16 = v109;
    v18 = v107;
    if (v127 == v110)
    {
      goto LABEL_108;
    }
  }

  v23 = 0;
  v24 = v22 & 0xC000000000000001;
  v25 = v22 & 0xFFFFFFFFFFFFFF8;
  v26 = v22 + 32;
  v119 = v22 & 0xC000000000000001;
  v120 = result;
  v117 = v22 + 32;
  v118 = v22 & 0xFFFFFFFFFFFFFF8;
  v121 = v22;
  while (1)
  {
    if (v24)
    {
      v78 = v23;
      result = MEMORY[0x1E12A1FE0](v23, v22);
      v136 = result;
      v11 = __OFADD__(v78, 1);
      v28 = (v78 + 1);
      if (v11)
      {
        goto LABEL_126;
      }
    }

    else
    {
      if (v23 >= *(v25 + 16))
      {
        __break(1u);
LABEL_126:
        __break(1u);
LABEL_127:
        __break(1u);
LABEL_128:
        __break(1u);
LABEL_129:
        __break(1u);
LABEL_130:
        __break(1u);
        goto LABEL_131;
      }

      v136 = *(v26 + 8 * v23);
      v27 = v23;

      v11 = __OFADD__(v27, 1);
      v28 = (v27 + 1);
      if (v11)
      {
        goto LABEL_126;
      }
    }

    v130 = v28;
    v29 = (*(*v136 + 152))();
    v4 = v29;
    if (v29 >> 62)
    {
      v30 = __CocoaSet.count.getter();
      if (!v30)
      {
        goto LABEL_80;
      }

LABEL_21:
      v31 = 0;
      v32 = v4 & 0xC000000000000001;
      v33 = v4 & 0xFFFFFFFFFFFFFF8;
      v34 = v4 + 32;
      v124 = v4 & 0xC000000000000001;
      v125 = v30;
      v122 = v4 + 32;
      v123 = v4 & 0xFFFFFFFFFFFFFF8;
      v126 = v4;
      while (1)
      {
        if (v32)
        {
          v68 = v31;
          v137 = MEMORY[0x1E12A1FE0](v31, v4);
          v11 = __OFADD__(v68, 1);
          v36 = v68 + 1;
          if (v11)
          {
            goto LABEL_122;
          }
        }

        else
        {
          if (v31 >= *(v33 + 16))
          {
            goto LABEL_121;
          }

          v137 = *(v34 + 8 * v31);
          v35 = v31;

          v11 = __OFADD__(v35, 1);
          v36 = v35 + 1;
          if (v11)
          {
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }
        }

        v131 = v36;
        v37 = (*(*v137 + 152))();
        v4 = v37;
        if (!(v37 >> 62))
        {
          v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v38)
          {
            break;
          }

          goto LABEL_70;
        }

        v38 = __CocoaSet.count.getter();
        if (v38)
        {
          break;
        }

LABEL_70:

        v69 = v137[2];
        swift_beginAccess();
        v70 = *(v2 + 40);
        v71 = specialized __RawDictionaryStorage.find<A>(_:)(v69);
        if (v72)
        {
          v73 = v71;
          v74 = *(v2 + 40);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v76 = *(v2 + 40);
          *(v2 + 40) = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            specialized _NativeDictionary.copy()();
          }

          v77 = *(*(v76 + 56) + 8 * v73);

          specialized _NativeDictionary._delete(at:)(v73, v76);
          *(v2 + 40) = v76;
        }

        swift_endAccess();

        v4 = v126;
        v31 = v131;
        v33 = v123;
        v32 = v124;
        v34 = v122;
        if (v131 == v125)
        {
          goto LABEL_80;
        }
      }

      v39 = 0;
      v139 = v4 & 0xFFFFFFFFFFFFFF8;
      v140 = v4 & 0xC000000000000001;
      v138 = v4 + 32;
      v134 = v38;
      v135 = v4;
      while (1)
      {
        if (v140)
        {
          v142 = MEMORY[0x1E12A1FE0](v39, v4);
          v11 = __OFADD__(v39, 1);
          v41 = v39 + 1;
          if (v11)
          {
            goto LABEL_119;
          }
        }

        else
        {
          if (v39 >= *(v139 + 16))
          {
            goto LABEL_120;
          }

          v142 = *(v138 + 8 * v39);

          v11 = __OFADD__(v39, 1);
          v41 = v39 + 1;
          if (v11)
          {
            goto LABEL_119;
          }
        }

        v42 = (*(*v142 + 152))();
        v4 = v42;
        v141 = v41;
        if (v42 >> 62)
        {
          v43 = __CocoaSet.count.getter();
          if (v43)
          {
LABEL_35:
            v44 = 0;
            v145 = v4 & 0xFFFFFFFFFFFFFF8;
            v146 = v4 & 0xC000000000000001;
            v143 = v4;
            v144 = v4 + 32;
            do
            {
              if (v146)
              {
                v46 = MEMORY[0x1E12A1FE0](v44, v4);
                v11 = __OFADD__(v44++, 1);
                if (v11)
                {
                  goto LABEL_117;
                }
              }

              else
              {
                if (v44 >= *(v145 + 16))
                {
                  goto LABEL_118;
                }

                v46 = *(v144 + 8 * v44);

                v11 = __OFADD__(v44++, 1);
                if (v11)
                {
                  goto LABEL_117;
                }
              }

              v4 = v46;
              v47 = (*(*v46 + 152))();
              v48 = v47;
              if (v47 >> 62)
              {
                v49 = __CocoaSet.count.getter();
                if (v49)
                {
LABEL_43:
                  v50 = 0;
                  do
                  {
                    if ((v48 & 0xC000000000000001) != 0)
                    {
                      v51 = MEMORY[0x1E12A1FE0](v50, v48);
                      v2 = v50 + 1;
                      if (__OFADD__(v50, 1))
                      {
                        goto LABEL_115;
                      }
                    }

                    else
                    {
                      if (v50 >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        goto LABEL_116;
                      }

                      v51 = *(v48 + 8 * v50 + 32);

                      v2 = v50 + 1;
                      if (__OFADD__(v50, 1))
                      {
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
                        goto LABEL_122;
                      }
                    }

                    v4 = v147;
                    InstrumentedStack.removeTrackedFlow(for:)(v51);

                    ++v50;
                  }

                  while (v2 != v49);
                }
              }

              else
              {
                v49 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v49)
                {
                  goto LABEL_43;
                }
              }

              v52 = v46[2];
              v2 = v147;
              swift_beginAccess();
              v53 = *(v147 + 40);
              v54 = specialized __RawDictionaryStorage.find<A>(_:)(v52);
              if (v55)
              {
                v56 = v54;
                v57 = *(v147 + 40);
                v58 = swift_isUniquelyReferenced_nonNull_native();
                v59 = *(v147 + 40);
                *(v147 + 40) = 0x8000000000000000;
                if (!v58)
                {
                  specialized _NativeDictionary.copy()();
                }

                v45 = *(*(v59 + 56) + 8 * v56);

                specialized _NativeDictionary._delete(at:)(v56, v59);
                *(v147 + 40) = v59;
              }

              swift_endAccess();

              v4 = v143;
            }

            while (v44 != v43);
          }
        }

        else
        {
          v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v43)
          {
            goto LABEL_35;
          }
        }

        v60 = v142[2];
        swift_beginAccess();
        v61 = *(v2 + 40);
        v62 = specialized __RawDictionaryStorage.find<A>(_:)(v60);
        if (v63)
        {
          v64 = v62;
          v65 = *(v2 + 40);
          v66 = swift_isUniquelyReferenced_nonNull_native();
          v67 = *(v2 + 40);
          *(v2 + 40) = 0x8000000000000000;
          if (!v66)
          {
            specialized _NativeDictionary.copy()();
          }

          v40 = *(*(v67 + 56) + 8 * v64);

          specialized _NativeDictionary._delete(at:)(v64, v67);
          *(v2 + 40) = v67;
        }

        swift_endAccess();

        v4 = v135;
        v39 = v141;
        if (v141 == v134)
        {
          goto LABEL_70;
        }
      }
    }

    v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v30)
    {
      goto LABEL_21;
    }

LABEL_80:

    v79 = v136[2];
    swift_beginAccess();
    v80 = *(v2 + 40);
    v81 = specialized __RawDictionaryStorage.find<A>(_:)(v79);
    if (v82)
    {
      break;
    }

LABEL_84:
    swift_endAccess();

    v22 = v121;
    v23 = v130;
    v25 = v118;
    v24 = v119;
    v26 = v117;
    if (v130 == v120)
    {
      goto LABEL_107;
    }
  }

  v83 = v81;
  v84 = *(v2 + 40);
  v85 = swift_isUniquelyReferenced_nonNull_native();
  v86 = *(v2 + 40);
  *(v2 + 40) = 0x8000000000000000;
  if (v85)
  {
    v87 = v86;
LABEL_83:
    v88 = *(*(v87 + 56) + 8 * v83);

    specialized _NativeDictionary._delete(at:)(v83, v87);
    *(v2 + 40) = v87;
    goto LABEL_84;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySO14SiriKitRuntime17InstrumentedStackC16TrackedFlowAgent33_D2D0045FA6DDADCCE44653D1D4022143LLCGMd, &_ss18_DictionaryStorageCySO14SiriKitRuntime17InstrumentedStackC16TrackedFlowAgent33_D2D0045FA6DDADCCE44653D1D4022143LLCGMR);
  v89 = static _DictionaryStorage.copy(original:)();
  v87 = v89;
  if (!*(v86 + 16))
  {
LABEL_102:

    v2 = v147;
    goto LABEL_83;
  }

  result = (v89 + 64);
  v90 = v86 + 64;
  v91 = ((1 << *(v87 + 32)) + 63) >> 6;
  if (v87 != v86 || result >= v90 + 8 * v91)
  {
    result = memmove(result, (v86 + 64), 8 * v91);
  }

  v92 = 0;
  *(v87 + 16) = *(v86 + 16);
  v93 = 1 << *(v86 + 32);
  v94 = *(v86 + 64);
  if (v93 < 64)
  {
    v95 = ~(-1 << v93);
  }

  else
  {
    v95 = -1;
  }

  v96 = v95 & v94;
  v97 = (v93 + 63) >> 6;
  if ((v95 & v94) != 0)
  {
    do
    {
      v98 = __clz(__rbit64(v96));
      v96 &= v96 - 1;
LABEL_100:
      v101 = v98 | (v92 << 6);
      v102 = *(*(v86 + 56) + 8 * v101);
      *(*(v87 + 48) + 8 * v101) = *(*(v86 + 48) + 8 * v101);
      *(*(v87 + 56) + 8 * v101) = v102;
    }

    while (v96);
  }

  v99 = v92;
  while (1)
  {
    v92 = v99 + 1;
    if (__OFADD__(v99, 1))
    {
      break;
    }

    if (v92 >= v97)
    {
      goto LABEL_102;
    }

    v100 = *(v90 + 8 * v92);
    ++v99;
    if (v100)
    {
      v98 = __clz(__rbit64(v100));
      v96 = (v100 - 1) & v100;
      goto LABEL_100;
    }
  }

LABEL_131:
  __break(1u);
  return result;
}

void *specialized OrderedForest.replan(node:)(void *a1)
{
  v2 = a1[2];
  v3 = *(*a1 + 128);

  v3(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime4NodeCyAA9FlowAgentCGMd, &_s14SiriKitRuntime4NodeCyAA9FlowAgentCGMR);
  swift_allocObject();
  v5 = specialized Node.init(value:parent:)(v2);
  v6 = specialized OrderedForest._recursiveRemove(_:)(a1);
  v7 = (*(*a1 + 152))(v6);
  swift_beginAccess();
  v8 = *(v5 + 32);
  *(v5 + 32) = v7;

  swift_beginAccess();
  v9 = a1[4];
  v10 = MEMORY[0x1E69E7CC0];
  a1[4] = MEMORY[0x1E69E7CC0];

  v11 = specialized OrderedForest._push(_:)(a1);
  v12 = (v3)(v11);
  if (v12)
  {
    v13 = v12;
    v14 = *(*v12 + 152);
    v15 = (v14)();
    if (v15 >> 62)
    {
      goto LABEL_19;
    }

    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v16)
    {
      while (1)
      {
        v18 = (v14)(v17);
        v14 = v18;
        v30 = v10;
        if (v18 >> 62)
        {
          v19 = __CocoaSet.count.getter();
          if (!v19)
          {
LABEL_22:
            v22 = MEMORY[0x1E69E7CC0];
LABEL_23:

            swift_beginAccess();
            v24 = *(v13 + 32);
            *(v13 + 32) = v22;

            MEMORY[0x1E12A1680](v25);
            if (*((*(v13 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v13 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v27 = *((*(v13 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            swift_endAccess();
            goto LABEL_26;
          }
        }

        else
        {
          v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v19)
          {
            goto LABEL_22;
          }
        }

        v28 = v13;
        v29 = v5;
        v5 = 0;
        v10 = v14 & 0xFFFFFFFFFFFFFF8;
        while ((v14 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x1E12A1FE0](v5, v14);
          v20 = (v5 + 1);
          if (__OFADD__(v5, 1))
          {
LABEL_16:
            __break(1u);
LABEL_17:
            v5 = v29;
            v22 = v30;
            v13 = v28;
            goto LABEL_23;
          }

LABEL_12:
          if (v13 == a1)
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v21 = *(v30 + 16);
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          ++v5;
          if (v20 == v19)
          {
            goto LABEL_17;
          }
        }

        if (v5 < *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_19:
        v23 = __CocoaSet.count.getter();

        if (!v23)
        {
          goto LABEL_26;
        }
      }

      v13 = *(v14 + 8 * v5 + 32);

      v20 = (v5 + 1);
      if (__OFADD__(v5, 1))
      {
        goto LABEL_16;
      }

      goto LABEL_12;
    }

LABEL_26:
  }

  return v5;
}

void *InstrumentedStack.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return v0;
}

uint64_t type metadata completion function for InstrumentedStack.TrackedFlowAgent()
{
  result = type metadata accessor for OSSignpostID();
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

uint64_t IntelligenceFlowFeatureFlag.isEnabled.getter()
{
  v2[3] = &type metadata for IntelligenceFlowFeatureFlag;
  v2[4] = lazy protocol witness table accessor for type IntelligenceFlowFeatureFlag and conformance IntelligenceFlowFeatureFlag();
  v0 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  return v0 & 1;
}

Swift::Int IntelligenceFlowFeatureFlag.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12A23F0](0);
  return Hasher._finalize()();
}

uint64_t *IntentLoggingEventSink.instance.unsafeMutableAddressor()
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  return &static IntentLoggingEventSink.instance;
}

uint64_t one-time initialization function for intentStore()
{
  v0 = type metadata accessor for IntentEventStore();
  __swift_allocate_value_buffer(v0, static IntentLoggingEventSink.intentStore);
  __swift_project_value_buffer(v0, static IntentLoggingEventSink.intentStore);
  return IntentEventStore.init()();
}

uint64_t _sScTss5Error_pRs_rlE8detached4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntFZyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v24 - v10;
  outlined init with copy of ReferenceResolutionClientProtocol?(a3, v24 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t closure #1 in IntentLoggingEventSink.handleDisambiguationOffered(intent:parameterName:multicardinalValueIndex:disambiguationItems:now:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9)
{
  v34 = a7;
  v35 = a6;
  v32 = a2;
  v33 = a3;
  v31 = a1;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v29 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v28 - v15;

  v17 = [a5 _className];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v18 = *(v11 + 16);
  v30 = a9;
  v18(v16, a9, v10);
  v19 = type metadata accessor for DisambiguationOffer();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();

  v22 = v36;
  result = DisambiguationOffer.init(parameterName:intentType:multicardinalIndexValue:disambiguationItems:timestamp:)();
  if (!v22)
  {
    v18(v29, v30, v10);
    v24 = type metadata accessor for IntentEvent();
    v25 = *(v24 + 48);
    v26 = *(v24 + 52);
    swift_allocObject();

    IntentEvent.init(intentId:disambiguationOffer:createdAt:)();
    if (one-time initialization token for intentStore != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for IntentEventStore();
    __swift_project_value_buffer(v27, static IntentLoggingEventSink.intentStore);
    IntentEventStore.log(event:)();
  }

  return result;
}

void closure #1 in IntentLoggingEventSink.handleDisambiguationResult(intent:parameterName:multicardinalIndexValue:sirikitConfirmationState:now:context:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v43 = a6;
  v44 = a8;
  v42 = a7;
  v41[1] = a1;
  v41[2] = a2;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = v41 - v18;
  v20 = [a3 _dictionaryRepresentation];
  v21 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v45 = a4;
  v46 = a4;
  v47 = a5;

  AnyHashable.init<A>(_:)();
  if (*(v21 + 16) && (v22 = specialized __RawDictionaryStorage.find<A>(_:)(v48), (v23 & 1) != 0))
  {
    outlined init with copy of Any(*(v21 + 56) + 32 * v22, v49);
    outlined destroy of AnyHashable(v48);

    v24 = [a3 _className];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41[0] = v25;

    outlined init with copy of Any(v49, v48);
    v26 = *(v12 + 16);
    v27 = v44;
    v26(v19, v44, v11);
    v28 = type metadata accessor for DisambiguationResult();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    v31 = v49[5];
    DisambiguationResult.init(parameterName:intentType:multicardinalIndexValue:resolvedValue:timestamp:)();
    if (v31)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v49);
    }

    else
    {
      v26(v15, v27, v11);
      v37 = type metadata accessor for IntentEvent();
      v38 = *(v37 + 48);
      v39 = *(v37 + 52);
      swift_allocObject();

      IntentEvent.init(intentId:disambiguationResult:createdAt:)();
      if (one-time initialization token for intentStore != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for IntentEventStore();
      __swift_project_value_buffer(v40, static IntentLoggingEventSink.intentStore);
      IntentEventStore.log(event:)();

      __swift_destroy_boxed_opaque_existential_1Tm(v49);
    }
  }

  else
  {

    outlined destroy of AnyHashable(v48);
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static Logger.instrumentation);

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v48[0] = v36;
      *v35 = 136315138;
      *(v35 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, a5, v48);
      _os_log_impl(&dword_1DC659000, v33, v34, "Intent has no value for %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      MEMORY[0x1E12A2F50](v36, -1, -1);
      MEMORY[0x1E12A2F50](v35, -1, -1);
    }
  }
}

uint64_t closure #1 in IntentLoggingEventSink.handleIntentResult(intent:launchAppBehavior:now:context:statusReason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v47 = a2;
  v48 = a7;
  v44 = a6;
  v45 = a5;
  v42 = a3;
  v43 = a4;
  v46 = a1;
  v7 = type metadata accessor for Date();
  v38 = v7;
  v41 = *(v7 - 8);
  v8 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v39 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  v40 = *(v9 - 8);
  v10 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v35 - v11;
  v37 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow17LaunchAppBehaviorOSgMd, &_s11SiriKitFlow17LaunchAppBehaviorOSgMR);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v35 - v16;
  v36 = &v35 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v35 - v20;
  static TaskPriority.background.getter();
  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v21, 0, 1, v22);
  outlined init with copy of ReferenceResolutionClientProtocol?(v42, v17, &_s11SiriKitFlow17LaunchAppBehaviorOSgMd, &_s11SiriKitFlow17LaunchAppBehaviorOSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(v43, v12, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  v23 = v41;
  (*(v41 + 16))(&v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v44, v7);
  v24 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v25 = (v15 + *(v40 + 80) + v24) & ~*(v40 + 80);
  v26 = (v10 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = (*(v23 + 80) + v26 + 8) & ~*(v23 + 80);
  v28 = (v8 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v36, v29 + v24, &_s11SiriKitFlow17LaunchAppBehaviorOSgMd, &_s11SiriKitFlow17LaunchAppBehaviorOSgMR);
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v37, v29 + v25, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  v30 = v45;
  *(v29 + v26) = v45;
  (*(v23 + 32))(v29 + v27, v39, v38);
  v31 = (v29 + v28);
  v32 = v47;
  *v31 = v46;
  v31[1] = v32;
  *(v29 + ((v28 + 23) & 0xFFFFFFFFFFFFFFF8)) = v48;
  v33 = v30;

  _sScTss5Error_pRs_rlE8detached4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntFZyt_Tt2g5(0, 0, v21, &async function pointer to partial apply for closure #1 in closure #1 in IntentLoggingEventSink.handleIntentResult(intent:launchAppBehavior:now:context:statusReason:), v29);

  return outlined destroy of ReferenceResolutionClientProtocol?(v21, &_sScPSgMd, &_sScPSgMR);
}

uint64_t closure #1 in closure #1 in IntentLoggingEventSink.handleIntentResult(intent:launchAppBehavior:now:context:statusReason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v25;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  v9 = type metadata accessor for Date();
  v8[8] = v9;
  v10 = *(v9 - 8);
  v8[9] = v10;
  v11 = *(v10 + 64) + 15;
  v8[10] = swift_task_alloc();
  v8[11] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR) - 8) + 64) + 15;
  v8[12] = swift_task_alloc();
  v13 = type metadata accessor for SiriKitReliabilityCodes();
  v8[13] = v13;
  v14 = *(v13 - 8);
  v8[14] = v14;
  v15 = *(v14 + 64) + 15;
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow17LaunchAppBehaviorOSgMd, &_s11SiriKitFlow17LaunchAppBehaviorOSgMR) - 8) + 64) + 15;
  v8[17] = swift_task_alloc();
  v17 = type metadata accessor for LaunchAppBehavior();
  v8[18] = v17;
  v18 = *(v17 - 8);
  v8[19] = v18;
  v19 = *(v18 + 64) + 15;
  v8[20] = swift_task_alloc();
  v8[21] = swift_task_alloc();
  v20 = type metadata accessor for IntentResultType();
  v8[22] = v20;
  v21 = *(v20 - 8);
  v8[23] = v21;
  v22 = *(v21 + 64) + 15;
  v8[24] = swift_task_alloc();
  v8[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in IntentLoggingEventSink.handleIntentResult(intent:launchAppBehavior:now:context:statusReason:), 0, 0);
}

uint64_t closure #1 in closure #1 in IntentLoggingEventSink.handleIntentResult(intent:launchAppBehavior:now:context:statusReason:)()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  outlined init with copy of ReferenceResolutionClientProtocol?(v0[2], v3, &_s11SiriKitFlow17LaunchAppBehaviorOSgMd, &_s11SiriKitFlow17LaunchAppBehaviorOSgMR);
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    v14 = v0[20];
    v15 = v0[21];
    v16 = v0[18];
    v17 = v0[19];
    v18 = *(v17 + 32);
    v18(v15, v0[17], v16);
    v18(v14, v15, v16);
    v19 = (*(v17 + 88))(v14, v16);
    if (v19 == *MEMORY[0x1E69CFEF0])
    {
      v10 = v0[25];
      v11 = v0[22];
      v12 = v0[23];
      (*(v0[19] + 8))(v0[20], v0[18]);
      v13 = MEMORY[0x1E69CF898];
      goto LABEL_6;
    }

    if (v19 == *MEMORY[0x1E69CFEE8])
    {
      goto LABEL_13;
    }

    if (v19 == *MEMORY[0x1E69CFEE0])
    {
      v26 = v0[25];
      v27 = v0[22];
      v28 = v0[23];
      v29 = MEMORY[0x1E69CF8A8];
      goto LABEL_14;
    }

    v58 = v0[22];
    v59 = *(v0[23] + 104);
    v60 = v0[25];
    if (v19 == *MEMORY[0x1E69CFED8])
    {
      v61 = MEMORY[0x1E69CF890];
LABEL_29:
      v59(v60, *v61, v58);
      goto LABEL_15;
    }

    v63 = v0[19];
    v62 = v0[20];
    v64 = v0[18];
LABEL_31:
    v59(v60, *MEMORY[0x1E69CF8B0], v58);
    (*(v63 + 8))(v62, v64);
    goto LABEL_15;
  }

  v4 = v0[13];
  v5 = v0[14];
  v6 = v0[12];
  v7 = v0[3];
  outlined destroy of ReferenceResolutionClientProtocol?(v0[17], &_s11SiriKitFlow17LaunchAppBehaviorOSgMd, &_s11SiriKitFlow17LaunchAppBehaviorOSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(v7, v6, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  v8 = (*(v5 + 48))(v6, 1, v4);
  v9 = v0[12];
  if (v8 != 1)
  {
    v20 = v0[15];
    v21 = v0[16];
    v22 = v0[13];
    v23 = v0[14];
    v24 = *(v23 + 32);
    v24(v21, v0[12], v22);
    v24(v20, v21, v22);
    v25 = (*(v23 + 88))(v20, v22);
    if (v25 == *MEMORY[0x1E69CFC80])
    {
      v26 = v0[25];
      v27 = v0[22];
      v28 = v0[23];
      v29 = MEMORY[0x1E69CF898];
LABEL_14:
      (*(v28 + 104))(v26, *v29, v27);
      goto LABEL_15;
    }

    if (v25 == *MEMORY[0x1E69CFC78])
    {
LABEL_13:
      v26 = v0[25];
      v27 = v0[22];
      v28 = v0[23];
      v29 = MEMORY[0x1E69CF8A0];
      goto LABEL_14;
    }

    if (v25 == *MEMORY[0x1E69CFCC8])
    {
      v26 = v0[25];
      v27 = v0[22];
      v28 = v0[23];
      v29 = MEMORY[0x1E69CF890];
      goto LABEL_14;
    }

    v58 = v0[22];
    v59 = *(v0[23] + 104);
    v60 = v0[25];
    if (v25 == *MEMORY[0x1E69CFCB8])
    {
      v61 = MEMORY[0x1E69CF8A8];
      goto LABEL_29;
    }

    v63 = v0[14];
    v62 = v0[15];
    v64 = v0[13];
    goto LABEL_31;
  }

  v10 = v0[25];
  v11 = v0[22];
  v12 = v0[23];
  outlined destroy of ReferenceResolutionClientProtocol?(v0[12], &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  v13 = MEMORY[0x1E69CF8B0];
LABEL_6:
  (*(v12 + 104))(v10, *v13, v11);
LABEL_15:
  v30 = v0[24];
  v31 = v0[25];
  v33 = v0[22];
  v32 = v0[23];
  v34 = v0[11];
  v35 = v0[9];
  v68 = v0[8];
  v36 = v0[4];
  v37 = v0[5];
  v38 = [v36 _className];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v32 + 16))(v30, v31, v33);
  v39 = *(v35 + 16);
  v39(v34, v37, v68);
  v40 = type metadata accessor for IntentResult();
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  swift_allocObject();
  v43 = v36;
  IntentResult.init(intentType:type:intent:timestamp:)();
  v44 = v0[7];
  v45 = v0[6];
  v39(v0[10], v0[5], v0[8]);
  v46 = type metadata accessor for IntentEvent();
  v47 = *(v46 + 48);
  v48 = *(v46 + 52);
  swift_allocObject();

  IntentEvent.init(intentId:intentResult:createdAt:)();
  if (one-time initialization token for intentStore != -1)
  {
    swift_once();
  }

  v51 = v0[24];
  v50 = v0[25];
  v52 = v0[22];
  v53 = v0[23];
  v55 = v0[20];
  v54 = v0[21];
  v65 = v0[17];
  v66 = v0[16];
  v67 = v0[15];
  v69 = v0[12];
  v70 = v0[11];
  v71 = v0[10];
  v56 = type metadata accessor for IntentEventStore();
  __swift_project_value_buffer(v56, static IntentLoggingEventSink.intentStore);
  IntentEventStore.log(event:)();

  (*(v53 + 8))(v50, v52);

  v57 = v0[1];

  return v57();
}

uint64_t closure #1 in IntentLoggingEventSink.handleConfirmationOffered(intent:parameterName:multicardinalValueIndex:itemToConfirm:now:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, int a8, uint64_t a9)
{
  v48 = a8;
  v49 = a5;
  v50 = a7;
  v47 = a4;
  v44 = a2;
  v45 = a1;
  v11 = a9;
  v53 = type metadata accessor for Date();
  v12 = *(v53 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v46 = &v41 - v17;
  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v51 = v12;
  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.instrumentation);
  outlined init with copy of Any(a3, v55);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v42 = a3;
    v23 = v22;
    v56 = v22;
    *v21 = 136315138;
    outlined init with copy of Any(v55, v54);
    v24 = String.init<A>(describing:)();
    v43 = a9;
    v26 = v25;
    __swift_destroy_boxed_opaque_existential_1Tm(v55);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v56);
    v11 = v43;

    *(v21 + 4) = v27;
    _os_log_impl(&dword_1DC659000, v19, v20, "Confirmation offered resolvedValue: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    v28 = v23;
    a3 = v42;
    MEMORY[0x1E12A2F50](v28, -1, -1);
    MEMORY[0x1E12A2F50](v21, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v55);
  }

  v29 = [a6 _className];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  outlined init with copy of Any(a3, v55);
  v30 = *(v51 + 16);
  v31 = v53;
  v30(v46, v11, v53);
  v32 = type metadata accessor for ConfirmationOffer();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  v35 = v52;
  result = ConfirmationOffer.init(parameterName:intentType:multicardinalIndexValue:item:timestamp:)();
  if (!v35)
  {
    v30(v15, v11, v31);
    v37 = type metadata accessor for IntentEvent();
    v38 = *(v37 + 48);
    v39 = *(v37 + 52);
    swift_allocObject();

    IntentEvent.init(intentId:confirmationOffer:createdAt:)();
    if (one-time initialization token for intentStore != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for IntentEventStore();
    __swift_project_value_buffer(v40, static IntentLoggingEventSink.intentStore);
    IntentEventStore.log(event:)();
  }

  return result;
}

void closure #1 in IntentLoggingEventSink.handleConfirmationResult(intent:parameterName:multicardinalIndexValue:confirmationState:now:context:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9)
{
  v79 = a8;
  v81 = a7;
  v78 = a6;
  v75 = a1;
  v76 = a2;
  v12 = type metadata accessor for ConfirmationResolution();
  v72 = *(v12 - 8);
  v13 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v77 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for Date();
  v80 = *(v83 - 8);
  v15 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v83);
  v74 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v73 = &v71 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v71 - v20;
  v22 = type metadata accessor for SiriKitConfirmationState();
  v82 = *(v22 - 8);
  v23 = *(v82 + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = [a3 _dictionaryRepresentation];
  v28 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v84 = a4;
  v85 = a4;
  v86 = a5;

  AnyHashable.init<A>(_:)();
  if (*(v28 + 16))
  {
    v29 = specialized __RawDictionaryStorage.find<A>(_:)(v87);
    if (v30)
    {
      outlined init with copy of Any(*(v28 + 56) + 32 * v29, v88);
      outlined destroy of AnyHashable(v87);

      v31 = v82;
      (*(v82 + 16))(v26, v78, v22);
      v32 = (*(v31 + 88))(v26, v22);
      if (v32 == *MEMORY[0x1E69CFCF8])
      {

        v33 = [a3 _className];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v72 + 104))(v77, *MEMORY[0x1E69CF950], v12);
        v34 = *(v80 + 16);
        v35 = v83;
        v34(v73, a9, v83);
        v36 = type metadata accessor for ConfirmationResult();
        v37 = *(v36 + 48);
        v38 = *(v36 + 52);
        swift_allocObject();
        ConfirmationResult.init(parameterName:intentType:multicardinalIndexValue:resolution:timestamp:)();
      }

      else
      {
        v48 = v32;
        if (v32 == *MEMORY[0x1E69CFD00])
        {
          v49 = v83;

          v50 = [a3 _className];
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          outlined init with copy of Any(v88, v87);
          v34 = *(v80 + 16);
          v34(v21, a9, v49);
          v51 = type metadata accessor for ConfirmationResult();
          v52 = *(v51 + 48);
          v53 = *(v51 + 52);
          swift_allocObject();
          v54 = v89;
          ConfirmationResult.init(parameterName:intentType:multicardinalIndexValue:confirmedValue:timestamp:)();
          v39 = v54;
          if (v54)
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v88);
            return;
          }

          v35 = v83;
          goto LABEL_6;
        }

        v56 = *MEMORY[0x1E69CFCF0];

        v57 = [a3 _className];
        v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v78 = v59;

        v60 = *(v72 + 104);
        v61 = (v80 + 16);
        if (v48 == v56)
        {
          v60(v77, *MEMORY[0x1E69CF948], v12);
          v34 = *v61;
          v62 = v83;
          (*v61)(v73, a9, v83);
          v35 = v62;
          v63 = type metadata accessor for ConfirmationResult();
          v64 = *(v63 + 48);
          v65 = *(v63 + 52);
          swift_allocObject();
          ConfirmationResult.init(parameterName:intentType:multicardinalIndexValue:resolution:timestamp:)();
        }

        else
        {
          v60(v77, *MEMORY[0x1E69CF940], v12);
          v34 = *v61;
          v80 = v58;
          v66 = v83;
          v34(v73, a9, v83);
          v35 = v66;
          v67 = type metadata accessor for ConfirmationResult();
          v68 = *(v67 + 48);
          v69 = *(v67 + 52);
          swift_allocObject();
          ConfirmationResult.init(parameterName:intentType:multicardinalIndexValue:resolution:timestamp:)();
          v70 = *(v82 + 8);

          v70(v26, v22);
        }
      }

      v39 = v89;
LABEL_6:
      v34(v74, a9, v35);
      v40 = type metadata accessor for IntentEvent();
      v41 = *(v40 + 48);
      v42 = *(v40 + 52);
      swift_allocObject();

      IntentEvent.init(intentId:confirmationResult:createdAt:)();
      if (v39)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v88);
      }

      else
      {
        if (one-time initialization token for intentStore != -1)
        {
          swift_once();
        }

        v55 = type metadata accessor for IntentEventStore();
        __swift_project_value_buffer(v55, static IntentLoggingEventSink.intentStore);
        IntentEventStore.log(event:)();

        __swift_destroy_boxed_opaque_existential_1Tm(v88);
      }

      return;
    }
  }

  outlined destroy of AnyHashable(v87);
  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v43 = type metadata accessor for Logger();
  __swift_project_value_buffer(v43, static Logger.instrumentation);

  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v87[0] = v47;
    *v46 = 136315138;
    *(v46 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, a5, v87);
    _os_log_impl(&dword_1DC659000, v44, v45, "Intent has no value for %s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v47);
    MEMORY[0x1E12A2F50](v47, -1, -1);
    MEMORY[0x1E12A2F50](v46, -1, -1);
  }
}

unint64_t lazy protocol witness table accessor for type ActivityType and conformance ActivityType()
{
  result = lazy protocol witness table cache variable for type ActivityType and conformance ActivityType;
  if (!lazy protocol witness table cache variable for type ActivityType and conformance ActivityType)
  {
    type metadata accessor for ActivityType();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActivityType and conformance ActivityType);
  }

  return result;
}

uint64_t partial apply for closure #1 in IntentLoggingEventSink.handleIntentResult(intent:launchAppBehavior:now:context:statusReason:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in IntentLoggingEventSink.handleIntentResult(intent:launchAppBehavior:now:context:statusReason:)(a1, a2);
}

{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow17LaunchAppBehaviorOSgMd, &_s11SiriKitFlow17LaunchAppBehaviorOSgMR) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(type metadata accessor for Date() - 8);
  v12 = (v10 + *(v11 + 80) + 8) & ~*(v11 + 80);
  return closure #1 in IntentLoggingEventSink.handleIntentResult(intent:launchAppBehavior:now:context:statusReason:)(a1, a2, v2 + v6, v2 + v9, *(v2 + v10), v2 + v12, *(v2 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

void partial apply for closure #1 in IntentLoggingEventSink.handleConfirmationResult(intent:parameterName:multicardinalIndexValue:confirmationState:now:context:)(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for SiriKitConfirmationState() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for Date() - 8);
  v9 = (v7 + *(v8 + 80) + 9) & ~*(v8 + 80);
  v10 = *(v2 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  closure #1 in IntentLoggingEventSink.handleConfirmationResult(intent:parameterName:multicardinalIndexValue:confirmationState:now:context:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), v2 + v6, *(v2 + v7), *(v2 + v7 + 8), v2 + v9);
}

uint64_t partial apply for closure #1 in IntentLoggingEventSink.handleConfirmationOffered(intent:parameterName:multicardinalValueIndex:itemToConfirm:now:context:)(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for Date() - 8);
  v6 = (*(v5 + 80) + 81) & ~*(v5 + 80);
  v8 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  return closure #1 in IntentLoggingEventSink.handleConfirmationOffered(intent:parameterName:multicardinalValueIndex:itemToConfirm:now:context:)(a1, a2, v2 + 16, *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72), *(v2 + 80), v2 + v6);
}

void partial apply for closure #1 in IntentLoggingEventSink.handleDisambiguationResult(intent:parameterName:multicardinalIndexValue:sirikitConfirmationState:now:context:)(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for Date() - 8);
  v6 = (*(v5 + 80) + 49) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  closure #1 in IntentLoggingEventSink.handleDisambiguationResult(intent:parameterName:multicardinalIndexValue:sirikitConfirmationState:now:context:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), v2 + v6);
}

uint64_t partial apply for closure #1 in IntentLoggingEventSink.handleDisambiguationOffered(intent:parameterName:multicardinalValueIndex:disambiguationItems:now:context:)(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for Date() - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  v8 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  return closure #1 in IntentLoggingEventSink.handleDisambiguationOffered(intent:parameterName:multicardinalValueIndex:disambiguationItems:now:context:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), v2 + v6);
}

uint64_t partial apply for closure #1 in closure #1 in IntentLoggingEventSink.handleIntentResult(intent:launchAppBehavior:now:context:statusReason:)(uint64_t a1)
{
  v3 = v2;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow17LaunchAppBehaviorOSgMd, &_s11SiriKitFlow17LaunchAppBehaviorOSgMR) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v23 = v5;
  v6 = *(v4 + 64);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR) - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(type metadata accessor for Date() - 8);
  v11 = (v9 + *(v10 + 80) + 8) & ~*(v10 + 80);
  v12 = (*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v1 + 16);
  v15 = *(v1 + 24);
  v16 = *(v1 + v9);
  v17 = (v1 + v12);
  v19 = *v17;
  v18 = v17[1];
  v20 = *(v1 + v13);
  v21 = swift_task_alloc();
  *(v3 + 16) = v21;
  *v21 = v3;
  v21[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in closure #1 in IntentLoggingEventSink.handleIntentResult(intent:launchAppBehavior:now:context:statusReason:)(a1, v14, v15, v1 + v23, v1 + v8, v16, v1 + v11, v19);
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v29[-1] - v13;
  v30[0] = a4;
  v30[1] = a5;
  outlined init with copy of TaskPriority?(a3, &v29[-1] - v13);
  v15 = type metadata accessor for TaskPriority();
  v16 = *(v15 - 8);
  v17 = (*(v16 + 48))(v14, 1, v15);

  if (v17 == 1)
  {
    outlined destroy of TaskPriority?(v14);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v16 + 8))(v14, v15);
  }

  v19 = *(a5 + 16);
  v18 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v19)
  {
    swift_getObjectType();
    v20 = dispatch thunk of Actor.unownedExecutor.getter();
    v22 = v21;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v23 = String.utf8CString.getter();
      v24 = *(v23 + 16);
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfcBoSRys4Int8VGXEfU_(v23 + 32, v30, a6, v29);

      v25 = v29[0];
      outlined destroy of TaskPriority?(a3);

      return v25;
    }
  }

  else
  {
    v20 = 0;
    v22 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of TaskPriority?(a3);
  v26 = swift_allocObject();
  v26[2] = a6;
  v26[3] = a4;
  v26[4] = a5;
  if (v22 | v20)
  {
    v29[1] = 0;
    v29[2] = 0;
    v29[3] = v20;
    v29[4] = v22;
  }

  return swift_task_create();
}

void *InterruptibleTaskManager.__allocating_init(name:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  result[4] = MEMORY[0x1E69E7CC8];
  result[5] = 0;
  result[2] = a1;
  result[3] = a2;
  return result;
}

Swift::Void __swiftcall InterruptibleTaskManager.invalidate()()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 32);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = *(v0 + 32);

  v8 = 0;
  if (v5)
  {
    while (1)
    {
      v9 = v8;
LABEL_9:
      v10 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v11 = *(v2 + 56) + ((v9 << 10) | (16 * v10));
      v13 = *v11;
      v12 = *(v11 + 8);

      v13(v14);

      if (!v5)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return;
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(v2 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }

  swift_beginAccess();
  if (*(*(v1 + 32) + 16))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v1 + 32);
    *(v1 + 32) = 0x8000000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySuyycGMd, &_ss17_NativeDictionaryVySuyycGMR);
    _NativeDictionary.removeAll(isUnique:)(isUniquelyReferenced_nonNull_native);
    *(v1 + 32) = v16;
  }

  swift_endAccess();
}

void *InterruptibleTaskManager.init(name:)(uint64_t a1, uint64_t a2)
{
  v2[4] = MEMORY[0x1E69E7CC8];
  v2[5] = 0;
  v2[2] = a1;
  v2[3] = a2;
  return v2;
}

void closure #2 in InterruptibleTaskManager.perform<A>(_:)(uint64_t a1)
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(a1 + 16), *(a1 + 24), &v7);
    _os_log_impl(&dword_1DC659000, v3, v4, "%s: task cancelled", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1E12A2F50](v6, -1, -1);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  type metadata accessor for InterruptibleTaskResult();

  JUMPOUT(0x1E12A1950);
}

void partial apply for closure #2 in InterruptibleTaskManager.perform<A>(_:)()
{
  v1 = v0[2];
  v2 = v0[4];
  closure #2 in InterruptibleTaskManager.perform<A>(_:)(v0[3]);
}