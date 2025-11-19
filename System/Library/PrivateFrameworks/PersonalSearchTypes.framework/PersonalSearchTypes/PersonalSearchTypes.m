uint64_t one-time initialization function for client()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logging.client);
  __swift_project_value_buffer(v0, static Logging.client);
  return Logger.init(subsystem:category:)();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t one-time initialization function for server()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logging.server);
  __swift_project_value_buffer(v0, static Logging.server);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for endpoint()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logging.endpoint);
  __swift_project_value_buffer(v0, static Logging.endpoint);
  return Logger.init(subsystem:category:)();
}

uint64_t static Logging.client.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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

uint64_t getEnumTagSinglePayload for Logging(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for Logging(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x25E4753ECLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

PersonalSearchTypes::PersonalSearchQueryOptions __swiftcall PersonalSearchQueryOptions.init(maxResult:locale:)(Swift::Int_optional maxResult, Swift::String_optional locale)
{
  *v2 = maxResult.value;
  *(v2 + 8) = maxResult.is_nil;
  *(v2 + 16) = locale;
  result.locale = locale;
  result.maxResult = maxResult;
  return result;
}

uint64_t PersonalSearchQueryOptions.maxResult.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t PersonalSearchQueryOptions.locale.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_30();
}

BOOL static PersonalSearchQueryOptions.== infix(_:_:)(uint64_t a1, uint64_t a2)
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
      v8 = *(a2 + 8);
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  if (v6)
  {
    if (!v7)
    {
      return 0;
    }

    v9 = v5 == *(a2 + 16) && v6 == v7;
    return v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0;
  }

  return !v7;
}

uint64_t PersonalSearchQueryOptions.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C7573655278616DLL && a2 == 0xE900000000000074;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t PersonalSearchQueryOptions.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x656C61636F6CLL;
  }

  else
  {
    return 0x6C7573655278616DLL;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PersonalSearchQueryOptions.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = PersonalSearchQueryOptions.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance PersonalSearchQueryOptions.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = PersonalSearchQueryOptions.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PersonalSearchQueryOptions.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchQueryOptions.CodingKeys and conformance PersonalSearchQueryOptions.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PersonalSearchQueryOptions.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchQueryOptions.CodingKeys and conformance PersonalSearchQueryOptions.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void PersonalSearchQueryOptions.encode(to:)()
{
  OUTLINED_FUNCTION_17();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE12QueryOptionsV10CodingKeys33_AF5D5F9AA5FE3334D5932A7F479568EDLLOGMd, &_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE12QueryOptionsV10CodingKeys33_AF5D5F9AA5FE3334D5932A7F479568EDLLOGMR);
  OUTLINED_FUNCTION_1(v2);
  v11 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_13();
  v6 = *v0;
  v7 = *(v0 + 8);
  OUTLINED_FUNCTION_36();
  lazy protocol witness table accessor for type PersonalSearchQueryOptions.CodingKeys and conformance PersonalSearchQueryOptions.CodingKeys();
  OUTLINED_FUNCTION_29();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  OUTLINED_FUNCTION_6();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v1)
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_6();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  v8 = *(v11 + 8);
  v9 = OUTLINED_FUNCTION_16();
  v10(v9);
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_20();
}

void PersonalSearchQueryOptions.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_17();
  a22 = v24;
  a23 = v25;
  v27 = v26;
  v29 = v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE12QueryOptionsV10CodingKeys33_AF5D5F9AA5FE3334D5932A7F479568EDLLOGMd, &_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE12QueryOptionsV10CodingKeys33_AF5D5F9AA5FE3334D5932A7F479568EDLLOGMR);
  OUTLINED_FUNCTION_1(v30);
  v32 = v31;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20]();
  v36 = &a9 - v35;
  OUTLINED_FUNCTION_24();
  lazy protocol witness table accessor for type PersonalSearchQueryOptions.CodingKeys and conformance PersonalSearchQueryOptions.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v23)
  {
    a13 = 0;
    v37 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v39 = v38;
    OUTLINED_FUNCTION_27();
    v40 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v41 = v36;
    v43 = v42;
    (*(v32 + 8))(v41, v30);
    *v29 = v37;
    *(v29 + 8) = v39 & 1;
    *(v29 + 16) = v40;
    *(v29 + 24) = v43;
  }

  __swift_destroy_boxed_opaque_existential_1(v27);
  OUTLINED_FUNCTION_20();
}

PersonalSearchTypes::StructuredQuery __swiftcall StructuredQuery.init(searchTerms:filterType:)(Swift::OpaquePointer searchTerms, Swift::OpaquePointer filterType)
{
  v2->_rawValue = searchTerms._rawValue;
  v2[1]._rawValue = filterType._rawValue;
  result.filterType = filterType;
  result.searchTerms = searchTerms;
  return result;
}

uint64_t static StructuredQuery.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = OUTLINED_FUNCTION_30();

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v4, v5);
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ19PersonalSearchTypes0bC6ResultV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v235 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v13);
  v15 = &v235 - v14;
  v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSg_ADtMd, &_s10Foundation3URLVSg_ADtMR);
  v16 = *(*(v252 - 8) + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v17);
  v258 = &v235 - v18;
  v253 = type metadata accessor for PersonalSearchResult(0);
  v19 = *(*(v253 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v253);
  v259 = &v235 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v235 - v23;
  v25 = *(a1 + 16);
  if (v25 != *(a2 + 16))
  {
    return 0;
  }

  if (!v25 || a1 == a2)
  {
    return 1;
  }

  v26 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v27 = a1 + v26;
  v257 = a2 + v26;
  v239 = (v7 + 32);
  v240 = v11;
  v241 = (v7 + 8);
  v242 = v15;
  v243 = *(v22 + 72);
  v245 = v4;
  while (1)
  {
    outlined init with copy of PersonalSearchResult(v27, v24);
    v251 = v27;
    v28 = v259;
    outlined init with copy of PersonalSearchResult(v257, v259);
    v30 = *v24;
    v29 = *(v24 + 1);
    v32 = *(v24 + 2);
    v31 = *(v24 + 3);
    v33 = *(v24 + 4);
    v34 = *(v24 + 5);
    v35 = v24[48];
    v37 = *v28;
    v36 = *(v28 + 8);
    v39 = *(v28 + 16);
    v38 = *(v28 + 24);
    v41 = *(v28 + 32);
    v40 = *(v28 + 40);
    v42 = *(v28 + 48);
    v255 = *v28;
    v256 = v32;
    v254 = v36;
    if (v35)
    {
      break;
    }

    v75 = v33;
    if (v42)
    {
      v238 = v41;
      v244 = v40;
      outlined copy of PersonalSearchResult.ResultIdentifier(v37, v36, v39, v38, v41, v40, 1);
      v186 = OUTLINED_FUNCTION_2();
      outlined copy of PersonalSearchResult.ResultIdentifier(v186, v187, v188, v189, v190, v191, v192);
      v193 = OUTLINED_FUNCTION_2();
      outlined consume of PersonalSearchResult.ResultIdentifier(v193, v194, v195, v196, v197, v198, v199);
      v181 = OUTLINED_FUNCTION_8();
      v185 = v238;
      goto LABEL_68;
    }

    v246 = v30;
    v247 = v29;
    v76 = v30 == v37 && v29 == v36;
    v249 = v39;
    if (!v76)
    {
      v77 = v37;
      v78 = v36;
      v79 = v31;
      v80 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v32 = v256;
      v31 = v79;
      v39 = v249;
      v37 = v77;
      v36 = v78;
      if ((v80 & 1) == 0)
      {
        goto LABEL_63;
      }
    }

    if (v32 != v39 || v31 != v38)
    {
      v82 = v36;
      v83 = v31;
      v84 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v37 = v255;
      v31 = v83;
      v36 = v82;
      if ((v84 & 1) == 0)
      {
LABEL_63:
        OUTLINED_FUNCTION_32();
        v244 = v40;
        outlined copy of PersonalSearchResult.ResultIdentifier(v200, v201, v202, v203, v204, v40, 0);
        v205 = OUTLINED_FUNCTION_2();
        outlined copy of PersonalSearchResult.ResultIdentifier(v205, v206, v207, v208, v209, v210, v211);
        v212 = OUTLINED_FUNCTION_2();
        outlined consume of PersonalSearchResult.ResultIdentifier(v212, v213, v214, v215, v216, v217, v218);
        v181 = OUTLINED_FUNCTION_8();
        v185 = v238;
        goto LABEL_64;
      }
    }

    v248 = v31;
    v85 = v75;
    v86 = v34;
    if (v75 == v41 && v34 == v40)
    {
      outlined copy of PersonalSearchResult.ResultIdentifier(v37, v36, v39, v38, v75, v34, 0);
      OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_22();
      outlined copy of PersonalSearchResult.ResultIdentifier(v134, v135, v136, v137, v138, v139, v140);
      OUTLINED_FUNCTION_22();
      outlined consume of PersonalSearchResult.ResultIdentifier(v141, v142, v143, v144, v145, v146, v147);
      OUTLINED_FUNCTION_22();
      goto LABEL_37;
    }

    v88 = v41;
    v89 = v36;
    v90 = v40;
    v91 = v38;
    v236 = v38;
    v92 = v85;
    v250 = v86;
    v237 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v93 = OUTLINED_FUNCTION_11();
    outlined copy of PersonalSearchResult.ResultIdentifier(v93, v94, v95, v96, v88, v40, 0);
    v98 = v246;
    v97 = v247;
    OUTLINED_FUNCTION_33();
    v99 = v250;
    outlined copy of PersonalSearchResult.ResultIdentifier(v100, v101, v102, v103, v92, v250, 0);
    outlined consume of PersonalSearchResult.ResultIdentifier(v98, v97, v89, v91, v92, v99, 0);
    outlined consume of PersonalSearchResult.ResultIdentifier(v255, v254, v249, v236, v88, v90, 0);
    v74 = v245;
    if ((v237 & 1) == 0)
    {
      goto LABEL_70;
    }

LABEL_38:
    v148 = *(v253 + 20);
    v149 = &v24[v148];
    v150 = v259 + v148;
    v151 = *&v24[v148] == *(v259 + v148) && *&v24[v148 + 8] == *(v259 + v148 + 8);
    if (!v151 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_70;
    }

    v152 = *(v149 + 3);
    v153 = *(v150 + 24);
    if (v152)
    {
      if (!v153)
      {
        goto LABEL_70;
      }

      v154 = *(v149 + 2) == *(v150 + 16) && v152 == v153;
      if (!v154 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_70;
      }
    }

    else if (v153)
    {
      goto LABEL_70;
    }

    v155 = *(type metadata accessor for PersonalSearchResult.DisplayRepresentation(0) + 24);
    v156 = *(v252 + 48);
    v157 = &v149[v155];
    v158 = v258;
    outlined init with copy of URL?(v157, v258);
    outlined init with copy of URL?(v150 + v155, v158 + v156);
    OUTLINED_FUNCTION_35(v158);
    if (v43)
    {
      OUTLINED_FUNCTION_35(v258 + v156);
      if (!v43)
      {
        goto LABEL_66;
      }

      outlined destroy of (URL?, URL?)(v258, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }

    else
    {
      v159 = v258;
      v160 = v242;
      outlined init with copy of URL?(v258, v242);
      OUTLINED_FUNCTION_35(v159 + v156);
      if (v161)
      {
        (*v241)(v160, v74);
LABEL_66:
        outlined destroy of (URL?, URL?)(v258, &_s10Foundation3URLVSg_ADtMd, &_s10Foundation3URLVSg_ADtMR);
        goto LABEL_70;
      }

      v162 = v258;
      v163 = v258 + v156;
      v164 = v240;
      (*v239)(v240, v163, v74);
      lazy protocol witness table accessor for type URL and conformance URL();
      LODWORD(v256) = dispatch thunk of static Equatable.== infix(_:_:)();
      v165 = *v241;
      (*v241)(v164, v74);
      v165(v160, v74);
      outlined destroy of (URL?, URL?)(v162, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      if ((v256 & 1) == 0)
      {
        goto LABEL_70;
      }
    }

    outlined destroy of PersonalSearchResult(v259);
    outlined destroy of PersonalSearchResult(v24);
    v257 += v243;
    v27 = v251 + v243;
    if (!--v25)
    {
      return 1;
    }
  }

  v247 = v33;
  v250 = v34;
  v244 = v40;
  if ((v42 & 1) == 0)
  {
    outlined copy of PersonalSearchResult.ResultIdentifier(v37, v36, v39, v38, v41, v40, 0);
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_10();
    outlined copy of PersonalSearchResult.ResultIdentifier(v167, v168, v169, v170, v171, v172, v173);
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_10();
    outlined consume of PersonalSearchResult.ResultIdentifier(v174, v175, v176, v177, v178, v179, v180);
    v181 = OUTLINED_FUNCTION_8();
    v185 = v41;
LABEL_64:
    v219 = v244;
    v220 = 0;
    goto LABEL_69;
  }

  v43 = v30 == v37 && v29 == v36;
  if (v43)
  {
    goto LABEL_12;
  }

  v44 = v37;
  v249 = v39;
  v45 = v36;
  v46 = v31;
  v47 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v32 = v256;
  v31 = v46;
  v39 = v249;
  if (v47)
  {
LABEL_12:
    if (v32 == v39 && v31 == v38)
    {
      v104 = v32;
      v105 = v31;
      OUTLINED_FUNCTION_10();
      outlined copy of PersonalSearchResult.ResultIdentifier(v106, v107, v108, v109, v110, v111, v112);
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_10();
      outlined copy of PersonalSearchResult.ResultIdentifier(v113, v114, v115, v116, v117, v118, v119);
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_10();
      outlined consume of PersonalSearchResult.ResultIdentifier(v120, v121, v122, v123, v124, v125, v126);
      v128 = v254;
      v127 = v255;
      v129 = v104;
      v130 = v105;
      v131 = v41;
      v132 = v244;
      v133 = 1;
LABEL_37:
      outlined consume of PersonalSearchResult.ResultIdentifier(v127, v128, v129, v130, v131, v132, v133);
      v74 = v245;
      goto LABEL_38;
    }

    v248 = v31;
    LODWORD(v246) = _stringCompareWithSmolCheck(_:_:expecting:)();
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_10();
    outlined copy of PersonalSearchResult.ResultIdentifier(v49, v50, v51, v52, v53, v54, v55);
    OUTLINED_FUNCTION_10();
    outlined copy of PersonalSearchResult.ResultIdentifier(v56, v57, v58, v59, v60, v61, v62);
    OUTLINED_FUNCTION_10();
    outlined consume of PersonalSearchResult.ResultIdentifier(v63, v64, v65, v66, v67, v68, v69);
    v70 = OUTLINED_FUNCTION_8();
    outlined consume of PersonalSearchResult.ResultIdentifier(v70, v71, v72, v73, v238, v244, 1);
    v74 = v245;
    if ((v246 & 1) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_38;
  }

  outlined copy of PersonalSearchResult.ResultIdentifier(v44, v45, v249, v38, v41, v40, 1);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  outlined copy of PersonalSearchResult.ResultIdentifier(v221, v222, v223, v224, v225, v226, v227);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  outlined consume of PersonalSearchResult.ResultIdentifier(v228, v229, v230, v231, v232, v233, v234);
  v181 = OUTLINED_FUNCTION_8();
  v185 = v41;
LABEL_68:
  v219 = v244;
  v220 = 1;
LABEL_69:
  outlined consume of PersonalSearchResult.ResultIdentifier(v181, v182, v183, v184, v185, v219, v220);
LABEL_70:
  outlined destroy of PersonalSearchResult(v259);
  outlined destroy of PersonalSearchResult(v24);
  return 0;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ19PersonalSearchTypes20EntityTypeIdentifierV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a2 + 56);
    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 1);
      v6 = *i;
      v8 = *(v3 - 1);
      v7 = *v3;
      v9 = *(i - 3) == *(v3 - 3) && *(i - 2) == *(v3 - 2);
      if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      if (v6)
      {
        if (!v7)
        {
          return 0;
        }

        v10 = v5 == v8 && v6 == v7;
        if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v7)
      {
        return 0;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

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
  }

  return 0;
}

uint64_t StructuredQuery.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6554686372616573 && a2 == 0xEB00000000736D72;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79547265746C6966 && a2 == 0xEA00000000006570)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t StructuredQuery.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x79547265746C6966;
  }

  else
  {
    return 0x6554686372616573;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance StructuredQuery.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = StructuredQuery.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance StructuredQuery.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StructuredQuery.CodingKeys and conformance StructuredQuery.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance StructuredQuery.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StructuredQuery.CodingKeys and conformance StructuredQuery.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void StructuredQuery.encode(to:)()
{
  OUTLINED_FUNCTION_17();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19PersonalSearchTypes15StructuredQueryV10CodingKeys33_AF5D5F9AA5FE3334D5932A7F479568EDLLOGMd, &_ss22KeyedEncodingContainerVy19PersonalSearchTypes15StructuredQueryV10CodingKeys33_AF5D5F9AA5FE3334D5932A7F479568EDLLOGMR);
  OUTLINED_FUNCTION_1(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_13();
  v8 = *v0;
  v14 = v0[1];
  v9 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v10 = lazy protocol witness table accessor for type StructuredQuery.CodingKeys and conformance StructuredQuery.CodingKeys();

  OUTLINED_FUNCTION_29();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
  OUTLINED_FUNCTION_12();
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (!v10)
  {
    OUTLINED_FUNCTION_12();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  v11 = *(v5 + 8);
  v12 = OUTLINED_FUNCTION_16();
  v13(v12);
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_20();
}

void StructuredQuery.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_17();
  v12 = v11;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19PersonalSearchTypes15StructuredQueryV10CodingKeys33_AF5D5F9AA5FE3334D5932A7F479568EDLLOGMd, &_ss22KeyedDecodingContainerVy19PersonalSearchTypes15StructuredQueryV10CodingKeys33_AF5D5F9AA5FE3334D5932A7F479568EDLLOGMR);
  OUTLINED_FUNCTION_1(v15);
  v17 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_24();
  lazy protocol witness table accessor for type StructuredQuery.CodingKeys and conformance StructuredQuery.CodingKeys();
  OUTLINED_FUNCTION_25();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_15();
    v20 = *(v17 + 8);
    v21 = OUTLINED_FUNCTION_23();
    v22(v21);
    *v14 = a10;
    v14[1] = a10;

    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  OUTLINED_FUNCTION_20();
}

PersonalSearchTypes::EntityTypeIdentifier __swiftcall EntityTypeIdentifier.init(bundleId:entityTypeName:)(Swift::String bundleId, Swift::String_optional entityTypeName)
{
  v2->value = bundleId;
  v2[1] = entityTypeName;
  result.entityTypeName = entityTypeName;
  result.bundleId = bundleId;
  return result;
}

uint64_t EntityTypeIdentifier.bundleId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_30();
}

uint64_t static EntityTypeIdentifier.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PersonalSearchQueryOptions.CodingKeys and conformance PersonalSearchQueryOptions.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PersonalSearchQueryOptions.CodingKeys and conformance PersonalSearchQueryOptions.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchQueryOptions.CodingKeys and conformance PersonalSearchQueryOptions.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchQueryOptions.CodingKeys and conformance PersonalSearchQueryOptions.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchQueryOptions.CodingKeys and conformance PersonalSearchQueryOptions.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchQueryOptions.CodingKeys and conformance PersonalSearchQueryOptions.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchQueryOptions.CodingKeys and conformance PersonalSearchQueryOptions.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchQueryOptions.CodingKeys and conformance PersonalSearchQueryOptions.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchQueryOptions.CodingKeys and conformance PersonalSearchQueryOptions.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchQueryOptions.CodingKeys and conformance PersonalSearchQueryOptions.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchQueryOptions.CodingKeys and conformance PersonalSearchQueryOptions.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchQueryOptions.CodingKeys and conformance PersonalSearchQueryOptions.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchQueryOptions.CodingKeys and conformance PersonalSearchQueryOptions.CodingKeys);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t lazy protocol witness table accessor for type StructuredQuery.CodingKeys and conformance StructuredQuery.CodingKeys()
{
  result = lazy protocol witness table cache variable for type StructuredQuery.CodingKeys and conformance StructuredQuery.CodingKeys;
  if (!lazy protocol witness table cache variable for type StructuredQuery.CodingKeys and conformance StructuredQuery.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StructuredQuery.CodingKeys and conformance StructuredQuery.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StructuredQuery.CodingKeys and conformance StructuredQuery.CodingKeys;
  if (!lazy protocol witness table cache variable for type StructuredQuery.CodingKeys and conformance StructuredQuery.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StructuredQuery.CodingKeys and conformance StructuredQuery.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StructuredQuery.CodingKeys and conformance StructuredQuery.CodingKeys;
  if (!lazy protocol witness table cache variable for type StructuredQuery.CodingKeys and conformance StructuredQuery.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StructuredQuery.CodingKeys and conformance StructuredQuery.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StructuredQuery.CodingKeys and conformance StructuredQuery.CodingKeys;
  if (!lazy protocol witness table cache variable for type StructuredQuery.CodingKeys and conformance StructuredQuery.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StructuredQuery.CodingKeys and conformance StructuredQuery.CodingKeys);
  }

  return result;
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

uint64_t lazy protocol witness table accessor for type [String] and conformance <A> [A](unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t EntityTypeIdentifier.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7954797469746E65 && a2 == 0xEE00656D614E6570)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

Swift::Int PersonalSearchQueryOptions.CodingKeys.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x25F8B4470](a1 & 1);
  return Hasher._finalize()();
}

uint64_t EntityTypeIdentifier.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x7954797469746E65;
  }

  else
  {
    return 0x6449656C646E7562;
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PersonalSearchQueryOptions.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x25F8B4470](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance EntityTypeIdentifier.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = EntityTypeIdentifier.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance EntityTypeIdentifier.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type EntityTypeIdentifier.CodingKeys and conformance EntityTypeIdentifier.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance EntityTypeIdentifier.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type EntityTypeIdentifier.CodingKeys and conformance EntityTypeIdentifier.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void EntityTypeIdentifier.encode(to:)()
{
  OUTLINED_FUNCTION_17();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19PersonalSearchTypes20EntityTypeIdentifierV10CodingKeys33_AF5D5F9AA5FE3334D5932A7F479568EDLLOGMd, &_ss22KeyedEncodingContainerVy19PersonalSearchTypes20EntityTypeIdentifierV10CodingKeys33_AF5D5F9AA5FE3334D5932A7F479568EDLLOGMR);
  OUTLINED_FUNCTION_1(v2);
  v11 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_13();
  v6 = *v0;
  v7 = v0[1];
  OUTLINED_FUNCTION_36();
  lazy protocol witness table accessor for type EntityTypeIdentifier.CodingKeys and conformance EntityTypeIdentifier.CodingKeys();
  OUTLINED_FUNCTION_29();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  OUTLINED_FUNCTION_6();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_6();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  v8 = *(v11 + 8);
  v9 = OUTLINED_FUNCTION_16();
  v10(v9);
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_20();
}

