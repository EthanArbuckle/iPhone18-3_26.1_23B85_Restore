uint64_t DPFOneBlockSparse.evalAll(nonce:aggId:initialSeed:initialCtrlBit:obsPublicShare:output:startIndex:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t *a7, Swift::Int a8)
{
  v102 = a7;
  v87 = a6;
  v99 = a5;
  v88 = a2;
  v94 = a1;
  v89 = *v8;
  v12 = *(v89 + 80);
  v105 = *(v12 - 8);
  v13 = *(v105 + 64);
  v14 = MEMORY[0x28223BE20](a1, a2);
  v101 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = v15;
  MEMORY[0x28223BE20](v14, v16);
  v104 = &v85 - v17;
  v96 = v8;
  v18 = v8[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF8EvalNodeVGMd, &_ss23_ContiguousArrayStorageCy4VDAF8EvalNodeVGMR);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_270C44540;
  *(v19 + 32) = 0;
  *(v19 + 40) = a3;
  *(v19 + 48) = a4;
  if (v18)
  {
    v20 = 1;
    v21 = v19;
    v95 = MEMORY[0x277D84F90];
    goto LABEL_5;
  }

  v20 = *(MEMORY[0x277D84F90] + 16);
  v95 = v19;
  if (v20)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_5:
    v22 = *(v89 + 184);
    v92 = v89 + 184;
    v98 = v22;
    v90 = v18 - 1;
    v23 = __OFSUB__(v18, 1);
    LODWORD(v91) = v23;

    v93 = -24;
    while (1)
    {
      v66 = *(v21 + 4);
      v65 = *(v21 + 5);
      v67 = v21[48];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v69 = v21;
      if (!isUniquelyReferenced_nonNull_native || (v20 - 1) > *(v21 + 3) >> 1)
      {
        v69 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v20, 1, v21);
      }

      v70 = v69;
      outlined destroy of EvalNode((v69 + 32));
      v71 = *(v70 + 2);
      memmove(v70 + 32, v70 + 56, v93 + 24 * v71);
      v72 = v70;
      *(v70 + 2) = v71 - 1;
      v73 = v97;
      v98(v106, v94, v66, v65, v67, v99);
      v97 = v73;
      if (v73)
      {
LABEL_57:

        goto LABEL_58;
      }

      v74 = v106[0];
      v75 = v106[1];
      v76 = v107;
      v47 = v108;
      v103 = v109;
      LODWORD(v100) = v110;

      if (v91)
      {
        break;
      }

      if (v66 >= v90)
      {
        v80 = v95;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v62 = v80;
        }

        else
        {
          v62 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v80 + 16) + 1, 1, v80);
        }

        v82 = *(v62 + 2);
        v81 = *(v62 + 3);
        v83 = v81 >> 1;
        v45 = v82 + 1;
        v21 = v72;
        if (v81 >> 1 <= v82)
        {
          v62 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v81 > 1), v82 + 1, 1, v62);
          v81 = *(v62 + 3);
          v83 = v81 >> 1;
        }

        *(v62 + 2) = v45;
        v84 = &v62[24 * v82];
        *(v84 + 4) = v74;
        *(v84 + 5) = v75;
        v84[48] = v76;
        v60 = v82 + 2;
        if (v83 < (v82 + 2))
        {
          v21 = v72;
          v62 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v81 > 1), v82 + 2, 1, v62);
        }

        v95 = v62;
        v49 = v103;
      }

      else
      {
        v21 = v72;
        v77 = *(v72 + 2);
        v59 = *(v72 + 3);
        v78 = v59 >> 1;
        v45 = v77 + 1;
        if (v59 >> 1 <= v77)
        {
          v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v77 + 1, 1, v72);
          v59 = *(v21 + 3);
          v78 = v59 >> 1;
        }

        v49 = v103;
        *(v21 + 2) = v45;
        v79 = &v21[24 * v77];
        *(v79 + 4) = v74;
        *(v79 + 5) = v75;
        v79[48] = v76;
        v60 = v77 + 2;
        if (v78 < (v77 + 2))
        {
LABEL_37:
          v62 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60, 1, v21);
          v21 = v62;
        }

        else
        {
          v62 = v21;
        }
      }

      v63 = v100;
      *(v62 + 2) = v60;
      v64 = &v62[24 * v45];
      *(v64 + 4) = v47;
      *(v64 + 5) = v49;
      v64[48] = v63;
      v20 = *(v21 + 2);
      if (!v20)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_60;
  }

  v21 = MEMORY[0x277D84F90];
LABEL_10:
  result = v95;
  v25 = *(v95 + 16);
  if (v25 != v96[6])
  {
    goto LABEL_61;
  }

  if (!v25)
  {
LABEL_58:
  }

  v26 = 0;
  v91 = v21;
  v92 = v95 + 32;
  v99 = v105 + 32;
  v100 = (v105 + 16);
  v98 = (v105 + 40);
  v90 = v25;
  while (v26 < *(result + 16))
  {
    v93 = v26;
    v27 = v92 + 24 * v26;
    v28 = *(v27 + 8);
    v29 = *(v27 + 16);
    v30 = *(*v96 + 192);
    swift_bridgeObjectRetain_n();
    v21 = v97;
    v31 = v30(v28, v94);
    v97 = v21;
    if (v21)
    {

      return swift_bridgeObjectRelease_n();
    }

    v32 = v31;
    v33 = swift_bridgeObjectRelease_n();
    v106[0] = v32;
    if (v29)
    {
      v35 = type metadata accessor for Array();
      v21 = v97;
      v33 = Array<A>.elementwiseAdd(_:)(v87, v35, *(v89 + 96));
      v32 = v106[0];
      v97 = v21;
      if (v21)
      {
        goto LABEL_57;
      }
    }

    if (v88 == 1)
    {
      v111 = v32;
      MEMORY[0x28223BE20](v33, v34);
      *(&v85 - 4) = v12;
      v36 = v89;
      *(&v85 - 3) = *(v89 + 88);
      *(&v85 - 1) = *(v36 + 104);
      v37 = type metadata accessor for Array();
      WitnessTable = swift_getWitnessTable();
      v21 = v97;
      v40 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in DPFOneBlockSparse.evalAll(nonce:aggId:initialSeed:initialCtrlBit:obsPublicShare:output:startIndex:), (&v85 - 6), v37, v12, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v39);
      v97 = v21;

      v106[0] = v40;
      v32 = v40;
    }

    if (MEMORY[0x2743B2860](v32, v12))
    {
      v41 = 0;
      while (1)
      {
        IsNativeType = Array._hoistableIsNativeTypeChecked()();
        Array._checkSubscript(_:wasNativeTypeChecked:)();
        if (IsNativeType)
        {
          (*(v105 + 16))(v104, v32 + ((*(v105 + 80) + 32) & ~*(v105 + 80)) + *(v105 + 72) * v41, v12);
          v43 = (v41 + 1);
          if (__OFADD__(v41, 1))
          {
            goto LABEL_32;
          }
        }

        else
        {
          result = _ArrayBuffer._getElementSlowPath(_:)();
          if (v86 != 8)
          {
            goto LABEL_62;
          }

          v111 = result;
          (*v100)(v104, &v111, v12);
          swift_unknownObjectRelease();
          v43 = (v41 + 1);
          if (__OFADD__(v41, 1))
          {
LABEL_32:
            __break(1u);
            goto LABEL_58;
          }
        }

        v103 = v43;
        v44 = v32;
        v45 = a8;
        v46 = v105;
        v47 = v101;
        (*(v105 + 32))(v101, v104, v12);
        v48 = type metadata accessor for Array();
        v49 = v102;
        Array._makeMutableAndUnique()();
        v50 = *v49;
        Array._checkSubscript_mutating(_:)(v45);
        isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
        v52 = v50 & 0xFFFFFFFFFFFFFF8;
        if ((isClassOrObjCExistentialType & 1) == 0)
        {
          v52 = v50;
        }

        v53 = v52 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v45;
        v54 = *(v46 + 40);
        a8 = v45;
        v54(v53, v47, v12);
        destructiveProjectEnumData for SeedCtrlUnadjustedError(v48, v55, v56, v57, v58);
        v60 = v45 + 1;
        if (__OFADD__(v45, 1))
        {
          break;
        }

        v32 = v44;
        v61 = MEMORY[0x2743B2860](v44, v12);
        a8 = v45 + 1;
        ++v41;
        if (v103 == v61)
        {
          a8 = v45 + 1;
          goto LABEL_13;
        }
      }

      __break(1u);
      goto LABEL_37;
    }

LABEL_13:
    v26 = v93 + 1;

    result = v95;
    if (v26 == v90)
    {
      goto LABEL_58;
    }
  }

LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
  return result;
}

uint64_t closure #1 in DPFOneBlockSparse.gen(leafParent:nonce:seedParty0:seedParty1:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1, a2);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = v17 - v12;
  v15 = *(v14 + 8);
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  (*(v6 + 16))(v10, v13, a2);
  FieldElement.init(other:)(v10, a2, a4);
  dispatch thunk of static AdditiveArithmetic.-= infix(_:_:)();
  return (*(v6 + 8))(v13, a2);
}

uint64_t DPFOneBlockSparse.evalNextChildren(nonce:node:internalCwList:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *v7;
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  v10 = a2;
  v8 = a6;
  if (*(a5 + 16) <= a2)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v11 = a4;
  v15 = a5 + 16 * a2;
  v9 = *(v15 + 32);
  v40 = *(v15 + 41);
  v41 = *(v15 + 40);
  v16 = *(v12 + 88);
  v17 = *(v7 + 2);
  v18 = *(v12 + 104);

  v20 = Seed.extend<A>(xof:nonce:domainSeparationTag:)(v19, a1, v17, a3, v16, v18);
  v7 = v20;
  v6 = v21;
  if ((v11 & 1) == 0)
  {

    goto LABEL_16;
  }

  if (!*(v20 + 16))
  {
    goto LABEL_30;
  }

  v22 = *(*(v20 + 32) + 16);
  v23 = *(v9 + 16);
  if (v22 != v23)
  {
    lazy protocol witness table accessor for type XORError and conformance XORError();
    swift_allocError();
    *v39 = v22;
LABEL_23:
    *(v39 + 8) = v23;
    *(v39 + 16) = 0;
    swift_willThrow();
  }

  v11 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySays5UInt8VGAJG_AIs5NeverOTg5018_sxxxIgnnr_x_xtxs5g40OIegnrzr_s17FixedWidthIntegerRzSURzlTRs5f25V_TG5012_sSa4VDAFs17bcd34pQ44E3xorySayxGADKFxx_xtXEfU_s5E5V_TG5Tf3nnnpf_nTf1cn_n(v24, v9);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_31;
  }

  if (!*(v7 + 2))
  {
    goto LABEL_32;
  }

LABEL_8:
  v25 = *(v7 + 4);
  *(v7 + 4) = v11;

  if (*(v6 + 16))
  {
    LOBYTE(v11) = *(v6 + 32);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_10;
  }

  while (1)
  {
    __break(1u);
LABEL_34:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
    v6 = result;
LABEL_10:
    *(v6 + 32) = v41 ^ v11;
    if (*(v7 + 2) < 2uLL)
    {
      break;
    }

    v11 = *(v7 + 5);
    v27 = *(v11 + 16);
    v23 = *(v9 + 16);
    if (v27 != v23)
    {
      lazy protocol witness table accessor for type XORError and conformance XORError();
      swift_allocError();
      *v39 = v27;
      goto LABEL_23;
    }

    v28 = *(v7 + 5);

    v30 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySays5UInt8VGAJG_AIs5NeverOTg5018_sxxxIgnnr_x_xtxs5g40OIegnrzr_s17FixedWidthIntegerRzSURzlTRs5f25V_TG5012_sSa4VDAFs17bcd34pQ44E3xorySayxGADKFxx_xtXEfU_s5E5V_TG5Tf3nnnpf_nTf1cn_n(v29, v9);

    if (*(v7 + 2) < 2uLL)
    {
      goto LABEL_36;
    }

    v31 = *(v7 + 5);
    *(v7 + 5) = v30;

    if (*(v6 + 16) < 2uLL)
    {
      goto LABEL_37;
    }

    *(v6 + 33) = (v40 ^ *(v6 + 33)) & 1;
LABEL_16:
    v32 = *(v7 + 2);
    if (!v32)
    {
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v33 = *(v6 + 16);
    if (!v33)
    {
      goto LABEL_27;
    }

    if (v32 == 1)
    {
      goto LABEL_28;
    }

    if (v33 != 1)
    {
      v34 = v10 + 1;
      v35 = *(v6 + 32);
      v36 = *(v7 + 4);
      v37 = *(v7 + 5);
      v38 = *(v6 + 33);

      *v8 = v34;
      *(v8 + 8) = v36;
      *(v8 + 16) = v35;
      *(v8 + 24) = v34;
      *(v8 + 32) = v37;
      *(v8 + 40) = v38;
      return result;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
    if (*(v7 + 2))
    {
      goto LABEL_8;
    }

LABEL_32:
    __break(1u);
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t DPFOneBlockSparse.computeLeafLevel(seed:nonce:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 80);
  v8 = *(*v2 + 96);
  result = (*(v8 + 64))(v7, v8);
  v10 = v2[5];
  if ((result * v10) >> 64 == (result * v10) >> 63)
  {
    v11 = *(v6 + 88);
    v12 = v3[3];
    v13 = *(v6 + 104);
    v14 = static BatchedExtendableOutputFunction.makeXOF(seed:domainSeparationTag:binder:generating:)(a1, v12, a2, (result * v10) >> 2, v11, v13);
    v15 = static FieldElement.randomVectorBatched<A>(count:using:)(v10, v14, v7, v11, v8, v13);
    swift_unknownObjectRelease();
    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t DPFOneBlockSparse.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t DPFOneBlockSparse.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t _s4VDAF16InnerCorrectionsV4from9parameterACx_AA0bC18DecodableParameterVSgtKcSkRzs5UInt8V7ElementRtzlufCs10ArraySliceVyAJG_Tt1B5(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v84 = *MEMORY[0x277D85DE8];
  if (a7)
  {
    swift_unknownObjectRelease();
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v11 = 0;
    v11[1] = 0;
LABEL_17:
    swift_willThrow();
    goto LABEL_18;
  }

  if (a5 <= 0)
  {
    v22 = a5;
    swift_unknownObjectRelease();
    lazy protocol witness table accessor for type PreambleError and conformance PreambleError();
    swift_allocError();
    *(v23 + 8) = 0;
    *(v23 + 16) = 0;
    *v23 = v22;
    *(v23 + 24) = 2;
    goto LABEL_17;
  }

  if (a6 <= 0)
  {
    swift_unknownObjectRelease();
    lazy protocol witness table accessor for type PreambleError and conformance PreambleError();
    swift_allocError();
    *(v24 + 8) = 0;
    *(v24 + 16) = 0;
    *v24 = a6;
    *(v24 + 24) = 1;
    goto LABEL_17;
  }

  v13 = a6 * a5;
  if ((a6 * a5) >> 64 != (a6 * a5) >> 63)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (a5 + 0x4000000000000000 < 0)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v14 = 2 * a5 + 7;
  if (__OFADD__(2 * a5, 7))
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v15 = a5 * (v14 >> 3);
  if ((a5 * (v14 >> 3)) >> 64 != v15 >> 63)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v16 = v13 + v15;
  if (__OFADD__(v13, v15))
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v17 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (v16 != v17)
  {
    _StringGuts.grow(_:)(31);

    v81[0] = 0xD000000000000022;
    v81[1] = 0x8000000270C53020;
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v25);

    MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
    swift_unknownObjectRelease();
    *__dst = v17;
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v26);

    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v27 = 0xD000000000000022;
    v27[1] = 0x8000000270C53020;
    goto LABEL_17;
  }

  v66 = a5 * (v14 >> 3);
  v67 = v14 >> 3;
  v68 = v7;
  v18 = MEMORY[0x277D84F90];
  v8 = a1;
  v77 = a5;
  if ((a4 & 1) == 0)
  {
    goto LABEL_13;
  }

  v75 = a2;
  v9 = a3;
  v10 = a4;
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v30 = swift_dynamicCastClass();
  if (!v30)
  {
    swift_unknownObjectRelease();
    v30 = MEMORY[0x277D84F90];
  }

  v31 = *(v30 + 16);

  if (v31 != v16)
  {
LABEL_59:
    swift_unknownObjectRelease();
    a1 = v8;
    a4 = v10;
    a3 = v9;
    a2 = v75;
    a5 = v77;
    v18 = MEMORY[0x277D84F90];
LABEL_13:
    v19 = a5;
    specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a3, a4);
    v21 = v20;
    goto LABEL_24;
  }

  v21 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v19 = v77;
  v18 = MEMORY[0x277D84F90];
  if (v21)
  {
    goto LABEL_25;
  }

  v21 = MEMORY[0x277D84F90];
LABEL_24:
  swift_unknownObjectRelease();
LABEL_25:
  v32 = (2 * *(v21 + 16)) | 1;
  v33 = specialized Collection.prefix(_:)(v13, v21, v21 + 32, 0, v32);
  v71 = v34;
  v75 = v35;
  v10 = v36;
  v37 = specialized Collection.dropFirst(_:)(v13, v21, v21 + 32, 0, v32);
  v64 = v38;
  v65 = v37;
  v62 = v40;
  v63 = v39;
  v80 = v18;

  v13 = &v80;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19, 0);
  v41 = 0;
  v70 = v10 & 1;
  v9 = v80;
  v73 = v10 >> 1;
  do
  {
    v8 = v41 * a6;
    if ((v41 * a6) >> 64 != (v41 * a6) >> 63)
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
      __break(1u);
      goto LABEL_53;
    }

    v42 = v8 + a6;
    if (__OFADD__(v8, a6))
    {
      goto LABEL_47;
    }

    if (v42 < v8)
    {
      goto LABEL_48;
    }

    if (v8 < v75)
    {
      goto LABEL_49;
    }

    if (v73 < v42)
    {
      goto LABEL_50;
    }

    if (v42 < 0)
    {
      goto LABEL_51;
    }

    v43 = v70 | (2 * v42);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10ArraySliceVys5UInt8VGMd, "xq");
    v81[3] = v13;
    v81[4] = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type ArraySlice<UInt8> and conformance <A> ArraySlice<A>, &_ss10ArraySliceVys5UInt8VGMd, "xq");
    v44 = swift_allocObject();
    v81[0] = v44;
    v44[2] = v33;
    v44[3] = v71;
    v44[4] = v8;
    v44[5] = v43;
    v45 = __swift_project_boxed_opaque_existential_1(v81, v13);
    v8 = v45[2];
    v46 = v45[3] >> 1;
    v10 = v46 - v8;
    if (__OFSUB__(v46, v8))
    {
      goto LABEL_52;
    }

    if (v10)
    {
      v47 = v45[1];
      if (v10 <= 14)
      {
        memset(__dst, 0, sizeof(__dst));
        v79 = v46 - v8;
        memcpy(__dst, (v47 + v8), v46 - v8);
        v52 = *__dst;
        v53 = v69 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v79 << 16)) << 32);
        swift_unknownObjectRetain();
        v69 = v53;
      }

      else
      {
        v48 = type metadata accessor for __DataStorage();
        v49 = *(v48 + 48);
        v50 = *(v48 + 52);
        swift_allocObject();
        swift_unknownObjectRetain();
        v51 = __DataStorage.init(bytes:length:)();
        v13 = v51;
        if (v10 >= 0x7FFFFFFF)
        {
          type metadata accessor for Data.RangeReference();
          v52 = swift_allocObject();
          *(v52 + 16) = 0;
          *(v52 + 24) = v10;
          v53 = v13 | 0x8000000000000000;
        }

        else
        {
          v52 = v10 << 32;
          v53 = v51 | 0x4000000000000000;
        }
      }
    }

    else
    {
      swift_unknownObjectRetain();
      v52 = 0;
      v53 = 0xC000000000000000;
    }

    __swift_destroy_boxed_opaque_existential_1(v81);
    v80 = v9;
    v55 = *(v9 + 16);
    v54 = *(v9 + 24);
    v10 = v55 + 1;
    if (v55 >= v54 >> 1)
    {
      v13 = &v80;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1);
      v9 = v80;
    }

    ++v41;
    *(v9 + 16) = v10;
    v56 = v9 + 16 * v55;
    *(v56 + 32) = v52;
    *(v56 + 40) = v53;
  }

  while (v77 != v41);
  v57 = specialized Collection.prefix(_:)(v66, v65, v64, v63, v62);
  v74 = v58;
  v76 = v57;
  v72 = v59;
  v61 = v60;
  specialized Collection.dropFirst(_:)(v66, v65, v64, v63, v62);
  v82[0] = v77;
  v82[1] = 0;
  v82[2] = v77;
  v82[3] = v67;
  v83 = 0;
  swift_unknownObjectRetain();
  _sSa4VDAFAA13VDAFDecodableRzlE4from9parameterSayxGqd___18DecodableParameterQzSg07elementF0_Si5countSi0G13EncodedLengthtSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA8BitMasksC_s10ArraySliceVyANGTt1g5(v76, v74, v72, v61, v82);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v68)
  {
  }

LABEL_18:
  v28 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t specialized closure #1 in Array<A>.init<A>(from:parameter:)@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X4>, uint64_t *a5@<X8>)
{
  v27 = *a3;
  v26 = *(a3 + 8);
  v8 = *a1;
  v7 = a1[1];
  v9 = a1[2];
  v10 = a1[3];
  v11 = specialized Collection.prefix(_:)(a2, *a1, v7, v9, v10);
  v13 = v12;
  v15 = v14;
  v25 = v16;
  *a1 = specialized Collection.dropFirst(_:)(a2, v8, v7, v9, v10);
  a1[1] = v17;
  a1[2] = v18;
  a1[3] = v19;
  type metadata accessor for BitMasks();
  swift_unknownObjectRetain();
  v20 = specialized BitMasks.__allocating_init<A>(from:parameter:)(v11, v13, v15, v25, v27, v26);
  if (v28)
  {
    result = swift_unknownObjectRelease();
    *a4 = v28;
  }

  else
  {
    v22 = v20;
    result = swift_unknownObjectRelease();
    *a5 = v22;
  }

  return result;
}

{
  v26 = *(a3 + 8);
  v27 = *a3;
  v25 = *(a3 + 16);
  v8 = *a1;
  v7 = a1[1];
  v9 = a1[2];
  v10 = a1[3];
  v11 = specialized Collection.prefix(_:)(a2, *a1, v7, v9, v10);
  v13 = v12;
  v15 = v14;
  v24 = v16;
  *a1 = specialized Collection.dropFirst(_:)(a2, v8, v7, v9, v10);
  a1[1] = v17;
  a1[2] = v18;
  a1[3] = v19;
  swift_unknownObjectRetain();
  result = _s4VDAF16InnerCorrectionsV4from9parameterACx_AA0bC18DecodableParameterVSgtKcSkRzs5UInt8V7ElementRtzlufCs10ArraySliceVyAJG_Tt1B5(v11, v13, v15, v24, v27, v26, v25);
  if (v28)
  {
    *a4 = v28;
  }

  else
  {
    *a5 = result;
    a5[1] = v21;
  }

  return result;
}

{
  v27 = *(a3 + 8);
  v28 = *a3;
  v26 = *(a3 + 16);
  v25 = *(a3 + 24);
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v10 = a1[3];
  v11 = specialized Collection.prefix(_:)(a2, *a1, v8, v9, v10);
  v13 = v12;
  v15 = v14;
  v24 = v16;
  *a1 = specialized Collection.dropFirst(_:)(a2, v7, v8, v9, v10);
  a1[1] = v17;
  a1[2] = v18;
  a1[3] = v19;
  swift_unknownObjectRetain();
  result = _s4VDAF25OneBlockSparsePublicShareV4from9parameterACyxGqd___AA0bcdeF18DecodableParameterVyxGSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field32V_s10ArraySliceVyALGTt1B5(v11, v13, v15, v24, v28, v27, v26, v25);
  if (v29)
  {
    *a4 = v29;
  }

  else
  {
    *a5 = result;
    a5[1] = v21;
  }

  return result;
}

uint64_t specialized closure #1 in BitMasks.init<A>(from:parameter:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized closure #1 in BitMasks.init<A>(from:parameter:)(*a1, *(a2 + 8), *(a2 + 16), *(a2 + 24));
  if (!v3)
  {
    *a3 = result & 1;
  }

  return result;
}

uint64_t specialized closure #2 in BitMasks.init<A>(from:parameter:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  result = specialized closure #2 in BitMasks.init<A>(from:parameter:)(*a1, a2, *(a3 + 8), *(a3 + 16), *(a3 + 24));
  if (!v4)
  {
    *a4 = result & 1;
  }

  return result;
}

uint64_t specialized closure #1 in Array<A>.init<A>(from:parameter:)@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X4>, uint64_t a5@<X8>)
{
  v26 = *a3;
  v25 = *(a3 + 8);
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v10 = a1[3];
  v11 = specialized Collection.prefix(_:)(a2, *a1, v8, v9, v10);
  v13 = v12;
  v15 = v14;
  v24 = v16;
  *a1 = specialized Collection.dropFirst(_:)(a2, v7, v8, v9, v10);
  a1[1] = v17;
  a1[2] = v18;
  a1[3] = v19;
  swift_unknownObjectRetain();
  result = _s4VDAF29OneBlockSparseInnerCorrectionV4from9parameterACx_AA0bcdeF18DecodableParameterVSgtKcSkRzs5UInt8V7ElementRtzlufCs10ArraySliceVyAJG_Tt1g5(v11, v13, v15, v24, v26, v25);
  if (v27)
  {
    *a4 = v27;
  }

  else
  {
    *a5 = result;
    *(a5 + 8) = v21 & 1;
    *(a5 + 9) = HIBYTE(v21) & 1;
  }

  return result;
}

char *specialized closure #1 in Array<A>.init<A>(from:parameter:)@<X0>(void *a1@<X1>, uint64_t a2@<X2>, void *a3@<X4>, char **a4@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v10 = specialized Collection.prefix(_:)(a2, *a1, v7, v8, v9);
  v12 = v11;
  v14 = v13;
  v22 = v15;
  *a1 = specialized Collection.dropFirst(_:)(a2, v6, v7, v8, v9);
  a1[1] = v16;
  a1[2] = v17;
  a1[3] = v18;
  swift_unknownObjectRetain();
  result = _sSa4VDAFAA12FieldElementRzlE4fromSayxGqd___tKcSkRd__s5UInt8V0C0Rtd__lufCAA7Field32V_s10ArraySliceVyAFGTt0g5(v10, v12, v14, v22);
  if (v23)
  {
    *a3 = v23;
  }

  else
  {
    *a4 = result;
  }

  return result;
}

