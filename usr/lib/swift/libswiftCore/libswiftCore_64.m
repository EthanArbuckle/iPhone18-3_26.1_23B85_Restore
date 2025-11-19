int64_t specialized static __StringStorage.create(uninitializedCodeUnitCapacity:initializingUncheckedUTF8With:)(unint64_t a1, int8x16_t *a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = _allocateStringStorage(codeUnitCapacity:)(a1);
  *(v9 + 16) = v10;
  *(v9 + 24) = 0x3000000000000000;
  if (v10 < 0)
  {
    *__StringStorage._breadcrumbsAddress.getter() = 0;
    v11 = *(v9 + 24) & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = 0;
  }

  *(v9 + 32 + v11) = 0;
  if ((a1 & 0x8000000000000000) != 0)
  {
    a5;
    goto LABEL_26;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a3)
  {
    v12 = a3 - 1;
    if (a3 - 1 >= a1)
    {
      v12 = a1;
    }

    if (v12 >= a3)
    {
      v12 = a3;
    }

    if (v12 > 0xF && (v9 - a2 + 32) >= 0x10)
    {
      v14 = v12 + 1;
      v15 = v14 & 0xF;
      if ((v14 & 0xF) == 0)
      {
        v15 = 16;
      }

      v13 = v14 - v15;
      v16.i64[0] = -1;
      v16.i64[1] = -1;
      v17.i64[0] = 0x3F3F3F3F3F3F3F3FLL;
      v17.i64[1] = 0x3F3F3F3F3F3F3F3FLL;
      v18 = vdupq_n_s64(0x3FFE000000000uLL);
      v19.i64[0] = 0x2020202020202020;
      v19.i64[1] = 0x2020202020202020;
      v20 = v13;
      v21 = (v9 + 32);
      v22 = a2;
      do
      {
        v23 = *v22++;
        v24 = vandq_s8(vshrq_n_u8(vaddq_s8(v23, v16), 1uLL), v17);
        v25 = vmovl_u8(*v24.i8);
        v26 = vmovl_u16(*v25.i8);
        v27.i64[0] = v26.u32[0];
        v27.i64[1] = v26.u32[1];
        v28 = v27;
        v29 = vmovl_high_u16(v25);
        v30 = vmovl_high_u8(v24);
        v27.i64[0] = v29.u32[0];
        v27.i64[1] = v29.u32[1];
        v31 = v27;
        v32 = vmovl_u16(*v30.i8);
        v27.i64[0] = v32.u32[0];
        v27.i64[1] = v32.u32[1];
        v33 = v27;
        v34 = vmovl_high_u16(v30);
        v27.i64[0] = v34.u32[0];
        v27.i64[1] = v34.u32[1];
        v41.val[3] = vshlq_u64(v18, vsubw_high_u32(0, v34));
        v41.val[1] = vshlq_u64(v18, vsubw_high_u32(0, v32));
        v41.val[2] = vshlq_u64(v18, vnegq_s64(v27));
        v41.val[0] = vshlq_u64(v18, vnegq_s64(v33));
        v42.val[3] = vshlq_u64(v18, vsubw_high_u32(0, v29));
        v42.val[1] = vshlq_u64(v18, vsubw_high_u32(0, v26));
        v42.val[2] = vshlq_u64(v18, vnegq_s64(v31));
        v42.val[0] = vshlq_u64(v18, vnegq_s64(v28));
        v34.i64[0] = vqtbl4q_s8(v42, xmmword_18071DD40).u64[0];
        v34.i64[1] = vqtbl4q_s8(v41, xmmword_18071DD40).u64[0];
        *v21++ = vaddq_s8(vandq_s8(v34, v19), v23);
        v20 -= 16;
      }

      while (v20);
    }

    else
    {
      v13 = 0;
    }

    v35 = a1 - v13;
    v36 = a3 - v13;
    v37 = (v13 + v9 + 32);
    v38 = &a2->u8[v13];
    while (1)
    {
      if (!v36)
      {
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if (!v35)
      {
        break;
      }

      v39 = *v38++;
      *v37++ = ((0x3FFE000000000uLL >> ((v39 - 1) >> 1)) & 0x20) + v39;
      --v35;
      if (!--v36)
      {
        goto LABEL_22;
      }
    }

LABEL_26:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_22:
  *(v9 + 24) = a3 | 0x3000000000000000;
  *(v9 + 32 + (a3 & 0xFFFFFFFFFFFFLL)) = 0;
  return v9;
}

{
  v9 = _allocateStringStorage(codeUnitCapacity:)(a1);
  *(v9 + 16) = v10;
  *(v9 + 24) = 0x3000000000000000;
  if (v10 < 0)
  {
    *__StringStorage._breadcrumbsAddress.getter() = 0;
    v11 = *(v9 + 24) & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = 0;
  }

  *(v9 + 32 + v11) = 0;
  if ((a1 & 0x8000000000000000) != 0)
  {
    a5;
    goto LABEL_26;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a3)
  {
    v12 = a3 - 1;
    if (a3 - 1 >= a1)
    {
      v12 = a1;
    }

    if (v12 >= a3)
    {
      v12 = a3;
    }

    if (v12 > 0xF && (v9 - a2 + 32) >= 0x10)
    {
      v14 = v12 + 1;
      v15 = v14 & 0xF;
      if ((v14 & 0xF) == 0)
      {
        v15 = 16;
      }

      v13 = v14 - v15;
      v16.i64[0] = -1;
      v16.i64[1] = -1;
      v17.i64[0] = 0x3F3F3F3F3F3F3F3FLL;
      v17.i64[1] = 0x3F3F3F3F3F3F3F3FLL;
      v18 = vdupq_n_s64(0x1FFF000000000000uLL);
      v19.i64[0] = 0x2020202020202020;
      v19.i64[1] = 0x2020202020202020;
      v20 = v13;
      v21 = (v9 + 32);
      v22 = a2;
      do
      {
        v23 = *v22++;
        v24 = vandq_s8(vshrq_n_u8(vaddq_s8(v23, v16), 1uLL), v17);
        v25 = vmovl_u8(*v24.i8);
        v26 = vmovl_u16(*v25.i8);
        v27.i64[0] = v26.u32[0];
        v27.i64[1] = v26.u32[1];
        v28 = v27;
        v29 = vmovl_high_u16(v25);
        v30 = vmovl_high_u8(v24);
        v27.i64[0] = v29.u32[0];
        v27.i64[1] = v29.u32[1];
        v31 = v27;
        v32 = vmovl_u16(*v30.i8);
        v27.i64[0] = v32.u32[0];
        v27.i64[1] = v32.u32[1];
        v33 = v27;
        v34 = vmovl_high_u16(v30);
        v27.i64[0] = v34.u32[0];
        v27.i64[1] = v34.u32[1];
        v41.val[3] = vshlq_u64(v18, vsubw_high_u32(0, v34));
        v41.val[1] = vshlq_u64(v18, vsubw_high_u32(0, v32));
        v41.val[2] = vshlq_u64(v18, vnegq_s64(v27));
        v41.val[0] = vshlq_u64(v18, vnegq_s64(v33));
        v42.val[3] = vshlq_u64(v18, vsubw_high_u32(0, v29));
        v42.val[1] = vshlq_u64(v18, vsubw_high_u32(0, v26));
        v42.val[2] = vshlq_u64(v18, vnegq_s64(v31));
        v42.val[0] = vshlq_u64(v18, vnegq_s64(v28));
        v34.i64[0] = vqtbl4q_s8(v42, xmmword_18071DD40).u64[0];
        v34.i64[1] = vqtbl4q_s8(v41, xmmword_18071DD40).u64[0];
        *v21++ = vsubq_s8(v23, vandq_s8(vshlq_n_s8(v34, 5uLL), v19));
        v20 -= 16;
      }

      while (v20);
    }

    else
    {
      v13 = 0;
    }

    v35 = a1 - v13;
    v36 = a3 - v13;
    v37 = (v13 + v9 + 32);
    v38 = &a2->u8[v13];
    while (1)
    {
      if (!v36)
      {
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if (!v35)
      {
        break;
      }

      v39 = *v38++;
      *v37++ = v39 - 32 * ((0x1FFF000000000000uLL >> ((v39 - 1) >> 1)) & 1);
      --v35;
      if (!--v36)
      {
        goto LABEL_22;
      }
    }

LABEL_26:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_22:
  *(v9 + 24) = a3 | 0x3000000000000000;
  *(v9 + 32 + (a3 & 0xFFFFFFFFFFFFLL)) = 0;
  return v9;
}

uint64_t specialized static String._fromLargeUTF8Repairing(uninitializedCapacity:initializingWith:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t (*a6)(void))
{
  v9 = a6();
  if (v7)
  {
    return v6;
  }

  v10 = v9;
  v103 = 0;
  v11 = (v9 + 32);
  v12 = *(v9 + 24) & 0xFFFFFFFFFFFFLL;
  if (_allASCII(_:)((v9 + 32), v12) || !v12)
  {
    v15 = 1;
LABEL_47:
    __StringStorage._updateCountAndFlags(newCount:newIsASCII:)(v12, v15 & 1);
    return *(v10 + 24);
  }

  v13 = 0;
  v14 = v10 + v12 + 32;
  v15 = 1;
  v16 = v11;
  v17 = v11;
  while (1)
  {
    v19 = *v17++;
    v18 = v19;
    if ((v19 & 0x80000000) == 0)
    {
      v20 = 1;
      goto LABEL_7;
    }

    if ((v18 + 11) < 0xCDu)
    {
      LOBYTE(v101) = _diagnoseInvalidUTF8MultiByteLeading(_:)(v18);
      goto LABEL_49;
    }

    if (v18 >= 0xE0u)
    {
      break;
    }

    if (v17 == v14 || (*v17 & 0xC0) != 0x80)
    {
LABEL_166:
      LOBYTE(v101) = 4;
      goto LABEL_49;
    }

    v15 = 0;
    v17 = v16 + 2;
    v20 = 2;
LABEL_7:
    v13 += v20;
    v16 = v17;
    if (v17 == v14)
    {
      goto LABEL_47;
    }
  }

  if (v18 == 224)
  {
    if (v17 == v14)
    {
      goto LABEL_166;
    }

    if (v16[1] - 192 <= 0xFFFFFFDF)
    {
      goto LABEL_167;
    }

    goto LABEL_31;
  }

  if (v18 <= 0xECu)
  {
    goto LABEL_29;
  }

  if (v18 == 237)
  {
    if (v17 == v14)
    {
      goto LABEL_166;
    }

    v21 = v16[1];
    if (v21 > 0x9F || (v21 & 0xC0) != 0x80)
    {
      LOBYTE(v101) = 1;
      goto LABEL_49;
    }

    goto LABEL_31;
  }

  if (v18 <= 0xEFu)
  {
LABEL_29:
    if (v17 == v14 || (v16[1] & 0xC0) != 0x80)
    {
      goto LABEL_166;
    }

LABEL_31:
    if (v16 + 2 == v14 || (v16[2] & 0xC0) != 0x80)
    {
      goto LABEL_166;
    }

    v15 = 0;
    v17 = v16 + 3;
    v20 = 3;
    goto LABEL_7;
  }

  if (v18 == 240)
  {
    if (v17 == v14)
    {
      goto LABEL_166;
    }

    if (v16[1] - 192 <= 0xFFFFFFCF)
    {
LABEL_167:
      LOBYTE(v101) = 3;
      goto LABEL_49;
    }

    goto LABEL_41;
  }

  if (v18 <= 0xF3u)
  {
    if (v17 == v14 || (v16[1] & 0xC0) != 0x80)
    {
      goto LABEL_166;
    }

    goto LABEL_41;
  }

  if (v17 == v14)
  {
    goto LABEL_166;
  }

  v22 = v16[1];
  if (v22 <= 0x8F && (v22 & 0xC0) == 0x80)
  {
LABEL_41:
    if (v16 + 2 == v14 || (v16[2] & 0xC0) != 0x80 || v16 + 3 == v14 || (v16[3] & 0xC0) != 0x80)
    {
      goto LABEL_166;
    }

    v15 = 0;
    v17 = v16 + 4;
    v20 = 4;
    goto LABEL_7;
  }

  LOBYTE(v101) = 2;
LABEL_49:
  swift_willThrowTypedImpl(&v101, &type metadata for _UTF8EncodingErrorKind, &protocol witness table for _UTF8EncodingErrorKind);
  v23 = specialized Collection.subscript.getter(v13, v11, v12);
  v27 = v23;
  v28 = v24;
  v29 = v25;
  v30 = v26;
  v31 = v23;
  if (v23 != v24)
  {
    specialized Slice.subscript.getter(v23, v23, v24, v25, v26);
    v31 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      goto LABEL_177;
    }
  }

  v32 = v27;
  if (v31 != v28)
  {
    v33 = specialized Slice.subscript.getter(v31, v27, v28, v29, v30);
    v34 = __OFADD__(v31, 1);
    v35 = v31 + 1;
    if (v34)
    {
      goto LABEL_177;
    }

    v32 = v27;
    if ((v33 & 0xC0) == 0x80)
    {
      v32 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        goto LABEL_179;
      }

      if (v27 + 1 <= v27)
      {
        goto LABEL_177;
      }

      if (v35 != v28)
      {
        v36 = specialized Slice.subscript.getter(v35, v27, v28, v29, v30);
        v34 = __OFADD__(v35, 1);
        v37 = v35 + 1;
        if (v34)
        {
          goto LABEL_177;
        }

        if ((v36 & 0xC0) == 0x80)
        {
          v34 = __OFADD__(v32, 1);
          v32 = v27 + 2;
          if (v34)
          {
            goto LABEL_179;
          }

          if (v27 + 2 <= v27)
          {
            goto LABEL_177;
          }

          if (v37 != v28)
          {
            v38 = specialized Slice.subscript.getter(v37, v27, v28, v29, v30);
            if (v37 == 0x7FFFFFFFFFFFFFFFLL)
            {
              goto LABEL_177;
            }

            if ((v38 & 0xC0) == 0x80)
            {
              v34 = __OFADD__(v32, 1);
              v32 = v27 + 3;
              if (!v34)
              {
                if (v27 + 3 > v27)
                {
                  goto LABEL_66;
                }

LABEL_177:
                a5;
LABEL_172:
                _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
              }

LABEL_179:
              __break(1u);
              goto LABEL_177;
            }
          }
        }
      }
    }

LABEL_66:
    if (v32 < v27)
    {
      a5;
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  v39 = v32 + 1;
  if (__OFADD__(v32, 1))
  {
    __break(1u);
    goto LABEL_177;
  }

  if (v28 < v39)
  {
    goto LABEL_177;
  }

  v95 = a5;
  v40 = _legacyNarrowIllegalRange #1 (buf:) in validateUTF8(_:)(v27, v39, v29, v30);
  v98 = v41;
  v96 = v10;
  v42 = *(v10 + 24);
  v101 = 0;
  v102 = 0xE000000000000000;
  v43 = v42 & 0xFFFFFFFFFFFFLL;
  if ((v42 & 0xFFFFFFFFFFFFLL) != 0)
  {
    v44 = v43 + 15;
    v45 = _StringGuts.uniqueNativeCapacity.getter();
    if ((v46 & 1) != 0 || v45 < v44)
    {
      v48 = 2 * _StringGuts.uniqueNativeCapacity.getter();
      if (v48 <= v44)
      {
        v48 = v43 + 15;
      }

      if (v47)
      {
        v49 = v43 + 15;
      }

      else
      {
        v49 = v48;
      }

      v99 = 0;
      v100 = 0;
      v50 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(&v99, 0, v49, 1);
      v51 = *(v50 + 24);
      0xE000000000000000;
      v101 = v51;
      v102 = v50;
    }
  }

LABEL_78:
  if (v40 < 0)
  {
LABEL_168:
    v95;
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v52 = v43;
  if (v43 < v40)
  {
    goto LABEL_171;
  }

  v53 = v11;
  v55 = v101;
  v54 = v102;
  v56 = v101 & 0xFFFFFFFFFFFFLL;
  v57 = HIBYTE(v102) & 0xF;
  if ((v102 & 0x2000000000000000) != 0)
  {
    v58 = HIBYTE(v102) & 0xF;
  }

  else
  {
    v58 = v101 & 0xFFFFFFFFFFFFLL;
  }

  v59 = v58 + v52 + 3;
  if (__OFADD__(v58 + v52, 3))
  {
    __break(1u);
LABEL_171:
    v95;
    goto LABEL_172;
  }

  if (v59 >= 16)
  {
    v97 = v102;
    v60 = _StringGuts.uniqueNativeCapacity.getter();
    if ((v61 & 1) != 0 || v60 < v59)
    {
      v62 = _StringGuts.uniqueNativeCapacity.getter();
      if (v63)
      {
        v64 = v97;
        if ((v97 & 0x1000000000000000) != 0)
        {
          v58 = String.UTF8View._foreignCount()();
        }

        v65 = v97 & 0x1000000000000000;
        if (v58 <= v59)
        {
          v58 = v59;
        }
      }

      else
      {
        if (2 * v62 <= v59)
        {
          v58 += v52 + 3;
        }

        else
        {
          v58 = 2 * v62;
        }

        v64 = v97;
        v65 = v97 & 0x1000000000000000;
      }

      if (v65)
      {
        _StringGuts._foreignGrow(_:)(v58);
        v54 = v102;
      }

      else
      {
        if ((v64 & 0x2000000000000000) != 0)
        {
          v67 = (v64 >> 62) & 1;
          v99 = v55;
          v100 = v64 & 0xFFFFFFFFFFFFFFLL;
          v66 = &v99;
          v68 = v57;
        }

        else
        {
          if ((v55 & 0x1000000000000000) != 0)
          {
            v66 = ((v64 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v66 = _StringObject.sharedUTF8.getter(v55, v64);
            v56 = v93;
          }

          v67 = v55 >> 63;
          v68 = v56;
        }

        v69 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(v66, v68, v58, v67);
        v64;
        v102 = v69;
        v54 = v69;
      }
    }

    else
    {
      v54 = v97;
    }
  }

  v70 = v54 & 0xFFFFFFFFFFFFFFFLL;
  v71 = (v54 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v72 = ((v54 & 0xFFFFFFFFFFFFFFFLL) + 24);
  specialized UnsafeMutablePointer.initialize(from:count:)(v53, v40, (v71 + (*((v54 & 0xFFFFFFFFFFFFFFFLL) + 0x18) & 0xFFFFFFFFFFFFLL)));
  v73 = (*v72 & 0xFFFFFFFFFFFFLL) + v40;
  v74 = v73 | 0x3000000000000000;
  *v72 = v73 | 0x3000000000000000;
  *(v71 + (v73 & 0xFFFFFFFFFFFFLL)) = 0;
  v75 = *(v70 + 16);
  if (v75 < 0)
  {
    v76 = ((v71 + (v75 & 0xFFFFFFFFFFFFLL) + 7) & 0x7FFFFFFFFFFFFFF8);
    v77 = *v76;
    *v76 = 0;
    v77;
    v74 = *v72;
  }

  v101 = v74;
  v78 = v103;
  specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(0xFFFDu, &v101);
  if (v52 < v98)
  {
    goto LABEL_168;
  }

  if (v98 < 0)
  {
    goto LABEL_171;
  }

  v43 = v52 - v98;
  if (v52 - v98 < 0)
  {
    goto LABEL_171;
  }

  v103 = v78;
  v11 = &v53[v98];
  if (!_allASCII(_:)(&v53[v98], v52 - v98) && v52 != v98)
  {
    v79 = 0;
    v80 = &v53[v52];
    v81 = &v53[v98];
    v82 = &v53[v98];
    do
    {
      v84 = *v82++;
      v83 = v84;
      if ((v84 & 0x80000000) == 0)
      {
        v85 = 1;
        goto LABEL_115;
      }

      if ((v83 + 11) <= 0xCCu)
      {
        LOBYTE(v99) = _diagnoseInvalidUTF8MultiByteLeading(_:)(v83);
        goto LABEL_155;
      }

      if (v83 < 0xE0u)
      {
        if (v82 == v80 || (*v82 & 0xC0) != 0x80)
        {
LABEL_157:
          LOBYTE(v99) = 4;
          goto LABEL_155;
        }

        v82 = v81 + 2;
        v85 = 2;
      }

      else
      {
        if (v83 == 224)
        {
          if (v82 == v80)
          {
            goto LABEL_157;
          }

          if (v81[1] - 192 <= 0xFFFFFFDF)
          {
            goto LABEL_158;
          }

          goto LABEL_139;
        }

        if (v83 <= 0xECu)
        {
          goto LABEL_137;
        }

        if (v83 == 237)
        {
          if (v82 == v80)
          {
            goto LABEL_157;
          }

          v86 = v81[1];
          if (v86 > 0x9F || (v86 & 0xC0) != 0x80)
          {
            LOBYTE(v99) = 1;
            goto LABEL_155;
          }

          goto LABEL_139;
        }

        if (v83 <= 0xEFu)
        {
LABEL_137:
          if (v82 == v80 || (v81[1] & 0xC0) != 0x80)
          {
            goto LABEL_157;
          }

LABEL_139:
          if (v81 + 2 == v80 || (v81[2] & 0xC0) != 0x80)
          {
            goto LABEL_157;
          }

          v82 = v81 + 3;
          v85 = 3;
          goto LABEL_115;
        }

        if (v83 == 240)
        {
          if (v82 == v80)
          {
            goto LABEL_157;
          }

          if (v81[1] - 192 <= 0xFFFFFFCF)
          {
LABEL_158:
            LOBYTE(v99) = 3;
            goto LABEL_155;
          }
        }

        else if (v83 <= 0xF3u)
        {
          if (v82 == v80 || (v81[1] & 0xC0) != 0x80)
          {
            goto LABEL_157;
          }
        }

        else
        {
          if (v82 == v80)
          {
            goto LABEL_157;
          }

          v87 = v81[1];
          if (v87 > 0x8F || (v87 & 0xC0) != 0x80)
          {
            LOBYTE(v99) = 2;
LABEL_155:
            swift_willThrowTypedImpl(&v99, &type metadata for _UTF8EncodingErrorKind, &protocol witness table for _UTF8EncodingErrorKind);
            v88 = specialized Collection.subscript.getter(v79, v11, v43);
            v40 = findInvalidRange #1 (_:) in validateUTF8(_:)(v88, v89, v90, v91);
            v98 = v92;
            if (!v43)
            {
              v72 = &v101;
              goto LABEL_164;
            }

            goto LABEL_78;
          }
        }

        if (v81 + 2 == v80 || (v81[2] & 0xC0) != 0x80 || v81 + 3 == v80 || (v81[3] & 0xC0) != 0x80)
        {
          goto LABEL_157;
        }

        v82 = v81 + 4;
        v85 = 4;
      }

LABEL_115:
      v79 += v85;
      v81 = v82;
    }

    while (v82 != v80);
  }

  __StringStorage.appendInPlace(_:isASCII:)(v11, v43, 0);
LABEL_164:
  v6 = *v72;
  v96;
  return v6;
}

int64_t specialized static __StringStorage.create(uninitializedCodeUnitCapacity:initializingUncheckedUTF8With:)(int64_t a1, unsigned int a2)
{
  v4 = _allocateStringStorage(codeUnitCapacity:)(a1);
  *(v4 + 16) = v5;
  *(v4 + 24) = 0x3000000000000000;
  if (v5 < 0)
  {
    *__StringStorage._breadcrumbsAddress.getter() = 0;
    v6 = *(v4 + 24) & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = 0;
  }

  *(v4 + 32 + v6) = 0;
  if (a1 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  ScalarName = _swift_stdlib_getScalarName(a2, v4 + 32, a1);
  *(v4 + 24) = ScalarName | 0x3000000000000000;
  *(v4 + 32 + (ScalarName & 0xFFFFFFFFFFFFLL)) = 0;
  return v4;
}

uint64_t specialized static String._fromLargeUTF8Repairing(uninitializedCapacity:initializingWith:)(int64_t a1, unsigned int a2)
{
  v4 = specialized static __StringStorage.create(uninitializedCodeUnitCapacity:initializingUncheckedUTF8With:)(a1, a2);
  if (v3)
  {
    return v2;
  }

  v5 = v4;
  v101 = 0;
  v6 = (v4 + 32);
  v7 = *(v4 + 24) & 0xFFFFFFFFFFFFLL;
  if (_allASCII(_:)((v4 + 32), v7) || !v7)
  {
    v10 = 1;
LABEL_47:
    __StringStorage._updateCountAndFlags(newCount:newIsASCII:)(v7, v10 & 1);
    return *(v5 + 24);
  }

  v8 = 0;
  v9 = v5 + v7 + 32;
  v10 = 1;
  v11 = v6;
  v12 = v6;
  while (1)
  {
    v14 = *v12++;
    v13 = v14;
    if ((v14 & 0x80000000) == 0)
    {
      v15 = 1;
      goto LABEL_7;
    }

    if ((v13 + 11) < 0xCDu)
    {
      LOBYTE(v99) = _diagnoseInvalidUTF8MultiByteLeading(_:)(v13);
      goto LABEL_49;
    }

    if (v13 >= 0xE0u)
    {
      break;
    }

    if (v12 == v9 || (*v12 & 0xC0) != 0x80)
    {
LABEL_168:
      LOBYTE(v99) = 4;
      goto LABEL_49;
    }

    v10 = 0;
    v12 = v11 + 2;
    v15 = 2;
LABEL_7:
    v8 += v15;
    v11 = v12;
    if (v12 == v9)
    {
      goto LABEL_47;
    }
  }

  if (v13 == 224)
  {
    if (v12 == v9)
    {
      goto LABEL_168;
    }

    if (v11[1] - 192 <= 0xFFFFFFDF)
    {
      goto LABEL_169;
    }

    goto LABEL_31;
  }

  if (v13 <= 0xECu)
  {
    goto LABEL_29;
  }

  if (v13 == 237)
  {
    if (v12 == v9)
    {
      goto LABEL_168;
    }

    v16 = v11[1];
    if (v16 > 0x9F || (v16 & 0xC0) != 0x80)
    {
      LOBYTE(v99) = 1;
      goto LABEL_49;
    }

    goto LABEL_31;
  }

  if (v13 <= 0xEFu)
  {
LABEL_29:
    if (v12 == v9 || (v11[1] & 0xC0) != 0x80)
    {
      goto LABEL_168;
    }

LABEL_31:
    if (v11 + 2 == v9 || (v11[2] & 0xC0) != 0x80)
    {
      goto LABEL_168;
    }

    v10 = 0;
    v12 = v11 + 3;
    v15 = 3;
    goto LABEL_7;
  }

  if (v13 == 240)
  {
    if (v12 == v9)
    {
      goto LABEL_168;
    }

    if (v11[1] - 192 <= 0xFFFFFFCF)
    {
LABEL_169:
      LOBYTE(v99) = 3;
      goto LABEL_49;
    }

    goto LABEL_41;
  }

  if (v13 <= 0xF3u)
  {
    if (v12 == v9 || (v11[1] & 0xC0) != 0x80)
    {
      goto LABEL_168;
    }

    goto LABEL_41;
  }

  if (v12 == v9)
  {
    goto LABEL_168;
  }

  v17 = v11[1];
  if (v17 <= 0x8F && (v17 & 0xC0) == 0x80)
  {
LABEL_41:
    if (v11 + 2 == v9 || (v11[2] & 0xC0) != 0x80 || v11 + 3 == v9 || (v11[3] & 0xC0) != 0x80)
    {
      goto LABEL_168;
    }

    v10 = 0;
    v12 = v11 + 4;
    v15 = 4;
    goto LABEL_7;
  }

  LOBYTE(v99) = 2;
LABEL_49:
  swift_willThrowTypedImpl(&v99, &type metadata for _UTF8EncodingErrorKind, &protocol witness table for _UTF8EncodingErrorKind);
  v18 = specialized Collection.subscript.getter(v8, v6, v7);
  v22 = v18;
  v23 = v19;
  v24 = v20;
  v25 = v21;
  v26 = v18;
  if (v18 != v19)
  {
    specialized Slice.subscript.getter(v18, v18, v19, v20, v21);
    v26 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      goto LABEL_173;
    }
  }

  v27 = v22;
  if (v26 != v23)
  {
    v28 = specialized Slice.subscript.getter(v26, v22, v23, v24, v25);
    v29 = __OFADD__(v26, 1);
    v30 = v26 + 1;
    if (v29)
    {
      goto LABEL_173;
    }

    v27 = v22;
    if ((v28 & 0xC0) == 0x80)
    {
      v27 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        goto LABEL_180;
      }

      if (v22 + 1 <= v22)
      {
        goto LABEL_173;
      }

      if (v30 != v23)
      {
        v31 = specialized Slice.subscript.getter(v30, v22, v23, v24, v25);
        v29 = __OFADD__(v30, 1);
        v32 = v30 + 1;
        if (v29)
        {
          goto LABEL_173;
        }

        if ((v31 & 0xC0) == 0x80)
        {
          v29 = __OFADD__(v27, 1);
          v27 = v22 + 2;
          if (v29)
          {
            goto LABEL_180;
          }

          if (v22 + 2 <= v22)
          {
            goto LABEL_173;
          }

          if (v32 != v23)
          {
            v33 = specialized Slice.subscript.getter(v32, v22, v23, v24, v25);
            if (v32 == 0x7FFFFFFFFFFFFFFFLL)
            {
              goto LABEL_173;
            }

            if ((v33 & 0xC0) == 0x80)
            {
              v29 = __OFADD__(v27, 1);
              v27 = v22 + 3;
              if (!v29)
              {
                if (v22 + 3 > v22)
                {
                  goto LABEL_66;
                }

LABEL_173:
                _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
              }

LABEL_180:
              __break(1u);
              goto LABEL_173;
            }
          }
        }
      }
    }

LABEL_66:
    if (v27 < v22)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  v34 = v27 + 1;
  if (__OFADD__(v27, 1))
  {
    __break(1u);
    goto LABEL_173;
  }

  if (v23 < v34)
  {
    goto LABEL_173;
  }

  v35 = _legacyNarrowIllegalRange #1 (buf:) in validateUTF8(_:)(v22, v34, v24, v25);
  v37 = v36;
  v94 = v5;
  v38 = *(v5 + 24);
  v99 = 0;
  v100 = 0xE000000000000000;
  v39 = v38 & 0xFFFFFFFFFFFFLL;
  if ((v38 & 0xFFFFFFFFFFFFLL) != 0)
  {
    v40 = v39 + 15;
    v41 = _StringGuts.uniqueNativeCapacity.getter();
    if ((v42 & 1) != 0 || v41 < v40)
    {
      v44 = 2 * _StringGuts.uniqueNativeCapacity.getter();
      if (v44 <= v40)
      {
        v44 = v39 + 15;
      }

      if (v43)
      {
        v45 = v39 + 15;
      }

      else
      {
        v45 = v44;
      }

      v97 = 0;
      v98 = 0;
      v46 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(&v97, 0, v45, 1);
      v47 = *(v46 + 24);
      0xE000000000000000;
      v99 = v47;
      v100 = v46;
    }
  }

  v48 = v37;
  v49 = v35;
LABEL_79:
  if (v49 < 0)
  {
LABEL_170:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v50 = v39;
  if (v39 < v49)
  {
    goto LABEL_173;
  }

  __n = v49;
  v52 = v99;
  v51 = v100;
  v53 = v99 & 0xFFFFFFFFFFFFLL;
  v54 = HIBYTE(v100) & 0xF;
  if ((v100 & 0x2000000000000000) != 0)
  {
    v55 = HIBYTE(v100) & 0xF;
  }

  else
  {
    v55 = v99 & 0xFFFFFFFFFFFFLL;
  }

  v56 = v55 + v50 + 3;
  if (__OFADD__(v55 + v50, 3))
  {
    __break(1u);
    goto LABEL_173;
  }

  v57 = v48;
  if (v56 < 16)
  {
LABEL_89:
    v60 = v57;
    v61 = v6;
  }

  else
  {
    v96 = v100;
    v58 = _StringGuts.uniqueNativeCapacity.getter();
    if ((v59 & 1) == 0 && v58 >= v56)
    {
      v51 = v96;
      goto LABEL_89;
    }

    v62 = _StringGuts.uniqueNativeCapacity.getter();
    if (v63)
    {
      v64 = v96;
      if ((v96 & 0x1000000000000000) != 0)
      {
        v55 = String.UTF8View._foreignCount()();
      }

      v65 = v96 & 0x1000000000000000;
      if (v55 <= v56)
      {
        v55 = v56;
      }
    }

    else
    {
      if (2 * v62 <= v56)
      {
        v55 += v50 + 3;
      }

      else
      {
        v55 = 2 * v62;
      }

      v64 = v96;
      v65 = v96 & 0x1000000000000000;
    }

    v60 = v57;
    if (v65)
    {
      _StringGuts._foreignGrow(_:)(v55);
      v51 = v100;
      v61 = v6;
    }

    else
    {
      v61 = v6;
      if ((v64 & 0x2000000000000000) != 0)
      {
        v67 = (v64 >> 62) & 1;
        v97 = v52;
        v98 = v64 & 0xFFFFFFFFFFFFFFLL;
        v66 = &v97;
        v68 = v54;
      }

      else
      {
        if ((v52 & 0x1000000000000000) != 0)
        {
          v66 = ((v64 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v66 = _StringObject.sharedUTF8.getter(v52, v64);
          v53 = v92;
        }

        v67 = v52 >> 63;
        v68 = v53;
      }

      v69 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(v66, v68, v55, v67);
      v64;
      v100 = v69;
      v51 = v69;
    }
  }

  v70 = v51 & 0xFFFFFFFFFFFFFFFLL;
  v71 = (v51 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v72 = ((v51 & 0xFFFFFFFFFFFFFFFLL) + 24);
  specialized UnsafeMutablePointer.initialize(from:count:)(v61, __n, (v71 + (*((v51 & 0xFFFFFFFFFFFFFFFLL) + 0x18) & 0xFFFFFFFFFFFFLL)));
  v73 = (*v72 & 0xFFFFFFFFFFFFLL) + __n;
  v74 = v73 | 0x3000000000000000;
  *v72 = v73 | 0x3000000000000000;
  *(v71 + (v73 & 0xFFFFFFFFFFFFLL)) = 0;
  v75 = *(v70 + 16);
  if (v75 < 0)
  {
    v76 = ((v71 + (v75 & 0xFFFFFFFFFFFFLL) + 7) & 0x7FFFFFFFFFFFFFF8);
    v77 = *v76;
    *v76 = 0;
    v77;
    v74 = *v72;
  }

  v99 = v74;
  v78 = v101;
  specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(0xFFFDu, &v99);
  if (v50 < v60)
  {
    goto LABEL_170;
  }

  if (v60 < 0)
  {
    goto LABEL_173;
  }

  v39 = v50 - v60;
  if (v50 - v60 < 0)
  {
    goto LABEL_173;
  }

  v101 = v78;
  v6 = &v61[v60];
  if (!_allASCII(_:)(&v61[v60], v50 - v60) && v50 != v60)
  {
    v79 = 0;
    v80 = &v61[v50];
    v81 = v6;
    v82 = v6;
    do
    {
      v84 = *v82++;
      v83 = v84;
      if ((v84 & 0x80000000) == 0)
      {
        v85 = 1;
        goto LABEL_117;
      }

      if ((v83 + 11) <= 0xCCu)
      {
        LOBYTE(v97) = _diagnoseInvalidUTF8MultiByteLeading(_:)(v83);
        goto LABEL_157;
      }

      if (v83 < 0xE0u)
      {
        if (v82 == v80 || (*v82 & 0xC0) != 0x80)
        {
LABEL_159:
          LOBYTE(v97) = 4;
          goto LABEL_157;
        }

        v82 = v81 + 2;
        v85 = 2;
      }

      else
      {
        if (v83 == 224)
        {
          if (v82 == v80)
          {
            goto LABEL_159;
          }

          if (v81[1] - 192 <= 0xFFFFFFDF)
          {
            goto LABEL_160;
          }

          goto LABEL_141;
        }

        if (v83 <= 0xECu)
        {
          goto LABEL_139;
        }

        if (v83 == 237)
        {
          if (v82 == v80)
          {
            goto LABEL_159;
          }

          v86 = v81[1];
          if (v86 > 0x9F || (v86 & 0xC0) != 0x80)
          {
            LOBYTE(v97) = 1;
            goto LABEL_157;
          }

          goto LABEL_141;
        }

        if (v83 <= 0xEFu)
        {
LABEL_139:
          if (v82 == v80 || (v81[1] & 0xC0) != 0x80)
          {
            goto LABEL_159;
          }

LABEL_141:
          if (v81 + 2 == v80 || (v81[2] & 0xC0) != 0x80)
          {
            goto LABEL_159;
          }

          v82 = v81 + 3;
          v85 = 3;
          goto LABEL_117;
        }

        if (v83 == 240)
        {
          if (v82 == v80)
          {
            goto LABEL_159;
          }

          if (v81[1] - 192 <= 0xFFFFFFCF)
          {
LABEL_160:
            LOBYTE(v97) = 3;
            goto LABEL_157;
          }
        }

        else if (v83 <= 0xF3u)
        {
          if (v82 == v80 || (v81[1] & 0xC0) != 0x80)
          {
            goto LABEL_159;
          }
        }

        else
        {
          if (v82 == v80)
          {
            goto LABEL_159;
          }

          v87 = v81[1];
          if (v87 > 0x8F || (v87 & 0xC0) != 0x80)
          {
            LOBYTE(v97) = 2;
LABEL_157:
            swift_willThrowTypedImpl(&v97, &type metadata for _UTF8EncodingErrorKind, &protocol witness table for _UTF8EncodingErrorKind);
            v88 = specialized Collection.subscript.getter(v79, v6, v39);
            v49 = findInvalidRange #1 (_:) in validateUTF8(_:)(v88, v89, v90, v91);
            if (!v39)
            {
              v72 = &v99;
              goto LABEL_166;
            }

            goto LABEL_79;
          }
        }

        if (v81 + 2 == v80 || (v81[2] & 0xC0) != 0x80 || v81 + 3 == v80 || (v81[3] & 0xC0) != 0x80)
        {
          goto LABEL_159;
        }

        v82 = v81 + 4;
        v85 = 4;
      }

LABEL_117:
      v79 += v85;
      v81 = v82;
    }

    while (v82 != v80);
  }

  __StringStorage.appendInPlace(_:isASCII:)(v6, v39, 0);
LABEL_166:
  v2 = *v72;
  v94;
  return v2;
}

uint64_t specialized static StringProtocol.== infix<A>(_:_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  v6 = a2 >> 16;
  if ((a6 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v7 = a5 & 0xFFFFFFFFFFFFLL;
  }

  v8 = a1 >> 16;
  if (a3 == a5 && a4 == a6 && !v8 && v6 == v7)
  {
    return 1;
  }

  else
  {
    return _stringCompareInternal(_:_:_:_:expecting:)(a3, a4, v8, v6, a5, a6, 0, v7, 0) & 1;
  }
}

{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v8 = a4 >> 16;
  v9 = a3 >> 16;
  if (a1 == a5 && a2 == a6 && !v9 && v7 == v8)
  {
    return 1;
  }

  else
  {
    return _stringCompareInternal(_:_:_:_:expecting:)(a1, a2, 0, v7, a5, a6, v9, v8, 0) & 1;
  }
}

uint64_t specialized static StringProtocol.== infix<A>(_:_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (a1 == a3 && a2 == a4 && v5 == v6)
  {
    return 1;
  }

  else
  {
    return _stringCompareInternal(_:_:_:_:expecting:)(a1, a2, 0, v5, a3, a4, 0, v6, 0) & 1;
  }
}

uint64_t specialized static StringProtocol.< infix<A>(_:_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  v6 = a2 >> 16;
  if ((a6 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v7 = a5 & 0xFFFFFFFFFFFFLL;
  }

  v8 = a1 >> 16;
  if (a3 == a5 && a4 == a6 && !v8 && v6 == v7)
  {
    return 0;
  }

  else
  {
    return _stringCompareInternal(_:_:_:_:expecting:)(a3, a4, v8, v6, a5, a6, 0, v7, 1) & 1;
  }
}

{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v8 = a4 >> 16;
  v9 = a3 >> 16;
  if (a1 == a5 && a2 == a6 && !v9 && v7 == v8)
  {
    return 0;
  }

  else
  {
    return _stringCompareInternal(_:_:_:_:expecting:)(a1, a2, 0, v7, a5, a6, v9, v8, 1) & 1;
  }
}

uint64_t specialized static StringProtocol.< infix<A>(_:_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (a1 == a3 && a2 == a4 && v5 == v6)
  {
    return 0;
  }

  else
  {
    return _stringCompareInternal(_:_:_:_:expecting:)(a1, a2, 0, v5, a3, a4, 0, v6, 1) & 1;
  }
}

uint64_t lazy protocol witness table accessor for type Unicode.UTF16.ForwardParser and conformance Unicode.UTF16.ForwardParser(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type Unicode.UTF16.ForwardParser and conformance Unicode.UTF16.ForwardParser;
  if (!lazy protocol witness table cache variable for type Unicode.UTF16.ForwardParser and conformance Unicode.UTF16.ForwardParser)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Unicode.UTF16.ForwardParser, &type metadata for Unicode.UTF16.ForwardParser, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Unicode.UTF16.ForwardParser and conformance Unicode.UTF16.ForwardParser);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Unicode.UTF16.ForwardParser and conformance Unicode.UTF16.ForwardParser;
  if (!lazy protocol witness table cache variable for type Unicode.UTF16.ForwardParser and conformance Unicode.UTF16.ForwardParser)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Unicode.UTF16.ForwardParser, &type metadata for Unicode.UTF16.ForwardParser, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Unicode.UTF16.ForwardParser and conformance Unicode.UTF16.ForwardParser);
  }

  return result;
}

Swift::UInt64 specialized String.Index.init(_:within:)(Swift::String::Index a1, unint64_t a2, unint64_t a3)
{
  rawBits = a1._rawBits;
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((a1._rawBits & 0xC) == 4 << v5)
  {
    rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(a1)._rawBits;
  }

  v6 = String._isValidIndex(_:)(rawBits);
  a3;
  if (v6)
  {
    return rawBits | 3;
  }

  else
  {
    return 0;
  }
}

{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((a1._rawBits & 0xC) == 4 << v3)
  {
    v7 = a2;
    v8 = a3;
    a1._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(a1)._rawBits;
    a2 = v7;
    a3 = v8;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < a1._rawBits >> 16)
  {
    a3;
    return 0;
  }

  rawBits = a1._rawBits;
  if ((a3 & 0x1000000000000000) != 0)
  {
    v9 = a2;
    v10 = a3;
    v11 = a3;
    v12._rawBits = rawBits;
    v13 = String.Index._foreignIsWithin(_:)(v9, v10, v12);
    v11;
    if (!v13)
    {
      return 0;
    }
  }

  else
  {
    a3;
    if ((rawBits & 0xC000) != 0)
    {
      return 0;
    }
  }

  return rawBits;
}

Swift::UInt64 specialized String.Index.init(_:within:)(Swift::UInt64 rawBits, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((rawBits & 0xC) == 4 << v3)
  {
    v11 = a2;
    v12 = a3;
    rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(rawBits)._rawBits;
    a2 = v11;
    a3 = v12;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < rawBits >> 16)
  {
    a3;
    return 0;
  }

  if ((a3 & 0x1000000000000000) != 0)
  {
    v7 = rawBits;
    v8 = a3;
    v9 = specialized String.Index._foreignIsWithin(_:)(rawBits);
  }

  else
  {
    if ((rawBits & 0xC000) != 0)
    {
      v6 = rawBits;
      a3;
      return v6;
    }

    v7 = rawBits;
    v8 = a3;
    v9 = _StringGuts.isOnUnicodeScalarBoundary(_:)(rawBits);
  }

  v10 = v9;
  v8;
  if (!v10)
  {
    return 0;
  }

  return v7;
}

{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((rawBits & 0xC) == 4 << v3)
  {
    v9 = a2;
    v10 = a3;
    rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(rawBits)._rawBits;
    a2 = v9;
    a3 = v10;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 >= rawBits >> 16)
  {
    v5 = rawBits;
    v6 = a3;
    v7 = _StringGuts.isOnUnicodeScalarBoundary(_:)(rawBits);
    v6;
    if (v7)
    {
      return v5;
    }
  }

  else
  {
    a3;
  }

  return 0;
}

uint64_t specialized _StringGuts.decidePostFormatBackward(between:and:with:)(unsigned __int8 a1, unsigned __int8 a2, uint64_t a3)
{
  *(a3 + 57) = 18;
  v3 = a1;
  result = 1;
  if (v3 <= 8)
  {
    if (v3 <= 4)
    {
      if (v3)
      {
        if (v3 == 2 && a2 == 7)
        {
          result = 0;
          v6 = *(a3 + 40);
          *a3 = xmmword_18071DF70;
LABEL_54:
          *(a3 + 16) = 1;
          *(a3 + 24) = v6;
          *(a3 + 32) = 0;
          return result;
        }

        return result;
      }

      v7 = a2;
      if (a2 <= 8u)
      {
        goto LABEL_60;
      }

      if (a2 > 0xCu)
      {
        if (a2 == 13)
        {
          goto LABEL_75;
        }

        if (a2 != 15)
        {
          return result;
        }

LABEL_67:
        if (*(a3 + 32))
        {
          return result;
        }

        v8 = *(a3 + 24);
        if ((*(a3 + 16) & 1) != 0 && *a3 == 0)
        {
          goto LABEL_81;
        }

        goto LABEL_82;
      }
    }

    else
    {
      if (v3 == 5)
      {
        if (a2 > 0xDu || ((1 << a2) & 0x2181) == 0 && a2 != 5)
        {
          return result;
        }

        goto LABEL_75;
      }

      if (v3 != 7)
      {
        if (v3 != 8 || a2 != 5 && a2 != 8)
        {
          return result;
        }

        goto LABEL_75;
      }

      v7 = a2;
      if (a2 <= 8u)
      {
        if (a2 > 4u)
        {
LABEL_61:
          if (v7 != 5 && v7 != 7)
          {
            return result;
          }

          goto LABEL_75;
        }

        if (a2)
        {
          if (a2 != 2 || (*(a3 + 32) & 1) != 0)
          {
            return result;
          }

          v8 = *(a3 + 24);
          if ((*(a3 + 16) & 1) != 0 && *a3 >= 2uLL)
          {
            goto LABEL_81;
          }

          goto LABEL_82;
        }

LABEL_75:
        result = 0;
        goto LABEL_76;
      }

      if (a2 > 0xCu)
      {
        if (a2 != 13 && a2 != 15)
        {
          return result;
        }

        goto LABEL_75;
      }
    }

    if (v7 != 9 && v7 != 11)
    {
      return result;
    }

    goto LABEL_67;
  }

  if (v3 > 12)
  {
    if (v3 != 13)
    {
      if (v3 != 14)
      {
        if (v3 != 15)
        {
          return result;
        }

        v5 = a2;
        if (!a2)
        {
          goto LABEL_53;
        }

        if (a2 == 13)
        {
          goto LABEL_41;
        }

LABEL_52:
        if (v5 == 7)
        {
          goto LABEL_53;
        }

        return result;
      }

      if (a2 != 14)
      {
        return result;
      }

      v9 = *(a3 + 40);
      if (*(a3 + 32))
      {
        v10 = 0;
        v11 = *(a3 + 48);
        if (*(a3 + 56))
        {
          v11 = *(a3 + 40);
        }
      }

      else if (*(a3 + 16))
      {
        v10 = 0;
        v11 = *(a3 + 40);
      }

      else
      {
        v10 = *a3 + 1;
        if (__OFADD__(*a3, 1))
        {
          __break(1u);
          return result;
        }

        v11 = *(a3 + 24);
        if (*a3)
        {
          v9 = *(a3 + 8);
        }
      }

      result = 0;
      *a3 = v10;
      *(a3 + 8) = v9;
      *(a3 + 16) = 0;
      *(a3 + 24) = v11;
      *(a3 + 32) = 0;
LABEL_76:
      *(a3 + 48) = 0;
      *(a3 + 56) = 1;
      return result;
    }

    v7 = a2;
    if (a2 > 9u)
    {
      if (a2 - 10 >= 2 && a2 != 15)
      {
        if (a2 != 13)
        {
          return result;
        }

        goto LABEL_75;
      }

      if (*(a3 + 32))
      {
        return result;
      }

      v8 = *(a3 + 24);
      if ((*(a3 + 16) & 1) != 0 && !(*a3 ^ 1 | *(a3 + 8)))
      {
LABEL_81:
        result = 0;
        *a3 = 0u;
        *(a3 + 16) = 0u;
        *(a3 + 32) = 1;
        *(a3 + 48) = 0;
        *(a3 + 56) = 1;
        return result;
      }

LABEL_82:
      *(a3 + 40) = v8;
      return result;
    }

LABEL_60:
    if (v7)
    {
      goto LABEL_61;
    }

    goto LABEL_75;
  }

  switch(v3)
  {
    case 9:
      v5 = a2;
      if (!a2)
      {
        goto LABEL_53;
      }

      goto LABEL_52;
    case 10:
      if (a2 != 13)
      {
        return result;
      }

LABEL_41:
      result = 0;
      v6 = *(a3 + 40);
      *a3 = xmmword_180672740;
      goto LABEL_54;
    case 11:
      if (a2 && a2 != 7)
      {
        if (a2 != 13)
        {
          return result;
        }

        goto LABEL_41;
      }

LABEL_53:
      result = 0;
      v6 = *(a3 + 40);
      *a3 = 0;
      *(a3 + 8) = 0;
      goto LABEL_54;
  }

  return result;
}

uint64_t specialized _StringGuts.previousWordBoundary(endingAt:previousScalar:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = closure #1 in _StringGuts._foreignPreviousWordIndex(endingAt:)(a1, a2, a3);
  if (v7)
  {
    a3;
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v8 = v5;
  v9 = v6;
  v36 = 1;
  v35 = 1;
  v28 = 0u;
  v29 = 0u;
  v30 = 1;
  v31 = v6;
  v32 = 0;
  v33 = 1;
  v34 = 18;
  v10 = closure #1 in _StringGuts._foreignPreviousWordIndex(endingAt:)(v6, a2, a3);
  if (v12)
  {
LABEL_76:
    if (v30)
    {
      return v31;
    }

    result = *(&v29 + 1);
    if ((v29 & 1) == 0)
    {
      v27 = *(&v28 + 1);
      if (v28)
      {
        v27 = *(&v29 + 1);
      }

      if (v28)
      {
        return v27;
      }

      else
      {
        return v31;
      }
    }

    return result;
  }

  v13 = v10;
  while (1)
  {
    v16 = v8;
    v8 = v13;
    if (v13 == 13 && v16 == 10)
    {
      goto LABEL_8;
    }

    v17 = 12;
    if ((v13 - 10) >= 4 && v13 != 133 && (v13 - 8234) < 0xFFFFFFFFFFFFFFFELL)
    {
      switch(v13)
      {
        case 0x22:
          v17 = 2;
          break;
        case 0x200D:
          v17 = 17;
          break;
        case 0x27:
          v17 = 15;
          break;
        default:
          if ((v13 - 127488) > 0xFFFFFFFFFFFFFFE5)
          {
            v17 = 14;
          }

          else
          {
            v18 = v11;
            WordBreakProperty = _swift_stdlib_getWordBreakProperty(v13);
            if (WordBreakProperty >= 0xC)
            {
              v17 = 1;
            }

            else
            {
              v17 = byte_18072A130[WordBreakProperty];
            }

            v11 = v18;
          }

          break;
      }
    }

    v20 = 12;
    if (v16 - 10 >= 4 && v16 != 133)
    {
      if (v16 - 8234 >= 0xFFFFFFFE)
      {
        v20 = 12;
      }

      else
      {
        switch(v16)
        {
          case 0x22u:
            v20 = 2;
            break;
          case 0x200Du:
            v20 = 17;
            break;
          case 0x27u:
            v20 = 15;
            break;
          default:
            if (v16 - 127488 > 0xFFFFFFE5)
            {
              v20 = 14;
            }

            else
            {
              v23 = v17;
              v24 = v11;
              v25 = _swift_stdlib_getWordBreakProperty(v16);
              if (v25 >= 0xC)
              {
                v20 = 1;
              }

              else
              {
                v20 = byte_18072A130[v25];
              }

              v11 = v24;
              v17 = v23;
            }

            break;
        }
      }
    }

    if (v17 == 1)
    {
      break;
    }

    if (v17 == 12)
    {
      goto LABEL_75;
    }

    switch(v20)
    {
      case 4u:
        if (v17 == 3 || v17 == 6)
        {
          goto LABEL_4;
        }

        if (v17 != 17)
        {
          goto LABEL_60;
        }

        break;
      case 0x10u:
        if (v17 > 15)
        {
          if (v17 == 16)
          {
            break;
          }

          if (v17 != 17)
          {
            goto LABEL_60;
          }
        }

        else if (v17 != 3 && v17 != 6)
        {
          goto LABEL_60;
        }

LABEL_4:
        LOBYTE(v34) = v20;
        if (v30)
        {
          v14 = v9;
        }

        else
        {
          v14 = *(&v29 + 1);
        }

        v32 = v14;
        v33 = 0;
        break;
      case 0xCu:
        goto LABEL_75;
      default:
        if (v17 > 0x11 || ((1 << v17) & 0x20048) == 0)
        {
          if (v20 > 0x11 || ((1 << v20) & 0x20048) == 0)
          {
            goto LABEL_60;
          }

          goto LABEL_46;
        }

        if (v20 > 0x11 || ((1 << v20) & 0x20048) == 0)
        {
          goto LABEL_4;
        }

        break;
    }

LABEL_8:
    v9 = v11;
    v31 = v11;
    v13 = closure #1 in _StringGuts._foreignPreviousWordIndex(endingAt:)(v11, a2, a3);
    if (v15)
    {
      goto LABEL_75;
    }
  }

  if (v20 > 0x11)
  {
    goto LABEL_60;
  }

  if (((1 << v20) & 0x20048) != 0)
  {
LABEL_46:
    if (v34 != 18)
    {
      goto LABEL_60;
    }

    goto LABEL_8;
  }

  if (((1 << v20) & 0x1002) != 0)
  {
    goto LABEL_75;
  }

LABEL_60:
  if (v34 != 18)
  {
    LOBYTE(v20) = v34;
  }

  v21 = v11;
  v22 = specialized _StringGuts.decidePostFormatBackward(between:and:with:)(v17, v20, &v28);
  v11 = v21;
  if ((v22 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_75:
  if (v33)
  {
    goto LABEL_76;
  }

  return v32;
}

uint64_t specialized _StringGuts.previousWordBoundary(endingAt:previousScalar:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a1 < 1)
  {
    a3;
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = a1;
  v6 = a4 - 1;
  do
  {
    v7 = *(v6 + v5--) & 0xC0;
  }

  while (v7 == 128);
  v8 = _decodeScalar(_:startingAt:)(a4, a2, v5);
  v33 = 1;
  v32 = 1;
  v25 = 0u;
  v26 = 0u;
  v27 = 1;
  v28 = v5;
  v29 = 0;
  v30 = 1;
  v31 = 18;
  if (v5 < 1)
  {
    goto LABEL_82;
  }

  while (1)
  {
    v11 = v8;
    v12 = v5;
    do
    {
      v13 = *(v6 + v5--) & 0xC0;
    }

    while (v13 == 128);
    v8 = _decodeScalar(_:startingAt:)(a4, v9, v5);
    if (v8 == 13 && v11 == 10)
    {
      goto LABEL_10;
    }

    v14 = 12;
    if (v8 - 10 >= 4 && v8 != 133 && v8 - 8234 < 0xFFFFFFFE)
    {
      switch(v8)
      {
        case 0x22u:
          v14 = 2;
          break;
        case 0x200Du:
          v14 = 17;
          break;
        case 0x27u:
          v14 = 15;
          break;
        default:
          if (v8 - 127488 > 0xFFFFFFE5)
          {
            v14 = 14;
          }

          else
          {
            v15 = v8;
            WordBreakProperty = _swift_stdlib_getWordBreakProperty(v8);
            if (WordBreakProperty >= 0xC)
            {
              v14 = 1;
            }

            else
            {
              v14 = byte_18072A130[WordBreakProperty];
            }

            v8 = v15;
          }

          break;
      }
    }

    v17 = 12;
    if (v11 - 10 >= 4 && v11 != 133)
    {
      if (v11 - 8234 >= 0xFFFFFFFE)
      {
        v17 = 12;
      }

      else
      {
        switch(v11)
        {
          case 0x22u:
            v17 = 2;
            break;
          case 0x200Du:
            v17 = 17;
            break;
          case 0x27u:
            v17 = 15;
            break;
          default:
            if (v11 - 127488 > 0xFFFFFFE5)
            {
              v17 = 14;
            }

            else
            {
              v21 = v8;
              v22 = _swift_stdlib_getWordBreakProperty(v11);
              if (v22 >= 0xC)
              {
                v17 = 1;
              }

              else
              {
                v17 = byte_18072A130[v22];
              }

              v8 = v21;
            }

            break;
        }
      }
    }

    if (v14 == 1)
    {
      break;
    }

    if (v14 == 12)
    {
      goto LABEL_80;
    }

    switch(v17)
    {
      case 4u:
        if (v14 == 3 || v14 == 6)
        {
          goto LABEL_6;
        }

        if (v14 != 17)
        {
          goto LABEL_64;
        }

        break;
      case 0x10u:
        if (v14 > 15)
        {
          if (v14 == 16)
          {
            break;
          }

          if (v14 != 17)
          {
            goto LABEL_64;
          }
        }

        else if (v14 != 3 && v14 != 6)
        {
          goto LABEL_64;
        }

LABEL_6:
        LOBYTE(v31) = v17;
        if (v27)
        {
          v10 = v12;
        }

        else
        {
          v10 = *(&v26 + 1);
        }

        v29 = v10;
        v30 = 0;
        break;
      case 0xCu:
        goto LABEL_80;
      default:
        if (v14 > 0x11 || ((1 << v14) & 0x20048) == 0)
        {
          if (v17 > 0x11 || ((1 << v17) & 0x20048) == 0)
          {
            goto LABEL_64;
          }

          goto LABEL_50;
        }

        if (v17 > 0x11 || ((1 << v17) & 0x20048) == 0)
        {
          goto LABEL_6;
        }

        break;
    }

LABEL_10:
    v28 = v5;
    if (v5 <= 0)
    {
      goto LABEL_80;
    }
  }

  if (v17 > 0x11)
  {
    goto LABEL_64;
  }

  if (((1 << v17) & 0x20048) != 0)
  {
LABEL_50:
    if (v31 != 18)
    {
      goto LABEL_64;
    }

    goto LABEL_10;
  }

  if (((1 << v17) & 0x1002) != 0)
  {
    goto LABEL_80;
  }

LABEL_64:
  if (v31 == 18)
  {
    v18 = v17;
  }

  else
  {
    v18 = v31;
  }

  v19 = v8;
  v20 = specialized _StringGuts.decidePostFormatBackward(between:and:with:)(v14, v18, &v25);
  v8 = v19;
  if ((v20 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_80:
  if ((v30 & 1) == 0)
  {
    return v29;
  }

LABEL_82:
  if (v27)
  {
    return v28;
  }

  result = *(&v26 + 1);
  if ((v26 & 1) == 0)
  {
    v24 = *(&v25 + 1);
    if (v25)
    {
      v24 = *(&v26 + 1);
    }

    if (v25)
    {
      return v24;
    }

    else
    {
      return v28;
    }
  }

  return result;
}

uint64_t specialized _StringGuts.nextWordBoundary(startingAt:nextScalar:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 <= a1)
  {
    a5;
    goto LABEL_327;
  }

  v8 = closure #1 in _StringGuts._foreignNextWordIndex(startingAt:)(a1, a4, a5);
  if (v10)
  {
    a5;
LABEL_327:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v11 = v8;
  v12 = v9;
  v13 = closure #1 in _StringGuts._foreignNextWordIndex(startingAt:)(v9, a4, a5);
  if (v15)
  {
    return v12;
  }

  v33 = 0;
  v34 = 0;
  v35 = 0;
  v16 = 0;
  v17 = 18;
  v18 = 1;
  do
  {
    v20 = v11;
    v11 = v13;
    if (v20 == 13 && v13 == 10)
    {
      goto LABEL_8;
    }

    if (v20 - 10 < 4 || v20 == 133 || v20 - 8234 >= 0xFFFFFFFE)
    {
      break;
    }

    switch(v20)
    {
      case 0x200Du:
        if (v13 >= 0xA)
        {
          if (v13 < 0xE || v13 == 133)
          {
            goto LABEL_323;
          }

          if (v13 >> 3 >= 0x405)
          {
            if (v13 < 0x202A)
            {
              goto LABEL_323;
            }

            v22 = 17;
            if (v13 - 127488 >= 0xFFFFFFE6)
            {
              goto LABEL_90;
            }

            v26 = v14;
            LOBYTE(v21) = 17;
            goto LABEL_81;
          }
        }

        v21 = 17;
        goto LABEL_32;
      case 0x27u:
        if (v13 >= 0xA)
        {
          if (v13 < 0xE || v13 == 133)
          {
            goto LABEL_323;
          }

          if (v13 >> 3 >= 0x405)
          {
            if (v13 < 0x202A)
            {
              goto LABEL_323;
            }

            v22 = 15;
            if (v13 - 127488 >= 0xFFFFFFE6)
            {
              goto LABEL_90;
            }

            v26 = v14;
            LOBYTE(v21) = 15;
            goto LABEL_81;
          }
        }

        v21 = 15;
LABEL_32:
        v22 = v21;
LABEL_33:
        switch(v11)
        {
          case 0x200Du:
            goto LABEL_84;
          case 0x27u:
            goto LABEL_259;
          case 0x22u:
            goto LABEL_36;
        }

        v26 = v14;
        goto LABEL_81;
      case 0x22u:
        if (v13 >= 0xA)
        {
          if (v13 < 0xE || v13 == 133)
          {
            goto LABEL_323;
          }

          if (v13 >> 3 >= 0x405)
          {
            if (v13 < 0x202A)
            {
              goto LABEL_323;
            }

            v22 = 2;
            if (v13 - 127488 >= 0xFFFFFFE6)
            {
              goto LABEL_90;
            }

            v26 = v14;
            LOBYTE(v21) = 2;
            goto LABEL_81;
          }
        }

        v21 = 2;
        goto LABEL_32;
    }

    if (v20 - 127488 >= 0xFFFFFFE6)
    {
      if (v13 >= 0xA)
      {
        if (v13 < 0xE || v13 == 133)
        {
          break;
        }

        if (v13 >> 3 > 0x404)
        {
          if (v13 < 0x202A)
          {
            break;
          }

          v22 = 14;
          if (v13 - 127488 >= 0xFFFFFFE6)
          {
LABEL_90:
            v29 = 0;
            v23 = 0;
            v24 = 0;
            v25 = 14;
            goto LABEL_261;
          }
        }

        else
        {
          v22 = 14;
          switch(v13)
          {
            case 0x22u:
LABEL_36:
              v23 = 0;
              v24 = 0;
              v25 = 2;
              goto LABEL_260;
            case 0x27u:
              goto LABEL_259;
            case 0x200Du:
              v17 = 14;
              goto LABEL_8;
          }
        }

        v26 = v14;
        LOBYTE(v21) = 14;
      }

      else
      {
        v26 = v14;
        LOBYTE(v21) = 14;
        v22 = 14;
      }
    }

    else
    {
      v26 = v14;
      WordBreakProperty = _swift_stdlib_getWordBreakProperty(v20);
      if (WordBreakProperty > 5)
      {
        if (WordBreakProperty > 8)
        {
          v14 = v26;
          switch(WordBreakProperty)
          {
            case 9:
              if (v11 < 0xA)
              {
                v21 = 5;
                goto LABEL_133;
              }

              if (v11 < 0xE || v11 == 133)
              {
                goto LABEL_323;
              }

              if (v11 >> 3 > 0x404)
              {
                if (v11 < 0x202A)
                {
                  goto LABEL_323;
                }

                v22 = 5;
                if (v11 - 127488 >= 0xFFFFFFE6)
                {
                  goto LABEL_255;
                }
              }

              else
              {
                v22 = 5;
                switch(v11)
                {
                  case 0x22u:
                    goto LABEL_214;
                  case 0x27u:
                    goto LABEL_259;
                  case 0x200Du:
                    v17 = 5;
                    goto LABEL_8;
                }
              }

              LOBYTE(v21) = 5;
              break;
            case 10:
              if (v11 < 0xA)
              {
                v21 = 16;
                goto LABEL_133;
              }

              if (v11 < 0xE || v11 == 133)
              {
                goto LABEL_323;
              }

              if (v11 >> 3 > 0x404)
              {
                if (v11 < 0x202A)
                {
                  goto LABEL_323;
                }

                v22 = 16;
                if (v11 - 127488 >= 0xFFFFFFE6)
                {
                  goto LABEL_255;
                }
              }

              else
              {
                v22 = 16;
                switch(v11)
                {
                  case 0x22u:
                    goto LABEL_214;
                  case 0x27u:
                    goto LABEL_259;
                  case 0x200Du:
                    v17 = 16;
                    goto LABEL_8;
                }
              }

              LOBYTE(v21) = 16;
              break;
            case 11:
              if (v11 < 0xA)
              {
                v21 = 4;
                goto LABEL_133;
              }

              if (v11 < 0xE || v11 == 133)
              {
                goto LABEL_323;
              }

              if (v11 >> 3 > 0x404)
              {
                if (v11 < 0x202A)
                {
                  goto LABEL_323;
                }

                v22 = 4;
                if (v11 - 127488 >= 0xFFFFFFE6)
                {
                  goto LABEL_255;
                }
              }

              else
              {
                v22 = 4;
                switch(v11)
                {
                  case 0x22u:
                    goto LABEL_214;
                  case 0x27u:
                    goto LABEL_259;
                  case 0x200Du:
                    v17 = 4;
                    goto LABEL_8;
                }
              }

              LOBYTE(v21) = 4;
              break;
            default:
              goto LABEL_134;
          }
        }

        else
        {
          v14 = v26;
          if (WordBreakProperty == 6)
          {
            if (v11 < 0xA)
            {
              v21 = 9;
              goto LABEL_133;
            }

            if (v11 < 0xE || v11 == 133)
            {
              break;
            }

            if (v11 >> 3 > 0x404)
            {
              if (v11 < 0x202A)
              {
                break;
              }

              v22 = 9;
              if (v11 - 127488 >= 0xFFFFFFE6)
              {
                goto LABEL_255;
              }
            }

            else
            {
              v22 = 9;
              switch(v11)
              {
                case 0x22u:
                  goto LABEL_214;
                case 0x27u:
                  goto LABEL_259;
                case 0x200Du:
                  v17 = 9;
                  goto LABEL_8;
              }
            }

            LOBYTE(v21) = 9;
          }

          else if (WordBreakProperty == 7)
          {
            if (v11 < 0xA)
            {
              v21 = 10;
              goto LABEL_133;
            }

            if (v11 < 0xE || v11 == 133)
            {
              break;
            }

            if (v11 >> 3 > 0x404)
            {
              if (v11 < 0x202A)
              {
                break;
              }

              v22 = 10;
              if (v11 - 127488 >= 0xFFFFFFE6)
              {
                goto LABEL_255;
              }
            }

            else
            {
              v22 = 10;
              switch(v11)
              {
                case 0x22u:
                  goto LABEL_214;
                case 0x27u:
                  goto LABEL_259;
                case 0x200Du:
                  v17 = 10;
                  goto LABEL_8;
              }
            }

            LOBYTE(v21) = 10;
          }

          else
          {
            if (v11 < 0xA)
            {
              v21 = 13;
              goto LABEL_133;
            }

            if (v11 < 0xE || v11 == 133)
            {
              break;
            }

            if (v11 >> 3 > 0x404)
            {
              if (v11 < 0x202A)
              {
                break;
              }

              v22 = 13;
              if (v11 - 127488 >= 0xFFFFFFE6)
              {
                goto LABEL_255;
              }
            }

            else
            {
              v22 = 13;
              switch(v11)
              {
                case 0x22u:
                  goto LABEL_214;
                case 0x27u:
                  goto LABEL_259;
                case 0x200Du:
                  v17 = 13;
                  goto LABEL_8;
              }
            }

            LOBYTE(v21) = 13;
          }
        }
      }

      else if (WordBreakProperty > 2)
      {
        v14 = v26;
        if (WordBreakProperty == 3)
        {
          if (v11 < 0xA)
          {
            v21 = 7;
            goto LABEL_133;
          }

          if (v11 < 0xE || v11 == 133)
          {
            break;
          }

          if (v11 >> 3 > 0x404)
          {
            if (v11 < 0x202A)
            {
              break;
            }

            v22 = 7;
            if (v11 - 127488 >= 0xFFFFFFE6)
            {
              goto LABEL_255;
            }
          }

          else
          {
            v22 = 7;
            switch(v11)
            {
              case 0x22u:
                goto LABEL_214;
              case 0x27u:
                goto LABEL_259;
              case 0x200Du:
                goto LABEL_199;
            }
          }

          LOBYTE(v21) = 7;
        }

        else if (WordBreakProperty == 4)
        {
          if (v11 < 0xA)
          {
            v22 = 0;
            LOBYTE(v21) = 0;
            goto LABEL_33;
          }

          if (v11 < 0xE || v11 == 133)
          {
            break;
          }

          if (v11 >> 3 > 0x404)
          {
            if (v11 < 0x202A)
            {
              break;
            }

            if (v11 - 127488 >= 0xFFFFFFE6)
            {
              v29 = 0;
              v23 = 0;
              v24 = 0;
              v22 = 0;
              goto LABEL_256;
            }
          }

          else
          {
            switch(v11)
            {
              case 0x22u:
                v23 = 0;
                v24 = 0;
                v22 = 0;
LABEL_215:
                v25 = 2;
LABEL_104:
                v29 = 1;
                goto LABEL_261;
              case 0x27u:
                v22 = 0;
LABEL_259:
                v23 = 0;
                v24 = 0;
                v25 = 15;
LABEL_260:
                v29 = 1;
                goto LABEL_261;
              case 0x200Du:
                v22 = 0;
LABEL_199:
                v17 = v22;
                goto LABEL_8;
            }
          }

          v22 = 0;
          LOBYTE(v21) = 0;
        }

        else
        {
          if (v11 < 0xA)
          {
            v21 = 11;
            goto LABEL_133;
          }

          if (v11 < 0xE || v11 == 133)
          {
            break;
          }

          if (v11 >> 3 > 0x404)
          {
            if (v11 < 0x202A)
            {
              break;
            }

            v22 = 11;
            if (v11 - 127488 >= 0xFFFFFFE6)
            {
              goto LABEL_255;
            }
          }

          else
          {
            v22 = 11;
            switch(v11)
            {
              case 0x22u:
                goto LABEL_214;
              case 0x27u:
                goto LABEL_259;
              case 0x200Du:
                v17 = 11;
                goto LABEL_8;
            }
          }

          LOBYTE(v21) = 11;
        }
      }

      else
      {
        v14 = v26;
        if (!WordBreakProperty)
        {
          if (v11 >= 0xA)
          {
            if (v11 < 0xE || v11 == 133)
            {
              break;
            }

            if (v11 >> 3 >= 0x405)
            {
              if (v11 < 0x202A)
              {
                break;
              }

              v22 = 3;
              if (v11 - 127488 >= 0xFFFFFFE6)
              {
                goto LABEL_255;
              }

              LOBYTE(v21) = 3;
              goto LABEL_81;
            }
          }

          v21 = 3;
LABEL_133:
          v22 = v21;
          goto LABEL_33;
        }

        if (WordBreakProperty == 1)
        {
          if (v11 >= 0xA)
          {
            if (v11 < 0xE || v11 == 133)
            {
              break;
            }

            if (v11 >> 3 >= 0x405)
            {
              if (v11 < 0x202A)
              {
                break;
              }

              v22 = 6;
              if (v11 - 127488 >= 0xFFFFFFE6)
              {
                goto LABEL_255;
              }

              LOBYTE(v21) = 6;
              goto LABEL_81;
            }
          }

          v21 = 6;
          goto LABEL_133;
        }

        if (WordBreakProperty != 2)
        {
LABEL_134:
          if (v11 >= 0xA)
          {
            if (v11 < 0xE || v11 == 133)
            {
              break;
            }

            if (v11 >> 3 > 0x404)
            {
              if (v11 < 0x202A)
              {
                break;
              }

              v22 = 1;
              if (v11 - 127488 >= 0xFFFFFFE6)
              {
LABEL_255:
                v29 = 0;
                v23 = 0;
                v24 = 0;
LABEL_256:
                v25 = 14;
                goto LABEL_261;
              }
            }

            else
            {
              v22 = 1;
              switch(v11)
              {
                case 0x22u:
LABEL_214:
                  v23 = 0;
                  v24 = 0;
                  goto LABEL_215;
                case 0x27u:
                  goto LABEL_259;
                case 0x200Du:
                  v17 = 1;
                  goto LABEL_8;
              }
            }

            LOBYTE(v21) = 1;
          }

          else
          {
            LOBYTE(v21) = 1;
            v22 = 1;
          }

          goto LABEL_81;
        }

        if (v11 < 0xA)
        {
          v21 = 8;
          goto LABEL_133;
        }

        if (v11 < 0xE || v11 == 133)
        {
          break;
        }

        if (v11 >> 3 > 0x404)
        {
          if (v11 < 0x202A)
          {
            break;
          }

          v22 = 8;
          if (v11 - 127488 >= 0xFFFFFFE6)
          {
            goto LABEL_255;
          }
        }

        else
        {
          v22 = 8;
          switch(v11)
          {
            case 0x22u:
              goto LABEL_214;
            case 0x27u:
              goto LABEL_259;
            case 0x200Du:
              goto LABEL_199;
          }
        }

        LOBYTE(v21) = 8;
      }
    }

LABEL_81:
    v28 = _swift_stdlib_getWordBreakProperty(v11);
    if (v28 > 5)
    {
      if (v28 <= 8)
      {
        v14 = v26;
        if (v28 == 6)
        {
          v23 = 0;
          v24 = 0;
          v25 = 9;
          goto LABEL_104;
        }

        if (v28 != 7)
        {
          v24 = 0;
          v25 = 13;
          v29 = 1;
          v23 = 1;
          goto LABEL_261;
        }

        v23 = 0;
        v24 = 0;
        v25 = 10;
        goto LABEL_260;
      }

      v14 = v26;
      switch(v28)
      {
        case 9:
          v23 = 0;
          v24 = 0;
          v25 = 5;
          goto LABEL_104;
        case 10:
          if (v22 == 16)
          {
            goto LABEL_8;
          }

          v23 = 0;
          v24 = 0;
          v25 = 16;
          goto LABEL_260;
        case 11:
          if (v22 == 17)
          {
            goto LABEL_8;
          }

          v23 = 0;
          v24 = 0;
          v25 = 4;
          goto LABEL_260;
      }
    }

    else
    {
      if (v28 > 2)
      {
        v14 = v26;
        if (v28 == 3)
        {
          v23 = 0;
          v25 = 7;
          v29 = 1;
          v24 = 1;
          goto LABEL_261;
        }

        v23 = 0;
        v24 = 0;
        if (v28 == 4)
        {
          v25 = 0;
        }

        else
        {
          v25 = 11;
        }

        goto LABEL_260;
      }

      v14 = v26;
      if (v28 < 2)
      {
LABEL_84:
        if (((1 << v21) & 0x20048) == 0)
        {
          v17 = v22;
        }

        goto LABEL_8;
      }

      if (v28 == 2)
      {
        v23 = 0;
        v24 = 0;
        v25 = 8;
        goto LABEL_260;
      }
    }

    if (v22 == 1)
    {
      break;
    }

    v23 = 0;
    v24 = 0;
    v29 = 1;
    v25 = 1;
LABEL_261:
    if (v17 == 18)
    {
      v30 = v22;
    }

    else
    {
      v30 = v17;
    }

    if (v30 <= 8)
    {
      if (v30 <= 4)
      {
        if (!v30)
        {
          if (v25 > 0xF)
          {
            break;
          }

          if (((1 << v25) & 0x20A1) == 0)
          {
            if (((1 << v25) & 0x8A00) == 0)
            {
              break;
            }

LABEL_308:
            v35 = 0;
            v18 = 0;
            v17 = 18;
            goto LABEL_321;
          }

          goto LABEL_317;
        }

        if (v30 != 2 || (v24 & 1) == 0)
        {
          break;
        }

        if (v18)
        {
          return v12;
        }

        if ((v16 & 1) == 0 || v35 <= 1)
        {
          return v34;
        }

        goto LABEL_7;
      }

      if (v30 == 5)
      {
        if (v25 > 0xD || ((1 << v25) & 0x21A1) == 0)
        {
          break;
        }

LABEL_317:
        v17 = 18;
        goto LABEL_8;
      }

      if (v30 == 7)
      {
        if (v25 > 0xF)
        {
          break;
        }

        if (((1 << v25) & 0xA0A1) == 0)
        {
          if (((1 << v25) & 0xA00) == 0)
          {
            if (v25 != 2)
            {
              break;
            }

            v18 = 0;
            v17 = 18;
            v31 = 2;
            goto LABEL_320;
          }

          goto LABEL_308;
        }

        goto LABEL_317;
      }

      if (v30 != 8)
      {
        break;
      }

      v17 = 18;
      if (v25 != 5 && v25 != 8)
      {
        break;
      }
    }

    else
    {
      if (v30 <= 12)
      {
        if (v30 == 9)
        {
          if (v25 && v25 != 7)
          {
            break;
          }

          goto LABEL_311;
        }

        if (v30 != 10)
        {
          goto LABEL_279;
        }

        if ((v23 & 1) == 0)
        {
          break;
        }

LABEL_299:
        if (v18)
        {
          return v12;
        }

        if ((v16 & 1) == 0 || v35 != 1)
        {
          return v34;
        }

LABEL_7:
        v34 = 0;
        v35 = 0;
        v16 = 0;
        v17 = 18;
        v18 = 1;
        goto LABEL_8;
      }

      if (v30 == 13)
      {
        if (v25 > 0xF)
        {
          break;
        }

        if (((1 << v25) & 0x20A1) == 0)
        {
          if (((1 << v25) & 0x8C00) == 0)
          {
            break;
          }

          v18 = 0;
          v17 = 18;
          v31 = 1;
LABEL_320:
          v35 = v31;
LABEL_321:
          v16 = 1;
          v34 = v12;
          goto LABEL_8;
        }

        goto LABEL_317;
      }

      if (v30 != 14)
      {
        if (v30 != 15)
        {
          break;
        }

LABEL_279:
        if (v25 && v25 != 7)
        {
          if (v25 != 13)
          {
            break;
          }

          goto LABEL_299;
        }

LABEL_311:
        if (v18)
        {
          return v12;
        }

        if ((v16 & 1) == 0 || v35)
        {
          return v34;
        }

        goto LABEL_7;
      }

      if ((v29 | v33))
      {
        break;
      }

      v17 = 18;
      v33 = 1;
    }

LABEL_8:
    v12 = v14;
    v13 = closure #1 in _StringGuts._foreignNextWordIndex(startingAt:)(v14, a4, a5);
  }

  while ((v19 & 1) == 0);
LABEL_323:
  if (v18)
  {
    return v12;
  }

  return v34;
}

id outlined copy of _StringRepresentation._Form(id result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    return swift_unknownObjectRetain(result);
  }

  return result;
}

void outlined consume of _StringRepresentation._Form(id a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    swift_unknownObjectRelease(a1);
  }
}

uint64_t specialized Substring.init(cString:)(char *a1)
{
  v2 = _swift_stdlib_strlen(a1);
  if ((v2 & 0x8000000000000000) != 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v3 = v2;
  v4 = validateUTF8(_:)(a1, v2);
  if (v4 < 0)
  {
    repairUTF8(_:firstKnownBrokenRange:)(a1, v3, v5, v6);
  }

  else
  {
    specialized static String._uncheckedFromUTF8(_:isASCII:)(a1, v3, v4 & 1, v7);
  }

  return 15;
}

Swift::UInt64 specialized Substring.init(_:)(Swift::UInt64 result, Swift::String::Index a2)
{
  if (result)
  {
    if (a2._rawBits)
    {
      return result;
    }

LABEL_5:
    v5 = result;
    _StringGuts.scalarAlignSlow(_:)(a2);
    return v5;
  }

  v2 = result;
  rawBits = a2._rawBits;
  v4._rawBits = _StringGuts.scalarAlignSlow(_:)(result)._rawBits;
  a2._rawBits = rawBits;
  result = v2 & 0xC | v4._rawBits & 0xFFFFFFFFFFFFFFF3 | 1;
  if ((rawBits & 1) == 0)
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type UInt32 and conformance UInt32(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type UInt32 and conformance UInt32;
  if (!lazy protocol witness table cache variable for type UInt32 and conformance UInt32)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UInt32, &type metadata for UInt32, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type UInt32 and conformance UInt32);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UInt32 and conformance UInt32;
  if (!lazy protocol witness table cache variable for type UInt32 and conformance UInt32)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UInt32, &type metadata for UInt32, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type UInt32 and conformance UInt32);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UInt32 and conformance UInt32;
  if (!lazy protocol witness table cache variable for type UInt32 and conformance UInt32)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UInt32, &type metadata for UInt32, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type UInt32 and conformance UInt32);
  }

  return result;
}

void *specialized _SwiftNSMutableArray.countByEnumerating(with:objects:count:)(uint64_t a1)
{
  v2 = 0;
  *&v8[8] = *(a1 + 24);
  *&v8[24] = *(a1 + 40);
  *&v8[40] = *(a1 + 56);
  if (!*a1)
  {
    v3 = *(v1 + 16);
    v4 = MEMORY[0x1EEE9AC00](a1);
    if ((v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
    {
      v6 = v3;
      v2 = _ss12_ArrayBufferV010withUnsafeB17Pointer_nonNativeyqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFADq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxsAE_pqd__Isgyrzr_AByxGqd__sAE_psAE_pRsd_0_r_0_lIetMggrzo_Tpq5yXl_SiTg581_sSa32withContiguousStorageIfAvailableyqd__Sgqd__SRyxGKXEKlFqd__ACKXEfU_yXl_SiTG5ADq_sAE_pRi_zRi0_zRi__Ri0__r0_lyyXlSiIsgyrzo_Tf1cn_nTf4ng_n(v6, partial apply for closure #1 in _SwiftNSMutableArray.countByEnumerating(with:objects:count:));
    }

    else
    {
      v2 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(&v7 + 1) = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
      *v8 = &_fastEnumerationStorageMutationsTarget;
      *&v7 = 1;
      v4[2] = *&v8[16];
      v4[3] = *&v8[32];
      *v4 = v7;
      v4[1] = *v8;
      v3;
    }

    v3;
  }

  return v2;
}

__objc2_class **specialized _SwiftNSMutableArray.copy(with:)()
{
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v4 = *(v0 + 16);
    }

    else
    {
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
    }

    v1;
  }

  else
  {
    v2 = one-time initialization token for _bridgeInitializedSuccessfully;
    swift_bridgeObjectRetain_n(v1, 2);
    if (v2 != -1)
    {
      swift_once(&one-time initialization token for _bridgeInitializedSuccessfully, one-time initialization function for _bridgeInitializedSuccessfully, v3);
    }

    if (!_bridgeInitializedSuccessfully)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v4 = v1 & 0xFFFFFFFFFFFFFF8;
    _orphanedFoundationSubclassesReparented = 1;
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v5 = canonical specialized generic type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>();
      v1;
      _swift_setClassMetadata(v5, (v1 & 0xFFFFFFFFFFFFFF8));
      swift_bridgeObjectRelease_n(v1, 2);
    }

    else
    {
      swift_bridgeObjectRelease_n(v1, 2);
      return &_swiftEmptyArrayStorage;
    }
  }

  return v4;
}

uint64_t specialized Unicode.UTF8.ValidationError.init(_:_:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    goto LABEL_14;
  }

  if (result != 4)
  {
    if (!__OFSUB__(a3, a2))
    {
      if (a3 - a2 != 1)
      {
        goto LABEL_14;
      }

      return result;
    }

    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (a2 == a3)
  {
LABEL_14:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (__OFSUB__(a3, a2))
  {
    goto LABEL_13;
  }

  if (a3 - a2 >= 4)
  {
    goto LABEL_14;
  }

  return result;
}

Swift::Int specialized UnsafeRawPointer._previousCharacterStart(_:limitedBy:)(uint64_t a1, uint64_t a2)
{
  v2 = a1 - 1;
  if (a1 < 1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((*(a2 + v2) & 0xC0) == 0x80)
  {
    do
    {
      v4 = *(a2 - 2 + a1--) & 0xC0;
    }

    while (v4 == 128);
    v2 = a1 - 1;
  }

  if (v2 < 1)
  {
    return v2;
  }

  value = UnsafeRawPointer._decodeScalar(startingAt:)(v2)._0._value;
  v6 = a2 - 2;
  while (1)
  {
    v7 = v2;
    v9 = value;
    v10 = v2 - 1;
    value = *(a2 + --v2);
    if ((value & 0xC0) == 0x80)
    {
      v11 = v7;
      do
      {
        value = *(v6 + v11--);
      }

      while ((value & 0xC0) == 0x80);
      v2 = v11 - 1;
    }

    if ((value & 0x80) != 0)
    {
      v15 = a2 + v2;
      v16 = __clz(value ^ 0xFF) - 24;
      v17 = *(a2 + v2 + 1);
      if (v16 == 2)
      {
        value = v17 & 0x3F | ((value & 0x1F) << 6);
      }

      else if (v16 == 3)
      {
        value = ((value & 0xF) << 12) | ((v17 & 0x3F) << 6) | *(v15 + 2) & 0x3F;
      }

      else
      {
        value = ((value & 0xF) << 18) | ((v17 & 0x3F) << 12) | ((*(v15 + 2) & 0x3F) << 6) | *(v15 + 3) & 0x3F;
      }
    }

    if (value == 13 && v9 == 10)
    {
      goto LABEL_10;
    }

    if (hasBreakWhenPaired #1 (_:) in _quickHasGraphemeBreakBetween(_:_:)(value) && hasBreakWhenPaired #1 (_:) in _quickHasGraphemeBreakBetween(_:_:)(v9))
    {
      return v7;
    }

    if (value < 0x20)
    {
LABEL_131:
      Unicode._GraphemeBreakProperty.init(from:)(v9);
      return v7;
    }

    if (value <= 0x7E)
    {
      break;
    }

    if (value == 8205)
    {
      v13 = 12;
      goto LABEL_26;
    }

    v13 = 4;
    if (value - 4448 <= 0xFFFFFF9F && value - 43389 < 0xFFFFFFE3)
    {
      v13 = 11;
      if (value - 4520 <= 0xFFFFFFB7 && value - 55239 <= 0xFFFFFFE8)
      {
        v13 = 10;
        if (value - 4608 <= 0xFFFFFFA7 && value - 55292 <= 0xFFFFFFCE)
        {
          if (value - 55204 > 0xFFFFD45B)
          {
            HIDWORD(v21) = -1227133513 * (value - 16);
            LODWORD(v21) = HIDWORD(v21);
            if ((v21 >> 2) < 0x9249249)
            {
              v13 = 5;
            }

            else
            {
              v13 = 6;
            }
          }

          else if (value - 127488 > 0xFFFFFFE5)
          {
            v13 = 8;
          }

          else
          {
            if (value - 131070 > 0xFFFFFC01)
            {
              goto LABEL_49;
            }

            if (value - 921600 > 0xFFFFF1EF)
            {
              goto LABEL_131;
            }

            GraphemeBreakProperty = _swift_stdlib_getGraphemeBreakProperty(value);
            if (GraphemeBreakProperty <= 2)
            {
              switch(GraphemeBreakProperty)
              {
                case 1:
                  v13 = 2;
                  break;
                case 2:
                  v13 = 7;
                  break;
                case 0:
                  goto LABEL_131;
                default:
                  goto LABEL_88;
              }
            }

            else
            {
              if ((GraphemeBreakProperty - 4) < 2)
              {
LABEL_49:
                v13 = 3;
                goto LABEL_26;
              }

              if (GraphemeBreakProperty != 3)
              {
                break;
              }

              v13 = 9;
            }
          }
        }
      }
    }

LABEL_26:
    v14 = Unicode._GraphemeBreakProperty.init(from:)(v9);
    if (v14 > 8u)
    {
      if (v14 > 0xAu)
      {
        if (v14 == 11)
        {
          if (v13 > 0xBu)
          {
            goto LABEL_91;
          }

          v19 = 1 << v13;
          v20 = 2224;
LABEL_70:
          if ((v19 & v20) == 0)
          {
            goto LABEL_91;
          }

          goto LABEL_10;
        }

        if (v14 == 12)
        {
          goto LABEL_10;
        }
      }

      else
      {
        if (v14 == 9)
        {
          goto LABEL_10;
        }

        if (v14 == 10)
        {
          if (v13 > 0xBu)
          {
            goto LABEL_91;
          }

          v19 = 1 << v13;
          v20 = 3296;
          goto LABEL_70;
        }
      }
    }

    else if (v14 > 4u)
    {
      if (v14 == 5 || v14 == 6)
      {
        goto LABEL_57;
      }
    }

    else
    {
      switch(v14)
      {
        case 2u:
          goto LABEL_10;
        case 4u:
LABEL_57:
          if (v13 != 4 && v13 != 7)
          {
            goto LABEL_91;
          }

          goto LABEL_10;
        case 1u:
          return v7;
      }
    }

    if (v13 != 7)
    {
      if (v13 == 8)
      {
        if (v14 != 8)
        {
          v13 = 8;
          goto LABEL_91;
        }

        if (specialized _countRIs(at:with:)(v7, a2))
        {
          return v7;
        }
      }

      else
      {
        if (v13 != 12)
        {
          goto LABEL_91;
        }

        if (v14 != 3)
        {
          v13 = 12;
          goto LABEL_91;
        }

        if (!specialized _checkIfInEmojiSequence(at:with:)(v7, a2))
        {
          return v7;
        }
      }
    }

LABEL_10:
    v7 = v2;
    if (v2 <= 0)
    {
      return v7;
    }
  }

LABEL_88:
  v13 = 0;
  v22 = Unicode._GraphemeBreakProperty.init(from:)(v9);
  if (v22 > 0xC)
  {
    goto LABEL_91;
  }

  v23 = 1 << v22;
  if ((v23 & 0x1204) != 0)
  {
    goto LABEL_10;
  }

  if ((v23 & 3) != 0)
  {
    return v7;
  }

LABEL_91:
  if (_swift_stdlib_isInCB_Consonant(v9) && (v13 == 12 || v13 == 2))
  {
    if (_swift_stdlib_isInCB_Consonant(value))
    {
      HIDWORD(v25) = value - 2381;
      LODWORD(v25) = value - 2381;
      v24 = v25 >> 7;
      if (v24 > 8 || ((1 << v24) & 0x15B) == 0)
      {
        return v7;
      }
    }

    else if (value == 8204)
    {
      return v7;
    }

    if ((*(a2 + v10) & 0xC0) == 0x80)
    {
      v26 = v7;
      do
      {
        v27 = *(v6 + v26--) & 0xC0;
      }

      while (v27 == 128);
      v10 = v26 - 1;
    }

    HIDWORD(v28) = UnsafeRawPointer._decodeScalar(startingAt:)(v10)._0._value - 2381;
    LODWORD(v28) = HIDWORD(v28);
    v29 = ((v28 >> 7) > 8) | (0xA4u >> (v28 >> 7));
LABEL_104:
    v30 = v29;
    v31 = v10;
    while (1)
    {
      v10 = v31 - 1;
      if (v31 < 1)
      {
        break;
      }

      if ((*(a2 + v10) & 0xC0) == 0x80)
      {
        do
        {
          v32 = *(v6 + v31--) & 0xC0;
        }

        while (v32 == 128);
        v10 = v31 - 1;
      }

      v33 = UnsafeRawPointer._decodeScalar(startingAt:)(v10)._0._value;
      if (_swift_stdlib_isInCB_Consonant(v33))
      {
        if (v30)
        {
          return v7;
        }

        goto LABEL_10;
      }

      if (v33 <= 0x7E)
      {
        return v7;
      }

      if (v33 != 8205)
      {
        v34 = vdupq_n_s32(v33);
        if ((vmaxv_u8(vmovn_s16(vuzp1q_s16(vcgtq_u32(vaddq_s32(v34, xmmword_18071DF20), xmmword_18071DF40), vcgtq_u32(vaddq_s32(v34, xmmword_18071DF30), xmmword_18071DF50)))) & 1) != 0 || (v33 - 921600) >= 0xFFFFF1F0 || _swift_stdlib_getGraphemeBreakProperty(v33) != 1)
        {
          return v7;
        }
      }

      if (_swift_stdlib_isInCB_Consonant(v33))
      {
        HIDWORD(v36) = v33 - 2381;
        LODWORD(v36) = v33 - 2381;
        v35 = v36 >> 7;
        if (v35 <= 8)
        {
          LOBYTE(v29) = 0;
          if (((1 << v35) & 0x15B) != 0)
          {
            goto LABEL_104;
          }
        }

        return v7;
      }

      LOBYTE(v29) = 0;
      if (v33 <= 2892)
      {
        if (v33 == 2381)
        {
          goto LABEL_104;
        }

        if (v33 == 2509)
        {
          goto LABEL_104;
        }

        v31 = v10;
        if (v33 == 2765)
        {
          goto LABEL_104;
        }
      }

      else if (v33 > 3404)
      {
        if (v33 == 3405)
        {
          goto LABEL_104;
        }

        v31 = v10;
        if (v33 == 8204)
        {
          return v7;
        }
      }

      else
      {
        if (v33 == 2893)
        {
          goto LABEL_104;
        }

        v31 = v10;
        if (v33 == 3149)
        {
          goto LABEL_104;
        }
      }
    }
  }

  return v7;
}

unint64_t specialized UnsafeRawPointer._decodeCharacter(endingAt:limitedBy:)(uint64_t a1, uint64_t a2)
{
  v4 = specialized UnsafeRawPointer._previousCharacterStart(_:limitedBy:)(a1, a2);
  if (v4 > a1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = v4;
  v6 = __OFSUB__(a1, v4);
  v7 = a1 - v4;
  if (v6)
  {
    __break(1u);
LABEL_17:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v7 < 0)
  {
    goto LABEL_17;
  }

  v8 = validateUTF8(_:)((a2 + v4), v7);
  if (v8 < 0)
  {
    v12 = repairUTF8(_:firstKnownBrokenRange:)((a2 + v5), v7, v9, v10);
  }

  else
  {
    v12 = specialized static String._uncheckedFromUTF8(_:isASCII:)(a2 + v5, v7, v8 & 1, v11);
  }

  v14 = v12;
  v15 = v13;
  if ((v13 & 0x2000000000000000) != 0)
  {
    v16 = HIBYTE(v13) & 0xF;
  }

  else
  {
    v16 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v17._rawBits = _StringGuts.validateCharacterIndex(_:)(15)._rawBits;
  if (String._uncheckedIndex(after:)(v17)._rawBits >> 14 != 4 * v16)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!(v15 & 0x2000000000000000 | v14 & 0x1000000000000000))
  {
    v14 = specialized static String._copying(_:)(v14, v15);
    v15;
  }

  return v14;
}

uint64_t outlined destroy of _PlaygroundQuickLook?(uint64_t result)
{
  if (*(result + 32) <= 0x12u)
  {
    v1 = result;
    destroy for _PlaygroundQuickLook(result);
    return v1;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Int? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type Int? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type Int? and conformance <A> A?)
  {
    v3[1] = v0;
    v3[2] = v1;
    v3[0] = &protocol witness table for Int;
    result = swift_getWitnessTable(protocol conformance descriptor for <A> A?, &unk_1EEEBE0E0, v3);
    atomic_store(result, &lazy protocol witness table cache variable for type Int? and conformance <A> A?);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type Int? and conformance <A> A?)
  {
    v3[1] = v0;
    v3[2] = v1;
    v3[0] = &protocol witness table for Int;
    result = swift_getWitnessTable(protocol conformance descriptor for <A> A?, &unk_1EEEBE0E0, v3);
    atomic_store(result, &lazy protocol witness table cache variable for type Int? and conformance <A> A?);
  }

  return result;
}

void partial apply for closure #1 in _myers<A, B>(from:to:using:)(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  partial apply for closure #1 in _myers<A, B>(from:to:using:)(a1, a2);
}

{
  closure #1 in _myers<A, B>(from:to:using:)(a1, *(v2 + 48), *(v2 + 16), *(v2 + 24), *(v2 + 32), a2);
}

uint64_t partial apply for implicit closure #1 in BidirectionalCollection<>.difference<A>(from:)(uint64_t a1, uint64_t a2)
{
  v5 = v2[6];
  v6 = *(v5 + 8);
  swift_getAssociatedTypeWitness(0, *(*(v2[4] + 8) + 8), v2[2], &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Element);
  return v6(a1, a2, v7, v5) & 1;
}

uint64_t lazy protocol witness table accessor for type Int64 and conformance Int64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type Int64 and conformance Int64;
  if (!lazy protocol witness table cache variable for type Int64 and conformance Int64)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Int64, &type metadata for Int64, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Int64 and conformance Int64);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int64 and conformance Int64;
  if (!lazy protocol witness table cache variable for type Int64 and conformance Int64)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Int64, &type metadata for Int64, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Int64 and conformance Int64);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int64 and conformance Int64;
  if (!lazy protocol witness table cache variable for type Int64 and conformance Int64)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Int64, &type metadata for Int64, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Int64 and conformance Int64);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int64 and conformance Int64;
  if (!lazy protocol witness table cache variable for type Int64 and conformance Int64)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Int64, &type metadata for Int64, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Int64 and conformance Int64);
  }

  return result;
}

uint64_t specialized static Unicode.UTF16.encode(_:into:)(unsigned int a1, void (*a2)(__int16 *))
{
  if (HIWORD(a1))
  {
    v3 = ((a1 + 983040) >> 10) & 0x3FF | ((a1 & 0x3FF) << 16) | 0xDC00D800;
    v6 = ((a1 + 983040) >> 10) & 0x3FF | 0xD800;
    a2(&v6);
    v5 = HIWORD(v3);
    return (a2)(&v5);
  }

  else
  {
    v6 = a1;
    return (a2)(&v6);
  }
}

uint64_t specialized Duration.init(_:scale:)(Swift::UInt64 a1, double a2)
{
  v4 = trunc(a2);
  _ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZs7_Int128V_SdTt1g5(&v99, v4);
  if (v101)
  {
    v10 = _StringGuts.init(_initialCapacity:)(80);
    v12 = v11;
    v99 = v10;
    v100 = v11;
    TypeName = swift_getTypeName(&type metadata for Double, 0);
    if (v14 < 0)
    {
      goto LABEL_66;
    }

    v15 = TypeName;
    v16 = v14;
    v17 = validateUTF8(_:)(TypeName, v14);
    if (v17 < 0)
    {
      v21 = repairUTF8(_:firstKnownBrokenRange:)(v15, v16, v18, v19);
    }

    else
    {
      v21 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v15, v16, v17 & 1, v20);
    }

    v31 = v21;
    v32 = v22;
    v33 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v33 = v10 & 0xFFFFFFFFFFFFLL;
    }

    if (!v33 && (v10 & ~v12 & 0x2000000000000000) == 0)
    {
      v12;
      v99 = v31;
      v100 = v32;
      goto LABEL_22;
    }

    if ((v12 & 0x2000000000000000) != 0)
    {
      if ((v22 & 0x2000000000000000) != 0)
      {
        v43 = specialized _SmallString.init(_:appending:)(v10, v12, v21, v22);
        if ((v45 & 1) == 0)
        {
          v95 = v43;
          v96 = v44;
          v12;
          v32;
          v99 = v95;
          v100 = v96;
          v32 = v96;
          v31 = v95;
LABEL_22:
          v46 = HIBYTE(v32) & 0xF;
          if ((v32 & 0x2000000000000000) == 0)
          {
            v46 = v31 & 0xFFFFFFFFFFFFLL;
          }

          if (v46 || (v31 & ~v32 & 0x2000000000000000) != 0)
          {
            if ((0x800000018066D440 & 0x2000000000000000 & v32) != 0 && (v47 = specialized _SmallString.init(_:appending:)(v31, v32, 0xD00000000000001ELL, 0x800000018066D440 | 0x8000000000000000), (v49 & 1) == 0))
            {
              v51 = v47;
              v52 = v48;
              v32;
              0x800000018066D440 | 0x8000000000000000;
              v99 = v51;
              v100 = v52;
            }

            else
            {
              if ((0x800000018066D440 & 0x2000000000000000) != 0)
              {
                v50 = (0x800000018066D440 >> 56) & 0xF;
              }

              else
              {
                v50 = 30;
              }

              _StringGuts.append(_:)(0xD00000000000001ELL, 0x800000018066D440 | 0x8000000000000000, 0, v50, v34, v35, v36, v37, v38, v39, v40, v41);
              0x800000018066D440 | 0x8000000000000000;
            }
          }

          else
          {
            v32;
            v99 = 0xD00000000000001ELL;
            v100 = 0x800000018066D440 | 0x8000000000000000;
          }

          v53 = swift_getTypeName(&type metadata for _Int128, 0);
          if ((v54 & 0x8000000000000000) == 0)
          {
            v55 = v53;
            v56 = v54;
            v57 = validateUTF8(_:)(v53, v54);
            if (v57 < 0)
            {
              v61 = repairUTF8(_:firstKnownBrokenRange:)(v55, v56, v58, v59);
            }

            else
            {
              v61 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v55, v56, v57 & 1, v60);
            }

            v71 = v61;
            v72 = v62;
            v73 = v100;
            v74 = HIBYTE(v100) & 0xF;
            if ((v100 & 0x2000000000000000) == 0)
            {
              v74 = v99 & 0xFFFFFFFFFFFFLL;
            }

            if (!v74 && (v99 & ~v100 & 0x2000000000000000) == 0)
            {
              v100;
              v99 = v71;
              v100 = v72;
              goto LABEL_51;
            }

            if ((v100 & 0x2000000000000000) != 0)
            {
              if ((v62 & 0x2000000000000000) != 0)
              {
                v84 = specialized _SmallString.init(_:appending:)(v99, v100, v61, v62);
                if ((v86 & 1) == 0)
                {
                  v97 = v84;
                  v98 = v85;
                  v73;
                  v72;
                  v99 = v97;
                  v100 = v98;
                  v72 = v98;
                  v71 = v97;
LABEL_51:
                  v87 = 0x800000018066D460 | 0x8000000000000000;
                  v88 = HIBYTE(v72) & 0xF;
                  if ((v72 & 0x2000000000000000) == 0)
                  {
                    v88 = v71 & 0xFFFFFFFFFFFFLL;
                  }

                  if (v88 || (v71 & ~v72 & 0x2000000000000000) != 0)
                  {
                    if ((0x800000018066D460 & 0x2000000000000000 & v72) != 0 && (v90 = specialized _SmallString.init(_:appending:)(v71, v72, 0xD00000000000002ELL, 0x800000018066D460 | 0x8000000000000000), (v92 & 1) == 0))
                    {
                      v89 = v90;
                      v94 = v91;
                      v72;
                      0x800000018066D460 | 0x8000000000000000;
                      v87 = v94;
                    }

                    else
                    {
                      if ((0x800000018066D460 & 0x2000000000000000) != 0)
                      {
                        v93 = (0x800000018066D460 >> 56) & 0xF;
                      }

                      else
                      {
                        v93 = 46;
                      }

                      _StringGuts.append(_:)(0xD00000000000002ELL, 0x800000018066D460 | 0x8000000000000000, 0, v93, v75, v76, v77, v78, v79, v80, v81, v82);
                      0x800000018066D460 | 0x8000000000000000;
                      v89 = v99;
                      v87 = v100;
                    }
                  }

                  else
                  {
                    v72;
                    v89 = 0xD00000000000002ELL;
                  }

                  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v89, v87, "Swift/Integers.swift", 0x14uLL, 2, 0xAB4uLL);
                }

                goto LABEL_49;
              }
            }

            else if ((v62 & 0x2000000000000000) != 0)
            {
LABEL_49:
              v83 = HIBYTE(v72) & 0xF;
              goto LABEL_50;
            }

            v83 = v61 & 0xFFFFFFFFFFFFLL;
LABEL_50:
            _StringGuts.append(_:)(v71, v72, 0, v83, v63, v64, v65, v66, v67, v68, v69, v70);
            v72;
            v71 = v99;
            v72 = v100;
            goto LABEL_51;
          }

LABEL_66:
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        goto LABEL_20;
      }
    }

    else if ((v22 & 0x2000000000000000) != 0)
    {
LABEL_20:
      v42 = HIBYTE(v32) & 0xF;
      goto LABEL_21;
    }

    v42 = v21 & 0xFFFFFFFFFFFFLL;
LABEL_21:
    _StringGuts.append(_:)(v31, v32, 0, v42, v23, v24, v25, v26, v27, v28, v29, v30);
    v32;
    v31 = v99;
    v32 = v100;
    goto LABEL_22;
  }

  v102 = _Int128.multipliedReportingOverflow(by:)(a1);
  if (v102.overflow)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  low = v102.partialValue.low;
  high = v102.partialValue.high;
  v7 = _ss17FixedWidthIntegerPsEyxqd__cSBRd__lufCs7_Int128V_SdTt1g5(round((a2 - v4) * a1));
  return specialized static _Int128.+ infix(_:_:)(low, high, v7, v8);
}

uint64_t specialized Duration.init(from:)(uint64_t *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v2);
  (*(v3 + 32))(v10, v2, v3);
  v4 = v11;
  v5 = v12;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  (*(v5 + 112))(v4, v5);
  v6 = v11;
  v7 = v12;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  v8 = (*(v7 + 160))(v6, v7);
  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v8;
}

uint64_t specialized static Duration./ infix(_:_:)(unint64_t a1, uint64_t a2, double a3)
{
  _sSBss17FixedWidthInteger14RawSignificandRpzrlE8_convert4fromx5value_Sb5exacttqd___tSzRd__lFZSd_s7_Int128VTt1g5(&v94, a1, a2);
  _ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZs7_Int128V_SdTt1g5(&v94, v94 / a3);
  if (v96)
  {
    *&v5 = COERCE_DOUBLE(_StringGuts.init(_initialCapacity:)(80));
    v7 = v6;
    v94 = *&v5;
    v95 = v6;
    TypeName = swift_getTypeName(&type metadata for Double, 0);
    if (v9 < 0)
    {
      goto LABEL_64;
    }

    v10 = TypeName;
    v11 = v9;
    v12 = validateUTF8(_:)(TypeName, v9);
    if (v12 < 0)
    {
      v16 = repairUTF8(_:firstKnownBrokenRange:)(v10, v11, v13, v14);
    }

    else
    {
      v16 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v10, v11, v12 & 1, v15);
    }

    v26 = v16;
    v27 = v17;
    v28 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v28 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v28 && (v5 & ~v7 & 0x2000000000000000) == 0)
    {
      v7;
      v94 = *&v26;
      v95 = v27;
      goto LABEL_20;
    }

    if ((v7 & 0x2000000000000000) != 0)
    {
      if ((v17 & 0x2000000000000000) != 0)
      {
        v38 = specialized _SmallString.init(_:appending:)(v5, v7, v16, v17);
        if ((v40 & 1) == 0)
        {
          v90 = *&v38;
          v91 = v39;
          v7;
          v27;
          v94 = v90;
          v95 = v91;
          v27 = v91;
          *&v26 = v90;
LABEL_20:
          v41 = HIBYTE(v27) & 0xF;
          if ((v27 & 0x2000000000000000) == 0)
          {
            v41 = v26 & 0xFFFFFFFFFFFFLL;
          }

          if (v41 || (v26 & ~v27 & 0x2000000000000000) != 0)
          {
            if ((0x800000018066D440 & 0x2000000000000000 & v27) != 0 && (v42 = specialized _SmallString.init(_:appending:)(v26, v27, 0xD00000000000001ELL, 0x800000018066D440 | 0x8000000000000000), (v44 & 1) == 0))
            {
              v46 = *&v42;
              v47 = v43;
              v27;
              0x800000018066D440 | 0x8000000000000000;
              v94 = v46;
              v95 = v47;
            }

            else
            {
              if ((0x800000018066D440 & 0x2000000000000000) != 0)
              {
                v45 = (0x800000018066D440 >> 56) & 0xF;
              }

              else
              {
                v45 = 30;
              }

              _StringGuts.append(_:)(0xD00000000000001ELL, 0x800000018066D440 | 0x8000000000000000, 0, v45, v29, v30, v31, v32, v33, v34, v35, v36);
              0x800000018066D440 | 0x8000000000000000;
            }
          }

          else
          {
            v27;
            v94 = -2.31584178e77;
            v95 = 0x800000018066D440 | 0x8000000000000000;
          }

          v48 = swift_getTypeName(&type metadata for _Int128, 0);
          if ((v49 & 0x8000000000000000) == 0)
          {
            v50 = v48;
            v51 = v49;
            v52 = validateUTF8(_:)(v48, v49);
            if (v52 < 0)
            {
              v56 = repairUTF8(_:firstKnownBrokenRange:)(v50, v51, v53, v54);
            }

            else
            {
              v56 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v50, v51, v52 & 1, v55);
            }

            v66 = v56;
            v67 = v57;
            v68 = v95;
            v69 = HIBYTE(v95) & 0xF;
            if ((v95 & 0x2000000000000000) == 0)
            {
              v69 = *&v94 & 0xFFFFFFFFFFFFLL;
            }

            if (!v69 && (*&v94 & ~v95 & 0x2000000000000000) == 0)
            {
              v95;
              v94 = *&v66;
              v95 = v67;
              goto LABEL_49;
            }

            if ((v95 & 0x2000000000000000) != 0)
            {
              if ((v57 & 0x2000000000000000) != 0)
              {
                v79 = specialized _SmallString.init(_:appending:)(*&v94, v95, v56, v57);
                if ((v81 & 1) == 0)
                {
                  v92 = *&v79;
                  v93 = v80;
                  v68;
                  v67;
                  v94 = v92;
                  v95 = v93;
                  v67 = v93;
                  *&v66 = v92;
LABEL_49:
                  v82 = 0x800000018066D460 | 0x8000000000000000;
                  v83 = HIBYTE(v67) & 0xF;
                  if ((v67 & 0x2000000000000000) == 0)
                  {
                    v83 = v66 & 0xFFFFFFFFFFFFLL;
                  }

                  if (v83 || (v66 & ~v67 & 0x2000000000000000) != 0)
                  {
                    if ((0x800000018066D460 & 0x2000000000000000 & v67) != 0 && (v85 = specialized _SmallString.init(_:appending:)(v66, v67, 0xD00000000000002ELL, 0x800000018066D460 | 0x8000000000000000), (v87 & 1) == 0))
                    {
                      v84 = v85;
                      v89 = v86;
                      v67;
                      0x800000018066D460 | 0x8000000000000000;
                      v82 = v89;
                    }

                    else
                    {
                      if ((0x800000018066D460 & 0x2000000000000000) != 0)
                      {
                        v88 = (0x800000018066D460 >> 56) & 0xF;
                      }

                      else
                      {
                        v88 = 46;
                      }

                      _StringGuts.append(_:)(0xD00000000000002ELL, 0x800000018066D460 | 0x8000000000000000, 0, v88, v70, v71, v72, v73, v74, v75, v76, v77);
                      0x800000018066D460 | 0x8000000000000000;
                      v84 = *&v94;
                      v82 = v95;
                    }
                  }

                  else
                  {
                    v67;
                    v84 = 0xD00000000000002ELL;
                  }

                  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v84, v82, "Swift/Integers.swift", 0x14uLL, 2, 0xAB4uLL);
                }

                goto LABEL_47;
              }
            }

            else if ((v57 & 0x2000000000000000) != 0)
            {
LABEL_47:
              v78 = HIBYTE(v67) & 0xF;
              goto LABEL_48;
            }

            v78 = v56 & 0xFFFFFFFFFFFFLL;
LABEL_48:
            _StringGuts.append(_:)(v66, v67, 0, v78, v58, v59, v60, v61, v62, v63, v64, v65);
            v67;
            *&v66 = v94;
            v67 = v95;
            goto LABEL_49;
          }

LABEL_64:
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        goto LABEL_18;
      }
    }

    else if ((v17 & 0x2000000000000000) != 0)
    {
LABEL_18:
      v37 = HIBYTE(v27) & 0xF;
      goto LABEL_19;
    }

    v37 = v16 & 0xFFFFFFFFFFFFLL;
LABEL_19:
    _StringGuts.append(_:)(v26, v27, 0, v37, v18, v19, v20, v21, v22, v23, v24, v25);
    v27;
    *&v26 = v94;
    v27 = v95;
    goto LABEL_20;
  }

  return *&v94;
}

int **specialized Int128.init<A>(_:)(uint64_t a1, const char *a2, uint64_t a3)
{
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 4;
  (*(*(v7 + 16) + 304))(&v11);
  result = Int128.init<A>(exactly:)(v6, a2, a3);
  if (v9)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000051, 0x80000001806718B0, "Swift/Int128.swift", 0x12uLL, 2, 0xDAuLL);
  }

  return result;
}

