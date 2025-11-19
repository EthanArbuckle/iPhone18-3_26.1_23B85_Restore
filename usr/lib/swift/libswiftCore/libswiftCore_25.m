uint64_t CodingKey.description.getter(swift::SwiftError *a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v6 = (*(a2 + 40))();
  if (v7)
  {
    v8 = 0xE300000000000000;
    v295 = 7104878;
  }

  else
  {
    v295 = _int64ToString(_:radix:uppercase:)(v6, 10, 0, swift_int64ToString);
  }

  v296 = v8;
  v9 = _StringGuts.init(_initialCapacity:)(35);
  v11 = v9;
  v12 = v10;
  v299._countAndFlagsBits = v9;
  v299._object = v10;
  v13 = HIBYTE(v10) & 0xF;
  v14 = v9 & 0xFFFFFFFFFFFFLL;
  if ((v10 & 0x2000000000000000) != 0)
  {
    v15 = HIBYTE(v10) & 0xF;
  }

  else
  {
    v15 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15 && (v9 & ~v10 & 0x2000000000000000) == 0)
  {
    v10;
    v24 = 0xE000000000000000;
    v299._countAndFlagsBits = 0;
LABEL_24:
    v299._object = v24;
    goto LABEL_35;
  }

  if ((v10 & 0x2000000000000000) != 0)
  {
    v10;
    0xE000000000000000;
    v23 = 0xA000000000000000;
    if (!(v12 & 0x80808080808080 | v11 & 0x8080808080808080))
    {
      v23 = 0xE000000000000000;
    }

    v24 = (v23 & 0xFF00000000000000 | (v13 << 56) | v12 & 0xFFFFFFFFFFFFFFLL);
    v299._countAndFlagsBits = v11;
    goto LABEL_24;
  }

  0xE000000000000000;
  v17 = v14;
  if ((v12 & 0x1000000000000000) != 0)
  {
    v17 = String.UTF8View._foreignCount()();
    if ((v11 & 0x2000000000000000) == 0)
    {
LABEL_33:
      if (v17 <= 15)
      {
        goto LABEL_16;
      }

LABEL_34:
      _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v17, 0);
      v297 = 0;
      v298 = 0;
      closure #1 in _StringGuts.append(_:)(&v297, 0, &v299, 1);
      swift_bridgeObjectRelease_n(0xE000000000000000, 2);
      goto LABEL_35;
    }
  }

  else if ((v11 & 0x2000000000000000) == 0)
  {
    goto LABEL_33;
  }

  if (!swift_isUniquelyReferenced_nonNull_native(v12 & 0xFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_33;
  }

  v18 = _StringGuts.nativeUnusedCapacity.getter(v11, v12);
  if (v19)
  {
    goto LABEL_339;
  }

  if (v17 > 15 || (v18 & 0x8000000000000000) == 0)
  {
    goto LABEL_34;
  }

LABEL_16:
  if ((v12 & 0x1000000000000000) != 0)
  {
    v21 = _StringGuts._foreignConvertedToSmall()(v11, v12);
    v22 = v25;
  }

  else
  {
    if ((v11 & 0x1000000000000000) != 0)
    {
      v20 = ((v12 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v20 = _StringObject.sharedUTF8.getter(v11, v12);
      v14 = v277;
    }

    closure #1 in _StringGuts._convertedToSmall()(v20, v14, &v297, v16);
    v21 = v297;
    v22 = v298;
  }

  0xE000000000000000;
  v26._rawBits = 1;
  v27._rawBits = 1;
  v28._rawBits = _StringGuts.validateScalarRange(_:)(v26, v27, 0, 0xE000000000000000)._rawBits;
  if (v28._rawBits < 0x10000)
  {
    v28._rawBits |= 3;
  }

  v30 = Substring.description.getter(v28._rawBits, v29._rawBits, 0, 0xE000000000000000);
  v11 = v31;
  0xE000000000000000;
  if ((v11 & 0x2000000000000000) == 0)
  {
    goto LABEL_329;
  }

  v11;
  while (2)
  {
    v33 = specialized _SmallString.init(_:appending:)(*&v21, v22, v30, v11);
    if (v35)
    {
      goto LABEL_339;
    }

    v11 = v33;
    v36 = v34;
    v12;
    swift_bridgeObjectRelease_n(0xE000000000000000, 2);
    v299._countAndFlagsBits = v11;
    v299._object = v36;
LABEL_35:
    DynamicType = swift_getDynamicType(v3, a1, 0);
    TypeName = swift_getTypeName(DynamicType, 0);
    if (v39 < 0)
    {
      goto LABEL_307;
    }

    v40 = TypeName;
    v30 = v39;
    v21 = 0;
    if (_allASCII(_:)(TypeName, v39))
    {
      v42 = 1;
LABEL_38:
      if (!v30)
      {
LABEL_84:
        v44 = 0;
        v43 = 0xE000000000000000;
        goto LABEL_115;
      }

      if (v30 > 15)
      {
        v43 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(v40, v30, v30, v42 & 1);
        v44 = *(v43 + 24);
        goto LABEL_115;
      }

      v76 = v30 - 8;
      v77 = 8;
      if (v30 < 8)
      {
        v77 = v30;
      }

      if (v30 >= 4)
      {
        v79 = v77 & 0xC;
        v41.i32[0] = *v40;
        v80 = vmovl_u16(*&vmovl_u8(v41));
        v81.i64[0] = v80.u32[0];
        v81.i64[1] = v80.u32[1];
        v82.i64[0] = 255;
        v82.i64[1] = 255;
        v83 = vandq_s8(v81, v82);
        v81.i64[0] = v80.u32[2];
        v81.i64[1] = v80.u32[3];
        v84 = vshlq_u64(vandq_s8(v81, v82), xmmword_18071DBA0);
        v85.i32[1] = 0;
        v86 = vshlq_u64(v83, xmmword_18071DBB0);
        if (v79 != 4)
        {
          v85.i32[0] = *(v40 + 4);
          v87 = vmovl_u16(*&vmovl_u8(v85));
          v88.i64[0] = v87.u32[2];
          v88.i64[1] = v87.u32[3];
          v89 = vandq_s8(v88, v82);
          v88.i64[0] = v87.u32[0];
          v88.i64[1] = v87.u32[1];
          v84 = vorrq_s8(vshlq_u64(v89, xmmword_18071DBD0), v84);
          v86 = vorrq_s8(vshlq_u64(vandq_s8(v88, v82), xmmword_18071DBC0), v86);
        }

        v90 = vorrq_s8(v86, v84);
        v44 = vorr_s8(*v90.i8, *&vextq_s8(v90, v90, 8uLL));
        if (v77 != v79)
        {
          v78 = 8 * v79;
          goto LABEL_105;
        }
      }

      else
      {
        v44 = 0;
        v78 = 0;
        v79 = 0;
LABEL_105:
        v91 = v77 - v79;
        v92 = (v40 + v79);
        do
        {
          v93 = *v92++;
          v44 |= v93 << (v78 & 0x38);
          v78 += 8;
          --v91;
        }

        while (v91);
      }

      if (v30 < 9)
      {
        v94 = 0;
      }

      else
      {
        v94 = 0;
        v95 = 0;
        v96 = (v40 + 8);
        do
        {
          v97 = *v96++;
          v94 |= v97 << v95;
          v95 += 8;
          --v76;
        }

        while (v76);
      }

      v98 = 0xA000000000000000;
      if (((v94 | v44) & 0x8080808080808080) == 0)
      {
        v98 = 0xE000000000000000;
      }

      v43 = v98 | (v30 << 56) | v94;
      goto LABEL_115;
    }

    if (!v30)
    {
      goto LABEL_84;
    }

    v12 = 0;
    v45 = (v40 + v30);
    v42 = 1;
    v46 = v40;
    v47 = v40;
    while (1)
    {
      v49 = *v47++;
      v48 = v49;
      if ((v49 & 0x80000000) == 0)
      {
        v50 = 1;
        goto LABEL_45;
      }

      if ((v48 + 11) <= 0xCCu)
      {
        LOBYTE(v297) = _diagnoseInvalidUTF8MultiByteLeading(_:)(v48);
        goto LABEL_86;
      }

      if (v48 > 0xDFu)
      {
        break;
      }

      if (v47 == v45 || (*v47 & 0xC0) != 0x80)
      {
LABEL_302:
        v267 = 4;
        goto LABEL_303;
      }

      v42 = 0;
      v47 = v46 + 2;
      v50 = 2;
LABEL_45:
      v12 += v50;
      v46 = v47;
      if (v47 == v45)
      {
        goto LABEL_38;
      }
    }

    if (v48 == 224)
    {
      if (v47 == v45)
      {
        goto LABEL_302;
      }

      if (v46[1] - 192 < 0xFFFFFFE0)
      {
        goto LABEL_306;
      }

      goto LABEL_69;
    }

    if (v48 <= 0xECu)
    {
      goto LABEL_67;
    }

    if (v48 == 237)
    {
      if (v47 == v45)
      {
        goto LABEL_302;
      }

      v51 = v46[1];
      if (v51 > 0x9F || (v51 & 0xC0) != 0x80)
      {
        v267 = 1;
        goto LABEL_303;
      }

      goto LABEL_69;
    }

    if (v48 <= 0xEFu)
    {
LABEL_67:
      if (v47 == v45 || (v46[1] & 0xC0) != 0x80)
      {
        goto LABEL_302;
      }

LABEL_69:
      if (v46 + 2 == v45 || (v46[2] & 0xC0) != 0x80)
      {
        goto LABEL_302;
      }

      v42 = 0;
      v47 = v46 + 3;
      v50 = 3;
      goto LABEL_45;
    }

    if (v48 == 240)
    {
      if (v47 == v45)
      {
        goto LABEL_302;
      }

      if (v46[1] - 192 < 0xFFFFFFD0)
      {
LABEL_306:
        v267 = 3;
        goto LABEL_303;
      }

      goto LABEL_79;
    }

    if (v48 <= 0xF3u)
    {
      if (v47 == v45 || (v46[1] & 0xC0) != 0x80)
      {
        goto LABEL_302;
      }

      goto LABEL_79;
    }

    if (v47 == v45)
    {
      goto LABEL_302;
    }

    v52 = v46[1];
    if (v52 <= 0x8F && (v52 & 0xC0) == 0x80)
    {
LABEL_79:
      if (v46 + 2 == v45 || (v46[2] & 0xC0) != 0x80 || v46 + 3 == v45 || (v46[3] & 0xC0) != 0x80)
      {
        goto LABEL_302;
      }

      v42 = 0;
      v47 = v46 + 4;
      v50 = 4;
      goto LABEL_45;
    }

    v267 = 2;
LABEL_303:
    LOBYTE(v297) = v267;
LABEL_86:
    swift_willThrowTypedImpl(&v297, &type metadata for _UTF8EncodingErrorKind, &protocol witness table for _UTF8EncodingErrorKind);
    v53 = specialized Collection.subscript.getter(v12, v40, v30);
    v22 = findInvalidRange #1 (_:) in validateUTF8(_:)(v53, v54, v55, v56);
    v297 = 0;
    v298 = 0xE000000000000000;
    if (__OFADD__(v30, 15))
    {
      __break(1u);
LABEL_329:
      v274 = a1;
      if ((v11 & 0x1000000000000000) != 0)
      {
        v30 = _StringGuts._foreignConvertedToSmall()(v30, v11);
        v291 = v290;
        v11;
        v11 = v291;
        a1 = v274;
      }

      else
      {
        if ((v30 & 0x1000000000000000) != 0)
        {
          v275 = ((v11 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v276 = v30 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v275 = _StringObject.sharedUTF8.getter(v30, v11);
        }

        closure #1 in _StringGuts._convertedToSmall()(v275, v276, &v297, v32);
        v11;
        v30 = v297;
        v11 = v298;
      }

      continue;
    }

    break;
  }

  v11 = v57;
  v292 = a1;
  v294 = v4;
  v4 = v3;
  v12 = &v297;
  _StringGuts.reserveCapacity(_:)(v30 + 15);
  v58 = v22;
  while (1)
  {
    v59 = specialized Collection.subscript.getter(v58, v40, v30);
    v63 = v297 & 0xFFFFFFFFFFFFLL;
    if ((v298 & 0x2000000000000000) != 0)
    {
      v63 = HIBYTE(v298) & 0xF;
    }

    v64 = __OFADD__(v63, v30);
    v65 = v63 + v30;
    if (v64)
    {
      __break(1u);
LABEL_305:
      __break(1u);
      goto LABEL_306;
    }

    v66 = v59;
    if (__OFADD__(v65, 3))
    {
      goto LABEL_305;
    }

    v67 = v60;
    a1 = v61;
    v3 = v62;
    _StringGuts.reserveCapacity(_:)(v65 + 3);
    v68 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v66, v67, a1, v3);
    v12 = &v297;
    _StringGuts.appendInPlace(_:isASCII:)(v68, v69, 0);
    specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(0xFFFDu, &v297);
    v70 = specialized Collection.subscript.getter(v11, v40, v30);
    v40 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v70, v71, v72, v73);
    v30 = v74;
    if ((validateUTF8(_:)(v40, v74) & 0x8000000000000000) == 0)
    {
      break;
    }

    v11 = v75;
    if (!v30)
    {
      goto LABEL_100;
    }
  }

  _StringGuts.appendInPlace(_:isASCII:)(v40, v30, 0);
LABEL_100:
  v44 = v297;
  v43 = v298;
  a1 = v292;
  v4 = v294;
LABEL_115:
  countAndFlagsBits = v299._countAndFlagsBits;
  v100 = (v299._object >> 56) & 0xF;
  v101 = v299._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  if ((v299._object & 0x2000000000000000) != 0)
  {
    v101 = (v299._object >> 56) & 0xF;
  }

  if (v101 || (v299._countAndFlagsBits & ~v299._object & 0x2000000000000000) != 0)
  {
    if ((v299._object & 0x2000000000000000) == 0)
    {
      if ((v43 & 0x2000000000000000) != 0)
      {
        v102 = HIBYTE(v43) & 0xF;
        goto LABEL_124;
      }

LABEL_123:
      v102 = v44 & 0xFFFFFFFFFFFFLL;
      goto LABEL_124;
    }

    if ((v43 & 0x2000000000000000) == 0)
    {
      goto LABEL_123;
    }

    v102 = HIBYTE(v43) & 0xF;
    v116 = v100 + v102;
    if (v100 + v102 <= 0xF)
    {
      if (v102)
      {
        v168 = 0;
        v169 = 0;
        v170 = 8 * v100;
        v171 = 8 * v102;
        object = v299._object;
        do
        {
          v173 = v43 >> (v168 & 0x38);
          if (v169 < 8)
          {
            v173 = v44 >> v168;
          }

          v174 = (v173 << (v170 & 0x38)) | ((-255 << (v170 & 0x38)) - 1) & object;
          v175 = (v173 << v170) | ((-255 << v170) - 1) & countAndFlagsBits;
          if (v100 <= 7)
          {
            countAndFlagsBits = v175;
          }

          else
          {
            object = v174;
          }

          ++v100;
          v170 += 8;
          v168 += 8;
          ++v169;
        }

        while (v171 != v168);
      }

      else
      {
        object = v299._object;
      }

      v299._object;
      v43;
      v185 = 0xA000000000000000;
      if (!(countAndFlagsBits & 0x8080808080808080 | object & 0x80808080808080))
      {
        v185 = 0xE000000000000000;
      }

      v43 = v185 & 0xFF00000000000000 | (v116 << 56) | object & 0xFFFFFFFFFFFFFFLL;
      v299._countAndFlagsBits = countAndFlagsBits;
      v299._object = v43;
      v44 = countAndFlagsBits;
    }

    else
    {
LABEL_124:
      v43;
      _StringGuts.append(_:)(v44, v43, 0, v102, v103, v104, v105, v106, v107, v108, v109, v110);
      swift_bridgeObjectRelease_n(v43, 2);
      v44 = v299._countAndFlagsBits;
      v43 = v299._object;
    }
  }

  else
  {
    v299._object;
    v299._countAndFlagsBits = v44;
    v299._object = v43;
  }

  v111 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("(stringValue: ", 0xFuLL, 1);
  v112 = v111._countAndFlagsBits;
  v113 = v111._object;
  v114 = HIBYTE(v43) & 0xF;
  if ((v43 & 0x2000000000000000) == 0)
  {
    v114 = v44 & 0xFFFFFFFFFFFFLL;
  }

  if (!v114 && (v44 & ~v43 & 0x2000000000000000) == 0)
  {
    v43;
    v299 = v111;
    goto LABEL_139;
  }

  if ((v43 & 0x2000000000000000) != 0)
  {
    if ((v111._object & 0x2000000000000000) != 0)
    {
      v117 = specialized _SmallString.init(_:appending:)(v44, v43, v111._countAndFlagsBits, v111._object);
      if (v119)
      {
        goto LABEL_137;
      }

      v176 = v117;
      v177 = v118;
      v43;
      v111._object;
      v299._countAndFlagsBits = v176;
      v299._object = v177;
      v113 = v177;
      v112 = v176;
      goto LABEL_139;
    }

LABEL_133:
    v115 = v111._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    goto LABEL_138;
  }

  if ((v111._object & 0x2000000000000000) == 0)
  {
    goto LABEL_133;
  }

LABEL_137:
  v115 = (v111._object >> 56) & 0xF;
LABEL_138:
  v111._object;
  _StringGuts.append(_:)(v111._countAndFlagsBits, v111._object, 0, v115, v120, v121, v122, v123, v124, v125, v126, v127);
  swift_bridgeObjectRelease_n(v111._object, 2);
  v112 = v299._countAndFlagsBits;
  v113 = v299._object;
LABEL_139:
  v128 = (v4[3])(a1, v4);
  v130 = v128;
  v131 = v129;
  v132 = HIBYTE(v113) & 0xF;
  v133 = *&v112 & 0xFFFFFFFFFFFFLL;
  if ((v113 & 0x2000000000000000) != 0)
  {
    v134 = HIBYTE(v113) & 0xF;
  }

  else
  {
    v134 = *&v112 & 0xFFFFFFFFFFFFLL;
  }

  if (!v134 && (*&v112 & ~v113 & 0x2000000000000000) == 0)
  {
    v113;
    v299._countAndFlagsBits = v130;
    v299._object = v131;
    goto LABEL_218;
  }

  v135 = (v129 & 0x2000000000000000) == 0;
  v136 = HIBYTE(v129) & 0xF;
  if ((v113 & 0x2000000000000000) == 0)
  {
    v137 = v128 & 0xFFFFFFFFFFFFLL;
    v138 = HIBYTE(v129) & 0xF;
    if ((v129 & 0x2000000000000000) == 0)
    {
LABEL_148:
      v138 = v137;
    }

    v293 = v137;
    if ((v129 & 0x1000000000000000) == 0)
    {
      goto LABEL_150;
    }

LABEL_174:
    swift_bridgeObjectRetain_n(v129, 2);
    v158._rawBits = 1;
    v159._rawBits = (v138 << 16) | 1;
    v160._rawBits = _StringGuts.validateScalarRange(_:)(v158, v159, v130, v131)._rawBits;
    if (v160._rawBits < 0x10000)
    {
      v160._rawBits |= 3;
    }

    v142 = String.UTF8View.distance(from:to:)(v160, v161);
    v131;
    if ((v113 & 0x1000000000000000) != 0)
    {
      goto LABEL_177;
    }

LABEL_151:
    v64 = __OFADD__(v134, v142);
    v143 = v134 + v142;
    if (v64)
    {
      goto LABEL_179;
    }

LABEL_152:
    if ((*&v112 & ~v113 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v113 & 0xFFFFFFFFFFFFFFFLL))
    {
      v144 = _StringGuts.nativeUnusedCapacity.getter(*&v112, v113);
      if (v145)
      {
        goto LABEL_339;
      }

      v146 = (v113 >> 61) & 1;
      if (v144 < v142)
      {
        LODWORD(v146) = 1;
      }

      if (v143 <= 15 && v146)
      {
LABEL_159:
        if ((v113 & 0x2000000000000000) != 0)
        {
          v133 = v113;
          v136 = 0;
        }

        else
        {
          v136 = 0;
          if ((v113 & 0x1000000000000000) != 0)
          {
            v112 = _StringGuts._foreignConvertedToSmall()(*&v112, v113);
            v133 = v282;
          }

          else
          {
            if ((*&v112 & 0x1000000000000000) != 0)
            {
              v268 = ((v113 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v268 = _StringObject.sharedUTF8.getter(*&v112, v113);
              v133 = v288;
            }

            closure #1 in _StringGuts._convertedToSmall()(v268, v133, &v297, v141);
            v112 = v297;
            v133 = v298;
          }
        }

        v131;
        v147._rawBits = 1;
        v148._rawBits = (v138 << 16) | 1;
        rawBits = _StringGuts.validateScalarRange(_:)(v147, v148, v130, v131)._rawBits;
        if (rawBits < 0x10000)
        {
          rawBits |= 3uLL;
        }

        if (rawBits >> 16 || v140 >> 16 != v138)
        {
          goto LABEL_180;
        }

        v150 = v131;
LABEL_181:
        if ((v150 & 0x2000000000000000) != 0)
        {
          v150;
        }

        else if ((v150 & 0x1000000000000000) != 0)
        {
          v130 = _StringGuts._foreignConvertedToSmall()(v130, v150);
          v284 = v283;
          v150;
          v150 = v284;
        }

        else
        {
          if ((v130 & 0x1000000000000000) != 0)
          {
            v269 = ((v150 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v270 = v130 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v269 = _StringObject.sharedUTF8.getter(v130, v150);
          }

          closure #1 in _StringGuts._convertedToSmall()(v269, v270, &v297, v149);
          if (v136)
          {
            goto LABEL_350;
          }

          v150;
          v130 = v297;
          v150 = v298;
        }

        v163 = specialized _SmallString.init(_:appending:)(*&v112, v133, v130, v150);
        if ((v165 & 1) == 0)
        {
          v166 = v163;
          v167 = v164;
          v113;
          swift_bridgeObjectRelease_n(v131, 2);
          v299._countAndFlagsBits = v166;
          v299._object = v167;
          v151 = v296;
          goto LABEL_219;
        }

        goto LABEL_339;
      }
    }

    else if (v143 <= 15)
    {
      goto LABEL_159;
    }

    _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v143, v142);
    if ((v131 & 0x1000000000000000) != 0)
    {
      _StringGuts._foreignAppendInPlace(_:)(v130, v131, 0, v138);
      swift_bridgeObjectRelease_n(v131, 2);
      goto LABEL_218;
    }

    v151 = v296;
    if (v135)
    {
      if ((v130 & 0x1000000000000000) != 0)
      {
        v152 = (v131 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v153 = v293;
        v136 = 0;
        v154 = v293;
      }

      else
      {
        v278 = _StringObject.sharedUTF8.getter(v130, v131);
        if (v279 < v293)
        {
          goto LABEL_307;
        }

        v152 = v278;
        v154 = v279;
        v151 = v296;
        v153 = v293;
        v136 = 0;
      }

      v155 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v153, v152, v154);
      closure #1 in _StringGuts.append(_:)(v155, v156, &v299, v130 < 0);
    }

    else
    {
      v297 = v130;
      v298 = v131 & 0xFFFFFFFFFFFFFFLL;
      closure #1 in _StringGuts.append(_:)(&v297, HIBYTE(v131) & 0xF, &v299, (v131 & 0x4000000000000000) != 0);
      v136 = 0;
    }

    swift_bridgeObjectRelease_n(v131, 2);
    goto LABEL_219;
  }

  if ((v129 & 0x2000000000000000) == 0)
  {
    v137 = v128 & 0xFFFFFFFFFFFFLL;
    v135 = 1;
    goto LABEL_148;
  }

  v157 = v132 + v136;
  if (v132 + v136 >= 0x10)
  {
    v135 = 0;
    v138 = HIBYTE(v129) & 0xF;
    v293 = v128 & 0xFFFFFFFFFFFFLL;
    if ((v129 & 0x1000000000000000) != 0)
    {
      goto LABEL_174;
    }

LABEL_150:
    rawBits = v129;
    v142 = v138;
    if ((v113 & 0x1000000000000000) == 0)
    {
      goto LABEL_151;
    }

LABEL_177:
    rawBits = String.UTF8View._foreignCount()();
    v143 = rawBits + v142;
    if (!__OFADD__(rawBits, v142))
    {
      goto LABEL_152;
    }

LABEL_179:
    __break(1u);
LABEL_180:
    v130 = specialized static String._copying(_:)(rawBits, v140, v130, v131);
    v150 = v162;
    v131;
    goto LABEL_181;
  }

  if (v136)
  {
    v178 = 0;
    v179 = 0;
    v180 = 8 * v132;
    v181 = v113;
    do
    {
      v182 = v129 >> (v178 & 0x38);
      if (v179 < 8)
      {
        v182 = v128 >> v178;
      }

      v183 = (v182 << (v180 & 0x38)) | ((-255 << (v180 & 0x38)) - 1) & v181;
      v184 = (v182 << v180) | ((-255 << v180) - 1) & *&v112;
      if (v132 <= 7)
      {
        v112 = v184;
      }

      else
      {
        v181 = v183;
      }

      ++v132;
      v180 += 8;
      v178 += 8;
      ++v179;
    }

    while (8 * v136 != v178);
  }

  else
  {
    v181 = v113;
  }

  v113;
  v131;
  v186 = 0xA000000000000000;
  if (!(*&v112 & 0x8080808080808080 | v181 & 0x80808080808080))
  {
    v186 = 0xE000000000000000;
  }

  v299._countAndFlagsBits = v112;
  v299._object = (v186 & 0xFF00000000000000 | (v157 << 56) | v181 & 0xFFFFFFFFFFFFFFLL);
LABEL_218:
  v151 = v296;
  v136 = 0;
LABEL_219:
  v187 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(", intValue: ", 0xDuLL, 1);
  v188 = v187._countAndFlagsBits;
  v189 = v187._object;
  v190 = v299._object;
  v191 = (v299._object >> 56) & 0xF;
  if ((v299._object & 0x2000000000000000) == 0)
  {
    v191 = v299._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v191 && (v299._countAndFlagsBits & ~v299._object & 0x2000000000000000) == 0)
  {
    v299._object;
    v299 = v187;
    goto LABEL_231;
  }

  if ((v299._object & 0x2000000000000000) != 0)
  {
    if ((v187._object & 0x2000000000000000) != 0)
    {
      v193 = specialized _SmallString.init(_:appending:)(v299._countAndFlagsBits, v299._object, v187._countAndFlagsBits, v187._object);
      if (v195)
      {
        goto LABEL_229;
      }

      v243 = v193;
      v244 = v194;
      v190;
      v187._object;
      v299._countAndFlagsBits = v243;
      v299._object = v244;
      v189 = v244;
      v188 = v243;
      goto LABEL_231;
    }

LABEL_227:
    v192 = v187._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    goto LABEL_230;
  }

  if ((v187._object & 0x2000000000000000) == 0)
  {
    goto LABEL_227;
  }

LABEL_229:
  v192 = (v187._object >> 56) & 0xF;
LABEL_230:
  v187._object;
  _StringGuts.append(_:)(v187._countAndFlagsBits, v187._object, 0, v192, v196, v197, v198, v199, v200, v201, v202, v203);
  swift_bridgeObjectRelease_n(v187._object, 2);
  v188 = v299._countAndFlagsBits;
  v189 = v299._object;
LABEL_231:
  v204 = HIBYTE(v189) & 0xF;
  v205 = *&v188 & 0xFFFFFFFFFFFFLL;
  if ((v189 & 0x2000000000000000) != 0)
  {
    v206 = HIBYTE(v189) & 0xF;
  }

  else
  {
    v206 = *&v188 & 0xFFFFFFFFFFFFLL;
  }

  if (!v206 && (*&v188 & ~v189 & 0x2000000000000000) == 0)
  {
    v189;
    v299._countAndFlagsBits = v295;
    v299._object = v151;
    goto LABEL_293;
  }

  v207 = (v151 & 0x2000000000000000) == 0;
  v208 = HIBYTE(v151) & 0xF;
  if ((v189 & 0x2000000000000000) == 0)
  {
    v113 = *&v295 & 0xFFFFFFFFFFFFLL;
    v209 = HIBYTE(v151) & 0xF;
    if ((v151 & 0x2000000000000000) == 0)
    {
LABEL_240:
      v209 = v113;
    }

    if ((v151 & 0x1000000000000000) == 0)
    {
      goto LABEL_242;
    }

LABEL_267:
    swift_bridgeObjectRetain_n(v151, 2);
    v238._rawBits = 1;
    v239._rawBits = (v209 << 16) | 1;
    v240._rawBits = _StringGuts.validateScalarRange(_:)(v238, v239, *&v295, v151)._rawBits;
    if (v240._rawBits < 0x10000)
    {
      v240._rawBits |= 3;
    }

    v211 = String.UTF8View.distance(from:to:)(v240, v241);
    v296;
    if ((v189 & 0x1000000000000000) != 0)
    {
      goto LABEL_270;
    }

LABEL_243:
    v64 = __OFADD__(v206, v211);
    v212 = v206 + v211;
    if (v64)
    {
      goto LABEL_272;
    }

LABEL_244:
    if ((*&v188 & ~v189 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v189 & 0xFFFFFFFFFFFFFFFLL))
    {
      v213 = _StringGuts.nativeUnusedCapacity.getter(*&v188, v189);
      if (v214)
      {
        goto LABEL_339;
      }

      v215 = (v189 >> 61) & 1;
      if (v213 < v211)
      {
        LODWORD(v215) = 1;
      }

      if (v212 <= 15 && v215)
      {
        goto LABEL_251;
      }
    }

    else if (v212 <= 15)
    {
LABEL_251:
      if ((v189 & 0x2000000000000000) != 0)
      {
        v216 = v189;
        v217 = v296;
      }

      else
      {
        v217 = v296;
        if ((v189 & 0x1000000000000000) != 0)
        {
          v188 = _StringGuts._foreignConvertedToSmall()(*&v188, v189);
          v216 = v285;
        }

        else
        {
          if ((*&v188 & 0x1000000000000000) != 0)
          {
            v271 = ((v189 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v271 = _StringObject.sharedUTF8.getter(*&v188, v189);
            v205 = v289;
          }

          closure #1 in _StringGuts._convertedToSmall()(v271, v205, &v297, v210);
          if (v136)
          {
            goto LABEL_350;
          }

          v188 = v297;
          v216 = v298;
        }
      }

      v217;
      v218._rawBits = 1;
      v219._rawBits = (v209 << 16) | 1;
      v220._rawBits = _StringGuts.validateScalarRange(_:)(v218, v219, *&v295, v217)._rawBits;
      if (v220._rawBits < 0x10000)
      {
        v220._rawBits |= 3;
      }

      v222 = Substring.description.getter(v220._rawBits, v221._rawBits, *&v295, v217);
      v224 = v223;
      v217;
      if ((v224 & 0x2000000000000000) != 0)
      {
        v224;
        goto LABEL_257;
      }

      if ((v224 & 0x1000000000000000) != 0)
      {
        v222 = _StringGuts._foreignConvertedToSmall()(*&v222, v224);
        v287 = v286;
        v224;
        v224 = v287;
LABEL_257:
        v226 = specialized _SmallString.init(_:appending:)(*&v188, v216, *&v222, v224);
        if ((v228 & 1) == 0)
        {
          v229 = v226;
          v230 = v227;
          v189;
          swift_bridgeObjectRelease_n(v217, 2);
          v299._countAndFlagsBits = v229;
          v299._object = v230;
          goto LABEL_293;
        }

LABEL_339:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if ((*&v222 & 0x1000000000000000) != 0)
      {
        v272 = ((v224 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v273 = *&v222 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v272 = _StringObject.sharedUTF8.getter(*&v222, v224);
      }

      closure #1 in _StringGuts._convertedToSmall()(v272, v273, &v297, v225);
      if (!v136)
      {
        v224;
        v222 = v297;
        v224 = v298;
        goto LABEL_257;
      }

      do
      {
LABEL_350:
        v136;
        __break(1u);
LABEL_351:
        v232 = v280;
        v233 = v281;
        v231 = v295;
        v212 = v296;
LABEL_264:
        v234 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v113, v232, v233);
        v236 = *&v231 >> 63;
LABEL_287:
        closure #1 in _StringGuts.append(_:)(v234, v235, &v299, v236);
      }

      while (v136);
      goto LABEL_288;
    }

    _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v212, v211);
    v212 = v296;
    if ((v296 & 0x1000000000000000) != 0)
    {
      goto LABEL_273;
    }

    v231 = v295;
    if (!v207)
    {
      v236 = (v296 >> 62) & 1;
      v297 = v295;
      v298 = v296 & 0xFFFFFFFFFFFFFFLL;
      v234 = &v297;
      v235 = v208;
      goto LABEL_287;
    }

    if ((*&v295 & 0x1000000000000000) != 0)
    {
      v232 = (v296 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v233 = v113;
      goto LABEL_264;
    }

    v280 = _StringObject.sharedUTF8.getter(*&v295, v296);
    if (v281 >= v113)
    {
      goto LABEL_351;
    }

LABEL_307:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((v151 & 0x2000000000000000) == 0)
  {
    v113 = *&v295 & 0xFFFFFFFFFFFFLL;
    v207 = 1;
    goto LABEL_240;
  }

  v237 = v204 + v208;
  if (v204 + v208 < 0x10)
  {
    if (v208)
    {
      v245 = 0;
      v246 = 0;
      v247 = 8 * v204;
      v248 = v189;
      do
      {
        v249 = v151 >> (v245 & 0x38);
        if (v246 < 8)
        {
          v249 = *&v295 >> v245;
        }

        v250 = (v249 << (v247 & 0x38)) | ((-255 << (v247 & 0x38)) - 1) & v248;
        v251 = (v249 << v247) | ((-255 << v247) - 1) & *&v188;
        if (v204 <= 7)
        {
          v188 = v251;
        }

        else
        {
          v248 = v250;
        }

        ++v204;
        v247 += 8;
        v245 += 8;
        ++v246;
      }

      while (8 * v208 != v245);
    }

    else
    {
      v248 = v189;
    }

    v189;
    v151;
    v252 = 0xA000000000000000;
    if (!(*&v188 & 0x8080808080808080 | v248 & 0x80808080808080))
    {
      v252 = 0xE000000000000000;
    }

    v299._countAndFlagsBits = v188;
    v299._object = (v252 & 0xFF00000000000000 | (v237 << 56) | v248 & 0xFFFFFFFFFFFFFFLL);
  }

  else
  {
    v207 = 0;
    v113 = *&v295 & 0xFFFFFFFFFFFFLL;
    v209 = HIBYTE(v151) & 0xF;
    if ((v151 & 0x1000000000000000) != 0)
    {
      goto LABEL_267;
    }

LABEL_242:
    v151;
    v211 = v209;
    if ((v189 & 0x1000000000000000) == 0)
    {
      goto LABEL_243;
    }

LABEL_270:
    v242 = String.UTF8View._foreignCount()();
    v212 = v242 + v211;
    if (!__OFADD__(v242, v211))
    {
      goto LABEL_244;
    }

LABEL_272:
    __break(1u);
LABEL_273:
    _StringGuts._foreignAppendInPlace(_:)(*&v295, v212, 0, v209);
LABEL_288:
    swift_bridgeObjectRelease_n(v212, 2);
  }

LABEL_293:
  v253 = v299._object;
  v254 = (v299._object >> 56) & 0xF;
  if ((v299._object & 0x2000000000000000) == 0)
  {
    v254 = v299._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v254 || (v299._countAndFlagsBits & ~v299._object & 0x2000000000000000) != 0)
  {
    if ((v299._object & 0x2000000000000000) != 0 && (v255 = specialized _SmallString.init(_:appending:)(v299._countAndFlagsBits, v299._object, 0x29uLL, 0xE100000000000000), (v256 & 1) == 0))
    {
      v266 = v255;
      v253;
      0xE100000000000000;
      return v266;
    }

    else
    {
      0xE100000000000000;
      _StringGuts.append(_:)(41, 0xE100000000000000, 0, 1, v257, v258, v259, v260, v261, v262, v263, v264);
      swift_bridgeObjectRelease_n(0xE100000000000000, 2);
      return v299._countAndFlagsBits;
    }
  }

  else
  {
    v299._object;
    return 41;
  }
}

uint64_t KeyedEncodingContainerProtocol.encode(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5)
{
  return KeyedEncodingContainerProtocol.encode(_:forKey:)(a1, a2, a3, a4, a5);
}

{
  swift_allocError(&type metadata for EncodingError, &protocol witness table for EncodingError, 0, 0);
  v11 = v10;
  v10[3] = &type metadata for Int128;
  v12 = swift_allocObject(&unk_1EEEADD40, 0x20, 0xFuLL);
  *v11 = v12;
  v12[2] = a1;
  v12[3] = a2;
  v13 = (*(a5 + 24))(a4, a5);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, _ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
  inited = swift_initStackObject(v14, v20);
  *(inited + 1) = xmmword_18071DB30;
  swift_getAssociatedTypeWitness(0, a5, a4, &protocol requirements base descriptor for KeyedEncodingContainerProtocol, associated type descriptor for KeyedEncodingContainerProtocol.Key);
  v17 = v16;
  inited[7] = v16;
  inited[8] = swift_getAssociatedConformanceWitness(a5, a4, v16, &protocol requirements base descriptor for KeyedEncodingContainerProtocol, associated conformance descriptor for KeyedEncodingContainerProtocol.KeyedEncodingContainerProtocol.Key: CodingKey);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(inited + 4);
  (*(*(v17 - 8) + 16))(boxed_opaque_existential_0Tm, a3, v17);
  v21 = v13;
  specialized Array.append<A>(contentsOf:)(inited, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, _ss23_ContiguousArrayStorageCys9CodingKey_pGMR, &_ss9CodingKey_pMd, _ss9CodingKey_pMR);
  v11[4] = v21;
  v11[5] = 0xD00000000000002ELL;
  v11[6] = 0x800000018066C0B0;
  v11[7] = 0;
  return swift_willThrow();
}

{
  return KeyedEncodingContainerProtocol.encode(_:forKey:)(a1, a2, a3, a4, a5);
}

{
  swift_allocError(&type metadata for EncodingError, &protocol witness table for EncodingError, 0, 0);
  v11 = v10;
  v10[3] = &type metadata for UInt128;
  v12 = swift_allocObject(&unk_1EEEADD40, 0x20, 0xFuLL);
  *v11 = v12;
  v12[2] = a1;
  v12[3] = a2;
  v13 = (*(a5 + 24))(a4, a5);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, _ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
  inited = swift_initStackObject(v14, v20);
  *(inited + 1) = xmmword_18071DB30;
  swift_getAssociatedTypeWitness(0, a5, a4, &protocol requirements base descriptor for KeyedEncodingContainerProtocol, associated type descriptor for KeyedEncodingContainerProtocol.Key);
  v17 = v16;
  inited[7] = v16;
  inited[8] = swift_getAssociatedConformanceWitness(a5, a4, v16, &protocol requirements base descriptor for KeyedEncodingContainerProtocol, associated conformance descriptor for KeyedEncodingContainerProtocol.KeyedEncodingContainerProtocol.Key: CodingKey);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(inited + 4);
  (*(*(v17 - 8) + 16))(boxed_opaque_existential_0Tm, a3, v17);
  v21 = v13;
  specialized Array.append<A>(contentsOf:)(inited, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, _ss23_ContiguousArrayStorageCys9CodingKey_pGMR, &_ss9CodingKey_pMd, _ss9CodingKey_pMR);
  v11[4] = v21;
  v11[5] = 0xD00000000000002FLL;
  v11[6] = 0x800000018066C0E0;
  v11[7] = 0;
  return swift_willThrow();
}

uint64_t KeyedEncodingContainerProtocol.encodeConditional<A>(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return KeyedEncodingContainerProtocol.encodeConditional<A>(_:forKey:)(a1, a2, a5, a3, a6, a4);
}

{
  v7 = a1;
  return (*(a5 + 168))(&v7, a2, a4, a6, a3, a5);
}

uint64_t KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result != 2)
  {
    return (*(a4 + 40))(result & 1);
  }

  return result;
}

{
  if ((result & 0x100000000) == 0)
  {
    return (*(a4 + 64))(a2, a3, a4, *&result);
  }

  return result;
}

{
  if ((result & 0x100) == 0)
  {
    return (*(a4 + 80))();
  }

  return result;
}

{
  if ((result & 0x10000) == 0)
  {
    return (*(a4 + 88))();
  }

  return result;
}

{
  if ((result & 0x100000000) == 0)
  {
    return (*(a4 + 96))();
  }

  return result;
}

{
  if ((result & 0x100) == 0)
  {
    return (*(a4 + 128))();
  }

  return result;
}

{
  if ((result & 0x10000) == 0)
  {
    return (*(a4 + 136))();
  }

  return result;
}

{
  if ((result & 0x100000000) == 0)
  {
    return (*(a4 + 144))();
  }

  return result;
}

uint64_t KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)(a1, a2, a3, a4, a5);
}

{
  if (a2)
  {
    return (*(a5 + 48))();
  }

  return result;
}

uint64_t KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)(a1, a2 & 1, a3, a4, a5);
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)(a1, a2 & 1, a3, a4, a5);
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)(a1, a2 & 1, a3, a4, a5);
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)(a1, a2 & 1, a3, a4, a5);
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)(a1, a2 & 1, a3, a4, a5);
}

uint64_t KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)(uint64_t result, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((a2 & 1) == 0)
  {
    return (*(a5 + 56))(a3, a4, a5, *&result);
  }

  return result;
}

{
  if ((a2 & 1) == 0)
  {
    return (*(a5 + 72))(result, a3, a4, a5);
  }

  return result;
}

{
  if ((a2 & 1) == 0)
  {
    return (*(a5 + 104))(result, a3, a4, a5);
  }

  return result;
}

{
  if ((a2 & 1) == 0)
  {
    return (*(a5 + 120))(result, a3, a4, a5);
  }

  return result;
}

{
  if ((a2 & 1) == 0)
  {
    return (*(a5 + 152))(result, a3, a4, a5);
  }

  return result;
}

uint64_t KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)(a1, a2, a3, a4, KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:));
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)(a1, a2, a3, a4, KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:));
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)(a1, a2, a3, a4, KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:));
}

uint64_t KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)(__int16 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)(a1, a2, a3, a4, KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:));
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)(a1, a2, a3, a4, KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:));
}

uint64_t KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)(a1, a2, a3, a4, KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:));
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)(a1, a2, a3, a4, KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:));
}

uint64_t KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)(a1, a2, a3 & 1, a4, a5, a6);
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)(a1, a2, a3 & 1, a4, a5, a6);
}

uint64_t KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a3 & 1) == 0)
  {
    return (*(a6 + 112))(result, a2, a4, a5, a6);
  }

  return result;
}

{
  if ((a3 & 1) == 0)
  {
    return (*(a6 + 160))(result, a2, a4, a5, a6);
  }

  return result;
}

uint64_t KeyedEncodingContainerProtocol.encodeIfPresent<A>(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return KeyedEncodingContainerProtocol.encodeIfPresent<A>(_:forKey:)(a1, a2, a5, a3, a6, a4);
}

{
  v20 = a6;
  v21 = a3;
  v19 = a2;
  v9 = type metadata accessor for Optional(0, a4, a3, a4);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v18 - v12;
  v14 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v16 = &v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, a1, v9);
  if ((*(v14 + 48))(v13, 1, a4) == 1)
  {
    return (*(v10 + 8))(v13, v9);
  }

  (*(v14 + 32))(v16, v13, a4);
  (*(a5 + 168))(v16, v19, a4, v20, v21, a5);
  return (*(v14 + 8))(v16, a4);
}

uint64_t KeyedEncodingContainer.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, char **a4@<X8>)
{
  v7 = type metadata accessor for _KeyedEncodingContainerBox(0, a2, a3, a3);
  v8 = swift_allocObject(v7, *(v7 + 48), *(v7 + 52));
  result = (*(*(a2 - 8) + 32))(&v8[*(*v8 + 432)], a1, a2);
  *a4 = v8;
  return result;
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(**v3 + 104))(a1, a2, *(a3 + 16), *(a3 + 24));
}

{
  return (*(**v3 + 136))(a1, a2, *(a3 + 16), *(a3 + 24));
}

{
  return (*(**v3 + 144))(a1, a2, *(a3 + 16), *(a3 + 24));
}

{
  return (*(**v3 + 152))(a1, a2, *(a3 + 16), *(a3 + 24));
}

{
  return (*(**v3 + 160))(a1, a2, *(a3 + 16), *(a3 + 24));
}

{
  return (*(**v3 + 168))(a1, a2, *(a3 + 16), *(a3 + 24));
}

{
  return (*(**v3 + 184))(a1, a2, *(a3 + 16), *(a3 + 24));
}

{
  return (*(**v3 + 192))(a1, a2, *(a3 + 16), *(a3 + 24));
}

{
  return (*(**v3 + 200))(a1, a2, *(a3 + 16), *(a3 + 24));
}

{
  return (*(**v3 + 208))(a1, a2, *(a3 + 16), *(a3 + 24));
}

{
  return (*(**v3 + 216))(a1, a2, *(a3 + 16), *(a3 + 24));
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return (*(**v4 + 112))(a1, a2, a3, *(a4 + 16), *(a4 + 24));
}

{
  return (*(**v4 + 176))(a1, a2, a3, *(a4 + 16), *(a4 + 24));
}

{
  return (*(**v4 + 224))(a1, a2, a3, *(a4 + 16), *(a4 + 24));
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)(uint64_t a1, uint64_t a2)
{
  return (*(**v2 + 120))(a1, *(a2 + 16), *(a2 + 24));
}

{
  return (*(**v2 + 128))(a1, *(a2 + 16), *(a2 + 24));
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  return (*(**v4 + 264))(a1, a2 & 1, a3, *(a4 + 16), *(a4 + 24));
}

{
  return (*(**v4 + 280))(a1, a2 & 1, a3, *(a4 + 16), *(a4 + 24));
}

{
  return (*(**v4 + 312))(a1, a2 & 1, a3, *(a4 + 16), *(a4 + 24));
}

{
  return (*(**v4 + 328))(a1, a2 & 1, a3, *(a4 + 16), *(a4 + 24));
}

{
  return (*(**v4 + 360))(a1, a2 & 1, a3, *(a4 + 16), *(a4 + 24));
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(**v3 + 272))(a1 | ((HIDWORD(a1) & 1) << 32), a2, *(a3 + 16), *(a3 + 24));
}

{
  return (*(**v3 + 304))(a1 | ((HIDWORD(a1) & 1) << 32), a2, *(a3 + 16), *(a3 + 24));
}

{
  return (*(**v3 + 352))(a1 | ((HIDWORD(a1) & 1) << 32), a2, *(a3 + 16), *(a3 + 24));
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)(__int16 a1, uint64_t a2, uint64_t a3)
{
  return (*(**v3 + 288))(a1 & 0x1FF, a2, *(a3 + 16), *(a3 + 24));
}

{
  return (*(**v3 + 336))(a1 & 0x1FF, a2, *(a3 + 16), *(a3 + 24));
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)(int a1, uint64_t a2, uint64_t a3)
{
  return (*(**v3 + 296))(a1 & 0x1FFFF, a2, *(a3 + 16), *(a3 + 24));
}

{
  return (*(**v3 + 344))(a1 & 0x1FFFF, a2, *(a3 + 16), *(a3 + 24));
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  return (*(**v5 + 320))(a1, a2, a3 & 1, a4, *(a5 + 16), *(a5 + 24));
}

{
  return (*(**v5 + 368))(a1, a2, a3 & 1, a4, *(a5 + 16), *(a5 + 24));
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encode(_:forKey:) in conformance KeyedEncodingContainer<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return KeyedEncodingContainer.encode(_:forKey:)(a1, a2, a3);
}

{
  return KeyedEncodingContainer.encode(_:forKey:)(a1, a2, a3);
}

{
  return KeyedEncodingContainer.encode(_:forKey:)(a1, a2, a3);
}

{
  return KeyedEncodingContainer.encode(_:forKey:)(a1, a2, a3);
}

{
  return KeyedEncodingContainer.encode(_:forKey:)(a1, a2, a3);
}

{
  return KeyedEncodingContainer.encode(_:forKey:)(a1, a2, a3);
}

{
  return KeyedEncodingContainer.encode(_:forKey:)(a1, a2, a3);
}

{
  return KeyedEncodingContainer.encode(_:forKey:)(a1, a2, a3);
}

{
  return KeyedEncodingContainer.encode(_:forKey:)(a1, a2, a3);
}

{
  return KeyedEncodingContainer.encode(_:forKey:)(a1, a2, a3);
}

{
  return KeyedEncodingContainer.encode(_:forKey:)(a1, a2, a3);
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encode(_:forKey:) in conformance KeyedEncodingContainer<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return KeyedEncodingContainer.encode(_:forKey:)(a1, a2, a3, a4);
}

{
  return KeyedEncodingContainer.encode(_:forKey:)(a1, a2, a3, a4);
}

{
  return KeyedEncodingContainer.encode(_:forKey:)(a1, a2, a3, a4);
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encode(_:forKey:) in conformance KeyedEncodingContainer<A>(uint64_t a1, uint64_t a2)
{
  return KeyedEncodingContainer.encode(_:forKey:)(a1, a2);
}

{
  return KeyedEncodingContainer.encode(_:forKey:)(a1, a2);
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedEncodingContainer<A>(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)(a1, a2 & 1, a3, a4);
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)(a1, a2 & 1, a3, a4);
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)(a1, a2 & 1, a3, a4);
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)(a1, a2 & 1, a3, a4);
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)(a1, a2 & 1, a3, a4);
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedEncodingContainer<A>(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedEncodingContainer<A>(a1, a2, a3, a4, KeyedEncodingContainer.encodeIfPresent(_:forKey:));
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedEncodingContainer<A>(a1, a2, a3, a4, KeyedEncodingContainer.encodeIfPresent(_:forKey:));
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedEncodingContainer<A>(a1, a2, a3, a4, KeyedEncodingContainer.encodeIfPresent(_:forKey:));
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedEncodingContainer<A>(__int16 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedEncodingContainer<A>(a1, a2, a3, a4, KeyedEncodingContainer.encodeIfPresent(_:forKey:));
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedEncodingContainer<A>(a1, a2, a3, a4, KeyedEncodingContainer.encodeIfPresent(_:forKey:));
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedEncodingContainer<A>(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedEncodingContainer<A>(a1, a2, a3, a4, KeyedEncodingContainer.encodeIfPresent(_:forKey:));
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedEncodingContainer<A>(a1, a2, a3, a4, KeyedEncodingContainer.encodeIfPresent(_:forKey:));
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedEncodingContainer<A>(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)(a1, a2, a3 & 1, a4, a5);
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)(a1, a2, a3 & 1, a4, a5);
}

uint64_t KeyedDecodingContainerProtocol.decode(_:forKey:)(uint64_t a1, const char *a2, uint64_t a3)
{
  return KeyedDecodingContainerProtocol.decode(_:forKey:)(a1, a2, a3);
}

{
  swift_allocError(&type metadata for DecodingError, &protocol witness table for DecodingError, 0, 0);
  v7 = v6;
  v8 = (*(a3 + 24))(a2, a3);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, _ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
  inited = swift_initStackObject(v9, v16);
  *(inited + 1) = xmmword_18071DB30;
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for KeyedDecodingContainerProtocol, associated type descriptor for KeyedDecodingContainerProtocol.Key);
  v12 = v11;
  inited[7] = v11;
  inited[8] = swift_getAssociatedConformanceWitness(a3, a2, v11, &protocol requirements base descriptor for KeyedDecodingContainerProtocol, associated conformance descriptor for KeyedDecodingContainerProtocol.KeyedDecodingContainerProtocol.Key: CodingKey);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(inited + 4);
  (*(*(v12 - 8) + 16))(boxed_opaque_existential_0Tm, a1, v12);
  v17 = v8;
  specialized Array.append<A>(contentsOf:)(inited, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, _ss23_ContiguousArrayStorageCys9CodingKey_pGMR, &_ss9CodingKey_pMd, _ss9CodingKey_pMR);
  v14 = v17;
  *v7 = &type metadata for Int128;
  *(v7 + 8) = v14;
  *(v7 + 16) = 0xD00000000000002ELL;
  *(v7 + 24) = 0x800000018066C110;
  *(v7 + 32) = 0;
  *(v7 + 72) = 0;
  return swift_willThrow();
}

{
  return KeyedDecodingContainerProtocol.decode(_:forKey:)(a1, a2, a3);
}

{
  swift_allocError(&type metadata for DecodingError, &protocol witness table for DecodingError, 0, 0);
  v7 = v6;
  v8 = (*(a3 + 24))(a2, a3);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, _ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
  inited = swift_initStackObject(v9, v16);
  *(inited + 1) = xmmword_18071DB30;
  swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for KeyedDecodingContainerProtocol, associated type descriptor for KeyedDecodingContainerProtocol.Key);
  v12 = v11;
  inited[7] = v11;
  inited[8] = swift_getAssociatedConformanceWitness(a3, a2, v11, &protocol requirements base descriptor for KeyedDecodingContainerProtocol, associated conformance descriptor for KeyedDecodingContainerProtocol.KeyedDecodingContainerProtocol.Key: CodingKey);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(inited + 4);
  (*(*(v12 - 8) + 16))(boxed_opaque_existential_0Tm, a1, v12);
  v17 = v8;
  specialized Array.append<A>(contentsOf:)(inited, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, _ss23_ContiguousArrayStorageCys9CodingKey_pGMR, &_ss9CodingKey_pMd, _ss9CodingKey_pMR);
  v14 = v17;
  *v7 = &type metadata for UInt128;
  *(v7 + 8) = v14;
  *(v7 + 16) = 0xD00000000000002FLL;
  *(v7 + 24) = 0x800000018066C140;
  *(v7 + 32) = 0;
  *(v7 + 72) = 0;
  return swift_willThrow();
}

uint64_t KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)(a1, a2, a3);
}

{
  if (((*(a3 + 40))() & 1) == 0)
  {
    return 2;
  }

  result = (*(a3 + 48))(a1, a2, a3);
  if (!v3)
  {
    if (result)
    {
      return 2;
    }

    else
    {
      return (*(a3 + 56))(a1, a2, a3) & 1;
    }
  }

  return result;
}

{
  return KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)(a1, a2, a3);
}

{
  if (((*(a3 + 40))() & 1) == 0)
  {
    return 0;
  }

  result = (*(a3 + 48))(a1, a2, a3);
  if (!v3)
  {
    if (result)
    {
      return 0;
    }

    else
    {
      return (*(a3 + 64))(a1, a2, a3);
    }
  }

  return result;
}

{
  return KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)(a1, a2, a3, KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:));
}

{
  if (((*(a3 + 40))() & 1) == 0)
  {
    v8 = 0;
    v9 = 1;
    return v8 | (v9 << 32);
  }

  result = (*(a3 + 48))(a1, a2, a3);
  if (!v3)
  {
    if (result)
    {
      v8 = 0;
      v9 = 1;
    }

    else
    {
      (*(a3 + 80))(a1, a2, a3);
      v9 = 0;
      v8 = v10;
    }

    return v8 | (v9 << 32);
  }

  return result;
}

{
  result = KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)(a1, a2, a3);
  if (v3)
  {
    return v5;
  }

  return result;
}

{
  if (((*(a3 + 40))() & 1) == 0)
  {
    return 0;
  }

  result = (*(a3 + 48))(a1, a2, a3);
  if (!v3)
  {
    if (result)
    {
      return 0;
    }

    else
    {
      return (*(a3 + 88))(a1, a2, a3);
    }
  }

  return result;
}

{
  return KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)(a1, a2, a3, KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:));
}

{
  if (((*(a3 + 40))() & 1) == 0)
  {
    v8 = 0;
    v9 = 1;
    return v8 | (v9 << 8);
  }

  result = (*(a3 + 48))(a1, a2, a3);
  if (!v3)
  {
    if (result)
    {
      v8 = 0;
      v9 = 1;
    }

    else
    {
      v8 = (*(a3 + 96))(a1, a2, a3);
      v9 = 0;
    }

    return v8 | (v9 << 8);
  }

  return result;
}

{
  return KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)(a1, a2, a3, KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:));
}

{
  if (((*(a3 + 40))() & 1) == 0)
  {
    v8 = 0;
    v9 = 1;
    return v8 | (v9 << 16);
  }

  result = (*(a3 + 48))(a1, a2, a3);
  if (!v3)
  {
    if (result)
    {
      v8 = 0;
      v9 = 1;
    }

    else
    {
      v8 = (*(a3 + 104))(a1, a2, a3);
      v9 = 0;
    }

    return v8 | (v9 << 16);
  }

  return result;
}

{
  return KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)(a1, a2, a3, KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:));
}

{
  if (((*(a3 + 40))() & 1) == 0)
  {
    v8 = 0;
    v9 = 1;
    return v8 | (v9 << 32);
  }

  result = (*(a3 + 48))(a1, a2, a3);
  if (!v3)
  {
    if (result)
    {
      v8 = 0;
      v9 = 1;
    }

    else
    {
      v8 = (*(a3 + 112))(a1, a2, a3);
      v9 = 0;
    }

    return v8 | (v9 << 32);
  }

  return result;
}

{
  result = KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)(a1, a2, a3);
  if (v3)
  {
    return v5;
  }

  return result;
}

{
  if (((*(a3 + 40))() & 1) == 0)
  {
    return 0;
  }

  result = (*(a3 + 48))(a1, a2, a3);
  if (!v3)
  {
    if (result)
    {
      return 0;
    }

    else
    {
      return (*(a3 + 120))(a1, a2, a3);
    }
  }

  return result;
}

{
  return KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)(a1, a2, a3, KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:));
}

{
  if (((*(a3 + 40))() & 1) == 0)
  {
    return 0;
  }

  result = (*(a3 + 48))(a1, a2, a3);
  if (!v3)
  {
    if (result)
    {
      return 0;
    }

    else
    {
      return (*(a3 + 128))(a1, a2, a3);
    }
  }

  return result;
}

{
  result = KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)(a1, a2, a3);
  if (v3)
  {
    return v5;
  }

  return result;
}

{
  if (((*(a3 + 40))() & 1) == 0)
  {
    return 0;
  }

  result = (*(a3 + 48))(a1, a2, a3);
  if (!v3)
  {
    if (result)
    {
      return 0;
    }

    else
    {
      return (*(a3 + 136))(a1, a2, a3);
    }
  }

  return result;
}

{
  return KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)(a1, a2, a3, KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:));
}

{
  if (((*(a3 + 40))() & 1) == 0)
  {
    v8 = 0;
    v9 = 1;
    return v8 | (v9 << 8);
  }

  result = (*(a3 + 48))(a1, a2, a3);
  if (!v3)
  {
    if (result)
    {
      v8 = 0;
      v9 = 1;
    }

    else
    {
      v8 = (*(a3 + 144))(a1, a2, a3);
      v9 = 0;
    }

    return v8 | (v9 << 8);
  }

  return result;
}

{
  return KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)(a1, a2, a3, KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:));
}

{
  if (((*(a3 + 40))() & 1) == 0)
  {
    v8 = 0;
    v9 = 1;
    return v8 | (v9 << 16);
  }

  result = (*(a3 + 48))(a1, a2, a3);
  if (!v3)
  {
    if (result)
    {
      v8 = 0;
      v9 = 1;
    }

    else
    {
      v8 = (*(a3 + 152))(a1, a2, a3);
      v9 = 0;
    }

    return v8 | (v9 << 16);
  }

  return result;
}

{
  return KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)(a1, a2, a3, KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:));
}

{
  if (((*(a3 + 40))() & 1) == 0)
  {
    v8 = 0;
    v9 = 1;
    return v8 | (v9 << 32);
  }

  result = (*(a3 + 48))(a1, a2, a3);
  if (!v3)
  {
    if (result)
    {
      v8 = 0;
      v9 = 1;
    }

    else
    {
      v8 = (*(a3 + 160))(a1, a2, a3);
      v9 = 0;
    }

    return v8 | (v9 << 32);
  }

  return result;
}

{
  result = KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)(a1, a2, a3);
  if (v3)
  {
    return v5;
  }

  return result;
}

{
  if (((*(a3 + 40))() & 1) == 0)
  {
    return 0;
  }

  result = (*(a3 + 48))(a1, a2, a3);
  if (!v3)
  {
    if (result)
    {
      return 0;
    }

    else
    {
      return (*(a3 + 168))(a1, a2, a3);
    }
  }

  return result;
}

{
  return KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)(a1, a2, a3, KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:));
}

{
  if (((*(a3 + 40))() & 1) == 0)
  {
    return 0;
  }

  result = (*(a3 + 48))(a1, a2, a3);
  if (!v3)
  {
    if (result)
    {
      return 0;
    }

    else
    {
      return (*(a3 + 176))(a1, a2, a3);
    }
  }

  return result;
}

double KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a3 + 40))())
  {
    v8 = (*(a3 + 48))(a1, a2, a3);
    if (!v3 && (v8 & 1) == 0)
    {
      (*(a3 + 72))(a1, a2, a3);
    }
  }

  return result;
}

uint64_t KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  return a4() & 0x1FF;
}

{
  return a4() & 0x1FFFF;
}

{
  v4 = a4();
  return v4 | ((HIDWORD(v4) & 1) << 32);
}

{
  result = a4();
  if (v4)
  {
    return v6;
  }

  return result;
}

uint64_t KeyedDecodingContainerProtocol.decodeIfPresent<A>(_:forKey:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  return KeyedDecodingContainerProtocol.decodeIfPresent<A>(_:forKey:)(a1, a4, a2, a5, a3, a6);
}

{
  if ((*(a4 + 40))(a1, a2, a4))
  {
    result = (*(a4 + 48))(a1, a2, a4);
    if (v6)
    {
      return result;
    }

    if ((result & 1) == 0)
    {
      (*(a4 + 184))(a3, a1, a3, a5, a2, a4);
      return (*(*(a3 - 8) + 56))(a6, 0, 1, a3);
    }
  }

  return (*(*(a3 - 8) + 56))(a6, 1, 1, a3);
}

uint64_t KeyedDecodingContainer.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, char **a4@<X8>)
{
  v7 = type metadata accessor for _KeyedDecodingContainerBox(0, a2, a3, a3);
  v8 = swift_allocObject(v7, *(v7 + 48), *(v7 + 52));
  result = (*(*(a2 - 8) + 32))(&v8[*(*v8 + 440)], a1, a2);
  *a4 = v8;
  return result;
}

__objc2_class **KeyedDecodingContainer.allKeys.getter(uint64_t a1)
{
  v3 = (*(**v1 + 96))();
  v4 = specialized _arrayForceCast<A, B>(_:)(v3, *(a1 + 16));
  v3;
  return v4;
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)(uint64_t a1, uint64_t a2)
{
  return (*(**v2 + 120))(a1, *(a2 + 16), *(a2 + 24)) & 1;
}

{
  return (*(**v2 + 128))(a1, *(a2 + 16), *(a2 + 24));
}

{
  return (*(**v2 + 136))(a1, *(a2 + 16), *(a2 + 24));
}

{
  return (*(**v2 + 144))(a1, *(a2 + 16), *(a2 + 24));
}

{
  return (*(**v2 + 152))(a1, *(a2 + 16), *(a2 + 24));
}

{
  return (*(**v2 + 160))(a1, *(a2 + 16), *(a2 + 24));
}

{
  return (*(**v2 + 168))(a1, *(a2 + 16), *(a2 + 24));
}

{
  return (*(**v2 + 176))(a1, *(a2 + 16), *(a2 + 24));
}

{
  return (*(**v2 + 184))(a1, *(a2 + 16), *(a2 + 24));
}

{
  return (*(**v2 + 192))(a1, *(a2 + 16), *(a2 + 24));
}

{
  return (*(**v2 + 200))(a1, *(a2 + 16), *(a2 + 24));
}

{
  return (*(**v2 + 208))(a1, *(a2 + 16), *(a2 + 24));
}

{
  return (*(**v2 + 216))(a1, *(a2 + 16), *(a2 + 24));
}

{
  return (*(**v2 + 224))(a1, *(a2 + 16), *(a2 + 24));
}

{
  return (*(**v2 + 232))(a1, *(a2 + 16), *(a2 + 24));
}

{
  return (*(**v2 + 240))(a1, *(a2 + 16), *(a2 + 24));
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)(uint64_t a1, uint64_t a2)
{
  return (*(**v2 + 256))(a1, *(a2 + 16), *(a2 + 24));
}

{
  return (*(**v2 + 264))(a1, *(a2 + 16), *(a2 + 24));
}

{
  result = (*(**v2 + 272))(a1, *(a2 + 16), *(a2 + 24));
  if (v3)
  {
    return v5;
  }

  return result;
}

{
  v3 = (*(**v2 + 280))(a1, *(a2 + 16), *(a2 + 24));
  return v3 | ((HIDWORD(v3) & 1) << 32);
}

{
  result = (*(**v2 + 288))(a1, *(a2 + 16), *(a2 + 24));
  if (v3)
  {
    return v5;
  }

  return result;
}

{
  return (*(**v2 + 296))(a1, *(a2 + 16), *(a2 + 24)) & 0x1FF;
}

{
  return (*(**v2 + 304))(a1, *(a2 + 16), *(a2 + 24)) & 0x1FFFF;
}

{
  v3 = (*(**v2 + 312))(a1, *(a2 + 16), *(a2 + 24));
  return v3 | ((HIDWORD(v3) & 1) << 32);
}

{
  result = (*(**v2 + 320))(a1, *(a2 + 16), *(a2 + 24));
  if (v3)
  {
    return v5;
  }

  return result;
}

{
  result = (*(**v2 + 328))(a1, *(a2 + 16), *(a2 + 24));
  if (v3)
  {
    return v5;
  }

  return result;
}

{
  result = (*(**v2 + 336))(a1, *(a2 + 16), *(a2 + 24));
  if (v3)
  {
    return v5;
  }

  return result;
}

{
  return (*(**v2 + 344))(a1, *(a2 + 16), *(a2 + 24)) & 0x1FF;
}

{
  return (*(**v2 + 352))(a1, *(a2 + 16), *(a2 + 24)) & 0x1FFFF;
}

{
  v3 = (*(**v2 + 360))(a1, *(a2 + 16), *(a2 + 24));
  return v3 | ((HIDWORD(v3) & 1) << 32);
}

{
  result = (*(**v2 + 368))(a1, *(a2 + 16), *(a2 + 24));
  if (v3)
  {
    return v5;
  }

  return result;
}

{
  result = (*(**v2 + 376))(a1, *(a2 + 16), *(a2 + 24));
  if (v3)
  {
    return v5;
  }

  return result;
}

uint64_t protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance KeyedDecodingContainer<A>(uint64_t a1, uint64_t a2)
{
  return KeyedDecodingContainer.decode(_:forKey:)(a1, a2) & 1;
}

{
  return KeyedDecodingContainer.decode(_:forKey:)(a1, a2);
}

{
  return KeyedDecodingContainer.decode(_:forKey:)(a1, a2);
}

{
  return KeyedDecodingContainer.decode(_:forKey:)(a1, a2);
}

{
  return KeyedDecodingContainer.decode(_:forKey:)(a1, a2);
}

{
  return KeyedDecodingContainer.decode(_:forKey:)(a1, a2);
}

{
  return KeyedDecodingContainer.decode(_:forKey:)(a1, a2);
}

{
  return KeyedDecodingContainer.decode(_:forKey:)(a1, a2);
}

{
  return KeyedDecodingContainer.decode(_:forKey:)(a1, a2);
}

{
  return KeyedDecodingContainer.decode(_:forKey:)(a1, a2);
}

{
  return KeyedDecodingContainer.decode(_:forKey:)(a1, a2);
}

{
  return KeyedDecodingContainer.decode(_:forKey:)(a1, a2);
}

{
  return KeyedDecodingContainer.decode(_:forKey:)(a1, a2);
}

{
  return KeyedDecodingContainer.decode(_:forKey:)(a1, a2);
}

{
  return KeyedDecodingContainer.decode(_:forKey:)(a1, a2);
}

{
  return KeyedDecodingContainer.decode(_:forKey:)(a1, a2);
}

uint64_t protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance KeyedDecodingContainer<A>(uint64_t a1, uint64_t a2)
{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)(a1, a2);
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)(a1, a2);
}

{
  result = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(a1, a2);
  if (v2)
  {
    return v4;
  }

  return result;
}

{
  result = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(a1, a2);
  if (v2)
  {
    return v4;
  }

  return result;
}

{
  result = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(a1, a2);
  if (v2)
  {
    return v4;
  }

  return result;
}

{
  result = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(a1, a2);
  if (v2)
  {
    return v4;
  }

  return result;
}

{
  result = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(a1, a2);
  if (v2)
  {
    return v4;
  }

  return result;
}

uint64_t protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance KeyedDecodingContainer<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance KeyedDecodingContainer<A>(a1, a2, a3, KeyedDecodingContainer.decodeIfPresent(_:forKey:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance KeyedDecodingContainer<A>(a1, a2, a3, KeyedDecodingContainer.decodeIfPresent(_:forKey:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance KeyedDecodingContainer<A>(a1, a2, a3, KeyedDecodingContainer.decodeIfPresent(_:forKey:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance KeyedDecodingContainer<A>(a1, a2, a3, KeyedDecodingContainer.decodeIfPresent(_:forKey:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance KeyedDecodingContainer<A>(a1, a2, a3, KeyedDecodingContainer.decodeIfPresent(_:forKey:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance KeyedDecodingContainer<A>(a1, a2, a3, KeyedDecodingContainer.decodeIfPresent(_:forKey:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance KeyedDecodingContainer<A>(a1, a2, a3, KeyedDecodingContainer.decodeIfPresent(_:forKey:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance KeyedDecodingContainer<A>(a1, a2, a3, KeyedDecodingContainer.decodeIfPresent(_:forKey:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance KeyedDecodingContainer<A>(a1, a2, a3, KeyedDecodingContainer.decodeIfPresent(_:forKey:));
}

uint64_t protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance KeyedDecodingContainer<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  return a4() & 0x1FF;
}

{
  return a4() & 0x1FFFF;
}

{
  v4 = a4();
  return v4 | ((HIDWORD(v4) & 1) << 32);
}

{
  result = a4();
  if (v4)
  {
    return v6;
  }

  return result;
}

uint64_t UnkeyedEncodingContainer.encode(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return UnkeyedEncodingContainer.encode(_:)(a1, a2, a3, a4);
}

{
  swift_allocError(&type metadata for EncodingError, &protocol witness table for EncodingError, 0, 0);
  v9 = v8;
  v8[3] = &type metadata for Int128;
  v10 = swift_allocObject(&unk_1EEEADD40, 0x20, 0xFuLL);
  *v9 = v10;
  v10[2] = a1;
  v10[3] = a2;
  v9[4] = (*(a4 + 8))(a3, a4);
  v9[5] = 0xD00000000000002ELL;
  v9[6] = 0x800000018066C0B0;
  v9[7] = 0;
  return swift_willThrow();
}

{
  return UnkeyedEncodingContainer.encode(_:)(a1, a2, a3, a4);
}

{
  swift_allocError(&type metadata for EncodingError, &protocol witness table for EncodingError, 0, 0);
  v9 = v8;
  v8[3] = &type metadata for UInt128;
  v10 = swift_allocObject(&unk_1EEEADD40, 0x20, 0xFuLL);
  *v9 = v10;
  v10[2] = a1;
  v10[3] = a2;
  v9[4] = (*(a4 + 8))(a3, a4);
  v9[5] = 0xD00000000000002FLL;
  v9[6] = 0x800000018066C0E0;
  v9[7] = 0;
  return swift_willThrow();
}

uint64_t UnkeyedEncodingContainer.encodeConditional<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return UnkeyedEncodingContainer.encodeConditional<A>(_:)(a1, a4, a2, a5, a3);
}

{
  v6 = a1;
  return (*(a4 + 160))(&v6, a3, a5, a2, a4);
}

uint64_t UnkeyedEncodingContainer.encode<A>(contentsOf:)(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)(a1, a4, a2, a5, a3);
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)(a1, a4, a2, a5, a3);
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)(a1, a4, a2, a5, a3);
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)(a1, a4, a2, a5, a3);
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)(a1, a4, a2, a5, a3);
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)(a1, a4, a2, a5, a3);
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)(a1, a4, a2, a5, a3);
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)(a1, a4, a2, a5, a3);
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)(a1, a4, a2, a5, a3);
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)(a1, a4, a2, a5, a3);
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)(a1, a4, a2, a5, a3);
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)(a1, a4, a2, a5, a3);
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)(a1, a4, a2, a5, a3);
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)(a1, a4, a2, a5, a3);
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)(a1, a4, a2, a5, a3);
}

uint64_t UnkeyedEncodingContainer.encode<A>(contentsOf:)(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5)
{
  v22 = a2;
  v20 = a1;
  v9 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, v12, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v14 = v13;
  v21 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v20 - v15;
  (*(v9 + 16))(v11, v20, a3);
  (*(a5 + 32))(a3, a5);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a3, v14, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v18 = *(AssociatedConformanceWitness + 16);
  do
  {
    v18(&v23, v14, AssociatedConformanceWitness);
    if (v23 == 2)
    {
      break;
    }

    (*(a4 + 32))(v23 & 1, v22, a4);
  }

  while (!v5);
  return (*(v21 + 8))(v16, v14);
}

{
  v23 = a2;
  v21 = a1;
  v9 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, v12, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v14 = v13;
  v22 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v20 - v15;
  (*(v9 + 16))(v11, v21, a3);
  (*(a5 + 32))(a3, a5);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a3, v14, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v18 = *(AssociatedConformanceWitness + 16);
  do
  {
    v18(&v24, v14, AssociatedConformanceWitness);
    if (v25)
    {
      break;
    }

    (*(a4 + 48))(v23, a4, v24);
  }

  while (!v5);
  return (*(v22 + 8))(v16, v14);
}

{
  v22 = a2;
  v20 = a1;
  v9 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, v12, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v14 = v13;
  v21 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v20 - v15;
  (*(v9 + 16))(v11, v20, a3);
  (*(a5 + 32))(a3, a5);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a3, v14, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v18 = *(AssociatedConformanceWitness + 16);
  do
  {
    v18(&v23, v14, AssociatedConformanceWitness);
    if ((v23 & 0x100000000) != 0)
    {
      break;
    }

    (*(a4 + 56))(v22, a4, *&v23);
  }

  while (!v5);
  return (*(v21 + 8))(v16, v14);
}

{
  v23 = a2;
  v21 = a1;
  v9 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, v12, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v14 = v13;
  v22 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v20 - v15;
  (*(v9 + 16))(v11, v21, a3);
  (*(a5 + 32))(a3, a5);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a3, v14, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v18 = *(AssociatedConformanceWitness + 16);
  do
  {
    v18(&v24, v14, AssociatedConformanceWitness);
    if (v25)
    {
      break;
    }

    (*(a4 + 64))(v24, v23, a4);
  }

  while (!v5);
  return (*(v22 + 8))(v16, v14);
}

{
  v22 = a2;
  v20 = a1;
  v9 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, v12, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v14 = v13;
  v21 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v20 - v15;
  (*(v9 + 16))(v11, v20, a3);
  (*(a5 + 32))(a3, a5);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a3, v14, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v18 = *(AssociatedConformanceWitness + 16);
  do
  {
    v18(&v23, v14, AssociatedConformanceWitness);
    if ((v23 & 0x100) != 0)
    {
      break;
    }

    (*(a4 + 72))(v23, v22, a4);
  }

  while (!v5);
  return (*(v21 + 8))(v16, v14);
}

{
  v22 = a2;
  v20 = a1;
  v9 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, v12, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v14 = v13;
  v21 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v20 - v15;
  (*(v9 + 16))(v11, v20, a3);
  (*(a5 + 32))(a3, a5);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a3, v14, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v18 = *(AssociatedConformanceWitness + 16);
  do
  {
    v18(&v23, v14, AssociatedConformanceWitness);
    if ((v23 & 0x10000) != 0)
    {
      break;
    }

    (*(a4 + 80))(v23, v22, a4);
  }

  while (!v5);
  return (*(v21 + 8))(v16, v14);
}

{
  v22 = a2;
  v20 = a1;
  v9 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, v12, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v14 = v13;
  v21 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v20 - v15;
  (*(v9 + 16))(v11, v20, a3);
  (*(a5 + 32))(a3, a5);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a3, v14, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v18 = *(AssociatedConformanceWitness + 16);
  do
  {
    v18(&v23, v14, AssociatedConformanceWitness);
    if ((v23 & 0x100000000) != 0)
    {
      break;
    }

    (*(a4 + 88))(v23, v22, a4);
  }

  while (!v5);
  return (*(v21 + 8))(v16, v14);
}

{
  v23 = a2;
  v21 = a1;
  v9 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, v12, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v14 = v13;
  v22 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v20 - v15;
  (*(v9 + 16))(v11, v21, a3);
  (*(a5 + 32))(a3, a5);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a3, v14, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v18 = *(AssociatedConformanceWitness + 16);
  do
  {
    v18(&v24, v14, AssociatedConformanceWitness);
    if (v25)
    {
      break;
    }

    (*(a4 + 96))(v24, v23, a4);
  }

  while (!v5);
  return (*(v22 + 8))(v16, v14);
}

{
  v23 = a2;
  v21 = a1;
  v9 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, v12, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v14 = v13;
  v22 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v20 - v15;
  (*(v9 + 16))(v11, v21, a3);
  (*(a5 + 32))(a3, a5);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a3, v14, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v18 = *(AssociatedConformanceWitness + 16);
  do
  {
    v18(v24, v14, AssociatedConformanceWitness);
    if (v25)
    {
      break;
    }

    (*(a4 + 104))(v24[0], v24[1], v23, a4);
  }

  while (!v5);
  return (*(v22 + 8))(v16, v14);
}

{
  v23 = a2;
  v21 = a1;
  v9 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, v12, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v14 = v13;
  v22 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v20 - v15;
  (*(v9 + 16))(v11, v21, a3);
  (*(a5 + 32))(a3, a5);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a3, v14, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v18 = *(AssociatedConformanceWitness + 16);
  do
  {
    v18(&v24, v14, AssociatedConformanceWitness);
    if (v25)
    {
      break;
    }

    (*(a4 + 112))(v24, v23, a4);
  }

  while (!v5);
  return (*(v22 + 8))(v16, v14);
}

{
  v22 = a2;
  v20 = a1;
  v9 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, v12, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v14 = v13;
  v21 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v20 - v15;
  (*(v9 + 16))(v11, v20, a3);
  (*(a5 + 32))(a3, a5);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a3, v14, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v18 = *(AssociatedConformanceWitness + 16);
  do
  {
    v18(&v23, v14, AssociatedConformanceWitness);
    if ((v23 & 0x100) != 0)
    {
      break;
    }

    (*(a4 + 120))(v23, v22, a4);
  }

  while (!v5);
  return (*(v21 + 8))(v16, v14);
}

{
  v22 = a2;
  v20 = a1;
  v9 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, v12, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v14 = v13;
  v21 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v20 - v15;
  (*(v9 + 16))(v11, v20, a3);
  (*(a5 + 32))(a3, a5);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a3, v14, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v18 = *(AssociatedConformanceWitness + 16);
  do
  {
    v18(&v23, v14, AssociatedConformanceWitness);
    if ((v23 & 0x10000) != 0)
    {
      break;
    }

    (*(a4 + 128))(v23, v22, a4);
  }

  while (!v5);
  return (*(v21 + 8))(v16, v14);
}

{
  v22 = a2;
  v20 = a1;
  v9 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, v12, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v14 = v13;
  v21 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v20 - v15;
  (*(v9 + 16))(v11, v20, a3);
  (*(a5 + 32))(a3, a5);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a3, v14, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v18 = *(AssociatedConformanceWitness + 16);
  do
  {
    v18(&v23, v14, AssociatedConformanceWitness);
    if ((v23 & 0x100000000) != 0)
    {
      break;
    }

    (*(a4 + 136))(v23, v22, a4);
  }

  while (!v5);
  return (*(v21 + 8))(v16, v14);
}

{
  v23 = a2;
  v21 = a1;
  v9 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, v12, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v14 = v13;
  v22 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v20 - v15;
  (*(v9 + 16))(v11, v21, a3);
  (*(a5 + 32))(a3, a5);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a3, v14, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v18 = *(AssociatedConformanceWitness + 16);
  do
  {
    v18(&v24, v14, AssociatedConformanceWitness);
    if (v25)
    {
      break;
    }

    (*(a4 + 144))(v24, v23, a4);
  }

  while (!v5);
  return (*(v22 + 8))(v16, v14);
}

{
  v23 = a2;
  v21 = a1;
  v9 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, v12, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v14 = v13;
  v22 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v20 - v15;
  (*(v9 + 16))(v11, v21, a3);
  (*(a5 + 32))(a3, a5);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a3, v14, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v18 = *(AssociatedConformanceWitness + 16);
  do
  {
    v18(v24, v14, AssociatedConformanceWitness);
    if (v25)
    {
      break;
    }

    (*(a4 + 152))(v24[0], v24[1], v23, a4);
  }

  while (!v5);
  return (*(v22 + 8))(v16, v14);
}

void UnkeyedEncodingContainer.encode<A>(contentsOf:)(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5)
{
  v23 = a2;
  v27 = a1;
  v9 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, v12, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v14 = v13;
  v22 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v22 - v15;
  (*(v9 + 16))(v11, v27, a3);
  (*(a5 + 32))(a3, a5);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a3, v14, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v18 = *(AssociatedConformanceWitness + 16);
  v24 = v16;
  v27 = v14;
  v18(&v25, v14, AssociatedConformanceWitness);
  v19 = v26;
  if (v26)
  {
    v20 = v25;
    v21 = *(a4 + 40);
    while (1)
    {
      v21(v20, v19, v23, a4);
      if (v5)
      {
        break;
      }

      v19;
      v18(&v25, v27, AssociatedConformanceWitness);
      v20 = v25;
      v19 = v26;
      if (!v26)
      {
        goto LABEL_5;
      }
    }

    (*(v22 + 8))(v24, v27);
    v19;
  }

  else
  {
LABEL_5:
    (*(v22 + 8))(v24, v27);
  }
}

uint64_t UnkeyedEncodingContainer.encode<A>(contentsOf:)(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, int **a5, uint64_t a6)
{
  v40 = a6;
  v41 = a4;
  v42 = a5;
  v39 = a2;
  v43 = a1;
  swift_getAssociatedTypeWitness(0, a5, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  v10 = v9;
  v34 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v32 - v11;
  v15 = type metadata accessor for Optional(0, v10, v13, v14);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v32 - v17;
  v19 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v16);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v23 = v22;
  v33 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = (&v32 - v24);
  (*(v19 + 16))(v21, v43, a3);
  v26 = v42;
  (v42[4])(a3, v42);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v26, a3, v23, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v28 = *(AssociatedConformanceWitness + 16);
  v42 = v25;
  v43 = v23;
  v37 = AssociatedConformanceWitness + 16;
  v38 = AssociatedConformanceWitness;
  v36 = v28;
  (v28)(v23);
  v29 = v34;
  v35 = *(v34 + 48);
  if (v35(v18, 1, v10) != 1)
  {
    v34 = *(v29 + 32);
    v30 = (v29 + 8);
    while (1)
    {
      (v34)(v12, v18, v10);
      (*(v41 + 160))(v12, v10, v40, v39);
      if (v6)
      {
        break;
      }

      (*v30)(v12, v10);
      v36(v43, v38);
      if (v35(v18, 1, v10) == 1)
      {
        return (*(v33 + 8))(v42, v43);
      }
    }

    (*v30)(v12, v10);
  }

  return (*(v33 + 8))(v42, v43);
}

uint64_t UnkeyedDecodingContainer.decode(_:)(uint64_t a1, uint64_t a2)
{
  return UnkeyedDecodingContainer.decode(_:)(a1, a2);
}

{
  swift_allocError(&type metadata for DecodingError, &protocol witness table for DecodingError, 0, 0);
  v5 = v4;
  v6 = (*(a2 + 8))(a1, a2);
  *v5 = &type metadata for Int128;
  *(v5 + 8) = v6;
  *(v5 + 16) = 0xD00000000000002ELL;
  *(v5 + 24) = 0x800000018066C110;
  *(v5 + 32) = 0;
  *(v5 + 72) = 0;
  return swift_willThrow();
}

{
  return UnkeyedDecodingContainer.decode(_:)(a1, a2);
}

{
  swift_allocError(&type metadata for DecodingError, &protocol witness table for DecodingError, 0, 0);
  v5 = v4;
  v6 = (*(a2 + 8))(a1, a2);
  *v5 = &type metadata for UInt128;
  *(v5 + 8) = v6;
  *(v5 + 16) = 0xD00000000000002FLL;
  *(v5 + 24) = 0x800000018066C140;
  *(v5 + 32) = 0;
  *(v5 + 72) = 0;
  return swift_willThrow();
}

uint64_t UnkeyedDecodingContainer.decodeIfPresent(_:)(uint64_t a1, uint64_t a2)
{
  return UnkeyedDecodingContainer.decodeIfPresent(_:)(a1, a2);
}

{
  if ((*(a2 + 24))())
  {
    return 2;
  }

  result = (*(a2 + 40))(a1, a2);
  if (!v2)
  {
    if (result)
    {
      return 2;
    }

    else
    {
      return (*(a2 + 48))(a1, a2) & 1;
    }
  }

  return result;
}

{
  return UnkeyedDecodingContainer.decodeIfPresent(_:)(a1, a2);
}

{
  if ((*(a2 + 24))())
  {
    return 0;
  }

  result = (*(a2 + 40))(a1, a2);
  if (!v2)
  {
    if (result)
    {
      return 0;
    }

    else
    {
      return (*(a2 + 56))(a1, a2);
    }
  }

  return result;
}

{
  return UnkeyedDecodingContainer.decodeIfPresent(_:)(a1, a2, UnkeyedDecodingContainer.decodeIfPresent(_:));
}

{
  if ((*(a2 + 24))())
  {
    v5 = 0;
    v6 = 1;
    return v5 | (v6 << 32);
  }

  result = (*(a2 + 40))(a1, a2);
  if (!v2)
  {
    if (result)
    {
      v5 = 0;
      v6 = 1;
    }

    else
    {
      (*(a2 + 72))(a1, a2);
      v6 = 0;
      v5 = v8;
    }

    return v5 | (v6 << 32);
  }

  return result;
}

{
  result = UnkeyedDecodingContainer.decodeIfPresent(_:)(a1, a2);
  if (v2)
  {
    return v4;
  }

  return result;
}

{
  if ((*(a2 + 24))())
  {
    return 0;
  }

  result = (*(a2 + 40))(a1, a2);
  if (!v2)
  {
    if (result)
    {
      return 0;
    }

    else
    {
      return (*(a2 + 80))(a1, a2);
    }
  }

  return result;
}

{
  return UnkeyedDecodingContainer.decodeIfPresent(_:)(a1, a2, UnkeyedDecodingContainer.decodeIfPresent(_:));
}

{
  if ((*(a2 + 24))())
  {
    v5 = 0;
    v6 = 1;
    return v5 | (v6 << 8);
  }

  result = (*(a2 + 40))(a1, a2);
  if (!v2)
  {
    if (result)
    {
      v5 = 0;
      v6 = 1;
    }

    else
    {
      v5 = (*(a2 + 88))(a1, a2);
      v6 = 0;
    }

    return v5 | (v6 << 8);
  }

  return result;
}

{
  return UnkeyedDecodingContainer.decodeIfPresent(_:)(a1, a2, UnkeyedDecodingContainer.decodeIfPresent(_:));
}

{
  if ((*(a2 + 24))())
  {
    v5 = 0;
    v6 = 1;
    return v5 | (v6 << 16);
  }

  result = (*(a2 + 40))(a1, a2);
  if (!v2)
  {
    if (result)
    {
      v5 = 0;
      v6 = 1;
    }

    else
    {
      v5 = (*(a2 + 96))(a1, a2);
      v6 = 0;
    }

    return v5 | (v6 << 16);
  }

  return result;
}

{
  return UnkeyedDecodingContainer.decodeIfPresent(_:)(a1, a2, UnkeyedDecodingContainer.decodeIfPresent(_:));
}

{
  if ((*(a2 + 24))())
  {
    v5 = 0;
    v6 = 1;
    return v5 | (v6 << 32);
  }

  result = (*(a2 + 40))(a1, a2);
  if (!v2)
  {
    if (result)
    {
      v5 = 0;
      v6 = 1;
    }

    else
    {
      v5 = (*(a2 + 104))(a1, a2);
      v6 = 0;
    }

    return v5 | (v6 << 32);
  }

  return result;
}

{
  result = UnkeyedDecodingContainer.decodeIfPresent(_:)(a1, a2);
  if (v2)
  {
    return v4;
  }

  return result;
}

{
  if ((*(a2 + 24))())
  {
    return 0;
  }

  result = (*(a2 + 40))(a1, a2);
  if (!v2)
  {
    if (result)
    {
      return 0;
    }

    else
    {
      return (*(a2 + 112))(a1, a2);
    }
  }

  return result;
}

{
  return UnkeyedDecodingContainer.decodeIfPresent(_:)(a1, a2, UnkeyedDecodingContainer.decodeIfPresent(_:));
}

{
  if ((*(a2 + 24))())
  {
    return 0;
  }

  result = (*(a2 + 40))(a1, a2);
  if (!v2)
  {
    if (result)
    {
      return 0;
    }

    else
    {
      return (*(a2 + 120))(a1, a2);
    }
  }

  return result;
}

{
  result = UnkeyedDecodingContainer.decodeIfPresent(_:)(a1, a2);
  if (v2)
  {
    return v4;
  }

  return result;
}

{
  if ((*(a2 + 24))())
  {
    return 0;
  }

  result = (*(a2 + 40))(a1, a2);
  if (!v2)
  {
    if (result)
    {
      return 0;
    }

    else
    {
      return (*(a2 + 128))(a1, a2);
    }
  }

  return result;
}

{
  return UnkeyedDecodingContainer.decodeIfPresent(_:)(a1, a2, UnkeyedDecodingContainer.decodeIfPresent(_:));
}

{
  if ((*(a2 + 24))())
  {
    v5 = 0;
    v6 = 1;
    return v5 | (v6 << 8);
  }

  result = (*(a2 + 40))(a1, a2);
  if (!v2)
  {
    if (result)
    {
      v5 = 0;
      v6 = 1;
    }

    else
    {
      v5 = (*(a2 + 136))(a1, a2);
      v6 = 0;
    }

    return v5 | (v6 << 8);
  }

  return result;
}

{
  return UnkeyedDecodingContainer.decodeIfPresent(_:)(a1, a2, UnkeyedDecodingContainer.decodeIfPresent(_:));
}

{
  if ((*(a2 + 24))())
  {
    v5 = 0;
    v6 = 1;
    return v5 | (v6 << 16);
  }

  result = (*(a2 + 40))(a1, a2);
  if (!v2)
  {
    if (result)
    {
      v5 = 0;
      v6 = 1;
    }

    else
    {
      v5 = (*(a2 + 144))(a1, a2);
      v6 = 0;
    }

    return v5 | (v6 << 16);
  }

  return result;
}

{
  return UnkeyedDecodingContainer.decodeIfPresent(_:)(a1, a2, UnkeyedDecodingContainer.decodeIfPresent(_:));
}

{
  if ((*(a2 + 24))())
  {
    v5 = 0;
    v6 = 1;
    return v5 | (v6 << 32);
  }

  result = (*(a2 + 40))(a1, a2);
  if (!v2)
  {
    if (result)
    {
      v5 = 0;
      v6 = 1;
    }

    else
    {
      v5 = (*(a2 + 152))(a1, a2);
      v6 = 0;
    }

    return v5 | (v6 << 32);
  }

  return result;
}

{
  result = UnkeyedDecodingContainer.decodeIfPresent(_:)(a1, a2);
  if (v2)
  {
    return v4;
  }

  return result;
}

{
  if ((*(a2 + 24))())
  {
    return 0;
  }

  result = (*(a2 + 40))(a1, a2);
  if (!v2)
  {
    if (result)
    {
      return 0;
    }

    else
    {
      return (*(a2 + 160))(a1, a2);
    }
  }

  return result;
}

{
  return UnkeyedDecodingContainer.decodeIfPresent(_:)(a1, a2, UnkeyedDecodingContainer.decodeIfPresent(_:));
}

{
  if ((*(a2 + 24))())
  {
    return 0;
  }

  result = (*(a2 + 40))(a1, a2);
  if (!v2)
  {
    if (result)
    {
      return 0;
    }

    else
    {
      return (*(a2 + 168))(a1, a2);
    }
  }

  return result;
}

double UnkeyedDecodingContainer.decodeIfPresent(_:)(uint64_t a1, uint64_t a2)
{
  if (((*(a2 + 24))() & 1) == 0)
  {
    v6 = (*(a2 + 40))(a1, a2);
    if (!v2 && (v6 & 1) == 0)
    {
      (*(a2 + 64))(a1, a2);
    }
  }

  return result;
}

uint64_t UnkeyedDecodingContainer.decodeIfPresent(_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  return a3() & 0x1FF;
}

{
  return a3() & 0x1FFFF;
}

{
  v3 = a3();
  return v3 | ((HIDWORD(v3) & 1) << 32);
}

{
  result = a3();
  if (v3)
  {
    return v5;
  }

  return result;
}

uint64_t UnkeyedDecodingContainer.decodeIfPresent<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  return UnkeyedDecodingContainer.decodeIfPresent<A>(_:)(a3, a1, a4, a2, a5);
}

{
  if ((*(a3 + 24))(a1, a3))
  {
    return (*(*(a2 - 8) + 56))(a5, 1, 1, a2);
  }

  result = (*(a3 + 40))(a1, a3);
  if (!v5)
  {
    if (result)
    {
      return (*(*(a2 - 8) + 56))(a5, 1, 1, a2);
    }

    (*(a3 + 176))(a2, a2, a4, a1, a3);
    return (*(*(a2 - 8) + 56))(a5, 0, 1, a2);
  }

  return result;
}

uint64_t SingleValueEncodingContainer.encode(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return SingleValueEncodingContainer.encode(_:)(a1, a2, a3, a4);
}

{
  swift_allocError(&type metadata for EncodingError, &protocol witness table for EncodingError, 0, 0);
  v9 = v8;
  v8[3] = &type metadata for Int128;
  v10 = swift_allocObject(&unk_1EEEADD40, 0x20, 0xFuLL);
  *v9 = v10;
  v10[2] = a1;
  v10[3] = a2;
  v9[4] = (*(a4 + 8))(a3, a4);
  v9[5] = 0xD00000000000002ELL;
  v9[6] = 0x800000018066C0B0;
  v9[7] = 0;
  return swift_willThrow();
}

{
  return SingleValueEncodingContainer.encode(_:)(a1, a2, a3, a4);
}

{
  swift_allocError(&type metadata for EncodingError, &protocol witness table for EncodingError, 0, 0);
  v9 = v8;
  v8[3] = &type metadata for UInt128;
  v10 = swift_allocObject(&unk_1EEEADD40, 0x20, 0xFuLL);
  *v9 = v10;
  v10[2] = a1;
  v10[3] = a2;
  v9[4] = (*(a4 + 8))(a3, a4);
  v9[5] = 0xD00000000000002FLL;
  v9[6] = 0x800000018066C0E0;
  v9[7] = 0;
  return swift_willThrow();
}

uint64_t SingleValueDecodingContainer.decode(_:)(uint64_t a1, uint64_t a2)
{
  return SingleValueDecodingContainer.decode(_:)(a1, a2);
}

{
  swift_allocError(&type metadata for DecodingError, &protocol witness table for DecodingError, 0, 0);
  v5 = v4;
  v6 = (*(a2 + 8))(a1, a2);
  *v5 = &type metadata for Int128;
  *(v5 + 8) = v6;
  *(v5 + 16) = 0xD00000000000002ELL;
  *(v5 + 24) = 0x800000018066C110;
  *(v5 + 32) = 0;
  *(v5 + 72) = 0;
  return swift_willThrow();
}

{
  return SingleValueDecodingContainer.decode(_:)(a1, a2);
}

{
  swift_allocError(&type metadata for DecodingError, &protocol witness table for DecodingError, 0, 0);
  v5 = v4;
  v6 = (*(a2 + 8))(a1, a2);
  *v5 = &type metadata for UInt128;
  *(v5 + 8) = v6;
  *(v5 + 16) = 0xD00000000000002FLL;
  *(v5 + 24) = 0x800000018066C140;
  *(v5 + 32) = 0;
  *(v5 + 72) = 0;
  return swift_willThrow();
}

uint64_t CodingUserInfoKey.rawValue.getter()
{
  v1 = *v0;
  v0[1];
  return v1;
}

uint64_t static CodingUserInfoKey.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1];
  if (v4 == *a2 && v5 == v6)
  {
    return 1;
  }

  if ((~v5 & 0x6000000000000000) == 0 && (v6 & 0x6000000000000000) == 0x6000000000000000)
  {
    return 0;
  }

  else
  {
    return _stringCompareInternal(_:_:expecting:)(v4, v5, *a2, v6, 0);
  }
}

Swift::Int CodingUserInfoKey.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v7 = 0u;
  v8 = 0u;
  v4 = 0;
  v5 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB60);
  v6 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB70);
  String.hash(into:)(&v4, v1, v2);
  return Hasher._finalize()();
}

Swift::Int Character.hashValue.getter(unint64_t a1, unint64_t a2)
{
  v6 = 0u;
  v7 = 0u;
  v3 = 0;
  v4 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB60);
  v5 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB70);
  String.hash(into:)(&v3, a1, a2);
  return Hasher._finalize()();
}

void CodingUserInfoKey.hash(into:)(unint64_t *a1)
{
  v2 = *v1;
  v3 = v1[1];
  if ((v3 & 0x2000000000000000) != 0)
  {
    v4 = v1[1];
  }

  else
  {
    v4 = *v1;
  }

  if ((v3 & 0x1000000000000000) != 0 || (v4 & 0x4000000000000000) == 0)
  {
    if ((v3 & 0x2000000000000000) != 0)
    {
      v9 = HIBYTE(v3) & 0xF;
    }

    else
    {
      v9 = v2 & 0xFFFFFFFFFFFFLL;
    }

    _StringGutsSlice._normalizedHash(into:)(a1, v2, v3, 0, v9);
  }

  else
  {
    if ((v3 & 0x2000000000000000) != 0)
    {
      v10[0] = *v1;
      v10[1] = v3 & 0xFFFFFFFFFFFFFFLL;
      v7 = v10;
      v8 = v10 + (HIBYTE(v3) & 0xF);
    }

    else
    {
      if ((v2 & 0x1000000000000000) != 0)
      {
        v5 = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v6 = v2 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v5 = _StringObject.sharedUTF8.getter(*v1, v1[1]);
      }

      v7 = _sSWySWSRyxGclufCs5UInt8V_Tt0gq5Tm(v5, v6);
    }

    Hasher.combine(bytes:)(*&v7);
    Hasher._combine(_:)(0xFFu);
  }
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CodingUserInfoKey@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  return v2;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CodingUserInfoKey(unint64_t *a1, unint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1];
  if (v4 == *a2 && v5 == v6)
  {
    return 1;
  }

  if ((~v5 & 0x6000000000000000) == 0 && (v6 & 0x6000000000000000) == 0x6000000000000000)
  {
    return 0;
  }

  else
  {
    return _stringCompareInternal(_:_:expecting:)(v4, v5, *a2, v6, 0);
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CodingUserInfoKey()
{
  v1 = *v0;
  v2 = v0[1];
  specialized Hasher.init(_seed:)(0, v4);
  String.hash(into:)(v4, v1, v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CodingUserInfoKey(uint64_t a1)
{
  v2 = v1[1];
  v4[9] = *v1;
  v4[10] = v2;
  specialized Hasher.init(_seed:)(a1, v4);
  CodingUserInfoKey.hash(into:)(v4);
  return Hasher._finalize()();
}

Swift::Int RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0u;
  v6 = 0u;
  v4[0] = 0;
  v4[1] = _swift_stdlib_Hashing_parameters ^ a1 ^ 0x736F6D6570736575;
  v4[2] = *(&_swift_stdlib_Hashing_parameters + 1) ^ 0x646F72616E646F6DLL;
  v4[3] = _swift_stdlib_Hashing_parameters ^ a1 ^ 0x6C7967656E657261;
  v4[4] = *(&_swift_stdlib_Hashing_parameters + 1) ^ 0x7465646279746573;
  (*(a3 + 24))(v4);
  return Hasher._finalize()();
}

uint64_t EncodingError._code.getter()
{
  outlined init with copy of EncodingError(v0, v4);
  v1 = v4[4];
  v2 = v4[7];
  v4[6];
  v1;
  v2;
  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  return 4866;
}

atomic_ullong *EncodingError._userInfo.getter()
{
  outlined init with copy of EncodingError(v0, &v20);
  v1 = v22;
  v2 = v23;
  v4 = v24;
  v3 = v25;
  v24;
  v1;
  swift_errorRetain(v3);
  v4;
  v1;
  v3;
  __swift_destroy_boxed_opaque_existential_1Tm(&v20);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, _ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject(v5, v19);
  *(inited + 1) = xmmword_18071DBE0;
  strcpy(inited + 32, "NSCodingPath");
  *(inited + 45) = 0;
  *(inited + 23) = -5120;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays9CodingKey_pGMd, _sSays9CodingKey_pGMR);
  inited[6] = v1;
  inited[9] = v7;
  inited[10] = 0xD000000000000012;
  inited[15] = &type metadata for String;
  inited[11] = 0x800000018066C190;
  inited[12] = v2;
  inited[13] = v4;
  v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating(inited);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, _sSS_yptMR);
  swift_arrayDestroy((inited + 4), 2, v9);
  if (v3)
  {
    swift_getErrorValue(v3, &v18, &v16);
    v10 = v16;
    v11 = v17;
    v21 = v17;
    v12 = __swift_allocate_boxed_opaque_existential_0Tm(&v20);
    (*(*(v11 - 8) + 16))(v12, v10, v11);
    outlined init with take of Any(&v20, v15);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v8);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v15, 0xD000000000000011, 0x800000018066C1B0, isUniquelyReferenced_nonNull_native);
    v3;
  }

  *&v20 = v8;
  return _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)(&v20, byte_1EEEBDEE8);
}

atomic_ullong *Dictionary.init(dictionaryLiteral:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v59 = *(a3 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getTupleTypeMetadata2(0, v14, v15, 0, 0);
  v17 = v16;
  v60 = *(v16 - 8);
  v18 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v63 = &v46 - v19;
  v20 = Array._getCount()();
  if (v20)
  {
    v21 = v20;
    type metadata accessor for _DictionaryStorage(0, a2, a3, a4);
    v22 = static _DictionaryStorage.allocate(capacity:)(v21);
  }

  else
  {
    v22 = &_swiftEmptyDictionarySingleton;
  }

  v22;
  v57 = Array._getCount()();
  if (v57)
  {
    v46 = v18;
    v47 = v7;
    v51 = v13;
    v52 = a2;
    v53 = a3;
    v54 = a4;
    v23 = 0;
    v24 = *(v17 + 48);
    v55 = (v60 + 16);
    v56 = v7 & 0xC000000000000001;
    v25 = (v58 + 32);
    v26 = (v59 + 32);
    v49 = v22 + 8;
    v50 = v24;
    v48 = v17;
    do
    {
      v27 = v56 == 0;
      v28 = v27 | ~_swift_isClassOrObjCExistentialType(v17, v17);
      Array._checkSubscript(_:wasNativeTypeChecked:)(v23, v28 & 1);
      if (v28)
      {
        (*(v60 + 16))(v63, v7 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v23, v17);
        v29 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_15;
        }
      }

      else
      {
        v43 = _ArrayBuffer._getElementSlowPath(_:)(v23, v7, v17);
        if (v46 != 8)
        {
          goto LABEL_19;
        }

        v64[0] = v43;
        v44 = v43;
        (*v55)(v63, v64, v17);
        swift_unknownObjectRelease(v44);
        v29 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
LABEL_15:
          __break(1u);
          break;
        }
      }

      v61 = v29;
      v62 = v23;
      v30 = *v25;
      v31 = v51;
      v32 = v63;
      v33 = v25;
      v34 = v52;
      v30(v51, v63, v52);
      v35 = *v26;
      v36 = v53;
      (*v26)(v10, &v32[v50], v53);
      v37 = __RawDictionaryStorage.find<A>(_:)(v31, v34, v54);
      if (v38)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v39 = v37;
      *(v49 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
      v30((v22[6] + *(v58 + 72) * v37), v31, v34);
      v35((v22[7] + *(v59 + 72) * v39), v10, v36);
      v40 = v22[2];
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (v41)
      {
        __break(1u);
LABEL_19:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v25 = v33;
      v22[2] = v42;
      v23 = v62 + 1;
      v7 = v47;
      v17 = v48;
    }

    while (v61 != v57);
  }

  v22;
  v7;
  return v22;
}

uint64_t Dictionary.subscript.setter(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3[3];
  v8 = type metadata accessor for Optional(0, v7, a3, a4);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v22 - v11;
  v13 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1, v7) == 1)
  {
    v16 = *(v9 + 8);
    v16(a1, v8);
    v17 = a3[2];
    v18 = type metadata accessor for Dictionary._Variant(0, v17, v7, a3[4]);
    Dictionary._Variant.removeValue(forKey:)(a2, v18, v12);
    (*(*(v17 - 8) + 8))(a2, v17);
    return (v16)(v12, v8);
  }

  else
  {
    (*(v13 + 32))(v15, a1, v7);
    v20 = a3[2];
    v21 = type metadata accessor for Dictionary._Variant(0, v20, v7, a3[4]);
    Dictionary._Variant.setValue(_:forKey:)(v15, a2, v21);
    return (*(*(v20 - 8) + 8))(a2, v20);
  }
}

uint64_t protocol witness for Error._code.getter in conformance EncodingError()
{
  outlined init with copy of EncodingError(v0, v4);
  v1 = v4[4];
  v2 = v4[7];
  v4[6];
  v1;
  v2;
  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  return 4866;
}

uint64_t DecodingError.Context.debugDescription.getter()
{
  v1 = *(v0 + 8);
  *(v0 + 16);
  return v1;
}

void *DecodingError.Context.underlyingError.getter()
{
  v1 = *(v0 + 24);
  swift_errorRetain(v1);
  return v1;
}

uint64_t DecodingError.Context.init(codingPath:debugDescription:underlyingError:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t DecodingError._code.getter()
{
  outlined init with copy of DecodingError(v0, v4);
  if (v5 > 1u)
  {
    if (v5 == 2)
    {
      v2 = v4[5];
      v3 = v4[8];
      v4[7];
      v2;
      v3;
      __swift_destroy_boxed_opaque_existential_1Tm(v4);
      return 4865;
    }
  }

  else if (v5)
  {
    outlined destroy of DecodingError(v4);
    return 4865;
  }

  outlined destroy of DecodingError(v4);
  return 4864;
}

atomic_ullong *DecodingError._userInfo.getter()
{
  outlined init with copy of DecodingError(v0, &v20);
  if (v28 > 1u)
  {
    if (v28 == 2)
    {
      v2 = v24;
      v1 = v25;
      v4 = v26;
      v3 = v27;
      swift_errorRetain(v27);
      v3;
      __swift_destroy_boxed_opaque_existential_1Tm(&v20);
      goto LABEL_7;
    }

    v1 = *(&v20 + 1);
    v2 = v20;
    v4 = v21;
    v3 = v22;
  }

  else
  {
    v2 = *(&v20 + 1);
    v1 = v21;
    v4 = v22;
    v3 = v23;
  }

  swift_errorRetain(v3);
  v3;
LABEL_7:
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, _ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject(v5, v19);
  *(inited + 1) = xmmword_18071DBE0;
  strcpy(inited + 32, "NSCodingPath");
  *(inited + 45) = 0;
  *(inited + 23) = -5120;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays9CodingKey_pGMd, _sSays9CodingKey_pGMR);
  inited[6] = v2;
  inited[9] = v7;
  inited[10] = 0xD000000000000012;
  inited[15] = &type metadata for String;
  inited[11] = 0x800000018066C190;
  inited[12] = v1;
  inited[13] = v4;
  v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating(inited);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, _sSS_yptMR);
  swift_arrayDestroy((inited + 4), 2, v9);
  if (v3)
  {
    swift_getErrorValue(v3, &v18, &v16);
    v10 = v16;
    v11 = v17;
    v22 = v17;
    v12 = __swift_allocate_boxed_opaque_existential_0Tm(&v20);
    (*(*(v11 - 1) + 16))(v12, v10, v11);
    outlined init with take of Any(&v20, v15);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v8);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v15, 0xD000000000000011, 0x800000018066C1B0, isUniquelyReferenced_nonNull_native);
    v3;
  }

  *&v20 = v8;
  return _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)(&v20, byte_1EEEBDEE8);
}

uint64_t protocol witness for Error._code.getter in conformance DecodingError()
{
  outlined init with copy of DecodingError(v0, v4);
  if (v5 > 1u)
  {
    if (v5 == 2)
    {
      v1 = v4[5];
      v2 = v4[8];
      v4[7];
      v1;
      v2;
      __swift_destroy_boxed_opaque_existential_1Tm(v4);
      return 4865;
    }
  }

  else if (v5)
  {
    outlined destroy of DecodingError(v4);
    return 4865;
  }

  outlined destroy of DecodingError(v4);
  return 4864;
}

void specialized DefaultStringInterpolation.appendInterpolation<A>(_:)(unsigned __int8 a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, int8x16_t a9)
{
  v10 = 0xD000000000000010;
  if (a1 <= 1u)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v12 = ".truncatedScalar";
        v10 = 0xD000000000000017;
        goto LABEL_13;
      }

      goto LABEL_16;
    }

    v12 = "Swift/UTF8EncodingError.swift";
    v10 = 0xD00000000000001BLL;
  }

  else
  {
    if (a1 == 4)
    {
      v11 = ".truncatedScalar";
      goto LABEL_10;
    }

    if (a1 != 3)
    {
      if (a1 == 2)
      {
        v10 = 0xD000000000000021;
        v11 = ".invalidNonSurrogateCodePointByte";
LABEL_10:
        v12 = v11 - 32;
        goto LABEL_13;
      }

LABEL_16:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0x6168636165726E75, 0xEB00000000656C62, "Swift/UTF8EncodingError.swift", 0x1DuLL, 2, 0xC7uLL);
    }

    v12 = ".surrogateCodePointByte";
    v10 = 0xD000000000000015;
  }

LABEL_13:
  static String.+= infix(_:_:)(v9, v10, v12 | 0x8000000000000000, a2, a3, a4, a5, a6, a7, a8, a9);

  v12 | 0x8000000000000000;
}

void DefaultStringInterpolation.appendInterpolation<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3._countAndFlagsBits = (*(a3 + 8))(a2, a3);
  object = v3._object;
  String.write(_:)(v3);

  object;
}

void protocol witness for CodingKey.init(stringValue:) in conformance _GenericIndexKey(unint64_t a1@<X1>, uint64_t a2@<X8>)
{
  a1;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 24) = 0;
  *(a2 + 16) = 0;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance _GenericIndexKey@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized _GenericIndexKey.init(intValue:)(a1);
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  return result;
}

unint64_t _ss13DecodingErrorO013dataCorruptedB06forKey2in16debugDescriptionAB0F0Qz_xSSts05KeyedA17ContainerProtocolRzlFZs0jaK0Vys017_DictionaryCodingF0VG_Tt3B5@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v14 = (*(*a5 + 88))();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, _ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
  inited = swift_initStackObject(v15, v20);
  *(inited + 1) = xmmword_18071DB30;
  inited[7] = &type metadata for _DictionaryCodingKey;
  inited[8] = &protocol witness table for _DictionaryCodingKey;
  v17 = swift_allocObject(&unk_1EEEADD90, 0x29, 7uLL);
  inited[4] = v17;
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a3;
  *(v17 + 40) = a4 & 1;
  a2;
  specialized Array.append<A>(contentsOf:)(inited, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, _ss23_ContiguousArrayStorageCys9CodingKey_pGMR, &_ss9CodingKey_pMd, _ss9CodingKey_pMR);
  *a8 = v14;
  *(a8 + 8) = a6;
  *(a8 + 16) = a7;
  *(a8 + 24) = 0;
  *(a8 + 72) = 3;
  return a7;
}

unint64_t static DecodingError.dataCorruptedError<A>(forKey:in:debugDescription:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, const char *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v12 = (*(a5 + 24))(a4, a5);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, _ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
  inited = swift_initStackObject(v13, v19);
  *(inited + 1) = xmmword_18071DB30;
  swift_getAssociatedTypeWitness(0, a5, a4, &protocol requirements base descriptor for KeyedDecodingContainerProtocol, associated type descriptor for KeyedDecodingContainerProtocol.Key);
  v16 = v15;
  inited[7] = v15;
  inited[8] = swift_getAssociatedConformanceWitness(a5, a4, v15, &protocol requirements base descriptor for KeyedDecodingContainerProtocol, associated conformance descriptor for KeyedDecodingContainerProtocol.KeyedDecodingContainerProtocol.Key: CodingKey);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(inited + 4);
  (*(*(v16 - 8) + 16))(boxed_opaque_existential_0Tm, a1, v16);
  specialized Array.append<A>(contentsOf:)(inited, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, _ss23_ContiguousArrayStorageCys9CodingKey_pGMR, &_ss9CodingKey_pMd, _ss9CodingKey_pMR);
  *a6 = v12;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = 0;
  *(a6 + 72) = 3;
  return a3;
}

unint64_t static DecodingError.dataCorruptedError(in:debugDescription:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v8);
  v10 = (*(v9 + 8))(v8, v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, _ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
  inited = swift_initStackObject(v11, v26);
  *(inited + 1) = xmmword_18071DB30;
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v13);
  v15 = (*(v14 + 32))(v13, v14);
  v16 = specialized _GenericIndexKey.init(intValue:)(v15);
  if (!v17)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v20 = v16;
  v21 = v17;
  v22 = v18;
  v23 = v19;
  inited[7] = &type metadata for _GenericIndexKey;
  inited[8] = &protocol witness table for _GenericIndexKey;
  v24 = swift_allocObject(&unk_1EEEADD68, 0x29, 7uLL);
  inited[4] = v24;
  v24[2] = v20;
  v24[3] = v21;
  v24[4] = v22;
  *(v24 + 40) = v23 & 1;
  specialized Array.append<A>(contentsOf:)(inited, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, _ss23_ContiguousArrayStorageCys9CodingKey_pGMR, &_ss9CodingKey_pMd, _ss9CodingKey_pMR);
  *a4 = v10;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = 0;
  *(a4 + 72) = 3;
  return a3;
}

{
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v7);
  *a4 = (*(v8 + 8))(v7, v8);
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = 0;
  *(a4 + 72) = 3;

  return a3;
}

void _KeyedEncodingContainerBase.encode<A>(_:forKey:)()
{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000034, 0x8000000180671750, "Swift/Codable.swift", 0x13uLL, 2, 0xEF5uLL);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000034, 0x8000000180671750, "Swift/Codable.swift", 0x13uLL, 2, 0xEF9uLL);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000034, 0x8000000180671750, "Swift/Codable.swift", 0x13uLL, 2, 0xEFDuLL);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000034, 0x8000000180671750, "Swift/Codable.swift", 0x13uLL, 2, 0xF01uLL);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000034, 0x8000000180671750, "Swift/Codable.swift", 0x13uLL, 2, 0xF05uLL);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000034, 0x8000000180671750, "Swift/Codable.swift", 0x13uLL, 2, 0xF09uLL);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000034, 0x8000000180671750, "Swift/Codable.swift", 0x13uLL, 2, 0xF0DuLL);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000034, 0x8000000180671750, "Swift/Codable.swift", 0x13uLL, 2, 0xF11uLL);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000034, 0x8000000180671750, "Swift/Codable.swift", 0x13uLL, 2, 0xF15uLL);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000034, 0x8000000180671750, "Swift/Codable.swift", 0x13uLL, 2, 0xF1AuLL);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000034, 0x8000000180671750, "Swift/Codable.swift", 0x13uLL, 2, 0xF1EuLL);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000034, 0x8000000180671750, "Swift/Codable.swift", 0x13uLL, 2, 0xF22uLL);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000034, 0x8000000180671750, "Swift/Codable.swift", 0x13uLL, 2, 0xF26uLL);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000034, 0x8000000180671750, "Swift/Codable.swift", 0x13uLL, 2, 0xF2AuLL);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000034, 0x8000000180671750, "Swift/Codable.swift", 0x13uLL, 2, 0xF2EuLL);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000034, 0x8000000180671750, "Swift/Codable.swift", 0x13uLL, 2, 0xF33uLL);
}

void _KeyedEncodingContainerBase.encodeIfPresent<A>(_:forKey:)()
{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000034, 0x8000000180671750, "Swift/Codable.swift", 0x13uLL, 2, 0xF42uLL);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000034, 0x8000000180671750, "Swift/Codable.swift", 0x13uLL, 2, 0xF46uLL);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000034, 0x8000000180671750, "Swift/Codable.swift", 0x13uLL, 2, 0xF4AuLL);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000034, 0x8000000180671750, "Swift/Codable.swift", 0x13uLL, 2, 0xF4EuLL);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000034, 0x8000000180671750, "Swift/Codable.swift", 0x13uLL, 2, 0xF52uLL);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000034, 0x8000000180671750, "Swift/Codable.swift", 0x13uLL, 2, 0xF56uLL);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000034, 0x8000000180671750, "Swift/Codable.swift", 0x13uLL, 2, 0xF5AuLL);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000034, 0x8000000180671750, "Swift/Codable.swift", 0x13uLL, 2, 0xF5EuLL);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000034, 0x8000000180671750, "Swift/Codable.swift", 0x13uLL, 2, 0xF62uLL);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000034, 0x8000000180671750, "Swift/Codable.swift", 0x13uLL, 2, 0xF67uLL);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000034, 0x8000000180671750, "Swift/Codable.swift", 0x13uLL, 2, 0xF6BuLL);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000034, 0x8000000180671750, "Swift/Codable.swift", 0x13uLL, 2, 0xF6FuLL);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000034, 0x8000000180671750, "Swift/Codable.swift", 0x13uLL, 2, 0xF73uLL);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000034, 0x8000000180671750, "Swift/Codable.swift", 0x13uLL, 2, 0xF77uLL);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000034, 0x8000000180671750, "Swift/Codable.swift", 0x13uLL, 2, 0xF7BuLL);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000034, 0x8000000180671750, "Swift/Codable.swift", 0x13uLL, 2, 0xF80uLL);
}

uint64_t _KeyedEncodingContainerBox.codingPath.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 416);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - v5;
  (*(v4 + 16))(&v9 - v5, v1 + *(v2 + 432), v3);
  v7 = (*(*(v2 + 424) + 24))(v3);
  (*(v4 + 8))(v6, v3);
  return v7;
}

uint64_t _KeyedEncodingContainerBox.encodeNil<A>(forKey:)(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 424);
  v6 = *(*v2 + 416);
  swift_getAssociatedTypeWitness(0, v5, v6, &protocol requirements base descriptor for KeyedEncodingContainerProtocol, associated type descriptor for KeyedEncodingContainerProtocol.Key);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v14 - v10;
  if (*(*(a2 - 8) + 64) != v12)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v9 + 16))(v14 - v10, a1, v8);
  (*(v5 + 32))(v11, v6, v5);
  return (*(v9 + 8))(v11, v8);
}

uint64_t _KeyedEncodingContainerBox.encode<A>(_:forKey:)(char a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 424);
  v8 = *(*v3 + 416);
  swift_getAssociatedTypeWitness(0, v7, v8, &protocol requirements base descriptor for KeyedEncodingContainerProtocol, associated type descriptor for KeyedEncodingContainerProtocol.Key);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v16 - v12;
  if (*(*(a3 - 8) + 64) != v14)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v11 + 16))(&v16 - v12, a2, v10);
  (*(v7 + 40))(a1 & 1, v13, v8, v7);
  return (*(v11 + 8))(v13, v10);
}

uint64_t _KeyedEncodingContainerBox.encode<A>(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a2;
  v8 = *(*v4 + 424);
  v9 = *(*v4 + 416);
  swift_getAssociatedTypeWitness(0, v8, v9, &protocol requirements base descriptor for KeyedEncodingContainerProtocol, associated type descriptor for KeyedEncodingContainerProtocol.Key);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v17 - v13;
  if (*(*(a4 - 8) + 64) != v15)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v12 + 16))(&v17 - v13, a3, v11);
  (*(v8 + 48))(a1, v18, v14, v9, v8);
  return (*(v12 + 8))(v14, v11);
}

{
  v18 = a2;
  v8 = *(*v4 + 424);
  v9 = *(*v4 + 416);
  swift_getAssociatedTypeWitness(0, v8, v9, &protocol requirements base descriptor for KeyedEncodingContainerProtocol, associated type descriptor for KeyedEncodingContainerProtocol.Key);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v17 - v13;
  if (*(*(a4 - 8) + 64) != v15)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v12 + 16))(&v17 - v13, a3, v11);
  (*(v8 + 112))(a1, v18, v14, v9, v8);
  return (*(v12 + 8))(v14, v11);
}

{
  v18 = a2;
  v8 = *(*v4 + 424);
  v9 = *(*v4 + 416);
  swift_getAssociatedTypeWitness(0, v8, v9, &protocol requirements base descriptor for KeyedEncodingContainerProtocol, associated type descriptor for KeyedEncodingContainerProtocol.Key);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v17 - v13;
  if (*(*(a4 - 8) + 64) != v15)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v12 + 16))(&v17 - v13, a3, v11);
  (*(v8 + 160))(a1, v18, v14, v9, v8);
  return (*(v12 + 8))(v14, v11);
}

uint64_t _KeyedEncodingContainerBox.encode<A>(_:forKey:)(uint64_t a1, uint64_t a2, double a3)
{
  v7 = *(*v3 + 424);
  v8 = *(*v3 + 416);
  swift_getAssociatedTypeWitness(0, v7, v8, &protocol requirements base descriptor for KeyedEncodingContainerProtocol, associated type descriptor for KeyedEncodingContainerProtocol.Key);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v16 - v12;
  if (*(*(a2 - 8) + 64) != v14)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v11 + 16))(&v16 - v12, a1, v10);
  (*(v7 + 56))(v13, v8, v7, a3);
  return (*(v11 + 8))(v13, v10);
}

uint64_t _KeyedEncodingContainerBox.encode<A>(_:forKey:)(uint64_t a1, uint64_t a2, float a3)
{
  v7 = *(*v3 + 424);
  v8 = *(*v3 + 416);
  swift_getAssociatedTypeWitness(0, v7, v8, &protocol requirements base descriptor for KeyedEncodingContainerProtocol, associated type descriptor for KeyedEncodingContainerProtocol.Key);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v16 - v12;
  if (*(*(a2 - 8) + 64) != v14)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v11 + 16))(&v16 - v12, a1, v10);
  (*(v7 + 64))(v13, v8, v7, a3);
  return (*(v11 + 8))(v13, v10);
}

uint64_t _KeyedEncodingContainerBox.encode<A>(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 424);
  v8 = *(*v3 + 416);
  swift_getAssociatedTypeWitness(0, v7, v8, &protocol requirements base descriptor for KeyedEncodingContainerProtocol, associated type descriptor for KeyedEncodingContainerProtocol.Key);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v16 - v12;
  if (*(*(a3 - 8) + 64) != v14)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v11 + 16))(&v16 - v12, a2, v10);
  (*(v7 + 72))(a1, v13, v8, v7);
  return (*(v11 + 8))(v13, v10);
}

{
  v7 = *(*v3 + 424);
  v8 = *(*v3 + 416);
  swift_getAssociatedTypeWitness(0, v7, v8, &protocol requirements base descriptor for KeyedEncodingContainerProtocol, associated type descriptor for KeyedEncodingContainerProtocol.Key);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v16 - v12;
  if (*(*(a3 - 8) + 64) != v14)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v11 + 16))(&v16 - v12, a2, v10);
  (*(v7 + 80))(a1, v13, v8, v7);
  return (*(v11 + 8))(v13, v10);
}

{
  v7 = *(*v3 + 424);
  v8 = *(*v3 + 416);
  swift_getAssociatedTypeWitness(0, v7, v8, &protocol requirements base descriptor for KeyedEncodingContainerProtocol, associated type descriptor for KeyedEncodingContainerProtocol.Key);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v16 - v12;
  if (*(*(a3 - 8) + 64) != v14)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v11 + 16))(&v16 - v12, a2, v10);
  (*(v7 + 88))(a1, v13, v8, v7);
  return (*(v11 + 8))(v13, v10);
}

{
  v7 = *(*v3 + 424);
  v8 = *(*v3 + 416);
  swift_getAssociatedTypeWitness(0, v7, v8, &protocol requirements base descriptor for KeyedEncodingContainerProtocol, associated type descriptor for KeyedEncodingContainerProtocol.Key);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v16 - v12;
  if (*(*(a3 - 8) + 64) != v14)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v11 + 16))(&v16 - v12, a2, v10);
  (*(v7 + 96))(a1, v13, v8, v7);
  return (*(v11 + 8))(v13, v10);
}

{
  v7 = *(*v3 + 424);
  v8 = *(*v3 + 416);
  swift_getAssociatedTypeWitness(0, v7, v8, &protocol requirements base descriptor for KeyedEncodingContainerProtocol, associated type descriptor for KeyedEncodingContainerProtocol.Key);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v16 - v12;
  if (*(*(a3 - 8) + 64) != v14)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v11 + 16))(&v16 - v12, a2, v10);
  (*(v7 + 104))(a1, v13, v8, v7);
  return (*(v11 + 8))(v13, v10);
}

{
  v7 = *(*v3 + 424);
  v8 = *(*v3 + 416);
  swift_getAssociatedTypeWitness(0, v7, v8, &protocol requirements base descriptor for KeyedEncodingContainerProtocol, associated type descriptor for KeyedEncodingContainerProtocol.Key);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v16 - v12;
  if (*(*(a3 - 8) + 64) != v14)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v11 + 16))(&v16 - v12, a2, v10);
  (*(v7 + 120))(a1, v13, v8, v7);
  return (*(v11 + 8))(v13, v10);
}

{
  v7 = *(*v3 + 424);
  v8 = *(*v3 + 416);
  swift_getAssociatedTypeWitness(0, v7, v8, &protocol requirements base descriptor for KeyedEncodingContainerProtocol, associated type descriptor for KeyedEncodingContainerProtocol.Key);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v16 - v12;
  if (*(*(a3 - 8) + 64) != v14)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v11 + 16))(&v16 - v12, a2, v10);
  (*(v7 + 128))(a1, v13, v8, v7);
  return (*(v11 + 8))(v13, v10);
}

{
  v7 = *(*v3 + 424);
  v8 = *(*v3 + 416);
  swift_getAssociatedTypeWitness(0, v7, v8, &protocol requirements base descriptor for KeyedEncodingContainerProtocol, associated type descriptor for KeyedEncodingContainerProtocol.Key);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v16 - v12;
  if (*(*(a3 - 8) + 64) != v14)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v11 + 16))(&v16 - v12, a2, v10);
  (*(v7 + 136))(a1, v13, v8, v7);
  return (*(v11 + 8))(v13, v10);
}

{
  v7 = *(*v3 + 424);
  v8 = *(*v3 + 416);
  swift_getAssociatedTypeWitness(0, v7, v8, &protocol requirements base descriptor for KeyedEncodingContainerProtocol, associated type descriptor for KeyedEncodingContainerProtocol.Key);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v16 - v12;
  if (*(*(a3 - 8) + 64) != v14)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v11 + 16))(&v16 - v12, a2, v10);
  (*(v7 + 144))(a1, v13, v8, v7);
  return (*(v11 + 8))(v13, v10);
}

{
  v7 = *(*v3 + 424);
  v8 = *(*v3 + 416);
  swift_getAssociatedTypeWitness(0, v7, v8, &protocol requirements base descriptor for KeyedEncodingContainerProtocol, associated type descriptor for KeyedEncodingContainerProtocol.Key);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v16 - v12;
  if (*(*(a3 - 8) + 64) != v14)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v11 + 16))(&v16 - v12, a2, v10);
  (*(v7 + 152))(a1, v13, v8, v7);
  return (*(v11 + 8))(v13, v10);
}

uint64_t _KeyedEncodingContainerBox.encode<A, B>(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a3;
  v19 = a5;
  v9 = *(*v5 + 424);
  v10 = *(*v5 + 416);
  swift_getAssociatedTypeWitness(0, v9, v10, &protocol requirements base descriptor for KeyedEncodingContainerProtocol, associated type descriptor for KeyedEncodingContainerProtocol.Key);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v18 - v14;
  if (*(*(a4 - 8) + 64) != v16)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v13 + 16))(&v18 - v14, a2, v12);
  (*(v9 + 168))(a1, v15, v18, v19, v10, v9);
  return (*(v13 + 8))(v15, v12);
}

uint64_t _KeyedEncodingContainerBox.encodeConditional<A, B>(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a3;
  v19 = a5;
  v9 = *(*v5 + 424);
  v10 = *(*v5 + 416);
  swift_getAssociatedTypeWitness(0, v9, v10, &protocol requirements base descriptor for KeyedEncodingContainerProtocol, associated type descriptor for KeyedEncodingContainerProtocol.Key);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v18 - v14;
  if (*(*(a4 - 8) + 64) != v16)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v13 + 16))(&v18 - v14, a2, v12);
  (*(v9 + 176))(a1, v15, v18, v19, v10, v9);
  return (*(v13 + 8))(v15, v12);
}

uint64_t _KeyedEncodingContainerBox.encodeIfPresent<A>(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 424);
  v8 = *(*v3 + 416);
  swift_getAssociatedTypeWitness(0, v7, v8, &protocol requirements base descriptor for KeyedEncodingContainerProtocol, associated type descriptor for KeyedEncodingContainerProtocol.Key);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v16 - v12;
  if (*(*(a3 - 8) + 64) != v14)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v11 + 16))(&v16 - v12, a2, v10);
  (*(v7 + 184))(a1, v13, v8, v7);
  return (*(v11 + 8))(v13, v10);
}

uint64_t _KeyedEncodingContainerBox.encodeIfPresent<A>(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a2;
  v8 = *(*v4 + 424);
  v9 = *(*v4 + 416);
  swift_getAssociatedTypeWitness(0, v8, v9, &protocol requirements base descriptor for KeyedEncodingContainerProtocol, associated type descriptor for KeyedEncodingContainerProtocol.Key);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v17 - v13;
  if (*(*(a4 - 8) + 64) != v15)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v12 + 16))(&v17 - v13, a3, v11);
  (*(v8 + 192))(a1, v18, v14, v9, v8);
  return (*(v12 + 8))(v14, v11);
}

uint64_t _KeyedEncodingContainerBox.encodeIfPresent<A>(_:forKey:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v18 = a1;
  v8 = *(*v4 + 424);
  v9 = *(*v4 + 416);
  swift_getAssociatedTypeWitness(0, v8, v9, &protocol requirements base descriptor for KeyedEncodingContainerProtocol, associated type descriptor for KeyedEncodingContainerProtocol.Key);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v17 - v13;
  if (*(*(a4 - 8) + 64) != v15)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v12 + 16))(&v17 - v13, a3, v11);
  (*(v8 + 200))(v18, a2 & 1, v14, v9, v8);
  return (*(v12 + 8))(v14, v11);
}

{
  v18 = a1;
  v8 = *(*v4 + 424);
  v9 = *(*v4 + 416);
  swift_getAssociatedTypeWitness(0, v8, v9, &protocol requirements base descriptor for KeyedEncodingContainerProtocol, associated type descriptor for KeyedEncodingContainerProtocol.Key);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v17 - v13;
  if (*(*(a4 - 8) + 64) != v15)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v12 + 16))(&v17 - v13, a3, v11);
  (*(v8 + 216))(v18, a2 & 1, v14, v9, v8);
  return (*(v12 + 8))(v14, v11);
}

{
  v18 = a1;
  v8 = *(*v4 + 424);
  v9 = *(*v4 + 416);
  swift_getAssociatedTypeWitness(0, v8, v9, &protocol requirements base descriptor for KeyedEncodingContainerProtocol, associated type descriptor for KeyedEncodingContainerProtocol.Key);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v17 - v13;
  if (*(*(a4 - 8) + 64) != v15)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v12 + 16))(&v17 - v13, a3, v11);
  (*(v8 + 248))(v18, a2 & 1, v14, v9, v8);
  return (*(v12 + 8))(v14, v11);
}

{
  v18 = a1;
  v8 = *(*v4 + 424);
  v9 = *(*v4 + 416);
  swift_getAssociatedTypeWitness(0, v8, v9, &protocol requirements base descriptor for KeyedEncodingContainerProtocol, associated type descriptor for KeyedEncodingContainerProtocol.Key);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v17 - v13;
  if (*(*(a4 - 8) + 64) != v15)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v12 + 16))(&v17 - v13, a3, v11);
  (*(v8 + 264))(v18, a2 & 1, v14, v9, v8);
  return (*(v12 + 8))(v14, v11);
}

{
  v18 = a1;
  v8 = *(*v4 + 424);
  v9 = *(*v4 + 416);
  swift_getAssociatedTypeWitness(0, v8, v9, &protocol requirements base descriptor for KeyedEncodingContainerProtocol, associated type descriptor for KeyedEncodingContainerProtocol.Key);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v17 - v13;
  if (*(*(a4 - 8) + 64) != v15)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v12 + 16))(&v17 - v13, a3, v11);
  (*(v8 + 296))(v18, a2 & 1, v14, v9, v8);
  return (*(v12 + 8))(v14, v11);
}

uint64_t _KeyedEncodingContainerBox.encodeIfPresent<A>(_:forKey:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 424);
  v8 = *(*v3 + 416);
  swift_getAssociatedTypeWitness(0, v7, v8, &protocol requirements base descriptor for KeyedEncodingContainerProtocol, associated type descriptor for KeyedEncodingContainerProtocol.Key);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v16 - v12;
  if (*(*(a3 - 8) + 64) != v14)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v11 + 16))(&v16 - v12, a2, v10);
  (*(v7 + 208))(a1 | ((HIDWORD(a1) & 1) << 32), v13, v8, v7);
  return (*(v11 + 8))(v13, v10);
}

{
  v7 = *(*v3 + 424);
  v8 = *(*v3 + 416);
  swift_getAssociatedTypeWitness(0, v7, v8, &protocol requirements base descriptor for KeyedEncodingContainerProtocol, associated type descriptor for KeyedEncodingContainerProtocol.Key);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v16 - v12;
  if (*(*(a3 - 8) + 64) != v14)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v11 + 16))(&v16 - v12, a2, v10);
  (*(v7 + 240))(a1 | ((HIDWORD(a1) & 1) << 32), v13, v8, v7);
  return (*(v11 + 8))(v13, v10);
}

{
  v7 = *(*v3 + 424);
  v8 = *(*v3 + 416);
  swift_getAssociatedTypeWitness(0, v7, v8, &protocol requirements base descriptor for KeyedEncodingContainerProtocol, associated type descriptor for KeyedEncodingContainerProtocol.Key);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v16 - v12;
  if (*(*(a3 - 8) + 64) != v14)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v11 + 16))(&v16 - v12, a2, v10);
  (*(v7 + 288))(a1 | ((HIDWORD(a1) & 1) << 32), v13, v8, v7);
  return (*(v11 + 8))(v13, v10);
}

uint64_t _KeyedEncodingContainerBox.encodeIfPresent<A>(_:forKey:)(__int16 a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 424);
  v8 = *(*v3 + 416);
  swift_getAssociatedTypeWitness(0, v7, v8, &protocol requirements base descriptor for KeyedEncodingContainerProtocol, associated type descriptor for KeyedEncodingContainerProtocol.Key);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v16 - v12;
  if (*(*(a3 - 8) + 64) != v14)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v11 + 16))(&v16 - v12, a2, v10);
  (*(v7 + 224))(a1 & 0x1FF, v13, v8, v7);
  return (*(v11 + 8))(v13, v10);
}

{
  v7 = *(*v3 + 424);
  v8 = *(*v3 + 416);
  swift_getAssociatedTypeWitness(0, v7, v8, &protocol requirements base descriptor for KeyedEncodingContainerProtocol, associated type descriptor for KeyedEncodingContainerProtocol.Key);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v16 - v12;
  if (*(*(a3 - 8) + 64) != v14)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v11 + 16))(&v16 - v12, a2, v10);
  (*(v7 + 272))(a1 & 0x1FF, v13, v8, v7);
  return (*(v11 + 8))(v13, v10);
}

uint64_t _KeyedEncodingContainerBox.encodeIfPresent<A>(_:forKey:)(int a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 424);
  v8 = *(*v3 + 416);
  swift_getAssociatedTypeWitness(0, v7, v8, &protocol requirements base descriptor for KeyedEncodingContainerProtocol, associated type descriptor for KeyedEncodingContainerProtocol.Key);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v16 - v12;
  if (*(*(a3 - 8) + 64) != v14)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v11 + 16))(&v16 - v12, a2, v10);
  (*(v7 + 232))(a1 & 0x1FFFF, v13, v8, v7);
  return (*(v11 + 8))(v13, v10);
}

{
  v7 = *(*v3 + 424);
  v8 = *(*v3 + 416);
  swift_getAssociatedTypeWitness(0, v7, v8, &protocol requirements base descriptor for KeyedEncodingContainerProtocol, associated type descriptor for KeyedEncodingContainerProtocol.Key);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v16 - v12;
  if (*(*(a3 - 8) + 64) != v14)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v11 + 16))(&v16 - v12, a2, v10);
  (*(v7 + 280))(a1 & 0x1FFFF, v13, v8, v7);
  return (*(v11 + 8))(v13, v10);
}

uint64_t _KeyedEncodingContainerBox.encodeIfPresent<A>(_:forKey:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v18 = a1;
  v19 = a2;
  v9 = *(*v5 + 424);
  v10 = *(*v5 + 416);
  swift_getAssociatedTypeWitness(0, v9, v10, &protocol requirements base descriptor for KeyedEncodingContainerProtocol, associated type descriptor for KeyedEncodingContainerProtocol.Key);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v18 - v14;
  if (*(*(a5 - 8) + 64) != v16)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v13 + 16))(&v18 - v14, a4, v12);
  (*(v9 + 256))(v18, v19, a3 & 1, v15, v10, v9);
  return (*(v13 + 8))(v15, v12);
}

{
  v18 = a1;
  v19 = a2;
  v9 = *(*v5 + 424);
  v10 = *(*v5 + 416);
  swift_getAssociatedTypeWitness(0, v9, v10, &protocol requirements base descriptor for KeyedEncodingContainerProtocol, associated type descriptor for KeyedEncodingContainerProtocol.Key);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v18 - v14;
  if (*(*(a5 - 8) + 64) != v16)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v13 + 16))(&v18 - v14, a4, v12);
  (*(v9 + 304))(v18, v19, a3 & 1, v15, v10, v9);
  return (*(v13 + 8))(v15, v12);
}

uint64_t _KeyedEncodingContainerBox.encodeIfPresent<A, B>(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a3;
  v19 = a5;
  v9 = *(*v5 + 424);
  v10 = *(*v5 + 416);
  swift_getAssociatedTypeWitness(0, v9, v10, &protocol requirements base descriptor for KeyedEncodingContainerProtocol, associated type descriptor for KeyedEncodingContainerProtocol.Key);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v18 - v14;
  if (*(*(a4 - 8) + 64) != v16)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v13 + 16))(&v18 - v14, a2, v12);
  (*(v9 + 312))(a1, v15, v18, v19, v10, v9);
  return (*(v13 + 8))(v15, v12);
}

uint64_t _KeyedEncodingContainerBox.nestedContainer<A, B>(keyedBy:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a5;
  v9 = *(*v5 + 424);
  v10 = *(*v5 + 416);
  swift_getAssociatedTypeWitness(0, v9, v10, &protocol requirements base descriptor for KeyedEncodingContainerProtocol, associated type descriptor for KeyedEncodingContainerProtocol.Key);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v18 - v14;
  if (*(*(a4 - 8) + 64) != v16)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v13 + 16))(&v18 - v14, a2, v12);
  (*(v9 + 320))(a3, v15, a3, v19, v10, v9);
  return (*(v13 + 8))(v15, v12);
}

uint64_t _KeyedEncodingContainerBox.nestedUnkeyedContainer<A>(forKey:)(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 424);
  v6 = *(*v2 + 416);
  swift_getAssociatedTypeWitness(0, v5, v6, &protocol requirements base descriptor for KeyedEncodingContainerProtocol, associated type descriptor for KeyedEncodingContainerProtocol.Key);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  if (*(*(a2 - 8) + 64) != v12)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v9 + 16))(&v14 - v10, a1, v8);
  (*(v5 + 328))(v11, v6, v5);
  return (*(v9 + 8))(v11, v8);
}

uint64_t _KeyedEncodingContainerBox.superEncoder<A>(forKey:)(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 424);
  v6 = *(*v2 + 416);
  swift_getAssociatedTypeWitness(0, v5, v6, &protocol requirements base descriptor for KeyedEncodingContainerProtocol, associated type descriptor for KeyedEncodingContainerProtocol.Key);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  if (*(*(a2 - 8) + 64) != v12)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v9 + 16))(&v14 - v10, a1, v8);
  (*(v5 + 344))(v11, v6, v5);
  return (*(v9 + 8))(v11, v8);
}

void _KeyedEncodingContainerBox.__deallocating_deinit()
{
  (*(*(*(*v0 + 416) - 8) + 8))(v0 + *(*v0 + 432));

  swift_deallocClassInstance(v0);
}

void _KeyedDecodingContainerBase.decode<A>(_:forKey:)()
{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000034, 0x8000000180671710, "Swift/Codable.swift", 0x13uLL, 2, 0x10F9uLL);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000034, 0x8000000180671710, "Swift/Codable.swift", 0x13uLL, 2, 0x1100uLL);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000034, 0x8000000180671710, "Swift/Codable.swift", 0x13uLL, 2, 0x1107uLL);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000034, 0x8000000180671710, "Swift/Codable.swift", 0x13uLL, 2, 0x110EuLL);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000034, 0x8000000180671710, "Swift/Codable.swift", 0x13uLL, 2, 0x1115uLL);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000034, 0x8000000180671710, "Swift/Codable.swift", 0x13uLL, 2, 0x111CuLL);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000034, 0x8000000180671710, "Swift/Codable.swift", 0x13uLL, 2, 0x1123uLL);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000034, 0x8000000180671710, "Swift/Codable.swift", 0x13uLL, 2, 0x112AuLL);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000034, 0x8000000180671710, "Swift/Codable.swift", 0x13uLL, 2, 0x1131uLL);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000034, 0x8000000180671710, "Swift/Codable.swift", 0x13uLL, 2, 0x1139uLL);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000034, 0x8000000180671710, "Swift/Codable.swift", 0x13uLL, 2, 0x1140uLL);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000034, 0x8000000180671710, "Swift/Codable.swift", 0x13uLL, 2, 0x1147uLL);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000034, 0x8000000180671710, "Swift/Codable.swift", 0x13uLL, 2, 0x114EuLL);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000034, 0x8000000180671710, "Swift/Codable.swift", 0x13uLL, 2, 0x1155uLL);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000034, 0x8000000180671710, "Swift/Codable.swift", 0x13uLL, 2, 0x115CuLL);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000034, 0x8000000180671710, "Swift/Codable.swift", 0x13uLL, 2, 0x1164uLL);
}

void _KeyedDecodingContainerBase.decodeIfPresent<A>(_:forKey:)()
{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000034, 0x8000000180671710, "Swift/Codable.swift", 0x13uLL, 2, 0x1172uLL);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000034, 0x8000000180671710, "Swift/Codable.swift", 0x13uLL, 2, 0x1179uLL);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000034, 0x8000000180671710, "Swift/Codable.swift", 0x13uLL, 2, 0x1180uLL);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000034, 0x8000000180671710, "Swift/Codable.swift", 0x13uLL, 2, 0x1187uLL);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000034, 0x8000000180671710, "Swift/Codable.swift", 0x13uLL, 2, 0x118EuLL);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000034, 0x8000000180671710, "Swift/Codable.swift", 0x13uLL, 2, 0x1195uLL);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000034, 0x8000000180671710, "Swift/Codable.swift", 0x13uLL, 2, 0x119CuLL);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000034, 0x8000000180671710, "Swift/Codable.swift", 0x13uLL, 2, 0x11A3uLL);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000034, 0x8000000180671710, "Swift/Codable.swift", 0x13uLL, 2, 0x11AAuLL);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000034, 0x8000000180671710, "Swift/Codable.swift", 0x13uLL, 2, 0x11B2uLL);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000034, 0x8000000180671710, "Swift/Codable.swift", 0x13uLL, 2, 0x11B9uLL);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000034, 0x8000000180671710, "Swift/Codable.swift", 0x13uLL, 2, 0x11C0uLL);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000034, 0x8000000180671710, "Swift/Codable.swift", 0x13uLL, 2, 0x11C7uLL);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000034, 0x8000000180671710, "Swift/Codable.swift", 0x13uLL, 2, 0x11CEuLL);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000034, 0x8000000180671710, "Swift/Codable.swift", 0x13uLL, 2, 0x11D5uLL);
}

{
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000034, 0x8000000180671710, "Swift/Codable.swift", 0x13uLL, 2, 0x11DDuLL);
}

uint64_t _KeyedDecodingContainerBox.codingPath.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 424);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - v5;
  (*(v4 + 16))(&v9 - v5, v1 + *(v2 + 440), v3);
  v7 = (*(*(v2 + 432) + 24))(v3);
  (*(v4 + 8))(v6, v3);
  return v7;
}

__objc2_class **_KeyedDecodingContainerBox.allKeys.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 424);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v12 - v5;
  (*(v4 + 16))(&v12 - v5, v1 + *(v2 + 440), v3);
  v7 = *(v2 + 432);
  v8 = (*(v7 + 32))(v3, v7);
  (*(v4 + 8))(v6, v3);
  swift_getAssociatedTypeWitness(0, v7, v3, &protocol requirements base descriptor for KeyedDecodingContainerProtocol, associated type descriptor for KeyedDecodingContainerProtocol.Key);
  v10 = specialized _arrayForceCast<A, B>(_:)(v8, v9);
  v8;
  return v10;
}

uint64_t _KeyedDecodingContainerBox.contains<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 424);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v19 - v7;
  v10 = *(v9 + 432);
  swift_getAssociatedTypeWitness(0, v10, v5, &protocol requirements base descriptor for KeyedDecodingContainerProtocol, associated type descriptor for KeyedDecodingContainerProtocol.Key);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - v14;
  if (*(*(a2 - 8) + 64) != v16)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v13 + 16))(&v19 - v14, a1, v12);
  (*(v6 + 16))(v8, v2 + *(*v2 + 440), v5);
  v17 = (*(v10 + 40))(v15, v5, v10);
  (*(v6 + 8))(v8, v5);
  (*(v13 + 8))(v15, v12);
  return v17 & 1;
}

uint64_t _KeyedDecodingContainerBox.decodeNil<A>(forKey:)(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 424);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v20 - v7;
  v10 = *(v9 + 432);
  swift_getAssociatedTypeWitness(0, v10, v5, &protocol requirements base descriptor for KeyedDecodingContainerProtocol, associated type descriptor for KeyedDecodingContainerProtocol.Key);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v20 - v13;
  if (*(*(a2 - 8) + 64) != v16)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v17 = v14;
  (*(v12 + 16))(&v20 - v13, a1, v14);
  (*(v6 + 16))(v8, v2 + *(*v2 + 440), v5);
  v18 = (*(v10 + 48))(v15, v5, v10);
  (*(v6 + 8))(v8, v5);
  (*(v12 + 8))(v15, v17);
  return v18 & 1;
}

uint64_t _KeyedDecodingContainerBox.decode<A>(_:forKey:)(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 424);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v20 - v7;
  v10 = *(v9 + 432);
  swift_getAssociatedTypeWitness(0, v10, v5, &protocol requirements base descriptor for KeyedDecodingContainerProtocol, associated type descriptor for KeyedDecodingContainerProtocol.Key);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v20 - v13;
  if (*(*(a2 - 8) + 64) != v16)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v17 = v14;
  (*(v12 + 16))(&v20 - v13, a1, v14);
  (*(v6 + 16))(v8, v2 + *(*v2 + 440), v5);
  v18 = (*(v10 + 56))(v15, v5, v10);
  (*(v6 + 8))(v8, v5);
  (*(v12 + 8))(v15, v17);
  return v18 & 1;
}

{
  v5 = *(*v2 + 424);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v20 - v7;
  v10 = *(v9 + 432);
  swift_getAssociatedTypeWitness(0, v10, v5, &protocol requirements base descriptor for KeyedDecodingContainerProtocol, associated type descriptor for KeyedDecodingContainerProtocol.Key);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v20 - v13;
  if (*(*(a2 - 8) + 64) != v16)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v17 = v14;
  (*(v12 + 16))(&v20 - v13, a1, v14);
  (*(v6 + 16))(v8, v2 + *(*v2 + 440), v5);
  v18 = (*(v10 + 64))(v15, v5, v10);
  (*(v6 + 8))(v8, v5);
  (*(v12 + 8))(v15, v17);
  return v18;
}

{
  v5 = *(*v2 + 424);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v20 - v7;
  v10 = *(v9 + 432);
  swift_getAssociatedTypeWitness(0, v10, v5, &protocol requirements base descriptor for KeyedDecodingContainerProtocol, associated type descriptor for KeyedDecodingContainerProtocol.Key);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v20 - v13;
  if (*(*(a2 - 8) + 64) != v16)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v17 = v14;
  (*(v12 + 16))(&v20 - v13, a1, v14);
  (*(v6 + 16))(v8, v2 + *(*v2 + 440), v5);
  v18 = (*(v10 + 88))(v15, v5, v10);
  (*(v6 + 8))(v8, v5);
  (*(v12 + 8))(v15, v17);
  return v18;
}

{
  v5 = *(*v2 + 424);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v20 - v7;
  v10 = *(v9 + 432);
  swift_getAssociatedTypeWitness(0, v10, v5, &protocol requirements base descriptor for KeyedDecodingContainerProtocol, associated type descriptor for KeyedDecodingContainerProtocol.Key);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v20 - v13;
  if (*(*(a2 - 8) + 64) != v16)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v17 = v14;
  (*(v12 + 16))(&v20 - v13, a1, v14);
  (*(v6 + 16))(v8, v2 + *(*v2 + 440), v5);
  v18 = (*(v10 + 96))(v15, v5, v10);
  (*(v6 + 8))(v8, v5);
  (*(v12 + 8))(v15, v17);
  return v18;
}

{
  v5 = *(*v2 + 424);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v20 - v7;
  v10 = *(v9 + 432);
  swift_getAssociatedTypeWitness(0, v10, v5, &protocol requirements base descriptor for KeyedDecodingContainerProtocol, associated type descriptor for KeyedDecodingContainerProtocol.Key);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v20 - v13;
  if (*(*(a2 - 8) + 64) != v16)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v17 = v14;
  (*(v12 + 16))(&v20 - v13, a1, v14);
  (*(v6 + 16))(v8, v2 + *(*v2 + 440), v5);
  v18 = (*(v10 + 104))(v15, v5, v10);
  (*(v6 + 8))(v8, v5);
  (*(v12 + 8))(v15, v17);
  return v18;
}

{
  v5 = *(*v2 + 424);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v20 - v7;
  v10 = *(v9 + 432);
  swift_getAssociatedTypeWitness(0, v10, v5, &protocol requirements base descriptor for KeyedDecodingContainerProtocol, associated type descriptor for KeyedDecodingContainerProtocol.Key);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v20 - v13;
  if (*(*(a2 - 8) + 64) != v16)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v17 = v14;
  (*(v12 + 16))(&v20 - v13, a1, v14);
  (*(v6 + 16))(v8, v2 + *(*v2 + 440), v5);
  v18 = (*(v10 + 112))(v15, v5, v10);
  (*(v6 + 8))(v8, v5);
  (*(v12 + 8))(v15, v17);
  return v18;
}

{
  v5 = *(*v2 + 424);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v20 - v7;
  v10 = *(v9 + 432);
  swift_getAssociatedTypeWitness(0, v10, v5, &protocol requirements base descriptor for KeyedDecodingContainerProtocol, associated type descriptor for KeyedDecodingContainerProtocol.Key);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v20 - v13;
  if (*(*(a2 - 8) + 64) != v16)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v17 = v14;
  (*(v12 + 16))(&v20 - v13, a1, v14);
  (*(v6 + 16))(v8, v2 + *(*v2 + 440), v5);
  v18 = (*(v10 + 120))(v15, v5, v10);
  (*(v6 + 8))(v8, v5);
  (*(v12 + 8))(v15, v17);
  return v18;
}

{
  v5 = *(*v2 + 424);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v20 - v7;
  v10 = *(v9 + 432);
  swift_getAssociatedTypeWitness(0, v10, v5, &protocol requirements base descriptor for KeyedDecodingContainerProtocol, associated type descriptor for KeyedDecodingContainerProtocol.Key);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v20 - v13;
  if (*(*(a2 - 8) + 64) != v16)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v17 = v14;
  (*(v12 + 16))(&v20 - v13, a1, v14);
  (*(v6 + 16))(v8, v2 + *(*v2 + 440), v5);
  v18 = (*(v10 + 128))(v15, v5, v10);
  (*(v6 + 8))(v8, v5);
  (*(v12 + 8))(v15, v17);
  return v18;
}

{
  v5 = *(*v2 + 424);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v20 - v7;
  v10 = *(v9 + 432);
  swift_getAssociatedTypeWitness(0, v10, v5, &protocol requirements base descriptor for KeyedDecodingContainerProtocol, associated type descriptor for KeyedDecodingContainerProtocol.Key);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v20 - v13;
  if (*(*(a2 - 8) + 64) != v16)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v17 = v14;
  (*(v12 + 16))(&v20 - v13, a1, v14);
  (*(v6 + 16))(v8, v2 + *(*v2 + 440), v5);
  v18 = (*(v10 + 136))(v15, v5, v10);
  (*(v6 + 8))(v8, v5);
  (*(v12 + 8))(v15, v17);
  return v18;
}

{
  v5 = *(*v2 + 424);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v20 - v7;
  v10 = *(v9 + 432);
  swift_getAssociatedTypeWitness(0, v10, v5, &protocol requirements base descriptor for KeyedDecodingContainerProtocol, associated type descriptor for KeyedDecodingContainerProtocol.Key);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v20 - v13;
  if (*(*(a2 - 8) + 64) != v16)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v17 = v14;
  (*(v12 + 16))(&v20 - v13, a1, v14);
  (*(v6 + 16))(v8, v2 + *(*v2 + 440), v5);
  v18 = (*(v10 + 144))(v15, v5, v10);
  (*(v6 + 8))(v8, v5);
  (*(v12 + 8))(v15, v17);
  return v18;
}

{
  v5 = *(*v2 + 424);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v20 - v7;
  v10 = *(v9 + 432);
  swift_getAssociatedTypeWitness(0, v10, v5, &protocol requirements base descriptor for KeyedDecodingContainerProtocol, associated type descriptor for KeyedDecodingContainerProtocol.Key);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v20 - v13;
  if (*(*(a2 - 8) + 64) != v16)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v17 = v14;
  (*(v12 + 16))(&v20 - v13, a1, v14);
  (*(v6 + 16))(v8, v2 + *(*v2 + 440), v5);
  v18 = (*(v10 + 152))(v15, v5, v10);
  (*(v6 + 8))(v8, v5);
  (*(v12 + 8))(v15, v17);
  return v18;
}

{
  v5 = *(*v2 + 424);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v20 - v7;
  v10 = *(v9 + 432);
  swift_getAssociatedTypeWitness(0, v10, v5, &protocol requirements base descriptor for KeyedDecodingContainerProtocol, associated type descriptor for KeyedDecodingContainerProtocol.Key);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v20 - v13;
  if (*(*(a2 - 8) + 64) != v16)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v17 = v14;
  (*(v12 + 16))(&v20 - v13, a1, v14);
  (*(v6 + 16))(v8, v2 + *(*v2 + 440), v5);
  v18 = (*(v10 + 160))(v15, v5, v10);
  (*(v6 + 8))(v8, v5);
  (*(v12 + 8))(v15, v17);
  return v18;
}

{
  v5 = *(*v2 + 424);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v20 - v7;
  v10 = *(v9 + 432);
  swift_getAssociatedTypeWitness(0, v10, v5, &protocol requirements base descriptor for KeyedDecodingContainerProtocol, associated type descriptor for KeyedDecodingContainerProtocol.Key);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v20 - v13;
  if (*(*(a2 - 8) + 64) != v16)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v17 = v14;
  (*(v12 + 16))(&v20 - v13, a1, v14);
  (*(v6 + 16))(v8, v2 + *(*v2 + 440), v5);
  v18 = (*(v10 + 168))(v15, v5, v10);
  (*(v6 + 8))(v8, v5);
  (*(v12 + 8))(v15, v17);
  return v18;
}

{
  v5 = *(*v2 + 424);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v20 - v7;
  v10 = *(v9 + 432);
  swift_getAssociatedTypeWitness(0, v10, v5, &protocol requirements base descriptor for KeyedDecodingContainerProtocol, associated type descriptor for KeyedDecodingContainerProtocol.Key);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v20 - v13;
  if (*(*(a2 - 8) + 64) != v16)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v17 = v14;
  (*(v12 + 16))(&v20 - v13, a1, v14);
  (*(v6 + 16))(v8, v2 + *(*v2 + 440), v5);
  v18 = (*(v10 + 176))(v15, v5, v10);
  (*(v6 + 8))(v8, v5);
  (*(v12 + 8))(v15, v17);
  return v18;
}

double _KeyedDecodingContainerBox.decode<A>(_:forKey:)(uint64_t a1, uint64_t a2)
{
  v18 = a1;
  v4 = *(*v2 + 424);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v18 - v6;
  v9 = *(v8 + 432);
  swift_getAssociatedTypeWitness(0, v9, v4, &protocol requirements base descriptor for KeyedDecodingContainerProtocol, associated type descriptor for KeyedDecodingContainerProtocol.Key);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - v13;
  if (*(*(a2 - 8) + 64) != v15)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v12 + 16))(&v18 - v13, v18, v11);
  (*(v5 + 16))(v7, v2 + *(*v2 + 440), v4);
  v16 = (*(v9 + 72))(v14, v4, v9);
  (*(v5 + 8))(v7, v4);
  (*(v12 + 8))(v14, v11);
  return v16;
}

float _KeyedDecodingContainerBox.decode<A>(_:forKey:)(uint64_t a1, uint64_t a2)
{
  v18 = a1;
  v4 = *(*v2 + 424);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v18 - v6;
  v9 = *(v8 + 432);
  swift_getAssociatedTypeWitness(0, v9, v4, &protocol requirements base descriptor for KeyedDecodingContainerProtocol, associated type descriptor for KeyedDecodingContainerProtocol.Key);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - v13;
  if (*(*(a2 - 8) + 64) != v15)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v12 + 16))(&v18 - v13, v18, v11);
  (*(v5 + 16))(v7, v2 + *(*v2 + 440), v4);
  v16 = (*(v9 + 80))(v14, v4, v9);
  (*(v5 + 8))(v7, v4);
  (*(v12 + 8))(v14, v11);
  return v16;
}

uint64_t _KeyedDecodingContainerBox.decode<A, B>(_:forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v22 = a3;
  v23 = a5;
  v21[0] = a2;
  v21[1] = a6;
  v8 = *(*v6 + 424);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v21 - v10;
  v13 = *(v12 + 432);
  swift_getAssociatedTypeWitness(0, v13, v8, &protocol requirements base descriptor for KeyedDecodingContainerProtocol, associated type descriptor for KeyedDecodingContainerProtocol.Key);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v21 - v17;
  if (*(*(a4 - 8) + 64) != v19)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v16 + 16))(v21 - v17, v21[0], v15);
  (*(v9 + 16))(v11, v6 + *(*v6 + 440), v8);
  (*(v13 + 184))(v22, v18, v22, v23, v8, v13);
  (*(v9 + 8))(v11, v8);
  return (*(v16 + 8))(v18, v15);
}

uint64_t _KeyedDecodingContainerBox.decodeIfPresent<A>(_:forKey:)(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 424);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v20 - v7;
  v10 = *(v9 + 432);
  swift_getAssociatedTypeWitness(0, v10, v5, &protocol requirements base descriptor for KeyedDecodingContainerProtocol, associated type descriptor for KeyedDecodingContainerProtocol.Key);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v20 - v13;
  if (*(*(a2 - 8) + 64) != v16)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v17 = v14;
  (*(v12 + 16))(&v20 - v13, a1, v14);
  (*(v6 + 16))(v8, v2 + *(*v2 + 440), v5);
  v18 = (*(v10 + 192))(v15, v5, v10);
  (*(v6 + 8))(v8, v5);
  (*(v12 + 8))(v15, v17);
  return v18;
}

{
  v5 = *(*v2 + 424);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v20 - v7;
  v10 = *(v9 + 432);
  swift_getAssociatedTypeWitness(0, v10, v5, &protocol requirements base descriptor for KeyedDecodingContainerProtocol, associated type descriptor for KeyedDecodingContainerProtocol.Key);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v20 - v13;
  if (*(*(a2 - 8) + 64) != v16)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v17 = v14;
  (*(v12 + 16))(&v20 - v13, a1, v14);
  (*(v6 + 16))(v8, v2 + *(*v2 + 440), v5);
  v18 = (*(v10 + 200))(v15, v5, v10);
  (*(v6 + 8))(v8, v5);
  (*(v12 + 8))(v15, v17);
  return v18;
}

{
  v21 = a1;
  v4 = *(*v2 + 424);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v20 - v6;
  v9 = *(v8 + 432);
  swift_getAssociatedTypeWitness(0, v9, v4, &protocol requirements base descriptor for KeyedDecodingContainerProtocol, associated type descriptor for KeyedDecodingContainerProtocol.Key);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  if (*(*(a2 - 8) + 64) != v15)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v12 + 16))(&v20 - v13, v21, v11);
  (*(v5 + 16))(v7, v2 + *(*v2 + 440), v4);
  v16 = v22;
  v17 = (*(v9 + 208))(v14, v4, v9);
  if (v16)
  {
    (*(v5 + 8))(v7, v4);
    return (*(v12 + 8))(v14, v11);
  }

  else
  {
    v19 = v17;
    (*(v5 + 8))(v7, v4);
    (*(v12 + 8))(v14, v11);
    return v19;
  }
}

{
  v5 = *(*v2 + 424);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v22 - v7;
  v10 = *(v9 + 432);
  swift_getAssociatedTypeWitness(0, v10, v5, &protocol requirements base descriptor for KeyedDecodingContainerProtocol, associated type descriptor for KeyedDecodingContainerProtocol.Key);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v22 - v13;
  if (*(*(a2 - 8) + 64) != v16)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v17 = v14;
  (*(v12 + 16))(v22 - v13, a1, v14);
  (*(v6 + 16))(v8, v2 + *(*v2 + 440), v5);
  v18 = v22[1];
  v19 = (*(v10 + 216))(v15, v5, v10);
  if (v18)
  {
    (*(v6 + 8))(v8, v5);
    return (*(v12 + 8))(v15, v17);
  }

  else
  {
    v21 = v19;
    (*(v6 + 8))(v8, v5);
    (*(v12 + 8))(v15, v17);
    return v21 | ((HIDWORD(v21) & 1) << 32);
  }
}

{
  v21 = a1;
  v4 = *(*v2 + 424);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v20 - v6;
  v9 = *(v8 + 432);
  swift_getAssociatedTypeWitness(0, v9, v4, &protocol requirements base descriptor for KeyedDecodingContainerProtocol, associated type descriptor for KeyedDecodingContainerProtocol.Key);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  if (*(*(a2 - 8) + 64) != v15)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v12 + 16))(&v20 - v13, v21, v11);
  (*(v5 + 16))(v7, v2 + *(*v2 + 440), v4);
  v16 = v22;
  v17 = (*(v9 + 224))(v14, v4, v9);
  if (v16)
  {
    (*(v5 + 8))(v7, v4);
    return (*(v12 + 8))(v14, v11);
  }

  else
  {
    v19 = v17;
    (*(v5 + 8))(v7, v4);
    (*(v12 + 8))(v14, v11);
    return v19;
  }
}

{
  v20[0] = a1;
  v4 = *(*v2 + 424);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v20 - v6;
  v9 = *(v8 + 432);
  swift_getAssociatedTypeWitness(0, v9, v4, &protocol requirements base descriptor for KeyedDecodingContainerProtocol, associated type descriptor for KeyedDecodingContainerProtocol.Key);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v20 - v13;
  if (*(*(a2 - 8) + 64) != v15)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v12 + 16))(v20 - v13, v20[0], v11);
  (*(v5 + 16))(v7, v2 + *(*v2 + 440), v4);
  v16 = v20[1];
  v17 = (*(v9 + 232))(v14, v4, v9);
  if (v16)
  {
    (*(v5 + 8))(v7, v4);
    return (*(v12 + 8))(v14, v11);
  }

  else
  {
    v19 = v17;
    (*(v5 + 8))(v7, v4);
    (*(v12 + 8))(v14, v11);
    return v19 & 0x1FF;
  }
}

{
  v20[0] = a1;
  v4 = *(*v2 + 424);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v20 - v6;
  v9 = *(v8 + 432);
  swift_getAssociatedTypeWitness(0, v9, v4, &protocol requirements base descriptor for KeyedDecodingContainerProtocol, associated type descriptor for KeyedDecodingContainerProtocol.Key);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v20 - v13;
  if (*(*(a2 - 8) + 64) != v15)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v12 + 16))(v20 - v13, v20[0], v11);
  (*(v5 + 16))(v7, v2 + *(*v2 + 440), v4);
  v16 = v20[1];
  v17 = (*(v9 + 240))(v14, v4, v9);
  if (v16)
  {
    (*(v5 + 8))(v7, v4);
    return (*(v12 + 8))(v14, v11);
  }

  else
  {
    v19 = v17;
    (*(v5 + 8))(v7, v4);
    (*(v12 + 8))(v14, v11);
    return v19 & 0x1FFFF;
  }
}

{
  v5 = *(*v2 + 424);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v22 - v7;
  v10 = *(v9 + 432);
  swift_getAssociatedTypeWitness(0, v10, v5, &protocol requirements base descriptor for KeyedDecodingContainerProtocol, associated type descriptor for KeyedDecodingContainerProtocol.Key);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v22 - v13;
  if (*(*(a2 - 8) + 64) != v16)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v17 = v14;
  (*(v12 + 16))(v22 - v13, a1, v14);
  (*(v6 + 16))(v8, v2 + *(*v2 + 440), v5);
  v18 = v22[1];
  v19 = (*(v10 + 248))(v15, v5, v10);
  if (v18)
  {
    (*(v6 + 8))(v8, v5);
    return (*(v12 + 8))(v15, v17);
  }

  else
  {
    v21 = v19;
    (*(v6 + 8))(v8, v5);
    (*(v12 + 8))(v15, v17);
    return v21 | ((HIDWORD(v21) & 1) << 32);
  }
}

{
  v21 = a1;
  v4 = *(*v2 + 424);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v20 - v6;
  v9 = *(v8 + 432);
  swift_getAssociatedTypeWitness(0, v9, v4, &protocol requirements base descriptor for KeyedDecodingContainerProtocol, associated type descriptor for KeyedDecodingContainerProtocol.Key);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  if (*(*(a2 - 8) + 64) != v15)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v12 + 16))(&v20 - v13, v21, v11);
  (*(v5 + 16))(v7, v2 + *(*v2 + 440), v4);
  v16 = v22;
  v17 = (*(v9 + 256))(v14, v4, v9);
  if (v16)
  {
    (*(v5 + 8))(v7, v4);
    return (*(v12 + 8))(v14, v11);
  }

  else
  {
    v19 = v17;
    (*(v5 + 8))(v7, v4);
    (*(v12 + 8))(v14, v11);
    return v19;
  }
}

{
  v21 = a1;
  v4 = *(*v2 + 424);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v20 - v6;
  v9 = *(v8 + 432);
  swift_getAssociatedTypeWitness(0, v9, v4, &protocol requirements base descriptor for KeyedDecodingContainerProtocol, associated type descriptor for KeyedDecodingContainerProtocol.Key);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  if (*(*(a2 - 8) + 64) != v15)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v12 + 16))(&v20 - v13, v21, v11);
  (*(v5 + 16))(v7, v2 + *(*v2 + 440), v4);
  v16 = v22;
  v17 = (*(v9 + 264))(v14, v4, v9);
  if (v16)
  {
    (*(v5 + 8))(v7, v4);
    return (*(v12 + 8))(v14, v11);
  }

  else
  {
    v19 = v17;
    (*(v5 + 8))(v7, v4);
    (*(v12 + 8))(v14, v11);
    return v19;
  }
}

{
  v21 = a1;
  v4 = *(*v2 + 424);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v20 - v6;
  v9 = *(v8 + 432);
  swift_getAssociatedTypeWitness(0, v9, v4, &protocol requirements base descriptor for KeyedDecodingContainerProtocol, associated type descriptor for KeyedDecodingContainerProtocol.Key);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  if (*(*(a2 - 8) + 64) != v15)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v12 + 16))(&v20 - v13, v21, v11);
  (*(v5 + 16))(v7, v2 + *(*v2 + 440), v4);
  v16 = v22;
  v17 = (*(v9 + 272))(v14, v4, v9);
  if (v16)
  {
    (*(v5 + 8))(v7, v4);
    return (*(v12 + 8))(v14, v11);
  }

  else
  {
    v19 = v17;
    (*(v5 + 8))(v7, v4);
    (*(v12 + 8))(v14, v11);
    return v19;
  }
}

{
  v20[0] = a1;
  v4 = *(*v2 + 424);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v20 - v6;
  v9 = *(v8 + 432);
  swift_getAssociatedTypeWitness(0, v9, v4, &protocol requirements base descriptor for KeyedDecodingContainerProtocol, associated type descriptor for KeyedDecodingContainerProtocol.Key);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v20 - v13;
  if (*(*(a2 - 8) + 64) != v15)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v12 + 16))(v20 - v13, v20[0], v11);
  (*(v5 + 16))(v7, v2 + *(*v2 + 440), v4);
  v16 = v20[1];
  v17 = (*(v9 + 280))(v14, v4, v9);
  if (v16)
  {
    (*(v5 + 8))(v7, v4);
    return (*(v12 + 8))(v14, v11);
  }

  else
  {
    v19 = v17;
    (*(v5 + 8))(v7, v4);
    (*(v12 + 8))(v14, v11);
    return v19 & 0x1FF;
  }
}

{
  v20[0] = a1;
  v4 = *(*v2 + 424);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v20 - v6;
  v9 = *(v8 + 432);
  swift_getAssociatedTypeWitness(0, v9, v4, &protocol requirements base descriptor for KeyedDecodingContainerProtocol, associated type descriptor for KeyedDecodingContainerProtocol.Key);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v20 - v13;
  if (*(*(a2 - 8) + 64) != v15)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v12 + 16))(v20 - v13, v20[0], v11);
  (*(v5 + 16))(v7, v2 + *(*v2 + 440), v4);
  v16 = v20[1];
  v17 = (*(v9 + 288))(v14, v4, v9);
  if (v16)
  {
    (*(v5 + 8))(v7, v4);
    return (*(v12 + 8))(v14, v11);
  }

  else
  {
    v19 = v17;
    (*(v5 + 8))(v7, v4);
    (*(v12 + 8))(v14, v11);
    return v19 & 0x1FFFF;
  }
}

{
  v5 = *(*v2 + 424);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v22 - v7;
  v10 = *(v9 + 432);
  swift_getAssociatedTypeWitness(0, v10, v5, &protocol requirements base descriptor for KeyedDecodingContainerProtocol, associated type descriptor for KeyedDecodingContainerProtocol.Key);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v22 - v13;
  if (*(*(a2 - 8) + 64) != v16)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v17 = v14;
  (*(v12 + 16))(v22 - v13, a1, v14);
  (*(v6 + 16))(v8, v2 + *(*v2 + 440), v5);
  v18 = v22[1];
  v19 = (*(v10 + 296))(v15, v5, v10);
  if (v18)
  {
    (*(v6 + 8))(v8, v5);
    return (*(v12 + 8))(v15, v17);
  }

  else
  {
    v21 = v19;
    (*(v6 + 8))(v8, v5);
    (*(v12 + 8))(v15, v17);
    return v21 | ((HIDWORD(v21) & 1) << 32);
  }
}

{
  v21 = a1;
  v4 = *(*v2 + 424);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v20 - v6;
  v9 = *(v8 + 432);
  swift_getAssociatedTypeWitness(0, v9, v4, &protocol requirements base descriptor for KeyedDecodingContainerProtocol, associated type descriptor for KeyedDecodingContainerProtocol.Key);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  if (*(*(a2 - 8) + 64) != v15)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v12 + 16))(&v20 - v13, v21, v11);
  (*(v5 + 16))(v7, v2 + *(*v2 + 440), v4);
  v16 = v22;
  v17 = (*(v9 + 304))(v14, v4, v9);
  if (v16)
  {
    (*(v5 + 8))(v7, v4);
    return (*(v12 + 8))(v14, v11);
  }

  else
  {
    v19 = v17;
    (*(v5 + 8))(v7, v4);
    (*(v12 + 8))(v14, v11);
    return v19;
  }
}

{
  v21 = a1;
  v4 = *(*v2 + 424);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v20 - v6;
  v9 = *(v8 + 432);
  swift_getAssociatedTypeWitness(0, v9, v4, &protocol requirements base descriptor for KeyedDecodingContainerProtocol, associated type descriptor for KeyedDecodingContainerProtocol.Key);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  if (*(*(a2 - 8) + 64) != v15)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v12 + 16))(&v20 - v13, v21, v11);
  (*(v5 + 16))(v7, v2 + *(*v2 + 440), v4);
  v16 = v22;
  v17 = (*(v9 + 312))(v14, v4, v9);
  if (v16)
  {
    (*(v5 + 8))(v7, v4);
    return (*(v12 + 8))(v14, v11);
  }

  else
  {
    v19 = v17;
    (*(v5 + 8))(v7, v4);
    (*(v12 + 8))(v14, v11);
    return v19;
  }
}

uint64_t _KeyedDecodingContainerBox.decodeIfPresent<A, B>(_:forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v22 = a3;
  v23 = a5;
  v21[0] = a2;
  v21[1] = a6;
  v8 = *(*v6 + 424);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v21 - v10;
  v13 = *(v12 + 432);
  swift_getAssociatedTypeWitness(0, v13, v8, &protocol requirements base descriptor for KeyedDecodingContainerProtocol, associated type descriptor for KeyedDecodingContainerProtocol.Key);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v21 - v17;
  if (*(*(a4 - 8) + 64) != v19)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v16 + 16))(v21 - v17, v21[0], v15);
  (*(v9 + 16))(v11, v6 + *(*v6 + 440), v8);
  (*(v13 + 320))(v22, v18, v22, v23, v8, v13);
  (*(v9 + 8))(v11, v8);
  return (*(v16 + 8))(v18, v15);
}

uint64_t _KeyedDecodingContainerBox.nestedContainer<A, B>(keyedBy:forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v22 = a3;
  v23 = a5;
  v21[0] = a2;
  v21[1] = a6;
  v8 = *(*v6 + 424);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v21 - v10;
  v13 = *(v12 + 432);
  swift_getAssociatedTypeWitness(0, v13, v8, &protocol requirements base descriptor for KeyedDecodingContainerProtocol, associated type descriptor for KeyedDecodingContainerProtocol.Key);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v21 - v17;
  if (*(*(a4 - 8) + 64) != v19)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v16 + 16))(v21 - v17, v21[0], v15);
  (*(v9 + 16))(v11, v6 + *(*v6 + 440), v8);
  (*(v13 + 328))(v22, v18, v22, v23, v8, v13);
  (*(v9 + 8))(v11, v8);
  return (*(v16 + 8))(v18, v15);
}

uint64_t _KeyedDecodingContainerBox.nestedUnkeyedContainer<A>(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18[0] = a1;
  v18[1] = a3;
  v5 = *(*v3 + 424);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v18 - v7;
  v10 = *(v9 + 432);
  swift_getAssociatedTypeWitness(0, v10, v5, &protocol requirements base descriptor for KeyedDecodingContainerProtocol, associated type descriptor for KeyedDecodingContainerProtocol.Key);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v18 - v14;
  if (*(*(a2 - 8) + 64) != v16)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v13 + 16))(v18 - v14, v18[0], v12);
  (*(v6 + 16))(v8, v3 + *(*v3 + 440), v5);
  (*(v10 + 336))(v15, v5, v10);
  (*(v6 + 8))(v8, v5);
  return (*(v13 + 8))(v15, v12);
}

uint64_t _KeyedDecodingContainerBox.superDecoder()(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 424);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = v8 - v5;
  (*(v4 + 16))(v8 - v5, v1 + *(v2 + 440), v3);
  (*(*(v2 + 432) + 344))(v3);
  return (*(v4 + 8))(v6, v3);
}

uint64_t _KeyedDecodingContainerBox.superDecoder<A>(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18[0] = a1;
  v18[1] = a3;
  v5 = *(*v3 + 424);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v18 - v7;
  v10 = *(v9 + 432);
  swift_getAssociatedTypeWitness(0, v10, v5, &protocol requirements base descriptor for KeyedDecodingContainerProtocol, associated type descriptor for KeyedDecodingContainerProtocol.Key);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v18 - v14;
  if (*(*(a2 - 8) + 64) != v16)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  (*(v13 + 16))(v18 - v14, v18[0], v12);
  (*(v6 + 16))(v8, v3 + *(*v3 + 440), v5);
  (*(v10 + 352))(v15, v5, v10);
  (*(v6 + 8))(v8, v5);
  return (*(v13 + 8))(v15, v12);
}

void _KeyedDecodingContainerBox.__deallocating_deinit()
{
  (*(*(*(*v0 + 424) - 8) + 8))(v0 + *(*v0 + 440));

  swift_deallocClassInstance(v0);
}

uint64_t Bool.init(from:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  (*(v4 + 40))(v9, v3, v4);
  if (!v1)
  {
    v6 = v10;
    v7 = v11;
    __swift_project_boxed_opaque_existential_0Tm(v9, v10);
    v5 = (*(v7 + 24))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v5 & 1;
}

uint64_t Bool.encode(to:)(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  (*(v4 + 40))(v8, v3, v4);
  v5 = v9;
  v6 = v10;
  __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
  (*(v6 + 24))(a2, v5, v6);
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance Bool(void *a1)
{
  v2 = *v1;
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  (*(v4 + 40))(v8, v3, v4);
  v5 = v9;
  v6 = v10;
  __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
  (*(v6 + 24))(v2, v5, v6);
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t protocol witness for Decodable.init(from:) in conformance Bool@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v5);
  (*(v6 + 40))(v11, v5, v6);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v7 = v12;
  v8 = v13;
  __swift_project_boxed_opaque_existential_0Tm(v11, v12);
  v9 = (*(v8 + 24))(v7, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *a2 = v9 & 1;
  return result;
}

uint64_t RawRepresentable<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v6);
  (*(v7 + 40))(v12, v6, v7);
  (*(a4 + 24))(&v15, a2, a4);
  v8 = v15;
  v9 = v13;
  v10 = v14;
  __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
  (*(v10 + 24))(v8, v9, v10);
  return __swift_destroy_boxed_opaque_existential_1Tm(v12);
}

{
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v6);
  (*(v7 + 40))(v14, v6, v7);
  (*(a4 + 24))(v13, a2, a4);
  v8 = v13[0];
  v9 = v13[1];
  v10 = v15;
  v11 = v16;
  __swift_mutable_project_boxed_opaque_existential_1(v14, v15);
  (*(v11 + 32))(v8, v9, v10, v11);
  v9;
  return __swift_destroy_boxed_opaque_existential_1Tm(v14);
}

{
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v6);
  (*(v7 + 40))(v13, v6, v7);
  (*(a4 + 24))(&v12, a2, a4);
  v8 = v12;
  v9 = v14;
  v10 = v15;
  __swift_mutable_project_boxed_opaque_existential_1(v13, v14);
  (*(v10 + 40))(v9, v10, v8);
  return __swift_destroy_boxed_opaque_existential_1Tm(v13);
}

{
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v6);
  (*(v7 + 40))(v12 + 4, v6, v7);
  (*(a4 + 24))(v12, a2, a4);
  v8 = *v12;
  v9 = v13;
  v10 = v14;
  __swift_mutable_project_boxed_opaque_existential_1((v12 + 4), v13);
  (*(v10 + 48))(v9, v10, v8);
  return __swift_destroy_boxed_opaque_existential_1Tm((v12 + 4));
}

{
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v6);
  (*(v7 + 40))(v12, v6, v7);
  (*(a4 + 24))(&v15, a2, a4);
  v8 = v15;
  v9 = v13;
  v10 = v14;
  __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
  (*(v10 + 56))(v8, v9, v10);
  return __swift_destroy_boxed_opaque_existential_1Tm(v12);
}

{
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v6);
  (*(v7 + 40))(v12, v6, v7);
  (*(a4 + 24))(&v15, a2, a4);
  v8 = v13;
  v9 = v14;
  v10 = v15;
  __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
  (*(v9 + 64))(v10, v8, v9);
  return __swift_destroy_boxed_opaque_existential_1Tm(v12);
}

{
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v6);
  (*(v7 + 40))(v12, v6, v7);
  (*(a4 + 24))(&v15, a2, a4);
  v8 = v13;
  v9 = v14;
  v10 = v15;
  __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
  (*(v9 + 72))(v10, v8, v9);
  return __swift_destroy_boxed_opaque_existential_1Tm(v12);
}

{
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v6);
  (*(v7 + 40))(v12, v6, v7);
  (*(a4 + 24))(&v15, a2, a4);
  v8 = v15;
  v9 = v13;
  v10 = v14;
  __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
  (*(v10 + 80))(v8, v9, v10);
  return __swift_destroy_boxed_opaque_existential_1Tm(v12);
}

{
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v6);
  (*(v7 + 40))(v12, v6, v7);
  (*(a4 + 24))(&v15, a2, a4);
  v8 = v15;
  v9 = v13;
  v10 = v14;
  __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
  (*(v10 + 88))(v8, v9, v10);
  return __swift_destroy_boxed_opaque_existential_1Tm(v12);
}

{
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v6);
  (*(v7 + 40))(v14, v6, v7);
  (*(a4 + 24))(v13, a2, a4);
  v9 = v13[0];
  v8 = v13[1];
  v10 = v15;
  v11 = v16;
  __swift_mutable_project_boxed_opaque_existential_1(v14, v15);
  (*(v11 + 96))(v9, v8, v10, v11);
  return __swift_destroy_boxed_opaque_existential_1Tm(v14);
}

{
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v6);
  (*(v7 + 40))(v12, v6, v7);
  (*(a4 + 24))(&v15, a2, a4);
  v8 = v15;
  v9 = v13;
  v10 = v14;
  __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
  (*(v10 + 104))(v8, v9, v10);
  return __swift_destroy_boxed_opaque_existential_1Tm(v12);
}

{
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v6);
  (*(v7 + 40))(v12, v6, v7);
  (*(a4 + 24))(&v15, a2, a4);
  v8 = v13;
  v9 = v14;
  v10 = v15;
  __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
  (*(v9 + 112))(v10, v8, v9);
  return __swift_destroy_boxed_opaque_existential_1Tm(v12);
}

{
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v6);
  (*(v7 + 40))(v12, v6, v7);
  (*(a4 + 24))(&v15, a2, a4);
  v8 = v13;
  v9 = v14;
  v10 = v15;
  __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
  (*(v9 + 120))(v10, v8, v9);
  return __swift_destroy_boxed_opaque_existential_1Tm(v12);
}

{
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v6);
  (*(v7 + 40))(v12, v6, v7);
  (*(a4 + 24))(&v15, a2, a4);
  v8 = v15;
  v9 = v13;
  v10 = v14;
  __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
  (*(v10 + 128))(v8, v9, v10);
  return __swift_destroy_boxed_opaque_existential_1Tm(v12);
}

{
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v6);
  (*(v7 + 40))(v12, v6, v7);
  (*(a4 + 24))(&v15, a2, a4);
  v8 = v15;
  v9 = v13;
  v10 = v14;
  __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
  (*(v10 + 136))(v8, v9, v10);
  return __swift_destroy_boxed_opaque_existential_1Tm(v12);
}

{
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v6);
  (*(v7 + 40))(v14, v6, v7);
  (*(a4 + 24))(v13, a2, a4);
  v9 = v13[0];
  v8 = v13[1];
  v10 = v15;
  v11 = v16;
  __swift_mutable_project_boxed_opaque_existential_1(v14, v15);
  (*(v11 + 144))(v9, v8, v10, v11);
  return __swift_destroy_boxed_opaque_existential_1Tm(v14);
}

uint64_t RawRepresentable<>.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v168 = a4;
  v9 = type metadata accessor for Optional(0, a2, a3, a4);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v166 - v11;
  v14 = a1[3];
  v13 = a1[4];
  v172 = a1;
  __swift_project_boxed_opaque_existential_0Tm(a1, v14);
  (*(v13 + 40))(&v169, v14, v13);
  if (!v5)
  {
    v166 = v9;
    v167 = a2;
    v15 = v168;
    v16 = v10;
    v17 = v170;
    v18 = v171;
    __swift_project_boxed_opaque_existential_0Tm(&v169, v170);
    v19 = (*(v18 + 24))(v17, v18);
    __swift_destroy_boxed_opaque_existential_1Tm(&v169._countAndFlagsBits);
    LOBYTE(v169._countAndFlagsBits) = v19 & 1;
    v20 = v167;
    (*(v15 + 16))(&v169, v167, v15);
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v12, 1, v20) != 1)
    {
      (*(v21 + 32))(a5, v12, v20);
      return __swift_destroy_boxed_opaque_existential_1Tm(v172);
    }

    (*(v16 + 8))(v12, v166);
    swift_allocError(&type metadata for DecodingError, &protocol witness table for DecodingError, 0, 0);
    v23 = v22;
    v24 = v172[3];
    v25 = v172[4];
    __swift_project_boxed_opaque_existential_0Tm(v172, v24);
    v168 = (*(v25 + 8))(v24, v25);
    v26 = _StringGuts.init(_initialCapacity:)(45);
    v36 = v27;
    v169._countAndFlagsBits = v26;
    v169._object = v27;
    v37 = HIBYTE(v27) & 0xF;
    if ((v27 & 0x2000000000000000) == 0)
    {
      v37 = v26 & 0xFFFFFFFFFFFFLL;
    }

    if (v37 || (v26 & ~v27 & 0x2000000000000000) != 0)
    {
      v38 = v19;
      if ((0x800000018066C240 & 0x2000000000000000 & v27) != 0 && (v39 = specialized _SmallString.init(_:appending:)(v26, v27, 0xD000000000000012, 0x800000018066C240 | 0x8000000000000000), (v41 & 1) == 0))
      {
        v44 = v39;
        v45 = v40;
        v36;
        0x800000018066C240 | 0x8000000000000000;
        v169._countAndFlagsBits = v44;
        v169._object = v45;
      }

      else
      {
        if ((0x800000018066C240 & 0x2000000000000000) != 0)
        {
          v42 = (0x800000018066C240 >> 56) & 0xF;
        }

        else
        {
          v42 = 18;
        }

        _StringGuts.append(_:)(0xD000000000000012, 0x800000018066C240 | 0x8000000000000000, 0, v42, v28, v29, v30, v31, v32, v33, v34, v35);
        0x800000018066C240 | 0x8000000000000000;
      }

      v19 = v38;
    }

    else
    {
      v27;
      v169._countAndFlagsBits = 0xD000000000000012;
      v169._object = (0x800000018066C240 | 0x8000000000000000);
    }

    TypeName = swift_getTypeName(v167, 0);
    if (v47 < 0)
    {
      goto LABEL_102;
    }

    v48 = TypeName;
    v49 = v47;
    v50 = v19;
    v51 = validateUTF8(_:)(TypeName, v47);
    if (v51 < 0)
    {
      v55 = repairUTF8(_:firstKnownBrokenRange:)(v48, v49, v52, v53);
    }

    else
    {
      v55 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v48, v49, v51 & 1, v54);
    }

    countAndFlagsBits = v55;
    v66 = v56;
    object = v169._object;
    v68 = (v169._object >> 56) & 0xF;
    if ((v169._object & 0x2000000000000000) == 0)
    {
      v68 = v169._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v68 || (v169._countAndFlagsBits & ~v169._object & 0x2000000000000000) != 0)
    {
      if ((v169._object & 0x2000000000000000) == 0)
      {
        if ((v56 & 0x2000000000000000) != 0)
        {
          goto LABEL_30;
        }

LABEL_28:
        v69 = v55 & 0xFFFFFFFFFFFFLL;
LABEL_31:
        _StringGuts.append(_:)(countAndFlagsBits, v66, 0, v69, v57, v58, v59, v60, v61, v62, v63, v64);
        v66;
        countAndFlagsBits = v169._countAndFlagsBits;
        v66 = v169._object;
        goto LABEL_32;
      }

      if ((v56 & 0x2000000000000000) == 0)
      {
        goto LABEL_28;
      }

      v70 = specialized _SmallString.init(_:appending:)(v169._countAndFlagsBits, v169._object, v55, v56);
      if (v72)
      {
LABEL_30:
        v69 = HIBYTE(v66) & 0xF;
        goto LABEL_31;
      }

      v160 = v70;
      v161 = v71;
      object;
      v66;
      v169._countAndFlagsBits = v160;
      v169._object = v161;
      v66 = v161;
      countAndFlagsBits = v160;
    }

    else
    {
      v169._object;
      v169._countAndFlagsBits = countAndFlagsBits;
      v169._object = v66;
    }

LABEL_32:
    v81 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" from invalid ", 0xEuLL, 1);
    v82 = HIBYTE(v66) & 0xF;
    if ((v66 & 0x2000000000000000) == 0)
    {
      v82 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v82 || (countAndFlagsBits & ~v66 & 0x2000000000000000) != 0)
    {
      if ((v66 & 0x2000000000000000) == 0)
      {
        if ((v81._object & 0x2000000000000000) != 0)
        {
          goto LABEL_42;
        }

LABEL_40:
        v83 = v81._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
LABEL_43:
        _StringGuts.append(_:)(v81._countAndFlagsBits, v81._object, 0, v83, v73, v74, v75, v76, v77, v78, v79, v80);
        v81._object;
        goto LABEL_44;
      }

      if ((v81._object & 0x2000000000000000) == 0)
      {
        goto LABEL_40;
      }

      v84 = specialized _SmallString.init(_:appending:)(countAndFlagsBits, v66, v81._countAndFlagsBits, v81._object);
      if (v86)
      {
LABEL_42:
        v83 = (v81._object >> 56) & 0xF;
        goto LABEL_43;
      }

      v162 = v84;
      v163 = v85;
      v66;
      v81._object;
      v169._countAndFlagsBits = v162;
      v169._object = v163;
    }

    else
    {
      v66;
      v169 = v81;
    }

LABEL_44:
    v87 = swift_getTypeName(&type metadata for Bool, 0);
    if ((v88 & 0x8000000000000000) == 0)
    {
      v89 = v87;
      v90 = v88;
      v91 = validateUTF8(_:)(v87, v88);
      if (v91 < 0)
      {
        v95 = repairUTF8(_:firstKnownBrokenRange:)(v89, v90, v92, v93);
      }

      else
      {
        v95 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v89, v90, v91 & 1, v94);
      }

      v105 = v96;
      v106 = v169._object;
      v107 = (v169._object >> 56) & 0xF;
      if ((v169._object & 0x2000000000000000) == 0)
      {
        v107 = v169._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      if (!v107 && (v169._countAndFlagsBits & ~v169._object & 0x2000000000000000) == 0)
      {
        v136 = v95;
        v169._object;
        v117 = v136;
        v169._countAndFlagsBits = v136;
        v169._object = v105;
        goto LABEL_58;
      }

      if ((v169._object & 0x2000000000000000) != 0)
      {
        if ((v96 & 0x2000000000000000) != 0)
        {
          v130 = v95;
          v131 = specialized _SmallString.init(_:appending:)(v169._countAndFlagsBits, v169._object, v95, v96);
          if ((v133 & 1) == 0)
          {
            v164 = v132;
            v165 = v131;
            v106;
            v105;
            v169._countAndFlagsBits = v165;
            v169._object = v164;
            v105 = v164;
            v117 = v165;
            goto LABEL_58;
          }

          v108 = HIBYTE(v105) & 0xF;
          v95 = v130;
          goto LABEL_57;
        }
      }

      else if ((v96 & 0x2000000000000000) != 0)
      {
        v108 = HIBYTE(v96) & 0xF;
LABEL_57:
        _StringGuts.append(_:)(v95, v105, 0, v108, v97, v98, v99, v100, v101, v102, v103, v104);
        v105;
        v117 = v169._countAndFlagsBits;
        v105 = v169._object;
LABEL_58:
        v118 = HIBYTE(v105) & 0xF;
        if ((v105 & 0x2000000000000000) == 0)
        {
          v118 = v117 & 0xFFFFFFFFFFFFLL;
        }

        if (v118 || (v117 & ~v105 & 0x2000000000000000) != 0)
        {
          if ((v105 & 0x2000000000000000) != 0 && (v119 = specialized _SmallString.init(_:appending:)(v117, v105, 0x2065756C617620uLL, 0xE700000000000000), (v121 & 1) == 0))
          {
            v134 = v119;
            v135 = v120;
            v105;
            0xE700000000000000;
            v169._countAndFlagsBits = v134;
            v169._object = v135;
          }

          else
          {
            _StringGuts.append(_:)(0x2065756C617620, 0xE700000000000000, 0, 7, v109, v110, v111, v112, v113, v114, v115, v116);
            0xE700000000000000;
          }
        }

        else
        {
          v105;
          v169._countAndFlagsBits = 0x2065756C617620;
          v169._object = 0xE700000000000000;
        }

        if (v50)
        {
          v137 = 1702195828;
        }

        else
        {
          v137 = 0x65736C6166;
        }

        if (v50)
        {
          v138 = 0xE400000000000000;
        }

        else
        {
          v138 = 0xE500000000000000;
        }

        v139 = v169._object;
        v140 = (v169._object >> 56) & 0xF;
        if ((v169._object & 0x2000000000000000) == 0)
        {
          v140 = v169._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
        }

        if (v140 || (v169._countAndFlagsBits & ~v169._object & 0x2000000000000000) != 0)
        {
          if ((v169._object & 0x2000000000000000) != 0 && (v141 = specialized _SmallString.init(_:appending:)(v169._countAndFlagsBits, v169._object, v137, v138), (v143 & 1) == 0))
          {
            v152 = v141;
            v153 = v142;
            v139;
            v138;
            v169._countAndFlagsBits = v152;
            v169._object = v153;
            v138 = v153;
            v137 = v152;
          }

          else
          {
            _StringGuts.append(_:)(v137, v138, 0, HIBYTE(v138) & 5, v122, v123, v124, v125, v126, v127, v128, v129);
            v138;
            v137 = v169._countAndFlagsBits;
            v138 = v169._object;
          }
        }

        else
        {
          v169._object;
          v169._countAndFlagsBits = v137;
          v169._object = v138;
        }

        v154 = HIBYTE(v138) & 0xF;
        if ((v138 & 0x2000000000000000) == 0)
        {
          v154 = v137 & 0xFFFFFFFFFFFFLL;
        }

        if (v154 || (v137 & ~v138 & 0x2000000000000000) != 0)
        {
          if ((v138 & 0x2000000000000000) != 0 && (v155 = specialized _SmallString.init(_:appending:)(v137, v138, 0, 0xE000000000000000), (v157 & 1) == 0))
          {
            v158 = v155;
            v159 = v156;
            v138;
            0xE000000000000000;
          }

          else
          {
            _StringGuts.append(_:)(0, 0xE000000000000000, 0, 0, v144, v145, v146, v147, v148, v149, v150, v151);
            0xE000000000000000;
            v158 = v169._countAndFlagsBits;
            v159 = v169._object;
          }
        }

        else
        {
          v138;
          v158 = 0;
          v159 = 0xE000000000000000;
        }

        *v23 = v168;
        *(v23 + 8) = v158;
        *(v23 + 16) = v159;
        *(v23 + 24) = 0;
        *(v23 + 72) = 3;
        swift_willThrow();
        return __swift_destroy_boxed_opaque_existential_1Tm(v172);
      }

      v108 = v95 & 0xFFFFFFFFFFFFLL;
      goto LABEL_57;
    }

LABEL_102:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v172);
}

{
  v171 = a4;
  v9 = type metadata accessor for Optional(0, a2, a3, a4);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v169 - v11;
  v14 = a1[3];
  v13 = a1[4];
  v175 = a1;
  __swift_project_boxed_opaque_existential_0Tm(a1, v14);
  (*(v13 + 40))(&v172, v14, v13);
  if (!v5)
  {
    v169 = v9;
    v170 = a5;
    v15 = v171;
    v16 = v10;
    v17 = v173;
    v18 = v174;
    __swift_project_boxed_opaque_existential_0Tm(&v172, v173);
    v19 = (*(v18 + 56))(v17, v18);
    __swift_destroy_boxed_opaque_existential_1Tm(&v172._countAndFlagsBits);
    v172._countAndFlagsBits = v19;
    v20 = a2;
    (*(v15 + 16))(&v172, a2, v15);
    v21 = *(a2 - 8);
    if ((*(v21 + 48))(v12, 1, a2) != 1)
    {
      (*(v21 + 32))(v170, v12, a2);
      return __swift_destroy_boxed_opaque_existential_1Tm(v175);
    }

    (*(v16 + 8))(v12, v169);
    swift_allocError(&type metadata for DecodingError, &protocol witness table for DecodingError, 0, 0);
    v23 = v22;
    v24 = v175[3];
    v25 = v175[4];
    __swift_project_boxed_opaque_existential_0Tm(v175, v24);
    v171 = (*(v25 + 8))(v24, v25);
    v26 = _StringGuts.init(_initialCapacity:)(45);
    v36 = v27;
    v172._countAndFlagsBits = v26;
    v172._object = v27;
    v37 = HIBYTE(v27) & 0xF;
    if ((v27 & 0x2000000000000000) == 0)
    {
      v37 = v26 & 0xFFFFFFFFFFFFLL;
    }

    if (v37 || (v26 & ~v27 & 0x2000000000000000) != 0)
    {
      if ((0x800000018066C240 & 0x2000000000000000 & v27) != 0 && (v38 = specialized _SmallString.init(_:appending:)(v26, v27, 0xD000000000000012, 0x800000018066C240 | 0x8000000000000000), (v40 & 1) == 0))
      {
        v43 = v39;
        v44 = v38;
        v36;
        0x800000018066C240 | 0x8000000000000000;
        v172._countAndFlagsBits = v44;
        v172._object = v43;
      }

      else
      {
        if ((0x800000018066C240 & 0x2000000000000000) != 0)
        {
          v41 = (0x800000018066C240 >> 56) & 0xF;
        }

        else
        {
          v41 = 18;
        }

        _StringGuts.append(_:)(0xD000000000000012, 0x800000018066C240 | 0x8000000000000000, 0, v41, v28, v29, v30, v31, v32, v33, v34, v35);
        0x800000018066C240 | 0x8000000000000000;
      }
    }

    else
    {
      v27;
      v172._countAndFlagsBits = 0xD000000000000012;
      v172._object = (0x800000018066C240 | 0x8000000000000000);
    }

    TypeName = swift_getTypeName(v20, 0);
    if (v46 < 0)
    {
      goto LABEL_101;
    }

    v47 = TypeName;
    v48 = v46;
    v49 = validateUTF8(_:)(TypeName, v46);
    if (v49 < 0)
    {
      v53 = repairUTF8(_:firstKnownBrokenRange:)(v47, v48, v50, v51);
    }

    else
    {
      v53 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v47, v48, v49 & 1, v52);
    }

    countAndFlagsBits = v53;
    v64 = v54;
    object = v172._object;
    v66 = (v172._object >> 56) & 0xF;
    if ((v172._object & 0x2000000000000000) == 0)
    {
      v66 = v172._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v66 || (v172._countAndFlagsBits & ~v172._object & 0x2000000000000000) != 0)
    {
      if ((v172._object & 0x2000000000000000) == 0)
      {
        if ((v54 & 0x2000000000000000) != 0)
        {
          goto LABEL_29;
        }

LABEL_27:
        v67 = v53 & 0xFFFFFFFFFFFFLL;
LABEL_30:
        _StringGuts.append(_:)(countAndFlagsBits, v64, 0, v67, v55, v56, v57, v58, v59, v60, v61, v62);
        v64;
        countAndFlagsBits = v172._countAndFlagsBits;
        v64 = v172._object;
        goto LABEL_31;
      }

      if ((v54 & 0x2000000000000000) == 0)
      {
        goto LABEL_27;
      }

      v68 = specialized _SmallString.init(_:appending:)(v172._countAndFlagsBits, v172._object, v53, v54);
      if (v70)
      {
LABEL_29:
        v67 = HIBYTE(v64) & 0xF;
        goto LABEL_30;
      }

      v161 = v68;
      v162 = v69;
      object;
      v64;
      v172._countAndFlagsBits = v161;
      v172._object = v162;
      v64 = v162;
      countAndFlagsBits = v161;
    }

    else
    {
      v172._object;
      v172._countAndFlagsBits = countAndFlagsBits;
      v172._object = v64;
    }

LABEL_31:
    v79 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" from invalid ", 0xEuLL, 1);
    v80 = HIBYTE(v64) & 0xF;
    if ((v64 & 0x2000000000000000) == 0)
    {
      v80 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v80 || (countAndFlagsBits & ~v64 & 0x2000000000000000) != 0)
    {
      if ((v64 & 0x2000000000000000) == 0)
      {
        if ((v79._object & 0x2000000000000000) != 0)
        {
          goto LABEL_41;
        }

LABEL_39:
        v81 = v79._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
LABEL_42:
        _StringGuts.append(_:)(v79._countAndFlagsBits, v79._object, 0, v81, v71, v72, v73, v74, v75, v76, v77, v78);
        v79._object;
        goto LABEL_43;
      }

      if ((v79._object & 0x2000000000000000) == 0)
      {
        goto LABEL_39;
      }

      v82 = specialized _SmallString.init(_:appending:)(countAndFlagsBits, v64, v79._countAndFlagsBits, v79._object);
      if (v84)
      {
LABEL_41:
        v81 = (v79._object >> 56) & 0xF;
        goto LABEL_42;
      }

      v163 = v82;
      v164 = v83;
      v64;
      v79._object;
      v172._countAndFlagsBits = v163;
      v172._object = v164;
    }

    else
    {
      v64;
      v172 = v79;
    }

LABEL_43:
    v85 = swift_getTypeName(&type metadata for Int, 0);
    if ((v86 & 0x8000000000000000) == 0)
    {
      v87 = v85;
      v88 = v86;
      v89 = validateUTF8(_:)(v85, v86);
      if (v89 < 0)
      {
        v93 = repairUTF8(_:firstKnownBrokenRange:)(v87, v88, v90, v91);
      }

      else
      {
        v93 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v87, v88, v89 & 1, v92);
      }

      v103 = v94;
      v104 = v172._object;
      v105 = (v172._object >> 56) & 0xF;
      if ((v172._object & 0x2000000000000000) == 0)
      {
        v105 = v172._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      if (v105 || (v172._countAndFlagsBits & ~v172._object & 0x2000000000000000) != 0)
      {
        if ((v172._object & 0x2000000000000000) == 0)
        {
          if ((v94 & 0x2000000000000000) != 0)
          {
            v106 = HIBYTE(v94) & 0xF;
LABEL_56:
            _StringGuts.append(_:)(v93, v103, 0, v106, v95, v96, v97, v98, v99, v100, v101, v102);
            v103;
            v115 = v172._countAndFlagsBits;
            v103 = v172._object;
            goto LABEL_57;
          }

LABEL_55:
          v106 = v93 & 0xFFFFFFFFFFFFLL;
          goto LABEL_56;
        }

        if ((v94 & 0x2000000000000000) == 0)
        {
          goto LABEL_55;
        }

        v122 = v93;
        v123 = specialized _SmallString.init(_:appending:)(v172._countAndFlagsBits, v172._object, v93, v94);
        if (v125)
        {
          v106 = HIBYTE(v103) & 0xF;
          v93 = v122;
          goto LABEL_56;
        }

        v165 = v124;
        v166 = v123;
        v104;
        v103;
        v172._countAndFlagsBits = v166;
        v172._object = v165;
        v103 = v165;
        v115 = v166;
      }

      else
      {
        v126 = v93;
        v172._object;
        v115 = v126;
        v172._countAndFlagsBits = v126;
        v172._object = v103;
      }

LABEL_57:
      v116 = HIBYTE(v103) & 0xF;
      if ((v103 & 0x2000000000000000) == 0)
      {
        v116 = v115 & 0xFFFFFFFFFFFFLL;
      }

      if (v116 || (v115 & ~v103 & 0x2000000000000000) != 0)
      {
        if (v103 & 0x2000000000000000) == 0 || (v117 = specialized _SmallString.init(_:appending:)(v115, v103, 0x2065756C617620uLL, 0xE700000000000000), (v119))
        {
          _StringGuts.append(_:)(0x2065756C617620, 0xE700000000000000, 0, 7, v107, v108, v109, v110, v111, v112, v113, v114);
          0xE700000000000000;
          v121 = v172._countAndFlagsBits;
          v120 = v172._object;
          goto LABEL_73;
        }

        v121 = v117;
        v120 = v118;
        v103;
        0xE700000000000000;
      }

      else
      {
        v121 = 0x2065756C617620;
        v103;
        v120 = 0xE700000000000000;
      }

      v172._countAndFlagsBits = v121;
      v172._object = v120;
LABEL_73:
      v127 = _int64ToString(_:radix:uppercase:)(v19, 10, 0, swift_int64ToString);
      v137 = v128;
      v138 = HIBYTE(v120) & 0xF;
      if ((v120 & 0x2000000000000000) == 0)
      {
        v138 = v121 & 0xFFFFFFFFFFFFLL;
      }

      if (!v138 && (v121 & ~v120 & 0x2000000000000000) == 0)
      {
        v160 = v127;
        v120;
        v149 = v160;
        v172._countAndFlagsBits = v160;
        v172._object = v137;
        v140 = v171;
        goto LABEL_83;
      }

      if ((v120 & 0x2000000000000000) != 0)
      {
        if ((v128 & 0x2000000000000000) != 0)
        {
          v156 = v127;
          v157 = specialized _SmallString.init(_:appending:)(v121, v120, v127, v128);
          if ((v159 & 1) == 0)
          {
            v167 = v158;
            v168 = v157;
            v120;
            v137;
            v172._countAndFlagsBits = v168;
            v172._object = v167;
            v137 = v167;
            v149 = v168;
            v140 = v171;
            goto LABEL_83;
          }

          v139 = HIBYTE(v137) & 0xF;
          v127 = v156;
          goto LABEL_82;
        }
      }

      else if ((v128 & 0x2000000000000000) != 0)
      {
        v139 = HIBYTE(v128) & 0xF;
LABEL_82:
        v140 = v171;
        _StringGuts.append(_:)(v127, v137, 0, v139, v129, v130, v131, v132, v133, v134, v135, v136);
        v137;
        v149 = v172._countAndFlagsBits;
        v137 = v172._object;
LABEL_83:
        v150 = HIBYTE(v137) & 0xF;
        if ((v137 & 0x2000000000000000) == 0)
        {
          v150 = v149 & 0xFFFFFFFFFFFFLL;
        }

        if (v150 || (v149 & ~v137 & 0x2000000000000000) != 0)
        {
          if ((v137 & 0x2000000000000000) != 0 && (v151 = specialized _SmallString.init(_:appending:)(v149, v137, 0, 0xE000000000000000), (v153 & 1) == 0))
          {
            v154 = v151;
            v155 = v152;
            v137;
            0xE000000000000000;
          }

          else
          {
            _StringGuts.append(_:)(0, 0xE000000000000000, 0, 0, v141, v142, v143, v144, v145, v146, v147, v148);
            0xE000000000000000;
            v154 = v172._countAndFlagsBits;
            v155 = v172._object;
          }
        }

        else
        {
          v137;
          v154 = 0;
          v155 = 0xE000000000000000;
        }

        *v23 = v140;
        *(v23 + 8) = v154;
        *(v23 + 16) = v155;
        *(v23 + 24) = 0;
        *(v23 + 72) = 3;
        swift_willThrow();
        return __swift_destroy_boxed_opaque_existential_1Tm(v175);
      }

      v139 = v127 & 0xFFFFFFFFFFFFLL;
      goto LABEL_82;
    }

LABEL_101:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v175);
}

{
  v171 = a4;
  v9 = type metadata accessor for Optional(0, a2, a3, a4);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v169 - v11;
  v14 = a1[3];
  v13 = a1[4];
  v175 = a1;
  __swift_project_boxed_opaque_existential_0Tm(a1, v14);
  (*(v13 + 40))(&v172, v14, v13);
  if (!v5)
  {
    v169 = v9;
    v170 = a5;
    v15 = v171;
    v16 = v10;
    v17 = v173;
    v18 = v174;
    __swift_project_boxed_opaque_existential_0Tm(&v172, v173);
    v19 = (*(v18 + 64))(v17, v18);
    __swift_destroy_boxed_opaque_existential_1Tm(&v172._countAndFlagsBits);
    LOBYTE(v172._countAndFlagsBits) = v19;
    v20 = a2;
    (*(v15 + 16))(&v172, a2, v15);
    v21 = *(a2 - 8);
    if ((*(v21 + 48))(v12, 1, a2) != 1)
    {
      (*(v21 + 32))(v170, v12, a2);
      return __swift_destroy_boxed_opaque_existential_1Tm(v175);
    }

    (*(v16 + 8))(v12, v169);
    swift_allocError(&type metadata for DecodingError, &protocol witness table for DecodingError, 0, 0);
    v23 = v22;
    v24 = v175[3];
    v25 = v175[4];
    __swift_project_boxed_opaque_existential_0Tm(v175, v24);
    v171 = (*(v25 + 8))(v24, v25);
    v26 = _StringGuts.init(_initialCapacity:)(45);
    v36 = v27;
    v172._countAndFlagsBits = v26;
    v172._object = v27;
    v37 = HIBYTE(v27) & 0xF;
    if ((v27 & 0x2000000000000000) == 0)
    {
      v37 = v26 & 0xFFFFFFFFFFFFLL;
    }

    if (v37 || (v26 & ~v27 & 0x2000000000000000) != 0)
    {
      if ((0x800000018066C240 & 0x2000000000000000 & v27) != 0 && (v38 = specialized _SmallString.init(_:appending:)(v26, v27, 0xD000000000000012, 0x800000018066C240 | 0x8000000000000000), (v40 & 1) == 0))
      {
        v43 = v39;
        v44 = v38;
        v36;
        0x800000018066C240 | 0x8000000000000000;
        v172._countAndFlagsBits = v44;
        v172._object = v43;
      }

      else
      {
        if ((0x800000018066C240 & 0x2000000000000000) != 0)
        {
          v41 = (0x800000018066C240 >> 56) & 0xF;
        }

        else
        {
          v41 = 18;
        }

        _StringGuts.append(_:)(0xD000000000000012, 0x800000018066C240 | 0x8000000000000000, 0, v41, v28, v29, v30, v31, v32, v33, v34, v35);
        0x800000018066C240 | 0x8000000000000000;
      }
    }

    else
    {
      v27;
      v172._countAndFlagsBits = 0xD000000000000012;
      v172._object = (0x800000018066C240 | 0x8000000000000000);
    }

    TypeName = swift_getTypeName(v20, 0);
    if (v46 < 0)
    {
      goto LABEL_101;
    }

    v47 = TypeName;
    v48 = v46;
    v49 = validateUTF8(_:)(TypeName, v46);
    if (v49 < 0)
    {
      v53 = repairUTF8(_:firstKnownBrokenRange:)(v47, v48, v50, v51);
    }

    else
    {
      v53 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v47, v48, v49 & 1, v52);
    }

    countAndFlagsBits = v53;
    v64 = v54;
    object = v172._object;
    v66 = (v172._object >> 56) & 0xF;
    if ((v172._object & 0x2000000000000000) == 0)
    {
      v66 = v172._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v66 || (v172._countAndFlagsBits & ~v172._object & 0x2000000000000000) != 0)
    {
      if ((v172._object & 0x2000000000000000) == 0)
      {
        if ((v54 & 0x2000000000000000) != 0)
        {
          goto LABEL_29;
        }

LABEL_27:
        v67 = v53 & 0xFFFFFFFFFFFFLL;
LABEL_30:
        _StringGuts.append(_:)(countAndFlagsBits, v64, 0, v67, v55, v56, v57, v58, v59, v60, v61, v62);
        v64;
        countAndFlagsBits = v172._countAndFlagsBits;
        v64 = v172._object;
        goto LABEL_31;
      }

      if ((v54 & 0x2000000000000000) == 0)
      {
        goto LABEL_27;
      }

      v68 = specialized _SmallString.init(_:appending:)(v172._countAndFlagsBits, v172._object, v53, v54);
      if (v70)
      {
LABEL_29:
        v67 = HIBYTE(v64) & 0xF;
        goto LABEL_30;
      }

      v161 = v68;
      v162 = v69;
      object;
      v64;
      v172._countAndFlagsBits = v161;
      v172._object = v162;
      v64 = v162;
      countAndFlagsBits = v161;
    }

    else
    {
      v172._object;
      v172._countAndFlagsBits = countAndFlagsBits;
      v172._object = v64;
    }

LABEL_31:
    v79 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" from invalid ", 0xEuLL, 1);
    v80 = HIBYTE(v64) & 0xF;
    if ((v64 & 0x2000000000000000) == 0)
    {
      v80 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v80 || (countAndFlagsBits & ~v64 & 0x2000000000000000) != 0)
    {
      if ((v64 & 0x2000000000000000) == 0)
      {
        if ((v79._object & 0x2000000000000000) != 0)
        {
          goto LABEL_41;
        }

LABEL_39:
        v81 = v79._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
LABEL_42:
        _StringGuts.append(_:)(v79._countAndFlagsBits, v79._object, 0, v81, v71, v72, v73, v74, v75, v76, v77, v78);
        v79._object;
        goto LABEL_43;
      }

      if ((v79._object & 0x2000000000000000) == 0)
      {
        goto LABEL_39;
      }

      v82 = specialized _SmallString.init(_:appending:)(countAndFlagsBits, v64, v79._countAndFlagsBits, v79._object);
      if (v84)
      {
LABEL_41:
        v81 = (v79._object >> 56) & 0xF;
        goto LABEL_42;
      }

      v163 = v82;
      v164 = v83;
      v64;
      v79._object;
      v172._countAndFlagsBits = v163;
      v172._object = v164;
    }

    else
    {
      v64;
      v172 = v79;
    }

LABEL_43:
    v85 = swift_getTypeName(&type metadata for Int8, 0);
    if ((v86 & 0x8000000000000000) == 0)
    {
      v87 = v85;
      v88 = v86;
      v89 = validateUTF8(_:)(v85, v86);
      if (v89 < 0)
      {
        v93 = repairUTF8(_:firstKnownBrokenRange:)(v87, v88, v90, v91);
      }

      else
      {
        v93 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v87, v88, v89 & 1, v92);
      }

      v103 = v94;
      v104 = v172._object;
      v105 = (v172._object >> 56) & 0xF;
      if ((v172._object & 0x2000000000000000) == 0)
      {
        v105 = v172._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      if (v105 || (v172._countAndFlagsBits & ~v172._object & 0x2000000000000000) != 0)
      {
        if ((v172._object & 0x2000000000000000) == 0)
        {
          if ((v94 & 0x2000000000000000) != 0)
          {
            v106 = HIBYTE(v94) & 0xF;
LABEL_56:
            _StringGuts.append(_:)(v93, v103, 0, v106, v95, v96, v97, v98, v99, v100, v101, v102);
            v103;
            v115 = v172._countAndFlagsBits;
            v103 = v172._object;
            goto LABEL_57;
          }

LABEL_55:
          v106 = v93 & 0xFFFFFFFFFFFFLL;
          goto LABEL_56;
        }

        if ((v94 & 0x2000000000000000) == 0)
        {
          goto LABEL_55;
        }

        v122 = v93;
        v123 = specialized _SmallString.init(_:appending:)(v172._countAndFlagsBits, v172._object, v93, v94);
        if (v125)
        {
          v106 = HIBYTE(v103) & 0xF;
          v93 = v122;
          goto LABEL_56;
        }

        v165 = v124;
        v166 = v123;
        v104;
        v103;
        v172._countAndFlagsBits = v166;
        v172._object = v165;
        v103 = v165;
        v115 = v166;
      }

      else
      {
        v126 = v93;
        v172._object;
        v115 = v126;
        v172._countAndFlagsBits = v126;
        v172._object = v103;
      }

LABEL_57:
      v116 = HIBYTE(v103) & 0xF;
      if ((v103 & 0x2000000000000000) == 0)
      {
        v116 = v115 & 0xFFFFFFFFFFFFLL;
      }

      if (v116 || (v115 & ~v103 & 0x2000000000000000) != 0)
      {
        if (v103 & 0x2000000000000000) == 0 || (v117 = specialized _SmallString.init(_:appending:)(v115, v103, 0x2065756C617620uLL, 0xE700000000000000), (v119))
        {
          _StringGuts.append(_:)(0x2065756C617620, 0xE700000000000000, 0, 7, v107, v108, v109, v110, v111, v112, v113, v114);
          0xE700000000000000;
          v121 = v172._countAndFlagsBits;
          v120 = v172._object;
          goto LABEL_73;
        }

        v121 = v117;
        v120 = v118;
        v103;
        0xE700000000000000;
      }

      else
      {
        v121 = 0x2065756C617620;
        v103;
        v120 = 0xE700000000000000;
      }

      v172._countAndFlagsBits = v121;
      v172._object = v120;
LABEL_73:
      v127 = _int64ToString(_:radix:uppercase:)(v19, 10, 0, swift_int64ToString);
      v137 = v128;
      v138 = HIBYTE(v120) & 0xF;
      if ((v120 & 0x2000000000000000) == 0)
      {
        v138 = v121 & 0xFFFFFFFFFFFFLL;
      }

      if (!v138 && (v121 & ~v120 & 0x2000000000000000) == 0)
      {
        v160 = v127;
        v120;
        v149 = v160;
        v172._countAndFlagsBits = v160;
        v172._object = v137;
        v140 = v171;
        goto LABEL_83;
      }

      if ((v120 & 0x2000000000000000) != 0)
      {
        if ((v128 & 0x2000000000000000) != 0)
        {
          v156 = v127;
          v157 = specialized _SmallString.init(_:appending:)(v121, v120, v127, v128);
          if ((v159 & 1) == 0)
          {
            v167 = v158;
            v168 = v157;
            v120;
            v137;
            v172._countAndFlagsBits = v168;
            v172._object = v167;
            v137 = v167;
            v149 = v168;
            v140 = v171;
            goto LABEL_83;
          }

          v139 = HIBYTE(v137) & 0xF;
          v127 = v156;
          goto LABEL_82;
        }
      }

      else if ((v128 & 0x2000000000000000) != 0)
      {
        v139 = HIBYTE(v128) & 0xF;
LABEL_82:
        v140 = v171;
        _StringGuts.append(_:)(v127, v137, 0, v139, v129, v130, v131, v132, v133, v134, v135, v136);
        v137;
        v149 = v172._countAndFlagsBits;
        v137 = v172._object;
LABEL_83:
        v150 = HIBYTE(v137) & 0xF;
        if ((v137 & 0x2000000000000000) == 0)
        {
          v150 = v149 & 0xFFFFFFFFFFFFLL;
        }

        if (v150 || (v149 & ~v137 & 0x2000000000000000) != 0)
        {
          if ((v137 & 0x2000000000000000) != 0 && (v151 = specialized _SmallString.init(_:appending:)(v149, v137, 0, 0xE000000000000000), (v153 & 1) == 0))
          {
            v154 = v151;
            v155 = v152;
            v137;
            0xE000000000000000;
          }

          else
          {
            _StringGuts.append(_:)(0, 0xE000000000000000, 0, 0, v141, v142, v143, v144, v145, v146, v147, v148);
            0xE000000000000000;
            v154 = v172._countAndFlagsBits;
            v155 = v172._object;
          }
        }

        else
        {
          v137;
          v154 = 0;
          v155 = 0xE000000000000000;
        }

        *v23 = v140;
        *(v23 + 8) = v154;
        *(v23 + 16) = v155;
        *(v23 + 24) = 0;
        *(v23 + 72) = 3;
        swift_willThrow();
        return __swift_destroy_boxed_opaque_existential_1Tm(v175);
      }

      v139 = v127 & 0xFFFFFFFFFFFFLL;
      goto LABEL_82;
    }

LABEL_101:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v175);
}

{
  v171 = a4;
  v9 = type metadata accessor for Optional(0, a2, a3, a4);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v169 - v11;
  v14 = a1[3];
  v13 = a1[4];
  v175 = a1;
  __swift_project_boxed_opaque_existential_0Tm(a1, v14);
  (*(v13 + 40))(&v172, v14, v13);
  if (!v5)
  {
    v169 = v9;
    v170 = a5;
    v15 = v171;
    v16 = v10;
    v17 = v173;
    v18 = v174;
    __swift_project_boxed_opaque_existential_0Tm(&v172, v173);
    v19 = (*(v18 + 72))(v17, v18);
    __swift_destroy_boxed_opaque_existential_1Tm(&v172._countAndFlagsBits);
    LOWORD(v172._countAndFlagsBits) = v19;
    v20 = a2;
    (*(v15 + 16))(&v172, a2, v15);
    v21 = *(a2 - 8);
    if ((*(v21 + 48))(v12, 1, a2) != 1)
    {
      (*(v21 + 32))(v170, v12, a2);
      return __swift_destroy_boxed_opaque_existential_1Tm(v175);
    }

    (*(v16 + 8))(v12, v169);
    swift_allocError(&type metadata for DecodingError, &protocol witness table for DecodingError, 0, 0);
    v23 = v22;
    v24 = v175[3];
    v25 = v175[4];
    __swift_project_boxed_opaque_existential_0Tm(v175, v24);
    v171 = (*(v25 + 8))(v24, v25);
    v26 = _StringGuts.init(_initialCapacity:)(45);
    v36 = v27;
    v172._countAndFlagsBits = v26;
    v172._object = v27;
    v37 = HIBYTE(v27) & 0xF;
    if ((v27 & 0x2000000000000000) == 0)
    {
      v37 = v26 & 0xFFFFFFFFFFFFLL;
    }

    if (v37 || (v26 & ~v27 & 0x2000000000000000) != 0)
    {
      if ((0x800000018066C240 & 0x2000000000000000 & v27) != 0 && (v38 = specialized _SmallString.init(_:appending:)(v26, v27, 0xD000000000000012, 0x800000018066C240 | 0x8000000000000000), (v40 & 1) == 0))
      {
        v43 = v39;
        v44 = v38;
        v36;
        0x800000018066C240 | 0x8000000000000000;
        v172._countAndFlagsBits = v44;
        v172._object = v43;
      }

      else
      {
        if ((0x800000018066C240 & 0x2000000000000000) != 0)
        {
          v41 = (0x800000018066C240 >> 56) & 0xF;
        }

        else
        {
          v41 = 18;
        }

        _StringGuts.append(_:)(0xD000000000000012, 0x800000018066C240 | 0x8000000000000000, 0, v41, v28, v29, v30, v31, v32, v33, v34, v35);
        0x800000018066C240 | 0x8000000000000000;
      }
    }

    else
    {
      v27;
      v172._countAndFlagsBits = 0xD000000000000012;
      v172._object = (0x800000018066C240 | 0x8000000000000000);
    }

    TypeName = swift_getTypeName(v20, 0);
    if (v46 < 0)
    {
      goto LABEL_101;
    }

    v47 = TypeName;
    v48 = v46;
    v49 = validateUTF8(_:)(TypeName, v46);
    if (v49 < 0)
    {
      v53 = repairUTF8(_:firstKnownBrokenRange:)(v47, v48, v50, v51);
    }

    else
    {
      v53 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v47, v48, v49 & 1, v52);
    }

    countAndFlagsBits = v53;
    v64 = v54;
    object = v172._object;
    v66 = (v172._object >> 56) & 0xF;
    if ((v172._object & 0x2000000000000000) == 0)
    {
      v66 = v172._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v66 || (v172._countAndFlagsBits & ~v172._object & 0x2000000000000000) != 0)
    {
      if ((v172._object & 0x2000000000000000) == 0)
      {
        if ((v54 & 0x2000000000000000) != 0)
        {
          goto LABEL_29;
        }

LABEL_27:
        v67 = v53 & 0xFFFFFFFFFFFFLL;
LABEL_30:
        _StringGuts.append(_:)(countAndFlagsBits, v64, 0, v67, v55, v56, v57, v58, v59, v60, v61, v62);
        v64;
        countAndFlagsBits = v172._countAndFlagsBits;
        v64 = v172._object;
        goto LABEL_31;
      }

      if ((v54 & 0x2000000000000000) == 0)
      {
        goto LABEL_27;
      }

      v68 = specialized _SmallString.init(_:appending:)(v172._countAndFlagsBits, v172._object, v53, v54);
      if (v70)
      {
LABEL_29:
        v67 = HIBYTE(v64) & 0xF;
        goto LABEL_30;
      }

      v161 = v68;
      v162 = v69;
      object;
      v64;
      v172._countAndFlagsBits = v161;
      v172._object = v162;
      v64 = v162;
      countAndFlagsBits = v161;
    }

    else
    {
      v172._object;
      v172._countAndFlagsBits = countAndFlagsBits;
      v172._object = v64;
    }

LABEL_31:
    v79 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" from invalid ", 0xEuLL, 1);
    v80 = HIBYTE(v64) & 0xF;
    if ((v64 & 0x2000000000000000) == 0)
    {
      v80 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v80 || (countAndFlagsBits & ~v64 & 0x2000000000000000) != 0)
    {
      if ((v64 & 0x2000000000000000) == 0)
      {
        if ((v79._object & 0x2000000000000000) != 0)
        {
          goto LABEL_41;
        }

LABEL_39:
        v81 = v79._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
LABEL_42:
        _StringGuts.append(_:)(v79._countAndFlagsBits, v79._object, 0, v81, v71, v72, v73, v74, v75, v76, v77, v78);
        v79._object;
        goto LABEL_43;
      }

      if ((v79._object & 0x2000000000000000) == 0)
      {
        goto LABEL_39;
      }

      v82 = specialized _SmallString.init(_:appending:)(countAndFlagsBits, v64, v79._countAndFlagsBits, v79._object);
      if (v84)
      {
LABEL_41:
        v81 = (v79._object >> 56) & 0xF;
        goto LABEL_42;
      }

      v163 = v82;
      v164 = v83;
      v64;
      v79._object;
      v172._countAndFlagsBits = v163;
      v172._object = v164;
    }

    else
    {
      v64;
      v172 = v79;
    }

LABEL_43:
    v85 = swift_getTypeName(&type metadata for Int16, 0);
    if ((v86 & 0x8000000000000000) == 0)
    {
      v87 = v85;
      v88 = v86;
      v89 = validateUTF8(_:)(v85, v86);
      if (v89 < 0)
      {
        v93 = repairUTF8(_:firstKnownBrokenRange:)(v87, v88, v90, v91);
      }

      else
      {
        v93 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v87, v88, v89 & 1, v92);
      }

      v103 = v94;
      v104 = v172._object;
      v105 = (v172._object >> 56) & 0xF;
      if ((v172._object & 0x2000000000000000) == 0)
      {
        v105 = v172._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      if (v105 || (v172._countAndFlagsBits & ~v172._object & 0x2000000000000000) != 0)
      {
        if ((v172._object & 0x2000000000000000) == 0)
        {
          if ((v94 & 0x2000000000000000) != 0)
          {
            v106 = HIBYTE(v94) & 0xF;
LABEL_56:
            _StringGuts.append(_:)(v93, v103, 0, v106, v95, v96, v97, v98, v99, v100, v101, v102);
            v103;
            v115 = v172._countAndFlagsBits;
            v103 = v172._object;
            goto LABEL_57;
          }

LABEL_55:
          v106 = v93 & 0xFFFFFFFFFFFFLL;
          goto LABEL_56;
        }

        if ((v94 & 0x2000000000000000) == 0)
        {
          goto LABEL_55;
        }

        v122 = v93;
        v123 = specialized _SmallString.init(_:appending:)(v172._countAndFlagsBits, v172._object, v93, v94);
        if (v125)
        {
          v106 = HIBYTE(v103) & 0xF;
          v93 = v122;
          goto LABEL_56;
        }

        v165 = v124;
        v166 = v123;
        v104;
        v103;
        v172._countAndFlagsBits = v166;
        v172._object = v165;
        v103 = v165;
        v115 = v166;
      }

      else
      {
        v126 = v93;
        v172._object;
        v115 = v126;
        v172._countAndFlagsBits = v126;
        v172._object = v103;
      }

LABEL_57:
      v116 = HIBYTE(v103) & 0xF;
      if ((v103 & 0x2000000000000000) == 0)
      {
        v116 = v115 & 0xFFFFFFFFFFFFLL;
      }

      if (v116 || (v115 & ~v103 & 0x2000000000000000) != 0)
      {
        if (v103 & 0x2000000000000000) == 0 || (v117 = specialized _SmallString.init(_:appending:)(v115, v103, 0x2065756C617620uLL, 0xE700000000000000), (v119))
        {
          _StringGuts.append(_:)(0x2065756C617620, 0xE700000000000000, 0, 7, v107, v108, v109, v110, v111, v112, v113, v114);
          0xE700000000000000;
          v121 = v172._countAndFlagsBits;
          v120 = v172._object;
          goto LABEL_73;
        }

        v121 = v117;
        v120 = v118;
        v103;
        0xE700000000000000;
      }

      else
      {
        v121 = 0x2065756C617620;
        v103;
        v120 = 0xE700000000000000;
      }

      v172._countAndFlagsBits = v121;
      v172._object = v120;
LABEL_73:
      v127 = _int64ToString(_:radix:uppercase:)(v19, 10, 0, swift_int64ToString);
      v137 = v128;
      v138 = HIBYTE(v120) & 0xF;
      if ((v120 & 0x2000000000000000) == 0)
      {
        v138 = v121 & 0xFFFFFFFFFFFFLL;
      }

      if (!v138 && (v121 & ~v120 & 0x2000000000000000) == 0)
      {
        v160 = v127;
        v120;
        v149 = v160;
        v172._countAndFlagsBits = v160;
        v172._object = v137;
        v140 = v171;
        goto LABEL_83;
      }

      if ((v120 & 0x2000000000000000) != 0)
      {
        if ((v128 & 0x2000000000000000) != 0)
        {
          v156 = v127;
          v157 = specialized _SmallString.init(_:appending:)(v121, v120, v127, v128);
          if ((v159 & 1) == 0)
          {
            v167 = v158;
            v168 = v157;
            v120;
            v137;
            v172._countAndFlagsBits = v168;
            v172._object = v167;
            v137 = v167;
            v149 = v168;
            v140 = v171;
            goto LABEL_83;
          }

          v139 = HIBYTE(v137) & 0xF;
          v127 = v156;
          goto LABEL_82;
        }
      }

      else if ((v128 & 0x2000000000000000) != 0)
      {
        v139 = HIBYTE(v128) & 0xF;
LABEL_82:
        v140 = v171;
        _StringGuts.append(_:)(v127, v137, 0, v139, v129, v130, v131, v132, v133, v134, v135, v136);
        v137;
        v149 = v172._countAndFlagsBits;
        v137 = v172._object;
LABEL_83:
        v150 = HIBYTE(v137) & 0xF;
        if ((v137 & 0x2000000000000000) == 0)
        {
          v150 = v149 & 0xFFFFFFFFFFFFLL;
        }

        if (v150 || (v149 & ~v137 & 0x2000000000000000) != 0)
        {
          if ((v137 & 0x2000000000000000) != 0 && (v151 = specialized _SmallString.init(_:appending:)(v149, v137, 0, 0xE000000000000000), (v153 & 1) == 0))
          {
            v154 = v151;
            v155 = v152;
            v137;
            0xE000000000000000;
          }

          else
          {
            _StringGuts.append(_:)(0, 0xE000000000000000, 0, 0, v141, v142, v143, v144, v145, v146, v147, v148);
            0xE000000000000000;
            v154 = v172._countAndFlagsBits;
            v155 = v172._object;
          }
        }

        else
        {
          v137;
          v154 = 0;
          v155 = 0xE000000000000000;
        }

        *v23 = v140;
        *(v23 + 8) = v154;
        *(v23 + 16) = v155;
        *(v23 + 24) = 0;
        *(v23 + 72) = 3;
        swift_willThrow();
        return __swift_destroy_boxed_opaque_existential_1Tm(v175);
      }

      v139 = v127 & 0xFFFFFFFFFFFFLL;
      goto LABEL_82;
    }

LABEL_101:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v175);
}

{
  v171 = a4;
  v9 = type metadata accessor for Optional(0, a2, a3, a4);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v169 - v11;
  v14 = a1[3];
  v13 = a1[4];
  v175 = a1;
  __swift_project_boxed_opaque_existential_0Tm(a1, v14);
  (*(v13 + 40))(&v172, v14, v13);
  if (!v5)
  {
    v169 = v9;
    v170 = a5;
    v15 = v171;
    v16 = v10;
    v17 = v173;
    v18 = v174;
    __swift_project_boxed_opaque_existential_0Tm(&v172, v173);
    v19 = (*(v18 + 80))(v17, v18);
    __swift_destroy_boxed_opaque_existential_1Tm(&v172._countAndFlagsBits);
    LODWORD(v172._countAndFlagsBits) = v19;
    v20 = a2;
    (*(v15 + 16))(&v172, a2, v15);
    v21 = *(a2 - 8);
    if ((*(v21 + 48))(v12, 1, a2) != 1)
    {
      (*(v21 + 32))(v170, v12, a2);
      return __swift_destroy_boxed_opaque_existential_1Tm(v175);
    }

    (*(v16 + 8))(v12, v169);
    swift_allocError(&type metadata for DecodingError, &protocol witness table for DecodingError, 0, 0);
    v23 = v22;
    v24 = v175[3];
    v25 = v175[4];
    __swift_project_boxed_opaque_existential_0Tm(v175, v24);
    v171 = (*(v25 + 8))(v24, v25);
    v26 = _StringGuts.init(_initialCapacity:)(45);
    v36 = v27;
    v172._countAndFlagsBits = v26;
    v172._object = v27;
    v37 = HIBYTE(v27) & 0xF;
    if ((v27 & 0x2000000000000000) == 0)
    {
      v37 = v26 & 0xFFFFFFFFFFFFLL;
    }

    if (v37 || (v26 & ~v27 & 0x2000000000000000) != 0)
    {
      if ((0x800000018066C240 & 0x2000000000000000 & v27) != 0 && (v38 = specialized _SmallString.init(_:appending:)(v26, v27, 0xD000000000000012, 0x800000018066C240 | 0x8000000000000000), (v40 & 1) == 0))
      {
        v43 = v39;
        v44 = v38;
        v36;
        0x800000018066C240 | 0x8000000000000000;
        v172._countAndFlagsBits = v44;
        v172._object = v43;
      }

      else
      {
        if ((0x800000018066C240 & 0x2000000000000000) != 0)
        {
          v41 = (0x800000018066C240 >> 56) & 0xF;
        }

        else
        {
          v41 = 18;
        }

        _StringGuts.append(_:)(0xD000000000000012, 0x800000018066C240 | 0x8000000000000000, 0, v41, v28, v29, v30, v31, v32, v33, v34, v35);
        0x800000018066C240 | 0x8000000000000000;
      }
    }

    else
    {
      v27;
      v172._countAndFlagsBits = 0xD000000000000012;
      v172._object = (0x800000018066C240 | 0x8000000000000000);
    }

    TypeName = swift_getTypeName(v20, 0);
    if (v46 < 0)
    {
      goto LABEL_101;
    }

    v47 = TypeName;
    v48 = v46;
    v49 = validateUTF8(_:)(TypeName, v46);
    if (v49 < 0)
    {
      v53 = repairUTF8(_:firstKnownBrokenRange:)(v47, v48, v50, v51);
    }

    else
    {
      v53 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v47, v48, v49 & 1, v52);
    }

    countAndFlagsBits = v53;
    v64 = v54;
    object = v172._object;
    v66 = (v172._object >> 56) & 0xF;
    if ((v172._object & 0x2000000000000000) == 0)
    {
      v66 = v172._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v66 || (v172._countAndFlagsBits & ~v172._object & 0x2000000000000000) != 0)
    {
      if ((v172._object & 0x2000000000000000) == 0)
      {
        if ((v54 & 0x2000000000000000) != 0)
        {
          goto LABEL_29;
        }

LABEL_27:
        v67 = v53 & 0xFFFFFFFFFFFFLL;
LABEL_30:
        _StringGuts.append(_:)(countAndFlagsBits, v64, 0, v67, v55, v56, v57, v58, v59, v60, v61, v62);
        v64;
        countAndFlagsBits = v172._countAndFlagsBits;
        v64 = v172._object;
        goto LABEL_31;
      }

      if ((v54 & 0x2000000000000000) == 0)
      {
        goto LABEL_27;
      }

      v68 = specialized _SmallString.init(_:appending:)(v172._countAndFlagsBits, v172._object, v53, v54);
      if (v70)
      {
LABEL_29:
        v67 = HIBYTE(v64) & 0xF;
        goto LABEL_30;
      }

      v161 = v68;
      v162 = v69;
      object;
      v64;
      v172._countAndFlagsBits = v161;
      v172._object = v162;
      v64 = v162;
      countAndFlagsBits = v161;
    }

    else
    {
      v172._object;
      v172._countAndFlagsBits = countAndFlagsBits;
      v172._object = v64;
    }

LABEL_31:
    v79 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" from invalid ", 0xEuLL, 1);
    v80 = HIBYTE(v64) & 0xF;
    if ((v64 & 0x2000000000000000) == 0)
    {
      v80 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v80 || (countAndFlagsBits & ~v64 & 0x2000000000000000) != 0)
    {
      if ((v64 & 0x2000000000000000) == 0)
      {
        if ((v79._object & 0x2000000000000000) != 0)
        {
          goto LABEL_41;
        }

LABEL_39:
        v81 = v79._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
LABEL_42:
        _StringGuts.append(_:)(v79._countAndFlagsBits, v79._object, 0, v81, v71, v72, v73, v74, v75, v76, v77, v78);
        v79._object;
        goto LABEL_43;
      }

      if ((v79._object & 0x2000000000000000) == 0)
      {
        goto LABEL_39;
      }

      v82 = specialized _SmallString.init(_:appending:)(countAndFlagsBits, v64, v79._countAndFlagsBits, v79._object);
      if (v84)
      {
LABEL_41:
        v81 = (v79._object >> 56) & 0xF;
        goto LABEL_42;
      }

      v163 = v82;
      v164 = v83;
      v64;
      v79._object;
      v172._countAndFlagsBits = v163;
      v172._object = v164;
    }

    else
    {
      v64;
      v172 = v79;
    }

LABEL_43:
    v85 = swift_getTypeName(&type metadata for Int32, 0);
    if ((v86 & 0x8000000000000000) == 0)
    {
      v87 = v85;
      v88 = v86;
      v89 = validateUTF8(_:)(v85, v86);
      if (v89 < 0)
      {
        v93 = repairUTF8(_:firstKnownBrokenRange:)(v87, v88, v90, v91);
      }

      else
      {
        v93 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v87, v88, v89 & 1, v92);
      }

      v103 = v94;
      v104 = v172._object;
      v105 = (v172._object >> 56) & 0xF;
      if ((v172._object & 0x2000000000000000) == 0)
      {
        v105 = v172._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      if (v105 || (v172._countAndFlagsBits & ~v172._object & 0x2000000000000000) != 0)
      {
        if ((v172._object & 0x2000000000000000) == 0)
        {
          if ((v94 & 0x2000000000000000) != 0)
          {
            v106 = HIBYTE(v94) & 0xF;
LABEL_56:
            _StringGuts.append(_:)(v93, v103, 0, v106, v95, v96, v97, v98, v99, v100, v101, v102);
            v103;
            v115 = v172._countAndFlagsBits;
            v103 = v172._object;
            goto LABEL_57;
          }

LABEL_55:
          v106 = v93 & 0xFFFFFFFFFFFFLL;
          goto LABEL_56;
        }

        if ((v94 & 0x2000000000000000) == 0)
        {
          goto LABEL_55;
        }

        v122 = v93;
        v123 = specialized _SmallString.init(_:appending:)(v172._countAndFlagsBits, v172._object, v93, v94);
        if (v125)
        {
          v106 = HIBYTE(v103) & 0xF;
          v93 = v122;
          goto LABEL_56;
        }

        v165 = v124;
        v166 = v123;
        v104;
        v103;
        v172._countAndFlagsBits = v166;
        v172._object = v165;
        v103 = v165;
        v115 = v166;
      }

      else
      {
        v126 = v93;
        v172._object;
        v115 = v126;
        v172._countAndFlagsBits = v126;
        v172._object = v103;
      }

LABEL_57:
      v116 = HIBYTE(v103) & 0xF;
      if ((v103 & 0x2000000000000000) == 0)
      {
        v116 = v115 & 0xFFFFFFFFFFFFLL;
      }

      if (v116 || (v115 & ~v103 & 0x2000000000000000) != 0)
      {
        if (v103 & 0x2000000000000000) == 0 || (v117 = specialized _SmallString.init(_:appending:)(v115, v103, 0x2065756C617620uLL, 0xE700000000000000), (v119))
        {
          _StringGuts.append(_:)(0x2065756C617620, 0xE700000000000000, 0, 7, v107, v108, v109, v110, v111, v112, v113, v114);
          0xE700000000000000;
          v121 = v172._countAndFlagsBits;
          v120 = v172._object;
          goto LABEL_73;
        }

        v121 = v117;
        v120 = v118;
        v103;
        0xE700000000000000;
      }

      else
      {
        v121 = 0x2065756C617620;
        v103;
        v120 = 0xE700000000000000;
      }

      v172._countAndFlagsBits = v121;
      v172._object = v120;
LABEL_73:
      v127 = _int64ToString(_:radix:uppercase:)(v19, 10, 0, swift_int64ToString);
      v137 = v128;
      v138 = HIBYTE(v120) & 0xF;
      if ((v120 & 0x2000000000000000) == 0)
      {
        v138 = v121 & 0xFFFFFFFFFFFFLL;
      }

      if (!v138 && (v121 & ~v120 & 0x2000000000000000) == 0)
      {
        v160 = v127;
        v120;
        v149 = v160;
        v172._countAndFlagsBits = v160;
        v172._object = v137;
        v140 = v171;
        goto LABEL_83;
      }

      if ((v120 & 0x2000000000000000) != 0)
      {
        if ((v128 & 0x2000000000000000) != 0)
        {
          v156 = v127;
          v157 = specialized _SmallString.init(_:appending:)(v121, v120, v127, v128);
          if ((v159 & 1) == 0)
          {
            v167 = v158;
            v168 = v157;
            v120;
            v137;
            v172._countAndFlagsBits = v168;
            v172._object = v167;
            v137 = v167;
            v149 = v168;
            v140 = v171;
            goto LABEL_83;
          }

          v139 = HIBYTE(v137) & 0xF;
          v127 = v156;
          goto LABEL_82;
        }
      }

      else if ((v128 & 0x2000000000000000) != 0)
      {
        v139 = HIBYTE(v128) & 0xF;
LABEL_82:
        v140 = v171;
        _StringGuts.append(_:)(v127, v137, 0, v139, v129, v130, v131, v132, v133, v134, v135, v136);
        v137;
        v149 = v172._countAndFlagsBits;
        v137 = v172._object;
LABEL_83:
        v150 = HIBYTE(v137) & 0xF;
        if ((v137 & 0x2000000000000000) == 0)
        {
          v150 = v149 & 0xFFFFFFFFFFFFLL;
        }

        if (v150 || (v149 & ~v137 & 0x2000000000000000) != 0)
        {
          if ((v137 & 0x2000000000000000) != 0 && (v151 = specialized _SmallString.init(_:appending:)(v149, v137, 0, 0xE000000000000000), (v153 & 1) == 0))
          {
            v154 = v151;
            v155 = v152;
            v137;
            0xE000000000000000;
          }

          else
          {
            _StringGuts.append(_:)(0, 0xE000000000000000, 0, 0, v141, v142, v143, v144, v145, v146, v147, v148);
            0xE000000000000000;
            v154 = v172._countAndFlagsBits;
            v155 = v172._object;
          }
        }

        else
        {
          v137;
          v154 = 0;
          v155 = 0xE000000000000000;
        }

        *v23 = v140;
        *(v23 + 8) = v154;
        *(v23 + 16) = v155;
        *(v23 + 24) = 0;
        *(v23 + 72) = 3;
        swift_willThrow();
        return __swift_destroy_boxed_opaque_existential_1Tm(v175);
      }

      v139 = v127 & 0xFFFFFFFFFFFFLL;
      goto LABEL_82;
    }

LABEL_101:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v175);
}

{
  v171 = a4;
  v9 = type metadata accessor for Optional(0, a2, a3, a4);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v169 - v11;
  v14 = a1[3];
  v13 = a1[4];
  v175 = a1;
  __swift_project_boxed_opaque_existential_0Tm(a1, v14);
  (*(v13 + 40))(&v172, v14, v13);
  if (!v5)
  {
    v169 = v9;
    v170 = a5;
    v15 = v171;
    v16 = v10;
    v17 = v173;
    v18 = v174;
    __swift_project_boxed_opaque_existential_0Tm(&v172, v173);
    v19 = (*(v18 + 88))(v17, v18);
    __swift_destroy_boxed_opaque_existential_1Tm(&v172._countAndFlagsBits);
    v172._countAndFlagsBits = v19;
    v20 = a2;
    (*(v15 + 16))(&v172, a2, v15);
    v21 = *(a2 - 8);
    if ((*(v21 + 48))(v12, 1, a2) != 1)
    {
      (*(v21 + 32))(v170, v12, a2);
      return __swift_destroy_boxed_opaque_existential_1Tm(v175);
    }

    (*(v16 + 8))(v12, v169);
    swift_allocError(&type metadata for DecodingError, &protocol witness table for DecodingError, 0, 0);
    v23 = v22;
    v24 = v175[3];
    v25 = v175[4];
    __swift_project_boxed_opaque_existential_0Tm(v175, v24);
    v171 = (*(v25 + 8))(v24, v25);
    v26 = _StringGuts.init(_initialCapacity:)(45);
    v36 = v27;
    v172._countAndFlagsBits = v26;
    v172._object = v27;
    v37 = HIBYTE(v27) & 0xF;
    if ((v27 & 0x2000000000000000) == 0)
    {
      v37 = v26 & 0xFFFFFFFFFFFFLL;
    }

    if (v37 || (v26 & ~v27 & 0x2000000000000000) != 0)
    {
      if ((0x800000018066C240 & 0x2000000000000000 & v27) != 0 && (v38 = specialized _SmallString.init(_:appending:)(v26, v27, 0xD000000000000012, 0x800000018066C240 | 0x8000000000000000), (v40 & 1) == 0))
      {
        v43 = v39;
        v44 = v38;
        v36;
        0x800000018066C240 | 0x8000000000000000;
        v172._countAndFlagsBits = v44;
        v172._object = v43;
      }

      else
      {
        if ((0x800000018066C240 & 0x2000000000000000) != 0)
        {
          v41 = (0x800000018066C240 >> 56) & 0xF;
        }

        else
        {
          v41 = 18;
        }

        _StringGuts.append(_:)(0xD000000000000012, 0x800000018066C240 | 0x8000000000000000, 0, v41, v28, v29, v30, v31, v32, v33, v34, v35);
        0x800000018066C240 | 0x8000000000000000;
      }
    }

    else
    {
      v27;
      v172._countAndFlagsBits = 0xD000000000000012;
      v172._object = (0x800000018066C240 | 0x8000000000000000);
    }

    TypeName = swift_getTypeName(v20, 0);
    if (v46 < 0)
    {
      goto LABEL_101;
    }

    v47 = TypeName;
    v48 = v46;
    v49 = validateUTF8(_:)(TypeName, v46);
    if (v49 < 0)
    {
      v53 = repairUTF8(_:firstKnownBrokenRange:)(v47, v48, v50, v51);
    }

    else
    {
      v53 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v47, v48, v49 & 1, v52);
    }

    countAndFlagsBits = v53;
    v64 = v54;
    object = v172._object;
    v66 = (v172._object >> 56) & 0xF;
    if ((v172._object & 0x2000000000000000) == 0)
    {
      v66 = v172._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v66 || (v172._countAndFlagsBits & ~v172._object & 0x2000000000000000) != 0)
    {
      if ((v172._object & 0x2000000000000000) == 0)
      {
        if ((v54 & 0x2000000000000000) != 0)
        {
          goto LABEL_29;
        }

LABEL_27:
        v67 = v53 & 0xFFFFFFFFFFFFLL;
LABEL_30:
        _StringGuts.append(_:)(countAndFlagsBits, v64, 0, v67, v55, v56, v57, v58, v59, v60, v61, v62);
        v64;
        countAndFlagsBits = v172._countAndFlagsBits;
        v64 = v172._object;
        goto LABEL_31;
      }

      if ((v54 & 0x2000000000000000) == 0)
      {
        goto LABEL_27;
      }

      v68 = specialized _SmallString.init(_:appending:)(v172._countAndFlagsBits, v172._object, v53, v54);
      if (v70)
      {
LABEL_29:
        v67 = HIBYTE(v64) & 0xF;
        goto LABEL_30;
      }

      v161 = v68;
      v162 = v69;
      object;
      v64;
      v172._countAndFlagsBits = v161;
      v172._object = v162;
      v64 = v162;
      countAndFlagsBits = v161;
    }

    else
    {
      v172._object;
      v172._countAndFlagsBits = countAndFlagsBits;
      v172._object = v64;
    }

LABEL_31:
    v79 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" from invalid ", 0xEuLL, 1);
    v80 = HIBYTE(v64) & 0xF;
    if ((v64 & 0x2000000000000000) == 0)
    {
      v80 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v80 || (countAndFlagsBits & ~v64 & 0x2000000000000000) != 0)
    {
      if ((v64 & 0x2000000000000000) == 0)
      {
        if ((v79._object & 0x2000000000000000) != 0)
        {
          goto LABEL_41;
        }

LABEL_39:
        v81 = v79._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
LABEL_42:
        _StringGuts.append(_:)(v79._countAndFlagsBits, v79._object, 0, v81, v71, v72, v73, v74, v75, v76, v77, v78);
        v79._object;
        goto LABEL_43;
      }

      if ((v79._object & 0x2000000000000000) == 0)
      {
        goto LABEL_39;
      }

      v82 = specialized _SmallString.init(_:appending:)(countAndFlagsBits, v64, v79._countAndFlagsBits, v79._object);
      if (v84)
      {
LABEL_41:
        v81 = (v79._object >> 56) & 0xF;
        goto LABEL_42;
      }

      v163 = v82;
      v164 = v83;
      v64;
      v79._object;
      v172._countAndFlagsBits = v163;
      v172._object = v164;
    }

    else
    {
      v64;
      v172 = v79;
    }

LABEL_43:
    v85 = swift_getTypeName(&type metadata for Int64, 0);
    if ((v86 & 0x8000000000000000) == 0)
    {
      v87 = v85;
      v88 = v86;
      v89 = validateUTF8(_:)(v85, v86);
      if (v89 < 0)
      {
        v93 = repairUTF8(_:firstKnownBrokenRange:)(v87, v88, v90, v91);
      }

      else
      {
        v93 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v87, v88, v89 & 1, v92);
      }

      v103 = v94;
      v104 = v172._object;
      v105 = (v172._object >> 56) & 0xF;
      if ((v172._object & 0x2000000000000000) == 0)
      {
        v105 = v172._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      if (v105 || (v172._countAndFlagsBits & ~v172._object & 0x2000000000000000) != 0)
      {
        if ((v172._object & 0x2000000000000000) == 0)
        {
          if ((v94 & 0x2000000000000000) != 0)
          {
            v106 = HIBYTE(v94) & 0xF;
LABEL_56:
            _StringGuts.append(_:)(v93, v103, 0, v106, v95, v96, v97, v98, v99, v100, v101, v102);
            v103;
            v115 = v172._countAndFlagsBits;
            v103 = v172._object;
            goto LABEL_57;
          }

LABEL_55:
          v106 = v93 & 0xFFFFFFFFFFFFLL;
          goto LABEL_56;
        }

        if ((v94 & 0x2000000000000000) == 0)
        {
          goto LABEL_55;
        }

        v122 = v93;
        v123 = specialized _SmallString.init(_:appending:)(v172._countAndFlagsBits, v172._object, v93, v94);
        if (v125)
        {
          v106 = HIBYTE(v103) & 0xF;
          v93 = v122;
          goto LABEL_56;
        }

        v165 = v124;
        v166 = v123;
        v104;
        v103;
        v172._countAndFlagsBits = v166;
        v172._object = v165;
        v103 = v165;
        v115 = v166;
      }

      else
      {
        v126 = v93;
        v172._object;
        v115 = v126;
        v172._countAndFlagsBits = v126;
        v172._object = v103;
      }

LABEL_57:
      v116 = HIBYTE(v103) & 0xF;
      if ((v103 & 0x2000000000000000) == 0)
      {
        v116 = v115 & 0xFFFFFFFFFFFFLL;
      }

      if (v116 || (v115 & ~v103 & 0x2000000000000000) != 0)
      {
        if (v103 & 0x2000000000000000) == 0 || (v117 = specialized _SmallString.init(_:appending:)(v115, v103, 0x2065756C617620uLL, 0xE700000000000000), (v119))
        {
          _StringGuts.append(_:)(0x2065756C617620, 0xE700000000000000, 0, 7, v107, v108, v109, v110, v111, v112, v113, v114);
          0xE700000000000000;
          v121 = v172._countAndFlagsBits;
          v120 = v172._object;
          goto LABEL_73;
        }

        v121 = v117;
        v120 = v118;
        v103;
        0xE700000000000000;
      }

      else
      {
        v121 = 0x2065756C617620;
        v103;
        v120 = 0xE700000000000000;
      }

      v172._countAndFlagsBits = v121;
      v172._object = v120;
LABEL_73:
      v127 = _int64ToString(_:radix:uppercase:)(v19, 10, 0, swift_int64ToString);
      v137 = v128;
      v138 = HIBYTE(v120) & 0xF;
      if ((v120 & 0x2000000000000000) == 0)
      {
        v138 = v121 & 0xFFFFFFFFFFFFLL;
      }

      if (!v138 && (v121 & ~v120 & 0x2000000000000000) == 0)
      {
        v160 = v127;
        v120;
        v149 = v160;
        v172._countAndFlagsBits = v160;
        v172._object = v137;
        v140 = v171;
        goto LABEL_83;
      }

      if ((v120 & 0x2000000000000000) != 0)
      {
        if ((v128 & 0x2000000000000000) != 0)
        {
          v156 = v127;
          v157 = specialized _SmallString.init(_:appending:)(v121, v120, v127, v128);
          if ((v159 & 1) == 0)
          {
            v167 = v158;
            v168 = v157;
            v120;
            v137;
            v172._countAndFlagsBits = v168;
            v172._object = v167;
            v137 = v167;
            v149 = v168;
            v140 = v171;
            goto LABEL_83;
          }

          v139 = HIBYTE(v137) & 0xF;
          v127 = v156;
          goto LABEL_82;
        }
      }

      else if ((v128 & 0x2000000000000000) != 0)
      {
        v139 = HIBYTE(v128) & 0xF;
LABEL_82:
        v140 = v171;
        _StringGuts.append(_:)(v127, v137, 0, v139, v129, v130, v131, v132, v133, v134, v135, v136);
        v137;
        v149 = v172._countAndFlagsBits;
        v137 = v172._object;
LABEL_83:
        v150 = HIBYTE(v137) & 0xF;
        if ((v137 & 0x2000000000000000) == 0)
        {
          v150 = v149 & 0xFFFFFFFFFFFFLL;
        }

        if (v150 || (v149 & ~v137 & 0x2000000000000000) != 0)
        {
          if ((v137 & 0x2000000000000000) != 0 && (v151 = specialized _SmallString.init(_:appending:)(v149, v137, 0, 0xE000000000000000), (v153 & 1) == 0))
          {
            v154 = v151;
            v155 = v152;
            v137;
            0xE000000000000000;
          }

          else
          {
            _StringGuts.append(_:)(0, 0xE000000000000000, 0, 0, v141, v142, v143, v144, v145, v146, v147, v148);
            0xE000000000000000;
            v154 = v172._countAndFlagsBits;
            v155 = v172._object;
          }
        }

        else
        {
          v137;
          v154 = 0;
          v155 = 0xE000000000000000;
        }

        *v23 = v140;
        *(v23 + 8) = v154;
        *(v23 + 16) = v155;
        *(v23 + 24) = 0;
        *(v23 + 72) = 3;
        swift_willThrow();
        return __swift_destroy_boxed_opaque_existential_1Tm(v175);
      }

      v139 = v127 & 0xFFFFFFFFFFFFLL;
      goto LABEL_82;
    }

LABEL_101:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v175);
}

{
  v169 = a4;
  v9 = type metadata accessor for Optional(0, a2, a3, a4);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v167 - v11;
  v14 = a1[3];
  v13 = a1[4];
  v173 = a1;
  __swift_project_boxed_opaque_existential_0Tm(a1, v14);
  (*(v13 + 40))(&v170, v14, v13);
  if (!v5)
  {
    v167 = v9;
    v168 = a5;
    v15 = v169;
    v16 = v10;
    v17 = v171;
    v18 = v172;
    __swift_project_boxed_opaque_existential_0Tm(&v170, v171);
    v19 = (*(v18 + 104))(v17, v18);
    __swift_destroy_boxed_opaque_existential_1Tm(&v170._countAndFlagsBits);
    v170._countAndFlagsBits = v19;
    v20 = a2;
    (*(v15 + 16))(&v170, a2, v15);
    v21 = *(a2 - 8);
    if ((*(v21 + 48))(v12, 1, a2) != 1)
    {
      (*(v21 + 32))(v168, v12, a2);
      return __swift_destroy_boxed_opaque_existential_1Tm(v173);
    }

    (*(v16 + 8))(v12, v167);
    swift_allocError(&type metadata for DecodingError, &protocol witness table for DecodingError, 0, 0);
    v23 = v22;
    v24 = v173[3];
    v25 = v173[4];
    __swift_project_boxed_opaque_existential_0Tm(v173, v24);
    v169 = (*(v25 + 8))(v24, v25);
    v26 = _StringGuts.init(_initialCapacity:)(45);
    v36 = v27;
    v170._countAndFlagsBits = v26;
    v170._object = v27;
    v37 = HIBYTE(v27) & 0xF;
    if ((v27 & 0x2000000000000000) == 0)
    {
      v37 = v26 & 0xFFFFFFFFFFFFLL;
    }

    if (v37 || (v26 & ~v27 & 0x2000000000000000) != 0)
    {
      if ((0x800000018066C240 & 0x2000000000000000 & v27) != 0 && (v38 = specialized _SmallString.init(_:appending:)(v26, v27, 0xD000000000000012, 0x800000018066C240 | 0x8000000000000000), (v40 & 1) == 0))
      {
        v43 = v39;
        v44 = v38;
        v36;
        0x800000018066C240 | 0x8000000000000000;
        v170._countAndFlagsBits = v44;
        v170._object = v43;
      }

      else
      {
        if ((0x800000018066C240 & 0x2000000000000000) != 0)
        {
          v41 = (0x800000018066C240 >> 56) & 0xF;
        }

        else
        {
          v41 = 18;
        }

        _StringGuts.append(_:)(0xD000000000000012, 0x800000018066C240 | 0x8000000000000000, 0, v41, v28, v29, v30, v31, v32, v33, v34, v35);
        0x800000018066C240 | 0x8000000000000000;
      }
    }

    else
    {
      v27;
      v170._countAndFlagsBits = 0xD000000000000012;
      v170._object = (0x800000018066C240 | 0x8000000000000000);
    }

    TypeName = swift_getTypeName(v20, 0);
    if (v46 < 0)
    {
      goto LABEL_101;
    }

    v47 = TypeName;
    v48 = v46;
    v49 = validateUTF8(_:)(TypeName, v46);
    if (v49 < 0)
    {
      v53 = repairUTF8(_:firstKnownBrokenRange:)(v47, v48, v50, v51);
    }

    else
    {
      v53 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v47, v48, v49 & 1, v52);
    }

    countAndFlagsBits = v53;
    v64 = v54;
    object = v170._object;
    v66 = (v170._object >> 56) & 0xF;
    if ((v170._object & 0x2000000000000000) == 0)
    {
      v66 = v170._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v66 || (v170._countAndFlagsBits & ~v170._object & 0x2000000000000000) != 0)
    {
      if ((v170._object & 0x2000000000000000) == 0)
      {
        if ((v54 & 0x2000000000000000) != 0)
        {
          goto LABEL_29;
        }

LABEL_27:
        v67 = v53 & 0xFFFFFFFFFFFFLL;
LABEL_30:
        _StringGuts.append(_:)(countAndFlagsBits, v64, 0, v67, v55, v56, v57, v58, v59, v60, v61, v62);
        v64;
        countAndFlagsBits = v170._countAndFlagsBits;
        v64 = v170._object;
        goto LABEL_31;
      }

      if ((v54 & 0x2000000000000000) == 0)
      {
        goto LABEL_27;
      }

      v68 = specialized _SmallString.init(_:appending:)(v170._countAndFlagsBits, v170._object, v53, v54);
      if (v70)
      {
LABEL_29:
        v67 = HIBYTE(v64) & 0xF;
        goto LABEL_30;
      }

      v159 = v68;
      v160 = v69;
      object;
      v64;
      v170._countAndFlagsBits = v159;
      v170._object = v160;
      v64 = v160;
      countAndFlagsBits = v159;
    }

    else
    {
      v170._object;
      v170._countAndFlagsBits = countAndFlagsBits;
      v170._object = v64;
    }

LABEL_31:
    v79 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" from invalid ", 0xEuLL, 1);
    v80 = HIBYTE(v64) & 0xF;
    if ((v64 & 0x2000000000000000) == 0)
    {
      v80 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v80 || (countAndFlagsBits & ~v64 & 0x2000000000000000) != 0)
    {
      if ((v64 & 0x2000000000000000) == 0)
      {
        if ((v79._object & 0x2000000000000000) != 0)
        {
          goto LABEL_41;
        }

LABEL_39:
        v81 = v79._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
LABEL_42:
        _StringGuts.append(_:)(v79._countAndFlagsBits, v79._object, 0, v81, v71, v72, v73, v74, v75, v76, v77, v78);
        v79._object;
        goto LABEL_43;
      }

      if ((v79._object & 0x2000000000000000) == 0)
      {
        goto LABEL_39;
      }

      v82 = specialized _SmallString.init(_:appending:)(countAndFlagsBits, v64, v79._countAndFlagsBits, v79._object);
      if (v84)
      {
LABEL_41:
        v81 = (v79._object >> 56) & 0xF;
        goto LABEL_42;
      }

      v161 = v82;
      v162 = v83;
      v64;
      v79._object;
      v170._countAndFlagsBits = v161;
      v170._object = v162;
    }

    else
    {
      v64;
      v170 = v79;
    }

LABEL_43:
    v85 = swift_getTypeName(&type metadata for UInt, 0);
    if ((v86 & 0x8000000000000000) == 0)
    {
      v87 = v85;
      v88 = v86;
      v89 = validateUTF8(_:)(v85, v86);
      if (v89 < 0)
      {
        v93 = repairUTF8(_:firstKnownBrokenRange:)(v87, v88, v90, v91);
      }

      else
      {
        v93 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v87, v88, v89 & 1, v92);
      }

      v103 = v94;
      v104 = v170._object;
      v105 = (v170._object >> 56) & 0xF;
      if ((v170._object & 0x2000000000000000) == 0)
      {
        v105 = v170._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      if (v105 || (v170._countAndFlagsBits & ~v170._object & 0x2000000000000000) != 0)
      {
        if ((v170._object & 0x2000000000000000) == 0)
        {
          if ((v94 & 0x2000000000000000) != 0)
          {
            v106 = HIBYTE(v94) & 0xF;
LABEL_56:
            _StringGuts.append(_:)(v93, v103, 0, v106, v95, v96, v97, v98, v99, v100, v101, v102);
            v103;
            v115 = v170._countAndFlagsBits;
            v103 = v170._object;
            goto LABEL_57;
          }

LABEL_55:
          v106 = v93 & 0xFFFFFFFFFFFFLL;
          goto LABEL_56;
        }

        if ((v94 & 0x2000000000000000) == 0)
        {
          goto LABEL_55;
        }

        v122 = v93;
        v123 = specialized _SmallString.init(_:appending:)(v170._countAndFlagsBits, v170._object, v93, v94);
        if (v125)
        {
          v106 = HIBYTE(v103) & 0xF;
          v93 = v122;
          goto LABEL_56;
        }

        v163 = v124;
        v164 = v123;
        v104;
        v103;
        v170._countAndFlagsBits = v164;
        v170._object = v163;
        v103 = v163;
        v115 = v164;
      }

      else
      {
        v126 = v93;
        v170._object;
        v115 = v126;
        v170._countAndFlagsBits = v126;
        v170._object = v103;
      }

LABEL_57:
      v116 = HIBYTE(v103) & 0xF;
      if ((v103 & 0x2000000000000000) == 0)
      {
        v116 = v115 & 0xFFFFFFFFFFFFLL;
      }

      if (v116 || (v115 & ~v103 & 0x2000000000000000) != 0)
      {
        if (v103 & 0x2000000000000000) == 0 || (v117 = specialized _SmallString.init(_:appending:)(v115, v103, 0x2065756C617620uLL, 0xE700000000000000), (v119))
        {
          _StringGuts.append(_:)(0x2065756C617620, 0xE700000000000000, 0, 7, v107, v108, v109, v110, v111, v112, v113, v114);
          0xE700000000000000;
          v121 = v170._countAndFlagsBits;
          v120 = v170._object;
          goto LABEL_73;
        }

        v121 = v117;
        v120 = v118;
        v103;
        0xE700000000000000;
      }

      else
      {
        v121 = 0x2065756C617620;
        v103;
        v120 = 0xE700000000000000;
      }

      v170._countAndFlagsBits = v121;
      v170._object = v120;
LABEL_73:
      v136 = _uint64ToString(_:radix:uppercase:)(v19, 10, 0);
      v127 = v136._countAndFlagsBits;
      v137 = v136._object;
      v138 = HIBYTE(v120) & 0xF;
      if ((v120 & 0x2000000000000000) == 0)
      {
        v138 = v121 & 0xFFFFFFFFFFFFLL;
      }

      if (!v138 && (v121 & ~v120 & 0x2000000000000000) == 0)
      {
        v120;
        v149 = v136._countAndFlagsBits;
        v170 = v136;
        v140 = v169;
        goto LABEL_83;
      }

      if ((v120 & 0x2000000000000000) != 0)
      {
        if ((v136._object & 0x2000000000000000) != 0)
        {
          v156 = specialized _SmallString.init(_:appending:)(v121, v120, v136._countAndFlagsBits, v136._object);
          if ((v158 & 1) == 0)
          {
            v165 = v157;
            v166 = v156;
            v120;
            v136._object;
            v170._countAndFlagsBits = v166;
            v170._object = v165;
            v137 = v165;
            v149 = v166;
            v140 = v169;
            goto LABEL_83;
          }

          v139 = (v136._object >> 56) & 0xF;
          v127 = v136._countAndFlagsBits;
          goto LABEL_82;
        }
      }

      else if ((v136._object & 0x2000000000000000) != 0)
      {
        v139 = (v136._object >> 56) & 0xF;
LABEL_82:
        v140 = v169;
        _StringGuts.append(_:)(v127, v136._object, 0, v139, v128, v129, v130, v131, v132, v133, v134, v135);
        v136._object;
        v149 = v170._countAndFlagsBits;
        v137 = v170._object;
LABEL_83:
        v150 = HIBYTE(v137) & 0xF;
        if ((v137 & 0x2000000000000000) == 0)
        {
          v150 = v149 & 0xFFFFFFFFFFFFLL;
        }

        if (v150 || (v149 & ~v137 & 0x2000000000000000) != 0)
        {
          if ((v137 & 0x2000000000000000) != 0 && (v151 = specialized _SmallString.init(_:appending:)(v149, v137, 0, 0xE000000000000000), (v153 & 1) == 0))
          {
            v154 = v151;
            v155 = v152;
            v137;
            0xE000000000000000;
          }

          else
          {
            _StringGuts.append(_:)(0, 0xE000000000000000, 0, 0, v141, v142, v143, v144, v145, v146, v147, v148);
            0xE000000000000000;
            v154 = v170._countAndFlagsBits;
            v155 = v170._object;
          }
        }

        else
        {
          v137;
          v154 = 0;
          v155 = 0xE000000000000000;
        }

        *v23 = v140;
        *(v23 + 8) = v154;
        *(v23 + 16) = v155;
        *(v23 + 24) = 0;
        *(v23 + 72) = 3;
        swift_willThrow();
        return __swift_destroy_boxed_opaque_existential_1Tm(v173);
      }

      v139 = v136._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      goto LABEL_82;
    }

LABEL_101:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v173);
}

{
  v169 = a4;
  v9 = type metadata accessor for Optional(0, a2, a3, a4);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v167 - v11;
  v14 = a1[3];
  v13 = a1[4];
  v173 = a1;
  __swift_project_boxed_opaque_existential_0Tm(a1, v14);
  (*(v13 + 40))(&v170, v14, v13);
  if (!v5)
  {
    v167 = v9;
    v168 = a5;
    v15 = v169;
    v16 = v10;
    v17 = v171;
    v18 = v172;
    __swift_project_boxed_opaque_existential_0Tm(&v170, v171);
    v19 = (*(v18 + 112))(v17, v18);
    __swift_destroy_boxed_opaque_existential_1Tm(&v170._countAndFlagsBits);
    LOBYTE(v170._countAndFlagsBits) = v19;
    v20 = a2;
    (*(v15 + 16))(&v170, a2, v15);
    v21 = *(a2 - 8);
    if ((*(v21 + 48))(v12, 1, a2) != 1)
    {
      (*(v21 + 32))(v168, v12, a2);
      return __swift_destroy_boxed_opaque_existential_1Tm(v173);
    }

    (*(v16 + 8))(v12, v167);
    swift_allocError(&type metadata for DecodingError, &protocol witness table for DecodingError, 0, 0);
    v23 = v22;
    v24 = v173[3];
    v25 = v173[4];
    __swift_project_boxed_opaque_existential_0Tm(v173, v24);
    v169 = (*(v25 + 8))(v24, v25);
    v26 = _StringGuts.init(_initialCapacity:)(45);
    v36 = v27;
    v170._countAndFlagsBits = v26;
    v170._object = v27;
    v37 = HIBYTE(v27) & 0xF;
    if ((v27 & 0x2000000000000000) == 0)
    {
      v37 = v26 & 0xFFFFFFFFFFFFLL;
    }

    if (v37 || (v26 & ~v27 & 0x2000000000000000) != 0)
    {
      if ((0x800000018066C240 & 0x2000000000000000 & v27) != 0 && (v38 = specialized _SmallString.init(_:appending:)(v26, v27, 0xD000000000000012, 0x800000018066C240 | 0x8000000000000000), (v40 & 1) == 0))
      {
        v43 = v39;
        v44 = v38;
        v36;
        0x800000018066C240 | 0x8000000000000000;
        v170._countAndFlagsBits = v44;
        v170._object = v43;
      }

      else
      {
        if ((0x800000018066C240 & 0x2000000000000000) != 0)
        {
          v41 = (0x800000018066C240 >> 56) & 0xF;
        }

        else
        {
          v41 = 18;
        }

        _StringGuts.append(_:)(0xD000000000000012, 0x800000018066C240 | 0x8000000000000000, 0, v41, v28, v29, v30, v31, v32, v33, v34, v35);
        0x800000018066C240 | 0x8000000000000000;
      }
    }

    else
    {
      v27;
      v170._countAndFlagsBits = 0xD000000000000012;
      v170._object = (0x800000018066C240 | 0x8000000000000000);
    }

    TypeName = swift_getTypeName(v20, 0);
    if (v46 < 0)
    {
      goto LABEL_101;
    }

    v47 = TypeName;
    v48 = v46;
    v49 = validateUTF8(_:)(TypeName, v46);
    if (v49 < 0)
    {
      v53 = repairUTF8(_:firstKnownBrokenRange:)(v47, v48, v50, v51);
    }

    else
    {
      v53 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v47, v48, v49 & 1, v52);
    }

    countAndFlagsBits = v53;
    v64 = v54;
    object = v170._object;
    v66 = (v170._object >> 56) & 0xF;
    if ((v170._object & 0x2000000000000000) == 0)
    {
      v66 = v170._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v66 || (v170._countAndFlagsBits & ~v170._object & 0x2000000000000000) != 0)
    {
      if ((v170._object & 0x2000000000000000) == 0)
      {
        if ((v54 & 0x2000000000000000) != 0)
        {
          goto LABEL_29;
        }

LABEL_27:
        v67 = v53 & 0xFFFFFFFFFFFFLL;
LABEL_30:
        _StringGuts.append(_:)(countAndFlagsBits, v64, 0, v67, v55, v56, v57, v58, v59, v60, v61, v62);
        v64;
        countAndFlagsBits = v170._countAndFlagsBits;
        v64 = v170._object;
        goto LABEL_31;
      }

      if ((v54 & 0x2000000000000000) == 0)
      {
        goto LABEL_27;
      }

      v68 = specialized _SmallString.init(_:appending:)(v170._countAndFlagsBits, v170._object, v53, v54);
      if (v70)
      {
LABEL_29:
        v67 = HIBYTE(v64) & 0xF;
        goto LABEL_30;
      }

      v159 = v68;
      v160 = v69;
      object;
      v64;
      v170._countAndFlagsBits = v159;
      v170._object = v160;
      v64 = v160;
      countAndFlagsBits = v159;
    }

    else
    {
      v170._object;
      v170._countAndFlagsBits = countAndFlagsBits;
      v170._object = v64;
    }

LABEL_31:
    v79 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" from invalid ", 0xEuLL, 1);
    v80 = HIBYTE(v64) & 0xF;
    if ((v64 & 0x2000000000000000) == 0)
    {
      v80 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v80 || (countAndFlagsBits & ~v64 & 0x2000000000000000) != 0)
    {
      if ((v64 & 0x2000000000000000) == 0)
      {
        if ((v79._object & 0x2000000000000000) != 0)
        {
          goto LABEL_41;
        }

LABEL_39:
        v81 = v79._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
LABEL_42:
        _StringGuts.append(_:)(v79._countAndFlagsBits, v79._object, 0, v81, v71, v72, v73, v74, v75, v76, v77, v78);
        v79._object;
        goto LABEL_43;
      }

      if ((v79._object & 0x2000000000000000) == 0)
      {
        goto LABEL_39;
      }

      v82 = specialized _SmallString.init(_:appending:)(countAndFlagsBits, v64, v79._countAndFlagsBits, v79._object);
      if (v84)
      {
LABEL_41:
        v81 = (v79._object >> 56) & 0xF;
        goto LABEL_42;
      }

      v161 = v82;
      v162 = v83;
      v64;
      v79._object;
      v170._countAndFlagsBits = v161;
      v170._object = v162;
    }

    else
    {
      v64;
      v170 = v79;
    }

LABEL_43:
    v85 = swift_getTypeName(&type metadata for UInt8, 0);
    if ((v86 & 0x8000000000000000) == 0)
    {
      v87 = v85;
      v88 = v86;
      v89 = validateUTF8(_:)(v85, v86);
      if (v89 < 0)
      {
        v93 = repairUTF8(_:firstKnownBrokenRange:)(v87, v88, v90, v91);
      }

      else
      {
        v93 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v87, v88, v89 & 1, v92);
      }

      v103 = v94;
      v104 = v170._object;
      v105 = (v170._object >> 56) & 0xF;
      if ((v170._object & 0x2000000000000000) == 0)
      {
        v105 = v170._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      if (v105 || (v170._countAndFlagsBits & ~v170._object & 0x2000000000000000) != 0)
      {
        if ((v170._object & 0x2000000000000000) == 0)
        {
          if ((v94 & 0x2000000000000000) != 0)
          {
            v106 = HIBYTE(v94) & 0xF;
LABEL_56:
            _StringGuts.append(_:)(v93, v103, 0, v106, v95, v96, v97, v98, v99, v100, v101, v102);
            v103;
            v115 = v170._countAndFlagsBits;
            v103 = v170._object;
            goto LABEL_57;
          }

LABEL_55:
          v106 = v93 & 0xFFFFFFFFFFFFLL;
          goto LABEL_56;
        }

        if ((v94 & 0x2000000000000000) == 0)
        {
          goto LABEL_55;
        }

        v122 = v93;
        v123 = specialized _SmallString.init(_:appending:)(v170._countAndFlagsBits, v170._object, v93, v94);
        if (v125)
        {
          v106 = HIBYTE(v103) & 0xF;
          v93 = v122;
          goto LABEL_56;
        }

        v163 = v124;
        v164 = v123;
        v104;
        v103;
        v170._countAndFlagsBits = v164;
        v170._object = v163;
        v103 = v163;
        v115 = v164;
      }

      else
      {
        v126 = v93;
        v170._object;
        v115 = v126;
        v170._countAndFlagsBits = v126;
        v170._object = v103;
      }

LABEL_57:
      v116 = HIBYTE(v103) & 0xF;
      if ((v103 & 0x2000000000000000) == 0)
      {
        v116 = v115 & 0xFFFFFFFFFFFFLL;
      }

      if (v116 || (v115 & ~v103 & 0x2000000000000000) != 0)
      {
        if (v103 & 0x2000000000000000) == 0 || (v117 = specialized _SmallString.init(_:appending:)(v115, v103, 0x2065756C617620uLL, 0xE700000000000000), (v119))
        {
          _StringGuts.append(_:)(0x2065756C617620, 0xE700000000000000, 0, 7, v107, v108, v109, v110, v111, v112, v113, v114);
          0xE700000000000000;
          v121 = v170._countAndFlagsBits;
          v120 = v170._object;
          goto LABEL_73;
        }

        v121 = v117;
        v120 = v118;
        v103;
        0xE700000000000000;
      }

      else
      {
        v121 = 0x2065756C617620;
        v103;
        v120 = 0xE700000000000000;
      }

      v170._countAndFlagsBits = v121;
      v170._object = v120;
LABEL_73:
      v136 = _uint64ToString(_:radix:uppercase:)(v19, 10, 0);
      v127 = v136._countAndFlagsBits;
      v137 = v136._object;
      v138 = HIBYTE(v120) & 0xF;
      if ((v120 & 0x2000000000000000) == 0)
      {
        v138 = v121 & 0xFFFFFFFFFFFFLL;
      }

      if (!v138 && (v121 & ~v120 & 0x2000000000000000) == 0)
      {
        v120;
        v149 = v136._countAndFlagsBits;
        v170 = v136;
        v140 = v169;
        goto LABEL_83;
      }

      if ((v120 & 0x2000000000000000) != 0)
      {
        if ((v136._object & 0x2000000000000000) != 0)
        {
          v156 = specialized _SmallString.init(_:appending:)(v121, v120, v136._countAndFlagsBits, v136._object);
          if ((v158 & 1) == 0)
          {
            v165 = v157;
            v166 = v156;
            v120;
            v136._object;
            v170._countAndFlagsBits = v166;
            v170._object = v165;
            v137 = v165;
            v149 = v166;
            v140 = v169;
            goto LABEL_83;
          }

          v139 = (v136._object >> 56) & 0xF;
          v127 = v136._countAndFlagsBits;
          goto LABEL_82;
        }
      }

      else if ((v136._object & 0x2000000000000000) != 0)
      {
        v139 = (v136._object >> 56) & 0xF;
LABEL_82:
        v140 = v169;
        _StringGuts.append(_:)(v127, v136._object, 0, v139, v128, v129, v130, v131, v132, v133, v134, v135);
        v136._object;
        v149 = v170._countAndFlagsBits;
        v137 = v170._object;
LABEL_83:
        v150 = HIBYTE(v137) & 0xF;
        if ((v137 & 0x2000000000000000) == 0)
        {
          v150 = v149 & 0xFFFFFFFFFFFFLL;
        }

        if (v150 || (v149 & ~v137 & 0x2000000000000000) != 0)
        {
          if ((v137 & 0x2000000000000000) != 0 && (v151 = specialized _SmallString.init(_:appending:)(v149, v137, 0, 0xE000000000000000), (v153 & 1) == 0))
          {
            v154 = v151;
            v155 = v152;
            v137;
            0xE000000000000000;
          }

          else
          {
            _StringGuts.append(_:)(0, 0xE000000000000000, 0, 0, v141, v142, v143, v144, v145, v146, v147, v148);
            0xE000000000000000;
            v154 = v170._countAndFlagsBits;
            v155 = v170._object;
          }
        }

        else
        {
          v137;
          v154 = 0;
          v155 = 0xE000000000000000;
        }

        *v23 = v140;
        *(v23 + 8) = v154;
        *(v23 + 16) = v155;
        *(v23 + 24) = 0;
        *(v23 + 72) = 3;
        swift_willThrow();
        return __swift_destroy_boxed_opaque_existential_1Tm(v173);
      }

      v139 = v136._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      goto LABEL_82;
    }

LABEL_101:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v173);
}

{
  v169 = a4;
  v9 = type metadata accessor for Optional(0, a2, a3, a4);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v167 - v11;
  v14 = a1[3];
  v13 = a1[4];
  v173 = a1;
  __swift_project_boxed_opaque_existential_0Tm(a1, v14);
  (*(v13 + 40))(&v170, v14, v13);
  if (!v5)
  {
    v167 = v9;
    v168 = a5;
    v15 = v169;
    v16 = v10;
    v17 = v171;
    v18 = v172;
    __swift_project_boxed_opaque_existential_0Tm(&v170, v171);
    v19 = (*(v18 + 120))(v17, v18);
    __swift_destroy_boxed_opaque_existential_1Tm(&v170._countAndFlagsBits);
    LOWORD(v170._countAndFlagsBits) = v19;
    v20 = a2;
    (*(v15 + 16))(&v170, a2, v15);
    v21 = *(a2 - 8);
    if ((*(v21 + 48))(v12, 1, a2) != 1)
    {
      (*(v21 + 32))(v168, v12, a2);
      return __swift_destroy_boxed_opaque_existential_1Tm(v173);
    }

    (*(v16 + 8))(v12, v167);
    swift_allocError(&type metadata for DecodingError, &protocol witness table for DecodingError, 0, 0);
    v23 = v22;
    v24 = v173[3];
    v25 = v173[4];
    __swift_project_boxed_opaque_existential_0Tm(v173, v24);
    v169 = (*(v25 + 8))(v24, v25);
    v26 = _StringGuts.init(_initialCapacity:)(45);
    v36 = v27;
    v170._countAndFlagsBits = v26;
    v170._object = v27;
    v37 = HIBYTE(v27) & 0xF;
    if ((v27 & 0x2000000000000000) == 0)
    {
      v37 = v26 & 0xFFFFFFFFFFFFLL;
    }

    if (v37 || (v26 & ~v27 & 0x2000000000000000) != 0)
    {
      if ((0x800000018066C240 & 0x2000000000000000 & v27) != 0 && (v38 = specialized _SmallString.init(_:appending:)(v26, v27, 0xD000000000000012, 0x800000018066C240 | 0x8000000000000000), (v40 & 1) == 0))
      {
        v43 = v39;
        v44 = v38;
        v36;
        0x800000018066C240 | 0x8000000000000000;
        v170._countAndFlagsBits = v44;
        v170._object = v43;
      }

      else
      {
        if ((0x800000018066C240 & 0x2000000000000000) != 0)
        {
          v41 = (0x800000018066C240 >> 56) & 0xF;
        }

        else
        {
          v41 = 18;
        }

        _StringGuts.append(_:)(0xD000000000000012, 0x800000018066C240 | 0x8000000000000000, 0, v41, v28, v29, v30, v31, v32, v33, v34, v35);
        0x800000018066C240 | 0x8000000000000000;
      }
    }

    else
    {
      v27;
      v170._countAndFlagsBits = 0xD000000000000012;
      v170._object = (0x800000018066C240 | 0x8000000000000000);
    }

    TypeName = swift_getTypeName(v20, 0);
    if (v46 < 0)
    {
      goto LABEL_101;
    }

    v47 = TypeName;
    v48 = v46;
    v49 = validateUTF8(_:)(TypeName, v46);
    if (v49 < 0)
    {
      v53 = repairUTF8(_:firstKnownBrokenRange:)(v47, v48, v50, v51);
    }

    else
    {
      v53 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v47, v48, v49 & 1, v52);
    }

    countAndFlagsBits = v53;
    v64 = v54;
    object = v170._object;
    v66 = (v170._object >> 56) & 0xF;
    if ((v170._object & 0x2000000000000000) == 0)
    {
      v66 = v170._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v66 || (v170._countAndFlagsBits & ~v170._object & 0x2000000000000000) != 0)
    {
      if ((v170._object & 0x2000000000000000) == 0)
      {
        if ((v54 & 0x2000000000000000) != 0)
        {
          goto LABEL_29;
        }

LABEL_27:
        v67 = v53 & 0xFFFFFFFFFFFFLL;
LABEL_30:
        _StringGuts.append(_:)(countAndFlagsBits, v64, 0, v67, v55, v56, v57, v58, v59, v60, v61, v62);
        v64;
        countAndFlagsBits = v170._countAndFlagsBits;
        v64 = v170._object;
        goto LABEL_31;
      }

      if ((v54 & 0x2000000000000000) == 0)
      {
        goto LABEL_27;
      }

      v68 = specialized _SmallString.init(_:appending:)(v170._countAndFlagsBits, v170._object, v53, v54);
      if (v70)
      {
LABEL_29:
        v67 = HIBYTE(v64) & 0xF;
        goto LABEL_30;
      }

      v159 = v68;
      v160 = v69;
      object;
      v64;
      v170._countAndFlagsBits = v159;
      v170._object = v160;
      v64 = v160;
      countAndFlagsBits = v159;
    }

    else
    {
      v170._object;
      v170._countAndFlagsBits = countAndFlagsBits;
      v170._object = v64;
    }

LABEL_31:
    v79 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" from invalid ", 0xEuLL, 1);
    v80 = HIBYTE(v64) & 0xF;
    if ((v64 & 0x2000000000000000) == 0)
    {
      v80 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v80 || (countAndFlagsBits & ~v64 & 0x2000000000000000) != 0)
    {
      if ((v64 & 0x2000000000000000) == 0)
      {
        if ((v79._object & 0x2000000000000000) != 0)
        {
          goto LABEL_41;
        }

LABEL_39:
        v81 = v79._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
LABEL_42:
        _StringGuts.append(_:)(v79._countAndFlagsBits, v79._object, 0, v81, v71, v72, v73, v74, v75, v76, v77, v78);
        v79._object;
        goto LABEL_43;
      }

      if ((v79._object & 0x2000000000000000) == 0)
      {
        goto LABEL_39;
      }

      v82 = specialized _SmallString.init(_:appending:)(countAndFlagsBits, v64, v79._countAndFlagsBits, v79._object);
      if (v84)
      {
LABEL_41:
        v81 = (v79._object >> 56) & 0xF;
        goto LABEL_42;
      }

      v161 = v82;
      v162 = v83;
      v64;
      v79._object;
      v170._countAndFlagsBits = v161;
      v170._object = v162;
    }

    else
    {
      v64;
      v170 = v79;
    }

LABEL_43:
    v85 = swift_getTypeName(&type metadata for UInt16, 0);
    if ((v86 & 0x8000000000000000) == 0)
    {
      v87 = v85;
      v88 = v86;
      v89 = validateUTF8(_:)(v85, v86);
      if (v89 < 0)
      {
        v93 = repairUTF8(_:firstKnownBrokenRange:)(v87, v88, v90, v91);
      }

      else
      {
        v93 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v87, v88, v89 & 1, v92);
      }

      v103 = v94;
      v104 = v170._object;
      v105 = (v170._object >> 56) & 0xF;
      if ((v170._object & 0x2000000000000000) == 0)
      {
        v105 = v170._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      if (v105 || (v170._countAndFlagsBits & ~v170._object & 0x2000000000000000) != 0)
      {
        if ((v170._object & 0x2000000000000000) == 0)
        {
          if ((v94 & 0x2000000000000000) != 0)
          {
            v106 = HIBYTE(v94) & 0xF;
LABEL_56:
            _StringGuts.append(_:)(v93, v103, 0, v106, v95, v96, v97, v98, v99, v100, v101, v102);
            v103;
            v115 = v170._countAndFlagsBits;
            v103 = v170._object;
            goto LABEL_57;
          }

LABEL_55:
          v106 = v93 & 0xFFFFFFFFFFFFLL;
          goto LABEL_56;
        }

        if ((v94 & 0x2000000000000000) == 0)
        {
          goto LABEL_55;
        }

        v122 = v93;
        v123 = specialized _SmallString.init(_:appending:)(v170._countAndFlagsBits, v170._object, v93, v94);
        if (v125)
        {
          v106 = HIBYTE(v103) & 0xF;
          v93 = v122;
          goto LABEL_56;
        }

        v163 = v124;
        v164 = v123;
        v104;
        v103;
        v170._countAndFlagsBits = v164;
        v170._object = v163;
        v103 = v163;
        v115 = v164;
      }

      else
      {
        v126 = v93;
        v170._object;
        v115 = v126;
        v170._countAndFlagsBits = v126;
        v170._object = v103;
      }

LABEL_57:
      v116 = HIBYTE(v103) & 0xF;
      if ((v103 & 0x2000000000000000) == 0)
      {
        v116 = v115 & 0xFFFFFFFFFFFFLL;
      }

      if (v116 || (v115 & ~v103 & 0x2000000000000000) != 0)
      {
        if (v103 & 0x2000000000000000) == 0 || (v117 = specialized _SmallString.init(_:appending:)(v115, v103, 0x2065756C617620uLL, 0xE700000000000000), (v119))
        {
          _StringGuts.append(_:)(0x2065756C617620, 0xE700000000000000, 0, 7, v107, v108, v109, v110, v111, v112, v113, v114);
          0xE700000000000000;
          v121 = v170._countAndFlagsBits;
          v120 = v170._object;
          goto LABEL_73;
        }

        v121 = v117;
        v120 = v118;
        v103;
        0xE700000000000000;
      }

      else
      {
        v121 = 0x2065756C617620;
        v103;
        v120 = 0xE700000000000000;
      }

      v170._countAndFlagsBits = v121;
      v170._object = v120;
LABEL_73:
      v136 = _uint64ToString(_:radix:uppercase:)(v19, 10, 0);
      v127 = v136._countAndFlagsBits;
      v137 = v136._object;
      v138 = HIBYTE(v120) & 0xF;
      if ((v120 & 0x2000000000000000) == 0)
      {
        v138 = v121 & 0xFFFFFFFFFFFFLL;
      }

      if (!v138 && (v121 & ~v120 & 0x2000000000000000) == 0)
      {
        v120;
        v149 = v136._countAndFlagsBits;
        v170 = v136;
        v140 = v169;
        goto LABEL_83;
      }

      if ((v120 & 0x2000000000000000) != 0)
      {
        if ((v136._object & 0x2000000000000000) != 0)
        {
          v156 = specialized _SmallString.init(_:appending:)(v121, v120, v136._countAndFlagsBits, v136._object);
          if ((v158 & 1) == 0)
          {
            v165 = v157;
            v166 = v156;
            v120;
            v136._object;
            v170._countAndFlagsBits = v166;
            v170._object = v165;
            v137 = v165;
            v149 = v166;
            v140 = v169;
            goto LABEL_83;
          }

          v139 = (v136._object >> 56) & 0xF;
          v127 = v136._countAndFlagsBits;
          goto LABEL_82;
        }
      }

      else if ((v136._object & 0x2000000000000000) != 0)
      {
        v139 = (v136._object >> 56) & 0xF;
LABEL_82:
        v140 = v169;
        _StringGuts.append(_:)(v127, v136._object, 0, v139, v128, v129, v130, v131, v132, v133, v134, v135);
        v136._object;
        v149 = v170._countAndFlagsBits;
        v137 = v170._object;
LABEL_83:
        v150 = HIBYTE(v137) & 0xF;
        if ((v137 & 0x2000000000000000) == 0)
        {
          v150 = v149 & 0xFFFFFFFFFFFFLL;
        }

        if (v150 || (v149 & ~v137 & 0x2000000000000000) != 0)
        {
          if ((v137 & 0x2000000000000000) != 0 && (v151 = specialized _SmallString.init(_:appending:)(v149, v137, 0, 0xE000000000000000), (v153 & 1) == 0))
          {
            v154 = v151;
            v155 = v152;
            v137;
            0xE000000000000000;
          }

          else
          {
            _StringGuts.append(_:)(0, 0xE000000000000000, 0, 0, v141, v142, v143, v144, v145, v146, v147, v148);
            0xE000000000000000;
            v154 = v170._countAndFlagsBits;
            v155 = v170._object;
          }
        }

        else
        {
          v137;
          v154 = 0;
          v155 = 0xE000000000000000;
        }

        *v23 = v140;
        *(v23 + 8) = v154;
        *(v23 + 16) = v155;
        *(v23 + 24) = 0;
        *(v23 + 72) = 3;
        swift_willThrow();
        return __swift_destroy_boxed_opaque_existential_1Tm(v173);
      }

      v139 = v136._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      goto LABEL_82;
    }

LABEL_101:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v173);
}

{
  v169 = a4;
  v9 = type metadata accessor for Optional(0, a2, a3, a4);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v167 - v11;
  v14 = a1[3];
  v13 = a1[4];
  v173 = a1;
  __swift_project_boxed_opaque_existential_0Tm(a1, v14);
  (*(v13 + 40))(&v170, v14, v13);
  if (!v5)
  {
    v167 = v9;
    v168 = a5;
    v15 = v169;
    v16 = v10;
    v17 = v171;
    v18 = v172;
    __swift_project_boxed_opaque_existential_0Tm(&v170, v171);
    v19 = (*(v18 + 128))(v17, v18);
    __swift_destroy_boxed_opaque_existential_1Tm(&v170._countAndFlagsBits);
    LODWORD(v170._countAndFlagsBits) = v19;
    v20 = a2;
    (*(v15 + 16))(&v170, a2, v15);
    v21 = *(a2 - 8);
    if ((*(v21 + 48))(v12, 1, a2) != 1)
    {
      (*(v21 + 32))(v168, v12, a2);
      return __swift_destroy_boxed_opaque_existential_1Tm(v173);
    }

    (*(v16 + 8))(v12, v167);
    swift_allocError(&type metadata for DecodingError, &protocol witness table for DecodingError, 0, 0);
    v23 = v22;
    v24 = v173[3];
    v25 = v173[4];
    __swift_project_boxed_opaque_existential_0Tm(v173, v24);
    v169 = (*(v25 + 8))(v24, v25);
    v26 = _StringGuts.init(_initialCapacity:)(45);
    v36 = v27;
    v170._countAndFlagsBits = v26;
    v170._object = v27;
    v37 = HIBYTE(v27) & 0xF;
    if ((v27 & 0x2000000000000000) == 0)
    {
      v37 = v26 & 0xFFFFFFFFFFFFLL;
    }

    if (v37 || (v26 & ~v27 & 0x2000000000000000) != 0)
    {
      if ((0x800000018066C240 & 0x2000000000000000 & v27) != 0 && (v38 = specialized _SmallString.init(_:appending:)(v26, v27, 0xD000000000000012, 0x800000018066C240 | 0x8000000000000000), (v40 & 1) == 0))
      {
        v43 = v39;
        v44 = v38;
        v36;
        0x800000018066C240 | 0x8000000000000000;
        v170._countAndFlagsBits = v44;
        v170._object = v43;
      }

      else
      {
        if ((0x800000018066C240 & 0x2000000000000000) != 0)
        {
          v41 = (0x800000018066C240 >> 56) & 0xF;
        }

        else
        {
          v41 = 18;
        }

        _StringGuts.append(_:)(0xD000000000000012, 0x800000018066C240 | 0x8000000000000000, 0, v41, v28, v29, v30, v31, v32, v33, v34, v35);
        0x800000018066C240 | 0x8000000000000000;
      }
    }

    else
    {
      v27;
      v170._countAndFlagsBits = 0xD000000000000012;
      v170._object = (0x800000018066C240 | 0x8000000000000000);
    }

    TypeName = swift_getTypeName(v20, 0);
    if (v46 < 0)
    {
      goto LABEL_101;
    }

    v47 = TypeName;
    v48 = v46;
    v49 = validateUTF8(_:)(TypeName, v46);
    if (v49 < 0)
    {
      v53 = repairUTF8(_:firstKnownBrokenRange:)(v47, v48, v50, v51);
    }

    else
    {
      v53 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v47, v48, v49 & 1, v52);
    }

    countAndFlagsBits = v53;
    v64 = v54;
    object = v170._object;
    v66 = (v170._object >> 56) & 0xF;
    if ((v170._object & 0x2000000000000000) == 0)
    {
      v66 = v170._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v66 || (v170._countAndFlagsBits & ~v170._object & 0x2000000000000000) != 0)
    {
      if ((v170._object & 0x2000000000000000) == 0)
      {
        if ((v54 & 0x2000000000000000) != 0)
        {
          goto LABEL_29;
        }

LABEL_27:
        v67 = v53 & 0xFFFFFFFFFFFFLL;
LABEL_30:
        _StringGuts.append(_:)(countAndFlagsBits, v64, 0, v67, v55, v56, v57, v58, v59, v60, v61, v62);
        v64;
        countAndFlagsBits = v170._countAndFlagsBits;
        v64 = v170._object;
        goto LABEL_31;
      }

      if ((v54 & 0x2000000000000000) == 0)
      {
        goto LABEL_27;
      }

      v68 = specialized _SmallString.init(_:appending:)(v170._countAndFlagsBits, v170._object, v53, v54);
      if (v70)
      {
LABEL_29:
        v67 = HIBYTE(v64) & 0xF;
        goto LABEL_30;
      }

      v159 = v68;
      v160 = v69;
      object;
      v64;
      v170._countAndFlagsBits = v159;
      v170._object = v160;
      v64 = v160;
      countAndFlagsBits = v159;
    }

    else
    {
      v170._object;
      v170._countAndFlagsBits = countAndFlagsBits;
      v170._object = v64;
    }

LABEL_31:
    v79 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" from invalid ", 0xEuLL, 1);
    v80 = HIBYTE(v64) & 0xF;
    if ((v64 & 0x2000000000000000) == 0)
    {
      v80 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v80 || (countAndFlagsBits & ~v64 & 0x2000000000000000) != 0)
    {
      if ((v64 & 0x2000000000000000) == 0)
      {
        if ((v79._object & 0x2000000000000000) != 0)
        {
          goto LABEL_41;
        }

LABEL_39:
        v81 = v79._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
LABEL_42:
        _StringGuts.append(_:)(v79._countAndFlagsBits, v79._object, 0, v81, v71, v72, v73, v74, v75, v76, v77, v78);
        v79._object;
        goto LABEL_43;
      }

      if ((v79._object & 0x2000000000000000) == 0)
      {
        goto LABEL_39;
      }

      v82 = specialized _SmallString.init(_:appending:)(countAndFlagsBits, v64, v79._countAndFlagsBits, v79._object);
      if (v84)
      {
LABEL_41:
        v81 = (v79._object >> 56) & 0xF;
        goto LABEL_42;
      }

      v161 = v82;
      v162 = v83;
      v64;
      v79._object;
      v170._countAndFlagsBits = v161;
      v170._object = v162;
    }

    else
    {
      v64;
      v170 = v79;
    }

LABEL_43:
    v85 = swift_getTypeName(&type metadata for UInt32, 0);
    if ((v86 & 0x8000000000000000) == 0)
    {
      v87 = v85;
      v88 = v86;
      v89 = validateUTF8(_:)(v85, v86);
      if (v89 < 0)
      {
        v93 = repairUTF8(_:firstKnownBrokenRange:)(v87, v88, v90, v91);
      }

      else
      {
        v93 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v87, v88, v89 & 1, v92);
      }

      v103 = v94;
      v104 = v170._object;
      v105 = (v170._object >> 56) & 0xF;
      if ((v170._object & 0x2000000000000000) == 0)
      {
        v105 = v170._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      if (v105 || (v170._countAndFlagsBits & ~v170._object & 0x2000000000000000) != 0)
      {
        if ((v170._object & 0x2000000000000000) == 0)
        {
          if ((v94 & 0x2000000000000000) != 0)
          {
            v106 = HIBYTE(v94) & 0xF;
LABEL_56:
            _StringGuts.append(_:)(v93, v103, 0, v106, v95, v96, v97, v98, v99, v100, v101, v102);
            v103;
            v115 = v170._countAndFlagsBits;
            v103 = v170._object;
            goto LABEL_57;
          }

LABEL_55:
          v106 = v93 & 0xFFFFFFFFFFFFLL;
          goto LABEL_56;
        }

        if ((v94 & 0x2000000000000000) == 0)
        {
          goto LABEL_55;
        }

        v122 = v93;
        v123 = specialized _SmallString.init(_:appending:)(v170._countAndFlagsBits, v170._object, v93, v94);
        if (v125)
        {
          v106 = HIBYTE(v103) & 0xF;
          v93 = v122;
          goto LABEL_56;
        }

        v163 = v124;
        v164 = v123;
        v104;
        v103;
        v170._countAndFlagsBits = v164;
        v170._object = v163;
        v103 = v163;
        v115 = v164;
      }

      else
      {
        v126 = v93;
        v170._object;
        v115 = v126;
        v170._countAndFlagsBits = v126;
        v170._object = v103;
      }

LABEL_57:
      v116 = HIBYTE(v103) & 0xF;
      if ((v103 & 0x2000000000000000) == 0)
      {
        v116 = v115 & 0xFFFFFFFFFFFFLL;
      }

      if (v116 || (v115 & ~v103 & 0x2000000000000000) != 0)
      {
        if (v103 & 0x2000000000000000) == 0 || (v117 = specialized _SmallString.init(_:appending:)(v115, v103, 0x2065756C617620uLL, 0xE700000000000000), (v119))
        {
          _StringGuts.append(_:)(0x2065756C617620, 0xE700000000000000, 0, 7, v107, v108, v109, v110, v111, v112, v113, v114);
          0xE700000000000000;
          v121 = v170._countAndFlagsBits;
          v120 = v170._object;
          goto LABEL_73;
        }

        v121 = v117;
        v120 = v118;
        v103;
        0xE700000000000000;
      }

      else
      {
        v121 = 0x2065756C617620;
        v103;
        v120 = 0xE700000000000000;
      }

      v170._countAndFlagsBits = v121;
      v170._object = v120;
LABEL_73:
      v136 = _uint64ToString(_:radix:uppercase:)(v19, 10, 0);
      v127 = v136._countAndFlagsBits;
      v137 = v136._object;
      v138 = HIBYTE(v120) & 0xF;
      if ((v120 & 0x2000000000000000) == 0)
      {
        v138 = v121 & 0xFFFFFFFFFFFFLL;
      }

      if (!v138 && (v121 & ~v120 & 0x2000000000000000) == 0)
      {
        v120;
        v149 = v136._countAndFlagsBits;
        v170 = v136;
        v140 = v169;
        goto LABEL_83;
      }

      if ((v120 & 0x2000000000000000) != 0)
      {
        if ((v136._object & 0x2000000000000000) != 0)
        {
          v156 = specialized _SmallString.init(_:appending:)(v121, v120, v136._countAndFlagsBits, v136._object);
          if ((v158 & 1) == 0)
          {
            v165 = v157;
            v166 = v156;
            v120;
            v136._object;
            v170._countAndFlagsBits = v166;
            v170._object = v165;
            v137 = v165;
            v149 = v166;
            v140 = v169;
            goto LABEL_83;
          }

          v139 = (v136._object >> 56) & 0xF;
          v127 = v136._countAndFlagsBits;
          goto LABEL_82;
        }
      }

      else if ((v136._object & 0x2000000000000000) != 0)
      {
        v139 = (v136._object >> 56) & 0xF;
LABEL_82:
        v140 = v169;
        _StringGuts.append(_:)(v127, v136._object, 0, v139, v128, v129, v130, v131, v132, v133, v134, v135);
        v136._object;
        v149 = v170._countAndFlagsBits;
        v137 = v170._object;
LABEL_83:
        v150 = HIBYTE(v137) & 0xF;
        if ((v137 & 0x2000000000000000) == 0)
        {
          v150 = v149 & 0xFFFFFFFFFFFFLL;
        }

        if (v150 || (v149 & ~v137 & 0x2000000000000000) != 0)
        {
          if ((v137 & 0x2000000000000000) != 0 && (v151 = specialized _SmallString.init(_:appending:)(v149, v137, 0, 0xE000000000000000), (v153 & 1) == 0))
          {
            v154 = v151;
            v155 = v152;
            v137;
            0xE000000000000000;
          }

          else
          {
            _StringGuts.append(_:)(0, 0xE000000000000000, 0, 0, v141, v142, v143, v144, v145, v146, v147, v148);
            0xE000000000000000;
            v154 = v170._countAndFlagsBits;
            v155 = v170._object;
          }
        }

        else
        {
          v137;
          v154 = 0;
          v155 = 0xE000000000000000;
        }

        *v23 = v140;
        *(v23 + 8) = v154;
        *(v23 + 16) = v155;
        *(v23 + 24) = 0;
        *(v23 + 72) = 3;
        swift_willThrow();
        return __swift_destroy_boxed_opaque_existential_1Tm(v173);
      }

      v139 = v136._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      goto LABEL_82;
    }

LABEL_101:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v173);
}

{
  v169 = a4;
  v9 = type metadata accessor for Optional(0, a2, a3, a4);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v167 - v11;
  v14 = a1[3];
  v13 = a1[4];
  v173 = a1;
  __swift_project_boxed_opaque_existential_0Tm(a1, v14);
  (*(v13 + 40))(&v170, v14, v13);
  if (!v5)
  {
    v167 = v9;
    v168 = a5;
    v15 = v169;
    v16 = v10;
    v17 = v171;
    v18 = v172;
    __swift_project_boxed_opaque_existential_0Tm(&v170, v171);
    v19 = (*(v18 + 136))(v17, v18);
    __swift_destroy_boxed_opaque_existential_1Tm(&v170._countAndFlagsBits);
    v170._countAndFlagsBits = v19;
    v20 = a2;
    (*(v15 + 16))(&v170, a2, v15);
    v21 = *(a2 - 8);
    if ((*(v21 + 48))(v12, 1, a2) != 1)
    {
      (*(v21 + 32))(v168, v12, a2);
      return __swift_destroy_boxed_opaque_existential_1Tm(v173);
    }

    (*(v16 + 8))(v12, v167);
    swift_allocError(&type metadata for DecodingError, &protocol witness table for DecodingError, 0, 0);
    v23 = v22;
    v24 = v173[3];
    v25 = v173[4];
    __swift_project_boxed_opaque_existential_0Tm(v173, v24);
    v169 = (*(v25 + 8))(v24, v25);
    v26 = _StringGuts.init(_initialCapacity:)(45);
    v36 = v27;
    v170._countAndFlagsBits = v26;
    v170._object = v27;
    v37 = HIBYTE(v27) & 0xF;
    if ((v27 & 0x2000000000000000) == 0)
    {
      v37 = v26 & 0xFFFFFFFFFFFFLL;
    }

    if (v37 || (v26 & ~v27 & 0x2000000000000000) != 0)
    {
      if ((0x800000018066C240 & 0x2000000000000000 & v27) != 0 && (v38 = specialized _SmallString.init(_:appending:)(v26, v27, 0xD000000000000012, 0x800000018066C240 | 0x8000000000000000), (v40 & 1) == 0))
      {
        v43 = v39;
        v44 = v38;
        v36;
        0x800000018066C240 | 0x8000000000000000;
        v170._countAndFlagsBits = v44;
        v170._object = v43;
      }

      else
      {
        if ((0x800000018066C240 & 0x2000000000000000) != 0)
        {
          v41 = (0x800000018066C240 >> 56) & 0xF;
        }

        else
        {
          v41 = 18;
        }

        _StringGuts.append(_:)(0xD000000000000012, 0x800000018066C240 | 0x8000000000000000, 0, v41, v28, v29, v30, v31, v32, v33, v34, v35);
        0x800000018066C240 | 0x8000000000000000;
      }
    }

    else
    {
      v27;
      v170._countAndFlagsBits = 0xD000000000000012;
      v170._object = (0x800000018066C240 | 0x8000000000000000);
    }

    TypeName = swift_getTypeName(v20, 0);
    if (v46 < 0)
    {
      goto LABEL_101;
    }

    v47 = TypeName;
    v48 = v46;
    v49 = validateUTF8(_:)(TypeName, v46);
    if (v49 < 0)
    {
      v53 = repairUTF8(_:firstKnownBrokenRange:)(v47, v48, v50, v51);
    }

    else
    {
      v53 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v47, v48, v49 & 1, v52);
    }

    countAndFlagsBits = v53;
    v64 = v54;
    object = v170._object;
    v66 = (v170._object >> 56) & 0xF;
    if ((v170._object & 0x2000000000000000) == 0)
    {
      v66 = v170._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v66 || (v170._countAndFlagsBits & ~v170._object & 0x2000000000000000) != 0)
    {
      if ((v170._object & 0x2000000000000000) == 0)
      {
        if ((v54 & 0x2000000000000000) != 0)
        {
          goto LABEL_29;
        }

LABEL_27:
        v67 = v53 & 0xFFFFFFFFFFFFLL;
LABEL_30:
        _StringGuts.append(_:)(countAndFlagsBits, v64, 0, v67, v55, v56, v57, v58, v59, v60, v61, v62);
        v64;
        countAndFlagsBits = v170._countAndFlagsBits;
        v64 = v170._object;
        goto LABEL_31;
      }

      if ((v54 & 0x2000000000000000) == 0)
      {
        goto LABEL_27;
      }

      v68 = specialized _SmallString.init(_:appending:)(v170._countAndFlagsBits, v170._object, v53, v54);
      if (v70)
      {
LABEL_29:
        v67 = HIBYTE(v64) & 0xF;
        goto LABEL_30;
      }

      v159 = v68;
      v160 = v69;
      object;
      v64;
      v170._countAndFlagsBits = v159;
      v170._object = v160;
      v64 = v160;
      countAndFlagsBits = v159;
    }

    else
    {
      v170._object;
      v170._countAndFlagsBits = countAndFlagsBits;
      v170._object = v64;
    }

LABEL_31:
    v79 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" from invalid ", 0xEuLL, 1);
    v80 = HIBYTE(v64) & 0xF;
    if ((v64 & 0x2000000000000000) == 0)
    {
      v80 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v80 || (countAndFlagsBits & ~v64 & 0x2000000000000000) != 0)
    {
      if ((v64 & 0x2000000000000000) == 0)
      {
        if ((v79._object & 0x2000000000000000) != 0)
        {
          goto LABEL_41;
        }

LABEL_39:
        v81 = v79._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
LABEL_42:
        _StringGuts.append(_:)(v79._countAndFlagsBits, v79._object, 0, v81, v71, v72, v73, v74, v75, v76, v77, v78);
        v79._object;
        goto LABEL_43;
      }

      if ((v79._object & 0x2000000000000000) == 0)
      {
        goto LABEL_39;
      }

      v82 = specialized _SmallString.init(_:appending:)(countAndFlagsBits, v64, v79._countAndFlagsBits, v79._object);
      if (v84)
      {
LABEL_41:
        v81 = (v79._object >> 56) & 0xF;
        goto LABEL_42;
      }

      v161 = v82;
      v162 = v83;
      v64;
      v79._object;
      v170._countAndFlagsBits = v161;
      v170._object = v162;
    }

    else
    {
      v64;
      v170 = v79;
    }

LABEL_43:
    v85 = swift_getTypeName(&type metadata for UInt64, 0);
    if ((v86 & 0x8000000000000000) == 0)
    {
      v87 = v85;
      v88 = v86;
      v89 = validateUTF8(_:)(v85, v86);
      if (v89 < 0)
      {
        v93 = repairUTF8(_:firstKnownBrokenRange:)(v87, v88, v90, v91);
      }

      else
      {
        v93 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v87, v88, v89 & 1, v92);
      }

      v103 = v94;
      v104 = v170._object;
      v105 = (v170._object >> 56) & 0xF;
      if ((v170._object & 0x2000000000000000) == 0)
      {
        v105 = v170._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      if (v105 || (v170._countAndFlagsBits & ~v170._object & 0x2000000000000000) != 0)
      {
        if ((v170._object & 0x2000000000000000) == 0)
        {
          if ((v94 & 0x2000000000000000) != 0)
          {
            v106 = HIBYTE(v94) & 0xF;
LABEL_56:
            _StringGuts.append(_:)(v93, v103, 0, v106, v95, v96, v97, v98, v99, v100, v101, v102);
            v103;
            v115 = v170._countAndFlagsBits;
            v103 = v170._object;
            goto LABEL_57;
          }

LABEL_55:
          v106 = v93 & 0xFFFFFFFFFFFFLL;
          goto LABEL_56;
        }

        if ((v94 & 0x2000000000000000) == 0)
        {
          goto LABEL_55;
        }

        v122 = v93;
        v123 = specialized _SmallString.init(_:appending:)(v170._countAndFlagsBits, v170._object, v93, v94);
        if (v125)
        {
          v106 = HIBYTE(v103) & 0xF;
          v93 = v122;
          goto LABEL_56;
        }

        v163 = v124;
        v164 = v123;
        v104;
        v103;
        v170._countAndFlagsBits = v164;
        v170._object = v163;
        v103 = v163;
        v115 = v164;
      }

      else
      {
        v126 = v93;
        v170._object;
        v115 = v126;
        v170._countAndFlagsBits = v126;
        v170._object = v103;
      }

LABEL_57:
      v116 = HIBYTE(v103) & 0xF;
      if ((v103 & 0x2000000000000000) == 0)
      {
        v116 = v115 & 0xFFFFFFFFFFFFLL;
      }

      if (v116 || (v115 & ~v103 & 0x2000000000000000) != 0)
      {
        if (v103 & 0x2000000000000000) == 0 || (v117 = specialized _SmallString.init(_:appending:)(v115, v103, 0x2065756C617620uLL, 0xE700000000000000), (v119))
        {
          _StringGuts.append(_:)(0x2065756C617620, 0xE700000000000000, 0, 7, v107, v108, v109, v110, v111, v112, v113, v114);
          0xE700000000000000;
          v121 = v170._countAndFlagsBits;
          v120 = v170._object;
          goto LABEL_73;
        }

        v121 = v117;
        v120 = v118;
        v103;
        0xE700000000000000;
      }

      else
      {
        v121 = 0x2065756C617620;
        v103;
        v120 = 0xE700000000000000;
      }

      v170._countAndFlagsBits = v121;
      v170._object = v120;
LABEL_73:
      v136 = _uint64ToString(_:radix:uppercase:)(v19, 10, 0);
      v127 = v136._countAndFlagsBits;
      v137 = v136._object;
      v138 = HIBYTE(v120) & 0xF;
      if ((v120 & 0x2000000000000000) == 0)
      {
        v138 = v121 & 0xFFFFFFFFFFFFLL;
      }

      if (!v138 && (v121 & ~v120 & 0x2000000000000000) == 0)
      {
        v120;
        v149 = v136._countAndFlagsBits;
        v170 = v136;
        v140 = v169;
        goto LABEL_83;
      }

      if ((v120 & 0x2000000000000000) != 0)
      {
        if ((v136._object & 0x2000000000000000) != 0)
        {
          v156 = specialized _SmallString.init(_:appending:)(v121, v120, v136._countAndFlagsBits, v136._object);
          if ((v158 & 1) == 0)
          {
            v165 = v157;
            v166 = v156;
            v120;
            v136._object;
            v170._countAndFlagsBits = v166;
            v170._object = v165;
            v137 = v165;
            v149 = v166;
            v140 = v169;
            goto LABEL_83;
          }

          v139 = (v136._object >> 56) & 0xF;
          v127 = v136._countAndFlagsBits;
          goto LABEL_82;
        }
      }

      else if ((v136._object & 0x2000000000000000) != 0)
      {
        v139 = (v136._object >> 56) & 0xF;
LABEL_82:
        v140 = v169;
        _StringGuts.append(_:)(v127, v136._object, 0, v139, v128, v129, v130, v131, v132, v133, v134, v135);
        v136._object;
        v149 = v170._countAndFlagsBits;
        v137 = v170._object;
LABEL_83:
        v150 = HIBYTE(v137) & 0xF;
        if ((v137 & 0x2000000000000000) == 0)
        {
          v150 = v149 & 0xFFFFFFFFFFFFLL;
        }

        if (v150 || (v149 & ~v137 & 0x2000000000000000) != 0)
        {
          if ((v137 & 0x2000000000000000) != 0 && (v151 = specialized _SmallString.init(_:appending:)(v149, v137, 0, 0xE000000000000000), (v153 & 1) == 0))
          {
            v154 = v151;
            v155 = v152;
            v137;
            0xE000000000000000;
          }

          else
          {
            _StringGuts.append(_:)(0, 0xE000000000000000, 0, 0, v141, v142, v143, v144, v145, v146, v147, v148);
            0xE000000000000000;
            v154 = v170._countAndFlagsBits;
            v155 = v170._object;
          }
        }

        else
        {
          v137;
          v154 = 0;
          v155 = 0xE000000000000000;
        }

        *v23 = v140;
        *(v23 + 8) = v154;
        *(v23 + 16) = v155;
        *(v23 + 24) = 0;
        *(v23 + 72) = 3;
        swift_willThrow();
        return __swift_destroy_boxed_opaque_existential_1Tm(v173);
      }

      v139 = v136._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      goto LABEL_82;
    }

LABEL_101:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v173);
}