void *specialized closure #1 in Array<A>.init<A>(from:parameter:)@<X0>(void *a1@<X1>, uint64_t a2@<X2>, void *a3@<X4>, void *(*a4)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X5>, void *a5@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  v10 = a1[2];
  v9 = a1[3];
  v11 = specialized Collection.prefix(_:)(a2, *a1, v8, v10, v9);
  v13 = v12;
  v15 = v14;
  v23 = v16;
  *a1 = specialized Collection.dropFirst(_:)(a2, v7, v8, v10, v9);
  a1[1] = v17;
  a1[2] = v18;
  a1[3] = v19;
  swift_unknownObjectRetain();
  result = a4(&v26, v11, v13, v15, v23, -1);
  if (v24)
  {
    *a3 = v24;
  }

  else
  {
    *a5 = v26;
  }

  return result;
}

void specialized closure #1 in Array<A>.init<A>(from:parameter:)(void *a1@<X1>, uint64_t a2@<X2>, void *a3@<X4>, _DWORD *a4@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  specialized Collection.prefix(_:)(a2, *a1, v7, v8, v9);
  v11 = v10;
  v13 = v12;
  v20 = v14;
  *a1 = specialized Collection.dropFirst(_:)(a2, v6, v7, v8, v9);
  a1[1] = v15;
  a1[2] = v16;
  a1[3] = v17;
  swift_unknownObjectRetain();
  _s4VDAF12FieldElementPAAE5bytes4maskxqd___06FiniteB0_11IntegerTypeQZtKcSkRd__s5UInt8V0C0Rtd__lufCAA7Field32V_s10ArraySliceVyAJGTt2g5(v11, v13, v20, 0xFFFFFFFF, &v22);
  if (v21)
  {
    *a3 = v21;
  }

  else
  {
    *a4 = v22;
  }
}

uint64_t specialized static OneBlockSparseInnerCorrection.== infix(_:_:)(uint64_t result, __int16 a2, uint64_t a3, __int16 a4)
{
  v4 = *(result + 16);
  if (v4 != *(a3 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v5 = result == a3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
LABEL_10:
    if ((a2 ^ a4))
    {
      return 0;
    }

    else
    {
      return ((a4 & 0x100) == 0) ^ ((a2 & 0x100) >> 8);
    }
  }

  else
  {
    v6 = (result + 32);
    v7 = (a3 + 32);
    while (v4)
    {
      if (*v6 != *v7)
      {
        return 0;
      }

      ++v6;
      ++v7;
      if (!--v4)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for OneBlockSparseInnerCorrection(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 10))
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

uint64_t storeEnumTagSinglePayload for OneBlockSparseInnerCorrection(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 10) = 1;
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

    *(result + 10) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata instantiation function for OneBlockSparsePublicShare()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for OneBlockSparsePublicShareDecodableParameter()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for EvalNode(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for EvalNode(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t partial apply for specialized closure #1 in Array<A>.init<A>(from:parameter:)@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  return specialized closure #1 in Array<A>.init<A>(from:parameter:)(*(v2 + 16), *(v2 + 24), *(v2 + 32), a1, a2);
}

{
  return specialized closure #1 in Array<A>.init<A>(from:parameter:)(*(v2 + 16), *(v2 + 24), *(v2 + 32), a1, a2);
}

{
  return specialized closure #1 in Array<A>.init<A>(from:parameter:)(*(v2 + 16), *(v2 + 24), *(v2 + 32), a1, a2);
}

uint64_t specialized decodeInteger<A, B>(from:encodedLength:)(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (__OFSUB__(a3 >> 1, a2))
  {
    goto LABEL_25;
  }

  if ((a3 >> 1) - a2 != a4)
  {
    _StringGuts.grow(_:)(39);

    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v11);

    MEMORY[0x2743B25F0](0x3D746F67202CLL, 0xE600000000000000);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v12);

    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v13 = 0xD00000000000001DLL;
    v13[1] = 0x8000000270C52390;
    return swift_willThrow();
  }

  if ((a4 & 0x8000000000000000) != 0)
  {
    goto LABEL_26;
  }

  if (!a4)
  {
    return 0;
  }

  v4 = result;
  v5 = 0;
  v6 = 0;
  result = 0;
  v7 = 1;
  while (a2 < (a3 >> 1) && v7 - 1 < a4)
  {
    if (v5 <= -65 || v5 > 64)
    {
      goto LABEL_14;
    }

    v8 = *(v4 + a2);
    if (v5 < 0)
    {
      if (v6 == 64)
      {
        goto LABEL_14;
      }

      v9 = v8 >> (v6 & 0x38);
      goto LABEL_13;
    }

    if (v6 != -64)
    {
      v9 = v8 << (v5 & 0x38);
LABEL_13:
      result |= v9;
    }

LABEL_14:
    if (a4 == v7)
    {
      return result;
    }

    ++a2;
    v6 -= 8;
    v5 += 8;
    if (__OFADD__(v7++, 1))
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t specialized decodeInteger<A, B>(from:encodedLength:)(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (__OFSUB__(a3 >> 1, a2))
  {
    goto LABEL_25;
  }

  if ((a3 >> 1) - a2 != a4)
  {
    _StringGuts.grow(_:)(39);

    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v12);

    MEMORY[0x2743B25F0](0x3D746F67202CLL, 0xE600000000000000);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v13);

    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v14 = 0xD00000000000001DLL;
    v14[1] = 0x8000000270C52390;
    return swift_willThrow();
  }

  if (a4 < 0)
  {
    goto LABEL_26;
  }

  if (!a4)
  {
    return 0;
  }

  v4 = result;
  v5 = 0;
  v6 = 0;
  result = 0;
  v7 = 1;
  v8 = a2;
  while (v8 >= a2 && v8 < (a3 >> 1))
  {
    if (v5 < -32 || v5 > 32)
    {
      goto LABEL_14;
    }

    v9 = *(v4 + v8);
    if (v5 < 0)
    {
      if (v5 == -32)
      {
        goto LABEL_14;
      }

      v10 = v9 >> (v6 & 0x18);
      goto LABEL_13;
    }

    if (v5 != 32)
    {
      v10 = v9 << (v5 & 0x18);
LABEL_13:
      result = v10 | result;
    }

LABEL_14:
    if (a4 == v7)
    {
      return result;
    }

    ++v8;
    v6 -= 8;
    v5 += 8;
    if (__OFADD__(a2, v7++))
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t specialized BitMasks.__allocating_init<A>(from:parameter:)(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6)
{
  v26[0] = result;
  v26[1] = a2;
  v26[2] = a3;
  v26[3] = a4;
  if (a6)
  {
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v6 = 0;
    v6[1] = 0;
    return swift_willThrow();
  }

  if (a5 <= 0)
  {
    lazy protocol witness table accessor for type PreambleError and conformance PreambleError();
    swift_allocError();
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *v14 = a5;
    *(v14 + 24) = 2;
    return swift_willThrow();
  }

  if (a5 + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (__OFADD__(2 * a5, 7))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = (a4 >> 1) - a3;
  if (!__OFSUB__(a4 >> 1, a3))
  {
    if (v7 == (2 * a5 + 7) >> 3)
    {
      MEMORY[0x28223BE20](result, a2);
      v22 = v26;
      v9 = v8;
      v10 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_Sbs5NeverOTg5(partial apply for specialized closure #1 in BitMasks.init<A>(from:parameter:), v21, 0, v8);
      MEMORY[0x28223BE20](v10, v11);
      v22 = v9;
      v23 = v26;
      v12 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_Sbs5NeverOTg5(partial apply for specialized closure #2 in BitMasks.init<A>(from:parameter:), v21, 0, v9);
      result = swift_allocObject();
      *(result + 16) = v10;
      *(result + 24) = v12;
      return result;
    }

    _StringGuts.grow(_:)(24);
    v15 = _typeName(_:qualified:)();
    v17 = v16;

    v25 = v17;
    MEMORY[0x2743B25F0](0x6572697571657220, 0xEB00000000203A64);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v18);

    MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
    v24 = v7;
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v19);

    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v20 = v15;
    v20[1] = v17;
    return swift_willThrow();
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t specialized closure #1 in BitMasks.init<A>(from:parameter:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a1 / 8;
  v5 = a3 + a1 / 8;
  if (__OFADD__(a3, a1 / 8))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return (v5 << -v4) & 1;
  }

  if (v5 < a3 || v5 >= (a4 >> 1))
  {
    goto LABEL_10;
  }

  LODWORD(v5) = *(a2 + v5);
  v4 = a1 % 8;
  if (a1 % 8 >= 0)
  {
    return (v5 >> v4) & 1;
  }

  return (v5 << -v4) & 1;
}

uint64_t specialized closure #2 in BitMasks.init<A>(from:parameter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = a1 + a2;
  if (__OFADD__(a1, a2))
  {
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    return (v5 << -v6) & 1;
  }

  v7 = v6 + 7;
  if (v6 >= 0)
  {
    v7 = a1 + a2;
  }

  v8 = v7 >> 3;
  v5 = a4 + v8;
  if (__OFADD__(a4, v8))
  {
    goto LABEL_13;
  }

  if (v5 < a4 || v5 >= (a5 >> 1))
  {
    goto LABEL_14;
  }

  LODWORD(v5) = *(a3 + v5);
  v6 -= 8 * v8;
  if (v6 >= 0)
  {
    return (v5 >> v6) & 1;
  }

  return (v5 << -v6) & 1;
}

void *partial apply for specialized closure #1 in Array<A>.init<A>(from:parameter:)@<X0>(void *a1@<X1>, void *a2@<X8>)
{
  v3 = *(v2 + 32);
  return specialized closure #1 in Array<A>.init<A>(from:parameter:)(*(v2 + 16), *(v2 + 24), a1, _s4VDAF12FieldElementPAAE5bytes4maskxqd___06FiniteB0_11IntegerTypeQZtKcSkRd__s5UInt8V0C0Rtd__lufCAA7Field64V_s10ArraySliceVyAJGTt2g5, a2);
}

{
  v3 = *(v2 + 32);
  return specialized closure #1 in Array<A>.init<A>(from:parameter:)(*(v2 + 16), *(v2 + 24), a1, _s4VDAF12FieldElementPAAE5bytes4maskxqd___06FiniteB0_11IntegerTypeQZtKcSkRd__s5UInt8V0C0Rtd__lufCAA7Field40V_s10ArraySliceVyAJGTt2g5, a2);
}

{
  return partial apply for specialized closure #1 in Array<A>.init<A>(from:parameter:)(a1, a2);
}

{
  return partial apply for specialized closure #1 in Array<A>.init<A>(from:parameter:)(a1, a2);
}

void partial apply for specialized closure #1 in Array<A>.init<A>(from:parameter:)(void *a1@<X1>, _DWORD *a2@<X8>)
{
  v3 = *(v2 + 32);
  specialized closure #1 in Array<A>.init<A>(from:parameter:)(*(v2 + 16), *(v2 + 24), a1, a2);
}

{
  partial apply for specialized closure #1 in Array<A>.init<A>(from:parameter:)(a1, a2);
}

uint64_t PreambleKWay.superBlockSize.getter()
{
  v1 = v0[2];
  if (*v0 >= 0x40uLL)
  {
    v2 = 0;
  }

  else
  {
    v2 = 1 << *v0;
  }

  if (*v0 > 0x40uLL)
  {
    v2 = 0;
  }

  if (v1)
  {
    if (v2 != 0x8000000000000000 || v1 != -1)
    {
      return v2 / v1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void PreambleKWay.innerLevelCount.getter()
{
  if (*v0 >= 0x40uLL)
  {
    v1 = 0;
  }

  else
  {
    v1 = 1 << *v0;
  }

  if (*v0 > 0x40uLL)
  {
    v1 = 0;
  }

  v2 = log2(v1 / (v0[1] * v0[2]));
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
  }
}

uint64_t PreambleKWay.totalBlockCount.getter()
{
  v1 = v0[1];
  if (*v0 >= 0x40uLL)
  {
    v2 = 0;
  }

  else
  {
    v2 = 1 << *v0;
  }

  if (*v0 > 0x40uLL)
  {
    v2 = 0;
  }

  if (v1)
  {
    if (v2 != 0x8000000000000000 || v1 != -1)
    {
      return v2 / v1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t PreambleKWay.init(dimensionBitCount:blockSize:keptBlockCount:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 1 || a2 < 1 || ((a2 + 0x7FFFFFFFFFFFFFFFLL) & a2) != 0 || result > 0x3F || 1 << result < a2 || a3 < 1 || (v4 = (1 << result) / a2, v4 < a3))
  {
    lazy protocol witness table accessor for type PreambleError and conformance PreambleError();
    swift_allocError();
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    *v5 = 0;
    v6 = 12;
LABEL_9:
    *(v5 + 24) = v6;
    return swift_willThrow();
  }

  if (v4 % a3)
  {
    lazy protocol witness table accessor for type PreambleError and conformance PreambleError();
    swift_allocError();
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    *v5 = a3;
    v6 = 2;
    goto LABEL_9;
  }

  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

void PreambleKWay.prepareInit(verifyKey:aggregatorID:nonce:publicShare:inputShare:parameter:)(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v76 = a5;
  v77 = a1;
  v11 = a9[2];
  v78 = *(v11 - 8);
  v12 = *(v78 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v14 = v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v15;
  v79 = *v17;
  v80 = v16;
  v19 = *v9;
  v18 = v9[1];
  v20 = v9[2];
  v86 = *v9;
  v87 = v18;
  v88 = v20;
  swift_getWitnessTable();
  VDAFProtocol.assertValidAggregatorID(_:)(a4);
  if (!v21)
  {
    v71 = v14;
    v74 = v18;
    v75 = v19;
    v72 = 0;
    v22 = a9[5];
    v73 = v11;
    v23 = type metadata accessor for OneBlockSparsePublicShare();
    v24 = MEMORY[0x2743B2830](v80, v23);
    v25 = *(v79 + 16);
    if (v24 != v25 || v24 != v20)
    {
      v27 = v24;
      lazy protocol witness table accessor for type PreambleError and conformance PreambleError();
      swift_allocError();
      *v28 = v27;
      *(v28 + 8) = v25;
      *(v28 + 16) = v20;
      *(v28 + 24) = 3;
LABEL_20:
      swift_willThrow();
      return;
    }

    if (a4 > 1)
    {
      v86 = 0;
      v87 = 0xE000000000000000;
      _StringGuts.grow(_:)(21);

      v86 = 0xD000000000000013;
      v87 = 0x8000000270C53200;
      *&v81 = a4;
      v62 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v62);

      v63 = v86;
      v64 = v87;
      lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
      swift_allocError();
      *v65 = v63;
      *(v65 + 8) = v64;
      *(v65 + 16) = 0;
      goto LABEL_20;
    }

    v66[0] = a4;
    v66[1] = v23;
    v29 = a9[4];
    v30 = a9[8];
    v31 = v73;
    v86 = v73;
    v87 = v29;
    v88 = v22;
    v89 = v30;
    v70 = type metadata accessor for DPFOneBlockSparse();
    v32 = v74;
    v86 = v75;
    v87 = v74;
    v33 = v75;
    v88 = v20;
    v69 = PreambleKWay.superBlockSize.getter();
    *&v81 = v33;
    *(&v81 + 1) = v32;
    v82 = v20;
    PreambleKWay.innerLevelCount.getter();
    v68 = v34;
    v35 = a9[3];
    v36 = a9[6];
    v37 = a9[7];
    v67 = static PreambleKWay.domainSeparationTagExtend.getter(v31, v35, v29, v22, v36, v37, v30);
    v38 = static PreambleKWay.domainSeparationTagConvert.getter(v31, v35, v29, v22, v36, v37, v30);
    v39 = v72;
    v40 = DPFOneBlockSparse.__allocating_init(superBlockSize:blockSize:innerLevelCount:domainSeparationTagExtend:domainSeparationTagConvert:)(v69, v32, v68, v67, v38);
    if (!v39)
    {
      v70 = v20;
      v72 = v40;
      v69 = v22;
      v41 = *(v22 + 8);
      v42 = v71;
      dispatch thunk of static AdditiveArithmetic.zero.getter();
      v43 = 1 << v75;
      if (v75 >= 0x40)
      {
        v43 = 0;
      }

      if (v75 <= 0x40)
      {
        v44 = v43;
      }

      else
      {
        v44 = 0;
      }

      v45 = specialized Array.init(repeating:count:)(v42, v44, v31);
      (*(v78 + 8))(v42, v31);
      v90 = v45;
      *&v81 = v79;
      *&v84 = v80;
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay4VDAF4SeedVGMd, &_sSay4VDAF4SeedVGMR);
      v47 = type metadata accessor for Array();
      v48 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [Seed] and conformance [A], &_sSay4VDAF4SeedVGMd, &_sSay4VDAF4SeedVGMR);
      WitnessTable = swift_getWitnessTable();
      zip<A, B>(_:_:)();
      v84 = v85;
      *&v81 = v46;
      *(&v81 + 1) = v47;
      v82 = v48;
      v83 = WitnessTable;
      v50 = type metadata accessor for Zip2Sequence();
      v51 = swift_getWitnessTable();
      MEMORY[0x2743B26D0](&v81, v50, v51);

      v85 = v81;
      type metadata accessor for EnumeratedSequence();
      EnumeratedSequence.makeIterator()();
      type metadata accessor for EnumeratedSequence.Iterator();
      EnumeratedSequence.Iterator.next()();
      v52 = *(&v81 + 1);
      if (*(&v81 + 1))
      {
        v53 = v81;
        v55 = v82;
        v54 = v83;
        v56 = v76;
        v57 = v66[0];
        while (1)
        {
          *&v81 = v75;
          *(&v81 + 1) = v74;
          v82 = v70;
          v58 = PreambleKWay.superBlockSize.getter();
          if ((v58 * v53) >> 64 != (v58 * v53) >> 63)
          {
            break;
          }

          (*(*v72 + 176))(v56, v57, v52, v57 == 1, v55, v54, &v90);

          EnumeratedSequence.Iterator.next()();
          v52 = *(&v81 + 1);
          v53 = v81;
          v55 = v82;
          v54 = v83;
          if (!*(&v81 + 1))
          {
            goto LABEL_18;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_18:

        v59 = v73;
        v60 = v69;
        OutputShare.init(_:)(v90, &v81);
        PreamblePrepareState.init(outputShare:)(&v81, &v86);
        v61 = v86;
        PreamblePrepareShare.init()(v59, v60);
        *v77 = v61;
      }
    }
  }
}

uint64_t PreambleKWay.prepareNext(state:message:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  *(a2 + 8) = 1;
}

uint64_t PreambleKWay.prepareState<A>(from:aggregatorID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a4 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 16);
  v14 = *(v12 + 40);
  v15 = type metadata accessor for PreamblePrepareState();
  (*(v8 + 16))(v11, a1, a4);
  return VDAFDecodable.init<A>(from:)(v11, v15, a4, &protocol witness table for PreamblePrepareState<A>, a5);
}

uint64_t PreambleKWay.prepareShare<A>(from:aggregatorID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a4 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 16);
  v14 = *(v12 + 40);
  v15 = type metadata accessor for PreamblePrepareShare();
  (*(v8 + 16))(v11, a1, a4);
  return VDAFDecodable.init<A>(from:)(v11, v15, a4, &protocol witness table for PreamblePrepareShare<A>, a5);
}

uint64_t PreambleKWay.prepareMessage<A>(from:aggregatorID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](a1, a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  return PreamblePrepareMessage.init<A>(from:parameter:)(v7, 1, a4);
}

uint64_t PreambleKWay.aggregate<A>(_:parameter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v24[2] = a1;
  v24[1] = a6;
  v10 = *(a3 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v6;
  v17 = *(v16 + 40);
  v18 = *(v17 + 8);
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v19 = 1 << v15;
  if (v15 >= 0x40)
  {
    v19 = 0;
  }

  if (v15 <= 0x40)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v21 = specialized Array.init(repeating:count:)(v14, v20, v10);
  (*(v11 + 8))(v14, v10);
  AggregateShare.init(_:)(v21, &v31);
  v24[6] = v10;
  v25 = *(a3 + 24);
  v26 = a4;
  v27 = v17;
  v28 = *(a3 + 48);
  v29 = *(a3 + 64);
  v30 = a5;
  type metadata accessor for AggregateShare();
  v22 = *(*(*(a5 + 8) + 8) + 8);
  return Sequence.reduce<A>(into:_:)();
}

uint64_t PreambleKWay.inputShare<A>(from:aggregatorID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v9 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1, a1);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  return PreambleKWayInputShare.init<A>(from:)(v11, *(a2 + 32), a3, *(*(a2 + 64) + 8), a4, a5);
}

uint64_t PreambleKWay.publicShare<A>(from:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v24 = a5;
  v25 = a4;
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v5[1];
  v14 = v5[2];
  v29 = *v5;
  v30 = v13;
  v31 = v14;
  PreambleKWay.innerLevelCount.getter();
  v16 = v15;
  v17 = a2[4];
  v18 = (*(*(a2[8] + 8) + 8))();
  v19 = a2[2];
  v20 = a2[5];
  PreambleKWayPublicShareDecodableParameter.init(innerLevelCount:keptBlockCount:seedSize:blockSize:)(v16, v14, v18, v13, &v26);
  v22 = v27;
  v23 = v26;
  (*(v9 + 16))(v12, a1, a3);
  v26 = v23;
  v27 = v22;
  v28 = 0;
  return PreambleKWayPublicShare.init<A>(from:parameter:)(v12, &v26, v19, a3);
}

uint64_t closure #2 in PreambleKWay.unshard<A>(_:numOfMeasurements:parameter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v26 = a6;
  v27 = a8;
  v24 = a4;
  v25 = a5;
  v28 = a9;
  v29 = a2;
  v14 = *(a3 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](a1, a2);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v16;
  v21 = *(v20 + 8);
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v30 = a3;
  v31 = v24;
  v32 = v25;
  v33 = v26;
  v34 = a7;
  v35 = v27;
  v36 = a10;
  v37 = a11;
  v38 = a12;
  v39 = v19;
  v22 = *(*(*(a12 + 8) + 8) + 8);
  Sequence.reduce<A>(_:_:)();
  return (*(v14 + 8))(v18, a3);
}

uint64_t closure #1 in closure #2 in PreambleKWay.unshard<A>(_:numOfMeasurements:parameter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a4 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](a1, a2);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v23 - v17;
  v20 = *v19;
  Array.subscript.getter();
  (*(v11 + 16))(v15, a1, a4);
  FieldElement.init(other:)(v15, a4, a8);
  v21 = *(a8 + 8);
  dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
  return (*(v11 + 8))(v18, a4);
}

uint64_t closure #3 in PreambleKWay.unshard<A>(_:numOfMeasurements:parameter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  v30 = a4;
  v31 = a6;
  v29 = a7;
  v14 = *(a2 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Optional();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v28 - v22;
  (*(v14 + 16))(v17, a1, a2);
  SignedInteger<>.init<A>(fieldElement:)(v17, a3, a2, a5, v30, v23);
  v24 = *(a3 - 8);
  if ((*(v24 + 48))(v23, 1, a3) != 1)
  {
    return (*(v24 + 32))(v29, v23, a3);
  }

  (*(v19 + 8))(v23, v18);
  lazy protocol witness table accessor for type PreambleError and conformance PreambleError();
  v25 = swift_allocError();
  *(v26 + 8) = 0;
  *(v26 + 16) = 0;
  *v26 = 1;
  *(v26 + 24) = 12;
  result = swift_willThrow();
  *a10 = v25;
  return result;
}

uint64_t PreambleKWay.outputShare<A>(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *, uint64_t, void, uint64_t, void, uint64_t))
{
  v9 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1, a1);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  return a5(v11, 1, *(a2 + 16), a3, *(a2 + 40), a4);
}

uint64_t protocol witness for Collector.unshard<A>(_:numOfMeasurements:parameter:) in conformance PreambleKWay<A, B, C>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X5>, uint64_t *a6@<X8>)
{
  result = specialized PreambleKWay.unshard<A>(_:numOfMeasurements:parameter:)(a1, a2, a5, a3, a4);
  if (!v6)
  {
    *a6 = result;
  }

  return result;
}

uint64_t PreambleKWay.randomSizeForShard.getter(uint64_t a1)
{
  v2 = *(v1 + 16);
  result = (*(*(*(a1 + 64) + 8) + 8))(*(a1 + 32));
  v4 = result * v2;
  if ((result * v2) >> 64 == (result * v2) >> 63)
  {
    if (v4 + 0x4000000000000000 >= 0)
    {
      return 2 * v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *static PreambleKWay.domainSeparationTagExtend.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v12[0] = a1;
  v12[1] = a2;
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = a7;
  v9 = type metadata accessor for PreambleKWay();
  LOBYTE(v12[0]) = a8;
  WitnessTable = swift_getWitnessTable();
  return static VDAFProtocol.domainSeparationTag(usage:)(v12, v9, WitnessTable);
}

uint64_t PreambleKWay.shard<A>(_:nonce:seedBytes:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v131 = a4;
  v115 = a3;
  *&v135 = a2;
  v114 = a1;
  v130 = a7;
  v10 = *(*(a7 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v119 = type metadata accessor for PartialRangeFrom();
  v118 = *(v119 - 8);
  v13 = *(v118 + 64);
  MEMORY[0x28223BE20](v119, v14);
  v117 = &v105 - v15;
  v133 = v10;
  v132 = a6;
  v129 = swift_getAssociatedTypeWitness();
  v16 = *(*(v129 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v129, v17);
  v116 = &v105 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v20);
  v123 = &v105 - v21;
  v125 = AssociatedConformanceWitness;
  v122 = type metadata accessor for PartialRangeUpTo();
  v121 = *(v122 - 8);
  v22 = *(v121 + 64);
  v24 = MEMORY[0x28223BE20](v122, v23);
  v120 = &v105 - v25;
  v128 = AssociatedTypeWitness;
  v126 = *(AssociatedTypeWitness - 8);
  v26 = *(v126 + 64);
  v28 = MEMORY[0x28223BE20](v24, v27);
  v124 = &v105 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v30);
  v127 = &v105 - v31;
  v32 = *v7;
  v33 = v7[1];
  v34 = v7[2];
  v35 = a5[2];
  v36 = a5[5];
  v37 = type metadata accessor for LeafParent();
  *&v144 = v32;
  *(&v144 + 1) = v33;
  *&v145 = v34;
  v38 = PreambleKWay.superBlockSize.getter();
  v39 = a5[3];
  v134 = a5;
  v40 = a5[6];
  v41 = v37;
  v42 = *(&v135 + 1);
  v43 = static LeafParent.makeLeafParentsFromSuperBlocks<A>(measurement:superBlockSize:superBlockCount:blockSize:)(v135, v38, v34, v33, v39, *(v40 + 8));
  if (v42)
  {
    return v41;
  }

  *&v135 = v32;
  v109 = v39;
  v110 = v40;
  *(&v135 + 1) = v33;
  v44 = v134;
  v111 = v36;
  v112 = v35;
  v113 = 0;
  v45 = v43;
  v46 = MEMORY[0x2743B2830](v43, v37);
  if (v46 != v34)
  {
    v63 = v46;

    *&v144 = 0;
    *(&v144 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(60);
    MEMORY[0x2743B25F0](0xD000000000000027, 0x8000000270C53250);
    *&v136 = v34;
    v64 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v64);

    MEMORY[0x2743B25F0](0xD000000000000011, 0x8000000270C53280);
    *&v136 = v63;
    v65 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v65);

    v66 = *(&v144 + 1);
    v41 = v144;
    lazy protocol witness table accessor for type PreambleError and conformance PreambleError();
    swift_allocError();
    *v67 = v41;
    *(v67 + 8) = v66;
    *(v67 + 16) = 0;
    *(v67 + 24) = 6;
    swift_willThrow();
    return v41;
  }

  v108 = v45;
  v47 = dispatch thunk of Collection.count.getter();
  v144 = v135;
  *&v145 = v34;
  if (v47 != PreambleKWay.randomSizeForShard.getter(v44))
  {

    v68 = dispatch thunk of Collection.count.getter();
    lazy protocol witness table accessor for type PreambleError and conformance PreambleError();
    v41 = swift_allocError();
    *(v69 + 8) = 0;
    *(v69 + 16) = 0;
    *v69 = v68;
    *(v69 + 24) = 1;
    swift_willThrow();
    return v41;
  }

  v106 = v34;
  v105 = v37;
  v48 = v124;
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.count.getter();
  v49 = v127;
  dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
  v50 = v126;
  v51 = *(v126 + 8);
  v52 = v48;
  v53 = v128;
  v124 = (v126 + 8);
  v107 = v51;
  v51(v52, v128);
  v125 = *(v125 + 8);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    v55 = v120;
    v126 = *(v50 + 16);
    (v126)(v120, v49, v53);
    v56 = v122;
    swift_getWitnessTable();
    v57 = v123;
    Collection.subscript.getter();
    (*(v121 + 8))(v55, v56);
    v41 = v134[4];
    v58 = v134[8];
    v59 = *(v58 + 8);
    v60 = v129;
    v61 = swift_getAssociatedConformanceWitness();
    v62 = v113;
    PreambleKWayInputShare.init<A>(from:)(v57, v41, v60, v59, v61, &v144);
    if (v62)
    {
      v107(v49, v53);

      return v41;
    }

    v122 = v59;
    v123 = v41;
    v130 = v144;
    result = dispatch thunk of static Equatable.== infix(_:_:)();
    if (result)
    {
      v70 = v117;
      v71 = v49;
      v72 = v49;
      v73 = v53;
      (v126)(v117, v72, v53);
      v74 = v119;
      swift_getWitnessTable();
      v75 = v116;
      Collection.subscript.getter();
      (*(v118 + 8))(v70, v74);
      v76 = v123;
      PreambleKWayInputShare.init<A>(from:)(v75, v123, v129, v122, v61, &v144);
      v77 = v106;
      if (*(v130 + 16) == v106 && *(v144 + 16) == v106)
      {
        v132 = v144;
        v78 = v112;
        v79 = v111;
        v113 = 0;
        type metadata accessor for OneBlockSparsePublicShare();
        v80 = v76;
        v148 = Array.init()();
        v133 = type metadata accessor for Array();
        Array.reserveCapacity(_:)(v77);
        *&v144 = v78;
        *(&v144 + 1) = v76;
        *&v145 = v79;
        *(&v145 + 1) = v58;
        v131 = type metadata accessor for DPFOneBlockSparse();
        v81 = v135;
        v144 = v135;
        *&v145 = v77;
        v129 = PreambleKWay.superBlockSize.getter();
        v136 = v81;
        *&v137 = v77;
        PreambleKWay.innerLevelCount.getter();
        *&v135 = v82;
        v83 = v134[7];
        v84 = v109;
        v85 = v58;
        v86 = v110;
        v87 = static PreambleKWay.domainSeparationTagExtend.getter(v78, v109, v80, v79, v110, v83, v85);
        v88 = static PreambleKWay.domainSeparationTagConvert.getter(v78, v84, v80, v79, v86, v83, v85);
        v41 = v131;
        v89 = v113;
        v90 = DPFOneBlockSparse.__allocating_init(superBlockSize:blockSize:innerLevelCount:domainSeparationTagExtend:domainSeparationTagConvert:)(v129, *(&v81 + 1), v135, v87, v88);
        if (v89)
        {

          v107(v127, v128);
        }

        else
        {
          v93 = v90;
          *&v140 = v108;
          *&v136 = v130;
          *(&v136 + 1) = v132;
          v94 = type metadata accessor for Array();
          v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12Zip2SequenceVySay4VDAF4SeedVGAFGMd, &_ss12Zip2SequenceVySay4VDAF4SeedVGAFGMR);
          WitnessTable = swift_getWitnessTable();
          v97 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type Zip2Sequence<[Seed], [Seed]> and conformance Zip2Sequence<A, B>, &_ss12Zip2SequenceVySay4VDAF4SeedVGAFGMd, &_ss12Zip2SequenceVySay4VDAF4SeedVGAFGMR);
          zip<A, B>(_:_:)();

          v140 = v142;
          v141 = v143;
          *&v136 = v94;
          *(&v136 + 1) = v95;
          *&v137 = WitnessTable;
          *(&v137 + 1) = v97;
          type metadata accessor for Zip2Sequence();
          Zip2Sequence.makeIterator()();
          *(&v135 + 1) = v94;
          *&v136 = v94;
          *&v135 = v95;
          *(&v136 + 1) = v95;
          v134 = WitnessTable;
          *&v137 = WitnessTable;
          *(&v137 + 1) = v97;
          v98 = type metadata accessor for Zip2Sequence.Iterator();
          Zip2Sequence.Iterator.next()();
          while (v142)
          {
            v99 = (*(*v93 + 168))(v142, v115, *(&v142 + 1), v143);
            v101 = v100;

            *&v136 = v99;
            *(&v136 + 1) = v101;
            Array.append(_:)();

            *&v136 = *(&v135 + 1);
            *(&v136 + 1) = v135;
            *&v137 = v134;
            *(&v137 + 1) = v97;
            v98 = type metadata accessor for Zip2Sequence.Iterator();
            Zip2Sequence.Iterator.next()();
          }

          v102 = v132;
          v136 = v144;
          v137 = v145;
          v138 = v146;
          v139 = v147;
          (*(*(v98 - 8) + 8))(&v136, v98);
          PreambleKWayPublicShare.init(superBlockPublicShares:)(v148, &v142);
          *v114 = v142;
          type metadata accessor for PreambleKWayInputShare();
          type metadata accessor for _ContiguousArrayStorage();
          swift_allocObject();
          v103 = static Array._adoptStorage(_:count:)();
          *v104 = v130;
          v104[1] = v102;
          _finalizeUninitializedArray<A>(_:)();
          v41 = v103;

          v107(v127, v128);
        }
      }

      else
      {

        v91 = dispatch thunk of Collection.count.getter();
        lazy protocol witness table accessor for type PreambleError and conformance PreambleError();
        v41 = swift_allocError();
        *(v92 + 8) = 0;
        *(v92 + 16) = 0;
        *v92 = v91;
        *(v92 + 24) = 1;
        swift_willThrow();
        v107(v71, v73);
      }

      return v41;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized PreambleKWay.unshard<A>(_:numOfMeasurements:parameter:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v12 = *v7;
  v13 = *(*(a5 + 8) + 8);
  if (dispatch thunk of Collection.count.getter() != 2)
  {
    a1 = dispatch thunk of Collection.count.getter();
    lazy protocol witness table accessor for type PreambleError and conformance PreambleError();
    swift_allocError();
    *(v38 + 8) = 0;
    *(v38 + 16) = 0;
    *v38 = a1;
    *(v38 + 24) = 0;
LABEL_12:
    swift_willThrow();
    return a1;
  }

  v15 = 1 << v12;
  if (v12 >= 0x40)
  {
    v15 = 0;
  }

  if (v12 <= 0x40)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  MEMORY[0x28223BE20](2, v14);
  v18 = a3[2];
  v17 = a3[3];
  v41 = v18;
  v42 = v17;
  v57 = v17;
  v19 = a3[4];
  v53 = a3[5];
  v54 = v19;
  v43 = v19;
  v44 = a4;
  v20 = a3[6];
  v21 = a3[7];
  v45 = v53;
  v46 = v20;
  v56 = v20;
  v22 = a3[8];
  v23 = v21;
  v47 = v21;
  v48 = v22;
  v55 = v22;
  v49 = a5;
  v50 = v16;
  v24 = *(v13 + 8);
  result = Sequence.allSatisfy(_:)();
  if ((result & 1) == 0)
  {
    lazy protocol witness table accessor for type PreambleError and conformance PreambleError();
    swift_allocError();
    *(v39 + 8) = 0;
    *(v39 + 16) = 0;
    *v39 = 2;
    *(v39 + 24) = 12;
    goto LABEL_12;
  }

  if ((v16 & 0x8000000000000000) == 0)
  {
    v52 = v51;
    v58 = 0;
    v59 = v16;
    MEMORY[0x28223BE20](result, v26);
    v41 = v18;
    v42 = v57;
    v27 = v53;
    v28 = v54;
    v43 = v54;
    v44 = a4;
    v45 = v53;
    v46 = v56;
    v51[0] = v23;
    v47 = v23;
    v48 = v55;
    v49 = a5;
    v50 = a1;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
    v30 = lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
    v32 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #2 in PreambleKWay.unshard<A>(_:numOfMeasurements:parameter:), v40, v29, v18, MEMORY[0x277D84A98], v30, MEMORY[0x277D84AC0], v31);
    v51[1] = v6;
    v52 = v51;
    v58 = v32;
    MEMORY[0x28223BE20](v32, v33);
    v34 = v57;
    v41 = v18;
    v42 = v57;
    v43 = v28;
    v44 = a4;
    v45 = v27;
    v46 = v56;
    v47 = v51[0];
    v48 = v55;
    v49 = a5;
    v35 = type metadata accessor for Array();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    WitnessTable = swift_getWitnessTable();
    a1 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #3 in PreambleKWay.unshard<A>(_:numOfMeasurements:parameter:), v40, v35, v34, v36, WitnessTable, MEMORY[0x277D84950], &v60);

    return a1;
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type PreamblePrepareMessage and conformance PreamblePrepareMessage()
{
  result = lazy protocol witness table cache variable for type PreamblePrepareMessage and conformance PreamblePrepareMessage;
  if (!lazy protocol witness table cache variable for type PreamblePrepareMessage and conformance PreamblePrepareMessage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreamblePrepareMessage and conformance PreamblePrepareMessage);
  }

  return result;
}

uint64_t type metadata instantiation function for PreambleKWay()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

BOOL partial apply for closure #1 in PreambleKWay.unshard<A>(_:numOfMeasurements:parameter:)(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 88);
  return MEMORY[0x2743B2830](*a1, v2) == v3;
}

uint64_t partial apply for closure #3 in PreambleKWay.unshard<A>(_:numOfMeasurements:parameter:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3[4];
  v5 = v3[5];
  return closure #3 in PreambleKWay.unshard<A>(_:numOfMeasurements:parameter:)(a1, v3[2], v3[3], v3[6], v3[7], v3[8], a3, v3[9], v3[10], a2);
}

uint64_t partial apply for closure #1 in closure #2 in PreambleKWay.unshard<A>(_:numOfMeasurements:parameter:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72);
  v6 = *(v2 + 80);
  v4 = *(v2 + 56);
  return closure #1 in closure #2 in PreambleKWay.unshard<A>(_:numOfMeasurements:parameter:)(a1, a2, *(v2 + 88), *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48));
}

uint64_t _s4VDAF31BatchedExtendableOutputFunctionPAAE7makeXOF4seed19domainSeparationTag6binder10generatingxAA4SeedV_Says5UInt8VGAMSitFZAA19XofHmacSha256Aes128C_Tt3g5(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v31[3] = *MEMORY[0x277D85DE8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA256VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA256VGMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v26 - v12;
  v14 = type metadata accessor for SymmetricKey();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  if (*(a1 + 16) != 32)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  v28 = a3;
  v29 = v13;
  v17 = type metadata accessor for XofHmacSha256Aes128(0);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  v20 = swift_allocObject();
  *(v20 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream) = 0;
  v31[0] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  _sSays5UInt8VGSayxG10Foundation15ContiguousBytesAeBRszlWlTm_0(&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A]);
  SymmetricKey.init<A>(data:)();
  type metadata accessor for SHA256();
  lazy protocol witness table accessor for type SHA256 and conformance SHA256();
  HMAC.init(key:)();
  if (a2[2] > 0xFFuLL)
  {
    goto LABEL_5;
  }

  LOBYTE(v31[0]) = a2[2];
  v21 = specialized _copyCollectionToContiguousArray<A>(_:)(v31, v31 + 1);
  v27 = a4;
  v30 = v21;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4HMACVyAA6SHA256VGMd, &_s9CryptoKit4HMACVyAA6SHA256VGMR);
  _sSays5UInt8VGSayxG10Foundation15ContiguousBytesAeBRszlWlTm_0(&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A]);
  HMAC.update<A>(data:)();

  v30 = a2;

  specialized Array.append<A>(contentsOf:)(v22);
  HMAC.update<A>(data:)();
  swift_endAccess();

  *(v20 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_maxBufferSize) = v27;
  v23 = v29;
  HMAC.finalize()();
  HashedAuthenticationCode.withUnsafeBytes<A>(_:)();
  (*(v9 + 8))(v23, v8);
  v24 = *MEMORY[0x277D85DE8];
  return v20;
}

