uint64_t specialized FullyLinearProof.prove<A>(into:measurement:proveRand:jointRand:)(uint64_t *a1, unint64_t a2, unint64_t a3, void *a4)
{
  v6 = *(v4 + 72);
  if (*(a2 + 16) != v6)
  {
    _StringGuts.grow(_:)(35);

    v87 = 0xD00000000000001BLL;
    v88 = 0x8000000270C51C80;
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v31);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v85[0] = v6;
LABEL_19:
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v34);

    v35 = v88;
    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v36 = v87;
    *(v36 + 8) = v35;
    *(v36 + 16) = 2;
    return swift_willThrow();
  }

  v9 = a2;
  v11 = *(a3 + 16);
  if (v11 != specialized FullyLinearProof.proveRandLength.getter())
  {
    _StringGuts.grow(_:)(33);

    v87 = 0xD000000000000019;
    v88 = 0x8000000270C51F80;
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v32);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v85[0] = specialized FullyLinearProof.proveRandLength.getter();
    goto LABEL_19;
  }

  v74 = a1;
  v78 = a4;
  if (a4[2] != 3)
  {
    _StringGuts.grow(_:)(33);

    v87 = 0xD000000000000019;
    v88 = 0x8000000270C51CE0;
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v33);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v85[0] = 3;
    goto LABEL_19;
  }

  v87 = a3;
  v88 = a3 + 32;
  v89 = 0;
  v90 = (2 * v11) | 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF16GadgetParametersVGMd, &_ss23_ContiguousArrayStorageCy4VDAF16GadgetParametersVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_270C44540;
  v13 = *(v4 + 24);
  v91 = *(v4 + 8);
  v92 = v13;
  v93 = *(v4 + 40);
  v14 = *(&v91 + 1);
  v79 = v13;
  v15 = v93;
  v16 = specialized Gadget.wirePolynomialLength.getter();
  v17 = specialized Gadget.gadgetPolynomialLength.getter();
  v73 = v91;
  *(inited + 32) = v91;
  *(inited + 40) = v14;
  *(inited + 48) = v15;
  *(inited + 56) = v16;
  *(inited + 64) = v17;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay4VDAF16GadgetParametersVG_AF0E10WireInputsCyAF7Field40VGs5NeverOTg5096_s4VDAF16FullyLinearProofPAAE5prove4into11measurement0E4Rand05jointH0yqd__z_Say1FQzGA2KtKSmRd__7b15Qyd__AJRSlFAA16egh11CyAJGAA0K10f43VXEfU_AA28PINENormEqualityCheckCircuitVyAA7I18VSRySfGG_SayAVGTG5s10ArraySliceVyAMGTf1cn_nTm(inited, &v87);
  v19 = v18;
  v20 = v5;
  swift_setDeallocating();
  if (v19 >> 62)
  {
    goto LABEL_123;
  }

  for (i = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = MEMORY[0x2743B2FD0](v72))
  {
    v22 = MEMORY[0x277D84F90];
    v80 = v19;
    v75 = i;
    if (!i)
    {
      goto LABEL_20;
    }

    v81 = v20;
    v84 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, i & ~(i >> 63), 0);
    v24 = v75;
    if (v75 < 0)
    {
      break;
    }

    v25 = 0;
    v22 = v84;
    v26 = v19;
    v27 = v19 & 0xC000000000000001;
    do
    {
      if (v27)
      {
        v24 = v75;
        v28 = MEMORY[0x2743B2D10](v25, v26);
      }

      else
      {
        v28 = *(v26 + 8 * v25 + 32);
      }

      v84 = v22;
      v30 = *(v22 + 16);
      v29 = *(v22 + 24);
      if (v30 >= v29 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1);
        v24 = v75;
        v26 = v80;
        v22 = v84;
      }

      ++v25;
      *(v22 + 16) = v30 + 1;
      *(v22 + 8 * v30 + 32) = v28;
    }

    while (v24 != v25);
    v20 = v81;
LABEL_20:
    specialized PINEMainCircuit.evaluate(measurement:jointRand:numOfShares:for:)(v9, v78, 1, v22, v85);
    if (v20)
    {

      return swift_unknownObjectRelease();
    }

    if (v75 < 0)
    {
      goto LABEL_128;
    }

    v37 = v74;
    if (!v75)
    {
LABEL_101:

      return swift_unknownObjectRelease();
    }

    if (!v79)
    {
      goto LABEL_129;
    }

    v9 = 0;
    v82 = v80 & 0xC000000000000001;
    v76 = v80 + 32;
    while (1)
    {
      v19 = specialized Gadget.wirePolynomialLength.getter();
      specialized Gadget.gadgetPolynomialLength.getter();
      v86[12] = v19;
      if (v9 == 1)
      {
        goto LABEL_115;
      }

      v19 = 40 * v9;
      v39 = v86[5 * v9 + 12];
      specialized Gadget.wirePolynomialLength.getter();
      specialized Gadget.gadgetPolynomialLength.getter();
      v86[0] = v73;
      v40 = v86[5 * v9];
      if (v40 < 0)
      {
        goto LABEL_116;
      }

      v41 = v80;
      if (v40)
      {
        break;
      }

      v42 = MEMORY[0x277D84F90];
LABEL_57:
      specialized Gadget.wirePolynomialLength.getter();
      result = specialized Gadget.gadgetPolynomialLength.getter();
      v83[9] = result;
      v20 = v83[5 * v9 + 9];
      if (v79 < 1)
      {
        v19 = &outlined read-only object #0 of specialized FullyLinearProof.prove<A>(into:measurement:proveRand:jointRand:);
      }

      else
      {
        v56 = v42[2];
        v19 = &outlined read-only object #0 of specialized FullyLinearProof.prove<A>(into:measurement:proveRand:jointRand:);
        if (v56)
        {
          v57 = 0;
          v58 = v42 + 4;
          v59 = 1;
          while (1)
          {
            v60 = v56 - v57;
            v61 = __OFSUB__(v56, v57);
            v62 = v57 + v79;
            if (__OFADD__(v57, v79))
            {
              if (v61)
              {
                goto LABEL_114;
              }

              if (v60 < 0)
              {
                goto LABEL_130;
              }

              v63 = v60 < v79;
              v64 = v60 >= v79 ? v57 + v79 : v56;
              if (!v63)
              {
                goto LABEL_130;
              }

              v62 = 0x7FFFFFFFFFFFFFFFLL;
              if (v64 < v57)
              {
                goto LABEL_107;
              }
            }

            else
            {
              if (v61)
              {
                goto LABEL_113;
              }

              if (v60 < 0)
              {
                v64 = v57 + v79;
                if (v62 < v57)
                {
                  goto LABEL_107;
                }
              }

              else
              {
                if (v60 >= v79)
                {
                  v64 = v57 + v79;
                }

                else
                {
                  v64 = v56;
                }

                if (v64 < v57)
                {
                  goto LABEL_107;
                }
              }
            }

            if (!v59)
            {
              goto LABEL_108;
            }

            if (v57 < 0)
            {
              break;
            }

            if (v56 < v64)
            {
              goto LABEL_110;
            }

            if (v57 >= v64)
            {
              goto LABEL_111;
            }

            if (v57 + 1 >= v64)
            {
              goto LABEL_112;
            }

            v65 = v58[v57];
            v66 = v58[v57 + 1];

            _s4VDAF10PolynomialV1moiyACyxGAE_AEtFZAA7Field40V_Tt2B5(v65, v66, &v94);

            _s4VDAF10PolynomialV1poiyACyxGAE_AEtFZAA7Field40V_Tt2B5(v19, v94, v83);

            v19 = v83[0];
            v59 = v56 >= v62;
            v57 = v62;
            if (v62 >= v56)
            {
              goto LABEL_90;
            }
          }

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
          goto LABEL_122;
        }
      }

LABEL_90:

      v67 = *(v19 + 16);
      if (!v67)
      {
        goto LABEL_117;
      }

      ++v9;
      v68 = *(v19 + 16);
      v37 = v74;
      do
      {
        v69 = v68 - 1;
        if (v68 < 1)
        {
          v71 = 0;
          goto LABEL_97;
        }
      }

      while (!*(v19 + 8 * v68-- + 24));
      v71 = v69 + 1;
      if (v67 < v69 + 1)
      {
        goto LABEL_118;
      }

LABEL_97:
      specialized Array.append<A>(contentsOf:)(v19, v19 + 32, 0, (2 * v71) | 1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
      v19 = v20 - v71;
      if (__OFSUB__(v20, v71))
      {
        goto LABEL_119;
      }

      if (v19 < 0)
      {
        goto LABEL_120;
      }

      if (v19)
      {
        v38 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v38 + 16) = v19;
        bzero((v38 + 32), 8 * v19);
      }

      else
      {
        v38 = MEMORY[0x277D84F90];
      }

      specialized Array.append<A>(contentsOf:)(v38, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
      if (v9 == v75)
      {
        goto LABEL_101;
      }
    }

    if (v82 || v9 < *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      if ((v39 & 0x8000000000000000) == 0)
      {
        v19 = *v37;
        v77 = -v40;
        v78 = (8 * v39);
        v20 = 4;
        v42 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v82)
          {
            v43 = MEMORY[0x2743B2D10](v9, v41);
          }

          else
          {
            v43 = *(v76 + 8 * v9);
          }

          swift_beginAccess();
          v44 = *(v43 + 32);
          if ((v20 - 4) >= *(v44 + 16))
          {
            break;
          }

          v45 = *(v44 + 8 * v20);

          if (*(v45 + 16) - 1 >= v39)
          {
            goto LABEL_103;
          }

          v46 = static Array._allocateBufferUninitialized(minimumCapacity:)();
          *(v46 + 16) = v39;
          bzero((v46 + 32), v78);
          v94 = v46;
          specialized inverseDiscreteFourierTransform<A, B, C>(input:size:output:)(v45, v39, &v94);

          v47 = v94;
          if (!*(v94 + 2))
          {
            goto LABEL_104;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v42[2] + 1, 1, v42);
          }

          v49 = v42[2];
          v48 = v42[3];
          if (v49 >= v48 >> 1)
          {
            v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1, v42);
          }

          v42[2] = v49 + 1;
          v42[v49 + 4] = v47;
          if (v82)
          {
            v50 = MEMORY[0x2743B2D10](v9, v80);
          }

          else
          {
            v50 = *(v76 + 8 * v9);
          }

          swift_beginAccess();
          v51 = *(v50 + 32);
          if ((v20 - 4) >= *(v51 + 16))
          {
            goto LABEL_105;
          }

          v52 = *(v51 + 8 * v20);
          if (!*(v52 + 16))
          {
            goto LABEL_106;
          }

          v53 = *(v52 + 32);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 16) + 1, 1, v19);
          }

          v55 = *(v19 + 16);
          v54 = *(v19 + 24);
          if (v55 >= v54 >> 1)
          {
            v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1, v19);
          }

          *(v19 + 16) = v55 + 1;
          *(v19 + 8 * v55 + 32) = v53;
          ++v20;
          v41 = v80;
          if (v77 + v20 == 4)
          {
            *v74 = v19;
            goto LABEL_57;
          }
        }

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
        goto LABEL_109;
      }

      goto LABEL_121;
    }

LABEL_122:
    __break(1u);
LABEL_123:
    if (v19 < 0)
    {
      v72 = v19;
    }

    else
    {
      v72 = v19 & 0xFFFFFFFFFFFFFF8;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
  return result;
}

{
  v6 = *(v4 + 72);
  if (*(a2 + 16) != v6)
  {
    _StringGuts.grow(_:)(35);

    v87 = 0xD00000000000001BLL;
    v88 = 0x8000000270C51C80;
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v31);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v85[0] = v6;
LABEL_19:
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v34);

    v35 = v88;
    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v36 = v87;
    *(v36 + 8) = v35;
    *(v36 + 16) = 2;
    return swift_willThrow();
  }

  v9 = a2;
  v11 = *(a3 + 16);
  if (v11 != specialized FullyLinearProof.proveRandLength.getter())
  {
    _StringGuts.grow(_:)(33);

    v87 = 0xD000000000000019;
    v88 = 0x8000000270C51F80;
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v32);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v85[0] = specialized FullyLinearProof.proveRandLength.getter();
    goto LABEL_19;
  }

  v74 = a1;
  v78 = a4;
  if (a4[2] != 3)
  {
    _StringGuts.grow(_:)(33);

    v87 = 0xD000000000000019;
    v88 = 0x8000000270C51CE0;
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v33);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v85[0] = 3;
    goto LABEL_19;
  }

  v87 = a3;
  v88 = a3 + 32;
  v89 = 0;
  v90 = (2 * v11) | 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF16GadgetParametersVGMd, &_ss23_ContiguousArrayStorageCy4VDAF16GadgetParametersVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_270C44540;
  v13 = *(v4 + 24);
  v91 = *(v4 + 8);
  v92 = v13;
  v93 = *(v4 + 40);
  v14 = *(&v91 + 1);
  v79 = v13;
  v15 = v93;
  v16 = specialized Gadget.wirePolynomialLength.getter();
  v17 = specialized Gadget.gadgetPolynomialLength.getter();
  v73 = v91;
  *(inited + 32) = v91;
  *(inited + 40) = v14;
  *(inited + 48) = v15;
  *(inited + 56) = v16;
  *(inited + 64) = v17;

  sub_270B600A8(inited, &v87);
  v19 = v18;
  v20 = v5;
  swift_setDeallocating();
  if (v19 >> 62)
  {
    goto LABEL_123;
  }

  for (i = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = MEMORY[0x2743B2FD0](v72))
  {
    v22 = MEMORY[0x277D84F90];
    v80 = v19;
    v75 = i;
    if (!i)
    {
      goto LABEL_20;
    }

    v81 = v20;
    v84 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, i & ~(i >> 63), 0);
    v24 = v75;
    if (v75 < 0)
    {
      break;
    }

    v25 = 0;
    v22 = v84;
    v26 = v19;
    v27 = v19 & 0xC000000000000001;
    do
    {
      if (v27)
      {
        v24 = v75;
        v28 = MEMORY[0x2743B2D10](v25, v26);
      }

      else
      {
        v28 = *(v26 + 8 * v25 + 32);
      }

      v84 = v22;
      v30 = *(v22 + 16);
      v29 = *(v22 + 24);
      if (v30 >= v29 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1);
        v24 = v75;
        v26 = v80;
        v22 = v84;
      }

      ++v25;
      *(v22 + 16) = v30 + 1;
      *(v22 + 8 * v30 + 32) = v28;
    }

    while (v24 != v25);
    v20 = v81;
LABEL_20:
    specialized PINEMainCircuit.evaluate(measurement:jointRand:numOfShares:for:)(v9, v78, 1uLL, v22, v85);
    if (v20)
    {

      return swift_unknownObjectRelease();
    }

    if (v75 < 0)
    {
      goto LABEL_128;
    }

    v37 = v74;
    if (!v75)
    {
LABEL_101:

      return swift_unknownObjectRelease();
    }

    if (!v79)
    {
      goto LABEL_129;
    }

    v9 = 0;
    v82 = v80 & 0xC000000000000001;
    v76 = v80 + 32;
    while (1)
    {
      v19 = specialized Gadget.wirePolynomialLength.getter();
      specialized Gadget.gadgetPolynomialLength.getter();
      v86[12] = v19;
      if (v9 == 1)
      {
        goto LABEL_115;
      }

      v19 = 40 * v9;
      v39 = v86[5 * v9 + 12];
      specialized Gadget.wirePolynomialLength.getter();
      specialized Gadget.gadgetPolynomialLength.getter();
      v86[0] = v73;
      v40 = v86[5 * v9];
      if (v40 < 0)
      {
        goto LABEL_116;
      }

      v41 = v80;
      if (v40)
      {
        break;
      }

      v42 = MEMORY[0x277D84F90];
LABEL_57:
      specialized Gadget.wirePolynomialLength.getter();
      result = specialized Gadget.gadgetPolynomialLength.getter();
      v83[9] = result;
      v20 = v83[5 * v9 + 9];
      if (v79 < 1)
      {
        v19 = &outlined read-only object #0 of specialized FullyLinearProof.prove<A>(into:measurement:proveRand:jointRand:);
      }

      else
      {
        v56 = v42[2];
        v19 = &outlined read-only object #0 of specialized FullyLinearProof.prove<A>(into:measurement:proveRand:jointRand:);
        if (v56)
        {
          v57 = 0;
          v58 = v42 + 4;
          v59 = 1;
          while (1)
          {
            v60 = v56 - v57;
            v61 = __OFSUB__(v56, v57);
            v62 = v57 + v79;
            if (__OFADD__(v57, v79))
            {
              if (v61)
              {
                goto LABEL_114;
              }

              if (v60 < 0)
              {
                goto LABEL_130;
              }

              v63 = v60 < v79;
              v64 = v60 >= v79 ? v57 + v79 : v56;
              if (!v63)
              {
                goto LABEL_130;
              }

              v62 = 0x7FFFFFFFFFFFFFFFLL;
              if (v64 < v57)
              {
                goto LABEL_107;
              }
            }

            else
            {
              if (v61)
              {
                goto LABEL_113;
              }

              if (v60 < 0)
              {
                v64 = v57 + v79;
                if (v62 < v57)
                {
                  goto LABEL_107;
                }
              }

              else
              {
                if (v60 >= v79)
                {
                  v64 = v57 + v79;
                }

                else
                {
                  v64 = v56;
                }

                if (v64 < v57)
                {
                  goto LABEL_107;
                }
              }
            }

            if (!v59)
            {
              goto LABEL_108;
            }

            if (v57 < 0)
            {
              break;
            }

            if (v56 < v64)
            {
              goto LABEL_110;
            }

            if (v57 >= v64)
            {
              goto LABEL_111;
            }

            if (v57 + 1 >= v64)
            {
              goto LABEL_112;
            }

            v65 = v58[v57];
            v66 = v58[v57 + 1];

            _s4VDAF10PolynomialV1moiyACyxGAE_AEtFZAA7Field64V_Tt2B5(v65, v66, &v94);

            _s4VDAF10PolynomialV1poiyACyxGAE_AEtFZAA7Field64V_Tt2B5(v19, v94, v83);

            v19 = v83[0];
            v59 = v56 >= v62;
            v57 = v62;
            if (v62 >= v56)
            {
              goto LABEL_90;
            }
          }

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
          goto LABEL_122;
        }
      }

LABEL_90:

      v67 = *(v19 + 16);
      if (!v67)
      {
        goto LABEL_117;
      }

      ++v9;
      v68 = *(v19 + 16);
      v37 = v74;
      do
      {
        v69 = v68 - 1;
        if (v68 < 1)
        {
          v71 = 0;
          goto LABEL_97;
        }
      }

      while (!*(v19 + 8 * v68-- + 24));
      v71 = v69 + 1;
      if (v67 < v69 + 1)
      {
        goto LABEL_118;
      }

LABEL_97:
      specialized Array.append<A>(contentsOf:)(v19, v19 + 32, 0, (2 * v71) | 1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
      v19 = v20 - v71;
      if (__OFSUB__(v20, v71))
      {
        goto LABEL_119;
      }

      if (v19 < 0)
      {
        goto LABEL_120;
      }

      if (v19)
      {
        v38 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v38 + 16) = v19;
        bzero((v38 + 32), 8 * v19);
      }

      else
      {
        v38 = MEMORY[0x277D84F90];
      }

      specialized Array.append<A>(contentsOf:)(v38, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
      if (v9 == v75)
      {
        goto LABEL_101;
      }
    }

    if (v82 || v9 < *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      if ((v39 & 0x8000000000000000) == 0)
      {
        v19 = *v37;
        v77 = -v40;
        v78 = (8 * v39);
        v20 = 4;
        v42 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v82)
          {
            v43 = MEMORY[0x2743B2D10](v9, v41);
          }

          else
          {
            v43 = *(v76 + 8 * v9);
          }

          swift_beginAccess();
          v44 = *(v43 + 32);
          if ((v20 - 4) >= *(v44 + 16))
          {
            break;
          }

          v45 = *(v44 + 8 * v20);

          if (*(v45 + 16) - 1 >= v39)
          {
            goto LABEL_103;
          }

          v46 = static Array._allocateBufferUninitialized(minimumCapacity:)();
          *(v46 + 16) = v39;
          bzero((v46 + 32), v78);
          v94 = v46;
          specialized inverseDiscreteFourierTransform<A, B, C>(input:size:output:)(v45, v39, &v94);

          v47 = v94;
          if (!*(v94 + 2))
          {
            goto LABEL_104;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v42[2] + 1, 1, v42);
          }

          v49 = v42[2];
          v48 = v42[3];
          if (v49 >= v48 >> 1)
          {
            v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1, v42);
          }

          v42[2] = v49 + 1;
          v42[v49 + 4] = v47;
          if (v82)
          {
            v50 = MEMORY[0x2743B2D10](v9, v80);
          }

          else
          {
            v50 = *(v76 + 8 * v9);
          }

          swift_beginAccess();
          v51 = *(v50 + 32);
          if ((v20 - 4) >= *(v51 + 16))
          {
            goto LABEL_105;
          }

          v52 = *(v51 + 8 * v20);
          if (!*(v52 + 16))
          {
            goto LABEL_106;
          }

          v53 = *(v52 + 32);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 16) + 1, 1, v19);
          }

          v55 = *(v19 + 16);
          v54 = *(v19 + 24);
          if (v55 >= v54 >> 1)
          {
            v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1, v19);
          }

          *(v19 + 16) = v55 + 1;
          *(v19 + 8 * v55 + 32) = v53;
          ++v20;
          v41 = v80;
          if (v77 + v20 == 4)
          {
            *v74 = v19;
            goto LABEL_57;
          }
        }

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
        goto LABEL_109;
      }

      goto LABEL_121;
    }

LABEL_122:
    __break(1u);
LABEL_123:
    if (v19 < 0)
    {
      v72 = v19;
    }

    else
    {
      v72 = v19 & 0xFFFFFFFFFFFFFF8;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
  return result;
}

uint64_t specialized FullyLinearProof.prove<A>(into:measurement:proveRand:jointRand:)(uint64_t *a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 72);
  if (*(a2 + 16) != v6)
  {
    _StringGuts.grow(_:)(35);

    v87 = 0xD00000000000001BLL;
    v88 = 0x8000000270C51C80;
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v31);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v85 = v6;
LABEL_19:
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v34);

    v35 = v88;
    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v36 = v87;
    *(v36 + 8) = v35;
    *(v36 + 16) = 2;
    return swift_willThrow();
  }

  v9 = a2;
  v11 = *(a3 + 16);
  if (v11 != specialized FullyLinearProof.proveRandLength.getter())
  {
    _StringGuts.grow(_:)(33);

    v87 = 0xD000000000000019;
    v88 = 0x8000000270C51F80;
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v32);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v85 = specialized FullyLinearProof.proveRandLength.getter();
    goto LABEL_19;
  }

  v74 = a1;
  v78 = a4;
  if (*(a4 + 16) != 3)
  {
    _StringGuts.grow(_:)(33);

    v87 = 0xD000000000000019;
    v88 = 0x8000000270C51CE0;
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v33);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v85 = 3;
    goto LABEL_19;
  }

  v87 = a3;
  v88 = a3 + 32;
  v89 = 0;
  v90 = (2 * v11) | 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF16GadgetParametersVGMd, &_ss23_ContiguousArrayStorageCy4VDAF16GadgetParametersVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_270C44540;
  v13 = *(v4 + 24);
  v91 = *(v4 + 8);
  v92 = v13;
  v93 = *(v4 + 40);
  v14 = *(&v91 + 1);
  v79 = v13;
  v15 = v93;
  v16 = specialized Gadget.wirePolynomialLength.getter();
  v17 = specialized Gadget.gadgetPolynomialLength.getter();
  v73 = v91;
  *(inited + 32) = v91;
  *(inited + 40) = v14;
  *(inited + 48) = v15;
  *(inited + 56) = v16;
  *(inited + 64) = v17;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay4VDAF16GadgetParametersVG_AF0E10WireInputsCyAF7Field32VGs5NeverOTg5096_s4VDAF16FullyLinearProofPAAE5prove4into11measurement0E4Rand05jointH0yqd__z_Say1FQzGA2KtKSmRd__7b15Qyd__AJRSlFAA16egh11CyAJGAA0K10f43VXEfU_AA28PINENormEqualityCheckCircuitVyAA7I18VSRySfGG_SayAVGTG5s10ArraySliceVyAMGTf1cn_nTm(inited, &v87);
  v19 = v18;
  v20 = v5;
  swift_setDeallocating();
  if (v19 >> 62)
  {
    goto LABEL_123;
  }

  for (i = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = MEMORY[0x2743B2FD0](v72))
  {
    v22 = MEMORY[0x277D84F90];
    v80 = v19;
    v75 = i;
    if (!i)
    {
      goto LABEL_20;
    }

    v81 = v20;
    v85 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, i & ~(i >> 63), 0);
    v24 = v75;
    if (v75 < 0)
    {
      break;
    }

    v25 = 0;
    v22 = v85;
    v26 = v19;
    v27 = v19 & 0xC000000000000001;
    do
    {
      if (v27)
      {
        v24 = v75;
        v28 = MEMORY[0x2743B2D10](v25, v26);
      }

      else
      {
        v28 = *(v26 + 8 * v25 + 32);
      }

      v85 = v22;
      v30 = *(v22 + 16);
      v29 = *(v22 + 24);
      if (v30 >= v29 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1);
        v24 = v75;
        v26 = v80;
        v22 = v85;
      }

      ++v25;
      *(v22 + 16) = v30 + 1;
      *(v22 + 8 * v30 + 32) = v28;
    }

    while (v24 != v25);
    v20 = v81;
