uint64_t _StringGuts.replaceSubrange<A>(_:with:)(Swift::UInt64 a1, Swift::UInt64 a2, unint64_t *a3, ValueMetadata *a4, uint64_t a5)
{
  v307 = a3;
  v308 = a1;
  v305 = a2;
  v8 = *(a5 + 8);
  v9 = type metadata accessor for LazyMapSequence(0, a4, &type metadata for String.UTF8View, v8);
  v292 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v294 = &v284 - v10;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for LazyMapSequence<A, B>, v9, v11);
  v15 = lazy protocol witness table accessor for type String.UTF8View and conformance String.UTF8View(WitnessTable, v13, v14);
  v16 = type metadata accessor for FlattenSequence(0, v9, WitnessTable, v15);
  v290 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v289 = &v284 - v17;
  v293 = type metadata accessor for FlattenSequence.Iterator(0, v9, WitnessTable, v15);
  v286 = *(v293 - 8);
  MEMORY[0x1EEE9AC00](v293);
  v291 = &v284 - v18;
  v299 = a5;
  v318 = a5;
  v19 = swift_getWitnessTable(protocol conformance descriptor for <> LazyMapSequence<A, B>, v9, &v318);
  v22 = lazy protocol witness table accessor for type String.UTF8View and conformance String.UTF8View(v19, v20, v21);
  v297 = v19;
  v295 = v22;
  v298 = type metadata accessor for FlattenSequence<>.Index(0, v9, v19, v22);
  v296 = *(v298 - 8);
  v23 = MEMORY[0x1EEE9AC00](v298);
  v25 = &v284 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = (&v284 - v26);
  v304 = v8;
  v29 = type metadata accessor for LazySequence(0, a4, v8, v28);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = &v284 - v30;
  v33 = swift_getWitnessTable(protocol conformance descriptor for FlattenSequence<A>, v16, v32);
  v302 = v16;
  v35 = type metadata accessor for LazySequence(0, v16, v33, v34);
  v300 = *(v35 - 8);
  v301 = v35;
  v36 = MEMORY[0x1EEE9AC00](v35);
  v288 = &v284 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v303 = &v284 - v39;
  v310 = a4;
  Description = a4[-1].Description;
  v41 = MEMORY[0x1EEE9AC00](v38);
  v287 = &v284 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x1EEE9AC00](v41);
  v45 = &v284 - v44;
  MEMORY[0x1EEE9AC00](v43);
  v47 = (&v284 - v46);
  v49 = *v5;
  v48 = v5[1];
  v309 = v5;
  v311 = v48;
  v306 = v49;
  if ((v49 & ~v48 & 0x2000000000000000) == 0 || !swift_isUniquelyReferenced_nonNull_native(v48 & 0xFFFFFFFFFFFFFFFLL))
  {
    v312 = 0;
    v313 = 0xE000000000000000;
    v62 = _StringGuts.nativeCapacity.getter(v49, v48);
    if ((v63 & 1) == 0)
    {
      String.reserveCapacity(_:)(v62);
    }

    v64._rawBits = v308;
    v66 = specialized Collection.subscript.getter(v64, v49, v48);
    v68 = v67;
    v70 = v69;
    v71 = v65;
    v72 = v66 >> 16;
    v73 = v67 >> 16;
    if ((v65 & 0x1000000000000000) != 0)
    {
      swift_bridgeObjectRetain_n(v65, 3);
      v231._rawBits = v66 & 0xFFFFFFFFFFFF0000 | 1;
      v232._rawBits = v68 & 0xFFFFFFFFFFFF0000 | 1;
      v233._rawBits = _StringGuts.validateScalarRange(_:)(v231, v232, v70, v71)._rawBits;
      if (v233._rawBits < 0x10000)
      {
        v233._rawBits |= 3;
      }

      v74 = String.UTF8View.distance(from:to:)(v233, v234);
      v71;
      v76 = v312;
      v75 = v313;
      if ((v313 & 0x1000000000000000) == 0)
      {
LABEL_16:
        if ((v75 & 0x2000000000000000) != 0)
        {
          goto LABEL_20;
        }

        v77 = (v76 & 0xFFFFFFFFFFFFLL) + v74;
        if (!__OFADD__(v76 & 0xFFFFFFFFFFFFLL, v74))
        {
          goto LABEL_21;
        }

        goto LABEL_19;
      }
    }

    else
    {
      v74 = v73 - v72;
      swift_bridgeObjectRetain_n(v65, 2);
      v76 = v312;
      v75 = v313;
      if ((v313 & 0x1000000000000000) == 0)
      {
        goto LABEL_16;
      }
    }

    v235 = String.UTF8View._foreignCount()();
    v77 = v235 + v74;
    if (!__OFADD__(v235, v74))
    {
      goto LABEL_21;
    }

    do
    {
LABEL_19:
      __break(1u);
LABEL_20:
      v78 = HIBYTE(v75) & 0xF;
      v77 = v78 + v74;
    }

    while (__OFADD__(v78, v74));
LABEL_21:
    if ((v76 & ~v75 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v75 & 0xFFFFFFFFFFFFFFFLL))
    {
      v79 = _StringGuts.nativeUnusedCapacity.getter(v76, v75);
      if (v80)
      {
        goto LABEL_188;
      }

      if (v77 > 15 || (v75 & 0x2000000000000000) == 0 && v79 >= v74)
      {
        goto LABEL_27;
      }
    }

    else if (v77 > 15)
    {
LABEL_27:
      _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v77, v74);
      if ((v71 & 0x1000000000000000) == 0)
      {
        v81 = v307;
        if ((v71 & 0x2000000000000000) != 0)
        {
          v71;
          v316 = v70;
          v317 = v71 & 0xFFFFFFFFFFFFFFLL;
          if ((HIBYTE(v71) & 0xF) < v73 || v73 - v72 < 0)
          {
            goto LABEL_182;
          }

          v71;
          v212 = v313 & 0xFFFFFFFFFFFFFFFLL;
          specialized UnsafeMutablePointer.initialize(from:count:)(&v316 + v72, v73 - v72, ((v313 & 0xFFFFFFFFFFFFFFFLL) + (*((v313 & 0xFFFFFFFFFFFFFFFLL) + 0x18) & 0xFFFFFFFFFFFFLL) + 32));
          __StringStorage._updateCountAndFlags(newCount:newIsASCII:)((*(v212 + 24) & 0xFFFFFFFFFFFFLL) + v73 - v72, (v71 >> 62) & (*(v212 + 24) < 0));
          v312 = *(v212 + 24);
          v87 = v304;
          v88 = v81;
        }

        else
        {
          if ((v70 & 0x1000000000000000) != 0)
          {
            v82 = ((v71 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v83 = v70 & 0xFFFFFFFFFFFFLL;
            if ((v70 & 0xFFFFFFFFFFFFLL) < v73)
            {
              goto LABEL_182;
            }
          }

          else
          {
            v82 = _StringObject.sharedUTF8.getter(v70, v71);
            v83 = v242;
            if (v242 < v73)
            {
              goto LABEL_182;
            }
          }

          v71;
          v84 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v72, v73, v82, v83);
          v85 = v313 & 0xFFFFFFFFFFFFFFFLL;
          __StringStorage.appendInPlace(_:isASCII:)(v84, v86, v70 < 0);
          v312 = *(v85 + 24);
          v71;
          v87 = v304;
          v88 = v81;
        }

LABEL_65:
        v144 = v306;
        v145 = v312 & 0xFFFFFFFFFFFFLL;
        if ((v313 & 0x2000000000000000) != 0)
        {
          v145 = HIBYTE(v313) & 0xF;
        }

        v307 = v145;
        String.append<A>(contentsOf:)(v88, v310, v87);
        v147 = v312;
        v146 = v313;
        if ((v313 & 0x2000000000000000) != 0)
        {
          v148 = HIBYTE(v313) & 0xF;
        }

        else
        {
          v148 = v312 & 0xFFFFFFFFFFFFLL;
        }

        v150 = specialized Collection.subscript.getter(v305, v144, v311);
        v152 = v151;
        v154 = v153;
        v155 = v149;
        v156 = v150 >> 16;
        v157 = v151 >> 16;
        v308 = v148;
        if ((v149 & 0x1000000000000000) != 0)
        {
          swift_bridgeObjectRetain_n(v149, 3);
          v236._rawBits = v150 & 0xFFFFFFFFFFFF0000 | 1;
          v237._rawBits = v152 & 0xFFFFFFFFFFFF0000 | 1;
          v238 = v308;
          v239._rawBits = _StringGuts.validateScalarRange(_:)(v236, v237, v154, v155)._rawBits;
          if (v239._rawBits < 0x10000)
          {
            v239._rawBits |= 3;
          }

          v158 = String.UTF8View.distance(from:to:)(v239, v240);
          v155;
          v159 = v238;
          if ((v146 & 0x1000000000000000) == 0)
          {
LABEL_72:
            v160 = v159 + v158;
            if (!__OFADD__(v159, v158))
            {
LABEL_73:
              if ((v147 & ~v146 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v146 & 0xFFFFFFFFFFFFFFFLL))
              {
                v161 = _StringGuts.nativeUnusedCapacity.getter(v147, v146);
                if (v162)
                {
                  goto LABEL_188;
                }

                v163 = (v146 >> 61) & 1;
                if (v161 < v158)
                {
                  LODWORD(v163) = 1;
                }

                if (v160 <= 15 && v163)
                {
                  goto LABEL_80;
                }
              }

              else if (v160 <= 15)
              {
LABEL_80:
                v155;
                v172 = _StringGuts._convertedToSmall()(v147, v146, v164, v165, v166, v167, v168, v169, v170, v171);
                v174 = v173;
                v155;
                v175._rawBits = v150 & 0xFFFFFFFFFFFF0000 | 1;
                v176._rawBits = v152 & 0xFFFFFFFFFFFF0000 | 1;
                v177._rawBits = _StringGuts.validateScalarRange(_:)(v175, v176, v154, v155)._rawBits;
                if (v177._rawBits < 0x10000)
                {
                  v177._rawBits |= 3;
                }

                v179 = Substring.description.getter(v177._rawBits, v178._rawBits, v154, v155);
                v181 = v180;
                v155;
                v190 = _StringGuts._convertedToSmall()(v179, v181, v182, v183, v184, v185, v186, v187, v188, v189);
                v192 = v191;
                v181;
                v193 = HIBYTE(v174) & 0xF;
                v194 = HIBYTE(v192) & 0xF;
                v195 = v194 + v193;
                if (v194 + v193 <= 0xF)
                {
                  v155;
                  if (v194)
                  {
                    v196 = 0;
                    v197 = 0;
                    v198 = 8 * v193;
                    v199 = 8 * v194;
                    v200 = v309;
                    do
                    {
                      v201 = v192 >> (v196 & 0x38);
                      if (v197 < 8)
                      {
                        v201 = v190 >> v196;
                      }

                      v202 = (v201 << (v198 & 0x38)) | ((-255 << (v198 & 0x38)) - 1) & v174;
                      v203 = (v201 << v198) | ((-255 << v198) - 1) & v172;
                      if (v193 <= 7)
                      {
                        v172 = v203;
                      }

                      else
                      {
                        v174 = v202;
                      }

                      ++v193;
                      v198 += 8;
                      v196 += 8;
                      ++v197;
                    }

                    while (v199 != v196);
                  }

                  else
                  {
                    v200 = v309;
                  }

                  v311;
                  v146;
                  v209 = 0xA000000000000000;
                  if (!(v172 & 0x8080808080808080 | v174 & 0x80808080808080))
                  {
                    v209 = 0xE000000000000000;
                  }

                  v312 = v172;
                  v313 = v209 & 0xFF00000000000000 | (v195 << 56) | v174 & 0xFFFFFFFFFFFFFFLL;
                  goto LABEL_103;
                }

LABEL_188:
                _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
              }

              _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v160, v158);
              if ((v155 & 0x1000000000000000) == 0)
              {
                v200 = v309;
                v58 = v307;
                if ((v155 & 0x2000000000000000) != 0)
                {
                  v155;
                  v316 = v154;
                  v317 = v155 & 0xFFFFFFFFFFFFFFLL;
                  if ((HIBYTE(v155) & 0xF) < v157 || v157 - v156 < 0)
                  {
                    goto LABEL_182;
                  }

                  v155;
                  v213 = v313 & 0xFFFFFFFFFFFFFFFLL;
                  specialized UnsafeMutablePointer.initialize(from:count:)(&v316 + v156, v157 - v156, ((v313 & 0xFFFFFFFFFFFFFFFLL) + (*((v313 & 0xFFFFFFFFFFFFFFFLL) + 0x18) & 0xFFFFFFFFFFFFLL) + 32));
                  __StringStorage._updateCountAndFlags(newCount:newIsASCII:)((*(v213 + 24) & 0xFFFFFFFFFFFFLL) + v157 - v156, (v155 >> 62) & (*(v213 + 24) < 0));
                  v312 = *(v213 + 24);
                  v311;
                }

                else
                {
                  if ((v154 & 0x1000000000000000) != 0)
                  {
                    v204 = ((v155 & 0xFFFFFFFFFFFFFFFLL) + 32);
                    v205 = v154 & 0xFFFFFFFFFFFFLL;
                    if ((v154 & 0xFFFFFFFFFFFFLL) < v157)
                    {
                      goto LABEL_182;
                    }
                  }

                  else
                  {
                    v204 = _StringObject.sharedUTF8.getter(v154, v155);
                    v205 = v243;
                    if (v243 < v157)
                    {
                      goto LABEL_182;
                    }
                  }

                  v155;
                  v206 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v156, v157, v204, v205);
                  v207 = v313 & 0xFFFFFFFFFFFFFFFLL;
                  __StringStorage.appendInPlace(_:isASCII:)(v206, v208, v154 < 0);
                  v312 = *(v207 + 24);
                  v311;
                  v155;
                }

LABEL_104:
                v210 = v313;
                *v200 = v312;
                v200[1] = v210;
                return v58;
              }

              v155;
              _StringGuts._foreignAppendInPlace(_:)(v154, v155, v156, v157);
              v311;
              v155;
              v200 = v309;
LABEL_103:
              v58 = v307;
              goto LABEL_104;
            }

LABEL_139:
            __break(1u);
            goto LABEL_182;
          }
        }

        else
        {
          v158 = v157 - v156;
          swift_bridgeObjectRetain_n(v149, 2);
          v159 = v148;
          if ((v146 & 0x1000000000000000) == 0)
          {
            goto LABEL_72;
          }
        }

        v241 = String.UTF8View._foreignCount()();
        v160 = v241 + v158;
        if (!__OFADD__(v241, v158))
        {
          goto LABEL_73;
        }

        goto LABEL_139;
      }

      v71;
      _StringGuts._foreignAppendInPlace(_:)(v70, v71, v72, v73);
      v71;
      v87 = v304;
