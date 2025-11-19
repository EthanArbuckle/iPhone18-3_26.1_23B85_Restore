SiriKitRuntime::EntityTypeMetadata __swiftcall EntityTypeMetadata.init(entityTypeName:entityTypeRequired:)(Swift::String_optional entityTypeName, Swift::Bool entityTypeRequired)
{
  v2 = entityTypeRequired;
  result.entityTypeName = entityTypeName;
  result.entityTypeRequired = v2;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance EntityTypeMetadata(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  if (v3)
  {
    if (v5)
    {
      v7 = *a1 == *a2 && v3 == v5;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return v4 ^ v6 ^ 1u;
      }
    }
  }

  else if (!v5)
  {
    return v4 ^ v6 ^ 1u;
  }

  return 0;
}

uint64_t LinkParseExpansion.linkExpansionContext.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t one-time initialization function for allowListedParsers()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D20_Nlu_External_ParserV0H10IdentifierOGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D20_Nlu_External_ParserV0H10IdentifierOGMR);
  v0 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DCA65720;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x1E69D0978], v0);
  v6(v5 + v2, *MEMORY[0x1E69D0988], v0);
  v7 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC12SiriNLUTypes0E20_Nlu_External_ParserV0I10IdentifierO_Tt0g5Tf4g_n(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  static LinkParseExpansion.allowListedParsers = v7;
  return result;
}

uint64_t *LinkParseExpansion.allowListedParsers.unsafeMutableAddressor()
{
  if (one-time initialization token for allowListedParsers != -1)
  {
    swift_once();
  }

  return &static LinkParseExpansion.allowListedParsers;
}

uint64_t static LinkParseExpansion.allowListedParsers.getter()
{
  if (one-time initialization token for allowListedParsers != -1)
  {
    swift_once();
  }
}

uint64_t LinkParseExpansion.__allocating_init(linkExpansionContext:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t LinkParseExpansion.init(linkExpansionContext:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t LinkParseExpansion.expand(parses:)(void (**a1)(char *, uint64_t), uint64_t a2)
{
  v137 = a2;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  v3 = *(*(v104 - 8) + 64);
  MEMORY[0x1EEE9AC00](v104);
  v103 = v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (v99 - v6);
  v140 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
  v100 = *(v140 - 8);
  v8 = v100[8];
  MEMORY[0x1EEE9AC00](v140);
  v134 = v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v139 = v99 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow8USOParseVSgMd, &_s11SiriKitFlow8USOParseVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v99 - v14;
  v16 = type metadata accessor for USOParse();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v128 = v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v109 = v99 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = v99 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v112 = v99 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v116 = (v99 - v28);
  v29 = type metadata accessor for Parse();
  v129 = *(v29 - 8);
  v30 = v129[8];
  MEMORY[0x1EEE9AC00](v29);
  v127 = v99 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v138 = v99 - v33;
  if (one-time initialization token for kLogger != -1)
  {
    goto LABEL_45;
  }

  while (1)
  {
    v34 = type metadata accessor for Logger();
    v35 = __swift_project_value_buffer(v34, kLogger);

    v114 = v35;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();

    v38 = os_log_type_enabled(v36, v37);
    v117 = v16;
    v115 = v17;
    v113 = v7;
    v118 = v24;
    if (v38)
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v142 = v40;
      *v39 = 136315138;
      v41 = *(v130 + 16);
      v42 = *(v130 + 24);
      v43 = LinkExpansionContext.debugDescription.getter();
      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, &v142);
      v16 = v117;

      *(v39 + 4) = v45;
      v17 = v115;
      _os_log_impl(&dword_1DC659000, v36, v37, "[LinkParseExpansion] Expanding LINK parses from context %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      MEMORY[0x1E12A2F50](v40, -1, -1);
      MEMORY[0x1E12A2F50](v39, -1, -1);
    }

    v46 = specialized SimpleOrderedDictionary.values()(a1, v137);
    v24 = v46;
    v7 = MEMORY[0x1E69E7CC0];
    v48 = v116;
    v126 = *(v46 + 2);
    if (v126)
    {
      v49 = 0;
      v123 = v129 + 11;
      v124 = v129 + 2;
      v122 = *MEMORY[0x1E69D0168];
      v121 = (v17 + 56);
      a1 = (v129 + 1);
      v111 = (v129 + 12);
      v132 = (v17 + 32);
      v110 = (v100 + 6);
      v105 = (v100 + 4);
      v133 = v100 + 2;
      v135 = (v100 + 1);
      v108 = (v17 + 16);
      v107 = (v17 + 8);
      v120 = (v17 + 48);
      *&v47 = 136315138;
      v102 = v47;
      v119 = v29;
      v106 = v15;
      v125 = v46;
      v131 = (v129 + 1);
      do
      {
        if (v49 >= *(v24 + 2))
        {
          __break(1u);
          goto LABEL_44;
        }

        v136 = v49;
        v137 = v7;
        v50 = v129;
        v51 = &v24[((*(v50 + 80) + 32) & ~*(v50 + 80)) + v129[9] * v49];
        v52 = v129[2];
        v53 = v138;
        v52(v138, v51, v29);
        v54 = v127;
        v52(v127, v53, v29);
        v55 = (v50[11])(v54, v29);
        if (v55 == v122)
        {
          (*v111)(v54, v29);
          v56 = *v132;
          v57 = v118;
          (*v132)(v118, v54, v16);
          v58 = v113;
          USOParse.parserIdentifier.getter();
          v59 = v140;
          v60 = (*v110)(v58, 1, v140);
          a1 = v131;
          if (v60 == 1)
          {
            outlined destroy of ReferenceResolutionClientProtocol?(v58, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
            v61 = v109;
          }

          else
          {
            (*v105)(v139, v58, v59);
            if (one-time initialization token for allowListedParsers != -1)
            {
              swift_once();
            }

            v62 = static LinkParseExpansion.allowListedParsers;
            if (*(static LinkParseExpansion.allowListedParsers + 16))
            {
              v101 = v56;
              v63 = *(static LinkParseExpansion.allowListedParsers + 40);
              lazy protocol witness table accessor for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier(&lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier);
              v64 = dispatch thunk of Hashable._rawHashValue(seed:)();
              v65 = -1 << *(v62 + 32);
              v66 = v64 & ~v65;
              if ((*(v62 + 56 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v66))
              {
                v99[1] = v135 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
                v67 = ~v65;
                v68 = v100[9];
                v69 = v100[2];
                while (1)
                {
                  v70 = v134;
                  v71 = v140;
                  v69(v134, *(v62 + 48) + v68 * v66, v140);
                  lazy protocol witness table accessor for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier(&lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier);
                  v72 = dispatch thunk of static Equatable.== infix(_:_:)();
                  v73 = *v135;
                  (*v135)(v70, v71);
                  if (v72)
                  {
                    break;
                  }

                  v66 = (v66 + 1) & v67;
                  if (((*(v62 + 56 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v66) & 1) == 0)
                  {
                    v16 = v117;
                    v15 = v106;
                    v57 = v118;
                    a1 = v131;
                    goto LABEL_23;
                  }
                }

                v73(v139, v140);
                v15 = v106;
                v16 = v117;
                v101(v106, v118, v117);
                (*v121)(v15, 0, 1, v16);
                v17 = v115;
                v48 = v116;
                v29 = v119;
                v7 = v137;
                v24 = v125;
                a1 = v131;
                goto LABEL_29;
              }

              v73 = *v135;
LABEL_23:
              v73(v139, v140);
            }

            else
            {
              (*v135)(v139, v59);
            }

            v61 = v109;
            v29 = v119;
          }

          (*v108)(v61, v57, v16);
          v74 = Logger.logObject.getter();
          v75 = static os_log_type_t.debug.getter();
          v76 = v61;
          if (os_log_type_enabled(v74, v75))
          {
            v77 = swift_slowAlloc();
            v78 = swift_slowAlloc();
            v142 = v78;
            *v77 = v102;
            USOParse.parserIdentifier.getter();
            v79 = String.init<A>(describing:)();
            v81 = v80;
            v82 = *v107;
            (*v107)(v76, v117);
            v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v81, &v142);
            v29 = v119;

            *(v77 + 4) = v83;
            _os_log_impl(&dword_1DC659000, v74, v75, "[LinkParseExpansion] Skipping link parse expansion for parse from %s", v77, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v78);
            MEMORY[0x1E12A2F50](v78, -1, -1);
            MEMORY[0x1E12A2F50](v77, -1, -1);

            v82(v118, v117);
            v15 = v106;
            v16 = v117;
          }

          else
          {

            v84 = *v107;
            (*v107)(v76, v16);
            v84(v57, v16);
          }

          v17 = v115;
          v7 = v137;
          v24 = v125;
          (*v121)(v15, 1, 1, v16);
          v48 = v116;
        }

        else
        {
          (*v121)(v15, 1, 1, v16);
          a1 = v131;
          (*v131)(v54, v29);
          v7 = v137;
          v24 = v125;
        }

LABEL_29:
        (*a1)(v138, v29);
        if ((*v120)(v15, 1, v16) == 1)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(v15, &_s11SiriKitFlow8USOParseVSgMd, &_s11SiriKitFlow8USOParseVSgMR);
        }

        else
        {
          v85 = *v132;
          v86 = v112;
          (*v132)(v112, v15, v16);
          v85(v128, v86, v16);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
          }

          v88 = v7[2];
          v87 = v7[3];
          if (v88 >= v87 >> 1)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v87 > 1, v88 + 1, 1, v7);
          }

          v7[2] = v88 + 1;
          v85(v7 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v88, v128, v16);
          v29 = v119;
        }

        v49 = v136 + 1;
      }

      while (v136 + 1 != v126);
    }

    v142 = MEMORY[0x1E69E7CC0];
    v24 = v7[2];
    if (!v24)
    {
      break;
    }

    v15 = 0;
    v29 = 0;
    a1 = (v17 + 16);
    while (v15 < v7[2])
    {
      (*(v17 + 16))(v48, v7 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v15, v16);
      closure #2 in LinkParseExpansion.expand(parses:)(v48, v130, &v141);
      ++v15;
      (*(v17 + 8))(v48, v16);
      specialized Array.append<A>(contentsOf:)(v141);
      if (v24 == v15)
      {
        goto LABEL_40;
      }
    }

LABEL_44:
    __break(1u);
LABEL_45:
    swift_once();
  }

LABEL_40:

  v89 = v142;

  v90 = Logger.logObject.getter();
  v91 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v142 = v93;
    *v92 = 136315138;
    v94 = type metadata accessor for ParseUserDataAttachment();
    v95 = MEMORY[0x1E12A16D0](v89, v94);
    v97 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v95, v96, &v142);

    *(v92 + 4) = v97;
    _os_log_impl(&dword_1DC659000, v90, v91, "[LinkParseExpansion] Returning expanded parses: %s", v92, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v93);
    MEMORY[0x1E12A2F50](v93, -1, -1);
    MEMORY[0x1E12A2F50](v92, -1, -1);
  }

  return v89;
}

uint64_t closure #2 in LinkParseExpansion.expand(parses:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v44 = a2;
  v45 = a3;
  v4 = type metadata accessor for USOParse();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v43 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v42 - v9;
  if (one-time initialization token for kLogger != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  v12 = __swift_project_value_buffer(v11, kLogger);
  v13 = *(v5 + 16);
  v13(v10, a1, v4);
  v47 = v12;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  v16 = os_log_type_enabled(v14, v15);
  v46 = a1;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *&v52 = v42;
    *v17 = 136315138;
    v13(v43, v10, v4);
    v18 = String.init<A>(reflecting:)();
    v20 = v19;
    (*(v5 + 8))(v10, v4);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v52);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_1DC659000, v14, v15, "[LinkParseExpansion] Expanding parse %s", v17, 0xCu);
    v22 = v42;
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    MEMORY[0x1E12A2F50](v22, -1, -1);
    MEMORY[0x1E12A2F50](v17, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v10, v4);
  }

  specialized LinkUsoParser.extractParseInformation(usoParse:)(&v52);
  v58 = v52;
  v56 = v53;
  v57[0] = *(&v52 + 1);
  v55 = *(&v53 + 1);
  outlined init with copy of ReferenceResolutionClientProtocol?(&v58, v49, &_sSo16LNSystemProtocolCSgMd, &_sSo16LNSystemProtocolCSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(v57, v49, &_sSDySSShySSGGMd, &_sSDySSShySSGGMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(&v56, v49, &_sSDySSShySSGGMd, &_sSDySSShySSGGMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(&v55, v49, &_sShySSGMd, &_sShySSGMR);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  outlined destroy of ReferenceResolutionClientProtocol?(&v58, &_sSo16LNSystemProtocolCSgMd, &_sSo16LNSystemProtocolCSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v57, &_sSDySSShySSGGMd, &_sSDySSShySSGGMR);
  outlined destroy of ReferenceResolutionClientProtocol?(&v56, &_sSDySSShySSGGMd, &_sSDySSShySSGGMR);
  outlined destroy of ReferenceResolutionClientProtocol?(&v55, &_sShySSGMd, &_sShySSGMR);
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v51 = v26;
    *v25 = 136315138;
    v49[0] = v52;
    v49[1] = v53;
    v50 = v54;
    outlined init with copy of ReferenceResolutionClientProtocol?(&v58, v48, &_sSo16LNSystemProtocolCSgMd, &_sSo16LNSystemProtocolCSgMR);
    outlined init with copy of ReferenceResolutionClientProtocol?(v57, v48, &_sSDySSShySSGGMd, &_sSDySSShySSGGMR);
    outlined init with copy of ReferenceResolutionClientProtocol?(&v56, v48, &_sSDySSShySSGGMd, &_sSDySSShySSGGMR);
    outlined init with copy of ReferenceResolutionClientProtocol?(&v55, v48, &_sShySSGMd, &_sShySSGMR);
    v27 = String.init<A>(reflecting:)();
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v51);

    *(v25 + 4) = v29;
    _os_log_impl(&dword_1DC659000, v23, v24, "[LinkParseExpansion] Extracted parse metadata %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    MEMORY[0x1E12A2F50](v26, -1, -1);
    MEMORY[0x1E12A2F50](v25, -1, -1);
  }

  v30 = specialized LinkActionFilter.compatibleLinkActions(parseMetadata:expansionContext:)(&v52, *(v44 + 16), *(v44 + 24));
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *&v49[0] = v34;
    *v33 = 136315138;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS11appBundleId_SDySSypG8userDatatMd, &_sSS11appBundleId_SDySSypG8userDatatMR);
    v36 = MEMORY[0x1E12A16D0](v30, v35);
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, v49);

    *(v33 + 4) = v38;
    _os_log_impl(&dword_1DC659000, v31, v32, "[LinkParseExpansion] Compatible Link Actions %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    MEMORY[0x1E12A2F50](v34, -1, -1);
    MEMORY[0x1E12A2F50](v33, -1, -1);
  }

  MEMORY[0x1EEE9AC00](v39);
  *(&v42 - 2) = v46;
  v40 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySS11appBundleId_SDySSypG8userDatatG_14SiriKitRuntime09ParseUserH10AttachmentVs5NeverOTg5(partial apply for closure #1 in closure #2 in LinkParseExpansion.expand(parses:), (&v42 - 4), v30);
  outlined destroy of ReferenceResolutionClientProtocol?(&v58, &_sSo16LNSystemProtocolCSgMd, &_sSo16LNSystemProtocolCSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v57, &_sSDySSShySSGGMd, &_sSDySSShySSGGMR);
  outlined destroy of ReferenceResolutionClientProtocol?(&v56, &_sSDySSShySSGGMd, &_sSDySSShySSGGMR);
  outlined destroy of ReferenceResolutionClientProtocol?(&v55, &_sShySSGMd, &_sShySSGMR);

  *v45 = v40;
  return result;
}

uint64_t closure #1 in closure #2 in LinkParseExpansion.expand(parses:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a2;
  v33 = a3;
  v4 = type metadata accessor for Siri_Nlu_External_Parser();
  v31 = *(v4 - 8);
  v32 = v4;
  v5 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v27 - v10;
  v28 = type metadata accessor for Siri_Nlu_External_UserParse();
  v12 = *(v28 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v17 = type metadata accessor for Parse();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a1;
  v27[0] = a1[1];
  v27[1] = v22;
  v29 = a1[2];

  USOParse.userParse.getter();
  USOParse.userParse.getter();
  Siri_Nlu_External_UserParse.parser.getter();
  (*(v12 + 8))(v15, v28);
  Siri_Nlu_External_Parser.parserID.getter();
  (*(v31 + 8))(v7, v32);
  v23 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
  (*(*(v23 - 8) + 56))(v11, 0, 1, v23);
  USOParse.init(userParse:parserIdentifier:appBundleId:)();
  (*(v18 + 104))(v21, *MEMORY[0x1E69D0168], v17);
  v24 = type metadata accessor for ParseUserDataAttachment();
  v25 = v33;
  (*(v18 + 16))(v33 + *(v24 + 20), v21, v17);
  UUID.init()();
  result = (*(v18 + 8))(v21, v17);
  *(v25 + *(v24 + 24)) = v29;
  return result;
}

uint64_t LinkParseExpansion.deinit()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  return v0;
}

uint64_t LinkParseExpansion.__deallocating_deinit()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t lazy protocol witness table accessor for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EntityTypeMetadata(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for EntityTypeMetadata(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t specialized Sequence.forEach(_:)(uint64_t result, uint64_t a2, char **a3, char **a4)
{
  v5 = *(result + 16);
  if (v5)
  {
    v9 = v5 - 1;
    v10 = (result + 66);
    do
    {
      v11 = v9;
      v12 = *v10;
      v13 = *(v10 - 1);
      v14 = *(v10 - 2);
      v15 = *(v10 - 10);
      v16 = *(v10 - 18);
      v17 = *(v10 - 26);
      v18[0] = *(v10 - 34);
      v18[1] = v17;
      v18[2] = v16;
      v18[3] = v15;
      v19 = v14;
      v20 = v13;
      v21 = v12;

      closure #1 in LinkActionFilter.compatibleLinkActions(parseMetadata:expansionContext:)(v18, a2, a3, a4);

      if (v4)
      {
        break;
      }

      v9 = v11 - 1;
      v10 += 40;
    }

    while (v11);
  }

  return result;
}

uint64_t specialized LinkActionFilter.compatibleLinkActions(parseMetadata:expansionContext:)(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  v3 = *a1;
  if (!*a1)
  {
    if (one-time initialization token for kLogger != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, kLogger);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1DC659000, v21, v22, "[LinkParseExpansion] Skipping parse expansion as could not find systemProtocol from parse.", v23, 2u);
      MEMORY[0x1E12A2F50](v23, -1, -1);
    }

    return MEMORY[0x1E69E7CC0];
  }

  v6 = a1;
  v7 = one-time initialization token for kLogger;
  v8 = v3;
  if (v7 != -1)
  {
LABEL_90:
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, kLogger);
  v10 = v8;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  v141 = v10;

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    *(v13 + 4) = v141;
    *v14 = v3;
    v15 = v141;
    _os_log_impl(&dword_1DC659000, v11, v12, "[LinkParseExpansion] Evaluating compatible Link actions for %@", v13, 0xCu);
    outlined destroy of ReferenceResolutionClientProtocol?(v14, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1E12A2F50](v14, -1, -1);
    MEMORY[0x1E12A2F50](v13, -1, -1);
  }

  if (*(v6 + 32))
  {
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1DC659000, v16, v17, "[LinkParseExpansion] Detected noEntity parse, using entities directly from SRR entity pool.", v18, 2u);
      MEMORY[0x1E12A2F50](v18, -1, -1);
    }

    v19 = *(a3 + 32);
  }

  else
  {
    if (*(*(v6 + 16) + 16))
    {
      v148 = *(v6 + 16);

      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_1DC659000, v25, v26, "[LinkParseExpansion] Detected parse with explicitly mentioned entity type.", v27, 2u);
        MEMORY[0x1E12A2F50](v27, -1, -1);
      }

      goto LABEL_22;
    }

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1DC659000, v28, v29, "[LinkParseExpansion] Detected parse without explicitly mentioned entity type.", v30, 2u);
      MEMORY[0x1E12A2F50](v30, -1, -1);
    }

    v19 = *(v6 + 8);
  }

  v148 = v19;

LABEL_22:
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v155 = v34;
    *v33 = 136315138;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySSGMd, &_sShySSGMR);
    v35 = Dictionary.description.getter();
    v37 = v36;

    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, &v155);

    *(v33 + 4) = v38;
    _os_log_impl(&dword_1DC659000, v31, v32, "[LinkParseExpansion] Considering salient entities types: %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    MEMORY[0x1E12A2F50](v34, -1, -1);
    MEMORY[0x1E12A2F50](v33, -1, -1);
  }

  v39 = MEMORY[0x1E69E7CC0];
  v168 = MEMORY[0x1E69E7CC0];

  v40 = specialized LinkExpansionContext.LinkActionMetadataView.init(sessionContext:turnContext:)(a2, a3);
  v42 = v41;
  v44 = v43;
  v46 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_SequenceBoxCy14SiriKitRuntime20LinkExpansionContextV0F18ActionMetadataView33_96F732C182F07CCE7D79D4AD573D548BLLVGMd, &_ss12_SequenceBoxCy14SiriKitRuntime20LinkExpansionContextV0F18ActionMetadataView33_96F732C182F07CCE7D79D4AD573D548BLLVGMR);
  inited = swift_initStackObject();
  inited[2] = v40;
  inited[3] = v42;
  inited[4] = v44;
  inited[5] = v46;
  v3 = &v163;
  v164 = v40;
  v165 = v42;
  v166 = v44;
  v167 = v46;

  v48 = LinkExpansionContext.LinkActionMetadataView.next()();
  if (!v49)
  {
    v53 = v39;
    goto LABEL_83;
  }

  v51 = v49;
  v52 = v50;
  a3 = 0;
  v53 = v39;
  v145 = v6;
  while (2)
  {
    v138 = v53;
    v54 = v48;
    while (1)
    {
      v55 = *(v6 + 24);
      if (!*(v55 + 16))
      {
        goto LABEL_37;
      }

      v56 = *(v55 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      v57 = Hasher._finalize()();
      v58 = -1 << *(v55 + 32);
      v59 = v57 & ~v58;
      if (((*(v55 + 56 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59) & 1) == 0)
      {
        break;
      }

      v3 = ~v58;
      while (1)
      {
        v60 = (*(v55 + 48) + 16 * v59);
        v61 = *v60 == v54 && v51 == v60[1];
        if (v61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v59 = (v59 + 1) & v3;
        if (((*(v55 + 56 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59) & 1) == 0)
        {
          goto LABEL_76;
        }
      }

LABEL_37:
      if (*(v148 + 16) && (v62 = specialized __RawDictionaryStorage.find<A>(_:)(v54, v51), (v63 & 1) != 0))
      {
        v64 = *(*(v148 + 56) + 8 * v62);
      }

      else
      {
        v64 = 0;
      }

      v162 = v39;
      v154 = v39;
      if (*(v52 + 16))
      {
        v65 = specialized __RawDictionaryStorage.find<A>(_:)(v141);
        if (v66)
        {
          v67 = *(*(v52 + 56) + 8 * v65);

          specialized Sequence.forEach(_:)(v67, v64, &v162, &v154);
        }
      }

      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.debug.getter();

      v149 = v54;
      v150 = v51;
      if (os_log_type_enabled(v68, v69))
      {
        v143 = v69;
        log = v68;
        v70 = swift_slowAlloc();
        v142 = swift_slowAlloc();
        v151 = v142;
        *v70 = 136315650;
        *(v70 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v51, &v151);
        *(v70 + 12) = 2080;
        swift_beginAccess();
        v71 = v162;
        v72 = *(v162 + 2);
        v146 = v70;
        if (v72)
        {
          v153 = v39;

          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v72, 0);
          v73 = v153;
          v74 = (v71 + 56);
          do
          {
            v76 = *(v74 - 3);
            v75 = *(v74 - 2);
            v77 = *v74;
            if (*v74)
            {
              v78 = *(v74 - 1);
              v155 = *(v74 - 3);
              v156 = v75;
              swift_bridgeObjectRetain_n();

              MEMORY[0x1E12A1580](60, 0xE100000000000000);
              MEMORY[0x1E12A1580](v78, v77);
              MEMORY[0x1E12A1580](62, 0xE100000000000000);

              v76 = v155;
              v75 = v156;
            }

            else
            {
              v79 = *(v74 - 2);
            }

            v153 = v73;
            v81 = *(v73 + 16);
            v80 = *(v73 + 24);
            if (v81 >= v80 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v80 > 1), v81 + 1, 1);
              v73 = v153;
            }

            v74 += 5;
            *(v73 + 16) = v81 + 1;
            v82 = v73 + 16 * v81;
            *(v82 + 32) = v76;
            *(v82 + 40) = v75;
            --v72;
          }

          while (v72);

          v39 = MEMORY[0x1E69E7CC0];
          v70 = v146;
        }

        else
        {
          v73 = v39;
        }

        v155 = v73;
        v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        v6 = lazy protocol witness table accessor for type [String] and conformance [A]();
        v83 = BidirectionalCollection<>.joined(separator:)();
        v85 = v84;

        v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v85, &v151);

        *(v70 + 14) = v86;
        *(v70 + 22) = 2080;
        swift_beginAccess();
        v87 = v154;
        v88 = *(v154 + 2);
        if (v88)
        {
          v139 = v6;
          v140 = v3;
          v153 = v39;

          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v88, 0);
          v89 = v153;
          v90 = (v87 + 56);
          do
          {
            v92 = *(v90 - 3);
            v91 = *(v90 - 2);
            v93 = *v90;
            if (*v90)
            {
              v94 = *(v90 - 1);
              v155 = *(v90 - 3);
              v156 = v91;
              swift_bridgeObjectRetain_n();

              MEMORY[0x1E12A1580](60, 0xE100000000000000);
              MEMORY[0x1E12A1580](v94, v93);
              MEMORY[0x1E12A1580](62, 0xE100000000000000);

              v92 = v155;
              v91 = v156;
            }

            else
            {
              v95 = *(v90 - 2);
            }

            v153 = v89;
            v97 = *(v89 + 16);
            v96 = *(v89 + 24);
            if (v97 >= v96 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v96 > 1), v97 + 1, 1);
              v89 = v153;
            }

            v90 += 5;
            *(v89 + 16) = v97 + 1;
            v98 = v89 + 16 * v97;
            *(v98 + 32) = v92;
            *(v98 + 40) = v91;
            --v88;
          }

          while (v88);

          v39 = MEMORY[0x1E69E7CC0];
          v70 = v146;
          v6 = v139;
          v3 = v140;
        }

        else
        {
          v89 = v39;
        }

        v155 = v89;
        v99 = BidirectionalCollection<>.joined(separator:)();
        v101 = v100;

        v102 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v101, &v151);

        *(v70 + 24) = v102;
        v68 = log;
        _os_log_impl(&dword_1DC659000, log, v143, "[LinkParseExpansion] %s Compatible actions: [%s] Incompatible actions: [%s]", v70, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v142, -1, -1);
        MEMORY[0x1E12A2F50](v70, -1, -1);
      }

      swift_beginAccess();
      v8 = v162;
      v103 = *(v162 + 2);
      if (v103)
      {
        v153 = v39;

        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v103, 0);
        a2 = 0;
        v104 = v153;
        v105 = v8 + 66;
        while (a2 < *(v8 + 2))
        {
          v106 = *(v105 - 26);
          v107 = *(v105 - 18);
          v108 = *(v105 - 10);
          v109 = *(v105 - 2);
          v110 = *(v105 - 1);
          v111 = *v105;
          v155 = *(v105 - 34);
          v156 = v106;
          v157 = v107;
          v158 = v108;
          v159 = v109;
          v160 = v110;
          v161 = v111;

          closure #2 in LinkActionFilter.compatibleLinkActions(parseMetadata:expansionContext:)(&v155, v149, v150, &v151);

          v6 = v151;
          v112 = v152;
          v153 = v104;
          v114 = *(v104 + 2);
          v113 = *(v104 + 3);
          v3 = v114 + 1;
          if (v114 >= v113 >> 1)
          {
            v147 = v152;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v113 > 1), v114 + 1, 1);
            v112 = v147;
            v104 = v153;
          }

          ++a2;
          *(v104 + 2) = v3;
          v115 = &v104[24 * v114];
          *(v115 + 4) = v6;
          *(v115 + 40) = v112;
          v105 += 40;
          if (v103 == a2)
          {

            v39 = MEMORY[0x1E69E7CC0];
            goto LABEL_74;
          }
        }

        __break(1u);
        goto LABEL_90;
      }

      v104 = v39;
