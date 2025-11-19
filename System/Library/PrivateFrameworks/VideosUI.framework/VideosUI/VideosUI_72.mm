unint64_t sub_1E3BFF8E8()
{
  result = qword_1EE23B108;
  if (!qword_1EE23B108)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE23B108);
  }

  return result;
}

unint64_t sub_1E3BFF92C()
{
  result = qword_1EE26C6D8;
  if (!qword_1EE26C6D8)
  {
    type metadata accessor for LibMPBaseMediaEntity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE26C6D8);
  }

  return result;
}

uint64_t sub_1E3BFF984()
{
  type metadata accessor for BackgroundPlaybackModel(0);
  sub_1E3BFF9CC();
  OUTLINED_FUNCTION_32_0();

  return sub_1E42010C4();
}

unint64_t sub_1E3BFF9CC()
{
  result = qword_1ECF34CF0;
  if (!qword_1ECF34CF0)
  {
    type metadata accessor for BackgroundPlaybackModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34CF0);
  }

  return result;
}

uint64_t sub_1E3BFFA24@<X0>(uint64_t a1@<X1>, void (*a2)(uint64_t)@<X2>, uint64_t a3@<X8>)
{
  v6 = _s17EpicInlineContentVMa();
  v7 = *(v6 + 44);
  *(a3 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299D8);
  swift_storeEnumTagMultiPayload();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35218);
  sub_1E4148C68(sub_1E3BFFB6C, v8, &v13);
  v9 = (a3 + *(v6 + 40));
  *v9 = sub_1E3BFF984();
  v9[1] = v10;
  v11 = sub_1E379539C(a1, a3, &qword_1ECF33D80);
  a2(v11);

  return sub_1E3BFFBA4(a1);
}

uint64_t sub_1E3BFFB6C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for BackgroundPlaybackModel(0);
  sub_1E3F49F38();
  result = sub_1E3F45D7C();
  *a1 = result;
  return result;
}

uint64_t sub_1E3BFFBA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33D80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E3BFFC0C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v23 = a2;
  v22 = sub_1E4200B44();
  OUTLINED_FUNCTION_1_2();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF291E0);
  v8 = sub_1E42013A4();
  OUTLINED_FUNCTION_1_2();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v22 - v15;
  sub_1E3BFFE38(a1, v7);
  v17 = *(a1 + 24);
  sub_1E4202DB4();
  (*(v4 + 8))(v7, v22);
  v18 = sub_1E3C0008C();
  v24 = v17;
  v25 = v18;
  OUTLINED_FUNCTION_4_1();
  swift_getWitnessTable();
  v19 = *(v10 + 16);
  v19(v16, v13, v8);
  v20 = *(v10 + 8);
  v20(v13, v8);
  v19(v23, v16, v8);
  return (v20)(v16, v8);
}

uint64_t sub_1E3BFFE38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33D80);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v22 - v6;
  v8 = sub_1E379EBAC(a2);
  v9 = *(**(v2 + *(a1 + 40) + 8) + 360);
  if ((v9)(v8))
  {
    v10 = sub_1E4200B44();
    OUTLINED_FUNCTION_1_2();
    v23 = v11;
    v12 = OUTLINED_FUNCTION_32_0();
    v13(v12);
    v14 = *MEMORY[0x1E697DBA8];
    v15 = *(v23 + 104);

    return v15(a2, v14, v10);
  }

  else
  {
    result = v9();
    if ((result & 1) == 0)
    {
      sub_1E379539C(v2, v7, &qword_1ECF33D80);
      v17 = sub_1E4200B44();
      if (__swift_getEnumTagSinglePayload(v7, 1, v17) == 1)
      {
        return sub_1E3BFFBA4(v7);
      }

      else
      {
        OUTLINED_FUNCTION_1_2();
        v19 = v18;
        v20 = OUTLINED_FUNCTION_32_0();
        v21(v20);
        return (*(v19 + 32))(a2, v7, v17);
      }
    }
  }

  return result;
}

unint64_t sub_1E3C0008C()
{
  result = qword_1EE2887D0;
  if (!qword_1EE2887D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF291E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2887D0);
  }

  return result;
}

void sub_1E3C00138()
{
  sub_1E3C007E4(319, &qword_1EE289EE0, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_1E3BF1504();
      if (v2 <= 0x3F)
      {
        sub_1E3C007E4(319, &qword_1EE289EC0, MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1E3C00228(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1E4200B44();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a3 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v12 <= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  v14 = *(*(v6 - 8) + 64);
  if (v14 <= 8)
  {
    v15 = 8;
  }

  else
  {
    v15 = *(*(v6 - 8) + 64);
  }

  if (v8)
  {
    v16 = *(*(v6 - 8) + 64);
  }

  else
  {
    v16 = v14 + 1;
  }

  v17 = *(v11 + 80);
  v18 = *(v11 + 64);
  if (!a2)
  {
    return 0;
  }

  v19 = v16 + v17;
  v20 = v18 + 7;
  if (a2 > v13)
  {
    v21 = *(v7 + 80) & 0xF8 | 7;
    v22 = v15 + ((v21 + ((v20 + (v19 & ~v17)) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v21) + 1;
    v23 = 8 * v22;
    if (v22 > 3)
    {
      goto LABEL_18;
    }

    v25 = ((a2 - v13 + ~(-1 << v23)) >> v23) + 1;
    if (HIWORD(v25))
    {
      v24 = *(a1 + v22);
      if (!v24)
      {
        goto LABEL_35;
      }

      goto LABEL_25;
    }

    if (v25 > 0xFF)
    {
      v24 = *(a1 + v22);
      if (!*(a1 + v22))
      {
        goto LABEL_35;
      }

      goto LABEL_25;
    }

    if (v25 >= 2)
    {
LABEL_18:
      v24 = *(a1 + v22);
      if (!*(a1 + v22))
      {
        goto LABEL_35;
      }

LABEL_25:
      v26 = (v24 - 1) << v23;
      if (v22 > 3)
      {
        v26 = 0;
      }

      if (v22)
      {
        if (v22 <= 3)
        {
          v27 = v22;
        }

        else
        {
          v27 = 4;
        }

        switch(v27)
        {
          case 2:
            v28 = *a1;
            break;
          case 3:
            v28 = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            v28 = *a1;
            break;
          default:
            v28 = *a1;
            break;
        }
      }

      else
      {
        v28 = 0;
      }

      return v13 + (v28 | v26) + 1;
    }
  }

LABEL_35:
  if (v9 == v13)
  {
    if (v8 < 2)
    {
      return 0;
    }

    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v8, v6);
    if (EnumTagSinglePayload >= 2)
    {
      return EnumTagSinglePayload - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v30 = (a1 + v19) & ~v17;
    if (v12 == v13)
    {

      return __swift_getEnumTagSinglePayload(v30, v12, v10);
    }

    else
    {
      v32 = *(((v20 + v30) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v32 >= 0xFFFFFFFF)
      {
        LODWORD(v32) = -1;
      }

      return (v32 + 1);
    }
  }
}

void sub_1E3C004CC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_1E4200B44();
  v9 = 0;
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  v12 = *(a4 + 16);
  v13 = *(v12 - 8);
  if (v11)
  {
    v14 = v11 - 1;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(v13 + 84);
  if (v15 <= v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = *(v13 + 84);
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  v17 = *(*(v8 - 8) + 64);
  if (v17 <= 8)
  {
    v18 = 8;
  }

  else
  {
    v18 = *(*(v8 - 8) + 64);
  }

  if (!v11)
  {
    ++v17;
  }

  v19 = *(v13 + 80);
  v20 = v17 + v19;
  v21 = (v17 + v19) & ~v19;
  v22 = *(v13 + 64) + 7;
  v23 = *(v10 + 80) & 0xF8 | 7;
  v24 = v18 + ((v23 + ((v22 + v21) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v23) + 1;
  v25 = 8 * v24;
  if (a3 > v16)
  {
    if (v24 <= 3)
    {
      v26 = ((a3 - v16 + ~(-1 << v25)) >> v25) + 1;
      if (HIWORD(v26))
      {
        v9 = 4;
      }

      else
      {
        if (v26 < 0x100)
        {
          v27 = 1;
        }

        else
        {
          v27 = 2;
        }

        if (v26 >= 2)
        {
          v9 = v27;
        }

        else
        {
          v9 = 0;
        }
      }
    }

    else
    {
      v9 = 1;
    }
  }

  if (v16 >= a2)
  {
    switch(v9)
    {
      case 1:
        a1[v24] = 0;
        if (a2)
        {
          goto LABEL_37;
        }

        return;
      case 2:
        *&a1[v24] = 0;
        if (a2)
        {
          goto LABEL_37;
        }

        return;
      case 3:
LABEL_56:
        __break(1u);
        return;
      case 4:
        *&a1[v24] = 0;
        goto LABEL_36;
      default:
LABEL_36:
        if (!a2)
        {
          return;
        }

LABEL_37:
        if (v14 == v16)
        {
          v31 = (a2 + 1);
          v32 = a1;
          v12 = v8;
        }

        else
        {
          v32 = &a1[v20] & ~v19;
          if (v15 != v16)
          {
            v33 = ((v22 + v32) & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              *v33 = a2 & 0x7FFFFFFF;
              v33[1] = 0;
            }

            else
            {
              v33[1] = (a2 - 1);
            }

            return;
          }

          v31 = a2;
          v11 = v15;
        }

        __swift_storeEnumTagSinglePayload(v32, v31, v11, v12);
        break;
    }
  }

  else
  {
    v28 = ~v16 + a2;
    if (v24 < 4)
    {
      v29 = (v28 >> v25) + 1;
      if (v24)
      {
        v30 = v28 & ~(-1 << v25);
        bzero(a1, v24);
        if (v24 == 3)
        {
          *a1 = v30;
          a1[2] = BYTE2(v30);
        }

        else if (v24 == 2)
        {
          *a1 = v30;
        }

        else
        {
          *a1 = v28;
        }
      }
    }

    else
    {
      bzero(a1, v24);
      *a1 = v28;
      v29 = 1;
    }

    switch(v9)
    {
      case 1:
        a1[v24] = v29;
        break;
      case 2:
        *&a1[v24] = v29;
        break;
      case 3:
        goto LABEL_56;
      case 4:
        *&a1[v24] = v29;
        break;
      default:
        return;
    }
  }
}

void sub_1E3C007E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1E4200B44();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1E3C00844@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t sub_1E3C008E0()
{
  *(v0 + 104) = 0;
  v1 = sub_1E3C2F9A0();
  v2 = *(*v1 + 1696);

  v3 = v2();
  v14[0] = xmmword_1E42C3600;
  v14[1] = xmmword_1E42C3600;
  v15 = 0;
  (*(*v3 + 160))(v14);

  v5 = *(v2)(v4);
  (*(v5 + 1816))(0x402C000000000000, 0);

  v7 = (v2)(v6);
  if (qword_1EE28C218 != -1)
  {
    OUTLINED_FUNCTION_9_101();
  }

  v8 = qword_1ECF71540;
  v9 = *(*v7 + 680);
  v10 = qword_1ECF71540;
  v9(v8);

  v12 = (v2)(v11);
  sub_1E3C37CBC(v12, 23);

  return v1;
}

uint64_t sub_1E3C00AA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  *a7 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20);
  swift_storeEnumTagMultiPayload();
  v12 = type metadata accessor for HorizontalPicker();
  v13 = (a7 + v12[16]);
  v14 = v12[13];
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_59_20();
  sub_1E4203AE4();
  OUTLINED_FUNCTION_2();
  result = (*(v15 + 32))(a7 + v14, a1);
  *(a7 + v12[14]) = a2;
  v17 = (a7 + v12[15]);
  *v17 = a3;
  v17[1] = a4;
  *v13 = a5;
  v13[1] = a6;
  return result;
}

void sub_1E3C00BEC()
{
  OUTLINED_FUNCTION_31_1();
  v84 = v0;
  v88 = v1;
  v3 = v2;
  OUTLINED_FUNCTION_1_2();
  v86 = v4;
  v87 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_39_37();
  OUTLINED_FUNCTION_17_3(v7);
  v91 = *(v8 + 16);
  OUTLINED_FUNCTION_42_45();
  v80 = sub_1E4206374();
  v9.i64[0] = v91;
  v83 = v9;
  v92 = *(v3 + 24);
  v82 = v3;
  OUTLINED_FUNCTION_37_42();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1E42013A4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28998);
  OUTLINED_FUNCTION_13_10();
  sub_1E42013A4();
  sub_1E42013A4();
  sub_1E42013A4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2C5D8);
  OUTLINED_FUNCTION_13_10();
  sub_1E42013A4();
  v81 = *(v3 + 40);
  OUTLINED_FUNCTION_26_61(MEMORY[0x1E697FAF8]);
  v11 = v10;
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_25();
  v110 = WitnessTable;
  v111 = sub_1E32752B0(v13, &qword_1ECF28998);
  v14 = swift_getWitnessTable();
  OUTLINED_FUNCTION_43_40(v14, MEMORY[0x1E697E5D8]);
  v15 = swift_getWitnessTable();
  OUTLINED_FUNCTION_56_24(v15, MEMORY[0x1E697EBF8]);
  v16 = swift_getWitnessTable();
  OUTLINED_FUNCTION_3_142();
  v108 = v16;
  v109 = sub_1E32752B0(v17, &qword_1ECF2C5D8);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_23_60();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for CGRect(255);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v89 = type metadata accessor for SelectionHighlightPreferenceKey();
  OUTLINED_FUNCTION_2_141();
  v90 = swift_getWitnessTable();
  sub_1E42021F4();
  sub_1E42013A4();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_1_35();
  v106 = OpaqueTypeConformance2;
  v107 = swift_getWitnessTable();
  v79 = v11;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22_63();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v21 = OUTLINED_FUNCTION_46_33();
  swift_getOpaqueTypeMetadata2();
  sub_1E4202624();
  OUTLINED_FUNCTION_13_10();
  v22 = sub_1E42013A4();
  OUTLINED_FUNCTION_8_102();
  v103 = v22;
  v104 = swift_getWitnessTable();
  v105 = AssociatedConformanceWitness;
  sub_1E4203B54();
  v101 = OpaqueTypeMetadata2;
  v102 = v21;
  v23 = OUTLINED_FUNCTION_46_33();
  OUTLINED_FUNCTION_5_136();
  v99 = v23;
  v100 = sub_1E3C057F8(v24, v25);
  v98 = swift_getWitnessTable();
  OUTLINED_FUNCTION_7_140();
  swift_getWitnessTable();
  v26 = sub_1E4200CA4();
  OUTLINED_FUNCTION_0_10();
  v28 = v27;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v67 - v30;
  OUTLINED_FUNCTION_19_78();
  v32 = swift_getWitnessTable();
  v71 = v32;
  v70 = sub_1E3C04158();
  v101 = v26;
  v102 = &type metadata for HorizontalPickerStyle;
  v103 = v32;
  v104 = v70;
  AssociatedTypeWitness = MEMORY[0x1E697D050];
  v73 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_1_2();
  v80 = v33;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v34);
  v68 = &v67 - v35;
  v36 = OUTLINED_FUNCTION_46_2();
  v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v36);
  v75 = v37;
  OUTLINED_FUNCTION_17_84();
  v72 = sub_1E32752B0(v38, &qword_1ECF35228);
  v101 = v89;
  v102 = v37;
  v103 = v90;
  v104 = v72;
  v76 = sub_1E4202604();
  OUTLINED_FUNCTION_58();
  v39 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v77 = v40;
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_4_6();
  v69 = v42 - v43;
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_17_3(&v67 - v45);
  *&v46 = vdupq_laneq_s64(v92, 1).u64[0];
  v47 = v81;
  *(&v46 + 1) = v81;
  v94 = v46;
  v93 = vzip1q_s64(v83, v92);
  v48 = v84;
  v95 = v84;
  sub_1E4200C94();
  v49 = v71;
  v50 = v70;
  sub_1E42030C4();
  (*(v28 + 8))(v31, v26);
  v51 = v86;
  v52 = v85;
  v53 = v82;
  (*(v86 + 16))(v85, v48, v82);
  v54 = (*(v51 + 80) + 48) & ~*(v51 + 80);
  v55 = swift_allocObject();
  *(v55 + 16) = v91;
  *(v55 + 24) = v92;
  *(v55 + 40) = v47;
  (*(v51 + 32))(v55 + v54, v52, v53);
  v101 = v26;
  v102 = &type metadata for HorizontalPickerStyle;
  v103 = v49;
  v104 = v50;
  v56 = swift_getOpaqueTypeConformance2();
  sub_1E4203DA4();
  v57 = v69;
  v58 = v73;
  v59 = v68;
  sub_1E4203384();

  OUTLINED_FUNCTION_15_5();
  v60(v59, v58);
  OUTLINED_FUNCTION_20_67();
  v61 = swift_getWitnessTable();
  v96 = v56;
  v97 = v61;
  swift_getWitnessTable();
  v62 = v77;
  v63 = *(v77 + 16);
  v64 = v74;
  v63(v74, v57, v39);
  v65 = *(v62 + 8);
  v65(v57, v39);
  v63(v88, v64, v39);
  v66 = OUTLINED_FUNCTION_24_4();
  (v65)(v66);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3C01580()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v63 = v2;
  v64 = v3;
  v72 = v4;
  v73 = v5;
  v6 = v4;
  v57 = v5;
  v74 = v7;
  v75 = v0;
  v8 = v7;
  v61 = v7;
  v56 = v0;
  v60 = type metadata accessor for HorizontalPicker();
  OUTLINED_FUNCTION_0_10();
  v59 = v9;
  v62 = *(v10 + 64);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v12);
  v67 = v6;
  v66 = sub_1E4206374();
  v13 = *(v8 + 8);
  OUTLINED_FUNCTION_42_45();
  v55 = v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_52_3();
  sub_1E42013A4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28998);
  OUTLINED_FUNCTION_13_10();
  sub_1E42013A4();
  sub_1E42013A4();
  sub_1E42013A4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2C5D8);
  OUTLINED_FUNCTION_13_10();
  sub_1E42013A4();
  v83 = v1;
  v84 = MEMORY[0x1E697FAF8];
  OUTLINED_FUNCTION_14_55();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_25();
  v81 = WitnessTable;
  v82 = sub_1E32752B0(v15, &qword_1ECF28998);
  v16 = swift_getWitnessTable();
  OUTLINED_FUNCTION_43_40(v16, MEMORY[0x1E697E5D8]);
  OUTLINED_FUNCTION_46_2();
  v17 = swift_getWitnessTable();
  OUTLINED_FUNCTION_56_24(v17, MEMORY[0x1E697EBF8]);
  v18 = swift_getWitnessTable();
  OUTLINED_FUNCTION_3_142();
  v79 = v18;
  v80 = sub_1E32752B0(v19, &qword_1ECF2C5D8);
  v54 = v1;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_24_59();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for CGRect(255);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_42_45();
  type metadata accessor for SelectionHighlightPreferenceKey();
  OUTLINED_FUNCTION_2_141();
  swift_getWitnessTable();
  sub_1E42021F4();
  OUTLINED_FUNCTION_37_42();
  sub_1E42013A4();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_1_35();
  v77 = OpaqueTypeConformance2;
  v78 = swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22_63();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v51 = OUTLINED_FUNCTION_46_33();
  OUTLINED_FUNCTION_21_65();
  v50 = v22;
  swift_getOpaqueTypeMetadata2();
  sub_1E4202624();
  OUTLINED_FUNCTION_13_10();
  v49 = sub_1E42013A4();
  OUTLINED_FUNCTION_8_102();
  v53 = swift_getWitnessTable();
  v72 = v66;
  v73 = AssociatedTypeWitness;
  v74 = v49;
  v75 = v53;
  v76 = AssociatedConformanceWitness;
  v23 = sub_1E4203B54();
  OUTLINED_FUNCTION_0_10();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_4_6();
  v29 = v27 - v28;
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = &v48 - v32;
  v34 = v60;
  v71 = *(v63 + *(v60 + 56));
  v35 = v59;
  v36 = v58;
  (*(v59 + 16))(v58, v31);
  v37 = (*(v35 + 80) + 48) & ~*(v35 + 80);
  v38 = swift_allocObject();
  v39 = v57;
  *(v38 + 2) = v67;
  *(v38 + 3) = v39;
  v40 = v56;
  *(v38 + 4) = v61;
  *(v38 + 5) = v40;
  (*(v35 + 32))(&v38[v37], v36, v34);

  v72 = OpaqueTypeMetadata2;
  v73 = v51;
  v41 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_5_136();
  v44 = sub_1E3C057F8(v42, v43);
  v69 = v41;
  v70 = v44;
  v45 = swift_getWitnessTable();
  sub_1E4203B44();
  v68 = v45;
  OUTLINED_FUNCTION_7_140();
  swift_getWitnessTable();
  v46 = *(v25 + 16);
  v46(v33, v29, v23);
  v47 = *(v25 + 8);
  v47(v29, v23);
  v46(v64, v33, v23);
  v47(v33, v23);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3C01C20()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v36 = v0;
  v35 = v2;
  v37 = v3;
  v41 = v4;
  v39 = v5;
  v38 = v6;
  v40 = v7;
  sub_1E42013A4();
  v8 = OUTLINED_FUNCTION_24_4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v8);
  OUTLINED_FUNCTION_13_10();
  sub_1E42013A4();
  OUTLINED_FUNCTION_41_41();
  sub_1E42013A4();
  OUTLINED_FUNCTION_52_3();
  sub_1E42013A4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2C5D8);
  OUTLINED_FUNCTION_13_10();
  sub_1E42013A4();
  v54 = v1;
  v55 = MEMORY[0x1E697FAF8];
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_25();
  v52 = WitnessTable;
  v53 = sub_1E32752B0(v10, &qword_1ECF28998);
  v11 = swift_getWitnessTable();
  OUTLINED_FUNCTION_43_40(v11, MEMORY[0x1E697E5D8]);
  v12 = swift_getWitnessTable();
  OUTLINED_FUNCTION_56_24(v12, MEMORY[0x1E697EBF8]);
  v13 = swift_getWitnessTable();
  OUTLINED_FUNCTION_3_142();
  v50 = v13;
  v51 = sub_1E32752B0(v14, &qword_1ECF2C5D8);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_24_59();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for CGRect(255);
  OUTLINED_FUNCTION_37_42();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_13_10();
  type metadata accessor for SelectionHighlightPreferenceKey();
  OUTLINED_FUNCTION_2_141();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_41_41();
  sub_1E42021F4();
  OUTLINED_FUNCTION_52_3();
  sub_1E42013A4();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_1_35();
  v48 = OpaqueTypeConformance2;
  v49 = swift_getWitnessTable();
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v17 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1E4202624();
  v18 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_4_6();
  v24 = v22 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v35 - v26;
  v44 = v41;
  v45 = v37;
  v46 = v35;
  v47 = v36;
  type metadata accessor for HorizontalPicker();
  sub_1E3C020D4();
  v44 = OpaqueTypeMetadata2;
  v45 = v17;
  v28 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_5_136();
  v31 = sub_1E3C057F8(v29, v30);
  v42 = v28;
  v43 = v31;
  swift_getWitnessTable();
  v32 = *(v20 + 16);
  v32(v27, v24, v18);
  v33 = *(v20 + 8);
  v33(v24, v18);
  v32(v40, v27, v18);
  v34 = OUTLINED_FUNCTION_123_0();
  (v33)(v34);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3C020D4()
{
  OUTLINED_FUNCTION_31_1();
  v203 = v0;
  v2 = v1;
  v208 = v3;
  v194 = v4;
  v195 = sub_1E4201CB4();
  OUTLINED_FUNCTION_0_10();
  v193 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_17_3(v8 - v7);
  v191 = v2;
  v9 = *(v2 - 8);
  v2 -= 8;
  v189 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v187 = v11;
  OUTLINED_FUNCTION_39_37();
  OUTLINED_FUNCTION_17_3(v12);
  v204 = *(v2 + 24);
  OUTLINED_FUNCTION_1_2();
  v205 = v13;
  MEMORY[0x1EEE9AC00](v14);
  v199 = v15;
  OUTLINED_FUNCTION_39_37();
  OUTLINED_FUNCTION_17_3(v16);
  v186 = *(v2 + 40);
  v206 = *(v186 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_10();
  v207 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4_6();
  v202 = v20 - v21;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_17_3(&v148 - v23);
  OUTLINED_FUNCTION_1_2();
  v178 = v24;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_17_3(v27 - v26);
  v185 = v28;
  v29 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v174 = v30;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v32);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28998);
  v33 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v170 = v34;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v36);
  v37 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  *&v176 = v38;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v40);
  OUTLINED_FUNCTION_58();
  v41 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v171 = v42;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v44);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2C5D8);
  v45 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v172 = v46;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v48);
  *&v180 = *(v2 + 48);
  OUTLINED_FUNCTION_26_61(MEMORY[0x1E697FAF8]);
  v177 = v29;
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_25();
  v51 = sub_1E32752B0(v50, &qword_1ECF28998);
  v153 = WitnessTable;
  v215 = WitnessTable;
  v216 = v51;
  v173 = v33;
  v155 = swift_getWitnessTable();
  OUTLINED_FUNCTION_43_40(v155, MEMORY[0x1E697E5D8]);
  v179 = v37;
  v157 = swift_getWitnessTable();
  OUTLINED_FUNCTION_56_24(v157, MEMORY[0x1E697EBF8]);
  v175 = v41;
  v52 = swift_getWitnessTable();
  OUTLINED_FUNCTION_3_142();
  v54 = sub_1E32752B0(v53, &qword_1ECF2C5D8);
  v159 = v52;
  v213 = v52;
  v214 = v54;
  v55 = swift_getWitnessTable();
  v211 = v45;
  v212 = v55;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_10();
  v165 = v57;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v59);
  type metadata accessor for CGRect(255);
  v61 = v60;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v63 = type metadata accessor for SelectionHighlightPreferenceKey();
  OUTLINED_FUNCTION_2_141();
  v64 = swift_getWitnessTable();
  v163 = v61;
  v160 = v63;
  v158 = v64;
  sub_1E42021F4();
  v166 = OpaqueTypeMetadata2;
  v65 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v162 = v66;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v68);
  v211 = v45;
  v212 = v55;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_1_35();
  v70 = swift_getWitnessTable();
  v152 = OpaqueTypeConformance2;
  v209 = OpaqueTypeConformance2;
  v210 = v70;
  v71 = swift_getWitnessTable();
  v211 = v65;
  v212 = v71;
  v72 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_10();
  v161 = v73;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v75);
  v164 = v65;
  v211 = v65;
  v212 = v71;
  v156 = v71;
  v76 = swift_getOpaqueTypeConformance2();
  v184 = v72;
  v211 = v72;
  v212 = v76;
  v198 = v76;
  OUTLINED_FUNCTION_21_65();
  v183 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_10();
  v182 = v77;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v79);
  v80 = v203;
  (*(v203 + *(v2 + 68)))(v208);
  v81 = v80 + *(v2 + 60);
  v82 = sub_1E4203AE4();
  v83 = v201;
  v149 = v82;
  v154 = v81;
  MEMORY[0x1E690E3F0]();
  v84 = v202;
  sub_1E42074C4();
  v151 = *(AssociatedConformanceWitness + 8);
  LOBYTE(v81) = sub_1E4205E84();
  v85 = v207 + 8;
  v86 = *(v207 + 8);
  v86(v84, AssociatedTypeWitness);
  v190 = AssociatedTypeWitness;
  v207 = v85;
  v150 = v86;
  v86(v83, AssociatedTypeWitness);
  if (v81)
  {
    if (_MergedGlobals_216 != -1)
    {
      OUTLINED_FUNCTION_10_94();
    }

    v87 = &qword_1ECF71538;
  }

  else
  {
    if (qword_1EE28C218 != -1)
    {
      OUTLINED_FUNCTION_9_101();
    }

    v87 = &qword_1ECF71540;
  }

  sub_1E38F08C4(*v87);
  OUTLINED_FUNCTION_51_28();
  v88 = v185;
  v89 = v180;
  sub_1E4202EE4();

  OUTLINED_FUNCTION_15_5();
  v90 = OUTLINED_FUNCTION_46_2();
  v91(v90);
  sub_1E4203704();
  v92 = v167;
  v93 = v177;
  sub_1E4202FB4();

  OUTLINED_FUNCTION_15_5();
  v95 = v94(v84, v93);
  v95.n128_u64[0] = 5.0;
  v96.n128_u64[0] = 10.0;
  v97.n128_u64[0] = 5.0;
  v98.n128_u64[0] = 10.0;
  j_nullsub_1(v95, v96, v97, v98);
  v99 = v169;
  v100 = v173;
  sub_1E42034D4();
  OUTLINED_FUNCTION_15_5();
  v101(v92, v100);
  sub_1E4203DA4();
  v102 = v179;
  v103 = v168;
  sub_1E4203474();
  OUTLINED_FUNCTION_15_5();
  v104(v99, v102);
  sub_1E3C055D4();
  OUTLINED_FUNCTION_51_28();
  v105 = v175;
  sub_1E4202E54();
  OUTLINED_FUNCTION_15_5();
  v106(v103, v105);
  OUTLINED_FUNCTION_123_0();
  v107 = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_123_0();
  LOBYTE(v99) = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_123_0();
  v108 = OUTLINED_FUNCTION_51_1();
  sub_1E383F6D4(0, v107 & 1, 1, v99 & 1, v108 & 1, v45, v55);
  OUTLINED_FUNCTION_15_5();
  v109(v84, v45);
  sub_1E4203944();
  v110 = v205;
  v111 = *(v205 + 16);
  v177 = v205 + 16;
  v178 = v111;
  v112 = v200;
  v113 = v204;
  v111(v200, v208, v204);
  v114 = *(v110 + 80);
  v179 = v114 | 7;
  v115 = swift_allocObject();
  *&v116 = v113;
  *(&v116 + 1) = v88;
  v176 = v116;
  v117 = v186;
  *&v118 = v186;
  *(&v118 + 1) = v89;
  v180 = v118;
  *(v115 + 16) = v116;
  *(v115 + 32) = v118;
  v119 = *(v110 + 32);
  v205 = v110 + 32;
  v185 = v119;
  v119(v115 + ((v114 + 48) & ~v114), v112, v113);
  v120 = v166;
  v121 = v197;
  sub_1E4203044();

  OUTLINED_FUNCTION_15_5();
  v122(v121, v120);
  v123 = v208;
  v124 = v113;
  (*(v117 + 16))(v113, v117);
  sub_1E3E03180();

  OUTLINED_FUNCTION_15_5();
  v125 = OUTLINED_FUNCTION_46_2();
  v126(v125);
  v127 = v189;
  v128 = v188;
  v129 = v191;
  (*(v189 + 16))(v188, v203, v191);
  v130 = v200;
  v178(v200, v123, v124);
  v131 = (*(v127 + 80) + 48) & ~*(v127 + 80);
  v132 = (v187 + v131 + v114) & ~v114;
  v133 = swift_allocObject();
  v134 = v180;
  *(v133 + 16) = v176;
  *(v133 + 32) = v134;
  (*(v127 + 32))(v133 + v131, v128, v129);
  v185(v133 + v132, v130, v124);
  v135 = v181;
  v136 = v184;
  v137 = v196;
  sub_1E4202E74();

  OUTLINED_FUNCTION_15_5();
  v138(v137, v136);
  OUTLINED_FUNCTION_51_28();
  MEMORY[0x1E690E3F0](v149);
  v139 = v202;
  sub_1E42074C4();
  v140 = v190;
  LOBYTE(v133) = sub_1E4205E84();
  v141 = v150;
  v150(v139, v140);
  v141(v114, v140);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35270);
  v142 = v193;
  if (v133)
  {
    v143 = swift_allocObject();
    *(v143 + 16) = xmmword_1E4299720;
    sub_1E4201C54();
  }

  else
  {
    v143 = swift_allocObject();
    *(v143 + 16) = xmmword_1E4297BE0;
  }

  sub_1E4201C94();
  v211 = v143;
  sub_1E3C057F8(&qword_1EE289298, MEMORY[0x1E697F5E0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35278);
  sub_1E32752B0(&qword_1EE23B5D8, &qword_1ECF35278);
  v144 = v192;
  v145 = v195;
  sub_1E42072E4();
  v211 = v136;
  v212 = v198;
  swift_getOpaqueTypeConformance2();
  v146 = v183;
  sub_1E4203294();
  (*(v142 + 8))(v144, v145);
  OUTLINED_FUNCTION_15_5();
  v147(v135, v146);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3C0331C()
{
  OUTLINED_FUNCTION_31_1();
  v26 = v0;
  v27 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v28 = v6;
  v29 = v4;
  v30 = v2;
  v31 = v0;
  v12 = type metadata accessor for HorizontalPicker();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  v16 = *(v15 + 64);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v26 - v19;
  v21 = *v11;
  (*(v14 + 16))(&v26 - v19, v9, v12, v18);
  v22 = (*(v14 + 80) + 48) & ~*(v14 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = v7;
  *(v23 + 3) = v5;
  v24 = v26;
  *(v23 + 4) = v3;
  *(v23 + 5) = v24;
  (*(v14 + 32))(&v23[v22], v20, v12);
  *&v23[(v16 + v22 + 7) & 0xFFFFFFFFFFFFFFF8] = v21;
  v25 = v27;
  *v27 = sub_1E3C05268;
  v25[1] = v23;

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3C03480@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v75 = a2;
  v70 = a1;
  v77 = a4;
  v74 = sub_1E4201324();
  OUTLINED_FUNCTION_0_10();
  v73 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v72 = v7 - v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_17_3(&v66 - v10);
  v69 = sub_1E4201F74();
  OUTLINED_FUNCTION_0_10();
  v68 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v16 = a3 + 3;
  v17 = a3 + 5;
  v18 = a3[4];
  v19 = a3[2];
  OUTLINED_FUNCTION_41_41();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_13_10();
  v20 = type metadata accessor for SelectionHighlightPreferenceData();
  OUTLINED_FUNCTION_57_4();
  v21 = sub_1E4207104();
  OUTLINED_FUNCTION_0_10();
  v23 = v22;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v66 - v25;
  OUTLINED_FUNCTION_1_2();
  v67 = v27;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v66 - v29;
  *&v81 = v75;
  *&v31 = v19;
  *(&v31 + 1) = *v16;
  *&v32 = v18;
  *(&v32 + 1) = *v17;
  v78 = v31;
  v79 = v32;
  v80 = v76;
  OUTLINED_FUNCTION_57_4();
  sub_1E4206374();
  OUTLINED_FUNCTION_15_6();
  swift_getWitnessTable();
  sub_1E4206204();
  if (__swift_getEnumTagSinglePayload(v26, 1, v20) == 1)
  {
    (*(v23 + 8))(v26, v21);
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
  }

  else
  {
    v37 = v67;
    v38 = OUTLINED_FUNCTION_24_4();
    v39(v38);
    type metadata accessor for CGRect(0);
    sub_1E4200EB4();
    sub_1E4202254();
    v40 = v69;
    sub_1E4200E84();
    OUTLINED_FUNCTION_15_5();
    v41(v15, v40);
    v42 = v71;
    sub_1E374709C(v71);
    OUTLINED_FUNCTION_51_28();
    v44 = v72;
    v45 = v74;
    (*(v43 + 104))(v72);
    sub_1E4201314();
    v46 = *(v21 + 8);
    v46(v44, v45);
    v46(v42, v45);
    VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
    v36 = v47;
    v35 = v48;
    v34 = v49;
    v33 = v50;
    (*(v37 + 8))(v30, v20);
  }

  v51 = sub_1E4201D44();
  v52 = v77;
  *v77 = v51;
  v52[1] = 0;
  *(v52 + 16) = 1;
  v53 = v52 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35258) + 44);
  v54 = *MEMORY[0x1E697F468];
  sub_1E4201C44();
  OUTLINED_FUNCTION_2();
  (*(v55 + 104))(v53, v54);
  if (_MergedGlobals_216 != -1)
  {
    OUTLINED_FUNCTION_10_94();
  }

  v56 = sub_1E38F08C4(qword_1ECF71538);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0B0);
  *&v53[*(v57 + 52)] = v56;
  *&v53[*(v57 + 56)] = 256;
  sub_1E4203DA4();
  sub_1E4200D94();
  v58 = &v53[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35260) + 36)];
  v59 = v82;
  *v58 = v81;
  *(v58 + 1) = v59;
  *(v58 + 2) = v83;
  v60 = v36;
  *&v59 = v35;
  v61 = v34;
  v62 = v33;
  MinY = CGRectGetMinY(*(&v59 - 8));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35268);
  v65 = &v53[*(result + 36)];
  *v65 = v36;
  v65[1] = MinY;
  return result;
}