uint64_t specialized LeafParent.bit(atLevel:)(unint64_t a1)
{
  v3 = *(v2 + 32);
  if (v3 < 0)
  {
    __break(1u);
LABEL_14:
    v10 = v1 << -v3;
    if (v3 == -64)
    {
      v11 = 0;
    }

    else
    {
      v11 = v10;
    }

    LOBYTE(v5) = v11 & 1;
    return v5 & 1;
  }

  if (v3 <= a1)
  {
    v6 = v3 - 1;
    lazy protocol witness table accessor for type LeafParentError and conformance LeafParentError();
    swift_allocError();
    *v7 = a1;
    *(v7 + 8) = 0;
    *(v7 + 16) = v6;
    *(v7 + 24) = 0;
    swift_willThrow();
    return v5 & 1;
  }

  v3 += ~a1;
  if (v3 < -64)
  {
    LOBYTE(v5) = 0;
    return v5 & 1;
  }

  v1 = *(v2 + 16);
  if (v3 > 64)
  {
    v5 = (v1 >> 63) & 1;
    return v5 & 1;
  }

  if (v3 < 0)
  {
    goto LABEL_14;
  }

  v9 = v3 == 64;
  v5 = v1 >> v3;
  if (v9)
  {
    v5 = v1 >> 63;
  }

  LOBYTE(v5) = v5 & 1;
  return v5 & 1;
}

uint64_t specialized Array.reserveCapacity(_:)(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
      v6 = *(v5 + 16);
LABEL_14:
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v3 = result;
      goto LABEL_15;
    }

LABEL_10:
    if (v3 < 0)
    {
      v7 = v3;
    }

    else
    {
      v7 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    MEMORY[0x2743B2FD0](v7);
    goto LABEL_14;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
  if (a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_9;
  }

LABEL_15:
  *v1 = v3;
  return result;
}

void _s4VDAF10LeafParentC17dimensionBitCount6prefix9blockSize6leavesACyxGSi_S2iSayAA0B0VyxGGtKcfCAA7Field32V_Tt3g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF10LeafParentCyAA7Field32VGMd, &_s4VDAF10LeafParentCyAA7Field32VGMR);
  v8 = swift_allocObject();
  v9 = v8;
  if (a3 < 1 || ((a3 + 0x7FFFFFFFFFFFFFFFLL) & a3) != 0)
  {

    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v10 = 0xD000000000000020;
    *(v10 + 8) = 0x8000000270C52520;
    *(v10 + 16) = 1;
    swift_willThrow();
    swift_deallocPartialClassInstance();
    return;
  }

  *(v8 + 16) = a2;
  v11 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v11 + 16) = a3;
  bzero((v11 + 32), 4 * a3);
  v12 = *(a4 + 16);
  if (v12)
  {
    v13 = (a4 + 40);
    while (1)
    {
      v14 = *(v13 - 1);
      if ((v14 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v14 >= *(v11 + 16))
      {
        goto LABEL_15;
      }

      v15 = *v13;
      v13 += 4;
      *(v11 + 32 + 4 * v14) = v15;
      if (!--v12)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_9:

  *(v9 + 24) = v11;
  v16 = log2(a3);
  if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v16 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!__OFSUB__(a1, v16))
  {
    *(v9 + 32) = a1 - v16;
    return;
  }

LABEL_19:
  __break(1u);
}

uint64_t _s4VDAF10LeafParentC04makeB22ParentsFromSuperBlocks11measurement14superBlockSize0jK5Count05blockL0SayACyxGGSDySiqd__G_S3itKSzRd__lFZAA7Field32V_s5Int32VTt3g5(uint64_t a1, uint64_t a2, Swift::Int a3, uint64_t a4)
{
  v5 = (a2 - 1);
  if (a2 < 1 || (a2 & *&v5) != 0 || a2 < a4)
  {
    v6 = 0x8000000270C52550;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    v8 = 0xD000000000000049;
    goto LABEL_8;
  }

  if (a3 <= 0 || ((a3 + 0x7FFFFFFFFFFFFFFFLL) & a3) != 0)
  {
    v6 = 0x8000000270C525A0;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    v8 = 0xD00000000000002FLL;
LABEL_8:
    *v7 = v8;
    *(v7 + 8) = v6;
    *(v7 + 16) = 1;
    return swift_willThrow();
  }

  if (a4 < 2 || ((a4 + 0x7FFFFFFFFFFFFFFFLL) & a4) != 0)
  {
    v6 = 0x8000000270C525D0;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    v8 = 0xD000000000000029;
    goto LABEL_8;
  }

  v10 = a2 * a3;
  if ((a2 * a3) >> 64 != (a2 * a3) >> 63)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v101 = v10 - 1;
  if (!__OFSUB__(v10, 1))
  {
    v11 = v4;
    v12 = vcnt_s8(v5);
    v12.i16[0] = vaddlv_u8(v12);
    v99 = v12.u32[0];
    v113 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_4VDAF10LeafParentC14SuperBlockDataCyAC7Field32V_GTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySi4VDAF10LeafParentC14SuperBlockDataCyAA7Field32V_GGMd, &_sSDySi4VDAF10LeafParentC14SuperBlockDataCyAA7Field32V_GGMR);
    Dictionary.reserveCapacity(_:)(a3);
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(a1 + 64);
    v16 = (v13 + 63) >> 6;

    v17 = 0;
    v18 = a4;
    v100 = v16;
    if (v15)
    {
      goto LABEL_20;
    }

LABEL_21:
    v22 = a2;
    v21 = a1;
    while (1)
    {
      v23 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v23 >= v16)
      {

        v69 = v113;
        if (v113[2] == a3)
        {
          v111 = MEMORY[0x277D84F90];
          specialized Array.reserveCapacity(_:)(a3);
          v70 = 0;
          while (v69[2])
          {
            v71 = specialized __RawDictionaryStorage.find<A>(_:)(v70);
            if ((v72 & 1) == 0)
            {
              break;
            }

            v73 = *(v69[7] + 8 * v71);
            swift_beginAccess();
            v74 = *(v73 + 24);
            if (*(v74 + 16) > a4)
            {

              _StringGuts.grow(_:)(53);
              MEMORY[0x2743B25F0](0x6465746365707845, 0xEC000000203D3C20);
              v89 = dispatch thunk of CustomStringConvertible.description.getter();
              MEMORY[0x2743B25F0](v89);

              MEMORY[0x2743B25F0](0xD000000000000019, 0x8000000270C52640);
              v90 = dispatch thunk of CustomStringConvertible.description.getter();
              MEMORY[0x2743B25F0](v90);

              MEMORY[0x2743B25F0](0x6F6720747562202CLL, 0xEA00000000002074);
              v110 = *(*(v73 + 24) + 16);
              v91 = dispatch thunk of CustomStringConvertible.description.getter();
              MEMORY[0x2743B25F0](v91);

              lazy protocol witness table accessor for type LeafParentError and conformance LeafParentError();
              swift_allocError();
              *v92 = 0;
              *(v92 + 8) = 0xE000000000000000;
              *(v92 + 16) = 0;
              *(v92 + 24) = 3;
              swift_willThrow();
            }

            swift_beginAccess();
            v75 = *(v73 + 16);

            _s4VDAF10LeafParentC17dimensionBitCount6prefix9blockSize6leavesACyxGSi_S2iSayAA0B0VyxGGtKcfCAA7Field32V_Tt3g5(v99, v75, a4, v74);
            if (v11)
            {
            }

            MEMORY[0x2743B2760](v76);
            if (*((v111 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v111 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v77 = *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            ++v70;
            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            if (a3 == v70)
            {

              return v111;
            }
          }

          _StringGuts.grow(_:)(31);

          v82 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x2743B25F0](v82);

          v80 = 0xD00000000000001DLL;
          v81 = 0x8000000270C52620;
        }

        else
        {
          v112[0] = 0;
          v112[1] = 0xE000000000000000;
          _StringGuts.grow(_:)(30);

          strcpy(v112, "Expected ");
          WORD1(v112[1]) = 0;
          HIDWORD(v112[1]) = -385875968;
          v78 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x2743B25F0](v78);

          MEMORY[0x2743B25F0](0xD000000000000011, 0x8000000270C52600);
          v109 = v69[2];
          v79 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x2743B25F0](v79);

          v80 = v112[0];
          v81 = v112[1];
        }

        lazy protocol witness table accessor for type LeafParentError and conformance LeafParentError();
        swift_allocError();
        *v83 = v80;
        *(v83 + 8) = v81;
        *(v83 + 16) = 0;
        *(v83 + 24) = 2;
        swift_willThrow();
      }

      v15 = *(a1 + 64 + 8 * v23);
      ++v17;
      if (v15)
      {
        v17 = v23;
        while (1)
        {
          v24 = __clz(__rbit64(v15)) | (v17 << 6);
          v25 = *(*(v21 + 48) + 8 * v24);
          if ((v25 & 0x8000000000000000) != 0 || v101 < v25)
          {
            v112[0] = 0;
            v112[1] = 0xE000000000000000;
            _StringGuts.grow(_:)(31);

            v112[0] = 544826699;
            v112[1] = 0xE400000000000000;
            v84 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x2743B25F0](v84);

            MEMORY[0x2743B25F0](0xD000000000000016, 0x8000000270C52680);
            v85 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x2743B25F0](v85);

            MEMORY[0x2743B25F0](93, 0xE100000000000000);
            v86 = v112[0];
            v87 = v112[1];
            lazy protocol witness table accessor for type LeafParentError and conformance LeafParentError();
            swift_allocError();
            *v88 = v86;
            *(v88 + 8) = v87;
            *(v88 + 16) = 0;
            *(v88 + 24) = 1;
            swift_willThrow();
          }

          v15 &= v15 - 1;
          v26 = *(*(v21 + 56) + 4 * v24);
          v27 = v25 / v22;
          v28 = v25 % v22;
          v29 = v28 / v18;
          v107 = v28 % v18;
          v30 = v113;
          if (!v113[2])
          {
            break;
          }

          v31 = specialized __RawDictionaryStorage.find<A>(_:)(v27);
          if ((v32 & 1) == 0)
          {
            break;
          }

          v33 = *(v30[7] + 8 * v31);
          swift_beginAccess();
          if (*(v33 + 16) != v29)
          {
            v112[0] = 0;
            v112[1] = 0xE000000000000000;

            _StringGuts.grow(_:)(43);

            strcpy(v112, "super block ");
            BYTE5(v112[1]) = 0;
            HIWORD(v112[1]) = -5120;
            v93 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x2743B25F0](v93);

            MEMORY[0x2743B25F0](0xD00000000000001DLL, 0x8000000270C52660);
            v94 = v112[0];
            v95 = v112[1];
            lazy protocol witness table accessor for type LeafParentError and conformance LeafParentError();
            swift_allocError();
            *v96 = v94;
            *(v96 + 8) = v95;
            *(v96 + 16) = 0;
            *(v96 + 24) = 4;
            swift_willThrow();
          }

          if (v26 < 0)
          {
            v26 -= 0xFFFFF;
          }

          if (v26 >= 0xFFF00002)
          {
            goto LABEL_87;
          }

          v34 = 266338049 * v26;
          v35 = 4293918721 * (1048831 * v26);
          v36 = __CFADD__(v35, v34);
          v37 = v35 + v34;
          v38 = v33;
          if (v36)
          {
            v39 = HIDWORD(v37) + 0xFFFFF;
            if (HIDWORD(v37) >= 0xFFF00001)
            {
              goto LABEL_86;
            }
          }

          else if (v37 >= 0xFFF0000100000000)
          {
            v39 = HIDWORD(v37) + 0xFFFFF;
          }

          else
          {
            v39 = HIDWORD(v37);
          }

          swift_beginAccess();
          v63 = *(v33 + 24);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v38 + 24) = v63;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v63 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v63 + 2) + 1, 1, v63);
            *(v38 + 24) = v63;
          }

          v66 = *(v63 + 2);
          v65 = *(v63 + 3);
          if (v66 >= v65 >> 1)
          {
            v63 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v65 > 1), v66 + 1, 1, v63);
          }

          *(v63 + 2) = v66 + 1;
          v67 = &v63[16 * v66];
          *(v67 + 4) = v107;
          *(v67 + 10) = v39;
          *(v38 + 24) = v63;
          swift_endAccess();

          v18 = a4;
          v16 = v100;
          if (!v15)
          {
            goto LABEL_21;
          }

