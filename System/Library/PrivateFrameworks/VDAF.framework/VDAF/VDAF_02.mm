int64_t _s4VDAF12VDAFProtocolPAAE22decodeMeasurementShare_12aggregatorID5countSayqd__GAA0E0Oyqd__G_s5UInt8VSitKAA12FieldElementRd__lFZAA4PINEVyAA7Field32VSRySfGAA19XofHmacSha256Aes128CG_AQTt2g5(int64_t a1, char a2, char a3, int64_t a4)
{
  v5 = a1;
  if (a2)
  {
    v7 = _s4VDAF4PINEV19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt0B5Tm(0, 85000191);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_270C44540;
    *(inited + 32) = a3;
    v9 = _s4VDAF24ExtendableOutputFunctionPAAE7makeXOF4seed19domainSeparationTag6binderxAA4SeedV_Says5UInt8VGALtFZAA19XofHmacSha256Aes128C_Tt2g5(v5, v7, inited);

    swift_setDeallocating();
    v5 = _s4VDAF12FieldElementPAAE12randomVector5count5usingSayxGSi_qd__tAA24ExtendableOutputFunctionRd__lFZAA7Field32V_AA19XofHmacSha256Aes128CTt1g5(a4, v9);
  }

  else if (*(a1 + 16) == a4)
  {
  }

  else
  {
    _StringGuts.grow(_:)(57);
    MEMORY[0x2743B25F0](0xD000000000000014, 0x8000000270C51E00);
    MEMORY[0x2743B25F0](0xD00000000000002DLL, 0x8000000270C51E50);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v10);

    MEMORY[0x2743B25F0](0x3D746F67202CLL, 0xE600000000000000);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v11);

    v5 = 0;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v12 = 0;
    *(v12 + 8) = 0xE000000000000000;
    *(v12 + 16) = 1;
    swift_willThrow();
  }

  return v5;
}

unint64_t _s4VDAF12VDAFProtocolPAAE22decodeMeasurementShare_12aggregatorID5countSayqd__GAA0E0Oyqd__G_s5UInt8VSitKAA12FieldElementRd__lFZAA5Prio3VyAA13SumVectorTypeVyAA7Field64VSWGAA19XofHmacSha256Aes128CG_ASTt2g5(unint64_t a1, char a2, char a3, unint64_t a4)
{
  v5 = a1;
  if (a2)
  {
    v7 = _s4VDAF12VDAFProtocolPAAE19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA5Prio3VyAA13SumVectorTypeVyAA7Field64VSWGAA19XofHmacSha256Aes128CG_Tt0B5(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_270C44540;
    *(inited + 32) = a3;
    v9 = _s4VDAF24ExtendableOutputFunctionPAAE7makeXOF4seed19domainSeparationTag6binderxAA4SeedV_Says5UInt8VGALtFZAA19XofHmacSha256Aes128C_Tt2g5(v5, v7, inited);

    swift_setDeallocating();
    v5 = _s4VDAF12FieldElementPAAE12randomVector5count5usingSayxGSi_qd__tAA24ExtendableOutputFunctionRd__lFZAA7Field40V_AA19XofHmacSha256Aes128CTt1g5Tm(a4, v9, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), _s4VDAF12FieldElementPAAE06randomC05usingxqd___tAA24ExtendableOutputFunctionRd__lFZAA7Field64V_AA19XofHmacSha256Aes128CTt1g5);
  }

  else if (*(a1 + 16) == a4)
  {
  }

  else
  {
    _StringGuts.grow(_:)(57);
    MEMORY[0x2743B25F0](0xD000000000000014, 0x8000000270C51E00);
    MEMORY[0x2743B25F0](0xD00000000000002DLL, 0x8000000270C51E50);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v10);

    MEMORY[0x2743B25F0](0x3D746F67202CLL, 0xE600000000000000);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v11);

    v5 = 0;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v12 = 0;
    *(v12 + 8) = 0xE000000000000000;
    *(v12 + 16) = 1;
    swift_willThrow();
  }

  return v5;
}

unint64_t _s4VDAF12VDAFProtocolPAAE22decodeMeasurementShare_12aggregatorID5countSayqd__GAA0E0Oyqd__G_s5UInt8VSitKAA12FieldElementRd__lFZAA4PINEVyAA7Field40VSRySfGAA19XofHmacSha256Aes128CG_AQTt2g5Tm(unint64_t a1, char a2, char a3, unint64_t a4, int a5, void (*a6)(BOOL, unint64_t, uint64_t), void (*a7)(uint64_t *__return_ptr, uint64_t))
{
  v8 = a1;
  if (a2)
  {
    v12 = _s4VDAF4PINEV19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt0B5Tm(0, a5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_270C44540;
    *(inited + 32) = a3;
    v14 = _s4VDAF24ExtendableOutputFunctionPAAE7makeXOF4seed19domainSeparationTag6binderxAA4SeedV_Says5UInt8VGALtFZAA19XofHmacSha256Aes128C_Tt2g5(v8, v12, inited);

    swift_setDeallocating();
    v8 = _s4VDAF12FieldElementPAAE12randomVector5count5usingSayxGSi_qd__tAA24ExtendableOutputFunctionRd__lFZAA7Field40V_AA19XofHmacSha256Aes128CTt1g5Tm(a4, v14, a6, a7);
  }

  else if (*(a1 + 16) == a4)
  {
  }

  else
  {
    _StringGuts.grow(_:)(57);
    MEMORY[0x2743B25F0](0xD000000000000014, 0x8000000270C51E00);
    MEMORY[0x2743B25F0](0xD00000000000002DLL, 0x8000000270C51E50);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v15);

    MEMORY[0x2743B25F0](0x3D746F67202CLL, 0xE600000000000000);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v16);

    v8 = 0;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v17 = 0;
    *(v17 + 8) = 0xE000000000000000;
    *(v17 + 16) = 1;
    swift_willThrow();
  }

  return v8;
}

char **_s4VDAF12VDAFProtocolPAAE10splitShare_4into_ySayqd__Gz_Siqd_0_SiXEtAA12FieldElementRd__AA24ExtendableOutputFunctionRd_0_r0_lFZAA4PINEVyAA7Field40VSRySfGAA19XofHmacSha256Aes128CG_AlOTt2g5(char **result, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a2 - 1;
  if (__OFSUB__(a2, 1))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
    goto LABEL_5;
  }

  if (a2 == 1)
  {
    return result;
  }

  v3 = a3;
  v15 = result;
  v4 = *result;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_5:
  result = 0;
  v6 = v4 + 32;
  do
  {
    if (result >= v5)
    {
      goto LABEL_22;
    }

    v7 = (result + 1);
    if (__OFADD__(result, 1))
    {
      goto LABEL_23;
    }

    v8 = v3();
    v9 = *(v4 + 2);
    if (v9)
    {
      v10 = 0;
      while (1)
      {
        result = _s4VDAF12FieldElementPAAE06randomC05usingxqd___tAA24ExtendableOutputFunctionRd__lFZAA7Field40V_AA19XofHmacSha256Aes128CTt1g5(v8, &v16);
        if (v10 >= *(v4 + 2))
        {
          break;
        }

        v11 = *&v6[8 * v10];
        v12 = v11 - v16;
        if (v11 < v16)
        {
          v13 = 0xFFFEB00001 - v16;
          if (v16 > 0xFFFEB00001)
          {
            goto LABEL_21;
          }

          v14 = __CFADD__(v11, v13);
          v12 = v11 + v13;
          if (v14)
          {
            __break(1u);
            goto LABEL_18;
          }
        }

        *&v6[8 * v10++] = v12;
        if (v9 == v10)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

LABEL_6:

    result = v7;
  }

  while (v7 != v5);
LABEL_18:
  *v15 = v4;
  return result;
}

char **_s4VDAF12VDAFProtocolPAAE10splitShare_4into_ySayqd__Gz_Siqd_0_SiXEtAA12FieldElementRd__AA24ExtendableOutputFunctionRd_0_r0_lFZAA4PINEVyAA7Field32VSRySfGAA19XofHmacSha256Aes128CG_AlOTt2g5(char **result, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a2 - 1;
  if (__OFSUB__(a2, 1))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
    goto LABEL_5;
  }

  if (a2 == 1)
  {
    return result;
  }

  v3 = a3;
  v15 = result;
  v4 = *result;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_5:
  result = 0;
  v6 = v4 + 32;
  do
  {
    if (result >= v5)
    {
      goto LABEL_22;
    }

    v7 = (result + 1);
    if (__OFADD__(result, 1))
    {
      goto LABEL_23;
    }

    v8 = v3();
    v9 = *(v4 + 2);
    if (v9)
    {
      v10 = 0;
      while (1)
      {
        result = _s4VDAF12FieldElementPAAE06randomC05usingxqd___tAA24ExtendableOutputFunctionRd__lFZAA7Field32V_AA19XofHmacSha256Aes128CTt1g5(v8, &v16);
        if (v10 >= *(v4 + 2))
        {
          break;
        }

        v11 = *&v6[4 * v10];
        v12 = v11 - v16;
        if (v11 < v16)
        {
          v13 = -1048575 - v16;
          if (v16 > 0xFFF00001)
          {
            goto LABEL_21;
          }

          v14 = __CFADD__(v11, v13);
          v12 = v11 + v13;
          if (v14)
          {
            __break(1u);
            goto LABEL_18;
          }
        }

        *&v6[4 * v10++] = v12;
        if (v9 == v10)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

LABEL_6:

    result = v7;
  }

  while (v7 != v5);
LABEL_18:
  *v15 = v4;
  return result;
}

char **_s4VDAF12VDAFProtocolPAAE10splitShare_4into_ySayqd__Gz_Siqd_0_SiXEtAA12FieldElementRd__AA24ExtendableOutputFunctionRd_0_r0_lFZAA4PINEVyAA7Field64VSRySfGAA19XofHmacSha256Aes128CG_AlOTt2g5(char **result, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a2 - 1;
  if (__OFSUB__(a2, 1))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
    goto LABEL_5;
  }

  if (a2 == 1)
  {
    return result;
  }

  v3 = a3;
  v15 = result;
  v4 = *result;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_5:
  result = 0;
  v6 = v4 + 32;
  do
  {
    if (result >= v5)
    {
      goto LABEL_22;
    }

    v7 = (result + 1);
    if (__OFADD__(result, 1))
    {
      goto LABEL_23;
    }

    v8 = v3();
    v9 = *(v4 + 2);
    if (v9)
    {
      v10 = 0;
      while (1)
      {
        result = _s4VDAF12FieldElementPAAE06randomC05usingxqd___tAA24ExtendableOutputFunctionRd__lFZAA7Field64V_AA19XofHmacSha256Aes128CTt1g5(v8, &v16);
        if (v10 >= *(v4 + 2))
        {
          break;
        }

        v11 = *&v6[8 * v10];
        v12 = v11 - v16;
        if (v11 < v16)
        {
          v13 = 0xFFFFFFFF00000001 - v16;
          if (v16 > 0xFFFFFFFF00000001)
          {
            goto LABEL_21;
          }

          v14 = __CFADD__(v11, v13);
          v12 = v11 + v13;
          if (v14)
          {
            __break(1u);
            goto LABEL_18;
          }
        }

        *&v6[8 * v10++] = v12;
        if (v9 == v10)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

LABEL_6:

    result = v7;
  }

  while (v7 != v5);
LABEL_18:
  *v15 = v4;
  return result;
}

unint64_t _s4VDAF12FieldElementPAAE06randomC05usingxqd___tAA24ExtendableOutputFunctionRd__lFZAA7Field40V_AA19XofHmacSha256Aes128CTt1g5@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v2 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream;
  v3 = *(a1 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream);
  if (!v3)
  {
    goto LABEL_40;
  }

  v4 = a1;
  v5 = 0;
  v6 = 0;
  v7 = 1;
  v29 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream;
  while (1)
  {
    v8 = v3[3];
    if (v8 == v3[4])
    {
      break;
    }

    swift_beginAccess();
    if ((v8 & 0x8000000000000000) != 0)
    {
      goto LABEL_38;
    }

LABEL_24:
    v23 = v3[2];
    if (v8 >= *(v23 + 16))
    {
      goto LABEL_39;
    }

    v24 = *(v23 + v8 + 32);
    v3[3] = v8 + 1;

    v25 = 8 * v6;
    if (8 * v6 > -65 && v25 <= 64)
    {
      if ((v25 & 0x8000000000000000) == 0)
      {
        if (v25 == 64)
        {
          goto LABEL_31;
        }

        v26 = v24 << (v25 & 0x38);
        goto LABEL_30;
      }

      if (v25 != -64)
      {
        v26 = v24 >> ((-8 * v6) & 0x38);
LABEL_30:
        v5 |= v26;
      }
    }

LABEL_31:
    if (v7 == 5)
    {
      if (v5 <= 0xFFFEB00001)
      {
        return _s4VDAF12FieldElementPAAEyx06FiniteB0_11IntegerTypeQZcfCAA7Field40V_Tt1g5(v5, a2);
      }

      v7 = 0;
      v5 = 0;
    }

    v6 = v7++;
    v3 = *(v4 + v2);
    if (!v3)
    {
      goto LABEL_40;
    }
  }

  swift_beginAccess();
  v9 = v3[2];
  v10 = v9[1].i64[0];

  if (!v10)
  {
LABEL_21:
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v3[2] = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
      v3[2] = v9;
    }

    v20 = v9[1].i64[0];
    v21 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_key;
    v22 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_nonce;
    swift_beginAccess();
    specialized static AES.CTR.encryptInPlace(_:using:updating:)(v9 + 2, v9[2].i64 + v20, v3 + v21, v3 + v22);
    swift_endAccess();
    v3[2] = v9;
    swift_endAccess();
    v3[3] = 0;
    swift_beginAccess();
    v8 = 0;
    v2 = v29;
    v4 = a1;
    goto LABEL_24;
  }

  v11 = swift_isUniquelyReferenced_nonNull_native();
  v3[2] = v9;
  if ((v11 & 1) == 0)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
  }

  v12 = v9[1].u64[0];
  v13 = v10 - 1;
  if (v12 < v10 - 1)
  {
    v13 = v9[1].u64[0];
  }

  if (v13 > 0x1F)
  {
    v15 = v13 + 1;
    v16 = v15 & 0x1F;
    if ((v15 & 0x1F) == 0)
    {
      v16 = 32;
    }

    v14 = v15 - v16;
    v17 = v9 + 3;
    v18 = v14;
    do
    {
      v17[-1] = 0uLL;
      *v17 = 0uLL;
      v17 += 2;
      v18 -= 32;
    }

    while (v18);
  }

  else
  {
    v14 = 0;
  }

  while (v14 < v12)
  {
    v9[2].i8[v14++] = 0;
    if (v10 == v14)
    {
      v3[2] = v9;
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t _s4VDAF12FieldElementPAAE06randomC05usingxqd___tAA24ExtendableOutputFunctionRd__lFZAA7Field32V_AA19XofHmacSha256Aes128CTt1g5@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v2 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream;
  v3 = *(a1 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream);
  if (!v3)
  {
    goto LABEL_40;
  }

  v4 = a1;
  v5 = 0;
  v6 = 0;
  v7 = 1;
  v29 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream;
  while (1)
  {
    v8 = v3[3];
    if (v8 == v3[4])
    {
      break;
    }

    swift_beginAccess();
    if ((v8 & 0x8000000000000000) != 0)
    {
      goto LABEL_38;
    }

LABEL_24:
    v23 = v3[2];
    if (v8 >= *(v23 + 16))
    {
      goto LABEL_39;
    }

    v24 = *(v23 + v8 + 32);
    v3[3] = v8 + 1;

    v25 = 8 * v6;
    if (8 * v6 >= -32 && v25 <= 32)
    {
      if ((v25 & 0x8000000000000000) == 0)
      {
        if (v25 == 32)
        {
          goto LABEL_31;
        }

        v26 = v24 << (v25 & 0x18);
        goto LABEL_30;
      }

      if (v25 != -32)
      {
        v26 = v24 >> ((-8 * v6) & 0x18);
LABEL_30:
        v5 = v26 | v5;
      }
    }

LABEL_31:
    if (v7 == 4)
    {
      if (v5 <= 0xFFF00001)
      {
        return _s4VDAF12FieldElementPAAEyx06FiniteB0_11IntegerTypeQZcfCAA7Field32V_Tt1g5(v5, a2);
      }

      v7 = 0;
      v5 = 0;
    }

    v6 = v7++;
    v3 = *(v4 + v2);
    if (!v3)
    {
      goto LABEL_40;
    }
  }

  swift_beginAccess();
  v9 = v3[2];
  v10 = v9[1].i64[0];

  if (!v10)
  {
LABEL_21:
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v3[2] = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
      v3[2] = v9;
    }

    v20 = v9[1].i64[0];
    v21 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_key;
    v22 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_nonce;
    swift_beginAccess();
    specialized static AES.CTR.encryptInPlace(_:using:updating:)(v9 + 2, v9[2].i64 + v20, v3 + v21, v3 + v22);
    swift_endAccess();
    v3[2] = v9;
    swift_endAccess();
    v3[3] = 0;
    swift_beginAccess();
    v8 = 0;
    v2 = v29;
    v4 = a1;
    goto LABEL_24;
  }

  v11 = swift_isUniquelyReferenced_nonNull_native();
  v3[2] = v9;
  if ((v11 & 1) == 0)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
  }

  v12 = v9[1].u64[0];
  v13 = v10 - 1;
  if (v12 < v10 - 1)
  {
    v13 = v9[1].u64[0];
  }

  if (v13 > 0x1F)
  {
    v15 = v13 + 1;
    v16 = v15 & 0x1F;
    if ((v15 & 0x1F) == 0)
    {
      v16 = 32;
    }

    v14 = v15 - v16;
    v17 = v9 + 3;
    v18 = v14;
    do
    {
      v17[-1] = 0uLL;
      *v17 = 0uLL;
      v17 += 2;
      v18 -= 32;
    }

    while (v18);
  }

  else
  {
    v14 = 0;
  }

  while (v14 < v12)
  {
    v9[2].i8[v14++] = 0;
    if (v10 == v14)
    {
      v3[2] = v9;
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

unint64_t _s4VDAF12FieldElementPAAE06randomC05usingxqd___tAA24ExtendableOutputFunctionRd__lFZAA7Field64V_AA19XofHmacSha256Aes128CTt1g5@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v2 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream;
  v3 = *(a1 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream);
  if (!v3)
  {
    goto LABEL_40;
  }

  v4 = a1;
  v5 = 0;
  v6 = 0;
  v7 = 1;
  v29 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream;
  while (1)
  {
    v8 = v3[3];
    if (v8 == v3[4])
    {
      break;
    }

    swift_beginAccess();
    if ((v8 & 0x8000000000000000) != 0)
    {
      goto LABEL_38;
    }

LABEL_24:
    v23 = v3[2];
    if (v8 >= *(v23 + 16))
    {
      goto LABEL_39;
    }

    v24 = *(v23 + v8 + 32);
    v3[3] = v8 + 1;

    v25 = 8 * v6;
    if (8 * v6 > -65 && v25 <= 64)
    {
      if ((v25 & 0x8000000000000000) == 0)
      {
        if (v25 == 64)
        {
          goto LABEL_31;
        }

        v26 = v24 << (v25 & 0x38);
        goto LABEL_30;
      }

      if (v25 != -64)
      {
        v26 = v24 >> ((-8 * v6) & 0x38);
LABEL_30:
        v5 |= v26;
      }
    }

LABEL_31:
    if (v7 == 8)
    {
      if (v5 <= 0xFFFFFFFF00000001)
      {
        return _s4VDAF12FieldElementPAAEyx06FiniteB0_11IntegerTypeQZcfCAA7Field64V_Tt1g5(v5, a2);
      }

      v7 = 0;
      v5 = 0;
    }

    v6 = v7++;
    v3 = *(v4 + v2);
    if (!v3)
    {
      goto LABEL_40;
    }
  }

  swift_beginAccess();
  v9 = v3[2];
  v10 = v9[1].i64[0];

  if (!v10)
  {
LABEL_21:
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v3[2] = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
      v3[2] = v9;
    }

    v20 = v9[1].i64[0];
    v21 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_key;
    v22 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_nonce;
    swift_beginAccess();
    specialized static AES.CTR.encryptInPlace(_:using:updating:)(v9 + 2, v9[2].i64 + v20, v3 + v21, v3 + v22);
    swift_endAccess();
    v3[2] = v9;
    swift_endAccess();
    v3[3] = 0;
    swift_beginAccess();
    v8 = 0;
    v2 = v29;
    v4 = a1;
    goto LABEL_24;
  }

  v11 = swift_isUniquelyReferenced_nonNull_native();
  v3[2] = v9;
  if ((v11 & 1) == 0)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
  }

  v12 = v9[1].u64[0];
  v13 = v10 - 1;
  if (v12 < v10 - 1)
  {
    v13 = v9[1].u64[0];
  }

  if (v13 > 0x1F)
  {
    v15 = v13 + 1;
    v16 = v15 & 0x1F;
    if ((v15 & 0x1F) == 0)
    {
      v16 = 32;
    }

    v14 = v15 - v16;
    v17 = v9 + 3;
    v18 = v14;
    do
    {
      v17[-1] = 0uLL;
      *v17 = 0uLL;
      v17 += 2;
      v18 -= 32;
    }

    while (v18);
  }

  else
  {
    v14 = 0;
  }

  while (v14 < v12)
  {
    v9[2].i8[v14++] = 0;
    if (v10 == v14)
    {
      v3[2] = v9;
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t _s4VDAF12FieldElementPAAE11integerFrom10floatValue18fractionalBitCount06FiniteB0_11IntegerTypeQZqd___SitKSBRd__lFZAA7Field40V_SfTt2g5(unint64_t a1, float a2)
{
  if ((LODWORD(a2) >> 23) == 255)
  {
    v2 = LODWORD(a2) & 0x7FFFFF;
    lazy protocol witness table accessor for type FieldElementError and conformance FieldElementError();
    swift_allocError();
    v4 = v3 + 2;
    if (v2)
    {
      v5 = 0x8000000270C52050;
      v6 = 0xD000000000000011;
    }

    else
    {
      v5 = 0x8000000270C52070;
      v6 = 0xD000000000000018;
    }

    *v3 = v6;
    v3[1] = v5;
    goto LABEL_22;
  }

  if ((LODWORD(a2) & 0x7FFFFF) != 0 && !(LODWORD(a2) >> 23))
  {
    lazy protocol witness table accessor for type FieldElementError and conformance FieldElementError();
    swift_allocError();
    *v7 = 0xD000000000000017;
    v7[1] = 0x8000000270C52190;
LABEL_21:
    v4 = v7 + 2;
LABEL_22:
    *v4 = 4;
    return swift_willThrow();
  }

  v10 = Float.exponent.getter();
  if (__OFADD__(v10, a1))
  {
    __break(1u);
LABEL_27:
    v22 = 0;
    v23 = 0xE000000000000000;
    _StringGuts.grow(_:)(80);
    MEMORY[0x2743B25F0](0x74616F6C46, 0xE500000000000000);
    MEMORY[0x2743B25F0](0xD00000000000001ELL, 0x8000000270C52110);
    MEMORY[0x2743B25F0](0x3436746E4955, 0xE600000000000000);
    MEMORY[0x2743B25F0](0xD00000000000002ELL, 0x8000000270C52130);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if ((v10 + a1) > 63)
  {
    v22 = 0;
    v23 = 0xE000000000000000;
    _StringGuts.grow(_:)(75);
    MEMORY[0x2743B25F0](0xD000000000000016, 0x8000000270C52090);
    Float.exponent.getter();
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v16);

    MEMORY[0x2743B25F0](0xD000000000000018, 0x8000000270C520B0);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v17);

    MEMORY[0x2743B25F0](0xD000000000000016, 0x8000000270C520D0);
    v24 = 64;
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v18);

    v14 = 46;
    v15 = 0xE100000000000000;
    goto LABEL_20;
  }

  if (a1 >= 0x40)
  {
    v11 = 0;
  }

  else
  {
    v11 = 1 << a1;
  }

  if (a1 > 0x40)
  {
    v11 = 0;
  }

  _ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZs6UInt64V_SfTt1g5(&v22, fabsf(rintf(v11 * a2)));
  if (v23)
  {
    goto LABEL_27;
  }

  v12 = v22;
  if (v22 > 0x7FFF580000)
  {
    v22 = 0;
    v23 = 0xE000000000000000;
    _StringGuts.grow(_:)(49);
    MEMORY[0x2743B25F0](0x6C615674616F6C66, 0xEB000000003D6575);
    *&v24 = a2;
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x2743B25F0](0xD000000000000020, 0x8000000270C52160);
    v24 = v12;
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v13);

    v14 = 11817;
    v15 = 0xE200000000000000;
LABEL_20:
    MEMORY[0x2743B25F0](v14, v15);
    v19 = v22;
    v20 = v23;
    lazy protocol witness table accessor for type FieldElementError and conformance FieldElementError();
    swift_allocError();
    *v7 = v19;
    v7[1] = v20;
    goto LABEL_21;
  }

  if (a2 >= 0.0)
  {
    return v22;
  }

  else
  {
    return 0xFFFEB00001 - v22;
  }
}