unint64_t lazy protocol witness table accessor for type EntityTypeIdentifier.CodingKeys and conformance EntityTypeIdentifier.CodingKeys()
{
  result = lazy protocol witness table cache variable for type EntityTypeIdentifier.CodingKeys and conformance EntityTypeIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type EntityTypeIdentifier.CodingKeys and conformance EntityTypeIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EntityTypeIdentifier.CodingKeys and conformance EntityTypeIdentifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EntityTypeIdentifier.CodingKeys and conformance EntityTypeIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type EntityTypeIdentifier.CodingKeys and conformance EntityTypeIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EntityTypeIdentifier.CodingKeys and conformance EntityTypeIdentifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EntityTypeIdentifier.CodingKeys and conformance EntityTypeIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type EntityTypeIdentifier.CodingKeys and conformance EntityTypeIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EntityTypeIdentifier.CodingKeys and conformance EntityTypeIdentifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EntityTypeIdentifier.CodingKeys and conformance EntityTypeIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type EntityTypeIdentifier.CodingKeys and conformance EntityTypeIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EntityTypeIdentifier.CodingKeys and conformance EntityTypeIdentifier.CodingKeys);
  }

  return result;
}

void EntityTypeIdentifier.init(from:)()
{
  OUTLINED_FUNCTION_17();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19PersonalSearchTypes20EntityTypeIdentifierV10CodingKeys33_AF5D5F9AA5FE3334D5932A7F479568EDLLOGMd, &_ss22KeyedDecodingContainerVy19PersonalSearchTypes20EntityTypeIdentifierV10CodingKeys33_AF5D5F9AA5FE3334D5932A7F479568EDLLOGMR);
  OUTLINED_FUNCTION_1(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_24();
  lazy protocol witness table accessor for type EntityTypeIdentifier.CodingKeys and conformance EntityTypeIdentifier.CodingKeys();
  OUTLINED_FUNCTION_25();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v10 = KeyedDecodingContainer.decode(_:forKey:)();
    v12 = v11;
    OUTLINED_FUNCTION_27();
    v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v15 = v14;
    v16 = *(v7 + 8);
    v19 = v13;
    v17 = OUTLINED_FUNCTION_23();
    v18(v17);
    *v4 = v10;
    v4[1] = v12;
    v4[2] = v19;
    v4[3] = v15;

    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  OUTLINED_FUNCTION_20();
}

__n128 PersonalSearchQuery.init(searchQuery:structuredQuery:typeIdentifiers:options:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *(a6 + 16) = *a3;
  result = *a5;
  v7 = *(a5 + 16);
  *(a6 + 40) = *a5;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 32) = a4;
  *(a6 + 56) = v7;
  return result;
}

uint64_t PersonalSearchQuery.rawQuery.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_30();
}

uint64_t PersonalSearchQuery.structuredQuery.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v3;
  return outlined copy of StructuredQuery?(v2);
}

uint64_t outlined copy of StructuredQuery?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t PersonalSearchQuery.options.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[5];
  v3 = v1[6];
  v4 = v1[7];
  v5 = v1[8];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return outlined copy of PersonalSearchQueryOptions?(v2, v3, v4, v5);
}

uint64_t outlined copy of PersonalSearchQueryOptions?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
  }

  return result;
}

uint64_t static PersonalSearchQuery.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[6];
  v6 = a1[7];
  v7 = a1[8];
  v9 = a2[2];
  v8 = a2[3];
  v10 = a2[4];
  v116 = a1[5];
  v117 = a2[5];
  v118 = a2[6];
  v115 = a2[7];
  v11 = *a1 == *a2 && a1[1] == a2[1];
  v12 = a2[8];
  if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v2)
  {
    if (v9)
    {
      if (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v2, v9))
      {
        v114 = v5;
        v13 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v4, v8);
        v14 = OUTLINED_FUNCTION_14();
        outlined copy of StructuredQuery?(v14);
        v15 = OUTLINED_FUNCTION_19();
        outlined copy of StructuredQuery?(v15);
        v16 = OUTLINED_FUNCTION_14();
        outlined copy of StructuredQuery?(v16);
        v17 = OUTLINED_FUNCTION_19();
        outlined consume of StructuredQuery?(v17);

        v18 = OUTLINED_FUNCTION_14();
        outlined consume of StructuredQuery?(v18);
        if ((v13 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_20;
      }

      v23 = OUTLINED_FUNCTION_14();
      outlined copy of StructuredQuery?(v23);
      v24 = OUTLINED_FUNCTION_19();
      outlined copy of StructuredQuery?(v24);
      v25 = OUTLINED_FUNCTION_14();
      outlined copy of StructuredQuery?(v25);
      v26 = OUTLINED_FUNCTION_19();
      outlined consume of StructuredQuery?(v26);

      v22 = OUTLINED_FUNCTION_14();
LABEL_16:
      outlined consume of StructuredQuery?(v22);
      return 0;
    }

    outlined copy of StructuredQuery?(v2);
    outlined copy of StructuredQuery?(0);
    v20 = OUTLINED_FUNCTION_14();
    outlined copy of StructuredQuery?(v20);

LABEL_14:
    v21 = OUTLINED_FUNCTION_14();
    outlined consume of StructuredQuery?(v21);
    v22 = OUTLINED_FUNCTION_19();
    goto LABEL_16;
  }

  outlined copy of StructuredQuery?(0);
  if (v9)
  {
    v19 = OUTLINED_FUNCTION_19();
    outlined copy of StructuredQuery?(v19);
    goto LABEL_14;
  }

  v114 = v5;
  outlined copy of StructuredQuery?(0);
  outlined consume of StructuredQuery?(0);
LABEL_20:
  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ19PersonalSearchTypes20EntityTypeIdentifierV_Tt1g5(v3, v10))
  {
    v29 = v7;
    if (v7 == 1)
    {
      outlined copy of PersonalSearchQueryOptions?(v116, v114, v6, 1);
      v30 = v115;
      if (v12 == 1)
      {
        v27 = 1;
        outlined copy of PersonalSearchQueryOptions?(v117, v118, v115, 1);
        v31 = OUTLINED_FUNCTION_3();
        outlined consume of PersonalSearchQueryOptions?(v31, v32, v33, 1);
        return v27;
      }

      v34 = v12;
      v45 = OUTLINED_FUNCTION_16();
      outlined copy of PersonalSearchQueryOptions?(v45, v46, v115, v12);
      goto LABEL_27;
    }

    v34 = v12;
    v30 = v115;
    if (v12 == 1)
    {
      v35 = OUTLINED_FUNCTION_0();
      outlined copy of PersonalSearchQueryOptions?(v35, v36, v37, v38);
      v39 = OUTLINED_FUNCTION_16();
      outlined copy of PersonalSearchQueryOptions?(v39, v40, v115, 1);
      v41 = OUTLINED_FUNCTION_0();
      outlined copy of PersonalSearchQueryOptions?(v41, v42, v43, v44);

LABEL_27:
      v47 = OUTLINED_FUNCTION_0();
      outlined consume of PersonalSearchQueryOptions?(v47, v48, v49, v50);
      v51 = OUTLINED_FUNCTION_16();
      v53 = v30;
      v54 = v34;
LABEL_43:
      outlined consume of PersonalSearchQueryOptions?(v51, v52, v53, v54);
      return 0;
    }

    if (v114)
    {
      if ((v118 & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    else if (v118 & 1 | (v116 != v117))
    {
      goto LABEL_40;
    }

    if (!v29)
    {
      v85 = OUTLINED_FUNCTION_3();
      outlined copy of PersonalSearchQueryOptions?(v85, v86, v87, 0);
      v75 = 0;
      if (v12)
      {
        goto LABEL_41;
      }

      v88 = OUTLINED_FUNCTION_4();
      outlined copy of PersonalSearchQueryOptions?(v88, v89, v90, 0);
      v91 = OUTLINED_FUNCTION_3();
      outlined copy of PersonalSearchQueryOptions?(v91, v92, v93, 0);
      v94 = OUTLINED_FUNCTION_4();
      v97 = 0;
      goto LABEL_47;
    }

    if (v12)
    {
      if (v6 != v115 || v29 != v12)
      {
        v56 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v57 = OUTLINED_FUNCTION_0();
        outlined copy of PersonalSearchQueryOptions?(v57, v58, v59, v60);
        v61 = OUTLINED_FUNCTION_4();
        outlined copy of PersonalSearchQueryOptions?(v61, v62, v63, v12);
        v64 = OUTLINED_FUNCTION_0();
        outlined copy of PersonalSearchQueryOptions?(v64, v65, v66, v67);
        v68 = OUTLINED_FUNCTION_4();
        outlined consume of PersonalSearchQueryOptions?(v68, v69, v70, v12);
        if ((v56 & 1) == 0)
        {
LABEL_42:

          v51 = OUTLINED_FUNCTION_0();
          goto LABEL_43;
        }

LABEL_48:

        v110 = OUTLINED_FUNCTION_0();
        outlined consume of PersonalSearchQueryOptions?(v110, v111, v112, v113);
        return 1;
      }

      v98 = OUTLINED_FUNCTION_0();
      outlined copy of PersonalSearchQueryOptions?(v98, v99, v100, v101);
      v102 = OUTLINED_FUNCTION_26();
      outlined copy of PersonalSearchQueryOptions?(v102, v103, v104, v105);
      v106 = OUTLINED_FUNCTION_0();
      outlined copy of PersonalSearchQueryOptions?(v106, v107, v108, v109);
      v94 = OUTLINED_FUNCTION_26();
LABEL_47:
      outlined consume of PersonalSearchQueryOptions?(v94, v95, v96, v97);
      goto LABEL_48;
    }

LABEL_40:
    v71 = OUTLINED_FUNCTION_0();
    outlined copy of PersonalSearchQueryOptions?(v71, v72, v73, v74);
    v75 = v29;
LABEL_41:
    v76 = OUTLINED_FUNCTION_4();
    outlined copy of PersonalSearchQueryOptions?(v76, v77, v78, v12);
    v79 = OUTLINED_FUNCTION_3();
    outlined copy of PersonalSearchQueryOptions?(v79, v80, v81, v75);
    v82 = OUTLINED_FUNCTION_4();
    outlined consume of PersonalSearchQueryOptions?(v82, v83, v84, v12);
    goto LABEL_42;
  }

  return 0;
}

uint64_t outlined consume of StructuredQuery?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t outlined consume of PersonalSearchQueryOptions?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
  }

  return result;
}

uint64_t PersonalSearchQuery.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7972657551776172 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7275746375727473 && a2 == 0xEF79726575516465;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E65644965707974 && a2 == 0xEF73726569666974;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

Swift::Int PersonalSearchQuery.CodingKeys.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x25F8B4470](a1);
  return Hasher._finalize()();
}

uint64_t PersonalSearchQuery.CodingKeys.stringValue.getter(char a1)
{
  result = 0x7972657551776172;
  switch(a1)
  {
    case 1:
      result = 0x7275746375727473;
      break;
    case 2:
      result = 0x6E65644965707974;
      break;
    case 3:
      result = 0x736E6F6974706FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PersonalSearchQuery.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = PersonalSearchQuery.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance PersonalSearchQuery.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = PersonalSearchQuery.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PersonalSearchQuery.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchQuery.CodingKeys and conformance PersonalSearchQuery.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PersonalSearchQuery.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchQuery.CodingKeys and conformance PersonalSearchQuery.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void PersonalSearchQuery.encode(to:)()
{
  OUTLINED_FUNCTION_17();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE5QueryV10CodingKeys33_AF5D5F9AA5FE3334D5932A7F479568EDLLOGMd, &_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE5QueryV10CodingKeys33_AF5D5F9AA5FE3334D5932A7F479568EDLLOGMR);
  OUTLINED_FUNCTION_1(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_13();
  v10 = *v0;
  v11 = v0[1];
  v12 = v0[2];
  v22 = v0[4];
  v23 = v0[3];
  v20 = v0[6];
  v21 = v0[5];
  v18 = v0[8];
  v19 = v0[7];
  v13 = v4[3];
  v14 = v4[4];
  v15 = v4;
  v17 = v16;
  __swift_project_boxed_opaque_existential_1(v15, v13);
  lazy protocol witness table accessor for type PersonalSearchQuery.CodingKeys and conformance PersonalSearchQuery.CodingKeys();
  OUTLINED_FUNCTION_29();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    outlined copy of StructuredQuery?(v12);
    lazy protocol witness table accessor for type StructuredQuery and conformance StructuredQuery();
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_12();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of StructuredQuery?(v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19PersonalSearchTypes20EntityTypeIdentifierVGMd, &_sSay19PersonalSearchTypes20EntityTypeIdentifierVGMR);
    lazy protocol witness table accessor for type [EntityTypeIdentifier] and conformance <A> [A](&lazy protocol witness table cache variable for type [EntityTypeIdentifier] and conformance <A> [A], lazy protocol witness table accessor for type EntityTypeIdentifier and conformance EntityTypeIdentifier);
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_6();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined copy of PersonalSearchQueryOptions?(v21, v20, v19, v18);
    lazy protocol witness table accessor for type PersonalSearchQueryOptions and conformance PersonalSearchQueryOptions();
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_12();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of PersonalSearchQueryOptions?(v21, v20, v19, v18);
  }

  (*(v7 + 8))(v2, v17);
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_20();
}

unint64_t lazy protocol witness table accessor for type PersonalSearchQuery.CodingKeys and conformance PersonalSearchQuery.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PersonalSearchQuery.CodingKeys and conformance PersonalSearchQuery.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchQuery.CodingKeys and conformance PersonalSearchQuery.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchQuery.CodingKeys and conformance PersonalSearchQuery.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchQuery.CodingKeys and conformance PersonalSearchQuery.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchQuery.CodingKeys and conformance PersonalSearchQuery.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchQuery.CodingKeys and conformance PersonalSearchQuery.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchQuery.CodingKeys and conformance PersonalSearchQuery.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchQuery.CodingKeys and conformance PersonalSearchQuery.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchQuery.CodingKeys and conformance PersonalSearchQuery.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchQuery.CodingKeys and conformance PersonalSearchQuery.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchQuery.CodingKeys and conformance PersonalSearchQuery.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchQuery.CodingKeys and conformance PersonalSearchQuery.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StructuredQuery and conformance StructuredQuery()
{
  result = lazy protocol witness table cache variable for type StructuredQuery and conformance StructuredQuery;
  if (!lazy protocol witness table cache variable for type StructuredQuery and conformance StructuredQuery)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StructuredQuery and conformance StructuredQuery);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StructuredQuery and conformance StructuredQuery;
  if (!lazy protocol witness table cache variable for type StructuredQuery and conformance StructuredQuery)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StructuredQuery and conformance StructuredQuery);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EntityTypeIdentifier and conformance EntityTypeIdentifier()
{
  result = lazy protocol witness table cache variable for type EntityTypeIdentifier and conformance EntityTypeIdentifier;
  if (!lazy protocol witness table cache variable for type EntityTypeIdentifier and conformance EntityTypeIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EntityTypeIdentifier and conformance EntityTypeIdentifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EntityTypeIdentifier and conformance EntityTypeIdentifier;
  if (!lazy protocol witness table cache variable for type EntityTypeIdentifier and conformance EntityTypeIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EntityTypeIdentifier and conformance EntityTypeIdentifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PersonalSearchQueryOptions and conformance PersonalSearchQueryOptions()
{
  result = lazy protocol witness table cache variable for type PersonalSearchQueryOptions and conformance PersonalSearchQueryOptions;
  if (!lazy protocol witness table cache variable for type PersonalSearchQueryOptions and conformance PersonalSearchQueryOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchQueryOptions and conformance PersonalSearchQueryOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchQueryOptions and conformance PersonalSearchQueryOptions;
  if (!lazy protocol witness table cache variable for type PersonalSearchQueryOptions and conformance PersonalSearchQueryOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchQueryOptions and conformance PersonalSearchQueryOptions);
  }

  return result;
}

void PersonalSearchQuery.init(from:)()
{
  OUTLINED_FUNCTION_17();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE5QueryV10CodingKeys33_AF5D5F9AA5FE3334D5932A7F479568EDLLOGMd, &_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE5QueryV10CodingKeys33_AF5D5F9AA5FE3334D5932A7F479568EDLLOGMR);
  OUTLINED_FUNCTION_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20]();
  v8 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  lazy protocol witness table accessor for type PersonalSearchQuery.CodingKeys and conformance PersonalSearchQuery.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    LOBYTE(v22) = 0;
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    v20 = v10;
    lazy protocol witness table accessor for type StructuredQuery and conformance StructuredQuery();
    OUTLINED_FUNCTION_34();
    v19 = v22;
    v18 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19PersonalSearchTypes20EntityTypeIdentifierVGMd, &_sSay19PersonalSearchTypes20EntityTypeIdentifierVGMR);
    LOBYTE(v21[0]) = 2;
    lazy protocol witness table accessor for type [EntityTypeIdentifier] and conformance <A> [A](&lazy protocol witness table cache variable for type [EntityTypeIdentifier] and conformance <A> [A], lazy protocol witness table accessor for type EntityTypeIdentifier and conformance EntityTypeIdentifier);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v17 = v22;
    lazy protocol witness table accessor for type PersonalSearchQueryOptions and conformance PersonalSearchQueryOptions();
    OUTLINED_FUNCTION_34();
    v11 = OUTLINED_FUNCTION_7();
    v12(v11);
    v16 = v31;
    v15 = v32;
    v13 = v34;
    v14 = v33;
    v21[0] = v9;
    v21[1] = v20;
    v21[2] = v19;
    v21[3] = v18;
    v21[4] = v17;
    v21[5] = v31;
    v21[6] = v32;
    v21[7] = v33;
    v21[8] = v34;
    memcpy(v4, v21, 0x48uLL);
    outlined init with copy of PersonalSearchQuery(v21, &v22);
    __swift_destroy_boxed_opaque_existential_1(v2);
    v22 = v9;
    v23 = v20;
    v24 = v19;
    v25 = v18;
    v26 = v17;
    v27 = v16;
    v28 = v15;
    v29 = v14;
    v30 = v13;
    outlined destroy of PersonalSearchQuery(&v22);
  }

  OUTLINED_FUNCTION_20();
}