LABEL_20:
    specialized PINEMainCircuit.evaluate(measurement:jointRand:numOfShares:for:)(v9, v78, 1, v22, v84);
    if (v20)
    {

      return swift_unknownObjectRelease();
    }

    if (v75 < 0)
    {
      goto LABEL_128;
    }

    v37 = v74;
    if (!v75)
    {
LABEL_101:

      return swift_unknownObjectRelease();
    }

    if (!v79)
    {
      goto LABEL_129;
    }

    v9 = 0;
    v82 = v80 & 0xC000000000000001;
    v76 = v80 + 32;
    while (1)
    {
      v19 = specialized Gadget.wirePolynomialLength.getter();
      specialized Gadget.gadgetPolynomialLength.getter();
      v86[12] = v19;
      if (v9 == 1)
      {
        goto LABEL_115;
      }

      v19 = 40 * v9;
      v39 = v86[5 * v9 + 12];
      specialized Gadget.wirePolynomialLength.getter();
      specialized Gadget.gadgetPolynomialLength.getter();
      v86[0] = v73;
      v40 = v86[5 * v9];
      if (v40 < 0)
      {
        goto LABEL_116;
      }

      v41 = v80;
      if (v40)
      {
        break;
      }

      v42 = MEMORY[0x277D84F90];
LABEL_57:
      specialized Gadget.wirePolynomialLength.getter();
      result = specialized Gadget.gadgetPolynomialLength.getter();
      v83[9] = result;
      v20 = v83[5 * v9 + 9];
      if (v79 < 1)
      {
        v19 = &outlined read-only object #0 of specialized FullyLinearProof.prove<A>(into:measurement:proveRand:jointRand:);
      }

      else
      {
        v56 = v42[2];
        v19 = &outlined read-only object #0 of specialized FullyLinearProof.prove<A>(into:measurement:proveRand:jointRand:);
        if (v56)
        {
          v57 = 0;
          v58 = v42 + 4;
          v59 = 1;
          while (1)
          {
            v60 = v56 - v57;
            v61 = __OFSUB__(v56, v57);
            v62 = v57 + v79;
            if (__OFADD__(v57, v79))
            {
              if (v61)
              {
                goto LABEL_114;
              }

              if (v60 < 0)
              {
                goto LABEL_130;
              }

              v63 = v60 < v79;
              v64 = v60 >= v79 ? v57 + v79 : v56;
              if (!v63)
              {
                goto LABEL_130;
              }

              v62 = 0x7FFFFFFFFFFFFFFFLL;
              if (v64 < v57)
              {
                goto LABEL_107;
              }
            }

            else
            {
              if (v61)
              {
                goto LABEL_113;
              }

              if (v60 < 0)
              {
                v64 = v57 + v79;
                if (v62 < v57)
                {
                  goto LABEL_107;
                }
              }

              else
              {
                if (v60 >= v79)
                {
                  v64 = v57 + v79;
                }

                else
                {
                  v64 = v56;
                }

                if (v64 < v57)
                {
                  goto LABEL_107;
                }
              }
            }

            if (!v59)
            {
              goto LABEL_108;
            }

            if (v57 < 0)
            {
              break;
            }

            if (v56 < v64)
            {
              goto LABEL_110;
            }

            if (v57 >= v64)
            {
              goto LABEL_111;
            }

            if (v57 + 1 >= v64)
            {
              goto LABEL_112;
            }

            v65 = v58[v57];
            v66 = v58[v57 + 1];

            _s4VDAF10PolynomialV1moiyACyxGAE_AEtFZAA7Field32V_Tt2B5(v65, v66, &v94);

            _s4VDAF10PolynomialV1poiyACyxGAE_AEtFZAA7Field32V_Tt2B5(v19, v94, v83);

            v19 = v83[0];
            v59 = v56 >= v62;
            v57 = v62;
            if (v62 >= v56)
            {
              goto LABEL_90;
            }
          }

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
          goto LABEL_122;
        }
      }

LABEL_90:

      v67 = *(v19 + 16);
      if (!v67)
      {
        goto LABEL_117;
      }

      ++v9;
      v68 = *(v19 + 16);
      v37 = v74;
      do
      {
        v69 = v68 - 1;
        if (v68 < 1)
        {
          v71 = 0;
          goto LABEL_97;
        }
      }

      while (!*(v19 + 4 * v68-- + 28));
      v71 = v69 + 1;
      if (v67 < v69 + 1)
      {
        goto LABEL_118;
      }

LABEL_97:
      specialized Array.append<A>(contentsOf:)(v19, v19 + 32, 0, (2 * v71) | 1);
      v19 = v20 - v71;
      if (__OFSUB__(v20, v71))
      {
        goto LABEL_119;
      }

      if (v19 < 0)
      {
        goto LABEL_120;
      }

      if (v19)
      {
        v38 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v38 + 16) = v19;
        bzero((v38 + 32), 4 * v19);
      }

      else
      {
        v38 = MEMORY[0x277D84F90];
      }

      specialized Array.append<A>(contentsOf:)(v38);
      if (v9 == v75)
      {
        goto LABEL_101;
      }
    }

    if (v82 || v9 < *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      if ((v39 & 0x8000000000000000) == 0)
      {
        v19 = *v37;
        v77 = -v40;
        v78 = 4 * v39;
        v20 = 4;
        v42 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v82)
          {
            v43 = MEMORY[0x2743B2D10](v9, v41);
          }

          else
          {
            v43 = *(v76 + 8 * v9);
          }

          swift_beginAccess();
          v44 = *(v43 + 32);
          if ((v20 - 4) >= *(v44 + 16))
          {
            break;
          }

          v45 = *(v44 + 8 * v20);

          if (*(v45 + 16) - 1 >= v39)
          {
            goto LABEL_103;
          }

          v46 = static Array._allocateBufferUninitialized(minimumCapacity:)();
          *(v46 + 16) = v39;
          bzero((v46 + 32), v78);
          v94 = v46;
          specialized inverseDiscreteFourierTransform<A, B, C>(input:size:output:)(v45, v39, &v94);

          v47 = v94;
          if (!*(v94 + 2))
          {
            goto LABEL_104;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v42[2] + 1, 1, v42);
          }

          v49 = v42[2];
          v48 = v42[3];
          if (v49 >= v48 >> 1)
          {
            v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1, v42);
          }

          v42[2] = v49 + 1;
          v42[v49 + 4] = v47;
          if (v82)
          {
            v50 = MEMORY[0x2743B2D10](v9, v80);
          }

          else
          {
            v50 = *(v76 + 8 * v9);
          }

          swift_beginAccess();
          v51 = *(v50 + 32);
          if ((v20 - 4) >= *(v51 + 16))
          {
            goto LABEL_105;
          }

          v52 = *(v51 + 8 * v20);
          if (!*(v52 + 16))
          {
            goto LABEL_106;
          }

          v53 = *(v52 + 32);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 16) + 1, 1, v19);
          }

          v55 = *(v19 + 16);
          v54 = *(v19 + 24);
          if (v55 >= v54 >> 1)
          {
            v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1, v19);
          }

          *(v19 + 16) = v55 + 1;
          *(v19 + 4 * v55 + 32) = v53;
          ++v20;
          v41 = v80;
          if (v77 + v20 == 4)
          {
            *v74 = v19;
            goto LABEL_57;
          }
        }

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
        goto LABEL_109;
      }

      goto LABEL_121;
    }

LABEL_122:
    __break(1u);
LABEL_123:
    if (v19 < 0)
    {
      v72 = v19;
    }

    else
    {
      v72 = v19 & 0xFFFFFFFFFFFFFF8;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
  return result;
}

{
  v6 = *(a2 + 16);
  v7 = *v4;
  if (v6 != *v4)
  {
    _StringGuts.grow(_:)(35);

    v88 = 0xD00000000000001BLL;
    v89 = 0x8000000270C51C80;
    v86[0] = v6;
LABEL_17:
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v33);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v86[0] = v7;
LABEL_19:
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v35);

    v36 = v89;
    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v37 = v88;
    *(v37 + 8) = v36;
    *(v37 + 16) = 2;
    return swift_willThrow();
  }

  v10 = a2;
  v11 = *(a3 + 16);
  if (v11 != specialized FullyLinearProof.proveRandLength.getter())
  {
    _StringGuts.grow(_:)(33);

    v88 = 0xD000000000000019;
    v89 = 0x8000000270C51F80;
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v34);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v86[0] = specialized FullyLinearProof.proveRandLength.getter();
    goto LABEL_19;
  }

  v79 = a4;
  v12 = *(a4 + 16);
  v7 = *(v4 + 16);
  if (v12 != v7)
  {
    _StringGuts.grow(_:)(33);

    v88 = 0xD000000000000019;
    v89 = 0x8000000270C51CE0;
    v86[0] = v12;
    goto LABEL_17;
  }

  v88 = a3;
  v89 = a3 + 32;
  v90 = 0;
  v91 = (2 * v11) | 1;
  v13 = *(v4 + 64);
  v92 = *(v4 + 48);
  v93 = v13;
  v94 = *(v4 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF16GadgetParametersVGMd, &_ss23_ContiguousArrayStorageCy4VDAF16GadgetParametersVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_270C44540;
  v15 = *(&v92 + 1);
  v80 = v93;
  v16 = v94;
  v17 = specialized Gadget.wirePolynomialLength.getter();
  v18 = specialized Gadget.gadgetPolynomialLength.getter();
  v74 = v92;
  *(inited + 32) = v92;
  *(inited + 40) = v15;
  *(inited + 48) = v16;
  *(inited + 56) = v17;
  *(inited + 64) = v18;

  sub_270B600A8(inited, &v88);
  v20 = v19;
  v21 = v5;
  swift_setDeallocating();
  if (v20 >> 62)
  {
    goto LABEL_124;
  }

  for (i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = MEMORY[0x2743B2FD0](v73))
  {
    v23 = v79;
    v24 = MEMORY[0x277D84F90];
    v81 = v20;
    v76 = i;
    if (!i)
    {
      goto LABEL_21;
    }

    v82 = v21;
    v85 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, i & ~(i >> 63), 0);
    v26 = v76;
    if (v76 < 0)
    {
      break;
    }

    v27 = 0;
    v24 = v85;
    v28 = v20;
    v29 = v20 & 0xC000000000000001;
    do
    {
      if (v29)
      {
        v26 = v76;
        v30 = MEMORY[0x2743B2D10](v27, v28);
      }

      else
      {
        v30 = *(v28 + 8 * v27 + 32);
      }

      v85 = v24;
      v32 = *(v24 + 16);
      v31 = *(v24 + 24);
      if (v32 >= v31 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1);
        v26 = v76;
        v28 = v81;
        v24 = v85;
      }

      ++v27;
      *(v24 + 16) = v32 + 1;
      *(v24 + 8 * v32 + 32) = v30;
    }

    while (v26 != v27);
    v23 = v79;
    v21 = v82;
LABEL_21:
    specialized SumVectorType.evaluate(measurement:jointRand:numOfShares:for:)(v10, v23, 1uLL, v24, v86);
    if (v21)
    {

      return swift_unknownObjectRelease();
    }

    if (v76 < 0)
    {
      goto LABEL_129;
    }

    v38 = a1;
    if (!v76)
    {
LABEL_102:

      return swift_unknownObjectRelease();
    }

    if (!v80)
    {
      goto LABEL_130;
    }

    v10 = 0;
    v83 = v81 & 0xC000000000000001;
    v77 = v81 + 32;
    while (1)
    {
      v20 = specialized Gadget.wirePolynomialLength.getter();
      specialized Gadget.gadgetPolynomialLength.getter();
      v87[12] = v20;
      if (v10 == 1)
      {
        goto LABEL_116;
      }

      v20 = 40 * v10;
      v40 = v87[5 * v10 + 12];
      specialized Gadget.wirePolynomialLength.getter();
      specialized Gadget.gadgetPolynomialLength.getter();
      v87[0] = v74;
      v41 = v87[5 * v10];
      if (v41 < 0)
      {
        goto LABEL_117;
      }

      v42 = v81;
      if (v41)
      {
        break;
      }

      v43 = MEMORY[0x277D84F90];
LABEL_58:
      specialized Gadget.wirePolynomialLength.getter();
      result = specialized Gadget.gadgetPolynomialLength.getter();
      v84[9] = result;
      v21 = v84[5 * v10 + 9];
      if (v80 < 1)
      {
        v20 = &outlined read-only object #0 of specialized FullyLinearProof.prove<A>(into:measurement:proveRand:jointRand:);
      }

      else
      {
        v57 = v43[2];
        v20 = &outlined read-only object #0 of specialized FullyLinearProof.prove<A>(into:measurement:proveRand:jointRand:);
        if (v57)
        {
          v58 = 0;
          v59 = v43 + 4;
          v60 = 1;
          while (1)
          {
            v61 = v57 - v58;
            v62 = __OFSUB__(v57, v58);
            v63 = v58 + v80;
            if (__OFADD__(v58, v80))
            {
              if (v62)
              {
                goto LABEL_115;
              }

              if (v61 < 0)
              {
                goto LABEL_131;
              }

              v64 = v61 < v80;
              v65 = v61 >= v80 ? v58 + v80 : v57;
              if (!v64)
              {
                goto LABEL_131;
              }

              v63 = 0x7FFFFFFFFFFFFFFFLL;
              if (v65 < v58)
              {
                goto LABEL_108;
              }
            }

            else
            {
              if (v62)
              {
                goto LABEL_114;
              }

              if (v61 < 0)
              {
                v65 = v58 + v80;
                if (v63 < v58)
                {
                  goto LABEL_108;
                }
              }

              else
              {
                if (v61 >= v80)
                {
                  v65 = v58 + v80;
                }

                else
                {
                  v65 = v57;
                }

                if (v65 < v58)
                {
                  goto LABEL_108;
                }
              }
            }

            if (!v60)
            {
              goto LABEL_109;
            }

            if (v58 < 0)
            {
              break;
            }

            if (v57 < v65)
            {
              goto LABEL_111;
            }

            if (v58 >= v65)
            {
              goto LABEL_112;
            }

            if (v58 + 1 >= v65)
            {
              goto LABEL_113;
            }

            v66 = v59[v58];
            v67 = v59[v58 + 1];

            _s4VDAF10PolynomialV1moiyACyxGAE_AEtFZAA7Field64V_Tt2B5(v66, v67, &v95);

            _s4VDAF10PolynomialV1poiyACyxGAE_AEtFZAA7Field64V_Tt2B5(v20, v95, v84);

            v20 = v84[0];
            v60 = v57 >= v63;
            v58 = v63;
            if (v63 >= v57)
            {
              goto LABEL_91;
            }
          }

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
      }

LABEL_91:

      v68 = *(v20 + 16);
      if (!v68)
      {
        goto LABEL_118;
      }

      ++v10;
      v69 = *(v20 + 16);
      v38 = a1;
      do
      {
        v70 = v69 - 1;
        if (v69 < 1)
        {
          v72 = 0;
          goto LABEL_98;
        }
      }

      while (!*(v20 + 8 * v69-- + 24));
      v72 = v70 + 1;
      if (v68 < v70 + 1)
      {
        goto LABEL_119;
      }

LABEL_98:
      specialized Array.append<A>(contentsOf:)(v20, v20 + 32, 0, (2 * v72) | 1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
      v20 = v21 - v72;
      if (__OFSUB__(v21, v72))
      {
        goto LABEL_120;
      }

      if (v20 < 0)
      {
        goto LABEL_121;
      }

      if (v20)
      {
        v39 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v39 + 16) = v20;
        bzero((v39 + 32), 8 * v20);
      }

      else
      {
        v39 = MEMORY[0x277D84F90];
      }

      specialized Array.append<A>(contentsOf:)(v39, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
      if (v10 == v76)
      {
        goto LABEL_102;
      }
    }

    if (v83 || v10 < *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      if ((v40 & 0x8000000000000000) == 0)
      {
        v20 = *v38;
        v78 = -v41;
        v79 = 8 * v40;
        v21 = 4;
        v43 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v83)
          {
            v44 = MEMORY[0x2743B2D10](v10, v42);
          }

          else
          {
            v44 = *(v77 + 8 * v10);
          }

          swift_beginAccess();
          v45 = *(v44 + 32);
          if ((v21 - 4) >= *(v45 + 16))
          {
            break;
          }

          v46 = *(v45 + 8 * v21);

          if (*(v46 + 16) - 1 >= v40)
          {
            goto LABEL_104;
          }

          v47 = static Array._allocateBufferUninitialized(minimumCapacity:)();
          *(v47 + 16) = v40;
          bzero((v47 + 32), v79);
          v95 = v47;
          specialized inverseDiscreteFourierTransform<A, B, C>(input:size:output:)(v46, v40, &v95);

          v48 = v95;
          if (!*(v95 + 2))
          {
            goto LABEL_105;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v43[2] + 1, 1, v43);
          }

          v50 = v43[2];
          v49 = v43[3];
          if (v50 >= v49 >> 1)
          {
            v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1, v43);
          }

          v43[2] = v50 + 1;
          v43[v50 + 4] = v48;
          if (v83)
          {
            v51 = MEMORY[0x2743B2D10](v10, v81);
          }

          else
          {
            v51 = *(v77 + 8 * v10);
          }

          swift_beginAccess();
          v52 = *(v51 + 32);
          if ((v21 - 4) >= *(v52 + 16))
          {
            goto LABEL_106;
          }

          v53 = *(v52 + 8 * v21);
          if (!*(v53 + 16))
          {
            goto LABEL_107;
          }

          v54 = *(v53 + 32);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 16) + 1, 1, v20);
          }

          v56 = *(v20 + 16);
          v55 = *(v20 + 24);
          if (v56 >= v55 >> 1)
          {
            v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v56 + 1, 1, v20);
          }

          *(v20 + 16) = v56 + 1;
          *(v20 + 8 * v56 + 32) = v54;
          ++v21;
          v42 = v81;
          if (v78 + v21 == 4)
          {
            *a1 = v20;
            goto LABEL_58;
          }
        }

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
        goto LABEL_110;
      }

      goto LABEL_122;
    }

LABEL_123:
    __break(1u);
LABEL_124:
    if (v20 < 0)
    {
      v73 = v20;
    }

    else
    {
      v73 = v20 & 0xFFFFFFFFFFFFFF8;
    }
  }

  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
  return result;
}

uint64_t specialized closure #5 in PINE.shard<A>(_:nonce:seedBytes:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4HMACVyAA6SHA256VGMd, &_s9CryptoKit4HMACVyAA6SHA256VGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA256VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA256VGMR);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  result = MEMORY[0x28223BE20](v12, v15);
  v18 = v29 - v17;
  v19 = a1 + 1;
  if (__OFADD__(a1, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  if ((v19 & 0x8000000000000000) != 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v19 > 0xFF)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (*(a2 + 16) <= a1)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v29[0] = result;
  v20 = *(a2 + 8 * a1 + 32);

  v21 = _s4VDAF4PINEV19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt0B5Tm(1u, 101777407);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  result = swift_initStackObject();
  *(result + 16) = xmmword_270C44590;
  v22 = *(a3 + 320);
  if ((v22 & 0x8000000000000000) != 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v22 > 0xFF)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v23 = result;
  *(result + 32) = v22;
  v24 = *(a3 + 312);
  if ((v24 & 0x8000000000000000) != 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v24 > 0xFF)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  *(result + 33) = v24;
  *(result + 34) = v19;
  if (*(v20 + 16) != 32)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  result = specialized XofHmacSha256Aes128.__allocating_init(seedBytes:domainSeparationTag:binder:)(v25, v21, v23);
  if (!*(result + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream))
  {
    v26 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_hmac;
    v27 = result;
    swift_beginAccess();
    (*(v7 + 16))(v11, v27 + v26, v6);
    HMAC.finalize()();
    (*(v7 + 8))(v11, v6);
    v28 = v29[0];
    HashedAuthenticationCode.withUnsafeBytes<A>(_:)();

    (*(v13 + 8))(v18, v28);
    return v27;
  }

LABEL_23:
  __break(1u);
  return result;
}

unint64_t specialized closure #5 in PINE.shard<A>(_:nonce:seedBytes:)(unint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_12;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v4 > 0xFF)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((result & 0x8000000000000000) != 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a2 + 16) <= result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = *(a2 + 8 * result + 32);

  v8 = _s4VDAF4PINEV19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt0B5Tm(1u, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  result = swift_initStackObject();
  *(result + 16) = xmmword_270C44590;
  v9 = *(a3 + 320);
  if ((v9 & 0x8000000000000000) != 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v9 > 0xFF)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  *(result + 32) = v9;
  v10 = *(a3 + 312);
  if ((v10 & 0x8000000000000000) != 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v10 <= 0xFF)
  {
    *(result + 33) = v10;
    *(result + 34) = v4;
    v11 = _s4VDAF24ExtendableOutputFunctionPAAE7makeXOF4seed19domainSeparationTag6binderxAA4SeedV_Says5UInt8VGALtFZAA19XofHmacSha256Aes128C_Tt2g5(v7, v8, result);

    swift_setDeallocating();
    return v11;
  }

LABEL_19:
  __break(1u);
  return result;
}

unint64_t specialized inverseDiscreteFourierTransformFinish<A, B>(size:sizeInverse:output:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  if (*(*a3 + 16) < a1)
  {
    goto LABEL_75;
  }

  v3 = a3;
  v4 = a2;
  v5 = a1;
  v7 = *a3;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v9 = *(v6 + 16);
    if (v9)
    {
      goto LABEL_4;
    }

LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    return result;
  }

LABEL_76:
  result = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
  v6 = result;
  v9 = *(result + 16);
  if (!v9)
  {
    goto LABEL_77;
  }

LABEL_4:
  v10 = (v6 + 32);
  v11 = *(v6 + 32);
  v12 = v11 * v4;
  v13 = (v11 * v4) >> 64;
  v14 = 0xCFFE47FFFEAFFFFFLL * v11 * v4;
  v15 = (v14 * 0xFFFEB00001uLL) >> 64;
  LODWORD(v16) = __CFADD__(0xFFFEB00001 * v14, v12);
  v17 = v15 + v13;
  if (__CFADD__(v15, v13))
  {
    v18 = v17 + v16;
    v19 = __CFADD__(v18, 0xFFFFFF00014FFFFFLL);
    v16 = v18 - 0xFFFEB00001;
    if (!v19)
    {
      goto LABEL_19;
    }

    __break(1u);
  }

  if (v17 == -1)
  {
    if (v16)
    {
      v16 = 0xFFFFFF00014FFFFFLL;
    }

    else
    {
      v16 = 0xFFFFFF00014FFFFELL;
    }
  }

  else
  {
    v16 = v17 + (v16 & 1);
    if (v16 >= 0xFFFEB00001)
    {
      v16 -= 0xFFFEB00001;
    }
  }

LABEL_19:
  *v10 = v16;
  if (v5 < -1)
  {
    goto LABEL_78;
  }

  v20 = v5 / 2;
  if (v5 / 2 >= v9)
  {
    goto LABEL_78;
  }

  v21 = v10[v20];
  v22 = (v21 * v4) >> 64;
  v23 = v21 * v4;
  v24 = (0xCFFE47FFFEAFFFFFLL * v23 * 0xFFFEB00001uLL) >> 64;
  LODWORD(v25) = __CFADD__(-v23, v23);
  v19 = __CFADD__(v24, v22);
  v26 = v24 + v22;
  if (v19)
  {
    v27 = v26 + v25;
    v19 = __CFADD__(v27, 0xFFFFFF00014FFFFFLL);
    v25 = v27 - 0xFFFEB00001;
    if (!v19)
    {
      goto LABEL_36;
    }

    __break(1u);
  }

  if (v26 == -1)
  {
    if (v25)
    {
      v25 = 0xFFFFFF00014FFFFFLL;
    }

    else
    {
      v25 = 0xFFFFFF00014FFFFELL;
    }
  }

  else
  {
    v25 = v26 + (v25 & 1);
    if (v25 >= 0xFFFEB00001)
    {
      v25 -= 0xFFFEB00001;
    }
  }

LABEL_36:
  v10[v20] = v25;
  *v3 = v6;
  if (v5 >= 2 && (v5 & 0x7FFFFFFFFFFFFFFELL) != 2)
  {
    if (v9 != 1)
    {
      v28 = 0;
      v29 = v20 - 1;
      while (1)
      {
        v31 = v5 - (v28 + 1);
        if (__OFSUB__(v5, v28 + 1))
        {
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
          goto LABEL_76;
        }

        if (v5 == v28)
        {
          goto LABEL_71;
        }

        if (v31 >= *(v6 + 16))
        {
          goto LABEL_72;
        }

        v32 = v6 + 8 * v28;
        v33 = *(v32 + 40);
        v34 = v10[v31];
        v35 = (v34 * v4) >> 64;
        v36 = v34 * v4;
        v37 = (0xCFFE47FFFEAFFFFFLL * v36 * 0xFFFEB00001uLL) >> 64;
        v38 = __CFADD__(-v36, v36);
        v39 = v37 + v35;
        if (__CFADD__(v37, v35))
        {
          goto LABEL_50;
        }

        if (v39 != -1)
        {
          v42 = v39 + v38;
          if (v42 >= 0xFFFEB00001)
          {
            v41 = v42 - 0xFFFEB00001;
          }

          else
          {
            v41 = v42;
          }

          goto LABEL_58;
        }

        v41 = 0xFFFFFF00014FFFFELL;
        if (v38)
        {
          break;
        }

LABEL_58:
        *(v32 + 40) = v41;
        v43 = v33 * v4;
        v44 = (v33 * v4) >> 64;
        v45 = (0xCFFE47FFFEAFFFFFLL * v43 * 0xFFFEB00001uLL) >> 64;
        v46 = __CFADD__(-v43, v43);
        v19 = __CFADD__(v45, v44);
        v47 = v45 + v44;
        if (v19)
        {
          goto LABEL_40;
        }

        if (v47 != -1)
        {
          v48 = v47 + v46;
          if (v48 >= 0xFFFEB00001)
          {
            result = v48 - 0xFFFEB00001;
          }

          else
          {
            result = v48;
          }

          goto LABEL_41;
        }

        result = 0xFFFFFF00014FFFFELL;
        if (v46)
        {
          v46 = 1;
LABEL_40:
          v30 = v46 + v47;
          result = v30 - 0xFFFEB00001;
          if (v30 >= 0xFFFEB00001)
          {
            goto LABEL_74;
          }
        }

LABEL_41:
        v10[v31] = result;
        if (v29 == ++v28)
        {
          *v3 = v6;
          return result;
        }
      }

      v38 = 1;
LABEL_50:
      v40 = v38 + v39;
      v41 = v40 - 0xFFFEB00001;
      if (v40 >= 0xFFFEB00001)
      {
        goto LABEL_73;
      }

      goto LABEL_58;
    }

    goto LABEL_79;
  }

  return result;
}