uint64_t _s4VDAF12FieldElementPAAE11integerFrom10floatValue18fractionalBitCount06FiniteB0_11IntegerTypeQZqd___SitKSBRd__lFZAA7Field32V_SfTt2g5(unint64_t a1, float a2)
{
  if ((LODWORD(a2) >> 23) == 255)
  {
    v2 = LODWORD(a2) & 0x7FFFFF;
    lazy protocol witness table accessor for type FieldElementError and conformance FieldElementError();
    swift_allocError();
    v4 = v3 + 2;
    if (v2)
    {
      v5 = 0x8000000270C52050;
      v6 = 0xD000000000000011;
    }

    else
    {
      v5 = 0x8000000270C52070;
      v6 = 0xD000000000000018;
    }

    *v3 = v6;
    v3[1] = v5;
    goto LABEL_19;
  }

  if ((LODWORD(a2) & 0x7FFFFF) != 0 && !(LODWORD(a2) >> 23))
  {
    lazy protocol witness table accessor for type FieldElementError and conformance FieldElementError();
    swift_allocError();
    *v7 = 0xD000000000000017;
    v7[1] = 0x8000000270C52190;
LABEL_18:
    v4 = v7 + 2;
LABEL_19:
    *v4 = 4;
    return swift_willThrow();
  }

  v10 = Float.exponent.getter();
  if (__OFADD__(v10, a1))
  {
    __break(1u);
LABEL_24:
    v22 = 0;
    v23 = 0xE000000000000000;
    _StringGuts.grow(_:)(80);
    MEMORY[0x2743B25F0](0x74616F6C46, 0xE500000000000000);
    MEMORY[0x2743B25F0](0xD00000000000001ELL, 0x8000000270C52110);
    MEMORY[0x2743B25F0](0x3233746E4955, 0xE600000000000000);
    MEMORY[0x2743B25F0](0xD00000000000002ELL, 0x8000000270C52130);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if ((v10 + a1) > 31)
  {
    v22 = 0;
    v23 = 0xE000000000000000;
    _StringGuts.grow(_:)(75);
    MEMORY[0x2743B25F0](0xD000000000000016, 0x8000000270C52090);
    Float.exponent.getter();
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v16);

    MEMORY[0x2743B25F0](0xD000000000000018, 0x8000000270C520B0);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v17);

    MEMORY[0x2743B25F0](0xD000000000000016, 0x8000000270C520D0);
    v24 = 32;
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v18);

    v14 = 46;
    v15 = 0xE100000000000000;
    goto LABEL_17;
  }

  v11 = (1 << a1);
  if (a1 >= 0x20)
  {
    v11 = 0.0;
  }

  _ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZs6UInt32V_SfTt1g5(&v22, fabsf(rintf(v11 * a2)));
  if ((v22 & 0x100000000) != 0)
  {
    goto LABEL_24;
  }

  v12 = v22;
  if (v22 > 0x7FF80000)
  {
    v22 = 0;
    v23 = 0xE000000000000000;
    _StringGuts.grow(_:)(49);
    MEMORY[0x2743B25F0](0x6C615674616F6C66, 0xEB000000003D6575);
    *&v24 = a2;
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x2743B25F0](0xD000000000000020, 0x8000000270C52160);
    LODWORD(v24) = v12;
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v13);

    v14 = 11817;
    v15 = 0xE200000000000000;
LABEL_17:
    MEMORY[0x2743B25F0](v14, v15);
    v19 = v22;
    v20 = v23;
    lazy protocol witness table accessor for type FieldElementError and conformance FieldElementError();
    swift_allocError();
    *v7 = v19;
    v7[1] = v20;
    goto LABEL_18;
  }

  if (a2 >= 0.0)
  {
    return v22;
  }

  else
  {
    return (-1048575 - v22);
  }
}

uint64_t _s4VDAF12FieldElementPAAE11integerFrom10floatValue18fractionalBitCount06FiniteB0_11IntegerTypeQZqd___SitKSBRd__lFZAA7Field64V_SfTt2g5(unint64_t a1, float a2)
{
  if ((LODWORD(a2) >> 23) == 255)
  {
    v2 = LODWORD(a2) & 0x7FFFFF;
    lazy protocol witness table accessor for type FieldElementError and conformance FieldElementError();
    swift_allocError();
    v4 = v3 + 2;
    if (v2)
    {
      v5 = 0x8000000270C52050;
      v6 = 0xD000000000000011;
    }

    else
    {
      v5 = 0x8000000270C52070;
      v6 = 0xD000000000000018;
    }

    *v3 = v6;
    v3[1] = v5;
    goto LABEL_22;
  }

  if ((LODWORD(a2) & 0x7FFFFF) != 0 && !(LODWORD(a2) >> 23))
  {
    lazy protocol witness table accessor for type FieldElementError and conformance FieldElementError();
    swift_allocError();
    *v7 = 0xD000000000000017;
    v7[1] = 0x8000000270C52190;
LABEL_21:
    v4 = v7 + 2;
LABEL_22:
    *v4 = 4;
    return swift_willThrow();
  }

  v10 = Float.exponent.getter();
  if (__OFADD__(v10, a1))
  {
    __break(1u);
LABEL_27:
    v22 = 0;
    v23 = 0xE000000000000000;
    _StringGuts.grow(_:)(80);
    MEMORY[0x2743B25F0](0x74616F6C46, 0xE500000000000000);
    MEMORY[0x2743B25F0](0xD00000000000001ELL, 0x8000000270C52110);
    MEMORY[0x2743B25F0](0x3436746E4955, 0xE600000000000000);
    MEMORY[0x2743B25F0](0xD00000000000002ELL, 0x8000000270C52130);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if ((v10 + a1) > 63)
  {
    v22 = 0;
    v23 = 0xE000000000000000;
    _StringGuts.grow(_:)(75);
    MEMORY[0x2743B25F0](0xD000000000000016, 0x8000000270C52090);
    Float.exponent.getter();
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v16);

    MEMORY[0x2743B25F0](0xD000000000000018, 0x8000000270C520B0);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v17);

    MEMORY[0x2743B25F0](0xD000000000000016, 0x8000000270C520D0);
    v24 = 64;
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v18);

    v14 = 46;
    v15 = 0xE100000000000000;
    goto LABEL_20;
  }

  if (a1 >= 0x40)
  {
    v11 = 0;
  }

  else
  {
    v11 = 1 << a1;
  }

  if (a1 > 0x40)
  {
    v11 = 0;
  }

  _ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZs6UInt64V_SfTt1g5(&v22, fabsf(rintf(v11 * a2)));
  if (v23)
  {
    goto LABEL_27;
  }

  v12 = v22;
  if (v22 > 0x7FFFFFFF80000000)
  {
    v22 = 0;
    v23 = 0xE000000000000000;
    _StringGuts.grow(_:)(49);
    MEMORY[0x2743B25F0](0x6C615674616F6C66, 0xEB000000003D6575);
    *&v24 = a2;
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x2743B25F0](0xD000000000000020, 0x8000000270C52160);
    v24 = v12;
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v13);

    v14 = 11817;
    v15 = 0xE200000000000000;
LABEL_20:
    MEMORY[0x2743B25F0](v14, v15);
    v19 = v22;
    v20 = v23;
    lazy protocol witness table accessor for type FieldElementError and conformance FieldElementError();
    swift_allocError();
    *v7 = v19;
    v7[1] = v20;
    goto LABEL_21;
  }

  if (a2 >= 0.0)
  {
    return v22;
  }

  else
  {
    return 0xFFFFFFFF00000001 - v22;
  }
}

uint64_t _s4VDAF12FieldElementPAAE11inputVectorxs10ArraySliceVyxG_tKcfCAA7Field40V_Tt1g5@<X0>(uint64_t a1@<X1>, int64_t a2@<X2>, unint64_t a3@<X3>, unint64_t *a4@<X8>)
{
  v8 = a3 >> 1;
  if (__OFSUB__(a3 >> 1, a2))
  {
    goto LABEL_51;
  }

  v6 = a2;
  v7 = a1;
  v4 = a4;
  _s4VDAF12FieldElementPAAE20assertValidBitLengthyySiKFZAA7Field40V_Tt0g5((a3 >> 1) - a2);
  if (v5)
  {
    return swift_unknownObjectRelease();
  }

  if (one-time initialization token for one != -1)
  {
    goto LABEL_52;
  }

  while (2)
  {
    v10 = static Field40.one;
    result = _s4VDAF12FieldElementPAAEyx06FiniteB0_11IntegerTypeQZcfCAA7Field40V_Tt1g5(2uLL, &v29);
    v11 = v8 - v6;
    if (v8 != v6)
    {
      if (v8 <= v6)
      {
        __break(1u);
        return result;
      }

      v8 = 0;
      v12 = (v7 + 8 * v6);
      while (1)
      {
        v15 = *v12++;
        v16 = (v15 * v10) >> 64;
        v17 = (0xCFFE47FFFEAFFFFFLL * v15 * v10 * 0xFFFEB00001uLL) >> 64;
        v18 = __CFADD__(-(v15 * v10), v15 * v10);
        v19 = __CFADD__(v17, v16);
        v20 = v17 + v16;
        if (v19)
        {
          goto LABEL_18;
        }

        if (v20 == -1)
        {
          break;
        }

        v22 = v20 + v18;
        if (v22 >= 0xFFFEB00001)
        {
          v22 -= 0xFFFEB00001;
        }

        if (!v22)
        {
          goto LABEL_34;
        }

LABEL_20:
        v19 = v22 <= 0xFFFEB00001;
        v23 = 0xFFFEB00001 - v22;
        if (!v19)
        {
          goto LABEL_46;
        }

        if (v8 >= v23)
        {
          v8 -= v23;
        }

        else
        {
          v19 = v23 <= 0xFFFEB00001;
          v24 = 0xFFFEB00001 - v23;
          if (!v19)
          {
            goto LABEL_49;
          }

          v19 = __CFADD__(v8, v24);
          v8 += v24;
          if (v19)
          {
            goto LABEL_50;
          }
        }

LABEL_34:
        v25 = (v10 * v29) >> 64;
        v26 = (0xCFFE47FFFEAFFFFFLL * v10 * v29 * 0xFFFEB00001uLL) >> 64;
        v13 = __CFADD__(-(v10 * v29), v10 * v29);
        v27 = v26 + v25;
        if (!__CFADD__(v26, v25))
        {
          if (v27 != -1)
          {
            v28 = v27 + v13;
            if (v28 >= 0xFFFEB00001)
            {
              v10 = v28 - 0xFFFEB00001;
            }

            else
            {
              v10 = v28;
            }

            goto LABEL_12;
          }

          if (!v13)
          {
            v10 = 0xFFFFFF00014FFFFELL;
            goto LABEL_12;
          }

          v13 = 1;
        }

        v14 = v13 + v27;
        v10 = v14 - 0xFFFEB00001;
        if (v14 >= 0xFFFEB00001)
        {
          goto LABEL_48;
        }

LABEL_12:
        if (!--v11)
        {
          goto LABEL_7;
        }
      }

      if (!v18)
      {
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        swift_once();
        continue;
      }

      v18 = 1;
LABEL_18:
      v21 = v18 + v20;
      v19 = __CFADD__(v21, 0xFFFFFF00014FFFFFLL);
      v22 = v21 - 0xFFFEB00001;
      if (v19)
      {
        goto LABEL_47;
      }

      if (!v22)
      {
        goto LABEL_34;
      }

      goto LABEL_20;
    }

    break;
  }

  v8 = 0;
LABEL_7:
  result = swift_unknownObjectRelease();
  *v4 = v8;
  return result;
}

uint64_t _s4VDAF12FieldElementPAAE11inputVectorxs10ArraySliceVyxG_tKcfCAA7Field32V_Tt1g5@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, unsigned int *a4@<X8>)
{
  v8 = a3 >> 1;
  if (__OFSUB__(a3 >> 1, a2))
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = a2;
  v7 = a1;
  v4 = a4;
  result = _s4VDAF12FieldElementPAAE20assertValidBitLengthyySiKFZAA7Field32V_Tt0g5((a3 >> 1) - a2);
  if (v5)
  {
    return swift_unknownObjectRelease();
  }

  if (one-time initialization token for one != -1)
  {
LABEL_9:
    result = swift_once();
    v11 = v8 - v6;
    v10 = v8 <= v6;
    if (v8 == v6)
    {
LABEL_6:
      v12 = 0;
LABEL_7:
      result = swift_unknownObjectRelease();
      *v4 = v12;
      return result;
    }

    goto LABEL_10;
  }

  v11 = v8 - v6;
  v10 = v8 <= v6;
  if (v8 == v6)
  {
    goto LABEL_6;
  }

LABEL_10:
  if (v10)
  {
    goto LABEL_39;
  }

  v12 = 0;
  LODWORD(v13) = static Field32.one;
  v14 = (v7 + 4 * v6);
  while (1)
  {
    v15 = *v14++;
    v16 = v15 * v13;
    v17 = 4293918721 * (-1048577 * v16);
    v18 = __CFADD__(v17, v16);
    v19 = v17 + v16;
    v20 = HIDWORD(v19);
    if (v18)
    {
      LODWORD(v20) = HIDWORD(v19) + 0xFFFFF;
      if (HIDWORD(v19) >= 0xFFF00001)
      {
        goto LABEL_36;
      }
    }

    else
    {
      if (v19 >= 0xFFF0000100000000)
      {
        LODWORD(v20) = HIDWORD(v19) + 0xFFFFF;
      }

      if (!v20)
      {
        goto LABEL_31;
      }
    }

    v18 = v20 <= 0xFFF00001;
    v21 = -1048575 - v20;
    if (!v18)
    {
      goto LABEL_35;
    }

    if (v12 >= v21)
    {
      v12 -= v21;
    }

    else
    {
      v18 = v21 <= 0xFFF00001;
      v22 = -1048575 - v21;
      if (!v18)
      {
        goto LABEL_37;
      }

      v18 = __CFADD__(v12, v22);
      v12 += v22;
      if (v18)
      {
        goto LABEL_38;
      }
    }

LABEL_31:
    v23 = v13 << 21;
    v24 = 2 * v13;
    v25 = v23 - v24;
    v26 = 4293918721 * v24;
    v18 = __CFADD__(v26, v25);
    v27 = v26 + v25;
    v13 = HIDWORD(v27);
    if (!v18)
    {
      if (v27 >= 0xFFF0000100000000)
      {
        LODWORD(v13) = HIDWORD(v27) + 0xFFFFF;
      }

      goto LABEL_14;
    }

    LODWORD(v13) = HIDWORD(v27) + 0xFFFFF;
    if (HIDWORD(v27) >= 0xFFF00001)
    {
      break;
    }

LABEL_14:
    if (!--v11)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t _s4VDAF12FieldElementPAAE11inputVectorxs10ArraySliceVyxG_tKcfCAA7Field64V_Tt1g5@<X0>(uint64_t a1@<X1>, int64_t a2@<X2>, unint64_t a3@<X3>, unint64_t *a4@<X8>)
{
  v8 = a3 >> 1;
  if (__OFSUB__(a3 >> 1, a2))
  {
    goto LABEL_51;
  }

  v6 = a2;
  v7 = a1;
  v4 = a4;
  _s4VDAF12FieldElementPAAE20assertValidBitLengthyySiKFZAA7Field64V_Tt0g5((a3 >> 1) - a2);
  if (v5)
  {
    return swift_unknownObjectRelease();
  }

  if (one-time initialization token for one != -1)
  {
    goto LABEL_52;
  }

LABEL_5:
  v10 = static Field64.one;
  result = _s4VDAF12FieldElementPAAEyx06FiniteB0_11IntegerTypeQZcfCAA7Field64V_Tt1g5(2uLL, &v29);
  v11 = v8 - v6;
  if (v8 != v6)
  {
    if (v8 <= v6)
    {
      __break(1u);
      return result;
    }

    v8 = 0;
    v12 = (v7 + 8 * v6);
    while (1)
    {
      v15 = *v12++;
      v16 = (v15 * v10) >> 64;
      v17 = (0xFFFFFFFEFFFFFFFFLL * v15 * v10 * 0xFFFFFFFF00000001) >> 64;
      v18 = __CFADD__(-(v15 * v10), v15 * v10);
      v19 = v17 + v16;
      if (!__CFADD__(v17, v16))
      {
        if (v19 != -1)
        {
          v22 = v19 + v18;
          if (v22 >= 0xFFFFFFFF00000001)
          {
            v22 += 0xFFFFFFFFLL;
          }

          if (!v22)
          {
            goto LABEL_34;
          }

LABEL_20:
          v21 = v22 <= 0xFFFFFFFF00000001;
          v23 = 0xFFFFFFFF00000001 - v22;
          if (!v21)
          {
            __break(1u);
LABEL_47:
            __break(1u);
LABEL_48:
            __break(1u);
LABEL_49:
            __break(1u);
LABEL_50:
            __break(1u);
LABEL_51:
            __break(1u);
LABEL_52:
            swift_once();
            goto LABEL_5;
          }

LABEL_22:
          if (v8 >= v23)
          {
            v8 -= v23;
          }

          else
          {
            v21 = v23 <= 0xFFFFFFFF00000001;
            v24 = 0xFFFFFFFF00000001 - v23;
            if (!v21)
            {
              goto LABEL_49;
            }

            v21 = __CFADD__(v8, v24);
            v8 += v24;
            if (v21)
            {
              goto LABEL_50;
            }
          }

          goto LABEL_34;
        }

        if (!v18)
        {
          v23 = 0xFFFFFFFE00000003;
          goto LABEL_22;
        }

        v18 = 1;
      }

      v20 = v18 + v19;
      v21 = __CFADD__(v20, 0xFFFFFFFFLL);
      v22 = v20 + 0xFFFFFFFFLL;
      if (v21)
      {
        goto LABEL_47;
      }

      if (v22)
      {
        goto LABEL_20;
      }

LABEL_34:
      v25 = (v10 * v29) >> 64;
      v26 = (0xFFFFFFFEFFFFFFFFLL * v10 * v29 * 0xFFFFFFFF00000001) >> 64;
      v13 = __CFADD__(-(v10 * v29), v10 * v29);
      v27 = v26 + v25;
      if (!__CFADD__(v26, v25))
      {
        if (v27 != -1)
        {
          v28 = v27 + v13;
          if (v28 >= 0xFFFFFFFF00000001)
          {
            v10 = v28 + 0xFFFFFFFF;
          }

          else
          {
            v10 = v28;
          }

          goto LABEL_12;
        }

        if (!v13)
        {
          v10 = 4294967294;
          goto LABEL_12;
        }

        v13 = 1;
      }

      v14 = v13 + v27;
      v10 = v14 + 0xFFFFFFFF;
      if (v14 >= 0xFFFFFFFF00000001)
      {
        goto LABEL_48;
      }

LABEL_12:
      if (!--v11)
      {
        goto LABEL_7;
      }
    }
  }

  v8 = 0;
LABEL_7:
  result = swift_unknownObjectRelease();
  *v4 = v8;
  return result;
}

uint64_t _s4VDAF12FieldElementPAAE20assertValidBitLengthyySiKFZAA7Field40V_Tt0g5(uint64_t result)
{
  if (result >= 40)
  {
    _StringGuts.grow(_:)(42);

    v1 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v1);

    MEMORY[0x2743B25F0](0xD000000000000015, 0x8000000270C51DE0);
    v2 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v2);

    lazy protocol witness table accessor for type FieldElementError and conformance FieldElementError();
    swift_allocError();
    *v3 = 0xD000000000000011;
    *(v3 + 8) = 0x8000000270C51DC0;
    *(v3 + 16) = 3;
    return swift_willThrow();
  }

  return result;
}

uint64_t _s4VDAF12FieldElementPAAE20assertValidBitLengthyySiKFZAA7Field32V_Tt0g5(uint64_t result)
{
  if (result >= 32)
  {
    _StringGuts.grow(_:)(42);

    v1 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v1);

    MEMORY[0x2743B25F0](0xD000000000000015, 0x8000000270C51DE0);
    v2 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v2);

    lazy protocol witness table accessor for type FieldElementError and conformance FieldElementError();
    swift_allocError();
    *v3 = 0xD000000000000011;
    *(v3 + 8) = 0x8000000270C51DC0;
    *(v3 + 16) = 3;
    return swift_willThrow();
  }

  return result;
}

