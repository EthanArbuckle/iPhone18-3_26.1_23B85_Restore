void sub_270B600A8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v40 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v5 = 0;
    v35 = a2;
    v36 = a1 + 32;
    v34 = v3;
    while (1)
    {
      v7 = (v36 + 40 * v5);
      v8 = *v7;
      if ((*v7 & 0x8000000000000000) != 0)
      {
        break;
      }

      v9 = a2[2];
      v10 = a2[3] >> 1;
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_51;
      }

      v11 = v7[2];
      v39 = *a2;
      if (v8)
      {
        v12 = v10 - v9 >= v8;
      }

      else
      {
        v12 = 1;
      }

      v13 = !v12;
      v14 = a2[3] >> 1;
      if (v12)
      {
        v14 = v9 + v8;
        if (__OFADD__(v9, v8))
        {
          goto LABEL_62;
        }
      }

      if (v14 < v9)
      {
        goto LABEL_52;
      }

      if (v10 < v9)
      {
        goto LABEL_53;
      }

      if (v10 < v14)
      {
        goto LABEL_54;
      }

      if (v14 < 0)
      {
        goto LABEL_55;
      }

      if ((v13 & 1) == 0)
      {
        v15 = __OFADD__(v9, v8);
        v16 = v9 + v8;
        if (v15)
        {
          goto LABEL_63;
        }

        if (v10 < v16)
        {
          goto LABEL_61;
        }

        v10 = v16;
      }

      if (v10 < v9)
      {
        goto LABEL_56;
      }

      v37 = a2[1];
      a2[2] = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF16GadgetWireInputsCyAA7Field64VGMd, &_s4VDAF16GadgetWireInputsCyAA7Field64VGMR);
      v17 = swift_allocObject();
      *(v17 + 16) = 0;
      v18 = v14 - v9;
      if (__OFSUB__(v14, v9))
      {
        goto LABEL_57;
      }

      v19 = v17;
      *(v17 + 24) = v11;
      v20 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_58;
      }

      if ((v20 & 0x8000000000000000) != 0)
      {
        goto LABEL_59;
      }

      v38 = v5;
      swift_unknownObjectRetain();
      if (v11 == -1)
      {
        v21 = MEMORY[0x277D84F90];
        if (v18 < 0)
        {
          goto LABEL_60;
        }
      }

      else
      {
        v21 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v21 + 16) = v20;
        bzero((v21 + 32), 8 * v11 + 8);
        if (v18 < 0)
        {
          goto LABEL_60;
        }
      }

      if (v18)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay4VDAF7Field64VGMd, &_sSay4VDAF7Field64VGMR);
        v22 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v23 = v22;
        *(v22 + 16) = v18;
        *(v22 + 32) = v21;
        if (v18 != 1)
        {
          v24 = ~v9 + v14;
          v25 = (v22 + 40);
          do
          {
            *v25++ = v21;

            --v24;
          }

          while (v24);
        }

        *(v19 + 32) = v23;
        v26 = (v19 + 32);
        swift_beginAccess();
        v27 = 0;
        v28 = v37 + 8 * v9;
        while (v18 != v27)
        {
          v29 = *(v28 + 8 * v27);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v26 = v23;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v23 = specialized _ArrayBuffer._consumeAndCreateNew()(v23);
            *v26 = v23;
          }

          if (v27 >= v23[2])
          {
            goto LABEL_49;
          }

          v31 = &v23[v27];
          v32 = v31[4];
          v33 = swift_isUniquelyReferenced_nonNull_native();
          v31[4] = v32;
          if (v33)
          {
            if (!*(v32 + 2))
            {
              goto LABEL_46;
            }
          }

          else
          {
            v32 = specialized _ArrayBuffer._consumeAndCreateNew()(v32);
            v31[4] = v32;
            if (!*(v32 + 2))
            {
LABEL_46:
              __break(1u);
              return;
            }
          }

          ++v27;
          *(v32 + 4) = v29;
          *v26 = v23;
          if (v18 == v27)
          {
            goto LABEL_4;
          }
        }

        __break(1u);
LABEL_49:
        __break(1u);
        break;
      }

      *(v19 + 32) = MEMORY[0x277D84F90];
LABEL_4:
      v5 = v38 + 1;
      swift_unknownObjectRelease();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v6 = *(v40 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      a2 = v35;
      if (v38 + 1 == v34)
      {
        return;
      }
    }

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
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
  }
}

uint64_t specialized Collection<>.encode<A>(into:)(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D85DE8];

  return specialized AggregateShare.encode<A>(into:)(a1, a2);
}

{
  v18[5] = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = (a2 + 32);
    v4 = lazy protocol witness table accessor for type Slice<UnsafeRawBufferPointer> and conformance <> Slice<A>();
    do
    {
      v5 = *v3++;
      v6 = (0xCFFE47FFFEAFFFFFLL * v5 * 0xFFFEB00001uLL) >> 64;
      if (__CFADD__(-v5, v5))
      {
        v7 = v6 + 1;
      }

      else
      {
        v7 = v6;
      }

      if (v7 >= 0xFFFEB00001)
      {
        v7 = 0;
      }

      v16 = v7;
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
      v18[3] = v8;
      v18[4] = v4;
      v9 = swift_allocObject();
      v18[0] = v9;
      *(v9 + 16) = xmmword_270C44560;
      *(v9 + 32) = &v16;
      *(v9 + 40) = v17;
      v10 = __swift_project_boxed_opaque_existential_1(v18, v8);
      v12 = MEMORY[0x28223BE20](v10, v11);
      v13 = v12[1];
      v17[0] = *v12;
      v17[1] = v13;
      Slice<>.withUnsafeBytes<A>(_:)();
      result = __swift_destroy_boxed_opaque_existential_1(v18);
      --v2;
    }

    while (v2);
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v21[5] = *MEMORY[0x277D85DE8];
  v17 = *(a2 + 16);
  if (v17)
  {
    v2 = 0;
    v16 = a2 + 32;
    do
    {
      v3 = *(v16 + 8 * v2);
      v4 = *(v3 + 16);
      if (!v4)
      {
        __break(1u);
      }

      v18 = v2 + 1;
      v5 = lazy protocol witness table accessor for type Slice<UnsafeRawBufferPointer> and conformance <> Slice<A>();

      v6 = 32;
      do
      {
        if (*(v3 + v6) + 4293918721u * (-1048577 * *(v3 + v6)) >= 0xFFF0000100000000)
        {
          v7 = 0;
        }

        else
        {
          v7 = (*(v3 + v6) + 4293918721u * (-1048577 * *(v3 + v6))) >> 32;
        }

        v19 = v7;
        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
        v21[3] = v8;
        v21[4] = v5;
        v9 = swift_allocObject();
        v21[0] = v9;
        *(v9 + 16) = xmmword_270C44570;
        *(v9 + 32) = &v19;
        *(v9 + 40) = v20;
        v10 = __swift_project_boxed_opaque_existential_1(v21, v8);
        v12 = MEMORY[0x28223BE20](v10, v11);
        v13 = v12[1];
        v20[0] = *v12;
        v20[1] = v13;
        Slice<>.withUnsafeBytes<A>(_:)();
        __swift_destroy_boxed_opaque_existential_1(v21);
        v6 += 4;
        --v4;
      }

      while (v4);

      v2 = v18;
    }

    while (v18 != v17);
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v18[5] = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = (a2 + 32);
    v4 = lazy protocol witness table accessor for type Slice<UnsafeRawBufferPointer> and conformance <> Slice<A>();
    do
    {
      v5 = *v3++;
      v6 = v5 + 0xFFF000FEFFFFFFFFLL * v5;
      if (v6 >= 0xFFF0000100000000)
      {
        v7 = 0;
      }

      else
      {
        v7 = HIDWORD(v6);
      }

      v16 = v7;
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
      v18[3] = v8;
      v18[4] = v4;
      v9 = swift_allocObject();
      v18[0] = v9;
      *(v9 + 16) = xmmword_270C44570;
      *(v9 + 32) = &v16;
      *(v9 + 40) = v17;
      v10 = __swift_project_boxed_opaque_existential_1(v18, v8);
      v12 = MEMORY[0x28223BE20](v10, v11);
      v13 = v12[1];
      v17[0] = *v12;
      v17[1] = v13;
      Slice<>.withUnsafeBytes<A>(_:)();
      result = __swift_destroy_boxed_opaque_existential_1(v18);
      --v2;
    }

    while (v2);
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = a2 + 32;
    do
    {
      v5 = *(v4 + 8 * v3);
      v6 = *(v5 + 16);
      if (!v6)
      {
        __break(1u);
      }

      ++v3;

      v7 = 32;
      do
      {
        if (*(v5 + v7) + 4293918721u * (-1048577 * *(v5 + v7)) >= 0xFFF0000100000000)
        {
          v8 = 0;
        }

        else
        {
          v8 = (*(v5 + v7) + 4293918721u * (-1048577 * *(v5 + v7))) >> 32;
        }

        v11 = v8;
        specialized Array.append<A>(contentsOf:)(0, 4uLL, &v11, &v12);
        v7 += 4;
        --v6;
      }

      while (v6);
    }

    while (v3 != v2);
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = (a2 + 32);
    do
    {
      v4 = *v3++;
      v5 = v4 + 0xFFF000FEFFFFFFFFLL * v4;
      if (v5 >= 0xFFF0000100000000)
      {
        v6 = 0;
      }

      else
      {
        v6 = HIDWORD(v5);
      }

      v9 = v6;
      result = specialized Array.append<A>(contentsOf:)(0, 4uLL, &v9, &v10);
      --v2;
    }

    while (v2);
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v17[5] = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = (a2 + 32);
    v4 = lazy protocol witness table accessor for type Slice<UnsafeRawBufferPointer> and conformance <> Slice<A>();
    do
    {
      v13 = *v3++;
      v5 = (0xFFFFFFFEFFFFFFFFLL * v13 * 0xFFFFFFFF00000001) >> 64;
      if (__CFADD__(-v13, v13))
      {
        if (v5 <= 0xFFFFFFFEFFFFFFFFLL)
        {
          ++v5;
        }

        else
        {
          v5 += 0x100000000;
        }
      }

      v15 = v5;
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
      v17[3] = v6;
      v17[4] = v4;
      v7 = swift_allocObject();
      v17[0] = v7;
      *(v7 + 16) = xmmword_270C44580;
      *(v7 + 32) = &v15;
      *(v7 + 40) = v16;
      v8 = __swift_project_boxed_opaque_existential_1(v17, v6);
      v10 = MEMORY[0x28223BE20](v8, v9);
      v11 = v10[1];
      v16[0] = *v10;
      v16[1] = v11;
      Slice<>.withUnsafeBytes<A>(_:)();
      result = __swift_destroy_boxed_opaque_existential_1(v17);
      --v2;
    }

    while (v2);
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = (a2 + 32);
    do
    {
      v4 = *v3++;
      v7 = v4;
      result = specialized Array.append<A>(contentsOf:)(0, 4uLL, &v7, &v8);
      --v2;
    }

    while (v2);
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_270B60478(unint64_t result)
{
  if ((result >> 62) <= 1)
  {
  }

  return result;
}

unint64_t outlined consume of GadgetEvaluation<A><A>(unint64_t result)
{
  if ((result >> 62) <= 1)
  {
  }

  return result;
}

uint64_t sub_270B604C8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = VerificationJointRandomness.seed.getter();
  *a2 = result;
  return result;
}

__n128 sub_270B6052C(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_270B60538@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = VerificationJointRandomness.xof.getter();
  *a2 = result;
  return result;
}

__n128 protocol witness for FieldElement.value.getter in conformance Field128@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

unint64_t _s4VDAF8_UInt128V5WordsVSkAASk5index_8offsetBy07limitedF05IndexQzSgAJ_SiAJtFTW_0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

void *sub_270B60600(void *result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v5 = 0;
    v6 = 0;
    goto LABEL_10;
  }

  if (!a3)
  {
    v5 = 0;
    goto LABEL_9;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    *a2 = a4;
    if (a3 == 1)
    {
      v5 = 1;
LABEL_9:
      v6 = a3;
      goto LABEL_10;
    }

    a2[1] = a5;
    v5 = 2;
    v6 = 2;
    if (a3 == 2)
    {
      goto LABEL_9;
    }

LABEL_10:
    *result = a4;
    result[1] = a5;
    result[2] = v5;
    return v6;
  }

  __break(1u);
  return result;
}

int8x16_t _s4VDAF8_UInt128Vs17FixedWidthIntegerAAsADP9bigEndianxvgTW_0@<Q0>(int8x16_t *a1@<X8>)
{
  v2 = vrev64q_s8(*v1);
  result = vextq_s8(v2, v2, 8uLL);
  *a1 = result;
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Field128()
{
  v1 = v0[1];
  MEMORY[0x2743B31A0](*v0);
  return MEMORY[0x2743B31A0](v1);
}

void *_s4VDAF8_UInt128V5WordsVSKAASK5index6before5IndexQzAI_tFTW_0@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result - 1;
  }

  return result;
}

void *_s4VDAF8_UInt128V5WordsVSKAASK9formIndex6beforey0E0Qzz_tFTW_0(void *result)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    --*result;
  }

  return result;
}

double _s4VDAF8_UInt128V5WordsVSlAASl7indices7IndicesQzvgTW_0@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_270C44F60;
  return result;
}

void *_s4VDAF8_UInt128V5WordsVSlAASl5index5after5IndexQzAI_tFTW_0@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *_s4VDAF8_UInt128V5WordsVSlAASl9formIndex5aftery0E0Qzz_tFTW_0(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

__n128 _s4VDAF8_UInt128V5WordsVSTAAST12makeIterator0E0QzyFTW_0@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = 0;
  return result;
}

uint64_t _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF8_UInt128V_s6UInt64VTt1g5@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = result;
  a2[1] = 0;
  return result;
}

unint64_t _s4VDAF8_UInt128Vs17FixedWidthIntegerAAsADP19leadingZeroBitCountSivgTW_0()
{
  v1 = v0[1];
  if (v1)
  {
    return __clz(v1);
  }

  else
  {
    return __clz(*v0) + 64;
  }
}

int8x16_t _s4VDAF8_UInt128Vs17FixedWidthIntegerAAsADP9bigEndianxx_tcfCTW_0@<Q0>(int8x16_t *a1@<X0>, int8x16_t *a2@<X8>)
{
  v2 = vrev64q_s8(*a1);
  result = vextq_s8(v2, v2, 8uLL);
  *a2 = result;
  return result;
}

__n128 _s4VDAF8_UInt128Vs17FixedWidthIntegerAAsADP12littleEndianxx_tcfCTW_0@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

unint64_t _s4VDAF8_UInt128VSzAASz20trailingZeroBitCountSivgTW_0()
{
  if (*v0)
  {
    return __clz(__rbit64(*v0));
  }

  else
  {
    return __clz(__rbit64(v0[1])) + 64;
  }
}

int8x16_t _s4VDAF8_UInt128VSzAASz1aoiyxx_xtFZTW_0@<Q0>(int8x16_t *a1@<X0>, int8x16_t *a2@<X1>, int8x16_t *a3@<X8>)
{
  result = vandq_s8(*a2, *a1);
  *a3 = result;
  return result;
}

int8x16_t _s4VDAF8_UInt128VSzAASz2aeoiyyxz_xtFZTW_0(int8x16_t *a1, int8x16_t *a2)
{
  result = vandq_s8(*a1, *a2);
  *a1 = result;
  return result;
}

int8x16_t _s4VDAF8_UInt128VSzAASz1ooiyxx_xtFZTW_0@<Q0>(int8x16_t *a1@<X0>, int8x16_t *a2@<X1>, int8x16_t *a3@<X8>)
{
  result = vorrq_s8(*a2, *a1);
  *a3 = result;
  return result;
}

int8x16_t _s4VDAF8_UInt128VSzAASz2oeoiyyxz_xtFZTW_0(int8x16_t *a1, int8x16_t *a2)
{
  result = vorrq_s8(*a1, *a2);
  *a1 = result;
  return result;
}

int8x16_t _s4VDAF8_UInt128VSzAASz1xoiyxx_xtFZTW_0@<Q0>(int8x16_t *a1@<X0>, int8x16_t *a2@<X1>, int8x16_t *a3@<X8>)
{
  result = veorq_s8(*a2, *a1);
  *a3 = result;
  return result;
}

int8x16_t _s4VDAF8_UInt128VSzAASz2xeoiyyxz_xtFZTW_0(int8x16_t *a1, int8x16_t *a2)
{
  result = veorq_s8(*a1, *a2);
  *a1 = result;
  return result;
}

int8x16_t sub_270B60988@<Q0>(int8x16_t *a1@<X0>, int8x16_t *a2@<X8>)
{
  result = vextq_s8(*a1, *a1, 8uLL);
  *a2 = result;
  return result;
}

int8x16_t sub_270B60998(int8x16_t *a1, int8x16_t *a2)
{
  result = vextq_s8(*a1, *a1, 8uLL);
  *a2 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Fraction(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Fraction(uint64_t result, int a2, int a3)
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

uint64_t sub_270B60A2C()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  return protocol witness for VDAFEncodable.encodedBytes.getter in conformance Int32();
}

uint64_t getEnumTagSinglePayload for PreambleSeedDecodableParameter(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PreambleSeedDecodableParameter(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

uint64_t _s4VDAF4PINEVyxq_q0_GAA9CollectorAAWI_0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_270B60BD0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t _s4VDAF12PreambleKWayVyxq_q0_GAA9CollectorAAWI_0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t _s4VDAF5Prio3Vyxq_GAA6ClientAAWI_0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t _s4VDAF24LeafCorrectionCalculatorV17UncorrectedValuesVMi_0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t _s4VDAF8PreambleVyxq_q0_GAA9CollectorAAWI_0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t _s4VDAF9VDAFErrorOWOy_0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 4u)
  {
  }

  return result;
}

uint64_t sub_270B60E50()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t _s4VDAF22SiblingLeafCorrectionsVMi_0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SeedCtrlUnadjustedError(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  return _s4VDAF17VDAFErrorProtocolPAAE2eeoiySbx_xtFZAA23SeedCtrlUnadjustedErrorO_Tt1g5();
}

uint64_t static Data.random(count:)(int64_t a1)
{
  v1 = _ss17FixedWidthIntegerP4VDAFE12randomVector5countSayxGSi_tFZs5UInt8V_Tt0g5(a1);
  v2 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(v1);

  return v2;
}

int64_t _ss17FixedWidthIntegerP4VDAFE12randomVector5countSayxGSi_tFZs5UInt8V_Tt0g5(int64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    v2 = MEMORY[0x277D84F90];
    if (result)
    {
      v7 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, result, 0);
      v2 = v7;
      do
      {
        v6 = 0;
        MEMORY[0x2743B35C0](&v6, 8);
        v3 = v6;
        v7 = v2;
        v5 = *(v2 + 16);
        v4 = *(v2 + 24);
        if (v5 >= v4 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1);
          v2 = v7;
        }

        *(v2 + 16) = v5 + 1;
        *(v2 + v5 + 32) = v3;
        --v1;
      }

      while (v1);
    }

    return v2;
  }

  return result;
}

uint64_t SeedCtrlUnadjusted.seedLeft.getter()
{
  v1 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v1;
}

uint64_t SeedCtrlUnadjusted.seedRight.getter()
{
  v1 = *(v0 + 16);
  outlined copy of Data._Representation(v1, *(v0 + 24));
  return v1;
}

double SeedCtrlUnadjusted.init(from:doubling:using:for:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, void *a6@<X5>, _OWORD *a7@<X8>)
{
  specialized SeedCtrlUnadjusted.init(from:doubling:using:for:)(a1, a2, a3, a4, a5, a6, v14);
  outlined consume of Data._Representation(a4, a5);
  outlined consume of Data._Representation(a1, a2);
  v12 = v14[1];
  *a7 = v14[0];
  a7[1] = v12;
  result = *&v15;
  a7[2] = v15;
  return result;
}

uint64_t specialized RandomAccessCollection<>.index(_:offsetBy:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v6)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < result || result < v8)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t static SeedCtrlUnadjusted.makePairList(from:using:for:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (v2 == v3)
  {
    v4 = MEMORY[0x28223BE20](a1, a2);
    v11[2] = v2;
    v11[3] = v5;
    v11[4] = v6;
    v11[5] = v7;
    return _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay10Foundation4DataVGAKG_4VDAF4PairVyAM18SeedCtrlUnadjustedVGs5NeverOTg5015_s10Foundation4g9VAC4VDAF4i6VyAD18jkl18VGIgggo_AC_ACtAIs5M11OIegnrzr_TRA2jRIgggo_Tf1cn_nTf4ng_n(v4, v8, partial apply for closure #1 in static SeedCtrlUnadjusted.makePairList(from:using:for:), v11);
  }

  else
  {
    lazy protocol witness table accessor for type SeedCtrlUnadjustedError and conformance SeedCtrlUnadjustedError();
    swift_allocError();
    *v10 = v2;
    *(v10 + 8) = v3;
    *(v10 + 16) = 0;
    return swift_willThrow();
  }
}

double closure #1 in static SeedCtrlUnadjusted.makePairList(from:using:for:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, void *a8@<X7>, _OWORD *a9@<X8>)
{
  outlined copy of Data._Representation(a1, a2);
  outlined copy of Data._Representation(a6, a7);

  specialized SeedCtrlUnadjusted.init(from:doubling:using:for:)(a1, a2, a5, a6, a7, a8, v22);
  outlined consume of Data._Representation(a6, a7);
  outlined consume of Data._Representation(a1, a2);
  outlined copy of Data._Representation(a6, a7);

  outlined copy of Data._Representation(a3, a4);
  specialized SeedCtrlUnadjusted.init(from:doubling:using:for:)(a3, a4, a5, a6, a7, a8, v23);
  outlined consume of Data._Representation(a6, a7);
  outlined consume of Data._Representation(a3, a4);
  v18 = v23[0];
  a9[2] = v22[2];
  a9[3] = v18;
  v19 = v23[2];
  a9[4] = v23[1];
  a9[5] = v19;
  result = *v22;
  v21 = v22[1];
  *a9 = v22[0];
  a9[1] = v21;
  return result;
}

uint64_t SeedCtrlUnadjusted.subscript.getter(char a1)
{
  v2 = 24;
  if ((a1 & 1) == 0)
  {
    v2 = 8;
  }

  v3 = 40;
  if ((a1 & 1) == 0)
  {
    v3 = 32;
  }

  v4 = *(v1 + 16 * (a1 & 1));
  v5 = *(v1 + v2);
  v6 = *(v1 + v3);
  outlined copy of Data._Representation(v4, v5);

  return v4;
}

uint64_t default argument 1 of FieldElement.init<A>(bytes:mask:)()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v0 = *(swift_getAssociatedConformanceWitness() + 8);
  return dispatch thunk of static FixedWidthInteger.max.getter();
}

uint64_t _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  v10 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A]();
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  closure #1 in Data.init<A>(_:)(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

uint64_t specialized Data.init(xofWith:using:for:byteCount:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, void *a5, size_t a6)
{
  v48 = *MEMORY[0x277D85DE8];
  v46 = a1;
  v47 = a2;
  outlined copy of Data._Representation(a1, a2);
  v8 = MEMORY[0x277CC9318];
  v9 = MEMORY[0x277CC9300];
  v10 = a2;
  v11 = a1;
  while (1)
  {
    v12 = v10 >> 62;
    if ((v10 >> 62) > 1)
    {
      if (v12 != 2)
      {
        goto LABEL_14;
      }

      v14 = *(v11 + 16);
      v13 = *(v11 + 24);
      v15 = __OFSUB__(v13, v14);
      v16 = v13 - v14;
      if (v15)
      {
        __break(1u);
LABEL_33:
        __break(1u);
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
      }

      if (v16 > 31)
      {
        break;
      }

      goto LABEL_14;
    }

    if (!v12)
    {
      if (BYTE6(v10) > 0x1FuLL)
      {
        break;
      }

      goto LABEL_14;
    }

    if (__OFSUB__(HIDWORD(v11), v11))
    {
      goto LABEL_33;
    }

    if (HIDWORD(v11) - v11 > 31)
    {
      break;
    }

LABEL_14:
    v44 = v8;
    v45 = v9;
    v42 = a1;
    v43 = a2;
    v17 = __swift_project_boxed_opaque_existential_1(&v42, v8);
    v18 = *v17;
    v19 = v17[1] >> 62;
    if (v19 > 1)
    {
      if (v19 != 2)
      {
LABEL_2:
        outlined copy of Data._Representation(a1, a2);
        goto LABEL_3;
      }

      v21 = *(v18 + 16);
      v20 = *(v18 + 24);
      outlined copy of Data._Representation(a1, a2);
      if (__DataStorage._bytes.getter() && __OFSUB__(v21, __DataStorage._offset.getter()))
      {
        goto LABEL_36;
      }

      if (__OFSUB__(v20, v21))
      {
        goto LABEL_35;
      }
    }

    else
    {
      if (!v19)
      {
        goto LABEL_2;
      }

      v22 = v18;
      if (v18 >> 32 < v18)
      {
        goto LABEL_34;
      }

      outlined copy of Data._Representation(a1, a2);
      if (__DataStorage._bytes.getter() && __OFSUB__(v22, __DataStorage._offset.getter()))
      {
        goto LABEL_37;
      }
    }

    MEMORY[0x2743B2250]();
LABEL_3:
    Data._Representation.append(contentsOf:)();
    __swift_destroy_boxed_opaque_existential_1(&v42);
    v11 = v46;
    v10 = v47;
  }

  outlined copy of Data._Representation(v11, v10);
  specialized Collection.prefix(_:)(32, v11, v10, &v42);
  v23 = v42;
  v24 = v43;
  outlined consume of Data._Representation(v11, v10);
  outlined copy of Data._Representation(v23, v24);
  v37 = v23;
  v25 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(v23, v24);
  outlined copy of Data._Representation(a3, a4);
  v26 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(a3, a4);
  v27 = _s4VDAF31BatchedExtendableOutputFunctionPAAE7makeXOF4seed19domainSeparationTag6binder10generatingxAA4SeedV_Says5UInt8VGAMSitFZAA19XofHmacSha256Aes128C_Tt3g5(v25, a5, v26, a6);

  v28 = *(v27 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream);
  if (!v28)
  {
    goto LABEL_39;
  }

  if ((a6 & 0x8000000000000000) != 0)
  {
    goto LABEL_38;
  }

  v29 = *(v27 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream);

  if (a6)
  {
    v30 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v30[1].i64[0] = a6;
    bzero(&v30[2], a6);
    v31 = a6;
  }

  else
  {
    v30 = MEMORY[0x277D84F90];
    v31 = *(MEMORY[0x277D84F90] + 16);
  }

  v32 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_key;
  v33 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_nonce;
  swift_beginAccess();
  specialized static AES.CTR.encryptInPlace(_:using:updating:)(v30 + 2, v30[2].i64 + v31, v28 + v32, v28 + v33);
  swift_endAccess();

  v34 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(v30);

  outlined consume of Data._Representation(a3, a4);
  outlined consume of Data._Representation(a1, a2);
  outlined consume of Data._Representation(v37, v24);
  v35 = *MEMORY[0x277D85DE8];
  return v34;
}