void sub_1E3C03ACC()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v11 = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - v5;
  swift_getAssociatedConformanceWitness();
  type metadata accessor for SelectionHighlightPreferenceData();
  OUTLINED_FUNCTION_57_4();
  sub_1E4207954();
  OUTLINED_FUNCTION_29_55();
  swift_allocObject();
  v7 = sub_1E42062E4();
  v9 = v8;
  sub_1E42074C4();
  sub_1E3C03C48(v6, v1, AssociatedTypeWitness, v9);
  OUTLINED_FUNCTION_57_4();
  sub_1E4206374();
  *v11 = v7;

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3C03C48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  result = type metadata accessor for SelectionHighlightPreferenceData();
  *(a4 + *(result + 36)) = a2;
  return result;
}

void sub_1E3C03CC4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v19[1] = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v19 - v17;
  sub_1E42074C4();
  v19[2] = v7;
  v19[3] = v5;
  v19[4] = v3;
  v19[5] = v1;
  type metadata accessor for HorizontalPicker();
  (*(v11 + 16))(v15, v18, AssociatedTypeWitness);
  OUTLINED_FUNCTION_58();
  sub_1E4203AE4();
  sub_1E4203AA4();
  (*(v11 + 8))(v18, AssociatedTypeWitness);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3C03E28()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v15 - v12;
  v15[0] = v7;
  v15[1] = v5;
  v15[2] = v3;
  v15[3] = v1;
  type metadata accessor for HorizontalPicker();
  OUTLINED_FUNCTION_58();
  v14 = sub_1E4203AE4();
  MEMORY[0x1E690E3F0](v14);
  swift_getAssociatedConformanceWitness();
  sub_1E4205E84();
  (*(v10 + 8))(v13, AssociatedTypeWitness);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3C03F78()
{
  OUTLINED_FUNCTION_59_20();
  type metadata accessor for SelectionHighlightPreferenceData();
  OUTLINED_FUNCTION_59_20();

  return sub_1E4206304();
}

uint64_t sub_1E3C03FAC(uint64_t a1, void (*a2)(void))
{
  a2();
  OUTLINED_FUNCTION_52_3();
  type metadata accessor for SelectionHighlightPreferenceData();
  OUTLINED_FUNCTION_59_20();
  sub_1E4206374();
  OUTLINED_FUNCTION_15_6();
  swift_getWitnessTable();
  return sub_1E4206344();
}

uint64_t sub_1E3C04030@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3C03F78();
  *a1 = result;
  return result;
}

uint64_t sub_1E3C040D0@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1E4201B84();
  *(a1 + 8) = 0x4010000000000000;
  *(a1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35238);
  return sub_1E4202614();
}

unint64_t sub_1E3C04158()
{
  result = qword_1ECF35220;
  if (!qword_1ECF35220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF35220);
  }

  return result;
}

void sub_1E3C041BC()
{
  v0 = OUTLINED_FUNCTION_49_33();
  OUTLINED_FUNCTION_17_2(v0);
  OUTLINED_FUNCTION_30_48();

  sub_1E3C0331C();
}