LABEL_74:
      specialized Array.append<A>(contentsOf:)(v104);

      v54 = LinkExpansionContext.LinkActionMetadataView.next()();
      v51 = v116;
      v52 = v117;
      v6 = v145;
      if (!v116)
      {
        v53 = v138;
        goto LABEL_83;
      }
    }

LABEL_76:
    v118 = v54;

    v53 = v138;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v138 + 2) + 1, 1, v138);
    }

    v120 = *(v53 + 2);
    v119 = *(v53 + 3);
    if (v120 >= v119 >> 1)
    {
      v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v119 > 1), v120 + 1, 1, v53);
    }

    *(v53 + 2) = v120 + 1;
    v121 = &v53[16 * v120];
    *(v121 + 4) = v118;
    *(v121 + 5) = v51;
    v48 = LinkExpansionContext.LinkActionMetadataView.next()();
    v51 = v122;
    v52 = v123;
    if (v122)
    {
      continue;
    }

    break;
  }

LABEL_83:

  if (*(v53 + 2))
  {
    v124 = *(v6 + 16);
    v155 = *(v6 + 8);
    v151 = v124;
    v125 = *(v6 + 24);
    v126 = v141;
    outlined init with copy of ReferenceResolutionClientProtocol?(&v155, &v162, &_sSDySSShySSGGMd, &_sSDySSShySSGGMR);
    outlined init with copy of ReferenceResolutionClientProtocol?(&v151, &v162, &_sSDySSShySSGGMd, &_sSDySSShySSGGMR);

    v127 = Logger.logObject.getter();
    v128 = static os_log_type_t.debug.getter();

    outlined destroy of ReferenceResolutionClientProtocol?(&v155, &_sSDySSShySSGGMd, &_sSDySSShySSGGMR);
    outlined destroy of ReferenceResolutionClientProtocol?(&v151, &_sSDySSShySSGGMd, &_sSDySSShySSGGMR);

    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      v162 = v130;
      *v129 = 136315394;

      v131 = MEMORY[0x1E12A16D0](v53, MEMORY[0x1E69E6158]);
      v133 = v132;

      v134 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v131, v133, &v162);

      *(v129 + 4) = v134;
      *(v129 + 12) = 2080;
      v135 = Set.description.getter();
      v137 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v135, v136, &v162);

      *(v129 + 14) = v137;
      _os_log_impl(&dword_1DC659000, v127, v128, "[LinkParseExpansion] Skipped %s as the parse explicitly refers to %s", v129, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v130, -1, -1);
      MEMORY[0x1E12A2F50](v129, -1, -1);
    }
  }

  else
  {
  }

  return v168;
}

uint64_t outlined init with take of (topAction: RankedAction, alternativeParses: [CamParse])(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t specialized Set.union<A>(_:)(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    specialized Set._Variant.insert(_:)(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

double LinkUsoParser.extractParseInformation(usoParse:)@<D0>(uint64_t a1@<X8>)
{
  specialized LinkUsoParser.extractParseInformation(usoParse:)(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t one-time initialization function for kBundleAliasToFullyQualifiedBundleId()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DCA6B020;
  v1 = *MEMORY[0x1E69D23F0];
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v2;
  *(inited + 48) = 0xD000000000000013;
  *(inited + 56) = 0x80000001DCA84BC0;
  v3 = *MEMORY[0x1E69D23C8];
  *(inited + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = v4;
  *(inited + 80) = 0xD000000000000013;
  *(inited + 88) = 0x80000001DCA84BE0;
  v5 = *MEMORY[0x1E69D23D0];
  *(inited + 96) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 104) = v6;
  *(inited + 112) = 0xD000000000000019;
  *(inited + 120) = 0x80000001DCA84C00;
  v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
  result = swift_arrayDestroy();
  kBundleAliasToFullyQualifiedBundleId._rawValue = v7;
  return result;
}

id LinkParseMetadata.systemProtocol.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t LinkParseMetadata.debugDescription.getter()
{
  v1 = v0;
  v14 = 0;
  v15 = 0xE000000000000000;
  _StringGuts.grow(_:)(128);
  MEMORY[0x1E12A1580](0xD000000000000022, 0x80000001DCA84A90);
  v16 = *v0;
  v13 = v16;
  outlined init with copy of LNSystemProtocol?(&v16, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16LNSystemProtocolCSgMd, &_sSo16LNSystemProtocolCSgMR);
  v2 = String.init<A>(describing:)();
  MEMORY[0x1E12A1580](v2);

  MEMORY[0x1E12A1580](0x797469746E65202CLL, 0xEF203A7365707954);
  v3 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySSGMd, &_sShySSGMR);
  v4 = Dictionary.description.getter();
  MEMORY[0x1E12A1580](v4);

  MEMORY[0x1E12A1580](0xD000000000000018, 0x80000001DCA84AC0);
  v5 = v1[2];
  v6 = Dictionary.description.getter();
  MEMORY[0x1E12A1580](v6);

  MEMORY[0x1E12A1580](0xD000000000000019, 0x80000001DCA84AE0);
  v7 = v1[3];
  v8 = Set.description.getter();
  MEMORY[0x1E12A1580](v8);

  MEMORY[0x1E12A1580](0xD000000000000013, 0x80000001DCA84B00);
  if (v1[4])
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (v1[4])
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v9, v10);

  MEMORY[0x1E12A1580](41, 0xE100000000000000);
  return v14;
}

uint64_t LinkParseMetadata.init(systemProtocol:entityTypes:mentionedEntityTypes:mentionedAppBundleIds:noReferenceVerb:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t LinkUsoParser.isCancelTask(_:)()
{
  v0 = type metadata accessor for Siri_Nlu_External_UserParse();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = USOParse.userParse.getter();
  v11 = MEMORY[0x1E129C0F0](v10);
  (*(v1 + 8))(v4, v0);
  if (*(v11 + 16))
  {
    (*(v6 + 16))(v9, v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v5);

    v12 = Siri_Nlu_External_UserDialogAct.hasCancelled.getter();
    (*(v6 + 8))(v9, v5);
  }

  else
  {

    v12 = 0;
  }

  return v12 & 1;
}

uint64_t LinkUsoParser.extractParseInformation(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = specialized LinkUsoParser.getSystemProtocol(usoTask:)(a1);
  v5 = specialized LinkUsoParser.extractIdentifiers(task:)();
  v6 = specialized LinkUsoParser.getEntityTypes(usoTask:identifiers:)(a1, v5);

  v7 = specialized LinkUsoParser.extractMentionedEntityTypes(usoTask:)(a1);
  v8 = specialized LinkUsoParser.appBundleIdsFromMentionedApps(usoTask:)();
  result = specialized LinkUsoParser.extractNoReferenceVerb(task:)();
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  *(a2 + 32) = result & 1;
  return result;
}

uint64_t closure #1 in LinkUsoParser.appBundleIdsFromMentionedApps(usoTask:)()
{
  v0 = UsoIdentifier.appBundleId.getter();
  v2 = v1;
  v3 = *MEMORY[0x1E69D2368];
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v4)
  {
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = 0;
    if ((v6 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v8 = UsoIdentifier.namespace.getter();
  v10 = v9;
  v11 = *MEMORY[0x1E69D2488];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (v10)
  {
    if (v8 == v12 && v10 == v13)
    {
      v7 = 1;
    }

    else
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v7 = 0;
  }

LABEL_18:
  v15 = UsoIdentifier.appBundleId.getter();
  v17 = v16;
  v18 = *MEMORY[0x1E69D23F8];
  if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v19)
  {
  }

  else
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v22 = 0;
    if ((v21 & 1) == 0)
    {
      return (v7 | v22) & 1;
    }
  }

  v23 = UsoIdentifier.namespace.getter();
  v25 = v24;
  v26 = *MEMORY[0x1E69D2440];
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (v25)
  {
    if (v23 == v27 && v25 == v28)
    {
      v22 = 1;
    }

    else
    {
      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v22 = 0;
  }

  return (v7 | v22) & 1;
}

uint64_t UsoIdentifier.appBundleIdAsFullyQualifiedBundleId.getter(uint64_t (*a1)(void))
{
  if (one-time initialization token for kBundleAliasToFullyQualifiedBundleId != -1)
  {
    swift_once();
  }

  rawValue = kBundleAliasToFullyQualifiedBundleId._rawValue;
  v3 = a1();
  if (rawValue[2])
  {
    v5 = specialized __RawDictionaryStorage.find<A>(_:)(v3, v4);
    v7 = v6;

    if (v7)
    {
      v9 = (rawValue[7] + 16 * v5);
      v11 = *v9;
      v10 = v9[1];

      return v11;
    }
  }

  else
  {
  }

  return (a1)(v8);
}

uint64_t one-time initialization function for verbMap()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So16LNSystemProtocolCSg12SiriOntology7UsoTaskCctGMd, &_ss23_ContiguousArrayStorageCySS_So16LNSystemProtocolCSg12SiriOntology7UsoTaskCctGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DCA708D0;
  v1 = objc_opt_self();
  v2 = [v1 changeBinarySettingSystemProtocol];
  v3 = swift_allocObject();
  strcpy((v3 + 16), "common_Setting");
  *(v3 + 31) = -18;
  *(v3 + 32) = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = closure #1 in static LinkUsoParser.protocolExtractor(expectedEntity:systemProtocol:)partial apply;
  *(v4 + 24) = v3;
  *(inited + 32) = 0x656C6261736964;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed UsoTask) -> (@owned LNSystemProtocol?);
  *(inited + 56) = v4;
  v5 = [v1 changeBinarySettingSystemProtocol];
  v6 = swift_allocObject();
  strcpy((v6 + 16), "common_Setting");
  *(v6 + 31) = -18;
  *(v6 + 32) = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = closure #1 in static LinkUsoParser.protocolExtractor(expectedEntity:systemProtocol:)partial apply;
  *(v7 + 24) = v6;
  *(inited + 64) = 0x656C62616E65;
  *(inited + 72) = 0xE600000000000000;
  *(inited + 80) = thunk for @escaping @callee_guaranteed (@guaranteed UsoTask) -> (@owned LNSystemProtocol?)partial apply;
  *(inited + 88) = v7;
  v8 = [v1 changeBinarySettingSystemProtocol];
  v9 = swift_allocObject();
  strcpy((v9 + 16), "common_Setting");
  *(v9 + 31) = -18;
  *(v9 + 32) = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = closure #1 in static LinkUsoParser.protocolExtractor(expectedEntity:systemProtocol:)partial apply;
  *(v10 + 24) = v9;
  *(inited + 96) = 0x656C67676F74;
  *(inited + 104) = 0xE600000000000000;
  *(inited + 112) = thunk for @escaping @callee_guaranteed (@guaranteed UsoTask) -> (@owned LNSystemProtocol?)partial apply;
  *(inited + 120) = v10;
  *(inited + 128) = 0x7473756A6461;
  *(inited + 136) = 0xE600000000000000;
  *(inited + 144) = specialized thunk for @escaping @callee_guaranteed (@guaranteed UsoTask) -> (@owned LNSystemProtocol?);
  *(inited + 152) = 0;
  v11 = [v1 closeEntityProtocol];
  v12 = swift_allocObject();
  v12[2] = 0xD000000000000010;
  v12[3] = 0x80000001DCA847C0;
  v12[4] = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = closure #1 in static LinkUsoParser.protocolExtractor(expectedEntity:systemProtocol:)partial apply;
  *(v13 + 24) = v12;
  *(inited + 160) = 0x65736F6C63;
  *(inited + 168) = 0xE500000000000000;
  *(inited + 176) = thunk for @escaping @callee_guaranteed (@guaranteed UsoTask) -> (@owned LNSystemProtocol?)partial apply;
  *(inited + 184) = v13;
  v14 = [v1 copyEntityProtocol];
  v15 = swift_allocObject();
  v15[2] = 0xD000000000000010;
  v15[3] = 0x80000001DCA847C0;
  v15[4] = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = closure #1 in static LinkUsoParser.protocolExtractor(expectedEntity:systemProtocol:)partial apply;
  *(v16 + 24) = v15;
  *(inited + 192) = 2037411683;
  *(inited + 200) = 0xE400000000000000;
  *(inited + 208) = thunk for @escaping @callee_guaranteed (@guaranteed UsoTask) -> (@owned LNSystemProtocol?)partial apply;
  *(inited + 216) = v16;
  v17 = [v1 createEntitySystemProtocol];
  v18 = swift_allocObject();
  v18[2] = 0xD000000000000010;
  v18[3] = 0x80000001DCA847C0;
  v18[4] = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = closure #1 in static LinkUsoParser.protocolExtractor(expectedEntity:systemProtocol:)partial apply;
  *(v19 + 24) = v18;
  *(inited + 224) = 0x657461657263;
  *(inited + 232) = 0xE600000000000000;
  *(inited + 240) = thunk for @escaping @callee_guaranteed (@guaranteed UsoTask) -> (@owned LNSystemProtocol?)partial apply;
  *(inited + 248) = v19;
  v20 = [v1 cutSystemProtocol];
  v21 = swift_allocObject();
  v21[2] = 0xD000000000000010;
  v21[3] = 0x80000001DCA847C0;
  v21[4] = v20;
  v22 = swift_allocObject();
  *(v22 + 16) = closure #1 in static LinkUsoParser.protocolExtractor(expectedEntity:systemProtocol:)partial apply;
  *(v22 + 24) = v21;
  *(inited + 256) = 7632227;
  *(inited + 264) = 0xE300000000000000;
  *(inited + 272) = thunk for @escaping @callee_guaranteed (@guaranteed UsoTask) -> (@owned LNSystemProtocol?)partial apply;
  *(inited + 280) = v22;
  v23 = [v1 deleteEntitySystemProtocol];
  v24 = swift_allocObject();
  v24[2] = 0xD000000000000010;
  v24[3] = 0x80000001DCA847C0;
  v24[4] = v23;
  v25 = swift_allocObject();
  *(v25 + 16) = closure #1 in static LinkUsoParser.protocolExtractor(expectedEntity:systemProtocol:)partial apply;
  *(v25 + 24) = v24;
  *(inited + 288) = 0x6574656C6564;
  *(inited + 296) = 0xE600000000000000;
  *(inited + 304) = thunk for @escaping @callee_guaranteed (@guaranteed UsoTask) -> (@owned LNSystemProtocol?)partial apply;
  *(inited + 312) = v25;
  v26 = [v1 enterMarkupProtocol];
  v27 = swift_allocObject();
  v27[2] = 0xD000000000000010;
  v27[3] = 0x80000001DCA847C0;
  v27[4] = v26;
  v28 = swift_allocObject();
  *(v28 + 16) = closure #1 in static LinkUsoParser.protocolExtractor(expectedEntity:systemProtocol:)partial apply;
  *(v28 + 24) = v27;
  *(inited + 320) = 0x72614D7265746E65;
  *(inited + 328) = 0xEB0000000070756BLL;
  *(inited + 336) = thunk for @escaping @callee_guaranteed (@guaranteed UsoTask) -> (@owned LNSystemProtocol?)partial apply;
  *(inited + 344) = v28;
  v29 = [v1 exitMarkupProtocol];
  v30 = swift_allocObject();
  v30[2] = 0xD000000000000010;
  v30[3] = 0x80000001DCA847C0;
  v30[4] = v29;
  v31 = swift_allocObject();
  *(v31 + 16) = closure #1 in static LinkUsoParser.protocolExtractor(expectedEntity:systemProtocol:)partial apply;
  *(v31 + 24) = v30;
  *(inited + 352) = 0x6B72614D74697865;
  *(inited + 360) = 0xEA00000000007075;
  *(inited + 368) = thunk for @escaping @callee_guaranteed (@guaranteed UsoTask) -> (@owned LNSystemProtocol?)partial apply;
  *(inited + 376) = v31;
  v32 = [v1 favoriteEntityProtocol];
  v33 = swift_allocObject();
  v33[2] = 0xD000000000000010;
  v33[3] = 0x80000001DCA847C0;
  v33[4] = v32;
  v34 = swift_allocObject();
  *(v34 + 16) = closure #1 in static LinkUsoParser.protocolExtractor(expectedEntity:systemProtocol:)partial apply;
  *(v34 + 24) = v33;
  *(inited + 384) = 1701538156;
  *(inited + 392) = 0xE400000000000000;
  *(inited + 400) = thunk for @escaping @callee_guaranteed (@guaranteed UsoTask) -> (@owned LNSystemProtocol?)partial apply;
  *(inited + 408) = v34;
  v35 = [v1 openEntitySystemProtocol];
  v36 = swift_allocObject();
  v36[2] = 0xD000000000000010;
  v36[3] = 0x80000001DCA847C0;
  v36[4] = v35;
  v37 = swift_allocObject();
  *(v37 + 16) = closure #1 in static LinkUsoParser.protocolExtractor(expectedEntity:systemProtocol:)partial apply;
  *(v37 + 24) = v36;
  *(inited + 416) = 1852141679;
  *(inited + 424) = 0xE400000000000000;
  *(inited + 432) = thunk for @escaping @callee_guaranteed (@guaranteed UsoTask) -> (@owned LNSystemProtocol?)partial apply;
  *(inited + 440) = v37;
  v38 = [v1 pasteSystemProtocol];
  v39 = swift_allocObject();
  v39[2] = 0xD000000000000010;
  v39[3] = 0x80000001DCA847C0;
  v39[4] = v38;
  v40 = swift_allocObject();
  *(v40 + 16) = closure #1 in static LinkUsoParser.protocolExtractor(expectedEntity:systemProtocol:)partial apply;
  *(v40 + 24) = v39;
  *(inited + 448) = 0x6574736170;
  *(inited + 456) = 0xE500000000000000;
  *(inited + 464) = thunk for @escaping @callee_guaranteed (@guaranteed UsoTask) -> (@owned LNSystemProtocol?)partial apply;
  *(inited + 472) = v40;
  v41 = [v1 previewEntityProtocol];
  v42 = swift_allocObject();
  v42[2] = 0xD000000000000010;
  v42[3] = 0x80000001DCA847C0;
  v42[4] = v41;
  v43 = swift_allocObject();
  *(v43 + 16) = closure #1 in static LinkUsoParser.protocolExtractor(expectedEntity:systemProtocol:)partial apply;
  *(v43 + 24) = v42;
  *(inited + 480) = 0x77656976657270;
  *(inited + 488) = 0xE700000000000000;
  *(inited + 496) = thunk for @escaping @callee_guaranteed (@guaranteed UsoTask) -> (@owned LNSystemProtocol?)partial apply;
  *(inited + 504) = v43;
  v44 = [v1 navigateSequentiallyProtocol];
  v45 = swift_allocObject();
  v45[2] = 0xD000000000000010;
  v45[3] = 0x80000001DCA847C0;
  v45[4] = v44;
  v46 = swift_allocObject();
  *(v46 + 16) = closure #1 in static LinkUsoParser.protocolExtractor(expectedEntity:systemProtocol:)partial apply;
  *(v46 + 24) = v45;
  strcpy((inited + 512), "skipBackward");
  *(inited + 525) = 0;
  *(inited + 526) = -5120;
  *(inited + 528) = thunk for @escaping @callee_guaranteed (@guaranteed UsoTask) -> (@owned LNSystemProtocol?)partial apply;
  *(inited + 536) = v46;
  v47 = [v1 navigateSequentiallyProtocol];
  v48 = swift_allocObject();
  v48[2] = 0xD000000000000010;
  v48[3] = 0x80000001DCA847C0;
  v48[4] = v47;
  v49 = swift_allocObject();
  *(v49 + 16) = closure #1 in static LinkUsoParser.protocolExtractor(expectedEntity:systemProtocol:)partial apply;
  *(v49 + 24) = v48;
  *(inited + 544) = 0x77726F4670696B73;
  *(inited + 552) = 0xEB00000000647261;
  *(inited + 560) = thunk for @escaping @callee_guaranteed (@guaranteed UsoTask) -> (@owned LNSystemProtocol?)partial apply;
  *(inited + 568) = v49;
  v50 = [v1 searchSystemProtocol];
  v51 = swift_allocObject();
  v51[2] = 0xD000000000000010;
  v51[3] = 0x80000001DCA847C0;
  v51[4] = v50;
  v52 = swift_allocObject();
  *(v52 + 16) = closure #1 in static LinkUsoParser.protocolExtractor(expectedEntity:systemProtocol:)partial apply;
  *(v52 + 24) = v51;
  *(inited + 576) = 0x736972616D6D7573;
  *(inited + 584) = 0xE900000000000065;
  *(inited + 592) = thunk for @escaping @callee_guaranteed (@guaranteed UsoTask) -> (@owned LNSystemProtocol?)partial apply;
  *(inited + 600) = v52;
  v53 = [v1 favoriteEntityProtocol];
  v54 = swift_allocObject();
  v54[2] = 0xD000000000000010;
  v54[3] = 0x80000001DCA847C0;
  v54[4] = v53;
  v55 = swift_allocObject();
  *(v55 + 16) = closure #1 in static LinkUsoParser.protocolExtractor(expectedEntity:systemProtocol:)partial apply;
  *(v55 + 24) = v54;
  *(inited + 608) = 0x656B696C6E75;
  *(inited + 616) = 0xE600000000000000;
  *(inited + 624) = thunk for @escaping @callee_guaranteed (@guaranteed UsoTask) -> (@owned LNSystemProtocol?)partial apply;
  *(inited + 632) = v55;
  v56 = [v1 undoSystemProtocol];
  v57 = swift_allocObject();
  v57[2] = 0xD000000000000010;
  v57[3] = 0x80000001DCA84B20;
  v57[4] = v56;
  v58 = swift_allocObject();
  *(v58 + 16) = closure #1 in static LinkUsoParser.protocolExtractor(expectedEntity:systemProtocol:)partial apply;
  *(v58 + 24) = v57;
  *(inited + 640) = 1868852853;
  *(inited + 648) = 0xE400000000000000;
  *(inited + 656) = thunk for @escaping @callee_guaranteed (@guaranteed UsoTask) -> (@owned LNSystemProtocol?)partial apply;
  *(inited + 664) = v58;
  v59 = [v1 undoSystemProtocol];
  v60 = swift_allocObject();
  v60[2] = 0xD000000000000010;
  v60[3] = 0x80000001DCA84B20;
  v60[4] = v59;
  v61 = swift_allocObject();
  *(v61 + 16) = closure #1 in static LinkUsoParser.protocolExtractor(expectedEntity:systemProtocol:)partial apply;
  *(v61 + 24) = v60;
  *(inited + 672) = 1868850546;
  *(inited + 680) = 0xE400000000000000;
  *(inited + 688) = thunk for @escaping @callee_guaranteed (@guaranteed UsoTask) -> (@owned LNSystemProtocol?)partial apply;
  *(inited + 696) = v61;
  v62 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So16LNSystemProtocolCSg12SiriOntology7UsoTaskCcTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yyctMd, &_sSS_yyctMR);
  result = swift_arrayDestroy();
  static LinkUsoParser.verbMap = v62;
  return result;
}

void *(*static LinkUsoParser.protocolExtractor(expectedEntity:systemProtocol:)(uint64_t a1, uint64_t a2, void *a3))(uint64_t a1)
{
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;

  v7 = a3;
  return partial apply for closure #1 in static LinkUsoParser.protocolExtractor(expectedEntity:systemProtocol:);
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@guaranteed UsoTask) -> (@owned LNSystemProtocol?)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = specialized static LinkUsoParser.adjustmentTaskProtocolExtractor(usoTask:)();
  *a2 = result;
  return result;
}