LABEL_20:
          v22 = a2;
          v21 = a1;
        }

        v103 = v27;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF10LeafParentC14SuperBlockDataCyAA7Field32V_GMd, &_s4VDAF10LeafParentC14SuperBlockDataCyAA7Field32V_GMR);
        v40 = swift_allocObject();
        v41 = MEMORY[0x277D84F90];
        *(v40 + 24) = MEMORY[0x277D84F90];
        v42 = (v40 + 24);
        v102 = v40;
        *(v40 + 16) = v29;
        swift_beginAccess();
        *v42 = v41;
        *v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a4, 0, v41);
        swift_endAccess();
        if (v26 >= 0)
        {
          v43 = v26;
        }

        else
        {
          v43 = (v26 - 0xFFFFF);
        }

        _s4VDAF12FieldElementPAAEyx06FiniteB0_11IntegerTypeQZcfCAA7Field32V_Tt1g5(v43, v112);
        v44 = v112[0];
        swift_beginAccess();
        v45 = *v42;
        v46 = swift_isUniquelyReferenced_nonNull_native();
        *v42 = v45;
        if ((v46 & 1) == 0)
        {
          v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v45 + 2) + 1, 1, v45);
          *v42 = v45;
        }

        v48 = *(v45 + 2);
        v47 = *(v45 + 3);
        if (v48 >= v47 >> 1)
        {
          v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1, v45);
        }

        *(v45 + 2) = v48 + 1;
        v49 = &v45[16 * v48];
        *(v49 + 4) = v107;
        *(v49 + 10) = v44;
        *v42 = v45;
        swift_endAccess();
        v50 = v113;
        v51 = swift_isUniquelyReferenced_nonNull_native();
        v112[0] = v50;
        v52 = specialized __RawDictionaryStorage.find<A>(_:)(v103);
        v54 = v50[2];
        v55 = (v53 & 1) == 0;
        v56 = __OFADD__(v54, v55);
        v57 = v54 + v55;
        if (v56)
        {
          goto LABEL_82;
        }

        v58 = v53;
        if (v50[3] >= v57)
        {
          if (v51)
          {
            goto LABEL_50;
          }

          v68 = v52;
          specialized _NativeDictionary.copy()();
          v52 = v68;
          v60 = v112[0];
          if (v58)
          {
            goto LABEL_18;
          }

LABEL_51:
          v60[(v52 >> 6) + 8] |= 1 << v52;
          *(v60[6] + 8 * v52) = v103;
          *(v60[7] + 8 * v52) = v102;
          v61 = v60[2];
          v56 = __OFADD__(v61, 1);
          v62 = v61 + 1;
          if (v56)
          {
            goto LABEL_83;
          }

          v60[2] = v62;
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v57, v51);
          v52 = specialized __RawDictionaryStorage.find<A>(_:)(v103);
          if ((v58 & 1) != (v59 & 1))
          {
            goto LABEL_88;
          }

LABEL_50:
          v60 = v112[0];
          if ((v58 & 1) == 0)
          {
            goto LABEL_51;
          }

LABEL_18:
          v19 = v60[7];
          v20 = *(v19 + 8 * v52);
          *(v19 + 8 * v52) = v102;
        }

        v18 = a4;
        v16 = v100;
        v113 = v60;
        if (!v15)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  v112[0] = 0;
  v112[1] = 0xE000000000000000;

  _StringGuts.grow(_:)(40);

  strcpy(v112, "Integer(");
  BYTE1(v112[1]) = 0;
  WORD1(v112[1]) = 0;
  HIDWORD(v112[1]) = -402653184;
  v97 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2743B25F0](v97);

  MEMORY[0x2743B25F0](0xD00000000000001BLL, 0x8000000270C51FF0);
  v98 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2743B25F0](v98);

  MEMORY[0x2743B25F0](41, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
LABEL_88:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t _s4VDAF12FieldElementPAAE19randomVectorBatched5count5usingSayxGSi_qd__tAA0F24ExtendableOutputFunctionRd__lFZAA7Field32V_AA19XofHmacSha256Aes128CTt1g5(uint64_t a1, uint64_t a2)
{
  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1 & ~(a1 >> 63), 0, MEMORY[0x277D84F90]);
  if (*(v3 + 2) >= a1)
  {
    return v3;
  }

  v20 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream;
  while (1)
  {
    v4 = *(a2 + v20);
    if (!v4)
    {
      break;
    }

    v5 = *(a2 + v20);

    v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v6[1].i64[0] = 1024;
    bzero(&v6[2], 0x400uLL);
    v7 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_key;
    v8 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_nonce;
    swift_beginAccess();
    specialized static AES.CTR.encryptInPlace(_:using:updating:)(v6 + 2, v6[66].i64, v4 + v7, v4 + v8);
    swift_endAccess();

    for (i = 8; i != 264; ++i)
    {
      v10 = v6->u32[i];
      if (v10 <= 0xFFF00001)
      {
        if (v10 == -1048575)
        {
          v11 = 0;
        }

        else
        {
          v12 = 266338049 * v10;
          v13 = 4503595066065151 * v10;
          v14 = __CFADD__(v13, v12);
          v15 = v13 + v12;
          if (v14)
          {
            v11 = HIDWORD(v15) + 0xFFFFF;
            if (HIDWORD(v15) >= 0xFFF00001)
            {
              __break(1u);
              goto LABEL_22;
            }
          }

          else
          {
            v11 = v15 >= 0xFFF0000100000000 ? HIDWORD(v15) + 0xFFFFF : HIDWORD(v15);
          }
        }

        v17 = *(v3 + 2);
        v16 = *(v3 + 3);
        v18 = v17 + 1;
        if (v17 >= v16 >> 1)
        {
          v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v3);
        }

        *(v3 + 2) = v18;
        *&v3[4 * v17 + 32] = v11;
        if (v18 == a1)
        {
          break;
        }
      }
    }

    if (*(v3 + 2) >= a1)
    {
      return v3;
    }
  }

LABEL_22:
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t _s4VDAF4SeedV6extend3xof5nonce19domainSeparationTagSayACG_SaySbGtxm_Says5UInt8VGALtAA31BatchedExtendableOutputFunctionRzlFAA19XofHmacSha256Aes128C_Ttg5(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  if ((v7 + 0x4000000000000000) < 0)
  {
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v5 = 2 * v7;
  v8 = _s4VDAF31BatchedExtendableOutputFunctionPAAE7makeXOF4seed19domainSeparationTag6binder10generatingxAA4SeedV_Says5UInt8VGAMSitFZAA19XofHmacSha256Aes128C_Tt3g5(a3, a2, a1, 2 * v7);
  v9 = *(v8 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream);
  if (!v9)
  {
    goto LABEL_29;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    goto LABEL_20;
  }

  v10 = *(v8 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream);

  if (v7)
  {
    v3 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v3[1].i64[0] = v5;
    bzero(&v3[2], 2 * v7);
    v11 = 2 * v7;
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
    v11 = *(MEMORY[0x277D84F90] + 16);
  }

  i64 = v3[2].i64;
  v12 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_key;
  v13 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_nonce;
  swift_beginAccess();
  v14 = v3[2].i64 + v11;
  v4 = 0;
  specialized static AES.CTR.encryptInPlace(_:using:updating:)(v3 + 2, v14, v9 + v12, v9 + v13);
  swift_endAccess();

  v15 = v3[1].u64[0];
  if (v15 < v7)
  {
    goto LABEL_21;
  }

  if (v15 == v7)
  {

    v4 = v3;
  }

  else
  {
    specialized _copyCollectionToContiguousArray<A>(_:)(v3, v3[2].i64, 0, v5 | 1);
    v4 = v16;
  }

  v17 = v3[1].u64[0];
  if (v17 < v5)
  {
    goto LABEL_22;
  }

  if (v17 == v7)
  {
    if (*(v4 + 2))
    {
      goto LABEL_14;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_23:
  specialized _copyCollectionToContiguousArray<A>(_:)(v3, i64, v7, (4 * v7) | 1);
  v7 = v22;

  v3 = v7;
  if (!*(v4 + 2))
  {
    goto LABEL_24;
  }

LABEL_14:
  if (!v3[1].i64[0])
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  LOBYTE(v7) = v4[32];
  LOBYTE(v5) = v3[2].i8[0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_26:
    v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
  }

  v4[32] &= ~1u;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if (v3[1].i64[0])
    {
LABEL_18:
      v18 = v7 & 1;
      v3[2].i8[0] &= ~1u;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF4SeedVGMd, &_ss23_ContiguousArrayStorageCy4VDAF4SeedVGMR);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_270C44550;
      *(v19 + 32) = v4;
      *(v19 + 40) = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySbGMd, &_ss23_ContiguousArrayStorageCySbGMR);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_270C44550;
      *(v20 + 32) = v18;
      *(v20 + 33) = v5 & 1;

      return v19;
    }
  }

  else
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    if (v3[1].i64[0])
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t specialized DPFOneBlockSparse.gen(leafParent:nonce:seedParty0:seedParty1:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v127 = result;
  v6 = v4[7];
  if (v6 < 0)
  {
LABEL_171:
    __break(1u);
LABEL_172:
    __break(1u);
    return result;
  }

  v7 = v4;

  if (v6)
  {
    v10 = 0;
    v11 = 0;
    v143 = MEMORY[0x277D84F90];
    LOBYTE(v142) = 1;
    v125 = v6;
    v126 = v4;
    while (1)
    {
      v139 = v10;
      v12 = specialized LeafParent.bit(atLevel:)(v10);
      if (v5)
      {
        goto LABEL_113;
      }

      v13 = v7[2];
      v148 = v12;
      v14 = _s4VDAF4SeedV6extend3xof5nonce19domainSeparationTagSayACG_SaySbGtxm_Says5UInt8VGALtAA31BatchedExtendableOutputFunctionRzlFAA19XofHmacSha256Aes128C_Ttg5(a2, v13, a3);
      v151 = v15;

      v16 = _s4VDAF4SeedV6extend3xof5nonce19domainSeparationTagSayACG_SaySbGtxm_Says5UInt8VGALtAA31BatchedExtendableOutputFunctionRzlFAA19XofHmacSha256Aes128C_Ttg5(a2, v13, a4);
      v18 = v17;

      v19 = (v148 & 1) == 0;
      if (*(v14 + 16) <= v19)
      {
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
        goto LABEL_171;
      }

      if (*(v16 + 16) <= v19)
      {
        goto LABEL_154;
      }

      v20 = *(v14 + 32 + 8 * v19);
      v152 = v16;
      v21 = v16 + 32;
      v22 = *(v16 + 32 + 8 * v19);
      v23 = *(v20 + 16);
      v24 = *(v22 + 16);
      if (v23 != v24)
      {

        lazy protocol witness table accessor for type XORError and conformance XORError();
        swift_allocError();
        *v115 = v23;
        *(v115 + 8) = v24;
        *(v115 + 16) = 0;
        swift_willThrow();
      }

      v128 = v21;
      v129 = v14 + 32;
      v140 = v11;
      v150 = v14;
      v147 = v18;
      v155 = MEMORY[0x277D84F90];

      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23, 0);
      v25 = v155;
      if (v23)
      {
        v26 = 0;
        v27 = *(v20 + 16);
        v28 = v20 + 32;
        v29 = v22 + 32;
        v30 = v20;
        v31 = v22;
        while (v27 != v26)
        {
          if (v26 >= *(v30 + 16))
          {
            goto LABEL_120;
          }

          v32 = *(v31 + 16);
          if (v26 == v32)
          {
            goto LABEL_121;
          }

          if (v26 >= v32)
          {
            goto LABEL_122;
          }

          v20 = *(v28 + v26);
          v33 = *(v29 + v26);
          v155 = v25;
          v35 = *(v25 + 16);
          v34 = *(v25 + 24);
          if (v35 >= v34 >> 1)
          {
            v144 = v30;
            v134 = v27;
            v136 = v31;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1);
            v27 = v134;
            v31 = v136;
            v30 = v144;
            v18 = v147;
            v25 = v155;
          }

          ++v26;
          *(v25 + 16) = v35 + 1;
          *(v25 + v35 + 32) = v33 ^ v20;
          if (v23 == v26)
          {
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_120:
        __break(1u);
LABEL_121:
        __break(1u);
LABEL_122:
        __break(1u);
LABEL_123:

        v155 = v153;
        specialized Array<A>.elementwiseAdd(_:)(v28);
        if (v20)
        {
          goto LABEL_113;
        }

LABEL_135:

        if (v142)
        {
          v118 = *(v155 + 16);
          if (v118)
          {
            v154 = MEMORY[0x277D84F90];
            result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v118, 0);
            v119 = 32;
            do
            {
              v120 = *(v155 + v119);
              if (v120)
              {
                v121 = -1048575 - v120;
                if (v120 > 0xFFF00001)
                {
                  goto LABEL_172;
                }
              }

              else
              {
                v121 = 0;
              }

              v123 = *(v154 + 16);
              v122 = *(v154 + 24);
              if (v123 >= v122 >> 1)
              {
                result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v122 > 1), v123 + 1, 1);
              }

              *(v154 + 16) = v123 + 1;
              *(v154 + 4 * v123 + 32) = v121;
              v119 += 4;
              --v118;
            }

            while (v118);
          }
        }

        return v143;
      }

      v30 = v20;
      v31 = v22;
LABEL_19:
      v36 = *(v30 + 16);
      if (v23 != v36)
      {
        v56 = v30 + 32;
        v57 = v31 + 32;
        while (v23 < v36)
        {
          v58 = *(v31 + 16);
          if (v23 == v58)
          {
            goto LABEL_20;
          }

          if (v23 >= v58)
          {
            goto LABEL_134;
          }

          v59 = *(v56 + v23);
          v60 = *(v57 + v23);
          v155 = v25;
          v62 = *(v25 + 16);
          v61 = *(v25 + 24);
          if (v62 >= v61 >> 1)
          {
            v146 = v30;
            v138 = v31;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v61 > 1), v62 + 1, 1);
            v31 = v138;
            v30 = v146;
            v18 = v147;
            v25 = v155;
          }

          ++v23;
          *(v25 + 16) = v62 + 1;
          *(v25 + v62 + 32) = v60 ^ v59;
          v36 = *(v30 + 16);
          if (v23 == v36)
          {
            goto LABEL_20;
          }
        }

LABEL_133:
        __break(1u);
LABEL_134:
        __break(1u);
        goto LABEL_135;
      }

LABEL_20:
      v145 = v25;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySbGMd, &_ss23_ContiguousArrayStorageCySbGMR);
      result = swift_initStackObject();
      *(result + 16) = xmmword_270C44550;
      v37 = *(v151 + 16);
      if (!v37)
      {
        goto LABEL_155;
      }

      v38 = *(v18 + 16);
      if (!v38)
      {
        goto LABEL_156;
      }

      v39 = result;
      *(result + 32) = ((v148 ^ *(v18 + 32) ^ *(v151 + 32)) & 1) == 0;
      if (v37 == 1)
      {
        goto LABEL_157;
      }

      if (v38 == 1)
      {
        goto LABEL_158;
      }

      v40 = v148 & 1;
      v133 = result + 32;
      v41 = (v148 ^ *(v151 + 33) ^ *(v18 + 33)) & 1;
      *(result + 33) = v41;
      v149 = v40;
      v135 = v41;
      v137 = result;
      if (v140)
      {
        result = v152;
        if (*(v150 + 16) <= v40)
        {
          goto LABEL_163;
        }

        v42 = *(v129 + 8 * v40);
        v43 = *(v42 + 16);
        v44 = *(v145 + 16);
        if (v43 != v44)
        {
          swift_setDeallocating();
          lazy protocol witness table accessor for type XORError and conformance XORError();
          swift_allocError();
          *v116 = v43;
          *(v116 + 8) = v44;
          *(v116 + 16) = 0;
          swift_willThrow();
        }

        v155 = MEMORY[0x277D84F90];

        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v43, 0);
        v45 = v155;
        if (v43)
        {
          v46 = 0;
          v47 = *(v42 + 16);
          v48 = v42 + 32;
          v49 = v145;
          v50 = v42;
          while (v47 != v46)
          {
            if (v46 >= *(v50 + 16))
            {
              goto LABEL_126;
            }

            v51 = *(v49 + 16);
            if (v46 == v51)
            {
              goto LABEL_127;
            }

            if (v46 >= v51)
            {
              goto LABEL_128;
            }

            v52 = *(v48 + v46);
            v53 = *(v145 + 32 + v46);
            v155 = v45;
            v55 = *(v45 + 16);
            v54 = *(v45 + 24);
            if (v55 >= v54 >> 1)
            {
              v130 = v50;
              v124 = v47;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1);
              v47 = v124;
              v50 = v130;
              v49 = v145;
            }

            ++v46;
            *(v45 + 16) = v55 + 1;
            *(v45 + v55 + 32) = v53 ^ v52;
            if (v43 == v46)
            {
              goto LABEL_59;
            }
          }

          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
          goto LABEL_133;
        }

        v49 = v145;
        v50 = v42;
LABEL_59:
        v79 = *(v50 + 16);
        if (v43 != v79)
        {
          v87 = v50 + 32;
          v88 = v49 + 32;
          v39 = v137;
          while (v43 < v79)
          {
            v89 = *(v49 + 16);
            if (v43 == v89)
            {
              goto LABEL_61;
            }

            if (v43 >= v89)
            {
              goto LABEL_147;
            }

            v90 = *(v87 + v43);
            v91 = *(v88 + v43);
            v93 = *(v45 + 16);
            v92 = *(v45 + 24);
            if (v93 >= v92 >> 1)
            {
              v131 = v50;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v92 > 1), v93 + 1, 1);
              v50 = v131;
              v49 = v145;
            }

            ++v43;
            *(v45 + 16) = v93 + 1;
            *(v45 + v93 + 32) = v91 ^ v90;
            v79 = *(v50 + 16);
            if (v43 == v79)
            {
              goto LABEL_61;
            }
          }

          __break(1u);
LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

        v39 = v137;
LABEL_61:

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          result = v150;
        }

        else
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v150);
        }

        v41 = v135;
        if (*(result + 16) <= v149)
        {
          goto LABEL_165;
        }

        v150 = result;
        v80 = result + 8 * v149;
        v81 = *(v80 + 32);
        *(v80 + 32) = v45;

        if (*(v151 + 16) <= v149)
        {
          goto LABEL_166;
        }

        v82 = *(v151 + 32 + v149);

        v83 = *(v133 + v149);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          result = v151;
        }

        else
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v151);
        }

        v64 = v149;
        v63 = v152;
        if (*(result + 16) <= v149)
        {
          goto LABEL_167;
        }

        v151 = result;
        *(result + v149 + 32) = v82 ^ v83;
        v18 = v147;
        if ((v142 & 1) == 0)
        {
LABEL_69:

          v84 = v149;
          v86 = v150;
          v85 = v151;
          goto LABEL_89;
        }
      }

      else
      {
        v63 = v152;

        v64 = v149;
        if ((v142 & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      if (*(v63 + 16) <= v64)
      {
        goto LABEL_164;
      }

      v65 = *(v128 + 8 * v64);

      v142 = v65;
      v66 = *(v65 + 16);
      v67 = *(v145 + 16);
      if (v66 != v67)
      {

        swift_setDeallocating();
        lazy protocol witness table accessor for type XORError and conformance XORError();
        swift_allocError();
        *v117 = v66;
        *(v117 + 8) = v67;
        *(v117 + 16) = 0;
        swift_willThrow();
      }

      v155 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v66, 0);
      v68 = v155;
      if (v66)
      {
        v69 = 0;
        v70 = v65;
        v71 = *(v65 + 16);
        v72 = v65 + 32;
        v73 = v145;
        while (v71 != v69)
        {
          if (v69 >= *(v70 + 16))
          {
            goto LABEL_130;
          }

          v74 = *(v73 + 16);
          if (v69 == v74)
          {
            goto LABEL_131;
          }

          if (v69 >= v74)
          {
            goto LABEL_132;
          }

          v75 = *(v72 + v69);
          v76 = *(v145 + 32 + v69);
          v155 = v68;
          v78 = *(v68 + 16);
          v77 = *(v68 + 24);
          if (v78 >= v77 >> 1)
          {
            v141 = v71;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v77 > 1), v78 + 1, 1);
            v71 = v141;
            v70 = v142;
            v73 = v145;
          }

          ++v69;
          *(v68 + 16) = v78 + 1;
          *(v68 + v78 + 32) = v76 ^ v75;
          if (v66 == v69)
          {
            goto LABEL_79;
          }
        }

        goto LABEL_129;
      }

      v73 = v145;
      v70 = v65;
LABEL_79:
      v94 = *(v70 + 16);
      if (v66 != v94)
      {
        v105 = v70 + 32;
        v106 = v73 + 32;
        v39 = v137;
        while (v66 < v94)
        {
          v107 = *(v73 + 16);
          if (v66 == v107)
          {
            goto LABEL_81;
          }

          if (v66 >= v107)
          {
            goto LABEL_149;
          }

          v108 = *(v105 + v66);
          v109 = *(v106 + v66);
          v111 = *(v68 + 16);
          v110 = *(v68 + 24);
          if (v111 >= v110 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v110 > 1), v111 + 1, 1);
            v70 = v142;
            v73 = v145;
          }

          ++v66;
          *(v68 + 16) = v111 + 1;
          *(v68 + v111 + 32) = v109 ^ v108;
          v94 = *(v70 + 16);
          if (v66 == v94)
          {
            goto LABEL_81;
          }
        }

LABEL_148:
        __break(1u);
LABEL_149:
        __break(1u);
        return v143;
      }

      v39 = v137;
LABEL_81:

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        result = v152;
      }

      else
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v152);
      }

      v41 = v135;
      if (*(result + 16) <= v149)
      {
        goto LABEL_168;
      }

      v152 = result;
      v95 = result + 8 * v149;
      v96 = *(v95 + 32);
      *(v95 + 32) = v68;

      if (*(v147 + 16) <= v149)
      {
        goto LABEL_169;
      }

      v97 = *(v147 + 32 + v149);

      v98 = *(v133 + v149);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v147);
        v147 = result;
      }

      v84 = v149;
      v86 = v150;
      v85 = v151;
      if (*(v147 + 16) <= v149)
      {
        goto LABEL_170;
      }

      *(v147 + v149 + 32) = v97 ^ v98;
      v18 = v147;
LABEL_89:
      if (*(v86 + 16) <= v84)
      {
        goto LABEL_159;
      }

      if (*(v152 + 16) <= v84)
      {
        goto LABEL_160;
      }

      if (*(v85 + 16) <= v84)
      {
        goto LABEL_161;
      }

      if (*(v18 + 16) <= v84)
      {
        goto LABEL_162;
      }

      a3 = *(v86 + 8 * v84 + 32);
      a4 = *(v152 + 8 * v84 + 32);
      v11 = *(v85 + v84 + 32);
      v99 = *(v18 + v84 + 32);
      v100 = *(v39 + 32);

      LOBYTE(v142) = v99;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v101 = v143;
      }

      else
      {
        v101 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v143 + 2) + 1, 1, v143);
      }

      v103 = *(v101 + 2);
      v102 = *(v101 + 3);
      if (v103 >= v102 >> 1)
      {
        v101 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v102 > 1), v103 + 1, 1, v101);
      }

      *(v101 + 2) = v103 + 1;
      v143 = v101;
      v104 = &v101[16 * v103];
      *(v104 + 4) = v145;
      v10 = v139 + 1;
      v104[40] = v100;
      v104[41] = v41;

      v7 = v126;
      v5 = 0;
      if (v139 + 1 == v125)
      {
        goto LABEL_112;
      }
    }
  }

  LOBYTE(v142) = 1;
  v143 = MEMORY[0x277D84F90];
LABEL_112:
  v112 = *(*v7 + 192);
  v113 = v112(a3, a2);
  if (!v5)
  {
    v114 = v113;

    v28 = v112(a4, a2);

    v153 = *(v127 + 24);

    specialized Array<A>.elementwiseSubtract(_:)(v114);
    v20 = 0;
    goto LABEL_123;
  }

LABEL_113:
}

