uint64_t specialized Range._prespecializeRange(bounds:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = *(TupleTypeMetadata2 - 8);
  v8 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v10 = &v13 - v9;
  v11 = *(*(a3 - 8) + 16);
  v11(&v13 - v9, a1, a3);
  v11(&v10[*(TupleTypeMetadata2 + 48)], a2, a3);
  return (*(v7 + 8))(v10, TupleTypeMetadata2);
}

char *_ss12_ArrayBufferV13_copyContents8subRange12initializingSpyxGSnySiG_AFtFAG_Tgq5Tf4nng_n_0(uint64_t a1, uint64_t a2, char *__dst, uint64_t a4)
{
  v4 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
  }

  else if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = (a4 + 16 * a1 + 32);
    v6 = 16 * v4;
    v7 = &__dst[v6];
    if (v5 >= &__dst[v6] || &v5[v6] <= __dst)
    {
      memcpy(__dst, v5, v6);
      return v7;
    }
  }

  result = _fatalErrorMessage(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCs6UInt64V_Tt1g5058_sSr15_stableSortImpl2byySbx_xtKXE_tKFySryxGz_SiztKXEfU_s6F5V_Tg5SryAFGxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyA2FIsgnndzo_SiTf1nc_nTf4nngn_nTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(void *, _BYTE *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  UninitializedySayxG_SpyxGtSiFZs6UInt64V_Tt0g5Tm = _sSa22_allocateUninitializedySayxG_SpyxGtSiFZs6UInt64V_Tt0g5Tm(a1);
  if (a1 < 0)
  {
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v18 = UninitializedySayxG_SpyxGtSiFZs6UInt64V_Tt0g5Tm;
    v20[0] = v17;
    v20[1] = a1;
    a8(v20, v21, a2, a3, a4, a5, a7);
    *(v18 + 16) = 0;
    if (v8)
    {
    }

    return v18;
  }

  return result;
}

uint64_t _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1g562_sSr15_stableSortImpl2byySbx_xtKXE_tKFySryxGz_SiztKXEfU_Sf_Tg5SrySfGxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyS2fIsgnndzo_SiTf1nc_nTf4nngn_nTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void *, _BYTE *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  UninitializedySayxG_SpyxGtSiFZs6UInt64V_Tt0g5Tm = _sSa22_allocateUninitializedySayxG_SpyxGtSiFZs6UInt64V_Tt0g5Tm(a1);
  if (a1 < 0)
  {
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v16 = UninitializedySayxG_SpyxGtSiFZs6UInt64V_Tt0g5Tm;
    v18[0] = v15;
    v18[1] = a1;
    a7(v18, v19, a2, a3, a4, a5);
    *(v16 + 16) = 0;
    if (v7)
    {
    }

    return v16;
  }

  return result;
}

uint64_t _ss15ContiguousArrayV04withA25MutableStorageIfAvailableyqd__Sgqd__SryxGzKXEKlFs6UInt64V_ytTg5063_sSMsSkRzrlE4sort2byySb7ElementSTQz_ADtKXE_tKFySryADGzKXEfU_s15ab4Vys6H6VG_Tg5xq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyA2GIsgnndzo_Tf1cn_nTf4ng_nTm(uint64_t *a1, uint64_t (*a2)(uint64_t *, uint64_t *), uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t a6, void (*a7)(void, void, void, void))
{
  v15 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = a4(v15);
    *a1 = v15;
  }

  v17 = *(v15 + 16);
  v18 = (v15 + 32);
  v30[0] = v18;
  v30[1] = v17;
  v19 = _minimumMergeRunLength(_:)(v17);
  if (v19 >= v17)
  {
    v27 = v18;
    v28 = a7;
    if (v17 >= 2)
    {
      v20 = -1;
      v21 = 1;
      while (2)
      {
        v22 = v18;
        v23 = v20;
        do
        {
          v31 = v22->i64[1];
          v29 = v22->i64[0];
          v24 = a2(&v31, &v29);
          if (v7)
          {
            v18 = v27;
            a7 = v28;
            goto LABEL_16;
          }

          if ((v24 & 1) == 0)
          {
            break;
          }

          *v22 = vextq_s8(*v22, *v22, 8uLL);
          v22 = (v22 - 8);
        }

        while (!__CFADD__(v23++, 1));
        ++v21;
        --v20;
        v18 = (v18 + 8);
        if (v21 != v17)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_18;
  }

  _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCs6UInt64V_Tt1g5058_sSr15_stableSortImpl2byySbx_xtKXE_tKFySryxGz_SiztKXEfU_s6F5V_Tg5SryAFGxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyA2FIsgnndzo_SiTf1nc_nTf4nngn_nTm(v17 >> 1, v30, a2, a3, v19, a5, a6, specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:));
  if (!v7)
  {
    v27 = v18;
    v28 = a7;

LABEL_18:
    v28(v30, v27, v17, a1);
    return 0;
  }

LABEL_16:
  a7(v30, v18, v17, a1);
  return 0;
}