uint64_t *LinkUsoParser.verbMap.unsafeMutableAddressor()
{
  if (one-time initialization token for verbMap != -1)
  {
    swift_once();
  }

  return &static LinkUsoParser.verbMap;
}

uint64_t static LinkUsoParser.verbMap.getter()
{
  if (one-time initialization token for verbMap != -1)
  {
    swift_once();
  }
}

void *closure #1 in static LinkUsoParser.protocolExtractor(expectedEntity:systemProtocol:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = UsoTask.baseEntityAsString.getter();
  v9 = v8;
  if (v7 == a2 && v8 == a3 || (v10 = v7, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) || v10 == 0x6E456F4E5F6F7375 && v9 == 0xEC00000079746974)
  {
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  v11 = a4;
  return a4;
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
}

{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;
}

uint64_t specialized Set.union<A>(_:)(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;

      specialized Set._Variant.insert(_:)(&v7, v5, v4);

      v3 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return a2;
}

uint64_t _sSD8grouping2bySDyxSay7ElementQyd__GGqd__n_xADKXEtKcAERs_STRd__lufCSS_Say12SiriOntology13UsoIdentifierVGTt1g504_s14d16KitRuntime13Linkf82ParserV14getEntityTypes7usoTask11identifiersSDySSShySSGG0A8Ontology0eK0C_SayAI0E10G59VGtFSSAMcfu_32d5beb8035f55a7a5a7ad951410eb9d87AMSSTf3nnpk_nTf1nc_nTf4g_nTm(uint64_t a1)
{
  v2 = type metadata accessor for UsoIdentifier();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v54 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = MEMORY[0x1E69E7CC8];
  v58 = MEMORY[0x1E69E7CC8];
  v9 = *(a1 + 16);
  if (!v9)
  {
    return v8;
  }

  v11 = *(v3 + 16);
  v10 = v3 + 16;
  v49 = *(v10 + 64);
  v12 = *(v10 + 56);
  v52 = (v49 + 32) & ~v49;
  v53 = v11;
  v13 = a1 + v52;
  v56 = (v10 + 16);
  v48 = xmmword_1DCA66060;
  v50 = v2;
  v51 = v10;
  v57 = &v47 - v7;
  v55 = v12;
  v11(&v47 - v7, a1 + v52, v2);
  while (1)
  {
    if (one-time initialization token for kBundleAliasToFullyQualifiedBundleId != -1)
    {
      swift_once();
    }

    rawValue = kBundleAliasToFullyQualifiedBundleId._rawValue;
    v17 = UsoIdentifier.appBundleId.getter();
    if (rawValue[2])
    {
      v19 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v18);
      v21 = v20;

      if (v21)
      {
        v22 = (rawValue[7] + 16 * v19);
        v24 = *v22;
        v23 = v22[1];

        goto LABEL_13;
      }
    }

    else
    {
    }

    v24 = UsoIdentifier.appBundleId.getter();
    v23 = v25;
LABEL_13:
    v27 = specialized __RawDictionaryStorage.find<A>(_:)(v24, v23);
    v28 = v8[2];
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      break;
    }

    v31 = v26;
    if (v8[3] < v30)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v30, 1);
      v8 = v58;
      v32 = specialized __RawDictionaryStorage.find<A>(_:)(v24, v23);
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_27;
      }

      v27 = v32;
    }

    if (v31)
    {

      v34 = v8[7];
      v35 = *v56;
      (*v56)(v54, v57, v2);
      v36 = *(v34 + 8 * v27);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v34 + 8 * v27) = v36;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v36[2] + 1, 1, v36);
        *(v34 + 8 * v27) = v36;
      }

      v39 = v36[2];
      v38 = v36[3];
      if (v39 >= v38 >> 1)
      {
        v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v38 > 1, v39 + 1, 1, v36);
        *(v34 + 8 * v27) = v36;
      }

      v36[2] = v39 + 1;
      v14 = v55;
      v15 = v36 + v52 + v39 * v55;
      v2 = v50;
      v35(v15, v54, v50);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriOntology13UsoIdentifierVGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology13UsoIdentifierVGMR);
      v40 = v52;
      v41 = swift_allocObject();
      *(v41 + 16) = v48;
      (*v56)((v41 + v40), v57, v2);
      v8[(v27 >> 6) + 8] |= 1 << v27;
      v42 = (v8[6] + 16 * v27);
      *v42 = v24;
      v42[1] = v23;
      *(v8[7] + 8 * v27) = v41;
      v43 = v8[2];
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        goto LABEL_26;
      }

      v8[2] = v45;
      v14 = v55;
    }

    v13 += v14;
    if (!--v9)
    {
      return v8;
    }

    v53(v57, v13, v2);
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t specialized LinkUsoParser.getTask(_:)()
{
  v0 = type metadata accessor for Siri_Nlu_External_UserParse();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v19[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19[-v11];
  v13 = USOParse.userParse.getter();
  v14 = MEMORY[0x1E129C0F0](v13);
  (*(v1 + 8))(v4, v0);
  if (!*(v14 + 16))
  {

    return 0;
  }

  (*(v6 + 16))(v9, v14 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v5);

  (*(v6 + 32))(v12, v9, v5);
  result = static ConversionUtils.convertUserDialogActToTasks(userDialogAct:)();
  if (result >> 62)
  {
    v17 = result;
    v18 = __CocoaSet.count.getter();
    result = v17;
    if (v18)
    {
      goto LABEL_6;
    }

LABEL_11:

    v16 = 0;
    goto LABEL_12;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_6:
  if ((result & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x1E12A1FE0](0);
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v16 = *(result + 32);
  }

LABEL_12:
  (*(v6 + 8))(v12, v5);
  return v16;
}

uint64_t specialized LinkUsoParser.getSystemProtocol(usoTask:)(uint64_t a1)
{
  v2 = UsoTask.verbString.getter();
  v4 = v3;
  if (one-time initialization token for verbMap != -1)
  {
    swift_once();
  }

  v5 = static LinkUsoParser.verbMap;
  if (!*(static LinkUsoParser.verbMap + 16))
  {
    goto LABEL_7;
  }

  v6 = specialized __RawDictionaryStorage.find<A>(_:)(v2, v4);
  if ((v7 & 1) == 0)
  {
    goto LABEL_7;
  }

  v8 = *(v5 + 56) + 16 * v6;
  v10 = *v8;
  v9 = *(v8 + 8);
  v20 = a1;

  v10(&v19, &v20);

  if (v19)
  {
    v11 = v19;

    return v11;
  }

  else
  {
LABEL_7:
    if (one-time initialization token for kLogger != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, kLogger);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v20 = v17;
      *v16 = 136315138;
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2, v4, &v20);

      *(v16 + 4) = v18;
      _os_log_impl(&dword_1DC659000, v14, v15, "[LinkParseExpansion] Could not find systemProtocol for verb %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x1E12A2F50](v17, -1, -1);
      MEMORY[0x1E12A2F50](v16, -1, -1);
    }

    else
    {
    }

    return 0;
  }
}

uint64_t specialized LinkUsoParser.extractIdentifiers(task:)()
{
  v0 = UsoTask.arguments.getter();
  if (*(v0 + 16))
  {
    v1 = specialized __RawDictionaryStorage.find<A>(_:)(0x636E657265666572, 0xE900000000000065);
    if (v2)
    {
      v3 = *(*(v0 + 56) + 8 * v1);

      if (v3 >> 62)
      {
        goto LABEL_147;
      }

      if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_5;
      }
    }
  }

  while (2)
  {

    v5 = 0;
LABEL_10:
    v77[5] = v5;
    v6 = UsoTask.arguments.getter();
    if (!*(v6 + 16))
    {
      goto LABEL_18;
    }

    v7 = specialized __RawDictionaryStorage.find<A>(_:)(0x746567726174, 0xE600000000000000);
    if ((v8 & 1) == 0)
    {
      goto LABEL_18;
    }

    v9 = *(*(v6 + 56) + 8 * v7);

    if (v9 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (result)
      {
        goto LABEL_14;
      }

LABEL_18:

      v3 = 0;
      goto LABEL_19;
    }

    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_18;
    }

LABEL_14:
    if ((v9 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x1E12A1FE0](0, v9);
    }

    else
    {
      if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_157;
      }

      v3 = *(v9 + 32);
    }

LABEL_19:
    v10 = 0;
    v77[6] = v3;
    v11 = MEMORY[0x1E69E7CC0];
    v77[0] = MEMORY[0x1E69E7CC0];
    v12 = MEMORY[0x1E69E7CC0];
    while (v10 != 2)
    {
      v13 = &v77[++v10];
      if (v13[4])
      {
        v14 = v13[4];

        MEMORY[0x1E12A1680](v15);
        if (*((v77[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v77[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v16 = *((v77[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        v3 = v77;
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v12 = v77[0];
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8UsoValueCSgMd, &_s12SiriOntology8UsoValueCSgMR);
    swift_arrayDestroy();
    v77[0] = v11;
    if (v12 >> 62)
    {
LABEL_144:
      v17 = __CocoaSet.count.getter();
      if (!v17)
      {
LABEL_145:

        return MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v17 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v17)
      {
        goto LABEL_145;
      }
    }

    if (v17 >= 1)
    {
      v18 = 0;
      while (1)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1E12A1FE0](v18, v12);
        }

        else
        {
          v19 = *(v12 + 8 * v18 + 32);
        }

        v20 = dispatch thunk of UsoValue.getUsoIdentifiers()();
        v21 = *(v20 + 16);
        v3 = v77[0];
        v22 = *(v77[0] + 16);
        v23 = v22 + v21;
        if (__OFADD__(v22, v21))
        {
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
          goto LABEL_144;
        }

        v24 = v20;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v23 <= *(v3 + 24) >> 1)
        {
          if (*(v24 + 16))
          {
            goto LABEL_36;
          }
        }

        else
        {
          if (v22 <= v23)
          {
            v33 = v22 + v21;
          }

          else
          {
            v33 = v22;
          }

          v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v33, 1, v3);
          if (*(v24 + 16))
          {
LABEL_36:
            v26 = (*(v3 + 24) >> 1) - *(v3 + 16);
            v27 = *(type metadata accessor for UsoIdentifier() - 8);
            if (v26 < v21)
            {
              goto LABEL_138;
            }

            v28 = (*(v27 + 80) + 32) & ~*(v27 + 80);
            v29 = *(v27 + 72);
            swift_arrayInitWithCopy();

            if (v21)
            {
              v30 = *(v3 + 16);
              v31 = __OFADD__(v30, v21);
              v32 = v30 + v21;
              if (v31)
              {
                goto LABEL_139;
              }

              *(v3 + 16) = v32;
            }

            goto LABEL_45;
          }
        }

        if (v21)
        {
          goto LABEL_137;
        }

LABEL_45:
        v77[0] = v3;
        if (!dispatch thunk of UsoValue.getAsEntity()())
        {
          goto LABEL_99;
        }

        v34 = UsoEntity.usoIdentifiers.getter();
        specialized Array.append<A>(contentsOf:)(v34);
        v35 = UsoEntity.attributes.getter();
        if (!*(v35 + 16) || (v36 = specialized __RawDictionaryStorage.find<A>(_:)(1701667182, 0xE400000000000000), (v37 & 1) == 0))
        {
LABEL_54:

          v40 = MEMORY[0x1E69E7CC0];
          goto LABEL_55;
        }

        v3 = *(*(v35 + 56) + 8 * v36);

        if (v3 >> 62)
        {
          if (!__CocoaSet.count.getter())
          {
            goto LABEL_54;
          }
        }

        else if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_54;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1E12A1FE0](0, v3);
        }

        else
        {
          if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_140;
          }

          v38 = *(v3 + 32);
        }

        v39 = dispatch thunk of UsoValue.getUsoIdentifiers()();

        v40 = v39;
LABEL_55:
        specialized Array.append<A>(contentsOf:)(v40);
        v41 = UsoEntity.attributes.getter();
        if (!*(v41 + 16) || (v42 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000010, 0x80000001DCA84C40), (v43 & 1) == 0))
        {
LABEL_63:

          v46 = MEMORY[0x1E69E7CC0];
          goto LABEL_64;
        }

        v3 = *(*(v41 + 56) + 8 * v42);

        if (v3 >> 62)
        {
          if (!__CocoaSet.count.getter())
          {
            goto LABEL_63;
          }
        }

        else if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_63;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1E12A1FE0](0, v3);
        }

        else
        {
          if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_141;
          }

          v44 = *(v3 + 32);
        }

        v45 = dispatch thunk of UsoValue.getUsoIdentifiers()();

        v46 = v45;
LABEL_64:
        specialized Array.append<A>(contentsOf:)(v46);
        v47 = UsoEntity.attributes.getter();
        if (!*(v47 + 16) || (v48 = specialized __RawDictionaryStorage.find<A>(_:)(1701869940, 0xE400000000000000), (v49 & 1) == 0))
        {
LABEL_80:

          goto LABEL_81;
        }

        v3 = *(*(v47 + 56) + 8 * v48);

        if (v3 >> 62)
        {
          if (!__CocoaSet.count.getter())
          {
            goto LABEL_80;
          }
        }

        else if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_80;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1E12A1FE0](0, v3);
        }

        else
        {
          if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_142;
          }

          v50 = *(v3 + 32);
        }

        v51 = dispatch thunk of UsoValue.getAsEntity()();

        if (!v51)
        {
          goto LABEL_81;
        }

        v52 = UsoEntity.usoIdentifiers.getter();
        specialized Array.append<A>(contentsOf:)(v52);
        v53 = UsoEntity.attributes.getter();
        if (!*(v53 + 16) || (v54 = specialized __RawDictionaryStorage.find<A>(_:)(1701667182, 0xE400000000000000), (v55 & 1) == 0))
        {
LABEL_102:

          v58 = MEMORY[0x1E69E7CC0];
          goto LABEL_103;
        }

        v3 = *(*(v53 + 56) + 8 * v54);

        if (v3 >> 62)
        {
          if (!__CocoaSet.count.getter())
          {
            goto LABEL_102;
          }
        }

        else if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_102;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1E12A1FE0](0, v3);
        }

        else
        {
          if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            v5 = MEMORY[0x1E12A1FE0](0, v3);
LABEL_8:

            goto LABEL_10;
          }

          v56 = *(v3 + 32);
        }

        v57 = dispatch thunk of UsoValue.getUsoIdentifiers()();

        v58 = v57;
LABEL_103:
        specialized Array.append<A>(contentsOf:)(v58);
        v71 = UsoEntity.attributes.getter();
        if (*(v71 + 16))
        {
          v72 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000010, 0x80000001DCA84C40);
          if (v73)
          {
            v3 = *(*(v71 + 56) + 8 * v72);

            if (v3 >> 62)
            {
              if (__CocoaSet.count.getter())
              {
LABEL_107:
                if ((v3 & 0xC000000000000001) != 0)
                {
                  MEMORY[0x1E12A1FE0](0, v3);
                }

                else
                {
                  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_152;
                  }

                  v74 = *(v3 + 32);
                }

                v75 = dispatch thunk of UsoValue.getUsoIdentifiers()();

                v76 = v75;
                goto LABEL_112;
              }
            }

            else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_107;
            }
          }
        }

        v76 = MEMORY[0x1E69E7CC0];
LABEL_112:
        specialized Array.append<A>(contentsOf:)(v76);

LABEL_81:
        v59 = UsoEntity.attributes.getter();
        if (*(v59 + 16) && (v60 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000010, 0x80000001DCA84C20), (v61 & 1) != 0))
        {
          v3 = *(*(v59 + 56) + 8 * v60);

          if (v3 >> 62)
          {
            if (!__CocoaSet.count.getter())
            {
LABEL_122:

              goto LABEL_100;
            }
          }

          else if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_122;
          }

          if ((v3 & 0xC000000000000001) != 0)
          {
            MEMORY[0x1E12A1FE0](0, v3);
          }

          else
          {
            if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_143;
            }

            v62 = *(v3 + 32);
          }

          v63 = dispatch thunk of UsoValue.getAsEntity()();

          if (v63)
          {
            v64 = UsoEntity.usoIdentifiers.getter();
            specialized Array.append<A>(contentsOf:)(v64);
            v65 = UsoEntity.attributes.getter();
            if (!*(v65 + 16))
            {
              goto LABEL_113;
            }

            v66 = specialized __RawDictionaryStorage.find<A>(_:)(1701667182, 0xE400000000000000);
            if ((v67 & 1) == 0)
            {
              goto LABEL_113;
            }

            v3 = *(*(v65 + 56) + 8 * v66);

            if (v3 >> 62)
            {
              if (!__CocoaSet.count.getter())
              {
                goto LABEL_113;
              }

LABEL_93:
              if ((v3 & 0xC000000000000001) != 0)
              {
                MEMORY[0x1E12A1FE0](0, v3);
              }

              else
              {
                if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_153;
                }

                v68 = *(v3 + 32);
              }

              v69 = dispatch thunk of UsoValue.getUsoIdentifiers()();

              v70 = v69;
            }

            else
            {
              if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_93;
              }

LABEL_113:

              v70 = MEMORY[0x1E69E7CC0];
            }

            specialized Array.append<A>(contentsOf:)(v70);

            goto LABEL_99;
          }
        }

        else
        {
        }

LABEL_99:

LABEL_100:
        if (v17 == ++v18)
        {

          return v77[0];
        }
      }
    }

    __break(1u);
LABEL_147:
    result = __CocoaSet.count.getter();
    if (!result)
    {
      continue;
    }

    break;
  }

LABEL_5:
  if ((v3 & 0xC000000000000001) != 0)
  {
    goto LABEL_154;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v3 + 32);

    goto LABEL_8;
  }

  __break(1u);
LABEL_157:
  __break(1u);
  return result;
}

uint64_t specialized LinkUsoParser.getEntityTypes(usoTask:identifiers:)(uint64_t a1, uint64_t a2)
{
  v85 = type metadata accessor for UsoIdentifier();
  v75 = *(v85 - 8);
  v3 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v85);
  v5 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v84 = &v70 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v70 - v9;
  if (UsoTask.baseEntityAsString.getter() == 0x535F6E6F6D6D6F63 && v11 == 0xEE00676E69747465)
  {

    v12 = MEMORY[0x1E69D2448];
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v12 = MEMORY[0x1E69D2438];
    if (v13)
    {
      v12 = MEMORY[0x1E69D2448];
    }
  }

  v14 = *v12;
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  v18 = *(a2 + 16);
  v19 = MEMORY[0x1E69E7CC0];
  if (v18)
  {
    v20 = v15;
    v21 = *(v75 + 16);
    v77 = (*(v75 + 80) + 32) & ~*(v75 + 80);
    v78 = v75 + 16;
    v22 = a2 + v77;
    v82 = *(v75 + 72);
    v83 = v21;
    v80 = (v75 + 8);
    v81 = (v75 + 32);
    v79 = v5;
    v21(v10, v22, v85);
    while (1)
    {

      v24 = UsoIdentifier.namespace.getter();
      if (!v25)
      {
        break;
      }

      if (v24 == v20 && v25 == v17)
      {
      }

      else
      {
        v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v26 & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      v27 = v20;
      v28 = *v81;
      (*v81)(v5, v10, v85);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v86 = v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 16) + 1, 1);
        v19 = v86;
      }

      v31 = *(v19 + 16);
      v30 = *(v19 + 24);
      if (v31 >= v30 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v30 > 1, v31 + 1, 1);
        v19 = v86;
      }

      *(v19 + 16) = v31 + 1;
      v23 = v82;
      v32 = v19 + v77 + v31 * v82;
      v5 = v79;
      v28(v32, v79, v85);
      v20 = v27;
LABEL_10:
      v22 += v23;
      if (!--v18)
      {
        goto LABEL_22;
      }

      v83(v10, v22, v85);
    }

LABEL_9:
    (*v80)(v10, v85);
    v23 = v82;
    goto LABEL_10;
  }

LABEL_22:

  v33 = _sSD8grouping2bySDyxSay7ElementQyd__GGqd__n_xADKXEtKcAERs_STRd__lufCSS_Say12SiriOntology13UsoIdentifierVGTt1g504_s14d16KitRuntime13Linkf82ParserV14getEntityTypes7usoTask11identifiersSDySSShySSGG0A8Ontology0eK0C_SayAI0E10G59VGtFSSAMcfu_32d5beb8035f55a7a5a7ad951410eb9d87AMSSTf3nnpk_nTf1nc_nTf4g_nTm(v19);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSShySSGGMd, &_ss18_DictionaryStorageCySSShySSGGMR);
  result = static _DictionaryStorage.copy(original:)();
  v35 = result;
  v36 = 0;
  v37 = *(v33 + 64);
  v70 = v33 + 64;
  v38 = 1 << *(v33 + 32);
  v39 = -1;
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  v40 = v39 & v37;
  v41 = (v38 + 63) >> 6;
  v82 = (v75 + 8);
  v83 = (v75 + 16);
  v73 = v33;
  v74 = result + 64;
  v71 = v41;
  v72 = result;
  if ((v39 & v37) != 0)
  {
    while (1)
    {
      v42 = __clz(__rbit64(v40));
      v40 &= v40 - 1;
LABEL_31:
      v45 = v42 | (v36 << 6);
      v46 = *(v33 + 56);
      v47 = (*(v33 + 48) + 16 * v45);
      v48 = v47[1];
      v81 = *v47;
      v49 = *(v46 + 8 * v45);
      v50 = *(v49 + 16);
      if (v50)
      {
        v78 = v45;
        v79 = v40;
        v80 = v36;
        v86 = MEMORY[0x1E69E7CC0];
        v77 = v48;

        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v50, 0);
        v51 = v86;
        v52 = *(v75 + 80);
        v76 = v49;
        v53 = v49 + ((v52 + 32) & ~v52);
        v54 = *(v75 + 72);
        v55 = *(v75 + 16);
        do
        {
          v57 = v84;
          v56 = v85;
          v55(v84, v53, v85);
          v58 = UsoIdentifier.value.getter();
          v60 = v59;
          (*v82)(v57, v56);
          v86 = v51;
          v62 = *(v51 + 16);
          v61 = *(v51 + 24);
          if (v62 >= v61 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v61 > 1), v62 + 1, 1);
            v51 = v86;
          }

          *(v51 + 16) = v62 + 1;
          v63 = v51 + 16 * v62;
          *(v63 + 32) = v58;
          *(v63 + 40) = v60;
          v53 += v54;
          --v50;
        }

        while (v50);
        v35 = v72;
        v33 = v73;
        v40 = v79;
        v36 = v80;
        v41 = v71;
        v64 = v77;
        v45 = v78;
      }

      else
      {
        v64 = v48;

        v51 = MEMORY[0x1E69E7CC0];
      }

      v65 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v51);

      *(v74 + ((v45 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v45;
      v66 = (v35[6] + 16 * v45);
      *v66 = v81;
      v66[1] = v64;
      *(v35[7] + 8 * v45) = v65;
      v67 = v35[2];
      v68 = __OFADD__(v67, 1);
      v69 = v67 + 1;
      if (v68)
      {
        break;
      }

      v35[2] = v69;
      if (!v40)
      {
        goto LABEL_26;
      }
    }
  }

  else
  {
LABEL_26:
    v43 = v36;
    while (1)
    {
      v36 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      if (v36 >= v41)
      {

        return v35;
      }

      v44 = *(v70 + 8 * v36);
      ++v43;
      if (v44)
      {
        v42 = __clz(__rbit64(v44));
        v40 = (v44 - 1) & v44;
        goto LABEL_31;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t specialized LinkUsoParser.extractMentionedEntityTypes(usoTask:)(uint64_t a1)
{
  v200 = type metadata accessor for UsoIdentifier();
  v3 = *(v200 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v200);
  v6 = &v173 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v173 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v196 = &v173 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v173 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v199 = &v173 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v173 - v18;
  if (UsoTask.baseEntityAsString.getter() != 0x535F6E6F6D6D6F63 || v20 != 0xEE00676E69747465)
  {
    v1 = v20;
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v21)
    {
      goto LABEL_5;
    }

    v190 = v9;
    v192 = v6;
    v19 = MEMORY[0x1E69E7CC0];
    v34 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ShySSGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v35 = 0;
    v36 = 0;
    v182 = 0;
    v191 = *MEMORY[0x1E69D2438];
    v195 = (v3 + 32);
    v197 = (v3 + 8);
    v198 = v3 + 16;
    v187 = xmmword_1DCA66060;
    v183 = a1;
    while (1)
    {
      LODWORD(v37) = v35;
      v38 = &outlined read-only object #0 of LinkUsoParser.extractMentionedEntityTypes(usoTask:) + 16 * v36;
      v39 = *(v38 + 4);
      v40 = *(v38 + 5);

      v14 = UsoTask.arguments.getter();
      if (!*(v14 + 16))
      {
        break;
      }

      v1 = specialized __RawDictionaryStorage.find<A>(_:)(v39, v40);
      v42 = v41;

      if ((v42 & 1) == 0)
      {
        goto LABEL_28;
      }

      v25 = *(*(v14 + 56) + 8 * v1);

      if (v25 >> 62)
      {
        if (!__CocoaSet.count.getter())
        {
          goto LABEL_28;
        }
      }

      else if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      if ((v25 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E12A1FE0](0, v25);
      }

      else
      {
        if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_168:
          __break(1u);
          goto LABEL_169;
        }

        v43 = *(v25 + 32);
      }

      v44 = dispatch thunk of UsoValue.getAsEntity()();

      if (!v44)
      {
        goto LABEL_29;
      }

      v14 = UsoEntity.attributes.getter();
      if (!*(v14 + 16) || (v45 = specialized __RawDictionaryStorage.find<A>(_:)(1701869940, 0xE400000000000000), (v46 & 1) == 0))
      {

LABEL_56:

        goto LABEL_29;
      }

      v25 = *(*(v14 + 56) + 8 * v45);

      if (v25 >> 62)
      {
        if (!__CocoaSet.count.getter())
        {
          goto LABEL_127;
        }
      }

      else if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_127;
      }

      if ((v25 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E12A1FE0](0, v25);
      }

      else
      {
        if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_177:
          __break(1u);
          goto LABEL_178;
        }

        v47 = *(v25 + 32);
      }

      v48 = dispatch thunk of UsoValue.getAsEntity()();

      if (!v48)
      {
        goto LABEL_56;
      }

      v14 = UsoEntity.attributes.getter();
      if (!*(v14 + 16) || (v180 = v48, v49 = specialized __RawDictionaryStorage.find<A>(_:)(1701667182, 0xE400000000000000), (v50 & 1) == 0))
      {

        goto LABEL_56;
      }

      v25 = *(*(v14 + 56) + 8 * v49);

      if (v25 >> 62)
      {
        if (!__CocoaSet.count.getter())
        {
LABEL_126:

LABEL_127:

LABEL_28:

          goto LABEL_29;
        }
      }

      else if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_126;
      }

      if ((v25 & 0xC000000000000001) != 0)
      {
        v1 = MEMORY[0x1E12A1FE0](0, v25);
      }

      else
      {
        if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_185;
        }

        v1 = *(v25 + 32);
      }

      v179 = v34;

      v25 = v1;
      v14 = dispatch thunk of UsoValue.getUsoIdentifiers()();

      v51 = *(v14 + 16);
      LODWORD(v194) = v37;
      v193 = v44;
      v188 = v51;
      if (v51)
      {
        v52 = 0;
        v53 = v192;
        while (1)
        {
          if (v52 >= *(v14 + 16))
          {
            goto LABEL_170;
          }

          v54 = (*(v3 + 80) + 32) & ~*(v3 + 80);
          v55 = *(v3 + 72);
          (*(v3 + 16))(v196, v14 + v54 + v55 * v52, v200);
          v1 = UsoIdentifier.namespace.getter();
          v57 = v56;
          v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v25 = v59;
          if (v57)
          {
            if (v1 == v58 && v57 == v59)
            {

LABEL_66:
              v60 = *v195;
              (*v195)(v190, v196, v200);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v201[0] = v19;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v25 = v201;
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 16) + 1, 1);
                v19 = v201[0];
              }

              v63 = *(v19 + 16);
              v62 = *(v19 + 24);
              v1 = v63 + 1;
              if (v63 >= v62 >> 1)
              {
                v25 = v201;
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v62 > 1, v63 + 1, 1);
                v19 = v201[0];
              }

              *(v19 + 16) = v1;
              v60((v19 + v54 + v63 * v55), v190, v200);
              v53 = v192;
              goto LABEL_59;
            }

            v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v1)
            {
              goto LABEL_66;
            }
          }

          else
          {
          }

          (*v197)(v196, v200);
