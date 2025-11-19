uint64_t specialized SumVectorType.evaluate(measurement:jointRand:numOfShares:for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  v7 = *(a1 + 16);
  v8 = *v5;
  if (v7 != *v5)
  {
    _StringGuts.grow(_:)(35);

    *&v99 = 0xD00000000000001BLL;
    *(&v99 + 1) = 0x8000000270C51C80;
    v103 = v7;
LABEL_20:
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v27);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v103 = v8;
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v28);
LABEL_21:

    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v29 = v99;
    *(v29 + 16) = 2;
    return swift_willThrow();
  }

  v9 = *(a2 + 16);
  v8 = *(v5 + 16);
  if (v9 != v8)
  {
    _StringGuts.grow(_:)(33);

    *&v99 = 0xD000000000000019;
    *(&v99 + 1) = 0x8000000270C51CE0;
    v103 = v9;
    goto LABEL_20;
  }

  v98 = *(a1 + 16);
  v13 = *(a4 + 16);
  v14 = *(v5 + 80);
  v101 = *(v5 + 64);
  v102 = v14;
  v100 = *(v5 + 48);
  v15 = v100;
  v16 = v14;
  specialized Gadget.wirePolynomialLength.getter();
  specialized Gadget.gadgetPolynomialLength.getter();
  if (v13 != 1)
  {
    _StringGuts.grow(_:)(23);

    *&v99 = 0x2064696C61766E49;
    *(&v99 + 1) = 0xEF203A746E756F63;
    v103 = v13;
    v66 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v66);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF16GadgetParametersVGMd, &_ss23_ContiguousArrayStorageCy4VDAF16GadgetParametersVGMR);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_270C44540;
    v68 = specialized Gadget.wirePolynomialLength.getter();
    v69 = specialized Gadget.gadgetPolynomialLength.getter();
    *(v67 + 32) = v15;
    *(v67 + 48) = v16;
    *(v67 + 56) = v68;
    *(v67 + 64) = v69;
    v70 = MEMORY[0x2743B2770](v67, &type metadata for GadgetParameters);
    v72 = v71;

    MEMORY[0x2743B25F0](v70, v72);
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    goto LABEL_154;
  }

  _s4VDAF12FieldElementPAAEyx06FiniteB0_11IntegerTypeQZcfCAA7Field64V_Tt1g5(a3, &v103);
  v17 = v103;
  if (!v103)
  {
    goto LABEL_157;
  }

  _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF8_UInt128V_s6UInt64VTt1g5(0xFFFFFFFEFFFFFFFFLL, &v99);
  if (v99 != 0)
  {
    v73 = 0xFFFFFFFEFFFFFFFFLL;
    v18 = 0xFFFFFFFFLL;
    while (1)
    {
      _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF8_UInt128V_s6UInt64VTt1g5(v73 & 1, &v99);
      v75 = *(&v99 + 1) | v99;
      if (v99 != 0)
      {
        v76 = (v17 * v18) >> 64;
        v77 = (0xFFFFFFFEFFFFFFFFLL * v17 * v18 * 0xFFFFFFFF00000001) >> 64;
        v78 = __CFADD__(-(v17 * v18), v17 * v18);
        v65 = __CFADD__(v77, v76);
        v79 = v77 + v76;
        if (v65)
        {
          v80 = v79 + v78;
LABEL_110:
          v18 = v80 + 0xFFFFFFFF;
          if (v80 >= 0xFFFFFFFF00000001)
          {
            goto LABEL_144;
          }

          v75 = 0;
          goto LABEL_120;
        }

        if (v79 == -1)
        {
          v80 = 0;
          if (v78)
          {
            goto LABEL_110;
          }

          v75 = 0;
          v18 = 4294967294;
        }

        else
        {
          v75 = 0;
          v81 = v79 + v78;
          if (v81 >= 0xFFFFFFFF00000001)
          {
            v18 = v81 + 0xFFFFFFFF;
          }

          else
          {
            v18 = v81;
          }
        }
      }

LABEL_120:
      v82 = (__PAIR128__(v75, v17) * __PAIR128__(v75, v17)) >> 64;
      v83 = (0xFFFFFFFEFFFFFFFFLL * v17 * v17 * 0xFFFFFFFF00000001) >> 64;
      v84 = __CFADD__(-(v17 * v17), v17 * v17);
      v65 = __CFADD__(v83, v82);
      v85 = v83 + v82;
      if (v65)
      {
        v86 = v85 + v84;
        v17 = v86 + 0xFFFFFFFF;
        if (v86 >= 0xFFFFFFFF00000001)
        {
          goto LABEL_143;
        }
      }

      else if (v85 == -1)
      {
        if (v84)
        {
          v17 = 0xFFFFFFFFLL;
        }

        else
        {
          v17 = 4294967294;
        }
      }

      else
      {
        v74 = v85 + v84;
        if (v74 >= 0xFFFFFFFF00000001)
        {
          v17 = v74 + 0xFFFFFFFF;
        }

        else
        {
          v17 = v74;
        }
      }

      v73 >>= 1;
      _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF8_UInt128V_s6UInt64VTt1g5(v73, &v99);
      if (v99 == 0)
      {
        goto LABEL_8;
      }
    }
  }

  v18 = 0xFFFFFFFFLL;
LABEL_8:
  if (!v9)
  {
    goto LABEL_155;
  }

  if ((v15 & 0x8000000000000000) != 0)
  {
LABEL_156:
    __break(1u);
LABEL_157:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v19 = a4;
  v20 = *(a2 + 32);
  v97 = *(&v102 + 1);
  v91 = *(v19 + 32);
  sub_270B60478(v91);
  if (v15)
  {
    v21 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v21 + 16) = v15;
    bzero((v21 + 32), 8 * v15);
    v22 = a1;
    v23 = v97;
    if (v97)
    {
      goto LABEL_12;
    }

LABEL_129:
    __break(1u);
LABEL_130:
    outlined consume of GadgetEvaluation<A><A>(v91);
  }

  v21 = MEMORY[0x277D84F90];
  v22 = a1;
  v23 = v97;
  if (!v97)
  {
    goto LABEL_129;
  }

LABEL_12:
  v96 = 0;
  if (v23 >= 1 && v98)
  {
    v96 = 0;
    v24 = 0;
    v89 = 0xFFFFFFFF00000001 - v18;
    v90 = v22 + 32;
    if (v18)
    {
      v25 = 0xFFFFFFFF00000001 - v18;
    }

    else
    {
      v25 = 0;
    }

    v26 = v20;
    v87 = v25;
    do
    {
      v31 = v24 + v23;
      v32 = ((v24 + v23) >> 63) ^ 0x8000000000000000;
      if (!__OFADD__(v24, v23))
      {
        v32 = v24 + v23;
      }

      v94 = v32;
      if (__OFADD__(v24, v23))
      {
        goto LABEL_145;
      }

      if (v98 < v31)
      {
        v31 = v98;
      }

      if (v31 < v24)
      {
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
        goto LABEL_156;
      }

      if (v24 < 0)
      {
        goto LABEL_147;
      }

      v33 = v31 - v24;
      if (v31 - v24 < 0)
      {
        goto LABEL_148;
      }

      if (v33)
      {
        v92 = v31;
        v93 = v31 - v24;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = specialized _ArrayBuffer._consumeAndCreateNew()(v21);
        }

        v34 = 0;
        v35 = (v90 + 8 * v24);
        v33 = v93;
        v36 = v93;
        v23 = v97;
        while (1)
        {
          if (!v36)
          {
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
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
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
            goto LABEL_146;
          }

          v39 = *v35;
          v40 = *v35 * v26;
          v41 = (*v35 * v26) >> 64;
          v42 = (0xFFFFFFFEFFFFFFFFLL * v40 * 0xFFFFFFFF00000001) >> 64;
          v43 = __CFADD__(-v40, v40);
          v44 = v42 + v41;
          if (!__CFADD__(v42, v41))
          {
            if (v44 != -1)
            {
              v47 = v44 + v43;
              if (v47 >= 0xFFFFFFFF00000001)
              {
                v46 = v47 + 0xFFFFFFFF;
              }

              else
              {
                v46 = v47;
              }

              goto LABEL_54;
            }

            if (!v43)
            {
              v46 = 4294967294;
              goto LABEL_54;
            }

            v43 = 1;
          }

          v45 = v43 + v44;
          v46 = v45 + 0xFFFFFFFF;
          if (v45 >= 0xFFFFFFFF00000001)
          {
            goto LABEL_138;
          }

LABEL_54:
          v48 = *(v21 + 16);
          if (v34 >= v48)
          {
            goto LABEL_132;
          }

          v49 = v21 + 8 * v34;
          *(v49 + 32) = v46;
          v50 = v39 - v18;
          if (v39 < v18)
          {
            if (v18 > 0xFFFFFFFF00000001)
            {
              goto LABEL_140;
            }

            v50 = v39 + v89;
            if (__CFADD__(v39, v89))
            {
              goto LABEL_141;
            }
          }

          if (v34 + 1 >= v48)
          {
            goto LABEL_133;
          }

          *(v49 + 40) = v50;
          v51 = (v26 * v20) >> 64;
          v52 = (0xFFFFFFFEFFFFFFFFLL * v26 * v20 * 0xFFFFFFFF00000001) >> 64;
          v37 = __CFADD__(-(v26 * v20), v26 * v20);
          v53 = v52 + v51;
          if (__CFADD__(v52, v51))
          {
            goto LABEL_37;
          }

          if (v53 == -1)
          {
            if (v37)
            {
              v37 = 1;
LABEL_37:
              v38 = v37 + v53;
              v26 = v38 + 0xFFFFFFFF;
              if (v38 >= 0xFFFFFFFF00000001)
              {
                goto LABEL_139;
              }

              goto LABEL_38;
            }

            v26 = 4294967294;
          }

          else
          {
            v54 = v53 + v37;
            if (v54 >= 0xFFFFFFFF00000001)
            {
              v26 = v54 + 0xFFFFFFFF;
            }

            else
            {
              v26 = v54;
            }
          }

LABEL_38:
          ++v35;
          v34 += 2;
          if (!--v36)
          {
            v31 = v92;
            break;
          }
        }
      }

      if (v23 < v33)
      {
        goto LABEL_149;
      }

      if (v33 != v23)
      {
        if (v33 < v23)
        {
          v56 = v33;
          v57 = v24;
          v58 = v31;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v21 = specialized _ArrayBuffer._consumeAndCreateNew()(v21);
          }

          v55 = v91 >> 62;
          v59 = v56 + 0x4000000000000000;
          v60 = 2 * v58 - 2 * v57;
          v61 = (v21 - 16 * v57 + 16 * v58 + 40);
          v62 = v97 + v57 - v58;
          while ((v59 & 0x8000000000000000) == 0)
          {
            if ((v60 & 0x8000000000000000) != 0)
            {
              goto LABEL_135;
            }

            v63 = *(v21 + 16);
            if (v60 >= v63)
            {
              goto LABEL_136;
            }

            *(v61 - 1) = 0;
            if (v18 > 0xFFFFFFFF00000001)
            {
              goto LABEL_142;
            }

            if (v60 + 1 >= v63)
            {
              goto LABEL_137;
            }

            *v61 = v87;
            v61 += 2;
            ++v59;
            v60 += 2;
            if (!--v62)
            {
              goto LABEL_83;
            }
          }

          goto LABEL_134;
        }

        goto LABEL_151;
      }

      v55 = v91 >> 62;
LABEL_83:
      if (v55)
      {
        if (v55 == 1)
        {
          specialized QueryGadget.evaluate<A>(at:)(v21, specialized _ArrayBuffer._consumeAndCreateNew(), specialized _ArrayBuffer._consumeAndCreateNew(), &v99);
          goto LABEL_88;
        }
      }

      else
      {
        specialized GadgetWireInputs.update<A>(_:)(v21, specialized _ArrayBuffer._consumeAndCreateNew(), specialized _ArrayBuffer._consumeAndCreateNew());
        if (v6)
        {
          goto LABEL_130;
        }
      }

      specialized ParallelSum.evaluate<A>(at:)(v21, &v99);
LABEL_88:
      v23 = v97;
      if (v99)
      {
        v64 = 0xFFFFFFFF00000001 - v99;
        if (v99 > 0xFFFFFFFF00000001)
        {
          goto LABEL_150;
        }

        if (v96 >= v64)
        {
          v96 -= v64;
        }

        else
        {
          if (v64 > 0xFFFFFFFF00000001)
          {
            goto LABEL_152;
          }

          v65 = __CFADD__(v96, v99);
          v96 += v99;
          if (v65)
          {
            goto LABEL_153;
          }
        }
      }

      v24 = v94;
    }

    while (v94 < v98);
  }

  outlined consume of GadgetEvaluation<A><A>(v91);

  *a5 = v96;
  return result;
}

uint64_t specialized Prio3PublicShare.encodedLength.getter(uint64_t result)
{
  if (!result)
  {
    return 0;
  }

  v1 = *(result + 16);
  if (!v1)
  {
    v3 = MEMORY[0x277D84F90];
    v7 = *(MEMORY[0x277D84F90] + 16);
    if (v7)
    {
      goto LABEL_12;
    }

    v8 = 0;
LABEL_15:

    return v8;
  }

  v2 = result + 32;
  v3 = MEMORY[0x277D84F90];
  do
  {
    v4 = *(*v2 + 16);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 16) + 1, 1, v3);
      v3 = result;
    }

    v6 = *(v3 + 16);
    v5 = *(v3 + 24);
    v7 = v6 + 1;
    if (v6 >= v5 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1, v3);
      v3 = result;
    }

    *(v3 + 16) = v7;
    *(v3 + 8 * v6 + 32) = v4;
    v2 += 8;
    --v1;
  }

  while (v1);
LABEL_12:
  v8 = 0;
  v9 = 32;
  while (1)
  {
    v10 = *(v3 + v9);
    v11 = __OFADD__(v8, v10);
    v8 += v10;
    if (v11)
    {
      break;
    }

    v9 += 8;
    if (!--v7)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized QueryGadget.init<A, B>(gadgetPolynomialCoefficients:proveRand:queryRand:parameters:)(uint64_t a1, uint64_t a2, unint64_t a3, int64_t a4, uint64_t a5, uint64_t a6, int64_t a7, unint64_t a8, unint64_t a9, uint64_t *a10)
{
  *(v10 + 48) = 0;
  v40 = a10[3];
  v17 = specialized FixedWidthInteger.nextPowerOfTwo.getter(a10[4]);
  v18 = *(a10 + 1);
  *(v10 + 56) = *a10;
  *(v10 + 72) = v18;
  *(v10 + 88) = a10[4];
  v19 = a10[2];
  v20 = v19 + 1;
  if (__OFADD__(v19, 1))
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v20 < 0)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v41 = a3;
  v42 = a4;
  v43 = v17;
  v44 = a1;
  if (v19 == -1)
  {
    v21 = MEMORY[0x277D84F90];
  }

  else
  {
    v21 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v21 + 16) = v20;
    bzero((v21 + 32), 8 * v19 + 8);
  }

  v22 = _sSa9repeating5countSayxGx_SitcfCSay4VDAF7Field40VG_Tt1g5Tf4gn_n(v21, *a10);

  *(v10 + 16) = v22;
  v23 = (v10 + 16);
  a4 = v22[2];
  if (a4)
  {
    v24 = a8 >> 1;
    swift_beginAccess();
    a8 = 0;
    if (a7 <= v24)
    {
      v25 = v24;
    }

    else
    {
      v25 = a7;
    }

    v19 = v25 - a7;
    v26 = a6 + 8 * a7;
    while (v19 != a8)
    {
      v27 = *(v26 + 8 * a8);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v23 = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v22 = specialized _ArrayBuffer._consumeAndCreateNew()(v22);
        *v23 = v22;
      }

      if (a8 >= v22[2])
      {
        goto LABEL_44;
      }

      a1 = &v22[a8];
      v29 = *(a1 + 32);
      v30 = swift_isUniquelyReferenced_nonNull_native();
      *(a1 + 32) = v29;
      if (v30)
      {
        if (!*(v29 + 2))
        {
          goto LABEL_20;
        }
      }

      else
      {
        v29 = specialized _ArrayBuffer._consumeAndCreateNew()(v29);
        *(a1 + 32) = v29;
        if (!*(v29 + 2))
        {
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }
      }

      ++a8;
      *(v29 + 4) = v27;
      *v23 = v22;
      if (a4 == a8)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

LABEL_21:
  v19 = v42;
  if (v42)
  {
    type metadata accessor for __ContiguousArrayStorageBase();
    a1 = v44;
    swift_unknownObjectRetain_n();
    v32 = swift_dynamicCastClass();
    a4 = v43;
    a8 = v41;
    if (!v32)
    {
      swift_unknownObjectRelease();
      v32 = MEMORY[0x277D84F90];
    }

    v33 = *(v32 + 16);

    if (__OFSUB__(v42 >> 1, v41))
    {
      goto LABEL_51;
    }

    if (v33 != (v42 >> 1) - v41)
    {
      goto LABEL_52;
    }

    v19 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (v19)
    {
      goto LABEL_31;
    }

    v19 = MEMORY[0x277D84F90];
    goto LABEL_30;
  }

  a1 = v44;
  swift_unknownObjectRetain();
  a4 = v43;
  a8 = v41;
  while (1)
  {
    specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a8, v19);
    v19 = v31;
LABEL_30:
    swift_unknownObjectRelease();
LABEL_31:
    if (!*(v19 + 16))
    {
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    if (a4 < 0)
    {
      goto LABEL_48;
    }

    if (a4)
    {
      v34 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v34 + 16) = a4;
      bzero((v34 + 32), 8 * a4);
    }

    else
    {
      v34 = MEMORY[0x277D84F90];
    }

    v45 = v34;
    specialized discreteFourierTransform<A, B, C>(input:size:output:)(v19, a4, &v45);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    *(v10 + 24) = v45;
    if (!v40)
    {
      goto LABEL_49;
    }

    *(v10 + 40) = a4 / v40;
    v35 = *(v19 + 16);
    if (v35)
    {
      break;
    }

LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    swift_unknownObjectRelease();
  }

  while (v35 >= 1)
  {
    if (*(v19 + 8 * v35-- + 24))
    {

      specialized evaluateUsingHorner<A, B>(_:atInput:)(v19, a9, &v45);

      v37 = v45;
      goto LABEL_42;
    }
  }

  v37 = 0;
LABEL_42:
  *(v10 + 32) = v37;
  return v10;
}

{
  *(v10 + 48) = 0;
  v40 = a10[3];
  v17 = specialized FixedWidthInteger.nextPowerOfTwo.getter(a10[4]);
  v18 = *(a10 + 1);
  *(v10 + 56) = *a10;
  *(v10 + 72) = v18;
  *(v10 + 88) = a10[4];
  v19 = a10[2];
  v20 = v19 + 1;
  if (__OFADD__(v19, 1))
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v20 < 0)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v41 = a3;
  v42 = a4;
  v43 = v17;
  v44 = a1;
  if (v19 == -1)
  {
    v21 = MEMORY[0x277D84F90];
  }

  else
  {
    v21 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v21 + 16) = v20;
    bzero((v21 + 32), 8 * v19 + 8);
  }

  v22 = _sSa9repeating5countSayxGx_SitcfCSay4VDAF7Field64VG_Tt1g5Tf4gn_n(v21, *a10);

  *(v10 + 16) = v22;
  v23 = (v10 + 16);
  a4 = v22[2];
  if (a4)
  {
    v24 = a8 >> 1;
    swift_beginAccess();
    a8 = 0;
    if (a7 <= v24)
    {
      v25 = v24;
    }

    else
    {
      v25 = a7;
    }

    v19 = v25 - a7;
    v26 = a6 + 8 * a7;
    while (v19 != a8)
    {
      v27 = *(v26 + 8 * a8);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v23 = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v22 = specialized _ArrayBuffer._consumeAndCreateNew()(v22);
        *v23 = v22;
      }

      if (a8 >= v22[2])
      {
        goto LABEL_44;
      }

      a1 = &v22[a8];
      v29 = *(a1 + 32);
      v30 = swift_isUniquelyReferenced_nonNull_native();
      *(a1 + 32) = v29;
      if (v30)
      {
        if (!*(v29 + 2))
        {
          goto LABEL_20;
        }
      }

      else
      {
        v29 = specialized _ArrayBuffer._consumeAndCreateNew()(v29);
        *(a1 + 32) = v29;
        if (!*(v29 + 2))
        {
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }
      }

      ++a8;
      *(v29 + 4) = v27;
      *v23 = v22;
      if (a4 == a8)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

LABEL_21:
  v19 = v42;
  if (v42)
  {
    type metadata accessor for __ContiguousArrayStorageBase();
    a1 = v44;
    swift_unknownObjectRetain_n();
    v32 = swift_dynamicCastClass();
    a4 = v43;
    a8 = v41;
    if (!v32)
    {
      swift_unknownObjectRelease();
      v32 = MEMORY[0x277D84F90];
    }

    v33 = *(v32 + 16);

    if (__OFSUB__(v42 >> 1, v41))
    {
      goto LABEL_51;
    }

    if (v33 != (v42 >> 1) - v41)
    {
      goto LABEL_52;
    }

    v19 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (v19)
    {
      goto LABEL_31;
    }

    v19 = MEMORY[0x277D84F90];
    goto LABEL_30;
  }

  a1 = v44;
  swift_unknownObjectRetain();
  a4 = v43;
  a8 = v41;
  while (1)
  {
    specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a8, v19);
    v19 = v31;
LABEL_30:
    swift_unknownObjectRelease();
LABEL_31:
    if (!*(v19 + 16))
    {
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    if (a4 < 0)
    {
      goto LABEL_48;
    }

    if (a4)
    {
      v34 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v34 + 16) = a4;
      bzero((v34 + 32), 8 * a4);
    }

    else
    {
      v34 = MEMORY[0x277D84F90];
    }

    v45 = v34;
    specialized discreteFourierTransform<A, B, C>(input:size:output:)(v19, a4, &v45);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    *(v10 + 24) = v45;
    if (!v40)
    {
      goto LABEL_49;
    }

    *(v10 + 40) = a4 / v40;
    v35 = *(v19 + 16);
    if (v35)
    {
      break;
    }

LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    swift_unknownObjectRelease();
  }

  while (v35 >= 1)
  {
    if (*(v19 + 8 * v35-- + 24))
    {

      specialized evaluateUsingHorner<A, B>(_:atInput:)(v19, a9, &v45);

      v37 = v45;
      goto LABEL_42;
    }
  }

  v37 = 0;
LABEL_42:
  *(v10 + 32) = v37;
  return v10;
}

