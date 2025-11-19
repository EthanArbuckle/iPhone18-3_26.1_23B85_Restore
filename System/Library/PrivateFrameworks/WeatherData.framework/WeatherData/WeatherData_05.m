void static WK2_Metadata.add(providerLogo:_:)()
{
  OUTLINED_FUNCTION_219();
  v4 = *MEMORY[0x277D85DE8];
  v6 = OUTLINED_FUNCTION_120(v5);
  if (!v3)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_58(v6, v7);
  if (v9 != v10)
  {
    OUTLINED_FUNCTION_38();
  }

  v11 = *(v0 + 16);
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (HIDWORD(v11))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v12 = OUTLINED_FUNCTION_3(v8, v11);
  if (v9 != v10)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v12, v13, *(v0 + 24));
  }

  OUTLINED_FUNCTION_119();
  if (v14)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_118();
  if (v15)
  {
    OUTLINED_FUNCTION_79();
    if (!v15)
    {
LABEL_28:
      v24 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  v16 = OUTLINED_FUNCTION_15();
  if (v9 != v10)
  {
    OUTLINED_FUNCTION_186(v16);
  }

  OUTLINED_FUNCTION_27();
  if (v9 != v10)
  {
    OUTLINED_FUNCTION_9();
    v17 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_4(v17);
  if (!v15 & v18)
  {
LABEL_32:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v20 & 1) == 0)
  {
    if (*(v19 + 32))
    {
      OUTLINED_FUNCTION_12_0(v19);
      *v21 = v2;
      *(v21 + 4) = 14;
    }

    OUTLINED_FUNCTION_33(v19, *(v19 + 72), xmmword_272B87CB0);
    if (v23 <= 0xE)
    {
      LOWORD(v23) = 14;
    }

    *(v22 + 64) = v23;
    goto LABEL_28;
  }

  __break(1u);
}

void static WK2_Metadata.add(reportedTime:_:)()
{
  OUTLINED_FUNCTION_219();
  v20 = *MEMORY[0x277D85DE8];
  if ((v1 & 0x100000000) != 0)
  {
LABEL_19:
    v19 = *MEMORY[0x277D85DE8];
    OUTLINED_FUNCTION_218();
    return;
  }

  v3 = v2;
  v4 = v1;
  if (*(v2 + 64) <= 3)
  {
    OUTLINED_FUNCTION_38();
  }

  v5 = *(v3 + 16);
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (HIDWORD(v5))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v6 = OUTLINED_FUNCTION_6(v1, v5);
  if (v8 != v9)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v6, v7, *(v3 + 24));
  }

  OUTLINED_FUNCTION_26();
  if (v8 != v9)
  {
    OUTLINED_FUNCTION_9();
    v10 = *(v0 + 32);
  }

  OUTLINED_FUNCTION_43(v10);
  *(v11 - 4) = v4;
  OUTLINED_FUNCTION_55();
  if (!v13 & v12)
  {
LABEL_22:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v15 & 1) == 0)
  {
    if (*(v14 + 32))
    {
      OUTLINED_FUNCTION_41(v14);
      *(v16 + 4) = 20;
    }

    OUTLINED_FUNCTION_33(v14, *(v14 + 72), xmmword_272B87CB0);
    if (v18 <= 0x14)
    {
      LOWORD(v18) = 20;
    }

    *(v17 + 64) = v18;
    goto LABEL_19;
  }

  __break(1u);
}

void static WK2_Metadata.add(sourceType:_:)()
{
  OUTLINED_FUNCTION_219();
  v1 = v0;
  v14 = *MEMORY[0x277D85DE8];
  v3 = *v2;
  if (!*v2)
  {
    OUTLINED_FUNCTION_79();
    if (!v4)
    {
LABEL_19:
      v13 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  if (v1[8] <= 0)
  {
    v1[8] = 1;
    v1[3] = 1;
  }

  v5 = v1[2];
  if (v5 < 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (HIDWORD(v5))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v6 = v1[1];
  if (*(v6 + 32) < v5)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(0, v1[2], v1[3]);
  }

  v1[2] = v5;
  v7 = *(v6 + 32);
  if (v7 <= v5)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(1, v5, v1[3]);
    v7 = *(v6 + 32);
  }

  *(*(v6 + 24) + v7 + ~v5) = v3;
  v1[2] = v5 + 1;
  if (v5 == 0xFFFFFFFFLL)
  {
LABEL_22:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v9 & 1) == 0)
  {
    if (*(v8 + 32))
    {
      OUTLINED_FUNCTION_41(v8);
      *(v10 + 4) = 24;
    }

    OUTLINED_FUNCTION_33(v8, *(v8 + 72), xmmword_272B87CB0);
    if (v12 <= 0x18)
    {
      LOWORD(v12) = 24;
    }

    *(v11 + 64) = v12;
    goto LABEL_19;
  }

  __break(1u);
}

uint64_t static WK2_Metadata.createMetadata(_:attributionUrlOffset:expireTime:languageOffset:latitude:longitude:providerLogoOffset:providerNameOffset:readTime:reportedTime:temporarilyUnavailable:sourceType:)@<X0>(_BYTE *a1@<X0>, int *a2@<X1>, int *a3@<X3>, int *a4@<X4>, int *a5@<X5>, uint64_t a6@<X8>, float a7@<S0>, float a8@<S1>, uint64_t a9, char *a10)
{
  v13 = *a2;
  v14 = *a3;
  v15 = *a4;
  v16 = *a5;
  v17 = *a10;
  v18 = static WK2_Metadata.startMetadata(_:)(a1);
  HIDWORD(v64) = v18;
  OUTLINED_FUNCTION_26_1(v18, v19, v20, v21, v22, v23, v24, v25, v59, v64, a6, v76, v13);
  static WK2_Metadata.add(attributionUrl:_:)();
  static WK2_Metadata.add(expireTime:_:)();
  OUTLINED_FUNCTION_26_1(v26, v27, v28, v29, v30, v31, v32, v33, v60, v65, v71, v77, v14);
  static WK2_Metadata.add(language:_:)();
  static WK2_Metadata.add(latitude:_:)(a1, a7);
  static WK2_Metadata.add(longitude:_:)(a1, a8);
  OUTLINED_FUNCTION_26_1(v34, v35, v36, v37, v38, v39, v40, v41, v61, v66, v72, v78, v15);
  static WK2_Metadata.add(providerLogo:_:)();
  OUTLINED_FUNCTION_26_1(v42, v43, v44, v45, v46, v47, v48, v49, v62, v67, v73, v79, v16);
  static WK2_Metadata.add(providerName:_:)();
  static WK2_Metadata.add(readTime:_:)();
  static WK2_Metadata.add(reportedTime:_:)();
  static WK2_Metadata.add(temporarilyUnavailable:_:)();
  OUTLINED_FUNCTION_26_1(v50, v51, v52, v53, v54, v55, v56, v57, v63, v68, v74, v80, v17);
  static WK2_Metadata.add(sourceType:_:)();
  result = FlatBufferBuilder.endTable(at:)(at);
  *v75 = result;
  return result;
}

void static WK2_Metadata.verify<A>(_:at:of:)(int a1, unint64_t position)
{
  Verifier.visitTable(at:)(position, __src);
  if (!v2)
  {
    v4 = OUTLINED_FUNCTION_41_1();
    v12 = __src[2];
    if (__src[2] >= 7)
    {
      v13 = __src[1] + 6;
      v14 = LOBYTE(__src[3]);
      if (LOBYTE(__src[3]) == 1)
      {
        OUTLINED_FUNCTION_42(v4, v5, v6, v7, v8, v9, v10, v11, *v134, *&v134[8], *&v134[16], *&v134[24], *&v134[32], *&v134[40], *&v134[48], *&v134[56], *&v134[64], *&v134[72], *&v134[80], *&v134[88], *&v134[96], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8]);
        if (v15)
        {
          goto LABEL_69;
        }
      }

      v3 = __src;
      Verifier.rangeInBuffer(position:size:)(v13, 2);
      if (v24)
      {
LABEL_3:
        memcpy(v134, __src, 0x65uLL);
        sub_272B522C4(v134);
        return;
      }

      OUTLINED_FUNCTION_53(v16, v17, v18, v19, v20, v21, v22, v23, *v134, *&v134[8], *&v134[16], *&v134[24], *&v134[32], *&v134[40], *&v134[48], *&v134[56], *&v134[64], *&v134[72], *&v134[80], *&v134[88], *&v134[96], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8]);
      if (v25)
      {
        OUTLINED_FUNCTION_23();
        if (v26)
        {
          v27 = 0;
        }

        else
        {
          v27 = v14;
        }

        if (v27 == 1)
        {
          goto LABEL_14;
        }

        OUTLINED_FUNCTION_32(v13);
      }
    }

    OUTLINED_FUNCTION_41_1();
    if (v12 >= 11)
    {
      v13 = __src[1] + 10;
      OUTLINED_FUNCTION_18();
      if (v26)
      {
        OUTLINED_FUNCTION_42(v30, v31, v32, v33, v34, v35, v36, v37, *v134, *&v134[8], *&v134[16], *&v134[24], *&v134[32], *&v134[40], *&v134[48], *&v134[56], *&v134[64], *&v134[72], *&v134[80], *&v134[88], *&v134[96], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8]);
        if (v38)
        {
          goto LABEL_69;
        }
      }

      OUTLINED_FUNCTION_76();
      OUTLINED_FUNCTION_53(v39, v40, v41, v42, v43, v44, v45, v46, *v134, *&v134[8], *&v134[16], *&v134[24], *&v134[32], *&v134[40], *&v134[48], *&v134[56], *&v134[64], *&v134[72], *&v134[80], *&v134[88], *&v134[96], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8]);
      if (v47)
      {
        OUTLINED_FUNCTION_23();
        if (v26)
        {
          v48 = 0;
        }

        else
        {
          v48 = v3;
        }

        if (v48 == 1)
        {
          goto LABEL_25;
        }

        v49 = OUTLINED_FUNCTION_18_2();
        OUTLINED_FUNCTION_32(v49);
      }

      if (v12 > 0xC)
      {
        v13 = __src[1] + 12;
        OUTLINED_FUNCTION_18();
        if (v26)
        {
          OUTLINED_FUNCTION_42(v50, v51, v52, v53, v54, v55, v56, v57, *v134, *&v134[8], *&v134[16], *&v134[24], *&v134[32], *&v134[40], *&v134[48], *&v134[56], *&v134[64], *&v134[72], *&v134[80], *&v134[88], *&v134[96], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8]);
          if (v58)
          {
            goto LABEL_69;
          }
        }

        OUTLINED_FUNCTION_76();
        OUTLINED_FUNCTION_53(v59, v60, v61, v62, v63, v64, v65, v66, *v134, *&v134[8], *&v134[16], *&v134[24], *&v134[32], *&v134[40], *&v134[48], *&v134[56], *&v134[64], *&v134[72], *&v134[80], *&v134[88], *&v134[96], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8]);
        if (v67)
        {
          OUTLINED_FUNCTION_23();
          if (v26)
          {
            v68 = 0;
          }

          else
          {
            v68 = v3;
          }

          if (v68 == 1)
          {
LABEL_25:
            *v134 = MEMORY[0x277D83A90];
            v28 = &unk_2808A3178;
            v29 = &unk_272B87CD0;
            goto LABEL_70;
          }

          v69 = OUTLINED_FUNCTION_18_2();
          OUTLINED_FUNCTION_32(v69);
        }
      }
    }

    OUTLINED_FUNCTION_41_1();
    OUTLINED_FUNCTION_41_1();
    if (v12 < 19)
    {
      goto LABEL_67;
    }

    v13 = __src[1] + 18;
    OUTLINED_FUNCTION_18();
    if (v26)
    {
      OUTLINED_FUNCTION_42(v70, v71, v72, v73, v74, v75, v76, v77, *v134, *&v134[8], *&v134[16], *&v134[24], *&v134[32], *&v134[40], *&v134[48], *&v134[56], *&v134[64], *&v134[72], *&v134[80], *&v134[88], *&v134[96], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8]);
      if (v78)
      {
        goto LABEL_69;
      }
    }

    OUTLINED_FUNCTION_76();
    OUTLINED_FUNCTION_53(v79, v80, v81, v82, v83, v84, v85, v86, *v134, *&v134[8], *&v134[16], *&v134[24], *&v134[32], *&v134[40], *&v134[48], *&v134[56], *&v134[64], *&v134[72], *&v134[80], *&v134[88], *&v134[96], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8]);
    if (v87)
    {
      OUTLINED_FUNCTION_23();
      if (v26)
      {
        v88 = 0;
      }

      else
      {
        v88 = v3;
      }

      if (v88 == 1)
      {
        goto LABEL_14;
      }

      v89 = OUTLINED_FUNCTION_18_2();
      OUTLINED_FUNCTION_32(v89);
    }

    if (v12 <= 0x14)
    {
      goto LABEL_67;
    }

    v13 = __src[1] + 20;
    OUTLINED_FUNCTION_18();
    if (v26)
    {
      OUTLINED_FUNCTION_42(v90, v91, v92, v93, v94, v95, v96, v97, *v134, *&v134[8], *&v134[16], *&v134[24], *&v134[32], *&v134[40], *&v134[48], *&v134[56], *&v134[64], *&v134[72], *&v134[80], *&v134[88], *&v134[96], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8]);
      if (v98)
      {
        goto LABEL_69;
      }
    }

    OUTLINED_FUNCTION_76();
    OUTLINED_FUNCTION_53(v99, v100, v101, v102, v103, v104, v105, v106, *v134, *&v134[8], *&v134[16], *&v134[24], *&v134[32], *&v134[40], *&v134[48], *&v134[56], *&v134[64], *&v134[72], *&v134[80], *&v134[88], *&v134[96], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8]);
    if (!v115)
    {
      goto LABEL_57;
    }

    OUTLINED_FUNCTION_23();
    if (v26)
    {
      v116 = 0;
    }

    else
    {
      v116 = v3;
    }

    if (v116 != 1)
    {
      v117 = OUTLINED_FUNCTION_18_2();
      OUTLINED_FUNCTION_32(v117);
LABEL_57:
      if (v12 > 0x16)
      {
        v13 = __src[1] + 22;
        if (LOBYTE(__src[3]) != 1 || (OUTLINED_FUNCTION_42(v107, v108, v109, v110, v111, v112, v113, v114, *v134, *&v134[8], *&v134[16], *&v134[24], *&v134[32], *&v134[40], *&v134[48], *&v134[56], *&v134[64], *&v134[72], *&v134[80], *&v134[88], *&v134[96], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8]), (v118 & 1) == 0))
        {
          OUTLINED_FUNCTION_76();
          if (*(*(__src[8] + 24) + v13))
          {
            OUTLINED_FUNCTION_30_1(*(*(__src[8] + 24) + v13), *v134, *&v134[8], *&v134[16], *&v134[24], *&v134[32], *&v134[40], *&v134[48], *&v134[56], *&v134[64], *&v134[72], *&v134[80], *&v134[88], *&v134[96], __src[0]);
          }

          if (v12 <= 0x18)
          {
            goto LABEL_67;
          }

          v13 = __src[1] + 24;
          if (LOBYTE(__src[3]) != 1 || (OUTLINED_FUNCTION_42(v119, v120, v121, v122, v123, v124, v125, v126, *v134, *&v134[8], *&v134[16], *&v134[24], *&v134[32], *&v134[40], *&v134[48], *&v134[56], *&v134[64], *&v134[72], *&v134[80], *&v134[88], *&v134[96], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8]), (v127 & 1) == 0))
          {
            OUTLINED_FUNCTION_76();
            if (*(*(__src[8] + 24) + v13))
            {
              OUTLINED_FUNCTION_30_1(*(*(__src[8] + 24) + v13), *v134, *&v134[8], *&v134[16], *&v134[24], *&v134[32], *&v134[40], *&v134[48], *&v134[56], *&v134[64], *&v134[72], *&v134[80], *&v134[88], *&v134[96], __src[0]);
            }

            goto LABEL_67;
          }
        }

LABEL_69:
        *v134 = MEMORY[0x277D84C58];
        v28 = &qword_2808A3160;
        v29 = &unk_272B87CC0;
        goto LABEL_70;
      }

LABEL_67:
      if (__OFSUB__(__src[7], 1))
      {
        __break(1u);
        return;
      }

      --__src[7];
      goto LABEL_3;
    }

LABEL_14:
    *v134 = MEMORY[0x277D84CC0];
    v28 = &qword_2808A3170;
    v29 = &unk_272B89910;
LABEL_70:
    __swift_instantiateConcreteTypeFromMangledNameV2(v28, v29);
    v128 = sub_272B87730();
    v130 = v129;
    sub_272B5C86C();
    swift_allocError();
    *v131 = v13;
    *(v131 + 8) = v128;
    *(v131 + 16) = v130;
    v132 = *&v134[32];
    v133 = *&v134[16];
    *(v131 + 24) = *v134;
    *(v131 + 40) = v133;
    *(v131 + 56) = v132;
    *(v131 + 64) = 0;
    swift_willThrow();
    goto LABEL_3;
  }
}

unint64_t sub_272B7F450()
{
  result = qword_2808A3410;
  if (!qword_2808A3410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808A3410);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WK2_SourceType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for WK2_SourceType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

void static WK2_UUID.addVectorOf(bytes:_:)()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  static WK2_Metadata.add(attributionUrl:_:)();
}

void OUTLINED_FUNCTION_30_1(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{

  Verifier.rangeInBuffer(position:size:)(a15 + a1, 1);
}

uint64_t static FlatBuffersUtils.removeSizePrefix(bb:)(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  type metadata accessor for ByteBuffer.Storage();
  swift_allocObject();
  v3 = ByteBuffer.Storage.init(count:alignment:)(v2);
  ByteBuffer.Storage.copy(from:count:)(v1, v2);
  return v3;
}

_BYTE *storeEnumTagSinglePayload for FlatBuffersUtils(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

void Dictionary.encode(using:_:)(uint64_t a1@<X0>, uint64_t a2@<X5>, _DWORD *a3@<X8>)
{
  v31 = *MEMORY[0x277D85DE8];
  sub_272B876B0();
  swift_getWitnessTable();
  v8 = sub_272B877B0();
  v9 = OUTLINED_FUNCTION_4_3(v8);
  if (v11 ^ v12 | v10)
  {
    OUTLINED_FUNCTION_18_0();
  }

  v13 = *(a1 + 16);
  if (v13 > 0xFFFFFFFFLL)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if ((v13 | (4 * v3)) < 0)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (4 * v3 > 0xFFFFFFFFLL)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v14 = OUTLINED_FUNCTION_3_3(v9, v13);
  if (v11 != v12)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v14, v15, *(a1 + 24));
  }

  *(a1 + 16) = v4;
  if (v4 < 0)
  {
    goto LABEL_50;
  }

  if (!HIDWORD(v4))
  {
    v28 = a3;
    v29 = v3;
    v16 = OUTLINED_FUNCTION_10_1();
    if (v11 != v12)
    {
      OUTLINED_FUNCTION_12_2(v16);
    }

    *(a1 + 16) = v3;
    v17 = MEMORY[0x10];
    if (!MEMORY[0x10])
    {
      goto LABEL_52;
    }

    LODWORD(a3) = -1;
    while (v17 <= MEMORY[0x10])
    {
      if (v3 > 0xFFFFFFFFLL)
      {
        goto LABEL_44;
      }

      v18 = OUTLINED_FUNCTION_2_3();
      if (v11 != v12)
      {
        OUTLINED_FUNCTION_13_2(v18);
      }

      if (v4 > 0xFFFFFFFFLL)
      {
        goto LABEL_45;
      }

      v19 = OUTLINED_FUNCTION_11_1();
      if (v11 != v12)
      {
        OUTLINED_FUNCTION_12_2(v19);
        v20 = a2;
      }

      v3 = v5 + 4;
      if (v20 < v5 + 4)
      {
        v21 = OUTLINED_FUNCTION_21_0();
        ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v21, v5, v22);
        v20 = a2;
      }

      OUTLINED_FUNCTION_1_3(v20);
      if (!(v11 ^ v12 | v10))
      {
        goto LABEL_46;
      }

      if (!--v17)
      {

        *(a1 + 16) = v3;
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

LABEL_51:
  __break(1u);
LABEL_52:

LABEL_32:
  *(a1 + 40) = 0;
  if (v29 >> 31)
  {
    __break(1u);
    goto LABEL_54;
  }

  if (v3 > 0xFFFFFFFFLL)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  OUTLINED_FUNCTION_5_1();
  if (v11 != v12)
  {
    OUTLINED_FUNCTION_13_2(v23);
  }

  OUTLINED_FUNCTION_19();
  if (v11 != v12)
  {
    v25 = OUTLINED_FUNCTION_21_0();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v25, (-v3 & 3) + v3, v26);
    v24 = a2;
  }

  OUTLINED_FUNCTION_5_2(v24);
  if (!(v11 ^ v12 | v10))
  {
LABEL_55:
    __break(1u);
  }

  *v28 = a3;
  v27 = *MEMORY[0x277D85DE8];
}

uint64_t sub_272B7FB20(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 48);
  return sub_272B7FA74(a1, *(v1 + 40));
}