void sub_1806220AC()
{
  v0[3];
  v0[6];

  swift_deallocObject(v0);
}

uint64_t specialized UInt128.init<A>(_:)(uint64_t a1, const char *a2, uint64_t a3)
{
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 4;
  (*(*(v7 + 16) + 304))(&v11);
  result = UInt128.init<A>(exactly:)(v6, a2, a3);
  if (v9)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000052, 0x8000000180671820, "Swift/UInt128.swift", 0x13uLL, 2, 0xCFuLL);
  }

  return result;
}

void sub_1806221F0()
{
  v0[4];

  swift_deallocObject(v0);
}

__int16 specialized Float16.init(sign:exponent:significand:)@<H0>(char a1@<W0>, uint64_t a2@<X1>, float a3@<S0>)
{
  *&result = -*&a3;
  if ((a1 & 1) == 0)
  {
    result = SLOWORD(a3);
  }

  v5 = (LODWORD(a3) >> 10) & 0x1F;
  if (v5 != 31 && (v5 | LOWORD(a3) & 0x3FF) != 0)
  {
    if (a2 > -15)
    {
      if (a2 >= 16)
      {
        if (a2 >= 0x2D)
        {
          a2 = 45;
        }

        do
        {
          a2 -= 15;
          *&result = *&result * COERCE_SHORT_FLOAT(30720);
        }

        while (a2 > 0xF);
      }
    }

    else
    {
      v7 = -42;
      if (a2 > 0xFFFFFFFFFFFFFFD6)
      {
        v7 = a2;
      }

      v8 = v7 + 14;
      *&result = *&result * COERCE_SHORT_FLOAT(1024);
      v9 = v7 + 28;
      v10 = __CFADD__(a2, 28);
      if (a2 >= 0xFFFFFFFFFFFFFFE4)
      {
        LOWORD(a2) = v8;
      }

      else
      {
        LOWORD(a2) = v9;
      }

      if (!v10)
      {
        *&result = *&result * COERCE_SHORT_FLOAT(1024);
      }
    }

    *&result = *&result * COERCE_SHORT_FLOAT(((a2 << 10) + 15360) & 0x7C00);
  }

  return result;
}