uint64_t specialized inverseDiscreteFourierTransformFinish<A, B>(size:sizeInverse:output:)(uint64_t a1, unsigned int a2, uint64_t *a3)
{
  v6 = *a3;
  if (*(*a3 + 16) < a1)
  {
    goto LABEL_46;
  }

  v3 = a3;
  v5 = a2;
  v4 = a1;
  v7 = *a3;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_47;
  }

  for (i = *(v6 + 16); i; i = *(result + 16))
  {
    v10 = (v6 + 32);
    v11 = *(v6 + 32) * v5;
    v12 = 4293918721 * (-1048577 * v11);
    v13 = __CFADD__(v12, v11);
    v14 = v12 + v11;
    v15 = HIDWORD(v14);
    if (v13)
    {
      v14 = 0xFFFFFLL;
      v13 = __CFADD__(v15, 0xFFFFF);
      LODWORD(v15) = v15 + 0xFFFFF;
      if (!v13)
      {
        goto LABEL_11;
      }

      __break(1u);
    }

    if (v14 >= 0xFFF0000100000000)
    {
      LODWORD(v15) = v15 + 0xFFFFF;
    }

LABEL_11:
    *v10 = v15;
    if (v4 < -1)
    {
      goto LABEL_49;
    }

    v16 = v4 / 2;
    if (v4 / 2 >= i)
    {
      goto LABEL_49;
    }

    v17 = v10[v16] * v5;
    v18 = 4293918721 * (-1048577 * v17);
    v13 = __CFADD__(v18, v17);
    v19 = v18 + v17;
    v20 = HIDWORD(v19);
    if (!v13)
    {
      goto LABEL_18;
    }

    v19 = 0xFFFFFLL;
    v13 = __CFADD__(v20, 0xFFFFF);
    LODWORD(v20) = v20 + 0xFFFFF;
    if (v13)
    {
      __break(1u);
LABEL_18:
      if (v19 >= 0xFFF0000100000000)
      {
        LODWORD(v20) = v20 + 0xFFFFF;
      }
    }

    v10[v16] = v20;
    *v3 = v6;
    if (v4 < 2 || (v4 & 0x7FFFFFFFFFFFFFFELL) == 2)
    {
      return result;
    }

    if (i == 1)
    {
      goto LABEL_50;
    }

    v21 = 0;
    v22 = v16 - 1;
    while (1)
    {
      v24 = v4 - (v21 + 1);
      if (__OFSUB__(v4, v21 + 1))
      {
        break;
      }

      if (v4 == v21)
      {
        goto LABEL_43;
      }

      if (v24 >= *(v6 + 16))
      {
        goto LABEL_44;
      }

      v25 = v6 + 4 * v21;
      v26 = *(v25 + 36);
      v27 = v10[v24] * v5;
      v28 = 4293918721 * (-1048577 * v27);
      v13 = __CFADD__(v28, v27);
      v29 = v28 + v27;
      v30 = HIDWORD(v29);
      if (v13)
      {
        LODWORD(v30) = HIDWORD(v29) + 0xFFFFF;
        if (HIDWORD(v29) >= 0xFFF00001)
        {
          goto LABEL_45;
        }
      }

      else if (v29 >= 0xFFF0000100000000)
      {
        LODWORD(v30) = HIDWORD(v29) + 0xFFFFF;
      }

      *(v25 + 36) = v30;
      v31 = v26 * v5;
      result = 4293918721;
      v32 = 4293918721 * (-1048577 * v31);
      v13 = __CFADD__(v32, v31);
      v33 = v32 + v31;
      v23 = HIDWORD(v33);
      if (v13)
      {
        LODWORD(v23) = HIDWORD(v33) + 0xFFFFF;
        if (HIDWORD(v33) >= 0xFFF00001)
        {
          __break(1u);
LABEL_40:
          *v3 = v6;
          return result;
        }
      }

      else
      {
        result = (HIDWORD(v33) + 0xFFFFF);
        if (v33 >= 0xFFF0000100000000)
        {
          LODWORD(v23) = HIDWORD(v33) + 0xFFFFF;
        }
      }

      v10[v24] = v23;
      if (v22 == ++v21)
      {
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
LABEL_47:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
    v6 = result;
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

uint64_t specialized inverseDiscreteFourierTransformFinish<A, B>(size:sizeInverse:output:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  if (*(*a3 + 16) < a1)
  {
    goto LABEL_80;
  }

  v3 = a3;
  v4 = a2;
  v5 = a1;
  v7 = *a3;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v9 = *(v6 + 16);
    if (v9)
    {
      goto LABEL_4;
    }

LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
    return result;
  }

LABEL_81:
  result = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
  v6 = result;
  v9 = *(result + 16);
  if (!v9)
  {
    goto LABEL_82;
  }

LABEL_4:
  v10 = (v6 + 32);
  v11 = *(v6 + 32);
  v12 = (v11 * v4) >> 64;
  v13 = (0xFFFFFFFEFFFFFFFFLL * v11 * v4 * 0xFFFFFFFF00000001) >> 64;
  LODWORD(v14) = __CFADD__(-(v11 * v4), v11 * v4);
  v15 = v13 + v12;
  if (__CFADD__(v13, v12))
  {
    v16 = v15 + v14;
    goto LABEL_10;
  }

  while (v15 == -1)
  {
    if ((v14 & 1) == 0)
    {
      v14 = 4294967294;
      goto LABEL_20;
    }

    v16 = 0;
LABEL_10:
    v15 = 0xFFFFFFFFLL;
    v17 = __CFADD__(v16, 0xFFFFFFFFLL);
    v14 = v16 + 0xFFFFFFFFLL;
    if (!v17)
    {
      goto LABEL_20;
    }

    __break(1u);
  }

  v14 = v15 + (v14 & 1);
  if (v14 >= 0xFFFFFFFF00000001)
  {
    v14 += 0xFFFFFFFFLL;
  }

LABEL_20:
  *v10 = v14;
  if (v5 < -1)
  {
    goto LABEL_83;
  }

  v18 = v5 / 2;
  if (v5 / 2 >= v9)
  {
    goto LABEL_83;
  }

  v19 = v10[v18];
  v20 = (v19 * v4) >> 64;
  v21 = (0xFFFFFFFEFFFFFFFFLL * v19 * v4 * 0xFFFFFFFF00000001) >> 64;
  LODWORD(v22) = __CFADD__(-(v19 * v4), v19 * v4);
  v17 = __CFADD__(v21, v20);
  v23 = v21 + v20;
  if (v17)
  {
    v24 = v23 + v22;
    goto LABEL_28;
  }

  while (v23 == -1)
  {
    if ((v22 & 1) == 0)
    {
      v22 = 4294967294;
      goto LABEL_38;
    }

    v24 = 0;
LABEL_28:
    v23 = 0xFFFFFFFFLL;
    v17 = __CFADD__(v24, 0xFFFFFFFFLL);
    v22 = v24 + 0xFFFFFFFFLL;
    if (!v17)
    {
      goto LABEL_38;
    }

    __break(1u);
  }

  v22 = v23 + (v22 & 1);
  if (v22 >= 0xFFFFFFFF00000001)
  {
    v22 += 0xFFFFFFFFLL;
  }

LABEL_38:
  v10[v18] = v22;
  *v3 = v6;
  if (v5 >= 2 && (v5 & 0x7FFFFFFFFFFFFFFELL) != 2)
  {
    if (v9 != 1)
    {
      v25 = 0;
      v26 = v18 - 1;
      while (1)
      {
        v30 = v5 - (v25 + 1);
        if (__OFSUB__(v5, v25 + 1))
        {
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
          goto LABEL_81;
        }

        if (v5 == v25)
        {
          goto LABEL_76;
        }

        if (v30 >= *(v6 + 16))
        {
          goto LABEL_77;
        }

        v31 = v6 + 8 * v25;
        v32 = *(v31 + 40);
        v33 = v10[v30];
        result = (v33 * v4) >> 64;
        v34 = (0xFFFFFFFEFFFFFFFFLL * v33 * v4 * 0xFFFFFFFF00000001) >> 64;
        v35 = __CFADD__(-(v33 * v4), v33 * v4);
        v36 = v34 + result;
        if (!__CFADD__(v34, result))
        {
          if (v36 != -1)
          {
            v38 = v36 + v35;
            if (v38 >= 0xFFFFFFFF00000001)
            {
              v38 += 0xFFFFFFFFLL;
            }

            goto LABEL_63;
          }

          if (!v35)
          {
            v38 = 4294967294;
            goto LABEL_63;
          }

          v35 = 1;
        }

        v37 = v35 + v36;
        v17 = __CFADD__(v37, 0xFFFFFFFFLL);
        v38 = v37 + 0xFFFFFFFFLL;
        if (v17)
        {
          goto LABEL_78;
        }

LABEL_63:
        *(v31 + 40) = v38;
        v39 = (v32 * v4) >> 64;
        v40 = (0xFFFFFFFEFFFFFFFFLL * v32 * v4 * 0xFFFFFFFF00000001) >> 64;
        v27 = __CFADD__(-(v32 * v4), v32 * v4);
        v41 = v40 + v39;
        if (!__CFADD__(v40, v39))
        {
          if (v41 != -1)
          {
            v29 = v41 + v27;
            if (v29 >= 0xFFFFFFFF00000001)
            {
              v29 += 0xFFFFFFFFLL;
            }

            goto LABEL_44;
          }

          if (!v27)
          {
            v29 = 4294967294;
            goto LABEL_44;
          }

          v27 = 1;
        }

        v28 = v27 + v41;
        v17 = __CFADD__(v28, 0xFFFFFFFFLL);
        v29 = v28 + 0xFFFFFFFFLL;
        if (v17)
        {
          goto LABEL_79;
        }

LABEL_44:
        v10[v30] = v29;
        if (v26 == ++v25)
        {
          *v3 = v6;
          return result;
        }
      }
    }

    goto LABEL_84;
  }

  return result;
}

unsigned int *_s4VDAF11PINECircuitPAAE17computeRangeCheck_10lowerBound05upperG0Sb04isInD0_1F_11FiniteField11IntegerTypeQZ1vAK1utAHQz_A2NtFZAA15PINEMainCircuitVyAA7Field32VSRySfGG_Tt4B5(unsigned int *result, _DWORD *a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v5 = a3 - a4;
  if (a3 < a4)
  {
    v6 = -1048575 - a4;
    if (a4 > 0xFFF00001)
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v5 = a3 + v6;
    if (__CFADD__(a3, v6))
    {
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }
  }

  v7 = v5 + 0xFFF000FEFFFFFFFFLL * v5;
  if (v7 >= 0xFFF0000100000000)
  {
    v8 = 0;
  }

  else
  {
    v8 = HIDWORD(v7);
  }

  *result = v8;
  v9 = a5 - a3;
  if (a5 >= a3)
  {
    goto LABEL_10;
  }

  v10 = -1048575 - a3;
  if (a3 > 0xFFF00001)
  {
    goto LABEL_21;
  }

  v11 = __CFADD__(a5, v10);
  v9 = a5 + v10;
  if (v11)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_10:
  v12 = 0xFFF000FEFFFFFFFFLL * v9 + v9;
  if (v12 >= 0xFFF0000100000000)
  {
    v13 = 0;
  }

  else
  {
    v13 = HIDWORD(v12);
  }

  *a2 = v13;
  v14 = a5 - a4;
  if (a5 >= a4)
  {
    goto LABEL_16;
  }

  v15 = -1048575 - a4;
  if (a4 > 0xFFF00001)
  {
    goto LABEL_23;
  }

  v11 = __CFADD__(a5, v15);
  v14 = a5 + v15;
  if (v11)
  {
LABEL_25:
    __break(1u);
    return result;
  }

LABEL_16:
  if (0xFFF000FEFFFFFFFFLL * v14 + v14 >= 0xFFF0000100000000)
  {
    v16 = 0;
  }

  else
  {
    v16 = (0xFFF000FEFFFFFFFFLL * v14 + v14) >> 32;
  }

  return (v16 >= v8);
}

uint64_t specialized closure #1 in PINECircuit.wraparoundDotProducts<A>(_:random:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, unint64_t a3@<X4>, uint64_t a4@<X5>, void *a5@<X8>)
{
  v8 = 0;
  v9 = a3 >> 1;
  v10 = a2;
LABEL_2:
  while (2)
  {
    while (2)
    {
      v30 = v8;
      v11 = v10;
      while (1)
      {
        if (v9 == v10)
        {
          *(a4 + 40) = 0;
          *a5 = v30;
          return result;
        }

        if (v11 < a2 || v10 >= v9)
        {
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        v12 = *(a1 + 8 * v10);
        v13 = *(a4 + 40);
        if (!v13)
        {
          v14 = *(a4 + 32);
          v15 = *(v14 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream);
          if (!v15)
          {
            goto LABEL_38;
          }

          v17 = v15[3];
          v16 = v15[4];
          v18 = *(v14 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream);

          if (v17 == v16)
          {
            SeedStreamAES128CTR.fillBuffer()();
            v17 = v15[3];
          }

          result = swift_beginAccess();
          if ((v17 & 0x8000000000000000) != 0)
          {
            goto LABEL_33;
          }

          v20 = v15[2];
          if (v17 >= *(v20 + 16))
          {
            goto LABEL_34;
          }

          v21 = v17 + 1;
          v22 = *(v20 + v17 + 32);
          v15[3] = v21;

          *(a4 + 48) = v22;
          *(a4 + 40) = 8;
          v13 = 8;
        }

        v23 = __OFSUB__(v13, 2);
        v24 = v13 - 2;
        if (v23)
        {
          goto LABEL_32;
        }

        *(a4 + 40) = v24;
        v25 = *(a4 + 48);
        *(a4 + 48) = v25 >> 2;
        ++v10;
        v26 = v25 & 3;
        if (!v26)
        {
          if (v30 >= v12)
          {
            v8 = v30 - v12;
            goto LABEL_2;
          }

          v28 = 0xFFFEB00001 - v12;
          if (v12 <= 0xFFFEB00001)
          {
            v8 = v30 + v28;
            if (!__CFADD__(v30, v28))
            {
              goto LABEL_2;
            }

LABEL_36:
            __break(1u);
LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
LABEL_39:
            __break(1u);
            goto LABEL_40;
          }

LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        if (v26 == 3)
        {
          v11 = v10;
          if (v12)
          {
            break;
          }
        }
      }

      v27 = 0xFFFEB00001 - v12;
      if (v12 > 0xFFFEB00001)
      {
        goto LABEL_37;
      }

      if (v30 >= v27)
      {
        v8 = v30 - v27;
        continue;
      }

      break;
    }

    if (v27 > 0xFFFEB00001)
    {
      goto LABEL_39;
    }

    v8 = v30 + v12;
    if (!__CFADD__(v30, v12))
    {
      continue;
    }

    break;
  }

LABEL_40:
  __break(1u);
  return result;
}

{
  v8 = 0;
  v9 = a3 >> 1;
  v10 = a2;
LABEL_2:
  while (2)
  {
    while (2)
    {
      v30 = v8;
      v11 = v10;
      while (1)
      {
        if (v9 == v10)
        {
          *a5 = v30;
          *(a4 + 40) = 0;
          return result;
        }

        if (v11 < a2 || v10 >= v9)
        {
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        v12 = *(a1 + 8 * v10);
        v13 = *(a4 + 40);
        if (!v13)
        {
          v14 = *(a4 + 32);
          v15 = *(v14 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream);
          if (!v15)
          {
            goto LABEL_38;
          }

          v16 = v15[3];
          v17 = v15[4];
          v18 = *(v14 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream);

          if (v16 == v17)
          {
            SeedStreamAES128CTR.fillBuffer()();
            v16 = v15[3];
          }

          result = swift_beginAccess();
          if ((v16 & 0x8000000000000000) != 0)
          {
            goto LABEL_33;
          }

          v20 = v15[2];
          if (v16 >= *(v20 + 16))
          {
            goto LABEL_34;
          }

          v21 = v16 + 1;
          v22 = *(v20 + v16 + 32);
          v15[3] = v21;

          *(a4 + 48) = v22;
          *(a4 + 40) = 8;
          v13 = 8;
        }

        v23 = __OFSUB__(v13, 2);
        v24 = v13 - 2;
        if (v23)
        {
          goto LABEL_32;
        }

        *(a4 + 40) = v24;
        v25 = *(a4 + 48);
        *(a4 + 48) = v25 >> 2;
        ++v10;
        v26 = v25 & 3;
        if (!v26)
        {
          if (v30 >= v12)
          {
            v8 = v30 - v12;
            goto LABEL_2;
          }

          v28 = 0xFFFFFFFF00000001 - v12;
          if (v12 <= 0xFFFFFFFF00000001)
          {
            v8 = v30 + v28;
            if (!__CFADD__(v30, v28))
            {
              goto LABEL_2;
            }

LABEL_36:
            __break(1u);
LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
LABEL_39:
            __break(1u);
            goto LABEL_40;
          }

LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        if (v26 == 3)
        {
          v11 = v10;
          if (v12)
          {
            break;
          }
        }
      }

      v27 = 0xFFFFFFFF00000001 - v12;
      if (v12 > 0xFFFFFFFF00000001)
      {
        goto LABEL_37;
      }

      if (v30 >= v27)
      {
        v8 = v30 - v27;
        continue;
      }

      break;
    }

    if (v27 > 0xFFFFFFFF00000001)
    {
      goto LABEL_39;
    }

    v8 = v30 + v12;
    if (!__CFADD__(v30, v12))
    {
      continue;
    }

    break;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t specialized closure #1 in PINECircuit.wraparoundDotProducts<A>(_:random:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, unint64_t a3@<X4>, uint64_t a4@<X5>, _DWORD *a5@<X8>)
{
  v8 = 0;
  v9 = a3 >> 1;
  v10 = a2;
LABEL_2:
  while (2)
  {
    while (2)
    {
      v30 = v8;
      v11 = v10;
      while (1)
      {
        if (v9 == v10)
        {
          *(a4 + 40) = 0;
          *a5 = v30;
          return result;
        }

        if (v11 < a2 || v10 >= v9)
        {
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        v12 = *(a1 + 4 * v10);
        v13 = *(a4 + 40);
        if (!v13)
        {
          v14 = *(a4 + 32);
          v15 = *(v14 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream);
          if (!v15)
          {
            goto LABEL_38;
          }

          v17 = v15[3];
          v16 = v15[4];
          v18 = *(v14 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream);

          if (v17 == v16)
          {
            SeedStreamAES128CTR.fillBuffer()();
            v17 = v15[3];
          }

          result = swift_beginAccess();
          if ((v17 & 0x8000000000000000) != 0)
          {
            goto LABEL_33;
          }

          v20 = v15[2];
          if (v17 >= *(v20 + 16))
          {
            goto LABEL_34;
          }

          v21 = v17 + 1;
          v22 = *(v20 + v17 + 32);
          v15[3] = v21;

          *(a4 + 48) = v22;
          *(a4 + 40) = 8;
          v13 = 8;
        }

        v23 = __OFSUB__(v13, 2);
        v24 = v13 - 2;
        if (v23)
        {
          goto LABEL_32;
        }

        *(a4 + 40) = v24;
        v25 = *(a4 + 48);
        *(a4 + 48) = v25 >> 2;
        ++v10;
        v26 = v25 & 3;
        if (!v26)
        {
          if (v30 >= v12)
          {
            v8 = v30 - v12;
            goto LABEL_2;
          }

          v28 = -1048575 - v12;
          if (v12 <= 0xFFF00001)
          {
            v8 = v30 + v28;
            if (!__CFADD__(v30, v28))
            {
              goto LABEL_2;
            }

LABEL_36:
            __break(1u);
LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
LABEL_39:
            __break(1u);
            goto LABEL_40;
          }

LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        if (v26 == 3)
        {
          v11 = v10;
          if (v12)
          {
            break;
          }
        }
      }

      v27 = -1048575 - v12;
      if (v12 > 0xFFF00001)
      {
        goto LABEL_37;
      }

      if (v30 >= v27)
      {
        v8 = v30 - v27;
        continue;
      }

      break;
    }

    if (v27 > 0xFFF00001)
    {
      goto LABEL_39;
    }

    v8 = v30 + v12;
    if (!__CFADD__(v30, v12))
    {
      continue;
    }

    break;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t specialized PINENormEqualityCheckCircuit.evaluate(measurement:jointRand:numOfShares:for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v6 = *(a1 + 16);
  v7 = *(v4 + 9);
  if (v6 != v7)
  {
    _StringGuts.grow(_:)(35);

    *&v98 = 0xD00000000000001BLL;
    *(&v98 + 1) = 0x8000000270C51C80;
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v9);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v108 = v7;
    goto LABEL_5;
  }

  if (*(a2 + 16))
  {
    _StringGuts.grow(_:)(33);

    *&v98 = 0xD000000000000019;
    *(&v98 + 1) = 0x8000000270C51CE0;
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v8);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v108 = 0;
LABEL_5:
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v10);
LABEL_6:

    v11 = *(&v98 + 1);
    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v12 = v98;
    *(v12 + 8) = v11;
    *(v12 + 16) = 2;
    return swift_willThrow();
  }

  v15 = *(v4 + 8);
  v16 = *(v4 + 12);
  v115 = *(v4 + 13);
  v17 = *(v4 + 15);
  v94 = v4;
  v95 = *(v4 + 16);
  v18 = *(a3 + 16);
  v19 = *(v4 + 24);
  v109 = *(v4 + 8);
  v110 = v19;
  v111 = *(v4 + 40);
  specialized Gadget.wirePolynomialLength.getter();
  specialized Gadget.gadgetPolynomialLength.getter();
  if (v18 != 1)
  {
    v96 = v109;
    v70 = *(&v110 + 1);
    _StringGuts.grow(_:)(23);

    *&v98 = 0x2064696C61766E49;
    *(&v98 + 1) = 0xEF203A746E756F63;
    v108 = v18;
    v71 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v71);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF16GadgetParametersVGMd, &_ss23_ContiguousArrayStorageCy4VDAF16GadgetParametersVGMR);
    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_270C44540;
    v73 = specialized Gadget.wirePolynomialLength.getter();
    v74 = specialized Gadget.gadgetPolynomialLength.getter();
    *(v72 + 32) = v96;
    *(v72 + 48) = v70;
    *(v72 + 56) = v73;
    *(v72 + 64) = v74;
    v75 = MEMORY[0x2743B2770](v72, &type metadata for GadgetParameters);
    v77 = v76;

    MEMORY[0x2743B25F0](v75, v77);
    goto LABEL_6;
  }

  v88 = specialized Collection.prefix(_:)(v16, a1, a1 + 32, 0, (2 * v6) | 1);
  v86 = v21;
  v87 = v20;
  v85 = v22;
  v23 = specialized Collection.dropFirst(_:)(v16, a1, a1 + 32, 0, (2 * v6) | 1);
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = specialized Collection.prefix(_:)(v15, v23, v24, v26, v28);
  v90 = v32;
  v91 = v31;
  v89 = v33;
  v34 = specialized Collection.dropFirst(_:)(v15, v23, v25, v27, v29);
  v36 = v35;
  v38 = v37;
  v40 = v39;
  specialized Collection.prefix(_:)(v95, v34, v35, v37, v39);
  specialized Collection.dropFirst(_:)(v95, v34, v36, v38, v40);
  swift_bridgeObjectRetain_n();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  specialized Collection.prefix(_:)(v115, v30, v91, v90, v89);
  v84 = v41;
  v82 = v43;
  v83 = v42;
  v44 = specialized Collection.dropFirst(_:)(v115, v30, v91, v90, v89);
  v46 = v45;
  v48 = v47;
  v50 = v49;
  specialized Collection.prefix(_:)(v115, v44, v45, v47, v49);
  result = specialized Collection.dropFirst(_:)(v115, v44, v46, v48, v50);
  v54 = v17 + 1;
  if (__OFADD__(v17, 1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v55 = v54 * v95;
  if ((v54 * v95) >> 64 != (v54 * v95) >> 63)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v56 = result;
  v57 = v51;
  v58 = v52;
  v59 = v53;
  specialized Collection.prefix(_:)(v55, result, v51, v52, v53);
  specialized Collection.dropFirst(_:)(v55, v56, v57, v58, v59);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v60 = swift_unknownObjectRelease();
  v61 = v94[7];
  v62 = v94[8];
  v63 = v94[5];
  v104 = v94[6];
  v105 = v61;
  v106 = v62;
  v64 = v94[3];
  v65 = v94[4];
  v100 = v94[2];
  v101 = v64;
  v107 = *(v94 + 18);
  v66 = *(a3 + 32);
  v102 = v65;
  v103 = v63;
  v67 = v94[1];
  v98 = *v94;
  v99 = v67;
  v68 = *(v94 + 24);
  v112 = *(v94 + 8);
  v113 = v68;
  v114 = *(v94 + 40);
  MEMORY[0x28223BE20](v60, v69);
  sub_270B60478(v66);
  specialized ParallelSum.chunkEvaluateSum(_:for:_:)(v88, v87, v86, v85, v66, partial apply for specialized closure #1 in PINENormEqualityCheckCircuit.evaluateNormEqualityCheck(inputVector:vBits:for:), &v108);
  if (v5)
  {
    swift_unknownObjectRelease();
    outlined consume of GadgetEvaluation<A><A>(v66);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  _s4VDAF12FieldElementPAAE11inputVectorxs10ArraySliceVyxG_tKcfCAA7Field40V_Tt1g5(v84, v83, v82, &v97);
  swift_unknownObjectRelease();
  outlined consume of GadgetEvaluation<A><A>(v66);
  swift_unknownObjectRelease();
  result = swift_unknownObjectRelease();
  v78 = v97 - v108;
  if (v97 >= v108)
  {
    goto LABEL_18;
  }

  v79 = 0xFFFEB00001 - v108;
  v80 = a4;
  if (v108 <= 0xFFFEB00001)
  {
    v81 = __CFADD__(v97, v79);
    v78 = v97 + v79;
    if (!v81)
    {
      goto LABEL_19;
    }

    __break(1u);
LABEL_18:
    v80 = a4;
LABEL_19:
    *v80 = v78;
    return result;
  }

LABEL_22:
  __break(1u);
  return result;
}

{
  v6 = *(a1 + 16);
  v7 = *(v4 + 9);
  if (v6 != v7)
  {
    _StringGuts.grow(_:)(35);

    *&v98 = 0xD00000000000001BLL;
    *(&v98 + 1) = 0x8000000270C51C80;
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v9);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v108 = v7;
    goto LABEL_5;
  }

  if (*(a2 + 16))
  {
    _StringGuts.grow(_:)(33);

    *&v98 = 0xD000000000000019;
    *(&v98 + 1) = 0x8000000270C51CE0;
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v8);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v108 = 0;
LABEL_5:
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v10);
LABEL_6:

    v11 = *(&v98 + 1);
    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v12 = v98;
    *(v12 + 8) = v11;
    *(v12 + 16) = 2;
    return swift_willThrow();
  }

  v15 = *(v4 + 8);
  v16 = *(v4 + 12);
  v115 = *(v4 + 13);
  v17 = *(v4 + 15);
  v94 = v4;
  v95 = *(v4 + 16);
  v18 = *(a3 + 16);
  v19 = *(v4 + 24);
  v109 = *(v4 + 8);
  v110 = v19;
  v111 = *(v4 + 40);
  specialized Gadget.wirePolynomialLength.getter();
  specialized Gadget.gadgetPolynomialLength.getter();
  if (v18 != 1)
  {
    v96 = v109;
    v70 = *(&v110 + 1);
    _StringGuts.grow(_:)(23);

    *&v98 = 0x2064696C61766E49;
    *(&v98 + 1) = 0xEF203A746E756F63;
    v108 = v18;
    v71 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v71);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF16GadgetParametersVGMd, &_ss23_ContiguousArrayStorageCy4VDAF16GadgetParametersVGMR);
    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_270C44540;
    v73 = specialized Gadget.wirePolynomialLength.getter();
    v74 = specialized Gadget.gadgetPolynomialLength.getter();
    *(v72 + 32) = v96;
    *(v72 + 48) = v70;
    *(v72 + 56) = v73;
    *(v72 + 64) = v74;
    v75 = MEMORY[0x2743B2770](v72, &type metadata for GadgetParameters);
    v77 = v76;

    MEMORY[0x2743B25F0](v75, v77);
    goto LABEL_6;
  }

  v88 = specialized Collection.prefix(_:)(v16, a1, a1 + 32, 0, (2 * v6) | 1);
  v86 = v21;
  v87 = v20;
  v85 = v22;
  v23 = specialized Collection.dropFirst(_:)(v16, a1, a1 + 32, 0, (2 * v6) | 1);
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = specialized Collection.prefix(_:)(v15, v23, v24, v26, v28);
  v90 = v32;
  v91 = v31;
  v89 = v33;
  v34 = specialized Collection.dropFirst(_:)(v15, v23, v25, v27, v29);
  v36 = v35;
  v38 = v37;
  v40 = v39;
  specialized Collection.prefix(_:)(v95, v34, v35, v37, v39);
  specialized Collection.dropFirst(_:)(v95, v34, v36, v38, v40);
  swift_bridgeObjectRetain_n();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  specialized Collection.prefix(_:)(v115, v30, v91, v90, v89);
  v84 = v41;
  v82 = v43;
  v83 = v42;
  v44 = specialized Collection.dropFirst(_:)(v115, v30, v91, v90, v89);
  v46 = v45;
  v48 = v47;
  v50 = v49;
  specialized Collection.prefix(_:)(v115, v44, v45, v47, v49);
  result = specialized Collection.dropFirst(_:)(v115, v44, v46, v48, v50);
  v54 = v17 + 1;
  if (__OFADD__(v17, 1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v55 = v54 * v95;
  if ((v54 * v95) >> 64 != (v54 * v95) >> 63)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v56 = result;
  v57 = v51;
  v58 = v52;
  v59 = v53;
  specialized Collection.prefix(_:)(v55, result, v51, v52, v53);
  specialized Collection.dropFirst(_:)(v55, v56, v57, v58, v59);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v60 = swift_unknownObjectRelease();
  v61 = v94[7];
  v62 = v94[8];
  v63 = v94[5];
  v104 = v94[6];
  v105 = v61;
  v106 = v62;
  v64 = v94[3];
  v65 = v94[4];
  v100 = v94[2];
  v101 = v64;
  v107 = *(v94 + 18);
  v66 = *(a3 + 32);
  v102 = v65;
  v103 = v63;
  v67 = v94[1];
  v98 = *v94;
  v99 = v67;
  v68 = *(v94 + 24);
  v112 = *(v94 + 8);
  v113 = v68;
  v114 = *(v94 + 40);
  MEMORY[0x28223BE20](v60, v69);
  sub_270B60478(v66);
  specialized ParallelSum.chunkEvaluateSum(_:for:_:)(v88, v87, v86, v85, v66, partial apply for specialized closure #1 in PINENormEqualityCheckCircuit.evaluateNormEqualityCheck(inputVector:vBits:for:), &v108);
  if (v5)
  {
    swift_unknownObjectRelease();
    outlined consume of GadgetEvaluation<A><A>(v66);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  _s4VDAF12FieldElementPAAE11inputVectorxs10ArraySliceVyxG_tKcfCAA7Field64V_Tt1g5(v84, v83, v82, &v97);
  swift_unknownObjectRelease();
  outlined consume of GadgetEvaluation<A><A>(v66);
  swift_unknownObjectRelease();
  result = swift_unknownObjectRelease();
  v78 = v97 - v108;
  if (v97 >= v108)
  {
    goto LABEL_18;
  }

  v79 = 0xFFFFFFFF00000001 - v108;
  v80 = a4;
  if (v108 <= 0xFFFFFFFF00000001)
  {
    v81 = __CFADD__(v97, v79);
    v78 = v97 + v79;
    if (!v81)
    {
      goto LABEL_19;
    }

    __break(1u);
LABEL_18:
    v80 = a4;
LABEL_19:
    *v80 = v78;
    return result;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t specialized PINENormEqualityCheckCircuit.evaluate(measurement:jointRand:numOfShares:for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, _DWORD *a4@<X8>)
{
  v6 = *(a1 + 16);
  v7 = *(v4 + 9);
  if (v6 != v7)
  {
    _StringGuts.grow(_:)(35);

    *&v98 = 0xD00000000000001BLL;
    *(&v98 + 1) = 0x8000000270C51C80;
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v9);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v108 = v7;
    goto LABEL_5;
  }

  if (*(a2 + 16))
  {
    _StringGuts.grow(_:)(33);

    *&v98 = 0xD000000000000019;
    *(&v98 + 1) = 0x8000000270C51CE0;
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v8);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v108 = 0;
LABEL_5:
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v10);
LABEL_6:

    v11 = *(&v98 + 1);
    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v12 = v98;
    *(v12 + 8) = v11;
    *(v12 + 16) = 2;
    return swift_willThrow();
  }

  v15 = *(v4 + 8);
  v16 = *(v4 + 12);
  v115 = *(v4 + 13);
  v17 = *(v4 + 15);
  v94 = v4;
  v95 = *(v4 + 16);
  v18 = *(a3 + 16);
  v19 = *(v4 + 24);
  v109 = *(v4 + 8);
  v110 = v19;
  v111 = *(v4 + 40);
  specialized Gadget.wirePolynomialLength.getter();
  specialized Gadget.gadgetPolynomialLength.getter();
  if (v18 != 1)
  {
    v96 = v109;
    v70 = *(&v110 + 1);
    _StringGuts.grow(_:)(23);

    *&v98 = 0x2064696C61766E49;
    *(&v98 + 1) = 0xEF203A746E756F63;
    v108 = v18;
    v71 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v71);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF16GadgetParametersVGMd, &_ss23_ContiguousArrayStorageCy4VDAF16GadgetParametersVGMR);
    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_270C44540;
    v73 = specialized Gadget.wirePolynomialLength.getter();
    v74 = specialized Gadget.gadgetPolynomialLength.getter();
    *(v72 + 32) = v96;
    *(v72 + 48) = v70;
    *(v72 + 56) = v73;
    *(v72 + 64) = v74;
    v75 = MEMORY[0x2743B2770](v72, &type metadata for GadgetParameters);
    v77 = v76;

    MEMORY[0x2743B25F0](v75, v77);
    goto LABEL_6;
  }

  v88 = specialized Collection.prefix(_:)(v16, a1, a1 + 32, 0, (2 * v6) | 1);
  v86 = v21;
  v87 = v20;
  v85 = v22;
  v23 = specialized Collection.dropFirst(_:)(v16, a1, a1 + 32, 0, (2 * v6) | 1);
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = specialized Collection.prefix(_:)(v15, v23, v24, v26, v28);
  v90 = v32;
  v91 = v31;
  v89 = v33;
  v34 = specialized Collection.dropFirst(_:)(v15, v23, v25, v27, v29);
  v36 = v35;
  v38 = v37;
  v40 = v39;
  specialized Collection.prefix(_:)(v95, v34, v35, v37, v39);
  specialized Collection.dropFirst(_:)(v95, v34, v36, v38, v40);
  swift_bridgeObjectRetain_n();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  specialized Collection.prefix(_:)(v115, v30, v91, v90, v89);
  v84 = v41;
  v82 = v43;
  v83 = v42;
  v44 = specialized Collection.dropFirst(_:)(v115, v30, v91, v90, v89);
  v46 = v45;
  v48 = v47;
  v50 = v49;
  specialized Collection.prefix(_:)(v115, v44, v45, v47, v49);
  result = specialized Collection.dropFirst(_:)(v115, v44, v46, v48, v50);
  v54 = v17 + 1;
  if (__OFADD__(v17, 1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v55 = v54 * v95;
  if ((v54 * v95) >> 64 != (v54 * v95) >> 63)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v56 = result;
  v57 = v51;
  v58 = v52;
  v59 = v53;
  specialized Collection.prefix(_:)(v55, result, v51, v52, v53);
  specialized Collection.dropFirst(_:)(v55, v56, v57, v58, v59);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v60 = swift_unknownObjectRelease();
  v61 = v94[7];
  v62 = v94[8];
  v63 = v94[5];
  v104 = v94[6];
  v105 = v61;
  v106 = v62;
  v64 = v94[3];
  v65 = v94[4];
  v100 = v94[2];
  v101 = v64;
  v107 = *(v94 + 36);
  v66 = *(a3 + 32);
  v102 = v65;
  v103 = v63;
  v67 = v94[1];
  v98 = *v94;
  v99 = v67;
  v68 = *(v94 + 24);
  v112 = *(v94 + 8);
  v113 = v68;
  v114 = *(v94 + 40);
  MEMORY[0x28223BE20](v60, v69);
  sub_270B60478(v66);
  specialized ParallelSum.chunkEvaluateSum(_:for:_:)(v88, v87, v86, v85, v66, partial apply for specialized closure #1 in PINENormEqualityCheckCircuit.evaluateNormEqualityCheck(inputVector:vBits:for:), &v108);
  if (v5)
  {
    swift_unknownObjectRelease();
    outlined consume of GadgetEvaluation<A><A>(v66);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  _s4VDAF12FieldElementPAAE11inputVectorxs10ArraySliceVyxG_tKcfCAA7Field32V_Tt1g5(v84, v83, v82, &v97);
  swift_unknownObjectRelease();
  outlined consume of GadgetEvaluation<A><A>(v66);
  swift_unknownObjectRelease();
  result = swift_unknownObjectRelease();
  v78 = v97 - v108;
  if (v97 >= v108)
  {
    goto LABEL_18;
  }

  v79 = -1048575 - v108;
  v80 = a4;
  if (v108 <= 0xFFF00001)
  {
    v81 = __CFADD__(v97, v79);
    v78 = v97 + v79;
    if (!v81)
    {
      goto LABEL_19;
    }

    __break(1u);
LABEL_18:
    v80 = a4;
LABEL_19:
    *v80 = v78;
    return result;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t specialized PINEMainCircuit.evaluate(measurement:jointRand:numOfShares:for:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, int64_t a3@<X2>, int64_t a4@<X3>, unint64_t *a5@<X8>)
{
  v7 = *(a1 + 16);
  v8 = *(v5 + 72);
  if (v7 != v8)
  {
    _StringGuts.grow(_:)(35);

    *&v261 = 0xD00000000000001BLL;
    *(&v261 + 1) = 0x8000000270C51C80;
    v78 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v78);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v265 = v8;
LABEL_20:
    v80 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v80);
LABEL_21:

    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v81 = v261;
    *(v81 + 16) = 2;
    return swift_willThrow();
  }

  if (a2[2] != 3)
  {
    _StringGuts.grow(_:)(33);

    *&v261 = 0xD000000000000019;
    *(&v261 + 1) = 0x8000000270C51CE0;
    v79 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v79);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v265 = 3;
    goto LABEL_20;
  }

  v258 = v6;
  v259 = a1;
  v256 = *(v5 + 64);
  v11 = *(v5 + 96);
  v239 = *(v5 + 104);
  v252 = *(v5 + 120);
  v243 = *(v5 + 128);
  v234 = *(v5 + 136);
  v236 = *(v5 + 144);
  v240 = a4;
  v12 = *(a4 + 16);
  v13 = *(v5 + 40);
  v14 = *(v5 + 24);
  v262 = *(v5 + 8);
  v263 = v14;
  v264 = v13;
  v16 = *(&v262 + 1);
  v15 = v262;
  v17 = v13;
  specialized Gadget.wirePolynomialLength.getter();
  specialized Gadget.gadgetPolynomialLength.getter();
  if (v12 != 1)
  {
    _StringGuts.grow(_:)(23);

    *&v261 = 0x2064696C61766E49;
    *(&v261 + 1) = 0xEF203A746E756F63;
    v265 = v12;
    v82 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v82);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF16GadgetParametersVGMd, &_ss23_ContiguousArrayStorageCy4VDAF16GadgetParametersVGMR);
    v83 = swift_allocObject();
    *(v83 + 16) = xmmword_270C44540;
    v84 = specialized Gadget.wirePolynomialLength.getter();
    v85 = specialized Gadget.gadgetPolynomialLength.getter();
    *(v83 + 32) = v15;
    *(v83 + 40) = v16;
    *(v83 + 48) = v17;
    *(v83 + 56) = v84;
    *(v83 + 64) = v85;
    v86 = MEMORY[0x2743B2770](v83, &type metadata for GadgetParameters);
    v88 = v87;

    MEMORY[0x2743B25F0](v86, v88);
    goto LABEL_21;
  }

  v235 = v262;
  if (a3 < 0)
  {
    goto LABEL_421;
  }

  _s4VDAF12FieldElementPAAEyx06FiniteB0_11IntegerTypeQZcfCAA7Field40V_Tt1g5(a3, &v265);
  v17 = v265;
  if (!v265)
  {
    goto LABEL_452;
  }

  v12 = 0xFFFEB00001;
  v260 = 0x1B7FFFEB0;
  v18 = 0xFFFEAFFFFFLL;
  _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF8_UInt128V_s6UInt64VTt1g5(0xFFFEAFFFFFLL, &v261);
  if (v261 == 0)
  {
LABEL_7:
    v17 = a2[4];
    v242 = a2[5];
    v224 = a2[6];
    v19 = (2 * v7) | 1;
    specialized Collection.prefix(_:)(v11, v259, v259 + 32, 0, v19);
    v20 = specialized Collection.dropFirst(_:)(v11, v259, v259 + 32, 0, v19);
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v241 = specialized Collection.prefix(_:)(v256, v20, v21, v23, v25);
    v245 = v27;
    v253 = v28;
    v237 = v29;
    v30 = specialized Collection.dropFirst(_:)(v256, v20, v22, v24, v26);
    v32 = v31;
    v34 = v33;
    v36 = v35;
    specialized Collection.prefix(_:)(v243, v30, v31, v33, v35);
    v225 = v37;
    v226 = v38;
    v231 = v39;
    specialized Collection.dropFirst(_:)(v243, v30, v32, v34, v36);
    swift_bridgeObjectRetain_n();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v40 = *(v240 + 32);
    swift_unknownObjectRetain();
    v251 = v40;
    sub_270B60478(v40);
    if (one-time initialization token for one != -1)
    {
      goto LABEL_422;
    }

    goto LABEL_8;
  }

  v44 = 0xFFFFFF00014FFFFELL;
  while (1)
  {
    _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF8_UInt128V_s6UInt64VTt1g5(v18 & 1, &v261);
    if (v261 == 0)
    {
      v90 = v260;
      goto LABEL_47;
    }

    v91 = (v17 * v260) >> 64;
    v92 = (0xCFFE47FFFEAFFFFFLL * v17 * v260 * 0xFFFEB00001uLL) >> 64;
    v93 = __CFADD__(-(v17 * v260), v17 * v260);
    v141 = __CFADD__(v92, v91);
    v94 = v92 + v91;
    if (v141)
    {
      v95 = v94 + v93;
    }

    else
    {
      v95 = 0;
      if (v94 != -1)
      {
        v96 = v94 + v93;
        if (v96 >= 0xFFFEB00001)
        {
          v90 = v96 - 0xFFFEB00001;
        }

        else
        {
          v90 = v96;
        }

        goto LABEL_47;
      }

      if (!v93)
      {
        v90 = 0xFFFFFF00014FFFFELL;
        goto LABEL_47;
      }
    }

    v90 = v95 - 0xFFFEB00001;
    if (v95 >= 0xFFFEB00001)
    {
      goto LABEL_384;
    }

LABEL_47:
    v97 = (v17 * v17) >> 64;
    v98 = (0xCFFE47FFFEAFFFFFLL * v17 * v17 * 0xFFFEB00001uLL) >> 64;
    v43 = -(v17 * v17);
    v99 = __CFADD__(v43, v17 * v17);
    v141 = __CFADD__(v98, v97);
    v46 = v98 + v97;
    if (!v141)
    {
      if (v46 == -1)
      {
        v17 = 0xFFFFFF00014FFFFELL;
        if (v99)
        {
          v17 = 0xFFFFFF00014FFFFFLL;
        }
      }

      else
      {
        v89 = v46 + v99;
        if (v89 >= 0xFFFEB00001)
        {
          v17 = v89 - 0xFFFEB00001;
        }

        else
        {
          v17 = v89;
        }
      }

      goto LABEL_28;
    }

    v100 = v46 + v99;
    v17 = v100 - 0xFFFEB00001;
    if (v100 >= 0xFFFEB00001)
    {
      break;
    }

LABEL_28:
    v260 = v90;
    v18 >>= 1;
    _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF8_UInt128V_s6UInt64VTt1g5(v18, &v261);
    if (v261 == 0)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_54:
  v255 = 0;
  v101 = v12 - v46;
  v102 = v12 < v46;
  v248 = v251 >> 62;
  v250 = a3;
  v76 = v232;
  v103 = v44;
  while (1)
  {
    v105 = v103 + v43;
    v106 = ((v103 + v43) >> 63) ^ 0x8000000000000000;
    if (!__OFADD__(v103, v43))
    {
      v106 = v103 + v43;
    }

    v257 = v106;
    if (__OFADD__(v103, v43))
    {
      goto LABEL_385;
    }

    if (a3 >= v105)
    {
      a3 = v103 + v43;
    }

    if (a3 < v103)
    {
LABEL_386:
      __break(1u);
LABEL_387:
      __break(1u);
LABEL_388:
      __break(1u);
LABEL_389:
      __break(1u);
LABEL_390:
      __break(1u);
LABEL_391:
      __break(1u);
LABEL_392:
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      outlined consume of GadgetEvaluation<A><A>(v44);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return swift_unknownObjectRelease();
    }

    if (v103 < v44)
    {
      goto LABEL_387;
    }

    if (v105 < 0)
    {
      goto LABEL_388;
    }

    v44 = a3 - v103;
    if (__OFSUB__(a3, v103))
    {
      goto LABEL_389;
    }

    if (v44 < 0)
    {
      goto LABEL_390;
    }

    if (v44)
    {
      break;
    }

LABEL_107:
    if (v43 < v44)
    {
      goto LABEL_391;
    }

    if (v44 != v43)
    {
      if (v44 >= v43)
      {
        goto LABEL_411;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = specialized _ArrayBuffer._consumeAndCreateNew()(v15);
      }

      v109 = v44 + 0x4000000000000000;
      v110 = 2 * a3 - 2 * v103;
      v111 = (v15 - 16 * v103 + 16 * a3 + 40);
      v125 = v259 + v103 - a3;
      v44 = v253;
      a3 = v250;
      while ((v109 & 0x8000000000000000) == 0)
      {
        if ((v110 & 0x8000000000000000) != 0)
        {
          goto LABEL_293;
        }

        v107 = *(v15 + 16);
        if (v110 >= v107)
        {
          goto LABEL_294;
        }

        *(v111 - 1) = 0;
        v108 = v110 + 1;
        if (v110 + 1 >= v107)
        {
          goto LABEL_295;
        }

        *v111 = 0;
        v111 += 2;
        ++v109;
        v110 += 2;
        if (!--v125)
        {
          goto LABEL_119;
        }
      }

      goto LABEL_292;
    }

    v44 = v253;
    a3 = v250;
LABEL_119:
    if (v248)
    {
      if (v248 == 1)
      {
        specialized QueryGadget.evaluate<A>(at:)(v15, specialized _ArrayBuffer._consumeAndCreateNew(), specialized _ArrayBuffer._consumeAndCreateNew(), &v261);
        goto LABEL_124;
      }
    }

    else
    {
      specialized GadgetWireInputs.update<A>(_:)(v15, specialized _ArrayBuffer._consumeAndCreateNew(), specialized _ArrayBuffer._consumeAndCreateNew());
      if (v258)
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        outlined consume of GadgetEvaluation<A><A>(v251);

        swift_unknownObjectRelease();
        return swift_unknownObjectRelease();
      }
    }

    specialized ParallelSum.evaluate<A>(at:)(v15, &v261);
LABEL_124:
    v43 = v259;
    if (v261)
    {
      v126 = v12 - v261;
      if (v12 < v261)
      {
        goto LABEL_410;
      }

      if (v255 < v126)
      {
        if (v12 < v126)
        {
          goto LABEL_419;
        }

        v141 = __CFADD__(v255, v261);
        v255 += v261;
        if (!v141)
        {
          goto LABEL_56;
        }

        while (2)
        {
          __break(1u);
LABEL_421:
          __break(1u);
LABEL_422:
          swift_once();
LABEL_8:
          v232 = static Field40.one;
          v41 = *(&v264 + 1);
          v42 = _sSa9repeating5countSayxGx_SitcfC4VDAF7Field40V_Tt1B5(0, v235);
          if (!v41)
          {
            __break(1u);
LABEL_424:
            __break(1u);
LABEL_425:
            __break(1u);
LABEL_426:
            __break(1u);
LABEL_427:
            __break(1u);
            goto LABEL_428;
          }

          v43 = v41;
          v15 = v42;
          a3 = v237 >> 1;
          v44 = v253;
          v45 = (v237 >> 1) >= v253;
          if (v41 > 0)
          {
            v45 = v253 >= (v237 >> 1);
          }

          v46 = v260;
          v259 = v41;
          if (v45)
          {
            v255 = 0;
LABEL_13:
            swift_unknownObjectRelease();
            outlined consume of GadgetEvaluation<A><A>(v251);

            specialized Collection.prefix(_:)(v239, v241, v245, v44, v237);
            v48 = v47;
            v254 = v49;
            v247 = v50;
            v51 = specialized Collection.dropFirst(_:)(v239, v241, v245, v44, v237);
            v53 = v52;
            v55 = v54;
            v57 = v56;
            v237 = specialized Collection.prefix(_:)(v239, v51, v52, v54, v56);
            v246 = v58;
            v227 = v60;
            v229 = v59;
            v61 = specialized Collection.dropFirst(_:)(v239, v51, v53, v55, v57);
            v65 = v252 + 1;
            if (__OFADD__(v252, 1))
            {
LABEL_428:
              __break(1u);
            }

            else
            {
              v66 = v65 * v243;
              v251 = v252 + 1;
              if ((v65 * v243) >> 64 == (v65 * v243) >> 63)
              {
                v67 = v61;
                v68 = v62;
                v69 = v63;
                v70 = v64;
                v71 = v48;
                v72 = specialized Collection.prefix(_:)(v65 * v243, v61, v62, v63, v64);
                v257 = v73;
                v250 = v74;
                v244 = v75;
                specialized Collection.dropFirst(_:)(v66, v67, v68, v69, v70);
                swift_unknownObjectRetain();
                swift_unknownObjectRetain();
                swift_unknownObjectRetain();
                _s4VDAF15PINEMainCircuitV22evaluateNormRangeCheck5vBits01uH018inverseNumOfShares3forxs10ArraySliceVyxG_AKxAA16GadgetEvaluationOyxGtKFAA7Field40V_SRySfGTt3B5(v71, v254, v247, v246, v229, v227, &v261, v260);
                v76 = v258;
                if (v258)
                {
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  return swift_unknownObjectRelease();
                }

                v15 = v244;
                v245 = v72;
                v17 = *(v240 + 32);
                v103 = v232 - v236;
                if (v232 >= v236)
                {
                  goto LABEL_136;
                }

                v127 = v12 - v236;
                v44 = v231;
                if (v12 >= v236)
                {
                  v103 = v232 + v127;
                  if (!__CFADD__(v232, v127))
                  {
LABEL_137:
                    sub_270B60478(v17);
                    a3 = _sSa9repeating5countSayxGx_SitcfC4VDAF7Field40V_Tt1B5(0, v235);
                    v108 = v226 >> 1;
                    v128 = (v226 >> 1) >= v44;
                    v107 = v259;
                    if (v259 > 0)
                    {
                      v128 = v44 >= (v226 >> 1);
                    }

                    if (v128)
                    {
                      v253 = 0;
                      v44 = 0;
LABEL_141:

                      v102 = v224;
                      v129 = v234;
                      v103 = v245;
                      if ((v234 & 0x8000000000000000) != 0)
                      {
                        v130 = -v234;
                        if (__OFSUB__(0, v234))
                        {
                          goto LABEL_446;
                        }

                        if ((v130 & 0x8000000000000000) != 0)
                        {
LABEL_447:
                          __break(1u);
                        }

                        else
                        {
                          v129 = v12 + v234;
                          if (v12 >= v130)
                          {
                            goto LABEL_145;
                          }
                        }

                        __break(1u);
                        goto LABEL_449;
                      }

LABEL_145:
                      _s4VDAF12FieldElementPAAEyx06FiniteB0_11IntegerTypeQZcfCAA7Field40V_Tt1g5(v129, &v265);
                      swift_unknownObjectRelease();
                      swift_unknownObjectRelease();
                      swift_unknownObjectRelease();
                      outlined consume of GadgetEvaluation<A><A>(v17);
                      swift_unknownObjectRelease();
                      swift_unknownObjectRelease();
                      swift_unknownObjectRelease();
                      v131 = (v265 * v260) >> 64;
                      v108 = 0xCFFE47FFFEAFFFFFLL;
                      v132 = (0xCFFE47FFFEAFFFFFLL * v265 * v260 * v12) >> 64;
                      v110 = __CFADD__(0xCFFE47FFFEAFFFFFLL * v265 * v260 * v12, v265 * v260);
                      v141 = __CFADD__(v132, v131);
                      v109 = v132 + v131;
                      if (!v141)
                      {
                        v107 = 0xFFFFFF00014FFFFFLL;
                        v111 = v253;
                        if (v109 != -1)
                        {
                          v134 = v109 + (v110 & 1);
                          if (v134 >= v12)
                          {
                            v134 -= 0xFFFEB00001;
                          }

                          goto LABEL_303;
                        }

                        goto LABEL_298;
                      }

                      v107 = 0xFFFFFF00014FFFFFLL;
                      v111 = v253;
LABEL_151:
                      v133 = v110 + v109;
                      v141 = __CFADD__(v133, v107);
                      v134 = v133 + v107;
                      if (!v141)
                      {
                        goto LABEL_303;
                      }

                      __break(1u);
                    }

                    v253 = 0;
                    v135 = 0;
                    v239 = v15 & 1;
                    v240 = v15 >> 1;
                    v136 = v103 * v260;
                    v137 = (v103 * v260) >> 64;
                    v138 = 0xCFFE47FFFEAFFFFFLL * v103 * v260 * v12;
                    v139 = (0xCFFE47FFFEAFFFFFLL * v103 * v260 * v12) >> 64;
                    v243 = v139 + v137;
                    v140 = __CFADD__(v139, v137);
                    v238 = v140;
                    v141 = __CFADD__(v138, v136);
                    v142 = __CFADD__(v138, v136);
                    v249 = v142;
                    v143 = v137 + v141 + v139;
                    if (v143 >= v12)
                    {
                      v143 -= 0xFFFEB00001;
                    }

                    v236 = v143;
                    v144 = v17 >> 62;
                    v145 = v44;
                    v146 = v232;
                    v221 = v17;
                    v222 = v108;
                    v228 = v17 >> 62;
                    v15 = v44;
                    v44 = 0;
LABEL_163:
                    v147 = v145 + v107;
                    if (__OFADD__(v145, v107))
                    {
                      goto LABEL_430;
                    }

                    if (v108 >= v147)
                    {
                      v148 = v145 + v107;
                    }

                    else
                    {
                      v148 = v108;
                    }

                    if (v148 < v145)
                    {
                      goto LABEL_431;
                    }

                    if (v145 < v15)
                    {
                      goto LABEL_432;
                    }

                    if (v147 < 0)
                    {
                      goto LABEL_433;
                    }

                    v149 = v148 - v145;
                    if (__OFSUB__(v148, v145))
                    {
                      goto LABEL_434;
                    }

                    if (v149 < 0)
                    {
                      goto LABEL_435;
                    }

                    v223 = v148;
                    v235 = v145;
                    v230 = v145 + v107;
                    v232 = v44;
                    if (v149)
                    {
                      v226 = v148 - v145;
                      v258 = v76;
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        a3 = specialized _ArrayBuffer._consumeAndCreateNew()(a3);
                      }

                      v150 = v240;
                      v151 = v226;
                      v152 = 0;
                      v241 = a3;
                      v153 = (a3 + 40);
                      v154 = (v225 + 8 * v235);
                      while (1)
                      {
                        if (!v151)
                        {
                          goto LABEL_397;
                        }

                        v155 = v135 * v251;
                        if ((v135 * v251) >> 64 != (v135 * v251) >> 63)
                        {
                          goto LABEL_398;
                        }

                        v156 = v250 + v155;
                        if (__OFADD__(v250, v155))
                        {
                          goto LABEL_399;
                        }

                        v157 = v156 + v252;
                        if (__OFADD__(v156, v252))
                        {
                          goto LABEL_400;
                        }

                        if (v157 < v156)
                        {
                          goto LABEL_401;
                        }

                        if (v150 < v156)
                        {
                          goto LABEL_402;
                        }

                        if (v156 < v250)
                        {
                          goto LABEL_403;
                        }

                        if (v150 < v157)
                        {
                          goto LABEL_404;
                        }

                        if (v157 < 0)
                        {
                          goto LABEL_405;
                        }

                        v17 = v239 | (2 * v157);
                        swift_unknownObjectRetain();
                        _s4VDAF12FieldElementPAAE11inputVectorxs10ArraySliceVyxG_tKcfCAA7Field40V_Tt1g5(v257, v156, v17, &v265);
                        if (v258)
                        {
                          swift_unknownObjectRelease();
                          swift_unknownObjectRelease();
                          outlined consume of GadgetEvaluation<A><A>(v221);
                          swift_unknownObjectRelease();
                          swift_unknownObjectRelease();

                          swift_unknownObjectRelease();
                          return swift_unknownObjectRelease();
                        }

                        v158 = v249;
                        v159 = v259;
                        v150 = v240;
                        if (!v238)
                        {
                          v161 = v236;
                          if (v243 != -1)
                          {
                            goto LABEL_191;
                          }

                          if (!v249)
                          {
                            goto LABEL_412;
                          }

                          v158 = 1;
                        }

                        v160 = v158 + v243;
                        v141 = __CFADD__(v160, 0xFFFFFF00014FFFFFLL);
                        v161 = v160 - 0xFFFEB00001;
                        if (v141)
                        {
                          goto LABEL_414;
                        }

LABEL_191:
                        v162 = v265;
                        if (v161)
                        {
                          v141 = v12 >= v161;
                          v163 = v12 - v161;
                          if (!v141)
                          {
                            goto LABEL_412;
                          }

                          if (v265 >= v163)
                          {
                            v162 = v265 - v163;
                          }

                          else
                          {
                            v141 = v12 >= v163;
                            v164 = v12 - v163;
                            if (!v141)
                            {
                              goto LABEL_424;
                            }

                            v162 = v265 + v164;
                            if (__CFADD__(v265, v164))
                            {
                              goto LABEL_425;
                            }
                          }
                        }

                        if (v157 >= v240)
                        {
                          goto LABEL_406;
                        }

                        v165 = *(v257 + 8 * v157);
                        v166 = *v154;
                        v167 = *v154 - v162;
                        if (*v154 < v162)
                        {
                          v141 = v12 >= v162;
                          v168 = v12 - v162;
                          if (!v141)
                          {
                            goto LABEL_417;
                          }

                          v167 = v166 + v168;
                          if (__CFADD__(v166, v168))
                          {
                            goto LABEL_418;
                          }
                        }

                        v169 = v167 * v146;
                        v170 = (v167 * v146) >> 64;
                        v171 = 0xCFFE47FFFEAFFFFFLL * v167 * v146;
                        v172 = (v171 * v12) >> 64;
                        v173 = __CFADD__(v171 * v12, v169);
                        v174 = v172 + v170;
                        if (!__CFADD__(v172, v170))
                        {
                          if (v174 != -1)
                          {
                            v176 = v174 + v173;
                            if (v176 >= v12)
                            {
                              v176 -= 0xFFFEB00001;
                            }

                            goto LABEL_224;
                          }

                          if (!v173)
                          {
                            v176 = 0xFFFFFF00014FFFFELL;
                            goto LABEL_224;
                          }

                          v173 = 1;
                        }

                        v175 = v173 + v174;
                        v141 = __CFADD__(v175, 0xFFFFFF00014FFFFFLL);
                        v176 = v175 - 0xFFFEB00001;
                        if (v141)
                        {
                          goto LABEL_415;
                        }

LABEL_224:
                        v177 = *(v241 + 16);
                        if (v152 >= v177)
                        {
                          goto LABEL_407;
                        }

                        *(v153 - 1) = v176;
                        if (v152 + 1 >= v177)
                        {
                          goto LABEL_408;
                        }

                        *v153 = v165;
                        if (v165)
                        {
                          v141 = v12 >= v165;
                          v178 = v12 - v165;
                          if (!v141)
                          {
                            goto LABEL_413;
                          }

                          if (v253 >= v178)
                          {
                            v253 = (v253 - v178);
                          }

                          else
                          {
                            v141 = v12 >= v178;
                            v179 = v12 - v178;
                            if (!v141)
                            {
                              goto LABEL_426;
                            }

                            if (__CFADD__(v253, v179))
                            {
                              goto LABEL_427;
                            }

                            v253 = (v253 + v179);
                          }
                        }

                        v180 = (v146 * v242) >> 64;
                        v181 = 0xCFFE47FFFEAFFFFFLL * v146 * v242;
                        v182 = (v181 * v12) >> 64;
                        v183 = __CFADD__(v181 * v12, v146 * v242);
                        v184 = v182 + v180;
                        if (__CFADD__(v182, v180))
                        {
                          goto LABEL_240;
                        }

                        if (v184 == -1)
                        {
                          if (v183)
                          {
                            v183 = 1;
LABEL_240:
                            v185 = v183 + v184;
                            v146 = v185 - 0xFFFEB00001;
                            if (v185 >= 0xFFFEB00001)
                            {
                              goto LABEL_416;
                            }

                            goto LABEL_249;
                          }

                          v146 = 0xFFFFFF00014FFFFELL;
                        }

                        else
                        {
                          v186 = v184 + v183;
                          if (v186 >= v12)
                          {
                            v146 = v186 - 0xFFFEB00001;
                          }

                          else
                          {
                            v146 = v186;
                          }
                        }

LABEL_249:
                        if (v135 == 0x7FFFFFFFFFFFFFFFLL)
                        {
                          goto LABEL_409;
                        }

                        ++v135;
                        ++v154;
                        v152 += 2;
                        v153 += 2;
                        if (!--v151)
                        {
                          v76 = 0;
                          v15 = v231;
                          v17 = v221;
                          a3 = v241;
                          v149 = v226;
                          LODWORD(v144) = v228;
                          goto LABEL_253;
                        }
                      }
                    }

                    v159 = v259;
LABEL_253:
                    if (v159 < v149)
                    {
                      goto LABEL_436;
                    }

                    if (v149 != v159)
                    {
                      if (v149 < v159)
                      {
                        v44 = v17;
                        v17 = v149;
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          a3 = specialized _ArrayBuffer._consumeAndCreateNew()(a3);
                        }

                        LODWORD(v144) = v228;
                        v187 = v17 + 0x4000000000000000;
                        v188 = 2 * v223 - 2 * v235;
                        v189 = (a3 - 16 * v235 + 16 * v223 + 40);
                        v190 = v259 + v235 - v223;
                        while ((v187 & 0x8000000000000000) == 0)
                        {
                          if ((v188 & 0x8000000000000000) != 0)
                          {
                            goto LABEL_394;
                          }

                          v191 = *(a3 + 16);
                          if (v188 >= v191)
                          {
                            goto LABEL_395;
                          }

                          *(v189 - 1) = 0;
                          if (v188 + 1 >= v191)
                          {
                            goto LABEL_396;
                          }

                          *v189 = 0;
                          v189 += 2;
                          ++v187;
                          v188 += 2;
                          if (!--v190)
                          {
                            goto LABEL_265;
                          }
                        }

                        __break(1u);
LABEL_394:
                        __break(1u);
LABEL_395:
                        __break(1u);
LABEL_396:
                        __break(1u);
LABEL_397:
                        __break(1u);
LABEL_398:
                        __break(1u);
LABEL_399:
                        __break(1u);
LABEL_400:
                        __break(1u);
LABEL_401:
                        __break(1u);
LABEL_402:
                        __break(1u);
LABEL_403:
                        __break(1u);
LABEL_404:
                        __break(1u);
LABEL_405:
                        __break(1u);
LABEL_406:
                        __break(1u);
                        __break(1u);
LABEL_407:
                        __break(1u);
LABEL_408:
                        __break(1u);
LABEL_409:
                        __break(1u);
LABEL_410:
                        __break(1u);
LABEL_411:
                        __break(1u);
LABEL_412:
                        __break(1u);
LABEL_413:
                        __break(1u);
LABEL_414:
                        __break(1u);
LABEL_415:
                        __break(1u);
LABEL_416:
                        __break(1u);
LABEL_417:
                        __break(1u);
LABEL_418:
                        __break(1u);
LABEL_419:
                        __break(1u);
                        continue;
                      }

LABEL_439:
                      __break(1u);
LABEL_440:
                      __break(1u);
LABEL_441:
                      __break(1u);
LABEL_442:
                      __break(1u);
LABEL_443:
                      __break(1u);
LABEL_444:
                      __break(1u);
LABEL_445:
                      __break(1u);
LABEL_446:
                      __break(1u);
                      goto LABEL_447;
                    }

                    v44 = v17;
LABEL_265:
                    if (v144)
                    {
                      if (v144 == 1)
                      {
                        specialized QueryGadget.evaluate<A>(at:)(a3, specialized _ArrayBuffer._consumeAndCreateNew(), specialized _ArrayBuffer._consumeAndCreateNew(), &v265);
LABEL_270:
                        v107 = v259;
                        v108 = v222;
                        v145 = v230;
                        if (v265)
                        {
                          v192 = v12 - v265;
                          LODWORD(v144) = v228;
                          if (v12 < v265)
                          {
                            goto LABEL_438;
                          }

                          if (v232 >= v192)
                          {
                            v17 = v44;
                            v44 = v232 - v192;
                          }

                          else
                          {
                            if (v12 < v192)
                            {
                              goto LABEL_444;
                            }

                            v17 = v44;
                            v44 = v232 + v265;
                            if (__CFADD__(v232, v265))
                            {
                              goto LABEL_445;
                            }
                          }
                        }

                        else
                        {
                          LODWORD(v144) = v228;
                          v17 = v44;
                          v44 = v232;
                        }

                        v193 = v222 >= v230;
                        if (v259 > 0)
                        {
                          v193 = v230 >= v222;
                        }

                        if (v193)
                        {
                          goto LABEL_141;
                        }

                        goto LABEL_163;
                      }
                    }

                    else
                    {
                      specialized GadgetWireInputs.update<A>(_:)(a3, specialized _ArrayBuffer._consumeAndCreateNew(), specialized _ArrayBuffer._consumeAndCreateNew());
                      if (v76)
                      {
                        goto LABEL_392;
                      }
                    }

                    specialized ParallelSum.evaluate<A>(at:)(a3, &v265);
                    goto LABEL_270;
                  }

                  __break(1u);
LABEL_136:
                  v44 = v231;
                  goto LABEL_137;
                }

LABEL_437:
                __break(1u);
LABEL_438:
                __break(1u);
                goto LABEL_439;
              }
            }

            __break(1u);
LABEL_430:
            __break(1u);
LABEL_431:
            __break(1u);
LABEL_432:
            __break(1u);
LABEL_433:
            __break(1u);
LABEL_434:
            __break(1u);
LABEL_435:
            __break(1u);
LABEL_436:
            __break(1u);
            goto LABEL_437;
          }

          goto LABEL_54;
        }
      }

      v255 -= v126;
    }

LABEL_56:
    v103 = v257;
    v104 = a3 >= v257;
    if (v259 > 0)
    {
      v104 = v257 >= a3;
    }

    if (v104)
    {
      goto LABEL_13;
    }
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v15 = specialized _ArrayBuffer._consumeAndCreateNew()(v15);
  }

  v109 = 0;
  v110 = v245 + 8 * v103;
  v111 = (a3 - v103);
  while (1)
  {
    if (!v111)
    {
      __break(1u);
LABEL_290:
      __break(1u);
LABEL_291:
      __break(1u);
LABEL_292:
      __break(1u);
LABEL_293:
      __break(1u);
LABEL_294:
      __break(1u);
LABEL_295:
      __break(1u);
LABEL_296:
      __break(1u);
LABEL_297:
      __break(1u);
LABEL_298:
      if ((v110 & 1) == 0)
      {
        goto LABEL_302;
      }

      v110 = 1;
      goto LABEL_151;
    }

    v113 = *v110;
    v114 = *v110 * v76;
    v115 = (*v110 * v76) >> 64;
    v116 = (0xCFFE47FFFEAFFFFFLL * v114 * v12) >> 64;
    v108 = __CFADD__(0xCFFE47FFFEAFFFFFLL * v114 * v12, v114);
    v117 = v116 + v115;
    if (!__CFADD__(v116, v115))
    {
      if (v117 != -1)
      {
        v119 = v117 + (v108 & 1);
        v108 = v119 - 0xFFFEB00001;
        if (v119 >= v12)
        {
          v118 = v119 - 0xFFFEB00001;
        }

        else
        {
          v118 = v119;
        }

        goto LABEL_91;
      }

      if ((v108 & 1) == 0)
      {
        v118 = 0xFFFFFF00014FFFFELL;
        goto LABEL_91;
      }

      v108 = 1;
    }

    v107 = v108 + v117;
    v118 = v107 - 0xFFFEB00001;
    if (v107 >= 0xFFFEB00001)
    {
      goto LABEL_296;
    }

LABEL_91:
    v107 = *(v15 + 16);
    if (v109 >= v107)
    {
      goto LABEL_290;
    }

    v108 = v15 + 8 * v109;
    *(v108 + 32) = v118;
    v120 = v113 - v260;
    if (v113 >= v260)
    {
      goto LABEL_95;
    }

    if (v102)
    {
      break;
    }

    v120 = v113 + v101;
    if (__CFADD__(v113, v101))
    {
      goto LABEL_301;
    }

LABEL_95:
    if (v109 + 1 >= v107)
    {
      goto LABEL_291;
    }

    *(v108 + 40) = v120;
    v108 = (v76 * v17) >> 64;
    v121 = 0xCFFE47FFFEAFFFFFLL * v76 * v17;
    v122 = (v121 * v12) >> 64;
    v107 = __CFADD__(v121 * v12, v76 * v17);
    v123 = v122 + v108;
    if (__CFADD__(v122, v108))
    {
      goto LABEL_74;
    }

    if (v123 == -1)
    {
      if (v107)
      {
        v107 = 1;
LABEL_74:
        v112 = v107 + v123;
        v76 = v112 - 0xFFFEB00001;
        if (v112 >= 0xFFFEB00001)
        {
          goto LABEL_297;
        }

        goto LABEL_75;
      }

      v76 = 0xFFFFFF00014FFFFELL;
    }

    else
    {
      v124 = v123 + (v107 & 1);
      v107 = v124 - 0xFFFEB00001;
      if (v124 >= v12)
      {
        v76 = v124 - 0xFFFEB00001;
      }

      else
      {
        v76 = v124;
      }
    }

LABEL_75:
    v110 += 8;
    v109 += 2;
    v111 = (v111 - 1);
    if (!v111)
    {
      v43 = v259;
      goto LABEL_107;
    }
  }

  __break(1u);
LABEL_301:
  __break(1u);
LABEL_302:
  v134 = v107 - 1;
LABEL_303:
  v194 = v111 - v134;
  if (v111 < v134)
  {
    v141 = v12 >= v134;
    v195 = v12 - v134;
    if (!v141)
    {
      goto LABEL_442;
    }

    v194 = v111 + v195;
    if (__CFADD__(v111, v195))
    {
      goto LABEL_443;
    }
  }

  v196 = (v261 * v102) >> 64;
  v197 = (v261 * v102 * v108 * v12) >> 64;
  v198 = __CFADD__(v261 * v102 * v108 * v12, v261 * v102);
  v199 = v197 + v196;
  if (__CFADD__(v197, v196))
  {
    goto LABEL_312;
  }

  if (v199 == -1)
  {
    if (!v198)
    {
      v201 = v107 - 1;
      goto LABEL_323;
    }

    v198 = 1;
LABEL_312:
    v200 = v198 + v199;
    v141 = __CFADD__(v200, v107);
    v201 = v200 + v107;
    if (v141)
    {
      goto LABEL_441;
    }

    if (v201)
    {
      goto LABEL_323;
    }

LABEL_332:
    result = specialized FieldElement.pow(_:)(2, v102, &v265);
    v205 = (v265 * v44) >> 64;
    v206 = (0xCFFE47FFFEAFFFFFLL * v265 * v44 * v12) >> 64;
    v207 = __CFADD__(0xCFFE47FFFEAFFFFFLL * v265 * v44 * v12, v265 * v44);
    v141 = __CFADD__(v206, v205);
    v208 = v206 + v205;
    if (v141)
    {
      goto LABEL_337;
    }

    while (v208 == -1)
    {
      if (!v207)
      {
        v210 = (v12 + 0xFFFEB00002);
LABEL_381:
        __break(1u);
LABEL_382:
        *v210 = v255;
        v218 = v12 - (v206 - 1);
        if (v12 < v206 - 1)
        {
LABEL_383:
          __break(1u);
LABEL_384:
          __break(1u);
LABEL_385:
          __break(1u);
          goto LABEL_386;
        }

LABEL_368:
        v219 = v255 - v218;
        if (v255 < v218)
        {
          v141 = v12 >= v218;
          v220 = v12 - v218;
          if (!v141)
          {
            goto LABEL_451;
          }

          v141 = __CFADD__(v255, v220);
          v219 = v255 + v220;
          v255 += v220;
          if (!v141)
          {
            goto LABEL_375;
          }

          __break(1u);
        }

        v255 = v219;
LABEL_375:
        *v210 = v255;
        return result;
      }

      v207 = 1;
LABEL_337:
      v209 = v207 + v208;
      v141 = __CFADD__(v209, 0xFFFFFF00014FFFFFLL);
      v208 = v209 - 0xFFFEB00001;
      if (!v141)
      {
        goto LABEL_343;
      }

      __break(1u);
    }

    v208 += v207;
    if (v208 >= v12)
    {
      v208 -= 0xFFFEB00001;
    }

LABEL_343:
    if (v208)
    {
      v141 = v12 >= v208;
      v210 = (v12 - v208);
      if (!v141)
      {
        goto LABEL_381;
      }

      v211 = v255 - v210;
      if (v255 < v210)
      {
        v141 = v12 >= v210;
        v212 = v12 - v210;
        if (!v141)
        {
          goto LABEL_450;
        }

        v141 = __CFADD__(v255, v212);
        v211 = v255 + v212;
        v255 += v212;
        if (!v141)
        {
          goto LABEL_353;
        }

        __break(1u);
      }

      v255 = v211;
    }

LABEL_353:
    result = specialized FieldElement.pow(_:)(3, v102, &v265);
    v213 = (v265 * v194) >> 64;
    v214 = (0xCFFE47FFFEAFFFFFLL * v265 * v194 * v12) >> 64;
    v215 = __CFADD__(0xCFFE47FFFEAFFFFFLL * v265 * v194 * v12, v265 * v194);
    v216 = v214 + v213;
    if (__CFADD__(v214, v213))
    {
      v210 = a5;
      goto LABEL_359;
    }

    while (1)
    {
      v210 = a5;
      v206 = 0xFFFFFF00014FFFFFLL;
      if (v216 != -1)
      {
        break;
      }

      if (!v215)
      {
        goto LABEL_382;
      }

      v215 = 1;
LABEL_359:
      v217 = v215 + v216;
      v141 = __CFADD__(v217, 0xFFFFFF00014FFFFFLL);
      v216 = v217 - 0xFFFEB00001;
      if (!v141)
      {
        goto LABEL_365;
      }

      __break(1u);
    }

    v216 += v215;
    if (v216 >= v12)
    {
      v216 -= 0xFFFEB00001;
    }

LABEL_365:
    *v210 = v255;
    if (v216)
    {
      v141 = v12 >= v216;
      v218 = v12 - v216;
      if (!v141)
      {
        goto LABEL_383;
      }

      goto LABEL_368;
    }

    goto LABEL_375;
  }

  v201 = v199 + v198;
  if (v201 >= v12)
  {
    v201 += v107;
  }

  if (!v201)
  {
    goto LABEL_332;
  }

LABEL_323:
  v141 = v12 >= v201;
  v202 = v12 - v201;
  if (!v141)
  {
    goto LABEL_440;
  }

  v203 = v255 - v202;
  if (v255 >= v202)
  {
LABEL_331:
    v255 = v203;
    goto LABEL_332;
  }

  v141 = v12 >= v202;
  v204 = v12 - v202;
  if (v141)
  {
    v141 = __CFADD__(v255, v204);
    v203 = v255 + v204;
    v255 += v204;
    if (!v141)
    {
      goto LABEL_332;
    }

    __break(1u);
    goto LABEL_331;
  }

LABEL_449:
  __break(1u);
LABEL_450:
  __break(1u);
LABEL_451:
  __break(1u);
LABEL_452:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized PINEMainCircuit.evaluate(measurement:jointRand:numOfShares:for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _DWORD *a5@<X8>)
{
  v7 = *(a1 + 16);
  v8 = *(v5 + 72);
  if (v7 != v8)
  {
    _StringGuts.grow(_:)(35);

    *&v246 = 0xD00000000000001BLL;
    *(&v246 + 1) = 0x8000000270C51C80;
    v70 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v70);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v250 = v8;
LABEL_22:
    v72 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v72);
LABEL_23:

    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v73 = v246;
    *(v73 + 16) = 2;
    return swift_willThrow();
  }

  if (*(a2 + 16) != 3)
  {
    _StringGuts.grow(_:)(33);

    *&v246 = 0xD000000000000019;
    *(&v246 + 1) = 0x8000000270C51CE0;
    v71 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v71);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v250 = 3;
    goto LABEL_22;
  }

  v242 = v6;
  v244 = a2;
  v245 = a1;
  v10 = *(v5 + 64);
  v11 = *(v5 + 96);
  v231 = *(v5 + 104);
  v232 = a4;
  v229 = *(v5 + 112);
  v235 = *(v5 + 120);
  v236 = *(v5 + 128);
  v226 = *(v5 + 136);
  v228 = *(v5 + 144);
  v12 = *(a4 + 16);
  v13 = *(v5 + 40);
  v14 = *(v5 + 24);
  v247 = *(v5 + 8);
  v248 = v14;
  v249 = v13;
  v16 = *(&v247 + 1);
  v15 = v247;
  v17 = v13;
  specialized Gadget.wirePolynomialLength.getter();
  specialized Gadget.gadgetPolynomialLength.getter();
  if (v12 != 1)
  {
    _StringGuts.grow(_:)(23);

    *&v246 = 0x2064696C61766E49;
    *(&v246 + 1) = 0xEF203A746E756F63;
    v250 = v12;
    v75 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v75);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF16GadgetParametersVGMd, &_ss23_ContiguousArrayStorageCy4VDAF16GadgetParametersVGMR);
    v76 = swift_allocObject();
    *(v76 + 16) = xmmword_270C44540;
    v77 = specialized Gadget.wirePolynomialLength.getter();
    v78 = specialized Gadget.gadgetPolynomialLength.getter();
    *(v76 + 32) = v15;
    *(v76 + 40) = v16;
    *(v76 + 48) = v17;
    *(v76 + 56) = v77;
    *(v76 + 64) = v78;
    v79 = MEMORY[0x2743B2770](v76, &type metadata for GadgetParameters);
    v81 = v80;

    MEMORY[0x2743B25F0](v79, v81);
    goto LABEL_23;
  }

  v227 = v247;
  if (a3 < 0)
  {
    goto LABEL_359;
  }

  if (HIDWORD(a3))
  {
LABEL_360:
    __break(1u);
  }

  else
  {
    _s4VDAF12FieldElementPAAEyx06FiniteB0_11IntegerTypeQZcfCAA7Field32V_Tt1g5(a3, &v250);
    LODWORD(a3) = v250;
    if (!v250)
    {
LABEL_419:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v12 = 4293918719;
    _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF8_UInt128V_s6UInt32VTt1g5(4293918719, &v246);
    v18 = 0xFFFFFLL;
    v17 = 0xFFFFFLL;
    if (v246 != 0)
    {
      v41 = 4293918719;
      do
      {
        _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF8_UInt128V_s6UInt32VTt1g5(v41 & 1, &v246);
        if (v246 == 0)
        {
          v82 = a3;
        }

        else
        {
          v82 = a3;
          v83 = a3 * v17;
          v84 = 4293918721 * (-1048577 * v83);
          v137 = __CFADD__(v84, v83);
          v85 = v84 + v83;
          if (v137)
          {
            v17 = (HIDWORD(v85) + 0xFFFFF);
            if (HIDWORD(v85) >= 0xFFF00001)
            {
              goto LABEL_350;
            }
          }

          else if (v85 >= 0xFFF0000100000000)
          {
            v17 = (HIDWORD(v85) + 0xFFFFF);
          }

          else
          {
            v17 = HIDWORD(v85);
          }
        }

        v86 = v82 * v82;
        v42 = 4293918721;
        v87 = 4293918721 * (-1048577 * v86);
        v137 = __CFADD__(v87, v86);
        v88 = v87 + v86;
        if (v137)
        {
          a3 = (HIDWORD(v88) + 0xFFFFF);
          if (HIDWORD(v88) >= 0xFFF00001)
          {
            __break(1u);
            goto LABEL_43;
          }
        }

        else if (v88 >= 0xFFF0000100000000)
        {
          LODWORD(a3) = HIDWORD(v88) + 0xFFFFF;
        }

        else
        {
          LODWORD(a3) = HIDWORD(v88);
        }

        v41 = v41 >> 1;
        _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF8_UInt128V_s6UInt32VTt1g5(v41, &v246);
      }

      while (v246 != 0);
    }

    v15 = v244[8];
    v224 = v244[9];
    v220 = v244[10];
    v244 = specialized Collection.prefix(_:)(v11, v245, v245 + 32, 0, (2 * v7) | 1);
    v19 = specialized Collection.dropFirst(_:)(v11, v245, v245 + 32, 0, (2 * v7) | 1);
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v243 = v19;
    v234 = specialized Collection.prefix(_:)(v10, v19, v20, v22, v24);
    v237 = v26;
    v241 = v27;
    v230 = v28;
    v29 = specialized Collection.dropFirst(_:)(v10, v19, v21, v23, v25);
    v31 = v30;
    v33 = v32;
    v35 = v34;
    specialized Collection.prefix(_:)(v236, v29, v30, v32, v34);
    v217 = v36;
    v221 = v37;
    v219 = v38;
    v11 = specialized Collection.dropFirst(_:)(v236, v29, v31, v33, v35);
    swift_bridgeObjectRetain_n();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v39 = *(v232 + 32);
    swift_unknownObjectRetain();
    v240 = v39;
    sub_270B60478(v39);
    if (one-time initialization token for one == -1)
    {
      v40 = v227;
      if ((v227 & 0x8000000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_362:
      __break(1u);
LABEL_363:
      __break(1u);
LABEL_364:
      __break(1u);
LABEL_365:
      __break(1u);
LABEL_366:
      __break(1u);
LABEL_367:
      __break(1u);
LABEL_368:
      __break(1u);
LABEL_369:
      __break(1u);
LABEL_370:
      __break(1u);
LABEL_371:
      __break(1u);
LABEL_372:
      __break(1u);
      __break(1u);
LABEL_373:
      __break(1u);
LABEL_374:
      __break(1u);
LABEL_375:
      __break(1u);
      goto LABEL_376;
    }
  }

  swift_once();
  v40 = v227;
  if (v227 < 0)
  {
    goto LABEL_362;
  }

LABEL_10:
  v41 = static Field32.one;
  v42 = *(&v249 + 1);
  v245 = *(&v249 + 1);
  v18 = v241;
  if (v40)
  {
    v10 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v10 + 16) = v40;
    bzero((v10 + 32), 4 * v40);
    v42 = v245;
    if (v245)
    {
      goto LABEL_12;
    }

LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  v10 = MEMORY[0x277D84F90];
  if (!*(&v249 + 1))
  {
    goto LABEL_109;
  }

LABEL_12:
  a3 = v230 >> 1;
  v43 = (v230 >> 1) >= v241;
  if (v42 > 0)
  {
    v43 = v241 >= (v230 >> 1);
  }

  LODWORD(v218) = v41;
  if (v43)
  {
    v243 = 0;
LABEL_16:
    swift_unknownObjectRelease();
    outlined consume of GadgetEvaluation<A><A>(v240);

    specialized Collection.prefix(_:)(v231, v234, v237, v18, v230);
    v240 = v45;
    v241 = v44;
    v223 = v46;
    v47 = specialized Collection.dropFirst(_:)(v231, v234, v237, v18, v230);
    v49 = v48;
    v51 = v50;
    v53 = v52;
    specialized Collection.prefix(_:)(v231, v47, v48, v50, v52);
    v230 = v54;
    v215 = v56;
    v216 = v55;
    v57 = specialized Collection.dropFirst(_:)(v231, v47, v49, v51, v53);
    v61 = v235 + 1;
    if (!__OFADD__(v235, 1))
    {
      v62 = v61 * v236;
      v239 = v235 + 1;
      if ((v61 * v236) >> 64 == (v61 * v236) >> 63)
      {
        v63 = v57;
        v64 = v58;
        v65 = v59;
        v66 = v60;
        v40 = specialized Collection.prefix(_:)(v62, v57, v58, v59, v60);
        v244 = v67;
        v238 = v68;
        v236 = v69;
        specialized Collection.dropFirst(_:)(v62, v63, v64, v65, v66);
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        _s4VDAF12FieldElementPAAE11inputVectorxs10ArraySliceVyxG_tKcfCAA7Field32V_Tt1g5(v241, v240, v223, &v246);
        v11 = v242;
        if (v242)
        {
          goto LABEL_111;
        }

LABEL_110:
        v237 = v40;
        swift_unknownObjectRetain();
        _s4VDAF12FieldElementPAAE11inputVectorxs10ArraySliceVyxG_tKcfCAA7Field32V_Tt1g5(v230, v216, v215, &v250);
        if (v11)
        {
LABEL_111:
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          return swift_unknownObjectRelease();
        }

        LODWORD(v96) = v246;
        if (v250)
        {
          v117 = -1048575 - v250;
          v110 = 0xFFF0000100000000;
          LODWORD(v10) = v220;
          v111 = v218;
          v89 = v227;
          if (v250 <= 0xFFF00001)
          {
            LODWORD(v114) = v246 - v117;
            if (v246 < v117)
            {
              if (v117 > 0xFFF00001)
              {
LABEL_406:
                __break(1u);
LABEL_407:
                __break(1u);
                goto LABEL_408;
              }

              LODWORD(v96) = v246 + v250;
              if (!__CFADD__(v246, v250))
              {
                goto LABEL_130;
              }

              __break(1u);
LABEL_120:
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              outlined consume of GadgetEvaluation<A><A>(v240);

              swift_unknownObjectRelease();
              return swift_unknownObjectRelease();
            }

LABEL_129:
            LODWORD(v96) = v114;
LABEL_130:
            v118 = v229;
LABEL_131:
            v119 = v118 * v17;
            v120 = (v119 * v12) * (v12 + 2);
            v137 = __CFADD__(v120, v119);
            v121 = v120 + v119;
            v122 = HIDWORD(v121);
            if (v137)
            {
              v121 = 0xFFFFFLL;
              v137 = __CFADD__(v122, 0xFFFFF);
              LODWORD(v122) = v122 + 0xFFFFF;
              if (!v137)
              {
LABEL_138:
                v123 = v96 - v122;
                if (v96 < v122)
                {
                  v137 = v122 <= 0xFFF00001;
                  v124 = -1048575 - v122;
                  if (!v137)
                  {
                    goto LABEL_397;
                  }

                  v123 = v96 + v124;
                  if (__CFADD__(v96, v124))
                  {
LABEL_399:
                    __break(1u);
                    goto LABEL_400;
                  }
                }

                v216 = *(v232 + 32);
                v15 = v111;
                LODWORD(v90) = v111 - v228;
                v212 = v123;
                if (v111 < v228)
                {
                  v125 = -1048575 - v228;
                  if (v228 > 0xFFF00001)
                  {
LABEL_398:
                    __break(1u);
                    goto LABEL_399;
                  }

                  LODWORD(v90) = v111 + v125;
                  if (__CFADD__(v111, v125))
                  {
LABEL_400:
                    __break(1u);
LABEL_401:
                    __break(1u);
LABEL_402:
                    __break(1u);
                    goto LABEL_403;
                  }
                }

                v215 = v17;
                v17 = *(v232 + 32);
                sub_270B60478(v216);
                if (v89)
                {
                  a3 = static Array._allocateBufferUninitialized(minimumCapacity:)();
                  *(a3 + 16) = v89;
                  bzero((a3 + 32), 4 * v89);
                }

                else
                {
                  a3 = MEMORY[0x277D84F90];
                }

                v126 = 0xFFF0000100000000;
                v127 = v221;
                v128 = (v219 >> 1) >= v221;
                v222 = v219 >> 1;
                v129 = v245;
                if (v245 > 0)
                {
                  v128 = v221 >= (v219 >> 1);
                }

                if (!v128)
                {
                  goto LABEL_155;
                }

                LODWORD(v90) = 0;
                LODWORD(v240) = 0;
LABEL_152:

                isUniquelyReferenced_nonNull_native = v226;
                v127 = v237;
                if ((v226 & 0x8000000000000000) == 0)
                {
                  if (HIDWORD(v226))
                  {
                    __break(1u);
LABEL_155:
                    LODWORD(v240) = 0;
                    v130 = 0;
                    v211 = 0;
                    v131 = v215 * v90;
                    v132 = (v131 * v12) * (v12 + 2);
                    v133 = (v132 + v131) >> 32;
                    if (v132 + v131 >= v126)
                    {
                      v134 = v133 + 0xFFFFF;
                    }

                    else
                    {
                      v134 = (v132 + v131) >> 32;
                    }

                    v137 = __CFADD__(v133, 0xFFFFF);
                    v135 = v133 + 0xFFFFF;
                    v136 = v137;
                    v137 = __CFADD__(v132, v131);
                    v234 = v236 & 1;
                    v236 = v236 >> 1;
                    v138 = __CFADD__(v132, v131);
                    v139 = v17 >> 62;
                    LODWORD(v232) = v138 & v136;
                    if (v137)
                    {
                      v140 = v135;
                    }

                    else
                    {
                      v140 = v134;
                    }

                    LODWORD(v231) = v140;
                    v137 = v140 <= 0xFFF00001;
                    v141 = -1048575 - v140;
                    v142 = !v137;
                    LODWORD(v230) = v142;
                    v229 = v141;
                    LODWORD(v227) = -1048575 - v141;
                    v228 = v141 > 0xFFF00001;
                    v143 = v127;
                    v144 = v15;
                    v214 = v17 >> 62;
                    while (1)
                    {
                      v145 = v143 + v129;
                      if (__OFADD__(v143, v129))
                      {
                        v146 = ((v143 + v129) >> 63) ^ 0x8000000000000000;
                      }

                      else
                      {
                        v146 = v143 + v129;
                      }

                      if (__OFADD__(v143, v129))
                      {
                        goto LABEL_389;
                      }

                      if (v222 >= v145)
                      {
                        v15 = v143 + v129;
                      }

                      else
                      {
                        v15 = v222;
                      }

                      if (v15 < v143)
                      {
                        goto LABEL_390;
                      }

                      if (v143 < v127)
                      {
                        goto LABEL_391;
                      }

                      if (v145 < 0)
                      {
                        goto LABEL_392;
                      }

                      v147 = v15 - v143;
                      if (__OFSUB__(v15, v143))
                      {
                        goto LABEL_393;
                      }

                      if (v147 < 0)
                      {
                        goto LABEL_394;
                      }

                      v218 = v146;
                      v219 = v143;
                      if (v147)
                      {
                        v213 = v15 - v143;
                        v242 = v11;
                        v210 = v15;
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          a3 = specialized _ArrayBuffer._consumeAndCreateNew()(a3);
                        }

                        v148 = v236;
                        v149 = v213;
                        v150 = 0;
                        v151 = (a3 + 36);
                        v152 = (v217 + 4 * v219);
                        while (v149)
                        {
                          v153 = v130 * v239;
                          if ((v130 * v239) >> 64 != (v130 * v239) >> 63)
                          {
                            goto LABEL_364;
                          }

                          v154 = v238 + v153;
                          if (__OFADD__(v238, v153))
                          {
                            goto LABEL_365;
                          }

                          v155 = v154 + v235;
                          if (__OFADD__(v154, v235))
                          {
                            goto LABEL_366;
                          }

                          if (v155 < v154)
                          {
                            goto LABEL_367;
                          }

                          if (v148 < v154)
                          {
                            goto LABEL_368;
                          }

                          if (v154 < v238)
                          {
                            goto LABEL_369;
                          }

                          v241 = v151;
                          if (v148 < v155)
                          {
                            goto LABEL_370;
                          }

                          if (v155 < 0)
                          {
                            goto LABEL_371;
                          }

                          swift_unknownObjectRetain();
                          _s4VDAF12FieldElementPAAE11inputVectorxs10ArraySliceVyxG_tKcfCAA7Field32V_Tt1g5(v244, v154, v234 | (2 * v155), &v246);
                          if (v242)
                          {
                            outlined consume of GadgetEvaluation<A><A>(v216);
                            swift_unknownObjectRelease();
                            swift_unknownObjectRelease();
                            swift_unknownObjectRelease();
                            swift_unknownObjectRelease();

                            swift_unknownObjectRelease();
                            return swift_unknownObjectRelease();
                          }

                          if (v232)
                          {
                            goto LABEL_380;
                          }

                          v156 = v246;
                          v157 = v245;
                          v148 = v236;
                          if (v231)
                          {
                            v158 = v244;
                            if (v230)
                            {
                              goto LABEL_378;
                            }

                            if (v246 >= v229)
                            {
                              v156 = v246 - v229;
                            }

                            else
                            {
                              if (v228)
                              {
                                goto LABEL_385;
                              }

                              v156 = v246 + v227;
                              if (__CFADD__(v246, v227))
                              {
                                goto LABEL_386;
                              }
                            }
                          }

                          else
                          {
                            v158 = v244;
                          }

                          if (v155 >= v236)
                          {
                            goto LABEL_372;
                          }

                          v159 = v158[v155];
                          v160 = *v152;
                          v161 = *v152 - v156;
                          if (*v152 < v156)
                          {
                            v137 = v156 <= 0xFFF00001;
                            v162 = -1048575 - v156;
                            if (!v137)
                            {
                              goto LABEL_381;
                            }

                            v161 = v160 + v162;
                            if (__CFADD__(v160, v162))
                            {
                              goto LABEL_382;
                            }
                          }

                          v163 = v161 * v144;
                          v164 = (v163 * v12) * (v12 + 2);
                          v137 = __CFADD__(v164, v163);
                          v165 = v164 + v163;
                          v166 = HIDWORD(v165);
                          if (v137)
                          {
                            LODWORD(v166) = HIDWORD(v165) + 0xFFFFF;
                            if (HIDWORD(v165) >= 0xFFF00001)
                            {
                              goto LABEL_383;
                            }
                          }

                          else if (v165 >= 0xFFF0000100000000)
                          {
                            LODWORD(v166) = HIDWORD(v165) + 0xFFFFF;
                          }

                          v167 = *(a3 + 16);
                          if (v150 >= v167)
                          {
                            goto LABEL_373;
                          }

                          *(v241 - 1) = v166;
                          if (v150 + 1 >= v167)
                          {
                            goto LABEL_374;
                          }

                          *v241 = v159;
                          if (v159)
                          {
                            v137 = v159 <= 0xFFF00001;
                            v168 = -1048575 - v159;
                            if (!v137)
                            {
                              goto LABEL_379;
                            }

                            if (v240 >= v168)
                            {
                              LODWORD(v240) = v240 - v168;
                            }

                            else
                            {
                              v137 = v168 <= 0xFFF00001;
                              v169 = -1048575 - v168;
                              if (!v137)
                              {
                                goto LABEL_387;
                              }

                              v137 = __CFADD__(v240, v169);
                              LODWORD(v240) = v240 + v169;
                              if (v137)
                              {
                                goto LABEL_388;
                              }
                            }
                          }

                          v170 = v144 * v224;
                          v171 = (v170 * v12) * (v12 + 2);
                          v137 = __CFADD__(v171, v170);
                          v172 = v171 + v170;
                          if (v137)
                          {
                            v144 = (HIDWORD(v172) + 0xFFFFF);
                            if (HIDWORD(v172) >= 0xFFF00001)
                            {
                              goto LABEL_384;
                            }
                          }

                          else if (v172 >= 0xFFF0000100000000)
                          {
                            v144 = (HIDWORD(v172) + 0xFFFFF);
                          }

                          else
                          {
                            v144 = HIDWORD(v172);
                          }

                          if (v130 == 0x7FFFFFFFFFFFFFFFLL)
                          {
                            goto LABEL_375;
                          }

                          ++v130;
                          ++v152;
                          v150 += 2;
                          v151 = (v241 + 2);
                          if (!--v149)
                          {
                            v11 = 0;
                            v127 = v221;
                            v17 = v216;
                            LODWORD(v139) = v214;
                            v15 = v210;
                            v147 = v213;
                            goto LABEL_241;
                          }
                        }

                        goto LABEL_363;
                      }

                      v157 = v245;
LABEL_241:
                      if (v157 < v147)
                      {
                        goto LABEL_395;
                      }

                      if (v147 != v157)
                      {
                        if (v147 >= v157)
                        {
                          goto LABEL_402;
                        }

                        v173 = v17;
                        v174 = v147;
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          a3 = specialized _ArrayBuffer._consumeAndCreateNew()(a3);
                        }

                        LODWORD(v139) = v214;
                        v175 = v174 + 0x4000000000000000;
                        v176 = 2 * v15 - 2 * v219;
                        v177 = (a3 - 8 * v219 + 8 * v15 + 36);
                        v178 = v245 + v219 - v15;
                        v17 = v173;
                        v127 = v221;
                        while ((v175 & 0x8000000000000000) == 0)
                        {
                          if ((v176 & 0x8000000000000000) != 0)
                          {
                            goto LABEL_356;
                          }

                          v179 = *(a3 + 16);
                          if (v176 >= v179)
                          {
                            goto LABEL_357;
                          }

                          *(v177 - 1) = 0;
                          if (v176 + 1 >= v179)
                          {
                            goto LABEL_358;
                          }

                          *v177 = 0;
                          v177 += 8;
                          ++v175;
                          v176 += 2;
                          if (!--v178)
                          {
                            goto LABEL_252;
                          }
                        }

                        goto LABEL_355;
                      }

LABEL_252:
                      v15 = v144;
                      if (v139)
                      {
                        if (v139 == 1)
                        {
                          specialized QueryGadget.evaluate<A>(at:)(a3, &v246);
                          goto LABEL_257;
                        }
                      }

                      else
                      {
                        specialized GadgetWireInputs.update<A>(_:)(a3);
                        if (v11)
                        {
                          goto LABEL_353;
                        }
                      }

                      specialized ParallelSum.evaluate<A>(at:)(a3, &v246);
LABEL_257:
                      v129 = v245;
                      v143 = v218;
                      if (v246)
                      {
                        v180 = -1048575 - v246;
                        LODWORD(v139) = v214;
                        if (v246 > 0xFFF00001)
                        {
                          goto LABEL_401;
                        }

                        v181 = v211;
                        if (v211 >= v180)
                        {
                          v211 -= v180;
                        }

                        else
                        {
                          if (v180 > 0xFFF00001)
                          {
                            goto LABEL_409;
                          }

                          v211 += v246;
                          if (__CFADD__(v181, v246))
                          {
                            goto LABEL_410;
                          }
                        }
                      }

                      else
                      {
                        LODWORD(v139) = v214;
                      }

                      v182 = v222 >= v218;
                      if (v245 > 0)
                      {
                        v182 = v218 >= v222;
                      }

                      if (v182)
                      {
                        goto LABEL_348;
                      }
                    }
                  }

LABEL_278:
                  _s4VDAF12FieldElementPAAEyx06FiniteB0_11IntegerTypeQZcfCAA7Field32V_Tt1g5(isUniquelyReferenced_nonNull_native, &v246);
                  swift_unknownObjectRelease();
                  outlined consume of GadgetEvaluation<A><A>(v17);
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  v184 = v246 * v215;
                  v185 = (v184 * v12) * (v12 + 2);
                  v137 = __CFADD__(v185, v184);
                  v186 = v185 + v184;
                  v187 = HIDWORD(v186);
                  if (v137)
                  {
                    v186 = 0xFFFFFLL;
                    v137 = __CFADD__(v187, 0xFFFFF);
                    LODWORD(v187) = v187 + 0xFFFFF;
                    if (!v137)
                    {
                      goto LABEL_285;
                    }

                    __break(1u);
                  }

                  if (v186 >= 0xFFF0000100000000)
                  {
                    LODWORD(v187) = v187 + 0xFFFFF;
                  }

LABEL_285:
                  v188 = v240 - v187;
                  if (v240 < v187)
                  {
                    v137 = v187 <= 0xFFF00001;
                    v189 = -1048575 - v187;
                    if (!v137)
                    {
                      goto LABEL_407;
                    }

                    v188 = v240 + v189;
                    if (__CFADD__(v240, v189))
                    {
LABEL_408:
                      __break(1u);
LABEL_409:
                      __break(1u);
LABEL_410:
                      __break(1u);
                      goto LABEL_411;
                    }
                  }

                  v190 = v10 * v212;
                  v191 = (v190 * v12) * (v12 + 2);
                  v137 = __CFADD__(v191, v190);
                  v192 = v191 + v190;
                  v193 = HIDWORD(v192);
                  if (v137)
                  {
                    v192 = 0xFFFFFLL;
                    v137 = __CFADD__(v193, 0xFFFFF);
                    LODWORD(v193) = v193 + 0xFFFFF;
                    if (!v137)
                    {
                      goto LABEL_296;
                    }

                    __break(1u);
                  }

                  if (v192 >= 0xFFF0000100000000)
                  {
                    LODWORD(v193) = v193 + 0xFFFFF;
                  }

LABEL_296:
                  if (!v193)
                  {
                    goto LABEL_306;
                  }

                  v137 = v193 <= 0xFFF00001;
                  v194 = -1048575 - v193;
                  if (!v137)
                  {
LABEL_403:
                    __break(1u);
LABEL_404:
                    __break(1u);
LABEL_405:
                    __break(1u);
                    goto LABEL_406;
                  }

                  v195 = v243 - v194;
                  if (v243 < v194)
                  {
                    v137 = v194 <= 0xFFF00001;
                    v196 = -1048575 - v194;
                    if (!v137)
                    {
                      goto LABEL_415;
                    }

                    v137 = __CFADD__(v243, v196);
                    v195 = v243 + v196;
                    v243 += v196;
                    if (!v137)
                    {
LABEL_306:
                      specialized FieldElement.pow(_:)(2, v10, &v246);
                      v197 = v90 * v246;
                      v198 = (v197 * v12) * (v12 + 2);
                      v137 = __CFADD__(v198, v197);
                      v199 = v198 + v197;
                      v200 = HIDWORD(v199);
                      if (v137)
                      {
                        v199 = 0xFFFFFLL;
                        v137 = __CFADD__(v200, 0xFFFFF);
                        LODWORD(v200) = v200 + 0xFFFFF;
                        if (!v137)
                        {
                          goto LABEL_313;
                        }

                        __break(1u);
                      }

                      if (v199 >= 0xFFF0000100000000)
                      {
                        LODWORD(v200) = v200 + 0xFFFFF;
                      }

LABEL_313:
                      if (v200)
                      {
                        v137 = v200 <= 0xFFF00001;
                        v201 = -1048575 - v200;
                        if (!v137)
                        {
                          goto LABEL_404;
                        }

                        if (v243 >= v201)
                        {
                          v243 -= v201;
                        }

                        else
                        {
                          v137 = v201 <= 0xFFF00001;
                          v202 = -1048575 - v201;
                          if (!v137)
                          {
                            goto LABEL_416;
                          }

                          v137 = __CFADD__(v243, v202);
                          v243 += v202;
                          if (v137)
                          {
LABEL_417:
                            __break(1u);
LABEL_418:
                            __break(1u);
                            goto LABEL_419;
                          }
                        }
                      }

                      result = specialized FieldElement.pow(_:)(3, v10, &v246);
                      v203 = v246 * v188;
                      v204 = (v203 * v12) * (v12 + 2);
                      v137 = __CFADD__(v204, v203);
                      v205 = v204 + v203;
                      v206 = HIDWORD(v205);
                      if (v137)
                      {
                        v137 = __CFADD__(HIDWORD(v205), 0xFFFFF);
                        v205 = (HIDWORD(v205) + 0xFFFFF);
                        v206 = a5;
                        if (!v137)
                        {
                          goto LABEL_331;
                        }

                        __break(1u);
                      }

                      if (v205 >= 0xFFF0000100000000)
                      {
                        LODWORD(v205) = v206 + 0xFFFFF;
                      }

                      else
                      {
                        LODWORD(v205) = v206;
                      }

                      v206 = a5;
LABEL_331:
                      *v206 = v243;
                      if (!v205)
                      {
                        goto LABEL_341;
                      }

                      v137 = v205 <= 0xFFF00001;
                      v207 = -1048575 - v205;
                      if (!v137)
                      {
                        goto LABEL_405;
                      }

                      v208 = v243 - v207;
                      if (v243 < v207)
                      {
                        v137 = v207 <= 0xFFF00001;
                        v209 = -1048575 - v207;
                        if (!v137)
                        {
                          goto LABEL_418;
                        }

                        v137 = __CFADD__(v243, v209);
                        v208 = v243 + v209;
                        v243 += v209;
                        if (!v137)
                        {
LABEL_341:
                          *v206 = v243;
                          return result;
                        }

                        __break(1u);
                      }

                      v243 = v208;
                      goto LABEL_341;
                    }

                    __break(1u);
                  }

                  v243 = v195;
                  goto LABEL_306;
                }

LABEL_274:
                v183 = -isUniquelyReferenced_nonNull_native;
                if (__OFSUB__(0, isUniquelyReferenced_nonNull_native))
                {
LABEL_411:
                  __break(1u);
                  goto LABEL_412;
                }

                if ((v183 & 0x8000000000000000) != 0)
                {
LABEL_412:
                  __break(1u);
                  goto LABEL_413;
                }

                if (HIDWORD(v183))
                {
LABEL_413:
                  __break(1u);
                  goto LABEL_414;
                }

                isUniquelyReferenced_nonNull_native = (isUniquelyReferenced_nonNull_native - 0xFFFFF);
                if (v183 > 0xFFF00001)
                {
LABEL_414:
                  __break(1u);
LABEL_415:
                  __break(1u);
LABEL_416:
                  __break(1u);
                  goto LABEL_417;
                }

                goto LABEL_278;
              }

              __break(1u);
            }

            if (v121 >= v110)
            {
              LODWORD(v122) = v122 + 0xFFFFF;
            }

            goto LABEL_138;
          }

LABEL_396:
          __break(1u);
LABEL_397:
          __break(1u);
          goto LABEL_398;
        }

LABEL_124:
        v110 = 0xFFF0000100000000;
        LODWORD(v10) = v220;
        v111 = v218;
        v118 = v229;
        v89 = v227;
        goto LABEL_131;
      }

LABEL_377:
      __break(1u);
LABEL_378:
      __break(1u);
LABEL_379:
      __break(1u);
LABEL_380:
      __break(1u);
LABEL_381:
      __break(1u);
LABEL_382:
      __break(1u);
LABEL_383:
      __break(1u);
LABEL_384:
      __break(1u);
LABEL_385:
      __break(1u);
LABEL_386:
      __break(1u);
LABEL_387:
      __break(1u);
LABEL_388:
      __break(1u);
LABEL_389:
      __break(1u);
LABEL_390:
      __break(1u);
LABEL_391:
      __break(1u);
LABEL_392:
      __break(1u);
LABEL_393:
      __break(1u);
LABEL_394:
      __break(1u);
LABEL_395:
      __break(1u);
      goto LABEL_396;
    }

LABEL_376:
    __break(1u);
    goto LABEL_377;
  }

LABEL_43:
  v243 = 0;
  v233 = -1048575 - v17;
  v238 = v240 >> 62;
  v239 = a3;
  v89 = 0xFFFFFLL;
  v11 = v41;
  v90 = v18;
  while (1)
  {
    v92 = v90 + v42;
    v93 = ((v90 + v42) >> 63) ^ 0x8000000000000000;
    if (!__OFADD__(v90, v42))
    {
      v93 = v90 + v42;
    }

    v244 = v93;
    if (__OFADD__(v90, v42))
    {
      __break(1u);
LABEL_343:
      __break(1u);
LABEL_344:
      __break(1u);
LABEL_345:
      __break(1u);
LABEL_346:
      __break(1u);
LABEL_347:
      __break(1u);
LABEL_348:
      LODWORD(v90) = v211;
      LODWORD(v10) = v220;
      goto LABEL_152;
    }

    if (a3 >= v92)
    {
      a3 = v90 + v42;
    }

    if (a3 < v90)
    {
      goto LABEL_343;
    }

    if (v90 < v18)
    {
      goto LABEL_344;
    }

    if (v92 < 0)
    {
      goto LABEL_345;
    }

    v94 = a3 - v90;
    if (__OFSUB__(a3, v90))
    {
      goto LABEL_346;
    }

    if (v94 < 0)
    {
      goto LABEL_347;
    }

    if (!v94)
    {
      goto LABEL_83;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
      v10 = isUniquelyReferenced_nonNull_native;
    }

    v96 = 0;
    v97 = (v237 + 4 * v90);
    v98 = (a3 - v90);
    do
    {
      if (!v98)
      {
        __break(1u);
LABEL_122:
        __break(1u);
LABEL_123:
        __break(1u);
        goto LABEL_124;
      }

      v99 = *v97;
      v100 = *v97 * v11;
      v101 = (v100 * v12) * (v12 + 2);
      v137 = __CFADD__(v101, v100);
      v102 = v101 + v100;
      if (v137)
      {
        v103 = HIDWORD(v102) + 0xFFFFF;
        if (HIDWORD(v102) >= 0xFFF00001)
        {
          __break(1u);
LABEL_271:
          __break(1u);
LABEL_272:
          __break(1u);
LABEL_273:
          __break(1u);
          goto LABEL_274;
        }
      }

      else
      {
        v103 = HIDWORD(v102) + 0xFFFFF;
        if (v102 < 0xFFF0000100000000)
        {
          v103 = HIDWORD(v102);
        }
      }

      v104 = *(v10 + 16);
      if (v96 >= v104)
      {
        goto LABEL_122;
      }

      v105 = v10 + 4 * v96;
      *(v105 + 32) = v103;
      v106 = v99 - v17;
      if (v99 < v17)
      {
        if (v17 > 0xFFF00001)
        {
          goto LABEL_271;
        }

        v106 = v99 + v233;
        if (__CFADD__(v99, v233))
        {
          goto LABEL_272;
        }
      }

      if (v96 + 1 >= v104)
      {
        goto LABEL_123;
      }

      *(v105 + 36) = v106;
      v107 = v11 * v15;
      v108 = (v107 * v12) * (v12 + 2);
      v137 = __CFADD__(v108, v107);
      v109 = v108 + v107;
      if (v137)
      {
        v11 = (HIDWORD(v109) + 0xFFFFF);
        if (HIDWORD(v109) >= 0xFFF00001)
        {
          goto LABEL_273;
        }
      }

      else if (v109 >= 0xFFF0000100000000)
      {
        v11 = (HIDWORD(v109) + 0xFFFFF);
      }

      else
      {
        v11 = HIDWORD(v109);
      }

      ++v97;
      v96 += 2;
      --v98;
    }

    while (v98);
    v42 = v245;
LABEL_83:
    if (v42 < v94)
    {
      break;
    }

    if (v94 != v42)
    {
      if (v94 >= v42)
      {
        goto LABEL_352;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
      }

      v112 = v94 + 0x4000000000000000;
      v113 = 2 * a3 - 2 * v90;
      v114 = (v10 - 8 * v90 + 8 * a3 + 36);
      v115 = v245 + v90 - a3;
      v18 = v241;
      a3 = v239;
      while ((v112 & 0x8000000000000000) == 0)
      {
        if ((v113 & 0x8000000000000000) != 0)
        {
          goto LABEL_126;
        }

        v110 = *(v10 + 16);
        if (v113 >= v110)
        {
          goto LABEL_127;
        }

        *(v114 - 1) = 0;
        v111 = v113 + 1;
        if (v113 + 1 >= v110)
        {
          goto LABEL_128;
        }

        *v114 = 0;
        v114 += 2;
        ++v112;
        v113 += 2;
        if (!--v115)
        {
          goto LABEL_95;
        }
      }

      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
      goto LABEL_129;
    }

    v18 = v241;
    a3 = v239;
LABEL_95:
    if (!v238)
    {
      specialized GadgetWireInputs.update<A>(_:)(v10);
      if (!v242)
      {
        goto LABEL_99;
      }

      goto LABEL_120;
    }

    if (v238 == 1)
    {
      specialized QueryGadget.evaluate<A>(at:)(v10, &v246);
      goto LABEL_100;
    }

LABEL_99:
    specialized ParallelSum.evaluate<A>(at:)(v10, &v246);
LABEL_100:
    v42 = v245;
    if (!v246)
    {
      goto LABEL_45;
    }

    v116 = -1048575 - v246;
    if (v246 > 0xFFF00001)
    {
      goto LABEL_351;
    }

    if (v243 >= v116)
    {
      v243 -= v116;
    }

    else
    {
      if (v116 > 0xFFF00001)
      {
        __break(1u);
LABEL_354:
        __break(1u);
LABEL_355:
        __break(1u);
LABEL_356:
        __break(1u);
LABEL_357:
        __break(1u);
LABEL_358:
        __break(1u);
LABEL_359:
        __break(1u);
        goto LABEL_360;
      }

      v137 = __CFADD__(v243, v246);
      v243 += v246;
      if (v137)
      {
        goto LABEL_354;
      }
    }

LABEL_45:
    v90 = v244;
    v91 = a3 >= v244;
    if (v245 > 0)
    {
      v91 = v244 >= a3;
    }

    if (v91)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_350:
  __break(1u);
LABEL_351:
  __break(1u);
LABEL_352:
  __break(1u);
LABEL_353:
  outlined consume of GadgetEvaluation<A><A>(v17);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

uint64_t specialized PINEMainCircuit.evaluate(measurement:jointRand:numOfShares:for:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, int64_t a4@<X3>, unint64_t *a5@<X8>)
{
  v7 = *(a1 + 16);
  v8 = *(v5 + 72);
  if (v7 != v8)
  {
    _StringGuts.grow(_:)(35);

    *&v265 = 0xD00000000000001BLL;
    *(&v265 + 1) = 0x8000000270C51C80;
    v78 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v78);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v269 = v8;
LABEL_20:
    v80 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v80);
LABEL_21:

    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v81 = v265;
    *(v81 + 16) = 2;
    return swift_willThrow();
  }

  if (a2[2] != 3)
  {
    _StringGuts.grow(_:)(33);

    *&v265 = 0xD000000000000019;
    *(&v265 + 1) = 0x8000000270C51CE0;
    v79 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v79);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v269 = 3;
    goto LABEL_20;
  }

  v256 = v6;
  v260 = *(v5 + 64);
  v11 = *(v5 + 96);
  v242 = *(v5 + 104);
  v255 = *(v5 + 120);
  v248 = *(v5 + 128);
  v235 = *(v5 + 136);
  v237 = *(v5 + 144);
  v246 = a4;
  v12 = *(a4 + 16);
  v13 = *(v5 + 40);
  v14 = *(v5 + 24);
  v266 = *(v5 + 8);
  v267 = v14;
  v268 = v13;
  v15 = v266;
  v16 = v13;
  specialized Gadget.wirePolynomialLength.getter();
  specialized Gadget.gadgetPolynomialLength.getter();
  if (v12 != 1)
  {
    _StringGuts.grow(_:)(23);

    *&v265 = 0x2064696C61766E49;
    *(&v265 + 1) = 0xEF203A746E756F63;
    v269 = v12;
    v82 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v82);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF16GadgetParametersVGMd, &_ss23_ContiguousArrayStorageCy4VDAF16GadgetParametersVGMR);
    v83 = swift_allocObject();
    *(v83 + 16) = xmmword_270C44540;
    v84 = specialized Gadget.wirePolynomialLength.getter();
    v85 = specialized Gadget.gadgetPolynomialLength.getter();
    *(v83 + 32) = v15;
    *(v83 + 48) = v16;
    *(v83 + 56) = v84;
    *(v83 + 64) = v85;
    v86 = MEMORY[0x2743B2770](v83, &type metadata for GadgetParameters);
    v88 = v87;

    MEMORY[0x2743B25F0](v86, v88);
    goto LABEL_21;
  }

  v236 = v266;
  if ((a3 & 0x8000000000000000) != 0)
  {
    goto LABEL_420;
  }

  _s4VDAF12FieldElementPAAEyx06FiniteB0_11IntegerTypeQZcfCAA7Field64V_Tt1g5(a3, &v269);
  v17 = v269;
  if (!v269)
  {
    goto LABEL_453;
  }

  _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF8_UInt128V_s6UInt64VTt1g5(0xFFFFFFFEFFFFFFFFLL, &v265);
  if (v265 != 0)
  {
    v89 = 0xFFFFFFFEFFFFFFFFLL;
    v264 = 0xFFFFFFFFLL;
    while (1)
    {
      _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF8_UInt128V_s6UInt64VTt1g5(v89 & 1, &v265);
      if (v265 == 0)
      {
        v91 = v264;
        goto LABEL_47;
      }

      v92 = (v17 * v264) >> 64;
      v93 = (0xFFFFFFFEFFFFFFFFLL * v17 * v264 * 0xFFFFFFFF00000001) >> 64;
      v94 = __CFADD__(-(v17 * v264), v17 * v264);
      v143 = __CFADD__(v93, v92);
      v95 = v93 + v92;
      if (v143)
      {
        v96 = v95 + v94;
      }

      else
      {
        if (v95 != -1)
        {
          v97 = v95 + v94;
          if (v97 >= 0xFFFFFFFF00000001)
          {
            v91 = v97 + 0xFFFFFFFF;
          }

          else
          {
            v91 = v97;
          }

          goto LABEL_47;
        }

        v96 = 0;
        if (!v94)
        {
          v91 = 4294967294;
          goto LABEL_47;
        }
      }

      v91 = v96 + 0xFFFFFFFF;
      if (v96 >= 0xFFFFFFFF00000001)
      {
        goto LABEL_384;
      }

LABEL_47:
      v98 = (v17 * v17) >> 64;
      v99 = (0xFFFFFFFEFFFFFFFFLL * v17 * v17 * 0xFFFFFFFF00000001) >> 64;
      v100 = __CFADD__(-(v17 * v17), v17 * v17);
      v143 = __CFADD__(v99, v98);
      v101 = v99 + v98;
      v264 = v91;
      if (v143)
      {
        v102 = v101 + v100;
        v17 = v102 + 0xFFFFFFFF;
        if (v102 >= 0xFFFFFFFF00000001)
        {
          __break(1u);
LABEL_384:
          __break(1u);
LABEL_385:
          __break(1u);
LABEL_386:
          __break(1u);
LABEL_387:
          __break(1u);
LABEL_388:
          __break(1u);
LABEL_389:
          __break(1u);
LABEL_390:
          __break(1u);
LABEL_391:
          __break(1u);
LABEL_392:
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          outlined consume of GadgetEvaluation<A><A>(v7);

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          return swift_unknownObjectRelease();
        }
      }

      else if (v101 == -1)
      {
        if (v100)
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
        v90 = v101 + v100;
        if (v90 >= 0xFFFFFFFF00000001)
        {
          v17 = v90 + 0xFFFFFFFF;
        }

        else
        {
          v17 = v90;
        }
      }

      v89 >>= 1;
      _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF8_UInt128V_s6UInt64VTt1g5(v89, &v265);
      if (v265 == 0)
      {
        goto LABEL_8;
      }
    }
  }

  v264 = 0xFFFFFFFFLL;
LABEL_8:
  v12 = a2[4];
  v247 = a2[5];
  v228 = a2[6];
  specialized Collection.prefix(_:)(v11, a1, a1 + 32, 0, (2 * v7) | 1);
  v18 = specialized Collection.dropFirst(_:)(v11, a1, a1 + 32, 0, (2 * v7) | 1);
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = specialized Collection.prefix(_:)(v260, v18, v19, v21, v23);
  v249 = v26;
  v257 = v27;
  v239 = v28;
  v29 = specialized Collection.dropFirst(_:)(v260, v18, v20, v22, v24);
  v31 = v30;
  v33 = v32;
  v35 = v34;
  specialized Collection.prefix(_:)(v248, v29, v30, v32, v34);
  v233 = v36;
  v229 = v37;
  v232 = v38;
  specialized Collection.dropFirst(_:)(v248, v29, v31, v33, v35);
  swift_bridgeObjectRetain_n();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v39 = *(v246 + 32);
  v238 = v25;
  swift_unknownObjectRetain();
  v254 = v39;
  sub_270B60478(v39);
  if (one-time initialization token for one != -1)
  {
    goto LABEL_421;
  }

LABEL_9:
  v40 = static Field64.one;
  v41 = *(&v268 + 1);
  v42 = _sSa9repeating5countSayxGx_SitcfC4VDAF7Field64V_Tt1B5(0, v236);
  if (!v41)
  {
    __break(1u);
LABEL_423:
    __break(1u);
LABEL_424:
    __break(1u);
LABEL_425:
    __break(1u);
LABEL_426:
    __break(1u);
    goto LABEL_427;
  }

  v43 = v41;
  v7 = v42;
  v44 = v239 >> 1;
  v45 = v257;
  v46 = (v239 >> 1) >= v257;
  if (v43 > 0)
  {
    v46 = v257 >= (v239 >> 1);
  }

  v263 = v43;
  v230 = v40;
  if (v46)
  {
    v259 = 0;
LABEL_14:
    swift_unknownObjectRelease();
    outlined consume of GadgetEvaluation<A><A>(v254);

    specialized Collection.prefix(_:)(v242, v238, v249, v45, v239);
    v48 = v47;
    v258 = v49;
    v251 = v50;
    v51 = specialized Collection.dropFirst(_:)(v242, v238, v249, v45, v239);
    v53 = v52;
    v55 = v54;
    v57 = v56;
    specialized Collection.prefix(_:)(v242, v51, v52, v54, v56);
    v250 = v58;
    v243 = v59;
    v240 = v60;
    v61 = specialized Collection.dropFirst(_:)(v242, v51, v53, v55, v57);
    v65 = v255 + 1;
    if (!__OFADD__(v255, 1))
    {
      v66 = v65 * v248;
      v254 = v255 + 1;
      if ((v65 * v248) >> 64 == (v65 * v248) >> 63)
      {
        v67 = v61;
        v68 = v62;
        v69 = v63;
        v70 = v64;
        v71 = v48;
        v72 = specialized Collection.prefix(_:)(v65 * v248, v61, v62, v63, v64);
        v261 = v73;
        v253 = v74;
        v248 = v75;
        v76 = specialized Collection.dropFirst(_:)(v66, v67, v68, v69, v70);
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        _s4VDAF15PINEMainCircuitV22evaluateNormRangeCheck5vBits01uH018inverseNumOfShares3forxs10ArraySliceVyxG_AKxAA16GadgetEvaluationOyxGtKFAA7Field64V_SRySfGTt3B5(v71, v258, v251, v250, v243, v240, &v265, v264);
        v12 = v256;
        if (v256)
        {
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          return swift_unknownObjectRelease();
        }

        v7 = v248;
        v252 = v72;
        v45 = *(v246 + 32);
        v104 = v230;
        v44 = v230 - v237;
        if (v230 >= v237)
        {
          goto LABEL_137;
        }

        v128 = 0xFFFFFFFF00000001 - v237;
        v40 = v233;
        if (v237 <= 0xFFFFFFFF00000001)
        {
          v44 = v230 + v128;
          if (!__CFADD__(v230, v128))
          {
LABEL_138:
            sub_270B60478(v45);
            v103 = _sSa9repeating5countSayxGx_SitcfC4VDAF7Field64V_Tt1B5(0, v236);
            v109 = v232 >> 1;
            v129 = (v232 >> 1) >= v40;
            v108 = v263;
            if (v263 > 0)
            {
              v129 = v40 >= (v232 >> 1);
            }

            if (v129)
            {
              v130 = 0;
              v257 = 0;
              v7 = v45;
LABEL_142:
              v40 = v130;

              v104 = v228;
              v131 = v235;
              v44 = v252;
              if ((v235 & 0x8000000000000000) != 0)
              {
                if (__OFSUB__(0, v235))
                {
                  goto LABEL_448;
                }

                if (-v235 < 0)
                {
LABEL_449:
                  __break(1u);
                  goto LABEL_450;
                }

                v131 = v235 - 0xFFFFFFFF;
              }

              _s4VDAF12FieldElementPAAEyx06FiniteB0_11IntegerTypeQZcfCAA7Field64V_Tt1g5(v131, &v269);
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              outlined consume of GadgetEvaluation<A><A>(v7);
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              v132 = (v269 * v264) >> 64;
              v108 = 0xFFFFFFFF00000001;
              v133 = (0xFFFFFFFEFFFFFFFFLL * v269 * v264 * 0xFFFFFFFF00000001) >> 64;
              v111 = __CFADD__(-(v269 * v264), v269 * v264);
              v110 = v133 + v132;
              if (!__CFADD__(v133, v132))
              {
                if (v110 != -1)
                {
                  v136 = v110 + (v111 & 1);
                  if (v136 >= 0xFFFFFFFF00000001)
                  {
                    v136 += 0xFFFFFFFFLL;
                  }

                  goto LABEL_303;
                }

                goto LABEL_298;
              }

              goto LABEL_151;
            }

            goto LABEL_154;
          }

          __break(1u);
LABEL_137:
          v40 = v233;
          goto LABEL_138;
        }

LABEL_436:
        __break(1u);
LABEL_437:
        __break(1u);
        goto LABEL_438;
      }

LABEL_428:
      __break(1u);
LABEL_429:
      __break(1u);
LABEL_430:
      __break(1u);
LABEL_431:
      __break(1u);
LABEL_432:
      __break(1u);
LABEL_433:
      __break(1u);
LABEL_434:
      __break(1u);
LABEL_435:
      __break(1u);
      goto LABEL_436;
    }

LABEL_427:
    __break(1u);
    goto LABEL_428;
  }

  v259 = 0;
  v76 = 0xFFFFFFFF00000001;
  v244 = 0xFFFFFFFF00000001 - v264;
  v252 = v254 >> 62;
  v253 = v239 >> 1;
  v103 = 0xFFFFFFFFLL;
  v104 = v257;
  while (1)
  {
    v106 = v104 + v43;
    v107 = ((v104 + v43) >> 63) ^ 0x8000000000000000;
    if (!__OFADD__(v104, v43))
    {
      v107 = v104 + v43;
    }

    v261 = v107;
    if (__OFADD__(v104, v43))
    {
      goto LABEL_385;
    }

    if (v44 >= v106)
    {
      v44 = v104 + v43;
    }

    if (v44 < v104)
    {
      goto LABEL_386;
    }

    if (v104 < v45)
    {
      goto LABEL_387;
    }

    if (v106 < 0)
    {
      goto LABEL_388;
    }

    v45 = v44 - v104;
    if (__OFSUB__(v44, v104))
    {
      goto LABEL_389;
    }

    if ((v45 & 0x8000000000000000) != 0)
    {
      goto LABEL_390;
    }

    if (v45)
    {
      break;
    }

LABEL_108:
    if (v43 < v45)
    {
      goto LABEL_391;
    }

    if (v45 != v43)
    {
      if (v45 >= v43)
      {
        goto LABEL_410;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
      }

      v110 = v45 + 0x4000000000000000;
      v111 = 2 * v44 - 2 * v104;
      v125 = (v7 - 16 * v104 + 16 * v44 + 40);
      v126 = v263 + v104 - v44;
      v45 = v257;
      v44 = v239 >> 1;
      while ((v110 & 0x8000000000000000) == 0)
      {
        if ((v111 & 0x8000000000000000) != 0)
        {
          goto LABEL_293;
        }

        v108 = *(v7 + 16);
        if (v111 >= v108)
        {
          goto LABEL_294;
        }

        *(v125 - 1) = 0;
        v109 = v111 + 1;
        if (v111 + 1 >= v108)
        {
          goto LABEL_295;
        }

        *v125 = 0;
        v125 += 2;
        ++v110;
        v111 += 2;
        if (!--v126)
        {
          goto LABEL_120;
        }
      }

      goto LABEL_292;
    }

    v45 = v257;
    v44 = v239 >> 1;
LABEL_120:
    if (v252)
    {
      if (v252 == 1)
      {
        specialized QueryGadget.evaluate<A>(at:)(v7, specialized _ArrayBuffer._consumeAndCreateNew(), specialized _ArrayBuffer._consumeAndCreateNew(), &v265);
        goto LABEL_125;
      }
    }

    else
    {
      specialized GadgetWireInputs.update<A>(_:)(v7, specialized _ArrayBuffer._consumeAndCreateNew(), specialized _ArrayBuffer._consumeAndCreateNew());
      if (v256)
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        outlined consume of GadgetEvaluation<A><A>(v254);

        swift_unknownObjectRelease();
        return swift_unknownObjectRelease();
      }
    }

    specialized ParallelSum.evaluate<A>(at:)(v7, &v265);
LABEL_125:
    v43 = v263;
    if (v265)
    {
      v127 = 0xFFFFFFFF00000001 - v265;
      if (v265 > 0xFFFFFFFF00000001)
      {
        goto LABEL_409;
      }

      if (v259 >= v127)
      {
        v259 -= v127;
      }

      else
      {
        if (v127 > 0xFFFFFFFF00000001)
        {
          goto LABEL_418;
        }

        v143 = __CFADD__(v259, v265);
        v259 += v265;
        if (v143)
        {
LABEL_419:
          __break(1u);
LABEL_420:
          __break(1u);
LABEL_421:
          swift_once();
          goto LABEL_9;
        }
      }
    }

    v104 = v261;
    v105 = v44 >= v261;
    if (v263 > 0)
    {
      v105 = v261 >= v44;
    }

    if (v105)
    {
      goto LABEL_14;
    }
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
  }

  v110 = 0;
  v111 = v249 + 8 * v104;
  v112 = v44 - v104;
  while (1)
  {
    if (!v112)
    {
      __break(1u);
LABEL_290:
      __break(1u);
LABEL_291:
      __break(1u);
LABEL_292:
      __break(1u);
LABEL_293:
      __break(1u);
LABEL_294:
      __break(1u);
LABEL_295:
      __break(1u);
LABEL_296:
      __break(1u);
LABEL_297:
      __break(1u);
LABEL_298:
      if ((v111 & 1) == 0)
      {
        goto LABEL_302;
      }

      v111 = 1;
LABEL_151:
      v134 = v257;
      v135 = v111 + v110;
      v143 = __CFADD__(v135, 0xFFFFFFFFLL);
      v136 = v135 + 0xFFFFFFFF;
      if (!v143)
      {
        goto LABEL_304;
      }

      __break(1u);
LABEL_154:
      v257 = 0;
      v137 = 0;
      v130 = 0;
      v245 = v7 & 1;
      v246 = v7 >> 1;
      v138 = v44 * v264;
      v139 = (v44 * v264) >> 64;
      v140 = -(v44 * v264);
      v141 = (0xFFFFFFFEFFFFFFFFLL * v44 * v264 * 0xFFFFFFFF00000001) >> 64;
      v249 = v141 + v139;
      v142 = __CFADD__(v141, v139);
      LODWORD(v242) = v142;
      v143 = __CFADD__(v140, v138);
      v144 = __CFADD__(v140, v138);
      v256 = v144;
      v145 = v139 + v143 + v141;
      v146 = v40;
      if (v145 >= 0xFFFFFFFF00000001)
      {
        v145 += 0xFFFFFFFFLL;
      }

      v241 = v145;
      v147 = v45 >> 62;
      v226 = v76;
      v227 = v45;
      v238 = v45 >> 62;
      v7 = v45;
      v232 = v109;
      while (1)
      {
        v148 = v146 + v108;
        v149 = ((v146 + v108) >> 63) ^ 0x8000000000000000;
        if (!__OFADD__(v146, v108))
        {
          v149 = v146 + v108;
        }

        v239 = v149;
        if (__OFADD__(v146, v108))
        {
          goto LABEL_429;
        }

        if (v109 >= v148)
        {
          v150 = v146 + v108;
        }

        else
        {
          v150 = v109;
        }

        if (v150 < v146)
        {
          goto LABEL_430;
        }

        if (v146 < v233)
        {
          goto LABEL_431;
        }

        if (v148 < 0)
        {
          goto LABEL_432;
        }

        v151 = v150 - v146;
        if (__OFSUB__(v150, v146))
        {
          goto LABEL_433;
        }

        if (v151 < 0)
        {
          goto LABEL_434;
        }

        v237 = v130;
        if (v151)
        {
          v231 = v150;
          v236 = v146;
          v152 = v12;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v103 = specialized _ArrayBuffer._consumeAndCreateNew()(v103);
          }

          v12 = 0;
          v248 = v103;
          v153 = (v103 + 40);
          v225 = v151;
          v154 = (v229 + 8 * v236);
          v155 = v246;
          while (1)
          {
            v156 = v137 * v254;
            if ((v137 * v254) >> 64 != (v137 * v254) >> 63)
            {
              goto LABEL_397;
            }

            v157 = v253 + v156;
            if (__OFADD__(v253, v156))
            {
              goto LABEL_398;
            }

            v158 = v157 + v255;
            if (__OFADD__(v157, v255))
            {
              goto LABEL_399;
            }

            if (v158 < v157)
            {
              goto LABEL_400;
            }

            if (v155 < v157)
            {
              goto LABEL_401;
            }

            if (v157 < v253)
            {
              goto LABEL_402;
            }

            if (v155 < v158)
            {
              goto LABEL_403;
            }

            if (v158 < 0)
            {
              goto LABEL_404;
            }

            swift_unknownObjectRetain();
            _s4VDAF12FieldElementPAAE11inputVectorxs10ArraySliceVyxG_tKcfCAA7Field64V_Tt1g5(v261, v157, v245 | (2 * v158), &v269);
            if (v152)
            {
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              outlined consume of GadgetEvaluation<A><A>(v227);
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();

              swift_unknownObjectRelease();
              return swift_unknownObjectRelease();
            }

            v159 = v256;
            v160 = v263;
            v155 = v246;
            if (v242)
            {
              goto LABEL_188;
            }

            v162 = v241;
            if (v249 == -1)
            {
              break;
            }

LABEL_192:
            v163 = v269;
            if (!v162)
            {
              goto LABEL_202;
            }

            v143 = v162 <= 0xFFFFFFFF00000001;
            v164 = 0xFFFFFFFF00000001 - v162;
            if (!v143)
            {
              goto LABEL_411;
            }

LABEL_195:
            if (v163 >= v164)
            {
              v163 -= v164;
            }

            else
            {
              v143 = v164 <= 0xFFFFFFFF00000001;
              v165 = 0xFFFFFFFF00000001 - v164;
              if (!v143)
              {
                goto LABEL_423;
              }

              v143 = __CFADD__(v163, v165);
              v163 += v165;
              if (v143)
              {
                goto LABEL_424;
              }
            }

LABEL_202:
            if (v158 >= v246)
            {
              goto LABEL_405;
            }

            v166 = *(v261 + 8 * v158);
            v167 = *v154;
            v168 = *v154 - v163;
            if (*v154 < v163)
            {
              v143 = v163 <= 0xFFFFFFFF00000001;
              v169 = 0xFFFFFFFF00000001 - v163;
              if (!v143)
              {
                goto LABEL_416;
              }

              v168 = v167 + v169;
              if (__CFADD__(v167, v169))
              {
                goto LABEL_417;
              }
            }

            v170 = (v168 * v104) >> 64;
            v171 = (0xFFFFFFFEFFFFFFFFLL * v168 * v104 * 0xFFFFFFFF00000001) >> 64;
            v172 = __CFADD__(-(v168 * v104), v168 * v104);
            v173 = v171 + v170;
            if (!__CFADD__(v171, v170))
            {
              if (v173 != -1)
              {
                v175 = v173 + v172;
                if (v175 >= 0xFFFFFFFF00000001)
                {
                  v175 += 0xFFFFFFFFLL;
                }

                goto LABEL_225;
              }

              if (!v172)
              {
                v175 = 4294967294;
                goto LABEL_225;
              }

              v172 = 1;
            }

            v174 = v172 + v173;
            v143 = __CFADD__(v174, 0xFFFFFFFFLL);
            v175 = v174 + 0xFFFFFFFFLL;
            if (v143)
            {
              goto LABEL_414;
            }

LABEL_225:
            v176 = *(v248 + 16);
            if (v12 >= v176)
            {
              goto LABEL_406;
            }

            *(v153 - 1) = v175;
            if (v12 + 1 >= v176)
            {
              goto LABEL_407;
            }

            *v153 = v166;
            if (v166)
            {
              v143 = v166 <= 0xFFFFFFFF00000001;
              v177 = 0xFFFFFFFF00000001 - v166;
              if (!v143)
              {
                goto LABEL_412;
              }

              if (v257 >= v177)
              {
                v257 -= v177;
              }

              else
              {
                v143 = v177 <= 0xFFFFFFFF00000001;
                v178 = 0xFFFFFFFF00000001 - v177;
                if (!v143)
                {
                  goto LABEL_425;
                }

                if (__CFADD__(v257, v178))
                {
                  goto LABEL_426;
                }

                v257 += v178;
              }
            }

            v179 = (v104 * v247) >> 64;
            v180 = (0xFFFFFFFEFFFFFFFFLL * v104 * v247 * 0xFFFFFFFF00000001) >> 64;
            v181 = __CFADD__(-(v104 * v247), v104 * v247);
            v182 = v180 + v179;
            if (__CFADD__(v180, v179))
            {
              goto LABEL_241;
            }

            if (v182 == -1)
            {
              if (v181)
              {
                v181 = 1;
LABEL_241:
                v183 = v181 + v182;
                v104 = v183 + 0xFFFFFFFF;
                if (v183 >= 0xFFFFFFFF00000001)
                {
                  goto LABEL_415;
                }

                goto LABEL_250;
              }

              v104 = 4294967294;
            }

            else
            {
              v184 = v182 + v181;
              if (v184 >= 0xFFFFFFFF00000001)
              {
                v104 = v184 + 0xFFFFFFFF;
              }

              else
              {
                v104 = v184;
              }
            }

LABEL_250:
            if (v137 == 0x7FFFFFFFFFFFFFFFLL)
            {
              goto LABEL_408;
            }

            ++v137;
            ++v154;
            v12 += 2;
            v153 += 2;
            if (!--v151)
            {
              v12 = 0;
              v130 = v237;
              LODWORD(v147) = v238;
              v76 = v226;
              v7 = v227;
              v103 = v248;
              v146 = v236;
              v150 = v231;
              v151 = v225;
              goto LABEL_254;
            }
          }

          if (!v256)
          {
            v163 = v269;
            v164 = 0xFFFFFFFE00000003;
            goto LABEL_195;
          }

          v159 = 1;
LABEL_188:
          v161 = v159 + v249;
          v143 = __CFADD__(v161, 0xFFFFFFFFLL);
          v162 = v161 + 0xFFFFFFFFLL;
          if (v143)
          {
            goto LABEL_413;
          }

          goto LABEL_192;
        }

        v160 = v263;
LABEL_254:
        if (v160 < v151)
        {
          goto LABEL_435;
        }

        if (v151 != v160)
        {
          if (v151 < v160)
          {
            v185 = v151;
            v186 = v76;
            v187 = v150;
            v188 = v146;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v103 = specialized _ArrayBuffer._consumeAndCreateNew()(v103);
            }

            v130 = v237;
            LODWORD(v147) = v238;
            v189 = v185 + 0x4000000000000000;
            v190 = 2 * v187 - 2 * v188;
            v191 = (v103 - 16 * v188 + 16 * v187 + 40);
            v192 = v263 + v188 - v187;
            v76 = v186;
            v7 = v227;
            while ((v189 & 0x8000000000000000) == 0)
            {
              if ((v190 & 0x8000000000000000) != 0)
              {
                goto LABEL_394;
              }

              v193 = *(v103 + 16);
              if (v190 >= v193)
              {
                goto LABEL_395;
              }

              *(v191 - 1) = 0;
              if (v190 + 1 >= v193)
              {
                goto LABEL_396;
              }

              *v191 = 0;
              v191 += 2;
              ++v189;
              v190 += 2;
              if (!--v192)
              {
                goto LABEL_265;
              }
            }

            __break(1u);
LABEL_394:
            __break(1u);
LABEL_395:
            __break(1u);
LABEL_396:
            __break(1u);
            __break(1u);
LABEL_397:
            __break(1u);
LABEL_398:
            __break(1u);
LABEL_399:
            __break(1u);
LABEL_400:
            __break(1u);
LABEL_401:
            __break(1u);
LABEL_402:
            __break(1u);
LABEL_403:
            __break(1u);
LABEL_404:
            __break(1u);
LABEL_405:
            __break(1u);
            __break(1u);
LABEL_406:
            __break(1u);
LABEL_407:
            __break(1u);
LABEL_408:
            __break(1u);
LABEL_409:
            __break(1u);
LABEL_410:
            __break(1u);
LABEL_411:
            __break(1u);
LABEL_412:
            __break(1u);
LABEL_413:
            __break(1u);
LABEL_414:
            __break(1u);
LABEL_415:
            __break(1u);
LABEL_416:
            __break(1u);
LABEL_417:
            __break(1u);
LABEL_418:
            __break(1u);
            goto LABEL_419;
          }

LABEL_438:
          __break(1u);
LABEL_439:
          __break(1u);
LABEL_440:
          __break(1u);
LABEL_441:
          __break(1u);
LABEL_442:
          __break(1u);
LABEL_443:
          __break(1u);
LABEL_444:
          __break(1u);
LABEL_445:
          __break(1u);
LABEL_446:
          __break(1u);
LABEL_447:
          __break(1u);
LABEL_448:
          __break(1u);
          goto LABEL_449;
        }

LABEL_265:
        v45 = v130;
        if (v147)
        {
          if (v147 == 1)
          {
            specialized QueryGadget.evaluate<A>(at:)(v103, specialized _ArrayBuffer._consumeAndCreateNew(), specialized _ArrayBuffer._consumeAndCreateNew(), &v269);
            goto LABEL_270;
          }
        }

        else
        {
          specialized GadgetWireInputs.update<A>(_:)(v103, specialized _ArrayBuffer._consumeAndCreateNew(), specialized _ArrayBuffer._consumeAndCreateNew());
          if (v12)
          {
            goto LABEL_392;
          }
        }

        specialized ParallelSum.evaluate<A>(at:)(v103, &v269);
LABEL_270:
        v108 = v263;
        v109 = v232;
        v130 = v45;
        if (v269)
        {
          v194 = 0xFFFFFFFF00000001 - v269;
          LODWORD(v147) = v238;
          if (v269 > 0xFFFFFFFF00000001)
          {
            goto LABEL_437;
          }

          if (v45 >= v194)
          {
            v130 = v45 - v194;
          }

          else
          {
            if (v194 > 0xFFFFFFFF00000001)
            {
              goto LABEL_446;
            }

            v130 = v45 + v269;
            if (__CFADD__(v45, v269))
            {
              goto LABEL_447;
            }
          }
        }

        else
        {
          LODWORD(v147) = v238;
        }

        v146 = v239;
        v195 = v232 >= v239;
        if (v263 > 0)
        {
          v195 = v239 >= v232;
        }

        if (v195)
        {
          goto LABEL_142;
        }
      }
    }

    v114 = *v111;
    v115 = *v111 * v40;
    v116 = (*v111 * v40) >> 64;
    v117 = (0xFFFFFFFEFFFFFFFFLL * v115 * 0xFFFFFFFF00000001) >> 64;
    v109 = __CFADD__(-v115, v115);
    v118 = v117 + v116;
    if (!__CFADD__(v117, v116))
    {
      if (v118 != -1)
      {
        v120 = v118 + (v109 & 1);
        v109 = v120 + 0xFFFFFFFF;
        if (v120 >= 0xFFFFFFFF00000001)
        {
          v119 = v120 + 0xFFFFFFFF;
        }

        else
        {
          v119 = v120;
        }

        goto LABEL_92;
      }

      if ((v109 & 1) == 0)
      {
        v119 = 4294967294;
        goto LABEL_92;
      }

      v109 = 1;
    }

    v108 = v109 + v118;
    v119 = v108 + 0xFFFFFFFF;
    if (v108 >= 0xFFFFFFFF00000001)
    {
      goto LABEL_296;
    }