uint64_t OUTLINED_FUNCTION_11_1()
{
  result = -v1 & 3;
  v3 = *(v0 + 32);
  return result;
}

void Verifier.isAligned<A>(position:type:)(uint64_t a1)
{
  if (*v1 == 1)
  {
    OUTLINED_FUNCTION_3_4();
    if ((*(*(v3 - 8) + 80) & (v4 + a1)) != 0)
    {
      *&v15 = v3;
      swift_getMetatypeMetadata();
      v5 = sub_272B87730();
      sub_272B5C86C();
      v6 = OUTLINED_FUNCTION_177();
      *v7 = a1;
      v7[1] = v5;
      OUTLINED_FUNCTION_1_4(v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }
}

void Verifier.inBuffer<A>(position:of:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Verifier.isAligned<A>(position:type:)(a1);
  if (!v3)
  {
    Verifier.rangeInBuffer(position:size:)(a1, *(*(a3 - 8) + 64));
  }
}

uint64_t Verifier.init(buffer:options:checkAlignment:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *a1;
  v6 = *(v5 + 32);
  if (v6 > 3221225471)
  {
    sub_272B5C86C();
    OUTLINED_FUNCTION_177();
    OUTLINED_FUNCTION_0_5(v10, 2);
    *(v11 + 64) = v12;
    return swift_willThrow();
  }

  else
  {
    v7 = *(a2 + 12);
    v8 = *(a2 + 8);
    *a4 = a3 & 1;
    *(a4 + 8) = v6;
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
    *(a4 + 32) = 0;
    *(a4 + 40) = v5;
    *(a4 + 48) = *(a1 + 1);
    *(a4 + 64) = *a2;
    *(a4 + 72) = v8;
    *(a4 + 76) = v7;
  }
}

uint64_t sub_272B7FD2C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 77))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_272B7FD6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 76) = 0;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 77) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 77) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_272B7FDD4(uint64_t a1, uint64_t a2)
{
  v5 = sub_272B87720();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v24 - v11;
  v13 = *(v2 + 40);
  sub_272B87710();
  v14 = *(v13 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A33F0, &qword_272B8A980);
  v15 = swift_allocObject();
  v16 = _swift_stdlib_malloc_size(v15);
  *(v15 + 16) = 4;
  *(v15 + 24) = 2 * v16 - 64;
  *(v15 + 32) = *(v14 + 4);
  v24[1] = v15;
  (*(v6 + 16))(v10, v12, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3210, &qword_272B89868);
  sub_272B549E8();
  v17 = sub_272B87700();
  v19 = v18;

  (*(v6 + 8))(v12, v5);
  if (!v19)
  {
LABEL_7:
    sub_272B5C86C();
    OUTLINED_FUNCTION_177();
    *v23 = 0u;
    *(v23 + 16) = 0u;
    *(v23 + 32) = 0u;
    *(v23 + 48) = 0u;
    *(v23 + 64) = 7;
    return swift_willThrow();
  }

  if (v17 != a1 || v19 != a2)
  {
    v21 = sub_272B87980();

    if (v21)
    {
      return result;
    }

    goto LABEL_7;
  }
}

void sub_272B80000(int a1, unint64_t position)
{
  Verifier.visitTable(at:)(position, __src);
  if (!v2)
  {
    sub_272B5D974();
    sub_272B5D990();
    sub_272B5D9AC();
    sub_272B5D9C8();
    sub_272B5DA08();
    sub_272B5DA24();
    sub_272B5DA60();
    sub_272B5DA7C();
    sub_272B5DA98();
    sub_272B5DCD0();
    sub_272B5DCEC();
    sub_272B5DD08();
    sub_272B5DD24();
    if (__OFSUB__(__src[7], 1))
    {
      __break(1u);
    }

    else
    {
      --__src[7];
      memcpy(v3, __src, 0x65uLL);
      sub_272B522C4(v3);
    }
  }
}

uint64_t WK2_WeatherCollection.__buffer.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
}

uint64_t WK2_WeatherCollection.init(_:o:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

BOOL WK2_WeatherCollection.hasElements.getter()
{
  v1 = v0[6];
  v2 = *(*v0 + 24);
  v3 = *(v2 + v1);
  v4 = __OFSUB__(v1, v3);
  v5 = v1 - v3;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    if (*(v2 + v5) < 5u)
    {
      return 0;
    }

    v4 = __OFADD__(v5, 4);
    v6 = v5 + 4;
    if (!v4)
    {
      return *(v2 + v6) != 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t WK2_WeatherCollection.elementsCount.getter()
{
  v1 = v0[6];
  v2 = *(*v0 + 24);
  v3 = *(v2 + v1);
  v4 = __OFSUB__(v1, v3);
  v5 = v1 - v3;
  if (v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v2 + v5) < 5u)
  {
    return 0;
  }

  v4 = __OFADD__(v5, 4);
  v6 = v5 + 4;
  if (v4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = *(v2 + v6);
  if (!v7)
  {
    return 0;
  }

  v4 = __OFADD__(v7, v1);
  v8 = v7 + v1;
  if (!v4)
  {
    v9 = *(v2 + v8);
    v4 = __OFADD__(v8, v9);
    v10 = v8 + v9;
    if (!v4)
    {
      return *(v2 + v10);
    }

    goto LABEL_12;
  }

LABEL_11:
  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t WK2_WeatherCollection.elements(at:)@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  result = *v2;
  v6 = *(v2 + 24);
  v7 = *(*v2 + 24);
  v8 = *(v7 + v6);
  v9 = __OFSUB__(v6, v8);
  v10 = v6 - v8;
  if (v9)
  {
    __break(1u);
    goto LABEL_15;
  }

  v11 = 0uLL;
  if (*(v7 + v10) < 5u)
  {
LABEL_12:
    result = 0;
    v20 = 0;
    goto LABEL_13;
  }

  v9 = __OFADD__(v10, 4);
  v12 = v10 + 4;
  if (v9)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v13 = *(v7 + v12);
  if (!v13)
  {
    goto LABEL_12;
  }

  v9 = __OFADD__(v13, v6);
  v14 = v13 + v6;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v15 = *(v7 + v14);
  v9 = __OFADD__(v14, v15);
  v16 = v14 + v15;
  if (v9)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = __OFADD__(v16, 4);
  v17 = v16 + 4;
  if (v9)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if ((a1 - 0x20000000) >> 30 != 3)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v9 = __OFADD__(v17, 4 * a1);
  v18 = v17 + 4 * a1;
  if (v9)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v19 = *(v7 + v18);
  v20 = v18 + v19;
  if (!__OFADD__(v18, v19))
  {
    v21 = *(v2 + 8);

    v11 = v21;
LABEL_13:
    *a2 = result;
    *(a2 + 8) = v11;
    *(a2 + 24) = v20;
    return result;
  }

LABEL_21:
  __break(1u);
  return result;
}

unint64_t static WK2_WeatherCollection.startWeatherCollection(_:)(unint64_t result)
{
  v1 = result;
  *(result + 40) = 1;
  v2 = *result;
  if (*(*result + 56) < *(*result + 80) + 8)
  {
    if (*(v2 + 48))
    {
LABEL_11:
      __break(1u);
      return result;
    }

    v3 = *(v2 + 32);
    if (v3)
    {
      MEMORY[0x2743D4FD0](v3, -1, -1);
    }

    v4 = swift_slowAlloc();
    *(v2 + 32) = v4;
    *(v2 + 40) = v4 + 8;
    *(v2 + 48) = 0;
    *(v2 + 56) = 8;
  }

  result = *(v1 + 16);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (HIDWORD(result))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  return result;
}

void static WK2_WeatherCollection.addVectorOf(elements:_:)(int *a1, uint64_t *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  if (!*a1)
  {
    goto LABEL_22;
  }

  if (a2[8] < 4)
  {
    a2[8] = 4;
    a2[3] = 4;
  }

  v4 = a2[2];
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (HIDWORD(v4))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v5 = -*(a2 + 16) & 3;
  v6 = v5 + v4;
  v7 = a2[1];
  if (*(v7 + 32) < (v5 + v4))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v5, v4, a2[3]);
  }

  a2[2] = v6;
  if (HIDWORD(v6))
  {
    goto LABEL_25;
  }

  v8 = v6 - v2 + 4;
  if (v6 - v2 == -4 && *(a2 + 57) != 1)
  {
LABEL_22:
    v17 = *MEMORY[0x277D85DE8];
    return;
  }

  v9 = -v6 & 3;
  v10 = v9 + v6;
  if (*(v7 + 32) < (v9 + v6))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v6, a2[3]);
  }

  a2[2] = v10;
  v11 = v10 + 4;
  v12 = *(v7 + 32);
  if (v12 < (v10 + 4))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(4, v10, a2[3]);
    v12 = *(v7 + 32);
  }

  *(*(v7 + 24) + v12 - v10 - 4) = v8;
  a2[2] = v11;
  if (v10 > 0xFFFFFFFB)
  {
LABEL_26:
    __break(1u);
  }

  v13 = *a2;
  if ((*(*a2 + 48) & 1) == 0)
  {
    v14 = *(v13 + 32);
    if (v14)
    {
      v15 = v14 + *(v13 + 80);
      *v15 = v11;
      *(v15 + 4) = 4;
    }

    *(v13 + 72) = vaddq_s64(*(v13 + 72), xmmword_272B87CB0);
    v16 = *(v13 + 64);
    if (v16 <= 4)
    {
      LOWORD(v16) = 4;
    }

    *(v13 + 64) = v16;
    goto LABEL_22;
  }

  __break(1u);
}

uint64_t static WK2_WeatherCollection.endWeatherCollection(_:start:)@<X0>(Swift::UInt32 at@<W1>, _DWORD *a2@<X8>)
{
  result = FlatBufferBuilder.endTable(at:)(at);
  *a2 = result;
  return result;
}

uint64_t static WK2_WeatherCollection.createWeatherCollection(_:elementsVectorOffset:)@<X0>(uint64_t *a1@<X0>, int *a2@<X1>, _DWORD *a3@<X8>)
{
  v5 = *a2;
  v6 = static WK2_WeatherCollection.startWeatherCollection(_:)(a1);
  v8 = v5;
  static WK2_WeatherCollection.addVectorOf(elements:_:)(&v8, a1);
  result = FlatBufferBuilder.endTable(at:)(v6);
  *a3 = result;
  return result;
}

void static WK2_WeatherCollection.verify<A>(_:at:of:)(int a1, unint64_t position)
{
  Verifier.visitTable(at:)(position, __src);
  if (v2)
  {
    return;
  }

  if (__src[2] < 5)
  {
    goto LABEL_12;
  }

  v3 = __src[1] + 4;
  v4 = LOBYTE(__src[3]);
  if (LOBYTE(__src[3]) == 1 && ((*(__src[8] + 24) + v3) & 1) != 0)
  {
    *v56 = MEMORY[0x277D84C58];
    v10 = &qword_2808A3160;
    v11 = &unk_272B87CC0;
    goto LABEL_14;
  }

  Verifier.rangeInBuffer(position:size:)(__src[1] + 4, 2);
  if (v5)
  {
    goto LABEL_17;
  }

  v6 = __src[8];
  v7 = *(__src[8] + 24);
  v8 = *(v7 + v3);
  if (!*(v7 + v3))
  {
LABEL_12:
    sub_272B5C86C();
    v12 = OUTLINED_FUNCTION_177();
    *v13 = 4;
    v14 = v58;
    *(v13 + 6) = v59;
    *(v13 + 2) = v14;
    *(v13 + 8) = 0x73746E656D656C65;
    *(v13 + 16) = 0xE800000000000000;
    OUTLINED_FUNCTION_17(v12, v13, v15, v16, v17, v18, v19, v20, *v56, v21, *&v56[16]);
    *(v22 + 64) = 3;
    goto LABEL_16;
  }

  v3 = __src[0] + v8;
  if (((v7 + LOBYTE(__src[0]) + v8) & 3) != 0)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0;
  }

  if (v9 == 1)
  {
    *v56 = MEMORY[0x277D84CC0];
    v10 = &qword_2808A3170;
    v11 = &unk_272B89910;
LABEL_14:
    __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
    v23 = sub_272B87730();
    v25 = v24;
    sub_272B5C86C();
    v26 = OUTLINED_FUNCTION_177();
    *v27 = v3;
    v27[1] = v23;
    v27[2] = v25;
    goto LABEL_15;
  }

  Verifier.rangeInBuffer(position:size:)(__src[0] + v8, 4);
  if (v36)
  {
    goto LABEL_17;
  }

  v37 = v3 + *(*(v6 + 24) + v3);
  if (v37 < 0)
  {
    v37 = -v37;
  }

  if (v37 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    v38 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v38 = v37;
  }

  v39 = sub_272B6EC90(&__src[3], v38);
  v41 = v39 + v40;
  if (v39 < v39 + v40)
  {
    do
    {
      v42 = v39 + 4;
      if (__OFADD__(v39, 4))
      {
        v43 = 0x7FFFFFFFFFFFFFFFLL;
        if ((__src[3] & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v43 = v39 + 4;
        if (!LOBYTE(__src[3]))
        {
          goto LABEL_32;
        }
      }

      if (((*(__src[8] + 24) + v39) & 3) != 0)
      {
        *v56 = MEMORY[0x277D84CC0];
        v52 = v39;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3170, &unk_272B89910);
        v53 = sub_272B87730();
        v55 = v54;
        sub_272B5C86C();
        v26 = OUTLINED_FUNCTION_177();
        *v27 = v52;
        v27[1] = v53;
        v27[2] = v55;
LABEL_15:
        OUTLINED_FUNCTION_17(v26, v27, v28, v29, v30, v31, v32, v33, *v56, v34, *&v56[16]);
        *(v35 + 64) = 0;
LABEL_16:
        swift_willThrow();
LABEL_17:
        memcpy(v56, __src, sizeof(v56));
        sub_272B522C4(v56);
        return;
      }

LABEL_32:
      if ((v42 & 0x8000000000000000) != 0)
      {
        v42 = -v42;
      }

      v44 = *(__src[8] + 32);
      if ((v44 & 0x8000000000000000) != 0 || v44 < v42)
      {
        v47 = __src[4];
        sub_272B5C86C();
        OUTLINED_FUNCTION_177();
        *v48 = v42;
        *(v48 + 8) = v47;
        v50 = *&v56[16];
        v49 = *&v56[32];
        *(v48 + 16) = *v56;
        *(v48 + 32) = v50;
        *(v48 + 48) = v49;
        v51 = 1;
LABEL_47:
        *(v48 + 64) = v51;
        goto LABEL_16;
      }

      LODWORD(__src[5]) += 4;
      if (LODWORD(__src[11]) < LODWORD(__src[5]))
      {
        sub_272B5C86C();
        OUTLINED_FUNCTION_177();
        *v48 = 6;
        *(v48 + 8) = 0u;
        *(v48 + 24) = 0u;
        *(v48 + 40) = 0u;
        *(v48 + 56) = 0;
        v51 = 7;
        goto LABEL_47;
      }

      v45 = v39 + *(*(__src[8] + 24) + v39);
      if (v45 < 0)
      {
        v45 = -v45;
      }

      if (v45 >= 0x7FFFFFFFFFFFFFFFLL)
      {
        v46 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v46 = v45;
      }

      sub_272B80000(&__src[3], v46);
      v39 = v43;
    }

    while (v43 < v41);
  }

  if (!__OFSUB__(__src[7], 1))
  {
    --__src[7];
    goto LABEL_17;
  }

  __break(1u);
}

uint64_t sub_272B80BEC()
{
  sub_272B879F0();
  sub_272B87A00();
  return sub_272B87A10();
}

uint64_t sub_272B80C30()
{
  sub_272B879F0();
  sub_272B87A00();
  return sub_272B87A10();
}

uint64_t sub_272B80C78()
{
  sub_272B879F0();
  sub_272B87A00();
  return sub_272B87A10();
}

uint64_t sub_272B80CE8()
{
  sub_272B879F0();
  sub_272B87A00();
  return sub_272B87A10();
}

uint64_t sub_272B80D28()
{
  sub_272B879F0();
  sub_272B87A00();
  return sub_272B87A10();
}

uint64_t sub_272B80D6C()
{
  sub_272B879F0();
  sub_272B87A00();
  return sub_272B87A10();
}

uint64_t WK2_WeatherAlertSummary.init(_:o:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

uint64_t WK2_WeatherAlertSummary.id.getter@<X0>(uint64_t a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 24);
  v4 = *(*v1 + 24);
  v5 = *(v4 + v3);
  v6 = __OFSUB__(v3, v5);
  v7 = v3 - v5;
  if (v6)
  {
    __break(1u);
    goto LABEL_10;
  }

  v8 = *(v1 + 8);
  if (*(v4 + v7) < 5u)
  {
    v10 = 0;
LABEL_6:
    v6 = __OFADD__(v10, v3);
    v11 = v10 + v3;
    if (!v6)
    {
      v12 = *(v4 + v11);
      v6 = __OFADD__(v11, v12);
      v13 = v11 + v12;
      if (!v6)
      {
        *a1 = result;
        *(a1 + 8) = v8;
        *(a1 + 24) = v13;
      }

      goto LABEL_11;
    }

LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = __OFADD__(v7, 4);
  v9 = v7 + 4;
  if (!v6)
  {
    v10 = *(v4 + v9);
    goto LABEL_6;
  }

LABEL_12:
  __break(1u);
  return result;
}

void WK2_WeatherAlertSummary.attributionUrl.getter()
{
  OUTLINED_FUNCTION_65();
  if (v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v2 + v3) < 0xBu)
  {
    goto LABEL_7;
  }

  v4 = __OFADD__(v3, 10);
  v5 = v3 + 10;
  if (v4)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v6 = *(v2 + v5);
  if (v6)
  {
    if (!__OFADD__(v6, v1))
    {
      v7 = *(v0 + 8);
      v8 = *(v0 + 16);
      Table.directString(at:)(v6 + v1);
      return;
    }

    goto LABEL_11;
  }

LABEL_7:
  OUTLINED_FUNCTION_169();
}

void WK2_WeatherAlertSummary.countryCode.getter()
{
  OUTLINED_FUNCTION_65();
  if (v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v2 + v3) < 0xDu)
  {
    goto LABEL_7;
  }

  v4 = __OFADD__(v3, 12);
  v5 = v3 + 12;
  if (v4)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v6 = *(v2 + v5);
  if (v6)
  {
    if (!__OFADD__(v6, v1))
    {
      v7 = *(v0 + 8);
      v8 = *(v0 + 16);
      Table.directString(at:)(v6 + v1);
      return;
    }

    goto LABEL_11;
  }