uint64_t outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t specialized SeedCtrlUnadjusted.init(from:doubling:using:for:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, void *a6@<X5>, void *a7@<X8>)
{
  v125 = *MEMORY[0x277D85DE8];
  v12 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v13 = 0;
    if (v12 != 2)
    {
      goto LABEL_10;
    }

    v15 = *(a1 + 16);
    v14 = *(a1 + 24);
    v13 = v14 - v15;
    if (!__OFSUB__(v14, v15))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v12)
  {
    v13 = BYTE6(a2);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_175:
    __break(1u);
    goto LABEL_176;
  }

  v13 = HIDWORD(a1) - a1;
LABEL_10:
  v16 = ceil(vcvtd_n_f64_s64(a3, 3uLL));
  if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_166:
    __break(1u);
    goto LABEL_167;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_167:
    __break(1u);
    goto LABEL_168;
  }

  if (v16 >= 9.22337204e18)
  {
LABEL_168:
    __break(1u);
    goto LABEL_169;
  }

  v17 = v13 + v16;
  if (__OFADD__(v13, v16))
  {
LABEL_169:
    __break(1u);
    goto LABEL_170;
  }

  if (v17 + 0x4000000000000000 < 0)
  {
LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
    goto LABEL_172;
  }

  v112 = a7;
  v18 = 2 * v17;
  outlined copy of Data._Representation(a1, a2);
  outlined copy of Data._Representation(a4, a5);
  v21 = specialized Data.init(xofWith:using:for:byteCount:)(a1, a2, a4, a5, a6, v18);
  v23 = v21;
  v24 = v22;
  v25 = v22 >> 62;
  v117 = v21;
  if ((v22 >> 62) > 1)
  {
    v26 = 0;
    if (v25 == 2)
    {
      v26 = *(v21 + 16);
    }
  }

  else if (v25)
  {
    v26 = v21;
  }

  else
  {
    v26 = 0;
  }

  if (specialized RandomAccessCollection<>.index(_:offsetBy:)(v26, v13, v21, v22) < v26)
  {
    goto LABEL_171;
  }

  v27 = Data._Representation.subscript.getter();
  v28 = MEMORY[0x277CC9318];
  v29 = MEMORY[0x277CC9300];
  v123 = MEMORY[0x277CC9318];
  v124 = MEMORY[0x277CC9300];
  v121 = v27;
  v122 = v30;
  v31 = __swift_project_boxed_opaque_existential_1(&v121, MEMORY[0x277CC9318]);
  v32 = *v31;
  v33 = v31[1];
  v34 = v33 >> 62;
  if ((v33 >> 62) > 1)
  {
    if (v34 != 2)
    {
      memset(v118, 0, 14);
      v35 = v118;
      goto LABEL_50;
    }

    v36 = *(v32 + 16);
    v37 = *(v32 + 24);
    v38 = __DataStorage._bytes.getter();
    if (v38)
    {
      v39 = __DataStorage._offset.getter();
      if (__OFSUB__(v36, v39))
      {
LABEL_179:
        __break(1u);
        goto LABEL_180;
      }

      v38 += v36 - v39;
    }

    v40 = __OFSUB__(v37, v36);
    v41 = v37 - v36;
    if (v40)
    {
      goto LABEL_177;
    }

    v42 = MEMORY[0x2743B2250]();
    if (v42 >= v41)
    {
      v43 = v41;
    }

    else
    {
      v43 = v42;
    }

    v44 = &v38[v43];
    if (v38)
    {
      v45 = v44;
    }

    else
    {
      v45 = 0;
    }

    closure #1 in Data.init<A>(_:)(v38, v45, &v119);
    v28 = MEMORY[0x277CC9318];
LABEL_48:
    v29 = MEMORY[0x277CC9300];
    goto LABEL_51;
  }

  if (v34)
  {
    v46 = v32;
    v47 = v32 >> 32;
    v48 = v47 - v46;
    if (v47 < v46)
    {
LABEL_176:
      __break(1u);
LABEL_177:
      __break(1u);
      goto LABEL_178;
    }

    v49 = __DataStorage._bytes.getter();
    if (v49)
    {
      v50 = __DataStorage._offset.getter();
      if (__OFSUB__(v46, v50))
      {
LABEL_180:
        __break(1u);
        goto LABEL_181;
      }

      v49 += v46 - v50;
    }

    v28 = MEMORY[0x277CC9318];
    v51 = MEMORY[0x2743B2250]();
    if (v51 >= v48)
    {
      v52 = v48;
    }

    else
    {
      v52 = v51;
    }

    v53 = &v49[v52];
    if (v49)
    {
      v54 = v53;
    }

    else
    {
      v54 = 0;
    }

    closure #1 in Data.init<A>(_:)(v49, v54, &v119);
    goto LABEL_48;
  }

  v118[0] = *v31;
  LOWORD(v118[1]) = v33;
  BYTE2(v118[1]) = BYTE2(v33);
  BYTE3(v118[1]) = BYTE3(v33);
  BYTE4(v118[1]) = BYTE4(v33);
  BYTE5(v118[1]) = BYTE5(v33);
  v35 = v118 + BYTE6(v33);
LABEL_50:
  closure #1 in Data.init<A>(_:)(v118, v35, &v119);
LABEL_51:
  v110 = v120;
  v111 = v119;
  __swift_destroy_boxed_opaque_existential_1(&v121);
  if (v25 > 1)
  {
    if (v25 == 2)
    {
      v55 = specialized RandomAccessCollection<>.index(_:offsetBy:)(*(v23 + 16), v13, v23, v24);
      v56 = *(v23 + 16);
      goto LABEL_57;
    }
  }

  else if (v25)
  {
    v55 = specialized RandomAccessCollection<>.index(_:offsetBy:)(v117, v13, v23, v24);
    v56 = v117;
    goto LABEL_57;
  }

  v55 = specialized RandomAccessCollection<>.index(_:offsetBy:)(0, v13, v23, v24);
  v56 = 0;
LABEL_57:
  if (v13 + 0x4000000000000000 < 0)
  {
LABEL_172:
    __break(1u);
    goto LABEL_173;
  }

  v114 = 2 * v13;
  if (specialized RandomAccessCollection<>.index(_:offsetBy:)(v56, 2 * v13, v23, v24) < v55)
  {
LABEL_173:
    __break(1u);
    goto LABEL_174;
  }

  v57 = Data._Representation.subscript.getter();
  v123 = v28;
  v124 = v29;
  v121 = v57;
  v122 = v58;
  v59 = __swift_project_boxed_opaque_existential_1(&v121, v28);
  v60 = *v59;
  v61 = v59[1];
  v62 = v61 >> 62;
  if ((v61 >> 62) > 1)
  {
    if (v62 != 2)
    {
      memset(v118, 0, 14);
      v64 = v118;
      v63 = v118;
      goto LABEL_81;
    }

    v65 = *(v60 + 16);
    v66 = *(v60 + 24);
    v67 = __DataStorage._bytes.getter();
    if (v67)
    {
      v68 = __DataStorage._offset.getter();
      v60 = v65 - v68;
      if (__OFSUB__(v65, v68))
      {
LABEL_181:
        __break(1u);
        goto LABEL_182;
      }

      v67 += v60;
    }

    v40 = __OFSUB__(v66, v65);
    v69 = v66 - v65;
    if (!v40)
    {
LABEL_73:
      v73 = MEMORY[0x2743B2250]();
      if (v73 >= v69)
      {
        v74 = v69;
      }

      else
      {
        v74 = v73;
      }

      v75 = (v74 + v67);
      if (v67)
      {
        v63 = v75;
      }

      else
      {
        v63 = 0;
      }

      v64 = v67;
      goto LABEL_81;
    }

    __break(1u);
LABEL_69:
    v70 = v60;
    v71 = v60 >> 32;
    v69 = v71 - v70;
    if (v71 < v70)
    {
LABEL_178:
      __break(1u);
      goto LABEL_179;
    }

    v67 = __DataStorage._bytes.getter();
    if (v67)
    {
      v72 = __DataStorage._offset.getter();
      if (__OFSUB__(v70, v72))
      {
LABEL_182:
        __break(1u);
LABEL_183:
        __break(1u);
LABEL_184:
        __break(1u);
LABEL_185:
        __break(1u);
LABEL_186:
        __break(1u);
LABEL_187:
        __break(1u);
      }

      v67 += v70 - v72;
    }

    goto LABEL_73;
  }

  if (v62)
  {
    goto LABEL_69;
  }

  v118[0] = *v59;
  LOWORD(v118[1]) = v61;
  BYTE2(v118[1]) = BYTE2(v61);
  BYTE3(v118[1]) = BYTE3(v61);
  BYTE4(v118[1]) = BYTE4(v61);
  BYTE5(v118[1]) = BYTE5(v61);
  v63 = v118 + BYTE6(v61);
  v64 = v118;
LABEL_81:
  closure #1 in Data.init<A>(_:)(v64, v63, &v119);
  v76 = v119;
  v77 = v120;
  __swift_destroy_boxed_opaque_existential_1(&v121);
  if ((a3 & 0x8000000000000000) != 0)
  {
LABEL_174:
    __break(1u);
    goto LABEL_175;
  }

  if (!a3)
  {
    v79 = MEMORY[0x277D84F90];
    v106 = MEMORY[0x277D84F90];
    goto LABEL_144;
  }

  v109 = v76;
  v78 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v78 + 16) = a3;
  v115 = v78;
  bzero((v78 + 32), a3);
  v79 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v79 + 16) = a3;
  bzero((v79 + 32), a3);
  v116 = v23 >> 32;
  v113 = -a3;
  v80 = 32;
  v81 = v117;
  do
  {
    v82 = v80 - 32;
    v83 = ((v80 - 32) >> 2) & 0x1FFFFFFFFFFFFFFELL;
    v84 = v114 + v83;
    if (__OFADD__(v114, v83))
    {
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);
LABEL_164:
      __break(1u);
LABEL_165:
      __break(1u);
      goto LABEL_166;
    }

    if (v25 > 1)
    {
      if (v25 != 2)
      {
        v86 = 0;
        v85 = 0;
        goto LABEL_94;
      }

      v85 = *(v23 + 16);
      v87 = v85 + v84;
      if (__OFADD__(v85, v84))
      {
        goto LABEL_165;
      }

      v86 = *(v23 + 24);
    }

    else
    {
      if (!v25)
      {
        v85 = 0;
        v86 = BYTE6(v24);
LABEL_94:
        v87 = v84;
        goto LABEL_95;
      }

      v87 = v81 + v84;
      if (__OFADD__(v81, v84))
      {
        goto LABEL_164;
      }

      v86 = v23 >> 32;
      v85 = v81;
    }

LABEL_95:
    if (v87 < v85 || v86 < v87)
    {
      goto LABEL_146;
    }

    if (v25 > 1)
    {
      if (v25 != 2)
      {
        goto LABEL_183;
      }

      if (v87 < *(v23 + 16))
      {
        goto LABEL_150;
      }

      if (v87 >= *(v23 + 24))
      {
        goto LABEL_153;
      }

      v90 = __DataStorage._bytes.getter();
      if (!v90)
      {
        goto LABEL_185;
      }

      v91 = v90;
      v92 = __DataStorage._offset.getter();
      v93 = v87 - v92;
      if (__OFSUB__(v87, v92))
      {
        goto LABEL_155;
      }

      goto LABEL_114;
    }

    if (v25)
    {
      if (v87 < v81 || v87 >= v116)
      {
        goto LABEL_152;
      }

      v94 = __DataStorage._bytes.getter();
      if (!v94)
      {
        goto LABEL_184;
      }

      v91 = v94;
      v95 = __DataStorage._offset.getter();
      v93 = v87 - v95;
      if (__OFSUB__(v87, v95))
      {
        goto LABEL_154;
      }

LABEL_114:
      v89 = *(v91 + v93);
      v81 = v117;
      goto LABEL_115;
    }

    if (v87 >= BYTE6(v24))
    {
      goto LABEL_151;
    }

    v121 = v23;
    LOWORD(v122) = v24;
    BYTE2(v122) = BYTE2(v24);
    BYTE3(v122) = BYTE3(v24);
    BYTE4(v122) = BYTE4(v24);
    BYTE5(v122) = BYTE5(v24);
    v89 = *(&v121 + v87);
LABEL_115:
    if (v82 >= *(v115 + 16))
    {
      goto LABEL_147;
    }

    v96 = v84 | 1;
    *(v115 + v80) = (v89 >> (v82 & 7)) & 1;
    if (v25)
    {
      if (v25 == 2)
      {
        v97 = *(v23 + 16);
        v40 = __OFADD__(v97, v96);
        v96 += v97;
        if (v40)
        {
          goto LABEL_157;
        }

        v98 = *(v23 + 24);
      }

      else
      {
        v40 = __OFADD__(v81, v96);
        v96 += v81;
        if (v40)
        {
          goto LABEL_156;
        }

        v98 = v23 >> 32;
        v97 = v81;
      }
    }

    else
    {
      v97 = 0;
      v98 = BYTE6(v24);
    }

    if (v96 < v97 || v98 < v96)
    {
      goto LABEL_148;
    }

    if (v25 == 2)
    {
      if (v96 < *(v23 + 16))
      {
        goto LABEL_159;
      }

      if (v96 >= *(v23 + 24))
      {
        goto LABEL_161;
      }

      v103 = __DataStorage._bytes.getter();
      if (!v103)
      {
        goto LABEL_187;
      }

      v100 = v103;
      v104 = __DataStorage._offset.getter();
      v102 = v96 - v104;
      if (__OFSUB__(v96, v104))
      {
        goto LABEL_163;
      }

      goto LABEL_137;
    }

    if (v25 == 1)
    {
      if (v96 < v81 || v96 >= v116)
      {
        goto LABEL_160;
      }

      v99 = __DataStorage._bytes.getter();
      if (!v99)
      {
        goto LABEL_186;
      }

      v100 = v99;
      v101 = __DataStorage._offset.getter();
      v102 = v96 - v101;
      if (__OFSUB__(v96, v101))
      {
        goto LABEL_162;
      }

LABEL_137:
      v105 = *(v100 + v102);
      v81 = v117;
      goto LABEL_140;
    }

    if (v96 >= BYTE6(v24))
    {
      goto LABEL_158;
    }

    v121 = v23;
    LOWORD(v122) = v24;
    BYTE2(v122) = BYTE2(v24);
    BYTE3(v122) = BYTE3(v24);
    BYTE4(v122) = BYTE4(v24);
    BYTE5(v122) = BYTE5(v24);
    v105 = *(&v121 + v96);
LABEL_140:
    if (v82 >= *(v79 + 16))
    {
      goto LABEL_149;
    }

    *(v79 + v80++) = (v105 >> (v82 & 7)) & 1;
  }

  while (v113 + v80 != 32);
  v76 = v109;
  v106 = v115;
LABEL_144:
  result = outlined consume of Data._Representation(v23, v24);
  *v112 = v111;
  v112[1] = v110;
  v112[2] = v76;
  v112[3] = v77;
  v112[4] = v106;
  v112[5] = v79;
  v108 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t lazy protocol witness table accessor for type SeedCtrlUnadjustedError and conformance SeedCtrlUnadjustedError()
{
  result = lazy protocol witness table cache variable for type SeedCtrlUnadjustedError and conformance SeedCtrlUnadjustedError;
  if (!lazy protocol witness table cache variable for type SeedCtrlUnadjustedError and conformance SeedCtrlUnadjustedError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SeedCtrlUnadjustedError and conformance SeedCtrlUnadjustedError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SeedCtrlUnadjustedError and conformance SeedCtrlUnadjustedError;
  if (!lazy protocol witness table cache variable for type SeedCtrlUnadjustedError and conformance SeedCtrlUnadjustedError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SeedCtrlUnadjustedError and conformance SeedCtrlUnadjustedError);
  }

  return result;
}