unint64_t sub_1E3C04264(uint64_t a1)
{
  result = sub_1E3C0428C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E3C0428C()
{
  result = qword_1EE287D78[0];
  if (!qword_1EE287D78[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE287D78);
  }

  return result;
}

uint64_t sub_1E3C04324(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_1E3C043B8()
{
  sub_1E3C04D24(319, &qword_1EE289EA8, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    sub_1E4203AE4();
    if (v1 <= 0x3F)
    {
      sub_1E4206374();
      if (v2 <= 0x3F)
      {
        sub_1E37E0144();
        if (v3 <= 0x3F)
        {
          sub_1E3C051CC(319, &qword_1EE23ACC8, &unk_1ECF2C3F0);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1E3C044FC(int *a1, unsigned int a2)
{
  v4 = sub_1E4201324();
  OUTLINED_FUNCTION_17_2(v4);
  if (*(v5 + 64) <= 8uLL)
  {
    v6 = 8;
  }

  else
  {
    v6 = *(v5 + 64);
  }

  result = swift_getAssociatedTypeWitness();
  v8 = *(result - 8);
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(v8 + 80);
  if (!a2)
  {
    return 0;
  }

  v12 = v11 | 7;
  v13 = v6 + (v11 | 7) + 1;
  if (v10 >= a2)
  {
LABEL_28:
    v22 = ((((a1 + v13) & ~v12) + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v9 & 0x80000000) != 0)
    {

      return __swift_getEnumTagSinglePayload((v22 + v11 + 8) & ~v11, v9, result);
    }

    else
    {
      v23 = *v22;
      if (v23 >= 0xFFFFFFFF)
      {
        LODWORD(v23) = -1;
      }

      return (v23 + 1);
    }
  }

  else
  {
    v14 = ((((((*(*(result - 8) + 64) + ((v11 + 16) & ~v11) + (v13 & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
    v15 = v14 & 0xFFFFFFF8;
    if ((v14 & 0xFFFFFFF8) != 0)
    {
      v16 = 2;
    }

    else
    {
      v16 = a2 - v10 + 1;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    switch(v18)
    {
      case 1:
        v19 = *(a1 + v14);
        if (!v19)
        {
          goto LABEL_28;
        }

        goto LABEL_25;
      case 2:
        v19 = *(a1 + v14);
        if (!v19)
        {
          goto LABEL_28;
        }

        goto LABEL_25;
      case 3:
        __break(1u);
        return result;
      case 4:
        v19 = *(a1 + v14);
        if (!v19)
        {
          goto LABEL_28;
        }

LABEL_25:
        v20 = v19 - 1;
        if (v15)
        {
          v20 = 0;
          v21 = *a1;
        }

        else
        {
          v21 = 0;
        }

        result = v10 + (v21 | v20) + 1;
        break;
      default:
        goto LABEL_28;
    }
  }

  return result;
}

void sub_1E3C04710(_DWORD *a1, uint64_t a2, unsigned int a3)
{
  v6 = sub_1E4201324();
  OUTLINED_FUNCTION_17_2(v6);
  if (*(v7 + 64) <= 8uLL)
  {
    v8 = 8;
  }

  else
  {
    v8 = *(v7 + 64);
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 84);
  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = v8 + (v13 | 7) + 1;
  v15 = ((((((*(*(AssociatedTypeWitness - 8) + 64) + ((v13 + 16) & ~v13) + (v14 & ~(v13 | 7)) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v12 >= a3)
  {
    v18 = 0;
  }

  else
  {
    if (((((((*(*(AssociatedTypeWitness - 8) + 64) + ((v13 + 16) & ~v13) + (v14 & ~(v13 | 7)) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a3 - v12 + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }
  }

  if (a2 <= v12)
  {
    switch(v18)
    {
      case 1:
        *(a1 + v15) = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        break;
      case 2:
        *(a1 + v15) = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        break;
      case 3:
LABEL_46:
        __break(1u);
        break;
      case 4:
        *(a1 + v15) = 0;
        goto LABEL_34;
      default:
LABEL_34:
        if (a2)
        {
LABEL_35:
          v21 = ((((a1 + v14) & ~(v13 | 7)) + 15) & 0xFFFFFFFFFFFFFFF8);
          if ((v11 & 0x80000000) != 0)
          {

            __swift_storeEnumTagSinglePayload((v21 + v13 + 8) & ~v13, a2, v11, AssociatedTypeWitness);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v22 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v22 = (a2 - 1);
            }

            *v21 = v22;
          }
        }

        break;
    }
  }

  else
  {
    if (((((((*(*(AssociatedTypeWitness - 8) + 64) + ((v13 + 16) & ~v13) + (v14 & ~(v13 | 7)) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v19 = a2 - v12;
    }

    else
    {
      v19 = 1;
    }

    if (((((((*(*(AssociatedTypeWitness - 8) + 64) + ((v13 + 16) & ~v13) + (v14 & ~(v13 | 7)) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v20 = ~v12 + a2;
      bzero(a1, v15);
      *a1 = v20;
    }

    switch(v18)
    {
      case 1:
        *(a1 + v15) = v19;
        break;
      case 2:
        *(a1 + v15) = v19;
        break;
      case 3:
        goto LABEL_46;
      case 4:
        *(a1 + v15) = v19;
        break;
      default:
        return;
    }
  }
}

void sub_1E3C04978()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1E3C04D24(319, &qword_1ECF35240, type metadata accessor for CGRect, MEMORY[0x1E6981798]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

int *sub_1E3C04A30(int *result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return OUTLINED_FUNCTION_18();
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v14 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v14 >= 0xFFFFFFFF)
      {
        LODWORD(v14) = -1;
      }

      return (v14 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        if (!*(result + v8))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        if (!*(result + v8))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        if (!*(result + v8))
        {
          goto LABEL_26;
        }

LABEL_22:
        if ((v8 & 0xFFFFFFF8) != 0)
        {
          v10 = *result;
        }

        result = OUTLINED_FUNCTION_34_47(v10);
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1E3C04B5C(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        *(a1 + v10) = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *(a1 + v10) = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *(a1 + v10) = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v19 = ((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v20 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v20 = (a2 - 1);
            }

            *v19 = v20;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      v17 = OUTLINED_FUNCTION_32_0();
      bzero(v17, v18);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        *(a1 + v10) = v15;
        break;
      case 2:
        *(a1 + v10) = v15;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *(a1 + v10) = v15;
        break;
      default:
        return;
    }
  }
}

void sub_1E3C04D24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1E3C04D88()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1E3C05874(319, &qword_1EE23B5F8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1E3C051CC(319, &qword_1EE23B608, &qword_1ECF2A770);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

int *sub_1E3C04E74(int *result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return OUTLINED_FUNCTION_18();
  }

  v9 = *(*(v4 - 8) + 64) + 7;
  if (v8 >= a2)
  {
LABEL_26:
    v16 = (result + v7 + 8) & ~v7;
    if (v6 < 0x7FFFFFFE)
    {
      v17 = *(((v9 + v16) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v17 >= 0xFFFFFFFF)
      {
        LODWORD(v17) = -1;
      }

      if ((v17 + 1) >= 2)
      {
        return v17;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return __swift_getEnumTagSinglePayload(v16, v6, v4);
    }
  }

  else
  {
    v10 = ((((v9 + ((v7 + 8) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
    v11 = a2 - v8;
    v12 = v10 & 0xFFFFFFF8;
    if ((v10 & 0xFFFFFFF8) != 0)
    {
      v13 = 2;
    }

    else
    {
      v13 = v11 + 1;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    switch(v15)
    {
      case 1:
        if (!*(result + v10))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        if (!*(result + v10))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        if (!*(result + v10))
        {
          goto LABEL_26;
        }

LABEL_22:
        if ((v10 & 0xFFFFFFF8) != 0)
        {
          v12 = *result;
        }

        result = OUTLINED_FUNCTION_34_47(v12);
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1E3C04FCC(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFE)
  {
    v9 = 2147483646;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = *(*(v6 - 8) + 64) + 7;
  v12 = ((((v11 + ((v10 + 8) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 >= a3)
  {
    v16 = 0;
  }

  else
  {
    v13 = a3 - v9;
    if (((((v11 + ((v10 + 8) & ~v10)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }
  }

  if (a2 <= v9)
  {
    switch(v16)
    {
      case 1:
        *(a1 + v12) = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *(a1 + v12) = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *(a1 + v12) = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          v21 = (a1 + v10 + 8) & ~v10;
          if (v8 < 0x7FFFFFFE)
          {
            v22 = ((v11 + v21) & 0xFFFFFFFFFFFFFFF8);
            if (a2 > 0x7FFFFFFE)
            {
              *v22 = 0;
              v22[1] = 0;
              *v22 = a2 - 0x7FFFFFFF;
            }

            else
            {
              v22[1] = a2;
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(v21, a2, v8, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((((v11 + ((v10 + 8) & ~v10)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v17 = a2 - v9;
    }

    else
    {
      v17 = 1;
    }

    if (((((v11 + ((v10 + 8) & ~v10)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v18 = ~v9 + a2;
      v19 = OUTLINED_FUNCTION_32_0();
      bzero(v19, v20);
      *a1 = v18;
    }

    switch(v16)
    {
      case 1:
        *(a1 + v12) = v17;
        break;
      case 2:
        *(a1 + v12) = v17;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *(a1 + v12) = v17;
        break;
      default:
        return;
    }
  }
}

void sub_1E3C051CC(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_1E4207104();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1E3C05268@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(OUTLINED_FUNCTION_49_33() - 8);
  v6 = *(v2 + ((*(v5 + 64) + ((*(v5 + 80) + 48) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = OUTLINED_FUNCTION_49_33();
  return sub_1E3C03480(a1, v6, v7, a2);
}

uint64_t objectdestroy_2Tm_0()
{
  v19 = *(v0 + 32);
  v1 = type metadata accessor for HorizontalPicker();
  OUTLINED_FUNCTION_29_55();
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E4201324();
    OUTLINED_FUNCTION_2();
    (*(v5 + 8))(v0 + v3);
  }

  else
  {
  }

  v6 = v4 + *(v1 + 52);

  OUTLINED_FUNCTION_40_45(v7, v8, v9, v10, v11, v12, v13, v14, v19);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1E4203AE4();
  OUTLINED_FUNCTION_60_20();
  (*(v16 + 8))(v6 + v17, AssociatedTypeWitness);

  if (*(v4 + *(v1 + 64)))
  {
  }

  return swift_deallocObject();
}

void sub_1E3C05544()
{
  v0 = OUTLINED_FUNCTION_49_33();
  OUTLINED_FUNCTION_17_2(v0);
  OUTLINED_FUNCTION_30_48();

  sub_1E3C01C20();
}

unint64_t sub_1E3C055D4()
{
  result = qword_1EE2883B0;
  if (!qword_1EE2883B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2883B0);
  }

  return result;
}

uint64_t sub_1E3C05668()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(OUTLINED_FUNCTION_49_33() - 8);
  v4 = v0 + ((*(v3 + 80) + 48) & ~*(v3 + 80));
  MEMORY[0x1E690E740](0.5, 0.8, 0.4);
  sub_1E4200FE4();

  result = type metadata accessor for HorizontalPicker();
  v6 = *(v4 + *(result + 64));
  if (v6)
  {
    v7 = (*(v2 + 24))(v1, v2);
    v6(v7, v8, v9, v10, v11, v12, v13, v14);
  }

  return result;
}

uint64_t sub_1E3C057F8(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1E3C05874(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_56_24@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 152) = result;
  *(v2 - 144) = a2;
  return result;
}

uint64_t sub_1E3C05904()
{
  type metadata accessor for SportsCanonicalBannerScoreboardUpdate.RequestContext();
  v0 = OUTLINED_FUNCTION_28_10();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

__n128 sub_1E3C05940@<Q0>(char a1@<W0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, unint64_t a11)
{
  result = a10;
  a9->n128_u8[0] = a1 & 1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[3].n128_u64[0] = a7;
  a9[3].n128_u64[1] = a8;
  a9[4] = a10;
  a9[5].n128_u64[0] = a11;
  return result;
}

uint64_t sub_1E3C059A8()
{
  if (*(v0 + 152))
  {
    v1 = *(v0 + 152);
  }

  else
  {
    v2 = v0;
    OUTLINED_FUNCTION_15_0();
    swift_unknownObjectWeakLoadStrong();
    type metadata accessor for Tier1LiveUpdateProvider();
    v1 = swift_allocObject();

    sub_1E3C09480();
    *(v2 + 152) = v1;
  }

  return v1;
}

uint64_t sub_1E3C05A88()
{
  OUTLINED_FUNCTION_26_62();
  v0 = swift_allocObject();
  sub_1E3C09480();
  return v0;
}

uint64_t sub_1E3C05B10()
{
  type metadata accessor for Tier1PlusLiveUpdateProvider.SubscriptionTaskActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_1ECF71548 = v0;
  return result;
}

uint64_t sub_1E3C05B4C()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  return v0;
}

uint64_t sub_1E3C05B84()
{
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1E3C05BD8()
{
  if (qword_1EE2945C0 != -1)
  {
    OUTLINED_FUNCTION_0_179();
  }
}

uint64_t sub_1E3C05C24(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for Tier1PlusLiveUpdateProvider.SubscriptionTaskActor();

  return MEMORY[0x1EEE6DBF0](updated, a2);
}

uint64_t sub_1E3C05C5C()
{
  v0 = swift_allocObject();
  sub_1E3C05CB4();
  return v0;
}

void sub_1E3C05CB4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v39 = v2;
  v40 = v3;
  v41 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v38 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v42 = v7 - v6;
  v37 = sub_1E42069F4();
  OUTLINED_FUNCTION_0_10();
  v36 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  sub_1E4206974();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v14 = sub_1E4203FF4();
  v15 = OUTLINED_FUNCTION_17_2(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  sub_1E41FE624();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2_8();
  sub_1E41FE614();
  v17 = sub_1E41FE5E4();
  v19 = v18;
  v20 = OUTLINED_FUNCTION_57();
  v21(v20);
  *(v0 + 16) = v17;
  *(v0 + 24) = v19;
  *(v0 + 120) = 0;
  *(v0 + 136) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 144) = 0;
  v22 = MEMORY[0x1E69E7CD0];
  *(v0 + 152) = 0;
  *(v0 + 160) = v22;
  *(v0 + 168) = 0;
  *(v0 + 176) = 0;
  sub_1E32ADE38();
  sub_1E4203FE4();
  v43[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_19_79();
  sub_1E328FC64(v23, 255, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326B0);
  OUTLINED_FUNCTION_4_146();
  sub_1E32752B0(v25, &unk_1ECF326B0);
  sub_1E42072E4();
  (*(v36 + 104))(v12, *MEMORY[0x1E69E8090], v37);
  *(v0 + 184) = sub_1E4206A44();
  memcpy((v0 + 32), v39, 0x58uLL);
  OUTLINED_FUNCTION_3_0();
  *(v0 + 136) = v40;
  swift_unknownObjectWeakAssign();
  sub_1E3C0596C(v39, v43);
  v26 = sub_1E3E37F30();
  (*(v38 + 16))(v42, v26, v41);
  sub_1E3C0596C(v39, v43);

  v27 = sub_1E41FFC94();
  v28 = sub_1E42067E4();

  sub_1E3C09510(v39);
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v43[0] = swift_slowAlloc();
    *v29 = 136315394;
    v30 = *(v1 + 16);
    v31 = *(v1 + 24);

    v32 = sub_1E3270FC8(v30, v31, v43);

    *(v29 + 4) = v32;
    *(v29 + 12) = 2080;
    v33 = v39[1];
    v34 = v39[2];

    sub_1E3C09510(v39);
    v35 = sub_1E3270FC8(v33, v34, v43);

    *(v29 + 14) = v35;
    _os_log_impl(&dword_1E323F000, v27, v28, "Tier1PlusLiveUpdateProvider: init - consumer %s for '%s'", v29, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_55();

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    sub_1E3C09510(v39);
  }

  (*(v38 + 8))(v42, v41);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3C061C4()
{
  OUTLINED_FUNCTION_31_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  OUTLINED_FUNCTION_17_2(v2);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_35_3();
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_8();
  v8 = *(v0 + 40);
  v9 = *(v0 + 48);
  v10 = *(v0 + 24);
  v25 = *(v0 + 16);

  v11 = sub_1E3E37F30();
  (*(v6 + 16))(v0, v11, v4);

  v12 = sub_1E41FFC94();
  v13 = sub_1E42067E4();

  if (os_log_type_enabled(v12, v13))
  {
    v24 = v10;
    v14 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v14 = 136315394;
    *(v14 + 4) = sub_1E3270FC8(*(v0 + 16), *(v0 + 24), &v26);
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_1E3270FC8(v8, v9, &v26);
    _os_log_impl(&dword_1E323F000, v12, v13, "Tier1PlusLiveUpdateProvider: deinit - unsubscribe consumer %s from '%s'", v14, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    v10 = v24;
    OUTLINED_FUNCTION_6_0();
  }

  (*(v6 + 8))(v0, v4);
  sub_1E4206474();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v25;
  v19[5] = v10;
  v19[6] = v8;
  v19[7] = v9;
  v20 = OUTLINED_FUNCTION_23_7();
  sub_1E3C066E8(v20, v21, v1, v22, v23);

  sub_1E325F6F0(v1, &unk_1ECF2C400);

  sub_1E32AF6F8(v0 + 128);

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3C064D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_1E3C064EC()
{
  OUTLINED_FUNCTION_24();
  *(v0 + 56) = *sub_1E3C7AFC8();

  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1E3C065A0;

  return sub_1E3C7BB58();
}

uint64_t sub_1E3C065A0()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_31();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    v4 = sub_1E3C0A048;
  }

  else
  {

    v4 = sub_1E3C066E0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E3C066E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v24 - v10;
  sub_1E325A828(a3, v24 - v10);
  v12 = sub_1E4206474();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_1E325F6F0(v11, &unk_1ECF2C400);
  }

  else
  {
    sub_1E4206464();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1E42063B4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1E4205FB4() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF36400);
      v20 = (v17 | v15);
      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v21 = swift_task_create();

      return v21;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF36400);
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1E3C06990()
{
  sub_1E3C061C4();

  return MEMORY[0x1EEE6BDC0](v0, 192, 7);
}

void sub_1E3C069C4()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  v13 = OUTLINED_FUNCTION_42_8();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  OUTLINED_FUNCTION_4_0();
  v5 = swift_allocObject();
  swift_weakInit();
  v14[4] = sub_1E3C09B60;
  v14[5] = v5;
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_48_2(COERCE_DOUBLE(1107296256));
  v14[2] = v6;
  v14[3] = &block_descriptor_76;
  v7 = _Block_copy(v14);

  sub_1E4203FE4();
  OUTLINED_FUNCTION_18_71();
  sub_1E328FC64(v8, 255, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
  OUTLINED_FUNCTION_4_146();
  sub_1E32752B0(v10, &qword_1ECF2A730);
  OUTLINED_FUNCTION_43_41();
  OUTLINED_FUNCTION_55_30();
  _Block_release(v7);
  v11 = OUTLINED_FUNCTION_60_21();
  v12(v11);
  (*(v3 + 8))(v0, v13);

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3C06BE0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  OUTLINED_FUNCTION_17_2(v1);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_50_1();
  OUTLINED_FUNCTION_5_0();
  result = swift_weakLoadStrong();
  if (result)
  {
    if ((*(result + 176) & 1) == 0)
    {
      *(result + 176) = 1;
      sub_1E3C06D04();
      sub_1E4206474();
      v4 = OUTLINED_FUNCTION_28_10();
      __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
      OUTLINED_FUNCTION_4_0();
      v8 = swift_allocObject();
      swift_weakInit();
      v9 = swift_allocObject();
      v9[2] = 0;
      v9[3] = 0;
      v9[4] = v8;
      v10 = OUTLINED_FUNCTION_23_7();
      sub_1E376FE58(v10, v11, v0, v12, v13);
    }
  }

  return result;
}

void sub_1E3C06D04()
{
  OUTLINED_FUNCTION_31_1();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2D2B0);
  OUTLINED_FUNCTION_17_2(v1);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v21 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3DA90);
  OUTLINED_FUNCTION_0_10();
  v21 = v5;
  v22 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_35_3();
  v8 = sub_1E4205754();
  v9 = swift_allocBox();
  (*(*(v8 - 8) + 104))(v10, *MEMORY[0x1E69D3B98], v8);
  sub_1E4205004();
  v11 = sub_1E4204FF4();
  v12 = sub_1E4204FB4();

  v23 = v12;
  sub_1E32ADE38();
  v13 = sub_1E4206A04();
  v24 = v13;
  sub_1E42069A4();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C08);
  sub_1E32752B0(&qword_1EE28A210, &qword_1ECF28C08);
  sub_1E328FC64(&qword_1EE23B1E0, 255, sub_1E32ADE38);
  sub_1E42007D4();
  sub_1E325F6F0(v4, &unk_1ECF2D2B0);

  OUTLINED_FUNCTION_4_0();
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = v9;
  sub_1E32752B0(&qword_1EE28A2A0, &unk_1ECF3DA90);

  OUTLINED_FUNCTION_40_1();
  v20 = v21;
  sub_1E4200844();

  (*(v22 + 8))(v0, v20);
  swift_beginAccess();
  sub_1E42004C4();
  swift_endAccess();

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3C07070()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_12_92();
  Strong = swift_weakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 56) = v2;
    *v2 = v0;
    v2[1] = sub_1E3C0713C;

    return sub_1E3C07220();
  }

  else
  {
    OUTLINED_FUNCTION_54();

    return v4();
  }
}

uint64_t sub_1E3C0713C()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1E3C07220()
{
  OUTLINED_FUNCTION_24();
  v1[35] = v0;
  v2 = sub_1E41FFCB4();
  v1[36] = v2;
  v1[37] = *(v2 - 8);
  v1[38] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  OUTLINED_FUNCTION_17_2(v3);
  v1[39] = swift_task_alloc();
  if (qword_1EE2945C0 != -1)
  {
    OUTLINED_FUNCTION_0_179();
  }

  v4 = qword_1ECF71548;

  return MEMORY[0x1EEE6DFA0](sub_1E3C07334, v4, 0);
}

uint64_t sub_1E3C07334()
{
  v28 = v0;
  v1 = v0[35];
  v2 = v1;
  if (v1[21])
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480);
    sub_1E42064D4();

    v2 = v0[35];
  }

  v3 = v0[39];
  v4 = v0[37];
  v25 = v0[38];
  v26 = v0[36];
  memcpy(v0 + 2, v2 + 4, 0x58uLL);
  v5 = v2[2];
  v6 = v2[3];
  v7 = sub_1E3E36DD8(0x7FFFFFFFFFFFFFFFLL, 0x403E000000000000, 1);
  v9 = v8;
  sub_1E4206444();
  v10 = sub_1E4206474();
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v10);
  v11 = swift_allocObject();
  memcpy(v11 + 2, v0 + 2, 0x58uLL);
  v11[13] = v2;
  v11[14] = v5;
  v11[15] = v6;
  sub_1E3C0596C((v0 + 2), (v0 + 13));

  v12 = sub_1E3E36FC4(v3, v7, v9, &unk_1E42C39B8, v11, MEMORY[0x1E69E7CA8] + 8);

  sub_1E325F6F0(v3, &unk_1ECF2C400);
  v1[21] = v12;

  v13 = sub_1E3E37F30();
  (*(v4 + 16))(v25, v13, v26);
  sub_1E3C0596C((v0 + 2), (v0 + 24));
  v14 = sub_1E41FFC94();
  LOBYTE(v12) = sub_1E42067E4();
  sub_1E3C09510((v0 + 2));
  v15 = os_log_type_enabled(v14, v12);
  v16 = v0[37];
  v17 = v0[38];
  v18 = v0[36];
  if (v15)
  {
    v19 = OUTLINED_FUNCTION_6_21();
    v20 = swift_slowAlloc();
    v27 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_1E3270FC8(v0[3], v0[4], &v27);
    OUTLINED_FUNCTION_7_34(&dword_1E323F000, v21, v22, "Tier1PlusLiveUpdateProvider: subscribe: %s");
    __swift_destroy_boxed_opaque_existential_1(v20);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_55();
  }

  swift_unknownObjectRelease();

  (*(v16 + 8))(v17, v18);

  OUTLINED_FUNCTION_54();

  return v23();
}

void sub_1E3C07600()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v16 = OUTLINED_FUNCTION_42_8();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  OUTLINED_FUNCTION_4_0();
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v2;
  v17[4] = sub_1E3C09C30;
  v17[5] = v8;
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_48_2(COERCE_DOUBLE(1107296256));
  v17[2] = v9;
  v17[3] = &block_descriptor_19_1;
  v10 = _Block_copy(v17);

  sub_1E4203FE4();
  OUTLINED_FUNCTION_18_71();
  sub_1E328FC64(v11, 255, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
  OUTLINED_FUNCTION_4_146();
  sub_1E32752B0(v13, &qword_1ECF2A730);
  OUTLINED_FUNCTION_43_41();
  OUTLINED_FUNCTION_55_30();
  _Block_release(v10);
  v14 = OUTLINED_FUNCTION_60_21();
  v15(v14);
  (*(v5 + 8))(v0, v16);

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3C07840(uint64_t a1, char a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19[-v5];
  OUTLINED_FUNCTION_5_0();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    if (*(result + 176) == 1)
    {
      *(result + 176) = 0;
      OUTLINED_FUNCTION_3_0();
      *(v8 + 160) = MEMORY[0x1E69E7CD0];

      sub_1E4206474();
      OUTLINED_FUNCTION_32_2();
      __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
      OUTLINED_FUNCTION_4_0();
      v13 = swift_allocObject();
      swift_weakInit();
      v14 = swift_allocObject();
      *(v14 + 16) = 0;
      *(v14 + 24) = 0;
      *(v14 + 32) = v13;
      *(v14 + 40) = a2 & 1;
      v15 = OUTLINED_FUNCTION_23_7();
      sub_1E376FE58(v15, v16, v6, v17, v18);
    }
  }

  return result;
}

uint64_t sub_1E3C0799C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 56) = a5;
  *(v5 + 40) = a4;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_1E3C079B4()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_12_92();
  Strong = swift_weakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {
    if (qword_1EE2945C0 != -1)
    {
      OUTLINED_FUNCTION_0_179();
    }

    v2 = qword_1ECF71548;

    return MEMORY[0x1EEE6DFA0](sub_1E3C07A74, v2, 0);
  }

  else
  {
    OUTLINED_FUNCTION_54();

    return v3();
  }
}

uint64_t sub_1E3C07A74()
{
  OUTLINED_FUNCTION_24();
  sub_1E3C07B2C();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1E3C07AD4()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

void sub_1E3C07B2C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v4 = v3;
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  OUTLINED_FUNCTION_17_2(v12);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_35_3();
  if (v2[21])
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480);
    sub_1E42064D4();
  }

  sub_1E4206474();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  v18 = qword_1EE2945C0;

  if (v18 != -1)
  {
    OUTLINED_FUNCTION_0_179();
  }

  v19 = qword_1ECF71548;
  OUTLINED_FUNCTION_17_85();
  v23 = sub_1E328FC64(v20, v21, v22);
  v24 = swift_allocObject();
  *(v24 + 16) = v19;
  *(v24 + 24) = v23;
  *(v24 + 32) = v2;
  *(v24 + 40) = v4 & 1;

  v25 = OUTLINED_FUNCTION_23_7();
  sub_1E3797438(v25, v26, v1, v27, v24);

  sub_1E3C08020();
  v28 = sub_1E3E37F30();
  (*(v7 + 16))(v11, v28, v5);

  v29 = sub_1E41FFC94();
  v30 = sub_1E42067E4();

  if (os_log_type_enabled(v29, v30))
  {
    OUTLINED_FUNCTION_6_21();
    v31 = OUTLINED_FUNCTION_11_16();
    v32 = v31;
    *v19 = 136315138;
    *(v19 + 4) = sub_1E3270FC8(v2[5], v2[6], &v32);
    _os_log_impl(&dword_1E323F000, v29, v30, "Tier1PlusLiveUpdateProvider: unsubscribe: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v31);
    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_6_0();
  }

  (*(v7 + 8))(v11, v5);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3C07DFC()
{
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2_8();
  if ((*(v0 + 144) & 1) == 0)
  {
    sub_1E3E37F30();
    v3 = OUTLINED_FUNCTION_48_30();
    v4(v3);

    v5 = sub_1E41FFC94();
    v6 = sub_1E42067E4();

    if (os_log_type_enabled(v5, v6))
    {
      OUTLINED_FUNCTION_6_21();
      v7 = OUTLINED_FUNCTION_11_16();
      v12 = v7;
      *v1 = 136315138;
      *(v1 + 4) = sub_1E3270FC8(*(v0 + 40), *(v0 + 48), &v12);
      OUTLINED_FUNCTION_62_19(&dword_1E323F000, v8, v9, "Tier1PlusLiveUpdateProvider: Starting Tier 1 fallback provider: %s");
      __swift_destroy_boxed_opaque_existential_1(v7);
      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_6_0();
    }

    v10 = OUTLINED_FUNCTION_57();
    v11(v10);
    *(v0 + 144) = 1;
    sub_1E3C059A8();
    sub_1E3C07F70();
  }
}

uint64_t sub_1E3C07F70()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  OUTLINED_FUNCTION_17_2(v2);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_50_1();
  sub_1E4206474();
  v4 = OUTLINED_FUNCTION_28_10();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_64_18(v8);
  v9 = OUTLINED_FUNCTION_23_7();
  sub_1E376FE58(v9, v10, v0, v11, v1);
}

void sub_1E3C08020()
{
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2_8();
  if (*(v0 + 144) == 1)
  {
    sub_1E3E37F30();
    v3 = OUTLINED_FUNCTION_48_30();
    v4(v3);

    v5 = sub_1E41FFC94();
    v6 = sub_1E42067E4();

    if (os_log_type_enabled(v5, v6))
    {
      OUTLINED_FUNCTION_6_21();
      v7 = OUTLINED_FUNCTION_11_16();
      v12 = v7;
      *v1 = 136315138;
      *(v1 + 4) = sub_1E3270FC8(*(v0 + 40), *(v0 + 48), &v12);
      OUTLINED_FUNCTION_62_19(&dword_1E323F000, v8, v9, "Tier1PlusLiveUpdateProvider: Stopping Tier 1 fallback provider: %s");
      __swift_destroy_boxed_opaque_existential_1(v7);
      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_6_0();
    }

    v10 = OUTLINED_FUNCTION_57();
    v11(v10);
    *(v0 + 144) = 0;
    sub_1E3C059A8();
    sub_1E3C08198();
  }
}

uint64_t sub_1E3C08198()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  OUTLINED_FUNCTION_17_2(v2);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_50_1();
  sub_1E4206474();
  v4 = OUTLINED_FUNCTION_28_10();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_64_18(v8);
  v9 = OUTLINED_FUNCTION_23_7();
  sub_1E376FE58(v9, v10, v0, v11, v1);
}

void sub_1E3C08248()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E4205754();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  v14 = *v1;
  v15 = swift_projectBox();
  OUTLINED_FUNCTION_5_0();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    if (*(Strong + 144) == 1)
    {
      sub_1E3C08020();
    }

    v30 = sub_1E42056A4();
    sub_1E4205044();
    OUTLINED_FUNCTION_3_0();
    (*(v4 + 40))(v15, v13, v2);
    v18 = sub_1E42056D4();
    v19 = sub_1E3C085A8(v18);

    OUTLINED_FUNCTION_5_0();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v20 = *(v17 + 136);
      ObjectType = swift_getObjectType();
      (*(v20 + 32))(v19, ObjectType, v20);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    OUTLINED_FUNCTION_5_0();
    (*(v4 + 16))(v10, v15, v2);
    (*(v4 + 32))(v7, v10, v2);
    if ((*(v4 + 88))(v7, v2) != *MEMORY[0x1E69D3B98])
    {
      (*(v4 + 8))(v7, v2);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v22 = *(v17 + 136);
        v23 = swift_getObjectType();
        (*(v22 + 8))(v14, v23, v22);
        swift_unknownObjectRelease();
      }
    }

    v24 = sub_1E4205694();
    OUTLINED_FUNCTION_3_0();
    *(v17 + 120) = v24 & 1;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v25 = *(v17 + 136);
      v26 = swift_getObjectType();
      v27 = v30;
      v28 = sub_1E4205024();
      (*(v25 + 24))(v28, v26, v25);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_25_2();
}

unint64_t sub_1E3C085A8(uint64_t a1)
{
  v45 = sub_1E4204DD4();
  v3 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v44 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v43 = v35 - v6;
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
    return v8;
  }

  v35[1] = v1;
  v50 = MEMORY[0x1E69E7CC0];
  sub_1E3746CB0(0, v7, 0);
  v8 = v50;
  result = sub_1E3746DC4();
  v12 = 0;
  v13 = a1 + 56;
  v41 = v3 + 16;
  v42 = v3;
  v39 = a1;
  v40 = v3 + 8;
  v36 = a1 + 64;
  v37 = v7;
  v38 = a1 + 56;
  if ((result & 0x8000000000000000) == 0)
  {
    while (result < 1 << *(a1 + 32))
    {
      v14 = result >> 6;
      v15 = 1 << result;
      if ((*(v13 + 8 * (result >> 6)) & (1 << result)) == 0)
      {
        goto LABEL_24;
      }

      if (*(a1 + 36) != v10)
      {
        goto LABEL_25;
      }

      v49 = v11;
      v47 = result;
      v48 = v10;
      v46 = v12;
      v16 = *(a1 + 48);
      v17 = v8;
      v18 = v42;
      v19 = v43;
      v20 = *(v42 + 16);
      v21 = v45;
      v20(v43, v16 + *(v42 + 72) * result, v45);
      v22 = v44;
      v20(v44, v19, v21);
      v23 = sub_1E3D5C7A0(v22);
      v24 = *(v18 + 8);
      v8 = v17;
      result = v24(v19, v21);
      v50 = v17;
      v26 = *(v17 + 16);
      v25 = *(v17 + 24);
      if (v26 >= v25 >> 1)
      {
        result = sub_1E3746CB0((v25 > 1), v26 + 1, 1);
        v8 = v50;
      }

      *(v8 + 16) = v26 + 1;
      *(v8 + v26 + 32) = v23;
      if (v49)
      {
        goto LABEL_29;
      }

      v13 = v38;
      a1 = v39;
      v27 = 1 << *(v39 + 32);
      result = v47;
      if (v47 >= v27)
      {
        goto LABEL_26;
      }

      v28 = *(v38 + 8 * v14);
      if ((v28 & v15) == 0)
      {
        goto LABEL_27;
      }

      if (*(v39 + 36) != v48)
      {
        goto LABEL_28;
      }

      v29 = v28 & (-2 << (v47 & 0x3F));
      if (v29)
      {
        v27 = __clz(__rbit64(v29)) | v47 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v30 = v14 << 6;
        v31 = v14 + 1;
        v32 = (v36 + 8 * v14);
        while (v31 < (v27 + 63) >> 6)
        {
          v34 = *v32++;
          v33 = v34;
          v30 += 64;
          ++v31;
          if (v34)
          {
            sub_1E3746E04(v47, v48, 0);
            v27 = __clz(__rbit64(v33)) + v30;
            goto LABEL_19;
          }
        }

        sub_1E3746E04(v47, v48, 0);
      }

LABEL_19:
      v12 = v46 + 1;
      if (v46 + 1 == v37)
      {
        return v8;
      }

      v11 = 0;
      v10 = *(a1 + 36);
      result = v27;
      if (v27 < 0)
      {
        break;
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
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

BOOL sub_1E3C088F4()
{
  sub_1E4205754();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_2_8();
  v1 = OUTLINED_FUNCTION_57();
  v2(v1);
  v3 = OUTLINED_FUNCTION_16_0();
  v5 = v4(v3);
  v6 = *MEMORY[0x1E69D3B98];
  if (v5 != *MEMORY[0x1E69D3B98])
  {
    v7 = OUTLINED_FUNCTION_16_0();
    v8(v7);
  }

  return v5 != v6;
}

uint64_t sub_1E3C089EC()
{
  OUTLINED_FUNCTION_24();
  v0[28] = v1;
  v0[29] = v2;
  v0[26] = v3;
  v0[27] = v4;
  v0[24] = v5;
  v0[25] = v6;
  v7 = sub_1E41FFCB4();
  v0[30] = v7;
  v0[31] = *(v7 - 8);
  v0[32] = swift_task_alloc();
  v0[33] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1E3C08AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11)
{
  v12 = v11[25];
  ObjectType = swift_getObjectType();
  v14 = *(v12 + 24);
  if (v14(ObjectType, v12) >= 1)
  {
    v15 = v11[33];
    v16 = v11[30];
    v17 = v11[31];
    v18 = v11[26];
    v19 = sub_1E3E37F30();
    (*(v17 + 16))(v15, v19, v16);
    sub_1E3C0596C(v18, (v11 + 13));
    v20 = sub_1E41FFC94();
    LOBYTE(v17) = sub_1E42067E4();
    sub_1E3C09510(v18);
    v21 = os_log_type_enabled(v20, v17);
    v22 = v11[33];
    v24 = v11[30];
    v23 = v11[31];
    if (v21)
    {
      v42 = v11[33];
      v25 = v11[26];
      v41 = v11[30];
      v26 = OUTLINED_FUNCTION_6_21();
      v27 = swift_slowAlloc();
      v44 = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_1E3270FC8(*(v25 + 8), *(v25 + 16), &v44);
      OUTLINED_FUNCTION_7_34(&dword_1E323F000, v28, v29, "Tier1PlusLiveUpdateProvider: retrying subscribeToEvents: %s");
      __swift_destroy_boxed_opaque_existential_1(v27);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_55();

      (*(v23 + 8))(v42, v41);
    }

    else
    {

      (*(v23 + 8))(v22, v24);
    }

    if (v14(ObjectType, v11[25]) >= 3)
    {
      sub_1E3C07DFC();
    }
  }

  v30 = v11[26];
  v11[34] = *sub_1E3C7AFC8();
  v31 = *v30;
  v32 = v30[1];
  v11[35] = v32;
  v33 = v30[2];
  v11[36] = v33;
  v34 = v30[3];
  v35 = v30[4];
  v36 = v30[5];

  v37 = swift_task_alloc();
  v11[37] = v37;
  *v37 = v11;
  v37[1] = sub_1E3C08D34;
  v38 = v11[28];
  v39 = v11[29];

  return sub_1E3C7B4AC(v31, v38, v39, v32, v33, v34, v35, v36, a9, a10, a11);
}

uint64_t sub_1E3C08D34()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_31();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  *(v3 + 304) = v0;

  if (v0)
  {
    v7 = sub_1E3C08FEC;
  }

  else
  {

    v7 = sub_1E3C08E3C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E3C08E3C()
{
  v21 = v0;
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  v4 = v0[26];
  v5 = sub_1E3E37F30();
  (*(v2 + 16))(v1, v5, v3);
  sub_1E3C0596C(v4, (v0 + 2));
  v6 = sub_1E41FFC94();
  v7 = sub_1E42067E4();
  sub_1E3C09510(v4);
  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[35];
    v8 = v0[36];
    v11 = v0[31];
    v10 = v0[32];
    v12 = v0[30];
    v13 = OUTLINED_FUNCTION_6_21();
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_1E3270FC8(v9, v8, &v20);
    _os_log_impl(&dword_1E323F000, v6, v7, "Tier1PlusLiveUpdateProvider: subscribeToEvent success: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    (*(v11 + 8))(v10, v12);
  }

  else
  {
    v16 = v0[31];
    v15 = v0[32];
    v17 = v0[30];

    (*(v16 + 8))(v15, v17);
  }

  OUTLINED_FUNCTION_54();

  return v18();
}

uint64_t sub_1E3C08FEC()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

uint64_t sub_1E3C0905C()
{
  OUTLINED_FUNCTION_24();
  *(v0 + 64) = v1;
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  if (qword_1EE2945C0 != -1)
  {
    OUTLINED_FUNCTION_0_179();
  }

  v4 = qword_1ECF71548;
  *(v0 + 32) = qword_1ECF71548;

  return MEMORY[0x1EEE6DFA0](sub_1E3C090E8, v4, 0);
}

uint64_t sub_1E3C090E8()
{
  *(v0 + 40) = *sub_1E3C7AFC8();

  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1E3C091C0;

  return sub_1E3C7BB58();
}

uint64_t sub_1E3C091C0()
{
  OUTLINED_FUNCTION_27_2();
  v2 = *v1;
  OUTLINED_FUNCTION_31();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 56) = v0;

  v5 = *(v2 + 32);
  if (v0)
  {

    v6 = sub_1E3C0A04C;
  }

  else
  {

    v6 = sub_1E3C09314;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1E3C09354()
{
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_14_0();
  *(v1 + 136) = v0;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_1E3C093A4()
{
  v2 = OUTLINED_FUNCTION_61_19();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_27_50(v3);
  OUTLINED_FUNCTION_36_38();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v0 + 136);
  *(v1 + 24) = Strong;
  *(v1 + 32) = v5;
  return OUTLINED_FUNCTION_40_1();
}

void sub_1E3C09408()
{
  OUTLINED_FUNCTION_49_34();
  *(v2 + 136) = v3;
  swift_unknownObjectWeakAssign();
  if (v1)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v0);
}

uint64_t sub_1E3C09480()
{
  OUTLINED_FUNCTION_26_62();
  *(v1 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 32) = v7;
  *(v1 + 40) = v6;
  *(v1 + 48) = v5;
  *(v1 + 56) = v4;
  OUTLINED_FUNCTION_14_0();
  *(v1 + 24) = v3;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  *(v1 + 80) = v8;
  return v1;
}

uint64_t sub_1E3C09554()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_12_92();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {
    v2 = *(v0 + 40);
    *(v0 + 56) = *(v2 + 24);
    v3 = sub_1E376DBD0();
    v4 = *v3;
    *(v0 + 64) = *v3;
    *(v0 + 72) = *(v2 + 32);
    *(v0 + 80) = *(v2 + 40);
    *(v0 + 88) = *(v2 + 48);
    *(v0 + 96) = *(v2 + 56);
    *(v0 + 128) = *(v2 + 64);
    *(v0 + 104) = *(v2 + 72);
    *(v0 + 129) = *(v2 + 80);
    v5 = *v4;
    *(v0 + 112) = *(*v4 + 488);
    *(v0 + 120) = (v5 + 488) & 0xFFFFFFFFFFFFLL | 0x306F000000000000;

    v6 = OUTLINED_FUNCTION_32_0();

    return MEMORY[0x1EEE6DFA0](v6, v7, 0);
  }

  else
  {
    OUTLINED_FUNCTION_54();

    return v8();
  }
}

uint64_t sub_1E3C0967C()
{
  OUTLINED_FUNCTION_24();
  v5 = *(v0 + 129);
  (*(v0 + 112))(*(v0 + 48), *(v0 + 56), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 128), *(v0 + 104), v5, v0);

  v1 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1E3C09710()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_12_92();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {
    v2 = *(v0 + 40);
    *(v0 + 56) = *(v2 + 24);
    v3 = sub_1E376DBD0();
    v4 = *v3;
    *(v0 + 64) = *v3;
    *(v0 + 72) = *(v2 + 32);
    *(v0 + 80) = *(v2 + 40);
    *(v0 + 104) = *(v2 + 64);
    v5 = *v4;
    *(v0 + 88) = *(*v4 + 496);
    *(v0 + 96) = (v5 + 496) & 0xFFFFFFFFFFFFLL | 0xE5C6000000000000;

    v6 = OUTLINED_FUNCTION_32_0();

    return MEMORY[0x1EEE6DFA0](v6, v7, 0);
  }

  else
  {
    OUTLINED_FUNCTION_54();

    return v8();
  }
}

uint64_t sub_1E3C09818()
{
  OUTLINED_FUNCTION_24();
  (*(v0 + 88))(*(v0 + 48), *(v0 + 56), *(v0 + 72), *(v0 + 80), *(v0 + 104));

  v1 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1E3C0988C()
{
  OUTLINED_FUNCTION_24();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_54();

  return v0();
}

uint64_t sub_1E3C098E4()
{
  sub_1E32AF6F8(v0 + 16);

  return v0;
}

uint64_t sub_1E3C0991C()
{
  sub_1E3C098E4();

  return MEMORY[0x1EEE6BDC0](v0, 81, 7);
}

uint64_t sub_1E3C0998C()
{
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_14_0();
  *(v1 + 24) = v0;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_1E3C099DC()
{
  v2 = OUTLINED_FUNCTION_61_19();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_27_50(v3);
  OUTLINED_FUNCTION_36_38();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v0 + 24);
  *(v1 + 24) = Strong;
  *(v1 + 32) = v5;
  return OUTLINED_FUNCTION_40_1();
}

void sub_1E3C09A40()
{
  OUTLINED_FUNCTION_49_34();
  *(v2 + 24) = v3;
  swift_unknownObjectWeakAssign();
  if (v1)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v0);
}

uint64_t sub_1E3C09AB4()
{
  v1 = v0[5];
  v3 = v0[6];
  v2 = v0[7];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_14_3(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_57_18(v5);

  return sub_1E3C064D0(v7, v8, v9, v10, v1, v3, v2);
}

uint64_t sub_1E3C09B70()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  v1[1] = sub_1E3286A7C;

  return sub_1E3C089EC();
}

uint64_t sub_1E3C09C60()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_14_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_57_18(v1);

  return sub_1E3C0905C();
}

uint64_t sub_1E3C09CF8()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_46_34(v1);

  return sub_1E3C09540(v3, v4, v5, v6);
}

uint64_t sub_1E3C09D7C()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_46_34(v1);

  return sub_1E3C096FC(v3, v4, v5, v6);
}

uint64_t sub_1E3C09E5C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1E3C09E9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E3C09F20()
{
  OUTLINED_FUNCTION_24();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_30_0(v3);
  *v4 = v7;
  v4[1] = sub_1E327C238;

  return sub_1E3C0799C(v4, v5, v6, v1, v2);
}

uint64_t sub_1E3C09FB4()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_46_34(v1);

  return sub_1E3C0705C(v3, v4, v5, v6);
}

void OUTLINED_FUNCTION_62_19(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

__n128 sub_1E3C0A0A4@<Q0>(__n128 *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960);
  sub_1E42038E4();
  type metadata accessor for AppEnvironment();
  OUTLINED_FUNCTION_5_137();
  sub_1E3C0E828(v2, v3);
  v4 = sub_1E4201754();
  v6 = v5;
  type metadata accessor for LibDataSourceManager();
  OUTLINED_FUNCTION_6_122();
  sub_1E3C0E828(v7, v8);
  a1->n128_u64[0] = sub_1E42010C4();
  a1->n128_u64[1] = v9;
  result = v11;
  a1[1] = v11;
  a1[2].n128_u64[0] = v12;
  a1[2].n128_u64[1] = v4;
  a1[3].n128_u64[0] = v6;
  a1[3].n128_u64[1] = 0x4D7972617262694CLL;
  a1[4].n128_u64[0] = 0xEB000000006E6961;
  return result;
}

void sub_1E3C0A1CC()
{
  OUTLINED_FUNCTION_31_1();
  v81 = v3;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35288);
  OUTLINED_FUNCTION_0_10();
  v72 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_20_1();
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35290);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8_4();
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35298);
  OUTLINED_FUNCTION_0_10();
  v71 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v70 - v9;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF352A0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44();
  v79 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF352A8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v70 - v14;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF352B0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_44();
  v75 = v17;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF352B8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v70 - v20;
  v22 = v0;
  v23 = *(v0 + 8);
  v24 = (*(*v23 + 456))(v19);
  v25 = sub_1E32AE9B0(v24);

  if (v25)
  {
    v26 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_8();
    v26 = (*(v27 + 360))();
  }

  OUTLINED_FUNCTION_8();
  if ((*(v28 + 848))())
  {
    if (v26)
    {
      v84 = 0;
      v82 = 0u;
      v83 = 0u;
      OUTLINED_FUNCTION_8();
      v30 = (*(v29 + 312))();
      v31 = (*(*v23 + 872))();
      sub_1E414B880(&v82, 0, v30 & 1, v31 & 1, &v85);
      v82 = 0u;
      v83 = 0u;
      LOBYTE(v84) = 1;
      v32 = sub_1E3C0D540();
      sub_1E3A6929C(5, 0, 0, 1, &v82, &type metadata for LibEmptyLibraryView, v32);
      sub_1E3C0D710(&v85);
      OUTLINED_FUNCTION_17_6();
      v33 = swift_allocObject();
      OUTLINED_FUNCTION_23_61(v33);
      v34 = &v21[*(v74 + 36)];
      *v34 = sub_1E3C0EB50;
      *(v34 + 1) = v33;
      *(v34 + 2) = 0;
      *(v34 + 3) = 0;
      v35 = &qword_1ECF352B8;
      sub_1E3743538(v21, v15, &qword_1ECF352B8);
      swift_storeEnumTagMultiPayload();
      sub_1E3C0D764(v22, &v85);
      sub_1E3C0D488();
      v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF352F0);
      v37 = sub_1E42026A4();
      OUTLINED_FUNCTION_1_174();
      v39 = sub_1E374AD40(v38, &qword_1ECF352F0);
      OUTLINED_FUNCTION_0_180();
      v42 = sub_1E3C0E828(v40, v41);
      v85 = v36;
      v86 = v37;
      v87 = v39;
      v88 = v42;
      OUTLINED_FUNCTION_7_141();
      v43 = v75;
      sub_1E4201F44();
      sub_1E3743538(v43, v79, &qword_1ECF352B0);
      swift_storeEnumTagMultiPayload();
      sub_1E3C0D33C();
      sub_1E3C0D594();
      sub_1E4201F44();
      sub_1E325F69C(v43, &qword_1ECF352B0);
      v44 = v21;
LABEL_10:
      sub_1E325F69C(v44, v35);
      goto LABEL_11;
    }

LABEL_9:
    OUTLINED_FUNCTION_8();
    (*(v58 + 904))();
    sub_1E3C0ACB8();
    type metadata accessor for Accessibility();
    sub_1E40A7DC8();

    v59 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF352C0);
    v60 = sub_1E42026A4();
    OUTLINED_FUNCTION_1_174();
    v62 = sub_1E374AD40(v61, &qword_1ECF352C0);
    OUTLINED_FUNCTION_0_180();
    v65 = sub_1E3C0E828(v63, v64);
    v85 = v59;
    v86 = v60;
    v87 = v62;
    v88 = v65;
    OUTLINED_FUNCTION_7_141();
    v66 = v73;
    sub_1E4202EA4();

    (*(v72 + 8))(v2, v66);
    v35 = &qword_1ECF35290;
    OUTLINED_FUNCTION_12_12();
    sub_1E3743538(v67, v68, v69);
    swift_storeEnumTagMultiPayload();
    sub_1E3C0D33C();
    sub_1E3C0D594();
    sub_1E4201F44();
    v44 = v1;
    goto LABEL_10;
  }

  if ((v26 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_1E3C0AA98();
  v45 = v71;
  v46 = v76;
  (*(v71 + 16))(v15, v10, v76);
  swift_storeEnumTagMultiPayload();
  sub_1E3C0D488();
  v47 = OUTLINED_FUNCTION_34();
  v48 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v47);
  v49 = sub_1E42026A4();
  OUTLINED_FUNCTION_1_174();
  v51 = sub_1E374AD40(v50, &qword_1ECF352F0);
  OUTLINED_FUNCTION_0_180();
  v54 = sub_1E3C0E828(v52, v53);
  v85 = v48;
  v86 = v49;
  v87 = v51;
  v88 = v54;
  OUTLINED_FUNCTION_7_141();
  v55 = v75;
  sub_1E4201F44();
  sub_1E3743538(v55, v79, &qword_1ECF352B0);
  swift_storeEnumTagMultiPayload();
  sub_1E3C0D33C();
  sub_1E3C0D594();
  sub_1E4201F44();
  OUTLINED_FUNCTION_82();
  sub_1E325F69C(v56, v57);
  (*(v45 + 8))(v10, v46);
LABEL_11:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3C0AA98()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E42026A4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF352F0);
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35388);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35390);
  sub_1E3C0DB1C();
  sub_1E3C0DC28();
  sub_1E4201DC4();
  sub_1E42023B4();
  OUTLINED_FUNCTION_1_174();
  sub_1E374AD40(v6, &qword_1ECF352F0);
  OUTLINED_FUNCTION_0_180();
  sub_1E3C0E828(v7, v8);
  OUTLINED_FUNCTION_12_12();
  sub_1E4202CB4();
  v9 = OUTLINED_FUNCTION_13_8();
  v10(v9);
  (*(v4 + 8))(v0, v2);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3C0ACB8()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E42026A4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF352C0);
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF353B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF353C0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF353C8);
  sub_1E3C0DD78();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF35418);
  OUTLINED_FUNCTION_16_90();
  sub_1E374AD40(v6, &qword_1ECF35418);
  sub_1E32822E0();
  swift_getOpaqueTypeConformance2();
  sub_1E4201DC4();
  sub_1E42023B4();
  OUTLINED_FUNCTION_1_174();
  sub_1E374AD40(v7, &qword_1ECF352C0);
  OUTLINED_FUNCTION_0_180();
  sub_1E3C0E828(v8, v9);
  OUTLINED_FUNCTION_12_12();
  sub_1E4202CB4();
  v10 = OUTLINED_FUNCTION_13_8();
  v11(v10);
  (*(v4 + 8))(v0, v2);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3C0AF7C(__int128 *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF353C8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_20_1();
  sub_1E3C0B0D8();
  v5 = sub_1E3C0B7FC();
  v13 = *a1;
  v6 = *(&v13 + 1);
  v7 = (v1 + *(v3 + 36));
  *v7 = v5;
  v7[1] = v8;
  v7[2] = v6;
  OUTLINED_FUNCTION_17_6();
  v9 = swift_allocObject();
  memcpy((v9 + 16), a1, 0x48uLL);
  sub_1E3743538(&v13, v12, &qword_1ECF35458);
  sub_1E3C0D764(a1, v12);
  sub_1E3C0DD78();
  v10 = OUTLINED_FUNCTION_51_1();
  sub_1E40AB6EC(v10 & 1);

  return sub_1E325F69C(v1, &qword_1ECF353C8);
}

void sub_1E3C0B0D8()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v49 = v3;
  v4 = sub_1E4201574();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF353F8);
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8_4();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF353E8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v45 - v16;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF353E0);
  OUTLINED_FUNCTION_0_10();
  v46 = v18;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_44();
  v51 = v20;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF353D8);
  OUTLINED_FUNCTION_0_10();
  v48 = v21;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_44();
  v52 = v23;
  v59 = *(v0 + 16);
  v60 = *(v0 + 32);
  v57 = *(v0 + 16);
  v58 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF290F0);
  sub_1E4203914();
  v53 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35460);
  sub_1E3C0E59C();
  sub_1E4202AD4();
  sub_1E4201564();
  sub_1E374AD40(&qword_1ECF35400, &qword_1ECF353F8);
  sub_1E42035B4();
  (*(v6 + 8))(v10, v4);
  (*(v13 + 8))(v1, v11);
  OUTLINED_FUNCTION_17_6();
  v24 = swift_allocObject();
  OUTLINED_FUNCTION_23_61(v24);
  v25 = &v17[*(v50 + 36)];
  *v25 = sub_1E3C0E870;
  v25[1] = v24;
  v25[2] = 0;
  v25[3] = 0;
  v57 = v59;
  v58 = v60;
  OUTLINED_FUNCTION_39_38();
  sub_1E42038F4();
  v57 = v54;
  OUTLINED_FUNCTION_17_6();
  v26 = swift_allocObject();
  OUTLINED_FUNCTION_23_61(v26);
  OUTLINED_FUNCTION_39_38();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960);
  v28 = sub_1E3C0DF80();
  v29 = sub_1E3C0E09C();
  sub_1E4203524();

  v30 = sub_1E325F69C(v17, &qword_1ECF353E8);
  v31 = *(v2 + 8);
  *&v57 = (*(*v31 + 456))(v30);
  OUTLINED_FUNCTION_17_6();
  v32 = swift_allocObject();
  OUTLINED_FUNCTION_23_61(v32);
  OUTLINED_FUNCTION_39_38();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33C60);
  *&v54 = v50;
  *(&v54 + 1) = v27;
  v55 = v28;
  v56 = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = sub_1E3C0E118(&qword_1ECF35408, &qword_1ECF33C60);
  v36 = v51;
  v37 = v45;
  sub_1E4203524();

  v38 = (*(v46 + 8))(v36, v37);
  *&v57 = (*(*v31 + 408))(v38);
  OUTLINED_FUNCTION_17_6();
  v39 = swift_allocObject();
  OUTLINED_FUNCTION_23_61(v39);
  OUTLINED_FUNCTION_39_38();
  v40 = OUTLINED_FUNCTION_57();
  __swift_instantiateConcreteTypeFromMangledNameV2(v40);
  *&v54 = v37;
  *(&v54 + 1) = v33;
  v55 = OpaqueTypeConformance2;
  v56 = v35;
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_82();
  sub_1E3C0E118(v41, v42);
  sub_1E4203524();

  v43 = OUTLINED_FUNCTION_57();
  v44(v43);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3C0B7FC()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 672))();
  sub_1E37D9AD0(v1, &v6);

  if (v7)
  {
    sub_1E37DADF4(&v6, v8);
    sub_1E327F454(v8, &v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3B640);
    type metadata accessor for LibLocalSource();
    if (swift_dynamicCast())
    {
    }

    else
    {
      v2 = v9;
      v3 = v10;
      __swift_project_boxed_opaque_existential_1(v8, v9);
      (*(v3 + 24))(v2, v3);
    }

    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    sub_1E325F69C(&v6, &unk_1ECF2A740);
  }

  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1E3C0B940(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35418);
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15[-v6];
  v16 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35428);
  sub_1E3C0E1CC();
  sub_1E42013C4();
  v18 = *(a1 + 16);
  v19 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF290F0);
  sub_1E42038F4();
  v8 = v17;
  if (!v17)
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_8();
  v10 = (*(v9 + 824))();

  if (!v10)
  {
    v8 = 0;
LABEL_5:
    v11 = 0xE000000000000000;
    goto LABEL_6;
  }

  v8 = *(v10 + 40);
  v11 = *(v10 + 48);

LABEL_6:
  *&v18 = v8;
  *(&v18 + 1) = v11;
  OUTLINED_FUNCTION_16_90();
  sub_1E374AD40(v12, v13);
  sub_1E32822E0();
  sub_1E4203034();

  return (*(v4 + 8))(v7, v2);
}

void sub_1E3C0BB48()
{
  OUTLINED_FUNCTION_31_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35450);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_139();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35440);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_20_1();
  v9[0] = *(v0 + 16);
  *&v9[1] = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF290F0);
  sub_1E42038F4();
  if (v8[1] && (OUTLINED_FUNCTION_8(), v6 = (*(v5 + 824))(), , v6))
  {
    *&v9[0] = 0x2E7972617262694CLL;
    *(&v9[0] + 1) = 0xEB000000003D6469;
    sub_1E3A8CC3C(*(v6 + 32));
    MEMORY[0x1E69109E0]();

    sub_1E3C0F210(v7, 0, v8);
    type metadata accessor for Accessibility();
    sub_1E40A7DC8();

    sub_1E3C0E314();
    sub_1E4202EA4();

    memcpy(v9, v8, 0x78uLL);
    sub_1E3C0E368(v9);
    sub_1E3743538(v2, v1, &qword_1ECF35440);
    swift_storeEnumTagMultiPayload();
    sub_1E3C0E258();
    OUTLINED_FUNCTION_34();
    sub_1E4201F44();

    sub_1E325F69C(v2, &qword_1ECF35440);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1E3C0E258();
    OUTLINED_FUNCTION_34();
    sub_1E4201F44();
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3C0BDFC()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  type metadata accessor for LibSidebarItemViewVisionOS(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF354B0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8_4();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35488);
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  OUTLINED_FUNCTION_5_7();
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = v26 - v15;
  v17 = *v2;
  v18 = (*(**v2 + 288))(v14);
  if (!v18)
  {
    goto LABEL_5;
  }

  v19 = v18;
  if (!sub_1E32AE9B0(v18))
  {

LABEL_5:

    sub_1E3DC4260(v23, v8);
    sub_1E3C0E98C(v8, v0);
    swift_storeEnumTagMultiPayload();
    sub_1E3C0E6DC();
    OUTLINED_FUNCTION_4_147();
    sub_1E3C0E828(v24, v25);
    OUTLINED_FUNCTION_12_12();
    sub_1E4201F44();
    sub_1E3C0E9F0(v8);
    goto LABEL_6;
  }

  v26[0] = v26;
  v20 = *(v17 + 48);
  v26[2] = *(v17 + 40);
  v26[3] = v20;
  MEMORY[0x1EEE9AC00](v20);
  v26[-2] = v19;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35498);
  sub_1E3C0E774();
  v26[1] = v4;
  sub_1E32822E0();
  sub_1E4203B84();

  (*(v12 + 16))(v0, v16, v10);
  swift_storeEnumTagMultiPayload();
  sub_1E3C0E6DC();
  OUTLINED_FUNCTION_4_147();
  sub_1E3C0E828(v21, v22);
  OUTLINED_FUNCTION_12_12();
  sub_1E4201F44();
  (*(v12 + 8))(v16, v10);
LABEL_6:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3C0C124@<X0>(uint64_t a1@<X8>)
{

  return sub_1E3DC4260(v2, a1);
}

void sub_1E3C0C160()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = sub_1E41A3110();
  (*(v4 + 16))(v8, v9, v2);
  sub_1E3C0D764(v1, &v31);
  v10 = sub_1E41FFC94();
  v11 = sub_1E4206814();
  sub_1E3B4F8E0(v1);
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v12 = 136315138;
    OUTLINED_FUNCTION_37_43();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF290F0);
    sub_1E42038F4();
    OUTLINED_FUNCTION_19_80();
    v18 = v17 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
    if (v13)
    {
      v19 = v18;
    }

    else
    {
      v19 = v14;
    }

    if (v13)
    {
      v20 = v16;
    }

    else
    {
      v20 = v15;
    }

    v21 = sub_1E3270FC8(v19, v20, &v27);

    *(v12 + 4) = v21;
    _os_log_impl(&dword_1E323F000, v10, v11, "LibSidebarViewVisionOS:: on Appear: selectedMenuId %s", v12, 0xCu);
    OUTLINED_FUNCTION_5_21();
    MEMORY[0x1E69143B0](v12, -1, -1);
  }

  v22 = (*(v4 + 8))(v8, v2);
  v23 = *(v1 + 8);
  v24 = (*(*v23 + 408))(v22);
  if (v24)
  {
    v26 = *(v24 + 16);
    v25 = *(v24 + 24);
  }

  else
  {
    v26 = 0;
    v25 = 0;
  }

  OUTLINED_FUNCTION_37_43();
  v29 = *(v1 + 16);
  v30 = *(v1 + 32);
  v27 = v26;
  v28 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF290F0);
  sub_1E4203904();
  v29 = v31;
  v30 = v32;
  sub_1E42038F4();
  (*(*v23 + 832))(v27, v28);

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3C0C43C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  v3 = *(v1 + 8);
  v4 = (*(*v3 + 408))();
  if (v4)
  {
    v6 = *(v4 + 16);
    v5 = *(v4 + 24);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v28 = *(v1 + 16);
  v29 = *(v1 + 32);
  v24 = *(v1 + 16);
  v25 = *(v1 + 32);
  v26 = v6;
  v27 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF290F0);
  sub_1E4203904();
  OUTLINED_FUNCTION_11_101();
  sub_1E42038F4();
  (*(*v3 + 832))(v6, v5);

  sub_1E41A3110();
  v7 = OUTLINED_FUNCTION_18_61();
  v8(v7);
  sub_1E3C0D764(v1, &v24);
  v9 = sub_1E41FFC94();
  v10 = sub_1E4206814();
  sub_1E3B4F8E0(v1);
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v11 = 136315138;
    OUTLINED_FUNCTION_11_101();
    sub_1E42038F4();
    OUTLINED_FUNCTION_19_80();
    v17 = v16 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
    if (v12)
    {
      v18 = v17;
    }

    else
    {
      v18 = v13;
    }

    if (v12)
    {
      v19 = v15;
    }

    else
    {
      v19 = v14;
    }

    v20 = sub_1E3270FC8(v18, v19, &v23);

    *(v11 + 4) = v20;
    _os_log_impl(&dword_1E323F000, v9, v10, "LibSidebarViewVisionOS:: onChange libSource, reset selectedMenuId %s", v11, 0xCu);
    OUTLINED_FUNCTION_5_21();
    MEMORY[0x1E69143B0](v11, -1, -1);
  }

  v21 = OUTLINED_FUNCTION_13_8();
  v22(v21);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3C0C6F4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  if (*v3)
  {
    v5 = *(*v3 + 16);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v28 = *(v1 + 16);
  v29 = *(v1 + 32);
  v24 = *(v1 + 16);
  v25 = *(v1 + 32);
  v26 = v5;
  v27 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF290F0);
  sub_1E4203904();
  sub_1E41A3110();
  v7 = OUTLINED_FUNCTION_18_61();
  v8(v7);
  sub_1E3C0D764(v1, &v24);
  v9 = sub_1E41FFC94();
  v10 = sub_1E4206814();
  sub_1E3B4F8E0(v1);
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v11 = 136315138;
    OUTLINED_FUNCTION_11_101();
    sub_1E42038F4();
    OUTLINED_FUNCTION_19_80();
    v17 = v16 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
    if (v12)
    {
      v18 = v17;
    }

    else
    {
      v18 = v13;
    }

    if (v12)
    {
      v19 = v15;
    }

    else
    {
      v19 = v14;
    }

    v20 = sub_1E3270FC8(v18, v19, &v23);

    *(v11 + 4) = v20;
    _os_log_impl(&dword_1E323F000, v9, v10, "LibSidebarViewVisionOS:: onChange selectedMenuItem, new selectedMenuId %s", v11, 0xCu);
    OUTLINED_FUNCTION_5_21();
    MEMORY[0x1E69143B0](v11, -1, -1);
  }

  v21 = OUTLINED_FUNCTION_13_8();
  v22(v21);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3C0C950()
{
  OUTLINED_FUNCTION_31_1();
  v24 = v0;
  v25 = v1;
  v3 = v2;
  v27 = v4;
  v5 = sub_1E4201AE4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35318);
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  OUTLINED_FUNCTION_5_7();
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v24 - v16;
  (*(v7 + 104))(v11, *MEMORY[0x1E697C428], v5, v15);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35320);
  OUTLINED_FUNCTION_1_11();
  v20 = sub_1E374AD40(v19, &qword_1ECF35320);
  sub_1E42033D4();
  (*(v7 + 8))(v11, v5);
  v28 = v3;
  v29 = v24;
  v30 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35330);
  v31 = v18;
  v32 = v20;
  OUTLINED_FUNCTION_7_18();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_13_105();
  sub_1E374AD40(v21, v22);
  v23 = v26;
  sub_1E4203504();
  (*(v13 + 8))(v17, v23);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3C0CB9C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v35 = v4;
  v36 = v2;
  v5 = v4;
  v43 = v6;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35340);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  v40 = v8;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35348);
  OUTLINED_FUNCTION_0_10();
  v39 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44();
  v38 = v11;
  v12 = sub_1E4202034();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v18 = v17 - v16;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35350);
  OUTLINED_FUNCTION_0_10();
  v20 = v19;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v34 - v22;
  v24 = sub_1E3BF7A38();
  v25 = *(v14 + 16);
  v25(v18, v24, v12);
  v47 = v5;
  v48 = v3;
  v49 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35358);
  sub_1E374AD40(&qword_1ECF35360, &qword_1ECF35358);
  sub_1E4200C04();
  v26 = sub_1E3BF7AD8();
  v25(v18, v26, v12);
  v44 = v35;
  v45 = v36;
  v46 = v1;
  sub_1E3C0D91C();
  v27 = v38;
  sub_1E4200C04();
  v28 = *(v42 + 48);
  v29 = v40;
  v30 = v37;
  (*(v20 + 16))(v40, v23, v37);
  v31 = v39;
  v32 = v29 + v28;
  v33 = v41;
  (*(v39 + 16))(v32, v27, v41);
  sub_1E4201E04();
  (*(v31 + 8))(v27, v33);
  (*(v20 + 8))(v23, v30);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3C0CF0C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35378);
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v62 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v62 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v62 - v19;
  v21 = [objc_opt_self() sharedInstance];
  if (!v21)
  {
    __break(1u);
    goto LABEL_9;
  }

  v22 = v21;
  v63 = v3;
  v64 = v1;
  v69 = v8;
  v70 = v20;
  v65 = v17;
  v66 = v14;
  v67 = v11;
  v68 = v5;
  v23 = sub_1E3741090(0x5952415242494CLL, 0xE700000000000000, v21);
  v25 = v24;

  if (!v25)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v71 = v23;
  v72 = v25;
  v62[1] = sub_1E32822E0();
  v26 = sub_1E4202C44();
  v28 = v27;
  v30 = v29;
  sub_1E42029E4();
  v31 = sub_1E4202C04();
  v33 = v32;
  v35 = v34;
  v37 = v36;

  sub_1E37434B8(v26, v28, v30 & 1);

  v71 = v31;
  v72 = v33;
  v73 = v35 & 1;
  v74 = v37;
  v38 = *sub_1E3E5FD88();
  sub_1E39B9138();

  sub_1E37434B8(v31, v33, v35 & 1);

  v39 = v63;
  if (!v64)
  {
    v39 = 0;
  }

  v40 = 0xE000000000000000;
  if (v64)
  {
    v40 = v64;
  }

  v71 = v39;
  v72 = v40;

  sub_1E4202C44();
  sub_1E4202854();
  OUTLINED_FUNCTION_82();
  v41 = sub_1E4202C04();
  v43 = v42;
  v45 = v44;
  v47 = v46;

  v48 = OUTLINED_FUNCTION_57();
  sub_1E37434B8(v48, v49, v50);

  v71 = v41;
  v72 = v43;
  v51 = v45 & 1;
  v73 = v45 & 1;
  v74 = v47;
  v52 = *sub_1E3E60364();
  v53 = v65;
  sub_1E39B9138();

  sub_1E37434B8(v41, v43, v51);

  v54 = v69;
  v55 = v70;
  v56 = *(v69 + 16);
  v57 = v66;
  v56(v66, v70, v6);
  v58 = v67;
  v56(v67, v53, v6);
  v59 = v68;
  v56(v68, v57, v6);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35380);
  v56(&v59[*(v60 + 48)], v58, v6);
  v61 = *(v54 + 8);
  v61(v53, v6);
  v61(v55, v6);
  v61(v58, v6);
  v61(v57, v6);
  OUTLINED_FUNCTION_25_2();
}

unint64_t sub_1E3C0D33C()
{
  result = qword_1ECF352D8;
  if (!qword_1ECF352D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF352B0);
    sub_1E3C0D488();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF352F0);
    sub_1E42026A4();
    sub_1E374AD40(&qword_1ECF352F8, &qword_1ECF352F0);
    sub_1E3C0E828(&qword_1ECF352D0, MEMORY[0x1E697CC38]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF352D8);
  }

  return result;
}

unint64_t sub_1E3C0D488()
{
  result = qword_1ECF352E0;
  if (!qword_1ECF352E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF352B8);
    sub_1E3C0D540();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF352E0);
  }

  return result;
}

unint64_t sub_1E3C0D540()
{
  result = qword_1ECF352E8;
  if (!qword_1ECF352E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF352E8);
  }

  return result;
}

unint64_t sub_1E3C0D594()
{
  result = qword_1ECF35300;
  if (!qword_1ECF35300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF35290);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF352C0);
    sub_1E42026A4();
    sub_1E374AD40(&qword_1ECF352C8, &qword_1ECF352C0);
    sub_1E3C0E828(&qword_1ECF352D0, MEMORY[0x1E697CC38]);
    swift_getOpaqueTypeConformance2();
    sub_1E3C0E828(&qword_1EE288768, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF35300);
  }

  return result;
}

unint64_t sub_1E3C0D7C0()
{
  result = qword_1ECF35308;
  if (!qword_1ECF35308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF35310);
    sub_1E3C0D33C();
    sub_1E3C0D594();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF35308);
  }

  return result;
}

void sub_1E3C0D87C(uint64_t a1@<X8>)
{
  *a1 = sub_1E4201D54();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35370);
  sub_1E3C0CF0C();
}

uint64_t sub_1E3C0D8E0@<X0>(uint64_t a1@<X8>)
{

  result = sub_1E3F18F50();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

unint64_t sub_1E3C0D91C()
{
  result = qword_1ECF35368;
  if (!qword_1ECF35368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF35368);
  }

  return result;
}

uint64_t sub_1E3C0D970@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  sub_1E4202AE4();
  v4 = sub_1E3C0B7FC();
  v6 = v5;
  v7 = *(v3 + 8);
  v8 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35388) + 36));
  *v8 = v4;
  v8[1] = v6;
  v8[2] = v7;
}

uint64_t sub_1E3C0DA10@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  v4 = v3[1];
  OUTLINED_FUNCTION_8();
  v11 = (*(v5 + 312))(v6, v7, v8, v9, v10);
  v12 = v11;
  v17 = (*(*v4 + 872))(v11, v13, v14, v15, v16);
  sub_1E414B880(v20, 0, v12 & 1, v17 & 1, a1);
  OUTLINED_FUNCTION_17_6();
  v18 = swift_allocObject();
  memcpy((v18 + 16), v3, 0x48uLL);
  a1[11] = sub_1E3C0DCB4;
  a1[12] = v18;
  a1[13] = 0;
  a1[14] = 0;
  return sub_1E3C0D764(v3, v20);
}

unint64_t sub_1E3C0DB1C()
{
  result = qword_1ECF35398;
  if (!qword_1ECF35398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF35388);
    sub_1E374AD40(&qword_1ECF353A0, &unk_1ECF353A8);
    sub_1E3C0DBD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF35398);
  }

  return result;
}

unint64_t sub_1E3C0DBD4()
{
  result = qword_1EE295700[0];
  if (!qword_1EE295700[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE295700);
  }

  return result;
}

unint64_t sub_1E3C0DC28()
{
  result = qword_1ECF353B0;
  if (!qword_1ECF353B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF35390);
    sub_1E3C0D540();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF353B0);
  }

  return result;
}