LABEL_7:
  OUTLINED_FUNCTION_169();
}

void WK2_WeatherAlertSummary.description.getter()
{
  OUTLINED_FUNCTION_65();
  if (v4)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = *(v0 + 8);
  v6 = *(v0 + 16);
  if (*(v2 + v3) < 0xFu)
  {
    v8 = 0;
LABEL_6:
    if (!__OFADD__(v8, v1))
    {
      Table.directString(at:)(v8 + v1);
      return;
    }

    goto LABEL_9;
  }

  v4 = __OFADD__(v3, 14);
  v7 = v3 + 14;
  if (!v4)
  {
    v8 = *(v2 + v7);
    goto LABEL_6;
  }

LABEL_10:
  __break(1u);
}

void WK2_WeatherAlertSummary.token.getter()
{
  OUTLINED_FUNCTION_65();
  if (v4)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = *(v0 + 8);
  v6 = *(v0 + 16);
  if (*(v2 + v3) < 0x11u)
  {
    v8 = 0;
LABEL_6:
    if (!__OFADD__(v8, v1))
    {
      Table.directString(at:)(v8 + v1);
      return;
    }

    goto LABEL_9;
  }

  v4 = __OFADD__(v3, 16);
  v7 = v3 + 16;
  if (!v4)
  {
    v8 = *(v2 + v7);
    goto LABEL_6;
  }

LABEL_10:
  __break(1u);
}

void WK2_WeatherAlertSummary.effectiveTime.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
  }

  else
  {
    if (*(v0 + v2) < 0x13u)
    {
      goto LABEL_7;
    }

    v3 = __OFADD__(v2, 18);
    v4 = v2 + 18;
    if (!v3)
    {
      v5 = *(v0 + v4);
      if (v5)
      {
        if (!__OFADD__(v5, v1))
        {
          OUTLINED_FUNCTION_112(v0);
          return;
        }

        goto LABEL_10;
      }

LABEL_7:
      OUTLINED_FUNCTION_32_0();
      return;
    }
  }

  __break(1u);
LABEL_10:
  __break(1u);
}

void WK2_WeatherAlertSummary.expireTime.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
  }

  else
  {
    if (*(v0 + v2) < 0x15u)
    {
      goto LABEL_7;
    }

    v3 = __OFADD__(v2, 20);
    v4 = v2 + 20;
    if (!v3)
    {
      v5 = *(v0 + v4);
      if (v5)
      {
        if (!__OFADD__(v5, v1))
        {
          OUTLINED_FUNCTION_112(v0);
          return;
        }

        goto LABEL_10;
      }

LABEL_7:
      OUTLINED_FUNCTION_32_0();
      return;
    }
  }

  __break(1u);
LABEL_10:
  __break(1u);
}

void WK2_WeatherAlertSummary.issuedTime.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
  }

  else
  {
    if (*(v0 + v2) < 0x17u)
    {
      goto LABEL_7;
    }

    v3 = __OFADD__(v2, 22);
    v4 = v2 + 22;
    if (!v3)
    {
      v5 = *(v0 + v4);
      if (v5)
      {
        if (!__OFADD__(v5, v1))
        {
          OUTLINED_FUNCTION_112(v0);
          return;
        }

        goto LABEL_10;
      }

LABEL_7:
      OUTLINED_FUNCTION_32_0();
      return;
    }
  }

  __break(1u);
LABEL_10:
  __break(1u);
}

void WK2_WeatherAlertSummary.eventOnsetTime.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 0x19u)
  {
    goto LABEL_7;
  }

  v3 = __OFADD__(v2, 24);
  v4 = v2 + 24;
  if (v3)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v5 = *(v0 + v4);
  if (v5)
  {
    v3 = __OFADD__(v5, v1);
    v6 = v5 + v1;
    if (!v3)
    {
      OUTLINED_FUNCTION_16(*(v0 + v6));
      return;
    }

    goto LABEL_11;
  }

LABEL_7:
  OUTLINED_FUNCTION_16(0);
}

void WK2_WeatherAlertSummary.eventEndTime.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 0x1Bu)
  {
    goto LABEL_7;
  }

  v3 = __OFADD__(v2, 26);
  v4 = v2 + 26;
  if (v3)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v5 = *(v0 + v4);
  if (v5)
  {
    v3 = __OFADD__(v5, v1);
    v6 = v5 + v1;
    if (!v3)
    {
      OUTLINED_FUNCTION_16(*(v0 + v6));
      return;
    }

    goto LABEL_11;
  }

LABEL_7:
  OUTLINED_FUNCTION_16(0);
}

void WK2_WeatherAlertSummary.detailsUrl.getter()
{
  OUTLINED_FUNCTION_65();
  if (v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v2 + v3) < 0x1Du)
  {
    goto LABEL_7;
  }

  v4 = __OFADD__(v3, 28);
  v5 = v3 + 28;
  if (v4)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v6 = *(v2 + v5);
  if (v6)
  {
    if (!__OFADD__(v6, v1))
    {
      v7 = *(v0 + 8);
      v8 = *(v0 + 16);
      Table.directString(at:)(v6 + v1);
      return;
    }

    goto LABEL_11;
  }

LABEL_7:
  OUTLINED_FUNCTION_169();
}

void WK2_WeatherAlertSummary.phenomenon.getter()
{
  OUTLINED_FUNCTION_65();
  if (v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v2 + v3) < 0x1Fu)
  {
    goto LABEL_7;
  }

  v4 = __OFADD__(v3, 30);
  v5 = v3 + 30;
  if (v4)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v6 = *(v2 + v5);
  if (v6)
  {
    if (!__OFADD__(v6, v1))
    {
      v7 = *(v0 + 8);
      v8 = *(v0 + 16);
      Table.directString(at:)(v6 + v1);
      return;
    }

    goto LABEL_11;
  }

LABEL_7:
  OUTLINED_FUNCTION_169();
}

void WK2_WeatherAlertSummary.severity.getter()
{
  OUTLINED_FUNCTION_194();
  if (v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*(v1 + v3) < 0x21u)
  {
LABEL_7:
    OUTLINED_FUNCTION_89(v0);
    return;
  }

  v4 = __OFADD__(v3, 32);
  v5 = v3 + 32;
  if (v4)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = *(v1 + v5);
  if (!v6)
  {
    goto LABEL_7;
  }

  v4 = __OFADD__(v6, v2);
  v7 = v6 + v2;
  if (!v4)
  {
    *(v1 + v7);
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
}

void WK2_WeatherAlertSummary.significance.getter(_BYTE *a1@<X8>)
{
  OUTLINED_FUNCTION_103();
  if (v5)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (*(v2 + v4) < 0x23u)
  {
LABEL_9:
    v9 = 0;
LABEL_10:
    *a1 = v9;
    return;
  }

  v5 = __OFADD__(v4, 34);
  v6 = v4 + 34;
  if (v5)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = *(v2 + v6);
  if (!v7)
  {
    goto LABEL_9;
  }

  v5 = __OFADD__(v7, v3);
  v8 = v7 + v3;
  if (!v5)
  {
    WK2_AlertSignificance.init(rawValue:)(*(v2 + v8));
    v9 = v10;
    if (v10 == 13)
    {
      v9 = 0;
    }

    goto LABEL_10;
  }

LABEL_13:
  __break(1u);
}

void WK2_WeatherAlertSummary.source.getter()
{
  OUTLINED_FUNCTION_65();
  if (v4)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = *(v0 + 8);
  v6 = *(v0 + 16);
  if (*(v2 + v3) < 0x25u)
  {
    v8 = 0;
LABEL_6:
    if (!__OFADD__(v8, v1))
    {
      Table.directString(at:)(v8 + v1);
      return;
    }

    goto LABEL_9;
  }

  v4 = __OFADD__(v3, 36);
  v7 = v3 + 36;
  if (!v4)
  {
    v8 = *(v2 + v7);
    goto LABEL_6;
  }

LABEL_10:
  __break(1u);
}

void WK2_WeatherAlertSummary.eventSource.getter()
{
  OUTLINED_FUNCTION_65();
  if (v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v2 + v3) < 0x27u)
  {
    goto LABEL_7;
  }

  v4 = __OFADD__(v3, 38);
  v5 = v3 + 38;
  if (v4)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v6 = *(v2 + v5);
  if (v6)
  {
    if (!__OFADD__(v6, v1))
    {
      v7 = *(v0 + 8);
      v8 = *(v0 + 16);
      Table.directString(at:)(v6 + v1);
      return;
    }

    goto LABEL_11;
  }

LABEL_7:
  OUTLINED_FUNCTION_169();
}

void WK2_WeatherAlertSummary.urgency.getter()
{
  OUTLINED_FUNCTION_194();
  if (v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*(v1 + v3) < 0x29u)
  {
LABEL_7:
    OUTLINED_FUNCTION_89(v0);
    return;
  }

  v4 = __OFADD__(v3, 40);
  v5 = v3 + 40;
  if (v4)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = *(v1 + v5);
  if (!v6)
  {
    goto LABEL_7;
  }

  v4 = __OFADD__(v6, v2);
  v7 = v6 + v2;
  if (!v4)
  {
    *(v1 + v7);
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
}

void WK2_WeatherAlertSummary.certainty.getter()
{
  OUTLINED_FUNCTION_194();
  if (v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*(v1 + v3) < 0x2Bu)
  {
LABEL_7:
    OUTLINED_FUNCTION_89(v0);
    return;
  }

  v4 = __OFADD__(v3, 42);
  v5 = v3 + 42;
  if (v4)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = *(v1 + v5);
  if (!v6)
  {
    goto LABEL_7;
  }

  v4 = __OFADD__(v6, v2);
  v7 = v6 + v2;
  if (!v4)
  {
    *(v1 + v7);
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
}

void WK2_WeatherAlertSummary.importance.getter()
{
  OUTLINED_FUNCTION_194();
  if (v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*(v1 + v3) < 0x2Du)
  {
LABEL_7:
    OUTLINED_FUNCTION_89(v0);
    return;
  }

  v4 = __OFADD__(v3, 44);
  v5 = v3 + 44;
  if (v4)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = *(v1 + v5);
  if (!v6)
  {
    goto LABEL_7;
  }

  v4 = __OFADD__(v6, v2);
  v7 = v6 + v2;
  if (!v4)
  {
    v8 = *(v1 + v7) == 1;
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
}

uint64_t WK2_WeatherAlertSummary.hasResponses.getter()
{
  v1 = v0[6];
  v2 = *(*v0 + 24);
  v3 = *(v2 + v1);
  v4 = __OFSUB__(v1, v3);
  v5 = v1 - v3;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    if (*(v2 + v5) < 0x2Fu)
    {
      return OUTLINED_FUNCTION_32_0();
    }

    v4 = __OFADD__(v5, 46);
    v6 = v5 + 46;
    if (!v4)
    {
      return *(v2 + v6) != 0;
    }
  }

  __break(1u);
  return result;
}

void WK2_WeatherAlertSummary.responsesCount.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 0x2Fu)
  {
LABEL_8:
    OUTLINED_FUNCTION_32_0();
    return;
  }

  v3 = __OFADD__(v2, 46);
  v4 = v2 + 46;
  if (v3)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = *(v0 + v4);
  if (!v5)
  {
    goto LABEL_8;
  }

  v3 = __OFADD__(v5, v1);
  v6 = v5 + v1;
  if (!v3)
  {
    if (!__OFADD__(v6, *(v0 + v6)))
    {
      OUTLINED_FUNCTION_112(v0);
      return;
    }

    goto LABEL_12;
  }

LABEL_11:
  __break(1u);
LABEL_12:
  __break(1u);
}

WeatherData::WK2_AlertResponseType_optional __swiftcall WK2_WeatherAlertSummary.responses(at:)(Swift::Int32 at)
{
  v2 = v1;
  OUTLINED_FUNCTION_103();
  if (v7)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (*(v4 + v6) < 0x2Fu)
  {
LABEL_10:
    v15 = 0;
    goto LABEL_11;
  }

  v7 = __OFADD__(v6, 46);
  v8 = v6 + 46;
  if (v7)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = *(v4 + v8);
  if (!v9)
  {
    goto LABEL_10;
  }

  v7 = __OFADD__(v9, v5);
  v10 = v9 + v5;
  if (v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v11 = *(v4 + v10);
  v7 = __OFADD__(v10, v11);
  v12 = v10 + v11;
  if (v7)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = __OFADD__(v12, 4);
  v13 = v12 + 4;
  if (v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = __OFADD__(v13, v3);
  v14 = v13 + v3;
  if (v7)
  {
LABEL_17:
    __break(1u);
    return v3;
  }

  LOBYTE(v3) = WK2_AlertResponseType.init(rawValue:)(*(v4 + v14));
  v15 = v17;
LABEL_11:
  *v2 = v15;
  return v3;
}

void WK2_WeatherAlertSummary.area.getter()
{
  OUTLINED_FUNCTION_65();
  if (v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v2 + v3) < 0x31u)
  {
    goto LABEL_7;
  }

  v4 = __OFADD__(v3, 48);
  v5 = v3 + 48;
  if (v4)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v6 = *(v2 + v5);
  if (v6)
  {
    if (!__OFADD__(v6, v1))
    {
      v7 = *(v0 + 8);
      v8 = *(v0 + 16);
      Table.directString(at:)(v6 + v1);
      return;
    }

    goto LABEL_11;
  }

LABEL_7:
  OUTLINED_FUNCTION_169();
}

uint64_t WK2_WeatherAlertSummary.hasEventTexts.getter()
{
  v1 = v0[6];
  v2 = *(*v0 + 24);
  v3 = *(v2 + v1);
  v4 = __OFSUB__(v1, v3);
  v5 = v1 - v3;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    if (*(v2 + v5) < 0x33u)
    {
      return OUTLINED_FUNCTION_32_0();
    }

    v4 = __OFADD__(v5, 50);
    v6 = v5 + 50;
    if (!v4)
    {
      return *(v2 + v6) != 0;
    }
  }

  __break(1u);
  return result;
}

void WK2_WeatherAlertSummary.eventTextsCount.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 0x33u)
  {
LABEL_8:
    OUTLINED_FUNCTION_32_0();
    return;
  }

  v3 = __OFADD__(v2, 50);
  v4 = v2 + 50;
  if (v3)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = *(v0 + v4);
  if (!v5)
  {
    goto LABEL_8;
  }

  v3 = __OFADD__(v5, v1);
  v6 = v5 + v1;
  if (!v3)
  {
    if (!__OFADD__(v6, *(v0 + v6)))
    {
      OUTLINED_FUNCTION_112(v0);
      return;
    }

    goto LABEL_12;
  }

LABEL_11:
  __break(1u);
LABEL_12:
  __break(1u);
}

uint64_t WK2_WeatherAlertSummary.eventTexts(at:)@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  result = *v2;
  v6 = *(v2 + 24);
  v7 = *(*v2 + 24);
  v8 = *(v7 + v6);
  v9 = __OFSUB__(v6, v8);
  v10 = v6 - v8;
  if (v9)
  {
    __break(1u);
    goto LABEL_15;
  }

  v11 = 0uLL;
  if (*(v7 + v10) < 0x33u)
  {
LABEL_12:
    result = 0;
    v20 = 0;
    goto LABEL_13;
  }

  v9 = __OFADD__(v10, 50);
  v12 = v10 + 50;
  if (v9)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v13 = *(v7 + v12);
  if (!v13)
  {
    goto LABEL_12;
  }

  v9 = __OFADD__(v13, v6);
  v14 = v13 + v6;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v15 = *(v7 + v14);
  v9 = __OFADD__(v14, v15);
  v16 = v14 + v15;
  if (v9)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = __OFADD__(v16, 4);
  v17 = v16 + 4;
  if (v9)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if ((a1 - 0x20000000) >> 30 != 3)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v9 = __OFADD__(v17, 4 * a1);
  v18 = v17 + 4 * a1;
  if (v9)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v19 = *(v7 + v18);
  v20 = v18 + v19;
  if (!__OFADD__(v18, v19))
  {
    v21 = *(v2 + 8);

    v11 = v21;
LABEL_13:
    *a2 = result;
    *(a2 + 8) = v11;
    *(a2 + 24) = v20;
    return result;
  }

LABEL_21:
  __break(1u);
  return result;
}

unint64_t static WK2_WeatherAlertSummary.startWeatherAlertSummary(_:)(_BYTE *a1)
{
  result = OUTLINED_FUNCTION_25(a1);
  if (*(v2 + 56) < v4 + 192)
  {
    if (*(v2 + 48))
    {
LABEL_11:
      __break(1u);
      return result;
    }

    v5 = *(v2 + 32);
    if (v5)
    {
      MEMORY[0x2743D4FD0](v5, -1, -1);
    }

    v6 = swift_slowAlloc();
    *(v2 + 32) = v6;
    *(v2 + 40) = v6 + 192;
    *(v2 + 48) = 0;
    *(v2 + 56) = 192;
  }

  result = *(v1 + 16);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (HIDWORD(result))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  return result;
}

void static WK2_WeatherAlertSummary.add(id:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  sub_272B83D34();
}

void static WK2_WeatherAlertSummary.add(areaId:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  sub_272B83E48();
}