uint64_t _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay10Foundation4DataVGAKG_4VDAF4PairVyAM18SeedCtrlUnadjustedVGs5NeverOTg5015_s10Foundation4g9VAC4VDAF4i6VyAD18jkl18VGIgggo_AC_ACtAIs5M11OIegnrzr_TRA2jRIgggo_Tf1cn_nTf4ng_n(uint64_t a1, uint64_t a2, void (*a3)(_OWORD *__return_ptr, uint64_t, unint64_t, uint64_t, unint64_t), uint64_t a4)
{
  v49 = a4;
  v41 = *(a2 + 16);
  v42 = *(a1 + 16);
  if (v41 >= v42)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v46 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
  v39 = a2;
  v40 = a1;
  v43 = v6;
  if (v6)
  {

    v7 = (a1 + 40);
    v8 = (a2 + 40);
    while (1)
    {
      v9 = *(v7 - 1);
      v10 = *v7;
      v11 = *(v8 - 1);
      v12 = *v8;
      outlined copy of Data._Representation(v9, *v7);
      result = outlined copy of Data._Representation(v11, v12);
      if (v10 >> 60 == 15)
      {
        break;
      }

      a3(v48, v9, v10, v11, v12);
      outlined consume of Data._Representation(v9, v10);
      result = outlined consume of Data._Representation(v11, v12);
      v15 = *(v46 + 16);
      v14 = *(v46 + 24);
      if (v15 >= v14 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
      }

      v7 += 2;
      v8 += 2;
      *(v46 + 16) = v15 + 1;
      v16 = (v46 + 96 * v15);
      v17 = v48[1];
      v16[2] = v48[0];
      v16[3] = v17;
      v18 = v48[2];
      v19 = v48[3];
      v20 = v48[5];
      v16[6] = v48[4];
      v16[7] = v20;
      v16[4] = v18;
      v16[5] = v19;
      if (!--v6)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {

LABEL_12:
    v22 = v41;
    v21 = v42;
    if (v42 <= v41)
    {
LABEL_22:

      return v46;
    }

    v23 = v43;
    v24 = 16 * v43 + 40;
    v25 = (v39 + v24);
    v26 = (v40 + v24);
    while (v23 < v21)
    {
      v27 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        goto LABEL_24;
      }

      if (v22 == v23)
      {
        goto LABEL_22;
      }

      if (v23 >= v22)
      {
        goto LABEL_25;
      }

      if (__OFADD__(v23, 1))
      {
        goto LABEL_26;
      }

      v44 = v23;
      v28 = *(v26 - 1);
      v29 = *v26;
      v31 = *(v25 - 1);
      v30 = *v25;
      outlined copy of Data._Representation(v28, *v26);
      outlined copy of Data._Representation(v31, v30);
      a3(v47, v28, v29, v31, v30);
      outlined consume of Data._Representation(v28, v29);
      result = outlined consume of Data._Representation(v31, v30);
      v33 = *(v46 + 16);
      v32 = *(v46 + 24);
      if (v33 >= v32 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1);
      }

      *(v46 + 16) = v33 + 1;
      v34 = (v46 + 96 * v33);
      v35 = v47[1];
      v34[2] = v47[0];
      v34[3] = v35;
      v36 = v47[2];
      v37 = v47[3];
      v38 = v47[5];
      v34[6] = v47[4];
      v34[7] = v38;
      v34[4] = v36;
      v34[5] = v37;
      v21 = v42;
      v23 = v44 + 1;
      v25 += 2;
      v26 += 2;
      v22 = v41;
      if (v27 == v42)
      {
        goto LABEL_22;
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

unint64_t instantiation function for generic protocol witness table for SeedCtrlUnadjustedError(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type SeedCtrlUnadjustedError and conformance SeedCtrlUnadjustedError();
  result = lazy protocol witness table accessor for type SeedCtrlUnadjustedError and conformance SeedCtrlUnadjustedError();
  *(a1 + 16) = result;
  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SeedCtrlUnadjustedError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SeedCtrlUnadjustedError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 1;
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

  *(result + 17) = v3;
  return result;
}

uint64_t getEnumTag for SeedCtrlUnadjustedError(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for SeedCtrlUnadjustedError(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
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

uint64_t getEnumTagSinglePayload for SeedCtrlUnadjusted(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SeedCtrlUnadjusted(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SeedCtrlUnadjusted.UnadjustedOneSide(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SeedCtrlUnadjusted.UnadjustedOneSide(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for os_unfair_lock_s(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for os_unfair_lock_s(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!lazy cache variable for type metadata for os_unfair_lock_s)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for os_unfair_lock_s);
    }
  }
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
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

unint64_t lazy protocol witness table accessor for type [UInt8] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A]);
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

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance InnerCorrectionError(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  return _s4VDAF17VDAFErrorProtocolPAAE2eeoiySbx_xtFZAA20InnerCorrectionErrorO_Tt1g5();
}

void InnerCorrectionCalculator.numNonZeroPaths.getter()
{
  type metadata accessor for LeafParent();

  JUMPOUT(0x2743B2830);
}

uint64_t InnerCorrectionCalculator.generate(at:with:using:)@<X0>(Swift::Int a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, char **a12)
{
  result = InnerCorrectionCalculator.calculate(at:withParty0:andParty1:using:)(a1, a2, a3, a6, a7, a8, a10, a11, a12);
  if (!v12)
  {
    v21 = v18;
    v22 = v19;
    v23 = InnerCorrectionCalculator.makeNextLevelInput(forCurrentLevel:from:using:and:)(a1, result, v18, v19, a4, a5, a8, v20, a11, a12);
    v25 = v24;
    v27 = v26;
    v29 = v28;

    *a9 = v21;
    a9[1] = v22;
    a9[2] = v23;
    a9[3] = v25;
    a9[4] = v27;
    a9[5] = v29;
  }

  return result;
}

uint64_t InnerCorrectionCalculator.calculate(at:withParty0:andParty1:using:)(Swift::Int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, char **a9)
{
  v197 = a1;
  v216 = *MEMORY[0x277D85DE8];
  v10 = *(a2 + 16);
  v11 = *(a3 + 16);
  if (v10 != v11 || (v203 = a9, v204 = a2, v190 = v10, v194 = type metadata accessor for LeafParent(), v15 = MEMORY[0x2743B2830](a6), v10 = v190, v190 != v15))
  {
    v180 = v10;
    v181 = type metadata accessor for LeafParent();
    v182 = MEMORY[0x2743B2830](a6, v181);
    lazy protocol witness table accessor for type InnerCorrectionError and conformance InnerCorrectionError();
    swift_allocError();
    *v183 = v180;
    v183[1] = v11;
    v183[2] = v182;
    swift_willThrow();
    goto LABEL_140;
  }

  MEMORY[0x28223BE20](v15, v16);
  v186[2] = v17;
  v186[3] = a4;
  v186[4] = v18;
  v186[5] = a7;
  v20 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay10Foundation4DataVGAKG_4VDAF4PairVyAM18SeedCtrlUnadjustedVGs5NeverOTg5015_s10Foundation4g9VAC4VDAF4i6VyAD18jkl18VGIgggo_AC_ACtAIs5M11OIegnrzr_TRA2jRIgggo_Tf1cn_nTf4ng_n(v19, a3, partial apply for closure #1 in static SeedCtrlUnadjusted.makePairList(from:using:for:), v186);
  v206 = MEMORY[0x277D84FA0];
  v21 = MEMORY[0x277D84F90];
  v205 = MEMORY[0x277D84F90];
  v191._rawValue = a6;
  v207 = a6;
  v186[6] = type metadata accessor for LeafParent();
  v22 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x2743B26D0](&v208, v22, WitnessTable);
  v207 = v208;
  type metadata accessor for EnumeratedSequence();
  EnumeratedSequence.makeIterator()();
  v188 = type metadata accessor for EnumeratedSequence.Iterator();
  EnumeratedSequence.Iterator.next()();
  v192 = v20;
  v198 = *(&v208 + 1);
  if (!*(&v208 + 1))
  {
    v193 = v21;
LABEL_142:

    goto LABEL_140;
  }

  v189 = v20 + 32;
  v24 = v208;
  v187 = v204 + 32;
  v25 = v21;
  v193 = v21;
  rawValue = v191._rawValue;
  while (1)
  {
    v199 = v25;
    v200 = v24;
    v27 = MEMORY[0x2743B2830](rawValue, v194);
    type metadata accessor for BitMasks();
    v28 = swift_allocObject();
    if ((v27 & 0x8000000000000000) != 0)
    {
      goto LABEL_167;
    }

    v29 = v28;
    if (v27)
    {
      v30 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v30 + 16) = v27;
      bzero((v30 + 32), v27);
      *(v29 + 16) = v30;
      v203 = (v29 + 16);
      v31 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v31 + 16) = v27;
      bzero((v31 + 32), v27);
    }

    else
    {
      *(v28 + 16) = v21;
      v203 = (v28 + 16);
      v31 = v21;
    }

    *(v29 + 24) = v31;
    v32 = LeafParent.prefix(leadingToLevel:)(v197);
    if (v33)
    {
LABEL_143:

      goto LABEL_140;
    }

    v34 = v32;
    v35 = specialized Set.contains(_:)(v32, v206);
    v204 = v29;
    v195 = 0;
    if (!v35)
    {
      break;
    }

    if (v200 >= v190)
    {
      goto LABEL_168;
    }

    v36 = (v187 + 16 * v200);
    v37 = *v36;
    v38 = v36[1];
    v39 = v38 >> 62;
    if ((v38 >> 62) > 1)
    {
      v40 = v193;
      if (v39 == 2)
      {
        v99 = v37 + 16;
        v97 = *(v37 + 16);
        v98 = *(v99 + 8);
        v41 = v98 - v97;
        if (__OFSUB__(v98, v97))
        {
          goto LABEL_184;
        }
      }

      else
      {
        v41 = 0;
      }
    }

    else
    {
      v40 = v193;
      if (v39)
      {
        v106 = __OFSUB__(HIDWORD(v37), v37);
        v107 = HIDWORD(v37) - v37;
        if (v106)
        {
          goto LABEL_183;
        }

        v41 = v107;
      }

      else
      {
        v41 = BYTE6(v38);
      }
    }

    v108 = _ss17FixedWidthIntegerP4VDAFE12randomVector5countSayxGSi_tFZs5UInt8V_Tt0g5(v41);
    v109 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(v108);
    v111 = v110;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v40 + 2) + 1, 1, v40);
    }

    v113 = *(v40 + 2);
    v112 = *(v40 + 3);
    if (v113 >= v112 >> 1)
    {
      v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v112 > 1), v113 + 1, 1, v40);
    }

    *(v40 + 2) = v113 + 1;
    v114 = &v40[16 * v113];
    *(v114 + 4) = v109;
    *(v114 + 5) = v111;
    v115 = ceil(vcvtd_n_f64_s64(MEMORY[0x2743B2830](rawValue, v194), 3uLL));
    if ((*&v115 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_170;
    }

    if (v115 <= -9.22337204e18)
    {
      goto LABEL_171;
    }

    if (v115 >= 9.22337204e18)
    {
      goto LABEL_172;
    }

    if (v115 + 0x4000000000000000 < 0)
    {
      goto LABEL_173;
    }

    v116 = _ss17FixedWidthIntegerP4VDAFE12randomVector5countSayxGSi_tFZs5UInt8V_Tt0g5(2 * v115);
    v202 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(v116);
    v118 = v117;

    v119 = MEMORY[0x2743B2830](rawValue, v194);
    if (v119 < 0)
    {
      goto LABEL_174;
    }

    v120 = v119;
    v193 = v40;
    v121 = v202;
    if (v120)
    {
      v122 = v118 >> 62;
      v199 = v202 >> 32;
      v200 = v202;
      v123 = 32;
      v196 = BYTE6(v118);
      v201 = v118 >> 62;
      while (1)
      {
        v124 = v123 - 32;
        v125 = (v123 - 32) >> 2;
        v126 = v125 & 0x1FFFFFFFFFFFFFFELL;
        v127 = v125 | 1;
        if (v122 > 1)
        {
          break;
        }

        if (v122)
        {
          if (v126 < v200 || v126 >= v199)
          {
            goto LABEL_157;
          }

          v138 = __DataStorage._bytes.getter();
          if (!v138)
          {
            goto LABEL_188;
          }

          v139 = v138;
          v140 = __DataStorage._offset.getter();
          if (__OFSUB__(v126, v140))
          {
            goto LABEL_160;
          }

          if (v127 < v200 || v127 >= v199)
          {
            goto LABEL_162;
          }

          v128 = *(v139 + v126 - v140);
          v141 = __DataStorage._bytes.getter();
          if (!v141)
          {
            goto LABEL_190;
          }

          v134 = v141;
          v142 = __DataStorage._offset.getter();
          v136 = v127 - v142;
          if (__OFSUB__(v127, v142))
          {
            goto LABEL_164;
          }

LABEL_108:
          v129 = *(v134 + v136);
          goto LABEL_109;
        }

        if (v126 >= v196)
        {
          goto LABEL_155;
        }

        *&v208 = v121;
        WORD4(v208) = v118;
        BYTE10(v208) = BYTE2(v118);
        BYTE11(v208) = BYTE3(v118);
        BYTE12(v208) = BYTE4(v118);
        BYTE13(v208) = BYTE5(v118);
        if (v127 >= v196)
        {
          goto LABEL_159;
        }

        v128 = *(&v208 + v126);
        BYTE1(v208) = BYTE1(v121);
        BYTE2(v208) = BYTE2(v121);
        BYTE3(v208) = BYTE3(v121);
        BYTE4(v208) = BYTE4(v121);
        BYTE5(v208) = BYTE5(v121);
        BYTE6(v208) = BYTE6(v121);
        BYTE7(v208) = HIBYTE(v121);
        WORD4(v208) = v118;
        BYTE10(v208) = BYTE2(v118);
        BYTE11(v208) = BYTE3(v118);
        BYTE12(v208) = BYTE4(v118);
        BYTE13(v208) = BYTE5(v118);
        v129 = *(&v208 + v127);
LABEL_109:
        v143 = v203;
        v144 = *v203;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v143 = v144;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v144 = specialized _ArrayBuffer._consumeAndCreateNew()(v144);
        }

        if (v124 >= *(v144 + 2))
        {
          goto LABEL_148;
        }

        v144[v123] = (v128 >> (v124 & 7)) & 1;
        v146 = v204;
        *(v204 + 16) = v144;
        v147 = *(v146 + 24);
        v148 = swift_isUniquelyReferenced_nonNull_native();
        *(v146 + 24) = v147;
        if ((v148 & 1) == 0)
        {
          v147 = specialized _ArrayBuffer._consumeAndCreateNew()(v147);
        }

        if (v124 >= *(v147 + 2))
        {
          goto LABEL_149;
        }

        v147[v123] = (v129 >> (v124 & 7)) & 1;
        *(v204 + 24) = v147;
        ++v123;
        --v120;
        LODWORD(v122) = v201;
        v121 = v202;
        if (!v120)
        {
          goto LABEL_116;
        }
      }

      if (v122 != 2)
      {
        goto LABEL_187;
      }

      if (v126 < *(v121 + 16))
      {
        goto LABEL_156;
      }

      if (v126 >= *(v121 + 24))
      {
        goto LABEL_158;
      }

      v130 = __DataStorage._bytes.getter();
      if (!v130)
      {
        goto LABEL_189;
      }

      v131 = v130;
      v132 = __DataStorage._offset.getter();
      if (__OFSUB__(v126, v132))
      {
        goto LABEL_161;
      }

      if (v127 < *(v202 + 16))
      {
        goto LABEL_163;
      }

      if (v127 >= *(v202 + 24))
      {
        goto LABEL_165;
      }

      v128 = *(v131 + v126 - v132);
      v133 = __DataStorage._bytes.getter();
      if (!v133)
      {
        goto LABEL_191;
      }

      v134 = v133;
      v135 = __DataStorage._offset.getter();
      v136 = v127 - v135;
      if (__OFSUB__(v127, v135))
      {
        goto LABEL_166;
      }

      goto LABEL_108;
    }

LABEL_116:
    outlined consume of Data._Representation(v121, v118);
    rawValue = v191._rawValue;
    v21 = MEMORY[0x277D84F90];
LABEL_135:

    MEMORY[0x2743B2760](v178);
    if (*((v205 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v205 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v179 = *((v205 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v25 = v205;
    EnumeratedSequence.Iterator.next()();
    v198 = *(&v208 + 1);
    v24 = v208;
    if (!*(&v208 + 1))
    {
      goto LABEL_142;
    }
  }

  specialized Set._Variant.insert(_:)(&v208, v34);
  v42 = MEMORY[0x2743B2830](rawValue, v194);
  if (v42 < 0)
  {
    goto LABEL_169;
  }

  if (v42)
  {
    if ((v200 & 0x8000000000000000) == 0)
    {
      if (v200 >= *(v192 + 16))
      {
        goto LABEL_178;
      }

      v43 = (v189 + 96 * v200);
      v44 = v43[4];
      v45 = v43[5];
      v46 = v43[3];
      v210 = v43[2];
      v47 = *v43;
      v48 = v43[1];
      v212 = v44;
      v213 = v45;
      v211 = v46;
      v208 = v47;
      v209 = v48;
      v49 = v210;
      if (*(v210 + 16))
      {
        v201 = 1 - v42;
        v50 = 32;
        v51 = *(&v210 + 1);
        v52 = *(&v213 + 1);
        v53 = v213;
        while (1)
        {
          v54 = v50 - 32;
          if ((v50 - 32) >= *(v53 + 16))
          {
            break;
          }

          if (v54 >= *(v51 + 16))
          {
            goto LABEL_151;
          }

          if (v54 >= *(v52 + 16))
          {
            goto LABEL_152;
          }

          v55 = *(v49 + v50);
          v56 = *(v53 + v50);
          LODWORD(v202) = *(v51 + v50);
          v57 = *(v52 + v50);
          v58 = v203;
          v59 = *v203;
          outlined init with copy of Pair<SeedCtrlUnadjusted>(&v208, &v207);
          v60 = swift_isUniquelyReferenced_nonNull_native();
          *v58 = v59;
          if ((v60 & 1) == 0)
          {
            v59 = specialized _ArrayBuffer._consumeAndCreateNew()(v59);
          }

          if (v54 >= *(v59 + 2))
          {
            goto LABEL_153;
          }

          v59[v50] = (v55 ^ v56) & 1;
          v61 = v204;
          *(v204 + 16) = v59;
          v62 = *(v61 + 24);
          v63 = swift_isUniquelyReferenced_nonNull_native();
          *(v61 + 24) = v62;
          if ((v63 & 1) == 0)
          {
            v62 = specialized _ArrayBuffer._consumeAndCreateNew()(v62);
          }

          if (v54 >= *(v62 + 2))
          {
            goto LABEL_154;
          }

          v64 = v201 + v50;
          v62[v50] = (v202 ^ v57) & 1;
          *(v61 + 24) = v62;
          outlined destroy of Pair<SeedCtrlUnadjusted>(&v208);
          v21 = MEMORY[0x277D84F90];
          if (v64 == 32)
          {
            goto LABEL_33;
          }

          v66 = v43[2];
          v65 = v43[3];
          v67 = v43[4];
          v213 = v43[5];
          v210 = v66;
          v68 = *v43;
          v69 = v43[1];
          v211 = v65;
          v212 = v67;
          v208 = v68;
          v209 = v69;
          v52 = *(&v213 + 1);
          v53 = v213;
          v51 = *(&v210 + 1);
          v49 = v210;
          v70 = v50 - 31;
          ++v50;
          if (v70 >= *(v210 + 16))
          {
            goto LABEL_147;
          }
        }
      }

      else
      {
LABEL_147:
        __break(1u);
LABEL_148:
        __break(1u);
LABEL_149:
        __break(1u);
      }

      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);
LABEL_164:
      __break(1u);
LABEL_165:
      __break(1u);
LABEL_166:
      __break(1u);
LABEL_167:
      __break(1u);
LABEL_168:
      __break(1u);
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
      __break(1u);
LABEL_175:
      __break(1u);
LABEL_176:
      __break(1u);
    }

    __break(1u);
LABEL_178:
    __break(1u);
LABEL_179:
    __break(1u);
LABEL_180:
    __break(1u);
LABEL_181:
    __break(1u);
LABEL_182:
    __break(1u);
LABEL_183:
    __break(1u);
LABEL_184:
    __break(1u);
LABEL_185:
    __break(1u);
LABEL_186:
    __break(1u);
LABEL_187:
    __break(1u);
LABEL_188:
    __break(1u);
LABEL_189:
    __break(1u);
LABEL_190:
    __break(1u);
LABEL_191:
    __break(1u);
  }

LABEL_33:
  v217 = LeafParent.firstDiverge(fromAnyOf:at:)(v191, v197);
  if (v71)
  {
    goto LABEL_143;
  }

  if (!v217.is_nil)
  {
    if (v200 >= v190)
    {
      goto LABEL_179;
    }

    value = v217.value;
    v101 = (v187 + 16 * v200);
    v102 = *v101;
    v103 = v101[1];
    v104 = v103 >> 62;
    if ((v103 >> 62) > 1)
    {
      if (v104 == 2)
      {
        v151 = v102 + 16;
        v149 = *(v102 + 16);
        v150 = *(v151 + 8);
        v105 = v150 - v149;
        if (__OFSUB__(v150, v149))
        {
          goto LABEL_186;
        }
      }

      else
      {
        v105 = 0;
      }
    }

    else if (v104)
    {
      v106 = __OFSUB__(HIDWORD(v102), v102);
      v152 = HIDWORD(v102) - v102;
      if (v106)
      {
        goto LABEL_185;
      }

      v105 = v152;
    }

    else
    {
      v105 = BYTE6(v103);
    }

    v153 = _ss17FixedWidthIntegerP4VDAFE12randomVector5countSayxGSi_tFZs5UInt8V_Tt0g5(v105);
    v154 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(v153);
    v156 = v155;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v193 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v193 + 2) + 1, 1, v193);
    }

    v158 = *(v193 + 2);
    v157 = *(v193 + 3);
    if (v158 >= v157 >> 1)
    {
      v193 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v157 > 1), v158 + 1, 1, v193);
    }

    v159 = v193;
    *(v193 + 2) = v158 + 1;
    v160 = &v159[16 * v158];
    *(v160 + 4) = v154;
    *(v160 + 5) = v156;
    rawValue = v191._rawValue;
    Array.subscript.getter();
    v161 = LeafParent.bit(atLevel:)(v197);
    v195 = v162;
    if (v162)
    {

      goto LABEL_146;
    }

    v163 = v161;

    if (v200 >= *(v192 + 16))
    {
      goto LABEL_182;
    }

    v164 = (v189 + 96 * v200);
    v165 = v164[1];
    v215[0] = *v164;
    v215[1] = v165;
    v166 = v164[2];
    v167 = v164[3];
    v168 = v164[5];
    v215[4] = v164[4];
    v215[5] = v168;
    v215[2] = v166;
    v215[3] = v167;
    outlined init with copy of Pair<SeedCtrlUnadjusted>(v215, &v208);
    BitMasks.enableSeedCorrection(between:forPath:withOnPathBit:)(v215, value, v163);
    outlined destroy of Pair<SeedCtrlUnadjusted>(v215);
    goto LABEL_131;
  }

  v72 = LeafParent.bit(atLevel:)(v197);
  if (v73)
  {
    goto LABEL_143;
  }

  if ((v200 & 0x8000000000000000) != 0)
  {
    goto LABEL_180;
  }

  v195 = 0;
  if (v200 >= *(v192 + 16))
  {
    goto LABEL_181;
  }

  v74 = v189 + 96 * v200;
  v75 = 16;
  if (v72)
  {
    v75 = 0;
  }

  v76 = 24;
  if (v72)
  {
    v76 = 8;
  }

  v77 = 32;
  if (!v72)
  {
    v77 = 40;
  }

  v78 = *(v74 + v77);
  v79 = *(v74 + v76);
  v80 = *(v74 + v75);
  if (v72)
  {
    v81 = 48;
  }

  else
  {
    v81 = 64;
  }

  if (v72)
  {
    v82 = 56;
  }

  else
  {
    v82 = 72;
  }

  if (v72)
  {
    v83 = 80;
  }

  else
  {
    v83 = 88;
  }

  outlined copy of Data._Representation(v80, v79);

  outlined copy of Data._Representation(v80, v79);
  outlined consume of Data._Representation(v80, v79);

  v84 = *(v74 + v83);
  v85 = *(v74 + v82);
  v86 = *(v74 + v81);
  outlined copy of Data._Representation(v86, v85);

  outlined copy of Data._Representation(v86, v85);
  outlined consume of Data._Representation(v86, v85);

  v87 = v195;
  v88 = Data.xor(_:)(v86, v85, v80, v79);
  v195 = v87;
  if (!v87)
  {
    v90 = v88;
    v91 = v89;
    v92 = swift_isUniquelyReferenced_nonNull_native();
    v203 = v90;
    if ((v92 & 1) == 0)
    {
      v193 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v193 + 2) + 1, 1, v193);
    }

    v94 = *(v193 + 2);
    v93 = *(v193 + 3);
    if (v94 >= v93 >> 1)
    {
      v193 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v93 > 1), v94 + 1, 1, v193);
    }

    outlined consume of Data._Representation(v86, v85);
    outlined consume of Data._Representation(v80, v79);
    v95 = v193;
    *(v193 + 2) = v94 + 1;
    v96 = &v95[16 * v94];
    *(v96 + 4) = v203;
    *(v96 + 5) = v91;
    rawValue = v191._rawValue;
    v21 = MEMORY[0x277D84F90];
LABEL_131:
    v169 = LeafParent.bit(atLevel:)(v197);
    if (v170)
    {
      goto LABEL_143;
    }

    v171 = v200;
    if ((v200 & 0x8000000000000000) != 0)
    {
      goto LABEL_175;
    }

    if (v200 >= *(v192 + 16))
    {
      goto LABEL_176;
    }

    v172 = v169;
    v173 = (v189 + 96 * v200);
    v174 = v173[1];
    v214[0] = *v173;
    v214[1] = v174;
    v175 = v173[2];
    v176 = v173[3];
    v177 = v173[5];
    v214[4] = v173[4];
    v214[5] = v177;
    v214[2] = v175;
    v214[3] = v176;
    outlined init with copy of Pair<SeedCtrlUnadjusted>(v214, &v208);
    BitMasks.enableSeedCorrection(between:forPath:withOnPathBit:)(v214, v171, v172);
    outlined destroy of Pair<SeedCtrlUnadjusted>(v214);
    goto LABEL_135;
  }

  outlined consume of Data._Representation(v86, v85);
  outlined consume of Data._Representation(v80, v79);

LABEL_146:

LABEL_140:
  v184 = *MEMORY[0x277D85DE8];
  return v192;
}

char *InnerCorrectionCalculator.makeNextLevelInput(forCurrentLevel:from:using:and:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v26[2] = a7;
  v23 = a9;
  v24 = a10;
  v25 = a1;
  type metadata accessor for LeafParent();
  v15 = type metadata accessor for Array();

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  WitnessTable = swift_getWitnessTable();
  v18 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in InnerCorrectionCalculator.makeNextLevelInput(forCurrentLevel:from:using:and:), v22, v15, &type metadata for Side, v16, WitnessTable, MEMORY[0x277D84950], v26);
  v19 = v10;

  if (!v10)
  {
    v19 = ClientLevelOutput.nextLevelInput(onPathDirections:prevParty0CtrlList:prevParty1CtrlList:)(v18, a5, a6, a2, a3, a4);
  }

  return v19;
}