uint64_t _ss15ContiguousArrayV04withA25MutableStorageIfAvailableyqd__Sgqd__SryxGzKXEKlFs6UInt32V_ytTg5063_sSMsSkRzrlE4sort2byySb7ElementSTQz_ADtKXE_tKFySryADGzKXEfU_s15ab4Vys6H6VG_Tg5xq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyA2GIsgnndzo_Tf1cn_nTf4ng_nTm(uint64_t *a1, uint64_t (*a2)(__int32 *, __int32 *), uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t a6, void (*a7)(void, void, void, void))
{
  v15 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = a4(v15);
    *a1 = v15;
  }

  v17 = *(v15 + 16);
  v18 = (v15 + 32);
  v29[0] = v18;
  v29[1] = v17;
  v19 = _minimumMergeRunLength(_:)(v17);
  if (v19 >= v17)
  {
    v27 = v18;
    v28 = a7;
    if (v17 >= 2)
    {
      v20 = -1;
      v21 = 1;
      while (2)
      {
        v22 = v18;
        v23 = v20;
        do
        {
          v31 = v22->i32[1];
          v30 = v22->i32[0];
          v24 = a2(&v31, &v30);
          if (v7)
          {
            v18 = v27;
            a7 = v28;
            goto LABEL_16;
          }

          if ((v24 & 1) == 0)
          {
            break;
          }

          *v22 = vrev64_s32(*v22);
          v22 = (v22 - 4);
        }

        while (!__CFADD__(v23++, 1));
        ++v21;
        --v20;
        v18 = (v18 + 4);
        if (v21 != v17)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_18;
  }

  _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCs6UInt64V_Tt1g5058_sSr15_stableSortImpl2byySbx_xtKXE_tKFySryxGz_SiztKXEfU_s6F5V_Tg5SryAFGxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyA2FIsgnndzo_SiTf1nc_nTf4nngn_nTm(v17 >> 1, v29, a2, a3, v19, a5, a6, specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:));
  if (!v7)
  {
    v27 = v18;
    v28 = a7;

LABEL_18:
    v28(v29, v27, v17, a1);
    return 0;
  }

LABEL_16:
  a7(v29, v18, v17, a1);
  return 0;
}

uint64_t _ss15ContiguousArrayV04withA25MutableStorageIfAvailableyqd__Sgqd__SryxGzKXEKlFs6UInt16V_ytTg5063_sSMsSkRzrlE4sort2byySb7ElementSTQz_ADtKXE_tKFySryADGzKXEfU_s15ab4Vys6H6VG_Tg5xq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyA2GIsgnndzo_Tf1cn_nTf4ng_nTm(uint64_t *a1, uint64_t (*a2)(__int16 *, __int16 *), uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t a6, void (*a7)(void, void, void, void))
{
  v15 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = a4(v15);
    *a1 = v15;
  }

  v17 = *(v15 + 16);
  v30 = v15 + 32;
  v31[0] = v15 + 32;
  v31[1] = v17;
  v18 = _minimumMergeRunLength(_:)(v17);
  if (v18 >= v17)
  {
    v29 = a7;
    if (v17 >= 2)
    {
      v19 = (v15 + 34);
      v20 = -1;
      v21 = 1;
      while (2)
      {
        v22 = v19;
        v23 = v20;
        do
        {
          v33 = *v22;
          v32 = *(v22 - 1);
          v24 = a2(&v33, &v32);
          if (v7)
          {
            a7 = v29;
            goto LABEL_17;
          }

          if ((v24 & 1) == 0)
          {
            break;
          }

          v25 = *--v22;
          HIDWORD(v26) = v25;
          LODWORD(v26) = v25;
          *v22 = v26 >> 16;
        }

        while (!__CFADD__(v23++, 1));
        ++v21;
        --v20;
        ++v19;
        if (v21 != v17)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCs6UInt64V_Tt1g5058_sSr15_stableSortImpl2byySbx_xtKXE_tKFySryxGz_SiztKXEfU_s6F5V_Tg5SryAFGxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyA2FIsgnndzo_SiTf1nc_nTf4nngn_nTm(v17 >> 1, v31, a2, a3, v18, a5, a6, specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:));
    if (v7)
    {
LABEL_17:
      a7(v31, v30, v17, a1);
      return 0;
    }

    v29 = a7;
  }

  v29(v31, v30, v17, a1);
  return 0;
}