uint64_t specialized QueryGadget.init<A, B>(gadgetPolynomialCoefficients:proveRand:queryRand:parameters:)(uint64_t a1, uint64_t a2, unint64_t a3, int64_t a4, uint64_t a5, uint64_t a6, int64_t a7, unint64_t a8, unsigned int a9, uint64_t *a10)
{
  *(v10 + 48) = 0;
  v40 = a10[3];
  v17 = specialized FixedWidthInteger.nextPowerOfTwo.getter(a10[4]);
  v18 = *(a10 + 1);
  *(v10 + 56) = *a10;
  *(v10 + 72) = v18;
  *(v10 + 88) = a10[4];
  v19 = a10[2];
  v20 = v19 + 1;
  if (__OFADD__(v19, 1))
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v20 < 0)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v41 = a3;
  v42 = a4;
  v43 = v17;
  v44 = a1;
  if (v19 == -1)
  {
    v21 = MEMORY[0x277D84F90];
  }

  else
  {
    v21 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v21 + 16) = v20;
    bzero((v21 + 32), 4 * v19 + 4);
  }

  v22 = _sSa9repeating5countSayxGx_SitcfCSay4VDAF7Field32VG_Tt1g5Tf4gn_n(v21, *a10);

  *(v10 + 16) = v22;
  v23 = (v10 + 16);
  a4 = v22[2];
  if (a4)
  {
    v24 = a8 >> 1;
    swift_beginAccess();
    a8 = 0;
    if (a7 <= v24)
    {
      v25 = v24;
    }

    else
    {
      v25 = a7;
    }

    v19 = v25 - a7;
    v26 = a6 + 4 * a7;
    while (v19 != a8)
    {
      v27 = *(v26 + 4 * a8);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v23 = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v22 = specialized _ArrayBuffer._consumeAndCreateNew()(v22);
        *v23 = v22;
      }

      if (a8 >= v22[2])
      {
        goto LABEL_44;
      }

      a1 = &v22[a8];
      v29 = *(a1 + 32);
      v30 = swift_isUniquelyReferenced_nonNull_native();
      *(a1 + 32) = v29;
      if (v30)
      {
        if (!*(v29 + 2))
        {
          goto LABEL_20;
        }
      }

      else
      {
        v29 = specialized _ArrayBuffer._consumeAndCreateNew()(v29);
        *(a1 + 32) = v29;
        if (!*(v29 + 2))
        {
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }
      }

      ++a8;
      *(v29 + 8) = v27;
      *v23 = v22;
      if (a4 == a8)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

LABEL_21:
  v19 = v42;
  if (v42)
  {
    type metadata accessor for __ContiguousArrayStorageBase();
    a1 = v44;
    swift_unknownObjectRetain_n();
    v32 = swift_dynamicCastClass();
    a4 = v43;
    a8 = v41;
    if (!v32)
    {
      swift_unknownObjectRelease();
      v32 = MEMORY[0x277D84F90];
    }

    v33 = *(v32 + 16);

    if (__OFSUB__(v42 >> 1, v41))
    {
      goto LABEL_51;
    }

    if (v33 != (v42 >> 1) - v41)
    {
      goto LABEL_52;
    }

    v19 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (v19)
    {
      goto LABEL_31;
    }

    v19 = MEMORY[0x277D84F90];
    goto LABEL_30;
  }

  a1 = v44;
  swift_unknownObjectRetain();
  a4 = v43;
  a8 = v41;
  while (1)
  {
    specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a8, v19);
    v19 = v31;
LABEL_30:
    swift_unknownObjectRelease();
LABEL_31:
    if (!*(v19 + 16))
    {
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    if (a4 < 0)
    {
      goto LABEL_48;
    }

    if (a4)
    {
      v34 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v34 + 16) = a4;
      bzero((v34 + 32), 4 * a4);
    }

    else
    {
      v34 = MEMORY[0x277D84F90];
    }

    v45 = v34;
    specialized discreteFourierTransform<A, B, C>(input:size:output:)(v19, a4, &v45);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    *(v10 + 24) = v45;
    if (!v40)
    {
      goto LABEL_49;
    }

    *(v10 + 40) = a4 / v40;
    v35 = *(v19 + 16);
    if (v35)
    {
      break;
    }

LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    swift_unknownObjectRelease();
  }

  while (v35 >= 1)
  {
    if (*(v19 + 4 * v35-- + 28))
    {

      specialized evaluateUsingHorner<A, B>(_:atInput:)(v19, a9, &v45);

      v37 = v45;
      goto LABEL_42;
    }
  }

  v37 = 0;
LABEL_42:
  *(v10 + 32) = v37;
  return v10;
}