uint64_t _s4VDAF12FieldElementPAAE20assertValidBitLengthyySiKFZAA7Field64V_Tt0g5(uint64_t result)
{
  if (result >= 64)
  {
    _StringGuts.grow(_:)(42);

    v1 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v1);

    MEMORY[0x2743B25F0](0xD000000000000015, 0x8000000270C51DE0);
    v2 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v2);

    lazy protocol witness table accessor for type FieldElementError and conformance FieldElementError();
    swift_allocError();
    *v3 = 0xD000000000000011;
    *(v3 + 8) = 0x8000000270C51DC0;
    *(v3 + 16) = 3;
    return swift_willThrow();
  }

  return result;
}

uint64_t _s4VDAF12FieldElementPAAE6encode_4into4withy06FiniteB0_11IntegerTypeQZ_SayxGzSitKFZAA7Field40V_Tt2g5(uint64_t result, char **a2, uint64_t a3)
{
  v3 = a3;
  if (a3 >= 65)
  {
    _StringGuts.grow(_:)(25);

    v4 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v4);

    MEMORY[0x2743B25F0](2113056, 0xE300000000000000);
    v5 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v5);

    v6 = 0xD000000000000012;
    v7 = 0x8000000270C52010;
    v8 = 2;
LABEL_23:
    lazy protocol witness table accessor for type FieldElementError and conformance FieldElementError();
    swift_allocError();
    *v18 = v6;
    *(v18 + 8) = v7;
    *(v18 + 16) = v8;
    return swift_willThrow();
  }

  if (a3 < 0)
  {
    __break(1u);
    return result;
  }

  v9 = result;
  if (a3)
  {
    v10 = *a2;
    v20 = result;
    v9 = result;
    do
    {
      if (v9)
      {
        v11 = 0x160DCD7524;
      }

      else
      {
        v11 = 0;
      }

      if (__CFADD__(-v11, v11))
      {
        v12 = ((0xCFFE47FFFEAFFFFFLL * v11 * 0xFFFEB00001uLL) >> 64) + 1;
      }

      else
      {
        v12 = (0xCFFE47FFFEAFFFFFLL * v11 * 0xFFFEB00001uLL) >> 64;
      }

      if (v12 >= 0xFFFEB00001)
      {
        v13 = 0;
      }

      else
      {
        v13 = v12;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
      }

      v15 = *(v10 + 2);
      v14 = *(v10 + 3);
      if (v15 >= v14 >> 1)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v10);
      }

      *(v10 + 2) = v15 + 1;
      *&v10[8 * v15 + 32] = v13;
      v9 >>= 1;
      --v3;
    }

    while (v3);
    *a2 = v10;
    result = v20;
  }

  if (v9)
  {
    _StringGuts.grow(_:)(39);

    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v16);

    MEMORY[0x2743B25F0](0x6962206874697720, 0xEF3D687464695774);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v17);

    v6 = 0xD000000000000014;
    v7 = 0x8000000270C51FD0;
    v8 = 1;
    goto LABEL_23;
  }

  return result;
}

uint64_t _s4VDAF12FieldElementPAAE6encode_4into4withy06FiniteB0_11IntegerTypeQZ_SayxGzSitKFZAA7Field32V_Tt2g5(uint64_t result, char **a2, uint64_t a3)
{
  v3 = a3;
  if (a3 >= 33)
  {
    _StringGuts.grow(_:)(25);

    v4 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v4);

    MEMORY[0x2743B25F0](2113056, 0xE300000000000000);
    v5 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v5);

    v6 = 0xD000000000000012;
    v7 = 0x8000000270C52010;
    v8 = 2;
LABEL_17:
    lazy protocol witness table accessor for type FieldElementError and conformance FieldElementError();
    swift_allocError();
    *v16 = v6;
    *(v16 + 8) = v7;
    *(v16 + 16) = v8;
    return swift_willThrow();
  }

  if (a3 < 0)
  {
    __break(1u);
    return result;
  }

  v9 = result;
  if (a3)
  {
    v10 = *a2;
    v18 = result;
    v9 = result;
    do
    {
      if (v9)
      {
        v11 = 266338049;
      }

      else
      {
        v11 = 0;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
      }

      v13 = *(v10 + 2);
      v12 = *(v10 + 3);
      if (v13 >= v12 >> 1)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v10);
      }

      *(v10 + 2) = v13 + 1;
      *&v10[4 * v13 + 32] = (v11 + 4293918721u * (-1048577 * v11)) >> 32;
      v9 >>= 1;
      --v3;
    }

    while (v3);
    *a2 = v10;
    result = v18;
  }

  if (v9)
  {
    _StringGuts.grow(_:)(39);

    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v14);

    MEMORY[0x2743B25F0](0x6962206874697720, 0xEF3D687464695774);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v15);

    v6 = 0xD000000000000014;
    v7 = 0x8000000270C51FD0;
    v8 = 1;
    goto LABEL_17;
  }

  return result;
}

uint64_t _s4VDAF12FieldElementPAAE6encode_4into4withy06FiniteB0_11IntegerTypeQZ_SayxGzSitKFZAA7Field64V_Tt2g5(uint64_t result, char **a2, uint64_t a3)
{
  v3 = a3;
  if (a3 >= 65)
  {
    _StringGuts.grow(_:)(25);

    v4 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v4);

    MEMORY[0x2743B25F0](2113056, 0xE300000000000000);
    v5 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v5);

    v6 = 0xD000000000000012;
    v7 = 0x8000000270C52010;
    v8 = 2;
LABEL_22:
    lazy protocol witness table accessor for type FieldElementError and conformance FieldElementError();
    swift_allocError();
    *v17 = v6;
    *(v17 + 8) = v7;
    *(v17 + 16) = v8;
    return swift_willThrow();
  }

  if (a3 < 0)
  {
    __break(1u);
    return result;
  }

  v9 = result;
  if (a3)
  {
    v19 = result;
    v10 = *a2;
    v9 = result;
    do
    {
      if (v9)
      {
        v11 = 0xFFFFFFFE00000001;
      }

      else
      {
        v11 = 0;
      }

      v12 = (-(v11 | (v11 << 32)) * 0xFFFFFFFF00000001) >> 64;
      if (__CFADD__(-v11, v11))
      {
        if (v12 > 0xFFFFFFFEFFFFFFFFLL)
        {
          v12 += 0x100000000;
        }

        else
        {
          ++v12;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
      }

      v14 = *(v10 + 2);
      v13 = *(v10 + 3);
      if (v14 >= v13 >> 1)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v10);
      }

      *(v10 + 2) = v14 + 1;
      *&v10[8 * v14 + 32] = v12;
      v9 >>= 1;
      --v3;
    }

    while (v3);
    result = v19;
    *a2 = v10;
  }

  if (v9)
  {
    _StringGuts.grow(_:)(39);

    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v15);

    MEMORY[0x2743B25F0](0x6962206874697720, 0xEF3D687464695774);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v16);

    v6 = 0xD000000000000014;
    v7 = 0x8000000270C51FD0;
    v8 = 1;
    goto LABEL_22;
  }

  return result;
}

uint64_t specialized FieldElement.pow(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v3 = a2;
  v4 = a1;
  v6 = 0x1B7FFFEB0;
  *a3 = a2;
  result = _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF8_UInt128V_s6UInt64VTt1g5(a1, &v22);
  if (v22 == 0)
  {
LABEL_2:
    *a3 = v6;
    return result;
  }

  while (1)
  {
    result = _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF8_UInt128V_s6UInt64VTt1g5(v4 & 1, &v22);
    v9 = *(&v22 + 1) | v22;
    if (v22 == 0)
    {
      goto LABEL_26;
    }

    v10 = (v3 * v6) >> 64;
    v11 = (0xCFFE47FFFEAFFFFFLL * v3 * v6 * 0xFFFEB00001uLL) >> 64;
    v12 = __CFADD__(-(v3 * v6), v3 * v6);
    v13 = __CFADD__(v11, v10);
    v14 = v11 + v10;
    if (v13)
    {
      v15 = v14 + v12;
    }

    else
    {
      if (v14 != -1)
      {
        v9 = 0;
        v16 = v14 + v12;
        if (v16 >= 0xFFFEB00001)
        {
          v6 = v16 - 0xFFFEB00001;
        }

        else
        {
          v6 = v16;
        }

        goto LABEL_26;
      }

      v15 = 0;
      if (!v12)
      {
        v9 = 0;
        v6 = 0xFFFFFF00014FFFFELL;
        goto LABEL_26;
      }
    }

    v6 = v15 - 0xFFFEB00001;
    if (v15 >= 0xFFFEB00001)
    {
      goto LABEL_33;
    }

    v9 = 0;
LABEL_26:
    v17 = (__PAIR128__(v9, v3) * __PAIR128__(v9, v3)) >> 64;
    v18 = (0xCFFE47FFFEAFFFFFLL * v3 * v3 * 0xFFFEB00001uLL) >> 64;
    v19 = __CFADD__(-(v3 * v3), v3 * v3);
    v13 = __CFADD__(v18, v17);
    v20 = v18 + v17;
    if (!v13)
    {
      if (v20 == -1)
      {
        v3 = 0xFFFFFF00014FFFFELL;
        if (v19)
        {
          v3 = 0xFFFFFF00014FFFFFLL;
        }
      }

      else
      {
        v8 = v20 + v19;
        if (v8 >= 0xFFFEB00001)
        {
          v3 = v8 - 0xFFFEB00001;
        }

        else
        {
          v3 = v8;
        }
      }

      goto LABEL_8;
    }

    v21 = v20 + v19;
    v3 = v21 - 0xFFFEB00001;
    if (v21 >= 0xFFFEB00001)
    {
      break;
    }

LABEL_8:
    v4 >>= 1;
    result = _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF8_UInt128V_s6UInt64VTt1g5(v4, &v22);
    if (v22 == 0)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t specialized FieldElement.pow(_:)@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, unsigned int *a3@<X8>)
{
  v3 = a2;
  LODWORD(v4) = a1;
  *a3 = a2;
  result = _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF8_UInt128V_s6UInt32VTt1g5(a1, &v15);
  v7 = 0xFFFFF;
  if (v15 == 0)
  {
LABEL_2:
    *a3 = v7;
    return result;
  }

  while (1)
  {
    result = _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF8_UInt128V_s6UInt32VTt1g5(v4 & 1, &v15);
    if (v15 != 0)
    {
      v8 = v3 * v7;
      v9 = 4293918721 * (-1048577 * v8);
      v10 = __CFADD__(v9, v8);
      v11 = v9 + v8;
      if (v10)
      {
        v7 = HIDWORD(v11) + 0xFFFFF;
        if (HIDWORD(v11) >= 0xFFF00001)
        {
          goto LABEL_20;
        }
      }

      else if (v11 >= 0xFFF0000100000000)
      {
        v7 = HIDWORD(v11) + 0xFFFFF;
      }

      else
      {
        v7 = HIDWORD(v11);
      }
    }

    v12 = v3 * v3;
    v13 = 4293918721 * (-1048577 * v12);
    v10 = __CFADD__(v13, v12);
    v14 = v13 + v12;
    if (!v10)
    {
      if (v14 >= 0xFFF0000100000000)
      {
        v3 = HIDWORD(v14) + 0xFFFFF;
      }

      else
      {
        v3 = HIDWORD(v14);
      }

      goto LABEL_7;
    }

    v3 = HIDWORD(v14) + 0xFFFFF;
    if (HIDWORD(v14) >= 0xFFF00001)
    {
      break;
    }

LABEL_7:
    v4 = v4 >> 1;
    result = _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF8_UInt128V_s6UInt32VTt1g5(v4, &v15);
    if (v15 == 0)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized FieldElement.pow(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a2;
  v4 = a1;
  *a3 = a2;
  result = _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF8_UInt128V_s6UInt64VTt1g5(a1, &v22);
  if (v22 == 0)
  {
    v7 = 0xFFFFFFFFLL;
LABEL_3:
    *a3 = v7;
    return result;
  }

  v7 = 0xFFFFFFFFLL;
  while (1)
  {
    result = _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF8_UInt128V_s6UInt64VTt1g5(v4 & 1, &v22);
    v9 = *(&v22 + 1) | v22;
    if (v22 == 0)
    {
      goto LABEL_27;
    }

    v10 = (v3 * v7) >> 64;
    v11 = (0xFFFFFFFEFFFFFFFFLL * v3 * v7 * 0xFFFFFFFF00000001) >> 64;
    v12 = __CFADD__(-(v3 * v7), v3 * v7);
    v13 = __CFADD__(v11, v10);
    v14 = v11 + v10;
    if (v13)
    {
      v15 = v14 + v12;
    }

    else
    {
      if (v14 != -1)
      {
        v9 = 0;
        v16 = v14 + v12;
        if (v16 >= 0xFFFFFFFF00000001)
        {
          v7 = v16 + 0xFFFFFFFF;
        }

        else
        {
          v7 = v16;
        }

        goto LABEL_27;
      }

      v15 = 0;
      if (!v12)
      {
        v9 = 0;
        v7 = 4294967294;
        goto LABEL_27;
      }
    }

    v7 = v15 + 0xFFFFFFFF;
    if (v15 >= 0xFFFFFFFF00000001)
    {
      goto LABEL_35;
    }

    v9 = 0;
LABEL_27:
    v17 = (__PAIR128__(v9, v3) * __PAIR128__(v9, v3)) >> 64;
    v18 = (0xFFFFFFFEFFFFFFFFLL * v3 * v3 * 0xFFFFFFFF00000001) >> 64;
    v19 = __CFADD__(-(v3 * v3), v3 * v3);
    v13 = __CFADD__(v18, v17);
    v20 = v18 + v17;
    if (!v13)
    {
      if (v20 == -1)
      {
        if (v19)
        {
          v3 = 0xFFFFFFFFLL;
        }

        else
        {
          v3 = 4294967294;
        }
      }

      else
      {
        v8 = v20 + v19;
        if (v8 >= 0xFFFFFFFF00000001)
        {
          v3 = v8 + 0xFFFFFFFF;
        }

        else
        {
          v3 = v8;
        }
      }

      goto LABEL_9;
    }

    v21 = v20 + v19;
    v3 = v21 + 0xFFFFFFFF;
    if (v21 >= 0xFFFFFFFF00000001)
    {
      break;
    }

LABEL_9:
    v4 >>= 1;
    result = _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF8_UInt128V_s6UInt64VTt1g5(v4, &v22);
    if (v22 == 0)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t specialized Array<A>.elementwiseSubtract(_:)(uint64_t result)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  if (v3 != *(result + 16))
  {
LABEL_12:
    _StringGuts.grow(_:)(28);

    v15 = *(v2 + 16);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v12);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v13);

    lazy protocol witness table accessor for type FieldElementError and conformance FieldElementError();
    swift_allocError();
    *v14 = 0xD000000000000020;
    *(v14 + 8) = 0x8000000270C52260;
    *(v14 + 16) = 1;
    return swift_willThrow();
  }

  if (v3)
  {
    v4 = result;
    v5 = *v1;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_16;
    }

    while (1)
    {
      if (v3 > *(v2 + 16))
      {
        __break(1u);
        return result;
      }

      for (i = 32; ; i += 8)
      {
        v7 = *(v4 + i);
        v8 = *(v2 + i);
        v9 = v8 - v7;
        if (v8 < v7)
        {
          break;
        }

LABEL_6:
        *(v2 + i) = v9;
        if (!--v3)
        {
          *v1 = v2;
          return result;
        }
      }

      v10 = 0xFFFEB00001 - v7;
      if (v7 <= 0xFFFEB00001)
      {
        break;
      }

      __break(1u);
LABEL_16:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
      v2 = result;
    }

    v11 = __CFADD__(v8, v10);
    v9 = v8 + v10;
    if (v11)
    {
      __break(1u);
      goto LABEL_12;
    }

    goto LABEL_6;
  }

  return result;
}

{
  v2 = *v1;
  v3 = *(*v1 + 16);
  if (v3 != *(result + 16))
  {
LABEL_12:
    _StringGuts.grow(_:)(28);

    v15 = *(v2 + 16);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v12);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v13);

    lazy protocol witness table accessor for type FieldElementError and conformance FieldElementError();
    swift_allocError();
    *v14 = 0xD000000000000020;
    *(v14 + 8) = 0x8000000270C521B0;
    *(v14 + 16) = 1;
    return swift_willThrow();
  }

  if (v3)
  {
    v4 = result;
    v5 = *v1;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_16;
    }

    while (1)
    {
      if (v3 > *(v2 + 16))
      {
        __break(1u);
        return result;
      }

      for (i = 32; ; i += 4)
      {
        v7 = *(v4 + i);
        v8 = *(v2 + i);
        v9 = v8 - v7;
        if (v8 < v7)
        {
          break;
        }

LABEL_6:
        *(v2 + i) = v9;
        if (!--v3)
        {
          *v1 = v2;
          return result;
        }
      }

      v10 = -1048575 - v7;
      if (v7 <= 0xFFF00001)
      {
        break;
      }

      __break(1u);
LABEL_16:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
      v2 = result;
    }

    v11 = __CFADD__(v8, v10);
    v9 = v8 + v10;
    if (v11)
    {
      __break(1u);
      goto LABEL_12;
    }

    goto LABEL_6;
  }

  return result;
}

{
  v2 = *v1;
  v3 = *(*v1 + 16);
  if (v3 != *(result + 16))
  {
LABEL_12:
    _StringGuts.grow(_:)(28);

    v15 = *(v2 + 16);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v12);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v13);

    lazy protocol witness table accessor for type FieldElementError and conformance FieldElementError();
    swift_allocError();
    *v14 = 0xD000000000000020;
    *(v14 + 8) = 0x8000000270C51A10;
    *(v14 + 16) = 1;
    return swift_willThrow();
  }

  if (v3)
  {
    v4 = result;
    v5 = *v1;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_16;
    }

    while (1)
    {
      if (v3 > *(v2 + 16))
      {
        __break(1u);
        return result;
      }

      for (i = 32; ; i += 8)
      {
        v7 = *(v4 + i);
        v8 = *(v2 + i);
        v9 = v8 - v7;
        if (v8 < v7)
        {
          break;
        }

LABEL_6:
        *(v2 + i) = v9;
        if (!--v3)
        {
          *v1 = v2;
          return result;
        }
      }

      v10 = 0xFFFFFFFF00000001 - v7;
      if (v7 <= 0xFFFFFFFF00000001)
      {
        break;
      }

      __break(1u);
LABEL_16:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
      v2 = result;
    }

    v11 = __CFADD__(v8, v10);
    v9 = v8 + v10;
    if (v11)
    {
      __break(1u);
      goto LABEL_12;
    }

    goto LABEL_6;
  }

  return result;
}

uint64_t specialized ParallelSum.evaluate<A>(at:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 16);
  if (!v3)
  {
    goto LABEL_70;
  }

  v4 = *(result + 16);
  v5 = 0;
  if (v3 < 1 || v4 == 0)
  {
LABEL_7:
    *a2 = v5;
    return result;
  }

  v7 = 0;
  v8 = result + 32;
  result = 1;
  while (1)
  {
    v9 = v7;
    v10 = v4 - v7;
    v11 = __OFSUB__(v4, v7);
    v12 = __OFADD__(v7, v3);
    v7 += v3;
    if (v12)
    {
      if (v11)
      {
        goto LABEL_67;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_71;
      }

      v13 = v10 >= v3;
      v14 = v10 >= v3 ? v7 : v4;
      if (v13)
      {
        goto LABEL_71;
      }

      v7 = 0x7FFFFFFFFFFFFFFFLL;
      if (v14 < v9)
      {
        goto LABEL_59;
      }
    }

    else
    {
      if (v11)
      {
        goto LABEL_66;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        v14 = v7;
        if (v7 < v9)
        {
          goto LABEL_59;
        }
      }

      else
      {
        if (v10 >= v3)
        {
          v14 = v7;
        }

        else
        {
          v14 = v4;
        }

        if (v14 < v9)
        {
          goto LABEL_59;
        }
      }
    }

    if ((result & 1) == 0)
    {
      goto LABEL_60;
    }

    if (v9 < 0)
    {
      goto LABEL_61;
    }

    if (v4 < v14)
    {
      goto LABEL_62;
    }

    if (v9 >= v14)
    {
      goto LABEL_63;
    }

    result = v9 + 1;
    if (v9 + 1 >= v14)
    {
      goto LABEL_64;
    }

    v15 = *(v8 + 8 * v9);
    v16 = *(v8 + 8 * result);
    v17 = (v16 * v15) >> 64;
    v18 = (0xCFFE47FFFEAFFFFFLL * v16 * v15 * 0xFFFEB00001uLL) >> 64;
    result = __CFADD__(-(v16 * v15), v16 * v15);
    v19 = v18 + v17;
    if (__CFADD__(v18, v17))
    {
      goto LABEL_41;
    }

    if (v19 == -1)
    {
      break;
    }

    v21 = v19 + (result & 1);
    result = v21 - 0xFFFEB00001;
    if (v21 >= 0xFFFEB00001)
    {
      v21 -= 0xFFFEB00001;
    }

    if (!v21)
    {
      goto LABEL_9;
    }

LABEL_43:
    v13 = v21 <= 0xFFFEB00001;
    v22 = 0xFFFEB00001 - v21;
    if (!v13)
    {
      goto LABEL_58;
    }

    result = v5 - v22;
    if (v5 >= v22)
    {
      v5 -= v22;
    }

    else
    {
      v13 = v22 <= 0xFFFEB00001;
      v23 = 0xFFFEB00001 - v22;
      if (!v13)
      {
        goto LABEL_68;
      }

      v13 = __CFADD__(v5, v23);
      v5 += v23;
      if (v13)
      {
        goto LABEL_69;
      }
    }

LABEL_9:
    result = v4 >= v7;
    if (v7 >= v4)
    {
      goto LABEL_7;
    }
  }

  if (result)
  {
    result = 1;
LABEL_41:
    v20 = result + v19;
    v13 = __CFADD__(v20, 0xFFFFFF00014FFFFFLL);
    v21 = v20 - 0xFFFEB00001;
    if (v13)
    {
      goto LABEL_65;
    }

    if (!v21)
    {
      goto LABEL_9;
    }

    goto LABEL_43;
  }

LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
  return result;
}