uint64_t specialized DPFOneBlockSparse.evalNextChildren(nonce:node:internalCwList:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  v10 = a2;
  v8 = a6;
  if (*(a5 + 16) <= a2)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v11 = a4;
  v14 = a5 + 16 * a2;
  v9 = *(v14 + 32);
  v15 = *(v14 + 40);
  v16 = *(v14 + 41);
  v17 = *(v7 + 2);

  v18 = _s4VDAF4SeedV6extend3xof5nonce19domainSeparationTagSayACG_SaySbGtxm_Says5UInt8VGALtAA31BatchedExtendableOutputFunctionRzlFAA19XofHmacSha256Aes128C_Ttg5(a1, v17, a3);
  v7 = v18;
  v6 = v19;
  if ((v11 & 1) == 0)
  {

    goto LABEL_16;
  }

  if (!*(v18 + 16))
  {
    goto LABEL_30;
  }

  v38 = v16;
  v39 = v15;
  v20 = *(*(v18 + 32) + 16);
  v21 = *(v9 + 16);
  if (v20 != v21)
  {
    lazy protocol witness table accessor for type XORError and conformance XORError();
    swift_allocError();
    *v37 = v20;
LABEL_23:
    *(v37 + 8) = v21;
    *(v37 + 16) = 0;
    swift_willThrow();
  }

  v11 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySays5UInt8VGAJG_AIs5NeverOTg5018_sxxxIgnnr_x_xtxs5g40OIegnrzr_s17FixedWidthIntegerRzSURzlTRs5f25V_TG5012_sSa4VDAFs17bcd34pQ44E3xorySayxGADKFxx_xtXEfU_s5E5V_TG5Tf3nnnpf_nTf1cn_n(v22, v9);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_31;
  }

  while (1)
  {
    if (*(v7 + 2))
    {
      v23 = *(v7 + 4);
      *(v7 + 4) = v11;

      if (*(v6 + 16))
      {
        LOBYTE(v11) = *(v6 + 32);
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          goto LABEL_10;
        }

        goto LABEL_34;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_34:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
    v6 = result;
LABEL_10:
    *(v6 + 32) = v39 ^ v11;
    if (*(v7 + 2) < 2uLL)
    {
      break;
    }

    v11 = *(v7 + 5);
    v25 = *(v11 + 16);
    v21 = *(v9 + 16);
    if (v25 != v21)
    {
      lazy protocol witness table accessor for type XORError and conformance XORError();
      swift_allocError();
      *v37 = v25;
      goto LABEL_23;
    }

    v26 = *(v7 + 5);

    v28 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySays5UInt8VGAJG_AIs5NeverOTg5018_sxxxIgnnr_x_xtxs5g40OIegnrzr_s17FixedWidthIntegerRzSURzlTRs5f25V_TG5012_sSa4VDAFs17bcd34pQ44E3xorySayxGADKFxx_xtXEfU_s5E5V_TG5Tf3nnnpf_nTf1cn_n(v27, v9);

    if (*(v7 + 2) < 2uLL)
    {
      goto LABEL_36;
    }

    v29 = *(v7 + 5);
    *(v7 + 5) = v28;

    if (*(v6 + 16) < 2uLL)
    {
      goto LABEL_37;
    }

    *(v6 + 33) = (v38 ^ *(v6 + 33)) & 1;
LABEL_16:
    v30 = *(v7 + 2);
    if (!v30)
    {
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v31 = *(v6 + 16);
    if (!v31)
    {
      goto LABEL_27;
    }

    if (v30 == 1)
    {
      goto LABEL_28;
    }

    if (v31 != 1)
    {
      v32 = v10 + 1;
      v33 = *(v6 + 32);
      v34 = *(v7 + 4);
      v35 = *(v7 + 5);
      v36 = *(v6 + 33);

      *v8 = v32;
      *(v8 + 8) = v34;
      *(v8 + 16) = v33;
      *(v8 + 24) = v32;
      *(v8 + 32) = v35;
      *(v8 + 40) = v36;
      return result;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

void specialized PreambleKWay.innerLevelCount.getter(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 1 << a1;
  if (a1 >= 0x40)
  {
    v3 = 0;
  }

  if (a1 > 0x40)
  {
    v3 = 0;
  }

  v4 = log2(v3 / (a2 * a3));
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
  }
}

uint64_t *_s4VDAF12PreambleKWayV11prepareInit9verifyKey12aggregatorID5nonce11publicShare05inputL09parameterAA0B12PrepareStateVyxG_AA0boL0VyxGtSays5UInt8VG_SiAsA0bc6PublicL0VyxGAA0bc5InputL0Vyq0_GAA11VoidCodableVtKFAA7Field32V_s5Int32VAA19XofHmacSha256Aes128CTt6B5(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, unint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a4 >= 2)
  {
    v129[0] = a4;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v18 = v15;
    *(v18 + 8) = v17;
    *(v18 + 16) = 0;
    return swift_willThrow();
  }

  v11 = *(a6 + 16);
  v12 = a7[2];
  if (v11 != v12 || v11 != a10)
  {
    lazy protocol witness table accessor for type PreambleError and conformance PreambleError();
    swift_allocError();
    *v14 = v11;
    *(v14 + 8) = v12;
    *(v14 + 16) = a10;
    *(v14 + 24) = 3;
    return swift_willThrow();
  }

  if (!a10)
  {
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  v20 = v10;
  v111 = result;
  v21 = 1 << a8;
  if (a8 <= 0x3F)
  {
    v22 = 1 << a8;
  }

  else
  {
    v22 = 0;
  }

  if (a8 <= 0x40)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v24 = v23 / a10;
  specialized PreambleKWay.innerLevelCount.getter(a8, a9, a10);
  v126 = v25;
  v26 = _s4VDAF12VDAFProtocolPAAE19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA12PreambleKWayVyAA7Field32Vs5Int32VAA19XofHmacSha256Aes128CG_Tt0B5(0xAu);
  v27 = _s4VDAF12VDAFProtocolPAAE19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA12PreambleKWayVyAA7Field32Vs5Int32VAA19XofHmacSha256Aes128CG_Tt0B5(0xBu);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF17DPFOneBlockSparseCyAA7Field32VAA19XofHmacSha256Aes128CGMd, &_s4VDAF17DPFOneBlockSparseCyAA7Field32VAA19XofHmacSha256Aes128CGMR);
  result = swift_allocObject();
  v128 = result;
  if (__OFSUB__(v24, 1))
  {
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
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  v122 = v22;
  v28 = 0xD00000000000001DLL;
  if (((v24 - 1) & v24) != 0)
  {
    v29 = "ntrol bits value not 0 or 1: ";
    v30 = 7;
LABEL_22:

    lazy protocol witness table accessor for type PreambleError and conformance PreambleError();
    swift_allocError();
    *v33 = v28;
    *(v33 + 8) = v29 | 0x8000000000000000;
    *(v33 + 16) = 0;
    *(v33 + 24) = v30;
    swift_willThrow();
    return swift_deallocPartialClassInstance();
  }

  if (__OFSUB__(a9, 1))
  {
    goto LABEL_113;
  }

  v31 = a6;
  result = a7;
  v32 = a8;
  if (((a9 - 1) & a9) != 0)
  {
    v29 = "Dimension must be power of 2.";
    v28 = 0xD00000000000001ELL;
    v30 = 8;
    goto LABEL_22;
  }

  v109 = a4;
  v34 = v20;
  v29 = "Block size must be power of 2.";
  v28 = 0xD00000000000002CLL;
  v30 = 8;
  if (a9 < 1 || v24 < a9)
  {
    goto LABEL_22;
  }

  v128[4] = v24;
  v128[5] = a9;
  v35 = v24 / a9;
  v36 = v128;
  v128[6] = v35;
  v128[7] = v126;
  v128[2] = v26;
  v128[3] = v27;
  v37 = MEMORY[0x277D84F90];
  v38 = v34;
  v39 = a10;
  if (a8 > 0x3F)
  {
LABEL_28:
    v104 = v31 + 32;
    v105 = result + 4;
    v110 = v37;
    v108 = v37 + 32;
    if (v32 - 65 >= 0xFFFFFFFFFFFFFF7FLL)
    {
      v40 = v122;
    }

    else
    {
      v40 = 0;
    }

    if (v32 <= 0xFFFFFFFFFFFFFFC0)
    {
      v41 = 0;
    }

    else
    {
      v41 = 1uLL >> -v32;
    }

    v42 = 0;
    result = &_ss23_ContiguousArrayStorageCy4VDAF8EvalNodeVGMd;
    v101 = v41;
    v102 = v40;
    while (1)
    {
      if (v42 == v39)
      {
        goto LABEL_114;
      }

      if (a8 <= 0xFFFFFFFFFFFFFFBFLL)
      {
        v43 = v40;
      }

      else
      {
        v43 = v41;
      }

      v44 = v43 / v39;
      v45 = v44 * v42;
      if ((v44 * v42) >> 64 != (v44 * v42) >> 63)
      {
        goto LABEL_115;
      }

      v46 = v105[v42];
      v103 = v42;
      v47 = (v104 + 16 * v42);
      v121 = *v47;
      v107 = v47[1];
      v48 = v36[7];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF8EvalNodeVGMd, &_ss23_ContiguousArrayStorageCy4VDAF8EvalNodeVGMR);
      v49 = swift_allocObject();
      v50 = v49;
      *(v49 + 16) = xmmword_270C44540;
      *(v49 + 32) = 0;
      *(v49 + 40) = v46;
      *(v49 + 48) = v109 == 1;
      if (v48)
      {
        break;
      }

      v51 = MEMORY[0x277D84F90];
      v52 = *(MEMORY[0x277D84F90] + 16);
      if (v52)
      {
        v112 = v45;
        v123 = v49;
LABEL_44:
        v117 = v48 - 1;
        v53 = __OFSUB__(v48, 1);
        v119 = v53;
        swift_bridgeObjectRetain_n();

        while (1)
        {
          v57 = *(v51 + 4);
          v56 = *(v51 + 5);
          v58 = v51[48];

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (!isUniquelyReferenced_nonNull_native || (v52 - 1) > *(v51 + 3) >> 1)
          {
            v51 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v52, 1, v51);
          }

          outlined destroy of EvalNode((v51 + 32));
          v60 = *(v51 + 2);
          memmove(v51 + 32, v51 + 56, 24 * v60 - 24);
          *(v51 + 2) = v60 - 1;
          specialized DPFOneBlockSparse.evalNextChildren(nonce:node:internalCwList:)(a5, v57, v56, v58, v121, v129);
          if (v38)
          {
            break;
          }

          v62 = v129[0];
          v61 = v129[1];
          v63 = v130;
          v64 = v131;
          v65 = v132;
          v66 = v133;

          if (v119)
          {
LABEL_108:
            __break(1u);
            goto LABEL_109;
          }

          if (v57 >= v117)
          {
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v73 = v123;
            }

            else
            {
              v73 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v123 + 16) + 1, 1, v123);
            }

            v75 = *(v73 + 2);
            v74 = *(v73 + 3);
            v76 = v74 >> 1;
            v70 = v75 + 1;
            if (v74 >> 1 <= v75)
            {
              v73 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v74 > 1), v75 + 1, 1, v73);
              v74 = *(v73 + 3);
              v76 = v74 >> 1;
            }

            *(v73 + 2) = v70;
            v77 = &v73[24 * v75];
            *(v77 + 4) = v62;
            *(v77 + 5) = v61;
            v77[48] = v63;
            v72 = v75 + 2;
            if (v76 < v72)
            {
              v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v74 > 1), v72, 1, v73);
              v123 = v54;
            }

            else
            {
              v123 = v73;
              v54 = v73;
            }
          }

          else
          {
            v68 = *(v51 + 2);
            v67 = *(v51 + 3);
            v69 = v67 >> 1;
            v70 = v68 + 1;
            if (v67 >> 1 <= v68)
            {
              v51 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v67 > 1), v68 + 1, 1, v51);
              v67 = *(v51 + 3);
              v69 = v67 >> 1;
            }

            *(v51 + 2) = v70;
            v71 = &v51[24 * v68];
            *(v71 + 4) = v62;
            *(v71 + 5) = v61;
            v71[48] = v63;
            v72 = v68 + 2;
            if (v69 < v72)
            {
              v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v67 > 1), v72, 1, v51);
              v51 = v54;
            }

            else
            {
              v54 = v51;
            }
          }

          *(v54 + 2) = v72;
          v55 = &v54[24 * v70];
          *(v55 + 4) = v64;
          *(v55 + 5) = v65;
          v55[48] = v66;
          v52 = *(v51 + 2);
          v38 = 0;
          v36 = v128;
          if (!v52)
          {

            v50 = v123;
            v45 = v112;
            goto LABEL_70;
          }
        }
      }

LABEL_70:
      v78 = *(v50 + 16);
      if (v78 != v36[6])
      {
        goto LABEL_117;
      }

      if (v78)
      {
        v79 = 0;
        v118 = v50 + 32;
        v124 = v50;
        v106 = *(v50 + 16);
        while (v79 < *(v50 + 16))
        {
          v113 = v45;
          v81 = v36[5];
          if ((v81 - 0x2000000000000000) >> 62 != 3)
          {
            goto LABEL_112;
          }

          v120 = v79;
          v82 = v118 + 24 * v79;
          v83 = *(v82 + 8);
          v84 = *(v82 + 16);
          v85 = v36[3];

          v87 = _s4VDAF31BatchedExtendableOutputFunctionPAAE7makeXOF4seed19domainSeparationTag6binder10generatingxAA4SeedV_Says5UInt8VGAMSitFZAA19XofHmacSha256Aes128C_Tt3g5(v86, v85, a5, v81);
          v88 = _s4VDAF12FieldElementPAAE19randomVectorBatched5count5usingSayxGSi_qd__tAA0F24ExtendableOutputFunctionRd__lFZAA7Field32V_AA19XofHmacSha256Aes128CTt1g5(v81, v87);

          v129[0] = v88;
          if (v84)
          {
            result = specialized Array<A>.elementwiseAdd(_:)(v107);
            v89 = v109;
            if (v38)
            {
            }

            v88 = v129[0];
          }

          else
          {
            v89 = v109;
          }

          v90 = v110;
          if (v89 == 1)
          {
            v91 = *(v88 + 16);
            if (v91)
            {
              v127 = v38;
              v134 = MEMORY[0x277D84F90];
              result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v91, 0);
              v92 = v134;
              v93 = 32;
              do
              {
                v94 = *(v88 + v93);
                if (v94)
                {
                  v95 = -1048575 - v94;
                  if (v94 > 0xFFF00001)
                  {
                    goto LABEL_107;
                  }
                }

                else
                {
                  v95 = 0;
                }

                v134 = v92;
                v97 = *(v92 + 16);
                v96 = *(v92 + 24);
                if (v97 >= v96 >> 1)
                {
                  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v96 > 1), v97 + 1, 1);
                  v92 = v134;
                }

                *(v92 + 16) = v97 + 1;
                *(v92 + 4 * v97 + 32) = v95;
                v93 += 4;
                --v91;
              }

              while (v91);

              v38 = v127;
              v36 = v128;
            }

            else
            {

              v92 = MEMORY[0x277D84F90];
            }

            v129[0] = v92;
            v88 = v92;
            v90 = v110;
          }

          v98 = *(v88 + 16);
          if (v98)
          {
            v99 = (v88 + 32);
            v80 = v113;
            while ((v113 & 0x8000000000000000) == 0)
            {
              if (v80 >= *(v90 + 16))
              {
                goto LABEL_106;
              }

              v100 = *v99++;
              *(v108 + 4 * v80++) = v100;
              if (!--v98)
              {
                goto LABEL_74;
              }
            }

            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
            goto LABEL_108;
          }

          v80 = v113;
LABEL_74:

          v45 = v80;
          v79 = v120 + 1;
          v50 = v124;
          if (v120 + 1 == v106)
          {
            goto LABEL_100;
          }
        }

        goto LABEL_111;
      }

LABEL_100:
      v42 = v103 + 1;

      v39 = a10;
      v41 = v101;
      v40 = v102;
      result = &_ss23_ContiguousArrayStorageCy4VDAF8EvalNodeVGMd;
      if (v103 + 1 == a10)
      {

        *v111 = v110;
        return result;
      }
    }

    v112 = v45;
    v51 = v49;
    v123 = MEMORY[0x277D84F90];
    v52 = 1;
    goto LABEL_44;
  }

  if (a8 != 63)
  {
    v37 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v37 + 16) = v21;
    bzero((v37 + 32), 4 << a8);
    v32 = a8;
    v31 = a6;
    result = a7;
    goto LABEL_28;
  }

LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
  return result;
}

uint64_t _s4VDAF22PreambleKWayInputShareV4fromACyxGqd___tKcSkRd__s5UInt8V7ElementRtd__lufCAA19XofHmacSha256Aes128C_10Foundation4DataVTt1g5@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char **a3@<X8>)
{
  v74 = type metadata accessor for Data.Iterator();
  v7 = *(v74 - 8);
  v8 = *(v7 + 64);
  result = MEMORY[0x28223BE20](v74, v9);
  v73 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = a2;
  v12 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v12)
    {
      v13 = HIWORD(v79);
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v12 != 2)
  {
    v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(MEMORY[0x277D84F90] + 16), 0, MEMORY[0x277D84F90]);
    result = outlined consume of Data._Representation(a1, v79);
    *a3 = v28;
    return result;
  }

  v14 = *(a1 + 16);
  v13 = *(a1 + 24);
  v15 = __OFSUB__(v13, v14);
  LOBYTE(v13) = v13 - v14;
  if (v15)
  {
    __break(1u);
LABEL_8:
    LOBYTE(v13) = BYTE4(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_94;
    }
  }

LABEL_9:
  if ((v13 & 0x1F) != 0)
  {
    v81 = 0;
    v82 = 0xE000000000000000;
    _StringGuts.grow(_:)(37);

    v81 = 0xD000000000000043;
    v82 = 0x8000000270C532A0;
    v83 = 32;
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v16);

    MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
    if (v12 == 2)
    {
      v30 = *(a1 + 16);
      v29 = *(a1 + 24);
      outlined consume of Data._Representation(a1, v79);
      v17 = v29 - v30;
      if (!__OFSUB__(v29, v30))
      {
        goto LABEL_28;
      }

      __break(1u);
    }

    else if (v12 == 1)
    {
      result = outlined consume of Data._Representation(a1, v79);
      LODWORD(v17) = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_95;
      }

      v17 = v17;
      goto LABEL_28;
    }

    v31 = BYTE6(v79);
    outlined consume of Data._Representation(a1, v79);
    v17 = v31;
LABEL_28:
    v83 = v17;
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v32);

    v33 = v81;
    v34 = v82;
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v35 = v33;
    v35[1] = v34;
    return swift_willThrow();
  }

  v68 = a3;
  v69 = v3;
  if (!v12)
  {
    v36 = BYTE6(v79);
    if (*(MEMORY[0x277D84F90] + 16) <= ((v79 >> 53) & 7))
    {
      v37 = (v79 >> 53) & 7;
    }

    else
    {
      v37 = *(MEMORY[0x277D84F90] + 16);
    }

    v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v37, 0, MEMORY[0x277D84F90]);
    v38 = v36;
    goto LABEL_40;
  }

  if (v12 != 2)
  {
    v39 = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_97;
    }

    v40 = v39 + 31;
    if (v39 >= 0)
    {
      v40 = HIDWORD(a1) - a1;
    }

    v41 = v40 >> 5;
    if (*(MEMORY[0x277D84F90] + 16) <= v41)
    {
      v42 = v41;
    }

    else
    {
      v42 = *(MEMORY[0x277D84F90] + 16);
    }

    v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v42, 0, MEMORY[0x277D84F90]);
    v38 = v39;
LABEL_40:
    v23 = a1;
    v26 = v38;
    if (v38 < 1)
    {
LABEL_84:
      result = outlined consume of Data._Representation(v23, v79);
      *v68 = v27;
      return result;
    }

    goto LABEL_41;
  }

  v19 = *(a1 + 16);
  v18 = *(a1 + 24);
  v15 = __OFSUB__(v18, v19);
  v20 = v18 - v19;
  if (v15)
  {
    goto LABEL_96;
  }

  v21 = v20 / 32;
  if (*(MEMORY[0x277D84F90] + 16) <= v21)
  {
    v22 = v21;
  }

  else
  {
    v22 = *(MEMORY[0x277D84F90] + 16);
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22, 0, MEMORY[0x277D84F90]);
  v23 = a1;
  v25 = *(a1 + 16);
  v24 = *(a1 + 24);
  v26 = v24 - v25;
  if (__OFSUB__(v24, v25))
  {
    goto LABEL_98;
  }

  v27 = result;
  if (v26 < 1)
  {
    goto LABEL_84;
  }

LABEL_41:
  v43 = 0;
  v75 = v23 >> 32;
  v76 = v23;
  v70 = (v7 + 8);
  v71 = v26;
  v72 = BYTE6(v79);
  v77 = v12;
  v78 = v23;
  while (1)
  {
    v44 = v43 + 32;
    v45 = __OFADD__(v43, 32);
    if (v12 > 1)
    {
      if (v12 != 2)
      {
        v47 = 0;
        v46 = 0;
        goto LABEL_54;
      }

      v46 = *(v23 + 16);
      result = v46 + v43;
      if (__OFADD__(v46, v43))
      {
        goto LABEL_91;
      }

      v47 = *(v23 + 24);
    }

    else
    {
      if (!v12)
      {
        v46 = 0;
        v47 = v72;
LABEL_54:
        result = v43;
        goto LABEL_55;
      }

      v46 = v76;
      result = v76 + v43;
      if (__OFADD__(v76, v43))
      {
        goto LABEL_90;
      }

      v47 = v75;
    }

LABEL_55:
    if (result < v46 || v47 < result)
    {
      break;
    }

    v48 = result + 32;
    if (__OFADD__(result, 32))
    {
      goto LABEL_86;
    }

    if (v12 > 1)
    {
      if (v12 == 2)
      {
        v49 = *(v23 + 16);
        v50 = *(v23 + 24);
      }

      else
      {
        v50 = 0;
        v49 = 0;
      }
    }

    else
    {
      v50 = v75;
      v49 = v76;
      if (!v12)
      {
        v49 = 0;
        v50 = v72;
      }
    }

    if (v50 < v48 || v48 < v49)
    {
      goto LABEL_87;
    }

    if (v48 < result)
    {
      goto LABEL_88;
    }

    v80 = v27;
    result = Data._Representation.subscript.getter();
    v52 = result;
    v53 = v51;
    v54 = v51 >> 62;
    if ((v51 >> 62) > 1)
    {
      if (v54 != 2)
      {
        goto LABEL_78;
      }

      v57 = *(result + 16);
      v56 = *(result + 24);
      v55 = v56 - v57;
      if (__OFSUB__(v56, v57))
      {
        goto LABEL_93;
      }

      if (!v55)
      {
        goto LABEL_78;
      }
    }

    else if (v54)
    {
      v61 = HIDWORD(result) - result;
      if (__OFSUB__(HIDWORD(result), result))
      {
        goto LABEL_92;
      }

      v55 = v61;
      if (!v61)
      {
LABEL_78:
        v58 = v45;
        outlined consume of Data._Representation(result, v51);
        v59 = MEMORY[0x277D84F90];
        goto LABEL_81;
      }
    }

    else
    {
      v55 = BYTE6(v51);
      if (!BYTE6(v51))
      {
        goto LABEL_78;
      }
    }

    v58 = v45;
    if (v55 < 1)
    {
      v59 = MEMORY[0x277D84F90];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
      v59 = swift_allocObject();
      v60 = _swift_stdlib_malloc_size(v59);
      v59[2] = v55;
      v59[3] = 2 * v60 - 64;
    }

    v62 = v73;
    v63 = Data._copyContents(initializing:)();
    outlined consume of Data._Representation(v52, v53);
    result = (*v70)(v62, v74);
    v26 = v71;
    if (v63 != v55)
    {
      goto LABEL_89;
    }

LABEL_81:
    v27 = v80;
    v65 = *(v80 + 2);
    v64 = *(v80 + 3);
    if (v65 >= v64 >> 1)
    {
      v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v64 > 1), v65 + 1, 1, v80);
    }

    *(v27 + 2) = v65 + 1;
    *&v27[8 * v65 + 32] = v59;
    v43 += 32;
    v66 = (v44 < v26) & ~v58;
    LODWORD(v12) = v77;
    v23 = v78;
    if ((v66 & 1) == 0)
    {
      goto LABEL_84;
    }
  }

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
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
  return result;
}

char *_s4VDAF22PreambleKWayInputShareV4fromACyxGqd___tKcSkRd__s5UInt8V7ElementRtd__lufCAA19XofHmacSha256Aes128C_SWTt1g5@<X0>(size_t a1@<X0>, size_t a2@<X1>, char **a3@<X8>)
{
  if (a1)
  {
    v5 = a2 - a1;
    if (((a2 - a1) & 0x1F) != 0)
    {
      _StringGuts.grow(_:)(37);

      v6 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v6);

      MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
      v21[6] = v5;
      v7 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v7);

      lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
      swift_allocError();
      *v8 = 0xD000000000000043;
      v8[1] = 0x8000000270C532A0;
      return swift_willThrow();
    }

    v10 = v5 >> 5;
  }

  else
  {
    v10 = 0;
  }

  if (*(MEMORY[0x277D84F90] + 16) <= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = *(MEMORY[0x277D84F90] + 16);
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0, MEMORY[0x277D84F90]);
  v12 = result;
  if (a1 && (v13 = a2 - a1, (a2 - a1) >= 1))
  {
    v14 = 0;
    while (1)
    {
      v15 = v14 + 32;
      if (__OFADD__(v14, 32))
      {
        break;
      }

      if (v15 > v13)
      {
        goto LABEL_21;
      }

      if (v15 < v14)
      {
        goto LABEL_22;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
      v16 = swift_allocObject();
      v17 = _swift_stdlib_malloc_size(v16);
      v16[2] = 32;
      v16[3] = 2 * v17 - 64;
      result = specialized Slice._copyContents(initializing:)(v21, v16 + 4, 32, v14, v14 + 32, a1, a2);
      if (result != 32)
      {
        goto LABEL_23;
      }

      v19 = *(v12 + 2);
      v18 = *(v12 + 3);
      if (v19 >= v18 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v12);
        v12 = result;
      }

      *(v12 + 2) = v19 + 1;
      *&v12[8 * v19 + 32] = v16;
      v14 += 32;
      if (v15 >= v13)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
LABEL_19:
    *a3 = v12;
  }

  return result;
}

uint64_t specialized PreambleKWay.shard<A>(_:nonce:seedBytes:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, Swift::Int a8)
{
  v16 = 1 << a6;
  if (a6 >= 0x40)
  {
    v16 = 0;
  }

  if (a6 > 0x40)
  {
    v16 = 0;
  }

  if (!a8)
  {
    __break(1u);
LABEL_76:
    v53 = v11;
    v44 = "Block size must be power of 2.";
    v45 = v16 + 27;
    v46 = 8;
    if (v9 < 1 || v14 < v9)
    {
      goto LABEL_74;
    }

    v76[4] = v14;
    v76[5] = v9;
    v76[6] = v14 / v9;
    v76[7] = v53;
    v76[2] = v13;
    v76[3] = v15;
    v84 = v82;
    v86 = v77;
    v87 = 0;
    v88 = v75;
    v89 = 0;
    v90 = 0;
    if (v8)
    {
      v54 = v82;
      if (v82 < 0)
      {
        v60 = v82;
      }

      else
      {
        v60 = v82 & 0xFFFFFFFFFFFFFF8;
      }

      v55 = MEMORY[0x2743B2FD0](v60);
    }

    else
    {
      v54 = v82;
      v55 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v61 = v12;

    if (v55)
    {
      v62 = 0;
      v80 = v54 & 0xC000000000000001;
      v74 = v54 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v80)
        {
          result = MEMORY[0x2743B2D10](v62, v54);
          v63 = result;
          v64 = v62 + 1;
          if (__OFADD__(v62, 1))
          {
            goto LABEL_117;
          }
        }

        else
        {
          if (v62 >= *(v74 + 16))
          {
            goto LABEL_118;
          }

          v63 = *(v54 + 8 * v62 + 32);

          v64 = v62 + 1;
          if (__OFADD__(v62, 1))
          {
            goto LABEL_117;
          }
        }

        v22 = v61;
        v85 = v64;
        v65 = specialized Zip2Sequence.Iterator.next()();
        if (!v65)
        {
          goto LABEL_107;
        }

        v67 = specialized DPFOneBlockSparse.gen(leafParent:nonce:seedParty0:seedParty1:)(v63, v81, v65, v66);
        if (v83)
        {
          break;
        }

        v69 = v67;
        v70 = v68;

        v72 = v61[2];
        v71 = v61[3];
        if (v72 >= v71 >> 1)
        {
          v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v71 > 1), v72 + 1, 1, v61);
        }

        v61[2] = v72 + 1;
        v73 = &v61[2 * v72];
        v73[4] = v69;
        v73[5] = v70;
        ++v62;
        v54 = v82;
        if (v64 == v55)
        {
          goto LABEL_108;
        }
      }

      return v22;
    }