uint64_t specialized QueryGadget.evaluate<A>(at:)@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  result = swift_beginAccess();
  v6 = v2[6];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v2[6] = v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = a1 + 32;
    swift_beginAccess();
    v11 = 0;
    v12 = v2[2];
    while (1)
    {
      v13 = v2[6];
      v14 = *(v10 + 4 * v11);
      result = swift_isUniquelyReferenced_nonNull_native();
      v2[2] = v12;
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v12);
        v12 = result;
        v2[2] = result;
      }

      if (v11 >= v12[2])
      {
        break;
      }

      v15 = &v12[v11];
      v16 = v15[4];
      result = swift_isUniquelyReferenced_nonNull_native();
      v15[4] = v16;
      if (result)
      {
        if ((v13 & 0x8000000000000000) != 0)
        {
          goto LABEL_13;
        }
      }

      else
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
        v16 = result;
        v15[4] = result;
        if ((v13 & 0x8000000000000000) != 0)
        {
LABEL_13:
          __break(1u);
LABEL_14:
          v8 = v2[6];
          goto LABEL_15;
        }
      }

      if (v13 >= *(v16 + 16))
      {
        goto LABEL_20;
      }

      ++v11;
      *(v16 + 4 * v13 + 32) = v14;
      v2[2] = v12;
      if (v9 == v11)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  v17 = v2[5];
  v18 = v8 * v17;
  if ((v8 * v17) >> 64 != (v8 * v17) >> 63)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  result = swift_beginAccess();
  if ((v18 & 0x8000000000000000) != 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v19 = v2[3];
  if (v18 < *(v19 + 16))
  {
    *a2 = *(v19 + 4 * v18 + 32);
    return result;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t specialized QueryGadget.evaluate<A>(at:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(uint64_t)@<X2>, void *a4@<X8>)
{
  result = swift_beginAccess();
  v10 = v4[6];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v4[6] = v12;
  v13 = *(a1 + 16);
  if (v13)
  {
    v24 = a3;
    v25 = a2;
    v14 = a1 + 32;
    swift_beginAccess();
    v15 = 0;
    v16 = v4[2];
    while (1)
    {
      v17 = v4[6];
      v18 = *(v14 + 8 * v15);
      result = swift_isUniquelyReferenced_nonNull_native();
      v4[2] = v16;
      if ((result & 1) == 0)
      {
        result = v25(v16);
        v16 = result;
        v4[2] = result;
      }

      if (v15 >= *(v16 + 16))
      {
        break;
      }

      v19 = v16 + 8 * v15;
      v20 = *(v19 + 32);
      result = swift_isUniquelyReferenced_nonNull_native();
      *(v19 + 32) = v20;
      if (result)
      {
        if ((v17 & 0x8000000000000000) != 0)
        {
          goto LABEL_13;
        }
      }

      else
      {
        result = v24(v20);
        v20 = result;
        *(v19 + 32) = result;
        if ((v17 & 0x8000000000000000) != 0)
        {
LABEL_13:
          __break(1u);
LABEL_14:
          v12 = v4[6];
          goto LABEL_15;
        }
      }

      if (v17 >= *(v20 + 16))
      {
        goto LABEL_20;
      }

      ++v15;
      *(v20 + 8 * v17 + 32) = v18;
      v4[2] = v16;
      if (v13 == v15)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  v21 = v4[5];
  v22 = v12 * v21;
  if ((v12 * v21) >> 64 != (v12 * v21) >> 63)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  result = swift_beginAccess();
  if ((v22 & 0x8000000000000000) != 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v23 = v4[3];
  if (v22 < *(v23 + 16))
  {
    *a4 = *(v23 + 8 * v22 + 32);
    return result;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t specialized GadgetWireInputs.update<A>(_:)(uint64_t a1)
{
  result = swift_beginAccess();
  v4 = v1[2];
  if (v4 >= v1[3])
  {
LABEL_14:
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v13;
    MEMORY[0x2743B25F0](540884512, 0xE400000000000000);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v14);

    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v15 = v16;
    *(v15 + 8) = v17;
    *(v15 + 16) = 3;
    return swift_willThrow();
  }

  else
  {
    v1[2] = v4 + 1;
    v5 = *(a1 + 16);
    if (v5)
    {
      v6 = a1 + 32;
      swift_beginAccess();
      v7 = 0;
      v8 = v1[4];
      while (1)
      {
        v9 = v1[2];
        v10 = *(v6 + 4 * v7);
        result = swift_isUniquelyReferenced_nonNull_native();
        v1[4] = v8;
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
          v8 = result;
          v1[4] = result;
        }

        if (v7 >= v8[2])
        {
          break;
        }

        v11 = &v8[v7];
        v12 = v11[4];
        result = swift_isUniquelyReferenced_nonNull_native();
        v11[4] = v12;
        if (result)
        {
          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_13;
          }
        }

        else
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v12);
          v12 = result;
          v11[4] = result;
          if ((v9 & 0x8000000000000000) != 0)
          {
LABEL_13:
            __break(1u);
            goto LABEL_14;
          }
        }

        if (v9 >= *(v12 + 16))
        {
          goto LABEL_17;
        }

        ++v7;
        *(v12 + 4 * v9 + 32) = v10;
        v1[4] = v8;
        if (v5 == v7)
        {
          return result;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }
  }

  return result;
}

uint64_t specialized GadgetWireInputs.update<A>(_:)(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(uint64_t))
{
  result = swift_beginAccess();
  v8 = v3[2];
  if (v8 >= v3[3])
  {
LABEL_14:
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v17;
    MEMORY[0x2743B25F0](540884512, 0xE400000000000000);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v18);

    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v19 = v22;
    *(v19 + 8) = v23;
    *(v19 + 16) = 3;
    return swift_willThrow();
  }

  else
  {
    v3[2] = v8 + 1;
    v9 = *(a1 + 16);
    if (v9)
    {
      v20 = a3;
      v21 = a2;
      v10 = a1 + 32;
      swift_beginAccess();
      v11 = 0;
      v12 = v3[4];
      while (1)
      {
        v13 = v3[2];
        v14 = *(v10 + 8 * v11);
        result = swift_isUniquelyReferenced_nonNull_native();
        v3[4] = v12;
        if ((result & 1) == 0)
        {
          result = v21(v12);
          v12 = result;
          v3[4] = result;
        }

        if (v11 >= *(v12 + 16))
        {
          break;
        }

        v15 = v12 + 8 * v11;
        v16 = *(v15 + 32);
        result = swift_isUniquelyReferenced_nonNull_native();
        *(v15 + 32) = v16;
        if (result)
        {
          if ((v13 & 0x8000000000000000) != 0)
          {
            goto LABEL_13;
          }
        }

        else
        {
          result = v20(v16);
          v16 = result;
          *(v15 + 32) = result;
          if ((v13 & 0x8000000000000000) != 0)
          {
LABEL_13:
            __break(1u);
            goto LABEL_14;
          }
        }

        if (v13 >= *(v16 + 16))
        {
          goto LABEL_17;
        }

        ++v11;
        *(v16 + 8 * v13 + 32) = v14;
        v3[4] = v12;
        if (v9 == v11)
        {
          return result;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }
  }

  return result;
}

uint64_t specialized PINEPublicShare.encodedLength.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v25 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    result = v25;
    v7 = a1 + 32;
    v8 = *(v25 + 16);
    do
    {
      v9 = *(*v7 + 16);
      v26 = result;
      v10 = *(result + 24);
      v11 = v8 + 1;
      if (v8 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v8 + 1, 1);
        result = v26;
      }

      *(result + 16) = v11;
      *(result + 8 * v8 + 32) = v9;
      v7 += 8;
      ++v8;
      --v3;
    }

    while (v3);
LABEL_9:
    v12 = 0;
    v13 = 32;
    while (1)
    {
      v14 = *(result + v13);
      v15 = __OFADD__(v12, v14);
      v12 += v14;
      if (v15)
      {
        break;
      }

      v13 += 8;
      if (!--v11)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_27;
  }

  v11 = *(MEMORY[0x277D84F90] + 16);
  if (v11)
  {
    result = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

  v12 = 0;
LABEL_12:

  v16 = *(a2 + 16);
  if (v16)
  {
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16, 0);
    v17 = a2 + 32;
    v18 = *(v4 + 16);
    do
    {
      v19 = *(*v17 + 16);
      v20 = *(v4 + 24);
      v21 = v18 + 1;
      if (v18 >= v20 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v18 + 1, 1);
      }

      *(v4 + 16) = v21;
      *(v4 + 8 * v18 + 32) = v19;
      v17 += 8;
      ++v18;
      --v16;
    }

    while (v16);
LABEL_19:
    v22 = 0;
    v23 = 32;
    while (1)
    {
      v24 = *(v4 + v23);
      v15 = __OFADD__(v22, v24);
      v22 += v24;
      if (v15)
      {
        break;
      }

      v23 += 8;
      if (!--v21)
      {
        goto LABEL_22;
      }
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    return result;
  }

  v21 = *(v4 + 16);
  if (v21)
  {
    goto LABEL_19;
  }

  v22 = 0;
LABEL_22:

  result = v12 + v22;
  if (__OFADD__(v12, v22))
  {
    goto LABEL_28;
  }

  return result;
}

void specialized PINEPublicShare.encode<A>(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = (a2 + 32);
    v6 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    do
    {
      v7 = *v5++;
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
      v16 = v6;
      v14[0] = v7;
      v8 = *(*__swift_project_boxed_opaque_existential_1(v14, v15) + 16);

      Data._Representation.append(contentsOf:)();
      __swift_destroy_boxed_opaque_existential_1(v14);
      --v4;
    }

    while (v4);
  }

  v9 = *(a3 + 16);
  if (v9)
  {
    v10 = (a3 + 32);
    v11 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    do
    {
      v12 = *v10++;
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
      v16 = v11;
      v14[0] = v12;
      v13 = *(*__swift_project_boxed_opaque_existential_1(v14, v15) + 16);

      Data._Representation.append(contentsOf:)();
      __swift_destroy_boxed_opaque_existential_1(v14);
      --v9;
    }

    while (v9);
  }
}

char *specialized PINEPublicShare.encode<A>(into:)(char *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = *(a2 + 16);
  if (!v5)
  {
LABEL_19:
    v18 = *(a3 + 16);
    if (!v18)
    {
      return result;
    }

    v19 = *v4;
    for (i = (a3 + 32); ; ++i)
    {
      v21 = *i;
      v22 = *(*i + 16);
      v23 = *(v19 + 2);
      v24 = v23 + v22;
      if (__OFADD__(v23, v22))
      {
        goto LABEL_40;
      }

      v25 = *i;

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v24 <= *(v19 + 3) >> 1)
      {
        if (*(v21 + 16))
        {
          goto LABEL_32;
        }
      }

      else
      {
        if (v23 <= v24)
        {
          v26 = v23 + v22;
        }

        else
        {
          v26 = v23;
        }

        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v26, 1, v19);
        v19 = result;
        if (*(v21 + 16))
        {
LABEL_32:
          v27 = *(v19 + 2);
          if ((*(v19 + 3) >> 1) - v27 < v22)
          {
            goto LABEL_43;
          }

          memcpy(&v19[v27 + 32], (v21 + 32), v22);

          if (v22)
          {
            v28 = *(v19 + 2);
            v16 = __OFADD__(v28, v22);
            v29 = v28 + v22;
            if (v16)
            {
              goto LABEL_45;
            }

            *(v19 + 2) = v29;
          }

          goto LABEL_22;
        }
      }

      if (v22)
      {
        goto LABEL_41;
      }

LABEL_22:
      if (!--v18)
      {
        *v4 = v19;
        return result;
      }
    }
  }

  v6 = *result;
  v7 = (a2 + 32);
  while (1)
  {
    v8 = *v7;
    v9 = *(*v7 + 16);
    v10 = *(v6 + 2);
    v11 = v10 + v9;
    if (__OFADD__(v10, v9))
    {
      break;
    }

    v12 = *v7;

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v11 <= *(v6 + 3) >> 1)
    {
      if (*(v8 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v10 <= v11)
      {
        v13 = v10 + v9;
      }

      else
      {
        v13 = v10;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v13, 1, v6);
      v6 = result;
      if (*(v8 + 16))
      {
LABEL_14:
        v14 = *(v6 + 2);
        if ((*(v6 + 3) >> 1) - v14 < v9)
        {
          goto LABEL_42;
        }

        memcpy(&v6[v14 + 32], (v8 + 32), v9);

        if (v9)
        {
          v15 = *(v6 + 2);
          v16 = __OFADD__(v15, v9);
          v17 = v15 + v9;
          if (v16)
          {
            goto LABEL_44;
          }

          *(v6 + 2) = v17;
        }

        goto LABEL_4;
      }
    }

    if (v9)
    {
      goto LABEL_39;
    }

LABEL_4:
    ++v7;
    if (!--v5)
    {
      *v4 = v6;
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
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
  return result;
}

uint64_t specialized PINEPrepareShare.encodedLength.getter(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 * v3;
  if ((v4 * v3) >> 64 != (v4 * v3) >> 63)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = *(a2 + 16);
  v7 = __OFADD__(v5, v6);
  v8 = v5 + v6;
  if (v7)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = *(a3 + 16);
  result = v8 + v9;
  if (__OFADD__(v8, v9))
  {
LABEL_10:
    __break(1u);
  }

  return result;
}

{
  v3 = *(result + 16);
  v4 = 4 * (v3 != 0);
  v5 = v4 * v3;
  if ((v4 * v3) >> 64 != (v4 * v3) >> 63)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = *(a2 + 16);
  v7 = __OFADD__(v5, v6);
  v8 = v5 + v6;
  if (v7)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v9 = *(a3 + 16);
  result = v8 + v9;
  if (__OFADD__(v8, v9))
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

{
  v3 = *(result + 16);
  v4 = 8 * (v3 != 0);
  v5 = v4 * v3;
  if ((v4 * v3) >> 64 != (v4 * v3) >> 63)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = *(a2 + 16);
  v7 = __OFADD__(v5, v6);
  v8 = v5 + v6;
  if (v7)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v9 = *(a3 + 16);
  result = v8 + v9;
  if (__OFADD__(v8, v9))
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

BOOL _ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZs6UInt64V_SfTt1g5(uint64_t a1, float a2)
{
  v3 = (LODWORD(a2) >> 23);
  v4 = LODWORD(a2) & 0x7FFFFF;
  if (!(v3 | v4))
  {
    v6 = 0;
    v7 = 0;
    result = 1;
    goto LABEL_21;
  }

  result = 0;
  v6 = 0;
  v7 = 1;
  if (v3 != 255 && a2 > -1.0)
  {
    v8 = Float.exponent.getter();
    if (v8 > 63)
    {
      v6 = 0;
      result = 0;
      v7 = 1;
      goto LABEL_21;
    }

    v9 = v8;
    v10 = Float.significandWidth.getter();
    v11 = v10 + __clz(__rbit32(v4));
    v12 = v9 - v11;
    if (__OFSUB__(v9, v11))
    {
      __break(1u);
    }

    else
    {
      if (v11 <= 63)
      {
        if (v12 < -64 || v12 > 64)
        {
LABEL_9:
          v12 = 0;
          v13 = 0;
          if ((v9 & 0x8000000000000000) == 0)
          {
            goto LABEL_19;
          }

          goto LABEL_20;
        }

        if (v12 < 0)
        {
          if (v12 == -64)
          {
            goto LABEL_9;
          }

          v12 = v4 >> (v11 - v9);
        }

        else
        {
          if (v12 == 64)
          {
            goto LABEL_9;
          }

          v12 = v4 << v12;
        }

LABEL_17:
        if ((v9 & 0x8000000000000000) == 0)
        {
LABEL_19:
          v13 = 1 << v9;
          goto LABEL_20;
        }

        v13 = 0;
LABEL_20:
        v7 = 0;
        result = v9 >= v10;
        v6 = v12 | v13;
        goto LABEL_21;
      }

      if ((v12 - 33) <= 0xFFFFFFFFFFFFFFBELL)
      {
        goto LABEL_12;
      }

      if ((v12 & 0x8000000000000000) == 0)
      {
        if (v12 < 0x20)
        {
          LODWORD(v12) = v4 << v12;
          goto LABEL_16;
        }

LABEL_12:
        LODWORD(v12) = 0;
LABEL_16:
        v12 = v12;
        goto LABEL_17;
      }
    }

    if (v12 > 0xFFFFFFFFFFFFFFE0)
    {
      LODWORD(v12) = v4 >> (v11 - v9);
      goto LABEL_16;
    }

    goto LABEL_12;
  }

LABEL_21:
  *a1 = v6;
  *(a1 + 8) = v7;
  return result;
}

BOOL _ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZs6UInt32V_SfTt1g5(uint64_t a1, float a2)
{
  v3 = (LODWORD(a2) >> 23);
  v4 = LODWORD(a2) & 0x7FFFFF;
  v5 = v3 | LODWORD(a2) & 0x7FFFFF;
  if (v5)
  {
    v5 = 0;
    v6 = 1;
    if (v3 == 255)
    {
      result = 0;
    }

    else
    {
      result = 0;
      if (a2 > -1.0)
      {
        v8 = Float.exponent.getter();
        if (v8 <= 31)
        {
          v9 = v8;
          v10 = Float.significandWidth.getter();
          v11 = v10 + __clz(__rbit32(v4));
          v12 = v9 - v11;
          if (__OFSUB__(v9, v11))
          {
            __break(1u);
          }

          else
          {
            if (v11 > 31)
            {
              if (v12 < -32 || v12 > 32)
              {
                goto LABEL_13;
              }
            }

            else if (v12 < -32 || v12 > 32)
            {
              goto LABEL_13;
            }

            if ((v12 & 0x8000000000000000) == 0)
            {
              if (v12 != 32)
              {
                v13 = v4 << v12;
                if (v9 < 0)
                {
LABEL_18:
                  v14 = 0;
                  goto LABEL_25;
                }

LABEL_24:
                v14 = 1 << v9;
                goto LABEL_25;
              }

              goto LABEL_13;
            }
          }

          if (v12 != -32)
          {
            v13 = v4 >> (v11 - v9);
            if (v9 < 0)
            {
              goto LABEL_18;
            }

            goto LABEL_24;
          }

LABEL_13:
          v13 = 0;
          v14 = 0;
          if (v9 < 0)
          {
LABEL_25:
            v6 = 0;
            v5 = v13 | v14;
            result = v9 >= v10;
            goto LABEL_26;
          }

          goto LABEL_24;
        }

        v5 = 0;
        result = 0;
        v6 = 1;
      }
    }
  }

  else
  {
    v6 = 0;
    result = 1;
  }

LABEL_26:
  *a1 = v5;
  *(a1 + 4) = v6;
  return result;
}

uint64_t specialized Array._copyContents(initializing:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    if (a3 < 0)
    {
      v13 = a3;
    }

    else
    {
      v13 = a3 & 0xFFFFFFFFFFFFFF8;
    }

    v14 = a2;
    result = MEMORY[0x2743B2FD0](v13);
    a2 = v14;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      if (a3 < 0)
      {
        v7 = a3;
      }

      else
      {
        v7 = a3 & 0xFFFFFFFFFFFFFF8;
      }

      v8 = a2;
      result = MEMORY[0x2743B2FD0](v7);
      if (result <= v8)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [BitMasks] and conformance [A], &_sSay4VDAF8BitMasksCGMd, &_sSay4VDAF8BitMasksCGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay4VDAF8BitMasksCGMd, &_sSay4VDAF8BitMasksCGMR);
            v10 = specialized protocol witness for Collection.subscript.read in conformance [A](v15, i, a3);
            v12 = *v11;

            (v10)(v15, 0);
            *(v4 + 8 * i) = v12;
          }

          return a3;
        }

        goto LABEL_22;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for BitMasks();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized closure #1 in PINE.splitSeedBytes<A>(_:)(uint64_t *a1)
{
  v5 = a1[2];
  v6 = a1[3];
  v7 = v6 >> 1;
  v8 = (v6 >> 1) - v5;
  if (__OFSUB__(v6 >> 1, v5))
  {
    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v1 = a1;
  v2 = *a1;
  v3 = a1[1];
  v4 = v6 >> 1;
  if (v8 >= 0x20)
  {
    v4 = v5 + 32;
    if (__OFADD__(v5, 32))
    {
      goto LABEL_116;
    }
  }

  if (v4 < v5)
  {
    goto LABEL_89;
  }

  if (v7 < v5)
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  if (v7 < v4)
  {
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  if (v8 < 0x20)
  {
    goto LABEL_12;
  }

  if (__OFADD__(v5, 32))
  {
    goto LABEL_117;
  }

  if (v7 < v5 + 32)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v7 = v5 + 32;
LABEL_12:
  if (v7 < v5)
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  a1[2] = v7;
  if (v6)
  {
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    v10 = swift_dynamicCastClass();
    if (!v10)
    {
      swift_unknownObjectRelease();
      v10 = MEMORY[0x277D84F90];
    }

    v11 = *(v10 + 16);

    if (__OFSUB__(v4, v5))
    {
      goto LABEL_118;
    }

    if (v11 != v4 - v5)
    {
      goto LABEL_119;
    }

    v5 = swift_dynamicCastClass();
    swift_unknownObjectRelease_n();
    if (v5)
    {
      goto LABEL_23;
    }

    v5 = MEMORY[0x277D84F90];
    goto LABEL_22;
  }

  swift_unknownObjectRetain();
  while (1)
  {
    v6 = v6 & 1 | (2 * v4);
    specialized _copyCollectionToContiguousArray<A>(_:)(v2, v3, v5, v6);
    v5 = v9;
LABEL_22:
    swift_unknownObjectRelease();
LABEL_23:
    v2 = v1[2];
    v3 = v1[3];
    v12 = v3 >> 1;
    v13 = (v3 >> 1) - v2;
    if (__OFSUB__(v3 >> 1, v2))
    {
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
LABEL_107:
      __break(1u);
LABEL_108:
      __break(1u);
LABEL_109:
      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
LABEL_112:
      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
      goto LABEL_115;
    }

    v6 = *v1;
    v14 = v1[1];
    v15 = v3 >> 1;
    if (v13 >= 0x20)
    {
      v15 = v2 + 32;
      if (__OFADD__(v2, 32))
      {
        __break(1u);
LABEL_121:
        __break(1u);
        goto LABEL_122;
      }
    }

    if (v15 < v2)
    {
      goto LABEL_96;
    }

    if (v12 < v2)
    {
      goto LABEL_97;
    }

    if (v12 < v15)
    {
      goto LABEL_98;
    }

    if (v15 < 0)
    {
      goto LABEL_99;
    }

    if (v13 >= 0x20)
    {
      if (__OFADD__(v2, 32))
      {
        goto LABEL_121;
      }

      if (v12 < v2 + 32)
      {
        goto LABEL_100;
      }

      v12 = v2 + 32;
    }

    if (v12 < v2)
    {
      goto LABEL_101;
    }

    v1[2] = v12;
    if (v3)
    {
      v4 = type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain_n();
      v16 = swift_dynamicCastClass();
      if (!v16)
      {
        swift_unknownObjectRelease();
        v16 = MEMORY[0x277D84F90];
      }

      v17 = *(v16 + 16);

      if (!__OFSUB__(v15, v2))
      {
        if (v17 == v15 - v2)
        {
          v18 = swift_dynamicCastClass();
          swift_unknownObjectRelease_n();
          if (v18)
          {
            goto LABEL_44;
          }

          goto LABEL_43;
        }

        goto LABEL_123;
      }

LABEL_122:
      __break(1u);
LABEL_123:
      swift_unknownObjectRelease_n();
      goto LABEL_37;
    }

    swift_unknownObjectRetain();
LABEL_37:
    v3 = v3 & 1 | (2 * v15);
    specialized _copyCollectionToContiguousArray<A>(_:)(v6, v14, v2, v3);
LABEL_43:
    swift_unknownObjectRelease();
LABEL_44:
    v6 = v1[2];
    v19 = v1[3];
    v20 = v19 >> 1;
    v21 = (v19 >> 1) - v6;
    if (__OFSUB__(v19 >> 1, v6))
    {
      goto LABEL_102;
    }

    v3 = *v1;
    v22 = v1[1];
    v23 = v19 >> 1;
    if (v21 >= 0x20)
    {
      v23 = v6 + 32;
      if (__OFADD__(v6, 32))
      {
        __break(1u);
LABEL_125:
        __break(1u);
LABEL_126:
        __break(1u);
LABEL_127:
        swift_unknownObjectRelease_n();
        v5 = v2;
        v22 = v36;
LABEL_58:
        specialized _copyCollectionToContiguousArray<A>(_:)(v3, v22, v6, v19 & 1 | (2 * v23));
        LOBYTE(v6) = v24;
        goto LABEL_65;
      }
    }

    if (v23 < v6)
    {
      goto LABEL_103;
    }

    if (v20 < v6)
    {
      goto LABEL_104;
    }

    if (v20 < v23)
    {
      goto LABEL_105;
    }

    if (v23 < 0)
    {
      goto LABEL_106;
    }

    if (v21 >= 0x20)
    {
      if (__OFADD__(v6, 32))
      {
        goto LABEL_125;
      }

      if (v20 < (v6 + 32))
      {
        goto LABEL_107;
      }

      v20 = v6 + 32;
    }

    if (v20 < v6)
    {
      goto LABEL_108;
    }

    v1[2] = v20;
    if ((v19 & 1) == 0)
    {
      swift_unknownObjectRetain();
      goto LABEL_58;
    }

    v36 = v22;
    v2 = v5;
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    v25 = swift_dynamicCastClass();
    if (!v25)
    {
      swift_unknownObjectRelease();
      v25 = MEMORY[0x277D84F90];
    }

    v26 = *(v25 + 16);

    if (__OFSUB__(v23, v6))
    {
      goto LABEL_126;
    }

    if (v26 != v23 - v6)
    {
      goto LABEL_127;
    }

    v6 = swift_dynamicCastClass();
    swift_unknownObjectRelease_n();
    v5 = v2;
    if (v6)
    {
      goto LABEL_66;
    }

    LOBYTE(v6) = MEMORY[0x277D84F90];
LABEL_65:
    swift_unknownObjectRelease();
LABEL_66:
    v27 = v1[2];
    v4 = v1[3];
    v28 = v4 >> 1;
    v29 = (v4 >> 1) - v27;
    if (__OFSUB__(v4 >> 1, v27))
    {
      goto LABEL_109;
    }

    v3 = *v1;
    v30 = v1[1];
    v31 = v4 >> 1;
    if (v29 >= 0x20)
    {
      v31 = v27 + 32;
      if (__OFADD__(v27, 32))
      {
        __break(1u);
LABEL_129:
        __break(1u);
LABEL_130:
        __break(1u);
LABEL_131:
        swift_unknownObjectRelease_n();
        v5 = v2;
        v30 = v36;
LABEL_80:
        specialized _copyCollectionToContiguousArray<A>(_:)(v3, v30, v27, v4 & 1 | (2 * v31));
        goto LABEL_86;
      }
    }

    if (v31 < v27)
    {
      goto LABEL_110;
    }

    if (v28 < v27)
    {
      goto LABEL_111;
    }

    if (v28 < v31)
    {
      goto LABEL_112;
    }

    if (v31 < 0)
    {
      goto LABEL_113;
    }

    if (v29 >= 0x20)
    {
      if (__OFADD__(v27, 32))
      {
        goto LABEL_129;
      }

      if (v28 < v27 + 32)
      {
        goto LABEL_114;
      }

      v28 = v27 + 32;
    }

    if (v28 >= v27)
    {
      break;
    }

LABEL_115:
    __break(1u);
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
LABEL_119:
    swift_unknownObjectRelease_n();
  }

  v1[2] = v28;
  if ((v4 & 1) == 0)
  {
    swift_unknownObjectRetain();
    goto LABEL_80;
  }

  v36 = v30;
  v2 = v5;
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v32 = swift_dynamicCastClass();
  if (!v32)
  {
    swift_unknownObjectRelease();
    v32 = MEMORY[0x277D84F90];
  }

  v33 = *(v32 + 16);

  if (__OFSUB__(v31, v27))
  {
    goto LABEL_130;
  }

  if (v33 != v31 - v27)
  {
    goto LABEL_131;
  }

  v34 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  v5 = v2;
  if (v34)
  {
    return v5;
  }

LABEL_86:
  swift_unknownObjectRelease();
  return v5;
}

uint64_t specialized Collection<>.encode<A>(into:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = (a4 >> 1) - a3;
  if (a4 >> 1 != a3)
  {
    if ((a4 >> 1) <= a3)
    {
      __break(1u);
    }

    v5 = (a2 + 8 * a3);
    do
    {
      v6 = *v5++;
      v7 = (0xCFFE47FFFEAFFFFFLL * v6 * 0xFFFEB00001uLL) >> 64;
      if (__CFADD__(-v6, v6))
      {
        v8 = v7 + 1;
      }

      else
      {
        v8 = v7;
      }

      if (v8 >= 0xFFFEB00001)
      {
        v8 = 0;
      }

      v11 = v8;
      result = specialized Array.append<A>(contentsOf:)(0, 5uLL, &v11, &v12);
      --v4;
    }

    while (v4);
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v12 = *MEMORY[0x277D85DE8];
  v4 = (a4 >> 1) - a3;
  if (a4 >> 1 != a3)
  {
    if ((a4 >> 1) <= a3)
    {
      __break(1u);
    }

    v5 = (a2 + 4 * a3);
    do
    {
      v6 = *v5++;
      v7 = v6 + 0xFFF000FEFFFFFFFFLL * v6;
      if (v7 >= 0xFFF0000100000000)
      {
        v8 = 0;
      }

      else
      {
        v8 = HIDWORD(v7);
      }

      v11 = v8;
      result = specialized Array.append<A>(contentsOf:)(0, 4uLL, &v11, &v12);
      --v4;
    }

    while (v4);
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v11 = *MEMORY[0x277D85DE8];
  v4 = (a4 >> 1) - a3;
  if (a4 >> 1 != a3)
  {
    if ((a4 >> 1) <= a3)
    {
      __break(1u);
    }

    v6 = (a2 + 8 * a3);
    do
    {
      v9 = *v6++;
      v7 = (0xFFFFFFFEFFFFFFFFLL * v9 * 0xFFFFFFFF00000001) >> 64;
      if (__CFADD__(-v9, v9))
      {
        if (v7 <= 0xFFFFFFFEFFFFFFFFLL)
        {
          ++v7;
        }

        else
        {
          v7 += 0x100000000;
        }
      }

      v10 = v7;
      result = specialized Array.append<A>(contentsOf:)(0, 8uLL, &v10, &v11);
      --v4;
    }

    while (v4);
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

char *specialized VDAFEncodable.encodedBytes.getter(char *result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 1;
  if (a3 >> 1 != a2)
  {
    if ((a3 >> 1) <= a2)
    {
      __break(1u);
    }

    else
    {
      v8 = __OFSUB__(v6, a2);
      v9 = v6 - a2;
      if (!v8)
      {
        v10 = (v9 * 5) >> 64;
        v7 = 5 * v9;
        if (v10 == v7 >> 63)
        {
          goto LABEL_6;
        }

LABEL_12:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

  v7 = 0;
LABEL_6:
  if (*(MEMORY[0x277D84F90] + 16) <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = *(MEMORY[0x277D84F90] + 16);
  }

  v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0, MEMORY[0x277D84F90]);
  specialized Collection<>.encode<A>(into:)(&v12, v5, a2, a3);
  return v12;
}

{
  v5 = result;
  v6 = a3 >> 1;
  if (a3 >> 1 != a2)
  {
    if ((a3 >> 1) <= a2)
    {
      __break(1u);
    }

    else
    {
      v8 = __OFSUB__(v6, a2);
      v9 = v6 - a2;
      if (!v8)
      {
        if ((v9 - 0x2000000000000000) >> 62 == 3)
        {
          v7 = 4 * v9;
          goto LABEL_7;
        }

LABEL_13:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  v7 = 0;
LABEL_7:
  if (*(MEMORY[0x277D84F90] + 16) <= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = *(MEMORY[0x277D84F90] + 16);
  }

  v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0, MEMORY[0x277D84F90]);
  specialized Collection<>.encode<A>(into:)(&v11, v5, a2, a3);
  return v11;
}

{
  v5 = result;
  v6 = a3 >> 1;
  if (a3 >> 1 != a2)
  {
    if ((a3 >> 1) <= a2)
    {
      __break(1u);
    }

    else
    {
      v8 = __OFSUB__(v6, a2);
      v9 = v6 - a2;
      if (!v8)
      {
        if ((v9 - 0x1000000000000000) >> 61 == 7)
        {
          v7 = 8 * v9;
          goto LABEL_7;
        }

LABEL_13:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  v7 = 0;
LABEL_7:
  if (*(MEMORY[0x277D84F90] + 16) <= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = *(MEMORY[0x277D84F90] + 16);
  }

  v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0, MEMORY[0x277D84F90]);
  specialized Collection<>.encode<A>(into:)(&v11, v5, a2, a3);
  return v11;
}

void specialized convolveDirectly<A, B, C, D>(_:withKernel:result:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, char **a5)
{
  v9 = a3 >> 1;
  if (a3 >> 1 != a2)
  {
    v10 = a4;
    v11 = *(a4 + 16);
    if (v11)
    {
      v13 = v9 - a2;
      if (__OFSUB__(v9, a2))
      {
        goto LABEL_58;
      }

      v14 = v13 + v11;
      if (__OFADD__(v13, v11))
      {
        goto LABEL_59;
      }

      v8 = v14 - 1;
      if (__OFSUB__(v14, 1))
      {
        goto LABEL_60;
      }

      v5 = a5;
      v7 = *a5;
      if (*(*a5 + 2) < v8)
      {
        goto LABEL_61;
      }

      if ((v8 & 0x8000000000000000) != 0)
      {
        goto LABEL_62;
      }

      v6 = a1;
      if (v14 == 1)
      {
        goto LABEL_12;
      }

      v15 = *a5;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_64;
      }

      while (v8 <= *(v7 + 2))
      {
        bzero(v7 + 32, 8 * v8);
        *v5 = v7;
LABEL_12:
        if ((v13 & 0x8000000000000000) != 0)
        {
          goto LABEL_63;
        }

        if (!v13)
        {
          return;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_66;
        }

LABEL_15:
        v16 = 0;
        v17 = (v10 + 32);
        v18 = v7 + 32;
LABEL_17:
        if (__OFADD__(v16, 1))
        {
          goto LABEL_56;
        }

        if ((v16 + a2) < v9 && v16 < v13)
        {
          v19 = 0;
          v20 = v16 + 1;
          v21 = v17;
          v22 = v11;
          v23 = v16;
          v24 = v18;
          while (1)
          {
            v26 = *(v6 + 8 * (v16 + a2));
            v27 = *v21++;
            v28 = (v27 * v26) >> 64;
            v10 = (0xCFFE47FFFEAFFFFFLL * v27 * v26 * 0xFFFEB00001uLL) >> 64;
            v29 = __CFADD__(-(v27 * v26), v27 * v26);
            v30 = v10 + v28;
            if (__CFADD__(v10, v28))
            {
              goto LABEL_28;
            }

            if (v30 == -1)
            {
              break;
            }

            v33 = v30 + v29;
            if (v33 >= 0xFFFEB00001)
            {
              v32 = v33 - 0xFFFEB00001;
            }

            else
            {
              v32 = v33;
            }

LABEL_34:
            if (v23 >= *(v7 + 2))
            {
              goto LABEL_52;
            }

            v34 = *v24;
            if (v32)
            {
              v25 = &v7[8 * v16 + 32 + 8 * v19];
              v35 = v32 <= 0xFFFEB00001;
              v36 = 0xFFFEB00001 - v32;
              if (!v35)
              {
                goto LABEL_49;
              }

              if (v34 >= v36)
              {
                v34 -= v36;
              }

              else
              {
                v35 = v36 <= 0xFFFEB00001;
                v37 = 0xFFFEB00001 - v36;
                if (!v35)
                {
                  goto LABEL_54;
                }

                v35 = __CFADD__(v34, v37);
                v34 += v37;
                if (v35)
                {
                  goto LABEL_55;
                }
              }
            }

            else
            {
              v25 = v24;
            }

            *v25 = v34;
            ++v24;
            ++v23;
            ++v19;
            if (!--v22)
            {
              v18 += 8;
              ++v16;
              if (v20 != v13)
              {
                goto LABEL_17;
              }

              goto LABEL_50;
            }
          }

          if (!v29)
          {
            if (v23 < *(v7 + 2))
            {
              v38 = *v24;
LABEL_49:
              __break(1u);
LABEL_50:
              *v5 = v7;
              return;
            }

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
            goto LABEL_57;
          }

          v29 = 1;
LABEL_28:
          v31 = v29 + v30;
          v32 = v31 - 0xFFFEB00001;
          if (v31 >= 0xFFFEB00001)
          {
            goto LABEL_53;
          }

          goto LABEL_34;
        }

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
        v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
      }

      __break(1u);
LABEL_66:
      v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
      goto LABEL_15;
    }
  }
}

{
  v9 = a3 >> 1;
  if (a3 >> 1 != a2)
  {
    v11 = *(a4 + 16);
    if (v11)
    {
      v13 = v9 - a2;
      if (__OFSUB__(v9, a2))
      {
        goto LABEL_48;
      }

      v14 = v13 + v11;
      if (__OFADD__(v13, v11))
      {
        goto LABEL_49;
      }

      v8 = v14 - 1;
      if (__OFSUB__(v14, 1))
      {
        goto LABEL_50;
      }

      v5 = a5;
      v7 = *a5;
      if (*(*a5 + 2) < v8)
      {
        goto LABEL_51;
      }

      if ((v8 & 0x8000000000000000) != 0)
      {
        goto LABEL_52;
      }

      v6 = a1;
      if (v14 == 1)
      {
        goto LABEL_12;
      }

      v15 = *a5;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_54;
      }

      while (v8 <= *(v7 + 2))
      {
        bzero(v7 + 32, 4 * v8);
        *v5 = v7;
LABEL_12:
        if ((v13 & 0x8000000000000000) == 0)
        {
          if (!v13)
          {
            return;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_15:
            v16 = 0;
            v17 = 8;
LABEL_17:
            v18 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              goto LABEL_46;
            }

            v19 = v16 + a2;
            if ((v16 + a2) < v9 && v16 < v13)
            {
              ++v16;
              v20 = (a4 + 32);
              v21 = v11;
              v22 = v17;
              while (1)
              {
                v24 = *v20++;
                v25 = v24 * *(v6 + 4 * v19);
                v26 = 4293918721 * (-1048577 * v25);
                v27 = __CFADD__(v26, v25);
                v28 = v26 + v25;
                v29 = HIDWORD(v28);
                if (v27)
                {
                  v30 = HIDWORD(v28) + 0xFFFFF;
                  if (v29 >= 0xFFF00001)
                  {
                    goto LABEL_44;
                  }
                }

                else
                {
                  v30 = v28 >= 0xFFF0000100000000 ? HIDWORD(v28) + 0xFFFFF : HIDWORD(v28);
                }

                if ((v22 - 8) >= *(v7 + 2))
                {
                  break;
                }

                v23 = *&v7[4 * v22];
                if (v30)
                {
                  v27 = v30 <= 0xFFF00001;
                  v31 = -1048575 - v30;
                  if (!v27)
                  {
                    goto LABEL_43;
                  }

                  if (v23 >= v31)
                  {
                    v23 -= v31;
                  }

                  else
                  {
                    v27 = v31 <= 0xFFF00001;
                    v32 = -1048575 - v31;
                    if (!v27)
                    {
                      goto LABEL_45;
                    }

                    v27 = __CFADD__(v23, v32);
                    v23 += v32;
                    if (v27)
                    {
                      __break(1u);
LABEL_40:
                      *v5 = v7;
                      return;
                    }
                  }
                }

                *&v7[4 * v22++] = v23;
                if (!--v21)
                {
                  ++v17;
                  if (v18 != v13)
                  {
                    goto LABEL_17;
                  }

                  goto LABEL_40;
                }
              }

              __break(1u);
LABEL_43:
              __break(1u);
LABEL_44:
              __break(1u);
LABEL_45:
              __break(1u);
LABEL_46:
              __break(1u);
            }

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
            goto LABEL_53;
          }

LABEL_56:
          v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
          goto LABEL_15;
        }

LABEL_53:
        __break(1u);
LABEL_54:
        v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
      }

      __break(1u);
      goto LABEL_56;
    }
  }
}

{
  v9 = a3 >> 1;
  if (a3 >> 1 != a2)
  {
    v11 = *(a4 + 16);
    if (v11)
    {
      v13 = v9 - a2;
      if (__OFSUB__(v9, a2))
      {
        goto LABEL_57;
      }

      v14 = v13 + v11;
      if (__OFADD__(v13, v11))
      {
        goto LABEL_58;
      }

      v8 = v14 - 1;
      if (__OFSUB__(v14, 1))
      {
        goto LABEL_59;
      }

      v5 = a5;
      v7 = *a5;
      if (*(*a5 + 2) < v8)
      {
        goto LABEL_60;
      }

      if ((v8 & 0x8000000000000000) != 0)
      {
        goto LABEL_61;
      }

      v6 = a1;
      if (v14 == 1)
      {
        goto LABEL_12;
      }

      v15 = *a5;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_63;
      }

      while (v8 <= *(v7 + 2))
      {
        bzero(v7 + 32, 8 * v8);
        *v5 = v7;
LABEL_12:
        if ((v13 & 0x8000000000000000) != 0)
        {
          goto LABEL_62;
        }

        if (!v13)
        {
          return;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_65;
        }

LABEL_15:
        v16 = 0;
        v17 = v7 + 32;
LABEL_17:
        if (__OFADD__(v16, 1))
        {
          goto LABEL_55;
        }

        if ((v16 + a2) < v9 && v16 < v13)
        {
          v18 = 0;
          v19 = v16 + 1;
          v20 = (a4 + 32);
          v21 = v11;
          v22 = v16;
          v23 = v17;
          while (1)
          {
            v25 = *(v6 + 8 * (v16 + a2));
            v26 = *v20++;
            v27 = (v26 * v25) >> 64;
            v28 = (0xFFFFFFFEFFFFFFFFLL * v26 * v25 * 0xFFFFFFFF00000001) >> 64;
            v29 = __CFADD__(-(v26 * v25), v26 * v25);
            v30 = v28 + v27;
            if (!__CFADD__(v28, v27))
            {
              if (v30 != -1)
              {
                v33 = v30 + v29;
                if (v33 >= 0xFFFFFFFF00000001)
                {
                  v32 = v33 + 0xFFFFFFFF;
                }

                else
                {
                  v32 = v33;
                }

                goto LABEL_34;
              }

              if (!v29)
              {
                if (v22 >= *(v7 + 2))
                {
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
                  break;
                }

                v34 = *v23;
                v24 = v23;
                v36 = 0xFFFFFFFE00000003;
LABEL_38:
                if (v34 >= v36)
                {
                  v34 -= v36;
                }

                else
                {
                  v35 = v36 <= 0xFFFFFFFF00000001;
                  v37 = 0xFFFFFFFF00000001 - v36;
                  if (!v35)
                  {
                    goto LABEL_53;
                  }

                  v35 = __CFADD__(v34, v37);
                  v34 += v37;
                  if (v35)
                  {
                    goto LABEL_54;
                  }
                }

                goto LABEL_22;
              }

              v29 = 1;
            }

            v31 = v29 + v30;
            v32 = v31 + 0xFFFFFFFF;
            if (v31 >= 0xFFFFFFFF00000001)
            {
              goto LABEL_52;
            }

LABEL_34:
            if (v22 >= *(v7 + 2))
            {
              goto LABEL_51;
            }

            v34 = *v23;
            if (v32)
            {
              v24 = &v7[8 * v16 + 32 + 8 * v18];
              v35 = v32 <= 0xFFFFFFFF00000001;
              v36 = 0xFFFFFFFF00000001 - v32;
              if (!v35)
              {
                __break(1u);
LABEL_49:
                *v5 = v7;
                return;
              }

              goto LABEL_38;
            }

            v24 = v23;
LABEL_22:
            *v24 = v34;
            ++v23;
            ++v22;
            ++v18;
            if (!--v21)
            {
              v17 += 8;
              ++v16;
              if (v19 != v13)
              {
                goto LABEL_17;
              }

              goto LABEL_49;
            }
          }
        }

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
        v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
      }

      __break(1u);
LABEL_65:
      v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
      goto LABEL_15;
    }
  }
}

uint64_t specialized closure #1 in VerificationJointRandomness.xof.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4HMACVyAA6SHA256VGMd, &_s9CryptoKit4HMACVyAA6SHA256VGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v22[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA256VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA256VGMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v22[-v12];
  v14 = specialized VerificationJointRandomness.seed.getter(&lazy protocol witness table cache variable for type VerificationJointRandomness<PINE<Field40, UnsafeBufferPointer<Float>, XofHmacSha256Aes128>, Field40> and conformance VerificationJointRandomness<A, B>, &_s4VDAF27VerificationJointRandomnessCyAA4PINEVyAA7Field40VSRySfGAA19XofHmacSha256Aes128CGAGGMd, &_s4VDAF27VerificationJointRandomnessCyAA4PINEVyAA7Field40VSRySfGAA19XofHmacSha256Aes128CGAGGMR);
  v15 = _s4VDAF4PINEV19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt0B5Tm(2u, 101777407);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  result = swift_initStackObject();
  *(result + 16) = xmmword_270C44540;
  v17 = *(a1 + 48);
  if ((v17 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v17 > 0xFF)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v18 = result;
  *(result + 32) = v17;
  if (*(v14 + 16) != 32)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  result = specialized XofHmacSha256Aes128.__allocating_init(seedBytes:domainSeparationTag:binder:)(v19, v15, v18);
  if (!*(result + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream))
  {
    v20 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_hmac;
    v21 = result;
    swift_beginAccess();
    (*(v3 + 16))(v7, v21 + v20, v2);
    HMAC.finalize()();
    (*(v3 + 8))(v7, v2);
    HashedAuthenticationCode.withUnsafeBytes<A>(_:)();

    (*(v9 + 8))(v13, v8);
    return v21;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t specialized discreteFourierTransform<A, B, C>(input:size:output:)(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, char **a5)
{
  specialized static BitReversal.indicesFor(_:)(a4);
  if ((a4 & 0x8000000000000000) != 0)
  {
    goto LABEL_100;
  }

  if (!a4)
  {

    v6 = *a5;
LABEL_21:
    v5 = __clz(__rbit64(a4));
    v60 = a5;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_22;
  }

  if (*(v12 + 16) < a4)
  {
    __break(1u);
    goto LABEL_103;
  }

  v5 = v12;
  v6 = *a5;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_103:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
    v6 = result;
  }

  if (__OFSUB__(a3 >> 1, a2))
  {
    __break(1u);
    return result;
  }

  v14 = 4;
  while (1)
  {
    v16 = v14 - 4;
    v17 = *(v5 + 8 * v14);
    if (v17 >= ((a3 >> 1) - a2))
    {
      if (v16 >= *(v6 + 2))
      {
        goto LABEL_94;
      }

      v15 = 0;
      goto LABEL_9;
    }

    v18 = __OFADD__(a2, v17);
    v19 = a2 + v17;
    if (v18)
    {
      goto LABEL_95;
    }

    if (v19 < a2 || v19 >= (a3 >> 1))
    {
      break;
    }

    if (v16 >= *(v6 + 2))
    {
      goto LABEL_97;
    }

    v15 = *(a1 + 8 * v19);
LABEL_9:
    *&v6[8 * v14++] = v15;
    if (v14 - a4 == 4)
    {

      *a5 = v6;
      goto LABEL_21;
    }
  }

LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
  while (2)
  {
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
LABEL_22:
    v21 = 0;
    v22 = v6 + 32;
    v23 = 0x28084B000uLL;
    v24 = &lazy protocol witness table cache variable for type Int and conformance Int;
    v25 = 1;
    result = &one-time initialization token for one;
LABEL_23:
    v26 = v25;
    if (v25 >= v5)
    {
      if ((v25 != v5) | v21 & 1)
      {
        goto LABEL_92;
      }

      v21 = 1;
      v25 = v5;
    }

    else
    {
      ++v25;
    }

    if (*(v23 + 3120) == -1)
    {
      if (v26 > 20)
      {
        goto LABEL_80;
      }

LABEL_29:
      if (v26 < 0)
      {
        continue;
      }

      if (!v26)
      {
        goto LABEL_23;
      }

      v27 = 0;
      v28 = v24[347];
      v29 = 1 << v26;
      v30 = (1 << v26) >> 1;
      v31 = outlined read-only object #0 of one-time initialization function for roots[v26 + 4];
      v32 = a4 >> v26;
      while (2)
      {
        if (v27 == v30)
        {
          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
          goto LABEL_96;
        }

        if (v32)
        {
          v36 = 0;
          while (1)
          {
            v38 = v29 * v36;
            if ((v29 * v36) >> 64 != (v29 * v36) >> 63)
            {
              goto LABEL_81;
            }

            v39 = v38 + v27;
            if (__OFADD__(v38, v27))
            {
              goto LABEL_82;
            }

            if ((v39 & 0x8000000000000000) != 0)
            {
              goto LABEL_83;
            }

            v40 = *(v6 + 2);
            if (v39 >= v40)
            {
              goto LABEL_84;
            }

            v41 = v39 + v30;
            if (__OFADD__(v39, v30))
            {
              goto LABEL_85;
            }

            if (v41 >= v40)
            {
              goto LABEL_86;
            }

            v42 = *&v22[8 * v39];
            v43 = *&v22[8 * v41];
            v44 = (v43 * v28) >> 64;
            v45 = v43 * v28;
            v46 = 0xCFFE47FFFEAFFFFFLL * v43 * v28;
            v47 = (v46 * 0xFFFEB00001uLL) >> 64;
            v48 = __CFADD__(0xFFFEB00001 * v46, v45);
            v35 = __CFADD__(v47, v44);
            v49 = v47 + v44;
            if (v35)
            {
              goto LABEL_51;
            }

            if (v49 == -1)
            {
              break;
            }

            v54 = v49 + v48;
            if (v54 >= 0xFFFEB00001)
            {
              v51 = v54 - 0xFFFEB00001;
            }

            else
            {
              v51 = v54;
            }

            if (!v51)
            {
              goto LABEL_38;
            }

LABEL_52:
            v52 = 0xFFFEB00001 - v51;
            if (v51 > 0xFFFEB00001)
            {
              goto LABEL_87;
            }

            v53 = v42 - v52;
            if (v42 < v52)
            {
              if (v52 > 0xFFFEB00001)
              {
                goto LABEL_89;
              }

              v53 = v42 + v51;
              if (__CFADD__(v42, v51))
              {
                goto LABEL_91;
              }
            }

            *&v22[8 * v39] = v53;
            if (v42 >= v51)
            {
LABEL_38:
              v37 = v42 - v51;
              goto LABEL_39;
            }

            v37 = v42 + v52;
            if (__CFADD__(v42, v52))
            {
              goto LABEL_90;
            }

LABEL_39:
            ++v36;
            *&v22[8 * v41] = v37;
            if (v32 == v36)
            {
              goto LABEL_69;
            }
          }

          if (!v48)
          {
            goto LABEL_87;
          }

          v48 = 1;
LABEL_51:
          v50 = v48 + v49;
          v51 = v50 - 0xFFFEB00001;
          if (v50 >= 0xFFFEB00001)
          {
            goto LABEL_88;
          }

          goto LABEL_52;
        }

LABEL_69:
        v55 = v28 * v31;
        v56 = (v28 * v31) >> 64;
        v57 = (0xCFFE47FFFEAFFFFFLL * v55 * 0xFFFEB00001uLL) >> 64;
        v33 = __CFADD__(-v55, v55);
        v35 = __CFADD__(v57, v56);
        v58 = v57 + v56;
        if (!v35)
        {
          if (v58 != -1)
          {
            v28 = v58 + v33;
            if (v28 >= 0xFFFEB00001)
            {
              v28 -= 0xFFFEB00001;
            }

            goto LABEL_34;
          }

          if (!v33)
          {
            v28 = 0xFFFFFF00014FFFFELL;
            goto LABEL_34;
          }

          v33 = 1;
        }

        v34 = v33 + v58;
        v35 = __CFADD__(v34, 0xFFFFFF00014FFFFFLL);
        v28 = v34 - 0xFFFEB00001;
        if (v35)
        {
          goto LABEL_98;
        }

LABEL_34:
        if (++v27 == v30)
        {
          goto LABEL_23;
        }

        continue;
      }
    }

    break;
  }

  swift_once();
  result = &one-time initialization token for one;
  v24 = &lazy protocol witness table cache variable for type Int and conformance Int;
  v23 = 0x28084B000;
  if (v26 <= 20)
  {
    goto LABEL_29;
  }

LABEL_80:
  _StringGuts.grow(_:)(26);

  v6 = MEMORY[0x277D83BF8];
  dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2743B25F0](2112544, 0xE300000000000000);
  v59 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2743B25F0](v59);

  MEMORY[0x2743B25F0](0xD000000000000013, 0x8000000270C51DA0);
  result = _assertionFailure(_:_:file:line:flags:)();
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
  *v60 = v6;
  return result;
}

{
  specialized static BitReversal.indicesFor(_:)(a4);
  if ((a4 & 0x8000000000000000) != 0)
  {
    goto LABEL_87;
  }

  if (!a4)
  {

    v6 = *a5;
LABEL_21:
    a3 = __clz(__rbit64(a4));
    v51 = a5;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_22;
  }

  if (*(v12 + 16) < a4)
  {
    __break(1u);
    goto LABEL_90;
  }

  v5 = v12;
  v6 = *a5;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_90:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
    v6 = result;
  }

  if (__OFSUB__(a3 >> 1, a2))
  {
    __break(1u);
    return result;
  }

  v14 = 0;
  while (1)
  {
    v16 = *(v5 + 8 * v14 + 32);
    if (v16 >= ((a3 >> 1) - a2))
    {
      if (v14 >= *(v6 + 2))
      {
        goto LABEL_81;
      }

      v15 = 0;
      goto LABEL_9;
    }

    v17 = __OFADD__(a2, v16);
    v18 = a2 + v16;
    if (v17)
    {
      goto LABEL_82;
    }

    if (v18 < a2 || v18 >= (a3 >> 1))
    {
      break;
    }

    if (v14 >= *(v6 + 2))
    {
      goto LABEL_84;
    }

    v15 = *(a1 + 4 * v18);
LABEL_9:
    *&v6[4 * v14++ + 32] = v15;
    if (a4 == v14)
    {

      *a5 = v6;
      goto LABEL_21;
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
LABEL_87:
  __break(1u);
LABEL_88:
  v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
LABEL_22:
  v20 = 0;
  v21 = v6 + 32;
  v22 = 0x28084B000uLL;
  v23 = &lazy protocol witness table cache variable for type Int and conformance Int;
  v24 = 1;
  result = &one-time initialization token for one;
  while (1)
  {
LABEL_23:
    v25 = v24;
    if (v24 >= a3)
    {
      if ((v24 != a3) | v20 & 1)
      {
        goto LABEL_79;
      }

      v20 = 1;
      v24 = a3;
    }

    else
    {
      ++v24;
    }

    if (*(v22 + 3104) == -1)
    {
      if (v25 > 20)
      {
        break;
      }

      goto LABEL_29;
    }

    v50 = v20;
    swift_once();
    result = &one-time initialization token for one;
    v23 = &lazy protocol witness table cache variable for type Int and conformance Int;
    v22 = 0x28084B000;
    v20 = v50;
    if (v25 > 20)
    {
      break;
    }

LABEL_29:
    if (v25 < 0)
    {
      goto LABEL_86;
    }

    if (v25)
    {
      v26 = 0;
      LODWORD(v27) = *(v23 + 692);
      v28 = 1 << v25;
      v29 = (1 << v25) >> 1;
      v30 = outlined read-only object #0 of one-time initialization function for roots[v25 + 8];
      v31 = a4 >> v25;
      while (v26 != v29)
      {
        if (v31)
        {
          for (i = 0; v31 != i; ++i)
          {
            v33 = v28 * i;
            if ((v28 * i) >> 64 != (v28 * i) >> 63)
            {
              goto LABEL_68;
            }

            v34 = v33 + v26;
            if (__OFADD__(v33, v26))
            {
              goto LABEL_69;
            }

            if ((v34 & 0x8000000000000000) != 0)
            {
              goto LABEL_70;
            }

            v35 = *(v6 + 2);
            if (v34 >= v35)
            {
              goto LABEL_71;
            }

            v36 = v34 + v29;
            if (__OFADD__(v34, v29))
            {
              goto LABEL_72;
            }

            if (v36 >= v35)
            {
              goto LABEL_73;
            }

            v37 = *&v21[4 * v34];
            v38 = *&v21[4 * v36] * v27;
            v39 = 4293918721 * (-1048577 * v38);
            v40 = __CFADD__(v39, v38);
            v41 = v39 + v38;
            v42 = HIDWORD(v41);
            if (v40)
            {
              LODWORD(v42) = HIDWORD(v41) + 0xFFFFF;
              if (HIDWORD(v41) >= 0xFFF00001)
              {
                goto LABEL_75;
              }
            }

            else
            {
              if (v41 >= 0xFFF0000100000000)
              {
                LODWORD(v42) = HIDWORD(v41) + 0xFFFFF;
              }

              if (!v42)
              {
                v44 = *&v21[4 * v34];
                goto LABEL_58;
              }
            }

            v43 = -1048575 - v42;
            if (v42 > 0xFFF00001)
            {
              goto LABEL_74;
            }

            v44 = v37 - v43;
            if (v37 < v43)
            {
              if (v43 > 0xFFF00001)
              {
                goto LABEL_77;
              }

              v44 = v37 + v42;
              if (__CFADD__(v37, v42))
              {
                goto LABEL_78;
              }
            }

LABEL_58:
            *&v21[4 * v34] = v44;
            v45 = v37 - v42;
            if (v37 < v42)
            {
              v45 = v37 + -1048575 - v42;
              if (__CFADD__(v37, -1048575 - v42))
              {
                goto LABEL_76;
              }
            }

            *&v21[4 * v36] = v45;
          }
        }

        v46 = v27 * v30;
        v47 = 4293918721 * (-1048577 * v46);
        v40 = __CFADD__(v47, v46);
        v48 = v47 + v46;
        v27 = HIDWORD(v48);
        if (v40)
        {
          LODWORD(v27) = HIDWORD(v48) + 0xFFFFF;
          if (HIDWORD(v48) >= 0xFFF00001)
          {
            goto LABEL_85;
          }
        }

        else if (v48 >= 0xFFF0000100000000)
        {
          LODWORD(v27) = HIDWORD(v48) + 0xFFFFF;
        }

        if (++v26 == v29)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }
  }

  _StringGuts.grow(_:)(26);

  v6 = MEMORY[0x277D83BF8];
  dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2743B25F0](2112544, 0xE300000000000000);
  v49 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2743B25F0](v49);

  MEMORY[0x2743B25F0](0xD000000000000013, 0x8000000270C51DA0);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
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
LABEL_75:
  __break(1u);
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  *v51 = v6;
  return result;
}

{
  specialized static BitReversal.indicesFor(_:)(a4);
  if ((a4 & 0x8000000000000000) != 0)
  {
    goto LABEL_100;
  }

  if (!a4)
  {

    v5 = *a5;
LABEL_21:
    v7 = __clz(__rbit64(a4));
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_22;
  }

  if (*(v13 + 16) < a4)
  {
    __break(1u);
    goto LABEL_103;
  }

  v6 = v13;
  v5 = *a5;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_103:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  if (__OFSUB__(a3 >> 1, a2))
  {
    __break(1u);
    return result;
  }

  v15 = 4;
  while (1)
  {
    v17 = v15 - 4;
    v18 = *(v6 + 8 * v15);
    if (v18 >= ((a3 >> 1) - a2))
    {
      if (v17 >= *(v5 + 2))
      {
        goto LABEL_94;
      }

      v16 = 0;
      goto LABEL_9;
    }

    v19 = __OFADD__(a2, v18);
    v20 = a2 + v18;
    if (v19)
    {
      goto LABEL_95;
    }

    if (v20 < a2 || v20 >= (a3 >> 1))
    {
      break;
    }

    if (v17 >= *(v5 + 2))
    {
      goto LABEL_97;
    }

    v16 = *(a1 + 8 * v20);
LABEL_9:
    *&v5[8 * v15++] = v16;
    if (v15 - a4 == 4)
    {

      *a5 = v5;
      goto LABEL_21;
    }
  }

LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
  while (2)
  {
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
LABEL_22:
    v22 = 0;
    v23 = v5 + 32;
    v24 = 0x28084B000uLL;
    v25 = &lazy protocol witness table cache variable for type Int and conformance Int;
    v26 = 1;
    result = &one-time initialization token for one;
LABEL_23:
    v27 = v26;
    if (v26 >= v7)
    {
      if ((v26 != v7) | v22 & 1)
      {
        goto LABEL_92;
      }

      v22 = 1;
      v26 = v7;
    }

    else
    {
      ++v26;
    }

    if (*(v24 + 3136) == -1)
    {
      if (v27 > 20)
      {
        goto LABEL_80;
      }

LABEL_29:
      if (v27 < 0)
      {
        continue;
      }

      if (!v27)
      {
        goto LABEL_23;
      }

      v28 = 0;
      v29 = v25[349];
      v30 = 1 << v27;
      v31 = (1 << v27) >> 1;
      v32 = outlined read-only object #0 of one-time initialization function for roots[v27 + 4];
      v33 = a4 >> v27;
      while (2)
      {
        if (v28 == v31)
        {
          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
          goto LABEL_96;
        }

        if (v33)
        {
          v37 = 0;
          while (1)
          {
            v39 = v30 * v37;
            if ((v30 * v37) >> 64 != (v30 * v37) >> 63)
            {
              goto LABEL_81;
            }

            v40 = v39 + v28;
            if (__OFADD__(v39, v28))
            {
              goto LABEL_82;
            }

            if ((v40 & 0x8000000000000000) != 0)
            {
              goto LABEL_83;
            }

            v41 = *(v5 + 2);
            if (v40 >= v41)
            {
              goto LABEL_84;
            }

            v42 = v40 + v31;
            if (__OFADD__(v40, v31))
            {
              goto LABEL_85;
            }

            if (v42 >= v41)
            {
              goto LABEL_86;
            }

            v43 = *&v23[8 * v40];
            v44 = *&v23[8 * v42];
            v45 = (v44 * v29) >> 64;
            v46 = (0xFFFFFFFEFFFFFFFFLL * v44 * v29 * 0xFFFFFFFF00000001) >> 64;
            v47 = __CFADD__(-(v44 * v29), v44 * v29);
            v36 = __CFADD__(v46, v45);
            v48 = v46 + v45;
            if (v36)
            {
              goto LABEL_51;
            }

            if (v48 != -1)
            {
              break;
            }

            if (v47)
            {
              v47 = 1;
LABEL_51:
              v49 = v47 + v48;
              v50 = v49 + 0xFFFFFFFF;
              if (v49 >= 0xFFFFFFFF00000001)
              {
                goto LABEL_88;
              }

LABEL_52:
              v51 = 0xFFFFFFFF00000001 - v50;
              if (v50 > 0xFFFFFFFF00000001)
              {
                goto LABEL_87;
              }

              goto LABEL_53;
            }

            v50 = 4294967294;
            v51 = 0xFFFFFFFE00000003;
LABEL_53:
            v52 = v43 - v51;
            if (v43 < v51)
            {
              v53 = 0xFFFFFFFF00000001 - v51;
              if (v51 > 0xFFFFFFFF00000001)
              {
                goto LABEL_89;
              }

              v36 = __CFADD__(v43, v53);
              v52 = v43 + v53;
              if (v36)
              {
                goto LABEL_91;
              }
            }

            *&v23[8 * v40] = v52;
            if (v43 >= v50)
            {
LABEL_38:
              v38 = v43 - v50;
              goto LABEL_39;
            }

            v38 = v43 + v51;
            if (__CFADD__(v43, v51))
            {
              goto LABEL_90;
            }

LABEL_39:
            ++v37;
            *&v23[8 * v42] = v38;
            if (v33 == v37)
            {
              goto LABEL_69;
            }
          }

          v54 = v48 + v47;
          if (v54 >= 0xFFFFFFFF00000001)
          {
            v50 = v54 + 0xFFFFFFFF;
          }

          else
          {
            v50 = v54;
          }

          if (!v50)
          {
            goto LABEL_38;
          }

          goto LABEL_52;
        }

LABEL_69:
        v55 = (v29 * v32) >> 64;
        v56 = (0xFFFFFFFEFFFFFFFFLL * v29 * v32 * 0xFFFFFFFF00000001) >> 64;
        v34 = __CFADD__(-(v29 * v32), v29 * v32);
        v57 = v56 + v55;
        if (!__CFADD__(v56, v55))
        {
          if (v57 != -1)
          {
            v29 = v57 + v34;
            if (v29 >= 0xFFFFFFFF00000001)
            {
              v29 += 0xFFFFFFFFLL;
            }

            goto LABEL_34;
          }

          if (!v34)
          {
            v29 = 4294967294;
            goto LABEL_34;
          }

          v34 = 1;
        }

        v35 = v34 + v57;
        v36 = __CFADD__(v35, 0xFFFFFFFFLL);
        v29 = v35 + 0xFFFFFFFFLL;
        if (v36)
        {
          goto LABEL_98;
        }

LABEL_34:
        if (++v28 == v31)
        {
          goto LABEL_23;
        }

        continue;
      }
    }

    break;
  }

  swift_once();
  result = &one-time initialization token for one;
  v25 = &lazy protocol witness table cache variable for type Int and conformance Int;
  v24 = 0x28084B000;
  if (v27 <= 20)
  {
    goto LABEL_29;
  }

LABEL_80:
  _StringGuts.grow(_:)(26);

  v5 = MEMORY[0x277D83BF8];
  dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2743B25F0](2112544, 0xE300000000000000);
  v58 = dispatch thunk of CustomStringConvertible.description.getter();
  a5 = v59;
  MEMORY[0x2743B25F0](v58);

  MEMORY[0x2743B25F0](0xD000000000000013, 0x8000000270C51DA0);
  result = _assertionFailure(_:_:file:line:flags:)();
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
  *a5 = v5;
  return result;
}

uint64_t specialized Data._Representation.init(capacity:)(uint64_t result)
{
  if (result)
  {
    if (result < 15)
    {
      return 0;
    }

    else
    {
      v1 = result;
      v2 = type metadata accessor for __DataStorage();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      __DataStorage.init(capacity:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = 0;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t outlined init with copy of PINEInputShare<Field40, XofHmacSha256Aes128>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t lazy protocol witness table accessor for type Prio3Error and conformance Prio3Error()
{
  result = lazy protocol witness table cache variable for type Prio3Error and conformance Prio3Error;
  if (!lazy protocol witness table cache variable for type Prio3Error and conformance Prio3Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Prio3Error and conformance Prio3Error);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Prio3Error and conformance Prio3Error;
  if (!lazy protocol witness table cache variable for type Prio3Error and conformance Prio3Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Prio3Error and conformance Prio3Error);
  }

  return result;
}

uint64_t _s4VDAF12VDAFProtocolPAAE16decodeProofShare_12aggregatorID5count7makeXOFs10ArraySliceVyqd__GAA0E0Oyqd__G_s5UInt8VSi0J0QzAA4SeedVXEtKAA12FieldElementRd__lFZAA4PINEVyAA7Field32VSRySfGAA19XofHmacSha256Aes128CG_AXTt3g5Tf4ndnn_n(uint64_t a1, char a2, int64_t a3, uint64_t (*a4)(void))
{
  if (a2)
  {
    v5 = a4();
    v6 = _s4VDAF12FieldElementPAAE12randomVector5count5usingSayxGSi_qd__tAA24ExtendableOutputFunctionRd__lFZAA7Field32V_AA19XofHmacSha256Aes128CTt1g5(a3, v5);

    result = v6;
    v8 = *(v6 + 16);
  }

  else if (*(a1 + 16) == a3)
  {
  }

  else
  {
    _StringGuts.grow(_:)(51);
    MEMORY[0x2743B25F0](0xD000000000000014, 0x8000000270C51E00);
    MEMORY[0x2743B25F0](0xD000000000000027, 0x8000000270C51E20);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v9);

    MEMORY[0x2743B25F0](0x3D746F67202CLL, 0xE600000000000000);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v10);

    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v11 = 0;
    *(v11 + 8) = 0xE000000000000000;
    *(v11 + 16) = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t _s4VDAF12VDAFProtocolPAAE16decodeProofShare_12aggregatorID5count7makeXOFs10ArraySliceVyqd__GAA0E0Oyqd__G_s5UInt8VSi0J0QzAA4SeedVXEtKAA12FieldElementRd__lFZAA4PINEVyAA7Field40VSRySfGAA19XofHmacSha256Aes128CG_AXTt3g5Tf4ndnn_nTm(uint64_t a1, char a2, unint64_t a3, uint64_t (*a4)(void), uint64_t a5, void (*a6)(BOOL, unint64_t, uint64_t), void (*a7)(uint64_t *__return_ptr, uint64_t))
{
  if (a2)
  {
    v10 = a4();
    v11 = _s4VDAF12FieldElementPAAE12randomVector5count5usingSayxGSi_qd__tAA24ExtendableOutputFunctionRd__lFZAA7Field40V_AA19XofHmacSha256Aes128CTt1g5Tm(a3, v10, a6, a7);

    result = v11;
    v13 = *(v11 + 16);
  }

  else if (*(a1 + 16) == a3)
  {
  }

  else
  {
    _StringGuts.grow(_:)(51);
    MEMORY[0x2743B25F0](0xD000000000000014, 0x8000000270C51E00);
    MEMORY[0x2743B25F0](0xD000000000000027, 0x8000000270C51E20);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v14);

    MEMORY[0x2743B25F0](0x3D746F67202CLL, 0xE600000000000000);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v15);

    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v16 = 0;
    *(v16 + 8) = 0xE000000000000000;
    *(v16 + 16) = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t specialized PINECircuit.decode<A>(data:numOfMeasurements:into:)(uint64_t result, uint64_t a2)
{
  v3 = *(result + 16);
  if (v3 != *(v2 + 96))
  {
    _StringGuts.grow(_:)(30);

    v19 = 0xD000000000000016;
    v20 = 0x8000000270C519D0;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v15);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
LABEL_25:
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v17);

    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v18 = v19;
    *(v18 + 8) = v20;
    *(v18 + 16) = 2;
    return swift_willThrow();
  }

  if (*(a2 + 8) != v3)
  {
    _StringGuts.grow(_:)(24);

    v19 = 0xD000000000000010;
    v20 = 0x8000000270C519F0;
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v16);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    goto LABEL_25;
  }

  if (v3)
  {
    v4 = *(v2 + 88);
    v5 = *a2;
    v6 = (result + 32);
    v7 = 1 << v4;
    if (v4 >= 0x40)
    {
      v7 = 0;
    }

    v8 = 1uLL >> -v4;
    if (v4 - 65 >= 0xFFFFFFFFFFFFFF7FLL)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0;
    }

    if (v4 <= 0xFFFFFFFFFFFFFFC0)
    {
      v8 = 0;
    }

    do
    {
      v10 = *v6++;
      v11 = (0xCFFE47FFFEAFFFFFLL * v10 * 0xFFFEB00001uLL) >> 64;
      if (__CFADD__(-v10, v10))
      {
        v12 = v11 + 1;
      }

      else
      {
        v12 = v11;
      }

      if (v12 >= 0xFFFEB00001)
      {
        v12 = 0;
      }

      v13 = -(0xFFFEB00001 - v12);
      if (v12 <= 0x7FFF580000)
      {
        v13 = v12;
      }

      if (v4 <= 0xFFFFFFFFFFFFFFBFLL)
      {
        v14 = v9;
      }

      else
      {
        v14 = v8;
      }

      *v5++ = v13 / v14;
      --v3;
    }

    while (v3);
  }

  return result;
}

{
  v3 = *(result + 16);
  if (v3 != *(v2 + 96))
  {
    _StringGuts.grow(_:)(30);

    v18 = 0xD000000000000016;
    v19 = 0x8000000270C519D0;
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v14);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
LABEL_26:
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v16);

    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v17 = v18;
    *(v17 + 8) = v19;
    *(v17 + 16) = 2;
    return swift_willThrow();
  }

  if (*(a2 + 8) != v3)
  {
    _StringGuts.grow(_:)(24);

    v18 = 0xD000000000000010;
    v19 = 0x8000000270C519F0;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v15);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    goto LABEL_26;
  }

  if (v3)
  {
    v4 = *(v2 + 88);
    v5 = *a2;
    v6 = (result + 32);
    v7 = 1 << v4;
    if (v4 >= 0x40)
    {
      v7 = 0;
    }

    v8 = 1uLL >> -v4;
    if (v4 - 65 >= 0xFFFFFFFFFFFFFF7FLL)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0;
    }

    if (v4 <= 0xFFFFFFFFFFFFFFC0)
    {
      v8 = 0;
    }

    do
    {
      v13 = *v6++;
      v10 = (0xFFFFFFFEFFFFFFFFLL * v13 * 0xFFFFFFFF00000001) >> 64;
      if (__CFADD__(-v13, v13))
      {
        if (v10 > 0xFFFFFFFEFFFFFFFFLL)
        {
          v10 = 0;
          goto LABEL_13;
        }

        ++v10;
      }

      if (v10 >= 0x7FFFFFFF80000001)
      {
        v11 = -(0xFFFFFFFF00000001 - v10);
        goto LABEL_14;
      }

LABEL_13:
      v11 = v10;
LABEL_14:
      if (v4 <= 0xFFFFFFFFFFFFFFBFLL)
      {
        v12 = v9;
      }

      else
      {
        v12 = v8;
      }

      *v5++ = v11 / v12;
      --v3;
    }

    while (v3);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Data.Iterator and conformance Data.Iterator()
{
  result = lazy protocol witness table cache variable for type Data.Iterator and conformance Data.Iterator;
  if (!lazy protocol witness table cache variable for type Data.Iterator and conformance Data.Iterator)
  {
    type metadata accessor for Data.Iterator();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data.Iterator and conformance Data.Iterator);
  }

  return result;
}

uint64_t specialized PINECircuit.decode<A>(data:numOfMeasurements:into:)(uint64_t result, float32x2_t **a2)
{
  v3 = *(result + 16);
  if (v3 != *(v2 + 96))
  {
    _StringGuts.grow(_:)(30);

    v33 = 0xD000000000000016;
    v34 = 0x8000000270C519D0;
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v18);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
LABEL_27:
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v20);

    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v21 = v33;
    *(v21 + 8) = v34;
    *(v21 + 16) = 2;
    return swift_willThrow();
  }

  if (a2[1] != v3)
  {
    _StringGuts.grow(_:)(24);

    v33 = 0xD000000000000010;
    v34 = 0x8000000270C519F0;
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v19);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    goto LABEL_27;
  }

  if (!v3)
  {
    return result;
  }

  v4 = *(v2 + 88);
  v5 = *a2;
  v6 = 1 << v4;
  if (v4 >= 0x40)
  {
    v6 = 0;
  }

  v7 = 1uLL >> -v4;
  if (v4 - 65 >= 0xFFFFFFFFFFFFFF7FLL)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  if (v4 <= 0xFFFFFFFFFFFFFFC0)
  {
    v7 = 0;
  }

  if (v3 == 1 || &v5[-4] - result < 8)
  {
    v9 = 0;
  }

  else
  {
    v22 = (result + 32);
    v23 = vdup_n_s32(v4 > 0xFFFFFFFFFFFFFFBFLL);
    v9 = v3 & 0x7FFFFFFFFFFFFFFELL;
    v24.i64[0] = v23.u32[0];
    v24.i64[1] = v23.u32[1];
    v25 = vcvt_f32_f64(vcvtq_f64_s64(vbslq_s8(vcltzq_s64(vshlq_n_s64(v24, 0x3FuLL)), vdupq_n_s64(v7), vdupq_n_s64(v8))));
    v26 = vdup_n_s32(0xFFF00001);
    v27 = vdupq_n_s64(0xFFF0000100000000);
    v28 = vneg_f32(0x700000007);
    v29 = v3 & 0x7FFFFFFFFFFFFFFELL;
    v30 = *a2;
    do
    {
      v31 = *v22++;
      v32 = vaddw_u32(vmull_u32(vmovn_s64(vmull_u32(v31, 0x10000000100000)), v26), v31);
      *v32.i8 = vmovn_s64(vandq_s8(vshrq_n_u64(v32, 0x20uLL), vcgtq_u64(v27, v32)));
      *v30++ = vdiv_f32(vbsl_s8(vcgt_u32(*v32.i8, v28), vneg_f32(vcvt_f32_u32(vsub_s32(v26, *v32.i8))), vcvt_f32_u32(*v32.i8)), v25);
      v29 -= 2;
    }

    while (v29);
    if (v3 == v9)
    {
      return result;
    }
  }

  v10 = v3 - v9;
  v11 = 4 * v9;
  v12 = (v5 + v11);
  v13 = (v11 + result + 32);
  do
  {
    v14 = *v13++;
    v15 = v14 + 0xFFF000FEFFFFFFFFLL * v14;
    if (v15 >= 0xFFF0000100000000)
    {
      v16 = 0;
    }

    else
    {
      v16 = HIDWORD(v15);
    }

    v17 = -(-1048575 - v16);
    if (v16 <= 0x7FF80000)
    {
      v17 = v16;
    }

    if (v4 <= 0xFFFFFFFFFFFFFFBFLL)
    {
      result = v8;
    }

    else
    {
      result = v7;
    }

    *v12++ = v17 / result;
    --v10;
  }

  while (v10);
  return result;
}

void _s4VDAF4PINEV7unshard_17numOfMeasurements4into9parameteryqd___Siqd_0_zAA11VoidCodableVtKSkRd__SMRd_0_7ElementQyd_0_AJRt_AA14AggregateShareVyxGAJRtd__r0_lFAA7Field32V_SRySfGAA19XofHmacSha256Aes128CSayANyARGGSrySfGTt2B5Tf4ndnn_n(uint64_t a1, float32x2_t **a2)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v19 = *(v2 + 104);
  v20 = *(v2 + 120);
  v21 = *(v2 + 136);
  v22 = *(v2 + 152);
  v15 = *(v2 + 40);
  v16 = *(v2 + 56);
  v17 = *(v2 + 72);
  v18 = *(v2 + 88);
  v5 = *(v2 + 8);
  v14 = *(v2 + 24);
  if ((v19 & 0x8000000000000000) == 0)
  {
    if (v19)
    {
      v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v8 + 16) = v19;
      bzero((v8 + 32), 4 * v19);
    }

    else
    {
      v8 = MEMORY[0x277D84F90];
    }

    v9 = 0;
    v10 = a1 + 32;
    while (1)
    {
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v12 = *(v10 + 8 * v9);

      specialized Array<A>.elementwiseAdd(_:)(v13);
      if (v3)
      {

        goto LABEL_12;
      }

      ++v9;
      if (v11 == v4)
      {
        specialized PINECircuit.decode<A>(data:numOfMeasurements:into:)(v8, a2);
LABEL_12:

        return;
      }
    }

    __break(1u);
    goto LABEL_14;
  }