void static WK2_WeatherAlertSummary.add(areaName:_:)()
{
  OUTLINED_FUNCTION_219();
  v3 = *MEMORY[0x277D85DE8];
  v5 = OUTLINED_FUNCTION_120(v4);
  if (!v2)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_58(v5, v6);
  if (v8 != v9)
  {
    OUTLINED_FUNCTION_38();
  }

  v10 = *(v0 + 16);
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (HIDWORD(v10))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v11 = OUTLINED_FUNCTION_3(v7, v10);
  if (v8 != v9)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v11, v12, *(v0 + 24));
  }

  OUTLINED_FUNCTION_119();
  if (v13)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_118();
  if (v14)
  {
    OUTLINED_FUNCTION_79();
    if (!v14)
    {
LABEL_28:
      v23 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  v15 = OUTLINED_FUNCTION_15();
  if (v8 != v9)
  {
    OUTLINED_FUNCTION_186(v15);
  }

  OUTLINED_FUNCTION_27();
  if (v8 != v9)
  {
    OUTLINED_FUNCTION_9();
    v16 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_4(v16);
  if (!v14 & v17)
  {
LABEL_32:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v19 & 1) == 0)
  {
    if (*(v18 + 32))
    {
      OUTLINED_FUNCTION_57(v18);
      *(v20 + 4) = 8;
    }

    OUTLINED_FUNCTION_33(v18, *(v18 + 72), xmmword_272B87CB0);
    if (v22 <= 8)
    {
      LOWORD(v22) = 8;
    }

    *(v21 + 64) = v22;
    goto LABEL_28;
  }

  __break(1u);
}

void static WK2_WeatherAlertSummary.add(attributionUrl:_:)()
{
  OUTLINED_FUNCTION_219();
  v3 = *MEMORY[0x277D85DE8];
  v5 = OUTLINED_FUNCTION_120(v4);
  if (!v2)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_58(v5, v6);
  if (v8 != v9)
  {
    OUTLINED_FUNCTION_38();
  }

  v10 = *(v0 + 16);
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (HIDWORD(v10))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v11 = OUTLINED_FUNCTION_3(v7, v10);
  if (v8 != v9)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v11, v12, *(v0 + 24));
  }

  OUTLINED_FUNCTION_119();
  if (v13)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_118();
  if (v14)
  {
    OUTLINED_FUNCTION_79();
    if (!v14)
    {
LABEL_28:
      v23 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  v15 = OUTLINED_FUNCTION_15();
  if (v8 != v9)
  {
    OUTLINED_FUNCTION_186(v15);
  }

  OUTLINED_FUNCTION_27();
  if (v8 != v9)
  {
    OUTLINED_FUNCTION_9();
    v16 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_4(v16);
  if (!v14 & v17)
  {
LABEL_32:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v19 & 1) == 0)
  {
    if (*(v18 + 32))
    {
      OUTLINED_FUNCTION_57(v18);
      *(v20 + 4) = 10;
    }

    OUTLINED_FUNCTION_33(v18, *(v18 + 72), xmmword_272B87CB0);
    if (v22 <= 0xA)
    {
      LOWORD(v22) = 10;
    }

    *(v21 + 64) = v22;
    goto LABEL_28;
  }

  __break(1u);
}

void static WK2_WeatherAlertSummary.add(countryCode:_:)()
{
  OUTLINED_FUNCTION_219();
  v3 = *MEMORY[0x277D85DE8];
  v5 = OUTLINED_FUNCTION_120(v4);
  if (!v2)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_58(v5, v6);
  if (v8 != v9)
  {
    OUTLINED_FUNCTION_38();
  }

  v10 = *(v0 + 16);
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (HIDWORD(v10))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v11 = OUTLINED_FUNCTION_3(v7, v10);
  if (v8 != v9)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v11, v12, *(v0 + 24));
  }

  OUTLINED_FUNCTION_119();
  if (v13)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_118();
  if (v14)
  {
    OUTLINED_FUNCTION_79();
    if (!v14)
    {
LABEL_28:
      v23 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  v15 = OUTLINED_FUNCTION_15();
  if (v8 != v9)
  {
    OUTLINED_FUNCTION_186(v15);
  }

  OUTLINED_FUNCTION_27();
  if (v8 != v9)
  {
    OUTLINED_FUNCTION_9();
    v16 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_4(v16);
  if (!v14 & v17)
  {
LABEL_32:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v19 & 1) == 0)
  {
    if (*(v18 + 32))
    {
      OUTLINED_FUNCTION_57(v18);
      *(v20 + 4) = 12;
    }

    OUTLINED_FUNCTION_33(v18, *(v18 + 72), xmmword_272B87CB0);
    if (v22 <= 0xC)
    {
      LOWORD(v22) = 12;
    }

    *(v21 + 64) = v22;
    goto LABEL_28;
  }

  __break(1u);
}

void static WK2_WeatherAlertSummary.add(description:_:)()
{
  OUTLINED_FUNCTION_219();
  v3 = *MEMORY[0x277D85DE8];
  v5 = OUTLINED_FUNCTION_120(v4);
  if (!v2)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_58(v5, v6);
  if (v8 != v9)
  {
    OUTLINED_FUNCTION_38();
  }

  v10 = *(v0 + 16);
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (HIDWORD(v10))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v11 = OUTLINED_FUNCTION_3(v7, v10);
  if (v8 != v9)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v11, v12, *(v0 + 24));
  }

  OUTLINED_FUNCTION_119();
  if (v13)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_118();
  if (v14)
  {
    OUTLINED_FUNCTION_79();
    if (!v14)
    {
LABEL_28:
      v23 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  v15 = OUTLINED_FUNCTION_15();
  if (v8 != v9)
  {
    OUTLINED_FUNCTION_186(v15);
  }

  OUTLINED_FUNCTION_27();
  if (v8 != v9)
  {
    OUTLINED_FUNCTION_9();
    v16 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_4(v16);
  if (!v14 & v17)
  {
LABEL_32:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v19 & 1) == 0)
  {
    if (*(v18 + 32))
    {
      OUTLINED_FUNCTION_57(v18);
      *(v20 + 4) = 14;
    }

    OUTLINED_FUNCTION_33(v18, *(v18 + 72), xmmword_272B87CB0);
    if (v22 <= 0xE)
    {
      LOWORD(v22) = 14;
    }

    *(v21 + 64) = v22;
    goto LABEL_28;
  }

  __break(1u);
}

void static WK2_WeatherAlertSummary.add(token:_:)()
{
  OUTLINED_FUNCTION_219();
  v3 = *MEMORY[0x277D85DE8];
  v5 = OUTLINED_FUNCTION_120(v4);
  if (!v2)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_58(v5, v6);
  if (v8 != v9)
  {
    OUTLINED_FUNCTION_38();
  }

  v10 = *(v0 + 16);
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (HIDWORD(v10))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v11 = OUTLINED_FUNCTION_3(v7, v10);
  if (v8 != v9)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v11, v12, *(v0 + 24));
  }

  OUTLINED_FUNCTION_119();
  if (v13)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_118();
  if (v14)
  {
    OUTLINED_FUNCTION_79();
    if (!v14)
    {
LABEL_28:
      v23 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  v15 = OUTLINED_FUNCTION_15();
  if (v8 != v9)
  {
    OUTLINED_FUNCTION_186(v15);
  }

  OUTLINED_FUNCTION_27();
  if (v8 != v9)
  {
    OUTLINED_FUNCTION_9();
    v16 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_4(v16);
  if (!v14 & v17)
  {
LABEL_32:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v19 & 1) == 0)
  {
    if (*(v18 + 32))
    {
      OUTLINED_FUNCTION_57(v18);
      *(v20 + 4) = 16;
    }

    OUTLINED_FUNCTION_33(v18, *(v18 + 72), xmmword_272B87CB0);
    if (v22 <= 0x10)
    {
      LOWORD(v22) = 16;
    }

    *(v21 + 64) = v22;
    goto LABEL_28;
  }

  __break(1u);
}

void static WK2_WeatherAlertSummary.add(effectiveTime:_:)()
{
  OUTLINED_FUNCTION_219();
  v4 = v3;
  v5 = v2;
  v21 = *MEMORY[0x277D85DE8];
  if (!v2)
  {
    OUTLINED_FUNCTION_79();
    if (!v6)
    {
LABEL_21:
      v20 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  if (v4[8] <= 3)
  {
    OUTLINED_FUNCTION_38();
  }

  v7 = v4[2];
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (HIDWORD(v7))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v8 = OUTLINED_FUNCTION_6(v2, v7);
  if (v10 != v11)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v8, v9, v4[3]);
  }

  OUTLINED_FUNCTION_26();
  if (v10 != v11)
  {
    OUTLINED_FUNCTION_9();
    v12 = *(v0 + 32);
  }

  OUTLINED_FUNCTION_43(v12);
  *(v13 - 4) = v5;
  v4[2] = v1;
  OUTLINED_FUNCTION_24_1();
  if (!v6 & v14)
  {
LABEL_24:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v16 & 1) == 0)
  {
    if (*(v15 + 32))
    {
      OUTLINED_FUNCTION_41(v15);
      *(v17 + 4) = 18;
    }

    OUTLINED_FUNCTION_33(v15, *(v15 + 72), xmmword_272B87CB0);
    if (v19 <= 0x12)
    {
      LOWORD(v19) = 18;
    }

    *(v18 + 64) = v19;
    goto LABEL_21;
  }

  __break(1u);
}

void static WK2_WeatherAlertSummary.add(expireTime:_:)()
{
  OUTLINED_FUNCTION_219();
  v4 = v3;
  v5 = v2;
  v21 = *MEMORY[0x277D85DE8];
  if (!v2)
  {
    OUTLINED_FUNCTION_79();
    if (!v6)
    {
LABEL_21:
      v20 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  if (v4[8] <= 3)
  {
    OUTLINED_FUNCTION_38();
  }

  v7 = v4[2];
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (HIDWORD(v7))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v8 = OUTLINED_FUNCTION_6(v2, v7);
  if (v10 != v11)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v8, v9, v4[3]);
  }

  OUTLINED_FUNCTION_26();
  if (v10 != v11)
  {
    OUTLINED_FUNCTION_9();
    v12 = *(v0 + 32);
  }

  OUTLINED_FUNCTION_43(v12);
  *(v13 - 4) = v5;
  v4[2] = v1;
  OUTLINED_FUNCTION_24_1();
  if (!v6 & v14)
  {
LABEL_24:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v16 & 1) == 0)
  {
    if (*(v15 + 32))
    {
      OUTLINED_FUNCTION_41(v15);
      *(v17 + 4) = 20;
    }

    OUTLINED_FUNCTION_33(v15, *(v15 + 72), xmmword_272B87CB0);
    if (v19 <= 0x14)
    {
      LOWORD(v19) = 20;
    }

    *(v18 + 64) = v19;
    goto LABEL_21;
  }

  __break(1u);
}

void static WK2_WeatherAlertSummary.add(issuedTime:_:)()
{
  OUTLINED_FUNCTION_219();
  v4 = v3;
  v5 = v2;
  v21 = *MEMORY[0x277D85DE8];
  if (!v2)
  {
    OUTLINED_FUNCTION_79();
    if (!v6)
    {
LABEL_21:
      v20 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  if (v4[8] <= 3)
  {
    OUTLINED_FUNCTION_38();
  }

  v7 = v4[2];
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (HIDWORD(v7))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v8 = OUTLINED_FUNCTION_6(v2, v7);
  if (v10 != v11)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v8, v9, v4[3]);
  }

  OUTLINED_FUNCTION_26();
  if (v10 != v11)
  {
    OUTLINED_FUNCTION_9();
    v12 = *(v0 + 32);
  }

  OUTLINED_FUNCTION_43(v12);
  *(v13 - 4) = v5;
  v4[2] = v1;
  OUTLINED_FUNCTION_24_1();
  if (!v6 & v14)
  {
LABEL_24:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v16 & 1) == 0)
  {
    if (*(v15 + 32))
    {
      OUTLINED_FUNCTION_41(v15);
      *(v17 + 4) = 22;
    }

    OUTLINED_FUNCTION_33(v15, *(v15 + 72), xmmword_272B87CB0);
    if (v19 <= 0x16)
    {
      LOWORD(v19) = 22;
    }

    *(v18 + 64) = v19;
    goto LABEL_21;
  }

  __break(1u);
}

void static WK2_WeatherAlertSummary.add(eventOnsetTime:_:)()
{
  OUTLINED_FUNCTION_219();
  v22 = *MEMORY[0x277D85DE8];
  if ((v4 & 0x100000000) != 0)
  {
LABEL_20:
    v21 = *MEMORY[0x277D85DE8];
    OUTLINED_FUNCTION_218();
    return;
  }

  OUTLINED_FUNCTION_30(v4, v5);
  if (v8 ^ v9 | v7)
  {
    OUTLINED_FUNCTION_38();
  }

  v10 = *(v0 + 16);
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (HIDWORD(v10))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v11 = OUTLINED_FUNCTION_6(v6, v10);
  if (v8 != v9)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v11, v12, *(v0 + 24));
  }

  OUTLINED_FUNCTION_26();
  if (v8 != v9)
  {
    OUTLINED_FUNCTION_9();
    v13 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_43(v13);
  *(v14 - 4) = v2;
  *(v0 + 16) = v3;
  OUTLINED_FUNCTION_24_1();
  if (!v7 & v15)
  {
LABEL_23:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v17 & 1) == 0)
  {
    if (*(v16 + 32))
    {
      OUTLINED_FUNCTION_41(v16);
      *(v18 + 4) = 24;
    }

    OUTLINED_FUNCTION_33(v16, *(v16 + 72), xmmword_272B87CB0);
    if (v20 <= 0x18)
    {
      LOWORD(v20) = 24;
    }

    *(v19 + 64) = v20;
    goto LABEL_20;
  }

  __break(1u);
}

void static WK2_WeatherAlertSummary.add(eventEndTime:_:)()
{
  OUTLINED_FUNCTION_219();
  v22 = *MEMORY[0x277D85DE8];
  if ((v4 & 0x100000000) != 0)
  {
LABEL_20:
    v21 = *MEMORY[0x277D85DE8];
    OUTLINED_FUNCTION_218();
    return;
  }

  OUTLINED_FUNCTION_30(v4, v5);
  if (v8 ^ v9 | v7)
  {
    OUTLINED_FUNCTION_38();
  }

  v10 = *(v0 + 16);
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (HIDWORD(v10))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v11 = OUTLINED_FUNCTION_6(v6, v10);
  if (v8 != v9)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v11, v12, *(v0 + 24));
  }

  OUTLINED_FUNCTION_26();
  if (v8 != v9)
  {
    OUTLINED_FUNCTION_9();
    v13 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_43(v13);
  *(v14 - 4) = v2;
  *(v0 + 16) = v3;
  OUTLINED_FUNCTION_24_1();
  if (!v7 & v15)
  {
LABEL_23:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v17 & 1) == 0)
  {
    if (*(v16 + 32))
    {
      OUTLINED_FUNCTION_41(v16);
      *(v18 + 4) = 26;
    }

    OUTLINED_FUNCTION_33(v16, *(v16 + 72), xmmword_272B87CB0);
    if (v20 <= 0x1A)
    {
      LOWORD(v20) = 26;
    }

    *(v19 + 64) = v20;
    goto LABEL_20;
  }

  __break(1u);
}