uint64_t lazy protocol witness table accessor for type [EntityTypeIdentifier] and conformance <A> [A](unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19PersonalSearchTypes20EntityTypeIdentifierVGMd, &_sSay19PersonalSearchTypes20EntityTypeIdentifierVGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for PersonalSearchQueryOptions(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PersonalSearchQueryOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for StructuredQuery(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for StructuredQuery(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for EntityTypeIdentifier(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for EntityTypeIdentifier(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19PersonalSearchTypes15StructuredQueryVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_19PersonalSearchTypes0aB12QueryOptionsVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t getEnumTagSinglePayload for PersonalSearchQuery(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PersonalSearchQuery(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for PersonalSearchQuery.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PersonalSearchQuery.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x25E4789ECLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EntityTypeIdentifier.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for EntityTypeIdentifier.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x25E478BBCLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t outlined init with copy of PersonalSearchResult(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonalSearchResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined copy of PersonalSearchResult.ResultIdentifier(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if ((a7 & 1) == 0)
  {
  }
}

uint64_t outlined consume of PersonalSearchResult.ResultIdentifier(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{

  if ((a7 & 1) == 0)
  {
  }

  return result;
}

uint64_t outlined destroy of PersonalSearchResult(uint64_t a1)
{
  v2 = type metadata accessor for PersonalSearchResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of (URL?, URL?)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t lazy protocol witness table accessor for type URL and conformance URL()
{
  result = lazy protocol witness table cache variable for type URL and conformance URL;
  if (!lazy protocol witness table cache variable for type URL and conformance URL)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL and conformance URL);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_15()
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_25()
{

  return dispatch thunk of Decoder.container<A>(keyedBy:)();
}

uint64_t OUTLINED_FUNCTION_34()
{

  return KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
}

void *OUTLINED_FUNCTION_36()
{
  v3 = *(v0 + 16);
  *(v2 - 104) = *(v0 + 24);
  *(v2 - 96) = v3;
  v4 = v1[4];
  return __swift_project_boxed_opaque_existential_1(v1, v1[3]);
}

uint64_t PersonalSearchResult.init(spotlightIdentifier:bundleId:title:subtitle:icon:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = 0;
  *(a9 + 40) = 0;
  *(a9 + 48) = 1;
  OUTLINED_FUNCTION_17_0();
  v16 = (a9 + v15);
  *v16 = a5;
  v16[1] = a6;
  v16[2] = a7;
  v16[3] = a8;
  OUTLINED_FUNCTION_28_0();

  return outlined init with take of URL?(a10, v16 + v17);
}

PersonalSearchTypes::PersonalSearchResult::SpotlightResultIdentifier __swiftcall PersonalSearchResult.SpotlightResultIdentifier.init(identifier:bundleId:)(Swift::String identifier, Swift::String bundleId)
{
  *v2 = identifier;
  v2[1] = bundleId;
  result.bundleId = bundleId;
  result.identifier = identifier;
  return result;
}

uint64_t PersonalSearchResult.DisplayRepresentation.init(title:subtitle:icon:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  OUTLINED_FUNCTION_28_0();

  return outlined init with take of URL?(a5, a6 + v8);
}

uint64_t type metadata accessor for PersonalSearchResult(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with take of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t PersonalSearchResult.init(appEntityIdentifier:bundleId:typeId:title:subtitle:icon:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = 0;
  OUTLINED_FUNCTION_17_0();
  v16 = (a9 + v15);
  *v16 = a7;
  v16[1] = a8;
  v16[2] = a10;
  v16[3] = a11;
  OUTLINED_FUNCTION_28_0();

  return outlined init with take of URL?(a12, v16 + v17);
}

void __swiftcall PersonalSearchResult.AppEntityResultIdentifier.init(identifier:bundleId:typeId:)(PersonalSearchTypes::PersonalSearchResult::AppEntityResultIdentifier *__return_ptr retstr, Swift::String identifier, Swift::String bundleId, Swift::String typeId)
{
  retstr->identifier = identifier;
  retstr->bundleId = bundleId;
  retstr->typeId = typeId;
}

uint64_t PersonalSearchResult.DisplayRepresentation.title.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_30();
}

uint64_t PersonalSearchResult.DisplayRepresentation.subtitle.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_30();
}

uint64_t PersonalSearchResult.DisplayRepresentation.icon.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_28_0();

  return outlined init with copy of URL?(v1 + v3, a1);
}

uint64_t PersonalSearchResult.DisplayRepresentation.debugDescription.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_3_0(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_13();
  _StringGuts.grow(_:)(38);

  MEMORY[0x25F8B4230](*v0, v0[1]);
  MEMORY[0x25F8B4230](0x697462757320200ALL, 0xED0000203A656C74);
  v10 = v0[2];
  v11 = v0[3];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v6 = String.init<A>(describing:)();
  MEMORY[0x25F8B4230](v6);

  MEMORY[0x25F8B4230](0x3A6E6F636920200ALL, 0xE900000000000020);
  OUTLINED_FUNCTION_28_0();
  outlined init with copy of URL?(v0 + v7, v1);
  v8 = String.init<A>(describing:)();
  MEMORY[0x25F8B4230](v8);

  MEMORY[0x25F8B4230](10, 0xE100000000000000);
  return 0x3A656C7469742020;
}

BOOL static PersonalSearchResult.DisplayRepresentation.== infix(_:_:)(void *a1, void *a2)
{
  v5 = type metadata accessor for URL();
  v6 = OUTLINED_FUNCTION_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_12_0();
  v13 = v12 - v11;
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_13();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSg_ADtMd, &_s10Foundation3URLVSg_ADtMR);
  OUTLINED_FUNCTION_3_0(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v19);
  v21 = &v39 - v20;
  v22 = *a1 == *a2 && a1[1] == a2[1];
  if (!v22 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v23 = a1[3];
  v24 = a2[3];
  if (v23)
  {
    if (!v24)
    {
      return 0;
    }

    v25 = a1[2] == a2[2] && v23 == v24;
    if (!v25 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v24)
  {
    return 0;
  }

  v26 = *(type metadata accessor for PersonalSearchResult.DisplayRepresentation(0) + 24);
  v27 = *(v16 + 48);
  outlined init with copy of URL?(a1 + v26, v21);
  outlined init with copy of URL?(a2 + v26, &v21[v27]);
  OUTLINED_FUNCTION_48(v21);
  if (v22)
  {
    OUTLINED_FUNCTION_48(&v21[v27]);
    if (v22)
    {
      _s10Foundation3URLVSg_ADtWOhTm_0(v21, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      return 1;
    }

    goto LABEL_23;
  }

  outlined init with copy of URL?(v21, v2);
  OUTLINED_FUNCTION_48(&v21[v27]);
  if (v28)
  {
    v29 = *(v8 + 8);
    v30 = OUTLINED_FUNCTION_36_0();
    v31(v30);
LABEL_23:
    _s10Foundation3URLVSg_ADtWOhTm_0(v21, &_s10Foundation3URLVSg_ADtMd, &_s10Foundation3URLVSg_ADtMR);
    return 0;
  }

  (*(v8 + 32))(v13, &v21[v27], v5);
  OUTLINED_FUNCTION_1_0();
  lazy protocol witness table accessor for type URL and conformance URL(v33, v34);
  v35 = dispatch thunk of static Equatable.== infix(_:_:)();
  v36 = *(v8 + 8);
  v37 = OUTLINED_FUNCTION_30();
  v36(v37);
  v38 = OUTLINED_FUNCTION_36_0();
  v36(v38);
  _s10Foundation3URLVSg_ADtWOhTm_0(v21, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return (v35 & 1) != 0;
}

uint64_t _s10Foundation3URLVSg_ADtWOhTm_0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_3_0(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t PersonalSearchResult.DisplayRepresentation.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C746974627573 && a2 == 0xE800000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1852793705 && a2 == 0xE400000000000000)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t PersonalSearchResult.DisplayRepresentation.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x656C746974;
  }

  if (a1 == 1)
  {
    return 0x656C746974627573;
  }

  return 1852793705;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PersonalSearchResult.DisplayRepresentation.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = PersonalSearchResult.DisplayRepresentation.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance PersonalSearchResult.DisplayRepresentation.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = PersonalSearchResult.DisplayRepresentation.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PersonalSearchResult.DisplayRepresentation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchResult.DisplayRepresentation.CodingKeys and conformance PersonalSearchResult.DisplayRepresentation.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PersonalSearchResult.DisplayRepresentation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchResult.DisplayRepresentation.CodingKeys and conformance PersonalSearchResult.DisplayRepresentation.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PersonalSearchResult.DisplayRepresentation.encode(to:)(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE6ResultV21DisplayRepresentationV10CodingKeys33_74EAD77687BA185E2038F2774DE26538LLOGMd, &_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE6ResultV21DisplayRepresentationV10CodingKeys33_74EAD77687BA185E2038F2774DE26538LLOGMR);
  OUTLINED_FUNCTION_1(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_24_0();
  v12 = a1[4];
  OUTLINED_FUNCTION_26_0(a1, a1[3]);
  lazy protocol witness table accessor for type PersonalSearchResult.DisplayRepresentation.CodingKeys and conformance PersonalSearchResult.DisplayRepresentation.CodingKeys();
  OUTLINED_FUNCTION_43();
  v13 = *v4;
  v14 = v4[1];
  OUTLINED_FUNCTION_29_0();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v15 = v4[2];
    v16 = v4[3];
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_29_0();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v17 = *(type metadata accessor for PersonalSearchResult.DisplayRepresentation(0) + 24);
    OUTLINED_FUNCTION_41();
    type metadata accessor for URL();
    OUTLINED_FUNCTION_1_0();
    lazy protocol witness table accessor for type URL and conformance URL(v18, v19);
    OUTLINED_FUNCTION_29_0();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v3, v6);
}

unint64_t lazy protocol witness table accessor for type PersonalSearchResult.DisplayRepresentation.CodingKeys and conformance PersonalSearchResult.DisplayRepresentation.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PersonalSearchResult.DisplayRepresentation.CodingKeys and conformance PersonalSearchResult.DisplayRepresentation.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResult.DisplayRepresentation.CodingKeys and conformance PersonalSearchResult.DisplayRepresentation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResult.DisplayRepresentation.CodingKeys and conformance PersonalSearchResult.DisplayRepresentation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchResult.DisplayRepresentation.CodingKeys and conformance PersonalSearchResult.DisplayRepresentation.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResult.DisplayRepresentation.CodingKeys and conformance PersonalSearchResult.DisplayRepresentation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResult.DisplayRepresentation.CodingKeys and conformance PersonalSearchResult.DisplayRepresentation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchResult.DisplayRepresentation.CodingKeys and conformance PersonalSearchResult.DisplayRepresentation.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResult.DisplayRepresentation.CodingKeys and conformance PersonalSearchResult.DisplayRepresentation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResult.DisplayRepresentation.CodingKeys and conformance PersonalSearchResult.DisplayRepresentation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchResult.DisplayRepresentation.CodingKeys and conformance PersonalSearchResult.DisplayRepresentation.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResult.DisplayRepresentation.CodingKeys and conformance PersonalSearchResult.DisplayRepresentation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResult.DisplayRepresentation.CodingKeys and conformance PersonalSearchResult.DisplayRepresentation.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type URL and conformance URL(unint64_t *a1, void (*a2)(uint64_t))
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

void PersonalSearchResult.DisplayRepresentation.init(from:)()
{
  OUTLINED_FUNCTION_17();
  v3 = v2;
  v23 = v4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64);
  OUTLINED_FUNCTION_9();
  (MEMORY[0x28223BE20])();
  OUTLINED_FUNCTION_24_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE6ResultV21DisplayRepresentationV10CodingKeys33_74EAD77687BA185E2038F2774DE26538LLOGMd, &_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE6ResultV21DisplayRepresentationV10CodingKeys33_74EAD77687BA185E2038F2774DE26538LLOGMR);
  OUTLINED_FUNCTION_1(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_9();
  (MEMORY[0x28223BE20])();
  v9 = type metadata accessor for PersonalSearchResult.DisplayRepresentation(0);
  v10 = OUTLINED_FUNCTION_3_0(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_12_0();
  v15 = (v14 - v13);
  v16 = v3[4];
  OUTLINED_FUNCTION_26_0(v3, v3[3]);
  lazy protocol witness table accessor for type PersonalSearchResult.DisplayRepresentation.CodingKeys and conformance PersonalSearchResult.DisplayRepresentation.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    *v15 = KeyedDecodingContainer.decode(_:forKey:)();
    v15[1] = v17;
    OUTLINED_FUNCTION_27();
    v15[2] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v15[3] = v18;
    type metadata accessor for URL();
    OUTLINED_FUNCTION_41();
    OUTLINED_FUNCTION_1_0();
    lazy protocol witness table accessor for type URL and conformance URL(v19, v20);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v21 = OUTLINED_FUNCTION_15_0();
    v22(v21);
    outlined init with take of URL?(v1, v15 + *(v9 + 24));
    outlined init with copy of PersonalSearchResult.DisplayRepresentation(v15, v23, type metadata accessor for PersonalSearchResult.DisplayRepresentation);
    __swift_destroy_boxed_opaque_existential_1(v3);
    outlined destroy of PersonalSearchResult.DisplayRepresentation(v15, type metadata accessor for PersonalSearchResult.DisplayRepresentation);
  }

  OUTLINED_FUNCTION_20();
}

uint64_t PersonalSearchResult.AppEntityResultIdentifier.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_30();
}

uint64_t PersonalSearchResult.AppEntityResultIdentifier.bundleId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_30();
}

uint64_t PersonalSearchResult.AppEntityResultIdentifier.typeId.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_30();
}

uint64_t PersonalSearchResult.AppEntityResultIdentifier.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x25F8B4230]();
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x25F8B4230](v5, v6);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_18_0();
  return v8;
}

uint64_t static PersonalSearchResult.AppEntityResultIdentifier.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v10 = *a1 == *a2 && a1[1] == a2[1];
  if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v11 = v2 == v6 && v4 == v7;
  if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  OUTLINED_FUNCTION_30();

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t PersonalSearchResult.AppEntityResultIdentifier.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x644965707974 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t PersonalSearchResult.AppEntityResultIdentifier.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x696669746E656469;
  }

  if (a1 == 1)
  {
    return 0x6449656C646E7562;
  }

  return 0x644965707974;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PersonalSearchResult.AppEntityResultIdentifier.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = PersonalSearchResult.AppEntityResultIdentifier.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PersonalSearchResult.AppEntityResultIdentifier.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchResult.AppEntityResultIdentifier.CodingKeys and conformance PersonalSearchResult.AppEntityResultIdentifier.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PersonalSearchResult.AppEntityResultIdentifier.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchResult.AppEntityResultIdentifier.CodingKeys and conformance PersonalSearchResult.AppEntityResultIdentifier.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void PersonalSearchResult.AppEntityResultIdentifier.encode(to:)()
{
  OUTLINED_FUNCTION_17();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE6ResultV09AppEntityG10IdentifierV10CodingKeys33_74EAD77687BA185E2038F2774DE26538LLOGMd, &_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE6ResultV09AppEntityG10IdentifierV10CodingKeys33_74EAD77687BA185E2038F2774DE26538LLOGMR);
  OUTLINED_FUNCTION_1(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_13();
  v11 = *v0;
  v12 = v0[1];
  v16 = v0[3];
  v17 = v0[2];
  v14 = v0[5];
  v15 = v0[4];
  v13 = v4[4];
  OUTLINED_FUNCTION_26_0(v4, v4[3]);
  lazy protocol witness table accessor for type PersonalSearchResult.AppEntityResultIdentifier.CodingKeys and conformance PersonalSearchResult.AppEntityResultIdentifier.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_49();
    OUTLINED_FUNCTION_41();
    OUTLINED_FUNCTION_49();
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_20();
}

unint64_t lazy protocol witness table accessor for type PersonalSearchResult.AppEntityResultIdentifier.CodingKeys and conformance PersonalSearchResult.AppEntityResultIdentifier.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PersonalSearchResult.AppEntityResultIdentifier.CodingKeys and conformance PersonalSearchResult.AppEntityResultIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResult.AppEntityResultIdentifier.CodingKeys and conformance PersonalSearchResult.AppEntityResultIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResult.AppEntityResultIdentifier.CodingKeys and conformance PersonalSearchResult.AppEntityResultIdentifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchResult.AppEntityResultIdentifier.CodingKeys and conformance PersonalSearchResult.AppEntityResultIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResult.AppEntityResultIdentifier.CodingKeys and conformance PersonalSearchResult.AppEntityResultIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResult.AppEntityResultIdentifier.CodingKeys and conformance PersonalSearchResult.AppEntityResultIdentifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchResult.AppEntityResultIdentifier.CodingKeys and conformance PersonalSearchResult.AppEntityResultIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResult.AppEntityResultIdentifier.CodingKeys and conformance PersonalSearchResult.AppEntityResultIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResult.AppEntityResultIdentifier.CodingKeys and conformance PersonalSearchResult.AppEntityResultIdentifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchResult.AppEntityResultIdentifier.CodingKeys and conformance PersonalSearchResult.AppEntityResultIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResult.AppEntityResultIdentifier.CodingKeys and conformance PersonalSearchResult.AppEntityResultIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResult.AppEntityResultIdentifier.CodingKeys and conformance PersonalSearchResult.AppEntityResultIdentifier.CodingKeys);
  }

  return result;
}

void PersonalSearchResult.AppEntityResultIdentifier.init(from:)()
{
  OUTLINED_FUNCTION_17();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE6ResultV09AppEntityG10IdentifierV10CodingKeys33_74EAD77687BA185E2038F2774DE26538LLOGMd, &_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE6ResultV09AppEntityG10IdentifierV10CodingKeys33_74EAD77687BA185E2038F2774DE26538LLOGMR);
  OUTLINED_FUNCTION_1(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_13_0();
  v12 = v3[4];
  OUTLINED_FUNCTION_26_0(v3, v3[3]);
  lazy protocol witness table accessor for type PersonalSearchResult.AppEntityResultIdentifier.CodingKeys and conformance PersonalSearchResult.AppEntityResultIdentifier.CodingKeys();
  OUTLINED_FUNCTION_25();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_47();
    v22 = v14;
    OUTLINED_FUNCTION_27();
    v20 = OUTLINED_FUNCTION_47();
    v21 = v15;
    OUTLINED_FUNCTION_41();
    v16 = KeyedDecodingContainer.decode(_:forKey:)();
    v18 = v17;
    v19 = v16;
    (*(v8 + 8))(v1, v6);
    *v5 = v13;
    v5[1] = v22;
    v5[2] = v20;
    v5[3] = v21;
    v5[4] = v19;
    v5[5] = v18;

    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  OUTLINED_FUNCTION_20();
}

uint64_t PersonalSearchResult.SpotlightResultIdentifier.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_30();
}

uint64_t PersonalSearchResult.SpotlightResultIdentifier.bundleId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_30();
}

uint64_t PersonalSearchResult.SpotlightResultIdentifier.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x25F8B4230]();
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_18_0();
  return v6;
}

uint64_t static PersonalSearchResult.SpotlightResultIdentifier.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_30();

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

uint64_t PersonalSearchResult.SpotlightResultIdentifier.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t PersonalSearchResult.SpotlightResultIdentifier.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x6449656C646E7562;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PersonalSearchResult.SpotlightResultIdentifier.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = PersonalSearchResult.SpotlightResultIdentifier.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PersonalSearchResult.SpotlightResultIdentifier.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchResult.SpotlightResultIdentifier.CodingKeys and conformance PersonalSearchResult.SpotlightResultIdentifier.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PersonalSearchResult.SpotlightResultIdentifier.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchResult.SpotlightResultIdentifier.CodingKeys and conformance PersonalSearchResult.SpotlightResultIdentifier.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void PersonalSearchResult.SpotlightResultIdentifier.encode(to:)()
{
  OUTLINED_FUNCTION_17();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE6ResultV09SpotlightG10IdentifierV10CodingKeys33_74EAD77687BA185E2038F2774DE26538LLOGMd, &_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE6ResultV09SpotlightG10IdentifierV10CodingKeys33_74EAD77687BA185E2038F2774DE26538LLOGMR);
  OUTLINED_FUNCTION_1(v5);
  v15 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_13();
  v10 = *v0;
  v11 = v0[1];
  v13 = v0[3];
  v14 = v0[2];
  v12 = v4[4];
  OUTLINED_FUNCTION_26_0(v4, v4[3]);
  lazy protocol witness table accessor for type PersonalSearchResult.SpotlightResultIdentifier.CodingKeys and conformance PersonalSearchResult.SpotlightResultIdentifier.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  OUTLINED_FUNCTION_49();
  if (!v1)
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_49();
  }

  (*(v15 + 8))(v2, v5);
  OUTLINED_FUNCTION_20();
}

unint64_t lazy protocol witness table accessor for type PersonalSearchResult.SpotlightResultIdentifier.CodingKeys and conformance PersonalSearchResult.SpotlightResultIdentifier.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PersonalSearchResult.SpotlightResultIdentifier.CodingKeys and conformance PersonalSearchResult.SpotlightResultIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResult.SpotlightResultIdentifier.CodingKeys and conformance PersonalSearchResult.SpotlightResultIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResult.SpotlightResultIdentifier.CodingKeys and conformance PersonalSearchResult.SpotlightResultIdentifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchResult.SpotlightResultIdentifier.CodingKeys and conformance PersonalSearchResult.SpotlightResultIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResult.SpotlightResultIdentifier.CodingKeys and conformance PersonalSearchResult.SpotlightResultIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResult.SpotlightResultIdentifier.CodingKeys and conformance PersonalSearchResult.SpotlightResultIdentifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchResult.SpotlightResultIdentifier.CodingKeys and conformance PersonalSearchResult.SpotlightResultIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResult.SpotlightResultIdentifier.CodingKeys and conformance PersonalSearchResult.SpotlightResultIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResult.SpotlightResultIdentifier.CodingKeys and conformance PersonalSearchResult.SpotlightResultIdentifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchResult.SpotlightResultIdentifier.CodingKeys and conformance PersonalSearchResult.SpotlightResultIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResult.SpotlightResultIdentifier.CodingKeys and conformance PersonalSearchResult.SpotlightResultIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResult.SpotlightResultIdentifier.CodingKeys and conformance PersonalSearchResult.SpotlightResultIdentifier.CodingKeys);
  }

  return result;
}

void PersonalSearchResult.SpotlightResultIdentifier.init(from:)()
{
  OUTLINED_FUNCTION_17();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE6ResultV09SpotlightG10IdentifierV10CodingKeys33_74EAD77687BA185E2038F2774DE26538LLOGMd, &_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE6ResultV09SpotlightG10IdentifierV10CodingKeys33_74EAD77687BA185E2038F2774DE26538LLOGMR);
  OUTLINED_FUNCTION_1(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_13_0();
  v12 = v3[4];
  OUTLINED_FUNCTION_26_0(v3, v3[3]);
  lazy protocol witness table accessor for type PersonalSearchResult.SpotlightResultIdentifier.CodingKeys and conformance PersonalSearchResult.SpotlightResultIdentifier.CodingKeys();
  OUTLINED_FUNCTION_25();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_47();
    v15 = v14;
    OUTLINED_FUNCTION_27();
    v16 = OUTLINED_FUNCTION_47();
    v18 = v17;
    v19 = v16;
    (*(v8 + 8))(v1, v6);
    *v5 = v13;
    v5[1] = v15;
    v5[2] = v19;
    v5[3] = v18;

    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  OUTLINED_FUNCTION_20();
}

uint64_t PersonalSearchResult.ResultIdentifier.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  if (v0[6])
  {
    OUTLINED_FUNCTION_2_0();
  }

  else
  {
    v8 = v0[4];
    v7 = v0[5];
    OUTLINED_FUNCTION_2_0();
    MEMORY[0x25F8B4230]();
    OUTLINED_FUNCTION_10_0();
    v5 = v8;
    v6 = v7;
  }

  MEMORY[0x25F8B4230](v5, v6);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_18_0();
  return v10;
}