uint64_t _ss15ContiguousArrayV04withA25MutableStorageIfAvailableyqd__Sgqd__SryxGzKXEKlFs5UInt8V_ytTg5063_sSMsSkRzrlE4sort2byySb7ElementSTQz_ADtKXE_tKFySryADGzKXEfU_s15ab4Vys5H6VG_Tg5xq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyA2GIsgnndzo_Tf1cn_nTf4ng_nTm(uint64_t *a1, uint64_t (*a2)(char *, char *), uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t a6, void (*a7)(void, void, void, void))
{
  v15 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = a4(v15);
    *a1 = v15;
  }

  v17 = *(v15 + 16);
  v29 = v15 + 32;
  v30[0] = v15 + 32;
  v30[1] = v17;
  v18 = _minimumMergeRunLength(_:)(v17);
  if (v18 >= v17)
  {
    v28 = a7;
    if (v17 >= 2)
    {
      v19 = (v15 + 33);
      v20 = -1;
      v21 = 1;
      while (2)
      {
        v22 = v19;
        v23 = v20;
        do
        {
          v32 = *v22;
          v31 = *(v22 - 1);
          v24 = a2(&v32, &v31);
          if (v7)
          {
            a7 = v28;
            goto LABEL_17;
          }

          if ((v24 & 1) == 0)
          {
            break;
          }

          v25 = *v22;
          *v22 = *(v22 - 1);
          *--v22 = v25;
        }

        while (!__CFADD__(v23++, 1));
        ++v21;
        --v20;
        ++v19;
        if (v21 != v17)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCs6UInt64V_Tt1g5058_sSr15_stableSortImpl2byySbx_xtKXE_tKFySryxGz_SiztKXEfU_s6F5V_Tg5SryAFGxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyA2FIsgnndzo_SiTf1nc_nTf4nngn_nTm(v17 >> 1, v30, a2, a3, v18, a5, a6, specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:));
    if (v7)
    {
LABEL_17:
      a7(v30, v29, v17, a1);
      return 0;
    }

    v28 = a7;
  }

  v28(v30, v29, v17, a1);
  return 0;
}