LABEL_15:
  __break(1u);
}

void _s4VDAF4PINEV7unshard_17numOfMeasurements4into9parameteryqd___Siqd_0_zAA11VoidCodableVtKSkRd__SMRd_0_7ElementQyd_0_AJRt_AA14AggregateShareVyxGAJRtd__r0_lFAA7Field40V_SRySfGAA19XofHmacSha256Aes128CSayANyARGGSrySfGTt2B5Tf4ndnn_nTm(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), void (*a5)(uint64_t, uint64_t))
{
  v7 = *(a1 + 16);
  if (!v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v24 = *(v5 + 104);
  v25 = *(v5 + 120);
  v26 = *(v5 + 136);
  v27 = *(v5 + 152);
  v20 = *(v5 + 40);
  v21 = *(v5 + 56);
  v22 = *(v5 + 72);
  v23 = *(v5 + 88);
  v8 = *(v5 + 8);
  v19 = *(v5 + 24);
  if ((v24 & 0x8000000000000000) == 0)
  {
    if (v24)
    {
      v12 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v12 + 16) = v24;
      bzero((v12 + 32), 8 * v24);
    }

    else
    {
      v12 = MEMORY[0x277D84F90];
    }

    v13 = 0;
    v14 = a1 + 32;
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v16 = *(v14 + 8 * v13);

      a4(v17);
      if (v6)
      {

        goto LABEL_12;
      }

      ++v13;
      if (v15 == v7)
      {
        a5(v12, a2);
LABEL_12:

        return;
      }
    }

    __break(1u);
    goto LABEL_14;
  }