float specialized Float.init(sign:exponent:significand:)(char a1, uint64_t a2, float a3)
{
  result = -a3;
  if ((a1 & 1) == 0)
  {
    result = a3;
  }

  v5 = (LODWORD(a3) >> 23);
  if (v5 != 255 && v5 | LODWORD(a3) & 0x7FFFFF)
  {
    if (a2 > -127)
    {
      if (a2 >= 128)
      {
        if (a2 >= 0x17D)
        {
          a2 = 381;
        }

        do
        {
          a2 -= 127;
          result = result * 1.7014e38;
        }

        while (a2 > 0x7F);
      }
    }

    else
    {
      v6 = -378;
      if (a2 > 0xFFFFFFFFFFFFFE86)
      {
        v6 = a2;
      }

      v7 = v6 + 126;
      result = result * 1.1755e-38;
      v8 = v6 + 252;
      v9 = __CFADD__(a2, 252);
      if (a2 >= 0xFFFFFFFFFFFFFF04)
      {
        LODWORD(a2) = v7;
      }

      else
      {
        LODWORD(a2) = v8;
      }

      if (!v9)
      {
        result = result * 1.1755e-38;
      }
    }

    return result * COERCE_FLOAT(((a2 << 23) + 1065353216) & 0x7F800000);
  }

  return result;
}