char *specialized _ArrayBuffer._copyContents(subRange:initializing:)(uint64_t a1, uint64_t a2, char *__dst, uint64_t a4)
{
  v4 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
  }

  else if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = (a4 + 4 * a1 + 32);
    v6 = 4 * v4;
    v7 = &__dst[v6];
    if (v5 >= &__dst[v6] || &v5[v6] <= __dst)
    {
      memcpy(__dst, v5, v6);
      return v7;
    }
  }

  result = _fatalErrorMessage(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v4 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
  }

  else if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = (a4 + 2 * a1 + 32);
    v6 = 2 * v4;
    v7 = &__dst[v6];
    if (v5 >= &__dst[v6] || &v5[v6] <= __dst)
    {
      memcpy(__dst, v5, v6);
      return v7;
    }
  }

  result = _fatalErrorMessage(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v4 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
  }

  else if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = (a4 + a1 + 32);
    v6 = &__dst[v4];
    if (v5 >= &__dst[v4] || &v5[v4] <= __dst)
    {
      memcpy(__dst, v5, v4);
      return v6;
    }
  }

  result = _fatalErrorMessage(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v4 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
  }

  else if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = (a4 + 8 * a1 + 32);
    v6 = 8 * v4;
    v7 = &__dst[v6];
    if (v5 >= &__dst[v6] || &v5[v6] <= __dst)
    {
      memcpy(__dst, v5, v6);
      return v7;
    }
  }

  result = _fatalErrorMessage(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _ss15ContiguousArrayV04withA25MutableStorageIfAvailableyqd__Sgqd__SryxGzKXEKlFSf_ytTg5063_sSMsSkRzrlE4sort2byySb7ElementSTQz_ADtKXE_tKFySryADGzKXEfU_s15aB9VySfG_Tg5xq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyS2fIsgnndzo_Tf1cn_nTf4ng_nTm(uint64_t *a1, uint64_t (*a2)(int *, int *), uint64_t a3, uint64_t (*a4)(uint64_t), void (*a5)(void, void, void, void))
{
  v11 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = a4(v11);
    *a1 = v11;
  }

  v13 = *(v11 + 16);
  v14 = v11 + 32;
  v27[0] = v11 + 32;
  v27[1] = v13;
  v15 = _minimumMergeRunLength(_:)(v13);
  if (v15 >= v13)
  {
    v25 = v11 + 32;
    v26 = a5;
    if (v13 >= 2)
    {
      v16 = (v11 + 36);
      v17 = -1;
      v18 = 1;
      while (2)
      {
        v19 = v16;
        v20 = v17;
        do
        {
          v29 = *v19;
          v28 = *(v19 - 1);
          v21 = a2(&v29, &v28);
          if (v5)
          {
            v14 = v25;
            a5 = v26;
            goto LABEL_16;
          }

          if ((v21 & 1) == 0)
          {
            break;
          }

          v22 = *v19;
          *v19 = *(v19 - 1);
          *--v19 = v22;
        }

        while (!__CFADD__(v20++, 1));
        ++v18;
        --v17;
        ++v16;
        if (v18 != v13)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_18;
  }

  _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1g562_sSr15_stableSortImpl2byySbx_xtKXE_tKFySryxGz_SiztKXEfU_Sf_Tg5SrySfGxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyS2fIsgnndzo_SiTf1nc_nTf4nngn_nTm(v13 >> 1, v27, a2, a3, v15, MEMORY[0x29EDC9B48], specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:));
  if (!v5)
  {
    v25 = v11 + 32;
    v26 = a5;

LABEL_18:
    v26(v27, v25, v13, a1);
    return 0;
  }

LABEL_16:
  a5(v27, v14, v13, a1);
  return 0;
}

uint64_t _ss15ContiguousArrayV04withA25MutableStorageIfAvailableyqd__Sgqd__SryxGzKXEKlFSd_ytTg5063_sSMsSkRzrlE4sort2byySb7ElementSTQz_ADtKXE_tKFySryADGzKXEfU_s15aB9VySdG_Tg5xq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyS2dIsgnndzo_Tf1cn_nTf4ng_nTm(uint64_t *a1, uint64_t (*a2)(uint64_t *, uint64_t *), uint64_t a3, uint64_t (*a4)(uint64_t), void (*a5)(void, void, void, void))
{
  v11 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = a4(v11);
    *a1 = v11;
  }

  v13 = *(v11 + 16);
  v14 = v11 + 32;
  v28[0] = v11 + 32;
  v28[1] = v13;
  v15 = _minimumMergeRunLength(_:)(v13);
  if (v15 >= v13)
  {
    v25 = v11 + 32;
    v26 = a5;
    if (v13 >= 2)
    {
      v16 = (v11 + 40);
      v17 = -1;
      v18 = 1;
      while (2)
      {
        v19 = v16;
        v20 = v17;
        do
        {
          v29 = *v19;
          v27 = *(v19 - 1);
          v21 = a2(&v29, &v27);
          if (v5)
          {
            v14 = v25;
            a5 = v26;
            goto LABEL_16;
          }

          if ((v21 & 1) == 0)
          {
            break;
          }

          v22 = *v19;
          *v19 = *(v19 - 1);
          *--v19 = v22;
        }

        while (!__CFADD__(v20++, 1));
        ++v18;
        --v17;
        ++v16;
        if (v18 != v13)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_18;
  }

  _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1g562_sSr15_stableSortImpl2byySbx_xtKXE_tKFySryxGz_SiztKXEfU_Sf_Tg5SrySfGxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyS2fIsgnndzo_SiTf1nc_nTf4nngn_nTm(v13 >> 1, v28, a2, a3, v15, MEMORY[0x29EDC9AD8], specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:));
  if (!v5)
  {
    v25 = v11 + 32;
    v26 = a5;

LABEL_18:
    v26(v28, v25, v13, a1);
    return 0;
  }

LABEL_16:
  a5(v28, v14, v13, a1);
  return 0;
}

uint64_t _ss15ContiguousArrayV04withA25MutableStorageIfAvailableyqd__Sgqd__SryxGzKXEKlFSS_ytTg5063_sSMsSkRzrlE4sort2byySb7ElementSTQz_ADtKXE_tKFySryADGzKXEfU_s15aB9VySSG_Tg5xq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyS2SIsgnndzo_Tf1cn_nTf4ng_nTm(uint64_t *a1, uint64_t (*a2)(void *, void *), uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t a6, void (*a7)(void, void, void, void))
{
  v43 = a2;
  v13 = a1;
  v14 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v13 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = a4(v14);
    *v13 = v14;
  }

  v16 = *(v14 + 16);
  v17 = v14 + 32;
  v42[0] = v14 + 32;
  v42[1] = v16;
  v18 = _minimumMergeRunLength(_:)(v16);
  if (v18 >= v16)
  {
    if (v16 >= 2)
    {
      v19 = (v14 + 56);
      v20 = -1;
      v21 = 1;
      v35 = v13;
      v36 = a7;
      v33 = v14 + 32;
      v34 = v16;
      while (2)
      {
        v37 = v21;
        v38 = v20;
        v39 = v19;
        v22 = v19;
        v23 = v20;
        do
        {
          v24 = v22 - 1;
          v25 = *v22;
          v41[0] = *(v22 - 1);
          v41[1] = v25;
          v26 = *(v22 - 2);
          v40[0] = *(v22 - 3);
          v40[1] = v26;

          v27 = v43(v41, v40);
          if (v7)
          {

            v13 = v35;
            a7 = v36;
            v17 = v33;
            v16 = v34;
            goto LABEL_16;
          }

          v28 = v27;

          if ((v28 & 1) == 0)
          {
            break;
          }

          v29 = *(v22 - 3);
          *(v22 - 2) = *v22;
          v22 -= 2;
          v30 = v22[1];
          *v24 = v29;
          *(v22 - 1) = v30;
        }

        while (!__CFADD__(v23++, 1));
        v21 = v37 + 1;
        v20 = v38 - 1;
        v19 = v39 + 2;
        v16 = v34;
        v13 = v35;
        a7 = v36;
        v17 = v33;
        if (v37 + 1 != v34)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCs6UInt64V_Tt1g5058_sSr15_stableSortImpl2byySbx_xtKXE_tKFySryxGz_SiztKXEfU_s6F5V_Tg5SryAFGxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyA2FIsgnndzo_SiTf1nc_nTf4nngn_nTm(v16 >> 1, v42, v43, a3, v18, a5, a6, specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:));
    if (!v7)
    {
    }
  }

LABEL_16:
  a7(v42, v17, v16, v13);
  return 0;
}

uint64_t _ss15ContiguousArrayV04withA25MutableStorageIfAvailableyqd__Sgqd__SryxGzKXEKlFs7UnicodeO6ScalarV_ytTg5063_sSMsSkRzrlE4sort2byySb7ElementSTQz_ADtKXE_tKFySryADGzKXEfU_s15ab4Vys7h2O6I6VG_Tg5xq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyA2IIsgnndzo_Tf1cn_nTf4ng_nTm(uint64_t *a1, uint64_t (*a2)(__int32 *, __int32 *), uint64_t a3, uint64_t (*a4)(uint64_t), void (*a5)(void, void, void, void))
{
  v11 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = a4(v11);
    *a1 = v11;
  }

  v13 = *(v11 + 16);
  v14 = (v11 + 32);
  v26[0] = v14;
  v26[1] = v13;
  v15 = _minimumMergeRunLength(_:)(v13);
  if (v15 >= v13)
  {
    v25 = v14;
    if (v13 >= 2)
    {
      v16 = -1;
      v17 = 1;
      v24 = a5;
      while (2)
      {
        v18 = v14;
        v19 = v16;
        do
        {
          v28 = v18->i32[1];
          v27 = v18->i32[0];
          v20 = a2(&v28, &v27);
          if (v5)
          {
            a5 = v24;
            v14 = v25;
            goto LABEL_16;
          }

          if ((v20 & 1) == 0)
          {
            break;
          }

          *v18 = vrev64_s32(*v18);
          v18 = (v18 - 4);
        }

        while (!__CFADD__(v19++, 1));
        ++v17;
        --v16;
        v14 = (v14 + 4);
        a5 = v24;
        if (v17 != v13)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_18;
  }

  _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1g562_sSr15_stableSortImpl2byySbx_xtKXE_tKFySryxGz_SiztKXEfU_Sf_Tg5SrySfGxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyS2fIsgnndzo_SiTf1nc_nTf4nngn_nTm(v13 >> 1, v26, a2, a3, v15, MEMORY[0x29EDCA140], specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:));
  if (!v5)
  {
    v25 = v14;

LABEL_18:
    v22 = v25;
    goto LABEL_19;
  }

LABEL_16:
  v22 = v14;
LABEL_19:
  a5(v26, v22, v13, a1);
  return 0;
}

uint64_t _ss15ContiguousArrayV04withA25MutableStorageIfAvailableyqd__Sgqd__SryxGzKXEKlFSJ_ytTg5063_sSMsSkRzrlE4sort2byySb7ElementSTQz_ADtKXE_tKFySryADGzKXEfU_s15aB9VySJG_Tg5xq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyS2JIsgnndzo_Tf1cn_nTf4ng_nTm(uint64_t *a1, uint64_t (*a2)(void *, void *), uint64_t a3, uint64_t (*a4)(uint64_t), void (*a5)(void, void, void, void))
{
  v38 = a2;
  v9 = a1;
  v10 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v9 = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = a4(v10);
    *v9 = v10;
  }

  v12 = *(v10 + 16);
  v13 = v10 + 32;
  v37[0] = v10 + 32;
  v37[1] = v12;
  v14 = _minimumMergeRunLength(_:)(v12);
  if (v14 >= v12)
  {
    if (v12 >= 2)
    {
      v15 = (v10 + 56);
      v16 = -1;
      v17 = 1;
      v30 = v9;
      v31 = a5;
      v28 = v10 + 32;
      v29 = v12;
      while (2)
      {
        v32 = v17;
        v33 = v16;
        v34 = v15;
        v18 = v16;
        do
        {
          v19 = v15 - 1;
          v20 = *v15;
          v36[0] = *(v15 - 1);
          v36[1] = v20;
          v21 = *(v15 - 2);
          v35[0] = *(v15 - 3);
          v35[1] = v21;

          v22 = v38(v36, v35);
          if (v5)
          {

            v9 = v30;
            a5 = v31;
            v13 = v28;
            v12 = v29;
            goto LABEL_16;
          }

          v23 = v22;

          if ((v23 & 1) == 0)
          {
            break;
          }

          v24 = *(v15 - 3);
          *(v15 - 2) = *v15;
          v15 -= 2;
          v25 = v15[1];
          *v19 = v24;
          *(v15 - 1) = v25;
        }

        while (!__CFADD__(v18++, 1));
        v17 = v32 + 1;
        v16 = v33 - 1;
        v15 = v34 + 2;
        v12 = v29;
        v9 = v30;
        a5 = v31;
        v13 = v28;
        if (v32 + 1 != v29)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1g562_sSr15_stableSortImpl2byySbx_xtKXE_tKFySryxGz_SiztKXEfU_Sf_Tg5SrySfGxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyS2fIsgnndzo_SiTf1nc_nTf4nngn_nTm(v12 >> 1, v37, v38, a3, v14, MEMORY[0x29EDC9918], specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:));
    if (!v5)
    {
    }
  }

LABEL_16:
  a5(v37, v13, v12, v9);
  return 0;
}

uint64_t _ss15ContiguousArrayV04withA25MutableStorageIfAvailableyqd__Sgqd__SryxGzKXEKlFyp_ytTg5063_sSMsSkRzrlE4sort2byySb7ElementSTQz_ADtKXE_tKFySryADGzKXEfU_s15aB9VyypG_Tg5xq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyypypIsgnndzo_Tf1cn_nTf4ng_nTm(uint64_t *a1, uint64_t (*a2)(uint64_t *, uint64_t *), uint64_t a3, uint64_t (*a4)(uint64_t), void (*a5)(void, void, void, void))
{
  v10 = a1;
  v11 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v10 = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = a4(v11);
    *v10 = v11;
  }

  v13 = *(v11 + 16);
  v14 = v11 + 32;
  v31[0] = v11 + 32;
  v31[1] = v13;
  v15 = _minimumMergeRunLength(_:)(v13);
  if (v15 >= v13)
  {
    if (v13 >= 2)
    {
      v16 = (v11 + 64);
      v17 = -1;
      v18 = 1;
      v26 = v10;
      v27 = a5;
      v25 = v14;
      while (2)
      {
        v28 = v18;
        v19 = v17;
        v32 = v16;
        do
        {
          outlined init with copy of Any(v16, v30);
          outlined init with copy of Any((v16 - 2), v29);
          v20 = a2(v30, v29);
          if (v5)
          {
            __swift_destroy_boxed_opaque_existential_0(v29);
            __swift_destroy_boxed_opaque_existential_0(v30);
            v10 = v26;
            a5 = v27;
            v14 = v25;
            goto LABEL_16;
          }

          v21 = v20;
          __swift_destroy_boxed_opaque_existential_0(v29);
          __swift_destroy_boxed_opaque_existential_0(v30);
          if ((v21 & 1) == 0)
          {
            break;
          }

          outlined init with take of Any(v16, v30);
          v22 = *(v16 - 1);
          *v16 = *(v16 - 2);
          v16[1] = v22;
          outlined init with take of Any(v30, v16 - 2);
          v16 -= 2;
        }

        while (!__CFADD__(v19++, 1));
        a5 = v27;
        v18 = v28 + 1;
        v16 = v32 + 2;
        --v17;
        v14 = v25;
        v10 = v26;
        if (v28 + 1 != v13)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1g562_sSr15_stableSortImpl2byySbx_xtKXE_tKFySryxGz_SiztKXEfU_Sf_Tg5SrySfGxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyS2fIsgnndzo_SiTf1nc_nTf4nngn_nTm(v13 >> 1, v31, a2, a3, v15, MEMORY[0x29EDCA178] + 8, specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:));
    if (!v5)
    {
    }
  }

LABEL_16:
  a5(v31, v14, v13, v10);
  return 0;
}

uint64_t specialized static String._createEmpty(withInitialCapacity:)(Swift::Int a1)
{
  if (a1 < 16)
  {
    return 0;
  }

  _StringGuts.grow(_:)(a1);
  return 0;
}

uint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v4 < 0)
  {
LABEL_14:
    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_15;
  }

  v6 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
    goto LABEL_11;
  }

  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = *v3;
  v8 = *(v7 + 16);
  v9 = __OFSUB__(v8, a2);
  v10 = v8 - a2;
  if (v9)
  {
    goto LABEL_12;
  }

  result = specialized UnsafeMutablePointer.moveInitialize(from:count:)((v7 + 32 + 8 * a2), v10, (v7 + 32 + 8 * result + 8 * a3));
  v11 = *(v7 + 16);
  v9 = __OFADD__(v11, v6);
  v12 = v11 + v6;
  if (v9)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  *(v7 + 16) = v12;