LABEL_108:

    *v78 = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF22PreambleKWayInputShareVyAC19XofHmacSha256Aes128CGGMd, &_ss23_ContiguousArrayStorageCy4VDAF22PreambleKWayInputShareVyAC19XofHmacSha256Aes128CGGMR);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_270C44550;
    *(v22 + 32) = v77;
    *(v22 + 40) = v75;

    return v22;
  }

  v9 = a7;
  v22 = result;
  if (a8 == -1 && v16 == 0x8000000000000000)
  {
    __break(1u);
  }

  else
  {
    v14 = v16 / a8;
    result = _s4VDAF10LeafParentC04makeB22ParentsFromSuperBlocks11measurement14superBlockSize0jK5Count05blockL0SayACyxGGSDySiqd__G_S3itKSzRd__lFZAA7Field32V_s5Int32VTt3g5(a2, v16 / a8, a8, a7);
    if (v10)
    {
      return v22;
    }

    v16 = result & 0xFFFFFFFFFFFFFF8;
    v8 = result >> 62;
    if (!(result >> 62))
    {
      v23 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v23 == a8)
      {
        goto LABEL_11;
      }

LABEL_84:

      v84 = 0;
      v85 = 0xE000000000000000;
      _StringGuts.grow(_:)(60);
      MEMORY[0x2743B25F0](0xD000000000000027, 0x8000000270C53250);
      v58 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v58);

      MEMORY[0x2743B25F0](0xD000000000000011, 0x8000000270C53280);
      v91 = v23;
      v59 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v59);

      lazy protocol witness table accessor for type PreambleError and conformance PreambleError();
      v22 = swift_allocError();
      *v49 = 0;
      *(v49 + 8) = 0xE000000000000000;
      *(v49 + 16) = 0;
      v50 = 6;
      goto LABEL_85;
    }
  }

  if (result < 0)
  {
    v16 = result;
  }

  v78 = v22;
  v82 = result;
  v56 = v8;
  v57 = MEMORY[0x2743B2FD0](v16);
  v8 = v56;
  v23 = v57;
  result = v82;
  v22 = v78;
  if (v23 != a8)
  {
    goto LABEL_84;
  }

LABEL_11:
  v81 = a3;
  v24 = a5 >> 62;
  if ((a5 >> 62) <= 1)
  {
    if (!v24)
    {
      v25 = BYTE6(a5);
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  if (v24 != 2)
  {
    v25 = 0;
    goto LABEL_21;
  }

  v27 = *(a4 + 16);
  v26 = *(a4 + 24);
  v28 = __OFSUB__(v26, v27);
  v25 = v26 - v27;
  if (v28)
  {
    __break(1u);
LABEL_18:
    LODWORD(v25) = HIDWORD(a4) - a4;
    if (__OFSUB__(HIDWORD(a4), a4))
    {
LABEL_111:
      __break(1u);
LABEL_112:
      __break(1u);
      goto LABEL_113;
    }

    v25 = v25;
  }

LABEL_21:
  if ((a8 - 0x400000000000000) >> 59 != 31)
  {
    __break(1u);
LABEL_106:
    __break(1u);
LABEL_107:

    v61 = v22;
    goto LABEL_108;
  }

  if (32 * a8 + 0x4000000000000000 < 0)
  {
    goto LABEL_106;
  }

  if (v25 != a8 << 6)
  {

    if (v24 <= 1)
    {
      if (!v24)
      {
        goto LABEL_29;
      }

      v36 = HIDWORD(a4) - a4;
      if (!__OFSUB__(HIDWORD(a4), a4))
      {
LABEL_40:
        v9 = v36;
        goto LABEL_70;
      }

LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
      goto LABEL_119;
    }

    if (v24 != 2)
    {
LABEL_69:
      v9 = 0;
      goto LABEL_70;
    }

    v35 = *(a4 + 16);
    v34 = *(a4 + 24);
    v9 = v34 - v35;
    if (!__OFSUB__(v34, v35))
    {
      goto LABEL_70;
    }

    __break(1u);
LABEL_37:
    if (__OFSUB__(HIDWORD(a4), a4))
    {
LABEL_114:
      __break(1u);
      goto LABEL_115;
    }

    v33 = a4;
    result = specialized RandomAccessCollection<>.index(_:offsetBy:)(a4, (HIDWORD(a4) - a4 + ((HIDWORD(a4) - a4) >> 31)) >> 1, a4, a5);
    v32 = result;
    goto LABEL_43;
  }

  v82 = result;
  v83 = v10;
  v78 = v22;
  v79 = v8;
  if (v24 <= 1)
  {
    if (!v24)
    {
      v29 = (a5 >> 49) & 0x7F;
LABEL_42:
      result = specialized RandomAccessCollection<>.index(_:offsetBy:)(0, v29, a4, a5);
      v32 = result;
      v33 = 0;
      goto LABEL_43;
    }

    goto LABEL_37;
  }

  if (v24 != 2)
  {
    v29 = 0;
    goto LABEL_42;
  }

  result = *(a4 + 16);
  v30 = *(a4 + 24);
  v28 = __OFSUB__(v30, result);
  v31 = v30 - result;
  if (v28)
  {
LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

  result = specialized RandomAccessCollection<>.index(_:offsetBy:)(result, v31 / 2, a4, a5);
  v32 = result;
  v33 = *(a4 + 16);
LABEL_43:
  if (v32 < v33)
  {
    __break(1u);
    goto LABEL_111;
  }

  v37 = Data._Representation.subscript.getter();
  result = _s4VDAF22PreambleKWayInputShareV4fromACyxGqd___tKcSkRd__s5UInt8V7ElementRtd__lufCAA19XofHmacSha256Aes128C_10Foundation4DataVTt1g5(v37, v38, &v84);
  v22 = v83;
  if (v83)
  {
LABEL_54:

    return v22;
  }

  if (v24 > 1)
  {
    if (v24 == 2)
    {
      v39 = *(a4 + 24);
    }

    else
    {
      v39 = 0;
    }
  }

  else if (v24)
  {
    v39 = a4 >> 32;
  }

  else
  {
    v39 = BYTE6(a5);
  }

  if (v39 < v32)
  {
    goto LABEL_112;
  }

  v77 = v84;
  v40 = Data._Representation.subscript.getter();
  _s4VDAF22PreambleKWayInputShareV4fromACyxGqd___tKcSkRd__s5UInt8V7ElementRtd__lufCAA19XofHmacSha256Aes128C_10Foundation4DataVTt1g5(v40, v41, &v84);
  v42 = v84;
  if (*(v77 + 2) != a8 || *(v84 + 2) != a8)
  {

    if (v24 > 1)
    {
LABEL_65:
      if (v24 == 2)
      {
        v48 = *(a4 + 16);
        v47 = *(a4 + 24);
        v9 = v47 - v48;
        if (!__OFSUB__(v47, v48))
        {
          goto LABEL_70;
        }

        __break(1u);
      }

      goto LABEL_69;
    }

    if (v24)
    {
      v36 = HIDWORD(a4) - a4;
      if (!__OFSUB__(HIDWORD(a4), a4))
      {
        goto LABEL_40;
      }

      __break(1u);
      goto LABEL_65;
    }

LABEL_29:
    v9 = BYTE6(a5);
LABEL_70:
    lazy protocol witness table accessor for type PreambleError and conformance PreambleError();
    v22 = swift_allocError();
    *(v49 + 8) = 0;
    *(v49 + 16) = 0;
    *v49 = v9;
    v50 = 1;
LABEL_85:
    *(v49 + 24) = v50;
    swift_willThrow();
    return v22;
  }

  v83 = 0;
  v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a8, 0, MEMORY[0x277D84F90]);
  specialized PreambleKWay.innerLevelCount.getter(a6, v9, a8);
  v11 = v43;
  v13 = _s4VDAF12VDAFProtocolPAAE19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA12PreambleKWayVyAA7Field32Vs5Int32VAA19XofHmacSha256Aes128CG_Tt0B5(0xAu);
  v15 = _s4VDAF12VDAFProtocolPAAE19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA12PreambleKWayVyAA7Field32Vs5Int32VAA19XofHmacSha256Aes128CG_Tt0B5(0xBu);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF17DPFOneBlockSparseCyAA7Field32VAA19XofHmacSha256Aes128CGMd, &_s4VDAF17DPFOneBlockSparseCyAA7Field32VAA19XofHmacSha256Aes128CGMR);
  result = swift_allocObject();
  v76 = result;
  if (__OFSUB__(v14, 1))
  {
    goto LABEL_116;
  }

  v16 = 0xD000000000000011;
  v8 = v79;
  v75 = v42;
  if (((v14 - 1) & v14) != 0)
  {
    v44 = "ntrol bits value not 0 or 1: ";
    v45 = 0xD00000000000001DLL;
    v46 = 7;
LABEL_74:

    v51 = v44 | 0x8000000000000000;
    lazy protocol witness table accessor for type PreambleError and conformance PreambleError();
    v22 = swift_allocError();
    *v52 = v45;
    *(v52 + 8) = v51;
    *(v52 + 16) = 0;
    *(v52 + 24) = v46;
    swift_willThrow();
    swift_deallocPartialClassInstance();
    goto LABEL_54;
  }

  if (!__OFSUB__(v9, 1))
  {
    if (((v9 - 1) & v9) != 0)
    {
      v44 = "Dimension must be power of 2.";
      v45 = 0xD00000000000001ELL;
      v46 = 8;
      goto LABEL_74;
    }

    goto LABEL_76;
  }

LABEL_119:
  __break(1u);
  return result;
}

uint64_t specialized Zip2Sequence.Iterator.next()()
{
  if (*(v0 + 32))
  {
    return 0;
  }

  v2 = *(v0 + 8);
  v3 = *(*v0 + 16);
  if (v2 == v3)
  {
    goto LABEL_6;
  }

  if (v2 >= v3)
  {
    __break(1u);
  }

  else
  {
    v4 = *(*v0 + 8 * v2 + 32);
    *(v0 + 8) = v2 + 1;
    v5 = *(v0 + 16);
    v6 = *(v0 + 24);
    v7 = *(v5 + 16);
    if (v6 == v7)
    {
LABEL_6:
      result = 0;
      *(v0 + 32) = 1;
      return result;
    }

    if (v6 < v7)
    {
      v8 = *(v5 + 8 * v6 + 32);
      *(v0 + 24) = v6 + 1;

      return v4;
    }
  }

  __break(1u);
  return result;
}

uint64_t PreambleKWay<>.shardAndEncode(_:nonce:seedBytes:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v12 = *v5;
  v13 = v5[1];
  v14 = v5[2];
  outlined copy of Data._Representation(a2, a3);
  v15 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(a2, a3);
  v16 = specialized PreambleKWay.shard<A>(_:nonce:seedBytes:)(&v31, a1, v15, a4, a5, v12, v13, v14);

  if (v6)
  {
    return a5;
  }

  a5 = specialized VDAFEncodable.encodedData.getter(v31);

  v17 = *(v16 + 16);
  if (!v17)
  {
LABEL_11:

    return a5;
  }

  v32 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17, 0);
  v19 = 32;
  v20 = v32;
  while (1)
  {
    v21 = *(v16 + v19);
    v22 = *(v21 + 16);
    v23 = v22 ? *(*(v21 + 32) + 16) : 0;
    v24 = v23 * v22;
    if ((v23 * v22) >> 64 != (v23 * v22) >> 63)
    {
      break;
    }

    v25 = *(v16 + v19);

    *&v31 = specialized Data._Representation.init(capacity:)(v24);
    *(&v31 + 1) = v26;
    specialized Collection<>.encode<A>(into:)(&v31, v21);

    v27 = v31;
    v32 = v20;
    v29 = *(v20 + 16);
    v28 = *(v20 + 24);
    if (v29 >= v28 >> 1)
    {
      v30 = v31;
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1);
      v27 = v30;
      v20 = v32;
    }

    *(v20 + 16) = v29 + 1;
    *(v20 + 16 * v29 + 32) = v27;
    v19 += 8;
    if (!--v17)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

char *PreambleKWay<>.shardAndEncodeIntoBytes(_:nonce:seedBytes:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, char *a5)
{
  v12 = *v5;
  v13 = v5[1];
  v14 = v5[2];
  outlined copy of Data._Representation(a2, a3);
  v15 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(a2, a3);
  v16 = specialized PreambleKWay.shard<A>(_:nonce:seedBytes:)(&v26, a1, v15, a4, a5, v12, v13, v14);

  if (!v6)
  {
    a5 = specialized VDAFEncodable.encodedBytes.getter(v26);

    v17 = *(v16 + 16);
    if (v17)
    {
      v26 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17, 0);
      v18 = 32;
      v19 = v26;
      do
      {
        v20 = *(v16 + v18);

        v22 = specialized VDAFEncodable.encodedBytes.getter(v21);

        v26 = v19;
        v24 = *(v19 + 16);
        v23 = *(v19 + 24);
        if (v24 >= v23 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
          v19 = v26;
        }

        *(v19 + 16) = v24 + 1;
        *(v19 + 8 * v24 + 32) = v22;
        v18 += 8;
        --v17;
      }

      while (v17);
    }
  }

  return a5;
}

void PreambleKWay<>.prepareInitAndEncodeIntoBytes(verifyKey:aggregatorID:nonce:encodedPublicShare:encodedInputShare:)(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, _BYTE *a6, _BYTE *a7, size_t a8, size_t a9)
{
  v16 = *v9;
  v15 = v9[1];
  v17 = v9[2];
  outlined copy of Data._Representation(a1, a2);
  v18 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(a1, a2);
  outlined copy of Data._Representation(a4, a5);
  v19 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(a4, a5);
  specialized PreambleKWay.innerLevelCount.getter(v16, v15, v17);
  v21 = 34 * v20;
  if ((v20 * 34) >> 64 != (34 * v20) >> 63)
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((v15 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v22 = __OFADD__(v21, 4 * v15);
  v23 = v21 + 4 * v15;
  if (v22)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  *&v35 = 32;
  *(&v35 + 1) = v15;
  v36 = v20;
  v37 = 0;
  v38 = v17;
  v39 = v23;
  v40 = 0;
  v24 = _sSa4VDAFAA13VDAFDecodableRzlE4from9parameterSayxGqd___18DecodableParameterQzSg07elementF0_Si5countSi0G13EncodedLengthtSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA25OneBlockSparsePublicShareVyAA7Field32VG_SWTt1B5(a6, a7, &v35);
  if (v33)
  {

    return;
  }

  v25 = v24;
  _s4VDAF22PreambleKWayInputShareV4fromACyxGqd___tKcSkRd__s5UInt8V7ElementRtd__lufCAA19XofHmacSha256Aes128C_SWTt1g5(a8, a9, &v34);
  _s4VDAF12PreambleKWayV11prepareInit9verifyKey12aggregatorID5nonce11publicShare05inputL09parameterAA0B12PrepareStateVyxG_AA0boL0VyxGtSays5UInt8VG_SiAsA0bc6PublicL0VyxGAA0bc5InputL0Vyq0_GAA11VoidCodableVtKFAA7Field32V_s5Int32VAA19XofHmacSha256Aes128CTt6B5(&v41, v26, v18, a3, v19, v25, v34, v16, v15, v17);

  v27 = v41;
  v28 = *(v41 + 2);
  if (!(v28 >> 61))
  {
    v29 = MEMORY[0x277D84F90];
    v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 4 * v28, 0, MEMORY[0x277D84F90]);
    specialized Collection<>.encode<A>(into:)(&v41, v27);

    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 0, 0, v29);
    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t PreambleKWay<>.encodedPrepareMessageFrom(encodedShares:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v7 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v7;
    v3 = *(v7 + 16);
    do
    {
      v8 = v2;
      v4 = *(v2 + 24);
      v5 = v3 + 1;
      if (v3 >= v4 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v3 + 1, 1);
        v2 = v8;
      }

      *(v2 + 16) = v5;
      v3 = v5;
      --v1;
    }

    while (v1);
  }

  return 0;
}

char *PreambleKWay<>.prepareNextAndEncodeIntoBytes(aggregatorID:encodedState:encodedMessage:)(uint64_t a1, char *a2, _BYTE *a3)
{
  result = _sSa4VDAFAA12FieldElementRzlE4fromSayxGqd___tKcSkRd__s5UInt8V0C0Rtd__lufCAA7Field32V_SWTt0g5(a2, a3);
  if (v3)
  {
    return v5;
  }

  v6 = *(result + 2);
  if (!(v6 >> 61))
  {
    v7 = result;
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 4 * v6, 0, MEMORY[0x277D84F90]);
    specialized Collection<>.encode<A>(into:)(&v8, v7);

    return v8;
  }

  __break(1u);
  return result;
}

uint64_t *PreambleKWay<>.encodedAggregateShare(_:)(uint64_t *result)
{
  v1 = *result;
  v2 = *(*result + 16);
  if (v2 >> 61)
  {
    __break(1u);
  }

  else
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 4 * v2, 0, MEMORY[0x277D84F90]);
    specialized Collection<>.encode<A>(into:)(&v3, v1);
    return v3;
  }

  return result;
}

char *PreambleKWay<>.outputShare(from:)@<X0>(char *a1@<X0>, _BYTE *a2@<X1>, char **a3@<X8>)
{
  result = _sSa4VDAFAA12FieldElementRzlE4fromSayxGqd___tKcSkRd__s5UInt8V0C0Rtd__lufCAA7Field32V_SWTt0g5(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t PreambleKWay<>.unshard(_:numOfMeasurements:)(void *a1)
{
  v2 = v1[1];
  v3 = v1[2];
  return _s4VDAF12PreambleKWayV7unshard_17numOfMeasurements9parameterSayq_Gqd___SiAA11VoidCodableVtKSkRd__AA14AggregateShareVyxG7ElementRtd__lFAA7Field32V_s5Int32VAA19XofHmacSha256Aes128CSayAKyAPGGTt1B5Tf4ndn_n(a1, *v1);
}

uint64_t PreambleKWay<>.unshardAndEncodeIntoBytes(_:numOfMeasurements:)(void *a1)
{
  v3 = v1[1];
  v4 = v1[2];
  result = _s4VDAF12PreambleKWayV7unshard_17numOfMeasurements9parameterSayq_Gqd___SiAA11VoidCodableVtKSkRd__AA14AggregateShareVyxG7ElementRtd__lFAA7Field32V_s5Int32VAA19XofHmacSha256Aes128CSayAKyAPGGTt1B5Tf4ndn_n(a1, *v1);
  if (!v2)
  {
    v6 = specialized VDAFEncodable.encodedBytes.getter(result);

    return v6;
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v3 = MEMORY[0x2743B3150](*(v1 + 40), a1);

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySiSaySiGGMd, &_ss18_DictionaryStorageCySiSaySiGGMR);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySiSay4VDAF4LeafVyAC7Field32VGGGMd, &_ss18_DictionaryStorageCySiSay4VDAF4LeafVyAC7Field32VGGGMR);
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi4VDAF10LeafParentC14SuperBlockDataCyAC7Field32V_GGMd, &_ss18_DictionaryStorageCySi4VDAF10LeafParentC14SuperBlockDataCyAC7Field32V_GGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v24 = *(v21 + 8 * v20);
      }

      result = MEMORY[0x2743B3150](*(v8 + 40), v22);
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_35;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v5;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = v19 | (v11 << 6);
      v23 = *(v7 + 56);
      v24 = *(*(v7 + 48) + 8 * v22);
      v25 = *(v23 + 8 * v22);
      if ((a2 & 1) == 0)
      {
        v26 = *(v23 + 8 * v22);
      }

      result = MEMORY[0x2743B3150](*(v10 + 40), v24);
      v27 = -1 << *(v10 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v24;
      *(*(v10 + 56) + 8 * v18) = v25;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v5 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v35;
    if (v34 >= 64)
    {
      bzero((v7 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void *specialized _NativeDictionary.copy()()
{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySiSaySiGGMd, &_ss18_DictionaryStorageCySiSaySiGGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySiSay4VDAF4LeafVyAC7Field32VGGGMd, &_ss18_DictionaryStorageCySiSay4VDAF4LeafVyAC7Field32VGGGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi4VDAF10LeafParentC14SuperBlockDataCyAC7Field32V_GGMd, &_ss18_DictionaryStorageCySi4VDAF10LeafParentC14SuperBlockDataCyAC7Field32V_GGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

void *specialized _NativeDictionary.copy()(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SaySiGTt0g5Tf4g_n(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySiSaySiGGMd, &_ss18_DictionaryStorageCySiSaySiGGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_4VDAF10LeafParentC14SuperBlockDataCyAC7Field32V_GTt0g5Tf4g_n(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi4VDAF10LeafParentC14SuperBlockDataCyAC7Field32V_GGMd, &_ss18_DictionaryStorageCySi4VDAF10LeafParentC14SuperBlockDataCyAC7Field32V_GGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s4VDAF12PreambleKWayV7unshard_17numOfMeasurements9parameterSayq_Gqd___SiAA11VoidCodableVtKSkRd__AA14AggregateShareVyxG7ElementRtd__lFAA7Field32V_s5Int32VAA19XofHmacSha256Aes128CSayAKyAPGGTt1B5Tf4ndn_n(void *a1, unint64_t a2)
{
  v21 = a1;
  v2 = a1[2];
  if (v2 != 2)
  {
    lazy protocol witness table accessor for type PreambleError and conformance PreambleError();
    swift_allocError();
    *(v16 + 8) = 0;
    *(v16 + 16) = 0;
    *v16 = v2;
    *(v16 + 24) = 0;
LABEL_24:
    swift_willThrow();
    return v2;
  }

  v3 = 1 << a2;
  if (a2 >= 0x40)
  {
    v3 = 0;
  }

  if (a2 <= 0x40)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (*(a1[4] + 16) != v4 || *(a1[5] + 16) != v4)
  {
    lazy protocol witness table accessor for type PreambleError and conformance PreambleError();
    swift_allocError();
    *(v17 + 8) = 0;
    *(v17 + 16) = 0;
    *v17 = 2;
    *(v17 + 24) = 12;
    goto LABEL_24;
  }

  MEMORY[0x28223BE20](a1, a2);
  v18[2] = &v21;
  v6 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_4VDAF7Field32Vs5NeverOTg5(partial apply for specialized closure #2 in Preamble.unshard<A>(_:numOfMeasurements:parameter:), v18, 0, v5);
  v7 = *(v6 + 16);
  if (!v7)
  {

    return MEMORY[0x277D84F90];
  }

  v19 = v6;
  v20 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
  result = v19;
  v2 = v20;
  v9 = 0;
  while (v9 < *(result + 16))
  {
    v10 = *(result + 4 * v9 + 32);
    v11 = v10 + 4293918721 * (-1048577 * v10);
    if (v11 >= 0xFFF0000100000000)
    {
      v12 = 0;
    }

    else
    {
      v12 = HIDWORD(v11);
    }

    if (v12 <= 0x7FF80000)
    {
      v13 = v12;
    }

    else
    {
      v13 = v12 + 0xFFFFF;
    }

    v20 = v2;
    v15 = *(v2 + 16);
    v14 = *(v2 + 24);
    if (v15 >= v14 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
      result = v19;
      v2 = v20;
    }

    ++v9;
    *(v2 + 16) = v15 + 1;
    *(v2 + 4 * v15 + 32) = v13;
    if (v7 == v9)
    {

      return v2;
    }
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type SHA256 and conformance SHA256()
{
  result = lazy protocol witness table cache variable for type SHA256 and conformance SHA256;
  if (!lazy protocol witness table cache variable for type SHA256 and conformance SHA256)
  {
    type metadata accessor for SHA256();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SHA256 and conformance SHA256);
  }

  return result;
}

uint64_t _sSays5UInt8VGSayxG10Foundation15ContiguousBytesAeBRszlWlTm_0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t PreambleKWayInputShare.init<A>(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v78 = a6;
  v103 = a5;
  v10 = *(*(a5 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v98 = *(AssociatedTypeWitness - 8);
  v11 = *(v98 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v12);
  v91 = &v77 - v13;
  v14 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v97 = *(TupleTypeMetadata2 - 8);
  v15 = *(v97 + 8);
  v17 = MEMORY[0x28223BE20](TupleTypeMetadata2, v16);
  v89 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v19);
  v88 = &v77 - v20;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v87 = type metadata accessor for Range();
  v80 = *(v87 - 8);
  v21 = *(v80 + 64);
  v23 = MEMORY[0x28223BE20](v87, v22);
  v86 = &v77 - v24;
  v106 = v14;
  v82 = *(v14 - 8);
  v25 = *(v82 + 64);
  v27 = MEMORY[0x28223BE20](v23, v26);
  v95 = &v77 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v27, v29);
  v93 = &v77 - v31;
  MEMORY[0x28223BE20](v30, v32);
  v96 = &v77 - v33;
  v34 = (*(a4 + 8))(a2, a4);
  result = dispatch thunk of Collection.count.getter();
  v104 = v34;
  if (v34)
  {
    if (result == 0x8000000000000000 && v104 == -1)
    {
      goto LABEL_24;
    }

    if (result % v104)
    {
      v107 = 0;
      v108 = 0xE000000000000000;
      _StringGuts.grow(_:)(37);
      type metadata accessor for PreambleKWayInputShare();
      v36 = _typeName(_:qualified:)();
      v38 = v37;

      v107 = v36;
      v108 = v38;
      MEMORY[0x2743B25F0](0xD000000000000018, 0x8000000270C532F0);
      v109 = v104;
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v39);

      MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
      v109 = dispatch thunk of Collection.count.getter();
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v40);

      v41 = v107;
      v42 = v108;
      lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
      swift_allocError();
      *v43 = v41;
      v43[1] = v42;
      swift_willThrow();
      return (*(*(a3 - 8) + 8))(a1, a3);
    }

    result = dispatch thunk of Collection.count.getter();
    if (result == 0x8000000000000000 && v104 == -1)
    {
      goto LABEL_25;
    }

    v44 = v104;
    v100 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, (result / v44) & ~((result / v44) >> 63), 0, MEMORY[0x277D84F90]);
    v101 = a1;
    v102 = a3;
    v45 = dispatch thunk of Collection.count.getter();
    v46 = v45 >= 0;
    v85 = v45;
    if (v44 > 0)
    {
      v46 = v45 < 1;
    }

    v47 = v96;
    if (v46)
    {
LABEL_11:
      result = (*(*(v102 - 8) + 8))(v101);
      *v78 = v100;
      return result;
    }

    v99 = v10;
    v48 = 0;
    v49 = (v82 + 8);
    v84 = (v82 + 16);
    v83 = (v97 + 16);
    v82 += 32;
    v81 = (v97 + 32);
    v80 += 8;
    v79 = (v98 + 8);
    v50 = v95;
    v105 = v49;
    while (1)
    {
      v51 = v48 + v104;
      if (__OFADD__(v48, v104))
      {
        v51 = ((v48 + v104) >> 63) ^ 0x8000000000000000;
      }

      v98 = v51;
      v52 = v93;
      dispatch thunk of Collection.startIndex.getter();
      v53 = v105;
      dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
      v54 = *v53;
      (*v53)(v52, v106);
      dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
      result = dispatch thunk of static Comparable.<= infix(_:_:)();
      if ((result & 1) == 0)
      {
        break;
      }

      v55 = *v84;
      v56 = v88;
      v57 = v106;
      (*v84)(v88, v47, v106);
      v58 = TupleTypeMetadata2;
      v55(&v56[*(TupleTypeMetadata2 + 48)], v50, v57);
      v59 = v89;
      (*v83)(v89, v56, v58);
      v60 = *(v58 + 48);
      v61 = *v82;
      v62 = v86;
      (*v82)(v86, v59, v57);
      v54(&v59[v60], v57);
      (*v81)(v59, v56, v58);
      v63 = v57;
      v64 = v87;
      v61(&v62[*(v87 + 36)], &v59[*(v58 + 48)], v63);
      v97 = v54;
      v54(v59, v63);
      v65 = v91;
      dispatch thunk of Collection.subscript.getter();
      (*v80)(v62, v64);
      v66 = AssociatedTypeWitness;
      v67 = swift_getAssociatedConformanceWitness();
      v68 = specialized Seed.init<A>(from:parameter:)(v65, v66, v67);
      (*v79)(v65, v66);
      v69 = v100;
      v71 = *(v100 + 2);
      v70 = *(v100 + 3);
      if (v71 >= v70 >> 1)
      {
        v69 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v70 > 1), v71 + 1, 1, v100);
      }

      v50 = v95;
      v72 = v106;
      v73 = v97;
      v97(v95, v106);
      v74 = v96;
      v73(v96, v72);
      *(v69 + 2) = v71 + 1;
      v100 = v69;
      v75 = &v69[8 * v71];
      v47 = v74;
      *(v75 + 4) = v68;
      v48 = v98;
      v76 = v85 >= v98;
      if (v104 > 0)
      {
        v76 = v98 >= v85;
      }

      if (v76)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t PreambleKWayInputShare.init<A>(from:parameter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v14 = *(a4 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, a1, v18);
  PreambleKWayInputShare.init<A>(from:)(v17, a3, a4, a5, a6, &v21);
  result = (*(v14 + 8))(a1, a4);
  if (!v7)
  {
    *a7 = v21;
  }

  return result;
}

uint64_t PreambleKWayInputShare.encodedLength.getter()
{
  v1 = *(*v0 + 16);
  if (v1)
  {
    v2 = *(*(*v0 + 32) + 16);
  }

  else
  {
    v2 = 0;
  }

  result = v2 * v1;
  if ((v2 * v1) >> 64 != (v2 * v1) >> 63)
  {
    __break(1u);
  }

  return result;
}

uint64_t PreambleKWayInputShare.encode<A>(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay4VDAF4SeedVGMd, &_sSay4VDAF4SeedVGMR);
  v9 = lazy protocol witness table accessor for type [Seed] and conformance [A]();
  return Collection<>.encode<A>(into:)(a1, v8, a3, v9, a4, &protocol witness table for Seed);
}

unint64_t lazy protocol witness table accessor for type [Seed] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Seed] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Seed] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay4VDAF4SeedVGMd, &_sSay4VDAF4SeedVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Seed] and conformance [A]);
  }

  return result;
}

uint64_t type metadata instantiation function for PreambleKWayInputShare()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

double PreambleKWayPublicShareDecodableParameter.init(innerLevelCount:keptBlockCount:seedSize:blockSize:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  OneBlockSparsePublicShareDecodableParameter.init(innerLevelCount:seedSize:blockSize:)(a1, a3, a4, &v9);
  v7 = v10;
  result = *&v9;
  *a5 = v9;
  *(a5 + 16) = v7;
  *(a5 + 24) = a2;
  return result;
}

uint64_t PreambleKWayPublicShare.init<A>(from:parameter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v9 + 32) == 1)
  {
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v15 = 0;
    v15[1] = 0;
    swift_willThrow();
    return (*(v7 + 8))(a1, a4);
  }

  else
  {
    v27 = v12;
    v28 = v10;
    v17 = v9[2];
    v29 = v9[3];
    v30 = v11;
    v18 = v9[1];
    v31 = *v9;
    v19 = v31;
    v32 = v18;
    v33 = v17;
    v38 = v4;
    v20 = type metadata accessor for OneBlockSparsePublicShareDecodableParameter();
    v21 = OneBlockSparsePublicShareDecodableParameter.encodedLength.getter(v20);
    (*(v7 + 16))(v14, a1, a4);
    v31 = v19;
    v32 = v18;
    v33 = v17;
    v34 = 0;
    v35 = v29;
    v36 = v21;
    v37 = 0;
    v22 = type metadata accessor for OneBlockSparsePublicShare();
    WitnessTable = swift_getWitnessTable();
    v24 = v38;
    v25 = Array<A>.init<A>(from:parameter:)(v14, &v31, v22, a4, WitnessTable, v30);
    result = (*(v7 + 8))(a1, a4);
    if (!v24)
    {
      *v27 = v25;
    }
  }

  return result;
}