unint64_t specialized ParallelSum.evaluate<A>(at:)@<X0>(unint64_t result@<X0>, unint64_t *a2@<X8>)
{
  v3 = *(v2 + 16);
  if (v3)
  {
    v5 = *(result + 16);
    v6 = 0;
    if (v3 < 1 || v5 == 0)
    {
LABEL_7:
      *a2 = v6;
      return result;
    }

    v8 = 0;
    v9 = *(v2 + 32);
    v10 = result + 32;
    v11 = 1;
    while (1)
    {
      v12 = v8;
      v13 = v5 - v8;
      v14 = __OFSUB__(v5, v8);
      v15 = __OFADD__(v8, v3);
      v8 += v3;
      if (v15)
      {
        if (v14)
        {
          goto LABEL_50;
        }

        if ((v13 & 0x8000000000000000) != 0)
        {
          goto LABEL_55;
        }

        v16 = v13 >= v3;
        v17 = v13 >= v3 ? v8 : v5;
        if (v16)
        {
          goto LABEL_55;
        }

        v8 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        if (v14)
        {
          goto LABEL_51;
        }

        v18 = v13 >= v3 ? v8 : v5;
        v17 = (v13 & 0x8000000000000000) == 0 ? v18 : v8;
      }

      if (v17 < v12)
      {
        break;
      }

      if (!v11)
      {
        goto LABEL_45;
      }

      if (v12 < 0)
      {
        goto LABEL_46;
      }

      if (v5 < v17)
      {
        goto LABEL_47;
      }

      if (v12 >= v17)
      {
        goto LABEL_48;
      }

      v19 = *(v9 + 16);
      if (!v19)
      {
        goto LABEL_49;
      }

      while (v19 >= 1)
      {
        if (*(v9 + 8 * v19-- + 24))
        {
          result = specialized evaluateUsingHorner<A, B>(_:atInput:)(v9, *(v10 + 8 * v12), &v22);
          if (v22)
          {
            v21 = 0xFFFEB00001 - v22;
            if (v22 > 0xFFFEB00001)
            {
              goto LABEL_52;
            }

            if (v6 >= v21)
            {
              v6 -= v21;
            }

            else
            {
              if (v21 > 0xFFFEB00001)
              {
                goto LABEL_53;
              }

              v16 = __CFADD__(v6, v22);
              v6 += v22;
              if (v16)
              {
                __break(1u);
                goto LABEL_44;
              }
            }
          }

          break;
        }
      }

      v11 = v5 >= v8;
      if (v8 >= v5)
      {
        goto LABEL_7;
      }
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
  }

  __break(1u);
LABEL_55:
  __break(1u);
  return result;
}

{
  v3 = *(v2 + 16);
  if (!v3)
  {
    goto LABEL_70;
  }

  v4 = *(result + 16);
  v5 = 0;
  if (v3 < 1 || v4 == 0)
  {
LABEL_7:
    *a2 = v5;
    return result;
  }

  v7 = 0;
  v8 = result + 32;
  v9 = 1;
  while (1)
  {
    v10 = v7;
    result = v4 - v7;
    v11 = __OFSUB__(v4, v7);
    v12 = __OFADD__(v7, v3);
    v7 += v3;
    if (v12)
    {
      if (v11)
      {
        goto LABEL_67;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_71;
      }

      v13 = result >= v3;
      result = result >= v3 ? v7 : v4;
      if (v13)
      {
        goto LABEL_71;
      }

      v7 = 0x7FFFFFFFFFFFFFFFLL;
      if (result < v10)
      {
        goto LABEL_59;
      }
    }

    else
    {
      if (v11)
      {
        goto LABEL_66;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        result = v7;
        if (v7 < v10)
        {
          goto LABEL_59;
        }
      }

      else
      {
        if (result >= v3)
        {
          result = v7;
        }

        else
        {
          result = v4;
        }

        if (result < v10)
        {
          goto LABEL_59;
        }
      }
    }

    if (!v9)
    {
      goto LABEL_60;
    }

    if (v10 < 0)
    {
      goto LABEL_61;
    }

    if (v4 < result)
    {
      goto LABEL_62;
    }

    if (v10 >= result)
    {
      goto LABEL_63;
    }

    v14 = v10 + 1;
    if (v10 + 1 >= result)
    {
      goto LABEL_64;
    }

    v15 = *(v8 + 8 * v10);
    v16 = *(v8 + 8 * v14);
    result = (v16 * v15) >> 64;
    v17 = (0xFFFFFFFEFFFFFFFFLL * v16 * v15 * 0xFFFFFFFF00000001) >> 64;
    v18 = __CFADD__(-(v16 * v15), v16 * v15);
    v19 = v17 + result;
    if (__CFADD__(v17, result))
    {
      goto LABEL_41;
    }

    if (v19 != -1)
    {
      break;
    }

    if (!v18)
    {
      v22 = 0xFFFFFFFE00000003;
      goto LABEL_45;
    }

    v18 = 1;
LABEL_41:
    v20 = v18 + v19;
    v13 = __CFADD__(v20, 0xFFFFFFFFLL);
    v21 = v20 + 0xFFFFFFFFLL;
    if (v13)
    {
      goto LABEL_65;
    }

    if (v21)
    {
      goto LABEL_43;
    }

LABEL_9:
    v9 = v4 >= v7;
    if (v7 >= v4)
    {
      goto LABEL_7;
    }
  }

  v21 = v19 + v18;
  if (v21 >= 0xFFFFFFFF00000001)
  {
    v21 += 0xFFFFFFFFLL;
  }

  if (!v21)
  {
    goto LABEL_9;
  }

LABEL_43:
  v13 = v21 <= 0xFFFFFFFF00000001;
  v22 = 0xFFFFFFFF00000001 - v21;
  if (v13)
  {
LABEL_45:
    if (v5 >= v22)
    {
      v5 -= v22;
    }

    else
    {
      v13 = v22 <= 0xFFFFFFFF00000001;
      v23 = 0xFFFFFFFF00000001 - v22;
      if (!v13)
      {
        goto LABEL_68;
      }

      v13 = __CFADD__(v5, v23);
      v5 += v23;
      if (v13)
      {
        goto LABEL_69;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
  return result;
}

void specialized ParallelSum.evaluate<A>(at:)(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, unint64_t *a4@<X8>)
{
  v5 = a3 >> 1;
  v6 = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
    goto LABEL_67;
  }

  v7 = *(v4 + 16);
  if (!v7)
  {
LABEL_68:
    __break(1u);
    return;
  }

  v8 = v6 >= 0;
  if (v7 > 0)
  {
    v8 = v6 < 1;
  }

  if (!v8)
  {
    v9 = 0;
    v10 = 0;
    while (1)
    {
      v12 = v10;
      v13 = __OFADD__(v10, v7);
      v10 += v7;
      if (v13)
      {
        v10 = (v10 >> 63) ^ 0x8000000000000000;
      }

      v13 = __OFADD__(a2, v12);
      v14 = a2 + v12;
      if (v13)
      {
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      v15 = v5 - v14;
      if (__OFSUB__(v5, v14))
      {
        goto LABEL_55;
      }

      if (v7 < 1)
      {
        if (v15 <= 0)
        {
          v16 = v5;
          if (v7 < v15)
          {
            goto LABEL_24;
          }
        }
      }

      else if ((v15 & 0x8000000000000000) == 0)
      {
        v16 = v5;
        if (v15 < v7)
        {
          goto LABEL_24;
        }
      }

      v16 = v14 + v7;
      if (__OFADD__(v14, v7))
      {
        goto LABEL_64;
      }

LABEL_24:
      if (v16 < v14)
      {
        goto LABEL_56;
      }

      if (v5 < v14)
      {
        goto LABEL_57;
      }

      if (v14 < a2)
      {
        goto LABEL_58;
      }

      if (v5 < v16)
      {
        goto LABEL_59;
      }

      if (v16 < 0)
      {
        goto LABEL_60;
      }

      if (v14 >= v16)
      {
        goto LABEL_61;
      }

      v17 = v14 + 1;
      if (v14 + 1 >= v16)
      {
        goto LABEL_62;
      }

      v18 = *(a1 + 8 * v14);
      v19 = *(a1 + 8 * v17);
      v20 = (v19 * v18) >> 64;
      v21 = (0xCFFE47FFFEAFFFFFLL * v19 * v18 * 0xFFFEB00001uLL) >> 64;
      v22 = __CFADD__(-(v19 * v18), v19 * v18);
      v23 = v21 + v20;
      if (__CFADD__(v21, v20))
      {
        goto LABEL_36;
      }

      if (v23 == -1)
      {
        if (!v22)
        {
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

        v22 = 1;
LABEL_36:
        v24 = v22 + v23;
        v25 = __CFADD__(v24, 0xFFFFFF00014FFFFFLL);
        v26 = v24 - 0xFFFEB00001;
        if (v25)
        {
          goto LABEL_63;
        }

        if (!v26)
        {
          goto LABEL_10;
        }

        goto LABEL_38;
      }

      v26 = v23 + v22;
      if (v26 >= 0xFFFEB00001)
      {
        v26 -= 0xFFFEB00001;
      }

      if (!v26)
      {
        goto LABEL_10;
      }

LABEL_38:
      v25 = v26 <= 0xFFFEB00001;
      v27 = 0xFFFEB00001 - v26;
      if (!v25)
      {
        goto LABEL_53;
      }

      if (v9 >= v27)
      {
        v9 -= v27;
      }

      else
      {
        v25 = v27 <= 0xFFFEB00001;
        v28 = 0xFFFEB00001 - v27;
        if (!v25)
        {
          goto LABEL_65;
        }

        v25 = __CFADD__(v9, v28);
        v9 += v28;
        if (v25)
        {
          goto LABEL_66;
        }
      }

LABEL_10:
      v11 = v6 >= v10;
      if (v7 > 0)
      {
        v11 = v10 >= v6;
      }

      if (v11)
      {
        goto LABEL_7;
      }
    }
  }

  v9 = 0;
LABEL_7:
  *a4 = v9;
}

{
  v5 = a3 >> 1;
  v6 = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
    goto LABEL_67;
  }

  v7 = *(v4 + 16);
  if (!v7)
  {
LABEL_68:
    __break(1u);
    return;
  }

  v8 = v6 >= 0;
  if (v7 > 0)
  {
    v8 = v6 < 1;
  }

  if (!v8)
  {
    v9 = 0;
    v10 = 0;
    while (1)
    {
      v12 = v10;
      v13 = __OFADD__(v10, v7);
      v10 += v7;
      if (v13)
      {
        v10 = (v10 >> 63) ^ 0x8000000000000000;
      }

      v13 = __OFADD__(a2, v12);
      v14 = a2 + v12;
      if (v13)
      {
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      v15 = v5 - v14;
      if (__OFSUB__(v5, v14))
      {
        goto LABEL_55;
      }

      if (v7 < 1)
      {
        if (v15 <= 0)
        {
          v16 = a3 >> 1;
          if (v7 < v15)
          {
            goto LABEL_24;
          }
        }
      }

      else if ((v15 & 0x8000000000000000) == 0)
      {
        v16 = a3 >> 1;
        if (v15 < v7)
        {
          goto LABEL_24;
        }
      }

      v16 = v14 + v7;
      if (__OFADD__(v14, v7))
      {
        goto LABEL_64;
      }

LABEL_24:
      if (v16 < v14)
      {
        goto LABEL_56;
      }

      if (v5 < v14)
      {
        goto LABEL_57;
      }

      if (v14 < a2)
      {
        goto LABEL_58;
      }

      if (v5 < v16)
      {
        goto LABEL_59;
      }

      if (v16 < 0)
      {
        goto LABEL_60;
      }

      if (v14 >= v16)
      {
        goto LABEL_61;
      }

      v17 = v14 + 1;
      if (v14 + 1 >= v16)
      {
        goto LABEL_62;
      }

      v18 = *(a1 + 8 * v14);
      v19 = *(a1 + 8 * v17);
      v20 = (v19 * v18) >> 64;
      v21 = (0xFFFFFFFEFFFFFFFFLL * v19 * v18 * 0xFFFFFFFF00000001) >> 64;
      v22 = __CFADD__(-(v19 * v18), v19 * v18);
      v23 = v21 + v20;
      if (!__CFADD__(v21, v20))
      {
        if (v23 != -1)
        {
          v26 = v23 + v22;
          if (v26 >= 0xFFFFFFFF00000001)
          {
            v26 += 0xFFFFFFFFLL;
          }

          if (!v26)
          {
            goto LABEL_10;
          }

LABEL_38:
          v25 = v26 <= 0xFFFFFFFF00000001;
          v27 = 0xFFFFFFFF00000001 - v26;
          if (!v25)
          {
            __break(1u);
            goto LABEL_54;
          }

LABEL_40:
          if (v9 >= v27)
          {
            v9 -= v27;
          }

          else
          {
            v25 = v27 <= 0xFFFFFFFF00000001;
            v28 = 0xFFFFFFFF00000001 - v27;
            if (!v25)
            {
              goto LABEL_65;
            }

            v25 = __CFADD__(v9, v28);
            v9 += v28;
            if (v25)
            {
              goto LABEL_66;
            }
          }

          goto LABEL_10;
        }

        if (!v22)
        {
          v27 = 0xFFFFFFFE00000003;
          goto LABEL_40;
        }

        v22 = 1;
      }

      v24 = v22 + v23;
      v25 = __CFADD__(v24, 0xFFFFFFFFLL);
      v26 = v24 + 0xFFFFFFFFLL;
      if (v25)
      {
        goto LABEL_63;
      }

      if (v26)
      {
        goto LABEL_38;
      }

LABEL_10:
      v11 = v6 >= v10;
      if (v7 > 0)
      {
        v11 = v10 >= v6;
      }

      if (v11)
      {
        goto LABEL_7;
      }
    }
  }

  v9 = 0;
LABEL_7:
  *a4 = v9;
}

unint64_t specialized ParallelSum.evaluate<A>(at:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, unint64_t *a4@<X8>)
{
  v5 = a3 >> 1;
  v6 = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
    goto LABEL_53;
  }

  v7 = *(v4 + 16);
  if (!v7)
  {
LABEL_54:
    __break(1u);
    return result;
  }

  v9 = v6 >= 0;
  if (v7 > 0)
  {
    v9 = v6 < 1;
  }

  if (!v9)
  {
    v10 = 0;
    v13 = 0;
    v14 = *(v4 + 32);
    while (1)
    {
      v16 = v13;
      if (__OFADD__(v13, v7))
      {
        v13 = ((v13 + v7) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v13 += v7;
      }

      v17 = __OFADD__(a2, v16);
      v18 = a2 + v16;
      if (v17)
      {
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      v19 = v5 - v18;
      if (__OFSUB__(v5, v18))
      {
        goto LABEL_42;
      }

      if (v7 < 1)
      {
        if (v19 <= 0)
        {
          v20 = v5;
          if (v7 < v19)
          {
            goto LABEL_25;
          }
        }
      }

      else if ((v19 & 0x8000000000000000) == 0)
      {
        v20 = v5;
        if (v19 < v7)
        {
          goto LABEL_25;
        }
      }

      v20 = v18 + v7;
      if (__OFADD__(v18, v7))
      {
        goto LABEL_50;
      }

LABEL_25:
      if (v20 < v18)
      {
        goto LABEL_43;
      }

      if (v5 < v18)
      {
        goto LABEL_44;
      }

      if (v18 < a2)
      {
        goto LABEL_45;
      }

      if (v5 < v20)
      {
        goto LABEL_46;
      }

      if (v20 < 0)
      {
        goto LABEL_47;
      }

      if (v18 >= v20)
      {
        goto LABEL_48;
      }

      v21 = *(v14 + 16);
      if (!v21)
      {
        goto LABEL_49;
      }

      while (v21 >= 1)
      {
        if (*(v14 + 8 * v21-- + 24))
        {
          result = specialized evaluateUsingHorner<A, B>(_:atInput:)(v14, *(a1 + 8 * v18), &v26);
          if (v26)
          {
            v24 = 0xFFFEB00001 - v26;
            if (v26 > 0xFFFEB00001)
            {
              goto LABEL_51;
            }

            if (v10 >= v24)
            {
              v10 -= v24;
            }

            else
            {
              if (v24 > 0xFFFEB00001)
              {
                goto LABEL_52;
              }

              v25 = __CFADD__(v10, v26);
              v10 += v26;
              if (v25)
              {
                __break(1u);
                goto LABEL_41;
              }
            }
          }

          break;
        }
      }

      v15 = v6 >= v13;
      if (v7 > 0)
      {
        v15 = v13 >= v6;
      }

      if (v15)
      {
        goto LABEL_7;
      }
    }
  }

  v10 = 0;
LABEL_7:
  *a4 = v10;
  return result;
}

int64_t specialized ParallelSum.evaluate<A>(at:)@<X0>(int64_t result@<X0>, unsigned int *a2@<X8>)
{
  v3 = *(v2 + 16);
  if (!v3)
  {
    goto LABEL_64;
  }

  v4 = *(result + 16);
  v5 = 0;
  if (v3 < 1 || v4 == 0)
  {
LABEL_7:
    *a2 = v5;
    return result;
  }

  v7 = 0;
  v8 = result + 32;
  v9 = 1;
  while (1)
  {
    result = v7;
    v10 = v4 - v7;
    v11 = __OFSUB__(v4, v7);
    v12 = __OFADD__(v7, v3);
    v7 += v3;
    if (v12)
    {
      if (v11)
      {
        goto LABEL_60;
      }

      if (v10 < 0)
      {
        goto LABEL_65;
      }

      v13 = v10 < v3;
      v14 = v10 >= v3 ? v7 : v4;
      if (!v13)
      {
        goto LABEL_65;
      }

      v7 = 0x7FFFFFFFFFFFFFFFLL;
      if (v14 < result)
      {
        goto LABEL_53;
      }
    }

    else
    {
      if (v11)
      {
        goto LABEL_61;
      }

      if (v10 < 0)
      {
        v14 = v7;
        if (v7 < result)
        {
          goto LABEL_53;
        }
      }

      else
      {
        if (v10 >= v3)
        {
          v14 = v7;
        }

        else
        {
          v14 = v4;
        }

        if (v14 < result)
        {
          goto LABEL_53;
        }
      }
    }

    if (!v9)
    {
      goto LABEL_54;
    }

    if (result < 0)
    {
      goto LABEL_55;
    }

    if (v4 < v14)
    {
      goto LABEL_56;
    }

    if (result >= v14)
    {
      goto LABEL_57;
    }

    if (result + 1 >= v14)
    {
      goto LABEL_58;
    }

    v15 = *(v8 + 4 * (result + 1)) * *(v8 + 4 * result);
    v16 = 4293918721 * (-1048577 * v15);
    v17 = __CFADD__(v16, v15);
    v18 = v16 + v15;
    if (v17)
    {
      result = (HIDWORD(v18) + 0xFFFFF);
      if (HIDWORD(v18) >= 0xFFF00001)
      {
        goto LABEL_62;
      }
    }

    else
    {
      if (v18 >= 0xFFF0000100000000)
      {
        result = (HIDWORD(v18) + 0xFFFFF);
      }

      else
      {
        result = HIDWORD(v18);
      }

      if (!result)
      {
        goto LABEL_9;
      }
    }

    v17 = result <= 0xFFF00001;
    result = (-1048575 - result);
    if (!v17)
    {
      goto LABEL_59;
    }

    if (v5 >= result)
    {
      v5 -= result;
      goto LABEL_9;
    }

    v17 = result <= 0xFFF00001;
    result = (-1048575 - result);
    if (!v17)
    {
      goto LABEL_63;
    }

    v17 = __CFADD__(v5, result);
    v5 += result;
    if (v17)
    {
      break;
    }

LABEL_9:
    v9 = v4 >= v7;
    if (v7 >= v4)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
  return result;
}

uint64_t specialized ParallelSum.evaluate<A>(at:)@<X0>(uint64_t result@<X0>, unsigned int *a2@<X8>)
{
  v3 = *(v2 + 16);
  if (v3)
  {
    v5 = *(result + 16);
    v6 = 0;
    if (v3 < 1 || v5 == 0)
    {
LABEL_7:
      *a2 = v6;
      return result;
    }

    v8 = 0;
    v9 = *(v2 + 32);
    v10 = result + 32;
    v11 = 1;
    while (1)
    {
      v12 = v8;
      v13 = v5 - v8;
      v14 = __OFSUB__(v5, v8);
      v15 = __OFADD__(v8, v3);
      v8 += v3;
      if (v15)
      {
        if (v14)
        {
          goto LABEL_50;
        }

        if ((v13 & 0x8000000000000000) != 0)
        {
          goto LABEL_55;
        }

        v16 = v13 >= v3;
        v17 = v13 >= v3 ? v8 : v5;
        if (v16)
        {
          goto LABEL_55;
        }

        v8 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        if (v14)
        {
          goto LABEL_51;
        }

        v18 = v13 >= v3 ? v8 : v5;
        v17 = (v13 & 0x8000000000000000) == 0 ? v18 : v8;
      }

      if (v17 < v12)
      {
        break;
      }

      if (!v11)
      {
        goto LABEL_45;
      }

      if (v12 < 0)
      {
        goto LABEL_46;
      }

      if (v5 < v17)
      {
        goto LABEL_47;
      }

      if (v12 >= v17)
      {
        goto LABEL_48;
      }

      v19 = *(v9 + 16);
      if (!v19)
      {
        goto LABEL_49;
      }

      while (v19 >= 1)
      {
        if (*(v9 + 4 * v19-- + 28))
        {
          result = specialized evaluateUsingHorner<A, B>(_:atInput:)(v9, *(v10 + 4 * v12), &v22);
          if (v22)
          {
            v21 = -1048575 - v22;
            if (v22 > 0xFFF00001)
            {
              goto LABEL_52;
            }

            if (v6 >= v21)
            {
              v6 -= v21;
            }

            else
            {
              if (v21 > 0xFFF00001)
              {
                goto LABEL_53;
              }

              v16 = __CFADD__(v6, v22);
              v6 += v22;
              if (v16)
              {
                __break(1u);
                goto LABEL_44;
              }
            }
          }

          break;
        }
      }

      v11 = v5 >= v8;
      if (v8 >= v5)
      {
        goto LABEL_7;
      }
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
  }

  __break(1u);
LABEL_55:
  __break(1u);
  return result;
}

void specialized ParallelSum.evaluate<A>(at:)(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, unsigned int *a4@<X8>)
{
  v5 = a3 >> 1;
  v6 = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
    goto LABEL_60;
  }

  v7 = *(v4 + 16);
  if (!v7)
  {
LABEL_61:
    __break(1u);
    return;
  }

  v8 = v6 >= 0;
  if (v7 > 0)
  {
    v8 = v6 < 1;
  }

  if (!v8)
  {
    v9 = 0;
    v10 = 0;
    while (1)
    {
      v12 = v10;
      v13 = __OFADD__(v10, v7);
      v10 += v7;
      if (v13)
      {
        v10 = (v10 >> 63) ^ 0x8000000000000000;
      }

      v13 = __OFADD__(a2, v12);
      v14 = a2 + v12;
      if (v13)
      {
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v15 = v5 - v14;
      if (__OFSUB__(v5, v14))
      {
        goto LABEL_48;
      }

      if (v7 < 1)
      {
        if (v15 <= 0)
        {
          v16 = v5;
          if (v7 < v15)
          {
            goto LABEL_25;
          }
        }
      }

      else if ((v15 & 0x8000000000000000) == 0)
      {
        v16 = v5;
        if (v15 < v7)
        {
          goto LABEL_25;
        }
      }

      v16 = v14 + v7;
      if (__OFADD__(v14, v7))
      {
        goto LABEL_57;
      }

LABEL_25:
      if (v16 < v14)
      {
        goto LABEL_49;
      }

      if (v5 < v14)
      {
        goto LABEL_50;
      }

      if (v14 < a2)
      {
        goto LABEL_51;
      }

      if (v5 < v16)
      {
        goto LABEL_52;
      }

      if (v16 < 0)
      {
        goto LABEL_53;
      }

      if (v14 >= v16)
      {
        goto LABEL_54;
      }

      if (v14 + 1 >= v16)
      {
        goto LABEL_55;
      }

      v17 = *(a1 + 4 * (v14 + 1)) * *(a1 + 4 * v14);
      v18 = 4293918721 * (-1048577 * v17);
      v19 = __CFADD__(v18, v17);
      v20 = v18 + v17;
      v21 = HIDWORD(v20);
      if (v19)
      {
        LODWORD(v21) = HIDWORD(v20) + 0xFFFFF;
        if (HIDWORD(v20) >= 0xFFF00001)
        {
          goto LABEL_58;
        }
      }

      else
      {
        if (v20 >= 0xFFF0000100000000)
        {
          LODWORD(v21) = HIDWORD(v20) + 0xFFFFF;
        }

        if (!v21)
        {
          goto LABEL_10;
        }
      }

      v19 = v21 <= 0xFFF00001;
      v22 = -1048575 - v21;
      if (!v19)
      {
        goto LABEL_56;
      }

      if (v9 >= v22)
      {
        v9 -= v22;
      }

      else
      {
        v19 = v22 <= 0xFFF00001;
        v23 = -1048575 - v22;
        if (!v19)
        {
          goto LABEL_59;
        }

        v19 = __CFADD__(v9, v23);
        v9 += v23;
        if (v19)
        {
          __break(1u);
          goto LABEL_47;
        }
      }

LABEL_10:
      if (v7 <= 0)
      {
        v11 = v6 >= v10;
      }

      else
      {
        v11 = v10 >= v6;
      }

      if (v11)
      {
        goto LABEL_7;
      }
    }
  }

  v9 = 0;
LABEL_7:
  *a4 = v9;
}

uint64_t specialized ParallelSum.evaluate<A>(at:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, unsigned int *a4@<X8>)
{
  v5 = a3 >> 1;
  v6 = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
    goto LABEL_53;
  }

  v7 = *(v4 + 16);
  if (!v7)
  {
LABEL_54:
    __break(1u);
    return result;
  }

  v9 = v6 >= 0;
  if (v7 > 0)
  {
    v9 = v6 < 1;
  }

  if (!v9)
  {
    v10 = 0;
    v13 = 0;
    v14 = *(v4 + 32);
    while (1)
    {
      v16 = v13;
      if (__OFADD__(v13, v7))
      {
        v13 = ((v13 + v7) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v13 += v7;
      }

      v17 = __OFADD__(a2, v16);
      v18 = a2 + v16;
      if (v17)
      {
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      v19 = v5 - v18;
      if (__OFSUB__(v5, v18))
      {
        goto LABEL_42;
      }

      if (v7 < 1)
      {
        if (v19 <= 0)
        {
          v20 = v5;
          if (v7 < v19)
          {
            goto LABEL_25;
          }
        }
      }

      else if ((v19 & 0x8000000000000000) == 0)
      {
        v20 = v5;
        if (v19 < v7)
        {
          goto LABEL_25;
        }
      }

      v20 = v18 + v7;
      if (__OFADD__(v18, v7))
      {
        goto LABEL_50;
      }

LABEL_25:
      if (v20 < v18)
      {
        goto LABEL_43;
      }

      if (v5 < v18)
      {
        goto LABEL_44;
      }

      if (v18 < a2)
      {
        goto LABEL_45;
      }

      if (v5 < v20)
      {
        goto LABEL_46;
      }

      if (v20 < 0)
      {
        goto LABEL_47;
      }

      if (v18 >= v20)
      {
        goto LABEL_48;
      }

      v21 = *(v14 + 16);
      if (!v21)
      {
        goto LABEL_49;
      }

      while (v21 >= 1)
      {
        if (*(v14 + 4 * v21-- + 28))
        {
          result = specialized evaluateUsingHorner<A, B>(_:atInput:)(v14, *(a1 + 4 * v18), &v26);
          if (v26)
          {
            v24 = -1048575 - v26;
            if (v26 > 0xFFF00001)
            {
              goto LABEL_51;
            }

            if (v10 >= v24)
            {
              v10 -= v24;
            }

            else
            {
              if (v24 > 0xFFF00001)
              {
                goto LABEL_52;
              }

              v25 = __CFADD__(v10, v26);
              v10 += v26;
              if (v25)
              {
                __break(1u);
                goto LABEL_41;
              }
            }
          }

          break;
        }
      }

      v15 = v6 >= v13;
      if (v7 > 0)
      {
        v15 = v13 >= v6;
      }

      if (v15)
      {
        goto LABEL_7;
      }
    }
  }

  v10 = 0;
LABEL_7:
  *a4 = v10;
  return result;
}

uint64_t specialized ParallelSum.evaluate<A>(at:)@<X0>(uint64_t result@<X0>, unint64_t *a2@<X8>)
{
  v3 = *(v2 + 16);
  if (v3)
  {
    v5 = *(result + 16);
    v6 = 0;
    if (v3 < 1 || v5 == 0)
    {
LABEL_7:
      *a2 = v6;
      return result;
    }

    v8 = 0;
    v9 = *(v2 + 32);
    v10 = result + 32;
    v11 = 1;
    while (1)
    {
      v12 = v8;
      v13 = v5 - v8;
      v14 = __OFSUB__(v5, v8);
      v15 = __OFADD__(v8, v3);
      v8 += v3;
      if (v15)
      {
        if (v14)
        {
          goto LABEL_50;
        }

        if ((v13 & 0x8000000000000000) != 0)
        {
          goto LABEL_55;
        }

        v16 = v13 >= v3;
        v17 = v13 >= v3 ? v8 : v5;
        if (v16)
        {
          goto LABEL_55;
        }

        v8 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        if (v14)
        {
          goto LABEL_51;
        }

        v18 = v13 >= v3 ? v8 : v5;
        v17 = (v13 & 0x8000000000000000) == 0 ? v18 : v8;
      }

      if (v17 < v12)
      {
        break;
      }

      if (!v11)
      {
        goto LABEL_45;
      }

      if (v12 < 0)
      {
        goto LABEL_46;
      }

      if (v5 < v17)
      {
        goto LABEL_47;
      }

      if (v12 >= v17)
      {
        goto LABEL_48;
      }

      v19 = *(v9 + 16);
      if (!v19)
      {
        goto LABEL_49;
      }

      while (v19 >= 1)
      {
        if (*(v9 + 8 * v19-- + 24))
        {
          result = specialized evaluateUsingHorner<A, B>(_:atInput:)(v9, *(v10 + 8 * v12), &v22);
          if (v22)
          {
            v21 = 0xFFFFFFFF00000001 - v22;
            if (v22 > 0xFFFFFFFF00000001)
            {
              goto LABEL_52;
            }

            if (v6 >= v21)
            {
              v6 -= v21;
            }

            else
            {
              if (v21 > 0xFFFFFFFF00000001)
              {
                goto LABEL_53;
              }

              v16 = __CFADD__(v6, v22);
              v6 += v22;
              if (v16)
              {
                __break(1u);
                goto LABEL_44;
              }
            }
          }

          break;
        }
      }

      v11 = v5 >= v8;
      if (v8 >= v5)
      {
        goto LABEL_7;
      }
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
  }

  __break(1u);
LABEL_55:
  __break(1u);
  return result;
}

uint64_t specialized ParallelSum.evaluate<A>(at:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, unint64_t *a4@<X8>)
{
  v5 = a3 >> 1;
  v6 = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
    goto LABEL_53;
  }

  v7 = *(v4 + 16);
  if (!v7)
  {
LABEL_54:
    __break(1u);
    return result;
  }

  v9 = v6 >= 0;
  if (v7 > 0)
  {
    v9 = v6 < 1;
  }

  if (!v9)
  {
    v10 = 0;
    v13 = 0;
    v14 = *(v4 + 32);
    while (1)
    {
      v16 = v13;
      if (__OFADD__(v13, v7))
      {
        v13 = ((v13 + v7) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v13 += v7;
      }

      v17 = __OFADD__(a2, v16);
      v18 = a2 + v16;
      if (v17)
      {
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      v19 = v5 - v18;
      if (__OFSUB__(v5, v18))
      {
        goto LABEL_42;
      }

      if (v7 < 1)
      {
        if (v19 <= 0)
        {
          v20 = v5;
          if (v7 < v19)
          {
            goto LABEL_25;
          }
        }
      }

      else if ((v19 & 0x8000000000000000) == 0)
      {
        v20 = v5;
        if (v19 < v7)
        {
          goto LABEL_25;
        }
      }

      v20 = v18 + v7;
      if (__OFADD__(v18, v7))
      {
        goto LABEL_50;
      }

LABEL_25:
      if (v20 < v18)
      {
        goto LABEL_43;
      }

      if (v5 < v18)
      {
        goto LABEL_44;
      }

      if (v18 < a2)
      {
        goto LABEL_45;
      }

      if (v5 < v20)
      {
        goto LABEL_46;
      }

      if (v20 < 0)
      {
        goto LABEL_47;
      }

      if (v18 >= v20)
      {
        goto LABEL_48;
      }

      v21 = *(v14 + 16);
      if (!v21)
      {
        goto LABEL_49;
      }

      while (v21 >= 1)
      {
        if (*(v14 + 8 * v21-- + 24))
        {
          result = specialized evaluateUsingHorner<A, B>(_:atInput:)(v14, *(a1 + 8 * v18), &v26);
          if (v26)
          {
            v24 = 0xFFFFFFFF00000001 - v26;
            if (v26 > 0xFFFFFFFF00000001)
            {
              goto LABEL_51;
            }

            if (v10 >= v24)
            {
              v10 -= v24;
            }

            else
            {
              if (v24 > 0xFFFFFFFF00000001)
              {
                goto LABEL_52;
              }

              v25 = __CFADD__(v10, v26);
              v10 += v26;
              if (v25)
              {
                __break(1u);
                goto LABEL_41;
              }
            }
          }

          break;
        }
      }

      v15 = v6 >= v13;
      if (v7 > 0)
      {
        v15 = v13 >= v6;
      }

      if (v15)
      {
        goto LABEL_7;
      }
    }
  }

  v10 = 0;
LABEL_7:
  *a4 = v10;
  return result;
}

void specialized ParallelSum.chunkEvaluateSum(_:for:_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, void (*a6)(uint64_t, uint64_t)@<X5>, unint64_t *a7@<X8>)
{
  v9 = *v7;
  if (*v7 < 0)
  {
    goto LABEL_48;
  }

  if (v9)
  {
    v13 = *v7;
    v14 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v14 + 16) = v9;
    bzero((v14 + 32), 8 * v9);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v39 = v14;
  v15 = *(v34 + 40);
  if (v15)
  {
    v32 = a7;
    v16 = a4 >> 1;
    v17 = (a4 >> 1) >= a3;
    v18 = 0;
    if (v15 > 0)
    {
      v17 = (a4 >> 1) <= a3;
    }

    if (v17)
    {
LABEL_9:

      *v32 = v18;
      return;
    }

    v19 = a5 >> 62;
    v20 = a3;
    while (1)
    {
      v22 = v20 + v15;
      if (__OFADD__(v20, v15))
      {
        v23 = ((v20 + v15) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v23 = v20 + v15;
      }

      if (__OFADD__(v20, v15))
      {
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
        break;
      }

      if (v16 >= v22)
      {
        v24 = v20 + v15;
      }

      else
      {
        v24 = v16;
      }

      if (v24 < v20)
      {
        goto LABEL_43;
      }

      if (v20 < a3)
      {
        goto LABEL_44;
      }

      if (v22 < 0)
      {
        goto LABEL_45;
      }

      a6(a1, a2);
      if (v8)
      {
        goto LABEL_41;
      }

      v25 = v39;
      if (v19)
      {
        if (v19 != 1)
        {
          specialized ParallelSum.evaluate<A>(at:)(v39, &v38);
          v28 = v38;
          if (!v38)
          {
            goto LABEL_12;
          }

          goto LABEL_33;
        }

        specialized QueryGadget.evaluate<A>(at:)(v26, specialized _ArrayBuffer._consumeAndCreateNew(), specialized _ArrayBuffer._consumeAndCreateNew(), &v38);
      }

      else
      {

        specialized GadgetWireInputs.update<A>(_:)(v27, specialized _ArrayBuffer._consumeAndCreateNew(), specialized _ArrayBuffer._consumeAndCreateNew());
        specialized ParallelSum.evaluate<A>(at:)(v25, &v38);
      }

      v28 = v38;
      if (!v38)
      {
        goto LABEL_12;
      }

LABEL_33:
      v29 = v28 <= 0xFFFEB00001;
      v30 = 0xFFFEB00001 - v28;
      if (!v29)
      {
        goto LABEL_46;
      }

      if (v18 >= v30)
      {
        v18 -= v30;
      }

      else
      {
        v29 = v30 <= 0xFFFEB00001;
        v31 = 0xFFFEB00001 - v30;
        if (!v29)
        {
          goto LABEL_47;
        }

        v29 = __CFADD__(v18, v31);
        v18 += v31;
        if (v29)
        {
          __break(1u);
LABEL_41:

          return;
        }
      }

LABEL_12:
      v21 = v16 >= v23;
      if (v15 > 0)
      {
        v21 = v23 >= v16;
      }

      v20 = v23;
      if (v21)
      {
        goto LABEL_9;
      }
    }
  }

  __break(1u);
}

{
  v9 = *v7;
  if (*v7 < 0)
  {
    goto LABEL_48;
  }

  if (v9)
  {
    v13 = *v7;
    v14 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v14 + 16) = v9;
    bzero((v14 + 32), 8 * v9);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v39 = v14;
  v15 = *(v34 + 40);
  if (v15)
  {
    v32 = a7;
    v16 = a4 >> 1;
    v17 = (a4 >> 1) >= a3;
    v18 = 0;
    if (v15 > 0)
    {
      v17 = (a4 >> 1) <= a3;
    }

    if (v17)
    {
LABEL_9:

      *v32 = v18;
      return;
    }

    v19 = a5 >> 62;
    v20 = a3;
    while (1)
    {
      v22 = v20 + v15;
      if (__OFADD__(v20, v15))
      {
        v23 = ((v20 + v15) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v23 = v20 + v15;
      }

      if (__OFADD__(v20, v15))
      {
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
        break;
      }

      if (v16 >= v22)
      {
        v24 = v20 + v15;
      }

      else
      {
        v24 = v16;
      }

      if (v24 < v20)
      {
        goto LABEL_43;
      }

      if (v20 < a3)
      {
        goto LABEL_44;
      }

      if (v22 < 0)
      {
        goto LABEL_45;
      }

      a6(a1, a2);
      if (v8)
      {
        goto LABEL_41;
      }

      v25 = v39;
      if (v19)
      {
        if (v19 != 1)
        {
          specialized ParallelSum.evaluate<A>(at:)(v39, &v38);
          v28 = v38;
          if (!v38)
          {
            goto LABEL_12;
          }

          goto LABEL_33;
        }

        specialized QueryGadget.evaluate<A>(at:)(v26, specialized _ArrayBuffer._consumeAndCreateNew(), specialized _ArrayBuffer._consumeAndCreateNew(), &v38);
      }

      else
      {

        specialized GadgetWireInputs.update<A>(_:)(v27, specialized _ArrayBuffer._consumeAndCreateNew(), specialized _ArrayBuffer._consumeAndCreateNew());
        specialized ParallelSum.evaluate<A>(at:)(v25, &v38);
      }

      v28 = v38;
      if (!v38)
      {
        goto LABEL_12;
      }

LABEL_33:
      v29 = v28 <= 0xFFFFFFFF00000001;
      v30 = 0xFFFFFFFF00000001 - v28;
      if (!v29)
      {
        goto LABEL_46;
      }

      if (v18 >= v30)
      {
        v18 -= v30;
      }

      else
      {
        v29 = v30 <= 0xFFFFFFFF00000001;
        v31 = 0xFFFFFFFF00000001 - v30;
        if (!v29)
        {
          goto LABEL_47;
        }

        v29 = __CFADD__(v18, v31);
        v18 += v31;
        if (v29)
        {
          __break(1u);
LABEL_41:

          return;
        }
      }

LABEL_12:
      v21 = v16 >= v23;
      if (v15 > 0)
      {
        v21 = v23 >= v16;
      }

      v20 = v23;
      if (v21)
      {
        goto LABEL_9;
      }
    }
  }

  __break(1u);
}

void specialized ParallelSum.chunkEvaluateSum(_:for:_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, void (*a6)(uint64_t, uint64_t)@<X5>, unsigned int *a7@<X8>)
{
  v9 = *v7;
  if (*v7 < 0)
  {
    goto LABEL_48;
  }

  if (v9)
  {
    v13 = *v7;
    v14 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v14 + 16) = v9;
    bzero((v14 + 32), 4 * v9);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v39 = v14;
  v15 = *(v34 + 40);
  if (v15)
  {
    v32 = a7;
    v16 = a4 >> 1;
    v17 = (a4 >> 1) >= a3;
    v18 = 0;
    if (v15 > 0)
    {
      v17 = (a4 >> 1) <= a3;
    }

    if (v17)
    {
LABEL_9:

      *v32 = v18;
      return;
    }

    v19 = a5 >> 62;
    v20 = a3;
    while (1)
    {
      v22 = v20 + v15;
      if (__OFADD__(v20, v15))
      {
        v23 = ((v20 + v15) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v23 = v20 + v15;
      }

      if (__OFADD__(v20, v15))
      {
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
        break;
      }

      if (v16 >= v22)
      {
        v24 = v20 + v15;
      }

      else
      {
        v24 = v16;
      }

      if (v24 < v20)
      {
        goto LABEL_43;
      }

      if (v20 < a3)
      {
        goto LABEL_44;
      }

      if (v22 < 0)
      {
        goto LABEL_45;
      }

      a6(a1, a2);
      if (v8)
      {
        goto LABEL_41;
      }

      v25 = v39;
      if (v19)
      {
        if (v19 != 1)
        {
          specialized ParallelSum.evaluate<A>(at:)(v39, &v38);
          v28 = v38;
          if (!v38)
          {
            goto LABEL_12;
          }

          goto LABEL_33;
        }

        specialized QueryGadget.evaluate<A>(at:)(v26, &v38);
      }

      else
      {

        specialized GadgetWireInputs.update<A>(_:)(v27);
        specialized ParallelSum.evaluate<A>(at:)(v25, &v38);
      }

      v28 = v38;
      if (!v38)
      {
        goto LABEL_12;
      }

LABEL_33:
      v29 = v28 <= 0xFFF00001;
      v30 = -1048575 - v28;
      if (!v29)
      {
        goto LABEL_46;
      }

      if (v18 >= v30)
      {
        v18 -= v30;
      }

      else
      {
        v29 = v30 <= 0xFFF00001;
        v31 = -1048575 - v30;
        if (!v29)
        {
          goto LABEL_47;
        }

        v29 = __CFADD__(v18, v31);
        v18 += v31;
        if (v29)
        {
          __break(1u);
LABEL_41:

          return;
        }
      }

LABEL_12:
      v21 = v16 >= v23;
      if (v15 > 0)
      {
        v21 = v23 >= v16;
      }

      v20 = v23;
      if (v21)
      {
        goto LABEL_9;
      }
    }
  }

  __break(1u);
}

uint64_t specialized Gadget.wirePolynomialLength.getter()
{
  v1 = *(v0 + 32);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v3 < 0)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  if (v3)
  {
    return 1 << -__clz(v3 - 1);
  }

  else
  {
    return 1;
  }
}

{
  v1 = *(v0 + 24);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v3 < 0)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  if (v3)
  {
    return 1 << -__clz(v3 - 1);
  }

  else
  {
    return 1;
  }
}

uint64_t specialized Gadget.gadgetPolynomialLength.getter()
{
  v1 = *(v0 + 32);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v3 < 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v3)
  {
    v4 = 1 << -__clz(v3 - 1);
    v2 = __OFSUB__(v4, 1);
    v5 = v4 - 1;
    if (!v2)
    {
      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_11;
  }

  v5 = 0;
LABEL_5:
  v6 = *(v0 + 8);
  v7 = v6 * v5;
  if ((v6 * v5) >> 64 != (v6 * v5) >> 63)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  result = v7 + 1;
  if (__OFADD__(v7, 1))
  {
LABEL_14:
    __break(1u);
  }

  return result;
}

{
  v1 = *(v0 + 24);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v3 < 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v3)
  {
    v4 = 1 << -__clz(v3 - 1);
    v2 = __OFSUB__(v4, 1);
    v5 = v4 - 1;
    if (!v2)
    {
      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_11;
  }

  v5 = 0;
LABEL_5:
  v6 = *(v0 + 8);
  v7 = v6 * v5;
  if ((v6 * v5) >> 64 != (v6 * v5) >> 63)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  result = v7 + 1;
  if (__OFADD__(v7, 1))
  {
LABEL_14:
    __break(1u);
  }

  return result;
}

uint64_t *specialized discreteFourierTransform<A, B, C>(input:size:output:)(uint64_t a1, unint64_t a2, char **a3)
{
  specialized static BitReversal.indicesFor(_:)(a2);
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_93;
  }

  if (a2)
  {
    if (*(v8 + 16) < a2)
    {
      __break(1u);
    }

    else
    {
      v3 = v8;
      v4 = *a3;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_5;
      }
    }

    v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
LABEL_5:
    v9 = *(a1 + 16);
    v10 = 4;
    do
    {
      v11 = v10 - 4;
      v12 = *(v3 + 8 * v10);
      if (v12 >= v9)
      {
        if (v11 >= *(v4 + 2))
        {
          goto LABEL_89;
        }

        v13 = 0;
      }

      else
      {
        if (v12 < 0)
        {
          goto LABEL_88;
        }

        if (v11 >= *(v4 + 2))
        {
          goto LABEL_90;
        }

        v13 = *(a1 + 32 + 8 * v12);
      }

      *&v4[8 * v10++] = v13;
    }

    while (v10 - a2 != 4);

    *a3 = v4;
    goto LABEL_15;
  }

  v4 = *a3;
LABEL_15:
  v3 = __clz(__rbit64(a2));
  v54 = a3;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_94;
  }

LABEL_16:
  v14 = 0;
  v15 = v4 + 32;
  v16 = 0x28084B000uLL;
  v17 = &lazy protocol witness table cache variable for type Int and conformance Int;
  v18 = 1;
  result = &one-time initialization token for one;
  while (1)
  {
LABEL_17:
    v20 = v18;
    if (v18 >= v3)
    {
      if ((v18 != v3) | v14 & 1)
      {
        goto LABEL_86;
      }

      v14 = 1;
      v18 = v3;
    }

    else
    {
      ++v18;
    }

    if (*(v16 + 3120) == -1)
    {
      if (v20 > 20)
      {
        break;
      }

      goto LABEL_23;
    }

    swift_once();
    result = &one-time initialization token for one;
    v17 = &lazy protocol witness table cache variable for type Int and conformance Int;
    v16 = 0x28084B000;
    if (v20 > 20)
    {
      break;
    }

LABEL_23:
    if (v20 < 0)
    {
      goto LABEL_92;
    }

    if (v20)
    {
      v21 = 0;
      v22 = v17[347];
      v23 = 1 << v20;
      v24 = (1 << v20) >> 1;
      v25 = outlined read-only object #0 of one-time initialization function for roots[v20 + 4];
      v26 = a2 >> v20;
      while (1)
      {
        if (v21 == v24)
        {
          __break(1u);
LABEL_88:
          __break(1u);
LABEL_89:
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
LABEL_93:
          __break(1u);
LABEL_94:
          v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
          goto LABEL_16;
        }

        if (v26)
        {
          v30 = 0;
          while (1)
          {
            v32 = v23 * v30;
            if ((v23 * v30) >> 64 != (v23 * v30) >> 63)
            {
              goto LABEL_75;
            }

            v33 = v32 + v21;
            if (__OFADD__(v32, v21))
            {
              goto LABEL_76;
            }

            if ((v33 & 0x8000000000000000) != 0)
            {
              goto LABEL_77;
            }

            v34 = *(v4 + 2);
            if (v33 >= v34)
            {
              goto LABEL_78;
            }

            v35 = v33 + v24;
            if (__OFADD__(v33, v24))
            {
              goto LABEL_79;
            }

            if (v35 >= v34)
            {
              goto LABEL_80;
            }

            v36 = *&v15[8 * v33];
            v37 = *&v15[8 * v35];
            v38 = (v37 * v22) >> 64;
            v39 = v37 * v22;
            v40 = 0xCFFE47FFFEAFFFFFLL * v37 * v22;
            v41 = (v40 * 0xFFFEB00001uLL) >> 64;
            v42 = __CFADD__(0xFFFEB00001 * v40, v39);
            v29 = __CFADD__(v41, v38);
            v43 = v41 + v38;
            if (v29)
            {
              goto LABEL_45;
            }

            if (v43 == -1)
            {
              break;
            }

            v48 = v43 + v42;
            if (v48 >= 0xFFFEB00001)
            {
              v45 = v48 - 0xFFFEB00001;
            }

            else
            {
              v45 = v48;
            }

            if (!v45)
            {
              goto LABEL_32;
            }

LABEL_46:
            v46 = 0xFFFEB00001 - v45;
            if (v45 > 0xFFFEB00001)
            {
              goto LABEL_81;
            }

            v47 = v36 - v46;
            if (v36 < v46)
            {
              if (v46 > 0xFFFEB00001)
              {
                goto LABEL_83;
              }

              v47 = v36 + v45;
              if (__CFADD__(v36, v45))
              {
                goto LABEL_85;
              }
            }

            *&v15[8 * v33] = v47;
            if (v36 >= v45)
            {
LABEL_32:
              v31 = v36 - v45;
              goto LABEL_33;
            }

            v31 = v36 + v46;
            if (__CFADD__(v36, v46))
            {
              goto LABEL_84;
            }

LABEL_33:
            ++v30;
            *&v15[8 * v35] = v31;
            if (v26 == v30)
            {
              goto LABEL_63;
            }
          }

          if (!v42)
          {
            goto LABEL_81;
          }

          v42 = 1;
LABEL_45:
          v44 = v42 + v43;
          v45 = v44 - 0xFFFEB00001;
          if (v44 >= 0xFFFEB00001)
          {
            goto LABEL_82;
          }

          goto LABEL_46;
        }

LABEL_63:
        v49 = v22 * v25;
        v50 = (v22 * v25) >> 64;
        v51 = (0xCFFE47FFFEAFFFFFLL * v49 * 0xFFFEB00001uLL) >> 64;
        v27 = __CFADD__(-v49, v49);
        v29 = __CFADD__(v51, v50);
        v52 = v51 + v50;
        if (v29)
        {
          goto LABEL_27;
        }

        if (v52 == -1)
        {
          if (v27)
          {
            v27 = 1;
LABEL_27:
            v28 = v27 + v52;
            v29 = __CFADD__(v28, 0xFFFFFF00014FFFFFLL);
            v22 = v28 - 0xFFFEB00001;
            if (v29)
            {
              goto LABEL_91;
            }

            goto LABEL_28;
          }

          v22 = 0xFFFFFF00014FFFFELL;
        }

        else
        {
          v22 = v52 + v27;
          if (v22 >= 0xFFFEB00001)
          {
            v22 -= 0xFFFEB00001;
          }
        }

LABEL_28:
        if (++v21 == v24)
        {
          goto LABEL_17;
        }
      }
    }
  }

  _StringGuts.grow(_:)(26);

  v4 = MEMORY[0x277D83BF8];
  dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2743B25F0](2112544, 0xE300000000000000);
  v53 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2743B25F0](v53);

  MEMORY[0x2743B25F0](0xD000000000000013, 0x8000000270C51DA0);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  *v54 = v4;
  return result;
}

{
  specialized static BitReversal.indicesFor(_:)(a2);
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_80;
  }

  if (a2)
  {
    if (*(v9 + 16) < a2)
    {
      __break(1u);
    }

    else
    {
      v3 = v9;
      v4 = *a3;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_5;
      }
    }

    v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
LABEL_5:
    v10 = 0;
    v11 = *(a1 + 16);
    do
    {
      v13 = *(v3 + 8 * v10 + 32);
      if (v13 >= v11)
      {
        if (v10 >= *(v4 + 2))
        {
          goto LABEL_76;
        }

        v12 = 0;
      }

      else
      {
        if (v13 < 0)
        {
          goto LABEL_75;
        }

        if (v10 >= *(v4 + 2))
        {
          goto LABEL_77;
        }

        v12 = *(a1 + 32 + 4 * v13);
      }

      *&v4[4 * v10++ + 32] = v12;
    }

    while (a2 != v10);

    *a3 = v4;
    goto LABEL_15;
  }

  v4 = *a3;
LABEL_15:
  v5 = __clz(__rbit64(a2));
  v46 = a3;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_81;
  }

LABEL_16:
  v14 = 0;
  v15 = v4 + 32;
  v16 = 0x28084B000uLL;
  v17 = &lazy protocol witness table cache variable for type Int and conformance Int;
  v18 = 1;
  result = &one-time initialization token for one;
  while (1)
  {
LABEL_17:
    v20 = v18;
    if (v18 >= v5)
    {
      if ((v18 != v5) | v14 & 1)
      {
        goto LABEL_73;
      }

      v14 = 1;
      v18 = v5;
    }

    else
    {
      ++v18;
    }

    if (*(v16 + 3104) == -1)
    {
      if (v20 > 20)
      {
        break;
      }

      goto LABEL_23;
    }

    v45 = v14;
    swift_once();
    result = &one-time initialization token for one;
    v17 = &lazy protocol witness table cache variable for type Int and conformance Int;
    v16 = 0x28084B000;
    v14 = v45;
    if (v20 > 20)
    {
      break;
    }

LABEL_23:
    if (v20 < 0)
    {
      goto LABEL_79;
    }

    if (v20)
    {
      v21 = 0;
      LODWORD(v22) = *(v17 + 692);
      v23 = 1 << v20;
      v24 = (1 << v20) >> 1;
      v25 = outlined read-only object #0 of one-time initialization function for roots[v20 + 8];
      v26 = a2 >> v20;
      while (v21 != v24)
      {
        if (v26)
        {
          for (i = 0; v26 != i; ++i)
          {
            v28 = v23 * i;
            if ((v23 * i) >> 64 != (v23 * i) >> 63)
            {
              goto LABEL_62;
            }

            v29 = v28 + v21;
            if (__OFADD__(v28, v21))
            {
              goto LABEL_63;
            }

            if ((v29 & 0x8000000000000000) != 0)
            {
              goto LABEL_64;
            }

            v30 = *(v4 + 2);
            if (v29 >= v30)
            {
              goto LABEL_65;
            }

            v31 = v29 + v24;
            if (__OFADD__(v29, v24))
            {
              goto LABEL_66;
            }

            if (v31 >= v30)
            {
              goto LABEL_67;
            }

            v32 = *&v15[4 * v29];
            v33 = *&v15[4 * v31] * v22;
            v34 = 4293918721 * (-1048577 * v33);
            v35 = __CFADD__(v34, v33);
            v36 = v34 + v33;
            v37 = HIDWORD(v36);
            if (v35)
            {
              LODWORD(v37) = HIDWORD(v36) + 0xFFFFF;
              if (HIDWORD(v36) >= 0xFFF00001)
              {
                goto LABEL_69;
              }
            }

            else
            {
              if (v36 >= 0xFFF0000100000000)
              {
                LODWORD(v37) = HIDWORD(v36) + 0xFFFFF;
              }

              if (!v37)
              {
                v39 = *&v15[4 * v29];
                goto LABEL_52;
              }
            }

            v38 = -1048575 - v37;
            if (v37 > 0xFFF00001)
            {
              goto LABEL_68;
            }

            v39 = v32 - v38;
            if (v32 < v38)
            {
              if (v38 > 0xFFF00001)
              {
                goto LABEL_71;
              }

              v39 = v32 + v37;
              if (__CFADD__(v32, v37))
              {
                goto LABEL_72;
              }
            }

LABEL_52:
            *&v15[4 * v29] = v39;
            v40 = v32 - v37;
            if (v32 < v37)
            {
              v40 = v32 + -1048575 - v37;
              if (__CFADD__(v32, -1048575 - v37))
              {
                goto LABEL_70;
              }
            }

            *&v15[4 * v31] = v40;
          }
        }

        v41 = v22 * v25;
        v42 = 4293918721 * (-1048577 * v41);
        v35 = __CFADD__(v42, v41);
        v43 = v42 + v41;
        v22 = HIDWORD(v43);
        if (v35)
        {
          LODWORD(v22) = HIDWORD(v43) + 0xFFFFF;
          if (HIDWORD(v43) >= 0xFFF00001)
          {
            goto LABEL_78;
          }
        }

        else if (v43 >= 0xFFF0000100000000)
        {
          LODWORD(v22) = HIDWORD(v43) + 0xFFFFF;
        }

        if (++v21 == v24)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
      goto LABEL_16;
    }
  }

  _StringGuts.grow(_:)(26);

  v4 = MEMORY[0x277D83BF8];
  dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2743B25F0](2112544, 0xE300000000000000);
  v44 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2743B25F0](v44);

  MEMORY[0x2743B25F0](0xD000000000000013, 0x8000000270C51DA0);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  *v46 = v4;
  return result;
}

{
  specialized static BitReversal.indicesFor(_:)(a2);
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_93;
  }

  if (a2)
  {
    if (*(v9 + 16) < a2)
    {
      __break(1u);
    }

    else
    {
      v4 = v9;
      v3 = *a3;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_5;
      }
    }

    v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
LABEL_5:
    v10 = *(a1 + 16);
    v11 = 4;
    do
    {
      v12 = v11 - 4;
      v13 = *(v4 + 8 * v11);
      if (v13 >= v10)
      {
        if (v12 >= *(v3 + 2))
        {
          goto LABEL_89;
        }

        v14 = 0;
      }

      else
      {
        if (v13 < 0)
        {
          goto LABEL_88;
        }

        if (v12 >= *(v3 + 2))
        {
          goto LABEL_90;
        }

        v14 = *(a1 + 32 + 8 * v13);
      }

      *&v3[8 * v11++] = v14;
    }

    while (v11 - a2 != 4);

    *a3 = v3;
    goto LABEL_15;
  }

  v3 = *a3;
LABEL_15:
  v5 = __clz(__rbit64(a2));
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_94;
  }

LABEL_16:
  v15 = 0;
  v16 = v3 + 32;
  v17 = 0x28084B000uLL;
  v18 = &lazy protocol witness table cache variable for type Int and conformance Int;
  v19 = 1;
  result = &one-time initialization token for one;
  while (1)
  {
LABEL_17:
    v21 = v19;
    if (v19 >= v5)
    {
      if ((v19 != v5) | v15 & 1)
      {
        goto LABEL_86;
      }

      v15 = 1;
      v19 = v5;
    }

    else
    {
      ++v19;
    }

    if (*(v17 + 3136) == -1)
    {
      if (v21 > 20)
      {
        break;
      }

      goto LABEL_23;
    }

    swift_once();
    result = &one-time initialization token for one;
    v18 = &lazy protocol witness table cache variable for type Int and conformance Int;
    v17 = 0x28084B000;
    if (v21 > 20)
    {
      break;
    }

LABEL_23:
    if (v21 < 0)
    {
      goto LABEL_92;
    }

    if (v21)
    {
      v22 = 0;
      v23 = v18[349];
      v24 = 1 << v21;
      v25 = (1 << v21) >> 1;
      v26 = outlined read-only object #0 of one-time initialization function for roots[v21 + 4];
      v27 = a2 >> v21;
      while (1)
      {
        if (v22 == v25)
        {
          __break(1u);
LABEL_88:
          __break(1u);
LABEL_89:
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
LABEL_93:
          __break(1u);
LABEL_94:
          v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
          goto LABEL_16;
        }

        if (v27)
        {
          v31 = 0;
          while (1)
          {
            v33 = v24 * v31;
            if ((v24 * v31) >> 64 != (v24 * v31) >> 63)
            {
              goto LABEL_75;
            }

            v34 = v33 + v22;
            if (__OFADD__(v33, v22))
            {
              goto LABEL_76;
            }

            if ((v34 & 0x8000000000000000) != 0)
            {
              goto LABEL_77;
            }

            v35 = *(v3 + 2);
            if (v34 >= v35)
            {
              goto LABEL_78;
            }

            v36 = v34 + v25;
            if (__OFADD__(v34, v25))
            {
              goto LABEL_79;
            }

            if (v36 >= v35)
            {
              goto LABEL_80;
            }

            v37 = *&v16[8 * v34];
            v38 = *&v16[8 * v36];
            v39 = (v38 * v23) >> 64;
            v40 = (0xFFFFFFFEFFFFFFFFLL * v38 * v23 * 0xFFFFFFFF00000001) >> 64;
            v41 = __CFADD__(-(v38 * v23), v38 * v23);
            v30 = __CFADD__(v40, v39);
            v42 = v40 + v39;
            if (v30)
            {
              goto LABEL_45;
            }

            if (v42 != -1)
            {
              break;
            }

            if (v41)
            {
              v41 = 1;
LABEL_45:
              v43 = v41 + v42;
              v44 = v43 + 0xFFFFFFFF;
              if (v43 >= 0xFFFFFFFF00000001)
              {
                goto LABEL_82;
              }

LABEL_46:
              v45 = 0xFFFFFFFF00000001 - v44;
              if (v44 > 0xFFFFFFFF00000001)
              {
                goto LABEL_81;
              }

              goto LABEL_47;
            }

            v44 = 4294967294;
            v45 = 0xFFFFFFFE00000003;
LABEL_47:
            v46 = v37 - v45;
            if (v37 < v45)
            {
              v47 = 0xFFFFFFFF00000001 - v45;
              if (v45 > 0xFFFFFFFF00000001)
              {
                goto LABEL_83;
              }

              v30 = __CFADD__(v37, v47);
              v46 = v37 + v47;
              if (v30)
              {
                goto LABEL_85;
              }
            }

            *&v16[8 * v34] = v46;
            if (v37 >= v44)
            {
LABEL_32:
              v32 = v37 - v44;
              goto LABEL_33;
            }

            v32 = v37 + v45;
            if (__CFADD__(v37, v45))
            {
              goto LABEL_84;
            }

LABEL_33:
            ++v31;
            *&v16[8 * v36] = v32;
            if (v27 == v31)
            {
              goto LABEL_63;
            }
          }

          v48 = v42 + v41;
          if (v48 >= 0xFFFFFFFF00000001)
          {
            v44 = v48 + 0xFFFFFFFF;
          }

          else
          {
            v44 = v48;
          }

          if (!v44)
          {
            goto LABEL_32;
          }

          goto LABEL_46;
        }

LABEL_63:
        v49 = (v23 * v26) >> 64;
        v50 = (0xFFFFFFFEFFFFFFFFLL * v23 * v26 * 0xFFFFFFFF00000001) >> 64;
        v28 = __CFADD__(-(v23 * v26), v23 * v26);
        v51 = v50 + v49;
        if (__CFADD__(v50, v49))
        {
          goto LABEL_27;
        }

        if (v51 == -1)
        {
          if (v28)
          {
            v28 = 1;
LABEL_27:
            v29 = v28 + v51;
            v30 = __CFADD__(v29, 0xFFFFFFFFLL);
            v23 = v29 + 0xFFFFFFFFLL;
            if (v30)
            {
              goto LABEL_91;
            }

            goto LABEL_28;
          }

          v23 = 4294967294;
        }

        else
        {
          v23 = v51 + v28;
          if (v23 >= 0xFFFFFFFF00000001)
          {
            v23 += 0xFFFFFFFFLL;
          }
        }

LABEL_28:
        if (++v22 == v25)
        {
          goto LABEL_17;
        }
      }
    }
  }

  _StringGuts.grow(_:)(26);

  v3 = MEMORY[0x277D83BF8];
  dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2743B25F0](2112544, 0xE300000000000000);
  v52 = dispatch thunk of CustomStringConvertible.description.getter();
  a3 = v53;
  MEMORY[0x2743B25F0](v52);

  MEMORY[0x2743B25F0](0xD000000000000013, 0x8000000270C51DA0);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  *a3 = v3;
  return result;
}