LABEL_8:
  if (a3 > 0)
  {
LABEL_15:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v4 < 0)
  {
LABEL_14:
    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_15;
  }

  v6 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
    goto LABEL_11;
  }

  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = *v3;
  v8 = *(v7 + 16);
  v9 = __OFSUB__(v8, a2);
  v10 = v8 - a2;
  if (v9)
  {
    goto LABEL_12;
  }

  result = specialized UnsafeMutablePointer.moveInitialize(from:count:)((v7 + 32 + 4 * a2), v10, (v7 + 32 + 4 * result + 4 * a3));
  v11 = *(v7 + 16);
  v9 = __OFADD__(v11, v6);
  v12 = v11 + v6;
  if (v9)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  *(v7 + 16) = v12;
LABEL_8:
  if (a3 > 0)
  {
LABEL_15:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v4 < 0)
  {
LABEL_14:
    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_15;
  }

  v6 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
    goto LABEL_11;
  }

  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = *v3;
  v8 = *(v7 + 16);
  v9 = __OFSUB__(v8, a2);
  v10 = v8 - a2;
  if (v9)
  {
    goto LABEL_12;
  }

  result = specialized UnsafeMutablePointer.moveInitialize(from:count:)((v7 + 32 + 2 * a2), v10, (v7 + 32 + 2 * result + 2 * a3));
  v11 = *(v7 + 16);
  v9 = __OFADD__(v11, v6);
  v12 = v11 + v6;
  if (v9)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  *(v7 + 16) = v12;