uint64_t static PreambleKWayPublicShare.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for OneBlockSparsePublicShare();
  swift_getWitnessTable();

  return static Array<A>.== infix(_:_:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PreambleKWayPublicShare<A>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return static PreambleKWayPublicShare.== infix(_:_:)(a1, a2);
}

__n128 PreambleKWayPublicShareDecodableParameter.shares.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u64[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = v2;
  return result;
}

uint64_t protocol witness for VDAFDecodable.init<A>(from:parameter:) in conformance PreambleKWayPublicShare<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a2 + 32);
  v7 = *(a2 + 16);
  v11[0] = *a2;
  v11[1] = v7;
  v12 = v6;
  v8 = *(a5 + 16);
  v9 = *(a5 + 24);
  return PreambleKWayPublicShare.init<A>(from:parameter:)(a1, v11, v8, a3);
}

uint64_t PreambleKWayPublicShare.encodedLength.getter(uint64_t a1)
{
  v7 = *v1;
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  type metadata accessor for OneBlockSparsePublicShare();
  v4 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  return Collection<>.encodedLength.getter(v4, WitnessTable, &protocol witness table for OneBlockSparsePublicShare<A>);
}

uint64_t PreambleKWayPublicShare.encode<A>(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = *v4;
  v9 = *(a2 + 16);
  v8 = *(a2 + 24);
  type metadata accessor for OneBlockSparsePublicShare();
  v10 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  return Collection<>.encode<A>(into:)(a1, v10, a3, WitnessTable, a4, &protocol witness table for OneBlockSparsePublicShare<A>);
}