void sub_1E3C0DCB8()
{
  v0 = objc_opt_self();
  v1 = sub_1E4205ED4();
  v3 = [v0 createWithPageType_];

  v2 = [objc_opt_self() sharedInstance];
  [v2 recordPage_];
}

unint64_t sub_1E3C0DD78()
{
  result = qword_1ECF353D0;
  if (!qword_1ECF353D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF353C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF353D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34178);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF353E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33C60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF353E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D960);
    sub_1E3C0DF80();
    sub_1E3C0E09C();
    swift_getOpaqueTypeConformance2();
    sub_1E3C0E118(&qword_1ECF35408, &qword_1ECF33C60);
    swift_getOpaqueTypeConformance2();
    sub_1E3C0E118(&qword_1ECF35410, &qword_1ECF34178);
    swift_getOpaqueTypeConformance2();
    sub_1E3C0DBD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF353D0);
  }

  return result;
}

unint64_t sub_1E3C0DF80()
{
  result = qword_1ECF353F0;
  if (!qword_1ECF353F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF353E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF353F8);
    sub_1E4201574();
    sub_1E374AD40(&qword_1ECF35400, &qword_1ECF353F8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF353F0);
  }

  return result;
}

unint64_t sub_1E3C0E09C()
{
  result = qword_1EE23B5E8;
  if (!qword_1EE23B5E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE23B5E8);
  }

  return result;
}