LABEL_8:
  if (a3 > 0)
  {
LABEL_15:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v4 < 0)
  {
LABEL_14:
    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_15;
  }

  v6 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
    goto LABEL_11;
  }

  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = *v3;
  v8 = *(v7 + 16);
  v9 = __OFSUB__(v8, a2);
  v10 = v8 - a2;
  if (v9)
  {
    goto LABEL_12;
  }

  result = specialized UnsafeMutablePointer.moveInitialize(from:count:)((v7 + 32 + a2), v10, (v7 + 32 + result + a3));
  v11 = *(v7 + 16);
  v9 = __OFADD__(v11, v6);
  v12 = v11 + v6;
  if (v9)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  *(v7 + 16) = v12;
LABEL_8:
  if (a3 > 0)
  {
LABEL_15:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (a1 < 0)
  {
    goto LABEL_13;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
    goto LABEL_13;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = a1 - a2;
  if (__OFSUB__(0, a2 - a1))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v13 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(a1, a2, 0);
  *v4 = v6;
  return result;
}

{
  if (a1 < 0)
  {
    goto LABEL_13;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
    goto LABEL_13;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = a1 - a2;
  if (__OFSUB__(0, a2 - a1))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v13 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(a1, a2, 0);
  *v4 = v6;
  return result;
}

uint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v4 < 0)
  {
LABEL_14:
    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_15;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * a1;
  result = swift_arrayDestroy();
  v10 = __OFSUB__(a3, v4);
  v11 = a3 - v4;
  if (v10)
  {
    goto LABEL_11;
  }

  if (!v11)
  {
    goto LABEL_8;
  }

  v12 = *(v7 + 16);
  if (__OFSUB__(v12, a2))
  {
    goto LABEL_12;
  }

  result = specialized UnsafeMutablePointer.moveInitialize(from:count:)((v7 + 32 + 16 * a2), v12 - a2, (v8 + 16 * a3));
  v13 = *(v7 + 16);
  v10 = __OFADD__(v13, v11);
  v14 = v13 + v11;
  if (v10)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  *(v7 + 16) = v14;
LABEL_8:
  if (a3 > 0)
  {
LABEL_15:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v4 < 0)
  {
LABEL_14:
    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_15;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * a1;
  result = swift_arrayDestroy();
  v10 = __OFSUB__(a3, v4);
  v11 = a3 - v4;
  if (v10)
  {
    goto LABEL_11;
  }

  if (!v11)
  {
    goto LABEL_8;
  }

  v12 = *(v7 + 16);
  if (__OFSUB__(v12, a2))
  {
    goto LABEL_12;
  }

  result = specialized UnsafeMutablePointer.moveInitialize(from:count:)((v7 + 32 + 16 * a2), v12 - a2, (v8 + 16 * a3));
  v13 = *(v7 + 16);
  v10 = __OFADD__(v13, v11);
  v14 = v13 + v11;
  if (v10)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  *(v7 + 16) = v14;
LABEL_8:
  if (a3 > 0)
  {
LABEL_15:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v4 < 0)
  {
LABEL_14:
    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_15;
  }

  v7 = *v3;
  v8 = v7 + 32 + 32 * a1;
  result = swift_arrayDestroy();
  v10 = __OFSUB__(a3, v4);
  v11 = a3 - v4;
  if (v10)
  {
    goto LABEL_11;
  }

  if (!v11)
  {
    goto LABEL_8;
  }

  v12 = *(v7 + 16);
  if (__OFSUB__(v12, a2))
  {
    goto LABEL_12;
  }

  result = specialized UnsafeMutablePointer.moveInitialize(from:count:)((v7 + 32 + 32 * a2), v12 - a2, (v8 + 32 * a3));
  v13 = *(v7 + 16);
  v10 = __OFADD__(v13, v11);
  v14 = v13 + v11;
  if (v10)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  *(v7 + 16) = v14;
LABEL_8:
  if (a3 > 0)
  {
LABEL_15:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a1 < 0)
  {
    goto LABEL_16;
  }

  v6 = *v4;
  v7 = *(*v4 + 2);
  if (v7 < a2)
  {
    goto LABEL_16;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v9 = a1 - a2;
  if (__OFSUB__(0, a2 - a1))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v13 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 3) >> 1)
  {
    if (v7 <= v10)
    {
      v15 = v10;
    }

    else
    {
      v15 = v7;
    }

    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v15, 1, v6, a3, a4);
    *v4 = v6;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, 0);
  *v4 = v6;
  return result;
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  CanonicalSpecializedMetadata = swift_getCanonicalSpecializedMetadata();
  (*(*(CanonicalSpecializedMetadata - 8) + 8))(a1, CanonicalSpecializedMetadata);
  return a1;
}