LABEL_15:
  __break(1u);
}

unint64_t lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError()
{
  result = lazy protocol witness table cache variable for type FLPTypeError and conformance FLPTypeError;
  if (!lazy protocol witness table cache variable for type FLPTypeError and conformance FLPTypeError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FLPTypeError and conformance FLPTypeError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FLPTypeError and conformance FLPTypeError;
  if (!lazy protocol witness table cache variable for type FLPTypeError and conformance FLPTypeError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FLPTypeError and conformance FLPTypeError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FieldElementError and conformance FieldElementError()
{
  result = lazy protocol witness table cache variable for type FieldElementError and conformance FieldElementError;
  if (!lazy protocol witness table cache variable for type FieldElementError and conformance FieldElementError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FieldElementError and conformance FieldElementError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FieldElementError and conformance FieldElementError;
  if (!lazy protocol witness table cache variable for type FieldElementError and conformance FieldElementError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FieldElementError and conformance FieldElementError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VDAFError and conformance VDAFError()
{
  result = lazy protocol witness table cache variable for type VDAFError and conformance VDAFError;
  if (!lazy protocol witness table cache variable for type VDAFError and conformance VDAFError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VDAFError and conformance VDAFError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VDAFError and conformance VDAFError;
  if (!lazy protocol witness table cache variable for type VDAFError and conformance VDAFError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VDAFError and conformance VDAFError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError()
{
  result = lazy protocol witness table cache variable for type VDAFCodableError and conformance VDAFCodableError;
  if (!lazy protocol witness table cache variable for type VDAFCodableError and conformance VDAFCodableError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VDAFCodableError and conformance VDAFCodableError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VDAFCodableError and conformance VDAFCodableError;
  if (!lazy protocol witness table cache variable for type VDAFCodableError and conformance VDAFCodableError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VDAFCodableError and conformance VDAFCodableError);
  }

  return result;
}

uint64_t partial apply for specialized closure #1 in PINE.prepareInit(verifyKey:aggregatorID:nonce:publicShare:inputShare:parameter:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  memcpy(__dst, v3, sizeof(__dst));
  return specialized closure #1 in PINE.prepareInit(verifyKey:aggregatorID:nonce:publicShare:inputShare:parameter:)(a1, __dst, v4, 68222975);
}

{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  memcpy(__dst, v3, sizeof(__dst));
  return specialized closure #1 in PINE.prepareInit(verifyKey:aggregatorID:nonce:publicShare:inputShare:parameter:)(a1, __dst, v4, 85000191);
}

{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  memcpy(__dst, v3, sizeof(__dst));
  return specialized closure #1 in PINE.prepareInit(verifyKey:aggregatorID:nonce:publicShare:inputShare:parameter:)(a1, __dst, v4, 101777407);
}

void partial apply for specialized closure #1 in PINENormEqualityCheckCircuit.evaluateNormEqualityCheck(inputVector:vBits:for:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char **a5)
{
  v6 = *(v5 + 16);
  v7 = *(v6 + 112);
  v11[6] = *(v6 + 96);
  v11[7] = v7;
  v11[8] = *(v6 + 128);
  v12 = *(v6 + 144);
  v8 = *(v6 + 48);
  v11[2] = *(v6 + 32);
  v11[3] = v8;
  v9 = *(v6 + 80);
  v11[4] = *(v6 + 64);
  v11[5] = v9;
  v10 = *(v6 + 16);
  v11[0] = *v6;
  v11[1] = v10;
  specialized closure #1 in PINENormEqualityCheckCircuit.evaluateNormEqualityCheck(inputVector:vBits:for:)(a2, a3, a4, a5, v11);
}

{
  v6 = *(v5 + 16);
  v7 = *(v6 + 112);
  v11[6] = *(v6 + 96);
  v11[7] = v7;
  v11[8] = *(v6 + 128);
  v12 = *(v6 + 144);
  v8 = *(v6 + 48);
  v11[2] = *(v6 + 32);
  v11[3] = v8;
  v9 = *(v6 + 80);
  v11[4] = *(v6 + 64);
  v11[5] = v9;
  v10 = *(v6 + 16);
  v11[0] = *v6;
  v11[1] = v10;
  specialized closure #1 in PINENormEqualityCheckCircuit.evaluateNormEqualityCheck(inputVector:vBits:for:)(a2, a3, a4, a5, v11);
}

{
  v6 = *(v5 + 16);
  v7 = *(v6 + 112);
  v11[6] = *(v6 + 96);
  v11[7] = v7;
  v11[8] = *(v6 + 128);
  v12 = *(v6 + 144);
  v8 = *(v6 + 48);
  v11[2] = *(v6 + 32);
  v11[3] = v8;
  v9 = *(v6 + 80);
  v11[4] = *(v6 + 64);
  v11[5] = v9;
  v10 = *(v6 + 16);
  v11[0] = *v6;
  v11[1] = v10;
  specialized closure #1 in PINENormEqualityCheckCircuit.evaluateNormEqualityCheck(inputVector:vBits:for:)(a2, a3, a4, a5, v11);
}

void specialized closure #1 in PINENormEqualityCheckCircuit.evaluateNormEqualityCheck(inputVector:vBits:for:)(uint64_t a1, uint64_t a2, unint64_t a3, char **a4, char *a5)
{
  v10 = a3 >> 1;
  v11 = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
    goto LABEL_23;
  }

  if (v11 < 0)
  {
    goto LABEL_24;
  }

  v7 = a5;
  v5 = a4;
  v6 = a2;
  if (v11)
  {
    v8 = a1;
    v9 = *a4;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_26;
    }

    while (v11 <= *(v9 + 2))
    {
      v12 = 0;
      if (v6 <= v10)
      {
        v13 = v10;
      }

      else
      {
        v13 = v6;
      }

      v14 = v13 - v6;
      while (!__OFADD__(v6, v12))
      {
        if (v14 == v12)
        {
          goto LABEL_22;
        }

        *&v9[8 * v12 + 32] = *(v8 + 8 * (v6 + v12));
        if (v11 == ++v12)
        {
          *v5 = v9;
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
    }

    __break(1u);
    goto LABEL_28;
  }

LABEL_14:
  v8 = *(v7 + 6);
  if (v8 < v11)
  {
    goto LABEL_25;
  }

  if (v11 != v8)
  {
    if (v11 < v8)
    {
      v7 = *v5;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_18;
      }

      goto LABEL_29;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
LABEL_18:
    if (v8 > *(v7 + 2))
    {
      __break(1u);
    }

    else
    {
      bzero(&v7[8 * v10 + 32 + -8 * v6], 8 * (v8 + v6 - v10));
      *v5 = v7;
    }
  }
}

{
  v10 = a3 >> 1;
  v11 = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
    goto LABEL_23;
  }

  if (v11 < 0)
  {
    goto LABEL_24;
  }

  v7 = a5;
  v5 = a4;
  v6 = a2;
  if (v11)
  {
    v8 = a1;
    v9 = *a4;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_26;
    }

    while (v11 <= *(v9 + 2))
    {
      v12 = 0;
      if (v6 <= v10)
      {
        v13 = v10;
      }

      else
      {
        v13 = v6;
      }

      v14 = v13 - v6;
      while (!__OFADD__(v6, v12))
      {
        if (v14 == v12)
        {
          goto LABEL_22;
        }

        *&v9[4 * v12 + 32] = *(v8 + 4 * (v6 + v12));
        if (v11 == ++v12)
        {
          *v5 = v9;
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
    }

    __break(1u);
    goto LABEL_28;
  }

LABEL_14:
  v8 = *(v7 + 6);
  if (v8 < v11)
  {
    goto LABEL_25;
  }

  if (v11 != v8)
  {
    if (v11 < v8)
    {
      v7 = *v5;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_18;
      }

      goto LABEL_29;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
LABEL_18:
    if (v8 > *(v7 + 2))
    {
      __break(1u);
    }

    else
    {
      bzero(&v7[4 * v10 + 32 + -4 * v6], 4 * (v8 + v6 - v10));
      *v5 = v7;
    }
  }
}

{
  v10 = a3 >> 1;
  v11 = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
    goto LABEL_23;
  }

  if (v11 < 0)
  {
    goto LABEL_24;
  }

  v7 = a5;
  v5 = a4;
  v6 = a2;
  if (v11)
  {
    v8 = a1;
    v9 = *a4;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_26;
    }

    while (v11 <= *(v9 + 2))
    {
      v12 = 0;
      if (v6 <= v10)
      {
        v13 = v10;
      }

      else
      {
        v13 = v6;
      }

      v14 = v13 - v6;
      while (!__OFADD__(v6, v12))
      {
        if (v14 == v12)
        {
          goto LABEL_22;
        }

        *&v9[8 * v12 + 32] = *(v8 + 8 * (v6 + v12));
        if (v11 == ++v12)
        {
          *v5 = v9;
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
    }

    __break(1u);
    goto LABEL_28;
  }

LABEL_14:
  v8 = *(v7 + 6);
  if (v8 < v11)
  {
    goto LABEL_25;
  }

  if (v11 != v8)
  {
    if (v11 < v8)
    {
      v7 = *v5;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_18;
      }

      goto LABEL_29;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
LABEL_18:
    if (v8 > *(v7 + 2))
    {
      __break(1u);
    }

    else
    {
      bzero(&v7[8 * v10 + 32 + -8 * v6], 8 * (v8 + v6 - v10));
      *v5 = v7;
    }
  }
}

unint64_t lazy protocol witness table accessor for type Slice<UnsafeRawBufferPointer> and conformance <> Slice<A>()
{
  result = lazy protocol witness table cache variable for type Slice<UnsafeRawBufferPointer> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<UnsafeRawBufferPointer> and conformance <> Slice<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<UnsafeRawBufferPointer> and conformance <> Slice<A>);
  }

  return result;
}

unint64_t partial apply for specialized closure #5 in PINE.shard<A>(_:nonce:seedBytes:)(unint64_t a1)
{
  v3 = *(v1 + 16);
  memcpy(__dst, *(v1 + 24), sizeof(__dst));
  return specialized closure #5 in PINE.shard<A>(_:nonce:seedBytes:)(a1, v3, __dst, 68222975);
}

{
  v3 = *(v1 + 16);
  memcpy(__dst, *(v1 + 24), sizeof(__dst));
  return specialized closure #5 in PINE.shard<A>(_:nonce:seedBytes:)(a1, v3, __dst, 85000191);
}

uint64_t lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined destroy of PINEInputShare<Field40, XofHmacSha256Aes128>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t partial apply for specialized closure #5 in PINE.shard<A>(_:nonce:seedBytes:)(unint64_t a1)
{
  v3 = *(v1 + 16);
  memcpy(__dst, *(v1 + 24), sizeof(__dst));
  return specialized closure #5 in PINE.shard<A>(_:nonce:seedBytes:)(a1, v3, __dst);
}

_BYTE *PINE<>.aggregateShare(from:)@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  return PINE<>.outputShare(from:)(a1, a2, a3);
}

{
  return PINE<>.outputShare(from:)(a1, a2, a3);
}

uint64_t static FixedWidthInteger.randomVector(count:)(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v8[6] = 0;
    v8[7] = result;
    MEMORY[0x28223BE20](result, a2);
    v8[2] = v3;
    v8[3] = v4;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
    v6 = lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
    return _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in static FixedWidthInteger.randomVector(count:), v8, v5, a2, MEMORY[0x277D84A98], v6, MEMORY[0x277D84AC0], v7);
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v39 = a8;
  v48 = a1;
  v49 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v50 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = *(AssociatedTypeWitness - 8);
  v16 = *(v52 + 64);
  v18 = MEMORY[0x28223BE20](AssociatedTypeWitness, v17);
  v20 = &v37 - v19;
  v21 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v18, v22);
  v46 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = swift_getAssociatedTypeWitness();
  v40 = *(v24 - 8);
  v41 = v24;
  v25 = *(v40 + 64);
  MEMORY[0x28223BE20](v24, v26);
  v28 = &v37 - v27;
  v29 = dispatch thunk of Collection.count.getter();
  if (!v29)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v51 = v29;
  v55 = ContiguousArray.init()();
  v42 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v51);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v51 & 0x8000000000000000) == 0)
  {
    v37 = v11;
    v38 = a5;
    v31 = 0;
    v43 = (v52 + 16);
    v44 = (v52 + 8);
    v45 = v8;
    while (!__OFADD__(v31, 1))
    {
      v52 = v31 + 1;
      v32 = dispatch thunk of Collection.subscript.read();
      v33 = v20;
      v34 = v20;
      v35 = AssociatedTypeWitness;
      (*v43)(v33);
      v32(v54, 0);
      v36 = v53;
      v48(v34, v50);
      if (v36)
      {
        (*v44)(v34, v35);
        (*(v40 + 8))(v28, v41);

        return (*(v37 + 32))(v39, v50, v38);
      }

      v53 = 0;
      (*v44)(v34, v35);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v31;
      v20 = v34;
      if (v52 == v51)
      {
        (*(v40 + 8))(v28, v41);
        return v55;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t FixedWidthInteger.isPositiveAndPowerOfTwo.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v36 = v3[3];
  v38 = *(v36 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 64);
  v7 = MEMORY[0x28223BE20](AssociatedTypeWitness, v6);
  v8 = *(a1 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v37 = v35 - v16;
  MEMORY[0x28223BE20](v15, v17);
  v19 = v35 - v18;
  v20 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v21 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if (v20)
  {
    if (v21 <= 64)
    {
      goto LABEL_3;
    }
  }

  else if (v21 <= 63)
  {
LABEL_3:
    if (dispatch thunk of BinaryInteger._lowWord.getter() <= 0)
    {
      goto LABEL_14;
    }

    goto LABEL_7;
  }

  v39 = 0;
  lazy protocol witness table accessor for type Int and conformance Int();
  dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
  v22 = *(v3[4] + 8);
  v23 = dispatch thunk of static Comparable.< infix(_:_:)();
  (*(v8 + 8))(v19, a1);
  if ((v23 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v35[1] = swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v24 = *(v36 + 8);
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v25 = *(v8 + 8);
  v25(v13, a1);
  v26 = v37;
  dispatch thunk of static BinaryInteger.& infix(_:_:)();
  v25(v19, a1);
  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 64)
    {
      goto LABEL_17;
    }

LABEL_16:
    v32 = dispatch thunk of BinaryInteger._lowWord.getter();
    v25(v26, a1);
    v31 = v32 == 0;
    return v31 & 1;
  }

  v27 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v28 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if ((v27 & 1) == 0)
  {
    if (v28 < 64)
    {
      goto LABEL_16;
    }

LABEL_17:
    v39 = 0;
    lazy protocol witness table accessor for type Int and conformance Int();
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v33 = *(v3[2] + 8);
    v31 = dispatch thunk of static Equatable.== infix(_:_:)();
    v25(v19, a1);
    v25(v26, a1);
    return v31 & 1;
  }

  if (v28 > 64)
  {
    goto LABEL_17;
  }

  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v29 = *(v3[4] + 8);
  v30 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v25(v19, a1);
  if (v30)
  {
    goto LABEL_16;
  }

  v25(v26, a1);
LABEL_14:
  v31 = 0;
  return v31 & 1;
}

uint64_t FixedWidthInteger.nextPowerOfTwo.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 8);
  v48 = v6[3];
  v50 = *(v48 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 64);
  v9 = MEMORY[0x28223BE20](AssociatedTypeWitness, v8);
  v49 = v45 - v10;
  v11 = *(a1 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x28223BE20](v9, v13);
  v46 = v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v47 = v45 - v18;
  MEMORY[0x28223BE20](v17, v19);
  v21 = v45 - v20;
  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 64)
    {
LABEL_9:
      v52 = 0;
      lazy protocol witness table accessor for type Int and conformance Int();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v28 = *(v6[4] + 8);
      v29 = dispatch thunk of static Comparable.< infix(_:_:)();
      (*(v11 + 8))(v21, a1);
      if ((v29 & 1) == 0)
      {
        goto LABEL_17;
      }

      __break(1u);
      goto LABEL_11;
    }

    if ((dispatch thunk of BinaryInteger._lowWord.getter() & 0x8000000000000000) == 0)
    {
      goto LABEL_17;
    }

    __break(1u);
  }

  v22 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v23 = dispatch thunk of BinaryInteger.bitWidth.getter();
  v25 = __OFSUB__(v23, 64);
  v24 = v23 - 64 < 0;
  if (v22)
  {
    if (v23 <= 64)
    {
      goto LABEL_15;
    }

    v52 = 0;
    lazy protocol witness table accessor for type Int and conformance Int();
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v26 = *(v6[4] + 8);
    v27 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v11 + 8))(v21, a1);
    if ((v27 & 1) == 0)
    {
      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_9;
  }