void static WK2_WeatherAlertSummary.add(detailsUrl:_:)()
{
  OUTLINED_FUNCTION_219();
  v3 = *MEMORY[0x277D85DE8];
  v5 = OUTLINED_FUNCTION_120(v4);
  if (!v2)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_58(v5, v6);
  if (v8 != v9)
  {
    OUTLINED_FUNCTION_38();
  }

  v10 = *(v0 + 16);
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (HIDWORD(v10))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v11 = OUTLINED_FUNCTION_3(v7, v10);
  if (v8 != v9)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v11, v12, *(v0 + 24));
  }

  OUTLINED_FUNCTION_119();
  if (v13)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_118();
  if (v14)
  {
    OUTLINED_FUNCTION_79();
    if (!v14)
    {
LABEL_28:
      v23 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  v15 = OUTLINED_FUNCTION_15();
  if (v8 != v9)
  {
    OUTLINED_FUNCTION_186(v15);
  }

  OUTLINED_FUNCTION_27();
  if (v8 != v9)
  {
    OUTLINED_FUNCTION_9();
    v16 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_4(v16);
  if (!v14 & v17)
  {
LABEL_32:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v19 & 1) == 0)
  {
    if (*(v18 + 32))
    {
      OUTLINED_FUNCTION_57(v18);
      *(v20 + 4) = 28;
    }

    OUTLINED_FUNCTION_33(v18, *(v18 + 72), xmmword_272B87CB0);
    if (v22 <= 0x1C)
    {
      LOWORD(v22) = 28;
    }

    *(v21 + 64) = v22;
    goto LABEL_28;
  }

  __break(1u);
}

void static WK2_WeatherAlertSummary.add(phenomenon:_:)()
{
  OUTLINED_FUNCTION_219();
  v3 = *MEMORY[0x277D85DE8];
  v5 = OUTLINED_FUNCTION_120(v4);
  if (!v2)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_58(v5, v6);
  if (v8 != v9)
  {
    OUTLINED_FUNCTION_38();
  }

  v10 = *(v0 + 16);
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (HIDWORD(v10))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v11 = OUTLINED_FUNCTION_3(v7, v10);
  if (v8 != v9)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v11, v12, *(v0 + 24));
  }

  OUTLINED_FUNCTION_119();
  if (v13)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_118();
  if (v14)
  {
    OUTLINED_FUNCTION_79();
    if (!v14)
    {
LABEL_28:
      v23 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  v15 = OUTLINED_FUNCTION_15();
  if (v8 != v9)
  {
    OUTLINED_FUNCTION_186(v15);
  }

  OUTLINED_FUNCTION_27();
  if (v8 != v9)
  {
    OUTLINED_FUNCTION_9();
    v16 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_4(v16);
  if (!v14 & v17)
  {
LABEL_32:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v19 & 1) == 0)
  {
    if (*(v18 + 32))
    {
      OUTLINED_FUNCTION_57(v18);
      *(v20 + 4) = 30;
    }

    OUTLINED_FUNCTION_33(v18, *(v18 + 72), xmmword_272B87CB0);
    if (v22 <= 0x1E)
    {
      LOWORD(v22) = 30;
    }

    *(v21 + 64) = v22;
    goto LABEL_28;
  }

  __break(1u);
}

void static WK2_WeatherAlertSummary.add(severity:_:)()
{
  OUTLINED_FUNCTION_219();
  v3 = v2;
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_140(v5);
  if (!v1)
  {
    OUTLINED_FUNCTION_79();
    if (!v6)
    {
LABEL_22:
      v16 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  OUTLINED_FUNCTION_100();
  if (v7 ^ v8 | v6)
  {
    OUTLINED_FUNCTION_78(1);
  }

  v9 = *(v3 + 16);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (HIDWORD(v9))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_39();
  if (v7 != v8)
  {
    OUTLINED_FUNCTION_39_1();
  }

  OUTLINED_FUNCTION_40();
  if (v7 ^ v8 | v6)
  {
    OUTLINED_FUNCTION_38_1();
    v10 = *(v0 + 32);
  }

  OUTLINED_FUNCTION_12(v10);
  if (v6)
  {
LABEL_25:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v12 & 1) == 0)
  {
    if (*(v11 + 32))
    {
      OUTLINED_FUNCTION_41(v11);
      *(v13 + 4) = 32;
    }

    OUTLINED_FUNCTION_33(v11, *(v11 + 72), xmmword_272B87CB0);
    if (v15 <= 0x20)
    {
      LOWORD(v15) = 32;
    }

    *(v14 + 64) = v15;
    goto LABEL_22;
  }

  __break(1u);
}

void static WK2_WeatherAlertSummary.add(significance:_:)()
{
  OUTLINED_FUNCTION_219();
  v3 = v2;
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_140(v5);
  if (!v1)
  {
    OUTLINED_FUNCTION_79();
    if (!v6)
    {
LABEL_22:
      v16 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  OUTLINED_FUNCTION_100();
  if (v7 ^ v8 | v6)
  {
    OUTLINED_FUNCTION_78(1);
  }

  v9 = *(v3 + 16);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (HIDWORD(v9))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_39();
  if (v7 != v8)
  {
    OUTLINED_FUNCTION_39_1();
  }

  OUTLINED_FUNCTION_40();
  if (v7 ^ v8 | v6)
  {
    OUTLINED_FUNCTION_38_1();
    v10 = *(v0 + 32);
  }

  OUTLINED_FUNCTION_12(v10);
  if (v6)
  {
LABEL_25:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v12 & 1) == 0)
  {
    if (*(v11 + 32))
    {
      OUTLINED_FUNCTION_41(v11);
      *(v13 + 4) = 34;
    }

    OUTLINED_FUNCTION_33(v11, *(v11 + 72), xmmword_272B87CB0);
    if (v15 <= 0x22)
    {
      LOWORD(v15) = 34;
    }

    *(v14 + 64) = v15;
    goto LABEL_22;
  }

  __break(1u);
}

void static WK2_WeatherAlertSummary.add(source:_:)()
{
  OUTLINED_FUNCTION_219();
  v3 = *MEMORY[0x277D85DE8];
  v5 = OUTLINED_FUNCTION_120(v4);
  if (!v2)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_58(v5, v6);
  if (v8 != v9)
  {
    OUTLINED_FUNCTION_38();
  }

  v10 = *(v0 + 16);
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (HIDWORD(v10))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v11 = OUTLINED_FUNCTION_3(v7, v10);
  if (v8 != v9)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v11, v12, *(v0 + 24));
  }

  OUTLINED_FUNCTION_119();
  if (v13)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_118();
  if (v14)
  {
    OUTLINED_FUNCTION_79();
    if (!v14)
    {
LABEL_28:
      v23 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  v15 = OUTLINED_FUNCTION_15();
  if (v8 != v9)
  {
    OUTLINED_FUNCTION_186(v15);
  }

  OUTLINED_FUNCTION_27();
  if (v8 != v9)
  {
    OUTLINED_FUNCTION_9();
    v16 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_4(v16);
  if (!v14 & v17)
  {
LABEL_32:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v19 & 1) == 0)
  {
    if (*(v18 + 32))
    {
      OUTLINED_FUNCTION_57(v18);
      *(v20 + 4) = 36;
    }

    OUTLINED_FUNCTION_33(v18, *(v18 + 72), xmmword_272B87CB0);
    if (v22 <= 0x24)
    {
      LOWORD(v22) = 36;
    }

    *(v21 + 64) = v22;
    goto LABEL_28;
  }

  __break(1u);
}

void static WK2_WeatherAlertSummary.add(eventSource:_:)()
{
  OUTLINED_FUNCTION_219();
  v3 = *MEMORY[0x277D85DE8];
  v5 = OUTLINED_FUNCTION_120(v4);
  if (!v2)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_58(v5, v6);
  if (v8 != v9)
  {
    OUTLINED_FUNCTION_38();
  }

  v10 = *(v0 + 16);
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (HIDWORD(v10))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v11 = OUTLINED_FUNCTION_3(v7, v10);
  if (v8 != v9)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v11, v12, *(v0 + 24));
  }

  OUTLINED_FUNCTION_119();
  if (v13)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_118();
  if (v14)
  {
    OUTLINED_FUNCTION_79();
    if (!v14)
    {
LABEL_28:
      v23 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  v15 = OUTLINED_FUNCTION_15();
  if (v8 != v9)
  {
    OUTLINED_FUNCTION_186(v15);
  }

  OUTLINED_FUNCTION_27();
  if (v8 != v9)
  {
    OUTLINED_FUNCTION_9();
    v16 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_4(v16);
  if (!v14 & v17)
  {
LABEL_32:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v19 & 1) == 0)
  {
    if (*(v18 + 32))
    {
      OUTLINED_FUNCTION_57(v18);
      *(v20 + 4) = 38;
    }

    OUTLINED_FUNCTION_33(v18, *(v18 + 72), xmmword_272B87CB0);
    if (v22 <= 0x26)
    {
      LOWORD(v22) = 38;
    }

    *(v21 + 64) = v22;
    goto LABEL_28;
  }

  __break(1u);
}

void static WK2_WeatherAlertSummary.add(urgency:_:)()
{
  OUTLINED_FUNCTION_219();
  v3 = v2;
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_140(v5);
  if (!v1)
  {
    OUTLINED_FUNCTION_79();
    if (!v6)
    {
LABEL_22:
      v16 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  OUTLINED_FUNCTION_100();
  if (v7 ^ v8 | v6)
  {
    OUTLINED_FUNCTION_78(1);
  }

  v9 = *(v3 + 16);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (HIDWORD(v9))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_39();
  if (v7 != v8)
  {
    OUTLINED_FUNCTION_39_1();
  }

  OUTLINED_FUNCTION_40();
  if (v7 ^ v8 | v6)
  {
    OUTLINED_FUNCTION_38_1();
    v10 = *(v0 + 32);
  }

  OUTLINED_FUNCTION_12(v10);
  if (v6)
  {
LABEL_25:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v12 & 1) == 0)
  {
    if (*(v11 + 32))
    {
      OUTLINED_FUNCTION_41(v11);
      *(v13 + 4) = 40;
    }

    OUTLINED_FUNCTION_33(v11, *(v11 + 72), xmmword_272B87CB0);
    if (v15 <= 0x28)
    {
      LOWORD(v15) = 40;
    }

    *(v14 + 64) = v15;
    goto LABEL_22;
  }

  __break(1u);
}

void static WK2_WeatherAlertSummary.add(certainty:_:)()
{
  OUTLINED_FUNCTION_219();
  v3 = v2;
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_140(v5);
  if (!v1)
  {
    OUTLINED_FUNCTION_79();
    if (!v6)
    {
LABEL_22:
      v16 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  OUTLINED_FUNCTION_100();
  if (v7 ^ v8 | v6)
  {
    OUTLINED_FUNCTION_78(1);
  }

  v9 = *(v3 + 16);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (HIDWORD(v9))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_39();
  if (v7 != v8)
  {
    OUTLINED_FUNCTION_39_1();
  }

  OUTLINED_FUNCTION_40();
  if (v7 ^ v8 | v6)
  {
    OUTLINED_FUNCTION_38_1();
    v10 = *(v0 + 32);
  }

  OUTLINED_FUNCTION_12(v10);
  if (v6)
  {
LABEL_25:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v12 & 1) == 0)
  {
    if (*(v11 + 32))
    {
      OUTLINED_FUNCTION_41(v11);
      *(v13 + 4) = 42;
    }

    OUTLINED_FUNCTION_33(v11, *(v11 + 72), xmmword_272B87CB0);
    if (v15 <= 0x2A)
    {
      LOWORD(v15) = 42;
    }

    *(v14 + 64) = v15;
    goto LABEL_22;
  }

  __break(1u);
}

void static WK2_WeatherAlertSummary.add(importance:_:)()
{
  OUTLINED_FUNCTION_219();
  v3 = v2;
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_140(v5);
  if (!v1)
  {
    OUTLINED_FUNCTION_79();
    if (!v6)
    {
LABEL_22:
      v16 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  OUTLINED_FUNCTION_100();
  if (v7 ^ v8 | v6)
  {
    OUTLINED_FUNCTION_78(1);
  }

  v9 = *(v3 + 16);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (HIDWORD(v9))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_39();
  if (v7 != v8)
  {
    OUTLINED_FUNCTION_39_1();
  }

  OUTLINED_FUNCTION_40();
  if (v7 ^ v8 | v6)
  {
    OUTLINED_FUNCTION_38_1();
    v10 = *(v0 + 32);
  }

  OUTLINED_FUNCTION_12(v10);
  if (v6)
  {
LABEL_25:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v12 & 1) == 0)
  {
    if (*(v11 + 32))
    {
      OUTLINED_FUNCTION_41(v11);
      *(v13 + 4) = 44;
    }

    OUTLINED_FUNCTION_33(v11, *(v11 + 72), xmmword_272B87CB0);
    if (v15 <= 0x2C)
    {
      LOWORD(v15) = 44;
    }

    *(v14 + 64) = v15;
    goto LABEL_22;
  }

  __break(1u);
}

void static WK2_WeatherAlertSummary.addVectorOf(responses:_:)()
{
  OUTLINED_FUNCTION_219();
  v3 = *MEMORY[0x277D85DE8];
  v5 = OUTLINED_FUNCTION_120(v4);
  if (!v2)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_58(v5, v6);
  if (v8 != v9)
  {
    OUTLINED_FUNCTION_38();
  }

  v10 = *(v0 + 16);
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (HIDWORD(v10))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v11 = OUTLINED_FUNCTION_3(v7, v10);
  if (v8 != v9)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v11, v12, *(v0 + 24));
  }

  OUTLINED_FUNCTION_119();
  if (v13)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_118();
  if (v14)
  {
    OUTLINED_FUNCTION_79();
    if (!v14)
    {
LABEL_28:
      v23 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  v15 = OUTLINED_FUNCTION_15();
  if (v8 != v9)
  {
    OUTLINED_FUNCTION_186(v15);
  }

  OUTLINED_FUNCTION_27();
  if (v8 != v9)
  {
    OUTLINED_FUNCTION_9();
    v16 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_4(v16);
  if (!v14 & v17)
  {
LABEL_32:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v19 & 1) == 0)
  {
    if (*(v18 + 32))
    {
      OUTLINED_FUNCTION_57(v18);
      *(v20 + 4) = 46;
    }

    OUTLINED_FUNCTION_33(v18, *(v18 + 72), xmmword_272B87CB0);
    if (v22 <= 0x2E)
    {
      LOWORD(v22) = 46;
    }

    *(v21 + 64) = v22;
    goto LABEL_28;
  }

  __break(1u);
}

void static WK2_WeatherAlertSummary.add(area:_:)()
{
  OUTLINED_FUNCTION_219();
  v3 = *MEMORY[0x277D85DE8];
  v5 = OUTLINED_FUNCTION_120(v4);
  if (!v2)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_58(v5, v6);
  if (v8 != v9)
  {
    OUTLINED_FUNCTION_38();
  }

  v10 = *(v0 + 16);
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (HIDWORD(v10))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v11 = OUTLINED_FUNCTION_3(v7, v10);
  if (v8 != v9)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v11, v12, *(v0 + 24));
  }

  OUTLINED_FUNCTION_119();
  if (v13)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_118();
  if (v14)
  {
    OUTLINED_FUNCTION_79();
    if (!v14)
    {
LABEL_28:
      v23 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  v15 = OUTLINED_FUNCTION_15();
  if (v8 != v9)
  {
    OUTLINED_FUNCTION_186(v15);
  }

  OUTLINED_FUNCTION_27();
  if (v8 != v9)
  {
    OUTLINED_FUNCTION_9();
    v16 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_4(v16);
  if (!v14 & v17)
  {
LABEL_32:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v19 & 1) == 0)
  {
    if (*(v18 + 32))
    {
      OUTLINED_FUNCTION_57(v18);
      *(v20 + 4) = 48;
    }

    OUTLINED_FUNCTION_33(v18, *(v18 + 72), xmmword_272B87CB0);
    if (v22 <= 0x30)
    {
      LOWORD(v22) = 48;
    }

    *(v21 + 64) = v22;
    goto LABEL_28;
  }

  __break(1u);
}

void static WK2_WeatherAlertSummary.addVectorOf(eventTexts:_:)()
{
  OUTLINED_FUNCTION_219();
  v3 = *MEMORY[0x277D85DE8];
  v5 = OUTLINED_FUNCTION_120(v4);
  if (!v2)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_58(v5, v6);
  if (v8 != v9)
  {
    OUTLINED_FUNCTION_38();
  }

  v10 = *(v0 + 16);
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (HIDWORD(v10))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v11 = OUTLINED_FUNCTION_3(v7, v10);
  if (v8 != v9)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v11, v12, *(v0 + 24));
  }

  OUTLINED_FUNCTION_119();
  if (v13)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_118();
  if (v14)
  {
    OUTLINED_FUNCTION_79();
    if (!v14)
    {
LABEL_28:
      v23 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  v15 = OUTLINED_FUNCTION_15();
  if (v8 != v9)
  {
    OUTLINED_FUNCTION_186(v15);
  }

  OUTLINED_FUNCTION_27();
  if (v8 != v9)
  {
    OUTLINED_FUNCTION_9();
    v16 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_4(v16);
  if (!v14 & v17)
  {
LABEL_32:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v19 & 1) == 0)
  {
    if (*(v18 + 32))
    {
      OUTLINED_FUNCTION_57(v18);
      *(v20 + 4) = 50;
    }

    OUTLINED_FUNCTION_33(v18, *(v18 + 72), xmmword_272B87CB0);
    if (v22 <= 0x32)
    {
      LOWORD(v22) = 50;
    }

    *(v21 + 64) = v22;
    goto LABEL_28;
  }

  __break(1u);
}

uint64_t static WK2_WeatherAlertSummary.endWeatherAlertSummary(_:start:)@<X0>(Swift::UInt32 at@<W1>, _DWORD *a2@<X8>)
{
  result = FlatBufferBuilder.endTable(at:)(at);
  *a2 = result;
  return result;
}

uint64_t static WK2_WeatherAlertSummary.createWeatherAlertSummary(_:idOffset:areaIdOffset:areaNameOffset:attributionUrlOffset:countryCodeOffset:descriptionOffset:tokenOffset:effectiveTime:expireTime:issuedTime:eventOnsetTime:eventEndTime:detailsUrlOffset:phenomenonOffset:severity:significance:sourceOffset:eventSourceOffset:urgency:certainty:importance:responsesVectorOffset:areaOffset:eventTextsVectorOffset:)@<X0>(_BYTE *a1@<X0>, int *a2@<X1>, int *a3@<X2>, int *a4@<X3>, int *a5@<X4>, int *a6@<X5>, int *a7@<X6>, int *a8@<X7>, _DWORD *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int *a14, int *a15, unsigned __int8 *a16, unsigned __int8 *a17, int *a18, int *a19, unsigned __int8 *a20, unsigned __int8 *a21, unsigned __int8 *a22, int *a23, int *a24, int *a25)
{
  v25 = *a2;
  v26 = *a3;
  v27 = *a4;
  v28 = *a5;
  v29 = *a6;
  v30 = *a7;
  v31 = *a8;
  v32 = *a14;
  v34 = *a15;
  v35 = *a16;
  v36 = *a17;
  v37 = *a18;
  v38 = *a19;
  v39 = *a20;
  v40 = *a21;
  v41 = *a22;
  v42 = *a23;
  v43 = *a24;
  v44 = *a25;
  at = static WK2_WeatherAlertSummary.startWeatherAlertSummary(_:)(a1);
  OUTLINED_FUNCTION_25_1();
  static WK2_WeatherAlertSummary.add(id:_:)();
  OUTLINED_FUNCTION_25_1();
  static WK2_WeatherAlertSummary.add(areaId:_:)();
  OUTLINED_FUNCTION_25_1();
  static WK2_WeatherAlertSummary.add(areaName:_:)();
  OUTLINED_FUNCTION_25_1();
  static WK2_WeatherAlertSummary.add(attributionUrl:_:)();
  OUTLINED_FUNCTION_25_1();
  static WK2_WeatherAlertSummary.add(countryCode:_:)();
  OUTLINED_FUNCTION_25_1();
  static WK2_WeatherAlertSummary.add(description:_:)();
  OUTLINED_FUNCTION_25_1();
  static WK2_WeatherAlertSummary.add(token:_:)();
  static WK2_WeatherAlertSummary.add(effectiveTime:_:)();
  static WK2_WeatherAlertSummary.add(expireTime:_:)();
  static WK2_WeatherAlertSummary.add(issuedTime:_:)();
  static WK2_WeatherAlertSummary.add(eventOnsetTime:_:)();
  static WK2_WeatherAlertSummary.add(eventEndTime:_:)();
  OUTLINED_FUNCTION_25_1();
  static WK2_WeatherAlertSummary.add(detailsUrl:_:)();
  OUTLINED_FUNCTION_19_2(v34);
  static WK2_WeatherAlertSummary.add(phenomenon:_:)();
  OUTLINED_FUNCTION_25_1();
  static WK2_WeatherAlertSummary.add(severity:_:)();
  OUTLINED_FUNCTION_25_1();
  static WK2_WeatherAlertSummary.add(significance:_:)();
  OUTLINED_FUNCTION_19_2(v37);
  static WK2_WeatherAlertSummary.add(source:_:)();
  OUTLINED_FUNCTION_19_2(v38);
  static WK2_WeatherAlertSummary.add(eventSource:_:)();
  OUTLINED_FUNCTION_25_1();
  static WK2_WeatherAlertSummary.add(urgency:_:)();
  OUTLINED_FUNCTION_25_1();
  static WK2_WeatherAlertSummary.add(certainty:_:)();
  OUTLINED_FUNCTION_25_1();
  static WK2_WeatherAlertSummary.add(importance:_:)();
  OUTLINED_FUNCTION_19_2(v42);
  static WK2_WeatherAlertSummary.addVectorOf(responses:_:)();
  OUTLINED_FUNCTION_19_2(v43);
  static WK2_WeatherAlertSummary.add(area:_:)();
  OUTLINED_FUNCTION_19_2(v44);
  static WK2_WeatherAlertSummary.addVectorOf(eventTexts:_:)();
  result = FlatBufferBuilder.endTable(at:)(at);
  *a9 = result;
  return result;
}

void static WK2_WeatherAlertSummary.verify<A>(_:at:of:)(int a1, unint64_t position)
{
  Verifier.visitTable(at:)(position, __src);
  if (!v2)
  {
    sub_272B5D774(4, 25705, 0xE200000000000000, 1);
    OUTLINED_FUNCTION_86();
    sub_272B5D6A8();
    OUTLINED_FUNCTION_86();
    sub_272B5D6A8();
    OUTLINED_FUNCTION_86();
    sub_272B5D6A8();
    OUTLINED_FUNCTION_86();
    sub_272B5D6A8();
    OUTLINED_FUNCTION_91();
    sub_272B5D6A8();
    OUTLINED_FUNCTION_91();
    sub_272B5D6A8();
    v3 = __src[2];
    if (__src[2] >= 19)
    {
      OUTLINED_FUNCTION_51_1();
      if (v5 && ((*(__src[8] + 24) + v4) & 1) != 0)
      {
        *__dst = MEMORY[0x277D84C58];
        v16 = &qword_2808A3160;
        v17 = &unk_272B87CC0;
        v3 = v4;
        goto LABEL_13;
      }

      v213 = v4;
      OUTLINED_FUNCTION_173(v4);
      OUTLINED_FUNCTION_34(v6, v7, v8, v9, v10, v11, v12, v13, v213, v3, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8]);
      if (*(v14 + v212))
      {
        OUTLINED_FUNCTION_13();
        if (v15 == 1)
        {
LABEL_11:
          *__dst = MEMORY[0x277D84CC0];
          v16 = &qword_2808A3170;
          v17 = &unk_272B89910;
LABEL_13:
          __swift_instantiateConcreteTypeFromMangledNameV2(v16, v17);
          v18 = sub_272B87730();
          v20 = v19;
          sub_272B5C86C();
          swift_allocError();
          *v21 = v3;
          *(v21 + 8) = v18;
          *(v21 + 16) = v20;
LABEL_14:
          v22 = *&__dst[32];
          v23 = *&__dst[16];
          *(v21 + 24) = *__dst;
          *(v21 + 40) = v23;
          *(v21 + 56) = v22;
          *(v21 + 64) = 0;
          swift_willThrow();
LABEL_3:
          memcpy(__dst, __src, 0x65uLL);
          sub_272B522C4(__dst);
          return;
        }

        v24 = OUTLINED_FUNCTION_15_1();
        OUTLINED_FUNCTION_32(v24);
      }

      if (v217 > 0x14)
      {
        v3 = __src[1] + 20;
        OUTLINED_FUNCTION_51_1();
        if (v5)
        {
          OUTLINED_FUNCTION_20(v25, v26, v27, v28, v29, v30, v31, v32, v212, v217, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8]);
          if (v33)
          {
            goto LABEL_77;
          }
        }

        v34 = OUTLINED_FUNCTION_15_1();
        OUTLINED_FUNCTION_173(v34);
        OUTLINED_FUNCTION_34(v35, v36, v37, v38, v39, v40, v41, v42, v212, v217, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8]);
        if (*(v43 + v3))
        {
          OUTLINED_FUNCTION_13();
          if (v44 == 1)
          {
            goto LABEL_11;
          }

          v45 = OUTLINED_FUNCTION_15_1();
          OUTLINED_FUNCTION_32(v45);
        }

        if (v217 > 0x16)
        {
          v3 = __src[1] + 22;
          OUTLINED_FUNCTION_51_1();
          if (v5)
          {
            OUTLINED_FUNCTION_20(v46, v47, v48, v49, v50, v51, v52, v53, v212, v217, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8]);
            if (v54)
            {
              goto LABEL_77;
            }
          }

          v55 = OUTLINED_FUNCTION_15_1();
          OUTLINED_FUNCTION_173(v55);
          OUTLINED_FUNCTION_34(v56, v57, v58, v59, v60, v61, v62, v63, v212, v217, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8]);
          if (*(v64 + v3))
          {
            OUTLINED_FUNCTION_13();
            if (v65 == 1)
            {
              goto LABEL_11;
            }

            v66 = OUTLINED_FUNCTION_15_1();
            OUTLINED_FUNCTION_32(v66);
          }

          if (v217 > 0x18)
          {
            v3 = __src[1] + 24;
            OUTLINED_FUNCTION_51_1();
            if (v5)
            {
              OUTLINED_FUNCTION_20(v67, v68, v69, v70, v71, v72, v73, v74, v212, v217, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8]);
              if (v75)
              {
                goto LABEL_77;
              }
            }

            v76 = OUTLINED_FUNCTION_15_1();
            OUTLINED_FUNCTION_173(v76);
            OUTLINED_FUNCTION_34(v77, v78, v79, v80, v81, v82, v83, v84, v212, v217, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8]);
            if (*(v85 + v3))
            {
              OUTLINED_FUNCTION_13();
              if (v86 == 1)
              {
                goto LABEL_11;
              }

              v87 = OUTLINED_FUNCTION_15_1();
              OUTLINED_FUNCTION_32(v87);
            }

            if (v217 > 0x1A)
            {
              v3 = __src[1] + 26;
              OUTLINED_FUNCTION_51_1();
              if (v5)
              {
                OUTLINED_FUNCTION_20(v88, v89, v90, v91, v92, v93, v94, v95, v212, v217, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8]);
                if (v96)
                {
                  goto LABEL_77;
                }
              }

              v97 = OUTLINED_FUNCTION_15_1();
              OUTLINED_FUNCTION_173(v97);
              OUTLINED_FUNCTION_34(v98, v99, v100, v101, v102, v103, v104, v105, v212, v217, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8]);
              if (*(v106 + v3))
              {
                OUTLINED_FUNCTION_13();
                if (v107 == 1)
                {
                  goto LABEL_11;
                }

                v108 = OUTLINED_FUNCTION_15_1();
                OUTLINED_FUNCTION_32(v108);
              }
            }
          }
        }
      }

      v3 = v217;
    }

    OUTLINED_FUNCTION_86();
    sub_272B5D6A8();
    v218 = v3;
    OUTLINED_FUNCTION_86();
    sub_272B5D6A8();
    if (v3 < 33)
    {
      goto LABEL_57;
    }

    v3 = __src[1] + 32;
    OUTLINED_FUNCTION_47_1();
    if (!v5 || (OUTLINED_FUNCTION_20(v109, v110, v111, v112, v113, v114, v115, v116, v212, v218, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8]), (v117 & 1) == 0))
    {
      OUTLINED_FUNCTION_173(v3);
      OUTLINED_FUNCTION_34(v118, v119, v120, v121, v122, v123, v124, v125, v212, v218, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8]);
      v127 = *(v126 + v3);
      if (v127)
      {
        OUTLINED_FUNCTION_53_0(v127, v212, v218, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], __src[0]);
      }

      if (v218 <= 0x22)
      {
LABEL_57:
        OUTLINED_FUNCTION_91();
        sub_272B5D6A8();
        OUTLINED_FUNCTION_86();
        sub_272B5D6A8();
        if (v218 >= 41)
        {
          v147 = __src[1] + 40;
          OUTLINED_FUNCTION_47_1();
          if (v5)
          {
            OUTLINED_FUNCTION_45_0(v148, v149, v150, v151, v152, v153, v154, v155, v212, v218, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8]);
            if (v156)
            {
              goto LABEL_78;
            }
          }

          OUTLINED_FUNCTION_62();
          OUTLINED_FUNCTION_34(v157, v158, v159, v160, v161, v162, v163, v164, v212, v218, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8]);
          v166 = *(v165 + v147);
          if (v166)
          {
            OUTLINED_FUNCTION_35_1(v166, v214, v219, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], __src[0]);
          }

          if (v219 <= 0x2A)
          {
            goto LABEL_75;
          }

          v147 = __src[1] + 42;
          OUTLINED_FUNCTION_47_1();
          if (v5)
          {
            OUTLINED_FUNCTION_45_0(v167, v168, v169, v170, v171, v172, v173, v174, v214, v219, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8]);
            if (v175)
            {
              goto LABEL_78;
            }
          }

          OUTLINED_FUNCTION_62();
          OUTLINED_FUNCTION_34(v176, v177, v178, v179, v180, v181, v182, v183, v214, v219, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8]);
          v185 = *(v184 + v147);
          if (v185)
          {
            OUTLINED_FUNCTION_35_1(v185, v215, v220, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], __src[0]);
          }

          if (v220 <= 0x2C)
          {
            goto LABEL_75;
          }

          v147 = __src[1] + 44;
          OUTLINED_FUNCTION_47_1();
          if (v5)
          {
            OUTLINED_FUNCTION_45_0(v186, v187, v188, v189, v190, v191, v192, v193, v215, v220, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8]);
            if (v194)
            {
LABEL_78:
              *__dst = MEMORY[0x277D84C58];
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3160, &unk_272B87CC0);
              v209 = sub_272B87730();
              v211 = v210;
              sub_272B5C86C();
              swift_allocError();
              *v21 = v147;
              *(v21 + 8) = v209;
              *(v21 + 16) = v211;
              goto LABEL_14;
            }
          }

          OUTLINED_FUNCTION_62();
          OUTLINED_FUNCTION_34(v195, v196, v197, v198, v199, v200, v201, v202, v215, v220, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8]);
          v204 = *(v203 + v147);
          if (v204)
          {
            OUTLINED_FUNCTION_35_1(v204, v216, v221, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], __src[0]);
          }
        }