LABEL_59:
          ++v52;
          LOBYTE(v37) = v194;
          if (v188 == v52)
          {
            goto LABEL_74;
          }
        }
      }

      v53 = v192;
LABEL_74:

      v201[0] = MEMORY[0x1E69E7CC8];
      v188 = *(v19 + 16);
      if (v188)
      {
        v64 = 0;
        v181 = *(v3 + 80);
        v184 = v19;
        v185 = (v181 + 32) & ~v181;
        v186 = v19 + v185;
        v1 = MEMORY[0x1E69E7CC8];
        while (1)
        {
          if (v64 >= *(v19 + 16))
          {
            goto LABEL_171;
          }

          v14 = *(v3 + 72);
          (*(v3 + 16))(v53, v186 + v14 * v64, v200);
          if (one-time initialization token for kBundleAliasToFullyQualifiedBundleId != -1)
          {
            swift_once();
          }

          v66 = v1;
          rawValue = kBundleAliasToFullyQualifiedBundleId._rawValue;
          v68 = UsoIdentifier.appBundleId.getter();
          if (rawValue[2])
          {
            v1 = specialized __RawDictionaryStorage.find<A>(_:)(v68, v69);
            v71 = v70;

            if (v71)
            {
              v72 = (rawValue[7] + 16 * v1);
              v73 = *v72;
              v74 = v72[1];

              goto LABEL_86;
            }
          }

          else
          {
          }

          v73 = UsoIdentifier.appBundleId.getter();
          v74 = v75;
LABEL_86:
          v25 = v66;
          v19 = specialized __RawDictionaryStorage.find<A>(_:)(v73, v74);
          v77 = *(v25 + 16);
          v78 = (v76 & 1) == 0;
          v79 = v77 + v78;
          if (__OFADD__(v77, v78))
          {
            goto LABEL_172;
          }

          v80 = v76;
          if (*(v25 + 24) < v79)
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v79, 1);
            v25 = v201[0];
            v81 = specialized __RawDictionaryStorage.find<A>(_:)(v73, v74);
            if ((v80 & 1) != (v82 & 1))
            {
              goto LABEL_187;
            }

            v19 = v81;
          }

          if (v80)
          {

            v83 = *(v25 + 56);
            v84 = *(v83 + 8 * v19);
            v85 = swift_isUniquelyReferenced_nonNull_native();
            *(v83 + 8 * v19) = v84;
            v37 = v3;
            if ((v85 & 1) == 0)
            {
              v84 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v84 + 2) + 1, 1, v84);
              *(v83 + 8 * v19) = v84;
            }

            v87 = *(v84 + 2);
            v86 = *(v84 + 3);
            if (v87 >= v86 >> 1)
            {
              v84 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v86 > 1, v87 + 1, 1, v84);
              *(v83 + 8 * v19) = v84;
            }

            v19 = v184;
            v65 = v185;
            *(v84 + 2) = v87 + 1;
            v53 = v192;
            (*v195)(&v84[v65 + v87 * v14], v192, v200);
            v3 = v37;
            LOBYTE(v37) = v194;
            v1 = v25;
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriOntology13UsoIdentifierVGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology13UsoIdentifierVGMR);
            v88 = v185;
            v89 = swift_allocObject();
            *(v89 + 16) = v187;
            (*v195)((v89 + v88), v53, v200);
            *(v25 + 8 * (v19 >> 6) + 64) |= 1 << v19;
            v90 = (*(v25 + 48) + 16 * v19);
            *v90 = v73;
            v90[1] = v74;
            *(*(v25 + 56) + 8 * v19) = v89;
            v91 = *(v25 + 16);
            v92 = __OFADD__(v91, 1);
            v93 = v91 + 1;
            if (v92)
            {
              __break(1u);
              goto LABEL_177;
            }

            v1 = v25;
            *(v25 + 16) = v93;
            LOBYTE(v37) = v194;
            v19 = v184;
          }

          if (v188 == ++v64)
          {
            goto LABEL_98;
          }
        }
      }

      v1 = MEMORY[0x1E69E7CC8];
LABEL_98:

      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSShySSGGMd, &_ss18_DictionaryStorageCySSShySSGGMR);
      v94 = static _DictionaryStorage.copy(original:)();
      v95 = v94;
      v14 = 0;
      v96 = *(v1 + 64);
      v173 = v1 + 64;
      v97 = 1 << *(v1 + 32);
      if (v97 < 64)
      {
        v98 = ~(-1 << v97);
      }

      else
      {
        v98 = -1;
      }

      v99 = v98 & v96;
      v100 = (v97 + 63) >> 6;
      v177 = v94 + 64;
      v19 = MEMORY[0x1E69E7CC0];
      v189 = v3;
      v176 = v1;
      v174 = v94;
      v175 = v100;
      if (v99)
      {
        do
        {
          v101 = __clz(__rbit64(v99));
          v102 = (v99 - 1) & v99;
LABEL_108:
          v105 = v101 | (v14 << 6);
          v185 = v102;
          v106 = *(v1 + 56);
          v107 = (*(v1 + 48) + 16 * v105);
          v108 = v107[1];
          v186 = *v107;
          v188 = v105;
          v1 = *(v106 + 8 * v105);
          v109 = *(v1 + 16);
          if (v109)
          {
            v184 = v14;
            v201[0] = v19;
            v181 = v108;

            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v109, 0);
            v110 = v201[0];
            v111 = (*(v3 + 80) + 32) & ~*(v3 + 80);
            v178 = v1;
            v112 = v1 + v111;
            v113 = v3;
            v114 = *(v3 + 72);
            v115 = *(v113 + 16);
            do
            {
              v117 = v199;
              v116 = v200;
              v115(v199, v112, v200);
              v118 = UsoIdentifier.value.getter();
              v120 = v119;
              (*v197)(v117, v116);
              v201[0] = v110;
              v122 = *(v110 + 16);
              v121 = *(v110 + 24);
              if (v122 >= v121 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v121 > 1), v122 + 1, 1);
                v110 = v201[0];
              }

              *(v110 + 16) = v122 + 1;
              v123 = v110 + 16 * v122;
              *(v123 + 32) = v118;
              *(v123 + 40) = v120;
              v112 += v114;
              --v109;
            }

            while (v109);
            v3 = v189;
            v14 = v184;
            v19 = MEMORY[0x1E69E7CC0];
            v95 = v174;
            v37 = v181;
            v1 = v178;
          }

          else
          {
            v37 = v108;

            v110 = v19;
          }

          v25 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v110);

          v124 = v188;
          *(v177 + ((v188 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v188;
          v125 = (v95[6] + 16 * v124);
          *v125 = v186;
          v125[1] = v37;
          *(v95[7] + 8 * v124) = v25;
          v126 = v95[2];
          v92 = __OFADD__(v126, 1);
          v127 = v126 + 1;
          LOBYTE(v37) = v194;
          if (v92)
          {
            goto LABEL_180;
          }

          v95[2] = v127;
          v1 = v176;
          v100 = v175;
          v99 = v185;
        }

        while (v185);
      }

      v103 = v14;
      while (1)
      {
        v14 = v103 + 1;
        if (__OFADD__(v103, 1))
        {
          goto LABEL_168;
        }

        if (v14 >= v100)
        {
          break;
        }

        v104 = *(v173 + 8 * v14);
        ++v103;
        if (v104)
        {
          v101 = __clz(__rbit64(v104));
          v102 = (v104 - 1) & v104;
          goto LABEL_108;
        }
      }

      v128 = v179;
      v129 = swift_isUniquelyReferenced_nonNull_native();
      v201[0] = v128;
      v130 = v182;
      specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v95, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v129, v201);
      v182 = v130;

      v34 = v201[0];
LABEL_29:
      v35 = 1;
      v36 = 1;
      if (v37)
      {
        swift_arrayDestroy();
        return v34;
      }
    }

    goto LABEL_28;
  }

LABEL_5:
  v22 = UsoTask.arguments.getter();
  if (!*(v22 + 16))
  {
    goto LABEL_22;
  }

  v23 = specialized __RawDictionaryStorage.find<A>(_:)(0x636E657265666572, 0xE900000000000065);
  if ((v24 & 1) == 0)
  {
    goto LABEL_22;
  }

  v25 = *(*(v22 + 56) + 8 * v23);

  if (v25 >> 62)
  {
    goto LABEL_174;
  }

  if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_22;
  }

LABEL_9:
  if ((v25 & 0xC000000000000001) != 0)
  {
LABEL_178:
    MEMORY[0x1E12A1FE0](0, v25);
    goto LABEL_12;
  }

  if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v26 = *(v25 + 32);

LABEL_12:

    v1 = dispatch thunk of UsoValue.getAsEntity()();

    if (!v1)
    {
LABEL_23:
      v32 = MEMORY[0x1E69E7CC0];

      return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ShySSGTt0g5Tf4g_n(v32);
    }

    v27 = UsoEntity.attributes.getter();
    if (!*(v27 + 16) || (v28 = specialized __RawDictionaryStorage.find<A>(_:)(1701667182, 0xE400000000000000), (v29 & 1) == 0))
    {

      goto LABEL_23;
    }

    v25 = *(*(v27 + 56) + 8 * v28);

    if (v25 >> 62)
    {
      goto LABEL_182;
    }

    if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_17;
    }

LABEL_183:

LABEL_22:

    goto LABEL_23;
  }

  __break(1u);
LABEL_180:
  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_182:
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_183;
    }

LABEL_17:
    v185 = v1;
    if ((v25 & 0xC000000000000001) == 0)
    {
      break;
    }

LABEL_185:
    v1 = MEMORY[0x1E12A1FE0](0, v25);
LABEL_20:
    v189 = v3;

    v25 = v1;
    v30 = dispatch thunk of UsoValue.getUsoIdentifiers()();

    v31 = MEMORY[0x1E69E7CC0];
    v198 = *(v30 + 16);
    if (v198)
    {
      v3 = 0;
      v196 = *MEMORY[0x1E69D2448];
      v197 = (v189 + 16);
      v194 = (v189 + 8);
      v195 = (v189 + 32);
      v193 = v30;
      do
      {
        if (v3 >= *(v30 + 16))
        {
          goto LABEL_173;
        }

        v131 = (*(v189 + 80) + 32) & ~*(v189 + 80);
        v132 = *(v189 + 72);
        (*(v189 + 16))(v19, v30 + v131 + v132 * v3, v200);
        v1 = UsoIdentifier.namespace.getter();
        v134 = v133;
        v135 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = v136;
        if (v134)
        {
          if (v1 == v135 && v134 == v136)
          {

LABEL_141:
            v137 = *v195;
            (*v195)(v14, v19, v200);
            v138 = swift_isUniquelyReferenced_nonNull_native();
            v201[0] = v31;
            if ((v138 & 1) == 0)
            {
              v25 = v201;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v31 + 16) + 1, 1);
              v31 = v201[0];
            }

            v140 = *(v31 + 16);
            v139 = *(v31 + 24);
            v1 = v140 + 1;
            if (v140 >= v139 >> 1)
            {
              v25 = v201;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v139 > 1, v140 + 1, 1);
              v31 = v201[0];
            }

            *(v31 + 16) = v1;
            v137((v31 + v131 + v140 * v132), v14, v200);
            v30 = v193;
            goto LABEL_134;
          }

          v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v1)
          {
            goto LABEL_141;
          }
        }

        else
        {
        }

        (*v194)(v19, v200);
LABEL_134:
        ++v3;
      }

      while (v198 != v3);
    }

    v141 = _sSD8grouping2bySDyxSay7ElementQyd__GGqd__n_xADKXEtKcAERs_STRd__lufCSS_Say12SiriOntology13UsoIdentifierVGTt1g504_s14d16KitRuntime13Linkf82ParserV14getEntityTypes7usoTask11identifiersSDySSShySSGG0A8Ontology0eK0C_SayAI0E10G59VGtFSSAMcfu_32d5beb8035f55a7a5a7ad951410eb9d87AMSSTf3nnpk_nTf1nc_nTf4g_nTm(v31);

    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSShySSGGMd, &_ss18_DictionaryStorageCySSShySSGGMR);
    v142 = static _DictionaryStorage.copy(original:)();
    v34 = v142;
    v3 = 0;
    v143 = *(v141 + 64);
    v186 = v141 + 64;
    v144 = 1 << *(v141 + 32);
    v145 = -1;
    if (v144 < 64)
    {
      v145 = ~(-1 << v144);
    }

    v19 = v145 & v143;
    v146 = (v144 + 63) >> 6;
    v1 = v189;
    v197 = (v189 + 8);
    v198 = v189 + 16;
    v190 = (v142 + 64);
    v14 = MEMORY[0x1E69E7CC0];
    v179 = v142;
    v188 = v141;
    *&v187 = v146;
    if ((v145 & v143) == 0)
    {
LABEL_151:
      v148 = v3;
      while (1)
      {
        v3 = v148 + 1;
        if (__OFADD__(v148, 1))
        {
          break;
        }

        if (v3 >= v146)
        {

          return v34;
        }

        v149 = *(v186 + 8 * v3);
        ++v148;
        if (v149)
        {
          v147 = __clz(__rbit64(v149));
          v19 = (v149 - 1) & v149;
          goto LABEL_156;
        }
      }

LABEL_169:
      __break(1u);
LABEL_170:
      __break(1u);
LABEL_171:
      __break(1u);
LABEL_172:
      __break(1u);
LABEL_173:
      __break(1u);
LABEL_174:
      if (!__CocoaSet.count.getter())
      {
        goto LABEL_22;
      }

      goto LABEL_9;
    }

    while (1)
    {
      v147 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_156:
      v150 = v147 | (v3 << 6);
      v151 = *(v141 + 56);
      v152 = (*(v141 + 48) + 16 * v150);
      v153 = v152[1];
      v195 = *v152;
      v196 = v150;
      v154 = *(v151 + 8 * v150);
      v155 = *(v154 + 16);
      if (v155)
      {
        v193 = v19;
        v194 = v3;
        v201[0] = v14;
        v192 = v153;

        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v155, 0);
        v156 = v201[0];
        v157 = *(v1 + 80);
        v191 = v154;
        v158 = v154 + ((v157 + 32) & ~v157);
        v159 = *(v1 + 72);
        v160 = *(v1 + 16);
        do
        {
          v162 = v199;
          v161 = v200;
          v160(v199, v158, v200);
          v163 = UsoIdentifier.value.getter();
          v165 = v164;
          (*v197)(v162, v161);
          v201[0] = v156;
          v167 = *(v156 + 16);
          v166 = *(v156 + 24);
          if (v167 >= v166 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v166 > 1), v167 + 1, 1);
            v156 = v201[0];
          }

          *(v156 + 16) = v167 + 1;
          v168 = v156 + 16 * v167;
          *(v168 + 32) = v163;
          *(v168 + 40) = v165;
          v158 += v159;
          --v155;
        }

        while (v155);
        v14 = MEMORY[0x1E69E7CC0];
        v141 = v188;
        v19 = v193;
        v3 = v194;
        v146 = v187;
        v1 = v192;
      }

      else
      {
        v1 = v153;

        v156 = v14;
      }

      v25 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v156);

      v169 = v196;
      *&v190[(v196 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v196;
      v34 = v179;
      v170 = (*(v179 + 48) + 16 * v169);
      *v170 = v195;
      v170[1] = v1;
      *(*(v34 + 56) + 8 * v169) = v25;
      v171 = *(v34 + 16);
      v92 = __OFADD__(v171, 1);
      v172 = v171 + 1;
      if (v92)
      {
        break;
      }

      *(v34 + 16) = v172;
      v1 = v189;
      if (!v19)
      {
        goto LABEL_151;
      }
    }
  }

  if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v1 = *(v25 + 32);

    goto LABEL_20;
  }

  __break(1u);
LABEL_187:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized LinkUsoParser.appBundleIdsFromMentionedApps(usoTask:)()
{
  v65 = type metadata accessor for UsoIdentifier();
  v68 = *(v65 - 8);
  v0 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v2 = &v60 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v64 = &v60 - v4;
  MEMORY[0x1EEE9AC00](v5);
  v67 = &v60 - v6;
  v7 = 0;
  v70 = MEMORY[0x1E69E7CC0];
  v8 = 0;
  do
  {
    v9 = v7;
    v10 = &outlined read-only object #0 of LinkUsoParser.appBundleIdsFromMentionedApps(usoTask:) + 16 * v8;
    v11 = *(v10 + 4);
    v12 = *(v10 + 5);

    v13 = UsoTask.arguments.getter();
    if (!*(v13 + 16))
    {

      goto LABEL_3;
    }

    v14 = specialized __RawDictionaryStorage.find<A>(_:)(v11, v12);
    v16 = v15;

    if ((v16 & 1) == 0)
    {
      goto LABEL_3;
    }

    v17 = *(*(v13 + 56) + 8 * v14);

    if (v17 >> 62)
    {
      if (!__CocoaSet.count.getter())
      {
        goto LABEL_3;
      }
    }

    else if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    if ((v17 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E12A1FE0](0, v17);
    }

    else
    {
      if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_70;
      }

      v18 = *(v17 + 32);
    }

    v19 = dispatch thunk of UsoValue.getAsEntity()();

    if (v19)
    {
      v20 = UsoEntity.attributes.getter();
      if (*(v20 + 16) && (v21 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000010, 0x80000001DCA84C20), (v22 & 1) != 0))
      {
        v17 = *(*(v20 + 56) + 8 * v21);

        if (v17 >> 62)
        {
          if (!__CocoaSet.count.getter())
          {
            goto LABEL_40;
          }
        }

        else if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_40;
        }

        if ((v17 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1E12A1FE0](0, v17);
        }

        else
        {
          if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_71;
          }

          v23 = *(v17 + 32);
        }

        v24 = dispatch thunk of UsoValue.getAsEntity()();

        if (v24)
        {
          v25 = UsoEntity.attributes.getter();
          if (*(v25 + 16) && (v26 = specialized __RawDictionaryStorage.find<A>(_:)(1701667182, 0xE400000000000000), (v27 & 1) != 0))
          {
            v17 = *(*(v25 + 56) + 8 * v26);

            if (v17 >> 62)
            {
              if (!__CocoaSet.count.getter())
              {
LABEL_39:

LABEL_40:

LABEL_3:

                goto LABEL_4;
              }
            }

            else if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_39;
            }

            if ((v17 & 0xC000000000000001) != 0)
            {
              MEMORY[0x1E12A1FE0](0, v17);
            }

            else
            {
              if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_72;
              }

              v28 = *(v17 + 32);
            }

            v66 = dispatch thunk of UsoValue.getUsoIdentifiers()();

            specialized Array.append<A>(contentsOf:)(v66);
          }

          else
          {
          }
        }
      }

      else
      {
      }
    }

LABEL_4:
    v7 = 1;
    v8 = 1;
  }

  while ((v9 & 1) == 0);
  swift_arrayDestroy();
  v29 = v70;
  v30 = *(v70 + 16);
  v31 = MEMORY[0x1E69E7CC0];
  v66 = v2;
  v61 = v70;
  v63 = v30;
  if (!v30)
  {
LABEL_54:
    v40 = *(v31 + 16);
    if (!v40)
    {

      v42 = MEMORY[0x1E69E7CC0];
LABEL_68:
      v58 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v42);

      return v58;
    }

    v69 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v40, 0);
    v41 = v65;
    v42 = v69;
    v67 = *(v68 + 16);
    v68 += 16;
    v43 = v31 + ((*(v68 + 64) + 32) & ~*(v68 + 64));
    v64 = *(v68 + 56);
    v44 = (v68 - 8);
    while (1)
    {
      (v67)(v2, v43, v41);
      if (one-time initialization token for kBundleAliasToFullyQualifiedBundleId != -1)
      {
        swift_once();
      }

      rawValue = kBundleAliasToFullyQualifiedBundleId._rawValue;
      v46 = UsoIdentifier.value.getter();
      if (!rawValue[2])
      {
        break;
      }

      v48 = specialized __RawDictionaryStorage.find<A>(_:)(v46, v47);
      v50 = v49;

      if ((v50 & 1) == 0)
      {
        goto LABEL_62;
      }

      v51 = (rawValue[7] + 16 * v48);
      v53 = *v51;
      v52 = v51[1];

LABEL_63:
      v41 = v65;
      (*v44)(v2, v65);
      v69 = v42;
      v56 = *(v42 + 16);
      v55 = *(v42 + 24);
      if (v56 >= v55 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v56 + 1, 1);
        v41 = v65;
        v42 = v69;
      }

      *(v42 + 16) = v56 + 1;
      v57 = v42 + 16 * v56;
      *(v57 + 32) = v53;
      *(v57 + 40) = v52;
      v43 += v64;
      --v40;
      v2 = v66;
      if (!v40)
      {

        goto LABEL_68;
      }
    }

LABEL_62:
    v53 = UsoIdentifier.value.getter();
    v52 = v54;
    goto LABEL_63;
  }

  v32 = 0;
  v62 = v68 + 16;
  v60 = (v68 + 8);
  v33 = (v68 + 32);
  v17 = v65;
  while (v32 < *(v29 + 16))
  {
    v34 = (*(v68 + 80) + 32) & ~*(v68 + 80);
    v35 = *(v68 + 72);
    (*(v68 + 16))(v67, v29 + v34 + v35 * v32, v17);
    if (closure #1 in LinkUsoParser.appBundleIdsFromMentionedApps(usoTask:)())
    {
      v36 = *v33;
      (*v33)(v64, v67, v17);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v69 = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v31 + 16) + 1, 1);
        v17 = v65;
        v31 = v69;
      }

      v39 = *(v31 + 16);
      v38 = *(v31 + 24);
      if (v39 >= v38 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v38 > 1, v39 + 1, 1);
        v17 = v65;
        v31 = v69;
      }

      *(v31 + 16) = v39 + 1;
      v36((v31 + v34 + v39 * v35), v64, v17);
      v2 = v66;
      v29 = v61;
    }

    else
    {
      (*v60)(v67, v17);
    }

    if (v63 == ++v32)
    {
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);

  (*v60)(v67, v17);

  __break(1u);
  return result;
}