LABEL_64:
      v88 = v307;
      goto LABEL_65;
    }

    v71;
    v97 = _StringGuts._convertedToSmall()(v76, v75, v89, v90, v91, v92, v93, v94, v95, v96);
    v99 = v98;
    v71;
    v100._rawBits = v66 & 0xFFFFFFFFFFFF0000 | 1;
    v101._rawBits = v68 & 0xFFFFFFFFFFFF0000 | 1;
    v102._rawBits = _StringGuts.validateScalarRange(_:)(v100, v101, v70, v71)._rawBits;
    if (v102._rawBits < 0x10000)
    {
      v102._rawBits |= 3;
    }

    v104 = Substring.description.getter(v102._rawBits, v103._rawBits, v70, v71);
    v106 = v105;
    v71;
    v115 = _StringGuts._convertedToSmall()(v104, v106, v107, v108, v109, v110, v111, v112, v113, v114);
    v117 = v116;
    v106;
    v118 = HIBYTE(v99) & 0xF;
    v119 = HIBYTE(v117) & 0xF;
    v120 = v119 + v118;
    if (v119 + v118 > 0xF)
    {
      goto LABEL_188;
    }

    v71;
    if (v119)
    {
      v121 = 0;
      v122 = 0;
      v123 = 8 * v118;
      v87 = v304;
      do
      {
        v124 = v117 >> (v121 & 0x38);
        if (v122 < 8)
        {
          v124 = v115 >> v121;
        }

        v125 = (v124 << (v123 & 0x38)) | ((-255 << (v123 & 0x38)) - 1) & v99;
        v126 = (v124 << v123) | ((-255 << v123) - 1) & v97;
        if (v118 <= 7)
        {
          v97 = v126;
        }

        else
        {
          v99 = v125;
        }

        ++v118;
        v123 += 8;
        v121 += 8;
        ++v122;
      }

      while (8 * v119 != v121);
    }

    else
    {
      v87 = v304;
    }

    v75;
    v143 = 0xA000000000000000;
    if (!(v97 & 0x8080808080808080 | v99 & 0x80808080808080))
    {
      v143 = 0xE000000000000000;
    }

    v312 = v97;
    v313 = v143 & 0xFF00000000000000 | (v120 << 56) | v99 & 0xFFFFFFFFFFFFFFLL;
    goto LABEL_64;
  }

  v285 = Description;
  v50 = Description[2];
  v51 = v307;
  v52 = v310;
  (v50)(v47, v307, v310);
  v53 = swift_dynamicCast(&v312, v47, v52, &type metadata for String, 6uLL);
  v284 = v50;
  if (!v53)
  {
    (v50)(v45, v51, v52);
    v127 = swift_dynamicCast(&v312, v45, v52, &type metadata for Substring, 6uLL);
    v54 = v302;
    if ((v127 & 1) == 0)
    {
      goto LABEL_147;
    }

    v128 = v315;
    if ((v315 & 0x1000000000000000) != 0)
    {
      v315;
      goto LABEL_147;
    }

    v129 = v314;
    v130 = v312 >> 16;
    v131 = v313 >> 16;
    if ((v315 & 0x2000000000000000) != 0)
    {
      v312 = v314;
      v313 = v315 & 0xFFFFFFFFFFFFFFLL;
      v221 = v309;
      if ((HIBYTE(v315) & 0xF) >= v131)
      {
        v222 = v131 - v130;
        if (v131 - v130 >= 0)
        {
          v223 = v315;
          v224 = v308 >> 16;
          v225 = v305 >> 16;
          v226 = v306 & 0xFFFFFFFFFFFFLL;
          if ((v311 & 0x2000000000000000) != 0)
          {
            v226 = HIBYTE(v311) & 0xF;
          }

          v227 = v222 + (v308 >> 16) + v226 - v225;
          if (v227 >= 16)
          {
            v228 = _StringGuts.uniqueNativeCapacity.getter();
            if ((v229 & 1) != 0 || v228 < v227)
            {
              _StringGuts.grow(_:)(v227);
            }
          }

          v230 = v221[1] & 0xFFFFFFFFFFFFFFFLL;
          __StringStorage.replace(from:to:with:)(v224, v225, &v312 + v130, v222);
          v223;
          *v221 = *(v230 + 24);
          return v224;
        }
      }
    }

    else
    {
      v27 = v309;
      v132 = v306;
      if ((v314 & 0x1000000000000000) == 0)
      {
        goto LABEL_181;
      }

      v54 = v315;
      v133 = ((v315 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v134 = v314 & 0xFFFFFFFFFFFFLL;
      if ((v314 & 0xFFFFFFFFFFFFLL) >= v131)
      {
        goto LABEL_51;
      }
    }

LABEL_182:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v54 = v313;
  if ((v313 & 0x1000000000000000) == 0)
  {
    v55 = v312;
    if ((v313 & 0x2000000000000000) != 0)
    {
      v313 &= 0xFFFFFFFFFFFFFFuLL;
      v214 = v309;
      v58 = v308 >> 16;
      v215 = v305 >> 16;
      v216 = v306 & 0xFFFFFFFFFFFFLL;
      if ((v311 & 0x2000000000000000) != 0)
      {
        v216 = HIBYTE(v311) & 0xF;
      }

      v217 = (HIBYTE(v54) & 0xF) + (v308 >> 16) + v216 - v215;
      if (v217 > 15)
      {
        v218 = _StringGuts.uniqueNativeCapacity.getter();
        if ((v219 & 1) != 0 || v218 < v217)
        {
          _StringGuts.grow(_:)(v217);
        }
      }

      v220 = v214[1] & 0xFFFFFFFFFFFFFFFLL;
      __StringStorage.replace(from:to:with:)(v58, v215, &v312, HIBYTE(v54) & 0xF);
      v54;
      *v214 = *(v220 + 24);
      return v58;
    }

    v27 = v309;
    v50 = v306;
    if ((v312 & 0x1000000000000000) != 0)
    {
      v56 = ((v313 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v57 = v312 & 0xFFFFFFFFFFFFLL;
      goto LABEL_8;
    }

LABEL_179:
    v56 = _StringObject.sharedUTF8.getter(v55, v54);
    v57 = v281;
LABEL_8:
    v58 = v308 >> 16;
    v59 = v305 >> 16;
    v60 = v50 & 0xFFFFFFFFFFFFLL;
    if ((v311 & 0x2000000000000000) != 0)
    {
      v60 = HIBYTE(v311) & 0xF;
    }

    v61 = v57 + (v308 >> 16) + v60 - v59;
    if (v61 >= 16)
    {
      goto LABEL_56;
    }

    goto LABEL_59;
  }

  v313;
  v51 = v307;
  v54 = v302;
LABEL_147:
  v244 = v299;
  v284(v31, v51, v52);
  v245 = v285[4];
  v246 = v303;
  v285 += 4;
  v245(v303, v31, v52);
  v247 = &v246[*(v9 + 44)];
  *v247 = closure #3 in _StringGuts.replaceSubrange<A>(_:with:);
  *(v247 + 1) = 0;
  v248 = v297;
  v249 = v295;
  FlattenSequence<>.startIndex.getter(v54, v297, v295, v27);
  (*(v244 + 72))(v52, v244);
  v250 = v298;
  v251 = &v25[*(v298 + 44)];
  *v251 = 0;
  v251[8] = 1;
  v45 = FlattenSequence<>.distance(from:to:)(v27, v25, v54, v248, v249);
  v50 = *(v296 + 8);
  (v50)(v25, v250);
  v55 = (v50)(v27, v250);
  v130 = v308 >> 16;
  v252 = (v308 >> 16) + v45;
  if (__OFADD__(v308 >> 16, v45))
  {
    __break(1u);
LABEL_178:
    __break(1u);
    goto LABEL_179;
  }

  v27 = (v305 >> 16);
  v253 = v306 & 0xFFFFFFFFFFFFLL;
  if ((v311 & 0x2000000000000000) != 0)
  {
    v253 = HIBYTE(v311) & 0xF;
  }

  v254 = v253 - v27;
  v308 = (v308 >> 16) + v45;
  v255 = v252 + v254;
  v50 = v309;
  if (__OFADD__(v252, v254))
  {
    goto LABEL_178;
  }

  v25 = v245;
  if (v255 >= 16)
  {
    v256 = _StringGuts.uniqueNativeCapacity.getter();
    if ((v257 & 1) != 0 || v256 < v255)
    {
      v258 = _StringGuts.uniqueNativeCapacity.getter();
      if (v259)
      {
        v260 = *(v50 + 8);
        if ((v260 & 0x1000000000000000) != 0)
        {
          v261 = String.UTF8View._foreignCount()();
        }

        else if ((v260 & 0x2000000000000000) != 0)
        {
          v261 = HIBYTE(v260) & 0xF;
        }

        else
        {
          v261 = *v50 & 0xFFFFFFFFFFFFLL;
        }
      }

      else
      {
        v261 = 2 * v258;
      }

      if (v261 <= v255)
      {
        v137 = v255;
      }

      else
      {
        v137 = v261;
      }

      v262 = *(v50 + 8);
      if ((v262 & 0x1000000000000000) != 0)
      {
        goto LABEL_185;
      }

      v263 = *v50;
      if ((v262 & 0x2000000000000000) != 0)
      {
        v266 = (v262 >> 62) & 1;
        v265 = HIBYTE(v262) & 0xF;
        v312 = *v50;
        v313 = v262 & 0xFFFFFFFFFFFFFFLL;
        v264 = &v312;
      }

      else
      {
        if ((v263 & 0x1000000000000000) != 0)
        {
          v264 = ((v262 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v265 = v263 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v283 = v137;
          v264 = _StringObject.sharedUTF8.getter(*v50, *(v50 + 8));
          v137 = v283;
        }

        v266 = v263 >> 63;
      }

      v267 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(v264, v265, v137, v266);
      v268 = *(v267 + 24);
      v262;
      *v50 = v268;
      *(v50 + 8) = v267;
    }
  }

  while (1)
  {
    v269 = *(v50 + 8) & 0xFFFFFFFFFFFFFFFLL;
    v307 = v130;
    v270 = v269 + 32 + v130;
    v132 = (*(v269 + 24) & 0xFFFFFFFFFFFFLL) - v27;
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v27 + v269 + 32, v132, (v270 + v45));
    v45 = *(v269 + 24) >> 63;
    v271 = v288;
    (*(v300 + 16))(v288, v303, v301);
    v272 = v289;
    (*(v290 + 32))(v289, v271, v54);
    v273 = v294;
    (*(v292 + 32))(v294, v272, v9);
    v274 = v310;
    (v25)(v287, v273, v310);
    v275 = v304;
    v25 = v291;
    (*(v304 + 32))(v274, v304);
    v276 = *(v9 + 44);
    v277 = type metadata accessor for LazyMapSequence.Iterator(0, v274, &type metadata for String.UTF8View, v275);
    v27 = 0;
    *&v25[*(v277 + 44)] = *&v273[v276];
    v130 = v293;
    v278 = &v25[*(v293 + 44)];
    *(v278 + 1) = 0;
    *(v278 + 2) = 0;
    *v278 = 0;
    v279 = v308;
    while (1)
    {
      FlattenSequence.Iterator.next()(v130, &v312);
      if ((v312 & 0x100) != 0)
      {
        break;
      }

      v45 = ((v312 & 0x80u) == 0) & v45;
      *(v27 + v270) = v312;
      v280 = __OFADD__(v27, 1);
      v27 = (v27 + 1);
      if (v280)
      {
        __break(1u);
        break;
      }
    }

    (*(v286 + 8))(v25, v130);
    v129 = v279 + v132;
    if (!__OFADD__(v279, v132))
    {
      __StringStorage._updateCountAndFlags(newCount:newIsASCII:)(v129, v45 & 1);
      (*(v300 + 8))(v303, v301);
      *v309 = *(v269 + 24);
      return v307;
    }

    __break(1u);
LABEL_181:
    v50 = v131;
    v54 = v128;
    v133 = _StringObject.sharedUTF8.getter(v129, v128);
    v134 = v282;
    v131 = v50;
    if (v134 < v50)
    {
      goto LABEL_182;
    }

LABEL_51:
    v135 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v130, v131, v133, v134);
    v58 = v308 >> 16;
    v9 = (v308 >> 16) + v136;
    if (!__OFADD__(v308 >> 16, v136))
    {
      break;
    }

    __break(1u);
LABEL_184:
    __break(1u);
LABEL_185:
    _StringGuts._foreignGrow(_:)(v137);
  }

  v59 = v305 >> 16;
  v138 = v132 & 0xFFFFFFFFFFFFLL;
  if ((v311 & 0x2000000000000000) != 0)
  {
    v138 = HIBYTE(v311) & 0xF;
  }

  v139 = v138 - v59;
  v61 = v9 + v139;
  if (__OFADD__(v9, v139))
  {
    goto LABEL_184;
  }

  v56 = v135;
  v57 = v136;
  if (v61 < 16)
  {
    goto LABEL_59;
  }

LABEL_56:
  v140 = _StringGuts.uniqueNativeCapacity.getter();
  if ((v141 & 1) != 0 || v140 < v61)
  {
    _StringGuts.grow(_:)(v61);
  }

LABEL_59:
  v142 = v27[1] & 0xFFFFFFFFFFFFFFFLL;
  __StringStorage.replace(from:to:with:)(v58, v59, v56, v57);
  *v27 = *(v142 + 24);
  v54;
  return v58;
}

unint64_t closure #3 in _StringGuts.replaceSubrange<A>(_:with:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
  return v3;
}

uint64_t specialized _StringGuts.uniqueNativeReplaceSubrange<A>(_:with:)(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void *__return_ptr, int *), atomic_ullong *a6)
{
  v8 = v6;
  v10 = a5;
  v15 = specialized Collection.count.getter(a3, a4, a5);
  v17 = a1 >> 16;
  v18 = (a1 >> 16) + v15;
  if (__OFADD__(a1 >> 16, v15))
  {
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v44 = v10;
  v10 = a2 >> 16;
  v19 = v8[1];
  if ((v19 & 0x2000000000000000) != 0)
  {
    v20 = HIBYTE(v19) & 0xF;
  }

  else
  {
    v20 = *v8 & 0xFFFFFFFFFFFFLL;
  }

  v21 = v20 - v10;
  v22 = v18 + v21;
  if (__OFADD__(v18, v21))
  {
    goto LABEL_31;
  }

  v7 = v15;
  if (v22 < 16)
  {
    goto LABEL_29;
  }

  v23 = _StringGuts.uniqueNativeCapacity.getter();
  if ((v24 & 1) == 0 && v23 >= v22)
  {
    goto LABEL_29;
  }

  v25 = _StringGuts.uniqueNativeCapacity.getter();
  if (v26)
  {
    v27 = v8[1];
    if ((v27 & 0x1000000000000000) != 0)
    {
      v28 = String.UTF8View._foreignCount()();
    }

    else if ((v27 & 0x2000000000000000) != 0)
    {
      v28 = HIBYTE(v27) & 0xF;
    }

    else
    {
      v28 = *v8 & 0xFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v28 = 2 * v25;
  }

  if (v28 <= v22)
  {
    v16 = v22;
  }

  else
  {
    v16 = v28;
  }

  v29 = v8[1];
  if ((v29 & 0x1000000000000000) != 0)
  {
LABEL_32:
    _StringGuts._foreignGrow(_:)(v16);
    goto LABEL_29;
  }

  v30 = *v8;
  v43 = a6;
  if ((v29 & 0x2000000000000000) != 0)
  {
    __src[0] = *v8;
    __src[1] = v29 & 0xFFFFFFFFFFFFFFLL;
    v34 = HIBYTE(v29) & 0xF | 0xC000000000000000;
    if ((v29 & 0x4000000000000000) == 0)
    {
      v34 = HIBYTE(v29) & 0xF;
    }

    v35 = v34 | 0x3000000000000000;
    v36 = _allocateStringStorage(codeUnitCapacity:)(v16);
    v37 = v35;
    v33 = v36;
    *(v36 + 16) = v38;
    *(v36 + 24) = v37;
    if (v38 < 0)
    {
      *__StringStorage._breadcrumbsAddress.getter() = 0;
      v37 = *(v33 + 24);
    }

    *(v33 + 32 + (v37 & 0xFFFFFFFFFFFFLL)) = 0;
    specialized UnsafeMutablePointer.initialize(from:count:)(__src, HIBYTE(v29) & 0xF, (v33 + 32));
  }

  else
  {
    if ((v30 & 0x1000000000000000) != 0)
    {
      v31 = ((v29 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v32 = v30 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v42 = v16;
      v31 = _StringObject.sharedUTF8.getter(v30, v29);
      v16 = v42;
    }

    v33 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(v31, v32, v16, v30 < 0);
  }

  v39 = *(v33 + 24);
  v29;
  *v8 = v39;
  v8[1] = v33;
  a6 = v43;
LABEL_29:
  v40 = v8[1] & 0xFFFFFFFFFFFFFFFLL;
  specialized __StringStorage.replace<A>(from:to:with:replacementCount:)(v17, v10, a3, a4, v44, a6, v7);
  *v8 = *(v40 + 24);
  return v17;
}

void (*specialized _StringGuts.uniqueNativeReplaceSubrange<A>(_:with:)(unint64_t a1, unint64_t p_src, uint64_t a3, unint64_t a4, void (*a5)(uint64_t *__return_ptr, void *), atomic_ullong *a6))(uint64_t *__return_ptr, void *)
{
  v7 = v6;
  v9 = a5;
  v14._rawBits = specialized FlattenSequence<>.startIndex.getter(a3, a4, a5);
  if ((a4 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v17 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v18 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v18 = 11;
  }

  v19 = specialized FlattenSequence<>.distance(from:to:)(v14, v15, v16 & 1, v18 | (v17 << 16), 0, 1, a3, a4, v9);
  v20 = a1 >> 16;
  v21 = (a1 >> 16) + v19;
  if (__OFADD__(a1 >> 16, v19))
  {
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  a1 = p_src >> 16;
  v22 = *(v7 + 8);
  if ((v22 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v22) & 0xF;
  }

  else
  {
    v23 = *v7 & 0xFFFFFFFFFFFFLL;
  }

  v24 = v23 - a1;
  v47 = v21;
  v25 = v21 + v24;
  if (__OFADD__(v21, v24))
  {
    goto LABEL_43;
  }

  v26 = v19;
  v48 = v17;
  v49 = v9;
  if (v25 < 16)
  {
    goto LABEL_35;
  }

  v9 = v19;
  v27 = _StringGuts.uniqueNativeCapacity.getter();
  if ((v28 & 1) == 0)
  {
    v26 = v9;
    if (v27 >= v25)
    {
      goto LABEL_35;
    }
  }

  v29 = _StringGuts.uniqueNativeCapacity.getter();
  if (v30)
  {
    v31 = *(v7 + 8);
    if ((v31 & 0x1000000000000000) != 0)
    {
      v32 = String.UTF8View._foreignCount()();
    }

    else if ((v31 & 0x2000000000000000) != 0)
    {
      v32 = HIBYTE(v31) & 0xF;
    }

    else
    {
      v32 = *v7 & 0xFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v32 = 2 * v29;
  }

  if (v32 <= v25)
  {
    p_src = v25;
  }

  else
  {
    p_src = v32;
  }

  v33 = *(v7 + 8);
  if ((v33 & 0x1000000000000000) != 0)
  {
    goto LABEL_45;
  }

  v34 = *v7;
  if ((v33 & 0x2000000000000000) != 0)
  {
    *&__src = *v7;
    *(&__src + 1) = v33 & 0xFFFFFFFFFFFFFFLL;
    v38 = HIBYTE(v33) & 0xF | 0xC000000000000000;
    if ((v33 & 0x4000000000000000) == 0)
    {
      v38 = HIBYTE(v33) & 0xF;
    }

    v39 = v38 | 0x3000000000000000;
    v37 = _allocateStringStorage(codeUnitCapacity:)(p_src);
    *(v37 + 16) = v40;
    *(v37 + 24) = v39;
    if (v40 < 0)
    {
      *__StringStorage._breadcrumbsAddress.getter() = 0;
      v39 = *(v37 + 24);
    }

    *(v37 + 32 + (v39 & 0xFFFFFFFFFFFFLL)) = 0;
    specialized UnsafeMutablePointer.initialize(from:count:)(&__src, HIBYTE(v33) & 0xF, (v37 + 32));
  }

  else
  {
    if ((v34 & 0x1000000000000000) != 0)
    {
      v35 = ((v33 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v36 = v34 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v35 = _StringObject.sharedUTF8.getter(*v7, *(v7 + 8));
    }

    v37 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(v35, v36, p_src, v34 < 0);
  }

  v41 = *(v37 + 24);
  v33;
  *v7 = v41;
  *(v7 + 8) = v37;
  while (1)
  {
    v26 = v9;
LABEL_35:
    v42 = *(v7 + 8) & 0xFFFFFFFFFFFFFFFLL;
    v9 = v20;
    v20 += v42 + 32;
    v43 = (*(v42 + 0x18) & 0xFFFFFFFFFFFFLL) - a1;
    specialized UnsafeMutablePointer.moveInitialize(from:count:)((v42 + 32 + a1), v43, &v26[v20]);
    a1 = *(v42 + 24) >> 63;
    *&__src = a3;
    *(&__src + 1) = a4;
    *&v53 = 0;
    *(&v53 + 1) = v48;
    *&v54 = v49;
    *(&v54 + 1) = a6;
    v56 = 0;
    v55 = 0uLL;
    a4;
    a6;
    a6 = 0;
    while (1)
    {
      p_src = &__src;
      v44 = specialized FlattenSequence.Iterator.next()();
      if ((v44 & 0x100) != 0)
      {
        break;
      }

      a1 = ((v44 & 0x80u) == 0) & a1;
      *(a6 + v20) = v44;
      v45 = __OFADD__(a6, 1);
      a6 = (a6 + 1);
      if (v45)
      {
        __break(1u);
        break;
      }
    }

    v50[2] = v54;
    v50[3] = v55;
    v51 = v56;
    v50[0] = __src;
    v50[1] = v53;
    outlined destroy of _HasContiguousBytes?(v50, &_ss15FlattenSequenceV8IteratorVys07LazyMapB0VyS2S8UTF8ViewVG_GMd, _ss15FlattenSequenceV8IteratorVys07LazyMapB0VyS2S8UTF8ViewVG_GMR);
    if (!__OFADD__(v47, v43))
    {
      break;
    }

LABEL_44:
    __break(1u);
LABEL_45:
    _StringGuts._foreignGrow(_:)(p_src);
  }

  __StringStorage._updateCountAndFlags(newCount:newIsASCII:)(v47 + v43, a1 & 1);
  *v7 = *(v42 + 24);
  return v9;
}

unint64_t specialized _StringGuts.uniqueNativeReplaceSubrange<A>(_:with:)(unint64_t a1, unint64_t a2, int a3, void (*a4)(uint64_t *__return_ptr, int *), unint64_t a5)
{
  v8 = v5;
  v10 = a4;
  v11 = a3;
  LODWORD(v48) = a3;
  a4(__src, &v48);
  v46 = a5;
  v14 = specialized FlattenSequence<>.distance(from:to:)(0, 0, 0, 1, 0, 1, v11, v10);
  v45 = a1 >> 16;
  v15 = (a1 >> 16) + v14;
  if (__OFADD__(a1 >> 16, v14))
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v6 = a2 >> 16;
  v16 = *(v8 + 8);
  if ((v16 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(v16) & 0xF;
  }

  else
  {
    v17 = *v8 & 0xFFFFFFFFFFFFLL;
  }

  v18 = v17 - v6;
  v19 = v15 + v18;
  if (__OFADD__(v15, v18))
  {
    goto LABEL_50;
  }

  v7 = v14;
  if (v19 >= 16)
  {
    v20 = _StringGuts.uniqueNativeCapacity.getter();
    if ((v21 & 1) != 0 || v20 < v19)
    {
      v22 = _StringGuts.uniqueNativeCapacity.getter();
      if (v23)
      {
        v24 = *(v8 + 8);
        if ((v24 & 0x1000000000000000) != 0)
        {
          v25 = String.UTF8View._foreignCount()();
        }

        else if ((v24 & 0x2000000000000000) != 0)
        {
          v25 = HIBYTE(v24) & 0xF;
        }

        else
        {
          v25 = *v8 & 0xFFFFFFFFFFFFLL;
        }
      }

      else
      {
        v25 = 2 * v22;
      }

      if (v25 <= v19)
      {
        a5 = v19;
      }

      else
      {
        a5 = v25;
      }

      v26 = *(v8 + 8);
      if ((v26 & 0x1000000000000000) != 0)
      {
        goto LABEL_52;
      }

      v27 = *v8;
      if ((v26 & 0x2000000000000000) != 0)
      {
        __src[0] = *v8;
        __src[1] = v26 & 0xFFFFFFFFFFFFFFLL;
        v31 = HIBYTE(v26) & 0xF | 0xC000000000000000;
        if ((v26 & 0x4000000000000000) == 0)
        {
          v31 = HIBYTE(v26) & 0xF;
        }

        v32 = v31 | 0x3000000000000000;
        v30 = _allocateStringStorage(codeUnitCapacity:)(a5);
        *(v30 + 16) = v33;
        *(v30 + 24) = v32;
        if (v33 < 0)
        {
          *__StringStorage._breadcrumbsAddress.getter() = 0;
          v32 = *(v30 + 24);
        }

        *(v30 + 32 + (v32 & 0xFFFFFFFFFFFFLL)) = 0;
        specialized UnsafeMutablePointer.initialize(from:count:)(__src, HIBYTE(v26) & 0xF, (v30 + 32));
      }

      else
      {
        if ((v27 & 0x1000000000000000) != 0)
        {
          v28 = ((v26 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v29 = v27 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v28 = _StringObject.sharedUTF8.getter(*v8, *(v8 + 8));
        }

        v30 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(v28, v29, a5, v27 < 0);
      }

      v34 = *(v30 + 24);
      v26;
      *v8 = v34;
      *(v8 + 8) = v30;
    }
  }

  while (2)
  {
    v44 = v15;
    v35 = *(v8 + 8) & 0xFFFFFFFFFFFFFFFLL;
    v36 = (v35 + 32 + v45);
    v37 = (*(v35 + 0x18) & 0xFFFFFFFFFFFFLL) - v6;
    specialized UnsafeMutablePointer.moveInitialize(from:count:)((v35 + 32 + v6), v37, &v36[v7]);
    v38 = *(v35 + 24);
    v46;
    LODWORD(__src[0]) = v11;
    v10(&v48, __src);
    a5 = v48;
    v10 = Unicode.Scalar.UTF8View.subscript.getter(0, v48);
    v11 = v10;
    v39 = specialized RandomAccessCollection<>.index(after:)(0, a5);
    v6 = v10 >= 0 && v38 < 0;
    *v36 = v10;
    v7 = v45 + 33;
    v41 = 1;
    while (1)
    {
      if (a5 < 0x80)
      {
        if (v39 == 1)
        {
          break;
        }

        goto LABEL_37;
      }

      if (a5 < 0x800)
      {
        if (v39 == 2)
        {
          break;
        }

        goto LABEL_37;
      }

      if (a5 < 0x10000)
      {
        if (v39 == 3)
        {
          break;
        }

        goto LABEL_37;
      }

      if (v39 == 4)
      {
        break;
      }

LABEL_37:
      v10 = v39;
      v11 = Unicode.Scalar.UTF8View.subscript.getter(v39, a5);
      v15 = v11;
      v39 = specialized RandomAccessCollection<>.index(after:)(v10, a5);
      v6 = ((v15 & 0x80000000) == 0) & v6;
      *(v35 + v7++) = v11;
      if (__OFADD__(v41++, 1))
      {
        __break(1u);
        goto LABEL_49;
      }
    }

    v46;
    v15 = v44;
    if (__OFADD__(v44, v37))
    {
LABEL_51:
      __break(1u);
LABEL_52:
      _StringGuts._foreignGrow(_:)(a5);
      continue;
    }

    break;
  }

  __StringStorage._updateCountAndFlags(newCount:newIsASCII:)(v44 + v37, v6 & 1);
  *v8 = *(v35 + 24);
  return v45;
}

unint64_t _StringGuts.uniqueNativeReplaceSubrange<A>(_:with:)(unint64_t a1, unint64_t a2, int64_t a3, const char *a4, unint64_t a5)
{
  v6 = v5;
  v8 = a4;
  v53 = *(a4 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v52 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 8);
  swift_getAssociatedTypeWitness(0, v14, v8, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v16 = v15;
  v51 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v48 - v17;
  v19 = *(a5 + 112);
  v54 = a3;
  v20 = v19(v8, a5);
  v21 = a1 >> 16;
  v22 = (a1 >> 16) + v20;
  if (__OFADD__(a1 >> 16, v20))
  {
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  a5 = a2 >> 16;
  v23 = *(v6 + 8);
  if ((v23 & 0x2000000000000000) != 0)
  {
    v24 = HIBYTE(v23) & 0xF;
  }

  else
  {
    v24 = *v6 & 0xFFFFFFFFFFFFLL;
  }

  v25 = v24 - a5;
  v26 = v22 + v25;
  if (__OFADD__(v22, v25))
  {
    goto LABEL_38;
  }

  v27 = v20;
  v50 = (a1 >> 16) + v20;
  v55 = a1 >> 16;
  if (v26 < 16)
  {
    goto LABEL_30;
  }

  v49 = v20;
  v28 = _StringGuts.uniqueNativeCapacity.getter();
  v27 = v49;
  if ((v29 & 1) == 0 && v28 >= v26)
  {
    goto LABEL_30;
  }

  v30 = _StringGuts.uniqueNativeCapacity.getter();
  if (v31)
  {
    v32 = *(v6 + 8);
    if ((v32 & 0x1000000000000000) != 0)
    {
      v33 = String.UTF8View._foreignCount()();
    }

    else if ((v32 & 0x2000000000000000) != 0)
    {
      v33 = HIBYTE(v32) & 0xF;
    }

    else
    {
      v33 = *v6 & 0xFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v33 = 2 * v30;
  }

  if (v33 <= v26)
  {
    a3 = v26;
  }

  else
  {
    a3 = v33;
  }

  v34 = *(v6 + 8);
  if ((v34 & 0x1000000000000000) != 0)
  {
    goto LABEL_40;
  }

  v35 = *v6;
  if ((v34 & 0x2000000000000000) != 0)
  {
    __src[0] = *v6;
    __src[1] = v34 & 0xFFFFFFFFFFFFFFLL;
    v39 = HIBYTE(v34) & 0xF | 0xC000000000000000;
    if ((v34 & 0x4000000000000000) == 0)
    {
      v39 = HIBYTE(v34) & 0xF;
    }

    v40 = v39 | 0x3000000000000000;
    v38 = _allocateStringStorage(codeUnitCapacity:)(a3);
    *(v38 + 16) = v41;
    *(v38 + 24) = v40;
    if (v41 < 0)
    {
      *__StringStorage._breadcrumbsAddress.getter() = 0;
      v40 = *(v38 + 24);
    }

    *(v38 + 32 + (v40 & 0xFFFFFFFFFFFFLL)) = 0;
    specialized UnsafeMutablePointer.initialize(from:count:)(__src, HIBYTE(v34) & 0xF, (v38 + 32));
  }

  else
  {
    if ((v35 & 0x1000000000000000) != 0)
    {
      v36 = ((v34 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v37 = v35 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v36 = _StringObject.sharedUTF8.getter(*v6, *(v6 + 8));
    }

    v38 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(v36, v37, a3, v35 < 0);
  }

  v42 = *(v38 + 24);
  v34;
  *v6 = v42;
  *(v6 + 8) = v38;
  v21 = v55;
  while (1)
  {
    v27 = v49;
LABEL_30:
    v48 = v6;
    v43 = *(v6 + 8) & 0xFFFFFFFFFFFFFFFLL;
    v6 = v43 + 32 + v21;
    v49 = (*(v43 + 24) & 0xFFFFFFFFFFFFLL) - a5;
    specialized UnsafeMutablePointer.moveInitialize(from:count:)((v43 + 32 + a5), v49, (v6 + v27));
    a5 = *(v43 + 24) >> 63;
    (*(v53 + 16))(v52, v54, v8);
    (*(v14 + 32))(v8, v14);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v14, v8, v16, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
    v14 = 0;
    v8 = (AssociatedConformanceWitness + 16);
    v45 = *(AssociatedConformanceWitness + 16);
    while (1)
    {
      a3 = v18;
      v45(__src, v16, AssociatedConformanceWitness);
      if ((__src[0] & 0x100) != 0)
      {
        break;
      }

      a5 = (SLOBYTE(__src[0]) >= 0) & a5;
      *(v6 + v14) = __src[0];
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        break;
      }
    }

    (*(v51 + 8))(v18, v16);
    v21 = v50;
    if (!__OFADD__(v50, v49))
    {
      break;
    }

LABEL_39:
    __break(1u);
LABEL_40:
    _StringGuts._foreignGrow(_:)(a3);
  }

  __StringStorage._updateCountAndFlags(newCount:newIsASCII:)(v50 + v49, a5 & 1);
  *v48 = *(v43 + 24);
  return v55;
}

void String.append(contentsOf:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, int8x16_t a12)
{
  v16 = a1 >> 16;
  v17 = a2 >> 16;
  if ((a4 & 0x1000000000000000) == 0)
  {
    v18 = a3;
    v19 = v17 - v16;
    v21 = *v12;
    v20 = v12[1];
    if ((v20 & 0x1000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_47:
    v73 = String.UTF8View._foreignCount()();
    v23 = v73 + v19;
    if (!__OFADD__(v73, v19))
    {
      goto LABEL_7;
    }

LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v65._rawBits = a1 & 0xFFFFFFFFFFFF0000 | 1;
  v66._rawBits = a2 & 0xFFFFFFFFFFFF0000 | 1;
  v68._rawBits = _StringGuts.validateScalarRange(_:)(v65, v66, a3, a4)._rawBits;
  v70 = v69;
  if (v68._rawBits >= 0x10000)
  {
    rawBits = v68._rawBits;
  }

  else
  {
    rawBits = v68._rawBits | 3;
  }

  a4;
  v72._rawBits = v70;
  v18 = a3;
  v19 = String.UTF8View.distance(from:to:)(rawBits, v72);
  a4;
  v21 = *v75;
  v20 = v75[1];
  if ((v20 & 0x1000000000000000) != 0)
  {
    goto LABEL_47;
  }

LABEL_3:
  if ((v20 & 0x2000000000000000) != 0)
  {
    v22 = HIBYTE(v20) & 0xF;
  }

  else
  {
    v22 = v21 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v22 + v19;
  if (__OFADD__(v22, v19))
  {
    goto LABEL_49;
  }

LABEL_7:
  if ((v21 & ~v20 & 0x2000000000000000) == 0 || !swift_isUniquelyReferenced_nonNull_native(v20 & 0xFFFFFFFFFFFFFFFLL))
  {
    if (v23 > 15)
    {
      goto LABEL_13;
    }

LABEL_20:
    v33 = _StringGuts._convertedToSmall()(v21, v20, a5, a6, a7, a8, a9, a10, a11, a12);
    v35 = HIBYTE(a4) & 0xF;
    if ((a4 & 0x2000000000000000) == 0)
    {
      v35 = v18 & 0xFFFFFFFFFFFFLL;
    }

    if (v35 >= v17)
    {
      v36 = v33;
      v37 = v34;
      v38 = 3;
      if (a1 >= 0x10000)
      {
        v38 = 1;
      }

      v39 = Substring.description.getter(v38 | a1 & 0xFFFFFFFFFFFF0000, a2 & 0xFFFFFFFFFFFF0000 | 1, v18, a4);
      v41 = v40;
      v50 = _StringGuts._convertedToSmall()(v39, v40, v42, v43, v44, v45, v46, v47, v48, v49);
      v52 = v51;
      v41;
      v53 = HIBYTE(v37) & 0xF;
      v54 = HIBYTE(v52) & 0xF;
      v55 = v54 + v53;
      if (v54 + v53 <= 0xF)
      {
        if (v54)
        {
          v56 = 0;
          v57 = 0;
          v58 = 8 * v53;
          v59 = 8 * v54;
          do
          {
            v60 = v52 >> (v56 & 0x38);
            if (v57 < 8)
            {
              v60 = v50 >> v56;
            }

            v61 = (v60 << (v58 & 0x38)) | ((-255 << (v58 & 0x38)) - 1) & v37;
            v62 = (v60 << v58) | ((-255 << v58) - 1) & v36;
            if (v53 <= 7)
            {
              v36 = v62;
            }

            else
            {
              v37 = v61;
            }

            ++v53;
            v58 += 8;
            v56 += 8;
            ++v57;
          }

          while (v59 != v56);
        }

        v20;
        v63 = 0xA000000000000000;
        if (!(v36 & 0x8080808080808080 | v37 & 0x80808080808080))
        {
          v63 = 0xE000000000000000;
        }

        *v75 = v36;
        v75[1] = v63 & 0xFF00000000000000 | (v55 << 56) | v37 & 0xFFFFFFFFFFFFFFLL;
        return;
      }

LABEL_55:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

LABEL_50:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v24 = _StringGuts.nativeUnusedCapacity.getter(v21, v20);
  if (v25)
  {
    goto LABEL_55;
  }

  if (v23 <= 15 && ((v20 & 0x2000000000000000) != 0 || v24 < v19))
  {
    goto LABEL_20;
  }

LABEL_13:
  _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v23, v19);
  if ((a4 & 0x1000000000000000) != 0)
  {

    _StringGuts._foreignAppendInPlace(_:)(v18, a4, v16, v17);
  }

  else
  {
    if ((a4 & 0x2000000000000000) == 0)
    {
      if ((v18 & 0x1000000000000000) != 0)
      {
        v26 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v27 = v18 & 0xFFFFFFFFFFFFLL;
        if ((v18 & 0xFFFFFFFFFFFFLL) < v17)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v26 = _StringObject.sharedUTF8.getter(v18, a4);
        v27 = v74;
        if (v74 < v17)
        {
          goto LABEL_54;
        }
      }

      v28 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v16, v17, v26, v27);
      v30 = v29;
      v31 = v75[1] & 0xFFFFFFFFFFFFFFFLL;
      specialized UnsafeMutablePointer.initialize(from:count:)(v28, v29, (v31 + (*(v31 + 0x18) & 0xFFFFFFFFFFFFLL) + 32));
      v32 = *(v31 + 24);
      if (!__OFADD__(v32 & 0xFFFFFFFFFFFFLL, v30))
      {
        __StringStorage._updateCountAndFlags(newCount:newIsASCII:)((v32 & 0xFFFFFFFFFFFFLL) + v30, (v32 & v18 & 0x8000000000000000) != 0);
        *v75 = *(v31 + 24);
        return;
      }

      __break(1u);
LABEL_54:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v76[0] = v18;
    v76[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    if ((HIBYTE(a4) & 0xF) < v17 || (v17 - v16) < 0)
    {
      goto LABEL_54;
    }

    v64 = v75[1] & 0xFFFFFFFFFFFFFFFLL;
    specialized UnsafeMutablePointer.initialize(from:count:)(v76 + v16, v17 - v16, (v64 + (*(v64 + 0x18) & 0xFFFFFFFFFFFFLL) + 32));
    __StringStorage._updateCountAndFlags(newCount:newIsASCII:)((*(v64 + 24) & 0xFFFFFFFFFFFFLL) + v17 - v16, (a4 >> 62) & (*(v64 + 24) < 0));
    *v75 = *(v64 + 24);
  }
}

void specialized String.append<A>(contentsOf:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = 0;
    v82 = a1 + 32;
    do
    {
      v4 = (v82 + 16 * v3);
      v6 = *v4;
      v5 = v4[1];
      v8 = *v1;
      v7 = v1[1];
      v9 = HIBYTE(v7) & 0xF;
      v10 = *v1 & 0xFFFFFFFFFFFFLL;
      if ((v7 & 0x2000000000000000) != 0)
      {
        v11 = HIBYTE(v7) & 0xF;
      }

      else
      {
        v11 = *v1 & 0xFFFFFFFFFFFFLL;
      }

      if (!v11 && (*&v8 & ~v7 & 0x2000000000000000) == 0)
      {
        v5;
        v7;
        *v1 = v6;
        v1[1] = v5;
        goto LABEL_4;
      }

      v12 = HIBYTE(v5) & 0xF;
      if ((v7 & 0x2000000000000000) != 0)
      {
        if ((v5 & 0x2000000000000000) == 0)
        {
          v13 = *&v6 & 0xFFFFFFFFFFFFLL;
          v83 = 1;
LABEL_15:
          v14 = v13;
          goto LABEL_16;
        }

        v46 = v9 + v12;
        if (v9 + v12 < 0x10)
        {
          if (v12)
          {
            v48 = 0;
            v49 = 0;
            v50 = 8 * v9;
            v51 = 8 * v12;
            v52 = v1[1];
            do
            {
              v53 = v5 >> (v48 & 0x38);
              if (v49 < 8)
              {
                v53 = *&v6 >> v48;
              }

              v54 = (v53 << (v50 & 0x38)) | ((-255 << (v50 & 0x38)) - 1) & v52;
              v55 = (v53 << v50) | ((-255 << v50) - 1) & *&v8;
              if (v9 <= 7)
              {
                v8 = v55;
              }

              else
              {
                v52 = v54;
              }

              ++v9;
              v50 += 8;
              v48 += 8;
              ++v49;
            }

            while (v51 != v48);
          }

          else
          {
            v52 = v1[1];
          }

          *&v1[1];
          v64 = 0xA000000000000000;
          if (!(*&v8 & 0x8080808080808080 | v52 & 0x80808080808080))
          {
            v64 = 0xE000000000000000;
          }

          *v1 = v8;
          v1[1] = (v64 & 0xFF00000000000000 | (v46 << 56) | v52 & 0xFFFFFFFFFFFFFFLL);
          goto LABEL_4;
        }

        v83 = 0;
        v13 = *&v6 & 0xFFFFFFFFFFFFLL;
        v14 = HIBYTE(v5) & 0xF;
      }

      else
      {
        v83 = (v5 & 0x2000000000000000) == 0;
        v13 = *&v6 & 0xFFFFFFFFFFFFLL;
        v14 = HIBYTE(v5) & 0xF;
        if ((v5 & 0x2000000000000000) == 0)
        {
          goto LABEL_15;
        }
      }

LABEL_16:
      __n = HIBYTE(v5) & 0xF;
      v84 = v3;
      if ((v5 & 0x1000000000000000) != 0)
      {
        swift_bridgeObjectRetain_n(v5, 3);
        v68._rawBits = 1;
        v69._rawBits = (v14 << 16) | 1;
        v70._rawBits = _StringGuts.validateScalarRange(_:)(v68, v69, *&v6, v5)._rawBits;
        if (v70._rawBits < 0x10000)
        {
          v70._rawBits |= 3;
        }

        v16 = String.UTF8View.distance(from:to:)(v70, v71);
        v5;
        if ((v7 & 0x1000000000000000) == 0)
        {
LABEL_18:
          v17 = __OFADD__(v11, v16);
          v18 = v11 + v16;
          if (v17)
          {
            goto LABEL_107;
          }

          goto LABEL_19;
        }
      }

      else
      {
        swift_bridgeObjectRetain_n(v5, 2);
        v16 = v14;
        if ((v7 & 0x1000000000000000) == 0)
        {
          goto LABEL_18;
        }
      }

      v72 = String.UTF8View._foreignCount()();
      v18 = v72 + v16;
      if (__OFADD__(v72, v16))
      {
LABEL_107:
        __break(1u);
LABEL_108:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

LABEL_19:
      if ((*&v8 & ~v7 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v7 & 0xFFFFFFFFFFFFFFFLL))
      {
        v19 = _StringGuts.nativeUnusedCapacity.getter(*&v8, v7);
        if (v20)
        {
          goto LABEL_110;
        }

        if (v18 <= 15)
        {
          if ((v7 & 0x2000000000000000) != 0)
          {
            goto LABEL_44;
          }

          if (v19 < v16)
          {
            goto LABEL_25;
          }
        }
      }

      else if (v18 <= 15)
      {
        if ((v7 & 0x2000000000000000) != 0)
        {
LABEL_44:
          v22 = v7;
        }

        else
        {
LABEL_25:
          if ((v7 & 0x1000000000000000) != 0)
          {
            v8 = _StringGuts._foreignConvertedToSmall()(*&v8, v7);
            v22 = v67;
          }

          else
          {
            if ((*&v8 & 0x1000000000000000) != 0)
            {
              v21 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v21 = _StringObject.sharedUTF8.getter(*&v8, v7);
              v10 = v77;
            }

            closure #1 in _StringGuts._convertedToSmall()(v21, v10, &__src, v15);
            v8 = __src;
            v22 = v86;
          }
        }

        v5;
        if (v83)
        {
          if ((v5 & 0x1000000000000000) != 0)
          {
            v34 = v79;
            v6 = _StringGuts._foreignConvertedToSmall()(*&v6, v5);
            v35 = v78;
            v5;
          }

          else
          {
            if ((*&v6 & 0x1000000000000000) != 0)
            {
              v73 = v13;
              v74 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v74 = _StringObject.sharedUTF8.getter(*&v6, v5);
            }

            v34 = v79;
            closure #1 in _StringGuts._convertedToSmall()(v74, v73, &__src, v33);
            v5;
            v6 = __src;
            v35 = v86;
          }
        }

        else
        {
          v34 = v79;
          v5;
          v35 = v5;
        }

        v36 = HIBYTE(v22) & 0xF;
        v37 = HIBYTE(v35) & 0xF;
        v38 = v37 + v36;
        if (v37 + v36 > 0xF)
        {
LABEL_110:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v5;
        if (v37)
        {
          v39 = 0;
          v40 = 0;
          v41 = 8 * v36;
          v42 = 8 * v37;
          v2 = v34;
          do
          {
            v43 = v35 >> (v39 & 0x38);
            if (v40 < 8)
            {
              v43 = *&v6 >> v39;
            }

            v44 = (v43 << (v41 & 0x38)) | ((-255 << (v41 & 0x38)) - 1) & v22;
            v45 = (v43 << v41) | ((-255 << v41) - 1) & *&v8;
            if (v36 <= 7)
            {
              v8 = v45;
            }

            else
            {
              v22 = v44;
            }

            ++v36;
            v41 += 8;
            v39 += 8;
            ++v40;
          }

          while (v42 != v39);
        }

        else
        {
          v2 = v34;
        }

        v5;
        v7;
        v47 = 0xA000000000000000;
        if (!(*&v8 & 0x8080808080808080 | v22 & 0x80808080808080))
        {
          v47 = 0xE000000000000000;
        }

        v1 = v80;
        *v80 = v8;
        v80[1] = (v47 & 0xFF00000000000000 | (v38 << 56) | v22 & 0xFFFFFFFFFFFFFFLL);
        v3 = v84;
        goto LABEL_4;
      }

      v1 = v80;
      _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v18, v16);
      if ((v5 & 0x1000000000000000) != 0)
      {
        _StringGuts._foreignAppendInPlace(_:)(*&v6, v5, 0, v14);
        swift_bridgeObjectRelease_n(v5, 2);
        v3 = v84;
        goto LABEL_60;
      }

      v3 = v84;
      if (v83)
      {
        if ((*&v6 & 0x1000000000000000) != 0)
        {
          v23 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
          if (v13)
          {
            goto LABEL_34;
          }
        }

        else
        {
          v75 = _StringObject.sharedUTF8.getter(*&v6, v5);
          if (v76 < v13)
          {
            goto LABEL_108;
          }

          v23 = v75;
          if (v13)
          {
LABEL_34:
            if (!v23)
            {
              goto LABEL_108;
            }
          }
        }

        v5;
        v24 = *&v80[1] & 0xFFFFFFFFFFFFFFFLL;
        v25 = v24 + 32;
        v26 = (v24 + 32 + (*(v24 + 0x18) & 0xFFFFFFFFFFFFLL));
        if (&v26[v13] > v23 && v26 < &v23[v13])
        {
          goto LABEL_109;
        }

        memcpy(v26, v23, v13);
        v27 = *(v24 + 24);
        v28 = (v27 & 0xFFFFFFFFFFFFLL) + v13;
        if ((v27 & *&v6) < 0 != v17)
        {
          v28 |= 0xC000000000000000;
        }

        v29 = v28 | 0x3000000000000000;
        *(v24 + 24) = v28 | 0x3000000000000000;
        *(v25 + (v28 & 0xFFFFFFFFFFFFLL)) = 0;
        v30 = *(v24 + 16);
        if (v30 < 0)
        {
          v31 = ((v25 + (v30 & 0xFFFFFFFFFFFFLL) + 7) & 0x7FFFFFFFFFFFFFF8);
          v32 = *v31;
          *v31 = 0;
          v32;
          v29 = *(v24 + 24);
        }

        *v80 = v29;
        v5;
LABEL_60:
        v2 = v79;
        goto LABEL_4;
      }

      __src = v6;
      v86 = v5 & 0xFFFFFFFFFFFFFFLL;
      v5;
      v56 = *&v80[1] & 0xFFFFFFFFFFFFFFFLL;
      v57 = v56 + 32;
      v58 = (v56 + 32 + (*(v56 + 0x18) & 0xFFFFFFFFFFFFLL));
      if (&__src < &v58[__n] && v58 < &__src + __n)
      {
LABEL_109:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      memcpy(v58, &__src, __n);
      v59 = *(v56 + 24);
      v60 = (v59 & 0xFFFFFFFFFFFFLL) + __n;
      v61 = v59 > -1 || (v5 & 0x4000000000000000) == 0;
      v62 = v60 | 0xC000000000000000;
      if (v61)
      {
        v62 = v60;
      }

      *(v56 + 24) = v62 | 0x3000000000000000;
      *(v57 + (v62 & 0xFFFFFFFFFFFFLL)) = 0;
      v63 = *(v56 + 16);
      if (v63 < 0)
      {
        v65 = ((v57 + (v63 & 0xFFFFFFFFFFFFLL) + 7) & 0x7FFFFFFFFFFFFFF8);
        v66 = *v65;
        *v65 = 0;
        v5;
        v66;
      }

      else
      {
        v5;
      }

      v2 = v79;
      *v80 = *(v56 + 24);
LABEL_4:
      ++v3;
    }

    while (v3 != v2);
  }
}

void specialized String.append<A>(contentsOf:)(unint64_t a1, unint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, int8x16_t a10)
{
  if (&full type metadata for CollectionOfOne<Character> == &full type metadata for String)
  {
    String.append(_:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
    return;
  }

  if (&full type metadata for CollectionOfOne<Character> == &full type metadata for Substring)
  {
    __break(1u);
    goto LABEL_109;
  }

  if (&full type metadata for CollectionOfOne<Character> == &full type metadata for [Character])
  {

    specialized String.append<A>(contentsOf:)(a1);
    return;
  }

  v12 = *v10;
  v11 = *(v10 + 8);
  v13 = HIBYTE(v11) & 0xF;
  v14 = *v10 & 0xFFFFFFFFFFFFLL;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v15 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v15 = *v10 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15 && (*&v12 & ~v11 & 0x2000000000000000) == 0)
  {
    a2;
    v11;
    *v10 = a1;
    *(v10 + 8) = a2;
    return;
  }

  v16 = (a2 & 0x2000000000000000) == 0;
  v17 = HIBYTE(a2) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v18 = a1 & 0xFFFFFFFFFFFFLL;
    v19 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) != 0)
    {
LABEL_19:
      v91 = v18;
      v92 = a1;
      if ((a2 & 0x1000000000000000) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_66;
    }

LABEL_18:
    v19 = v18;
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    v18 = a1 & 0xFFFFFFFFFFFFLL;
    v16 = 1;
    goto LABEL_18;
  }

  v55 = v13 + v17;
  if (v13 + v17 < 0x10)
  {
    if (v17)
    {
      v64 = 0;
      v65 = 0;
      v66 = 8 * v13;
      v67 = 8 * v17;
      v68 = *(v10 + 8);
      do
      {
        v69 = a2 >> (v64 & 0x38);
        if (v65 < 8)
        {
          v69 = a1 >> v64;
        }

        v70 = (v69 << (v66 & 0x38)) | ((-255 << (v66 & 0x38)) - 1) & v68;
        v71 = (v69 << v66) | ((-255 << v66) - 1) & *&v12;
        if (v13 <= 7)
        {
          v12 = v71;
        }

        else
        {
          v68 = v70;
        }

        ++v13;
        v66 += 8;
        v64 += 8;
        ++v65;
      }

      while (v67 != v64);
    }

    else
    {
      v68 = *(v10 + 8);
    }

    *(v10 + 8);
    v80 = 0xA000000000000000;
    if (!(*&v12 & 0x8080808080808080 | v68 & 0x80808080808080))
    {
      v80 = 0xE000000000000000;
    }

    v54 = v80 & 0xFF00000000000000 | (v55 << 56) | v68 & 0xFFFFFFFFFFFFFFLL;
    goto LABEL_96;
  }

  v16 = 0;
  v19 = HIBYTE(a2) & 0xF;
  v91 = a1 & 0xFFFFFFFFFFFFLL;
  v92 = a1;
  if ((a2 & 0x1000000000000000) == 0)
  {
LABEL_20:
    v20 = a2;
    swift_bridgeObjectRetain_n(a2, 2);
    v22 = v19;
    if ((v11 & 0x1000000000000000) == 0)
    {
      goto LABEL_21;
    }

LABEL_69:
    v61 = String.UTF8View._foreignCount()();
    v24 = v61 + v22;
    if (!__OFADD__(v61, v22))
    {
      goto LABEL_22;
    }

LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

LABEL_66:
  swift_bridgeObjectRetain_n(a2, 2);
  v57._rawBits = 1;
  v58._rawBits = (v19 << 16) | 1;
  v59._rawBits = _StringGuts.validateScalarRange(_:)(v57, v58, *&v92, a2)._rawBits;
  if (v59._rawBits < 0x10000)
  {
    v59._rawBits |= 3;
  }

  v20 = a2;
  v22 = String.UTF8View.distance(from:to:)(v59, v60);
  if ((v11 & 0x1000000000000000) != 0)
  {
    goto LABEL_69;
  }

LABEL_21:
  v23 = __OFADD__(v15, v22);
  v24 = v15 + v22;
  if (v23)
  {
    goto LABEL_71;
  }

LABEL_22:
  if ((*&v12 & ~v11 & 0x2000000000000000) == 0 || !swift_isUniquelyReferenced_nonNull_native(v11 & 0xFFFFFFFFFFFFFFFLL))
  {
    if (v24 >= 16)
    {
      goto LABEL_33;
    }

    if ((v11 & 0x2000000000000000) == 0)
    {
LABEL_28:
      if ((v11 & 0x1000000000000000) != 0)
      {
        v12 = _StringGuts._foreignConvertedToSmall()(*&v12, v11);
        v28 = v83;
      }

      else
      {
        if ((*&v12 & 0x1000000000000000) != 0)
        {
          v27 = ((v11 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v27 = _StringObject.sharedUTF8.getter(*&v12, v11);
          v14 = v86;
        }

        closure #1 in _StringGuts._convertedToSmall()(v27, v14, &__src, v21);
        v12 = __src;
        v28 = v94;
      }

      goto LABEL_50;
    }

    goto LABEL_49;
  }

  v25 = _StringGuts.nativeUnusedCapacity.getter(*&v12, v11);
  if (v26)
  {
    goto LABEL_109;
  }

  if (v24 > 15)
  {
    goto LABEL_33;
  }

  if ((v11 & 0x2000000000000000) != 0)
  {
LABEL_49:
    v28 = v11;
LABEL_50:
    v20;
    if (v16)
    {
      if ((v20 & 0x1000000000000000) != 0)
      {
        v92 = _StringGuts._foreignConvertedToSmall()(*&v92, v20);
        v42 = v87;
        v20;
        v41 = v20;
      }

      else
      {
        if ((*&v92 & 0x1000000000000000) != 0)
        {
          closure #1 in _StringGuts._convertedToSmall()(((v20 & 0xFFFFFFFFFFFFFFFLL) + 32), v91, &__src, v40);
        }

        else
        {
          v88 = _StringObject.sharedUTF8.getter(*&v92, v20);
          closure #1 in _StringGuts._convertedToSmall()(v88, v89, &__src, v90);
        }

        v20;
        v41 = v20;
        v42 = v94;
        v92 = __src;
      }
    }

    else
    {
      v20;
      v41 = v20;
      v42 = v20;
    }

    v43 = HIBYTE(v28) & 0xF;
    v44 = HIBYTE(v42) & 0xF;
    v45 = v44 + v43;
    if (v44 + v43 < 0x10)
    {
      v46 = v41;
      v41;
      if (v44)
      {
        v47 = 0;
        v48 = 0;
        v49 = 8 * v43;
        do
        {
          v50 = v42 >> (v47 & 0x38);
          if (v48 < 8)
          {
            v50 = *&v92 >> v47;
          }

          v51 = (v50 << (v49 & 0x38)) | ((-255 << (v49 & 0x38)) - 1) & v28;
          v52 = (v50 << v49) | ((-255 << v49) - 1) & *&v12;
          if (v43 <= 7)
          {
            v12 = v52;
          }

          else
          {
            v28 = v51;
          }

          ++v43;
          v49 += 8;
          v47 += 8;
          ++v48;
        }

        while (8 * v44 != v47);
      }

      v46;
      v11;
      v53 = 0xA000000000000000;
      if (!(*&v12 & 0x8080808080808080 | v28 & 0x80808080808080))
      {
        v53 = 0xE000000000000000;
      }

      v54 = v53 & 0xFF00000000000000 | (v45 << 56) | v28 & 0xFFFFFFFFFFFFFFLL;
LABEL_96:
      *v10 = v12;
      *(v10 + 8) = v54;
      return;
    }

LABEL_109:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v25 < v22)
  {
    goto LABEL_28;
  }

LABEL_33:
  _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v24, v22);
  if ((v20 & 0x1000000000000000) != 0)
  {
LABEL_72:
    _StringGuts._foreignAppendInPlace(_:)(*&v92, v20, 0, v19);
    swift_bridgeObjectRelease_n(v20, 2);
    return;
  }

  if (v16)
  {
    if ((*&v92 & 0x1000000000000000) != 0)
    {
      v29 = ((v20 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v30 = v91;
      if (!v91)
      {
LABEL_38:
        v20;
        v31 = *(v10 + 8) & 0xFFFFFFFFFFFFFFFLL;
        v32 = v31 + 32;
        v33 = (v31 + 32 + (*(v31 + 0x18) & 0xFFFFFFFFFFFFLL));
        if (&v33[v30] <= v29 || v33 >= &v29[v30])
        {
          memcpy(v33, v29, v30);
          v34 = *(v31 + 24);
          if ((v34 & *&v92) < 0 != v23)
          {
            v35 = ((v34 & 0xFFFFFFFFFFFFLL) + v30) | 0xC000000000000000;
          }

          else
          {
            v35 = (v34 & 0xFFFFFFFFFFFFLL) + v30;
          }

          v36 = v35 | 0x3000000000000000;
          *(v31 + 24) = v35 | 0x3000000000000000;
          *(v32 + (v35 & 0xFFFFFFFFFFFFLL)) = 0;
          v37 = *(v31 + 16);
          if (v37 < 0)
          {
            v38 = ((v32 + (v37 & 0xFFFFFFFFFFFFLL) + 7) & 0x7FFFFFFFFFFFFFF8);
            v39 = *v38;
            *v38 = 0;
            v39;
            v36 = *(v31 + 24);
          }

          *v10 = v36;

          v20;
          return;
        }

LABEL_106:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }
    }

    else
    {
      v84 = _StringObject.sharedUTF8.getter(*&v92, v20);
      if (v85 < v91)
      {
        goto LABEL_105;
      }

      v29 = v84;
      v30 = v91;
      if (!v91)
      {
        goto LABEL_38;
      }
    }

    if (v29)
    {
      goto LABEL_38;
    }

LABEL_105:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  __src = v92;
  v94 = v20 & 0xFFFFFFFFFFFFFFLL;
  v20;
  v72 = *(v10 + 8) & 0xFFFFFFFFFFFFFFFLL;
  v73 = v72 + 32;
  v74 = (v72 + 32 + (*(v72 + 0x18) & 0xFFFFFFFFFFFFLL));
  if (&__src < &v74[v17] && v74 < &__src + v17)
  {
    goto LABEL_106;
  }

  memcpy(v74, &__src, v17);
  v75 = *(v72 + 24);
  v76 = (v75 & 0xFFFFFFFFFFFFLL) + v17;
  v77 = v75 > -1 || (v20 & 0x4000000000000000) == 0;
  v78 = v76 | 0xC000000000000000;
  if (v77)
  {
    v78 = v76;
  }

  *(v72 + 24) = v78 | 0x3000000000000000;
  *(v73 + (v78 & 0xFFFFFFFFFFFFLL)) = 0;
  v79 = *(v72 + 16);
  if (v79 < 0)
  {
    v81 = ((v73 + (v79 & 0xFFFFFFFFFFFFLL) + 7) & 0x7FFFFFFFFFFFFFF8);
    v82 = *v81;
    *v81 = 0;
    v20;
    v82;
  }

  else
  {
    v20;
  }

  *v10 = *(v72 + 24);
}

void specialized String.append<A>(contentsOf:)(uint64_t a1, unint64_t a2, unint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, int8x16_t a11)
{
  if (&full type metadata for Repeated<Character> == &full type metadata for String)
  {
    String.append(_:)(a1, a2, a4, a5, a6, a7, a8, a9, a10, a11);
    return;
  }

  if (&full type metadata for Repeated<Character> == &full type metadata for Substring)
  {
    __break(1u);
LABEL_119:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (&full type metadata for Repeated<Character> != &full type metadata for [Character])
  {
    a3;
    v13 = a2;
    if (!a1)
    {
LABEL_114:
      a3;
      return;
    }

    v14 = 0;
    v15 = HIBYTE(a3) & 0xF;
    __n = a2 & 0xFFFFFFFFFFFFLL;
    if ((a3 & 0x2000000000000000) != 0)
    {
      v16 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v16 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v17 = 8 * v15;
    v97 = HIBYTE(a3) & 0xF;
    v98 = v16;
    v92 = (v16 << 16) | 1;
    v93 = &__src + v15;
    v18 = a1 & ~(a1 >> 63);
    while (1)
    {
      if (v14 == v18)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v20 = *v11;
      v19 = *(v11 + 8);
      v21 = HIBYTE(v19) & 0xF;
      v22 = *v11 & 0xFFFFFFFFFFFFLL;
      v23 = (v19 & 0x2000000000000000) != 0 ? HIBYTE(v19) & 0xF : *v11 & 0xFFFFFFFFFFFFLL;
      if (v23 || (*&v20 & ~v19 & 0x2000000000000000) != 0)
      {
        break;
      }

      v63 = v17;
      v64 = v18;
      a3;
      v19;
      v18 = v64;
      v17 = v63;
      v65 = a1;
      v13 = a2;
      *v11 = a2;
      *(v11 + 8) = a3;
LABEL_95:
      if (++v14 == v65)
      {
        goto LABEL_114;
      }
    }

    if ((v19 & 0x2000000000000000) != 0 && (a3 & 0x2000000000000000) != 0)
    {
      v24 = v21 + v97;
      if (v21 + v97 <= 0xF)
      {
        if (v97)
        {
          v55 = v18;
          v56 = 0;
          v57 = 0;
          v58 = 8 * v21;
          v59 = *(v11 + 8);
          do
          {
            v60 = a3 >> (v56 & 0x38);
            if (v57 < 8)
            {
              v60 = v13 >> v56;
            }

            v61 = (v60 << (v58 & 0x38)) | ((-255 << (v58 & 0x38)) - 1) & v59;
            v62 = (v60 << v58) | ((-255 << v58) - 1) & *&v20;
            if (v21 <= 7)
            {
              v20 = v62;
            }

            else
            {
              v59 = v61;
            }

            ++v21;
            v58 += 8;
            v56 += 8;
            ++v57;
          }

          while (v17 != v56);
        }

        else
        {
          v55 = v18;
          v59 = *(v11 + 8);
        }

        v74 = v17;
        *(v11 + 8);
        v17 = v74;
        v13 = a2;
        v75 = 0xA000000000000000;
        if (!(*&v20 & 0x8080808080808080 | v59 & 0x80808080808080))
        {
          v75 = 0xE000000000000000;
        }

        *v11 = v20;
        *(v11 + 8) = v75 & 0xFF00000000000000 | (v24 << 56) | v59 & 0xFFFFFFFFFFFFFFLL;
        v65 = a1;
        v18 = v55;
        goto LABEL_95;
      }
    }

    v95 = v18;
    v96 = v17;
    swift_bridgeObjectRetain_n(a3, 2);
    v26 = v98;
    if ((a3 & 0x1000000000000000) != 0)
    {
      v79._rawBits = 1;
      v80._rawBits = v92;
      v81._rawBits = _StringGuts.validateScalarRange(_:)(v79, v80, a2, a3)._rawBits;
      if (v81._rawBits < 0x10000)
      {
        v81._rawBits |= 3;
      }

      v26 = String.UTF8View.distance(from:to:)(v81, v82);
      if ((v19 & 0x1000000000000000) == 0)
      {
LABEL_24:
        v27 = __OFADD__(v23, v26);
        v28 = v23 + v26;
        if (v27)
        {
          goto LABEL_115;
        }

        goto LABEL_25;
      }
    }

    else if ((v19 & 0x1000000000000000) == 0)
    {
      goto LABEL_24;
    }

    v83 = String.UTF8View._foreignCount()();
    v28 = v83 + v26;
    if (__OFADD__(v83, v26))
    {
LABEL_115:
      __break(1u);
LABEL_116:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

LABEL_25:
    if ((*&v20 & ~v19 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v19 & 0xFFFFFFFFFFFFFFFLL))
    {
      v29 = _StringGuts.nativeUnusedCapacity.getter(*&v20, v19);
      if (v30)
      {
        goto LABEL_119;
      }

      if (v28 > 15)
      {
        goto LABEL_36;
      }

      if ((v19 & 0x2000000000000000) == 0)
      {
        if (v29 < v26)
        {
          goto LABEL_31;
        }

LABEL_36:
        _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v28, v26);
        if ((a3 & 0x1000000000000000) != 0)
        {
          v13 = a2;
          _StringGuts._foreignAppendInPlace(_:)(a2, a3, 0, v98);
          swift_bridgeObjectRelease_n(a3, 2);
LABEL_94:
          v65 = a1;
          v18 = v95;
          v17 = v96;
          goto LABEL_95;
        }

        if ((a3 & 0x2000000000000000) != 0)
        {
          __src = a2;
          v102 = a3 & 0xFFFFFFFFFFFFFFLL;
          a3;
          v67 = *(v11 + 8) & 0xFFFFFFFFFFFFFFFLL;
          v68 = v67 + 32;
          v69 = (v67 + 32 + (*(v67 + 0x18) & 0xFFFFFFFFFFFFLL));
          if (&__src < &v69[v97] && v69 < v93)
          {
LABEL_117:
            _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          memcpy(v69, &__src, v97);
          v70 = *(v67 + 24);
          v71 = v70 > -1 || (a3 & 0x4000000000000000) == 0;
          v72 = (v70 & 0xFFFFFFFFFFFFLL) + v97;
          if (!v71)
          {
            v72 |= 0xC000000000000000;
          }

          *(v67 + 24) = v72 | 0x3000000000000000;
          *(v68 + (v72 & 0xFFFFFFFFFFFFLL)) = 0;
          v73 = *(v67 + 16);
          if (v73 < 0)
          {
            v76 = ((v68 + (v73 & 0xFFFFFFFFFFFFLL) + 7) & 0x7FFFFFFFFFFFFFF8);
            v77 = *v76;
            *v76 = 0;
            a3;
            v77;
          }

          else
          {
            a3;
          }

          *v11 = *(v67 + 24);
          goto LABEL_93;
        }

        v33 = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
        if ((a2 & 0x1000000000000000) != 0)
        {
          if (!__n)
          {
LABEL_41:
            a3;
            v34 = *(v11 + 8) & 0xFFFFFFFFFFFFFFFLL;
            v35 = v34 + 32;
            v36 = (v34 + 32 + (*(v34 + 0x18) & 0xFFFFFFFFFFFFLL));
            if (&v36[__n] > v33 && v36 < &v33[__n])
            {
              goto LABEL_117;
            }

            memcpy(v36, v33, __n);
            v37 = *(v34 + 24);
            if (((v37 & a2 & 0x8000000000000000) != 0) != v27)
            {
              v38 = ((v37 & 0xFFFFFFFFFFFFLL) + __n) | 0xC000000000000000;
            }

            else
            {
              v38 = (v37 & 0xFFFFFFFFFFFFLL) + __n;
            }

            v39 = v38 | 0x3000000000000000;
            *(v34 + 24) = v38 | 0x3000000000000000;
            *(v35 + (v38 & 0xFFFFFFFFFFFFLL)) = 0;
            v40 = *(v34 + 16);
            if (v40 < 0)
            {
              v41 = ((v35 + (v40 & 0xFFFFFFFFFFFFLL) + 7) & 0x7FFFFFFFFFFFFFF8);
              v42 = *v41;
              *v41 = 0;
              v42;
              v39 = *(v34 + 24);
            }

            *v11 = v39;
            a3;
LABEL_93:
            v13 = a2;
            goto LABEL_94;
          }
        }

        else
        {
          v86 = _StringObject.sharedUTF8.getter(a2, a3);
          if (v87 < __n)
          {
            goto LABEL_116;
          }

          v33 = v86;
          if (!__n)
          {
            goto LABEL_41;
          }
        }

        if (!v33)
        {
          goto LABEL_116;
        }

        goto LABEL_41;
      }
    }

    else
    {
      if (v28 >= 16)
      {
        goto LABEL_36;
      }

      if ((v19 & 0x2000000000000000) == 0)
      {
LABEL_31:
        if ((v19 & 0x1000000000000000) != 0)
        {
          v20 = _StringGuts._foreignConvertedToSmall()(*&v20, v19);
          v32 = v78;
        }

        else
        {
          if ((*&v20 & 0x1000000000000000) != 0)
          {
            v31 = ((v19 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v31 = _StringObject.sharedUTF8.getter(*&v20, v19);
            v22 = v88;
          }

          closure #1 in _StringGuts._convertedToSmall()(v31, v22, &__src, v25);
          v20 = __src;
          v32 = v102;
        }

        goto LABEL_51;
      }
    }

    v32 = v19;
LABEL_51:
    a3;
    v91 = v14;
    if ((a3 & 0x2000000000000000) != 0)
    {
      a3;
      v44 = a2;
      v45 = a3;
    }

    else if ((a3 & 0x1000000000000000) != 0)
    {
      v44 = _StringGuts._foreignConvertedToSmall()(a2, a3);
      v45 = v89;
      a3;
    }

    else
    {
      v84 = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v85 = a2 & 0xFFFFFFFFFFFFLL;
      if ((a2 & 0x1000000000000000) == 0)
      {
        v84 = _StringObject.sharedUTF8.getter(a2, a3);
      }

      closure #1 in _StringGuts._convertedToSmall()(v84, v85, &__src, v43);
      a3;
      v44 = __src;
      v45 = v102;
    }

    v46 = HIBYTE(v32) & 0xF;
    v47 = HIBYTE(v45) & 0xF;
    v90 = v47 + v46;
    if (v47 + v46 >= 0x10)
    {
      goto LABEL_119;
    }

    a3;
    if (v47)
    {
      v48 = 0;
      v49 = 0;
      v50 = 8 * v46;
      v51 = 8 * v47;
      v14 = v91;
      do
      {
        v52 = v45 >> (v48 & 0x38);
        if (v49 < 8)
        {
          v52 = v44 >> v48;
        }

        v53 = (v52 << (v50 & 0x38)) | ((-255 << (v50 & 0x38)) - 1) & v32;
        v54 = (v52 << v50) | ((-255 << v50) - 1) & *&v20;
        if (v46 <= 7)
        {
          v20 = v54;
        }

        else
        {
          v32 = v53;
        }

        ++v46;
        v50 += 8;
        v48 += 8;
        ++v49;
      }

      while (v51 != v48);
    }

    else
    {
      v14 = v91;
    }

    a3;
    v19;
    v66 = 0xA000000000000000;
    if (!(*&v20 & 0x8080808080808080 | v32 & 0x80808080808080))
    {
      v66 = 0xE000000000000000;
    }

    *v11 = v20;
    *(v11 + 8) = v66 & 0xFF00000000000000 | (v90 << 56) | v32 & 0xFFFFFFFFFFFFFFLL;
    goto LABEL_93;
  }

  specialized String.append<A>(contentsOf:)(a1);
}

void String.append<A>(contentsOf:)(unint64_t *a1, ValueMetadata *a2, uint64_t a3)
{
  v4 = v3;
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v129 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v128 = &v120 - v10;
  Description = a2[-1].Description;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v120 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = (&v120 - v16);
  MEMORY[0x1EEE9AC00](v15);
  v28 = (&v120 - v18);
  if (a2 == &type metadata for String)
  {
    String.append(_:)(*a1, a1[1], v20, v21, v22, v23, v24, v25, v26, v27);
    return;
  }

  if (a2 == &type metadata for Substring)
  {
    String.append(contentsOf:)(*a1, a1[1], a1[2], a1[3], v20, v21, v22, v23, v24, v25, v26, v27);
    return;
  }

  if (a2 == &unk_1EEEBBE38)
  {
    v41 = *a1;

    specialized String.append<A>(contentsOf:)(v41);
    return;
  }

  v121 = v19;
  v29 = Description[2];
  v29(&v120 - v18, a1, a2);
  if (!swift_dynamicCast(&__src, v28, a2, &type metadata for String, 6uLL))
  {
    v29(v17, a1, a2);
    if (swift_dynamicCast(&__src, v17, a2, &type metadata for Substring, 6uLL))
    {
      v38 = v133;
      String.append(contentsOf:)(*&__src, v131, v132, v133);
      goto LABEL_17;
    }

    v29(v14, a1, a2);
    (*(a3 + 32))(a2, a3);
    v42 = v129;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a3, a2, v129, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
    v44 = *(AssociatedConformanceWitness + 16);
    v125 = AssociatedConformanceWitness + 16;
    v126 = AssociatedConformanceWitness;
    v124 = v44;
    (v44)(&__src, v42);
    v45 = v131;
    if (!v131)
    {
LABEL_122:
      (*(v121 + 8))(v128, v129);
      return;
    }

    v46 = __src;
    v127 = v4;
    while (1)
    {
      v50 = *v4;
      v49 = v4[1];
      v51 = HIBYTE(v49) & 0xF;
      v52 = *v4 & 0xFFFFFFFFFFFFLL;
      if ((v49 & 0x2000000000000000) != 0)
      {
        v53 = HIBYTE(v49) & 0xF;
      }

      else
      {
        v53 = *v4 & 0xFFFFFFFFFFFFLL;
      }

      if (!v53 && (*&v50 & ~v49 & 0x2000000000000000) == 0)
      {
        *&v4[1];
        *v4 = v46;
        v4[1] = v45;
        goto LABEL_24;
      }

      v54 = v45 & 0x2000000000000000;
      v55 = HIBYTE(v45) & 0xF;
      v56 = v51 + v55;
      if ((v45 & 0x2000000000000000 & v49) != 0 && v56 <= 0xF)
      {
        if (v55)
        {
          v78 = 0;
          v79 = 0;
          v80 = 8 * v51;
          v81 = v49;
          do
          {
            v82 = v45 >> (v78 & 0x38);
            if (v79 < 8)
            {
              v82 = *&v46 >> v78;
            }

            v83 = (v82 << (v80 & 0x38)) | ((-255 << (v80 & 0x38)) - 1) & v81;
            v84 = (v82 << v80) | ((-255 << v80) - 1) & *&v50;
            if (v51 <= 7)
            {
              v50 = v84;
            }

            else
            {
              v81 = v83;
            }

            ++v51;
            v80 += 8;
            v78 += 8;
            ++v79;
          }

          while (8 * v55 != v78);
        }

        else
        {
          v81 = v49;
        }

        v49;
        v45;
        v96 = 0xA000000000000000;
        if (!(*&v50 & 0x8080808080808080 | v81 & 0x80808080808080))
        {
          v96 = 0xE000000000000000;
        }

        v48 = v96 & 0xFF00000000000000 | (v56 << 56) | v81 & 0xFFFFFFFFFFFFFFLL;
        goto LABEL_23;
      }

      if (v54)
      {
        v58 = HIBYTE(v45) & 0xF;
      }

      else
      {
        v58 = *&v46 & 0xFFFFFFFFFFFFLL;
      }

      v122 = *&v46 & 0xFFFFFFFFFFFFLL;
      v123 = v58;
      if ((v45 & 0x1000000000000000) != 0)
      {
        swift_bridgeObjectRetain_n(v45, 2);
        v108._rawBits = 1;
        v109._rawBits = (v58 << 16) | 1;
        v110._rawBits = _StringGuts.validateScalarRange(_:)(v108, v109, *&v46, v45)._rawBits;
        if (v110._rawBits < 0x10000)
        {
          v110._rawBits |= 3;
        }

        v58 = String.UTF8View.distance(from:to:)(v110, v111);
        v45;
        if ((v49 & 0x1000000000000000) == 0)
        {
LABEL_40:
          v60 = __OFADD__(v53, v58);
          v61 = v53 + v58;
          if (v60)
          {
            goto LABEL_124;
          }

          goto LABEL_41;
        }
      }

      else
      {
        v45;
        if ((v49 & 0x1000000000000000) == 0)
        {
          goto LABEL_40;
        }
      }

      v112 = String.UTF8View._foreignCount()();
      v61 = v112 + v58;
      if (__OFADD__(v112, v58))
      {
LABEL_124:
        __break(1u);
LABEL_125:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

LABEL_41:
      if ((*&v50 & ~v49 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v49 & 0xFFFFFFFFFFFFFFFLL))
      {
        v62 = _StringGuts.nativeUnusedCapacity.getter(*&v50, v49);
        if (v63)
        {
          goto LABEL_127;
        }

        if (v61 <= 15)
        {
          if ((v49 & 0x2000000000000000) != 0)
          {
            goto LABEL_76;
          }

          if (v62 < v58)
          {
            goto LABEL_47;
          }
        }
      }

      else if (v61 <= 15)
      {
        if ((v49 & 0x2000000000000000) != 0)
        {
LABEL_76:
          v65 = v49;
        }

        else
        {
LABEL_47:
          if ((v49 & 0x1000000000000000) != 0)
          {
            v50 = _StringGuts._foreignConvertedToSmall()(*&v50, v49);
            v65 = v107;
          }

          else
          {
            if ((*&v50 & 0x1000000000000000) != 0)
            {
              v64 = ((v49 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v64 = _StringObject.sharedUTF8.getter(*&v50, v49);
              v52 = v117;
            }

            closure #1 in _StringGuts._convertedToSmall()(v64, v52, &__src, v59);
            v50 = __src;
            v65 = v131;
          }
        }

        v45;
        if (v54)
        {
          v45;
          v86 = v45;
        }

        else if ((v45 & 0x1000000000000000) != 0)
        {
          v46 = _StringGuts._foreignConvertedToSmall()(*&v46, v45);
          v86 = v118;
          v45;
        }

        else
        {
          v113 = v122;
          if ((*&v46 & 0x1000000000000000) != 0)
          {
            v114 = ((v45 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v114 = _StringObject.sharedUTF8.getter(*&v46, v45);
          }

          closure #1 in _StringGuts._convertedToSmall()(v114, v113, &__src, v85);
          v45;
          v46 = __src;
          v86 = v131;
        }

        v87 = HIBYTE(v65) & 0xF;
        v88 = HIBYTE(v86) & 0xF;
        v89 = v88 + v87;
        if (v88 + v87 > 0xF)
        {
LABEL_127:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v45;
        if (v88)
        {
          v90 = 0;
          v91 = 0;
          v92 = 8 * v87;
          do
          {
            v93 = v86 >> (v90 & 0x38);
            if (v91 < 8)
            {
              v93 = *&v46 >> v90;
            }

            v94 = (v93 << (v92 & 0x38)) | ((-255 << (v92 & 0x38)) - 1) & v65;
            v95 = (v93 << v92) | ((-255 << v92) - 1) & *&v50;
            if (v87 <= 7)
            {
              v50 = v95;
            }

            else
            {
              v65 = v94;
            }

            ++v87;
            v92 += 8;
            v90 += 8;
            ++v91;
          }

          while (8 * v88 != v90);
        }

        v45;
        v49;
        v47 = 0xA000000000000000;
        if (!(*&v50 & 0x8080808080808080 | v65 & 0x80808080808080))
        {
          v47 = 0xE000000000000000;
        }

        v48 = v47 & 0xFF00000000000000 | (v89 << 56) | v65 & 0xFFFFFFFFFFFFFFLL;
LABEL_23:
        v4 = v127;
        *v127 = v50;
        v4[1] = v48;
        goto LABEL_24;
      }

      v66 = v127;
      _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v61, v58);
      if ((v45 & 0x1000000000000000) != 0)
      {
        _StringGuts._foreignAppendInPlace(_:)(*&v46, v45, 0, v123);
        swift_bridgeObjectRelease_n(v45, 2);
        v4 = v66;
      }

      else if (v54)
      {
        __src = v46;
        v131 = v45 & 0xFFFFFFFFFFFFFFLL;
        v45;
        v97 = *&v127[1] & 0xFFFFFFFFFFFFFFFLL;
        v98 = v97 + 32;
        v99 = (v97 + 32 + (*(v97 + 0x18) & 0xFFFFFFFFFFFFLL));
        if (&__src < &v99[v55] && v99 < &__src + v55)
        {
LABEL_126:
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        memcpy(v99, &__src, HIBYTE(v45) & 0xF);
        v100 = *(v97 + 24);
        v101 = (v100 & 0xFFFFFFFFFFFFLL) + v55;
        v102 = v100 > -1 || (v45 & 0x4000000000000000) == 0;
        v103 = v101 | 0xC000000000000000;
        if (v102)
        {
          v103 = v101;
        }

        *(v97 + 24) = v103 | 0x3000000000000000;
        *(v98 + (v103 & 0xFFFFFFFFFFFFLL)) = 0;
        v104 = *(v97 + 16);
        if (v104 < 0)
        {
          v105 = ((v98 + (v104 & 0xFFFFFFFFFFFFLL) + 7) & 0x7FFFFFFFFFFFFFF8);
          v106 = *v105;
          *v105 = 0;
          v45;
          v106;
        }

        else
        {
          v45;
        }

        v4 = v127;
        *v127 = *(v97 + 24);
      }

      else
      {
        if ((*&v46 & 0x1000000000000000) != 0)
        {
          v67 = ((v45 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v115 = _StringObject.sharedUTF8.getter(*&v46, v45);
          if (v116 < v122)
          {
            goto LABEL_125;
          }

          v67 = v115;
        }

        v4 = v127;
        v68 = v122;
        if (v122 && !v67)
        {
          goto LABEL_125;
        }

        v45;
        v69 = *&v4[1] & 0xFFFFFFFFFFFFFFFLL;
        v70 = v69 + 32;
        v71 = (v69 + 32 + (*(v69 + 0x18) & 0xFFFFFFFFFFFFLL));
        if (&v71[v68] > v67 && v71 < &v67[v68])
        {
          goto LABEL_126;
        }

        memcpy(v71, v67, v68);
        v72 = *(v69 + 24);
        v73 = (v72 & 0xFFFFFFFFFFFFLL) + v68;
        if ((v72 & *&v46) < 0 != v60)
        {
          v73 |= 0xC000000000000000;
        }

        v74 = v73 | 0x3000000000000000;
        *(v69 + 24) = v73 | 0x3000000000000000;
        *(v70 + (v73 & 0xFFFFFFFFFFFFLL)) = 0;
        v75 = *(v69 + 16);
        if (v75 < 0)
        {
          v76 = ((v70 + (v75 & 0xFFFFFFFFFFFFLL) + 7) & 0x7FFFFFFFFFFFFFF8);
          v77 = *v76;
          *v76 = 0;
          v77;
          v74 = *(v69 + 24);
        }

        *v4 = v74;
        v45;
      }

LABEL_24:
      v124(&__src, v129, v126);
      v46 = __src;
      v45 = v131;
      if (!v131)
      {
        goto LABEL_122;
      }
    }
  }

  v38 = v131;
  v39 = v4[1];
  v40 = HIBYTE(*&v39) & 0xFLL;
  if ((*&v39 & 0x2000000000000000) == 0)
  {
    v40 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v40 || (*v4 & ~*&v39 & 0x2000000000000000) != 0)
  {
    _StringGuts.append(_:)(*&__src, v131, v30, v31, v32, v33, v34, v35, v36, v37);
LABEL_17:
    v38;
    return;
  }

  v119 = __src;
  *&v4[1];
  *v4 = v119;
  v4[1] = v38;
}

uint64_t specialized _StringGuts.replaceSubrange<A>(_:with:)(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v11 = *v5;
  v10 = v5[1];
  if ((*v5 & ~v10 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v10 & 0xFFFFFFFFFFFFFFFLL))
  {
    if ((a4 & 0x1000000000000000) != 0)
    {
      return specialized _StringGuts.uniqueNativeReplaceSubrange<A>(_:with:)(a1, a2, a3, a4, protocol witness for ExpressibleByUnicodeScalarLiteral.init(unicodeScalarLiteral:) in conformance Unicode.Scalar, 0);
    }

    else
    {
      if ((a4 & 0x2000000000000000) != 0)
      {
        v77 = a3;
        v78 = a4 & 0xFFFFFFFFFFFFFFLL;
        v14 = a1 >> 16;
        v71 = (HIBYTE(a4) & 0xF) + (a1 >> 16);
        v72 = a2 >> 16;
        v73 = v11 & 0xFFFFFFFFFFFFLL;
        if ((v10 & 0x2000000000000000) != 0)
        {
          v73 = HIBYTE(v10) & 0xF;
        }

        _StringGuts.reserveCapacity(_:)(v71 - v72 + v73);
        v18 = v5[1] & 0xFFFFFFFFFFFFFFFLL;
        v21 = &v77;
        v19 = v14;
        v20 = v72;
        v22 = HIBYTE(a4) & 0xF;
      }

      else
      {
        if ((a3 & 0x1000000000000000) != 0)
        {
          v12 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v13 = a3 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = _StringObject.sharedUTF8.getter(a3, a4);
          v13 = v75;
        }

        v14 = a1 >> 16;
        v15 = v13 + (a1 >> 16);
        v16 = a2 >> 16;
        v17 = v11 & 0xFFFFFFFFFFFFLL;
        if ((v10 & 0x2000000000000000) != 0)
        {
          v17 = HIBYTE(v10) & 0xF;
        }

        _StringGuts.reserveCapacity(_:)(v17 - v16 + v15);
        v18 = v5[1] & 0xFFFFFFFFFFFFFFFLL;
        v19 = v14;
        v20 = v16;
        v21 = v12;
        v22 = v13;
      }

      __StringStorage.replace(from:to:with:)(v19, v20, v21, v22);
      *v5 = *(v18 + 24);
    }
  }

  else
  {
    v76 = a2;
    v77 = 0;
    v78 = 0xE000000000000000;
    v23 = _StringGuts.nativeCapacity.getter(v11, v10);
    if ((v24 & 1) == 0)
    {
      v25 = v23;
      if (v23 >= 16)
      {
        v26 = _StringGuts.uniqueNativeCapacity.getter();
        if ((v27 & 1) != 0 || v26 < v25)
        {
          _StringGuts.grow(_:)(v25);
        }
      }
    }

    v28._rawBits = a1;
    v29 = specialized Collection.subscript.getter(v28, v11, v10);
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v34;
    v36._rawBits = v29;
    v37._rawBits = v31;
    v38 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSs17UnicodeScalarViewV_s6UInt32Vs5NeverOTg506_sSS17def38V6append10contentsOfyx_tSTRzs0A0O0B0V7b7RtzlFs6G8VAHXEfU_Tf1cn_n(v36, v37, v33, v35);
    v35;
    v39 = _sSS14_fromCodeUnits_8encoding6repairSS_Sb11repairsMadetSgx_q_mSbtSlRzs16_UnicodeEncodingR_0B4UnitQy_7ElementRtzr0_lFZSays6UInt32VG_s0H0O5UTF32OTt0t2g5(v38, 1);
    if (!v40 || ((v41 = v39, v42 = v40, v38, v43 = specialized static String.+ infix(_:_:)(v77, v78, v41, v42), v45 = v44, v78, v42, (v45 & 0x2000000000000000) != 0) ? (v14 = HIBYTE(v45) & 0xF) : (v14 = v43 & 0xFFFFFFFFFFFFLL), (v46 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_s6UInt32Vs5NeverOTg506_sSS17def38V6append10contentsOfyx_tSTRzs0A0O0B0V7b7RtzlFs6G8VAHXEfU_Tf1cn_n(a3, a4), v47 = _sSS14_fromCodeUnits_8encoding6repairSS_Sb11repairsMadetSgx_q_mSbtSlRzs16_UnicodeEncodingR_0B4UnitQy_7ElementRtzr0_lFZSays6UInt32VG_s0H0O5UTF32OTt0t2g5(v46, 1), !v48) || (v49 = v47, v50 = v48, v46, v51 = specialized static String.+ infix(_:_:)(v43, v45, v49, v50), v53 = v52, v45, v50, v77 = v51, v78 = v53, v54 = specialized Collection.subscript.getter(v76, v11, v10), v56 = v55, v58 = v57, v60 = v59, v59, v61._rawBits = v54, v62._rawBits = v56, v63 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSs17UnicodeScalarViewV_s6UInt32Vs5NeverOTg506_sSS17def38V6append10contentsOfyx_tSTRzs0A0O0B0V7b7RtzlFs6G8VAHXEfU_Tf1cn_n(v61, v62, v58, v60), v60, v64 = _sSS14_fromCodeUnits_8encoding6repairSS_Sb11repairsMadetSgx_q_mSbtSlRzs16_UnicodeEncodingR_0B4UnitQy_7ElementRtzr0_lFZSays6UInt32VG_s0H0O5UTF32OTt0t2g5(v63, 1), !v65)))
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v66 = v64;
    v67 = v65;
    v63;
    v68 = specialized static String.+ infix(_:_:)(v51, v53, v66, v67);
    v70 = v69;
    v10;
    v53;
    v67;
    *v5 = v68;
    v5[1] = v70;
  }

  return v14;
}

unint64_t specialized _StringGuts.replaceSubrange<A>(_:with:)(unint64_t a1, unint64_t a2, int a3)
{
  v8 = *v3;
  v7 = v3[1];
  if ((*v3 & ~v7 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v7 & 0xFFFFFFFFFFFFFFFLL))
  {
    return specialized _StringGuts.uniqueNativeReplaceSubrange<A>(_:with:)(a1, a2, a3, protocol witness for ExpressibleByUnicodeScalarLiteral.init(unicodeScalarLiteral:) in conformance Unicode.Scalar, 0);
  }

  v56 = a2;
  v10 = _StringGuts.nativeCapacity.getter(v8, v7);
  if ((v11 & 1) == 0)
  {
    String.reserveCapacity(_:)(v10);
  }

  v12._rawBits = a1;
  v13 = specialized Collection.subscript.getter(v12, v8, v7);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v18;
  v20._rawBits = v13;
  v21._rawBits = v15;
  v22 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSs17UnicodeScalarViewV_s6UInt32Vs5NeverOTg506_sSS17def38V6append10contentsOfyx_tSTRzs0A0O0B0V7b7RtzlFs6G8VAHXEfU_Tf1cn_n(v20, v21, v17, v19);
  v23 = _sSS14_fromCodeUnits_8encoding6repairSS_Sb11repairsMadetSgx_q_mSbtSlRzs16_UnicodeEncodingR_0B4UnitQy_7ElementRtzr0_lFZSays6UInt32VG_s0H0O5UTF32OTt0t2g5(v22, 1);
  if (!v24 || ((v25 = v23, v26 = v24, v22, v27 = specialized static String.+ infix(_:_:)(0, 0xE000000000000000, v25, v26), v29 = v28, v19, 0xE000000000000000, v26, (v29 & 0x2000000000000000) != 0) ? (v9 = HIBYTE(v29) & 0xF) : (v9 = v27 & 0xFFFFFFFFFFFFLL), (v30 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyADs5NeverOs6UInt32VIsgnrzr_xSayAIGAGSTRzAIRsd__AGRsd_0_r_0_lIetMgnozo_Tp5s15CollectionOfOneVys7UnicodeO6ScalarVG_Tg506_sSS17ij42ViewV6append10contentsOfyx_tSTRzs0A0O0B0V7b7RtzlFs6E8VAHXEfU_Tf1cn_n(a3), v31 = _sSS14_fromCodeUnits_8encoding6repairSS_Sb11repairsMadetSgx_q_mSbtSlRzs16_UnicodeEncodingR_0B4UnitQy_7ElementRtzr0_lFZSays6UInt32VG_s0H0O5UTF32OTt0t2g5(v30, 1), !v32) || (v33 = v31, v34 = v32, v30, v35 = specialized static String.+ infix(_:_:)(v27, v29, v33, v34), v37 = v36, v29, v34, v38 = specialized Collection.subscript.getter(v56, v8, v7), v40 = v39, v42 = v41, v44 = v43, v43, v45._rawBits = v38, v46._rawBits = v40, v47 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSs17UnicodeScalarViewV_s6UInt32Vs5NeverOTg506_sSS17def38V6append10contentsOfyx_tSTRzs0A0O0B0V7b7RtzlFs6G8VAHXEfU_Tf1cn_n(v45, v46, v42, v44), v48 = _sSS14_fromCodeUnits_8encoding6repairSS_Sb11repairsMadetSgx_q_mSbtSlRzs16_UnicodeEncodingR_0B4UnitQy_7ElementRtzr0_lFZSays6UInt32VG_s0H0O5UTF32OTt0t2g5(v47, 1), !v49)))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v50 = v48;
  v51 = v49;
  v47;
  v52 = specialized static String.+ infix(_:_:)(v35, v37, v50, v51);
  v54 = v53;
  v7;
  v44;
  v37;
  v51;
  *v3 = v52;
  v3[1] = v54;
  return v9;
}

uint64_t _StringGuts.replaceSubrange<A>(_:with:)(Swift::UInt64 a1, unint64_t a2, uint64_t a3, Class *a4, uint64_t a5)
{
  v198 = a2;
  v199 = a3;
  v196 = a5;
  v8 = *(a5 + 8);
  v9 = type metadata accessor for LazySequence(0, a4, v8, a4);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v192 = &v191 - v10;
  v11 = type metadata accessor for LazyMapSequence(255, a4, &type metadata for Unicode.Scalar.UTF8View, v8);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for LazyMapSequence<A, B>, v11, v12);
  v16 = lazy protocol witness table accessor for type Unicode.Scalar.UTF8View and conformance Unicode.Scalar.UTF8View(WitnessTable, v14, v15);
  v17 = type metadata accessor for FlattenSequence(255, v11, WitnessTable, v16);
  v19 = swift_getWitnessTable(protocol conformance descriptor for FlattenSequence<A>, v17, v18);
  v21 = type metadata accessor for LazySequence(0, v17, v19, v20);
  v194 = *(v21 - 8);
  v195 = v21;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v193 = &v191 - v23;
  v197 = *(a4 - 1);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = (&v191 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v24);
  v28 = (&v191 - v27);
  v30 = *v5;
  v29 = v5[1];
  v200 = v5;
  if ((v30 & ~v29 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v29 & 0xFFFFFFFFFFFFFFFLL))
  {
    v191 = a1;
    v31 = *(v197 + 16);
    v32 = v199;
    v31(v28, v199, a4);
    if (swift_dynamicCast(&__src, v28, a4, &type metadata for String.UnicodeScalarView, 6uLL))
    {
      v33 = v207;
      if ((v207 & 0x1000000000000000) == 0)
      {
        if ((v207 & 0x2000000000000000) == 0)
        {
          v34 = v191;
          if ((__src & 0x1000000000000000) != 0)
          {
            v31 = ((v207 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v11 = __src & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v31 = _StringObject.sharedUTF8.getter(__src, v207);
            v11 = v189;
          }

          v35 = v34 >> 16;
          v36 = v198 >> 16;
          v37 = v30 & 0xFFFFFFFFFFFFLL;
          if ((v29 & 0x2000000000000000) != 0)
          {
            v37 = HIBYTE(v29) & 0xF;
          }

          v38 = v11 + (v34 >> 16) + v37 - v36;
          v30 = v200;
          if (v38 < 16)
          {
            goto LABEL_93;
          }

          v39 = _StringGuts.uniqueNativeCapacity.getter();
          if ((v40 & 1) == 0 && v39 >= v38)
          {
            goto LABEL_93;
          }

          v41 = _StringGuts.uniqueNativeCapacity.getter();
          if (v42)
          {
            v43 = *(v30 + 8);
            if ((v43 & 0x1000000000000000) != 0)
            {
              v44 = String.UTF8View._foreignCount()();
            }

            else if ((v43 & 0x2000000000000000) != 0)
            {
              v44 = HIBYTE(v43) & 0xF;
            }

            else
            {
              v44 = *v30 & 0xFFFFFFFFFFFFLL;
            }
          }

          else
          {
            v44 = 2 * v41;
          }

          if (v44 <= v38)
          {
            v95 = v38;
          }

          else
          {
            v95 = v44;
          }

          v141 = *(v30 + 8);
          if ((v141 & 0x1000000000000000) == 0)
          {
            v142 = *v30;
            if ((v141 & 0x2000000000000000) != 0)
            {
              __src = *v30;
              v207 = v141 & 0xFFFFFFFFFFFFFFLL;
              v152 = HIBYTE(v141) & 0xF | 0xC000000000000000;
              if ((v141 & 0x4000000000000000) == 0)
              {
                v152 = HIBYTE(v141) & 0xF;
              }

              v153 = v152 | 0x3000000000000000;
              v145 = _allocateStringStorage(codeUnitCapacity:)(v95);
              *(v145 + 16) = v154;
              *(v145 + 24) = v153;
              if (v154 < 0)
              {
                *__StringStorage._breadcrumbsAddress.getter() = 0;
                v153 = *(v145 + 24);
              }

              *(v145 + 32 + (v153 & 0xFFFFFFFFFFFFLL)) = 0;
              specialized UnsafeMutablePointer.initialize(from:count:)(&__src, HIBYTE(v141) & 0xF, (v145 + 32));
            }

            else
            {
              if ((v142 & 0x1000000000000000) != 0)
              {
                v143 = ((v141 & 0xFFFFFFFFFFFFFFFLL) + 32);
                v144 = v142 & 0xFFFFFFFFFFFFLL;
              }

              else
              {
                v143 = _StringObject.sharedUTF8.getter(*v30, *(v30 + 8));
              }

              v145 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(v143, v144, v95, v142 < 0);
            }

            v155 = *(v145 + 24);
            v141;
            v156 = v200;
            *v200 = v155;
            v156[1] = v145;
            v30 = v156;
            goto LABEL_93;
          }

LABEL_142:
          _StringGuts._foreignGrow(_:)(v95);
LABEL_93:
          v157 = *(v30 + 8) & 0xFFFFFFFFFFFFFFFLL;
          v158 = v35;
          v159 = v36;
          v160 = v31;
          v161 = v11;
LABEL_134:
          __StringStorage.replace(from:to:with:)(v158, v159, v160, v161);
          *v30 = *(v157 + 24);
          v33;
          return v35;
        }

        v122 = HIBYTE(v207) & 0xF;
        v207 &= 0xFFFFFFFFFFFFFFuLL;
        v35 = v191 >> 16;
        v123 = v198 >> 16;
        v124 = v30 & 0xFFFFFFFFFFFFLL;
        if ((v29 & 0x2000000000000000) != 0)
        {
          v124 = HIBYTE(v29) & 0xF;
        }

        v125 = v122 + (v191 >> 16) + v124 - v123;
        v126 = v200;
        if (v125 > 15)
        {
          v127 = _StringGuts.uniqueNativeCapacity.getter();
          if ((v128 & 1) != 0 || v127 < v125)
          {
            v129 = _StringGuts.uniqueNativeCapacity.getter();
            if (v130)
            {
              v131 = v126[1];
              if ((v131 & 0x1000000000000000) != 0)
              {
                v132 = String.UTF8View._foreignCount()();
              }

              else if ((v131 & 0x2000000000000000) != 0)
              {
                v132 = HIBYTE(v131) & 0xF;
              }

              else
              {
                v132 = *v126 & 0xFFFFFFFFFFFFLL;
              }
            }

            else
            {
              v132 = 2 * v129;
            }

            if (v132 <= v125)
            {
              v146 = v125;
            }

            else
            {
              v146 = v132;
            }

            v147 = v126[1];
            if ((v147 & 0x1000000000000000) != 0)
            {
              _StringGuts._foreignGrow(_:)(v146);
            }

            else
            {
              v148 = *v126;
              if ((v147 & 0x2000000000000000) != 0)
              {
                v201 = v148;
                v202 = v147 & 0xFFFFFFFFFFFFFFLL;
                v162 = HIBYTE(v147) & 0xF | 0xC000000000000000;
                if ((v147 & 0x4000000000000000) == 0)
                {
                  v162 = HIBYTE(v147) & 0xF;
                }

                v163 = v162 | 0x3000000000000000;
                v151 = _allocateStringStorage(codeUnitCapacity:)(v146);
                *(v151 + 16) = v164;
                *(v151 + 24) = v163;
                if (v164 < 0)
                {
                  *__StringStorage._breadcrumbsAddress.getter() = 0;
                  v163 = *(v151 + 24);
                }

                *(v151 + 32 + (v163 & 0xFFFFFFFFFFFFLL)) = 0;
                specialized UnsafeMutablePointer.initialize(from:count:)(&v201, HIBYTE(v147) & 0xF, (v151 + 32));
              }

              else
              {
                if ((v148 & 0x1000000000000000) != 0)
                {
                  v149 = ((v147 & 0xFFFFFFFFFFFFFFFLL) + 32);
                  v150 = v148 & 0xFFFFFFFFFFFFLL;
                }

                else
                {
                  v149 = _StringObject.sharedUTF8.getter(v148, v147);
                }

                v151 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(v149, v150, v146, v148 < 0);
              }

              v165 = *(v151 + 24);
              v147;
              v126 = v200;
              *v200 = v165;
              v126[1] = v151;
            }
          }
        }

        v166 = v126[1] & 0xFFFFFFFFFFFFFFFLL;
        p_src = &__src;
        goto LABEL_126;
      }

      goto LABEL_135;
    }

    v31(v26, v32, a4);
    if ((swift_dynamicCast(&__src, v26, a4, &type metadata for Substring.UnicodeScalarView, 6uLL) & 1) == 0)
    {
      v112 = v32;
LABEL_46:
      v113 = v192;
      v31(v192, v112, a4);
      v114 = v193;
      (*(v197 + 32))(v193, v113, a4);
      v115 = (v114 + *(v11 + 44));
      *v115 = protocol witness for ExpressibleByUnicodeScalarLiteral.init(unicodeScalarLiteral:) in conformance Unicode.Scalar;
      v115[1] = 0;
      v205 = v196;
      v116 = swift_getWitnessTable(protocol conformance descriptor for <> LazyMapSequence<A, B>, v11, &v205);
      v119 = lazy protocol witness table accessor for type Unicode.Scalar.UTF8View and conformance Unicode.Scalar.UTF8View(v116, v117, v118);
      v204[0] = v116;
      v204[1] = v119;
      v203 = swift_getWitnessTable(protocol conformance descriptor for <> FlattenSequence<A>, v17, v204);
      v120 = v195;
      v121 = swift_getWitnessTable(protocol conformance descriptor for <> LazySequence<A>, v195, &v203);
      v35 = _StringGuts.uniqueNativeReplaceSubrange<A>(_:with:)(v191, v198, v114, v120, v121);
      (*(v194 + 8))(v114, v120);
      return v35;
    }

    v33 = v209;
    if ((v209 & 0x1000000000000000) != 0)
    {
LABEL_135:
      v33;
      v112 = v199;
      goto LABEL_46;
    }

    v93 = __src >> 16;
    v94 = v207 >> 16;
    if ((v209 & 0x2000000000000000) != 0)
    {
      __src = v208;
      v207 = v209 & 0xFFFFFFFFFFFFFFLL;
      if ((HIBYTE(v209) & 0xF) >= v94)
      {
        v122 = v94 - v93;
        if ((v94 - v93) >= 0)
        {
          v35 = v191 >> 16;
          v123 = v198 >> 16;
          v133 = v30 & 0xFFFFFFFFFFFFLL;
          if ((v29 & 0x2000000000000000) != 0)
          {
            v133 = HIBYTE(v29) & 0xF;
          }

          v134 = v122 + (v191 >> 16) + v133 - v123;
          v126 = v200;
          if (v134 >= 16)
          {
            v135 = _StringGuts.uniqueNativeCapacity.getter();
            if ((v136 & 1) != 0 || v135 < v134)
            {
              v137 = _StringGuts.uniqueNativeCapacity.getter();
              if (v138)
              {
                v139 = v126[1];
                if ((v139 & 0x1000000000000000) != 0)
                {
                  v140 = String.UTF8View._foreignCount()();
                }

                else if ((v139 & 0x2000000000000000) != 0)
                {
                  v140 = HIBYTE(v139) & 0xF;
                }

                else
                {
                  v140 = *v126 & 0xFFFFFFFFFFFFLL;
                }
              }

              else
              {
                v140 = 2 * v137;
              }

              if (v140 <= v134)
              {
                v168 = v134;
              }

              else
              {
                v168 = v140;
              }

              v169 = v126[1];
              if ((v169 & 0x1000000000000000) != 0)
              {
                _StringGuts._foreignGrow(_:)(v168);
              }

              else
              {
                v170 = *v126;
                if ((v169 & 0x2000000000000000) != 0)
                {
                  v201 = v170;
                  v202 = v169 & 0xFFFFFFFFFFFFFFLL;
                  v180 = HIBYTE(v169) & 0xF | 0xC000000000000000;
                  if ((v169 & 0x4000000000000000) == 0)
                  {
                    v180 = HIBYTE(v169) & 0xF;
                  }

                  v181 = v180 | 0x3000000000000000;
                  v173 = _allocateStringStorage(codeUnitCapacity:)(v168);
                  *(v173 + 16) = v182;
                  *(v173 + 24) = v181;
                  if (v182 < 0)
                  {
                    *__StringStorage._breadcrumbsAddress.getter() = 0;
                    v181 = *(v173 + 24);
                  }

                  *(v173 + 32 + (v181 & 0xFFFFFFFFFFFFLL)) = 0;
                  specialized UnsafeMutablePointer.initialize(from:count:)(&v201, HIBYTE(v169) & 0xF, (v173 + 32));
                }

                else
                {
                  if ((v170 & 0x1000000000000000) != 0)
                  {
                    v171 = ((v169 & 0xFFFFFFFFFFFFFFFLL) + 32);
                    v172 = v170 & 0xFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v171 = _StringObject.sharedUTF8.getter(v170, v169);
                  }

                  v173 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(v171, v172, v168, v170 < 0);
                }

                v183 = *(v173 + 24);
                v169;
                v126 = v200;
                *v200 = v183;
                v126[1] = v173;
              }
            }
          }

          v166 = v126[1] & 0xFFFFFFFFFFFFFFFLL;
          p_src = &__src + v93;
LABEL_126:
          __StringStorage.replace(from:to:with:)(v35, v123, p_src, v122);
          v33;
          *v126 = *(v166 + 24);
          return v35;
        }
      }
    }

    else
    {
      v95 = v191;
      if ((v208 & 0x1000000000000000) != 0)
      {
        v96 = ((v209 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v97 = v208 & 0xFFFFFFFFFFFFLL;
        if ((v208 & 0xFFFFFFFFFFFFLL) < v94)
        {
          goto LABEL_140;
        }
      }

      else
      {
        v11 = v207 >> 16;
        v96 = _StringObject.sharedUTF8.getter(v208, v209);
        v97 = v190;
        v94 = v11;
        if (v97 < v11)
        {
          goto LABEL_140;
        }
      }

      v98 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v93, v94, v96, v97);
      v35 = v95 >> 16;
      v100 = (v95 >> 16) + v99;
      if (!__OFADD__(v95 >> 16, v99))
      {
        v36 = v198 >> 16;
        v101 = v30 & 0xFFFFFFFFFFFFLL;
        if ((v29 & 0x2000000000000000) != 0)
        {
          v101 = HIBYTE(v29) & 0xF;
        }

        v102 = v101 - v36;
        v103 = v100 + v102;
        if (!__OFADD__(v100, v102))
        {
          v104 = v98;
          v105 = v99;
          v30 = v200;
          if (v103 >= 16)
          {
            v106 = _StringGuts.uniqueNativeCapacity.getter();
            if ((v107 & 1) != 0 || v106 < v103)
            {
              v108 = _StringGuts.uniqueNativeCapacity.getter();
              if (v109)
              {
                v110 = *(v30 + 8);
                if ((v110 & 0x1000000000000000) != 0)
                {
                  v111 = String.UTF8View._foreignCount()();
                }

                else if ((v110 & 0x2000000000000000) != 0)
                {
                  v111 = HIBYTE(v110) & 0xF;
                }

                else
                {
                  v111 = *v30 & 0xFFFFFFFFFFFFLL;
                }
              }

              else
              {
                v111 = 2 * v108;
              }

              if (v111 <= v103)
              {
                v174 = v103;
              }

              else
              {
                v174 = v111;
              }

              v175 = *(v30 + 8);
              if ((v175 & 0x1000000000000000) != 0)
              {
                _StringGuts._foreignGrow(_:)(v174);
              }

              else
              {
                v176 = *v30;
                if ((v175 & 0x2000000000000000) != 0)
                {
                  __src = *v30;
                  v207 = v175 & 0xFFFFFFFFFFFFFFLL;
                  v184 = HIBYTE(v175) & 0xF | 0xC000000000000000;
                  if ((v175 & 0x4000000000000000) == 0)
                  {
                    v184 = HIBYTE(v175) & 0xF;
                  }

                  v185 = v184 | 0x3000000000000000;
                  v179 = _allocateStringStorage(codeUnitCapacity:)(v174);
                  *(v179 + 16) = v186;
                  *(v179 + 24) = v185;
                  if (v186 < 0)
                  {
                    *__StringStorage._breadcrumbsAddress.getter() = 0;
                    v185 = *(v179 + 24);
                  }

                  *(v179 + 32 + (v185 & 0xFFFFFFFFFFFFLL)) = 0;
                  specialized UnsafeMutablePointer.initialize(from:count:)(&__src, HIBYTE(v175) & 0xF, (v179 + 32));
                }

                else
                {
                  if ((v176 & 0x1000000000000000) != 0)
                  {
                    v177 = ((v175 & 0xFFFFFFFFFFFFFFFLL) + 32);
                    v178 = v176 & 0xFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v177 = _StringObject.sharedUTF8.getter(*v30, *(v30 + 8));
                  }

                  v179 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(v177, v178, v174, v176 < 0);
                }

                v187 = *(v179 + 24);
                v175;
                v188 = v200;
                *v200 = v187;
                v188[1] = v179;
                v30 = v188;
              }
            }
          }

          v157 = *(v30 + 8) & 0xFFFFFFFFFFFFFFFLL;
          v158 = v35;
          v159 = v36;
          v160 = v104;
          v161 = v105;
          goto LABEL_134;
        }

        __break(1u);
        goto LABEL_142;
      }

      __break(1u);
    }

LABEL_140:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  __src = 0;
  v207 = 0xE000000000000000;
  v45 = _StringGuts.nativeCapacity.getter(v30, v29);
  if ((v46 & 1) == 0)
  {
    String.reserveCapacity(_:)(v45);
  }

  v47._rawBits = a1;
  v48 = specialized Collection.subscript.getter(v47, v30, v29);
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v53;
  v55._rawBits = v48;
  v56._rawBits = v50;
  v57 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSs17UnicodeScalarViewV_s6UInt32Vs5NeverOTg506_sSS17def38V6append10contentsOfyx_tSTRzs0A0O0B0V7b7RtzlFs6G8VAHXEfU_Tf1cn_n(v55, v56, v52, v54);
  v58 = _sSS14_fromCodeUnits_8encoding6repairSS_Sb11repairsMadetSgx_q_mSbtSlRzs16_UnicodeEncodingR_0B4UnitQy_7ElementRtzr0_lFZSays6UInt32VG_s0H0O5UTF32OTt0t2g5(v57, 1);
  if (!v59 || ((v60 = v58, v61 = v59, v57, v62 = v207, v63 = specialized static String.+ infix(_:_:)(__src, v207, v60, v61), v65 = v64, v54, v62, v61, (v65 & 0x2000000000000000) != 0) ? (v35 = HIBYTE(v65) & 0xF) : (v35 = v63 & 0xFFFFFFFFFFFFLL), (v66 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyADs5NeverOs6UInt32VIsgnrzr_xSayAIGAGSTRzAIRsd__AGRsd_0_r_0_lIetMgnozo_Tp5(protocol witness for ExpressibleByUnicodeScalarLiteral.init(unicodeScalarLiteral:) in conformance Unicode.Scalar, 0, a4, v8), v67 = _sSS14_fromCodeUnits_8encoding6repairSS_Sb11repairsMadetSgx_q_mSbtSlRzs16_UnicodeEncodingR_0B4UnitQy_7ElementRtzr0_lFZSays6UInt32VG_s0H0O5UTF32OTt0t2g5(v66, 1), !v68) || (v69 = v67, v70 = v68, v66, v71 = specialized static String.+ infix(_:_:)(v63, v65, v69, v70), v73 = v72, v65, v70, __src = v71, v207 = v73, v74 = specialized Collection.subscript.getter(v198, v30, v29), v76 = v75, v78 = v77, v80 = v79, v79, v81._rawBits = v74, v82._rawBits = v76, v83 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSs17UnicodeScalarViewV_s6UInt32Vs5NeverOTg506_sSS17def38V6append10contentsOfyx_tSTRzs0A0O0B0V7b7RtzlFs6G8VAHXEfU_Tf1cn_n(v81, v82, v78, v80), v84 = _sSS14_fromCodeUnits_8encoding6repairSS_Sb11repairsMadetSgx_q_mSbtSlRzs16_UnicodeEncodingR_0B4UnitQy_7ElementRtzr0_lFZSays6UInt32VG_s0H0O5UTF32OTt0t2g5(v83, 1), !v85)))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v86 = v84;
  v87 = v85;
  v83;
  v88 = specialized static String.+ infix(_:_:)(v71, v73, v86, v87);
  v90 = v89;
  v29;
  v80;
  v73;
  v87;
  v91 = v200;
  *v200 = v88;
  v91[1] = v90;
  return v35;
}

void __StringStorage.replace(from:to:with:)(uint64_t a1, uint64_t a2, char *a3, size_t a4)
{
  v8 = (v4 + 32 + a1);
  v9 = (*(v4 + 24) & 0xFFFFFFFFFFFFLL) - a2;
  specialized UnsafeMutablePointer.moveInitialize(from:count:)((v4 + 32 + a2), v9, &v8[a4]);
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a3, a4, v8);
  if ((*(v4 + 24) & 0x8000000000000000) == 0)
  {
    v10 = 0;
    v11 = a1 + a4;
    if (!__OFADD__(a1, a4))
    {
      goto LABEL_3;
    }

LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = _allASCII(_:)(a3, a4);
  v11 = a1 + a4;
  if (__OFADD__(a1, a4))
  {
    goto LABEL_9;
  }

LABEL_3:
  v12 = __OFADD__(v11, v9);
  v13 = v11 + v9;
  if (v12)
  {
LABEL_10:
    __break(1u);
    return;
  }

  __StringStorage._updateCountAndFlags(newCount:newIsASCII:)(v13, v10);
}

void specialized __StringStorage.replace<A>(from:to:with:replacementCount:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void *__return_ptr, void), atomic_ullong *a6, uint64_t a7)
{
  v8 = v7;
  v34 = v8 + 32 + a1;
  v30 = (*(v8 + 24) & 0xFFFFFFFFFFFFLL) - a2;
  specialized UnsafeMutablePointer.moveInitialize(from:count:)((v8 + 32 + a2), v30, (v34 + a7));
  v13 = *(v8 + 24);
  if ((a4 & 0x2000000000000000) != 0)
  {
    v14 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v14 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v15 = v13 >> 63;
  v16 = a4 & 0xFFFFFFFFFFFFFFLL;
  a4;
  a6;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 1;
  v33 = a5;
LABEL_5:
  v35 = v19;
  while (1)
  {
    if ((v21 & 1) == 0)
    {
      if (v17 > 0x7F)
      {
        if (v17 >= 0x800)
        {
          if (v17 >> 16)
          {
            if (v18 != 4)
            {
LABEL_41:
              if ((v18 & 0x8000000000000000) != 0)
              {
                goto LABEL_46;
              }

              if (v17 >> 16)
              {
                if (v18 >= 4)
                {
                  goto LABEL_46;
                }
              }

              else if (v18 >= 3)
              {
LABEL_46:
                _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
              }

LABEL_36:
              v28 = specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(v17, v18);
              v18 = specialized RandomAccessCollection<>.index(after:)(v18, v17);
              v21 = 0;
              LOBYTE(v15) = (v28 >= 0) & v15;
              *(v34 + v35) = v28;
              v16 = a4 & 0xFFFFFFFFFFFFFFLL;
              a5 = v33;
              v19 = v35 + 1;
              if (!__OFADD__(v35, 1))
              {
                goto LABEL_5;
              }

              __break(1u);
LABEL_52:
              __break(1u);
LABEL_53:
              __break(1u);
              return;
            }
          }

          else if (v18 != 3)
          {
            goto LABEL_41;
          }
        }

        else if (v18 != 2)
        {
          if (v18 >= 2)
          {
            goto LABEL_46;
          }

          goto LABEL_36;
        }
      }

      else if (v18 != 1)
      {
        if (v18)
        {
          goto LABEL_46;
        }

        goto LABEL_36;
      }
    }

    if (v20 >= v14)
    {
      break;
    }

    if ((a4 & 0x1000000000000000) != 0)
    {
      v27 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)((v20 << 16));
      scalarLength = v27.scalarLength;
      value = v27._0._value;
    }

    else
    {
      if ((a4 & 0x2000000000000000) != 0)
      {
        v36[0] = a3;
        v36[1] = v16;
        v24 = v36 + v20;
      }

      else
      {
        v23 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
        if ((a3 & 0x1000000000000000) == 0)
        {
          v23 = _StringObject.sharedUTF8.getter(a3, a4);
        }

        v24 = &v23[v20];
      }

      value = *v24;
      if ((*v24 & 0x80000000) == 0)
      {
LABEL_6:
        scalarLength = 1;
        goto LABEL_7;
      }

      v26 = (__clz(value ^ 0xFF) - 24);
      if (v26 > 2)
      {
        if (v26 == 3)
        {
          value = ((value & 0xF) << 12) | ((v24[1] & 0x3F) << 6) | v24[2] & 0x3F;
          scalarLength = 3;
        }

        else
        {
          value = ((value & 0xF) << 18) | ((v24[1] & 0x3F) << 12) | ((v24[2] & 0x3F) << 6) | v24[3] & 0x3F;
          scalarLength = 4;
        }
      }

      else
      {
        if (v26 == 1)
        {
          goto LABEL_6;
        }

        value = v24[1] & 0x3F | ((value & 0x1F) << 6);
        scalarLength = 2;
      }
    }

LABEL_7:
    v20 += scalarLength;
    v37 = value;
    a5(v36, &v37);
    v21 = 0;
    v18 = 0;
    v17 = LODWORD(v36[0]);
  }

  a6;
  a4;
  v29 = a1 + a7;
  if (__OFADD__(a1, a7))
  {
    goto LABEL_52;
  }

  if (__OFADD__(v29, v30))
  {
    goto LABEL_53;
  }

  __StringStorage._updateCountAndFlags(newCount:newIsASCII:)(v29 + v30, v15 & 1);
}

void specialized __StringStorage.replace<A>(from:to:with:replacementCount:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v5 = v4;
  v9 = (*(v5 + 24) & 0xFFFFFFFFFFFFLL) - a2;
  specialized UnsafeMutablePointer.moveInitialize(from:count:)((v5 + 32 + a2), v9, (v5 + 32 + a1 + a4));
  v10 = *(v5 + 24) >> 63;
  v12 = *(a3 + 2);
  v11 = *(a3 + 3);
  v13 = *(a3 + 4);
  v14 = *(a3 + 5);
  v20 = *a3;
  *&v21 = v12;
  *(&v21 + 1) = v11;
  *&v22 = v20;
  *(&v22 + 1) = v13;
  v23 = v14;
  v24 = 0uLL;
  v11;
  v14;
  v15 = 0;
  while (1)
  {
    v16 = specialized FlattenSequence.Iterator.next()();
    if ((v16 & 0x100) != 0)
    {
      break;
    }

    LOBYTE(v10) = ((v16 & 0x80u) == 0) & v10;
    *(v5 + a1 + v15 + 32) = v16;
    if (__OFADD__(v15++, 1))
    {
      __break(1u);
      break;
    }
  }

  v19[2] = v22;
  v19[3] = v23;
  v19[4] = v24;
  v19[0] = v20;
  v19[1] = v21;
  outlined destroy of _HasContiguousBytes?(v19, &_ss15FlattenSequenceV8IteratorVys07LazyMapB0VySsSS8UTF8ViewVG_GMd, _ss15FlattenSequenceV8IteratorVys07LazyMapB0VySsSS8UTF8ViewVG_GMR);
  v18 = a1 + a4;
  if (__OFADD__(a1, a4))
  {
    __break(1u);
  }

  else if (!__OFADD__(v18, v9))
  {
    __StringStorage._updateCountAndFlags(newCount:newIsASCII:)(v18 + v9, v10 & 1);
    return;
  }

  __break(1u);
}

uint64_t _StringGuts.mutateSubrangeInSubstring(subrange:startIndex:endIndex:with:)(Swift::UInt64 a1, Swift::UInt64 a2, uint64_t *a3, Swift::UInt64 *a4, uint64_t (*a5)(uint64_t *))
{
  v7 = v5;
  v12 = v5[1];
  if ((v12 & 0x1000000000000000) != 0)
  {
    v6 = *v5;
    if ((*v5 & 0x800000000000000) == 0)
    {
LABEL_35:
      v28._rawBits = *a3;
      v29 = *a3 & 0xC;
      v30 = *a3;
      v48 = a5;
      if (v29 == 4)
      {
        goto LABEL_75;
      }

      while (1)
      {
        v31 = HIBYTE(v12) & 0xF;
        if ((v12 & 0x2000000000000000) == 0)
        {
          v31 = v6 & 0xFFFFFFFFFFFFLL;
        }

        v50 = v31;
        if (v31 < v30 >> 16)
        {
LABEL_79:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        startingAt = String.UTF8View._foreignDistance(from:to:)(15, v30);
        rawBits = *a4;
        if (v29 == 4)
        {
          v33 = *a4;
          v34._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v28)._rawBits;
          rawBits = v33;
          v28._rawBits = v34._rawBits;
        }

        if ((rawBits & 0xC) == 4)
        {
          rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(rawBits)._rawBits;
          if (v50 < v28._rawBits >> 16)
          {
            goto LABEL_79;
          }
        }

        else if (v50 < v28._rawBits >> 16)
        {
          goto LABEL_79;
        }

        if (v50 < rawBits >> 16)
        {
          goto LABEL_79;
        }

        v28._rawBits = String.UTF8View._foreignDistance(from:to:)(v28, rawBits);
        if ((a1 & 0xC) == 4)
        {
          a1 = _StringGuts._slowEnsureMatchingEncoding(_:)(a1)._rawBits;
        }

        if ((a2 & 0xC) == 4)
        {
          a2 = _StringGuts._slowEnsureMatchingEncoding(_:)(a2)._rawBits;
          if (v50 < a1 >> 16)
          {
            goto LABEL_79;
          }
        }

        else if (v50 < a1 >> 16)
        {
          goto LABEL_79;
        }

        if (v50 < a2 >> 16)
        {
          goto LABEL_79;
        }

        v29 = String.UTF8View._foreignDistance(from:to:)(a1, a2);
        v35 = v48(v7);
        v37 = v36 - v35;
        if (__OFSUB__(v36, v35))
        {
          break;
        }

        v38 = __OFADD__(v28._rawBits, v37);
        v39 = v28._rawBits + v37;
        if (v38)
        {
          goto LABEL_82;
        }

        v38 = __OFSUB__(v39, v29);
        v29 = v39 - v29;
        if (v38)
        {
          goto LABEL_83;
        }

        if (v35 == v36)
        {
          v40 = 0;
          v41 = startingAt << 16;
LABEL_69:
          v41 |= v40 << 8;
          goto LABEL_70;
        }

        v43 = *v7;
        v44 = v7[1];
        if ((v44 & 0x1000000000000000) == 0)
        {
          if ((v44 & 0x2000000000000000) != 0)
          {
            v51 = *v7;
            v52 = v44 & 0xFFFFFFFFFFFFFFLL;
            if (startingAt + 1 == (HIBYTE(v44) & 0xF))
            {
              goto LABEL_68;
            }

            v47 = *(&v51 + startingAt);
          }

          else
          {
            if ((v43 & 0x1000000000000000) != 0)
            {
              v45 = ((v44 & 0xFFFFFFFFFFFFFFFLL) + 32);
              v46 = v43 & 0xFFFFFFFFFFFFLL;
            }

            else
            {
              v45 = _StringObject.sharedUTF8.getter(*v7, v7[1]);
            }

            if (startingAt + 1 == v46)
            {
LABEL_68:
              v41 = startingAt << 16;
              v40 = 1;
              goto LABEL_69;
            }

            if (!v45)
            {
              goto LABEL_80;
            }

            v47 = *&v45[startingAt];
          }

          if (v47 != 2573 && (v47 & 0x80808080) == 0)
          {
            goto LABEL_68;
          }
        }

LABEL_84:
        a1 = startingAt;
        v40 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(startingAt);
        v41 = startingAt << 16;
        if (v40 <= 63)
        {
          goto LABEL_69;
        }

LABEL_70:
        *a3 = v41 | 5;
        result = _StringGuts.isOnGraphemeClusterBoundary(_:)((v41 | 5));
        if (result)
        {
          *a3 = v41 | 7;
        }

        a2 = startingAt + v29;
        if (!__OFADD__(startingAt, v29))
        {
          goto LABEL_32;
        }

        __break(1u);
LABEL_75:
        v30 = _StringGuts._slowEnsureMatchingEncoding(_:)(v28)._rawBits;
      }

      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }
  }

  result = a5(v5);
  if (__OFSUB__(v14, result))
  {
    __break(1u);
    goto LABEL_35;
  }

  v15 = a1 >> 16;
  v16 = *a3;
  v17 = *a3 >> 16;
  v18 = v14 - result + (a1 >> 16) - (a2 >> 16);
  a2 = v18 + (*a4 >> 16);
  v19 = (*a3 >> 8) & 0x3F;
  if (v19)
  {
    if (v19 + v17 < v15)
    {
      goto LABEL_31;
    }
  }

  else if (v17 < v15)
  {
    goto LABEL_31;
  }

  if (v17 == a2)
  {
    result = 0;
    v20 = v16 & 0xFFFFFFFFFFFF0000;
LABEL_25:
    v20 |= result << 8;
    goto LABEL_26;
  }

  v21 = *v7;
  v22 = v7[1];
  if ((v22 & 0x1000000000000000) == 0)
  {
    if ((v22 & 0x2000000000000000) != 0)
    {
      v51 = *v7;
      v52 = v22 & 0xFFFFFFFFFFFFFFLL;
      if (v17 + 1 == (HIBYTE(v22) & 0xF))
      {
        goto LABEL_24;
      }

      v25 = *(&v51 + v17);
    }

    else
    {
      if ((v21 & 0x1000000000000000) != 0)
      {
        v23 = ((v22 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v24 = v21 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v23 = _StringObject.sharedUTF8.getter(*v7, v7[1]);
        v24 = v42;
      }

      if (v17 + 1 == v24)
      {
        goto LABEL_24;
      }

      if (!v23)
      {
LABEL_80:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v25 = *&v23[v17];
    }

    if (v25 == 2573 || (v25 & 0x8080) != 0)
    {
      goto LABEL_54;
    }

LABEL_24:
    v20 = v16 & 0xFFFFFFFFFFFF0000;
    result = 1;
    goto LABEL_25;
  }

LABEL_54:
  result = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v17);
  v20 = v16 & 0xFFFFFFFFFFFF0000;
  if (result <= 63)
  {
    goto LABEL_25;
  }

LABEL_26:
  v27 = v20 | 5;
  if ((v16 & 2) != 0)
  {
    if (v17 < v15 || (result = _StringGuts.isOnGraphemeClusterBoundary(_:)((v20 | 5)), (result & 1) != 0))
    {
      v27 = v20 | 7;
    }
  }

  *a3 = v27;
LABEL_31:
  if (v18)
  {
LABEL_32:
    *a4 = (a2 << 16) | 5;
  }

  return result;
}

Swift::Int __swiftcall String.UTF8View.distance(from:to:)(Swift::String::Index from, Swift::String::Index to)
{
  v4 = v2;
  v5 = (v2 >> 59) & 1;
  if ((v3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  v6 = 4 << v5;
  if ((from._rawBits & 0xC) == 4 << v5)
  {
    rawBits = to._rawBits;
    v9 = v3;
    from._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(from)._rawBits;
    to._rawBits = rawBits;
    v3 = v9;
  }

  if ((to._rawBits & 0xC) == v6)
  {
    v10 = from._rawBits;
    v11 = v3;
    v12._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(to)._rawBits;
    v3 = v11;
    to._rawBits = v12._rawBits;
    from._rawBits = v10;
    if ((v11 & 0x1000000000000000) == 0)
    {
      return (to._rawBits >> 16) - (from._rawBits >> 16);
    }
  }

  else if ((v3 & 0x1000000000000000) == 0)
  {
    return (to._rawBits >> 16) - (from._rawBits >> 16);
  }

  v13 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v13 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v13 < from._rawBits >> 16 || v13 < to._rawBits >> 16)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return String.UTF8View._foreignDistance(from:to:)(from, to);
}

Swift::String::Index __swiftcall String.Index.init(encodedOffset:transcodedOffset:characterStride:)(Swift::Int encodedOffset, Swift::Int transcodedOffset, Swift::Int characterStride)
{
  v3 = characterStride << 8;
  if (characterStride > 63)
  {
    v3 = 0;
  }

  return ((transcodedOffset << 14) | (encodedOffset << 16) | v3);
}

uint64_t _StringObject.init(object:discriminator:countAndFlags:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  a1 | a2;
  swift_unknownObjectRelease(a1);
  return a3;
}

unint64_t static _StringObject.Nibbles.small(isASCII:)(char a1)
{
  if (a1)
  {
    return 0xE000000000000000;
  }

  else
  {
    return 0xA000000000000000;
  }
}

Swift::_StringObject::CountAndFlags __swiftcall _StringObject.CountAndFlags.init(immortalCount:isASCII:)(Swift::Int immortalCount, Swift::Bool isASCII)
{
  v2 = immortalCount | 0xC000000000000000;
  if (!isASCII)
  {
    v2 = immortalCount;
  }

  return (v2 | 0x1000000000000000);
}

id _StringObject.getSharedUTF8Start()(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 12)
  {
    return *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  }

  if ((a2 & 0x4000000000000000) != 0)
  {
    return [a2 & 0xFFFFFFFFFFFFFFFLL _fastCStringContents_];
  }

  return *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
}

uint64_t specialized StringProtocol.hasSuffix<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v8 = type metadata accessor for ReversedCollection(0, a3, *(a4 + 8), a4);
  v9 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - v10;
  (*(*(v5 - 8) + 16))(&v15 - v10, v4, v5);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ReversedCollection<A>, v8, v12);
  LOBYTE(v5) = specialized Sequence<>.starts<A>(with:)(a1, a2, v8, WitnessTable);
  (*(v9 + 8))(v11, v8);
  return v5 & 1;
}

uint64_t StringProtocol.hasSuffix<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v8 = a3;
  v11 = type metadata accessor for ReversedCollection(0, a3, *(a5 + 8), a4);
  v12 = *(v11 - 1);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - v13;
  v16 = type metadata accessor for ReversedCollection(0, a2, *(a4 + 8), v15);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v25 - v18;
  (*(*(a2 - 8) + 16))(&v25 - v18, v6, a2);
  (*(*(v8 - 8) + 16))(v14, a1, v8);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ReversedCollection<A>, v16, v20);
  v23 = swift_getWitnessTable(protocol conformance descriptor for ReversedCollection<A>, v11, v22);
  LOBYTE(v8) = Sequence<>.starts<A>(with:)(v14, v16, v11, WitnessTable, v23, &protocol witness table for Character);
  (*(v12 + 8))(v14, v11);
  (*(v17 + 8))(v19, v16);
  return v8 & 1;
}

Swift::Void __swiftcall Substring._slowMakeContiguousUTF8()()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *v0;
  v1;
  rawBits = _StringGuts.validateInclusiveScalarIndex(_:)(15)._rawBits;
  v107._rawBits = v3;
  v5 = _StringGuts.validateInclusiveScalarIndex(_:)(v3)._rawBits;
  v6._rawBits = rawBits;
  v7 = rawBits >> 14;
  v8 = v5 >> 14;
  if (v7 < v5 >> 14)
  {
    v9 = 0;
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if ((v1 & 0x1000000000000000) != 0)
      {
        v6._rawBits = String.UnicodeScalarView._foreignIndex(after:)(v6)._rawBits;
      }

      else
      {
        v11 = v6._rawBits >> 16;
        if ((v1 & 0x2000000000000000) != 0)
        {
          v108 = v2;
          v109 = v1 & 0xFFFFFFFFFFFFFFLL;
          v13 = *(&v108 + v11);
        }

        else
        {
          v12 = ((v1 & 0xFFFFFFFFFFFFFFFLL) + 32);
          if ((v2 & 0x1000000000000000) == 0)
          {
            v12 = _StringObject.sharedUTF8.getter(v2, v1);
          }

          v13 = v12[v11];
        }

        v14 = v13;
        v15 = __clz(v13 ^ 0xFF) - 24;
        if (v14 >= 0)
        {
          LOBYTE(v15) = 1;
        }

        v6._rawBits = ((v11 + v15) << 16) | 5;
      }

      ++v9;
      if (v8 <= v6._rawBits >> 14)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
    goto LABEL_151;
  }

  if (v8 < v7)
  {
    v10 = 0;
    while (1)
    {
      v16 = __OFSUB__(v10--, 1);
      if (v16)
      {
        goto LABEL_152;
      }

      if ((v1 & 0x1000000000000000) != 0)
      {
        v6._rawBits = String.UnicodeScalarView._foreignIndex(before:)(v6)._rawBits;
      }

      else
      {
        if ((v1 & 0x2000000000000000) != 0)
        {
          v108 = v2;
          v109 = v1 & 0xFFFFFFFFFFFFFFLL;
          if ((*(&v107._rawBits + (v6._rawBits >> 16) + 7) & 0xC0) == 0x80)
          {
            v22 = &v107._rawBits + (v6._rawBits >> 16) + 6;
            v21 = 1;
            do
            {
              ++v21;
              v23 = *v22--;
            }

            while ((v23 & 0xC0) == 0x80);
          }

          else
          {
            v21 = 1;
          }
        }

        else
        {
          v17 = ((v1 & 0xFFFFFFFFFFFFFFFLL) + 32);
          if ((v2 & 0x1000000000000000) == 0)
          {
            v24 = v6._rawBits;
            v17 = _StringObject.sharedUTF8.getter(v2, v1);
            v6._rawBits = v24;
          }

          v18 = 0;
          v19 = v17 + (v6._rawBits >> 16) - 1;
          do
          {
            v20 = *(v19 + v18--) & 0xC0;
          }

          while (v20 == 128);
          v21 = -v18;
        }

        v6._rawBits = (v6._rawBits - (v21 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      }

      if (v8 >= v6._rawBits >> 14)
      {
        goto LABEL_34;
      }
    }
  }

  v10 = 0;
LABEL_34:
  v1;
  v25._rawBits = v106[1];
  v1;
  v26 = _StringGuts.validateInclusiveScalarIndex(_:)(v107)._rawBits;
  v27 = _StringGuts.validateInclusiveScalarIndex(_:)(v25)._rawBits;
  v28._rawBits = v26;
  v29 = v26 >> 14;
  v30 = v27 >> 14;
  v105 = v25._rawBits;
  if (v29 < v27 >> 14)
  {
    v31 = 0;
    while (1)
    {
      v32 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if ((v1 & 0x1000000000000000) != 0)
      {
        v28._rawBits = String.UnicodeScalarView._foreignIndex(after:)(v28)._rawBits;
      }

      else
      {
        v33 = v28._rawBits >> 16;
        if ((v1 & 0x2000000000000000) != 0)
        {
          v108 = v2;
          v109 = v1 & 0xFFFFFFFFFFFFFFLL;
          v35 = *(&v108 + v33);
        }

        else
        {
          v34 = ((v1 & 0xFFFFFFFFFFFFFFFLL) + 32);
          if ((v2 & 0x1000000000000000) == 0)
          {
            v34 = _StringObject.sharedUTF8.getter(v2, v1);
          }

          v35 = v34[v33];
        }

        v36 = v35;
        v37 = __clz(v35 ^ 0xFF) - 24;
        if (v36 >= 0)
        {
          LOBYTE(v37) = 1;
        }

        v28._rawBits = ((v33 + v37) << 16) | 5;
      }

      ++v31;
      if (v30 <= v28._rawBits >> 14)
      {
        goto LABEL_67;
      }
    }

LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
LABEL_153:
    __break(1u);
    goto LABEL_154;
  }

  if (v30 < v29)
  {
    v32 = 0;
    while (1)
    {
      v16 = __OFSUB__(v32--, 1);
      if (v16)
      {
        goto LABEL_153;
      }

      if ((v1 & 0x1000000000000000) != 0)
      {
        v28._rawBits = String.UnicodeScalarView._foreignIndex(before:)(v28)._rawBits;
      }

      else
      {
        if ((v1 & 0x2000000000000000) != 0)
        {
          v108 = v2;
          v109 = v1 & 0xFFFFFFFFFFFFFFLL;
          if ((*(&v107._rawBits + (v28._rawBits >> 16) + 7) & 0xC0) == 0x80)
          {
            v43 = &v107._rawBits + (v28._rawBits >> 16) + 6;
            v42 = 1;
            do
            {
              ++v42;
              v44 = *v43--;
            }

            while ((v44 & 0xC0) == 0x80);
          }

          else
          {
            v42 = 1;
          }
        }

        else
        {
          v38 = ((v1 & 0xFFFFFFFFFFFFFFFLL) + 32);
          if ((v2 & 0x1000000000000000) == 0)
          {
            v100 = v28._rawBits;
            v38 = _StringObject.sharedUTF8.getter(v2, v1);
            v28._rawBits = v100;
          }

          v39 = 0;
          v40 = v38 + (v28._rawBits >> 16) - 1;
          do
          {
            v41 = *(v40 + v39--) & 0xC0;
          }

          while (v41 == 128);
          v42 = -v39;
        }

        v28._rawBits = (v28._rawBits - (v42 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      }

      if (v30 >= v28._rawBits >> 14)
      {
        goto LABEL_67;
      }
    }
  }

  v32 = 0;
LABEL_67:
  v1;
  v45 = specialized static String._copying(_:)(v2, v1);
  v47 = v46;
  v46;
  v48._rawBits = _StringGuts.validateInclusiveScalarIndex(_:)(15)._rawBits;
  if (v10 < 0)
  {
    v59 = 0;
    v60 = &v107._rawBits + 7;
    v61 = &v107._rawBits + 6;
    while (1)
    {
      v62 = v48._rawBits >> 16;
      if (!(v48._rawBits >> 16))
      {
        break;
      }

      if ((v47 & 0x1000000000000000) != 0)
      {
        v69 = v48._rawBits;
        v101 = v60;
        v70 = v61;
        v71._rawBits = String.UnicodeScalarView._foreignIndex(before:)(v69)._rawBits;
        v61 = v70;
        v60 = v101;
        v48._rawBits = v71._rawBits;
      }

      else
      {
        if ((v47 & 0x2000000000000000) != 0)
        {
          v108 = v45;
          v109 = v47 & 0xFFFFFFFFFFFFFFLL;
          if ((v60[v62] & 0xC0) == 0x80)
          {
            v67 = &v61[v62];
            v66 = 1;
            do
            {
              ++v66;
              v68 = *v67--;
            }

            while ((v68 & 0xC0) == 0x80);
          }

          else
          {
            v66 = 1;
          }
        }

        else
        {
          v63 = ((v47 & 0xFFFFFFFFFFFFFFFLL) + 32);
          if ((v45 & 0x1000000000000000) == 0)
          {
            v98 = v61;
            v102 = v60;
            v63 = _StringObject.sharedUTF8.getter(v45, v47);
            v61 = v98;
            v60 = v102;
          }

          v64 = 0;
          do
          {
            v65 = v63[(v48._rawBits >> 16) - 1 + v64--] & 0xC0;
          }

          while (v65 == 128);
          v66 = -v64;
        }

        v48._rawBits = (v48._rawBits - (v66 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      }

      if (v10 >= --v59)
      {
        goto LABEL_104;
      }
    }

LABEL_149:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v10)
  {
    if ((v47 & 0x2000000000000000) != 0)
    {
      v49 = HIBYTE(v47) & 0xF;
    }

    else
    {
      v49 = v45 & 0xFFFFFFFFFFFFLL;
    }

    v50 = v47 & 0xFFFFFFFFFFFFFFLL;
    while (1)
    {
      v51 = v48._rawBits >> 16;
      if (v48._rawBits >> 16 >= v49)
      {
        goto LABEL_149;
      }

      if ((v47 & 0x1000000000000000) != 0)
      {
        v56 = v50;
        v57._rawBits = String.UnicodeScalarView._foreignIndex(after:)(v48)._rawBits;
        v50 = v56;
        v48._rawBits = v57._rawBits;
        if (!--v10)
        {
          break;
        }
      }

      else
      {
        if ((v47 & 0x2000000000000000) != 0)
        {
          v108 = v45;
          v109 = v50;
          v53 = *(&v108 + v51);
        }

        else
        {
          v52 = ((v47 & 0xFFFFFFFFFFFFFFFLL) + 32);
          if ((v45 & 0x1000000000000000) == 0)
          {
            v58 = v50;
            v52 = _StringObject.sharedUTF8.getter(v45, v47);
            v50 = v58;
          }

          v53 = v52[v51];
        }

        v54 = v53;
        v55 = __clz(v53 ^ 0xFF) - 24;
        if (v54 >= 0)
        {
          LOBYTE(v55) = 1;
        }

        v48._rawBits = ((v51 + v55) << 16) | 5;
        if (!--v10)
        {
          break;
        }
      }
    }
  }

LABEL_104:
  v72._rawBits = _StringGuts.validateInclusiveScalarIndex(_:)(v48)._rawBits;
  if (v32 < 0)
  {
    v83 = 0;
    v84 = &v107._rawBits + 7;
    v85 = &v107._rawBits + 6;
    while (1)
    {
      v86 = v72._rawBits >> 16;
      if (!(v72._rawBits >> 16))
      {
        goto LABEL_149;
      }

      if ((v47 & 0x1000000000000000) != 0)
      {
        v93 = v72._rawBits;
        v103 = v84;
        v94 = v85;
        v95._rawBits = String.UnicodeScalarView._foreignIndex(before:)(v93)._rawBits;
        v85 = v94;
        v84 = v103;
        v72._rawBits = v95._rawBits;
      }

      else
      {
        if ((v47 & 0x2000000000000000) != 0)
        {
          v108 = v45;
          v109 = v47 & 0xFFFFFFFFFFFFFFLL;
          if ((v84[v86] & 0xC0) == 0x80)
          {
            v91 = &v85[v86];
            v90 = 1;
            do
            {
              ++v90;
              v92 = *v91--;
            }

            while ((v92 & 0xC0) == 0x80);
          }

          else
          {
            v90 = 1;
          }
        }

        else
        {
          v87 = ((v47 & 0xFFFFFFFFFFFFFFFLL) + 32);
          if ((v45 & 0x1000000000000000) == 0)
          {
            v99 = v85;
            v104 = v84;
            v87 = _StringObject.sharedUTF8.getter(v45, v47);
            v85 = v99;
            v84 = v104;
          }

          v88 = 0;
          do
          {
            v89 = v87[(v72._rawBits >> 16) - 1 + v88--] & 0xC0;
          }

          while (v89 == 128);
          v90 = -v88;
        }

        v72._rawBits = (v72._rawBits - (v90 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      }

      if (v32 >= --v83)
      {
        goto LABEL_141;
      }
    }
  }

  if (v32)
  {
    if ((v47 & 0x2000000000000000) != 0)
    {
      v73 = HIBYTE(v47) & 0xF;
    }

    else
    {
      v73 = v45 & 0xFFFFFFFFFFFFLL;
    }

    v74 = v47 & 0xFFFFFFFFFFFFFFLL;
    while (1)
    {
      v75 = v72._rawBits >> 16;
      if (v72._rawBits >> 16 >= v73)
      {
        goto LABEL_149;
      }

      if ((v47 & 0x1000000000000000) != 0)
      {
        v80 = v74;
        v81._rawBits = String.UnicodeScalarView._foreignIndex(after:)(v72)._rawBits;
        v74 = v80;
        v72._rawBits = v81._rawBits;
        if (!--v32)
        {
          break;
        }
      }

      else
      {
        if ((v47 & 0x2000000000000000) != 0)
        {
          v108 = v45;
          v109 = v74;
          v77 = *(&v108 + v75);
        }

        else
        {
          v76 = ((v47 & 0xFFFFFFFFFFFFFFFLL) + 32);
          if ((v45 & 0x1000000000000000) == 0)
          {
            v82 = v74;
            v76 = _StringObject.sharedUTF8.getter(v45, v47);
            v74 = v82;
          }

          v77 = v76[v75];
        }

        v78 = v77;
        v79 = __clz(v77 ^ 0xFF) - 24;
        if (v78 >= 0)
        {
          LOBYTE(v79) = 1;
        }

        v72._rawBits = ((v75 + v79) << 16) | 5;
        if (!--v32)
        {
          break;
        }
      }
    }
  }

LABEL_141:
  v47;
  if ((v107._rawBits & 2) != 0)
  {
    v96 = v48._rawBits | 3;
  }

  else
  {
    v96 = v48._rawBits;
  }

  if ((v105 & 2) != 0)
  {
    v97 = v72._rawBits | 3;
  }

  else
  {
    v97 = v72._rawBits;
  }

  if (v97 >> 14 < v96 >> 14)
  {
LABEL_154:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v1;
  *v106 = v96;
  v106[1] = v97;
  v106[2] = v45;
  v106[3] = v47;
}

Swift::String::Index __swiftcall String.UnicodeScalarView.index(_:offsetBy:)(Swift::String::Index _, Swift::Int offsetBy)
{
  v4 = v3;
  v5 = v2;
  result._rawBits = _StringGuts.validateInclusiveScalarIndex(_:)(_)._rawBits;
  if (offsetBy < 0)
  {
    v14 = 0;
    while (1)
    {
      v15 = result._rawBits >> 16;
      if (!(result._rawBits >> 16))
      {
        break;
      }

      if ((v4 & 0x1000000000000000) != 0)
      {
        result._rawBits = String.UnicodeScalarView._foreignIndex(before:)(result)._rawBits;
      }

      else
      {
        if ((v4 & 0x2000000000000000) != 0)
        {
          v25 = v5;
          v26 = v4 & 0xFFFFFFFFFFFFFFLL;
          if ((v24[v15 + 1] & 0xC0) == 0x80)
          {
            v21 = &v24[v15];
            v20 = 1;
            do
            {
              ++v20;
              v22 = *v21--;
            }

            while ((v22 & 0xC0) == 0x80);
          }

          else
          {
            v20 = 1;
          }
        }

        else
        {
          v16 = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32);
          if ((v5 & 0x1000000000000000) == 0)
          {
            rawBits = result._rawBits;
            v16 = _StringObject.sharedUTF8.getter(v5, v4);
            result._rawBits = rawBits;
          }

          v17 = 0;
          v18 = v16 + (result._rawBits >> 16) - 1;
          do
          {
            v19 = *(v18 + v17--) & 0xC0;
          }

          while (v19 == 128);
          v20 = -v17;
        }

        result._rawBits = (result._rawBits - (v20 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      }

      if (--v14 <= offsetBy)
      {
        return result;
      }
    }

LABEL_38:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (offsetBy)
  {
    if ((v4 & 0x2000000000000000) != 0)
    {
      v8 = HIBYTE(v4) & 0xF;
    }

    else
    {
      v8 = v5 & 0xFFFFFFFFFFFFLL;
    }

    while (1)
    {
      v9 = result._rawBits >> 16;
      if (result._rawBits >> 16 >= v8)
      {
        break;
      }

      if ((v4 & 0x1000000000000000) != 0)
      {
        result._rawBits = String.UnicodeScalarView._foreignIndex(after:)(result)._rawBits;
      }

      else
      {
        if ((v4 & 0x2000000000000000) != 0)
        {
          v25 = v5;
          v26 = v4 & 0xFFFFFFFFFFFFFFLL;
          v11 = *(&v25 + v9);
        }

        else
        {
          v10 = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32);
          if ((v5 & 0x1000000000000000) == 0)
          {
            v10 = _StringObject.sharedUTF8.getter(v5, v4);
          }

          v11 = v10[v9];
        }

        v12 = v11;
        v13 = __clz(v11 ^ 0xFF) - 24;
        if (v12 >= 0)
        {
          LOBYTE(v13) = 1;
        }

        result._rawBits = ((v9 + v13) << 16) | 5;
      }

      if (!--offsetBy)
      {
        return result;
      }
    }

    goto LABEL_38;
  }

  return result;
}

uint64_t String.Index.utf16Offset<A>(in:)(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v19 = a2;
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for StringProtocol, associated type descriptor for StringProtocol.UTF16View);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - v12;
  v14 = *(a4 + 128);
  v14(a3, a4);
  v14(a3, a4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a4, a3, v7, &protocol requirements base descriptor for StringProtocol, associated conformance descriptor for StringProtocol.StringProtocol.UTF16View: BidirectionalCollection);
  (*(*(AssociatedConformanceWitness + 8) + 64))(&v22, v7);
  v16 = *(v8 + 8);
  v16(v11, v7);
  v20 = v19;
  v21 = v22;
  v17 = (*(AssociatedConformanceWitness + 64))(&v21, &v20, v7, AssociatedConformanceWitness);
  v16(v13, v7);
  return v17;
}

unint64_t String.Index.init<A>(utf16Offset:in:)(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v35 = a1;
  v36 = a2;
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for StringProtocol, associated type descriptor for StringProtocol.UTF16View);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v33 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - v11;
  v13 = *(a4 + 128);
  v13(a3, a4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a4, a3, v7, &protocol requirements base descriptor for StringProtocol, associated conformance descriptor for StringProtocol.StringProtocol.UTF16View: BidirectionalCollection);
  v14 = *(AssociatedConformanceWitness + 8);
  (*(v14 + 64))(&v38, v7, v14);
  v15 = *(v8 + 8);
  v29 = v12;
  v16 = v12;
  v17 = v7;
  v15(v16, v7);
  v28 = v38;
  v18 = v33;
  v34 = a3;
  v30 = a4;
  v31 = v13;
  v13(a3, a4);
  v19 = *(v14 + 72);
  v20 = v14;
  v21 = v35;
  v19(&v40, v17, v20);
  v15(v18, v17);
  v22 = v40;
  if (v21 < 0)
  {
    (*(*(v34 - 1) + 8))(v36);
  }

  else
  {
    v23 = v29;
    v24 = v36;
    v25 = v34;
    v31(v34, v30);
    (*(*(v25 - 1) + 8))(v24, v25);
    v40 = v28;
    v37 = v22;
    (*(AssociatedConformanceWitness + 56))(&v38, &v40, v21, &v37, v17);
    v15(v23, v17);
    if (v39 != 1)
    {
      return v38;
    }
  }

  return (v22 & 0xFFFFFFFFFFFF0000) + 0x10000;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance String.Index()
{
  v1 = *v0;
  specialized Hasher.init(_seed:)(0, v3);
  Hasher._combine(_:)(v1 >> 14);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance String.Index(uint64_t a1)
{
  v2 = *v1;
  specialized Hasher.init(_seed:)(a1, v4);
  Hasher._combine(_:)(v2 >> 14);
  return Hasher._finalize()();
}

unint64_t String.Index.debugDescription.getter(unint64_t a1)
{
  _StringGuts.init(_initialCapacity:)(6);
  v3 = v2;
  v4 = _int64ToString(_:radix:uppercase:)(a1 >> 16, 10, 0, swift_int64ToString);
  v6 = v5;
  v3;
  v90 = v4;
  v91 = v6;
  v15 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v15 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v15 || (v4 & ~v6 & 0x2000000000000000) != 0)
  {
    if ((v6 & 0x2000000000000000) != 0 && (v16 = specialized _SmallString.init(_:appending:)(v4, v6, 0x5BuLL, 0xE100000000000000), (v18 & 1) == 0))
    {
      v27 = v16;
      v28 = v17;
      v6;
      v90 = v27;
      v91 = v28;
    }

    else
    {
      _StringGuts.append(_:)(91, 0xE100000000000000, 0, 1, v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  else
  {
    v6;
    v90 = 91;
    v91 = 0xE100000000000000;
  }

  v29 = 0x3631667475;
  if ((a1 & 8) == 0)
  {
    v29 = 0x6E776F6E6B6E75;
  }

  v30 = 0xE500000000000000;
  if ((a1 & 8) == 0)
  {
    v30 = 0xE700000000000000;
  }

  v31 = 7958113;
  if ((a1 & 8) == 0)
  {
    v31 = 946238581;
  }

  v32 = 0xE300000000000000;
  if ((a1 & 8) == 0)
  {
    v32 = 0xE400000000000000;
  }

  if ((a1 & 4) != 0)
  {
    v33 = v31;
  }

  else
  {
    v33 = v29;
  }

  if ((a1 & 4) != 0)
  {
    v34 = v32;
  }

  else
  {
    v34 = v30;
  }

  v35 = HIBYTE(v91) & 0xF;
  if ((v91 & 0x2000000000000000) == 0)
  {
    v35 = v90 & 0xFFFFFFFFFFFFLL;
  }

  if (v35 || (v90 & ~v91 & 0x2000000000000000) != 0)
  {
    if ((v91 & 0x2000000000000000) != 0 && (v36 = specialized _SmallString.init(_:appending:)(v90, v91, v33, v34), (v38 & 1) == 0))
    {
      v47 = v36;
      v48 = v37;
      v34;
      v91;
      v90 = v47;
      v91 = v48;
      v34 = v48;
      v33 = v47;
    }

    else
    {
      _StringGuts.append(_:)(v33, v34, 0, HIBYTE(v34) & 7, v19, v20, v21, v22, v23, v24, v25, v26);
      v34;
      v33 = v90;
      v34 = v91;
    }
  }

  else
  {
    v91;
    v90 = v33;
    v91 = v34;
  }

  v49 = HIBYTE(v34) & 0xF;
  if ((v34 & 0x2000000000000000) == 0)
  {
    v49 = v33 & 0xFFFFFFFFFFFFLL;
  }

  if (v49 || (v33 & ~v34 & 0x2000000000000000) != 0)
  {
    if ((v34 & 0x2000000000000000) != 0 && (v50 = specialized _SmallString.init(_:appending:)(v33, v34, 0x5DuLL, 0xE100000000000000), (v52 & 1) == 0))
    {
      v54 = v50;
      v53 = v51;
      0xE100000000000000;
      v34;
    }

    else
    {
      _StringGuts.append(_:)(93, 0xE100000000000000, 0, 1, v39, v40, v41, v42, v43, v44, v45, v46);
      0xE100000000000000;
      v54 = v90;
      v53 = v91;
    }
  }

  else
  {
    v34;
    v53 = 0xE100000000000000;
    v54 = 93;
  }

  v55 = a1 >> 14;
  if (!v55)
  {
    return v54;
  }

  _StringGuts.init(_initialCapacity:)(3);
  v56;
  v58 = _int64ToString(_:radix:uppercase:)(v55, 10, 0, swift_int64ToString);
  v67 = v57;
  if ((v57 & 0x2000000000000000) != 0 && (v68 = specialized _SmallString.init(_:appending:)(0x2BuLL, 0xE100000000000000, v58, v57), (v70 & 1) == 0))
  {
    v81 = v69;
    v83 = v68;
    v67;
    0xE100000000000000;
    v80 = v83;
  }

  else
  {
    if ((v67 & 0x2000000000000000) != 0)
    {
      v71 = HIBYTE(v67) & 0xF;
    }

    else
    {
      v71 = v58 & 0xFFFFFFFFFFFFLL;
    }

    _StringGuts.append(_:)(v58, v67, 0, v71, v59, v60, v61, v62, v63, v64, v65, v66);
    v67;
    v80 = 43;
    v81 = 0xE100000000000000;
  }

  v84 = HIBYTE(v53) & 0xF;
  if ((v53 & 0x2000000000000000) == 0)
  {
    v84 = v54 & 0xFFFFFFFFFFFFLL;
  }

  if (v84 || (v54 & ~v53 & 0x2000000000000000) != 0)
  {
    if ((v53 & 0x2000000000000000) == 0)
    {
      if ((v81 & 0x2000000000000000) != 0)
      {
        v85 = HIBYTE(v81) & 0xF;
LABEL_60:
        _StringGuts.append(_:)(v80, v81, 0, v85, v72, v73, v74, v75, v76, v77, v78, v79);
        v81;
        return v54;
      }

LABEL_59:
      v85 = v80 & 0xFFFFFFFFFFFFLL;
      goto LABEL_60;
    }

    if ((v81 & 0x2000000000000000) == 0)
    {
      goto LABEL_59;
    }

    v86 = v80;
    v87 = specialized _SmallString.init(_:appending:)(v54, v53, v80, v81);
    if (v88)
    {
      v85 = HIBYTE(v81) & 0xF;
      v80 = v86;
      goto LABEL_60;
    }

    v89 = v87;
    v81;
    v53;
  }

  else
  {
    v89 = v80;
    v53;
  }

  return v89;
}

Swift::String::Index_optional __swiftcall String.Index.init(_:within:)(Swift::String::Index _, Swift::String within)
{
  v2 = specialized String.Index.init(_:within:)(_, within._countAndFlagsBits, within._object);
  v4 = v3 & 1;
  result.value._rawBits = v2;
  result.is_nil = v4;
  return result;
}

Swift::UInt64 String.Index.init<A>(_:within:)(Swift::UInt64 a1, Swift::UInt64 *a2, Class *a3)
{
  v5._rawBits = a1;
  v6 = *(a3 - 1);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = (v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v11 = (v23 - v10);
  v12 = *(v6 + 16);
  v12(v23 - v10);
  if ((swift_dynamicCast(v23, v11, a3, &type metadata for String, 6uLL) & 1) == 0)
  {
    (v12)(v9, a2, a3);
    if (swift_dynamicCast(v23, v9, a3, &type metadata for Substring, 6uLL))
    {
      (*(v6 + 8))(a2, a3);
      v16 = v24;
      v17 = (v23[2] >> 59) & 1;
      if ((v24 & 0x1000000000000000) == 0)
      {
        LOBYTE(v17) = 1;
      }

      if ((v5._rawBits & 0xC) == 4 << v17)
      {
        v5._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v5)._rawBits;
      }

      v18 = Substring._isValidIndex(_:)(v5);
      v16;
      if (v18)
      {
        return v5._rawBits;
      }
    }

    else
    {
      v19 = String.init<A>(_:)(a2, a3);
      v20._rawBits = v5._rawBits;
      result = specialized String.Index.init(_:within:)(v20, v19, v21);
      if ((v22 & 1) == 0)
      {
        return result;
      }
    }

    return 0;
  }

  (*(v6 + 8))(a2, a3);
  v13._rawBits = v5._rawBits;
  result = specialized String.Index.init(_:within:)(v13, v23[0], v23[1]);
  if (v15)
  {
    return 0;
  }

  return result;
}

Swift::Bool __swiftcall Substring._isValidIndex(_:)(Swift::String::Index a1)
{
  v5 = (v3 >> 59) & 1;
  if ((v4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((a1._rawBits & 0xC) == 4 << v5)
  {
    return 0;
  }

  v7 = a1._rawBits >> 14;
  v8 = v1 >> 14;
  if (a1._rawBits >> 14 < v1 >> 14)
  {
    return 0;
  }

  v9 = v2 >> 14;
  if (v2 >> 14 < v7)
  {
    return 0;
  }

  v10 = v1;
  v11 = v2;
  v13 = v3;
  v14 = v4;
  if (!_StringGuts.isOnUnicodeScalarBoundary(_:)(a1))
  {
    return 0;
  }

  v15 = a1._rawBits | 1;
  if ((a1._rawBits & v10 & 2) == 0 && v7 != v8 && v7 != v9)
  {
    v15 = _StringGuts._slowRoundDownToNearestCharacter(_:in:)(v15, v10, v11, v13, v14);
  }

  return v7 == v15 >> 14;
}

uint64_t String.Index.samePosition(in:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  return String.Index.samePosition(in:)(a1, a2, a3, specialized String.Index.init(_:within:));
}

{
  return String.Index.samePosition(in:)(a1, a2, a3, specialized String.Index.init(_:within:));
}

{
  return String.Index.samePosition(in:)(a1, a2, a3, specialized String.Index.init(_:within:));
}

Swift::UInt64 String.Index.init(_:within:)(Swift::UInt64 a1, unint64_t a2, unint64_t a3)
{
  return specialized String.Index.init(_:within:)(a1, a2, a3);
}

{
  return specialized String.Index.init(_:within:)(a1, a2, a3);
}

Swift::String::Index __swiftcall _StringGuts.validateInclusiveCharacterIndex(_:)(Swift::String::Index result)
{
  v3 = (v1 >> 59) & 1;
  if ((v2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result._rawBits & 2) == 0 || (result._rawBits & 0xC) == 4 << v3)
  {
    v5 = v1;
    v6 = v2;
    result._rawBits = _StringGuts.validateInclusiveSubscalarIndex(_:)(result)._rawBits;
    if (result._rawBits)
    {
      if ((result._rawBits & 2) != 0)
      {
        return result;
      }
    }

    else
    {
      v7 = result._rawBits & 0xC | _StringGuts.scalarAlignSlow(_:)(result)._rawBits & 0xFFFFFFFFFFFFFFF3;
      result._rawBits = v7 | 1;
      if ((v7 & 2) != 0)
      {
        return result;
      }
    }

    if (result._rawBits < 0x10000)
    {
      return (result._rawBits | 3);
    }

    v8 = (v6 & 0x2000000000000000) != 0 ? HIBYTE(v6) & 0xF : v5 & 0xFFFFFFFFFFFFLL;
    if (result._rawBits >> 16 == v8)
    {
      return (result._rawBits | 3);
    }

    else
    {

      return _StringGuts._slowRoundDownToNearestCharacter(_:)(result);
    }
  }

  else
  {
    v4 = HIBYTE(v2) & 0xF;
    if ((v2 & 0x2000000000000000) == 0)
    {
      v4 = v1 & 0xFFFFFFFFFFFFLL;
    }

    if (v4 < result._rawBits >> 16)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  return result;
}

unint64_t _StringGuts.validateInclusiveCharacterIndex(_:in:)(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v7 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v7) = 1;
  }

  if ((result & 2) != 0 && (result & 0xC) != 4 << v7)
  {
    if (result >> 14 < a2 >> 14 || a3 >> 14 < result >> 14)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    return result;
  }

  result = _StringGuts.validateInclusiveSubscalarIndex(_:in:)(result, a2, a3, a4, a5);
  if (result)
  {
    if ((a2 & 2) != 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    result = result & 0xC | _StringGuts.scalarAlignSlow(_:)(result)._rawBits & 0xFFFFFFFFFFFFFFF3 | 1;
    if ((a2 & 2) != 0)
    {
LABEL_10:
      if ((result & 2) != 0)
      {
        return result;
      }
    }
  }

  if (result >> 14 != a2 >> 14 && result >> 14 != a3 >> 14)
  {

    return _StringGuts._slowRoundDownToNearestCharacter(_:in:)(result, a2, a3, a4, a5);
  }

  return result;
}

Swift::String::Index __swiftcall _StringGuts.validateInclusiveScalarIndex(_:)(Swift::String::Index result)
{
  v3 = (v1 >> 59) & 1;
  if ((v2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result._rawBits & 1) == 0 || (result._rawBits & 0xC) == 4 << v3)
  {
    result._rawBits = _StringGuts.validateInclusiveSubscalarIndex(_:)(result)._rawBits;
    if ((result._rawBits & 1) == 0)
    {
      return (result._rawBits & 0xC | _StringGuts.scalarAlignSlow(_:)(result)._rawBits & 0xFFFFFFFFFFFFFFF3 | 1);
    }
  }

  else
  {
    v4 = HIBYTE(v2) & 0xF;
    if ((v2 & 0x2000000000000000) == 0)
    {
      v4 = v1 & 0xFFFFFFFFFFFFLL;
    }

    if (v4 < result._rawBits >> 16)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  return result;
}

Swift::String::Index __swiftcall _StringGuts.validateInclusiveSubscalarIndex(_:)(Swift::String::Index result)
{
  v3 = (v1 >> 59) & 1;
  if ((v2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result._rawBits & 0xC) == 4 << v3)
  {
    v5 = v1;
    v6 = v2;
    result._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(result)._rawBits;
    v1 = v5;
    v2 = v6;
  }

  v4 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v4 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result._rawBits >> 16)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

Swift::UInt64 _StringGuts.validateInclusiveSubscalarIndex(_:in:)(Swift::UInt64 result, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v5 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 0xC) == 4 << v5)
  {
    v6 = a2;
    v7 = a3;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(result)._rawBits;
    a2 = v6;
    a3 = v7;
  }

  if (result >> 14 < a2 >> 14 || a3 >> 14 < result >> 14)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

Swift::String::Index __swiftcall _StringGuts.validateSubscalarIndex(_:)(Swift::String::Index result)
{
  v3 = (v1 >> 59) & 1;
  if ((v2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result._rawBits & 0xC) == 4 << v3)
  {
    v5 = v1;
    v6 = v2;
    result._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(result)._rawBits;
    v1 = v5;
    v2 = v6;
  }

  v4 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v4 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result._rawBits >> 16)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

Swift::UInt64 _StringGuts.validateSubscalarIndex(_:in:)(Swift::UInt64 result, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v5 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 0xC) == 4 << v5)
  {
    v6 = a2;
    v7 = a3;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(result)._rawBits;
    a2 = v6;
    a3 = v7;
  }

  if (result >> 14 < a2 >> 14 || result >> 14 >= a3 >> 14)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

Swift::UInt64 _StringGuts.validateSubscalarRange(_:in:)(Swift::UInt64 result, Swift::String::Index a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v6 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v6) = 1;
  }

  v7 = 4 << v6;
  if ((a2._rawBits & 0xC) == 4 << v6)
  {
    v8 = result;
    v9 = a3;
    v10 = a4;
    v11._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(a2)._rawBits;
    a3 = v9;
    a4 = v10;
    a2._rawBits = v11._rawBits;
    result = v8;
  }

  if ((result & 0xC) == v7)
  {
    rawBits = a2._rawBits;
    v13 = a3;
    v14 = a4;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(result)._rawBits;
    a3 = v13;
    a2._rawBits = rawBits;
    a4 = v14;
  }

  if (result >> 14 < a3 >> 14 || a2._rawBits >> 14 < result >> 14 || a4 >> 14 < a2._rawBits >> 14)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

Swift::String::Index __swiftcall _StringGuts.scalarAlign(_:)(Swift::String::Index result)
{
  if ((result._rawBits & 1) == 0)
  {
    return (result._rawBits & 0xC | _StringGuts.scalarAlignSlow(_:)(result)._rawBits & 0xFFFFFFFFFFFFFFF3 | 1);
  }

  return result;
}

Swift::String::Index _StringGuts.validateScalarIndex(_:in:)(Swift::String::Index result, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (a5 & 0x1000000000000000) == 0 || (a4 & 0x800000000000000) != 0;
  v6 = result._rawBits & 0xC;
  v7 = 4 << v5;
  if ((result._rawBits & 1) == 0 || v6 == v7)
  {
    if (v6 == v7)
    {
      v9 = a2;
      v8 = a3;
      result._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(result)._rawBits;
      a2 = v9;
      a3 = v8;
    }

    if (result._rawBits >> 14 < a2 >> 14 || result._rawBits >> 14 >= a3 >> 14)
    {
LABEL_16:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if ((result._rawBits & 1) == 0)
    {
      return (result._rawBits & 0xC | _StringGuts.scalarAlignSlow(_:)(result)._rawBits & 0xFFFFFFFFFFFFFFF3 | 1);
    }
  }

  else if (result._rawBits >> 14 < a2 >> 14 || result._rawBits >> 14 >= a3 >> 14)
  {
    goto LABEL_16;
  }

  return result;
}

Swift::String::Index _StringGuts.validateScalarRange(_:)(Swift::String::Index result, Swift::String::Index a2, unint64_t a3, unint64_t a4)
{
  v4 = (a3 >> 59) & 1;
  if ((a4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v4) = 1;
  }

  if ((result._rawBits & 1) == 0 || (v5 = 4 << v4, (result._rawBits & 0xC) == v5) || (a2._rawBits & 1) == 0 || (a2._rawBits & 0xC) == v5)
  {
    result._rawBits = _StringGuts.validateSubscalarRange(_:)(result._rawBits, a2, a3, a4);
    if (result._rawBits)
    {
      if (v7._rawBits)
      {
        return result;
      }
    }

    else
    {
      rawBits = result._rawBits;
      v9 = v7._rawBits;
      v10._rawBits = _StringGuts.scalarAlignSlow(_:)(result)._rawBits;
      v7._rawBits = v9;
      result._rawBits = rawBits & 0xC | v10._rawBits & 0xFFFFFFFFFFFFFFF3 | 1;
      if (v9)
      {
        return result;
      }
    }

    v11 = result._rawBits;
    _StringGuts.scalarAlignSlow(_:)(v7);
    return v11;
  }

  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 < a2._rawBits >> 16)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

Swift::String::Index _StringGuts.validateScalarRange(_:in:)(Swift::String::Index result, Swift::String::Index a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v6 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v6) = 1;
  }

  if ((result._rawBits & 1) == 0 || (v7 = 4 << v6, (result._rawBits & 0xC) == v7) || (a2._rawBits & 1) == 0 || (a2._rawBits & 0xC) == v7)
  {
    result._rawBits = _StringGuts.validateSubscalarRange(_:in:)(result._rawBits, a2, a3, a4, a5, a6);
    if (v8._rawBits)
    {
      if (result._rawBits)
      {
        return result;
      }
    }

    else
    {
      rawBits = result._rawBits;
      _StringGuts.scalarAlignSlow(_:)(v8);
      result._rawBits = rawBits;
      if (rawBits)
      {
        return result;
      }
    }

    return (result._rawBits & 0xC | _StringGuts.scalarAlignSlow(_:)(result)._rawBits & 0xFFFFFFFFFFFFFFF3 | 1);
  }

  if (result._rawBits >> 14 < a3 >> 14 || a4 >> 14 < a2._rawBits >> 14)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

unint64_t _StringGuts.validateCharacterIndex(_:in:)(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v7 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v7) = 1;
  }

  if ((result & 2) != 0 && (result & 0xC) != 4 << v7)
  {
    if (result >> 14 < a2 >> 14 || result >> 14 >= a3 >> 14)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    return result;
  }

  result = _StringGuts.validateSubscalarIndex(_:in:)(result, a2, a3, a4, a5);
  if (result)
  {
    if ((a2 & 2) != 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    result = result & 0xC | _StringGuts.scalarAlignSlow(_:)(result)._rawBits & 0xFFFFFFFFFFFFFFF3 | 1;
    if ((a2 & 2) != 0)
    {
LABEL_10:
      if ((result & 2) != 0)
      {
        return result;
      }
    }
  }

  if (result >> 14 != a2 >> 14 && result >> 14 != a3 >> 14)
  {

    return _StringGuts._slowRoundDownToNearestCharacter(_:in:)(result, a2, a3, a4, a5);
  }

  return result;
}

Swift::String::Index __swiftcall _StringGuts.validateInclusiveSubscalarIndex_5_7(_:)(Swift::String::Index result)
{
  v3 = (v1 >> 59) & 1;
  if ((v2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result._rawBits & 0xC) == 4 << v3)
  {
    v5 = v1;
    v6 = v2;
    result._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(result)._rawBits;
    v1 = v5;
    v2 = v6;
  }

  v4 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v4 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result._rawBits >> 16)
  {
    rawBits = result._rawBits;
    isExecutableLinkedOnOrAfter = _swift_stdlib_isExecutableLinkedOnOrAfter(0x50700u);
    result._rawBits = rawBits;
    if (isExecutableLinkedOnOrAfter)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  return result;
}

Swift::UInt64 _StringGuts.validateSubscalarRange(_:)(Swift::UInt64 result, Swift::String::Index a2, unint64_t a3, unint64_t a4)
{
  v4 = (a3 >> 59) & 1;
  if ((a4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v4) = 1;
  }

  v5 = 4 << v4;
  if ((a2._rawBits & 0xC) == 4 << v4)
  {
    v7 = result;
    v8 = a3;
    v9 = a4;
    v10._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(a2)._rawBits;
    a3 = v8;
    a4 = v9;
    a2._rawBits = v10._rawBits;
    result = v7;
  }

  if ((result & 0xC) == v5)
  {
    rawBits = a2._rawBits;
    v12 = a3;
    v13 = a4;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(result)._rawBits;
    a3 = v12;
    a4 = v13;
    a2._rawBits = rawBits;
  }

  v6 = a3 & 0xFFFFFFFFFFFFLL;
  if ((a4 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a4) & 0xF;
  }

  if (a2._rawBits >> 14 > 4 * v6 || a2._rawBits >> 14 < result >> 14)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

Swift::String::Index _StringGuts.validateScalarRange_5_7(_:)(Swift::String::Index result, Swift::String::Index a2, unint64_t a3, unint64_t a4)
{
  v4 = (a3 >> 59) & 1;
  if ((a4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v4) = 1;
  }

  if ((result._rawBits & 1) == 0 || (v5 = 4 << v4, (result._rawBits & 0xC) == v5) || (a2._rawBits & 1) == 0 || (a2._rawBits & 0xC) == v5)
  {
    result._rawBits = _StringGuts.validateSubscalarRange(_:)(result._rawBits, a2, a3, a4);
    if (result._rawBits)
    {
      if (v9._rawBits)
      {
        return result;
      }
    }

    else
    {
      rawBits = result._rawBits;
      v11 = v9._rawBits;
      v12._rawBits = _StringGuts.scalarAlignSlow(_:)(result)._rawBits;
      v9._rawBits = v11;
      result._rawBits = rawBits & 0xC | v12._rawBits & 0xFFFFFFFFFFFFFFF3 | 1;
      if (v11)
      {
        return result;
      }
    }

    v13 = result._rawBits;
    _StringGuts.scalarAlignSlow(_:)(v9);
    return v13;
  }

  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 < a2._rawBits >> 16)
  {
    v7 = result._rawBits;
    isExecutableLinkedOnOrAfter = _swift_stdlib_isExecutableLinkedOnOrAfter(0x50700u);
    result._rawBits = v7;
    if (isExecutableLinkedOnOrAfter)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  return result;
}

Swift::Int protocol witness for StringInterpolationProtocol.init(literalCapacity:interpolationCount:) in conformance DefaultStringInterpolation@<X0>(Swift::Int result@<X0>, uint64_t a2@<X1>, Swift::Int *a3@<X8>)
{
  if (a2 + 0x4000000000000000 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = __OFADD__(result, 2 * a2);
    result += 2 * a2;
    if (!v4)
    {
      result = static String._createEmpty(withInitialCapacity:)(result);
      *a3 = result;
      a3[1] = v5;
      return result;
    }
  }

  __break(1u);
  return result;
}

Swift::Bool __swiftcall String.hasPrefix(_:)(Swift::String a1)
{
  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = v1;
  }

  if ((v2 & 0x1000000000000000) == 0 && (v3 & 0x4000000000000000) != 0)
  {
    v4 = (a1._object & 0x2000000000000000) != 0 ? a1._object : a1._countAndFlagsBits;
    if ((a1._object & 0x1000000000000000) == 0 && (v4 & 0x4000000000000000) != 0)
    {
      v5 = HIBYTE(a1._object) & 0xF;
      v6 = a1._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      object = a1._object;
      if ((a1._object & 0x2000000000000000) != 0)
      {
        v8 = HIBYTE(a1._object) & 0xF;
      }

      else
      {
        v8 = a1._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      v9 = HIBYTE(v2) & 0xF;
      v10 = v1 & 0xFFFFFFFFFFFFLL;
      if ((v2 & 0x2000000000000000) != 0)
      {
        v11 = HIBYTE(v2) & 0xF;
      }

      else
      {
        v11 = v1 & 0xFFFFFFFFFFFFLL;
      }

      if (v11 < v8)
      {
        return 0;
      }

      if ((object & 0x2000000000000000) != 0)
      {
        __s2 = a1._countAndFlagsBits;
        v29 = object & 0xFFFFFFFFFFFFFFLL;
        if ((v2 & 0x2000000000000000) != 0)
        {
          __s1[0] = v1;
          __s1[1] = v2 & 0xFFFFFFFFFFFFFFLL;
          if (v9 < v5)
          {
            goto LABEL_49;
          }

          v16 = __s1;
        }

        else
        {
          if ((v1 & 0x1000000000000000) != 0)
          {
            v16 = ((v2 & 0xFFFFFFFFFFFFFFFLL) + 32);
            if (v10 < v5)
            {
              goto LABEL_49;
            }
          }

          else
          {
            v16 = _StringObject.sharedUTF8.getter(v1, v2);
            if (v25 < v5)
            {
              goto LABEL_49;
            }
          }

          if (v5 && !v16)
          {
            goto LABEL_49;
          }
        }

        v17 = _swift_stdlib_memcmp(v16, &__s2, v5);
        v6 = v5;
      }

      else
      {
        if ((a1._countAndFlagsBits & 0x1000000000000000) != 0)
        {
          v12 = ((object & 0xFFFFFFFFFFFFFFFLL) + 32);
          v13 = a1._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
          if ((v2 & 0x2000000000000000) == 0)
          {
LABEL_21:
            if ((v1 & 0x1000000000000000) != 0)
            {
              v14 = ((v2 & 0xFFFFFFFFFFFFFFFLL) + 32);
              if (v10 < v13)
              {
                goto LABEL_49;
              }
            }

            else
            {
              v23 = v13;
              v14 = _StringObject.sharedUTF8.getter(v1, v2);
              v13 = v23;
              if (v24 < v23)
              {
                goto LABEL_49;
              }
            }

            if (!v13 || v14)
            {
              if (!_swift_stdlib_memcmp(v14, v12, v13))
              {
LABEL_26:

                return _StringGuts.isOnGraphemeClusterBoundary(_:)((v6 << 16));
              }

              return 0;
            }

LABEL_49:
            _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
          }
        }

        else
        {
          v26 = v1 & 0xFFFFFFFFFFFFLL;
          v18 = v2;
          v19 = v1;
          v20 = HIBYTE(v2) & 0xF;
          v21 = _StringObject.sharedUTF8.getter(a1._countAndFlagsBits, object);
          v9 = v20;
          v1 = v19;
          v2 = v18;
          v12 = v21;
          v13 = v22;
          v10 = v26;
          if ((v2 & 0x2000000000000000) == 0)
          {
            goto LABEL_21;
          }
        }

        __s2 = v1;
        v29 = v2 & 0xFFFFFFFFFFFFFFLL;
        if (v9 < v13)
        {
          goto LABEL_49;
        }

        v17 = _swift_stdlib_memcmp(&__s2, v12, v13);
      }

      if (!v17)
      {
        goto LABEL_26;
      }

      return 0;
    }
  }

  return specialized Sequence<>.starts<A>(with:)(a1._countAndFlagsBits, a1._object, v1, v2);
}

Swift::Bool __swiftcall String.hasSuffix(_:)(Swift::String a1)
{
  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = v1;
  }

  if ((v2 & 0x1000000000000000) == 0 && (v3 & 0x4000000000000000) != 0)
  {
    v4 = (a1._object & 0x2000000000000000) != 0 ? a1._object : a1._countAndFlagsBits;
    if ((a1._object & 0x1000000000000000) == 0 && (v4 & 0x4000000000000000) != 0)
    {
      object = a1._object;
      v6 = v1 & 0xFFFFFFFFFFFFLL;
      if ((v2 & 0x2000000000000000) != 0)
      {
        v7 = HIBYTE(v2) & 0xF;
      }

      else
      {
        v7 = v1 & 0xFFFFFFFFFFFFLL;
      }

      v8 = HIBYTE(object) & 0xF;
      v9 = a1._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      v10 = object;
      if ((object & 0x2000000000000000) != 0)
      {
        v11 = HIBYTE(object) & 0xF;
      }

      else
      {
        v11 = a1._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      v12 = v7 - v11;
      if (v7 - v11 < 0)
      {
        return 0;
      }

      if ((v10 & 0x2000000000000000) != 0)
      {
        __s2 = a1._countAndFlagsBits;
        v48 = v10 & 0xFFFFFFFFFFFFFFLL;
        if ((v2 & 0x2000000000000000) != 0)
        {
          v46[0] = v1;
          v46[1] = v2 & 0xFFFFFFFFFFFFFFLL;
          v31 = _swift_stdlib_memcmp(v46 + v12, &__s2, v8);
        }

        else
        {
          if ((v1 & 0x1000000000000000) != 0)
          {
            v24 = (v2 & 0xFFFFFFFFFFFFFFFLL) + 32;
            v25 = v6;
          }

          else
          {
            v43 = v1 & 0xFFFFFFFFFFFFLL;
            v44 = _StringObject.sharedUTF8.getter(v1, v2);
            v25 = v45;
            if (v45 < v43)
            {
              goto LABEL_58;
            }

            v24 = v44;
            v6 = v43;
          }

          v26 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v12, v6, v24, v25);
          v28 = v27;
          if (v8 >= v27)
          {
            v29 = v27;
          }

          else
          {
            v29 = v8;
          }

          v30 = _swift_stdlib_memcmp(v26, &__s2, v29);
          v31 = v30;
          if (!v30)
          {
            v31 = v28 - v8;
          }
        }

        if (!v31)
        {
LABEL_52:

          return _StringGuts.isOnGraphemeClusterBoundary(_:)((v12 << 16));
        }

        return 0;
      }

      if ((a1._countAndFlagsBits & 0x1000000000000000) != 0)
      {
        v13 = ((v10 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v14 = a1._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
        if ((v2 & 0x2000000000000000) == 0)
        {
LABEL_21:
          if ((v1 & 0x1000000000000000) != 0)
          {
            v15 = (v2 & 0xFFFFFFFFFFFFFFFLL) + 32;
            v16 = v6;
            goto LABEL_23;
          }

          v40 = v6;
          v41 = _StringObject.sharedUTF8.getter(v1, v2);
          v16 = v42;
          if (v42 >= v40)
          {
            v15 = v41;
            v6 = v40;
LABEL_23:
            v17 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v12, v6, v15, v16);
            v19 = v18;
            if (v14 >= v18)
            {
              v20 = v18;
            }

            else
            {
              v20 = v14;
            }

            v21 = _swift_stdlib_memcmp(v17, v13, v20);
            v22 = v21;
            if (!v21)
            {
              v22 = v19 - v14;
            }

            if (!v22)
            {
              goto LABEL_52;
            }

            return 0;
          }

LABEL_58:
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }
      }

      else
      {
        v32 = v1 & 0xFFFFFFFFFFFFLL;
        v33 = v2;
        v34 = v1;
        v35 = _StringObject.sharedUTF8.getter(a1._countAndFlagsBits, v10);
        v1 = v34;
        v2 = v33;
        v13 = v35;
        v14 = v36;
        v6 = v32;
        if ((v2 & 0x2000000000000000) == 0)
        {
          goto LABEL_21;
        }
      }

      __s2 = v1;
      v48 = v2 & 0xFFFFFFFFFFFFFFLL;
      if (v14 >= v9)
      {
        v37 = v9;
      }

      else
      {
        v37 = v14;
      }

      v38 = _swift_stdlib_memcmp(&__s2 + v12, v13, v37);
      v39 = v38;
      if (!v38)
      {
        v39 = v9 - v14;
      }

      if (!v39)
      {
        goto LABEL_52;
      }

      return 0;
    }
  }

  return specialized Sequence<>.starts<A>(with:)(a1._countAndFlagsBits, a1._object, v1, v2);
}

Swift::Bool __swiftcall _isScalarNFCQC(_:_:)(Swift::Unicode::Scalar a1, Swift::UInt8 *a2)
{
  if (a1._value > 0x2FF)
  {
    v6 = a2;
    NormData = _swift_stdlib_getNormData(a1._value);
    a2 = v6;
  }

  else
  {
    NormData = 0;
  }

  v3 = NormData >> 3;
  if (v3)
  {
    v4 = *a2 <= (NormData >> 3);
  }

  else
  {
    v4 = 1;
  }

  result = (NormData & 6) == 0 && v4;
  if (result)
  {
    *a2 = v3;
  }

  return result;
}

Swift::Void __swiftcall _StringGutsSlice._fastNFCCheck(_:_:)(Swift::Bool *a1, Swift::UInt8 *a2)
{
  v6 = v2;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v46[0] = v2;
    v46[1] = v3 & 0xFFFFFFFFFFFFFFLL;
    if (v4 < 0)
    {
      goto LABEL_54;
    }

    if ((HIBYTE(v3) & 0xF) < v5)
    {
      goto LABEL_54;
    }

    v28 = v5 - v4;
    if (v5 - v4 < 0)
    {
      goto LABEL_54;
    }

    if (v5 != v4)
    {
      v30 = 0;
      v31 = v46 + v4;
      while ((v30 & 0x8000000000000000) == 0)
      {
        v34 = &v31[v30];
        v35 = v31[v30];
        if (v35 < 0xCC)
        {
          v32 = 0;
          if (v35 < 0xC0)
          {
            v33 = 1;
          }

          else
          {
            v33 = 2;
          }
        }

        else
        {
          v36 = __clz(v35 ^ 0xFF) - 24;
          v37 = v34[1];
          if (v36 == 2)
          {
            v38 = (v35 & 0x1F) << 6;
            v33 = 2;
          }

          else if (v36 == 3)
          {
            v38 = ((v35 & 0xF) << 12) | ((v37 & 0x3F) << 6);
            v37 = v34[2];
            v33 = 3;
          }

          else
          {
            v39 = ((v35 & 0xF) << 18) | ((v37 & 0x3F) << 12);
            v37 = v34[3];
            v38 = v39 & 0xFFFFF03F | ((v34[2] & 0x3F) << 6);
            v33 = 4;
          }

          if (v38 >= 0x300)
          {
            NormData = _swift_stdlib_getNormData(v38 | v37 & 0x3F);
          }

          else
          {
            NormData = 0;
          }

          v29 = 0;
          v41 = *a2 <= (NormData >> 3);
          v32 = NormData >> 3;
          if (!v32)
          {
            v41 = 1;
          }

          if ((NormData & 6) != 0 || !v41)
          {
            goto LABEL_31;
          }
        }

        *a2 = v32;
        v30 += v33;
        if (v30 >= v28)
        {
          goto LABEL_30;
        }
      }

LABEL_54:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

LABEL_30:
    v29 = 1;
LABEL_31:
    *a1 = v29;
  }

  else
  {
    if ((v2 & 0x1000000000000000) != 0)
    {
      v9 = (v3 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v10 = v6 & 0xFFFFFFFFFFFFLL;
      if (v4 < 0)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v42 = v4;
      v43 = v5;
      v44 = _StringObject.sharedUTF8.getter(v2, v3);
      v5 = v43;
      v4 = v42;
      v9 = v44;
      v10 = v45;
      if (v42 < 0)
      {
        goto LABEL_54;
      }
    }

    if (v10 < v5)
    {
      goto LABEL_54;
    }

    v11 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v4, v5, v9, v10);
    if (v12 >= 1)
    {
      v13 = 0;
      while ((v13 & 0x8000000000000000) == 0)
      {
        v16 = (v11 + v13);
        v17 = *(v11 + v13);
        if (v17 < 0xCC)
        {
          v14 = 0;
          if (v17 < 0xC0)
          {
            v15 = 1;
          }

          else
          {
            v15 = 2;
          }
        }

        else
        {
          v18 = __clz(v17 ^ 0xFF) - 24;
          v19 = v16[1];
          if (v18 == 2)
          {
            v20 = (v17 & 0x1F) << 6;
            v15 = 2;
          }

          else if (v18 == 3)
          {
            v20 = ((v17 & 0xF) << 12) | ((v19 & 0x3F) << 6);
            v19 = v16[2];
            v15 = 3;
          }

          else
          {
            v21 = ((v17 & 0xF) << 18) | ((v19 & 0x3F) << 12);
            v19 = v16[3];
            v20 = v21 & 0xFFFFF03F | ((v16[2] & 0x3F) << 6);
            v15 = 4;
          }

          if (v20 >= 0x300)
          {
            v25 = v11;
            v26 = v12;
            v27 = _swift_stdlib_getNormData(v20 | v19 & 0x3F);
            v12 = v26;
            v22 = v27;
            v11 = v25;
          }

          else
          {
            v22 = 0;
          }

          v23 = 0;
          v24 = *a2 <= (v22 >> 3);
          v14 = v22 >> 3;
          if (!v14)
          {
            v24 = 1;
          }

          if ((v22 & 6) != 0 || !v24)
          {
            goto LABEL_33;
          }
        }

        *a2 = v14;
        v13 += v15;
        if (v13 >= v12)
        {
          goto LABEL_32;
        }
      }

      goto LABEL_54;
    }

LABEL_32:
    v23 = 1;
LABEL_33:
    *a1 = v23;
  }
}

unsigned __int8 *specialized closure #1 in _StringGutsSlice._withNFCCodeUnits(_:)(unsigned __int8 *result, uint64_t a2, unint64_t *a3)
{
  if (result && a2)
  {
    v3 = *a3;
    do
    {
      v15 = *result++;
      v14 = v15;
      if ((~v3 & 0x700000000000000) != 0)
      {
        v4 = (v14 << ((v3 >> 53) & 0x38)) | v3;
      }

      else
      {
        v4 = v3 & 0xFF00000000000000;
        v5 = v3 & 0xFFFFFFFFFFFFFFLL | (v14 << 56);
        v6 = a3[4] ^ v5;
        v7 = a3[2];
        v8 = v7 + a3[1];
        v9 = v8 ^ __ROR8__(v7, 51);
        v10 = a3[3] + v6;
        v11 = v10 ^ __ROR8__(v6, 48);
        v12 = v11 + __ROR8__(v8, 32);
        v13 = v10 + v9;
        a3[3] = __ROR8__(v13, 32);
        a3[4] = v12 ^ __ROR8__(v11, 43);
        a3[1] = v12 ^ v5;
        a3[2] = v13 ^ __ROR8__(v9, 47);
      }

      v3 = v4 + 0x100000000000000;
      *a3 = v4 + 0x100000000000000;
      --a2;
    }

    while (a2);
  }

  return result;
}

unint64_t specialized closure #1 in _StringGutsSlice._withNFCCodeUnits(_:)(unint64_t result, uint64_t a2, uint64_t *a3)
{
  if (result)
  {
    v3 = a2;
    if (a2)
    {
      v5 = result;
      do
      {
        v6 = *v5;
        v7 = *a3;
        result = swift_isUniquelyReferenced_nonNull_native(*a3);
        *a3 = v7;
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1, v7);
          v7 = result;
          *a3 = result;
        }

        v9 = *(v7 + 16);
        v8 = *(v7 + 24);
        if (v9 >= v8 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v7);
          v7 = result;
          *a3 = result;
        }

        ++v5;
        *(v7 + 16) = v9 + 1;
        *(v7 + v9 + 32) = v6;
        --v3;
      }

      while (v3);
    }
  }

  return result;
}

uint64_t protocol witness for StringProtocol.init<A, B>(decoding:as:) in conformance String@<X0>(uint64_t a1@<X0>, char *a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X6>, uint64_t *a5@<X8>)
{
  v10 = *(a2 - 1);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v14 = (v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v12 != &type metadata for Unicode.UTF8)
  {
    v23 = static String._fromCodeUnits<A, B>(_:encoding:repair:)(a1, v12, 1, a2);
    if (!v24)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    goto LABEL_10;
  }

  MEMORY[0x1EEE9AC00](v11);
  (*(*(a3 + 8) + 72))(&v27, closure #1 in String.init<A, B>(decoding:as:)partial apply);
  v15 = v28;
  if (v28)
  {
    v16 = v27;
LABEL_11:
    result = (*(v10 + 8))(a1, a2);
    goto LABEL_12;
  }

  (*(v10 + 16))(v14, a1, a2);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss19_HasContiguousBytes_pMd, _ss19_HasContiguousBytes_pMR);
  if ((swift_dynamicCast(v25, v14, a2, v17, 6uLL) & 1) == 0)
  {
    v26 = 0;
    memset(v25, 0, sizeof(v25));
    outlined destroy of _HasContiguousBytes?(v25, &_ss19_HasContiguousBytes_pSgMd, _ss19_HasContiguousBytes_pSgMR);
LABEL_9:
    v23 = static String._fromNonContiguousUnsafeBitcastUTF8Repairing<A>(_:)(a1, a2, a3);
LABEL_10:
    v16 = v23;
    v15 = v24;
    goto LABEL_11;
  }

  _ss9CodingKey_pWOb_0(v25, &v27);
  v18 = v29;
  v19 = v30;
  __swift_project_boxed_opaque_existential_0Tm(&v27, v29);
  if (((*(v19 + 16))(v18, v19) & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v27);
    goto LABEL_9;
  }

  (*(v10 + 8))(a1, a2);
  v20 = v29;
  v21 = v30;
  __swift_project_boxed_opaque_existential_0Tm(&v27, v29);
  (*(v21 + 8))(v25, closure #2 in String.init<A, B>(decoding:as:), 0, a4, v20, v21);
  v15 = *(&v25[0] + 1);
  v16 = *&v25[0];
  result = __swift_destroy_boxed_opaque_existential_1Tm(&v27);
LABEL_12:
  *a5 = v16;
  a5[1] = v15;
  return result;
}

uint64_t protocol witness for StringProtocol.init(cString:) in conformance String@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = _swift_stdlib_strlen(a1);
  if ((v4 & 0x8000000000000000) != 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  result = _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFs4Int8V_s5UInt8Vs5NeverOSSTt1g5019_sSS7cStringSSSPys4f14VG_tcfcSSSRys5G7VGXEfU_Tf1cn_n(a1, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t protocol witness for StringProtocol.init<A>(decodingCString:as:) in conformance String@<X0>(unsigned __int8 *a1@<X0>, ValueMetadata *a2@<X1>, const char *a3@<X2>, int **a4@<X3>, uint64_t *a5@<X8>)
{
  result = String.init<A>(decodingCString:as:)(a1, a2, a3, a4);
  *a5 = result;
  a5[1] = v7;
  return result;
}

void protocol witness for StringProtocol.withCString<A, B>(encodedAs:_:) in conformance String(ValueMetadata *a1@<X0>, void (*a2)(unint64_t)@<X1>, uint64_t a3@<X2>, uint64_t (**a4)(char *, const char *)@<X3>, const char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  if (a1 == &type metadata for Unicode.UTF8)
  {
    MEMORY[0x1EEE9AC00](a1);
    v15[2] = v8;
    v15[3] = v9;
    v15[4] = v11;
    v15[5] = v10;
    v15[6] = v12;
    String.withCString<A>(_:)(closure #1 in String.withCString<A, B>(encodedAs:_:)partial apply, v15, v13, v14);
  }

  else
  {
    String._slowWithCString<A, B>(encodedAs:_:)(a2, a3, *v7, *(v7 + 8), a4, a5, a6, a7);
  }
}

uint64_t protocol witness for LosslessStringConvertible.init(_:) in conformance String@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

unint64_t String.init<A>(_:)(unint64_t *a1, ValueMetadata *a2)
{
  Description = a2[-1].Description;
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v10 = (&v21 - v9);
  if (v11 == &type metadata for String)
  {
    return *a1;
  }

  if (a2 == &type metadata for Substring)
  {
    v14 = *a1;
    v15 = a1[1];
    v16 = a1[2];
    v17 = a1[3];
    goto LABEL_9;
  }

  if (a2 == &unk_1EEEBBE38)
  {
    v20 = *a1;
    v21 = 0;
    v22 = 0xE000000000000000;
    specialized String.append<A>(contentsOf:)(v20);
    v20;
  }

  else
  {
    v12 = v8;
    v13 = Description[2];
    v13(&v21 - v9, a1, a2);
    if ((swift_dynamicCast(&v21, v10, a2, &type metadata for String, 6uLL) & 1) == 0)
    {
      v13(v7, a1, a2);
      if (swift_dynamicCast(&v21, v7, a2, &type metadata for Substring, 6uLL))
      {
        (Description[1])(a1, a2);
        v14 = v21;
        v15 = v22;
        v16 = v23;
        v17 = v24;
LABEL_9:
        v19 = Substring.description.getter(v14, v15, v16, v17);
        v17;
        return v19;
      }

      v21 = 0;
      v22 = 0xE000000000000000;
      String.append<A>(contentsOf:)(a1, a2, v12);
    }

    (Description[1])(a1, a2);
  }

  return v21;
}

void String.append(_:)(unint64_t a1, unint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, int8x16_t a10)
{
  v11 = v10[1];
  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = *v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v12 || (*v10 & ~v11 & 0x2000000000000000) != 0)
  {

    _StringGuts.append(_:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  }

  else
  {
    a2;
    v11;
    *v10 = a1;
    v10[1] = a2;
  }
}

void (*specialized String.replaceSubrange<A>(_:with:)(Swift::UInt64 a1, Swift::String::Index a2, uint64_t a3, unint64_t a4))(uint64_t *__return_ptr, void *)
{
  v6 = *v4;
  v5 = v4[1];
  v7 = (*v4 >> 59) & 1;
  if ((v5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v7) = 1;
  }

  v8 = a1 & 0xC;
  v9 = 4 << v7;
  v10 = a2._rawBits & 0xC;
  if ((a1 & 1) != 0 && v8 != v9 && (a2._rawBits & 1) != 0 && v10 != v9)
  {
    v11 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v11 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v11 < a2._rawBits >> 16)
    {
      goto LABEL_19;
    }

    goto LABEL_22;
  }

  if (v10 == v9)
  {
    v15 = a1;
    v16 = a3;
    v17 = a4;
    v18._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(a2)._rawBits;
    a3 = v16;
    a4 = v17;
    a2._rawBits = v18._rawBits;
    a1 = v15;
    if (v8 != v9)
    {
      goto LABEL_13;
    }

LABEL_26:
    rawBits = a2._rawBits;
    v20 = a3;
    v21 = a4;
    a1 = _StringGuts._slowEnsureMatchingEncoding(_:)(a1)._rawBits;
    a2._rawBits = rawBits;
    a3 = v20;
    a4 = v21;
    goto LABEL_13;
  }

  if (v8 == v9)
  {
    goto LABEL_26;
  }

LABEL_13:
  v12 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v12 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (a2._rawBits >> 14 > 4 * v12 || a2._rawBits >> 14 < a1 >> 14)
  {
LABEL_19:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a1)
  {
    if (a2._rawBits)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v22 = a1;
    v23 = a2._rawBits;
    v24 = a3;
    v25 = a4;
    v26._rawBits = _StringGuts.scalarAlignSlow(_:)(a1)._rawBits;
    a2._rawBits = v23;
    a3 = v24;
    a4 = v25;
    a1 = v22 & 0xC | v26._rawBits & 0xFFFFFFFFFFFFFFF3 | 1;
    if (v23)
    {
      goto LABEL_22;
    }
  }

  v27 = a1;
  v28 = a2._rawBits;
  v29 = a3;
  v30 = a4;
  v31._rawBits = _StringGuts.scalarAlignSlow(_:)(a2)._rawBits;
  a3 = v29;
  a4 = v30;
  v32 = v31._rawBits;
  a1 = v27;
  a2._rawBits = v28 & 0xC | v32 & 0xFFFFFFFFFFFFFFF3 | 1;
LABEL_22:

  return specialized _StringGuts.replaceSubrange<A>(_:with:)(a1, a2._rawBits, a3, a4);
}

unint64_t specialized String.replaceSubrange<A>(_:with:)(Swift::String::Index a1, Swift::String::Index a2, unint64_t a3)
{
  v5 = *v3;
  v4 = v3[1];
  v6 = (*v3 >> 59) & 1;
  if ((v4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v6) = 1;
  }

  v7 = a1._rawBits & 0xC;
  v8 = 4 << v6;
  v9 = a2._rawBits & 0xC;
  if ((a1._rawBits & 1) != 0 && v7 != v8 && (a2._rawBits & 1) != 0 && v9 != v8)
  {
    v10 = HIBYTE(v4) & 0xF;
    if ((v4 & 0x2000000000000000) == 0)
    {
      v10 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v10 < a2._rawBits >> 16)
    {
      goto LABEL_19;
    }

    goto LABEL_22;
  }

  if (v9 == v8)
  {
    rawBits = a1._rawBits;
    v15 = a3;
    v16._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(a2)._rawBits;
    a3 = v15;
    a2._rawBits = v16._rawBits;
    a1._rawBits = rawBits;
    if (v7 != v8)
    {
      goto LABEL_13;
    }

LABEL_26:
    v17 = a2._rawBits;
    v18 = a3;
    a1._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(a1)._rawBits;
    a2._rawBits = v17;
    a3 = v18;
    goto LABEL_13;
  }

  if (v7 == v8)
  {
    goto LABEL_26;
  }

LABEL_13:
  v11 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v11 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (a2._rawBits >> 14 > 4 * v11 || a2._rawBits >> 14 < a1._rawBits >> 14)
  {
LABEL_19:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a1._rawBits)
  {
    if (a2._rawBits)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v19 = a1._rawBits;
    v20 = a2._rawBits;
    v21 = a3;
    v22._rawBits = _StringGuts.scalarAlignSlow(_:)(a1)._rawBits;
    a2._rawBits = v20;
    a3 = v21;
    a1._rawBits = v19 & 0xC | v22._rawBits & 0xFFFFFFFFFFFFFFF3 | 1;
    if (v20)
    {
      goto LABEL_22;
    }
  }

  v23 = a1._rawBits;
  v24 = a2._rawBits;
  v25 = a3;
  v26._rawBits = _StringGuts.scalarAlignSlow(_:)(a2)._rawBits;
  a3 = v25;
  v27 = v26._rawBits;
  a1._rawBits = v23;
  a2._rawBits = v24 & 0xC | v27 & 0xFFFFFFFFFFFFFFF3 | 1;
LABEL_22:

  return specialized _StringGuts.replaceSubrange<A>(_:with:)(a1._rawBits, a2._rawBits, a3);
}

uint64_t specialized String.replaceSubrange<A>(_:with:)(Swift::String::Index a1, Swift::String::Index a2, unint64_t a3, Swift::UInt64 a4, uint64_t a5, unint64_t a6)
{
  v8 = *v6;
  v7 = v6[1];
  v9 = (*v6 >> 59) & 1;
  if ((v7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = a1._rawBits & 0xC;
  v11 = 4 << v9;
  v12 = a2._rawBits & 0xC;
  if ((a1._rawBits & 1) != 0 && v10 != v11 && (a2._rawBits & 1) != 0 && v12 != v11)
  {
    v13 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v13 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (v13 < a2._rawBits >> 16)
    {
      goto LABEL_19;
    }

    goto LABEL_22;
  }

  if (v12 == v11)
  {
    rawBits = a1._rawBits;
    v18 = a3;
    v19 = a6;
    v20 = a5;
    v21 = a4;
    v22._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(a2)._rawBits;
    a3 = v18;
    a4 = v21;
    a5 = v20;
    a6 = v19;
    a2._rawBits = v22._rawBits;
    a1._rawBits = rawBits;
    if (v10 != v11)
    {
      goto LABEL_13;
    }

LABEL_26:
    v23 = a2._rawBits;
    v24 = a3;
    v25 = a6;
    v26 = a5;
    v27 = a4;
    a1._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(a1)._rawBits;
    a2._rawBits = v23;
    a3 = v24;
    a4 = v27;
    a5 = v26;
    a6 = v25;
    goto LABEL_13;
  }

  if (v10 == v11)
  {
    goto LABEL_26;
  }

LABEL_13:
  v14 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v14 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (a2._rawBits >> 14 > 4 * v14 || a2._rawBits >> 14 < a1._rawBits >> 14)
  {
LABEL_19:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a1._rawBits)
  {
    if (a2._rawBits)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v28 = a1._rawBits;
    v29 = a2._rawBits;
    v30 = a3;
    v31 = a6;
    v32 = a5;
    v33 = a4;
    v34._rawBits = _StringGuts.scalarAlignSlow(_:)(a1)._rawBits;
    a2._rawBits = v29;
    a3 = v30;
    a4 = v33;
    a5 = v32;
    a6 = v31;
    a1._rawBits = v28 & 0xC | v34._rawBits & 0xFFFFFFFFFFFFFFF3 | 1;
    if (v29)
    {
      goto LABEL_22;
    }
  }

  v35 = a1._rawBits;
  v36 = a2._rawBits;
  v37 = a3;
  v38 = a6;
  v39 = a5;
  v40 = a4;
  v41._rawBits = _StringGuts.scalarAlignSlow(_:)(a2)._rawBits;
  a3 = v37;
  a4 = v40;
  a5 = v39;
  a6 = v38;
  v42 = v41._rawBits;
  a1._rawBits = v35;
  a2._rawBits = v36 & 0xC | v42 & 0xFFFFFFFFFFFFFFF3 | 1;
LABEL_22:

  return specialized _StringGuts.replaceSubrange<A>(_:with:)(a1._rawBits, a2._rawBits, a3, a4, a5, a6);
}

void (*String.replaceSubrange<A>(_:with:)(Swift::String::Index a1, Swift::String::Index a2, unint64_t *a3, ValueMetadata *a4, uint64_t a5))(uint64_t *__return_ptr, void *)
{
  if (a4 == &type metadata for String)
  {
    v13 = a3[1];
    v14 = *a3;

    return specialized String.replaceSubrange<A>(_:with:)(a1._rawBits, a2, v14, v13);
  }

  else if (a4 == &type metadata for Substring)
  {
    v16 = a3[1];
    v17 = a3[2];
    v18 = a3[3];
    v19 = *a3;

    return specialized String.replaceSubrange<A>(_:with:)(a1, a2, v19, v16, v17, v18);
  }

  else
  {
    if (a4 != &unk_1EEEBBE38)
    {
      v7 = *v5;
      v6 = v5[1];
      v8 = (*v5 >> 59) & 1;
      if ((v6 & 0x1000000000000000) == 0)
      {
        LOBYTE(v8) = 1;
      }

      v9 = a1._rawBits & 0xC;
      v10 = 4 << v8;
      v11 = a2._rawBits & 0xC;
      if ((a1._rawBits & 1) != 0 && v9 != v10 && (a2._rawBits & 1) != 0 && v11 != v10)
      {
        v12 = HIBYTE(v6) & 0xF;
        if ((v6 & 0x2000000000000000) == 0)
        {
          v12 = v7 & 0xFFFFFFFFFFFFLL;
        }

        if (v12 < a2._rawBits >> 16)
        {
          goto LABEL_34;
        }

        goto LABEL_28;
      }

      if (v11 == v10)
      {
        v35._rawBits = a1._rawBits;
        v39 = a5;
        v42 = a3;
        v32 = v10;
        v33 = a4;
        v22._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(a2)._rawBits;
        a4 = v33;
        a5 = v39;
        a3 = v42;
        a2._rawBits = v22._rawBits;
        a1._rawBits = v35._rawBits;
        if (v9 != v32)
        {
          goto LABEL_22;
        }
      }

      else if (v9 != v10)
      {
        goto LABEL_22;
      }

      v36._rawBits = a2._rawBits;
      v40 = a5;
      v43 = a3;
      v23 = a4;
      a1._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(a1)._rawBits;
      a4 = v23;
      a2._rawBits = v36._rawBits;
      a5 = v40;
      a3 = v43;
LABEL_22:
      v20 = v7 & 0xFFFFFFFFFFFFLL;
      if ((v6 & 0x2000000000000000) != 0)
      {
        v20 = HIBYTE(v6) & 0xF;
      }

      if (a2._rawBits >> 14 > 4 * v20 || a2._rawBits >> 14 < a1._rawBits >> 14)
      {
LABEL_34:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if (a1._rawBits)
      {
        if (a2._rawBits)
        {
LABEL_28:

          return _StringGuts.replaceSubrange<A>(_:with:)(a1._rawBits, a2._rawBits, a3, a4, a5);
        }
      }

      else
      {
        rawBits = a1._rawBits;
        v37._rawBits = a2._rawBits;
        v41 = a5;
        v44 = a3;
        v34 = a4;
        v25._rawBits = _StringGuts.scalarAlignSlow(_:)(a1)._rawBits;
        a4 = v34;
        a2._rawBits = v37._rawBits;
        a5 = v41;
        a3 = v44;
        a1._rawBits = rawBits & 0xC | v25._rawBits & 0xFFFFFFFFFFFFFFF3 | 1;
        if (v37._rawBits)
        {
          goto LABEL_28;
        }
      }

      v38._rawBits = a1._rawBits;
      v26 = a2._rawBits;
      v27 = a3;
      v28 = a5;
      v29 = a4;
      v30._rawBits = _StringGuts.scalarAlignSlow(_:)(a2)._rawBits;
      a4 = v29;
      a5 = v28;
      a3 = v27;
      v31 = v30._rawBits;
      a1._rawBits = v38._rawBits;
      a2._rawBits = v26 & 0xC | v31 & 0xFFFFFFFFFFFFFFF3 | 1;
      goto LABEL_28;
    }

    v21 = *a3;

    return specialized String.replaceSubrange<A>(_:with:)(a1, a2, v21);
  }
}

Swift::Void __swiftcall String.insert(_:at:)(Swift::String _, Swift::String::Index at)
{
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  v4._rawBits = _StringGuts.validateInclusiveScalarIndex(_:)(at)._rawBits;

  specialized _StringGuts.replaceSubrange<A>(_:with:)(v4._rawBits, v4._rawBits, countAndFlagsBits, object);
}

void (*String.insert<A>(contentsOf:at:)(unint64_t *a1, Swift::String::Index a2, ValueMetadata *a3, uint64_t a4))(uint64_t *__return_ptr, void *)
{
  if (a3 == &type metadata for String)
  {
    v9 = *a1;
    v10 = a1[1];
    v11._rawBits = _StringGuts.validateInclusiveScalarIndex(_:)(a2)._rawBits;

    return specialized _StringGuts.replaceSubrange<A>(_:with:)(v11._rawBits, v11._rawBits, v9, v10);
  }

  else if (a3 == &type metadata for Substring)
  {
    v12 = *a1;
    v13 = a1[1];
    v14 = a1[2];
    v15 = a1[3];
    v16._rawBits = _StringGuts.validateInclusiveScalarIndex(_:)(a2)._rawBits;

    return specialized _StringGuts.replaceSubrange<A>(_:with:)(v16._rawBits, v16._rawBits, v12, v13, v14, v15);
  }

  else if (a3 == &unk_1EEEBBE38)
  {
    v17 = *a1;
    v18._rawBits = _StringGuts.validateInclusiveScalarIndex(_:)(a2)._rawBits;

    return specialized _StringGuts.replaceSubrange<A>(_:with:)(v18._rawBits, v18._rawBits, v17);
  }

  else
  {
    v7._rawBits = _StringGuts.validateInclusiveScalarIndex(_:)(a2)._rawBits;

    return _StringGuts.replaceSubrange<A>(_:with:)(v7._rawBits, v7._rawBits, a1, a3, a4);
  }
}

Swift::String __swiftcall String.remove(at:)(Swift::String::Index at)
{
  v2 = *v1;
  v3 = v1[1];
  v4._rawBits = _StringGuts.validateScalarIndex(_:)(at)._rawBits;
  v5 = (v4._rawBits >> 8) & 0x3F;
  v6 = v4._rawBits >> 16;
  if (!v5)
  {
    v7 = v2 & 0xFFFFFFFFFFFFLL;
    if ((v3 & 0x2000000000000000) != 0)
    {
      v8 = HIBYTE(v3) & 0xF;
    }

    else
    {
      v8 = v2 & 0xFFFFFFFFFFFFLL;
    }

    if (v4._rawBits >> 14 == 4 * v8)
    {
      v5 = 0;
      goto LABEL_22;
    }

    if ((v3 & 0x1000000000000000) != 0)
    {
      goto LABEL_37;
    }

    if ((v3 & 0x2000000000000000) != 0)
    {
      v34 = v2;
      v35 = v3 & 0xFFFFFFFFFFFFFFLL;
      if (v6 + 1 == (HIBYTE(v3) & 0xF))
      {
        goto LABEL_21;
      }

      v10 = *(&v34 + v6);
    }

    else
    {
      if ((v2 & 0x1000000000000000) != 0)
      {
        v9 = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v9 = _StringObject.sharedUTF8.getter(v2, v3);
      }

      if (v6 + 1 == v7)
      {
        goto LABEL_21;
      }

      if (!v9)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v10 = *&v9[v6];
    }

    if (v10 == 2573 || (v10 & 0x8080) != 0)
    {
LABEL_37:
      v5 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v4._rawBits >> 16);
      goto LABEL_22;
    }

LABEL_21:
    v5 = 1;
  }

LABEL_22:
  v12 = v5 + v6;
  v13 = (v5 + v6) & 0xFFFFFFFFFFFFLL;
  if ((v3 & 0x1000000000000000) != 0)
  {
    v29 = _StringGuts.foreignErrorCorrectedGrapheme(startingAt:endingAt:)(v4._rawBits >> 16, v13);
    object = v29._object;
    countAndFlagsBits = v29._countAndFlagsBits;
    goto LABEL_32;
  }

  if (v13 < v6)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((v3 & 0x2000000000000000) != 0)
  {
    v34 = v2;
    v35 = v3 & 0xFFFFFFFFFFFFFFLL;
    if ((HIBYTE(v3) & 0xF) >= v13)
    {
      v18 = v13 - v6;
      if ((v13 - v6) >= 0)
      {
        v22 = _allASCII(_:)((&v34 + v6), v13 - v6);
        v21 = &v34 + v6;
        v19 = v22;
        goto LABEL_31;
      }
    }

    goto LABEL_36;
  }

  if ((v2 & 0x1000000000000000) == 0)
  {
    v30 = v2;
    v31 = v13;
    v14 = _StringObject.sharedUTF8.getter(v30, v3);
    v15 = v32;
    v13 = v31;
    if (v15 >= v31)
    {
      goto LABEL_27;
    }

LABEL_36:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v14 = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
  v15 = v2 & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0xFFFFFFFFFFFFLL) < v13)
  {
    goto LABEL_36;
  }

LABEL_27:
  v16 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v4._rawBits >> 16, v13, v14, v15);
  v18 = v17;
  v19 = _allASCII(_:)(v16, v17);
  v21 = v16;
LABEL_31:
  countAndFlagsBits = specialized static String._uncheckedFromUTF8(_:isASCII:)(v21, v18, v19, v20);
LABEL_32:
  v25 = countAndFlagsBits;
  v26 = object;
  _StringGuts.remove(from:to:)(v4, ((v12 << 16) | 1));
  v27 = v25;
  v28 = v26;
  result._object = v28;
  result._countAndFlagsBits = v27;
  return result;
}

void String.removeSubrange(_:)(Swift::String::Index a1, Swift::String::Index a2)
{
  v3._rawBits = _StringGuts.validateScalarRange(_:)(a1, a2, *v2, v2[1])._rawBits;

  _StringGuts.remove(from:to:)(v3, v4);
}

Swift::Void __swiftcall String.removeAll(keepingCapacity:)(Swift::Bool keepingCapacity)
{
  if (!keepingCapacity)
  {
    v6 = v1[1];
LABEL_9:
    v6;
    *v1 = 0;
    v1[1] = 0xE000000000000000;
    return;
  }

  v2 = v1[1];
  if ((*v1 & ~v2 & 0x2000000000000000) == 0 || !swift_isUniquelyReferenced_nonNull_native(v2 & 0xFFFFFFFFFFFFFFFLL))
  {
    v6 = v2;
    goto LABEL_9;
  }

  v3 = 0xF000000000000000;
  *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x18) = 0xF000000000000000;
  *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x20) = 0;
  if ((*((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x10) & 0x8000000000000000) != 0)
  {
    v4 = __StringStorage._breadcrumbsAddress.getter();
    v5 = *v4;
    *v4 = 0;
    v5;
    v3 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
  }

  *v1 = v3;
}

uint64_t protocol witness for RangeReplaceableCollection.init(repeating:count:) in conformance String@<X0>(Swift::Int count@<X1>, Swift::String *a2@<X0>, Swift::String *a3@<X8>)
{
  v5 = String.init(repeating:count:)(*a2, count);
  result = v5._countAndFlagsBits;
  *a3 = v5;
  return result;
}

unint64_t protocol witness for RangeReplaceableCollection.init<A>(_:) in conformance String@<X0>(unint64_t *a1@<X0>, ValueMetadata *a2@<X1>, unint64_t *a3@<X8>)
{
  result = String.init<A>(_:)(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

void protocol witness for RangeReplaceableCollection.append(_:) in conformance String(uint64_t *a1)
{
  v1 = a1[1];
  v2._countAndFlagsBits = *a1;
  v2._object = v1;
  String.write(_:)(v2);

  v1;
}

void protocol witness for RangeReplaceableCollection.insert(_:at:) in conformance String(uint64_t *a1, Swift::String::Index *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4._rawBits = _StringGuts.validateInclusiveScalarIndex(_:)(a2->_rawBits)._rawBits;
  specialized _StringGuts.replaceSubrange<A>(_:with:)(v4._rawBits, v4._rawBits, v2, v3);

  v3;
}

uint64_t protocol witness for RangeReplaceableCollection.remove(at:) in conformance String@<X0>(Swift::String::Index *a1@<X0>, Swift::String *a2@<X8>)
{
  v4 = String.remove(at:)(a1->_rawBits);
  result = v4._countAndFlagsBits;
  *a2 = v4;
  return result;
}

void protocol witness for RangeReplaceableCollection.removeSubrange(_:) in conformance String(Swift::UInt64 *a1)
{
  v2._rawBits = a1[1];
  v3._rawBits = *a1;
  v4._rawBits = _StringGuts.validateScalarRange(_:)(v3, v2, *v1, v1[1])._rawBits;

  _StringGuts.remove(from:to:)(v4, v5);
}

uint64_t protocol witness for RangeReplaceableCollection.removeFirst() in conformance String@<X0>(uint64_t *a1@<X8>)
{
  result = specialized RangeReplaceableCollection.removeFirst()();
  *a1 = result;
  a1[1] = v3;
  return result;
}

Swift::Void __swiftcall String._boundsCheck(_:)(Swift::String::Index a1)
{
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3 <= a1._rawBits >> 16)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }
}

void String._boundsCheck(_:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < a2 >> 16)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }
}

{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= a2 >> 16)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }
}

uint64_t String.max<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v9 = (*(a4 + 32))(a2, a1, a3, a4);
  v10 = *(*(a3 - 8) + 16);
  if (v9)
  {
    v11 = a2;
  }

  else
  {
    v11 = a1;
  }

  return v10(a5, v11, a3);
}

uint64_t String.min<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v9 = (*(a4 + 16))(a2, a1, a3, a4);
  v10 = *(*(a3 - 8) + 16);
  if (v9)
  {
    v11 = a2;
  }

  else
  {
    v11 = a1;
  }

  return v10(a5, v11, a3);
}

void static Sequence<>.+ infix(_:_:)()
{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "Swift/StringRangeReplaceableCollection.swift", 0x2CuLL, 2, 0x168uLL);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "Swift/StringRangeReplaceableCollection.swift", 0x2CuLL, 2, 0x16DuLL);
}

Swift::Int __swiftcall Int.init(_:)(Swift::Float a1)
{
  if ((LODWORD(a1) & 0x7FFFFFFFu) >= 0x7F800000 || a1 <= -9.2234e18 || a1 >= 9.2234e18)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1;
}

int64_t _allocateStringStorage(codeUnitCapacity:)(int64_t result)
{
  v2 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  v1 = 8 * (result > 63);
  v3 = __OFADD__(v2, v1);
  v2 += v1;
  if (v3)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = __OFADD__(v2, 32);
  v2 += 32;
  if (v3)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v2 <= 127)
  {
    v4 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
    v5 = v4 - 32;
    if (__OFSUB__(v4, 32))
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v6 = type metadata accessor for __StringStorage();
    result = swift_allocObject(v6, (v5 + 32), 7uLL);
    if (!__OFSUB__(v5, v1))
    {
      return result;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_11:
  v7 = v2 + 15;
  if (__OFADD__(v2, 15))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = type metadata accessor for __StringStorage();
  v9 = swift_allocObject(v8, (v7 & 0xFFFFFFFFFFFFFFF0), 7uLL);
  result = _swift_stdlib_malloc_size(v9);
  v10 = result - 32;
  if (__OFSUB__(result, 32))
  {
LABEL_18:
    __break(1u);
    return result;
  }

  result = v9;
  if (__OFSUB__(v10, v1))
  {
    goto LABEL_15;
  }

  return result;
}

unint64_t __StringStorage._breadcrumbsAddress.getter()
{
  v1 = *(v0 + 16);
  if ((v1 & 0x8000000000000000) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return (v0 + (v1 & 0xFFFFFFFFFFFFLL) + 39) & 0xFFFFFFFFFFFFFFF8;
}

void __StringStorage.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  if (v1 < 0)
  {
    outlined destroy of _HasContiguousBytes?((v0 + (v1 & 0xFFFFFFFFFFFFLL) + 39) & 0xFFFFFFFFFFFFFFF8, &_ss18_StringBreadcrumbsCSgMd, _ss18_StringBreadcrumbsCSgMR);
  }

  swift_deallocClassInstance(v0);
}

uint64_t __SharedStringStorage.__ivar_destroyer()
{
  swift_unknownObjectRelease(*(v0 + 16));
  v1 = *(v0 + 40);

  return v1;
}

void __SharedStringStorage.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
    if (*(v0 + 48) == 1)
    {
      v1 = 0;
    }

    else
    {
      *(v0 + 24);
      v1 = *(v0 + 16);
    }
  }

  v0;
  swift_unknownObjectRelease(v1);
  v2 = *(v0 + 40);
  v0;
  v2;

  swift_deallocClassInstance(v0);
}

atomic_ullong *_StringGuts.loadUnmanagedBreadcrumbs()(uint64_t a1, unint64_t a2)
{
  v4 = a2 & 0xFFFFFFFFFFFFFFFLL;
  if ((a1 & ~a2 & 0x2000000000000000) != 0)
  {
    v5 = __StringStorage._breadcrumbsAddress.getter();
    explicit = atomic_load_explicit(v5, memory_order_acquire);
    if (explicit)
    {
      return explicit;
    }
  }

  else
  {
    v5 = (v4 + 40);
    explicit = atomic_load_explicit((v4 + 40), memory_order_acquire);
    if (explicit)
    {
      return explicit;
    }
  }

  v7 = type metadata accessor for _StringBreadcrumbs();
  explicit = swift_allocObject(v7, 0x20, 7uLL);
  a2;
  _StringBreadcrumbs.init(_:)(a1, a2);
  v8 = explicit;
  v9 = 0;
  atomic_compare_exchange_strong(v5, &v9, explicit);
  v8;
  if (v9)
  {
    explicit;
    return v9;
  }

  return explicit;
}

uint64_t String.init(_nativeStorage:)(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_4;
  }

  v2 = _swift_classOfObjCHeapObject(a1);
  if (type metadata accessor for __StringStorage() == v2)
  {
    v4 = 24;
  }

  else
  {
    if (type metadata accessor for __SharedStringStorage() != v2)
    {
LABEL_4:
      swift_unknownObjectRelease(a1);
      return 0;
    }

    v4 = 32;
  }

  return *(a1 + v4);
}

uint64_t specialized _AbstractStringStorage._lengthOfBytes(using:)(uint64_t a1)
{
  if (a1 > 9)
  {
    if (a1 == 10)
    {
      v7 = String.UTF16View.count.getter(v1[3], v1);
      if (v7 < 0)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      return 2 * v7;
    }

    if (a1 == 30)
    {
      v4 = v1[3];
      v3 = v4 & 0xFFFFFFFFFFFFLL;
      if (v4 < 0 || _allASCII(_:)(v1 + 4, v4 & 0xFFFFFFFFFFFFLL))
      {
        return v3;
      }
    }
  }

  else
  {
    if (a1 == 1)
    {
      v6 = v1[3];
      v3 = v6 & 0xFFFFFFFFFFFFLL;
      if ((v6 & 0x8000000000000000) == 0 && !_allASCII(_:)(v1 + 4, v6 & 0xFFFFFFFFFFFFLL))
      {
        return 0;
      }

      return v3;
    }

    if (a1 == 4)
    {
      return v1[3] & 0xFFFFFFFFFFFFLL;
    }
  }

  return _swift_stdlib_NSStringLengthOfBytesInEncodingTrampoline(v1, a1);
}

{
  if (a1 > 9)
  {
    if (a1 == 10)
    {
      v7 = String.UTF16View.count.getter(*(v1 + 32), v1);
      if (v7 < 0)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      return 2 * v7;
    }

    if (a1 == 30)
    {
      v4 = *(v1 + 32);
      v3 = v4 & 0xFFFFFFFFFFFFLL;
      if (v4 < 0 || _allASCII(_:)(*(v1 + 24), v4 & 0xFFFFFFFFFFFFLL))
      {
        return v3;
      }
    }
  }

  else
  {
    if (a1 == 1)
    {
      v6 = *(v1 + 32);
      v3 = v6 & 0xFFFFFFFFFFFFLL;
      if ((v6 & 0x8000000000000000) == 0 && !_allASCII(_:)(*(v1 + 24), v6 & 0xFFFFFFFFFFFFLL))
      {
        return 0;
      }

      return v3;
    }

    if (a1 == 4)
    {
      return *(v1 + 32) & 0xFFFFFFFFFFFFLL;
    }
  }

  return _swift_stdlib_NSStringLengthOfBytesInEncodingTrampoline(v1, a1);
}

unint64_t static UInt.* infix(_:_:)(unint64_t result, unint64_t a2)
{
  if (is_mul_ok(result, a2))
  {
    result *= a2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL specialized _AbstractStringStorage._nativeIsEqual<A>(_:)(uint64_t a1)
{
  v2 = *(v1 + 32) & 0xFFFFFFFFFFFFLL;
  if (v2 != (*(a1 + 24) & 0xFFFFFFFFFFFFLL))
  {
    return 0;
  }

  if (*(v1 + 24) == a1 + 32)
  {
    return 1;
  }

  return memcmp(*(v1 + 24), (a1 + 32), v2) == 0;
}

{
  v2 = *(v1 + 24) & 0xFFFFFFFFFFFFLL;
  if (v2 != (*(a1 + 32) & 0xFFFFFFFFFFFFLL))
  {
    return 0;
  }

  v3 = *(a1 + 24);
  return (v1 + 32) == v3 || memcmp((v1 + 32), v3, v2) == 0;
}

{
  v2 = *(v1 + 32) & 0xFFFFFFFFFFFFLL;
  if (v2 != (*(a1 + 32) & 0xFFFFFFFFFFFFLL))
  {
    return 0;
  }

  v3 = *(a1 + 24);
  return *(v1 + 24) == v3 || memcmp(*(v1 + 24), v3, v2) == 0;
}

Swift::UInt16 __swiftcall __StringStorage.character(at:)(Swift::Int at)
{
  v2 = *(v1 + 24);
  v3._rawBits = String.UTF16View.index(_:offsetBy:)(15, at)._rawBits;
  rawBits = v3._rawBits;
  v5 = (v2 >> 59) & 1;
  if ((v1 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((v3._rawBits & 0xC) == 4 << v5)
  {
    rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v3)._rawBits;
  }

  v6 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v6 = v2 & 0xFFFFFFFFFFFFLL;
  }

  v7 = rawBits >> 16;
  if (rawBits >> 16 >= v6)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((v1 & 0x1000000000000000) != 0)
  {

    return String.UTF16View._foreignSubscript(position:)(rawBits);
  }

  else
  {
    if ((rawBits & 1) == 0)
    {
      v7 = _StringGuts.scalarAlignSlow(_:)(rawBits)._rawBits >> 16;
    }

    v1;
    LODWORD(v8) = _StringGuts.fastUTF8Scalar(startingAt:)(v7);
    v9 = Unicode.Scalar.UTF16View.subscript.getter(rawBits >> 14, v8);
    v1;
    return v9;
  }
}

uint64_t String.UTF16View.subscript.getter(Swift::String::Index a1, unint64_t a2, unint64_t a3)
{
  rawBits = a1._rawBits;
  v4 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v4) = 1;
  }

  if ((a1._rawBits & 0xC) == 4 << v4)
  {
    v9 = a2;
    v10 = a3;
    v11._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(a1)._rawBits;
    a2 = v9;
    a3 = v10;
    rawBits = v11._rawBits;
  }

  v5 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v5 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v6 = rawBits >> 16;
  if (rawBits >> 16 >= v5)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((a3 & 0x1000000000000000) != 0)
  {

    return String.UTF16View._foreignSubscript(position:)(rawBits);
  }

  else
  {
    if ((rawBits & 1) == 0)
    {
      v6 = _StringGuts.scalarAlignSlow(_:)(rawBits)._rawBits >> 16;
    }

    LODWORD(v7) = _StringGuts.fastUTF8Scalar(startingAt:)(v6);

    return Unicode.Scalar.UTF16View.subscript.getter(rawBits >> 14, v7);
  }
}

void __StringStorage.getCharacters(_:range:)(unint64_t a1, Swift::Int a2, uint64_t a3)
{
  if (a2 < 0 || a3 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = a2 + a3;
  if (__OFADD__(a2, a3))
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = *(v3 + 24);
  if ((v6 & 0xFFFFFFFFFFFFLL) < v5)
  {
    goto LABEL_10;
  }

  if (__OFSUB__(v5, a2))
  {
    __break(1u);
LABEL_14:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a3 < 0)
  {
    goto LABEL_14;
  }

  v3;
  v8._rawBits = 15;
  v9 = String.UTF16View._indexRange(for:from:)(a2, v5, v8, v6, v3);
  String.UTF16View._nativeCopy(into:alignedRange:)(a1, v5 - a2, v9, v10, v6, v3);

  v3;
}

uint64_t __StringStorage.getCString(_:maxLength:encoding:)(char *__dst, uint64_t a2, unint64_t a3)
{
  v5 = *(v3 + 24);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (a3 != 4)
    {
      goto LABEL_3;
    }

LABEL_7:
    if ((v5 & 0xFFFFFFFFFFFFLL) >= a2)
    {
      return 0;
    }

    specialized UnsafeMutablePointer.initialize(from:count:)((v3 + 32), v5 & 0xFFFFFFFFFFFFLL, __dst);
    __dst[*(v3 + 24) & 0xFFFFFFFFFFFFLL] = 0;
    return 1;
  }

  if (a3 <= 0x1E && ((1 << a3) & 0x40000012) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  CStringTrampoline = _swift_stdlib_NSStringGetCStringTrampoline(v3, __dst, a2, a3);
  if (CStringTrampoline < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return CStringTrampoline;
}

uint64_t __StringStorage.isEqualToString(to:)(uint64_t result, double a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, void *))
{
  if (result)
  {
    v5 = result;
    if (result == v4)
    {
      return 1;
    }

    if (result < 0)
    {
      goto LABEL_9;
    }

    v7 = *v4;
    v8 = _swift_classOfObjCHeapObject(result);
    if (v7 == v8)
    {
      v9 = v4[3] & 0xFFFFFFFFFFFFLL;
      if (v9 == (v5[3] & 0xFFFFFFFFFFFFLL))
      {
        return memcmp(v4 + 4, v5 + 4, v9) == 0;
      }

      return 0;
    }

    if (type metadata accessor for __SharedStringStorage() == v8)
    {

      return specialized _AbstractStringStorage._nativeIsEqual<A>(_:)(v5);
    }

    else
    {
LABEL_9:
      result = _swift_stdlib_isNSString(a2);
      if (result)
      {
        v10 = [v5 length];
        v12 = MEMORY[0x1EEE9AC00](v10);
        MEMORY[0x1EEE9AC00](v12);
        v11 = specialized _withCocoaASCIIPointer<A>(_:requireStableAddress:work:)(v5, a4);
        if (v11 == 2)
        {
          if (String.UTF16View.count.getter(v4[3], v4) == v10)
          {
            return [v4 compare:v5 options:2 range:0 locale:{objc_msgSend(v4, sel_length), 0}] == 0;
          }

          return 0;
        }

        return v11 & 1;
      }
    }
  }

  return result;
}