LABEL_92:
    v108 = *(v7 + 16);
    if (v110 >= v108)
    {
      goto LABEL_290;
    }

    v109 = v7 + 8 * v110;
    *(v109 + 32) = v119;
    v121 = v114 - v264;
    if (v114 >= v264)
    {
      goto LABEL_96;
    }

    if (v264 > 0xFFFFFFFF00000001)
    {
      break;
    }

    v121 = v114 + v244;
    if (__CFADD__(v114, v244))
    {
      goto LABEL_301;
    }

LABEL_96:
    if (v110 + 1 >= v108)
    {
      goto LABEL_291;
    }

    *(v109 + 40) = v121;
    v109 = (v40 * v12) >> 64;
    v122 = (0xFFFFFFFEFFFFFFFFLL * v40 * v12 * 0xFFFFFFFF00000001) >> 64;
    v108 = __CFADD__(-(v40 * v12), v40 * v12);
    v123 = v122 + v109;
    if (__CFADD__(v122, v109))
    {
      goto LABEL_75;
    }

    if (v123 == -1)
    {
      if (v108)
      {
        v108 = 1;
LABEL_75:
        v113 = v108 + v123;
        v40 = v113 + 0xFFFFFFFF;
        if (v113 >= 0xFFFFFFFF00000001)
        {
          goto LABEL_297;
        }

        goto LABEL_76;
      }

      v40 = 4294967294;
    }

    else
    {
      v124 = v123 + (v108 & 1);
      v108 = v124 + 0xFFFFFFFF;
      if (v124 >= 0xFFFFFFFF00000001)
      {
        v40 = v124 + 0xFFFFFFFF;
      }

      else
      {
        v40 = v124;
      }
    }