LABEL_75:
        OUTLINED_FUNCTION_91();
        sub_272B5D7A0();
        OUTLINED_FUNCTION_86();
        sub_272B5D6A8();
        OUTLINED_FUNCTION_86();
        sub_272B5D948(v205, v206, v207, v208);
        if (__OFSUB__(__src[7], 1))
        {
          __break(1u);
          return;
        }

        --__src[7];
        goto LABEL_3;
      }

      v3 = __src[1] + 34;
      OUTLINED_FUNCTION_47_1();
      if (!v5 || (OUTLINED_FUNCTION_20(v128, v129, v130, v131, v132, v133, v134, v135, v212, v218, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8]), (v136 & 1) == 0))
      {
        OUTLINED_FUNCTION_173(v3);
        OUTLINED_FUNCTION_34(v137, v138, v139, v140, v141, v142, v143, v144, v212, v218, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8]);
        v146 = *(v145 + v3);
        if (v146)
        {
          OUTLINED_FUNCTION_53_0(v146, v212, v218, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], __src[0]);
        }

        goto LABEL_57;
      }
    }

LABEL_77:
    *__dst = MEMORY[0x277D84C58];
    v16 = &qword_2808A3160;
    v17 = &unk_272B87CC0;
    goto LABEL_13;
  }
}

void WK2_EventText.language.getter()
{
  OUTLINED_FUNCTION_65();
  if (v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v2 + v3) < 5u)
  {
    goto LABEL_7;
  }

  v4 = __OFADD__(v3, 4);
  v5 = v3 + 4;
  if (v4)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v6 = *(v2 + v5);
  if (v6)
  {
    if (!__OFADD__(v6, v1))
    {
      v7 = *(v0 + 8);
      v8 = *(v0 + 16);
      Table.directString(at:)(v6 + v1);
      return;
    }

    goto LABEL_11;
  }

LABEL_7:
  OUTLINED_FUNCTION_169();
}

void _s11WeatherData04WK2_A12AlertSummaryV6areaIdSSSgvg_0()
{
  OUTLINED_FUNCTION_65();
  if (v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v2 + v3) < 7u)
  {
    goto LABEL_7;
  }

  v4 = __OFADD__(v3, 6);
  v5 = v3 + 6;
  if (v4)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v6 = *(v2 + v5);
  if (v6)
  {
    if (!__OFADD__(v6, v1))
    {
      v7 = *(v0 + 8);
      v8 = *(v0 + 16);
      Table.directString(at:)(v6 + v1);
      return;
    }

    goto LABEL_11;
  }

LABEL_7:
  OUTLINED_FUNCTION_169();
}

unint64_t static WK2_EventText.startEventText(_:)(_BYTE *a1)
{
  result = OUTLINED_FUNCTION_25(a1);
  if (*(v2 + 56) < v4 + 16)
  {
    if (*(v2 + 48))
    {
LABEL_11:
      __break(1u);
      return result;
    }

    v5 = *(v2 + 32);
    if (v5)
    {
      MEMORY[0x2743D4FD0](v5, -1, -1);
    }

    v6 = swift_slowAlloc();
    *(v2 + 32) = v6;
    *(v2 + 40) = v6 + 16;
    *(v2 + 48) = 0;
    *(v2 + 56) = 16;
  }

  result = *(v1 + 16);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (HIDWORD(result))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  return result;
}

void sub_272B83D34()
{
  OUTLINED_FUNCTION_219();
  v3 = *MEMORY[0x277D85DE8];
  v5 = OUTLINED_FUNCTION_120(v4);
  if (!v2)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_58(v5, v6);
  if (v8 != v9)
  {
    OUTLINED_FUNCTION_38();
  }

  v10 = *(v0 + 16);
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (HIDWORD(v10))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v11 = OUTLINED_FUNCTION_3(v7, v10);
  if (v8 != v9)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v11, v12, *(v0 + 24));
  }

  OUTLINED_FUNCTION_119();
  if (v13)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_118();
  if (v14)
  {
    OUTLINED_FUNCTION_79();
    if (!v14)
    {
LABEL_28:
      v23 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  v15 = OUTLINED_FUNCTION_15();
  if (v8 != v9)
  {
    OUTLINED_FUNCTION_186(v15);
  }

  OUTLINED_FUNCTION_27();
  if (v8 != v9)
  {
    OUTLINED_FUNCTION_9();
    v16 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_4(v16);
  if (!v14 & v17)
  {
LABEL_32:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v19 & 1) == 0)
  {
    if (*(v18 + 32))
    {
      OUTLINED_FUNCTION_57(v18);
      *(v20 + 4) = 4;
    }

    OUTLINED_FUNCTION_33(v18, *(v18 + 72), xmmword_272B87CB0);
    if (v22 <= 4)
    {
      LOWORD(v22) = 4;
    }

    *(v21 + 64) = v22;
    goto LABEL_28;
  }

  __break(1u);
}

void sub_272B83E48()
{
  OUTLINED_FUNCTION_219();
  v3 = *MEMORY[0x277D85DE8];
  v5 = OUTLINED_FUNCTION_120(v4);
  if (!v2)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_58(v5, v6);
  if (v8 != v9)
  {
    OUTLINED_FUNCTION_38();
  }

  v10 = *(v0 + 16);
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (HIDWORD(v10))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v11 = OUTLINED_FUNCTION_3(v7, v10);
  if (v8 != v9)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v11, v12, *(v0 + 24));
  }

  OUTLINED_FUNCTION_119();
  if (v13)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_118();
  if (v14)
  {
    OUTLINED_FUNCTION_79();
    if (!v14)
    {
LABEL_28:
      v23 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  v15 = OUTLINED_FUNCTION_15();
  if (v8 != v9)
  {
    OUTLINED_FUNCTION_186(v15);
  }

  OUTLINED_FUNCTION_27();
  if (v8 != v9)
  {
    OUTLINED_FUNCTION_9();
    v16 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_4(v16);
  if (!v14 & v17)
  {
LABEL_32:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v19 & 1) == 0)
  {
    if (*(v18 + 32))
    {
      OUTLINED_FUNCTION_57(v18);
      *(v20 + 4) = 6;
    }

    OUTLINED_FUNCTION_33(v18, *(v18 + 72), xmmword_272B87CB0);
    if (v22 <= 6)
    {
      LOWORD(v22) = 6;
    }

    *(v21 + 64) = v22;
    goto LABEL_28;
  }

  __break(1u);
}

void static WK2_EventText.createEventText(_:languageOffset:messageOffset:)()
{
  OUTLINED_FUNCTION_219();
  v1 = v0;
  v3 = *v2;
  v5 = *v4;
  v7 = static WK2_EventText.startEventText(_:)(v6);
  static WK2_WeatherAlertSummary.add(id:_:)();
  static WK2_WeatherAlertSummary.add(areaId:_:)();
  *v1 = FlatBufferBuilder.endTable(at:)(v7);
  OUTLINED_FUNCTION_218();
}

void static WK2_EventText.verify<A>(_:at:of:)(int a1, unint64_t position)
{
  Verifier.visitTable(at:)(position, __src);
  if (!v2)
  {
    OUTLINED_FUNCTION_86();
    sub_272B5D6A8();
    OUTLINED_FUNCTION_86();
    sub_272B5D6A8();
    if (__OFSUB__(__src[7], 1))
    {
      __break(1u);
    }

    else
    {
      --__src[7];
      memcpy(v3, __src, 0x65uLL);
      sub_272B522C4(v3);
    }
  }
}

unint64_t sub_272B840AC()
{
  result = qword_2808A3428;
  if (!qword_2808A3428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808A3428);
  }

  return result;
}

unint64_t sub_272B84104()
{
  result = qword_2808A3430;
  if (!qword_2808A3430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808A3430);
  }

  return result;
}

unint64_t sub_272B8415C()
{
  result = qword_2808A3438;
  if (!qword_2808A3438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808A3438);
  }

  return result;
}

unint64_t sub_272B841B4()
{
  result = qword_2808A3440;
  if (!qword_2808A3440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808A3440);
  }

  return result;
}

unint64_t sub_272B8420C()
{
  result = qword_2808A3448;
  if (!qword_2808A3448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808A3448);
  }

  return result;
}

unint64_t sub_272B84264()
{
  result = qword_2808A3450;
  if (!qword_2808A3450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808A3450);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WK2_AlertSignificance(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF4)
  {
    if (a2 + 12 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 12) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 13;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v5 = v6 - 13;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for WK2_AlertSignificance(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_272B84430(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WK2_AlertImportance(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WK2_AlertResponseType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for WK2_AlertResponseType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

void static WK2_EventText.add(language:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_WeatherAlertSummary.add(id:_:)();
}

void static WK2_EventText.add(message:_:)()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
  v1 = *MEMORY[0x277D85DE8];

  static WK2_WeatherAlertSummary.add(areaId:_:)();
}

void OUTLINED_FUNCTION_39_1()
{
  v3 = *(v0 + 24);

  ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(0, v1, v3);
}

uint64_t WK2_WeatherAlertCollection.init(_:o:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

void sub_272B84900(int a1, unint64_t position)
{
  Verifier.visitTable(at:)(position, __src);
  if (!v2)
  {
    sub_272B5D774(4, 25705, 0xE200000000000000, 1);
    OUTLINED_FUNCTION_86();
    sub_272B5D6A8();
    OUTLINED_FUNCTION_86();
    sub_272B5D6A8();
    OUTLINED_FUNCTION_86();
    sub_272B5D6A8();
    OUTLINED_FUNCTION_86();
    sub_272B5D6A8();
    OUTLINED_FUNCTION_91();
    sub_272B5D6A8();
    OUTLINED_FUNCTION_91();
    sub_272B5D6A8();
    v3 = __src[2];
    if (__src[2] >= 19)
    {
      OUTLINED_FUNCTION_51_1();
      if (v5 && ((*(__src[8] + 24) + v4) & 1) != 0)
      {
        *__dst = MEMORY[0x277D84C58];
        v16 = &qword_2808A3160;
        v17 = &unk_272B87CC0;
        v3 = v4;
        goto LABEL_13;
      }

      v220 = v4;
      OUTLINED_FUNCTION_173(v4);
      OUTLINED_FUNCTION_34(v6, v7, v8, v9, v10, v11, v12, v13, v220, v3, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8]);
      if (*(v14 + v219))
      {
        OUTLINED_FUNCTION_13();
        if (v15 == 1)
        {
LABEL_11:
          *__dst = MEMORY[0x277D84CC0];
          v16 = &qword_2808A3170;
          v17 = &unk_272B89910;
LABEL_13:
          __swift_instantiateConcreteTypeFromMangledNameV2(v16, v17);
          v18 = OUTLINED_FUNCTION_26_2();
          v20 = v19;
          sub_272B5C86C();
          v21 = OUTLINED_FUNCTION_177();
          *v22 = v3;
          v22[1] = v18;
          v22[2] = v20;
LABEL_14:
          OUTLINED_FUNCTION_6_1(v21, v22, v23, v24, v25, v26, v27, v28, v219, v222, *__dst, v29, *&__dst[16]);
          *(v30 + 64) = 0;
          swift_willThrow();
LABEL_3:
          memcpy(__dst, __src, 0x65uLL);
          sub_272B522C4(__dst);
          return;
        }

        v31 = OUTLINED_FUNCTION_15_1();
        OUTLINED_FUNCTION_32(v31);
      }

      if (v222 > 0x14)
      {
        v3 = __src[1] + 20;
        OUTLINED_FUNCTION_51_1();
        if (v5)
        {
          OUTLINED_FUNCTION_20(v32, v33, v34, v35, v36, v37, v38, v39, v219, v222, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8]);
          if (v40)
          {
            goto LABEL_77;
          }
        }

        v41 = OUTLINED_FUNCTION_15_1();
        OUTLINED_FUNCTION_173(v41);
        OUTLINED_FUNCTION_34(v42, v43, v44, v45, v46, v47, v48, v49, v219, v222, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8]);
        if (*(v50 + v3))
        {
          OUTLINED_FUNCTION_13();
          if (v51 == 1)
          {
            goto LABEL_11;
          }

          v52 = OUTLINED_FUNCTION_15_1();
          OUTLINED_FUNCTION_32(v52);
        }

        if (v222 > 0x16)
        {
          v3 = __src[1] + 22;
          OUTLINED_FUNCTION_51_1();
          if (v5)
          {
            OUTLINED_FUNCTION_20(v53, v54, v55, v56, v57, v58, v59, v60, v219, v222, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8]);
            if (v61)
            {
              goto LABEL_77;
            }
          }

          v62 = OUTLINED_FUNCTION_15_1();
          OUTLINED_FUNCTION_173(v62);
          OUTLINED_FUNCTION_34(v63, v64, v65, v66, v67, v68, v69, v70, v219, v222, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8]);
          if (*(v71 + v3))
          {
            OUTLINED_FUNCTION_13();
            if (v72 == 1)
            {
              goto LABEL_11;
            }

            v73 = OUTLINED_FUNCTION_15_1();
            OUTLINED_FUNCTION_32(v73);
          }

          if (v222 > 0x18)
          {
            v3 = __src[1] + 24;
            OUTLINED_FUNCTION_51_1();
            if (v5)
            {
              OUTLINED_FUNCTION_20(v74, v75, v76, v77, v78, v79, v80, v81, v219, v222, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8]);
              if (v82)
              {
                goto LABEL_77;
              }
            }

            v83 = OUTLINED_FUNCTION_15_1();
            OUTLINED_FUNCTION_173(v83);
            OUTLINED_FUNCTION_34(v84, v85, v86, v87, v88, v89, v90, v91, v219, v222, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8]);
            if (*(v92 + v3))
            {
              OUTLINED_FUNCTION_13();
              if (v93 == 1)
              {
                goto LABEL_11;
              }

              v94 = OUTLINED_FUNCTION_15_1();
              OUTLINED_FUNCTION_32(v94);
            }

            if (v222 > 0x1A)
            {
              v3 = __src[1] + 26;
              OUTLINED_FUNCTION_51_1();
              if (v5)
              {
                OUTLINED_FUNCTION_20(v95, v96, v97, v98, v99, v100, v101, v102, v219, v222, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8]);
                if (v103)
                {
                  goto LABEL_77;
                }
              }

              v104 = OUTLINED_FUNCTION_15_1();
              OUTLINED_FUNCTION_173(v104);
              OUTLINED_FUNCTION_34(v105, v106, v107, v108, v109, v110, v111, v112, v219, v222, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8]);
              if (*(v113 + v3))
              {
                OUTLINED_FUNCTION_13();
                if (v114 == 1)
                {
                  goto LABEL_11;
                }

                v115 = OUTLINED_FUNCTION_15_1();
                OUTLINED_FUNCTION_32(v115);
              }
            }
          }
        }
      }

      v3 = v222;
    }

    OUTLINED_FUNCTION_21_1();
    OUTLINED_FUNCTION_86();
    sub_272B5D6A8();
    v222 = v3;
    OUTLINED_FUNCTION_86();
    sub_272B5D6A8();
    if (v3 < 33)
    {
      goto LABEL_57;
    }

    v3 = __src[1] + 32;
    OUTLINED_FUNCTION_47_1();
    if (!v5 || (OUTLINED_FUNCTION_20(v116, v117, v118, v119, v120, v121, v122, v123, v219, v222, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8]), (v124 & 1) == 0))
    {
      OUTLINED_FUNCTION_173(v3);
      OUTLINED_FUNCTION_34(v125, v126, v127, v128, v129, v130, v131, v132, v219, v222, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8]);
      v134 = *(v133 + v3);
      if (v134)
      {
        OUTLINED_FUNCTION_53_0(v134, v219, v222, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], __src[0]);
      }

      if (v222 <= 0x22)
      {
LABEL_57:
        OUTLINED_FUNCTION_91();
        sub_272B5D6A8();
        OUTLINED_FUNCTION_86();
        sub_272B5D6A8();
        if (v222 >= 41)
        {
          v154 = __src[1] + 40;
          OUTLINED_FUNCTION_47_1();
          if (v5)
          {
            OUTLINED_FUNCTION_45_0(v155, v156, v157, v158, v159, v160, v161, v162, v219, v222, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8]);
            if (v163)
            {
              goto LABEL_78;
            }
          }

          OUTLINED_FUNCTION_62();
          OUTLINED_FUNCTION_34(v164, v165, v166, v167, v168, v169, v170, v171, v219, v222, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8]);
          v173 = *(v172 + v154);
          if (v173)
          {
            OUTLINED_FUNCTION_35_1(v173, v219, v222, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], __src[0]);
          }

          if (v222 <= 0x2A)
          {
            goto LABEL_75;
          }

          v154 = __src[1] + 42;
          OUTLINED_FUNCTION_47_1();
          if (v5)
          {
            OUTLINED_FUNCTION_45_0(v174, v175, v176, v177, v178, v179, v180, v181, v219, v222, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8]);
            if (v182)
            {
              goto LABEL_78;
            }
          }

          OUTLINED_FUNCTION_62();
          OUTLINED_FUNCTION_34(v183, v184, v185, v186, v187, v188, v189, v190, v219, v222, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8]);
          v192 = *(v191 + v154);
          if (v192)
          {
            OUTLINED_FUNCTION_35_1(v192, v219, v222, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], __src[0]);
          }

          if (v222 <= 0x2C)
          {
            goto LABEL_75;
          }

          v154 = __src[1] + 44;
          OUTLINED_FUNCTION_47_1();
          if (v5)
          {
            OUTLINED_FUNCTION_45_0(v193, v194, v195, v196, v197, v198, v199, v200, v219, v222, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8]);
            if (v201)
            {
LABEL_78:
              *__dst = MEMORY[0x277D84C58];
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3160, &unk_272B87CC0);
              v216 = OUTLINED_FUNCTION_26_2();
              v218 = v217;
              sub_272B5C86C();
              v21 = OUTLINED_FUNCTION_177();
              *v22 = v154;
              v22[1] = v216;
              v22[2] = v218;
              goto LABEL_14;
            }
          }

          OUTLINED_FUNCTION_62();
          OUTLINED_FUNCTION_34(v202, v203, v204, v205, v206, v207, v208, v209, v219, v222, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8]);
          v211 = *(v210 + v154);
          if (v211)
          {
            OUTLINED_FUNCTION_35_1(v211, v221, v223, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], __src[0]);
          }
        }