LABEL_11:
  if (v24 == v25 || (dispatch thunk of BinaryInteger._lowWord.getter() & 0x8000000000000000) == 0)
  {
LABEL_17:
    v33 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v45[2] = a2;
    if (v33)
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 64)
      {
LABEL_27:
        v52 = 0;
        lazy protocol witness table accessor for type Int and conformance Int();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v43 = *(v6[2] + 8);
        v44 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v11 + 8))(v21, a1);
        if (v44)
        {
          goto LABEL_28;
        }

        goto LABEL_26;
      }
    }

    else
    {
      v34 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v35 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if (v34)
      {
        if (v35 > 64)
        {
          goto LABEL_27;
        }

        swift_getAssociatedConformanceWitness();
        dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
        dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
        v36 = *(v6[4] + 8);
        v37 = dispatch thunk of static Comparable.>= infix(_:_:)();
        (*(v11 + 8))(v21, a1);
        if ((v37 & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      else if (v35 >= 64)
      {
        goto LABEL_27;
      }
    }

    if (!dispatch thunk of BinaryInteger._lowWord.getter())
    {
LABEL_28:
      v52 = 1;
      lazy protocol witness table accessor for type Int and conformance Int();
      return dispatch thunk of BinaryInteger.init<A>(_:)();
    }

LABEL_26:
    v52 = 1;
    lazy protocol witness table accessor for type Int and conformance Int();
    v45[1] = a3;
    dispatch thunk of BinaryInteger.init<A>(_:)();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    v38 = v46;
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v39 = v47;
    v40 = *(v48 + 8);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v41 = *(v11 + 8);
    v41(v38, a1);
    v42 = FixedWidthInteger.bitLength.getter();
    v41(v39, a1);
    v52 = v42;
    dispatch thunk of static BinaryInteger.<< infix<A>(_:_:)();
    return (v41)(v21, a1);
  }

  __break(1u);
LABEL_15:
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v30 = *(v6[4] + 8);
  v31 = dispatch thunk of static Comparable.< infix(_:_:)();
  result = (*(v11 + 8))(v21, a1);
  if (v31)
  {
    __break(1u);
  }

  else
  {
    result = dispatch thunk of BinaryInteger._lowWord.getter();
    if ((result & 0x8000000000000000) == 0)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t FixedWidthInteger.bitLength.getter()
{
  v0 = dispatch thunk of static FixedWidthInteger.bitWidth.getter();
  v1 = dispatch thunk of FixedWidthInteger.leadingZeroBitCount.getter();
  v2 = __OFSUB__(v0, v1);
  result = v0 - v1;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t FixedWidthInteger.bigEndianBytes.getter(uint64_t a1, uint64_t a2)
{
  v11[3] = *MEMORY[0x277D85DE8];
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of FixedWidthInteger.bigEndian.getter();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  _ss15withUnsafeBytes2of_q0_x_q0_SWq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v6, implicit closure #1 in FixedWidthInteger.bigEndianBytes.getter, 0, a1, MEMORY[0x277D84A98], v7, MEMORY[0x277D84AC0], v8);
  (*(v3 + 8))(v6, a1);
  result = v11[2];
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

char *implicit closure #1 in FixedWidthInteger.bigEndianBytes.getter@<X0>(char *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result || (v3 = result, v4 = a2 - result, a2 == result))
  {
    v5 = MEMORY[0x277D84F90];
LABEL_7:
    *a3 = v5;
    return result;
  }

  v6 = a3;
  result = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1g5(a2 - result, 0);
  if (a2 > v3)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      v5 = result;
      result = memmove(result + 32, v3, v4);
      a3 = v6;
      goto LABEL_7;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _ss15withUnsafeBytes2of_q0_x_q0_SWq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20]();
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v17(v13, v13 + *(*(v16 - 8) + 64), v15);
  if (v8)
  {
    return (*(v11 + 32))(a8, v15, a5);
  }

  return result;
}

uint64_t FixedWidthInteger.divideAndRoundUp(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v35 = a3;
  v4 = *(a2 + 8);
  v30 = *(v4 + 24);
  v34 = *(v30 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 64);
  v7 = MEMORY[0x28223BE20](AssociatedTypeWitness, v6);
  v32 = v29 - v8;
  v9 = *(a1 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v7, v11);
  v31 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = v29 - v16;
  MEMORY[0x28223BE20](v15, v18);
  v20 = v29 - v19;
  v21 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v22 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if ((v21 & 1) == 0)
  {
    goto LABEL_5;
  }

  if (v22 <= 64)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v36 = 0;
    lazy protocol witness table accessor for type Int and conformance Int();
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v23 = *(*(v4 + 32) + 8);
    v24 = dispatch thunk of static Comparable.< infix(_:_:)();
    v22 = (*(v9 + 8))(v20, a1);
    if (v24)
    {
      break;
    }

    while (1)
    {
      __break(1u);
LABEL_5:
      if (v22 > 63)
      {
        break;
      }

LABEL_6:
      v22 = dispatch thunk of BinaryInteger._lowWord.getter();
      if (v22 > 0)
      {
        goto LABEL_7;
      }
    }
  }

LABEL_7:
  v29[1] = v4;
  v25 = *(v30 + 8);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  v26 = v31;
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v27 = *(v9 + 8);
  v27(v26, a1);
  v27(v17, a1);
  dispatch thunk of static BinaryInteger./ infix(_:_:)();
  return (v27)(v20, a1);
}

uint64_t static FixedWidthInteger.randomVector(in:count:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return static FixedWidthInteger.randomVector(in:count:)(a1, a2, a3, a4, partial apply for closure #1 in static FixedWidthInteger.randomVector(in:count:));
}

{
  return static FixedWidthInteger.randomVector(in:count:)(a1, a2, a3, a4, partial apply for closure #1 in static FixedWidthInteger.randomVector(in:count:));
}

uint64_t static FixedWidthInteger.randomVector(in:count:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v13[8] = 0;
    v13[9] = a2;
    v7 = MEMORY[0x28223BE20](result, a2);
    v13[2] = v8;
    v13[3] = v9;
    v13[4] = v7;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
    v11 = lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
    return _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(a5, v13, v10, a3, MEMORY[0x277D84A98], v11, MEMORY[0x277D84AC0], v12);
  }

  return result;
}

uint64_t closure #1 in static FixedWidthInteger.randomVector(count:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v41 = a3;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = *(TupleTypeMetadata2 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x28223BE20](TupleTypeMetadata2, v8);
  v40 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = &v35 - v13;
  v15 = *(a1 - 8);
  v16 = v15[8];
  v18 = MEMORY[0x28223BE20](v12, v17);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v35 - v22;
  v24 = *(*(*(a2 + 8) + 32) + 8);
  v25 = type metadata accessor for ClosedRange();
  v38 = *(v25 - 8);
  v39 = v25;
  v26 = *(v38 + 64);
  MEMORY[0x28223BE20](v25, v27);
  v37 = &v35 - v28;
  dispatch thunk of static FixedWidthInteger.min.getter();
  v42 = a2;
  dispatch thunk of static FixedWidthInteger.max.getter();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v30 = v15[4];
    v30(v14, v23, a1);
    v30(&v14[*(TupleTypeMetadata2 + 48)], v20, a1);
    v36 = v30;
    v31 = v40;
    (*(v6 + 16))(v40, v14, TupleTypeMetadata2);
    v35 = *(TupleTypeMetadata2 + 48);
    v32 = v37;
    v30(v37, v31, a1);
    v33 = v15[1];
    v33(&v31[v35], a1);
    (*(v6 + 32))(v31, v14, TupleTypeMetadata2);
    v34 = v39;
    v36(&v32[*(v39 + 36)], &v31[*(TupleTypeMetadata2 + 48)], a1);
    v33(v31, a1);
    static FixedWidthInteger.random(in:)();
    return (*(v38 + 8))(v32, v34);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>()
{
  result = lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>;
  if (!lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSnySiGMd, &_sSnySiGMR);
    lazy protocol witness table accessor for type Int and conformance Int();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Int and conformance Int()
{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

uint64_t partial apply for closure #1 in static FixedWidthInteger.randomVector(in:count:)()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  return static FixedWidthInteger.random(in:)();
}

{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  return static FixedWidthInteger.random(in:)();
}

uint64_t Seed.init<A>(length:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = specialized Seed.init<A>(length:using:)(a1, a2, a3, a4);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t Seed.init<A>(from:parameter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = specialized Seed.init<A>(from:parameter:)(a1, a3, a4);
  (*(*(a3 - 8) + 8))(a1, a3);
  return v6;
}

uint64_t protocol witness for VDAFDecodable.init<A>(from:parameter:) in conformance Seed@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v7 = specialized Seed.init<A>(from:parameter:)(a1, a2, a3);
  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a4 = v7;
  return result;
}

uint64_t Seed.encode<A>(into:)()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  lazy protocol witness table accessor for type [UInt8] and conformance [A]();
  return dispatch thunk of RangeReplaceableCollection.append<A>(contentsOf:)();
}

uint64_t specialized static Seed.== infix(_:_:)(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized Seed.init<A>(length:using:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result >= 1)
  {
    return (*(a4 + 40))();
  }

  __break(1u);
  return result;
}

uint64_t specialized Seed.init<A>(from:parameter:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](a1, a1);
  (*(v6 + 16))(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(*(*(a3 + 8) + 8) + 8);
  return Array.init<A>(_:)();
}

unint64_t lazy protocol witness table accessor for type [UInt8] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [UInt8] and conformance [A];
  if (!lazy protocol witness table cache variable for type [UInt8] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [UInt8] and conformance [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [UInt8] and conformance [A];
  if (!lazy protocol witness table cache variable for type [UInt8] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [UInt8] and conformance [A]);
  }

  return result;
}

uint64_t encodeInteger<A, B>(_:into:encodedLength:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = *MEMORY[0x277D85DE8];
  v13 = *(a5 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v16 = &v21[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  dispatch thunk of FixedWidthInteger.littleEndian.getter();
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v25 = a7;
  v26 = a2;
  v27 = a3;
  _ss15withUnsafeBytes2of_q0_xz_q0_SWq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v16, partial apply for closure #1 in encodeInteger<A, B>(_:into:encodedLength:), v21, a5, MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, MEMORY[0x277D84AC0], v17);
  result = (*(v13 + 8))(v16, a5);
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t closure #1 in encodeInteger<A, B>(_:into:encodedLength:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  specialized Collection.prefix(_:)(a4, a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
  lazy protocol witness table accessor for type Slice<UnsafeRawBufferPointer> and conformance Slice<A>();
  return dispatch thunk of RangeReplaceableCollection.append<A>(contentsOf:)();
}

uint64_t partial apply for closure #1 in encodeInteger<A, B>(_:into:encodedLength:)(uint64_t a1, uint64_t a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  return closure #1 in encodeInteger<A, B>(_:into:encodedLength:)(a1, a2, v2[6], v2[7]);
}

uint64_t _ss15withUnsafeBytes2of_q0_xz_q0_SWq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20]();
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v17(v13, v13 + *(*(v16 - 8) + 64), v15);
  if (v8)
  {
    return (*(v11 + 32))(a8, v15, a5);
  }

  return result;
}

uint64_t decodeInteger<A, B>(from:encodedLength:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v66 = a7;
  v67 = a6;
  v13 = *(*(a5 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v59 = *(AssociatedTypeWitness - 8);
  v14 = *(v59 + 64);
  v16 = MEMORY[0x28223BE20](AssociatedTypeWitness, v15);
  v56 = v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v64 = v55 - v20;
  v57 = *(a4 - 8);
  v21 = *(v57 + 64);
  v23 = MEMORY[0x28223BE20](v19, v22);
  v63 = v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v25);
  v27 = v55 - v26;
  if (dispatch thunk of Collection.count.getter() == a2)
  {
    v28 = *(v67 + 8);
    v61 = a5;
    v62 = v28;
    v29 = *(*(v28 + 24) + 8);
    result = dispatch thunk of static AdditiveArithmetic.zero.getter();
    if (a2 < 0)
    {
      __break(1u);
    }

    else
    {
      v55[1] = v7;
      v31 = v56;
      if (a2)
      {
        v32 = a3;
        v33 = a1;
        v34 = 0;
        v35 = 0;
        v59 += 8;
        v60 = a2;
        v57 += 8;
        v58 = a4;
        v68 = v13;
        v69 = v27;
        v70 = v32;
        do
        {
          v67 = v35 + 1;
          v36 = v33;
          dispatch thunk of Collection.startIndex.getter();
          v37 = v64;
          dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
          v38 = *v59;
          v39 = v31;
          v40 = v31;
          v41 = AssociatedTypeWitness;
          (*v59)(v39, AssociatedTypeWitness);
          v42 = dispatch thunk of Collection.subscript.read();
          v44 = *v43;
          v42(&v71, 0);
          v45 = v37;
          v46 = v58;
          v47 = v41;
          v31 = v40;
          v38(v45, v47);
          LOBYTE(v71) = v44;
          lazy protocol witness table accessor for type UInt8 and conformance UInt8();
          v48 = v63;
          dispatch thunk of BinaryInteger.init<A>(_:)();
          v71 = v34;
          lazy protocol witness table accessor for type Int and conformance Int();
          dispatch thunk of static BinaryInteger.<< infix<A>(_:_:)();
          v49 = *v57;
          (*v57)(v48, v46);
          dispatch thunk of static BinaryInteger.|= infix(_:_:)();
          v33 = v36;
          v49(v69, v46);
          result = v70;
          v34 += 8;
          v35 = v67;
        }

        while (v60 != v67);
      }
    }
  }

  else
  {
    v71 = 0;
    v72 = 0xE000000000000000;
    _StringGuts.grow(_:)(39);

    v71 = 0xD00000000000001DLL;
    v72 = 0x8000000270C52390;
    v73 = a2;
    v50 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v50);

    MEMORY[0x2743B25F0](0x3D746F67202CLL, 0xE600000000000000);
    v73 = dispatch thunk of Collection.count.getter();
    v51 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v51);

    v52 = v71;
    v53 = v72;
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v54 = v52;
    v54[1] = v53;
    return swift_willThrow();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UInt8 and conformance UInt8()
{
  result = lazy protocol witness table cache variable for type UInt8 and conformance UInt8;
  if (!lazy protocol witness table cache variable for type UInt8 and conformance UInt8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt8 and conformance UInt8);
  }

  return result;
}

uint64_t VDAFCodableFixedWidthInteger.encode<A>(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = (*(*(a4 + 24) + 16))(a2);
  v12 = *(a4 + 8);

  return encodeInteger<A, B>(_:into:encodedLength:)(v5, a1, v11, a3, a2, a5, v12);
}

uint64_t VDAFCodableFixedWidthInteger.init<A>(from:parameter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v34 = a6;
  v33 = a4;
  v32 = a7;
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](a1, a2);
  v31 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = &v29 - v16;
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v29 - v19;
  v22 = *(v21 + 8);
  v23 = *(*(*(v22 + 8) + 24) + 8);
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v24 = (*(*(a5 + 24) + 16))(a3);
  v30 = *(v10 + 8);
  v30(v17, a3);
  v36 = a1;
  v25 = v24;
  v26 = v33;
  v27 = v35;
  decodeInteger<A, B>(from:encodedLength:)(a1, v25, v33, a3, v34, v22, v20);
  if (v27)
  {
    return (*(*(v26 - 8) + 8))(v36, v26);
  }

  (*(v10 + 16))(v31, v20, a3);
  dispatch thunk of BinaryInteger.init<A>(_:)();
  (*(*(v26 - 8) + 8))(v36, v26);
  return (v30)(v20, a3);
}

uint64_t Array<A>.init<A>(from:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v51 = a1;
  v48 = a4[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for Optional();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v9 = type metadata accessor for Optional();
  v10 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v9 - 8, v11);
  v14 = &v45 - v13;
  v50 = *(a3 - 8);
  v15 = *(v50 + 64);
  v17 = MEMORY[0x28223BE20](v12, v16);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a2 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17, v22);
  v24 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(*(*(a4[1] + 8) + 24) + 8);
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v26 = (*(a4[3] + 16))(a2);
  (*(v20 + 8))(v24, a2);
  v27 = v51;
  v49 = a5;
  v28 = *(*(a5 + 8) + 8);
  v29 = dispatch thunk of Collection.count.getter();
  if (v26 == -1)
  {
    goto LABEL_5;
  }

  if (v26)
  {
    goto LABEL_7;
  }

  if (!v29)
  {
    dispatch thunk of Collection.count.getter();
    __break(1u);
LABEL_5:
    v29 = dispatch thunk of Collection.count.getter();
    if (v29 != 0x8000000000000000)
    {
      goto LABEL_10;
    }

    __break(1u);
LABEL_7:
    if (v29 % v26)
    {
      goto LABEL_8;
    }

    v29 = dispatch thunk of Collection.count.getter();
LABEL_10:
    v37 = v50;
    v38 = *(v50 + 16);
    v45 = v29 / v26;
    v39 = v27;
    v40 = a3;
    v38(v19, v39, a3);
    v41 = TupleTypeMetadata3;
    v42 = *(TupleTypeMetadata3 + 48);
    v43 = *(TupleTypeMetadata3 + 64);
    (*(*(AssociatedTypeWitness - 8) + 56))(v14, 1, 1);
    *&v14[v42] = v45;
    *&v14[v43] = v26;
    (*(*(v41 - 8) + 56))(v14, 0, 1, v41);
    v35 = Array<A>.init<A>(from:parameter:)(v19, v14, a2, v40, v48, v49);
    (*(v37 + 8))(v51, v40);
    return v35;
  }

LABEL_8:
  v52 = 0;
  v53 = 0xE000000000000000;
  _StringGuts.grow(_:)(69);
  type metadata accessor for Array();
  v30 = _typeName(_:qualified:)();
  MEMORY[0x2743B25F0](v30);

  v31 = v27;
  MEMORY[0x2743B25F0](0xD000000000000010, 0x8000000270C51B60);
  v54 = dispatch thunk of Collection.count.getter();
  v32 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2743B25F0](v32);

  MEMORY[0x2743B25F0](0xD00000000000002ELL, 0x8000000270C51B80);
  v54 = v26;
  v33 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2743B25F0](v33);

  MEMORY[0x2743B25F0](41, 0xE100000000000000);
  v34 = v52;
  v35 = v53;
  lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
  swift_allocError();
  *v36 = v34;
  v36[1] = v35;
  swift_willThrow();
  (*(v50 + 8))(v31, a3);
  return v35;
}