uint64_t sub_1E3C0E118(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_40_2(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4);
    sub_1E3C0E828(&qword_1EE286128, type metadata accessor for LibMenuItem);
    OUTLINED_FUNCTION_57();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E3C0E1CC()
{
  result = qword_1ECF35430;
  if (!qword_1ECF35430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF35428);
    sub_1E3C0E258();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF35430);
  }

  return result;
}

unint64_t sub_1E3C0E258()
{
  result = qword_1ECF35438;
  if (!qword_1ECF35438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF35440);
    sub_1E3C0E314();
    sub_1E3C0E828(&qword_1EE288768, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF35438);
  }

  return result;
}

unint64_t sub_1E3C0E314()
{
  result = qword_1ECF35448;
  if (!qword_1ECF35448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF35448);
  }

  return result;
}

uint64_t sub_1E3C0E3BC(double a1)
{
  v2 = *(v1 + 56);
  if (v2)
  {
    v4 = *(*v2 + 256);

    v4(*&a1, 0);
  }

  else
  {
    type metadata accessor for AppEnvironment();
    OUTLINED_FUNCTION_5_137();
    sub_1E3C0E828(v6, v7);
    result = sub_1E4201744();
    __break(1u);
  }

  return result;
}

uint64_t sub_1E3C0E48C()
{
  OUTLINED_FUNCTION_8();
  (*(v0 + 456))();
  swift_getKeyPath();
  v1 = OUTLINED_FUNCTION_34();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35478);
  OUTLINED_FUNCTION_14_11();
  sub_1E374AD40(v2, &qword_1ECF33C60);
  sub_1E3C0E620();
  return sub_1E4203B34();
}

unint64_t sub_1E3C0E59C()
{
  result = qword_1ECF35468;
  if (!qword_1ECF35468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF35460);
    sub_1E3C0E620();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF35468);
  }

  return result;
}

unint64_t sub_1E3C0E620()
{
  result = qword_1ECF35470;
  if (!qword_1ECF35470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF35478);
    sub_1E3C0E6DC();
    sub_1E3C0E828(&qword_1ECF354A0, type metadata accessor for LibSidebarItemViewVisionOS);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF35470);
  }

  return result;
}

unint64_t sub_1E3C0E6DC()
{
  result = qword_1ECF35480;
  if (!qword_1ECF35480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF35488);
    sub_1E3C0E774();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF35480);
  }

  return result;
}

unint64_t sub_1E3C0E774()
{
  result = qword_1ECF35490;
  if (!qword_1ECF35490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF35498);
    sub_1E3C0E828(&qword_1ECF354A0, type metadata accessor for LibSidebarItemViewVisionOS);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF35490);
  }

  return result;
}

uint64_t sub_1E3C0E828(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E3C0E878()
{
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF290F0);
  sub_1E42038F4();
  (*(*v1 + 832))();
}

uint64_t objectdestroyTm_29()
{

  OUTLINED_FUNCTION_17_6();

  return swift_deallocObject();
}