LABEL_75:
        OUTLINED_FUNCTION_91();
        sub_272B5D7A0();
        OUTLINED_FUNCTION_86();
        sub_272B5D6A8();
        OUTLINED_FUNCTION_86();
        sub_272B5D948(v212, v213, v214, v215);
        if (__OFSUB__(__src[7], 1))
        {
          __break(1u);
          return;
        }

        --__src[7];
        goto LABEL_3;
      }

      v3 = __src[1] + 34;
      OUTLINED_FUNCTION_47_1();
      if (!v5 || (OUTLINED_FUNCTION_20(v135, v136, v137, v138, v139, v140, v141, v142, v219, v222, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8]), (v143 & 1) == 0))
      {
        OUTLINED_FUNCTION_173(v3);
        OUTLINED_FUNCTION_34(v144, v145, v146, v147, v148, v149, v150, v151, v219, v222, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8]);
        v153 = *(v152 + v3);
        if (v153)
        {
          OUTLINED_FUNCTION_53_0(v153, v219, v222, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], __src[0]);
        }

        goto LABEL_57;
      }
    }

LABEL_77:
    *__dst = MEMORY[0x277D84C58];
    v16 = &qword_2808A3160;
    v17 = &unk_272B87CC0;
    goto LABEL_13;
  }
}

uint64_t WK2_WeatherAlertCollection.__buffer.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
}

uint64_t WK2_WeatherAlertCollection.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 24);
  v4 = *(*v1 + 24);
  v5 = *(v4 + v3);
  v6 = __OFSUB__(v3, v5);
  v7 = v3 - v5;
  if (v6)
  {
    __break(1u);
    goto LABEL_10;
  }

  v8 = *(v1 + 8);
  if (*(v4 + v7) < 5u)
  {
    v10 = 0;
LABEL_6:
    v6 = __OFADD__(v10, v3);
    v11 = v10 + v3;
    if (!v6)
    {
      v12 = *(v4 + v11);
      v6 = __OFADD__(v11, v12);
      v13 = v11 + v12;
      if (!v6)
      {
        *a1 = result;
        *(a1 + 8) = v8;
        *(a1 + 24) = v13;
      }

      goto LABEL_11;
    }

LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = __OFADD__(v7, 4);
  v9 = v7 + 4;
  if (!v6)
  {
    v10 = *(v4 + v9);
    goto LABEL_6;
  }

LABEL_12:
  __break(1u);
  return result;
}

void WK2_WeatherAlertCollection.detailsUrl.getter()
{
  v1 = *(v0 + 24);
  v2 = *(*v0 + 24);
  v3 = *(v2 + v1);
  v4 = __OFSUB__(v1, v3);
  v5 = v1 - v3;
  if (v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*(v2 + v5) < 7u)
  {
    return;
  }

  v4 = __OFADD__(v5, 6);
  v6 = v5 + 6;
  if (v4)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  v7 = *(v2 + v6);
  if (v7)
  {
    if (!__OFADD__(v7, v1))
    {
      v8 = *(v0 + 8);
      v9 = *(v0 + 16);
      Table.directString(at:)(v7 + v1);
      return;
    }

    goto LABEL_10;
  }
}

BOOL WK2_WeatherAlertCollection.hasAlerts.getter()
{
  v1 = v0[6];
  v2 = *(*v0 + 24);
  v3 = *(v2 + v1);
  v4 = __OFSUB__(v1, v3);
  v5 = v1 - v3;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    if (*(v2 + v5) < 9u)
    {
      return 0;
    }

    v4 = __OFADD__(v5, 8);
    v6 = v5 + 8;
    if (!v4)
    {
      return *(v2 + v6) != 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t WK2_WeatherAlertCollection.alerts(at:)@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  result = *v2;
  v6 = *(v2 + 24);
  v7 = *(*v2 + 24);
  v8 = *(v7 + v6);
  v9 = __OFSUB__(v6, v8);
  v10 = v6 - v8;
  if (v9)
  {
    __break(1u);
    goto LABEL_15;
  }

  v11 = 0uLL;
  if (*(v7 + v10) < 9u)
  {
LABEL_12:
    result = 0;
    v20 = 0;
    goto LABEL_13;
  }

  v9 = __OFADD__(v10, 8);
  v12 = v10 + 8;
  if (v9)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v13 = *(v7 + v12);
  if (!v13)
  {
    goto LABEL_12;
  }

  v9 = __OFADD__(v13, v6);
  v14 = v13 + v6;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v15 = *(v7 + v14);
  v9 = __OFADD__(v14, v15);
  v16 = v14 + v15;
  if (v9)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = __OFADD__(v16, 4);
  v17 = v16 + 4;
  if (v9)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if ((a1 - 0x20000000) >> 30 != 3)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v9 = __OFADD__(v17, 4 * a1);
  v18 = v17 + 4 * a1;
  if (v9)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v19 = *(v7 + v18);
  v20 = v18 + v19;
  if (!__OFADD__(v18, v19))
  {
    v21 = *(v2 + 8);

    v11 = v21;
LABEL_13:
    *a2 = result;
    *(a2 + 8) = v11;
    *(a2 + 24) = v20;
    return result;
  }

LABEL_21:
  __break(1u);
  return result;
}

void static WK2_WeatherAlertCollection.add(metadata:_:)(int *a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  if (!*a1)
  {
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_58(a1, a2);
  if (v7 != v8)
  {
    OUTLINED_FUNCTION_38();
  }

  v9 = *(v2 + 16);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (HIDWORD(v9))
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v10 = OUTLINED_FUNCTION_3(v6, v9);
  if (v7 != v8)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v10, v11, *(v2 + 24));
  }

  *(v2 + 16) = v4;
  if (HIDWORD(v4))
  {
    goto LABEL_29;
  }

  if (v4 - v5 == -4 && *(v2 + 57) != 1)
  {
LABEL_26:
    v20 = *MEMORY[0x277D85DE8];
    return;
  }

  v12 = OUTLINED_FUNCTION_15();
  if (v7 != v8)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v12, v4, *(v2 + 24));
  }

  OUTLINED_FUNCTION_27();
  if (v7 != v8)
  {
    OUTLINED_FUNCTION_9();
    v13 = *(v3 + 32);
  }

  OUTLINED_FUNCTION_4(v13);
  if (!v15 & v14)
  {
LABEL_30:
    __break(1u);
  }

  v16 = *v2;
  if ((*(*v2 + 48) & 1) == 0)
  {
    if (*(v16 + 32))
    {
      OUTLINED_FUNCTION_57(v16);
      *(v17 + 4) = 4;
    }

    OUTLINED_FUNCTION_33(v16, *(v16 + 72), xmmword_272B87CB0);
    if (v19 <= 4)
    {
      LOWORD(v19) = 4;
    }

    *(v18 + 64) = v19;
    goto LABEL_26;
  }

  __break(1u);
}

void static WK2_WeatherAlertCollection.add(detailsUrl:_:)(int *a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  if (!*a1)
  {
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_58(a1, a2);
  if (v7 != v8)
  {
    OUTLINED_FUNCTION_38();
  }

  v9 = *(v2 + 16);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (HIDWORD(v9))
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v10 = OUTLINED_FUNCTION_3(v6, v9);
  if (v7 != v8)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v10, v11, *(v2 + 24));
  }

  *(v2 + 16) = v4;
  if (HIDWORD(v4))
  {
    goto LABEL_29;
  }

  if (v4 - v5 == -4 && *(v2 + 57) != 1)
  {
LABEL_26:
    v20 = *MEMORY[0x277D85DE8];
    return;
  }

  v12 = OUTLINED_FUNCTION_15();
  if (v7 != v8)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v12, v4, *(v2 + 24));
  }

  OUTLINED_FUNCTION_27();
  if (v7 != v8)
  {
    OUTLINED_FUNCTION_9();
    v13 = *(v3 + 32);
  }

  OUTLINED_FUNCTION_4(v13);
  if (!v15 & v14)
  {
LABEL_30:
    __break(1u);
  }

  v16 = *v2;
  if ((*(*v2 + 48) & 1) == 0)
  {
    if (*(v16 + 32))
    {
      OUTLINED_FUNCTION_57(v16);
      *(v17 + 4) = 6;
    }

    OUTLINED_FUNCTION_33(v16, *(v16 + 72), xmmword_272B87CB0);
    if (v19 <= 6)
    {
      LOWORD(v19) = 6;
    }

    *(v18 + 64) = v19;
    goto LABEL_26;
  }

  __break(1u);
}

void static WK2_WeatherAlertCollection.addVectorOf(alerts:_:)(int *a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  if (!*a1)
  {
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_58(a1, a2);
  if (v7 != v8)
  {
    OUTLINED_FUNCTION_38();
  }

  v9 = *(v2 + 16);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (HIDWORD(v9))
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v10 = OUTLINED_FUNCTION_3(v6, v9);
  if (v7 != v8)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v10, v11, *(v2 + 24));
  }

  *(v2 + 16) = v4;
  if (HIDWORD(v4))
  {
    goto LABEL_29;
  }

  if (v4 - v5 == -4 && *(v2 + 57) != 1)
  {
LABEL_26:
    v20 = *MEMORY[0x277D85DE8];
    return;
  }

  v12 = OUTLINED_FUNCTION_15();
  if (v7 != v8)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v12, v4, *(v2 + 24));
  }

  OUTLINED_FUNCTION_27();
  if (v7 != v8)
  {
    OUTLINED_FUNCTION_9();
    v13 = *(v3 + 32);
  }

  OUTLINED_FUNCTION_4(v13);
  if (!v15 & v14)
  {
LABEL_30:
    __break(1u);
  }

  v16 = *v2;
  if ((*(*v2 + 48) & 1) == 0)
  {
    if (*(v16 + 32))
    {
      OUTLINED_FUNCTION_57(v16);
      *(v17 + 4) = 8;
    }

    OUTLINED_FUNCTION_33(v16, *(v16 + 72), xmmword_272B87CB0);
    if (v19 <= 8)
    {
      LOWORD(v19) = 8;
    }

    *(v18 + 64) = v19;
    goto LABEL_26;
  }

  __break(1u);
}

uint64_t static WK2_WeatherAlertCollection.endWeatherAlertCollection(_:start:)@<X0>(Swift::UInt32 at@<W1>, _DWORD *a2@<X8>)
{
  result = FlatBufferBuilder.endTable(at:)(at);
  *a2 = result;
  return result;
}

uint64_t static WK2_WeatherAlertCollection.createWeatherAlertCollection(_:metadataOffset:detailsUrlOffset:alertsVectorOffset:)@<X0>(unint64_t a1@<X0>, int *a2@<X1>, int *a3@<X2>, int *a4@<X3>, _DWORD *a5@<X8>)
{
  v7 = *a2;
  v8 = *a3;
  v9 = *a4;
  v10 = static WK2_WeatherAlertCollection.startWeatherAlertCollection(_:)(a1);
  v14 = v7;
  static WK2_WeatherAlertCollection.add(metadata:_:)(&v14, a1);
  v13 = v8;
  static WK2_WeatherAlertCollection.add(detailsUrl:_:)(&v13, a1);
  v12 = v9;
  static WK2_WeatherAlertCollection.addVectorOf(alerts:_:)(&v12, a1);
  result = FlatBufferBuilder.endTable(at:)(v10);
  *a5 = result;
  return result;
}

void static WK2_WeatherAlertCollection.verify<A>(_:at:of:)(int a1, unint64_t position)
{
  Verifier.visitTable(at:)(position, __src);
  if (v2)
  {
    return;
  }

  OUTLINED_FUNCTION_91();
  sub_272B5D67C(v3, v4, v5, v6);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_86();
  sub_272B5D6A8();
  if (__src[2] < 9)
  {
    goto LABEL_11;
  }

  v7 = __src[1] + 8;
  v8 = LOBYTE(__src[3]);
  if (LOBYTE(__src[3]) == 1 && ((*(__src[8] + 24) + v7) & 1) != 0)
  {
    *__dst = MEMORY[0x277D84C58];
    v13 = &qword_2808A3160;
    v14 = &unk_272B87CC0;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_173(__src[1] + 8);
  v9 = __src[8];
  v10 = *(__src[8] + 24);
  v11 = *(v10 + v7);
  if (!*(v10 + v7))
  {
LABEL_11:
    sub_272B5C86C();
    v15 = OUTLINED_FUNCTION_177();
    *v16 = 8;
    *(v16 + 6) = HIWORD(v59);
    *(v16 + 2) = *(&v59 + 2);
    *(v16 + 8) = 0x737472656C61;
    *(v16 + 16) = 0xE600000000000000;
    OUTLINED_FUNCTION_6_1(v15, v16, v17, v18, v19, v20, v21, v22, v58, v59, *__dst, v23, *&__dst[16]);
    *(v24 + 64) = 3;
    goto LABEL_15;
  }

  v7 = __src[0] + v11;
  if (((v10 + LOBYTE(__src[0]) + v11) & 3) != 0)
  {
    v12 = v8;
  }

  else
  {
    v12 = 0;
  }

  if (v12 == 1)
  {
    *__dst = MEMORY[0x277D84CC0];
    v13 = &qword_2808A3170;
    v14 = &unk_272B89910;
LABEL_13:
    __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
    v25 = OUTLINED_FUNCTION_26_2();
    v27 = v26;
    sub_272B5C86C();
    v28 = OUTLINED_FUNCTION_177();
    *v29 = v7;
    v29[1] = v25;
    v29[2] = v27;
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_32(__src[0] + v11);
  v38 = v7 + *(*(v9 + 24) + v7);
  if (v38 < 0)
  {
    v38 = -v38;
  }

  if (v38 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    v39 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v39 = v38;
  }

  v40 = sub_272B6EC90(&__src[3], v39);
  v42 = v40 + v41;
  if (v40 < v40 + v41)
  {
    do
    {
      v43 = v40 + 4;
      if (__OFADD__(v40, 4))
      {
        v44 = 0x7FFFFFFFFFFFFFFFLL;
        if ((__src[3] & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v44 = v40 + 4;
        if (!LOBYTE(__src[3]))
        {
          goto LABEL_30;
        }
      }

      if (((*(__src[8] + 24) + v40) & 3) != 0)
      {
        *__dst = MEMORY[0x277D84CC0];
        v54 = v40;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3170, &unk_272B89910);
        v55 = OUTLINED_FUNCTION_26_2();
        v57 = v56;
        sub_272B5C86C();
        v28 = OUTLINED_FUNCTION_177();
        *v29 = v54;
        v29[1] = v55;
        v29[2] = v57;
LABEL_14:
        OUTLINED_FUNCTION_6_1(v28, v29, v30, v31, v32, v33, v34, v35, v58, v59, *__dst, v36, *&__dst[16]);
        *(v37 + 64) = 0;
LABEL_15:
        swift_willThrow();
LABEL_16:
        memcpy(__dst, __src, sizeof(__dst));
        sub_272B522C4(__dst);
        return;
      }

LABEL_30:
      if ((v43 & 0x8000000000000000) != 0)
      {
        v43 = -v43;
      }

      v45 = *(__src[8] + 32);
      if ((v45 & 0x8000000000000000) != 0 || v45 < v43)
      {
        v48 = __src[4];
        v49 = v43;
        sub_272B5C86C();
        OUTLINED_FUNCTION_177();
        *v50 = v49;
        *(v50 + 8) = v48;
        v52 = *&__dst[16];
        v51 = *&__dst[32];
        *(v50 + 16) = *__dst;
        *(v50 + 32) = v52;
        *(v50 + 48) = v51;
        v53 = 1;
LABEL_45:
        *(v50 + 64) = v53;
        goto LABEL_15;
      }

      LODWORD(__src[5]) += 4;
      if (LODWORD(__src[11]) < LODWORD(__src[5]))
      {
        sub_272B5C86C();
        OUTLINED_FUNCTION_177();
        *v50 = 6;
        *(v50 + 8) = 0u;
        *(v50 + 24) = 0u;
        *(v50 + 40) = 0u;
        *(v50 + 56) = 0;
        v53 = 7;
        goto LABEL_45;
      }

      v46 = v40 + *(*(__src[8] + 24) + v40);
      if (v46 < 0)
      {
        v46 = -v46;
      }

      if (v46 >= 0x7FFFFFFFFFFFFFFFLL)
      {
        v47 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v47 = v46;
      }

      sub_272B84900(&__src[3], v47);
      v40 = v44;
    }

    while (v44 < v42);
  }

  if (!__OFSUB__(__src[7], 1))
  {
    --__src[7];
    goto LABEL_16;
  }

  __break(1u);
}

uint64_t ByteBuffer.read<A>(def:position:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 24);
  sub_272B71990();

  return sub_272B878B0();
}

uint64_t ByteBuffer.readString(at:count:type:)(uint64_t a1, int64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_272B87720();
  OUTLINED_FUNCTION_2_2();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4_4();
  sub_272B51468((*(a4 + 24) + a1), a2);
  (*(v11 + 16))(v4, a3, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3210, &qword_272B89868);
  sub_272B549E8();
  v15 = sub_272B87700();

  return v15;
}

unint64_t ByteBuffer.size.getter(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(a2))
  {
    return a2;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall ByteBuffer.push(string:len:)(Swift::String string, Swift::Int len)
{
  v3 = v2;
  object = string._object;
  countAndFlagsBits = string._countAndFlagsBits;
  v29[3] = *MEMORY[0x277D85DE8];
  v9 = v2;
  v8 = *v2;
  v7 = v9[1];
  if (*(v8 + 32) < v7 + len)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(len, v7, v3[2]);
  }

  if (sub_272B46F44(countAndFlagsBits, object, v3, len) != 2)
  {
    goto LABEL_37;
  }

  v10 = (object & 0x2000000000000000) != 0 ? HIBYTE(object) & 0xF : countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  if (!v10)
  {
    goto LABEL_37;
  }

  v11 = (countAndFlagsBits >> 59) & 1;
  if ((object & 0x1000000000000000) == 0)
  {
    LODWORD(v11) = 1;
  }

  v12 = 11;
  if (v11)
  {
    v12 = 7;
  }

  v13 = v12 | (v10 << 16);
  v14 = 4 << v11;

  while (1)
  {
    if ((v13 & 0xC) != v14)
    {
      if ((object & 0x1000000000000000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    v15 = OUTLINED_FUNCTION_3_5();
    v18 = sub_272B73308(v15, v16, v17);
    if (v18 < 0x4000)
    {
      break;
    }

    v13 = v18;
    if ((object & 0x1000000000000000) == 0)
    {
LABEL_15:
      v13 = (v13 & 0xFFFFFFFFFFFF0000) - 65532;
      goto LABEL_20;
    }

LABEL_18:
    if (v10 < v13 >> 16)
    {
      __break(1u);
    }

    OUTLINED_FUNCTION_3_5();
    v13 = sub_272B87770();
LABEL_20:
    v19 = v13;
    if ((v13 & 0xC) == v14)
    {
      v25 = OUTLINED_FUNCTION_3_5();
      v19 = sub_272B73308(v25, v26, v27);
    }

    v20 = v19 >> 16;
    if (v19 >> 16 >= v10)
    {
      goto LABEL_35;
    }

    if ((object & 0x1000000000000000) != 0)
    {
      v22 = sub_272B87790();
    }

    else if ((object & 0x2000000000000000) != 0)
    {
      v29[0] = countAndFlagsBits;
      v29[1] = object & 0xFFFFFFFFFFFFFFLL;
      v22 = *(v29 + v20);
    }

    else
    {
      v21 = (object & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((countAndFlagsBits & 0x1000000000000000) == 0)
      {
        v21 = sub_272B878E0();
      }

      v22 = *(v21 + v20);
    }

    v23 = v3[1];
    v24 = *(v8 + 32);
    if (v24 < v23 + 1)
    {
      ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(1, v3[1], v3[2]);
      v24 = *(v8 + 32);
    }

    *(*(v8 + 24) + v24 + ~v23) = v22;
    v3[1] = v23 + 1;
    if (!(v13 >> 14))
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:

LABEL_37:
  v28 = *MEMORY[0x277D85DE8];
}

Swift::Void __swiftcall ByteBuffer.fill(padding:)(Swift::Int padding)
{
  v2 = v1[1];
  v3 = v2 + padding;
  if (*(*v1 + 32) < v2 + padding)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(padding, v2, v1[2]);
  }

  v1[1] = v3;
}

uint64_t ByteBuffer.push<A>(elements:)(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 - 8) + 64) * sub_272B87810();
  v4 = v2[1];
  if (*(*v2 + 32) < v3 + v4)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v3, v4, v2[2]);
  }

  v5 = sub_272B87840();

  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x2743D4A10](&v9, v5, WitnessTable);
  MEMORY[0x28223BE20](v7);
  sub_272B87960();
  swift_getWitnessTable();
  sub_272B877C0();
}

uint64_t ByteBuffer.push<A>(value:len:)(uint64_t a1, size_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D85DE8];

  return sub_272B861CC(a1, a2, a3);
}