unint64_t instantiation function for generic protocol witness table for Int32(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Int32 and conformance Int32();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type Int32 and conformance Int32()
{
  result = lazy protocol witness table cache variable for type Int32 and conformance Int32;
  if (!lazy protocol witness table cache variable for type Int32 and conformance Int32)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int32 and conformance Int32);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int32 and conformance Int32;
  if (!lazy protocol witness table cache variable for type Int32 and conformance Int32)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int32 and conformance Int32);
  }

  return result;
}

uint64_t protocol witness for VDAFEncodable.encode<A>(into:) in conformance Int32(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = lazy protocol witness table accessor for type Int32 and conformance Int32();

  return VDAFCodableFixedWidthInteger.encode<A>(into:)(a1, a4, a2, v8, a3);
}

unint64_t instantiation function for generic protocol witness table for UInt32(uint64_t a1)
{
  result = lazy protocol witness table accessor for type UInt32 and conformance UInt32();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type UInt32 and conformance UInt32()
{
  result = lazy protocol witness table cache variable for type UInt32 and conformance UInt32;
  if (!lazy protocol witness table cache variable for type UInt32 and conformance UInt32)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt32 and conformance UInt32);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UInt32 and conformance UInt32;
  if (!lazy protocol witness table cache variable for type UInt32 and conformance UInt32)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt32 and conformance UInt32);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UInt32 and conformance UInt32;
  if (!lazy protocol witness table cache variable for type UInt32 and conformance UInt32)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt32 and conformance UInt32);
  }

  return result;
}

uint64_t protocol witness for VDAFEncodable.encode<A>(into:) in conformance UInt32(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = lazy protocol witness table accessor for type UInt32 and conformance UInt32();

  return VDAFCodableFixedWidthInteger.encode<A>(into:)(a1, a4, a2, v8, a3);
}

unint64_t instantiation function for generic protocol witness table for UInt64(uint64_t a1)
{
  result = lazy protocol witness table accessor for type UInt64 and conformance UInt64();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type UInt64 and conformance UInt64()
{
  result = lazy protocol witness table cache variable for type UInt64 and conformance UInt64;
  if (!lazy protocol witness table cache variable for type UInt64 and conformance UInt64)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt64 and conformance UInt64);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UInt64 and conformance UInt64;
  if (!lazy protocol witness table cache variable for type UInt64 and conformance UInt64)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt64 and conformance UInt64);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UInt64 and conformance UInt64;
  if (!lazy protocol witness table cache variable for type UInt64 and conformance UInt64)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt64 and conformance UInt64);
  }

  return result;
}

uint64_t protocol witness for VDAFEncodable.encode<A>(into:) in conformance UInt64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = lazy protocol witness table accessor for type UInt64 and conformance UInt64();

  return VDAFCodableFixedWidthInteger.encode<A>(into:)(a1, a4, a2, v8, a3);
}

unint64_t instantiation function for generic protocol witness table for _UInt128(uint64_t a1)
{
  result = lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type _UInt128 and conformance _UInt128()
{
  result = lazy protocol witness table cache variable for type _UInt128 and conformance _UInt128;
  if (!lazy protocol witness table cache variable for type _UInt128 and conformance _UInt128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UInt128 and conformance _UInt128);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UInt128 and conformance _UInt128;
  if (!lazy protocol witness table cache variable for type _UInt128 and conformance _UInt128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UInt128 and conformance _UInt128);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UInt128 and conformance _UInt128;
  if (!lazy protocol witness table cache variable for type _UInt128 and conformance _UInt128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UInt128 and conformance _UInt128);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UInt128 and conformance _UInt128;
  if (!lazy protocol witness table cache variable for type _UInt128 and conformance _UInt128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UInt128 and conformance _UInt128);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UInt128 and conformance _UInt128;
  if (!lazy protocol witness table cache variable for type _UInt128 and conformance _UInt128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UInt128 and conformance _UInt128);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UInt128 and conformance _UInt128;
  if (!lazy protocol witness table cache variable for type _UInt128 and conformance _UInt128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UInt128 and conformance _UInt128);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UInt128 and conformance _UInt128;
  if (!lazy protocol witness table cache variable for type _UInt128 and conformance _UInt128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UInt128 and conformance _UInt128);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UInt128 and conformance _UInt128;
  if (!lazy protocol witness table cache variable for type _UInt128 and conformance _UInt128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UInt128 and conformance _UInt128);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UInt128 and conformance _UInt128;
  if (!lazy protocol witness table cache variable for type _UInt128 and conformance _UInt128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UInt128 and conformance _UInt128);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UInt128 and conformance _UInt128;
  if (!lazy protocol witness table cache variable for type _UInt128 and conformance _UInt128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UInt128 and conformance _UInt128);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UInt128 and conformance _UInt128;
  if (!lazy protocol witness table cache variable for type _UInt128 and conformance _UInt128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UInt128 and conformance _UInt128);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UInt128 and conformance _UInt128;
  if (!lazy protocol witness table cache variable for type _UInt128 and conformance _UInt128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UInt128 and conformance _UInt128);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UInt128 and conformance _UInt128;
  if (!lazy protocol witness table cache variable for type _UInt128 and conformance _UInt128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UInt128 and conformance _UInt128);
  }

  return result;
}

uint64_t protocol witness for VDAFEncodable.encode<A>(into:) in conformance _UInt128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();

  return VDAFCodableFixedWidthInteger.encode<A>(into:)(a1, a4, a2, v8, a3);
}

unint64_t lazy protocol witness table accessor for type Slice<UnsafeRawBufferPointer> and conformance Slice<A>()
{
  result = lazy protocol witness table cache variable for type Slice<UnsafeRawBufferPointer> and conformance Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<UnsafeRawBufferPointer> and conformance Slice<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<UnsafeRawBufferPointer> and conformance Slice<A>);
  }

  return result;
}

uint64_t AggregateShare.init<A>(from:parameter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v14 = *(a4 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, a1, v18);
  v19 = Array<A>.init<A>(from:)(v17, a3, a4, a5, a6);
  result = (*(v14 + 8))(a1, a4);
  if (!v7)
  {
    *a7 = v19;
  }

  return result;
}

uint64_t AggregateShare.share.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t static AggregateShare.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(*(a4 + 8) + 8);
  return static Array<A>.== infix(_:_:)();
}

uint64_t static AggregateShare.+= infix(_:_:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  v6 = type metadata accessor for Array();
  return Array<A>.elementwiseAdd(_:)(v5, v6, a4);
}

uint64_t AggregateShare.accumulate(_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = type metadata accessor for Array();

  Array<A>.elementwiseAdd(_:)(v6, v5, v4);
}

uint64_t AggregateShare.encodedLength.getter(uint64_t a1)
{
  v3 = *v1;
  v4 = *(a1 + 16);
  v5 = MEMORY[0x2743B2830](v3, v4);
  v6 = (*(*(a1 + 24) + 64))(v4);
  result = v5 * v6;
  if ((v5 * v6) >> 64 != (v5 * v6) >> 63)
  {
    __break(1u);
  }

  return result;
}

uint64_t AggregateShare.encode<A>(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = *v4;
  v9 = *(a2 + 16);
  v10 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  return Collection<>.encode<A>(into:)(a1, v10, a3, WitnessTable, a4, *(*(a2 + 24) + 40));
}