BOOL specialized Set.contains(_:)(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = MEMORY[0x2743B3150](*(a2 + 40), a1);
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

unint64_t lazy protocol witness table accessor for type InnerCorrectionError and conformance InnerCorrectionError()
{
  result = lazy protocol witness table cache variable for type InnerCorrectionError and conformance InnerCorrectionError;
  if (!lazy protocol witness table cache variable for type InnerCorrectionError and conformance InnerCorrectionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InnerCorrectionError and conformance InnerCorrectionError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InnerCorrectionError and conformance InnerCorrectionError;
  if (!lazy protocol witness table cache variable for type InnerCorrectionError and conformance InnerCorrectionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InnerCorrectionError and conformance InnerCorrectionError);
  }

  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &_ss23_ContiguousArrayStorageCy4VDAF7Field40VGMd, &_ss23_ContiguousArrayStorageCy4VDAF7Field40VGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &_ss23_ContiguousArrayStorageCy4VDAF7Field64VGMd, &_ss23_ContiguousArrayStorageCy4VDAF7Field64VGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

void *specialized _ArrayBuffer._consumeAndCreateNew()(void *a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1, &_ss23_ContiguousArrayStorageCySay4VDAF7Field40VGGMd, &_ss23_ContiguousArrayStorageCySay4VDAF7Field40VGGMR, &_sSay4VDAF7Field40VGMd, &_sSay4VDAF7Field40VGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1, &_ss23_ContiguousArrayStorageCySay4VDAF7Field32VGGMd, &_ss23_ContiguousArrayStorageCySay4VDAF7Field32VGGMR, &_sSay4VDAF7Field32VGMd, &_sSay4VDAF7Field32VGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1, &_ss23_ContiguousArrayStorageCySay4VDAF7Field64VGGMd, &_ss23_ContiguousArrayStorageCySay4VDAF7Field64VGGMR, &_sSay4VDAF7Field64VGMd, &_sSay4VDAF7Field64VGMR);
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
    if (v10 != a4 || v12 >= &v13[v8])
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySbGMd, &_ss23_ContiguousArrayStorageCySbGMR);
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
    if (v10 != a4 || v12 >= &v13[v8])
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DataVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DataVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF4SeedVGMd, &_ss23_ContiguousArrayStorageCy4VDAF4SeedVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF29OneBlockSparseInnerCorrectionVGMd, &_ss23_ContiguousArrayStorageCy4VDAF29OneBlockSparseInnerCorrectionVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF16InnerCorrectionsVGMd, &_ss23_ContiguousArrayStorageCy4VDAF16InnerCorrectionsVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySdGMd, &_ss23_ContiguousArrayStorageCySdGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF7Field32VGMd, &_ss23_ContiguousArrayStorageCy4VDAF7Field32VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF4LeafVyAC7Field32VGGMd, &_ss23_ContiguousArrayStorageCy4VDAF4LeafVyAC7Field32VGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF8EvalNodeVGMd, &_ss23_ContiguousArrayStorageCy4VDAF8EvalNodeVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySaySbGGMd, &_ss23_ContiguousArrayStorageCySaySbGGMR, &_sSaySbGMd, &_sSaySbGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy4VDAF10PolynomialVyAC7Field40VGGMd, &_ss23_ContiguousArrayStorageCy4VDAF10PolynomialVyAC7Field40VGGMR, &_s4VDAF10PolynomialVyAA7Field40VGMd, &_s4VDAF10PolynomialVyAA7Field40VGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy4VDAF14PINEInputShareVyAC7Field40VAC19XofHmacSha256Aes128CGGMd, &_ss23_ContiguousArrayStorageCy4VDAF14PINEInputShareVyAC7Field40VAC19XofHmacSha256Aes128CGGMR, &_s4VDAF14PINEInputShareVyAA7Field40VAA19XofHmacSha256Aes128CGMd, &_s4VDAF14PINEInputShareVyAA7Field40VAA19XofHmacSha256Aes128CGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy4VDAF24LeafCorrectionCalculatorV17UncorrectedValuesVyAC7Field32VAC19XofHmacSha256Aes128C_GGMd, &_ss23_ContiguousArrayStorageCy4VDAF24LeafCorrectionCalculatorV17UncorrectedValuesVyAC7Field32VAC19XofHmacSha256Aes128C_GGMR, &_s4VDAF24LeafCorrectionCalculatorV17UncorrectedValuesVyAA7Field32VAA19XofHmacSha256Aes128C_GMd, &_s4VDAF24LeafCorrectionCalculatorV17UncorrectedValuesVyAA7Field32VAA19XofHmacSha256Aes128C_GMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy4VDAF22SiblingLeafCorrectionsVyAC7Field32VGGMd, &_ss23_ContiguousArrayStorageCy4VDAF22SiblingLeafCorrectionsVyAC7Field32VGGMR, &_s4VDAF22SiblingLeafCorrectionsVyAA7Field32VGMd, &_s4VDAF22SiblingLeafCorrectionsVyAA7Field32VGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy4VDAF10PolynomialVyAC7Field32VGGMd, &_ss23_ContiguousArrayStorageCy4VDAF10PolynomialVyAC7Field32VGGMR, &_s4VDAF10PolynomialVyAA7Field32VGMd, &_s4VDAF10PolynomialVyAA7Field32VGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy4VDAF14PINEInputShareVyAC7Field32VAC19XofHmacSha256Aes128CGGMd, &_ss23_ContiguousArrayStorageCy4VDAF14PINEInputShareVyAC7Field32VAC19XofHmacSha256Aes128CGGMR, &_s4VDAF14PINEInputShareVyAA7Field32VAA19XofHmacSha256Aes128CGMd, &_s4VDAF14PINEInputShareVyAA7Field32VAA19XofHmacSha256Aes128CGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy4VDAF10PolynomialVyAC7Field64VGGMd, &_ss23_ContiguousArrayStorageCy4VDAF10PolynomialVyAC7Field64VGGMR, &_s4VDAF10PolynomialVyAA7Field64VGMd, &_s4VDAF10PolynomialVyAA7Field64VGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy4VDAF25OneBlockSparsePublicShareVyAC7Field32VGGMd, &_ss23_ContiguousArrayStorageCy4VDAF25OneBlockSparsePublicShareVyAC7Field32VGGMR, &_s4VDAF25OneBlockSparsePublicShareVyAA7Field32VGMd, &_s4VDAF25OneBlockSparsePublicShareVyAA7Field32VGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy4VDAF14PINEInputShareVyAC7Field64VAC19XofHmacSha256Aes128CGGMd, &_ss23_ContiguousArrayStorageCy4VDAF14PINEInputShareVyAC7Field64VAC19XofHmacSha256Aes128CGGMR, &_s4VDAF14PINEInputShareVyAA7Field64VAA19XofHmacSha256Aes128CGMd, &_s4VDAF14PINEInputShareVyAA7Field64VAA19XofHmacSha256Aes128CGMR);
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3, char *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy4VDAF7Field40VGMd, &_ss23_ContiguousArrayStorageCy4VDAF7Field40VGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy4VDAF7Field64VGMd, &_ss23_ContiguousArrayStorageCy4VDAF7Field64VGMR);
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 48);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[6 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 48 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF15Prio3InputShareVyAC13SumVectorTypeVyAC7Field64VSWGAC19XofHmacSha256Aes128CGGMd, &_ss23_ContiguousArrayStorageCy4VDAF15Prio3InputShareVyAC13SumVectorTypeVyAC7Field64VSWGAC19XofHmacSha256Aes128CGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF15Prio3InputShareVyAA13SumVectorTypeVyAA7Field64VSWGAA19XofHmacSha256Aes128CGMd, &_s4VDAF15Prio3InputShareVyAA13SumVectorTypeVyAA7Field64VSWGAA19XofHmacSha256Aes128CGMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x2743B3150](*(*v2 + 40));
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v10 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySiGMd, &_ss11_SetStorageCySiGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v26 = v2;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      result = MEMORY[0x2743B3150](*(v6 + 40), v18);
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v26;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = specialized _NativeSet.copy()();
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
  }

  v8 = *v3;
  result = MEMORY[0x2743B3150](*(*v3 + 40), v4);
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySiGMd, &_ss11_SetStorageCySiGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySiGMd, &_ss11_SetStorageCySiGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = MEMORY[0x2743B3150](*(v6 + 40), v17);
      v18 = -1 << *(v6 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

uint64_t outlined init with copy of Pair<SeedCtrlUnadjusted>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF4PairVyAA18SeedCtrlUnadjustedVGMd, &_s4VDAF4PairVyAA18SeedCtrlUnadjustedVGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Pair<SeedCtrlUnadjusted>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF4PairVyAA18SeedCtrlUnadjustedVGMd, &_s4VDAF4PairVyAA18SeedCtrlUnadjustedVGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL partial apply for closure #1 in InnerCorrectionCalculator.makeNextLevelInput(forCurrentLevel:from:using:and:)@<W0>(uint64_t *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = *(v3 + 32);
  v7 = *a1;
  result = LeafParent.bit(atLevel:)(v6);
  if (v9)
  {
    *a2 = v9;
  }

  else
  {
    *a3 = result;
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for InnerCorrectionError(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type InnerCorrectionError and conformance InnerCorrectionError();
  result = lazy protocol witness table accessor for type InnerCorrectionError and conformance InnerCorrectionError();
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for InnerCorrectionError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for InnerCorrectionError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

uint64_t type metadata instantiation function for InnerCorrectionCalculator()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for InnerCorrectionCalculator(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for InnerCorrectionCalculator(uint64_t result, int a2, int a3)
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

uint64_t _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Data.Iterator();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4, v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v11 != 2)
    {
LABEL_12:
      outlined consume of Data._Representation(a1, a2);
      return MEMORY[0x277D84F90];
    }

    v14 = *(a1 + 16);
    v13 = *(a1 + 24);
    v12 = v13 - v14;
    if (!__OFSUB__(v13, v14))
    {
      if (v12)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v11)
    {
      goto LABEL_10;
    }

    v12 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v15 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1g5(v12, 0);
      v16 = Data._copyContents(initializing:)();
      outlined consume of Data._Representation(a1, a2);
      v17 = *(v5 + 8);
      v5 += 8;
      v17(v10, v4);
      result = v15;
      if (v16 == v12)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v18 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v12 = v18;
      if (!v18)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t _sSaySayxGqd__c7ElementQyd__RszSTRd__lufC4VDAF8BitMasksC_SayAFGTt0g5(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v2 = a1;
  if (a1 >= 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  v3 = MEMORY[0x2743B2FD0](a1);
  if (!v3)
  {
LABEL_9:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC4VDAF8BitMasksC_Tt1g5(v3, 0);
  specialized Array._copyContents(initializing:)((v5 + 4), v4, v2);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_4VDAF4SeedV16measurementShare_AI05proofG0AI24wraparoundJointRandBlindAI012verificationjkL0ts5NeverOTg5020_s4VDAF4PINEV14splite65Bytes33_96F6F895E25AE9C9B366289ACE02F486LLySayAA0D0V16measurementg26_AG05proofO0AG24wraparoundjkl117AG012verificationrsT0tG12helperShares_AG016leaderWraparoundrsT0AG0x12VerificationrsT0AG05provesD0tqd__SkRd__s5UInt8V7B89Rtd__lFAgH_AgigjgKtSiXEfU_AA7Field40V_SRySfGAA19XofHmacSha256Aes128C10Foundation4DataVTG5s10ArraySliceVys5UInt8VGTf1cn_nTm(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v25 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v5 = v25;
    if (a2 <= a1)
    {
      v9 = a1;
    }

    else
    {
      v9 = a2;
    }

    v10 = v9 - a1 + 1;
    while (v8 < v4)
    {
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_18;
      }

      v12 = specialized closure #1 in PINE.splitSeedBytes<A>(_:)(a3);
      if (v3)
      {
        goto LABEL_23;
      }

      v17 = *(v25 + 16);
      v16 = *(v25 + 24);
      if (v17 >= v16 >> 1)
      {
        v22 = v13;
        v23 = v12;
        v21 = v14;
        v20 = v15;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
        v15 = v20;
        v14 = v21;
        v13 = v22;
        v12 = v23;
      }

      *(v25 + 16) = v17 + 1;
      v18 = (v25 + 32 * v17);
      v18[4] = v12;
      v18[5] = v13;
      v18[6] = v14;
      v18[7] = v15;
      if (a2 < a1)
      {
        goto LABEL_19;
      }

      if (v10 == ++v8)
      {
        goto LABEL_20;
      }

      if (v11 == v4)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_22:
  __break(1u);
LABEL_23:

  __break(1u);
  return result;
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay4VDAF16GadgetParametersVG_AF0E10WireInputsCyAF7Field40VGs5NeverOTg5096_s4VDAF16FullyLinearProofPAAE5prove4into11measurement0E4Rand05jointH0yqd__z_Say1FQzGA2KtKSmRd__7b15Qyd__AJRSlFAA16egh11CyAJGAA0K10f43VXEfU_AA28PINENormEqualityCheckCircuitVyAA7I18VSRySfGG_SayAVGTG5s10ArraySliceVyAMGTf1cn_nTm(uint64_t a1, void *a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v40 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v5 = 0;
    v35 = a2;
    v36 = a1 + 32;
    v34 = v3;
    while (1)
    {
      v7 = (v36 + 40 * v5);
      v8 = *v7;
      if ((*v7 & 0x8000000000000000) != 0)
      {
        break;
      }

      v9 = a2[2];
      v10 = a2[3] >> 1;
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_51;
      }

      v11 = v7[2];
      v39 = *a2;
      if (v8)
      {
        v12 = v10 - v9 >= v8;
      }

      else
      {
        v12 = 1;
      }

      v13 = !v12;
      v14 = a2[3] >> 1;
      if (v12)
      {
        v14 = v9 + v8;
        if (__OFADD__(v9, v8))
        {
          goto LABEL_62;
        }
      }

      if (v14 < v9)
      {
        goto LABEL_52;
      }

      if (v10 < v9)
      {
        goto LABEL_53;
      }

      if (v10 < v14)
      {
        goto LABEL_54;
      }

      if (v14 < 0)
      {
        goto LABEL_55;
      }

      if ((v13 & 1) == 0)
      {
        v15 = __OFADD__(v9, v8);
        v16 = v9 + v8;
        if (v15)
        {
          goto LABEL_63;
        }

        if (v10 < v16)
        {
          goto LABEL_61;
        }

        v10 = v16;
      }

      if (v10 < v9)
      {
        goto LABEL_56;
      }

      v37 = a2[1];
      a2[2] = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF16GadgetWireInputsCyAA7Field40VGMd, &_s4VDAF16GadgetWireInputsCyAA7Field40VGMR);
      v17 = swift_allocObject();
      *(v17 + 16) = 0;
      v18 = v14 - v9;
      if (__OFSUB__(v14, v9))
      {
        goto LABEL_57;
      }

      v19 = v17;
      *(v17 + 24) = v11;
      v20 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_58;
      }

      if ((v20 & 0x8000000000000000) != 0)
      {
        goto LABEL_59;
      }

      v38 = v5;
      swift_unknownObjectRetain();
      if (v11 == -1)
      {
        v21 = MEMORY[0x277D84F90];
        if (v18 < 0)
        {
          goto LABEL_60;
        }
      }

      else
      {
        v21 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v21 + 16) = v20;
        bzero((v21 + 32), 8 * v11 + 8);
        if (v18 < 0)
        {
          goto LABEL_60;
        }
      }

      if (v18)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay4VDAF7Field40VGMd, &_sSay4VDAF7Field40VGMR);
        v22 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v23 = v22;
        *(v22 + 16) = v18;
        *(v22 + 32) = v21;
        if (v18 != 1)
        {
          v24 = ~v9 + v14;
          v25 = (v22 + 40);
          do
          {
            *v25++ = v21;

            --v24;
          }

          while (v24);
        }

        *(v19 + 32) = v23;
        v26 = (v19 + 32);
        swift_beginAccess();
        v27 = 0;
        v28 = v37 + 8 * v9;
        while (v18 != v27)
        {
          v29 = *(v28 + 8 * v27);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v26 = v23;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v23 = specialized _ArrayBuffer._consumeAndCreateNew()(v23);
            *v26 = v23;
          }

          if (v27 >= v23[2])
          {
            goto LABEL_49;
          }

          v31 = &v23[v27];
          v32 = v31[4];
          v33 = swift_isUniquelyReferenced_nonNull_native();
          v31[4] = v32;
          if (v33)
          {
            if (!*(v32 + 2))
            {
              goto LABEL_46;
            }
          }

          else
          {
            v32 = specialized _ArrayBuffer._consumeAndCreateNew()(v32);
            v31[4] = v32;
            if (!*(v32 + 2))
            {
LABEL_46:
              __break(1u);
              return;
            }
          }

          ++v27;
          *(v32 + 4) = v29;
          *v26 = v23;
          if (v18 == v27)
          {
            goto LABEL_4;
          }
        }

        __break(1u);
LABEL_49:
        __break(1u);
        break;
      }

      *(v19 + 32) = MEMORY[0x277D84F90];
LABEL_4:
      v5 = v38 + 1;
      swift_unknownObjectRelease();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v6 = *(v40 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      a2 = v35;
      if (v38 + 1 == v34)
      {
        return;
      }
    }

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
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
  }
}

size_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_4VDAF4SeedVs5NeverOTg5072_s4VDAF15PINEPublicShareV4from9parameterACyxGqd___SiSgtKcSkRd__s5UInt8V7b12Rtd__lufcAA4E38VSiXEfU_AA19XofHmacSha256Aes128C_SWTG5s10ArraySliceVys0T0VGTf1cn_nTm(size_t result, int64_t a2, uint64_t *a3)
{
  v3 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    goto LABEL_60;
  }

  v4 = MEMORY[0x277D84F90];
  if (!v3)
  {
    return v4;
  }

  v6 = result;
  v28 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3 & ~(v3 >> 63), 0);
  if (a2 < v6 || v3 < 0)
  {
    goto LABEL_61;
  }

  v23 = v3;
  v7 = 0;
  v4 = v28;
  v24 = v6 - 1;
  v8 = v3;
  while (v7 < v8)
  {
    if (__OFADD__(v7, 1))
    {
      goto LABEL_47;
    }

    v10 = a3[2];
    v9 = a3[3];
    v11 = v9 >> 1;
    v12 = (v9 >> 1) - v10;
    if (__OFSUB__(v9 >> 1, v10))
    {
      goto LABEL_48;
    }

    v13 = *a3;
    v14 = a3[1];
    v15 = v9 >> 1;
    if (v12 >= 0x20)
    {
      v15 = v10 + 32;
      if (__OFADD__(v10, 32))
      {
        goto LABEL_56;
      }
    }

    if (v15 < v10)
    {
      goto LABEL_49;
    }

    if (v11 < v10)
    {
      goto LABEL_50;
    }

    if (v11 < v15)
    {
      goto LABEL_51;
    }

    if (v15 < 0)
    {
      goto LABEL_52;
    }

    if (v12 >= 0x20)
    {
      if (__OFADD__(v10, 32))
      {
        goto LABEL_57;
      }

      if (v11 < v10 + 32)
      {
        goto LABEL_53;
      }

      v11 = v10 + 32;
    }

    if (v11 < v10)
    {
      goto LABEL_54;
    }

    v27 = v7 + 1;
    a3[2] = v11;
    if (v9)
    {
      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain_n();
      v19 = swift_dynamicCastClass();
      if (!v19)
      {
        swift_unknownObjectRelease();
        v19 = MEMORY[0x277D84F90];
      }

      v20 = *(v19 + 16);

      v16 = v15 - v10;
      if (__OFSUB__(v15, v10))
      {
        goto LABEL_59;
      }

      if (v20 == v16)
      {
        v18 = swift_dynamicCastClass();
        result = swift_unknownObjectRelease();
        v8 = v23;
        if (v18)
        {
          goto LABEL_38;
        }
      }

      else
      {
        result = swift_unknownObjectRelease();
        v8 = v23;
        if (v16)
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
      v16 = v15 - v10;
      v17 = __OFSUB__(v15, v10);
      result = swift_unknownObjectRetain();
      if (v17)
      {
        goto LABEL_58;
      }

      if (v16)
      {
LABEL_26:
        v26 = v14;
        if (v16 < 1)
        {
          v18 = MEMORY[0x277D84F90];
          if (v10 == v15)
          {
            goto LABEL_62;
          }
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
          v18 = swift_allocObject();
          result = _swift_stdlib_malloc_size(v18);
          v18[2] = v16;
          v18[3] = 2 * result - 64;
          if (v10 == v15)
          {
            goto LABEL_62;
          }
        }

        memcpy(v18 + 4, (v26 + v10), v16);
        goto LABEL_37;
      }
    }

    v18 = MEMORY[0x277D84F90];
LABEL_37:
    result = swift_unknownObjectRelease();
LABEL_38:
    v22 = *(v28 + 16);
    v21 = *(v28 + 24);
    if (v22 >= v21 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
    }

    *(v28 + 16) = v22 + 1;
    *(v28 + 8 * v22 + 32) = v18;
    ++v7;
    if ((v24 + v7) >= a2)
    {
      goto LABEL_55;
    }

    if (v27 == v8)
    {
      return v4;
    }
  }

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
  return result;
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay4VDAF16GadgetParametersVG_AF0E10WireInputsCyAF7Field32VGs5NeverOTg5096_s4VDAF16FullyLinearProofPAAE5prove4into11measurement0E4Rand05jointH0yqd__z_Say1FQzGA2KtKSmRd__7b15Qyd__AJRSlFAA16egh11CyAJGAA0K10f43VXEfU_AA28PINENormEqualityCheckCircuitVyAA7I18VSRySfGG_SayAVGTG5s10ArraySliceVyAMGTf1cn_nTm(uint64_t a1, void *a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v40 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v5 = 0;
    v35 = a2;
    v36 = a1 + 32;
    v34 = v3;
    while (1)
    {
      v7 = (v36 + 40 * v5);
      v8 = *v7;
      if ((*v7 & 0x8000000000000000) != 0)
      {
        break;
      }

      v9 = a2[2];
      v10 = a2[3] >> 1;
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_51;
      }

      v11 = v7[2];
      v39 = *a2;
      if (v8)
      {
        v12 = v10 - v9 >= v8;
      }

      else
      {
        v12 = 1;
      }

      v13 = !v12;
      v14 = a2[3] >> 1;
      if (v12)
      {
        v14 = v9 + v8;
        if (__OFADD__(v9, v8))
        {
          goto LABEL_62;
        }
      }

      if (v14 < v9)
      {
        goto LABEL_52;
      }

      if (v10 < v9)
      {
        goto LABEL_53;
      }

      if (v10 < v14)
      {
        goto LABEL_54;
      }

      if (v14 < 0)
      {
        goto LABEL_55;
      }

      if ((v13 & 1) == 0)
      {
        v15 = __OFADD__(v9, v8);
        v16 = v9 + v8;
        if (v15)
        {
          goto LABEL_63;
        }

        if (v10 < v16)
        {
          goto LABEL_61;
        }

        v10 = v16;
      }

      if (v10 < v9)
      {
        goto LABEL_56;
      }

      v37 = a2[1];
      a2[2] = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF16GadgetWireInputsCyAA7Field32VGMd, &_s4VDAF16GadgetWireInputsCyAA7Field32VGMR);
      v17 = swift_allocObject();
      *(v17 + 16) = 0;
      v18 = v14 - v9;
      if (__OFSUB__(v14, v9))
      {
        goto LABEL_57;
      }

      v19 = v17;
      *(v17 + 24) = v11;
      v20 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_58;
      }

      if ((v20 & 0x8000000000000000) != 0)
      {
        goto LABEL_59;
      }

      v38 = v5;
      swift_unknownObjectRetain();
      if (v11 == -1)
      {
        v21 = MEMORY[0x277D84F90];
        if (v18 < 0)
        {
          goto LABEL_60;
        }
      }

      else
      {
        v21 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v21 + 16) = v20;
        bzero((v21 + 32), 4 * v11 + 4);
        if (v18 < 0)
        {
          goto LABEL_60;
        }
      }

      if (v18)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay4VDAF7Field32VGMd, &_sSay4VDAF7Field32VGMR);
        v22 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v23 = v22;
        *(v22 + 16) = v18;
        *(v22 + 32) = v21;
        if (v18 != 1)
        {
          v24 = ~v9 + v14;
          v25 = (v22 + 40);
          do
          {
            *v25++ = v21;

            --v24;
          }

          while (v24);
        }

        *(v19 + 32) = v23;
        v26 = (v19 + 32);
        swift_beginAccess();
        v27 = 0;
        v28 = v37 + 4 * v9;
        while (v18 != v27)
        {
          v29 = *(v28 + 4 * v27);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v26 = v23;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v23 = specialized _ArrayBuffer._consumeAndCreateNew()(v23);
            *v26 = v23;
          }

          if (v27 >= v23[2])
          {
            goto LABEL_49;
          }

          v31 = &v23[v27];
          v32 = v31[4];
          v33 = swift_isUniquelyReferenced_nonNull_native();
          v31[4] = v32;
          if (v33)
          {
            if (!*(v32 + 2))
            {
              goto LABEL_46;
            }
          }

          else
          {
            v32 = specialized _ArrayBuffer._consumeAndCreateNew()(v32);
            v31[4] = v32;
            if (!*(v32 + 2))
            {
LABEL_46:
              __break(1u);
              return;
            }
          }

          ++v27;
          *(v32 + 8) = v29;
          *v26 = v23;
          if (v18 == v27)
          {
            goto LABEL_4;
          }
        }

        __break(1u);
LABEL_49:
        __break(1u);
        break;
      }

      *(v19 + 32) = MEMORY[0x277D84F90];
LABEL_4:
      v5 = v38 + 1;
      swift_unknownObjectRelease();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v6 = *(v40 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      a2 = v35;
      if (v38 + 1 == v34)
      {
        return;
      }
    }

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
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
  }
}

uint64_t PINE<>.shardAndEncode(_:nonce:seedBytes:)(float *a1, char *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = v7;
  memcpy(__dst, v6, sizeof(__dst));
  outlined copy of Data._Representation(a3, a4);
  v15 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(a3, a4);
  v16 = specialized PINE.shard<A>(_:nonce:seedBytes:)(&v36, a1, a2, v15, a5, a6);

  if (!v7)
  {
    v17 = v36;
    v18 = v37;
    v19 = specialized PINEPublicShare.encodedLength.getter(v36, v37);
    v36 = specialized Data._Representation.init(capacity:)(v19);
    v37 = v20;
    specialized PINEPublicShare.encode<A>(into:)(&v36, v17, v18);

    v8 = v36;
    v21 = *(v16 + 16);
    if (v21)
    {
      v35 = v36;
      v40 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21, 0);
      v22 = 32;
      v23 = v40;
      do
      {
        v24 = v16;
        v25 = *(v16 + v22);
        v26 = *(v16 + v22 + 32);
        v38[1] = *(v16 + v22 + 16);
        v38[2] = v26;
        v38[0] = v25;
        outlined init with copy of PINEInputShare<Field40, XofHmacSha256Aes128>(v38, &v36, &_s4VDAF14PINEInputShareVyAA7Field40VAA19XofHmacSha256Aes128CGMd, &_s4VDAF14PINEInputShareVyAA7Field40VAA19XofHmacSha256Aes128CGMR);
        specialized VDAFEncodable.encodedData.getter();
        v28 = v27;
        v30 = v29;
        outlined destroy of PINEInputShare<Field40, XofHmacSha256Aes128>(v38, &_s4VDAF14PINEInputShareVyAA7Field40VAA19XofHmacSha256Aes128CGMd, &_s4VDAF14PINEInputShareVyAA7Field40VAA19XofHmacSha256Aes128CGMR);
        v40 = v23;
        v32 = *(v23 + 16);
        v31 = *(v23 + 24);
        if (v32 >= v31 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1);
          v23 = v40;
        }

        *(v23 + 16) = v32 + 1;
        v33 = v23 + 16 * v32;
        *(v33 + 32) = v28;
        *(v33 + 40) = v30;
        v22 += 48;
        --v21;
        v16 = v24;
      }

      while (v21);

      return v35;
    }

    else
    {
    }
  }

  return v8;
}

{
  v8 = v7;
  memcpy(__dst, v6, sizeof(__dst));
  outlined copy of Data._Representation(a3, a4);
  v15 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(a3, a4);
  v16 = specialized PINE.shard<A>(_:nonce:seedBytes:)(&v36, a1, a2, v15, a5, a6);

  if (!v7)
  {
    v17 = v36;
    v18 = v37;
    v19 = specialized PINEPublicShare.encodedLength.getter(v36, v37);
    v36 = specialized Data._Representation.init(capacity:)(v19);
    v37 = v20;
    specialized PINEPublicShare.encode<A>(into:)(&v36, v17, v18);

    v8 = v36;
    v21 = *(v16 + 16);
    if (v21)
    {
      v35 = v36;
      v40 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21, 0);
      v22 = 32;
      v23 = v40;
      do
      {
        v24 = v16;
        v25 = *(v16 + v22);
        v26 = *(v16 + v22 + 32);
        v38[1] = *(v16 + v22 + 16);
        v38[2] = v26;
        v38[0] = v25;
        outlined init with copy of PINEInputShare<Field40, XofHmacSha256Aes128>(v38, &v36, &_s4VDAF14PINEInputShareVyAA7Field32VAA19XofHmacSha256Aes128CGMd, &_s4VDAF14PINEInputShareVyAA7Field32VAA19XofHmacSha256Aes128CGMR);
        specialized VDAFEncodable.encodedData.getter();
        v28 = v27;
        v30 = v29;
        outlined destroy of PINEInputShare<Field40, XofHmacSha256Aes128>(v38, &_s4VDAF14PINEInputShareVyAA7Field32VAA19XofHmacSha256Aes128CGMd, &_s4VDAF14PINEInputShareVyAA7Field32VAA19XofHmacSha256Aes128CGMR);
        v40 = v23;
        v32 = *(v23 + 16);
        v31 = *(v23 + 24);
        if (v32 >= v31 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1);
          v23 = v40;
        }

        *(v23 + 16) = v32 + 1;
        v33 = v23 + 16 * v32;
        *(v33 + 32) = v28;
        *(v33 + 40) = v30;
        v22 += 48;
        --v21;
        v16 = v24;
      }

      while (v21);

      return v35;
    }

    else
    {
    }
  }

  return v8;
}

