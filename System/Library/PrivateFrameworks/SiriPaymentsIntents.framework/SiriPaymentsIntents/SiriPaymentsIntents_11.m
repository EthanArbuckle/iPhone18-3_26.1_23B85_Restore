unint64_t lazy protocol witness table accessor for type Data and conformance Data()
{
  v2 = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Data and conformance Data);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Data and conformance Data);
    return WitnessTable;
  }

  return v2;
}

uint64_t *outlined init with copy of Data(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  outlined copy of Data._Representation(*a1, v4);
  result = a2;
  *a2 = v3;
  a2[1] = v4;
  return result;
}

unint64_t lazy protocol witness table accessor for type [AppDescription] and conformance <A> [A]()
{
  v2 = lazy protocol witness table cache variable for type [AppDescription] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [AppDescription] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19SiriPaymentsIntents14AppDescriptionVGMd, &_sSay19SiriPaymentsIntents14AppDescriptionVGMR);
    lazy protocol witness table accessor for type AppDescription and conformance AppDescription();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [AppDescription] and conformance <A> [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [AppDescription] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [AppDescription] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19SiriPaymentsIntents14AppDescriptionVGMd, &_sSay19SiriPaymentsIntents14AppDescriptionVGMR);
    lazy protocol witness table accessor for type AppDescription and conformance AppDescription();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [AppDescription] and conformance <A> [A]);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type AppDescription and conformance AppDescription()
{
  v2 = lazy protocol witness table cache variable for type AppDescription and conformance AppDescription;
  if (!lazy protocol witness table cache variable for type AppDescription and conformance AppDescription)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AppDescription and conformance AppDescription);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type AppDescription and conformance AppDescription;
  if (!lazy protocol witness table cache variable for type AppDescription and conformance AppDescription)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AppDescription and conformance AppDescription);
    return WitnessTable;
  }

  return v2;
}

uint64_t *outlined destroy of SiriPaymentsSnippetModel.AppDisambiguationModel(uint64_t *a1)
{
  v1 = *a1;

  v2 = a1[2];

  return a1;
}

uint64_t PaymentsError.errorDescription.getter()
{
  v279 = 0;
  v280 = 0;
  v273 = 0;
  v274 = 0;
  v267 = 0;
  v268 = 0;
  v261 = 0;
  v262 = 0;
  v256 = 0;
  v257 = 0;
  v250 = 0;
  v251 = 0;
  v244 = 0;
  v245 = 0;
  v238 = 0;
  v239 = 0;
  v236 = 0;
  v237 = 0;
  v234 = 0;
  v235 = 0;
  v224 = 0;
  v225 = 0;
  v222 = 0;
  v223 = 0;
  v214 = 0;
  v215 = 0;
  v208 = 0;
  v209 = 0;
  v202 = 0;
  v203 = 0;
  v200 = 0;
  v201 = 0;
  v192 = 0;
  v193 = 0;
  v186 = 0;
  v187 = 0;
  v184 = 0;
  v185 = 0;
  v176 = 0;
  v177 = 0;
  v174 = 0;
  v175 = 0;
  v166 = 0;
  v167 = 0;
  v160 = 0;
  v161 = 0;
  v281 = v0;
  memcpy(__dst, v0, 0x31uLL);
  switch(LOBYTE(__dst[6]))
  {
    case 1:
      v147 = __dst[0];
      v150 = __dst[1];

      v166 = v147;
      v167 = v150;
      v164 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      v165 = v4;
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Unable to extract ", 0x12uLL, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](countAndFlagsBits);

      v162 = v147;
      v163 = v150;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" from provided userData", 0x17uLL, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v6);

      v149 = v164;
      v148 = v165;

      outlined destroy of String.UTF8View(&v164);
      v151 = MEMORY[0x26D620710](v149, v148);

      v157 = v151;
      break;
    case 2:
      v140 = __dst[0];
      v145 = __dst[1];
      v141 = __dst[2];
      v144 = __dst[3];

      v176 = v140;
      v177 = v145;
      v174 = v141;
      v175 = v144;
      v172 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      v173 = v7;
      v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Encountered invalid parameter: ", 0x1FuLL, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v8);

      v170 = v140;
      v171 = v145;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" for intent: ", 0xDuLL, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v9);

      v168 = v141;
      v169 = v144;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(".", 1uLL, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v10);

      v143 = v172;
      v142 = v173;

      outlined destroy of String.UTF8View(&v172);
      v146 = MEMORY[0x26D620710](v143, v142);

      v157 = v146;
      break;
    case 3:
      v133 = __dst[0];
      v138 = __dst[1];
      v134 = __dst[2];
      v137 = __dst[3];

      v186 = v133;
      v187 = v138;
      v184 = v134;
      v185 = v137;
      v182 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      v183 = v11;
      v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Encountered invalid unsupported reason: ", 0x28uLL, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v12);

      v180 = v133;
      v181 = v138;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v13 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" for intent: ", 0xDuLL, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v13);

      v178 = v134;
      v179 = v137;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(".", 1uLL, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v14);

      v136 = v182;
      v135 = v183;

      outlined destroy of String.UTF8View(&v182);
      v139 = MEMORY[0x26D620710](v136, v135);

      v157 = v139;
      break;
    case 4:
      v128 = __dst[0];
      v131 = __dst[1];

      v192 = v128;
      v193 = v131;
      v190 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      v191 = v15;
      v16 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("IntentHandler encountered invalid intent type: ", 0x2FuLL, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v16);

      v188 = v128;
      v189 = v131;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v17 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(".", 1uLL, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v17);

      v130 = v190;
      v129 = v191;

      outlined destroy of String.UTF8View(&v190);
      v132 = MEMORY[0x26D620710](v130, v129);

      v157 = v132;
      break;
    case 5:
      v121 = __dst[0];
      v126 = __dst[1];
      v122 = __dst[2];
      v125 = __dst[3];

      v202 = v121;
      v203 = v126;
      v200 = v122;
      v201 = v125;
      v198 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      v199 = v18;
      v19 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Encountered error when transforming from ", 0x29uLL, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v19);

      v196 = v121;
      v197 = v126;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v20 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" to ", 4uLL, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v20);

      v194 = v122;
      v195 = v125;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v21 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(".", 1uLL, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v21);

      v124 = v198;
      v123 = v199;

      outlined destroy of String.UTF8View(&v198);
      v127 = MEMORY[0x26D620710](v124, v123);

      v157 = v127;
      break;
    case 6:
      v116 = __dst[0];
      v119 = __dst[1];

      v208 = v116;
      v209 = v119;
      v206 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      v207 = v22;
      v23 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Error occurred when executing CAT: ", 0x23uLL, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v23);

      v204 = v116;
      v205 = v119;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v24 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(".", 1uLL, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v24);

      v118 = v206;
      v117 = v207;

      outlined destroy of String.UTF8View(&v206);
      v120 = MEMORY[0x26D620710](v118, v117);

      v157 = v120;
      break;
    case 7:
      v111 = __dst[0];
      v114 = __dst[1];

      v214 = v111;
      v215 = v114;
      v212 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      v213 = v25;
      v26 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Encountered unexpected parse type: ", 0x23uLL, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v26);

      v210 = v111;
      v211 = v114;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v27 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v27);

      v113 = v212;
      v112 = v213;

      outlined destroy of String.UTF8View(&v212);
      v115 = MEMORY[0x26D620710](v113, v112);

      v157 = v115;
      break;
    case 8:
      v104 = __dst[0];
      v109 = __dst[1];
      v105 = __dst[2];
      v108 = __dst[3];

      v224 = v104;
      v225 = v109;
      v222 = v105;
      v223 = v108;
      v220 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      v221 = v28;
      v29 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Encountered invalid slot ", 0x19uLL, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v29);

      v218 = v104;
      v219 = v109;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v30 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" for intent ", 0xCuLL, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v30);

      v216 = v105;
      v217 = v108;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v31 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v31);

      v107 = v220;
      v106 = v221;

      outlined destroy of String.UTF8View(&v220);
      v110 = MEMORY[0x26D620710](v107, v106);

      v157 = v110;
      break;
    case 9:
      v96 = __dst[0];
      v102 = __dst[1];
      v95 = __dst[2];
      v101 = __dst[3];
      v97 = __dst[4];
      v100 = __dst[5];

      v238 = v96;
      v239 = v102;
      v236 = v95;
      v237 = v101;
      v234 = v97;
      v235 = v100;
      v232 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      v233 = v32;
      v33 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Encountered invalid value ", 0x1AuLL, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v33);

      v230 = v95;
      v231 = v101;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v34 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" for slot ", 0xAuLL, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v34);

      v228 = v96;
      v229 = v102;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v35 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" in intent ", 0xBuLL, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v35);

      v226 = v97;
      v227 = v100;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v36 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v36);

      v99 = v232;
      v98 = v233;

      outlined destroy of String.UTF8View(&v232);
      v103 = MEMORY[0x26D620710](v99, v98);

      v157 = v103;
      break;
    case 0xA:
      v90 = __dst[0];
      v93 = __dst[1];

      v244 = v90;
      v245 = v93;
      v242 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      v243 = v37;
      v38 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Failed to convert PaymentsNLIntent to ", 0x26uLL, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v38);

      v240 = v90;
      v241 = v93;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v39 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(".", 1uLL, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v39);

      v92 = v242;
      v91 = v243;

      outlined destroy of String.UTF8View(&v242);
      v94 = MEMORY[0x26D620710](v92, v91);

      v157 = v94;
      break;
    case 0xB:
      v85 = __dst[0];
      v88 = __dst[1];

      v250 = v85;
      v251 = v88;
      v248 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      v249 = v40;
      v41 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Failed to get slot description for ", 0x23uLL, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v41);

      v246 = v85;
      v247 = v88;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v42 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(".", 1uLL, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v42);

      v87 = v248;
      v86 = v249;

      outlined destroy of String.UTF8View(&v248);
      v89 = MEMORY[0x26D620710](v87, v86);

      v157 = v89;
      break;
    case 0xC:
      v80 = __dst[0];
      v83 = __dst[1];

      v256 = v80;
      v257 = v83;
      v254 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      v255 = v43;
      v44 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Failed to get paymentRecord for ", 0x20uLL, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v44);

      v252 = v80;
      v253 = v83;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v45 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(".", 1uLL, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v45);

      v82 = v254;
      v81 = v255;

      outlined destroy of String.UTF8View(&v254);
      v84 = MEMORY[0x26D620710](v82, v81);

      v157 = v84;
      break;
    case 0xD:
      v75 = __dst[0];
      v78 = __dst[1];

      v261 = v75;
      v262 = v78;
      v259 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      v260 = v46;
      v47 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Failed to resolve disambiguation selection from personID: ", 0x3AuLL, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v47);

      v258[2] = v75;
      v258[3] = v78;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v258[0] = String.init<A>(describing:)();
      v258[1] = v48;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      outlined destroy of String.UTF8View(v258);
      v49 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v49);

      v77 = v259;
      v76 = v260;

      outlined destroy of String.UTF8View(&v259);
      v79 = MEMORY[0x26D620710](v77, v76);

      v157 = v79;
      break;
    case 0xE:
      v70 = __dst[0];
      v73 = __dst[1];

      v267 = v70;
      v268 = v73;
      v265 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      v266 = v50;
      v51 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Encountered unknown parameter: ", 0x1FuLL, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v51);

      v263 = v70;
      v264 = v73;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v52 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(".", 1uLL, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v52);

      v72 = v265;
      v71 = v266;

      outlined destroy of String.UTF8View(&v265);
      v74 = MEMORY[0x26D620710](v72, v71);

      v157 = v74;
      break;
    case 0xF:
      v65 = __dst[0];
      v68 = __dst[1];

      v273 = v65;
      v274 = v68;
      v271 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      v272 = v53;
      v54 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Failed to obtain TCC confirmation response from user input for intent ", 0x46uLL, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v54);

      v269 = v65;
      v270 = v68;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v55 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v55);

      v67 = v271;
      v66 = v272;

      outlined destroy of String.UTF8View(&v271);
      v69 = MEMORY[0x26D620710](v67, v66);

      v157 = v69;
      break;
    case 0x10:
      v60 = __dst[0];
      v63 = __dst[1];

      v279 = v60;
      v280 = v63;
      v277 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      v278 = v56;
      v57 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Encountered invalid intent type while trying to create error template: ", 0x47uLL, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v57);

      v275 = v60;
      v276 = v63;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v58 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v58);

      v62 = v277;
      v61 = v278;

      outlined destroy of String.UTF8View(&v277);
      v64 = MEMORY[0x26D620710](v62, v61);

      v157 = v64;
      break;
    case 0x11:
      if (__dst[0] || __dst[1] || __dst[2] || __dst[3] || __dst[4] || __dst[5])
      {
        if (__dst[0] != 1 || __dst[1] || __dst[2] || __dst[3] || __dst[4] || __dst[5])
        {
          if (__dst[0] != 2 || __dst[1] || __dst[2] || __dst[3] || __dst[4] || __dst[5])
          {
            if (__dst[0] != 3 || __dst[1] || __dst[2] || __dst[3] || __dst[4] || __dst[5])
            {
              if (__dst[0] != 4 || __dst[1] || __dst[2] || __dst[3] || __dst[4] || __dst[5])
              {
                if (__dst[0] != 5 || __dst[1] || __dst[2] || __dst[3] || __dst[4] || __dst[5])
                {
                  if (__dst[0] != 6 || __dst[1] || __dst[2] || __dst[3] || __dst[4] || __dst[5])
                  {
                    if (__dst[0] != 7 || __dst[1] || __dst[2] || __dst[3] || __dst[4] || __dst[5])
                    {
                      if (__dst[0] != 8 || __dst[1] || __dst[2] || __dst[3] || __dst[4] || __dst[5])
                      {
                        if (__dst[0] != 9 || __dst[1] || __dst[2] || __dst[3] || __dst[4] || __dst[5])
                        {
                          if (__dst[0] != 10 || __dst[1] || __dst[2] || __dst[3] || __dst[4] || __dst[5])
                          {
                            if (__dst[0] != 11 || __dst[1] || __dst[2] || __dst[3] || __dst[4] || __dst[5])
                            {
                              __break(1u);
                              goto LABEL_75;
                            }

                            v157 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("The child override should have been invoked", 0x2BuLL, 1)._countAndFlagsBits;
                          }

                          else
                          {
                            v157 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Failed to obtain an app identifier during app resolution", 0x38uLL, 1)._countAndFlagsBits;
                          }
                        }

                        else
                        {
                          v157 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Encountered an unspecified error", 0x20uLL, 1)._countAndFlagsBits;
                        }
                      }

                      else
                      {
                        v157 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Failed to convert disambiguation item to INObject", 0x31uLL, 1)._countAndFlagsBits;
                      }
                    }

                    else
                    {
                      v157 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Received unexpected disambiguation item type", 0x2CuLL, 1)._countAndFlagsBits;
                    }
                  }

                  else
                  {
                    v157 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Failed to get contactID from USO Identifiers", 0x2CuLL, 1)._countAndFlagsBits;
                  }
                }

                else
                {
                  v157 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Failed to get NLUUserDialogAct from parse", 0x29uLL, 1)._countAndFlagsBits;
                }
              }

              else
              {
                v157 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Failed to convert Parse to PaymentsNLIntent.", 0x2CuLL, 1)._countAndFlagsBits;
              }
            }

            else
            {
              v157 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Failed to cast Any itemToConfirm to [INPerson]", 0x2EuLL, 1)._countAndFlagsBits;
            }
          }

          else
          {
            v157 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Failed to cast Any disambiguation items to [INPerson]", 0x35uLL, 1)._countAndFlagsBits;
          }
        }

        else
        {
          v157 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Encountered invalid SiriKit intent", 0x22uLL, 1)._countAndFlagsBits;
        }
      }

      else
      {
        v157 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Failed to convert direct invocation", 0x23uLL, 1)._countAndFlagsBits;
      }

      break;
    default:
LABEL_75:
      v152 = __dst[0];
      v155 = __dst[1];

      v160 = v152;
      v161 = v155;
      v158 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      v159 = v1;
      v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Received direct invocation we cannot handle: ", 0x2DuLL, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v2);

      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v3);

      v154 = v158;
      v153 = v159;

      outlined destroy of String.UTF8View(&v158);
      v156 = MEMORY[0x26D620710](v154, v153);

      v157 = v156;
      break;
  }

  return v157;
}

uint64_t get_enum_tag_for_layout_string_19SiriPaymentsIntents0B5ErrorO(uint64_t a1)
{
  if ((*(a1 + 48) & 0x1Fu) < 0x11)
  {
    return *(a1 + 48) & 0x1F;
  }

  else
  {
    return *a1 + 17;
  }
}

uint64_t getEnumTagSinglePayload for PaymentsError(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xEF && *(a1 + 49))
    {
      v4 = *a1 + 238;
    }

    else
    {
      v2 = *(a1 + 48) ^ 0xFF;
      if (v2 >= 0xEE)
      {
        v2 = -1;
      }

      v4 = v2;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for PaymentsError(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = (result + 49);
  if (a2 > 0xEE)
  {
    *(result + 40) = 0;
    *(result + 32) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *(result + 8) = 0;
    *result = a2 - 239;
    *(result + 48) = 0;
    if (a3 >= 0xEF)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 >= 0xEF)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for PaymentsError(uint64_t result, unsigned int a2)
{
  if (a2 < 0x11)
  {
    *(result + 48) = a2;
  }

  else
  {
    *result = a2 - 17;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 17;
  }

  return result;
}

uint64_t PaymentsAppLister.listApps(intentID:siriAuthorizationRestriction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v4[8] = a3;
  v4[6] = v4;
  v4[2] = 0;
  v4[3] = 0;
  v4[7] = 0;
  v4[2] = a1;
  v4[3] = a2;
  v4[7] = a3;
  v5 = v4[6];
  return MEMORY[0x2822009F8](PaymentsAppLister.listApps(intentID:siriAuthorizationRestriction:), 0);
}

uint64_t PaymentsAppLister.listApps(intentID:siriAuthorizationRestriction:)()
{
  v9 = v0[9];
  v0[6] = v0;
  v0[4] = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v0[5] = v1;
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x26D620F90](countAndFlagsBits);

  DefaultStringInterpolation.appendInterpolation(_:)();
  v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x26D620F90](v3);

  v11 = v0[4];
  v10 = v0[5];

  outlined destroy of String.UTF8View((v0 + 4));
  v14 = MEMORY[0x26D620710](v11, v10);
  v13 = v4;
  v0[10] = v4;
  v5 = *(MEMORY[0x277D553C8] + 4);
  v6 = swift_task_alloc();
  v12[11] = v6;
  *v6 = v12[6];
  v6[1] = PaymentsAppLister.listApps(intentID:siriAuthorizationRestriction:);
  v7 = v12[8];

  return MEMORY[0x2821B6980](v14, v13, v7);
}

uint64_t PaymentsAppLister.listApps(intentID:siriAuthorizationRestriction:)(uint64_t a1)
{
  v6 = *v1;
  v2 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  *(v6 + 48) = *v1;

  v3 = *(*(v6 + 48) + 8);

  return v3(a1);
}

uint64_t protocol witness for PaymentsAppListing.listApps(intentID:siriAuthorizationRestriction:) in conformance PaymentsAppLister<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v10 + 24) = v5;
  v6 = *(a4 + 16);
  v7 = *(a4 + 24);
  *v5 = *(v10 + 16);
  v5[1] = protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance PaymentsRCHFlowStrategy<A, B>;

  return PaymentsAppLister.listApps(intentID:siriAuthorizationRestriction:)(a1, a2, a3, v6);
}

uint64_t UsoTask.eraseToAny.getter()
{

  static UsoTask_CodegenConverter.convert(task:)();
}

unint64_t UsoTask.siriKitIntentType.getter()
{
  v141 = 0;
  v116 = 0;
  v117 = type metadata accessor for Logger();
  v118 = *(v117 - 8);
  v119 = v118;
  v122 = *(v118 + 64);
  MEMORY[0x28223BE20](v117 - 8);
  v124 = (v122 + 15) & 0xFFFFFFFFFFFFFFF0;
  v120 = &v18 - v124;
  MEMORY[0x28223BE20](&v18 - v124);
  v121 = &v18 - v124;
  MEMORY[0x28223BE20](&v18 - v124);
  v123 = &v18 - v124;
  MEMORY[0x28223BE20](&v18 - v124);
  v125 = &v18 - v124;
  v141 = v0;
  UsoTask.eraseToAny.getter();
  if (v140[3])
  {
    v115 = v136;
    outlined init with copy of Any?(v140, v136);
    v114 = 0;
    type metadata accessor for UsoTask_requestMoney_common_Payment();
    if (swift_dynamicCast())
    {
      v1 = v125;
      v108 = v135[6];
      v2 = Logger.payments.unsafeMutableAddressor();
      (*(v119 + 16))(v1, v2, v117);
      v112 = Logger.logObject.getter();
      v109 = v112;
      v111 = static os_log_type_t.debug.getter();
      v110 = v111;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v113 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v112, v111))
      {
        v3 = v116;
        v99 = static UnsafeMutablePointer.allocate(capacity:)();
        v95 = v99;
        v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v97 = 0;
        v100 = createStorage<A>(capacity:type:)(0);
        v98 = v100;
        v101 = createStorage<A>(capacity:type:)(v97);
        v129[0] = v99;
        v128 = v100;
        v127 = v101;
        v102 = 0;
        v103 = v129;
        serialize(_:at:)(0, v129);
        serialize(_:at:)(v102, v103);
        v126 = v113;
        v104 = &v18;
        MEMORY[0x28223BE20](&v18);
        v105 = &v18 - 6;
        *(&v18 - 4) = v4;
        *(&v18 - 3) = &v128;
        *(&v18 - 2) = &v127;
        v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();
        v107 = v3;
        if (v3)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_2686B1000, v109, v110, "#UsoTask siriKitIntentType returning Request intent", v95, 2u);
          v93 = 0;
          destroyStorage<A>(_:count:)(v98, 0, v96);
          destroyStorage<A>(_:count:)(v101, v93, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v95, MEMORY[0x277D84B78]);

          v94 = v107;
        }
      }

      else
      {

        v94 = v116;
      }

      v89 = v94;

      (*(v119 + 8))(v125, v117);
      v87 = type metadata accessor for INRequestPaymentIntent();
      v88 = v87;

      __swift_destroy_boxed_opaque_existential_0(v136);
      outlined destroy of FlowActivity?(v140);
      v90 = v88;
      v91 = &protocol witness table for INRequestPaymentIntent;
      v92 = v89;
      return v90;
    }

    v86 = 0;
    type metadata accessor for UsoTask_pay_common_Payment();
    if (swift_dynamicCast() || (v85 = 0, type metadata accessor for UsoTask_noVerb_common_Payment(), swift_dynamicCast()))
    {

      __swift_destroy_boxed_opaque_existential_0(v136);
      outlined destroy of FlowActivity?(v140);
      v5 = v123;
      v6 = Logger.payments.unsafeMutableAddressor();
      (*(v119 + 16))(v5, v6, v117);
      v83 = Logger.logObject.getter();
      v80 = v83;
      v82 = static os_log_type_t.debug.getter();
      v81 = v82;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v84 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v83, v82))
      {
        v7 = v116;
        v71 = static UnsafeMutablePointer.allocate(capacity:)();
        v67 = v71;
        v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v69 = 0;
        v72 = createStorage<A>(capacity:type:)(0);
        v70 = v72;
        v73 = createStorage<A>(capacity:type:)(v69);
        v132[0] = v71;
        v131 = v72;
        v130 = v73;
        v74 = 0;
        v75 = v132;
        serialize(_:at:)(0, v132);
        serialize(_:at:)(v74, v75);
        v129[1] = v84;
        v76 = &v18;
        MEMORY[0x28223BE20](&v18);
        v77 = &v18 - 6;
        *(&v18 - 4) = v8;
        *(&v18 - 3) = &v131;
        *(&v18 - 2) = &v130;
        v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();
        v79 = v7;
        if (v7)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_2686B1000, v80, v81, "#UsoTask siriKitIntentType returning Send intent", v67, 2u);
          v65 = 0;
          destroyStorage<A>(_:count:)(v70, 0, v68);
          destroyStorage<A>(_:count:)(v73, v65, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v67, MEMORY[0x277D84B78]);

          v66 = v79;
        }
      }

      else
      {

        v66 = v116;
      }

      v64 = v66;

      (*(v119 + 8))(v123, v117);
      v90 = type metadata accessor for INSendPaymentIntent();
      v91 = &protocol witness table for INSendPaymentIntent;
      v92 = v64;
      return v90;
    }

    v63 = 0;
    type metadata accessor for UsoTask_noVerb_common_PaymentAccount();
    if (swift_dynamicCast() || (v62 = 0, type metadata accessor for UsoTask_request_common_PaymentAccount(), swift_dynamicCast()) || (v61 = 0, type metadata accessor for UsoTask_summarise_common_PaymentAccount(), swift_dynamicCast()))
    {

      __swift_destroy_boxed_opaque_existential_0(v136);
      outlined destroy of FlowActivity?(v140);
      v9 = v121;
      v10 = Logger.payments.unsafeMutableAddressor();
      (*(v119 + 16))(v9, v10, v117);
      v59 = Logger.logObject.getter();
      v56 = v59;
      v58 = static os_log_type_t.debug.getter();
      v57 = v58;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v60 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v59, v58))
      {
        v11 = v116;
        v47 = static UnsafeMutablePointer.allocate(capacity:)();
        v43 = v47;
        v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v45 = 0;
        v48 = createStorage<A>(capacity:type:)(0);
        v46 = v48;
        v49 = createStorage<A>(capacity:type:)(v45);
        v135[0] = v47;
        v134 = v48;
        v133 = v49;
        v50 = 0;
        v51 = v135;
        serialize(_:at:)(0, v135);
        serialize(_:at:)(v50, v51);
        v132[1] = v60;
        v52 = &v18;
        MEMORY[0x28223BE20](&v18);
        v53 = &v18 - 6;
        *(&v18 - 4) = v12;
        *(&v18 - 3) = &v134;
        *(&v18 - 2) = &v133;
        v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();
        v55 = v11;
        if (v11)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_2686B1000, v56, v57, "#UsoTask siriKitIntentType returning SearchForAccounts intent", v43, 2u);
          v41 = 0;
          destroyStorage<A>(_:count:)(v46, 0, v44);
          destroyStorage<A>(_:count:)(v49, v41, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v43, MEMORY[0x277D84B78]);

          v42 = v55;
        }
      }

      else
      {

        v42 = v116;
      }

      v40 = v42;

      (*(v119 + 8))(v121, v117);
      v90 = type metadata accessor for INSearchForAccountsIntent();
      v91 = &protocol witness table for INSearchForAccountsIntent;
      v92 = v40;
      return v90;
    }

    __swift_destroy_boxed_opaque_existential_0(v136);
  }

  v13 = v120;
  v14 = Logger.payments.unsafeMutableAddressor();
  (*(v119 + 16))(v13, v14, v117);
  v38 = Logger.logObject.getter();
  v35 = v38;
  v37 = static os_log_type_t.debug.getter();
  v36 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v39 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v38, v37))
  {
    v15 = v116;
    v26 = static UnsafeMutablePointer.allocate(capacity:)();
    v22 = v26;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v24 = 0;
    v27 = createStorage<A>(capacity:type:)(0);
    v25 = v27;
    v28 = createStorage<A>(capacity:type:)(v24);
    v139 = v26;
    v138 = v27;
    v137 = v28;
    v29 = 0;
    v30 = &v139;
    serialize(_:at:)(0, &v139);
    serialize(_:at:)(v29, v30);
    v136[5] = v39;
    v31 = &v18;
    MEMORY[0x28223BE20](&v18);
    v32 = &v18 - 6;
    *(&v18 - 4) = v16;
    *(&v18 - 3) = &v138;
    *(&v18 - 2) = &v137;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v34 = v15;
    if (v15)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_2686B1000, v35, v36, "#UsoTask siriKitIntentType no known supported task type found, returning nil", v22, 2u);
      v20 = 0;
      destroyStorage<A>(_:count:)(v25, 0, v23);
      destroyStorage<A>(_:count:)(v28, v20, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v22, MEMORY[0x277D84B78]);

      v21 = v34;
    }
  }

  else
  {

    v21 = v116;
  }

  v19 = v21;

  (*(v119 + 8))(v120, v117);
  outlined destroy of FlowActivity?(v140);
  v90 = 0;
  v91 = 0;
  v92 = v19;
  return v90;
}

__int128 *String.APPLE_CARD_APPLY_LAUNCH_URL.unsafeMutableAddressor()
{
  if (one-time initialization token for APPLE_CARD_APPLY_LAUNCH_URL != -1)
  {
    swift_once();
  }

  return &static String.APPLE_CARD_APPLY_LAUNCH_URL;
}

__int128 *String.APPLE_CARD_INFO_LAUNCH_URL.unsafeMutableAddressor()
{
  if (one-time initialization token for APPLE_CARD_INFO_LAUNCH_URL != -1)
  {
    swift_once();
  }

  return &static String.APPLE_CARD_INFO_LAUNCH_URL;
}

uint64_t Constants.DirectInvocationPayloadKeys.rawValue.getter(char a1)
{
  if (a1)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("itemIdentifier", 0xEuLL, 1)._countAndFlagsBits;
  }

  else
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("buttonPressed", 0xDuLL, 1)._countAndFlagsBits;
  }
}

uint64_t Constants.DirectInvocationButtonType.rawValue.getter(char a1)
{
  if (a1)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("reject", 6uLL, 1)._countAndFlagsBits;
  }

  else
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("confirm", 7uLL, 1)._countAndFlagsBits;
  }
}

__int128 *Constants.intentAppIDAssociatedKey.unsafeMutableAddressor()
{
  if (one-time initialization token for intentAppIDAssociatedKey != -1)
  {
    swift_once();
  }

  return &static Constants.intentAppIDAssociatedKey;
}

uint64_t UsoIdentifierNamespace.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 0:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("item_id", 7uLL, 1)._countAndFlagsBits;
    case 1:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("personRelationship", 0x12uLL, 1)._countAndFlagsBits;
    case 2:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("phoneType", 9uLL, 1)._countAndFlagsBits;
    case 3:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("emailType", 9uLL, 1)._countAndFlagsBits;
    case 4:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("contactAttributes", 0x11uLL, 1)._countAndFlagsBits;
    case 5:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("contactType", 0xBuLL, 1)._countAndFlagsBits;
    default:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("name", 4uLL, 1)._countAndFlagsBits;
  }
}

__int128 *String.NOT_YET_IMPLEMENTED.unsafeMutableAddressor()
{
  if (one-time initialization token for NOT_YET_IMPLEMENTED != -1)
  {
    swift_once();
  }

  return &static String.NOT_YET_IMPLEMENTED;
}

__int128 *String.APPLE_CARD_WEB_PAGE_LINK.unsafeMutableAddressor()
{
  if (one-time initialization token for APPLE_CARD_WEB_PAGE_LINK != -1)
  {
    swift_once();
  }

  return &static String.APPLE_CARD_WEB_PAGE_LINK;
}

uint64_t Constants.IntentTypeCATCode.rawValue.getter(char a1)
{
  if (!a1)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("request", 7uLL, 1)._countAndFlagsBits;
  }

  if (a1 == 1)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("send", 4uLL, 1)._countAndFlagsBits;
  }

  else
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("search", 6uLL, 1)._countAndFlagsBits;
  }
}

uint64_t Constants.DirectInvocationPayloadIdentifiers.rawValue.getter(char a1)
{
  if (a1)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.siri.DirectInvocation.Payments.ItemSelection", 0x36uLL, 1)._countAndFlagsBits;
  }

  else
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.siri.DirectInvocation.Payments.buttonPress", 0x34uLL, 1)._countAndFlagsBits;
  }
}

uint64_t static Constants.PaymentAccountBalanceType.fromINBalanceType(_:)(uint64_t a1, char a2)
{
  if ((a2 & 1) != 0 || !a1)
  {
    return 3;
  }

  else
  {
    switch(a1)
    {
      case 1:
        return 1;
      case 2:
        return 2;
      case 3:
        return 0;
      default:
        return 3;
    }
  }
}

uint64_t Constants.PaymentAccountBalanceType.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 0:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("miles", 5uLL, 1)._countAndFlagsBits;
    case 1:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("money", 5uLL, 1)._countAndFlagsBits;
    case 2:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("points", 6uLL, 1)._countAndFlagsBits;
    default:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("unknown", 7uLL, 1)._countAndFlagsBits;
  }
}

uint64_t static Constants.PaymentAccountType.fromINAccountType(_:)(uint64_t a1)
{
  if (a1)
  {
    switch(a1)
    {
      case 1:
        return 1;
      case 2:
        return 2;
      case 3:
        return 3;
      case 4:
        return 4;
      case 5:
        return 5;
      case 6:
        return 6;
      case 7:
        return 7;
      default:
        return 0;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t Constants.PaymentAccountType.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 0:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("unknown", 7uLL, 1)._countAndFlagsBits;
    case 1:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("checking", 8uLL, 1)._countAndFlagsBits;
    case 2:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("credit", 6uLL, 1)._countAndFlagsBits;
    case 3:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("debit", 5uLL, 1)._countAndFlagsBits;
    case 4:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("investment", 0xAuLL, 1)._countAndFlagsBits;
    case 5:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("mortgage", 8uLL, 1)._countAndFlagsBits;
    case 6:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("prepaid", 7uLL, 1)._countAndFlagsBits;
    case 7:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("saving", 6uLL, 1)._countAndFlagsBits;
    default:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("savings", 7uLL, 1)._countAndFlagsBits;
  }
}

uint64_t Constants.PaymentAccountType.asCATIDForLoc.getter(char a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ACCOUNT_TYPE_CHECKING", 0x15uLL, 1)._countAndFlagsBits;
    case 2:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ACCOUNT_TYPE_CREDIT", 0x13uLL, 1)._countAndFlagsBits;
    case 3:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ACCOUNT_TYPE_DEBIT", 0x12uLL, 1)._countAndFlagsBits;
    case 4:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ACCOUNT_TYPE_INVESTMENT", 0x17uLL, 1)._countAndFlagsBits;
    case 5:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ACCOUNT_TYPE_MORTGAGE", 0x15uLL, 1)._countAndFlagsBits;
    case 6:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ACCOUNT_TYPE_PREPAID", 0x14uLL, 1)._countAndFlagsBits;
  }

  return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ACCOUNT_TYPE_SAVING", 0x13uLL, 1)._countAndFlagsBits;
}

uint64_t Constants.PaymentAccountBalanceType.asCATIDForLoc.getter(char a1)
{
  switch(a1)
  {
    case 0:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("BALANCE_TYPE_MILES", 0x12uLL, 1)._countAndFlagsBits;
    case 1:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("BALANCE_TYPE_MONEY", 0x12uLL, 1)._countAndFlagsBits;
    case 2:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("BALANCE_TYPE_POINTS", 0x13uLL, 1)._countAndFlagsBits;
    default:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("BALANCE_TYPE_UNKNOWN", 0x14uLL, 1)._countAndFlagsBits;
  }
}

__int128 *String.EMPTY.unsafeMutableAddressor()
{
  if (one-time initialization token for EMPTY != -1)
  {
    swift_once();
  }

  return &static String.EMPTY;
}

SiriPaymentsIntents::Constants::DirectInvocationButtonType_optional __swiftcall Constants.DirectInvocationButtonType.init(rawValue:)(Swift::String rawValue)
{
  v1 = _allocateUninitializedArray<A>(_:)();
  *v2 = "confirm";
  *(v2 + 8) = 7;
  *(v2 + 16) = 2;
  *(v2 + 24) = "reject";
  *(v2 + 32) = 6;
  *(v2 + 40) = 2;
  _finalizeUninitializedArray<A>(_:)();
  v7 = _findStringSwitchCase(cases:string:)(v1, rawValue);

  if (!v7)
  {
    v5.value = SiriPaymentsIntents_Constants_DirectInvocationButtonType_confirm;
LABEL_6:

    return v5;
  }

  if (v7 == 1)
  {
    v5.value = SiriPaymentsIntents_Constants_DirectInvocationButtonType_reject;
    goto LABEL_6;
  }

  return 2;
}

uint64_t Constants.DirectInvocationButtonType.confirmationResponse.getter@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v5 = *MEMORY[0x277D5BED0];
    v4 = type metadata accessor for ConfirmationResponse();
    return (*(*(v4 - 8) + 104))(a2, v5);
  }

  else
  {
    v6 = *MEMORY[0x277D5BED8];
    v2 = type metadata accessor for ConfirmationResponse();
    return (*(*(v2 - 8) + 104))(a2, v6);
  }
}

uint64_t Constants.NLConstants.rawValue.getter(char a1)
{
  if (a1)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("paymentsConfirmation", 0x14uLL, 1)._countAndFlagsBits;
  }

  else
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("payments", 8uLL, 1)._countAndFlagsBits;
  }
}

uint64_t Constants.NLConstants.canonicalName.getter(char a1)
{
  v12 = a1 & 1;
  v10 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v11 = v1;
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.siri.nl.", 0x12uLL, 1)._countAndFlagsBits;
  MEMORY[0x26D620F90](countAndFlagsBits);

  Constants.NLConstants.rawValue.getter(a1 & 1);
  v3 = String.firstLetterCapitalized()();

  v9 = v3;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  outlined destroy of String.UTF8View(&v9);
  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x26D620F90](v4);

  v8 = v10;
  v7 = v11;

  outlined destroy of String.UTF8View(&v10);
  return MEMORY[0x26D620710](v8, v7);
}

uint64_t Constants.NLPaymentConfirmationValue.canonicalName.getter(char a1)
{
  v10 = a1;
  Constants.NLPaymentConfirmationValue.associatedSemantic.getter();
  Constants.NLPaymentConfirmationValue.rawValue.getter(a1);
  v1 = String.uppercased()();

  v9 = v1;
  v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1);
  v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("_", 1uLL, 1);
  lazy protocol witness table accessor for type String and conformance String();
  default argument 2 of StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v5._countAndFlagsBits = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v5._object = v2;
  outlined destroy of String.UTF8View(&v7);
  outlined destroy of String.UTF8View(&v8);
  outlined destroy of String.UTF8View(&v9);
  countAndFlagsBits = Constants.NLConstants.boundValue(_:)(v5)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t one-time initialization function for EMPTY()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  result = v1._countAndFlagsBits;
  static String.EMPTY = v1;
  return result;
}

uint64_t static String.EMPTY.getter()
{
  v0 = String.EMPTY.unsafeMutableAddressor();
  v2 = *v0;
  v3 = *(v0 + 1);

  return v2;
}

uint64_t one-time initialization function for NOT_YET_IMPLEMENTED()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Not yet implemented", 0x13uLL, 1);
  result = v1._countAndFlagsBits;
  static String.NOT_YET_IMPLEMENTED = v1;
  return result;
}

uint64_t static String.NOT_YET_IMPLEMENTED.getter()
{
  v0 = String.NOT_YET_IMPLEMENTED.unsafeMutableAddressor();
  v2 = *v0;
  v3 = *(v0 + 1);

  return v2;
}

uint64_t one-time initialization function for WATCH_APP_BUNDLE_ID()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.NanoPassbook", 0x16uLL, 1);
  result = v1._countAndFlagsBits;
  static String.WATCH_APP_BUNDLE_ID = v1;
  return result;
}

__int128 *String.WATCH_APP_BUNDLE_ID.unsafeMutableAddressor()
{
  if (one-time initialization token for WATCH_APP_BUNDLE_ID != -1)
  {
    swift_once();
  }

  return &static String.WATCH_APP_BUNDLE_ID;
}

uint64_t static String.WATCH_APP_BUNDLE_ID.getter()
{
  v0 = String.WATCH_APP_BUNDLE_ID.unsafeMutableAddressor();
  v2 = *v0;
  v3 = *(v0 + 1);

  return v2;
}

uint64_t one-time initialization function for APP_BUNDLE_ID()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.Passbook", 0x12uLL, 1);
  result = v1._countAndFlagsBits;
  static String.APP_BUNDLE_ID = v1;
  return result;
}

__int128 *String.APP_BUNDLE_ID.unsafeMutableAddressor()
{
  if (one-time initialization token for APP_BUNDLE_ID != -1)
  {
    swift_once();
  }

  return &static String.APP_BUNDLE_ID;
}

uint64_t static String.APP_BUNDLE_ID.getter()
{
  v0 = String.APP_BUNDLE_ID.unsafeMutableAddressor();
  v2 = *v0;
  v3 = *(v0 + 1);

  return v2;
}

uint64_t one-time initialization function for APP_NAME_EN()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("passbook", 8uLL, 1);
  result = v1._countAndFlagsBits;
  static String.APP_NAME_EN = v1;
  return result;
}

__int128 *String.APP_NAME_EN.unsafeMutableAddressor()
{
  if (one-time initialization token for APP_NAME_EN != -1)
  {
    swift_once();
  }

  return &static String.APP_NAME_EN;
}

uint64_t static String.APP_NAME_EN.getter()
{
  v0 = String.APP_NAME_EN.unsafeMutableAddressor();
  v2 = *v0;
  v3 = *(v0 + 1);

  return v2;
}

uint64_t one-time initialization function for PASSKIT_EXTENSION_BUNDLE_ID()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.PassKit.PassKitIntentsExtension", 0x29uLL, 1);
  result = v1._countAndFlagsBits;
  static String.PASSKIT_EXTENSION_BUNDLE_ID = v1;
  return result;
}

__int128 *String.PASSKIT_EXTENSION_BUNDLE_ID.unsafeMutableAddressor()
{
  if (one-time initialization token for PASSKIT_EXTENSION_BUNDLE_ID != -1)
  {
    swift_once();
  }

  return &static String.PASSKIT_EXTENSION_BUNDLE_ID;
}

uint64_t static String.PASSKIT_EXTENSION_BUNDLE_ID.getter()
{
  v0 = String.PASSKIT_EXTENSION_BUNDLE_ID.unsafeMutableAddressor();
  v2 = *v0;
  v3 = *(v0 + 1);

  return v2;
}

uint64_t one-time initialization function for PASSKIT_UI_EXTENSION_BUNDLE_ID()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.PassKit.PassKitIntentsUIExtension", 0x2BuLL, 1);
  result = v1._countAndFlagsBits;
  static String.PASSKIT_UI_EXTENSION_BUNDLE_ID = v1;
  return result;
}

__int128 *String.PASSKIT_UI_EXTENSION_BUNDLE_ID.unsafeMutableAddressor()
{
  if (one-time initialization token for PASSKIT_UI_EXTENSION_BUNDLE_ID != -1)
  {
    swift_once();
  }

  return &static String.PASSKIT_UI_EXTENSION_BUNDLE_ID;
}

uint64_t static String.PASSKIT_UI_EXTENSION_BUNDLE_ID.getter()
{
  v0 = String.PASSKIT_UI_EXTENSION_BUNDLE_ID.unsafeMutableAddressor();
  v2 = *v0;
  v3 = *(v0 + 1);

  return v2;
}

uint64_t one-time initialization function for APPLE_CARD_INFO_LAUNCH_URL()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("wallet://discovery/card/40cc8cf6-f7d2-407b-9426-0986d1f39178?referrer=cid%3Dapy-410-100001", 0x5AuLL, 1);
  result = v1._countAndFlagsBits;
  static String.APPLE_CARD_INFO_LAUNCH_URL = v1;
  return result;
}

uint64_t static String.APPLE_CARD_INFO_LAUNCH_URL.getter()
{
  v0 = String.APPLE_CARD_INFO_LAUNCH_URL.unsafeMutableAddressor();
  v2 = *v0;
  v3 = *(v0 + 1);

  return v2;
}

uint64_t one-time initialization function for APPLE_CARD_APPLY_LAUNCH_URL()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("wallet://setup/feature/ccs?referrer=cid%3Dapy-410-100002", 0x38uLL, 1);
  result = v1._countAndFlagsBits;
  static String.APPLE_CARD_APPLY_LAUNCH_URL = v1;
  return result;
}

uint64_t static String.APPLE_CARD_APPLY_LAUNCH_URL.getter()
{
  v0 = String.APPLE_CARD_APPLY_LAUNCH_URL.unsafeMutableAddressor();
  v2 = *v0;
  v3 = *(v0 + 1);

  return v2;
}

uint64_t one-time initialization function for APPLE_CARD_WEB_PAGE_LINK()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("https://www.apple.com/apple-card/", 0x21uLL, 1);
  result = v1._countAndFlagsBits;
  static String.APPLE_CARD_WEB_PAGE_LINK = v1;
  return result;
}

uint64_t static String.APPLE_CARD_WEB_PAGE_LINK.getter()
{
  v0 = String.APPLE_CARD_WEB_PAGE_LINK.unsafeMutableAddressor();
  v2 = *v0;
  v3 = *(v0 + 1);

  return v2;
}

uint64_t one-time initialization function for intentAppIDAssociatedKey()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("intentAppIDAssociatedKey", 0x18uLL, 1);
  result = v1._countAndFlagsBits;
  static Constants.intentAppIDAssociatedKey = v1;
  return result;
}

uint64_t static Constants.intentAppIDAssociatedKey.getter()
{
  v1 = Constants.intentAppIDAssociatedKey.unsafeMutableAddressor();
  swift_beginAccess();
  v2 = *v1;
  v3 = *(v1 + 1);

  swift_endAccess();
  return v2;
}

uint64_t static Constants.intentAppIDAssociatedKey.setter(uint64_t a1, uint64_t a2)
{
  v5 = Constants.intentAppIDAssociatedKey.unsafeMutableAddressor();

  swift_beginAccess();
  v2 = *(v5 + 1);
  *v5 = a1;
  *(v5 + 1) = a2;

  swift_endAccess();
}

uint64_t static Constants.defaultPaymentsApp.getter()
{
  type metadata accessor for App();
  v0 = String.APP_BUNDLE_ID.unsafeMutableAddressor();
  v4 = *v0;
  v5 = *(v0 + 1);

  v1 = String.PASSKIT_EXTENSION_BUNDLE_ID.unsafeMutableAddressor();
  v6 = *v1;
  v7 = *(v1 + 1);

  v2 = String.PASSKIT_UI_EXTENSION_BUNDLE_ID.unsafeMutableAddressor();
  v8 = *v2;
  v9 = *(v2 + 1);

  return App.__allocating_init(appIdentifier:systemExtensionBundleId:systemUIExtensionBundleId:pluginIdentifier:)();
}

Swift::String __swiftcall Constants.NLConstants.boundValue(_:)(Swift::String a1)
{
  v10 = v1;
  v18 = a1;
  v17 = v1 & 1;
  v15 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v16 = v2;
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x26D620F90](countAndFlagsBits);

  v14[0] = Constants.NLConstants.canonicalName.getter(v10 & 1);
  v14[1] = v4;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  outlined destroy of String.UTF8View(v14);
  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(".Value.", 7uLL, 1)._countAndFlagsBits;
  MEMORY[0x26D620F90](v5);

  v13 = String.uppercased()();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  outlined destroy of String.UTF8View(&v13);
  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x26D620F90](v6);

  v12 = v15;
  v11 = v16;

  outlined destroy of String.UTF8View(&v15);
  v7 = MEMORY[0x26D620710](v12, v11);
  result._object = v8;
  result._countAndFlagsBits = v7;
  return result;
}

SiriPaymentsIntents::Constants::NLConstants_optional __swiftcall Constants.NLConstants.init(rawValue:)(Swift::String rawValue)
{
  v1 = _allocateUninitializedArray<A>(_:)();
  *v2 = "payments";
  *(v2 + 8) = 8;
  *(v2 + 16) = 2;
  *(v2 + 24) = "paymentsConfirmation";
  *(v2 + 32) = 20;
  *(v2 + 40) = 2;
  _finalizeUninitializedArray<A>(_:)();
  v7 = _findStringSwitchCase(cases:string:)(v1, rawValue);

  if (!v7)
  {
    v5.value = SiriPaymentsIntents_Constants_NLConstants_payments;
LABEL_6:

    return v5;
  }

  if (v7 == 1)
  {
    v5.value = SiriPaymentsIntents_Constants_NLConstants_paymentsConfirmation;
    goto LABEL_6;
  }

  return 2;
}

SiriPaymentsIntents::Constants::NLConstants_optional protocol witness for RawRepresentable.init(rawValue:) in conformance Constants.NLConstants@<W0>(Swift::String *a1@<X0>, SiriPaymentsIntents::Constants::NLConstants_optional *a2@<X8>)
{
  result.value = Constants.NLConstants.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance Constants.NLConstants@<X0>(uint64_t *a1@<X8>)
{
  result = Constants.NLConstants.rawValue.getter(*v1 & 1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t Constants.NLPaymentConfirmationValue.rawValue.getter(char a1)
{
  if (!a1)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("yes", 3uLL, 1)._countAndFlagsBits;
  }

  if (a1 == 1)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("no", 2uLL, 1)._countAndFlagsBits;
  }

  else
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("cancel", 6uLL, 1)._countAndFlagsBits;
  }
}

unint64_t lazy protocol witness table accessor for type Constants.NLConstants and conformance Constants.NLConstants()
{
  v2 = lazy protocol witness table cache variable for type Constants.NLConstants and conformance Constants.NLConstants;
  if (!lazy protocol witness table cache variable for type Constants.NLConstants and conformance Constants.NLConstants)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Constants.NLConstants and conformance Constants.NLConstants);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type Constants.NLConstants and conformance Constants.NLConstants;
  if (!lazy protocol witness table cache variable for type Constants.NLConstants and conformance Constants.NLConstants)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Constants.NLConstants and conformance Constants.NLConstants);
    return WitnessTable;
  }

  return v2;
}

SiriPaymentsIntents::Constants::NLPaymentConfirmationValue_optional __swiftcall Constants.NLPaymentConfirmationValue.init(rawValue:)(Swift::String rawValue)
{
  v1 = _allocateUninitializedArray<A>(_:)();
  *v2 = "yes";
  *(v2 + 8) = 3;
  *(v2 + 16) = 2;
  *(v2 + 24) = "no";
  *(v2 + 32) = 2;
  *(v2 + 40) = 2;
  *(v2 + 48) = "cancel";
  *(v2 + 56) = 6;
  *(v2 + 64) = 2;
  _finalizeUninitializedArray<A>(_:)();
  v7 = _findStringSwitchCase(cases:string:)(v1, rawValue);

  switch(v7)
  {
    case 0:
      v5.value = SiriPaymentsIntents_Constants_NLPaymentConfirmationValue_yes;
LABEL_8:

      return v5;
    case 1:
      v5.value = SiriPaymentsIntents_Constants_NLPaymentConfirmationValue_no;
      goto LABEL_8;
    case 2:
      v5.value = SiriPaymentsIntents_Constants_NLPaymentConfirmationValue_cancel;
      goto LABEL_8;
  }

  return 3;
}

uint64_t static Constants.NLPaymentConfirmationValue.allCases.getter()
{
  result = _allocateUninitializedArray<A>(_:)();
  *v1 = 0;
  v1[1] = 1;
  v1[2] = 2;
  _finalizeUninitializedArray<A>(_:)();
  return result;
}

unint64_t lazy protocol witness table accessor for type Constants.NLPaymentConfirmationValue and conformance Constants.NLPaymentConfirmationValue()
{
  v2 = lazy protocol witness table cache variable for type Constants.NLPaymentConfirmationValue and conformance Constants.NLPaymentConfirmationValue;
  if (!lazy protocol witness table cache variable for type Constants.NLPaymentConfirmationValue and conformance Constants.NLPaymentConfirmationValue)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Constants.NLPaymentConfirmationValue and conformance Constants.NLPaymentConfirmationValue);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type Constants.NLPaymentConfirmationValue and conformance Constants.NLPaymentConfirmationValue;
  if (!lazy protocol witness table cache variable for type Constants.NLPaymentConfirmationValue and conformance Constants.NLPaymentConfirmationValue)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Constants.NLPaymentConfirmationValue and conformance Constants.NLPaymentConfirmationValue);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type Constants.NLPaymentConfirmationValue and conformance Constants.NLPaymentConfirmationValue;
  if (!lazy protocol witness table cache variable for type Constants.NLPaymentConfirmationValue and conformance Constants.NLPaymentConfirmationValue)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Constants.NLPaymentConfirmationValue and conformance Constants.NLPaymentConfirmationValue);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type Constants.NLPaymentConfirmationValue and conformance Constants.NLPaymentConfirmationValue;
  if (!lazy protocol witness table cache variable for type Constants.NLPaymentConfirmationValue and conformance Constants.NLPaymentConfirmationValue)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Constants.NLPaymentConfirmationValue and conformance Constants.NLPaymentConfirmationValue);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type Constants.NLPaymentConfirmationValue and conformance Constants.NLPaymentConfirmationValue;
  if (!lazy protocol witness table cache variable for type Constants.NLPaymentConfirmationValue and conformance Constants.NLPaymentConfirmationValue)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Constants.NLPaymentConfirmationValue and conformance Constants.NLPaymentConfirmationValue);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type Constants.NLPaymentConfirmationValue and conformance Constants.NLPaymentConfirmationValue;
  if (!lazy protocol witness table cache variable for type Constants.NLPaymentConfirmationValue and conformance Constants.NLPaymentConfirmationValue)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Constants.NLPaymentConfirmationValue and conformance Constants.NLPaymentConfirmationValue);
    return WitnessTable;
  }

  return v2;
}

SiriPaymentsIntents::Constants::NLPaymentConfirmationValue_optional protocol witness for RawRepresentable.init(rawValue:) in conformance Constants.NLPaymentConfirmationValue@<W0>(Swift::String *a1@<X0>, SiriPaymentsIntents::Constants::NLPaymentConfirmationValue_optional *a2@<X8>)
{
  result.value = Constants.NLPaymentConfirmationValue.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance Constants.NLPaymentConfirmationValue@<X0>(uint64_t *a1@<X8>)
{
  result = Constants.NLPaymentConfirmationValue.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance Constants.NLPaymentConfirmationValue@<X0>(uint64_t *a1@<X8>)
{
  result = static Constants.NLPaymentConfirmationValue.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static TerminalNodeValueType.fromIntentNodeValue(_:) in conformance Constants.NLPaymentConfirmationValue()
{
  lazy protocol witness table accessor for type Constants.NLPaymentConfirmationValue and conformance Constants.NLPaymentConfirmationValue();
  lazy protocol witness table accessor for type Constants.NLPaymentConfirmationValue and conformance Constants.NLPaymentConfirmationValue();
  lazy protocol witness table accessor for type Constants.NLPaymentConfirmationValue and conformance Constants.NLPaymentConfirmationValue();
  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)();
}

SiriPaymentsIntents::Constants::PaymentAccountType_optional __swiftcall Constants.PaymentAccountType.init(from:)(Swift::String_optional from)
{
  countAndFlagsBits = from.value._countAndFlagsBits;
  object = from.value._object;
  v68 = partial apply for specialized implicit closure #8 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:);
  v69 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v70 = partial apply for closure #1 in OSLogArguments.append(_:);
  v71 = partial apply for closure #1 in OSLogArguments.append(_:);
  v72 = partial apply for closure #1 in OSLogArguments.append(_:);
  v98 = 0;
  v99 = 0;
  v97._countAndFlagsBits = 0;
  v97._object = 0;
  v73 = 0;
  v74 = 0;
  v75 = type metadata accessor for Logger();
  v76 = *(v75 - 8);
  v77 = v75 - 8;
  v78 = (*(v76 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v79 = &v26[-v78];
  v81 = type metadata accessor for CharacterSet();
  v82 = *(v81 - 8);
  v83 = v81 - 8;
  v84 = (*(v82 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](object);
  v85 = &v26[-v84];
  v98 = v2;
  v99 = v1;

  if (!object)
  {
    goto LABEL_12;
  }

  v66 = countAndFlagsBits;
  v67 = object;
  v39._object = object;
  v39._countAndFlagsBits = countAndFlagsBits;

  v97 = v39;
  v44 = &v96;
  v96 = v39;
  v55 = 7;
  v41 = 1;
  v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("account", 7uLL, 1);
  v43 = &v95;
  v95 = v3;
  v40 = 0;
  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, v41 & 1);
  v42 = &v94;
  v94 = v4;
  v48 = lazy protocol witness table accessor for type String and conformance String();
  v47 = MEMORY[0x277D837D0];
  default argument 2 of StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v46 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v45 = v5;
  outlined destroy of String.UTF8View(v42);
  outlined destroy of String.UTF8View(v43);
  outlined destroy of String.UTF8View(v44);
  v49 = v93;
  v93[0] = v46;
  v93[1] = v45;
  static CharacterSet.whitespacesAndNewlines.getter();
  v6 = StringProtocol.trimmingCharacters(in:)();
  v7 = v79;
  v50 = v6;
  v51 = v8;
  (*(v82 + 8))(v85, v81);
  outlined destroy of String.UTF8View(v49);
  v52 = String.lowercased()();

  v97 = v52;

  v9 = Logger.payments.unsafeMutableAddressor();
  (*(v76 + 16))(v7, v9, v75);

  v54 = 32;
  v10 = swift_allocObject();
  v11 = v52._object;
  v56 = v10;
  *(v10 + 16) = v52._countAndFlagsBits;
  *(v10 + 24) = v11;
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.debug.getter();
  v53 = 17;
  v58 = swift_allocObject();
  *(v58 + 16) = 32;
  v59 = swift_allocObject();
  *(v59 + 16) = 8;
  v12 = swift_allocObject();
  v13 = v56;
  v57 = v12;
  *(v12 + 16) = v68;
  *(v12 + 24) = v13;
  v14 = swift_allocObject();
  v15 = v57;
  v61 = v14;
  *(v14 + 16) = v69;
  *(v14 + 24) = v15;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v60 = _allocateUninitializedArray<A>(_:)();
  v62 = v16;

  v17 = v58;
  v18 = v62;
  *v62 = v70;
  v18[1] = v17;

  v19 = v59;
  v20 = v62;
  v62[2] = v71;
  v20[3] = v19;

  v21 = v61;
  v22 = v62;
  v62[4] = v72;
  v22[5] = v21;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v64, v65))
  {
    v23 = v73;
    v32 = static UnsafeMutablePointer.allocate(capacity:)();
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v33 = createStorage<A>(capacity:type:)(0);
    v34 = createStorage<A>(capacity:type:)(1);
    v35 = &v91;
    v91 = v32;
    v36 = &v90;
    v90 = v33;
    v37 = &v89;
    v89 = v34;
    serialize(_:at:)(2, &v91);
    serialize(_:at:)(1, v35);
    v87 = v70;
    v88 = v58;
    closure #1 in osLogInternal(_:log:type:)(&v87, v35, v36, v37);
    v38 = v23;
    if (v23)
    {

      __break(1u);
    }

    else
    {
      v87 = v71;
      v88 = v59;
      closure #1 in osLogInternal(_:log:type:)(&v87, &v91, &v90, &v89);
      v30 = 0;
      v87 = v72;
      v88 = v61;
      closure #1 in osLogInternal(_:log:type:)(&v87, &v91, &v90, &v89);
      _os_log_impl(&dword_2686B1000, v64, v65, "#PaymentAccountType initializing against cleaned candidate %s", v32, 0xCu);
      destroyStorage<A>(_:count:)(v33, 0, v31);
      destroyStorage<A>(_:count:)(v34, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v32, MEMORY[0x277D84B78]);
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v64);
  (*(v76 + 8))(v79, v75);
  v28 = &v92;
  swift_beginAccess();
  swift_endAccess();
  LOBYTE(v24) = Constants.PaymentAccountType.init(rawValue:)(v52);
  v29 = v24;
  if (v24 == 9)
  {
    outlined destroy of String.UTF8View(&v97);
LABEL_12:

    return 9;
  }

  v100 = v29;
  outlined destroy of String.UTF8View(&v97);

  return v29;
}

uint64_t sub_268846138()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

SiriPaymentsIntents::Constants::PaymentAccountType_optional __swiftcall Constants.PaymentAccountType.init(rawValue:)(Swift::String rawValue)
{
  v1 = _allocateUninitializedArray<A>(_:)();
  *v2 = "unknown";
  *(v2 + 8) = 7;
  *(v2 + 16) = 2;
  *(v2 + 24) = "checking";
  *(v2 + 32) = 8;
  *(v2 + 40) = 2;
  *(v2 + 48) = "credit";
  *(v2 + 56) = 6;
  *(v2 + 64) = 2;
  *(v2 + 72) = "debit";
  *(v2 + 80) = 5;
  *(v2 + 88) = 2;
  *(v2 + 96) = "investment";
  *(v2 + 104) = 10;
  *(v2 + 112) = 2;
  *(v2 + 120) = "mortgage";
  *(v2 + 128) = 8;
  *(v2 + 136) = 2;
  *(v2 + 144) = "prepaid";
  *(v2 + 152) = 7;
  *(v2 + 160) = 2;
  *(v2 + 168) = "saving";
  *(v2 + 176) = 6;
  *(v2 + 184) = 2;
  *(v2 + 192) = "savings";
  *(v2 + 200) = 7;
  *(v2 + 208) = 2;
  _finalizeUninitializedArray<A>(_:)();
  v7 = _findStringSwitchCase(cases:string:)(v1, rawValue);

  switch(v7)
  {
    case 0:
      v5.value = SiriPaymentsIntents_Constants_PaymentAccountType_unknown;
LABEL_20:

      return v5;
    case 1:
      v5.value = SiriPaymentsIntents_Constants_PaymentAccountType_checking;
      goto LABEL_20;
    case 2:
      v5.value = SiriPaymentsIntents_Constants_PaymentAccountType_credit;
      goto LABEL_20;
    case 3:
      v5.value = SiriPaymentsIntents_Constants_PaymentAccountType_debit;
      goto LABEL_20;
    case 4:
      v5.value = SiriPaymentsIntents_Constants_PaymentAccountType_investment;
      goto LABEL_20;
    case 5:
      v5.value = SiriPaymentsIntents_Constants_PaymentAccountType_mortgage;
      goto LABEL_20;
    case 6:
      v5.value = SiriPaymentsIntents_Constants_PaymentAccountType_prepaid;
      goto LABEL_20;
    case 7:
      v5.value = SiriPaymentsIntents_Constants_PaymentAccountType_saving;
      goto LABEL_20;
    case 8:
      v5.value = SiriPaymentsIntents_Constants_PaymentAccountType_savings;
      goto LABEL_20;
  }

  return 9;
}

uint64_t Constants.PaymentAccountType.asINAccountType.getter(char a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 2;
    case 3:
      return 3;
    case 4:
      return 4;
    case 5:
      return 5;
    case 6:
      return 6;
  }

  return 7;
}

uint64_t static Constants.PaymentAccountType.allCases.getter()
{
  result = _allocateUninitializedArray<A>(_:)();
  *v1 = 0;
  v1[1] = 1;
  v1[2] = 2;
  v1[3] = 3;
  v1[4] = 4;
  v1[5] = 5;
  v1[6] = 6;
  v1[7] = 7;
  v1[8] = 8;
  _finalizeUninitializedArray<A>(_:)();
  return result;
}

SiriPaymentsIntents::Constants::DirectInvocationPayloadKeys_optional __swiftcall Constants.DirectInvocationPayloadKeys.init(rawValue:)(Swift::String rawValue)
{
  v1 = _allocateUninitializedArray<A>(_:)();
  *v2 = "buttonPressed";
  *(v2 + 8) = 13;
  *(v2 + 16) = 2;
  *(v2 + 24) = "itemIdentifier";
  *(v2 + 32) = 14;
  *(v2 + 40) = 2;
  _finalizeUninitializedArray<A>(_:)();
  v7 = _findStringSwitchCase(cases:string:)(v1, rawValue);

  if (!v7)
  {
    v5.value = SiriPaymentsIntents_Constants_DirectInvocationPayloadKeys_buttonPressed;
LABEL_6:

    return v5;
  }

  if (v7 == 1)
  {
    v5.value = SiriPaymentsIntents_Constants_DirectInvocationPayloadKeys_itemIdentifier;
    goto LABEL_6;
  }

  return 2;
}

uint64_t static Constants.DirectInvocationPayloadKeys.allCases.getter()
{
  result = _allocateUninitializedArray<A>(_:)();
  *v1 = 0;
  v1[1] = 1;
  _finalizeUninitializedArray<A>(_:)();
  return result;
}

SiriPaymentsIntents::Constants::DirectInvocationPayloadIdentifiers_optional __swiftcall Constants.DirectInvocationPayloadIdentifiers.init(rawValue:)(Swift::String rawValue)
{
  v1 = _allocateUninitializedArray<A>(_:)();
  *v2 = "com.apple.siri.DirectInvocation.Payments.buttonPress";
  *(v2 + 8) = 52;
  *(v2 + 16) = 2;
  *(v2 + 24) = "com.apple.siri.DirectInvocation.Payments.ItemSelection";
  *(v2 + 32) = 54;
  *(v2 + 40) = 2;
  _finalizeUninitializedArray<A>(_:)();
  v7 = _findStringSwitchCase(cases:string:)(v1, rawValue);

  if (!v7)
  {
    v5.value = SiriPaymentsIntents_Constants_DirectInvocationPayloadIdentifiers_buttonPress;
LABEL_6:

    return v5;
  }

  if (v7 == 1)
  {
    v5.value = SiriPaymentsIntents_Constants_DirectInvocationPayloadIdentifiers_itemSelection;
    goto LABEL_6;
  }

  return 2;
}

uint64_t static Constants.DirectInvocationPayloadIdentifiers.allCases.getter()
{
  result = _allocateUninitializedArray<A>(_:)();
  *v1 = 0;
  v1[1] = 1;
  _finalizeUninitializedArray<A>(_:)();
  return result;
}

uint64_t static Constants.DirectInvocationButtonType.allCases.getter()
{
  result = _allocateUninitializedArray<A>(_:)();
  *v1 = 0;
  v1[1] = 1;
  _finalizeUninitializedArray<A>(_:)();
  return result;
}

SiriPaymentsIntents::Constants::PaymentAccountType_optional protocol witness for RawRepresentable.init(rawValue:) in conformance Constants.PaymentAccountType@<W0>(Swift::String *a1@<X0>, SiriPaymentsIntents::Constants::PaymentAccountType_optional *a2@<X8>)
{
  result.value = Constants.PaymentAccountType.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance Constants.PaymentAccountType@<X0>(uint64_t *a1@<X8>)
{
  result = Constants.PaymentAccountType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance Constants.PaymentAccountType@<X0>(uint64_t *a1@<X8>)
{
  result = static Constants.PaymentAccountType.allCases.getter();
  *a1 = result;
  return result;
}

SiriPaymentsIntents::Constants::DirectInvocationPayloadKeys_optional protocol witness for RawRepresentable.init(rawValue:) in conformance Constants.DirectInvocationPayloadKeys@<W0>(Swift::String *a1@<X0>, SiriPaymentsIntents::Constants::DirectInvocationPayloadKeys_optional *a2@<X8>)
{
  result.value = Constants.DirectInvocationPayloadKeys.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance Constants.DirectInvocationPayloadKeys@<X0>(uint64_t *a1@<X8>)
{
  result = Constants.DirectInvocationPayloadKeys.rawValue.getter(*v1 & 1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance Constants.DirectInvocationPayloadKeys@<X0>(uint64_t *a1@<X8>)
{
  result = static Constants.DirectInvocationPayloadKeys.allCases.getter();
  *a1 = result;
  return result;
}

SiriPaymentsIntents::Constants::DirectInvocationPayloadIdentifiers_optional protocol witness for RawRepresentable.init(rawValue:) in conformance Constants.DirectInvocationPayloadIdentifiers@<W0>(Swift::String *a1@<X0>, SiriPaymentsIntents::Constants::DirectInvocationPayloadIdentifiers_optional *a2@<X8>)
{
  result.value = Constants.DirectInvocationPayloadIdentifiers.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance Constants.DirectInvocationPayloadIdentifiers@<X0>(uint64_t *a1@<X8>)
{
  result = Constants.DirectInvocationPayloadIdentifiers.rawValue.getter(*v1 & 1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance Constants.DirectInvocationPayloadIdentifiers@<X0>(uint64_t *a1@<X8>)
{
  result = static Constants.DirectInvocationPayloadIdentifiers.allCases.getter();
  *a1 = result;
  return result;
}

SiriPaymentsIntents::Constants::DirectInvocationButtonType_optional protocol witness for RawRepresentable.init(rawValue:) in conformance Constants.DirectInvocationButtonType@<W0>(Swift::String *a1@<X0>, SiriPaymentsIntents::Constants::DirectInvocationButtonType_optional *a2@<X8>)
{
  result.value = Constants.DirectInvocationButtonType.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance Constants.DirectInvocationButtonType@<X0>(uint64_t *a1@<X8>)
{
  result = Constants.DirectInvocationButtonType.rawValue.getter(*v1 & 1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance Constants.DirectInvocationButtonType@<X0>(uint64_t *a1@<X8>)
{
  result = static Constants.DirectInvocationButtonType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Constants.PaymentAccountBalanceType.asINBalanceType.getter(char a1)
{
  switch(a1)
  {
    case 0:
      return 3;
    case 1:
      return 1;
    case 2:
      return 2;
  }

  return 0;
}

SiriPaymentsIntents::Constants::PaymentAccountBalanceType_optional __swiftcall Constants.PaymentAccountBalanceType.init(rawValue:)(Swift::String rawValue)
{
  v1 = _allocateUninitializedArray<A>(_:)();
  *v2 = "miles";
  *(v2 + 8) = 5;
  *(v2 + 16) = 2;
  *(v2 + 24) = "money";
  *(v2 + 32) = 5;
  *(v2 + 40) = 2;
  *(v2 + 48) = "points";
  *(v2 + 56) = 6;
  *(v2 + 64) = 2;
  *(v2 + 72) = "unknown";
  *(v2 + 80) = 7;
  *(v2 + 88) = 2;
  _finalizeUninitializedArray<A>(_:)();
  v7 = _findStringSwitchCase(cases:string:)(v1, rawValue);

  switch(v7)
  {
    case 0:
      v5.value = SiriPaymentsIntents_Constants_PaymentAccountBalanceType_miles;
LABEL_10:

      return v5;
    case 1:
      v5.value = SiriPaymentsIntents_Constants_PaymentAccountBalanceType_money;
      goto LABEL_10;
    case 2:
      v5.value = SiriPaymentsIntents_Constants_PaymentAccountBalanceType_points;
      goto LABEL_10;
    case 3:
      v5.value = SiriPaymentsIntents_Constants_PaymentAccountBalanceType_unknown;
      goto LABEL_10;
  }

  return 4;
}

uint64_t static Constants.PaymentAccountBalanceType.allCases.getter()
{
  result = _allocateUninitializedArray<A>(_:)();
  *v1 = 0;
  v1[1] = 1;
  v1[2] = 2;
  v1[3] = 3;
  _finalizeUninitializedArray<A>(_:)();
  return result;
}

SiriPaymentsIntents::Constants::PaymentAccountBalanceType_optional protocol witness for RawRepresentable.init(rawValue:) in conformance Constants.PaymentAccountBalanceType@<W0>(Swift::String *a1@<X0>, SiriPaymentsIntents::Constants::PaymentAccountBalanceType_optional *a2@<X8>)
{
  result.value = Constants.PaymentAccountBalanceType.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance Constants.PaymentAccountBalanceType@<X0>(uint64_t *a1@<X8>)
{
  result = Constants.PaymentAccountBalanceType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance Constants.PaymentAccountBalanceType@<X0>(uint64_t *a1@<X8>)
{
  result = static Constants.PaymentAccountBalanceType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t static Constants.IntentTypeCATCode.from(_:)()
{
  type metadata accessor for INRequestPaymentIntent();
  if (swift_dynamicCastMetatype())
  {
    return 0;
  }

  else
  {
    type metadata accessor for INSendPaymentIntent();
    if (swift_dynamicCastMetatype())
    {
      return 1;
    }

    else
    {
      type metadata accessor for INSearchForAccountsIntent();
      if (swift_dynamicCastMetatype())
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

SiriPaymentsIntents::Constants::IntentTypeCATCode_optional __swiftcall Constants.IntentTypeCATCode.init(rawValue:)(Swift::String rawValue)
{
  v1 = _allocateUninitializedArray<A>(_:)();
  *v2 = "request";
  *(v2 + 8) = 7;
  *(v2 + 16) = 2;
  *(v2 + 24) = "send";
  *(v2 + 32) = 4;
  *(v2 + 40) = 2;
  *(v2 + 48) = "search";
  *(v2 + 56) = 6;
  *(v2 + 64) = 2;
  _finalizeUninitializedArray<A>(_:)();
  v7 = _findStringSwitchCase(cases:string:)(v1, rawValue);

  switch(v7)
  {
    case 0:
      v5.value = SiriPaymentsIntents_Constants_IntentTypeCATCode_request;
LABEL_8:

      return v5;
    case 1:
      v5.value = SiriPaymentsIntents_Constants_IntentTypeCATCode_send;
      goto LABEL_8;
    case 2:
      v5.value = SiriPaymentsIntents_Constants_IntentTypeCATCode_search;
      goto LABEL_8;
  }

  return 3;
}

uint64_t static Constants.IntentTypeCATCode.allCases.getter()
{
  result = _allocateUninitializedArray<A>(_:)();
  *v1 = 0;
  v1[1] = 1;
  v1[2] = 2;
  _finalizeUninitializedArray<A>(_:)();
  return result;
}

SiriPaymentsIntents::UsoIdentifierNamespace_optional __swiftcall UsoIdentifierNamespace.init(rawValue:)(Swift::String rawValue)
{
  v1 = _allocateUninitializedArray<A>(_:)();
  *v2 = "item_id";
  *(v2 + 8) = 7;
  *(v2 + 16) = 2;
  *(v2 + 24) = "personRelationship";
  *(v2 + 32) = 18;
  *(v2 + 40) = 2;
  *(v2 + 48) = "phoneType";
  *(v2 + 56) = 9;
  *(v2 + 64) = 2;
  *(v2 + 72) = "emailType";
  *(v2 + 80) = 9;
  *(v2 + 88) = 2;
  *(v2 + 96) = "contactAttributes";
  *(v2 + 104) = 17;
  *(v2 + 112) = 2;
  *(v2 + 120) = "contactType";
  *(v2 + 128) = 11;
  *(v2 + 136) = 2;
  *(v2 + 144) = "name";
  *(v2 + 152) = 4;
  *(v2 + 160) = 2;
  _finalizeUninitializedArray<A>(_:)();
  v7 = _findStringSwitchCase(cases:string:)(v1, rawValue);

  switch(v7)
  {
    case 0:
      v5.value = SiriPaymentsIntents_UsoIdentifierNamespace_itemId;
LABEL_16:

      return v5;
    case 1:
      v5.value = SiriPaymentsIntents_UsoIdentifierNamespace_personRelationship;
      goto LABEL_16;
    case 2:
      v5.value = SiriPaymentsIntents_UsoIdentifierNamespace_phoneType;
      goto LABEL_16;
    case 3:
      v5.value = SiriPaymentsIntents_UsoIdentifierNamespace_emailType;
      goto LABEL_16;
    case 4:
      v5.value = SiriPaymentsIntents_UsoIdentifierNamespace_contactAttributes;
      goto LABEL_16;
    case 5:
      v5.value = SiriPaymentsIntents_UsoIdentifierNamespace_contactType;
      goto LABEL_16;
    case 6:
      v5.value = SiriPaymentsIntents_UsoIdentifierNamespace_name;
      goto LABEL_16;
  }

  return 7;
}

SiriPaymentsIntents::Constants::IntentTypeCATCode_optional protocol witness for RawRepresentable.init(rawValue:) in conformance Constants.IntentTypeCATCode@<W0>(Swift::String *a1@<X0>, SiriPaymentsIntents::Constants::IntentTypeCATCode_optional *a2@<X8>)
{
  result.value = Constants.IntentTypeCATCode.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance Constants.IntentTypeCATCode@<X0>(uint64_t *a1@<X8>)
{
  result = Constants.IntentTypeCATCode.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance Constants.IntentTypeCATCode@<X0>(uint64_t *a1@<X8>)
{
  result = static Constants.IntentTypeCATCode.allCases.getter();
  *a1 = result;
  return result;
}

SiriPaymentsIntents::UsoIdentifierNamespace_optional protocol witness for RawRepresentable.init(rawValue:) in conformance UsoIdentifierNamespace@<W0>(Swift::String *a1@<X0>, SiriPaymentsIntents::UsoIdentifierNamespace_optional *a2@<X8>)
{
  result.value = UsoIdentifierNamespace.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance UsoIdentifierNamespace@<X0>(uint64_t *a1@<X8>)
{
  result = UsoIdentifierNamespace.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_268847E04()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268847E44()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type Constants.DirectInvocationPayloadKeys and conformance Constants.DirectInvocationPayloadKeys()
{
  v2 = lazy protocol witness table cache variable for type Constants.DirectInvocationPayloadKeys and conformance Constants.DirectInvocationPayloadKeys;
  if (!lazy protocol witness table cache variable for type Constants.DirectInvocationPayloadKeys and conformance Constants.DirectInvocationPayloadKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Constants.DirectInvocationPayloadKeys and conformance Constants.DirectInvocationPayloadKeys);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type Constants.DirectInvocationPayloadKeys and conformance Constants.DirectInvocationPayloadKeys;
  if (!lazy protocol witness table cache variable for type Constants.DirectInvocationPayloadKeys and conformance Constants.DirectInvocationPayloadKeys)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Constants.DirectInvocationPayloadKeys and conformance Constants.DirectInvocationPayloadKeys);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type Constants.DirectInvocationPayloadIdentifiers and conformance Constants.DirectInvocationPayloadIdentifiers()
{
  v2 = lazy protocol witness table cache variable for type Constants.DirectInvocationPayloadIdentifiers and conformance Constants.DirectInvocationPayloadIdentifiers;
  if (!lazy protocol witness table cache variable for type Constants.DirectInvocationPayloadIdentifiers and conformance Constants.DirectInvocationPayloadIdentifiers)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Constants.DirectInvocationPayloadIdentifiers and conformance Constants.DirectInvocationPayloadIdentifiers);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type Constants.DirectInvocationPayloadIdentifiers and conformance Constants.DirectInvocationPayloadIdentifiers;
  if (!lazy protocol witness table cache variable for type Constants.DirectInvocationPayloadIdentifiers and conformance Constants.DirectInvocationPayloadIdentifiers)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Constants.DirectInvocationPayloadIdentifiers and conformance Constants.DirectInvocationPayloadIdentifiers);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type Constants.DirectInvocationButtonType and conformance Constants.DirectInvocationButtonType()
{
  v2 = lazy protocol witness table cache variable for type Constants.DirectInvocationButtonType and conformance Constants.DirectInvocationButtonType;
  if (!lazy protocol witness table cache variable for type Constants.DirectInvocationButtonType and conformance Constants.DirectInvocationButtonType)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Constants.DirectInvocationButtonType and conformance Constants.DirectInvocationButtonType);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type Constants.DirectInvocationButtonType and conformance Constants.DirectInvocationButtonType;
  if (!lazy protocol witness table cache variable for type Constants.DirectInvocationButtonType and conformance Constants.DirectInvocationButtonType)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Constants.DirectInvocationButtonType and conformance Constants.DirectInvocationButtonType);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type Constants.PaymentAccountBalanceType and conformance Constants.PaymentAccountBalanceType()
{
  v2 = lazy protocol witness table cache variable for type Constants.PaymentAccountBalanceType and conformance Constants.PaymentAccountBalanceType;
  if (!lazy protocol witness table cache variable for type Constants.PaymentAccountBalanceType and conformance Constants.PaymentAccountBalanceType)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Constants.PaymentAccountBalanceType and conformance Constants.PaymentAccountBalanceType);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type Constants.PaymentAccountBalanceType and conformance Constants.PaymentAccountBalanceType;
  if (!lazy protocol witness table cache variable for type Constants.PaymentAccountBalanceType and conformance Constants.PaymentAccountBalanceType)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Constants.PaymentAccountBalanceType and conformance Constants.PaymentAccountBalanceType);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type UsoIdentifierNamespace and conformance UsoIdentifierNamespace()
{
  v2 = lazy protocol witness table cache variable for type UsoIdentifierNamespace and conformance UsoIdentifierNamespace;
  if (!lazy protocol witness table cache variable for type UsoIdentifierNamespace and conformance UsoIdentifierNamespace)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type UsoIdentifierNamespace and conformance UsoIdentifierNamespace);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type UsoIdentifierNamespace and conformance UsoIdentifierNamespace;
  if (!lazy protocol witness table cache variable for type UsoIdentifierNamespace and conformance UsoIdentifierNamespace)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type UsoIdentifierNamespace and conformance UsoIdentifierNamespace);
    return WitnessTable;
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for Constants.PaymentAccountType(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xF7)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 8) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 247;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 9;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Constants.PaymentAccountType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xF7)
  {
    v5 = ((a3 + 8) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xF7)
  {
    v4 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [Constants.IntentTypeCATCode] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [Constants.IntentTypeCATCode] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Constants.IntentTypeCATCode] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19SiriPaymentsIntents9ConstantsO17IntentTypeCATCodeOGMd, &_sSay19SiriPaymentsIntents9ConstantsO17IntentTypeCATCodeOGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [Constants.IntentTypeCATCode] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [Constants.PaymentAccountBalanceType] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [Constants.PaymentAccountBalanceType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Constants.PaymentAccountBalanceType] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19SiriPaymentsIntents9ConstantsO25PaymentAccountBalanceTypeOGMd, &_sSay19SiriPaymentsIntents9ConstantsO25PaymentAccountBalanceTypeOGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [Constants.PaymentAccountBalanceType] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [Constants.DirectInvocationButtonType] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [Constants.DirectInvocationButtonType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Constants.DirectInvocationButtonType] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19SiriPaymentsIntents9ConstantsO26DirectInvocationButtonTypeOGMd, &_sSay19SiriPaymentsIntents9ConstantsO26DirectInvocationButtonTypeOGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [Constants.DirectInvocationButtonType] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [Constants.DirectInvocationPayloadIdentifiers] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [Constants.DirectInvocationPayloadIdentifiers] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Constants.DirectInvocationPayloadIdentifiers] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19SiriPaymentsIntents9ConstantsO34DirectInvocationPayloadIdentifiersOGMd, &_sSay19SiriPaymentsIntents9ConstantsO34DirectInvocationPayloadIdentifiersOGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [Constants.DirectInvocationPayloadIdentifiers] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [Constants.DirectInvocationPayloadKeys] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [Constants.DirectInvocationPayloadKeys] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Constants.DirectInvocationPayloadKeys] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19SiriPaymentsIntents9ConstantsO27DirectInvocationPayloadKeysOGMd, &_sSay19SiriPaymentsIntents9ConstantsO27DirectInvocationPayloadKeysOGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [Constants.DirectInvocationPayloadKeys] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [Constants.PaymentAccountType] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [Constants.PaymentAccountType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Constants.PaymentAccountType] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19SiriPaymentsIntents9ConstantsO18PaymentAccountTypeOGMd, &_sSay19SiriPaymentsIntents9ConstantsO18PaymentAccountTypeOGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [Constants.PaymentAccountType] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [Constants.NLPaymentConfirmationValue] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [Constants.NLPaymentConfirmationValue] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Constants.NLPaymentConfirmationValue] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19SiriPaymentsIntents9ConstantsO26NLPaymentConfirmationValueOGMd, &_sSay19SiriPaymentsIntents9ConstantsO26NLPaymentConfirmationValueOGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [Constants.NLPaymentConfirmationValue] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t SearchForAccountsHandleIntentStrategy.__allocating_init()()
{
  v38 = 0;
  v36 = 0;
  v16 = 0;
  v7 = (*(*(type metadata accessor for CATOption() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v13 = &v6 - v7;
  v12 = type metadata accessor for Globals();
  v8 = v42;
  default argument 0 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)(v42);
  v9 = &v41;
  default argument 1 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v10 = &v40;
  default argument 2 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v11 = &v39;
  default argument 3 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v0 = Globals.__allocating_init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)(v8, v9, v10, v11);
  v28 = &v43;
  v44 = v12;
  v45 = &protocol witness table for Globals;
  v43 = v0;
  type metadata accessor for SearchForAccountsCATs();
  default argument 0 of CATWrapper.init(options:globals:)();
  v27 = CATWrapper.__allocating_init(options:globals:)();
  v38 = v27;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriPaymentsIntents0B21ErrorTemplateProviderCySo25INSearchForAccountsIntentCSo0ghiJ8ResponseCGMd, &_s19SiriPaymentsIntents0B21ErrorTemplateProviderCySo25INSearchForAccountsIntentCSo0ghiJ8ResponseCGMR);
  v14 = v37;
  outlined init with copy of GlobalsProviding(v28, v37);
  type metadata accessor for PaymentsBaseCATs();
  default argument 0 of CATWrapper.init(options:globals:)();
  v15 = CATWrapper.__allocating_init(options:globals:)();

  v26 = PaymentsErrorTemplateProvider.__allocating_init(globals:catFamily:searchForAccountsCATs:)(v14, v15, v27);
  v36 = v26;
  v25 = v35;
  outlined init with copy of GlobalsProviding(v28, v35);

  NSJSONWritingOptions.init(rawValue:)(v1);
  v20 = v34;
  v34[3] = &type metadata for CommonLabelsProvider;
  v34[4] = &protocol witness table for CommonLabelsProvider;
  v2 = type metadata accessor for SiriKitContactResolver();
  v21 = v33;
  v33[3] = v2;
  v33[4] = &protocol witness table for SiriKitContactResolver;
  __swift_allocate_boxed_opaque_existential_1(v33);
  SiriKitContactResolver.init()();

  v22 = &v32;
  v32 = v26;

  v18 = v44;
  v17 = v45;
  __swift_project_boxed_opaque_existential_1(v28, v44);
  v3 = v17[2];
  v19 = &v30;
  v3(v18);
  v23 = v31;
  v31[3] = &type metadata for SearchForAccountsViewBuilder;
  v31[4] = &protocol witness table for SearchForAccountsViewBuilder;
  v31[0] = swift_allocObject();
  SearchForAccountsViewBuilder.init(catFamily:deviceState:)(v27, v19, (v31[0] + 16));
  v4 = lazy protocol witness table accessor for type PaymentsErrorTemplateProvider<INSearchForAccountsIntent, INSearchForAccountsIntentResponse> and conformance PaymentsErrorTemplateProvider<A, B>();
  v29 = SearchForAccountsHandleIntentStrategy.__allocating_init<A>(globals:catFamily:commonLabelsProvider:contactResolver:errorProvider:viewBuilder:)(v25, v27, v20, v21, v22, v23, v24, v4);

  v46 = v29;

  __swift_destroy_boxed_opaque_existential_0(v28);

  return v29;
}

uint64_t SearchForAccountsHandleIntentStrategy.init<A>(globals:catFamily:commonLabelsProvider:contactResolver:errorProvider:viewBuilder:)(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v32 = a1;
  v31 = a2;
  v30 = a3;
  v29 = a4;
  v27 = a5;
  v24 = a6;
  v28 = a7;
  v22 = a8;
  v44 = 0;
  v43 = 0;
  v42 = 0;
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v38 = 0;
  v45 = a7;
  v25 = *(a7 - 8);
  v26 = a7 - 8;
  v16 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x28223BE20](a6);
  v21 = &v16 - v16;
  v43 = v10;
  v42 = v11;
  v41 = v12;
  v40 = v13;
  v39 = v14;
  v38 = v9;
  v44 = v8;
  v17 = v8;
  v18 = v37;
  outlined init with copy of GlobalsProviding(v9, v37);
  outlined init with take of CommonLabelsProviding(v18, (v17 + 184));
  v23 = v36;
  outlined init with copy of GlobalsProviding(v32, v36);

  v19 = v35;
  outlined init with copy of GlobalsProviding(v30, v35);
  v20 = v34;
  outlined init with copy of GlobalsProviding(v29, v34);
  (*(v25 + 16))(v21, v27, v28);
  v33 = BaseStrategy.init<A>(globals:catFamily:commonLabelsProvider:contactResolver:errorProvider:)(v23, v31, v19, v20, v21, v28, v22);

  v44 = v33;
  __swift_destroy_boxed_opaque_existential_0(v24);
  (*(v25 + 8))(v27, v28);
  __swift_destroy_boxed_opaque_existential_0(v29);
  __swift_destroy_boxed_opaque_existential_0(v30);

  __swift_destroy_boxed_opaque_existential_0(v32);

  return v33;
}

uint64_t SearchForAccountsHandleIntentStrategy.makeIntentExecutionBehavior(app:intent:)(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[6] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v3[5] = 0;
  v4 = type metadata accessor for Logger();
  v3[8] = v4;
  v8 = *(v4 - 8);
  v3[9] = v8;
  v5 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[3] = a1;
  v3[4] = a2;
  v3[5] = v2;
  v6 = v3[2];

  return MEMORY[0x2822009F8](SearchForAccountsHandleIntentStrategy.makeIntentExecutionBehavior(app:intent:), 0);
}

uint64_t SearchForAccountsHandleIntentStrategy.makeIntentExecutionBehavior(app:intent:)()
{
  v37 = v0;
  v1 = v0[10];
  v16 = v0[9];
  v17 = v0[8];
  v18 = v0[7];
  v19 = v0[6];
  v0[2] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  (*(v16 + 16))(v1, v2, v17);

  MEMORY[0x277D82BE0](v18);
  v21 = swift_allocObject();
  *(v21 + 16) = v18;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();
  v23 = swift_allocObject();
  *(v23 + 16) = 32;
  v24 = swift_allocObject();
  *(v24 + 16) = 8;
  v20 = swift_allocObject();
  *(v20 + 16) = partial apply for implicit closure #8 in PaymentsAppResolutionFlowStrategy.resolveApp(input:);
  *(v20 + 24) = v19;
  v25 = swift_allocObject();
  *(v25 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v25 + 24) = v20;
  v26 = swift_allocObject();
  *(v26 + 16) = 32;
  v27 = swift_allocObject();
  *(v27 + 16) = 8;
  v22 = swift_allocObject();
  *(v22 + 16) = partial apply for implicit closure #5 in closure #1 in static Transformer<>.transformer(previousIntent:);
  *(v22 + 24) = v21;
  v28 = swift_allocObject();
  *(v28 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v28 + 24) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v29 = v3;

  *v29 = partial apply for closure #1 in OSLogArguments.append(_:);
  v29[1] = v23;

  v29[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v29[3] = v24;

  v29[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v29[5] = v25;

  v29[6] = partial apply for closure #1 in OSLogArguments.append(_:);
  v29[7] = v26;

  v29[8] = partial apply for closure #1 in OSLogArguments.append(_:);
  v29[9] = v27;

  v29[10] = partial apply for closure #1 in OSLogArguments.append(_:);
  v29[11] = v28;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v30, v31))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v13 = createStorage<A>(capacity:type:)(0);
    v14 = createStorage<A>(capacity:type:)(2);
    v32 = buf;
    v33 = v13;
    v34 = v14;
    serialize(_:at:)(2, &v32);
    serialize(_:at:)(2, &v32);
    v35 = partial apply for closure #1 in OSLogArguments.append(_:);
    v36 = v23;
    closure #1 in osLogInternal(_:log:type:)(&v35, &v32, &v33, &v34);
    v35 = partial apply for closure #1 in OSLogArguments.append(_:);
    v36 = v24;
    closure #1 in osLogInternal(_:log:type:)(&v35, &v32, &v33, &v34);
    v35 = partial apply for closure #1 in OSLogArguments.append(_:);
    v36 = v25;
    closure #1 in osLogInternal(_:log:type:)(&v35, &v32, &v33, &v34);
    v35 = partial apply for closure #1 in OSLogArguments.append(_:);
    v36 = v26;
    closure #1 in osLogInternal(_:log:type:)(&v35, &v32, &v33, &v34);
    v35 = partial apply for closure #1 in OSLogArguments.append(_:);
    v36 = v27;
    closure #1 in osLogInternal(_:log:type:)(&v35, &v32, &v33, &v34);
    v35 = partial apply for closure #1 in OSLogArguments.append(_:);
    v36 = v28;
    closure #1 in osLogInternal(_:log:type:)(&v35, &v32, &v33, &v34);
    _os_log_impl(&dword_2686B1000, v30, v31, "#SearchForAccountsHandleIntentStrategy makeIntentExecutionBehavior app: %s, intent: %s", buf, 0x16u);
    destroyStorage<A>(_:count:)(v13, 0, v11);
    destroyStorage<A>(_:count:)(v14, 2, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v9 = v15[10];
  v8 = v15[8];
  v7 = v15[9];
  MEMORY[0x277D82BD8](v30);
  (*(v7 + 8))(v9, v8);
  type metadata accessor for SiriKitIntentExecutionBehavior();
  v10 = static SiriKitIntentExecutionBehavior.standard()();

  v4 = *(v15[2] + 8);
  v5 = v15[2];

  return v4(v10);
}

uint64_t SearchForAccountsHandleIntentStrategy.makeIntentHandledResponse(rchRecord:)(uint64_t a1, uint64_t a2)
{
  v3[72] = v2;
  v3[71] = a2;
  v3[70] = a1;
  v3[59] = v3;
  v3[60] = 0;
  v3[61] = 0;
  v3[62] = 0;
  v3[67] = 0;
  v3[68] = 0;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR) - 8) + 64) + 15;
  v3[73] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64) + 15;
  v3[74] = swift_task_alloc();
  v6 = type metadata accessor for TemplatingResult();
  v3[75] = v6;
  v12 = *(v6 - 8);
  v3[76] = v12;
  v13 = *(v12 + 64);
  v3[77] = swift_task_alloc();
  v3[78] = swift_task_alloc();
  v3[79] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo019INSearchForAccountsD0CSo0ghiD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo019INSearchForAccountsD0CSo0ghiD8ResponseCGMR);
  v3[80] = v7;
  v14 = *(v7 - 8);
  v3[81] = v14;
  v3[82] = *(v14 + 64);
  v3[83] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v3[84] = v8;
  v15 = *(v8 - 8);
  v3[85] = v15;
  v16 = *(v15 + 64);
  v3[86] = swift_task_alloc();
  v3[87] = swift_task_alloc();
  v3[88] = swift_task_alloc();
  v9 = *(*(type metadata accessor for Signpost.OpenSignpost() - 8) + 64) + 15;
  v3[89] = swift_task_alloc();
  v3[60] = a2;
  v3[61] = v2;
  v10 = v3[59];

  return MEMORY[0x2822009F8](SearchForAccountsHandleIntentStrategy.makeIntentHandledResponse(rchRecord:), 0);
}

uint64_t SearchForAccountsHandleIntentStrategy.makeIntentHandledResponse(rchRecord:)()
{
  v107 = v0;
  v79 = v0[89];
  v1 = v0[88];
  v80 = v0[85];
  v81 = v0[84];
  v87 = v0[83];
  v84 = v0[82];
  v85 = v0[81];
  v88 = v0[80];
  v83 = v0[71];
  v0[59] = v0;
  v2 = SignpostName.searchForAccountHandleIntent.unsafeMutableAddressor();
  static Signpost.begin(_:)(*v2, v2[1], *(v2 + 16), v79);
  v3 = Logger.payments.unsafeMutableAddressor();
  v82 = *(v80 + 16);
  v82(v1, v3, v81);
  (*(v85 + 16))(v87, v83, v88);
  v86 = (*(v85 + 80) + 16) & ~*(v85 + 80);
  v89 = swift_allocObject();
  (*(v85 + 32))(v89 + v86, v87, v88);
  v95 = Logger.logObject.getter();
  v96 = static os_log_type_t.debug.getter();
  v91 = swift_allocObject();
  *(v91 + 16) = 32;
  v92 = swift_allocObject();
  *(v92 + 16) = 8;
  v90 = swift_allocObject();
  *(v90 + 16) = partial apply for implicit closure #1 in SearchForAccountsHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
  *(v90 + 24) = v89;
  v93 = swift_allocObject();
  *(v93 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v93 + 24) = v90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v94 = v4;

  *v94 = partial apply for closure #1 in OSLogArguments.append(_:);
  v94[1] = v91;

  v94[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v94[3] = v92;

  v94[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v94[5] = v93;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v95, v96))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v76 = createStorage<A>(capacity:type:)(0);
    v77 = createStorage<A>(capacity:type:)(1);
    v102 = buf;
    v103 = v76;
    v104 = v77;
    serialize(_:at:)(2, &v102);
    serialize(_:at:)(1, &v102);
    v105 = partial apply for closure #1 in OSLogArguments.append(_:);
    v106 = v91;
    closure #1 in osLogInternal(_:log:type:)(&v105, &v102, &v103, &v104);
    v105 = partial apply for closure #1 in OSLogArguments.append(_:);
    v106 = v92;
    closure #1 in osLogInternal(_:log:type:)(&v105, &v102, &v103, &v104);
    v105 = partial apply for closure #1 in OSLogArguments.append(_:);
    v106 = v93;
    closure #1 in osLogInternal(_:log:type:)(&v105, &v102, &v103, &v104);
    _os_log_impl(&dword_2686B1000, v95, v96, "#SearchForAccountsHandleIntentStrategy makeIntentHandledResponse response: %s", buf, 0xCu);
    destroyStorage<A>(_:count:)(v76, 0, v74);
    destroyStorage<A>(_:count:)(v77, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v68 = *(v78 + 704);
  v69 = *(v78 + 672);
  v71 = *(v78 + 640);
  v5 = *(v78 + 568);
  v67 = *(v78 + 680);
  MEMORY[0x277D82BD8](v95);
  v70 = *(v67 + 8);
  v70(v68, v69);
  v72 = IntentResolutionRecord.intentResponse.getter();
  v73 = [v72 code];
  *(v78 + 496) = v73;
  MEMORY[0x277D82BD8](v72);
  if (v73 == 3)
  {
    v6 = *(v78 + 640);
    v7 = *(v78 + 568);
    v65 = IntentResolutionRecord.intentResponse.getter();
    v66 = [v65 accounts];
    if (v66)
    {
      type metadata accessor for INPaymentAccount();
      v63 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      MEMORY[0x277D82BD8](v66);
      v64 = v63;
    }

    else
    {
      v64 = 0;
    }

    MEMORY[0x277D82BD8](v65);
    v62 = Optional<A>.emptyToNil.getter(v64);
    *(v78 + 720) = v62;
    if (v62)
    {
      v8 = *(v78 + 696);
      v52 = *(v78 + 672);
      *(v78 + 536) = v62;

      v9 = Logger.payments.unsafeMutableAddressor();
      v82(v8, v9, v52);

      v53 = swift_allocObject();
      *(v53 + 16) = v62;

      v54 = swift_allocObject();
      *(v54 + 16) = partial apply for implicit closure #1 in SearchForAccountsViewBuilder.buildWatchSnippets(for:app:intent:);
      *(v54 + 24) = v53;

      oslog = Logger.logObject.getter();
      v61 = static os_log_type_t.debug.getter();
      v56 = swift_allocObject();
      *(v56 + 16) = 32;
      v57 = swift_allocObject();
      *(v57 + 16) = 8;
      v55 = swift_allocObject();
      *(v55 + 16) = _s2os18OSLogInterpolationV06appendC0_5align7privacyyxyXA_AA0B15StringAlignmentVAA0B7PrivacyVts06CustomG11ConvertibleRzlFSSycfu_TA_1;
      *(v55 + 24) = v54;
      v58 = swift_allocObject();
      *(v58 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v58 + 24) = v55;
      _allocateUninitializedArray<A>(_:)();
      v59 = v10;

      *v59 = partial apply for closure #1 in OSLogArguments.append(_:);
      v59[1] = v56;

      v59[2] = partial apply for closure #1 in OSLogArguments.append(_:);
      v59[3] = v57;

      v59[4] = partial apply for closure #1 in OSLogArguments.append(_:);
      v59[5] = v58;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(oslog, v61))
      {
        v49 = static UnsafeMutablePointer.allocate(capacity:)();
        v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v50 = createStorage<A>(capacity:type:)(0);
        v51 = createStorage<A>(capacity:type:)(1);
        v97 = v49;
        v98 = v50;
        v99 = v51;
        serialize(_:at:)(2, &v97);
        serialize(_:at:)(1, &v97);
        v100 = partial apply for closure #1 in OSLogArguments.append(_:);
        v101 = v56;
        closure #1 in osLogInternal(_:log:type:)(&v100, &v97, &v98, &v99);
        v100 = partial apply for closure #1 in OSLogArguments.append(_:);
        v101 = v57;
        closure #1 in osLogInternal(_:log:type:)(&v100, &v97, &v98, &v99);
        v100 = partial apply for closure #1 in OSLogArguments.append(_:);
        v101 = v58;
        closure #1 in osLogInternal(_:log:type:)(&v100, &v97, &v98, &v99);
        _os_log_impl(&dword_2686B1000, oslog, v61, "#SearchForAccountsHandleIntentStrategy intent contained accounts: %s", v49, 0xCu);
        destroyStorage<A>(_:count:)(v50, 0, v48);
        destroyStorage<A>(_:count:)(v51, 1, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v49, MEMORY[0x277D84B78]);
      }

      else
      {
      }

      v42 = *(v78 + 696);
      v43 = *(v78 + 672);
      v45 = *(v78 + 640);
      v44 = *(v78 + 576);
      v11 = *(v78 + 568);
      MEMORY[0x277D82BD8](oslog);
      v70(v42, v43);

      *(v78 + 728) = *(v44 + 16);

      IntentResolutionRecord.app.getter();
      v46 = App.sirikitApp.getter();
      *(v78 + 736) = v46;

      *(v78 + 744) = type metadata accessor for INPaymentAccount();
      v47 = MEMORY[0x26D620910](v62);
      v12 = swift_task_alloc();
      *(v78 + 752) = v12;
      *v12 = *(v78 + 472);
      v12[1] = SearchForAccountsHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
      v13 = *(v78 + 632);

      return SearchForAccountsCATs.intentHandledResponse(app:bankAccounts:)(v13, v46, *&v47, 0);
    }

    else
    {
      v15 = *(v78 + 688);
      v38 = *(v78 + 672);

      v16 = Logger.payments.unsafeMutableAddressor();
      v82(v15, v16, v38);
      log = Logger.logObject.getter();
      v39 = static os_log_type_t.debug.getter();
      v41 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(log, v39))
      {
        v34 = static UnsafeMutablePointer.allocate(capacity:)();
        v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v35 = createStorage<A>(capacity:type:)(0);
        v36 = createStorage<A>(capacity:type:)(0);
        *(v78 + 504) = v34;
        *(v78 + 512) = v35;
        *(v78 + 520) = v36;
        serialize(_:at:)(0, (v78 + 504));
        serialize(_:at:)(0, (v78 + 504));
        *(v78 + 528) = v41;
        v37 = swift_task_alloc();
        v37[2] = v78 + 504;
        v37[3] = v78 + 512;
        v37[4] = v78 + 520;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();

        _os_log_impl(&dword_2686B1000, log, v39, "#SearchForAccountsHandleIntentStrategy could not find accounts in the intent", v34, 2u);
        destroyStorage<A>(_:count:)(v35, 0, v33);
        destroyStorage<A>(_:count:)(v36, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v34, MEMORY[0x277D84B78]);
      }

      v28 = *(v78 + 688);
      v29 = *(v78 + 672);
      v31 = *(v78 + 640);
      v30 = *(v78 + 576);
      v17 = *(v78 + 568);
      MEMORY[0x277D82BD8](log);
      v70(v28, v29);

      *(v78 + 808) = *(v30 + 16);

      IntentResolutionRecord.app.getter();
      v32 = App.sirikitApp.getter();
      *(v78 + 816) = v32;

      v18 = swift_task_alloc();
      *(v78 + 824) = v18;
      *v18 = *(v78 + 472);
      v18[1] = SearchForAccountsHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
      v19 = *(v78 + 624);

      return SearchForAccountsCATs.noResultsResponse(app:)(v19, v32);
    }
  }

  else
  {
    v24 = *(v78 + 576);

    outlined init with copy of GlobalsProviding(v24 + 144, v78 + 16);

    v25 = *(v78 + 40);
    v26 = *(v78 + 48);
    __swift_project_boxed_opaque_existential_1((v78 + 16), v25);
    v27 = (*(v26 + 48) + **(v26 + 48));
    v20 = *(*(v26 + 48) + 4);
    v21 = swift_task_alloc();
    *(v78 + 840) = v21;
    *v21 = *(v78 + 472);
    v21[1] = SearchForAccountsHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
    v22 = *(v78 + 584);
    v23 = *(v78 + 568);

    return v27(v22, v23, v25, v26);
  }
}

{
  v11 = *v1;
  v9 = *v1 + 16;
  v10 = (v11 + 472);
  v2 = *(*v1 + 752);
  *(v11 + 472) = *v1;
  *(v11 + 760) = v0;

  if (v0)
  {
    v6 = *v10;
    v5 = SearchForAccountsHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
  }

  else
  {
    v3 = *(v9 + 720);
    v8 = *(v9 + 712);

    v4 = *v10;
    v5 = SearchForAccountsHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
  }

  return MEMORY[0x2822009F8](v5, 0);
}

{
  v13 = v0[90];
  v6 = v0[80];
  v1 = v0[72];
  v5 = v0[71];
  v0[59] = v0;
  outlined init with copy of GlobalsProviding(v1 + 184, (v0 + 37));
  v10 = v0[40];
  v11 = v0[41];
  __swift_project_boxed_opaque_existential_1(v0 + 37, v10);
  v8 = IntentResolutionRecord.app.getter();
  v0[96] = v8;
  v9 = IntentResolutionRecord.intent.getter();
  v0[97] = v9;
  v12 = (*(v11 + 8) + **(v11 + 8));
  v2 = *(*(v11 + 8) + 4);
  v3 = swift_task_alloc();
  *(v7 + 784) = v3;
  *v3 = *(v7 + 472);
  v3[1] = SearchForAccountsHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);

  return v12(v13, v8, v9, v10, v11);
}

{
  v1 = v0[99];
  v9 = v0[93];
  v18 = v0[90];
  v19 = v0[89];
  v16 = v0[79];
  v15 = v0[76];
  v17 = v0[75];
  v14 = v0[74];
  v10 = v0[72];
  v13 = v0[70];
  v0[59] = v0;
  v0[68] = v1;
  __swift_destroy_boxed_opaque_existential_0(v0 + 37);

  outlined init with copy of GlobalsProviding(v10 + 104, (v0 + 42));

  v8 = v0[45];
  v7 = v0[46];
  __swift_project_boxed_opaque_existential_1(v0 + 42, v8);
  (*(v7 + 16))(v8);

  BaseStrategy.ttsEnabled.getter();

  Array.subscript.getter();
  v12 = v0[69];

  v11 = BaseStrategy.ttsEnabled.getter();

  static PaymentsContextProvider.handleSearchForAccounts(account:needsSDA:)(v12, v11 & 1, v14);
  MEMORY[0x277D82BD8](v12);
  v2 = type metadata accessor for NLContextUpdate();
  (*(*(v2 - 8) + 56))(v14, 0, 1);
  v0[52] = 0;
  v0[53] = 0;
  v0[54] = 0;
  v0[55] = 0;
  v0[56] = 0;
  default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  _swift_stdlib_has_malloc_size();
  default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v13[3] = type metadata accessor for AceOutput();
  v13[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v13);
  static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of FlowActivity?(v0 + 52);
  outlined destroy of NLContextUpdate?(v14);
  __swift_destroy_boxed_opaque_existential_0(v0 + 47);
  __swift_destroy_boxed_opaque_existential_0(v0 + 42);

  (*(v15 + 8))(v16, v17);

  $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
  outlined destroy of Signpost.OpenSignpost(v19);
  v3 = v0[89];
  v20 = v0[88];
  v21 = v0[87];
  v22 = v0[86];
  v23 = v0[83];
  v24 = v0[79];
  v25 = v0[78];
  v26 = v0[77];
  v27 = v0[74];
  v28 = v0[73];

  v4 = *(v0[59] + 8);
  v5 = v0[59];

  return v4();
}

{
  v11 = *v1;
  v9 = *v1 + 16;
  v10 = (v11 + 472);
  v2 = *(*v1 + 824);
  *(v11 + 472) = *v1;
  *(v11 + 832) = v0;

  if (v0)
  {
    v6 = *v10;
    v5 = SearchForAccountsHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
  }

  else
  {
    v3 = *(v9 + 800);
    v8 = *(v9 + 792);

    v4 = *v10;
    v5 = SearchForAccountsHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
  }

  return MEMORY[0x2822009F8](v5, 0);
}

{
  v14 = v0[89];
  v12 = v0[78];
  v11 = v0[76];
  v13 = v0[75];
  v10 = v0[74];
  v8 = v0[72];
  v9 = v0[70];
  v0[59] = v0;

  outlined init with copy of GlobalsProviding(v8 + 104, (v0 + 22));

  v7 = v0[25];
  v6 = v0[26];
  __swift_project_boxed_opaque_existential_1(v0 + 22, v7);
  (*(v6 + 16))(v7);

  BaseStrategy.ttsEnabled.getter();

  v1 = type metadata accessor for NLContextUpdate();
  (*(*(v1 - 8) + 56))(v10, 1);
  v0[32] = 0;
  v0[33] = 0;
  v0[34] = 0;
  v0[35] = 0;
  v0[36] = 0;
  default argument 3 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  _swift_stdlib_has_malloc_size();
  default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v9[3] = type metadata accessor for AceOutput();
  v9[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v9);
  static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of FlowActivity?(v0 + 32);
  outlined destroy of NLContextUpdate?(v10);
  __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  (*(v11 + 8))(v12, v13);
  $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
  outlined destroy of Signpost.OpenSignpost(v14);
  v2 = v0[89];
  v15 = v0[88];
  v16 = v0[87];
  v17 = v0[86];
  v18 = v0[83];
  v19 = v0[79];
  v20 = v0[78];
  v21 = v0[77];
  v22 = v0[74];
  v23 = v0[73];

  v3 = *(v0[59] + 8);
  v4 = v0[59];

  return v3();
}

{
  v8 = *v1;
  v7 = (v8 + 472);
  v2 = *(*v1 + 840);
  *(v8 + 472) = *v1;
  *(v8 + 848) = v0;

  if (v0)
  {
    v5 = *v7;
    v4 = SearchForAccountsHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
  }

  else
  {
    v3 = *v7;
    v4 = SearchForAccountsHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
  }

  return MEMORY[0x2822009F8](v4, 0);
}

{
  v1 = v0[76];
  v2 = v0[75];
  v3 = v0[73];
  v0[59] = v0;
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v21 = v49[89];
    outlined destroy of TemplatingResult?(v49[73]);
    __swift_destroy_boxed_opaque_existential_0(v49 + 2);
    v49[57] = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v49[58] = v9;
    countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](countAndFlagsBits);

    type metadata accessor for INSearchForAccountsIntent();
    DefaultStringInterpolation.appendInterpolation(_:)();
    v11 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](v11);

    v18 = v49[57];
    v17 = v49[58];

    outlined destroy of String.UTF8View((v49 + 57));
    v20 = MEMORY[0x26D620710](v18, v17);
    v19 = v12;
    lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
    swift_allocError();
    *v13 = v20;
    *(v13 + 8) = v19;
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0;
    *(v13 + 40) = 0;
    *(v13 + 48) = 16;
    swift_willThrow();
    $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
    outlined destroy of Signpost.OpenSignpost(v21);
    v14 = v49[89];
    v22 = v49[88];
    v23 = v49[87];
    v24 = v49[86];
    v25 = v49[83];
    v26 = v49[79];
    v27 = v49[78];
    v28 = v49[77];
    v29 = v49[74];
    v30 = v49[73];

    v7 = *(v49[59] + 8);
    v15 = v49[59];
  }

  else
  {
    v39 = v49[89];
    v37 = v49[77];
    v38 = v49[75];
    v35 = v49[74];
    v4 = v49[73];
    v33 = v49[72];
    v34 = v49[70];
    v36 = v49[76];
    (*(v36 + 32))();
    __swift_destroy_boxed_opaque_existential_0(v49 + 2);

    outlined init with copy of GlobalsProviding(v33 + 104, (v49 + 7));

    v32 = v49[10];
    v31 = v49[11];
    __swift_project_boxed_opaque_existential_1(v49 + 7, v32);
    (*(v31 + 16))(v32);

    BaseStrategy.ttsEnabled.getter();

    v5 = type metadata accessor for NLContextUpdate();
    (*(*(v5 - 8) + 56))(v35, 1);
    v49[17] = 0;
    v49[18] = 0;
    v49[19] = 0;
    v49[20] = 0;
    v49[21] = 0;
    default argument 3 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
    default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
    _swift_stdlib_has_malloc_size();
    default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
    v34[3] = type metadata accessor for AceOutput();
    v34[4] = MEMORY[0x277D5C1D8];
    __swift_allocate_boxed_opaque_existential_1(v34);
    static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

    outlined destroy of FlowActivity?(v49 + 17);
    outlined destroy of NLContextUpdate?(v35);
    __swift_destroy_boxed_opaque_existential_0(v49 + 12);
    __swift_destroy_boxed_opaque_existential_0(v49 + 7);
    (*(v36 + 8))(v37, v38);
    $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
    outlined destroy of Signpost.OpenSignpost(v39);
    v6 = v49[89];
    v40 = v49[88];
    v41 = v49[87];
    v42 = v49[86];
    v43 = v49[83];
    v44 = v49[79];
    v45 = v49[78];
    v46 = v49[77];
    v47 = v49[74];
    v48 = v49[73];

    v7 = *(v49[59] + 8);
    v8 = v49[59];
  }

  return v7();
}

{
  v1 = v0[102];
  v7 = v0[101];
  v8 = v0[89];
  v0[59] = v0;

  $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
  outlined destroy of Signpost.OpenSignpost(v8);
  v2 = v0[104];
  v3 = v0[89];
  v9 = v0[88];
  v10 = v0[87];
  v11 = v0[86];
  v12 = v0[83];
  v13 = v0[79];
  v14 = v0[78];
  v15 = v0[77];
  v16 = v0[74];
  v17 = v0[73];

  v4 = *(v0[59] + 8);
  v5 = v0[59];

  return v4();
}

{
  v1 = v0[92];
  v7 = v0[91];
  v8 = v0[90];
  v9 = v0[89];
  v0[59] = v0;

  $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
  outlined destroy of Signpost.OpenSignpost(v9);
  v2 = v0[95];
  v3 = v0[89];
  v10 = v0[88];
  v11 = v0[87];
  v12 = v0[86];
  v13 = v0[83];
  v14 = v0[79];
  v15 = v0[78];
  v16 = v0[77];
  v17 = v0[74];
  v18 = v0[73];

  v4 = *(v0[59] + 8);
  v5 = v0[59];

  return v4();
}

{
  v1 = v0[97];
  v7 = v0[96];
  v11 = v0[90];
  v12 = v0[89];
  v9 = v0[79];
  v8 = v0[76];
  v10 = v0[75];
  v0[59] = v0;
  MEMORY[0x277D82BD8](v1);

  __swift_destroy_boxed_opaque_existential_0(v0 + 37);
  (*(v8 + 8))(v9, v10);

  $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
  outlined destroy of Signpost.OpenSignpost(v12);
  v2 = v0[100];
  v3 = v0[89];
  v13 = v0[88];
  v14 = v0[87];
  v15 = v0[86];
  v16 = v0[83];
  v17 = v0[79];
  v18 = v0[78];
  v19 = v0[77];
  v20 = v0[74];
  v21 = v0[73];

  v4 = *(v0[59] + 8);
  v5 = v0[59];

  return v4();
}

{
  v6 = v0[89];
  v0[59] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  $defer #1 <A, B>() in PaymentsRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)();
  outlined destroy of Signpost.OpenSignpost(v6);
  v1 = v0[106];
  v2 = v0[89];
  v7 = v0[88];
  v8 = v0[87];
  v9 = v0[86];
  v10 = v0[83];
  v11 = v0[79];
  v12 = v0[78];
  v13 = v0[77];
  v14 = v0[74];
  v15 = v0[73];

  v3 = *(v0[59] + 8);
  v4 = v0[59];

  return v3();
}

uint64_t SearchForAccountsHandleIntentStrategy.makeIntentHandledResponse(rchRecord:)(uint64_t a1)
{
  v12 = *v2;
  v10 = *v2 + 16;
  v11 = v12 + 59;
  v4 = *(*v2 + 784);
  v12[59] = *v2;
  v12[99] = a1;
  v12[100] = v1;

  if (v1)
  {
    v7 = *v11;
    v6 = SearchForAccountsHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
  }

  else
  {
    v9 = *(v10 + 752);

    v5 = *v11;
    v6 = SearchForAccountsHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
  }

  return MEMORY[0x2822009F8](v6, 0);
}

uint64_t implicit closure #1 in SearchForAccountsHandleIntentStrategy.makeIntentHandledResponse(rchRecord:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo019INSearchForAccountsD0CSo0ghiD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo019INSearchForAccountsD0CSo0ghiD8ResponseCGMR);
  IntentResolutionRecord.intentResponse.getter();
  type metadata accessor for INSearchForAccountsIntentResponse();
  lazy protocol witness table accessor for type INSearchForAccountsIntentResponse and conformance NSObject();
  return String.init<A>(describing:)();
}

uint64_t SearchForAccountsHandleIntentStrategy.makeFailureHandlingIntentResponse(rchRecord:)(uint64_t a1, uint64_t a2)
{
  v3[7] = v2;
  v3[6] = a2;
  v3[5] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo019INSearchForAccountsD0CSo0ghiD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo019INSearchForAccountsD0CSo0ghiD8ResponseCGMR);
  v3[8] = v4;
  v9 = *(v4 - 8);
  v3[9] = v9;
  v3[10] = *(v9 + 64);
  v3[11] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[12] = v5;
  v10 = *(v5 - 8);
  v3[13] = v10;
  v6 = *(v10 + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[3] = a2;
  v3[4] = v2;
  v7 = v3[2];

  return MEMORY[0x2822009F8](SearchForAccountsHandleIntentStrategy.makeFailureHandlingIntentResponse(rchRecord:), 0);
}

uint64_t SearchForAccountsHandleIntentStrategy.makeFailureHandlingIntentResponse(rchRecord:)()
{
  v38 = v0;
  v1 = v0[14];
  v17 = v0[13];
  v18 = v0[12];
  v23 = v0[11];
  v20 = v0[10];
  v21 = v0[9];
  v24 = v0[8];
  v19 = v0[6];
  v0[2] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  (*(v17 + 16))(v1, v2, v18);
  (*(v21 + 16))(v23, v19, v24);
  v22 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v25 = swift_allocObject();
  (*(v21 + 32))(v25 + v22, v23, v24);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();
  v27 = swift_allocObject();
  *(v27 + 16) = 64;
  v28 = swift_allocObject();
  *(v28 + 16) = 8;
  v26 = swift_allocObject();
  *(v26 + 16) = partial apply for implicit closure #1 in SearchForAccountsHandleIntentStrategy.makeFailureHandlingIntentResponse(rchRecord:);
  *(v26 + 24) = v25;
  v29 = swift_allocObject();
  *(v29 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
  *(v29 + 24) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v30 = v3;

  *v30 = partial apply for closure #1 in OSLogArguments.append(_:);
  v30[1] = v27;

  v30[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v30[3] = v28;

  v30[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v30[5] = v29;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v31, v32))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v14 = createStorage<A>(capacity:type:)(1);
    v15 = createStorage<A>(capacity:type:)(0);
    v33 = buf;
    v34 = v14;
    v35 = v15;
    serialize(_:at:)(2, &v33);
    serialize(_:at:)(1, &v33);
    v36 = partial apply for closure #1 in OSLogArguments.append(_:);
    v37 = v27;
    closure #1 in osLogInternal(_:log:type:)(&v36, &v33, &v34, &v35);
    v36 = partial apply for closure #1 in OSLogArguments.append(_:);
    v37 = v28;
    closure #1 in osLogInternal(_:log:type:)(&v36, &v33, &v34, &v35);
    v36 = partial apply for closure #1 in OSLogArguments.append(_:);
    v37 = v29;
    closure #1 in osLogInternal(_:log:type:)(&v36, &v33, &v34, &v35);
    _os_log_impl(&dword_2686B1000, v31, v32, "#SearchForAccountsHandleIntentStrategy makeFailureHandlingIntentResponse response: %@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v14, 1, v12);
    destroyStorage<A>(_:count:)(v15, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v10 = v16[14];
  v11 = v16[12];
  v9 = v16[13];
  MEMORY[0x277D82BD8](v31);
  (*(v9 + 8))(v10, v11);
  v4 = swift_task_alloc();
  v16[15] = v4;
  *v4 = v16[2];
  v4[1] = SearchForAccountsHandleIntentStrategy.makeFailureHandlingIntentResponse(rchRecord:);
  v5 = v16[7];
  v6 = v16[6];
  v7 = v16[5];

  return SearchForAccountsHandleIntentStrategy.makeIntentHandledResponse(rchRecord:)(v7, v6);
}

{
  v9 = *v1;
  v2 = *(*v1 + 120);
  v9[2] = *v1;
  v10 = v9 + 2;

  if (v0)
  {
    v5 = v9[14];
    v7 = v9[11];

    v4 = *(*v10 + 8);
  }

  else
  {
    v3 = v9[14];
    v8 = v9[11];

    v4 = *(*v10 + 8);
  }

  return v4();
}

uint64_t SearchForAccountsHandleIntentStrategy.deinit()
{
  v1 = BaseStrategy.deinit();
  __swift_destroy_boxed_opaque_existential_0((v1 + 184));
  return v1;
}

uint64_t sub_26884DF24()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  return swift_deallocObject();
}

uint64_t specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(uint64_t (*a1)(uint64_t *, uint64_t), uint64_t a2, unsigned int a3)
{
  if (a3 < 0x80uLL)
  {
    if (a3 > 0xFF)
    {
      goto LABEL_12;
    }

    v5 = (a3 + 1);
  }

  else
  {
    v7 = (a3 & 0x3F) << 8;
    if (a3 >> 6 < 0x20uLL)
    {
      v5 = (v7 | (a3 >> 6)) + 33217;
    }

    else
    {
      v6 = (v7 | (a3 >> 6) & 0x3F) << 8;
      if (a3 >> 12 < 0x10uLL)
      {
        v5 = (v6 | (a3 >> 12)) + 8487393;
      }

      else
      {
        v5 = ((a3 >> 18) | ((v6 | (a3 >> 12) & 0x3F) << 8)) - 2122219023;
      }
    }
  }

  v4 = 4 - (__clz(v5) >> 3);
  v9 = (v5 - 0x101010101010101) & ((1 << ((8 * v4) & 0x3F)) - 1);
  Int.init(bitPattern:)(&v9);
  if ((v4 & 0x8000000000000000) == 0)
  {
    return a1(&v9, v4);
  }

  _fatalErrorMessage(_:_:file:line:flags:)();
  __break(1u);
LABEL_12:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in _unimplementedInitializer(className:initName:file:line:column:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10)
{
  v27 = a8;
  v28 = a7;
  v29 = a6;
  v30 = a4;
  v31 = a3;
  v32 = a2;
  v33 = a1;
  v34 = a9;
  v35 = a10;
  v36 = 0;
  v38 = a6;
  v39 = a7;
  v40 = a1;
  v41 = a2;
  v42 = a8;
  v43 = a10;
  if (a5)
  {
    if (!HIDWORD(v31))
    {
      v26 = v31;
      if ((v31 >> 11 < 0x1B || v26 >> 13 > 6) && HIWORD(v26) <= 0x10u)
      {
        v10 = v36;
        v24 = v17;
        MEMORY[0x28223BE20](v17);
        v15 = partial apply for closure #1 in closure #1 in closure #1 in _unimplementedInitializer(className:initName:file:line:column:);
        v16 = &v37;
        specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(partial apply for specialized closure #1 in StaticString.withUTF8Buffer<A>(_:), v13, v11);
        return v10;
      }

      LODWORD(v15) = 0;
      v14 = 148;
      v13[0] = 2;
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 3053;
    v13[0] = 2;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (v31)
  {
    v23 = v31;
    if ((v30 & 0x8000000000000000) == 0)
    {
      if (v29)
      {
        v22 = v29;
      }

      else
      {
        LODWORD(v15) = 0;
        v14 = 268;
        v13[0] = 2;
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      v21 = v22;
      if (v28 >= 0xFFFFFFFF80000000)
      {
        if (v28 <= 0x7FFFFFFF)
        {
          v20 = v28;
          if (v33)
          {
            v19 = v33;
          }

          else
          {
            LODWORD(v15) = 0;
            v14 = 269;
            v13[0] = 2;
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }

          v18 = v19;
          if (v32 >= 0xFFFFFFFF80000000)
          {
            if (v32 <= 0x7FFFFFFF)
            {
              v17[5] = v32;
              if (v30 >= 0xFFFFFFFF80000000)
              {
                if (v30 <= 0x7FFFFFFF)
                {
                  v17[4] = v30;
                  if (!HIDWORD(v27))
                  {
                    v17[3] = v27;
                    if (!HIDWORD(v35))
                    {
                      LODWORD(v15) = 0;
                      _swift_stdlib_reportUnimplementedInitializerInFile();
                      return v36;
                    }

                    LODWORD(v15) = 0;
                    v14 = 3053;
                    v13[0] = 2;
                    _assertionFailure(_:_:file:line:flags:)();
                    __break(1u);
                  }

                  LODWORD(v15) = 0;
                  v14 = 3053;
                  v13[0] = 2;
                  _assertionFailure(_:_:file:line:flags:)();
                  __break(1u);
                }

                LODWORD(v15) = 0;
                v14 = 3268;
                v13[0] = 2;
                _assertionFailure(_:_:file:line:flags:)();
                __break(1u);
              }

              LODWORD(v15) = 0;
              v14 = 3262;
              v13[0] = 2;
              _assertionFailure(_:_:file:line:flags:)();
              __break(1u);
            }

            LODWORD(v15) = 0;
            v14 = 3268;
            v13[0] = 2;
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }

          LODWORD(v15) = 0;
          v14 = 3262;
          v13[0] = 2;
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        LODWORD(v15) = 0;
        v14 = 3268;
        v13[0] = 2;
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      LODWORD(v15) = 0;
      v14 = 3262;
      v13[0] = 2;
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 1410;
    v13[0] = 2;
    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in _unimplementedInitializer(className:initName:file:line:column:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  if (!a3)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (a4 >= 0xFFFFFFFF80000000)
  {
    if (a4 <= 0x7FFFFFFF)
    {
      if (!a5)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      if (a6 >= 0xFFFFFFFF80000000)
      {
        if (a6 <= 0x7FFFFFFF)
        {
          if (!a1)
          {
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }

          if (a2 >= 0xFFFFFFFF80000000)
          {
            if (a2 <= 0x7FFFFFFF)
            {
              if (a7 <= 0xFFFFFFFF)
              {
                if (a8 <= 0xFFFFFFFF)
                {
                  return _swift_stdlib_reportUnimplementedInitializerInFile();
                }

                _assertionFailure(_:_:file:line:flags:)();
                __break(1u);
              }

              _assertionFailure(_:_:file:line:flags:)();
              __break(1u);
            }

            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }

          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_26884F0B4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26884F0F4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26884F18C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26884F1CC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26884F20C()
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo019INSearchForAccountsD0CSo0ghiD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo019INSearchForAccountsD0CSo0ghiD8ResponseCGMR) - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #1 in SearchForAccountsHandleIntentStrategy.makeIntentHandledResponse(rchRecord:)()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo019INSearchForAccountsD0CSo0ghiD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo019INSearchForAccountsD0CSo0ghiD8ResponseCGMR) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #1 in SearchForAccountsHandleIntentStrategy.makeIntentHandledResponse(rchRecord:)();
}

uint64_t sub_26884F3AC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26884F3EC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26884F42C()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_26884F46C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26884F504()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26884F544()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26884F584()
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo019INSearchForAccountsD0CSo0ghiD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo019INSearchForAccountsD0CSo0ghiD8ResponseCGMR) - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #1 in SearchForAccountsHandleIntentStrategy.makeFailureHandlingIntentResponse(rchRecord:)()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo019INSearchForAccountsD0CSo0ghiD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo019INSearchForAccountsD0CSo0ghiD8ResponseCGMR) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #1 in SearchForAccountsHandleIntentStrategy.makeFailureHandlingIntentResponse(rchRecord:)();
}

uint64_t sub_26884F724()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26884F764()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t type metadata accessor for SearchForAccountsHandleIntentStrategy()
{
  v1 = type metadata singleton initialization cache for SearchForAccountsHandleIntentStrategy;
  if (!type metadata singleton initialization cache for SearchForAccountsHandleIntentStrategy)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t type metadata completion function for SearchForAccountsHandleIntentStrategy()
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t RequestPaymentUnsupportedValueStrategy.__allocating_init()()
{
  v31 = 0;
  v17 = 0;
  v7 = (*(*(type metadata accessor for CATOption() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v16 = &v6 - v7;
  v12 = type metadata accessor for Globals();
  v8 = v36;
  default argument 0 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)(v36);
  v9 = &v35;
  default argument 1 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v10 = &v34;
  default argument 2 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v11 = &v33;
  default argument 3 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v0 = Globals.__allocating_init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)(v8, v9, v10, v11);
  v25 = v37;
  v37[3] = v12;
  v37[4] = &protocol witness table for Globals;
  v37[0] = v0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriPaymentsIntents0B21ErrorTemplateProviderCySo22INRequestPaymentIntentCSo0ghI8ResponseCGMd, &_s19SiriPaymentsIntents0B21ErrorTemplateProviderCySo22INRequestPaymentIntentCSo0ghI8ResponseCGMR);
  v15 = v32;
  outlined init with copy of GlobalsProviding(v25, v32);
  type metadata accessor for PaymentsBaseCATs();
  default argument 0 of CATWrapper.init(options:globals:)();
  v14 = CATWrapper.__allocating_init(options:globals:)();
  v13 = type metadata accessor for INRequestPaymentIntent();
  v1 = type metadata accessor for INRequestPaymentIntentResponse();
  v2 = default argument 2 of PaymentsErrorTemplateProvider.init(globals:catFamily:searchForAccountsCATs:)(v13, v1);
  v24 = PaymentsErrorTemplateProvider.__allocating_init(globals:catFamily:searchForAccountsCATs:)(v15, v14, v2);
  v31 = v24;
  v23 = v30;
  outlined init with copy of GlobalsProviding(v25, v30);
  type metadata accessor for RequestPaymentCATs();
  default argument 0 of CATWrapper.init(options:globals:)();
  v18 = CATWrapper.__allocating_init(options:globals:)();
  NSJSONWritingOptions.init(rawValue:)(v18);
  v19 = v29;
  v29[3] = &type metadata for CommonLabelsProvider;
  v29[4] = &protocol witness table for CommonLabelsProvider;
  v3 = type metadata accessor for SiriKitContactResolver();
  v20 = v28;
  v28[3] = v3;
  v28[4] = &protocol witness table for SiriKitContactResolver;
  __swift_allocate_boxed_opaque_existential_1(v28);
  SiriKitContactResolver.init()();

  v21 = &v27;
  v27 = v24;
  v4 = lazy protocol witness table accessor for type PaymentsErrorTemplateProvider<INRequestPaymentIntent, INRequestPaymentIntentResponse> and conformance PaymentsErrorTemplateProvider<A, B>();
  v26 = RequestPaymentUnsupportedValueStrategy.__allocating_init<A>(globals:catFamily:commonLabelsProvider:contactResolver:errorProvider:)(v23, v18, v19, v20, v21, v22, v4);

  v37[5] = v26;

  __swift_destroy_boxed_opaque_existential_0(v25);

  return v26;
}

uint64_t RequestPaymentUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 608) = v2;
  *(v3 + 600) = a2;
  *(v3 + 592) = a1;
  *(v3 + 488) = v3;
  *(v3 + 496) = 0;
  *(v3 + 504) = 0;
  *(v3 + 864) = 0;
  *(v3 + 512) = 0;
  *(v3 + 520) = 0;
  *(v3 + 472) = 0;
  *(v3 + 480) = 0;
  *(v3 + 528) = 0;
  *(v3 + 536) = 0;
  *(v3 + 544) = 0;
  *(v3 + 552) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo22INRequestPaymentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo22INRequestPaymentIntentCGMR);
  *(v3 + 616) = v4;
  v14 = *(v4 - 8);
  *(v3 + 624) = v14;
  *(v3 + 632) = *(v14 + 64);
  *(v3 + 640) = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64);
  *(v3 + 648) = swift_task_alloc();
  *(v3 + 656) = swift_task_alloc();
  *(v3 + 664) = swift_task_alloc();
  v5 = *(*(type metadata accessor for Locale() - 8) + 64) + 15;
  *(v3 + 672) = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64) + 15;
  *(v3 + 680) = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR) - 8) + 64) + 15;
  *(v3 + 688) = swift_task_alloc();
  v8 = type metadata accessor for TemplatingResult();
  *(v3 + 696) = v8;
  v16 = *(v8 - 8);
  *(v3 + 704) = v16;
  v17 = *(v16 + 64);
  *(v3 + 712) = swift_task_alloc();
  *(v3 + 720) = swift_task_alloc();
  v9 = type metadata accessor for ParameterIdentifier();
  *(v3 + 728) = v9;
  v18 = *(v9 - 8);
  *(v3 + 736) = v18;
  v10 = *(v18 + 64) + 15;
  *(v3 + 744) = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  *(v3 + 752) = v11;
  v19 = *(v11 - 8);
  *(v3 + 760) = v19;
  v20 = *(v19 + 64);
  *(v3 + 768) = swift_task_alloc();
  *(v3 + 776) = swift_task_alloc();
  *(v3 + 496) = a2;
  *(v3 + 504) = v2;
  v12 = *(v3 + 488);

  return MEMORY[0x2822009F8](RequestPaymentUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:), 0);
}

uint64_t RequestPaymentUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:)()
{
  v88 = v0;
  v1 = v0[97];
  v77 = v0[95];
  v78 = v0[94];
  v0[61] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  v79 = *(v77 + 16);
  v79(v1, v2, v78);
  v81 = Logger.logObject.getter();
  v80 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v82 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v81, v80))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v73 = createStorage<A>(capacity:type:)(0);
    v74 = createStorage<A>(capacity:type:)(0);
    *(v76 + 560) = buf;
    *(v76 + 568) = v73;
    *(v76 + 576) = v74;
    serialize(_:at:)(0, (v76 + 560));
    serialize(_:at:)(0, (v76 + 560));
    *(v76 + 584) = v82;
    v75 = swift_task_alloc();
    v75[2] = v76 + 560;
    v75[3] = v76 + 568;
    v75[4] = v76 + 576;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v81, v80, "RequestPaymentUnsupportedValueStrategy makeUnsupportedValueOutput", buf, 2u);
    destroyStorage<A>(_:count:)(v73, 0, v71);
    destroyStorage<A>(_:count:)(v74, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  v62 = *(v76 + 776);
  v63 = *(v76 + 752);
  v67 = *(v76 + 744);
  v68 = *(v76 + 728);
  v65 = *(v76 + 616);
  v3 = *(v76 + 600);
  v61 = *(v76 + 760);
  v66 = *(v76 + 736);
  MEMORY[0x277D82BD8](v81);
  v64 = *(v61 + 8);
  v64(v62, v63);
  ParameterResolutionRecord.parameter.getter();
  rawValue._countAndFlagsBits = ParameterIdentifier.name.getter();
  rawValue._object = v4;
  v69 = *(v66 + 8);
  v69(v67, v68);
  v5.value = RequestPaymentSlots.init(rawValue:)(rawValue).value;
  *(v76 + 865) = v5;
  if (v5.value == SiriPaymentsIntents_RequestPaymentSlots_unknownDefault)
  {
    v11 = *(v76 + 768);
    v42 = *(v76 + 752);
    v47 = *(v76 + 640);
    v45 = *(v76 + 632);
    v48 = *(v76 + 616);
    v44 = *(v76 + 600);
    v43 = *(v76 + 624);
    v12 = Logger.payments.unsafeMutableAddressor();
    v79(v11, v12, v42);
    (*(v43 + 16))(v47, v44, v48);
    v46 = (*(v43 + 80) + 16) & ~*(v43 + 80);
    v49 = swift_allocObject();
    (*(v43 + 32))(v49 + v46, v47, v48);
    oslog = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();
    v51 = swift_allocObject();
    *(v51 + 16) = 32;
    v52 = swift_allocObject();
    *(v52 + 16) = 8;
    v50 = swift_allocObject();
    *(v50 + 16) = partial apply for implicit closure #1 in RequestPaymentUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
    *(v50 + 24) = v49;
    v53 = swift_allocObject();
    *(v53 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v53 + 24) = v50;
    _allocateUninitializedArray<A>(_:)();
    v54 = v13;

    *v54 = partial apply for closure #1 in OSLogArguments.append(_:);
    v54[1] = v51;

    v54[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v54[3] = v52;

    v54[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v54[5] = v53;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(oslog, v56))
    {
      v39 = static UnsafeMutablePointer.allocate(capacity:)();
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v40 = createStorage<A>(capacity:type:)(0);
      v41 = createStorage<A>(capacity:type:)(1);
      v83 = v39;
      v84 = v40;
      v85 = v41;
      serialize(_:at:)(2, &v83);
      serialize(_:at:)(1, &v83);
      v86 = partial apply for closure #1 in OSLogArguments.append(_:);
      v87 = v51;
      closure #1 in osLogInternal(_:log:type:)(&v86, &v83, &v84, &v85);
      v86 = partial apply for closure #1 in OSLogArguments.append(_:);
      v87 = v52;
      closure #1 in osLogInternal(_:log:type:)(&v86, &v83, &v84, &v85);
      v86 = partial apply for closure #1 in OSLogArguments.append(_:);
      v87 = v53;
      closure #1 in osLogInternal(_:log:type:)(&v86, &v83, &v84, &v85);
      _os_log_impl(&dword_2686B1000, oslog, v56, "#RequestPaymentUnsupportedValueStrategy unknown parameter: %s", v39, 0xCu);
      destroyStorage<A>(_:count:)(v40, 0, v38);
      destroyStorage<A>(_:count:)(v41, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v39, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v20 = *(v76 + 768);
    v21 = *(v76 + 752);
    v23 = *(v76 + 744);
    v24 = *(v76 + 728);
    v22 = *(v76 + 616);
    v14 = *(v76 + 600);
    MEMORY[0x277D82BD8](oslog);
    v64(v20, v21);
    ParameterResolutionRecord.parameter.getter();
    v26 = ParameterIdentifier.name.getter();
    v25 = v15;
    v69(v23, v24);
    lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
    swift_allocError();
    *v16 = v26;
    *(v16 + 8) = v25;
    *(v16 + 16) = 0;
    *(v16 + 24) = 0;
    *(v16 + 32) = 0;
    *(v16 + 40) = 0;
    *(v16 + 48) = 14;
    swift_willThrow();
    v17 = *(v76 + 776);
    v27 = *(v76 + 768);
    v28 = *(v76 + 744);
    v29 = *(v76 + 720);
    v30 = *(v76 + 712);
    v31 = *(v76 + 688);
    v32 = *(v76 + 680);
    v33 = *(v76 + 672);
    v34 = *(v76 + 664);
    v35 = *(v76 + 656);
    v36 = *(v76 + 648);
    v37 = *(v76 + 640);

    v18 = *(*(v76 + 488) + 8);
    v19 = *(v76 + 488);

    return v18();
  }

  else
  {
    v57 = *(v76 + 608);
    *(v76 + 864) = v5;

    outlined init with copy of GlobalsProviding(v57 + 144, v76 + 16);

    v58 = *(v76 + 40);
    v59 = *(v76 + 48);
    __swift_project_boxed_opaque_existential_1((v76 + 16), v58);
    v60 = (*(v59 + 56) + **(v59 + 56));
    v6 = *(*(v59 + 56) + 4);
    v7 = swift_task_alloc();
    *(v76 + 784) = v7;
    *v7 = *(v76 + 488);
    v7[1] = RequestPaymentUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
    v8 = *(v76 + 688);
    v9 = *(v76 + 600);

    return v60(v8, v9, v58, v59);
  }
}

{
  v8 = *v1;
  v7 = (v8 + 488);
  v2 = *(*v1 + 784);
  *(v8 + 488) = *v1;
  *(v8 + 792) = v0;

  if (v0)
  {
    v5 = *v7;
    v4 = SendPaymentUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
  }

  else
  {
    v3 = *v7;
    v4 = RequestPaymentUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
  }

  return MEMORY[0x2822009F8](v4, 0);
}

{
  v1 = v0[88];
  v2 = v0[87];
  v3 = v0[86];
  v0[61] = v0;
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v47 = *(v69 + 616);
    v45 = *(v69 + 600);
    outlined destroy of TemplatingResult?(*(v69 + 688));
    __swift_destroy_boxed_opaque_existential_0((v69 + 16));
    ParameterResolutionRecord.app.getter();
    v46 = App.sirikitApp.getter();
    *(v69 + 800) = v46;
    *(v69 + 512) = v46;

    v48 = ParameterResolutionRecord.intent.getter();
    *(v69 + 808) = v48;
    *(v69 + 520) = v48;
    v49 = [v48 note];
    if (v49)
    {
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v10;
      MEMORY[0x277D82BD8](v49);
      v43 = v41;
      v44 = v42;
    }

    else
    {
      v43 = 0;
      v44 = 0;
    }

    *(v69 + 816) = v44;
    *(v69 + 472) = v43;
    *(v69 + 480) = v44;
    type metadata accessor for PaymentsDialogConcept.Builder();
    v39 = PaymentsDialogConcept.Builder.__allocating_init()();
    *(v69 + 824) = v39;
    *(v69 + 528) = v39;
    v40 = [v48 payer];
    if (v40)
    {
      v36 = *(v69 + 672);
      v32 = *(v69 + 608);
      *(v69 + 552) = v40;
      type metadata accessor for DialogPerson();
      MEMORY[0x277D82BE0](v40);

      outlined init with copy of GlobalsProviding(v32 + 104, v69 + 176);

      v34 = *(v69 + 200);
      v33 = *(v69 + 208);
      __swift_project_boxed_opaque_existential_1((v69 + 176), v34);
      (*(v33 + 16))(v34);
      v35 = *(v69 + 248);
      __swift_project_boxed_opaque_existential_1((v69 + 216), *(v69 + 240));
      dispatch thunk of DeviceState.siriLocale.getter();
      v38 = DialogPerson.__allocating_init(namedPerson:locale:useConversationalName:)();
      __swift_destroy_boxed_opaque_existential_0((v69 + 216));
      __swift_destroy_boxed_opaque_existential_0((v69 + 176));

      v37 = (v39 + OBJC_IVAR____TtCC19SiriPaymentsIntents21PaymentsDialogConcept7Builder_payerName);
      swift_beginAccess();
      v11 = *v37;
      *v37 = v38;

      swift_endAccess();

      MEMORY[0x277D82BD8](v40);
    }

    v31 = [v48 currencyAmount];
    if (v31)
    {
      *(v69 + 544) = v31;
      type metadata accessor for DialogCurrency.Builder();
      DialogCurrency.Builder.__allocating_init()();
      v30 = [v31 amount];
      if (v30)
      {
        [v30 doubleValue];
        MEMORY[0x277D82BD8](v30);
      }

      dispatch thunk of DialogAbstractMeasurement.Builder.withValue(_:)();

      v29 = dispatch thunk of DialogAbstractMeasurement.Builder.build()();

      swift_beginAccess();
      v12 = *(v39 + 16);
      *(v39 + 16) = v29;

      swift_endAccess();

      MEMORY[0x277D82BD8](v31);
    }

    if (v44)
    {
      v28 = *(v69 + 664);
      String.toSpeakableString.getter();

      v13 = type metadata accessor for SpeakableString();
      (*(*(v13 - 8) + 56))(v28, 0, 1);
    }

    else
    {
      v20 = *(v69 + 664);
      v19 = type metadata accessor for SpeakableString();
      (*(*(v19 - 8) + 56))(v20, 1);
    }

    v25 = *(v69 + 865);
    v23 = *(v69 + 664);
    v21 = *(v69 + 656);
    v26 = *(v69 + 648);
    v24 = *(v69 + 608);
    outlined init with copy of SpeakableString?(v23, v21);
    v22 = (v39 + OBJC_IVAR____TtCC19SiriPaymentsIntents21PaymentsDialogConcept7Builder_memo);
    swift_beginAccess();
    outlined assign with take of SpeakableString?(v21, v22);
    swift_endAccess();
    outlined destroy of SpeakableString?(v23);

    swift_beginAccess();
    v14 = *(v39 + 24);
    *(v39 + 24) = v46;

    swift_endAccess();

    v27 = PaymentsDialogConcept.Builder.build()();
    *(v69 + 832) = v27;
    *(v69 + 536) = v27;

    *(v69 + 840) = *(v24 + 16);

    RequestPaymentSlots.rawValue.getter(v25);
    String.toSpeakableString.getter();

    v15 = type metadata accessor for SpeakableString();
    (*(*(v15 - 8) + 56))(v26, 0, 1);

    v16 = swift_task_alloc();
    *(v69 + 848) = v16;
    *v16 = *(v69 + 488);
    v16[1] = SendPaymentUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
    v17 = *(v69 + 712);
    v18 = *(v69 + 648);

    return RequestPaymentCATs.unsupportedSlotValue(slot:paymentsConcept:)(v17, v18, v27);
  }

  else
  {
    v56 = *(v69 + 720);
    v57 = *(v69 + 696);
    v4 = *(v69 + 688);
    v54 = *(v69 + 680);
    v52 = *(v69 + 608);
    v53 = *(v69 + 592);
    v55 = *(v69 + 704);
    (*(v55 + 32))();
    __swift_destroy_boxed_opaque_existential_0((v69 + 16));

    outlined init with copy of GlobalsProviding(v52 + 104, v69 + 256);

    v51 = *(v69 + 280);
    v50 = *(v69 + 288);
    __swift_project_boxed_opaque_existential_1((v69 + 256), v51);
    (*(v50 + 16))(v51);

    BaseStrategy.ttsEnabled.getter();

    v5 = type metadata accessor for NLContextUpdate();
    (*(*(v5 - 8) + 56))(v54, 1);
    *(v69 + 336) = 0;
    *(v69 + 344) = 0;
    *(v69 + 352) = 0;
    *(v69 + 360) = 0;
    *(v69 + 368) = 0;
    default argument 3 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
    default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
    default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
    v53[3] = type metadata accessor for AceOutput();
    v53[4] = MEMORY[0x277D5C1D8];
    __swift_allocate_boxed_opaque_existential_1(v53);
    static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

    outlined destroy of FlowActivity?((v69 + 336));
    outlined destroy of NLContextUpdate?(v54);
    __swift_destroy_boxed_opaque_existential_0((v69 + 296));
    __swift_destroy_boxed_opaque_existential_0((v69 + 256));
    (*(v55 + 8))(v56, v57);
    v6 = *(v69 + 776);
    v58 = *(v69 + 768);
    v59 = *(v69 + 744);
    v60 = *(v69 + 720);
    v61 = *(v69 + 712);
    v62 = *(v69 + 688);
    v63 = *(v69 + 680);
    v64 = *(v69 + 672);
    v65 = *(v69 + 664);
    v66 = *(v69 + 656);
    v67 = *(v69 + 648);
    v68 = *(v69 + 640);

    v7 = *(*(v69 + 488) + 8);
    v8 = *(v69 + 488);

    return v7();
  }
}

uint64_t implicit closure #1 in RequestPaymentUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:)()
{
  v7 = type metadata accessor for ParameterIdentifier();
  v4 = *(v7 - 8);
  v5 = v7 - 8;
  v3 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v6 = &v2 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo22INRequestPaymentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo22INRequestPaymentIntentCGMR);
  ParameterResolutionRecord.parameter.getter();
  v8 = ParameterIdentifier.name.getter();
  v9 = v0;
  (*(v4 + 8))(v6, v7);
  return v8;
}

uint64_t RequestPaymentUnsupportedValueStrategy.makeUpdatedIntentForUnsupportedValue(resolveRecord:)(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 112) = v2;
  *(v2 + 120) = 0;
  *(v2 + 128) = 0;
  *(v2 + 136) = 0;
  *(v2 + 232) = 0;
  v3 = type metadata accessor for ParameterIdentifier();
  *(v2 + 152) = v3;
  v10 = *(v3 - 8);
  *(v2 + 160) = v10;
  v4 = *(v10 + 64) + 15;
  *(v2 + 168) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo22INRequestPaymentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo22INRequestPaymentIntentCGMR);
  *(v2 + 176) = v5;
  v11 = *(v5 - 8);
  *(v2 + 184) = v11;
  *(v2 + 192) = *(v11 + 64);
  *(v2 + 200) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  *(v2 + 208) = v6;
  v12 = *(v6 - 8);
  *(v2 + 216) = v12;
  v7 = *(v12 + 64) + 15;
  *(v2 + 224) = swift_task_alloc();
  *(v2 + 120) = a1;
  *(v2 + 128) = v1;
  v8 = *(v2 + 112);

  return MEMORY[0x2822009F8](RequestPaymentUnsupportedValueStrategy.makeUpdatedIntentForUnsupportedValue(resolveRecord:), 0);
}

uint64_t RequestPaymentUnsupportedValueStrategy.makeUpdatedIntentForUnsupportedValue(resolveRecord:)()
{
  v102 = v0;
  v71 = v0[28];
  v74 = v0[27];
  v75 = v0[26];
  v81 = v0[25];
  v80 = v0[24];
  v76 = v0[23];
  v82 = v0[22];
  v77 = v0[18];
  v0[14] = v0;
  v72 = ParameterResolutionRecord.intent.getter();
  type metadata accessor for INRequestPaymentIntent();
  v73 = SiriKitPaymentsIntent.clone()();
  MEMORY[0x277D82BD8](v72);
  v0[17] = v73;
  v1 = Logger.payments.unsafeMutableAddressor();
  (*(v74 + 16))(v71, v1, v75);
  v78 = *(v76 + 16);
  v78(v81, v77, v82);
  v79 = *(v76 + 80);
  v84 = swift_allocObject();
  v83 = *(v76 + 32);
  v83(v84 + ((v79 + 16) & ~v79), v81, v82);
  v78(v81, v77, v82);
  v86 = swift_allocObject();
  v83(v86 + ((v79 + 16) & ~v79), v81, v82);
  v95 = Logger.logObject.getter();
  v96 = static os_log_type_t.debug.getter();
  v88 = swift_allocObject();
  *(v88 + 16) = 32;
  v89 = swift_allocObject();
  *(v89 + 16) = 8;
  v85 = swift_allocObject();
  *(v85 + 16) = partial apply for implicit closure #1 in RequestPaymentUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
  *(v85 + 24) = v84;
  v90 = swift_allocObject();
  *(v90 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v90 + 24) = v85;
  v91 = swift_allocObject();
  *(v91 + 16) = 32;
  v92 = swift_allocObject();
  *(v92 + 16) = 8;
  v87 = swift_allocObject();
  *(v87 + 16) = partial apply for implicit closure #2 in RequestPaymentUnsupportedValueStrategy.makeUpdatedIntentForUnsupportedValue(resolveRecord:);
  *(v87 + 24) = v86;
  v93 = swift_allocObject();
  *(v93 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v93 + 24) = v87;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v94 = v2;

  *v94 = partial apply for closure #1 in OSLogArguments.append(_:);
  v94[1] = v88;

  v94[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v94[3] = v89;

  v94[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v94[5] = v90;

  v94[6] = partial apply for closure #1 in OSLogArguments.append(_:);
  v94[7] = v91;

  v94[8] = partial apply for closure #1 in OSLogArguments.append(_:);
  v94[9] = v92;

  v94[10] = partial apply for closure #1 in OSLogArguments.append(_:);
  v94[11] = v93;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v95, v96))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v68 = createStorage<A>(capacity:type:)(0);
    v69 = createStorage<A>(capacity:type:)(2);
    v97 = buf;
    v98 = v68;
    v99 = v69;
    serialize(_:at:)(2, &v97);
    serialize(_:at:)(2, &v97);
    v100 = partial apply for closure #1 in OSLogArguments.append(_:);
    v101 = v88;
    closure #1 in osLogInternal(_:log:type:)(&v100, &v97, &v98, &v99);
    v100 = partial apply for closure #1 in OSLogArguments.append(_:);
    v101 = v89;
    closure #1 in osLogInternal(_:log:type:)(&v100, &v97, &v98, &v99);
    v100 = partial apply for closure #1 in OSLogArguments.append(_:);
    v101 = v90;
    closure #1 in osLogInternal(_:log:type:)(&v100, &v97, &v98, &v99);
    v100 = partial apply for closure #1 in OSLogArguments.append(_:);
    v101 = v91;
    closure #1 in osLogInternal(_:log:type:)(&v100, &v97, &v98, &v99);
    v100 = partial apply for closure #1 in OSLogArguments.append(_:);
    v101 = v92;
    closure #1 in osLogInternal(_:log:type:)(&v100, &v97, &v98, &v99);
    v100 = partial apply for closure #1 in OSLogArguments.append(_:);
    v101 = v93;
    closure #1 in osLogInternal(_:log:type:)(&v100, &v97, &v98, &v99);
    _os_log_impl(&dword_2686B1000, v95, v96, "#RequestPaymentUnsupportedValueStrategy updating intent for slot '%s' with index '%s'", buf, 0x16u);
    destroyStorage<A>(_:count:)(v68, 0, v66);
    destroyStorage<A>(_:count:)(v69, 2, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v56 = *(v70 + 224);
  v57 = *(v70 + 208);
  v58 = *(v70 + 176);
  v60 = *(v70 + 168);
  v61 = *(v70 + 152);
  v3 = *(v70 + 144);
  v55 = *(v70 + 216);
  v59 = *(v70 + 160);
  MEMORY[0x277D82BD8](v95);
  (*(v55 + 8))(v56, v57);
  ParameterResolutionRecord.parameter.getter();
  rawValue._countAndFlagsBits = ParameterIdentifier.name.getter();
  rawValue._object = v4;
  v62 = *(v59 + 8);
  v62(v60, v61);
  v5.value = RequestPaymentSlots.init(rawValue:)(rawValue).value;
  value = v5.value;
  if (v5.value == SiriPaymentsIntents_RequestPaymentSlots_unknownDefault)
  {
    v29 = *(v70 + 224);
    v30 = *(v70 + 200);
    v16 = *(v70 + 176);
    v31 = *(v70 + 168);
    v23 = *(v70 + 152);
    v17 = *(v70 + 144);
    ParameterResolutionRecord.parameter.getter();
    v24 = ParameterIdentifier.name.getter();
    v25 = v18;
    v62(v31, v23);
    v28 = [swift_getObjCClassFromMetadata() description];
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v19;
    lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
    swift_allocError();
    *v20 = v24;
    *(v20 + 8) = v25;
    *(v20 + 16) = v27;
    *(v20 + 24) = v26;
    *(v20 + 32) = 0;
    *(v20 + 40) = 0;
    *(v20 + 48) = 2;
    swift_willThrow();
    MEMORY[0x277D82BD8](v28);
    MEMORY[0x277D82BD8](v73);

    v13 = v65;
    v14 = *(*(v70 + 112) + 8);
    v21 = *(v70 + 112);
  }

  else
  {
    *(v70 + 232) = v5;
    if (v5.value)
    {
      if (v5.value == SiriPaymentsIntents_RequestPaymentSlots_currencyAmount)
      {
        *(v70 + 48) = 0;
        *(v70 + 56) = 0;
        *(v70 + 64) = 0;
        *(v70 + 72) = 0;
        if (*(v70 + 72))
        {
          v44 = *(v70 + 72);
          v42 = __swift_project_boxed_opaque_existential_1((v70 + 48), v44);
          v43 = *(v44 - 8);
          v8 = *(v43 + 64) + 15;
          v45 = swift_task_alloc();
          (*(v43 + 16))(v45, v42, v44);
          v46 = _bridgeAnythingToObjectiveC<A>(_:)();
          (*(v43 + 8))(v45, v44);

          __swift_destroy_boxed_opaque_existential_0((v70 + 48));
          v47 = v46;
        }

        else
        {
          v47 = 0;
        }

        *(v70 + 234) = value;
        lazy protocol witness table accessor for type RequestPaymentSlots and conformance RequestPaymentSlots();
        lazy protocol witness table accessor for type RequestPaymentSlots and conformance RequestPaymentSlots();
        v9 = Slot<>.propertyName.getter(&type metadata for RequestPaymentSlots, &protocol witness table for RequestPaymentSlots);
        v41 = MEMORY[0x26D620690](v9);

        [v73 setValue:v47 forKey:v41];
        MEMORY[0x277D82BD8](v41);
        swift_unknownObjectRelease();
      }

      else
      {
        *(v70 + 16) = 0;
        *(v70 + 24) = 0;
        *(v70 + 32) = 0;
        *(v70 + 40) = 0;
        if (*(v70 + 40))
        {
          v37 = *(v70 + 40);
          v35 = __swift_project_boxed_opaque_existential_1((v70 + 16), v37);
          v36 = *(v37 - 8);
          v10 = *(v36 + 64) + 15;
          v38 = swift_task_alloc();
          (*(v36 + 16))(v38, v35, v37);
          v39 = _bridgeAnythingToObjectiveC<A>(_:)();
          (*(v36 + 8))(v38, v37);

          __swift_destroy_boxed_opaque_existential_0((v70 + 16));
          v40 = v39;
        }

        else
        {
          v40 = 0;
        }

        *(v70 + 233) = value;
        lazy protocol witness table accessor for type RequestPaymentSlots and conformance RequestPaymentSlots();
        lazy protocol witness table accessor for type RequestPaymentSlots and conformance RequestPaymentSlots();
        v11 = Slot<>.propertyName.getter(&type metadata for RequestPaymentSlots, &protocol witness table for RequestPaymentSlots);
        v34 = MEMORY[0x26D620690](v11);

        [v73 setValue:v40 forKey:v34];
        MEMORY[0x277D82BD8](v34);
        swift_unknownObjectRelease();
      }
    }

    else
    {
      *(v70 + 80) = 0;
      *(v70 + 88) = 0;
      *(v70 + 96) = 0;
      *(v70 + 104) = 0;
      if (*(v70 + 104))
      {
        v51 = *(v70 + 104);
        v49 = __swift_project_boxed_opaque_existential_1((v70 + 80), v51);
        v50 = *(v51 - 8);
        v6 = *(v50 + 64) + 15;
        v52 = swift_task_alloc();
        (*(v50 + 16))(v52, v49, v51);
        v53 = _bridgeAnythingToObjectiveC<A>(_:)();
        (*(v50 + 8))(v52, v51);

        __swift_destroy_boxed_opaque_existential_0((v70 + 80));
        v54 = v53;
      }

      else
      {
        v54 = 0;
      }

      *(v70 + 235) = 0;
      lazy protocol witness table accessor for type RequestPaymentSlots and conformance RequestPaymentSlots();
      lazy protocol witness table accessor for type RequestPaymentSlots and conformance RequestPaymentSlots();
      v7 = Slot<>.propertyName.getter(&type metadata for RequestPaymentSlots, &protocol witness table for RequestPaymentSlots);
      v48 = MEMORY[0x26D620690](v7);

      [v73 setValue:v54 forKey:v48];
      MEMORY[0x277D82BD8](v48);
      swift_unknownObjectRelease();
    }

    v12 = *(v70 + 224);
    v32 = *(v70 + 200);
    v33 = *(v70 + 168);

    v13 = v73;
    v14 = *(*(v70 + 112) + 8);
    v15 = *(v70 + 112);
  }

  return v14(v13);
}

uint64_t implicit closure #2 in RequestPaymentUnsupportedValueStrategy.makeUpdatedIntentForUnsupportedValue(resolveRecord:)()
{
  v7 = type metadata accessor for ParameterIdentifier();
  v4 = *(v7 - 8);
  v5 = v7 - 8;
  v3 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v6 = &v2 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo22INRequestPaymentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo22INRequestPaymentIntentCGMR);
  ParameterResolutionRecord.parameter.getter();
  v8 = ParameterIdentifier.multicardinalIndex.getter();
  v9 = v0;
  (*(v4 + 8))(v6, v7);
  v10 = v8;
  v11 = v9 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
  return Optional.debugDescription.getter();
}

uint64_t sub_2688531C0()
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo22INRequestPaymentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo22INRequestPaymentIntentCGMR) - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #1 in RequestPaymentUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:)()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo22INRequestPaymentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo22INRequestPaymentIntentCGMR) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #1 in RequestPaymentUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:)();
}

uint64_t RequestPaymentUnsupportedValueStrategy.init<A>(globals:catFamily:commonLabelsProvider:contactResolver:errorProvider:)(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a1;
  v26 = a2;
  v25 = a3;
  v24 = a4;
  v20 = a5;
  v23 = a6;
  v18 = a7;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v38 = a6;
  v21 = *(a6 - 8);
  v22 = a6 - 8;
  v14 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v13 - v14;
  v36 = MEMORY[0x28223BE20](a1);
  v35 = v8;
  v34 = v9;
  v33 = v10;
  v32 = v11;
  v37 = v7;
  v19 = v31;
  outlined init with copy of GlobalsProviding(v36, v31);

  v15 = v30;
  outlined init with copy of GlobalsProviding(v25, v30);
  v16 = v29;
  outlined init with copy of GlobalsProviding(v24, v29);
  (*(v21 + 16))(v17, v20, v23);
  v28 = BaseStrategy.init<A>(globals:catFamily:commonLabelsProvider:contactResolver:errorProvider:)(v19, v26, v15, v16, v17, v23, v18);

  v37 = v28;
  (*(v21 + 8))(v20, v23);
  __swift_destroy_boxed_opaque_existential_0(v24);
  __swift_destroy_boxed_opaque_existential_0(v25);

  __swift_destroy_boxed_opaque_existential_0(v27);

  return v28;
}

uint64_t protocol witness for UnsupportedValueFlowStrategyAsync.makeUnsupportedValueOutput(resolveRecord:) in conformance RequestPaymentUnsupportedValueStrategy(uint64_t a1, uint64_t a2)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v4 = *v2;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return RequestPaymentUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:)(a1, a2);
}

uint64_t protocol witness for UnsupportedValueFlowStrategyAsync.makeUpdatedIntentForUnsupportedValue(resolveRecord:) in conformance RequestPaymentUnsupportedValueStrategy(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = protocol witness for TCCResponseProviding.promptToEnableApp(appDisplayInfo:deviceState:catOverrides:) in conformance TCCResponses;

  return RequestPaymentUnsupportedValueStrategy.makeUpdatedIntentForUnsupportedValue(resolveRecord:)(a1);
}

uint64_t protocol witness for UnsupportedValueFlowStrategyAsync.makeLaunchAppWithIntentOutput(resolveRecord:) in conformance RequestPaymentUnsupportedValueStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4;
  *(v4 + 16) = v4;
  v5 = *(MEMORY[0x277D5B4C8] + 4);
  v6 = swift_task_alloc();
  *(v9 + 24) = v6;
  v7 = type metadata accessor for RequestPaymentUnsupportedValueStrategy();
  *v6 = *(v9 + 16);
  v6[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821B9E00](a1, a2, v7, a4);
}

uint64_t sub_2688537B4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2688537F4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268853834()
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo22INRequestPaymentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo22INRequestPaymentIntentCGMR) - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_26885390C()
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo22INRequestPaymentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo22INRequestPaymentIntentCGMR) - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #2 in RequestPaymentUnsupportedValueStrategy.makeUpdatedIntentForUnsupportedValue(resolveRecord:)()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo22INRequestPaymentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo22INRequestPaymentIntentCGMR) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #2 in RequestPaymentUnsupportedValueStrategy.makeUpdatedIntentForUnsupportedValue(resolveRecord:)();
}

uint64_t sub_268853AAC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268853AEC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268853B84()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268853BC4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t type metadata accessor for RequestPaymentUnsupportedValueStrategy()
{
  v1 = type metadata singleton initialization cache for RequestPaymentUnsupportedValueStrategy;
  if (!type metadata singleton initialization cache for RequestPaymentUnsupportedValueStrategy)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t SearchForAccountsUnsupportedValueStrategy.__allocating_init()()
{
  v31 = 0;
  v17 = 0;
  v7 = (*(*(type metadata accessor for CATOption() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v16 = &v6 - v7;
  v12 = type metadata accessor for Globals();
  v8 = v36;
  default argument 0 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)(v36);
  v9 = &v35;
  default argument 1 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v10 = &v34;
  default argument 2 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v11 = &v33;
  default argument 3 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v0 = Globals.__allocating_init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)(v8, v9, v10, v11);
  v25 = v37;
  v37[3] = v12;
  v37[4] = &protocol witness table for Globals;
  v37[0] = v0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriPaymentsIntents0B21ErrorTemplateProviderCySo25INSearchForAccountsIntentCSo0ghiJ8ResponseCGMd, &_s19SiriPaymentsIntents0B21ErrorTemplateProviderCySo25INSearchForAccountsIntentCSo0ghiJ8ResponseCGMR);
  v15 = v32;
  outlined init with copy of GlobalsProviding(v25, v32);
  type metadata accessor for PaymentsBaseCATs();
  default argument 0 of CATWrapper.init(options:globals:)();
  v14 = CATWrapper.__allocating_init(options:globals:)();
  v13 = type metadata accessor for INSearchForAccountsIntent();
  v1 = type metadata accessor for INSearchForAccountsIntentResponse();
  v2 = default argument 2 of PaymentsErrorTemplateProvider.init(globals:catFamily:searchForAccountsCATs:)(v13, v1);
  v24 = PaymentsErrorTemplateProvider.__allocating_init(globals:catFamily:searchForAccountsCATs:)(v15, v14, v2);
  v31 = v24;
  v23 = v30;
  outlined init with copy of GlobalsProviding(v25, v30);
  type metadata accessor for SearchForAccountsCATs();
  default argument 0 of CATWrapper.init(options:globals:)();
  v18 = CATWrapper.__allocating_init(options:globals:)();
  NSJSONWritingOptions.init(rawValue:)(v18);
  v19 = v29;
  v29[3] = &type metadata for CommonLabelsProvider;
  v29[4] = &protocol witness table for CommonLabelsProvider;
  v3 = type metadata accessor for SiriKitContactResolver();
  v20 = v28;
  v28[3] = v3;
  v28[4] = &protocol witness table for SiriKitContactResolver;
  __swift_allocate_boxed_opaque_existential_1(v28);
  SiriKitContactResolver.init()();

  v21 = &v27;
  v27 = v24;
  v4 = lazy protocol witness table accessor for type PaymentsErrorTemplateProvider<INSearchForAccountsIntent, INSearchForAccountsIntentResponse> and conformance PaymentsErrorTemplateProvider<A, B>();
  v26 = SearchForAccountsUnsupportedValueStrategy.__allocating_init<A>(globals:catFamily:commonLabelsProvider:contactResolver:errorProvider:)(v23, v18, v19, v20, v21, v22, v4);

  v37[5] = v26;

  __swift_destroy_boxed_opaque_existential_0(v25);

  return v26;
}

uint64_t SearchForAccountsUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 240) = v2;
  *(v3 + 232) = a2;
  *(v3 + 224) = a1;
  *(v3 + 168) = v3;
  *(v3 + 176) = 0;
  *(v3 + 184) = 0;
  *(v3 + 136) = 0;
  *(v3 + 144) = 0;
  *(v3 + 392) = 0;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64) + 15;
  *(v3 + 248) = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15;
  *(v3 + 256) = swift_task_alloc();
  v6 = type metadata accessor for TemplatingResult();
  *(v3 + 264) = v6;
  v13 = *(v6 - 8);
  *(v3 + 272) = v13;
  v7 = *(v13 + 64) + 15;
  *(v3 + 280) = swift_task_alloc();
  v8 = type metadata accessor for ParameterIdentifier();
  *(v3 + 288) = v8;
  v14 = *(v8 - 8);
  *(v3 + 296) = v14;
  v9 = *(v14 + 64) + 15;
  *(v3 + 304) = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  *(v3 + 312) = v10;
  v15 = *(v10 - 8);
  *(v3 + 320) = v15;
  v16 = *(v15 + 64);
  *(v3 + 328) = swift_task_alloc();
  *(v3 + 336) = swift_task_alloc();
  *(v3 + 344) = swift_task_alloc();
  *(v3 + 176) = a2;
  *(v3 + 184) = v2;
  v11 = *(v3 + 168);

  return MEMORY[0x2822009F8](SearchForAccountsUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:), 0);
}

uint64_t SearchForAccountsUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:)()
{
  v100 = v0;
  v1 = v0[43];
  v84 = v0[40];
  v85 = v0[39];
  v0[21] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  v86 = *(v84 + 16);
  v86(v1, v2, v85);
  v88 = Logger.logObject.getter();
  v87 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v89 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v88, v87))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v80 = createStorage<A>(capacity:type:)(0);
    v81 = createStorage<A>(capacity:type:)(0);
    *(v83 + 192) = buf;
    *(v83 + 200) = v80;
    *(v83 + 208) = v81;
    serialize(_:at:)(0, (v83 + 192));
    serialize(_:at:)(0, (v83 + 192));
    *(v83 + 216) = v89;
    v82 = swift_task_alloc();
    v82[2] = v83 + 192;
    v82[3] = v83 + 200;
    v82[4] = v83 + 208;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v88, v87, "#SearchForAccountsUnsupportedValueStrategy makeUnsupportedValueOutput", buf, 2u);
    destroyStorage<A>(_:count:)(v80, 0, v78);
    destroyStorage<A>(_:count:)(v81, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  v70 = *(v83 + 344);
  v71 = *(v83 + 312);
  v74 = *(v83 + 304);
  v75 = *(v83 + 288);
  v3 = *(v83 + 232);
  v69 = *(v83 + 320);
  v73 = *(v83 + 296);
  MEMORY[0x277D82BD8](v88);
  v72 = *(v69 + 8);
  v72(v70, v71);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo25INSearchForAccountsIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo25INSearchForAccountsIntentCGMR);
  ParameterResolutionRecord.parameter.getter();
  rawValue._countAndFlagsBits = ParameterIdentifier.name.getter();
  rawValue._object = v4;
  *(v83 + 352) = v4;
  *(v83 + 136) = rawValue._countAndFlagsBits;
  *(v83 + 144) = v4;
  (*(v73 + 8))(v74, v75);

  v5.value = SearchForAccountsSlots.init(rawValue:)(rawValue).value;
  value = v5.value;
  if (v5.value == SiriPaymentsIntents_SearchForAccountsSlots_unknownDefault)
  {
    v15 = *(v83 + 328);
    v42 = *(v83 + 312);
    v16 = Logger.payments.unsafeMutableAddressor();
    v86(v15, v16, v42);

    v43 = swift_allocObject();
    *(v43 + 16) = rawValue;
    log = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    v45 = swift_allocObject();
    *(v45 + 16) = 32;
    v46 = swift_allocObject();
    *(v46 + 16) = 8;
    v44 = swift_allocObject();
    *(v44 + 16) = partial apply for implicit closure #1 in static Logger.logForCrash(_:);
    *(v44 + 24) = v43;
    v47 = swift_allocObject();
    *(v47 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v47 + 24) = v44;
    _allocateUninitializedArray<A>(_:)();
    v48 = v17;

    *v48 = partial apply for closure #1 in OSLogArguments.append(_:);
    v48[1] = v45;

    v48[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v48[3] = v46;

    v48[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v48[5] = v47;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(log, v50))
    {
      v39 = static UnsafeMutablePointer.allocate(capacity:)();
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v40 = createStorage<A>(capacity:type:)(0);
      v41 = createStorage<A>(capacity:type:)(1);
      v90 = v39;
      v91 = v40;
      v92 = v41;
      serialize(_:at:)(2, &v90);
      serialize(_:at:)(1, &v90);
      v93 = partial apply for closure #1 in OSLogArguments.append(_:);
      v94 = v45;
      closure #1 in osLogInternal(_:log:type:)(&v93, &v90, &v91, &v92);
      v93 = partial apply for closure #1 in OSLogArguments.append(_:);
      v94 = v46;
      closure #1 in osLogInternal(_:log:type:)(&v93, &v90, &v91, &v92);
      v93 = partial apply for closure #1 in OSLogArguments.append(_:);
      v94 = v47;
      closure #1 in osLogInternal(_:log:type:)(&v93, &v90, &v91, &v92);
      _os_log_impl(&dword_2686B1000, log, v50, "#SearchForAccountsUnsupportedValueStrategy makeUnsupportedValueOutput parameter name %s was not a known slot", v39, 0xCu);
      destroyStorage<A>(_:count:)(v40, 0, v38);
      destroyStorage<A>(_:count:)(v41, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v39, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v26 = *(v83 + 328);
    v27 = *(v83 + 312);
    MEMORY[0x277D82BD8](log);
    v72(v26, v27);

    *(v83 + 152) = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    *(v83 + 160) = v18;
    countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](countAndFlagsBits);

    type metadata accessor for INSearchForAccountsIntent();
    DefaultStringInterpolation.appendInterpolation(_:)();
    v20 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](v20);

    v29 = *(v83 + 152);
    v28 = *(v83 + 160);

    outlined destroy of String.UTF8View(v83 + 152);
    v31 = MEMORY[0x26D620710](v29, v28);
    v30 = v21;
    lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
    swift_allocError();
    *v22 = rawValue;
    *(v22 + 16) = v31;
    *(v22 + 24) = v30;
    *(v22 + 32) = 0;
    *(v22 + 40) = 0;
    *(v22 + 48) = 2;
    swift_willThrow();

    v23 = *(v83 + 344);
    v32 = *(v83 + 336);
    v33 = *(v83 + 328);
    v34 = *(v83 + 304);
    v35 = *(v83 + 280);
    v36 = *(v83 + 256);
    v37 = *(v83 + 248);

    v24 = *(*(v83 + 168) + 8);
    v25 = *(v83 + 168);

    return v24();
  }

  else
  {
    v6 = *(v83 + 336);
    v60 = *(v83 + 312);
    *(v83 + 392) = v5;
    v7 = Logger.payments.unsafeMutableAddressor();
    v86(v6, v7, v60);
    v61 = swift_allocObject();
    *(v61 + 16) = value;
    oslog = Logger.logObject.getter();
    v68 = static os_log_type_t.debug.getter();
    v63 = swift_allocObject();
    *(v63 + 16) = 32;
    v64 = swift_allocObject();
    *(v64 + 16) = 8;
    v62 = swift_allocObject();
    *(v62 + 16) = partial apply for implicit closure #2 in SearchForAccountsNeedsValueStrategy.parseValueResponse(input:resolveRecord:);
    *(v62 + 24) = v61;
    v65 = swift_allocObject();
    *(v65 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v65 + 24) = v62;
    _allocateUninitializedArray<A>(_:)();
    v66 = v8;

    *v66 = partial apply for closure #1 in OSLogArguments.append(_:);
    v66[1] = v63;

    v66[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v66[3] = v64;

    v66[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v66[5] = v65;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(oslog, v68))
    {
      v57 = static UnsafeMutablePointer.allocate(capacity:)();
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v58 = createStorage<A>(capacity:type:)(0);
      v59 = createStorage<A>(capacity:type:)(1);
      v95 = v57;
      v96 = v58;
      v97 = v59;
      serialize(_:at:)(2, &v95);
      serialize(_:at:)(1, &v95);
      v98 = partial apply for closure #1 in OSLogArguments.append(_:);
      v99 = v63;
      closure #1 in osLogInternal(_:log:type:)(&v98, &v95, &v96, &v97);
      v98 = partial apply for closure #1 in OSLogArguments.append(_:);
      v99 = v64;
      closure #1 in osLogInternal(_:log:type:)(&v98, &v95, &v96, &v97);
      v98 = partial apply for closure #1 in OSLogArguments.append(_:);
      v99 = v65;
      closure #1 in osLogInternal(_:log:type:)(&v98, &v95, &v96, &v97);
      _os_log_impl(&dword_2686B1000, oslog, v68, "#SearchForAccountsUnsupportedValueStrategy Slot: %s", v57, 0xCu);
      destroyStorage<A>(_:count:)(v58, 0, v56);
      destroyStorage<A>(_:count:)(v59, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v57, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v51 = *(v83 + 336);
    v52 = *(v83 + 312);
    v54 = *(v83 + 256);
    v53 = *(v83 + 240);
    v9 = *(v83 + 232);
    MEMORY[0x277D82BD8](oslog);
    v72(v51, v52);

    *(v83 + 360) = *(v53 + 16);

    ParameterResolutionRecord.app.getter();
    v55 = App.sirikitApp.getter();
    *(v83 + 368) = v55;

    SearchForAccountsSlots.rawValue.getter(value);
    SpeakableString.init(print:speak:)();
    v10 = type metadata accessor for SpeakableString();
    (*(*(v10 - 8) + 56))(v54, 0, 1);
    v11 = swift_task_alloc();
    *(v83 + 376) = v11;
    *v11 = *(v83 + 168);
    v11[1] = SearchForAccountsUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
    v12 = *(v83 + 280);
    v13 = *(v83 + 256);

    return SearchForAccountsCATs.unsupportedSlotValue(app:slot:)(v12, v55, v13);
  }
}

{
  v9 = *v1;
  v2 = *(*v1 + 376);
  v9[21] = *v1;
  v10 = v9 + 21;
  v9[48] = v0;

  if (v0)
  {
    v5 = *v10;
    v4 = SearchForAccountsUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
  }

  else
  {
    v7 = v9[46];
    v8 = v9[45];
    outlined destroy of SpeakableString?(v9[32]);

    v3 = *v10;
    v4 = SearchForAccountsUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
  }

  return MEMORY[0x2822009F8](v4, 0);
}

{
  v11 = v0[44];
  v12 = v0[43];
  v13 = v0[42];
  v14 = v0[41];
  v15 = v0[38];
  v16 = v0[35];
  v9 = v0[34];
  v10 = v0[33];
  v17 = v0[32];
  v18 = v0[31];
  v7 = v0[30];
  v8 = v0[28];
  v0[21] = v0;

  outlined init with copy of GlobalsProviding(v7 + 104, (v0 + 2));

  v6 = v0[5];
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v6);
  (*(v5 + 16))(v6);

  BaseStrategy.ttsEnabled.getter();

  v1 = type metadata accessor for NLContextUpdate();
  (*(*(v1 - 8) + 56))(v18, 1);
  v0[12] = 0;
  v0[13] = 0;
  v0[14] = 0;
  v0[15] = 0;
  v0[16] = 0;
  default argument 3 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  _swift_stdlib_has_malloc_size();
  default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v8[3] = type metadata accessor for AceOutput();
  v8[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v8);
  static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of FlowActivity?(v0 + 12);
  outlined destroy of NLContextUpdate?(v18);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  (*(v9 + 8))(v16, v10);

  v2 = *(v0[21] + 8);
  v3 = v0[21];

  return v2();
}

{
  v7 = v0[46];
  v8 = v0[45];
  v9 = v0[44];
  v1 = v0[32];
  v0[21] = v0;
  outlined destroy of SpeakableString?(v1);

  v2 = v0[48];
  v3 = v0[43];
  v10 = v0[42];
  v11 = v0[41];
  v12 = v0[38];
  v13 = v0[35];
  v14 = v0[32];
  v15 = v0[31];

  v4 = *(v0[21] + 8);
  v5 = v0[21];

  return v4();
}

uint64_t SearchForAccountsUnsupportedValueStrategy.makeUpdatedIntentForUnsupportedValue(resolveRecord:)(uint64_t a1)
{
  v2[9] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v3 = type metadata accessor for Logger();
  v2[10] = v3;
  v7 = *(v3 - 8);
  v2[11] = v7;
  v4 = *(v7 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[3] = a1;
  v2[4] = v1;
  v5 = v2[2];

  return MEMORY[0x2822009F8](SearchForAccountsUnsupportedValueStrategy.makeUpdatedIntentForUnsupportedValue(resolveRecord:), 0);
}

uint64_t SearchForAccountsUnsupportedValueStrategy.makeUpdatedIntentForUnsupportedValue(resolveRecord:)()
{
  v1 = v0[12];
  v17 = v0[11];
  v18 = v0[10];
  v0[2] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  (*(v17 + 16))(v1, v2, v18);
  v20 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v21 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v20, v19))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v13 = createStorage<A>(capacity:type:)(0);
    v14 = createStorage<A>(capacity:type:)(0);
    *(v16 + 40) = buf;
    *(v16 + 48) = v13;
    *(v16 + 56) = v14;
    serialize(_:at:)(0, (v16 + 40));
    serialize(_:at:)(0, (v16 + 40));
    *(v16 + 64) = v21;
    v15 = swift_task_alloc();
    v15[2] = v16 + 40;
    v15[3] = v16 + 48;
    v15[4] = v16 + 56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v20, v19, "#SearchForAccountsUnsupportedValueStrategy makeUpdatedIntentForUnsupportedValue", buf, 2u);
    destroyStorage<A>(_:count:)(v13, 0, v11);
    destroyStorage<A>(_:count:)(v14, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  v9 = *(v16 + 96);
  v8 = *(v16 + 80);
  v3 = *(v16 + 72);
  v7 = *(v16 + 88);
  MEMORY[0x277D82BD8](v20);
  (*(v7 + 8))(v9, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo25INSearchForAccountsIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo25INSearchForAccountsIntentCGMR);
  v10 = ParameterResolutionRecord.intent.getter();

  v4 = *(*(v16 + 16) + 8);
  v5 = *(v16 + 16);

  return v4(v10);
}

uint64_t sub_268855EF0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t SearchForAccountsUnsupportedValueStrategy.init<A>(globals:catFamily:commonLabelsProvider:contactResolver:errorProvider:)(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a1;
  v26 = a2;
  v25 = a3;
  v24 = a4;
  v20 = a5;
  v23 = a6;
  v18 = a7;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v38 = a6;
  v21 = *(a6 - 8);
  v22 = a6 - 8;
  v14 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v13 - v14;
  v36 = MEMORY[0x28223BE20](a1);
  v35 = v8;
  v34 = v9;
  v33 = v10;
  v32 = v11;
  v37 = v7;
  v19 = v31;
  outlined init with copy of GlobalsProviding(v36, v31);

  v15 = v30;
  outlined init with copy of GlobalsProviding(v25, v30);
  v16 = v29;
  outlined init with copy of GlobalsProviding(v24, v29);
  (*(v21 + 16))(v17, v20, v23);
  v28 = BaseStrategy.init<A>(globals:catFamily:commonLabelsProvider:contactResolver:errorProvider:)(v19, v26, v15, v16, v17, v23, v18);

  v37 = v28;
  (*(v21 + 8))(v20, v23);
  __swift_destroy_boxed_opaque_existential_0(v24);
  __swift_destroy_boxed_opaque_existential_0(v25);

  __swift_destroy_boxed_opaque_existential_0(v27);

  return v28;
}

uint64_t protocol witness for UnsupportedValueFlowStrategyAsync.makeUnsupportedValueOutput(resolveRecord:) in conformance SearchForAccountsUnsupportedValueStrategy(uint64_t a1, uint64_t a2)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v4 = *v2;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return SearchForAccountsUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:)(a1, a2);
}

uint64_t protocol witness for UnsupportedValueFlowStrategyAsync.makeUpdatedIntentForUnsupportedValue(resolveRecord:) in conformance SearchForAccountsUnsupportedValueStrategy(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = protocol witness for TCCResponseProviding.promptToEnableApp(appDisplayInfo:deviceState:catOverrides:) in conformance TCCResponses;

  return SearchForAccountsUnsupportedValueStrategy.makeUpdatedIntentForUnsupportedValue(resolveRecord:)(a1);
}

uint64_t protocol witness for UnsupportedValueFlowStrategyAsync.makeLaunchAppWithIntentOutput(resolveRecord:) in conformance SearchForAccountsUnsupportedValueStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4;
  *(v4 + 16) = v4;
  v5 = *(MEMORY[0x277D5B4C8] + 4);
  v6 = swift_task_alloc();
  *(v9 + 24) = v6;
  v7 = type metadata accessor for SearchForAccountsUnsupportedValueStrategy();
  *v6 = *(v9 + 16);
  v6[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821B9E00](a1, a2, v7, a4);
}

uint64_t sub_2688563DC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26885641C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2688564E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268856520()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t type metadata accessor for SearchForAccountsUnsupportedValueStrategy()
{
  v1 = type metadata singleton initialization cache for SearchForAccountsUnsupportedValueStrategy;
  if (!type metadata singleton initialization cache for SearchForAccountsUnsupportedValueStrategy)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t RequestPaymentNeedsValueStrategy.__allocating_init()()
{
  v31 = 0;
  v17 = 0;
  v7 = (*(*(type metadata accessor for CATOption() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v16 = &v6 - v7;
  v12 = type metadata accessor for Globals();
  v8 = v36;
  default argument 0 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)(v36);
  v9 = &v35;
  default argument 1 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v10 = &v34;
  default argument 2 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v11 = &v33;
  default argument 3 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v0 = Globals.__allocating_init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)(v8, v9, v10, v11);
  v25 = v37;
  v37[3] = v12;
  v37[4] = &protocol witness table for Globals;
  v37[0] = v0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriPaymentsIntents0B21ErrorTemplateProviderCySo22INRequestPaymentIntentCSo0ghI8ResponseCGMd, &_s19SiriPaymentsIntents0B21ErrorTemplateProviderCySo22INRequestPaymentIntentCSo0ghI8ResponseCGMR);
  v15 = v32;
  outlined init with copy of GlobalsProviding(v25, v32);
  type metadata accessor for PaymentsBaseCATs();
  default argument 0 of CATWrapper.init(options:globals:)();
  v14 = CATWrapper.__allocating_init(options:globals:)();
  v13 = type metadata accessor for INRequestPaymentIntent();
  v1 = type metadata accessor for INRequestPaymentIntentResponse();
  v2 = default argument 2 of PaymentsErrorTemplateProvider.init(globals:catFamily:searchForAccountsCATs:)(v13, v1);
  v24 = PaymentsErrorTemplateProvider.__allocating_init(globals:catFamily:searchForAccountsCATs:)(v15, v14, v2);
  v31 = v24;
  v23 = v30;
  outlined init with copy of GlobalsProviding(v25, v30);
  type metadata accessor for RequestPaymentCATs();
  default argument 0 of CATWrapper.init(options:globals:)();
  v18 = CATWrapper.__allocating_init(options:globals:)();
  NSJSONWritingOptions.init(rawValue:)(v18);
  v19 = v29;
  v29[3] = &type metadata for CommonLabelsProvider;
  v29[4] = &protocol witness table for CommonLabelsProvider;
  v3 = type metadata accessor for SiriKitContactResolver();
  v20 = v28;
  v28[3] = v3;
  v28[4] = &protocol witness table for SiriKitContactResolver;
  __swift_allocate_boxed_opaque_existential_1(v28);
  SiriKitContactResolver.init()();

  v21 = &v27;
  v27 = v24;
  v4 = lazy protocol witness table accessor for type PaymentsErrorTemplateProvider<INRequestPaymentIntent, INRequestPaymentIntentResponse> and conformance PaymentsErrorTemplateProvider<A, B>();
  v26 = RequestPaymentNeedsValueStrategy.__allocating_init<A>(globals:catFamily:commonLabelsProvider:contactResolver:errorProvider:)(v23, v18, v19, v20, v21, v22, v4);

  v37[5] = v26;

  __swift_destroy_boxed_opaque_existential_0(v25);

  return v26;
}

uint64_t RequestPaymentNeedsValueStrategy.actionForInput(_:resolveRecord:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a2;
  v28 = a1;
  v26 = a3;
  v39 = 0;
  v49 = 0;
  v48 = 0;
  v47 = 0;
  v27 = 0;
  v36 = type metadata accessor for Logger();
  v30 = v36;
  v31 = *(v36 - 8);
  v35 = v31;
  v32 = v31;
  v33 = *(v31 + 64);
  v3 = &v10 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v3;
  v49 = MEMORY[0x28223BE20](v28);
  v48 = v4;
  v47 = v5;
  v6 = Logger.payments.unsafeMutableAddressor();
  (*(v35 + 16))(v3, v6, v36);
  v41 = Logger.logObject.getter();
  v37 = v41;
  v40 = static os_log_type_t.debug.getter();
  v38 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v42 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v41, v40))
  {
    v7 = v27;
    v17 = static UnsafeMutablePointer.allocate(capacity:)();
    v13 = v17;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v15 = 0;
    v18 = createStorage<A>(capacity:type:)(0);
    v16 = v18;
    v19 = createStorage<A>(capacity:type:)(v15);
    v46 = v17;
    v45 = v18;
    v44 = v19;
    v20 = 0;
    v21 = &v46;
    serialize(_:at:)(0, &v46);
    serialize(_:at:)(v20, v21);
    v43 = v42;
    v22 = &v10;
    MEMORY[0x28223BE20](&v10);
    v23 = &v10 - 6;
    *(&v10 - 4) = v8;
    *(&v10 - 3) = &v45;
    *(&v10 - 2) = &v44;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v25 = v7;
    if (v7)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_2686B1000, v37, v38, "#RequestPaymentNeedsValueStrategy actionForInput.", v13, 2u);
      v11 = 0;
      destroyStorage<A>(_:count:)(v16, 0, v14);
      destroyStorage<A>(_:count:)(v19, v11, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v13, MEMORY[0x277D84B78]);

      v12 = v25;
    }
  }

  else
  {

    v12 = v27;
  }

  (*(v32 + 8))(v34, v30);

  BaseStrategy.actionForInput(_:)(v28, v26);
}

uint64_t RequestPaymentNeedsValueStrategy.makePromptForValue(resolveRecord:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 208) = v2;
  *(v3 + 200) = a2;
  *(v3 + 192) = a1;
  *(v3 + 136) = v3;
  *(v3 + 144) = 0;
  *(v3 + 152) = 0;
  *(v3 + 368) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo22INRequestPaymentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo22INRequestPaymentIntentCGMR);
  *(v3 + 216) = v4;
  v14 = *(v4 - 8);
  *(v3 + 224) = v14;
  *(v3 + 232) = *(v14 + 64);
  *(v3 + 240) = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64) + 15;
  *(v3 + 248) = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15;
  *(v3 + 256) = swift_task_alloc();
  v7 = type metadata accessor for TemplatingResult();
  *(v3 + 264) = v7;
  v15 = *(v7 - 8);
  *(v3 + 272) = v15;
  v8 = *(v15 + 64) + 15;
  *(v3 + 280) = swift_task_alloc();
  v9 = type metadata accessor for ParameterIdentifier();
  *(v3 + 288) = v9;
  v16 = *(v9 - 8);
  *(v3 + 296) = v16;
  v10 = *(v16 + 64) + 15;
  *(v3 + 304) = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  *(v3 + 312) = v11;
  v17 = *(v11 - 8);
  *(v3 + 320) = v17;
  v18 = *(v17 + 64);
  *(v3 + 328) = swift_task_alloc();
  *(v3 + 336) = swift_task_alloc();
  *(v3 + 144) = a2;
  *(v3 + 152) = v2;
  v12 = *(v3 + 136);

  return MEMORY[0x2822009F8](RequestPaymentNeedsValueStrategy.makePromptForValue(resolveRecord:), 0);
}

uint64_t RequestPaymentNeedsValueStrategy.makePromptForValue(resolveRecord:)()
{
  v82 = v0;
  v1 = v0[42];
  v71 = v0[40];
  v72 = v0[39];
  v0[17] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  v73 = *(v71 + 16);
  v73(v1, v2, v72);
  v75 = Logger.logObject.getter();
  v74 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v76 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v75, v74))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v67 = createStorage<A>(capacity:type:)(0);
    v68 = createStorage<A>(capacity:type:)(0);
    *(v70 + 160) = buf;
    *(v70 + 168) = v67;
    *(v70 + 176) = v68;
    serialize(_:at:)(0, (v70 + 160));
    serialize(_:at:)(0, (v70 + 160));
    *(v70 + 184) = v76;
    v69 = swift_task_alloc();
    v69[2] = v70 + 160;
    v69[3] = v70 + 168;
    v69[4] = v70 + 176;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v75, v74, "#RequestPaymentNeedsValueStrategy makePromptForValue", buf, 2u);
    destroyStorage<A>(_:count:)(v67, 0, v65);
    destroyStorage<A>(_:count:)(v68, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  v55 = *(v70 + 336);
  v56 = *(v70 + 312);
  v60 = *(v70 + 304);
  v61 = *(v70 + 288);
  v58 = *(v70 + 216);
  v3 = *(v70 + 200);
  v54 = *(v70 + 320);
  v59 = *(v70 + 296);
  MEMORY[0x277D82BD8](v75);
  v57 = *(v54 + 8);
  v57(v55, v56);
  ParameterResolutionRecord.parameter.getter();
  rawValue._countAndFlagsBits = ParameterIdentifier.name.getter();
  rawValue._object = v4;
  v62 = *(v59 + 8);
  v62(v60, v61);
  v5.value = RequestPaymentSlots.init(rawValue:)(rawValue).value;
  value = v5.value;
  *(v70 + 370) = v5;
  if (v5.value == SiriPaymentsIntents_RequestPaymentSlots_unknownDefault)
  {
    v11 = *(v70 + 328);
    v37 = *(v70 + 312);
    v42 = *(v70 + 240);
    v40 = *(v70 + 232);
    v43 = *(v70 + 216);
    v39 = *(v70 + 200);
    v38 = *(v70 + 224);
    v12 = Logger.payments.unsafeMutableAddressor();
    v73(v11, v12, v37);
    (*(v38 + 16))(v42, v39, v43);
    v41 = (*(v38 + 80) + 16) & ~*(v38 + 80);
    v44 = swift_allocObject();
    (*(v38 + 32))(v44 + v41, v42, v43);
    oslog = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    v46 = swift_allocObject();
    *(v46 + 16) = 32;
    v47 = swift_allocObject();
    *(v47 + 16) = 8;
    v45 = swift_allocObject();
    *(v45 + 16) = partial apply for implicit closure #1 in RequestPaymentNeedsValueStrategy.makePromptForValue(resolveRecord:);
    *(v45 + 24) = v44;
    v48 = swift_allocObject();
    *(v48 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v48 + 24) = v45;
    _allocateUninitializedArray<A>(_:)();
    v49 = v13;

    *v49 = partial apply for closure #1 in OSLogArguments.append(_:);
    v49[1] = v46;

    v49[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v49[3] = v47;

    v49[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v49[5] = v48;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(oslog, v51))
    {
      v34 = static UnsafeMutablePointer.allocate(capacity:)();
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v35 = createStorage<A>(capacity:type:)(0);
      v36 = createStorage<A>(capacity:type:)(1);
      v77 = v34;
      v78 = v35;
      v79 = v36;
      serialize(_:at:)(2, &v77);
      serialize(_:at:)(1, &v77);
      v80 = partial apply for closure #1 in OSLogArguments.append(_:);
      v81 = v46;
      closure #1 in osLogInternal(_:log:type:)(&v80, &v77, &v78, &v79);
      v80 = partial apply for closure #1 in OSLogArguments.append(_:);
      v81 = v47;
      closure #1 in osLogInternal(_:log:type:)(&v80, &v77, &v78, &v79);
      v80 = partial apply for closure #1 in OSLogArguments.append(_:);
      v81 = v48;
      closure #1 in osLogInternal(_:log:type:)(&v80, &v77, &v78, &v79);
      _os_log_impl(&dword_2686B1000, oslog, v51, "#RequestPaymentNeedsValueFlowStrategy unknown parameter: %s", v34, 0xCu);
      destroyStorage<A>(_:count:)(v35, 0, v33);
      destroyStorage<A>(_:count:)(v36, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v34, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v20 = *(v70 + 328);
    v21 = *(v70 + 312);
    v23 = *(v70 + 304);
    v24 = *(v70 + 288);
    v22 = *(v70 + 216);
    v14 = *(v70 + 200);
    MEMORY[0x277D82BD8](oslog);
    v57(v20, v21);
    ParameterResolutionRecord.parameter.getter();
    v26 = ParameterIdentifier.name.getter();
    v25 = v15;
    v62(v23, v24);
    lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
    swift_allocError();
    *v16 = v26;
    *(v16 + 8) = v25;
    *(v16 + 16) = 0;
    *(v16 + 24) = 0;
    *(v16 + 32) = 0;
    *(v16 + 40) = 0;
    *(v16 + 48) = 14;
    swift_willThrow();
    v17 = *(v70 + 336);
    v27 = *(v70 + 328);
    v28 = *(v70 + 304);
    v29 = *(v70 + 280);
    v30 = *(v70 + 256);
    v31 = *(v70 + 248);
    v32 = *(v70 + 240);

    v18 = *(*(v70 + 136) + 8);
    v19 = *(v70 + 136);

    return v18();
  }

  else
  {
    v53 = *(v70 + 256);
    v52 = *(v70 + 208);
    *(v70 + 368) = v5;

    *(v70 + 344) = *(v52 + 16);

    *(v70 + 369) = value;
    lazy protocol witness table accessor for type RequestPaymentSlots and conformance RequestPaymentSlots();
    lazy protocol witness table accessor for type RequestPaymentSlots and conformance RequestPaymentSlots();
    Slot<>.propertyName.getter(&type metadata for RequestPaymentSlots, &protocol witness table for RequestPaymentSlots);
    String.toSpeakableString.getter();

    v6 = type metadata accessor for SpeakableString();
    (*(*(v6 - 8) + 56))(v53, 0, 1);
    v7 = swift_task_alloc();
    *(v70 + 352) = v7;
    *v7 = *(v70 + 136);
    v7[1] = RequestPaymentNeedsValueStrategy.makePromptForValue(resolveRecord:);
    v8 = *(v70 + 280);
    v9 = *(v70 + 256);

    return RequestPaymentCATs.promptForSlotValue(slot:)(v8, v9);
  }
}

{
  v8 = *v1;
  v2 = *(*v1 + 352);
  v8[17] = *v1;
  v9 = v8 + 17;
  v8[45] = v0;

  if (v0)
  {
    v5 = *v9;
    v4 = RequestPaymentNeedsValueStrategy.makePromptForValue(resolveRecord:);
  }

  else
  {
    v7 = v8[43];
    outlined destroy of SpeakableString?(v8[32]);

    v3 = *v9;
    v4 = RequestPaymentNeedsValueStrategy.makePromptForValue(resolveRecord:);
  }

  return MEMORY[0x2822009F8](v4, 0);
}

{
  v8 = *(v0 + 370);
  v12 = *(v0 + 336);
  v13 = *(v0 + 328);
  v14 = *(v0 + 304);
  v15 = *(v0 + 280);
  v10 = *(v0 + 272);
  v11 = *(v0 + 264);
  v16 = *(v0 + 256);
  v17 = *(v0 + 248);
  v18 = *(v0 + 240);
  v7 = *(v0 + 208);
  v9 = *(v0 + 192);
  *(v0 + 136) = v0;

  outlined init with copy of GlobalsProviding(v7 + 104, v0 + 16);

  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v6);
  (*(v5 + 16))(v6);

  BaseStrategy.ttsEnabled.getter();

  static PaymentsContextProvider.needsValueContextUpdate(value:)(v8, v17);
  v1 = type metadata accessor for NLContextUpdate();
  (*(*(v1 - 8) + 56))(v17, 0, 1);
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  default argument 3 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  _swift_stdlib_has_malloc_size();
  _swift_stdlib_has_malloc_size();
  default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v9[3] = type metadata accessor for AceOutput();
  v9[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v9);
  static AceOutputHelper.makeClarificationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of FlowActivity?((v0 + 96));
  outlined destroy of NLContextUpdate?(v17);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  (*(v10 + 8))(v15, v11);

  v2 = *(*(v0 + 136) + 8);
  v3 = *(v0 + 136);

  return v2();
}

{
  v7 = v0[43];
  v1 = v0[32];
  v0[17] = v0;
  outlined destroy of SpeakableString?(v1);

  v2 = v0[45];
  v3 = v0[42];
  v8 = v0[41];
  v9 = v0[38];
  v10 = v0[35];
  v11 = v0[32];
  v12 = v0[31];
  v13 = v0[30];

  v4 = *(v0[17] + 8);
  v5 = v0[17];

  return v4();
}

uint64_t implicit closure #1 in RequestPaymentNeedsValueStrategy.makePromptForValue(resolveRecord:)()
{
  v7 = type metadata accessor for ParameterIdentifier();
  v4 = *(v7 - 8);
  v5 = v7 - 8;
  v3 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v6 = &v2 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo22INRequestPaymentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo22INRequestPaymentIntentCGMR);
  ParameterResolutionRecord.parameter.getter();
  v8 = ParameterIdentifier.name.getter();
  v9 = v0;
  (*(v4 + 8))(v6, v7);
  return v8;
}

uint64_t RequestPaymentNeedsValueStrategy.parseValueResponse(input:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 496) = v3;
  *(v4 + 488) = a3;
  *(v4 + 480) = a2;
  *(v4 + 472) = a1;
  *(v4 + 280) = v4;
  *(v4 + 288) = 0;
  *(v4 + 296) = 0;
  *(v4 + 304) = 0;
  *(v4 + 768) = 0;
  *(v4 + 344) = 0;
  *(v4 + 352) = 0;
  *(v4 + 392) = 0;
  v5 = type metadata accessor for Parse.DirectInvocation();
  *(v4 + 504) = v5;
  v14 = *(v5 - 8);
  *(v4 + 512) = v14;
  *(v4 + 520) = *(v14 + 64);
  *(v4 + 528) = swift_task_alloc();
  *(v4 + 536) = swift_task_alloc();
  v6 = type metadata accessor for Parse();
  *(v4 + 544) = v6;
  v15 = *(v6 - 8);
  *(v4 + 552) = v15;
  v16 = *(v15 + 64);
  *(v4 + 560) = swift_task_alloc();
  *(v4 + 568) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo22INRequestPaymentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo22INRequestPaymentIntentCGMR);
  *(v4 + 576) = v7;
  v17 = *(v7 - 8);
  *(v4 + 584) = v17;
  *(v4 + 592) = *(v17 + 64);
  *(v4 + 600) = swift_task_alloc();
  v8 = type metadata accessor for Input();
  *(v4 + 608) = v8;
  v18 = *(v8 - 8);
  *(v4 + 616) = v18;
  *(v4 + 624) = *(v18 + 64);
  *(v4 + 632) = swift_task_alloc();
  v9 = type metadata accessor for ParameterIdentifier();
  *(v4 + 640) = v9;
  v19 = *(v9 - 8);
  *(v4 + 648) = v19;
  v10 = *(v19 + 64) + 15;
  *(v4 + 656) = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  *(v4 + 664) = v11;
  v20 = *(v11 - 8);
  *(v4 + 672) = v20;
  v21 = *(v20 + 64);
  *(v4 + 680) = swift_task_alloc();
  *(v4 + 688) = swift_task_alloc();
  *(v4 + 696) = swift_task_alloc();
  *(v4 + 704) = swift_task_alloc();
  *(v4 + 712) = swift_task_alloc();
  *(v4 + 720) = swift_task_alloc();
  *(v4 + 728) = swift_task_alloc();
  *(v4 + 736) = swift_task_alloc();
  *(v4 + 744) = swift_task_alloc();
  *(v4 + 752) = swift_task_alloc();
  *(v4 + 760) = swift_task_alloc();
  *(v4 + 288) = a2;
  *(v4 + 296) = a3;
  *(v4 + 304) = v3;
  v12 = *(v4 + 280);

  return MEMORY[0x2822009F8](RequestPaymentNeedsValueStrategy.parseValueResponse(input:resolveRecord:), 0);
}

uint64_t RequestPaymentNeedsValueStrategy.parseValueResponse(input:resolveRecord:)(uint64_t a1)
{
  v408 = v1;
  MEMORY[0x28223BE20](a1);
  v2 = *(v1 + 760);
  v355 = *(v1 + 672);
  v356 = *(v1 + 664);
  *(v1 + 280) = v1;
  v3 = Logger.payments.unsafeMutableAddressor();
  v357 = *(v355 + 16);
  v357(v2, v3, v356);
  oslog = Logger.logObject.getter();
  v358 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v360 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(oslog, v358))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v350 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v352 = createStorage<A>(capacity:type:)(0);
    v353 = createStorage<A>(capacity:type:)(0);
    *(v1 + 440) = buf;
    *(v1 + 448) = v352;
    *(v1 + 456) = v353;
    serialize(_:at:)(0, (v1 + 440));
    serialize(_:at:)(0, (v1 + 440));
    *(v1 + 464) = v360;
    v354 = swift_task_alloc();
    v354[2] = v1 + 440;
    v354[3] = v1 + 448;
    v354[4] = v1 + 456;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, oslog, v358, "#RequestPaymentNeedsValueStrategy parseValueResponse.", buf, 2u);
    destroyStorage<A>(_:count:)(v352, 0, v350);
    destroyStorage<A>(_:count:)(v353, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  v340 = *(v1 + 760);
  v341 = *(v1 + 664);
  v345 = *(v1 + 656);
  v346 = *(v1 + 640);
  v343 = *(v1 + 576);
  v4 = *(v1 + 488);
  v339 = *(v1 + 672);
  v344 = *(v1 + 648);
  MEMORY[0x277D82BD8](oslog);
  v342 = *(v339 + 8);
  v342(v340, v341);
  ParameterResolutionRecord.parameter.getter();
  rawValue._countAndFlagsBits = ParameterIdentifier.name.getter();
  rawValue._object = v5;
  v347 = *(v344 + 8);
  v347(v345, v346);
  v6.value = RequestPaymentSlots.init(rawValue:)(rawValue).value;
  value = v6.value;
  if (v6.value == SiriPaymentsIntents_RequestPaymentSlots_unknownDefault)
  {
    v58 = *(v1 + 680);
    v114 = *(v1 + 664);
    v119 = *(v1 + 600);
    v117 = *(v1 + 592);
    v120 = *(v1 + 576);
    v116 = *(v1 + 488);
    v115 = *(v1 + 584);
    v59 = Logger.payments.unsafeMutableAddressor();
    v357(v58, v59, v114);
    (*(v115 + 16))(v119, v116, v120);
    v118 = (*(v115 + 80) + 16) & ~*(v115 + 80);
    v121 = swift_allocObject();
    (*(v115 + 32))(v121 + v118, v119, v120);
    v127 = Logger.logObject.getter();
    v128 = static os_log_type_t.error.getter();
    v123 = swift_allocObject();
    *(v123 + 16) = 32;
    v124 = swift_allocObject();
    *(v124 + 16) = 8;
    v122 = swift_allocObject();
    *(v122 + 16) = partial apply for implicit closure #1 in RequestPaymentNeedsValueStrategy.makePromptForValue(resolveRecord:);
    *(v122 + 24) = v121;
    v125 = swift_allocObject();
    *(v125 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v125 + 24) = v122;
    _allocateUninitializedArray<A>(_:)();
    v126 = v60;

    *v126 = partial apply for closure #1 in OSLogArguments.append(_:);
    v126[1] = v123;

    v126[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v126[3] = v124;

    v126[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v126[5] = v125;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v127, v128))
    {
      v111 = static UnsafeMutablePointer.allocate(capacity:)();
      v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v112 = createStorage<A>(capacity:type:)(0);
      v113 = createStorage<A>(capacity:type:)(1);
      v361 = v111;
      v362 = v112;
      v363 = v113;
      serialize(_:at:)(2, &v361);
      serialize(_:at:)(1, &v361);
      v364 = partial apply for closure #1 in OSLogArguments.append(_:);
      v365 = v123;
      closure #1 in osLogInternal(_:log:type:)(&v364, &v361, &v362, &v363);
      v364 = partial apply for closure #1 in OSLogArguments.append(_:);
      v365 = v124;
      closure #1 in osLogInternal(_:log:type:)(&v364, &v361, &v362, &v363);
      v364 = partial apply for closure #1 in OSLogArguments.append(_:);
      v365 = v125;
      closure #1 in osLogInternal(_:log:type:)(&v364, &v361, &v362, &v363);
      _os_log_impl(&dword_2686B1000, v127, v128, "#RequestPaymentNeedsValueStrategy unknown parameter: %s", v111, 0xCu);
      destroyStorage<A>(_:count:)(v112, 0, v110);
      destroyStorage<A>(_:count:)(v113, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v111, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v92 = *(v1 + 760);
    v93 = *(v1 + 752);
    v94 = *(v1 + 744);
    v95 = *(v1 + 736);
    v96 = *(v1 + 728);
    v97 = *(v1 + 720);
    v98 = *(v1 + 712);
    v99 = *(v1 + 704);
    v100 = *(v1 + 696);
    v101 = *(v1 + 688);
    v102 = *(v1 + 680);
    v87 = *(v1 + 664);
    v103 = *(v1 + 656);
    v89 = *(v1 + 640);
    v104 = *(v1 + 632);
    v105 = *(v1 + 600);
    v88 = *(v1 + 576);
    v106 = *(v1 + 568);
    v107 = *(v1 + 560);
    v108 = *(v1 + 536);
    v109 = *(v1 + 528);
    v61 = *(v1 + 488);
    MEMORY[0x277D82BD8](v127);
    v342(v102, v87);
    ParameterResolutionRecord.parameter.getter();
    v91 = ParameterIdentifier.name.getter();
    v90 = v62;
    v347(v103, v89);
    lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
    swift_allocError();
    *v63 = v91;
    *(v63 + 8) = v90;
    *(v63 + 16) = 0;
    *(v63 + 24) = 0;
    *(v63 + 32) = 0;
    *(v63 + 40) = 0;
    *(v63 + 48) = 14;
    swift_willThrow();

    v64 = *(*(v1 + 280) + 8);
    v65 = *(v1 + 280);

    return v64();
  }

  else
  {
    v7 = *(v1 + 752);
    v324 = *(v1 + 664);
    v329 = *(v1 + 632);
    v327 = *(v1 + 624);
    v330 = *(v1 + 608);
    v326 = *(v1 + 480);
    v325 = *(v1 + 616);
    *(v1 + 768) = v6;
    v8 = Logger.payments.unsafeMutableAddressor();
    v357(v7, v8, v324);
    (*(v325 + 16))(v329, v326, v330);
    v328 = (*(v325 + 80) + 16) & ~*(v325 + 80);
    v331 = swift_allocObject();
    (*(v325 + 32))(v331 + v328, v329, v330);
    log = Logger.logObject.getter();
    v338 = static os_log_type_t.debug.getter();
    v333 = swift_allocObject();
    *(v333 + 16) = 32;
    v334 = swift_allocObject();
    *(v334 + 16) = 8;
    v332 = swift_allocObject();
    *(v332 + 16) = partial apply for implicit closure #2 in RequestPaymentNeedsValueStrategy.parseValueResponse(input:resolveRecord:);
    *(v332 + 24) = v331;
    v335 = swift_allocObject();
    *(v335 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v335 + 24) = v332;
    _allocateUninitializedArray<A>(_:)();
    v336 = v9;

    *v336 = partial apply for closure #1 in OSLogArguments.append(_:);
    v336[1] = v333;

    v336[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v336[3] = v334;

    v336[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v336[5] = v335;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(log, v338))
    {
      v321 = static UnsafeMutablePointer.allocate(capacity:)();
      v320 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v322 = createStorage<A>(capacity:type:)(0);
      v323 = createStorage<A>(capacity:type:)(1);
      v403 = v321;
      v404 = v322;
      v405 = v323;
      serialize(_:at:)(2, &v403);
      serialize(_:at:)(1, &v403);
      v406 = partial apply for closure #1 in OSLogArguments.append(_:);
      v407 = v333;
      closure #1 in osLogInternal(_:log:type:)(&v406, &v403, &v404, &v405);
      v406 = partial apply for closure #1 in OSLogArguments.append(_:);
      v407 = v334;
      closure #1 in osLogInternal(_:log:type:)(&v406, &v403, &v404, &v405);
      v406 = partial apply for closure #1 in OSLogArguments.append(_:);
      v407 = v335;
      closure #1 in osLogInternal(_:log:type:)(&v406, &v403, &v404, &v405);
      _os_log_impl(&dword_2686B1000, log, v338, "#RequestPaymentNeedsValueStrategy Parse: %s", v321, 0xCu);
      destroyStorage<A>(_:count:)(v322, 0, v320);
      destroyStorage<A>(_:count:)(v323, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v321, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v302 = *(v1 + 752);
    v10 = *(v1 + 744);
    v303 = *(v1 + 664);
    v309 = *(v1 + 600);
    v307 = *(v1 + 592);
    v310 = *(v1 + 576);
    v305 = *(v1 + 488);
    v304 = *(v1 + 584);
    MEMORY[0x277D82BD8](log);
    v342(v302, v303);
    v11 = Logger.payments.unsafeMutableAddressor();
    v357(v10, v11, v303);
    v306 = *(v304 + 16);
    v306(v309, v305, v310);
    v308 = *(v304 + 80);
    v312 = swift_allocObject();
    v311 = *(v304 + 32);
    v311(v312 + ((v308 + 16) & ~v308), v309, v310);
    v318 = Logger.logObject.getter();
    v319 = static os_log_type_t.debug.getter();
    v314 = swift_allocObject();
    *(v314 + 16) = 32;
    v315 = swift_allocObject();
    *(v315 + 16) = 8;
    v313 = swift_allocObject();
    *(v313 + 16) = partial apply for implicit closure #1 in RequestPaymentNeedsValueStrategy.makePromptForValue(resolveRecord:);
    *(v313 + 24) = v312;
    v316 = swift_allocObject();
    *(v316 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v316 + 24) = v313;
    _allocateUninitializedArray<A>(_:)();
    v317 = v12;

    *v317 = partial apply for closure #1 in OSLogArguments.append(_:);
    v317[1] = v314;

    v317[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v317[3] = v315;

    v317[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v317[5] = v316;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v318, v319))
    {
      v299 = static UnsafeMutablePointer.allocate(capacity:)();
      v298 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v300 = createStorage<A>(capacity:type:)(0);
      v301 = createStorage<A>(capacity:type:)(1);
      v398 = v299;
      v399 = v300;
      v400 = v301;
      serialize(_:at:)(2, &v398);
      serialize(_:at:)(1, &v398);
      v401 = partial apply for closure #1 in OSLogArguments.append(_:);
      v402 = v314;
      closure #1 in osLogInternal(_:log:type:)(&v401, &v398, &v399, &v400);
      v401 = partial apply for closure #1 in OSLogArguments.append(_:);
      v402 = v315;
      closure #1 in osLogInternal(_:log:type:)(&v401, &v398, &v399, &v400);
      v401 = partial apply for closure #1 in OSLogArguments.append(_:);
      v402 = v316;
      closure #1 in osLogInternal(_:log:type:)(&v401, &v398, &v399, &v400);
      _os_log_impl(&dword_2686B1000, v318, v319, "#RequestPaymentNeedsValueStrategy parseResponseValue for slot: %s", v299, 0xCu);
      destroyStorage<A>(_:count:)(v300, 0, v298);
      destroyStorage<A>(_:count:)(v301, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v299, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v293 = *(v1 + 744);
    v294 = *(v1 + 664);
    v296 = *(v1 + 568);
    v297 = *(v1 + 544);
    v13 = *(v1 + 480);
    v295 = *(v1 + 552);
    MEMORY[0x277D82BD8](v318);
    v342(v293, v294);
    Input.parse.getter();
    if ((*(v295 + 88))(v296, v297) == *MEMORY[0x277D5C150])
    {
      v14 = *(v1 + 736);
      v278 = *(v1 + 664);
      v277 = *(v1 + 568);
      v15 = *(v1 + 544);
      v279 = *(v1 + 536);
      v282 = *(v1 + 528);
      v280 = *(v1 + 520);
      v283 = *(v1 + 504);
      v276 = *(v1 + 512);
      (*(*(v1 + 552) + 96))();
      v284 = *(v276 + 32);
      v284(v279, v277, v283);
      *(v1 + 352) = v279;
      v16 = Logger.payments.unsafeMutableAddressor();
      v357(v14, v16, v278);
      (*(v276 + 16))(v282, v279, v283);
      v281 = (*(v276 + 80) + 16) & ~*(v276 + 80);
      v285 = swift_allocObject();
      v284(v285 + v281, v282, v283);
      v291 = Logger.logObject.getter();
      v292 = static os_log_type_t.debug.getter();
      v287 = swift_allocObject();
      *(v287 + 16) = 32;
      v288 = swift_allocObject();
      *(v288 + 16) = 8;
      v286 = swift_allocObject();
      *(v286 + 16) = partial apply for implicit closure #4 in RequestPaymentNeedsValueStrategy.parseValueResponse(input:resolveRecord:);
      *(v286 + 24) = v285;
      v289 = swift_allocObject();
      *(v289 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v289 + 24) = v286;
      _allocateUninitializedArray<A>(_:)();
      v290 = v17;

      *v290 = partial apply for closure #1 in OSLogArguments.append(_:);
      v290[1] = v287;

      v290[2] = partial apply for closure #1 in OSLogArguments.append(_:);
      v290[3] = v288;

      v290[4] = partial apply for closure #1 in OSLogArguments.append(_:);
      v290[5] = v289;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v291, v292))
      {
        v273 = static UnsafeMutablePointer.allocate(capacity:)();
        v272 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v274 = createStorage<A>(capacity:type:)(0);
        v275 = createStorage<A>(capacity:type:)(1);
        v393 = v273;
        v394 = v274;
        v395 = v275;
        serialize(_:at:)(2, &v393);
        serialize(_:at:)(1, &v393);
        v396 = partial apply for closure #1 in OSLogArguments.append(_:);
        v397 = v287;
        closure #1 in osLogInternal(_:log:type:)(&v396, &v393, &v394, &v395);
        v396 = partial apply for closure #1 in OSLogArguments.append(_:);
        v397 = v288;
        closure #1 in osLogInternal(_:log:type:)(&v396, &v393, &v394, &v395);
        v396 = partial apply for closure #1 in OSLogArguments.append(_:);
        v397 = v289;
        closure #1 in osLogInternal(_:log:type:)(&v396, &v393, &v394, &v395);
        _os_log_impl(&dword_2686B1000, v291, v292, "#RequestPaymentNeedsValueStrategy parseResponseValue, directInvocation: %s", v273, 0xCu);
        destroyStorage<A>(_:count:)(v274, 0, v272);
        destroyStorage<A>(_:count:)(v275, 1, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v273, MEMORY[0x277D84B78]);
      }

      else
      {
      }

      v267 = *(v1 + 736);
      v268 = *(v1 + 664);
      v18 = *(v1 + 536);
      MEMORY[0x277D82BD8](v291);
      v342(v267, v268);
      v269 = Parse.DirectInvocation.identifier.getter();
      v270 = v19;

      *(v1 + 248) = PaymentsDirectInvocations.Identifiers.rawValue.getter(3);
      *(v1 + 256) = v20;
      v381 = v269;
      v382 = v270;
      v271 = MEMORY[0x26D620740](*(v1 + 248), *(v1 + 256), v269, v270);
      outlined destroy of String.UTF8View(v1 + 248);
      if (v271)
      {
        v21 = *(v1 + 536);

        if (Parse.DirectInvocation.userData.getter())
        {
          *(v1 + 264) = PaymentsDirectInvocations.Keys.rawValue.getter(1);
          *(v1 + 272) = v22;
          MEMORY[0x26D620650]();
          outlined destroy of String.UTF8View(v1 + 264);
        }

        else
        {
          *(v1 + 216) = 0;
          *(v1 + 224) = 0;
          *(v1 + 232) = 0;
          *(v1 + 240) = 0;
        }

        if (*(v1 + 240))
        {
          type metadata accessor for INPerson();
          if (swift_dynamicCast())
          {
            v266 = *(v1 + 432);
          }

          else
          {
            v266 = 0;
          }

          v265 = v266;
        }

        else
        {
          outlined destroy of FlowActivity?((v1 + 216));
          v265 = 0;
        }

        v27 = *(v1 + 720);
        v241 = *(v1 + 664);
        *(v1 + 392) = v265;
        v28 = Logger.payments.unsafeMutableAddressor();
        v357(v27, v28, v241);
        MEMORY[0x277D82BE0](v265);
        v242 = swift_allocObject();
        *(v242 + 16) = v265;
        default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

        v247 = Logger.logObject.getter();
        v248 = static os_log_type_t.debug.getter();
        v243 = swift_allocObject();
        *(v243 + 16) = 64;
        v244 = swift_allocObject();
        *(v244 + 16) = 8;
        v245 = swift_allocObject();
        *(v245 + 16) = partial apply for implicit closure #5 in SendPaymentNeedsValueStrategy.parseValueResponse(input:resolveRecord:);
        *(v245 + 24) = v242;
        _allocateUninitializedArray<A>(_:)();
        v246 = v29;

        *v246 = partial apply for closure #1 in OSLogArguments.append(_:);
        v246[1] = v243;

        v246[2] = partial apply for closure #1 in OSLogArguments.append(_:);
        v246[3] = v244;

        v246[4] = partial apply for closure #1 in OSLogArguments.append(_:);
        v246[5] = v245;
        _finalizeUninitializedArray<A>(_:)();

        if (os_log_type_enabled(v247, v248))
        {
          v238 = static UnsafeMutablePointer.allocate(capacity:)();
          v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v239 = createStorage<A>(capacity:type:)(1);
          v240 = createStorage<A>(capacity:type:)(0);
          v388 = v238;
          v389 = v239;
          v390 = v240;
          serialize(_:at:)(2, &v388);
          serialize(_:at:)(1, &v388);
          v391 = partial apply for closure #1 in OSLogArguments.append(_:);
          v392 = v243;
          closure #1 in osLogInternal(_:log:type:)(&v391, &v388, &v389, &v390);
          v391 = partial apply for closure #1 in OSLogArguments.append(_:);
          v392 = v244;
          closure #1 in osLogInternal(_:log:type:)(&v391, &v388, &v389, &v390);
          v391 = partial apply for closure #1 in OSLogArguments.append(_:);
          v392 = v245;
          closure #1 in osLogInternal(_:log:type:)(&v391, &v388, &v389, &v390);
          _os_log_impl(&dword_2686B1000, v247, v248, "#RequestPaymentNeedsValueStrategy Received payer value %@ from DirectInvocation", v238, 0xCu);
          destroyStorage<A>(_:count:)(v239, 1, v237);
          destroyStorage<A>(_:count:)(v240, 0, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v238, MEMORY[0x277D84B78]);
        }

        else
        {
        }

        v228 = *(v1 + 720);
        v230 = *(v1 + 712);
        v233 = *(v1 + 664);
        v229 = *(v1 + 576);
        v30 = *(v1 + 488);
        MEMORY[0x277D82BD8](v247);
        v342(v228, v233);
        v232 = ParameterResolutionRecord.intent.getter();
        MEMORY[0x277D82BE0](v265);
        countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("payer", 5uLL, 1)._countAndFlagsBits;
        v231 = MEMORY[0x26D620690](countAndFlagsBits);

        [v232 setValue:v265 forKeyPath:v231];
        MEMORY[0x277D82BD8](v231);
        swift_unknownObjectRelease();
        MEMORY[0x277D82BD8](v232);
        MEMORY[0x277D82BD8](v265);

        v32 = Logger.payments.unsafeMutableAddressor();
        v357(v230, v32, v233);
        v235 = Logger.logObject.getter();
        v234 = static os_log_type_t.debug.getter();
        v236 = _allocateUninitializedArray<A>(_:)();
        if (os_log_type_enabled(v235, v234))
        {
          v224 = static UnsafeMutablePointer.allocate(capacity:)();
          v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v225 = createStorage<A>(capacity:type:)(0);
          v226 = createStorage<A>(capacity:type:)(0);
          *(v1 + 400) = v224;
          *(v1 + 408) = v225;
          *(v1 + 416) = v226;
          serialize(_:at:)(0, (v1 + 400));
          serialize(_:at:)(0, (v1 + 400));
          *(v1 + 424) = v236;
          v227 = swift_task_alloc();
          v227[2] = v1 + 400;
          v227[3] = v1 + 408;
          v227[4] = v1 + 416;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
          lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
          Sequence.forEach(_:)();

          _os_log_impl(&dword_2686B1000, v235, v234, "#RequestPaymentNeedsValueStrategy Returning successful IntentPromptAnswer", v224, 2u);
          destroyStorage<A>(_:count:)(v225, 0, v223);
          destroyStorage<A>(_:count:)(v226, 0, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v224, MEMORY[0x277D84B78]);
        }

        v213 = *(v1 + 712);
        v214 = *(v1 + 664);
        v217 = *(v1 + 576);
        v221 = *(v1 + 536);
        v222 = *(v1 + 504);
        v215 = *(v1 + 488);
        v219 = *(v1 + 472);
        v220 = *(v1 + 512);
        MEMORY[0x277D82BD8](v235);
        v342(v213, v214);
        v216 = ParameterResolutionRecord.intent.getter();
        *(v1 + 200) = &type metadata for RequestPaymentSlots;
        *(v1 + 208) = &protocol witness table for RequestPaymentSlots;
        *(v1 + 176) = value;
        v218 = type metadata accessor for INRequestPaymentIntent();
        SiriKitPaymentsIntent.value(forSlot:)((v1 + 176), v218, &v387);
        __swift_destroy_boxed_opaque_existential_0((v1 + 176));
        MEMORY[0x277D82BD8](v216);
        ParameterResolutionRecord.intent.getter();
        IntentPromptAnswer.init(answeredValue:updatedIntent:)();
        v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow18IntentPromptAnswerVySo016INRequestPaymentD0CGMd, &_s11SiriKitFlow18IntentPromptAnswerVySo016INRequestPaymentD0CGMR);
        (*(*(v33 - 8) + 56))(v219, 0, 1);
        (*(v220 + 8))(v221, v222);
      }

      else
      {
        v23 = *(v1 + 728);
        v261 = *(v1 + 664);

        v24 = Logger.payments.unsafeMutableAddressor();
        v357(v23, v24, v261);
        v263 = Logger.logObject.getter();
        v262 = static os_log_type_t.error.getter();
        v264 = _allocateUninitializedArray<A>(_:)();
        if (os_log_type_enabled(v263, v262))
        {
          v257 = static UnsafeMutablePointer.allocate(capacity:)();
          v256 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v258 = createStorage<A>(capacity:type:)(0);
          v259 = createStorage<A>(capacity:type:)(0);
          *(v1 + 360) = v257;
          *(v1 + 368) = v258;
          *(v1 + 376) = v259;
          serialize(_:at:)(0, (v1 + 360));
          serialize(_:at:)(0, (v1 + 360));
          *(v1 + 384) = v264;
          v260 = swift_task_alloc();
          v260[2] = v1 + 360;
          v260[3] = v1 + 368;
          v260[4] = v1 + 376;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
          lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
          Sequence.forEach(_:)();

          _os_log_impl(&dword_2686B1000, v263, v262, "#RequestPaymentNeedsValueStrategy parseResponseValue failed to interpret user response as expected Direct Invocation. Reprompt with previous state", v257, 2u);
          destroyStorage<A>(_:count:)(v258, 0, v256);
          destroyStorage<A>(_:count:)(v259, 0, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v257, MEMORY[0x277D84B78]);
        }

        v249 = *(v1 + 728);
        v250 = *(v1 + 664);
        v251 = *(v1 + 576);
        v254 = *(v1 + 536);
        v255 = *(v1 + 504);
        v25 = *(v1 + 488);
        v252 = *(v1 + 472);
        v253 = *(v1 + 512);
        MEMORY[0x277D82BD8](v263);
        v342(v249, v250);
        v383 = 0;
        v384 = 0;
        v385 = 0;
        v386 = 0;
        ParameterResolutionRecord.intent.getter();
        type metadata accessor for INRequestPaymentIntent();
        IntentPromptAnswer.init(answeredValue:updatedIntent:)();
        v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow18IntentPromptAnswerVySo016INRequestPaymentD0CGMd, &_s11SiriKitFlow18IntentPromptAnswerVySo016INRequestPaymentD0CGMR);
        (*(*(v26 - 8) + 56))(v252, 0, 1);

        (*(v253 + 8))(v254, v255);
      }
    }

    else
    {
      v203 = *(v1 + 576);
      v209 = *(v1 + 560);
      v210 = *(v1 + 544);
      v206 = *(v1 + 496);
      v202 = *(v1 + 488);
      v34 = *(v1 + 480);
      v208 = *(v1 + 552);
      Input.parse.getter();
      v207 = ParameterResolutionRecord.intent.getter();

      outlined init with copy of GlobalsProviding(v206 + 104, v1 + 16);

      v205 = *(v1 + 40);
      v204 = *(v1 + 48);
      __swift_project_boxed_opaque_existential_1((v1 + 16), v205);
      (*(v204 + 24))(v205);

      outlined init with copy of GlobalsProviding(v206 + 64, v1 + 96);

      v212 = Parse.toSiriKitIntent(previousIntent:aceService:contactResolver:)(v207, &protocol witness table for INRequestPaymentIntent, v1 + 56, v1 + 96);
      __swift_destroy_boxed_opaque_existential_0((v1 + 96));
      __swift_destroy_boxed_opaque_existential_0((v1 + 56));
      __swift_destroy_boxed_opaque_existential_0((v1 + 16));
      MEMORY[0x277D82BD8](v207);
      v211 = *(v208 + 8);
      v211(v209, v210);
      if (v212)
      {
        objc_opt_self();
        v201 = swift_dynamicCastObjCClass();
        if (v201)
        {
          v200 = v201;
        }

        else
        {
          MEMORY[0x277D82BD8](v212);
          v200 = 0;
        }

        v199 = v200;
      }

      else
      {
        v199 = 0;
      }

      if (v199)
      {
        v35 = *(v1 + 704);
        v190 = *(v1 + 664);
        *(v1 + 344) = v199;
        v36 = Logger.payments.unsafeMutableAddressor();
        v357(v35, v36, v190);
        MEMORY[0x277D82BE0](v199);
        v191 = swift_allocObject();
        *(v191 + 16) = v199;
        v197 = Logger.logObject.getter();
        v198 = static os_log_type_t.debug.getter();
        v193 = swift_allocObject();
        *(v193 + 16) = 64;
        v194 = swift_allocObject();
        *(v194 + 16) = 8;
        v192 = swift_allocObject();
        *(v192 + 16) = partial apply for implicit closure #4 in SearchForAccountsNeedsValueStrategy.parseValueResponse(input:resolveRecord:);
        *(v192 + 24) = v191;
        v195 = swift_allocObject();
        *(v195 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
        *(v195 + 24) = v192;
        _allocateUninitializedArray<A>(_:)();
        v196 = v37;

        *v196 = partial apply for closure #1 in OSLogArguments.append(_:);
        v196[1] = v193;

        v196[2] = partial apply for closure #1 in OSLogArguments.append(_:);
        v196[3] = v194;

        v196[4] = partial apply for closure #1 in OSLogArguments.append(_:);
        v196[5] = v195;
        _finalizeUninitializedArray<A>(_:)();

        if (os_log_type_enabled(v197, v198))
        {
          v187 = static UnsafeMutablePointer.allocate(capacity:)();
          v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v188 = createStorage<A>(capacity:type:)(1);
          v189 = createStorage<A>(capacity:type:)(0);
          v376 = v187;
          v377 = v188;
          v378 = v189;
          serialize(_:at:)(2, &v376);
          serialize(_:at:)(1, &v376);
          v379 = partial apply for closure #1 in OSLogArguments.append(_:);
          v380 = v193;
          closure #1 in osLogInternal(_:log:type:)(&v379, &v376, &v377, &v378);
          v379 = partial apply for closure #1 in OSLogArguments.append(_:);
          v380 = v194;
          closure #1 in osLogInternal(_:log:type:)(&v379, &v376, &v377, &v378);
          v379 = partial apply for closure #1 in OSLogArguments.append(_:);
          v380 = v195;
          closure #1 in osLogInternal(_:log:type:)(&v379, &v376, &v377, &v378);
          _os_log_impl(&dword_2686B1000, v197, v198, "#RequestPaymentNeedsValueStrategy Converted PaymentsIntent to SiriKit intent: %@", v187, 0xCu);
          destroyStorage<A>(_:count:)(v188, 1, v186);
          destroyStorage<A>(_:count:)(v189, 0, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v187, MEMORY[0x277D84B78]);
        }

        else
        {
        }

        v184 = *(v1 + 704);
        v185 = *(v1 + 664);
        MEMORY[0x277D82BD8](v197);
        v342(v184, v185);
        if (value)
        {
          if (value == SiriPaymentsIntents_RequestPaymentSlots_currencyAmount)
          {
            v41 = *(v1 + 576);
            v42 = *(v1 + 488);
            v180 = ParameterResolutionRecord.intent.getter();
            v179 = [v199 currencyAmount];
            v43 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("currencyAmount", 0xEuLL, 1)._countAndFlagsBits;
            v178 = MEMORY[0x26D620690](v43);

            [v180 setValue:v179 forKeyPath:v178];
            MEMORY[0x277D82BD8](v178);
            swift_unknownObjectRelease();
            MEMORY[0x277D82BD8](v180);
          }

          else
          {
            v44 = *(v1 + 576);
            v45 = *(v1 + 488);
            v176 = ParameterResolutionRecord.intent.getter();
            v46 = [v199 note];
            v177 = v46;
            if (v46)
            {
              v172 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v173 = v47;
              MEMORY[0x277D82BD8](v177);
              v174 = v172;
              v175 = v173;
            }

            else
            {
              v174 = 0;
              v175 = 0;
            }

            if (v175)
            {
              v170 = MEMORY[0x26D620690](v174);

              v171 = v170;
            }

            else
            {
              v171 = 0;
            }

            v48 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("note", 4uLL, 1)._countAndFlagsBits;
            v169 = MEMORY[0x26D620690](v48);

            [v176 setValue:v171 forKeyPath:v169];
            MEMORY[0x277D82BD8](v169);
            swift_unknownObjectRelease();
            MEMORY[0x277D82BD8](v176);
          }
        }

        else
        {
          v38 = *(v1 + 576);
          v39 = *(v1 + 488);
          v183 = ParameterResolutionRecord.intent.getter();
          v182 = [v199 payer];
          v40 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("payer", 5uLL, 1)._countAndFlagsBits;
          v181 = MEMORY[0x26D620690](v40);

          [v183 setValue:v182 forKeyPath:v181];
          MEMORY[0x277D82BD8](v181);
          swift_unknownObjectRelease();
          MEMORY[0x277D82BD8](v183);
        }

        v49 = *(v1 + 696);
        v156 = *(v1 + 664);
        v159 = *(v1 + 600);
        v158 = *(v1 + 592);
        v160 = *(v1 + 576);
        v157 = *(v1 + 488);
        v50 = Logger.payments.unsafeMutableAddressor();
        v357(v49, v50, v156);
        v306(v159, v157, v160);
        v161 = swift_allocObject();
        v311(v161 + ((v308 + 16) & ~v308), v159, v160);
        v167 = Logger.logObject.getter();
        v168 = static os_log_type_t.debug.getter();
        v163 = swift_allocObject();
        *(v163 + 16) = 32;
        v164 = swift_allocObject();
        *(v164 + 16) = 8;
        v162 = swift_allocObject();
        *(v162 + 16) = partial apply for implicit closure #7 in RequestPaymentNeedsValueStrategy.parseValueResponse(input:resolveRecord:);
        *(v162 + 24) = v161;
        v165 = swift_allocObject();
        *(v165 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
        *(v165 + 24) = v162;
        _allocateUninitializedArray<A>(_:)();
        v166 = v51;

        *v166 = partial apply for closure #1 in OSLogArguments.append(_:);
        v166[1] = v163;

        v166[2] = partial apply for closure #1 in OSLogArguments.append(_:);
        v166[3] = v164;

        v166[4] = partial apply for closure #1 in OSLogArguments.append(_:);
        v166[5] = v165;
        _finalizeUninitializedArray<A>(_:)();

        if (os_log_type_enabled(v167, v168))
        {
          v153 = static UnsafeMutablePointer.allocate(capacity:)();
          v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v154 = createStorage<A>(capacity:type:)(0);
          v155 = createStorage<A>(capacity:type:)(1);
          v371 = v153;
          v372 = v154;
          v373 = v155;
          serialize(_:at:)(2, &v371);
          serialize(_:at:)(1, &v371);
          v374 = partial apply for closure #1 in OSLogArguments.append(_:);
          v375 = v163;
          closure #1 in osLogInternal(_:log:type:)(&v374, &v371, &v372, &v373);
          v374 = partial apply for closure #1 in OSLogArguments.append(_:);
          v375 = v164;
          closure #1 in osLogInternal(_:log:type:)(&v374, &v371, &v372, &v373);
          v374 = partial apply for closure #1 in OSLogArguments.append(_:);
          v375 = v165;
          closure #1 in osLogInternal(_:log:type:)(&v374, &v371, &v372, &v373);
          _os_log_impl(&dword_2686B1000, v167, v168, "#RequestPaymentNeedsValueStrategy Returning intent: %s", v153, 0xCu);
          destroyStorage<A>(_:count:)(v154, 0, v152);
          destroyStorage<A>(_:count:)(v155, 1, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v153, MEMORY[0x277D84B78]);
        }

        else
        {
        }

        v144 = *(v1 + 696);
        v145 = *(v1 + 664);
        v146 = *(v1 + 576);
        v150 = *(v1 + 568);
        v151 = *(v1 + 544);
        v52 = *(v1 + 488);
        v149 = *(v1 + 472);
        MEMORY[0x277D82BD8](v167);
        v342(v144, v145);
        v147 = ParameterResolutionRecord.intent.getter();
        *(v1 + 160) = &type metadata for RequestPaymentSlots;
        *(v1 + 168) = &protocol witness table for RequestPaymentSlots;
        *(v1 + 136) = value;
        v148 = type metadata accessor for INRequestPaymentIntent();
        SiriKitPaymentsIntent.value(forSlot:)((v1 + 136), v148, &v370);
        __swift_destroy_boxed_opaque_existential_0((v1 + 136));
        MEMORY[0x277D82BD8](v147);
        IntentPromptAnswer.init(answeredValue:updatedIntent:)();
        v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow18IntentPromptAnswerVySo016INRequestPaymentD0CGMd, &_s11SiriKitFlow18IntentPromptAnswerVySo016INRequestPaymentD0CGMR);
        (*(*(v53 - 8) + 56))(v149, 0, 1);
        v211(v150, v151);
      }

      else
      {
        v54 = *(v1 + 688);
        v140 = *(v1 + 664);
        v55 = Logger.payments.unsafeMutableAddressor();
        v357(v54, v55, v140);
        v142 = Logger.logObject.getter();
        v141 = static os_log_type_t.error.getter();
        v143 = _allocateUninitializedArray<A>(_:)();
        if (os_log_type_enabled(v142, v141))
        {
          v136 = static UnsafeMutablePointer.allocate(capacity:)();
          v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v137 = createStorage<A>(capacity:type:)(0);
          v138 = createStorage<A>(capacity:type:)(0);
          *(v1 + 312) = v136;
          *(v1 + 320) = v137;
          *(v1 + 328) = v138;
          serialize(_:at:)(0, (v1 + 312));
          serialize(_:at:)(0, (v1 + 312));
          *(v1 + 336) = v143;
          v139 = swift_task_alloc();
          v139[2] = v1 + 312;
          v139[3] = v1 + 320;
          v139[4] = v1 + 328;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
          lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
          Sequence.forEach(_:)();

          _os_log_impl(&dword_2686B1000, v142, v141, "#RequestPaymentNeedsValueStrategy parseResponseValue failed to interpret user response as expected Send response. Reprompt with previous state", v136, 2u);
          destroyStorage<A>(_:count:)(v137, 0, v135);
          destroyStorage<A>(_:count:)(v138, 0, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v136, MEMORY[0x277D84B78]);
        }

        v129 = *(v1 + 688);
        v130 = *(v1 + 664);
        v131 = *(v1 + 576);
        v133 = *(v1 + 568);
        v134 = *(v1 + 544);
        v56 = *(v1 + 488);
        v132 = *(v1 + 472);
        MEMORY[0x277D82BD8](v142);
        v342(v129, v130);
        v366 = 0;
        v367 = 0;
        v368 = 0;
        v369 = 0;
        ParameterResolutionRecord.intent.getter();
        type metadata accessor for INRequestPaymentIntent();
        IntentPromptAnswer.init(answeredValue:updatedIntent:)();
        v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow18IntentPromptAnswerVySo016INRequestPaymentD0CGMd, &_s11SiriKitFlow18IntentPromptAnswerVySo016INRequestPaymentD0CGMR);
        (*(*(v57 - 8) + 56))(v132, 0, 1);
        v211(v133, v134);
      }
    }

    v67 = *(v1 + 760);
    v70 = *(v1 + 752);
    v71 = *(v1 + 744);
    v72 = *(v1 + 736);
    v73 = *(v1 + 728);
    v74 = *(v1 + 720);
    v75 = *(v1 + 712);
    v76 = *(v1 + 704);
    v77 = *(v1 + 696);
    v78 = *(v1 + 688);
    v79 = *(v1 + 680);
    v80 = *(v1 + 656);
    v81 = *(v1 + 632);
    v82 = *(v1 + 600);
    v83 = *(v1 + 568);
    v84 = *(v1 + 560);
    v85 = *(v1 + 536);
    v86 = *(v1 + 528);

    v68 = *(*(v1 + 280) + 8);
    v69 = *(v1 + 280);

    return v68();
  }
}

uint64_t implicit closure #2 in RequestPaymentNeedsValueStrategy.parseValueResponse(input:resolveRecord:)()
{
  v4 = type metadata accessor for Parse();
  v2 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v3 = &v1 - v2;
  Input.parse.getter();
  return String.init<A>(describing:)();
}

uint64_t implicit closure #4 in RequestPaymentNeedsValueStrategy.parseValueResponse(input:resolveRecord:)(uint64_t a1)
{
  v2[1] = a1;
  v5 = type metadata accessor for Parse.DirectInvocation();
  v4 = *(v5 - 8);
  v3 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v6 = v2 - v3;
  (*(v4 + 16))();
  return String.init<A>(describing:)();
}

uint64_t implicit closure #7 in RequestPaymentNeedsValueStrategy.parseValueResponse(input:resolveRecord:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo22INRequestPaymentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo22INRequestPaymentIntentCGMR);
  ParameterResolutionRecord.intent.getter();
  type metadata accessor for INRequestPaymentIntent();
  lazy protocol witness table accessor for type INRequestPaymentIntent and conformance NSObject();
  return String.init<A>(describing:)();
}

uint64_t RequestPaymentNeedsValueStrategy.init<A>(globals:catFamily:commonLabelsProvider:contactResolver:errorProvider:)(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a1;
  v26 = a2;
  v25 = a3;
  v24 = a4;
  v20 = a5;
  v23 = a6;
  v18 = a7;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v38 = a6;
  v21 = *(a6 - 8);
  v22 = a6 - 8;
  v14 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v13 - v14;
  v36 = MEMORY[0x28223BE20](a1);
  v35 = v8;
  v34 = v9;
  v33 = v10;
  v32 = v11;
  v37 = v7;
  v19 = v31;
  outlined init with copy of GlobalsProviding(v36, v31);

  v15 = v30;
  outlined init with copy of GlobalsProviding(v25, v30);
  v16 = v29;
  outlined init with copy of GlobalsProviding(v24, v29);
  (*(v21 + 16))(v17, v20, v23);
  v28 = BaseStrategy.init<A>(globals:catFamily:commonLabelsProvider:contactResolver:errorProvider:)(v19, v26, v15, v16, v17, v23, v18);

  v37 = v28;
  (*(v21 + 8))(v20, v23);
  __swift_destroy_boxed_opaque_existential_0(v24);
  __swift_destroy_boxed_opaque_existential_0(v25);

  __swift_destroy_boxed_opaque_existential_0(v27);

  return v28;
}

uint64_t protocol witness for NeedsValueFlowStrategyAsync.parseValueResponse(input:resolveRecord:) in conformance RequestPaymentNeedsValueStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v5 = *v3;
  v6 = swift_task_alloc();
  *(v8 + 24) = v6;
  *v6 = *(v8 + 16);
  v6[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return RequestPaymentNeedsValueStrategy.parseValueResponse(input:resolveRecord:)(a1, a2, a3);
}

uint64_t protocol witness for NeedsValueFlowStrategyAsync.makePromptForValue(resolveRecord:) in conformance RequestPaymentNeedsValueStrategy(uint64_t a1, uint64_t a2)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v4 = *v2;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return RequestPaymentNeedsValueStrategy.makePromptForValue(resolveRecord:)(a1, a2);
}

uint64_t protocol witness for NeedsValueFlowStrategyAsync.makeRepromptOnEmptyParse(resolveRecord:) in conformance RequestPaymentNeedsValueStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4;
  *(v4 + 16) = v4;
  v5 = *(MEMORY[0x277D5B370] + 4);
  v6 = swift_task_alloc();
  *(v9 + 24) = v6;
  v7 = type metadata accessor for RequestPaymentNeedsValueStrategy();
  *v6 = *(v9 + 16);
  v6[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821B9BF8](a1, a2, v7, a4);
}

uint64_t protocol witness for NeedsValueFlowStrategyAsync.makeRepromptOnLowConfidence(resolveRecord:) in conformance RequestPaymentNeedsValueStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4;
  *(v4 + 16) = v4;
  v5 = *(MEMORY[0x277D5B378] + 4);
  v6 = swift_task_alloc();
  *(v9 + 24) = v6;
  v7 = type metadata accessor for RequestPaymentNeedsValueStrategy();
  *v6 = *(v9 + 16);
  v6[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821B9C00](a1, a2, v7, a4);
}

uint64_t protocol witness for ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:) in conformance RequestPaymentNeedsValueStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = v6;
  *(v6 + 16) = v6;
  v7 = *(MEMORY[0x277D5C0B0] + 4);
  v8 = swift_task_alloc();
  *(v11 + 24) = v8;
  v9 = type metadata accessor for RequestPaymentNeedsValueStrategy();
  *v8 = *(v11 + 16);
  v8[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821BBB18](a1, a2, a3, a4, v9, a6);
}

uint64_t protocol witness for ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:) in conformance RequestPaymentNeedsValueStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = v7;
  *(v7 + 16) = v7;
  v8 = *(MEMORY[0x277D5C0B8] + 4);
  v9 = swift_task_alloc();
  *(v12 + 24) = v9;
  v10 = type metadata accessor for RequestPaymentNeedsValueStrategy();
  *v9 = *(v12 + 16);
  v9[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return MEMORY[0x2821BBB20](a1, a2, a3, a4, a5, v10, a7);
}

uint64_t sub_26885D8FC()
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo22INRequestPaymentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo22INRequestPaymentIntentCGMR) - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #1 in RequestPaymentNeedsValueStrategy.makePromptForValue(resolveRecord:)()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo22INRequestPaymentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo22INRequestPaymentIntentCGMR) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #1 in RequestPaymentNeedsValueStrategy.makePromptForValue(resolveRecord:)();
}

uint64_t sub_26885DA9C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26885DADC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26885DB1C()
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo22INRequestPaymentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo22INRequestPaymentIntentCGMR) - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_26885DC4C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26885DC8C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26885DCCC()
{
  v3 = *(type metadata accessor for Input() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #2 in RequestPaymentNeedsValueStrategy.parseValueResponse(input:resolveRecord:)()
{
  v1 = *(type metadata accessor for Input() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #2 in RequestPaymentNeedsValueStrategy.parseValueResponse(input:resolveRecord:)();
}

uint64_t sub_26885DE54()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26885DE94()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26885DED4()
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo22INRequestPaymentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo22INRequestPaymentIntentCGMR) - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_26885E004()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26885E044()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26885E124()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26885E164()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26885E1A4()
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo22INRequestPaymentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo22INRequestPaymentIntentCGMR) - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #7 in RequestPaymentNeedsValueStrategy.parseValueResponse(input:resolveRecord:)()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo22INRequestPaymentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo22INRequestPaymentIntentCGMR) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #7 in RequestPaymentNeedsValueStrategy.parseValueResponse(input:resolveRecord:)();
}

uint64_t sub_26885E344()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26885E384()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26885E3C4()
{
  v3 = *(type metadata accessor for Parse.DirectInvocation() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #4 in RequestPaymentNeedsValueStrategy.parseValueResponse(input:resolveRecord:)()
{
  v1 = *(type metadata accessor for Parse.DirectInvocation() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #4 in RequestPaymentNeedsValueStrategy.parseValueResponse(input:resolveRecord:)(v2);
}

uint64_t sub_26885E54C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26885E58C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26885E66C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t type metadata accessor for RequestPaymentNeedsValueStrategy()
{
  v1 = type metadata singleton initialization cache for RequestPaymentNeedsValueStrategy;
  if (!type metadata singleton initialization cache for RequestPaymentNeedsValueStrategy)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t static PaymentIntentCATResponseCode.from(_:)(uint64_t a1)
{
  switch(a1)
  {
    case 1:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("READY", 5uLL, 1)._countAndFlagsBits;
      break;
    case 2:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("IN_PROGRESS", 0xBuLL, 1)._countAndFlagsBits;
      break;
    case 3:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SUCCESS", 7uLL, 1)._countAndFlagsBits;
      break;
    case 4:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("FAILURE", 7uLL, 1)._countAndFlagsBits;
      break;
    case 5:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("REQUIRING_APP_LAUNCH", 0x14uLL, 1)._countAndFlagsBits;
      break;
    case 6:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("CREDENTIALS_UNVERIFIED", 0x16uLL, 1)._countAndFlagsBits;
      break;
    case 7:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PAYMENTS_AMOUNT_BELOW_MINIMUM", 0x1DuLL, 1)._countAndFlagsBits;
      break;
    case 8:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PAYMENTS_AMOUNT_ABOVE_MAXIMUM", 0x1DuLL, 1)._countAndFlagsBits;
      break;
    case 9:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PAYMENTS_CURRENCY_UNSUPPORTED", 0x1DuLL, 1)._countAndFlagsBits;
      break;
    case 10:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("INSUFFICIENT_FUNDS", 0x12uLL, 1)._countAndFlagsBits;
      break;
    case 11:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("NO_BANK_ACCOUNT", 0xFuLL, 1)._countAndFlagsBits;
      break;
    case 12:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("NOT_ELIGIBLE", 0xCuLL, 1)._countAndFlagsBits;
      break;
    case 13:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("TERMS_AND_CONDITIONS_ACCEPTANCE_REQUIRED", 0x28uLL, 1)._countAndFlagsBits;
      break;
    default:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("UNSPECIFIED", 0xBuLL, 1)._countAndFlagsBits;
      break;
  }

  return countAndFlagsBits;
}

{
  switch(a1)
  {
    case 1:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("READY", 5uLL, 1)._countAndFlagsBits;
      break;
    case 2:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("IN_PROGRESS", 0xBuLL, 1)._countAndFlagsBits;
      break;
    case 3:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SUCCESS", 7uLL, 1)._countAndFlagsBits;
      break;
    case 4:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("FAILURE", 7uLL, 1)._countAndFlagsBits;
      break;
    case 5:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("REQUIRING_APP_LAUNCH", 0x14uLL, 1)._countAndFlagsBits;
      break;
    case 6:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("CREDENTIALS_UNVERIFIED", 0x16uLL, 1)._countAndFlagsBits;
      break;
    case 7:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PAYMENTS_AMOUNT_BELOW_MINIMUM", 0x1DuLL, 1)._countAndFlagsBits;
      break;
    case 8:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PAYMENTS_AMOUNT_ABOVE_MAXIMUM", 0x1DuLL, 1)._countAndFlagsBits;
      break;
    case 9:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PAYMENTS_CURRENCY_UNSUPPORTED", 0x1DuLL, 1)._countAndFlagsBits;
      break;
    case 10:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("NO_BANK_ACCOUNT", 0xFuLL, 1)._countAndFlagsBits;
      break;
    case 11:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("NOT_ELIGIBLE", 0xCuLL, 1)._countAndFlagsBits;
      break;
    case 12:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("TERMS_AND_CONDITIONS_ACCEPTANCE_REQUIRED", 0x28uLL, 1)._countAndFlagsBits;
      break;
    default:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("UNSPECIFIED", 0xBuLL, 1)._countAndFlagsBits;
      break;
  }

  return countAndFlagsBits;
}

{
  switch(a1)
  {
    case 1:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PAYMENTS_AMOUNT_BELOW_MINIMUM", 0x1DuLL, 1)._countAndFlagsBits;
    case 2:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PAYMENTS_AMOUNT_ABOVE_MAXIMUM", 0x1DuLL, 1)._countAndFlagsBits;
    case 3:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PAYMENTS_CURRENCY_UNSUPPORTED", 0x1DuLL, 1)._countAndFlagsBits;
    default:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("UNSPECIFIED", 0xBuLL, 1)._countAndFlagsBits;
  }
}

{
  switch(a1)
  {
    case 1:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("CREDENTIALS_UNVERIFIED", 0x16uLL, 1)._countAndFlagsBits;
    case 2:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("NO_BANK_ACCOUNT", 0xFuLL, 1)._countAndFlagsBits;
    case 3:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("NO_ACCOUNT", 0xAuLL, 1)._countAndFlagsBits;
    default:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("UNSPECIFIED", 0xBuLL, 1)._countAndFlagsBits;
  }
}

{
  switch(a1)
  {
    case 1:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("CREDENTIALS_UNVERIFIED", 0x16uLL, 1)._countAndFlagsBits;
    case 2:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("INSUFFICIENT_FUNDS", 0x12uLL, 1)._countAndFlagsBits;
    case 3:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("NO_BANK_ACCOUNT", 0xFuLL, 1)._countAndFlagsBits;
    case 4:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("NO_ACCOUNT", 0xAuLL, 1)._countAndFlagsBits;
    default:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("UNSPECIFIED", 0xBuLL, 1)._countAndFlagsBits;
  }
}

{
  switch(a1)
  {
    case 0:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("UNSPECIFIED", 0xBuLL, 1)._countAndFlagsBits;
    case 1:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("READY", 5uLL, 1)._countAndFlagsBits;
    case 2:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("IN_PROGRESS", 0xBuLL, 1)._countAndFlagsBits;
    case 3:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SUCCESS", 7uLL, 1)._countAndFlagsBits;
    case 4:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("FAILURE", 7uLL, 1)._countAndFlagsBits;
    case 5:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("REQUIRING_APP_LAUNCH", 0x14uLL, 1)._countAndFlagsBits;
    case 6:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("CREDENTIALS_UNVERIFIED", 0x16uLL, 1)._countAndFlagsBits;
    case 7:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ACCOUNT_NOT_FOUND", 0x11uLL, 1)._countAndFlagsBits;
    case 8:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("TERMS_AND_CONDITIONS_ACCEPTANCE_REQUIRED", 0x28uLL, 1)._countAndFlagsBits;
    case 9:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("NOT_ELIGIBLE", 0xCuLL, 1)._countAndFlagsBits;
    default:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("UNSPECIFIED", 0xBuLL, 1)._countAndFlagsBits;
  }
}

uint64_t CommonLabelsProvider.cancel()()
{
  v4 = v0;
  *(v0 + 16) = v0;
  v1 = *(MEMORY[0x277D5BD08] + 4);
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = CommonLabelsProvider.cancel();

  return MEMORY[0x2821BAF80]();
}

uint64_t CommonLabelsProvider.cancel()(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v6 = *(*v3 + 24);
  *(v5 + 16) = *v3;
  v11 = v5 + 16;
  v12 = a1;

  if (v2)
  {
    v10 = *(*v11 + 8);

    return v10(v7);
  }

  else
  {
    v8 = *(*v11 + 8);

    return v8(v12, a2);
  }
}

uint64_t CommonLabelsProvider.no()()
{
  v4 = v0;
  *(v0 + 16) = v0;
  v1 = *(MEMORY[0x277D5BCF8] + 4);
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = CommonLabelsProvider.cancel();

  return MEMORY[0x2821BAF70]();
}

uint64_t CommonLabelsProvider.yes()()
{
  v4 = v0;
  *(v0 + 16) = v0;
  v1 = *(MEMORY[0x277D5BD00] + 4);
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = CommonLabelsProvider.cancel();

  return MEMORY[0x2821BAF78]();
}

uint64_t CommonLabelsProvider.openApp(_:locale:)(uint64_t a1, uint64_t a2)
{
  v2[8] = a2;
  v2[7] = a1;
  v2[4] = v2;
  v2[5] = 0;
  v2[6] = 0;
  v2[2] = 0;
  v2[3] = 0;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17SiriAppResolution0B11DisplayInfoVSgMd, &_s17SiriAppResolution0B11DisplayInfoVSgMR) - 8) + 64);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[5] = a1;
  v2[6] = a2;
  v3 = v2[4];

  return MEMORY[0x2822009F8](CommonLabelsProvider.openApp(_:locale:), 0);
}

{
  v10 = *v3;
  v5 = *(*v3 + 96);
  v10[4] = *v3;
  v11 = v10 + 4;
  v10[13] = v2;
  v10[14] = a1;
  v10[15] = a2;

  if (v2)
  {
    v8 = *v11;
    v7 = CommonLabelsProvider.openApp(_:locale:);
  }

  else
  {
    outlined destroy of AppDisplayInfo?(v10[9]);
    v6 = *v11;
    v7 = CommonLabelsProvider.openApp(_:locale:);
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t CommonLabelsProvider.openApp(_:locale:)()
{
  v10 = v0[11];
  v14 = v0[8];
  v13 = v0[7];
  v0[4] = v0;
  v11 = type metadata accessor for AppDisplayInfo();
  v12 = *(*(v11 - 8) + 56);
  v12(v10, 1);
  type metadata accessor for AppInformationResolver();

  AppInformationResolver.__allocating_init(app:)();
  v15 = dispatch thunk of AppInformationResolver.getLocalizedAppDisplayName(inLocale:)();
  v16 = v1;

  if (v16)
  {
    v8 = *(v9 + 88);
    v7 = *(v9 + 80);
    v2 = *(v9 + 56);
    *(v9 + 16) = v15;
    *(v9 + 24) = v16;
    App.isFirstParty.getter();
    AppDisplayInfo.init(displayName:isFirstParty:)();
    (v12)(v7, 0, 1, v11);
    outlined assign with take of AppDisplayInfo?(v7, v8);
  }

  outlined init with copy of AppDisplayInfo?(*(v9 + 88), *(v9 + 72));
  v3 = *(MEMORY[0x277D5BD10] + 4);
  v4 = swift_task_alloc();
  *(v9 + 96) = v4;
  *v4 = *(v9 + 32);
  v4[1] = CommonLabelsProvider.openApp(_:locale:);
  v5 = *(v9 + 72);

  return MEMORY[0x2821BAF90](v5);
}

{
  v1 = v0[11];
  v8 = v0[10];
  v9 = v0[9];
  v0[4] = v0;
  outlined destroy of AppDisplayInfo?(v1);

  v2 = v0;
  v3 = *(v0[4] + 8);
  v4 = v0[4];
  v5 = v2[15];
  v6 = v2[14];

  return v3(v6, v5);
}

{
  v7 = v0[11];
  v8 = v0[10];
  v1 = v0[9];
  v0[4] = v0;
  outlined destroy of AppDisplayInfo?(v1);
  outlined destroy of AppDisplayInfo?(v7);

  v2 = v0;
  v3 = *(v0[4] + 8);
  v4 = v0[4];
  v5 = v2[13];

  return v3();
}

void *outlined assign with take of AppDisplayInfo?(const void *a1, void *a2)
{
  v7 = type metadata accessor for AppDisplayInfo();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17SiriAppResolution0B11DisplayInfoVSgMd, &_s17SiriAppResolution0B11DisplayInfoVSgMR);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17SiriAppResolution0B11DisplayInfoVSgMd, &_s17SiriAppResolution0B11DisplayInfoVSgMR);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

uint64_t protocol witness for CommonLabelsProviding.cancel() in conformance CommonLabelsProvider()
{
  v3 = v0;
  *(v0 + 16) = v0;
  v1 = swift_task_alloc();
  *(v3 + 24) = v1;
  *v1 = *(v3 + 16);
  v1[1] = CommonLabelsProvider.cancel();

  return CommonLabelsProvider.cancel()();
}

uint64_t protocol witness for CommonLabelsProviding.no() in conformance CommonLabelsProvider()
{
  v3 = v0;
  *(v0 + 16) = v0;
  v1 = swift_task_alloc();
  *(v3 + 24) = v1;
  *v1 = *(v3 + 16);
  v1[1] = CommonLabelsProvider.cancel();

  return CommonLabelsProvider.no()();
}

uint64_t protocol witness for CommonLabelsProviding.yes() in conformance CommonLabelsProvider()
{
  v3 = v0;
  *(v0 + 16) = v0;
  v1 = swift_task_alloc();
  *(v3 + 24) = v1;
  *v1 = *(v3 + 16);
  v1[1] = CommonLabelsProvider.cancel();

  return CommonLabelsProvider.yes()();
}

uint64_t protocol witness for CommonLabelsProviding.openApp(_:locale:) in conformance CommonLabelsProvider(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = CommonLabelsProvider.cancel();

  return CommonLabelsProvider.openApp(_:locale:)(a1, a2);
}

uint64_t PaymentsFlow.flowState.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC19SiriPaymentsIntents12PaymentsFlow_flowState);
  swift_beginAccess();
  outlined init with copy of PaymentsFlowState(v3, a1);
  return swift_endAccess();
}

void *outlined init with copy of PaymentsFlowState(const void *a1, void *a2)
{
  v6 = type metadata accessor for PaymentsFlowState();
  if (swift_getEnumCaseMultiPayload() <= 2)
  {
    v2 = type metadata accessor for Input();
    (*(*(v2 - 8) + 16))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2, a1, *(*(v6 - 8) + 64));
  }

  return a2;
}

uint64_t type metadata accessor for PaymentsFlowState()
{
  v1 = type metadata singleton initialization cache for PaymentsFlowState;
  if (!type metadata singleton initialization cache for PaymentsFlowState)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t PaymentsFlow.flowState.setter(uint64_t a1)
{
  v8 = a1;
  v4 = (*(*(type metadata accessor for PaymentsFlowState() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v8);
  v5 = &v4 - v4;
  outlined init with copy of PaymentsFlowState(v2, &v4 - v4);
  v6 = (v1 + OBJC_IVAR____TtC19SiriPaymentsIntents12PaymentsFlow_flowState);
  v7 = &v9;
  swift_beginAccess();
  outlined assign with take of PaymentsFlowState(v5, v6);
  swift_endAccess();
  return outlined destroy of PaymentsFlowState(v8);
}

void *outlined assign with take of PaymentsFlowState(const void *a1, void *a2)
{
  if (a2 != a1)
  {
    outlined destroy of PaymentsFlowState(a2);
    v4 = type metadata accessor for PaymentsFlowState();
    if (swift_getEnumCaseMultiPayload() <= 2)
    {
      v2 = type metadata accessor for Input();
      (*(*(v2 - 8) + 32))(a2, a1);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a2, a1, *(*(v4 - 8) + 64));
    }
  }

  return a2;
}

uint64_t outlined destroy of PaymentsFlowState(uint64_t a1)
{
  type metadata accessor for PaymentsFlowState();
  if (swift_getEnumCaseMultiPayload() <= 2)
  {
    v1 = type metadata accessor for Input();
    (*(*(v1 - 8) + 8))(a1);
  }

  return a1;
}

uint64_t PaymentsFlow.restrictionGuards.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC19SiriPaymentsIntents12PaymentsFlow_restrictionGuards);

  return v2;
}

uint64_t PaymentsFlow.__allocating_init(flowFactory:)(uint64_t *a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  return PaymentsFlow.init(flowFactory:)(a1);
}

uint64_t PaymentsFlow.init(flowFactory:)(uint64_t *a1)
{
  v24 = a1;
  v28 = 0;
  v27 = 0;
  v11 = 0;
  v22 = type metadata accessor for PaymentsFlowState();
  v10 = (*(*(v22 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v23 = &v9 - v10;
  v16 = type metadata accessor for UnlockDevicePolicy();
  v13 = *(v16 - 8);
  v14 = v16 - 8;
  v12 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11);
  v15 = &v9 - v12;
  v28 = v2;
  v27 = v1;
  v20 = OBJC_IVAR____TtC19SiriPaymentsIntents12PaymentsFlow_restrictionGuards;
  v19 = type metadata accessor for CommonFlowGuard();
  v18 = _allocateUninitializedArray<A>(_:)();
  v17 = v3;
  static UnlockDevicePolicy.requiringDeviceUnlock.getter();
  static CommonFlowGuard.ensuringDeviceIsAuthenticated(using:)();
  (*(v13 + 8))(v15, v16);
  v4 = *(*(v19 - 8) + 72);
  static CommonFlowGuard.disallowInSharingMode.getter();
  v5 = v18;
  _finalizeUninitializedArray<A>(_:)();
  v6 = v5;
  v7 = v24;
  *(v1 + v20) = v6;
  v21 = v26;
  outlined init with copy of GlobalsProviding(v7, v26);
  outlined init with take of CommonLabelsProviding(v21, (v1 + OBJC_IVAR____TtC19SiriPaymentsIntents12PaymentsFlow_flowFactory));
  swift_storeEnumTagMultiPayload();
  outlined init with take of PaymentsFlowState(v23, (v1 + OBJC_IVAR____TtC19SiriPaymentsIntents12PaymentsFlow_flowState));
  __swift_destroy_boxed_opaque_existential_0(v24);
  return v25;
}

void *outlined init with take of PaymentsFlowState(const void *a1, void *a2)
{
  v6 = type metadata accessor for PaymentsFlowState();
  if (swift_getEnumCaseMultiPayload() <= 2)
  {
    v2 = type metadata accessor for Input();
    (*(*(v2 - 8) + 32))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2, a1, *(*(v6 - 8) + 64));
  }

  return a2;
}

uint64_t PaymentsFlow.on(input:)(uint64_t a1)
{
  v124 = a1;
  v108 = 0;
  v167 = 0;
  v166 = 0;
  v101 = 0;
  v102 = type metadata accessor for PaymentsFlowState();
  v104 = *(*(v102 - 8) + 64);
  v1 = MEMORY[0x28223BE20](0);
  v106 = (v104 + 15) & 0xFFFFFFFFFFFFFFF0;
  v103 = &v34 - v106;
  v2 = MEMORY[0x28223BE20](v1);
  v105 = &v34 - v106;
  MEMORY[0x28223BE20](v2);
  v107 = &v34 - v106;
  v131 = type metadata accessor for Input();
  v109 = v131;
  v110 = *(v131 - 8);
  v129 = v110;
  v127 = *(v110 + 64);
  MEMORY[0x28223BE20](v108);
  v130 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for Logger();
  v112 = v121;
  v113 = *(v121 - 8);
  v120 = v113;
  v114 = v113;
  v116 = *(v113 + 64);
  v4 = MEMORY[0x28223BE20](v124);
  v118 = (v116 + 15) & 0xFFFFFFFFFFFFFFF0;
  v115 = &v34 - v118;
  v5 = MEMORY[0x28223BE20](v4);
  v117 = &v34 - v118;
  v6 = MEMORY[0x28223BE20](v5);
  v7 = &v34 - v118;
  v119 = &v34 - v118;
  v167 = v6;
  v166 = v8;
  v9 = Logger.payments.unsafeMutableAddressor();
  v122 = *(v120 + 16);
  v123 = (v120 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v122(v7, v9, v121);
  v125 = *(v129 + 16);
  v126 = (v129 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v125(v130, v124, v131);
  v128 = (*(v129 + 80) + 16) & ~*(v129 + 80);
  v140 = swift_allocObject();
  (*(v129 + 32))(v140 + v128, v130, v131);
  v151 = Logger.logObject.getter();
  v132 = v151;
  v150 = static os_log_type_t.debug.getter();
  v133 = v150;
  v134 = 17;
  v139 = 7;
  v144 = swift_allocObject();
  v135 = v144;
  v136 = 32;
  *(v144 + 16) = 32;
  v10 = swift_allocObject();
  v11 = v136;
  v145 = v10;
  v137 = v10;
  *(v10 + 16) = 8;
  v138 = v11;
  v12 = swift_allocObject();
  v13 = v140;
  v141 = v12;
  *(v12 + 16) = partial apply for implicit closure #1 in PaymentsFlow.on(input:);
  *(v12 + 24) = v13;
  v14 = swift_allocObject();
  v15 = v141;
  v148 = v14;
  v142 = v14;
  *(v14 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v14 + 24) = v15;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v143 = v149;
  v146 = _allocateUninitializedArray<A>(_:)();
  v147 = v16;

  v17 = v144;
  v18 = v147;
  *v147 = partial apply for closure #1 in OSLogArguments.append(_:);
  v18[1] = v17;

  v19 = v145;
  v20 = v147;
  v147[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v20[3] = v19;

  v21 = v147;
  v22 = v148;
  v147[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v21[5] = v22;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v151, v150))
  {
    v23 = v101;
    v94 = static UnsafeMutablePointer.allocate(capacity:)();
    v91 = v94;
    v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v95 = createStorage<A>(capacity:type:)(0);
    v93 = v95;
    v97 = 1;
    v96 = createStorage<A>(capacity:type:)(1);
    v156[0] = v94;
    v155 = v95;
    v154 = v96;
    v98 = v156;
    serialize(_:at:)(2, v156);
    serialize(_:at:)(v97, v98);
    v152 = partial apply for closure #1 in OSLogArguments.append(_:);
    v153 = v135;
    closure #1 in osLogInternal(_:log:type:)(&v152, v98, &v155, &v154);
    v99 = v23;
    v100 = v23;
    if (v23)
    {
      v89 = 0;

      __break(1u);
    }

    else
    {
      v152 = partial apply for closure #1 in OSLogArguments.append(_:);
      v153 = v137;
      closure #1 in osLogInternal(_:log:type:)(&v152, v156, &v155, &v154);
      v87 = 0;
      v88 = 0;
      v152 = partial apply for closure #1 in OSLogArguments.append(_:);
      v153 = v142;
      closure #1 in osLogInternal(_:log:type:)(&v152, v156, &v155, &v154);
      v85 = 0;
      v86 = 0;
      _os_log_impl(&dword_2686B1000, v132, v133, "#PaymentsFlow on(input:): %s", v91, 0xCu);
      destroyStorage<A>(_:count:)(v93, 0, v92);
      destroyStorage<A>(_:count:)(v96, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v91, MEMORY[0x277D84B78]);

      v90 = v85;
    }
  }

  else
  {
    v24 = v101;

    v90 = v24;
  }

  v80 = v90;

  v81 = *(v114 + 8);
  v82 = (v114 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v81(v119, v112);
  v83 = (v111 + OBJC_IVAR____TtC19SiriPaymentsIntents12PaymentsFlow_flowState);
  v84 = &v165;
  swift_beginAccess();
  outlined init with copy of PaymentsFlowState(v83, v107);
  swift_endAccess();
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v25 = v117;
    outlined destroy of PaymentsFlowState(v107);
    v26 = Logger.payments.unsafeMutableAddressor();
    v122(v25, v26, v112);
    v78 = Logger.logObject.getter();
    v75 = v78;
    v77 = static os_log_type_t.debug.getter();
    v76 = v77;
    v79 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v78, v77))
    {
      v27 = v80;
      v66 = static UnsafeMutablePointer.allocate(capacity:)();
      v62 = v66;
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v64 = 0;
      v67 = createStorage<A>(capacity:type:)(0);
      v65 = v67;
      v68 = createStorage<A>(capacity:type:)(v64);
      v159 = v66;
      v158 = v67;
      v157 = v68;
      v69 = 0;
      v70 = &v159;
      serialize(_:at:)(0, &v159);
      serialize(_:at:)(v69, v70);
      v156[1] = v79;
      v71 = &v34;
      MEMORY[0x28223BE20](&v34);
      v72 = &v34 - 6;
      *(&v34 - 4) = v28;
      *(&v34 - 3) = &v158;
      *(&v34 - 2) = &v157;
      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      v74 = v27;
      if (v27)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_2686B1000, v75, v76, "#PaymentsFlow moving flow states from .initialized to .runningGuardFlow", v62, 2u);
        v60 = 0;
        destroyStorage<A>(_:count:)(v65, 0, v63);
        destroyStorage<A>(_:count:)(v68, v60, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v62, MEMORY[0x277D84B78]);

        v61 = v74;
      }
    }

    else
    {

      v61 = v80;
    }

    v57 = v61;

    v81(v117, v112);
    v125(v105, v124, v109);
    swift_storeEnumTagMultiPayload();
    outlined init with copy of PaymentsFlowState(v105, v103);
    v55 = (v111 + OBJC_IVAR____TtC19SiriPaymentsIntents12PaymentsFlow_flowState);
    v56 = &v160;
    swift_beginAccess();
    outlined assign with take of PaymentsFlowState(v103, v55);
    swift_endAccess();
    outlined destroy of PaymentsFlowState(v105);
    v58 = 1;
    v59 = v57;
  }

  else
  {
    v29 = v115;
    outlined destroy of PaymentsFlowState(v107);
    v30 = Logger.payments.unsafeMutableAddressor();
    v122(v29, v30, v112);
    v53 = Logger.logObject.getter();
    v50 = v53;
    v52 = static os_log_type_t.error.getter();
    v51 = v52;
    v54 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v53, v52))
    {
      v31 = v80;
      v41 = static UnsafeMutablePointer.allocate(capacity:)();
      v37 = v41;
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v39 = 0;
      v42 = createStorage<A>(capacity:type:)(0);
      v40 = v42;
      v43 = createStorage<A>(capacity:type:)(v39);
      v164 = v41;
      v163 = v42;
      v162 = v43;
      v44 = 0;
      v45 = &v164;
      serialize(_:at:)(0, &v164);
      serialize(_:at:)(v44, v45);
      v161 = v54;
      v46 = &v34;
      MEMORY[0x28223BE20](&v34);
      v47 = &v34 - 6;
      *(&v34 - 4) = v32;
      *(&v34 - 3) = &v163;
      *(&v34 - 2) = &v162;
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      v49 = v31;
      if (v31)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_2686B1000, v50, v51, "#PaymentsFlow on(input:) was invoked while in an unexpected flow state, returning false", v37, 2u);
        v35 = 0;
        destroyStorage<A>(_:count:)(v40, 0, v38);
        destroyStorage<A>(_:count:)(v43, v35, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v37, MEMORY[0x277D84B78]);

        v36 = v49;
      }
    }

    else
    {

      v36 = v80;
    }

    v34 = v36;

    v81(v115, v112);
    v58 = 0;
    v59 = v34;
  }

  return v58 & 1;
}

uint64_t implicit closure #1 in PaymentsFlow.on(input:)(uint64_t a1)
{
  v2[1] = a1;
  v5 = type metadata accessor for Input();
  v4 = *(v5 - 8);
  v3 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v6 = v2 - v3;
  (*(v4 + 16))();
  lazy protocol witness table accessor for type Input and conformance Input();
  return String.init<A>(describing:)();
}

uint64_t sub_268861FF4()
{
  v3 = *(type metadata accessor for Input() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #1 in PaymentsFlow.on(input:)()
{
  v1 = *(type metadata accessor for Input() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #1 in PaymentsFlow.on(input:)(v2);
}

uint64_t PaymentsFlow.execute(completion:)()
{
  type metadata accessor for PaymentsFlow();
  lazy protocol witness table accessor for type PaymentsFlow and conformance PaymentsFlow();
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t PaymentsFlow.execute()(uint64_t a1)
{
  v2[77] = v1;
  v2[76] = a1;
  v2[33] = v2;
  v2[34] = 0;
  v2[39] = 0;
  v2[40] = 0;
  v2[41] = 0;
  v2[46] = 0;
  v2[47] = 0;
  v2[61] = 0;
  v2[62] = 0;
  v3 = type metadata accessor for Parse();
  v2[78] = v3;
  v9 = *(v3 - 8);
  v2[79] = v9;
  v10 = *(v9 + 64);
  v2[80] = swift_task_alloc();
  v2[81] = swift_task_alloc();
  v4 = type metadata accessor for Input();
  v2[82] = v4;
  v11 = *(v4 - 8);
  v2[83] = v11;
  v2[84] = *(v11 + 64);
  v2[85] = swift_task_alloc();
  v2[86] = swift_task_alloc();
  v2[87] = swift_task_alloc();
  v2[88] = swift_task_alloc();
  v5 = type metadata accessor for PaymentsFlowState();
  v2[89] = v5;
  v12 = *(*(v5 - 8) + 64);
  v2[90] = swift_task_alloc();
  v2[91] = swift_task_alloc();
  v2[92] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v2[93] = v6;
  v13 = *(v6 - 8);
  v2[94] = v13;
  v14 = *(v13 + 64);
  v2[95] = swift_task_alloc();
  v2[96] = swift_task_alloc();
  v2[97] = swift_task_alloc();
  v2[98] = swift_task_alloc();
  v2[99] = swift_task_alloc();
  v2[100] = swift_task_alloc();
  v2[101] = swift_task_alloc();
  v2[102] = swift_task_alloc();
  v2[103] = swift_task_alloc();
  v2[104] = swift_task_alloc();
  v2[105] = swift_task_alloc();
  v2[106] = swift_task_alloc();
  v2[34] = v1;
  v7 = v2[33];

  return MEMORY[0x2822009F8](PaymentsFlow.execute(), 0);
}

{
  v11 = *v2;
  v9 = (*v2 + 16);
  v10 = v11 + 33;
  v4 = *(*v2 + 896);
  v11[33] = *v2;
  v11[113] = a1;
  v11[114] = v1;

  if (v1)
  {
    v7 = *v10;
    v6 = PaymentsFlow.execute();
  }

  else
  {
    (*(v9[77] + 8))(v9[79], v9[76]);
    v5 = *v10;
    v6 = PaymentsFlow.execute();
  }

  return MEMORY[0x2822009F8](v6, 0);
}

{
  v11 = *v2;
  v9 = (*v2 + 16);
  v10 = v11 + 33;
  v4 = *(*v2 + 936);
  v11[33] = *v2;
  v11[118] = a1;
  v11[119] = v1;

  if (v1)
  {
    v7 = *v10;
    v6 = PaymentsFlow.execute();
  }

  else
  {
    (*(v9[77] + 8))(v9[78], v9[76]);
    v5 = *v10;
    v6 = PaymentsFlow.execute();
  }

  return MEMORY[0x2822009F8](v6, 0);
}

{
  v10 = *v2;
  v9 = v10 + 33;
  v4 = *(*v2 + 960);
  v10[33] = *v2;
  v10[121] = a1;
  v10[122] = v1;

  if (v1)
  {
    v7 = *v9;
    v6 = PaymentsFlow.execute();
  }

  else
  {
    v5 = *v9;
    v6 = PaymentsFlow.execute();
  }

  return MEMORY[0x2822009F8](v6, 0);
}

uint64_t PaymentsFlow.execute()()
{
  v1 = v0[106];
  v145 = v0[94];
  v146 = v0[93];
  v0[33] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  v3 = *(v145 + 16);
  v147 = v3;
  v0[107] = v3;
  v0[108] = (v145 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v3(v1, v2, v146);
  v149 = Logger.logObject.getter();
  v148 = static os_log_type_t.debug.getter();
  v0[109] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v150 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v149, v148))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v141 = createStorage<A>(capacity:type:)(0);
    v142 = createStorage<A>(capacity:type:)(0);
    *(v144 + 576) = buf;
    *(v144 + 584) = v141;
    *(v144 + 592) = v142;
    serialize(_:at:)(0, (v144 + 576));
    serialize(_:at:)(0, (v144 + 576));
    *(v144 + 600) = v150;
    v143 = swift_task_alloc();
    v143[2] = v144 + 576;
    v143[3] = v144 + 584;
    v143[4] = v144 + 592;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v149, v148, "#PaymentsFlow running execute()", buf, 2u);
    destroyStorage<A>(_:count:)(v141, 0, v139);
    destroyStorage<A>(_:count:)(v142, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  v131 = *(v144 + 848);
  v132 = *(v144 + 744);
  v136 = *(v144 + 736);
  v137 = *(v144 + 712);
  v134 = *(v144 + 616);
  v130 = *(v144 + 752);
  MEMORY[0x277D82BD8](v149);
  v133 = *(v130 + 8);
  *(v144 + 880) = v133;
  *(v144 + 888) = (v130 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v133(v131, v132);
  v135 = (v134 + OBJC_IVAR____TtC19SiriPaymentsIntents12PaymentsFlow_flowState);
  swift_beginAccess();
  outlined init with copy of PaymentsFlowState(v135, v136);
  swift_endAccess();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 0:
      v111 = *(v144 + 832);
      v114 = *(v144 + 744);
      v6 = *(v144 + 736);
      v107 = *(v144 + 704);
      v7 = *(v144 + 656);
      v108 = *(v144 + 616);
      v8 = (*(v144 + 664) + 32);
      v106 = *v8;
      (*v8)();
      *(v144 + 488) = v107;
      outlined init with copy of GlobalsProviding(v108 + OBJC_IVAR____TtC19SiriPaymentsIntents12PaymentsFlow_flowFactory, v144 + 176);
      v109 = *(v144 + 200);
      v110 = *(v144 + 208);
      __swift_project_boxed_opaque_existential_1((v144 + 176), v109);
      v112 = *(v108 + OBJC_IVAR____TtC19SiriPaymentsIntents12PaymentsFlow_restrictionGuards);

      v113 = (*(v110 + 24))(v112, v109);

      *(v144 + 496) = v113;
      __swift_destroy_boxed_opaque_existential_0((v144 + 176));
      v9 = Logger.payments.unsafeMutableAddressor();
      v147(v111, v9, v114);
      log = Logger.logObject.getter();
      v115 = static os_log_type_t.debug.getter();
      v117 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(log, v115))
      {
        v102 = static UnsafeMutablePointer.allocate(capacity:)();
        v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v103 = createStorage<A>(capacity:type:)(0);
        v104 = createStorage<A>(capacity:type:)(0);
        *(v144 + 512) = v102;
        *(v144 + 520) = v103;
        *(v144 + 528) = v104;
        serialize(_:at:)(0, (v144 + 512));
        serialize(_:at:)(0, (v144 + 512));
        *(v144 + 536) = v117;
        v105 = swift_task_alloc();
        v105[2] = v144 + 512;
        v105[3] = v144 + 520;
        v105[4] = v144 + 528;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();

        _os_log_impl(&dword_2686B1000, log, v115, "#PaymentsFlow moving flow states from .runningGuardFlows to .ongoing next guard flow", v102, 2u);
        destroyStorage<A>(_:count:)(v103, 0, v101);
        destroyStorage<A>(_:count:)(v104, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v102, MEMORY[0x277D84B78]);
      }

      v89 = *(v144 + 832);
      v90 = *(v144 + 744);
      v99 = *(v144 + 704);
      v95 = *(v144 + 696);
      v93 = *(v144 + 672);
      v100 = *(v144 + 656);
      v91 = *(v144 + 616);
      v97 = *(v144 + 608);
      v92 = *(v144 + 664);
      MEMORY[0x277D82BD8](log);
      v133(v89, v90);
      *(v144 + 504) = v113;
      v96 = swift_allocObject();

      swift_weakInit();

      (*(v92 + 16))(v95, v99, v100);
      v94 = (*(v92 + 80) + 24) & ~*(v92 + 80);
      v98 = swift_allocObject();
      *(v98 + 16) = v96;
      (v106)(v98 + v94, v95, v100);

      type metadata accessor for GuardFlow();
      static ExecuteResponse.ongoing<A>(next:childCompletion:)();

      (*(v92 + 8))(v99, v100);
      break;
    case 1:
      v12 = *(v144 + 688);
      v70 = *(v144 + 648);
      v69 = *(v144 + 616);
      (*(*(v144 + 664) + 32))(v12, *(v144 + 736), *(v144 + 656));
      *(v144 + 368) = v12;
      outlined init with copy of GlobalsProviding(v69 + OBJC_IVAR____TtC19SiriPaymentsIntents12PaymentsFlow_flowFactory, v144 + 96);
      v71 = *(v144 + 120);
      v72 = *(v144 + 128);
      __swift_project_boxed_opaque_existential_1((v144 + 96), v71);
      Input.parse.getter();
      v73 = (*(v72 + 16) + **(v72 + 16));
      v13 = *(*(v72 + 16) + 4);
      v14 = swift_task_alloc();
      v15 = v71;
      v16 = v72;
      v17 = v73;
      *(v144 + 896) = v14;
      *v14 = *(v144 + 264);
      v14[1] = PaymentsFlow.execute();
      v18 = *(v144 + 648);

      return v17(v18, v15, v16);
    case 2:
      v20 = *(v144 + 736);
      v21 = *(v144 + 680);
      v22 = *(v144 + 656);
      v65 = *(v144 + 640);
      v64 = *(v144 + 616);
      v23 = *(v144 + 664) + 32;
      v24 = *v23;
      *(v144 + 920) = *v23;
      *(v144 + 928) = v23 & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v24(v21, v20, v22);
      *(v144 + 312) = v21;
      outlined init with copy of GlobalsProviding(v64 + OBJC_IVAR____TtC19SiriPaymentsIntents12PaymentsFlow_flowFactory, v144 + 16);
      v66 = *(v144 + 40);
      v67 = *(v144 + 48);
      __swift_project_boxed_opaque_existential_1((v144 + 16), v66);
      Input.parse.getter();
      v68 = (*(v67 + 16) + **(v67 + 16));
      v25 = *(*(v67 + 16) + 4);
      v26 = swift_task_alloc();
      v15 = v66;
      v16 = v67;
      v17 = v68;
      *(v144 + 936) = v26;
      *v26 = *(v144 + 264);
      v26[1] = PaymentsFlow.execute();
      v18 = *(v144 + 640);

      return v17(v18, v15, v16);
    case 3:
      v4 = *(v144 + 840);
      v126 = *(v144 + 744);
      v5 = Logger.payments.unsafeMutableAddressor();
      v147(v4, v5, v126);
      oslog = Logger.logObject.getter();
      v127 = static os_log_type_t.debug.getter();
      v129 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(oslog, v127))
      {
        v122 = static UnsafeMutablePointer.allocate(capacity:)();
        v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v123 = createStorage<A>(capacity:type:)(0);
        v124 = createStorage<A>(capacity:type:)(0);
        *(v144 + 544) = v122;
        *(v144 + 552) = v123;
        *(v144 + 560) = v124;
        serialize(_:at:)(0, (v144 + 544));
        serialize(_:at:)(0, (v144 + 544));
        *(v144 + 568) = v129;
        v125 = swift_task_alloc();
        v125[2] = v144 + 544;
        v125[3] = v144 + 552;
        v125[4] = v144 + 560;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();

        _os_log_impl(&dword_2686B1000, oslog, v127, "#PaymentsFlow unexpectedly encountered initialized flow state, ending with complete", v122, 2u);
        destroyStorage<A>(_:count:)(v123, 0, v121);
        destroyStorage<A>(_:count:)(v124, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v122, MEMORY[0x277D84B78]);
      }

      v118 = *(v144 + 840);
      v119 = *(v144 + 744);
      v120 = *(v144 + 608);
      MEMORY[0x277D82BD8](oslog);
      v133(v118, v119);
      static ExecuteResponse.complete()();
      break;
    case 4:
      v10 = *(v144 + 824);
      v85 = *(v144 + 744);
      v11 = Logger.payments.unsafeMutableAddressor();
      v147(v10, v11, v85);
      v87 = Logger.logObject.getter();
      v86 = static os_log_type_t.debug.getter();
      v88 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v87, v86))
      {
        v81 = static UnsafeMutablePointer.allocate(capacity:)();
        v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v82 = createStorage<A>(capacity:type:)(0);
        v83 = createStorage<A>(capacity:type:)(0);
        *(v144 + 456) = v81;
        *(v144 + 464) = v82;
        *(v144 + 472) = v83;
        serialize(_:at:)(0, (v144 + 456));
        serialize(_:at:)(0, (v144 + 456));
        *(v144 + 480) = v88;
        v84 = swift_task_alloc();
        v84[2] = v144 + 456;
        v84[3] = v144 + 464;
        v84[4] = v144 + 472;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();

        _os_log_impl(&dword_2686B1000, v87, v86, "#PaymentsFlow Apple Card balance request - vending simple output flow", v81, 2u);
        destroyStorage<A>(_:count:)(v82, 0, v80);
        destroyStorage<A>(_:count:)(v83, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v81, MEMORY[0x277D84B78]);
      }

      v74 = *(v144 + 824);
      v75 = *(v144 + 744);
      v76 = *(v144 + 616);
      v79 = *(v144 + 608);
      MEMORY[0x277D82BD8](v87);
      v133(v74, v75);
      outlined init with copy of GlobalsProviding(v76 + OBJC_IVAR____TtC19SiriPaymentsIntents12PaymentsFlow_flowFactory, v144 + 136);
      v78 = *(v144 + 160);
      v77 = *(v144 + 168);
      __swift_project_boxed_opaque_existential_1((v144 + 136), v78);
      (*(v77 + 72))(v78);
      static ExecuteResponse.complete(next:)();

      __swift_destroy_boxed_opaque_existential_0((v144 + 136));
      break;
    default:
      v27 = *(v144 + 784);
      v60 = *(v144 + 744);
      v28 = Logger.payments.unsafeMutableAddressor();
      v147(v27, v28, v60);
      v62 = Logger.logObject.getter();
      v61 = static os_log_type_t.debug.getter();
      v63 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v62, v61))
      {
        v56 = static UnsafeMutablePointer.allocate(capacity:)();
        v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v57 = createStorage<A>(capacity:type:)(0);
        v58 = createStorage<A>(capacity:type:)(0);
        *(v144 + 280) = v56;
        *(v144 + 288) = v57;
        *(v144 + 296) = v58;
        serialize(_:at:)(0, (v144 + 280));
        serialize(_:at:)(0, (v144 + 280));
        *(v144 + 304) = v63;
        v59 = swift_task_alloc();
        v59[2] = v144 + 280;
        v59[3] = v144 + 288;
        v59[4] = v144 + 296;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();

        _os_log_impl(&dword_2686B1000, v62, v61, "#PaymentsFlow current state is now .finished, ending flow", v56, 2u);
        destroyStorage<A>(_:count:)(v57, 0, v55);
        destroyStorage<A>(_:count:)(v58, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v56, MEMORY[0x277D84B78]);
      }

      v52 = *(v144 + 784);
      v53 = *(v144 + 744);
      v54 = *(v144 + 608);
      MEMORY[0x277D82BD8](v62);
      v133(v52, v53);
      static ExecuteResponse.complete()();
      break;
  }

  v29 = *(v144 + 848);
  v32 = *(v144 + 840);
  v33 = *(v144 + 832);
  v34 = *(v144 + 824);
  v35 = *(v144 + 816);
  v36 = *(v144 + 808);
  v37 = *(v144 + 800);
  v38 = *(v144 + 792);
  v39 = *(v144 + 784);
  v40 = *(v144 + 776);
  v41 = *(v144 + 768);
  v42 = *(v144 + 760);
  v43 = *(v144 + 736);
  v44 = *(v144 + 728);
  v45 = *(v144 + 720);
  v46 = *(v144 + 704);
  v47 = *(v144 + 696);
  v48 = *(v144 + 688);
  v49 = *(v144 + 680);
  v50 = *(v144 + 648);
  v51 = *(v144 + 640);

  v30 = *(*(v144 + 264) + 8);
  v31 = *(v144 + 264);

  return v30();
}

{
  v112 = v0;
  v0[33] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  v105 = v0[114];
  v106 = v0[113];
  if (v106)
  {
    v1 = *(v104 + 688);
    *(v104 + 376) = v106;
    if (dispatch thunk of AnyFlow.on(input:)())
    {
      v100 = *(v104 + 872);
      v98 = *(v104 + 864);
      v99 = *(v104 + 856);
      v2 = *(v104 + 816);
      v97 = *(v104 + 744);
      v3 = Logger.payments.unsafeMutableAddressor();
      v99(v2, v3, v97);
      oslog = Logger.logObject.getter();
      v101 = static os_log_type_t.debug.getter();
      v103 = _allocateUninitializedArray<A>(_:)();
      if (!os_log_type_enabled(oslog, v101))
      {

        goto LABEL_8;
      }

      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v94 = createStorage<A>(capacity:type:)(0);
      v95 = createStorage<A>(capacity:type:)(0);
      *(v104 + 424) = buf;
      *(v104 + 432) = v94;
      *(v104 + 440) = v95;
      serialize(_:at:)(0, (v104 + 424));
      serialize(_:at:)(0, (v104 + 424));
      *(v104 + 448) = v103;
      v96 = swift_task_alloc();
      v96[2] = v104 + 424;
      v96[3] = v104 + 432;
      v96[4] = v104 + 440;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (!v105)
      {

        _os_log_impl(&dword_2686B1000, oslog, v101, "#PaymentsFlow obtained anyFlow from FlowFactory, pushing it to the next state", buf, 2u);
        destroyStorage<A>(_:count:)(v94, 0, v92);
        destroyStorage<A>(_:count:)(v95, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);

LABEL_8:
        v81 = *(v104 + 888);
        v82 = *(v104 + 880);
        v79 = *(v104 + 816);
        v80 = *(v104 + 744);
        v87 = *(v104 + 728);
        v85 = *(v104 + 720);
        v84 = *(v104 + 712);
        v90 = *(v104 + 688);
        v91 = *(v104 + 656);
        v88 = *(v104 + 616);
        v89 = *(v104 + 608);
        v83 = *(v104 + 664);
        MEMORY[0x277D82BD8](oslog);
        v82(v79, v80);
        (*(v83 + 16))(v87, v90, v91);
        swift_storeEnumTagMultiPayload();
        outlined init with copy of PaymentsFlowState(v87, v85);
        v86 = (v88 + OBJC_IVAR____TtC19SiriPaymentsIntents12PaymentsFlow_flowState);
        swift_beginAccess();
        outlined assign with take of PaymentsFlowState(v85, v86);
        swift_endAccess();
        outlined destroy of PaymentsFlowState(v87);
        *(v104 + 416) = v106;
        swift_allocObject();

        swift_weakInit();

        type metadata accessor for AnyFlow();
        static ExecuteResponse.ongoing<A>(next:childCompletion:)();

        (*(v83 + 8))(v90, v91);
LABEL_23:
        v12 = *(v104 + 848);
        v15 = *(v104 + 840);
        v16 = *(v104 + 832);
        v17 = *(v104 + 824);
        v18 = *(v104 + 816);
        v19 = *(v104 + 808);
        v20 = *(v104 + 800);
        v21 = *(v104 + 792);
        v22 = *(v104 + 784);
        v23 = *(v104 + 776);
        v24 = *(v104 + 768);
        v25 = *(v104 + 760);
        v26 = *(v104 + 736);
        v27 = *(v104 + 728);
        v28 = *(v104 + 720);
        v29 = *(v104 + 704);
        v30 = *(v104 + 696);
        v31 = *(v104 + 688);
        v32 = *(v104 + 680);
        v33 = *(v104 + 648);
        v34 = *(v104 + 640);

        v13 = *(*(v104 + 264) + 8);
        v14 = *(v104 + 264);

        return v13();
      }
    }

    v75 = *(v104 + 872);
    v73 = *(v104 + 864);
    v74 = *(v104 + 856);
    v5 = *(v104 + 808);
    v72 = *(v104 + 744);
    v6 = Logger.payments.unsafeMutableAddressor();
    v74(v5, v6, v72);
    log = Logger.logObject.getter();
    v76 = static os_log_type_t.error.getter();
    v78 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(log, v76))
    {
      v68 = static UnsafeMutablePointer.allocate(capacity:)();
      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v69 = createStorage<A>(capacity:type:)(0);
      v70 = createStorage<A>(capacity:type:)(0);
      *(v104 + 384) = v68;
      *(v104 + 392) = v69;
      *(v104 + 400) = v70;
      serialize(_:at:)(0, (v104 + 384));
      serialize(_:at:)(0, (v104 + 384));
      *(v104 + 408) = v78;
      v71 = swift_task_alloc();
      v71[2] = v104 + 384;
      v71[3] = v104 + 392;
      v71[4] = v104 + 400;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (v105)
      {
      }

      _os_log_impl(&dword_2686B1000, log, v76, "#PaymentsFlow RCHFlow.on() returned false", v68, 2u);
      destroyStorage<A>(_:count:)(v69, 0, v67);
      destroyStorage<A>(_:count:)(v70, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v68, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v61 = *(v104 + 888);
    v62 = *(v104 + 880);
    v59 = *(v104 + 808);
    v60 = *(v104 + 744);
    v65 = *(v104 + 688);
    v66 = *(v104 + 656);
    v63 = *(v104 + 608);
    v64 = *(v104 + 664);
    MEMORY[0x277D82BD8](log);
    v62(v59, v60);
    static ExecuteResponse.complete()();

    (*(v64 + 8))(v65, v66);
    goto LABEL_23;
  }

  (*(*(v104 + 664) + 8))(*(v104 + 688), *(v104 + 656));
  v56 = *(v104 + 872);
  v48 = *(v104 + 864);
  v49 = *(v104 + 856);
  v7 = *(v104 + 776);
  v47 = *(v104 + 744);
  v50 = *(v104 + 616);
  v8 = Logger.payments.unsafeMutableAddressor();
  v49(v7, v8, v47);

  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.error.getter();
  v52 = swift_allocObject();
  *(v52 + 16) = 32;
  v53 = swift_allocObject();
  *(v53 + 16) = 8;
  v51 = swift_allocObject();
  *(v51 + 16) = partial apply for implicit closure #2 in PaymentsFlow.execute();
  *(v51 + 24) = v50;
  v54 = swift_allocObject();
  *(v54 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v54 + 24) = v51;
  _allocateUninitializedArray<A>(_:)();
  v55 = v9;

  *v55 = partial apply for closure #1 in OSLogArguments.append(_:);
  v55[1] = v52;

  v55[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v55[3] = v53;

  v55[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v55[5] = v54;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v57, v58))
  {
    v44 = static UnsafeMutablePointer.allocate(capacity:)();
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v45 = createStorage<A>(capacity:type:)(0);
    v46 = createStorage<A>(capacity:type:)(1);
    v107 = v44;
    v108 = v45;
    v109 = v46;
    serialize(_:at:)(2, &v107);
    serialize(_:at:)(1, &v107);
    v110 = partial apply for closure #1 in OSLogArguments.append(_:);
    v111 = v52;
    closure #1 in osLogInternal(_:log:type:)(&v110, &v107, &v108, &v109);
    if (v105)
    {
    }

    v110 = partial apply for closure #1 in OSLogArguments.append(_:);
    v111 = v53;
    closure #1 in osLogInternal(_:log:type:)(&v110, &v107, &v108, &v109);
    v110 = partial apply for closure #1 in OSLogArguments.append(_:);
    v111 = v54;
    closure #1 in osLogInternal(_:log:type:)(&v110, &v107, &v108, &v109);
    _os_log_impl(&dword_2686B1000, v57, v58, "#PaymentsFlow flowState machine unexpectedly failed to determine next state for current: %s", v44, 0xCu);
    destroyStorage<A>(_:count:)(v45, 0, v43);
    destroyStorage<A>(_:count:)(v46, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](v44, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v37 = *(v104 + 888);
  v38 = *(v104 + 880);
  v35 = *(v104 + 776);
  v36 = *(v104 + 744);
  v39 = *(v104 + 616);
  MEMORY[0x277D82BD8](v57);
  v38(v35, v36);
  outlined init with copy of GlobalsProviding(v39 + OBJC_IVAR____TtC19SiriPaymentsIntents12PaymentsFlow_flowFactory, v104 + 56);
  v42 = *(v104 + 80);
  v40 = *(v104 + 88);
  __swift_project_boxed_opaque_existential_1((v104 + 56), v42);
  v41 = (*(v40 + 56) + **(v40 + 56));
  v10 = *(*(v40 + 56) + 4);
  v11 = swift_task_alloc();
  *(v104 + 960) = v11;
  *v11 = *(v104 + 264);
  v11[1] = PaymentsFlow.execute();

  return v41(v42, v40);
}

{
  v124 = v0;
  v0[33] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v112 = v0[119];
  v113 = v0[118];
  if (v113)
  {
    v107 = *(v111 + 872);
    v105 = *(v111 + 864);
    v106 = *(v111 + 856);
    v1 = *(v111 + 800);
    v104 = *(v111 + 744);
    *(v111 + 328) = v113;
    v2 = Logger.payments.unsafeMutableAddressor();
    v106(v1, v2, v104);
    oslog = Logger.logObject.getter();
    v108 = static os_log_type_t.debug.getter();
    v110 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(oslog, v108))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v101 = createStorage<A>(capacity:type:)(0);
      v102 = createStorage<A>(capacity:type:)(0);
      *(v111 + 336) = buf;
      *(v111 + 344) = v101;
      *(v111 + 352) = v102;
      serialize(_:at:)(0, (v111 + 336));
      serialize(_:at:)(0, (v111 + 336));
      *(v111 + 360) = v110;
      v103 = swift_task_alloc();
      v103[2] = v111 + 336;
      v103[3] = v111 + 344;
      v103[4] = v111 + 352;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (v112)
      {
      }

      _os_log_impl(&dword_2686B1000, oslog, v108, "#PaymentsFlow obtained anyFlow from FlowFactory, pushing it to the next state", buf, 2u);
      destroyStorage<A>(_:count:)(v101, 0, v99);
      destroyStorage<A>(_:count:)(v102, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v73 = *(v111 + 888);
    v74 = *(v111 + 880);
    v71 = *(v111 + 800);
    v72 = *(v111 + 744);
    v77 = *(v111 + 680);
    v78 = *(v111 + 656);
    v75 = *(v111 + 608);
    v76 = *(v111 + 664);
    MEMORY[0x277D82BD8](oslog);
    v74(v71, v72);
    static ExecuteResponse.complete(next:)();

    (*(v76 + 8))(v77, v78);
    v4 = *(v111 + 848);
    v79 = *(v111 + 840);
    v80 = *(v111 + 832);
    v81 = *(v111 + 824);
    v82 = *(v111 + 816);
    v83 = *(v111 + 808);
    v84 = *(v111 + 800);
    v85 = *(v111 + 792);
    v86 = *(v111 + 784);
    v87 = *(v111 + 776);
    v88 = *(v111 + 768);
    v89 = *(v111 + 760);
    v90 = *(v111 + 736);
    v91 = *(v111 + 728);
    v92 = *(v111 + 720);
    v93 = *(v111 + 704);
    v94 = *(v111 + 696);
    v95 = *(v111 + 688);
    v96 = *(v111 + 680);
    v97 = *(v111 + 648);
    v98 = *(v111 + 640);

    v5 = *(*(v111 + 264) + 8);
    v6 = *(v111 + 264);

    return v5();
  }

  else
  {
    v60 = *(v111 + 928);
    v61 = *(v111 + 920);
    v68 = *(v111 + 872);
    v52 = *(v111 + 864);
    v53 = *(v111 + 856);
    v7 = *(v111 + 792);
    v51 = *(v111 + 744);
    v58 = *(v111 + 696);
    v55 = *(v111 + 680);
    v56 = *(v111 + 672);
    v59 = *(v111 + 656);
    v54 = *(v111 + 664);
    v8 = Logger.payments.unsafeMutableAddressor();
    v53(v7, v8, v51);
    (*(v54 + 16))(v58, v55, v59);
    v57 = (*(v54 + 80) + 16) & ~*(v54 + 80);
    v62 = swift_allocObject();
    v61(v62 + v57, v58, v59);
    log = Logger.logObject.getter();
    v70 = static os_log_type_t.debug.getter();
    v64 = swift_allocObject();
    *(v64 + 16) = 32;
    v65 = swift_allocObject();
    *(v65 + 16) = 8;
    v63 = swift_allocObject();
    *(v63 + 16) = partial apply for implicit closure #1 in PaymentsFlow.execute();
    *(v63 + 24) = v62;
    v66 = swift_allocObject();
    *(v66 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v66 + 24) = v63;
    _allocateUninitializedArray<A>(_:)();
    v67 = v9;

    *v67 = partial apply for closure #1 in OSLogArguments.append(_:);
    v67[1] = v64;

    v67[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v67[3] = v65;

    v67[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v67[5] = v66;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(log, v70))
    {
      v48 = static UnsafeMutablePointer.allocate(capacity:)();
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v49 = createStorage<A>(capacity:type:)(0);
      v50 = createStorage<A>(capacity:type:)(1);
      v119 = v48;
      v120 = v49;
      v121 = v50;
      serialize(_:at:)(2, &v119);
      serialize(_:at:)(1, &v119);
      v122 = partial apply for closure #1 in OSLogArguments.append(_:);
      v123 = v64;
      closure #1 in osLogInternal(_:log:type:)(&v122, &v119, &v120, &v121);
      if (v112)
      {
      }

      v122 = partial apply for closure #1 in OSLogArguments.append(_:);
      v123 = v65;
      closure #1 in osLogInternal(_:log:type:)(&v122, &v119, &v120, &v121);
      v122 = partial apply for closure #1 in OSLogArguments.append(_:);
      v123 = v66;
      closure #1 in osLogInternal(_:log:type:)(&v122, &v119, &v120, &v121);
      _os_log_impl(&dword_2686B1000, log, v70, "#PaymentsFlow could not determine the proper flow for parse: %s", v48, 0xCu);
      destroyStorage<A>(_:count:)(v49, 0, v47);
      destroyStorage<A>(_:count:)(v50, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v48, MEMORY[0x277D84B78]);

      v46 = 0;
    }

    else
    {

      v46 = v112;
    }

    v29 = *(v111 + 888);
    v30 = *(v111 + 880);
    v27 = *(v111 + 792);
    v28 = *(v111 + 744);
    v32 = *(v111 + 680);
    v33 = *(v111 + 656);
    v31 = *(v111 + 664);
    MEMORY[0x277D82BD8](log);
    v30(v27, v28);
    (*(v31 + 8))(v32, v33);
    v43 = *(v111 + 872);
    v35 = *(v111 + 864);
    v36 = *(v111 + 856);
    v10 = *(v111 + 776);
    v34 = *(v111 + 744);
    v37 = *(v111 + 616);
    v11 = Logger.payments.unsafeMutableAddressor();
    v36(v10, v11, v34);

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    v39 = swift_allocObject();
    *(v39 + 16) = 32;
    v40 = swift_allocObject();
    *(v40 + 16) = 8;
    v38 = swift_allocObject();
    *(v38 + 16) = partial apply for implicit closure #2 in PaymentsFlow.execute();
    *(v38 + 24) = v37;
    v41 = swift_allocObject();
    *(v41 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v41 + 24) = v38;
    _allocateUninitializedArray<A>(_:)();
    v42 = v12;

    *v42 = partial apply for closure #1 in OSLogArguments.append(_:);
    v42[1] = v39;

    v42[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v42[3] = v40;

    v42[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v42[5] = v41;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v44, v45))
    {
      v24 = static UnsafeMutablePointer.allocate(capacity:)();
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v25 = createStorage<A>(capacity:type:)(0);
      v26 = createStorage<A>(capacity:type:)(1);
      v114 = v24;
      v115 = v25;
      v116 = v26;
      serialize(_:at:)(2, &v114);
      serialize(_:at:)(1, &v114);
      v117 = partial apply for closure #1 in OSLogArguments.append(_:);
      v118 = v39;
      closure #1 in osLogInternal(_:log:type:)(&v117, &v114, &v115, &v116);
      if (v46)
      {
      }

      v117 = partial apply for closure #1 in OSLogArguments.append(_:);
      v118 = v40;
      closure #1 in osLogInternal(_:log:type:)(&v117, &v114, &v115, &v116);
      v117 = partial apply for closure #1 in OSLogArguments.append(_:);
      v118 = v41;
      closure #1 in osLogInternal(_:log:type:)(&v117, &v114, &v115, &v116);
      _os_log_impl(&dword_2686B1000, v44, v45, "#PaymentsFlow flowState machine unexpectedly failed to determine next state for current: %s", v24, 0xCu);
      destroyStorage<A>(_:count:)(v25, 0, v23);
      destroyStorage<A>(_:count:)(v26, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v24, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v17 = *(v111 + 888);
    v18 = *(v111 + 880);
    v15 = *(v111 + 776);
    v16 = *(v111 + 744);
    v19 = *(v111 + 616);
    MEMORY[0x277D82BD8](v44);
    v18(v15, v16);
    outlined init with copy of GlobalsProviding(v19 + OBJC_IVAR____TtC19SiriPaymentsIntents12PaymentsFlow_flowFactory, v111 + 56);
    v22 = *(v111 + 80);
    v20 = *(v111 + 88);
    __swift_project_boxed_opaque_existential_1((v111 + 56), v22);
    v21 = (*(v20 + 56) + **(v20 + 56));
    v13 = *(*(v20 + 56) + 4);
    v14 = swift_task_alloc();
    *(v111 + 960) = v14;
    *v14 = *(v111 + 264);
    v14[1] = PaymentsFlow.execute();

    return v21(v22, v20);
  }
}

{
  v86 = v0;
  v74 = v0[121];
  v0[33] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v75 = v0[122];
  if (v74)
  {
    v70 = v73[109];
    v62 = v73[108];
    v63 = v73[107];
    v1 = v73[96];
    v61 = v73[93];
    v64 = v73[77];
    v73[40] = v74;
    v2 = Logger.payments.unsafeMutableAddressor();
    v63(v1, v2, v61);

    oslog = Logger.logObject.getter();
    v72 = static os_log_type_t.debug.getter();
    v66 = swift_allocObject();
    *(v66 + 16) = 32;
    v67 = swift_allocObject();
    *(v67 + 16) = 8;
    v65 = swift_allocObject();
    *(v65 + 16) = partial apply for implicit closure #2 in PaymentsFlow.execute();
    *(v65 + 24) = v64;
    v68 = swift_allocObject();
    *(v68 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v68 + 24) = v65;
    _allocateUninitializedArray<A>(_:)();
    v69 = v3;

    *v69 = partial apply for closure #1 in OSLogArguments.append(_:);
    v69[1] = v66;

    v69[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v69[3] = v67;

    v69[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v69[5] = v68;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(oslog, v72))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v59 = createStorage<A>(capacity:type:)(0);
      v60 = createStorage<A>(capacity:type:)(1);
      v81 = buf;
      v82 = v59;
      v83 = v60;
      serialize(_:at:)(2, &v81);
      serialize(_:at:)(1, &v81);
      v84 = partial apply for closure #1 in OSLogArguments.append(_:);
      v85 = v66;
      closure #1 in osLogInternal(_:log:type:)(&v84, &v81, &v82, &v83);
      if (v75)
      {
      }

      v84 = partial apply for closure #1 in OSLogArguments.append(_:);
      v85 = v67;
      closure #1 in osLogInternal(_:log:type:)(&v84, &v81, &v82, &v83);
      v84 = partial apply for closure #1 in OSLogArguments.append(_:);
      v85 = v68;
      closure #1 in osLogInternal(_:log:type:)(&v84, &v81, &v82, &v83);
      _os_log_impl(&dword_2686B1000, oslog, v72, "#PaymentsFlow Returning unsupported flow after encountering unexpected state %s", buf, 0xCu);
      destroyStorage<A>(_:count:)(v59, 0, v57);
      destroyStorage<A>(_:count:)(v60, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v54 = v73[111];
    v55 = v73[110];
    v52 = v73[96];
    v53 = v73[93];
    v56 = v73[76];
    MEMORY[0x277D82BD8](oslog);
    v55(v52, v53);
    static ExecuteResponse.complete(next:)();
  }

  else
  {
    v49 = v73[109];
    v41 = v73[108];
    v42 = v73[107];
    v5 = v73[95];
    v40 = v73[93];
    v43 = v73[77];
    v6 = Logger.payments.unsafeMutableAddressor();
    v42(v5, v6, v40);

    log = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    v45 = swift_allocObject();
    *(v45 + 16) = 32;
    v46 = swift_allocObject();
    *(v46 + 16) = 8;
    v44 = swift_allocObject();
    *(v44 + 16) = partial apply for implicit closure #2 in PaymentsFlow.execute();
    *(v44 + 24) = v43;
    v47 = swift_allocObject();
    *(v47 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v47 + 24) = v44;
    _allocateUninitializedArray<A>(_:)();
    v48 = v7;

    *v48 = partial apply for closure #1 in OSLogArguments.append(_:);
    v48[1] = v45;

    v48[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v48[3] = v46;

    v48[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v48[5] = v47;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(log, v51))
    {
      v37 = static UnsafeMutablePointer.allocate(capacity:)();
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v38 = createStorage<A>(capacity:type:)(0);
      v39 = createStorage<A>(capacity:type:)(1);
      v76 = v37;
      v77 = v38;
      v78 = v39;
      serialize(_:at:)(2, &v76);
      serialize(_:at:)(1, &v76);
      v79 = partial apply for closure #1 in OSLogArguments.append(_:);
      v80 = v45;
      closure #1 in osLogInternal(_:log:type:)(&v79, &v76, &v77, &v78);
      if (v75)
      {
      }

      v79 = partial apply for closure #1 in OSLogArguments.append(_:);
      v80 = v46;
      closure #1 in osLogInternal(_:log:type:)(&v79, &v76, &v77, &v78);
      v79 = partial apply for closure #1 in OSLogArguments.append(_:);
      v80 = v47;
      closure #1 in osLogInternal(_:log:type:)(&v79, &v76, &v77, &v78);
      _os_log_impl(&dword_2686B1000, log, v51, "#PaymentsFlow Failed to make unsupported flow after encountering unexpected state %s, completing current flow", v37, 0xCu);
      destroyStorage<A>(_:count:)(v38, 0, v36);
      destroyStorage<A>(_:count:)(v39, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v37, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v33 = v73[111];
    v34 = v73[110];
    v31 = v73[95];
    v32 = v73[93];
    v35 = v73[76];
    MEMORY[0x277D82BD8](log);
    v34(v31, v32);
    static ExecuteResponse.complete()();
  }

  v8 = v73[106];
  v11 = v73[105];
  v12 = v73[104];
  v13 = v73[103];
  v14 = v73[102];
  v15 = v73[101];
  v16 = v73[100];
  v17 = v73[99];
  v18 = v73[98];
  v19 = v73[97];
  v20 = v73[96];
  v21 = v73[95];
  v22 = v73[92];
  v23 = v73[91];
  v24 = v73[90];
  v25 = v73[88];
  v26 = v73[87];
  v27 = v73[86];
  v28 = v73[85];
  v29 = v73[81];
  v30 = v73[80];

  v9 = *(v73[33] + 8);
  v10 = v73[33];

  return v9();
}

{
  v41 = v0;
  v35 = v0[114];
  v1 = v0[81];
  v2 = v0[79];
  v3 = v0[78];
  v0[33] = v0;
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);

  (*(v34[83] + 8))(v34[86], v34[82]);
  v31 = v34[109];
  v23 = v34[108];
  v24 = v34[107];
  v4 = v34[97];
  v22 = v34[93];
  v25 = v34[77];
  v5 = Logger.payments.unsafeMutableAddressor();
  v24(v4, v5, v22);

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();
  v27 = swift_allocObject();
  *(v27 + 16) = 32;
  v28 = swift_allocObject();
  *(v28 + 16) = 8;
  v26 = swift_allocObject();
  *(v26 + 16) = partial apply for implicit closure #2 in PaymentsFlow.execute();
  *(v26 + 24) = v25;
  v29 = swift_allocObject();
  *(v29 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v29 + 24) = v26;
  _allocateUninitializedArray<A>(_:)();
  v30 = v6;

  *v30 = partial apply for closure #1 in OSLogArguments.append(_:);
  v30[1] = v27;

  v30[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v30[3] = v28;

  v30[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v30[5] = v29;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v32, v33))
  {
    v19 = static UnsafeMutablePointer.allocate(capacity:)();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v20 = createStorage<A>(capacity:type:)(0);
    v21 = createStorage<A>(capacity:type:)(1);
    v36 = v19;
    v37 = v20;
    v38 = v21;
    serialize(_:at:)(2, &v36);
    serialize(_:at:)(1, &v36);
    v39 = partial apply for closure #1 in OSLogArguments.append(_:);
    v40 = v27;
    closure #1 in osLogInternal(_:log:type:)(&v39, &v36, &v37, &v38);
    v39 = partial apply for closure #1 in OSLogArguments.append(_:);
    v40 = v28;
    closure #1 in osLogInternal(_:log:type:)(&v39, &v36, &v37, &v38);
    v39 = partial apply for closure #1 in OSLogArguments.append(_:);
    v40 = v29;
    closure #1 in osLogInternal(_:log:type:)(&v39, &v36, &v37, &v38);
    _os_log_impl(&dword_2686B1000, v32, v33, "#PaymentsFlow flowState machine unexpectedly failed to determine next state for current: %s", v19, 0xCu);
    destroyStorage<A>(_:count:)(v20, 0, v18);
    destroyStorage<A>(_:count:)(v21, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](v19, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v12 = v34[111];
  v13 = v34[110];
  v10 = v34[97];
  v11 = v34[93];
  v14 = v34[77];
  MEMORY[0x277D82BD8](v32);
  v13(v10, v11);
  outlined init with copy of GlobalsProviding(v14 + OBJC_IVAR____TtC19SiriPaymentsIntents12PaymentsFlow_flowFactory, (v34 + 7));
  v17 = v34[10];
  v15 = v34[11];
  __swift_project_boxed_opaque_existential_1(v34 + 7, v17);
  v16 = (*(v15 + 56) + **(v15 + 56));
  v7 = *(*(v15 + 56) + 4);
  v8 = swift_task_alloc();
  v34[120] = v8;
  *v8 = v34[33];
  v8[1] = PaymentsFlow.execute();

  return v16(v17, v15);
}

{
  v80 = v0;
  v69 = v0[119];
  v1 = v0[80];
  v2 = v0[79];
  v3 = v0[78];
  v0[33] = v0;
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v57 = v68[116];
  v58 = v68[115];
  v65 = v68[109];
  v49 = v68[108];
  v50 = v68[107];
  v4 = v68[99];
  v48 = v68[93];
  v55 = v68[87];
  v52 = v68[85];
  v53 = v68[84];
  v56 = v68[82];
  v51 = v68[83];
  v5 = Logger.payments.unsafeMutableAddressor();
  v50(v4, v5, v48);
  (*(v51 + 16))(v55, v52, v56);
  v54 = (*(v51 + 80) + 16) & ~*(v51 + 80);
  v59 = swift_allocObject();
  v58(v59 + v54, v55, v56);
  log = Logger.logObject.getter();
  v67 = static os_log_type_t.debug.getter();
  v61 = swift_allocObject();
  *(v61 + 16) = 32;
  v62 = swift_allocObject();
  *(v62 + 16) = 8;
  v60 = swift_allocObject();
  *(v60 + 16) = partial apply for implicit closure #1 in PaymentsFlow.execute();
  *(v60 + 24) = v59;
  v63 = swift_allocObject();
  *(v63 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v63 + 24) = v60;
  _allocateUninitializedArray<A>(_:)();
  v64 = v6;

  *v64 = partial apply for closure #1 in OSLogArguments.append(_:);
  v64[1] = v61;

  v64[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v64[3] = v62;

  v64[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v64[5] = v63;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(log, v67))
  {
    v45 = static UnsafeMutablePointer.allocate(capacity:)();
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v46 = createStorage<A>(capacity:type:)(0);
    v47 = createStorage<A>(capacity:type:)(1);
    v75 = v45;
    v76 = v46;
    v77 = v47;
    serialize(_:at:)(2, &v75);
    serialize(_:at:)(1, &v75);
    v78 = partial apply for closure #1 in OSLogArguments.append(_:);
    v79 = v61;
    closure #1 in osLogInternal(_:log:type:)(&v78, &v75, &v76, &v77);
    v78 = partial apply for closure #1 in OSLogArguments.append(_:);
    v79 = v62;
    closure #1 in osLogInternal(_:log:type:)(&v78, &v75, &v76, &v77);
    v78 = partial apply for closure #1 in OSLogArguments.append(_:);
    v79 = v63;
    closure #1 in osLogInternal(_:log:type:)(&v78, &v75, &v76, &v77);
    _os_log_impl(&dword_2686B1000, log, v67, "#PaymentsFlow could not determine the proper flow for parse: %s", v45, 0xCu);
    destroyStorage<A>(_:count:)(v46, 0, v44);
    destroyStorage<A>(_:count:)(v47, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](v45, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v27 = v68[111];
  v28 = v68[110];
  v25 = v68[99];
  v26 = v68[93];
  v30 = v68[85];
  v31 = v68[82];
  v29 = v68[83];
  MEMORY[0x277D82BD8](log);
  v28(v25, v26);
  (*(v29 + 8))(v30, v31);
  v41 = v68[109];
  v33 = v68[108];
  v34 = v68[107];
  v7 = v68[97];
  v32 = v68[93];
  v35 = v68[77];
  v8 = Logger.payments.unsafeMutableAddressor();
  v34(v7, v8, v32);

  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.error.getter();
  v37 = swift_allocObject();
  *(v37 + 16) = 32;
  v38 = swift_allocObject();
  *(v38 + 16) = 8;
  v36 = swift_allocObject();
  *(v36 + 16) = partial apply for implicit closure #2 in PaymentsFlow.execute();
  *(v36 + 24) = v35;
  v39 = swift_allocObject();
  *(v39 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v39 + 24) = v36;
  _allocateUninitializedArray<A>(_:)();
  v40 = v9;

  *v40 = partial apply for closure #1 in OSLogArguments.append(_:);
  v40[1] = v37;

  v40[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v40[3] = v38;

  v40[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v40[5] = v39;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v42, v43))
  {
    v22 = static UnsafeMutablePointer.allocate(capacity:)();
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v23 = createStorage<A>(capacity:type:)(0);
    v24 = createStorage<A>(capacity:type:)(1);
    v70 = v22;
    v71 = v23;
    v72 = v24;
    serialize(_:at:)(2, &v70);
    serialize(_:at:)(1, &v70);
    v73 = partial apply for closure #1 in OSLogArguments.append(_:);
    v74 = v37;
    closure #1 in osLogInternal(_:log:type:)(&v73, &v70, &v71, &v72);
    v73 = partial apply for closure #1 in OSLogArguments.append(_:);
    v74 = v38;
    closure #1 in osLogInternal(_:log:type:)(&v73, &v70, &v71, &v72);
    v73 = partial apply for closure #1 in OSLogArguments.append(_:);
    v74 = v39;
    closure #1 in osLogInternal(_:log:type:)(&v73, &v70, &v71, &v72);
    _os_log_impl(&dword_2686B1000, v42, v43, "#PaymentsFlow flowState machine unexpectedly failed to determine next state for current: %s", v22, 0xCu);
    destroyStorage<A>(_:count:)(v23, 0, v21);
    destroyStorage<A>(_:count:)(v24, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](v22, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v15 = v68[111];
  v16 = v68[110];
  v13 = v68[97];
  v14 = v68[93];
  v17 = v68[77];
  MEMORY[0x277D82BD8](v42);
  v16(v13, v14);
  outlined init with copy of GlobalsProviding(v17 + OBJC_IVAR____TtC19SiriPaymentsIntents12PaymentsFlow_flowFactory, (v68 + 7));
  v20 = v68[10];
  v18 = v68[11];
  __swift_project_boxed_opaque_existential_1(v68 + 7, v20);
  v19 = (*(v18 + 56) + **(v18 + 56));
  v10 = *(*(v18 + 56) + 4);
  v11 = swift_task_alloc();
  v68[120] = v11;
  *v11 = v68[33];
  v11[1] = PaymentsFlow.execute();

  return v19(v20, v18);
}

{
  v56 = v0;
  v50 = v0[122];
  v0[33] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);

  v46 = v49[109];
  v38 = v49[108];
  v39 = v49[107];
  v1 = v49[95];
  v37 = v49[93];
  v40 = v49[77];
  v2 = Logger.payments.unsafeMutableAddressor();
  v39(v1, v2, v37);

  log = Logger.logObject.getter();
  v48 = static os_log_type_t.error.getter();
  v42 = swift_allocObject();
  *(v42 + 16) = 32;
  v43 = swift_allocObject();
  *(v43 + 16) = 8;
  v41 = swift_allocObject();
  *(v41 + 16) = partial apply for implicit closure #2 in PaymentsFlow.execute();
  *(v41 + 24) = v40;
  v44 = swift_allocObject();
  *(v44 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v44 + 24) = v41;
  _allocateUninitializedArray<A>(_:)();
  v45 = v3;

  *v45 = partial apply for closure #1 in OSLogArguments.append(_:);
  v45[1] = v42;

  v45[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v45[3] = v43;

  v45[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v45[5] = v44;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(log, v48))
  {
    v34 = static UnsafeMutablePointer.allocate(capacity:)();
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v35 = createStorage<A>(capacity:type:)(0);
    v36 = createStorage<A>(capacity:type:)(1);
    v51 = v34;
    v52 = v35;
    v53 = v36;
    serialize(_:at:)(2, &v51);
    serialize(_:at:)(1, &v51);
    v54 = partial apply for closure #1 in OSLogArguments.append(_:);
    v55 = v42;
    closure #1 in osLogInternal(_:log:type:)(&v54, &v51, &v52, &v53);
    v54 = partial apply for closure #1 in OSLogArguments.append(_:);
    v55 = v43;
    closure #1 in osLogInternal(_:log:type:)(&v54, &v51, &v52, &v53);
    v54 = partial apply for closure #1 in OSLogArguments.append(_:);
    v55 = v44;
    closure #1 in osLogInternal(_:log:type:)(&v54, &v51, &v52, &v53);
    _os_log_impl(&dword_2686B1000, log, v48, "#PaymentsFlow Failed to make unsupported flow after encountering unexpected state %s, completing current flow", v34, 0xCu);
    destroyStorage<A>(_:count:)(v35, 0, v33);
    destroyStorage<A>(_:count:)(v36, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](v34, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v30 = v49[111];
  v31 = v49[110];
  v28 = v49[95];
  v29 = v49[93];
  v32 = v49[76];
  MEMORY[0x277D82BD8](log);
  v31(v28, v29);
  static ExecuteResponse.complete()();
  v4 = v49[106];
  v8 = v49[105];
  v9 = v49[104];
  v10 = v49[103];
  v11 = v49[102];
  v12 = v49[101];
  v13 = v49[100];
  v14 = v49[99];
  v15 = v49[98];
  v16 = v49[97];
  v17 = v49[96];
  v18 = v49[95];
  v19 = v49[92];
  v20 = v49[91];
  v21 = v49[90];
  v22 = v49[88];
  v23 = v49[87];
  v24 = v49[86];
  v25 = v49[85];
  v26 = v49[81];
  v27 = v49[80];

  v5 = *(v49[33] + 8);
  v6 = v49[33];

  return v5();
}

uint64_t closure #1 in PaymentsFlow.execute()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v173 = a3;
  v176 = a2;
  v175 = a1;
  v174 = 0;
  v215 = 0;
  v214 = 0;
  v213 = 0;
  v212 = 0;
  v159 = 0;
  v206 = 0;
  v160 = type metadata accessor for PaymentsFlowState();
  v161 = *(*(v160 - 8) + 64);
  v3 = MEMORY[0x28223BE20](0);
  v163 = (v161 + 15) & 0xFFFFFFFFFFFFFFF0;
  v162 = &v47 - v163;
  MEMORY[0x28223BE20](v3);
  v164 = &v47 - v163;
  v165 = type metadata accessor for Parse();
  v166 = *(v165 - 8);
  v167 = v166;
  v4 = *(v166 + 64);
  MEMORY[0x28223BE20](v174);
  v168 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = type metadata accessor for USOParse();
  v170 = *(v169 - 8);
  v171 = v170;
  v6 = *(v170 + 64);
  MEMORY[0x28223BE20](v174);
  v172 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = v172;
  v177 = type metadata accessor for Logger();
  v178 = *(v177 - 8);
  v179 = v178;
  v182 = *(v178 + 64);
  v8 = MEMORY[0x28223BE20](v175);
  v184 = (v182 + 15) & 0xFFFFFFFFFFFFFFF0;
  v180 = &v47 - v184;
  v9 = MEMORY[0x28223BE20](v8);
  v181 = &v47 - v184;
  v10 = MEMORY[0x28223BE20](v9);
  v183 = &v47 - v184;
  v11 = MEMORY[0x28223BE20](v10);
  v185 = &v47 - v184;
  v186 = *v11;
  v214 = v186;
  v187 = v12 + 16;
  v213 = v12 + 16;
  v212 = v13;
  v188 = &v211;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v189 = Strong;
  swift_endAccess();
  if (Strong)
  {
    v158 = v189;
    v152 = v189;
    v206 = v189;
    v16 = static GuardFlowResult.== infix(_:_:)();
    if (v16)
    {
      Input.parse.getter();
      if ((*(v167 + 88))(v168, v165) == *MEMORY[0x277D5C160])
      {
        v17 = v172;
        (*(v167 + 96))(v168, v165);
        (*(v171 + 32))(v17, v168, v169);
        if (USOParse.isRequestForAppleCardBalance.getter())
        {
          v151 = 1;
        }

        else
        {
          v151 = USOParse.isRequestForAppleSavings.getter();
        }

        if (v151)
        {
          v18 = v183;
          v19 = Logger.payments.unsafeMutableAddressor();
          (*(v179 + 16))(v18, v19, v177);
          v149 = Logger.logObject.getter();
          v146 = v149;
          v148 = static os_log_type_t.debug.getter();
          v147 = v148;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
          v150 = _allocateUninitializedArray<A>(_:)();
          if (os_log_type_enabled(v149, v148))
          {
            v20 = v159;
            v137 = static UnsafeMutablePointer.allocate(capacity:)();
            v133 = v137;
            v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            v135 = 0;
            v138 = createStorage<A>(capacity:type:)(0);
            v136 = v138;
            v139 = createStorage<A>(capacity:type:)(v135);
            v194 = v137;
            v193 = v138;
            v192 = v139;
            v140 = 0;
            v141 = &v194;
            serialize(_:at:)(0, &v194);
            serialize(_:at:)(v140, v141);
            v191 = v150;
            v142 = &v47;
            MEMORY[0x28223BE20](&v47);
            v143 = &v47 - 6;
            *(&v47 - 4) = v21;
            *(&v47 - 3) = &v193;
            *(&v47 - 2) = &v192;
            v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
            lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
            Sequence.forEach(_:)();
            v145 = v20;
            if (v20)
            {
              __break(1u);
            }

            else
            {
              _os_log_impl(&dword_2686B1000, v146, v147, "#PaymentsFlow guards complete, moving flow states from guard flows to .appleCardBalanceOutput", v133, 2u);
              v131 = 0;
              destroyStorage<A>(_:count:)(v136, 0, v134);
              destroyStorage<A>(_:count:)(v139, v131, MEMORY[0x277D84F70] + 8);
              MEMORY[0x26D620BD0](v133, MEMORY[0x277D84B78]);

              v132 = v145;
            }
          }

          else
          {

            v132 = v159;
          }

          v129 = v132;

          (*(v179 + 8))(v183, v177);
          swift_storeEnumTagMultiPayload();
          outlined init with copy of PaymentsFlowState(v164, v162);
          v127 = (v152 + OBJC_IVAR____TtC19SiriPaymentsIntents12PaymentsFlow_flowState);
          v128 = v195;
          swift_beginAccess();
          outlined assign with take of PaymentsFlowState(v162, v127);
          swift_endAccess();
          outlined destroy of PaymentsFlowState(v164);
          (*(v171 + 8))(v172, v169);
          v130 = v129;
          goto LABEL_25;
        }

        (*(v171 + 8))(v172, v169);
      }

      else
      {
        (*(v167 + 8))(v168, v165);
      }

      v22 = v181;
      v23 = Logger.payments.unsafeMutableAddressor();
      (*(v179 + 16))(v22, v23, v177);
      v125 = Logger.logObject.getter();
      v122 = v125;
      v124 = static os_log_type_t.debug.getter();
      v123 = v124;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v126 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v125, v124))
      {
        v24 = v159;
        v113 = static UnsafeMutablePointer.allocate(capacity:)();
        v109 = v113;
        v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v111 = 0;
        v114 = createStorage<A>(capacity:type:)(0);
        v112 = v114;
        v115 = createStorage<A>(capacity:type:)(v111);
        v198 = v113;
        v197 = v114;
        v196 = v115;
        v116 = 0;
        v117 = &v198;
        serialize(_:at:)(0, &v198);
        serialize(_:at:)(v116, v117);
        v195[3] = v126;
        v118 = &v47;
        MEMORY[0x28223BE20](&v47);
        v119 = &v47 - 6;
        *(&v47 - 4) = v25;
        *(&v47 - 3) = &v197;
        *(&v47 - 2) = &v196;
        v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();
        v121 = v24;
        if (v24)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_2686B1000, v122, v123, "#PaymentsFlow guards complete, moving flow states from guard flows to .readyToRunFlow", v109, 2u);
          v107 = 0;
          destroyStorage<A>(_:count:)(v112, 0, v110);
          destroyStorage<A>(_:count:)(v115, v107, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v109, MEMORY[0x277D84B78]);

          v108 = v121;
        }
      }

      else
      {

        v108 = v159;
      }

      v106 = v108;

      (*(v179 + 8))(v181, v177);
      v103 = 0;
      v26 = type metadata accessor for Input();
      (*(*(v26 - 8) + 16))(v164, v173);
      swift_storeEnumTagMultiPayload();
      outlined init with copy of PaymentsFlowState(v164, v162);
      v104 = (v152 + OBJC_IVAR____TtC19SiriPaymentsIntents12PaymentsFlow_flowState);
      v105 = &v199;
      swift_beginAccess();
      outlined assign with take of PaymentsFlowState(v162, v104);
      swift_endAccess();
      outlined destroy of PaymentsFlowState(v164);
      v130 = v106;
LABEL_25:
      v101 = v130;

      return v101;
    }

    v27 = v180;
    v28 = Logger.payments.unsafeMutableAddressor();
    (*(v179 + 16))(v27, v28, v177);
    v84 = 17;
    v89 = 7;
    v90 = swift_allocObject();
    *(v90 + 16) = v186 & 1;
    v100 = Logger.logObject.getter();
    v82 = v100;
    v99 = static os_log_type_t.error.getter();
    v83 = v99;
    v93 = swift_allocObject();
    v85 = v93;
    v86 = 32;
    *(v93 + 16) = 32;
    v29 = swift_allocObject();
    v30 = v86;
    v94 = v29;
    v87 = v29;
    *(v29 + 16) = 8;
    v88 = v30;
    v31 = swift_allocObject();
    v32 = v90;
    v91 = v31;
    *(v31 + 16) = partial apply for implicit closure #1 in closure #1 in PaymentsFlow.execute();
    *(v31 + 24) = v32;
    v33 = swift_allocObject();
    v34 = v91;
    v97 = v33;
    v92 = v33;
    *(v33 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v33 + 24) = v34;
    v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v95 = _allocateUninitializedArray<A>(_:)();
    v96 = v35;

    v36 = v93;
    v37 = v96;
    *v96 = partial apply for closure #1 in OSLogArguments.append(_:);
    v37[1] = v36;

    v38 = v94;
    v39 = v96;
    v96[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v39[3] = v38;

    v40 = v96;
    v41 = v97;
    v96[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v40[5] = v41;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v100, v99))
    {
      v42 = v159;
      v75 = static UnsafeMutablePointer.allocate(capacity:)();
      v72 = v75;
      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v76 = createStorage<A>(capacity:type:)(0);
      v74 = v76;
      v78 = 1;
      v77 = createStorage<A>(capacity:type:)(1);
      v204 = v75;
      v203 = v76;
      v202 = v77;
      v79 = &v204;
      serialize(_:at:)(2, &v204);
      serialize(_:at:)(v78, v79);
      v200 = partial apply for closure #1 in OSLogArguments.append(_:);
      v201 = v85;
      closure #1 in osLogInternal(_:log:type:)(&v200, v79, &v203, &v202);
      v80 = v42;
      v81 = v42;
      if (v42)
      {
        v70 = 0;

        __break(1u);
      }

      else
      {
        v200 = partial apply for closure #1 in OSLogArguments.append(_:);
        v201 = v87;
        closure #1 in osLogInternal(_:log:type:)(&v200, &v204, &v203, &v202);
        v68 = 0;
        v69 = 0;
        v200 = partial apply for closure #1 in OSLogArguments.append(_:);
        v201 = v92;
        closure #1 in osLogInternal(_:log:type:)(&v200, &v204, &v203, &v202);
        v66 = 0;
        v67 = 0;
        _os_log_impl(&dword_2686B1000, v82, v83, "#PaymentsFlow GuardFlow yielded an invalid/failing exit value: %s, setting flow state to .finished", v72, 0xCu);
        destroyStorage<A>(_:count:)(v74, 0, v73);
        destroyStorage<A>(_:count:)(v77, 1, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v72, MEMORY[0x277D84B78]);

        v71 = v66;
      }
    }

    else
    {
      v43 = v159;

      v71 = v43;
    }

    v65 = v71;

    (*(v179 + 8))(v180, v177);
    swift_storeEnumTagMultiPayload();
    outlined init with copy of PaymentsFlowState(v164, v162);
    v63 = (v152 + OBJC_IVAR____TtC19SiriPaymentsIntents12PaymentsFlow_flowState);
    v64 = &v205;
    swift_beginAccess();
    outlined assign with take of PaymentsFlowState(v162, v63);
    swift_endAccess();
    outlined destroy of PaymentsFlowState(v164);

    return v65;
  }

  else
  {
    v14 = v185;
    v15 = Logger.payments.unsafeMutableAddressor();
    (*(v179 + 16))(v14, v15, v177);
    v156 = Logger.logObject.getter();
    v153 = v156;
    v155 = static os_log_type_t.error.getter();
    v154 = v155;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v157 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v156, v155))
    {
      v44 = v159;
      v54 = static UnsafeMutablePointer.allocate(capacity:)();
      v50 = v54;
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v52 = 0;
      v55 = createStorage<A>(capacity:type:)(0);
      v53 = v55;
      v56 = createStorage<A>(capacity:type:)(v52);
      v210 = v54;
      v209 = v55;
      v208 = v56;
      v57 = 0;
      v58 = &v210;
      serialize(_:at:)(0, &v210);
      serialize(_:at:)(v57, v58);
      v207 = v157;
      v59 = &v47;
      MEMORY[0x28223BE20](&v47);
      v60 = &v47 - 6;
      *(&v47 - 4) = v45;
      *(&v47 - 3) = &v209;
      *(&v47 - 2) = &v208;
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      v62 = v44;
      if (v44)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_2686B1000, v153, v154, "#PaymentsFlow got deallocated before child completion of guard flow could run", v50, 2u);
        v48 = 0;
        destroyStorage<A>(_:count:)(v53, 0, v51);
        destroyStorage<A>(_:count:)(v56, v48, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v50, MEMORY[0x277D84B78]);

        v49 = v62;
      }
    }

    else
    {

      v49 = v159;
    }

    v47 = v49;

    (*(v179 + 8))(v185, v177);
    return v47;
  }
}

uint64_t closure #2 in PaymentsFlow.execute()(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v45 = a1;
  v44 = 0;
  v63 = 0;
  v62 = 0;
  v38 = 0;
  v56 = 0;
  v39 = type metadata accessor for PaymentsFlowState();
  v40 = *(*(v39 - 8) + 64);
  v2 = MEMORY[0x28223BE20](0);
  v42 = (v40 + 15) & 0xFFFFFFFFFFFFFFF0;
  v41 = &v12 - v42;
  MEMORY[0x28223BE20](v2);
  v43 = &v12 - v42;
  v47 = type metadata accessor for Logger();
  v48 = *(v47 - 8);
  v49 = v48;
  v3 = *(v48 + 64);
  v4 = MEMORY[0x28223BE20](v45);
  v50 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v4;
  v51 = v6 + 16;
  v62 = v6 + 16;
  v52 = &v61;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v53 = Strong;
  swift_endAccess();
  if (Strong)
  {
    v37 = v53;
    v30 = v53;
    v56 = v53;
    swift_storeEnumTagMultiPayload();
    outlined init with copy of PaymentsFlowState(v43, v41);
    v28 = (v30 + OBJC_IVAR____TtC19SiriPaymentsIntents12PaymentsFlow_flowState);
    v29 = &v55;
    swift_beginAccess();
    outlined assign with take of PaymentsFlowState(v41, v28);
    swift_endAccess();
    outlined destroy of PaymentsFlowState(v43);

    return v38;
  }

  else
  {
    v7 = v50;
    v8 = Logger.payments.unsafeMutableAddressor();
    (*(v49 + 16))(v7, v8, v47);
    v35 = Logger.logObject.getter();
    v32 = v35;
    v34 = static os_log_type_t.error.getter();
    v33 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v36 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v35, v34))
    {
      v9 = v38;
      v19 = static UnsafeMutablePointer.allocate(capacity:)();
      v15 = v19;
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v17 = 0;
      v20 = createStorage<A>(capacity:type:)(0);
      v18 = v20;
      v21 = createStorage<A>(capacity:type:)(v17);
      v60 = v19;
      v59 = v20;
      v58 = v21;
      v22 = 0;
      v23 = &v60;
      serialize(_:at:)(0, &v60);
      serialize(_:at:)(v22, v23);
      v57 = v36;
      v24 = &v12;
      MEMORY[0x28223BE20](&v12);
      v25 = &v12 - 6;
      *(&v12 - 4) = v10;
      *(&v12 - 3) = &v59;
      *(&v12 - 2) = &v58;
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      v27 = v9;
      if (v9)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_2686B1000, v32, v33, "#PaymentsFlow got deallocated before child completion of guard flow could run", v15, 2u);
        v13 = 0;
        destroyStorage<A>(_:count:)(v18, 0, v16);
        destroyStorage<A>(_:count:)(v21, v13, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v15, MEMORY[0x277D84B78]);

        v14 = v27;
      }
    }

    else
    {

      v14 = v38;
    }

    v12 = v14;

    (*(v49 + 8))(v50, v47);
    return v12;
  }
}

uint64_t implicit closure #1 in PaymentsFlow.execute()()
{
  v4 = type metadata accessor for Parse();
  v2 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v3 = &v1 - v2;
  Input.parse.getter();
  return String.init<A>(describing:)();
}

uint64_t implicit closure #2 in PaymentsFlow.execute()(uint64_t a1)
{
  v3 = a1;
  v8 = type metadata accessor for PaymentsFlowState();
  v4 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = &v2 - v4;
  v5 = (MEMORY[0x28223BE20](v3) + OBJC_IVAR____TtC19SiriPaymentsIntents12PaymentsFlow_flowState);
  v6 = &v9;
  swift_beginAccess();
  outlined init with copy of PaymentsFlowState(v5, v7);
  swift_endAccess();
  return String.init<A>(describing:)();
}

uint64_t PaymentsFlow.deinit()
{
  outlined destroy of PaymentsFlowState(v0 + OBJC_IVAR____TtC19SiriPaymentsIntents12PaymentsFlow_flowState);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC19SiriPaymentsIntents12PaymentsFlow_flowFactory));
  outlined destroy of [SFCardSection]((v0 + OBJC_IVAR____TtC19SiriPaymentsIntents12PaymentsFlow_restrictionGuards));
  return v2;
}

uint64_t PaymentsFlow.__deallocating_deinit()
{
  v0 = *PaymentsFlow.deinit();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.onAsync(input:) in conformance PaymentsFlow(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v4 = *(MEMORY[0x277D5B890] + 4);
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = protocol witness for NeedsConfirmationFlowStrategyAsync.shouldRequestUnlockForConfirmation(itemToConfirm:resolveRecord:) in conformance SearchForAccountsNeedsConfirmationStrategy;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t protocol witness for Flow.execute() in conformance PaymentsFlow(uint64_t a1)
{
  v7 = v2;
  *(v2 + 16) = v2;
  v3 = *(**v1 + 152);
  v8 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = partial apply for closure #1 in FlowFactory.unsupportedActionFlow();

  return v8(a1);
}

uint64_t sub_26886BCA8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26886BCE8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t type metadata accessor for PaymentsFlow()
{
  v1 = type metadata singleton initialization cache for PaymentsFlow;
  if (!type metadata singleton initialization cache for PaymentsFlow)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

unint64_t lazy protocol witness table accessor for type PaymentsFlow and conformance PaymentsFlow()
{
  v2 = lazy protocol witness table cache variable for type PaymentsFlow and conformance PaymentsFlow;
  if (!lazy protocol witness table cache variable for type PaymentsFlow and conformance PaymentsFlow)
  {
    type metadata accessor for PaymentsFlow();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type PaymentsFlow and conformance PaymentsFlow);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26886BE1C()
{
  v3 = *(type metadata accessor for Input() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #1 in PaymentsFlow.execute()()
{
  v1 = *(type metadata accessor for Input() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #1 in PaymentsFlow.execute()();
}

uint64_t sub_26886BFA4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26886BFE4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26886C084()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26886C0C4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26886C15C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26886C19C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26886C234()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26886C274()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26886C2FC()
{
  v5 = type metadata accessor for Input();
  v3 = *(v5 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = v4 + *(v3 + 64);
  v1 = *(v0 + 16);

  (*(v3 + 8))(v0 + v4, v5);
  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in PaymentsFlow.execute()(uint64_t a1)
{
  v2 = type metadata accessor for Input();
  v3 = *(v1 + 16);
  v4 = v1 + ((*(*(v2 - 8) + 80) + 24) & ~*(*(v2 - 8) + 80));

  return closure #1 in PaymentsFlow.execute()(a1, v3, v4);
}

uint64_t type metadata completion function for PaymentsFlowState()
{
  v2 = type metadata accessor for Input();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t type metadata completion function for PaymentsFlow()
{
  v2 = type metadata accessor for PaymentsFlowState();
  updated = v2;
  if (v0 <= 0x3F)
  {
    v4 = *(v2 - 8) + 64;
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t sub_26886C694()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26886C6D4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type GuardFlowResult and conformance GuardFlowResult()
{
  v2 = lazy protocol witness table cache variable for type GuardFlowResult and conformance GuardFlowResult;
  if (!lazy protocol witness table cache variable for type GuardFlowResult and conformance GuardFlowResult)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type GuardFlowResult and conformance GuardFlowResult);
    return WitnessTable;
  }

  return v2;
}

uint64_t UsoEntity_common_App.appIdentifier.getter()
{
  v27 = closure #1 in UsoEntity_common_App.appIdentifier.getter;
  v28 = closure #2 in UsoEntity_common_App.appIdentifier.getter;
  v29 = closure #3 in UsoEntity_common_App.appIdentifier.getter;
  v30 = closure #2 in UsoEntity_common_App.appIdentifier.getter;
  v50 = 0;
  v49 = 0;
  v31 = 0;
  v41 = 0;
  v42 = 0;
  v39 = 0;
  v40 = 0;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
  v33 = (*(*(v32 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v32);
  v34 = &v5 - v33;
  v35 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v5 - v33);
  v36 = &v5 - v35;
  v50 = v0;
  object = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("name", 4uLL, 1)._object;
  v38 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();

  if (!v38)
  {
    v14 = 0;
    v15 = 0;
    return v14;
  }

  v26 = v38;
  v2 = v31;
  v22 = v38;
  v49 = v38;
  v46 = v38;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology13UsoIdentifierVGMd, &_sSay12SiriOntology13UsoIdentifierVGMR);
  v24 = lazy protocol witness table accessor for type [UsoIdentifier] and conformance [A]();
  result = Sequence.first(where:)();
  v25 = v2;
  if (v2)
  {
    __break(1u);
    __break(1u);
  }

  else
  {
    _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(v28, 0, v32, MEMORY[0x277D84A98], MEMORY[0x277D837D0], v20, &v47);
    v21 = 0;
    outlined destroy of UsoIdentifier?(v36);
    v18 = v47;
    v19 = v48;
    if (v48)
    {
      v16 = v18;
      v17 = v19;
      v13 = v19;
      v12 = v18;
      v39 = v18;
      v40 = v19;

      v14 = v12;
      v15 = v13;
      return v14;
    }

    v4 = v21;
    v43 = v22;
    result = Sequence.first(where:)();
    v11 = v4;
    if (!v4)
    {
      _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(v30, 0, v32, MEMORY[0x277D84A98], MEMORY[0x277D837D0], v20, &v44);
      outlined destroy of UsoIdentifier?(v34);
      v9 = v44;
      v10 = v45;
      if (v45)
      {
        v7 = v9;
        v8 = v10;
        v6 = v10;
        v5 = v9;
        v41 = v9;
        v42 = v10;

        v14 = v5;
        v15 = v6;
      }

      else
      {

        v14 = 0;
        v15 = 0;
      }

      return v14;
    }
  }

  __break(1u);
  __break(1u);
  return result;
}

uint64_t UsoEntity_common_PaymentAccount.balanceTypeAsINType.getter()
{
  v165 = 0;
  v192 = 0;
  v191 = 0;
  v155 = 0;
  v186 = 0;
  v178 = 0;
  v156 = type metadata accessor for Logger();
  v157 = *(v156 - 8);
  v158 = v157;
  v161 = *(v157 + 64);
  MEMORY[0x28223BE20](v156 - 8);
  v163 = (v161 + 15) & 0xFFFFFFFFFFFFFFF0;
  v159 = &v36 - v163;
  MEMORY[0x28223BE20](&v36 - v163);
  v160 = &v36 - v163;
  MEMORY[0x28223BE20](&v36 - v163);
  v162 = &v36 - v163;
  MEMORY[0x28223BE20](&v36 - v163);
  v164 = &v36 - v163;
  v166 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v165);
  v167 = &v36 - v166;
  v168 = type metadata accessor for UsoIdentifier();
  v169 = *(v168 - 8);
  v170 = v169;
  v1 = *(v169 + 64);
  MEMORY[0x28223BE20](v168 - 8);
  v171 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = v171;
  v191 = v0;
  v172 = dispatch thunk of UsoEntity_common_PaymentAccount.balance.getter();
  if (v172 && (v154 = v172, v151 = v172, v153 = dispatch thunk of UsoEntity_common_CurrencyAmount.currency.getter(), v152 = v153, , v153))
  {
    v150 = v152;
    v147 = v152;
    object = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("name", 4uLL, 1)._object;
    v148 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();

    v149 = v148;
  }

  else
  {
    v149 = 0;
  }

  v145 = v149;
  if (!v149)
  {
    v31 = v159;
    v32 = Logger.payments.unsafeMutableAddressor();
    (*(v158 + 16))(v31, v32, v156);
    v55 = Logger.logObject.getter();
    v52 = v55;
    v54 = static os_log_type_t.debug.getter();
    v53 = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v56 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v55, v54))
    {
      v33 = v155;
      v43 = static UnsafeMutablePointer.allocate(capacity:)();
      v39 = v43;
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v41 = 0;
      v44 = createStorage<A>(capacity:type:)(0);
      v42 = v44;
      v45 = createStorage<A>(capacity:type:)(v41);
      v190 = v43;
      v189 = v44;
      v188 = v45;
      v46 = 0;
      v47 = &v190;
      serialize(_:at:)(0, &v190);
      serialize(_:at:)(v46, v47);
      v187 = v56;
      v48 = &v36;
      MEMORY[0x28223BE20](&v36);
      v49 = &v36 - 6;
      *(&v36 - 4) = v34;
      *(&v36 - 3) = &v189;
      *(&v36 - 2) = &v188;
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      v51 = v33;
      if (v33)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_2686B1000, v52, v53, "#UsoEntity_common_PaymentAccount no USO identifiers found trying to determine balance type, returning unknown", v39, 2u);
        v37 = 0;
        destroyStorage<A>(_:count:)(v42, 0, v40);
        destroyStorage<A>(_:count:)(v45, v37, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v39, MEMORY[0x277D84B78]);

        v38 = v51;
      }
    }

    else
    {

      v38 = v155;
    }

    v36 = v38;

    (*(v158 + 8))(v159, v156);
    v101 = 0;
    v102 = v36;
    return v101;
  }

  v144 = v145;
  v3 = v155;
  v141 = v145;
  v186 = v145;
  v185[1] = v145;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology13UsoIdentifierVGMd, &_sSay12SiriOntology13UsoIdentifierVGMR);
  lazy protocol witness table accessor for type [UsoIdentifier] and conformance [A]();
  Sequence.first(where:)();
  v143 = v3;
  if (!v3)
  {
    if ((*(v170 + 48))(v167, 1, v168) == 1)
    {
      v27 = v160;
      outlined destroy of UsoIdentifier?(v167);
      v28 = Logger.payments.unsafeMutableAddressor();
      (*(v158 + 16))(v27, v28, v156);
      v76 = Logger.logObject.getter();
      v73 = v76;
      v75 = static os_log_type_t.debug.getter();
      v74 = v75;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v77 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v76, v75))
      {
        v29 = v143;
        v64 = static UnsafeMutablePointer.allocate(capacity:)();
        v60 = v64;
        v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v62 = 0;
        v65 = createStorage<A>(capacity:type:)(0);
        v63 = v65;
        v66 = createStorage<A>(capacity:type:)(v62);
        v185[0] = v64;
        v184 = v65;
        v183 = v66;
        v67 = 0;
        v68 = v185;
        serialize(_:at:)(0, v185);
        serialize(_:at:)(v67, v68);
        v182[1] = v77;
        v69 = &v36;
        MEMORY[0x28223BE20](&v36);
        v70 = &v36 - 6;
        *(&v36 - 4) = v30;
        *(&v36 - 3) = &v184;
        *(&v36 - 2) = &v183;
        v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();
        v72 = v29;
        if (v29)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_2686B1000, v73, v74, "#UsoEntity_common_PaymentAccount no identifiers for balance type had the expected namespace, returning unknown", v60, 2u);
          v58 = 0;
          destroyStorage<A>(_:count:)(v63, 0, v61);
          destroyStorage<A>(_:count:)(v66, v58, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v60, MEMORY[0x277D84B78]);

          v59 = v72;
        }
      }

      else
      {

        v59 = v143;
      }

      v57 = v59;

      (*(v158 + 8))(v160, v156);

      v101 = 0;
      v102 = v57;
    }

    else
    {
      (*(v170 + 32))(v171, v167, v168);
      v4._countAndFlagsBits = UsoIdentifier.value.getter();
      LOBYTE(v5) = Constants.PaymentAccountBalanceType.init(rawValue:)(v4);
      v140 = v5;
      if (v5 == 4)
      {
        v23 = v162;
        v24 = Logger.payments.unsafeMutableAddressor();
        (*(v158 + 16))(v23, v24, v156);
        v97 = Logger.logObject.getter();
        v94 = v97;
        v96 = static os_log_type_t.debug.getter();
        v95 = v96;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
        v98 = _allocateUninitializedArray<A>(_:)();
        if (os_log_type_enabled(v97, v96))
        {
          v25 = v143;
          v85 = static UnsafeMutablePointer.allocate(capacity:)();
          v81 = v85;
          v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v83 = 0;
          v86 = createStorage<A>(capacity:type:)(0);
          v84 = v86;
          v87 = createStorage<A>(capacity:type:)(v83);
          v182[0] = v85;
          v181 = v86;
          v180 = v87;
          v88 = 0;
          v89 = v182;
          serialize(_:at:)(0, v182);
          serialize(_:at:)(v88, v89);
          v179 = v98;
          v90 = &v36;
          MEMORY[0x28223BE20](&v36);
          v91 = &v36 - 6;
          *(&v36 - 4) = v26;
          *(&v36 - 3) = &v181;
          *(&v36 - 2) = &v180;
          v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
          lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
          Sequence.forEach(_:)();
          v93 = v25;
          if (v25)
          {
            __break(1u);
          }

          else
          {
            _os_log_impl(&dword_2686B1000, v94, v95, "#UsoEntity_common_PaymentAccount balanceType couldn't parse, returning unknown", v81, 2u);
            v79 = 0;
            destroyStorage<A>(_:count:)(v84, 0, v82);
            destroyStorage<A>(_:count:)(v87, v79, MEMORY[0x277D84F70] + 8);
            MEMORY[0x26D620BD0](v81, MEMORY[0x277D84B78]);

            v80 = v93;
          }
        }

        else
        {

          v80 = v143;
        }

        v78 = v80;

        (*(v158 + 8))(v162, v156);
        (*(v170 + 8))(v171, v168);

        v101 = 0;
        v102 = v78;
      }

      else
      {
        v139 = v140;
        v6 = v164;
        v119 = v140;
        v178 = v140;
        v7 = Logger.payments.unsafeMutableAddressor();
        (*(v158 + 16))(v6, v7, v156);
        v122 = 17;
        v127 = 7;
        v128 = swift_allocObject();
        *(v128 + 16) = v119;
        v138 = Logger.logObject.getter();
        v120 = v138;
        v137 = static os_log_type_t.debug.getter();
        v121 = v137;
        v131 = swift_allocObject();
        v123 = v131;
        v124 = 32;
        *(v131 + 16) = 32;
        v8 = swift_allocObject();
        v9 = v124;
        v132 = v8;
        v125 = v8;
        *(v8 + 16) = 8;
        v126 = v9;
        v10 = swift_allocObject();
        v11 = v128;
        v129 = v10;
        *(v10 + 16) = partial apply for implicit closure #1 in UsoEntity_common_PaymentAccount.balanceTypeAsINType.getter;
        *(v10 + 24) = v11;
        v12 = swift_allocObject();
        v13 = v129;
        v135 = v12;
        v130 = v12;
        *(v12 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
        *(v12 + 24) = v13;
        v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
        v133 = _allocateUninitializedArray<A>(_:)();
        v134 = v14;

        v15 = v131;
        v16 = v134;
        *v134 = partial apply for closure #1 in OSLogArguments.append(_:);
        v16[1] = v15;

        v17 = v132;
        v18 = v134;
        v134[2] = partial apply for closure #1 in OSLogArguments.append(_:);
        v18[3] = v17;

        v19 = v134;
        v20 = v135;
        v134[4] = partial apply for closure #1 in OSLogArguments.append(_:);
        v19[5] = v20;
        _finalizeUninitializedArray<A>(_:)();

        if (os_log_type_enabled(v138, v137))
        {
          v21 = v143;
          v112 = static UnsafeMutablePointer.allocate(capacity:)();
          v109 = v112;
          v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v113 = createStorage<A>(capacity:type:)(0);
          v111 = v113;
          v115 = 1;
          v114 = createStorage<A>(capacity:type:)(1);
          v177 = v112;
          v176 = v113;
          v175 = v114;
          v116 = &v177;
          serialize(_:at:)(2, &v177);
          serialize(_:at:)(v115, v116);
          v173 = partial apply for closure #1 in OSLogArguments.append(_:);
          v174 = v123;
          closure #1 in osLogInternal(_:log:type:)(&v173, v116, &v176, &v175);
          v117 = v21;
          v118 = v21;
          if (v21)
          {
            v107 = 0;

            __break(1u);
          }

          else
          {
            v173 = partial apply for closure #1 in OSLogArguments.append(_:);
            v174 = v125;
            closure #1 in osLogInternal(_:log:type:)(&v173, &v177, &v176, &v175);
            v105 = 0;
            v106 = 0;
            v173 = partial apply for closure #1 in OSLogArguments.append(_:);
            v174 = v130;
            closure #1 in osLogInternal(_:log:type:)(&v173, &v177, &v176, &v175);
            v103 = 0;
            v104 = 0;
            _os_log_impl(&dword_2686B1000, v120, v121, "#UsoEntity_common_PaymentAccount found balance type %s", v109, 0xCu);
            destroyStorage<A>(_:count:)(v111, 0, v110);
            destroyStorage<A>(_:count:)(v114, 1, MEMORY[0x277D84F70] + 8);
            MEMORY[0x26D620BD0](v109, MEMORY[0x277D84B78]);

            v108 = v103;
          }
        }

        else
        {
          v22 = v143;

          v108 = v22;
        }

        v100 = v108;

        (*(v158 + 8))(v164, v156);
        v99 = Constants.PaymentAccountBalanceType.asINBalanceType.getter(v119);
        (*(v170 + 8))(v171, v168);

        v101 = v99;
        v102 = v100;
      }
    }

    return v101;
  }

  result = 0;
  __break(1u);
  return result;
}

uint64_t UsoEntity_common_PaymentAccount.accountAsINType.getter()
{
  v166 = 0;
  v194 = 0;
  v193 = 0;
  v156 = 0;
  v188 = 0;
  v180 = 0;
  v179 = 0;
  v157 = type metadata accessor for Logger();
  v158 = *(v157 - 8);
  v159 = v158;
  v162 = *(v158 + 64);
  MEMORY[0x28223BE20](v157 - 8);
  v164 = (v162 + 15) & 0xFFFFFFFFFFFFFFF0;
  v160 = &v38 - v164;
  MEMORY[0x28223BE20](&v38 - v164);
  v161 = &v38 - v164;
  MEMORY[0x28223BE20](&v38 - v164);
  v163 = &v38 - v164;
  MEMORY[0x28223BE20](&v38 - v164);
  v165 = &v38 - v164;
  v167 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v166);
  v168 = &v38 - v167;
  v169 = type metadata accessor for UsoIdentifier();
  v170 = *(v169 - 8);
  v171 = v170;
  v1 = *(v170 + 64);
  MEMORY[0x28223BE20](v169 - 8);
  v172 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = v172;
  v193 = v0;
  v173 = dispatch thunk of UsoEntity_common_PaymentAccount.accountType.getter();
  if (v173)
  {
    v155 = v173;
    v152 = v173;
    object = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("name", 4uLL, 1)._object;
    v153 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();

    v154 = v153;
  }

  else
  {
    v154 = 0;
  }

  v150 = v154;
  if (!v154)
  {
    v33 = v160;
    v34 = Logger.payments.unsafeMutableAddressor();
    (*(v159 + 16))(v33, v34, v157);
    v58 = Logger.logObject.getter();
    v55 = v58;
    v57 = static os_log_type_t.debug.getter();
    v56 = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v59 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v58, v57))
    {
      v35 = v156;
      v46 = static UnsafeMutablePointer.allocate(capacity:)();
      v42 = v46;
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v44 = 0;
      v47 = createStorage<A>(capacity:type:)(0);
      v45 = v47;
      v48 = createStorage<A>(capacity:type:)(v44);
      v192 = v46;
      v191 = v47;
      v190 = v48;
      v49 = 0;
      v50 = &v192;
      serialize(_:at:)(0, &v192);
      serialize(_:at:)(v49, v50);
      v189 = v59;
      v51 = &v38;
      MEMORY[0x28223BE20](&v38);
      v52 = &v38 - 6;
      *(&v38 - 4) = v36;
      *(&v38 - 3) = &v191;
      *(&v38 - 2) = &v190;
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      v54 = v35;
      if (v35)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_2686B1000, v55, v56, "#UsoEntity_common_PaymentAccount no USO identifiers found trying to determine account type,returning unknown", v42, 2u);
        v40 = 0;
        destroyStorage<A>(_:count:)(v45, 0, v43);
        destroyStorage<A>(_:count:)(v48, v40, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v42, MEMORY[0x277D84B78]);

        v41 = v54;
      }
    }

    else
    {

      v41 = v156;
    }

    v39 = v41;

    (*(v159 + 8))(v160, v157);
    v103 = 0;
    v104 = v39;
    return v103;
  }

  v149 = v150;
  v3 = v156;
  v146 = v150;
  v188 = v150;
  v187[1] = v150;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology13UsoIdentifierVGMd, &_sSay12SiriOntology13UsoIdentifierVGMR);
  lazy protocol witness table accessor for type [UsoIdentifier] and conformance [A]();
  Sequence.first(where:)();
  v148 = v3;
  if (!v3)
  {
    if ((*(v171 + 48))(v168, 1, v169) == 1)
    {
      v29 = v161;
      outlined destroy of UsoIdentifier?(v168);
      v30 = Logger.payments.unsafeMutableAddressor();
      (*(v159 + 16))(v29, v30, v157);
      v79 = Logger.logObject.getter();
      v76 = v79;
      v78 = static os_log_type_t.debug.getter();
      v77 = v78;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v80 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v79, v78))
      {
        v31 = v148;
        v67 = static UnsafeMutablePointer.allocate(capacity:)();
        v63 = v67;
        v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v65 = 0;
        v68 = createStorage<A>(capacity:type:)(0);
        v66 = v68;
        v69 = createStorage<A>(capacity:type:)(v65);
        v187[0] = v67;
        v186 = v68;
        v185 = v69;
        v70 = 0;
        v71 = v187;
        serialize(_:at:)(0, v187);
        serialize(_:at:)(v70, v71);
        v184[1] = v80;
        v72 = &v38;
        MEMORY[0x28223BE20](&v38);
        v73 = &v38 - 6;
        *(&v38 - 4) = v32;
        *(&v38 - 3) = &v186;
        *(&v38 - 2) = &v185;
        v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();
        v75 = v31;
        if (v31)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_2686B1000, v76, v77, "#UsoEntity_common_PaymentAccount no identifiers had the expected namespace, returning unknown", v63, 2u);
          v61 = 0;
          destroyStorage<A>(_:count:)(v66, 0, v64);
          destroyStorage<A>(_:count:)(v69, v61, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v63, MEMORY[0x277D84B78]);

          v62 = v75;
        }
      }

      else
      {

        v62 = v148;
      }

      v60 = v62;

      (*(v159 + 8))(v161, v157);

      v103 = 0;
      v104 = v60;
    }

    else
    {
      (*(v171 + 32))(v172, v168, v169);
      v4.value._countAndFlagsBits = UsoIdentifier.value.getter();
      LOBYTE(v5) = Constants.PaymentAccountType.init(from:)(v4);
      v145 = v5;
      if (v5 == 9 || (v144 = v145, v142 = v145, v180 = v145, v143 = Constants.PaymentAccountType.asINAccountType.getter(v145), (v6 & 1) != 0))
      {
        v25 = v163;
        v26 = Logger.payments.unsafeMutableAddressor();
        (*(v159 + 16))(v25, v26, v157);
        v100 = Logger.logObject.getter();
        v97 = v100;
        v99 = static os_log_type_t.debug.getter();
        v98 = v99;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
        v101 = _allocateUninitializedArray<A>(_:)();
        if (os_log_type_enabled(v100, v99))
        {
          v27 = v148;
          v88 = static UnsafeMutablePointer.allocate(capacity:)();
          v84 = v88;
          v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v86 = 0;
          v89 = createStorage<A>(capacity:type:)(0);
          v87 = v89;
          v90 = createStorage<A>(capacity:type:)(v86);
          v184[0] = v88;
          v183 = v89;
          v182 = v90;
          v91 = 0;
          v92 = v184;
          serialize(_:at:)(0, v184);
          serialize(_:at:)(v91, v92);
          v181 = v101;
          v93 = &v38;
          MEMORY[0x28223BE20](&v38);
          v94 = &v38 - 6;
          *(&v38 - 4) = v28;
          *(&v38 - 3) = &v183;
          *(&v38 - 2) = &v182;
          v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
          lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
          Sequence.forEach(_:)();
          v96 = v27;
          if (v27)
          {
            __break(1u);
          }

          else
          {
            _os_log_impl(&dword_2686B1000, v97, v98, "#UsoEntity_common_PaymentAccount accountType couldn't parse, returning unknown", v84, 2u);
            v82 = 0;
            destroyStorage<A>(_:count:)(v87, 0, v85);
            destroyStorage<A>(_:count:)(v90, v82, MEMORY[0x277D84F70] + 8);
            MEMORY[0x26D620BD0](v84, MEMORY[0x277D84B78]);

            v83 = v96;
          }
        }

        else
        {

          v83 = v148;
        }

        v81 = v83;

        (*(v159 + 8))(v163, v157);
        (*(v171 + 8))(v172, v169);

        v103 = 0;
        v104 = v81;
      }

      else
      {
        v141 = v143;
        v7 = v165;
        v121 = v143;
        v179 = v143;
        v8 = Logger.payments.unsafeMutableAddressor();
        (*(v159 + 16))(v7, v8, v157);
        v124 = 17;
        v129 = 7;
        v130 = swift_allocObject();
        *(v130 + 16) = v142;
        v140 = Logger.logObject.getter();
        v122 = v140;
        v139 = static os_log_type_t.debug.getter();
        v123 = v139;
        v133 = swift_allocObject();
        v125 = v133;
        v126 = 32;
        *(v133 + 16) = 32;
        v9 = swift_allocObject();
        v10 = v126;
        v134 = v9;
        v127 = v9;
        *(v9 + 16) = 8;
        v128 = v10;
        v11 = swift_allocObject();
        v12 = v130;
        v131 = v11;
        *(v11 + 16) = partial apply for implicit closure #1 in UsoEntity_common_PaymentAccount.accountAsINType.getter;
        *(v11 + 24) = v12;
        v13 = swift_allocObject();
        v14 = v131;
        v137 = v13;
        v132 = v13;
        *(v13 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
        *(v13 + 24) = v14;
        v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
        v135 = _allocateUninitializedArray<A>(_:)();
        v136 = v15;

        v16 = v133;
        v17 = v136;
        *v136 = partial apply for closure #1 in OSLogArguments.append(_:);
        v17[1] = v16;

        v18 = v134;
        v19 = v136;
        v136[2] = partial apply for closure #1 in OSLogArguments.append(_:);
        v19[3] = v18;

        v20 = v136;
        v21 = v137;
        v136[4] = partial apply for closure #1 in OSLogArguments.append(_:);
        v20[5] = v21;
        _finalizeUninitializedArray<A>(_:)();

        if (os_log_type_enabled(v140, v139))
        {
          v23 = v148;
          v114 = static UnsafeMutablePointer.allocate(capacity:)();
          v111 = v114;
          v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v115 = createStorage<A>(capacity:type:)(0);
          v113 = v115;
          v117 = 1;
          v116 = createStorage<A>(capacity:type:)(1);
          v178 = v114;
          v177 = v115;
          v176 = v116;
          v118 = &v178;
          serialize(_:at:)(2, &v178);
          serialize(_:at:)(v117, v118);
          v174 = partial apply for closure #1 in OSLogArguments.append(_:);
          v175 = v125;
          closure #1 in osLogInternal(_:log:type:)(&v174, v118, &v177, &v176);
          v119 = v23;
          v120 = v23;
          if (v23)
          {
            v109 = 0;

            __break(1u);
          }

          else
          {
            v174 = partial apply for closure #1 in OSLogArguments.append(_:);
            v175 = v127;
            closure #1 in osLogInternal(_:log:type:)(&v174, &v178, &v177, &v176);
            v107 = 0;
            v108 = 0;
            v174 = partial apply for closure #1 in OSLogArguments.append(_:);
            v175 = v132;
            closure #1 in osLogInternal(_:log:type:)(&v174, &v178, &v177, &v176);
            v105 = 0;
            v106 = 0;
            _os_log_impl(&dword_2686B1000, v122, v123, "#UsoEntity_common_PaymentAccount found accountType %s", v111, 0xCu);
            destroyStorage<A>(_:count:)(v113, 0, v112);
            destroyStorage<A>(_:count:)(v116, 1, MEMORY[0x277D84F70] + 8);
            MEMORY[0x26D620BD0](v111, MEMORY[0x277D84B78]);

            v110 = v105;
          }
        }

        else
        {
          v24 = v148;

          v110 = v24;
        }

        v102 = v110;

        (*(v159 + 8))(v165, v157);
        (*(v171 + 8))(v172, v169);

        v103 = v121;
        v104 = v102;
      }
    }

    return v103;
  }

  result = 0;
  __break(1u);
  return result;
}

uint64_t UsoEntity_common_CurrencyAmount.currencyIdentifier.getter()
{
  v106 = closure #1 in closure #1 in static Transformer<>.transformer(previousIntent:contactResolver:);
  v107 = closure #2 in UsoEntity_common_CurrencyAmount.currencyIdentifier.getter;
  v108 = implicit closure #2 in UsoEntity_common_CurrencyAmount.currencyIdentifier.getter;
  v109 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v110 = partial apply for closure #1 in OSLogArguments.append(_:);
  v111 = partial apply for closure #1 in OSLogArguments.append(_:);
  v112 = partial apply for closure #1 in OSLogArguments.append(_:);
  v113 = implicit closure #2 in UsoEntity_common_CurrencyAmount.currencyIdentifier.getter;
  v114 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v115 = partial apply for closure #1 in OSLogArguments.append(_:);
  v116 = partial apply for closure #1 in OSLogArguments.append(_:);
  v117 = partial apply for closure #1 in OSLogArguments.append(_:);
  v161 = 0;
  v160 = 0;
  v118 = 0;
  v156 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
  v119 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v120 = &v39 - v119;
  v133 = 0;
  v121 = type metadata accessor for UsoIdentifier();
  v122 = *(v121 - 8);
  v123 = v121 - 8;
  v124 = (*(v122 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v133);
  v125 = &v39 - v124;
  v161 = &v39 - v124;
  v126 = type metadata accessor for Locale();
  v127 = *(v126 - 8);
  v128 = v126 - 8;
  v129 = (*(v127 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v126);
  v130 = &v39 - v129;
  v131 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v39 - v129);
  v132 = &v39 - v131;
  v134 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV8CurrencyVSgMd, _s10Foundation6LocaleV8CurrencyVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v133);
  v135 = &v39 - v134;
  v136 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v137 = &v39 - v136;
  v138 = type metadata accessor for Logger();
  v139 = *(v138 - 8);
  v140 = v138 - 8;
  v141 = (*(v139 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v138);
  v142 = &v39 - v141;
  v143 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v39 - v141);
  v144 = &v39 - v143;
  v160 = v0;
  v145 = dispatch thunk of UsoEntity_common_CurrencyAmount.currency.getter();
  if (v145)
  {
    v105 = v145;
    v102 = v145;
    object = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("name", 4uLL, 1)._object;
    v103 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();

    v104 = v103;
  }

  else
  {
    v104 = 0;
  }

  v158 = v104;
  if (v104)
  {
    v159 = v158;
  }

  else
  {
    v159 = _allocateUninitializedArray<A>(_:)();
    if (v158)
    {
      outlined destroy of [SFCardSection](&v158);
    }
  }

  v6 = v118;
  v157 = v159;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology13UsoIdentifierVGMd, &_sSay12SiriOntology13UsoIdentifierVGMR);
  lazy protocol witness table accessor for type [UsoIdentifier] and conformance [A]();
  result = _ArrayProtocol.filter(_:)();
  v99 = v6;
  v100 = result;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v97 = v100;
    v156 = v100;
    v155[2] = v100;
    lazy protocol witness table accessor for type [UsoIdentifier] and conformance [A]();
    v8 = Collection.isEmpty.getter();
    if (v8)
    {
      v9 = v144;
      v10 = Logger.payments.unsafeMutableAddressor();
      (*(v139 + 16))(v9, v10, v138);
      v95 = Logger.logObject.getter();
      v96 = static os_log_type_t.debug.getter();
      v85 = 17;
      v87 = 7;
      v89 = swift_allocObject();
      *(v89 + 16) = 32;
      v90 = swift_allocObject();
      *(v90 + 16) = 8;
      v86 = 32;
      v11 = swift_allocObject();
      v88 = v11;
      *(v11 + 16) = v113;
      *(v11 + 24) = 0;
      v12 = swift_allocObject();
      v13 = v88;
      v92 = v12;
      *(v12 + 16) = v114;
      *(v12 + 24) = v13;
      v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v91 = _allocateUninitializedArray<A>(_:)();
      v93 = v14;

      v15 = v89;
      v16 = v93;
      *v93 = v115;
      v16[1] = v15;

      v17 = v90;
      v18 = v93;
      v93[2] = v116;
      v18[3] = v17;

      v19 = v92;
      v20 = v93;
      v93[4] = v117;
      v20[5] = v19;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v95, v96))
      {
        v21 = v99;
        v78 = static UnsafeMutablePointer.allocate(capacity:)();
        v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v79 = createStorage<A>(capacity:type:)(0);
        v80 = createStorage<A>(capacity:type:)(1);
        v81 = &v150;
        v150 = v78;
        v82 = &v149;
        v149 = v79;
        v83 = &v148;
        v148 = v80;
        serialize(_:at:)(2, &v150);
        serialize(_:at:)(1, v81);
        v146 = v115;
        v147 = v89;
        closure #1 in osLogInternal(_:log:type:)(&v146, v81, v82, v83);
        v84 = v21;
        if (v21)
        {

          __break(1u);
        }

        else
        {
          v146 = v116;
          v147 = v90;
          closure #1 in osLogInternal(_:log:type:)(&v146, &v150, &v149, &v148);
          v76 = 0;
          v146 = v117;
          v147 = v92;
          closure #1 in osLogInternal(_:log:type:)(&v146, &v150, &v149, &v148);
          _os_log_impl(&dword_2686B1000, v95, v96, "#UsoEntity_common_CurrencyAmount currencyIdentifier could not find any USO identifiers for currencyUnit, will use Locale.current's unit %s", v78, 0xCu);
          destroyStorage<A>(_:count:)(v79, 0, v77);
          destroyStorage<A>(_:count:)(v80, 1, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v78, MEMORY[0x277D84B78]);
        }
      }

      else
      {
      }

      MEMORY[0x277D82BD8](v95);
      (*(v139 + 8))(v144, v138);
      static Locale.current.getter();
      Locale.currency.getter();
      (*(v127 + 8))(v132, v126);
      v73 = type metadata accessor for Locale.Currency();
      v74 = *(v73 - 8);
      v75 = v73 - 8;
      if ((*(v74 + 48))(v137, 1) == 1)
      {
        outlined destroy of Locale.Currency?(v137);
        v72 = 0uLL;
      }

      else
      {
        *&v71 = MEMORY[0x26D61E230]();
        *(&v71 + 1) = v22;
        (*(v74 + 8))(v137, v73);
        v72 = v71;
      }

      v69 = v72;

      return v69;
    }

    v23 = v99;
    v155[1] = v97;
    lazy protocol witness table accessor for type [UsoIdentifier] and conformance [A]();
    result = Sequence.first(where:)();
    v68 = v23;
    if (!v23)
    {
      if ((*(v122 + 48))(v120, 1, v121) == 1)
      {
        v25 = v142;
        outlined destroy of UsoIdentifier?(v120);
        v26 = Logger.payments.unsafeMutableAddressor();
        (*(v139 + 16))(v25, v26, v138);
        v64 = Logger.logObject.getter();
        v65 = static os_log_type_t.debug.getter();
        v54 = 17;
        v56 = 7;
        v58 = swift_allocObject();
        *(v58 + 16) = 32;
        v59 = swift_allocObject();
        *(v59 + 16) = 8;
        v55 = 32;
        v27 = swift_allocObject();
        v57 = v27;
        *(v27 + 16) = v108;
        *(v27 + 24) = 0;
        v28 = swift_allocObject();
        v29 = v57;
        v61 = v28;
        *(v28 + 16) = v109;
        *(v28 + 24) = v29;
        v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
        v60 = _allocateUninitializedArray<A>(_:)();
        v62 = v30;

        v31 = v58;
        v32 = v62;
        *v62 = v110;
        v32[1] = v31;

        v33 = v59;
        v34 = v62;
        v62[2] = v111;
        v34[3] = v33;

        v35 = v61;
        v36 = v62;
        v62[4] = v112;
        v36[5] = v35;
        _finalizeUninitializedArray<A>(_:)();

        if (os_log_type_enabled(v64, v65))
        {
          v37 = v68;
          v47 = static UnsafeMutablePointer.allocate(capacity:)();
          v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v48 = createStorage<A>(capacity:type:)(0);
          v49 = createStorage<A>(capacity:type:)(1);
          v50 = v155;
          v155[0] = v47;
          v51 = &v154;
          v154 = v48;
          v52 = &v153;
          v153 = v49;
          serialize(_:at:)(2, v155);
          serialize(_:at:)(1, v50);
          v151 = v110;
          v152 = v58;
          closure #1 in osLogInternal(_:log:type:)(&v151, v50, v51, v52);
          v53 = v37;
          if (v37)
          {

            __break(1u);
          }

          else
          {
            v151 = v111;
            v152 = v59;
            closure #1 in osLogInternal(_:log:type:)(&v151, v155, &v154, &v153);
            v45 = 0;
            v151 = v112;
            v152 = v61;
            closure #1 in osLogInternal(_:log:type:)(&v151, v155, &v154, &v153);
            _os_log_impl(&dword_2686B1000, v64, v65, "#UsoEntity_common_CurrencyAmount currencyIdentifier isAmbiguousCurrency is true, will use Locale.current's unit %s", v47, 0xCu);
            destroyStorage<A>(_:count:)(v48, 0, v46);
            destroyStorage<A>(_:count:)(v49, 1, MEMORY[0x277D84F70] + 8);
            MEMORY[0x26D620BD0](v47, MEMORY[0x277D84B78]);
          }
        }

        else
        {
        }

        MEMORY[0x277D82BD8](v64);
        (*(v139 + 8))(v142, v138);
        static Locale.current.getter();
        Locale.currency.getter();
        (*(v127 + 8))(v130, v126);
        v42 = type metadata accessor for Locale.Currency();
        v43 = *(v42 - 8);
        v44 = v42 - 8;
        if ((*(v43 + 48))(v135, 1) == 1)
        {
          outlined destroy of Locale.Currency?(v135);
          v41 = 0uLL;
        }

        else
        {
          *&v40 = MEMORY[0x26D61E230]();
          *(&v40 + 1) = v38;
          (*(v43 + 8))(v135, v42);
          v41 = v40;
        }

        v39 = v41;

        return v39;
      }

      else
      {
        (*(v122 + 32))(v125, v120, v121);
        UsoIdentifier.value.getter();
        v66 = v24;
        v67 = String.uppercased()();

        (*(v122 + 8))(v125, v121);

        return v67._countAndFlagsBits;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t UsoEntity_common_Person.contactId.getter()
{
  v14 = 0;
  v16 = closure #1 in UsoEntity_common_Person.contactId.getter;
  v18 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
  v11 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v13 = &v4 - v11;
  v18 = v0;

  v12 = dispatch thunk of CodeGenBase.usoIdentifiers.getter();

  v17 = v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology13UsoIdentifierVGMd, &_sSay12SiriOntology13UsoIdentifierVGMR);
  lazy protocol witness table accessor for type [UsoIdentifier] and conformance [A]();
  Sequence.first(where:)();
  outlined destroy of [SFCardSection](&v17);
  v8 = type metadata accessor for UsoIdentifier();
  v9 = *(v8 - 8);
  v10 = v8 - 8;
  if ((*(v9 + 48))(v13, 1) == 1)
  {
    outlined destroy of UsoIdentifier?(v13);
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v4 = UsoIdentifier.value.getter();
    v5 = v2;
    (*(v9 + 8))(v13, v8);
    v6 = v4;
    v7 = v5;
  }

  return v6;
}

uint64_t static UsoEntity.from(_:)(void *a1)
{
  v146 = a1;
  v175 = 0;
  v174 = 0;
  v173 = 0;
  v172 = 0;
  v164 = 0;
  v162 = 0;
  v163 = 0;
  v160 = 0;
  v161 = 0;
  v159 = 0;
  v158 = 0;
  v156 = 0;
  v157 = 0;
  v155 = 0;
  v154 = 0;
  v153 = 0;
  v148 = 0;
  v149 = 0;
  v137 = 0;
  v130 = type metadata accessor for SpeakableString();
  v131 = *(v130 - 8);
  v132 = v130 - 8;
  v133 = (*(v131 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v134 = v36 - v133;
  v175 = v2;
  v174 = v1;
  type metadata accessor for UsoEntityBuilder_common_PaymentAccount();
  v143 = UsoEntityBuilder_common_PaymentAccount.__allocating_init()();
  v173 = v143;
  type metadata accessor for UsoEntityBuilder_common_PaymentAccountType();
  v145 = UsoEntityBuilder_common_PaymentAccountType.__allocating_init()();
  v172 = v145;
  v3 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v140 = &v170;
  v170 = v3;
  v171 = v4;
  v136 = "";
  v138 = 1;
  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", v137, 1);
  object = v5._object;
  MEMORY[0x26D620F90](v5._countAndFlagsBits);

  [v146 accountType];
  INBalanceType.rawValue.getter();
  v169 = v6;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v136, v137, v138 & 1);
  v139 = v7._object;
  MEMORY[0x26D620F90](v7._countAndFlagsBits);

  v142 = v170;
  v141 = v171;

  outlined destroy of String.UTF8View(v140);
  MEMORY[0x26D620710](v142, v141);
  v144 = v8;
  dispatch thunk of UsoEntityBuilder_common_PaymentAccountType.setName(value:)();

  dispatch thunk of UsoEntityBuilder_common_PaymentAccount.setAccountType(value:)();

  v147 = [v146 accountNumber];
  if (v147)
  {
    v129 = v147;
    v124 = v147;
    v125 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v126 = v9;
    MEMORY[0x277D82BD8](v124);
    v127 = v125;
    v128 = v126;
  }

  else
  {
    v127 = 0;
    v128 = 0;
  }

  v122 = v128;
  v123 = v127;
  if (v128)
  {
    v120 = v123;
    v121 = v122;
    v119 = v122;
    v148 = v123;
    v149 = v122;
    dispatch thunk of UsoEntityBuilder_common_PaymentAccount.setAccountNumber(value:)();
  }

  v118 = [v146 balance];
  if (v118)
  {
    v117 = v118;
    v114 = v118;
    v159 = v118;
    type metadata accessor for UsoEntityBuilder_common_CurrencyAmount();
    v115 = UsoEntityBuilder_common_CurrencyAmount.__allocating_init()();
    v158 = v115;
    v10 = [v114 amount];
    v116 = v10;
    if (v10)
    {
      v113 = v116;
      v112 = v116;
      v154 = v116;
      v104 = 0;
      type metadata accessor for UsoEntityBuilder_common_Number();
      v111 = UsoEntityBuilder_common_Number.__allocating_init()();
      v153 = v111;
      v11 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      v107 = &v151;
      v151 = v11;
      v152 = v12;
      v103 = "";
      v105 = 1;
      v13 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", v104, 1);
      v100 = v13._object;
      MEMORY[0x26D620F90](v13._countAndFlagsBits);

      v102 = &v150;
      v150 = v112;
      v101 = type metadata accessor for NSDecimalNumber();
      lazy protocol witness table accessor for type NSDecimalNumber and conformance NSObject();
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v103, v104, v105 & 1);
      v106 = v14._object;
      MEMORY[0x26D620F90](v14._countAndFlagsBits);

      v109 = v151;
      v108 = v152;

      outlined destroy of String.UTF8View(v107);
      MEMORY[0x26D620710](v109, v108);
      v110 = v15;
      dispatch thunk of UsoEntityBuilder_common_Number.setName(value:)();

      dispatch thunk of UsoEntityBuilder_common_CurrencyAmount.setAmount(value:)();

      MEMORY[0x277D82BD8](v112);
    }

    v99 = [v114 currencyCode];
    if (v99)
    {
      v98 = v99;
      v93 = v99;
      v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v95 = v16;
      MEMORY[0x277D82BD8](v93);
      v96 = v94;
      v97 = v95;
    }

    else
    {
      v96 = 0;
      v97 = 0;
    }

    v91 = v97;
    v92 = v96;
    if (v97)
    {
      v89 = v92;
      v90 = v91;
      v88 = v91;
      v86 = v92;
      v156 = v92;
      v157 = v91;
      type metadata accessor for UsoEntityBuilder_common_Currency();
      v87 = UsoEntityBuilder_common_Currency.__allocating_init()();
      v155 = v87;
      dispatch thunk of UsoEntityBuilder_common_Currency.setName(value:)();

      dispatch thunk of UsoEntityBuilder_common_CurrencyAmount.setCurrency(value:)();
    }

    dispatch thunk of UsoEntityBuilder_common_PaymentAccount.setBalance(value:)();

    MEMORY[0x277D82BD8](v114);
  }

  v85 = [v146 nickname];
  if (v85)
  {
    v84 = v85;
    v79 = v85;
    INSpeakableString.toSpeakableString.getter();
    MEMORY[0x277D82BD8](v79);
    v80 = SpeakableString.print.getter();
    v81 = v17;
    (*(v131 + 8))(v134, v130);
    v82 = v80;
    v83 = v81;
  }

  else
  {
    v82 = 0;
    v83 = 0;
  }

  v77 = v83;
  v78 = v82;
  if (v83)
  {
    v75 = v78;
    v76 = v77;
    v74 = v77;
    v160 = v78;
    v161 = v77;
    dispatch thunk of UsoEntityBuilder_common_PaymentAccount.setNickname(value:)();
  }

  v73 = [v146 organizationName];
  if (v73)
  {
    v72 = v73;
    v67 = v73;
    INSpeakableString.toSpeakableString.getter();
    MEMORY[0x277D82BD8](v67);
    v68 = SpeakableString.print.getter();
    v69 = v18;
    (*(v131 + 8))(v134, v130);
    v70 = v68;
    v71 = v69;
  }

  else
  {
    v70 = 0;
    v71 = 0;
  }

  v65 = v71;
  v66 = v70;
  if (v71)
  {
    v63 = v66;
    v64 = v65;
    v62 = v65;
    v162 = v66;
    v163 = v65;
    dispatch thunk of UsoEntityBuilder_common_PaymentAccount.setOrganization(value:)();
  }

  v61 = MEMORY[0x26D61F7C0](v143);
  if (v61)
  {
    v60 = v61;
    v59 = v61;
    v164 = v61;

    return v59;
  }

  else
  {
    v50 = 0;
    v56 = type metadata accessor for TransformationError();
    lazy protocol witness table accessor for type TransformationError and conformance TransformationError();
    v43 = 1;
    v58 = swift_allocError();
    v55 = v20;
    v40 = 1;
    v21 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v37 = &v167;
    v167 = v21;
    v168 = v22;
    v42 = "";
    v23 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", v50, v43 & 1);
    v36[1] = v23._object;
    MEMORY[0x26D620F90](v23._countAndFlagsBits);

    type metadata accessor for INPaymentAccount();
    DefaultStringInterpolation.appendInterpolation(_:)();
    v24 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v42, v50, v43 & 1);
    v36[2] = v24._object;
    MEMORY[0x26D620F90](v24._countAndFlagsBits);

    v39 = v167;
    v38 = v168;

    outlined destroy of String.UTF8View(v37);
    v51 = MEMORY[0x26D620710](v39, v38);
    v52 = v25;
    v26 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v45 = &v165;
    v165 = v26;
    v166 = v27;
    v28 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v42, v50, v43 & 1);
    v41 = v28._object;
    MEMORY[0x26D620F90](v28._countAndFlagsBits);

    type metadata accessor for UsoEntity();
    DefaultStringInterpolation.appendInterpolation(_:)();
    v29 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v42, v50, v43 & 1);
    v44 = v29._object;
    MEMORY[0x26D620F90](v29._countAndFlagsBits);

    v47 = v165;
    v46 = v166;

    outlined destroy of String.UTF8View(v45);
    v48 = MEMORY[0x26D620710](v47, v46);
    v49 = v30;
    v176 = v51;
    v177 = v52;
    v178 = v48;
    v179 = v30;
    v180 = 0;
    v181 = 0;
    v182 = 5;
    v53 = PaymentsError.errorDescription.getter();
    v54 = v31;
    outlined consume of PaymentsError(v51, v52, v48, v49, v50, v50, 5);
    v32 = v54;
    v33 = v55;
    v34 = v56;
    *v55 = v53;
    v33[1] = v32;
    v35 = *MEMORY[0x277D61E00];
    (*(*(v34 - 8) + 104))();
    swift_willThrow();

    return v57;
  }
}

{
  v84 = 0;
  v76 = 0;
  v74 = 0;
  v75 = 0;
  v73 = 0;
  v72 = 0;
  v70 = 0;
  v71 = 0;
  v69 = 0;
  v68 = 0;
  v67 = 0;
  v63 = 0;
  v62 = 0;
  v61 = 0;
  v85 = a1;
  type metadata accessor for UsoEntityBuilder_common_Payment();
  v57 = UsoEntityBuilder_common_Payment.__allocating_init()();
  v83 = v57;
  v81 = [a1 payee];
  MEMORY[0x277D82BE0](a1);
  if (v81)
  {
    v82 = v81;
  }

  else
  {
    v82 = [a1 payer];
  }

  MEMORY[0x277D82BD8](a1);
  v56 = v82;
  if (v82)
  {
    v63 = v82;
    type metadata accessor for UsoEntityBuilder_common_PaymentAccount();
    v62 = UsoEntityBuilder_common_PaymentAccount.__allocating_init()();
    type metadata accessor for UsoEntityBuilder_common_Person();
    v61 = UsoEntityBuilder_common_Person.__allocating_init()();
    v1 = [v56 personHandle];
    v60 = v1;
    if (v1)
    {
      v54 = v60;
      MEMORY[0x277D82BE0](v60);
      outlined destroy of SFRichText?(&v60);
      v55 = [v54 value];
      if (v55)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v52 = v2;
        MEMORY[0x277D82BD8](v55);
        v53 = v52;
      }

      else
      {
        v53 = 0;
      }

      MEMORY[0x277D82BD8](v54);
      v51 = v53;
    }

    else
    {
      outlined destroy of SFRichText?(&v60);
      v51 = 0;
    }

    if (v51)
    {
      type metadata accessor for UsoEntityBuilder_common_ContactAddress();
      UsoEntityBuilder_common_ContactAddress.__allocating_init()();
      dispatch thunk of UsoEntityBuilder_common_ContactAddress.setValue(value:)();

      dispatch thunk of UsoEntityBuilder_common_Person.setSpecifyingContactAddress(value:)();

      v50 = [v56 displayName];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      dispatch thunk of UsoEntityBuilder_common_Person.setName(value:)();

      MEMORY[0x277D82BD8](v50);

      dispatch thunk of UsoEntityBuilder_common_PaymentAccount.setHolder(value:)();
    }

    v59 = [a1 payee];
    v49 = v59 != 0;
    outlined destroy of SFRichText?(&v59);

    if (v49)
    {
      dispatch thunk of UsoEntityBuilder_common_Payment.setPayee(value:)();
    }

    else
    {
      dispatch thunk of UsoEntityBuilder_common_Payment.setPayer(value:)();
    }

    MEMORY[0x277D82BD8](v56);
  }

  v48 = [a1 currencyAmount];
  if (v48)
  {
    v73 = v48;
    type metadata accessor for UsoEntityBuilder_common_CurrencyAmount();
    v72 = UsoEntityBuilder_common_CurrencyAmount.__allocating_init()();
    v3 = [v48 amount];
    v47 = v3;
    if (v3)
    {
      v68 = v3;
      type metadata accessor for UsoEntityBuilder_common_Number();
      v67 = UsoEntityBuilder_common_Number.__allocating_init()();
      v65 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      v66 = v4;
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](countAndFlagsBits);

      v64 = v47;
      type metadata accessor for NSDecimalNumber();
      lazy protocol witness table accessor for type NSDecimalNumber and conformance NSObject();
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v6);

      v46 = v65;
      v45 = v66;

      outlined destroy of String.UTF8View(&v65);
      MEMORY[0x26D620710](v46, v45);
      dispatch thunk of UsoEntityBuilder_common_Number.setName(value:)();

      dispatch thunk of UsoEntityBuilder_common_CurrencyAmount.setAmount(value:)();

      MEMORY[0x277D82BD8](v47);
    }

    v44 = [v48 currencyCode];
    if (v44)
    {
      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v7;
      MEMORY[0x277D82BD8](v44);
      v42 = v40;
      v43 = v41;
    }

    else
    {
      v42 = 0;
      v43 = 0;
    }

    if (v43)
    {
      v70 = v42;
      v71 = v43;
      type metadata accessor for UsoEntityBuilder_common_Currency();
      v69 = UsoEntityBuilder_common_Currency.__allocating_init()();
      dispatch thunk of UsoEntityBuilder_common_Currency.setName(value:)();

      dispatch thunk of UsoEntityBuilder_common_CurrencyAmount.setCurrency(value:)();
    }

    dispatch thunk of UsoEntityBuilder_common_Payment.setAmount(value:)();

    MEMORY[0x277D82BD8](v48);
  }

  v39 = [a1 note];
  if (v39)
  {
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v8;
    MEMORY[0x277D82BD8](v39);
    v37 = v35;
    v38 = v36;
  }

  else
  {
    v37 = 0;
    v38 = 0;
  }

  if (v38)
  {
    v74 = v37;
    v75 = v38;
    dispatch thunk of UsoEntityBuilder_common_Payment.setMemo(value:)();
  }

  v34 = MEMORY[0x26D61F7C0](v57);
  if (v34)
  {
    v76 = v34;

    return v34;
  }

  else
  {
    v32 = type metadata accessor for TransformationError();
    lazy protocol witness table accessor for type TransformationError and conformance TransformationError();
    swift_allocError();
    v31 = v10;
    v79 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v80 = v11;
    v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](v12);

    type metadata accessor for INPaymentRecord();
    DefaultStringInterpolation.appendInterpolation(_:)();
    v13 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](v13);

    v22 = v79;
    v21 = v80;

    outlined destroy of String.UTF8View(&v79);
    v27 = MEMORY[0x26D620710](v22, v21);
    v28 = v14;
    v77 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v78 = v15;
    v16 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](v16);

    type metadata accessor for UsoEntity();
    DefaultStringInterpolation.appendInterpolation(_:)();
    v17 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](v17);

    v24 = v77;
    v23 = v78;

    outlined destroy of String.UTF8View(&v77);
    v25 = MEMORY[0x26D620710](v24, v23);
    v26 = v18;
    v86 = v27;
    v87 = v28;
    v88 = v25;
    v89 = v18;
    v90 = 0;
    v91 = 0;
    v92 = 5;
    v29 = PaymentsError.errorDescription.getter();
    v30 = v19;
    outlined consume of PaymentsError(v27, v28, v25, v26, 0, 0, 5);
    *v31 = v29;
    v31[1] = v30;
    v20 = *MEMORY[0x277D61E00];
    (*(*(v32 - 8) + 104))();
    swift_willThrow();

    return v33;
  }
}

uint64_t UsoEntity.eraseToAny.getter()
{

  static UsoEntity_CodeGenConverter.convert(entity:)();
}

uint64_t closure #1 in UsoEntity_common_Person.contactId.getter(uint64_t a1)
{
  v17 = a1;
  v33 = 0;
  v22 = type metadata accessor for IdentifierAppBundle();
  v19 = *(v22 - 8);
  v20 = v22 - 8;
  v18 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v22);
  v21 = &v7 - v18;
  v33 = a1;
  UsoIdentifier.appBundleSemantic.getter();
  v23 = IdentifierAppBundle.rawValue.getter();
  v26 = v2;
  (*(v19 + 8))(v21, v22);
  v3 = AppUtil.usoContactsBundleId.unsafeMutableAddressor();
  v24 = *v3;
  v25 = *(v3 + 1);

  v27 = MEMORY[0x26D620740](v23, v26, v24, v25);

  if ((v27 & 1) == 0)
  {
    v8 = 0;
    return v8 & 1;
  }

  v14 = UsoIdentifier.namespace.getter();
  v15 = v4;

  v13 = UsoIdentifierNamespace.rawValue.getter(0);
  v16 = v5;

  v31[0] = v14;
  v31[1] = v15;
  *&v32 = v13;
  *(&v32 + 1) = v16;
  if (!v15)
  {
    if (!*(&v32 + 1))
    {
      outlined destroy of String.UTF8View(v31);
      v12 = 1;
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  outlined init with copy of String(v31, &v30);
  if (!*(&v32 + 1))
  {
    outlined destroy of String.UTF8View(&v30);
LABEL_9:
    outlined destroy of DIIdentifier(v31);
    v12 = 0;
    goto LABEL_8;
  }

  v10 = &v29;
  v29 = v30;
  v9 = &v28;
  v28 = v32;
  v11 = MEMORY[0x26D620740](v30, *(&v30 + 1), v32, *(&v32 + 1));
  outlined destroy of String.UTF8View(v9);
  outlined destroy of String.UTF8View(v10);
  outlined destroy of String.UTF8View(v31);
  v12 = v11;
LABEL_8:
  v7 = v12;

  v8 = v7;
  return v8 & 1;
}

uint64_t closure #1 in UsoEntity_common_App.appIdentifier.getter(uint64_t a1)
{
  v21 = a1;
  v13 = UsoIdentifier.namespace.getter();
  v14 = v1;

  v15 = *AppUtil.usoNamespace.unsafeMutableAddressor();

  v19[0] = v13;
  v19[1] = v14;
  v20 = v15;
  if (v14)
  {
    outlined init with copy of String(v19, &v18);
    if (*(&v20 + 1))
    {
      v17 = v18;
      v16 = v20;
      v11 = MEMORY[0x26D620740](v18, *(&v18 + 1), v20, *(&v20 + 1));
      outlined destroy of String.UTF8View(&v16);
      outlined destroy of String.UTF8View(&v17);
      outlined destroy of String.UTF8View(v19);
      v12 = v11;
      goto LABEL_7;
    }

    outlined destroy of String.UTF8View(&v18);
    goto LABEL_9;
  }

  if (*(&v20 + 1))
  {
LABEL_9:
    outlined destroy of DIIdentifier(v19);
    v12 = 0;
    goto LABEL_7;
  }

  outlined destroy of String.UTF8View(v19);
  v12 = 1;
LABEL_7:

  if (v12)
  {
    v5 = UsoIdentifier.appBundleId.getter();
    v8 = v2;
    v3 = AppUtil.usoAppBundleId.unsafeMutableAddressor();
    v6 = *v3;
    v7 = *(v3 + 1);

    v9 = MEMORY[0x26D620740](v5, v8, v6, v7);

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t closure #2 in UsoEntity_common_App.appIdentifier.getter@<X0>(uint64_t *a1@<X8>)
{
  result = UsoIdentifier.value.getter();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v18 = a7;
  v19 = a1;
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v25 = a6;
  v39 = a4;
  v38 = a5;
  v26 = *(a4 - 8);
  v27 = a4 - 8;
  v28 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](v7);
  v29 = v17 - v28;
  v35 = *(v9 + 16);
  v37 = v35;
  v33 = *(v35 - 8);
  v34 = v35 - 8;
  v30 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x28223BE20](v8);
  v31 = v17 - v30;
  v32 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x28223BE20](v10);
  v36 = v17 - v32;
  _sxSgs5ErrorRd__Ri_d_0_r_0_lWOc(v12, v17 - v32, v13, v14);
  if ((*(v33 + 48))(v36, 1, v35) == 1)
  {
    result = (*(*(v23 - 8) + 56))(v18, 1);
    v17[1] = v24;
  }

  else
  {
    (*(v33 + 32))(v31, v36, v35);
    v16 = v24;
    v19(v31, v29);
    v17[0] = v16;
    (*(v33 + 8))(v31, v35);
    if (v16)
    {
      return (*(v26 + 32))(v25, v29, v22);
    }

    else
    {
      (*(*(v23 - 8) + 56))(v18, 0, 1);
      return v17[0];
    }
  }

  return result;
}

uint64_t closure #3 in UsoEntity_common_App.appIdentifier.getter(uint64_t a1)
{
  v24 = a1;
  v15 = UsoIdentifier.namespace.getter();
  v16 = v1;

  v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("appName", 7uLL, 1);

  v22[0] = v15;
  v22[1] = v16;
  v23 = v2;
  if (v16)
  {
    outlined init with copy of String(v22, &v19);
    if (v23._object)
    {
      v18 = v19;
      v17 = v23;
      v13 = MEMORY[0x26D620740](v19, *(&v19 + 1), v23._countAndFlagsBits, v23._object);
      outlined destroy of String.UTF8View(&v17);
      outlined destroy of String.UTF8View(&v18);
      outlined destroy of String.UTF8View(v22);
      v14 = v13;
      goto LABEL_7;
    }

    outlined destroy of String.UTF8View(&v19);
    goto LABEL_9;
  }

  if (v23._object)
  {
LABEL_9:
    outlined destroy of DIIdentifier(v22);
    v14 = 0;
    goto LABEL_7;
  }

  outlined destroy of String.UTF8View(v22);
  v14 = 1;
LABEL_7:

  if (v14)
  {
    v9 = UsoIdentifier.appBundleId.getter();
    v10 = v3;
    countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.siri.sirinl", 0x15uLL, 1)._countAndFlagsBits;
    v11 = MEMORY[0x26D620740](v9, v10, countAndFlagsBits);

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v21[0] = UsoIdentifier.value.getter();
    v21[1] = v5;
    v20 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(".", 1uLL, 1);
    lazy protocol witness table accessor for type String and conformance String();
    v7 = StringProtocol.contains<A>(_:)();
    outlined destroy of String.UTF8View(&v20);
    outlined destroy of String.UTF8View(v21);
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t closure #1 in UsoEntity_common_PaymentAccount.accountAsINType.getter(uint64_t a1)
{
  v13 = a1;
  v6 = UsoIdentifier.namespace.getter();
  v7 = v1;

  v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("paymentsAccountType", 0x13uLL, 1);

  v11[0] = v6;
  v11[1] = v7;
  v12 = v2;
  if (!v7)
  {
    if (!v12._object)
    {
      outlined destroy of String.UTF8View(v11);
      v5 = 1;
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  outlined init with copy of String(v11, &v10);
  if (!v12._object)
  {
    outlined destroy of String.UTF8View(&v10);
LABEL_8:
    outlined destroy of DIIdentifier(v11);
    v5 = 0;
    goto LABEL_7;
  }

  v9 = v10;
  v8 = v12;
  v4 = MEMORY[0x26D620740](v10, *(&v10 + 1), v12._countAndFlagsBits, v12._object);
  outlined destroy of String.UTF8View(&v8);
  outlined destroy of String.UTF8View(&v9);
  outlined destroy of String.UTF8View(v11);
  v5 = v4;
LABEL_7:

  return v5 & 1;
}

uint64_t implicit closure #2 in UsoEntity_common_CurrencyAmount.currencyIdentifier.getter()
{
  v14 = 0;
  v13 = type metadata accessor for Locale();
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v8 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v13);
  v12 = &v3 - v8;
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV8CurrencyVSgMd, _s10Foundation6LocaleV8CurrencyVSgMR);
  v9 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v0);
  v15 = &v3 - v9;
  static Locale.current.getter();
  Locale.currency.getter();
  (*(v10 + 8))(v12, v13);
  v16 = type metadata accessor for Locale.Currency();
  v17 = *(v16 - 8);
  v18 = v16 - 8;
  if ((*(v17 + 48))(v15, 1) == 1)
  {
    outlined destroy of Locale.Currency?(v15);
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v4 = MEMORY[0x26D61E230]();
    v5 = v1;
    (*(v17 + 8))(v15, v16);
    v6 = v4;
    v7 = v5;
  }

  v3 = v19;
  v19[0] = v6;
  v19[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  return String.init<A>(describing:)();
}

BOOL closure #2 in UsoEntity_common_CurrencyAmount.currencyIdentifier.getter()
{
  UsoIdentifier.value.getter();
  v0 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ambiguous", 9uLL, 1);
  v2 = String.hasPrefix(_:)(v0);

  return !v2;
}

uint64_t sub_268873820()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268873860()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26887392C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26887396C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268873B14()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268873B54()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t outlined destroy of Locale.Currency?(uint64_t a1)
{
  v3 = type metadata accessor for Locale.Currency();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_268873C94()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_268873CD4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type NSDecimalNumber and conformance NSObject()
{
  v2 = lazy protocol witness table cache variable for type NSDecimalNumber and conformance NSObject;
  if (!lazy protocol witness table cache variable for type NSDecimalNumber and conformance NSObject)
  {
    type metadata accessor for NSDecimalNumber();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSDecimalNumber and conformance NSObject);
    return WitnessTable;
  }

  return v2;
}

void *_sxSgs5ErrorRd__Ri_d_0_r_0_lWOc(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a3 - 8);
  if ((*(v9 + 48))(a1, 1))
  {
    memcpy(a2, a1, *(*(a4 - 8) + 64));
  }

  else
  {
    (*(v9 + 16))(a2, a1, a3);
    (*(v9 + 56))(a2, 0, 1, a3);
  }

  return a2;
}

uint64_t Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v15 = 0;
  v19 = a1;
  v18 = a2;
  v17 = a3;
  v16 = a4;
  outlined init with copy of GlobalsProviding(a1, v14);
  outlined init with take of CommonLabelsProviding(v14, (v4 + 16));
  outlined init with copy of GlobalsProviding(a2, v13);
  outlined init with take of CommonLabelsProviding(v13, (v4 + 56));
  outlined init with copy of GlobalsProviding(a3, v12);
  outlined init with take of CommonLabelsProviding(v12, (v4 + 96));
  outlined init with copy of GlobalsProviding(a4, v11);
  outlined init with take of CommonLabelsProviding(v11, (v4 + 136));
  __swift_destroy_boxed_opaque_existential_0(a4);
  __swift_destroy_boxed_opaque_existential_0(a3);
  __swift_destroy_boxed_opaque_existential_0(a2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v10;
}

uint64_t Globals.deinit()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  return v2;
}

uint64_t SiriKitContactResolver.defaultConfig.unsafeMutableAddressor()
{
  if (one-time initialization token for defaultConfig != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ContactResolverConfig();
  return __swift_project_value_buffer(v0, static SiriKitContactResolver.defaultConfig);
}

uint64_t one-time initialization function for defaultConfig()
{
  v14 = 0;
  v4 = (*(*(type metadata accessor for ContactResolverDomain() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v18 = &v4 - v4;
  v5 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v14);
  v27 = &v4 - v5;
  v17 = type metadata accessor for RecommenderType();
  v15 = *(v17 - 8);
  v16 = v17 - 8;
  v6 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17);
  v21 = &v4 - v6;
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference27ContactHandleTypePreferenceVSgMd, &_s13SiriInference27ContactHandleTypePreferenceVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v14);
  v20 = &v4 - v7;
  v13 = type metadata accessor for SearchSuggestedContacts();
  v11 = *(v13 - 8);
  v12 = v13 - 8;
  v8 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v14);
  v19 = &v4 - v8;
  v10 = type metadata accessor for ContactResolverConfig();
  v9 = static SiriKitContactResolver.defaultConfig;
  __swift_allocate_value_buffer(v10, static SiriKitContactResolver.defaultConfig);
  v22 = __swift_project_value_buffer(v10, v9);
  (*(v11 + 104))(v19, *MEMORY[0x277D56148], v13);
  static ContactHandleTypePreference.preferPhone.getter();
  v0 = type metadata accessor for ContactHandleTypePreference();
  (*(*(v0 - 8) + 56))(v20, 0, 1);
  (*(v15 + 104))(v21, *MEMORY[0x277D560D0], v17);
  v23 = default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();
  v24 = v1;
  v25 = default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();
  v26 = v2;
  default argument 2 of ContactResolverConfig.init(intentId:intentTypeName:locale:logRunTimeData:processNLv3SpeechAlternatives:bundleIds:domainsToSearchForHistory:searchSuggestedContacts:handleTypePreference:recommender:customGenerator:)();
  has_malloc_size = _swift_stdlib_has_malloc_size();
  v29 = _swift_stdlib_has_malloc_size();
  v30 = default argument 5 of ContactResolverConfig.init(intentId:intentTypeName:locale:logRunTimeData:processNLv3SpeechAlternatives:bundleIds:domainsToSearchForHistory:searchSuggestedContacts:handleTypePreference:recommender:customGenerator:)();
  default argument 6 of ContactResolverConfig.init(intentId:intentTypeName:locale:logRunTimeData:processNLv3SpeechAlternatives:bundleIds:domainsToSearchForHistory:searchSuggestedContacts:handleTypePreference:recommender:customGenerator:)();
  return ContactResolverConfig.init(intentId:intentTypeName:locale:logRunTimeData:processNLv3SpeechAlternatives:bundleIds:domainsToSearchForHistory:searchSuggestedContacts:handleTypePreference:recommender:customGenerator:)();
}

{
  v3 = type metadata accessor for ContactResolverConfig();
  __swift_allocate_value_buffer(v3, static ContactResolverConfig.defaultConfig);
  v1 = __swift_project_value_buffer(v3, static ContactResolverConfig.defaultConfig);
  v2 = SiriKitContactResolver.defaultConfig.unsafeMutableAddressor();
  swift_beginAccess();
  (*(*(v3 - 8) + 16))(v1, v2);
  return swift_endAccess();
}

uint64_t static SiriKitContactResolver.defaultConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = SiriKitContactResolver.defaultConfig.unsafeMutableAddressor();
  swift_beginAccess();
  v1 = type metadata accessor for ContactResolverConfig();
  (*(*(v1 - 8) + 16))(a1, v3);
  return swift_endAccess();
}

uint64_t static SiriKitContactResolver.defaultConfig.setter(uint64_t a1)
{
  v9 = a1;
  v10 = type metadata accessor for ContactResolverConfig();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v3 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10);
  v5 = &v2 - v3;
  v4 = SiriKitContactResolver.defaultConfig.unsafeMutableAddressor();
  (*(v7 + 16))(v5, v9, v10);
  v6 = &v11;
  swift_beginAccess();
  (*(v7 + 40))(v4, v5, v10);
  swift_endAccess();
  return (*(v7 + 8))(v9, v10);
}

uint64_t protocol witness for ContactResolving.resolve(queries:config:) in conformance SiriKitContactResolver()
{
  v3 = SiriKitContactResolver.resolve(queries:config:)();
  if (v0)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for ContactResolving.findMatches(queries:config:) in conformance SiriKitContactResolver()
{
  v3 = SiriKitContactResolver.findMatches(queries:config:)();
  if (v0)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t ContactResolverConfig.defaultConfig.unsafeMutableAddressor()
{
  if (one-time initialization token for defaultConfig != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ContactResolverConfig();
  return __swift_project_value_buffer(v0, static ContactResolverConfig.defaultConfig);
}

uint64_t static ContactResolverConfig.defaultConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = ContactResolverConfig.defaultConfig.unsafeMutableAddressor();
  swift_beginAccess();
  v1 = type metadata accessor for ContactResolverConfig();
  (*(*(v1 - 8) + 16))(a1, v3);
  return swift_endAccess();
}

uint64_t static ContactResolverConfig.defaultConfig.setter(uint64_t a1)
{
  v9 = a1;
  v10 = type metadata accessor for ContactResolverConfig();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v3 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10);
  v5 = &v2 - v3;
  v4 = ContactResolverConfig.defaultConfig.unsafeMutableAddressor();
  (*(v7 + 16))(v5, v9, v10);
  v6 = &v11;
  swift_beginAccess();
  (*(v7 + 40))(v4, v5, v10);
  swift_endAccess();
  return (*(v7 + 8))(v9, v10);
}

uint64_t _sSa22_allocateUninitializedySayxG_SpyxGtSiFZSS_Tt0gq5(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 <= 0)
    {
      return MEMORY[0x277D84F90];
    }

    v1 = static Array._allocateBufferUninitialized(minimumCapacity:)();

    *(v1 + 16) = v3;

    return v1;
  }

  return result;
}

id static AceViewProviding.makeSash(app:isDisambiguation:)(uint64_t a1, char a2)
{
  type metadata accessor for SAUISash();
  v16 = SAUIAppPunchOut.__allocating_init()();
  if (a2)
  {
    if (App.isFirstParty.getter())
    {
      v14 = static AppUtil.CONTACTS_IOS_APP_BUNDLE_ID.getter();
    }

    else
    {
      v14 = App.appIdentifier.getter();
    }

    if (v2)
    {
      v12 = MEMORY[0x26D620690](v14);

      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    [v16 setApplicationBundleIdentifier_];
    MEMORY[0x277D82BD8](v13);
  }

  else
  {
    if (App.isFirstParty.getter())
    {
      v3 = AppUtil.MESSAGES_APP_BUNDLE_ID.unsafeMutableAddressor();
      v8 = *v3;
      v9 = *(v3 + 1);

      v10 = v8;
      v11 = v9;
    }

    else
    {
      v10 = App.appIdentifier.getter();
      v11 = v4;
    }

    if (v11)
    {
      v7 = MEMORY[0x26D620690](v10);

      [v16 setApplicationBundleIdentifier_];
    }

    else
    {
      [v16 setApplicationBundleIdentifier_];
    }

    MEMORY[0x277D82BD8](v6);
  }

  return v16;
}

unint64_t type metadata accessor for SAUISash()
{
  v2 = lazy cache variable for type metadata for SAUISash;
  if (!lazy cache variable for type metadata for SAUISash)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for SAUISash);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t static AceViewProviding.makeAceViewsForDisambiguation(app:disambiguationList:deviceState:disambiguationSnippetProvider:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v78 = a5;
  v77 = a4;
  v76 = a3;
  v80 = a2;
  v79 = a1;
  v89 = 0;
  v104 = 0;
  v103 = 0;
  v102 = 0;
  v101 = 0;
  v100 = 0;
  v99 = 0;
  v98 = 0;
  v97 = 0;
  v67 = 0;
  v68 = type metadata accessor for ImageSize();
  v69 = *(v68 - 8);
  v70 = v69;
  v5 = *(v69 + 64);
  MEMORY[0x28223BE20](0);
  v71 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for UnlockDevicePolicy();
  v73 = *(v72 - 8);
  v74 = v73;
  v7 = *(v73 + 64);
  MEMORY[0x28223BE20](v89);
  v75 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for Logger();
  v81 = v86;
  v82 = *(v86 - 8);
  v85 = v82;
  v83 = v82;
  v9 = *(v82 + 64);
  v10 = MEMORY[0x28223BE20](v79);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = v12;
  v104 = v10;
  v103 = v13;
  v102 = v14;
  v100 = v15;
  v101 = v16;
  v17 = Logger.payments.unsafeMutableAddressor();
  (*(v85 + 16))(v12, v17, v86);
  v91 = Logger.logObject.getter();
  v87 = v91;
  v90 = static os_log_type_t.debug.getter();
  v88 = v90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v92 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v91, v90))
  {
    v18 = v67;
    v58 = static UnsafeMutablePointer.allocate(capacity:)();
    v54 = v58;
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v56 = 0;
    v59 = createStorage<A>(capacity:type:)(0);
    v57 = v59;
    v60 = createStorage<A>(capacity:type:)(v56);
    v96 = v58;
    v95 = v59;
    v94 = v60;
    v61 = 0;
    v62 = &v96;
    serialize(_:at:)(0, &v96);
    serialize(_:at:)(v61, v62);
    v93 = v92;
    v63 = &v27;
    MEMORY[0x28223BE20](&v27);
    v64 = &v27 - 6;
    *(&v27 - 4) = v19;
    *(&v27 - 3) = &v95;
    *(&v27 - 2) = &v94;
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v66 = v18;
    if (v18)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_2686B1000, v87, v88, "#AceViewProviding building disambiguation snippet", v54, 2u);
      v52 = 0;
      destroyStorage<A>(_:count:)(v57, 0, v55);
      destroyStorage<A>(_:count:)(v60, v52, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v54, MEMORY[0x277D84B78]);

      v53 = v66;
    }
  }

  else
  {

    v53 = v67;
  }

  (*(v83 + 8))(v84, v81);
  v46 = v76[3];
  v47 = v76[4];
  __swift_project_boxed_opaque_existential_1(v76, v46);
  static UnlockDevicePolicy.default.getter();
  v48 = dispatch thunk of DeviceState.isAuthenticated(for:)();
  (*(v74 + 8))(v75, v72);
  v49 = v48 ^ 1;
  v99 = (v48 ^ 1) & 1;
  v51 = v76[3];
  v50 = v76[4];
  __swift_project_boxed_opaque_existential_1(v76, v51);
  if (dispatch thunk of DeviceState.isWatch.getter())
  {
    v44 = type metadata accessor for SAAceView();
    v43 = _allocateUninitializedArray<A>(_:)();
    v41 = v20;
    v40 = SiriKitDisambiguationList.disambiguationItems.getter();
    v39 = v76[3];
    v38 = v76[4];
    __swift_project_boxed_opaque_existential_1(v76, v39);
    v21 = dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
    v42 = (*(v78 + 16))(v40, v21 & 1);

    v22 = v43;
    *v41 = v42;
    _finalizeUninitializedArray<A>(_:)();
    return v22;
  }

  else
  {
    v36 = SiriKitDisambiguationList.disambiguationItems.getter();
    (*(v70 + 104))(v71, *MEMORY[0x277D5C1E0], v68);
    v37 = (*(v78 + 8))(v36, v49 & 1, v71);
    v35 = v37;
    (*(v70 + 8))(v71, v68);

    v98 = v37;

    if (v79)
    {
      v34 = v79;
      v33 = v79;
      v97 = v79;
      v32 = static AceViewProviding.makeSash(app:isDisambiguation:)(v79, 1);
      [v35 setSash_];
    }

    v29 = type metadata accessor for SAAceView();
    v30 = _allocateUninitializedArray<A>(_:)();
    v28 = v23;
    v24 = v35;
    v25 = v30;
    *v28 = v35;
    _finalizeUninitializedArray<A>(_:)();
    v31 = v25;

    return v31;
  }
}

id static AceViewProviding.makePersonPicker(parameterName:)()
{
  type metadata accessor for SAABPersonPicker();
  v6 = SAUIAppPunchOut.__allocating_init()();
  MEMORY[0x277D82BE0](v6);
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("paymentsContactId", 0x11uLL, 1)._countAndFlagsBits;
  v3 = MEMORY[0x26D620690](countAndFlagsBits);

  [v6 setIdNodeName_];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v6);
  [v6 setShowImmediately_];
  MEMORY[0x277D82BE0](v6);
  [v6 setCanBeRefreshed_];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BE0](v6);
  [v6 setCanUseServerTTS_];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BE0](v6);
  v4 = *MEMORY[0x277D47C68];
  MEMORY[0x277D82BE0](*MEMORY[0x277D47C68]);
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = MEMORY[0x26D620690](v1);

  MEMORY[0x277D82BD8](v4);
  [v6 setItemType_];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  return v6;
}

id static AceViewProviding.makePlaceHolderCardSection(commands:)(uint64_t a1)
{
  v14 = a1;
  v18 = 0;
  v17 = 0;
  v13 = 0;
  v9 = type metadata accessor for UUID();
  v7 = *(v9 - 8);
  v8 = v9 - 8;
  v6 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v10 = &v5 - v6;
  v18 = v1;
  type metadata accessor for SFCardSection();
  v16 = SAUIAppPunchOut.__allocating_init()();
  v17 = v16;
  UUID.init()();
  v2 = UUID.uuidString.getter();
  v11 = v3;
  v12 = MEMORY[0x26D620690](v2);
  (*(v7 + 8))(v10, v9);

  [v16 setCardSectionId_];
  MEMORY[0x277D82BD8](v12);

  type metadata accessor for SFAbstractCommand();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v16 setCommands_];
  MEMORY[0x277D82BD8](isa);
  return v16;
}

id static AceViewProviding.makeTitleCardSection(title:keyPaths:commands:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a1;
  v15 = a2;
  v25 = a3;
  v28 = a4;
  v34 = 0;
  v35 = 0;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  v27 = 0;
  v21 = type metadata accessor for UUID();
  v19 = *(v21 - 8);
  v20 = v21 - 8;
  v13 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v22 = &v12 - v13;
  v34 = v4;
  v35 = v5;
  v33 = v6;
  v32 = v7;
  type metadata accessor for SFTitleCardSection();
  v30 = SAUIAppPunchOut.__allocating_init()();
  v31 = v30;

  v16 = MEMORY[0x26D620690](v14, v15);

  [v30 setTitle_];
  MEMORY[0x277D82BD8](v16);
  v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("CardSectionTypeTitle", 0x14uLL, 1);
  object = v8._object;
  v18 = MEMORY[0x26D620690](v8._countAndFlagsBits);

  [v30 setType_];
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BE0](v30);
  [v30 setSeparatorStyle_];
  MEMORY[0x277D82BD8](v30);
  MEMORY[0x277D82BE0](v30);
  UUID.init()();
  v9 = UUID.uuidString.getter();
  v23 = v10;
  v24 = MEMORY[0x26D620690](v9);
  (*(v19 + 8))(v22, v21);

  [v30 setCardSectionId_];
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](v30);
  MEMORY[0x277D82BE0](v30);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v30 setParameterKeyPaths_];
  MEMORY[0x277D82BD8](isa);
  MEMORY[0x277D82BD8](v30);
  MEMORY[0x277D82BE0](v30);

  type metadata accessor for SFAbstractCommand();
  v29 = Array._bridgeToObjectiveC()().super.isa;

  [v30 setCommands_];
  MEMORY[0x277D82BD8](v29);
  MEMORY[0x277D82BD8](v30);
  return v30;
}

uint64_t static AceViewProviding.makePersonLabel(person:recipientIndex:deviceState:)(void *a1, uint64_t a2, uint64_t a3)
{
  v60 = a3;
  v61 = a2;
  v58 = a1;
  v75 = 0;
  v74 = 0;
  v73 = 0;
  v59 = 0;
  v67 = 0;
  v66 = 0;
  v62 = type metadata accessor for Logger();
  v63 = *(v62 - 8);
  v64 = v63;
  v4 = *(v63 + 64);
  MEMORY[0x28223BE20](v62 - 8);
  v65 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = a1;
  v74 = v6;
  v73 = v7;
  if (INPerson.hasHandleValue.getter())
  {
    v72 = [v58 personHandle];
    if (v72)
    {
      v56 = v72;
      v55 = v72;
      v8 = v72;
      outlined destroy of SFRichText?(&v72);
      v57 = [v56 value];
      if (v57)
      {
        v54 = v57;
        v49 = v57;
        v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v51 = v9;

        v52 = v50;
        v53 = v51;
      }

      else
      {
        v52 = 0;
        v53 = 0;
      }

      v46 = v53;
      v45 = v52;

      v47 = v45;
      v48 = v46;
    }

    else
    {
      outlined destroy of SFRichText?(&v72);
      v47 = 0;
      v48 = 0;
    }

    v43 = v48;
    v44 = v47;
    if (v48)
    {
      v41 = v44;
      v42 = v43;
      v66 = v44;
      v67 = v43;
      v39._countAndFlagsBits = v44;
      v39._object = v43;
      v40 = v59;
    }

    else
    {
      v10 = v65;
      v11 = Logger.payments.unsafeMutableAddressor();
      (*(v64 + 16))(v10, v11, v62);
      v37 = Logger.logObject.getter();
      v34 = v37;
      v36 = static os_log_type_t.error.getter();
      v35 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v38 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v37, v36))
      {
        v12 = v59;
        v25 = static UnsafeMutablePointer.allocate(capacity:)();
        v21 = v25;
        v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v23 = 0;
        v26 = createStorage<A>(capacity:type:)(0);
        v24 = v26;
        v27 = createStorage<A>(capacity:type:)(v23);
        v71 = v25;
        v70 = v26;
        v69 = v27;
        v28 = 0;
        v29 = &v71;
        serialize(_:at:)(0, &v71);
        serialize(_:at:)(v28, v29);
        v68 = v38;
        v30 = &v16;
        MEMORY[0x28223BE20](&v16);
        v31 = &v16 - 6;
        *(&v16 - 4) = v13;
        *(&v16 - 3) = &v70;
        *(&v16 - 2) = &v69;
        v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();
        v33 = v12;
        if (v12)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_2686B1000, v34, v35, "#AceViewProviding handle value is nil when recipient is specified by handle value", v21, 2u);
          v19 = 0;
          destroyStorage<A>(_:count:)(v24, 0, v22);
          destroyStorage<A>(_:count:)(v27, v19, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v21, MEMORY[0x277D84B78]);

          v20 = v33;
        }
      }

      else
      {

        v20 = v59;
      }

      v18 = v20;

      (*(v64 + 8))(v65, v62);
      v39 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
      v40 = v18;
    }
  }

  else
  {
    v16 = [v58 displayName];
    v17._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17._object = v14;

    v39 = v17;
    v40 = v59;
  }

  return v39._countAndFlagsBits;
}

unint64_t type metadata accessor for SAABPersonPicker()
{
  v2 = lazy cache variable for type metadata for SAABPersonPicker;
  if (!lazy cache variable for type metadata for SAABPersonPicker)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for SAABPersonPicker);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for SFTitleCardSection()
{
  v2 = lazy cache variable for type metadata for SFTitleCardSection;
  if (!lazy cache variable for type metadata for SFTitleCardSection)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for SFTitleCardSection);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t protocol witness for PaymentConfirmationLabelProviding.confirmButtonLabel() in conformance SendPaymentCATs(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return SendPaymentCATs.confirmButtonLabel()(a1);
}

uint64_t protocol witness for PaymentSlotDisplayValueProviding.slotDisplayValue(slot:) in conformance SendPaymentCATs(uint64_t a1, uint64_t a2)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v4 = *v2;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return SendPaymentCATs.slotDisplayValue(slot:)(a1, a2);
}

uint64_t protocol witness for PaymentSlotDisplayValueProviding.labelForResponseSlot(slot:) in conformance SendPaymentCATs(uint64_t a1, uint64_t a2)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v4 = *v2;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return SendPaymentCATs.labelForResponseSlot(slot:)(a1, a2);
}

uint64_t SendPaymentCATs.confirmButtonLabel(completion:)()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#ConfirmButtonLabel", 0x1EuLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t SendPaymentCATs.confirmButtonLabel()(uint64_t a1)
{
  v2[5] = v1;
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = v1;
  v3 = v2[2];
  return MEMORY[0x2822009F8](SendPaymentCATs.confirmButtonLabel(), 0);
}

uint64_t SendPaymentCATs.confirmButtonLabel()()
{
  v7 = MEMORY[0x277D55BF0];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#ConfirmButtonLabel", 0x1EuLL, 1);
  v0[6] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v9 = KeyValuePairs.init(dictionaryLiteral:)();
  v0[7] = v9;
  v10 = (v7 + *v7);
  v2 = v7[1];
  v3 = swift_task_alloc();
  v8[8] = v3;
  *v3 = v8[2];
  v3[1] = PaymentsUnsupportedIntentCATs.disabledSurfIntent();
  v4 = v8[5];
  v5 = v8[4];

  return v10(v5, v1._countAndFlagsBits, v1._object, v9);
}

{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#ConfirmButtonLabel", 0x1EuLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t SendPaymentCATs.confirmSlotValue(slot:paymentsConcept:completion:)(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a1;
  v25 = a2;
  v26 = a3;
  v27 = a4;
  v43 = 0;
  v42 = 0;
  v40 = 0;
  v41 = 0;
  v39 = 0;
  v28 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v35 = v22 - v28;
  v43 = MEMORY[0x28223BE20](v33);
  v42 = v5;
  v40 = v6;
  v41 = v7;
  v39 = v4;
  v34 = 1;
  v29 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#ConfirmSlotValue", 0x1CuLL, 1);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v31 = _allocateUninitializedArray<A>(_:)();
  v32 = v8;
  v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, v34 & 1);
  v10 = v33;
  v11 = v35;
  *v32 = v9;
  outlined init with copy of SpeakableString?(v10, v11);
  v36 = type metadata accessor for SpeakableString();
  v37 = *(v36 - 8);
  v38 = v36 - 8;
  if ((*(v37 + 48))(v35, v34) == 1)
  {
    outlined destroy of SpeakableString?(v35);
    v21 = v32;
    v32[1]._countAndFlagsBits = 0;
    v21[1]._object = 0;
    v21[2]._countAndFlagsBits = 0;
    v21[2]._object = 0;
  }

  else
  {
    v12 = v32;
    v32[2]._object = v36;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12[1]._countAndFlagsBits);
    (*(v37 + 32))(boxed_opaque_existential_1, v35, v36);
  }

  v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("paymentsConcept", 0xFuLL, 1);
  v32[3] = v14;

  if (v25)
  {
    v24 = v25;
    v23 = v25;
    v15 = type metadata accessor for PaymentsDialogConcept();
    v16 = v32;
    v17 = v23;
    v32[5]._object = v15;
    v16[4]._countAndFlagsBits = v17;
  }

  else
  {
    v20 = v32;
    v32[4]._countAndFlagsBits = 0;
    v20[4]._object = 0;
    v20[5]._countAndFlagsBits = 0;
    v20[5]._object = 0;
  }

  v18 = v31;
  _finalizeUninitializedArray<A>(_:)();
  v22[1] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v22[2] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t SendPaymentCATs.confirmSlotValue(slot:paymentsConcept:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = v3;
  v4[8] = a3;
  v4[7] = a2;
  v4[6] = a1;
  v4[2] = v4;
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = v3;
  v6 = v4[2];

  return MEMORY[0x2822009F8](SendPaymentCATs.confirmSlotValue(slot:paymentsConcept:), 0);
}

uint64_t SendPaymentCATs.confirmSlotValue(slot:paymentsConcept:)()
{
  v17 = v0[10];
  v16 = v0[7];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#ConfirmSlotValue", 0x1CuLL, 1);
  v0[11] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  v15 = v2;
  *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, 1);
  outlined init with copy of SpeakableString?(v16, v17);
  v18 = type metadata accessor for SpeakableString();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v17, 1) == 1)
  {
    outlined destroy of SpeakableString?(v14[10]);
    v15[1]._countAndFlagsBits = 0;
    v15[1]._object = 0;
    v15[2]._countAndFlagsBits = 0;
    v15[2]._object = 0;
  }

  else
  {
    v13 = v14[10];
    v15[2]._object = v18;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15[1]._countAndFlagsBits);
    (*(v19 + 32))(boxed_opaque_existential_1, v13, v18);
  }

  v12 = v14[8];
  v15[3] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("paymentsConcept", 0xFuLL, 1);

  if (v12)
  {
    v11 = v14[8];
    v15[5]._object = type metadata accessor for PaymentsDialogConcept();
    v15[4]._countAndFlagsBits = v11;
  }

  else
  {
    v15[4]._countAndFlagsBits = 0;
    v15[4]._object = 0;
    v15[5]._countAndFlagsBits = 0;
    v15[5]._object = 0;
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v9 = KeyValuePairs.init(dictionaryLiteral:)();
  v14[12] = v9;
  v10 = (MEMORY[0x277D55BF0] + *MEMORY[0x277D55BF0]);
  v4 = *(MEMORY[0x277D55BF0] + 4);
  v5 = swift_task_alloc();
  v14[13] = v5;
  *v5 = v14[2];
  v5[1] = RequestPaymentCATs.confirmSlotValue(slot:paymentsConcept:);
  v6 = v14[9];
  v7 = v14[6];

  return v10(v7, v1._countAndFlagsBits, v1._object, v9);
}

uint64_t SendPaymentCATs.confirmSlotValue(slot:paymentsConcept:)@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a3;
  v29 = a1;
  v23 = a2;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v24 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v31 = v19 - v24;
  v37 = MEMORY[0x28223BE20](v29);
  v36 = v4;
  v35 = v3;
  v30 = 1;
  v25 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#ConfirmSlotValue", 0x1CuLL, 1);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v27 = _allocateUninitializedArray<A>(_:)();
  v28 = v5;
  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, v30 & 1);
  v7 = v29;
  v8 = v31;
  *v28 = v6;
  outlined init with copy of SpeakableString?(v7, v8);
  v32 = type metadata accessor for SpeakableString();
  v33 = *(v32 - 8);
  v34 = v32 - 8;
  if ((*(v33 + 48))(v31, v30) == 1)
  {
    outlined destroy of SpeakableString?(v31);
    v18 = v28;
    v28[1]._countAndFlagsBits = 0;
    v18[1]._object = 0;
    v18[2]._countAndFlagsBits = 0;
    v18[2]._object = 0;
  }

  else
  {
    v9 = v28;
    v28[2]._object = v32;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v9[1]._countAndFlagsBits);
    (*(v33 + 32))(boxed_opaque_existential_1, v31, v32);
  }

  v11 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("paymentsConcept", 0xFuLL, 1);
  v28[3] = v11;

  if (v23)
  {
    v21 = v23;
    v20 = v23;
    v12 = type metadata accessor for PaymentsDialogConcept();
    v13 = v28;
    v14 = v20;
    v28[5]._object = v12;
    v13[4]._countAndFlagsBits = v14;
  }

  else
  {
    v17 = v28;
    v28[4]._countAndFlagsBits = 0;
    v17[4]._object = 0;
    v17[5]._countAndFlagsBits = 0;
    v17[5]._object = 0;
  }

  v15 = v27;
  _finalizeUninitializedArray<A>(_:)();
  v19[0] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v19[1] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t SendPaymentCATs.confirmSnippetHeader(completion:)()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#ConfirmSnippetHeader", 0x20uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t SendPaymentCATs.confirmSnippetHeader()(uint64_t a1)
{
  v2[5] = v1;
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = v1;
  v3 = v2[2];
  return MEMORY[0x2822009F8](SendPaymentCATs.confirmSnippetHeader(), 0);
}

uint64_t SendPaymentCATs.confirmSnippetHeader()()
{
  v7 = MEMORY[0x277D55BF0];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#ConfirmSnippetHeader", 0x20uLL, 1);
  v0[6] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v9 = KeyValuePairs.init(dictionaryLiteral:)();
  v0[7] = v9;
  v10 = (v7 + *v7);
  v2 = v7[1];
  v3 = swift_task_alloc();
  v8[8] = v3;
  *v3 = v8[2];
  v3[1] = PaymentsUnsupportedIntentCATs.disabledSurfIntent();
  v4 = v8[5];
  v5 = v8[4];

  return v10(v5, v1._countAndFlagsBits, v1._object, v9);
}

{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#ConfirmSnippetHeader", 0x20uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t SendPaymentCATs.disambiguateSlotValue(slot:payee:completion:)(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a1;
  v25 = a2;
  v26 = a3;
  v27 = a4;
  v43 = 0;
  v42 = 0;
  v40 = 0;
  v41 = 0;
  v39 = 0;
  v28 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v35 = v22 - v28;
  v43 = MEMORY[0x28223BE20](v33);
  v42 = v5;
  v40 = v6;
  v41 = v7;
  v39 = v4;
  v34 = 1;
  v29 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#DisambiguateSlotValue", 0x21uLL, 1);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v31 = _allocateUninitializedArray<A>(_:)();
  v32 = v8;
  v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, v34 & 1);
  v10 = v33;
  v11 = v35;
  *v32 = v9;
  outlined init with copy of SpeakableString?(v10, v11);
  v36 = type metadata accessor for SpeakableString();
  v37 = *(v36 - 8);
  v38 = v36 - 8;
  if ((*(v37 + 48))(v35, v34) == 1)
  {
    outlined destroy of SpeakableString?(v35);
    v21 = v32;
    v32[1]._countAndFlagsBits = 0;
    v21[1]._object = 0;
    v21[2]._countAndFlagsBits = 0;
    v21[2]._object = 0;
  }

  else
  {
    v12 = v32;
    v32[2]._object = v36;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12[1]._countAndFlagsBits);
    (*(v37 + 32))(boxed_opaque_existential_1, v35, v36);
  }

  v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("payee", 5uLL, 1);
  v32[3] = v14;

  if (v25)
  {
    v24 = v25;
    v23 = v25;
    v15 = type metadata accessor for DialogPerson();
    v16 = v32;
    v17 = v23;
    v32[5]._object = v15;
    v16[4]._countAndFlagsBits = v17;
  }

  else
  {
    v20 = v32;
    v32[4]._countAndFlagsBits = 0;
    v20[4]._object = 0;
    v20[5]._countAndFlagsBits = 0;
    v20[5]._object = 0;
  }

  v18 = v31;
  _finalizeUninitializedArray<A>(_:)();
  v22[1] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v22[2] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t SendPaymentCATs.disambiguateSlotValue(slot:payee:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = v3;
  v4[8] = a3;
  v4[7] = a2;
  v4[6] = a1;
  v4[2] = v4;
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = v3;
  v6 = v4[2];

  return MEMORY[0x2822009F8](SendPaymentCATs.disambiguateSlotValue(slot:payee:), 0);
}

uint64_t SendPaymentCATs.disambiguateSlotValue(slot:payee:)()
{
  v17 = v0[10];
  v16 = v0[7];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#DisambiguateSlotValue", 0x21uLL, 1);
  v0[11] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  v15 = v2;
  *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, 1);
  outlined init with copy of SpeakableString?(v16, v17);
  v18 = type metadata accessor for SpeakableString();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v17, 1) == 1)
  {
    outlined destroy of SpeakableString?(v14[10]);
    v15[1]._countAndFlagsBits = 0;
    v15[1]._object = 0;
    v15[2]._countAndFlagsBits = 0;
    v15[2]._object = 0;
  }

  else
  {
    v13 = v14[10];
    v15[2]._object = v18;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15[1]._countAndFlagsBits);
    (*(v19 + 32))(boxed_opaque_existential_1, v13, v18);
  }

  v12 = v14[8];
  v15[3] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("payee", 5uLL, 1);

  if (v12)
  {
    v11 = v14[8];
    v15[5]._object = type metadata accessor for DialogPerson();
    v15[4]._countAndFlagsBits = v11;
  }

  else
  {
    v15[4]._countAndFlagsBits = 0;
    v15[4]._object = 0;
    v15[5]._countAndFlagsBits = 0;
    v15[5]._object = 0;
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v9 = KeyValuePairs.init(dictionaryLiteral:)();
  v14[12] = v9;
  v10 = (MEMORY[0x277D55BF0] + *MEMORY[0x277D55BF0]);
  v4 = *(MEMORY[0x277D55BF0] + 4);
  v5 = swift_task_alloc();
  v14[13] = v5;
  *v5 = v14[2];
  v5[1] = RequestPaymentCATs.confirmSlotValue(slot:paymentsConcept:);
  v6 = v14[9];
  v7 = v14[6];

  return v10(v7, v1._countAndFlagsBits, v1._object, v9);
}

uint64_t SendPaymentCATs.disambiguateSlotValue(slot:payee:)@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a3;
  v29 = a1;
  v23 = a2;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v24 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v31 = v19 - v24;
  v37 = MEMORY[0x28223BE20](v29);
  v36 = v4;
  v35 = v3;
  v30 = 1;
  v25 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#DisambiguateSlotValue", 0x21uLL, 1);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v27 = _allocateUninitializedArray<A>(_:)();
  v28 = v5;
  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, v30 & 1);
  v7 = v29;
  v8 = v31;
  *v28 = v6;
  outlined init with copy of SpeakableString?(v7, v8);
  v32 = type metadata accessor for SpeakableString();
  v33 = *(v32 - 8);
  v34 = v32 - 8;
  if ((*(v33 + 48))(v31, v30) == 1)
  {
    outlined destroy of SpeakableString?(v31);
    v18 = v28;
    v28[1]._countAndFlagsBits = 0;
    v18[1]._object = 0;
    v18[2]._countAndFlagsBits = 0;
    v18[2]._object = 0;
  }

  else
  {
    v9 = v28;
    v28[2]._object = v32;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v9[1]._countAndFlagsBits);
    (*(v33 + 32))(boxed_opaque_existential_1, v31, v32);
  }

  v11 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("payee", 5uLL, 1);
  v28[3] = v11;

  if (v23)
  {
    v21 = v23;
    v20 = v23;
    v12 = type metadata accessor for DialogPerson();
    v13 = v28;
    v14 = v20;
    v28[5]._object = v12;
    v13[4]._countAndFlagsBits = v14;
  }

  else
  {
    v17 = v28;
    v28[4]._countAndFlagsBits = 0;
    v17[4]._object = 0;
    v17[5]._countAndFlagsBits = 0;
    v17[5]._object = 0;
  }

  v15 = v27;
  _finalizeUninitializedArray<A>(_:)();
  v19[0] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v19[1] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t SendPaymentCATs.handledSnippetHeader(completion:)()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#HandledSnippetHeader", 0x20uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t SendPaymentCATs.handledSnippetHeader()(uint64_t a1)
{
  v2[5] = v1;
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = v1;
  v3 = v2[2];
  return MEMORY[0x2822009F8](SendPaymentCATs.handledSnippetHeader(), 0);
}

uint64_t SendPaymentCATs.handledSnippetHeader()()
{
  v7 = MEMORY[0x277D55BF0];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#HandledSnippetHeader", 0x20uLL, 1);
  v0[6] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v9 = KeyValuePairs.init(dictionaryLiteral:)();
  v0[7] = v9;
  v10 = (v7 + *v7);
  v2 = v7[1];
  v3 = swift_task_alloc();
  v8[8] = v3;
  *v3 = v8[2];
  v3[1] = PaymentsUnsupportedIntentCATs.disabledSurfIntent();
  v4 = v8[5];
  v5 = v8[4];

  return v10(v5, v1._countAndFlagsBits, v1._object, v9);
}

{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#HandledSnippetHeader", 0x20uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t SendPaymentCATs.intentConfirmationPrompt(paymentsConcept:completion:)(uint64_t a1)
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#IntentConfirmationPrompt", 0x24uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  v3 = v1;
  *v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("paymentsConcept", 0xFuLL, 1);

  if (a1)
  {
    v3[2]._object = type metadata accessor for PaymentsDialogConcept();
    v3[1]._countAndFlagsBits = a1;
  }

  else
  {
    v3[1]._countAndFlagsBits = 0;
    v3[1]._object = 0;
    v3[2]._countAndFlagsBits = 0;
    v3[2]._object = 0;
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t SendPaymentCATs.intentConfirmationPrompt(paymentsConcept:)(uint64_t a1, uint64_t a2)
{
  v3[7] = v2;
  v3[6] = a2;
  v3[5] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v3[3] = a2;
  v3[4] = v2;
  v4 = v3[2];
  return MEMORY[0x2822009F8](SendPaymentCATs.intentConfirmationPrompt(paymentsConcept:), 0);
}

uint64_t SendPaymentCATs.intentConfirmationPrompt(paymentsConcept:)()
{
  v13 = v0[6];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#IntentConfirmationPrompt", 0x24uLL, 1);
  v0[8] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  v12 = v2;
  *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("paymentsConcept", 0xFuLL, 1);

  if (v13)
  {
    v10 = v11[6];
    v12[2]._object = type metadata accessor for PaymentsDialogConcept();
    v12[1]._countAndFlagsBits = v10;
  }

  else
  {
    v12[1]._countAndFlagsBits = 0;
    v12[1]._object = 0;
    v12[2]._countAndFlagsBits = 0;
    v12[2]._object = 0;
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v8 = KeyValuePairs.init(dictionaryLiteral:)();
  v11[9] = v8;
  v9 = (MEMORY[0x277D55BF0] + *MEMORY[0x277D55BF0]);
  v3 = *(MEMORY[0x277D55BF0] + 4);
  v4 = swift_task_alloc();
  v11[10] = v4;
  *v4 = v11[2];
  v4[1] = RequestPaymentCATs.intentConfirmationPrompt(paymentsConcept:);
  v5 = v11[7];
  v6 = v11[5];

  return v9(v6, v1._countAndFlagsBits, v1._object, v8);
}

uint64_t SendPaymentCATs.intentConfirmationPrompt(paymentsConcept:)(uint64_t a1)
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#IntentConfirmationPrompt", 0x24uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  v3 = v1;
  *v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("paymentsConcept", 0xFuLL, 1);

  if (a1)
  {
    v3[2]._object = type metadata accessor for PaymentsDialogConcept();
    v3[1]._countAndFlagsBits = a1;
  }

  else
  {
    v3[1]._countAndFlagsBits = 0;
    v3[1]._object = 0;
    v3[2]._countAndFlagsBits = 0;
    v3[2]._object = 0;
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t SendPaymentCATs.intentHandledResponse(app:completion:)(uint64_t a1)
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#IntentHandledResponse", 0x21uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  v3 = v1;
  *v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("app", 3uLL, 1);

  if (a1)
  {
    v3[2]._object = type metadata accessor for SirikitApp();
    v3[1]._countAndFlagsBits = a1;
  }

  else
  {
    v3[1]._countAndFlagsBits = 0;
    v3[1]._object = 0;
    v3[2]._countAndFlagsBits = 0;
    v3[2]._object = 0;
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t SendPaymentCATs.intentHandledResponse(app:)(uint64_t a1, uint64_t a2)
{
  v3[7] = v2;
  v3[6] = a2;
  v3[5] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v3[3] = a2;
  v3[4] = v2;
  v4 = v3[2];
  return MEMORY[0x2822009F8](SendPaymentCATs.intentHandledResponse(app:), 0);
}

uint64_t SendPaymentCATs.intentHandledResponse(app:)()
{
  v13 = v0[6];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#IntentHandledResponse", 0x21uLL, 1);
  v0[8] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  v12 = v2;
  *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("app", 3uLL, 1);

  if (v13)
  {
    v10 = v11[6];
    v12[2]._object = type metadata accessor for SirikitApp();
    v12[1]._countAndFlagsBits = v10;
  }

  else
  {
    v12[1]._countAndFlagsBits = 0;
    v12[1]._object = 0;
    v12[2]._countAndFlagsBits = 0;
    v12[2]._object = 0;
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v8 = KeyValuePairs.init(dictionaryLiteral:)();
  v11[9] = v8;
  v9 = (MEMORY[0x277D55BF0] + *MEMORY[0x277D55BF0]);
  v3 = *(MEMORY[0x277D55BF0] + 4);
  v4 = swift_task_alloc();
  v11[10] = v4;
  *v4 = v11[2];
  v4[1] = RequestPaymentCATs.intentConfirmationPrompt(paymentsConcept:);
  v5 = v11[7];
  v6 = v11[5];

  return v9(v6, v1._countAndFlagsBits, v1._object, v8);
}

uint64_t SendPaymentCATs.intentHandledResponse(app:)(uint64_t a1)
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#IntentHandledResponse", 0x21uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  v3 = v1;
  *v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("app", 3uLL, 1);

  if (a1)
  {
    v3[2]._object = type metadata accessor for SirikitApp();
    v3[1]._countAndFlagsBits = a1;
  }

  else
  {
    v3[1]._countAndFlagsBits = 0;
    v3[1]._object = 0;
    v3[2]._countAndFlagsBits = 0;
    v3[2]._object = 0;
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t SendPaymentCATs.labelForResponseSlot(slot:completion:)(const void *a1, uint64_t a2, uint64_t a3)
{
  v21 = a1;
  v15[4] = a2;
  v15[5] = a3;
  v30 = 0;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v16 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v23 = v15 - v16;
  v30 = MEMORY[0x28223BE20](v21);
  v28 = v4;
  v29 = v5;
  v27 = v3;
  v22 = 1;
  v17 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#LabelForResponseSlot", 0x20uLL, 1);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v19 = _allocateUninitializedArray<A>(_:)();
  v20 = v6;
  v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, v22 & 1);
  v8 = v21;
  v9 = v23;
  *v20 = v7;
  outlined init with copy of SpeakableString?(v8, v9);
  v24 = type metadata accessor for SpeakableString();
  v25 = *(v24 - 8);
  v26 = v24 - 8;
  if ((*(v25 + 48))(v23, v22) == 1)
  {
    outlined destroy of SpeakableString?(v23);
    v14 = v20;
    v20[1]._countAndFlagsBits = 0;
    v14[1]._object = 0;
    v14[2]._countAndFlagsBits = 0;
    v14[2]._object = 0;
  }

  else
  {
    v10 = v20;
    v20[2]._object = v24;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v10[1]._countAndFlagsBits);
    (*(v25 + 32))(boxed_opaque_existential_1, v23, v24);
  }

  v12 = v19;
  _finalizeUninitializedArray<A>(_:)();
  v15[1] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v15[2] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t SendPaymentCATs.labelForResponseSlot(slot:)(uint64_t a1, uint64_t a2)
{
  v3[7] = v2;
  v3[6] = a2;
  v3[5] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[3] = a2;
  v3[4] = v2;
  v5 = v3[2];

  return MEMORY[0x2822009F8](SendPaymentCATs.labelForResponseSlot(slot:), 0);
}

uint64_t SendPaymentCATs.labelForResponseSlot(slot:)()
{
  v15 = v0[8];
  v14 = v0[6];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#LabelForResponseSlot", 0x20uLL, 1);
  v0[9] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  p_countAndFlagsBits = &v2->_countAndFlagsBits;
  *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, 1);
  outlined init with copy of SpeakableString?(v14, v15);
  v16 = type metadata accessor for SpeakableString();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v15, 1) == 1)
  {
    outlined destroy of SpeakableString?(v12[8]);
    p_countAndFlagsBits[2] = 0;
    p_countAndFlagsBits[3] = 0;
    p_countAndFlagsBits[4] = 0;
    p_countAndFlagsBits[5] = 0;
  }

  else
  {
    v11 = v12[8];
    p_countAndFlagsBits[5] = v16;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(p_countAndFlagsBits + 2);
    (*(v17 + 32))(boxed_opaque_existential_1, v11, v16);
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v9 = KeyValuePairs.init(dictionaryLiteral:)();
  v12[10] = v9;
  v10 = (MEMORY[0x277D55BF0] + *MEMORY[0x277D55BF0]);
  v4 = *(MEMORY[0x277D55BF0] + 4);
  v5 = swift_task_alloc();
  v12[11] = v5;
  *v5 = v12[2];
  v5[1] = RequestPaymentCATs.disambiguateSlotValue(slot:);
  v6 = v12[7];
  v7 = v12[5];

  return v10(v7, v1._countAndFlagsBits, v1._object, v9);
}

uint64_t SendPaymentCATs.labelForResponseSlot(slot:)@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v12[2] = a2;
  v18 = a1;
  v25 = 0;
  v24 = 0;
  v13 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v20 = v12 - v13;
  v25 = MEMORY[0x28223BE20](v18);
  v24 = v2;
  v19 = 1;
  v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#LabelForResponseSlot", 0x20uLL, 1);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v16 = _allocateUninitializedArray<A>(_:)();
  v17 = v3;
  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, v19 & 1);
  v5 = v18;
  v6 = v20;
  *v17 = v4;
  outlined init with copy of SpeakableString?(v5, v6);
  v21 = type metadata accessor for SpeakableString();
  v22 = *(v21 - 8);
  v23 = v21 - 8;
  if ((*(v22 + 48))(v20, v19) == 1)
  {
    outlined destroy of SpeakableString?(v20);
    v11 = v17;
    v17[1]._countAndFlagsBits = 0;
    v11[1]._object = 0;
    v11[2]._countAndFlagsBits = 0;
    v11[2]._object = 0;
  }

  else
  {
    v7 = v17;
    v17[2]._object = v21;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v7[1]._countAndFlagsBits);
    (*(v22 + 32))(boxed_opaque_existential_1, v20, v21);
  }

  v9 = v16;
  _finalizeUninitializedArray<A>(_:)();
  v12[0] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v12[1] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t SendPaymentCATs.noResultsResponse(app:completion:)(uint64_t a1)
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#NoResultsResponse", 0x1DuLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  v3 = v1;
  *v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("app", 3uLL, 1);

  if (a1)
  {
    v3[2]._object = type metadata accessor for SirikitApp();
    v3[1]._countAndFlagsBits = a1;
  }

  else
  {
    v3[1]._countAndFlagsBits = 0;
    v3[1]._object = 0;
    v3[2]._countAndFlagsBits = 0;
    v3[2]._object = 0;
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t SendPaymentCATs.noResultsResponse(app:)(uint64_t a1, uint64_t a2)
{
  v3[7] = v2;
  v3[6] = a2;
  v3[5] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v3[3] = a2;
  v3[4] = v2;
  v4 = v3[2];
  return MEMORY[0x2822009F8](SendPaymentCATs.noResultsResponse(app:), 0);
}

uint64_t SendPaymentCATs.noResultsResponse(app:)()
{
  v13 = v0[6];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#NoResultsResponse", 0x1DuLL, 1);
  v0[8] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  v12 = v2;
  *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("app", 3uLL, 1);

  if (v13)
  {
    v10 = v11[6];
    v12[2]._object = type metadata accessor for SirikitApp();
    v12[1]._countAndFlagsBits = v10;
  }

  else
  {
    v12[1]._countAndFlagsBits = 0;
    v12[1]._object = 0;
    v12[2]._countAndFlagsBits = 0;
    v12[2]._object = 0;
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v8 = KeyValuePairs.init(dictionaryLiteral:)();
  v11[9] = v8;
  v9 = (MEMORY[0x277D55BF0] + *MEMORY[0x277D55BF0]);
  v3 = *(MEMORY[0x277D55BF0] + 4);
  v4 = swift_task_alloc();
  v11[10] = v4;
  *v4 = v11[2];
  v4[1] = RequestPaymentCATs.intentConfirmationPrompt(paymentsConcept:);
  v5 = v11[7];
  v6 = v11[5];

  return v9(v6, v1._countAndFlagsBits, v1._object, v8);
}

uint64_t SendPaymentCATs.noResultsResponse(app:)(uint64_t a1)
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#NoResultsResponse", 0x1DuLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  v3 = v1;
  *v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("app", 3uLL, 1);

  if (a1)
  {
    v3[2]._object = type metadata accessor for SirikitApp();
    v3[1]._countAndFlagsBits = a1;
  }

  else
  {
    v3[1]._countAndFlagsBits = 0;
    v3[1]._object = 0;
    v3[2]._countAndFlagsBits = 0;
    v3[2]._object = 0;
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t SendPaymentCATs.preHandleIntentResponse(completion:)()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#PreHandleIntentResponse", 0x23uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t SendPaymentCATs.preHandleIntentResponse()(uint64_t a1)
{
  v2[5] = v1;
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = v1;
  v3 = v2[2];
  return MEMORY[0x2822009F8](SendPaymentCATs.preHandleIntentResponse(), 0);
}

uint64_t SendPaymentCATs.preHandleIntentResponse()()
{
  v7 = MEMORY[0x277D55BF0];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#PreHandleIntentResponse", 0x23uLL, 1);
  v0[6] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v9 = KeyValuePairs.init(dictionaryLiteral:)();
  v0[7] = v9;
  v10 = (v7 + *v7);
  v2 = v7[1];
  v3 = swift_task_alloc();
  v8[8] = v3;
  *v3 = v8[2];
  v3[1] = PaymentsUnsupportedIntentCATs.disabledSurfIntent();
  v4 = v8[5];
  v5 = v8[4];

  return v10(v5, v1._countAndFlagsBits, v1._object, v9);
}

{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#PreHandleIntentResponse", 0x23uLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t SendPaymentCATs.promptCancelled(completion:)()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#PromptCancelled", 0x1BuLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t SendPaymentCATs.promptCancelled()(uint64_t a1)
{
  v2[5] = v1;
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = v1;
  v3 = v2[2];
  return MEMORY[0x2822009F8](SendPaymentCATs.promptCancelled(), 0);
}

uint64_t SendPaymentCATs.promptCancelled()()
{
  v7 = MEMORY[0x277D55BF0];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#PromptCancelled", 0x1BuLL, 1);
  v0[6] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v9 = KeyValuePairs.init(dictionaryLiteral:)();
  v0[7] = v9;
  v10 = (v7 + *v7);
  v2 = v7[1];
  v3 = swift_task_alloc();
  v8[8] = v3;
  *v3 = v8[2];
  v3[1] = PaymentsUnsupportedIntentCATs.disabledSurfIntent();
  v4 = v8[5];
  v5 = v8[4];

  return v10(v5, v1._countAndFlagsBits, v1._object, v9);
}

{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#PromptCancelled", 0x1BuLL, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t SendPaymentCATs.promptForSlotValue(slot:completion:)(const void *a1, uint64_t a2, uint64_t a3)
{
  v21 = a1;
  v15[4] = a2;
  v15[5] = a3;
  v30 = 0;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v16 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v23 = v15 - v16;
  v30 = MEMORY[0x28223BE20](v21);
  v28 = v4;
  v29 = v5;
  v27 = v3;
  v22 = 1;
  v17 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#PromptForSlotValue", 0x1EuLL, 1);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v19 = _allocateUninitializedArray<A>(_:)();
  v20 = v6;
  v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, v22 & 1);
  v8 = v21;
  v9 = v23;
  *v20 = v7;
  outlined init with copy of SpeakableString?(v8, v9);
  v24 = type metadata accessor for SpeakableString();
  v25 = *(v24 - 8);
  v26 = v24 - 8;
  if ((*(v25 + 48))(v23, v22) == 1)
  {
    outlined destroy of SpeakableString?(v23);
    v14 = v20;
    v20[1]._countAndFlagsBits = 0;
    v14[1]._object = 0;
    v14[2]._countAndFlagsBits = 0;
    v14[2]._object = 0;
  }

  else
  {
    v10 = v20;
    v20[2]._object = v24;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v10[1]._countAndFlagsBits);
    (*(v25 + 32))(boxed_opaque_existential_1, v23, v24);
  }

  v12 = v19;
  _finalizeUninitializedArray<A>(_:)();
  v15[1] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v15[2] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t SendPaymentCATs.promptForSlotValue(slot:)(uint64_t a1, uint64_t a2)
{
  v3[7] = v2;
  v3[6] = a2;
  v3[5] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[3] = a2;
  v3[4] = v2;
  v5 = v3[2];

  return MEMORY[0x2822009F8](SendPaymentCATs.promptForSlotValue(slot:), 0);
}

uint64_t SendPaymentCATs.promptForSlotValue(slot:)()
{
  v15 = v0[8];
  v14 = v0[6];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#PromptForSlotValue", 0x1EuLL, 1);
  v0[9] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  p_countAndFlagsBits = &v2->_countAndFlagsBits;
  *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, 1);
  outlined init with copy of SpeakableString?(v14, v15);
  v16 = type metadata accessor for SpeakableString();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v15, 1) == 1)
  {
    outlined destroy of SpeakableString?(v12[8]);
    p_countAndFlagsBits[2] = 0;
    p_countAndFlagsBits[3] = 0;
    p_countAndFlagsBits[4] = 0;
    p_countAndFlagsBits[5] = 0;
  }

  else
  {
    v11 = v12[8];
    p_countAndFlagsBits[5] = v16;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(p_countAndFlagsBits + 2);
    (*(v17 + 32))(boxed_opaque_existential_1, v11, v16);
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v9 = KeyValuePairs.init(dictionaryLiteral:)();
  v12[10] = v9;
  v10 = (MEMORY[0x277D55BF0] + *MEMORY[0x277D55BF0]);
  v4 = *(MEMORY[0x277D55BF0] + 4);
  v5 = swift_task_alloc();
  v12[11] = v5;
  *v5 = v12[2];
  v5[1] = RequestPaymentCATs.disambiguateSlotValue(slot:);
  v6 = v12[7];
  v7 = v12[5];

  return v10(v7, v1._countAndFlagsBits, v1._object, v9);
}

uint64_t SendPaymentCATs.promptForSlotValue(slot:)@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v12[2] = a2;
  v18 = a1;
  v25 = 0;
  v24 = 0;
  v13 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v20 = v12 - v13;
  v25 = MEMORY[0x28223BE20](v18);
  v24 = v2;
  v19 = 1;
  v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#PromptForSlotValue", 0x1EuLL, 1);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v16 = _allocateUninitializedArray<A>(_:)();
  v17 = v3;
  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, v19 & 1);
  v5 = v18;
  v6 = v20;
  *v17 = v4;
  outlined init with copy of SpeakableString?(v5, v6);
  v21 = type metadata accessor for SpeakableString();
  v22 = *(v21 - 8);
  v23 = v21 - 8;
  if ((*(v22 + 48))(v20, v19) == 1)
  {
    outlined destroy of SpeakableString?(v20);
    v11 = v17;
    v17[1]._countAndFlagsBits = 0;
    v11[1]._object = 0;
    v11[2]._countAndFlagsBits = 0;
    v11[2]._object = 0;
  }

  else
  {
    v7 = v17;
    v17[2]._object = v21;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v7[1]._countAndFlagsBits);
    (*(v22 + 32))(boxed_opaque_existential_1, v20, v21);
  }

  v9 = v16;
  _finalizeUninitializedArray<A>(_:)();
  v12[0] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v12[1] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t SendPaymentCATs.slotDisplayValue(slot:completion:)(const void *a1, uint64_t a2, uint64_t a3)
{
  v21 = a1;
  v15[4] = a2;
  v15[5] = a3;
  v30 = 0;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v16 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v23 = v15 - v16;
  v30 = MEMORY[0x28223BE20](v21);
  v28 = v4;
  v29 = v5;
  v27 = v3;
  v22 = 1;
  v17 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#SlotDisplayValue", 0x1CuLL, 1);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v19 = _allocateUninitializedArray<A>(_:)();
  v20 = v6;
  v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, v22 & 1);
  v8 = v21;
  v9 = v23;
  *v20 = v7;
  outlined init with copy of SpeakableString?(v8, v9);
  v24 = type metadata accessor for SpeakableString();
  v25 = *(v24 - 8);
  v26 = v24 - 8;
  if ((*(v25 + 48))(v23, v22) == 1)
  {
    outlined destroy of SpeakableString?(v23);
    v14 = v20;
    v20[1]._countAndFlagsBits = 0;
    v14[1]._object = 0;
    v14[2]._countAndFlagsBits = 0;
    v14[2]._object = 0;
  }

  else
  {
    v10 = v20;
    v20[2]._object = v24;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v10[1]._countAndFlagsBits);
    (*(v25 + 32))(boxed_opaque_existential_1, v23, v24);
  }

  v12 = v19;
  _finalizeUninitializedArray<A>(_:)();
  v15[1] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v15[2] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t SendPaymentCATs.slotDisplayValue(slot:)(uint64_t a1, uint64_t a2)
{
  v3[7] = v2;
  v3[6] = a2;
  v3[5] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[3] = a2;
  v3[4] = v2;
  v5 = v3[2];

  return MEMORY[0x2822009F8](SendPaymentCATs.slotDisplayValue(slot:), 0);
}

uint64_t SendPaymentCATs.slotDisplayValue(slot:)()
{
  v15 = v0[8];
  v14 = v0[6];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#SlotDisplayValue", 0x1CuLL, 1);
  v0[9] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  p_countAndFlagsBits = &v2->_countAndFlagsBits;
  *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, 1);
  outlined init with copy of SpeakableString?(v14, v15);
  v16 = type metadata accessor for SpeakableString();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v15, 1) == 1)
  {
    outlined destroy of SpeakableString?(v12[8]);
    p_countAndFlagsBits[2] = 0;
    p_countAndFlagsBits[3] = 0;
    p_countAndFlagsBits[4] = 0;
    p_countAndFlagsBits[5] = 0;
  }

  else
  {
    v11 = v12[8];
    p_countAndFlagsBits[5] = v16;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(p_countAndFlagsBits + 2);
    (*(v17 + 32))(boxed_opaque_existential_1, v11, v16);
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v9 = KeyValuePairs.init(dictionaryLiteral:)();
  v12[10] = v9;
  v10 = (MEMORY[0x277D55BF0] + *MEMORY[0x277D55BF0]);
  v4 = *(MEMORY[0x277D55BF0] + 4);
  v5 = swift_task_alloc();
  v12[11] = v5;
  *v5 = v12[2];
  v5[1] = RequestPaymentCATs.disambiguateSlotValue(slot:);
  v6 = v12[7];
  v7 = v12[5];

  return v10(v7, v1._countAndFlagsBits, v1._object, v9);
}

uint64_t SendPaymentCATs.slotDisplayValue(slot:)@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v12[2] = a2;
  v18 = a1;
  v25 = 0;
  v24 = 0;
  v13 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v20 = v12 - v13;
  v25 = MEMORY[0x28223BE20](v18);
  v24 = v2;
  v19 = 1;
  v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#SlotDisplayValue", 0x1CuLL, 1);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v16 = _allocateUninitializedArray<A>(_:)();
  v17 = v3;
  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, v19 & 1);
  v5 = v18;
  v6 = v20;
  *v17 = v4;
  outlined init with copy of SpeakableString?(v5, v6);
  v21 = type metadata accessor for SpeakableString();
  v22 = *(v21 - 8);
  v23 = v21 - 8;
  if ((*(v22 + 48))(v20, v19) == 1)
  {
    outlined destroy of SpeakableString?(v20);
    v11 = v17;
    v17[1]._countAndFlagsBits = 0;
    v11[1]._object = 0;
    v11[2]._countAndFlagsBits = 0;
    v11[2]._object = 0;
  }

  else
  {
    v7 = v17;
    v17[2]._object = v21;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v7[1]._countAndFlagsBits);
    (*(v22 + 32))(boxed_opaque_existential_1, v20, v21);
  }

  v9 = v16;
  _finalizeUninitializedArray<A>(_:)();
  v12[0] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v12[1] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t SendPaymentCATs.unsupportedSlotValue(slot:paymentsConcept:completion:)(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a1;
  v25 = a2;
  v26 = a3;
  v27 = a4;
  v43 = 0;
  v42 = 0;
  v40 = 0;
  v41 = 0;
  v39 = 0;
  v28 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v35 = v22 - v28;
  v43 = MEMORY[0x28223BE20](v33);
  v42 = v5;
  v40 = v6;
  v41 = v7;
  v39 = v4;
  v34 = 1;
  v29 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#UnsupportedSlotValue", 0x20uLL, 1);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v31 = _allocateUninitializedArray<A>(_:)();
  v32 = v8;
  v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, v34 & 1);
  v10 = v33;
  v11 = v35;
  *v32 = v9;
  outlined init with copy of SpeakableString?(v10, v11);
  v36 = type metadata accessor for SpeakableString();
  v37 = *(v36 - 8);
  v38 = v36 - 8;
  if ((*(v37 + 48))(v35, v34) == 1)
  {
    outlined destroy of SpeakableString?(v35);
    v21 = v32;
    v32[1]._countAndFlagsBits = 0;
    v21[1]._object = 0;
    v21[2]._countAndFlagsBits = 0;
    v21[2]._object = 0;
  }

  else
  {
    v12 = v32;
    v32[2]._object = v36;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12[1]._countAndFlagsBits);
    (*(v37 + 32))(boxed_opaque_existential_1, v35, v36);
  }

  v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("paymentsConcept", 0xFuLL, 1);
  v32[3] = v14;

  if (v25)
  {
    v24 = v25;
    v23 = v25;
    v15 = type metadata accessor for PaymentsDialogConcept();
    v16 = v32;
    v17 = v23;
    v32[5]._object = v15;
    v16[4]._countAndFlagsBits = v17;
  }

  else
  {
    v20 = v32;
    v32[4]._countAndFlagsBits = 0;
    v20[4]._object = 0;
    v20[5]._countAndFlagsBits = 0;
    v20[5]._object = 0;
  }

  v18 = v31;
  _finalizeUninitializedArray<A>(_:)();
  v22[1] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v22[2] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t SendPaymentCATs.unsupportedSlotValue(slot:paymentsConcept:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = v3;
  v4[8] = a3;
  v4[7] = a2;
  v4[6] = a1;
  v4[2] = v4;
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = v3;
  v6 = v4[2];

  return MEMORY[0x2822009F8](SendPaymentCATs.unsupportedSlotValue(slot:paymentsConcept:), 0);
}

uint64_t SendPaymentCATs.unsupportedSlotValue(slot:paymentsConcept:)()
{
  v17 = v0[10];
  v16 = v0[7];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#UnsupportedSlotValue", 0x20uLL, 1);
  v0[11] = v1._object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  _allocateUninitializedArray<A>(_:)();
  v15 = v2;
  *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, 1);
  outlined init with copy of SpeakableString?(v16, v17);
  v18 = type metadata accessor for SpeakableString();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v17, 1) == 1)
  {
    outlined destroy of SpeakableString?(v14[10]);
    v15[1]._countAndFlagsBits = 0;
    v15[1]._object = 0;
    v15[2]._countAndFlagsBits = 0;
    v15[2]._object = 0;
  }

  else
  {
    v13 = v14[10];
    v15[2]._object = v18;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15[1]._countAndFlagsBits);
    (*(v19 + 32))(boxed_opaque_existential_1, v13, v18);
  }

  v12 = v14[8];
  v15[3] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("paymentsConcept", 0xFuLL, 1);

  if (v12)
  {
    v11 = v14[8];
    v15[5]._object = type metadata accessor for PaymentsDialogConcept();
    v15[4]._countAndFlagsBits = v11;
  }

  else
  {
    v15[4]._countAndFlagsBits = 0;
    v15[4]._object = 0;
    v15[5]._countAndFlagsBits = 0;
    v15[5]._object = 0;
  }

  _finalizeUninitializedArray<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v9 = KeyValuePairs.init(dictionaryLiteral:)();
  v14[12] = v9;
  v10 = (MEMORY[0x277D55BF0] + *MEMORY[0x277D55BF0]);
  v4 = *(MEMORY[0x277D55BF0] + 4);
  v5 = swift_task_alloc();
  v14[13] = v5;
  *v5 = v14[2];
  v5[1] = RequestPaymentCATs.confirmSlotValue(slot:paymentsConcept:);
  v6 = v14[9];
  v7 = v14[6];

  return v10(v7, v1._countAndFlagsBits, v1._object, v9);
}

uint64_t SendPaymentCATs.unsupportedSlotValue(slot:paymentsConcept:)@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a3;
  v29 = a1;
  v23 = a2;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v24 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v31 = v19 - v24;
  v37 = MEMORY[0x28223BE20](v29);
  v36 = v4;
  v35 = v3;
  v30 = 1;
  v25 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#UnsupportedSlotValue", 0x20uLL, 1);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ypSgtMd, &_sSS_ypSgtMR);
  v27 = _allocateUninitializedArray<A>(_:)();
  v28 = v5;
  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("slot", 4uLL, v30 & 1);
  v7 = v29;
  v8 = v31;
  *v28 = v6;
  outlined init with copy of SpeakableString?(v7, v8);
  v32 = type metadata accessor for SpeakableString();
  v33 = *(v32 - 8);
  v34 = v32 - 8;
  if ((*(v33 + 48))(v31, v30) == 1)
  {
    outlined destroy of SpeakableString?(v31);
    v18 = v28;
    v28[1]._countAndFlagsBits = 0;
    v18[1]._object = 0;
    v18[2]._countAndFlagsBits = 0;
    v18[2]._object = 0;
  }

  else
  {
    v9 = v28;
    v28[2]._object = v32;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v9[1]._countAndFlagsBits);
    (*(v33 + 32))(boxed_opaque_existential_1, v31, v32);
  }

  v11 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("paymentsConcept", 0xFuLL, 1);
  v28[3] = v11;

  if (v23)
  {
    v21 = v23;
    v20 = v23;
    v12 = type metadata accessor for PaymentsDialogConcept();
    v13 = v28;
    v14 = v20;
    v28[5]._object = v12;
    v13[4]._countAndFlagsBits = v14;
  }

  else
  {
    v17 = v28;
    v28[4]._countAndFlagsBits = 0;
    v17[4]._object = 0;
    v17[5]._countAndFlagsBits = 0;
    v17[5]._object = 0;
  }

  v15 = v27;
  _finalizeUninitializedArray<A>(_:)();
  v19[0] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v19[1] = KeyValuePairs.init(dictionaryLiteral:)();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t type metadata accessor for SendPaymentCATs()
{
  v1 = type metadata singleton initialization cache for SendPaymentCATs;
  if (!type metadata singleton initialization cache for SendPaymentCATs)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t type metadata completion function for SendPaymentCATs()
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t SendPaymentCATs.__allocating_init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  return SendPaymentCATs.init(templateDir:options:globals:)(a1, a2, a3);
}

uint64_t SendPaymentCATs.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a1;
  v16 = a2;
  v13 = a3;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  v20 = 0;
  v17 = type metadata accessor for CATOption();
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v9 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17);
  v11 = &v8 - v9;
  v10 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v18);
  v12 = &v8 - v10;
  v22 = v4;
  v21 = v5;
  v20 = v6;
  v23 = v3;
  outlined init with copy of URL?(v4, &v8 - v10);
  (*(v14 + 16))(v11, v16, v17);
  MEMORY[0x277D82BE0](v13);
  v19 = CATWrapper.init(templateDir:options:globals:)();

  v23 = v19;
  MEMORY[0x277D82BD8](v13);
  (*(v14 + 8))(v16, v17);
  outlined destroy of URL?(v18);

  return v19;
}

NSPersonNameComponents __swiftcall PersonNameComponents._bridgeToObjectiveC()()
{
  v0 = MEMORY[0x28211C760]();
  result._private = v1;
  result.super.isa = v0;
  return result;
}

Swift::String __swiftcall PersonNameComponents.formatted()()
{
  v0 = MEMORY[0x28211C7A0]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall Data.base64EncodedString(options:)(NSDataBase64EncodingOptions options)
{
  v1 = MEMORY[0x28211D318](options);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t static RCHChildFlowFactoryHelper.makeNeedsConfirmationFlowProducer<A>(strategy:)()
{
  return MEMORY[0x2821BA438]();
}

{
  return MEMORY[0x2821BA440]();
}

uint64_t String.init<A>(describing:)()
{
  return MEMORY[0x2821FBCB0]();
}

{
  return MEMORY[0x2821FBCB8]();
}

{
  return MEMORY[0x2821FBCC0]();
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = MEMORY[0x2821FBCC8]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.uppercased()()
{
  v0 = MEMORY[0x2821FBCE0]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String_optional __swiftcall AceObject.serializeToBase64()()
{
  v0 = MEMORY[0x2821BBDE8]();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall Substring.uppercased()()
{
  v0 = MEMORY[0x2821FCAF0]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t _assertionFailure(_:_:file:line:flags:)()
{
  return MEMORY[0x2821FD718]();
}

{
  return MEMORY[0x2821FD720]();
}

uint64_t DefaultStringInterpolation.appendInterpolation<A>(_:)()
{
  return MEMORY[0x2821FDE68]();
}

{
  return MEMORY[0x2821FDE70]();
}