unint64_t specialized inverseDiscreteFourierTransform<A, B, C>(input:size:output:)(uint64_t a1, unint64_t a2, char **a3)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_38;
  }

  _s4VDAF12FieldElementPAAEyx06FiniteB0_11IntegerTypeQZcfCAA7Field40V_Tt1g5(a2, &v25);
  v6 = v25;
  if (!v25)
  {
LABEL_39:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v7 = 0x1B7FFFEB0;
  v8 = 0xFFFEAFFFFFLL;
  _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF8_UInt128V_s6UInt64VTt1g5(0xFFFEAFFFFFLL, &v24);
  while (v24 != 0)
  {
    _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF8_UInt128V_s6UInt64VTt1g5(v8 & 1, &v24);
    v11 = *(&v24 + 1) | v24;
    if (v24 == 0)
    {
      goto LABEL_30;
    }

    v12 = (v6 * v7) >> 64;
    v13 = (0xCFFE47FFFEAFFFFFLL * v6 * v7 * 0xFFFEB00001uLL) >> 64;
    v14 = __CFADD__(-(v6 * v7), v6 * v7);
    v15 = __CFADD__(v13, v12);
    v16 = v13 + v12;
    if (v15)
    {
      v17 = v16 + v14;
    }

    else
    {
      if (v16 != -1)
      {
        v11 = 0;
        v18 = v16 + v14;
        if (v18 >= 0xFFFEB00001)
        {
          v7 = v18 - 0xFFFEB00001;
        }

        else
        {
          v7 = v18;
        }

        goto LABEL_30;
      }

      v17 = 0;
      if (!v14)
      {
        v11 = 0;
        v7 = 0xFFFFFF00014FFFFELL;
        goto LABEL_30;
      }
    }

    v7 = v17 - 0xFFFEB00001;
    if (v17 >= 0xFFFEB00001)
    {
      goto LABEL_37;
    }

    v11 = 0;
LABEL_30:
    v19 = (__PAIR128__(v11, v6) * __PAIR128__(v11, v6)) >> 64;
    v20 = (0xCFFE47FFFEAFFFFFLL * v6 * v6 * 0xFFFEB00001uLL) >> 64;
    v21 = __CFADD__(-(v6 * v6), v6 * v6);
    v15 = __CFADD__(v20, v19);
    v22 = v20 + v19;
    if (v15)
    {
      v23 = v22 + v21;
      v6 = v23 - 0xFFFEB00001;
      if (v23 >= 0xFFFEB00001)
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }
    }

    else if (v22 == -1)
    {
      v6 = 0xFFFFFF00014FFFFELL;
      if (v21)
      {
        v6 = 0xFFFFFF00014FFFFFLL;
      }
    }

    else
    {
      v10 = v22 + v21;
      if (v10 >= 0xFFFEB00001)
      {
        v6 = v10 - 0xFFFEB00001;
      }

      else
      {
        v6 = v10;
      }
    }

    v8 >>= 1;
    _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF8_UInt128V_s6UInt64VTt1g5(v8, &v24);
  }

  specialized discreteFourierTransform<A, B, C>(input:size:output:)(a1, a2, a3);

  return specialized inverseDiscreteFourierTransformFinish<A, B>(size:sizeInverse:output:)(a2, v7, a3);
}