double specialized Double.init(sign:exponent:significand:)(char a1, uint64_t a2, double a3)
{
  result = -a3;
  if ((a1 & 1) == 0)
  {
    result = a3;
  }

  v5 = (*&a3 >> 52) & 0x7FFLL;
  if (v5 != 2047 && v5 | *&a3 & 0xFFFFFFFFFFFFFLL)
  {
    if (a2 > -1023)
    {
      if (a2 >= 1024)
      {
        if (a2 >= 0xBFD)
        {
          a2 = 3069;
        }

        do
        {
          a2 -= 1023;
          result = result * 8.98846567e307;
        }

        while (a2 > 0x3FF);
      }
    }

    else
    {
      v6 = -3066;
      if (a2 > 0xFFFFFFFFFFFFF406)
      {
        v6 = a2;
      }

      v7 = v6 + 1022;
      result = result * 2.22507386e-308;
      v8 = v6 + 2044;
      v9 = __CFADD__(a2, 2044);
      if (a2 >= 0xFFFFFFFFFFFFF804)
      {
        a2 = v7;
      }

      else
      {
        a2 = v8;
      }

      if (!v9)
      {
        result = result * 2.22507386e-308;
      }
    }

    return result * COERCE_DOUBLE(((a2 << 52) + 0x3FF0000000000000) & 0x7FF0000000000000);
  }

  return result;
}