uint64_t sub_1E3C0E98C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LibSidebarItemViewVisionOS(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3C0E9F0(uint64_t a1)
{
  v2 = type metadata accessor for LibSidebarItemViewVisionOS(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E3C0EA4C()
{
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33C60);
  type metadata accessor for LibSidebarItemViewVisionOS(0);
  OUTLINED_FUNCTION_14_11();
  sub_1E374AD40(v0, &qword_1ECF33C60);
  OUTLINED_FUNCTION_4_147();
  sub_1E3C0E828(v1, v2);
  return sub_1E4203B34();
}

uint64_t sub_1E3C0EB54()
{
  result = sub_1E4205ED4();
  qword_1EE2AA8D8 = result;
  return result;
}

uint64_t *sub_1E3C0EB8C()
{
  if (qword_1EE291A90 != -1)
  {
    OUTLINED_FUNCTION_1_175();
  }

  return &qword_1EE2AA8D8;
}

void sub_1E3C0EC00(unsigned __int8 *a1)
{
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = sub_1E324FBDC();
  (*(v4 + 16))(v7, v9, v2);
  v10 = sub_1E41FFC94();
  v11 = sub_1E42067E4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109120;
    *(v12 + 4) = v8;
    _os_log_impl(&dword_1E323F000, v10, v11, "isEligible for group session %{BOOL}d", v12, 8u);
    MEMORY[0x1E69143B0](v12, -1, -1);
  }

  (*(v4 + 8))(v7, v2);
  v13 = [objc_opt_self() defaultCenter];
  if (qword_1EE291A90 != -1)
  {
    OUTLINED_FUNCTION_1_175();
  }

  v14 = qword_1EE2AA8D8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B710);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BE0;
  v17[1] = 0x626967696C457369;
  v17[2] = 0xEA0000000000656CLL;
  sub_1E4207414();
  *(inited + 96) = MEMORY[0x1E69E6370];
  *(inited + 72) = v8;
  v16 = sub_1E4205CB4();
  sub_1E37E7460(v14, 0, v16, v13);
}

uint64_t sub_1E3C0EE60()
{
  if (*(v0 + 24))
  {

    sub_1E42004E4();
  }

  *(v0 + 24) = 0;
}

uint64_t sub_1E3C0EEBC()
{

  return v0;
}

uint64_t sub_1E3C0EEE4()
{
  sub_1E3C0EEBC();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1E3C0EF18()
{
  sub_1E41FF2D4();
  sub_1E32ADEC0(&qword_1ECF354C0, MEMORY[0x1E696B210]);
  sub_1E4200BC4();
  v0 = sub_1E41FF2A4();

  return v0 & 1;
}

uint64_t sub_1E3C0EFD8()
{
  if (qword_1EE291A88 != -1)
  {
    OUTLINED_FUNCTION_0_181();
  }
}

uint64_t sub_1E3C0F06C()
{
  v1 = OBJC_IVAR____TtC8VideosUIP33_46B8EF72354391877DF35743E40A3A1131LibSideBarDetailsViewInteractor_showcaseValue;
  type metadata accessor for ShowcaseValue();
  *(v0 + v1) = sub_1E40AAAB8();
  v2 = OBJC_IVAR____TtC8VideosUIP33_46B8EF72354391877DF35743E40A3A1131LibSideBarDetailsViewInteractor_viewMetricsRecorder;
  type metadata accessor for ViewMetricsRecorder();
  *(v0 + v2) = sub_1E3FEFA68();
  v3 = OBJC_IVAR____TtC8VideosUIP33_46B8EF72354391877DF35743E40A3A1131LibSideBarDetailsViewInteractor_navBarObservableModel;
  type metadata accessor for NavigationBarObservableModel(0);
  *(v0 + v3) = sub_1E39EE6D8();

  return sub_1E3B500B4();
}

uint64_t sub_1E3C0F0F4()
{
}

uint64_t sub_1E3C0F148()
{
  v0 = sub_1E3B4FF80();

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E3C0F1D8()
{
  type metadata accessor for LibSideBarDetailsViewInteractor();
  swift_allocObject();
  return sub_1E3C0F06C();
}

uint64_t sub_1E3C0F210@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for Router();
  OUTLINED_FUNCTION_2_142();
  sub_1E3C115D8(v6, v7);
  OUTLINED_FUNCTION_20_2();
  v8 = sub_1E4201754();
  v26 = v9;
  v27 = v8;
  type metadata accessor for AppEnvironment();
  sub_1E3C115D8(&qword_1EE283350, type metadata accessor for AppEnvironment);
  OUTLINED_FUNCTION_20_2();
  v10 = sub_1E4201754();
  v24 = v11;
  v25 = v10;
  type metadata accessor for TemplateViewModel();
  sub_1E410D4C8();
  v13 = v12;
  type metadata accessor for LibMenuItem();
  OUTLINED_FUNCTION_0_182();
  sub_1E3C115D8(v14, v15);

  v16 = sub_1E42010C4();
  v18 = v17;
  if (a2)
  {
    v19 = sub_1E38074D0;
  }

  else
  {
    v19 = sub_1E3C0F458;
  }

  sub_1E3B7B1C8();
  OUTLINED_FUNCTION_6_17();
  v21 = *(v20 + 216);

  LOBYTE(v21) = v21(v22);

  sub_1E3C0F4A4(a1, v21 & 1);
  sub_1E42038E4();

  *a3 = v16;
  *(a3 + 8) = v18;
  *(a3 + 16) = v27;
  *(a3 + 24) = v26;
  *(a3 + 32) = v25;
  *(a3 + 40) = v24;
  *(a3 + 48) = v19;
  *(a3 + 56) = a2;
  *(a3 + 64) = 0;
  *(a3 + 72) = sub_1E3C0F1D8;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  *(a3 + 96) = v13;
  *(a3 + 104) = v28;
  *(a3 + 112) = v29;
  return result;
}

uint64_t sub_1E3C0F458()
{
  type metadata accessor for Route(0);
  j__OUTLINED_FUNCTION_18();
  return sub_1E3F4C85C();
}

uint64_t sub_1E3C0F4A4(uint64_t a1, char a2)
{
  v4 = sub_1E3B7B1C8();
  OUTLINED_FUNCTION_6_17();
  v6 = *(v5 + 848);

  LOBYTE(v6) = v6(v7);

  if ((v6 & 1) == 0)
  {
    v8 = *(**v4 + 816);

    v9 = v8(a1);

    (*(*a1 + 312))(v10);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D158);
    OUTLINED_FUNCTION_11_102(&qword_1EE23B5A0, &qword_1ECF2CFF8);
    v12 = sub_1E4149048(v11);

    if (v12)
    {
      a2 = (*(*a1 + 256))(v13) & v9;
    }

    else
    {
      a2 = 0;
    }
  }

  return a2 & 1;
}

uint64_t sub_1E3C0F648@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1E3C0F730(a1);
  sub_1E3B7B1C8();
  OUTLINED_FUNCTION_6_17();
  v5 = *(v4 + 240);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF354C8);

  v5(v7);

  OUTLINED_FUNCTION_13_6();
  v8 = swift_allocObject();
  memcpy((v8 + 16), v2, 0x78uLL);
  v9 = (a1 + *(v6 + 56));
  *v9 = sub_1E3C102F4;
  v9[1] = v8;
  return sub_1E3C10358(v2, v11);
}

uint64_t sub_1E3C0F730@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v111 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF354D8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v104[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF354E0) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v104[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF354E8) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v104[-v12];
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF354F0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v104[-v15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF354F8);
  OUTLINED_FUNCTION_0_10();
  v114 = v18;
  v115 = v17;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v104[-v20];
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35500);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  v116 = &v104[-v23];
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35508);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v24);
  v117 = &v104[-v25];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35510);
  OUTLINED_FUNCTION_0_10();
  v109 = v27;
  v110 = v26;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v28);
  v108 = &v104[-v29];
  *v5 = sub_1E4201D44();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35518);
  sub_1E3C103AC(&v5[*(v30 + 44)]);
  sub_1E4203DA4();
  sub_1E42015C4();
  sub_1E3C111EC(v5, v9, &qword_1ECF354D8);
  memcpy(&v9[*(v6 + 44)], v121, 0x70uLL);
  OUTLINED_FUNCTION_13_6();
  v31 = swift_allocObject();
  OUTLINED_FUNCTION_12_93(v31);
  sub_1E3C111EC(v9, v13, &qword_1ECF354E0);
  v32 = *(v10 + 44);
  v33 = v21;
  v34 = &v13[v32];
  *v34 = sub_1E3C10DC4;
  v34[1] = v5;
  v34[2] = 0;
  v34[3] = 0;
  OUTLINED_FUNCTION_13_6();
  v35 = swift_allocObject();
  OUTLINED_FUNCTION_12_93(v35);
  sub_1E3C111EC(v13, v16, &qword_1ECF354E8);
  v36 = v112;
  v37 = &v16[*(v112 + 36)];
  *v37 = 0;
  v37[1] = 0;
  v37[2] = sub_1E3C10F4C;
  v37[3] = v5;
  OUTLINED_FUNCTION_13_6();
  v38 = swift_allocObject();
  OUTLINED_FUNCTION_12_93(v38);
  OUTLINED_FUNCTION_18_72();
  OUTLINED_FUNCTION_18_72();
  OUTLINED_FUNCTION_18_72();
  sub_1E3C110B4(&qword_1ECF35520, &qword_1ECF354F0, &unk_1E42C41C0, sub_1E3C11084);
  sub_1E383B5A4(sub_1E3C10F98, v5, v36);

  sub_1E325F69C(v16, &qword_1ECF354F0);
  v39 = *(v2 + 16);
  if (!v39)
  {
    goto LABEL_14;
  }

  type metadata accessor for Route(0);
  OUTLINED_FUNCTION_4_148();
  sub_1E3C115D8(v40, v41);
  v42 = v39;
  v43 = sub_1E4200BC4();
  type metadata accessor for LibSideBarDetailsViewInteractor();
  OUTLINED_FUNCTION_1_176();
  sub_1E3C115D8(v44, v45);
  sub_1E4200BC4();

  v46 = sub_1E379D97C(v42, v43);
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v53 = v116;
  (*(v114 + 32))(v116, v33, v115);
  v54 = &v53[*(v113 + 36)];
  *v54 = v46;
  v54[1] = v48;
  v54[2] = v50;
  v54[3] = v52;
  v55 = sub_1E4203DA4();
  v57 = v56;
  v58 = &v117[*(v118 + 36)];
  *v58 = sub_1E4203DA4();
  *(v58 + 1) = v59;
  v60 = objc_opt_self();
  v61 = [v60 sharedInstance];
  if (!v61)
  {
    __break(1u);
    goto LABEL_13;
  }

  v62 = v61;
  v114 = v57;
  v115 = v55;
  v63 = sub_1E3741090(0xD000000000000015, 0x80000001E4267120, v61);
  v65 = v64;

  v66 = [v60 sharedInstance];
  if (!v66)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    type metadata accessor for Router();
    OUTLINED_FUNCTION_2_142();
    sub_1E3C115D8(v102, v103);
    result = sub_1E4201744();
    __break(1u);
    return result;
  }

  v67 = v66;
  v68 = sub_1E3741090(0xD000000000000017, 0x80000001E4267100, v66);
  v70 = v69;

  sub_1E39FA1A8(v63, v65, v68, v70, v124);
  v71 = v124[0];
  v106 = v124[1];
  v112 = v124[3];
  v113 = v124[2];
  v107 = v125;
  *v119 = *(v2 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0);
  sub_1E42038F4();
  v105 = LOBYTE(v122[0]);
  memset(v119, 0, 40);
  v72 = *(v2 + 8);
  v73 = v72[32];
  sub_1E3B7B1C8();
  OUTLINED_FUNCTION_36();
  v75 = *(v74 + 312);

  LOBYTE(v68) = v75(v76);

  OUTLINED_FUNCTION_36();
  v78 = *(v77 + 872);

  v80 = v78(v79);

  sub_1E414B880(v119, v73, v68 & 1, v80 & 1, __src);
  *v119 = *(v2 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0);
  v81 = sub_1E42038F4();
  v82 = 0.0;
  v83 = 0.0;
  if ((v122[0] & 1) == 0)
  {
    *v119 = (*(*v72 + 312))(v81);
    v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D158);
    OUTLINED_FUNCTION_11_102(&qword_1EE23B5A0, &qword_1ECF2CFF8);
    v85 = sub_1E4149048(v84);

    if (v85)
    {
      if ((*(*v72 + 256))(v86))
      {
        v83 = 0.0;
      }

      else
      {
        v83 = 1.0;
      }
    }
  }

  if (v105)
  {
    v82 = 1.0;
  }

  memcpy(v119, __src, sizeof(v119));
  v120 = v83;
  sub_1E3C1161C(v119, v122);
  v87 = v106;
  *(v58 + 2) = v71;
  *(v58 + 3) = v87;
  v88 = v112;
  *(v58 + 4) = v113;
  *(v58 + 5) = v88;
  v58[48] = v107;
  *(v58 + 7) = v82;
  sub_1E3C1161C(v122, (v58 + 64));

  sub_1E380E99C();
  sub_1E325F69C(v119, &qword_1ECF31798);
  sub_1E325F69C(v122, &qword_1ECF31798);

  sub_1E3264CE0();
  v89 = v114;
  *(v58 + 20) = v115;
  *(v58 + 21) = v89;
  v90 = v117;
  sub_1E3C111EC(v116, v117, &qword_1ECF35500);
  v91 = *(v2 + 8);
  v92 = v91[6];
  *v119 = v91[5];
  *&v119[8] = v92;
  v93 = sub_1E3C11248();
  v94 = sub_1E32822E0();
  v95 = MEMORY[0x1E69E6158];
  v96 = v108;
  v97 = v118;
  sub_1E4203034();
  v98 = sub_1E325F69C(v90, &qword_1ECF35508);
  v122[0] = (*(*v91 + 312))(v98);
  OUTLINED_FUNCTION_13_6();
  v99 = swift_allocObject();
  memcpy((v99 + 16), v2, 0x78uLL);
  OUTLINED_FUNCTION_18_72();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D158);
  *v119 = v97;
  *&v119[8] = v95;
  *&v119[16] = v93;
  *&v119[24] = v94;
  swift_getOpaqueTypeConformance2();
  sub_1E3A74C04();
  v100 = v110;
  sub_1E4203534();

  return (*(v109 + 8))(v96, v100);
}

uint64_t sub_1E3C102F4(char *a1)
{
  sub_1E3C0F4A4(*(v1 + 24), *a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0);
  return sub_1E4203904();
}

uint64_t sub_1E3C103AC@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF317A8);
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35570);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - v9;
  v11 = sub_1E3C1071C();
  if (v11)
  {
    v33 = v11;
    v12 = sub_1E3AC5818();
    v13 = v12[1];
    v32 = *v12;
    v31 = *(v12 + 16);
    v26 = v12[3];
    v27 = v13;
    type metadata accessor for LibSideBarDetailsViewInteractor();
    v34 = v1;
    OUTLINED_FUNCTION_1_176();
    sub_1E3C115D8(v14, v15);
    v28 = v6;

    v16 = OUTLINED_FUNCTION_9_102();
    v29 = v3;
    v30 = v7;
    v17 = *(v16 + OBJC_IVAR____TtC8VideosUIP33_46B8EF72354391877DF35743E40A3A1131LibSideBarDetailsViewInteractor_showcaseValue);

    v18 = *(OUTLINED_FUNCTION_9_102() + OBJC_IVAR____TtC8VideosUIP33_46B8EF72354391877DF35743E40A3A1131LibSideBarDetailsViewInteractor_navBarObservableModel);

    v19 = *(OUTLINED_FUNCTION_9_102() + OBJC_IVAR____TtC8VideosUIP33_46B8EF72354391877DF35743E40A3A1131LibSideBarDetailsViewInteractor_viewMetricsRecorder);

    v20 = v28;
    sub_1E3E85A74(v33, v32, v27, v31, v26, v17, v18, v19, v28, 0);

    v21 = v29;
    v22 = v34;
    (*(v29 + 16))(v10, v20, v34);
    swift_storeEnumTagMultiPayload();
    v23 = OUTLINED_FUNCTION_32_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v23);
    OUTLINED_FUNCTION_6_123();
    OUTLINED_FUNCTION_5_138(&qword_1EE288310);
    sub_1E4201F44();

    return (*(v21 + 8))(v20, v22);
  }

  else
  {
    *v10 = sub_1E4201B84();
    *(v10 + 1) = 0;
    v10[16] = 1;
    *(v10 + 3) = 0;
    v10[32] = 1;
    *(v10 + 5) = 0;
    v10[48] = 1;
    swift_storeEnumTagMultiPayload();
    v25 = OUTLINED_FUNCTION_32_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v25);
    OUTLINED_FUNCTION_6_123();
    OUTLINED_FUNCTION_5_138(&qword_1EE288310);
    return sub_1E4201F44();
  }
}

uint64_t sub_1E3C1071C()
{
  v27 = *v0;
  v1 = *(&v27 + 1);
  v2 = *(*(&v27 + 1) + 32);
  v3 = *(**(&v27 + 1) + 392);

  v5 = v3(v4);
  v7 = v6;
  v8 = (*(**(&v27 + 1) + 312))();
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  if (!sub_1E32AE9B0(v9))
  {
    sub_1E325F69C(&v27, &unk_1ECF35568);

LABEL_27:

    return 0;
  }

  v10 = *(v0 + 12);
  if (!v10)
  {
LABEL_15:
    v16 = *(*(&v27 + 1) + 72);
    v17 = *(*(&v27 + 1) + 80);
    if (v9 >> 62)
    {
      type metadata accessor for ViewModel();

      v18 = sub_1E42076C4();
    }

    else
    {

      sub_1E42079D4();
      type metadata accessor for ViewModel();
      v18 = v9;
    }

    v19 = sub_1E3B6D0F4(v16, v17, 118, v18, 0);

    if (v19)
    {
      v26[3] = type metadata accessor for LibMenuCollectionInteractorRequest();
      v26[4] = &off_1F5D5EFC0;
      v26[0] = sub_1E385A9C8(*(&v27 + 1));
      (*(*v19 + 1688))(v26);
      sub_1E3B7B1C8();
      OUTLINED_FUNCTION_36();
      v21 = *(v20 + 816);

      v22 = v21(v1);

      if (v22)
      {
        LOBYTE(v26[0]) = v2;
        sub_1E37DA4B8();
        if ((sub_1E4205E84() & 1) == 0)
        {
          if (v7)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_1E4297BE0;
            *(inited + 32) = 0xD000000000000011;
            *(inited + 40) = 0x80000001E426F010;
            *(inited + 72) = MEMORY[0x1E69E6158];
            *(inited + 48) = v5;
            *(inited + 56) = v7;
            v7 = sub_1E4205CB4();
          }

          (*(*v19 + 1328))(v7);
        }
      }

      if (v10)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_1E4298880;
        *(v24 + 32) = v19;
        v25 = *(*v10 + 472);

        v25(v24);
      }

      return v10;
    }

    sub_1E325F69C(&v27, &unk_1ECF35568);
    goto LABEL_27;
  }

  v11 = *(*v10 + 464);
  v12 = swift_retain_n();
  v13 = v11(v12);
  if (!v13)
  {

    goto LABEL_15;
  }

  v14 = v13;
  result = sub_1E32AE9B0(v13);
  if (!result)
  {

    goto LABEL_15;
  }

  if ((v14 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1E6911E60](0, v14);

    sub_1E325F69C(&v27, &unk_1ECF35568);
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    sub_1E325F69C(&v27, &unk_1ECF35568);

LABEL_11:

    return v10;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for LibSideBarDetailsViewInteractor()
{
  result = qword_1EE292850;
  if (!qword_1EE292850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3C10D18(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1E3C10D58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1E3C10DC4()
{
  (*(**(v0 + 24) + 440))();
  v1 = *(v0 + 32);
  if (v1)
  {
    type metadata accessor for Route(0);
    OUTLINED_FUNCTION_4_148();
    sub_1E3C115D8(v2, v3);
    v7 = v1;
    v4 = sub_1E4200BC4();
    (*((*MEMORY[0x1E69E7D40] & *v7) + 0x198))(v4);
  }

  else
  {
    type metadata accessor for Router();
    OUTLINED_FUNCTION_2_142();
    sub_1E3C115D8(v5, v6);
    sub_1E4201744();
    __break(1u);
  }
}

uint64_t sub_1E3C10F98(double a1)
{
  type metadata accessor for LibSideBarDetailsViewInteractor();
  OUTLINED_FUNCTION_1_176();
  sub_1E3C115D8(v2, v3);
  sub_1E4200BC4();

  OUTLINED_FUNCTION_36();
  (*(v4 + 296))(a1);
}

uint64_t sub_1E3C110B4(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_40_2(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E3C11134()
{
  result = qword_1ECF35530;
  if (!qword_1ECF35530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF354E0);
    sub_1E3A1558C(&qword_1ECF35538, &unk_1ECF354D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF35530);
  }

  return result;
}

uint64_t sub_1E3C111EC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_32_0();
  v5(v4);
  return a2;
}

unint64_t sub_1E3C11248()
{
  result = qword_1ECF35548;
  if (!qword_1ECF35548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF35508);
    sub_1E3C11300();
    sub_1E3A1558C(&qword_1ECF35558, &unk_1ECF35560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF35548);
  }

  return result;
}

unint64_t sub_1E3C11300()
{
  result = qword_1ECF35550;
  if (!qword_1ECF35550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF35500);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF354F0);
    sub_1E3C110B4(&qword_1ECF35520, &qword_1ECF354F0, &unk_1E42C41C0, sub_1E3C11084);
    swift_getOpaqueTypeConformance2();
    sub_1E389B90C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF35550);
  }

  return result;
}

uint64_t objectdestroyTm_30()
{

  sub_1E3264CE0();
  sub_1E3264CE0();

  OUTLINED_FUNCTION_13_6();

  return swift_deallocObject();
}

uint64_t sub_1E3C11468()
{
  v1 = *(v0 + 24);
  sub_1E3B7B1C8();
  OUTLINED_FUNCTION_6_17();
  v3 = *(v2 + 216);

  LOBYTE(v3) = v3(v4);

  sub_1E3C0F4A4(v1, v3 & 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0);
  sub_1E4203904();
  v5 = *(v0 + 112);
  if (v5)
  {
    (*(*v5 + 472))(MEMORY[0x1E69E7CC0]);
    sub_1E3C1071C();

    type metadata accessor for TemplateViewModel();
    sub_1E3C115D8(&qword_1EE279848, type metadata accessor for TemplateViewModel);
    sub_1E4200514();
    sub_1E4200594();
  }

  else
  {
    sub_1E3C1071C();
  }
}

uint64_t sub_1E3C115D8(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_20_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E3C1161C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31798);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1E3C1169C(uint64_t a1, uint64_t a2, __int16 a3)
{
  v3 = HIBYTE(a3);
  v5 = sub_1E3285D14();
  v6 = *((*MEMORY[0x1E69E7D40] & **v5) + 0x108);
  v7 = *v5;
  v8 = v6(a2);

  if (v8)
  {
    v9 = v3;
    switch(v3)
    {
      case 1u:
        goto LABEL_8;
      case 2u:
      case 4u:
        v9 = 0;
        goto LABEL_8;
      case 3u:
      case 5u:
        v9 = 2;
LABEL_8:
        [v8 updateAlignment_];
        break;
      default:
        return v8;
    }

    return v8;
  }

  else
  {
    v10 = objc_allocWithZone(MEMORY[0x1E69D37B8]);

    return [v10 init];
  }
}

unint64_t sub_1E3C117C0(uint64_t a1)
{
  result = sub_1E3C117E8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E3C117E8()
{
  result = qword_1ECF35578;
  if (!qword_1ECF35578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF35578);
  }

  return result;
}

unint64_t sub_1E3C11840()
{
  result = qword_1ECF35580;
  if (!qword_1ECF35580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF35580);
  }

  return result;
}

uint64_t sub_1E3C11894(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E3C11AD4();

  return sub_1E3E36D18(a1, a2, v4);
}

uint64_t sub_1E3C118E0()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3C11AD4();
  v0 = OUTLINED_FUNCTION_3_5();

  return sub_1E3E36D2C(v0, v1, v2, v3);
}

uint64_t sub_1E3C119B4()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3C117E8();
  v0 = OUTLINED_FUNCTION_3_5();

  return MEMORY[0x1EEDDAA28](v0);
}

uint64_t sub_1E3C11A08()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3C117E8();
  v0 = OUTLINED_FUNCTION_3_5();

  return MEMORY[0x1EEDDA9B8](v0);
}

void sub_1E3C11A5C()
{
  sub_1E3C117E8();
  sub_1E4201F04();
  __break(1u);
}