uint64_t specialized LinkUsoParser.extractNoReferenceVerb(task:)()
{
  if (UsoTask.baseEntityAsString.getter() == 0x6E456F4E5F6F7375 && v0 == 0xEC00000079746974)
  {

    v1 = 1;
  }

  else
  {
    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  if (*(UsoTask.arguments.getter() + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(0x636E657265666572, 0xE900000000000065);
    v3 = v2;

    v1 &= v3 ^ 1;
  }

  else
  {
  }

  return v1 & 1;
}

unint64_t specialized LinkUsoParser.extractParseInformation(usoParse:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Siri_Nlu_External_UserParse();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = USOParse.userParse.getter();
  v13 = MEMORY[0x1E129C0F0](v12);
  (*(v3 + 8))(v6, v2);
  if (*(v13 + 16))
  {
    (*(v8 + 16))(v11, v13 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v7);

    v14 = Siri_Nlu_External_UserDialogAct.hasCancelled.getter();
    (*(v8 + 8))(v11, v7);
    if (v14)
    {
      v15 = [objc_opt_self() cancelProtocol];
      v16 = MEMORY[0x1E69E7CC0];
      v17 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ShySSGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ShySSGTt0g5Tf4g_n(v16);
      v19 = result;
LABEL_8:
      v24 = 0;
      v23 = MEMORY[0x1E69E7CD0];
      goto LABEL_9;
    }
  }

  else
  {
  }

  v20 = specialized LinkUsoParser.getTask(_:)();
  if (!v20)
  {
    v25 = MEMORY[0x1E69E7CC0];
    v17 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ShySSGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ShySSGTt0g5Tf4g_n(v25);
    v19 = result;
    v15 = 0;
    goto LABEL_8;
  }

  v21 = v20;
  v15 = specialized LinkUsoParser.getSystemProtocol(usoTask:)(v20);
  v22 = specialized LinkUsoParser.extractIdentifiers(task:)();
  v17 = specialized LinkUsoParser.getEntityTypes(usoTask:identifiers:)(v21, v22);

  v19 = specialized LinkUsoParser.extractMentionedEntityTypes(usoTask:)(v21);
  v23 = specialized LinkUsoParser.appBundleIdsFromMentionedApps(usoTask:)();
  v24 = specialized LinkUsoParser.extractNoReferenceVerb(task:)();

LABEL_9:
  *a1 = v15;
  *(a1 + 8) = v17;
  *(a1 + 16) = v19;
  *(a1 + 24) = v23;
  *(a1 + 32) = v24 & 1;
  return result;
}

uint64_t outlined init with copy of LNSystemProtocol?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16LNSystemProtocolCSgMd, &_sSo16LNSystemProtocolCSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t specialized static LinkUsoParser.adjustmentTaskProtocolExtractor(usoTask:)()
{
  v0 = UsoTask.arguments.getter();
  if (!*(v0 + 16))
  {
    goto LABEL_43;
  }

  v1 = specialized __RawDictionaryStorage.find<A>(_:)(0x656D7473756A6461, 0xEE0065707954746ELL);
  if ((v2 & 1) == 0)
  {
    goto LABEL_43;
  }

  v3 = *(*(v0 + 56) + 8 * v1);

  if (v3 >> 62)
  {
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_43;
    }
  }

  else if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_43;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1E12A1FE0](0, v3);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_41;
    }

    v4 = *(v3 + 32);
  }

  v5 = dispatch thunk of UsoValue.getAsEntity()();

  if (!v5)
  {
    return 0;
  }

  v6 = UsoEntity.attributes.getter();

  if (!*(v6 + 16))
  {
    goto LABEL_42;
  }

  v7 = specialized __RawDictionaryStorage.find<A>(_:)(0x5664656E69666564, 0xEC00000065756C61);
  if ((v8 & 1) == 0)
  {
    goto LABEL_42;
  }

  v0 = *(*(v6 + 56) + 8 * v7);

  if (!(v0 >> 62))
  {
    if (*((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_13;
    }

    goto LABEL_42;
  }

LABEL_41:
  result = __CocoaSet.count.getter();
  if (!result)
  {
LABEL_42:

LABEL_43:

    return 0;
  }

LABEL_13:
  if ((v0 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1E12A1FE0](0, v0);
    goto LABEL_16;
  }

  if (*((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v0 + 32);

LABEL_16:

    v11 = dispatch thunk of UsoValue.getAsEntity()();

    if (v11)
    {
      v12 = UsoTask.verbString.getter();
      v14 = v13;

      if (v12 == 0xD00000000000001ALL && 0x80000001DCA84B40 == v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v15 = [objc_opt_self() moveSpatialProtocol];
LABEL_21:
        v16 = v15;

        return v16;
      }

      if (v12 == 0xD00000000000001CLL && 0x80000001DCA84B60 == v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v15 = [objc_opt_self() scrollProtocol];
        goto LABEL_21;
      }

      if (v12 == 0xD00000000000001ALL && 0x80000001DCA84B80 == v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v15 = [objc_opt_self() zoomProtocol];
        goto LABEL_21;
      }

      if (v12 == 0xD00000000000001CLL && 0x80000001DCA84BA0 == v14)
      {

LABEL_37:
        v15 = [objc_opt_self() resizeProtocol];
        goto LABEL_21;
      }

      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v17)
      {
        goto LABEL_37;
      }
    }

    return 0;
  }

  __break(1u);
  return result;
}

uint64_t destroy for LinkParseMetadata(uint64_t a1)
{
  v2 = *(a1 + 8);

  v3 = *(a1 + 16);

  v4 = *(a1 + 24);
}

uint64_t initializeWithCopy for LinkParseMetadata(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;
  *(a1 + 32) = *(a2 + 32);
  v6 = v3;

  return a1;
}

uint64_t assignWithCopy for LinkParseMetadata(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  *a1 = *a2;
  v6 = v5;

  v7 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  v8 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);

  v9 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  return a1;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t assignWithTake for LinkParseMetadata(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a1 = *a2;

  v5 = *(a1 + 16);

  v6 = *(a1 + 24);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t getEnumTagSinglePayload for LinkParseMetadata(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t storeEnumTagSinglePayload for LinkParseMetadata(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed UsoTask) -> (@owned LNSystemProtocol?)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1);
  *a2 = result;
  return result;
}

uint64_t LinkViewActionProvider.viewActions(bundleIdentifier:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for AceServiceInvokerAsync.submitToRemote<A>(_:_:setRefId:) in conformance AceServiceInvokerImpl;

  return (specialized LinkViewActionProvider.viewActions(bundleIdentifier:))(a1, a2);
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray?, @unowned NSError?) -> () with result type [LNViewAction](uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    type metadata accessor for LNViewAction();
    **(*(v4 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return MEMORY[0x1EEE6DEE0](v4);
  }
}

uint64_t protocol witness for LinkViewActionProviding.viewActions(bundleIdentifier:) in conformance LinkViewActionProvider(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for AceServiceInvokerAsync.submit<A>(_:setRefId:) in conformance AceServiceInvokerImpl;

  return (specialized LinkViewActionProvider.viewActions(bundleIdentifier:))(a1, a2);
}

uint64_t specialized LinkViewActionProvider.viewActions(bundleIdentifier:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return MEMORY[0x1EEE6DFA0](specialized LinkViewActionProvider.viewActions(bundleIdentifier:), 0, 0);
}

uint64_t specialized LinkViewActionProvider.viewActions(bundleIdentifier:)()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = objc_allocWithZone(MEMORY[0x1E69ACE48]);
  v4 = MEMORY[0x1E12A1410](v1, v2);
  v5 = [v3 initWithBundleIdentifier_];
  v0[21] = v5;

  if (v5)
  {
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = specialized LinkViewActionProvider.viewActions(bundleIdentifier:);
    v6 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySaySo12LNViewActionCGs5Error_pGMd, &_sSccySaySo12LNViewActionCGs5Error_pGMR);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray?, @unowned NSError?) -> () with result type [LNViewAction];
    v0[13] = &block_descriptor_15;
    v0[14] = v6;
    [v5 fetchViewActionsWithCompletionHandler_];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    v7 = v0[1];
    v8 = MEMORY[0x1E69E7CC0];

    return v7(v8);
  }
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = specialized LinkViewActionProvider.viewActions(bundleIdentifier:);
  }

  else
  {
    v3 = specialized LinkViewActionProvider.viewActions(bundleIdentifier:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0[21];
  v2 = v0[18];

  v3 = v0[1];

  return v3(v2);
}

{
  v1 = v0[21];
  v2 = v0[22];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[22];

  return v3();
}

uint64_t dispatch thunk of LinkViewActionProviding.viewActions(bundleIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = dispatch thunk of CaarRankingProviding.getCaarRanking(requestId:caarId:rcId:actions:rankerContext:);

  return v13(a1, a2, a3, a4);
}

unint64_t type metadata accessor for LNViewAction()
{
  result = lazy cache variable for type metadata for LNViewAction;
  if (!lazy cache variable for type metadata for LNViewAction)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for LNViewAction);
  }

  return result;
}

uint64_t *MeCardService.instance.unsafeMutableAddressor()
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  return &static MeCardService.instance;
}

void one-time initialization function for instance()
{
  type metadata accessor for MeCardService();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v1 = [objc_opt_self() defaultCenter];
  [v1 addObserver:v0 selector:sel_clearCachedMeCard name:*MEMORY[0x1E695C3E0] object:0];

  static MeCardService.instance = v0;
}

{
  v0 = type metadata accessor for TaskPriority();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [BiomeLibrary() Siri];
  swift_unknownObjectRelease();
  v5 = [v4 Execution];
  swift_unknownObjectRelease();
  v6 = [v5 source];

  v7 = v6;
  static TaskPriority.background.getter();
  v8 = type metadata accessor for SiriKitBiomeDonator();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  v12 = specialized SiriKitBiomeDonator.init(_:backgroundTaskPriority:)(v7, v3, v11);

  static SiriKitBiomeDonator.instance = v12;
}

uint64_t static MeCardService.instance.getter()
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }
}

uint64_t one-time initialization function for meCardKeys()
{
  v0 = *MEMORY[0x1E695C240];
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;
  v4 = *MEMORY[0x1E695C2F0];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = *MEMORY[0x1E695C230];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = *MEMORY[0x1E695C310];
  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  v15 = *MEMORY[0x1E695C348];
  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  v18 = *MEMORY[0x1E695C350];
  v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;
  v21 = *MEMORY[0x1E695C340];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v23;
  v40 = v22;
  v24 = *MEMORY[0x1E695C338];
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v26;
  v42 = v25;
  v43 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray.reserveCapacity(_:)();

  MEMORY[0x1E12A1410](v1, v3);

  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  v27 = *(v43 + 16);
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();

  MEMORY[0x1E12A1410](v5, v7);

  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  v28 = *(v43 + 16);
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();

  MEMORY[0x1E12A1410](v9, v11);

  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  v29 = *(v43 + 16);
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();

  MEMORY[0x1E12A1410](v36, v14);

  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  v30 = *(v43 + 16);
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();

  MEMORY[0x1E12A1410](v37, v17);

  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  v31 = *(v43 + 16);
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();

  MEMORY[0x1E12A1410](v38, v20);

  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  v32 = *(v43 + 16);
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();

  MEMORY[0x1E12A1410](v40, v39);

  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  v33 = *(v43 + 16);
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();

  MEMORY[0x1E12A1410](v42, v41);

  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  v34 = *(v43 + 16);
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  result = swift_arrayDestroy();
  static MeCardService.meCardKeys = v43;
  return result;
}

id MeCardService.contactSource.getter()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
    v4 = *(v0 + 24);
    *(v0 + 24) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id MeCardService.fetchMeCard()()
{
  v8[1] = *MEMORY[0x1E69E9840];
  v0 = MeCardService.contactSource.getter();
  if (one-time initialization token for meCardKeys != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd, &_sSo15CNKeyDescriptor_pMR);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v8[0] = 0;
  v2 = [v0 _crossPlatformUnifiedMeContactWithKeysToFetch_error_];

  if (v2)
  {
    v3 = v8[0];
    result = v2;
  }

  else
  {
    v5 = v8[0];
    v6 = _convertNSErrorToError(_:)();

    swift_willThrow();
    result = v6;
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

CNContact_optional __swiftcall MeCardService.fetchMeCard(allowCached:)(Swift::Bool allowCached)
{
  v3 = type metadata accessor for OSSignpostID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 16);
  if (v8 && allowCached)
  {
    v9 = v8;
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v11 = static Log.executor;
    OSSignpostID.init(log:)();
    static os_signpost_type_t.begin.getter();
    os_signpost(_:dso:log:name:signpostID:)();
    v8 = MeCardService.fetchMeCard()();
    v13 = v12;
    static os_signpost_type_t.end.getter();
    os_signpost(_:dso:log:name:signpostID:)();
    if (v13)
    {
      static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1DCA66060;
      swift_getErrorValue();
      v15 = Error.localizedDescription.getter();
      v17 = v16;
      *(v14 + 56) = MEMORY[0x1E69E6158];
      *(v14 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v14 + 32) = v15;
      *(v14 + 40) = v17;
      os_log(_:dso:log:type:_:)();

      outlined consume of Result<SABaseCommand?, Error>(v8);
      (*(v4 + 8))(v7, v3);
      v8 = 0;
    }

    else
    {
      (*(v4 + 8))(v7, v3);
      v18 = *(v1 + 16);
      *(v1 + 16) = v8;
      v19 = v8;
    }
  }

  v20 = v8;
  result.value.super.isa = v20;
  result.is_nil = v10;
  return result;
}

uint64_t MeCardService.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

SiriKitRuntime::MessagesAffinityScorer __swiftcall MessagesAffinityScorer.init()()
{
  v0 = 0x80000001DCA7CB60;
  v1 = 0xD000000000000031;
  result.bundleIdentifier._object = v0;
  result.bundleIdentifier._countAndFlagsBits = v1;
  return result;
}

uint64_t specialized MessagesAffinityScorer.extractCommonMessageFromUsoParse(usoParse:)()
{
  if (!specialized static AffinityScorerUtils.getTask(_:)())
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.executor);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1DC659000, v2, v3, "MessagesAffinityScorer Could not extract usoTask from parse", v4, 2u);
      MEMORY[0x1E12A2F50](v4, -1, -1);
    }

    return 0;
  }

  static UsoTask_CodegenConverter.convert(task:)();
  if (!v14)
  {
LABEL_31:
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.executor);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1DC659000, v6, v7, "MessagesAffinityScorer Unrecognized task", v8, 2u);
      MEMORY[0x1E12A2F50](v8, -1, -1);
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v13, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  outlined init with copy of ReferenceResolutionClientProtocol?(v13, v12, &_sypSgMd, &_sypSgMR);
  type metadata accessor for UsoTask_send_common_Message();
  if (swift_dynamicCast() || (type metadata accessor for UsoTask_share_common_Message(), swift_dynamicCast()))
  {

    dispatch thunk of Uso_VerbTemplate_Target.target.getter();
    goto LABEL_6;
  }

  type metadata accessor for UsoTask_unshare_common_Message();
  if (swift_dynamicCast())
  {
LABEL_14:

    dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
    goto LABEL_6;
  }

  type metadata accessor for UsoTask_reply_common_Message();
  if (!swift_dynamicCast())
  {
    type metadata accessor for UsoTask_update_common_Message();
    if (swift_dynamicCast())
    {

      dispatch thunk of Uso_VerbTemplate_ReferenceTarget.target.getter();
      goto LABEL_6;
    }

    type metadata accessor for UsoTask_read_common_Message();
    if (swift_dynamicCast())
    {
      goto LABEL_14;
    }

    type metadata accessor for UsoTask_summarise_common_Message();
    if (swift_dynamicCast())
    {
      goto LABEL_14;
    }

    type metadata accessor for UsoTask_delete_common_Message();
    if (swift_dynamicCast())
    {
      goto LABEL_14;
    }

    type metadata accessor for UsoTask_unsend_common_Message();
    if (swift_dynamicCast())
    {
      goto LABEL_14;
    }

    type metadata accessor for UsoTask_request_common_Message();
    if (swift_dynamicCast())
    {

      dispatch thunk of Uso_VerbTemplate_ReferenceSelect.reference.getter();
      goto LABEL_6;
    }

    type metadata accessor for UsoTask_checkExistence_common_Message();
    if (swift_dynamicCast())
    {
      goto LABEL_14;
    }

    type metadata accessor for UsoTask_noVerb_common_Message();
    if (swift_dynamicCast())
    {

      dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();
      goto LABEL_6;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    goto LABEL_31;
  }

  dispatch thunk of Uso_VerbTemplate_ReferenceTarget.target.getter();
  v0 = v10;
  if (v10)
  {

    goto LABEL_7;
  }

  dispatch thunk of Uso_VerbTemplate_ReferenceTarget.reference.getter();
LABEL_6:

  v0 = v11;
LABEL_7:
  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  outlined destroy of ReferenceResolutionClientProtocol?(v13, &_sypSgMd, &_sypSgMR);
  return v0;
}

unint64_t lazy protocol witness table accessor for type UsoEntity_common_MessageMode.DefinedValues and conformance UsoEntity_common_MessageMode.DefinedValues()
{
  result = lazy protocol witness table cache variable for type UsoEntity_common_MessageMode.DefinedValues and conformance UsoEntity_common_MessageMode.DefinedValues;
  if (!lazy protocol witness table cache variable for type UsoEntity_common_MessageMode.DefinedValues and conformance UsoEntity_common_MessageMode.DefinedValues)
  {
    type metadata accessor for UsoEntity_common_MessageMode.DefinedValues();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UsoEntity_common_MessageMode.DefinedValues and conformance UsoEntity_common_MessageMode.DefinedValues);
  }

  return result;
}

uint64_t MetricsEventInformation.flowTask.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MetricsEventInformation.flowTask.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MetricsEventInformation.requestEventJson.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t MetricsEventInformation.requestEventJson.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t MetricsEventInformation.interactionId.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t MetricsEventInformation.interactionId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t MetricsEventInformation.resultCandidateId.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t MetricsEventInformation.resultCandidateId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t MetricsEventInformation.appBundleId.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t MetricsEventInformation.appBundleId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72);

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

void __swiftcall MetricsEventInformation.init(flowTask:requestEventJson:interactionId:resultCandidateId:appBundleId:)(SiriKitRuntime::MetricsEventInformation *__return_ptr retstr, Swift::String flowTask, Swift::String requestEventJson, Swift::String interactionId, Swift::String resultCandidateId, Swift::String appBundleId)
{
  retstr->flowTask = flowTask;
  retstr->requestEventJson = requestEventJson;
  retstr->interactionId = interactionId;
  retstr->resultCandidateId = resultCandidateId;
  retstr->appBundleId = appBundleId;
}

void *initializeWithCopy for MetricsEventInformation(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  v5 = a2[5];
  a1[4] = a2[4];
  a1[5] = v5;
  v6 = a2[7];
  a1[6] = a2[6];
  a1[7] = v6;
  v7 = a2[9];
  a1[8] = a2[8];
  a1[9] = v7;

  return a1;
}

void *assignWithCopy for MetricsEventInformation(void *a1, void *a2)
{
  *a1 = *a2;
  v4 = a1[1];
  a1[1] = a2[1];

  a1[2] = a2[2];
  v5 = a1[3];
  a1[3] = a2[3];

  a1[4] = a2[4];
  v6 = a1[5];
  a1[5] = a2[5];

  a1[6] = a2[6];
  v7 = a1[7];
  a1[7] = a2[7];

  a1[8] = a2[8];
  v8 = a2[9];
  v9 = a1[9];
  a1[9] = v8;

  return a1;
}

void *assignWithTake for MetricsEventInformation(void *a1, void *a2)
{
  v4 = a2[1];
  v5 = a1[1];
  *a1 = *a2;
  a1[1] = v4;

  v6 = a2[3];
  v7 = a1[3];
  a1[2] = a2[2];
  a1[3] = v6;

  v8 = a2[5];
  v9 = a1[5];
  a1[4] = a2[4];
  a1[5] = v8;

  v10 = a2[7];
  v11 = a1[7];
  a1[6] = a2[6];
  a1[7] = v10;

  v12 = a2[9];
  v13 = a1[9];
  a1[8] = a2[8];
  a1[9] = v12;

  return a1;
}

uint64_t getEnumTagSinglePayload for MetricsEventInformation(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t storeEnumTagSinglePayload for MetricsEventInformation(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t MitigationDismissalHelper.__allocating_init()()
{
  v0 = swift_allocObject();
  MitigationDismissalHelper.init()();
  return v0;
}

void *MitigationDismissalHelper.init()()
{
  v1 = v0;
  v2 = type metadata accessor for OS_dispatch_queue.Attributes();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  *(v0 + 16) = xmmword_1DCA70B00;
  *(v0 + 32) = 0xD00000000000001FLL;
  *(v0 + 40) = 0x80000001DCA84D10;
  type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.userInitiated.getter();
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8098], v4);
  *&v23[0] = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v0 + 48) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v11 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v12 = MEMORY[0x1E12A1410](0xD000000000000013, 0x80000001DCA7D910);
  v13 = [v11 initWithSuiteName_];

  if (!v13)
  {
    v13 = [objc_opt_self() standardUserDefaults];
  }

  v14 = v1[4];
  v15 = v1[5];

  v16 = MEMORY[0x1E12A1410](v14, v15);

  v17 = [v13 objectForKey_];

  if (v17)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined destroy of ReferenceResolutionClientProtocol?(v23, &_sypSgMd, &_sypSgMR);
    v18 = v1[4];
    v19 = v1[5];

    v20 = MEMORY[0x1E12A1410](v18, v19);

    v21 = [v13 integerForKey_];

    v1[3] = v21;
  }

  else
  {

    memset(v23, 0, sizeof(v23));
    outlined destroy of ReferenceResolutionClientProtocol?(v23, &_sypSgMd, &_sypSgMR);
  }

  return v1;
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

uint64_t MitigationDismissalHelper.shouldDismissUI(_:_:)(unsigned __int8 a1, uint64_t a2)
{
  v4 = type metadata accessor for InputOrigin();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes11InputOriginOSg_ADtMd, &_s16SiriMessageTypes11InputOriginOSg_ADtMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes11InputOriginOSgMd, &_s16SiriMessageTypes11InputOriginOSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v28 - v18;
  if (PreExecutionDecision.rawValue.getter(a1) == 0x747065636361 && v20 == 0xE600000000000000)
  {
  }

  else
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v21 & 1) == 0)
    {
LABEL_11:
      v24 = 1;
      return v24 & 1;
    }
  }

  (*(v5 + 104))(v19, *MEMORY[0x1E69D04C0], v4);
  (*(v5 + 56))(v19, 0, 1, v4);
  v22 = *(v9 + 48);
  outlined init with copy of InputOrigin?(a2, v12);
  outlined init with copy of InputOrigin?(v19, &v12[v22]);
  v23 = *(v5 + 48);
  if (v23(v12, 1, v4) != 1)
  {
    outlined init with copy of InputOrigin?(v12, v16);
    if (v23(&v12[v22], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v12[v22], v4);
      lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type InputOrigin and conformance InputOrigin, MEMORY[0x1E69D04D0]);
      v25 = dispatch thunk of static Equatable.== infix(_:_:)();
      v26 = *(v5 + 8);
      v26(v8, v4);
      outlined destroy of ReferenceResolutionClientProtocol?(v19, &_s16SiriMessageTypes11InputOriginOSgMd, &_s16SiriMessageTypes11InputOriginOSgMR);
      v26(v16, v4);
      outlined destroy of ReferenceResolutionClientProtocol?(v12, &_s16SiriMessageTypes11InputOriginOSgMd, &_s16SiriMessageTypes11InputOriginOSgMR);
      v24 = v25 ^ 1;
      return v24 & 1;
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v19, &_s16SiriMessageTypes11InputOriginOSgMd, &_s16SiriMessageTypes11InputOriginOSgMR);
    (*(v5 + 8))(v16, v4);
    goto LABEL_10;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v19, &_s16SiriMessageTypes11InputOriginOSgMd, &_s16SiriMessageTypes11InputOriginOSgMR);
  if (v23(&v12[v22], 1, v4) != 1)
  {
LABEL_10:
    outlined destroy of ReferenceResolutionClientProtocol?(v12, &_s16SiriMessageTypes11InputOriginOSg_ADtMd, &_s16SiriMessageTypes11InputOriginOSg_ADtMR);
    goto LABEL_11;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v12, &_s16SiriMessageTypes11InputOriginOSgMd, &_s16SiriMessageTypes11InputOriginOSgMR);
  v24 = 0;
  return v24 & 1;
}

uint64_t MitigationDismissalHelper.deinit()
{
  v1 = *(v0 + 40);

  return v0;
}

uint64_t MitigationDismissalHelper.__deallocating_deinit()
{
  v1 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t outlined init with copy of InputOrigin?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes11InputOriginOSgMd, &_s16SiriMessageTypes11InputOriginOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
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

uint64_t MultiUserContextUpdater.__allocating_init(sessionState:rraasClient:correctionsPlatformClient:serviceHelper:assistantId:requestId:rootRequestId:contextDonator:instrumentationUtil:userIdSet:knownUserIdSet:)(__int128 *a1, __int128 *a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, __int128 a12, uint64_t a13)
{
  ObjectType = swift_getObjectType();
  v17 = a11[3];
  v18 = a11[4];
  v19 = __swift_mutable_project_boxed_opaque_existential_1(a11, v17);
  v20 = specialized MultiUserContextUpdater.__allocating_init(sessionState:rraasClient:correctionsPlatformClient:serviceHelper:assistantId:requestId:rootRequestId:contextDonator:instrumentationUtil:userIdSet:knownUserIdSet:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, v19, a12, a13, v13, v17, ObjectType, v18);
  __swift_destroy_boxed_opaque_existential_1Tm(a11);
  return v20;
}

uint64_t MultiUserContextUpdater.assistantId.getter()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return v1;
}

uint64_t MultiUserContextUpdater.requestId.getter()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);

  return v1;
}

uint64_t MultiUserContextUpdater.rootRequestId.getter()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  return v1;
}