uint64_t partial apply for thunk for @callee_guaranteed (@unowned UnsafeMutableBufferPointer<A1>) -> (@out B1, @error @owned Error)(uint64_t a1, uint64_t a2, void *a3)
{
  return partial apply for thunk for @callee_guaranteed (@unowned UnsafeMutableBufferPointer<A1>) -> (@out B1, @error @owned Error)(a1, a2, a3);
}

{
  result = (*(v3 + 40))();
  if (v4)
  {
    *a3 = v4;
  }

  return result;
}

unint64_t *specialized static _UInt128.-= infix(_:_:)(unint64_t *result, unint64_t a2, unint64_t a3)
{
  v4 = *result;
  v3 = result[1];
  v5 = v3 >= a3;
  v6 = v3 - a3;
  v7 = !v5;
  v5 = v4 >= a2;
  v8 = v4 - a2;
  if (v5)
  {
    if (v7)
    {
      goto LABEL_8;
    }

    *result = v8;
    result[1] = v6;
  }

  else
  {
    if (!v6)
    {
      LOBYTE(v7) = 1;
    }

    if (v7)
    {
LABEL_8:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    *result = v8;
    result[1] = v6 - 1;
  }

  return result;
}

unint64_t *specialized static _UInt128.*= infix(_:_:)(unint64_t *result, unint64_t a2, unint64_t a3)
{
  v3 = *result;
  v4 = result[1];
  v5 = !is_mul_ok(v4, a2);
  v6 = !is_mul_ok(*result, a3);
  v7 = v4 * a2 + *result * a3;
  v8 = __CFADD__(v4 * a2, *result * a3);
  v9 = (v3 * a2) >> 64;
  v10 = __CFADD__(v7, v9);
  v11 = v7 + v9;
  v12 = v10;
  if (a3)
  {
    v13 = v4 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13 || v5 || v6 || v8 || v12)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *result = v3 * a2;
  result[1] = v11;
  return result;
}

Swift::UInt64 specialized static _UInt128./= infix(_:_:)(Swift::UInt64 *a1, Swift::UInt64 a2, Swift::UInt64 a3)
{
  if (!(a3 | a2))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v8.low = a3;
  v8.high = *a1;
  result = specialized _wideDivide22<A>(_:by:)(&v7, &v6, &v5, a1[1], v8, a2);
  *a1 = v7;
  a1[1] = result;
  return result;
}

Swift::UInt64 specialized static _UInt128.%= infix(_:_:)(Swift::UInt64 *a1, Swift::UInt64 a2, Swift::UInt64 a3)
{
  if (!(a3 | a2))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v9.low = a3;
  v9.high = *a1;
  result = specialized _wideDivide22<A>(_:by:)(&v8, &v7, &v6, a1[1], v9, a2);
  v5 = v7;
  *a1 = v6;
  a1[1] = v5;
  return result;
}

unint64_t *specialized static Duration.-= infix(_:_:)(unint64_t *result, unint64_t a2, uint64_t a3)
{
  v4 = *result;
  v3 = result[1];
  v5 = __OFSUB__(v3, a3);
  v6 = v3 - a3;
  v7 = v5;
  v8 = v4 >= a2;
  v9 = v4 - a2;
  if (v8)
  {
    if (v7)
    {
      goto LABEL_8;
    }

    *result = v9;
    result[1] = v6;
  }

  else
  {
    if (v6 == 0x8000000000000000)
    {
      LOBYTE(v7) = 1;
    }

    if (v7)
    {
LABEL_8:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    *result = v9;
    result[1] = v6 - 1;
  }

  return result;
}

uint64_t specialized static _Int128./= infix(_:_:)(void *a1, Swift::_Int128 dividingBy)
{
  if (dividingBy.high == -1)
  {
    if (dividingBy.low == -1 && a1[1] == 0x8000000000000000 && *a1 == 0)
    {
LABEL_11:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  else if (!dividingBy.high && !dividingBy.low)
  {
    goto LABEL_11;
  }

  *&result = _Int128.quotientAndRemainder(dividingBy:)(dividingBy);
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t specialized SIMD4.lowHalf.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a4;
  v23[1] = a1;
  v5 = *(a2 + 16);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 24);
  swift_getAssociatedTypeWitness(255, v9, v5, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD2Storage);
  v11 = v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v9, v5, v10, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD2Storage: SIMDStorage);
  v23[0] = *(AssociatedConformanceWitness + 56);
  v13 = v23[0];
  v14 = swift_checkMetadataState(0, v11);
  v13(0, v14, AssociatedConformanceWitness);
  swift_getAssociatedTypeWitness(255, v9, v5, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v16 = v15;
  v17 = swift_getAssociatedConformanceWitness(v9, v5, v15, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v18 = *(v17 + 64);
  v19 = swift_checkMetadataState(0, v16);
  v18(v7, a3, v19, v17);
  v20 = swift_checkMetadataState(0, v11);
  (v23[0])(1, v20, AssociatedConformanceWitness);
  v21 = swift_checkMetadataState(0, v16);
  return (v18)(v7, v24, v21, v17);
}

uint64_t specialized SIMD8.lowHalf.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v38 = a5;
  v39 = a6;
  v36 = a3;
  v37 = a4;
  v40 = a1;
  v6 = *(a2 + 16);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 24);
  swift_getAssociatedTypeWitness(255, v10, v6, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v12 = v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v10, v6, v11, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v35 = *(AssociatedConformanceWitness + 56);
  v14 = v35;
  v15 = swift_checkMetadataState(0, v12);
  v33 = AssociatedConformanceWitness;
  v14(0, v15, AssociatedConformanceWitness);
  swift_getAssociatedTypeWitness(255, v10, v6, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD8Storage);
  v17 = v16;
  v18 = swift_getAssociatedConformanceWitness(v10, v6, v16, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD8Storage: SIMDStorage);
  v32 = *(v18 + 64);
  v19 = v32;
  v20 = swift_checkMetadataState(0, v17);
  v19(v8, v36, v20, v18);
  v34 = v12;
  v21 = swift_checkMetadataState(0, v12);
  v22 = AssociatedConformanceWitness;
  v23 = v35;
  v35(1, v21, v22);
  v24 = swift_checkMetadataState(0, v17);
  v25 = v32;
  v32(v8, v37, v24, v18);
  v26 = swift_checkMetadataState(0, v12);
  v27 = v33;
  v23(2, v26, v33);
  v28 = swift_checkMetadataState(0, v17);
  v25(v8, v38, v28, v18);
  v29 = swift_checkMetadataState(0, v34);
  v23(3, v29, v27);
  v30 = swift_checkMetadataState(0, v17);
  return (v25)(v8, v39, v30, v18);
}

uint64_t specialized SIMD16.lowHalf.setter(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v2 = *(a2 + 16);
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v5 + 24);
  swift_getAssociatedTypeWitness(255, v6, v2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD8Storage);
  v20 = v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, v2, v7, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD8Storage: SIMDStorage);
  v9 = 0;
  v18 = *(AssociatedConformanceWitness + 56);
  v19 = AssociatedConformanceWitness;
  do
  {
    v10 = swift_checkMetadataState(0, v20);
    v18(v9, v10, v19);
    swift_getAssociatedTypeWitness(255, v6, v2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD16Storage);
    v12 = v11;
    v13 = swift_getAssociatedConformanceWitness(v6, v2, v11, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD16Storage: SIMDStorage);
    v14 = *(v13 + 64);
    v15 = swift_checkMetadataState(0, v12);
    result = v14(v4, v9++, v15, v13);
  }

  while (v9 != 8);
  return result;
}

uint64_t specialized SIMD16.highHalf.setter(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v2 = *(a2 + 16);
  MEMORY[0x1EEE9AC00](a1);
  v4 = &AssociatedConformanceWitness - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v5 + 24);
  swift_getAssociatedTypeWitness(255, v6, v2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD8Storage);
  v18 = v7;
  v8 = 0;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, v2, v7, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD8Storage: SIMDStorage);
  v9 = *(AssociatedConformanceWitness + 56);
  do
  {
    v10 = swift_checkMetadataState(0, v18);
    v9(v8, v10, AssociatedConformanceWitness);
    swift_getAssociatedTypeWitness(255, v6, v2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD16Storage);
    v12 = v11;
    v13 = swift_getAssociatedConformanceWitness(v6, v2, v11, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD16Storage: SIMDStorage);
    v14 = *(v13 + 64);
    v15 = swift_checkMetadataState(0, v12);
    result = v14(v4, v8 + 8, v15, v13);
    ++v8;
  }

  while (v8 != 8);
  return result;
}

uint64_t specialized SIMD16.evenHalf.setter(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v2 = *(a2 + 16);
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v5 + 24);
  swift_getAssociatedTypeWitness(255, v6, v2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD8Storage);
  v22 = v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, v2, v7, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD8Storage: SIMDStorage);
  v9 = 0;
  v10 = 0;
  v20 = *(AssociatedConformanceWitness + 56);
  v21 = AssociatedConformanceWitness;
  do
  {
    v11 = v10 + 1;
    v12 = swift_checkMetadataState(0, v22);
    v20(v10, v12, v21);
    swift_getAssociatedTypeWitness(255, v6, v2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD16Storage);
    v14 = v13;
    v15 = swift_getAssociatedConformanceWitness(v6, v2, v13, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD16Storage: SIMDStorage);
    v16 = *(v15 + 64);
    v17 = swift_checkMetadataState(0, v14);
    result = v16(v4, v9, v17, v15);
    v9 += 2;
    v10 = v11;
  }

  while (v9 != 16);
  return result;
}

uint64_t specialized SIMD16.oddHalf.setter(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v2 = *(a2 + 16);
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v5 + 24);
  swift_getAssociatedTypeWitness(255, v6, v2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD8Storage);
  v22 = v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, v2, v7, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD8Storage: SIMDStorage);
  v9 = 0;
  v20 = *(AssociatedConformanceWitness + 56);
  v21 = AssociatedConformanceWitness;
  for (i = 1; i != 17; i += 2)
  {
    v11 = v9 + 1;
    v12 = swift_checkMetadataState(0, v22);
    v20(v9, v12, v21);
    swift_getAssociatedTypeWitness(255, v6, v2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD16Storage);
    v14 = v13;
    v15 = swift_getAssociatedConformanceWitness(v6, v2, v13, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD16Storage: SIMDStorage);
    v16 = *(v15 + 64);
    v17 = swift_checkMetadataState(0, v14);
    result = v16(v4, i, v17, v15);
    v9 = v11;
  }

  return result;
}

uint64_t specialized SIMD32.lowHalf.setter(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v2 = *(a2 + 16);
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v5 + 24);
  swift_getAssociatedTypeWitness(255, v6, v2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD16Storage);
  v20 = v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, v2, v7, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD16Storage: SIMDStorage);
  v9 = 0;
  v18 = *(AssociatedConformanceWitness + 56);
  v19 = AssociatedConformanceWitness;
  do
  {
    v10 = swift_checkMetadataState(0, v20);
    v18(v9, v10, v19);
    swift_getAssociatedTypeWitness(255, v6, v2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD32Storage);
    v12 = v11;
    v13 = swift_getAssociatedConformanceWitness(v6, v2, v11, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD32Storage: SIMDStorage);
    v14 = *(v13 + 64);
    v15 = swift_checkMetadataState(0, v12);
    result = v14(v4, v9++, v15, v13);
  }

  while (v9 != 16);
  return result;
}

uint64_t specialized SIMD32.highHalf.setter(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v2 = *(a2 + 16);
  MEMORY[0x1EEE9AC00](a1);
  v4 = &AssociatedConformanceWitness - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v5 + 24);
  swift_getAssociatedTypeWitness(255, v6, v2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD16Storage);
  v18 = v7;
  v8 = 0;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, v2, v7, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD16Storage: SIMDStorage);
  v9 = *(AssociatedConformanceWitness + 56);
  do
  {
    v10 = swift_checkMetadataState(0, v18);
    v9(v8, v10, AssociatedConformanceWitness);
    swift_getAssociatedTypeWitness(255, v6, v2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD32Storage);
    v12 = v11;
    v13 = swift_getAssociatedConformanceWitness(v6, v2, v11, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD32Storage: SIMDStorage);
    v14 = *(v13 + 64);
    v15 = swift_checkMetadataState(0, v12);
    result = v14(v4, v8 + 16, v15, v13);
    ++v8;
  }

  while (v8 != 16);
  return result;
}

uint64_t specialized SIMD32.evenHalf.setter(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v2 = *(a2 + 16);
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v5 + 24);
  swift_getAssociatedTypeWitness(255, v6, v2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD16Storage);
  v22 = v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, v2, v7, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD16Storage: SIMDStorage);
  v9 = 0;
  v10 = 0;
  v20 = *(AssociatedConformanceWitness + 56);
  v21 = AssociatedConformanceWitness;
  do
  {
    v11 = v10 + 1;
    v12 = swift_checkMetadataState(0, v22);
    v20(v10, v12, v21);
    swift_getAssociatedTypeWitness(255, v6, v2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD32Storage);
    v14 = v13;
    v15 = swift_getAssociatedConformanceWitness(v6, v2, v13, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD32Storage: SIMDStorage);
    v16 = *(v15 + 64);
    v17 = swift_checkMetadataState(0, v14);
    result = v16(v4, v9, v17, v15);
    v9 += 2;
    v10 = v11;
  }

  while (v9 != 32);
  return result;
}

uint64_t specialized SIMD32.oddHalf.setter(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v2 = *(a2 + 16);
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v5 + 24);
  swift_getAssociatedTypeWitness(255, v6, v2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD16Storage);
  v22 = v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, v2, v7, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD16Storage: SIMDStorage);
  v9 = 0;
  v20 = *(AssociatedConformanceWitness + 56);
  v21 = AssociatedConformanceWitness;
  for (i = 1; i != 33; i += 2)
  {
    v11 = v9 + 1;
    v12 = swift_checkMetadataState(0, v22);
    v20(v9, v12, v21);
    swift_getAssociatedTypeWitness(255, v6, v2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD32Storage);
    v14 = v13;
    v15 = swift_getAssociatedConformanceWitness(v6, v2, v13, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD32Storage: SIMDStorage);
    v16 = *(v15 + 64);
    v17 = swift_checkMetadataState(0, v14);
    result = v16(v4, i, v17, v15);
    v9 = v11;
  }

  return result;
}

uint64_t specialized SIMD64.lowHalf.setter(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v2 = *(a2 + 16);
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v5 + 24);
  swift_getAssociatedTypeWitness(255, v6, v2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD32Storage);
  v20 = v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, v2, v7, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD32Storage: SIMDStorage);
  v9 = 0;
  v18 = *(AssociatedConformanceWitness + 56);
  v19 = AssociatedConformanceWitness;
  do
  {
    v10 = swift_checkMetadataState(0, v20);
    v18(v9, v10, v19);
    swift_getAssociatedTypeWitness(255, v6, v2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD64Storage);
    v12 = v11;
    v13 = swift_getAssociatedConformanceWitness(v6, v2, v11, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD64Storage: SIMDStorage);
    v14 = *(v13 + 64);
    v15 = swift_checkMetadataState(0, v12);
    result = v14(v4, v9++, v15, v13);
  }

  while (v9 != 32);
  return result;
}

uint64_t specialized SIMD64.highHalf.setter(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v2 = *(a2 + 16);
  MEMORY[0x1EEE9AC00](a1);
  v4 = &AssociatedConformanceWitness - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v5 + 24);
  swift_getAssociatedTypeWitness(255, v6, v2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD32Storage);
  v18 = v7;
  v8 = 0;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, v2, v7, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD32Storage: SIMDStorage);
  v9 = *(AssociatedConformanceWitness + 56);
  do
  {
    v10 = swift_checkMetadataState(0, v18);
    v9(v8, v10, AssociatedConformanceWitness);
    swift_getAssociatedTypeWitness(255, v6, v2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD64Storage);
    v12 = v11;
    v13 = swift_getAssociatedConformanceWitness(v6, v2, v11, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD64Storage: SIMDStorage);
    v14 = *(v13 + 64);
    v15 = swift_checkMetadataState(0, v12);
    result = v14(v4, v8 + 32, v15, v13);
    ++v8;
  }

  while (v8 != 32);
  return result;
}

uint64_t specialized SIMD64.evenHalf.setter(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v2 = *(a2 + 16);
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v5 + 24);
  swift_getAssociatedTypeWitness(255, v6, v2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD32Storage);
  v22 = v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, v2, v7, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD32Storage: SIMDStorage);
  v9 = 0;
  v10 = 0;
  v20 = *(AssociatedConformanceWitness + 56);
  v21 = AssociatedConformanceWitness;
  do
  {
    v11 = v10 + 1;
    v12 = swift_checkMetadataState(0, v22);
    v20(v10, v12, v21);
    swift_getAssociatedTypeWitness(255, v6, v2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD64Storage);
    v14 = v13;
    v15 = swift_getAssociatedConformanceWitness(v6, v2, v13, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD64Storage: SIMDStorage);
    v16 = *(v15 + 64);
    v17 = swift_checkMetadataState(0, v14);
    result = v16(v4, v9, v17, v15);
    v9 += 2;
    v10 = v11;
  }

  while (v9 != 64);
  return result;
}

uint64_t specialized SIMD64.oddHalf.setter(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v2 = *(a2 + 16);
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v5 + 24);
  swift_getAssociatedTypeWitness(255, v6, v2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD32Storage);
  v22 = v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, v2, v7, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD32Storage: SIMDStorage);
  v9 = 0;
  v20 = *(AssociatedConformanceWitness + 56);
  v21 = AssociatedConformanceWitness;
  for (i = 1; i != 65; i += 2)
  {
    v11 = v9 + 1;
    v12 = swift_checkMetadataState(0, v22);
    v20(v9, v12, v21);
    swift_getAssociatedTypeWitness(255, v6, v2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD64Storage);
    v14 = v13;
    v15 = swift_getAssociatedConformanceWitness(v6, v2, v13, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD64Storage: SIMDStorage);
    v16 = *(v15 + 64);
    v17 = swift_checkMetadataState(0, v14);
    result = v16(v4, i, v17, v15);
    v9 = v11;
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for _ArrayBuffer<A>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  return instantiation function for generic protocol witness table for _ArrayBuffer<A>(a1, a2, a3, protocol conformance descriptor for _ArrayBuffer<A>, protocol conformance descriptor for _ArrayBuffer<A>);
}