LABEL_76:
    v111 += 8;
    v110 += 2;
    if (!--v112)
    {
      v43 = v263;
      goto LABEL_108;
    }
  }

  __break(1u);
LABEL_301:
  __break(1u);
LABEL_302:
  v136 = 4294967294;
LABEL_303:
  v134 = v257;
LABEL_304:
  v196 = v134 - v136;
  if (v134 < v136)
  {
    v143 = v136 <= 0xFFFFFFFF00000001;
    v197 = 0xFFFFFFFF00000001 - v136;
    if (!v143)
    {
      goto LABEL_444;
    }

    v196 = v134 + v197;
    if (__CFADD__(v134, v197))
    {
      goto LABEL_445;
    }
  }

  v198 = (v265 * v104) >> 64;
  v199 = (0xFFFFFFFEFFFFFFFFLL * v265 * v104 * v108) >> 64;
  v200 = __CFADD__(-(v265 * v104), v265 * v104);
  v201 = v199 + v198;
  if (__CFADD__(v199, v198))
  {
    goto LABEL_313;
  }

  if (v201 == -1)
  {
    if (!v200)
    {
      v203 = 4294967294;
      goto LABEL_324;
    }

    v200 = 1;
LABEL_313:
    v202 = v200 + v201;
    v143 = __CFADD__(v202, 0xFFFFFFFFLL);
    v203 = v202 + 0xFFFFFFFFLL;
    if (v143)
    {
      goto LABEL_442;
    }

    if (v203)
    {
      goto LABEL_324;
    }

LABEL_333:
    specialized FieldElement.pow(_:)(2, v104, &v269);
    v207 = (v269 * v40) >> 64;
    v208 = (0xFFFFFFFEFFFFFFFFLL * v269 * v40 * 0xFFFFFFFF00000001) >> 64;
    v209 = __CFADD__(-(v269 * v40), v269 * v40);
    v210 = v208 + v207;
    if (!__CFADD__(v208, v207))
    {
      if (v210 != -1)
      {
        v212 = v210 + v209;
        if (v212 >= 0xFFFFFFFF00000001)
        {
          v212 += 0xFFFFFFFFLL;
        }

        if (!v212)
        {
          goto LABEL_358;
        }

        goto LABEL_349;
      }

      if (!v209)
      {
        v212 = 4294967294;
        goto LABEL_349;
      }

      v209 = 1;
    }

    v211 = v209 + v210;
    v143 = __CFADD__(v211, 0xFFFFFFFFLL);
    v212 = v211 + 0xFFFFFFFFLL;
    if (v143)
    {
      goto LABEL_443;
    }

    if (!v212)
    {
      goto LABEL_358;
    }

LABEL_349:
    v143 = v212 <= 0xFFFFFFFF00000001;
    v213 = 0xFFFFFFFF00000001 - v212;
    if (!v143)
    {
      goto LABEL_440;
    }

    v214 = v259 - v213;
    if (v259 < v213)
    {
      v143 = v213 <= 0xFFFFFFFF00000001;
      v215 = 0xFFFFFFFF00000001 - v213;
      if (!v143)
      {
        goto LABEL_451;
      }

      v143 = __CFADD__(v259, v215);
      v214 = v259 + v215;
      v259 += v215;
      if (!v143)
      {
LABEL_358:
        result = specialized FieldElement.pow(_:)(3, v104, &v269);
        v216 = (v269 * v196) >> 64;
        v217 = (0xFFFFFFFEFFFFFFFFLL * v269 * v196 * 0xFFFFFFFF00000001) >> 64;
        v218 = __CFADD__(-(v269 * v196), v269 * v196);
        v219 = v217 + v216;
        if (__CFADD__(v217, v216))
        {
          v220 = a5;
          goto LABEL_364;
        }

        while (1)
        {
          v220 = a5;
          if (v219 != -1)
          {
            break;
          }

          if ((v218 & 1) == 0)
          {
            *a5 = v259;
            v219 = 4294967294;
            goto LABEL_371;
          }

          v218 = 1;
LABEL_364:
          v221 = v218 + v219;
          LOBYTE(v218) = -1;
          v143 = __CFADD__(v221, 0xFFFFFFFFLL);
          v219 = v221 + 0xFFFFFFFF;
          if (!v143)
          {
            goto LABEL_370;
          }

          __break(1u);
        }

        v219 += v218 & 1;
        if (v219 >= 0xFFFFFFFF00000001)
        {
          v219 += 0xFFFFFFFFLL;
        }

LABEL_370:
        *v220 = v259;
        if (!v219)
        {
          goto LABEL_380;
        }

LABEL_371:
        v143 = v219 <= 0xFFFFFFFF00000001;
        v222 = 0xFFFFFFFF00000001 - v219;
        if (!v143)
        {
          goto LABEL_441;
        }

        v223 = v259 - v222;
        if (v259 < v222)
        {
          v143 = v222 <= 0xFFFFFFFF00000001;
          v224 = 0xFFFFFFFF00000001 - v222;
          if (!v143)
          {
            goto LABEL_452;
          }

          v143 = __CFADD__(v259, v224);
          v223 = v259 + v224;
          v259 += v224;
          if (!v143)
          {
            goto LABEL_380;
          }

          __break(1u);
        }

        v259 = v223;
LABEL_380:
        *v220 = v259;
        return result;
      }

      __break(1u);
    }

    v259 = v214;
    goto LABEL_358;
  }

  v203 = v201 + v200;
  if (v203 >= 0xFFFFFFFF00000001)
  {
    v203 += 0xFFFFFFFFLL;
  }

  if (!v203)
  {
    goto LABEL_333;
  }