uint64_t type metadata instantiation function for AggregateShare()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for AggregateShare(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for AggregateShare(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static VDAFErrorProtocol.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = VDAFErrorProtocol.value.getter(a3);
  v6 = v5;
  v7 = VDAFErrorProtocol.value.getter(a3);
  if (v6)
  {
    if (v8)
    {
      if (v4 == v7 && v6 == v8)
      {

        v9 = 1;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    if (!v8)
    {
      v9 = 1;
      return v9 & 1;
    }

    v9 = 0;
  }

  return v9 & 1;
}

VDAF::VDAFCodepoint_optional __swiftcall VDAFCodepoint.init(rawValue:)(Swift::UInt32 rawValue)
{
  if (rawValue <= -61435)
  {
    if (rawValue <= -61439)
    {
      switch(rawValue)
      {
        case 0xFFFF0000:
          *v1 = 5;
          return rawValue;
        case 0xFFFF1000:
          *v1 = 6;
          return rawValue;
        case 0xFFFF1001:
          *v1 = 7;
          return rawValue;
      }

      goto LABEL_32;
    }

    if (rawValue > -61437)
    {
      if (rawValue == -61436)
      {
        *v1 = 10;
      }

      else
      {
        *v1 = 11;
      }
    }

    else if (rawValue == -61438)
    {
      *v1 = 8;
    }

    else
    {
      *v1 = 9;
    }
  }

  else if (rawValue > 0)
  {
    if (rawValue > 2)
    {
      if (rawValue == 3)
      {
        *v1 = 3;
        return rawValue;
      }

      if (rawValue == 4096)
      {
        *v1 = 4;
        return rawValue;
      }

      goto LABEL_32;
    }

    if (rawValue == 1)
    {
      *v1 = 1;
    }

    else
    {
      *v1 = 2;
    }
  }

  else
  {
    if (rawValue <= -2)
    {
      if (rawValue == -61434)
      {
        *v1 = 12;
        return rawValue;
      }

      if (rawValue == -61433)
      {
        *v1 = 13;
        return rawValue;
      }

LABEL_32:
      *v1 = 15;
      return rawValue;
    }

    if (rawValue == -1)
    {
      *v1 = 14;
    }

    else
    {
      *v1 = 0;
    }
  }

  return rawValue;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance VDAFCodepoint()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(dword_270C44C68[v1]);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance VDAFCodepoint()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(dword_270C44C68[v1]);
  return Hasher._finalize()();
}

char *static VDAFProtocol.domainSeparationTag(usage:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 8, 0, MEMORY[0x277D84F90]);
  v7 = (*(a3 + 224))(a2, a3);
  v9 = *(v6 + 2);
  v8 = *(v6 + 3);
  v10 = v8 >> 1;
  v11 = v9 + 1;
  if (v8 >> 1 <= v9)
  {
    v17 = v7;
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v6);
    v7 = v17;
    v8 = *(v6 + 3);
    v10 = v8 >> 1;
  }

  *(v6 + 2) = v11;
  v6[v9 + 32] = v7;
  v12 = v9 + 2;
  if (v10 < v12)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v12, 1, v6);
  }

  *(v6 + 2) = v12;
  v6[v11 + 32] = 0;
  v21 = v6;
  (*(a3 + 208))(&v20, a2, a3);
  v18 = bswap32(dword_270C44C68[v20]);
  v13 = specialized _copyCollectionToContiguousArray<A>(_:)(&v18, v19);
  specialized Array.append<A>(contentsOf:)(v13);
  LOWORD(v18) = __rev16(v5 + 1);
  v14 = specialized _copyCollectionToContiguousArray<A>(_:)(&v18, &v18 + 2);
  specialized Array.append<A>(contentsOf:)(v14);
  result = v21;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t VDAFErrorProtocol.value.getter(uint64_t a1)
{
  v2 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](a1, v1);
  (*(v4 + 16))(v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10[2] = String.init<A>(describing:)();
  v10[3] = v5;
  v10[0] = 40;
  v10[1] = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  v6 = StringProtocol.components<A>(separatedBy:)();

  if (v6[2])
  {
    v7 = v6[4];
    v8 = v6[5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

Swift::Bool __swiftcall VDAFProtocol.isValidAggregatorID(_:)(Swift::Int a1)
{
  v3 = (*(v1 + 232))();
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    LOBYTE(v3) = v3 > a1;
  }

  return v3;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> VDAFProtocol.assertValidAggregatorID(_:)(Swift::Int a1)
{
  v3 = (*(v1 + 232))();
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 <= a1)
  {
    v4 = dispatch thunk of CustomStringConvertible.description.getter();
    v6 = v5;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v7 = v4;
    *(v7 + 8) = v6;
    *(v7 + 16) = 0;
    swift_willThrow();
  }
}

uint64_t Client.shard(_:nonce:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(a5 + 16))(a4, a5);
  v16 = _ss17FixedWidthIntegerP4VDAFE12randomVector5countSayxGSi_tFZs5UInt8V_Tt0g5(v9);
  v10 = *(a5 + 24);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  v12 = lazy protocol witness table accessor for type [UInt8] and conformance [A]();
  v13 = v10(a1, a2, a3, &v16, v11, v12, a4, a5);

  return v13;
}

uint64_t Aggregator.prepareMessageFrom(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20 = a1;
  v19[1] = a4;
  v7 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19[0] = *(AssociatedTypeWitness - 8);
  v9 = *(v19[0] + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v10);
  v12 = v19 - v11;
  v21 = MEMORY[0x277D84F90];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = *(AssociatedConformanceWitness + 16);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  v16 = lazy protocol witness table accessor for type [UInt8] and conformance [A]();
  result = v14(&v21, v15, v16, AssociatedTypeWitness, AssociatedConformanceWitness);
  if (!v4)
  {
    v18 = v19[0];
    (*(a3 + 136))(v20, v12, a2, a3);
    return (*(v18 + 8))(v12, AssociatedTypeWitness);
  }

  return result;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(_BYTE *a1, _BYTE *a2)
{
  if (!a1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = a2 - a1;
  if (a2 == a1)
  {
    return MEMORY[0x277D84F90];
  }

  result = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1g5(a2 - a1, 0);
  if (a2 > a1)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      v6 = result;
      memmove(result + 4, a1, v3);
      return v6;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for VDAFError(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
  result = lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
  *(a1 + 16) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type VDAFCodepoint and conformance VDAFCodepoint()
{
  result = lazy protocol witness table cache variable for type VDAFCodepoint and conformance VDAFCodepoint;
  if (!lazy protocol witness table cache variable for type VDAFCodepoint and conformance VDAFCodepoint)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VDAFCodepoint and conformance VDAFCodepoint);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VDAFError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for VDAFError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VDAFCodepoint(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VDAFCodepoint(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t type metadata completion function for PrepareTransition(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  result = swift_getTupleTypeMetadata2();
  if (v4 <= 0x3F)
  {
    v5 = *(v2 + 8);
    result = swift_getAssociatedTypeWitness();
    if (v6 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PrepareTransition(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = ((v7 + *(v8 + 80)) & ~*(v8 + 80)) + *(v8 + 64);
  v10 = *(v5 + 8);
  v11 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = v11;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_26;
  }

  v13 = v12 + 1;
  v14 = 8 * (v12 + 1);
  if ((v12 + 1) <= 3)
  {
    v17 = ((a2 + ~(-1 << v14) - 254) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v17 < 2)
    {
LABEL_26:
      v19 = *(a1 + v12);
      if (v19 >= 2)
      {
        return (v19 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_26;
  }

LABEL_15:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 > 3)
    {
      LODWORD(v13) = 4;
    }

    if (v13 > 2)
    {
      if (v13 == 3)
      {
        LODWORD(v13) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v13) = *a1;
      }
    }

    else if (v13 == 1)
    {
      LODWORD(v13) = *a1;
    }

    else
    {
      LODWORD(v13) = *a1;
    }
  }

  return (v13 | v18) + 255;
}

void storeEnumTagSinglePayload for PrepareTransition(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = ((v9 + *(v10 + 80)) & ~*(v10 + 80)) + *(v10 + 64);
  v12 = *(v7 + 8);
  v13 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v13 <= v11)
  {
    v13 = v11;
  }

  v14 = v13 + 1;
  if (a3 < 0xFF)
  {
    v15 = 0;
  }

  else if (v14 <= 3)
  {
    v18 = ((a3 + ~(-1 << (8 * v14)) - 254) >> (8 * v14)) + 1;
    if (HIWORD(v18))
    {
      v15 = 4;
    }

    else
    {
      if (v18 < 0x100)
      {
        v19 = 1;
      }

      else
      {
        v19 = 2;
      }

      if (v18 >= 2)
      {
        v15 = v19;
      }

      else
      {
        v15 = 0;
      }
    }
  }

  else
  {
    v15 = 1;
  }

  if (a2 > 0xFE)
  {
    v16 = a2 - 255;
    if (v14 >= 4)
    {
      bzero(a1, v13 + 1);
      *a1 = v16;
      v17 = 1;
      if (v15 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v17 = (v16 >> (8 * v14)) + 1;
    if (v13 != -1)
    {
      v20 = v16 & ~(-1 << (8 * v14));
      bzero(a1, v14);
      if (v14 != 3)
      {
        if (v14 == 2)
        {
          *a1 = v20;
          if (v15 > 1)
          {
LABEL_39:
            if (v15 == 2)
            {
              *&a1[v14] = v17;
            }

            else
            {
              *&a1[v14] = v17;
            }

            return;
          }
        }

        else
        {
          *a1 = v16;
          if (v15 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v15)
        {
          a1[v14] = v17;
        }

        return;
      }

      *a1 = v20;
      a1[2] = BYTE2(v20);
    }

    if (v15 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v15 <= 1)
  {
    if (v15)
    {
      a1[v14] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v13] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v15 == 2)
  {
    *&a1[v14] = 0;
    goto LABEL_24;
  }

  *&a1[v14] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t VerificationJointRandomness.seed.getter()
{
  v1 = v0;
  if (v0[3])
  {
    v2 = v0[3];
  }

  else
  {
    v3 = *v0;
    v4 = v1[2];
    WitnessTable = swift_getWitnessTable();
    v2 = static JointRandomness.jointRandSeed(parts:)(v4, v3, WitnessTable);
    v6 = v1[3];
    v1[3] = v2;
  }

  return v2;
}

uint64_t VerificationJointRandomness.seed.setter(uint64_t a1)
{
  v2 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t (*VerificationJointRandomness.seed.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = VerificationJointRandomness.seed.getter();
  return VerificationJointRandomness.seed.modify;
}

uint64_t VerificationJointRandomness.seed.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 24);
  *(v1 + 24) = v2;
}

uint64_t VerificationJointRandomness.xof.getter()
{
  v1 = *v0;
  if (v0[4])
  {
    v2 = v0[4];
  }

  else
  {
    v2 = closure #1 in VerificationJointRandomness.xof.getter(v0);
    v3 = v0[4];
    v0[4] = v2;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v2;
}

uint64_t VerificationJointRandomness.xof.setter(uint64_t a1)
{
  v2 = *(v1 + 32);
  *(v1 + 32) = a1;
  return swift_unknownObjectRelease();
}

uint64_t closure #1 in VerificationJointRandomness.xof.getter(void *a1)
{
  v2 = *(*a1 + 96);
  v3 = *(*a1 + 80);
  v4 = VerificationJointRandomness.seed.getter();
  v12 = 2;
  v5 = (*(v2 + 240))(&v12, v3, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  result = swift_allocObject();
  *(result + 16) = xmmword_270C44540;
  v7 = a1[6];
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v7 <= 0xFF)
  {
    v8 = result;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    *(v8 + 32) = v7;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v11 = static ExtendableOutputFunction.makeXOF(seed:domainSeparationTag:binder:)(v4, v5, v8, AssociatedTypeWitness, AssociatedConformanceWitness);

    return v11;
  }

  __break(1u);
  return result;
}

uint64_t (*VerificationJointRandomness.xof.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = VerificationJointRandomness.xof.getter();
  return VerificationJointRandomness.xof.modify;
}

uint64_t VerificationJointRandomness.xof.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 32);
  *(v1 + 32) = v2;
  return swift_unknownObjectRelease();
}

void *VerificationJointRandomness.__allocating_init(count:numOfProofs:parts:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[4] = 0;
  result[5] = a1;
  result[6] = a2;
  result[2] = a3;
  result[3] = 0;
  return result;
}

void *VerificationJointRandomness.init(count:numOfProofs:parts:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = 0;
  v3[5] = a1;
  v3[6] = a2;
  v3[2] = a3;
  v3[3] = 0;
  return v3;
}

uint64_t VerificationJointRandomness.next()()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = v0[5];
  v4 = VerificationJointRandomness.xof.getter();
  v5 = v1[12];
  v6 = v1[10];
  swift_getAssociatedTypeWitness();
  v7 = v1[13];
  swift_getAssociatedConformanceWitness();
  v8 = static FieldElement.randomVector<A>(count:using:)(v3, v4, v2);
  swift_unknownObjectRelease();
  return v8;
}

void *VerificationJointRandomness.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];
  swift_unknownObjectRelease();
  return v0;
}

uint64_t VerificationJointRandomness.__deallocating_deinit()
{
  VerificationJointRandomness.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for JointRandomness.next() in conformance VerificationJointRandomness<A, B>@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = VerificationJointRandomness.next()();
  *a1 = result;
  return result;
}

uint64_t keypath_setTm(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(uint64_t))
{
  v7 = *a2;
  v8 = a5(*a1);
  return a6(v8);
}

uint64_t _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVy10Foundation4DataVAJG_s5UInt8Vs5NeverOTg504_ss5h20VA2BIgyyd_AB_ABtABs5i29OIegnrzr_TR038_s10Foundation4G44V4VDAFE3xoryA2CKFs5A12VAG_AGtXEfU_Tf3nnnpf_nTf1cn_n(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12Zip2SequenceV8IteratorVy10Foundation4DataVAG_GMd, &_ss12Zip2SequenceV8IteratorVy10Foundation4DataVAG_GMR);
  v8 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26, v9);
  v27 = &v25 - v10;
  v11 = specialized Zip2Sequence.underestimatedCount.getter(a1, a2, a3, a4);
  v31 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11 & ~(v11 >> 63), 0);
  if (a2 >> 62 == 2)
  {
    v12 = *(a1 + 16);
  }

  v13 = v31;
  outlined copy of Data._Representation(a1, a2);
  outlined copy of Data._Representation(a3, a4);
  Data.Iterator.init(_:at:)();
  if (a4 >> 62 == 2)
  {
    v14 = *(a3 + 16);
  }

  v15 = v27;
  v28 = *(v26 + 52);
  result = Data.Iterator.init(_:at:)();
  if (v11 < 0)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

  if (v11)
  {
    type metadata accessor for Data.Iterator();
    lazy protocol witness table accessor for type Data.Iterator and conformance Data.Iterator();
    do
    {
      result = dispatch thunk of IteratorProtocol.next()();
      if (v30)
      {
        goto LABEL_21;
      }

      v17 = v29;
      result = dispatch thunk of IteratorProtocol.next()();
      if (v30)
      {
        goto LABEL_21;
      }

      v18 = v29;
      v31 = v13;
      v20 = *(v13 + 16);
      v19 = *(v13 + 24);
      if (v20 >= v19 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
        v13 = v31;
      }

      *(v13 + 16) = v20 + 1;
      *(v13 + v20 + 32) = v18 ^ v17;
      --v11;
      v15 = v27;
    }

    while (v11);
  }

  type metadata accessor for Data.Iterator();
  lazy protocol witness table accessor for type Data.Iterator and conformance Data.Iterator();
  while (1)
  {
    dispatch thunk of IteratorProtocol.next()();
    if (v30)
    {
      break;
    }

    v21 = v29;
    dispatch thunk of IteratorProtocol.next()();
    if (v30)
    {
      break;
    }

    v22 = v29;
    v31 = v13;
    v24 = *(v13 + 16);
    v23 = *(v13 + 24);
    if (v24 >= v23 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
      v13 = v31;
    }

    *(v13 + 16) = v24 + 1;
    *(v13 + v24 + 32) = v22 ^ v21;
  }

  *(v15 + *(v26 + 56)) = 1;
  outlined destroy of Zip2Sequence<Data, Data>.Iterator(v15);
  return v13;
}

uint64_t _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v61 = a8;
  v9 = v8;
  v76 = a2;
  v77 = a4;
  v75 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v70 = *(AssociatedTypeWitness - 8);
  v15 = *(v70 + 64);
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness, v16);
  v59 = &v58 - v18;
  v62 = a5;
  v60 = *(a5 - 8);
  v19 = *(v60 + 64);
  v21 = MEMORY[0x28223BE20](v17, v20);
  v72 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v23);
  v73 = &v58 - v24;
  v25 = type metadata accessor for Optional();
  v63 = *(v25 - 8);
  v64 = v25;
  v26 = *(v63 + 64);
  v28 = MEMORY[0x28223BE20](v25, v27);
  v66 = &v58 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v28, v30);
  v33 = &v58 - v32;
  v34 = *(*(a4 - 1) + 64);
  v36 = MEMORY[0x28223BE20](v31, v35);
  v65 = &v58 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v36, v38);
  v71 = *(a3 - 1);
  v40 = *(v71 + 8);
  MEMORY[0x28223BE20](v39, v41);
  v43 = &v58 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = a6;
  v78 = swift_getAssociatedTypeWitness();
  v67 = *(v78 - 8);
  v44 = *(v67 + 64);
  MEMORY[0x28223BE20](v78, v45);
  v47 = &v58 - v46;
  v48 = dispatch thunk of Sequence.underestimatedCount.getter();
  v79 = ContiguousArray.init()();
  v74 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v48);
  (*(v71 + 2))(v43, v68, a3);
  v77 = v47;
  v71 = a3;
  result = dispatch thunk of Sequence.makeIterator()();
  if (v48 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v48)
  {
    v50 = (v70 + 48);
    v51 = (v70 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      dispatch thunk of IteratorProtocol.next()();
      result = (*v50)(v33, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v75(v33, v73);
      if (v9)
      {
        (*(v67 + 8))(v77, v78);

        (*(v60 + 32))(v61, v73, v62);
        return (*v51)(v33, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v51)(v33, AssociatedTypeWitness);
      ContiguousArray.append(_:)();
      if (!--v48)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v52 = v66;
  dispatch thunk of IteratorProtocol.next()();
  v53 = v52;
  v54 = v70;
  v55 = *(v70 + 48);
  v73 = (v70 + 48);
  v71 = v55;
  if (v55(v52, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v67 + 8))(v77, v78);
    (*(v63 + 8))(v53, v64);
    return v79;
  }

  else
  {
    v70 = *(v54 + 32);
    v56 = (v54 + 8);
    v57 = v59;
    while (1)
    {
      (v70)(v57, v53, AssociatedTypeWitness);
      v75(v57, v72);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v56)(v57, AssociatedTypeWitness);
      ContiguousArray.append(_:)();
      dispatch thunk of IteratorProtocol.next()();
      if (v71(v53, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v56)(v57, AssociatedTypeWitness);
    (*(v67 + 8))(v77, v78);

    return (*(v60 + 32))(v61, v72, v62);
  }
}

uint64_t Data.xor(_:)(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v6)
    {
      v7 = BYTE6(a4);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v6 != 2)
  {
    v7 = 0;
    goto LABEL_11;
  }

  v9 = *(a3 + 16);
  v8 = *(a3 + 24);
  v10 = __OFSUB__(v8, v9);
  v7 = v8 - v9;
  if (v10)
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a3), a3))
    {
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v7 = HIDWORD(a3) - a3;
  }

LABEL_11:
  v11 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v11 != 2)
    {
      if (v7)
      {
        goto LABEL_23;
      }

      goto LABEL_18;
    }

    v13 = *(result + 16);
    v12 = *(result + 24);
    v10 = __OFSUB__(v12, v13);
    v14 = v12 - v13;
    if (!v10)
    {
      if (v7 != v14)
      {
        goto LABEL_23;
      }

      goto LABEL_18;
    }

    goto LABEL_46;
  }

  if (!v11)
  {
    if (v7 != BYTE6(a2))
    {
      goto LABEL_23;
    }

LABEL_18:
    v15 = result;
    outlined copy of Data._Representation(a3, a4);
    outlined copy of Data._Representation(v15, a2);
    v17 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVy10Foundation4DataVAJG_s5UInt8Vs5NeverOTg504_ss5h20VA2BIgyyd_AB_ABtABs5i29OIegnrzr_TR038_s10Foundation4G44V4VDAFE3xoryA2CKFs5A12VAG_AGtXEfU_Tf3nnnpf_nTf1cn_n(a3, a4, v15, a2);
    outlined consume of Data._Representation(a3, a4);
    outlined consume of Data._Representation(v15, a2);
    v18 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(v17);

    return v18;
  }

  if (__OFSUB__(HIDWORD(result), result))
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v7 == HIDWORD(result) - result)
  {
    goto LABEL_18;
  }

LABEL_23:
  if (v6 <= 1)
  {
    if (!v6)
    {
      v19 = BYTE6(a4);
      if (v11 > 1)
      {
        goto LABEL_37;
      }

LABEL_34:
      if (!v11)
      {
        v22 = BYTE6(a2);
LABEL_44:
        lazy protocol witness table accessor for type XORError and conformance XORError();
        swift_allocError();
        *v25 = v19;
        *(v25 + 8) = v22;
        *(v25 + 16) = 0;
        return swift_willThrow();
      }

      goto LABEL_41;
    }

LABEL_31:
    if (!__OFSUB__(HIDWORD(a3), a3))
    {
      v19 = HIDWORD(a3) - a3;
      goto LABEL_33;
    }

LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v6 == 2)
  {
    v21 = *(a3 + 16);
    v20 = *(a3 + 24);
    v19 = v20 - v21;
    if (!__OFSUB__(v20, v21))
    {
LABEL_33:
      if (v11 <= 1)
      {
        goto LABEL_34;
      }

      goto LABEL_37;
    }

    __break(1u);
    goto LABEL_31;
  }

  v19 = 0;
  if (v11 <= 1)
  {
    goto LABEL_34;
  }

LABEL_37:
  if (v11 != 2)
  {
    v22 = 0;
    goto LABEL_44;
  }

  v24 = *(result + 16);
  v23 = *(result + 24);
  v22 = v23 - v24;
  if (!__OFSUB__(v23, v24))
  {
    goto LABEL_44;
  }

  __break(1u);
LABEL_41:
  if (!__OFSUB__(HIDWORD(result), result))
  {
    v22 = HIDWORD(result) - result;
    goto LABEL_44;
  }

LABEL_49:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type XORError and conformance XORError()
{
  result = lazy protocol witness table cache variable for type XORError and conformance XORError;
  if (!lazy protocol witness table cache variable for type XORError and conformance XORError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XORError and conformance XORError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XORError and conformance XORError;
  if (!lazy protocol witness table cache variable for type XORError and conformance XORError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XORError and conformance XORError);
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance XORError(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  return _s4VDAF17VDAFErrorProtocolPAAE2eeoiySbx_xtFZAA8XORErrorO_Tt1g5();
}

uint64_t Array<A>.xor(_:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v10 = MEMORY[0x2743B2830](a2, a3);
  v11 = MEMORY[0x2743B2830](a1, a3);
  if (v10 == v11)
  {
    v26[0] = a2;
    v12 = type metadata accessor for Array();
    WitnessTable = swift_getWitnessTable();
    v14 = zip<A, B>(_:_:)();
    v26[9] = v26;
    v26[4] = v26[6];
    v26[5] = v26[7];
    v16 = MEMORY[0x28223BE20](v14, v15);
    v25[10] = a3;
    v25[11] = a4;
    v25[12] = a5;
    MEMORY[0x28223BE20](v16, v17);
    v25[2] = a3;
    v25[3] = a4;
    v25[4] = a5;
    v25[5] = partial apply for closure #1 in Array<A>.xor(_:);
    v25[6] = v18;
    v26[0] = v12;
    v26[1] = v12;
    v26[2] = WitnessTable;
    v26[3] = WitnessTable;
    v19 = type metadata accessor for Zip2Sequence();
    v20 = swift_getWitnessTable();
    a5 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for thunk for @callee_guaranteed (@in_guaranteed A, @in_guaranteed A) -> (@out A), v25, v19, a3, MEMORY[0x277D84A98], v20, MEMORY[0x277D84AC0], v21);
  }

  else
  {
    v22 = v11;
    lazy protocol witness table accessor for type XORError and conformance XORError();
    swift_allocError();
    *v23 = v10;
    *(v23 + 8) = v22;
    *(v23 + 16) = 0;
    swift_willThrow();
  }

  return a5;
}

void Array<A>.xor.getter(void *a1)
{
  v42 = a1[2];
  if (!v42)
  {
    lazy protocol witness table accessor for type XORError and conformance XORError();
    swift_allocError();
    *v7 = 0;
    *(v7 + 8) = 0;
    *(v7 + 16) = 1;
    swift_willThrow();
    return;
  }

  v3 = a1[4];
  v4 = a1[5];
  v5 = v4 >> 62;
  v40 = v3;
  v41 = v4;
  if ((v4 >> 62) > 1)
  {
    if (v5 != 2)
    {
      v6 = 0;
LABEL_14:
      v43 = specialized Data.init(count:)(v6);
      v44 = v10;
      specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(&v43, 0);
      v45 = v1;
      v11 = 0;
      v13 = v43;
      v12 = v44;
      v14 = a1 + 5;
      while (1)
      {
        v15 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        v16 = *(v14 - 1);
        v17 = *v14;
        v18 = v12 >> 62;
        if ((v12 >> 62) > 1)
        {
          if (v18 == 2)
          {
            v21 = *(v13 + 16);
            v20 = *(v13 + 24);
            v22 = __OFSUB__(v20, v21);
            v19 = v20 - v21;
            if (v22)
            {
              goto LABEL_64;
            }
          }

          else
          {
            v19 = 0;
          }
        }

        else if (v18)
        {
          if (__OFSUB__(HIDWORD(v13), v13))
          {
            goto LABEL_63;
          }

          v19 = HIDWORD(v13) - v13;
        }

        else
        {
          v19 = BYTE6(v12);
        }

        v23 = v17 >> 62;
        if ((v17 >> 62) > 1)
        {
          if (v23 == 2)
          {
            v25 = *(v16 + 16);
            v24 = *(v16 + 24);
            v22 = __OFSUB__(v24, v25);
            v26 = v24 - v25;
            if (v22)
            {
              goto LABEL_66;
            }

            if (v19 != v26)
            {
              goto LABEL_41;
            }
          }

          else if (v19)
          {
            goto LABEL_41;
          }
        }

        else if (v23)
        {
          if (__OFSUB__(HIDWORD(v16), v16))
          {
            goto LABEL_65;
          }

          if (v19 != HIDWORD(v16) - v16)
          {
LABEL_41:
            if (v18 > 1)
            {
              if (v18 != 2)
              {
                v32 = 0;
                if (v23 > 1)
                {
                  goto LABEL_44;
                }

                goto LABEL_51;
              }

              v38 = *(v13 + 16);
              v37 = *(v13 + 24);
              v32 = v37 - v38;
              if (__OFSUB__(v37, v38))
              {
                goto LABEL_68;
              }

              if (v23 <= 1)
              {
                goto LABEL_51;
              }
            }

            else
            {
              if (!v18)
              {
                v32 = BYTE6(v12);
                if (v23 > 1)
                {
                  goto LABEL_44;
                }

LABEL_51:
                if (v23)
                {
                  if (__OFSUB__(HIDWORD(v16), v16))
                  {
                    goto LABEL_71;
                  }

                  v36 = v13;
                  v35 = HIDWORD(v16) - v16;
                }

                else
                {
                  v36 = v13;
                  v35 = BYTE6(v17);
                }

LABEL_61:
                lazy protocol witness table accessor for type XORError and conformance XORError();
                swift_allocError();
                *v39 = v32;
                *(v39 + 8) = v35;
                *(v39 + 16) = 0;
                swift_willThrow();
                outlined consume of Data._Representation(v40, v41);
                outlined consume of Data._Representation(v36, v12);
                return;
              }

              if (__OFSUB__(HIDWORD(v13), v13))
              {
                goto LABEL_69;
              }

              v32 = HIDWORD(v13) - v13;
              if (v23 <= 1)
              {
                goto LABEL_51;
              }
            }

LABEL_44:
            if (v23 == 2)
            {
              v34 = *(v16 + 16);
              v33 = *(v16 + 24);
              v35 = v33 - v34;
              if (__OFSUB__(v33, v34))
              {
                goto LABEL_70;
              }

              v36 = v13;
            }

            else
            {
              v36 = v13;
              v35 = 0;
            }

            goto LABEL_61;
          }
        }

        else if (v19 != BYTE6(v17))
        {
          goto LABEL_41;
        }

        outlined copy of Data._Representation(*(v14 - 1), *v14);
        v27 = v45;
        v28 = Data.xor(_:)(v16, v17, v13, v12);
        v45 = v27;
        if (v27)
        {
          outlined consume of Data._Representation(v16, v17);
          outlined consume of Data._Representation(v40, v41);
          outlined consume of Data._Representation(v13, v12);
          return;
        }

        v30 = v28;
        v31 = v29;
        v14 += 2;
        outlined consume of Data._Representation(v13, v12);
        outlined consume of Data._Representation(v16, v17);
        ++v11;
        v12 = v31;
        v13 = v30;
        if (v15 == v42)
        {
          outlined consume of Data._Representation(v40, v41);
          return;
        }
      }

      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    v9 = *(v3 + 16);
    v8 = *(v3 + 24);
    v6 = v8 - v9;
    if (!__OFSUB__(v8, v9))
    {
LABEL_12:
      outlined copy of Data._Representation(v3, v4);
      goto LABEL_14;
    }

    __break(1u);
  }

  else if (!v5)
  {
    v6 = BYTE6(v4);
    goto LABEL_14;
  }

  if (!__OFSUB__(HIDWORD(v3), v3))
  {
    v6 = HIDWORD(v3) - v3;
    goto LABEL_12;
  }

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
}