uint64_t specialized PINE.shard<A>(_:nonce:seedBytes:)(unint64_t a1, float *a2, char *a3, _BYTE *a4, uint64_t a5, unint64_t a6)
{
  v8 = v7;
  v242 = a2;
  v305 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4HMACVyAA6SHA256VGMd, &_s9CryptoKit4HMACVyAA6SHA256VGMR);
  v227 = *(v305 - 8);
  v14 = *(v227 + 64);
  MEMORY[0x28223BE20](v305, v15);
  v244 = (v211 - v16);
  v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA256VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA256VGMR);
  v226 = *(v245 - 8);
  v17 = *(v226 + 64);
  MEMORY[0x28223BE20](v245, v18);
  v243 = v211 - v19;
  memcpy(v255, v6, sizeof(v255));
  v240 = a4;
  v21 = *(a4 + 2);
  if (v21 != 16)
  {
    v252 = 0;
    v253 = 0xE000000000000000;
    _StringGuts.grow(_:)(44);

    v252 = 0xD00000000000002FLL;
    v253 = 0x8000000270C51F20;
    v251 = 16;
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v24);

    MEMORY[0x2743B25F0](0x3D746F67202CLL, 0xE600000000000000);
    v251 = v21;
    goto LABEL_70;
  }

  v22 = (a6 >> 62);
  if ((a6 >> 62) <= 1)
  {
    if (!v22)
    {
      v23 = BYTE6(a6);
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (v22 != 2)
  {
    v23 = 0;
    goto LABEL_13;
  }

  v26 = *(a5 + 16);
  v25 = *(a5 + 24);
  v27 = __OFSUB__(v25, v26);
  v23 = v25 - v26;
  if (v27)
  {
    __break(1u);
LABEL_10:
    v23 = (HIDWORD(a5) - a5);
    if (__OFSUB__(HIDWORD(a5), a5))
    {
      goto LABEL_127;
    }

    v23 = v23;
  }

LABEL_13:
  v28 = *v6;
  v29 = *v6 - 1;
  if (__OFSUB__(*v6, 1))
  {
    goto LABEL_118;
  }

  if ((*v6 + 0x3FFFFFFFFFFFFFFFLL) < 0)
  {
    goto LABEL_119;
  }

  if ((v28 + 0x4000000000000000) < 0)
  {
    goto LABEL_120;
  }

  v30 = 2 * v29 + 2 * v28;
  if (__OFADD__(2 * v29, 2 * v28))
  {
    goto LABEL_121;
  }

  if ((v30 - 0x3FFFFFFFFFFFFFFLL) >> 59 != 31)
  {
    goto LABEL_122;
  }

  v31 = (32 * v30) | 0x20;
  if (v23 != v31)
  {
    v252 = 0;
    v253 = 0xE000000000000000;
    _StringGuts.grow(_:)(39);

    v252 = 0xD00000000000002ALL;
    v253 = 0x8000000270C51F50;
    v251 = v31;
    v42 = dispatch thunk of CustomStringConvertible.description.getter();
    a4 = v43;
    MEMORY[0x2743B25F0](v42);

    v6 = &v252;
    MEMORY[0x2743B25F0](0x3D746F67202CLL, 0xE600000000000000);
    if (v22 > 1)
    {
      v44 = 0;
      if (v22 == 2)
      {
        v63 = *(a5 + 16);
        v62 = *(a5 + 24);
        v27 = __OFSUB__(v62, v63);
        v44 = v62 - v63;
        if (v27)
        {
          __break(1u);
          goto LABEL_44;
        }
      }
    }

    else if (v22)
    {
      v44 = (HIDWORD(a5) - a5);
      if (__OFSUB__(HIDWORD(a5), a5))
      {
        goto LABEL_132;
      }

      v44 = v44;
    }

    else
    {
      v44 = BYTE6(a6);
    }

    v251 = v44;
LABEL_70:
    v123 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v123);

    v124 = v252;
    v125 = v253;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v126 = v124;
    *(v126 + 8) = v125;
    *(v126 + 16) = 1;
    return swift_willThrow();
  }

  v214 = a1;
  v215 = v28;
  v228 = v29;
  a4 = v255;
  memcpy(v304, v6, sizeof(v304));
  v22 = specialized PINE.splitSeedBytes<A>(_:)(a5, a6);
  v218 = v33;
  v219 = v32;
  v217 = v34;
  v35 = *(v22 + 2);
  a1 = MEMORY[0x277D84F90];
  v221 = v22;
  if (v35)
  {
    *&v238 = a3;
    v239 = v7;
    v252 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35, 0);
    v36 = v252;
    v37 = (v22 + 32);
    v38 = v35;
    do
    {
      v39 = *v37;
      v252 = v36;
      v41 = *(v36 + 16);
      v40 = *(v36 + 24);

      if (v41 >= v40 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1);
        v36 = v252;
      }

      *(v36 + 16) = v41 + 1;
      *(v36 + 8 * v41 + 32) = v39;
      v37 += 4;
      --v38;
    }

    while (v38);
    v252 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35, 0);
    v45 = v252;
    v46 = (v221 + 40);
    v47 = v35;
    do
    {
      v48 = *v46;
      v252 = v45;
      v50 = *(v45 + 16);
      v49 = *(v45 + 24);

      if (v50 >= v49 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1);
        v45 = v252;
      }

      *(v45 + 16) = v50 + 1;
      *(v45 + 8 * v50 + 32) = v48;
      v46 += 4;
      --v47;
    }

    while (v47);
    a1 = v36;
    v216 = v45;
    v252 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35, 0);
    v51 = v252;
    v52 = (v221 + 48);
    v53 = v35;
    do
    {
      v54 = *v52;
      v252 = v51;
      v56 = *(v51 + 16);
      v55 = *(v51 + 24);

      if (v56 >= v55 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v56 + 1, 1);
        v51 = v252;
      }

      *(v51 + 16) = v56 + 1;
      *(v51 + 8 * v56 + 32) = v54;
      v52 += 4;
      --v53;
    }

    while (v53);
    v241 = v51;
    v252 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35, 0);
    v57 = v252;
    v58 = (v221 + 56);
    a3 = v238;
    do
    {
      v59 = *v58;
      v252 = v57;
      v61 = *(v57 + 16);
      v60 = *(v57 + 24);

      if (v61 >= v60 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v60 > 1), v61 + 1, 1);
        v57 = v252;
      }

      *(v57 + 16) = v61 + 1;
      *(v57 + 8 * v61 + 32) = v59;
      v58 += 4;
      --v35;
    }

    while (v35);
    v220 = v57;
    v22 = v221;
    a4 = v255;
    v8 = v239;
    goto LABEL_45;
  }

LABEL_44:
  v241 = a1;
  v216 = a1;
  v220 = a1;
LABEL_45:
  v254 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v304[10] & ~(v304[10] >> 63), 0, MEMORY[0x277D84F90]);
  v64 = *(a4 + 120);
  v300 = *(a4 + 104);
  v301 = v64;
  v302 = *(a4 + 136);
  v303 = *&v255[152];
  v65 = *(a4 + 56);
  v296 = *(a4 + 40);
  v297 = v65;
  v66 = *(a4 + 88);
  v298 = *(a4 + 72);
  v299 = v66;
  v67 = *(a4 + 24);
  v294 = *(a4 + 8);
  v295 = v67;
  specialized PINECircuit.encodeMeasurementAndNormRangeCheck(raw:into:)(v242, a3, &v254);
  a4 = v8;
  if (v8)
  {
  }

  v213 = v254;
  v6 = MEMORY[0x277D84F90];
  v212 = v215 & ~(v215 >> 63);
  v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v212, 0, MEMORY[0x277D84F90]);
  a6 = *(v20 + 2);
  v23 = *(v20 + 3);
  a5 = a6 + 1;
  if (a6 >= v23 >> 1)
  {
    goto LABEL_129;
  }

  while (1)
  {
    v68 = v228;
    *(v20 + 2) = a5;
    v239 = v20;
    v44 = &v20[8 * a6];
    *(v44 + 32) = v6;
    v248 = v213;
    if ((v68 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), a5, 1, v8);
      goto LABEL_72;
    }

    v225 = a1;
    if (v68)
    {
      a6 = 0;
      v236 = (v227 + 8);
      v237 = (v227 + 16);
      v223 = (v226 + 8);
      v224 = a1 + 32;
      v222 = v241 + 4;
      v23 = &unk_270C44000;
      v238 = xmmword_270C44540;
      while (a6 != 255)
      {
        v23 = *(a1 + 16);
        if (a6 >= v23)
        {
          goto LABEL_115;
        }

        v6 = (a6 + 1);
        a5 = *(v224 + 8 * a6);

        a3 = _s4VDAF4PINEV19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt0B5Tm(0, 101777407);
        a1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
        v69 = swift_allocObject();
        *(v69 + 16) = v238;
        v242 = (a6 + 1);
        *(v69 + 32) = a6 + 1;
        v23 = *(a5 + 16);
        if (v23 != 32)
        {
          goto LABEL_116;
        }

        v22 = v69;
        *&v234 = a1;
        v235 = a6;
        v70 = a4;

        v71 = specialized XofHmacSha256Aes128.__allocating_init(seedBytes:domainSeparationTag:binder:)(a5, a3, v22);
        if (*(v71 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream))
        {
          goto LABEL_144;
        }

        v72 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_hmac;
        a6 = v71;
        swift_beginAccess();
        v73 = a6 + v72;
        v74 = v244;
        v75 = v305;
        v233 = *v237;
        (v233)(v244, v73, v305);
        v8 = v243;
        HMAC.finalize()();
        v232 = *v236;
        v232(v74, v75);
        a4 = v245;
        HashedAuthenticationCode.withUnsafeBytes<A>(_:)();
        v231 = v70;
        a1 = v223;
        v6 = *v223;
        (*v223)(v8, a4);

        swift_setDeallocating();
        swift_deallocClassInstance();
        v76 = *(v248 + 2);
        v230 = a6;
        v77 = _s4VDAF12FieldElementPAAE12randomVector5count5usingSayxGSi_qd__tAA24ExtendableOutputFunctionRd__lFZAA7Field40V_AA19XofHmacSha256Aes128CTt1g5Tm(v76, a6, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), _s4VDAF12FieldElementPAAE06randomC05usingxqd___tAA24ExtendableOutputFunctionRd__lFZAA7Field40V_AA19XofHmacSha256Aes128CTt1g5);
        v23 = v241[2];
        if (v235 >= v23)
        {
          goto LABEL_117;
        }

        v78 = v77;
        v229 = v6;
        v79 = (2 * *(v77 + 16)) | 1;
        v80 = v222[v235];
        swift_bridgeObjectRetain_n();

        v81 = _s4VDAF4PINEV19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt0B5Tm(9u, 101777407);
        v82 = swift_allocObject();
        v82[1] = v238;
        *(v82 + 32) = v242;
        v250 = v82;

        specialized Array.append<A>(contentsOf:)(v83);
        v235 = v80;
        v8 = specialized XofHmacSha256Aes128.__allocating_init(seedBytes:domainSeparationTag:binder:)(v80, v81, v250);
        specialized VDAFEncodable.encodedBytes.getter((v78 + 32), 0, v79);
        v84 = off_2880A7738[0];
        type metadata accessor for XofHmacSha256Aes128(0);
        v84();

        v85 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream;
        if (*&v8[OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream])
        {
          goto LABEL_145;
        }

        *&v234 = v78;
        v86 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_hmac;
        swift_beginAccess();
        v87 = &v8[v86];
        v88 = v244;
        v89 = v305;
        (v233)(v244, v87, v305);
        v90 = v243;
        HMAC.finalize()();
        v232(v88, v89);
        v91 = v245;
        v92 = v231;
        HashedAuthenticationCode.withUnsafeBytes<A>(_:)();
        a4 = v92;
        (v229)(v90, v91);
        v93 = *&v8[v85];
        if (!v93)
        {
          goto LABEL_146;
        }

        v94 = *&v8[v85];

        v95 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v95 + 16) = 32;
        *(v95 + 48) = 0u;
        *(v95 + 32) = 0u;
        a3 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_key;
        v96 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_nonce;
        swift_beginAccess();
        specialized static AES.CTR.encryptInPlace(_:using:updating:)((v95 + 32), v95 + 64, &a3[v93], v93 + v96);
        if (v92)
        {
          goto LABEL_154;
        }

        swift_endAccess();

        a5 = v234;

        v97 = v239;
        v99 = *(v239 + 2);
        v98 = *(v239 + 3);
        v22 = (v99 + 1);
        a1 = v225;
        if (v99 >= v98 >> 1)
        {
          v97 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v98 > 1), v99 + 1, 1, v239);
        }

        *(v97 + 2) = v22;
        v239 = v97;
        *&v97[8 * v99 + 32] = v95;
        v6 = &v248;
        specialized Array<A>.elementwiseSubtract(_:)(a5);

        a6 = v242;
        v23 = v228;
        if (v228 == v242)
        {
          goto LABEL_62;
        }
      }

      __break(1u);
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
LABEL_122:
      __break(1u);
      goto LABEL_123;
    }

LABEL_62:
    v100 = a4;

    a5 = v248;
    v101 = (2 * *(v248 + 2)) | 1;

    v102 = v219;

    v103 = _s4VDAF4PINEV19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt0B5Tm(9u, 101777407);
    v250 = &outlined read-only object #0 of specialized PINE.shard<A>(_:nonce:seedBytes:);

    specialized Array.append<A>(contentsOf:)(v104);
    a6 = specialized XofHmacSha256Aes128.__allocating_init(seedBytes:domainSeparationTag:binder:)(v102, v103, v250);
    specialized VDAFEncodable.encodedBytes.getter((a5 + 32), 0, v101);
    v105 = off_2880A7738[0];
    v224 = type metadata accessor for XofHmacSha256Aes128(0);
    v229 = v105;
    v105();

    v106 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream;
    if (*(a6 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream))
    {
      goto LABEL_150;
    }

    v107 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_hmac;
    swift_beginAccess();
    v108 = v227;
    v109 = *(v227 + 16);
    v110 = a6 + v107;
    v111 = v244;
    v112 = v305;
    v241 = (v227 + 16);
    *&v238 = v109;
    v109(v244, v110, v305);
    v113 = v243;
    HMAC.finalize()();
    v114 = *(v108 + 8);
    v227 = v108 + 8;
    v237 = v114;
    (v114)(v111, v112);
    v115 = v245;
    HashedAuthenticationCode.withUnsafeBytes<A>(_:)();
    a4 = v100;
    v116 = *(v226 + 8);
    v226 += 8;
    v236 = v116;
    (v116)(v113, v115);
    v6 = *(a6 + v106);
    if (!v6)
    {
      goto LABEL_151;
    }

    v117 = *(a6 + v106);

    v22 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v22 + 2) = 32;
    *(v22 + 3) = 0u;
    *(v22 + 2) = 0u;
    a1 = (v22 + 32);
    v8 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_key;
    v118 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_nonce;
    swift_beginAccess();
    specialized static AES.CTR.encryptInPlace(_:using:updating:)(v22 + 2, (v22 + 64), &v8[v6], v6 + v118);
    if (a4)
    {
      goto LABEL_154;
    }

    swift_endAccess();

    v44 = *(v239 + 2);
    a3 = v225;
    if (!v44)
    {
      goto LABEL_131;
    }

    v119 = *(v239 + 4);
    *(v239 + 4) = v22;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF25WraparoundJointRandomnessCyAA4PINEVyAA7Field40VSRySfGAA19XofHmacSha256Aes128CGAGGMd, &_s4VDAF25WraparoundJointRandomnessCyAA4PINEVyAA7Field40VSRySfGAA19XofHmacSha256Aes128CGAGGMR);
    swift_allocObject();

    v121 = specialized WraparoundJointRandomness.init(parts:)(v120, &lazy protocol witness table cache variable for type WraparoundJointRandomness<PINE<Field40, UnsafeBufferPointer<Float>, XofHmacSha256Aes128>, Field40> and conformance WraparoundJointRandomness<A, B>, &_s4VDAF25WraparoundJointRandomnessCyAA4PINEVyAA7Field40VSRySfGAA19XofHmacSha256Aes128CGAGGMd, &_s4VDAF25WraparoundJointRandomnessCyAA4PINEVyAA7Field40VSRySfGAA19XofHmacSha256Aes128CGAGGMR, 101777407);
    v290 = *&v255[104];
    v291 = *&v255[120];
    v292 = *&v255[136];
    v293 = *&v255[152];
    v286 = *&v255[40];
    v287 = *&v255[56];
    v288 = *&v255[72];
    v289 = *&v255[88];
    v284 = *&v255[8];
    v285 = *&v255[24];
    v213 = specialized PINECircuit.appendWraparoundCheck<A>(into:random:)(&v254, v121);
    v211[1] = v121;
    v22 = v254;
    v6 = MEMORY[0x277D84F90];
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v212, 0, MEMORY[0x277D84F90]);
    a6 = *(v8 + 2);
    v44 = *(v8 + 3);
    a5 = a6 + 1;
    if (a6 >= v44 >> 1)
    {
      goto LABEL_133;
    }

LABEL_72:
    v127 = v228;
    *(v8 + 2) = a5;
    *&v8[8 * a6 + 32] = v6;
    v249 = v22;

    if (!v127)
    {
      break;
    }

    v211[0] = v22;
    a6 = 0;
    v222 = (v220 + 32);
    v223 = (a3 + 32);
    v23 = &unk_270C44000;
    v234 = xmmword_270C44540;
    while (a6 != 255)
    {
      v23 = *(a3 + 2);
      if (a6 >= v23)
      {
        goto LABEL_124;
      }

      v235 = v8;
      v6 = (a6 + 1);
      a5 = v223[a6];

      a3 = _s4VDAF4PINEV19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt0B5Tm(0, 101777407);
      a1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
      v128 = swift_allocObject();
      *(v128 + 16) = v234;
      v242 = (a6 + 1);
      *(v128 + 32) = a6 + 1;
      v23 = *(a5 + 16);
      if (v23 != 32)
      {
        goto LABEL_125;
      }

      v22 = v128;
      v232 = a1;
      v233 = a6;
      v8 = a4;

      v129 = specialized XofHmacSha256Aes128.__allocating_init(seedBytes:domainSeparationTag:binder:)(a5, a3, v22);
      if (*(v129 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream))
      {
        goto LABEL_147;
      }

      v130 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_hmac;
      a1 = v129;
      swift_beginAccess();
      v131 = a1 + v130;
      v132 = v244;
      v133 = v305;
      (v238)(v244, v131, v305);
      a4 = v243;
      HMAC.finalize()();
      (v237)(v132, v133);
      a6 = v245;
      v6 = a4;
      HashedAuthenticationCode.withUnsafeBytes<A>(_:)();
      v231 = v8;
      (v236)(a4, a6);

      swift_setDeallocating();
      swift_deallocClassInstance();
      v134 = *(v249 + 2);
      v230 = a1;
      v135 = _s4VDAF12FieldElementPAAE12randomVector5count5usingSayxGSi_qd__tAA24ExtendableOutputFunctionRd__lFZAA7Field40V_AA19XofHmacSha256Aes128CTt1g5Tm(v134, a1, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), _s4VDAF12FieldElementPAAE06randomC05usingxqd___tAA24ExtendableOutputFunctionRd__lFZAA7Field40V_AA19XofHmacSha256Aes128CTt1g5);
      v23 = *(v220 + 16);
      if (v233 >= v23)
      {
        goto LABEL_126;
      }

      a5 = v135;
      v136 = (2 * *(v135 + 16)) | 1;
      v137 = v222[v233];
      swift_bridgeObjectRetain_n();

      v138 = _s4VDAF4PINEV19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt0B5Tm(6u, 101777407);
      v139 = swift_allocObject();
      v139[1] = v234;
      *(v139 + 32) = v242;
      v247 = v139;

      specialized Array.append<A>(contentsOf:)(v140);
      v141 = specialized XofHmacSha256Aes128.__allocating_init(seedBytes:domainSeparationTag:binder:)(v137, v138, v247);
      v142 = specialized VDAFEncodable.encodedBytes.getter((a5 + 32), 0, v136);
      (v229)(v142);

      v143 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream;
      if (*(v141 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream))
      {
        goto LABEL_148;
      }

      v233 = v137;
      v144 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_hmac;
      swift_beginAccess();
      v145 = v141 + v144;
      v146 = v244;
      v147 = v305;
      (v238)(v244, v145, v305);
      v148 = v243;
      HMAC.finalize()();
      (v237)(v146, v147);
      v149 = v245;
      v150 = v231;
      HashedAuthenticationCode.withUnsafeBytes<A>(_:)();
      a4 = v150;
      (v236)(v148, v149);
      v151 = *(v141 + v143);
      if (!v151)
      {
        goto LABEL_149;
      }

      v152 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v152 + 16) = 32;
      *(v152 + 48) = 0u;
      *(v152 + 32) = 0u;
      v153 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_key;
      v154 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_nonce;
      swift_beginAccess();
      specialized static AES.CTR.encryptInPlace(_:using:updating:)((v152 + 32), v152 + 64, v151 + v153, v151 + v154);
      if (v150)
      {
        goto LABEL_154;
      }

      swift_endAccess();

      v8 = v235;
      a1 = *(v235 + 16);
      v155 = *(v235 + 24);
      v22 = (a1 + 1);
      a3 = v225;
      if (a1 >= v155 >> 1)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v155 > 1), a1 + 1, 1, v235);
      }

      *(v8 + 2) = v22;
      *&v8[8 * a1 + 32] = v152;
      v6 = &v249;
      specialized Array<A>.elementwiseSubtract(_:)(a5);

      a6 = v242;
      v23 = v228;
      if (v228 == v242)
      {
        goto LABEL_85;
      }
    }

LABEL_123:
    __break(1u);
LABEL_124:
    __break(1u);
LABEL_125:
    __break(1u);
LABEL_126:
    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), a5, 1, v20);
  }