uint64_t MultiUserContextUpdater.userIdToContextUpdater.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 256);
  *(v1 + 256) = a1;
}

uint64_t MultiUserContextUpdater.init(sessionState:rraasClient:correctionsPlatformClient:serviceHelper:assistantId:requestId:rootRequestId:contextDonator:instrumentationUtil:userIdSet:knownUserIdSet:)(__int128 *a1, __int128 *a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, __int128 a12, uint64_t a13)
{
  v28 = a2;
  v32 = a7;
  v33 = a8;
  v30 = a5;
  v31 = a6;
  v29 = a3;
  v26 = a12;
  ObjectType = swift_getObjectType();
  v16 = a11[3];
  v17 = a11[4];
  v18 = __swift_mutable_project_boxed_opaque_existential_1(a11, v16);
  v19 = *(*(v16 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v22, v20);
  v24 = specialized MultiUserContextUpdater.init(sessionState:rraasClient:correctionsPlatformClient:serviceHelper:assistantId:requestId:rootRequestId:contextDonator:instrumentationUtil:userIdSet:knownUserIdSet:)(a1, v28, v29, a4, v30, v31, v32, v33, a9, a10, v22, v26, a13, v27, v16, ObjectType, v17);
  __swift_destroy_boxed_opaque_existential_1Tm(a11);
  return v24;
}

id Dictionary<>.toNSError()(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  specialized _dictionaryUpCast<A, B, C, D>(_:)(a1);
  v1 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v2 = MEMORY[0x1E12A1410](0x55747865746E6F43, 0xEE00726574616470);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v4 = [v1 initWithDomain:v2 code:-1 userInfo:isa];

  return v4;
}

void MultiUserContextUpdater.applyServerContextUpdateCandidate(_:metadata:)(uint64_t a1, uint64_t a2)
{
  v12[2] = a1;
  v12[3] = a2;
  (*(*v2 + 280))(0, a2 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_currentUserId, partial apply for closure #1 in MultiUserContextUpdater.applyServerContextUpdateCandidate(_:metadata:), v12);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.conversationBridge);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    v8 = Dictionary.debugDescription.getter();
    v10 = v9;

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, &v13);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1DC659000, v4, v5, "Done applying ServerContextUpdateCandidate to all ContextUpdater instances with error: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1E12A2F50](v7, -1, -1);
    MEMORY[0x1E12A2F50](v6, -1, -1);
  }

  else
  {
  }
}

uint64_t closure #1 in MultiUserContextUpdater.applyServerContextUpdateCandidate(_:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.conversationBridge);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v19 = a2;
    v11 = a3;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136315138;
    (*(*a1 + 360))();
    v14 = String.init<A>(describing:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v20);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_1DC659000, v9, v10, "Applying ServerContextUpdateCandidate to ContextUpdater with userId: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x1E12A2F50](v13, -1, -1);
    v17 = v12;
    a3 = v11;
    a2 = v19;
    MEMORY[0x1E12A2F50](v17, -1, -1);
  }

  return (*(*a1 + 424))(a2, a3);
}

void MultiUserContextUpdater.applyResponseText(_:scope:userId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[2] = a1;
  (*(*v3 + 280))(a2, a3, partial apply for closure #1 in MultiUserContextUpdater.applyResponseText(_:scope:userId:), v13);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.conversationBridge);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    v9 = Dictionary.debugDescription.getter();
    v11 = v10;

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v14);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1DC659000, v5, v6, "Applied response text with error: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1E12A2F50](v8, -1, -1);
    MEMORY[0x1E12A2F50](v7, -1, -1);
  }

  else
  {
  }
}

uint64_t *MultiUserContextUpdater.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  v1 = v0[17];
  swift_unknownObjectRelease();
  v2 = v0[19];

  v3 = v0[21];

  v4 = v0[23];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);
  v5 = v0[29];

  v6 = v0[30];

  v7 = v0[31];

  v8 = v0[32];

  v9 = v0[33];

  return v0;
}

uint64_t MultiUserContextUpdater.__deallocating_deinit()
{
  MultiUserContextUpdater.deinit();

  return swift_deallocClassInstance();
}

uint64_t SIRINLUTask.toNluTask()@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for BinaryDecodingOptions();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A18_Nlu_External_TaskVSgMd, &_s12SiriNLUTypes0A18_Nlu_External_TaskVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v25[-v7];
  v9 = [objc_opt_self() convertFromTask_];
  v10 = v9;
  if (v9 && (v11 = [v9 data]) != 0)
  {
    v12 = v11;
    v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = type metadata accessor for Siri_Nlu_External_Task();
    v27 = v13;
    v28 = v15;
    v26 = 0;
    memset(&v25[16], 0, 32);
    outlined copy of Data._Representation(v13, v15);
    BinaryDecodingOptions.init()();
    lazy protocol witness table accessor for type Siri_Nlu_External_Task and conformance Siri_Nlu_External_Task();
    Message.init<A>(contiguousBytes:extensions:partial:options:)();

    outlined consume of Data._Representation(v13, v15);
    v22 = *(v16 - 8);
    v23 = *(v22 + 56);
    v23(v8, 0, 1, v16);
    (*(v22 + 32))(a1, v8, v16);
    return v23(a1, 0, 1, v16);
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.executor);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1DC659000, v18, v19, "Proto NL Task has no data.", v20, 2u);
      MEMORY[0x1E12A2F50](v20, -1, -1);
    }

    v21 = type metadata accessor for Siri_Nlu_External_Task();
    return (*(*(v21 - 8) + 56))(a1, 1, 1, v21);
  }
}

id Siri_Nlu_External_Task.toLegacyTask()()
{
  type metadata accessor for Siri_Nlu_External_Task();
  lazy protocol witness table accessor for type Siri_Nlu_External_Task and conformance Siri_Nlu_External_Task();
  v5 = Message.serializedData(partial:)();
  v7 = v6;
  v8 = objc_allocWithZone(MEMORY[0x1E69D1218]);
  outlined copy of Data._Representation(v5, v7);
  isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v5, v7);
  v10 = [v8 initWithData_];

  if (v10)
  {
    v11 = objc_opt_self();
    v12 = [v10 task];
    v13 = [v11 convertUsoGraph_];

    if (v13)
    {
      result = [v10 score];
      if (result)
      {
        v14 = result;
        [result value];
        v16 = v15;

        v17 = [objc_allocWithZone(MEMORY[0x1E69D2568]) initWithTask:v13 score:v16];
        outlined consume of Data._Representation(v5, v7);

        return v17;
      }

      else
      {
        __break(1u);
      }

      return result;
    }

    outlined consume of Data._Representation(v5, v7);
  }

  else
  {
    outlined consume of Data._Representation(v5, v7);
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.executor);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1DC659000, v1, v2, "Failed to convert proto-backed Siri_Nlu_External_Task to legacy NLTask", v3, 2u);
    MEMORY[0x1E12A2F50](v3, -1, -1);
  }

  return 0;
}

uint64_t Array<A>.toLegacyTasks()(uint64_t a1)
{
  v2 = type metadata accessor for Siri_Nlu_External_Task();
  v3 = *(*(v2 - 8) + 64);
  v5.n128_f64[0] = MEMORY[0x1EEE9AC00](v2);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69E7CC0];
  v21 = MEMORY[0x1E69E7CC0];
  v9 = *(a1 + 16);
  if (v9)
  {
    v11 = *(v4 + 16);
    v10 = v4 + 16;
    v20 = v11;
    v12 = a1 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v13 = *(v10 + 56);
    v14 = (v10 - 8);
    do
    {
      v15 = v10;
      v20(v7, v12, v2, v5);
      v16 = Siri_Nlu_External_Task.toLegacyTask()();
      v17 = (*v14)(v7, v2);
      if (v16)
      {
        MEMORY[0x1E12A1680](v17);
        if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v18 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v8 = v21;
      }

      v12 += v13;
      --v9;
      v10 = v15;
    }

    while (v9);
  }

  return v8;
}

char *Array<A>.toNluTasks()(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A18_Nlu_External_TaskVSgMd, &_s12SiriNLUTypes0A18_Nlu_External_TaskVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v23 - v4;
  v6 = type metadata accessor for Siri_Nlu_External_Task();
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v28 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v11 = 0;
    v12 = a1 & 0xC000000000000001;
    v13 = (v25 + 48);
    v26 = (v25 + 32);
    v27 = a1 & 0xFFFFFFFFFFFFFF8;
    v14 = MEMORY[0x1E69E7CC0];
    v23 = a1 & 0xC000000000000001;
    v24 = a1;
    while (1)
    {
      if (v12)
      {
        v15 = MEMORY[0x1E12A1FE0](v11, a1, v8);
      }

      else
      {
        if (v11 >= *(v27 + 16))
        {
          goto LABEL_18;
        }

        v15 = *(a1 + 8 * v11 + 32);
      }

      v16 = v15;
      v17 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      SIRINLUTask.toNluTask()(v5);

      if ((*v13)(v5, 1, v6) == 1)
      {
        outlined destroy of Siri_Nlu_External_Task?(v5);
      }

      else
      {
        v18 = i;
        v19 = *v26;
        (*v26)(v28, v5, v6);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 2) + 1, 1, v14);
        }

        v21 = *(v14 + 2);
        v20 = *(v14 + 3);
        if (v21 >= v20 >> 1)
        {
          v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v20 > 1, v21 + 1, 1, v14);
        }

        *(v14 + 2) = v21 + 1;
        v19(&v14[((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v21], v28, v6);
        i = v18;
        v12 = v23;
        a1 = v24;
      }

      ++v11;
      if (v17 == i)
      {
        return v14;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t outlined destroy of Siri_Nlu_External_Task?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A18_Nlu_External_TaskVSgMd, &_s12SiriNLUTypes0A18_Nlu_External_TaskVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *Siri_Nlu_External_UserParse.appShortcuts.getter()
{
  v0 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = MEMORY[0x1E129C0F0](v3);
  if (*(v6 + 16))
  {
    (*(v1 + 16))(v5, v6 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v0);

    v7 = Siri_Nlu_External_UserDialogAct.toUsoTask()();
    (*(v1 + 8))(v5, v0);
    if (v7)
    {

      static UsoTask_CodegenConverter.convert(task:)();

      if (v12)
      {
        type metadata accessor for UsoTask_run_common_VoiceCommand();
        if (swift_dynamicCast())
        {
          v8 = UsoTask_run_common_VoiceCommand.appShortcuts.getter();

          return v8;
        }
      }

      else
      {

        outlined destroy of ReferenceResolutionClientProtocol?(v11, &_sypSgMd, &_sypSgMR);
      }
    }
  }

  else
  {
  }

  return MEMORY[0x1E69E7CC0];
}

char *Siri_Nlu_External_UserParse.generalizedAppShortcuts.getter()
{
  v0 = type metadata accessor for UsoIdentifier.NluComponent();
  v84 = *(v0 - 8);
  v1 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v66 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v66 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v85 = v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v87 = v66 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v86 = v66 - v14;
  v15 = type metadata accessor for UsoIdentifier();
  v88 = *(v15 - 8);
  v16 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1E129C0F0](v22);
  if (!*(v25 + 16))
  {

    return MEMORY[0x1E69E7CC0];
  }

  (*(v20 + 16))(v24, v25 + ((*(v20 + 80) + 32) & ~*(v20 + 80)), v19);

  v26 = Siri_Nlu_External_UserDialogAct.toUsoTask()();
  (*(v20 + 8))(v24, v19);
  if (!v26)
  {
    return MEMORY[0x1E69E7CC0];
  }

  static UsoTask_CodegenConverter.convert(task:)();

  if (!v90[3])
  {

    outlined destroy of ReferenceResolutionClientProtocol?(v90, &_sypSgMd, &_sypSgMR);
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for UsoTask_execute_common_VoiceCommand();
  if ((swift_dynamicCast() & 1) == 0)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v69 = v26;
  v27 = v89;

  dispatch thunk of Uso_VerbTemplate_ReferenceVoiceCommandPayload.reference.getter();

  if (!v90[0] || (v28 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)(), , !v28))
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v61 = type metadata accessor for Logger();
    __swift_project_value_buffer(v61, static Logger.executor);
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_1DC659000, v62, v63, "[Generalized AppShortcuts] Identifiers missing for VoiceCommand node", v64, 2u);
      MEMORY[0x1E12A2F50](v64, -1, -1);
    }

    return MEMORY[0x1E69E7CC0];
  }

  v68 = v3;
  v29 = *(v28 + 16);
  if (!v29)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v66[1] = v27;
  v79 = v4;
  v30 = *MEMORY[0x1E69D2488];
  v82 = *(v88 + 16);
  v83 = v30;
  v31 = (*(v88 + 80) + 32) & ~*(v88 + 80);
  v66[0] = v28;
  v32 = v28 + v31;
  v81 = *(v88 + 72);
  v77 = (v84 + 104);
  v76 = (v84 + 56);
  v33 = (v84 + 48);
  v67 = (v84 + 32);
  v80 = MEMORY[0x1E69E7CC0];
  v70 = (v84 + 8);
  LODWORD(v84) = *MEMORY[0x1E69D1770];
  v88 += 16;
  v34 = (v88 - 8);
  v74 = v7;
  v75 = v33;
  v78 = v15;
  v73 = (v88 - 8);
  v82(v18, v32, v15);
  while (1)
  {
    v35 = UsoIdentifier.namespace.getter();
    v37 = v36;
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (!v37)
    {

      goto LABEL_11;
    }

    if (v35 == v38 && v37 == v39)
    {
    }

    else
    {
      v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v40 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    v41 = v86;
    UsoIdentifier.sourceComponent.getter();
    v42 = v87;
    (*v77)(v87, v84, v0);
    (*v76)(v42, 0, 1, v0);
    v43 = *(v79 + 48);
    outlined init with copy of UsoIdentifier.NluComponent?(v41, v7);
    outlined init with copy of UsoIdentifier.NluComponent?(v42, &v7[v43]);
    v44 = *v75;
    if ((*v75)(v7, 1, v0) != 1)
    {
      v46 = v85;
      outlined init with copy of UsoIdentifier.NluComponent?(v7, v85);
      if (v44(&v7[v43], 1, v0) == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v87, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v86, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
        (*v70)(v46, v0);
        v15 = v78;
LABEL_24:
        outlined destroy of ReferenceResolutionClientProtocol?(v7, &_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMR);
        v34 = v73;
      }

      else
      {
        v47 = v68;
        (*v67)(v68, &v7[v43], v0);
        lazy protocol witness table accessor for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent();
        v48 = dispatch thunk of static Equatable.== infix(_:_:)();
        v49 = *v70;
        (*v70)(v47, v0);
        outlined destroy of ReferenceResolutionClientProtocol?(v87, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v86, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
        v49(v85, v0);
        v7 = v74;
        outlined destroy of ReferenceResolutionClientProtocol?(v74, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
        v15 = v78;
        if (v48)
        {
          goto LABEL_26;
        }

        v34 = v73;
      }

LABEL_11:
      (*v34)(v18, v15);
      goto LABEL_12;
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v42, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    v7 = v74;
    outlined destroy of ReferenceResolutionClientProtocol?(v41, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    v45 = v44(&v7[v43], 1, v0);
    v15 = v78;
    if (v45 != 1)
    {
      goto LABEL_24;
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v7, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
LABEL_26:
    v50 = UsoIdentifier.appBundleId.getter();
    v52 = v51;
    v53 = UsoIdentifier.groupIndex.getter();
    v54 = v80;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v72 = v50;
    v71 = v52;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v54 + 2) + 1, 1, v54);
    }

    v57 = *(v54 + 2);
    v56 = *(v54 + 3);
    v80 = v54;
    if (v57 >= v56 >> 1)
    {
      v80 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v56 > 1), v57 + 1, 1, v80);
    }

    v34 = v73;
    (*v73)(v18, v15);
    v58 = v80;
    *(v80 + 2) = v57 + 1;
    v59 = &v58[24 * v57];
    v60 = v71;
    *(v59 + 4) = v72;
    *(v59 + 5) = v60;
    *(v59 + 12) = v53;
    v59[52] = BYTE4(v53) & 1;
LABEL_12:
    v32 += v81;
    if (!--v29)
    {
      break;
    }

    v82(v18, v32, v15);
  }

  return v80;
}

uint64_t AppShortcutTarget.bundleIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AppShortcutTarget.actionIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

unint64_t AppShortcutTarget.debugDescription.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(39);

  v8[0] = 0xD000000000000023;
  v8[1] = 0x80000001DCA84E40;
  MEMORY[0x1E12A1580](*v1, v1[1]);
  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  _StringGuts.grow(_:)(22);

  v8[0] = 0xD000000000000012;
  v8[1] = 0x80000001DCA84E70;
  MEMORY[0x1E12A1580](v1[2], v1[3]);
  MEMORY[0x1E12A1580](8236, 0xE200000000000000);

  MEMORY[0x1E12A1580](0xD000000000000012, 0x80000001DCA84E70);

  _StringGuts.grow(_:)(16);

  strcpy(v8, "groupIndex: ");
  HIWORD(v8[1]) = -5120;
  v6 = *(v0 + 32);
  v7 = *(v0 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32VSgMd, &_ss6UInt32VSgMR);
  v2 = String.init<A>(describing:)();
  MEMORY[0x1E12A1580](v2);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);

  MEMORY[0x1E12A1580](v8[0], v8[1]);

  _StringGuts.grow(_:)(19);

  v8[0] = 0xD000000000000011;
  v8[1] = 0x80000001DCA84E90;
  if (*(v0 + 37))
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (*(v0 + 37))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v3, v4);

  MEMORY[0x1E12A1580](v8[0], v8[1]);

  MEMORY[0x1E12A1580](41, 0xE100000000000000);

  return 0xD000000000000023;
}

uint64_t AppShortcutTarget.identifier.getter()
{
  v3 = *v0;
  v4 = v3;
  outlined init with copy of String(&v4, &v2);
  MEMORY[0x1E12A1580](35, 0xE100000000000000);
  MEMORY[0x1E12A1580](*(v0 + 2), *(v0 + 3));
  return v3;
}

void AppShortcutTarget.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  String.hash(into:)();
  v3 = v0[2];
  v4 = v0[3];
  String.hash(into:)();
  if (*(v0 + 36) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v5 = *(v0 + 8);
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v5);
  }

  Hasher._combine(_:)(*(v0 + 37) & 1);
}

Swift::Int AppShortcutTarget.hashValue.getter()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  v2 = v0[1];
  String.hash(into:)();
  v3 = v0[2];
  v4 = v0[3];
  String.hash(into:)();
  if (*(v0 + 36) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v5 = *(v0 + 8);
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v5);
  }

  Hasher._combine(_:)(*(v0 + 37) & 1);
  return Hasher._finalize()();
}

uint64_t AppShortcutTarget.init(bundleIdentifier:actionIdentifier:groupIndex:containsAppName:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 36) = BYTE4(a5) & 1;
  *(a7 + 37) = a6;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AppShortcutTarget()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 8);
  v6 = *(v0 + 36);
  v7 = *(v0 + 37);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  if (v6 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v5);
  }

  Hasher._combine(_:)(v7);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance AppShortcutTarget()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 8);
  v6 = *(v0 + 36);
  v7 = *(v0 + 37);
  String.hash(into:)();
  String.hash(into:)();
  if (v6 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v5);
  }

  Hasher._combine(_:)(v7);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AppShortcutTarget()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 8);
  v6 = *(v0 + 36);
  v7 = *(v0 + 37);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  if (v6 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v5);
  }

  Hasher._combine(_:)(v7);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AppShortcutTarget(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 14) = *(a1 + 30);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 14) = *(a2 + 30);
  return specialized static AppShortcutTarget.== infix(_:_:)(&v5, &v7) & 1;
}

char *UsoTask_run_common_VoiceCommand.appShortcuts.getter()
{
  v0 = type metadata accessor for UsoIdentifier();
  v80 = *(v0 - 8);
  v1 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
  if (v99)
  {
    v4 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();

    if (v4)
    {
      v5 = _sSD8grouping2bySDyxSay7ElementQyd__GGqd__n_xADKXEtKcAERs_STRd__lufCs6UInt32VSg_Say12SiriOntology13UsoIdentifierVGTt1g504_s12e10Ontology31g88Task_run_common_VoiceCommandC0A10KitRuntimeE12appShortcutsSayAD17AppShortcutTargetVGvgs6d9VSgAA0C10H6VXEfU_Tf1nc_nTf4g_n(v4);
      v69[1] = 0;

      v7 = 0;
      v8 = *(v5 + 64);
      v75 = v5 + 64;
      v9 = 1 << *(v5 + 32);
      v10 = -1;
      if (v9 < 64)
      {
        v10 = ~(-1 << v9);
      }

      v11 = v10 & v8;
      v74 = (v9 + 63) >> 6;
      v12 = *MEMORY[0x1E69D2488];
      v87 = *MEMORY[0x1E69D24A0];
      v92 = (v80 + 8);
      v89 = 0x80000001DCA84EB0;
      v83 = 0x80000001DCA84ED0;
      v71 = MEMORY[0x1E69E7CC0];
      *&v6 = 136315138;
      v70 = v6;
      v76 = v5;
      v88 = v80 + 16;
      v85 = v0;
      v86 = v12;
      while (1)
      {
        if (!v11)
        {
          while (1)
          {
            v13 = v7 + 1;
            if (__OFADD__(v7, 1))
            {
              __break(1u);
              goto LABEL_59;
            }

            if (v13 >= v74)
            {
              break;
            }

            v11 = *(v75 + 8 * v13);
            ++v7;
            if (v11)
            {
              v7 = v13;
              goto LABEL_11;
            }
          }

          v63 = v71;
          if (*(v71 + 2))
          {
            return v63;
          }

          v65 = one-time initialization token for executor;

          if (v65 != -1)
          {
            swift_once();
          }

          v66 = type metadata accessor for Logger();
          __swift_project_value_buffer(v66, static Logger.executor);
          v60 = Logger.logObject.getter();
          v67 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v60, v67))
          {
            v68 = swift_slowAlloc();
            *v68 = 0;

            _os_log_impl(&dword_1DC659000, v60, v67, "Found no AppShortcutTargets!", v68, 2u);
            MEMORY[0x1E12A2F50](v68, -1, -1);
          }

          else
          {
          }

          goto LABEL_50;
        }

LABEL_11:
        v14 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v15 = (v7 << 9) | (8 * v14);
        v16 = *(*(v5 + 56) + v15);
        v17 = *(v16 + 16);
        if (!v17)
        {
          continue;
        }

        v78 = v11;
        v79 = v7;
        v18 = *(v5 + 48) + v15;
        v73 = *v18;
        v72 = *(v18 + 4);
        v19 = v16 + ((*(v80 + 80) + 32) & ~*(v80 + 80));
        v20 = *(v80 + 72);
        v93 = *(v80 + 16);
        v94 = v20;
        v77 = v16;

        v84 = 0;
        v82 = 0;
        v90 = 0;
        v81 = 0;
        v91 = 0;
        do
        {
          v93(v3, v19, v0);
          v22 = UsoIdentifier.namespace.getter();
          v24 = v23;
          v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          if (!v24)
          {

            goto LABEL_26;
          }

          if (v22 == v25 && v24 == v26)
          {
          }

          else
          {
            v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v27 & 1) == 0)
            {
              goto LABEL_26;
            }
          }

          v99 = UsoIdentifier.value.getter();
          v100 = v28;
          v97 = 94;
          v98 = 0xE100000000000000;
          v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          MEMORY[0x1E12A1580](v29);

          v95 = 0;
          v96 = 0xE000000000000000;
          lazy protocol witness table accessor for type String and conformance String();
          v30 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
          v32 = v31;

          v99 = v30;
          v100 = v32;
          v97 = 35;
          v98 = 0xE100000000000000;
          v33 = StringProtocol.components<A>(separatedBy:)();

          if (!v33[2])
          {

            v0 = v85;
            v12 = v86;
LABEL_26:
            v36 = UsoIdentifier.namespace.getter();
            if (v37)
            {
              if (v36 == 0xD000000000000018 && v37 == v89)
              {
              }

              else
              {
                v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v38 & 1) == 0)
                {
                  goto LABEL_15;
                }
              }

              v99 = UsoIdentifier.value.getter();
              v100 = v21;
              v97 = 0xD000000000000012;
              v98 = v83;
              lazy protocol witness table accessor for type String and conformance String();
              v84 = StringProtocol.contains<A>(_:)();
            }

LABEL_15:
            (*v92)(v3, v0);
            goto LABEL_16;
          }

          v34 = v33[5];
          v82 = v33[4];

          v81 = UsoIdentifier.appBundleId.getter();
          v91 = v35;
          v0 = v85;
          (*v92)(v3, v85);
          v90 = v34;
          v12 = v86;