uint64_t lazy protocol witness table accessor for type UnsafeMutableBufferPointer<Character> and conformance UnsafeMutableBufferPointer<A>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    swift_getCanonicalSpecializedMetadata();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for UnsafeMutableBufferPointer(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for UnsafeMutableBufferPointer(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for Optional(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  if (*(v5 + 84))
  {
    v6 = *(v5 + 64);
  }

  else
  {
    v6 = *(v5 + 64) + 1;
  }

  v7 = *(v5 + 80);
  if (v7 > 7 || (*(v5 + 80) & 0x100000) != 0 || v6 > 0x18)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v7 + 16) & ~v7));

    return a1;
  }

  if (!(*(v5 + 48))(a2, 1, v4))
  {
    (*(v5 + 16))(a1, a2, v4);
    (*(v5 + 56))(a1, 0, 1, v4);
    return a1;
  }

  return memcpy(a1, a2, v6);
}

uint64_t destroy for Optional(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v6 = *(v3 - 8);
  result = (*(v6 + 48))(a1, 1, v3);
  if (!result)
  {
    v5 = *(v6 + 8);

    return v5(a1, v3);
  }

  return result;
}

void *initializeWithCopy for Optional(void *a1, const void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(a2, 1, v5))
  {
    if (*(v6 + 84))
    {
      v7 = *(v6 + 64);
    }

    else
    {
      v7 = *(v6 + 64) + 1;
    }

    return memcpy(a1, a2, v7);
  }

  else
  {
    (*(v6 + 16))(a1, a2, v5);
    (*(v6 + 56))(a1, 0, 1, v5);
    return a1;
  }
}