uint64_t type metadata instantiation function for PreambleKWayPublicShare()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for PreambleKWayPublicShareDecodableParameter()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for PreambleKWayPublicShareDecodableParameter(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PreambleKWayPublicShareDecodableParameter(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

void discreteFourierTransform<A, B, C>(input:size:output:)(uint64_t a1, unint64_t a2, uint64_t a3, void (**a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v183 = a3;
  v176 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v164 = a10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v131[1] = AssociatedTypeWitness;
  v151 = swift_getAssociatedTypeWitness();
  v17 = *(v151 - 8);
  v18 = v17[8];
  v20 = MEMORY[0x28223BE20](v151, v19);
  v150 = v131 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v149 = v131 - v24;
  v26 = MEMORY[0x28223BE20](v23, v25);
  v148 = v131 - v27;
  v156 = *(a5 - 8);
  v28 = *(v156 + 8);
  v30 = MEMORY[0x28223BE20](v26, v29);
  v153 = v131 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = a6;
  v157 = *(a6 - 8);
  v32 = *(v157 + 64);
  v34 = MEMORY[0x28223BE20](v30, v33);
  v142 = v131 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v34, v36);
  v141 = v131 - v38;
  v40 = MEMORY[0x28223BE20](v37, v39);
  v140 = v131 - v41;
  v43 = MEMORY[0x28223BE20](v40, v42);
  v135 = v131 - v44;
  v46 = MEMORY[0x28223BE20](v43, v45);
  v163 = v131 - v47;
  MEMORY[0x28223BE20](v46, v48);
  v175 = v131 - v49;
  v168 = a7;
  v50 = *(*(a7 + 8) + 8);
  v167 = swift_getAssociatedTypeWitness();
  v51 = *(v167 - 8);
  v52 = *(v51 + 64);
  v54 = MEMORY[0x28223BE20](v167, v53);
  v162 = v131 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54, v56);
  v161 = (v131 - v57);
  v144 = a8;
  v165 = *(a8 + 8);
  v182 = a5;
  v58 = swift_getAssociatedTypeWitness();
  v59 = *(v58 - 8);
  v60 = v59[8];
  v62 = MEMORY[0x28223BE20](v58, v61);
  v152 = v131 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = MEMORY[0x28223BE20](v62, v64);
  v171 = v131 - v66;
  v68 = MEMORY[0x28223BE20](v65, v67);
  v70 = v131 - v69;
  MEMORY[0x28223BE20](v68, v71);
  v178 = v131 - v72;
  specialized static BitReversal.indicesFor(_:)(a2);
  v177 = v73;
  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v173 = a9;
  v174 = v70;
  v181 = v58;
  v136 = a2;
  if (!a2)
  {

    v87 = v156;
    goto LABEL_11;
  }

  if (*(v177 + 2) < a2)
  {
LABEL_37:
    __break(1u);
    return;
  }

  v170 = v50;
  v155 = v17;
  v74 = 0;
  v75 = (v59 + 1);
  v147 = v59;
  v169 = (v59 + 2);
  v160 = (v51 + 8);
  v158 = (v157 + 16);
  v172 = a4;
  v159 = (v59 + 1);
  v76 = v174;
  do
  {
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
    v179 = *v75;
    (v179)(v76, v58);
    v180 = v74;
    v79 = v58;
    v80 = *(v177 + v74 + 4);
    if (v80 >= dispatch thunk of Collection.count.getter())
    {
      v77 = v178;
      (*v169)(v76, v178, v79);
      v78 = *(v164 + 8);
      dispatch thunk of static AdditiveArithmetic.zero.getter();
      dispatch thunk of MutableCollection.subscript.setter();
      v58 = v79;
    }

    else
    {
      v81 = v162;
      dispatch thunk of Collection.startIndex.getter();
      v82 = v161;
      dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
      v83 = *v160;
      v84 = v81;
      v85 = v167;
      (*v160)(v84, v167);
      (*v169)(v76, v178, v181);
      v86 = dispatch thunk of Collection.subscript.read();
      (*v158)(v175);
      v86(v184, 0);
      dispatch thunk of MutableCollection.subscript.setter();
      v77 = v178;
      v83(v82, v85);
      v75 = v159;
      v58 = v181;
    }

    v74 = (v180 + 1);
    (v179)(v77, v58);
  }

  while (v136 != v74);

  a2 = v136;
  v17 = v155;
  v87 = v156;
  v59 = v147;
LABEL_11:
  v132 = 0;
  v133 = __clz(__rbit64(a2));
  v131[2] = v164 + 72;
  v161 = (v164 + 88);
  v160 = (AssociatedConformanceWitness + 56);
  v159 = (v164 + 96);
  v146 = (v87 + 16);
  v180 = (v59 + 1);
  v139 = (v87 + 8);
  v179 = (v157 + 16);
  v147 = (v17 + 1);
  v172 = (v157 + 8);
  v138 = (v59 + 2);
  for (i = 1; ; i = v134)
  {
    if (i >= v133)
    {
      if ((i != v133) | v132 & 1)
      {
        return;
      }

      v132 = 1;
      v91 = v133;
    }

    else
    {
      v91 = i + 1;
    }

    v134 = v91;
    v92 = v164;
    v93 = v166;
    (*(v164 + 72))(v166, v164);
    static FieldElement.root(n:)(i, v93, v92, v135);
    if (i <= 0x3F)
    {
      v162 = 1 << i;
      v94 = 1 << i >> 1;
      if ((v94 & 0x8000000000000000) != 0)
      {
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      if (i)
      {
        break;
      }
    }

LABEL_12:
    v89 = *v172;
    v90 = v166;
    (*v172)(v135, v166);
    v89(v163, v90);
  }

  v143 = v136 >> i;
  v158 = swift_checkMetadataState();
  v167 = 0;
  v157 = *v161;
  v156 = *v160;
  v155 = *v159;
  v176 = 1 << i >> 1;
  while (1)
  {
    if (v167 >= v94)
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if (__OFADD__(v167, 1))
    {
      goto LABEL_34;
    }

    v137 = v167 + 1;
    v103 = v153;
    v104 = v181;
    v105 = v152;
    v106 = v183;
    if (v162 <= v136)
    {
      break;
    }

LABEL_21:
    v95 = v149;
    v96 = v166;
    v97 = v164;
    v98 = v157;
    (v157)(v166, v164);
    v99 = v150;
    v98(v96, v97);
    v100 = v148;
    v156(v95, v99);
    v101 = *v147;
    v102 = v151;
    (*v147)(v99, v151);
    v101(v95, v102);
    (v155)(v100, v96, v97);
    v167 = v137;
    v94 = v176;
    if (v137 == v176)
    {
      goto LABEL_12;
    }
  }

  v107 = 0;
  v145 = *v146;
  while (1)
  {
    v145(v103, v106, v182);
    dispatch thunk of Collection.startIndex.getter();
    if ((v162 * v107) >> 64 != (v162 * v107) >> 63)
    {
      break;
    }

    if (__OFADD__(v162 * v107, v167))
    {
      goto LABEL_31;
    }

    v170 = v107 + 1;
    v108 = v182;
    dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
    v178 = *v180;
    (v178)(v105, v104);
    (*v139)(v103, v108);
    v109 = dispatch thunk of Collection.subscript.read();
    v110 = *v179;
    v111 = v166;
    (*v179)(v175);
    v109(v184, 0);
    v112 = v174;
    dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
    v113 = dispatch thunk of Collection.subscript.read();
    v114 = v141;
    v177 = v110;
    v110(v141);
    v113(v184, 0);
    (v178)(v112, v181);
    v115 = v142;
    (v110)(v142, v163, v111);
    v116 = v140;
    v117 = v164;
    FieldElement.init(other:)(v115, v111, v164);
    v118 = v149;
    v119 = v157;
    (v157)(v111, v117);
    v120 = v150;
    v119(v111, v117);
    v121 = v148;
    v156(v118, v120);
    v122 = *v147;
    v123 = v120;
    v124 = v151;
    (*v147)(v123, v151);
    v122(v118, v124);
    (v155)(v121, v111, v117);
    v169 = *v172;
    v169(v114, v111);
    v125 = v171;
    (*v138)(v174, v171, v181);
    v126 = v175;
    (v177)(v115, v175, v111);
    FieldElement.init(other:)(v115, v111, v117);
    v168 = *(v117 + 8);
    dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
    dispatch thunk of MutableCollection.subscript.setter();
    dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
    (v177)(v115, v126, v111);
    v127 = v115;
    v106 = v183;
    FieldElement.init(other:)(v127, v111, v117);
    dispatch thunk of static AdditiveArithmetic.-= infix(_:_:)();
    v103 = v153;
    dispatch thunk of MutableCollection.subscript.setter();
    v128 = v169;
    v169(v116, v111);
    v129 = v126;
    v105 = v152;
    v130 = v111;
    v107 = v170;
    v128(v129, v130);
    v104 = v181;
    (v178)(v125, v181);
    if (v143 == v107)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
}

uint64_t inverseDiscreteFourierTransform<A, B, C>(input:size:output:)(uint64_t a1, unint64_t a2, uint64_t a3, void (**a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v133 = a8;
  v130 = a7;
  v132 = a5;
  v129 = a4;
  v131 = a3;
  v137 = a2;
  v128 = a1;
  v138 = a10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v151 = AssociatedConformanceWitness;
  v152 = AssociatedTypeWitness;
  v13 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  v145 = v13[3];
  v155 = *(v145 + 2);
  v154 = swift_getAssociatedTypeWitness();
  v14 = *(*(v154 - 8) + 64);
  MEMORY[0x28223BE20](v154, v15);
  v153 = &v124 - v16;
  v17 = swift_checkMetadataState();
  v150 = *(v17 - 8);
  v18 = *(v150 + 64);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v147 = &v124 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v156 = &v124 - v24;
  v26 = MEMORY[0x28223BE20](v23, v25);
  v140 = &v124 - v27;
  v29 = MEMORY[0x28223BE20](v26, v28);
  v31 = &v124 - v30;
  v33 = MEMORY[0x28223BE20](v29, v32);
  v149 = &v124 - v34;
  v36 = MEMORY[0x28223BE20](v33, v35);
  v144 = &v124 - v37;
  v39 = MEMORY[0x28223BE20](v36, v38);
  v135 = &v124 - v40;
  v42 = MEMORY[0x28223BE20](v39, v41);
  v139 = &v124 - v43;
  v45 = MEMORY[0x28223BE20](v42, v44);
  v127 = &v124 - v46;
  v48 = MEMORY[0x28223BE20](v45, v47);
  v50 = &v124 - v49;
  v136 = *(a6 - 8);
  v51 = *(v136 + 64);
  v53 = MEMORY[0x28223BE20](v48, v52);
  v55 = &v124 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = MEMORY[0x28223BE20](v53, v56);
  v59 = &v124 - v58;
  MEMORY[0x28223BE20](v57, v60);
  v62 = &v124 - v61;
  *&v157 = v137;
  v148 = lazy protocol witness table accessor for type Int and conformance Int();
  dispatch thunk of BinaryInteger.init<A>(_:)();
  v63 = v138;
  FieldElement.init(_:)(v50, a6, v138);
  (*(v136 + 16))(v55, v59, a6);
  v126 = v62;
  FieldElement.init(other:)(v55, a6, v63);
  v64 = *(v63 + 88);
  v125 = v59;
  v134 = a6;
  v64(a6, v63);
  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 64)
    {
      *&v157 = 0;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v72 = *(v13[2] + 8);
      v73 = dispatch thunk of static Equatable.== infix(_:_:)();
      v67 = v150;
      (*(v150 + 8))(v50, v17);
      v66 = v151;
      if (v73)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v65 = dispatch thunk of BinaryInteger._lowWord.getter();
      v66 = v151;
      v67 = v150;
      if (!v65)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    v68 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v69 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v68)
    {
      v67 = v150;
      v66 = v151;
      if (v69 > 64)
      {
        *&v157 = 0;
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v70 = *(v13[2] + 8);
        v71 = dispatch thunk of static Equatable.== infix(_:_:)();
        goto LABEL_17;
      }

      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v75 = *(v13[4] + 8);
      v76 = dispatch thunk of static Comparable.>= infix(_:_:)();
      (*(v67 + 8))(v50, v17);
      if ((v76 & 1) != 0 && !dispatch thunk of BinaryInteger._lowWord.getter())
      {
        goto LABEL_15;
      }
    }

    else
    {
      v66 = v151;
      if (v69 >= 64)
      {
        goto LABEL_16;
      }

      v74 = dispatch thunk of BinaryInteger._lowWord.getter();
      v67 = v150;
      if (!v74)
      {
        do
        {
LABEL_15:
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
LABEL_16:
          *&v157 = 0;
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v77 = *(v13[2] + 8);
          v71 = dispatch thunk of static Equatable.== infix(_:_:)();
          v67 = v150;
LABEL_17:
          (*(v67 + 8))(v50, v17);
        }

        while ((v71 & 1) != 0);
      }
    }
  }

  v124 = a9;
  v146 = swift_checkMetadataState();
  (*(v66 + 24))(v146, v66);
  v152 = swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  v78 = v144;
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v79 = *(v145 + 1);
  v80 = v135;
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v81 = v67;
  v82 = *(v67 + 8);
  v82(v78, v17);
  v82(v50, v17);
  v83 = *(v81 + 16);
  v81 += 16;
  v83(v149, v139, v17);
  v145 = v83;
  v83(v31, v80, v17);
  *&v157 = 1;
  dispatch thunk of BinaryInteger.init<A>(_:)();
  v84 = v151;
  (*(v151 + 64))(v50);
  v82(v50, v17);
  v143 = v84 + 56;
  v144 = v31;
  v85 = (v81 + 16);
  v150 = v81;
  v141 = (v81 + 16);
  v142 = v13;
  while (1)
  {
    v91 = v156;
    v145(v156, v31, v17);
    if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
    {
      v97 = dispatch thunk of BinaryInteger.bitWidth.getter();
      v94 = v147;
      if (v97 >= 128)
      {
        lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
        v157 = 0uLL;
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v99 = *(v13[2] + 8);
        goto LABEL_35;
      }

LABEL_28:
      v98 = lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
      goto LABEL_31;
    }

    v92 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v93 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v92)
    {
      v94 = v147;
      if (v93 > 128)
      {
        break;
      }

      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v95 = *(v13[4] + 8);
      v91 = v156;
      v96 = dispatch thunk of static Comparable.>= infix(_:_:)();
      v82(v50, v17);
      if ((v96 & 1) == 0)
      {
        v82(v91, v17);
        goto LABEL_36;
      }

      goto LABEL_28;
    }

    v94 = v147;
    if (v93 >= 128)
    {
      break;
    }

    v98 = lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
    v91 = v156;
LABEL_31:
    static FixedWidthInteger._truncatingInit<A>(_:)(v91, &type metadata for _UInt128, v17, v98, v13, &v157);
    v82(v91, v17);
    if (v157 == 0)
    {
      goto LABEL_50;
    }

LABEL_36:
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    dispatch thunk of static BinaryInteger.& infix(_:_:)();
    v82(v50, v17);
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      v102 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v103 = dispatch thunk of BinaryInteger.bitWidth.getter();
      v104 = v103 < 128;
      if (v102)
      {
        if (v103 > 128)
        {
          lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
          v157 = 0uLL;
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v105 = *(v13[2] + 8);
          v106 = v94;
          v107 = dispatch thunk of static Equatable.== infix(_:_:)();
          v82(v50, v17);
          v82(v106, v17);
          v86 = v151;
          v87 = v149;
          v88 = v146;
          if ((v107 & 1) == 0)
          {
            goto LABEL_20;
          }

          goto LABEL_21;
        }

        dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
        dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
        v112 = *(v13[4] + 8);
        v113 = dispatch thunk of static Comparable.>= infix(_:_:)();
        v82(v50, v17);
        if ((v113 & 1) == 0)
        {
          v82(v94, v17);
          v86 = v151;
          v87 = v149;
          v88 = v146;
          v85 = v141;
LABEL_20:
          v89 = v140;
          (*(v86 + 56))(v140, v87, v88, v86);
          v82(v89, v17);
          (*v85)(v89, v50, v17);
          goto LABEL_21;
        }

LABEL_44:
        v108 = lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
        static FixedWidthInteger._truncatingInit<A>(_:)(v94, &type metadata for _UInt128, v17, v108, v13, &v157);
        v82(v94, v17);
        v86 = v151;
        v87 = v149;
        v88 = v146;
        v85 = v141;
        if (v157 != 0)
        {
          goto LABEL_20;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v104 = dispatch thunk of BinaryInteger.bitWidth.getter() < 128;
    }

    if (v104)
    {
      goto LABEL_44;
    }

    lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
    v157 = 0uLL;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v109 = *(v13[2] + 8);
    v110 = v94;
    v111 = dispatch thunk of static Equatable.== infix(_:_:)();
    v82(v50, v17);
    v82(v110, v17);
    v86 = v151;
    v87 = v149;
    v88 = v146;
    v85 = v141;
    if ((v111 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_21:
    (*(v86 + 56))(v87, v87, v88, v86);
    v82(v87, v17);
    v90 = *v85;
    (*v85)(v87, v50, v17);
    *&v157 = 1;
    v31 = v144;
    v13 = v142;
    dispatch thunk of static BinaryInteger.>> infix<A>(_:_:)();
    v82(v31, v17);
    v90(v31, v50, v17);
  }

  lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
  v157 = 0uLL;
  dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
  v100 = *(v13[2] + 8);
  v91 = v156;
LABEL_35:
  v101 = dispatch thunk of static Equatable.== infix(_:_:)();
  v82(v50, v17);
  v82(v91, v17);
  if ((v101 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_50:
  v82(v31, v17);
  v82(v149, v17);
  v82(v135, v17);
  v82(v139, v17);
  v114 = v127;
  (*v85)(v127, v140, v17);
  v115 = v138;
  v116 = v126;
  v117 = v134;
  (*(v138 + 96))(v114, v134, v138);
  v118 = *(v136 + 8);
  v118(v125, v117);
  v119 = v137;
  v120 = v131;
  v121 = v132;
  v122 = v133;
  discreteFourierTransform<A, B, C>(input:size:output:)(v128, v137, v131, v129, v132, v117, v130, v133, v124, v115);
  inverseDiscreteFourierTransformFinish<A, B>(size:sizeInverse:output:)(v119, v116, v120, v121, v117, v122, v115);
  return (v118)(v116, v117);
}

uint64_t inverseDiscreteFourierTransformFinish<A, B>(size:sizeInverse:output:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v128 = a2;
  v110 = a1;
  v115 = *(a5 - 8);
  v12 = *(v115 + 64);
  v13 = MEMORY[0x28223BE20](a1, a2);
  v102 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v101 = &v97 - v17;
  v19 = MEMORY[0x28223BE20](v16, v18);
  v100 = &v97 - v20;
  MEMORY[0x28223BE20](v19, v21);
  v129 = &v97 - v22;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v107 = a5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v130 = AssociatedTypeWitness;
  v25 = swift_getAssociatedTypeWitness();
  v135 = *(v25 - 8);
  v26 = *(v135 + 64);
  v28 = MEMORY[0x28223BE20](v25, v27);
  v30 = &v97 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v28, v31);
  v109 = &v97 - v33;
  MEMORY[0x28223BE20](v32, v34);
  v134 = &v97 - v35;
  v36 = a6;
  v37 = *(a6 + 8);
  v133 = swift_getAssociatedTypeWitness();
  v116 = *(v133 - 8);
  v38 = *(v116 + 64);
  v40 = MEMORY[0x28223BE20](v133, v39);
  v124 = &v97 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v40, v42);
  v127 = &v97 - v44;
  MEMORY[0x28223BE20](v43, v45);
  v47 = &v97 - v46;
  v136 = a4;
  v137 = a3;
  result = dispatch thunk of Collection.count.getter();
  if (result < v110)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v125 = v47;
  v131 = v25;
  dispatch thunk of Collection.startIndex.getter();
  v123 = v36;
  v117 = dispatch thunk of MutableCollection.subscript.modify();
  v108 = v37;
  v126 = AssociatedConformanceWitness;
  v49 = swift_checkMetadataState();
  v50 = *(a7 + 88);
  v104 = v50;
  v51 = v109;
  v52 = v30;
  v132 = v30;
  v53 = v107;
  v50(v107, a7);
  v50(v53, a7);
  v121 = *(v126 + 56);
  v122 = v126 + 56;
  v54 = v134;
  v105 = v49;
  v121(v51, v52, v49);
  v55 = *(v135 + 8);
  v135 += 8;
  v120 = v55;
  v55(v52, v131);
  v55(v51, v131);
  v106 = a7;
  v56 = *(a7 + 96);
  v119 = a7 + 96;
  v118 = v56;
  v57 = v53;
  v56(v54, v53, a7);
  (v117)(v138, 0);
  v59 = v116 + 8;
  v58 = *(v116 + 8);
  v60 = v133;
  v58(v125, v133);
  v103 = v58;
  v61 = v127;
  dispatch thunk of Collection.startIndex.getter();
  v98 = v110 / 2;
  dispatch thunk of Collection.index(_:offsetBy:)();
  v58(v61, v60);
  v62 = v131;
  v117 = dispatch thunk of MutableCollection.subscript.modify();
  v63 = v109;
  v64 = v57;
  v65 = v57;
  v66 = v106;
  v67 = v104;
  v104(v65, v106);
  v68 = v132;
  v99 = a7 + 88;
  v67(v64, v66);
  v69 = v134;
  (v121)(v63, v68);
  v70 = v68;
  v71 = v120;
  v120(v70, v62);
  v71(v63, v62);
  v118(v69, v64, v66);
  v72 = v103;
  (v117)(v138, 0);
  v73 = v133;
  v130 = v59;
  result = v72(v125, v133);
  v74 = v73;
  v75 = v124;
  v76 = v127;
  if (v110 >= 2 && (v110 & 0x7FFFFFFFFFFFFFFELL) != 2)
  {
    v117 = (v115 + 16);
    v116 += 16;
    v115 += 8;
    v77 = 1;
    while (1)
    {
      dispatch thunk of Collection.startIndex.getter();
      dispatch thunk of Collection.index(_:offsetBy:)();
      v72(v76, v74);
      result = dispatch thunk of Collection.startIndex.getter();
      if (__OFSUB__(v110, v77))
      {
        break;
      }

      v114 = v77 + 1;
      dispatch thunk of Collection.index(_:offsetBy:)();
      v78 = v75;
      v72(v75, v133);
      v79 = v125;
      v80 = dispatch thunk of Collection.subscript.read();
      v81 = *v117;
      v82 = v107;
      (*v117)(v129);
      v80(v138, 0);
      v113 = *v116;
      v113(v78, v79, v133);
      v83 = dispatch thunk of Collection.subscript.read();
      v84 = v101;
      v111 = v81;
      v81(v101);
      v83(v138, 0);
      v85 = v102;
      (v81)(v102, v84, v82);
      v86 = v106;
      FieldElement.init(other:)(v85, v82, v106);
      v87 = v109;
      v88 = v104;
      v104(v82, v86);
      v88(v82, v86);
      v89 = v105;
      (v121)(v87, v132, v105, v126);
      v90 = v120;
      v120(v132, v131);
      v90(v87, v131);
      v118(v134, v82, v86);
      v112 = *v115;
      v112(v84, v82);
      v91 = v124;
      dispatch thunk of MutableCollection.subscript.setter();
      v113(v91, v127, v133);
      (v111)(v84, v129, v82);
      v92 = v84;
      v93 = v132;
      FieldElement.init(other:)(v92, v82, v86);
      v88(v82, v86);
      v94 = v131;
      v88(v82, v86);
      (v121)(v87, v93, v89, v126);
      v95 = v120;
      v120(v93, v94);
      v95(v87, v94);
      v118(v134, v82, v86);
      v75 = v124;
      v74 = v133;
      dispatch thunk of MutableCollection.subscript.setter();
      v112(v129, v82);
      v76 = v127;
      v96 = v103;
      v103(v127, v74);
      result = v96(v125, v74);
      v72 = v96;
      v77 = v114;
      if (v98 == v114)
      {
        return result;
      }
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

uint64_t Prio3InputShare.measurementShare.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
}

uint64_t Prio3InputShare.proofShare.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
}

uint64_t static Prio3InputShare.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v14 = *(a1 + 16);
  v13 = *(a1 + 24);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a1 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  if (static Share.== infix(_:_:)(v2, v3, v4, v5, AssociatedTypeWitness, AssociatedConformanceWitness) & 1) != 0 && (static Share.== infix(_:_:)(v14, v13, v6, v7, AssociatedTypeWitness, AssociatedConformanceWitness))
  {
    if (v12)
    {
      if (v11 && (specialized static Seed.== infix(_:_:)(v12, v11) & 1) != 0)
      {
        return 1;
      }
    }

    else if (!v11)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t Prio3InputShare.init(measurementShare:proofShare:jointRandBlind:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2 & 1;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4 & 1;
  *(a6 + 32) = a5;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Prio3InputShare<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(a3 + 32);
  return static Prio3InputShare.== infix(_:_:)(a1, a2);
}

uint64_t Prio3InputShareDecodableParameter.measurement.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t Prio3InputShareDecodableParameter.proof.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t Prio3InputShareDecodableParameter.encodedLength.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(a1 + 32);
  v8 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = ShareDecodableParameter.encodedLength.getter(v2, v3, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = ShareDecodableParameter.encodedLength.getter(v4, v5, AssociatedTypeWitness, AssociatedConformanceWitness);
  v13 = v11 + result;
  if (__OFADD__(v11, result))
  {
    __break(1u);
    goto LABEL_5;
  }

  result = v13 + v6;
  if (__OFADD__(v13, v6))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t Prio3InputShareDecodableParameter.init(prio3:aggregatorID:)@<X0>(uint64_t a1@<X0>, Swift::Int a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for Prio3();
  swift_getWitnessTable();
  v15 = VDAFProtocol.isLeaderAggregatorID(_:)(a2);
  if (v16)
  {
    return (*(*(v14 - 8) + 8))(a1, v14);
  }

  v26 = v15;
  if (!v15)
  {
    goto LABEL_6;
  }

  v23 = *(v14 + 56);
  v24 = (*(a5 + 48))(a3, a5);
  v25 = 0;
  v18 = (*(a5 + 56))(a3, a5);
  v19 = *(a1 + 8);
  v20 = v18 * v19;
  if ((v18 * v19) >> 64 != (v18 * v19) >> 63)
  {
    __break(1u);
LABEL_6:
    v21 = *(a6 + 8);
    v24 = v21(a4, a6);
    v25 = 1;
    v20 = v21(a4, a6);
  }

  if (Prio3.isJointRandRequired.getter(v14))
  {
    v22 = (*(a6 + 8))(a4, a6);
  }

  else
  {
    v22 = 0;
  }

  result = (*(*(v14 - 8) + 8))(a1, v14);
  *a7 = v24;
  *(a7 + 8) = v25;
  *(a7 + 16) = v20;
  *(a7 + 24) = !v26;
  *(a7 + 32) = v22;
  return result;
}

uint64_t Prio3InputShare.init<A>(from:parameter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedConformanceWitness = a4;
  v7 = *(a5 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](a1, a2);
  v17 = &v109 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v10 + 8);
  if (v18 == 255)
  {
    v19 = v9;
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v20 = 0;
    v20[1] = 0;
    swift_willThrow();
    return (*(v7 + 8))(v19, a5);
  }

  v123 = v7;
  v115 = v5;
  v111 = v15;
  v22 = *v10;
  v23 = *(v10 + 24);
  v24 = *(v10 + 32);
  v25 = *(v10 + 16);
  v117 = v11;
  v118 = v13;
  v26 = v12;
  v119 = *(*(v14 + 8) + 8);
  v120 = v9;
  v116 = dispatch thunk of Collection.count.getter();
  v122 = v22;
  v130 = v22;
  v27 = v24;
  v28 = v18;
  LODWORD(v114) = v18 & 1;
  LOBYTE(v131) = v18 & 1;
  v132 = v25;
  v112 = v23;
  v29 = v23 & 1;
  v30 = v26;
  v32 = v117;
  v31 = v118;
  LODWORD(v113) = v29;
  LOBYTE(v133) = v29;
  v134 = v27;
  v126 = v117;
  v127 = AssociatedConformanceWitness;
  v128 = v30;
  v129 = v118;
  v33 = type metadata accessor for Prio3InputShareDecodableParameter();
  v121 = a5;
  v34 = v33;
  v35 = Prio3InputShareDecodableParameter.encodedLength.getter(v33);
  if (v116 != v35)
  {
    v130 = 0;
    v131 = 0xE000000000000000;
    _StringGuts.grow(_:)(24);
    v130 = v32;
    v131 = AssociatedConformanceWitness;
    v132 = v30;
    v133 = v31;
    type metadata accessor for Prio3InputShare();
    v64 = _typeName(_:qualified:)();
    v66 = v65;

    v126 = v64;
    v127 = v66;
    MEMORY[0x2743B25F0](0x6572697571657220, 0xEB00000000203A64);
    v130 = v122;
    LOBYTE(v131) = v114;
    v132 = v25;
    LOBYTE(v133) = v113;
    v134 = v27;
    v125 = Prio3InputShareDecodableParameter.encodedLength.getter(v34);
    v67 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v67);

    MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
    v68 = v120;
    v69 = v121;
    v130 = dispatch thunk of Collection.count.getter();
    v70 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v70);

    v71 = v126;
    v72 = v127;
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v73 = v71;
    v73[1] = v72;
    swift_willThrow();
    return (*(v123 + 8))(v68, v69);
  }

  v116 = v25;
  v110 = v27;
  (*(v123 + 16))(v17, v120, v121);
  v36 = *(v119 + 8);
  v37 = ArraySlice.init<A>(_:)();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v45 = ShareDecodableParameter.encodedLength.getter(v122, v28 & 1, AssociatedTypeWitness, AssociatedConformanceWitness);
  v46 = specialized Collection.prefix(_:)(v45, v37, v39, v41, v43);
  v48 = v47;
  v118 = v49;
  v119 = v28;
  v51 = v50;
  v52 = specialized Collection.dropFirst(_:)(v45, v37, v39, v41, v43);
  v117 = v53;
  v114 = v54;
  v113 = v55;
  v130 = v46;
  v131 = v48;
  v132 = v118;
  v133 = v51;
  swift_unknownObjectRetain();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10ArraySliceVys5UInt8VGMd, "xq");
  v57 = lazy protocol witness table accessor for type ArraySlice<UInt8> and conformance ArraySlice<A>();
  v58 = AssociatedTypeWitness;
  v59 = AssociatedTypeWitness;
  v60 = AssociatedConformanceWitness;
  v61 = v115;
  v62 = Share.init<A>(from:parameter:)(&v130, v122, v119 & 1, v59, v56, AssociatedConformanceWitness, v57);
  if (v61)
  {
    (*(v123 + 8))(v120, v121);
    return swift_unknownObjectRelease();
  }

  v115 = v62;
  v136 = v63 & 1;
  v109 = v58;
  v74 = ShareDecodableParameter.encodedLength.getter(v116, v112 & 1, v58, v60);
  v75 = v117;
  v76 = v114;
  v77 = v113;
  v122 = specialized Collection.prefix(_:)(v74, v52, v117, v114, v113);
  v79 = v78;
  v118 = v81;
  v119 = v80;
  v82 = specialized Collection.dropFirst(_:)(v74, v52, v75, v76, v77);
  v84 = v83;
  v86 = v85;
  v88 = v87;
  v130 = v122;
  v131 = v79;
  v132 = v119;
  v133 = v118;
  swift_unknownObjectRetain();
  v89 = v88;
  AssociatedConformanceWitness = Share.init<A>(from:parameter:)(&v130, v116, v112 & 1, v109, v56, AssociatedConformanceWitness, v57);
  v135 = v90 & 1;
  v91 = v110;
  v92 = v123;
  if (v110 < 1)
  {
    (*(v123 + 8))(v120, v121);
    result = swift_unknownObjectRelease();
    v103 = 0;
  }

  else
  {
    v93 = specialized Collection.prefix(_:)(v110, v82, v84, v86, v89);
    v94 = v84;
    v96 = v95;
    v98 = v97;
    v99 = v86;
    v101 = v100;
    specialized Collection.dropFirst(_:)(v91, v82, v94, v99, v89);
    if (v101)
    {
      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain_n();
      swift_unknownObjectRetain();
      v104 = swift_dynamicCastClass();
      if (!v104)
      {
        swift_unknownObjectRelease();
        v104 = MEMORY[0x277D84F90];
      }

      v105 = *(v104 + 16);

      if (__OFSUB__(v101 >> 1, v98))
      {
        __break(1u);
      }

      else if (v105 == (v101 >> 1) - v98)
      {
        v103 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (!v103)
        {
          swift_unknownObjectRelease();
          v103 = MEMORY[0x277D84F90];
        }

        (*(v123 + 8))(v120, v121);
        swift_unknownObjectRelease();
        result = swift_unknownObjectRelease();
        goto LABEL_19;
      }

      swift_unknownObjectRelease_n();
      v92 = v123;
    }

    else
    {
      swift_unknownObjectRetain();
    }

    specialized _copyCollectionToContiguousArray<A>(_:)(v93, v96, v98, v101);
    v103 = v102;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    result = (*(v92 + 8))(v120, v121);
  }

LABEL_19:
  v106 = v136;
  v107 = v135;
  v108 = v111;
  *v111 = v115;
  *(v108 + 8) = v106;
  v108[2] = AssociatedConformanceWitness;
  *(v108 + 24) = v107;
  v108[4] = v103;
  return result;
}

uint64_t protocol witness for VDAFDecodable.init<A>(from:parameter:) in conformance Prio3InputShare<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *(a2 + 32);
  v6 = *(a2 + 16);
  v10[0] = *a2;
  v10[1] = v6;
  v11 = v5;
  v7 = a5[4];
  v8 = a5[5];
  return Prio3InputShare.init<A>(from:parameter:)(a1, v10, a5[2], a5[3], a3);
}

uint64_t Prio3InputShare.encodedLength.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(a1 + 32);
  v8 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = Share.encodedLength.getter(v2, v3, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = Share.encodedLength.getter(v4, v5, AssociatedTypeWitness, AssociatedConformanceWitness);
  v13 = v11 + result;
  if (__OFADD__(v11, result))
  {
    goto LABEL_7;
  }

  if (!v6)
  {
    result += v11;
    return result;
  }

  v14 = *(v6 + 16);
  result = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
LABEL_7:
    __break(1u);
  }

  return result;
}

uint64_t Prio3InputShare.encode<A>(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v9 = *(v4 + 8);
  v17 = *(v4 + 16);
  v16 = *(v4 + 24);
  v10 = *(v4 + 32);
  v11 = *(a2 + 32);
  v12 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  Share.encode<A>(into:)(a1, v8, v9, AssociatedTypeWitness, a3, AssociatedConformanceWitness, a4);
  result = Share.encode<A>(into:)(a1, v17, v16, AssociatedTypeWitness, a3, AssociatedConformanceWitness, a4);
  if (v10)
  {

    return Seed.encode<A>(into:)();
  }

  return result;
}

uint64_t type metadata instantiation function for Prio3InputShare()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for Prio3InputShare(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for Prio3InputShare(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t type metadata instantiation function for Prio3InputShareDecodableParameter()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t PINEMainCircuit.init(l2NormBoundInt:fractionalBitCount:measurementLength:chunkLength:alpha:wraparoundCheckCount:wraparoundCheckSuccessCount:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, unint64_t a11, __int128 a12, int *a13)
{
  v55 = a7;
  v57 = a6;
  v58 = a1;
  v52 = a5;
  v50 = a9;
  v51 = a4;
  v53 = a2;
  v54 = a3;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v18);
  v20 = &v48 - v19;
  *&v60 = a8;
  *(&v60 + 1) = a11;
  v61 = a12;
  *&v62 = a13;
  v21 = type metadata accessor for PINECircuitParameter();
  v48 = *(v21 - 8);
  v49 = v21;
  v22 = *(v48 + 64);
  MEMORY[0x28223BE20](v21, v23);
  v25 = &v48 - v24;
  (*(v16 + 16))(v20, v58, AssociatedTypeWitness);
  v26 = v56;
  PINECircuitParameter.init(l2NormBoundInt:fractionalBitCount:measurementLength:alpha:wraparoundCheckCount:wraparoundCheckSuccessCount:)(v20, v53, v54, v57, v55, a8, a11, a12, v25, a10, *(&a12 + 1), a13);
  v56 = v26;
  if (v26)
  {
    return (*(v16 + 8))(v58, AssociatedTypeWitness);
  }

  v54 = a8;
  v55 = v16;
  *&v60 = a8;
  *(&v60 + 1) = a11;
  v61 = a12;
  *&v62 = a13;
  v28 = type metadata accessor for PINEMainCircuit();
  v29 = v50;
  v30 = v50 + *(v28 + 64);
  result = (*(v48 + 32))(v30, v25, v49);
  v31 = v57;
  v32 = v58;
  v33 = v51;
  if ((v52 & 1) == 0)
  {
LABEL_8:
    *v29 = v33;
    if (v33 < 1)
    {
      __break(1u);
    }

    else
    {
      v35 = *(v30 + 8);
      v36 = __OFADD__(v35, v33);
      v37 = v35 + v33;
      if (!v36)
      {
        v36 = __OFSUB__(v37, 1);
        v38 = v37 - 1;
        if (!v36)
        {
          v39 = v31 + v33;
          if (!__OFADD__(v31, v33))
          {
            v36 = __OFSUB__(v39, 1);
            v40 = v39 - 1;
            if (!v36)
            {
              v41 = v38 / v33;
              v42 = v40 / v33;
              result = v41 + v42;
              if (!__OFADD__(v41, v42))
              {
                v59[0] = MultiplicationGadget.init(numOfCalls:)();
                v59[1] = v43;
                v59[2] = v44;
                v45 = type metadata accessor for MultiplicationGadget();
                WitnessTable = swift_getWitnessTable();
                ParallelSum.init(inner:count:)(v59, v33, v45, WitnessTable, &v60);
                result = (*(v55 + 8))(v32, AssociatedTypeWitness);
                v47 = v61;
                *(v29 + 8) = v60;
                *(v29 + 24) = v47;
                *(v29 + 40) = v62;
                return result;
              }

              goto LABEL_20;
            }

LABEL_19:
            __break(1u);
LABEL_20:
            __break(1u);
            goto LABEL_21;
          }

LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

LABEL_17:
        __break(1u);
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  v34 = sqrt(*(v30 + 8));
  if ((*&v34 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v34 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v34 < 9.22337204e18)
  {
    v33 = v34;
    goto LABEL_8;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t PINENormEqualityCheckCircuit.init(l2NormBoundInt:fractionalBitCount:measurementLength:chunkLength:alpha:wraparoundCheckCount:wraparoundCheckSuccessCount:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, double a10@<D0>, unint64_t a11, __int128 a12, int *a13)
{
  v62 = a7;
  v60 = a2;
  v61 = a6;
  v58 = a5;
  v64 = a4;
  v65 = a1;
  v67 = a3;
  v57 = a9;
  v66 = a13;
  v59 = a11;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v18);
  v20 = &v54 - v19;
  *&v70 = a8;
  *(&v70 + 1) = a11;
  v71 = a12;
  v72 = a13;
  v56 = type metadata accessor for PINECircuitParameter();
  v55 = *(v56 - 8);
  v21 = *(v55 + 64);
  MEMORY[0x28223BE20](v56, v22);
  v24 = &v54 - v23;
  v25 = v65;
  (*(v16 + 16))(v20);
  v26 = v20;
  v27 = v63;
  v28 = v59;
  PINECircuitParameter.init(l2NormBoundInt:fractionalBitCount:measurementLength:alpha:wraparoundCheckCount:wraparoundCheckSuccessCount:)(v26, v60, v67, v61, v62, a8, v59, a12, v24, a10, *(&a12 + 1), a13);
  v63 = v27;
  if (v27)
  {
    return (*(v16 + 8))(v25, AssociatedTypeWitness);
  }

  v61 = v16;
  v62 = AssociatedTypeWitness;
  *&v70 = a8;
  *(&v70 + 1) = v28;
  v71 = a12;
  v72 = v66;
  v30 = type metadata accessor for PINENormEqualityCheckCircuit();
  v31 = v57;
  result = (*(v55 + 32))(v57 + *(v30 + 64), v24, v56);
  v32 = v64;
  v33 = v67;
  if ((v58 & 1) == 0)
  {
LABEL_8:
    *v31 = v32;
    if (v32 < 1)
    {
      __break(1u);
    }

    else
    {
      v35 = v33 + v32;
      if (!__OFADD__(v33, v32))
      {
        v36 = __OFSUB__(v35, 1);
        v37 = v35 - 1;
        if (!v36)
        {
          v38 = v31;
          v39 = v37 / v32;
          v64 = v32;
          v40 = getContiguousArrayStorageType<A>(for:)(a8, a8);
          v41 = *(v40 + 48);
          v42 = *(v40 + 52);
          v43 = *(a8 - 8);
          v44 = a8;
          v45 = *(v43 + 72);
          v46 = *(v43 + 80);
          swift_allocObject();
          v47 = static Array._adoptStorage(_:count:)();
          v48 = *(a12 + 8);
          dispatch thunk of static AdditiveArithmetic.zero.getter();
          dispatch thunk of static AdditiveArithmetic.zero.getter();
          (*(a12 + 72))(v44, a12);
          _finalizeUninitializedArray<A>(_:)();
          Polynomial.init(coefficients:)(v47, &v68);
          PolynomialEvaluationGadget.init(polynomial:numOfCalls:)(&v68, v39, &v70);
          v68 = v70;
          v69 = v71;
          v49 = type metadata accessor for PolynomialEvaluationGadget();
          WitnessTable = swift_getWitnessTable();
          ParallelSum.init(inner:count:)(&v68, v64, v49, WitnessTable, &v70);
          result = (*(v61 + 8))(v65, v62);
          v51 = v72;
          v52 = v73;
          v53 = v71;
          *(v38 + 1) = v70;
          *(v38 + 3) = v53;
          v38[5] = v51;
          v38[6] = v52;
          return result;
        }

        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v34 = sqrt(v67);
  if ((*&v34 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v34 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v34 < 9.22337204e18)
  {
    v32 = v34;
    goto LABEL_8;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t static PINECircuitParameter.l2NormBoundIntFrom(l2NormBound:fractionalBitCount:)@<X0>(uint64_t a1@<X0>, void (*a2)(void, void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v26 = a2;
  v27 = a4;
  v11 = *(a5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v15);
  v17 = &v26 - v16;
  v18 = *(a6 + 16);
  v19 = *(*(*(v18 + 16) + 8) + 8);
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v20 = *(*(v18 + 24) + 8);
  v21 = dispatch thunk of static Comparable.> infix(_:_:)();
  (*(v13 + 8))(v17, AssociatedTypeWitness);
  if (v21)
  {
    return static FieldElement.integerFrom<A>(floatValue:fractionalBitCount:)(a1, v26, a3, AssociatedTypeWitness, v27, a6, a7);
  }

  v28 = 0;
  v29 = 0xE000000000000000;
  _StringGuts.grow(_:)(31);
  MEMORY[0x2743B25F0](0x6F426D726F4E326CLL, 0xEC0000003D646E75);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  MEMORY[0x2743B25F0](0xD000000000000011, 0x8000000270C53310);
  v23 = v28;
  v24 = v29;
  lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
  swift_allocError();
  *v25 = v23;
  *(v25 + 8) = v24;
  *(v25 + 16) = 1;
  return swift_willThrow();
}

ValueMetadata *static PINECircuit.identifier.getter@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = swift_getAssociatedTypeWitness();
  if (result == &type metadata for Field32)
  {
    v6 = 11;
  }

  else
  {
    if (result == &type metadata for Field64)
    {
      v5 = 10;
    }

    else
    {
      v5 = 14;
    }

    if (result == &type metadata for Field40)
    {
      v6 = 12;
    }

    else
    {
      v6 = v5;
    }
  }

  *a2 = v6;
  return result;
}

uint64_t PINECircuit.truncate(measurement:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a1;
  v5 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = swift_getAssociatedConformanceWitness();
  v10 = *(v9 + 8);
  swift_getAssociatedTypeWitness();
  v39 = a2;
  v38 = AssociatedTypeWitness;
  *&v42 = AssociatedTypeWitness;
  *(&v42 + 1) = v7;
  *&v43 = AssociatedConformanceWitness;
  *(&v43 + 1) = v9;
  v44 = swift_getAssociatedConformanceWitness();
  v36 = type metadata accessor for PINECircuitParameter();
  v11 = *(v36 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x28223BE20](v36, v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v33 - v18;
  v20 = *(a3 + 56);
  v20(a2, a3);
  v35 = *(v19 + 5);
  v21 = *(v11 + 8);
  v22 = v36;
  v21(v19, v36);
  v34 = a3;
  v20(v39, a3);
  v23 = *(v16 + 1);
  result = (v21)(v16, v22);
  v25 = v35 + v23;
  if (__OFADD__(v35, v23))
  {
    __break(1u);
  }

  else
  {
    v26 = MEMORY[0x2743B2830](v37, v38);
    if (v26 == v25)
    {
      v20(v39, v34);
      v27 = *(v19 + 5);
      v21(v19, v22);
      v45 = v37;
      *&v40 = v27;
      type metadata accessor for Array();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16PartialRangeUpToVySiGMd, &_ss16PartialRangeUpToVySiGMR);
      swift_getWitnessTable();
      lazy protocol witness table accessor for type PartialRangeUpTo<Int> and conformance PartialRangeUpTo<A>();
      MutableCollection.subscript.getter();
      v40 = v42;
      v41 = v43;
      type metadata accessor for ArraySlice();
      swift_getWitnessTable();
      return Array.init<A>(_:)();
    }

    else
    {
      v28 = v26;
      *&v42 = 0;
      *(&v42 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(35);

      *&v42 = 0xD00000000000001BLL;
      *(&v42 + 1) = 0x8000000270C51C80;
      *&v40 = v28;
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v29);

      MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
      *&v40 = v25;
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v30);

      v31 = v42;
      lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
      swift_allocError();
      *v32 = v31;
      *(v32 + 16) = 2;
      return swift_willThrow();
    }
  }

  return result;
}