void static PersonalSearchResult.ResultIdentifier.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[5];
  v133 = a1[4];
  v6 = *(a1 + 48);
  v8 = *a2;
  v7 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  v13 = *(a2 + 48);
  if ((v6 & 1) == 0)
  {
    if ((*(a2 + 48) & 1) == 0)
    {
      v135[0] = *a1;
      v135[1] = v2;
      v135[2] = v4;
      v135[3] = v3;
      v135[4] = v133;
      v135[5] = v5;
      v134[0] = v8;
      v134[1] = v7;
      v134[2] = v9;
      v134[3] = v10;
      v134[4] = v11;
      v134[5] = v12;
      static PersonalSearchResult.AppEntityResultIdentifier.== infix(_:_:)(v135, v134);
      v59 = OUTLINED_FUNCTION_37();
      outlined copy of PersonalSearchResult.ResultIdentifier(v59, v60, v61, v62, v11, v12, 0);
      OUTLINED_FUNCTION_27_0();
      outlined copy of PersonalSearchResult.ResultIdentifier(v63, v64, v65, v66, v67, v68, v69);
      OUTLINED_FUNCTION_27_0();
      outlined consume of PersonalSearchResult.ResultIdentifier(v70, v71, v72, v73, v74, v75, v76);
      v77 = OUTLINED_FUNCTION_37();
      outlined consume of PersonalSearchResult.ResultIdentifier(v77, v78, v79, v80, v11, v12, 0);
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  if ((*(a2 + 48) & 1) == 0)
  {
LABEL_14:
    v130 = *(a2 + 8);
    v132 = *(a2 + 16);
    outlined copy of PersonalSearchResult.ResultIdentifier(*a2, v130, v9, v10, v11, v12, v13);
    OUTLINED_FUNCTION_7_0();
    outlined copy of PersonalSearchResult.ResultIdentifier(v44, v45, v46, v47, v133, v5, v6);
    OUTLINED_FUNCTION_7_0();
    outlined consume of PersonalSearchResult.ResultIdentifier(v48, v49, v50, v51, v133, v5, v6);
    v52 = v8;
    v53 = v130;
    v54 = v132;
    v55 = v11;
    v56 = v10;
    v57 = v12;
    v58 = v13;
LABEL_15:
    outlined consume of PersonalSearchResult.ResultIdentifier(v52, v53, v54, v56, v55, v57, v58);
    goto LABEL_18;
  }

  if (*a1 != v8 || v2 != v7)
  {
    v131 = *(a2 + 16);
    v15 = *(a2 + 8);
    v16 = *a1;
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v9 = v131;
    if ((v17 & 1) == 0)
    {
      OUTLINED_FUNCTION_39();
      outlined copy of PersonalSearchResult.ResultIdentifier(v109, v110, v111, v112, v113, v114, v115);
      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_20_0();
      outlined copy of PersonalSearchResult.ResultIdentifier(v116, v117, v118, v119, v120, v121, v122);
      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_20_0();
      outlined consume of PersonalSearchResult.ResultIdentifier(v123, v124, v125, v126, v127, v128, v129);
      v52 = v8;
      v53 = v15;
      v54 = v131;
      v56 = v10;
      v55 = v11;
      v57 = v12;
      v58 = 1;
      goto LABEL_15;
    }
  }

  if (v4 == v9 && v3 == v10)
  {
    OUTLINED_FUNCTION_39();
    outlined copy of PersonalSearchResult.ResultIdentifier(v81, v82, v83, v84, v85, v86, v87);
    OUTLINED_FUNCTION_36_0();
    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_20_0();
    outlined copy of PersonalSearchResult.ResultIdentifier(v88, v89, v90, v91, v92, v93, v94);
    OUTLINED_FUNCTION_36_0();
    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_20_0();
    outlined consume of PersonalSearchResult.ResultIdentifier(v95, v96, v97, v98, v99, v100, v101);
    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_39();
    outlined consume of PersonalSearchResult.ResultIdentifier(v102, v103, v104, v105, v106, v107, v108);
  }

  else
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_39();
    outlined copy of PersonalSearchResult.ResultIdentifier(v19, v20, v21, v22, v23, v24, v25);
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_20_0();
    outlined copy of PersonalSearchResult.ResultIdentifier(v26, v27, v28, v29, v30, v31, v32);
    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_20_0();
    outlined consume of PersonalSearchResult.ResultIdentifier(v33, v34, v35, v36, v37, v38, v39);
    v40 = OUTLINED_FUNCTION_38();
    outlined consume of PersonalSearchResult.ResultIdentifier(v40, v41, v42, v43, v11, v12, 1);
  }

LABEL_18:
  OUTLINED_FUNCTION_42();
}

uint64_t PersonalSearchResult.ResultIdentifier.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7469746E45707061 && a2 == 0xE900000000000079;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6867696C746F7073 && a2 == 0xE900000000000074)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t PersonalSearchResult.ResultIdentifier.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x6867696C746F7073;
  }

  else
  {
    return 0x7469746E45707061;
  }
}

uint64_t PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

Swift::Int PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x25F8B4470](0);
  return Hasher._finalize()();
}

uint64_t _s19PersonalSearchTypes0aB6ResultV0D10IdentifierO19SpotlightCodingKeys33_74EAD77687BA185E2038F2774DE26538LLOs0G3KeyAAsAIP11stringValuexSgSS_tcfCTW_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys.init(intValue:)();
  *a1 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys and conformance PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys and conformance PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PersonalSearchResult.ResultIdentifier.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = PersonalSearchResult.ResultIdentifier.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PersonalSearchResult.ResultIdentifier.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchResult.ResultIdentifier.CodingKeys and conformance PersonalSearchResult.ResultIdentifier.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PersonalSearchResult.ResultIdentifier.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchResult.ResultIdentifier.CodingKeys and conformance PersonalSearchResult.ResultIdentifier.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x25F8B4470](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PersonalSearchResult.ResultIdentifier.SpotlightCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchResult.ResultIdentifier.SpotlightCodingKeys and conformance PersonalSearchResult.ResultIdentifier.SpotlightCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PersonalSearchResult.ResultIdentifier.SpotlightCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchResult.ResultIdentifier.SpotlightCodingKeys and conformance PersonalSearchResult.ResultIdentifier.SpotlightCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void PersonalSearchResult.ResultIdentifier.encode(to:)()
{
  OUTLINED_FUNCTION_17();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE6ResultV0G10IdentifierO19SpotlightCodingKeys33_74EAD77687BA185E2038F2774DE26538LLOGMd, &_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE6ResultV0G10IdentifierO19SpotlightCodingKeys33_74EAD77687BA185E2038F2774DE26538LLOGMR);
  v5 = OUTLINED_FUNCTION_1(v4);
  v37 = v6;
  v38 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_13_0();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE6ResultV0G10IdentifierO19AppEntityCodingKeys33_74EAD77687BA185E2038F2774DE26538LLOGMd, &_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE6ResultV0G10IdentifierO19AppEntityCodingKeys33_74EAD77687BA185E2038F2774DE26538LLOGMR);
  v11 = OUTLINED_FUNCTION_1(v10);
  v35 = v12;
  v36 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v15);
  v17 = &v32 - v16;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE6ResultV0G10IdentifierO10CodingKeys33_74EAD77687BA185E2038F2774DE26538LLOGMd, &_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE6ResultV0G10IdentifierO10CodingKeys33_74EAD77687BA185E2038F2774DE26538LLOGMR);
  OUTLINED_FUNCTION_1(v43);
  v19 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v22);
  v24 = &v32 - v23;
  v25 = v0[1];
  v39 = *v0;
  v40 = v25;
  v26 = v0[3];
  v41 = v0[2];
  v42 = v26;
  v27 = v0[4];
  v33 = v0[5];
  v34 = v27;
  v28 = *(v0 + 48);
  v29 = v3[4];
  OUTLINED_FUNCTION_26_0(v3, v3[3]);
  lazy protocol witness table accessor for type PersonalSearchResult.ResultIdentifier.CodingKeys and conformance PersonalSearchResult.ResultIdentifier.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v28)
  {
    v44 = 1;
    lazy protocol witness table accessor for type PersonalSearchResult.ResultIdentifier.SpotlightCodingKeys and conformance PersonalSearchResult.ResultIdentifier.SpotlightCodingKeys();
    OUTLINED_FUNCTION_46();
    OUTLINED_FUNCTION_40();
    lazy protocol witness table accessor for type PersonalSearchResult.SpotlightResultIdentifier and conformance PersonalSearchResult.SpotlightResultIdentifier();
    v30 = v38;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v37 + 8))(v1, v30);
  }

  else
  {
    v44 = 0;
    lazy protocol witness table accessor for type PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys and conformance PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys();
    OUTLINED_FUNCTION_46();
    OUTLINED_FUNCTION_40();
    v45 = v34;
    v46 = v33;
    lazy protocol witness table accessor for type PersonalSearchResult.AppEntityResultIdentifier and conformance PersonalSearchResult.AppEntityResultIdentifier();
    v31 = v36;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v35 + 8))(v17, v31);
  }

  (*(v19 + 8))(v24, v28);
  OUTLINED_FUNCTION_20();
}

unint64_t lazy protocol witness table accessor for type PersonalSearchResult.ResultIdentifier.CodingKeys and conformance PersonalSearchResult.ResultIdentifier.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier.CodingKeys and conformance PersonalSearchResult.ResultIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier.CodingKeys and conformance PersonalSearchResult.ResultIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier.CodingKeys and conformance PersonalSearchResult.ResultIdentifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier.CodingKeys and conformance PersonalSearchResult.ResultIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier.CodingKeys and conformance PersonalSearchResult.ResultIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier.CodingKeys and conformance PersonalSearchResult.ResultIdentifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier.CodingKeys and conformance PersonalSearchResult.ResultIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier.CodingKeys and conformance PersonalSearchResult.ResultIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier.CodingKeys and conformance PersonalSearchResult.ResultIdentifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier.CodingKeys and conformance PersonalSearchResult.ResultIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier.CodingKeys and conformance PersonalSearchResult.ResultIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier.CodingKeys and conformance PersonalSearchResult.ResultIdentifier.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PersonalSearchResult.ResultIdentifier.SpotlightCodingKeys and conformance PersonalSearchResult.ResultIdentifier.SpotlightCodingKeys()
{
  result = lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier.SpotlightCodingKeys and conformance PersonalSearchResult.ResultIdentifier.SpotlightCodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier.SpotlightCodingKeys and conformance PersonalSearchResult.ResultIdentifier.SpotlightCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier.SpotlightCodingKeys and conformance PersonalSearchResult.ResultIdentifier.SpotlightCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier.SpotlightCodingKeys and conformance PersonalSearchResult.ResultIdentifier.SpotlightCodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier.SpotlightCodingKeys and conformance PersonalSearchResult.ResultIdentifier.SpotlightCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier.SpotlightCodingKeys and conformance PersonalSearchResult.ResultIdentifier.SpotlightCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier.SpotlightCodingKeys and conformance PersonalSearchResult.ResultIdentifier.SpotlightCodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier.SpotlightCodingKeys and conformance PersonalSearchResult.ResultIdentifier.SpotlightCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier.SpotlightCodingKeys and conformance PersonalSearchResult.ResultIdentifier.SpotlightCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier.SpotlightCodingKeys and conformance PersonalSearchResult.ResultIdentifier.SpotlightCodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier.SpotlightCodingKeys and conformance PersonalSearchResult.ResultIdentifier.SpotlightCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier.SpotlightCodingKeys and conformance PersonalSearchResult.ResultIdentifier.SpotlightCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PersonalSearchResult.SpotlightResultIdentifier and conformance PersonalSearchResult.SpotlightResultIdentifier()
{
  result = lazy protocol witness table cache variable for type PersonalSearchResult.SpotlightResultIdentifier and conformance PersonalSearchResult.SpotlightResultIdentifier;
  if (!lazy protocol witness table cache variable for type PersonalSearchResult.SpotlightResultIdentifier and conformance PersonalSearchResult.SpotlightResultIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResult.SpotlightResultIdentifier and conformance PersonalSearchResult.SpotlightResultIdentifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchResult.SpotlightResultIdentifier and conformance PersonalSearchResult.SpotlightResultIdentifier;
  if (!lazy protocol witness table cache variable for type PersonalSearchResult.SpotlightResultIdentifier and conformance PersonalSearchResult.SpotlightResultIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResult.SpotlightResultIdentifier and conformance PersonalSearchResult.SpotlightResultIdentifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys and conformance PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys()
{
  result = lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys and conformance PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys and conformance PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys and conformance PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys and conformance PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys and conformance PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys and conformance PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys and conformance PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys and conformance PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys and conformance PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys and conformance PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys and conformance PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys and conformance PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PersonalSearchResult.AppEntityResultIdentifier and conformance PersonalSearchResult.AppEntityResultIdentifier()
{
  result = lazy protocol witness table cache variable for type PersonalSearchResult.AppEntityResultIdentifier and conformance PersonalSearchResult.AppEntityResultIdentifier;
  if (!lazy protocol witness table cache variable for type PersonalSearchResult.AppEntityResultIdentifier and conformance PersonalSearchResult.AppEntityResultIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResult.AppEntityResultIdentifier and conformance PersonalSearchResult.AppEntityResultIdentifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchResult.AppEntityResultIdentifier and conformance PersonalSearchResult.AppEntityResultIdentifier;
  if (!lazy protocol witness table cache variable for type PersonalSearchResult.AppEntityResultIdentifier and conformance PersonalSearchResult.AppEntityResultIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResult.AppEntityResultIdentifier and conformance PersonalSearchResult.AppEntityResultIdentifier);
  }

  return result;
}

void PersonalSearchResult.ResultIdentifier.init(from:)()
{
  OUTLINED_FUNCTION_17();
  v3 = v2;
  v59 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE6ResultV0G10IdentifierO19SpotlightCodingKeys33_74EAD77687BA185E2038F2774DE26538LLOGMd, &_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE6ResultV0G10IdentifierO19SpotlightCodingKeys33_74EAD77687BA185E2038F2774DE26538LLOGMR);
  v6 = OUTLINED_FUNCTION_1(v5);
  v56 = v7;
  v57 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_13();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE6ResultV0G10IdentifierO19AppEntityCodingKeys33_74EAD77687BA185E2038F2774DE26538LLOGMd, &_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE6ResultV0G10IdentifierO19AppEntityCodingKeys33_74EAD77687BA185E2038F2774DE26538LLOGMR);
  OUTLINED_FUNCTION_1(v11);
  v55 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v15);
  v17 = &v52 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE6ResultV0G10IdentifierO10CodingKeys33_74EAD77687BA185E2038F2774DE26538LLOGMd, &_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE6ResultV0G10IdentifierO10CodingKeys33_74EAD77687BA185E2038F2774DE26538LLOGMR);
  OUTLINED_FUNCTION_1(v18);
  v58 = v19;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_13_0();
  v23 = v3[4];
  OUTLINED_FUNCTION_26_0(v3, v3[3]);
  lazy protocol witness table accessor for type PersonalSearchResult.ResultIdentifier.CodingKeys and conformance PersonalSearchResult.ResultIdentifier.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    goto LABEL_9;
  }

  v53 = v11;
  v54 = v17;
  v66 = v3;
  v24 = v59;
  v25 = KeyedDecodingContainer.allKeys.getter();
  _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC19PersonalSearchTypes0jK7RequestO10CodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLO_Tt1g5(v25, 0);
  if (v28 == v29 >> 1)
  {
LABEL_7:
    v34 = type metadata accessor for DecodingError();
    swift_allocError();
    v36 = v35;
    v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v36 = &type metadata for PersonalSearchResult.ResultIdentifier;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v34 - 8) + 104))(v36, *MEMORY[0x277D84160], v34);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v58 + 8))(v1, v18);
    v3 = v66;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v3);
LABEL_10:
    OUTLINED_FUNCTION_20();
    return;
  }

  if (v28 < (v29 >> 1))
  {
    HIDWORD(v52) = *(v27 + v28);
    specialized ArraySlice.subscript.getter(v28 + 1, v29 >> 1, v26, v27, v28, v29);
    v31 = v30;
    v33 = v32;
    swift_unknownObjectRelease();
    if (v31 == v33 >> 1)
    {
      if ((v52 & 0x100000000) != 0)
      {
        LOBYTE(v60) = 1;
        lazy protocol witness table accessor for type PersonalSearchResult.ResultIdentifier.SpotlightCodingKeys and conformance PersonalSearchResult.ResultIdentifier.SpotlightCodingKeys();
        OUTLINED_FUNCTION_45();
        lazy protocol witness table accessor for type PersonalSearchResult.SpotlightResultIdentifier and conformance PersonalSearchResult.SpotlightResultIdentifier();
        OUTLINED_FUNCTION_44();
        swift_unknownObjectRelease();
        v38 = OUTLINED_FUNCTION_23_0();
        v39(v38);
        v40 = OUTLINED_FUNCTION_11_0();
        v41(v40);
        v42 = 0;
        v43 = 0;
        v44 = v60;
        v45 = v61;
        v46 = v62;
        v47 = v63;
      }

      else
      {
        LOBYTE(v60) = 0;
        lazy protocol witness table accessor for type PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys and conformance PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys();
        OUTLINED_FUNCTION_45();
        lazy protocol witness table accessor for type PersonalSearchResult.AppEntityResultIdentifier and conformance PersonalSearchResult.AppEntityResultIdentifier();
        OUTLINED_FUNCTION_44();
        swift_unknownObjectRelease();
        v48 = OUTLINED_FUNCTION_23_0();
        v49(v48);
        v50 = OUTLINED_FUNCTION_11_0();
        v51(v50);
        v44 = v60;
        v45 = v61;
        v46 = v62;
        v47 = v63;
        v42 = v64;
        v43 = v65;
      }

      *v24 = v44;
      *(v24 + 8) = v45;
      *(v24 + 16) = v46;
      *(v24 + 24) = v47;
      *(v24 + 32) = v42;
      *(v24 + 40) = v43;
      *(v24 + 48) = BYTE4(v52);
      __swift_destroy_boxed_opaque_existential_1(v3);
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t PersonalSearchResult.description.getter()
{
  OUTLINED_FUNCTION_17_0();
  v2 = (v0 + v1);
  v3 = *v2;
  v4 = v2[1];

  return OUTLINED_FUNCTION_30();
}

uint64_t PersonalSearchResult.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  if (v0[6])
  {
    OUTLINED_FUNCTION_2_0();
  }

  else
  {
    v8 = v0[4];
    v7 = v0[5];
    OUTLINED_FUNCTION_2_0();
    MEMORY[0x25F8B4230]();
    OUTLINED_FUNCTION_10_0();
    v5 = v8;
    v6 = v7;
  }

  MEMORY[0x25F8B4230](v5, v6);
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x25F8B4230](v1, v2);
  OUTLINED_FUNCTION_18_0();
  MEMORY[0x25F8B4230](10, 0xE100000000000000);
  OUTLINED_FUNCTION_17_0();
  v9 = PersonalSearchResult.DisplayRepresentation.debugDescription.getter();
  MEMORY[0x25F8B4230](v9);

  return v11;
}

uint64_t PersonalSearchResult.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  return outlined copy of PersonalSearchResult.ResultIdentifier(v2, v3, v4, v5, v6, v7, v8);
}

void static PersonalSearchResult.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v41[0] = *a1;
  v41[1] = v2;
  v37 = v2;
  v38 = v41[0];
  v41[2] = v3;
  v41[3] = v4;
  v35 = v4;
  v36 = v3;
  v41[4] = v5;
  v41[5] = v6;
  v33 = v6;
  v34 = v5;
  v42 = v7;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  v13 = *(a2 + 48);
  v39[0] = *a2;
  v39[1] = v8;
  v39[2] = v9;
  v39[3] = v10;
  v39[4] = v11;
  v39[5] = v12;
  v40 = v13;
  outlined copy of PersonalSearchResult.ResultIdentifier(v41[0], v2, v3, v4, v5, v6, v7);
  v14 = OUTLINED_FUNCTION_16_0();
  outlined copy of PersonalSearchResult.ResultIdentifier(v14, v15, v16, v17, v18, v19, v20);
  static PersonalSearchResult.ResultIdentifier.== infix(_:_:)(v41, v39);
  v32 = v21;
  v22 = OUTLINED_FUNCTION_16_0();
  outlined consume of PersonalSearchResult.ResultIdentifier(v22, v23, v24, v25, v26, v27, v28);
  outlined consume of PersonalSearchResult.ResultIdentifier(v38, v37, v36, v35, v34, v33, v7);
  if (v32)
  {
    OUTLINED_FUNCTION_17_0();
    OUTLINED_FUNCTION_42();

    static PersonalSearchResult.DisplayRepresentation.== infix(_:_:)(v29, v30);
  }

  else
  {
    OUTLINED_FUNCTION_42();
  }
}

uint64_t PersonalSearchResult.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x800000025E48D420 == a2)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t PersonalSearchResult.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PersonalSearchResult.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = PersonalSearchResult.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PersonalSearchResult.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchResult.CodingKeys and conformance PersonalSearchResult.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PersonalSearchResult.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchResult.CodingKeys and conformance PersonalSearchResult.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PersonalSearchResult.encode(to:)(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE6ResultV10CodingKeys33_74EAD77687BA185E2038F2774DE26538LLOGMd, &_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE6ResultV10CodingKeys33_74EAD77687BA185E2038F2774DE26538LLOGMR);
  OUTLINED_FUNCTION_1(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_24_0();
  v12 = a1[4];
  OUTLINED_FUNCTION_26_0(a1, a1[3]);
  lazy protocol witness table accessor for type PersonalSearchResult.CodingKeys and conformance PersonalSearchResult.CodingKeys();
  OUTLINED_FUNCTION_43();
  v17 = *v4;
  v18 = *(v4 + 8);
  v19 = *(v4 + 16);
  v20 = *(v4 + 24);
  v21 = *(v4 + 32);
  v22 = *(v4 + 40);
  v23 = *(v4 + 48);
  outlined copy of PersonalSearchResult.ResultIdentifier(*v4, v18, v19, v20, v21, v22, v23);
  lazy protocol witness table accessor for type PersonalSearchResult.ResultIdentifier and conformance PersonalSearchResult.ResultIdentifier();
  OUTLINED_FUNCTION_29_0();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  outlined consume of PersonalSearchResult.ResultIdentifier(v17, v18, v19, v20, v21, v22, v23);
  if (!v2)
  {
    v13 = *(type metadata accessor for PersonalSearchResult(0) + 20);
    type metadata accessor for PersonalSearchResult.DisplayRepresentation(0);
    OUTLINED_FUNCTION_9_0();
    lazy protocol witness table accessor for type URL and conformance URL(v14, v15);
    OUTLINED_FUNCTION_29_0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v3, v6);
}

