unint64_t Sequence<>.joined(separator:)(uint64_t a1, unint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v330 = a5;
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v12 = v11;
  v346 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v331 = (&v319 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x1EEE9AC00](v13);
  v328 = (&v319 - v16);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v337 = (&v319 - v18);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v338 = (&v319 - v20);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v334 = (&v319 - v22);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v341 = &v319 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v344 = (&v319 - v26);
  MEMORY[0x1EEE9AC00](v25);
  v332 = (&v319 - v27);
  v327 = type metadata accessor for Optional(0, v12, v28, v29);
  v326 = *(v327 - 8);
  v30 = MEMORY[0x1EEE9AC00](v327);
  v340 = &v319 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = &v319 - v33;
  v35 = MEMORY[0x1EEE9AC00](v32);
  v343 = &v319 - v36;
  v37 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v35);
  v39 = &v319 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v349 = v40;
  v41 = MEMORY[0x1EEE9AC00](v40);
  MEMORY[0x1EEE9AC00](v41);
  v345 = &v319 - v44;
  if (a3 == &unk_1EEEBBE70)
  {
    return specialized Sequence<>.joined(separator:)(a1, a2, *v6);
  }

  v342 = a1;
  v339 = a2;
  if (a3 == &unk_1EEEBD150)
  {
    return specialized Sequence<>.joined(separator:)(v342, v339, *v6);
  }

  v336 = v43;
  v322 = v42;
  v347 = v12;
  v329 = HIBYTE(v339) & 0xF;
  v335 = v342 & 0xFFFFFFFFFFFFLL;
  if ((v339 & 0x2000000000000000) != 0)
  {
    v45 = HIBYTE(v339) & 0xF;
  }

  else
  {
    v45 = v342 & 0xFFFFFFFFFFFFLL;
  }

  v46 = (*(a4 + 40))(a3, a4);
  v47 = v46 + v46 * v45;
  v352 = 0;
  v353 = 0xE000000000000000;
  if (v47 >= 16)
  {
    v48 = _StringGuts.uniqueNativeCapacity.getter();
    if ((v49 & 1) != 0 || v48 < v47)
    {
      v51 = 2 * _StringGuts.uniqueNativeCapacity.getter();
      if (v51 <= v47)
      {
        v51 = v47;
      }

      if (v50)
      {
        v52 = v47;
      }

      else
      {
        v52 = v51;
      }

      v350 = 0;
      v351 = 0;
      v53 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(&v350, 0, v52, 1);
      v54 = *(v53 + 24);
      0xE000000000000000;
      v352 = v54;
      v353 = v53;
    }
  }

  (*(v37 + 16))(v39, v6, a3);
  v55 = *(a4 + 32);
  v56 = v346;
  v57 = (v346 + 48);
  if (v45)
  {
    v323 = v45;
    v58 = v336;
    v55(a3, a4);
    v59 = a4;
    v60 = v349;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v59, a3, v349, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
    v62 = *(AssociatedConformanceWitness + 16);
    v344 = (AssociatedConformanceWitness + 16);
    v345 = AssociatedConformanceWitness;
    v343 = v62;
    (v62)(v60);
    v63 = v347;
    v341 = *v57;
    if ((v341)(v34, 1, v347) == 1)
    {
      (*(v322 + 8))(v58, v60);
      (*(v326 + 8))(v34, v327);
      return v352;
    }

    v74 = v332;
    v333 = *(v56 + 32);
    v334 = (v56 + 32);
    (v333)(v332, v34, v63);
    v348 = (v56 + 48);
    if (v63 == &type metadata for String)
    {
      v95 = *v74;
      v100 = v74[1];
      v100;
    }

    else
    {
      if (v63 == &type metadata for Substring)
      {
        v147 = *v74;
        v148 = v74[1];
        v149 = v74[2];
        v150 = v74[3];
        v150;
        v76 = _sSSySSxcs25LosslessStringConvertibleRzSTRzSJ7ElementSTRtzlufCSs_Tt0g5(v147, v148, v149, v150);
      }

      else
      {
        v75 = v331;
        (*(v56 + 16))(v331, v74, v63);
        v76 = String.init<A>(_:)(v75, v63);
      }

      v95 = v76;
      v100 = v77;
    }

    v151 = *(v56 + 8);
    v332 = (v56 + 8);
    v331 = v151;
    (v151)(v74, v63);
    v90 = v352;
    v93 = v353;
    v152 = HIBYTE(v353) & 0xF;
    v91 = (v352 & 0xFFFFFFFFFFFFLL);
    if ((v353 & 0x2000000000000000) != 0)
    {
      v96 = HIBYTE(v353) & 0xF;
    }

    else
    {
      v96 = v352 & 0xFFFFFFFFFFFFLL;
    }

    if (v96 || (v352 & ~v353 & 0x2000000000000000) != 0)
    {
      LOBYTE(v84) = (v100 & 0x2000000000000000) == 0;
      v98 = HIBYTE(v100) & 0xF;
      if ((v353 & 0x2000000000000000) != 0)
      {
        if ((v100 & 0x2000000000000000) != 0)
        {
          v173 = v152 + v98;
          if (v152 + v98 < 0x10)
          {
            if (v98)
            {
              v186 = 0;
              v187 = 0;
              v188 = 8 * v152;
              v189 = 8 * v98;
              v190 = v353;
              v96 = v347;
              v170 = v349;
              v84 = v339;
              do
              {
                v191 = v100 >> (v186 & 0x38);
                if (v187 < 8)
                {
                  v191 = v95 >> v186;
                }

                v192 = (v191 << (v188 & 0x38)) | ((-255 << (v188 & 0x38)) - 1) & v190;
                v193 = (v191 << v188) | ((-255 << v188) - 1) & v90;
                if (v152 <= 7)
                {
                  v90 = v193;
                }

                else
                {
                  v190 = v192;
                }

                ++v152;
                v188 += 8;
                v186 += 8;
                ++v187;
              }

              while (v189 != v186);
            }

            else
            {
              v190 = v353;
              v96 = v347;
              v170 = v349;
              v84 = v339;
            }

            v353;
            v100;
            v194 = 0xA000000000000000;
            if (!(v90 & 0x8080808080808080 | v190 & 0x80808080808080))
            {
              v194 = 0xE000000000000000;
            }

            v352 = v90;
            v353 = v194 & 0xFF00000000000000 | (v173 << 56) | v190 & 0xFFFFFFFFFFFFFFLL;
            goto LABEL_192;
          }

          LOBYTE(v84) = 0;
          v153 = v95 & 0xFFFFFFFFFFFFLL;
          v83 = HIBYTE(v100) & 0xF;
LABEL_132:
          v325 = v153;
          if ((v100 & 0x1000000000000000) != 0)
          {
            goto LABEL_363;
          }

          v100;
          v155 = v83;
          if ((v93 & 0x1000000000000000) != 0)
          {
            goto LABEL_366;
          }

          goto LABEL_134;
        }

        v153 = v95 & 0xFFFFFFFFFFFFLL;
        LOBYTE(v84) = 1;
      }

      else
      {
        v153 = v95 & 0xFFFFFFFFFFFFLL;
        v83 = HIBYTE(v100) & 0xF;
        if ((v100 & 0x2000000000000000) != 0)
        {
          goto LABEL_132;
        }
      }

      v83 = v153;
      goto LABEL_132;
    }

    v353;
    v352 = v95;
    v353 = v100;
    goto LABEL_176;
  }

  v55(a3, a4);
  v65 = v349;
  v66 = swift_getAssociatedConformanceWitness(a4, a3, v349, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v67 = *(v66 + 16);
  v68 = v343;
  v342 = v66;
  v339 = v67;
  v340 = (v66 + 16);
  v67(v65);
  v69 = *v57;
  v70 = v347;
  v348 = v57;
  v338 = v69;
  v71 = (v69)(v68, 1, v347);
  v72 = v341;
  v73 = v344;
  if (v71 == 1)
  {
LABEL_21:
    (*(v322 + 8))(v345, v65);
    return v352;
  }

  v78 = *(v346 + 32);
  v333 = (v346 + 16);
  v346 += 32;
  v79 = (v346 - 24);
  v336 = (v346 - 24);
  v337 = v78;
  v78(v344, v68, v70);
  while (1)
  {
    if (v70 == &type metadata for String)
    {
      v83 = *v73;
      v84 = v73[1];
LABEL_39:
      v84;
      goto LABEL_42;
    }

    if (v70 != &type metadata for Substring)
    {
      v81 = *v333;
      (*v333)(v72, v73, v70);
      v82 = v334;
      v81(v334, v72, v70);
      if (swift_dynamicCast(&v350, v82, v70, &type metadata for String, 6uLL))
      {
        (*v79)(v72, v70);
        v83 = v350;
        v84 = v351;
      }

      else
      {
        v83 = (*(*(*(v330 + 40) + 8) + 8))(v70);
        v84 = v88;
        (*v79)(v72, v70);
      }

      goto LABEL_42;
    }

    v85 = *v73;
    v86 = v73[1];
    v83 = v73[2];
    v84 = v73[3];
    v87 = HIBYTE(v84) & 0xF;
    if ((v84 & 0x2000000000000000) == 0)
    {
      v87 = v83 & 0xFFFFFFFFFFFFLL;
    }

    if (!(v85 >> 16) && v86 >> 16 == v87)
    {
      goto LABEL_39;
    }

    v83 = specialized static String._copying(_:)(v85, v86, v73[2], v73[3]);
    v84 = v89;
LABEL_42:
    (*v79)(v73, v70);
    v91 = v352;
    v90 = v353;
    v92 = HIBYTE(v353) & 0xF;
    v93 = v352 & 0xFFFFFFFFFFFFLL;
    if ((v353 & 0x2000000000000000) != 0)
    {
      v94 = HIBYTE(v353) & 0xF;
    }

    else
    {
      v94 = v352 & 0xFFFFFFFFFFFFLL;
    }

    if (!v94 && (v352 & ~v353 & 0x2000000000000000) == 0)
    {
      v353;
      v352 = v83;
      v353 = v84;
      goto LABEL_27;
    }

    v95 = (v84 & 0x2000000000000000) == 0;
    v96 = HIBYTE(v84) & 0xF;
    if ((v353 & 0x2000000000000000) != 0)
    {
      break;
    }

    v97 = v83 & 0xFFFFFFFFFFFFLL;
    v98 = HIBYTE(v84) & 0xF;
    if ((v84 & 0x2000000000000000) == 0)
    {
      goto LABEL_52;
    }

LABEL_53:
    v335 = v97;
    if ((v84 & 0x1000000000000000) != 0)
    {
      goto LABEL_82;
    }

LABEL_54:
    v84;
    v100 = v98;
    if ((v90 & 0x1000000000000000) != 0)
    {
      goto LABEL_85;
    }

LABEL_55:
    v101 = __OFADD__(v94, v100);
    v102 = v94 + v100;
    if (v101)
    {
      goto LABEL_360;
    }

LABEL_56:
    if ((*&v91 & ~v90 & 0x2000000000000000) == 0 || !swift_isUniquelyReferenced_nonNull_native(v90 & 0xFFFFFFFFFFFFFFFLL))
    {
      if (v102 >= 16)
      {
        goto LABEL_67;
      }

      if ((v90 & 0x2000000000000000) != 0)
      {
LABEL_73:
        v106 = v90;
        goto LABEL_74;
      }

LABEL_62:
      if ((v90 & 0x1000000000000000) != 0)
      {
        v91 = _StringGuts._foreignConvertedToSmall()(*&v91, v90);
        v106 = v139;
LABEL_74:
        v70 = v347;
      }

      else
      {
        if ((*&v91 & 0x1000000000000000) != 0)
        {
          v105 = ((v90 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v105 = _StringObject.sharedUTF8.getter(*&v91, v90);
          v93 = v144;
        }

        v70 = v347;
        closure #1 in _StringGuts._convertedToSmall()(v105, v93, &v350, v99);
        v91 = v350;
        v106 = v351;
      }

      v84;
      v112._rawBits = 1;
      v113._rawBits = (v98 << 16) | 1;
      v114._rawBits = _StringGuts.validateScalarRange(_:)(v112, v113, v83, v84)._rawBits;
      if (v114._rawBits < 0x10000)
      {
        v114._rawBits |= 3;
      }

      if (v114._rawBits >> 16 || v115._rawBits >> 16 != v98)
      {
        v83 = specialized static String._copying(_:)(v114._rawBits, v115._rawBits, v83, v84);
        v117 = v124;
        v84;
      }

      else
      {
        v117 = v84;
      }

      v65 = v349;
      v79 = v336;
      if ((v117 & 0x2000000000000000) != 0)
      {
        v117;
      }

      else if ((v117 & 0x1000000000000000) != 0)
      {
        v83 = _StringGuts._foreignConvertedToSmall()(v83, v117);
        v146 = v145;
        v117;
        v117 = v146;
      }

      else
      {
        if ((v83 & 0x1000000000000000) != 0)
        {
          v140 = ((v117 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v141 = v83 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v140 = _StringObject.sharedUTF8.getter(v83, v117);
        }

        closure #1 in _StringGuts._convertedToSmall()(v140, v141, &v350, v116);
        v117;
        v83 = v350;
        v117 = v351;
      }

      v125 = specialized _SmallString.init(_:appending:)(*&v91, v106, v83, v117);
      if (v127)
      {
        goto LABEL_380;
      }

      v128 = v125;
      v129 = v126;
      v90;
      swift_bridgeObjectRelease_n(v84, 2);
      v352 = v128;
      v353 = v129;
      v72 = v341;
LABEL_108:
      v80 = v343;
      v73 = v344;
      goto LABEL_28;
    }

    v103 = _StringGuts.nativeUnusedCapacity.getter(*&v91, v90);
    if (v104)
    {
      goto LABEL_380;
    }

    if (v102 <= 15)
    {
      if ((v90 & 0x2000000000000000) != 0)
      {
        goto LABEL_73;
      }

      if (v103 < v100)
      {
        goto LABEL_62;
      }
    }

LABEL_67:
    _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v102, v100);
    if ((v84 & 0x1000000000000000) != 0)
    {
      _StringGuts._foreignAppendInPlace(_:)(v83, v84, 0, v98);
      swift_bridgeObjectRelease_n(v84, 2);
      v70 = v347;
      v65 = v349;
      v72 = v341;
LABEL_27:
      v80 = v343;
      v73 = v344;
      v79 = v336;
      goto LABEL_28;
    }

    v73 = v344;
    v79 = v336;
    if (v95)
    {
      if ((v83 & 0x1000000000000000) != 0)
      {
        v107 = (v84 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v108 = v335;
        v109 = v335;
        v70 = v347;
        v65 = v349;
        v72 = v341;
      }

      else
      {
        v142 = _StringObject.sharedUTF8.getter(v83, v84);
        if (v143 < v335)
        {
          goto LABEL_379;
        }

        v107 = v142;
        v109 = v143;
        v70 = v347;
        v65 = v349;
        v72 = v341;
        v73 = v344;
        v108 = v335;
        v79 = v336;
      }

      v110 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v108, v107, v109);
      closure #1 in _StringGuts.append(_:)(v110, v111, &v352, v83 < 0);
      swift_bridgeObjectRelease_n(v84, 2);
      v80 = v343;
    }

    else
    {
      v350 = v83;
      v351 = v84 & 0xFFFFFFFFFFFFFFLL;
      closure #1 in _StringGuts.append(_:)(&v350, HIBYTE(v84) & 0xF, &v352, (v84 & 0x4000000000000000) != 0);
      swift_bridgeObjectRelease_n(v84, 2);
      v70 = v347;
      v65 = v349;
      v72 = v341;
      v80 = v343;
    }

LABEL_28:
    (v339)(v65, v342);
    if (v338(v80, 1, v70) == 1)
    {
      goto LABEL_21;
    }

    v337(v73, v80, v70);
  }

  if ((v84 & 0x2000000000000000) == 0)
  {
    v97 = v83 & 0xFFFFFFFFFFFFLL;
    v95 = 1;
LABEL_52:
    v98 = v97;
    goto LABEL_53;
  }

  v118 = v92 + v96;
  if (v92 + v96 < 0x10)
  {
    if (v96)
    {
      v130 = 0;
      v131 = 0;
      v132 = 8 * v92;
      v133 = 8 * v96;
      v134 = v353;
      v70 = v347;
      v72 = v341;
      v79 = v336;
      do
      {
        v135 = v84 >> (v130 & 0x38);
        if (v131 < 8)
        {
          v135 = v83 >> v130;
        }

        v136 = (v135 << (v132 & 0x38)) | ((-255 << (v132 & 0x38)) - 1) & v134;
        v137 = (v135 << v132) | ((-255 << v132) - 1) & *&v91;
        if (v92 <= 7)
        {
          v91 = v137;
        }

        else
        {
          v134 = v136;
        }

        ++v92;
        v132 += 8;
        v130 += 8;
        ++v131;
      }

      while (v133 != v130);
    }

    else
    {
      v134 = v353;
      v70 = v347;
      v72 = v341;
      v79 = v336;
    }

    v353;
    v84;
    v138 = 0xA000000000000000;
    if (!(*&v91 & 0x8080808080808080 | v134 & 0x80808080808080))
    {
      v138 = 0xE000000000000000;
    }

    v352 = v91;
    v353 = v138 & 0xFF00000000000000 | (v118 << 56) | v134 & 0xFFFFFFFFFFFFFFLL;
    goto LABEL_108;
  }

  v95 = 0;
  v98 = HIBYTE(v84) & 0xF;
  v335 = v83 & 0xFFFFFFFFFFFFLL;
  if ((v84 & 0x1000000000000000) == 0)
  {
    goto LABEL_54;
  }

LABEL_82:
  swift_bridgeObjectRetain_n(v84, 2);
  v119._rawBits = 1;
  v120._rawBits = (v98 << 16) | 1;
  v121._rawBits = _StringGuts.validateScalarRange(_:)(v119, v120, v83, v84)._rawBits;
  if (v121._rawBits < 0x10000)
  {
    v121._rawBits |= 3;
  }

  v100 = String.UTF8View.distance(from:to:)(v121, v122);
  v84;
  if ((v90 & 0x1000000000000000) == 0)
  {
    goto LABEL_55;
  }

LABEL_85:
  v123 = String.UTF8View._foreignCount()();
  v102 = v123 + v100;
  if (!__OFADD__(v123, v100))
  {
    goto LABEL_56;
  }

LABEL_360:
  __break(1u);
LABEL_361:
  __break(1u);
LABEL_362:
  __break(1u);
LABEL_363:
  swift_bridgeObjectRetain_n(v100, 2);
  v304._rawBits = 1;
  v305._rawBits = (v83 << 16) | 1;
  v306._rawBits = _StringGuts.validateScalarRange(_:)(v304, v305, v95, v100)._rawBits;
  if (v306._rawBits < 0x10000)
  {
    v306._rawBits |= 3;
  }

  v155 = String.UTF8View.distance(from:to:)(v306, v307);
  v100;
  if ((v93 & 0x1000000000000000) != 0)
  {
LABEL_366:
    v308 = String.UTF8View._foreignCount()();
    v156 = v308 + v155;
    if (!__OFADD__(v308, v155))
    {
      goto LABEL_135;
    }

LABEL_368:
    __break(1u);
LABEL_369:
    if ((v93 & 0x1000000000000000) != 0)
    {
      v90 = _StringGuts._foreignConvertedToSmall()(v90, v93);
      v160 = v315;
    }

    else
    {
      if ((v90 & 0x1000000000000000) != 0)
      {
        v309 = ((v93 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v309 = _StringObject.sharedUTF8.getter(v90, v93);
        v91 = v318;
      }

      closure #1 in _StringGuts._convertedToSmall()(v309, *&v91, &v350, v154);
      v90 = v350;
      v160 = v351;
    }

LABEL_144:
    v96 = v347;
    v100;
    v161._rawBits = 1;
    v162._rawBits = (v83 << 16) | 1;
    v163._rawBits = _StringGuts.validateScalarRange(_:)(v161, v162, v95, v100)._rawBits;
    if (v163._rawBits < 0x10000)
    {
      v163._rawBits |= 3;
    }

    if (v163._rawBits >> 16 || v164._rawBits >> 16 != v83)
    {
      v95 = specialized static String._copying(_:)(v163._rawBits, v164._rawBits, v95, v100);
      v166 = v174;
      v100;
    }

    else
    {
      v166 = v100;
    }

    if ((v166 & 0x2000000000000000) != 0)
    {
      v166;
    }

    else
    {
      v310 = v90;
      if ((v166 & 0x1000000000000000) != 0)
      {
        v95 = _StringGuts._foreignConvertedToSmall()(v95, v166);
        v317 = v316;
        v166;
        v166 = v317;
      }

      else
      {
        if ((v95 & 0x1000000000000000) != 0)
        {
          v311 = ((v166 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v312 = v95 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v311 = _StringObject.sharedUTF8.getter(v95, v166);
        }

        closure #1 in _StringGuts._convertedToSmall()(v311, v312, &v350, v165);
        v166;
        v95 = v350;
        v166 = v351;
      }

      v90 = v310;
      v96 = v347;
    }

    v175 = HIBYTE(v160) & 0xF;
    v176 = HIBYTE(v166) & 0xF;
    v177 = v176 + v175;
    if (v176 + v175 < 0x10)
    {
      v100;
      if (v176)
      {
        v178 = 0;
        v179 = 0;
        v180 = 8 * v175;
        v181 = 8 * v176;
        v84 = v339;
        do
        {
          v182 = v166 >> (v178 & 0x38);
          if (v179 < 8)
          {
            v182 = v95 >> v178;
          }

          v183 = (v182 << (v180 & 0x38)) | ((-255 << (v180 & 0x38)) - 1) & v160;
          v184 = (v182 << v180) | ((-255 << v180) - 1) & v90;
          if (v175 <= 7)
          {
            v90 = v184;
          }

          else
          {
            v160 = v183;
          }

          ++v175;
          v180 += 8;
          v178 += 8;
          ++v179;
        }

        while (v181 != v178);
      }

      else
      {
        v84 = v339;
      }

      v93;
      v100;
      v185 = 0xA000000000000000;
      if (!(v90 & 0x8080808080808080 | v160 & 0x80808080808080))
      {
        v185 = 0xE000000000000000;
      }

      v352 = v90;
      v353 = v185 & 0xFF00000000000000 | (v177 << 56) | v160 & 0xFFFFFFFFFFFFFFLL;
      v170 = v349;
      goto LABEL_192;
    }

LABEL_380:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_134:
  v101 = __OFADD__(v96, v155);
  v156 = v96 + v155;
  if (v101)
  {
    goto LABEL_368;
  }

LABEL_135:
  if ((v90 & ~v93 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v93 & 0xFFFFFFFFFFFFFFFLL))
  {
    v157 = _StringGuts.nativeUnusedCapacity.getter(v90, v93);
    if (v158)
    {
      goto LABEL_380;
    }

    v159 = (v93 >> 61) & 1;
    if (v157 < v155)
    {
      LOBYTE(v159) = 1;
    }

    if (v156 <= 15 && (v159 & 1) != 0)
    {
LABEL_142:
      if ((v93 & 0x2000000000000000) == 0)
      {
        goto LABEL_369;
      }

      v160 = v93;
      goto LABEL_144;
    }
  }

  else if (v156 < 16)
  {
    goto LABEL_142;
  }

  _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v156, v155);
  if ((v100 & 0x1000000000000000) != 0)
  {
    _StringGuts._foreignAppendInPlace(_:)(v95, v100, 0, v83);
    swift_bridgeObjectRelease_n(v100, 2);
LABEL_176:
    v96 = v347;
LABEL_187:
    v170 = v349;
    v84 = v339;
    goto LABEL_192;
  }

  v96 = v347;
  if ((v84 & 1) == 0)
  {
    v350 = v95;
    v351 = v100 & 0xFFFFFFFFFFFFFFLL;
    closure #1 in _StringGuts.append(_:)(&v350, v98, &v352, (v100 & 0x4000000000000000) != 0);
    swift_bridgeObjectRelease_n(v100, 2);
    goto LABEL_187;
  }

  if ((v95 & 0x1000000000000000) != 0)
  {
    v167 = (v100 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v168 = v325;
    v169 = v325;
    v170 = v349;
    v84 = v339;
  }

  else
  {
    v313 = _StringObject.sharedUTF8.getter(v95, v100);
    if (v314 < v325)
    {
LABEL_379:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v167 = v313;
    v169 = v314;
    v96 = v347;
    v170 = v349;
    v84 = v339;
    v168 = v325;
  }

  v171 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v168, v167, v169);
  closure #1 in _StringGuts.append(_:)(v171, v172, &v352, v95 < 0);
  swift_bridgeObjectRelease_n(v100, 2);
LABEL_192:
  v195 = v340;
  (v343)(v170, v345);
  if ((v341)(v195, 1, v96) != 1)
  {
    v321 = v84 & 0xFFFFFFFFFFFFFFLL;
    v320 = (v84 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v324 = (v346 + 16);
    v325 = 8 * v329;
    do
    {
      v98 = v338;
      (v333)(v338, v195, v96);
      v90 = v352;
      v100 = v353;
      v197 = HIBYTE(v353) & 0xF;
      v91 = (v352 & 0xFFFFFFFFFFFFLL);
      if ((v353 & 0x2000000000000000) != 0)
      {
        v198 = HIBYTE(v353) & 0xF;
      }

      else
      {
        v198 = v352 & 0xFFFFFFFFFFFFLL;
      }

      if (!v198 && (v352 & ~v353 & 0x2000000000000000) == 0)
      {
        v84;
        v100;
        v352 = v342;
        v353 = v84;
        goto LABEL_246;
      }

      v93 = v342;
      if ((v353 & 0x2000000000000000) != 0)
      {
        v95 = v335;
        if ((v84 & 0x2000000000000000) == 0)
        {
          goto LABEL_217;
        }

        v199 = v197 + v329;
        if (v197 + v329 <= 0xF)
        {
          if (v329)
          {
            v200 = 0;
            v201 = 0;
            v202 = 8 * v197;
            v203 = v353;
            v204 = v337;
            do
            {
              v205 = v84 >> (v200 & 0x38);
              if (v201 < 8)
              {
                v205 = v342 >> v200;
              }

              v206 = (v205 << (v202 & 0x38)) | ((-255 << (v202 & 0x38)) - 1) & v203;
              v207 = (v205 << v202) | ((-255 << v202) - 1) & v90;
              if (v197 <= 7)
              {
                v90 = v207;
              }

              else
              {
                v203 = v206;
              }

              ++v197;
              v202 += 8;
              v200 += 8;
              ++v201;
            }

            while (v325 != v200);
          }

          else
          {
            v203 = v353;
            v204 = v337;
          }

          v353;
          v231 = 0xA000000000000000;
          if (!(v90 & 0x8080808080808080 | v203 & 0x80808080808080))
          {
            v231 = 0xE000000000000000;
          }

          v352 = v90;
          v353 = v231 & 0xFF00000000000000 | (v199 << 56) | v203 & 0xFFFFFFFFFFFFFFLL;
          goto LABEL_254;
        }
      }

      else
      {
        v95 = v335;
        if ((v84 & 0x2000000000000000) == 0)
        {
          goto LABEL_217;
        }
      }

      v95 = v329;
LABEL_217:
      v208 = v95;
      if ((v84 & 0x1000000000000000) != 0)
      {
        v284._rawBits = (v95 << 16) | 1;
        v285._rawBits = 1;
        v286._rawBits = _StringGuts.validateScalarRange(_:)(v285, v284, v342, v84)._rawBits;
        if (v286._rawBits < 0x10000)
        {
          v286._rawBits |= 3;
        }

        v208 = String.UTF8View.distance(from:to:)(v286, v287);
        if ((v100 & 0x1000000000000000) != 0)
        {
LABEL_334:
          v288 = String.UTF8View._foreignCount()();
          v83 = v288 + v208;
          if (__OFADD__(v288, v208))
          {
            goto LABEL_361;
          }

          goto LABEL_220;
        }
      }

      else if ((v353 & 0x1000000000000000) != 0)
      {
        goto LABEL_334;
      }

      v101 = __OFADD__(v198, v208);
      v83 = v198 + v208;
      if (v101)
      {
        goto LABEL_361;
      }

LABEL_220:
      if ((v90 & ~v100 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v100 & 0xFFFFFFFFFFFFFFFLL))
      {
        v209 = _StringGuts.nativeUnusedCapacity.getter(v90, v100);
        if (v210)
        {
          goto LABEL_380;
        }

        v211 = (v100 >> 61) & 1;
        if (v209 < v208)
        {
          LOBYTE(v211) = 1;
        }

        if (v83 <= 15 && (v211 & 1) != 0)
        {
LABEL_227:
          if ((v100 & 0x2000000000000000) != 0)
          {
            v212 = v100;
          }

          else if ((v100 & 0x1000000000000000) != 0)
          {
            v90 = _StringGuts._foreignConvertedToSmall()(v90, v100);
            v212 = v298;
          }

          else
          {
            if ((v90 & 0x1000000000000000) != 0)
            {
              v289 = ((v100 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v289 = _StringObject.sharedUTF8.getter(v90, v100);
              v91 = v301;
            }

            closure #1 in _StringGuts._convertedToSmall()(v289, *&v91, &v350, v196);
            v90 = v350;
            v212 = v351;
          }

          v84;
          v213._rawBits = 1;
          v214._rawBits = (v95 << 16) | 1;
          v215._rawBits = _StringGuts.validateScalarRange(_:)(v213, v214, v93, v84)._rawBits;
          if (v215._rawBits < 0x10000)
          {
            v215._rawBits |= 3;
          }

          if (v215._rawBits >> 16 || (v218 = v84, v219 = v93, v216._rawBits >> 16 != v323))
          {
            v219 = specialized static String._copying(_:)(v215._rawBits, v216._rawBits, v93, v84);
            v218 = v220;
            v84;
          }

          if ((v218 & 0x2000000000000000) != 0)
          {
            v218;
          }

          else if ((v218 & 0x1000000000000000) != 0)
          {
            v219 = _StringGuts._foreignConvertedToSmall()(*&v219, v218);
            v300 = v299;
            v218;
            v218 = v300;
          }

          else
          {
            if ((*&v219 & 0x1000000000000000) != 0)
            {
              v290 = ((v218 & 0xFFFFFFFFFFFFFFFLL) + 32);
              v291 = *&v219 & 0xFFFFFFFFFFFFLL;
            }

            else
            {
              v290 = _StringObject.sharedUTF8.getter(*&v219, v218);
            }

            closure #1 in _StringGuts._convertedToSmall()(v290, v291, &v350, v217);
            v218;
            v219 = v350;
            v218 = v351;
          }

          v221 = specialized _SmallString.init(_:appending:)(v90, v212, *&v219, v218);
          if (v223)
          {
            goto LABEL_380;
          }

          v224 = v221;
          v225 = v222;
          v100;
          v352 = v224;
          v353 = v225;
          goto LABEL_246;
        }
      }

      else if (v83 < 16)
      {
        goto LABEL_227;
      }

      _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v83, v208);
      if ((v84 & 0x1000000000000000) != 0)
      {
        _StringGuts._foreignAppendInPlace(_:)(v93, v84, 0, v95);
LABEL_246:
        v204 = v337;
        goto LABEL_254;
      }

      v204 = v337;
      if ((v84 & 0x2000000000000000) != 0)
      {
        v350 = v93;
        v351 = v321;
        if (v329 < v95)
        {
          goto LABEL_379;
        }

        v230 = (v84 >> 62) & 1;
        v228 = &v350;
        v229 = v95;
      }

      else
      {
        v226 = v320;
        v227 = v335;
        if ((v93 & 0x1000000000000000) != 0)
        {
          if (v335 < v95)
          {
            goto LABEL_379;
          }
        }

        else
        {
          v226 = _StringObject.sharedUTF8.getter(v93, v84);
          v227 = v296;
          if (v296 < v95)
          {
            goto LABEL_379;
          }
        }

        v228 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v95, v226, v227);
        v230 = v93 >> 63;
      }

      closure #1 in _StringGuts.append(_:)(v228, v229, &v352, v230);
LABEL_254:
      if (v96 == &type metadata for String)
      {
        v95 = *v98;
        v100 = *(v98 + 8);
        v100;
        (v331)(v98, v96);
      }

      else
      {
        if (v96 == &type metadata for Substring)
        {
          v235 = *v98;
          v236 = *(v98 + 8);
          v95 = *(v98 + 16);
          v100 = *(v98 + 24);
          v237 = HIBYTE(v100) & 0xF;
          if ((v100 & 0x2000000000000000) == 0)
          {
            v237 = v95 & 0xFFFFFFFFFFFFLL;
          }

          v238 = v331;
          if (v235 >> 16 || v236 >> 16 != v237)
          {
            v95 = specialized static String._copying(_:)(v235, v236, *(v98 + 16), *(v98 + 24));
            v100 = v240;
          }

          else
          {
            *(v98 + 24);
          }
        }

        else
        {
          v232 = *v324;
          (*v324)(v204, v98, v96);
          v233 = v328;
          v232(v328, v204, v96);
          if (swift_dynamicCast(&v350, v233, v96, &type metadata for String, 6uLL))
          {
            v234 = v331;
            (v331)(v204, v96);
            v95 = v350;
            v100 = v351;
            (v234)(v98, v96);
            goto LABEL_267;
          }

          v95 = (*(*(*(v330 + 40) + 8) + 8))(v96);
          v100 = v239;
          v238 = v331;
          (v331)(v204, v96);
        }

        (v238)(v98, v96);
      }

LABEL_267:
      v93 = v352;
      v90 = v353;
      v241 = HIBYTE(v353) & 0xF;
      v83 = v352 & 0xFFFFFFFFFFFFLL;
      if ((v353 & 0x2000000000000000) != 0)
      {
        v242 = HIBYTE(v353) & 0xF;
      }

      else
      {
        v242 = v352 & 0xFFFFFFFFFFFFLL;
      }

      if (!v242 && (v352 & ~v353 & 0x2000000000000000) == 0)
      {
        v353;
        v352 = v95;
        v353 = v100;
        v170 = v349;
        goto LABEL_197;
      }

      LOBYTE(v84) = (v100 & 0x2000000000000000) == 0;
      v98 = HIBYTE(v100) & 0xF;
      if ((v353 & 0x2000000000000000) == 0)
      {
        v243 = v95 & 0xFFFFFFFFFFFFLL;
        v91 = (HIBYTE(v100) & 0xF);
        if ((v100 & 0x2000000000000000) != 0)
        {
LABEL_278:
          v346 = v243;
          if ((v100 & 0x1000000000000000) == 0)
          {
            goto LABEL_279;
          }

          goto LABEL_308;
        }

LABEL_277:
        v91 = v243;
        goto LABEL_278;
      }

      if ((v100 & 0x2000000000000000) == 0)
      {
        v243 = v95 & 0xFFFFFFFFFFFFLL;
        LOBYTE(v84) = 1;
        goto LABEL_277;
      }

      v268 = v241 + v98;
      if (v241 + v98 < 0x10)
      {
        if (v98)
        {
          v274 = 0;
          v275 = 0;
          v276 = 8 * v241;
          v277 = 8 * v98;
          v278 = v353;
          v170 = v349;
          v84 = v339;
          do
          {
            v279 = v100 >> (v274 & 0x38);
            if (v275 < 8)
            {
              v279 = v95 >> v274;
            }

            v280 = (v279 << (v276 & 0x38)) | ((-255 << (v276 & 0x38)) - 1) & v278;
            v281 = (v279 << v276) | ((-255 << v276) - 1) & v93;
            if (v241 <= 7)
            {
              v93 = v281;
            }

            else
            {
              v278 = v280;
            }

            ++v241;
            v276 += 8;
            v274 += 8;
            ++v275;
          }

          while (v277 != v274);
        }

        else
        {
          v278 = v353;
          v170 = v349;
          v84 = v339;
        }

        v353;
        v100;
        v282 = 0xA000000000000000;
        if (!(v93 & 0x8080808080808080 | v278 & 0x80808080808080))
        {
          v282 = 0xE000000000000000;
        }

        v352 = v93;
        v353 = v282 & 0xFF00000000000000 | (v268 << 56) | v278 & 0xFFFFFFFFFFFFFFLL;
        goto LABEL_197;
      }

      LOBYTE(v84) = 0;
      v91 = (HIBYTE(v100) & 0xF);
      v346 = v95 & 0xFFFFFFFFFFFFLL;
      if ((v100 & 0x1000000000000000) == 0)
      {
LABEL_279:
        v100;
        v96 = v91;
        if ((v90 & 0x1000000000000000) == 0)
        {
          goto LABEL_280;
        }

        goto LABEL_311;
      }

LABEL_308:
      swift_bridgeObjectRetain_n(v100, 2);
      v269._rawBits = 1;
      v270._rawBits = (*&v91 << 16) | 1;
      v271._rawBits = _StringGuts.validateScalarRange(_:)(v269, v270, v95, v100)._rawBits;
      if (v271._rawBits < 0x10000)
      {
        v271._rawBits |= 3;
      }

      v96 = String.UTF8View.distance(from:to:)(v271, v272);
      v100;
      if ((v90 & 0x1000000000000000) == 0)
      {
LABEL_280:
        v101 = __OFADD__(v242, v96);
        v245 = v242 + v96;
        if (v101)
        {
          goto LABEL_362;
        }

        goto LABEL_281;
      }

LABEL_311:
      v273 = String.UTF8View._foreignCount()();
      v245 = v273 + v96;
      if (__OFADD__(v273, v96))
      {
        goto LABEL_362;
      }

LABEL_281:
      if ((v93 & ~v90 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v90 & 0xFFFFFFFFFFFFFFFLL))
      {
        v246 = _StringGuts.nativeUnusedCapacity.getter(v93, v90);
        if (v247)
        {
          goto LABEL_380;
        }

        if (v245 <= 15)
        {
          if ((v90 & 0x2000000000000000) != 0)
          {
            goto LABEL_298;
          }

          if (v246 < v96)
          {
            goto LABEL_287;
          }
        }
      }

      else if (v245 < 16)
      {
        if ((v90 & 0x2000000000000000) != 0)
        {
LABEL_298:
          v249 = v90;
          goto LABEL_299;
        }

LABEL_287:
        if ((v90 & 0x1000000000000000) != 0)
        {
          v93 = _StringGuts._foreignConvertedToSmall()(v93, v90);
          v249 = v283;
LABEL_299:
          v96 = v347;
          v170 = v349;
          v84 = v339;
        }

        else
        {
          if ((v93 & 0x1000000000000000) != 0)
          {
            v248 = ((v90 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v248 = _StringObject.sharedUTF8.getter(v93, v90);
            v83 = v297;
          }

          v96 = v347;
          v170 = v349;
          v84 = v339;
          closure #1 in _StringGuts._convertedToSmall()(v248, v83, &v350, v244);
          v93 = v350;
          v249 = v351;
        }

        v100;
        v255._rawBits = 1;
        v256._rawBits = (*&v91 << 16) | 1;
        v257._rawBits = _StringGuts.validateScalarRange(_:)(v255, v256, v95, v100)._rawBits;
        if (v257._rawBits < 0x10000)
        {
          v257._rawBits |= 3;
        }

        v259 = Substring.description.getter(v257._rawBits, v258._rawBits, v95, v100);
        v261 = v260;
        v100;
        if ((v261 & 0x2000000000000000) != 0)
        {
          v261;
        }

        else if ((v261 & 0x1000000000000000) != 0)
        {
          v259 = _StringGuts._foreignConvertedToSmall()(*&v259, v261);
          v303 = v302;
          v261;
          v261 = v303;
        }

        else
        {
          if ((*&v259 & 0x1000000000000000) != 0)
          {
            v292 = ((v261 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v293 = *&v259 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v292 = _StringObject.sharedUTF8.getter(*&v259, v261);
          }

          closure #1 in _StringGuts._convertedToSmall()(v292, v293, &v350, v262);
          v261;
          v259 = v350;
          v261 = v351;
        }

        v263 = specialized _SmallString.init(_:appending:)(v93, v249, *&v259, v261);
        if (v265)
        {
          goto LABEL_380;
        }

        v266 = v263;
        v267 = v264;
        v90;
        swift_bridgeObjectRelease_n(v100, 2);
        v352 = v266;
        v353 = v267;
        goto LABEL_197;
      }

      _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v245, v96);
      if ((v100 & 0x1000000000000000) != 0)
      {
        _StringGuts._foreignAppendInPlace(_:)(v95, v100, 0, *&v91);
        swift_bridgeObjectRelease_n(v100, 2);
        v96 = v347;
LABEL_325:
        v170 = v349;
        v84 = v339;
        goto LABEL_197;
      }

      v96 = v347;
      if ((v84 & 1) == 0)
      {
        v350 = v95;
        v351 = v100 & 0xFFFFFFFFFFFFFFLL;
        closure #1 in _StringGuts.append(_:)(&v350, HIBYTE(v100) & 0xF, &v352, (v100 & 0x4000000000000000) != 0);
        swift_bridgeObjectRelease_n(v100, 2);
        goto LABEL_325;
      }

      if ((v95 & 0x1000000000000000) != 0)
      {
        v250 = (v100 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v251 = v346;
        v252 = v346;
      }

      else
      {
        v294 = _StringObject.sharedUTF8.getter(v95, v100);
        if (v295 < v346)
        {
          goto LABEL_379;
        }

        v250 = v294;
        v252 = v295;
        v251 = v346;
        v96 = v347;
      }

      v170 = v349;
      v84 = v339;
      v253 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v251, v250, v252);
      closure #1 in _StringGuts.append(_:)(v253, v254, &v352, v95 < 0);
      swift_bridgeObjectRelease_n(v100, 2);
LABEL_197:
      v195 = v340;
      (v343)(v170, v345);
    }

    while ((v341)(v195, 1, v96) != 1);
  }

  (*(v322 + 8))(v336, v170);
  (*(v326 + 8))(v195, v327);
  return v352;
}

uint64_t StringProtocol._ephemeralString.getter(Class *a1)
{
  v3 = *(a1 - 1);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = (&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x1EEE9AC00](v4);
  v10 = &v19 - v9;
  if (v7 == &type metadata for String)
  {
    v13 = *v1;
    v1[1];
  }

  else if (a1 == &type metadata for Substring)
  {
    v14 = *v1;
    v15 = v1[1];
    v17 = v1[2];
    v16 = v1[3];
    v16;
    return _sSSySSxcs25LosslessStringConvertibleRzSTRzSJ7ElementSTRtzlufCSs_Tt0g5(v14, v15, v17, v16);
  }

  else
  {
    v11 = v8;
    v12 = *(v3 + 16);
    v12(&v19 - v9, v1, a1);
    v12(v6, v10, a1);
    if (swift_dynamicCast(&v19, v6, a1, &type metadata for String, 6uLL))
    {
      (*(v3 + 8))(v10, a1);
      return v19;
    }

    else
    {
      v13 = (*(*(*(v11 + 40) + 8) + 8))(a1);
      (*(v3 + 8))(v10, a1);
    }
  }

  return v13;
}

unint64_t specialized BidirectionalCollection<>.joined(separator:)(uint64_t a1, unint64_t a2, void *a3)
{
  v4 = a1;
  v5 = a1 & 0xFFFFFFFFFFFFLL;
  v237 = HIBYTE(a2) & 0xF;
  v240 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  v236 = v5;
  v6 = a3[2] + a3[2] * v5;
  v7 = 0xE000000000000000;
  v250 = 0;
  v251 = 0xE000000000000000;
  if (v6 < 16)
  {
    v10 = 0;
  }

  else
  {
    v8 = _StringGuts.uniqueNativeCapacity.getter();
    if ((v9 & 1) != 0 || v8 < v6)
    {
      v12 = 2 * _StringGuts.uniqueNativeCapacity.getter();
      if (v12 <= v6)
      {
        v12 = v6;
      }

      if (v11)
      {
        v13 = v6;
      }

      else
      {
        v13 = v12;
      }

      v248 = 0;
      v249 = 0;
      v7 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(&v248, 0, v13, 1);
      v10 = *(v7 + 24);
      0xE000000000000000;
      v250 = v10;
      v251 = v7;
    }

    else
    {
      v10 = 0;
      v7 = 0xE000000000000000;
    }
  }

  v14 = a3[2];
  v244 = v14;
  if (!v236)
  {
    if (!v14)
    {
      return v250;
    }

    v22 = 0;
    while (1)
    {
      sub_1802E86D0(v22, 1, a3);
      v23 = &a3[2 * v22 + 4];
      v16 = *v23;
      v24 = v23[1];
      v15 = v250;
      v7 = v251;
      v25 = HIBYTE(v251) & 0xF;
      v18 = v250 & 0xFFFFFFFFFFFFLL;
      if ((v251 & 0x2000000000000000) != 0)
      {
        v26 = HIBYTE(v251) & 0xF;
      }

      else
      {
        v26 = v250 & 0xFFFFFFFFFFFFLL;
      }

      if (!v26 && (v250 & ~v251 & 0x2000000000000000) == 0)
      {
        v24;
        v7;
        v250 = v16;
        v251 = v24;
        goto LABEL_27;
      }

      v27 = (v24 & 0x2000000000000000) == 0;
      v28 = HIBYTE(v24) & 0xF;
      if ((v251 & 0x2000000000000000) != 0)
      {
        if ((v24 & 0x2000000000000000) == 0)
        {
          v29 = v16 & 0xFFFFFFFFFFFFLL;
          v27 = 1;
LABEL_38:
          v4 = v29;
          goto LABEL_39;
        }

        v48 = v25 + v28;
        if (v25 + v28 < 0x10)
        {
          if (v28)
          {
            v55 = 0;
            v56 = 0;
            v57 = 8 * v25;
            v58 = 8 * v28;
            v59 = v251;
            v14 = v244;
            do
            {
              v60 = v24 >> (v55 & 0x38);
              if (v56 < 8)
              {
                v60 = v16 >> v55;
              }

              v61 = (v60 << (v57 & 0x38)) | ((-255 << (v57 & 0x38)) - 1) & v59;
              v62 = (v60 << v57) | ((-255 << v57) - 1) & v15;
              if (v25 <= 7)
              {
                v15 = v62;
              }

              else
              {
                v59 = v61;
              }

              ++v25;
              v57 += 8;
              v55 += 8;
              ++v56;
            }

            while (v58 != v55);
          }

          else
          {
            v59 = v251;
            v14 = v244;
          }

          v251;
          v63 = 0xA000000000000000;
          if (!(v15 & 0x8080808080808080 | v59 & 0x80808080808080))
          {
            v63 = 0xE000000000000000;
          }

          v250 = v15;
          v251 = v63 & 0xFF00000000000000 | (v48 << 56) | v59 & 0xFFFFFFFFFFFFFFLL;
          goto LABEL_27;
        }

        v27 = 0;
        v29 = v16 & 0xFFFFFFFFFFFFLL;
        v4 = HIBYTE(v24) & 0xF;
      }

      else
      {
        v29 = v16 & 0xFFFFFFFFFFFFLL;
        v4 = HIBYTE(v24) & 0xF;
        if ((v24 & 0x2000000000000000) == 0)
        {
          goto LABEL_38;
        }
      }

LABEL_39:
      v242 = v27;
      v241 = v29;
      if ((v24 & 0x1000000000000000) != 0)
      {
        swift_bridgeObjectRetain_n(v24, 3);
        v65._rawBits = 1;
        v66._rawBits = (v4 << 16) | 1;
        v67._rawBits = _StringGuts.validateScalarRange(_:)(v65, v66, v16, v24)._rawBits;
        if (v67._rawBits < 0x10000)
        {
          v67._rawBits |= 3;
        }

        v10 = String.UTF8View.distance(from:to:)(v67, v68);
        v24;
        if ((v7 & 0x1000000000000000) != 0)
        {
LABEL_93:
          v69 = String.UTF8View._foreignCount()();
          v32 = v69 + *&v10;
          if (__OFADD__(v69, *&v10))
          {
            goto LABEL_329;
          }

          goto LABEL_42;
        }
      }

      else
      {
        swift_bridgeObjectRetain_n(v24, 2);
        v10 = v4;
        if ((v7 & 0x1000000000000000) != 0)
        {
          goto LABEL_93;
        }
      }

      v31 = __OFADD__(v26, *&v10);
      v32 = v26 + *&v10;
      if (v31)
      {
LABEL_329:
        __break(1u);
LABEL_330:
        __break(1u);
LABEL_331:
        __break(1u);
LABEL_332:
        if ((v7 & 0x1000000000000000) != 0)
        {
          v10 = _StringGuts._foreignConvertedToSmall()(*&v10, v7);
          v18 = v231;
        }

        else
        {
          if ((*&v10 & 0x1000000000000000) != 0)
          {
            v225 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v225 = _StringObject.sharedUTF8.getter(*&v10, v7);
            v18 = v234;
          }

          closure #1 in _StringGuts._convertedToSmall()(v225, v18, &v248, v30);
          v10 = v248;
          v18 = v249;
        }

LABEL_119:
        v14 = v244;
        v16;
        v84._rawBits = 1;
        v85._rawBits = (v4 << 16) | 1;
        rawBits = _StringGuts.validateScalarRange(_:)(v84, v85, v15, v16)._rawBits;
        if (rawBits < 0x10000)
        {
          rawBits |= 3uLL;
        }

        if (!(rawBits >> 16) && v78 >> 16 == v4)
        {
          v87 = v16;
          goto LABEL_139;
        }

LABEL_138:
        v15 = specialized static String._copying(_:)(rawBits, v78, v15, v16);
        v87 = v98;
        v16;
LABEL_139:
        if ((v87 & 0x2000000000000000) != 0)
        {
          v87;
        }

        else
        {
          v226 = v7;
          if ((v87 & 0x1000000000000000) != 0)
          {
            v15 = _StringGuts._foreignConvertedToSmall()(v15, v87);
            v233 = v232;
            v87;
            v87 = v233;
          }

          else
          {
            if ((v15 & 0x1000000000000000) != 0)
            {
              v227 = ((v87 & 0xFFFFFFFFFFFFFFFLL) + 32);
              v228 = v15 & 0xFFFFFFFFFFFFLL;
            }

            else
            {
              v227 = _StringObject.sharedUTF8.getter(v15, v87);
            }

            closure #1 in _StringGuts._convertedToSmall()(v227, v228, &v248, v86);
            v87;
            v15 = v248;
            v87 = v249;
          }

          v7 = v226;
          v14 = v244;
        }

        v99 = HIBYTE(v18) & 0xF;
        v100 = HIBYTE(v87) & 0xF;
        v101 = v100 + v99;
        if (v100 + v99 < 0x10)
        {
          v16;
          if (v100)
          {
            v102 = 0;
            v103 = 0;
            v104 = 8 * v99;
            v105 = 8 * v100;
            v4 = v241;
            do
            {
              v106 = v87 >> (v102 & 0x38);
              if (v103 < 8)
              {
                v106 = v15 >> v102;
              }

              v107 = (v106 << (v104 & 0x38)) | ((-255 << (v104 & 0x38)) - 1) & v18;
              v108 = (v106 << v104) | ((-255 << v104) - 1) & *&v10;
              if (v99 <= 7)
              {
                v10 = v108;
              }

              else
              {
                v18 = v107;
              }

              ++v99;
              v104 += 8;
              v102 += 8;
              ++v103;
            }

            while (v105 != v102);
          }

          else
          {
            v4 = v241;
          }

          v7;
          v16;
          v109 = 0xA000000000000000;
          if (!(*&v10 & 0x8080808080808080 | v18 & 0x80808080808080))
          {
            v109 = 0xE000000000000000;
          }

          v110 = v109 & 0xFF00000000000000 | (v101 << 56) | v18 & 0xFFFFFFFFFFFFFFLL;
          goto LABEL_172;
        }

LABEL_343:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

LABEL_42:
      if ((v15 & ~v7 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v7 & 0xFFFFFFFFFFFFFFFLL))
      {
        v33 = _StringGuts.nativeUnusedCapacity.getter(v15, v7);
        if (v34)
        {
          goto LABEL_343;
        }

        if (v32 <= 15)
        {
          if ((v7 & 0x2000000000000000) != 0)
          {
            goto LABEL_59;
          }

          if (v33 < *&v10)
          {
            goto LABEL_48;
          }
        }
      }

      else if (v32 < 16)
      {
        if ((v7 & 0x2000000000000000) != 0)
        {
LABEL_59:
          v36 = v7;
          goto LABEL_60;
        }

LABEL_48:
        if ((v7 & 0x1000000000000000) != 0)
        {
          v15 = _StringGuts._foreignConvertedToSmall()(v15, v7);
          v36 = v64;
LABEL_60:
          v14 = v244;
        }

        else
        {
          if ((v15 & 0x1000000000000000) != 0)
          {
            v35 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v35 = _StringObject.sharedUTF8.getter(v15, v7);
            v18 = v74;
          }

          v14 = v244;
          closure #1 in _StringGuts._convertedToSmall()(v35, v18, &v248, v30);
          v15 = v248;
          v36 = v249;
        }

        v24;
        v42._rawBits = 1;
        v43._rawBits = (v4 << 16) | 1;
        v44._rawBits = _StringGuts.validateScalarRange(_:)(v42, v43, v16, v24)._rawBits;
        if (v44._rawBits < 0x10000)
        {
          v44._rawBits |= 3;
        }

        if (v44._rawBits >> 16 || v45._rawBits >> 16 != v4)
        {
          v16 = specialized static String._copying(_:)(v44._rawBits, v45._rawBits, v16, v24);
          v47 = v49;
          v24;
        }

        else
        {
          v47 = v24;
        }

        if ((v47 & 0x2000000000000000) != 0)
        {
          v47;
        }

        else if ((v47 & 0x1000000000000000) != 0)
        {
          v16 = _StringGuts._foreignConvertedToSmall()(v16, v47);
          v76 = v75;
          v47;
          v47 = v76;
        }

        else
        {
          if ((v16 & 0x1000000000000000) != 0)
          {
            v70 = ((v47 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v71 = v16 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v70 = _StringObject.sharedUTF8.getter(v16, v47);
          }

          closure #1 in _StringGuts._convertedToSmall()(v70, v71, &v248, v46);
          v47;
          v16 = v248;
          v47 = v249;
        }

        v50 = specialized _SmallString.init(_:appending:)(v15, v36, v16, v47);
        if (v52)
        {
          goto LABEL_343;
        }

        v53 = v50;
        v54 = v51;
        v7;
        swift_bridgeObjectRelease_n(v24, 2);
        v250 = v53;
        v251 = v54;
        goto LABEL_27;
      }

      _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v32, *&v10);
      if ((v24 & 0x1000000000000000) != 0)
      {
        _StringGuts._foreignAppendInPlace(_:)(v16, v24, 0, v4);
        swift_bridgeObjectRelease_n(v24, 2);
LABEL_84:
        v14 = v244;
        goto LABEL_27;
      }

      if (!v242)
      {
        v248 = v16;
        v249 = v24 & 0xFFFFFFFFFFFFFFLL;
        v24;
        _StringGuts.appendInPlace(_:isASCII:)(&v248, HIBYTE(v24) & 0xF, (v24 & 0x4000000000000000) != 0);
        v24;
        goto LABEL_84;
      }

      if ((v16 & 0x1000000000000000) != 0)
      {
        v37 = (v24 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v38 = v241;
        v39 = v241;
      }

      else
      {
        v72 = _StringObject.sharedUTF8.getter(v16, v24);
        v38 = v241;
        if (v73 < v241)
        {
          goto LABEL_342;
        }

        v37 = v72;
        v39 = v73;
      }

      v14 = v244;
      v24;
      v40 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v38, v37, v39);
      _StringGuts.appendInPlace(_:isASCII:)(v40, v41, (v16 & 0x8000000000000000) != 0);
      v24;
LABEL_27:
      if (++v22 == v14)
      {
        return v250;
      }
    }
  }

  if (v14)
  {
    v238 = a2;
    sub_1802E86D0(0, 1, a3);
    v15 = a3[4];
    v239 = a3 + 4;
    v16 = a3[5];
    v17 = HIBYTE(v7) & 0xF;
    v18 = *&v10 & 0xFFFFFFFFFFFFLL;
    if ((v7 & 0x2000000000000000) != 0)
    {
      v19 = HIBYTE(v7) & 0xF;
    }

    else
    {
      v19 = *&v10 & 0xFFFFFFFFFFFFLL;
    }

    v241 = v4;
    if (!v19 && (*&v10 & ~v7 & 0x2000000000000000) == 0)
    {
      v16;
      v7;
      v250 = v15;
      v251 = v16;
      goto LABEL_173;
    }

    v20 = (v16 & 0x2000000000000000) == 0;
    v14 = HIBYTE(v16) & 0xF;
    if ((v7 & 0x2000000000000000) != 0)
    {
      if ((v16 & 0x2000000000000000) != 0)
      {
        v93 = v17 + v14;
        if (v17 + v14 < 0x10)
        {
          if (v14)
          {
            v111 = 0;
            v112 = 0;
            v113 = 8 * v17;
            v114 = 8 * v14;
            v115 = v7;
            v14 = v244;
            do
            {
              v116 = v16 >> (v111 & 0x38);
              if (v112 < 8)
              {
                v116 = v15 >> v111;
              }

              v117 = (v116 << (v113 & 0x38)) | ((-255 << (v113 & 0x38)) - 1) & v115;
              v118 = (v116 << v113) | ((-255 << v113) - 1) & *&v10;
              if (v17 <= 7)
              {
                v10 = v118;
              }

              else
              {
                v115 = v117;
              }

              ++v17;
              v113 += 8;
              v111 += 8;
              ++v112;
            }

            while (v114 != v111);
          }

          else
          {
            v115 = v7;
            v14 = v244;
          }

          v7;
          v119 = 0xA000000000000000;
          if (!(*&v10 & 0x8080808080808080 | v115 & 0x80808080808080))
          {
            v119 = 0xE000000000000000;
          }

          v110 = v119 & 0xFF00000000000000 | (v93 << 56) | v115 & 0xFFFFFFFFFFFFFFLL;
LABEL_172:
          v250 = v10;
          v251 = v110;
          goto LABEL_173;
        }

        v20 = 0;
        v4 = HIBYTE(v16) & 0xF;
        v245 = v15 & 0xFFFFFFFFFFFFLL;
        if ((v16 & 0x1000000000000000) == 0)
        {
LABEL_108:
          rawBits = swift_bridgeObjectRetain_n(v16, 2);
          v79 = v4;
          if ((v7 & 0x1000000000000000) == 0)
          {
            goto LABEL_109;
          }

          goto LABEL_135;
        }

LABEL_132:
        swift_bridgeObjectRetain_n(v16, 3);
        v94._rawBits = 1;
        v95._rawBits = (v4 << 16) | 1;
        v96._rawBits = _StringGuts.validateScalarRange(_:)(v94, v95, v15, v16)._rawBits;
        if (v96._rawBits < 0x10000)
        {
          v96._rawBits |= 3;
        }

        v79 = String.UTF8View.distance(from:to:)(v96, v97);
        v16;
        if ((v7 & 0x1000000000000000) == 0)
        {
LABEL_109:
          v31 = __OFADD__(v19, v79);
          v80 = v19 + v79;
          if (!v31)
          {
            goto LABEL_110;
          }

          goto LABEL_137;
        }

LABEL_135:
        rawBits = String.UTF8View._foreignCount()();
        v80 = rawBits + v79;
        if (!__OFADD__(rawBits, v79))
        {
LABEL_110:
          if ((*&v10 & ~v7 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v7 & 0xFFFFFFFFFFFFFFFLL))
          {
            v81 = _StringGuts.nativeUnusedCapacity.getter(*&v10, v7);
            if (v82)
            {
              goto LABEL_343;
            }

            v83 = (v7 >> 61) & 1;
            if (v81 < v79)
            {
              LOBYTE(v83) = 1;
            }

            if (v80 <= 15 && (v83 & 1) != 0)
            {
LABEL_117:
              if ((v7 & 0x2000000000000000) == 0)
              {
                goto LABEL_332;
              }

              v18 = v7;
              goto LABEL_119;
            }
          }

          else if (v80 < 16)
          {
            goto LABEL_117;
          }

          v7 = &v250;
          _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v80, v79);
          if ((v16 & 0x1000000000000000) != 0)
          {
            _StringGuts._foreignAppendInPlace(_:)(v15, v16, 0, v4);
          }

          else
          {
            if (v20)
            {
              if ((v15 & 0x1000000000000000) != 0)
              {
                v88 = (v16 & 0xFFFFFFFFFFFFFFFLL) + 32;
                v14 = v244;
                v89 = v245;
                v90 = v245;
              }

              else
              {
                v229 = _StringObject.sharedUTF8.getter(v15, v16);
                if (v230 < v245)
                {
LABEL_342:
                  _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
                }

                v88 = v229;
                v90 = v230;
                v14 = v244;
                v89 = v245;
              }

              v4 = v241;
              v91 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v89, v88, v90);
              closure #1 in _StringGuts.append(_:)(v91, v92, &v250, (v15 & 0x8000000000000000) != 0);
              swift_bridgeObjectRelease_n(v16, 2);
              goto LABEL_173;
            }

            v248 = v15;
            v249 = v16 & 0xFFFFFFFFFFFFFFLL;
            closure #1 in _StringGuts.append(_:)(&v248, HIBYTE(v16) & 0xF, &v250, (v16 & 0x4000000000000000) != 0);
          }

          swift_bridgeObjectRelease_n(v16, 2);
          v14 = v244;
          v4 = v241;
LABEL_173:
          v15 = v238;
          if (v14 == 1)
          {
            return v250;
          }

          v121 = 1;
          while (1)
          {
            sub_1802E86D0(v121, 1, a3);
            v122 = v121 + 1;
            if (__OFADD__(v121, 1))
            {
              __break(1u);
              goto LABEL_329;
            }

            v123 = &v239[2 * v121];
            v18 = *v123;
            v16 = v123[1];
            v10 = v250;
            v7 = v251;
            v124 = HIBYTE(v251) & 0xF;
            v125 = v250 & 0xFFFFFFFFFFFFLL;
            if ((v251 & 0x2000000000000000) != 0)
            {
              v126 = HIBYTE(v251) & 0xF;
            }

            else
            {
              v126 = v250 & 0xFFFFFFFFFFFFLL;
            }

            v246 = v18;
            v243 = v122;
            if (!v126 && (v250 & ~v251 & 0x2000000000000000) == 0)
            {
              v16;
              v15;
              v7;
              v250 = v4;
              v251 = v15;
              goto LABEL_235;
            }

            if ((v251 & 0x2000000000000000) != 0)
            {
              v18 = v240;
              if ((v15 & 0x2000000000000000) != 0)
              {
                v18 = v237;
                v127 = v124 + v237;
                if (v124 + v237 <= 0xF)
                {
                  if (v237)
                  {
                    v128 = 0;
                    v129 = 0;
                    v130 = 8 * v124;
                    v131 = v251;
                    v18 = v246;
                    do
                    {
                      v132 = v15 >> (v128 & 0x38);
                      if (v129 < 8)
                      {
                        v132 = v4 >> v128;
                      }

                      v133 = (v132 << (v130 & 0x38)) | ((-255 << (v130 & 0x38)) - 1) & v131;
                      v134 = (v132 << v130) | ((-255 << v130) - 1) & *&v10;
                      if (v124 <= 7)
                      {
                        v10 = v134;
                      }

                      else
                      {
                        v131 = v133;
                      }

                      ++v124;
                      v130 += 8;
                      v128 += 8;
                      ++v129;
                    }

                    while (8 * v237 != v128);
                  }

                  else
                  {
                    v131 = v251;
                    v18 = v246;
                  }

                  v16;
                  v7;
                  v159 = 0xA000000000000000;
                  if (!(*&v10 & 0x8080808080808080 | v131 & 0x80808080808080))
                  {
                    v159 = 0xE000000000000000;
                  }

                  v250 = v10;
                  v251 = v159 & 0xFF00000000000000 | (v127 << 56) | v131 & 0xFFFFFFFFFFFFFFLL;
                  goto LABEL_235;
                }
              }
            }

            else
            {
              v18 = v240;
              if ((v15 & 0x2000000000000000) != 0)
              {
                v18 = v237;
              }
            }

            if ((v15 & 0x1000000000000000) != 0)
            {
              v16;
              v204._rawBits = 1;
              v205._rawBits = (v18 << 16) | 1;
              v206._rawBits = _StringGuts.validateScalarRange(_:)(v204, v205, v4, v15)._rawBits;
              to._rawBits = v207;
              if (v206._rawBits >= 0x10000)
              {
                v208 = v206._rawBits;
              }

              else
              {
                v208 = v206._rawBits | 3;
              }

              v15;
              v4 = String.UTF8View.distance(from:to:)(v208, to);
              v15;
              if ((v7 & 0x1000000000000000) == 0)
              {
LABEL_201:
                v135 = v126 + v4;
                if (__OFADD__(v126, v4))
                {
                  goto LABEL_330;
                }

                goto LABEL_202;
              }
            }

            else
            {
              v16;
              v4 = v18;
              if ((v7 & 0x1000000000000000) == 0)
              {
                goto LABEL_201;
              }
            }

            v209 = String.UTF8View._foreignCount()();
            v135 = v209 + v4;
            if (__OFADD__(v209, v4))
            {
              goto LABEL_330;
            }

LABEL_202:
            if ((*&v10 & ~v7 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v7 & 0xFFFFFFFFFFFFFFFLL))
            {
              v136 = _StringGuts.nativeUnusedCapacity.getter(*&v10, v7);
              if (v137)
              {
                goto LABEL_343;
              }

              v138 = (v7 >> 61) & 1;
              if (v136 < v4)
              {
                LOBYTE(v138) = 1;
              }

              if (v135 > 15 || (v138 & 1) == 0)
              {
LABEL_221:
                _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v135, v4);
                if ((v15 & 0x1000000000000000) != 0)
                {
                  _StringGuts._foreignAppendInPlace(_:)(v241, v15, 0, v18);
                  v18 = v246;
                }

                else
                {
                  if ((v15 & 0x2000000000000000) != 0)
                  {
                    v248 = v241;
                    v249 = v238 & 0xFFFFFFFFFFFFFFLL;
                    if (v237 < v18)
                    {
                      goto LABEL_342;
                    }

                    v158 = (v15 >> 62) & 1;
                    v156 = &v248;
                    v157 = v18;
                  }

                  else
                  {
                    v154 = ((v238 & 0xFFFFFFFFFFFFFFFLL) + 32);
                    v155 = v240;
                    if ((v241 & 0x1000000000000000) != 0)
                    {
                      if (v240 < v18)
                      {
                        goto LABEL_342;
                      }
                    }

                    else
                    {
                      v154 = _StringObject.sharedUTF8.getter(v241, v15);
                      v155 = v217;
                      if (v217 < v18)
                      {
                        goto LABEL_342;
                      }
                    }

                    v156 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v18, v154, v155);
                    v158 = v241 >> 63;
                  }

                  _StringGuts.appendInPlace(_:isASCII:)(v156, v157, v158);
                  v18 = v246;
                }

                goto LABEL_235;
              }
            }

            else if (v135 >= 16)
            {
              goto LABEL_221;
            }

            if ((v7 & 0x2000000000000000) != 0)
            {
              v139 = v7;
              v140 = v241;
            }

            else
            {
              v140 = v241;
              if ((v7 & 0x1000000000000000) != 0)
              {
                v10 = _StringGuts._foreignConvertedToSmall()(*&v10, v7);
                v139 = v219;
              }

              else
              {
                if ((*&v10 & 0x1000000000000000) != 0)
                {
                  v210 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
                }

                else
                {
                  v210 = _StringObject.sharedUTF8.getter(*&v10, v7);
                  v125 = v222;
                }

                closure #1 in _StringGuts._convertedToSmall()(v210, v125, &v248, v30);
                v10 = v248;
                v139 = v249;
              }
            }

            v15;
            v141._rawBits = 1;
            v142._rawBits = (v18 << 16) | 1;
            v143._rawBits = _StringGuts.validateScalarRange(_:)(v141, v142, v140, v15)._rawBits;
            if (v143._rawBits < 0x10000)
            {
              v143._rawBits |= 3;
            }

            if (v143._rawBits >> 16 || (v146 = v15, v147 = v140, v144._rawBits >> 16 != v236))
            {
              v147 = specialized static String._copying(_:)(v143._rawBits, v144._rawBits, v140, v15);
              v146 = v148;
              v15;
            }

            v18 = v246;
            if ((v146 & 0x2000000000000000) != 0)
            {
              v146;
            }

            else if ((v146 & 0x1000000000000000) != 0)
            {
              v147 = _StringGuts._foreignConvertedToSmall()(*&v147, v146);
              v221 = v220;
              v146;
              v146 = v221;
              v18 = v246;
            }

            else
            {
              if ((*&v147 & 0x1000000000000000) != 0)
              {
                v211 = ((v146 & 0xFFFFFFFFFFFFFFFLL) + 32);
                v212 = *&v147 & 0xFFFFFFFFFFFFLL;
              }

              else
              {
                v211 = _StringObject.sharedUTF8.getter(*&v147, v146);
              }

              closure #1 in _StringGuts._convertedToSmall()(v211, v212, &v248, v145);
              v146;
              v147 = v248;
              v146 = v249;
            }

            v149 = specialized _SmallString.init(_:appending:)(*&v10, v139, *&v147, v146);
            if (v151)
            {
              goto LABEL_343;
            }

            v152 = v149;
            v153 = v150;
            v7;
            v250 = v152;
            v251 = v153;
LABEL_235:
            v10 = v250;
            v7 = v251;
            v160 = HIBYTE(v251) & 0xF;
            v4 = v250 & 0xFFFFFFFFFFFFLL;
            if ((v251 & 0x2000000000000000) != 0)
            {
              v161 = HIBYTE(v251) & 0xF;
            }

            else
            {
              v161 = v250 & 0xFFFFFFFFFFFFLL;
            }

            if (!v161 && (v250 & ~v251 & 0x2000000000000000) == 0)
            {
              v251;
              v250 = v18;
              v251 = v16;
              goto LABEL_177;
            }

            v15 = (v16 & 0x2000000000000000) == 0;
            v162 = HIBYTE(v16) & 0xF;
            if ((v251 & 0x2000000000000000) == 0)
            {
              v163 = v18 & 0xFFFFFFFFFFFFLL;
              v164 = HIBYTE(v16) & 0xF;
              if ((v16 & 0x2000000000000000) != 0)
              {
LABEL_246:
                if ((v16 & 0x1000000000000000) == 0)
                {
                  goto LABEL_247;
                }

                goto LABEL_276;
              }

LABEL_245:
              v164 = v163;
              goto LABEL_246;
            }

            if ((v16 & 0x2000000000000000) == 0)
            {
              v163 = v18 & 0xFFFFFFFFFFFFLL;
              v15 = 1;
              goto LABEL_245;
            }

            v188 = v160 + v162;
            if (v160 + v162 < 0x10)
            {
              if (v162)
              {
                v194 = 0;
                v195 = 0;
                v196 = 8 * v160;
                v197 = 8 * v162;
                v198 = v251;
                v15 = v238;
                v4 = v241;
                do
                {
                  v199 = v16 >> (v194 & 0x38);
                  if (v195 < 8)
                  {
                    v199 = v18 >> v194;
                  }

                  v200 = (v199 << (v196 & 0x38)) | ((-255 << (v196 & 0x38)) - 1) & v198;
                  v201 = (v199 << v196) | ((-255 << v196) - 1) & *&v10;
                  if (v160 <= 7)
                  {
                    v10 = v201;
                  }

                  else
                  {
                    v198 = v200;
                  }

                  ++v160;
                  v196 += 8;
                  v194 += 8;
                  ++v195;
                }

                while (v197 != v194);
              }

              else
              {
                v198 = v251;
                v15 = v238;
                v4 = v241;
              }

              v251;
              v16;
              v202 = 0xA000000000000000;
              if (!(*&v10 & 0x8080808080808080 | v198 & 0x80808080808080))
              {
                v202 = 0xE000000000000000;
              }

              v250 = v10;
              v251 = v202 & 0xFF00000000000000 | (v188 << 56) | v198 & 0xFFFFFFFFFFFFFFLL;
              goto LABEL_178;
            }

            v15 = 0;
            v163 = v18 & 0xFFFFFFFFFFFFLL;
            v164 = HIBYTE(v16) & 0xF;
            if ((v16 & 0x1000000000000000) == 0)
            {
LABEL_247:
              v16;
              v18 = v164;
              if ((v7 & 0x1000000000000000) == 0)
              {
                goto LABEL_248;
              }

              goto LABEL_279;
            }

LABEL_276:
            swift_bridgeObjectRetain_n(v16, 2);
            v189._rawBits = 1;
            v190._rawBits = (v164 << 16) | 1;
            v191._rawBits = _StringGuts.validateScalarRange(_:)(v189, v190, v246, v16)._rawBits;
            if (v191._rawBits < 0x10000)
            {
              v191._rawBits |= 3;
            }

            v18 = String.UTF8View.distance(from:to:)(v191, v192);
            v16;
            if ((v7 & 0x1000000000000000) == 0)
            {
LABEL_248:
              v31 = __OFADD__(v161, v18);
              v165 = v161 + v18;
              if (v31)
              {
                goto LABEL_331;
              }

              goto LABEL_249;
            }

LABEL_279:
            v193 = String.UTF8View._foreignCount()();
            v165 = v193 + v18;
            if (__OFADD__(v193, v18))
            {
              goto LABEL_331;
            }

LABEL_249:
            if ((*&v10 & ~v7 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v7 & 0xFFFFFFFFFFFFFFFLL))
            {
              v166 = _StringGuts.nativeUnusedCapacity.getter(*&v10, v7);
              if (v167)
              {
                goto LABEL_343;
              }

              if (v165 <= 15)
              {
                if ((v7 & 0x2000000000000000) != 0)
                {
                  goto LABEL_266;
                }

                if (v166 < v18)
                {
                  goto LABEL_255;
                }
              }
            }

            else if (v165 < 16)
            {
              if ((v7 & 0x2000000000000000) != 0)
              {
LABEL_266:
                v170 = v7;
                goto LABEL_267;
              }

LABEL_255:
              if ((v7 & 0x1000000000000000) != 0)
              {
                v10 = _StringGuts._foreignConvertedToSmall()(*&v10, v7);
                v170 = v203;
LABEL_267:
                v15 = v238;
                v169 = v246;
              }

              else
              {
                if ((*&v10 & 0x1000000000000000) != 0)
                {
                  v168 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
                }

                else
                {
                  v168 = _StringObject.sharedUTF8.getter(*&v10, v7);
                  v4 = v218;
                }

                v15 = v238;
                v169 = v246;
                closure #1 in _StringGuts._convertedToSmall()(v168, v4, &v248, v30);
                v10 = v248;
                v170 = v249;
              }

              v16;
              v175._rawBits = 1;
              v176._rawBits = (v164 << 16) | 1;
              v177._rawBits = _StringGuts.validateScalarRange(_:)(v175, v176, v169, v16)._rawBits;
              if (v177._rawBits < 0x10000)
              {
                v177._rawBits |= 3;
              }

              v179 = Substring.description.getter(v177._rawBits, v178._rawBits, v169, v16);
              v181 = v180;
              v16;
              if ((v181 & 0x2000000000000000) != 0)
              {
                v181;
                v14 = v244;
                v4 = v241;
              }

              else
              {
                v14 = v244;
                v4 = v241;
                if ((v181 & 0x1000000000000000) != 0)
                {
                  v179 = _StringGuts._foreignConvertedToSmall()(*&v179, v181);
                  v224 = v223;
                  v181;
                  v181 = v224;
                  v15 = v238;
                }

                else
                {
                  if ((*&v179 & 0x1000000000000000) != 0)
                  {
                    v213 = ((v181 & 0xFFFFFFFFFFFFFFFLL) + 32);
                    v214 = *&v179 & 0xFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v213 = _StringObject.sharedUTF8.getter(*&v179, v181);
                  }

                  closure #1 in _StringGuts._convertedToSmall()(v213, v214, &v248, v182);
                  v181;
                  v179 = v248;
                  v181 = v249;
                }
              }

              v183 = specialized _SmallString.init(_:appending:)(*&v10, v170, *&v179, v181);
              if (v185)
              {
                goto LABEL_343;
              }

              v186 = v183;
              v187 = v184;
              v7;
              swift_bridgeObjectRelease_n(v16, 2);
              v250 = v186;
              v251 = v187;
              goto LABEL_178;
            }

            v7 = &v250;
            _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v165, v18);
            if ((v16 & 0x1000000000000000) != 0)
            {
              _StringGuts._foreignAppendInPlace(_:)(v246, v16, 0, v164);
              swift_bridgeObjectRelease_n(v16, 2);
              v14 = v244;
              v15 = v238;
LABEL_177:
              v4 = v241;
              goto LABEL_178;
            }

            v4 = v241;
            if (v15)
            {
              if ((v246 & 0x1000000000000000) != 0)
              {
                v171 = (v16 & 0xFFFFFFFFFFFFFFFLL) + 32;
                v172 = v163;
              }

              else
              {
                v215 = _StringObject.sharedUTF8.getter(v246, v16);
                if (v216 < v163)
                {
                  goto LABEL_342;
                }

                v171 = v215;
                v172 = v216;
              }

              v14 = v244;
              v15 = v238;
              v16;
              v173 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v163, v171, v172);
              v7 = &v250;
              _StringGuts.appendInPlace(_:isASCII:)(v173, v174, v246 < 0);
              v16;
            }

            else
            {
              v248 = v246;
              v249 = v16 & 0xFFFFFFFFFFFFFFLL;
              v16;
              _StringGuts.appendInPlace(_:isASCII:)(&v248, HIBYTE(v16) & 0xF, (v16 & 0x4000000000000000) != 0);
              v16;
              v14 = v244;
              v15 = v238;
            }

LABEL_178:
            v121 = v243;
            if (v243 == v14)
            {
              return v250;
            }
          }
        }

LABEL_137:
        __break(1u);
        goto LABEL_138;
      }

      v21 = v15 & 0xFFFFFFFFFFFFLL;
      v20 = 1;
    }

    else
    {
      v21 = v15 & 0xFFFFFFFFFFFFLL;
      v4 = HIBYTE(v16) & 0xF;
      if ((v16 & 0x2000000000000000) != 0)
      {
        goto LABEL_107;
      }
    }

    v4 = v21;
LABEL_107:
    v245 = v21;
    if ((v16 & 0x1000000000000000) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_132;
  }

  return v250;
}

unint64_t BidirectionalCollection<>.joined(separator:)(uint64_t a1, unint64_t a2, char *a3)
{
  v4 = v3;
  v8 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v251 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(v11 + 8) + 8);
  swift_getAssociatedTypeWitness(0, v12, v13, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v265 = v14;
  v15 = MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v264 = &v251 - v18;
  if (a3 == &unk_1EEEBD150)
  {
    return specialized BidirectionalCollection<>.joined(separator:)(a1, a2, *v4);
  }

  v263 = v17;
  v254 = v16;
  v256 = HIBYTE(a2) & 0xF;
  v258 = a1;
  v259 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v19 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v19 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v20 = (*(v12 + 40))(a3, v12);
  v255 = v19;
  v21 = v20 + v20 * v19;
  v270 = 0;
  v271 = 0xE000000000000000;
  if (v21 >= 16)
  {
    v22 = _StringGuts.uniqueNativeCapacity.getter();
    if ((v23 & 1) != 0 || v22 < v21)
    {
      v25 = 2 * _StringGuts.uniqueNativeCapacity.getter();
      if (v25 <= v21)
      {
        v25 = v21;
      }

      if (v24)
      {
        v26 = v21;
      }

      else
      {
        v26 = v25;
      }

      v268 = 0;
      v269 = 0;
      v27 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(&v268, 0, v26, 1);
      v28 = *(v27 + 24);
      0xE000000000000000;
      v270 = v28;
      v271 = v27;
    }
  }

  (*(v8 + 16))(v10, v4, a3);
  v29 = *(v12 + 32);
  if (v255)
  {
    v264 = a2;
    v30 = v263;
    v29(a3, v12);
    v31 = v265;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v12, a3, v265, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
    v33 = *(AssociatedConformanceWitness + 16);
    v261 = (AssociatedConformanceWitness + 16);
    v262 = AssociatedConformanceWitness;
    v260 = v33;
    (v33)(&v268, v31);
    v34 = v269;
    if (!v269)
    {
LABEL_316:
      (*(v254 + 8))(v30, v31);
      return v270;
    }

    v35 = v268;
    v37 = v270;
    v36 = v271;
    v38 = HIBYTE(v271) & 0xF;
    v39 = v270 & 0xFFFFFFFFFFFFLL;
    if ((v271 & 0x2000000000000000) != 0)
    {
      v40 = HIBYTE(v271) & 0xF;
    }

    else
    {
      v40 = v270 & 0xFFFFFFFFFFFFLL;
    }

    if (!v40 && (v270 & ~v271 & 0x2000000000000000) == 0)
    {
      v271;
      v270 = v35;
      v271 = v34;
LABEL_166:
      v31 = v265;
      goto LABEL_167;
    }

    v41 = v269 & 0x2000000000000000;
    v42 = HIBYTE(v269) & 0xF;
    if ((v269 & 0x2000000000000000 & v271) != 0)
    {
      v43 = v38 + v42;
      if (v38 + v42 <= 0xF)
      {
        if (v42)
        {
          v119 = 0;
          v120 = 0;
          v121 = 8 * v38;
          v122 = v271;
          do
          {
            v123 = v269 >> (v119 & 0x38);
            if (v120 < 8)
            {
              v123 = v268 >> v119;
            }

            v124 = (v123 << (v121 & 0x38)) | ((-255 << (v121 & 0x38)) - 1) & v122;
            v125 = (v123 << v121) | ((-255 << v121) - 1) & *&v37;
            if (v38 <= 7)
            {
              v37 = v125;
            }

            else
            {
              v122 = v124;
            }

            ++v38;
            v121 += 8;
            v119 += 8;
            ++v120;
          }

          while (8 * v42 != v119);
        }

        else
        {
          v122 = v271;
        }

        v271;
        v34;
        v139 = 0xA000000000000000;
        if (!(*&v37 & 0x8080808080808080 | v122 & 0x80808080808080))
        {
          v139 = 0xE000000000000000;
        }

        v138 = v139 & 0xFF00000000000000 | (v43 << 56) | v122 & 0xFFFFFFFFFFFFFFLL;
        goto LABEL_165;
      }
    }

    v257._rawBits = v268 & 0xFFFFFFFFFFFFLL;
    if (v41)
    {
      v44 = HIBYTE(v269) & 0xF;
    }

    else
    {
      v44 = v268 & 0xFFFFFFFFFFFFLL;
    }

    if ((v269 & 0x1000000000000000) != 0)
    {
      goto LABEL_323;
    }

    v269;
    v46 = v44;
    if ((v36 & 0x1000000000000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_326:
    v241 = String.UTF8View._foreignCount()();
    v48 = v241 + v46;
    if (__OFADD__(v241, v46))
    {
      goto LABEL_328;
    }

LABEL_29:
    if ((*&v37 & ~v36 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v36 & 0xFFFFFFFFFFFFFFFLL))
    {
      v49 = _StringGuts.nativeUnusedCapacity.getter(*&v37, v36);
      if (v50)
      {
        goto LABEL_339;
      }

      v51 = (v36 >> 61) & 1;
      if (v49 < v46)
      {
        LOBYTE(v51) = 1;
      }

      if (v48 <= 15 && (v51 & 1) != 0)
      {
LABEL_36:
        if ((v36 & 0x2000000000000000) == 0)
        {
          goto LABEL_329;
        }

        v52 = v36;
LABEL_38:
        v34;
        v53._rawBits = 1;
        v54._rawBits = (v44 << 16) | 1;
        v55._rawBits = _StringGuts.validateScalarRange(_:)(v53, v54, v35, v34)._rawBits;
        if (v55._rawBits < 0x10000)
        {
          v55._rawBits |= 3;
        }

        if (v55._rawBits >> 16 || v56._rawBits >> 16 != v44)
        {
          v35 = specialized static String._copying(_:)(v55._rawBits, v56._rawBits, v35, v34);
          v58 = v126;
          v34;
        }

        else
        {
          v58 = v34;
        }

        if ((v58 & 0x2000000000000000) != 0)
        {
          v58;
        }

        else if ((v58 & 0x1000000000000000) != 0)
        {
          v35 = _StringGuts._foreignConvertedToSmall()(v35, v58);
          v249 = v248;
          v58;
          v58 = v249;
        }

        else
        {
          if ((v35 & 0x1000000000000000) != 0)
          {
            v243 = ((v58 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v244 = v35 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v243 = _StringObject.sharedUTF8.getter(v35, v58);
          }

          closure #1 in _StringGuts._convertedToSmall()(v243, v244, &v268, v57);
          v58;
          v35 = v268;
          v58 = v269;
        }

        v127 = HIBYTE(v52) & 0xF;
        v128 = HIBYTE(v58) & 0xF;
        v129 = v128 + v127;
        if (v128 + v127 < 0x10)
        {
          v34;
          if (v128)
          {
            v130 = 0;
            v131 = 0;
            v132 = 8 * v127;
            v133 = 8 * v128;
            v30 = v263;
            do
            {
              v134 = v58 >> (v130 & 0x38);
              if (v131 < 8)
              {
                v134 = v35 >> v130;
              }

              v135 = (v134 << (v132 & 0x38)) | ((-255 << (v132 & 0x38)) - 1) & v52;
              v136 = (v134 << v132) | ((-255 << v132) - 1) & *&v37;
              if (v127 <= 7)
              {
                v37 = v136;
              }

              else
              {
                v52 = v135;
              }

              ++v127;
              v132 += 8;
              v130 += 8;
              ++v131;
            }

            while (v133 != v130);
          }

          else
          {
            v30 = v263;
          }

          v36;
          v34;
          v137 = 0xA000000000000000;
          if (!(*&v37 & 0x8080808080808080 | v52 & 0x80808080808080))
          {
            v137 = 0xE000000000000000;
          }

          v138 = v137 & 0xFF00000000000000 | (v129 << 56) | v52 & 0xFFFFFFFFFFFFFFLL;
LABEL_165:
          v270 = v37;
          v271 = v138;
          goto LABEL_166;
        }

LABEL_339:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }
    }

    else if (v48 < 16)
    {
      goto LABEL_36;
    }

    _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v48, v46);
    if ((v34 & 0x1000000000000000) != 0)
    {
      _StringGuts._foreignAppendInPlace(_:)(v35, v34, 0, v44);
      swift_bridgeObjectRelease_n(v34, 2);
      v31 = v265;
      v30 = v263;
    }

    else
    {
      v31 = v265;
      v30 = v263;
      if (v41)
      {
        v118 = (v34 >> 62) & 1;
        v268 = v35;
        v269 = v34 & 0xFFFFFFFFFFFFFFLL;
        v116 = &v268;
        v117 = v42;
      }

      else
      {
        if ((v35 & 0x1000000000000000) != 0)
        {
          v113 = (v34 & 0xFFFFFFFFFFFFFFFLL) + 32;
          rawBits = v257._rawBits;
          v115 = v257._rawBits;
        }

        else
        {
          v245 = _StringObject.sharedUTF8.getter(v35, v34);
          if (v246 < v257._rawBits)
          {
LABEL_338:
            _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          v113 = v245;
          v115 = v246;
          v31 = v265;
          v30 = v263;
          rawBits = v257._rawBits;
        }

        v116 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, rawBits, v113, v115);
        v118 = v35 >> 63;
      }

      closure #1 in _StringGuts.append(_:)(v116, v117, &v270, v118);
      swift_bridgeObjectRelease_n(v34, 2);
    }

LABEL_167:
    v260(&v268, v31, v262);
    v42 = v269;
    v34 = v264;
    if (v269)
    {
      v252 = (v264 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v253 = v264 & 0xFFFFFFFFFFFFFFLL;
      v251 = 8 * v256;
      while (1)
      {
        v35 = v268;
        v37 = v270;
        v36 = v271;
        v141 = HIBYTE(v271) & 0xF;
        v40 = v270 & 0xFFFFFFFFFFFFLL;
        if ((v271 & 0x2000000000000000) != 0)
        {
          v142 = HIBYTE(v271) & 0xF;
        }

        else
        {
          v142 = v270 & 0xFFFFFFFFFFFFLL;
        }

        if (!v142 && (v270 & ~v271 & 0x2000000000000000) == 0)
        {
          v34;
          v36;
          v270 = v258;
          v271 = v34;
          goto LABEL_230;
        }

        if ((v271 & 0x2000000000000000) != 0)
        {
          break;
        }

        v39 = v259;
        if ((v34 & 0x2000000000000000) != 0)
        {
          goto LABEL_181;
        }

LABEL_182:
        v41 = v39;
        if ((v34 & 0x1000000000000000) != 0)
        {
          v213._rawBits = (v39 << 16) | 1;
          v214._rawBits = 1;
          v215._rawBits = _StringGuts.validateScalarRange(_:)(v214, v213, v258, v34)._rawBits;
          v257._rawBits = v216;
          if (v215._rawBits >= 0x10000)
          {
            v217 = v215._rawBits;
          }

          else
          {
            v217 = v215._rawBits | 3;
          }

          v34;
          v41 = String.UTF8View.distance(from:to:)(v217, v257);
          v34;
          if ((v36 & 0x1000000000000000) == 0)
          {
LABEL_184:
            v44 = v142 + v41;
            if (__OFADD__(v142, v41))
            {
              goto LABEL_320;
            }

            goto LABEL_185;
          }
        }

        else if ((v271 & 0x1000000000000000) == 0)
        {
          goto LABEL_184;
        }

        v218 = String.UTF8View._foreignCount()();
        v44 = v218 + v41;
        if (__OFADD__(v218, v41))
        {
LABEL_320:
          __break(1u);
LABEL_321:
          __break(1u);
LABEL_322:
          __break(1u);
LABEL_323:
          swift_bridgeObjectRetain_n(v34, 2);
          v237._rawBits = 1;
          v238._rawBits = (v44 << 16) | 1;
          v239._rawBits = _StringGuts.validateScalarRange(_:)(v237, v238, v35, v34)._rawBits;
          if (v239._rawBits < 0x10000)
          {
            v239._rawBits |= 3;
          }

          v46 = String.UTF8View.distance(from:to:)(v239, v240);
          v34;
          if ((v36 & 0x1000000000000000) != 0)
          {
            goto LABEL_326;
          }

LABEL_28:
          v47 = __OFADD__(v40, v46);
          v48 = v40 + v46;
          if (!v47)
          {
            goto LABEL_29;
          }

LABEL_328:
          __break(1u);
LABEL_329:
          if ((v36 & 0x1000000000000000) != 0)
          {
            v37 = _StringGuts._foreignConvertedToSmall()(*&v37, v36);
            v52 = v247;
          }

          else
          {
            if ((*&v37 & 0x1000000000000000) != 0)
            {
              v242 = ((v36 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v242 = _StringObject.sharedUTF8.getter(*&v37, v36);
              v39 = v250;
            }

            closure #1 in _StringGuts._convertedToSmall()(v242, v39, &v268, v45);
            v37 = v268;
            v52 = v269;
          }

          goto LABEL_38;
        }

LABEL_185:
        if ((*&v37 & ~v36 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v36 & 0xFFFFFFFFFFFFFFFLL))
        {
          v144 = _StringGuts.nativeUnusedCapacity.getter(*&v37, v36);
          v145 = v258;
          if (v146)
          {
            goto LABEL_339;
          }

          if (v44 > 15)
          {
LABEL_196:
            _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v44, v41);
            if ((v34 & 0x1000000000000000) != 0)
            {
              _StringGuts._foreignAppendInPlace(_:)(v145, v34, 0, v39);
            }

            else
            {
              if ((v34 & 0x2000000000000000) != 0)
              {
                v268 = v145;
                v269 = v253;
                if (v256 < v39)
                {
                  goto LABEL_338;
                }

                v153 = (v34 >> 62) & 1;
                v151 = &v268;
                v152 = v39;
              }

              else
              {
                v149 = v252;
                v150 = v259;
                if ((v145 & 0x1000000000000000) != 0)
                {
                  if (v259 < v39)
                  {
                    goto LABEL_338;
                  }
                }

                else
                {
                  v149 = _StringObject.sharedUTF8.getter(v145, v34);
                  v150 = v228;
                  if (v228 < v39)
                  {
                    goto LABEL_338;
                  }
                }

                v151 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v39, v149, v150);
                v153 = v145 >> 63;
              }

              closure #1 in _StringGuts.append(_:)(v151, v152, &v270, v153);
            }

            goto LABEL_230;
          }

          if ((v36 & 0x2000000000000000) == 0)
          {
            if (v144 >= v41)
            {
              goto LABEL_196;
            }

LABEL_191:
            if ((v36 & 0x1000000000000000) != 0)
            {
              v37 = _StringGuts._foreignConvertedToSmall()(*&v37, v36);
              v148 = v211;
            }

            else
            {
              if ((*&v37 & 0x1000000000000000) != 0)
              {
                v147 = ((v36 & 0xFFFFFFFFFFFFFFFLL) + 32);
              }

              else
              {
                v147 = _StringObject.sharedUTF8.getter(*&v37, v36);
                v40 = v231;
              }

              closure #1 in _StringGuts._convertedToSmall()(v147, v40, &v268, v140);
              v37 = v268;
              v148 = v269;
            }

            goto LABEL_203;
          }
        }

        else
        {
          v145 = v258;
          if (v44 >= 16)
          {
            goto LABEL_196;
          }

          if ((v36 & 0x2000000000000000) == 0)
          {
            goto LABEL_191;
          }
        }

        v148 = v36;
LABEL_203:
        v34;
        v154._rawBits = 1;
        v155._rawBits = (v39 << 16) | 1;
        v156._rawBits = _StringGuts.validateScalarRange(_:)(v154, v155, v145, v34)._rawBits;
        if (v156._rawBits < 0x10000)
        {
          v156._rawBits |= 3;
        }

        if (v156._rawBits >> 16 || (v159 = v34, v160 = v145, v157._rawBits >> 16 != v255))
        {
          v160 = specialized static String._copying(_:)(v156._rawBits, v157._rawBits, v145, v34);
          v159 = v161;
          v34;
        }

        if ((v159 & 0x2000000000000000) != 0)
        {
          v159;
        }

        else if ((v159 & 0x1000000000000000) != 0)
        {
          v160 = _StringGuts._foreignConvertedToSmall()(*&v160, v159);
          v234 = v233;
          v159;
          v159 = v234;
        }

        else
        {
          if ((*&v160 & 0x1000000000000000) != 0)
          {
            v224 = ((v159 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v225 = *&v160 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v224 = _StringObject.sharedUTF8.getter(*&v160, v159);
          }

          closure #1 in _StringGuts._convertedToSmall()(v224, v225, &v268, v158);
          v159;
          v160 = v268;
          v159 = v269;
        }

        v162 = specialized _SmallString.init(_:appending:)(*&v37, v148, *&v160, v159);
        if (v164)
        {
          goto LABEL_339;
        }

        v165 = v162;
        v166 = v163;
        v36;
        v270 = v165;
        v271 = v166;
LABEL_230:
        v37 = v270;
        v36 = v271;
        v175 = HIBYTE(v271) & 0xF;
        v34 = v270 & 0xFFFFFFFFFFFFLL;
        if ((v271 & 0x2000000000000000) != 0)
        {
          v176 = HIBYTE(v271) & 0xF;
        }

        else
        {
          v176 = v270 & 0xFFFFFFFFFFFFLL;
        }

        if (!v176 && (v270 & ~v271 & 0x2000000000000000) == 0)
        {
          v271;
          v270 = v35;
          v271 = v42;
          v34 = v264;
          v31 = v265;
          v30 = v263;
          goto LABEL_170;
        }

        v44 = v42 & 0x2000000000000000;
        v40 = HIBYTE(v42) & 0xF;
        if ((v42 & 0x2000000000000000 & v271) != 0)
        {
          v177 = v175 + v40;
          if (v175 + v40 <= 0xF)
          {
            if (v40)
            {
              v188 = 0;
              v189 = 0;
              v190 = 8 * v175;
              v191 = 8 * v40;
              v192 = v271;
              v30 = v263;
              v34 = v264;
              do
              {
                v193 = v42 >> (v188 & 0x38);
                if (v189 < 8)
                {
                  v193 = v35 >> v188;
                }

                v194 = (v193 << (v190 & 0x38)) | ((-255 << (v190 & 0x38)) - 1) & v192;
                v195 = (v193 << v190) | ((-255 << v190) - 1) & *&v37;
                if (v175 <= 7)
                {
                  v37 = v195;
                }

                else
                {
                  v192 = v194;
                }

                ++v175;
                v190 += 8;
                v188 += 8;
                ++v189;
              }

              while (v191 != v188);
            }

            else
            {
              v192 = v271;
              v30 = v263;
              v34 = v264;
            }

            v271;
            v42;
            v210 = 0xA000000000000000;
            if (!(*&v37 & 0x8080808080808080 | v192 & 0x80808080808080))
            {
              v210 = 0xE000000000000000;
            }

            v270 = v37;
            v271 = v210 & 0xFF00000000000000 | (v177 << 56) | v192 & 0xFFFFFFFFFFFFFFLL;
            goto LABEL_282;
          }
        }

        v41 = v35 & 0xFFFFFFFFFFFFLL;
        if (v44)
        {
          v39 = HIBYTE(v42) & 0xF;
        }

        else
        {
          v39 = v35 & 0xFFFFFFFFFFFFLL;
        }

        v257._rawBits = v39;
        if ((v42 & 0x1000000000000000) != 0)
        {
          swift_bridgeObjectRetain_n(v42, 2);
          v219._rawBits = 1;
          v220._rawBits = (v39 << 16) | 1;
          v221._rawBits = _StringGuts.validateScalarRange(_:)(v219, v220, v35, v42)._rawBits;
          if (v221._rawBits < 0x10000)
          {
            v221._rawBits |= 3;
          }

          v39 = String.UTF8View.distance(from:to:)(v221, v222);
          v42;
          if ((v36 & 0x1000000000000000) == 0)
          {
LABEL_242:
            v47 = __OFADD__(v176, v39);
            v179 = v176 + v39;
            if (v47)
            {
              goto LABEL_321;
            }

            goto LABEL_243;
          }
        }

        else
        {
          v42;
          if ((v36 & 0x1000000000000000) == 0)
          {
            goto LABEL_242;
          }
        }

        v223 = String.UTF8View._foreignCount()();
        v179 = v223 + v39;
        if (__OFADD__(v223, v39))
        {
          goto LABEL_321;
        }

LABEL_243:
        if ((*&v37 & ~v36 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v36 & 0xFFFFFFFFFFFFFFFLL))
        {
          v180 = _StringGuts.nativeUnusedCapacity.getter(*&v37, v36);
          if (v181)
          {
            goto LABEL_339;
          }

          if (v179 <= 15)
          {
            if ((v36 & 0x2000000000000000) != 0)
            {
              goto LABEL_269;
            }

            if (v180 < v39)
            {
              goto LABEL_249;
            }
          }
        }

        else if (v179 < 16)
        {
          if ((v36 & 0x2000000000000000) != 0)
          {
LABEL_269:
            v183 = v36;
          }

          else
          {
LABEL_249:
            if ((v36 & 0x1000000000000000) != 0)
            {
              v37 = _StringGuts._foreignConvertedToSmall()(*&v37, v36);
              v183 = v212;
            }

            else
            {
              if ((*&v37 & 0x1000000000000000) != 0)
              {
                v182 = ((v36 & 0xFFFFFFFFFFFFFFFLL) + 32);
              }

              else
              {
                v182 = _StringObject.sharedUTF8.getter(*&v37, v36);
                v34 = v232;
              }

              closure #1 in _StringGuts._convertedToSmall()(v182, v34, &v268, v178);
              v37 = v268;
              v183 = v269;
            }
          }

          v196 = (v257._rawBits << 16) | 1;
          v42;
          v197._rawBits = 1;
          v198._rawBits = v196;
          v199._rawBits = _StringGuts.validateScalarRange(_:)(v197, v198, v35, v42)._rawBits;
          if (v199._rawBits < 0x10000)
          {
            v199._rawBits |= 3;
          }

          v201 = Substring.description.getter(v199._rawBits, v200._rawBits, v35, v42);
          v203 = v202;
          v42;
          if ((v203 & 0x2000000000000000) != 0)
          {
            v203;
            v34 = v264;
          }

          else
          {
            v34 = v264;
            if ((v203 & 0x1000000000000000) != 0)
            {
              v201 = _StringGuts._foreignConvertedToSmall()(*&v201, v203);
              v236 = v235;
              v203;
              v203 = v236;
            }

            else
            {
              if ((*&v201 & 0x1000000000000000) != 0)
              {
                v226 = ((v203 & 0xFFFFFFFFFFFFFFFLL) + 32);
                v227 = *&v201 & 0xFFFFFFFFFFFFLL;
              }

              else
              {
                v226 = _StringObject.sharedUTF8.getter(*&v201, v203);
              }

              closure #1 in _StringGuts._convertedToSmall()(v226, v227, &v268, v204);
              v203;
              v201 = v268;
              v203 = v269;
            }
          }

          v205 = specialized _SmallString.init(_:appending:)(*&v37, v183, *&v201, v203);
          if (v207)
          {
            goto LABEL_339;
          }

          v208 = v205;
          v209 = v206;
          v36;
          swift_bridgeObjectRelease_n(v42, 2);
          v270 = v208;
          v271 = v209;
          v31 = v265;
          v30 = v263;
          goto LABEL_170;
        }

        _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v179, v39);
        if ((v42 & 0x1000000000000000) != 0)
        {
          _StringGuts._foreignAppendInPlace(_:)(v35, v42, 0, v257._rawBits);
          swift_bridgeObjectRelease_n(v42, 2);
          v34 = v264;
          v31 = v265;
          v30 = v263;
        }

        else
        {
          v30 = v263;
          v34 = v264;
          if (v44)
          {
            v268 = v35;
            v269 = v42 & 0xFFFFFFFFFFFFFFLL;
            closure #1 in _StringGuts.append(_:)(&v268, HIBYTE(v42) & 0xF, &v270, (v42 & 0x4000000000000000) != 0);
            swift_bridgeObjectRelease_n(v42, 2);
LABEL_282:
            v31 = v265;
            goto LABEL_170;
          }

          if ((v35 & 0x1000000000000000) != 0)
          {
            v184 = (v42 & 0xFFFFFFFFFFFFFFFLL) + 32;
            v185 = v35 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v229 = _StringObject.sharedUTF8.getter(v35, v42);
            if (v230 < v41)
            {
              goto LABEL_338;
            }

            v184 = v229;
            v185 = v230;
          }

          v31 = v265;
          v186 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v35 & 0xFFFFFFFFFFFFLL, v184, v185);
          closure #1 in _StringGuts.append(_:)(v186, v187, &v270, v35 < 0);
          swift_bridgeObjectRelease_n(v42, 2);
        }

LABEL_170:
        v260(&v268, v31, v262);
        v42 = v269;
        if (!v269)
        {
          goto LABEL_316;
        }
      }

      v39 = v259;
      if ((v34 & 0x2000000000000000) == 0)
      {
        goto LABEL_182;
      }

      v143 = v141 + v256;
      if (v141 + v256 <= 0xF)
      {
        if (v256)
        {
          v167 = 0;
          v168 = 0;
          v169 = 8 * v141;
          v170 = v271;
          do
          {
            v171 = v34 >> (v167 & 0x38);
            if (v168 < 8)
            {
              v171 = v258 >> v167;
            }

            v172 = (v171 << (v169 & 0x38)) | ((-255 << (v169 & 0x38)) - 1) & v170;
            v173 = (v171 << v169) | ((-255 << v169) - 1) & *&v37;
            if (v141 <= 7)
            {
              v37 = v173;
            }

            else
            {
              v170 = v172;
            }

            ++v141;
            v169 += 8;
            v167 += 8;
            ++v168;
          }

          while (v251 != v167);
        }

        else
        {
          v170 = v271;
        }

        v271;
        v174 = 0xA000000000000000;
        if (!(*&v37 & 0x8080808080808080 | v170 & 0x80808080808080))
        {
          v174 = 0xE000000000000000;
        }

        v270 = v37;
        v271 = v174 & 0xFF00000000000000 | (v143 << 56) | v170 & 0xFFFFFFFFFFFFFFLL;
        goto LABEL_230;
      }

LABEL_181:
      v39 = v256;
      goto LABEL_182;
    }

    goto LABEL_316;
  }

  v29(a3, v12);
  v60 = v265;
  v61 = swift_getAssociatedConformanceWitness(v12, a3, v265, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v62 = *(v61 + 16);
  v262 = v61 + 16;
  v263 = v61;
  v261 = v62;
  (v62)(&v268, v60);
  v63 = v269;
  if (v269)
  {
    v34 = -255;
    do
    {
      v41 = v268;
      v42 = v270;
      v36 = v271;
      v66 = HIBYTE(v271) & 0xF;
      v39 = v270 & 0xFFFFFFFFFFFFLL;
      if ((v271 & 0x2000000000000000) != 0)
      {
        v67 = HIBYTE(v271) & 0xF;
      }

      else
      {
        v67 = v270 & 0xFFFFFFFFFFFFLL;
      }

      if (!v67 && (v270 & ~v271 & 0x2000000000000000) == 0)
      {
        v271;
        v270 = v41;
        v271 = v63;
        goto LABEL_51;
      }

      v37 = (v63 & 0x2000000000000000);
      v40 = HIBYTE(v63) & 0xF;
      v68 = v66 + v40;
      if ((v63 & 0x2000000000000000 & v271) != 0 && v68 <= 0xF)
      {
        if (v40)
        {
          v81 = 0;
          v82 = 0;
          v83 = 8 * v66;
          v84 = 8 * v40;
          v64 = v271;
          do
          {
            v85 = v63 >> (v81 & 0x38);
            if (v82 < 8)
            {
              v85 = v268 >> v81;
            }

            v86 = (v85 << (v83 & 0x38)) | ((-255 << (v83 & 0x38)) - 1) & v64;
            v87 = (v85 << v83) | ((-255 << v83) - 1) & v42;
            if (v66 <= 7)
            {
              v42 = v87;
            }

            else
            {
              v64 = v86;
            }

            ++v66;
            v83 += 8;
            v81 += 8;
            ++v82;
          }

          while (v84 != v81);
        }

        else
        {
          v64 = v271;
        }

        v271;
        v63;
        v65 = 0xA000000000000000;
        if (!(v42 & 0x8080808080808080 | v64 & 0x80808080808080))
        {
          v65 = 0xE000000000000000;
        }

        v270 = v42;
        v271 = v65 & 0xFF00000000000000 | (v68 << 56) | v64 & 0xFFFFFFFFFFFFFFLL;
        goto LABEL_50;
      }

      if (v37)
      {
        v35 = HIBYTE(v63) & 0xF;
      }

      else
      {
        v35 = v268 & 0xFFFFFFFFFFFFLL;
      }

      v259 = v268 & 0xFFFFFFFFFFFFLL;
      v260 = v35;
      if ((v63 & 0x1000000000000000) != 0)
      {
        swift_bridgeObjectRetain_n(v63, 2);
        v101._rawBits = 1;
        v102._rawBits = (v35 << 16) | 1;
        v103._rawBits = _StringGuts.validateScalarRange(_:)(v101, v102, v41, v63)._rawBits;
        if (v103._rawBits < 0x10000)
        {
          v103._rawBits |= 3;
        }

        v35 = String.UTF8View.distance(from:to:)(v103, v104);
        v63;
        if ((v36 & 0x1000000000000000) == 0)
        {
LABEL_67:
          v47 = __OFADD__(v67, v35);
          v44 = v67 + v35;
          if (v47)
          {
            goto LABEL_322;
          }

          goto LABEL_68;
        }
      }

      else
      {
        v63;
        if ((v36 & 0x1000000000000000) == 0)
        {
          goto LABEL_67;
        }
      }

      v105 = String.UTF8View._foreignCount()();
      v44 = v105 + v35;
      if (__OFADD__(v105, v35))
      {
        goto LABEL_322;
      }

LABEL_68:
      if ((v42 & ~v36 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v36 & 0xFFFFFFFFFFFFFFFLL))
      {
        v71 = _StringGuts.nativeUnusedCapacity.getter(v42, v36);
        if (v72)
        {
          goto LABEL_339;
        }

        if (v44 <= 15)
        {
          if ((v36 & 0x2000000000000000) != 0)
          {
            goto LABEL_94;
          }

          if (v71 < v35)
          {
            goto LABEL_74;
          }
        }
      }

      else if (v44 < 16)
      {
        if ((v36 & 0x2000000000000000) != 0)
        {
LABEL_94:
          v75 = v36;
          goto LABEL_95;
        }

LABEL_74:
        if ((v36 & 0x1000000000000000) != 0)
        {
          v42 = _StringGuts._foreignConvertedToSmall()(v42, v36);
          v75 = v100;
LABEL_95:
          v74 = v260;
        }

        else
        {
          if ((v42 & 0x1000000000000000) != 0)
          {
            v73 = ((v36 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v73 = _StringObject.sharedUTF8.getter(v42, v36);
            v39 = v110;
          }

          v74 = v260;
          closure #1 in _StringGuts._convertedToSmall()(v73, v39, &v266, v70);
          v42 = v266;
          v75 = v267;
        }

        v63;
        v88._rawBits = 1;
        v89._rawBits = (v74 << 16) | 1;
        v90._rawBits = _StringGuts.validateScalarRange(_:)(v88, v89, v41, v63)._rawBits;
        if (v90._rawBits < 0x10000)
        {
          v90._rawBits |= 3;
        }

        if (v90._rawBits >> 16 || (v91._rawBits >> 16) != v74)
        {
          v41 = specialized static String._copying(_:)(v90._rawBits, v91._rawBits, v41, v63);
          v93 = v94;
          v63;
        }

        else
        {
          v93 = v63;
        }

        if ((v93 & 0x2000000000000000) != 0)
        {
          v93;
        }

        else if ((v93 & 0x1000000000000000) != 0)
        {
          v41 = _StringGuts._foreignConvertedToSmall()(v41, v93);
          v112 = v111;
          v93;
          v93 = v112;
        }

        else
        {
          if ((v41 & 0x1000000000000000) != 0)
          {
            v106 = ((v93 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v107 = v41 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v106 = _StringObject.sharedUTF8.getter(v41, v93);
          }

          closure #1 in _StringGuts._convertedToSmall()(v106, v107, &v266, v92);
          v93;
          v41 = v266;
          v93 = v267;
        }

        v95 = specialized _SmallString.init(_:appending:)(v42, v75, v41, v93);
        if (v97)
        {
          goto LABEL_339;
        }

        v98 = v95;
        v99 = v96;
        v36;
        swift_bridgeObjectRelease_n(v63, 2);
        v270 = v98;
        v271 = v99;
        goto LABEL_50;
      }

      _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v44, v35);
      if ((v63 & 0x1000000000000000) != 0)
      {
        _StringGuts._foreignAppendInPlace(_:)(v41, v63, 0, v260);
        goto LABEL_109;
      }

      if (v37)
      {
        v266 = v41;
        v267 = v63 & 0xFFFFFFFFFFFFFFLL;
        closure #1 in _StringGuts.append(_:)(&v266, HIBYTE(v63) & 0xF, &v270, (v63 & 0x4000000000000000) != 0);
LABEL_109:
        swift_bridgeObjectRelease_n(v63, 2);
LABEL_50:
        v60 = v265;
        goto LABEL_51;
      }

      if ((v41 & 0x1000000000000000) != 0)
      {
        v76 = (v63 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v77 = v259;
        v78 = v259;
      }

      else
      {
        v108 = _StringObject.sharedUTF8.getter(v41, v63);
        v78 = v109;
        v77 = v259;
        if (v78 < v259)
        {
          goto LABEL_338;
        }

        v76 = v108;
      }

      v60 = v265;
      v79 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v77, v76, v78);
      closure #1 in _StringGuts.append(_:)(v79, v80, &v270, v41 < 0);
      swift_bridgeObjectRelease_n(v63, 2);
LABEL_51:
      v261(&v268, v60, v263);
      v63 = v269;
    }

    while (v269);
  }

  (*(v254 + 8))(v264, v60);
  return v270;
}

Swift::String __swiftcall String.lowercased()()
{
  v2 = v1;
  v3 = v0;
  v4 = 0;
  v96 = *MEMORY[0x1E69E9840];
  if ((v1 & 0x1000000000000000) != 0)
  {
    *&v95 = 0;
    *(&v95 + 1) = 0xE000000000000000;
    v50 = String.UTF8View._foreignCount()();
    v6 = v2 & 0x2000000000000000;
    v51 = HIBYTE(v2) & 0xF;
    v52 = v3 & 0xFFFFFFFFFFFFLL;
    goto LABEL_52;
  }

  v5 = v0 < 0;
  v6 = v1 & 0x2000000000000000;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v5 = (v1 & 0x4000000000000000) != 0;
  }

  if (!v5)
  {
    *&v95 = 0;
    *(&v95 + 1) = 0xE000000000000000;
    v51 = HIBYTE(v1) & 0xF;
    v52 = v0 & 0xFFFFFFFFFFFFLL;
    if (v6)
    {
      v50 = HIBYTE(v1) & 0xF;
    }

    else
    {
      v50 = v0 & 0xFFFFFFFFFFFFLL;
    }

LABEL_52:
    String.reserveCapacity(_:)(v50);
    if (v6)
    {
      v54 = v51;
    }

    else
    {
      v54 = v52;
    }

    if (!v54)
    {
LABEL_89:
      v20 = *(&v95 + 1);
      v17 = v95;
      goto LABEL_29;
    }

    v55 = 0;
    v91 = v54;
    while (1)
    {
      if ((v2 & 0x1000000000000000) != 0)
      {
        v60 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)((v55 << 16));
        scalarLength = v60.scalarLength;
        value = v60._0._value;
      }

      else
      {
        if (v6)
        {
          *&v94[0] = v3;
          *(&v94[0] + 1) = v2 & 0xFFFFFFFFFFFFFFLL;
          v57 = v94;
        }

        else
        {
          v57 = ((v2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          if ((v3 & 0x1000000000000000) == 0)
          {
            v57 = _StringObject.sharedUTF8.getter(v3, v2);
          }
        }

        value = _decodeScalar(_:startingAt:)(v57, v53, v55);
      }

      v61 = value;
      v62 = scalarLength;
      *&v94[0] = 0;
      SpecialMapping = _swift_stdlib_getSpecialMapping(value, 1, v94);
      if (SpecialMapping && *&v94[0])
      {
        if ((*&v94[0] & 0x8000000000000000) != 0)
        {
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v65 = specialized static String._uncheckedFromUTF8(_:isASCII:)(SpecialMapping, *&v94[0], 0, v64);
      }

      else
      {
        Mapping = _swift_stdlib_getMapping(v61, 1);
        if (Mapping)
        {
          v76 = Mapping + v61;
          if (v76 < 0 || HIDWORD(v76))
          {
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }
        }

        else
        {
          LODWORD(v76) = v61;
        }

        v65 = specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(v76);
      }

      v77 = v66;
      v78 = v95;
      v79 = HIBYTE(*(&v95 + 1)) & 0xFLL;
      if ((*(&v95 + 1) & 0x2000000000000000) == 0)
      {
        v79 = v95 & 0xFFFFFFFFFFFFLL;
      }

      if (!v79 && (v95 & ~*(&v95 + 1) & 0x2000000000000000) == 0)
      {
        v85 = v65;
        *(&v95 + 1);
        *&v95 = v85;
        *(&v95 + 1) = v77;
        goto LABEL_59;
      }

      if ((*(&v95 + 1) & 0x2000000000000000) != 0)
      {
        if ((v66 & 0x2000000000000000) != 0)
        {
          v92 = v4;
          v80 = v6;
          v81 = v65;
          v82 = specialized _SmallString.init(_:appending:)(v95, *(&v95 + 1), v65, v66);
          if ((v84 & 1) == 0)
          {
            v86 = v82;
            v87 = v83;
            *(&v78 + 1);
            v77;
            *&v95 = v86;
            *(&v95 + 1) = v87;
            v6 = v80;
            v4 = v92;
            v54 = v91;
            goto LABEL_59;
          }

          v56 = HIBYTE(v77) & 0xF;
          v65 = v81;
          v4 = v92;
          v54 = v91;
          goto LABEL_58;
        }
      }

      else if ((v66 & 0x2000000000000000) != 0)
      {
        v56 = HIBYTE(v66) & 0xF;
        goto LABEL_58;
      }

      v56 = v65 & 0xFFFFFFFFFFFFLL;
LABEL_58:
      _StringGuts.append(_:)(v65, v77, 0, v56, v67, v68, v69, v70, v71, v72, v73, v74);
      v77;
LABEL_59:
      v55 += v62;
      if (v55 >= v54)
      {
        goto LABEL_89;
      }
    }
  }

  if (!v6)
  {
    if ((v0 & 0x1000000000000000) != 0)
    {
      v7 = ((v1 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v0 & 0xFFFFFFFFFFFFLL;
      if ((v0 & 0xFFFFFFFFFFFFuLL) <= 0xF)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v7 = _StringObject.sharedUTF8.getter(v0, v1);
      v8 = v88;
      if (v88 <= 15)
      {
LABEL_8:
        v95 = xmmword_18071DD30;
        if (v8)
        {
          v9 = v8 & ~(v8 >> 63);
          v10 = v8 - 1;
          if (v9 < v8 - 1)
          {
            v10 = v8 & ~(v8 >> 63);
          }

          if (v10 >= 0x10)
          {
            v23 = v10 + 1;
            v24 = v23 & 0xF;
            if ((v23 & 0xF) == 0)
            {
              v24 = 16;
            }

            v11 = v23 - v24;
            v25 = &v95;
            v26.i64[0] = -1;
            v26.i64[1] = -1;
            v27.i64[0] = 0x3F3F3F3F3F3F3F3FLL;
            v27.i64[1] = 0x3F3F3F3F3F3F3F3FLL;
            v28 = vdupq_n_s64(0x3FFE000000000uLL);
            v29.i64[0] = 0x2020202020202020;
            v29.i64[1] = 0x2020202020202020;
            v30 = v11;
            v31 = v7;
            do
            {
              v32 = *v31++;
              v33 = vandq_s8(vshrq_n_u8(vaddq_s8(v32, v26), 1uLL), v27);
              v34 = vmovl_u8(*v33.i8);
              v35 = vmovl_u16(*v34.i8);
              v36.i64[0] = v35.u32[0];
              v36.i64[1] = v35.u32[1];
              v37 = v36;
              v38 = vmovl_high_u16(v34);
              v39 = vmovl_high_u8(v33);
              v36.i64[0] = v38.u32[0];
              v36.i64[1] = v38.u32[1];
              v40 = v36;
              v41 = vmovl_u16(*v39.i8);
              v36.i64[0] = v41.u32[0];
              v36.i64[1] = v41.u32[1];
              v42 = v36;
              v43 = vmovl_high_u16(v39);
              v36.i64[0] = v43.u32[0];
              v36.i64[1] = v43.u32[1];
              v97.val[3] = vshlq_u64(v28, vsubw_high_u32(0, v43));
              v97.val[1] = vshlq_u64(v28, vsubw_high_u32(0, v41));
              v97.val[2] = vshlq_u64(v28, vnegq_s64(v36));
              v97.val[0] = vshlq_u64(v28, vnegq_s64(v42));
              v98.val[3] = vshlq_u64(v28, vsubw_high_u32(0, v38));
              v98.val[1] = vshlq_u64(v28, vsubw_high_u32(0, v35));
              v98.val[2] = vshlq_u64(v28, vnegq_s64(v40));
              v98.val[0] = vshlq_u64(v28, vnegq_s64(v37));
              v43.i64[0] = vqtbl4q_s8(v98, xmmword_18071DD40).u64[0];
              v43.i64[1] = vqtbl4q_s8(v97, xmmword_18071DD40).u64[0];
              *v25++ = vaddq_s8(vandq_s8(v43, v29), v32);
              v30 -= 16;
            }

            while (v30);
          }

          else
          {
            v11 = 0;
          }

          do
          {
            if (v9 == v11)
            {
              _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

            *(&v95 + v11) = ((0x3FFE000000000uLL >> ((v7->u8[v11] - 1) >> 1)) & 0x20) + v7->i8[v11];
            ++v11;
          }

          while (v8 != v11);
          v44 = 8;
          if (v8 <= 8)
          {
            v45 = 8;
          }

          else
          {
            v45 = v8;
          }

          v46 = 56 * v45;
          if (v8 < 8)
          {
            v44 = v8;
          }

          v47 = 0xFFFFFFFFFFFFFFFFLL >> (v46 & 0x38);
          if (v8 <= 8)
          {
            v47 = 0;
          }

          v17 = v95 & (0xFFFFFFFFFFFFFFFFLL >> ((56 * v44) & 0x38));
          v48 = *(&v95 + 1) & v47;
          v49 = 0xA000000000000000;
          if (((*(&v95 + 1) & v47 | v17) & 0x8080808080808080) == 0)
          {
            v49 = 0xE000000000000000;
          }

          v20 = v49 | (v8 << 56) | v48;
          v2;
          if ((v20 & 0x4000000000000000) == 0)
          {
            *&v95 = v17;
            *(&v95 + 1) = v48 & 0xFFFFFFFFFFFFFFLL;
            closure #2 in String.init(_uninitializedCapacity:initializingUTF8With:)(&v95, HIBYTE(v20) & 0xF, v94);
            v2;
            v20 = *(&v94[0] + 1);
            v17 = *&v94[0];
            goto LABEL_29;
          }

          goto LABEL_28;
        }

        goto LABEL_27;
      }
    }

    v2;
    v17 = specialized static String._fromLargeUTF8Repairing(uninitializedCapacity:initializingWith:)(v8, v7, v8, v3, v2, specialized static __StringStorage.create(uninitializedCodeUnitCapacity:initializingUncheckedUTF8With:));
    v20 = v89;
    goto LABEL_28;
  }

  v12 = HIBYTE(v1) & 0xF;
  *&v95 = v0;
  *(&v95 + 1) = v1 & 0xFFFFFFFFFFFFFFLL;
  v94[0] = xmmword_18071DD30;
  if (!v12)
  {
LABEL_27:
    v2;
    v17 = 0;
    v20 = 0xE000000000000000;
LABEL_28:
    v2;
    goto LABEL_29;
  }

  for (i = 0; i != v12; ++i)
  {
    *(v94 + i) = ((0x3FFE000000000uLL >> ((*(&v95 + i) - 1) >> 1)) & 0x20) + *(&v95 + i);
  }

  if (v12 <= 8)
  {
    LOBYTE(v14) = 8;
  }

  else
  {
    v14 = HIBYTE(v1) & 0xF;
  }

  v15 = 0xFFFFFFFFFFFFFFFFLL >> ((56 * v14) & 0x38);
  if (v12 <= 8)
  {
    v15 = 0;
  }

  v16 = 8 - v12;
  if (v12 > 8)
  {
    v16 = 0;
  }

  v17 = *&v94[0] & (0xFFFFFFFFFFFFFFFFLL >> (8 * (v16 & 7u)));
  v18 = *(&v94[0] + 1) & v15;
  v19 = 0xA000000000000000;
  if (((*(&v94[0] + 1) & v15 | v17) & 0x8080808080808080) == 0)
  {
    v19 = 0xE000000000000000;
  }

  v20 = v19 | (v12 << 56) | v18;
  v1;
  if ((v20 & 0x4000000000000000) != 0)
  {
    goto LABEL_28;
  }

  *&v94[0] = v17;
  *(&v94[0] + 1) = v18 & 0xFFFFFFFFFFFFFFLL;
  closure #2 in String.init(_uninitializedCapacity:initializingUTF8With:)(v94, HIBYTE(v20) & 0xF, v93);
  v2;
  v17 = v93[0];
  v20 = v93[1];
LABEL_29:
  v21 = v17;
  v22 = v20;
  result._object = v22;
  result._countAndFlagsBits = v21;
  return result;
}

uint64_t _StringGuts.isFastASCII.getter(unint64_t a1, unint64_t a2)
{
  v2 = (a2 >> 62) & 1;
  if ((a2 & 0x2000000000000000) == 0)
  {
    LODWORD(v2) = a1 >> 63;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t (*UnsafeMutableBufferPointer.subscript.modify(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  if (a2 < 0 || a4 <= a2)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return _swift_displayCrashMessage;
}

Swift::Int String.UTF8View.count.getter(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    return String.UTF8View._foreignCount()();
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    return HIBYTE(a2) & 0xF;
  }

  return a1 & 0xFFFFFFFFFFFFLL;
}

Swift::String __swiftcall String.uppercased()()
{
  v2 = v1;
  v3 = v0;
  v4 = 0;
  v96 = *MEMORY[0x1E69E9840];
  if ((v1 & 0x1000000000000000) != 0)
  {
    *&v95 = 0;
    *(&v95 + 1) = 0xE000000000000000;
    v50 = String.UTF8View._foreignCount()();
    v6 = v2 & 0x2000000000000000;
    v51 = HIBYTE(v2) & 0xF;
    v52 = v3 & 0xFFFFFFFFFFFFLL;
    goto LABEL_52;
  }

  v5 = v0 < 0;
  v6 = v1 & 0x2000000000000000;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v5 = (v1 & 0x4000000000000000) != 0;
  }

  if (!v5)
  {
    *&v95 = 0;
    *(&v95 + 1) = 0xE000000000000000;
    v51 = HIBYTE(v1) & 0xF;
    v52 = v0 & 0xFFFFFFFFFFFFLL;
    if (v6)
    {
      v50 = HIBYTE(v1) & 0xF;
    }

    else
    {
      v50 = v0 & 0xFFFFFFFFFFFFLL;
    }

LABEL_52:
    String.reserveCapacity(_:)(v50);
    if (v6)
    {
      v54 = v51;
    }

    else
    {
      v54 = v52;
    }

    if (!v54)
    {
LABEL_89:
      v20 = *(&v95 + 1);
      v17 = v95;
      goto LABEL_29;
    }

    v55 = 0;
    v91 = v54;
    while (1)
    {
      if ((v2 & 0x1000000000000000) != 0)
      {
        v60 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)((v55 << 16));
        scalarLength = v60.scalarLength;
        value = v60._0._value;
      }

      else
      {
        if (v6)
        {
          *&v94[0] = v3;
          *(&v94[0] + 1) = v2 & 0xFFFFFFFFFFFFFFLL;
          v57 = v94;
        }

        else
        {
          v57 = ((v2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          if ((v3 & 0x1000000000000000) == 0)
          {
            v57 = _StringObject.sharedUTF8.getter(v3, v2);
          }
        }

        value = _decodeScalar(_:startingAt:)(v57, v53, v55);
      }

      v61 = value;
      v62 = scalarLength;
      *&v94[0] = 0;
      SpecialMapping = _swift_stdlib_getSpecialMapping(value, 0, v94);
      if (SpecialMapping && *&v94[0])
      {
        if ((*&v94[0] & 0x8000000000000000) != 0)
        {
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v65 = specialized static String._uncheckedFromUTF8(_:isASCII:)(SpecialMapping, *&v94[0], 0, v64);
      }

      else
      {
        Mapping = _swift_stdlib_getMapping(v61, 0);
        if (Mapping)
        {
          v76 = Mapping + v61;
          if (v76 < 0 || HIDWORD(v76))
          {
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }
        }

        else
        {
          LODWORD(v76) = v61;
        }

        v65 = specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(v76);
      }

      v77 = v66;
      v78 = v95;
      v79 = HIBYTE(*(&v95 + 1)) & 0xFLL;
      if ((*(&v95 + 1) & 0x2000000000000000) == 0)
      {
        v79 = v95 & 0xFFFFFFFFFFFFLL;
      }

      if (!v79 && (v95 & ~*(&v95 + 1) & 0x2000000000000000) == 0)
      {
        v85 = v65;
        *(&v95 + 1);
        *&v95 = v85;
        *(&v95 + 1) = v77;
        goto LABEL_59;
      }

      if ((*(&v95 + 1) & 0x2000000000000000) != 0)
      {
        if ((v66 & 0x2000000000000000) != 0)
        {
          v92 = v4;
          v80 = v6;
          v81 = v65;
          v82 = specialized _SmallString.init(_:appending:)(v95, *(&v95 + 1), v65, v66);
          if ((v84 & 1) == 0)
          {
            v86 = v82;
            v87 = v83;
            *(&v78 + 1);
            v77;
            *&v95 = v86;
            *(&v95 + 1) = v87;
            v6 = v80;
            v4 = v92;
            v54 = v91;
            goto LABEL_59;
          }

          v56 = HIBYTE(v77) & 0xF;
          v65 = v81;
          v4 = v92;
          v54 = v91;
          goto LABEL_58;
        }
      }

      else if ((v66 & 0x2000000000000000) != 0)
      {
        v56 = HIBYTE(v66) & 0xF;
        goto LABEL_58;
      }

      v56 = v65 & 0xFFFFFFFFFFFFLL;
LABEL_58:
      _StringGuts.append(_:)(v65, v77, 0, v56, v67, v68, v69, v70, v71, v72, v73, v74);
      v77;
LABEL_59:
      v55 += v62;
      if (v55 >= v54)
      {
        goto LABEL_89;
      }
    }
  }

  if (!v6)
  {
    if ((v0 & 0x1000000000000000) != 0)
    {
      v7 = ((v1 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v0 & 0xFFFFFFFFFFFFLL;
      if ((v0 & 0xFFFFFFFFFFFFuLL) <= 0xF)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v7 = _StringObject.sharedUTF8.getter(v0, v1);
      v8 = v88;
      if (v88 <= 15)
      {
LABEL_8:
        v95 = xmmword_18071DD30;
        if (v8)
        {
          v9 = v8 & ~(v8 >> 63);
          v10 = v8 - 1;
          if (v9 < v8 - 1)
          {
            v10 = v8 & ~(v8 >> 63);
          }

          if (v10 >= 0x10)
          {
            v23 = v10 + 1;
            v24 = v23 & 0xF;
            if ((v23 & 0xF) == 0)
            {
              v24 = 16;
            }

            v11 = v23 - v24;
            v25 = &v95;
            v26.i64[0] = -1;
            v26.i64[1] = -1;
            v27.i64[0] = 0x3F3F3F3F3F3F3F3FLL;
            v27.i64[1] = 0x3F3F3F3F3F3F3F3FLL;
            v28 = vdupq_n_s64(0x1FFF000000000000uLL);
            v29.i64[0] = 0x2020202020202020;
            v29.i64[1] = 0x2020202020202020;
            v30 = v11;
            v31 = v7;
            do
            {
              v32 = *v31++;
              v33 = vandq_s8(vshrq_n_u8(vaddq_s8(v32, v26), 1uLL), v27);
              v34 = vmovl_u8(*v33.i8);
              v35 = vmovl_u16(*v34.i8);
              v36.i64[0] = v35.u32[0];
              v36.i64[1] = v35.u32[1];
              v37 = v36;
              v38 = vmovl_high_u16(v34);
              v39 = vmovl_high_u8(v33);
              v36.i64[0] = v38.u32[0];
              v36.i64[1] = v38.u32[1];
              v40 = v36;
              v41 = vmovl_u16(*v39.i8);
              v36.i64[0] = v41.u32[0];
              v36.i64[1] = v41.u32[1];
              v42 = v36;
              v43 = vmovl_high_u16(v39);
              v36.i64[0] = v43.u32[0];
              v36.i64[1] = v43.u32[1];
              v97.val[3] = vshlq_u64(v28, vsubw_high_u32(0, v43));
              v97.val[1] = vshlq_u64(v28, vsubw_high_u32(0, v41));
              v97.val[2] = vshlq_u64(v28, vnegq_s64(v36));
              v97.val[0] = vshlq_u64(v28, vnegq_s64(v42));
              v98.val[3] = vshlq_u64(v28, vsubw_high_u32(0, v38));
              v98.val[1] = vshlq_u64(v28, vsubw_high_u32(0, v35));
              v98.val[2] = vshlq_u64(v28, vnegq_s64(v40));
              v98.val[0] = vshlq_u64(v28, vnegq_s64(v37));
              v43.i64[0] = vqtbl4q_s8(v98, xmmword_18071DD40).u64[0];
              v43.i64[1] = vqtbl4q_s8(v97, xmmword_18071DD40).u64[0];
              *v25++ = vsubq_s8(v32, vandq_s8(vshlq_n_s8(v43, 5uLL), v29));
              v30 -= 16;
            }

            while (v30);
          }

          else
          {
            v11 = 0;
          }

          do
          {
            if (v9 == v11)
            {
              _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

            *(&v95 + v11) = v7->i8[v11] - 32 * ((0x1FFF000000000000uLL >> ((v7->u8[v11] - 1) >> 1)) & 1);
            ++v11;
          }

          while (v8 != v11);
          v44 = 8;
          if (v8 <= 8)
          {
            v45 = 8;
          }

          else
          {
            v45 = v8;
          }

          v46 = 56 * v45;
          if (v8 < 8)
          {
            v44 = v8;
          }

          v47 = 0xFFFFFFFFFFFFFFFFLL >> (v46 & 0x38);
          if (v8 <= 8)
          {
            v47 = 0;
          }

          v17 = v95 & (0xFFFFFFFFFFFFFFFFLL >> ((56 * v44) & 0x38));
          v48 = *(&v95 + 1) & v47;
          v49 = 0xA000000000000000;
          if (((*(&v95 + 1) & v47 | v17) & 0x8080808080808080) == 0)
          {
            v49 = 0xE000000000000000;
          }

          v20 = v49 | (v8 << 56) | v48;
          v2;
          if ((v20 & 0x4000000000000000) == 0)
          {
            *&v95 = v17;
            *(&v95 + 1) = v48 & 0xFFFFFFFFFFFFFFLL;
            closure #2 in String.init(_uninitializedCapacity:initializingUTF8With:)(&v95, HIBYTE(v20) & 0xF, v94);
            v2;
            v20 = *(&v94[0] + 1);
            v17 = *&v94[0];
            goto LABEL_29;
          }

          goto LABEL_28;
        }

        goto LABEL_27;
      }
    }

    v2;
    v17 = specialized static String._fromLargeUTF8Repairing(uninitializedCapacity:initializingWith:)(v8, v7, v8, v3, v2, specialized static __StringStorage.create(uninitializedCodeUnitCapacity:initializingUncheckedUTF8With:));
    v20 = v89;
    goto LABEL_28;
  }

  v12 = HIBYTE(v1) & 0xF;
  *&v95 = v0;
  *(&v95 + 1) = v1 & 0xFFFFFFFFFFFFFFLL;
  v94[0] = xmmword_18071DD30;
  if (!v12)
  {
LABEL_27:
    v2;
    v17 = 0;
    v20 = 0xE000000000000000;
LABEL_28:
    v2;
    goto LABEL_29;
  }

  for (i = 0; i != v12; ++i)
  {
    *(v94 + i) = *(&v95 + i) - 32 * ((0x1FFF000000000000uLL >> ((*(&v95 + i) - 1) >> 1)) & 1);
  }

  if (v12 <= 8)
  {
    LOBYTE(v14) = 8;
  }

  else
  {
    v14 = HIBYTE(v1) & 0xF;
  }

  v15 = 0xFFFFFFFFFFFFFFFFLL >> ((56 * v14) & 0x38);
  if (v12 <= 8)
  {
    v15 = 0;
  }

  v16 = 8 - v12;
  if (v12 > 8)
  {
    v16 = 0;
  }

  v17 = *&v94[0] & (0xFFFFFFFFFFFFFFFFLL >> (8 * (v16 & 7u)));
  v18 = *(&v94[0] + 1) & v15;
  v19 = 0xA000000000000000;
  if (((*(&v94[0] + 1) & v15 | v17) & 0x8080808080808080) == 0)
  {
    v19 = 0xE000000000000000;
  }

  v20 = v19 | (v12 << 56) | v18;
  v1;
  if ((v20 & 0x4000000000000000) != 0)
  {
    goto LABEL_28;
  }

  *&v94[0] = v17;
  *(&v94[0] + 1) = v18 & 0xFFFFFFFFFFFFFFLL;
  closure #2 in String.init(_uninitializedCapacity:initializingUTF8With:)(v94, HIBYTE(v20) & 0xF, v93);
  v2;
  v17 = v93[0];
  v20 = v93[1];
LABEL_29:
  v21 = v17;
  v22 = v20;
  result._object = v22;
  result._countAndFlagsBits = v21;
  return result;
}

uint64_t String.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(*(a3 + 8) + 8))(a2);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v5;
}

__objc2_class **String._nfcCodeUnits.getter(unint64_t a1, unint64_t a2)
{
  v4 = &_swiftEmptyArrayStorage;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  specialized _StringGutsSlice._withNFCCodeUnits(_:)(a1, a2, 0, v2, &v4);
  return v4;
}

unint64_t closure #1 in String._nfcCodeUnits.getter(char a1, uint64_t *a2)
{
  v4 = *a2;
  result = swift_isUniquelyReferenced_nonNull_native(*a2);
  *a2 = v4;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 16) + 1, 1, v4);
    v4 = result;
    *a2 = result;
  }

  v7 = *(v4 + 16);
  v6 = *(v4 + 24);
  if (v7 >= v6 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v4);
    v4 = result;
    *a2 = result;
  }

  *(v4 + 16) = v7 + 1;
  *(v4 + v7 + 32) = a1;
  return result;
}

Swift::String::Index String._withNFCCodeUnits(_:)(uint64_t (*a1)(void), uint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  return _StringGutsSlice._withNFCCodeUnits(_:)(a1, a2, a3, a4, 0, v4);
}

uint64_t _StringBreadcrumbs.init(_:)(uint64_t a1, unint64_t a2)
{
  *(v2 + 24) = &_swiftEmptyArrayStorage;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    a2;
    v10 = 0;
    goto LABEL_50;
  }

  v5 = a1;
  *(v2 + 24) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, (v4 * 0x155555555555556uLL) >> 64, 0, &_swiftEmptyArrayStorage, canonical specialized generic type metadata accessor for _ContiguousArrayStorage<String.Index>, specialized UnsafeMutablePointer.moveInitialize(from:count:), specialized _ArrayBuffer._copyContents(subRange:initializing:));
  v6 = (a2 & 0x1000000000000000) == 0 || (v5 & 0x800000000000000) != 0;
  v7 = 4 * v4;
  v26 = v6;
  v8 = 4 << v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v9 = (a2 & 0x4000000000000000) != 0;
  }

  else
  {
    v9 = v5 < 0;
  }

  a2;
  v10 = 0;
  rawBits = 15;
  v27 = v5;
  v28 = v4;
  do
  {
    if ((v10 & 0x3F) == 0)
    {
      v12 = *(v2 + 24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v12);
      *(v2 + 24) = v12;
      if (!isUniquelyReferenced_nonNull_native)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, &v12[2]->isa + 1, 1, v12, canonical specialized generic type metadata accessor for _ContiguousArrayStorage<String.Index>, specialized UnsafeMutablePointer.moveInitialize(from:count:), specialized _ArrayBuffer._copyContents(subRange:initializing:));
        *(v2 + 24) = v12;
      }

      v15 = v12[2];
      v14 = v12[3];
      if (v15 >= v14 >> 1)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v12, canonical specialized generic type metadata accessor for _ContiguousArrayStorage<String.Index>, specialized UnsafeMutablePointer.moveInitialize(from:count:), specialized _ArrayBuffer._copyContents(subRange:initializing:));
      }

      v12[2] = (v15 + 1);
      v12[v15 + 4] = rawBits;
      *(v2 + 24) = v12;
      v5 = v27;
      v4 = v28;
    }

    if ((rawBits & 0xC) == v8)
    {
      rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(rawBits)._rawBits;
    }

    v16 = rawBits >> 16;
    if (rawBits >> 16 >= v4)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      rawBits = specialized String.UTF16View._foreignIndex(after:)(rawBits);
      goto LABEL_13;
    }

    if (v9)
    {
      rawBits = (rawBits & 0xFFFFFFFFFFFF0000) + 65549;
      goto LABEL_13;
    }

    if ((rawBits & 0xC001) != 0)
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      rawBits = _StringGuts.scalarAlignSlow(_:)(rawBits)._rawBits;
      v16 = rawBits >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
LABEL_37:
        v29[0] = v5;
        v29[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v18 = *(v29 + v16);
        if ((v18 & 0x80) != 0)
        {
          goto LABEL_30;
        }

        goto LABEL_38;
      }
    }

    v17 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    if ((v5 & 0x1000000000000000) == 0)
    {
      v17 = _StringObject.sharedUTF8.getter(v5, a2);
    }

    v18 = v17[v16];
    if ((v18 & 0x80) != 0)
    {
LABEL_30:
      LODWORD(v19) = __clz(v18 ^ 0xFF) - 24;
      if (v19 == 4)
      {
        if ((rawBits & 0xC000) == 0)
        {
          rawBits = rawBits & 0xFFFFFFFFFFFF0000 | 0x4004;
          goto LABEL_13;
        }

        v19 = 4;
      }

      else
      {
        v19 = v19;
      }

      goto LABEL_39;
    }

LABEL_38:
    v19 = 1;
LABEL_39:
    rawBits = (rawBits + (v19 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
LABEL_13:
    ++v10;
  }

  while (v7 != rawBits >> 14);
  swift_bridgeObjectRelease_n(a2, 2);
  if (v26)
  {
    v20 = 7;
  }

  else
  {
    v20 = 11;
  }

  if ((v10 & 0x3F) == 0)
  {
    v21 = *(v2 + 24);
    v22 = swift_isUniquelyReferenced_nonNull_native(v21);
    *(v2 + 24) = v21;
    if (!v22)
    {
      v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, &v21[2]->isa + 1, 1, v21, canonical specialized generic type metadata accessor for _ContiguousArrayStorage<String.Index>, specialized UnsafeMutablePointer.moveInitialize(from:count:), specialized _ArrayBuffer._copyContents(subRange:initializing:));
      *(v2 + 24) = v21;
    }

    v24 = v21[2];
    v23 = v21[3];
    if (v24 >= v23 >> 1)
    {
      v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v21, canonical specialized generic type metadata accessor for _ContiguousArrayStorage<String.Index>, specialized UnsafeMutablePointer.moveInitialize(from:count:), specialized _ArrayBuffer._copyContents(subRange:initializing:));
    }

    v21[2] = (v24 + 1);
    v21[v24 + 4] = (v20 | (v4 << 16));
    *(v2 + 24) = v21;
  }

LABEL_50:
  *(v2 + 16) = v10;
  return v2;
}

Swift::String::Index __swiftcall String.UTF16View.index(after:)(Swift::String::Index after)
{
  v3 = (v1 >> 59) & 1;
  if ((v2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((after._rawBits & 0xC) == 4 << v3)
  {
    v9 = v1;
    v10 = v2;
    after._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(after)._rawBits;
    v1 = v9;
    v2 = v10;
  }

  v4 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v4 = v1 & 0xFFFFFFFFFFFFLL;
  }

  v5 = after._rawBits >> 16;
  if (after._rawBits >> 16 >= v4)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((v2 & 0x1000000000000000) == 0)
  {
    v6 = (v2 >> 62) & 1;
    if ((v2 & 0x2000000000000000) == 0)
    {
      LODWORD(v6) = v1 < 0;
    }

    if (v6 == 1)
    {
      return ((after._rawBits & 0xFFFFFFFFFFFF0000) + 65549);
    }

    if ((after._rawBits & 0xC001) != 0)
    {
      if ((v2 & 0x2000000000000000) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v11 = v1;
      v12 = v2;
      after._rawBits = _StringGuts.scalarAlignSlow(_:)(after)._rawBits;
      v1 = v11;
      v2 = v12;
      v5 = after._rawBits >> 16;
      if ((v12 & 0x2000000000000000) == 0)
      {
LABEL_15:
        if ((v1 & 0x1000000000000000) != 0)
        {
          LODWORD(v8) = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v5);
          if ((v8 & 0x80) != 0)
          {
LABEL_26:
            LODWORD(v8) = __clz(v8 ^ 0xFF) - 24;
            if (v8 == 4)
            {
              if ((after._rawBits & 0xC000) == 0)
              {
                v14 = 16388;
                return (after._rawBits & 0xFFFFFFFFFFFF0000 | v14);
              }

              v8 = 4;
            }

            else
            {
              v8 = v8;
            }

LABEL_30:
            after._rawBits += v8 << 16;
            v14 = 5;
            return (after._rawBits & 0xFFFFFFFFFFFF0000 | v14);
          }
        }

        else
        {
          rawBits = after._rawBits;
          v8 = _StringObject.sharedUTF8.getter(v1, v2);
          after._rawBits = rawBits;
          LODWORD(v8) = *(v8 + v5);
          if ((v8 & 0x80) != 0)
          {
            goto LABEL_26;
          }
        }

LABEL_24:
        v8 = 1;
        goto LABEL_30;
      }
    }

    v15[0] = v1;
    v15[1] = v2 & 0xFFFFFFFFFFFFFFLL;
    LODWORD(v8) = *(v15 + v5);
    if ((v8 & 0x80) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  return specialized String.UTF16View._foreignIndex(after:)(after._rawBits);
}

void _StringBreadcrumbs.__deallocating_deinit()
{
  *(v0 + 24);

  swift_deallocClassInstance(v0);
}

Swift::tuple_lowerBound_String_Index_offset_Int __swiftcall _StringBreadcrumbs.getBreadcrumb(forIndex:)(Swift::String::Index forIndex)
{
  v2 = forIndex._rawBits / 0xC00000;
  v3 = *(v1 + 24);
  v4 = *(v3 + 16);
  if (v4 >= (forIndex._rawBits >> 22) + 1)
  {
    v5 = (forIndex._rawBits >> 22) + 1;
  }

  else
  {
    v5 = *(v3 + 16);
  }

  v6 = v5 - v2;
  if ((v5 - v2) < 2)
  {
LABEL_11:
    sub_1802E86D0(v2, 1, v3);
    forIndex._rawBits = *(v3 + 8 * v2 + 32);
    v9 = v2 << 6;
  }

  else
  {
    while (1)
    {
      v7 = __OFADD__(v2, v6 >> 1);
      v8 = v2 + (v6 >> 1);
      if (v7)
      {
        break;
      }

      if (v8 >= v4)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if (forIndex._rawBits >> 14 < *(v3 + 32 + 8 * v8) >> 14)
      {
        v5 = v8;
      }

      else
      {
        v2 = v8;
      }

      v6 = v5 - v2;
      if ((v5 - v2) <= 1)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  result.offset = v9;
  result.lowerBound = forIndex;
  return result;
}

uint64_t _NSStringCopyBytes(_:encoding:into:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = 0;
  v6 = 0;
  if ([a1 getBytes:a3 maxLength:a4 - a3 usedLength:&v6 encoding:a2 options:0 range:0 remainingRange:{objc_msgSend(a1, sel_length), &v7}])
  {
    v4 = v8 == 0;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t specialized _withCocoaASCIIPointer<A>(_:requireStableAddress:work:)(unint64_t a1, void (*a2)(uint64_t *__return_ptr, void *))
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    v4 = specialized _SmallString.init(taggedCocoa:)(a1, 1);
    if ((v6 & 1) == 0)
    {
      if ((v5 & 0x2000000000000000) != 0)
      {
        v10[0] = v4;
        v10[1] = v5 & 0xFFFFFFFFFFFFFFLL;
        swift_unknownObjectRetain(a1);
        v7 = v10;
      }

      else
      {
        if ((v4 & 0x1000000000000000) != 0)
        {
          v8 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v8 = _StringObject.sharedUTF8.getter(v4, v5);
        }

        swift_unknownObjectRetain(a1);
        v7 = v8;
      }

      goto LABEL_11;
    }

    swift_unknownObjectRetain(a1);
  }

  v7 = [a1 _fastCStringContents_];
  if (v7)
  {
LABEL_11:
    a2(&v11, v7);
    return v11;
  }

  LOBYTE(v11) = 2;
  return v11;
}

unint64_t _bridgeCocoaString(_:)(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    v2 = _swift_classOfObjCHeapObject(a1);
    if (type metadata accessor for __StringStorage() == v2)
    {
      v8 = *(a1 + 24);
    }

    else
    {
      if (type metadata accessor for __SharedStringStorage() != v2)
      {
        v3 = [a1 copyWithZone_];
        if ((v3 & 0x8000000000000000) != 0)
        {
          v11 = specialized _SmallString.init(taggedCocoa:)(v3, 4);
          if (v12)
          {
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          return v11;
        }

        else
        {
          v4 = v3;
          v5 = [v3 _fastCStringContents_];
          v6 = [v4 length];
          v7 = 0x4000000000000000;
          if (v5)
          {
            v8 = v6 | 0xC000000000000000;
          }

          else
          {
            v7 = 0x5000000000000000;
            v8 = v6;
          }

          v7 | v4;
          swift_unknownObjectRelease(v4);
        }

        return v8;
      }

      v8 = *(a1 + 32);
    }

    a1;
    return v8;
  }

  v9 = specialized _SmallString.init(taggedCocoa:)(a1, 4);
  if (v10)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v8 = v9;
  swift_unknownObjectRetain(a1);
  return v8;
}

unint64_t String.init<A>(_immortalCocoaString:count:encoding:)(unint64_t a1, unint64_t a2, ValueMetadata *a3)
{
  v3 = a2;
  if (a3 == &type metadata for Unicode.ASCII)
  {
    v3 = a2 | 0xC000000000000000;
    goto LABEL_6;
  }

  if (a3 == &type metadata for Unicode.UTF8)
  {
LABEL_6:
    v5 = 0xC000000000000000;
    goto LABEL_7;
  }

  if (a3 != &type metadata for Unicode.UTF16)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = 0x5000000000000000;
LABEL_7:
  v5 | a1;
  swift_unknownObjectRelease(a1);
  return v3;
}

unint64_t String.init(_cocoaString:)(void *a1)
{
  v2 = _bridgeCocoaString(_:)(a1);
  swift_unknownObjectRelease(a1);
  return v2;
}

Swift::Void __swiftcall _StringGuts.grow(_:)(Swift::Int a1)
{
  v2 = v1;
  v4 = _StringGuts.uniqueNativeCapacity.getter();
  if (v5)
  {
    v6 = v1[1];
    if ((v6 & 0x1000000000000000) != 0)
    {
      v7 = String.UTF8View._foreignCount()();
    }

    else if ((v6 & 0x2000000000000000) != 0)
    {
      v7 = HIBYTE(v6) & 0xF;
    }

    else
    {
      v7 = *v1 & 0xFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v7 = 2 * v4;
  }

  if (v7 <= a1)
  {
    v8 = a1;
  }

  else
  {
    v8 = v7;
  }

  v9 = v2[1];
  if ((v9 & 0x1000000000000000) != 0)
  {

    _StringGuts._foreignGrow(_:)(v8);
  }

  else
  {
    v10 = *v2;
    if ((v9 & 0x2000000000000000) != 0)
    {
      v18[0] = *v2;
      v18[1] = v9 & 0xFFFFFFFFFFFFFFLL;
      v14 = HIBYTE(v9) & 0xF | 0xC000000000000000;
      if ((v9 & 0x4000000000000000) == 0)
      {
        v14 = HIBYTE(v9) & 0xF;
      }

      v15 = v14 | 0x3000000000000000;
      v13 = _allocateStringStorage(codeUnitCapacity:)(v8);
      *(v13 + 16) = v16;
      *(v13 + 24) = v15;
      if (v16 < 0)
      {
        *__StringStorage._breadcrumbsAddress.getter() = 0;
        v15 = *(v13 + 24);
      }

      *(v13 + 32 + (v15 & 0xFFFFFFFFFFFFLL)) = 0;
      specialized UnsafeMutablePointer.initialize(from:count:)(v18, HIBYTE(v9) & 0xF, (v13 + 32));
    }

    else
    {
      if ((v10 & 0x1000000000000000) != 0)
      {
        v11 = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v12 = v10 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = _StringObject.sharedUTF8.getter(*v2, v2[1]);
      }

      v13 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(v11, v12, v8, v10 < 0);
    }

    v17 = *(v13 + 24);
    v9;
    *v2 = v17;
    v2[1] = v13;
  }
}

BOOL _StringGuts.isASCII.getter(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    return (a2 >> 62) & 1;
  }

  else
  {
    return a1 < 0;
  }
}

void *_SwiftCreateBridgedString_DoNotCall(bytes:length:encoding:)(unsigned __int8 *a1, uint64_t a2, int a3)
{
  if (a2 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a3 == 1536)
  {
    v9 = _sSS14_fromCodeUnits_8encoding6repairSS_Sb11repairsMadetSgx_q_mSbtSlRzs16_UnicodeEncodingR_0B4UnitQy_7ElementRtzr0_lFZSRys5UInt8VG_s0H0O5ASCIIOTt0t2g5();
    if (!v10)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  else
  {
    if (a3 != 134217984)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000001CLL, 0x800000018066DFC0, "Swift/StringBridge.swift", 0x18uLL, 2, 0x28EuLL);
    }

    v5 = validateUTF8(_:)(a1, a2);
    if (v5 < 0)
    {
      v9 = repairUTF8(_:firstKnownBrokenRange:)(a1, a2, v6, v7);
    }

    else
    {
      v9 = specialized static String._uncheckedFromUTF8(_:isASCII:)(a1, a2, v5 & 1, v8);
    }
  }

  v12 = v10;
  v13 = String._bridgeToObjectiveCImpl()(v9, v10, v11);
  v12;
  return v13;
}

uint64_t _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)(unsigned __int8 *a1, uint64_t a2)
{
  v3 = validateUTF8(_:)(a1, a2);
  v4 = a2 | 0xC000000000000000;
  if ((v3 & 1) == 0)
  {
    v4 = a2;
  }

  v5 = v4 | 0x1000000000000000;
  if (v3 >= 0)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t validateUTF8(_:)(unsigned __int8 *a1, uint64_t a2)
{
  v4 = _allASCII(_:)(a1, a2);
  result = 1;
  if (v4 || !a1)
  {
    return result;
  }

  if (!a2)
  {
    return 1;
  }

  v6 = 0;
  v7 = &a1[a2];
  v8 = 1;
  v9 = a1;
  v10 = a1;
  while (1)
  {
    v12 = *v10++;
    v11 = v12;
    if ((v12 & 0x80000000) == 0)
    {
      v13 = 1;
      goto LABEL_7;
    }

    if ((v11 + 11) <= 0xCCu)
    {
      v16 = _diagnoseInvalidUTF8MultiByteLeading(_:)(v11);
      v22 = v16;
      swift_willThrowTypedImpl(&v22, &type metadata for _UTF8EncodingErrorKind, &protocol witness table for _UTF8EncodingErrorKind);
      v17 = v16 | 0x8000000000000000;
      goto LABEL_47;
    }

    if (v11 > 0xDFu)
    {
      break;
    }

    if (v10 == v7 || (*v10 & 0xC0) != 0x80)
    {
LABEL_50:
      v17 = 0x8000000000000004;
      v22 = 4;
      swift_willThrowTypedImpl(&v22, &type metadata for _UTF8EncodingErrorKind, &protocol witness table for _UTF8EncodingErrorKind);
      goto LABEL_47;
    }

    v8 = 0;
    v10 = v9 + 2;
    v13 = 2;
LABEL_7:
    v6 += v13;
    v9 = v10;
    if (v10 == v7)
    {
      return v8 & 1;
    }
  }

  if (v11 == 224)
  {
    if (v10 == v7)
    {
      goto LABEL_50;
    }

    if (v9[1] - 192 < 0xFFFFFFE0)
    {
      goto LABEL_51;
    }

    goto LABEL_31;
  }

  if (v11 <= 0xECu)
  {
    goto LABEL_29;
  }

  if (v11 == 237)
  {
    if (v10 == v7)
    {
      goto LABEL_50;
    }

    v14 = v9[1];
    if (v14 > 0x9F || (v14 & 0xC0) != 0x80)
    {
      v22 = 1;
      swift_willThrowTypedImpl(&v22, &type metadata for _UTF8EncodingErrorKind, &protocol witness table for _UTF8EncodingErrorKind);
      v17 = 0x8000000000000001;
      goto LABEL_47;
    }

    goto LABEL_31;
  }

  if (v11 <= 0xEFu)
  {
LABEL_29:
    if (v10 == v7 || (v9[1] & 0xC0) != 0x80)
    {
      goto LABEL_50;
    }

LABEL_31:
    if (v9 + 2 == v7 || (v9[2] & 0xC0) != 0x80)
    {
      goto LABEL_50;
    }

    v8 = 0;
    v10 = v9 + 3;
    v13 = 3;
    goto LABEL_7;
  }

  if (v11 == 240)
  {
    if (v10 == v7)
    {
      goto LABEL_50;
    }

    if (v9[1] - 192 < 0xFFFFFFD0)
    {
LABEL_51:
      v22 = 3;
      swift_willThrowTypedImpl(&v22, &type metadata for _UTF8EncodingErrorKind, &protocol witness table for _UTF8EncodingErrorKind);
      v17 = 0x8000000000000003;
      goto LABEL_47;
    }

    goto LABEL_41;
  }

  if (v11 <= 0xF3u)
  {
    if (v10 == v7 || (v9[1] & 0xC0) != 0x80)
    {
      goto LABEL_50;
    }

    goto LABEL_41;
  }

  if (v10 == v7)
  {
    goto LABEL_50;
  }

  v15 = v9[1];
  if (v15 <= 0x8F && (v15 & 0xC0) == 0x80)
  {
LABEL_41:
    if (v9 + 2 == v7 || (v9[2] & 0xC0) != 0x80 || v9 + 3 == v7 || (v9[3] & 0xC0) != 0x80)
    {
      goto LABEL_50;
    }

    v8 = 0;
    v10 = v9 + 4;
    v13 = 4;
    goto LABEL_7;
  }

  v22 = 2;
  swift_willThrowTypedImpl(&v22, &type metadata for _UTF8EncodingErrorKind, &protocol witness table for _UTF8EncodingErrorKind);
  v17 = 0x8000000000000002;
LABEL_47:
  v18 = specialized Collection.subscript.getter(v6, a1, a2);
  findInvalidRange #1 (_:) in validateUTF8(_:)(v18, v19, v20, v21);
  return v17;
}

void *swift_stdlib_getDescription(uint64_t a1, Class *a2)
{
  v3 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5);
  v10 = 0;
  v11 = 0xE000000000000000;
  _debugPrint_unlocked<A, B>(_:_:)(v5, &v10, a2, &type metadata for String, &protocol witness table for String);
  (*(v3 + 8))(v5, a2);
  v6 = v11;
  v8 = String._bridgeToObjectiveCImpl()(v10, v11, v7);
  v6;
  return v8;
}

void *swift_stdlib_NSStringFromUTF8(unsigned __int8 *a1, uint64_t a2)
{
  if (a2 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = validateUTF8(_:)(a1, a2);
  if (v4 < 0)
  {
    v8 = repairUTF8(_:firstKnownBrokenRange:)(a1, a2, v5, v6);
  }

  else
  {
    v8 = specialized static String._uncheckedFromUTF8(_:isASCII:)(a1, a2, v4 & 1, v7);
  }

  v11 = v9;
  v12 = String._bridgeToObjectiveCImpl()(v8, v9, v10);
  v11;
  return v12;
}

Swift::Int __swiftcall StringProtocol._toUTF16Offset(_:)(Swift::String::Index a1)
{
  v4 = v2;
  v5 = v1;
  swift_getAssociatedTypeWitness(0, v2, v1, &protocol requirements base descriptor for StringProtocol, associated type descriptor for StringProtocol.UTF16View);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &rawBits - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &rawBits - v13;
  if (v5 == &type metadata for String)
  {
    v20._rawBits = 15;
  }

  else
  {
    if (v5 != &type metadata for Substring)
    {
      rawBits = a1._rawBits;
      v15 = v4[16];
      (v15)(v5, v4);
      (v15)(v5, v4);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v4, v5, v8, &protocol requirements base descriptor for StringProtocol, associated conformance descriptor for StringProtocol.StringProtocol.UTF16View: BidirectionalCollection);
      (*(*(AssociatedConformanceWitness + 8) + 64))(&v24, v8);
      v17 = *(v9 + 8);
      v17(v12, v8);
      v22 = rawBits;
      v23 = v24;
      v18 = (*(AssociatedConformanceWitness + 64))(&v23, &v22, v8, AssociatedConformanceWitness);
      v17(v14, v8);
      return v18;
    }

    v20._rawBits = *v3;
  }

  return String.UTF16View.distance(from:to:)(v20, a1);
}

Swift::String::Index __swiftcall StringProtocol._toUTF16Index(_:)(Swift::Int a1)
{
  v4 = v2;
  v5 = v1;
  swift_getAssociatedTypeWitness(0, v2, v1, &protocol requirements base descriptor for StringProtocol, associated type descriptor for StringProtocol.UTF16View);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  if (v5 == &type metadata for String)
  {
    v19._rawBits = 15;
  }

  else
  {
    if (v5 != &type metadata for Substring)
    {
      v20 = a1;
      v15 = v4[16];
      (v15)(v5, v4);
      (v15)(v5, v4);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v4, v5, v8, &protocol requirements base descriptor for StringProtocol, associated conformance descriptor for StringProtocol.StringProtocol.UTF16View: BidirectionalCollection);
      (*(*(AssociatedConformanceWitness + 8) + 64))(&v22, v8);
      v17 = *(v9 + 8);
      v17(v12, v8);
      v21 = v22;
      (*(AssociatedConformanceWitness + 48))(&v23, &v21, v20, v8, AssociatedConformanceWitness);
      v17(v14, v8);
      return v23;
    }

    v19._rawBits = *v3;
  }

  return String.UTF16View.index(_:offsetBy:)(v19, a1);
}

Swift::Int StringProtocol._toUTF16Offsets(_:)(Swift::String::Index a1, Swift::UInt64 a2, ValueMetadata *a3)
{
  if (a3 == &type metadata for String)
  {
    rawBits = a1._rawBits;
    v7 = 15;
    v8 = 1;
    v9 = v3;
LABEL_7:
    v10 = *v9;
    v11 = v3[v8];
    v11;
    v12._rawBits = rawBits;
    v13._rawBits = a2;
    v14._rawBits = v7;
    v5 = String.UTF16View._offsetRange(for:from:)(v12, v13, v14, v10, v11);
    v11;
    return v5;
  }

  if (a3 == &type metadata for Substring)
  {
    rawBits = a1._rawBits;
    v9 = (v3 + 2);
    v7 = *v3;
    v8 = 3;
    goto LABEL_7;
  }

  v5 = StringProtocol._toUTF16Offset(_:)(a1);
  if (StringProtocol._toUTF16Offset(_:)(a2) < v5)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return v5;
}

unint64_t String.UTF16View._offsetRange(for:from:)(Swift::String::Index a1, Swift::String::Index a2, Swift::String::Index from, uint64_t a4, unint64_t a5)
{
  rawBits = a1._rawBits;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  if ((a1._rawBits & 0xC) == 4 << v9)
  {
    v25 = from._rawBits;
    v26._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(a1)._rawBits;
    from._rawBits = v25;
    rawBits = v26._rawBits;
  }

  if ((a2._rawBits & 0xC) == v10)
  {
    v27 = a2._rawBits;
    v28 = from._rawBits;
    v29._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v27)._rawBits;
    from._rawBits = v28;
    a2._rawBits = v29._rawBits;
  }

  if ((a5 & 0x2000000000000000) != 0)
  {
    v11 = HIBYTE(a5) & 0xF;
  }

  else
  {
    v11 = a4 & 0xFFFFFFFFFFFFLL;
  }

  v12 = rawBits >> 16;
  if (v11 < rawBits >> 16 && (v30 = from._rawBits, isExecutableLinkedOnOrAfter = _swift_stdlib_isExecutableLinkedOnOrAfter(0x50700u), from._rawBits = v30, isExecutableLinkedOnOrAfter) || v11 < a2._rawBits >> 16 && (v32 = from._rawBits, v33 = _swift_stdlib_isExecutableLinkedOnOrAfter(0x50700u), from._rawBits = v32, v33))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    v34 = specialized String.UTF16View._foreignDistance(from:to:)(from._rawBits, rawBits);
    result = specialized String.UTF16View._foreignDistance(from:to:)(rawBits, a2._rawBits);
    v35 = v34 + result;
    if (__OFADD__(v34, result))
    {
      __break(1u);
    }

    else
    {
      result = v34;
      if (v35 < v34)
      {
        goto LABEL_42;
      }
    }

    return result;
  }

  v13 = (a2._rawBits >> 16) - v12;
  v14 = (a5 >> 62) & 1;
  if ((a5 & 0x2000000000000000) == 0)
  {
    LODWORD(v14) = a4 < 0;
  }

  if (v14 == 1)
  {
    if ((v13 & 0x8000000000000000) == 0)
    {
      return v12 - (from._rawBits >> 16);
    }

LABEL_42:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v13 < 0)
  {
    v13 = v12 - (a2._rawBits >> 16);
  }

  if (v13 <= 0x20)
  {
LABEL_25:
    if ((rawBits & 0xC001) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_45;
  }

  v16 = from._rawBits;
  v17 = String.UTF16View._nativeGetOffset(for:)(from);
  v18._rawBits = v16;
  v19 = v17;
  if ((v12 - (v18._rawBits >> 16)) <= 32)
  {
    rawBits = String.UTF16View._utf16Distance(from:to:)(v18, rawBits);
    goto LABEL_32;
  }

  v20 = String.UTF16View._nativeGetOffset(for:)(rawBits);
  rawBits = v20 - v19;
  if (__OFSUB__(v20, v19))
  {
    __break(1u);
    goto LABEL_25;
  }

LABEL_32:
  v24 = String.UTF16View._nativeGetOffset(for:)(a2);
  if (__OFSUB__(v24, v19))
  {
    while (1)
    {
      __break(1u);
LABEL_45:
      v36 = from._rawBits;
      v37._rawBits = _StringGuts.scalarAlignSlow(_:)(rawBits)._rawBits;
      from._rawBits = v36;
      rawBits = rawBits & 0xC | v37._rawBits & 0xFFFFFFFFFFFFFFF3 | 1;
LABEL_26:
      if ((a2._rawBits & 0xC001) == 0)
      {
        v38 = from._rawBits;
        v39._rawBits = _StringGuts.scalarAlignSlow(_:)(a2)._rawBits;
        from._rawBits = v38;
        a2._rawBits = a2._rawBits & 0xC | v39._rawBits & 0xFFFFFFFFFFFFFFF3 | 1;
      }

      v21 = String.UTF16View.distance(from:to:)(from, rawBits);
      v22 = String.UTF16View._utf16Distance(from:to:)(rawBits, a2);
      v23 = v21 + v22;
      if (!__OFADD__(v21, v22))
      {
        break;
      }

      __break(1u);
    }

    result = v21;
    if (v23 < v21)
    {
      goto LABEL_42;
    }
  }

  else
  {
    if (v24 - v19 < rawBits)
    {
      goto LABEL_42;
    }

    return rawBits;
  }

  return result;
}

Swift::UInt64 StringProtocol._toUTF16Indices(_:)(Swift::Int a1, uint64_t a2, ValueMetadata *a3)
{
  if (a3 == &type metadata for String)
  {
    v6 = a1;
    v7 = 15;
    v8 = 1;
    v9 = v3;
LABEL_7:
    v10 = *v9;
    v11 = v3[v8];
    v11;
    v12._rawBits = v7;
    v5._rawBits = String.UTF16View._indexRange(for:from:)(v6, a2, v12, v10, v11);
    v11;
    return v5._rawBits;
  }

  if (a3 == &type metadata for Substring)
  {
    v6 = a1;
    v9 = (v3 + 2);
    v7 = *v3;
    v8 = 3;
    goto LABEL_7;
  }

  v5._rawBits = StringProtocol._toUTF16Index(_:)(a1)._rawBits;
  if (StringProtocol._toUTF16Index(_:)(a2)._rawBits >> 14 < v5._rawBits >> 14)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return v5._rawBits;
}

Swift::Int String.UTF16View._indexRange(for:from:)(Swift::Int offsetBy, uint64_t a2, Swift::String::Index a3, uint64_t a4, unint64_t a5)
{
  v9 = offsetBy;
  if ((a5 & 0x1000000000000000) == 0)
  {
    v10 = (a5 >> 62) & 1;
    if ((a5 & 0x2000000000000000) == 0)
    {
      LODWORD(v10) = a4 < 0;
    }

    if (v10 == 1)
    {
      offsetBy = String.UTF16View.index(_:offsetBy:)(a3, offsetBy)._rawBits;
      if (!__OFSUB__(a2, v9))
      {
        rawBits = offsetBy;
        v12._rawBits = String.UTF16View.index(_:offsetBy:)(offsetBy, a2 - v9)._rawBits;
        goto LABEL_18;
      }

      __break(1u);
      goto LABEL_24;
    }

    if (__OFSUB__(a2, offsetBy))
    {
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    if (a2 - offsetBy <= 31)
    {
      rawBits = String.UTF16View.index(_:offsetBy:)(a3, offsetBy)._rawBits;
      if (specialized BidirectionalCollection._index(_:offsetBy:)(rawBits, a2 - v9, a4, a5) >> 14 >= rawBits >> 14)
      {
        return rawBits;
      }

      goto LABEL_22;
    }

    offsetBy = String.UTF16View._nativeGetOffset(for:)(a3);
    if (__OFSUB__(v9, offsetBy))
    {
      goto LABEL_25;
    }

    v13 = offsetBy;
    if (v9 - offsetBy <= 32)
    {
      v14._rawBits = specialized BidirectionalCollection._index(_:offsetBy:)(a3._rawBits, v9, a4, a5);
    }

    else
    {
      offsetBy += v9;
      if (__OFADD__(v13, v9))
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v14._rawBits = String.UTF16View._nativeGetIndex(for:)(offsetBy)._rawBits;
    }

    rawBits = v14._rawBits;
    offsetBy = v13 + a2;
    if (__OFADD__(v13, a2))
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v12._rawBits = String.UTF16View._nativeGetIndex(for:)(offsetBy)._rawBits;
LABEL_18:
    if (v12._rawBits >> 14 >= rawBits >> 14)
    {
      return rawBits;
    }

LABEL_22:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  offsetBy = String.UTF16View.index(_:offsetBy:)(a3, offsetBy)._rawBits;
  if (!__OFSUB__(a2, v9))
  {
    rawBits = offsetBy;
    v12._rawBits = String.UTF16View._foreignIndex(_:offsetBy:)(offsetBy, a2 - v9)._rawBits;
    goto LABEL_18;
  }

LABEL_28:
  __break(1u);
  return offsetBy;
}

unint64_t String._copyUTF16CodeUnits(into:range:)(unint64_t a1, uint64_t a2, Swift::Int offsetBy, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v11._rawBits = 15;
  v13 = String.UTF16View._indexRange(for:from:)(offsetBy, a4, v11, a5, a6);

  return String.UTF16View._nativeCopy(into:alignedRange:)(a1, a2, v13, v12, a5, a6);
}

unint64_t String.UTF16View._nativeCopy(into:alignedRange:)(unint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a4 ^ a3) < 0x4000)
  {
    return result;
  }

  v7 = result;
  if ((a6 & 0x2000000000000000) != 0)
  {
    v80[0] = a5;
    v80[1] = a6 & 0xFFFFFFFFFFFFFFLL;
    v18 = a3 >> 16;
    v19 = a4 >> 16;
    if ((a6 & 0x4000000000000000) == 0)
    {
      if ((a3 & 0xC000) == 0)
      {
        if (v19 > v18)
        {
          v20 = 0;
          goto LABEL_32;
        }

        if ((a4 & 0xC000) != 0x4000)
        {
          return result;
        }

        v20 = 0;
LABEL_109:
        v79 = a2;
        result = _decodeScalar(_:startingAt:)(v80, a2, v18);
        if (result < 0x10000 || (result = ((result + 67043328) >> 10) + 55296, (result & 0x10000) == 0))
        {
          if (v20 < v79)
          {
            v7->i16[v20] = result;
            return result;
          }

LABEL_113:
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

LABEL_115:
        __break(1u);
        return result;
      }

      v73 = a4;
      v74 = v18;
      v75 = a2;
      v76 = _decodeScalar(_:startingAt:)(v80, a2, v18);
      v78 = v77;
      result = Unicode.Scalar.UTF16View.subscript.getter(1, v76);
      if (v75 <= 0)
      {
        goto LABEL_113;
      }

      a2 = v75;
      v7->i16[0] = result;
      v18 = v78 + v74;
      if ((v78 + v74) >= v19)
      {
        if ((v73 & 0xC000) != 0x4000)
        {
          return result;
        }

        v20 = 1;
        goto LABEL_109;
      }

      v20 = 1;
      LOWORD(a4) = v73;
      while (1)
      {
LABEL_32:
        v21 = v80 + v18;
        v22 = *(v80 + v18);
        if ((*(v80 + v18) & 0x80000000) == 0)
        {
          goto LABEL_33;
        }

        v26 = (__clz(v22 ^ 0xFF) - 24);
        if (v26 > 2)
        {
          if (v26 == 3)
          {
            v22 = ((v22 & 0xF) << 12) | ((v21[1] & 0x3F) << 6) | v21[2] & 0x3F;
            v23 = 3;
          }

          else
          {
            v22 = ((v22 & 0xF) << 18) | ((v21[1] & 0x3F) << 12) | ((v21[2] & 0x3F) << 6) | v21[3] & 0x3F;
            v23 = 4;
          }

          goto LABEL_34;
        }

        if (v26 == 1)
        {
LABEL_33:
          v23 = 1;
        }

        else
        {
          v22 = v21[1] & 0x3F | ((v22 & 0x1F) << 6);
          v23 = 2;
        }

LABEL_34:
        if (v20 >= a2)
        {
          goto LABEL_113;
        }

        if (HIWORD(v22))
        {
          v24 = ((v22 + 67043328) >> 10) - 10240;
        }

        else
        {
          v24 = v22;
        }

        v7->i16[v20] = v24;
        v25 = v20 + 1;
        if (v22 < 0x10000)
        {
          ++v20;
        }

        else
        {
          if (v25 >= a2)
          {
            goto LABEL_113;
          }

          v7->i16[v25] = v22 & 0x3FF | 0xDC00;
          v20 += 2;
        }

        v18 += v23;
        if (v18 >= v19)
        {
          if ((a4 & 0xC000) != 0x4000)
          {
            return result;
          }

          goto LABEL_109;
        }
      }
    }

    v27 = v19 - v18;
    if (v19 <= v18)
    {
      return result;
    }

    if (v27 < 8 || v80 + v19 > result && v80 + v18 < result + 2 * v27)
    {
      v28 = 0;
      v29 = a3 >> 16;
      goto LABEL_52;
    }

    if (v27 >= 0x20)
    {
      v28 = v27 & 0xFFFFFFFFFFFFFFE0;
      v43 = (&v80[2] + v18);
      v44 = (result + 32);
      v45 = v27 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v46 = *v43[-2].i8;
        v47 = vmovl_u8(*v43);
        v48 = vmovl_high_u8(*v43->i8);
        v44[-2] = vmovl_u8(*v46.i8);
        v44[-1] = vmovl_high_u8(v46);
        *v44 = v47;
        v44[1] = v48;
        v44 += 4;
        v43 += 4;
        v45 -= 32;
      }

      while (v45);
      if (v27 == v28)
      {
        return result;
      }

      if ((v27 & 0x18) == 0)
      {
        v29 = v18 + v28;
        goto LABEL_52;
      }
    }

    else
    {
      v28 = 0;
    }

    v49 = v28;
    v28 = v27 & 0xFFFFFFFFFFFFFFF8;
    v29 = v18 + (v27 & 0xFFFFFFFFFFFFFFF8);
    v50 = (v80 + v49 + v18);
    v51 = (result + 2 * v49);
    v52 = v49 - (v27 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v53 = *v50++;
      *v51++ = vmovl_u8(v53);
      v52 += 8;
    }

    while (v52);
    if (v27 == v28)
    {
      return result;
    }

LABEL_52:
    v30 = v80 + v29;
    v31 = (result + 2 * v28);
    v32 = v28 + v18 - v19;
    do
    {
      v33 = *v30++;
      *v31++ = v33;
      v34 = __CFADD__(v32++, 1);
    }

    while (!v34);
    return result;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    v8 = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v65 = a2;
    v66 = a4;
    v67 = a5;
    result = _StringObject.sharedUTF8.getter(a5, a6);
    a5 = v67;
    a4 = v66;
    a2 = v65;
    v8 = result;
  }

  v9 = a3 >> 16;
  v10 = a4 >> 16;
  if (a5 < 0)
  {
    v35 = v10 - v9;
    if (v10 <= v9)
    {
      return result;
    }

    if (v35 < 8 || v8 + v10 > v7 && v8 + v9 < v7 + 2 * v35)
    {
      v36 = 0;
      v37 = a3 >> 16;
      goto LABEL_61;
    }

    if (v35 >= 0x20)
    {
      v36 = v35 & 0xFFFFFFFFFFFFFFE0;
      v54 = (v9 + v8 + 16);
      v55 = v7 + 2;
      v56 = v35 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v57 = *v54[-2].i8;
        v58 = vmovl_u8(*v54);
        v59 = vmovl_high_u8(*v54->i8);
        v55[-2] = vmovl_u8(*v57.i8);
        v55[-1] = vmovl_high_u8(v57);
        *v55 = v58;
        v55[1] = v59;
        v55 += 4;
        v54 += 4;
        v56 -= 32;
      }

      while (v56);
      if (v35 == v36)
      {
        return result;
      }

      if ((v35 & 0x18) == 0)
      {
        v37 = v9 + v36;
        goto LABEL_61;
      }
    }

    else
    {
      v36 = 0;
    }

    v60 = v36;
    v36 = v35 & 0xFFFFFFFFFFFFFFF8;
    v37 = v9 + (v35 & 0xFFFFFFFFFFFFFFF8);
    v61 = (v8 + v60 + v9);
    v62 = (v7 + 2 * v60);
    v63 = v60 - (v35 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v64 = *v61++;
      *v62++ = vmovl_u8(v64);
      v63 += 8;
    }

    while (v63);
    if (v35 == v36)
    {
      return result;
    }

LABEL_61:
    v38 = (v8 + v37);
    v39 = &v7->i16[v36];
    v40 = v36 + v9 - v10;
    do
    {
      v41 = *v38++;
      *v39++ = v41;
      v34 = __CFADD__(v40++, 1);
    }

    while (!v34);
    return result;
  }

  if ((a3 & 0xC000) == 0)
  {
    if (v10 > v9)
    {
      v11 = 0;
      goto LABEL_11;
    }

    if ((a4 & 0xC000) != 0x4000)
    {
      return result;
    }

    v11 = 0;
LABEL_68:
    v42 = a2;
    result = _decodeScalar(_:startingAt:)(v8, a2, v9);
    if (result < 0x10000 || (result = ((result + 67043328) >> 10) + 55296, (result & 0x10000) == 0))
    {
      if (v11 < v42)
      {
        v7->i16[v11] = result;
        return result;
      }

      goto LABEL_113;
    }

    __break(1u);
    goto LABEL_115;
  }

  v68 = a4;
  v69 = a2;
  v70 = _decodeScalar(_:startingAt:)(v8, a2, a3 >> 16);
  v72 = v71;
  result = Unicode.Scalar.UTF16View.subscript.getter(1, v70);
  if (v69 <= 0)
  {
    goto LABEL_113;
  }

  a2 = v69;
  v7->i16[0] = result;
  v9 += v72;
  if (v9 >= v10)
  {
    if ((v68 & 0xC000) == 0x4000)
    {
      v11 = 1;
      goto LABEL_68;
    }

    return result;
  }

  v11 = 1;
  LOWORD(a4) = v68;
  do
  {
LABEL_11:
    v12 = (v8 + v9);
    v13 = *(v8 + v9);
    if ((*(v8 + v9) & 0x80000000) == 0)
    {
LABEL_12:
      v14 = 1;
      goto LABEL_13;
    }

    v17 = (__clz(v13 ^ 0xFF) - 24);
    if (v17 > 2)
    {
      if (v17 == 3)
      {
        v13 = ((v13 & 0xF) << 12) | ((v12[1] & 0x3F) << 6) | v12[2] & 0x3F;
        v14 = 3;
      }

      else
      {
        v13 = ((v13 & 0xF) << 18) | ((v12[1] & 0x3F) << 12) | ((v12[2] & 0x3F) << 6) | v12[3] & 0x3F;
        v14 = 4;
      }
    }

    else
    {
      if (v17 == 1)
      {
        goto LABEL_12;
      }

      v13 = v12[1] & 0x3F | ((v13 & 0x1F) << 6);
      v14 = 2;
    }

LABEL_13:
    if (v11 >= a2)
    {
      goto LABEL_113;
    }

    if (HIWORD(v13))
    {
      v15 = ((v13 + 67043328) >> 10) - 10240;
    }

    else
    {
      v15 = v13;
    }

    v7->i16[v11] = v15;
    v16 = v11 + 1;
    if (v13 < 0x10000)
    {
      ++v11;
    }

    else
    {
      if (v16 >= a2)
      {
        goto LABEL_113;
      }

      v7->i16[v16] = v13 & 0x3FF | 0xDC00;
      v11 += 2;
    }

    v9 += v14;
  }

  while (v9 < v10);
  if ((a4 & 0xC000) == 0x4000)
  {
    goto LABEL_68;
  }

  return result;
}

Swift::Int String.count.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1;
  }

  v3 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v3 = 11;
  }

  return String.distance(from:to:)(15, (v3 | (v2 << 16)));
}

Swift::Int __swiftcall String.distance(from:to:)(Swift::String::Index from, Swift::String::Index to)
{
  v4 = v3;
  v5 = v2;
  v7._rawBits = _StringGuts.validateInclusiveCharacterIndex_5_7(_:)(from)._rawBits;
  v8._rawBits = _StringGuts.validateInclusiveCharacterIndex_5_7(_:)(to)._rawBits;
  v9 = v7._rawBits >> 16;
  if (v7._rawBits >> 14 < v8._rawBits >> 14)
  {
    v10 = v8._rawBits >> 16;
    if (v9 < v8._rawBits >> 16)
    {
      v11 = 1;
      if ((v4 & 0x1000000000000000) == 0)
      {
        goto LABEL_6;
      }

LABEL_19:
      v14 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v9) + v9;
      while (v14 < v10)
      {
        ++v11;
        v9 = v14;
        if ((v4 & 0x1000000000000000) != 0)
        {
          goto LABEL_19;
        }

LABEL_6:
        if ((v4 & 0x2000000000000000) != 0)
        {
          v25 = v5;
          v26 = v4 & 0xFFFFFFFFFFFFFFLL;
          v14 = v9 + 1;
          if (v9 + 1 != (HIBYTE(v4) & 0xF))
          {
            v16 = *(&v25 + v9);
            if (v16 == 2573 || (v16 & 0x80808080) != 0)
            {
              goto LABEL_19;
            }
          }
        }

        else
        {
          v12 = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v13 = v5 & 0xFFFFFFFFFFFFLL;
          if ((v5 & 0x1000000000000000) == 0)
          {
            v12 = _StringObject.sharedUTF8.getter(v5, v4);
          }

          v14 = v9 + 1;
          if (v9 + 1 != v13)
          {
            if (!v12)
            {
              goto LABEL_43;
            }

            v15 = *&v12[v9];
            if (v15 == 2573 || (v15 & 0x80808080) != 0)
            {
              goto LABEL_19;
            }
          }
        }
      }

      return v11;
    }

    return 0;
  }

  if (v8._rawBits >> 14 >= v7._rawBits >> 14)
  {
    return 0;
  }

  v18 = v8._rawBits >> 16;
  if (v8._rawBits >> 16 >= v9)
  {
    return 0;
  }

  v11 = -1;
  if (v9 >= 2)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v19 = 1;
LABEL_26:
    v9 -= v19;
    if (v18 >= v9)
    {
      return v11;
    }

    while (1)
    {
      --v11;
      if (v9 < 2)
      {
        break;
      }

LABEL_28:
      if ((v4 & 0x1000000000000000) != 0)
      {
        goto LABEL_41;
      }

      if ((v4 & 0x2000000000000000) != 0)
      {
        v25 = v5;
        v26 = v4 & 0xFFFFFFFFFFFFFFLL;
        v21 = *&v24[v9];
      }

      else
      {
        v20 = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32);
        if ((v5 & 0x1000000000000000) == 0)
        {
          v20 = _StringObject.sharedUTF8.getter(v5, v4);
          if (!v20)
          {
LABEL_43:
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }
        }

        v21 = *&v20[v9 - 2];
      }

      if (v21 == 2573 || (v21 & 0x8080) != 0)
      {
LABEL_41:
        v19 = _StringGuts._opaqueComplexCharacterStride(endingAt:)(v9);
        goto LABEL_26;
      }

      if (v18 >= --v9)
      {
        return v11;
      }
    }
  }
}

Swift::Bool __swiftcall String._isValidIndex(_:)(Swift::String::Index a1)
{
  v3 = (v1 >> 59) & 1;
  if ((v2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((a1._rawBits & 0xC) == 4 << v3)
  {
    return 0;
  }

  v4 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v4 = v1 & 0xFFFFFFFFFFFFLL;
  }

  return v4 >= a1._rawBits >> 16 && _StringGuts.isOnGraphemeClusterBoundary(_:)(a1);
}

Swift::Bool __swiftcall _StringGuts.isOnGraphemeClusterBoundary(_:)(Swift::String::Index a1)
{
  if ((a1._rawBits & 2) != 0)
  {
    return 1;
  }

  if ((a1._rawBits & 0xC000) != 0)
  {
    return 0;
  }

  if (a1._rawBits < 0x10000)
  {
    return 1;
  }

  v4 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v4 = v1 & 0xFFFFFFFFFFFFLL;
  }

  return v4 == a1._rawBits >> 16 || _StringGuts.isOnUnicodeScalarBoundary(_:)(a1) && (_StringGuts._slowRoundDownToNearestCharacter(_:)((a1._rawBits | 1))._rawBits ^ a1._rawBits) < 0x4000;
}

Swift::String::Index __swiftcall _StringGuts.validateCharacterIndex(_:)(Swift::String::Index result)
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
    result._rawBits = _StringGuts.validateSubscalarIndex(_:)(result)._rawBits;
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

    if (v4 <= result._rawBits >> 16)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  return result;
}

Swift::String::Index __swiftcall String._uncheckedIndex(after:)(Swift::String::Index after)
{
  v3 = (after._rawBits >> 8) & 0x3F;
  v4 = v2 & 0x2000000000000000;
  v5 = HIBYTE(v2) & 0xF;
  v6 = v1 & 0xFFFFFFFFFFFFLL;
  if (v3)
  {
    goto LABEL_21;
  }

  if (v4)
  {
    v7 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v7 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (after._rawBits >> 14 == 4 * v7)
  {
    v3 = 0;
    goto LABEL_21;
  }

  v8 = after._rawBits >> 16;
  if ((v2 & 0x1000000000000000) == 0)
  {
    if (v4)
    {
      v39 = v1;
      v40 = v2 & 0xFFFFFFFFFFFFFFLL;
      if (v8 + 1 == v5 || (v12 = *(&v39 + v8), v12 != 2573) && (v12 & 0x80808080) == 0)
      {
        v4 = 1;
        goto LABEL_20;
      }
    }

    else
    {
      if ((v1 & 0x1000000000000000) != 0)
      {
        v9 = (v2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v10 = v1 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        rawBits = after._rawBits;
        v38 = v1;
        v32 = v2;
        v33 = _StringObject.sharedUTF8.getter(v1, v2);
        v2 = v32;
        v9 = v33;
        after._rawBits = rawBits;
        v10 = v34;
        v1 = v38;
      }

      if (v8 + 1 == v10)
      {
        goto LABEL_15;
      }

      if (!v9)
      {
        goto LABEL_52;
      }

      v11 = *(v9 + v8);
      if (v11 != 2573 && (v11 & 0x80808080) == 0)
      {
LABEL_15:
        v4 = 0;
LABEL_20:
        v3 = 1;
        goto LABEL_21;
      }
    }
  }

  v36 = v2;
  v37 = v1;
  v27 = after._rawBits;
  v28 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v8);
  v2 = v36;
  v1 = v37;
  v3 = v28;
  after._rawBits = v27;
LABEL_21:
  v13 = after._rawBits + (v3 << 16);
  v14 = v13 & 0xFFFFFFFFFFFF0000;
  if (v4)
  {
    v15 = v5;
  }

  else
  {
    v15 = v6;
  }

  v16 = v2 & 0x1000000000000000;
  if (v14 >> 14 == 4 * v15)
  {
    v17 = 0;
LABEL_42:
    v14 |= v17 << 8;
    goto LABEL_43;
  }

  v18 = v13 >> 16;
  if (!v16)
  {
    if (v4)
    {
      v39 = v1;
      v40 = v2 & 0xFFFFFFFFFFFFFFLL;
      if (v18 + 1 != v5)
      {
        v19 = *(&v39 + v18);
        if (v19 == 2573 || (v19 & 0x80808080) != 0)
        {
          goto LABEL_33;
        }
      }

LABEL_41:
      v16 = 0;
      v17 = 1;
      goto LABEL_42;
    }

    if ((v1 & 0x1000000000000000) != 0)
    {
      v22 = ((v2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v29 = v13 >> 16;
      v30 = v1;
      v22 = _StringObject.sharedUTF8.getter(v1, v2);
      v18 = v29;
      v6 = v31;
      v1 = v30;
    }

    if (v18 + 1 == v6)
    {
      goto LABEL_41;
    }

    if (v22)
    {
      v23 = *&v22[v18];
      if (v23 == 2573 || (v23 & 0x80808080) != 0)
      {
        goto LABEL_33;
      }

      goto LABEL_41;
    }

LABEL_52:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_33:
  v21 = v1;
  v17 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v18);
  v1 = v21;
  if (v17 <= 63)
  {
    goto LABEL_42;
  }

LABEL_43:
  v24 = (v1 & 0x800000000000000) != 0 || v16 == 0;
  v25 = 7;
  if (!v24)
  {
    v25 = 11;
  }

  return (v14 | v25);
}

Swift::Int __swiftcall String._characterStride(startingAt:)(Swift::String::Index startingAt)
{
  result = (startingAt._rawBits >> 8) & 0x3F;
  if (!result)
  {
    v5 = v1 & 0xFFFFFFFFFFFFLL;
    if ((v2 & 0x2000000000000000) != 0)
    {
      v6 = HIBYTE(v2) & 0xF;
    }

    else
    {
      v6 = v1 & 0xFFFFFFFFFFFFLL;
    }

    if (startingAt._rawBits >> 14 == 4 * v6)
    {
      return 0;
    }

    v7 = startingAt._rawBits >> 16;
    if ((v2 & 0x1000000000000000) == 0)
    {
      if ((v2 & 0x2000000000000000) != 0)
      {
        v12[0] = v1;
        v12[1] = v2 & 0xFFFFFFFFFFFFFFLL;
        if (v7 + 1 == (HIBYTE(v2) & 0xF))
        {
          return 1;
        }

        v9 = *(v12 + v7);
      }

      else
      {
        if ((v1 & 0x1000000000000000) != 0)
        {
          v8 = ((v2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v11 = startingAt._rawBits >> 16;
          v8 = _StringObject.sharedUTF8.getter(v1, v2);
          v7 = v11;
          v5 = v10;
        }

        if (v7 + 1 == v5)
        {
          return 1;
        }

        if (!v8)
        {
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v9 = *&v8[v7];
      }

      if (v9 != 2573 && (v9 & 0x80808080) == 0)
      {
        return 1;
      }
    }

    return _StringGuts._opaqueComplexCharacterStride(startingAt:)(v7);
  }

  return result;
}

Swift::String::Index __swiftcall String.Index.init(encodedOffset:characterStride:)(Swift::Int encodedOffset, Swift::Int characterStride)
{
  v2 = characterStride << 8;
  if (characterStride > 63)
  {
    v2 = 0;
  }

  return (v2 | (encodedOffset << 16));
}

Swift::String::Index __swiftcall _StringGuts.validateInclusiveCharacterIndex_5_7(_:)(Swift::String::Index result)
{
  v3 = (v1 >> 59) & 1;
  if ((v2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result._rawBits & 2) == 0 || (result._rawBits & 0xC) == 4 << v3)
  {
    v7 = v1;
    v8 = v2;
    result._rawBits = _StringGuts.validateInclusiveSubscalarIndex_5_7(_:)(result)._rawBits;
    if (result._rawBits)
    {
      if ((result._rawBits & 2) != 0)
      {
        return result;
      }
    }

    else
    {
      v9 = result._rawBits & 0xC | _StringGuts.scalarAlignSlow(_:)(result)._rawBits & 0xFFFFFFFFFFFFFFF3;
      result._rawBits = v9 | 1;
      if ((v9 & 2) != 0)
      {
        return result;
      }
    }

    if (result._rawBits < 0x10000)
    {
      return (result._rawBits | 3);
    }

    v10 = (v8 & 0x2000000000000000) != 0 ? HIBYTE(v8) & 0xF : v7 & 0xFFFFFFFFFFFFLL;
    if (result._rawBits >> 16 == v10)
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
      rawBits = result._rawBits;
      isExecutableLinkedOnOrAfter = _swift_stdlib_isExecutableLinkedOnOrAfter(0x50700u);
      result._rawBits = rawBits;
      if (isExecutableLinkedOnOrAfter)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }
    }
  }

  return result;
}

Swift::String::Index __swiftcall String._uncheckedIndex(before:)(Swift::String::Index before)
{
  if (before._rawBits < 0x4000)
  {
    v3 = 0;
LABEL_15:
    v7 = v3 << 8;
    goto LABEL_19;
  }

  v3 = before._rawBits >> 16;
  if (before._rawBits >= 0x20000)
  {
    if ((v2 & 0x1000000000000000) == 0)
    {
      if ((v2 & 0x2000000000000000) != 0)
      {
        v19[0] = v1;
        v19[1] = v2 & 0xFFFFFFFFFFFFFFLL;
        v4 = v19;
      }

      else if ((v1 & 0x1000000000000000) != 0)
      {
        v4 = ((v2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v13 = before._rawBits >> 16;
        rawBits = before._rawBits;
        v17 = v2;
        v18 = v1;
        v12 = _StringObject.sharedUTF8.getter(v1, v2);
        v2 = v17;
        v1 = v18;
        v4 = v12;
        v3 = v13;
        before._rawBits = rawBits;
        if (!v4)
        {
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }
      }

      v5 = *(v4 + v3 - 2);
      if (v5 != 2573 && (v5 & 0x80808080) == 0)
      {
        v3 = 1;
        goto LABEL_15;
      }
    }

    v14 = before._rawBits;
    v16 = v2;
    v18 = v1;
    v8 = _StringGuts._opaqueComplexCharacterStride(endingAt:)(v3);
    v2 = v16;
    v1 = v18;
    v3 = v8;
    before._rawBits = v14;
  }

  v7 = v3 << 8;
  if (v3 >= 64)
  {
    v7 = 0;
  }

LABEL_19:
  v9 = (before._rawBits - (v3 << 16)) & 0xFFFFFFFFFFFF0000;
  v10 = 7;
  if (((v2 >> 60) & ((v1 & 0x800000000000000) == 0)) != 0)
  {
    v10 = 11;
  }

  return (v7 | v9 | v10);
}

Swift::Int __swiftcall String._characterStride(endingAt:)(Swift::String::Index endingAt)
{
  if (endingAt._rawBits < 0x4000)
  {
    return 0;
  }

  result = endingAt._rawBits >> 16;
  if (endingAt._rawBits >= 0x20000)
  {
    if ((v2 & 0x1000000000000000) != 0)
    {
      goto LABEL_16;
    }

    if ((v2 & 0x2000000000000000) != 0)
    {
      v9[0] = v1;
      v9[1] = v2 & 0xFFFFFFFFFFFFFFLL;
      v5 = v9;
    }

    else if ((v1 & 0x1000000000000000) != 0)
    {
      v5 = ((v2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v8 = result;
      v5 = _StringObject.sharedUTF8.getter(v1, v2);
      result = v8;
      if (!v5)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }
    }

    v6 = *(v5 + result - 2);
    if (v6 != 2573 && (v6 & 0x80808080) == 0)
    {
      return 1;
    }

    else
    {
LABEL_16:

      return _StringGuts._opaqueComplexCharacterStride(endingAt:)(result);
    }
  }

  return result;
}

Swift::String::Index __swiftcall String.index(_:offsetBy:)(Swift::String::Index _, Swift::Int offsetBy)
{
  v4 = v3;
  v5 = v2;
  result._rawBits = _StringGuts.validateInclusiveCharacterIndex_5_7(_:)(_)._rawBits;
  if (offsetBy < 0)
  {
    v27 = 0;
    if (((v4 >> 60) & ((v5 & 0x800000000000000) == 0)) != 0)
    {
      v28 = 11;
    }

    else
    {
      v28 = 7;
    }

    while (1)
    {
      if (!(result._rawBits >> 14))
      {
LABEL_74:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v30 = result._rawBits >> 16;
      if (result._rawBits < 0x20000)
      {
        goto LABEL_55;
      }

      if ((v4 & 0x1000000000000000) != 0)
      {
        break;
      }

      if ((v4 & 0x2000000000000000) != 0)
      {
        v38 = v5;
        v39 = v4 & 0xFFFFFFFFFFFFFFLL;
        v34 = *(&v37 + v30 + 6);
      }

      else
      {
        v33 = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32);
        if ((v5 & 0x1000000000000000) == 0)
        {
          rawBits = result._rawBits;
          v33 = _StringObject.sharedUTF8.getter(v5, v4);
          result._rawBits = rawBits;
          if (!v33)
          {
LABEL_72:
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }
        }

        v34 = *&v33[v30 - 2];
      }

      if (v34 == 2573 || (v34 & 0x8080) != 0)
      {
        break;
      }

      v31 = (result._rawBits & 0xFFFFFFFFFFFF0000) - 0x10000;
      v32 = 256;
LABEL_57:
      --v27;
      result._rawBits = v31 | v28 | v32;
      if (v27 <= offsetBy)
      {
        return result;
      }
    }

    v29 = result._rawBits;
    v30 = _StringGuts._opaqueComplexCharacterStride(endingAt:)(v30);
    result._rawBits = v29;
LABEL_55:
    v31 = (result._rawBits - (v30 << 16)) & 0xFFFFFFFFFFFF0000;
    v32 = v30 << 8;
    if (v30 > 63)
    {
      v32 = 0;
    }

    goto LABEL_57;
  }

  if (offsetBy)
  {
    v8 = HIBYTE(v4) & 0xF;
    if ((v4 & 0x2000000000000000) != 0)
    {
      v9 = HIBYTE(v4) & 0xF;
    }

    else
    {
      v9 = v5 & 0xFFFFFFFFFFFFLL;
    }

    v10 = 4 * v9;
    if (((v4 >> 60) & ((v5 & 0x800000000000000) == 0)) != 0)
    {
      v11 = 11;
    }

    else
    {
      v11 = 7;
    }

    do
    {
      if (v10 <= result._rawBits >> 14)
      {
        goto LABEL_74;
      }

      v12 = (result._rawBits >> 8) & 0x3F;
      if (!v12)
      {
        v13 = result._rawBits >> 16;
        if ((v4 & 0x1000000000000000) == 0)
        {
          if ((v4 & 0x2000000000000000) != 0)
          {
            v38 = v5;
            v39 = v4 & 0xFFFFFFFFFFFFFFLL;
            if (v13 + 1 == v8)
            {
              goto LABEL_26;
            }

            v17 = *(&v38 + v13);
            if (v17 != 2573 && (v17 & 0x80808080) == 0)
            {
              goto LABEL_26;
            }
          }

          else
          {
            v14 = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v15 = v5 & 0xFFFFFFFFFFFFLL;
            if ((v5 & 0x1000000000000000) == 0)
            {
              v37 = result._rawBits;
              v14 = _StringObject.sharedUTF8.getter(v5, v4);
              result._rawBits = v37;
            }

            if (v13 + 1 == v15)
            {
              goto LABEL_26;
            }

            if (!v14)
            {
              goto LABEL_72;
            }

            v16 = *&v14[v13];
            if (v16 != 2573 && (v16 & 0x80808080) == 0)
            {
LABEL_26:
              v12 = 1;
              goto LABEL_27;
            }
          }
        }

        v37 = result._rawBits;
        v12 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v13);
        result._rawBits = v37;
      }

LABEL_27:
      v19 = result._rawBits + (v12 << 16);
      v20 = v19 & 0xFFFFFFFFFFFF0000;
      if (v10 != (v19 & 0xFFFFFFFFFFFF0000) >> 14)
      {
        v22 = v19 >> 16;
        if ((v4 & 0x1000000000000000) != 0)
        {
          goto LABEL_47;
        }

        if ((v4 & 0x2000000000000000) != 0)
        {
          v38 = v5;
          v39 = v4 & 0xFFFFFFFFFFFFFFLL;
          if (v22 + 1 != v8)
          {
            v25 = *(&v38 + v22);
LABEL_38:
            if (v25 == 2573 || (v25 & 0x8080) != 0)
            {
LABEL_47:
              v21 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v22);
              if (v21 > 63)
              {
                goto LABEL_45;
              }

              goto LABEL_44;
            }
          }
        }

        else
        {
          v23 = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v24 = v5 & 0xFFFFFFFFFFFFLL;
          if ((v5 & 0x1000000000000000) == 0)
          {
            v37 = v22;
            v23 = _StringObject.sharedUTF8.getter(v5, v4);
            v22 = v37;
          }

          if (v22 + 1 != v24)
          {
            if (!v23)
            {
              goto LABEL_72;
            }

            v25 = *&v23[v22];
            goto LABEL_38;
          }
        }

        v21 = 1;
        goto LABEL_44;
      }

      v21 = 0;
LABEL_44:
      v20 |= v21 << 8;
LABEL_45:
      result._rawBits = v20 | v11;
      --offsetBy;
    }

    while (offsetBy);
  }

  return result;
}

Swift::String::Index_optional __swiftcall String.index(_:offsetBy:limitedBy:)(Swift::String::Index _, Swift::Int offsetBy, Swift::String::Index limitedBy)
{
  v5 = v4;
  v6 = v3;
  rawBits = limitedBy._rawBits;
  v9 = (v3 >> 59) & 1;
  if ((v4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  if ((limitedBy._rawBits & 0xC) == 4 << v9)
  {
    v58 = _._rawBits;
    rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(limitedBy)._rawBits;
    _._rawBits = v58;
  }

  v11 = _._rawBits;
  if ((_._rawBits & 0xC) == v10)
  {
    v59 = _._rawBits;
    v11 = _StringGuts._slowEnsureMatchingEncoding(_:)(_)._rawBits;
    _._rawBits = v59;
  }

  v12._rawBits = _StringGuts.validateInclusiveCharacterIndex_5_7(_:)(_)._rawBits;
  v13 = rawBits >> 14;
  if (offsetBy < 0)
  {
    v41 = 0;
    v42 = v11 >> 14;
    v43 = &v68 + 6;
    if (((v5 >> 60) & ((v6 & 0x800000000000000) == 0)) != 0)
    {
      v44 = 11;
    }

    else
    {
      v44 = 7;
    }

    while (1)
    {
      v52 = v12._rawBits >> 14;
      if (v42 >= v13 && v13 >= v52)
      {
        goto LABEL_86;
      }

      if (!v52)
      {
LABEL_88:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v48 = v12._rawBits >> 16;
      if (v12._rawBits < 0x20000)
      {
        goto LABEL_63;
      }

      if ((v5 & 0x1000000000000000) != 0)
      {
        goto LABEL_62;
      }

      if ((v5 & 0x2000000000000000) != 0)
      {
        v69 = v6;
        v70 = v5 & 0xFFFFFFFFFFFFFFLL;
        v55 = *&v43[v48];
        if (v55 == 2573 || (v55 & 0x80808080) != 0)
        {
          goto LABEL_62;
        }
      }

      else
      {
        v53 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
        if ((v6 & 0x1000000000000000) == 0)
        {
          v67 = v12._rawBits;
          v68 = v43;
          v53 = _StringObject.sharedUTF8.getter(v6, v5);
          v12._rawBits = v67;
          v43 = v68;
          if (!v53)
          {
LABEL_83:
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }
        }

        v54 = *&v53[v48 - 2];
        if (v54 == 2573 || (v54 & 0x80808080) != 0)
        {
LABEL_62:
          v66 = v12._rawBits;
          v45 = v48;
          v46 = v43;
          v47 = _StringGuts._opaqueComplexCharacterStride(endingAt:)(v45);
          v43 = v46;
          v48 = v47;
          v12._rawBits = v66;
LABEL_63:
          v49 = (v12._rawBits - (v48 << 16)) & 0xFFFFFFFFFFFF0000;
          v50 = v48 << 8;
          if (v48 > 63)
          {
            v50 = 0;
          }

          goto LABEL_65;
        }
      }

      v49 = (v12._rawBits & 0xFFFFFFFFFFFF0000) - 0x10000;
      v50 = 256;
LABEL_65:
      --v41;
      v51 = v50 | v49;
      v12._rawBits = v51 | v44;
      if (v41 <= offsetBy)
      {
        if (v42 < v13 || v51 >> 14 >= v13)
        {
          goto LABEL_87;
        }

        goto LABEL_86;
      }
    }
  }

  v14 = v11 >> 14;
  if (offsetBy)
  {
    v15 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) != 0)
    {
      v16 = HIBYTE(v5) & 0xF;
    }

    else
    {
      v16 = v6 & 0xFFFFFFFFFFFFLL;
    }

    v17 = 4 * v16;
    v18 = v5 & 0xFFFFFFFFFFFFFFLL;
    v19 = (v5 & 0xFFFFFFFFFFFFFFFLL) + 32;
    if (((v5 >> 60) & ((v6 & 0x800000000000000) == 0)) != 0)
    {
      v20 = 11;
    }

    else
    {
      v20 = 7;
    }

    while (1)
    {
      v21 = v12._rawBits >> 14;
      if (v13 >= v14 && v21 >= v13)
      {
        goto LABEL_86;
      }

      if (v21 >= v17)
      {
        goto LABEL_88;
      }

      v22 = (v12._rawBits >> 8) & 0x3F;
      if (!v22)
      {
        break;
      }

LABEL_31:
      v27 = v12._rawBits + (v22 << 16);
      v28 = v27 & 0xFFFFFFFFFFFF0000;
      if (v17 == (v27 & 0xFFFFFFFFFFFF0000) >> 14)
      {
        v29 = 0;
      }

      else
      {
        v30 = v27 >> 16;
        if ((v5 & 0x1000000000000000) != 0)
        {
          goto LABEL_52;
        }

        if ((v5 & 0x2000000000000000) != 0)
        {
          v69 = v6;
          v70 = v18;
          if (v30 + 1 != v15)
          {
            v34 = *(&v69 + v30);
            if (v34 == 2573 || (v34 & 0x80808080) != 0)
            {
              goto LABEL_52;
            }
          }
        }

        else
        {
          v31 = v19;
          v32 = v6 & 0xFFFFFFFFFFFFLL;
          if ((v6 & 0x1000000000000000) == 0)
          {
            v64 = v30;
            v68 = v18;
            v61 = v19;
            v39 = _StringObject.sharedUTF8.getter(v6, v5);
            v18 = v68;
            v31 = v39;
            v19 = v61;
            v30 = v64;
          }

          if (v30 + 1 != v32)
          {
            if (!v31)
            {
              goto LABEL_83;
            }

            v33 = *&v31[v30];
            if (v33 == 2573 || (v33 & 0x80808080) != 0)
            {
LABEL_52:
              v60 = v19;
              v68 = v18;
              v29 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v30);
              v19 = v60;
              v18 = v68;
              if (v29 > 63)
              {
                goto LABEL_50;
              }

              goto LABEL_49;
            }
          }
        }

        v29 = 1;
      }

LABEL_49:
      v28 |= v29 << 8;
LABEL_50:
      v12._rawBits = v28 | v20;
      if (!--offsetBy)
      {
        goto LABEL_55;
      }
    }

    v23 = v12._rawBits >> 16;
    if ((v5 & 0x1000000000000000) == 0)
    {
      if ((v5 & 0x2000000000000000) == 0)
      {
        v24 = v19;
        v25 = v6 & 0xFFFFFFFFFFFFLL;
        if ((v6 & 0x1000000000000000) == 0)
        {
          v65 = v12._rawBits;
          v68 = v18;
          v62 = v19;
          v40 = _StringObject.sharedUTF8.getter(v6, v5);
          v18 = v68;
          v24 = v40;
          v19 = v62;
          v12._rawBits = v65;
        }

        if (v23 + 1 == v25)
        {
LABEL_30:
          v22 = 1;
          goto LABEL_31;
        }

        if (!v24)
        {
          goto LABEL_83;
        }

        v26 = *&v24[v23];
        if (v26 == 2573)
        {
          goto LABEL_54;
        }

        goto LABEL_29;
      }

      v69 = v6;
      v70 = v18;
      if (v23 + 1 == v15)
      {
        goto LABEL_30;
      }

      v26 = *(&v69 + v23);
      if (v26 != 2573)
      {
LABEL_29:
        if ((v26 & 0x80808080) == 0)
        {
          goto LABEL_30;
        }
      }
    }

LABEL_54:
    v63 = v12._rawBits;
    v68 = v18;
    v36 = v23;
    v37 = v19;
    v38 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v36);
    v19 = v37;
    v22 = v38;
    v12._rawBits = v63;
    v18 = v68;
    goto LABEL_31;
  }

LABEL_55:
  if (v13 >= v14 && v13 < v12._rawBits >> 14)
  {
LABEL_86:
    v12._rawBits = 0;
    v57 = 1;
  }

  else
  {
LABEL_87:
    v57 = 0;
  }

  result.value = v12;
  result.is_nil = v57;
  return result;
}

Swift::Int __swiftcall _StringGuts._opaqueCharacterStride(startingAt:)(Swift::Int startingAt)
{
  if ((v2 & 0x1000000000000000) == 0)
  {
    if ((v2 & 0x2000000000000000) != 0)
    {
      v10[0] = v1;
      v10[1] = v2 & 0xFFFFFFFFFFFFFFLL;
      if (startingAt + 1 == (HIBYTE(v2) & 0xF))
      {
        return 1;
      }

      v3 = v10;
    }

    else
    {
      if ((v1 & 0x1000000000000000) != 0)
      {
        v3 = ((v2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v4 = v1 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v9 = startingAt;
        v3 = _StringObject.sharedUTF8.getter(v1, v2);
        startingAt = v9;
        v4 = v8;
      }

      if (startingAt + 1 == v4)
      {
        return 1;
      }

      if (!v3)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }
    }

    v5 = *(v3 + startingAt);
    if (v5 == 2573 || (v5 & 0x80808080) != 0)
    {
      goto LABEL_16;
    }

    return 1;
  }

LABEL_16:

  return _StringGuts._opaqueComplexCharacterStride(startingAt:)(startingAt);
}

Swift::Int __swiftcall _StringGuts._opaqueCharacterStride(endingAt:)(Swift::Int endingAt)
{
  if (endingAt >= 2)
  {
    if ((v2 & 0x1000000000000000) != 0)
    {
      goto LABEL_14;
    }

    if ((v2 & 0x2000000000000000) != 0)
    {
      v7[0] = v1;
      v7[1] = v2 & 0xFFFFFFFFFFFFFFLL;
      v3 = v7;
    }

    else if ((v1 & 0x1000000000000000) != 0)
    {
      v3 = ((v2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v6 = endingAt;
      v3 = _StringObject.sharedUTF8.getter(v1, v2);
      endingAt = v6;
      if (!v3)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }
    }

    v4 = *(v3 + endingAt - 2);
    if (v4 != 2573 && (v4 & 0x80808080) == 0)
    {
      return 1;
    }

    else
    {
LABEL_14:

      return _StringGuts._opaqueComplexCharacterStride(endingAt:)(endingAt);
    }
  }

  return endingAt;
}

Swift::String::Index __swiftcall _StringGuts.validateScalarIndex(_:)(Swift::String::Index result)
{
  v3 = (v1 >> 59) & 1;
  if ((v2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result._rawBits & 1) == 0 || (result._rawBits & 0xC) == 4 << v3)
  {
    result._rawBits = _StringGuts.validateSubscalarIndex(_:)(result)._rawBits;
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

    if (v4 <= result._rawBits >> 16)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  return result;
}

Swift::String __swiftcall _StringGuts.errorCorrectedCharacter(startingAt:endingAt:)(Swift::Int startingAt, Swift::Int endingAt)
{
  if ((v3 & 0x1000000000000000) == 0)
  {
    if (endingAt < startingAt)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if ((v3 & 0x2000000000000000) != 0)
    {
      v23[0] = v2;
      v23[1] = v3 & 0xFFFFFFFFFFFFFFLL;
      if ((startingAt & 0x8000000000000000) == 0 && (HIBYTE(v3) & 0xF) >= endingAt)
      {
        v13 = endingAt - startingAt;
        if (endingAt - startingAt >= 0)
        {
          v14 = startingAt;
          v15 = _allASCII(_:)((v23 + startingAt), v13);
          v11 = v23 + v14;
          v9 = v15;
          v12 = v13;
          goto LABEL_12;
        }
      }
    }

    else
    {
      if ((v2 & 0x1000000000000000) != 0)
      {
        v4 = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v5 = v2 & 0xFFFFFFFFFFFFLL;
        if (startingAt < 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v19 = startingAt;
        v20 = endingAt;
        v4 = _StringObject.sharedUTF8.getter(v2, v3);
        startingAt = v19;
        v5 = v21;
        endingAt = v20;
        if (v19 < 0)
        {
          goto LABEL_19;
        }
      }

      if (v5 >= endingAt)
      {
        v6 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(startingAt, endingAt, v4, v5);
        v8 = v7;
        v9 = _allASCII(_:)(v6, v7);
        v11 = v6;
        v12 = v8;
LABEL_12:
        countAndFlagsBits = specialized static String._uncheckedFromUTF8(_:isASCII:)(v11, v12, v9, v10);
        goto LABEL_21;
      }
    }

LABEL_19:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v18 = _StringGuts.foreignErrorCorrectedGrapheme(startingAt:endingAt:)(startingAt, endingAt);
  object = v18._object;
  countAndFlagsBits = v18._countAndFlagsBits;
LABEL_21:
  result._object = object;
  result._countAndFlagsBits = countAndFlagsBits;
  return result;
}

Swift::String::Index protocol witness for BidirectionalCollection.index(before:) in conformance String@<X0>(Swift::String::Index *a1@<X0>, Swift::String::Index *a2@<X8>)
{
  result._rawBits = String.index(before:)(a1->_rawBits)._rawBits;
  a2->_rawBits = result._rawBits;
  return result;
}

Swift::String::Index protocol witness for BidirectionalCollection.formIndex(before:) in conformance String(Swift::String::Index *a1)
{
  result._rawBits = String.index(before:)(a1->_rawBits)._rawBits;
  a1->_rawBits = result._rawBits;
  return result;
}

Swift::String::Index _sSSSlsSl5index_8offsetBy5IndexQzAD_SitFTW_0@<X0>(Swift::String::Index *a1@<X0>, Swift::Int a2@<X1>, Swift::String::Index *a3@<X8>)
{
  result._rawBits = String.index(_:offsetBy:)(a1->_rawBits, a2)._rawBits;
  a3->_rawBits = result._rawBits;
  return result;
}

void (*protocol witness for Collection.subscript.read in conformance String(uint64_t *a1, Swift::UInt64 *a2))(uint64_t a1)
{
  v4._rawBits = *a2;
  v5 = String.subscript.getter(v4, *v2, *(v2 + 8));
  a1[1] = v6;
  a1[2] = v6;
  *a1 = v5;
  return protocol witness for Collection.subscript.read in conformance String;
}

unint64_t protocol witness for Collection.subscript.getter in conformance String@<X0>(Swift::UInt64 *a1@<X0>, Swift::String::Index *a2@<X8>)
{
  v4._rawBits = a1[1];
  v6 = *v2;
  v5 = v2[1];
  v7._rawBits = *a1;
  v8._rawBits = _StringGuts.validateScalarRange(_:)(v7, v4, v6, v5)._rawBits;
  rawBits = v8._rawBits | 3;
  if (v8._rawBits >= 0x10000)
  {
    rawBits = v8._rawBits;
  }

  a2->_rawBits = rawBits;
  a2[1]._rawBits = v9._rawBits;
  a2[2]._rawBits = v6;
  a2[3]._rawBits = v5;

  return v5;
}

Swift::UInt64 String.subscript.getter(Swift::String::Index a1, Swift::String::Index a2, unint64_t a3, unint64_t a4)
{
  v5._rawBits = _StringGuts.validateScalarRange(_:)(a1, a2, a3, a4)._rawBits;
  if (v5._rawBits >= 0x10000)
  {
    rawBits = v5._rawBits;
  }

  else
  {
    rawBits = v5._rawBits | 3;
  }

  a4;
  return rawBits;
}

BOOL protocol witness for Collection.isEmpty.getter in conformance String()
{
  v1 = v0[1];
  v2 = *v0 & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  return v2 == 0;
}

Swift::String::Index protocol witness for Collection.index(after:) in conformance String@<X0>(Swift::String::Index *a1@<X0>, Swift::String::Index *a2@<X8>)
{
  v3._rawBits = _StringGuts.validateCharacterIndex(_:)(a1->_rawBits)._rawBits;
  result._rawBits = String._uncheckedIndex(after:)(v3)._rawBits;
  a2->_rawBits = result._rawBits;
  return result;
}

Swift::String::Index protocol witness for Collection.formIndex(after:) in conformance String(Swift::String::Index *a1)
{
  v2._rawBits = _StringGuts.validateCharacterIndex(_:)(a1->_rawBits)._rawBits;
  result._rawBits = String._uncheckedIndex(after:)(v2)._rawBits;
  a1->_rawBits = result._rawBits;
  return result;
}

Swift::Int protocol witness for Collection.count.getter in conformance String()
{
  v1 = v0[1];
  v2 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v2 = *v0;
  }

  v3 = 7;
  if (((v1 >> 60) & ((*v0 & 0x800000000000000) == 0)) != 0)
  {
    v3 = 11;
  }

  return String.distance(from:to:)(15, (v3 | (v2 << 16)));
}

__objc2_class **protocol witness for Sequence._copyToContiguousArray() in conformance String()
{
  v1 = v0[1];
  v2 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0, v1);
  v1;
  return v2;
}

Swift::String_optional __swiftcall String.Iterator.next()()
{
  v1 = v0[2];
  if (v1 >= v0[3])
  {
    countAndFlagsBits = 0;
    object = 0;
    goto LABEL_41;
  }

  v2 = *v0;
  v3 = v0[1];
  if ((v3 & 0x1000000000000000) != 0)
  {
    v23 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v0[2]);
    v6 = v23 + v1;
    v24 = _StringGuts.foreignErrorCorrectedGrapheme(startingAt:endingAt:)(v1, v23 + v1);
    object = v24._object;
    countAndFlagsBits = v24._countAndFlagsBits;
    goto LABEL_28;
  }

  if ((v3 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(v3) & 0xF;
    v29 = *v0;
    v30 = v3 & 0xFFFFFFFFFFFFFFLL;
    v6 = v1 + 1;
    if (v1 + 1 != v17)
    {
      v18 = *(&v29 + v1);
      if (v18 == 2573 || (v18 & 0x80808080) != 0)
      {
        v25 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v1);
        v6 = v25 + v1;
        if (v25 + v1 < v1)
        {
          goto LABEL_39;
        }
      }
    }

    v29 = v2;
    v30 = v3 & 0xFFFFFFFFFFFFFFLL;
    if ((v1 & 0x8000000000000000) == 0 && v17 >= v6)
    {
      v13 = v6 - v1;
      if (v6 - v1 >= 0)
      {
        v20 = _allASCII(_:)((&v29 + v1), v6 - v1);
        v16 = &v29 + v1;
        v14 = v20;
        goto LABEL_27;
      }
    }

    goto LABEL_36;
  }

  if ((v2 & 0x1000000000000000) != 0)
  {
    v4 = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = _StringObject.sharedUTF8.getter(*v0, v0[1]);
  }

  v6 = v1 + 1;
  if (v1 + 1 != v5)
  {
    if (!v4)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v7 = *&v4[v1];
    if (v7 == 2573 || (v7 & 0x80808080) != 0)
    {
      v27 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v1);
      v6 = v27 + v1;
      if (v27 + v1 < v1)
      {
LABEL_39:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }
    }
  }

  if ((v2 & 0x1000000000000000) != 0)
  {
    v9 = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v10 = v2 & 0xFFFFFFFFFFFFLL;
    if (v1 < 0)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v9 = _StringObject.sharedUTF8.getter(v2, v3);
    v10 = v26;
    if (v1 < 0)
    {
      goto LABEL_36;
    }
  }

  if (v10 < v6)
  {
LABEL_36:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v11 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v1, v6, v9, v10);
  v13 = v12;
  v14 = _allASCII(_:)(v11, v12);
  v16 = v11;
LABEL_27:
  countAndFlagsBits = specialized static String._uncheckedFromUTF8(_:isASCII:)(v16, v13, v14, v15);
LABEL_28:
  v0[2] = v6;
LABEL_41:
  result.value._object = object;
  result.value._countAndFlagsBits = countAndFlagsBits;
  return result;
}

uint64_t protocol witness for IteratorProtocol.next() in conformance String.Iterator@<X0>(Swift::String_optional *a1@<X8>)
{
  v3 = String.Iterator.next()();
  result = v3.value._countAndFlagsBits;
  *a1 = v3;
  return result;
}

uint64_t static StringProtocol.== infix<A>(_:_:)(unint64_t *a1, uint64_t a2, ValueMetadata *a3, ValueMetadata *a4)
{
  Description = a4[-1].Description;
  v7 = MEMORY[0x1EEE9AC00](a1);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = (&v73 - v10);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v9);
  v16 = (&v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = (&v73 - v18);
  MEMORY[0x1EEE9AC00](v17);
  v26 = (&v73 - v22);
  if (v27 == &type metadata for String)
  {
    if (a4 == &type metadata for String)
    {
      v63 = *a1;
      v64 = a1[1];
      v65 = *v25;
      v66 = v25[1];

      return specialized static StringProtocol.== infix<A>(_:_:)(v63, v64, v65, v66);
    }

    if (a4 == &type metadata for Substring)
    {
      v31 = *a1;
      v32 = a1[1];
      v33 = *v25;
      v34 = v25[1];
      v35 = v25[2];
      v36 = v25[3];

      return specialized static StringProtocol.== infix<A>(_:_:)(v31, v32, v33, v34, v35, v36);
    }
  }

  if (a3 != &type metadata for Substring)
  {
    goto LABEL_3;
  }

  if (a4 != &type metadata for String)
  {
    if (a4 == &type metadata for Substring)
    {
      v38 = a1[2];
      v39 = a1[3];
      v40 = *a1 >> 16;
      v41 = a1[1] >> 16;
      v42 = v25[2];
      v43 = v25[3];
      v44 = *v25 >> 16;
      v45 = v25[1] >> 16;
      if (v38 != v42 || v39 != v43 || v40 != v44 || v41 != v45)
      {
        return _stringCompareInternal(_:_:_:_:expecting:)(v38, v39, v40, v41, v42, v43, v44, v45, 0) & 1;
      }

      v46 = 1;
      return v46 & 1;
    }

LABEL_3:
    v76 = v25;
    v77 = v21;
    v28 = v20;
    v73 = v23;
    v74 = v24;
    v29 = *(v13 + 16);
    v29(&v73 - v22, a1, a3);
    if (swift_dynamicCast(&v79, v26, a3, &type metadata for String, 6uLL))
    {
      v30 = v80;
      v75 = v79;
    }

    else
    {
      v29(v19, a1, a3);
      if (swift_dynamicCast(&v79, v19, a3, &type metadata for Substring, 6uLL))
      {
        v30 = v82;
        v75 = v81;
      }

      else
      {
        v29(v16, a1, a3);
        v75 = String.init<A>(_:)(v16, a3);
        v30 = v47;
      }
    }

    v48 = *(*(v28 + 8) + 8);
    (*(v48 + 64))(&v79, a3, v48);
    v49 = v79;
    (*(v48 + 72))(&v79, a3, v48);
    v50 = v79;
    v51 = Description[2];
    v52 = v76;
    v51(v11, v76, a4);
    if (swift_dynamicCast(&v79, v11, a4, &type metadata for String, 6uLL))
    {
      v54 = v79;
      v53 = v80;
    }

    else
    {
      v55 = v74;
      v51(v74, v52, a4);
      if (swift_dynamicCast(&v79, v55, a4, &type metadata for Substring, 6uLL))
      {
        v54 = v81;
        v53 = v82;
      }

      else
      {
        v56 = v73;
        v51(v73, v52, a4);
        v54 = String.init<A>(_:)(v56, a4);
        v53 = v57;
      }
    }

    v58 = v49 >> 16;
    v59 = *(*(v77 + 8) + 8);
    (*(v59 + 64))(&v79, a4, v59);
    v60 = v79;
    (*(v59 + 72))(&v79, a4, v59);
    v61 = v60 >> 16;
    v62 = v79 >> 16;
    if (v75 == v54 && v30 == v53 && v58 == v61 && v50 >> 16 == v62)
    {
      v30;
      v53;
      v46 = 1;
    }

    else
    {
      v46 = _stringCompareInternal(_:_:_:_:expecting:)(v75, v30, v58, v50 >> 16, v54, v53, v61, v62, 0);
      v30;
      v53;
    }

    return v46 & 1;
  }

  v67 = *a1;
  v68 = a1[1];
  v69 = a1[2];
  v70 = a1[3];
  v71 = *v25;
  v72 = v25[1];

  return specialized static StringProtocol.== infix<A>(_:_:)(v67, v68, v69, v70, v71, v72);
}

Swift::UInt64 StringProtocol._wholeGuts.getter(ValueMetadata *a1)
{
  Description = a1[-1].Description;
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = (v17 - v8);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = (v17 - v11);
  if (v10 == &type metadata for String)
  {
    v14 = *v1;
    v15 = v1[1];
LABEL_7:
    v15;
    return v14;
  }

  if (a1 == &type metadata for Substring)
  {
    v14 = v1[2];
    v15 = v1[3];
    goto LABEL_7;
  }

  v13 = Description[2];
  v13(v17 - v11, v1, a1);
  if (swift_dynamicCast(v17, v12, a1, &type metadata for String, 6uLL))
  {
    return v17[0];
  }

  v13(v9, v1, a1);
  if (swift_dynamicCast(v17, v9, a1, &type metadata for Substring, 6uLL))
  {
    return v17[2];
  }

  v13(v6, v1, a1);
  return String.init<A>(_:)(v6, a1);
}

unint64_t StringProtocol._offsetRange.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 8) + 8);
  (*(v3 + 64))(&v6, a1, v3);
  v4 = v6;
  (*(v3 + 72))(&v6, a1, v3);
  return v4 >> 16;
}

uint64_t _stringCompare(_:_:_:_:expecting:)(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a1 == a5 && a2 == a6 && a3 == a7 && a4 == a8)
  {
    return (a9 & 1) == 0;
  }

  else
  {
    return _stringCompareInternal(_:_:_:_:expecting:)(a1, a2, a3, a4, a5, a6, a7, a8, a9 & 1);
  }
}

uint64_t static StringProtocol.< infix<A>(_:_:)(unint64_t *a1, unint64_t *a2, Class *a3, ValueMetadata *a4)
{
  Description = a4[-1].Description;
  v9 = MEMORY[0x1EEE9AC00](a1);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = (&v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = (&v76 - v18);
  MEMORY[0x1EEE9AC00](v17);
  v26 = (&v76 - v22);
  if (v27 == &type metadata for String)
  {
    if (a4 == &type metadata for String)
    {
      v34 = *a1;
      v35 = a1[1];
      v36 = *a2;
      v37 = a2[1];

      return specialized static StringProtocol.< infix<A>(_:_:)(v34, v35, v36, v37);
    }

    else
    {
      v32 = *a1;
      v31 = a1[1];
      if (a4 != &type metadata for Substring)
      {
        v79 = v25;
        v80 = v32;
        v28 = v20;
        v76 = v23;
        v77 = v24;
        v81 = v21;
LABEL_11:
        v31;
        goto LABEL_20;
      }

      v55 = *a2;
      v56 = a2[1];
      v57 = a2[2];
      v58 = a2[3];
      v59 = a1[1];

      return specialized static StringProtocol.< infix<A>(_:_:)(v32, v59, v55, v56, v57, v58);
    }
  }

  else
  {
    if (a3 != &type metadata for Substring)
    {
      v78 = Description;
      v79 = v25;
      v28 = v20;
      v76 = v23;
      v77 = v24;
      v81 = v21;
      v29 = *(v13 + 16);
      v29(&v76 - v22, a1, a3);
      if (swift_dynamicCast(&v82, v26, a3, &type metadata for String, 6uLL))
      {
        v30 = v82;
        v31 = v83;
      }

      else
      {
        v29(v19, a1, a3);
        if (!swift_dynamicCast(&v82, v19, a3, &type metadata for Substring, 6uLL))
        {
          v29(v16, a1, a3);
          v80 = String.init<A>(_:)(v16, a3);
          v31 = v39;
          goto LABEL_19;
        }

        v30 = v84;
        v31 = v85;
      }

      v80 = v30;
LABEL_19:
      Description = v78;
LABEL_20:
      v40 = *(*(v28 + 8) + 8);
      (*(v40 + 64))(&v82, a3, v40);
      v41 = v82;
      (*(v40 + 72))(&v82, a3, v40);
      v42 = v82;
      if (a4 == &type metadata for String)
      {
        v46 = *a2;
        v45 = a2[1];
      }

      else
      {
        if (a4 != &type metadata for Substring)
        {
          v43 = Description[2];
          v44 = v79;
          v43(v79, a2, a4);
          if (swift_dynamicCast(&v82, v44, a4, &type metadata for String, 6uLL))
          {
            v46 = v82;
            v45 = v83;
          }

          else
          {
            v54 = v77;
            v43(v77, a2, a4);
            if (swift_dynamicCast(&v82, v54, a4, &type metadata for Substring, 6uLL))
            {
              v46 = v84;
              v45 = v85;
            }

            else
            {
              v66 = v76;
              v43(v76, a2, a4);
              v46 = String.init<A>(_:)(v66, a4);
              v45 = v67;
            }
          }

LABEL_27:
          v47 = v41 >> 16;
          v48 = v42 >> 16;
          v49 = *(*(v81 + 8) + 8);
          (*(v49 + 64))(&v82, a4, v49);
          v50 = v82;
          (*(v49 + 72))(&v82, a4, v49);
          v51 = v50 >> 16;
          v52 = v82 >> 16;
          if (v80 == v46 && v31 == v45 && v47 == v51 && v48 == v52)
          {
            v31;
            v45;
            v53 = 0;
          }

          else
          {
            v53 = _stringCompareInternal(_:_:_:_:expecting:)(v80, v31, v47, v48, v46, v45, v51, v52, 1);
            v31;
            v45;
          }

          return v53 & 1;
        }

        v46 = a2[2];
        v45 = a2[3];
      }

      v45;
      goto LABEL_27;
    }

    if (a4 != &type metadata for String)
    {
      if (a4 == &type metadata for Substring)
      {
        v68 = a1[2];
        v69 = a1[3];
        v70 = *a1 >> 16;
        v71 = a1[1] >> 16;
        v72 = a2[2];
        v73 = a2[3];
        v74 = *a2 >> 16;
        v75 = a2[1] >> 16;
        if (v68 != v72 || v69 != v73 || v70 != v74 || v71 != v75)
        {
          return _stringCompareInternal(_:_:_:_:expecting:)(v68, v69, v70, v71, v72, v73, v74, v75, 1) & 1;
        }

        v53 = 0;
        return v53 & 1;
      }

      v28 = v20;
      v76 = v23;
      v77 = v24;
      v81 = v21;
      v33 = a1[2];
      v31 = a1[3];
      v79 = v25;
      v80 = v33;
      goto LABEL_11;
    }

    v60 = *a1;
    v61 = a1[1];
    v62 = a1[2];
    v63 = a1[3];
    v64 = *a2;
    v65 = a2[1];

    return specialized static StringProtocol.< infix<A>(_:_:)(v60, v61, v62, v63, v64, v65);
  }
}