LABEL_85:
  v235 = v8;
  v156 = a4;

  a3 = v249;
  v157 = (2 * *(v249 + 2)) | 1;

  v158 = v218;

  v159 = _s4VDAF4PINEV19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt0B5Tm(6u, 101777407);
  v247 = &outlined read-only object #1 of specialized PINE.shard<A>(_:nonce:seedBytes:);

  specialized Array.append<A>(contentsOf:)(v160);
  v161 = specialized XofHmacSha256Aes128.__allocating_init(seedBytes:domainSeparationTag:binder:)(v158, v159, v247);
  v162 = specialized VDAFEncodable.encodedBytes.getter(a3 + 32, 0, v157);
  (v229)(v162);

  v163 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream;
  if (*(v161 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream))
  {
    goto LABEL_152;
  }

  v164 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_hmac;
  swift_beginAccess();
  v165 = v161 + v164;
  v166 = v244;
  v167 = v305;
  (v238)(v244, v165, v305);
  v168 = v243;
  HMAC.finalize()();
  (v237)(v166, v167);
  v169 = v245;
  v170 = v156;
  HashedAuthenticationCode.withUnsafeBytes<A>(_:)();
  a4 = v156;
  (v236)(v168, v169);
  v6 = *(v161 + v163);
  if (!v6)
  {
    goto LABEL_153;
  }

  v171 = *(v161 + v163);

  v172 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v172 + 16) = 32;
  *(v172 + 48) = 0u;
  *(v172 + 32) = 0u;
  v173 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_key;
  v8 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_nonce;
  swift_beginAccess();
  specialized static AES.CTR.encryptInPlace(_:using:updating:)((v172 + 32), v172 + 64, v6 + v173, &v8[v6]);
  if (a4)
  {
    goto LABEL_154;
  }

  v174 = v304[39];
  v175 = v304[40];
  swift_endAccess();

  v176 = v235;
  if (!*(v235 + 16))
  {
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
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
    goto LABEL_142;
  }

  v177 = *(v235 + 32);
  *(v235 + 32) = v172;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF27VerificationJointRandomnessCyAA4PINEVyAA7Field40VSRySfGAA19XofHmacSha256Aes128CGAGGMd, &_s4VDAF27VerificationJointRandomnessCyAA4PINEVyAA7Field40VSRySfGAA19XofHmacSha256Aes128CGAGGMR);
  v178 = swift_allocObject();
  v178[4] = 0;
  v178[5] = 3;
  v178[6] = v174;
  v178[2] = v176;
  v178[3] = 0;
  v241 = v178;

  specialized Array.append<A>(contentsOf:)(v213, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
  v6 = _s4VDAF4PINEV19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt0B5Tm(3u, 101777407);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v179 = swift_allocObject();
  *(v179 + 16) = xmmword_270C44550;
  if ((v175 & 0x8000000000000000) != 0)
  {
    goto LABEL_135;
  }

  if (v175 > 0xFF)
  {
    goto LABEL_136;
  }

  *(v179 + 32) = v175;
  if ((v174 & 0x8000000000000000) != 0)
  {
    goto LABEL_137;
  }

  if (v174 > 0xFF)
  {
    goto LABEL_138;
  }

  *(v179 + 33) = v174;
  v305 = _s4VDAF24ExtendableOutputFunctionPAAE7makeXOF4seed19domainSeparationTag6binderxAA4SeedV_Says5UInt8VGALtFZAA19XofHmacSha256Aes128C_Tt2g5(v217, v6, v179);

  swift_setDeallocating();
  swift_deallocClassInstance();
  a6 = v255;
  v280[6] = *&v255[104];
  v280[7] = *&v255[120];
  v280[8] = *&v255[136];
  v281 = *&v255[152];
  v280[2] = *&v255[40];
  v280[3] = *&v255[56];
  v280[4] = *&v255[72];
  v280[5] = *&v255[88];
  v280[0] = *&v255[8];
  v280[1] = *&v255[24];
  v282[6] = *&v255[256];
  v282[7] = *&v255[272];
  v282[8] = *&v255[288];
  v283 = *&v255[304];
  v282[2] = *&v255[192];
  v282[3] = *&v255[208];
  v282[4] = *&v255[224];
  v282[5] = *&v255[240];
  v282[0] = *&v255[160];
  v282[1] = *&v255[176];
  v6 = v282;
  v180 = specialized FullyLinearProof.proofLength.getter();
  v176 = v175 * v180;
  if ((v175 * v180) >> 64 != (v175 * v180) >> 63)
  {
    goto LABEL_139;
  }

  v6 = v280;
  v181 = specialized FullyLinearProof.proofLength.getter();
  v182 = v174 * v181;
  if ((v174 * v181) >> 64 != (v174 * v181) >> 63)
  {
    goto LABEL_140;
  }

  v27 = __OFADD__(v176, v182);
  v183 = v176 + v182;
  if (v27)
  {
    goto LABEL_141;
  }

  v245 = v174;
  v240 = a3;
  v184 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v183 & ~(v183 >> 63), 0, MEMORY[0x277D84F90]);
  v246[0] = v184;
  if (v175)
  {
    v186 = v254;
    v8 = MEMORY[0x277D84F90];
    do
    {
      v276 = *&v255[256];
      v277 = *&v255[272];
      v278 = *&v255[288];
      v279 = *&v255[304];
      v272 = *&v255[192];
      v273 = *&v255[208];
      v274 = *&v255[224];
      v275 = *&v255[240];
      v270 = *&v255[160];
      v271 = *&v255[176];
      v187 = specialized FullyLinearProof.proveRandLength.getter();
      a3 = _s4VDAF12FieldElementPAAE12randomVector5count5usingSayxGSi_qd__tAA24ExtendableOutputFunctionRd__lFZAA7Field40V_AA19XofHmacSha256Aes128CTt1g5Tm(v187, v305, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), _s4VDAF12FieldElementPAAE06randomC05usingxqd___tAA24ExtendableOutputFunctionRd__lFZAA7Field40V_AA19XofHmacSha256Aes128CTt1g5);
      v268[6] = *&v255[256];
      v268[7] = *&v255[272];
      v268[8] = *&v255[288];
      v269 = *&v255[304];
      v268[2] = *&v255[192];
      v268[3] = *&v255[208];
      v268[4] = *&v255[224];
      v268[5] = *&v255[240];
      v268[0] = *&v255[160];
      v268[1] = *&v255[176];
      v6 = v268;
      specialized FullyLinearProof.prove<A>(into:measurement:proveRand:jointRand:)(v246, v186, a3, v8);

      --v175;
    }

    while (v175);
  }

  v23 = v245;
  if (v245)
  {
    a5 = 0;
    v22 = v254;
    do
    {
      a1 = a5 + 1;
      if (__OFADD__(a5, 1))
      {
        goto LABEL_128;
      }

      v8 = specialized VerificationJointRandomness.next()();
      v264 = *&v255[104];
      v265 = *&v255[120];
      v266 = *&v255[136];
      v267 = *&v255[152];
      v261 = *&v255[56];
      v262 = *&v255[72];
      v263 = *&v255[88];
      v258 = *&v255[8];
      v259 = *&v255[24];
      v260 = *&v255[40];
      v188 = specialized FullyLinearProof.proveRandLength.getter();
      a3 = _s4VDAF12FieldElementPAAE12randomVector5count5usingSayxGSi_qd__tAA24ExtendableOutputFunctionRd__lFZAA7Field40V_AA19XofHmacSha256Aes128CTt1g5Tm(v188, v305, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), _s4VDAF12FieldElementPAAE06randomC05usingxqd___tAA24ExtendableOutputFunctionRd__lFZAA7Field40V_AA19XofHmacSha256Aes128CTt1g5);
      v256[6] = *&v255[104];
      v256[7] = *&v255[120];
      v256[8] = *&v255[136];
      v257 = *&v255[152];
      v256[2] = *&v255[40];
      v256[3] = *&v255[56];
      v256[4] = *&v255[72];
      v256[5] = *&v255[88];
      v256[0] = *&v255[8];
      v256[1] = *&v255[24];
      v6 = v256;
      specialized FullyLinearProof.prove<A>(into:measurement:proveRand:jointRand:)(v246, v22, a3, v8);

      ++a5;
      v23 = v245;
    }

    while (a1 != v245);
  }

  MEMORY[0x28223BE20](v184, v185);
  v189 = v215;
  v211[-2] = v216;
  v211[-1] = v255;
  _s4VDAF12VDAFProtocolPAAE10splitShare_4into_ySayqd__Gz_Siqd_0_SiXEtAA12FieldElementRd__AA24ExtendableOutputFunctionRd_0_r0_lFZAA4PINEVyAA7Field40VSRySfGAA19XofHmacSha256Aes128CG_AlOTt2g5(v246, v189, partial apply for specialized closure #5 in PINE.shard<A>(_:nonce:seedBytes:));

  a3 = v246[0];
  v190 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v212, 0, MEMORY[0x277D84F90]);
  v174 = v190[2];
  v170 = v190[3];
  v6 = v190;
  v176 = v174 + 1;
  v8 = v240;

  if (v174 < v170 >> 1)
  {
    goto LABEL_104;
  }

LABEL_142:
  v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v170 > 1), v176, 1, v6);
LABEL_104:
  v191 = v214;
  v192 = v235;
  v6[2] = v176;
  v193 = &v6[6 * v174];
  v193[4] = v8;
  *(v193 + 40) = 0;
  v193[6] = a3;
  *(v193 + 56) = 0;
  v194 = v218;
  v193[8] = v219;
  v193[9] = v194;
  v195 = v228;
  if (!v228)
  {

LABEL_113:

    v207 = v241;
    swift_setDeallocating();
    v208 = v207[2];

    v209 = v207[3];

    v210 = v207[4];

    swift_deallocClassInstance();

    *v191 = v239;
    v191[1] = v192;

    return v6;
  }

  *&v238 = a3;
  if (v228 <= *(v221 + 2))
  {
    v196 = v6;
    v197 = 48 * v174 + 120;
    v198 = v174 + 2;
    v199 = (v221 + 56);
    do
    {
      v228 = v195;
      v200 = *(v199 - 3);
      v201 = *(v199 - 2);
      v202 = *(v199 - 1);
      v203 = *v199;
      v244 = v196;
      v204 = v196[3];
      v242 = v200;

      v243 = v201;

      v245 = v202;

      if (v198 - 1 >= v204 >> 1)
      {
        v196 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v204 > 1), v198, 1, v244);
      }

      else
      {
        v196 = v244;
      }

      v196[2] = v198;
      v205 = (v196 + v197);
      v206 = v243;
      *(v205 - 5) = v242;
      *(v205 - 32) = 1;
      *(v205 - 3) = v206;
      *(v205 - 16) = 1;
      v197 += 48;
      ++v198;
      v199 += 4;
      *(v205 - 1) = v245;
      *v205 = v203;
      v195 = (v228 - 1);
    }

    while (v228 != 1);
    v6 = v196;

    v191 = v214;
    v192 = v235;
    goto LABEL_113;
  }

  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  swift_endAccess();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

{
  v8 = v7;
  v242 = a2;
  v305 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4HMACVyAA6SHA256VGMd, &_s9CryptoKit4HMACVyAA6SHA256VGMR);
  v227 = *(v305 - 8);
  v14 = *(v227 + 64);
  MEMORY[0x28223BE20](v305, v15);
  v244 = (v211 - v16);
  v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA256VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA256VGMR);
  v226 = *(v245 - 8);
  v17 = *(v226 + 64);
  MEMORY[0x28223BE20](v245, v18);
  v243 = v211 - v19;
  memcpy(v255, v6, sizeof(v255));
  v240 = a4;
  v21 = *(a4 + 2);
  if (v21 != 16)
  {
    v252 = 0;
    v253 = 0xE000000000000000;
    _StringGuts.grow(_:)(44);

    v252 = 0xD00000000000002FLL;
    v253 = 0x8000000270C51F20;
    v251 = 16;
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v24);

    MEMORY[0x2743B25F0](0x3D746F67202CLL, 0xE600000000000000);
    v251 = v21;
    goto LABEL_70;
  }

  v22 = (a6 >> 62);
  if ((a6 >> 62) <= 1)
  {
    if (!v22)
    {
      v23 = BYTE6(a6);
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (v22 != 2)
  {
    v23 = 0;
    goto LABEL_13;
  }

  v26 = *(a5 + 16);
  v25 = *(a5 + 24);
  v27 = __OFSUB__(v25, v26);
  v23 = v25 - v26;
  if (v27)
  {
    __break(1u);
LABEL_10:
    v23 = (HIDWORD(a5) - a5);
    if (__OFSUB__(HIDWORD(a5), a5))
    {
      goto LABEL_127;
    }

    v23 = v23;
  }

LABEL_13:
  v28 = *v6;
  v29 = *v6 - 1;
  if (__OFSUB__(*v6, 1))
  {
    goto LABEL_118;
  }

  if ((*v6 + 0x3FFFFFFFFFFFFFFFLL) < 0)
  {
    goto LABEL_119;
  }

  if ((v28 + 0x4000000000000000) < 0)
  {
    goto LABEL_120;
  }

  v30 = 2 * v29 + 2 * v28;
  if (__OFADD__(2 * v29, 2 * v28))
  {
    goto LABEL_121;
  }

  if ((v30 - 0x3FFFFFFFFFFFFFFLL) >> 59 != 31)
  {
    goto LABEL_122;
  }

  v31 = (32 * v30) | 0x20;
  if (v23 != v31)
  {
    v252 = 0;
    v253 = 0xE000000000000000;
    _StringGuts.grow(_:)(39);

    v252 = 0xD00000000000002ALL;
    v253 = 0x8000000270C51F50;
    v251 = v31;
    v42 = dispatch thunk of CustomStringConvertible.description.getter();
    a4 = v43;
    MEMORY[0x2743B25F0](v42);

    v6 = &v252;
    MEMORY[0x2743B25F0](0x3D746F67202CLL, 0xE600000000000000);
    if (v22 > 1)
    {
      v44 = 0;
      if (v22 == 2)
      {
        v63 = *(a5 + 16);
        v62 = *(a5 + 24);
        v27 = __OFSUB__(v62, v63);
        v44 = v62 - v63;
        if (v27)
        {
          __break(1u);
          goto LABEL_44;
        }
      }
    }

    else if (v22)
    {
      v44 = (HIDWORD(a5) - a5);
      if (__OFSUB__(HIDWORD(a5), a5))
      {
        goto LABEL_132;
      }

      v44 = v44;
    }

    else
    {
      v44 = BYTE6(a6);
    }

    v251 = v44;
LABEL_70:
    v123 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v123);

    v124 = v252;
    v125 = v253;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v126 = v124;
    *(v126 + 8) = v125;
    *(v126 + 16) = 1;
    return swift_willThrow();
  }

  v214 = a1;
  v215 = v28;
  v228 = v29;
  a4 = v255;
  memcpy(v304, v6, sizeof(v304));
  v22 = specialized PINE.splitSeedBytes<A>(_:)(a5, a6);
  v218 = v33;
  v219 = v32;
  v217 = v34;
  v35 = *(v22 + 2);
  a1 = MEMORY[0x277D84F90];
  v221 = v22;
  if (v35)
  {
    *&v238 = a3;
    v239 = v7;
    v252 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35, 0);
    v36 = v252;
    v37 = (v22 + 32);
    v38 = v35;
    do
    {
      v39 = *v37;
      v252 = v36;
      v41 = *(v36 + 16);
      v40 = *(v36 + 24);

      if (v41 >= v40 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1);
        v36 = v252;
      }

      *(v36 + 16) = v41 + 1;
      *(v36 + 8 * v41 + 32) = v39;
      v37 += 4;
      --v38;
    }

    while (v38);
    v252 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35, 0);
    v45 = v252;
    v46 = (v221 + 40);
    v47 = v35;
    do
    {
      v48 = *v46;
      v252 = v45;
      v50 = *(v45 + 16);
      v49 = *(v45 + 24);

      if (v50 >= v49 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1);
        v45 = v252;
      }

      *(v45 + 16) = v50 + 1;
      *(v45 + 8 * v50 + 32) = v48;
      v46 += 4;
      --v47;
    }

    while (v47);
    a1 = v36;
    v216 = v45;
    v252 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35, 0);
    v51 = v252;
    v52 = (v221 + 48);
    v53 = v35;
    do
    {
      v54 = *v52;
      v252 = v51;
      v56 = *(v51 + 16);
      v55 = *(v51 + 24);

      if (v56 >= v55 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v56 + 1, 1);
        v51 = v252;
      }

      *(v51 + 16) = v56 + 1;
      *(v51 + 8 * v56 + 32) = v54;
      v52 += 4;
      --v53;
    }

    while (v53);
    v241 = v51;
    v252 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35, 0);
    v57 = v252;
    v58 = (v221 + 56);
    a3 = v238;
    do
    {
      v59 = *v58;
      v252 = v57;
      v61 = *(v57 + 16);
      v60 = *(v57 + 24);

      if (v61 >= v60 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v60 > 1), v61 + 1, 1);
        v57 = v252;
      }

      *(v57 + 16) = v61 + 1;
      *(v57 + 8 * v61 + 32) = v59;
      v58 += 4;
      --v35;
    }

    while (v35);
    v220 = v57;
    v22 = v221;
    a4 = v255;
    v8 = v239;
    goto LABEL_45;
  }

LABEL_44:
  v241 = a1;
  v216 = a1;
  v220 = a1;
LABEL_45:
  v254 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v304[10] & ~(v304[10] >> 63), 0, MEMORY[0x277D84F90]);
  v64 = *(a4 + 120);
  v300 = *(a4 + 104);
  v301 = v64;
  v302 = *(a4 + 136);
  v303 = *&v255[152];
  v65 = *(a4 + 56);
  v296 = *(a4 + 40);
  v297 = v65;
  v66 = *(a4 + 88);
  v298 = *(a4 + 72);
  v299 = v66;
  v67 = *(a4 + 24);
  v294 = *(a4 + 8);
  v295 = v67;
  specialized PINECircuit.encodeMeasurementAndNormRangeCheck(raw:into:)(v242, a3, &v254);
  a4 = v8;
  if (v8)
  {
  }

  v213 = v254;
  v6 = MEMORY[0x277D84F90];
  v212 = v215 & ~(v215 >> 63);
  v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v212, 0, MEMORY[0x277D84F90]);
  a6 = *(v20 + 2);
  v23 = *(v20 + 3);
  a5 = a6 + 1;
  if (a6 >= v23 >> 1)
  {
    goto LABEL_129;
  }

  while (1)
  {
    v68 = v228;
    *(v20 + 2) = a5;
    v239 = v20;
    v44 = &v20[8 * a6];
    *(v44 + 32) = v6;
    v248 = v213;
    if ((v68 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), a5, 1, v8);
      goto LABEL_72;
    }

    v225 = a1;
    if (v68)
    {
      a6 = 0;
      v236 = (v227 + 8);
      v237 = (v227 + 16);
      v223 = (v226 + 8);
      v224 = a1 + 32;
      v222 = v241 + 4;
      v23 = &unk_270C44000;
      v238 = xmmword_270C44540;
      while (a6 != 255)
      {
        v23 = *(a1 + 16);
        if (a6 >= v23)
        {
          goto LABEL_115;
        }

        v6 = (a6 + 1);
        a5 = *(v224 + 8 * a6);

        a3 = _s4VDAF4PINEV19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt0B5Tm(0, 85000191);
        a1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
        v69 = swift_allocObject();
        *(v69 + 16) = v238;
        v242 = (a6 + 1);
        *(v69 + 32) = a6 + 1;
        v23 = *(a5 + 16);
        if (v23 != 32)
        {
          goto LABEL_116;
        }

        v22 = v69;
        *&v234 = a1;
        v235 = a6;
        v70 = a4;

        v71 = specialized XofHmacSha256Aes128.__allocating_init(seedBytes:domainSeparationTag:binder:)(a5, a3, v22);
        if (*(v71 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream))
        {
          goto LABEL_144;
        }

        v72 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_hmac;
        a6 = v71;
        swift_beginAccess();
        v73 = a6 + v72;
        v74 = v244;
        v75 = v305;
        v233 = *v237;
        (v233)(v244, v73, v305);
        v8 = v243;
        HMAC.finalize()();
        v232 = *v236;
        v232(v74, v75);
        a4 = v245;
        HashedAuthenticationCode.withUnsafeBytes<A>(_:)();
        v231 = v70;
        a1 = v223;
        v6 = *v223;
        (*v223)(v8, a4);

        swift_setDeallocating();
        swift_deallocClassInstance();
        v76 = *(v248 + 2);
        v230 = a6;
        v77 = _s4VDAF12FieldElementPAAE12randomVector5count5usingSayxGSi_qd__tAA24ExtendableOutputFunctionRd__lFZAA7Field32V_AA19XofHmacSha256Aes128CTt1g5(v76, a6);
        v23 = v241[2];
        if (v235 >= v23)
        {
          goto LABEL_117;
        }

        v78 = v77;
        v229 = v6;
        v79 = (2 * *(v77 + 16)) | 1;
        v80 = v222[v235];
        swift_bridgeObjectRetain_n();

        v81 = _s4VDAF4PINEV19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt0B5Tm(9u, 85000191);
        v82 = swift_allocObject();
        v82[1] = v238;
        *(v82 + 32) = v242;
        v250 = v82;

        specialized Array.append<A>(contentsOf:)(v83);
        v235 = v80;
        v8 = specialized XofHmacSha256Aes128.__allocating_init(seedBytes:domainSeparationTag:binder:)(v80, v81, v250);
        specialized VDAFEncodable.encodedBytes.getter((v78 + 32), 0, v79);
        v84 = off_2880A7738[0];
        type metadata accessor for XofHmacSha256Aes128(0);
        v84();

        v85 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream;
        if (*&v8[OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream])
        {
          goto LABEL_145;
        }

        *&v234 = v78;
        v86 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_hmac;
        swift_beginAccess();
        v87 = &v8[v86];
        v88 = v244;
        v89 = v305;
        (v233)(v244, v87, v305);
        v90 = v243;
        HMAC.finalize()();
        v232(v88, v89);
        v91 = v245;
        v92 = v231;
        HashedAuthenticationCode.withUnsafeBytes<A>(_:)();
        a4 = v92;
        (v229)(v90, v91);
        v93 = *&v8[v85];
        if (!v93)
        {
          goto LABEL_146;
        }

        v94 = *&v8[v85];

        v95 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v95 + 16) = 32;
        *(v95 + 48) = 0u;
        *(v95 + 32) = 0u;
        a3 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_key;
        v96 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_nonce;
        swift_beginAccess();
        specialized static AES.CTR.encryptInPlace(_:using:updating:)((v95 + 32), v95 + 64, &a3[v93], v93 + v96);
        if (v92)
        {
          goto LABEL_154;
        }

        swift_endAccess();

        a5 = v234;

        v97 = v239;
        v99 = *(v239 + 2);
        v98 = *(v239 + 3);
        v22 = (v99 + 1);
        a1 = v225;
        if (v99 >= v98 >> 1)
        {
          v97 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v98 > 1), v99 + 1, 1, v239);
        }

        *(v97 + 2) = v22;
        v239 = v97;
        *&v97[8 * v99 + 32] = v95;
        v6 = &v248;
        specialized Array<A>.elementwiseSubtract(_:)(a5);

        a6 = v242;
        v23 = v228;
        if (v228 == v242)
        {
          goto LABEL_62;
        }
      }

      __break(1u);
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
LABEL_122:
      __break(1u);
      goto LABEL_123;
    }

LABEL_62:
    v100 = a4;

    a5 = v248;
    v101 = (2 * *(v248 + 2)) | 1;

    v102 = v219;

    v103 = _s4VDAF4PINEV19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt0B5Tm(9u, 85000191);
    v250 = &outlined read-only object #0 of specialized PINE.shard<A>(_:nonce:seedBytes:);

    specialized Array.append<A>(contentsOf:)(v104);
    a6 = specialized XofHmacSha256Aes128.__allocating_init(seedBytes:domainSeparationTag:binder:)(v102, v103, v250);
    specialized VDAFEncodable.encodedBytes.getter((a5 + 32), 0, v101);
    v105 = off_2880A7738[0];
    v224 = type metadata accessor for XofHmacSha256Aes128(0);
    v229 = v105;
    v105();

    v106 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream;
    if (*(a6 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream))
    {
      goto LABEL_150;
    }

    v107 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_hmac;
    swift_beginAccess();
    v108 = v227;
    v109 = *(v227 + 16);
    v110 = a6 + v107;
    v111 = v244;
    v112 = v305;
    v241 = (v227 + 16);
    *&v238 = v109;
    v109(v244, v110, v305);
    v113 = v243;
    HMAC.finalize()();
    v114 = *(v108 + 8);
    v227 = v108 + 8;
    v237 = v114;
    (v114)(v111, v112);
    v115 = v245;
    HashedAuthenticationCode.withUnsafeBytes<A>(_:)();
    a4 = v100;
    v116 = *(v226 + 8);
    v226 += 8;
    v236 = v116;
    (v116)(v113, v115);
    v6 = *(a6 + v106);
    if (!v6)
    {
      goto LABEL_151;
    }

    v117 = *(a6 + v106);

    v22 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v22 + 2) = 32;
    *(v22 + 3) = 0u;
    *(v22 + 2) = 0u;
    a1 = (v22 + 32);
    v8 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_key;
    v118 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_nonce;
    swift_beginAccess();
    specialized static AES.CTR.encryptInPlace(_:using:updating:)(v22 + 2, (v22 + 64), &v8[v6], v6 + v118);
    if (a4)
    {
      goto LABEL_154;
    }

    swift_endAccess();

    v44 = *(v239 + 2);
    a3 = v225;
    if (!v44)
    {
      goto LABEL_131;
    }

    v119 = *(v239 + 4);
    *(v239 + 4) = v22;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF25WraparoundJointRandomnessCyAA4PINEVyAA7Field32VSRySfGAA19XofHmacSha256Aes128CGAGGMd, &_s4VDAF25WraparoundJointRandomnessCyAA4PINEVyAA7Field32VSRySfGAA19XofHmacSha256Aes128CGAGGMR);
    swift_allocObject();

    v121 = specialized WraparoundJointRandomness.init(parts:)(v120, &lazy protocol witness table cache variable for type WraparoundJointRandomness<PINE<Field32, UnsafeBufferPointer<Float>, XofHmacSha256Aes128>, Field32> and conformance WraparoundJointRandomness<A, B>, &_s4VDAF25WraparoundJointRandomnessCyAA4PINEVyAA7Field32VSRySfGAA19XofHmacSha256Aes128CGAGGMd, &_s4VDAF25WraparoundJointRandomnessCyAA4PINEVyAA7Field32VSRySfGAA19XofHmacSha256Aes128CGAGGMR, 85000191);
    v290 = *&v255[104];
    v291 = *&v255[120];
    v292 = *&v255[136];
    v293 = *&v255[152];
    v286 = *&v255[40];
    v287 = *&v255[56];
    v288 = *&v255[72];
    v289 = *&v255[88];
    v284 = *&v255[8];
    v285 = *&v255[24];
    v213 = specialized PINECircuit.appendWraparoundCheck<A>(into:random:)(&v254, v121);
    v211[1] = v121;
    v22 = v254;
    v6 = MEMORY[0x277D84F90];
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v212, 0, MEMORY[0x277D84F90]);
    a6 = *(v8 + 2);
    v44 = *(v8 + 3);
    a5 = a6 + 1;
    if (a6 >= v44 >> 1)
    {
      goto LABEL_133;
    }