void PersonalSearchResult.init(from:)()
{
  OUTLINED_FUNCTION_17();
  v2 = v1;
  v28 = v3;
  v29 = type metadata accessor for PersonalSearchResult.DisplayRepresentation(0);
  v4 = OUTLINED_FUNCTION_3_0(v29);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_12_0();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE6ResultV10CodingKeys33_74EAD77687BA185E2038F2774DE26538LLOGMd, &_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE6ResultV10CodingKeys33_74EAD77687BA185E2038F2774DE26538LLOGMR);
  OUTLINED_FUNCTION_1(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v13);
  v14 = type metadata accessor for PersonalSearchResult(0);
  v15 = OUTLINED_FUNCTION_3_0(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_12_0();
  v20 = v19 - v18;
  v21 = v2[4];
  OUTLINED_FUNCTION_26_0(v2, v2[3]);
  lazy protocol witness table accessor for type PersonalSearchResult.CodingKeys and conformance PersonalSearchResult.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    lazy protocol witness table accessor for type PersonalSearchResult.ResultIdentifier and conformance PersonalSearchResult.ResultIdentifier();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *v20 = v30;
    *(v20 + 16) = v31;
    *(v20 + 32) = v32;
    *(v20 + 48) = v33;
    OUTLINED_FUNCTION_9_0();
    lazy protocol witness table accessor for type URL and conformance URL(v22, v23);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v24 = OUTLINED_FUNCTION_34_0();
    v25(v24);
    outlined init with take of PersonalSearchResult.DisplayRepresentation(v9, v20 + *(v14 + 20));
    outlined init with copy of PersonalSearchResult.DisplayRepresentation(v20, v28, type metadata accessor for PersonalSearchResult);
    __swift_destroy_boxed_opaque_existential_1(v2);
    v26 = OUTLINED_FUNCTION_30();
    outlined destroy of PersonalSearchResult.DisplayRepresentation(v26, v27);
  }

  OUTLINED_FUNCTION_20();
}

void _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC19PersonalSearchTypes0jK7RequestO10CodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLO_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(a1 + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_4_0();
    return;
  }

LABEL_9:
  __break(1u);
}

unint64_t lazy protocol witness table accessor for type PersonalSearchResult.CodingKeys and conformance PersonalSearchResult.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PersonalSearchResult.CodingKeys and conformance PersonalSearchResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResult.CodingKeys and conformance PersonalSearchResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResult.CodingKeys and conformance PersonalSearchResult.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchResult.CodingKeys and conformance PersonalSearchResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResult.CodingKeys and conformance PersonalSearchResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResult.CodingKeys and conformance PersonalSearchResult.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchResult.CodingKeys and conformance PersonalSearchResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResult.CodingKeys and conformance PersonalSearchResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResult.CodingKeys and conformance PersonalSearchResult.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchResult.CodingKeys and conformance PersonalSearchResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResult.CodingKeys and conformance PersonalSearchResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResult.CodingKeys and conformance PersonalSearchResult.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PersonalSearchResult.ResultIdentifier and conformance PersonalSearchResult.ResultIdentifier()
{
  result = lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier and conformance PersonalSearchResult.ResultIdentifier;
  if (!lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier and conformance PersonalSearchResult.ResultIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier and conformance PersonalSearchResult.ResultIdentifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier and conformance PersonalSearchResult.ResultIdentifier;
  if (!lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier and conformance PersonalSearchResult.ResultIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResult.ResultIdentifier and conformance PersonalSearchResult.ResultIdentifier);
  }

  return result;
}

uint64_t outlined init with take of PersonalSearchResult.DisplayRepresentation(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonalSearchResult.DisplayRepresentation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of PersonalSearchResult.DisplayRepresentation(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_3_0(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_30();
  v8(v7);
  return a2;
}

uint64_t outlined destroy of PersonalSearchResult.DisplayRepresentation(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_3_0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_25E47D11C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v3 = *(a1 + 48);
    if (v3 > 1)
    {
      return (v3 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    type metadata accessor for PersonalSearchResult.DisplayRepresentation(0);
    v6 = OUTLINED_FUNCTION_35_0(*(a3 + 20));

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

uint64_t sub_25E47D1AC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 254)
  {
    *(result + 48) = -a2;
  }

  else
  {
    type metadata accessor for PersonalSearchResult.DisplayRepresentation(0);
    v6 = OUTLINED_FUNCTION_35_0(*(a4 + 20));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t type metadata completion function for PersonalSearchResult()
{
  result = type metadata accessor for PersonalSearchResult.DisplayRepresentation(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25E47D2DC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v3 = *(a1 + 8);
    if (v3 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    return (v3 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v6 = OUTLINED_FUNCTION_35_0(*(a3 + 24));

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

uint64_t sub_25E47D380(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v6 = OUTLINED_FUNCTION_35_0(*(a4 + 24));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

void type metadata completion function for PersonalSearchResult.DisplayRepresentation()
{
  type metadata accessor for String?();
  if (v0 <= 0x3F)
  {
    type metadata accessor for URL?();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for String?()
{
  if (!lazy cache variable for type metadata for String?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for String?);
    }
  }
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

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PersonalSearchResult.AppEntityResultIdentifier(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PersonalSearchResult.AppEntityResultIdentifier(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PersonalSearchResult.ResultIdentifier(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 49))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 48);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PersonalSearchResult.ResultIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys(unsigned __int8 *a1, int a2)
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

  return getEnumTag for PersonalSearchQuery.CodingKeys(a1);
}

_BYTE *storeEnumTagSinglePayload for PersonalSearchResult.ResultIdentifier.AppEntityCodingKeys(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x25E47D808);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PersonalSearchResult.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x25E47D908);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_33_0(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PersonalSearchResult.AppEntityResultIdentifier.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PersonalSearchResult.AppEntityResultIdentifier.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x25E47DAA8);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_33_0(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t specialized ArraySlice.subscript.getter(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

void OUTLINED_FUNCTION_10_0()
{

  JUMPOUT(0x25F8B4230);
}

uint64_t OUTLINED_FUNCTION_17_0()
{
  result = type metadata accessor for PersonalSearchResult(0);
  v1 = *(result + 20);
  return result;
}

void OUTLINED_FUNCTION_18_0()
{

  JUMPOUT(0x25F8B4230);
}

uint64_t OUTLINED_FUNCTION_28_0()
{
  result = type metadata accessor for PersonalSearchResult.DisplayRepresentation(0);
  v1 = *(result + 24);
  return result;
}

void OUTLINED_FUNCTION_30_0()
{

  JUMPOUT(0x25F8B4230);
}

void OUTLINED_FUNCTION_40()
{
  v1 = *(v0 - 160);
  *(v0 - 128) = *(v0 - 168);
  *(v0 - 120) = v1;
  v2 = *(v0 - 144);
  *(v0 - 112) = *(v0 - 152);
  *(v0 - 104) = v2;
}

uint64_t OUTLINED_FUNCTION_43()
{

  return dispatch thunk of Encoder.container<A>(keyedBy:)();
}

uint64_t OUTLINED_FUNCTION_44()
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_45()
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t OUTLINED_FUNCTION_46()
{
  v2 = *(v0 - 136);

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t OUTLINED_FUNCTION_47()
{

  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_49()
{

  return KeyedEncodingContainer.encode(_:forKey:)();
}

uint64_t static PersonalSearchRequest.== infix(_:_:)(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v20, a2, sizeof(v20));
  memcpy(v21, __src, sizeof(v21));
  memcpy(v22, a2, sizeof(v22));
  if (__dst[1] == 2)
  {
    if (v20[1] != 2)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (__dst[1] != 1)
    {
      if (__dst[1])
      {
        if (v20[1] >= 3uLL)
        {
          v14[0] = __dst[0];
          v14[1] = __dst[1];
          v6 = *(__src + 2);
          v15 = *(__src + 1);
          v16 = v6;
          v17 = *(__src + 3);
          v18 = *(__src + 8);
          v9[0] = v20[0];
          v9[1] = v20[1];
          v7 = *(a2 + 32);
          v10 = *(a2 + 16);
          v11 = v7;
          v12 = *(a2 + 48);
          v13 = *(a2 + 64);
          outlined init with copy of PersonalSearchRequest(v20, v8);
          outlined init with copy of PersonalSearchRequest(__dst, v8);
          outlined init with copy of PersonalSearchRequest(v20, v8);
          outlined init with copy of PersonalSearchRequest(__dst, v8);
          v4 = static PersonalSearchQuery.== infix(_:_:)(v14, v9);
          outlined destroy of (PersonalSearchRequest, PersonalSearchRequest)(v21, &_s19PersonalSearchTypes0aB7RequestO_ACtMd, &_s19PersonalSearchTypes0aB7RequestO_ACtMR);
          outlined destroy of PersonalSearchRequest(v20);
          outlined destroy of PersonalSearchRequest(__dst);
          return v4 & 1;
        }
      }

      else if (!v20[1])
      {
        goto LABEL_9;
      }

LABEL_11:
      outlined init with copy of PersonalSearchRequest(v20, v14);
      outlined init with copy of PersonalSearchRequest(__dst, v14);
      outlined destroy of (PersonalSearchRequest, PersonalSearchRequest)(v21, &_s19PersonalSearchTypes0aB7RequestO_ACtMd, &_s19PersonalSearchTypes0aB7RequestO_ACtMR);
      v4 = 0;
      return v4 & 1;
    }

    if (v20[1] != 1)
    {
      goto LABEL_11;
    }
  }

LABEL_9:
  outlined destroy of (PersonalSearchRequest, PersonalSearchRequest)(v21, &_s19PersonalSearchTypes0aB7RequestO_ACtMd, &_s19PersonalSearchTypes0aB7RequestO_ACtMR);
  v4 = 1;
  return v4 & 1;
}

uint64_t PersonalSearchRequest.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74616568657270 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6574617669746361 && a2 == 0xE800000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6176697463616564 && a2 == 0xEA00000000006574;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x686372616573 && a2 == 0xE600000000000000)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t PersonalSearchRequest.CodingKeys.stringValue.getter(char a1)
{
  result = 0x74616568657270;
  switch(a1)
  {
    case 1:
      result = 0x6574617669746361;
      break;
    case 2:
      result = 0x6176697463616564;
      break;
    case 3:
      result = 0x686372616573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ServiceError.InvalidRequestCodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = ServiceError.InvalidRequestCodingKeys.init(stringValue:)();
  *a1 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PersonalSearchRequest.ActivateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchRequest.ActivateCodingKeys and conformance PersonalSearchRequest.ActivateCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PersonalSearchRequest.ActivateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchRequest.ActivateCodingKeys and conformance PersonalSearchRequest.ActivateCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PersonalSearchRequest.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = PersonalSearchRequest.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PersonalSearchRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchRequest.CodingKeys and conformance PersonalSearchRequest.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PersonalSearchRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchRequest.CodingKeys and conformance PersonalSearchRequest.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PersonalSearchRequest.DeactivateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchRequest.DeactivateCodingKeys and conformance PersonalSearchRequest.DeactivateCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PersonalSearchRequest.DeactivateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchRequest.DeactivateCodingKeys and conformance PersonalSearchRequest.DeactivateCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PersonalSearchRequest.PreheatCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchRequest.PreheatCodingKeys and conformance PersonalSearchRequest.PreheatCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PersonalSearchRequest.PreheatCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchRequest.PreheatCodingKeys and conformance PersonalSearchRequest.PreheatCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PersonalSearchRequest.SearchCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchRequest.SearchCodingKeys and conformance PersonalSearchRequest.SearchCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PersonalSearchRequest.SearchCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchRequest.SearchCodingKeys and conformance PersonalSearchRequest.SearchCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void PersonalSearchRequest.encode(to:)()
{
  OUTLINED_FUNCTION_17();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE7RequestO0E10CodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMd, &_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE7RequestO0E10CodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMR);
  v5 = OUTLINED_FUNCTION_1(v4);
  v60 = v6;
  v61 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_19_0();
  v59 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE7RequestO20DeactivateCodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMd, &_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE7RequestO20DeactivateCodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMR);
  v12 = OUTLINED_FUNCTION_1(v11);
  v57 = v13;
  v58 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_19_0();
  v56 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE7RequestO18ActivateCodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMd, &_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE7RequestO18ActivateCodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMR);
  v19 = OUTLINED_FUNCTION_1(v18);
  v54 = v20;
  v55 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v23);
  v25 = v53 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE7RequestO17PreheatCodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMd, &_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE7RequestO17PreheatCodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMR);
  OUTLINED_FUNCTION_1(v26);
  v53[1] = v27;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_17_1();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE7RequestO10CodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMd, &_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE7RequestO10CodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMR);
  v32 = OUTLINED_FUNCTION_1(v31);
  v62 = v33;
  v63 = v32;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_3_1();
  v37 = *(v1 + 8);
  v53[0] = *v1;
  v38 = v3[4];
  OUTLINED_FUNCTION_26_0(v3, v3[3]);
  lazy protocol witness table accessor for type PersonalSearchRequest.CodingKeys and conformance PersonalSearchRequest.CodingKeys();
  OUTLINED_FUNCTION_20_1();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v37 == 2)
  {
    LOBYTE(v64) = 2;
    lazy protocol witness table accessor for type PersonalSearchRequest.DeactivateCodingKeys and conformance PersonalSearchRequest.DeactivateCodingKeys();
    v46 = v56;
    v45 = v63;
    OUTLINED_FUNCTION_7_1();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v57 + 8))(v46, v58);
    goto LABEL_7;
  }

  if (v37 == 1)
  {
    LOBYTE(v64) = 1;
    lazy protocol witness table accessor for type PersonalSearchRequest.ActivateCodingKeys and conformance PersonalSearchRequest.ActivateCodingKeys();
    v45 = v63;
    OUTLINED_FUNCTION_7_1();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v54 + 8))(v25, v55);
LABEL_7:
    v47 = OUTLINED_FUNCTION_13_1();
    v48(v47, v45);
    goto LABEL_10;
  }

  if (v37)
  {
    LOBYTE(v64) = 3;
    lazy protocol witness table accessor for type PersonalSearchRequest.SearchCodingKeys and conformance PersonalSearchRequest.SearchCodingKeys();
    v49 = v59;
    v50 = v63;
    OUTLINED_FUNCTION_7_1();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v64 = v53[0];
    v65 = v37;
    v51 = *(v1 + 32);
    v66 = *(v1 + 16);
    v67 = v51;
    v68 = *(v1 + 48);
    v69 = *(v1 + 64);
    lazy protocol witness table accessor for type PersonalSearchQuery and conformance PersonalSearchQuery();
    v52 = v61;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v60 + 8))(v49, v52);
    v42 = OUTLINED_FUNCTION_13_1();
    v44 = v50;
  }

  else
  {
    LOBYTE(v64) = 0;
    lazy protocol witness table accessor for type PersonalSearchRequest.PreheatCodingKeys and conformance PersonalSearchRequest.PreheatCodingKeys();
    v39 = v63;
    OUTLINED_FUNCTION_7_1();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v40 = OUTLINED_FUNCTION_23_0();
    v41(v40);
    v42 = OUTLINED_FUNCTION_13_1();
    v44 = v39;
  }

  v43(v42, v44);
LABEL_10:
  OUTLINED_FUNCTION_20();
}

unint64_t lazy protocol witness table accessor for type PersonalSearchRequest.CodingKeys and conformance PersonalSearchRequest.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PersonalSearchRequest.CodingKeys and conformance PersonalSearchRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchRequest.CodingKeys and conformance PersonalSearchRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchRequest.CodingKeys and conformance PersonalSearchRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchRequest.CodingKeys and conformance PersonalSearchRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchRequest.CodingKeys and conformance PersonalSearchRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchRequest.CodingKeys and conformance PersonalSearchRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchRequest.CodingKeys and conformance PersonalSearchRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchRequest.CodingKeys and conformance PersonalSearchRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchRequest.CodingKeys and conformance PersonalSearchRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchRequest.CodingKeys and conformance PersonalSearchRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchRequest.CodingKeys and conformance PersonalSearchRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchRequest.CodingKeys and conformance PersonalSearchRequest.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PersonalSearchRequest.SearchCodingKeys and conformance PersonalSearchRequest.SearchCodingKeys()
{
  result = lazy protocol witness table cache variable for type PersonalSearchRequest.SearchCodingKeys and conformance PersonalSearchRequest.SearchCodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchRequest.SearchCodingKeys and conformance PersonalSearchRequest.SearchCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchRequest.SearchCodingKeys and conformance PersonalSearchRequest.SearchCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchRequest.SearchCodingKeys and conformance PersonalSearchRequest.SearchCodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchRequest.SearchCodingKeys and conformance PersonalSearchRequest.SearchCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchRequest.SearchCodingKeys and conformance PersonalSearchRequest.SearchCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchRequest.SearchCodingKeys and conformance PersonalSearchRequest.SearchCodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchRequest.SearchCodingKeys and conformance PersonalSearchRequest.SearchCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchRequest.SearchCodingKeys and conformance PersonalSearchRequest.SearchCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchRequest.SearchCodingKeys and conformance PersonalSearchRequest.SearchCodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchRequest.SearchCodingKeys and conformance PersonalSearchRequest.SearchCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchRequest.SearchCodingKeys and conformance PersonalSearchRequest.SearchCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PersonalSearchQuery and conformance PersonalSearchQuery()
{
  result = lazy protocol witness table cache variable for type PersonalSearchQuery and conformance PersonalSearchQuery;
  if (!lazy protocol witness table cache variable for type PersonalSearchQuery and conformance PersonalSearchQuery)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchQuery and conformance PersonalSearchQuery);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchQuery and conformance PersonalSearchQuery;
  if (!lazy protocol witness table cache variable for type PersonalSearchQuery and conformance PersonalSearchQuery)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchQuery and conformance PersonalSearchQuery);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PersonalSearchRequest.DeactivateCodingKeys and conformance PersonalSearchRequest.DeactivateCodingKeys()
{
  result = lazy protocol witness table cache variable for type PersonalSearchRequest.DeactivateCodingKeys and conformance PersonalSearchRequest.DeactivateCodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchRequest.DeactivateCodingKeys and conformance PersonalSearchRequest.DeactivateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchRequest.DeactivateCodingKeys and conformance PersonalSearchRequest.DeactivateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchRequest.DeactivateCodingKeys and conformance PersonalSearchRequest.DeactivateCodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchRequest.DeactivateCodingKeys and conformance PersonalSearchRequest.DeactivateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchRequest.DeactivateCodingKeys and conformance PersonalSearchRequest.DeactivateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchRequest.DeactivateCodingKeys and conformance PersonalSearchRequest.DeactivateCodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchRequest.DeactivateCodingKeys and conformance PersonalSearchRequest.DeactivateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchRequest.DeactivateCodingKeys and conformance PersonalSearchRequest.DeactivateCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PersonalSearchRequest.ActivateCodingKeys and conformance PersonalSearchRequest.ActivateCodingKeys()
{
  result = lazy protocol witness table cache variable for type PersonalSearchRequest.ActivateCodingKeys and conformance PersonalSearchRequest.ActivateCodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchRequest.ActivateCodingKeys and conformance PersonalSearchRequest.ActivateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchRequest.ActivateCodingKeys and conformance PersonalSearchRequest.ActivateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchRequest.ActivateCodingKeys and conformance PersonalSearchRequest.ActivateCodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchRequest.ActivateCodingKeys and conformance PersonalSearchRequest.ActivateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchRequest.ActivateCodingKeys and conformance PersonalSearchRequest.ActivateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchRequest.ActivateCodingKeys and conformance PersonalSearchRequest.ActivateCodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchRequest.ActivateCodingKeys and conformance PersonalSearchRequest.ActivateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchRequest.ActivateCodingKeys and conformance PersonalSearchRequest.ActivateCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PersonalSearchRequest.PreheatCodingKeys and conformance PersonalSearchRequest.PreheatCodingKeys()
{
  result = lazy protocol witness table cache variable for type PersonalSearchRequest.PreheatCodingKeys and conformance PersonalSearchRequest.PreheatCodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchRequest.PreheatCodingKeys and conformance PersonalSearchRequest.PreheatCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchRequest.PreheatCodingKeys and conformance PersonalSearchRequest.PreheatCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchRequest.PreheatCodingKeys and conformance PersonalSearchRequest.PreheatCodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchRequest.PreheatCodingKeys and conformance PersonalSearchRequest.PreheatCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchRequest.PreheatCodingKeys and conformance PersonalSearchRequest.PreheatCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchRequest.PreheatCodingKeys and conformance PersonalSearchRequest.PreheatCodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchRequest.PreheatCodingKeys and conformance PersonalSearchRequest.PreheatCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchRequest.PreheatCodingKeys and conformance PersonalSearchRequest.PreheatCodingKeys);
  }

  return result;
}