uint64_t specialized inverseDiscreteFourierTransform<A, B, C>(input:size:output:)(uint64_t a1, unint64_t a2, char **a3)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_26;
  }

  if (HIDWORD(a2))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  _s4VDAF12FieldElementPAAEyx06FiniteB0_11IntegerTypeQZcfCAA7Field32V_Tt1g5(a2, &v18);
  v6 = v18;
  if (!v18)
  {
LABEL_28:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF8_UInt128V_s6UInt32VTt1g5(4293918719, &v17);
  v7 = 0xFFFFF;
  if (v17 != 0)
  {
    LODWORD(v9) = -1048577;
    do
    {
      _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF8_UInt128V_s6UInt32VTt1g5(v9 & 1, &v17);
      if (v17 != 0)
      {
        v10 = v6 * v7;
        v11 = 4293918721 * (-1048577 * v10);
        v12 = __CFADD__(v11, v10);
        v13 = v11 + v10;
        if (v12)
        {
          v7 = HIDWORD(v13) + 0xFFFFF;
          if (HIDWORD(v13) >= 0xFFF00001)
          {
            goto LABEL_25;
          }
        }

        else if (v13 >= 0xFFF0000100000000)
        {
          v7 = HIDWORD(v13) + 0xFFFFF;
        }

        else
        {
          v7 = HIDWORD(v13);
        }
      }

      v14 = v6 * v6;
      v15 = 4293918721 * (-1048577 * v14);
      v12 = __CFADD__(v15, v14);
      v16 = v15 + v14;
      if (v12)
      {
        v6 = HIDWORD(v16) + 0xFFFFF;
        if (HIDWORD(v16) >= 0xFFF00001)
        {
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }
      }

      else if (v16 >= 0xFFF0000100000000)
      {
        v6 = HIDWORD(v16) + 0xFFFFF;
      }

      else
      {
        v6 = HIDWORD(v16);
      }

      v9 = v9 >> 1;
      _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF8_UInt128V_s6UInt32VTt1g5(v9, &v17);
    }

    while (v17 != 0);
  }

  specialized discreteFourierTransform<A, B, C>(input:size:output:)(a1, a2, a3);

  return specialized inverseDiscreteFourierTransformFinish<A, B>(size:sizeInverse:output:)(a2, v7, a3);
}