LABEL_16:
          v19 += v94;
          --v17;
        }

        while (v17);

        if (v91)
        {
          v5 = v76;
          v39 = v90;
          if (!v90)
          {

            goto LABEL_35;
          }

          v40 = v91;
          if (one-time initialization token for executor != -1)
          {
            swift_once();
          }

          v41 = type metadata accessor for Logger();
          __swift_project_value_buffer(v41, static Logger.executor);

          v42 = Logger.logObject.getter();
          v43 = static os_log_type_t.debug.getter();

          LODWORD(v94) = v43;
          if (os_log_type_enabled(v42, v43))
          {
            v44 = v39;
            v45 = v12;
            v46 = swift_slowAlloc();
            v47 = swift_slowAlloc();
            v97 = v47;
            *v46 = v70;
            v99 = v81;
            v100 = v91;
            v101 = v82;
            v102 = v44;
            v103 = v73;
            v104 = v72;
            v105 = v84 & 1;

            v48 = String.init<A>(describing:)();
            v50 = v0;
            v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, &v97);

            *(v46 + 4) = v51;
            v0 = v50;
            _os_log_impl(&dword_1DC659000, v42, v94, "Found AppShortcutTarget: %s", v46, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v47);
            MEMORY[0x1E12A2F50](v47, -1, -1);
            v52 = v46;
            v40 = v91;
            v5 = v76;
            MEMORY[0x1E12A2F50](v52, -1, -1);
          }

          else
          {
            v45 = v12;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v71 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v71 + 2) + 1, 1, v71);
          }

          v7 = v79;
          v11 = v78;
          v54 = *(v71 + 2);
          v53 = *(v71 + 3);
          if (v54 >= v53 >> 1)
          {
            v58 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v54 + 1, 1, v71);
            v11 = v78;
            v7 = v79;
            v71 = v58;
          }

          v55 = v71;
          *(v71 + 2) = v54 + 1;
          v56 = &v55[40 * v54];
          *(v56 + 4) = v81;
          *(v56 + 5) = v40;
          v57 = v90;
          *(v56 + 6) = v82;
          *(v56 + 7) = v57;
          *(v56 + 16) = v73;
          v56[68] = v72;
          v56[69] = v84 & 1;
          v12 = v45;
        }

        else
        {

          v5 = v76;
LABEL_35:
          v7 = v79;
          v11 = v78;
        }
      }
    }
  }

  if (one-time initialization token for executor != -1)
  {
LABEL_59:
    swift_once();
  }

  v59 = type metadata accessor for Logger();
  __swift_project_value_buffer(v59, static Logger.executor);
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    *v62 = 0;
    _os_log_impl(&dword_1DC659000, v60, v61, "[AppShortcuts] Identifiers missing for VoiceCommand node", v62, 2u);
    MEMORY[0x1E12A2F50](v62, -1, -1);
  }

  v63 = MEMORY[0x1E69E7CC0];
LABEL_50:

  return v63;
}

BOOL Siri_Nlu_External_UserParse.isAppShortcutParse.getter()
{
  v0 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E129C0F0](v3);
  if (*(v6 + 16))
  {
    (*(v1 + 16))(v5, v6 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v0);

    Siri_Nlu_External_UserDialogAct.toUsoTask()();
    (*(v1 + 8))(v5, v0);
  }

  else
  {
  }

  static UsoTask_CodegenConverter.convert(task:)();

  if (!v12)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v11, &_sypSgMd, &_sypSgMR);
    goto LABEL_8;
  }

  type metadata accessor for UsoTask_run_common_VoiceCommand();
  if (!swift_dynamicCast())
  {
LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  v7 = v10[1];
LABEL_9:
  v8 = v7 != 0;

  return v8;
}

BOOL closure #1 in Sequence<>.isContainsAppShortcutParse.getter()
{
  v0 = *(Siri_Nlu_External_UserParse.appShortcuts.getter() + 2);

  return v0 != 0;
}

uint64_t outlined init with copy of UsoIdentifier.NluComponent?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent()
{
  result = lazy protocol witness table cache variable for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent;
  if (!lazy protocol witness table cache variable for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent)
  {
    type metadata accessor for UsoIdentifier.NluComponent();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent);
  }

  return result;
}

uint64_t specialized static AppShortcutTarget.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
    if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v6 = *(a2 + 36);
      if (*(a1 + 36))
      {
        if (!*(a2 + 36))
        {
          return v6 & 1;
        }

        goto LABEL_18;
      }

      if (*(a1 + 32) != *(a2 + 32))
      {
        v6 = 1;
      }

      if ((v6 & 1) == 0)
      {
LABEL_18:
        v6 = *(a1 + 37) ^ *(a2 + 37) ^ 1;
        return v6 & 1;
      }
    }
  }

  v6 = 0;
  return v6 & 1;
}

uint64_t _sSD8grouping2bySDyxSay7ElementQyd__GGqd__n_xADKXEtKcAERs_STRd__lufCs6UInt32VSg_Say12SiriOntology13UsoIdentifierVGTt1g504_s12e10Ontology31g88Task_run_common_VoiceCommandC0A10KitRuntimeE12appShortcutsSayAD17AppShortcutTargetVGvgs6d9VSgAA0C10H6VXEfU_Tf1nc_nTf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for UsoIdentifier();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v49 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v52 = &v42 - v7;
  v8 = MEMORY[0x1E69E7CC8];
  v53 = MEMORY[0x1E69E7CC8];
  v9 = *(a1 + 16);
  if (!v9)
  {
    return v8;
  }

  v11 = *(v3 + 16);
  v10 = v3 + 16;
  v44 = *(v10 + 64);
  v12 = *(v10 + 56);
  v47 = (v44 + 32) & ~v44;
  v48 = v11;
  v13 = a1 + v47;
  v51 = (v10 + 16);
  v43 = xmmword_1DCA66060;
  v45 = v2;
  v46 = v10;
  v50 = v12;
  while (1)
  {
    v48(v52, v13, v2);
    v17 = UsoIdentifier.groupIndex.getter();
    v18 = v17;
    v19 = HIDWORD(v17) & 1;
    v20 = v17;
    v22 = specialized __RawDictionaryStorage.find<A>(_:)(v17 | (v19 << 32));
    v23 = v8[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      break;
    }

    v26 = v21;
    if (v8[3] < v25)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v25, 1);
      v8 = v53;
      v27 = specialized __RawDictionaryStorage.find<A>(_:)(v20 | (v19 << 32));
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_19;
      }

      v22 = v27;
    }

    if (v26)
    {
      v29 = v8[7];
      v30 = *v51;
      (*v51)(v49, v52, v2);
      v31 = *(v29 + 8 * v22);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v29 + 8 * v22) = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31[2] + 1, 1, v31);
        *(v29 + 8 * v22) = v31;
      }

      v34 = v31[2];
      v33 = v31[3];
      if (v34 >= v33 >> 1)
      {
        v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v33 > 1, v34 + 1, 1, v31);
        *(v29 + 8 * v22) = v31;
      }

      v14 = v47;
      v31[2] = v34 + 1;
      v15 = v50;
      v16 = v31 + v14 + v34 * v50;
      v2 = v45;
      v30(v16, v49, v45);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriOntology13UsoIdentifierVGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology13UsoIdentifierVGMR);
      v35 = v47;
      v36 = swift_allocObject();
      *(v36 + 16) = v43;
      (*v51)((v36 + v35), v52, v2);
      v8[(v22 >> 6) + 8] |= 1 << v22;
      v37 = v8[6] + 8 * v22;
      *v37 = v18;
      *(v37 + 4) = v19;
      *(v8[7] + 8 * v22) = v36;
      v38 = v8[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_18;
      }

      v8[2] = v40;
      v15 = v50;
    }

    v13 += v15;
    if (!--v9)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32VSgMd, &_ss6UInt32VSgMR);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type AppShortcutTarget and conformance AppShortcutTarget()
{
  result = lazy protocol witness table cache variable for type AppShortcutTarget and conformance AppShortcutTarget;
  if (!lazy protocol witness table cache variable for type AppShortcutTarget and conformance AppShortcutTarget)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppShortcutTarget and conformance AppShortcutTarget);
  }

  return result;
}

uint64_t initializeWithCopy for AppShortcutTarget(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);

  return a1;
}

uint64_t assignWithCopy for AppShortcutTarget(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  v5 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);

  v6 = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 32) = v6;
  *(a1 + 37) = *(a2 + 37);
  return a1;
}

__n128 __swift_memcpy38_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 30) = *(a2 + 30);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t assignWithTake for AppShortcutTarget(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a1 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  v6 = *(a2 + 24);
  v7 = *(a1 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v6;

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 37) = *(a2 + 37);
  return a1;
}

uint64_t getEnumTagSinglePayload for AppShortcutTarget(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 38))
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

uint64_t storeEnumTagSinglePayload for AppShortcutTarget(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 38) = 1;
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

    *(result + 38) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for GeneralizedAppShortcutTarget(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);

  return a1;
}

uint64_t assignWithCopy for GeneralizedAppShortcutTarget(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  v5 = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 16) = v5;
  return a1;
}

__n128 __swift_memcpy21_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t assignWithTake for GeneralizedAppShortcutTarget(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a1 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  return a1;
}

uint64_t getEnumTagSinglePayload for GeneralizedAppShortcutTarget(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 21))
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

uint64_t storeEnumTagSinglePayload for GeneralizedAppShortcutTarget(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 21) = 1;
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

    *(result + 21) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t Siri_Nlu_External_UserParse.isPSC.getter()
{
  v0 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v16 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_Parser();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Siri_Nlu_External_UserParse.parser.getter();
  Siri_Nlu_External_Parser.parserID.getter();
  (*(v9 + 8))(v12, v8);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D0968], v0);
  lazy protocol witness table accessor for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v13 = *(v1 + 8);
  v13(v4, v0);
  v13(v7, v0);
  if (v16[1] == v16[0])
  {
    v14 = 1;
  }

  else
  {
    v14 = Siri_Nlu_External_UserParse.isOverriddenPSC.getter();
  }

  return v14 & 1;
}

unint64_t lazy protocol witness table accessor for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier()
{
  result = lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier;
  if (!lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier)
  {
    type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier;
  if (!lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier)
  {
    type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier);
  }

  return result;
}

uint64_t Siri_Nlu_External_UserParse.isSNLC.getter()
{
  v0 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v16 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_Parser();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Siri_Nlu_External_UserParse.parser.getter();
  Siri_Nlu_External_Parser.parserID.getter();
  (*(v9 + 8))(v12, v8);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D0980], v0);
  lazy protocol witness table accessor for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v13 = *(v1 + 8);
  v13(v4, v0);
  v13(v7, v0);
  if (v16[1] == v16[0] || (Siri_Nlu_External_UserParse.isOverriddenSNLC.getter() & 1) != 0)
  {
    v14 = 1;
  }

  else
  {
    v14 = Siri_Nlu_External_UserParse.isNlv3FallbackException.getter();
  }

  return v14 & 1;
}

uint64_t Siri_Nlu_External_UserParse.isDelegated.getter()
{
  v0 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E129C0F0](v3);
  if (*(v6 + 16))
  {
    (*(v1 + 16))(v5, v6 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v0);

    v7 = Siri_Nlu_External_UserDialogAct.hasDelegated.getter();
    (*(v1 + 8))(v5, v0);
  }

  else
  {

    v7 = 0;
  }

  return v7 & 1;
}

uint64_t Siri_Nlu_External_UserParse.isNlv3FallbackException.getter()
{
  v0 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v31 = *(v0 - 8);
  v32 = v0;
  v1 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v30 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v29 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_Parser();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  Siri_Nlu_External_UserParse.parser.getter();
  Siri_Nlu_External_Parser.parserID.getter();
  (*(v16 + 8))(v19, v15);
  (*(v8 + 104))(v11, *MEMORY[0x1E69D0988], v7);
  lazy protocol witness table accessor for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v20 = *(v8 + 8);
  v20(v11, v7);
  v20(v14, v7);
  if (v34 != v33)
  {
    goto LABEL_4;
  }

  Siri_Nlu_External_UserParse.preferredUserDialogAct.getter(v6);
  v21 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v6, 1, v21) == 1)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v6);
LABEL_4:
    v23 = 0;
    return v23 & 1;
  }

  v25 = v30;
  Siri_Nlu_External_UserDialogAct.delegated.getter();
  (*(v22 + 8))(v6, v21);
  v26 = Siri_Nlu_External_DelegatedUserDialogAct.externalParserID.getter();
  v28 = v27;
  (*(v31 + 8))(v25, v32);
  if (v26 == 0xD000000000000026 && 0x80000001DCA82100 == v28)
  {

    v23 = 1;
  }

  else
  {
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v23 & 1;
}

uint64_t Siri_Nlu_External_UserParse.isOverriddenPSC.getter()
{
  v0 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v35 = *(v0 - 8);
  v36 = v0;
  v1 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v38 = *(v4 - 8);
  v39 = v4;
  v5 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v34 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v37 = &v34 - v8;
  v9 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v34 - v15;
  v17 = type metadata accessor for Siri_Nlu_External_Parser();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  Siri_Nlu_External_UserParse.parser.getter();
  Siri_Nlu_External_Parser.parserID.getter();
  (*(v18 + 8))(v21, v17);
  (*(v10 + 104))(v13, *MEMORY[0x1E69D0988], v9);
  lazy protocol witness table accessor for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v22 = *(v10 + 8);
  v22(v13, v9);
  v23 = (v22)(v16, v9);
  if (v41 == v40)
  {
    v24 = MEMORY[0x1E129C0F0](v23);
    if (*(v24 + 16))
    {
      v26 = v35;
      v25 = v36;
      (*(v35 + 16))(v3, v24 + ((*(v26 + 80) + 32) & ~*(v26 + 80)), v36);

      v27 = v34;
      Siri_Nlu_External_UserDialogAct.delegated.getter();
      (*(v26 + 8))(v3, v25);
      v29 = v37;
      v28 = v38;
      v30 = v39;
      (*(v38 + 32))(v37, v27, v39);
      if (Siri_Nlu_External_DelegatedUserDialogAct.externalParserID.getter() == 0xD000000000000010 && 0x80000001DCA84EF0 == v31)
      {

        (*(v28 + 8))(v29, v30);
        return 1;
      }

      v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

      (*(v28 + 8))(v29, v30);
      if (v33)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  return 0;
}

uint64_t Siri_Nlu_External_UserParse.isOverriddenSNLC.getter()
{
  v0 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v31 = *(v0 - 8);
  v32 = v0;
  v1 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v30 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v29 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_Parser();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  Siri_Nlu_External_UserParse.parser.getter();
  Siri_Nlu_External_Parser.parserID.getter();
  (*(v16 + 8))(v19, v15);
  (*(v8 + 104))(v11, *MEMORY[0x1E69D0988], v7);
  lazy protocol witness table accessor for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v20 = *(v8 + 8);
  v20(v11, v7);
  v20(v14, v7);
  if (v34 != v33)
  {
    goto LABEL_4;
  }

  Siri_Nlu_External_UserParse.preferredUserDialogAct.getter(v6);
  v21 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v6, 1, v21) == 1)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v6);
LABEL_4:
    v23 = 0;
    return v23 & 1;
  }

  v25 = v30;
  Siri_Nlu_External_UserDialogAct.delegated.getter();
  (*(v22 + 8))(v6, v21);
  v26 = Siri_Nlu_External_DelegatedUserDialogAct.externalParserID.getter();
  v28 = v27;
  (*(v31 + 8))(v25, v32);
  if (v26 == 0xD000000000000013 && 0x80000001DCA84F10 == v28)
  {

    v23 = 1;
  }

  else
  {
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v23 & 1;
}

uint64_t Array<A>.serializeProtobufElementsAsData<A>(swiftType:objects:)()
{
  type metadata accessor for Array();
  swift_getWitnessTable();
  return Sequence.compactMap<A>(_:)();
}

uint64_t Array<A>.deserializeDataElementsAsProtobuf<A>(swiftType:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DataVGMd, &_sSay10Foundation4DataVGMR);
  lazy protocol witness table accessor for type [Data] and conformance [A]();
  return Sequence.compactMap<A>(_:)();
}

uint64_t closure #1 in Array<A>.serializeProtobufElementsAsData<A>(swiftType:objects:)@<X0>(uint64_t *a1@<X8>)
{
  result = Message.serializedData(partial:)();
  if (v1)
  {

    result = 0;
    v4 = 0xF000000000000000;
  }

  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t partial apply for closure #1 in Array<A>.serializeProtobufElementsAsData<A>(swiftType:objects:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return closure #1 in Array<A>.serializeProtobufElementsAsData<A>(swiftType:objects:)(a1);
}

uint64_t closure #1 in Array<A>.deserializeDataElementsAsProtobuf<A>(swiftType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for BinaryDecodingOptions();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  outlined copy of Data._Representation(*a1, *(a1 + 8));
  BinaryDecodingOptions.init()();
  Message.init(serializedData:extensions:partial:options:)();
  if (v3)
  {

    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  return (*(*(a2 - 8) + 56))(a3, v9, 1, a2);
}

unint64_t lazy protocol witness table accessor for type [Data] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Data] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Data] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10Foundation4DataVGMd, &_sSay10Foundation4DataVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Data] and conformance [A]);
  }

  return result;
}

SiriKitRuntime::NotebookAffinityScorer __swiftcall NotebookAffinityScorer.init()()
{
  v0 = 0x80000001DCA7CDD0;
  v1 = 0xD000000000000021;
  result.bundleIdentifier._object = v0;
  result.bundleIdentifier._countAndFlagsBits = v1;
  return result;
}