void PersonalSearchRequest.init(from:)()
{
  OUTLINED_FUNCTION_17();
  v4 = v3;
  v89 = v5;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE7RequestO0E10CodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMd, &_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE7RequestO0E10CodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMR);
  OUTLINED_FUNCTION_1(v92);
  v88 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_19_0();
  v91 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE7RequestO20DeactivateCodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMd, &_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE7RequestO20DeactivateCodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMR);
  v12 = OUTLINED_FUNCTION_1(v11);
  v85 = v13;
  v86 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_19_0();
  v87 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE7RequestO18ActivateCodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMd, &_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE7RequestO18ActivateCodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMR);
  v19 = OUTLINED_FUNCTION_1(v18);
  v83 = v20;
  v84 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v23);
  v25 = &v77 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE7RequestO17PreheatCodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMd, &_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE7RequestO17PreheatCodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMR);
  OUTLINED_FUNCTION_1(v26);
  v82 = v27;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_3_1();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE7RequestO10CodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMd, &_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE7RequestO10CodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMR);
  OUTLINED_FUNCTION_1(v31);
  v90 = v32;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_13_0();
  v36 = v4[4];
  OUTLINED_FUNCTION_26_0(v4, v4[3]);
  lazy protocol witness table accessor for type PersonalSearchRequest.CodingKeys and conformance PersonalSearchRequest.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    goto LABEL_8;
  }

  v80 = v1;
  v79 = v26;
  v81 = v25;
  v38 = v91;
  v37 = v92;
  v39 = KeyedDecodingContainer.allKeys.getter();
  _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC19PersonalSearchTypes0jK7RequestO10CodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLO_Tt1g5(v39, 0);
  if (v41 == v40 >> 1)
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_16_1();
  if (v45 >= (v44 >> 1))
  {
    __break(1u);
    JUMPOUT(0x25E47FA64);
  }

  v78 = *(v43 + v42);
  specialized ArraySlice.subscript.getter(v42 + 1);
  v47 = v46;
  v49 = v48;
  swift_unknownObjectRelease();
  if (v47 != v49 >> 1)
  {
LABEL_7:
    v57 = type metadata accessor for DecodingError();
    OUTLINED_FUNCTION_23_1();
    swift_allocError();
    v59 = v58;
    v60 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v59 = &type metadata for PersonalSearchRequest;
    KeyedDecodingContainer.codingPath.getter();
    OUTLINED_FUNCTION_11_1();
    v61 = *MEMORY[0x277D84160];
    OUTLINED_FUNCTION_21_0(v57);
    (*(v62 + 104))(v59);
    swift_willThrow();
    swift_unknownObjectRelease();
    v63 = OUTLINED_FUNCTION_1_1();
    v64(v63);
LABEL_8:
    v65 = v4;
    goto LABEL_9;
  }

  v51 = v88;
  v50 = v89;
  switch(v78)
  {
    case 1:
      LOBYTE(v93) = 1;
      lazy protocol witness table accessor for type PersonalSearchRequest.ActivateCodingKeys and conformance PersonalSearchRequest.ActivateCodingKeys();
      v70 = v81;
      OUTLINED_FUNCTION_8_0();
      swift_unknownObjectRelease();
      (*(v83 + 8))(v70, v84);
      v72 = OUTLINED_FUNCTION_1_1();
      v73(v72);
      v55 = 0;
      v56 = xmmword_25E48A320;
      goto LABEL_13;
    case 2:
      LOBYTE(v93) = 2;
      lazy protocol witness table accessor for type PersonalSearchRequest.DeactivateCodingKeys and conformance PersonalSearchRequest.DeactivateCodingKeys();
      v66 = v87;
      OUTLINED_FUNCTION_8_0();
      swift_unknownObjectRelease();
      (*(v85 + 8))(v66, v86);
      v67 = OUTLINED_FUNCTION_1_1();
      v68(v67);
      v55 = 0;
      v56 = xmmword_25E48A310;
      goto LABEL_13;
    case 3:
      LOBYTE(v93) = 3;
      lazy protocol witness table accessor for type PersonalSearchRequest.SearchCodingKeys and conformance PersonalSearchRequest.SearchCodingKeys();
      v69 = v38;
      OUTLINED_FUNCTION_8_0();
      lazy protocol witness table accessor for type PersonalSearchQuery and conformance PersonalSearchQuery();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v71 = v90;
      swift_unknownObjectRelease();
      (*(v51 + 8))(v69, v37);
      (*(v71 + 8))(v2, v31);
      v56 = v93;
      v74 = v94;
      v75 = v95;
      v76 = v96;
      v55 = v97;
      v50 = v89;
      goto LABEL_14;
    default:
      LOBYTE(v93) = 0;
      lazy protocol witness table accessor for type PersonalSearchRequest.PreheatCodingKeys and conformance PersonalSearchRequest.PreheatCodingKeys();
      v52 = v80;
      OUTLINED_FUNCTION_8_0();
      swift_unknownObjectRelease();
      (*(v82 + 8))(v52, v79);
      v53 = OUTLINED_FUNCTION_1_1();
      v54(v53);
      v55 = 0;
      v56 = 0uLL;
LABEL_13:
      v74 = 0uLL;
      v75 = 0uLL;
      v76 = 0uLL;
LABEL_14:
      *v50 = v56;
      *(v50 + 16) = v74;
      *(v50 + 32) = v75;
      *(v50 + 48) = v76;
      *(v50 + 64) = v55;
      v65 = v4;
      break;
  }

LABEL_9:
  __swift_destroy_boxed_opaque_existential_1(v65);
  OUTLINED_FUNCTION_20();
}

uint64_t PersonalSearchError.ErrorType.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5264696C61766E69 && a2 == 0xEE00747365757165;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C616E7265746E69 && a2 == 0xED0000726F727245)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t PersonalSearchError.ErrorType.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x6C616E7265746E69;
  }

  else
  {
    return 0x5264696C61766E69;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PersonalSearchError.ErrorType.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = PersonalSearchError.ErrorType.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PersonalSearchError.ErrorType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchError.ErrorType.CodingKeys and conformance PersonalSearchError.ErrorType.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PersonalSearchError.ErrorType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchError.ErrorType.CodingKeys and conformance PersonalSearchError.ErrorType.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PersonalSearchError.ErrorType.InternalErrorCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchError.ErrorType.InternalErrorCodingKeys and conformance PersonalSearchError.ErrorType.InternalErrorCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PersonalSearchError.ErrorType.InternalErrorCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchError.ErrorType.InternalErrorCodingKeys and conformance PersonalSearchError.ErrorType.InternalErrorCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PersonalSearchError.ErrorType.InvalidRequestCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchError.ErrorType.InvalidRequestCodingKeys and conformance PersonalSearchError.ErrorType.InvalidRequestCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PersonalSearchError.ErrorType.InvalidRequestCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchError.ErrorType.InvalidRequestCodingKeys and conformance PersonalSearchError.ErrorType.InvalidRequestCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void PersonalSearchError.ErrorType.encode(to:)()
{
  OUTLINED_FUNCTION_17();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE5ErrorV0G4TypeO08InternalG10CodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMd, &_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE5ErrorV0G4TypeO08InternalG10CodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMR);
  v5 = OUTLINED_FUNCTION_1(v4);
  v32 = v6;
  v33 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_19_0();
  v31 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE5ErrorV0G4TypeO24InvalidRequestCodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMd, &_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE5ErrorV0G4TypeO24InvalidRequestCodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMR);
  v12 = OUTLINED_FUNCTION_1(v11);
  v29 = v13;
  v30 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_17_1();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE5ErrorV0G4TypeO10CodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMd, &_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE5ErrorV0G4TypeO10CodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMR);
  OUTLINED_FUNCTION_1(v17);
  v19 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v22);
  v24 = &v29 - v23;
  v25 = *v0;
  v26 = v3[4];
  OUTLINED_FUNCTION_26_0(v3, v3[3]);
  lazy protocol witness table accessor for type PersonalSearchError.ErrorType.CodingKeys and conformance PersonalSearchError.ErrorType.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v27 = (v19 + 8);
  if (v25)
  {
    lazy protocol witness table accessor for type PersonalSearchError.ErrorType.InternalErrorCodingKeys and conformance PersonalSearchError.ErrorType.InternalErrorCodingKeys();
    v28 = v31;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v32 + 8))(v28, v33);
  }

  else
  {
    lazy protocol witness table accessor for type PersonalSearchError.ErrorType.InvalidRequestCodingKeys and conformance PersonalSearchError.ErrorType.InvalidRequestCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v29 + 8))(v1, v30);
  }

  (*v27)(v24, v17);
  OUTLINED_FUNCTION_20();
}

Swift::Int PersonalSearchError.ErrorType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x25F8B4470](v1);
  return Hasher._finalize()();
}

void PersonalSearchError.ErrorType.init(from:)()
{
  OUTLINED_FUNCTION_17();
  v63 = v0;
  v4 = v3;
  v60 = v5;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE5ErrorV0G4TypeO08InternalG10CodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMd, &_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE5ErrorV0G4TypeO08InternalG10CodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMR);
  OUTLINED_FUNCTION_1(v62);
  v59 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  v11 = &v54 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE5ErrorV0G4TypeO24InvalidRequestCodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMd, &_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE5ErrorV0G4TypeO24InvalidRequestCodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMR);
  OUTLINED_FUNCTION_1(v12);
  v58 = v13;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_13_0();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE5ErrorV0G4TypeO10CodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMd, &_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE5ErrorV0G4TypeO10CodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMR);
  OUTLINED_FUNCTION_1(v17);
  v61 = v18;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_3_1();
  v22 = v4[4];
  OUTLINED_FUNCTION_26_0(v4, v4[3]);
  lazy protocol witness table accessor for type PersonalSearchError.ErrorType.CodingKeys and conformance PersonalSearchError.ErrorType.CodingKeys();
  OUTLINED_FUNCTION_20_1();
  v23 = v63;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    goto LABEL_11;
  }

  v56 = v12;
  v57 = v2;
  v63 = v4;
  v24 = v62;
  OUTLINED_FUNCTION_22_0();
  v25 = KeyedDecodingContainer.allKeys.getter();
  started = _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC19PersonalSearchTypes0jK8ResponseO10CodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLO_Tt1g5(v25, 0);
  if (v28 == v27 >> 1)
  {
    v62 = started;
LABEL_10:
    v44 = type metadata accessor for DecodingError();
    OUTLINED_FUNCTION_23_1();
    swift_allocError();
    v46 = v45;
    v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v46 = &type metadata for PersonalSearchError.ErrorType;
    OUTLINED_FUNCTION_22_0();
    KeyedDecodingContainer.codingPath.getter();
    OUTLINED_FUNCTION_11_1();
    v48 = *MEMORY[0x277D84160];
    OUTLINED_FUNCTION_21_0(v44);
    (*(v49 + 104))(v46);
    swift_willThrow();
    swift_unknownObjectRelease();
    v50 = OUTLINED_FUNCTION_13_1();
    v51(v50, v17);
    v4 = v63;
LABEL_11:
    __swift_destroy_boxed_opaque_existential_1(v4);
LABEL_12:
    OUTLINED_FUNCTION_20();
    return;
  }

  OUTLINED_FUNCTION_16_1();
  v55 = 0;
  if (v32 < (v31 >> 1))
  {
    v33 = *(v30 + v29);
    v34 = specialized ArraySlice.subscript.getter(v29 + 1);
    v36 = v35;
    v38 = v37;
    swift_unknownObjectRelease();
    if (v36 != v38 >> 1)
    {
      v62 = v34;
      goto LABEL_10;
    }

    if (v33)
    {
      lazy protocol witness table accessor for type PersonalSearchError.ErrorType.InternalErrorCodingKeys and conformance PersonalSearchError.ErrorType.InternalErrorCodingKeys();
      v39 = v11;
      v40 = v17;
      OUTLINED_FUNCTION_7_1();
      v41 = v55;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v42 = v60;
      v43 = v61;
      if (!v41)
      {
        swift_unknownObjectRelease();
        (*(v59 + 8))(v39, v24);
LABEL_16:
        (*(v43 + 8))(v1, v40);
        *v42 = v33;
        __swift_destroy_boxed_opaque_existential_1(v63);
        goto LABEL_12;
      }
    }

    else
    {
      lazy protocol witness table accessor for type PersonalSearchError.ErrorType.InvalidRequestCodingKeys and conformance PersonalSearchError.ErrorType.InvalidRequestCodingKeys();
      v52 = v57;
      v40 = v17;
      OUTLINED_FUNCTION_7_1();
      v53 = v55;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v42 = v60;
      v43 = v61;
      if (!v53)
      {
        swift_unknownObjectRelease();
        (*(v58 + 8))(v52, v56);
        goto LABEL_16;
      }
    }

    (*(v43 + 8))(v1, v40);
    swift_unknownObjectRelease();
    v4 = v63;
    goto LABEL_11;
  }

  __break(1u);
}

uint64_t PersonalSearchError.description.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t static PersonalSearchError.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 2);
  v5 = *(a2 + 2);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *(a1 + 1) == *(a2 + 1) && v4 == v5;
    if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  return 1;
}

uint64_t PersonalSearchError.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t PersonalSearchError.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x7470697263736564;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PersonalSearchError.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = PersonalSearchError.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PersonalSearchError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchError.CodingKeys and conformance PersonalSearchError.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PersonalSearchError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchError.CodingKeys and conformance PersonalSearchError.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void PersonalSearchError.encode(to:)()
{
  OUTLINED_FUNCTION_17();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE5ErrorV10CodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMd, &_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE5ErrorV10CodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMR);
  OUTLINED_FUNCTION_1(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  v11 = v15 - v10;
  v12 = *v0;
  v13 = *(v0 + 1);
  v15[0] = *(v0 + 2);
  v15[1] = v13;
  v14 = v3[4];
  OUTLINED_FUNCTION_26_0(v3, v3[3]);
  lazy protocol witness table accessor for type PersonalSearchError.CodingKeys and conformance PersonalSearchError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  lazy protocol witness table accessor for type PersonalSearchError.ErrorType and conformance PersonalSearchError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  (*(v6 + 8))(v11, v4);
  OUTLINED_FUNCTION_20();
}

void PersonalSearchError.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  OUTLINED_FUNCTION_17();
  v16 = v15;
  v18 = v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE5ErrorV10CodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMd, &_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE5ErrorV10CodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMR);
  OUTLINED_FUNCTION_1(v19);
  v21 = v20;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_3_1();
  v25 = v16[4];
  OUTLINED_FUNCTION_26_0(v16, v16[3]);
  lazy protocol witness table accessor for type PersonalSearchError.CodingKeys and conformance PersonalSearchError.CodingKeys();
  OUTLINED_FUNCTION_20_1();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v13)
  {
    lazy protocol witness table accessor for type PersonalSearchError.ErrorType and conformance PersonalSearchError.ErrorType();
    OUTLINED_FUNCTION_7_1();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v26 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v28 = v27;
    (*(v21 + 8))(v14, v19);
    *v18 = a13;
    *(v18 + 8) = v26;
    *(v18 + 16) = v28;
  }

  __swift_destroy_boxed_opaque_existential_1(v16);
  OUTLINED_FUNCTION_20();
}

uint64_t PersonalSearchResponse.description.getter()
{
  if (*(v0 + 24))
  {
    return 0x73736563637573;
  }

  else
  {
    return 0x6572756C696166;
  }
}

BOOL static PersonalSearchResponse.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v15[0] = *a1;
  v15[1] = v2;
  v15[2] = v4;
  v16 = v5;
  v17 = v6;
  v18 = v7;
  v19 = v8;
  v20 = v9;
  if ((v5 & 1) == 0)
  {
    if (v9 & 1) != 0 || ((v6 ^ v3))
    {
      goto LABEL_22;
    }

    if (v4)
    {
      if (v8)
      {
        if (v2 != v7 || v4 != v8)
        {
          v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
          OUTLINED_FUNCTION_5_0();
          outlined copy of PersonalSearchResponse();
          OUTLINED_FUNCTION_2_1();
          outlined copy of PersonalSearchResponse();
          outlined destroy of (PersonalSearchRequest, PersonalSearchRequest)(v15, &_s19PersonalSearchTypes0aB8ResponseO_ACtMd, &_s19PersonalSearchTypes0aB8ResponseO_ACtMR);
          return (v13 & 1) != 0;
        }

        outlined copy of PersonalSearchResponse();
        OUTLINED_FUNCTION_2_1();
LABEL_28:
        outlined copy of PersonalSearchResponse();
        outlined destroy of (PersonalSearchRequest, PersonalSearchRequest)(v15, &_s19PersonalSearchTypes0aB8ResponseO_ACtMd, &_s19PersonalSearchTypes0aB8ResponseO_ACtMR);
        return 1;
      }
    }

    else if (!v8)
    {
      OUTLINED_FUNCTION_23_1();
      outlined copy of PersonalSearchResponse();
      goto LABEL_28;
    }

LABEL_22:
    OUTLINED_FUNCTION_5_0();
    outlined copy of PersonalSearchResponse();
    OUTLINED_FUNCTION_2_1();
LABEL_23:
    outlined copy of PersonalSearchResponse();
    outlined destroy of (PersonalSearchRequest, PersonalSearchRequest)(v15, &_s19PersonalSearchTypes0aB8ResponseO_ACtMd, &_s19PersonalSearchTypes0aB8ResponseO_ACtMR);
    return 0;
  }

  if (!v9)
  {
    goto LABEL_22;
  }

  if (v3)
  {
    if (v6)
    {
      v10 = 1;
      OUTLINED_FUNCTION_2_1();
      outlined copy of PersonalSearchResponse();
      OUTLINED_FUNCTION_5_0();
      outlined copy of PersonalSearchResponse();
      OUTLINED_FUNCTION_2_1();
      outlined copy of PersonalSearchResponse();
      v11 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ19PersonalSearchTypes0bC6ResultV_Tt1g5(v3, v6);
      outlined destroy of (PersonalSearchRequest, PersonalSearchRequest)(v15, &_s19PersonalSearchTypes0aB8ResponseO_ACtMd, &_s19PersonalSearchTypes0aB8ResponseO_ACtMR);
      OUTLINED_FUNCTION_2_1();
      outlined consume of PersonalSearchResponse();
      if (v11)
      {
        return v10;
      }

      return 0;
    }

    OUTLINED_FUNCTION_6_0();
    outlined copy of PersonalSearchResponse();
    OUTLINED_FUNCTION_6_0();
    outlined copy of PersonalSearchResponse();
    OUTLINED_FUNCTION_2_1();
    goto LABEL_23;
  }

  v10 = 1;
  OUTLINED_FUNCTION_6_0();
  outlined copy of PersonalSearchResponse();
  outlined copy of PersonalSearchResponse();
  outlined destroy of (PersonalSearchRequest, PersonalSearchRequest)(v15, &_s19PersonalSearchTypes0aB8ResponseO_ACtMd, &_s19PersonalSearchTypes0aB8ResponseO_ACtMR);
  if (v6)
  {
    OUTLINED_FUNCTION_5_0();
    outlined consume of PersonalSearchResponse();
    return 0;
  }

  return v10;
}

uint64_t PersonalSearchResponse.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6572756C696166 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73736563637573 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t PersonalSearchResponse.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x73736563637573;
  }

  else
  {
    return 0x6572756C696166;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PersonalSearchResponse.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = PersonalSearchResponse.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PersonalSearchResponse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchResponse.CodingKeys and conformance PersonalSearchResponse.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PersonalSearchResponse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchResponse.CodingKeys and conformance PersonalSearchResponse.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PersonalSearchResponse.FailureCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchResponse.FailureCodingKeys and conformance PersonalSearchResponse.FailureCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PersonalSearchResponse.FailureCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchResponse.FailureCodingKeys and conformance PersonalSearchResponse.FailureCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PersonalSearchResponse.SuccessCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchResponse.SuccessCodingKeys and conformance PersonalSearchResponse.SuccessCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PersonalSearchResponse.SuccessCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonalSearchResponse.SuccessCodingKeys and conformance PersonalSearchResponse.SuccessCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void PersonalSearchResponse.encode(to:)()
{
  OUTLINED_FUNCTION_17();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE8ResponseO17SuccessCodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMd, &_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE8ResponseO17SuccessCodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMR);
  v5 = OUTLINED_FUNCTION_1(v4);
  v28 = v6;
  v29 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_13_0();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE8ResponseO17FailureCodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMd, &_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE8ResponseO17FailureCodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMR);
  OUTLINED_FUNCTION_1(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_17_1();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE8ResponseO10CodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMd, &_ss22KeyedEncodingContainerVy19PersonalSearchTypes0dE8ResponseO10CodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMR);
  v31 = OUTLINED_FUNCTION_1(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3_1();
  v30 = *v0;
  v26 = v0[2];
  v27 = v0[1];
  v18 = *(v0 + 24);
  v19 = v3[4];
  OUTLINED_FUNCTION_26_0(v3, v3[3]);
  lazy protocol witness table accessor for type PersonalSearchResponse.CodingKeys and conformance PersonalSearchResponse.CodingKeys();
  OUTLINED_FUNCTION_20_1();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v18)
  {
    lazy protocol witness table accessor for type PersonalSearchResponse.SuccessCodingKeys and conformance PersonalSearchResponse.SuccessCodingKeys();
    v20 = v31;
    OUTLINED_FUNCTION_7_1();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19PersonalSearchTypes0aB6ResultVGMd, &_sSay19PersonalSearchTypes0aB6ResultVGMR);
    lazy protocol witness table accessor for type [PersonalSearchResult] and conformance <A> [A](&lazy protocol witness table cache variable for type [PersonalSearchResult] and conformance <A> [A], &lazy protocol witness table cache variable for type PersonalSearchResult and conformance PersonalSearchResult);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    (*(v28 + 8))(v1, v29);
  }

  else
  {
    lazy protocol witness table accessor for type PersonalSearchResponse.FailureCodingKeys and conformance PersonalSearchResponse.FailureCodingKeys();
    v20 = v31;
    OUTLINED_FUNCTION_7_1();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    lazy protocol witness table accessor for type PersonalSearchError and conformance PersonalSearchError();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v21 = OUTLINED_FUNCTION_23_0();
    v23(v21, v22);
  }

  v24 = OUTLINED_FUNCTION_13_1();
  v25(v24, v20);
  OUTLINED_FUNCTION_20();
}