void *assignWithCopy for Optional(void *a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  v8 = v7(a1, 1, v5);
  v9 = v7(a2, 1, v5);
  if (!v8)
  {
    if (v9)
    {
      v13 = *(v6 + 8);
      v12 = v6 + 8;
      v13(a1, v5);
      v10 = *(v12 + 76);
      v11 = *(v12 + 56);
      goto LABEL_6;
    }

    (*(v6 + 24))(a1, a2, v5);
    return a1;
  }

  if (!v9)
  {
    (*(v6 + 16))(a1, a2, v5);
    (*(v6 + 56))(a1, 0, 1, v5);
    return a1;
  }

  v10 = *(v6 + 84);
  v11 = *(v6 + 64);
LABEL_6:
  if (v10)
  {
    v14 = v11;
  }

  else
  {
    v14 = v11 + 1;
  }

  return memcpy(a1, a2, v14);
}

void *initializeWithTake for Optional(void *a1, const void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(a2, 1, v5))
  {
    if (*(v6 + 84))
    {
      v7 = *(v6 + 64);
    }

    else
    {
      v7 = *(v6 + 64) + 1;
    }

    return memcpy(a1, a2, v7);
  }

  else
  {
    (*(v6 + 32))(a1, a2, v5);
    (*(v6 + 56))(a1, 0, 1, v5);
    return a1;
  }
}

void *assignWithTake for Optional(void *a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  v8 = v7(a1, 1, v5);
  v9 = v7(a2, 1, v5);
  if (!v8)
  {
    if (v9)
    {
      v13 = *(v6 + 8);
      v12 = v6 + 8;
      v13(a1, v5);
      v10 = *(v12 + 76);
      v11 = *(v12 + 56);
      goto LABEL_6;
    }

    (*(v6 + 40))(a1, a2, v5);
    return a1;
  }

  if (!v9)
  {
    (*(v6 + 32))(a1, a2, v5);
    (*(v6 + 56))(a1, 0, 1, v5);
    return a1;
  }

  v10 = *(v6 + 84);
  v11 = *(v6 + 64);
LABEL_6:
  if (v10)
  {
    v14 = v11;
  }

  else
  {
    v14 = v11 + 1;
  }

  return memcpy(a1, a2, v14);
}

uint64_t getEnumTagSinglePayload for Optional(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *storeEnumTagSinglePayload for Optional(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}