uint64_t specialized NotebookAffinityScorer.isExplicitlySupported(usoTask:)()
{
  static UsoTask_CodegenConverter.convert(task:)();
  if (!v4)
  {
    goto LABEL_42;
  }

  outlined init with copy of Any?(v3, v2);
  type metadata accessor for UsoTask_create_common_Reminder();
  if (!swift_dynamicCast())
  {
    type metadata accessor for UsoTask_noVerb_common_Reminder();
    if (!swift_dynamicCast())
    {
      type metadata accessor for UsoTask_checkExistence_common_Reminder();
      if (!swift_dynamicCast())
      {
        type metadata accessor for UsoTask_delete_common_Reminder();
        if (!swift_dynamicCast())
        {
          type metadata accessor for UsoTask_request_common_Reminder();
          if (!swift_dynamicCast())
          {
            type metadata accessor for UsoTask_summarise_common_Reminder();
            if (!swift_dynamicCast())
            {
              type metadata accessor for UsoTask_read_common_Reminder();
              if (!swift_dynamicCast())
              {
                type metadata accessor for UsoTask_update_common_Reminder();
                if (!swift_dynamicCast())
                {
                  type metadata accessor for UsoTask_disableSetting_common_Reminder();
                  if (!swift_dynamicCast())
                  {
                    type metadata accessor for UsoTask_disable_common_Reminder();
                    if (!swift_dynamicCast())
                    {
                      type metadata accessor for UsoTask_enableSetting_common_Reminder();
                      if (!swift_dynamicCast())
                      {
                        type metadata accessor for UsoTask_snooze_common_Reminder();
                        if (!swift_dynamicCast())
                        {
                          type metadata accessor for UsoTask_create_common_ReminderList();
                          if (!swift_dynamicCast())
                          {
                            type metadata accessor for UsoTask_noVerb_common_ReminderList();
                            if (!swift_dynamicCast())
                            {
                              type metadata accessor for UsoTask_checkExistence_common_ReminderList();
                              if (!swift_dynamicCast())
                              {
                                type metadata accessor for UsoTask_delete_common_ReminderList();
                                if (!swift_dynamicCast())
                                {
                                  type metadata accessor for UsoTask_request_common_ReminderList();
                                  if (!swift_dynamicCast())
                                  {
                                    type metadata accessor for UsoTask_summarise_common_ReminderList();
                                    if (!swift_dynamicCast())
                                    {
                                      type metadata accessor for UsoTask_read_common_ReminderList();
                                      if (!swift_dynamicCast())
                                      {
                                        type metadata accessor for UsoTask_update_common_ReminderList();
                                        if (!swift_dynamicCast())
                                        {
                                          type metadata accessor for UsoTask_create_common_Note();
                                          if (!swift_dynamicCast())
                                          {
                                            type metadata accessor for UsoTask_noVerb_common_Note();
                                            if (!swift_dynamicCast())
                                            {
                                              type metadata accessor for UsoTask_checkExistence_common_Note();
                                              if (!swift_dynamicCast())
                                              {
                                                type metadata accessor for UsoTask_delete_common_Note();
                                                if (!swift_dynamicCast())
                                                {
                                                  type metadata accessor for UsoTask_request_common_Note();
                                                  if (!swift_dynamicCast())
                                                  {
                                                    type metadata accessor for UsoTask_summarise_common_Note();
                                                    if (!swift_dynamicCast())
                                                    {
                                                      type metadata accessor for UsoTask_update_common_Note();
                                                      if (!swift_dynamicCast())
                                                      {
                                                        type metadata accessor for UsoTask_read_common_Note();
                                                        if (!swift_dynamicCast())
                                                        {
                                                          type metadata accessor for UsoTask_enableSetting_common_Note();
                                                          if (!swift_dynamicCast())
                                                          {
                                                            type metadata accessor for UsoTask_disableSetting_common_Note();
                                                            if (!swift_dynamicCast())
                                                            {
                                                              type metadata accessor for UsoTask_undo_common_Note();
                                                              if (!swift_dynamicCast())
                                                              {
                                                                type metadata accessor for UsoTask_create_common_NoteFolder();
                                                                if (!swift_dynamicCast())
                                                                {
                                                                  type metadata accessor for UsoTask_noVerb_common_NoteFolder();
                                                                  if (!swift_dynamicCast())
                                                                  {
                                                                    type metadata accessor for UsoTask_checkExistence_common_NoteFolder();
                                                                    if (!swift_dynamicCast())
                                                                    {
                                                                      type metadata accessor for UsoTask_delete_common_NoteFolder();
                                                                      if (!swift_dynamicCast())
                                                                      {
                                                                        type metadata accessor for UsoTask_request_common_NoteFolder();
                                                                        if (!swift_dynamicCast())
                                                                        {
                                                                          type metadata accessor for UsoTask_summarise_common_NoteFolder();
                                                                          if (!swift_dynamicCast())
                                                                          {
                                                                            type metadata accessor for UsoTask_update_common_NoteFolder();
                                                                            if (!swift_dynamicCast())
                                                                            {
                                                                              __swift_destroy_boxed_opaque_existential_1Tm(v2);
LABEL_42:
                                                                              v0 = 0;
                                                                              goto LABEL_43;
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
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  v0 = 1;
LABEL_43:
  outlined destroy of Any?(v3);
  return v0;
}

uint64_t specialized NotebookAffinityScorer.score(input:environment:)()
{
  v0 = type metadata accessor for RREntity();
  v87 = *(v0 - 8);
  v88 = v0;
  v1 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v76 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for RRCandidate();
  v5 = *(v4 - 8);
  v89 = v4;
  v90 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Parse();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for USOParse();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  Input.parse.getter();
  if ((*(v10 + 88))(v13, v9) != *MEMORY[0x1E69D0168])
  {
    (*(v10 + 8))(v13, v9);
    if (one-time initialization token for executor != -1)
    {
LABEL_51:
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.executor);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1DC659000, v23, v24, "[NotebookAffinityScorer] Unexpected parse", v25, 2u);
      MEMORY[0x1E12A2F50](v25, -1, -1);

      return 2;
    }

    return 2;
  }

  (*(v10 + 96))(v13, v9);
  (*(v15 + 32))(v18, v13, v14);
  v19 = specialized static AffinityScorerUtils.getTask(_:)();
  if (!v19)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.executor);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1DC659000, v27, v28, "[NotebookAffinityScorer] Unable to obtain task from parse", v29, 2u);
      MEMORY[0x1E12A2F50](v29, -1, -1);

      (*(v15 + 8))(v18, v14);
      return 2;
    }

    goto LABEL_36;
  }

  v20 = v19;
  if (specialized NotebookAffinityScorer.isExplicitlySupported(usoTask:)())
  {
    (*(v15 + 8))(v18, v14);

    return 3;
  }

  v79 = v20;
  if (UsoTask.baseEntityAsString.getter() == 0x6E456F4E5F6F7375 && v30 == 0xEC00000079746974)
  {
  }

  else
  {
    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v32 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  if (UsoTask.verbString.getter() == 0x657461647075 && v33 == 0xE600000000000000)
  {
  }

  else
  {
    v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v34 & 1) == 0)
    {
LABEL_31:
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v56 = type metadata accessor for Logger();
      __swift_project_value_buffer(v56, static Logger.executor);
      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v57, v58))
      {
        v21 = 2;
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&dword_1DC659000, v57, v58, "[NotebookAffinityScorer] Not a shared task", v59, 2u);
        MEMORY[0x1E12A2F50](v59, -1, -1);

        (*(v15 + 8))(v18, v14);
        return v21;
      }

LABEL_36:
      (*(v15 + 8))(v18, v14);
      return 2;
    }
  }

  v81 = v3;
  v85 = v8;
  v76 = v18;
  v77 = v14;
  v78 = v15;
  SiriEnvironment.salientEntitiesProvider.getter();
  v35 = dispatch thunk of SalientEntitiesDataProvider.salientEntities.getter();

  v36 = v35;
  v37 = 0;
  v86 = *(v35 + 16);
  v38 = v89;
  v39 = (v87 + 8);
  v80 = 0x80000001DCA84F30;
  v83 = v90 + 16;
  v84 = (v90 + 8);
  v82 = v35;
  v40 = v85;
  v41 = v81;
  while (v86 != v37)
  {
    if (v37 >= *(v36 + 16))
    {
      __break(1u);
      goto LABEL_51;
    }

    v42 = v36 + ((*(v90 + 80) + 32) & ~*(v90 + 80));
    v43 = *(v90 + 72);
    v87 = v37;
    (*(v90 + 16))(v40, v42 + v43 * v37, v38);
    RRCandidate.entity.getter();
    RREntity.usoEntity.getter();
    v44 = *v39;
    v45 = v88;
    (*v39)(v41, v88);
    v46 = UsoTask.verbString.getter();
    v48 = v47;

    v93 = v46;
    v94 = v48;
    v91 = 0x525F6E6F6D6D6F63;
    v92 = 0xEF7265646E696D65;
    lazy protocol witness table accessor for type String and conformance String();
    v49 = StringProtocol.contains<A>(_:)();

    if (v49)
    {

      (*v84)(v40, v38);
      goto LABEL_45;
    }

    v50 = v87 + 1;
    RRCandidate.entity.getter();
    RREntity.usoEntity.getter();
    v44(v41, v45);
    v51 = UsoTask.verbString.getter();
    v53 = v52;

    v93 = v51;
    v94 = v53;
    v91 = 0xD000000000000013;
    v92 = v80;
    v54 = StringProtocol.contains<A>(_:)();

    v55 = v89;
    (*v84)(v40, v89);
    v37 = v50;
    v38 = v55;
    v36 = v82;
    if (v54)
    {

LABEL_45:
      v70 = v77;
      v69 = v78;
      v71 = v76;
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v72 = type metadata accessor for Logger();
      __swift_project_value_buffer(v72, static Logger.executor);
      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        *v75 = 0;
        _os_log_impl(&dword_1DC659000, v73, v74, "[NotebookAffinityScorer] Reminders found in entities, returning .high", v75, 2u);
        MEMORY[0x1E12A2F50](v75, -1, -1);
      }

      (*(v69 + 8))(v71, v70);
      return 3;
    }
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v61 = type metadata accessor for Logger();
  __swift_project_value_buffer(v61, static Logger.executor);
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.debug.getter();
  v64 = os_log_type_enabled(v62, v63);
  v66 = v77;
  v65 = v78;
  v67 = v76;
  if (v64)
  {
    v68 = swift_slowAlloc();
    *v68 = 0;
    _os_log_impl(&dword_1DC659000, v62, v63, "[NotebookAffinityScorer] No reminders found in entities, returning .low", v68, 2u);
    MEMORY[0x1E12A2F50](v68, -1, -1);
  }

  (*(v65 + 8))(v67, v66);
  return 1;
}

SiriKitRuntime::NotificationAffinityScorer __swiftcall NotificationAffinityScorer.init()()
{
  v0 = 0x80000001DCA7CBA0;
  v1 = 0xD00000000000002ELL;
  result.bundleIdentifier._object = v0;
  result.bundleIdentifier._countAndFlagsBits = v1;
  return result;
}

uint64_t specialized NotificationAffinityScorer.isAmbiguousRead(task:)()
{
  static UsoTask_CodegenConverter.convert(task:)();
  if (!v4)
  {
    goto LABEL_5;
  }

  outlined init with copy of Any?(v3, v2);
  type metadata accessor for UsoTask_read_uso_NoEntity();
  if (!swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
LABEL_5:
    v0 = 0;
    goto LABEL_6;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  v0 = 1;
LABEL_6:
  outlined destroy of Any?(v3);
  return v0;
}

uint64_t specialized NotificationAffinityScorer.isSalientNotification(_:)()
{
  v19 = type metadata accessor for RREntity();
  v0 = *(v19 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for RRCandidate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  SiriEnvironment.salientEntitiesProvider.getter();
  v9 = dispatch thunk of SalientEntitiesDataProvider.salientEntities.getter();

  v18 = *(v9 + 16);
  if (!v18)
  {
LABEL_8:

    return 0;
  }

  v10 = 0;
  v17 = v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v11 = (v0 + 8);
  while (1)
  {
    if (v10 >= *(v9 + 16))
    {
      __break(1u);
      goto LABEL_14;
    }

    (*(v5 + 16))(v8, v17 + *(v5 + 72) * v10, v4);
    RRCandidate.entity.getter();
    (*(v5 + 8))(v8, v4);
    RREntity.usoEntity.getter();
    (*v11)(v3, v19);
    static UsoEntity_CodeGenConverter.convert(entity:)();

    if (v22)
    {
      break;
    }

LABEL_3:
    ++v10;
    outlined destroy of Any?(v21);
    if (v18 == v10)
    {
      goto LABEL_8;
    }
  }

  outlined init with copy of Any?(v21, v20);
  type metadata accessor for UsoEntity_common_Notification();
  if (!swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    goto LABEL_3;
  }

  if (one-time initialization token for executor == -1)
  {
    goto LABEL_10;
  }

LABEL_14:
  swift_once();
LABEL_10:
  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.executor);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1DC659000, v14, v15, "NotificationAffinityScorer isSalientNotification | salient notification in entity pool", v16, 2u);
    MEMORY[0x1E12A2F50](v16, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  outlined destroy of Any?(v21);
  return 1;
}

uint64_t specialized NotificationAffinityScorer.score(input:environment:)()
{
  v0 = type metadata accessor for Parse();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for USOParse();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Input.parse.getter();
  if ((*(v1 + 88))(v4, v0) != *MEMORY[0x1E69D0168])
  {
    (*(v1 + 8))(v4, v0);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.executor);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1DC659000, v12, v13, "NotificationAffinityScorer score | unexpected parse, returning default affinity", v14, 2u);
      MEMORY[0x1E12A2F50](v14, -1, -1);

      return 2;
    }

    return 2;
  }

  (*(v1 + 96))(v4, v0);
  (*(v6 + 32))(v9, v4, v5);
  if (!specialized static AffinityScorerUtils.getTask(_:)())
  {
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
      _os_log_impl(&dword_1DC659000, v16, v17, "NotificationAffinityScorer score | unable to obtain task, returning default affinity", v18, 2u);
      MEMORY[0x1E12A2F50](v18, -1, -1);

      (*(v6 + 8))(v9, v5);
      return 2;
    }

    goto LABEL_26;
  }

  if ((specialized NotificationAffinityScorer.isAmbiguousRead(task:)() & 1) == 0)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.executor);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v10 = 2;
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1DC659000, v20, v21, "NotificationAffinityScorer score | not an ambiguous read task, returning default affinity", v22, 2u);
      MEMORY[0x1E12A2F50](v22, -1, -1);

      (*(v6 + 8))(v9, v5);
      return v10;
    }

LABEL_26:
    (*(v6 + 8))(v9, v5);
    return 2;
  }

  if (specialized NotificationAffinityScorer.isSalientNotification(_:)())
  {
    (*(v6 + 8))(v9, v5);

    return 3;
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.executor);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1DC659000, v24, v25, "NotificationAffinityScorer score | no salient notification, returning low affinity", v26, 2u);
      MEMORY[0x1E12A2F50](v26, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
    return 1;
  }
}

uint64_t outlined init with copy of ServerFallbackReason?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OfflineServerFallbackRule.__allocating_init(networkAvailabilityProvider:coreTelephonyServiceProvider:fallbackReason:processInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v9 = a4[3];
  v10 = a4[4];
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a4, v9);
  v12 = specialized OfflineServerFallbackRule.__allocating_init(networkAvailabilityProvider:coreTelephonyServiceProvider:fallbackReason:processInfo:)(a1, a2, a3, v11, v4, v9, v10);
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  return v12;
}

uint64_t OfflineServerFallbackRule.init(networkAvailabilityProvider:coreTelephonyServiceProvider:fallbackReason:processInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v9 = a4[3];
  v10 = a4[4];
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a4, v9);
  v12 = *(*(v9 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v13);
  v17 = specialized OfflineServerFallbackRule.init(networkAvailabilityProvider:coreTelephonyServiceProvider:fallbackReason:processInfo:)(a1, a2, a3, v15, v4, v9, v10);
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  return v17;
}

SiriKitRuntime::PreExecutionDecision __swiftcall OfflineServerFallbackRule.evaluate()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v28 - v3;
  v5 = v0[3];
  if (dispatch thunk of NetworkAvailability.isAvailable.getter())
  {
    return 11;
  }

  if ((*(*v0 + 136))())
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.conversationBridge);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v29 = v11;
      *v10 = 136315138;
      outlined init with copy of ServerFallbackReason?(v0 + OBJC_IVAR____TtC14SiriKitRuntime25OfflineServerFallbackRule_fallbackReason, v4);
      v12 = type metadata accessor for ServerFallbackReason();
      v13 = *(v12 - 8);
      if ((*(v13 + 48))(v4, 1, v12) == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v4, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
        v14 = 0x80000001DCA84F50;
        v15 = 0xD000000000000026;
      }

      else
      {
        v25 = ServerFallbackReason.rawValue.getter();
        v14 = v26;
        (*(v13 + 8))(v4, v12);
        v15 = v25;
      }

      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v14, &v29);

      *(v10 + 4) = v27;
      _os_log_impl(&dword_1DC659000, v8, v9, "Device is offline and attempting to fallback to the server because of an error: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x1E12A2F50](v11, -1, -1);
      MEMORY[0x1E12A2F50](v10, -1, -1);
    }

    return 6;
  }

  else
  {
    v16 = dispatch thunk of NetworkAvailability.isInAirplaneMode.getter();
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.conversationBridge);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v29 = v21;
      *v20 = 136315138;
      if (v16)
      {
        v22 = 0x64656C62616E65;
      }

      else
      {
        v22 = 0x64656C6261736964;
      }

      if (v16)
      {
        v23 = 0xE700000000000000;
      }

      else
      {
        v23 = 0xE800000000000000;
      }

      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v29);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_1DC659000, v18, v19, "Device is offline with airplane mode %s. Rejecting server fallback.", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x1E12A2F50](v21, -1, -1);
      MEMORY[0x1E12A2F50](v20, -1, -1);
    }

    if (v16)
    {
      return 5;
    }

    else
    {
      return 4;
    }
  }
}

Swift::Bool __swiftcall OfflineServerFallbackRule.isFallbackReasonAnError()()
{
  v1 = type metadata accessor for ServerFallbackReason();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v46 = &v41[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20ServerFallbackReasonOSg_ADtMd, &_s16SiriMessageTypes20ServerFallbackReasonOSg_ADtMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v53 = &v41[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v41[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v51 = &v41[-v16];
  MEMORY[0x1EEE9AC00](v17);
  v54 = &v41[-v18];
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v41[-v21];
  v23 = OBJC_IVAR____TtC14SiriKitRuntime25OfflineServerFallbackRule_fallbackReason;
  v24 = *MEMORY[0x1E69D0768];
  v48 = *(v2 + 104);
  v48(&v41[-v21], v24, v1, v20);
  v47 = *(v2 + 56);
  v47(v22, 0, 1, v1);
  v49 = v23;
  v50 = v5;
  v25 = *(v5 + 48);
  v52 = v0;
  outlined init with copy of ServerFallbackReason?(v0 + v23, v10);
  outlined init with copy of ServerFallbackReason?(v22, &v10[v25]);
  v26 = v2;
  v27 = *(v2 + 48);
  if (v27(v10, 1, v1) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v22, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
    if (v27(&v10[v25], 1, v1) == 1)
    {
      v28 = v10;
LABEL_10:
      outlined destroy of ReferenceResolutionClientProtocol?(v28, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
LABEL_15:
      v32 = 1;
      return v32 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of ServerFallbackReason?(v10, v54);
  v45 = v27;
  if (v27(&v10[v25], 1, v1) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v22, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
    (*(v2 + 8))(v54, v1);
    v27 = v45;
LABEL_6:
    outlined destroy of ReferenceResolutionClientProtocol?(v10, &_s16SiriMessageTypes20ServerFallbackReasonOSg_ADtMd, &_s16SiriMessageTypes20ServerFallbackReasonOSg_ADtMR);
    goto LABEL_7;
  }

  v33 = *(v2 + 32);
  v43 = v14;
  v34 = v46;
  v33(v46, &v10[v25], v1);
  lazy protocol witness table accessor for type ServerFallbackReason and conformance ServerFallbackReason();
  v42 = dispatch thunk of static Equatable.== infix(_:_:)();
  v44 = v2;
  v35 = *(v2 + 8);
  v36 = v34;
  v14 = v43;
  v35(v36, v1);
  outlined destroy of ReferenceResolutionClientProtocol?(v22, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  v35(v54, v1);
  v26 = v44;
  outlined destroy of ReferenceResolutionClientProtocol?(v10, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  v27 = v45;
  if (v42)
  {
    goto LABEL_15;
  }

LABEL_7:
  v29 = v51;
  (v48)(v51, *MEMORY[0x1E69D0770], v1);
  v47(v29, 0, 1, v1);
  v30 = *(v50 + 48);
  v31 = v53;
  outlined init with copy of ServerFallbackReason?(v52 + v49, v53);
  outlined init with copy of ServerFallbackReason?(v29, &v31[v30]);
  if (v27(v31, 1, v1) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v29, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
    if (v27(&v31[v30], 1, v1) == 1)
    {
      v28 = v31;
      goto LABEL_10;
    }
  }

  else
  {
    outlined init with copy of ServerFallbackReason?(v31, v14);
    if (v27(&v31[v30], 1, v1) != 1)
    {
      v37 = v46;
      (*(v26 + 32))(v46, &v31[v30], v1);
      lazy protocol witness table accessor for type ServerFallbackReason and conformance ServerFallbackReason();
      v32 = dispatch thunk of static Equatable.== infix(_:_:)();
      v38 = v14;
      v39 = *(v26 + 8);
      v39(v37, v1);
      outlined destroy of ReferenceResolutionClientProtocol?(v29, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
      v39(v38, v1);
      outlined destroy of ReferenceResolutionClientProtocol?(v31, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
      return v32 & 1;
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v29, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
    (*(v26 + 8))(v14, v1);
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v31, &_s16SiriMessageTypes20ServerFallbackReasonOSg_ADtMd, &_s16SiriMessageTypes20ServerFallbackReasonOSg_ADtMR);
  v32 = 0;
  return v32 & 1;
}

uint64_t OfflineServerFallbackRule.isLowPowerModeEnabled(processInfo:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 8))(v1, v2) & 1;
}

uint64_t OfflineServerFallbackRule.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime25OfflineServerFallbackRule_fallbackReason, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14SiriKitRuntime25OfflineServerFallbackRule_processInfo));
  return v0;
}

uint64_t OfflineServerFallbackRule.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime25OfflineServerFallbackRule_fallbackReason, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14SiriKitRuntime25OfflineServerFallbackRule_processInfo));
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t specialized OfflineServerFallbackRule.init(networkAvailabilityProvider:coreTelephonyServiceProvider:fallbackReason:processInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = (a5 + OBJC_IVAR____TtC14SiriKitRuntime25OfflineServerFallbackRule_processInfo);
  v13[3] = a6;
  v13[4] = a7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v13);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_0, a4, a6);
  *(a5 + 16) = 5;
  *(a5 + 24) = a1;
  outlined init with take of ServerFallbackReason?(a3, a5 + OBJC_IVAR____TtC14SiriKitRuntime25OfflineServerFallbackRule_fallbackReason);
  *(a5 + 32) = a2;
  return a5;
}

uint64_t specialized OfflineServerFallbackRule.__allocating_init(networkAvailabilityProvider:coreTelephonyServiceProvider:fallbackReason:processInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a6 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for OfflineServerFallbackRule();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  v20 = swift_allocObject();
  (*(v13 + 16))(v16, a4, a6);
  return specialized OfflineServerFallbackRule.init(networkAvailabilityProvider:coreTelephonyServiceProvider:fallbackReason:processInfo:)(a1, a2, a3, v16, v20, a6, a7);
}

unint64_t lazy protocol witness table accessor for type ServerFallbackReason and conformance ServerFallbackReason()
{
  result = lazy protocol witness table cache variable for type ServerFallbackReason and conformance ServerFallbackReason;
  if (!lazy protocol witness table cache variable for type ServerFallbackReason and conformance ServerFallbackReason)
  {
    type metadata accessor for ServerFallbackReason();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ServerFallbackReason and conformance ServerFallbackReason);
  }

  return result;
}

uint64_t type metadata accessor for OfflineServerFallbackRule()
{
  result = type metadata singleton initialization cache for OfflineServerFallbackRule;
  if (!type metadata singleton initialization cache for OfflineServerFallbackRule)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for OfflineServerFallbackRule()
{
  type metadata accessor for ServerFallbackReason?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for ServerFallbackReason?()
{
  if (!lazy cache variable for type metadata for ServerFallbackReason?)
  {
    type metadata accessor for ServerFallbackReason();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ServerFallbackReason?);
    }
  }
}

uint64_t outlined init with take of ServerFallbackReason?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t NodeIterator.next()()
{
  v1 = *v0;
  if (*v0)
  {
    v2 = *(*v1 + 112);
    *v0 = swift_weakLoadStrong();
  }

  return v1;
}

void *OrderedForest.__allocating_init()()
{
  result = swift_allocObject();
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void *OrderedForest.init()()
{
  result = v0;
  v0[2] = 0;
  v0[3] = 0;
  v0[4] = 0;
  return result;
}

Swift::Void __swiftcall OrderedForest.clear()()
{
  v1 = v0[2];
  v0[2] = 0;

  v2 = v0[3];
  v0[3] = 0;

  swift_beginAccess();
  v0[4] = 0;
}

uint64_t *OrderedForest.push(value:parentNode:)(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 80);
  type metadata accessor for Node();

  v6 = specialized Node.__allocating_init(value:parent:)(a1);
  if (a2)
  {
    v7 = *(*a2 + 104);
    swift_beginAccess();
    type metadata accessor for Array();

    Array.append(_:)();
    swift_endAccess();
  }

  OrderedForest._push(_:)(v6);
  return v6;
}

uint64_t type metadata accessor for Node()
{
  return __swift_instantiateGenericMetadata();
}

{
  return MEMORY[0x1EEE3ECE8]();
}

uint64_t *OrderedForest.replan(node:)(uint64_t a1)
{
  v3 = *(*v1 + 80);
  type metadata accessor for Node();
  v4 = *(*a1 + 128);
  v5 = *(*a1 + 88);
  v4();
  v6 = specialized Node.__allocating_init(value:parent:)(a1 + v5);
  v7 = specialized OrderedForest._recursiveRemove(_:)(a1);
  v8 = (*(*a1 + 152))(v7);
  v9 = *(*v6 + 104);
  swift_beginAccess();
  v10 = *(v6 + v9);
  *(v6 + v9) = v8;

  v11 = static Array._allocateUninitialized(_:)();
  v12 = *(*a1 + 104);
  swift_beginAccess();
  v13 = *(a1 + v12);
  *(a1 + v12) = v11;

  v14 = OrderedForest._push(_:)(a1);
  v15 = (v4)(v14);
  if (v15)
  {
    v16 = v15;
    v17 = *(*v15 + 152);
    v17();
    type metadata accessor for Array();
    swift_getWitnessTable();
    v18 = Collection.isEmpty.getter();

    if ((v18 & 1) == 0)
    {
      (v17)(v19);
      swift_getWitnessTable();
      v20 = _ArrayProtocol.filter(_:)();
      v21 = *(*v16 + 104);
      swift_beginAccess();
      v22 = *(v16 + v21);
      *(v16 + v21) = v20;

      Array.append(_:)();
      swift_endAccess();
    }
  }

  return v6;
}

uint64_t OrderedForest.remove(node:)(uint64_t *a1)
{
  specialized OrderedForest._recursiveRemove(_:)(a1);
  specialized OrderedForest._detachFromParent(_:)(a1);
}

uint64_t OrderedForest.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t OrderedForest.raise(node:)(uint64_t a1)
{
  v3 = *v1;
  v4 = OrderedForest._raise(_:)(a1);
  v5 = (*(*a1 + 128))(v4);
  if (v5)
  {
    v6 = v5;
    v7 = *(*v5 + 152);
    v7();
    v8 = *(v3 + 80);
    type metadata accessor for Node();
    type metadata accessor for Array();
    swift_getWitnessTable();
    v9 = Collection.isEmpty.getter();

    if ((v9 & 1) == 0)
    {
      (v7)(v10);
      swift_getWitnessTable();
      v11 = _ArrayProtocol.filter(_:)();
      v12 = *(*v6 + 104);
      swift_beginAccess();
      v13 = *(v6 + v12);
      *(v6 + v12) = v11;

      Array.append(_:)();
      swift_endAccess();
    }
  }
}

uint64_t OrderedForest.removeTree(node:)(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *(*a1 + 128);
  swift_retain_n();
  v5 = v4();

  if (v5)
  {
    do
    {

      v3 = v5;
      v6 = *(*v5 + 128);

      v8 = v6(v7);

      v5 = v8;
    }

    while (v8);
  }

  v9 = (*(*v2 + 240))(v3);

  return v9;
}

uint64_t OrderedForest.removeBranch(node:)(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *v1;
  v5 = *(*a1 + 128);
  swift_retain_n();
  v6 = v5();

  if (v6)
  {
    while (1)
    {
      v8 = (*(*v6 + 152))(v7);
      v9 = *(v4 + 80);
      v10 = type metadata accessor for Node();
      v11 = MEMORY[0x1E12A1750](v8, v10);

      if (v11 > 1)
      {
        break;
      }

      v12 = v6;

      v13 = *(*v6 + 128);

      v15 = v13(v14);

      v6 = v15;
      v3 = v12;
      if (!v15)
      {
        goto LABEL_7;
      }
    }
  }

  v12 = v3;
LABEL_7:
  v16 = (*(*v2 + 240))(v12);

  return v16;
}

uint64_t OrderedForest._push(_:)(uint64_t a1)
{
  if (v1[2] && v1[3])
  {
    v3 = *(*a1 + 112);
    v4 = v1[3];
    swift_weakAssign();
    v5 = v1[3];
    if (v5)
    {
      v6 = *(*v5 + 120);
      v7 = *(v5 + v6);
      *(v5 + v6) = a1;

      v8 = v1[3];
    }

    v1[3] = a1;
  }

  else
  {
    v1[3] = a1;
    swift_retain_n();

    v9 = v1[2];
    v1[2] = a1;
  }

  result = swift_beginAccess();
  v11 = v1[4];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    v1[4] = v13;
  }

  return result;
}

uint64_t OrderedForest._raise(_:)(uint64_t a1)
{
  v3 = *v1;
  OrderedForest._remove(_:)(a1);
  v4 = OrderedForest._push(_:)(a1);
  v5 = (*(*a1 + 152))(v4);
  v6 = *(v3 + 80);
  v7 = type metadata accessor for Node();
  if (MEMORY[0x1E12A1770](v5, v7))
  {
    v8 = 4;
    do
    {
      v9 = v8 - 4;
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        v11 = *(v5 + 8 * v8);

        v12 = v8 - 3;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_9;
        }
      }

      else
      {
        v11 = _ArrayBuffer._getElementSlowPath(_:)();
        v12 = v8 - 3;
        if (__OFADD__(v9, 1))
        {
LABEL_9:
          __break(1u);
          break;
        }
      }

      OrderedForest._raise(_:)(v11);

      ++v8;
    }

    while (v12 != MEMORY[0x1E12A1770](v5, v7));
  }
}

uint64_t OrderedForest._remove(_:)(uint64_t a1)
{
  v4 = v1[2];
  v3 = v1[3];
  if (v4)
  {
    v5 = v4 == a1;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    if (v4 == v3)
    {
      v1[2] = 0;

      v13 = v1[3];
      v1[3] = 0;
    }

    else
    {
      v1[2] = *(a1 + *(*a1 + 120));
    }

    goto LABEL_20;
  }

  if (v3)
  {
    v6 = v3 == a1;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v14 = *(*v3 + 112);
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v16 = *(*Strong + 120);
      v17 = *(Strong + v16);
      *(Strong + v16) = 0;
    }

    else
    {
    }

    v18 = swift_weakLoadStrong();

    v19 = v1[3];
    v1[3] = v18;
    goto LABEL_20;
  }

  v7 = *(*a1 + 112);
  v8 = swift_weakLoadStrong();
  if (v8)
  {
    v9 = *(*v8 + 120);
    v10 = *(v8 + v9);
    *(v8 + v9) = *(a1 + *(*a1 + 120));
  }

  v11 = *(a1 + *(*a1 + 120));
  if (v11)
  {
    swift_weakLoadStrong();
    v12 = *(*v11 + 112);
    swift_weakAssign();
LABEL_20:
  }

  v20 = *(*a1 + 112);
  swift_weakAssign();
  v21 = *(*a1 + 120);
  v22 = *(a1 + v21);
  *(a1 + v21) = 0;

  result = swift_beginAccess();
  v24 = v1[4];
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    v1[4] = v26;
  }

  return result;
}

uint64_t OrderedForest.debugDescription(printer:)(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  if (!*(v2 + 16))
  {
    return 0x54207974706D453CLL;
  }

  v7[0] = 0;
  v7[1] = 0xE000000000000000;

  OrderedForest.debugDescription(for:printer:level:result:)(v5, a1, a2, 0, v7);

  return v7[0];
}

uint64_t OrderedForest.debugDescription(for:printer:level:result:)(uint64_t result, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4 < 0)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    return result;
  }

  v9 = result;
  v10 = *v5;
  if (a4)
  {
    v11 = a4;
    do
    {
      MEMORY[0x1E12A1580](8224, 0xE200000000000000);
      --v11;
    }

    while (v11);
  }

  v12 = a2(v9 + *(*v9 + 88));
  MEMORY[0x1E12A1580](v12);

  v13 = MEMORY[0x1E12A1580](10, 0xE100000000000000);
  v14 = (*(*v9 + 152))(v13);
  v15 = *(v10 + 80);
  v16 = type metadata accessor for Node();
  result = MEMORY[0x1E12A1770](v14, v16);
  if (result)
  {
    v17 = __OFADD__(a4, 1);
    v18 = a4 + 1;
    if (!v17)
    {
      v19 = 4;
      while (1)
      {
        v20 = v19 - 4;
        IsNativeType = Array._hoistableIsNativeTypeChecked()();
        Array._checkSubscript(_:wasNativeTypeChecked:)();
        if (IsNativeType)
        {
          v22 = *(v14 + 8 * v19);

          v23 = v19 - 3;
          if (__OFADD__(v20, 1))
          {
            goto LABEL_14;
          }
        }

        else
        {
          v22 = _ArrayBuffer._getElementSlowPath(_:)();
          v23 = v19 - 3;
          if (__OFADD__(v20, 1))
          {
LABEL_14:
            __break(1u);
            goto LABEL_15;
          }
        }

        OrderedForest.debugDescription(for:printer:level:result:)(v22, a2, a3, v18, a5);

        ++v19;
        if (v23 == MEMORY[0x1E12A1770](v14, v16))
        {
          goto LABEL_15;
        }
      }
    }

    goto LABEL_19;
  }

LABEL_15:
}