{
  result = swift_getWitnessTable(protocol conformance descriptor for _ArrayBuffer<A>, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable(protocol conformance descriptor for _ArrayBuffer<A>, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable(protocol conformance descriptor for _ArrayBuffer<A>, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>(unint64_t *a1, int *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    v6[0] = &protocol witness table for Int;
    v6[1] = lazy protocol witness table accessor for type Int and conformance Int(0, a2, a3);
    result = swift_getWitnessTable(a2, &unk_1EEEBBF38, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for [A](uint64_t a1, unint64_t a2, uint64_t a3)
{
  return instantiation function for generic protocol witness table for _ArrayBuffer<A>(a1, a2, a3, protocol conformance descriptor for [A], protocol conformance descriptor for [A]);
}

{
  result = swift_getWitnessTable(protocol conformance descriptor for [A], a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable(protocol conformance descriptor for [A], a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable(protocol conformance descriptor for [A], a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for <A> [A](uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + 8);
  result = swift_getWitnessTable(protocol conformance descriptor for <A> [A], a2, &v5);
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for ArraySlice<A>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  return instantiation function for generic protocol witness table for _ArrayBuffer<A>(a1, a2, a3, protocol conformance descriptor for ArraySlice<A>, protocol conformance descriptor for ArraySlice<A>);
}

{
  result = swift_getWitnessTable(protocol conformance descriptor for ArraySlice<A>, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable(protocol conformance descriptor for ArraySlice<A>, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable(protocol conformance descriptor for ArraySlice<A>, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for <A> ArraySlice<A>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + 8);
  result = swift_getWitnessTable(protocol conformance descriptor for <A> ArraySlice<A>, a2, &v5);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CollectionOfOne<UInt8> and conformance CollectionOfOne<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type CollectionOfOne<UInt8> and conformance CollectionOfOne<A>;
  if (!lazy protocol witness table cache variable for type CollectionOfOne<UInt8> and conformance CollectionOfOne<A>)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CollectionOfOne<A>, &unk_1EEEBBD60, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type CollectionOfOne<UInt8> and conformance CollectionOfOne<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Unicode.ASCII.Parser and conformance Unicode.ASCII.Parser(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type Unicode.ASCII.Parser and conformance Unicode.ASCII.Parser;
  if (!lazy protocol witness table cache variable for type Unicode.ASCII.Parser and conformance Unicode.ASCII.Parser)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Unicode.ASCII.Parser, &type metadata for Unicode.ASCII.Parser, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Unicode.ASCII.Parser and conformance Unicode.ASCII.Parser);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type Unicode.ASCII and conformance Unicode.ASCII;
  if (!lazy protocol witness table cache variable for type Unicode.ASCII and conformance Unicode.ASCII)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Unicode.ASCII, &type metadata for Unicode.ASCII, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Unicode.ASCII and conformance Unicode.ASCII);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _SliceBuffer<Swift.AnyObject> and conformance _SliceBuffer<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type _SliceBuffer<Swift.AnyObject> and conformance _SliceBuffer<A>;
  if (!lazy protocol witness table cache variable for type _SliceBuffer<Swift.AnyObject> and conformance _SliceBuffer<A>)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _SliceBuffer<A>, &unk_1EEEBBCC8, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type _SliceBuffer<Swift.AnyObject> and conformance _SliceBuffer<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _SliceBuffer<Swift.AnyObject> and conformance _SliceBuffer<A>;
  if (!lazy protocol witness table cache variable for type _SliceBuffer<Swift.AnyObject> and conformance _SliceBuffer<A>)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _SliceBuffer<A>, &unk_1EEEBBCC8, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type _SliceBuffer<Swift.AnyObject> and conformance _SliceBuffer<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _SliceBuffer<Swift.AnyObject> and conformance _SliceBuffer<A>;
  if (!lazy protocol witness table cache variable for type _SliceBuffer<Swift.AnyObject> and conformance _SliceBuffer<A>)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _SliceBuffer<A>, &unk_1EEEBBCC8, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type _SliceBuffer<Swift.AnyObject> and conformance _SliceBuffer<A>);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for _CocoaArrayWrapper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table accessor for type _CocoaArrayWrapper and conformance _CocoaArrayWrapper(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type _CocoaArrayWrapper and conformance _CocoaArrayWrapper(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type _CocoaArrayWrapper and conformance _CocoaArrayWrapper(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type _CocoaArrayWrapper and conformance _CocoaArrayWrapper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type _CocoaArrayWrapper and conformance _CocoaArrayWrapper;
  if (!lazy protocol witness table cache variable for type _CocoaArrayWrapper and conformance _CocoaArrayWrapper)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _CocoaArrayWrapper, &type metadata for _CocoaArrayWrapper, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type _CocoaArrayWrapper and conformance _CocoaArrayWrapper);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _CocoaArrayWrapper and conformance _CocoaArrayWrapper;
  if (!lazy protocol witness table cache variable for type _CocoaArrayWrapper and conformance _CocoaArrayWrapper)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _CocoaArrayWrapper, &type metadata for _CocoaArrayWrapper, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type _CocoaArrayWrapper and conformance _CocoaArrayWrapper);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _CocoaArrayWrapper and conformance _CocoaArrayWrapper;
  if (!lazy protocol witness table cache variable for type _CocoaArrayWrapper and conformance _CocoaArrayWrapper)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _CocoaArrayWrapper, &type metadata for _CocoaArrayWrapper, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type _CocoaArrayWrapper and conformance _CocoaArrayWrapper);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for ContiguousArray<A>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  return instantiation function for generic protocol witness table for _ArrayBuffer<A>(a1, a2, a3, protocol conformance descriptor for ContiguousArray<A>, protocol conformance descriptor for ContiguousArray<A>);
}

{
  result = swift_getWitnessTable(protocol conformance descriptor for ContiguousArray<A>, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable(protocol conformance descriptor for ContiguousArray<A>, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable(protocol conformance descriptor for ContiguousArray<A>, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for <A> ContiguousArray<A>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + 8);
  result = swift_getWitnessTable(protocol conformance descriptor for <A> ContiguousArray<A>, a2, &v5);
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for <> ClosedRange<A>(uint64_t a1, unint64_t a2, __int128 *a3)
{
  v5 = *a3;
  result = swift_getWitnessTable(protocol conformance descriptor for <> ClosedRange<A>, a2, &v5);
  *(a1 + 8) = result;
  return result;
}

{
  v5 = *a3;
  result = swift_getWitnessTable(protocol conformance descriptor for <> ClosedRange<A>, a2, &v5);
  *(a1 + 8) = result;
  return result;
}

{
  v5 = *a3;
  result = swift_getWitnessTable(protocol conformance descriptor for <> ClosedRange<A>, a2, &v5);
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for _ContiguousArrayBuffer<A>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  return instantiation function for generic protocol witness table for _ArrayBuffer<A>(a1, a2, a3, protocol conformance descriptor for _ContiguousArrayBuffer<A>, protocol conformance descriptor for _ContiguousArrayBuffer<A>);
}

{
  result = swift_getWitnessTable(protocol conformance descriptor for _ContiguousArrayBuffer<A>, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable(protocol conformance descriptor for _ContiguousArrayBuffer<A>, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable(protocol conformance descriptor for _ContiguousArrayBuffer<A>, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for <> DiscontiguousSlice<A>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + 8);
  result = swift_getWitnessTable(protocol conformance descriptor for <> DiscontiguousSlice<A>, a2, &v5);
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable(protocol conformance descriptor for DiscontiguousSlice<A>, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for DiscontiguousSlice<A>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable(protocol conformance descriptor for DiscontiguousSlice<A>, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for <> LazyDropWhileSequence<A>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable(protocol conformance descriptor for LazyDropWhileSequence<A>, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  v5 = *(*a3 + 8);
  result = swift_getWitnessTable(protocol conformance descriptor for <> LazyDropWhileSequence<A>, a2, &v5);
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for EmptyCollection<A>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable(protocol conformance descriptor for EmptyCollection<A>, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable(protocol conformance descriptor for EmptyCollection<A>, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable(protocol conformance descriptor for EmptyCollection<A>, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for <> EnumeratedSequence<A>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable(protocol conformance descriptor for EnumeratedSequence<A>, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  v5 = *(*(*a3 + 8) + 8);
  result = swift_getWitnessTable(protocol conformance descriptor for <> EnumeratedSequence<A>, a2, &v5);
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for <> EnumeratedSequence<A>(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  result = swift_getWitnessTable(protocol conformance descriptor for <> EnumeratedSequence<A>, a2, &v5);
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for AnyCollection<A>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable(protocol conformance descriptor for AnyCollection<A>, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable(protocol conformance descriptor for AnyCollection<A>, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for AnyBidirectionalCollection<A>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable(protocol conformance descriptor for AnyBidirectionalCollection<A>, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable(protocol conformance descriptor for AnyBidirectionalCollection<A>, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for AnyRandomAccessCollection<A>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable(protocol conformance descriptor for AnyRandomAccessCollection<A>, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable(protocol conformance descriptor for AnyRandomAccessCollection<A>, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable(protocol conformance descriptor for AnyRandomAccessCollection<A>, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for <> LazyFilterSequence<A>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable(protocol conformance descriptor for LazyFilterSequence<A>, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  v5 = *(*a3 + 8);
  result = swift_getWitnessTable(protocol conformance descriptor for <> LazyFilterSequence<A>, a2, &v5);
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for <> FlattenSequence<A>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable(protocol conformance descriptor for FlattenSequence<A>, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t associated type witness table accessor for Collection.Indices : BidirectionalCollection in <> ClosedRange<A>(unint64_t a1, unint64_t a2, uint64_t a3, int *a4, int *a5)
{
  v9 = vextq_s8(*(a3 - 16), *(a3 - 16), 8uLL);
  WitnessTable = swift_getWitnessTable(a4, a2, &v9);
  return swift_getWitnessTable(a5, a1, &WitnessTable);
}

unint64_t instantiation function for generic protocol witness table for DefaultIndices<A>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable(protocol conformance descriptor for DefaultIndices<A>, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for <> DefaultIndices<A>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable(protocol conformance descriptor for DefaultIndices<A>, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  v5 = *(*a3 + 8);
  result = swift_getWitnessTable(protocol conformance descriptor for <> DefaultIndices<A>, a2, &v5);
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for KeyValuePairs<A, B>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable(protocol conformance descriptor for KeyValuePairs<A, B>, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable(protocol conformance descriptor for KeyValuePairs<A, B>, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable(protocol conformance descriptor for KeyValuePairs<A, B>, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for <> LazySequence<A>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable(protocol conformance descriptor for LazySequence<A>, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  v5 = *(*a3 + 8);
  result = swift_getWitnessTable(protocol conformance descriptor for <> LazySequence<A>, a2, &v5);
  *(a1 + 8) = result;
  return result;
}

{
  v5 = *(*a3 + 8);
  result = swift_getWitnessTable(protocol conformance descriptor for <> LazySequence<A>, a2, &v5);
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for <> LazyMapSequence<A, B>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable(protocol conformance descriptor for LazyMapSequence<A, B>, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  v5 = *(*a3 + 8);
  result = swift_getWitnessTable(protocol conformance descriptor for <> LazyMapSequence<A, B>, a2, &v5);
  *(a1 + 8) = result;
  return result;
}

{
  v5 = *(*a3 + 8);
  result = swift_getWitnessTable(protocol conformance descriptor for <> LazyMapSequence<A, B>, a2, &v5);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<Unicode.Scalar.UTF16View> and conformance <> Slice<A>()
{
  result = lazy protocol witness table cache variable for type Slice<Unicode.Scalar.UTF16View> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<Unicode.Scalar.UTF16View> and conformance <> Slice<A>)
  {
    v6[3] = v0;
    v6[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVys7UnicodeO6ScalarV9UTF16ViewVGMd, _ss5SliceVys7UnicodeO6ScalarV9UTF16ViewVGMR);
    v6[0] = lazy protocol witness table accessor for type Unicode.Scalar.UTF16View and conformance Unicode.Scalar.UTF16View(v3, v4, v5);
    result = swift_getWitnessTable(protocol conformance descriptor for <> Slice<A>, v3, v6);
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<Unicode.Scalar.UTF16View> and conformance <> Slice<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Slice<Unicode.Scalar.UTF16View> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<Unicode.Scalar.UTF16View> and conformance <> Slice<A>)
  {
    v6[3] = v0;
    v6[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVys7UnicodeO6ScalarV9UTF16ViewVGMd, _ss5SliceVys7UnicodeO6ScalarV9UTF16ViewVGMR);
    v6[0] = lazy protocol witness table accessor for type Unicode.Scalar.UTF16View and conformance Unicode.Scalar.UTF16View(v3, v4, v5);
    result = swift_getWitnessTable(protocol conformance descriptor for <> Slice<A>, v3, v6);
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<Unicode.Scalar.UTF16View> and conformance <> Slice<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Unicode.Scalar.UTF16View and conformance Unicode.Scalar.UTF16View(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type Unicode.Scalar.UTF16View and conformance Unicode.Scalar.UTF16View;
  if (!lazy protocol witness table cache variable for type Unicode.Scalar.UTF16View and conformance Unicode.Scalar.UTF16View)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Unicode.Scalar.UTF16View, &type metadata for Unicode.Scalar.UTF16View, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Unicode.Scalar.UTF16View and conformance Unicode.Scalar.UTF16View);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Unicode.Scalar.UTF16View and conformance Unicode.Scalar.UTF16View;
  if (!lazy protocol witness table cache variable for type Unicode.Scalar.UTF16View and conformance Unicode.Scalar.UTF16View)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Unicode.Scalar.UTF16View, &type metadata for Unicode.Scalar.UTF16View, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Unicode.Scalar.UTF16View and conformance Unicode.Scalar.UTF16View);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Unicode.Scalar.UTF16View and conformance Unicode.Scalar.UTF16View;
  if (!lazy protocol witness table cache variable for type Unicode.Scalar.UTF16View and conformance Unicode.Scalar.UTF16View)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Unicode.Scalar.UTF16View, &type metadata for Unicode.Scalar.UTF16View, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Unicode.Scalar.UTF16View and conformance Unicode.Scalar.UTF16View);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Unicode.Scalar.UTF16View and conformance Unicode.Scalar.UTF16View;
  if (!lazy protocol witness table cache variable for type Unicode.Scalar.UTF16View and conformance Unicode.Scalar.UTF16View)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Unicode.Scalar.UTF16View, &type metadata for Unicode.Scalar.UTF16View, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Unicode.Scalar.UTF16View and conformance Unicode.Scalar.UTF16View);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for Unicode.Scalar.UTF16View(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table accessor for type Unicode.Scalar.UTF16View and conformance Unicode.Scalar.UTF16View(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type Unicode.Scalar.UTF16View and conformance Unicode.Scalar.UTF16View(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type Unicode.Scalar.UTF16View and conformance Unicode.Scalar.UTF16View(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<Unicode.Scalar.UTF8View> and conformance <> Slice<A>()
{
  result = lazy protocol witness table cache variable for type Slice<Unicode.Scalar.UTF8View> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<Unicode.Scalar.UTF8View> and conformance <> Slice<A>)
  {
    v6[3] = v0;
    v6[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVys7UnicodeO6ScalarV8UTF8ViewVGMd, _ss5SliceVys7UnicodeO6ScalarV8UTF8ViewVGMR);
    v6[0] = lazy protocol witness table accessor for type Unicode.Scalar.UTF8View and conformance Unicode.Scalar.UTF8View(v3, v4, v5);
    result = swift_getWitnessTable(protocol conformance descriptor for <> Slice<A>, v3, v6);
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<Unicode.Scalar.UTF8View> and conformance <> Slice<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Slice<Unicode.Scalar.UTF8View> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<Unicode.Scalar.UTF8View> and conformance <> Slice<A>)
  {
    v6[3] = v0;
    v6[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVys7UnicodeO6ScalarV8UTF8ViewVGMd, _ss5SliceVys7UnicodeO6ScalarV8UTF8ViewVGMR);
    v6[0] = lazy protocol witness table accessor for type Unicode.Scalar.UTF8View and conformance Unicode.Scalar.UTF8View(v3, v4, v5);
    result = swift_getWitnessTable(protocol conformance descriptor for <> Slice<A>, v3, v6);
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<Unicode.Scalar.UTF8View> and conformance <> Slice<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Unicode.Scalar.UTF8View and conformance Unicode.Scalar.UTF8View(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type Unicode.Scalar.UTF8View and conformance Unicode.Scalar.UTF8View;
  if (!lazy protocol witness table cache variable for type Unicode.Scalar.UTF8View and conformance Unicode.Scalar.UTF8View)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Unicode.Scalar.UTF8View, &type metadata for Unicode.Scalar.UTF8View, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Unicode.Scalar.UTF8View and conformance Unicode.Scalar.UTF8View);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Unicode.Scalar.UTF8View and conformance Unicode.Scalar.UTF8View;
  if (!lazy protocol witness table cache variable for type Unicode.Scalar.UTF8View and conformance Unicode.Scalar.UTF8View)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Unicode.Scalar.UTF8View, &type metadata for Unicode.Scalar.UTF8View, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Unicode.Scalar.UTF8View and conformance Unicode.Scalar.UTF8View);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Unicode.Scalar.UTF8View and conformance Unicode.Scalar.UTF8View;
  if (!lazy protocol witness table cache variable for type Unicode.Scalar.UTF8View and conformance Unicode.Scalar.UTF8View)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Unicode.Scalar.UTF8View, &type metadata for Unicode.Scalar.UTF8View, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Unicode.Scalar.UTF8View and conformance Unicode.Scalar.UTF8View);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Unicode.Scalar.UTF8View and conformance Unicode.Scalar.UTF8View;
  if (!lazy protocol witness table cache variable for type Unicode.Scalar.UTF8View and conformance Unicode.Scalar.UTF8View)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Unicode.Scalar.UTF8View, &type metadata for Unicode.Scalar.UTF8View, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Unicode.Scalar.UTF8View and conformance Unicode.Scalar.UTF8View);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for Unicode.Scalar.UTF8View(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table accessor for type Unicode.Scalar.UTF8View and conformance Unicode.Scalar.UTF8View(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type Unicode.Scalar.UTF8View and conformance Unicode.Scalar.UTF8View(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type Unicode.Scalar.UTF8View and conformance Unicode.Scalar.UTF8View(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for <A> A?(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + 8);
  result = swift_getWitnessTable(protocol conformance descriptor for <A> A?, a2, &v5);
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for <> LazyPrefixWhileSequence<A>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable(protocol conformance descriptor for LazyPrefixWhileSequence<A>, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  v5 = *(*a3 + 8);
  result = swift_getWitnessTable(protocol conformance descriptor for <> LazyPrefixWhileSequence<A>, a2, &v5);
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for <> LazyDropWhileSequence<A>(uint64_t a1, unint64_t a2, uint64_t *a3, int *a4, int *a5)
{
  v10 = *a3;
  *(a1 + 8) = swift_getWitnessTable(a4, a2, &v10);
  result = swift_getWitnessTable(a5, a2, v8);
  *(a1 + 16) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for <> Range<A>(uint64_t a1, unint64_t a2, __int128 *a3)
{
  v5 = *a3;
  result = swift_getWitnessTable(protocol conformance descriptor for <> Range<A>, a2, &v5);
  *(a1 + 8) = result;
  return result;
}

{
  v5 = *a3;
  result = swift_getWitnessTable(protocol conformance descriptor for <> Range<A>, a2, &v5);
  *(a1 + 8) = result;
  return result;
}

{
  v5 = *a3;
  result = swift_getWitnessTable(protocol conformance descriptor for <> Range<A>, a2, &v5);
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for RangeSet<A>.Ranges(uint64_t a1, unint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable(protocol conformance descriptor for RangeSet<A>.Ranges, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable(protocol conformance descriptor for RangeSet<A>.Ranges, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable(protocol conformance descriptor for RangeSet<A>.Ranges, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for Repeated<A>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable(protocol conformance descriptor for Repeated<A>, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable(protocol conformance descriptor for Repeated<A>, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable(protocol conformance descriptor for Repeated<A>, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for <> FlattenSequence<A>(uint64_t a1, unint64_t a2, void *a3, int *a4)
{
  v5 = *(a3[1] + 8);
  v7[0] = *(*a3 + 8);
  v7[1] = v5;
  result = swift_getWitnessTable(a4, a2, v7);
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for ReversedCollection<A>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable(protocol conformance descriptor for ReversedCollection<A>, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable(protocol conformance descriptor for ReversedCollection<A>, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t associated type witness table accessor for Collection.Indices : BidirectionalCollection in <> DiscontiguousSlice<A>(unint64_t a1, unint64_t a2, uint64_t a3, int *a4, int *a5)
{
  v9 = *(a3 - 8);
  WitnessTable = swift_getWitnessTable(a4, a2, &v9);
  return swift_getWitnessTable(a5, a1, &WitnessTable);
}

unint64_t instantiation function for generic protocol witness table for <> ReversedCollection<A>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable(protocol conformance descriptor for ReversedCollection<A>, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for Set<A>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable(protocol conformance descriptor for Set<A>, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable(protocol conformance descriptor for Set<A>, a2, a3);
  *(a1 + 16) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for Slice<A>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable(protocol conformance descriptor for Slice<A>, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for <> Slice<A>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable(protocol conformance descriptor for Slice<A>, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  v5 = *(*a3 + 8);
  result = swift_getWitnessTable(protocol conformance descriptor for <> Slice<A>, a2, &v5);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type _SmallString and conformance _SmallString(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type _SmallString and conformance _SmallString;
  if (!lazy protocol witness table cache variable for type _SmallString and conformance _SmallString)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _SmallString, &type metadata for _SmallString, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type _SmallString and conformance _SmallString);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _SmallString and conformance _SmallString;
  if (!lazy protocol witness table cache variable for type _SmallString and conformance _SmallString)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _SmallString, &type metadata for _SmallString, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type _SmallString and conformance _SmallString);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _SmallString and conformance _SmallString;
  if (!lazy protocol witness table cache variable for type _SmallString and conformance _SmallString)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _SmallString, &type metadata for _SmallString, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type _SmallString and conformance _SmallString);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _SmallString and conformance _SmallString;
  if (!lazy protocol witness table cache variable for type _SmallString and conformance _SmallString)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _SmallString, &type metadata for _SmallString, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type _SmallString and conformance _SmallString);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _SmallString and conformance _SmallString;
  if (!lazy protocol witness table cache variable for type _SmallString and conformance _SmallString)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _SmallString, &type metadata for _SmallString, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type _SmallString and conformance _SmallString);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for _SmallString(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table accessor for type _SmallString and conformance _SmallString(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type _SmallString and conformance _SmallString(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type _SmallString and conformance _SmallString(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type DefaultIndices<String> and conformance <> DefaultIndices<A>()
{
  result = lazy protocol witness table cache variable for type DefaultIndices<String> and conformance <> DefaultIndices<A>;
  if (!lazy protocol witness table cache variable for type DefaultIndices<String> and conformance <> DefaultIndices<A>)
  {
    v6[3] = v0;
    v6[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSIySSGMd, _sSIySSGMR);
    v6[0] = lazy protocol witness table accessor for type String and conformance String(v3, v4, v5);
    result = swift_getWitnessTable(protocol conformance descriptor for <> DefaultIndices<A>, v3, v6);
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultIndices<String> and conformance <> DefaultIndices<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type String and conformance String(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for String, &type metadata for String, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for String, &type metadata for String, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Substring and conformance Substring(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type Substring and conformance Substring;
  if (!lazy protocol witness table cache variable for type Substring and conformance Substring)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Substring, &type metadata for Substring, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Substring and conformance Substring);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Substring and conformance Substring;
  if (!lazy protocol witness table cache variable for type Substring and conformance Substring)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Substring, &type metadata for Substring, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Substring and conformance Substring);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Substring and conformance Substring;
  if (!lazy protocol witness table cache variable for type Substring and conformance Substring)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Substring, &type metadata for Substring, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Substring and conformance Substring);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Substring and conformance Substring;
  if (!lazy protocol witness table cache variable for type Substring and conformance Substring)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Substring, &type metadata for Substring, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Substring and conformance Substring);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Substring and conformance Substring;
  if (!lazy protocol witness table cache variable for type Substring and conformance Substring)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Substring, &type metadata for Substring, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Substring and conformance Substring);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for String(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table accessor for type String and conformance String(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type String and conformance String(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type String.UTF16View and conformance String.UTF16View(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type String.UTF16View and conformance String.UTF16View;
  if (!lazy protocol witness table cache variable for type String.UTF16View and conformance String.UTF16View)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for String.UTF16View, &type metadata for String.UTF16View, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type String.UTF16View and conformance String.UTF16View);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String.UTF16View and conformance String.UTF16View;
  if (!lazy protocol witness table cache variable for type String.UTF16View and conformance String.UTF16View)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for String.UTF16View, &type metadata for String.UTF16View, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type String.UTF16View and conformance String.UTF16View);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type String.UTF8View and conformance String.UTF8View(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type String.UTF8View and conformance String.UTF8View;
  if (!lazy protocol witness table cache variable for type String.UTF8View and conformance String.UTF8View)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for String.UTF8View, &type metadata for String.UTF8View, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type String.UTF8View and conformance String.UTF8View);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String.UTF8View and conformance String.UTF8View;
  if (!lazy protocol witness table cache variable for type String.UTF8View and conformance String.UTF8View)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for String.UTF8View, &type metadata for String.UTF8View, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type String.UTF8View and conformance String.UTF8View);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String.UTF8View and conformance String.UTF8View;
  if (!lazy protocol witness table cache variable for type String.UTF8View and conformance String.UTF8View)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for String.UTF8View, &type metadata for String.UTF8View, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type String.UTF8View and conformance String.UTF8View);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type String.UnicodeScalarView and conformance String.UnicodeScalarView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type String.UnicodeScalarView and conformance String.UnicodeScalarView;
  if (!lazy protocol witness table cache variable for type String.UnicodeScalarView and conformance String.UnicodeScalarView)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for String.UnicodeScalarView, &type metadata for String.UnicodeScalarView, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type String.UnicodeScalarView and conformance String.UnicodeScalarView);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String.UnicodeScalarView and conformance String.UnicodeScalarView;
  if (!lazy protocol witness table cache variable for type String.UnicodeScalarView and conformance String.UnicodeScalarView)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for String.UnicodeScalarView, &type metadata for String.UnicodeScalarView, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type String.UnicodeScalarView and conformance String.UnicodeScalarView);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type DefaultIndices<String.UnicodeScalarView> and conformance <> DefaultIndices<A>()
{
  result = lazy protocol witness table cache variable for type DefaultIndices<String.UnicodeScalarView> and conformance <> DefaultIndices<A>;
  if (!lazy protocol witness table cache variable for type DefaultIndices<String.UnicodeScalarView> and conformance <> DefaultIndices<A>)
  {
    v6[3] = v0;
    v6[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSIySS17UnicodeScalarViewVGMd, _sSIySS17UnicodeScalarViewVGMR);
    v6[0] = lazy protocol witness table accessor for type String.UnicodeScalarView and conformance String.UnicodeScalarView(v3, v4, v5);
    result = swift_getWitnessTable(protocol conformance descriptor for <> DefaultIndices<A>, v3, v6);
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultIndices<String.UnicodeScalarView> and conformance <> DefaultIndices<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Substring.UnicodeScalarView and conformance Substring.UnicodeScalarView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type Substring.UnicodeScalarView and conformance Substring.UnicodeScalarView;
  if (!lazy protocol witness table cache variable for type Substring.UnicodeScalarView and conformance Substring.UnicodeScalarView)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Substring.UnicodeScalarView, &type metadata for Substring.UnicodeScalarView, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Substring.UnicodeScalarView and conformance Substring.UnicodeScalarView);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Substring.UnicodeScalarView and conformance Substring.UnicodeScalarView;
  if (!lazy protocol witness table cache variable for type Substring.UnicodeScalarView and conformance Substring.UnicodeScalarView)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Substring.UnicodeScalarView, &type metadata for Substring.UnicodeScalarView, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Substring.UnicodeScalarView and conformance Substring.UnicodeScalarView);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Substring.UnicodeScalarView and conformance Substring.UnicodeScalarView;
  if (!lazy protocol witness table cache variable for type Substring.UnicodeScalarView and conformance Substring.UnicodeScalarView)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Substring.UnicodeScalarView, &type metadata for Substring.UnicodeScalarView, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Substring.UnicodeScalarView and conformance Substring.UnicodeScalarView);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Substring.UnicodeScalarView and conformance Substring.UnicodeScalarView;
  if (!lazy protocol witness table cache variable for type Substring.UnicodeScalarView and conformance Substring.UnicodeScalarView)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Substring.UnicodeScalarView, &type metadata for Substring.UnicodeScalarView, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Substring.UnicodeScalarView and conformance Substring.UnicodeScalarView);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for String.UnicodeScalarView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table accessor for type String.UnicodeScalarView and conformance String.UnicodeScalarView(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type DefaultIndices<String.UTF16View> and conformance <> DefaultIndices<A>()
{
  result = lazy protocol witness table cache variable for type DefaultIndices<String.UTF16View> and conformance <> DefaultIndices<A>;
  if (!lazy protocol witness table cache variable for type DefaultIndices<String.UTF16View> and conformance <> DefaultIndices<A>)
  {
    v6[3] = v0;
    v6[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSIySS9UTF16ViewVGMd, _sSIySS9UTF16ViewVGMR);
    v6[0] = lazy protocol witness table accessor for type String.UTF16View and conformance String.UTF16View(v3, v4, v5);
    result = swift_getWitnessTable(protocol conformance descriptor for <> DefaultIndices<A>, v3, v6);
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultIndices<String.UTF16View> and conformance <> DefaultIndices<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Substring.UTF16View and conformance Substring.UTF16View(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type Substring.UTF16View and conformance Substring.UTF16View;
  if (!lazy protocol witness table cache variable for type Substring.UTF16View and conformance Substring.UTF16View)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Substring.UTF16View, &type metadata for Substring.UTF16View, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Substring.UTF16View and conformance Substring.UTF16View);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Substring.UTF16View and conformance Substring.UTF16View;
  if (!lazy protocol witness table cache variable for type Substring.UTF16View and conformance Substring.UTF16View)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Substring.UTF16View, &type metadata for Substring.UTF16View, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Substring.UTF16View and conformance Substring.UTF16View);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Substring.UTF16View and conformance Substring.UTF16View;
  if (!lazy protocol witness table cache variable for type Substring.UTF16View and conformance Substring.UTF16View)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Substring.UTF16View, &type metadata for Substring.UTF16View, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Substring.UTF16View and conformance Substring.UTF16View);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for String.UTF16View(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table accessor for type String.UTF16View and conformance String.UTF16View(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type DefaultIndices<String.UTF8View> and conformance <> DefaultIndices<A>()
{
  result = lazy protocol witness table cache variable for type DefaultIndices<String.UTF8View> and conformance <> DefaultIndices<A>;
  if (!lazy protocol witness table cache variable for type DefaultIndices<String.UTF8View> and conformance <> DefaultIndices<A>)
  {
    v6[3] = v0;
    v6[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSIySS8UTF8ViewVGMd, _sSIySS8UTF8ViewVGMR);
    v6[0] = lazy protocol witness table accessor for type String.UTF8View and conformance String.UTF8View(v3, v4, v5);
    result = swift_getWitnessTable(protocol conformance descriptor for <> DefaultIndices<A>, v3, v6);
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultIndices<String.UTF8View> and conformance <> DefaultIndices<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Substring.UTF8View and conformance Substring.UTF8View(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type Substring.UTF8View and conformance Substring.UTF8View;
  if (!lazy protocol witness table cache variable for type Substring.UTF8View and conformance Substring.UTF8View)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Substring.UTF8View, &type metadata for Substring.UTF8View, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Substring.UTF8View and conformance Substring.UTF8View);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Substring.UTF8View and conformance Substring.UTF8View;
  if (!lazy protocol witness table cache variable for type Substring.UTF8View and conformance Substring.UTF8View)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Substring.UTF8View, &type metadata for Substring.UTF8View, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Substring.UTF8View and conformance Substring.UTF8View);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Substring.UTF8View and conformance Substring.UTF8View;
  if (!lazy protocol witness table cache variable for type Substring.UTF8View and conformance Substring.UTF8View)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Substring.UTF8View, &type metadata for Substring.UTF8View, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Substring.UTF8View and conformance Substring.UTF8View);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for String.UTF8View(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table accessor for type String.UTF8View and conformance String.UTF8View(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type String.UTF8View and conformance String.UTF8View(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for Substring(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table accessor for type Substring and conformance Substring(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type Substring and conformance Substring(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type Substring and conformance Substring(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type DefaultIndices<Substring> and conformance <> DefaultIndices<A>()
{
  result = lazy protocol witness table cache variable for type DefaultIndices<Substring> and conformance <> DefaultIndices<A>;
  if (!lazy protocol witness table cache variable for type DefaultIndices<Substring> and conformance <> DefaultIndices<A>)
  {
    v6[3] = v0;
    v6[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSIySsGMd, _sSIySsGMR);
    v6[0] = lazy protocol witness table accessor for type Substring and conformance Substring(v3, v4, v5);
    result = swift_getWitnessTable(protocol conformance descriptor for <> DefaultIndices<A>, v3, v6);
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultIndices<Substring> and conformance <> DefaultIndices<A>);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for Substring.UTF8View(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table accessor for type Substring.UTF8View and conformance Substring.UTF8View(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type Substring.UTF8View and conformance Substring.UTF8View(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for Substring.UTF16View(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table accessor for type Substring.UTF16View and conformance Substring.UTF16View(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type Substring.UTF16View and conformance Substring.UTF16View(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for Substring.UnicodeScalarView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table accessor for type Substring.UnicodeScalarView and conformance Substring.UnicodeScalarView(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type Substring.UnicodeScalarView and conformance Substring.UnicodeScalarView(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for _UIntBuffer<A>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable(protocol conformance descriptor for _UIntBuffer<A>, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable(protocol conformance descriptor for _UIntBuffer<A>, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable(protocol conformance descriptor for _UIntBuffer<A>, a2, a3);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type _ValidUTF8Buffer and conformance _ValidUTF8Buffer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type _ValidUTF8Buffer and conformance _ValidUTF8Buffer;
  if (!lazy protocol witness table cache variable for type _ValidUTF8Buffer and conformance _ValidUTF8Buffer)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _ValidUTF8Buffer, &type metadata for _ValidUTF8Buffer, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type _ValidUTF8Buffer and conformance _ValidUTF8Buffer);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _ValidUTF8Buffer and conformance _ValidUTF8Buffer;
  if (!lazy protocol witness table cache variable for type _ValidUTF8Buffer and conformance _ValidUTF8Buffer)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _ValidUTF8Buffer, &type metadata for _ValidUTF8Buffer, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type _ValidUTF8Buffer and conformance _ValidUTF8Buffer);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _ValidUTF8Buffer and conformance _ValidUTF8Buffer;
  if (!lazy protocol witness table cache variable for type _ValidUTF8Buffer and conformance _ValidUTF8Buffer)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _ValidUTF8Buffer, &type metadata for _ValidUTF8Buffer, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type _ValidUTF8Buffer and conformance _ValidUTF8Buffer);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _ValidUTF8Buffer and conformance _ValidUTF8Buffer;
  if (!lazy protocol witness table cache variable for type _ValidUTF8Buffer and conformance _ValidUTF8Buffer)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _ValidUTF8Buffer, &type metadata for _ValidUTF8Buffer, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type _ValidUTF8Buffer and conformance _ValidUTF8Buffer);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Unicode.UTF8.ReverseParser and conformance Unicode.UTF8.ReverseParser(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type Unicode.UTF8.ReverseParser and conformance Unicode.UTF8.ReverseParser;
  if (!lazy protocol witness table cache variable for type Unicode.UTF8.ReverseParser and conformance Unicode.UTF8.ReverseParser)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Unicode.UTF8.ReverseParser, &type metadata for Unicode.UTF8.ReverseParser, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Unicode.UTF8.ReverseParser and conformance Unicode.UTF8.ReverseParser);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Unicode.UTF8.ReverseParser and conformance Unicode.UTF8.ReverseParser;
  if (!lazy protocol witness table cache variable for type Unicode.UTF8.ReverseParser and conformance Unicode.UTF8.ReverseParser)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Unicode.UTF8.ReverseParser, &type metadata for Unicode.UTF8.ReverseParser, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Unicode.UTF8.ReverseParser and conformance Unicode.UTF8.ReverseParser);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Unicode.UTF16.ReverseParser and conformance Unicode.UTF16.ReverseParser(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type Unicode.UTF16.ReverseParser and conformance Unicode.UTF16.ReverseParser;
  if (!lazy protocol witness table cache variable for type Unicode.UTF16.ReverseParser and conformance Unicode.UTF16.ReverseParser)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Unicode.UTF16.ReverseParser, &type metadata for Unicode.UTF16.ReverseParser, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Unicode.UTF16.ReverseParser and conformance Unicode.UTF16.ReverseParser);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Unicode.UTF16.ReverseParser and conformance Unicode.UTF16.ReverseParser;
  if (!lazy protocol witness table cache variable for type Unicode.UTF16.ReverseParser and conformance Unicode.UTF16.ReverseParser)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Unicode.UTF16.ReverseParser, &type metadata for Unicode.UTF16.ReverseParser, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Unicode.UTF16.ReverseParser and conformance Unicode.UTF16.ReverseParser);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type Unicode.UTF16 and conformance Unicode.UTF16;
  if (!lazy protocol witness table cache variable for type Unicode.UTF16 and conformance Unicode.UTF16)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Unicode.UTF16, &type metadata for Unicode.UTF16, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Unicode.UTF16 and conformance Unicode.UTF16);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type CollectionOfOne<UInt32> and conformance CollectionOfOne<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type CollectionOfOne<UInt32> and conformance CollectionOfOne<A>;
  if (!lazy protocol witness table cache variable for type CollectionOfOne<UInt32> and conformance CollectionOfOne<A>)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CollectionOfOne<A>, &unk_1EEEBBC38, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type CollectionOfOne<UInt32> and conformance CollectionOfOne<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Unicode.UTF32.Parser and conformance Unicode.UTF32.Parser(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type Unicode.UTF32.Parser and conformance Unicode.UTF32.Parser;
  if (!lazy protocol witness table cache variable for type Unicode.UTF32.Parser and conformance Unicode.UTF32.Parser)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Unicode.UTF32.Parser, &type metadata for Unicode.UTF32.Parser, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Unicode.UTF32.Parser and conformance Unicode.UTF32.Parser);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Unicode.UTF32 and conformance Unicode.UTF32(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type Unicode.UTF32 and conformance Unicode.UTF32;
  if (!lazy protocol witness table cache variable for type Unicode.UTF32 and conformance Unicode.UTF32)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Unicode.UTF32, &type metadata for Unicode.UTF32, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Unicode.UTF32 and conformance Unicode.UTF32);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for Unicode.UTF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table accessor for type Unicode.UTF8 and conformance Unicode.UTF8(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for Unicode.UTF16(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for Unicode.UTF32(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table accessor for type Unicode.UTF32 and conformance Unicode.UTF32(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type DefaultIndices<_ValidUTF8Buffer> and conformance <> DefaultIndices<A>()
{
  result = lazy protocol witness table cache variable for type DefaultIndices<_ValidUTF8Buffer> and conformance <> DefaultIndices<A>;
  if (!lazy protocol witness table cache variable for type DefaultIndices<_ValidUTF8Buffer> and conformance <> DefaultIndices<A>)
  {
    v6[3] = v0;
    v6[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSIys16_ValidUTF8BufferVGMd, _sSIys16_ValidUTF8BufferVGMR);
    v6[0] = lazy protocol witness table accessor for type _ValidUTF8Buffer and conformance _ValidUTF8Buffer(v3, v4, v5);
    result = swift_getWitnessTable(protocol conformance descriptor for <> DefaultIndices<A>, v3, v6);
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultIndices<_ValidUTF8Buffer> and conformance <> DefaultIndices<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DefaultIndices<_ValidUTF8Buffer> and conformance <> DefaultIndices<A>;
  if (!lazy protocol witness table cache variable for type DefaultIndices<_ValidUTF8Buffer> and conformance <> DefaultIndices<A>)
  {
    v6[3] = v0;
    v6[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSIys16_ValidUTF8BufferVGMd, _sSIys16_ValidUTF8BufferVGMR);
    v6[0] = lazy protocol witness table accessor for type _ValidUTF8Buffer and conformance _ValidUTF8Buffer(v3, v4, v5);
    result = swift_getWitnessTable(protocol conformance descriptor for <> DefaultIndices<A>, v3, v6);
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultIndices<_ValidUTF8Buffer> and conformance <> DefaultIndices<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<_ValidUTF8Buffer> and conformance <> Slice<A>()
{
  result = lazy protocol witness table cache variable for type Slice<_ValidUTF8Buffer> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<_ValidUTF8Buffer> and conformance <> Slice<A>)
  {
    v6[3] = v0;
    v6[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVys16_ValidUTF8BufferVGMd, _ss5SliceVys16_ValidUTF8BufferVGMR);
    v6[0] = lazy protocol witness table accessor for type _ValidUTF8Buffer and conformance _ValidUTF8Buffer(v3, v4, v5);
    result = swift_getWitnessTable(protocol conformance descriptor for <> Slice<A>, v3, v6);
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<_ValidUTF8Buffer> and conformance <> Slice<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Slice<_ValidUTF8Buffer> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<_ValidUTF8Buffer> and conformance <> Slice<A>)
  {
    v6[3] = v0;
    v6[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVys16_ValidUTF8BufferVGMd, _ss5SliceVys16_ValidUTF8BufferVGMR);
    v6[0] = lazy protocol witness table accessor for type _ValidUTF8Buffer and conformance _ValidUTF8Buffer(v3, v4, v5);
    result = swift_getWitnessTable(protocol conformance descriptor for <> Slice<A>, v3, v6);
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<_ValidUTF8Buffer> and conformance <> Slice<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Slice<_ValidUTF8Buffer> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<_ValidUTF8Buffer> and conformance <> Slice<A>)
  {
    v6[3] = v0;
    v6[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVys16_ValidUTF8BufferVGMd, _ss5SliceVys16_ValidUTF8BufferVGMR);
    v6[0] = lazy protocol witness table accessor for type _ValidUTF8Buffer and conformance _ValidUTF8Buffer(v3, v4, v5);
    result = swift_getWitnessTable(protocol conformance descriptor for <> Slice<A>, v3, v6);
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<_ValidUTF8Buffer> and conformance <> Slice<A>);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for _ValidUTF8Buffer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table accessor for type _ValidUTF8Buffer and conformance _ValidUTF8Buffer(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type _ValidUTF8Buffer and conformance _ValidUTF8Buffer(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for CollectionDifference<A>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable(protocol conformance descriptor for CollectionDifference<A>, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for <A> CollectionDifference<A>.Change(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + 8);
  result = swift_getWitnessTable(protocol conformance descriptor for <A> CollectionDifference<A>.Change, a2, &v5);
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for <A> CollectionDifference<A>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + 8);
  result = swift_getWitnessTable(protocol conformance descriptor for <A> CollectionDifference<A>, a2, &v5);
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for CollectionOfOne<A>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable(protocol conformance descriptor for CollectionOfOne<A>, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable(protocol conformance descriptor for CollectionOfOne<A>, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable(protocol conformance descriptor for CollectionOfOne<A>, a2, a3);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type UInt128 and conformance UInt128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type UInt128 and conformance UInt128;
  if (!lazy protocol witness table cache variable for type UInt128 and conformance UInt128)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UInt128, &type metadata for UInt128, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type UInt128 and conformance UInt128);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UInt128 and conformance UInt128;
  if (!lazy protocol witness table cache variable for type UInt128 and conformance UInt128)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UInt128, &type metadata for UInt128, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type UInt128 and conformance UInt128);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UInt128 and conformance UInt128;
  if (!lazy protocol witness table cache variable for type UInt128 and conformance UInt128)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UInt128, &type metadata for UInt128, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type UInt128 and conformance UInt128);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type UInt128.Words and conformance UInt128.Words(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type UInt128.Words and conformance UInt128.Words;
  if (!lazy protocol witness table cache variable for type UInt128.Words and conformance UInt128.Words)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UInt128.Words, &type metadata for UInt128.Words, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type UInt128.Words and conformance UInt128.Words);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UInt128.Words and conformance UInt128.Words;
  if (!lazy protocol witness table cache variable for type UInt128.Words and conformance UInt128.Words)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UInt128.Words, &type metadata for UInt128.Words, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type UInt128.Words and conformance UInt128.Words);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UInt128.Words and conformance UInt128.Words;
  if (!lazy protocol witness table cache variable for type UInt128.Words and conformance UInt128.Words)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UInt128.Words, &type metadata for UInt128.Words, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type UInt128.Words and conformance UInt128.Words);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UInt128.Words and conformance UInt128.Words;
  if (!lazy protocol witness table cache variable for type UInt128.Words and conformance UInt128.Words)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UInt128.Words, &type metadata for UInt128.Words, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type UInt128.Words and conformance UInt128.Words);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Int128 and conformance Int128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type Int128 and conformance Int128;
  if (!lazy protocol witness table cache variable for type Int128 and conformance Int128)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Int128, &type metadata for Int128, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Int128 and conformance Int128);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for Int128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table accessor for type Int128 and conformance Int128(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for _SliceBuffer<A>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  return instantiation function for generic protocol witness table for _ArrayBuffer<A>(a1, a2, a3, protocol conformance descriptor for _SliceBuffer<A>, protocol conformance descriptor for _SliceBuffer<A>);
}

{
  result = swift_getWitnessTable(protocol conformance descriptor for _SliceBuffer<A>, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable(protocol conformance descriptor for _SliceBuffer<A>, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable(protocol conformance descriptor for _SliceBuffer<A>, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for _ArrayBuffer<A>(uint64_t a1, unint64_t a2, uint64_t a3, int *a4, int *a5)
{
  *(a1 + 8) = swift_getWitnessTable(a4, a2, a3);
  result = swift_getWitnessTable(a5, a2, v8);
  *(a1 + 16) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<UInt128.Words> and conformance <> Slice<A>()
{
  result = lazy protocol witness table cache variable for type Slice<UInt128.Words> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<UInt128.Words> and conformance <> Slice<A>)
  {
    v6[3] = v0;
    v6[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVys7UInt128V5WordsVGMd, _ss5SliceVys7UInt128V5WordsVGMR);
    v6[0] = lazy protocol witness table accessor for type UInt128.Words and conformance UInt128.Words(v3, v4, v5);
    result = swift_getWitnessTable(protocol conformance descriptor for <> Slice<A>, v3, v6);
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<UInt128.Words> and conformance <> Slice<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Slice<UInt128.Words> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<UInt128.Words> and conformance <> Slice<A>)
  {
    v6[3] = v0;
    v6[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVys7UInt128V5WordsVGMd, _ss5SliceVys7UInt128V5WordsVGMR);
    v6[0] = lazy protocol witness table accessor for type UInt128.Words and conformance UInt128.Words(v3, v4, v5);
    result = swift_getWitnessTable(protocol conformance descriptor for <> Slice<A>, v3, v6);
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<UInt128.Words> and conformance <> Slice<A>);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for UInt128.Words(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table accessor for type UInt128.Words and conformance UInt128.Words(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type UInt128.Words and conformance UInt128.Words(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type UInt128.Words and conformance UInt128.Words(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for UInt128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table accessor for type UInt128 and conformance UInt128(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for Float16(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table accessor for type Float16 and conformance Float16(a1, a2, a3);
  *(a1 + 16) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type Float16 and conformance Float16(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type Float16 and conformance Float16;
  if (!lazy protocol witness table cache variable for type Float16 and conformance Float16)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Float16, &type metadata for Float16, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Float16 and conformance Float16);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for Float(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table accessor for type Float and conformance Float(a1, a2, a3);
  *(a1 + 16) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type Float and conformance Float(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type Float and conformance Float;
  if (!lazy protocol witness table cache variable for type Float and conformance Float)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Float, &type metadata for Float, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Float and conformance Float);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for Double(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table accessor for type Double and conformance Double(a1, a2, a3);
  *(a1 + 16) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type Double and conformance Double(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type Double and conformance Double;
  if (!lazy protocol witness table cache variable for type Double and conformance Double)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Double, &type metadata for Double, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Double and conformance Double);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<UInt8.Words> and conformance <> Slice<A>()
{
  result = lazy protocol witness table cache variable for type Slice<UInt8.Words> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<UInt8.Words> and conformance <> Slice<A>)
  {
    v6[3] = v0;
    v6[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVys5UInt8V5WordsVGMd, _ss5SliceVys5UInt8V5WordsVGMR);
    v6[0] = lazy protocol witness table accessor for type UInt8.Words and conformance UInt8.Words(v3, v4, v5);
    result = swift_getWitnessTable(protocol conformance descriptor for <> Slice<A>, v3, v6);
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<UInt8.Words> and conformance <> Slice<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Slice<UInt8.Words> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<UInt8.Words> and conformance <> Slice<A>)
  {
    v6[3] = v0;
    v6[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVys5UInt8V5WordsVGMd, _ss5SliceVys5UInt8V5WordsVGMR);
    v6[0] = lazy protocol witness table accessor for type UInt8.Words and conformance UInt8.Words(v3, v4, v5);
    result = swift_getWitnessTable(protocol conformance descriptor for <> Slice<A>, v3, v6);
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<UInt8.Words> and conformance <> Slice<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type UInt8.Words and conformance UInt8.Words(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type UInt8.Words and conformance UInt8.Words;
  if (!lazy protocol witness table cache variable for type UInt8.Words and conformance UInt8.Words)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UInt8.Words, &type metadata for UInt8.Words, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type UInt8.Words and conformance UInt8.Words);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UInt8.Words and conformance UInt8.Words;
  if (!lazy protocol witness table cache variable for type UInt8.Words and conformance UInt8.Words)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UInt8.Words, &type metadata for UInt8.Words, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type UInt8.Words and conformance UInt8.Words);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UInt8.Words and conformance UInt8.Words;
  if (!lazy protocol witness table cache variable for type UInt8.Words and conformance UInt8.Words)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UInt8.Words, &type metadata for UInt8.Words, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type UInt8.Words and conformance UInt8.Words);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UInt8.Words and conformance UInt8.Words;
  if (!lazy protocol witness table cache variable for type UInt8.Words and conformance UInt8.Words)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UInt8.Words, &type metadata for UInt8.Words, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type UInt8.Words and conformance UInt8.Words);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for UInt8.Words(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table accessor for type UInt8.Words and conformance UInt8.Words(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type UInt8.Words and conformance UInt8.Words(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type UInt8.Words and conformance UInt8.Words(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for UInt8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table accessor for type UInt8 and conformance UInt8(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<Int8.Words> and conformance <> Slice<A>()
{
  result = lazy protocol witness table cache variable for type Slice<Int8.Words> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<Int8.Words> and conformance <> Slice<A>)
  {
    v6[3] = v0;
    v6[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVys4Int8V5WordsVGMd, _ss5SliceVys4Int8V5WordsVGMR);
    v6[0] = lazy protocol witness table accessor for type Int8.Words and conformance Int8.Words(v3, v4, v5);
    result = swift_getWitnessTable(protocol conformance descriptor for <> Slice<A>, v3, v6);
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<Int8.Words> and conformance <> Slice<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Slice<Int8.Words> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<Int8.Words> and conformance <> Slice<A>)
  {
    v6[3] = v0;
    v6[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVys4Int8V5WordsVGMd, _ss5SliceVys4Int8V5WordsVGMR);
    v6[0] = lazy protocol witness table accessor for type Int8.Words and conformance Int8.Words(v3, v4, v5);
    result = swift_getWitnessTable(protocol conformance descriptor for <> Slice<A>, v3, v6);
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<Int8.Words> and conformance <> Slice<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Int8.Words and conformance Int8.Words(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type Int8.Words and conformance Int8.Words;
  if (!lazy protocol witness table cache variable for type Int8.Words and conformance Int8.Words)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Int8.Words, &type metadata for Int8.Words, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Int8.Words and conformance Int8.Words);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int8.Words and conformance Int8.Words;
  if (!lazy protocol witness table cache variable for type Int8.Words and conformance Int8.Words)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Int8.Words, &type metadata for Int8.Words, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Int8.Words and conformance Int8.Words);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int8.Words and conformance Int8.Words;
  if (!lazy protocol witness table cache variable for type Int8.Words and conformance Int8.Words)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Int8.Words, &type metadata for Int8.Words, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Int8.Words and conformance Int8.Words);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int8.Words and conformance Int8.Words;
  if (!lazy protocol witness table cache variable for type Int8.Words and conformance Int8.Words)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Int8.Words, &type metadata for Int8.Words, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Int8.Words and conformance Int8.Words);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for Int8.Words(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table accessor for type Int8.Words and conformance Int8.Words(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type Int8.Words and conformance Int8.Words(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type Int8.Words and conformance Int8.Words(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type Int8 and conformance Int8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type Int8 and conformance Int8;
  if (!lazy protocol witness table cache variable for type Int8 and conformance Int8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Int8, &type metadata for Int8, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Int8 and conformance Int8);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int8 and conformance Int8;
  if (!lazy protocol witness table cache variable for type Int8 and conformance Int8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Int8, &type metadata for Int8, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Int8 and conformance Int8);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int8 and conformance Int8;
  if (!lazy protocol witness table cache variable for type Int8 and conformance Int8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Int8, &type metadata for Int8, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Int8 and conformance Int8);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int8 and conformance Int8;
  if (!lazy protocol witness table cache variable for type Int8 and conformance Int8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Int8, &type metadata for Int8, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Int8 and conformance Int8);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for Int8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table accessor for type Int8 and conformance Int8(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<UInt16.Words> and conformance <> Slice<A>()
{
  result = lazy protocol witness table cache variable for type Slice<UInt16.Words> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<UInt16.Words> and conformance <> Slice<A>)
  {
    v6[3] = v0;
    v6[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVys6UInt16V5WordsVGMd, _ss5SliceVys6UInt16V5WordsVGMR);
    v6[0] = lazy protocol witness table accessor for type UInt16.Words and conformance UInt16.Words(v3, v4, v5);
    result = swift_getWitnessTable(protocol conformance descriptor for <> Slice<A>, v3, v6);
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<UInt16.Words> and conformance <> Slice<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Slice<UInt16.Words> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<UInt16.Words> and conformance <> Slice<A>)
  {
    v6[3] = v0;
    v6[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVys6UInt16V5WordsVGMd, _ss5SliceVys6UInt16V5WordsVGMR);
    v6[0] = lazy protocol witness table accessor for type UInt16.Words and conformance UInt16.Words(v3, v4, v5);
    result = swift_getWitnessTable(protocol conformance descriptor for <> Slice<A>, v3, v6);
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<UInt16.Words> and conformance <> Slice<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type UInt16.Words and conformance UInt16.Words(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type UInt16.Words and conformance UInt16.Words;
  if (!lazy protocol witness table cache variable for type UInt16.Words and conformance UInt16.Words)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UInt16.Words, &type metadata for UInt16.Words, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type UInt16.Words and conformance UInt16.Words);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UInt16.Words and conformance UInt16.Words;
  if (!lazy protocol witness table cache variable for type UInt16.Words and conformance UInt16.Words)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UInt16.Words, &type metadata for UInt16.Words, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type UInt16.Words and conformance UInt16.Words);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UInt16.Words and conformance UInt16.Words;
  if (!lazy protocol witness table cache variable for type UInt16.Words and conformance UInt16.Words)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UInt16.Words, &type metadata for UInt16.Words, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type UInt16.Words and conformance UInt16.Words);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UInt16.Words and conformance UInt16.Words;
  if (!lazy protocol witness table cache variable for type UInt16.Words and conformance UInt16.Words)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UInt16.Words, &type metadata for UInt16.Words, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type UInt16.Words and conformance UInt16.Words);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for UInt16.Words(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table accessor for type UInt16.Words and conformance UInt16.Words(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type UInt16.Words and conformance UInt16.Words(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type UInt16.Words and conformance UInt16.Words(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for UInt16(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table accessor for type UInt16 and conformance UInt16(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<Int16.Words> and conformance <> Slice<A>()
{
  result = lazy protocol witness table cache variable for type Slice<Int16.Words> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<Int16.Words> and conformance <> Slice<A>)
  {
    v6[3] = v0;
    v6[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVys5Int16V5WordsVGMd, _ss5SliceVys5Int16V5WordsVGMR);
    v6[0] = lazy protocol witness table accessor for type Int16.Words and conformance Int16.Words(v3, v4, v5);
    result = swift_getWitnessTable(protocol conformance descriptor for <> Slice<A>, v3, v6);
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<Int16.Words> and conformance <> Slice<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Slice<Int16.Words> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<Int16.Words> and conformance <> Slice<A>)
  {
    v6[3] = v0;
    v6[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVys5Int16V5WordsVGMd, _ss5SliceVys5Int16V5WordsVGMR);
    v6[0] = lazy protocol witness table accessor for type Int16.Words and conformance Int16.Words(v3, v4, v5);
    result = swift_getWitnessTable(protocol conformance descriptor for <> Slice<A>, v3, v6);
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<Int16.Words> and conformance <> Slice<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Int16.Words and conformance Int16.Words(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type Int16.Words and conformance Int16.Words;
  if (!lazy protocol witness table cache variable for type Int16.Words and conformance Int16.Words)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Int16.Words, &type metadata for Int16.Words, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Int16.Words and conformance Int16.Words);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int16.Words and conformance Int16.Words;
  if (!lazy protocol witness table cache variable for type Int16.Words and conformance Int16.Words)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Int16.Words, &type metadata for Int16.Words, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Int16.Words and conformance Int16.Words);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int16.Words and conformance Int16.Words;
  if (!lazy protocol witness table cache variable for type Int16.Words and conformance Int16.Words)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Int16.Words, &type metadata for Int16.Words, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Int16.Words and conformance Int16.Words);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int16.Words and conformance Int16.Words;
  if (!lazy protocol witness table cache variable for type Int16.Words and conformance Int16.Words)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Int16.Words, &type metadata for Int16.Words, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Int16.Words and conformance Int16.Words);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for Int16.Words(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table accessor for type Int16.Words and conformance Int16.Words(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type Int16.Words and conformance Int16.Words(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type Int16.Words and conformance Int16.Words(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type Int16 and conformance Int16(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type Int16 and conformance Int16;
  if (!lazy protocol witness table cache variable for type Int16 and conformance Int16)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Int16, &type metadata for Int16, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Int16 and conformance Int16);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int16 and conformance Int16;
  if (!lazy protocol witness table cache variable for type Int16 and conformance Int16)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Int16, &type metadata for Int16, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Int16 and conformance Int16);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int16 and conformance Int16;
  if (!lazy protocol witness table cache variable for type Int16 and conformance Int16)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Int16, &type metadata for Int16, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Int16 and conformance Int16);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int16 and conformance Int16;
  if (!lazy protocol witness table cache variable for type Int16 and conformance Int16)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Int16, &type metadata for Int16, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Int16 and conformance Int16);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for Int16(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table accessor for type Int16 and conformance Int16(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<UInt32.Words> and conformance <> Slice<A>()
{
  result = lazy protocol witness table cache variable for type Slice<UInt32.Words> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<UInt32.Words> and conformance <> Slice<A>)
  {
    v6[3] = v0;
    v6[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVys6UInt32V5WordsVGMd, _ss5SliceVys6UInt32V5WordsVGMR);
    v6[0] = lazy protocol witness table accessor for type UInt32.Words and conformance UInt32.Words(v3, v4, v5);
    result = swift_getWitnessTable(protocol conformance descriptor for <> Slice<A>, v3, v6);
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<UInt32.Words> and conformance <> Slice<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Slice<UInt32.Words> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<UInt32.Words> and conformance <> Slice<A>)
  {
    v6[3] = v0;
    v6[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVys6UInt32V5WordsVGMd, _ss5SliceVys6UInt32V5WordsVGMR);
    v6[0] = lazy protocol witness table accessor for type UInt32.Words and conformance UInt32.Words(v3, v4, v5);
    result = swift_getWitnessTable(protocol conformance descriptor for <> Slice<A>, v3, v6);
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<UInt32.Words> and conformance <> Slice<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type UInt32.Words and conformance UInt32.Words(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type UInt32.Words and conformance UInt32.Words;
  if (!lazy protocol witness table cache variable for type UInt32.Words and conformance UInt32.Words)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UInt32.Words, &type metadata for UInt32.Words, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type UInt32.Words and conformance UInt32.Words);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UInt32.Words and conformance UInt32.Words;
  if (!lazy protocol witness table cache variable for type UInt32.Words and conformance UInt32.Words)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UInt32.Words, &type metadata for UInt32.Words, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type UInt32.Words and conformance UInt32.Words);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UInt32.Words and conformance UInt32.Words;
  if (!lazy protocol witness table cache variable for type UInt32.Words and conformance UInt32.Words)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UInt32.Words, &type metadata for UInt32.Words, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type UInt32.Words and conformance UInt32.Words);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UInt32.Words and conformance UInt32.Words;
  if (!lazy protocol witness table cache variable for type UInt32.Words and conformance UInt32.Words)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UInt32.Words, &type metadata for UInt32.Words, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type UInt32.Words and conformance UInt32.Words);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for UInt32.Words(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table accessor for type UInt32.Words and conformance UInt32.Words(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type UInt32.Words and conformance UInt32.Words(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type UInt32.Words and conformance UInt32.Words(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for UInt32(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table accessor for type UInt32 and conformance UInt32(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<Int32.Words> and conformance <> Slice<A>()
{
  result = lazy protocol witness table cache variable for type Slice<Int32.Words> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<Int32.Words> and conformance <> Slice<A>)
  {
    v6[3] = v0;
    v6[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVys5Int32V5WordsVGMd, _ss5SliceVys5Int32V5WordsVGMR);
    v6[0] = lazy protocol witness table accessor for type Int32.Words and conformance Int32.Words(v3, v4, v5);
    result = swift_getWitnessTable(protocol conformance descriptor for <> Slice<A>, v3, v6);
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<Int32.Words> and conformance <> Slice<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Slice<Int32.Words> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<Int32.Words> and conformance <> Slice<A>)
  {
    v6[3] = v0;
    v6[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVys5Int32V5WordsVGMd, _ss5SliceVys5Int32V5WordsVGMR);
    v6[0] = lazy protocol witness table accessor for type Int32.Words and conformance Int32.Words(v3, v4, v5);
    result = swift_getWitnessTable(protocol conformance descriptor for <> Slice<A>, v3, v6);
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<Int32.Words> and conformance <> Slice<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Int32.Words and conformance Int32.Words(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type Int32.Words and conformance Int32.Words;
  if (!lazy protocol witness table cache variable for type Int32.Words and conformance Int32.Words)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Int32.Words, &type metadata for Int32.Words, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Int32.Words and conformance Int32.Words);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int32.Words and conformance Int32.Words;
  if (!lazy protocol witness table cache variable for type Int32.Words and conformance Int32.Words)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Int32.Words, &type metadata for Int32.Words, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Int32.Words and conformance Int32.Words);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int32.Words and conformance Int32.Words;
  if (!lazy protocol witness table cache variable for type Int32.Words and conformance Int32.Words)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Int32.Words, &type metadata for Int32.Words, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Int32.Words and conformance Int32.Words);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int32.Words and conformance Int32.Words;
  if (!lazy protocol witness table cache variable for type Int32.Words and conformance Int32.Words)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Int32.Words, &type metadata for Int32.Words, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Int32.Words and conformance Int32.Words);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for Int32.Words(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table accessor for type Int32.Words and conformance Int32.Words(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type Int32.Words and conformance Int32.Words(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type Int32.Words and conformance Int32.Words(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type Int32 and conformance Int32(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type Int32 and conformance Int32;
  if (!lazy protocol witness table cache variable for type Int32 and conformance Int32)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Int32, &type metadata for Int32, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Int32 and conformance Int32);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int32 and conformance Int32;
  if (!lazy protocol witness table cache variable for type Int32 and conformance Int32)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Int32, &type metadata for Int32, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Int32 and conformance Int32);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int32 and conformance Int32;
  if (!lazy protocol witness table cache variable for type Int32 and conformance Int32)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Int32, &type metadata for Int32, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Int32 and conformance Int32);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int32 and conformance Int32;
  if (!lazy protocol witness table cache variable for type Int32 and conformance Int32)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Int32, &type metadata for Int32, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Int32 and conformance Int32);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for Int32(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table accessor for type Int32 and conformance Int32(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<UInt64.Words> and conformance <> Slice<A>()
{
  result = lazy protocol witness table cache variable for type Slice<UInt64.Words> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<UInt64.Words> and conformance <> Slice<A>)
  {
    v6[3] = v0;
    v6[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVys6UInt64V5WordsVGMd, _ss5SliceVys6UInt64V5WordsVGMR);
    v6[0] = lazy protocol witness table accessor for type UInt64.Words and conformance UInt64.Words(v3, v4, v5);
    result = swift_getWitnessTable(protocol conformance descriptor for <> Slice<A>, v3, v6);
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<UInt64.Words> and conformance <> Slice<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Slice<UInt64.Words> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<UInt64.Words> and conformance <> Slice<A>)
  {
    v6[3] = v0;
    v6[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVys6UInt64V5WordsVGMd, _ss5SliceVys6UInt64V5WordsVGMR);
    v6[0] = lazy protocol witness table accessor for type UInt64.Words and conformance UInt64.Words(v3, v4, v5);
    result = swift_getWitnessTable(protocol conformance descriptor for <> Slice<A>, v3, v6);
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<UInt64.Words> and conformance <> Slice<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type UInt64.Words and conformance UInt64.Words(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type UInt64.Words and conformance UInt64.Words;
  if (!lazy protocol witness table cache variable for type UInt64.Words and conformance UInt64.Words)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UInt64.Words, &type metadata for UInt64.Words, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type UInt64.Words and conformance UInt64.Words);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UInt64.Words and conformance UInt64.Words;
  if (!lazy protocol witness table cache variable for type UInt64.Words and conformance UInt64.Words)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UInt64.Words, &type metadata for UInt64.Words, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type UInt64.Words and conformance UInt64.Words);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UInt64.Words and conformance UInt64.Words;
  if (!lazy protocol witness table cache variable for type UInt64.Words and conformance UInt64.Words)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UInt64.Words, &type metadata for UInt64.Words, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type UInt64.Words and conformance UInt64.Words);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UInt64.Words and conformance UInt64.Words;
  if (!lazy protocol witness table cache variable for type UInt64.Words and conformance UInt64.Words)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UInt64.Words, &type metadata for UInt64.Words, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type UInt64.Words and conformance UInt64.Words);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for UInt64.Words(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table accessor for type UInt64.Words and conformance UInt64.Words(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type UInt64.Words and conformance UInt64.Words(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type UInt64.Words and conformance UInt64.Words(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for UInt64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table accessor for type UInt64 and conformance UInt64(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<Int64.Words> and conformance <> Slice<A>()
{
  result = lazy protocol witness table cache variable for type Slice<Int64.Words> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<Int64.Words> and conformance <> Slice<A>)
  {
    v6[3] = v0;
    v6[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVys5Int64V5WordsVGMd, _ss5SliceVys5Int64V5WordsVGMR);
    v6[0] = lazy protocol witness table accessor for type Int64.Words and conformance Int64.Words(v3, v4, v5);
    result = swift_getWitnessTable(protocol conformance descriptor for <> Slice<A>, v3, v6);
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<Int64.Words> and conformance <> Slice<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Slice<Int64.Words> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<Int64.Words> and conformance <> Slice<A>)
  {
    v6[3] = v0;
    v6[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVys5Int64V5WordsVGMd, _ss5SliceVys5Int64V5WordsVGMR);
    v6[0] = lazy protocol witness table accessor for type Int64.Words and conformance Int64.Words(v3, v4, v5);
    result = swift_getWitnessTable(protocol conformance descriptor for <> Slice<A>, v3, v6);
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<Int64.Words> and conformance <> Slice<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Int64.Words and conformance Int64.Words(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type Int64.Words and conformance Int64.Words;
  if (!lazy protocol witness table cache variable for type Int64.Words and conformance Int64.Words)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Int64.Words, &type metadata for Int64.Words, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Int64.Words and conformance Int64.Words);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int64.Words and conformance Int64.Words;
  if (!lazy protocol witness table cache variable for type Int64.Words and conformance Int64.Words)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Int64.Words, &type metadata for Int64.Words, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Int64.Words and conformance Int64.Words);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int64.Words and conformance Int64.Words;
  if (!lazy protocol witness table cache variable for type Int64.Words and conformance Int64.Words)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Int64.Words, &type metadata for Int64.Words, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Int64.Words and conformance Int64.Words);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int64.Words and conformance Int64.Words;
  if (!lazy protocol witness table cache variable for type Int64.Words and conformance Int64.Words)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Int64.Words, &type metadata for Int64.Words, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Int64.Words and conformance Int64.Words);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for Int64.Words(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table accessor for type Int64.Words and conformance Int64.Words(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type Int64.Words and conformance Int64.Words(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type Int64.Words and conformance Int64.Words(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for Int64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table accessor for type Int64 and conformance Int64(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<UInt.Words> and conformance <> Slice<A>()
{
  result = lazy protocol witness table cache variable for type Slice<UInt.Words> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<UInt.Words> and conformance <> Slice<A>)
  {
    v6[3] = v0;
    v6[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVySu5WordsVGMd, _ss5SliceVySu5WordsVGMR);
    v6[0] = lazy protocol witness table accessor for type UInt.Words and conformance UInt.Words(v3, v4, v5);
    result = swift_getWitnessTable(protocol conformance descriptor for <> Slice<A>, v3, v6);
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<UInt.Words> and conformance <> Slice<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Slice<UInt.Words> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<UInt.Words> and conformance <> Slice<A>)
  {
    v6[3] = v0;
    v6[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVySu5WordsVGMd, _ss5SliceVySu5WordsVGMR);
    v6[0] = lazy protocol witness table accessor for type UInt.Words and conformance UInt.Words(v3, v4, v5);
    result = swift_getWitnessTable(protocol conformance descriptor for <> Slice<A>, v3, v6);
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<UInt.Words> and conformance <> Slice<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type UInt.Words and conformance UInt.Words(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type UInt.Words and conformance UInt.Words;
  if (!lazy protocol witness table cache variable for type UInt.Words and conformance UInt.Words)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UInt.Words, &type metadata for UInt.Words, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type UInt.Words and conformance UInt.Words);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UInt.Words and conformance UInt.Words;
  if (!lazy protocol witness table cache variable for type UInt.Words and conformance UInt.Words)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UInt.Words, &type metadata for UInt.Words, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type UInt.Words and conformance UInt.Words);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UInt.Words and conformance UInt.Words;
  if (!lazy protocol witness table cache variable for type UInt.Words and conformance UInt.Words)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UInt.Words, &type metadata for UInt.Words, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type UInt.Words and conformance UInt.Words);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UInt.Words and conformance UInt.Words;
  if (!lazy protocol witness table cache variable for type UInt.Words and conformance UInt.Words)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UInt.Words, &type metadata for UInt.Words, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type UInt.Words and conformance UInt.Words);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for UInt.Words(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table accessor for type UInt.Words and conformance UInt.Words(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type UInt.Words and conformance UInt.Words(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type UInt.Words and conformance UInt.Words(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for UInt(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table accessor for type UInt and conformance UInt(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<Int.Words> and conformance <> Slice<A>()
{
  result = lazy protocol witness table cache variable for type Slice<Int.Words> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<Int.Words> and conformance <> Slice<A>)
  {
    v6[3] = v0;
    v6[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVySi5WordsVGMd, _ss5SliceVySi5WordsVGMR);
    v6[0] = lazy protocol witness table accessor for type Int.Words and conformance Int.Words(v3, v4, v5);
    result = swift_getWitnessTable(protocol conformance descriptor for <> Slice<A>, v3, v6);
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<Int.Words> and conformance <> Slice<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Slice<Int.Words> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<Int.Words> and conformance <> Slice<A>)
  {
    v6[3] = v0;
    v6[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVySi5WordsVGMd, _ss5SliceVySi5WordsVGMR);
    v6[0] = lazy protocol witness table accessor for type Int.Words and conformance Int.Words(v3, v4, v5);
    result = swift_getWitnessTable(protocol conformance descriptor for <> Slice<A>, v3, v6);
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<Int.Words> and conformance <> Slice<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Int.Words and conformance Int.Words(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type Int.Words and conformance Int.Words;
  if (!lazy protocol witness table cache variable for type Int.Words and conformance Int.Words)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Int.Words, &type metadata for Int.Words, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Int.Words and conformance Int.Words);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int.Words and conformance Int.Words;
  if (!lazy protocol witness table cache variable for type Int.Words and conformance Int.Words)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Int.Words, &type metadata for Int.Words, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Int.Words and conformance Int.Words);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int.Words and conformance Int.Words;
  if (!lazy protocol witness table cache variable for type Int.Words and conformance Int.Words)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Int.Words, &type metadata for Int.Words, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Int.Words and conformance Int.Words);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int.Words and conformance Int.Words;
  if (!lazy protocol witness table cache variable for type Int.Words and conformance Int.Words)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Int.Words, &type metadata for Int.Words, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type Int.Words and conformance Int.Words);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for Int.Words(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table accessor for type Int.Words and conformance Int.Words(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type Int.Words and conformance Int.Words(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type Int.Words and conformance Int.Words(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for Int(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table accessor for type Int and conformance Int(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for UnsafeMutableBufferPointer<A>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable(protocol conformance descriptor for UnsafeMutableBufferPointer<A>, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable(protocol conformance descriptor for UnsafeMutableBufferPointer<A>, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable(protocol conformance descriptor for UnsafeMutableBufferPointer<A>, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for UnsafeBufferPointer<A>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable(protocol conformance descriptor for UnsafeBufferPointer<A>, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable(protocol conformance descriptor for UnsafeBufferPointer<A>, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable(protocol conformance descriptor for UnsafeBufferPointer<A>, a2, a3);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<UnsafeMutableRawBufferPointer> and conformance <> Slice<A>()
{
  result = lazy protocol witness table cache variable for type Slice<UnsafeMutableRawBufferPointer> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<UnsafeMutableRawBufferPointer> and conformance <> Slice<A>)
  {
    v6[3] = v0;
    v6[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVySwGMd, _ss5SliceVySwGMR);
    v6[0] = lazy protocol witness table accessor for type UnsafeMutableRawBufferPointer and conformance UnsafeMutableRawBufferPointer(v3, v4, v5);
    result = swift_getWitnessTable(protocol conformance descriptor for <> Slice<A>, v3, v6);
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<UnsafeMutableRawBufferPointer> and conformance <> Slice<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Slice<UnsafeMutableRawBufferPointer> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<UnsafeMutableRawBufferPointer> and conformance <> Slice<A>)
  {
    v6[3] = v0;
    v6[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVySwGMd, _ss5SliceVySwGMR);
    v6[0] = lazy protocol witness table accessor for type UnsafeMutableRawBufferPointer and conformance UnsafeMutableRawBufferPointer(v3, v4, v5);
    result = swift_getWitnessTable(protocol conformance descriptor for <> Slice<A>, v3, v6);
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<UnsafeMutableRawBufferPointer> and conformance <> Slice<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Slice<UnsafeMutableRawBufferPointer> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<UnsafeMutableRawBufferPointer> and conformance <> Slice<A>)
  {
    v6[3] = v0;
    v6[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVySwGMd, _ss5SliceVySwGMR);
    v6[0] = lazy protocol witness table accessor for type UnsafeMutableRawBufferPointer and conformance UnsafeMutableRawBufferPointer(v3, v4, v5);
    result = swift_getWitnessTable(protocol conformance descriptor for <> Slice<A>, v3, v6);
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<UnsafeMutableRawBufferPointer> and conformance <> Slice<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type UnsafeMutableRawBufferPointer and conformance UnsafeMutableRawBufferPointer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type UnsafeMutableRawBufferPointer and conformance UnsafeMutableRawBufferPointer;
  if (!lazy protocol witness table cache variable for type UnsafeMutableRawBufferPointer and conformance UnsafeMutableRawBufferPointer)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UnsafeMutableRawBufferPointer, &type metadata for UnsafeMutableRawBufferPointer, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type UnsafeMutableRawBufferPointer and conformance UnsafeMutableRawBufferPointer);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UnsafeMutableRawBufferPointer and conformance UnsafeMutableRawBufferPointer;
  if (!lazy protocol witness table cache variable for type UnsafeMutableRawBufferPointer and conformance UnsafeMutableRawBufferPointer)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UnsafeMutableRawBufferPointer, &type metadata for UnsafeMutableRawBufferPointer, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type UnsafeMutableRawBufferPointer and conformance UnsafeMutableRawBufferPointer);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UnsafeMutableRawBufferPointer and conformance UnsafeMutableRawBufferPointer;
  if (!lazy protocol witness table cache variable for type UnsafeMutableRawBufferPointer and conformance UnsafeMutableRawBufferPointer)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UnsafeMutableRawBufferPointer, &type metadata for UnsafeMutableRawBufferPointer, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type UnsafeMutableRawBufferPointer and conformance UnsafeMutableRawBufferPointer);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UnsafeMutableRawBufferPointer and conformance UnsafeMutableRawBufferPointer;
  if (!lazy protocol witness table cache variable for type UnsafeMutableRawBufferPointer and conformance UnsafeMutableRawBufferPointer)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UnsafeMutableRawBufferPointer, &type metadata for UnsafeMutableRawBufferPointer, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type UnsafeMutableRawBufferPointer and conformance UnsafeMutableRawBufferPointer);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for UnsafeMutableRawBufferPointer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table accessor for type UnsafeMutableRawBufferPointer and conformance UnsafeMutableRawBufferPointer(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type UnsafeMutableRawBufferPointer and conformance UnsafeMutableRawBufferPointer(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<UnsafeRawBufferPointer> and conformance <> Slice<A>()
{
  result = lazy protocol witness table cache variable for type Slice<UnsafeRawBufferPointer> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<UnsafeRawBufferPointer> and conformance <> Slice<A>)
  {
    v6[3] = v0;
    v6[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVySWGMd, _ss5SliceVySWGMR);
    v6[0] = lazy protocol witness table accessor for type UnsafeRawBufferPointer and conformance UnsafeRawBufferPointer(v3, v4, v5);
    result = swift_getWitnessTable(protocol conformance descriptor for <> Slice<A>, v3, v6);
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<UnsafeRawBufferPointer> and conformance <> Slice<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Slice<UnsafeRawBufferPointer> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<UnsafeRawBufferPointer> and conformance <> Slice<A>)
  {
    v6[3] = v0;
    v6[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVySWGMd, _ss5SliceVySWGMR);
    v6[0] = lazy protocol witness table accessor for type UnsafeRawBufferPointer and conformance UnsafeRawBufferPointer(v3, v4, v5);
    result = swift_getWitnessTable(protocol conformance descriptor for <> Slice<A>, v3, v6);
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<UnsafeRawBufferPointer> and conformance <> Slice<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type UnsafeRawBufferPointer and conformance UnsafeRawBufferPointer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type UnsafeRawBufferPointer and conformance UnsafeRawBufferPointer;
  if (!lazy protocol witness table cache variable for type UnsafeRawBufferPointer and conformance UnsafeRawBufferPointer)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UnsafeRawBufferPointer, &type metadata for UnsafeRawBufferPointer, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type UnsafeRawBufferPointer and conformance UnsafeRawBufferPointer);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UnsafeRawBufferPointer and conformance UnsafeRawBufferPointer;
  if (!lazy protocol witness table cache variable for type UnsafeRawBufferPointer and conformance UnsafeRawBufferPointer)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UnsafeRawBufferPointer, &type metadata for UnsafeRawBufferPointer, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type UnsafeRawBufferPointer and conformance UnsafeRawBufferPointer);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UnsafeRawBufferPointer and conformance UnsafeRawBufferPointer;
  if (!lazy protocol witness table cache variable for type UnsafeRawBufferPointer and conformance UnsafeRawBufferPointer)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UnsafeRawBufferPointer, &type metadata for UnsafeRawBufferPointer, a3);
    atomic_store(result, &lazy protocol witness table cache variable for type UnsafeRawBufferPointer and conformance UnsafeRawBufferPointer);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for UnsafeRawBufferPointer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table accessor for type UnsafeRawBufferPointer and conformance UnsafeRawBufferPointer(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type UnsafeRawBufferPointer and conformance UnsafeRawBufferPointer(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for SIMD2<A>(uint64_t a1, unint64_t a2, uint64_t a3, int *a4, int *a5)
{
  *(a1 + 32) = swift_getWitnessTable(a4, a2, a3);
  result = swift_getWitnessTable(a5, a2, v8);
  *(a1 + 48) = result;
  return result;
}

uint64_t associated type witness table accessor for SIMDStorage.Scalar : Decodable in SIMD2<A>(const char *a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v6 = *(a2 + 24);
  swift_getAssociatedTypeWitness(255, v6, a1, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD16Storage);
  v8 = v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, a1, v7, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD16Storage: SIMDStorage);

  return swift_getAssociatedConformanceWitness(AssociatedConformanceWitness, v8, a1, &protocol requirements base descriptor for SIMDStorage, a4);
}

__n128 sub_18062E450(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

__n128 sub_18062E4B8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

__n128 sub_18062E524(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
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

uint64_t assignWithTake for ArraySlice(uint64_t a1, _OWORD *a2)
{
  swift_unknownObjectRelease(*a1);
  v4 = a2[1];
  *a1 = *a2;
  *(a1 + 16) = v4;
  return a1;
}

void *initializeBufferWithCopyOfBuffer for Character(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v3;
  return a1;
}

void *assignWithTake for Character(void *a1, void *a2)
{
  v3 = a2[1];
  v4 = a1[1];
  *a1 = *a2;
  a1[1] = v3;
  v4;
  return a1;
}

uint64_t dispatch thunk of KeyedEncodingContainerProtocol.encode(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return (*(a4 + 40))();
}

{
  return (*(a4 + 72))();
}

{
  return (*(a4 + 80))();
}

{
  return (*(a4 + 88))();
}

{
  return (*(a4 + 96))();
}

{
  return (*(a4 + 104))();
}

{
  return (*(a4 + 120))();
}

{
  return (*(a4 + 128))();
}

{
  return (*(a4 + 136))();
}

{
  return (*(a4 + 144))();
}

{
  return (*(a4 + 152))();
}

uint64_t dispatch thunk of KeyedEncodingContainerProtocol.encode(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 48))();
}

{
  return (*(a5 + 112))();
}

{
  return (*(a5 + 160))();
}

uint64_t dispatch thunk of KeyedEncodingContainerProtocol.encode(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 56))();
}

{
  return (*(a3 + 64))();
}

uint64_t dispatch thunk of KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 200))(a1, a2 & 1);
}

{
  return (*(a5 + 216))(a1, a2 & 1);
}

{
  return (*(a5 + 248))(a1, a2 & 1);
}

{
  return (*(a5 + 264))(a1, a2 & 1);
}

{
  return (*(a5 + 296))(a1, a2 & 1);
}

uint64_t dispatch thunk of KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return (*(a4 + 208))(a1 | ((HIDWORD(a1) & 1) << 32));
}

{
  return (*(a4 + 240))(a1 | ((HIDWORD(a1) & 1) << 32));
}

{
  return (*(a4 + 288))(a1 | ((HIDWORD(a1) & 1) << 32));
}

uint64_t dispatch thunk of KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)(__int16 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return (*(a4 + 224))(a1 & 0x1FF);
}

{
  return (*(a4 + 272))(a1 & 0x1FF);
}

uint64_t dispatch thunk of KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return (*(a4 + 232))(a1 & 0x1FFFF);
}

{
  return (*(a4 + 280))(a1 & 0x1FFFF);
}