uint64_t sub_272B861CC(uint64_t a1, size_t a2, uint64_t a3)
{
  v5 = v3;
  v20 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_2();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4_4();
  v16 = v3;
  v15 = *v3;
  v14 = v16[1];
  v17 = v14 + a2;
  if (*(v15 + 32) < (v14 + a2))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(a2, v14, v5[2]);
  }

  (*(v10 + 16))(v4, a1, a3);
  memcpy((*(v15 + 24) + *(v15 + 32) - v17), v4, a2);
  v5[1] = v17;
  result = (*(v10 + 8))(v4, a3);
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ByteBuffer.duplicate(removing:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  v3 = *(a2 + 32);
  type metadata accessor for ByteBuffer.Storage();
  OUTLINED_FUNCTION_0_6();
  v4 = swift_allocObject();
  result = ByteBuffer.Storage.init(count:alignment:)(v3);
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    memmove(*(v4 + 24), v2, v3);
    return v4;
  }

  return result;
}

uint64_t ByteBuffer.Storage.__allocating_init(count:alignment:)(uint64_t a1)
{
  OUTLINED_FUNCTION_0_6();
  v2 = swift_allocObject();
  ByteBuffer.Storage.init(count:alignment:)(a1);
  return v2;
}

uint64_t ByteBuffer.Storage.__allocating_init(memory:capacity:unowned:)(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_0_6();
  result = swift_allocObject();
  *(result + 24) = a1;
  *(result + 32) = a2;
  *(result + 16) = a3;
  return result;
}

uint64_t ByteBuffer.Storage.init(memory:capacity:unowned:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  *(v3 + 16) = a3;
  return v3;
}

uint64_t ByteBuffer._storage.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t ByteBuffer.init(bytes:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for ByteBuffer.Storage();
  OUTLINED_FUNCTION_0_6();
  v3 = swift_allocObject();

  ByteBuffer.Storage.init(count:alignment:)(v2);
  v4 = *(v3 + 32);
  v5 = a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_272B86ACC(a1);
  }

  memmove(*(v3 + 24), v5 + 32, *(a1 + 16));

  return v3;
}

uint64_t ByteBuffer.init<A>(contiguousBytes:count:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ByteBuffer.Storage();
  OUTLINED_FUNCTION_0_6();
  v6 = swift_allocObject();
  ByteBuffer.Storage.init(count:alignment:)(a2);
  v8 = *(v6 + 32);
  sub_272B87620();
  (*(*(a3 - 8) + 8))(a1, a3);
  return v6;
}

void *sub_272B86604(void *__src, uint64_t a2, uint64_t a3)
{
  if (__src)
  {
    if (a2 - __src >= 0)
    {
      return memmove(*(*a3 + 24), __src, a2 - __src);
    }

    __break(1u);
  }

  __break(1u);
  return __src;
}

uint64_t ByteBuffer.init(assumingMemoryBound:capacity:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ByteBuffer.Storage();
  OUTLINED_FUNCTION_0_6();
  result = swift_allocObject();
  *(result + 24) = a1;
  *(result + 32) = a2;
  *(result + 16) = 1;
  return result;
}

Swift::Int __swiftcall ByteBuffer.ensureSpace(size:)(Swift::Int size)
{
  v3 = v1[1];
  if (*(*v1 + 32) < v3 + size)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(size, v3, v1[2]);
  }

  return size;
}

uint64_t sub_272B866BC(uint64_t a1, Swift::Int *a2, uint64_t a3)
{
  v16[1] = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_2();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  v12 = *(v11 + 8);
  v13 = v12 + v9;
  if (*(*a2 + 32) < (v12 + v9))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v12, a2[2]);
  }

  (*(v7 + 16))(v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3);
  memcpy((*(*a2 + 24) + *(*a2 + 32) - (a2[1] + v9)), v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  a2[1] = v13;
  result = (*(v7 + 8))(v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ByteBuffer.push(bytes:len:)(uint64_t __src, uint64_t a2, size_t a3)
{
  if (__src)
  {
    v4 = v3[1] + a3;
    memcpy((*(*v3 + 24) + *(*v3 + 32) - v4), __src, a3);
    v3[1] = v4;
    return 1;
  }

  else
  {
    __break(1u);
  }

  return __src;
}

uint64_t ByteBuffer.readSlice<A>(index:count:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 24);
  sub_272B876E0();
  sub_272B876F0();
  swift_getWitnessTable();
  return sub_272B87850();
}

Swift::Int32 __swiftcall ByteBuffer.skipPrefix()()
{
  v1 = *v0;
  v0[1] -= 4;
  return **(v1 + 24);
}

uint64_t ByteBuffer.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  sub_272B878C0();
  OUTLINED_FUNCTION_5_3();
  v9 = *(a1 + 24);
  sub_272B87930();
  OUTLINED_FUNCTION_5_3();
  v10 = *(a1 + 32);
  v4 = OUTLINED_FUNCTION_1_5();
  MEMORY[0x2743D4AA0](v4);

  MEMORY[0x2743D4AA0](0x6574697277207B0ALL, 0xEF203A657A695372);
  v5 = OUTLINED_FUNCTION_1_5();
  MEMORY[0x2743D4AA0](v5);

  MEMORY[0x2743D4AA0](0x726564616572202CLL, 0xEE00203A657A6953);
  v11 = *(a1 + 32) - a2;
  v6 = OUTLINED_FUNCTION_1_5();
  MEMORY[0x2743D4AA0](v6);

  MEMORY[0x2743D4AA0](0x726574697277202CLL, 0xEF203A7865646E49);
  v12 = *(a1 + 32) - a2;
  v7 = OUTLINED_FUNCTION_1_5();
  MEMORY[0x2743D4AA0](v7);

  MEMORY[0x2743D4AA0](32032, 0xE200000000000000);
  return 0;
}

uint64_t ByteBuffer.push<A>(struct:size:)(uint64_t a1, size_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D85DE8];

  return ByteBuffer.push<A>(value:len:)(a1, a2, a3);
}

void getPrefixedSizeCheckedRoot<A>(byteBuffer:fileId:options:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16)
{
  v16 = *(a4 + 8);
  v17 = *(a4 + 12);
  a1[1] -= 4;
  OUTLINED_FUNCTION_1_6(a1, a2, a3, *a4, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, v18, *v19, v19[4]);
}

void getCheckedPrefixedSizeRoot<A>(byteBuffer:fileId:options:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16)
{
  v16 = *a4;
  v17 = *(a4 + 8);
  v18 = *(a4 + 12);
  v19 = a1[1] - 4;
  a1[1] = v19;
  if (v19 < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (HIDWORD(v19))
  {
LABEL_8:
    __break(1u);
    return;
  }

  v20 = **(*a1 + 24);
  if (v20 < 0 || v20 != v19)
  {
    sub_272B5C86C();
    swift_allocError();
    OUTLINED_FUNCTION_0_7(v21, 1);
  }

  else
  {
    OUTLINED_FUNCTION_1_6(a1, a2, a3, v16, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, v22, *v23, v23[4]);
  }
}

uint64_t getRoot<A>(byteBuffer:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  v5 = a1[1];
  v6 = *(result + 32) - v5;
  if (v6 < 0xFFFFFFFF80000000)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v6 > 0x7FFFFFFF)
  {
    goto LABEL_7;
  }

  v7 = *(*(result + 24) + v6);
  if (v7 < 0)
  {
    goto LABEL_7;
  }

  v8 = (v7 + v6);
  if (!__OFADD__(v7, v6))
  {
    v10 = a1[2];
    v11 = *(a3 + 8);
    v12 = *(v11 + 8);

    return v12(v13, v5, v10, v8, a2, v11);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t dispatch thunk of static ObjectAPIPacker.pack(_:obj:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return (*(a4 + 16))();
}

{
  return (*(a4 + 24))();
}

uint64_t Scalar<>.convertedEndian.getter(uint64_t a1)
{
  v1 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getAssociatedTypeWitness();
  return swift_dynamicCast();
}

void sub_272B86EB4(void *a1@<X8>)
{
  v3 = *v1;
  Double.convertedEndian.getter();
  *a1 = v4;
}

void sub_272B86EE8(_DWORD *a1@<X8>)
{
  v3 = *v1;
  Float.convertedEndian.getter();
  *a1 = v4;
}

uint64_t sub_272B86F1C@<X0>(_BYTE *a1@<X8>)
{
  result = Bool.convertedEndian.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_272B86F48@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_272B86F74@<X0>(_BYTE *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_272B86FA0@<X0>(_WORD *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_272B86FCC@<X0>(_DWORD *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

uint64_t Struct.readBuffer<A>(of:at:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  if (__OFADD__(a2, a6))
  {
    __break(1u);
  }

  else
  {
    v6 = *(a3 + 24) + a2 + a6;
    sub_272B71990();

    return sub_272B878B0();
  }

  return result;
}

Swift::Int32 __swiftcall Table.offset(_:)(Swift::Int32 result)
{
  v3 = *(v1 + 24);
  v4 = *(v3 + v2);
  v5 = __OFSUB__(v2, v4);
  v6 = v2 - v4;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    if (*(v3 + v6) <= result)
    {
      return 0;
    }

    v5 = __OFADD__(v6, result);
    v7 = v6 + result;
    if (!v5)
    {
      return *(v3 + v7);
    }
  }

  __break(1u);
  return result;
}

Swift::Int32 __swiftcall Table.indirect(_:)(Swift::Int32 a1)
{
  v2 = *(*(v1 + 24) + a1);
  v3 = __OFADD__(a1, v2);
  result = a1 + v2;
  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t Table.readBuffer<A>(of:at:)(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v6 = __OFADD__(a2, a6);
  v7 = a2 + a6;
  if (!v6)
  {
    return Table.directRead<A>(of:offset:)(result, v7, a3);
  }

  __break(1u);
  return result;
}

Swift::Int32 __swiftcall Table.vector(count:)(Swift::Int32 count)
{
  v3 = count + v2;
  if (__OFADD__(count, v2))
  {
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 24);
    v5 = *(v4 + v3);
    v6 = __OFADD__(v3, v5);
    v7 = v3 + v5;
    if (!v6)
    {
      return *(v4 + v7);
    }
  }

  __break(1u);
  return count;
}

Swift::Int32 __swiftcall Table.vector(at:)(Swift::Int32 at)
{
  v3 = at + v2;
  if (__OFADD__(at, v2))
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = *(*(v1 + 24) + v3);
  v5 = __OFADD__(v3, v4);
  v6 = v3 + v4;
  if (v5)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  at = v6 + 4;
  if (__OFADD__(v6, 4))
  {
LABEL_7:
    __break(1u);
  }

  return at;
}

Swift::String_optional __swiftcall Table.string(at:)(Swift::Int32 at)
{
  v2 = __OFADD__(at, v1);
  countAndFlagsBits = (at + v1);
  if (v2)
  {
    __break(1u);
  }

  else
  {
    v5 = Table.directString(at:)(countAndFlagsBits);
    object = v5.value._object;
    countAndFlagsBits = v5.value._countAndFlagsBits;
  }

  result.value._object = object;
  result.value._countAndFlagsBits = countAndFlagsBits;
  return result;
}

uint64_t Table.getVector<A>(at:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = *(a2 + 24);
  v6 = *(v5 + a5);
  v7 = __OFSUB__(a5, v6);
  v8 = a5 - v6;
  if (v7)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*(v5 + v8) <= result)
  {
    return 0;
  }

  v7 = __OFADD__(v8, result);
  v9 = v8 + result;
  if (v7)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = *(v5 + v9);
  if (!v10)
  {
    return 0;
  }

  v7 = __OFADD__(v10, a5);
  v11 = v10 + a5;
  if (v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v12 = *(v5 + v11);
  v7 = __OFADD__(v11, v12);
  v13 = v11 + v12;
  if (!v7)
  {
    if (!__OFADD__(v13, 4))
    {
      v14 = *(v5 + v13);
      sub_272B876E0();
      sub_272B876F0();
      swift_getWitnessTable();
      return sub_272B87850();
    }

    goto LABEL_14;
  }

LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t Table.directRead<A>(of:offset:)(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a3 + 24) + a2;
  sub_272B71990();

  return sub_272B878B0();
}

uint64_t Table.union<A>(_:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = __OFADD__(a1, a5);
  result = (a1 + a5);
  if (!v7)
  {
    return Table.directUnion<A>(_:)(result, a2, a3, a4, a5, a6, a7);
  }

  __break(1u);
  return result;
}

uint64_t Table.directUnion<A>(_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(*(a2 + 24) + result);
  v8 = (result + v7);
  if (__OFADD__(result, v7))
  {
    __break(1u);
  }

  else
  {
    v13 = *(a7 + 8);

    return v13(v14, a3, a4, v8, a6, a7);
  }

  return result;
}

uint64_t static Table.indirect(_:_:)(int a1, uint64_t a2)
{
  v2 = *(*(a2 + 24) + a1);
  v3 = __OFADD__(a1, v2);
  result = (a1 + v2);
  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t static Table.offset(_:vOffset:fbb:)(uint64_t result, int a2, uint64_t a3)
{
  v3 = *(a3 + 32);
  if (v3 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v3 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = __OFSUB__(v3, result);
  v5 = v3 - result;
  if (v4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = v5 + a2;
  if (__OFADD__(v5, a2))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = *(a3 + 24);
  v8 = *(v7 + v5);
  v4 = __OFSUB__(v6, v8);
  v9 = v6 - v8;
  if (v4)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = *(v7 + v9);
  result = (v5 + v10);
  if (__OFADD__(v5, v10))
  {
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t static Table.compare(_:_:fbb:)(uint64_t result, int a2, uint64_t a3)
{
  v3 = *(a3 + 24);
  v4 = *(v3 + result);
  v5 = result + v4;
  if (__OFADD__(result, v4))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v6 = *(v3 + a2);
  v7 = a2 + v6;
  if (__OFADD__(a2, v6))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v8 = v5 + 4;
  if (__OFADD__(v5, 4))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v9 = v7 + 4;
  if (__OFADD__(v7, 4))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v10 = *(v3 + v5);
  v11 = *(v3 + v7);
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  if (v12 < 0)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    return result;
  }

  v13 = 0;
  while (1)
  {
    if (v13 == v12)
    {
      v14 = 0;
    }

    else
    {
      if (v13 == 0x7FFFFFFF)
      {
        goto LABEL_26;
      }

      v14 = v13 + 1;
    }

    if (__OFADD__(v13, v8))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    result = (v13 + v9);
    if (__OFADD__(v13, v9))
    {
      goto LABEL_25;
    }

    v15 = *(v3 + v13 + v8);
    result = *(v3 + result);
    if (v15 != result)
    {
      break;
    }

    v16 = v13 == v12;
    v13 = v14;
    if (v16)
    {
      result = (v10 - v11);
      if (!__OFSUB__(v10, v11))
      {
        return result;
      }

      __break(1u);
      break;
    }
  }

  v17 = result - v15;
  result = (result - v15);
  if (result != v17)
  {
    goto LABEL_32;
  }

  return result;
}

uint64_t static Table.compare(_:_:fbb:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 24);
  v4 = *(v3 + result);
  v5 = result + v4;
  if (__OFADD__(result, v4))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = *(a2 + 16);
  if (v6 >> 31)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v7 = v5 + 4;
  if (__OFADD__(v5, 4))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  LODWORD(v8) = *(v3 + v5);
  if ((v8 & 0x80000000) != 0)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  v9 = 0;
  result = (v8 - v6);
  if (v8 >= v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v8;
  }

  while (v8 != v9)
  {
    if (v9 == 0x7FFFFFFF)
    {
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    if (__OFADD__(v9, v7))
    {
      goto LABEL_18;
    }

    if (v6 == v9)
    {
      goto LABEL_19;
    }

    v10 = *(v3 + v9 + v7);
    v11 = *(a2 + 32 + v9);
    if ((v10 & 0x80000000) == 0)
    {
      ++v9;
      if (v10 == v11)
      {
        continue;
      }
    }

    if (v11 < 0)
    {
      goto LABEL_24;
    }

    result = (v10 - v11);
    if (result != v10 - v11)
    {
      goto LABEL_25;
    }

    return result;
  }

  return result;
}