void PersonalSearchResponse.init(from:)()
{
  OUTLINED_FUNCTION_17();
  v3 = v2;
  v49 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE8ResponseO17SuccessCodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMd, &_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE8ResponseO17SuccessCodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMR);
  OUTLINED_FUNCTION_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE8ResponseO17FailureCodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMd, &_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE8ResponseO17FailureCodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMR);
  OUTLINED_FUNCTION_1(v9);
  v48 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_13_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE8ResponseO10CodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMd, &_ss22KeyedDecodingContainerVy19PersonalSearchTypes0dE8ResponseO10CodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLOGMR);
  OUTLINED_FUNCTION_1(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3_1();
  v18 = v3[4];
  OUTLINED_FUNCTION_26_0(v3, v3[3]);
  lazy protocol witness table accessor for type PersonalSearchResponse.CodingKeys and conformance PersonalSearchResponse.CodingKeys();
  OUTLINED_FUNCTION_20_1();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    goto LABEL_9;
  }

  v52 = v3;
  OUTLINED_FUNCTION_22_0();
  v19 = KeyedDecodingContainer.allKeys.getter();
  _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC19PersonalSearchTypes0jK8ResponseO10CodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLO_Tt1g5(v19, 0);
  if (v21 == v20 >> 1)
  {
LABEL_7:
    v32 = type metadata accessor for DecodingError();
    OUTLINED_FUNCTION_23_1();
    swift_allocError();
    v34 = v33;
    v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v34 = &type metadata for PersonalSearchResponse;
    OUTLINED_FUNCTION_22_0();
    KeyedDecodingContainer.codingPath.getter();
    OUTLINED_FUNCTION_11_1();
    v36 = *MEMORY[0x277D84160];
    OUTLINED_FUNCTION_21_0(v32);
    (*(v37 + 104))(v34);
    swift_willThrow();
    swift_unknownObjectRelease();
    v38 = OUTLINED_FUNCTION_13_1();
    v39(v38, v14);
    v3 = v52;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v3);
LABEL_10:
    OUTLINED_FUNCTION_20();
    return;
  }

  OUTLINED_FUNCTION_16_1();
  if (v25 < (v24 >> 1))
  {
    v26 = *(v23 + v22);
    specialized ArraySlice.subscript.getter(v22 + 1);
    v28 = v27;
    v30 = v29;
    swift_unknownObjectRelease();
    if (v28 == v30 >> 1)
    {
      v31 = v26;
      if (v26)
      {
        LOBYTE(v50) = 1;
        lazy protocol witness table accessor for type PersonalSearchResponse.SuccessCodingKeys and conformance PersonalSearchResponse.SuccessCodingKeys();
        OUTLINED_FUNCTION_7_1();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19PersonalSearchTypes0aB6ResultVGMd, &_sSay19PersonalSearchTypes0aB6ResultVGMR);
        lazy protocol witness table accessor for type [PersonalSearchResult] and conformance <A> [A](&lazy protocol witness table cache variable for type [PersonalSearchResult] and conformance <A> [A], &lazy protocol witness table cache variable for type PersonalSearchResult and conformance PersonalSearchResult);
        KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
        swift_unknownObjectRelease();
        v40 = OUTLINED_FUNCTION_23_0();
        v41(v40);
        v42 = OUTLINED_FUNCTION_10_1();
        v43(v42);
        v44 = v50;
        v45 = 0uLL;
        v31 = v26;
      }

      else
      {
        lazy protocol witness table accessor for type PersonalSearchResponse.FailureCodingKeys and conformance PersonalSearchResponse.FailureCodingKeys();
        OUTLINED_FUNCTION_7_1();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        lazy protocol witness table accessor for type PersonalSearchError and conformance PersonalSearchError();
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        swift_unknownObjectRelease();
        (*(v48 + 8))(v1, v9);
        v46 = OUTLINED_FUNCTION_10_1();
        v47(v46);
        v44 = 0;
        v45 = v51;
      }

      *v49 = v44;
      *(v49 + 8) = v45;
      *(v49 + 24) = v31;
      __swift_destroy_boxed_opaque_existential_1(v52);
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  __break(1u);
}

unint64_t lazy protocol witness table accessor for type PersonalSearchError.ErrorType.CodingKeys and conformance PersonalSearchError.ErrorType.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PersonalSearchError.ErrorType.CodingKeys and conformance PersonalSearchError.ErrorType.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchError.ErrorType.CodingKeys and conformance PersonalSearchError.ErrorType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchError.ErrorType.CodingKeys and conformance PersonalSearchError.ErrorType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchError.ErrorType.CodingKeys and conformance PersonalSearchError.ErrorType.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchError.ErrorType.CodingKeys and conformance PersonalSearchError.ErrorType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchError.ErrorType.CodingKeys and conformance PersonalSearchError.ErrorType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchError.ErrorType.CodingKeys and conformance PersonalSearchError.ErrorType.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchError.ErrorType.CodingKeys and conformance PersonalSearchError.ErrorType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchError.ErrorType.CodingKeys and conformance PersonalSearchError.ErrorType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchError.ErrorType.CodingKeys and conformance PersonalSearchError.ErrorType.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchError.ErrorType.CodingKeys and conformance PersonalSearchError.ErrorType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchError.ErrorType.CodingKeys and conformance PersonalSearchError.ErrorType.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PersonalSearchError.ErrorType.InternalErrorCodingKeys and conformance PersonalSearchError.ErrorType.InternalErrorCodingKeys()
{
  result = lazy protocol witness table cache variable for type PersonalSearchError.ErrorType.InternalErrorCodingKeys and conformance PersonalSearchError.ErrorType.InternalErrorCodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchError.ErrorType.InternalErrorCodingKeys and conformance PersonalSearchError.ErrorType.InternalErrorCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchError.ErrorType.InternalErrorCodingKeys and conformance PersonalSearchError.ErrorType.InternalErrorCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchError.ErrorType.InternalErrorCodingKeys and conformance PersonalSearchError.ErrorType.InternalErrorCodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchError.ErrorType.InternalErrorCodingKeys and conformance PersonalSearchError.ErrorType.InternalErrorCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchError.ErrorType.InternalErrorCodingKeys and conformance PersonalSearchError.ErrorType.InternalErrorCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchError.ErrorType.InternalErrorCodingKeys and conformance PersonalSearchError.ErrorType.InternalErrorCodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchError.ErrorType.InternalErrorCodingKeys and conformance PersonalSearchError.ErrorType.InternalErrorCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchError.ErrorType.InternalErrorCodingKeys and conformance PersonalSearchError.ErrorType.InternalErrorCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PersonalSearchError.ErrorType.InvalidRequestCodingKeys and conformance PersonalSearchError.ErrorType.InvalidRequestCodingKeys()
{
  result = lazy protocol witness table cache variable for type PersonalSearchError.ErrorType.InvalidRequestCodingKeys and conformance PersonalSearchError.ErrorType.InvalidRequestCodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchError.ErrorType.InvalidRequestCodingKeys and conformance PersonalSearchError.ErrorType.InvalidRequestCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchError.ErrorType.InvalidRequestCodingKeys and conformance PersonalSearchError.ErrorType.InvalidRequestCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchError.ErrorType.InvalidRequestCodingKeys and conformance PersonalSearchError.ErrorType.InvalidRequestCodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchError.ErrorType.InvalidRequestCodingKeys and conformance PersonalSearchError.ErrorType.InvalidRequestCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchError.ErrorType.InvalidRequestCodingKeys and conformance PersonalSearchError.ErrorType.InvalidRequestCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchError.ErrorType.InvalidRequestCodingKeys and conformance PersonalSearchError.ErrorType.InvalidRequestCodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchError.ErrorType.InvalidRequestCodingKeys and conformance PersonalSearchError.ErrorType.InvalidRequestCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchError.ErrorType.InvalidRequestCodingKeys and conformance PersonalSearchError.ErrorType.InvalidRequestCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PersonalSearchError.CodingKeys and conformance PersonalSearchError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PersonalSearchError.CodingKeys and conformance PersonalSearchError.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchError.CodingKeys and conformance PersonalSearchError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchError.CodingKeys and conformance PersonalSearchError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchError.CodingKeys and conformance PersonalSearchError.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchError.CodingKeys and conformance PersonalSearchError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchError.CodingKeys and conformance PersonalSearchError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchError.CodingKeys and conformance PersonalSearchError.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchError.CodingKeys and conformance PersonalSearchError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchError.CodingKeys and conformance PersonalSearchError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchError.CodingKeys and conformance PersonalSearchError.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchError.CodingKeys and conformance PersonalSearchError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchError.CodingKeys and conformance PersonalSearchError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PersonalSearchError.ErrorType and conformance PersonalSearchError.ErrorType()
{
  result = lazy protocol witness table cache variable for type PersonalSearchError.ErrorType and conformance PersonalSearchError.ErrorType;
  if (!lazy protocol witness table cache variable for type PersonalSearchError.ErrorType and conformance PersonalSearchError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchError.ErrorType and conformance PersonalSearchError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchError.ErrorType and conformance PersonalSearchError.ErrorType;
  if (!lazy protocol witness table cache variable for type PersonalSearchError.ErrorType and conformance PersonalSearchError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchError.ErrorType and conformance PersonalSearchError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchError.ErrorType and conformance PersonalSearchError.ErrorType;
  if (!lazy protocol witness table cache variable for type PersonalSearchError.ErrorType and conformance PersonalSearchError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchError.ErrorType and conformance PersonalSearchError.ErrorType);
  }

  return result;
}

uint64_t outlined destroy of (PersonalSearchRequest, PersonalSearchRequest)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_21_0(v4);
  (*(v5 + 8))(a1);
  return a1;
}

unint64_t lazy protocol witness table accessor for type PersonalSearchResponse.CodingKeys and conformance PersonalSearchResponse.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PersonalSearchResponse.CodingKeys and conformance PersonalSearchResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResponse.CodingKeys and conformance PersonalSearchResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResponse.CodingKeys and conformance PersonalSearchResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchResponse.CodingKeys and conformance PersonalSearchResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResponse.CodingKeys and conformance PersonalSearchResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResponse.CodingKeys and conformance PersonalSearchResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchResponse.CodingKeys and conformance PersonalSearchResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResponse.CodingKeys and conformance PersonalSearchResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResponse.CodingKeys and conformance PersonalSearchResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchResponse.CodingKeys and conformance PersonalSearchResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResponse.CodingKeys and conformance PersonalSearchResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResponse.CodingKeys and conformance PersonalSearchResponse.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PersonalSearchResponse.SuccessCodingKeys and conformance PersonalSearchResponse.SuccessCodingKeys()
{
  result = lazy protocol witness table cache variable for type PersonalSearchResponse.SuccessCodingKeys and conformance PersonalSearchResponse.SuccessCodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResponse.SuccessCodingKeys and conformance PersonalSearchResponse.SuccessCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResponse.SuccessCodingKeys and conformance PersonalSearchResponse.SuccessCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchResponse.SuccessCodingKeys and conformance PersonalSearchResponse.SuccessCodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResponse.SuccessCodingKeys and conformance PersonalSearchResponse.SuccessCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResponse.SuccessCodingKeys and conformance PersonalSearchResponse.SuccessCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchResponse.SuccessCodingKeys and conformance PersonalSearchResponse.SuccessCodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResponse.SuccessCodingKeys and conformance PersonalSearchResponse.SuccessCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResponse.SuccessCodingKeys and conformance PersonalSearchResponse.SuccessCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchResponse.SuccessCodingKeys and conformance PersonalSearchResponse.SuccessCodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResponse.SuccessCodingKeys and conformance PersonalSearchResponse.SuccessCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResponse.SuccessCodingKeys and conformance PersonalSearchResponse.SuccessCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PersonalSearchResponse.FailureCodingKeys and conformance PersonalSearchResponse.FailureCodingKeys()
{
  result = lazy protocol witness table cache variable for type PersonalSearchResponse.FailureCodingKeys and conformance PersonalSearchResponse.FailureCodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResponse.FailureCodingKeys and conformance PersonalSearchResponse.FailureCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResponse.FailureCodingKeys and conformance PersonalSearchResponse.FailureCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchResponse.FailureCodingKeys and conformance PersonalSearchResponse.FailureCodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResponse.FailureCodingKeys and conformance PersonalSearchResponse.FailureCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResponse.FailureCodingKeys and conformance PersonalSearchResponse.FailureCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchResponse.FailureCodingKeys and conformance PersonalSearchResponse.FailureCodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResponse.FailureCodingKeys and conformance PersonalSearchResponse.FailureCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResponse.FailureCodingKeys and conformance PersonalSearchResponse.FailureCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchResponse.FailureCodingKeys and conformance PersonalSearchResponse.FailureCodingKeys;
  if (!lazy protocol witness table cache variable for type PersonalSearchResponse.FailureCodingKeys and conformance PersonalSearchResponse.FailureCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchResponse.FailureCodingKeys and conformance PersonalSearchResponse.FailureCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PersonalSearchError and conformance PersonalSearchError()
{
  result = lazy protocol witness table cache variable for type PersonalSearchError and conformance PersonalSearchError;
  if (!lazy protocol witness table cache variable for type PersonalSearchError and conformance PersonalSearchError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchError and conformance PersonalSearchError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PersonalSearchError and conformance PersonalSearchError;
  if (!lazy protocol witness table cache variable for type PersonalSearchError and conformance PersonalSearchError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalSearchError and conformance PersonalSearchError);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [PersonalSearchResult] and conformance <A> [A](unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19PersonalSearchTypes0aB6ResultVGMd, &_sSay19PersonalSearchTypes0aB6ResultVGMR);
    lazy protocol witness table accessor for type PersonalSearchResult and conformance PersonalSearchResult(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type PersonalSearchResult and conformance PersonalSearchResult(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PersonalSearchResult(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19PersonalSearchTypes0aB7RequestO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for PersonalSearchRequest(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 72))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PersonalSearchRequest(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

double destructiveInjectEnumTag for PersonalSearchRequest(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 56) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 8) = (a2 - 1);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PersonalSearchError(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PersonalSearchError(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PersonalSearchResponse(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 25))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PersonalSearchResponse(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PersonalSearchError.ErrorType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x25E48219CLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PersonalSearchRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x25E4822C0);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PersonalSearchResponse.FailureCodingKeys(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x25E4823C4);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_0()
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t OUTLINED_FUNCTION_11_1()
{

  return DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
}

uint64_t DefaultXPCProgressReporter.__allocating_init(session:)()
{

  return swift_allocObject();
}

uint64_t protocol witness for XPCProgressReporter.init(session:) in conformance DefaultXPCProgressReporter@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 80))();
  *a1 = result;
  return result;
}

uint64_t MachClientSessionFactory.serviceName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MachClientSessionFactory.createSession(cancellationHandler:)()
{
  OUTLINED_FUNCTION_20_2();
  v2 = type metadata accessor for XPCSession.InitializationOptions();
  v3 = OUTLINED_FUNCTION_19_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_12_0();
  v7 = *v0;
  v6 = v0[1];
  type metadata accessor for XPCSession();

  outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed XPCRichError) -> ())?(v1);
  static XPCSession.InitializationOptions.none.getter();
  OUTLINED_FUNCTION_14_1();
  return XPCSession.__allocating_init(machService:targetQueue:options:cancellationHandler:)();
}

uint64_t outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed XPCRichError) -> ())?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t MachServiceListenerFactory.createListener(incomingSessionHandler:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = type metadata accessor for XPCListener.InitializationOptions();
  v2 = OUTLINED_FUNCTION_19_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_12_0();
  v6 = *v0;
  v5 = v0[1];

  static XPCListener.InitializationOptions.none.getter();
  v7 = type metadata accessor for XPCListener();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();

  OUTLINED_FUNCTION_14_1();
  return XPCListener.init(service:targetQueue:options:incomingSessionHandler:)();
}

uint64_t ServiceError.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x5264696C61766E69 && a2 == 0xEE00747365757165)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ServiceError.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = ServiceError.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ServiceError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ServiceError.CodingKeys and conformance ServiceError.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ServiceError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ServiceError.CodingKeys and conformance ServiceError.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ServiceError.InvalidRequestCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ServiceError.InvalidRequestCodingKeys and conformance ServiceError.InvalidRequestCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ServiceError.InvalidRequestCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ServiceError.InvalidRequestCodingKeys and conformance ServiceError.InvalidRequestCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ServiceError.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19PersonalSearchTypes12ServiceErrorO24InvalidRequestCodingKeys33_72BB69E76D975328FA8AA1A9CD8F999ALLOGMd, &_ss22KeyedEncodingContainerVy19PersonalSearchTypes12ServiceErrorO24InvalidRequestCodingKeys33_72BB69E76D975328FA8AA1A9CD8F999ALLOGMR);
  OUTLINED_FUNCTION_1(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19PersonalSearchTypes12ServiceErrorO10CodingKeys33_72BB69E76D975328FA8AA1A9CD8F999ALLOGMd, &_ss22KeyedEncodingContainerVy19PersonalSearchTypes12ServiceErrorO10CodingKeys33_72BB69E76D975328FA8AA1A9CD8F999ALLOGMR);
  OUTLINED_FUNCTION_1(v10);
  v12 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v15);
  v17 = &v20 - v16;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ServiceError.CodingKeys and conformance ServiceError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  lazy protocol witness table accessor for type ServiceError.InvalidRequestCodingKeys and conformance ServiceError.InvalidRequestCodingKeys();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v4 + 8))(v9, v2);
  return (*(v12 + 8))(v17, v10);
}

unint64_t lazy protocol witness table accessor for type ServiceError.CodingKeys and conformance ServiceError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ServiceError.CodingKeys and conformance ServiceError.CodingKeys;
  if (!lazy protocol witness table cache variable for type ServiceError.CodingKeys and conformance ServiceError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ServiceError.CodingKeys and conformance ServiceError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ServiceError.CodingKeys and conformance ServiceError.CodingKeys;
  if (!lazy protocol witness table cache variable for type ServiceError.CodingKeys and conformance ServiceError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ServiceError.CodingKeys and conformance ServiceError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ServiceError.CodingKeys and conformance ServiceError.CodingKeys;
  if (!lazy protocol witness table cache variable for type ServiceError.CodingKeys and conformance ServiceError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ServiceError.CodingKeys and conformance ServiceError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ServiceError.CodingKeys and conformance ServiceError.CodingKeys;
  if (!lazy protocol witness table cache variable for type ServiceError.CodingKeys and conformance ServiceError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ServiceError.CodingKeys and conformance ServiceError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ServiceError.InvalidRequestCodingKeys and conformance ServiceError.InvalidRequestCodingKeys()
{
  result = lazy protocol witness table cache variable for type ServiceError.InvalidRequestCodingKeys and conformance ServiceError.InvalidRequestCodingKeys;
  if (!lazy protocol witness table cache variable for type ServiceError.InvalidRequestCodingKeys and conformance ServiceError.InvalidRequestCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ServiceError.InvalidRequestCodingKeys and conformance ServiceError.InvalidRequestCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ServiceError.InvalidRequestCodingKeys and conformance ServiceError.InvalidRequestCodingKeys;
  if (!lazy protocol witness table cache variable for type ServiceError.InvalidRequestCodingKeys and conformance ServiceError.InvalidRequestCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ServiceError.InvalidRequestCodingKeys and conformance ServiceError.InvalidRequestCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ServiceError.InvalidRequestCodingKeys and conformance ServiceError.InvalidRequestCodingKeys;
  if (!lazy protocol witness table cache variable for type ServiceError.InvalidRequestCodingKeys and conformance ServiceError.InvalidRequestCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ServiceError.InvalidRequestCodingKeys and conformance ServiceError.InvalidRequestCodingKeys);
  }

  return result;
}

Swift::Int ServiceError.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x25F8B4470](0);
  return Hasher._finalize()();
}

void ServiceError.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19PersonalSearchTypes12ServiceErrorO24InvalidRequestCodingKeys33_72BB69E76D975328FA8AA1A9CD8F999ALLOGMd, &_ss22KeyedDecodingContainerVy19PersonalSearchTypes12ServiceErrorO24InvalidRequestCodingKeys33_72BB69E76D975328FA8AA1A9CD8F999ALLOGMR);
  OUTLINED_FUNCTION_1(v3);
  v45 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v7);
  v9 = &v42 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19PersonalSearchTypes12ServiceErrorO10CodingKeys33_72BB69E76D975328FA8AA1A9CD8F999ALLOGMd, &_ss22KeyedDecodingContainerVy19PersonalSearchTypes12ServiceErrorO10CodingKeys33_72BB69E76D975328FA8AA1A9CD8F999ALLOGMR);
  OUTLINED_FUNCTION_1(v10);
  v46 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v14);
  v16 = &v42 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ServiceError.CodingKeys and conformance ServiceError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    goto LABEL_9;
  }

  v43 = v9;
  v44 = a1;
  v18 = KeyedDecodingContainer.allKeys.getter();
  _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC19PersonalSearchTypes0jK7RequestO10CodingKeys33_8089618EB2A36EE22C706FB7CFD4A570LLO_Tt1g5(v18, 0);
  v22 = v16;
  if (v20 == v21 >> 1)
  {
    v45 = v19;
LABEL_8:
    v33 = v10;
    v34 = v46;
    v35 = type metadata accessor for DecodingError();
    swift_allocError();
    v37 = v36;
    v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v37 = &type metadata for ServiceError;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    v39 = *MEMORY[0x277D84160];
    OUTLINED_FUNCTION_21_0(v35);
    (*(v40 + 104))(v37);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v34 + 8))(v22, v33);
    a1 = v44;
LABEL_9:
    v41 = a1;
    goto LABEL_10;
  }

  if (v20 < (v21 >> 1))
  {
    v23 = specialized ArraySlice.subscript.getter(v20 + 1);
    v25 = v24;
    v27 = v26;
    swift_unknownObjectRelease();
    v28 = v25 == v27 >> 1;
    v29 = v44;
    v30 = v45;
    if (v28)
    {
      lazy protocol witness table accessor for type ServiceError.InvalidRequestCodingKeys and conformance ServiceError.InvalidRequestCodingKeys();
      v31 = v43;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v32 = v46;
      swift_unknownObjectRelease();
      (*(v30 + 8))(v31, v3);
      (*(v32 + 8))(v22, v10);
      v41 = v29;
LABEL_10:
      __swift_destroy_boxed_opaque_existential_1(v41);
      return;
    }

    v45 = v23;
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t ServiceProtocol.buildProgressReporter(session:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  return ServiceProtocol.buildProgressReporter(session:)(a1, a2);
}

{
  if (a1)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v5 = *(AssociatedConformanceWitness + 8);

    v5(v6, AssociatedTypeWitness, AssociatedConformanceWitness);
    v7 = a2;
    v8 = 0;
    v9 = AssociatedTypeWitness;
  }

  else
  {
    v9 = swift_getAssociatedTypeWitness();
    v7 = a2;
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v7, v8, 1, v9);
}