LABEL_324:
  v143 = v203 <= 0xFFFFFFFF00000001;
  v204 = 0xFFFFFFFF00000001 - v203;
  if (!v143)
  {
    goto LABEL_439;
  }

  v205 = v259 - v204;
  if (v259 >= v204)
  {
LABEL_332:
    v259 = v205;
    goto LABEL_333;
  }

  v143 = v204 <= 0xFFFFFFFF00000001;
  v206 = 0xFFFFFFFF00000001 - v204;
  if (v143)
  {
    v143 = __CFADD__(v259, v206);
    v205 = v259 + v206;
    v259 += v206;
    if (!v143)
    {
      goto LABEL_333;
    }

    __break(1u);
    goto LABEL_332;
  }

LABEL_450:
  __break(1u);
LABEL_451:
  __break(1u);
LABEL_452:
  __break(1u);
LABEL_453:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _s4VDAF15PINEMainCircuitV22evaluateNormRangeCheck5vBits01uH018inverseNumOfShares3forxs10ArraySliceVyxG_AKxAA16GadgetEvaluationOyxGtKFAA7Field40V_SRySfGTt3B5@<X0>(uint64_t a1@<X1>, int64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X5>, int64_t a5@<X6>, unint64_t a6@<X7>, unint64_t *a7@<X8>, unint64_t a8)
{
  swift_unknownObjectRetain();
  result = _s4VDAF12FieldElementPAAE11inputVectorxs10ArraySliceVyxG_tKcfCAA7Field40V_Tt1g5(a1, a2, a3, &v31);
  if (!v9)
  {
    swift_unknownObjectRetain();
    result = _s4VDAF12FieldElementPAAE11inputVectorxs10ArraySliceVyxG_tKcfCAA7Field40V_Tt1g5(a4, a5, a6, &v30);
    v18 = v31;
    if (!v30)
    {
      goto LABEL_11;
    }

    v19 = 0xFFFEB00001 - v30;
    if (v30 > 0xFFFEB00001)
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v20 = v31 - v19;
    if (v31 < v19)
    {
      if (v19 > 0xFFFEB00001)
      {
LABEL_36:
        __break(1u);
        return result;
      }

      v18 = v31 + v30;
      if (!__CFADD__(v31, v30))
      {
LABEL_11:
        v21 = *(v8 + 112);
        v22 = (v21 * a8) >> 64;
        v23 = (0xCFFE47FFFEAFFFFFLL * v21 * a8 * 0xFFFEB00001uLL) >> 64;
        v24 = __CFADD__(-(v21 * a8), v21 * a8);
        v25 = v23 + v22;
        if (__CFADD__(v23, v22))
        {
          if (!v24)
          {
LABEL_25:
            v27 = v25 - 0xFFFEB00001;
            if (v25 >= 0xFFFEB00001)
            {
              goto LABEL_33;
            }

            v28 = v18 - v27;
            if (v18 >= v27)
            {
              goto LABEL_29;
            }

            goto LABEL_27;
          }
        }

        else
        {
          if (v25 != -1)
          {
            v26 = v25 + v24;
            v27 = v26 - 0xFFFEB00001;
            if (v26 < 0xFFFEB00001)
            {
              v27 = v26;
            }

            v28 = v18 - v27;
            if (v18 >= v27)
            {
              goto LABEL_29;
            }

            goto LABEL_27;
          }

          if (!v24)
          {
            v27 = 0xFFFFFF00014FFFFELL;
            v28 = v18 + 0xFFFEB00002;
            if (v18 >= 0xFFFFFF00014FFFFELL)
            {
LABEL_29:
              *a7 = v28;
              return result;
            }

LABEL_27:
            v29 = 0xFFFEB00001 - v27;
            if (v27 > 0xFFFEB00001)
            {
LABEL_34:
              __break(1u);
              goto LABEL_35;
            }

            v28 = v18 + v29;
            if (__CFADD__(v18, v29))
            {
LABEL_35:
              __break(1u);
              goto LABEL_36;
            }

            goto LABEL_29;
          }
        }

        ++v25;
        goto LABEL_25;
      }

      __break(1u);
    }

    v18 = v20;
    goto LABEL_11;
  }

  return result;
}