{
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_40;
  }

  _s4VDAF12FieldElementPAAEyx06FiniteB0_11IntegerTypeQZcfCAA7Field64V_Tt1g5(a2, &v25);
  v6 = v25;
  if (!v25)
  {
LABEL_41:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF8_UInt128V_s6UInt64VTt1g5(0xFFFFFFFEFFFFFFFFLL, &v24);
  if (v24 != 0)
  {
    v9 = 0xFFFFFFFEFFFFFFFFLL;
    v7 = 0xFFFFFFFFLL;
    while (1)
    {
      _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF8_UInt128V_s6UInt64VTt1g5(v9 & 1, &v24);
      v11 = *(&v24 + 1) | v24;
      if (v24 == 0)
      {
        goto LABEL_31;
      }

      v12 = (v6 * v7) >> 64;
      v13 = (0xFFFFFFFEFFFFFFFFLL * v6 * v7 * 0xFFFFFFFF00000001) >> 64;
      v14 = __CFADD__(-(v6 * v7), v6 * v7);
      v15 = __CFADD__(v13, v12);
      v16 = v13 + v12;
      if (v15)
      {
        v17 = v16 + v14;
      }

      else
      {
        if (v16 != -1)
        {
          v11 = 0;
          v18 = v16 + v14;
          if (v18 >= 0xFFFFFFFF00000001)
          {
            v7 = v18 + 0xFFFFFFFF;
          }

          else
          {
            v7 = v18;
          }

          goto LABEL_31;
        }

        v17 = 0;
        if (!v14)
        {
          v11 = 0;
          v7 = 4294967294;
          goto LABEL_31;
        }
      }

      v7 = v17 + 0xFFFFFFFF;
      if (v17 >= 0xFFFFFFFF00000001)
      {
        goto LABEL_39;
      }

      v11 = 0;
LABEL_31:
      v19 = (__PAIR128__(v11, v6) * __PAIR128__(v11, v6)) >> 64;
      v20 = (0xFFFFFFFEFFFFFFFFLL * v6 * v6 * 0xFFFFFFFF00000001) >> 64;
      v21 = __CFADD__(-(v6 * v6), v6 * v6);
      v15 = __CFADD__(v20, v19);
      v22 = v20 + v19;
      if (v15)
      {
        v23 = v22 + v21;
        v6 = v23 + 0xFFFFFFFF;
        if (v23 >= 0xFFFFFFFF00000001)
        {
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }
      }

      else if (v22 == -1)
      {
        if (v21)
        {
          v6 = 0xFFFFFFFFLL;
        }

        else
        {
          v6 = 4294967294;
        }
      }

      else
      {
        v10 = v22 + v21;
        if (v10 >= 0xFFFFFFFF00000001)
        {
          v6 = v10 + 0xFFFFFFFF;
        }

        else
        {
          v6 = v10;
        }
      }

      v9 >>= 1;
      _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF8_UInt128V_s6UInt64VTt1g5(v9, &v24);
      if (v24 == 0)
      {
        goto LABEL_5;
      }
    }
  }

  v7 = 0xFFFFFFFFLL;
LABEL_5:
  specialized discreteFourierTransform<A, B, C>(input:size:output:)(a1, a2, a3);

  return specialized inverseDiscreteFourierTransformFinish<A, B>(size:sizeInverse:output:)(a2, v7, a3);
}

void specialized evaluateUsingHorner<A, B, C>(_:atInput:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_42;
  }

  v4 = *(a2 + 16);
  if (!v4)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v5 = v4 - 1;
  v6 = (v4 - 1) * (v2 - 1);
  if (((v4 - 1) * (v2 - 1)) >> 64 != v6 >> 63)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v7 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v6 != -1)
  {
    v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v9 + 2) = v7;
    bzero(v9 + 32, 8 * v6 + 8);
LABEL_9:
    v10 = 0;
    v11 = 0;
    v12 = a1 + 32;
    *(v9 + 4) = *(v12 + 8 * (v2 - 1));
    v21 = v9;
    for (i = v2 - 2; ; i = v15)
    {
      if (i <= 0)
      {
        if ((i != 0) | v11 & 1)
        {
          return;
        }

        v15 = 0;
        v11 = 1;
        v16 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }
      }

      else
      {
        v15 = i - 1;
        v16 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_34;
        }
      }

      if ((v16 & 0x8000000000000000) != 0)
      {
        goto LABEL_35;
      }

      if (v7 < v16)
      {
        goto LABEL_36;
      }

      v17 = (2 * v16) | 1;

      specialized convolveDirectly<A, B, C, D>(_:withKernel:result:)((v9 + 32), 0, v17, a2, &v21);

      if (__OFADD__(v10, v5))
      {
        goto LABEL_37;
      }

      if (i >= v2)
      {
        goto LABEL_38;
      }

      v18 = *(v12 + 8 * i);
      v9 = v21;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v7 = *(v9 + 2);
        if (!v7)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
        v7 = *(v9 + 2);
        if (!v7)
        {
LABEL_32:
          __break(1u);
          return;
        }
      }

      v14 = *(v9 + 4);
      if (v18)
      {
        v19 = 0xFFFEB00001 - v18;
        if (v18 > 0xFFFEB00001)
        {
          goto LABEL_39;
        }

        if (v14 >= v19)
        {
          v14 -= v19;
        }

        else
        {
          if (v19 > 0xFFFEB00001)
          {
            goto LABEL_40;
          }

          v20 = __CFADD__(v14, v18);
          v14 += v18;
          if (v20)
          {
            goto LABEL_41;
          }
        }
      }

      *(v9 + 4) = v14;
      v21 = v9;
      v10 += v5;
    }
  }

  v9 = MEMORY[0x277D84F90];
  v7 = *(MEMORY[0x277D84F90] + 16);
  if (v7)
  {
    goto LABEL_9;
  }

LABEL_47:
  __break(1u);
}

{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_42;
  }

  v4 = *(a2 + 16);
  if (!v4)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v5 = v4 - 1;
  v6 = (v4 - 1) * (v2 - 1);
  if (((v4 - 1) * (v2 - 1)) >> 64 != v6 >> 63)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v7 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v6 != -1)
  {
    v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v9 + 2) = v7;
    bzero(v9 + 32, 4 * v6 + 4);
LABEL_9:
    v10 = 0;
    v11 = 0;
    v12 = a1 + 32;
    *(v9 + 8) = *(v12 + 4 * (v2 - 1));
    v21 = v9;
    for (i = v2 - 2; ; i = v15)
    {
      if (i <= 0)
      {
        if ((i != 0) | v11 & 1)
        {
          return;
        }

        v15 = 0;
        v11 = 1;
        v16 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }
      }

      else
      {
        v15 = i - 1;
        v16 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_34;
        }
      }

      if ((v16 & 0x8000000000000000) != 0)
      {
        goto LABEL_35;
      }

      if (v7 < v16)
      {
        goto LABEL_36;
      }

      v17 = (2 * v16) | 1;

      specialized convolveDirectly<A, B, C, D>(_:withKernel:result:)((v9 + 32), 0, v17, a2, &v21);

      if (__OFADD__(v10, v5))
      {
        goto LABEL_37;
      }

      if (i >= v2)
      {
        goto LABEL_38;
      }

      v18 = *(v12 + 4 * i);
      v9 = v21;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v7 = *(v9 + 2);
        if (!v7)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
        v7 = *(v9 + 2);
        if (!v7)
        {
LABEL_32:
          __break(1u);
          return;
        }
      }

      v14 = *(v9 + 8);
      if (v18)
      {
        v19 = -1048575 - v18;
        if (v18 > 0xFFF00001)
        {
          goto LABEL_39;
        }

        if (v14 >= v19)
        {
          v14 -= v19;
        }

        else
        {
          if (v19 > 0xFFF00001)
          {
            goto LABEL_40;
          }

          v20 = __CFADD__(v14, v18);
          v14 += v18;
          if (v20)
          {
            goto LABEL_41;
          }
        }
      }

      *(v9 + 8) = v14;
      v21 = v9;
      v10 += v5;
    }
  }

  v9 = MEMORY[0x277D84F90];
  v7 = *(MEMORY[0x277D84F90] + 16);
  if (v7)
  {
    goto LABEL_9;
  }

LABEL_47:
  __break(1u);
}

{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_42;
  }

  v4 = *(a2 + 16);
  if (!v4)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v5 = v4 - 1;
  v6 = (v4 - 1) * (v2 - 1);
  if (((v4 - 1) * (v2 - 1)) >> 64 != v6 >> 63)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v7 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v6 != -1)
  {
    v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v9 + 2) = v7;
    bzero(v9 + 32, 8 * v6 + 8);
LABEL_9:
    v10 = 0;
    v11 = 0;
    v12 = a1 + 32;
    *(v9 + 4) = *(v12 + 8 * (v2 - 1));
    v21 = v9;
    for (i = v2 - 2; ; i = v15)
    {
      if (i <= 0)
      {
        if ((i != 0) | v11 & 1)
        {
          return;
        }

        v15 = 0;
        v11 = 1;
        v16 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }
      }

      else
      {
        v15 = i - 1;
        v16 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_34;
        }
      }

      if ((v16 & 0x8000000000000000) != 0)
      {
        goto LABEL_35;
      }

      if (v7 < v16)
      {
        goto LABEL_36;
      }

      v17 = (2 * v16) | 1;

      specialized convolveDirectly<A, B, C, D>(_:withKernel:result:)((v9 + 32), 0, v17, a2, &v21);

      if (__OFADD__(v10, v5))
      {
        goto LABEL_37;
      }

      if (i >= v2)
      {
        goto LABEL_38;
      }

      v18 = *(v12 + 8 * i);
      v9 = v21;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v7 = *(v9 + 2);
        if (!v7)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
        v7 = *(v9 + 2);
        if (!v7)
        {
LABEL_32:
          __break(1u);
          return;
        }
      }

      v14 = *(v9 + 4);
      if (v18)
      {
        v19 = 0xFFFFFFFF00000001 - v18;
        if (v18 > 0xFFFFFFFF00000001)
        {
          goto LABEL_39;
        }

        if (v14 >= v19)
        {
          v14 -= v19;
        }

        else
        {
          if (v19 > 0xFFFFFFFF00000001)
          {
            goto LABEL_40;
          }

          v20 = __CFADD__(v14, v18);
          v14 += v18;
          if (v20)
          {
            goto LABEL_41;
          }
        }
      }

      *(v9 + 4) = v14;
      v21 = v9;
      v10 += v5;
    }
  }

  v9 = MEMORY[0x277D84F90];
  v7 = *(MEMORY[0x277D84F90] + 16);
  if (v7)
  {
    goto LABEL_9;
  }

LABEL_47:
  __break(1u);
}