uint64_t sub_1E3C11A84(uint64_t result, int a2, int a3)
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

unint64_t sub_1E3C11AD4()
{
  result = qword_1ECF35588;
  if (!qword_1ECF35588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF35588);
  }

  return result;
}

uint64_t sub_1E3C11B78()
{
  if (TVAppFeature.isEnabled.getter(10))
  {
    type metadata accessor for CollectionViewLayout();
    v0 = sub_1E3C3E3C8();
  }

  else
  {
    type metadata accessor for ViewLayout();
    v0 = sub_1E3C2F968();
  }

  v1 = v0;
  if ((sub_1E373F6E0() & 1) == 0)
  {
    if (sub_1E373F6E0())
    {
      OUTLINED_FUNCTION_8();
      (*(v3 + 328))();
      if (v4)
      {
        OUTLINED_FUNCTION_8();
        (*(v5 + 336))(0x4059000000000000, 0);
      }
    }

    else if (sub_1E373F6E0())
    {
      v8 = 0;
      memset(v7, 0, sizeof(v7));
      OUTLINED_FUNCTION_8();
      (*(v6 + 160))(v7);
    }
  }

  return v1;
}

uint64_t sub_1E3C11CA0(uint64_t a1)
{
  if ((*(*a1 + 968))())
  {
  }

  else
  {
    return TVAppFeature.isEnabled.getter(10);
  }
}

uint64_t sub_1E3C11D38@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E373F6E0();
  v3 = MEMORY[0x1E69DDCE0];
  if (v2)
  {
    type metadata accessor for EpicInlineViewModel();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v5 = *(*v4 + 488);

      v7 = v5(v6);
      if (v7)
      {
        sub_1E373E010(138, v7);
      }

      v9 = *v3;
      v8 = *(v3 + 8);
      v11 = *(v3 + 16);
      v10 = *(v3 + 24);
      goto LABEL_6;
    }
  }

  type metadata accessor for CollectionViewModel();
  result = swift_dynamicCastClass();
  v9 = *v3;
  v8 = *(v3 + 8);
  v11 = *(v3 + 16);
  v10 = *(v3 + 24);
  if (!result)
  {
    goto LABEL_54;
  }

  v13 = result;
  v14 = *(*result + 1344);

  v14(v15);
  if (sub_1E373F6E0() & 1) != 0 || (sub_1E373F6E0())
  {
    OUTLINED_FUNCTION_8();
    v17 = *(v16 + 624);

    v19 = v17(v18);
    if (v19)
    {
      if (sub_1E373F6E0())
      {

        v20 = TVAppFeature.isEnabled.getter(10);

        v21 = (v20 & 1) == 0;
        v22 = 20.0;
        goto LABEL_13;
      }
    }

    v24 = v17(v19);

    if (v24)
    {
      type metadata accessor for TemplateViewModel();
      if (swift_dynamicCastClass())
      {
        v25 = sub_1E39E3C28();

        if (v25)
        {

          v9 = 0.0;
          v11 = 0.0;
          goto LABEL_54;
        }
      }

      else
      {
      }
    }

    LOBYTE(v49) = 1;
    OUTLINED_FUNCTION_8();
    (*(v29 + 776))(&v51, &v49, &unk_1F5D5D888, &off_1F5D5C918);
    if (v54)
    {
      if (swift_dynamicCast())
      {
        v31 = v49;
        v30 = v50;
        goto LABEL_35;
      }
    }

    else
    {
      sub_1E329505C(&v51);
    }

    v31 = 0;
    v30 = 0;
LABEL_35:
    v32 = sub_1E38566B8(0);
    if (v30)
    {
      if (v31 == v32 && v30 == v33)
      {

        goto LABEL_51;
      }

      v35 = OUTLINED_FUNCTION_1_177();

      if (v35)
      {
        goto LABEL_51;
      }
    }

    else
    {
    }

    v36 = sub_1E38566B8(1);
    if (v30)
    {
      if (v31 == v36 && v30 == v37)
      {
      }

      else
      {
        v39 = OUTLINED_FUNCTION_1_177();

        if ((v39 & 1) == 0)
        {
LABEL_52:
          sub_1E3C11CA0(v13);
          v9 = v40;
          v8 = v41;
          v10 = v42;
LABEL_53:

          v11 = 18.0;
          goto LABEL_54;
        }
      }

      if ([objc_opt_self() isVision])
      {
        sub_1E3C11CA0(v13);
        v8 = v43;
        v10 = v44;

        v11 = 18.0;
        v9 = 12.0;
        goto LABEL_54;
      }

      goto LABEL_52;
    }

LABEL_51:

    goto LABEL_52;
  }

  if (sub_1E373F6E0())
  {
    OUTLINED_FUNCTION_2_143(&unk_1F5D5D888, v48, v49, v50, v51, v52, v53, v54, v55);
    v23 = __swift_destroy_boxed_opaque_existential_1(&v51);
    if ((*(*v13 + 968))(v23))
    {

      v9 = 0.0;
    }

    else if (TVAppFeature.isEnabled.getter(10))
    {
      v9 = 18.0;
    }

    else
    {
      v9 = 20.0;
    }

    goto LABEL_53;
  }

  if (sub_1E373F6E0())
  {
    goto LABEL_6;
  }

  if (sub_1E373F6E0())
  {
    v26 = OUTLINED_FUNCTION_2_143(&unk_1F5D5D888, v48, v49, v50, v51, v52, v53, v54, v55);
    __swift_destroy_boxed_opaque_existential_1(&v51);
    v27 = TVAppFeature.isEnabled.getter(10);
    v28 = (*(*v13 + 968))();
    if (v27)
    {
      if (v28)
      {

        v9 = 0.0;
        v11 = 18.0;
      }

      else
      {
        v11 = 18.0;
        if (v26)
        {
          v9 = 48.0;
        }

        else
        {
          v9 = 18.0;
        }
      }
    }

    else if (v28)
    {

      v11 = 0.0;
      v9 = 0.0;
    }

    else
    {
      v9 = 24.0;
      v11 = 0.0;
    }

    goto LABEL_6;
  }

  if (sub_1E373F6E0() & 1) != 0 || (sub_1E373F6E0())
  {
    goto LABEL_52;
  }

  if (sub_1E373F6E0() & 1) != 0 || (sub_1E373F6E0())
  {
    goto LABEL_6;
  }

  if (sub_1E373F6E0())
  {
    goto LABEL_52;
  }

  if (sub_1E373F6E0())
  {
    v45 = TVAppFeature.isEnabled.getter(10);

    v21 = (v45 & 1) == 0;
    v22 = 0.0;
LABEL_13:
    if (v21)
    {
      v11 = v22;
    }

    else
    {
      v11 = 18.0;
    }

    goto LABEL_54;
  }

  if (sub_1E373F6E0())
  {
LABEL_6:

    goto LABEL_54;
  }

  if (sub_1E373F6E0() & 1) != 0 || (sub_1E373F6E0() & 1) != 0 || (sub_1E373F6E0())
  {

    v11 = 30.0;
    v9 = 0.0;
    v8 = 0;
    v10 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_8();
    v47 = (*(v46 + 968))();

    v11 = 18.0;
    if (v47)
    {

      v9 = 0.0;
    }

    else
    {
      v9 = 24.0;
    }
  }

LABEL_54:
  *a1 = v9;
  *(a1 + 8) = v8;
  *(a1 + 16) = v11;
  *(a1 + 24) = v10;
  *(a1 + 32) = 0;
  return result;
}

uint64_t sub_1E3C123DC()
{
  if ((sub_1E373F6E0() & 1) == 0)
  {
    return 2;
  }

  OUTLINED_FUNCTION_8();
  if (!(*(v0 + 960))())
  {
    return 2;
  }

  sub_1E3741534();
  if (sub_1E4205E84())
  {
    return 4;
  }

  else
  {
    return 2;
  }
}

void sub_1E3C124B0(uint64_t a1@<X0>, char a2@<W1>, double a3@<X2>, char a4@<W3>, double a5@<X4>, char a6@<W5>, double a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  v14 = v9;
  v23 = [objc_allocWithZone(MEMORY[0x1E69DB7E0]) init];
  [v23 setWrapsForTruncationMode_];
  [v23 setWantsNumberOfLineFragments_];
  if ((a2 & 1) != 0 || a1 < 2)
  {
    OUTLINED_FUNCTION_19_81(v14, sel_boundingRectWithSize_options_context_);
    OUTLINED_FUNCTION_18_73();
    goto LABEL_20;
  }

  if (__OFADD__(a1, 1))
  {
    __break(1u);
  }

  else if (((a1 + 1) & 0x8000000000000000) == 0)
  {
    [v23 setMaximumNumberOfLines_];
    if (a4)
    {
      sub_1E3A286D4();
      v24 = sub_1E41DA724();
    }

    else
    {
      v24 = a3;
    }

    if (v24 < 0.0)
    {
      v25 = 0.0;
    }

    else
    {
      v25 = v24;
    }

    v26 = a5;
    if (a6)
    {
      v26 = 10.0;
    }

    if (v26 < 0.0)
    {
      v27 = 0.0;
    }

    else
    {
      v27 = v26;
    }

    v28 = OUTLINED_FUNCTION_16_91();
    OUTLINED_FUNCTION_19_81(v28, v29);
    OUTLINED_FUNCTION_18_73();
    v30 = [v23 numberOfLineFragments];
    if (v27 <= v25 && v30 <= a1 && v13 <= v25)
    {
      v31 = OUTLINED_FUNCTION_16_91();
      OUTLINED_FUNCTION_19_81(v31, v32);
      v34 = v33;
      v58 = v36;
      v60 = v35;
      v38 = v37;
      if ([v23 numberOfLineFragments] > a1 || v38 > v27)
      {
        v57 = v10;
        v59 = v12;
        v61 = v11;
        v40 = a7;
        if (a7 < 0.0)
        {
          v40 = 0.0;
        }

        if (a8)
        {
          v40 = 10.0;
        }

        v56 = v40;
        do
        {
          v41 = v25 + (v25 - v27) * -0.5;
          OUTLINED_FUNCTION_19_81(v14, sel_boundingRectWithSize_options_context_);
          v43 = v42;
          v45 = v44;
          v47 = v46;
          v49 = v48;
          if ([v23 numberOfLineFragments] <= a1)
          {
            if (v47 > v41)
            {
              v50 = v61;
            }

            else
            {
              v50 = v43;
            }

            v51 = v59;
            if (v47 <= v41)
            {
              v51 = v45;
            }

            v59 = v51;
            v61 = v50;
            v52 = v57;
            if (v47 <= v41)
            {
              v52 = v49;
            }

            v57 = v52;
            if (v47 <= v41)
            {
              v25 = v25 + (v25 - v27) * -0.5;
              v41 = v27;
            }
          }

          v27 = v41;
        }

        while (v25 - v41 >= v56);
        v62.origin.x = OUTLINED_FUNCTION_4_149();
        v62.size.height = v57;
        v11 = ceil(CGRectGetMinX(v62));
        v63.origin.x = OUTLINED_FUNCTION_4_149();
        v63.size.height = v57;
        v12 = ceil(CGRectGetMinY(v63));
        v64.origin.x = OUTLINED_FUNCTION_4_149();
        v64.size.height = v57;
        v53 = ceil(CGRectGetWidth(v64));
        v65.origin.x = OUTLINED_FUNCTION_4_149();
        v65.size.height = v57;
        Height = CGRectGetHeight(v65);

        v10 = ceil(Height);
        v13 = v53;
      }

      else
      {

        v11 = v34;
        v10 = v58;
        v12 = v60;
        v13 = v38;
      }

      goto LABEL_21;
    }

LABEL_20:

LABEL_21:
    *a9 = v11;
    *(a9 + 8) = v12;
    *(a9 + 16) = v13;
    *(a9 + 24) = v10;
    *(a9 + 32) = 0;
    return;
  }

  __break(1u);
}

CGSize __swiftcall UILabel.multilineSizeThatFits(_:)(CGSize a1)
{
  [v1 multilineSizeThatFits:a1.width minWidth:{a1.height, 0.0}];
  result.height = v3;
  result.width = v2;
  return result;
}

void sub_1E3C127D4(void *a1, double a2, double a3)
{
  v5 = a1;
  UILabel.multilineSizeThatFits(_:)(__PAIR128__(*&a3, *&a2));

  OUTLINED_FUNCTION_17_4();
}

void sub_1E3C12844(void *a1, double a2, double a3, double a4)
{
  v7 = a1;
  UILabel.multilineSizeThatFits(_:minWidth:)(a2, a3, a4);

  OUTLINED_FUNCTION_17_4();
}

void UILabel.multilineSizeThatFits(_:minWidth:padding:)(double a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v8 = v7;
  v15 = sub_1E390E9E4(v7);
  if (!v16)
  {
    goto LABEL_4;
  }

  v17 = v15;
  v18 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF34380);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BE0;
  v20 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v21 = v20;
  v22 = [v8 font];
  if (v22)
  {
    v23 = v22;
    type metadata accessor for CTFont(0);
    *(inited + 64) = v24;
    *(inited + 40) = v23;
    type metadata accessor for Key(0);
    OUTLINED_FUNCTION_0_183(&qword_1EE23B100);
    v25 = sub_1E4205CB4();
    v26 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v27 = sub_1E376403C(v17, v18, v25);
    v28 = [v8 numberOfLines];
    v29 = 0;
    v30 = v27;
    v31 = a4;
    v32 = a5;
    v33 = a6;
    v34 = a7;
    v35 = a1;
    v36 = 0;
    v37 = a3;
    v38 = 0;
    sub_1E3C12B34(*&a1, 0);
    sub_1E3C1360C(&v28);
LABEL_4:
    OUTLINED_FUNCTION_17_4();
    return;
  }

  __break(1u);
}

void sub_1E3C12AA4(void *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v15 = a1;
  UILabel.multilineSizeThatFits(_:minWidth:padding:)(a2, a3, a4, a5, a6, a7, a8);

  OUTLINED_FUNCTION_17_4();
}

double sub_1E3C12B34(uint64_t a1, char a2)
{
  sub_1E3A286D4();
  v5 = sub_1E41DA724();
  if (a2)
  {
    v6 = v5;
  }

  else
  {
    v6 = *&a1;
  }

  if (*(v2 + 64))
  {
    v7 = sub_1E41DA724();
  }

  else
  {
    v7 = *(v2 + 56);
  }

  v8 = OUTLINED_FUNCTION_6();
  v12 = v6 - sub_1E3952BE0(v8, v9, v10, v11);
  if (v12 <= 10.0)
  {
    v12 = 10.0;
  }

  if (v12 < v7)
  {
    v7 = v12;
  }

  rect.origin.x = 0.0;
  if (*(v2 + 80))
  {
    v13 = 0.0;
  }

  else
  {
    v13 = *(v2 + 72);
  }

  v14 = OUTLINED_FUNCTION_6();
  v18 = v13 - sub_1E3952BE0(v14, v15, v16, v17);
  if (v18 <= 10.0)
  {
    v18 = 10.0;
  }

  sub_1E3C124B0(*v2, *(v2 + 8), v7, 0, v18, 0, 0.0, 1, &rect.origin.y);
  width = 0.0;
  height = 0.0;
  v21 = 0.0;
  if ((v34 & 1) == 0)
  {
    height = rect.size.height;
    v21 = v33;
    width = rect.size.width;
    rect.origin.x = rect.origin.y;
  }

  v22 = OUTLINED_FUNCTION_6();
  v26 = sub_1E3952BE0(v22, v23, v24, v25) * -0.5;
  v27 = OUTLINED_FUNCTION_6();
  v30 = sub_1E3952BD8(v27, v28, v29) * -0.5;
  v36.origin.x = rect.origin.x;
  v36.origin.y = width;
  v36.size.width = height;
  v36.size.height = v21;
  v37 = CGRectInset(v36, v26, v30);

  *&result = CGRectStandardize(v37);
  return result;
}

void sub_1E3C12CAC(uint64_t *a1@<X1>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_1E3C27024();
  v10 = v9;
  if (!v9)
  {
    sub_1E42012F4();
    OUTLINED_FUNCTION_2();
    (*(v23 + 8))(a3);

    v19 = 0;
    v24 = 0;
    v25 = 0;
    *&v29 = OUTLINED_FUNCTION_2_144();
LABEL_27:
    *a4 = v10;
    *(a4 + 8) = v28;
    *(a4 + 16) = v19;
    *(a4 + 24) = v29;
    *(a4 + 40) = v30;
    *(a4 + 56) = v24;
    *(a4 + 64) = v27;
    *(a4 + 72) = v25;
    *(a4 + 80) = v26;
    return;
  }

  v11 = v8;
  v63 = a3;
  v12 = a1;
  if (!a1)
  {
    if (sub_1E3C27528())
    {
      type metadata accessor for TextLayout();
      v12 = swift_dynamicCastClass();
      if (!v12)
      {
      }
    }

    else
    {
      v12 = 0;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF34380);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BE0;
  v14 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  type metadata accessor for CTFont(0);
  *(inited + 64) = v15;
  *(inited + 40) = a2;
  type metadata accessor for Key(0);
  OUTLINED_FUNCTION_0_183(&qword_1EE23B100);
  v16 = v14;
  v62 = a2;

  v17 = sub_1E4205CB4();
  v18 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v19 = sub_1E376403C(v11, v10, v17);
  if (!v12)
  {
    v10 = 0;
    v24 = 0;
    v25 = 0;
    v31 = 1;
    LOBYTE(v74[0]) = 1;
    v64 = *(MEMORY[0x1E69DDCE0] + 16);
    v66 = *MEMORY[0x1E69DDCE0];
    v32 = 1;
LABEL_26:

    sub_1E42012F4();
    OUTLINED_FUNCTION_2();
    (*(v58 + 8))(a3);
    LOBYTE(v72[0]) = v31 & 1;
    v26 = v32 & 1;
    LOBYTE(v70[0]) = v32 & 1;
    v28 = LOBYTE(v74[0]);
    v27 = v31 & 1;
    v30 = v64;
    v29 = v66;
    goto LABEL_27;
  }

  if (sub_1E3B028AC())
  {
    OUTLINED_FUNCTION_71_2();
    v21 = (*(v20 + 2072))();
  }

  else
  {
    v33 = sub_1E3B02A04();
    v34 = *v12;
    if (v33)
    {
      v21 = (*(v34 + 2096))();
    }

    else
    {
      v21 = (*(v34 + 2048))();
    }
  }

  v10 = v21;
  if (v22)
  {
    v10 = 0;
LABEL_17:
    v61 = v22;

    OUTLINED_FUNCTION_71_2();
    v36 = *(v35 + 176);
    v36(v68);
    v37 = 0.0;
    v38 = 0.0;
    if ((v69 & 1) == 0)
    {
      v38 = sub_1E3952BE0(v68[0], v68[1], v68[2], v68[3]);
    }

    OUTLINED_FUNCTION_71_2();
    v40 = *(v39 + 152);
    v41 = v40(v70);
    if ((v71 & 1) == 0)
    {
      v37 = sub_1E3952BE0(v70[0], v70[1], v70[2], v70[3]);
    }

    v42 = (v36)(v72, v41);
    v43 = 0.0;
    v44 = 0.0;
    if ((v73 & 1) == 0)
    {
      v44 = sub_1E3952BD8(v72[0], v72[1], v72[2]);
    }

    (v40)(v74, v42);
    if ((v75 & 1) == 0)
    {
      v43 = sub_1E3952BD8(v74[0], v74[1], v74[2]);
    }

    v45 = sub_1E3952C10(v38 + v37, v44 + v43);
    v65 = v46;
    v67 = v45;
    v59 = v48;
    v60 = v47;

    OUTLINED_FUNCTION_71_2();
    v50 = *(v49 + 248);

    v24 = v50(v51);
    v31 = v52;

    OUTLINED_FUNCTION_71_2();
    v54 = *(v53 + 224);

    v25 = v54(v55);
    v32 = v56;

    LOBYTE(v74[0]) = v61 & 1;

    *&v57 = v65;
    *(&v57 + 1) = v59;
    v64 = v57;
    *&v57 = v67;
    *(&v57 + 1) = v60;
    v66 = v57;
    a3 = v63;
    goto LABEL_26;
  }

  if ((v21 & 0x8000000000000000) == 0)
  {
    goto LABEL_17;
  }

  __break(1u);
}

uint64_t sub_1E3C131D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for FittedTextView();
  v9 = v8[5];
  *(a4 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34E80);
  result = swift_storeEnumTagMultiPayload();
  *(a4 + v8[6]) = a1;
  *(a4 + v8[7]) = a2;
  *(a4 + v8[8]) = a3;
  return result;
}

void *sub_1E3C1329C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for FittedTextView();
  sub_1E3F23370();
  sub_1E3C1331C(__src);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35598);
  return memcpy((a1 + *(v2 + 36)), __src, 0x51uLL);
}

void sub_1E3C1331C(uint64_t a1@<X8>)
{
  v3 = sub_1E4202A14();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  *&v31 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v1 + *(type metadata accessor for FittedTextView() + 28));
  if (v14)
  {
    *&v30 = v5;
    *&v29 = v3;
    v15 = v14;
  }

  else
  {
    v26 = sub_1E3C27528();
    v20 = v26;
    if (!v26)
    {
LABEL_9:
      OUTLINED_FUNCTION_2_73();
      goto LABEL_10;
    }

    *&v30 = v5;
    type metadata accessor for TextLayout();
    if (!swift_dynamicCastClass())
    {

      v20 = 0;
      OUTLINED_FUNCTION_2_73();
      v25 = 0uLL;
      goto LABEL_10;
    }

    *&v29 = v3;
    v15 = 0;
  }

  *&v28 = v15;

  sub_1E3746E10(v13);
  sub_1E3E3B878();
  v17 = v16;

  (*(v10 + 8))(v13, v8);
  if (!v17)
  {

    v20 = 0;
    goto LABEL_9;
  }

  v18 = v31;
  sub_1E3BF6EB8(v31);
  v19 = sub_1E42027B4();
  (*(v30 + 8))(v18, v29);

  sub_1E3746E10(v13);
  sub_1E3C12CAC(v14, v19, v13, v32);
  v30 = v32[1];
  v31 = v32[0];
  v28 = v32[3];
  v29 = v32[2];
  v27 = v32[4];
  v20 = v33;

  v22 = v27;
  v21 = v28;
  v24 = v29;
  v23 = v30;
  v25 = v31;
LABEL_10:
  *a1 = v25;
  *(a1 + 16) = v23;
  *(a1 + 32) = v24;
  *(a1 + 48) = v21;
  *(a1 + 64) = v22;
  *(a1 + 80) = v20;
}

unint64_t sub_1E3C1363C()
{
  result = qword_1ECF35590;
  if (!qword_1ECF35590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF35590);
  }

  return result;
}