uint64_t _s4VDAF15PINEMainCircuitV22evaluateNormRangeCheck5vBits01uH018inverseNumOfShares3forxs10ArraySliceVyxG_AKxAA16GadgetEvaluationOyxGtKFAA7Field64V_SRySfGTt3B5@<X0>(uint64_t a1@<X1>, int64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X5>, int64_t a5@<X6>, unint64_t a6@<X7>, unint64_t *a7@<X8>, unint64_t a8)
{
  swift_unknownObjectRetain();
  result = _s4VDAF12FieldElementPAAE11inputVectorxs10ArraySliceVyxG_tKcfCAA7Field64V_Tt1g5(a1, a2, a3, &v31);
  if (!v9)
  {
    swift_unknownObjectRetain();
    result = _s4VDAF12FieldElementPAAE11inputVectorxs10ArraySliceVyxG_tKcfCAA7Field64V_Tt1g5(a4, a5, a6, &v30);
    v18 = v31;
    if (!v30)
    {
      goto LABEL_11;
    }

    v19 = 0xFFFFFFFF00000001 - v30;
    if (v30 > 0xFFFFFFFF00000001)
    {
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v20 = v31 - v19;
    if (v31 < v19)
    {
      v20 = 0xFFFFFFFF00000001;
      if (v19 > 0xFFFFFFFF00000001)
      {
LABEL_37:
        __break(1u);
        return result;
      }

      v18 = v31 + v30;
      if (!__CFADD__(v31, v30))
      {
LABEL_11:
        v21 = *(v8 + 112);
        v22 = (v21 * a8) >> 64;
        v23 = (0xFFFFFFFEFFFFFFFFLL * v21 * a8 * 0xFFFFFFFF00000001) >> 64;
        v24 = __CFADD__(-(v21 * a8), v21 * a8);
        v25 = v23 + v22;
        if (__CFADD__(v23, v22))
        {
          if (!v24)
          {
LABEL_25:
            v28 = __CFADD__(v25, 0xFFFFFFFFLL);
            v26 = v25 + 0xFFFFFFFFLL;
            if (v28)
            {
              goto LABEL_34;
            }

            v27 = v18 - v26;
            if (v18 >= v26)
            {
              goto LABEL_30;
            }

            goto LABEL_27;
          }
        }

        else
        {
          if (v25 != -1)
          {
            v26 = v25 + v24;
            if (v26 >= 0xFFFFFFFF00000001)
            {
              v26 += 0xFFFFFFFFLL;
            }

            v27 = v18 - v26;
            if (v18 >= v26)
            {
              goto LABEL_30;
            }

            goto LABEL_27;
          }

          if (!v24)
          {
            v26 = 4294967294;
            v27 = v18 - 4294967294u;
            if (v18 >= 0xFFFFFFFE)
            {
LABEL_30:
              *a7 = v27;
              return result;
            }

LABEL_27:
            v28 = v26 <= 0xFFFFFFFF00000001;
            v29 = 0xFFFFFFFF00000001 - v26;
            if (!v28)
            {
              goto LABEL_35;
            }

            v27 = v18 + v29;
            if (__CFADD__(v18, v29))
            {
LABEL_36:
              __break(1u);
              goto LABEL_37;
            }

            goto LABEL_30;
          }
        }

        ++v25;
        goto LABEL_25;
      }

      __break(1u);
    }

    v18 = v20;
    goto LABEL_11;
  }

  return result;
}