uint64_t ServiceProtocol.handle(_:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = ServiceProtocol.handle(_:);

  return ServiceProtocol.handle(_:)();
}

{
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_12_1();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;

  OUTLINED_FUNCTION_11_2();

  return v5();
}

{
  OUTLINED_FUNCTION_13_2();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v1[7] = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Optional();
  v1[8] = v6;
  OUTLINED_FUNCTION_3_2(v6);
  v1[9] = v7;
  v9 = *(v8 + 64) + 15;
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](ServiceProtocol.handle(_:), 0, 0);
}

{
  OUTLINED_FUNCTION_17_2();
  v12 = v0[5];
  __swift_storeEnumTagSinglePayload(v0[10], 1, 1, v0[7]);
  v1 = *(v12 + 96);
  v11 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = ServiceProtocol.handle(_:);
  v4 = v0[10];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[2];

  return v11(v9, v7, v4, v8, v5);
}

{
  OUTLINED_FUNCTION_17_2();
  OUTLINED_FUNCTION_12_1();
  v2 = v1[11];
  v3 = v1[10];
  v4 = v1[9];
  v5 = v1[8];
  v6 = *v0;
  OUTLINED_FUNCTION_4_1();
  *v7 = v6;

  (*(v4 + 8))(v3, v5);

  OUTLINED_FUNCTION_11_2();

  return v8();
}

uint64_t ServiceProtocol.handleMessage(_:session:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v93 = a1;
  v90 = a5;
  v88 = type metadata accessor for XPCReceivedMessage();
  v9 = OUTLINED_FUNCTION_1(v88);
  v83 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v87 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_2_2();
  v81 = v15;
  v82 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v18);
  v78 = v19;
  v86 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = OUTLINED_FUNCTION_1(AssociatedTypeWitness);
  v84 = v22;
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v21);
  v85 = &v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v25);
  v79 = &v70 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v70 - v28;
  swift_getAssociatedTypeWitness();
  v92 = type metadata accessor for Optional();
  v30 = OUTLINED_FUNCTION_1(v92);
  v89 = v31;
  v33 = *(v32 + 64);
  v34 = MEMORY[0x28223BE20](v30);
  MEMORY[0x28223BE20](v34);
  v35 = *(a4 + 80);
  v91 = &v70 - v36;
  v35(a2, a3, a4);
  v80 = a3;
  v37 = AssociatedTypeWitness;
  swift_getAssociatedConformanceWitness();
  XPCReceivedMessage.decode<A>(as:)();
  v73 = v33;
  v77 = &v70 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v24;
  v75 = v5;
  v76 = a4;
  v38 = v84;
  if (one-time initialization token for endpoint != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  __swift_project_value_buffer(v39, static Logging.endpoint);
  v40 = *(v38 + 16);
  v41 = v79;
  v40(v79, v29, AssociatedTypeWitness);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v42, v43))
  {
    OUTLINED_FUNCTION_21_1();
    v44 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v94 = v72;
    *v44 = 136315138;
    v71 = v43;
    v45 = v85;
    v40(v85, v41, AssociatedTypeWitness);
    v46 = v45;
    v70 = String.init<A>(describing:)();
    v48 = v47;
    v49 = OUTLINED_FUNCTION_8_1();
    v50(v49);
    v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v48, &v94);

    *(v44 + 4) = v51;
    _os_log_impl(&dword_25E474000, v42, v71, "Received request: %s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v72);
    OUTLINED_FUNCTION_6_1();
    MEMORY[0x25F8B4790]();
    OUTLINED_FUNCTION_6_1();
    MEMORY[0x25F8B4790]();

    v52 = v91;
    v53 = v81;
    v54 = v75;
  }

  else
  {

    v55 = OUTLINED_FUNCTION_8_1();
    v56(v55);
    v52 = v91;
    v53 = v81;
    v54 = v75;
    v46 = v85;
  }

  type metadata accessor for OS_dispatch_queue();
  v75 = static OS_dispatch_queue.main.getter();
  v57 = v80;
  v53[2](v86, v54, v80);
  v40(v46, v29, v37);
  v81 = v29;
  v58 = v89;
  (*(v89 + 16))(v77, v52, v92);
  v59 = v83;
  (*(v83 + 16))(v87, v93, v88);
  v60 = (*(v53 + 80) + 32) & ~*(v53 + 80);
  v61 = v84;
  v62 = (v78 + v60 + *(v84 + 80)) & ~*(v84 + 80);
  v63 = (v74 + *(v58 + 80) + v62) & ~*(v58 + 80);
  v78 = (v73 + *(v59 + 80) + v63) & ~*(v59 + 80);
  v64 = swift_allocObject();
  v65 = v76;
  *(v64 + 16) = v57;
  *(v64 + 24) = v65;
  v53[4]((v64 + v60), v86, v57);
  (*(v61 + 32))(v64 + v62, v85, v37);
  v66 = v64 + v63;
  v67 = v92;
  (*(v58 + 32))(v66, v77, v92);
  (*(v59 + 32))(v64 + v78, v87, v88);
  v68 = v75;
  XPCReceivedMessage.handoffReply(to:_:)();

  (v79)(v81, v37);
  return (*(v58 + 8))(v91, v67);
}

uint64_t closure #1 in ServiceProtocol.handleMessage(_:session:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v41 = a3;
  v42 = a4;
  v39 = a1;
  v40 = a2;
  v48 = type metadata accessor for XPCReceivedMessage();
  v46 = *(v48 - 8);
  v43 = *(v46 + 64);
  MEMORY[0x28223BE20](v48);
  v47 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a6;
  swift_getAssociatedTypeWitness();
  v45 = type metadata accessor for Optional();
  v9 = *(v45 - 8);
  v37 = *(v9 + 64);
  MEMORY[0x28223BE20](v45);
  v44 = &v33 - v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = AssociatedTypeWitness;
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v16 = &v33 - v15;
  v35 = &v33 - v15;
  v17 = *(a5 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v33 - v22;
  v36 = &v33 - v22;
  v24 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v23, 1, 1, v24);
  (*(v17 + 16))(v19, v39, a5);
  (*(v12 + 16))(v16, v40, AssociatedTypeWitness);
  (*(v9 + 16))(v44, v41, v45);
  v25 = v46;
  (*(v46 + 16))(v47, v42, v48);
  v26 = (*(v17 + 80) + 48) & ~*(v17 + 80);
  v27 = (v18 + v26 + *(v12 + 80)) & ~*(v12 + 80);
  v28 = (v13 + *(v9 + 80) + v27) & ~*(v9 + 80);
  v29 = (v37 + *(v25 + 80) + v28) & ~*(v25 + 80);
  v30 = swift_allocObject();
  *(v30 + 2) = 0;
  *(v30 + 3) = 0;
  v31 = v38;
  *(v30 + 4) = a5;
  *(v30 + 5) = v31;
  (*(v17 + 32))(&v30[v26], v19, a5);
  (*(v12 + 32))(&v30[v27], v35, v34);
  (*(v9 + 32))(&v30[v28], v44, v45);
  (*(v46 + 32))(&v30[v29], v47, v48);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v36, &async function pointer to partial apply for closure #1 in closure #1 in ServiceProtocol.handleMessage(_:session:), v30);
}

uint64_t closure #1 in closure #1 in ServiceProtocol.handleMessage(_:session:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a8;
  v8[5] = v25;
  v8[2] = a5;
  v8[3] = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[6] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v8[7] = v13;
  v14 = *(v13 + 64) + 15;
  v8[8] = swift_task_alloc();
  v8[9] = swift_task_alloc();
  v15 = swift_getAssociatedTypeWitness();
  v8[10] = v15;
  v16 = *(v15 - 8);
  v8[11] = v16;
  v17 = *(v16 + 64) + 15;
  v8[12] = swift_task_alloc();
  v8[13] = swift_task_alloc();
  v18 = swift_task_alloc();
  v8[14] = v18;
  v19 = *(v25 + 96);
  v23 = (v19 + *v19);
  v20 = v19[1];
  v21 = swift_task_alloc();
  v8[15] = v21;
  *v21 = v8;
  v21[1] = closure #1 in closure #1 in ServiceProtocol.handleMessage(_:session:);

  return v23(v18, a5, a6, a8);
}

uint64_t closure #1 in closure #1 in ServiceProtocol.handleMessage(_:session:)()
{
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_12_1();
  v2 = *(v1 + 120);
  v3 = *v0;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;

  return MEMORY[0x2822009F8](closure #1 in closure #1 in ServiceProtocol.handleMessage(_:session:), 0, 0);
}

{
  v52 = v0;
  if (one-time initialization token for endpoint != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[9];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[2];
  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logging.endpoint);
  v49 = *(v7 + 16);
  v49(v5, v8, v6);
  v10 = *(v4 + 16);
  v10(v1, v2, v3);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  v13 = os_log_type_enabled(v11, v12);
  v50 = v0[13];
  if (v13)
  {
    v48 = v12;
    v14 = v0[11];
    v45 = v0[12];
    v46 = v0[10];
    log = v11;
    v16 = v0[8];
    v15 = v0[9];
    v18 = v0[6];
    v17 = v0[7];
    v19 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *v19 = 136315394;
    v49(v16, v15, v18);
    v20 = String.init<A>(describing:)();
    v22 = v21;
    (*(v17 + 8))(v15, v18);
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v51);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    v10(v45, v50, v46);
    v24 = String.init<A>(describing:)();
    v26 = v25;
    v27 = *(v14 + 8);
    v27(v50, v46);
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v51);

    *(v19 + 14) = v28;
    _os_log_impl(&dword_25E474000, log, v48, "Reply to %s: %s", v19, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_1();
    MEMORY[0x25F8B4790]();
    OUTLINED_FUNCTION_6_1();
    MEMORY[0x25F8B4790]();
  }

  else
  {
    v29 = v0[10];
    v30 = v0[11];
    v31 = v0[9];
    v33 = v0[6];
    v32 = v0[7];

    v27 = *(v30 + 8);
    v27(v50, v29);
    (*(v32 + 8))(v31, v33);
  }

  v35 = v0[13];
  v34 = v0[14];
  v36 = v0[12];
  v38 = v0[9];
  v37 = v0[10];
  v39 = v0[8];
  v41 = v0[4];
  v40 = v0[5];
  v42 = v0[3];
  swift_getAssociatedConformanceWitness();
  XPCReceivedMessage.reply<A>(_:)();
  v27(v34, v37);

  OUTLINED_FUNCTION_11_2();

  return v43();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v26 - v11;
  outlined init with copy of TaskPriority?(a3, v26 - v11);
  v13 = type metadata accessor for TaskPriority();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of (PersonalSearchRequest, PersonalSearchRequest)(v12, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v13 - 8) + 8))(v12, v13);
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
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      outlined destroy of (PersonalSearchRequest, PersonalSearchRequest)(a3, &_sScPSgMd, &_sScPSgMR);

      return v24;
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

  outlined destroy of (PersonalSearchRequest, PersonalSearchRequest)(a3, &_sScPSgMd, &_sScPSgMR);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t ServicePeerHandler.__allocating_init(session:serviceProtocol:)(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = a2[3];
  v8 = a2[4];
  __swift_mutable_project_boxed_opaque_existential_1(a2, v7);
  OUTLINED_FUNCTION_2_2();
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_12_0();
  v14 = v13 - v12;
  (*(v15 + 16))(v13 - v12);
  v16 = a3(a1, v14, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v16;
}

uint64_t ServicePeerHandler.handleIncomingRequest(_:)(uint64_t a1)
{
  v3 = v1[6];
  v4 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v3);
  return (*(v4 + 112))(a1, v1[2], v3, v4);
}

uint64_t ServicePeerHandler.handleCancellation(error:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for XPCRichError();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_0();
  v12 = v11 - v10;
  if (one-time initialization token for endpoint != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logging.endpoint);
  (*(v7 + 16))(v12, a1, v4);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v14, v15))
  {
    OUTLINED_FUNCTION_21_1();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v25 = v17;
    *v16 = 136315138;
    v18 = XPCRichError.debugDescription.getter();
    v20 = v19;
    (*(v7 + 8))(v12, v4);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v25);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_25E474000, v14, v15, "Session cancelled with error: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    OUTLINED_FUNCTION_6_1();
    MEMORY[0x25F8B4790]();
    OUTLINED_FUNCTION_6_1();
    MEMORY[0x25F8B4790]();
  }

  else
  {

    (*(v7 + 8))(v12, v4);
  }

  v22 = v2[6];
  v23 = v2[7];
  __swift_project_boxed_opaque_existential_1(v2 + 3, v22);
  return (*(v23 + 120))(v22, v23);
}

uint64_t ServicePeerHandler.deinit()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  return v0;
}

uint64_t ServicePeerHandler.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t ServiceEndpoint.init(listenerFactory:service:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  sub_25E487210(a1, a3);
  result = sub_25E487210(a2, a3 + 40);
  *(a3 + 80) = 1;
  return result;
}

uint64_t ServiceEndpoint.init(listenerFactory:serviceType:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_25E487210(a1, a4);
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
  *(a4 + 80) = 0;
  return result;
}

uint64_t ServiceEndpoint.init(serviceName:service:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v10 = &type metadata for MachServiceListenerFactory;
  v11 = lazy protocol witness table accessor for type MachServiceListenerFactory and conformance MachServiceListenerFactory();
  *&v9 = a1;
  *(&v9 + 1) = a2;
  return ServiceEndpoint.init(listenerFactory:service:)(&v9, a3, a4);
}

uint64_t ServiceEndpoint.init(serviceName:serviceType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v12 = &type metadata for MachServiceListenerFactory;
  v13 = lazy protocol witness table accessor for type MachServiceListenerFactory and conformance MachServiceListenerFactory();
  *&v11 = a1;
  *(&v11 + 1) = a2;
  result = sub_25E487210(&v11, a5);
  *(a5 + 40) = a3;
  *(a5 + 48) = a4;
  *(a5 + 80) = 0;
  return result;
}

uint64_t ServiceEndpoint.newServiceInstance()@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[2];
  v9[0] = a1[1];
  v9[1] = v4;
  v10 = a1[3];
  v5 = type metadata accessor for ServiceEndpoint.ServicePrototype(0, v9);
  (*(*(v5 - 8) + 16))(v9, v2 + 40, v5);
  if (BYTE8(v10) == 1)
  {
    return sub_25E487210(v9, a2);
  }

  v7 = v9[0];
  v8 = *(*(&v9[0] + 1) + 72);
  *(a2 + 24) = v9[0];
  __swift_allocate_boxed_opaque_existential_1(a2);
  return v8(v7, *(&v7 + 1));
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ServiceEndpoint.startListener()()
{
  v2 = v0;
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v5 = *(v2 - 1);
  v6 = *(v5 + 16);
  v6(__src, v1, v2);
  v7 = swift_allocObject();
  v8 = v2[2];
  v7[1] = v2[1];
  v7[2] = v8;
  v7[3] = v2[3];
  memcpy(v7 + 4, __src, 0x51uLL);
  (*(v4 + 16))(partial apply for closure #1 in ServiceEndpoint.startListener(), v7, v3, v4);

  if (!v20)
  {

    if (one-time initialization token for endpoint != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logging.endpoint);
    v6(__src, v1, v2);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      OUTLINED_FUNCTION_21_1();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v22 = v13;
      *v12 = 136315138;
      v14 = __src[4];
      __swift_project_boxed_opaque_existential_1(__src, __src[3]);
      v15 = *(v14 + 8);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      (*(v5 + 8))(__src, v2);
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v22);

      *(v12 + 4) = v19;
      _os_log_impl(&dword_25E474000, v10, v11, "Listener %s started", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x25F8B4790]();
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x25F8B4790]();
    }

    else
    {

      (*(v5 + 8))(__src, v2);
    }
  }
}

uint64_t closure #1 in ServiceEndpoint.startListener()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = a5;
  v15[3] = a6;
  v15[4] = a7;
  v15[5] = a8;
  v8 = type metadata accessor for ServiceEndpoint(0, v15);
  ServiceEndpoint.newServiceInstance()(v8, v15);
  if (one-time initialization token for endpoint != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logging.endpoint);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_25E474000, v10, v11, "Starting service session", v12, 2u);
    MEMORY[0x25F8B4790](v12, -1, -1);
  }

  MEMORY[0x28223BE20](v13);
  type metadata accessor for ServicePeerHandler();
  lazy protocol witness table accessor for type ServicePeerHandler and conformance ServicePeerHandler();
  dispatch thunk of XPCListener.IncomingSessionRequest.accept<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v15);
}

void *closure #1 in closure #1 in ServiceEndpoint.startListener()@<X0>(void *a1@<X1>, void *a2@<X8>)
{
  v4 = type metadata accessor for ServicePeerHandler();
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_project_boxed_opaque_existential_1(a1, v5);
  v8 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);

  result = specialized ServicePeerHandler.__allocating_init(session:serviceProtocol:)(v12, v10, v4, v5, v6);
  *a2 = result;
  return result;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v7(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_()
{
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_12_1();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;

  OUTLINED_FUNCTION_11_2();

  return v5();
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    outlined init with copy of Any(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = _StringObject.sharedUTF8.getter();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t _StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v4 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t lazy protocol witness table accessor for type ServiceError and conformance ServiceError()
{
  result = lazy protocol witness table cache variable for type ServiceError and conformance ServiceError;
  if (!lazy protocol witness table cache variable for type ServiceError and conformance ServiceError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ServiceError and conformance ServiceError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ServiceError and conformance ServiceError;
  if (!lazy protocol witness table cache variable for type ServiceError and conformance ServiceError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ServiceError and conformance ServiceError);
  }

  return result;
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

uint64_t sub_25E486BB4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  OUTLINED_FUNCTION_2_2();
  v44 = *(v3 + 80);
  OUTLINED_FUNCTION_5_1();
  v5 = *(v4 + 64);
  v6 = OUTLINED_FUNCTION_15_1();
  v7 = OUTLINED_FUNCTION_1(v6);
  v9 = v8;
  v42 = v7;
  v43 = *(v8 + 80);
  v10 = (((v44 + 32) & ~v44) + v5 + v43) & ~v43;
  v12 = *(v11 + 64);
  v13 = OUTLINED_FUNCTION_15_1();
  v14 = type metadata accessor for Optional();
  OUTLINED_FUNCTION_3_2(v14);
  v16 = *(v15 + 80);
  v17 = v10;
  v18 = (v10 + v12 + v16) & ~v16;
  v39 = *(v19 + 64);
  v41 = type metadata accessor for XPCReceivedMessage();
  v20 = OUTLINED_FUNCTION_1(v41);
  v22 = v21;
  v23 = *(v21 + 80);
  v32 = OUTLINED_FUNCTION_24_1(v20, v25, v26, v27, v28, v29, v30, v31, v37, *(v24 + 64), v39, (v44 + 32) & ~v44);
  v33(v32);
  (*(v9 + 8))(v0 + v17, v42);
  if (!__swift_getEnumTagSinglePayload(v0 + v18, 1, v13))
  {
    OUTLINED_FUNCTION_21_0(v13);
    (*(v34 + 8))(v0 + v18, v13);
  }

  v35 = (v18 + v40 + v23) & ~v23;
  (*(v22 + 8))(v0 + v35, v41);

  return MEMORY[0x2821FE8E8](v0, v35 + v38, v44 | v43 | v16 | v23 | 7);
}

uint64_t partial apply for closure #1 in ServiceProtocol.handleMessage(_:session:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  OUTLINED_FUNCTION_2_2();
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  OUTLINED_FUNCTION_5_1();
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_22_1();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3_2(AssociatedTypeWitness);
  v9 = (v4 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_22_1();
  swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for Optional();
  OUTLINED_FUNCTION_3_2(v12);
  v14 = (v9 + v11 + *(v13 + 80)) & ~*(v13 + 80);
  v16 = *(v15 + 64);
  v17 = type metadata accessor for XPCReceivedMessage();
  OUTLINED_FUNCTION_19_1(v17);
  v19 = v0 + ((v14 + v16 + *(v18 + 80)) & ~*(v18 + 80));

  return closure #1 in ServiceProtocol.handleMessage(_:session:)(v0 + v4, v0 + v9, v0 + v14, v19, v1, v2);
}

uint64_t outlined init with copy of ServiceProtocol(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *specialized ServicePeerHandler.__allocating_init(session:serviceProtocol:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ServicePeerHandler();
  v13 = swift_allocObject();
  (*(v9 + 16))(v12, a2, a4);
  v14 = specialized ServicePeerHandler.init(session:serviceProtocol:)(a1, v12, v13, a4, a5);
  (*(v9 + 8))(a2, a4);
  return v14;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

void *specialized ServicePeerHandler.init(session:serviceProtocol:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  a3[6] = a4;
  a3[7] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3 + 3);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  a3[2] = a1;
  return a3;
}

uint64_t sub_25E487210(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t lazy protocol witness table accessor for type MachServiceListenerFactory and conformance MachServiceListenerFactory()
{
  result = lazy protocol witness table cache variable for type MachServiceListenerFactory and conformance MachServiceListenerFactory;
  if (!lazy protocol witness table cache variable for type MachServiceListenerFactory and conformance MachServiceListenerFactory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MachServiceListenerFactory and conformance MachServiceListenerFactory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MachServiceListenerFactory and conformance MachServiceListenerFactory;
  if (!lazy protocol witness table cache variable for type MachServiceListenerFactory and conformance MachServiceListenerFactory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MachServiceListenerFactory and conformance MachServiceListenerFactory);
  }

  return result;
}

uint64_t sub_25E48727C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  if (*(v0 + 144) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 104));
  }

  return MEMORY[0x2821FE8E8](v0, 145, 7);
}

unint64_t instantiation function for generic protocol witness table for MachServiceListenerFactory(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MachServiceListenerFactory and conformance MachServiceListenerFactory();
  *(a1 + 8) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MachClientSessionFactory(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}