LABEL_72:
    v127 = v228;
    *(v8 + 2) = a5;
    *&v8[8 * a6 + 32] = v6;
    v249 = v22;

    if (!v127)
    {
      break;
    }

    v211[0] = v22;
    a6 = 0;
    v222 = (v220 + 32);
    v223 = (a3 + 32);
    v23 = &unk_270C44000;
    v234 = xmmword_270C44540;
    while (a6 != 255)
    {
      v23 = *(a3 + 2);
      if (a6 >= v23)
      {
        goto LABEL_124;
      }

      v235 = v8;
      v6 = (a6 + 1);
      a5 = v223[a6];

      a3 = _s4VDAF4PINEV19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt0B5Tm(0, 85000191);
      a1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
      v128 = swift_allocObject();
      *(v128 + 16) = v234;
      v242 = (a6 + 1);
      *(v128 + 32) = a6 + 1;
      v23 = *(a5 + 16);
      if (v23 != 32)
      {
        goto LABEL_125;
      }

      v22 = v128;
      v232 = a1;
      v233 = a6;
      v8 = a4;

      v129 = specialized XofHmacSha256Aes128.__allocating_init(seedBytes:domainSeparationTag:binder:)(a5, a3, v22);
      if (*(v129 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream))
      {
        goto LABEL_147;
      }

      v130 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_hmac;
      a1 = v129;
      swift_beginAccess();
      v131 = a1 + v130;
      v132 = v244;
      v133 = v305;
      (v238)(v244, v131, v305);
      a4 = v243;
      HMAC.finalize()();
      (v237)(v132, v133);
      a6 = v245;
      v6 = a4;
      HashedAuthenticationCode.withUnsafeBytes<A>(_:)();
      v231 = v8;
      (v236)(a4, a6);

      swift_setDeallocating();
      swift_deallocClassInstance();
      v134 = *(v249 + 2);
      v230 = a1;
      v135 = _s4VDAF12FieldElementPAAE12randomVector5count5usingSayxGSi_qd__tAA24ExtendableOutputFunctionRd__lFZAA7Field32V_AA19XofHmacSha256Aes128CTt1g5(v134, a1);
      v23 = *(v220 + 16);
      if (v233 >= v23)
      {
        goto LABEL_126;
      }

      a5 = v135;
      v136 = (2 * *(v135 + 16)) | 1;
      v137 = v222[v233];
      swift_bridgeObjectRetain_n();

      v138 = _s4VDAF4PINEV19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt0B5Tm(6u, 85000191);
      v139 = swift_allocObject();
      v139[1] = v234;
      *(v139 + 32) = v242;
      v247 = v139;

      specialized Array.append<A>(contentsOf:)(v140);
      v141 = specialized XofHmacSha256Aes128.__allocating_init(seedBytes:domainSeparationTag:binder:)(v137, v138, v247);
      v142 = specialized VDAFEncodable.encodedBytes.getter((a5 + 32), 0, v136);
      (v229)(v142);

      v143 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream;
      if (*(v141 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream))
      {
        goto LABEL_148;
      }

      v233 = v137;
      v144 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_hmac;
      swift_beginAccess();
      v145 = v141 + v144;
      v146 = v244;
      v147 = v305;
      (v238)(v244, v145, v305);
      v148 = v243;
      HMAC.finalize()();
      (v237)(v146, v147);
      v149 = v245;
      v150 = v231;
      HashedAuthenticationCode.withUnsafeBytes<A>(_:)();
      a4 = v150;
      (v236)(v148, v149);
      v151 = *(v141 + v143);
      if (!v151)
      {
        goto LABEL_149;
      }

      v152 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v152 + 16) = 32;
      *(v152 + 48) = 0u;
      *(v152 + 32) = 0u;
      v153 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_key;
      v154 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_nonce;
      swift_beginAccess();
      specialized static AES.CTR.encryptInPlace(_:using:updating:)((v152 + 32), v152 + 64, v151 + v153, v151 + v154);
      if (v150)
      {
        goto LABEL_154;
      }

      swift_endAccess();

      v8 = v235;
      a1 = *(v235 + 16);
      v155 = *(v235 + 24);
      v22 = (a1 + 1);
      a3 = v225;
      if (a1 >= v155 >> 1)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v155 > 1), a1 + 1, 1, v235);
      }

      *(v8 + 2) = v22;
      *&v8[8 * a1 + 32] = v152;
      v6 = &v249;
      specialized Array<A>.elementwiseSubtract(_:)(a5);

      a6 = v242;
      v23 = v228;
      if (v228 == v242)
      {
        goto LABEL_85;
      }
    }

LABEL_123:
    __break(1u);
LABEL_124:
    __break(1u);
LABEL_125:
    __break(1u);
LABEL_126:
    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), a5, 1, v20);
  }

LABEL_85:
  v235 = v8;
  v156 = a4;

  a3 = v249;
  v157 = (2 * *(v249 + 2)) | 1;

  v158 = v218;

  v159 = _s4VDAF4PINEV19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt0B5Tm(6u, 85000191);
  v247 = &outlined read-only object #1 of specialized PINE.shard<A>(_:nonce:seedBytes:);

  specialized Array.append<A>(contentsOf:)(v160);
  v161 = specialized XofHmacSha256Aes128.__allocating_init(seedBytes:domainSeparationTag:binder:)(v158, v159, v247);
  v162 = specialized VDAFEncodable.encodedBytes.getter(a3 + 32, 0, v157);
  (v229)(v162);

  v163 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream;
  if (*(v161 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream))
  {
    goto LABEL_152;
  }

  v164 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_hmac;
  swift_beginAccess();
  v165 = v161 + v164;
  v166 = v244;
  v167 = v305;
  (v238)(v244, v165, v305);
  v168 = v243;
  HMAC.finalize()();
  (v237)(v166, v167);
  v169 = v245;
  v170 = v156;
  HashedAuthenticationCode.withUnsafeBytes<A>(_:)();
  a4 = v156;
  (v236)(v168, v169);
  v6 = *(v161 + v163);
  if (!v6)
  {
    goto LABEL_153;
  }

  v171 = *(v161 + v163);

  v172 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v172 + 16) = 32;
  *(v172 + 48) = 0u;
  *(v172 + 32) = 0u;
  v173 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_key;
  v8 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_nonce;
  swift_beginAccess();
  specialized static AES.CTR.encryptInPlace(_:using:updating:)((v172 + 32), v172 + 64, v6 + v173, &v8[v6]);
  if (a4)
  {
    goto LABEL_154;
  }

  v174 = v304[39];
  v175 = v304[40];
  swift_endAccess();

  v176 = v235;
  if (!*(v235 + 16))
  {
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
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
    goto LABEL_142;
  }

  v177 = *(v235 + 32);
  *(v235 + 32) = v172;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF27VerificationJointRandomnessCyAA4PINEVyAA7Field32VSRySfGAA19XofHmacSha256Aes128CGAGGMd, &_s4VDAF27VerificationJointRandomnessCyAA4PINEVyAA7Field32VSRySfGAA19XofHmacSha256Aes128CGAGGMR);
  v178 = swift_allocObject();
  v178[4] = 0;
  v178[5] = 3;
  v178[6] = v174;
  v178[2] = v176;
  v178[3] = 0;
  v241 = v178;

  specialized Array.append<A>(contentsOf:)(v213);
  v6 = _s4VDAF4PINEV19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt0B5Tm(3u, 85000191);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v179 = swift_allocObject();
  *(v179 + 16) = xmmword_270C44550;
  if ((v175 & 0x8000000000000000) != 0)
  {
    goto LABEL_135;
  }

  if (v175 > 0xFF)
  {
    goto LABEL_136;
  }

  *(v179 + 32) = v175;
  if ((v174 & 0x8000000000000000) != 0)
  {
    goto LABEL_137;
  }

  if (v174 > 0xFF)
  {
    goto LABEL_138;
  }

  *(v179 + 33) = v174;
  v305 = _s4VDAF24ExtendableOutputFunctionPAAE7makeXOF4seed19domainSeparationTag6binderxAA4SeedV_Says5UInt8VGALtFZAA19XofHmacSha256Aes128C_Tt2g5(v217, v6, v179);

  swift_setDeallocating();
  swift_deallocClassInstance();
  a6 = v255;
  v280[6] = *&v255[104];
  v280[7] = *&v255[120];
  v280[8] = *&v255[136];
  v281 = *&v255[152];
  v280[2] = *&v255[40];
  v280[3] = *&v255[56];
  v280[4] = *&v255[72];
  v280[5] = *&v255[88];
  v280[0] = *&v255[8];
  v280[1] = *&v255[24];
  v282[6] = *&v255[256];
  v282[7] = *&v255[272];
  v282[8] = *&v255[288];
  v283 = *&v255[304];
  v282[2] = *&v255[192];
  v282[3] = *&v255[208];
  v282[4] = *&v255[224];
  v282[5] = *&v255[240];
  v282[0] = *&v255[160];
  v282[1] = *&v255[176];
  v6 = v282;
  v180 = specialized FullyLinearProof.proofLength.getter();
  v176 = v175 * v180;
  if ((v175 * v180) >> 64 != (v175 * v180) >> 63)
  {
    goto LABEL_139;
  }

  v6 = v280;
  v181 = specialized FullyLinearProof.proofLength.getter();
  v182 = v174 * v181;
  if ((v174 * v181) >> 64 != (v174 * v181) >> 63)
  {
    goto LABEL_140;
  }

  v27 = __OFADD__(v176, v182);
  v183 = v176 + v182;
  if (v27)
  {
    goto LABEL_141;
  }

  v245 = v174;
  v240 = a3;
  v184 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v183 & ~(v183 >> 63), 0, MEMORY[0x277D84F90]);
  v246[0] = v184;
  if (v175)
  {
    v186 = v254;
    v8 = MEMORY[0x277D84F90];
    do
    {
      v276 = *&v255[256];
      v277 = *&v255[272];
      v278 = *&v255[288];
      v279 = *&v255[304];
      v272 = *&v255[192];
      v273 = *&v255[208];
      v274 = *&v255[224];
      v275 = *&v255[240];
      v270 = *&v255[160];
      v271 = *&v255[176];
      v187 = specialized FullyLinearProof.proveRandLength.getter();
      a3 = _s4VDAF12FieldElementPAAE12randomVector5count5usingSayxGSi_qd__tAA24ExtendableOutputFunctionRd__lFZAA7Field32V_AA19XofHmacSha256Aes128CTt1g5(v187, v305);
      v268[6] = *&v255[256];
      v268[7] = *&v255[272];
      v268[8] = *&v255[288];
      v269 = *&v255[304];
      v268[2] = *&v255[192];
      v268[3] = *&v255[208];
      v268[4] = *&v255[224];
      v268[5] = *&v255[240];
      v268[0] = *&v255[160];
      v268[1] = *&v255[176];
      v6 = v268;
      specialized FullyLinearProof.prove<A>(into:measurement:proveRand:jointRand:)(v246, v186, a3, v8);

      --v175;
    }

    while (v175);
  }

  v23 = v245;
  if (v245)
  {
    a5 = 0;
    v22 = v254;
    do
    {
      a1 = a5 + 1;
      if (__OFADD__(a5, 1))
      {
        goto LABEL_128;
      }

      v8 = specialized VerificationJointRandomness.next()();
      v264 = *&v255[104];
      v265 = *&v255[120];
      v266 = *&v255[136];
      v267 = *&v255[152];
      v261 = *&v255[56];
      v262 = *&v255[72];
      v263 = *&v255[88];
      v258 = *&v255[8];
      v259 = *&v255[24];
      v260 = *&v255[40];
      v188 = specialized FullyLinearProof.proveRandLength.getter();
      a3 = _s4VDAF12FieldElementPAAE12randomVector5count5usingSayxGSi_qd__tAA24ExtendableOutputFunctionRd__lFZAA7Field32V_AA19XofHmacSha256Aes128CTt1g5(v188, v305);
      v256[6] = *&v255[104];
      v256[7] = *&v255[120];
      v256[8] = *&v255[136];
      v257 = *&v255[152];
      v256[2] = *&v255[40];
      v256[3] = *&v255[56];
      v256[4] = *&v255[72];
      v256[5] = *&v255[88];
      v256[0] = *&v255[8];
      v256[1] = *&v255[24];
      v6 = v256;
      specialized FullyLinearProof.prove<A>(into:measurement:proveRand:jointRand:)(v246, v22, a3, v8);

      ++a5;
      v23 = v245;
    }

    while (a1 != v245);
  }

  MEMORY[0x28223BE20](v184, v185);
  v189 = v215;
  v211[-2] = v216;
  v211[-1] = v255;
  _s4VDAF12VDAFProtocolPAAE10splitShare_4into_ySayqd__Gz_Siqd_0_SiXEtAA12FieldElementRd__AA24ExtendableOutputFunctionRd_0_r0_lFZAA4PINEVyAA7Field32VSRySfGAA19XofHmacSha256Aes128CG_AlOTt2g5(v246, v189, partial apply for specialized closure #5 in PINE.shard<A>(_:nonce:seedBytes:));

  a3 = v246[0];
  v190 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v212, 0, MEMORY[0x277D84F90]);
  v174 = v190[2];
  v170 = v190[3];
  v6 = v190;
  v176 = v174 + 1;
  v8 = v240;

  if (v174 < v170 >> 1)
  {
    goto LABEL_104;
  }

LABEL_142:
  v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v170 > 1), v176, 1, v6);
LABEL_104:
  v191 = v214;
  v192 = v235;
  v6[2] = v176;
  v193 = &v6[6 * v174];
  v193[4] = v8;
  *(v193 + 40) = 0;
  v193[6] = a3;
  *(v193 + 56) = 0;
  v194 = v218;
  v193[8] = v219;
  v193[9] = v194;
  v195 = v228;
  if (!v228)
  {

LABEL_113:

    v207 = v241;
    swift_setDeallocating();
    v208 = v207[2];

    v209 = v207[3];

    v210 = v207[4];

    swift_deallocClassInstance();

    *v191 = v239;
    v191[1] = v192;

    return v6;
  }

  *&v238 = a3;
  if (v228 <= *(v221 + 2))
  {
    v196 = v6;
    v197 = 48 * v174 + 120;
    v198 = v174 + 2;
    v199 = (v221 + 56);
    do
    {
      v228 = v195;
      v200 = *(v199 - 3);
      v201 = *(v199 - 2);
      v202 = *(v199 - 1);
      v203 = *v199;
      v244 = v196;
      v204 = v196[3];
      v242 = v200;

      v243 = v201;

      v245 = v202;

      if (v198 - 1 >= v204 >> 1)
      {
        v196 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v204 > 1), v198, 1, v244);
      }

      else
      {
        v196 = v244;
      }

      v196[2] = v198;
      v205 = (v196 + v197);
      v206 = v243;
      *(v205 - 5) = v242;
      *(v205 - 32) = 1;
      *(v205 - 3) = v206;
      *(v205 - 16) = 1;
      v197 += 48;
      ++v198;
      v199 += 4;
      *(v205 - 1) = v245;
      *v205 = v203;
      v195 = (v228 - 1);
    }

    while (v228 != 1);
    v6 = v196;

    v191 = v214;
    v192 = v235;
    goto LABEL_113;
  }

  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  swift_endAccess();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t specialized PINE.shard<A>(_:nonce:seedBytes:)(float *a1, float *a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  v8 = v7;
  v257 = a2;
  v321 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4HMACVyAA6SHA256VGMd, &_s9CryptoKit4HMACVyAA6SHA256VGMR);
  v242 = *(v321 - 8);
  v14 = *(v242 + 64);
  MEMORY[0x28223BE20](v321, v15);
  v259 = (&v225 - v16);
  v260 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA256VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA256VGMR);
  v241 = *(v260 - 1);
  v17 = *(v241 + 64);
  MEMORY[0x28223BE20](v260, v18);
  v258 = &v225 - v19;
  memcpy(v271, v6, sizeof(v271));
  v255 = a4;
  v21 = *(a4 + 16);
  if (v21 != 16)
  {
    v268 = 0;
    v269 = 0xE000000000000000;
    _StringGuts.grow(_:)(44);

    v268 = 0xD00000000000002FLL;
    v269 = 0x8000000270C51F20;
    v267 = 16;
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v24);

    MEMORY[0x2743B25F0](0x3D746F67202CLL, 0xE600000000000000);
    v267 = v21;
    goto LABEL_70;
  }

  v22 = (a6 >> 62);
  if ((a6 >> 62) <= 1)
  {
    if (!v22)
    {
      v23 = BYTE6(a6);
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (v22 != 2)
  {
    v23 = 0;
    goto LABEL_13;
  }

  v26 = *(a5 + 16);
  v25 = *(a5 + 24);
  v27 = __OFSUB__(v25, v26);
  v23 = v25 - v26;
  if (v27)
  {
    __break(1u);
LABEL_10:
    v23 = (HIDWORD(a5) - a5);
    if (__OFSUB__(HIDWORD(a5), a5))
    {
      goto LABEL_133;
    }

    v23 = v23;
  }

LABEL_13:
  v28 = *v6;
  v29 = *v6 - 1;
  if (__OFSUB__(*v6, 1))
  {
    goto LABEL_124;
  }

  if ((*v6 + 0x3FFFFFFFFFFFFFFFLL) < 0)
  {
    goto LABEL_125;
  }

  if ((v28 + 0x4000000000000000) < 0)
  {
    goto LABEL_126;
  }

  v30 = 2 * v29 + 2 * v28;
  if (__OFADD__(2 * v29, 2 * v28))
  {
    goto LABEL_127;
  }

  if ((v30 - 0x3FFFFFFFFFFFFFFLL) >> 59 != 31)
  {
    goto LABEL_128;
  }

  v31 = (32 * v30) | 0x20;
  if (v23 != v31)
  {
    v268 = 0;
    v269 = 0xE000000000000000;
    _StringGuts.grow(_:)(39);

    v268 = 0xD00000000000002ALL;
    v269 = 0x8000000270C51F50;
    v267 = v31;
    v42 = dispatch thunk of CustomStringConvertible.description.getter();
    a4 = v43;
    MEMORY[0x2743B25F0](v42);

    v6 = &v268;
    MEMORY[0x2743B25F0](0x3D746F67202CLL, 0xE600000000000000);
    if (v22 > 1)
    {
      v44 = 0;
      if (v22 == 2)
      {
        v62 = *(a5 + 16);
        v61 = *(a5 + 24);
        v27 = __OFSUB__(v61, v62);
        v44 = v61 - v62;
        if (v27)
        {
          __break(1u);
          goto LABEL_44;
        }
      }
    }

    else if (v22)
    {
      v44 = (HIDWORD(a5) - a5);
      if (__OFSUB__(HIDWORD(a5), a5))
      {
        goto LABEL_138;
      }

      v44 = v44;
    }

    else
    {
      v44 = BYTE6(a6);
    }

    v267 = v44;
LABEL_70:
    v124 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v124);

    v125 = v268;
    v126 = v269;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v127 = v125;
    *(v127 + 8) = v126;
    *(v127 + 16) = 1;
    return swift_willThrow();
  }

  v256 = a3;
  v229 = a1;
  v230 = v28;
  v243 = v29;
  v22 = v271;
  memcpy(v320, v6, sizeof(v320));
  v32 = specialized PINE.splitSeedBytes<A>(_:)(a5, a6);
  v233 = v34;
  v234 = v33;
  v232 = v35;
  a4 = *(v32 + 16);
  a3 = MEMORY[0x277D84F90];
  v239 = v32;
  if (a4)
  {
    v254 = v7;
    v268 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, a4, 0);
    v36 = v268;
    v37 = (v32 + 32);
    v38 = a4;
    do
    {
      v39 = *v37;
      v268 = v36;
      v41 = *(v36 + 16);
      v40 = *(v36 + 24);

      if (v41 >= v40 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1);
        v36 = v268;
      }

      *(v36 + 16) = v41 + 1;
      *(v36 + 8 * v41 + 32) = v39;
      v37 += 4;
      --v38;
    }

    while (v38);
    v268 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, a4, 0);
    v45 = v268;
    v46 = v239 + 5;
    v47 = a4;
    do
    {
      v48 = *v46;
      v268 = v45;
      v50 = *(v45 + 16);
      v49 = *(v45 + 24);

      if (v50 >= v49 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1);
        v45 = v268;
      }

      *(v45 + 16) = v50 + 1;
      *(v45 + 8 * v50 + 32) = v48;
      v46 += 4;
      --v47;
    }

    while (v47);
    v240 = v36;
    v231 = v45;
    v268 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, a4, 0);
    a1 = v268;
    v51 = v239 + 6;
    v52 = a4;
    do
    {
      v53 = *v51;
      v268 = a1;
      v55 = *(a1 + 2);
      v54 = *(a1 + 3);

      if (v55 >= v54 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1);
        a1 = v268;
      }

      *(a1 + 2) = v55 + 1;
      *&a1[2 * v55 + 8] = v53;
      v51 += 4;
      --v52;
    }

    while (v52);
    v268 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, a4, 0);
    v56 = v268;
    a3 = v240;
    v57 = v239 + 7;
    do
    {
      v58 = *v57;
      v268 = v56;
      v60 = *(v56 + 16);
      v59 = *(v56 + 24);

      if (v60 >= v59 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1);
        v56 = v268;
      }

      *(v56 + 16) = v60 + 1;
      *(v56 + 8 * v60 + 32) = v58;
      v57 += 4;
      --a4;
    }

    while (a4);
    v235 = v56;
    v8 = v254;
    v22 = v271;
    goto LABEL_45;
  }

LABEL_44:
  a1 = a3;
  v231 = a3;
  v235 = a3;
LABEL_45:
  v270 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v320[10] & ~(v320[10] >> 63), 0, MEMORY[0x277D84F90]);
  v316 = *(v22 + 104);
  v317 = *(v22 + 120);
  v318 = *(v22 + 136);
  v319 = *&v271[152];
  v312 = *(v22 + 40);
  v313 = *(v22 + 56);
  v314 = *(v22 + 72);
  v315 = *(v22 + 88);
  v310 = *(v22 + 8);
  v311 = *(v22 + 24);
  specialized PINECircuit.encodeMeasurementAndNormRangeCheck(raw:into:)(v257, v256, &v270);
  v22 = v8;
  if (v8)
  {
  }

  v228 = v270;
  v6 = MEMORY[0x277D84F90];
  v227 = v230 & ~(v230 >> 63);
  v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v227, 0, MEMORY[0x277D84F90]);
  a6 = *(v20 + 2);
  v23 = *(v20 + 3);
  a5 = a6 + 1;
  if (a6 >= v23 >> 1)
  {
    goto LABEL_135;
  }

  while (1)
  {
    v64 = v243;
    *(v20 + 2) = a5;
    v254 = v20;
    v44 = &v20[8 * a6];
    *(v44 + 32) = v6;
    v264 = v228;
    if ((v64 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), a5, 1, v20);
      goto LABEL_72;
    }

    v240 = a3;
    if (v64)
    {
      a5 = 0;
      v238 = a3 + 32;
      v251 = (v242 + 8);
      v252 = (v242 + 16);
      v250 = (v241 + 8);
      v236 = a1 + 8;
      v23 = &unk_270C44000;
      v253 = xmmword_270C44540;
      v237 = a1;
      while (a5 != 255)
      {
        v23 = *(a3 + 16);
        if (a5 >= v23)
        {
          goto LABEL_121;
        }

        v6 = (a5 + 1);
        a3 = *(v238 + 8 * a5);

        a4 = _s4VDAF4PINEV19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt0B5Tm(0, 68222975);
        v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
        v66 = swift_allocObject();
        *(v66 + 16) = v253;
        v256 = (a5 + 1);
        *(v66 + 32) = a5 + 1;
        v23 = *(a3 + 16);
        if (v23 != 32)
        {
          goto LABEL_122;
        }

        a6 = v66;
        *&v249 = v65;
        v257 = a5;
        v67 = v22;

        v68 = specialized XofHmacSha256Aes128.__allocating_init(seedBytes:domainSeparationTag:binder:)(a3, a4, a6);
        if (*(v68 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream))
        {
          goto LABEL_150;
        }

        v69 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_hmac;
        a5 = v68;
        swift_beginAccess();
        v70 = a5 + v69;
        v71 = v259;
        v72 = v321;
        v248 = *v252;
        (v248)(v259, v70, v321);
        v73 = v258;
        HMAC.finalize()();
        v247 = *v251;
        (v247)(v71, v72);
        v22 = v260;
        HashedAuthenticationCode.withUnsafeBytes<A>(_:)();
        v246 = v67;
        v6 = *v250;
        (*v250)(v73, v22);

        swift_setDeallocating();
        swift_deallocClassInstance();
        v74 = *(v264 + 2);
        v245 = a5;
        v75 = _s4VDAF12FieldElementPAAE12randomVector5count5usingSayxGSi_qd__tAA24ExtendableOutputFunctionRd__lFZAA7Field40V_AA19XofHmacSha256Aes128CTt1g5Tm(v74, a5, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), _s4VDAF12FieldElementPAAE06randomC05usingxqd___tAA24ExtendableOutputFunctionRd__lFZAA7Field64V_AA19XofHmacSha256Aes128CTt1g5);
        a1 = v237;
        v23 = *(v237 + 2);
        if (v257 >= v23)
        {
          goto LABEL_123;
        }

        v76 = v75;
        v244 = v6;
        v77 = (2 * *(v75 + 16)) | 1;
        v78 = *&v236[2 * v257];
        swift_bridgeObjectRetain_n();

        v79 = _s4VDAF4PINEV19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt0B5Tm(9u, 68222975);
        v80 = swift_allocObject();
        v80[1] = v253;
        *(v80 + 32) = v256;
        v266 = v80;

        specialized Array.append<A>(contentsOf:)(v81);
        v82 = specialized XofHmacSha256Aes128.__allocating_init(seedBytes:domainSeparationTag:binder:)(v78, v79, v266);
        v257 = v76;
        specialized VDAFEncodable.encodedBytes.getter((v76 + 32), 0, v77);
        v83 = off_2880A7738[0];
        type metadata accessor for XofHmacSha256Aes128(0);
        v83();

        v84 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream;
        if (*(v82 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream))
        {
          goto LABEL_151;
        }

        *&v249 = v78;
        v85 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_hmac;
        swift_beginAccess();
        v86 = v82 + v85;
        v87 = v259;
        v88 = v321;
        (v248)(v259, v86, v321);
        v89 = v258;
        HMAC.finalize()();
        (v247)(v87, v88);
        v90 = v260;
        v91 = v246;
        HashedAuthenticationCode.withUnsafeBytes<A>(_:)();
        a6 = v91;
        (v244)(v89, v90);
        v92 = *(v82 + v84);
        if (!v92)
        {
          goto LABEL_152;
        }

        v93 = *(v82 + v84);

        v94 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v94 + 16) = 32;
        *(v94 + 48) = 0u;
        *(v94 + 32) = 0u;
        v95 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_key;
        v96 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_nonce;
        swift_beginAccess();
        specialized static AES.CTR.encryptInPlace(_:using:updating:)((v94 + 32), v94 + 64, v92 + v95, v92 + v96);
        if (v91)
        {
          goto LABEL_160;
        }

        swift_endAccess();

        v97 = v254;
        v99 = *(v254 + 2);
        v98 = *(v254 + 3);
        a4 = v99 + 1;
        a3 = v240;
        if (v99 >= v98 >> 1)
        {
          v97 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v98 > 1), v99 + 1, 1, v254);
        }

        *(v97 + 2) = a4;
        v254 = v97;
        *&v97[8 * v99 + 32] = v94;
        v6 = &v264;
        specialized Array<A>.elementwiseSubtract(_:)(v257);
        v22 = 0;

        a5 = v256;
        v23 = v243;
        if (v243 == v256)
        {
          goto LABEL_62;
        }
      }

      __break(1u);
LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
      goto LABEL_129;
    }

LABEL_62:
    v100 = v22;

    a5 = v264;
    v101 = (2 * *(v264 + 2)) | 1;

    v102 = v234;

    v103 = _s4VDAF4PINEV19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt0B5Tm(9u, 68222975);
    v266 = &outlined read-only object #0 of specialized PINE.shard<A>(_:nonce:seedBytes:);

    specialized Array.append<A>(contentsOf:)(v104);
    a1 = specialized XofHmacSha256Aes128.__allocating_init(seedBytes:domainSeparationTag:binder:)(v102, v103, v266);
    specialized VDAFEncodable.encodedBytes.getter((a5 + 32), 0, v101);
    v105 = off_2880A7738[0];
    v238 = type metadata accessor for XofHmacSha256Aes128(0);
    v244 = v105;
    v105();

    v106 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream;
    if (*(a1 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream))
    {
      goto LABEL_156;
    }

    v107 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_hmac;
    swift_beginAccess();
    v108 = v242;
    v109 = *(v242 + 16);
    v110 = a1 + v107;
    v111 = v259;
    v112 = v321;
    v256 = (v242 + 16);
    *&v253 = v109;
    v109(v259, v110, v321);
    v113 = v258;
    HMAC.finalize()();
    v114 = *(v108 + 8);
    v242 = v108 + 8;
    v252 = v114;
    (v114)(v111, v112);
    v115 = v260;
    HashedAuthenticationCode.withUnsafeBytes<A>(_:)();
    a4 = v100;
    v116 = *(v241 + 8);
    v241 += 8;
    v251 = v116;
    (v116)(v113, v115);
    v6 = *(a1 + v106);
    if (!v6)
    {
      goto LABEL_157;
    }

    v117 = *(a1 + v106);

    a6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(a6 + 16) = 32;
    *(a6 + 48) = 0u;
    *(a6 + 32) = 0u;
    v118 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_key;
    v119 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_nonce;
    swift_beginAccess();
    specialized static AES.CTR.encryptInPlace(_:using:updating:)((a6 + 32), a6 + 64, v6 + v118, v6 + v119);
    if (a4)
    {
      goto LABEL_160;
    }

    swift_endAccess();

    v44 = *(v254 + 2);
    a3 = v240;
    if (!v44)
    {
      goto LABEL_137;
    }

    a1 = v271;
    v120 = *(v254 + 4);
    *(v254 + 4) = a6;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF25WraparoundJointRandomnessCyAA4PINEVyAA7Field64VSRySfGAA19XofHmacSha256Aes128CGAGGMd, &_s4VDAF25WraparoundJointRandomnessCyAA4PINEVyAA7Field64VSRySfGAA19XofHmacSha256Aes128CGAGGMR);
    swift_allocObject();

    v122 = specialized WraparoundJointRandomness.init(parts:)(v121, &lazy protocol witness table cache variable for type WraparoundJointRandomness<PINE<Field64, UnsafeBufferPointer<Float>, XofHmacSha256Aes128>, Field64> and conformance WraparoundJointRandomness<A, B>, &_s4VDAF25WraparoundJointRandomnessCyAA4PINEVyAA7Field64VSRySfGAA19XofHmacSha256Aes128CGAGGMd, &_s4VDAF25WraparoundJointRandomnessCyAA4PINEVyAA7Field64VSRySfGAA19XofHmacSha256Aes128CGAGGMR, 68222975);
    v306 = *&v271[104];
    v307 = *&v271[120];
    v308 = *&v271[136];
    v309 = *&v271[152];
    v302 = *&v271[40];
    v303 = *&v271[56];
    v304 = *&v271[72];
    v305 = *&v271[88];
    v300 = *&v271[8];
    v301 = *&v271[24];
    v123 = specialized PINECircuit.appendWraparoundCheck<A>(into:random:)(&v270, v122);
    v225 = v122;
    v226 = v123;
    v228 = v270;
    v6 = MEMORY[0x277D84F90];
    v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v227, 0, MEMORY[0x277D84F90]);
    a6 = *(v20 + 2);
    v44 = *(v20 + 3);
    a5 = a6 + 1;
    if (a6 >= v44 >> 1)
    {
      goto LABEL_139;
    }

LABEL_72:
    v128 = v243;
    v22 = a4;
    *(v20 + 2) = a5;
    v250 = v20;
    *&v20[8 * a6 + 32] = v6;
    v265 = v228;

    if (!v128)
    {
      break;
    }

    a5 = 0;
    v236 = (v235 + 32);
    v237 = (a3 + 32);
    v23 = &unk_270C44000;
    v249 = xmmword_270C44540;
    while (a5 != 255)
    {
      v23 = *(a3 + 16);
      if (a5 >= v23)
      {
        goto LABEL_130;
      }

      v6 = (a5 + 1);
      a3 = *&v237[2 * a5];

      a4 = _s4VDAF4PINEV19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt0B5Tm(0, 68222975);
      a1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
      v129 = swift_allocObject();
      *(v129 + 16) = v249;
      v257 = a5 + 1;
      *(v129 + 32) = a5 + 1;
      v23 = *(a3 + 16);
      if (v23 != 32)
      {
        goto LABEL_131;
      }

      a6 = v129;
      v247 = a1;
      v248 = a5;
      v130 = v22;

      v131 = specialized XofHmacSha256Aes128.__allocating_init(seedBytes:domainSeparationTag:binder:)(a3, a4, a6);
      if (*(v131 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream))
      {
        goto LABEL_153;
      }

      v132 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_hmac;
      a1 = v131;
      swift_beginAccess();
      v133 = a1 + v132;
      v134 = v259;
      v135 = v321;
      (v253)(v259, v133, v321);
      v22 = v258;
      HMAC.finalize()();
      (v252)(v134, v135);
      a5 = v260;
      v6 = v22;
      HashedAuthenticationCode.withUnsafeBytes<A>(_:)();
      v246 = v130;
      (v251)(v22, a5);

      swift_setDeallocating();
      swift_deallocClassInstance();
      v136 = *(v265 + 16);
      v245 = a1;
      v137 = _s4VDAF12FieldElementPAAE12randomVector5count5usingSayxGSi_qd__tAA24ExtendableOutputFunctionRd__lFZAA7Field40V_AA19XofHmacSha256Aes128CTt1g5Tm(v136, a1, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), _s4VDAF12FieldElementPAAE06randomC05usingxqd___tAA24ExtendableOutputFunctionRd__lFZAA7Field64V_AA19XofHmacSha256Aes128CTt1g5);
      v23 = *(v235 + 16);
      if (v248 >= v23)
      {
        goto LABEL_132;
      }

      v138 = v137;
      v139 = (2 * *(v137 + 16)) | 1;
      v140 = *&v236[2 * v248];
      swift_bridgeObjectRetain_n();

      v141 = _s4VDAF4PINEV19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt0B5Tm(6u, 68222975);
      v142 = swift_allocObject();
      v142[1] = v249;
      *(v142 + 32) = v257;
      v263 = v142;

      specialized Array.append<A>(contentsOf:)(v143);
      v248 = v140;
      v144 = specialized XofHmacSha256Aes128.__allocating_init(seedBytes:domainSeparationTag:binder:)(v140, v141, v263);
      v145 = specialized VDAFEncodable.encodedBytes.getter((v138 + 32), 0, v139);
      (v244)(v145, v238);

      v146 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream;
      if (*(v144 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream))
      {
        goto LABEL_154;
      }

      v147 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_hmac;
      swift_beginAccess();
      v148 = v144 + v147;
      v149 = v259;
      v150 = v321;
      (v253)(v259, v148, v321);
      v151 = v258;
      HMAC.finalize()();
      (v252)(v149, v150);
      v152 = v260;
      v153 = v246;
      HashedAuthenticationCode.withUnsafeBytes<A>(_:)();
      a6 = v153;
      (v251)(v151, v152);
      v154 = *(v144 + v146);
      if (!v154)
      {
        goto LABEL_155;
      }

      v155 = *(v144 + v146);

      v156 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v156 + 16) = 32;
      *(v156 + 48) = 0u;
      *(v156 + 32) = 0u;
      a1 = (v156 + 32);
      v157 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_key;
      v158 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_nonce;
      swift_beginAccess();
      specialized static AES.CTR.encryptInPlace(_:using:updating:)((v156 + 32), v156 + 64, v154 + v157, v154 + v158);
      if (v153)
      {
        goto LABEL_160;
      }

      swift_endAccess();

      v159 = v250;
      v161 = *(v250 + 2);
      v160 = *(v250 + 3);
      a4 = v161 + 1;
      if (v161 >= v160 >> 1)
      {
        v159 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v160 > 1), v161 + 1, 1, v250);
      }

      *(v159 + 2) = a4;
      *&v159[8 * v161 + 32] = v156;
      v6 = &v265;
      specialized Array<A>.elementwiseSubtract(_:)(v138);
      v22 = 0;
      v250 = v159;

      a5 = v257;
      v23 = v243;
      a3 = v240;
      if (v243 == v257)
      {
        goto LABEL_85;
      }
    }

LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
LABEL_135:
    v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), a5, 1, v20);
  }

LABEL_85:
  v162 = v22;

  v163 = v265;
  v164 = (2 * *(v265 + 16)) | 1;

  v165 = v233;

  v166 = _s4VDAF4PINEV19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt0B5Tm(6u, 68222975);
  v263 = &outlined read-only object #1 of specialized PINE.shard<A>(_:nonce:seedBytes:);

  specialized Array.append<A>(contentsOf:)(v167);
  v168 = specialized XofHmacSha256Aes128.__allocating_init(seedBytes:domainSeparationTag:binder:)(v165, v166, v263);
  v255 = v163;
  specialized VDAFEncodable.encodedBytes.getter((v163 + 32), 0, v164);
  (v244)();

  v169 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream;
  if (*(v168 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream))
  {
    goto LABEL_158;
  }

  v170 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_hmac;
  swift_beginAccess();
  v171 = v168 + v170;
  v172 = v259;
  v173 = v321;
  (v253)(v259, v171, v321);
  v174 = v258;
  HMAC.finalize()();
  (v252)(v172, v173);
  v175 = v260;
  v176 = v162;
  HashedAuthenticationCode.withUnsafeBytes<A>(_:)();
  a4 = v162;
  (v251)(v174, v175);
  v6 = *(v168 + v169);
  if (!v6)
  {
    goto LABEL_159;
  }

  v177 = *(v168 + v169);

  a6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(a6 + 16) = 32;
  *(a6 + 48) = 0u;
  *(a6 + 32) = 0u;
  v178 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_key;
  v179 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_nonce;
  swift_beginAccess();
  specialized static AES.CTR.encryptInPlace(_:using:updating:)((a6 + 32), a6 + 64, v6 + v178, v6 + v179);
  a1 = v162;
  if (v162)
  {
    goto LABEL_160;
  }

  a3 = v320[39];
  v180 = v320[40];
  swift_endAccess();

  a5 = v250;
  if (!*(v250 + 2))
  {
    __break(1u);
LABEL_141:
    __break(1u);
LABEL_142:
    __break(1u);
LABEL_143:
    __break(1u);
LABEL_144:
    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
    goto LABEL_148;
  }

  v181 = *(v250 + 4);
  *(v250 + 4) = a6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF27VerificationJointRandomnessCyAA4PINEVyAA7Field64VSRySfGAA19XofHmacSha256Aes128CGAGGMd, &_s4VDAF27VerificationJointRandomnessCyAA4PINEVyAA7Field64VSRySfGAA19XofHmacSha256Aes128CGAGGMR);
  v182 = swift_allocObject();
  *(v182 + 4) = 0;
  *(v182 + 5) = 3;
  *(v182 + 6) = a3;
  *(v182 + 2) = a5;
  *(v182 + 3) = 0;
  v258 = v182;

  specialized Array.append<A>(contentsOf:)(v226, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
  v6 = _s4VDAF4PINEV19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt0B5Tm(3u, 68222975);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v183 = swift_allocObject();
  *(v183 + 16) = xmmword_270C44550;
  if ((v180 & 0x8000000000000000) != 0)
  {
    goto LABEL_141;
  }

  a6 = v239;
  if (v180 > 0xFF)
  {
    goto LABEL_142;
  }

  *(v183 + 32) = v180;
  if ((a3 & 0x8000000000000000) != 0)
  {
    goto LABEL_143;
  }

  if (a3 > 0xFF)
  {
    goto LABEL_144;
  }

  *(v183 + 33) = a3;
  a4 = v232;
  v321 = _s4VDAF24ExtendableOutputFunctionPAAE7makeXOF4seed19domainSeparationTag6binderxAA4SeedV_Says5UInt8VGALtFZAA19XofHmacSha256Aes128C_Tt2g5(v232, v6, v183);

  swift_setDeallocating();
  swift_deallocClassInstance();
  v296[6] = *&v271[104];
  v296[7] = *&v271[120];
  v296[8] = *&v271[136];
  v297 = *&v271[152];
  v296[2] = *&v271[40];
  v296[3] = *&v271[56];
  v296[4] = *&v271[72];
  v296[5] = *&v271[88];
  v296[0] = *&v271[8];
  v296[1] = *&v271[24];
  v298[6] = *&v271[256];
  v298[7] = *&v271[272];
  v298[8] = *&v271[288];
  v299 = *&v271[304];
  v298[2] = *&v271[192];
  v298[3] = *&v271[208];
  v298[4] = *&v271[224];
  v298[5] = *&v271[240];
  v298[0] = *&v271[160];
  v298[1] = *&v271[176];
  v6 = v298;
  v184 = specialized FullyLinearProof.proofLength.getter();
  a5 = v180 * v184;
  if ((v180 * v184) >> 64 != (v180 * v184) >> 63)
  {
    goto LABEL_145;
  }

  v6 = v296;
  v185 = specialized FullyLinearProof.proofLength.getter();
  v186 = a3 * v185;
  if ((a3 * v185) >> 64 != (a3 * v185) >> 63)
  {
    goto LABEL_146;
  }

  v27 = __OFADD__(a5, v186);
  v187 = a5 + v186;
  if (v27)
  {
    goto LABEL_147;
  }

  v22 = 0;
  v259 = a3;
  v188 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v187 & ~(v187 >> 63), 0, MEMORY[0x277D84F90]);
  v262[0] = v188;
  if (v180)
  {
    a5 = v271;
    a1 = v270;
    do
    {
      a4 = 0;
      v292 = *&v271[256];
      v293 = *&v271[272];
      v294 = *&v271[288];
      v295 = *&v271[304];
      v288 = *&v271[192];
      v289 = *&v271[208];
      v290 = *&v271[224];
      v291 = *&v271[240];
      v286 = *&v271[160];
      v287 = *&v271[176];
      v190 = specialized FullyLinearProof.proveRandLength.getter();
      a3 = _s4VDAF12FieldElementPAAE12randomVector5count5usingSayxGSi_qd__tAA24ExtendableOutputFunctionRd__lFZAA7Field40V_AA19XofHmacSha256Aes128CTt1g5Tm(v190, v321, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), _s4VDAF12FieldElementPAAE06randomC05usingxqd___tAA24ExtendableOutputFunctionRd__lFZAA7Field64V_AA19XofHmacSha256Aes128CTt1g5);
      v284[6] = *&v271[256];
      v284[7] = *&v271[272];
      v284[8] = *&v271[288];
      v285 = *&v271[304];
      v284[2] = *&v271[192];
      v284[3] = *&v271[208];
      v284[4] = *&v271[224];
      v284[5] = *&v271[240];
      v284[0] = *&v271[160];
      v284[1] = *&v271[176];
      v6 = v284;
      specialized FullyLinearProof.prove<A>(into:measurement:proveRand:jointRand:)(v262, a1, a3, MEMORY[0x277D84F90]);

      --v180;
    }

    while (v180);
  }

  if (v259)
  {
    v191 = 0;
    v257 = v270;
    do
    {
      v23 = v191 + 1;
      v260 = (v191 + 1);
      if (__OFADD__(v191, 1))
      {
        goto LABEL_134;
      }

      a1 = 0;
      v192 = specialized VerificationJointRandomness.xof.getter(&lazy protocol witness table cache variable for type VerificationJointRandomness<PINE<Field64, UnsafeBufferPointer<Float>, XofHmacSha256Aes128>, Field64> and conformance VerificationJointRandomness<A, B>, &_s4VDAF27VerificationJointRandomnessCyAA4PINEVyAA7Field64VSRySfGAA19XofHmacSha256Aes128CGAGGMd, &_s4VDAF27VerificationJointRandomnessCyAA4PINEVyAA7Field64VSRySfGAA19XofHmacSha256Aes128CGAGGMR, 68222975);
      v265 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 3, 0);
      a3 = v265;
      _s4VDAF12FieldElementPAAE06randomC05usingxqd___tAA24ExtendableOutputFunctionRd__lFZAA7Field64V_AA19XofHmacSha256Aes128CTt1g5(v192, &v261);
      v193 = v261;
      v195 = *(a3 + 16);
      v194 = *(a3 + 24);
      if (v195 >= v194 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v194 > 1), v195 + 1, 1);
        a3 = v265;
      }

      *(a3 + 16) = v195 + 1;
      *(a3 + 8 * v195 + 32) = v193;
      _s4VDAF12FieldElementPAAE06randomC05usingxqd___tAA24ExtendableOutputFunctionRd__lFZAA7Field64V_AA19XofHmacSha256Aes128CTt1g5(v192, &v261);
      v196 = v261;
      v265 = a3;
      v198 = *(a3 + 16);
      v197 = *(a3 + 24);
      if (v198 >= v197 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v197 > 1), v198 + 1, 1);
        a3 = v265;
      }

      *(a3 + 16) = v198 + 1;
      *(a3 + 8 * v198 + 32) = v196;
      _s4VDAF12FieldElementPAAE06randomC05usingxqd___tAA24ExtendableOutputFunctionRd__lFZAA7Field64V_AA19XofHmacSha256Aes128CTt1g5(v192, &v261);
      v199 = v261;
      v265 = a3;
      v201 = *(a3 + 16);
      v200 = *(a3 + 24);
      if (v201 >= v200 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v200 > 1), v201 + 1, 1);
        a3 = v265;
      }

      *(a3 + 16) = v201 + 1;
      *(a3 + 8 * v201 + 32) = v199;

      a5 = v272;
      v280 = *&v271[104];
      v281 = *&v271[120];
      v282 = *&v271[136];
      v283 = *&v271[152];
      v276 = *&v271[40];
      v277 = *&v271[56];
      v278 = *&v271[72];
      v279 = *&v271[88];
      v274 = *&v271[8];
      v275 = *&v271[24];
      v202 = specialized FullyLinearProof.proveRandLength.getter();
      a4 = _s4VDAF12FieldElementPAAE12randomVector5count5usingSayxGSi_qd__tAA24ExtendableOutputFunctionRd__lFZAA7Field40V_AA19XofHmacSha256Aes128CTt1g5Tm(v202, v321, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), _s4VDAF12FieldElementPAAE06randomC05usingxqd___tAA24ExtendableOutputFunctionRd__lFZAA7Field64V_AA19XofHmacSha256Aes128CTt1g5);
      v272[6] = *&v271[104];
      v272[7] = *&v271[120];
      v272[8] = *&v271[136];
      v273 = *&v271[152];
      v272[2] = *&v271[40];
      v272[3] = *&v271[56];
      v272[4] = *&v271[72];
      v272[5] = *&v271[88];
      v272[0] = *&v271[8];
      v272[1] = *&v271[24];
      v6 = v272;
      specialized FullyLinearProof.prove<A>(into:measurement:proveRand:jointRand:)(v262, v257, a4, a3);
      v22 = 0;

      ++v191;
      a6 = v239;
    }

    while (v260 != v259);
  }

  v257 = 0;
  MEMORY[0x28223BE20](v188, v189);
  v203 = v230;
  *(&v225 - 2) = v231;
  *(&v225 - 1) = v271;
  _s4VDAF12VDAFProtocolPAAE10splitShare_4into_ySayqd__Gz_Siqd_0_SiXEtAA12FieldElementRd__AA24ExtendableOutputFunctionRd_0_r0_lFZAA4PINEVyAA7Field64VSRySfGAA19XofHmacSha256Aes128CG_AlOTt2g5(v262, v203, partial apply for specialized closure #5 in PINE.shard<A>(_:nonce:seedBytes:));

  a3 = v262[0];
  v204 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v227, 0, MEMORY[0x277D84F90]);
  a4 = v204[2];
  v176 = v204[3];
  v6 = v204;
  a5 = a4 + 1;

  if (a4 < v176 >> 1)
  {
    goto LABEL_110;
  }

LABEL_148:
  v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v176 > 1), a5, 1, v6);
LABEL_110:
  v205 = v229;
  v206 = v250;
  v6[2] = a5;
  v207 = &v6[6 * a4];
  v207[4] = v255;
  *(v207 + 40) = 0;
  v207[6] = a3;
  *(v207 + 56) = 0;
  v208 = v233;
  v207[8] = v234;
  v207[9] = v208;
  v209 = v243;
  if (v243)
  {
    v256 = a3;
    if (v243 > *(a6 + 16))
    {
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
      while (1)
      {
LABEL_160:
        swift_endAccess();
        swift_unexpectedError();
        __break(1u);
      }
    }

    v210 = v6;
    v211 = a6;
    v212 = 48 * a4 + 120;
    v213 = a4 + 2;
    v214 = (v211 + 56);
    do
    {
      v243 = v209;
      v215 = *(v214 - 3);
      v216 = *(v214 - 2);
      v218 = *(v214 - 1);
      v217 = *v214;
      v259 = v210;
      v219 = v210[3];

      v260 = v218;

      if (v213 - 1 >= v219 >> 1)
      {
        v210 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v219 > 1), v213, 1, v259);
      }

      else
      {
        v210 = v259;
      }

      v210[2] = v213;
      v220 = (v210 + v212);
      *(v220 - 5) = v215;
      *(v220 - 32) = 1;
      *(v220 - 3) = v216;
      *(v220 - 16) = 1;
      v212 += 48;
      ++v213;
      v214 += 4;
      *(v220 - 1) = v260;
      *v220 = v217;
      v209 = (v243 - 1);
    }

    while (v243 != 1);
    v6 = v210;

    v205 = v229;
    v206 = v250;
  }

  else
  {
  }

  v221 = v258;
  swift_setDeallocating();
  v222 = v221[2];

  v223 = v221[3];

  v224 = v221[4];

  swift_deallocClassInstance();

  *v205 = v254;
  *(v205 + 1) = v206;

  return v6;
}