uint64_t type metadata accessor for FittedTextView()
{
  result = qword_1EE2A5A40;
  if (!qword_1EE2A5A40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3C136F8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 81))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1E3C13738(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1E3C137D8()
{
  sub_1E3C13924(319, &qword_1EE289EB0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1E3C13924(319, &qword_1EE289E88, MEMORY[0x1E6980E88], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for TextViewModel();
      if (v2 <= 0x3F)
      {
        sub_1E3C13924(319, qword_1EE287258, type metadata accessor for TextLayout, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E3C13924(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1E3C13988()
{
  result = qword_1ECF355B0;
  if (!qword_1ECF355B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF355A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF355B0);
  }

  return result;
}

unint64_t sub_1E3C139EC()
{
  result = qword_1ECF355B8;
  if (!qword_1ECF355B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF35598);
    swift_getOpaqueTypeConformance2();
    sub_1E3C13988();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF355B8);
  }

  return result;
}

uint64_t sub_1E3C13A90()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E3C13B04@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3C13A90();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E3C13B5C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1E4200684();
}

uint64_t sub_1E3C13BCC(char a1)
{
  v2 = swift_allocObject();
  sub_1E3C13C0C(a1);
  return v2;
}

uint64_t sub_1E3C13C0C(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0);
  OUTLINED_FUNCTION_8_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11[-v7];
  v9 = OBJC_IVAR____TtC8VideosUI26CountDownProgressPresenter__isCountingDown;
  v11[15] = 0;
  sub_1E4200634();
  (*(v5 + 32))(v1 + v9, v8, v2);
  *(v1 + OBJC_IVAR____TtC8VideosUI26CountDownProgressPresenter_hasStartedCountDown) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI26CountDownProgressPresenter_presentedCountdownIdentifiers) = MEMORY[0x1E69E7CD0];
  *(v1 + 16) = a1;
  return v1;
}

uint64_t sub_1E3C13D20(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    OUTLINED_FUNCTION_11_3();

    sub_1E3277398(&v4, v3, a2);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1E3C13D98(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a2)
  {
    v5 = OBJC_IVAR____TtC8VideosUI26CountDownProgressPresenter_presentedCountdownIdentifiers;
    OUTLINED_FUNCTION_15_0();
    v6 = *(v2 + v5);

    LOBYTE(v3) = sub_1E3862230(a1, v3, v6);
  }

  return v3 & 1;
}

uint64_t sub_1E3C13E0C()
{
  v1 = OBJC_IVAR____TtC8VideosUI26CountDownProgressPresenter__isCountingDown;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0);
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(v0 + v1);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

void sub_1E3C13EC0(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>)
{
  type metadata accessor for CountDownButton();

  v17 = a3;

  v18 = j__OUTLINED_FUNCTION_3_24();
  v19 = j__OUTLINED_FUNCTION_3_24();
  v20 = sub_1E3BE6704(a1, a2, v17, a4, v18, v19, a8, a9);
  sub_1E3C1404C(v20);

  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = v17;
  *(a7 + 24) = a8;
  *(a7 + 32) = a4;
  *(a7 + 40) = a9;
  *(a7 + 48) = a5;
  *(a7 + 56) = a6;
  *(a7 + 64) = v20;
  *(a7 + 72) = sub_1E3C1400C;
  *(a7 + 80) = 0;
  *(a7 + 88) = 0;
}

uint64_t sub_1E3C1400C()
{
  type metadata accessor for CountDownProgressPresenter();
  v0 = swift_allocObject();
  sub_1E3C13C0C(0);
  return v0;
}

void sub_1E3C1404C(void *a1)
{
  v3 = swift_allocObject();
  memcpy((v3 + 16), v1, 0x59uLL);
  *(v3 + 112) = a1;
  aBlock[4] = sub_1E3C14B80;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E37C0588;
  aBlock[3] = &block_descriptor_77;
  v4 = _Block_copy(aBlock);
  sub_1E3C14BF4(v1, &v6);
  v5 = a1;

  [v5 setSelectActionHandler_];
  _Block_release(v4);
}

uint64_t sub_1E3C14148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for CountDownButton();
  v7 = sub_1E3BE6974(a1, a2);
  v8 = *(v7 + OBJC_IVAR____TtC8VideosUI15CountDownButton_image);
  v9 = *(v7 + OBJC_IVAR____TtC8VideosUI15CountDownButton_title + 8);
  v19 = *(v7 + OBJC_IVAR____TtC8VideosUI15CountDownButton_title);
  v10 = *(v7 + OBJC_IVAR____TtC8VideosUI15CountDownButton_duration);
  v11 = *(v7 + OBJC_IVAR____TtC8VideosUI15CountDownButton_layout);
  v12 = *((*MEMORY[0x1E69E7D40] & *v7) + 0x88);
  v13 = v7;

  v18 = v8;

  v15 = v12(v14);
  v16 = swift_allocObject();
  *(v16 + 16) = a3;

  sub_1E3C1404C(v13);

  *a4 = v19;
  *(a4 + 8) = v9;
  *(a4 + 16) = v18;
  *(a4 + 24) = v10;
  *(a4 + 32) = v11;
  *(a4 + 40) = v15;
  *(a4 + 48) = sub_1E3C1490C;
  *(a4 + 56) = a1;
  *(a4 + 64) = v13;
  *(a4 + 72) = sub_1E3C148B8;
  *(a4 + 80) = v16;
  *(a4 + 88) = 0;
  return result;
}

id sub_1E3C14394(void *a1)
{
  sub_1E3C1404C(a1);
  type metadata accessor for CountDownProgressPresenter();
  sub_1E3C14860();
  v1 = *(OUTLINED_FUNCTION_0_184() + 16);

  if (v1 == 1)
  {
    OUTLINED_FUNCTION_0_184();
    v3 = sub_1E3C13A90();

    OUTLINED_FUNCTION_16_1();
    if (v3)
    {
      (*(v4 + 224))();
      v5 = OUTLINED_FUNCTION_0_184();
      v6 = OBJC_IVAR____TtC8VideosUI26CountDownProgressPresenter_hasStartedCountDown;
      swift_beginAccess();
      *(v5 + v6) = 1;

      v7 = objc_opt_self();
      [v7 begin];
      v8 = sub_1E4206394();
      [v7 setValue:v8 forKey:*MEMORY[0x1E697A020]];
    }

    else
    {
      (*(v4 + 232))();
      v7 = objc_opt_self();
      [v7 begin];
      v9 = sub_1E4206394();
      [v7 setValue:v9 forKey:*MEMORY[0x1E697A020]];

      OUTLINED_FUNCTION_0_184();
      OUTLINED_FUNCTION_15_0();
    }

    OUTLINED_FUNCTION_16_1();
    (*(v10 + 144))();
    return [v7 commit];
  }

  return result;
}

double sub_1E3C145B8(uint64_t a1, char a2, uint64_t a3, char a4, id a5)
{
  v5 = 0.0;
  if (a2)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = *&a1;
  }

  if ((a4 & 1) == 0)
  {
    v5 = *&a3;
  }

  [a5 vui:1 layoutSubviews:v6 computationOnly:v5];
  if (v6 != 0.0)
  {
    return v6;
  }

  return result;
}

uint64_t sub_1E3C1468C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E3C14B2C();

  return sub_1E3E36D18(a1, a2, v4);
}

uint64_t sub_1E3C146D8()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3C14B2C();
  v0 = OUTLINED_FUNCTION_3_5();

  return sub_1E3E36D2C(v0, v1, v2, v3);
}

uint64_t sub_1E3C14744()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3C14978();
  v0 = OUTLINED_FUNCTION_3_5();

  return MEMORY[0x1EEDDAA28](v0);
}

uint64_t sub_1E3C14798()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3C14978();
  v0 = OUTLINED_FUNCTION_3_5();

  return MEMORY[0x1EEDDA9B8](v0);
}

void sub_1E3C147EC()
{
  sub_1E3C14978();
  sub_1E4201F04();
  __break(1u);
}

uint64_t type metadata accessor for CountDownProgressPresenter()
{
  result = qword_1EE295C50;
  if (!qword_1EE295C50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E3C14860()
{
  result = qword_1ECF2B260;
  if (!qword_1ECF2B260)
  {
    type metadata accessor for CountDownProgressPresenter();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2B260);
  }

  return result;
}

uint64_t sub_1E3C148B8()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    type metadata accessor for CountDownProgressPresenter();
    v1 = swift_allocObject();
    sub_1E3C13C0C(1);
  }

  return v1;
}

uint64_t sub_1E3C1490C(char a1)
{
  if (a1)
  {
    v2 = 0;
  }

  else
  {
    v2 = 2;
  }

  return (*(*v1 + 800))(v2, 0, 0, 0);
}

unint64_t sub_1E3C14950(uint64_t a1)
{
  result = sub_1E3C14978();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E3C14978()
{
  result = qword_1ECF355C8;
  if (!qword_1ECF355C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF355C8);
  }

  return result;
}

void sub_1E3C149D8()
{
  sub_1E32A995C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1E3C14A84(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 89))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1E3C14AC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E3C14B2C()
{
  result = qword_1ECF355D0;
  if (!qword_1ECF355D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF355D0);
  }

  return result;
}

uint64_t sub_1E3C14B80()
{
  v1 = *(v0 + 64);
  v2 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 112)) + 0xA0))();
  return v1(v2 & 1);
}

unint64_t GroupActivityStartupAction.init(rawValue:)(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1E3C14C40()
{
  sub_1E4207B44();
  sub_1E4206014();
  return sub_1E4207BA4();
}

uint64_t sub_1E3C14CBC()
{
  sub_1E4207B44();
  sub_1E4206014();
  return sub_1E4207BA4();
}

unint64_t sub_1E3C14D14@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = GroupActivityStartupAction.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t GroupActivityEndReason.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1E3C14D60()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_16_0();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E3C14DD0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3C14D60();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E3C14E28()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v0;
  OUTLINED_FUNCTION_77();
  sub_1E4200684();
  OUTLINED_FUNCTION_39_1();
  sub_1E42074B4();

  OUTLINED_FUNCTION_41_7();
  OUTLINED_FUNCTION_82_10();
  v9 = v1;
  v2 = sub_1E3C14D60();
  v3 = (v2 & 1) == 0;
  if (v2)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  MEMORY[0x1E69109E0](v4, v5);

  OUTLINED_FUNCTION_0_185();
  sub_1E32AAD78(v6, v9, 0x6F69737365537369, 0xEF6576697463416ELL, v7);
}

uint64_t sub_1E3C14F38()
{
  v0 = *(**sub_1E32ABF64() + 96);

  v0(v1);
  OUTLINED_FUNCTION_12_1();

  return v0 & 1;
}

uint64_t sub_1E3C14F9C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_16_0();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E3C1500C(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v1;
  OUTLINED_FUNCTION_178_2(v3, v4, v5, v6, v7, v8, v9, v10, v12, a1);
  return sub_1E4200684();
}

BOOL sub_1E3C15074()
{
  sub_1E4207784();
  OUTLINED_FUNCTION_50();

  return v0 != 0;
}

BOOL sub_1E3C150C4@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1E3C15074();
  *a1 = result;
  return result;
}

uint64_t sub_1E3C1511C()
{
  OUTLINED_FUNCTION_170_2();
  sub_1E3C26968();
  OUTLINED_FUNCTION_171_0();
  return sub_1E4206284();
}

uint64_t sub_1E3C1516C()
{
  OUTLINED_FUNCTION_170_2();
  sub_1E3C26968();
  OUTLINED_FUNCTION_171_0();
  return sub_1E4206274();
}

uint64_t sub_1E3C151AC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1E42079A4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1E3C15234@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E3C151AC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1E3C15260()
{
  sub_1E3C2664C();
  v0 = OUTLINED_FUNCTION_19_3();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1E3C15298()
{
  sub_1E3C2664C();
  v0 = OUTLINED_FUNCTION_19_3();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1E3C152D0(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35750);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_8_4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E3C2664C();
  sub_1E4207C14();
  sub_1E3C266A0();
  sub_1E42078E4();
  v3 = OUTLINED_FUNCTION_53();
  return v4(v3);
}

uint64_t sub_1E3C153EC(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35758);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_20_1();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E3C2664C();
  sub_1E4207C04();
  if (!v1)
  {
    sub_1E3C266F4();
    sub_1E4207864();
    v4 = OUTLINED_FUNCTION_171_0();
    v5(v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E3C15550()
{
  v1 = v0;
  v2 = sub_1E41FE624();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  sub_1E42074B4();

  OUTLINED_FUNCTION_41_7();
  v21 = v9;
  v10 = OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_modifyingActivityIdentifier;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (__swift_getEnumTagSinglePayload(v1 + v10, 1, v2))
  {
    v11 = 0xE300000000000000;
    v12 = 7104878;
  }

  else
  {
    v13 = (*(v4 + 16))(v8, v1 + v10, v2);
    v12 = MEMORY[0x1E6908F50](v13);
    v11 = v14;
    v15 = OUTLINED_FUNCTION_11_6();
    v16(v15);
  }

  MEMORY[0x1E69109E0](v12, v11);

  OUTLINED_FUNCTION_0_185();
  sub_1E32AAD78(v18, v21, 0xD00000000000001BLL, v17 | 0x8000000000000000, v19);
}

uint64_t sub_1E3C156EC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_modifyingActivityIdentifier;
  OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_11_3();
  sub_1E3C256FC(a1, v1 + v3);
  swift_endAccess();
  sub_1E3C15550();
  return sub_1E325F7A8(a1, &qword_1ECF29408);
}

uint64_t sub_1E3C1575C(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_participantsCount);
  *(v1 + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_participantsCount) = result;
  v3 = *(v1 + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_participantsCount);
  if (v3 != v2 && *(v1 + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_participantsCountMax) < v3)
  {
    *(v1 + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_participantsCountMax) = v3;
  }

  return result;
}

void sub_1E3C15798()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2D2B0);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_44();
  v48 = v6;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF33A10);
  OUTLINED_FUNCTION_0_10();
  v47 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v46 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2ADF0);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_138();
  sub_1E4206C04();
  OUTLINED_FUNCTION_0_10();
  v44 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35620);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_31_2();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35628);
  OUTLINED_FUNCTION_0_10();
  v42 = v15;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_20_1();
  v17 = OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_playerObserver;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_playerObserver))
  {

    sub_1E42004E4();
  }

  *(v0 + v17) = 0;

  v18 = OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_didPlayToEndObserver;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_didPlayToEndObserver))
  {

    sub_1E42004E4();
  }

  v43 = v18;
  *(v0 + v18) = 0;

  v19 = OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_playingObserver;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_playingObserver))
  {

    sub_1E42004E4();
  }

  *(v0 + v19) = 0;

  v41 = v19;
  v20 = *(v0 + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_sharedPlayer);
  if (v20)
  {
    swift_getKeyPath();
    v40 = ObjectType;
    v39 = v20;
    sub_1E41FE2F4();

    sub_1E3280A90(0, &qword_1EE23ADD8);
    sub_1E32752B0(&qword_1EE23AD78, &qword_1ECF35620);
    sub_1E42006C4();
    v21 = OUTLINED_FUNCTION_168();
    v22(v21);
    OUTLINED_FUNCTION_4_0();
    swift_allocObject();
    OUTLINED_FUNCTION_45_2();
    sub_1E32752B0(&qword_1EE28A370, &qword_1ECF35628);
    v23 = sub_1E4200844();

    (*(v42 + 8))(v1, v14);
    *(v2 + v17) = v23;

    v24 = objc_opt_self();
    v25 = [v24 defaultCenter];
    v26 = v39;
    OUTLINED_FUNCTION_8_6();
    sub_1E4206C14();

    OUTLINED_FUNCTION_4_0();
    swift_allocObject();
    OUTLINED_FUNCTION_45_2();
    sub_1E32AC410(&qword_1EE23B130, MEMORY[0x1E6969F20]);
    sub_1E4200844();

    v27 = *(v44 + 8);
    v28 = OUTLINED_FUNCTION_120();
    v27(v28);
    OUTLINED_FUNCTION_162(v43);
    v29 = [v24 defaultCenter];
    v45 = v26;
    sub_1E4206C14();

    sub_1E42007B4();
    v30 = OUTLINED_FUNCTION_120();
    v27(v30);
    sub_1E3280A90(0, &qword_1EE23B1D0);
    v50 = sub_1E4206A04();
    sub_1E42069A4();
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
    sub_1E32752B0(&qword_1EE28A2E0, &unk_1ECF33A10);
    sub_1E3746800();
    sub_1E42007D4();
    sub_1E325F7A8(v48, &unk_1ECF2D2B0);

    (*(v47 + 8))(v46, v49);
    OUTLINED_FUNCTION_4_0();
    v35 = swift_allocObject();
    OUTLINED_FUNCTION_105_2(v35);
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_2_4();
    v36 = swift_allocObject();
    *(v36 + 16) = v46;
    *(v36 + 24) = v40;
    OUTLINED_FUNCTION_13_106(&qword_1EE28A250, &qword_1ECF2ADF0);
    sub_1E4200844();

    v37 = OUTLINED_FUNCTION_124();
    v38(v37);
    OUTLINED_FUNCTION_162(v41);
  }

  OUTLINED_FUNCTION_25_2();
}

id sub_1E3C15F80@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

void sub_1E3C15F8C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  sub_1E41FE624();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v12 = OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_isConfigured;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (*(v1 + v12) != 1)
  {
    v18 = sub_1E324FBDC();
    (*(v6 + 16))(v10, v18, v4);
    v19 = sub_1E41FFC94();
    v20 = sub_1E42067F4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v55[0] = v22;
      *v21 = 136315138;
      OUTLINED_FUNCTION_23();
      *(v21 + 4) = sub_1E3270FC8(0xD000000000000011, v23, v55);
      _os_log_impl(&dword_1E323F000, v19, v20, "%s GroupActivitiesManager is not yet configured", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    v24 = OUTLINED_FUNCTION_57();
    v25(v24);
    goto LABEL_18;
  }

  if (!sub_1E3C14F9C())
  {
    OUTLINED_FUNCTION_0_185();
    OUTLINED_FUNCTION_43_42();
    sub_1E32AAD78(v26, v27, 0xD000000000000011, v28, v29);
LABEL_18:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v54 = v3;
  v13 = objc_opt_self();
  v14 = [v13 standardUserDefaults];
  v15 = sub_1E4205ED4();
  v16 = [v14 BOOLForKey_];

  if (v16)
  {
    v17 = v54;
    if (!v54)
    {
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  v30 = [v13 standardUserDefaults];
  v31 = sub_1E4205ED4();
  v32 = [v30 BOOLForKey_];

  v17 = v54;
  if (v54 || !v32)
  {
LABEL_15:
    v55[1] = 0xE000000000000000;
    sub_1E42074B4();
    v55[4] = 0;
    v55[5] = 0xE000000000000000;
    MEMORY[0x1E69109E0](0xD000000000000010, 0x80000001E4276950);
    sub_1E41FF434();
    OUTLINED_FUNCTION_3_143();
    sub_1E32AC410(v42, v43);
    OUTLINED_FUNCTION_180_2();
    v44 = sub_1E4207944();
    MEMORY[0x1E69109E0](v44);

    v45 = OUTLINED_FUNCTION_124();
    v46(v45);
    MEMORY[0x1E69109E0](0x6572206874697720, 0xED0000206E6F7361);
    v55[0] = v17;
    sub_1E4207614();
    OUTLINED_FUNCTION_23();
    MEMORY[0x1E69109E0](0xD000000000000010);
    v55[3] = type metadata accessor for GroupWatchActivity();
    sub_1E41FF4B4();
    v47 = sub_1E3294FA4(v55);
    MEMORY[0x1E69109E0](v47);

    OUTLINED_FUNCTION_0_185();
    OUTLINED_FUNCTION_55_31();
    sub_1E32AAD78(v48, v49, 0xD000000000000011, v50, v51);

    v52 = v1 + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_endSessionReason;
    *v52 = v17;
    *(v52 + 8) = 0;
    sub_1E41FF444();

    goto LABEL_18;
  }

LABEL_12:
  OUTLINED_FUNCTION_0_185();
  OUTLINED_FUNCTION_43_42();
  sub_1E32AAD78(v33, v34, 0xD000000000000011, v35, v36);
  v37 = *(v1 + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_sharedPlayer);
  if (!v37)
  {

    v41 = 0;
    goto LABEL_17;
  }

  v38 = [v37 avPlayer];
  if (v38)
  {
    v39 = v38;
    v40 = [v38 playbackCoordinator];

    v41 = [v40 beginSuspensionForReason_];

LABEL_17:
    v53 = *(v1 + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_repeatSuspension);
    *(v1 + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_repeatSuspension) = v41;

    goto LABEL_18;
  }

  __break(1u);
}

BOOL sub_1E3C16534()
{
  v0 = sub_1E41FDF24();
  if (!v0)
  {
    v8 = 0u;
    v9 = 0u;
    goto LABEL_6;
  }

  v1 = v0;
  *&v8 = sub_1E4205F14();
  *(&v8 + 1) = v2;
  sub_1E4207414();
  sub_1E375D7E8(v7, v1, &v8);

  sub_1E375D84C(v7);
  if (!*(&v9 + 1))
  {
LABEL_6:
    sub_1E325F7A8(&v8, &unk_1ECF296E0);
    goto LABEL_7;
  }

  sub_1E3280A90(0, &qword_1EE23B280);
  if (swift_dynamicCast())
  {
    v3 = v7[0];
    goto LABEL_8;
  }

LABEL_7:
  v3 = 0;
LABEL_8:
  v4 = [objc_opt_self() playing];
  v5 = v4;
  if (v3)
  {
    if (v4)
    {

      swift_unknownObjectRelease();
      return v5 == v3;
    }

    swift_unknownObjectRelease();
    return 0;
  }

  if (v4)
  {

    return 0;
  }

  return 1;
}

void sub_1E3C1668C()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_106();
  v64 = sub_1E41FFC44();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  v6 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v66 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v65 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  OUTLINED_FUNCTION_17_2(v11);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_44();
  v70 = v13;
  OUTLINED_FUNCTION_138();
  v14 = sub_1E41FE624();
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v69 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_78();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    v63 = v16;
    v67 = v1;
    v68 = v4;
    v24 = OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_repeatSuspension;
    v25 = *(Strong + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_repeatSuspension);
    v71 = v6;
    if (v25)
    {
      v26 = MEMORY[0x1E6960CC0];
      v27 = *MEMORY[0x1E6960CC0];
      v28 = *(MEMORY[0x1E6960CC0] + 16);
      v29 = v25;
      v72[0] = v27;
      v72[1] = *(v26 + 8);
      v72[2] = v28;
      [v29 endProposingNewTime_];
      if (sub_1E3C14F9C())
      {
        v30 = sub_1E41FF404();

        if (v30)
        {
          v31 = *&v23[OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_sharedPlayer];
          if (v31)
          {
            v32 = v31;
            [v32 play];
          }
        }
      }

      v33 = *&v23[v24];
      *&v23[v24] = 0;

      v6 = v71;
    }

    v34 = sub_1E3C14F9C();
    if (v34)
    {
      v35 = v34;
      sub_1E41FF434();

      v36 = v63;
      v62 = *(v63 + 32);
      v62(v2, v0, v14);
      sub_1E4206474();
      v37 = v70;
      OUTLINED_FUNCTION_32_2();
      __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
      OUTLINED_FUNCTION_4_0();
      v42 = swift_allocObject();
      OUTLINED_FUNCTION_105_2(v42);
      swift_unknownObjectWeakInit();
      OUTLINED_FUNCTION_146_2();
      v43 = v69;
      v44(v69, v2, v14);
      v45 = (*(v36 + 80) + 40) & ~*(v36 + 80);
      v46 = swift_allocObject();
      v46[2] = 0;
      v46[3] = 0;
      v46[4] = v35;
      v62(v46 + v45, v43, v14);
      v47 = OUTLINED_FUNCTION_23_7();
      v48 = v37;
      v6 = v71;
      sub_1E3797438(v47, v49, v48, v50, v46);

      (*(v36 + 8))(v2, v14);
    }

    v51 = sub_1E3C14D60();
    v53 = v67;
    v52 = v68;
    if ((v51 & 1) != 0 && *&v23[OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_signpostState])
    {
      *&v23[OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_signpostState] = 0;
      v54 = sub_1E41FFC14();
      v55 = v65;
      sub_1E41FFC54();
      v56 = sub_1E4206B94();
      if (sub_1E42070B4())
      {

        sub_1E41FFC84();

        if ((*(v52 + 88))(v53, v64) == *MEMORY[0x1E69E93E8])
        {
          v57 = "[Error] Interval already ended";
        }

        else
        {
          v58 = OUTLINED_FUNCTION_76_0();
          v59(v58);
          v57 = "";
        }

        v60 = swift_slowAlloc();
        *v60 = 0;
        v61 = sub_1E41FFBD4();
        _os_signpost_emit_with_name_impl(&dword_1E323F000, v54, v56, v61, "tv.watch-together.content-ready", v57, v60, 2u);
        OUTLINED_FUNCTION_6_0();
      }

      (*(v66 + 8))(v55, v6);
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_25_2();
}