unint64_t specialized evaluateUsingHorner<A, B>(_:atInput:)@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v3 = *(result + 16);
  if (!v3)
  {
    goto LABEL_34;
  }

  v4 = 0;
  v5 = result + 32;
  result = *(result + 32 + 8 * v3 - 8);
  v6 = v3 - 2;
  while (1)
  {
    if (v6 <= 0)
    {
      if ((v6 != 0) | v4 & 1)
      {
        goto LABEL_29;
      }

      v7 = 0;
      v4 = 1;
    }

    else
    {
      v7 = v6 - 1;
    }

    v8 = (result * a2) >> 64;
    v9 = (0xCFFE47FFFEAFFFFFLL * result * a2 * 0xFFFEB00001uLL) >> 64;
    v10 = __CFADD__(-(result * a2), result * a2);
    v11 = v9 + v8;
    if (!__CFADD__(v9, v8))
    {
      if (v11 != -1)
      {
        result = v11 + v10;
        if (result >= 0xFFFEB00001)
        {
          result -= 0xFFFEB00001;
        }

        goto LABEL_21;
      }

      result = 0xFFFFFF00014FFFFELL;
      if (!v10)
      {
        goto LABEL_21;
      }

      v10 = 1;
    }

    result = v10 + v11 - 0xFFFEB00001;
    if ((v10 + v11) >= 0xFFFEB00001)
    {
      goto LABEL_32;
    }

LABEL_21:
    if (v6 >= v3)
    {
      break;
    }

    v12 = *(v5 + 8 * v6);
    v6 = v7;
    if (v12)
    {
      v13 = 0xFFFEB00001 - v12;
      if (v12 > 0xFFFEB00001)
      {
        goto LABEL_31;
      }

      if (result >= v13)
      {
        result -= v13;
        v6 = v7;
      }

      else
      {
        if (v13 > 0xFFFEB00001)
        {
          goto LABEL_33;
        }

        v6 = v7;
        v14 = __CFADD__(result, v12);
        result += v12;
        if (v14)
        {
          __break(1u);
LABEL_29:
          *a3 = result;
          return result;
        }
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t specialized evaluateUsingHorner<A, B>(_:atInput:)@<X0>(uint64_t result@<X0>, unsigned int a2@<W1>, _DWORD *a3@<X8>)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = 0;
    v5 = result + 32;
    LODWORD(v6) = *(result + 32 + 4 * v3 - 4);
    result = v3 - 2;
    while (1)
    {
      if (result <= 0)
      {
        if ((result != 0) | v4 & 1)
        {
          goto LABEL_22;
        }

        v8 = 0;
        v4 = 1;
      }

      else
      {
        v8 = result - 1;
      }

      v9 = a2 * v6;
      v10 = 4293918721 * (-1048577 * v9);
      v11 = __CFADD__(v10, v9);
      v12 = v10 + v9;
      v6 = HIDWORD(v12);
      if (v11)
      {
        LODWORD(v6) = HIDWORD(v12) + 0xFFFFF;
        if (HIDWORD(v12) >= 0xFFF00001)
        {
          goto LABEL_25;
        }
      }

      else if (v12 >= 0xFFF0000100000000)
      {
        LODWORD(v6) = HIDWORD(v12) + 0xFFFFF;
      }

      if (result >= v3)
      {
        break;
      }

      v13 = *(v5 + 4 * result);
      result = v8;
      if (v13)
      {
        result = -1048575 - v13;
        if (v13 > 0xFFF00001)
        {
          goto LABEL_24;
        }

        if (v6 >= result)
        {
          LODWORD(v6) = v6 - result;
          result = v8;
        }

        else
        {
          if (result > 0xFFF00001)
          {
            goto LABEL_26;
          }

          result = v8;
          v11 = __CFADD__(v6, v13);
          LODWORD(v6) = v6 + v13;
          if (v11)
          {
            __break(1u);
LABEL_22:
            *a3 = v6;
            return result;
          }
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized evaluateUsingHorner<A, B>(_:atInput:)@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v3 = *(result + 16);
  if (!v3)
  {
    goto LABEL_36;
  }

  v4 = 0;
  v5 = result + 32;
  v6 = *(result + 32 + 8 * v3 - 8);
  v7 = v3 - 2;
  while (1)
  {
    do
    {
      if (v7 <= 0)
      {
        if ((v7 != 0) | v4 & 1)
        {
          goto LABEL_31;
        }

        v8 = 0;
        v4 = 1;
      }

      else
      {
        v8 = v7 - 1;
      }

      result = (v6 * a2) >> 64;
      v9 = (0xFFFFFFFEFFFFFFFFLL * v6 * a2 * 0xFFFFFFFF00000001) >> 64;
      v10 = __CFADD__(-(v6 * a2), v6 * a2);
      v11 = v9 + result;
      if (__CFADD__(v9, result))
      {
        goto LABEL_13;
      }

      if (v11 != -1)
      {
        v6 = v11 + v10;
        if (v6 >= 0xFFFFFFFF00000001)
        {
          v6 += 0xFFFFFFFFLL;
        }

        goto LABEL_19;
      }

      if (v10)
      {
        v10 = 1;
LABEL_13:
        v12 = v10 + v11;
        v13 = __CFADD__(v12, 0xFFFFFFFFLL);
        v6 = v12 + 0xFFFFFFFFLL;
        if (v13)
        {
          goto LABEL_33;
        }

LABEL_19:
        if (v7 >= v3)
        {
          goto LABEL_30;
        }

        goto LABEL_20;
      }

      v6 = 4294967294;
      if (v7 >= v3)
      {
LABEL_30:
        __break(1u);
LABEL_31:
        *a3 = v6;
        return result;
      }

LABEL_20:
      v14 = *(v5 + 8 * v7);
      v7 = v8;
    }

    while (!v14);
    v15 = 0xFFFFFFFF00000001 - v14;
    if (v14 > 0xFFFFFFFF00000001)
    {
      break;
    }

    if (v6 >= v15)
    {
      v6 -= v15;
      v7 = v8;
    }

    else
    {
      if (v15 > 0xFFFFFFFF00000001)
      {
        goto LABEL_34;
      }

      v7 = v8;
      v13 = __CFADD__(v6, v14);
      v6 += v14;
      if (v13)
      {
        goto LABEL_35;
      }
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t specialized evaluateUsingDFT<A, B, C>(_:atInput:)(uint64_t result, uint64_t a2)
{
  v57 = *(result + 16);
  v58 = result;
  if (!v57)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v3 = *(a2 + 16);
  if (!v3)
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v4 = (v3 - 1) * (v57 - 1);
  if (((v3 - 1) * (v57 - 1)) >> 64 != v4 >> 63)
  {
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  result = v4 + 1;
  if (__OFADD__(v4, 1))
  {
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  v56 = v3 - 1;
  result = specialized FixedWidthInteger.nextPowerOfTwo.getter(result);
  if (v57 != 1)
  {
    v5 = result;
    if (result < 0)
    {
LABEL_97:
      __break(1u);
      goto LABEL_98;
    }

    if (result)
    {
      v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v6 + 16) = v5;
      bzero((v6 + 32), 8 * v5);
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 16) = v5;
      bzero((v7 + 32), 8 * v5);
      if (v3 <= v5)
      {
LABEL_9:
        v8 = 0;
        if (v3 < 4)
        {
          goto LABEL_14;
        }

        if ((v7 - a2) <= 0x1F)
        {
          goto LABEL_14;
        }

        v8 = v3 & 0x7FFFFFFFFFFFFFFCLL;
        v9 = (a2 + 48);
        v10 = (v7 + 48);
        v11 = v3 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v12 = *v9;
          *(v10 - 1) = *(v9 - 1);
          *v10 = v12;
          v9 += 2;
          v10 += 2;
          v11 -= 4;
        }

        while (v11);
        if (v3 != v8)
        {
LABEL_14:
          v13 = v3 - v8;
          v14 = 8 * v8 + 32;
          v15 = (v7 + v14);
          v16 = (a2 + v14);
          do
          {
            v17 = *v16++;
            *v15++ = v17;
            --v13;
          }

          while (v13);
        }

        v61 = v7;
        if (v5)
        {
          v18 = static Array._allocateBufferUninitialized(minimumCapacity:)();
          *(v18 + 16) = v5;
          bzero((v18 + 32), 8 * v5);
LABEL_22:
          v60 = v18;
          specialized discreteFourierTransform<A, B, C>(input:size:output:)(a2, v5, &v60);
          v19 = v60;
          v20 = *(v58 + 32);
          v59 = v58 + 32;
          v21 = *(v6 + 16);

          if (!v21)
          {
LABEL_98:
            __break(1u);
            return result;
          }

          *(v6 + 32) = v20;
          v22 = 1;
          v23 = v56;
          v24 = v19;
LABEL_26:
          if ((v23 & 0x8000000000000000) != 0)
          {
            goto LABEL_88;
          }

          v25 = *(v61 + 2);
          if (v25)
          {
            v26 = 0;
            v27 = v22 + 1;
            v28 = *(v59 + 8 * v22);
            v29 = v61 + 32;
            v30 = (v6 + 32);
            do
            {
              v31 = *&v29[8 * v26];
              v32 = (v31 * v28) >> 64;
              v33 = v31 * v28;
              v34 = (0xCFFE47FFFEAFFFFFLL * v33 * 0xFFFEB00001uLL) >> 64;
              v35 = __CFADD__(-v33, v33);
              v36 = v34 + v32;
              if (!__CFADD__(v34, v32))
              {
                if (v36 != -1)
                {
                  v39 = v36 + v35;
                  if (v39 >= 0xFFFEB00001)
                  {
                    v38 = v39 - 0xFFFEB00001;
                  }

                  else
                  {
                    v38 = v39;
                  }

                  goto LABEL_40;
                }

                if (!v35)
                {
                  if (v26 >= *(v6 + 16))
                  {
                    goto LABEL_82;
                  }

                  v44 = *v30;
                  goto LABEL_83;
                }

                v35 = 1;
              }

              v37 = v35 + v36;
              v38 = v37 - 0xFFFEB00001;
              if (v37 >= 0xFFFEB00001)
              {
                goto LABEL_84;
              }

LABEL_40:
              if (v26 >= *(v6 + 16))
              {
                goto LABEL_82;
              }

              v40 = *v30;
              if (v38)
              {
                v41 = v38 <= 0xFFFEB00001;
                v42 = 0xFFFEB00001 - v38;
                if (!v41)
                {
                  goto LABEL_83;
                }

                if (v40 >= v42)
                {
                  v40 -= v42;
                }

                else
                {
                  v41 = v42 <= 0xFFFEB00001;
                  v43 = 0xFFFEB00001 - v42;
                  if (!v41)
                  {
                    goto LABEL_86;
                  }

                  v41 = __CFADD__(v40, v43);
                  v40 += v43;
                  if (v41)
                  {
                    goto LABEL_87;
                  }
                }
              }

              *v30 = v40;
              if (v23 == v26)
              {
                if (v22 == v57 - 1)
                {

                  return v6;
                }

                if (!v5)
                {
LABEL_78:
                  result = specialized inverseDiscreteFourierTransform<A, B, C>(input:size:output:)(v24, v5, &v61);
                  if (__OFADD__(v23, v56))
                  {
                    goto LABEL_90;
                  }

                  v23 += v56;
                  v22 = v27;
                  if (v27 == v57)
                  {
                    goto LABEL_89;
                  }

                  goto LABEL_26;
                }

                if (v5 > *(v19 + 2))
                {
                  goto LABEL_91;
                }

                if (v5 <= *(v24 + 16))
                {
                  result = swift_isUniquelyReferenced_nonNull_native();
                  if ((result & 1) == 0)
                  {
                    result = specialized _ArrayBuffer._consumeAndCreateNew()(v24);
                    v24 = result;
                  }

                  v45 = 32;
                  v46 = v5;
                  while (1)
                  {
                    v50 = *(v24 + v45);
                    v51 = *&v19[v45];
                    v52 = (v50 * v51) >> 64;
                    v53 = v50 * v51;
                    v54 = (0xCFFE47FFFEAFFFFFLL * v53 * 0xFFFEB00001uLL) >> 64;
                    v47 = __CFADD__(-v53, v53);
                    v55 = v54 + v52;
                    if (__CFADD__(v54, v52))
                    {
                      goto LABEL_66;
                    }

                    if (v55 == -1)
                    {
                      if (v47)
                      {
                        v47 = 1;
LABEL_66:
                        v48 = v47 + v55;
                        v41 = __CFADD__(v48, 0xFFFFFF00014FFFFFLL);
                        v49 = v48 - 0xFFFEB00001;
                        if (v41)
                        {
                          goto LABEL_85;
                        }

                        goto LABEL_67;
                      }

                      v49 = 0xFFFFFF00014FFFFELL;
                    }

                    else
                    {
                      v49 = v55 + v47;
                      if (v49 >= 0xFFFEB00001)
                      {
                        v49 -= 0xFFFEB00001;
                      }
                    }

LABEL_67:
                    *(v24 + v45) = v49;
                    v45 += 8;
                    if (!--v46)
                    {
                      goto LABEL_78;
                    }
                  }
                }

                goto LABEL_92;
              }

              ++v26;
              ++v30;
            }

            while (v25 != v26);
          }

          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
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
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
          goto LABEL_93;
        }

LABEL_21:
        v18 = MEMORY[0x277D84F90];
        goto LABEL_22;
      }
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
      v6 = MEMORY[0x277D84F90];
      if (v3 <= *(MEMORY[0x277D84F90] + 16))
      {
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF7Field40VGMd, &_ss23_ContiguousArrayStorageCy4VDAF7Field40VGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_270C44540;
  *(v6 + 32) = *(v58 + 32);
  return v6;
}

{
  v51 = result;
  v49 = *(result + 16);
  if (!v49)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v3 = *(a2 + 16);
  if (!v3)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v4 = (v3 - 1) * (v49 - 1);
  if (((v3 - 1) * (v49 - 1)) >> 64 != v4 >> 63)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  result = v4 + 1;
  if (__OFADD__(v4, 1))
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  result = specialized FixedWidthInteger.nextPowerOfTwo.getter(result);
  if (v49 != 1)
  {
    if (result < 0)
    {
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    v48 = v3 - 1;
    v5 = 4 * result;
    v53 = result;
    if (result)
    {
      v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v6 + 16) = v53;
      bzero((v6 + 32), v5);
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 16) = v53;
      bzero((v7 + 32), v5);
      result = v53;
      if (v3 <= v53)
      {
LABEL_9:
        v8 = 0;
        if (v3 < 8)
        {
          goto LABEL_14;
        }

        if ((v7 - a2) <= 0x1F)
        {
          goto LABEL_14;
        }

        v8 = v3 & 0x7FFFFFFFFFFFFFF8;
        v9 = (a2 + 48);
        v10 = (v7 + 48);
        v11 = v3 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v12 = *v9;
          *(v10 - 1) = *(v9 - 1);
          *v10 = v12;
          v9 += 2;
          v10 += 2;
          v11 -= 8;
        }

        while (v11);
        if (v3 != v8)
        {
LABEL_14:
          v13 = v3 - v8;
          v14 = 4 * v8 + 32;
          v15 = (v7 + v14);
          v16 = (a2 + v14);
          do
          {
            v17 = *v16++;
            *v15++ = v17;
            --v13;
          }

          while (v13);
        }

        v55 = v7;
        if (result)
        {
          v18 = static Array._allocateBufferUninitialized(minimumCapacity:)();
          *(v18 + 16) = v53;
          bzero((v18 + 32), v5);
          v19 = v53;
LABEL_22:
          v54 = v18;
          specialized discreteFourierTransform<A, B, C>(input:size:output:)(a2, v19, &v54);
          v20 = v54;
          v21 = *(v51 + 32);
          v52 = v51 + 32;
          v22 = *(v6 + 16);

          if (!v22)
          {
LABEL_85:
            __break(1u);
            return result;
          }

          *(v6 + 32) = v21;
          v23 = v6 + 32;
          v24 = 1;
          v25 = v48;
          v26 = v20;
LABEL_26:
          if ((v25 & 0x8000000000000000) == 0)
          {
            v27 = v55;
            v28 = *(v55 + 2);
            if (v28)
            {
              v29 = 0;
              v30 = *(v52 + 4 * v24);
              while (1)
              {
                v31 = *&v27[4 * v29 + 32] * v30;
                v32 = 4293918721 * (-1048577 * v31);
                v33 = __CFADD__(v32, v31);
                v34 = v32 + v31;
                v35 = HIDWORD(v34);
                if (v33)
                {
                  v36 = HIDWORD(v34) + 0xFFFFF;
                  if (v35 >= 0xFFF00001)
                  {
                    goto LABEL_71;
                  }
                }

                else
                {
                  v36 = v34 >= 0xFFF0000100000000 ? HIDWORD(v34) + 0xFFFFF : HIDWORD(v34);
                }

                if (v29 >= *(v6 + 16))
                {
                  break;
                }

                v37 = *(v23 + 4 * v29);
                if (v36)
                {
                  v33 = v36 <= 0xFFF00001;
                  v38 = -1048575 - v36;
                  if (!v33)
                  {
                    goto LABEL_70;
                  }

                  if (v37 >= v38)
                  {
                    v37 -= v38;
                  }

                  else
                  {
                    v33 = v38 <= 0xFFF00001;
                    v39 = -1048575 - v38;
                    if (!v33)
                    {
                      goto LABEL_72;
                    }

                    v33 = __CFADD__(v37, v39);
                    v37 += v39;
                    if (v33)
                    {
                      goto LABEL_73;
                    }
                  }
                }

                *(v23 + 4 * v29) = v37;
                if (v25 == v29)
                {
                  if (v24 == v49 - 1)
                  {

                    return v6;
                  }

                  v40 = v53;
                  v50 = v24 + 1;
                  if (v53)
                  {
                    v41 = v48;
                    if (v53 > *(v20 + 2))
                    {
                      goto LABEL_78;
                    }

                    if (v53 <= *(v26 + 16))
                    {
                      result = swift_isUniquelyReferenced_nonNull_native();
                      if ((result & 1) == 0)
                      {
                        result = specialized _ArrayBuffer._consumeAndCreateNew()(v26);
                        v26 = result;
                      }

                      v42 = 32;
                      v40 = v53;
                      v43 = v53;
                      while (1)
                      {
                        v45 = *(v26 + v42) * *&v20[v42];
                        v46 = 4293918721 * (-1048577 * v45);
                        v33 = __CFADD__(v46, v45);
                        v47 = v46 + v45;
                        v44 = HIDWORD(v47);
                        if (v33)
                        {
                          LODWORD(v44) = HIDWORD(v47) + 0xFFFFF;
                          if (HIDWORD(v47) >= 0xFFF00001)
                          {
                            goto LABEL_74;
                          }
                        }

                        else if (v47 >= 0xFFF0000100000000)
                        {
                          LODWORD(v44) = HIDWORD(v47) + 0xFFFFF;
                        }

                        *(v26 + v42) = v44;
                        v42 += 4;
                        if (!--v43)
                        {
                          goto LABEL_65;
                        }
                      }
                    }

                    goto LABEL_79;
                  }

                  v41 = v48;
LABEL_65:
                  result = specialized inverseDiscreteFourierTransform<A, B, C>(input:size:output:)(v26, v40, &v55);
                  if (__OFADD__(v25, v41))
                  {
                    goto LABEL_77;
                  }

                  v25 += v41;
                  v24 = v50;
                  if (v50 != v49)
                  {
                    goto LABEL_26;
                  }

                  goto LABEL_76;
                }

                if (v28 == ++v29)
                {
                  goto LABEL_68;
                }
              }
            }

            else
            {
LABEL_68:
              __break(1u);
            }

            __break(1u);
LABEL_70:
            __break(1u);
LABEL_71:
            __break(1u);
LABEL_72:
            __break(1u);
LABEL_73:
            __break(1u);
LABEL_74:
            __break(1u);
          }

          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
          goto LABEL_80;
        }

LABEL_21:
        v19 = result;
        v18 = MEMORY[0x277D84F90];
        goto LABEL_22;
      }
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
      v6 = MEMORY[0x277D84F90];
      if (v3 <= *(MEMORY[0x277D84F90] + 16))
      {
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF7Field32VGMd, &_ss23_ContiguousArrayStorageCy4VDAF7Field32VGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_270C44540;
  *(v6 + 32) = *(v51 + 32);
  return v6;
}

{
  v55 = *(result + 16);
  v56 = result;
  if (!v55)
  {
    goto LABEL_93;
  }

  v3 = *(a2 + 16);
  if (!v3)
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v4 = v3 - 1;
  v5 = (v3 - 1) * (v55 - 1);
  if (((v3 - 1) * (v55 - 1)) >> 64 != v5 >> 63)
  {
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  result = v5 + 1;
  if (__OFADD__(v5, 1))
  {
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  result = specialized FixedWidthInteger.nextPowerOfTwo.getter(result);
  if (v55 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF7Field64VGMd, &_ss23_ContiguousArrayStorageCy4VDAF7Field64VGMR);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_270C44540;
    *(v7 + 32) = *(v56 + 32);
    return v7;
  }

  v6 = result;
  if (result < 0)
  {
    goto LABEL_97;
  }

  if (!result)
  {
    v8 = MEMORY[0x277D84F90];
    v7 = MEMORY[0x277D84F90];
    if (v3 <= *(MEMORY[0x277D84F90] + 16))
    {
      goto LABEL_9;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v7 + 16) = v6;
  bzero((v7 + 32), 8 * v6);
  v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v8 + 16) = v6;
  bzero((v8 + 32), 8 * v6);
  if (v3 > v6)
  {
    goto LABEL_20;
  }

LABEL_9:
  v9 = 0;
  if (v3 < 4)
  {
    goto LABEL_14;
  }

  if ((v8 - a2) <= 0x1F)
  {
    goto LABEL_14;
  }

  v9 = v3 & 0x7FFFFFFFFFFFFFFCLL;
  v10 = (a2 + 48);
  v11 = (v8 + 48);
  v12 = v3 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v13 = *v10;
    *(v11 - 1) = *(v10 - 1);
    *v11 = v13;
    v10 += 2;
    v11 += 2;
    v12 -= 4;
  }

  while (v12);
  if (v3 != v9)
  {
LABEL_14:
    v14 = v3 - v9;
    v15 = 8 * v9 + 32;
    v16 = (v8 + v15);
    v17 = (a2 + v15);
    do
    {
      v18 = *v17++;
      *v16++ = v18;
      --v14;
    }

    while (v14);
  }

  v59 = v8;
  if (v6)
  {
    v19 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v19 + 16) = v6;
    bzero((v19 + 32), 8 * v6);
    goto LABEL_22;
  }

LABEL_21:
  v19 = MEMORY[0x277D84F90];
LABEL_22:
  v58 = v19;
  specialized discreteFourierTransform<A, B, C>(input:size:output:)(a2, v6, &v58);
  v20 = v58;
  v21 = *(v56 + 32);
  v57 = v56 + 32;
  v22 = *(v7 + 16);

  if (!v22)
  {
LABEL_98:
    __break(1u);
    return result;
  }

  *(v7 + 32) = v21;
  v23 = 1;
  v24 = v3 - 1;
  v25 = v20;
  while (2)
  {
    if ((v24 & 0x8000000000000000) != 0)
    {
      goto LABEL_88;
    }

    v26 = *(v59 + 2);
    if (!v26)
    {
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
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
      goto LABEL_91;
    }

    v27 = 0;
    v28 = v23 + 1;
    v29 = *(v57 + 8 * v23);
    v30 = v59 + 32;
    v31 = (v7 + 32);
    while (1)
    {
      v32 = *&v30[8 * v27];
      v33 = (v32 * v29) >> 64;
      v34 = (0xFFFFFFFEFFFFFFFFLL * v32 * v29 * 0xFFFFFFFF00000001) >> 64;
      v35 = __CFADD__(-(v32 * v29), v32 * v29);
      v36 = v34 + v33;
      if (__CFADD__(v34, v33))
      {
        goto LABEL_34;
      }

      if (v36 == -1)
      {
        if (!v35)
        {
          if (v27 >= *(v7 + 16))
          {
            goto LABEL_82;
          }

          v41 = (v7 + 32 + 8 * v27);
          v40 = *v31;
          v43 = 0xFFFFFFFE00000003;
          goto LABEL_44;
        }

        v35 = 1;
LABEL_34:
        v37 = v35 + v36;
        v38 = v37 + 0xFFFFFFFF;
        if (v37 >= 0xFFFFFFFF00000001)
        {
          goto LABEL_84;
        }

        goto LABEL_40;
      }

      v39 = v36 + v35;
      v38 = v39 >= 0xFFFFFFFF00000001 ? v39 + 0xFFFFFFFF : v39;
LABEL_40:
      if (v27 >= *(v7 + 16))
      {
        goto LABEL_82;
      }

      v40 = *v31;
      v41 = v31;
      if (!v38)
      {
        goto LABEL_51;
      }

      v42 = v38 <= 0xFFFFFFFF00000001;
      v43 = 0xFFFFFFFF00000001 - v38;
      if (!v42)
      {
        goto LABEL_83;
      }

LABEL_44:
      if (v40 >= v43)
      {
        v40 -= v43;
      }

      else
      {
        v42 = v43 <= 0xFFFFFFFF00000001;
        v44 = 0xFFFFFFFF00000001 - v43;
        if (!v42)
        {
          goto LABEL_86;
        }

        v42 = __CFADD__(v40, v44);
        v40 += v44;
        if (v42)
        {
          goto LABEL_87;
        }
      }

LABEL_51:
      *v41 = v40;
      if (v24 == v27)
      {
        break;
      }

      ++v27;
      ++v31;
      if (v26 == v27)
      {
        goto LABEL_81;
      }
    }

    if (v23 != v55 - 1)
    {
      if (v6)
      {
        if (v6 <= *(v20 + 2))
        {
          if (v6 <= *(v25 + 16))
          {
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew()(v25);
              v25 = result;
            }

            v45 = 32;
            v46 = v6;
            while (1)
            {
              v50 = *(v25 + v45);
              v51 = *&v20[v45];
              v52 = (v50 * v51) >> 64;
              v53 = (0xFFFFFFFEFFFFFFFFLL * v50 * v51 * 0xFFFFFFFF00000001) >> 64;
              v47 = __CFADD__(-(v50 * v51), v50 * v51);
              v54 = v53 + v52;
              if (__CFADD__(v53, v52))
              {
                goto LABEL_66;
              }

              if (v54 == -1)
              {
                if (v47)
                {
                  v47 = 1;
LABEL_66:
                  v48 = v47 + v54;
                  v42 = __CFADD__(v48, 0xFFFFFFFFLL);
                  v49 = v48 + 0xFFFFFFFFLL;
                  if (v42)
                  {
                    goto LABEL_85;
                  }

                  goto LABEL_67;
                }

                v49 = 4294967294;
              }

              else
              {
                v49 = v54 + v47;
                if (v49 >= 0xFFFFFFFF00000001)
                {
                  v49 += 0xFFFFFFFFLL;
                }
              }

LABEL_67:
              *(v25 + v45) = v49;
              v45 += 8;
              if (!--v46)
              {
                goto LABEL_78;
              }
            }
          }

LABEL_92:
          __break(1u);
LABEL_93:
          __break(1u);
          goto LABEL_94;
        }

LABEL_91:
        __break(1u);
        goto LABEL_92;
      }

LABEL_78:
      result = specialized inverseDiscreteFourierTransform<A, B, C>(input:size:output:)(v25, v6, &v59);
      if (__OFADD__(v24, v4))
      {
        goto LABEL_90;
      }

      v24 += v4;
      v23 = v28;
      if (v28 == v55)
      {
        goto LABEL_89;
      }

      continue;
    }

    break;
  }

  return v7;
}

uint64_t _s4VDAF10PolynomialV1poiyACyxGAE_AEtFZAA7Field40V_Tt2B5@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = *(result + 16);
    v5 = result + 32;
    v6 = v4;
    do
    {
      if (v6 < 1)
      {
        if (!*(a2 + 16))
        {
          goto LABEL_88;
        }

        *a3 = a2;
LABEL_16:
      }
    }

    while (!*(result + 8 * v6-- + 24));
    v8 = *(a2 + 16);
    if (!v8)
    {
      goto LABEL_89;
    }

    v9 = *(a2 + 16);
    v10 = a2 + 32;
    v11 = v9;
    do
    {
      if (v11 < 1)
      {
        *a3 = result;
        goto LABEL_16;
      }
    }

    while (!*(a2 + 24 + 8 * v11--));
    v13 = *(result + 16);
    while (1)
    {
      v14 = v13;
      v15 = v13-- < 1;
      if (v15)
      {
        break;
      }

      if (*(result + 24 + 8 * v14))
      {
        goto LABEL_20;
      }
    }

    v13 = -1;
LABEL_20:
    v16 = *(a2 + 16);
    while (1)
    {
      v17 = v16;
      v15 = v16-- < 1;
      if (v15)
      {
        break;
      }

      if (*(a2 + 24 + 8 * v17))
      {
        goto LABEL_25;
      }
    }

    v16 = -1;
LABEL_25:
    if (v16 >= v13)
    {
      v18 = v13;
    }

    else
    {
      v18 = v16;
    }

    do
    {
      v19 = v4 - 1;
      if (v4 < 1)
      {
        v19 = -1;
        break;
      }
    }

    while (!*(result + 24 + 8 * v4--));
    while (1)
    {
      v21 = v9 - 1;
      if (v9 < 1)
      {
        break;
      }

      if (*(a2 + 24 + 8 * v9--))
      {
        goto LABEL_36;
      }
    }

    v21 = -1;
LABEL_36:
    v44 = v18;
    v45 = result;
    if (v21 <= v19)
    {
      v23 = v19;
    }

    else
    {
      v23 = v21;
    }

    if (v23 > 0x7FFFFFFFFFFFFFFELL)
    {
      v27 = MEMORY[0x277D84F90];
      if (v23 == -1)
      {
LABEL_44:
        if (v44 < 0)
        {
          goto LABEL_90;
        }

        v30 = 0;
        v31 = v27 + 4;
        v32 = (v14 & ~(v14 >> 63)) - 1;
        if (v32 >= (v17 & ~(v17 >> 63)) - 1)
        {
          v32 = (v17 & ~(v17 >> 63)) - 1;
        }

        do
        {
          if (v8 == v30)
          {
LABEL_80:
            __break(1u);
LABEL_81:
            __break(1u);
LABEL_82:
            __break(1u);
            goto LABEL_83;
          }

          v33 = *(v5 + 8 * v30);
          v34 = *(v10 + 8 * v30);
          if (v34)
          {
            v35 = v34 <= 0xFFFEB00001;
            v36 = 0xFFFEB00001 - v34;
            if (!v35)
            {
              goto LABEL_84;
            }

            if (v33 >= v36)
            {
              v33 -= v36;
            }

            else
            {
              v35 = v36 <= 0xFFFEB00001;
              v37 = 0xFFFEB00001 - v36;
              if (!v35)
              {
                goto LABEL_85;
              }

              v35 = __CFADD__(v33, v37);
              v33 += v37;
              if (v35)
              {
                goto LABEL_86;
              }
            }
          }

          if (v30 >= v27[2])
          {
            goto LABEL_81;
          }

          v31[v30] = v33;
          if (v32 == v30)
          {
            goto LABEL_62;
          }

          ++v30;
        }

        while (v3 != v30);
        __break(1u);
LABEL_62:
        v38 = 0;
        v39 = v44 + 1;
        v40 = v44 + 1 == v23;
        if (v44 + 1 >= v23)
        {
          goto LABEL_66;
        }

LABEL_63:
        v41 = v39 + 1;
        if (v3 < v8)
        {
LABEL_64:
          v42 = a2;
          if (v39 < v8)
          {
            goto LABEL_72;
          }

          goto LABEL_82;
        }

        while (1)
        {
          v42 = result;
          if (v39 >= v3)
          {
            break;
          }

LABEL_72:
          if ((v39 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_79:
            __break(1u);
            goto LABEL_80;
          }

          if (v39 >= v27[2])
          {
            goto LABEL_79;
          }

          v31[v39] = *(v42 + 8 * v39 + 32);
          v39 = v41;
          v40 = v41 == v23;
          if (v41 < v23)
          {
            goto LABEL_63;
          }

LABEL_66:
          v43 = !v40;
          if ((v43 | v38))
          {
            if (!v27[2])
            {
              goto LABEL_91;
            }

            *a3 = v27;
            return result;
          }

          v38 = 1;
          v41 = v23;
          if (v3 < v8)
          {
            goto LABEL_64;
          }
        }

LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }
    }

    else
    {
      v24 = a2;
      v25 = a3;
      v26 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      a2 = v24;
      a3 = v25;
      v27 = v26;
      result = v45;
      v27[2] = v23 + 1;
    }

    v27[4] = 0;
    if (v23)
    {
      v28 = a2;
      v29 = a3;
      bzero(v27 + 5, 8 * v23);
      result = v45;
      a2 = v28;
      a3 = v29;
    }

    goto LABEL_44;
  }

LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
  return result;
}