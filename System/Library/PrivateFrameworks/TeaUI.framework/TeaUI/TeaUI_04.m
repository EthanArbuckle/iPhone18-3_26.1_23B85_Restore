uint64_t sub_1D7E5CBB0()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_12();
  v3 = v2;
  OUTLINED_FUNCTION_21_17();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_4();
  *v6 = v5;
  *(v3 + 184) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_62();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D7E5CCB0(unint64_t *a1, uint64_t a2)
{
  sub_1D7E5CDF0(0, a1, a2, MEMORY[0x1E69E6720]);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_7_0();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7E5CD18()
{
  OUTLINED_FUNCTION_9_14();
  v1 = v0[19];
  v3 = v0[11];
  v2 = v0[12];
  v4 = swift_task_alloc();
  v0[24] = v4;
  v4[2] = v3;
  v4[3] = v1;
  v4[4] = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_35_2();
  v0[25] = v5;
  *v5 = v6;
  v5[1] = sub_1D7E800F0;
  OUTLINED_FUNCTION_101_2();

  return sub_1D7E554B8(v7, 3, 4, v8, v4, v9);
}

void sub_1D7E5CDF0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D7E5CE90(void *a1)
{
  v1 = a1;
  sub_1D7E5CF6C();
}

uint64_t sub_1D7E5CED8()
{
  OUTLINED_FUNCTION_9_14();
  OUTLINED_FUNCTION_61_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_14(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_13_27(v1);
  OUTLINED_FUNCTION_64();

  return sub_1D7E5D078(v3, v4, v5, v6);
}

id sub_1D7E5CF6C()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_10_14();
  objc_msgSendSuper2(&v3, sel_layoutSubviews);
  v1 = *&v0[qword_1EDBB8C88];
  [v0 bounds];
  return [v1 setFrame_];
}

id UIColor.legibleForeground.getter()
{
  [v0 ts_luminance];
  v2 = v1;
  v3 = objc_opt_self();
  v4 = &selRef_blackColor;
  if (v2 <= 0.7)
  {
    v4 = &selRef_whiteColor;
  }

  v5 = [v3 *v4];

  return v5;
}

uint64_t sub_1D7E5D078(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  v5 = *a2;
  v4[14] = *a2;
  v4[15] = *(v5 + 96);
  v4[16] = *(v5 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[17] = AssociatedTypeWitness;
  v7 = swift_getAssociatedTypeWitness();
  v4[18] = v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4[19] = AssociatedConformanceWitness;
  v9 = swift_getAssociatedConformanceWitness();
  v4[20] = v9;
  v4[2] = AssociatedTypeWitness;
  v4[3] = v7;
  v4[4] = AssociatedConformanceWitness;
  v4[5] = v9;
  v10 = type metadata accessor for BlueprintModifierResult();
  v4[21] = v10;
  v11 = *(v10 - 8);
  v4[22] = v11;
  v4[23] = *(v11 + 64);
  v4[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D7E5D2C8, 0, 0);
}

void (*sub_1D7E5D254(uint64_t **a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1D7E966E4(v2);
  return sub_1D7E46A38;
}

uint64_t sub_1D7E5D2C8()
{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 168);
  v4 = *(v0 + 176);
  v15 = *(v0 + 128);
  v16 = *(v0 + 120);
  v5 = *(v0 + 104);
  v6 = *(v0 + 112);
  v7 = *(v0 + 88);
  v17 = *(v0 + 152);
  v18 = *(v0 + 136);
  (*(v4 + 16))(v1, *(v0 + 96), v3);
  v8 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v9 = (v2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  *(v0 + 200) = v10;
  *(v10 + 2) = v15;
  *(v10 + 3) = *(v6 + 88);
  *(v10 + 4) = v16;
  *(v10 + 5) = *(v6 + 104);
  *(v10 + 6) = v7;
  (*(v4 + 32))(&v10[v8], v1, v3);
  *&v10[v9] = v5;

  v11 = swift_task_alloc();
  *(v0 + 208) = v11;
  *(v0 + 48) = v18;
  *(v0 + 64) = v17;
  v12 = type metadata accessor for BlueprintPipelineProcessingResult();
  *v11 = v0;
  v11[1] = sub_1D7E7FDDC;
  v13 = *(v0 + 80);

  return MEMORY[0x1EEE44AD8](v13, &unk_1D81AF6D8, v10, v12);
}

void sub_1D7E5D478()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_129();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_74_7();
  type metadata accessor for BlueprintModifierResult();
  OUTLINED_FUNCTION_20_19();
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v4 = *(v3 + 64);

  v5 = v0 + v2;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      OUTLINED_FUNCTION_45_9();
      if (*(v5 + 40))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v5 + 16);
      }

      OUTLINED_FUNCTION_15_22();
      type metadata accessor for Blueprint();
      OUTLINED_FUNCTION_9_24();
      OUTLINED_FUNCTION_4_2();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_3_11();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_18_20();
      OUTLINED_FUNCTION_4_3();
      (*(v45 + 8))(v5 + v2);
      OUTLINED_FUNCTION_26_12();
      OUTLINED_FUNCTION_7_5();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_0_44();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_1_1();
      WitnessTable = swift_getWitnessTable();
      OUTLINED_FUNCTION_11_31(WitnessTable);
      OUTLINED_FUNCTION_4_3();
      (*(v47 + 8))(v5 + v4);
      OUTLINED_FUNCTION_90_3();
      type metadata accessor for BlueprintBookmark();
      OUTLINED_FUNCTION_49_5();
      v5 += *(swift_getTupleTypeMetadata2() + 48);
      OUTLINED_FUNCTION_31();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          goto LABEL_38;
        case 1u:
          goto LABEL_40;
        case 2u:
        case 3u:
        case 4u:
          goto LABEL_37;
        default:
          goto LABEL_58;
      }

      break;
    case 1u:
      OUTLINED_FUNCTION_45_9();
      if (*(v5 + 40))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v5 + 16);
      }

      OUTLINED_FUNCTION_15_22();
      type metadata accessor for Blueprint();
      OUTLINED_FUNCTION_9_24();
      OUTLINED_FUNCTION_4_2();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_3_11();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_18_20();
      OUTLINED_FUNCTION_4_3();
      (*(v48 + 8))(v5 + v2);
      OUTLINED_FUNCTION_26_12();
      OUTLINED_FUNCTION_7_5();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_0_44();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_1_1();
      v49 = swift_getWitnessTable();
      OUTLINED_FUNCTION_11_31(v49);
      OUTLINED_FUNCTION_4_3();
      (*(v50 + 8))(v5 + v4);
      OUTLINED_FUNCTION_90_3();
      type metadata accessor for BlueprintBookmark();
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v52 = v5 + *(TupleTypeMetadata3 + 48);
      OUTLINED_FUNCTION_15_5();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v76 = sub_1D818E994();
          if (!OUTLINED_FUNCTION_73_4(v76))
          {
            OUTLINED_FUNCTION_3_0();
            v77 = OUTLINED_FUNCTION_15_5();
            goto LABEL_54;
          }

          break;
        case 1u:
          sub_1D818E994();
          OUTLINED_FUNCTION_4_3();
          v78 = *(v79 + 8);
          v77 = v52;
LABEL_54:
          v78(v77);
          break;
        case 2u:
        case 3u:
        case 4u:

          break;
        default:
          break;
      }

      v75 = *(TupleTypeMetadata3 + 64);
      goto LABEL_56;
    case 2u:
      OUTLINED_FUNCTION_45_9();
      if (*(v5 + 40))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v5 + 16);
      }

      OUTLINED_FUNCTION_15_22();
      type metadata accessor for Blueprint();
      OUTLINED_FUNCTION_9_24();
      OUTLINED_FUNCTION_4_2();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_3_11();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_18_20();
      OUTLINED_FUNCTION_4_3();
      (*(v28 + 8))(v5 + v2);
      OUTLINED_FUNCTION_26_12();
      OUTLINED_FUNCTION_7_5();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_0_44();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_1_1();
      v29 = swift_getWitnessTable();
      OUTLINED_FUNCTION_11_31(v29);
      OUTLINED_FUNCTION_4_3();
      (*(v30 + 8))(v5 + v4);
      OUTLINED_FUNCTION_90_3();
      type metadata accessor for BlueprintBookmark();
      OUTLINED_FUNCTION_49_5();
      v5 += *(swift_getTupleTypeMetadata2() + 48);
      OUTLINED_FUNCTION_31();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          goto LABEL_38;
        case 1u:
          goto LABEL_40;
        case 2u:
        case 3u:
        case 4u:
          goto LABEL_37;
        default:
          goto LABEL_58;
      }

      break;
    case 3u:
      OUTLINED_FUNCTION_45_9();
      if (*(v5 + 40))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v5 + 16);
      }

      OUTLINED_FUNCTION_15_22();
      type metadata accessor for Blueprint();
      OUTLINED_FUNCTION_9_24();
      OUTLINED_FUNCTION_4_2();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_3_11();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_18_20();
      OUTLINED_FUNCTION_4_3();
      (*(v31 + 8))(v5 + v2);
      OUTLINED_FUNCTION_26_12();
      OUTLINED_FUNCTION_7_5();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_0_44();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_1_1();
      v32 = swift_getWitnessTable();
      OUTLINED_FUNCTION_11_31(v32);
      OUTLINED_FUNCTION_4_3();
      (*(v33 + 8))(v5 + v4);
      OUTLINED_FUNCTION_90_3();
      sub_1D7E0631C(255, &qword_1EDBBA670);
      type metadata accessor for BlueprintBookmark();
      OUTLINED_FUNCTION_49_5();
      v34 = swift_getTupleTypeMetadata3();
      OUTLINED_FUNCTION_41_7(v34);
      v5 += v35;
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          goto LABEL_38;
        case 1u:
          goto LABEL_40;
        case 2u:
        case 3u:
        case 4u:
          goto LABEL_37;
        default:
          goto LABEL_58;
      }

      break;
    case 4u:
      OUTLINED_FUNCTION_45_9();
      if (*(v5 + 40))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v5 + 16);
      }

      OUTLINED_FUNCTION_15_22();
      type metadata accessor for Blueprint();
      OUTLINED_FUNCTION_9_24();
      OUTLINED_FUNCTION_4_2();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_3_11();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_18_20();
      OUTLINED_FUNCTION_4_3();
      (*(v18 + 8))(v5 + v2);
      OUTLINED_FUNCTION_26_12();
      OUTLINED_FUNCTION_7_5();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_0_44();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_1_1();
      v19 = swift_getWitnessTable();
      OUTLINED_FUNCTION_11_31(v19);
      OUTLINED_FUNCTION_4_3();
      (*(v20 + 8))(v5 + v4);
      v21 = OUTLINED_FUNCTION_90_3();
      MEMORY[0x1EEE9AC00](v21);
      OUTLINED_FUNCTION_51_6();
      OUTLINED_FUNCTION_5_1(v22);
      v23 = sub_1D7E0631C(255, &qword_1EDBBA670);
      OUTLINED_FUNCTION_117_2(v23);
      v24 = type metadata accessor for BlueprintBookmark();
      OUTLINED_FUNCTION_28_11(v24, &type metadata for BlueprintAnimation);
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      OUTLINED_FUNCTION_41_7(TupleTypeMetadata);
      v27 = v5 + v26;
      type metadata accessor for BlueprintBookmark();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v71 = sub_1D818E994();
          if (!OUTLINED_FUNCTION_73_4(v71))
          {
            OUTLINED_FUNCTION_3_0();
            v72 = OUTLINED_FUNCTION_15_5();
            goto LABEL_49;
          }

          break;
        case 1u:
          sub_1D818E994();
          OUTLINED_FUNCTION_4_3();
          v73 = *(v74 + 8);
          v72 = v27;
LABEL_49:
          v73(v72);
          break;
        case 2u:
        case 3u:
        case 4u:

          break;
        default:
          break;
      }

      v75 = *(TupleTypeMetadata + 80);
LABEL_56:
      v44 = v5 + v75;
      if (*(v44 + 40))
      {
        goto LABEL_57;
      }

      break;
    case 5u:
      OUTLINED_FUNCTION_45_9();
      if (*(v5 + 40))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v5 + 16);
      }

      OUTLINED_FUNCTION_15_22();
      type metadata accessor for Blueprint();
      OUTLINED_FUNCTION_9_24();
      OUTLINED_FUNCTION_4_2();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_3_11();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_18_20();
      OUTLINED_FUNCTION_4_3();
      (*(v56 + 8))(v5 + v2);
      OUTLINED_FUNCTION_26_12();
      OUTLINED_FUNCTION_7_5();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_0_44();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_1_1();
      v57 = swift_getWitnessTable();
      OUTLINED_FUNCTION_11_31(v57);
      OUTLINED_FUNCTION_4_3();
      (*(v58 + 8))(v5 + v4);
      OUTLINED_FUNCTION_90_3();
      sub_1D7E0631C(255, &qword_1EDBBA670);
      type metadata accessor for BlueprintBookmark();
      OUTLINED_FUNCTION_49_5();
      v59 = swift_getTupleTypeMetadata3();
      OUTLINED_FUNCTION_41_7(v59);
      v5 += v60;
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          goto LABEL_38;
        case 1u:
          goto LABEL_40;
        case 2u:
        case 3u:
        case 4u:
          goto LABEL_37;
        default:
          goto LABEL_58;
      }

      break;
    case 6u:
      OUTLINED_FUNCTION_45_9();
      if (*(v5 + 40))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v5 + 16);
      }

      OUTLINED_FUNCTION_15_22();
      type metadata accessor for Blueprint();
      OUTLINED_FUNCTION_9_24();
      OUTLINED_FUNCTION_4_2();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_3_11();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_18_20();
      OUTLINED_FUNCTION_4_3();
      (*(v67 + 8))(v5 + v2);
      OUTLINED_FUNCTION_26_12();
      OUTLINED_FUNCTION_7_5();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_0_44();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_1_1();
      v68 = swift_getWitnessTable();
      OUTLINED_FUNCTION_11_31(v68);
      OUTLINED_FUNCTION_4_3();
      (*(v69 + 8))(v5 + v4);
      OUTLINED_FUNCTION_90_3();
      sub_1D7E0631C(255, &qword_1EDBBA670);
      type metadata accessor for BlueprintViewActionResponse();
      OUTLINED_FUNCTION_49_5();
      v70 = swift_getTupleTypeMetadata3();
      OUTLINED_FUNCTION_41_7(v70);
      goto LABEL_45;
    case 7u:
      OUTLINED_FUNCTION_45_9();
      if (*(v5 + 40))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v5 + 16);
      }

      OUTLINED_FUNCTION_15_22();
      type metadata accessor for Blueprint();
      OUTLINED_FUNCTION_9_24();
      OUTLINED_FUNCTION_4_2();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_3_11();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_18_20();
      OUTLINED_FUNCTION_4_3();
      (*(v36 + 8))(v5 + v2);
      OUTLINED_FUNCTION_26_12();
      OUTLINED_FUNCTION_7_5();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_0_44();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_1_1();
      v37 = swift_getWitnessTable();
      OUTLINED_FUNCTION_11_31(v37);
      OUTLINED_FUNCTION_4_3();
      (*(v38 + 8))(v5 + v4);
      v39 = OUTLINED_FUNCTION_90_3();
      MEMORY[0x1EEE9AC00](v39);
      OUTLINED_FUNCTION_51_6();
      OUTLINED_FUNCTION_5_1(v40);
      v41 = sub_1D7E0631C(255, &qword_1EDBBA670);
      OUTLINED_FUNCTION_117_2(v41);
      v42 = type metadata accessor for BlueprintViewActionResponse();
      OUTLINED_FUNCTION_28_11(v42, &type metadata for BlueprintAnimation);
      v43 = swift_getTupleTypeMetadata();
      OUTLINED_FUNCTION_41_7(v43);

      v44 = v5 + *(v43 + 80);
      if (!*(v44 + 40))
      {
        break;
      }

LABEL_57:
      __swift_destroy_boxed_opaque_existential_1Tm(v44 + 16);
      break;
    case 8u:
    case 0xCu:
      OUTLINED_FUNCTION_45_9();
      if (*(v5 + 40))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v5 + 16);
      }

      OUTLINED_FUNCTION_15_22();
      type metadata accessor for Blueprint();
      OUTLINED_FUNCTION_9_24();
      OUTLINED_FUNCTION_4_2();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_3_11();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_18_20();
      OUTLINED_FUNCTION_4_3();
      (*(v6 + 8))(v5 + v2);
      OUTLINED_FUNCTION_26_12();
      OUTLINED_FUNCTION_7_5();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_0_44();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_1_1();
      v7 = swift_getWitnessTable();
      OUTLINED_FUNCTION_11_31(v7);
      OUTLINED_FUNCTION_4_3();
      (*(v8 + 8))(v5 + v4);
      OUTLINED_FUNCTION_90_3();
      sub_1D7E0631C(255, &qword_1EDBBA670);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      __swift_destroy_boxed_opaque_existential_1Tm(v5 + *(TupleTypeMetadata2 + 48));
      break;
    case 9u:
      type metadata accessor for BlueprintBookmark();
      OUTLINED_FUNCTION_25();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          goto LABEL_38;
        case 1u:
          goto LABEL_40;
        case 2u:
        case 3u:
        case 4u:
          goto LABEL_37;
        default:
          goto LABEL_58;
      }

    case 0xAu:

      break;
    case 0xBu:
      OUTLINED_FUNCTION_45_9();
      if (*(v5 + 40))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v5 + 16);
      }

      OUTLINED_FUNCTION_15_22();
      type metadata accessor for Blueprint();
      OUTLINED_FUNCTION_9_24();
      OUTLINED_FUNCTION_4_2();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_3_11();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_18_20();
      OUTLINED_FUNCTION_4_3();
      (*(v10 + 8))(v5 + v2);
      OUTLINED_FUNCTION_26_12();
      OUTLINED_FUNCTION_7_5();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_0_44();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_1_1();
      v11 = swift_getWitnessTable();
      OUTLINED_FUNCTION_11_31(v11);
      OUTLINED_FUNCTION_4_3();
      (*(v12 + 8))(v5 + v4);
      v13 = OUTLINED_FUNCTION_90_3();
      MEMORY[0x1EEE9AC00](v13);
      OUTLINED_FUNCTION_51_6();
      OUTLINED_FUNCTION_6_51(v14);
      OUTLINED_FUNCTION_29_10(v15);
      v80 = sub_1D7E0631C(255, &qword_1EDBBA670);
      OUTLINED_FUNCTION_24_13(v80, qword_1EDBB68A8);
      v16 = type metadata accessor for BlueprintBookmark();
      OUTLINED_FUNCTION_76_5(v16);
      v17 = swift_getTupleTypeMetadata();
      OUTLINED_FUNCTION_41_7(v17);

      v5 += *(v17 + 96);
      type metadata accessor for BlueprintBookmark();
      OUTLINED_FUNCTION_25();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
LABEL_38:
          v61 = sub_1D818E994();
          v62 = OUTLINED_FUNCTION_0_110();
          if (!__swift_getEnumTagSinglePayload(v62, v63, v61))
          {
            OUTLINED_FUNCTION_3_0();
            v64 = OUTLINED_FUNCTION_31();
            goto LABEL_41;
          }

          break;
        case 1u:
LABEL_40:
          sub_1D818E994();
          OUTLINED_FUNCTION_4_3();
          v65 = *(v66 + 8);
          v64 = v5;
LABEL_41:
          v65(v64);
          break;
        case 2u:
        case 3u:
        case 4u:
LABEL_37:

          break;
        default:
          goto LABEL_58;
      }

      break;
    case 0xDu:
      OUTLINED_FUNCTION_45_9();
      if (*(v5 + 40))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v5 + 16);
      }

      OUTLINED_FUNCTION_15_22();
      type metadata accessor for Blueprint();
      OUTLINED_FUNCTION_9_24();
      OUTLINED_FUNCTION_4_2();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_3_11();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_18_20();
      OUTLINED_FUNCTION_4_3();
      (*(v53 + 8))(v5 + v2);
      OUTLINED_FUNCTION_26_12();
      OUTLINED_FUNCTION_7_5();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_0_44();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_1_1();
      v54 = swift_getWitnessTable();
      OUTLINED_FUNCTION_11_31(v54);
      OUTLINED_FUNCTION_4_3();
      (*(v55 + 8))(v5 + v4);
LABEL_45:

      break;
    default:
      break;
  }

LABEL_58:

  swift_deallocObject();
  OUTLINED_FUNCTION_100();
}

uint64_t static NavigationItemStyle.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v66 = *(a1 + 56);
  v67 = *(a1 + 48);
  v60 = *(a1 + 72);
  v61 = *(a1 + 64);
  v59 = *(a1 + 80);
  v58 = *(a1 + 88);
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v57 = a2[6];
  v56 = a2[7];
  v55 = a2[8];
  v54 = a2[9];
  v53 = a2[10];
  v51 = *(a1 + 89);
  v52 = *(a2 + 88);
  v50 = *(a2 + 89);
  v10 = *(a1 + 40);
  v11 = *(a2 + 40);
  v63 = *(a1 + 8);
  v64 = *a1;
  v74 = v64;
  v75 = v63;
  v76 = v2;
  v77 = v3;
  v62 = v4;
  v78 = v4;
  v79 = v10;
  v68 = v5;
  v69 = v6;
  v70 = v7;
  v71 = v8;
  v72 = v9;
  v73 = v11;
  sub_1D7E442D8(v64, v63, v2, v3, v4, v10);
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_16_33();
  sub_1D7E442D8(v12, v13, v14, v15, v16, v17);
  v18 = static NavigationItemStyle.BarStyle.== infix(_:_:)(&v74, &v68);
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_16_33();
  sub_1D7E45E84(v19, v20, v21, v22, v23, v24);
  sub_1D7E45E84(v64, v63, v2, v3, v62, v10);
  if (v18 && (v74 = v67, v75 = v66, v76 = v61, v77 = v60, v78 = v59, v79 = v58, v68 = v57, v69 = v56, v70 = v55, v71 = v54, v72 = v53, v73 = v52, OUTLINED_FUNCTION_12_37(), sub_1D7E442D8(v25, v26, v27, v28, v29, v30), v31 = OUTLINED_FUNCTION_10_47(), sub_1D7E442D8(v31, v32, v33, v34, v35, v36), v65 = static NavigationItemStyle.BarStyle.== infix(_:_:)(&v74, &v68), v37 = OUTLINED_FUNCTION_10_47(), sub_1D7E45E84(v37, v38, v39, v40, v41, v42), OUTLINED_FUNCTION_12_37(), sub_1D7E45E84(v43, v44, v45, v46, v47, v48), v65))
  {
    return v51 ^ v50 ^ 1u;
  }

  else
  {
    return 0;
  }
}

uint64_t OUTLINED_FUNCTION_78_2()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_78_3()
{

  return BlueprintPipelineRecorder.format(start:end:)(v2, v1)._countAndFlagsBits;
}

uint64_t OUTLINED_FUNCTION_78_4()
{
}

void OUTLINED_FUNCTION_78_5(char a1@<W8>)
{
  *(v1 - 1) = a1;

  sub_1D80E9C84((v1 - 1), 0);
}

Swift::Int sub_1D7E5E8AC(Swift::Int *a1)
{
  result = BlueprintSection.index(after:)(*a1);
  *a1 = result;
  return result;
}

uint64_t sub_1D7E5E8D8()
{
  OUTLINED_FUNCTION_64_6();
  v2 = v1;
  v4 = v3;
  v5 = OUTLINED_FUNCTION_132_2();
  v6 = OUTLINED_FUNCTION_132_2();
  OUTLINED_FUNCTION_54_1();
  v7 = OUTLINED_FUNCTION_140_2();
  OUTLINED_FUNCTION_54_1();
  v8 = OUTLINED_FUNCTION_139_2();
  v2[2] = v5;
  v2[3] = v6;
  v2[4] = v7;
  v2[5] = v8;
  v9 = type metadata accessor for BlueprintModifierResult();
  OUTLINED_FUNCTION_15_15(v9);
  v11 = (*(v10 + 80) + 56) & ~*(v10 + 80);
  v13 = *(v0 + 48);
  v14 = *(v0 + ((*(v12 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  v2[6] = v15;
  *v15 = v2;
  v15[1] = sub_1D7E64150;

  return sub_1D7E5F410(v4, v13, v0 + v11, v14);
}

BOOL static NavigationItemStyle.BarStyle.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *a2;
  v8 = *(a2 + 8);
  v11 = *(a2 + 16);
  v10 = *(a2 + 24);
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  v116[0] = *a1;
  v116[1] = v3;
  v116[2] = v5;
  v116[3] = v4;
  v116[4] = v6;
  v117 = v7;
  v118 = v9;
  v119 = v8;
  v120 = v11;
  v121 = v10;
  v122 = v12;
  v123 = v13;
  v14 = v4;
  switch(v7)
  {
    case 1:
      if (v13 != 1)
      {
        goto LABEL_32;
      }

      sub_1D7E0A1A8(0, &qword_1EDBB2F40);
      v63 = OUTLINED_FUNCTION_2_110();
      sub_1D7E442D8(v63, v64, v65, v66, v67, 1);
      v57 = OUTLINED_FUNCTION_0_167();
      v62 = 1;
      goto LABEL_25;
    case 2:
      if (v13 != 2)
      {
        goto LABEL_32;
      }

      if (v2 == v9 && v3 == v8)
      {
        if (!v5)
        {
          v96 = OUTLINED_FUNCTION_76();
          if (!v11)
          {
            v42 = v98;
            OUTLINED_FUNCTION_21_27(v96, v97, 0, v98);
            OUTLINED_FUNCTION_76();
            OUTLINED_FUNCTION_7_53();
            sub_1D7E442D8(v106, v107, v108, v109, v110, 2);
            goto LABEL_67;
          }

          OUTLINED_FUNCTION_21_27(v96, v97, v11, v98);
          OUTLINED_FUNCTION_76();
LABEL_46:
          OUTLINED_FUNCTION_7_53();
          v81 = 2;
          goto LABEL_33;
        }

        if (v11)
        {
          v40 = v10;
          sub_1D7E0A1A8(0, &qword_1EDBB2F68);
          v41 = OUTLINED_FUNCTION_76();
          v42 = v40;
          OUTLINED_FUNCTION_21_27(v41, v43, v11, v40);
          v44 = OUTLINED_FUNCTION_0_167();
          sub_1D7E442D8(v44, v45, v46, v47, v48, 2);
          v49 = v11;
          v50 = v5;
          v51 = sub_1D8191CC4();

          if ((v51 & 1) == 0)
          {
            goto LABEL_34;
          }

LABEL_67:
          if (v14)
          {
            if (v42)
            {
              sub_1D7E0A1A8(0, &qword_1EDBB2F68);
              v104 = v42;
LABEL_70:
              v111 = v104;
              v112 = v14;
              v113 = sub_1D8191CC4();
              sub_1D7E5F208(v116);

              return (v113 & 1) != 0;
            }

            goto LABEL_34;
          }

          v105 = v42;
          sub_1D7E5F208(v116);
          if (v42)
          {
            goto LABEL_73;
          }

          return 1;
        }

        v85 = OUTLINED_FUNCTION_76();
        v87 = 0;
      }

      else
      {
        OUTLINED_FUNCTION_9_32();
      }

      OUTLINED_FUNCTION_21_27(v85, v86, v87, v88);
      OUTLINED_FUNCTION_76();
      goto LABEL_46;
    case 3:
      if (v13 != 3)
      {
        goto LABEL_32;
      }

      sub_1D7E0A1A8(0, &qword_1EDBB2F40);
      v52 = OUTLINED_FUNCTION_2_110();
      sub_1D7E442D8(v52, v53, v54, v55, v56, 3);
      v57 = OUTLINED_FUNCTION_0_167();
      v62 = 3;
LABEL_25:
      sub_1D7E442D8(v57, v58, v59, v60, v61, v62);
      if ((sub_1D8191CC4() & 1) == 0)
      {
        goto LABEL_34;
      }

      if (v3)
      {
        if (!v8)
        {
          goto LABEL_34;
        }

        sub_1D7E0A1A8(0, &qword_1EDBB2F68);
        v68 = v8;
        v69 = v3;
        v70 = sub_1D8191CC4();

        if ((v70 & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      else if (v8)
      {
        goto LABEL_34;
      }

      goto LABEL_59;
    case 4:
      if (v13 != 4)
      {
        goto LABEL_32;
      }

      if (v2 != v9)
      {
        v83 = v9;
        v84 = v8;
LABEL_37:
        OUTLINED_FUNCTION_20_28(v83, v84, v11, v10);
        OUTLINED_FUNCTION_76();
        goto LABEL_38;
      }

      if (!v3)
      {
        if (!v8)
        {
          v115 = v10;
          OUTLINED_FUNCTION_20_28(v2, 0, v11, v10);
          OUTLINED_FUNCTION_7_53();
          sub_1D7E442D8(v99, v100, v101, v102, v103, 4);
          goto LABEL_59;
        }

        OUTLINED_FUNCTION_9_32();
        OUTLINED_FUNCTION_20_28(v89, v90, v91, v92);
LABEL_38:
        OUTLINED_FUNCTION_7_53();
        v81 = 4;
        goto LABEL_33;
      }

      if (!v8)
      {
        v83 = v2;
        v84 = 0;
        goto LABEL_37;
      }

      v28 = v10;
      sub_1D7E0A1A8(0, &qword_1EDBB2F68);
      OUTLINED_FUNCTION_9_32();
      v115 = v28;
      OUTLINED_FUNCTION_20_28(v29, v30, v31, v28);
      v32 = OUTLINED_FUNCTION_0_167();
      sub_1D7E442D8(v32, v33, v34, v35, v36, 4);
      v37 = v8;
      v38 = v3;
      v39 = sub_1D8191CC4();

      if ((v39 & 1) == 0)
      {
        goto LABEL_34;
      }

LABEL_59:
      if ((v11 ^ v5))
      {
        goto LABEL_34;
      }

      if (v14)
      {
        if (v115)
        {
          sub_1D7E0A1A8(0, &qword_1EDBB2F68);
          v104 = v115;
          goto LABEL_70;
        }

LABEL_34:
        sub_1D7E5F208(v116);
        return 0;
      }

      v105 = v115;
      sub_1D7E5F208(v116);
      if (v115)
      {
LABEL_73:

        return 0;
      }

      return 1;
    case 5:
      if (v13 != 5 || v8 | v9 | v11 | v10 | v12)
      {
        goto LABEL_32;
      }

      sub_1D7E5F208(v116);
      return 1;
    default:
      if (v13)
      {
LABEL_32:
        OUTLINED_FUNCTION_9_32();
        sub_1D7E442D8(v71, v72, v73, v74, v12, v75);
        v76 = OUTLINED_FUNCTION_0_167();
        v81 = v7;
LABEL_33:
        sub_1D7E442D8(v76, v77, v78, v79, v80, v81);
        goto LABEL_34;
      }

      sub_1D7E0A1A8(0, &qword_1EDBB2F40);
      v15 = OUTLINED_FUNCTION_2_110();
      sub_1D7E442D8(v15, v16, v17, v18, v19, 0);
      v20 = OUTLINED_FUNCTION_0_167();
      sub_1D7E442D8(v20, v21, v22, v23, v24, 0);
      if ((sub_1D8191CC4() & 1) == 0)
      {
        goto LABEL_34;
      }

      if (v3)
      {
        if (!v8)
        {
          goto LABEL_34;
        }

        sub_1D7E0A1A8(0, &qword_1EDBB2F68);
        v25 = v8;
        v26 = v3;
        v27 = sub_1D8191CC4();

        if ((v27 & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      else if (v8)
      {
        goto LABEL_34;
      }

      if ((v11 ^ v5))
      {
        goto LABEL_34;
      }

      if (v14)
      {
        if (!v115)
        {
          goto LABEL_34;
        }

        sub_1D7E0A1A8(0, &qword_1EDBB2F68);
        v93 = v115;
        v94 = v14;
        v95 = sub_1D8191CC4();

        if ((v95 & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      else if (v115)
      {
        goto LABEL_34;
      }

      v114 = sub_1D8191CC4();
      sub_1D7E5F208(v116);
      return v114 & 1;
  }
}

uint64_t sub_1D7E5F04C(uint64_t a1)
{
  v6[0] = swift_getAssociatedTypeWitness();
  v6[1] = swift_getAssociatedTypeWitness();
  v6[2] = swift_getAssociatedConformanceWitness();
  v6[3] = swift_getAssociatedConformanceWitness();
  v2 = type metadata accessor for BlueprintModifierResult();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(v6 - v3, a1, v2);
  sub_1D8191504();
  return sub_1D81914F4();
}

uint64_t sub_1D7E5F208(uint64_t a1)
{
  sub_1D7E5F264();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D7E5F264()
{
  if (!qword_1EDBB9890)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDBB9890);
    }
  }
}

uint64_t sub_1D7E5F2C0()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_12();
  v1 = *v0;
  OUTLINED_FUNCTION_3_4();
  *v2 = v1;

  OUTLINED_FUNCTION_10_6();

  return v3();
}

unint64_t sub_1D7E5F3BC()
{
  result = qword_1EDBB9820;
  if (!qword_1EDBB9820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBB9820);
  }

  return result;
}

uint64_t sub_1D7E5F410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = swift_getAssociatedTypeWitness();
  *v8 = v4;
  v8[1] = sub_1D7E5B0D4;

  return sub_1D7E5F554(a1, a3, a4, AssociatedTypeWitness, v10);
}

uint64_t sub_1D7E5F554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[23] = a5;
  v6[24] = v5;
  v6[21] = a3;
  v6[22] = a4;
  v6[19] = a1;
  v6[20] = a2;
  v9 = *v5;
  v6[25] = *v5;
  v6[26] = *(v9 + 96);
  v6[27] = *(v9 + 80);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6[28] = AssociatedConformanceWitness;
  v11 = swift_getAssociatedConformanceWitness();
  v6[29] = v11;
  v6[2] = a4;
  v6[3] = a5;
  v6[4] = AssociatedConformanceWitness;
  v6[5] = v11;
  v12 = type metadata accessor for BlueprintModifierResult();
  v6[30] = v12;
  v6[31] = *(v12 - 8);
  v6[32] = swift_task_alloc();
  v6[6] = a4;
  v6[7] = a5;
  v6[8] = AssociatedConformanceWitness;
  v6[9] = v11;
  v13 = type metadata accessor for Blueprint();
  v6[33] = v13;
  v14 = sub_1D8191E84();
  v6[34] = v14;
  v6[35] = *(v14 - 8);
  v6[36] = swift_task_alloc();
  v15 = *(v13 - 8);
  v6[37] = v15;
  v6[38] = *(v15 + 64);
  v6[39] = swift_task_alloc();
  v6[40] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D7E604B4, 0, 0);
}

void sub_1D7E5F7D8(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    swift_beginAccess();
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      v5 = [v2 topViewController];
      if (v5)
      {
        v6 = v5;
        sub_1D7E0A1A8(0, &qword_1EDBB31B0);
        v4 = v4;
        v7 = sub_1D8191CC4();

        if (v7)
        {
          memcpy(v8, __dst, 0x5AuLL);
          sub_1D7E43928(v8);
        }
      }
    }
  }
}

uint64_t sub_1D7E5F8FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = swift_getAssociatedConformanceWitness();
  v51 = a2;
  v52 = a3;
  v53 = AssociatedConformanceWitness;
  v54 = v9;
  v10 = type metadata accessor for BlueprintModifierResult();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v50 - v11;
  (*(v13 + 16))(&v50 - v11, a1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v51 = a2;
      v52 = a3;
      v53 = AssociatedConformanceWitness;
      v54 = v9;
      v33 = type metadata accessor for Blueprint();
      type metadata accessor for BlueprintBookmark();
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v16 = *(TupleTypeMetadata3 + 48);
      v35 = *(TupleTypeMetadata3 + 64);
      (*(*(v33 - 8) + 32))(a4, v12, v33);
      __swift_storeEnumTagSinglePayload(a4, 0, 1, v33);
      sub_1D8022FD0(&v12[v35]);
      goto LABEL_9;
    case 3:
      v51 = a2;
      v52 = a3;
      v53 = AssociatedConformanceWitness;
      v54 = v9;
      v37 = type metadata accessor for Blueprint();
      sub_1D7E0631C(255, &qword_1EDBBA670);
      type metadata accessor for BlueprintBookmark();
      v38 = swift_getTupleTypeMetadata3();
      v39 = *(v38 + 48);
      v40 = *(v38 + 64);
      (*(*(v37 - 8) + 32))(a4, v12, v37);
      __swift_storeEnumTagSinglePayload(a4, 0, 1, v37);
      sub_1D7E2BBA0(&v12[v40]);
      v32 = &v12[v39];
      return __swift_destroy_boxed_opaque_existential_1Tm(v32);
    case 4:
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
      strcpy(&v50 - 48, "blueprint diff bookmark animation ");
      v51 = a2;
      v52 = a3;
      v53 = AssociatedConformanceWitness;
      v54 = v9;
      v51 = type metadata accessor for Blueprint();
      v52 = sub_1D7E0631C(255, &qword_1EDBBA670);
      v53 = type metadata accessor for BlueprintBookmark();
      v54 = &type metadata for BlueprintAnimation;
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      v56 = TupleTypeMetadata[12];
      v29 = TupleTypeMetadata[16];
      v30 = TupleTypeMetadata[20];
      v51 = a2;
      v52 = a3;
      v53 = AssociatedConformanceWitness;
      v54 = v9;
      v31 = type metadata accessor for Blueprint();
      (*(*(v31 - 8) + 32))(a4, v12, v31);
      __swift_storeEnumTagSinglePayload(a4, 0, 1, v31);
      sub_1D8022FD0(&v12[v30]);
      sub_1D7E2BBA0(&v12[v29]);
      v32 = &v12[v56];
      return __swift_destroy_boxed_opaque_existential_1Tm(v32);
    case 5:
      v51 = a2;
      v52 = a3;
      v53 = AssociatedConformanceWitness;
      v54 = v9;
      v45 = type metadata accessor for Blueprint();
      sub_1D7E0631C(255, &qword_1EDBBA670);
      type metadata accessor for BlueprintBookmark();
      v46 = swift_getTupleTypeMetadata3();
      v47 = *(v46 + 48);
      v48 = *(v46 + 64);
      (*(*(v45 - 8) + 32))(a4, v12, v45);
      __swift_storeEnumTagSinglePayload(a4, 0, 1, v45);
      sub_1D7E2BBA0(&v12[v48]);
      v32 = &v12[v47];
      return __swift_destroy_boxed_opaque_existential_1Tm(v32);
    case 6:
      v51 = a2;
      v52 = a3;
      v53 = AssociatedConformanceWitness;
      v54 = v9;
      v17 = type metadata accessor for Blueprint();
      sub_1D7E0631C(255, &qword_1EDBBA670);
      type metadata accessor for BlueprintViewActionResponse();
      v18 = *(swift_getTupleTypeMetadata3() + 48);

      goto LABEL_19;
    case 7:
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
      strcpy(&v50 - 48, "blueprint diff response animation ");
      v51 = a2;
      v52 = a3;
      v53 = AssociatedConformanceWitness;
      v54 = v9;
      v51 = type metadata accessor for Blueprint();
      v52 = sub_1D7E0631C(255, &qword_1EDBBA670);
      v53 = type metadata accessor for BlueprintViewActionResponse();
      v54 = &type metadata for BlueprintAnimation;
      v41 = swift_getTupleTypeMetadata();
      v25 = *(v41 + 48);

      v42 = *(v41 + 80);
      v51 = a2;
      v52 = a3;
      v53 = AssociatedConformanceWitness;
      v54 = v9;
      v43 = type metadata accessor for Blueprint();
      (*(*(v43 - 8) + 32))(a4, v12, v43);
      __swift_storeEnumTagSinglePayload(a4, 0, 1, v43);
      sub_1D8022FD0(&v12[v42]);
      goto LABEL_12;
    case 8:
    case 12:
      v51 = a2;
      v52 = a3;
      v53 = AssociatedConformanceWitness;
      v54 = v9;
      v17 = type metadata accessor for Blueprint();
      sub_1D7E0631C(255, &qword_1EDBBA670);
      v18 = *(swift_getTupleTypeMetadata2() + 48);
LABEL_19:
      (*(*(v17 - 8) + 32))(a4, v12, v17);
      __swift_storeEnumTagSinglePayload(a4, 0, 1, v17);
      v32 = &v12[v18];
      return __swift_destroy_boxed_opaque_existential_1Tm(v32);
    case 9:
      v51 = a2;
      v52 = a3;
      v53 = AssociatedConformanceWitness;
      v54 = v9;
      v49 = type metadata accessor for Blueprint();
      __swift_storeEnumTagSinglePayload(a4, 1, 1, v49);
      v36 = v12;
      goto LABEL_17;
    case 10:
      return swift_willThrow();
    case 11:
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
      strcpy(&v50 - 48, "blueprint diff response animated bookmark ");
      v51 = a2;
      v52 = a3;
      v53 = AssociatedConformanceWitness;
      v54 = v9;
      v51 = type metadata accessor for Blueprint();
      v52 = sub_1D7E0631C(255, &qword_1EDBBA670);
      sub_1D8022D3C(255, qword_1EDBB68A8, type metadata accessor for BlueprintViewActionResponse);
      v53 = v23;
      v54 = MEMORY[0x1E69E6370];
      v55 = type metadata accessor for BlueprintBookmark();
      v24 = swift_getTupleTypeMetadata();
      v25 = *(v24 + 48);

      v26 = *(v24 + 96);
      v51 = a2;
      v52 = a3;
      v53 = AssociatedConformanceWitness;
      v54 = v9;
      v27 = type metadata accessor for Blueprint();
      (*(*(v27 - 8) + 32))(a4, v12, v27);
      __swift_storeEnumTagSinglePayload(a4, 0, 1, v27);
      sub_1D7E2BBA0(&v12[v26]);
LABEL_12:
      v32 = &v12[v25];
      return __swift_destroy_boxed_opaque_existential_1Tm(v32);
    case 13:
      v51 = a2;
      v52 = a3;
      v53 = AssociatedConformanceWitness;
      v54 = v9;
      v44 = type metadata accessor for Blueprint();
      (*(*(v44 - 8) + 32))(a4, v12, v44);
      v20 = a4;
      v21 = 0;
      v19 = v44;
      goto LABEL_14;
    case 14:
      v51 = a2;
      v52 = a3;
      v53 = AssociatedConformanceWitness;
      v54 = v9;
      v19 = type metadata accessor for Blueprint();
      v20 = a4;
      v21 = 1;
LABEL_14:
      result = __swift_storeEnumTagSinglePayload(v20, v21, 1, v19);
      break;
    default:
      v51 = a2;
      v52 = a3;
      v53 = AssociatedConformanceWitness;
      v54 = v9;
      v15 = type metadata accessor for Blueprint();
      type metadata accessor for BlueprintBookmark();
      v16 = *(swift_getTupleTypeMetadata2() + 48);
      (*(*(v15 - 8) + 32))(a4, v12, v15);
      __swift_storeEnumTagSinglePayload(a4, 0, 1, v15);
LABEL_9:
      v36 = &v12[v16];
LABEL_17:
      result = sub_1D7E2BBA0(v36);
      break;
  }

  return result;
}

uint64_t sub_1D7E603D4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_12();
  v1 = *v0;
  OUTLINED_FUNCTION_3_4();
  *v2 = v1;

  OUTLINED_FUNCTION_5_37();

  return v3();
}

uint64_t sub_1D7E604B4()
{
  sub_1D7E5F8FC(*(v0 + 160), *(v0 + 176), *(v0 + 184), *(v0 + 288));
  v1 = *(v0 + 288);
  v2 = *(v0 + 264);
  if (OUTLINED_FUNCTION_116_0(v1) == 1)
  {
    v3 = v0 + 280;
    v4 = (v0 + 272);
LABEL_5:
    v10 = *(v0 + 248);
    v9 = *(v0 + 256);
    v11 = *(v0 + 240);
    v13 = *(v0 + 152);
    v12 = *(v0 + 160);
    (*(*v3 + 8))(v1, *v4);
    (*(v10 + 16))(v9, v12, v11);
    sub_1D7E7FD28(v9, MEMORY[0x1E69E7CC0], v13);

    OUTLINED_FUNCTION_5_37();

    return v14();
  }

  v5 = *(v0 + 192);
  v6 = *(*(v0 + 296) + 32);
  v31 = *(v0 + 224);
  v33 = *(v0 + 176);
  (v6)(*(v0 + 320), v1, v2);
  v7 = *(*v5 + 160);
  swift_beginAccess();
  *(v0 + 136) = *(v5 + v7);
  *(v0 + 80) = v33;
  *(v0 + 96) = v31;
  type metadata accessor for BlueprintPipelineProcessor();
  v8 = sub_1D8191484();
  swift_getWitnessTable();
  if (sub_1D8191874())
  {
    v4 = (v0 + 264);
    v3 = v0 + 296;
    v1 = *(v0 + 320);
    goto LABEL_5;
  }

  v32 = v6;
  v17 = *(v0 + 312);
  v16 = *(v0 + 320);
  v18 = *(v0 + 296);
  v19 = *(v0 + 304);
  v20 = *(v0 + 264);
  v28 = *(v0 + 216);
  v29 = *(v0 + 208);
  v21 = *(v0 + 200);
  v30 = *(v0 + 168);
  v22 = *(v5 + v7);
  *(v0 + 328) = v22;
  *(v0 + 144) = v22;
  v27 = *(v0 + 176);
  (*(v18 + 16))(v17, v16, v20);
  v23 = (v19 + ((*(v18 + 80) + 64) & ~*(v18 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v0 + 336) = v24;
  *(v24 + 16) = v28;
  *(v24 + 24) = *(v21 + 88);
  *(v24 + 32) = v27;
  *(v24 + 48) = v29;
  *(v24 + 56) = *(v21 + 104);
  OUTLINED_FUNCTION_55_6();
  v32();
  *(v24 + v23) = v30;
  sub_1D8190DB4();

  v25 = swift_task_alloc();
  *(v0 + 344) = v25;
  WitnessTable = swift_getWitnessTable();
  *v25 = v0;
  v25[1] = sub_1D7E7FA64;

  return MEMORY[0x1EEE45328](&unk_1D81AF670, v24, v8, &type metadata for BlueprintPipelineProcessorCommit, WitnessTable);
}

void sub_1D7E608A4()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_72_5();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_74_7();
  v1 = OUTLINED_FUNCTION_109_2();
  OUTLINED_FUNCTION_20_19();
  v4 = *(v3 + 64);
  v5 = v0 + ((*(v2 + 80) + 64) & ~*(v2 + 80));

  if (*(v5 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v5 + 16);
  }

  OUTLINED_FUNCTION_66_5();
  OUTLINED_FUNCTION_4_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_11();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_55_6();
  sub_1D818F394();
  OUTLINED_FUNCTION_4_3();
  (*(v6 + 8))(v5 + v4);
  v7 = *(v1 + 60);
  OUTLINED_FUNCTION_33_9();
  type metadata accessor for BlueprintItem();
  OUTLINED_FUNCTION_7_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_44();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_96_1();
  OUTLINED_FUNCTION_4_3();
  (*(v8 + 8))(v5 + v7);

  OUTLINED_FUNCTION_133_0();
  OUTLINED_FUNCTION_80_0();
}

uint64_t UIColor.identifier.getter()
{
  UIColor.getRGBA()(&v8);
  if (v9)
  {
    v1 = [v0 description];
    v2 = sub_1D8190F14();
  }

  else
  {
    v7 = sub_1D81915A4();
    OUTLINED_FUNCTION_0_190();
    v3 = sub_1D81915A4();
    MEMORY[0x1DA713260](v3);

    OUTLINED_FUNCTION_0_190();
    v4 = sub_1D81915A4();
    MEMORY[0x1DA713260](v4);

    OUTLINED_FUNCTION_0_190();
    v5 = sub_1D81915A4();
    MEMORY[0x1DA713260](v5);

    return v7;
  }

  return v2;
}

id UIColor.getRGBA()@<X0>(uint64_t a1@<X8>)
{

  return sub_1D7E60BF0(&selRef_getRed_green_blue_alpha_, a1);
}

uint64_t OUTLINED_FUNCTION_116(uint64_t a1, void *a2)
{
  *a2 = v2;
  a2[1] = v3;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_116_0(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

id sub_1D7E60BF0@<X0>(SEL *a1@<X0>, uint64_t a2@<X8>)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v11 = 0;
  v12[0] = 0;
  v9 = 0;
  v10 = 0;
  result = [v2 *a1];
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  if (result)
  {
    v6 = v11;
    v5 = v12[0];
    v8 = v9;
    v7 = v10;
  }

  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  *(a2 + 32) = result ^ 1;
  return result;
}

uint64_t sub_1D7E60C94()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  OUTLINED_FUNCTION_72_5();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = swift_getAssociatedConformanceWitness();
  v1[2] = v2;
  v1[3] = v3;
  v1[4] = AssociatedConformanceWitness;
  v1[5] = v5;
  v6 = type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_15_15(v6);
  v7 = swift_task_alloc();
  v1[6] = v7;
  *v7 = v1;
  v7[1] = sub_1D7E64150;
  OUTLINED_FUNCTION_126_1();

  return sub_1D7E60E60(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_1D7E60E60(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = v20;
  v8[14] = v21;
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[7] = a3;
  v8[8] = a4;
  v8[6] = a1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = swift_getAssociatedConformanceWitness();
  v8[2] = a7;
  v8[3] = a8;
  v8[4] = AssociatedConformanceWitness;
  v8[5] = v13;
  v14 = type metadata accessor for Blueprint();
  v8[15] = v14;
  v15 = *(v14 - 8);
  v8[16] = v15;
  v8[17] = *(v15 + 64);
  v16 = swift_task_alloc();
  v17 = *a2;
  v8[18] = v16;
  v8[19] = v17;

  return MEMORY[0x1EEE6DFA0](sub_1D7E60FC0, 0, 0);
}

uint64_t sub_1D7E60FC0()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);
  v5 = *(v0 + 120);
  v6 = *(v0 + 64);
  v15 = *(v0 + 88);
  v16 = *(v0 + 72);
  v14 = *(v0 + 104);
  (*(v4 + 16))(v1, *(v0 + 56), v5);
  v7 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v8 = (v3 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  *(v0 + 160) = v9;
  *(v9 + 16) = v16;
  *(v9 + 32) = v15;
  *(v9 + 48) = v14;
  *(v9 + 64) = v2;
  (*(v4 + 32))(v9 + v7, v1, v5);
  *(v9 + v8) = v6;

  swift_task_alloc();
  OUTLINED_FUNCTION_35_2();
  *(v0 + 168) = v10;
  *v10 = v11;
  v10[1] = sub_1D7E63EAC;
  v12 = *(v0 + 48);

  return MEMORY[0x1EEE44AD8](v12, &unk_1D81AF680, v9, &type metadata for BlueprintPipelineProcessorCommit);
}

void sub_1D7E61150()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_72_5();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_74_7();
  v1 = OUTLINED_FUNCTION_109_2();
  OUTLINED_FUNCTION_20_19();
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  v5 = *(v4 + 64);

  v6 = v0 + v3;

  if (*(v0 + v3 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v6 + 16);
  }

  OUTLINED_FUNCTION_66_5();
  OUTLINED_FUNCTION_4_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_11();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_55_6();
  sub_1D818F394();
  OUTLINED_FUNCTION_4_3();
  (*(v7 + 8))(v6 + v5);
  v8 = *(v1 + 60);
  OUTLINED_FUNCTION_33_9();
  type metadata accessor for BlueprintItem();
  OUTLINED_FUNCTION_7_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_44();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_96_1();
  OUTLINED_FUNCTION_4_3();
  (*(v9 + 8))(v6 + v8);

  OUTLINED_FUNCTION_133_0();
  OUTLINED_FUNCTION_80_0();
}

uint64_t sub_1D7E6130C()
{
  OUTLINED_FUNCTION_16_20();
  OUTLINED_FUNCTION_100_2();
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  OUTLINED_FUNCTION_54_1();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_54_1();
  v5 = swift_getAssociatedConformanceWitness();
  v1[2] = v2;
  v1[3] = v3;
  v1[4] = AssociatedConformanceWitness;
  v1[5] = v5;
  v6 = type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_15_15(v6);
  v7 = swift_task_alloc();
  v1[6] = v7;
  *v7 = v1;
  v7[1] = sub_1D7E63D38;
  OUTLINED_FUNCTION_17_1();

  return sub_1D7E61484(v8, v9, v10, v11);
}

uint64_t sub_1D7E61484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1D7E5B0D8;

  return BlueprintPipelineProcessor.process(blueprint:runOptions:)(a1, a3, a4);
}

uint64_t BlueprintPipelineProcessor.process(blueprint:runOptions:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_55();
}

uint64_t sub_1D7E61558()
{
  OUTLINED_FUNCTION_6();
  v6 = (*(v0[5] + 32) + **(v0[5] + 32));
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_1D7E63D38;
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  return v6(v4, v2, v3);
}

uint64_t sub_1D7E6164C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[2];
  v8 = v3[3];
  v9 = v3[4];
  v10 = v3[5];
  v11 = (*(*(v9 - 8) + 80) + 48) & ~*(*(v9 - 8) + 80);
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_2_14(v12);
  *v13 = v14;
  v13[1] = sub_1D7E5B0D8;

  return sub_1D7E61758(a1, a2, a3, v3 + v11, v7, v8, v9, v10);
}

uint64_t sub_1D7E61758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = (*(a8 + 48) + **(a8 + 48));
  v14 = swift_task_alloc();
  *(v8 + 16) = v14;
  *v14 = v8;
  v14[1] = sub_1D7E5B0D8;

  return v16(a1, a2, a3, a7, a8);
}

uint64_t sub_1D7E618A0()
{
  OUTLINED_FUNCTION_6_72();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_14(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_117(v1);

  return BlueprintPipelineProcessorType.process(blueprint:runOptions:)(v3, v4, v5, v6, v7);
}

uint64_t BlueprintPipelineProcessorType.process(blueprint:runOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return OUTLINED_FUNCTION_55();
}

uint64_t sub_1D7E61954()
{
  v1 = *(v0 + 56);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = *(v0 + 40);
  *(v2 + 32) = v1;
  *(v2 + 40) = v3;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_1D7E63C10;
  v5 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD00000000000001ELL, 0x80000001D81D3D00, sub_1D7E61CC4, v2, &type metadata for BlueprintPipelineProcessorCommit);
}

uint64_t sub_1D7E61A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18 = a5;
  sub_1D7E61C5C();
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  (*(v12 + 16))(&v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  v14 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v15 = swift_allocObject();
  (*(v12 + 32))(v15 + v14, &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  (*(a6 + 40))(a3, a4, sub_1D7E63A08, v15, v18, a6);
}

uint64_t sub_1D7E61BD4()
{
  sub_1D7E61C5C();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

void sub_1D7E61C5C()
{
  if (!qword_1EDBB32C8)
  {
    sub_1D7E61D28();
    v0 = sub_1D8191504();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBB32C8);
    }
  }
}

void sub_1D7E61CD4(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  MastheadViewController.viewWillAppear(_:)(a3);
}

unint64_t sub_1D7E61D28()
{
  result = qword_1EDBB2BC0;
  if (!qword_1EDBB2BC0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDBB2BC0);
  }

  return result;
}

Swift::Void __swiftcall MastheadViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_viewWillAppear_, a1);
  v3 = *&v1[qword_1EDBB8880 + 24];
  v4 = *&v1[qword_1EDBB8880 + 32];
  __swift_project_boxed_opaque_existential_1(&v1[qword_1EDBB8880], v3);
}

uint64_t BlueprintCachePipelineProcessor.process(blueprint:runOptions:completion:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t (**)()), uint64_t a4)
{
  v92 = a4;
  v93 = a3;
  v96 = a1;
  OUTLINED_FUNCTION_12_0();
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_12_0();
  v7 = *(v6 + 88);
  OUTLINED_FUNCTION_12_0();
  v9 = *(v8 + 96);
  v11 = *(v10 + 104);
  v118 = v5;
  v119 = v7;
  v120 = v9;
  v121 = v11;
  v12 = type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_9();
  v95 = v13;
  OUTLINED_FUNCTION_44();
  v87 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_94();
  v88 = v16;
  v110 = *(v7 - 8);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_94();
  v112 = v18;
  v19 = type metadata accessor for BlueprintItem();
  OUTLINED_FUNCTION_9();
  v109 = v20;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v83 - v22;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v113 = v25;
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v83 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v27);
  v91 = v5;
  v118 = v5;
  v119 = v7;
  v31 = v30;
  v90 = v9;
  v120 = v9;
  v121 = v11;
  v32 = v19;
  v34 = &v83 - v33;
  v89 = v11;
  v35 = type metadata accessor for BlueprintSection();
  WitnessTable = swift_getWitnessTable();
  v99 = sub_1D81923F4();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_94();
  v104 = v38;
  v100 = WitnessTable;
  *&v115 = sub_1D81923E4();
  OUTLINED_FUNCTION_9();
  v111 = v39;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v83 - v41;
  v101 = v35;
  OUTLINED_FUNCTION_12_0();
  v97 = v43;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_94();
  v103 = v45;
  swift_getWitnessTable();
  v94 = sub_1D8192344();
  OUTLINED_FUNCTION_9();
  v86 = v46;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_94();
  v105 = v48;
  *&v123 = MEMORY[0x1E69E7CC8];
  *(&v123 + 1) = MEMORY[0x1E69E7CC8];
  v124 = -1;
  v49 = *(v95 + 16);
  v83 = v12;
  v85 = v95 + 16;
  v84 = v49;
  v49(v48, v96, v12);
  v102 = *(v94 + 36);
  Blueprint.startIndex.getter();
  v106 = v50;
  *(v105 + v102) = v50;
  v51 = v83;
  Blueprint.endIndex.getter();
  v52 = v106;
  if (v106 != v53)
  {
    v98 = (v111 + 1);
    ++v97;
    v113 += 4;
    v110 += 2;
    v111 = (v109 + 32);
    v109 += 8;
    v108 = v29;
    v107 = v31;
    v114 = v42;
    do
    {
      v106 = v52;
      v54 = v105;
      Blueprint.subscript.getter();
      v106 = Blueprint.index(after:)(v106);
      *(v54 + v102) = v106;
      v55 = v101;
      v56 = v103;
      MEMORY[0x1DA7133A0](v101, v100);
      v57 = v55;
      v58 = v114;
      (*v97)(v56, v57);
      sub_1D81923C4();
      while (1)
      {
        sub_1D81923D4();
        (*v113)(v34, v29, v31);
        if (__swift_getEnumTagSinglePayload(v34, 1, TupleTypeMetadata2) == 1)
        {
          break;
        }

        (*v111)(v23, &v34[*(TupleTypeMetadata2 + 48)], v32);
        (*v110)(v112, v23, v7);
        sub_1D7E63050();
        if (swift_dynamicCast())
        {
          sub_1D7E05450(v116, &v118);
          v59 = TupleTypeMetadata2;
          v60 = v51;
          v61 = v7;
          v62 = v34;
          v63 = v32;
          v65 = v121;
          v64 = v122;
          __swift_project_boxed_opaque_existential_1(&v118, v121);
          v66 = (*(v64 + 8))(v65, v64);
          OUTLINED_FUNCTION_1_1();
          swift_getWitnessTable();
          v67 = v66;
          v32 = v63;
          v34 = v62;
          sub_1D7E630B0(v23, v67);
          v7 = v61;
          v51 = v60;
          TupleTypeMetadata2 = v59;
          v31 = v107;
          v29 = v108;
          sub_1D7E6383C();
          v68 = OUTLINED_FUNCTION_7_82();
          v69(v68);
          __swift_destroy_boxed_opaque_existential_1Tm(&v118);
        }

        else
        {
          v70 = OUTLINED_FUNCTION_7_82();
          v71(v70);
          v117 = 0;
          memset(v116, 0, sizeof(v116));
          sub_1D815D00C(v116);
        }

        v58 = v114;
      }

      (*v98)(v58, v115);
      Blueprint.endIndex.getter();
      v52 = v106;
    }

    while (v106 != v72);
  }

  (*(v86 + 8))(v105, v94);
  v73 = v88;
  v84(v88, v96, v51);
  v74 = v124;
  v75 = v95;
  v76 = (*(v95 + 80) + 48) & ~*(v95 + 80);
  v77 = (v87 + v76 + 7) & 0xFFFFFFFFFFFFFFF8;
  v78 = swift_allocObject();
  *(v78 + 2) = v91;
  *(v78 + 3) = v7;
  v79 = v89;
  *(v78 + 4) = v90;
  *(v78 + 5) = v79;
  v80 = *(v75 + 32);
  v81 = &v78[v77];
  v115 = v123;
  v80(&v78[v76], v73, v51);
  *v81 = v115;
  *(v81 + 2) = v74;
  v118 = sub_1D7E91D08;
  v119 = v78;
  v120 = 0;
  v121 = 0;
  LOBYTE(v122) = 0;
  v93(&v118);
  return sub_1D7E63A9C(v118, v119, v120, v121, v122);
}

uint64_t sub_1D7E627C8()
{
  v1 = type metadata accessor for Blueprint();
  v8 = *(*(v1 - 8) + 80);
  v2 = v0 + ((v8 + 48) & ~v8);

  if (*(v2 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 16);
  }

  v3 = *(v1 + 56);
  type metadata accessor for BlueprintSection();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1D818F394();
  OUTLINED_FUNCTION_8();
  (*(v4 + 8))(v2 + v3);
  v5 = *(v1 + 60);
  type metadata accessor for BlueprintItem();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_1();
  swift_getWitnessTable();
  sub_1D818F784();
  OUTLINED_FUNCTION_8();
  (*(v6 + 8))(v2 + v5);

  return swift_deallocObject();
}

id SwipeActionCollectionView.allowsSelection.getter()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_allowsSelection);
}

uint64_t sub_1D7E62AC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D7E5B0D8;

  return BlueprintLayoutCollectionPipelineProcessor.process(blueprint:runOptions:)(a1, a2, a3);
}

uint64_t CommandContainer.registerCommand<A>(_:context:tracker:handler:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = *(v6 + 24);
  v12 = *a1;
  sub_1D7E62C7C(a3, &v15);
  if (v16)
  {
    sub_1D7E05450(&v15, v17);
  }

  else
  {
    sub_1D7E62C7C(v6 + 32, v17);
    if (v16)
    {
      sub_1D7E64060(&v15);
    }
  }

  ObjectType = swift_getObjectType();
  (*(v11 + 16))(v6, a1, a2, v17, a4, a5, *(v12 + 88), ObjectType, v11);
  return sub_1D7E64060(v17);
}

uint64_t sub_1D7E62C7C(uint64_t a1, uint64_t a2)
{
  sub_1D7E328A8(0, &qword_1EDBBB508, &qword_1EDBBB510);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t BlueprintLayoutCollectionPipelineProcessor.process(blueprint:runOptions:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[290] = v3;
  v4[289] = a3;
  v4[288] = a2;
  v4[287] = a1;
  OUTLINED_FUNCTION_62();
  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void CommandCenter.add<A>(_:for:with:tracker:closure:)()
{
  OUTLINED_FUNCTION_120();
  v19 = v2;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_40_13();
  v8 = v7;
  v9 = sub_1D8190C74();
  OUTLINED_FUNCTION_9();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_45_14();
  sub_1D7E11E0C();
  *v1 = sub_1D8191AB4();
  (*(v11 + 104))(v1, *MEMORY[0x1E69E8020], v9);
  v13 = sub_1D8190CA4();
  v14 = (*(v11 + 8))(v1, v9);
  if (v13)
  {
    MEMORY[0x1EEE9AC00](v14);
    if (qword_1EDBBCFC0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  OUTLINED_FUNCTION_1_162();
  swift_once();
LABEL_3:
  sub_1D818F014();
  v21 = *(v8 + 88);
  if (v6)
  {
    v15 = v21;
    __swift_allocate_boxed_opaque_existential_0(v20);
    OUTLINED_FUNCTION_3_0();
    (*(v16 + 16))();
    sub_1D7E62C7C(v19, v22);
    OUTLINED_FUNCTION_1_63();
    v17 = swift_allocObject();
    v17[2] = v15;
    v17[3] = v6;
    v17[4] = v4;
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v23 = sub_1D812D1FC;
    v24 = v17;
    sub_1D7E19F24(v6);
  }

  else
  {
    __swift_allocate_boxed_opaque_existential_0(v20);
    OUTLINED_FUNCTION_3_0();
    (*(v18 + 16))();
    sub_1D7E62C7C(v19, v22);
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v23 = 0;
    v24 = 0;
  }

  sub_1D7E6312C(v20, v0);

  sub_1D7E63FD4(v20);
  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D7E6301C()
{

  OUTLINED_FUNCTION_1_63();

  return swift_deallocObject();
}

unint64_t sub_1D7E63050()
{
  result = qword_1EDBB9530;
  if (!qword_1EDBB9530)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDBB9530);
  }

  return result;
}

uint64_t sub_1D7E630B0(uint64_t a1, uint64_t a2)
{
  v3 = v2[2];
  if (__OFADD__(v3, a2))
  {
    __break(1u);
  }

  else
  {
    v2[2] = v3 + a2;
    OUTLINED_FUNCTION_6_95();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_2_161();

    *v2 = v5;
  }

  return result;
}

uint64_t sub_1D7E6312C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  i = *(a2 + 16);
  v6 = *(a2 + 24);
  swift_beginAccess();
  v7 = sub_1D7E18740(i, v6, *(v2 + 32));
  swift_endAccess();
  if (!v7)
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v27 = v7;
  v24 = a1;
  result = sub_1D7E635E8(sub_1D81327CC, v23, v7);
  if (v9)
  {
    v10 = *(v7 + 16);
    v11 = v10;
LABEL_28:
    sub_1D7E636C8(v10, v11);
    sub_1D7E638A8(a1, v26);
    v16 = v27;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_29;
  }

  v10 = result;
  v11 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  v20[1] = v20;
  v21 = v6;
  v22 = i;
  for (i = 96 * result + 128; ; i += 96)
  {
    v12 = *(v7 + 16);
    if (v11 == v12)
    {
      break;
    }

    if (v11 >= v12)
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
      goto LABEL_37;
    }

    sub_1D7E638A8(v7 + i, v26);
    Strong = swift_unknownObjectWeakLoadStrong();
    v14 = swift_unknownObjectWeakLoadStrong();
    v6 = v14;
    if (Strong)
    {
      if (v14)
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        sub_1D7E63FD4(v26);
        if (Strong == v6)
        {
          goto LABEL_26;
        }

        goto LABEL_17;
      }

      v6 = Strong;
    }

    else if (!v14)
    {
      sub_1D7E63FD4(v26);
      goto LABEL_26;
    }

    swift_unknownObjectRelease();
    sub_1D7E63FD4(v26);
LABEL_17:
    if (v11 != v10)
    {
      if (v10 < 0)
      {
        goto LABEL_33;
      }

      v6 = *(v7 + 16);
      if (v10 >= v6)
      {
        goto LABEL_34;
      }

      sub_1D7E638A8(v7 + 32 + 96 * v10, v26);
      if (v11 >= v6)
      {
        goto LABEL_35;
      }

      sub_1D7E638A8(v7 + i, v25);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D80E71D4();
        v7 = v15;
      }

      sub_1D81327EC(v25, v7 + 96 * v10 + 32);
      if (v11 >= *(v7 + 16))
      {
        goto LABEL_36;
      }

      sub_1D81327EC(v26, v7 + i);
      v27 = v7;
    }

    ++v10;
LABEL_26:
    ++v11;
  }

  v6 = v21;
  i = v22;
  if (v11 >= v10)
  {
    goto LABEL_28;
  }

LABEL_37:
  __break(1u);
LABEL_38:
  sub_1D7E63524();
  v16 = v18;
LABEL_29:
  v17 = *(v16 + 16);
  if (v17 >= *(v16 + 24) >> 1)
  {
    sub_1D7E63524();
    v16 = v19;
  }

  *(v16 + 16) = v17 + 1;
  sub_1D7E63AFC(v26, v16 + 96 * v17 + 32);
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v25[0] = *(v3 + 32);
  sub_1D7E63B58();
  *(v3 + 32) = v25[0];
  swift_endAccess();
  return sub_1D7E63E18(i, v6);
}

void sub_1D7E63458()
{
  OUTLINED_FUNCTION_144();
  v6 = OUTLINED_FUNCTION_10_11(v4, v5);
  sub_1D7E11428(v6, v7);
  OUTLINED_FUNCTION_4_10();
  if (v8)
  {
    __break(1u);
LABEL_12:
    sub_1D8192714();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_108();
  OUTLINED_FUNCTION_11_6();
  sub_1D7E63668(0, v9, v10, v11);
  if (OUTLINED_FUNCTION_40())
  {
    v12 = OUTLINED_FUNCTION_41_1();
    sub_1D7E11428(v12, v13);
    OUTLINED_FUNCTION_26_1();
    if (!v15)
    {
      goto LABEL_12;
    }

    v3 = v14;
  }

  if (v2)
  {
    *(*(*v1 + 56) + 8 * v3) = v0;
    OUTLINED_FUNCTION_139();
  }

  else
  {
    v16 = OUTLINED_FUNCTION_30_5();
    sub_1D7E146EC(v16);
    OUTLINED_FUNCTION_139();

    sub_1D8190DB4();
  }
}

void sub_1D7E63524()
{
  OUTLINED_FUNCTION_14_5();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_2_16(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_4_4();
    if (v2)
    {
      OUTLINED_FUNCTION_0_1();
      sub_1D7E1B5C8(0, v6, v7, v8);
      v9 = OUTLINED_FUNCTION_22_0();
      OUTLINED_FUNCTION_8_10(v9);
      OUTLINED_FUNCTION_26_0(v10);
      if (v1)
      {
LABEL_8:
        v11 = OUTLINED_FUNCTION_3_13();
        sub_1D80E5C6C(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_7_9();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_12_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_1_10();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_1D7E635E8(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a3 + 16);
  for (i = a3 + 32; ; i += 96)
  {
    if (v6 == v5)
    {
      return 0;
    }

    result = a1(i);
    if (v3)
    {
      return result;
    }

    if (result)
    {
      break;
    }

    ++v5;
  }

  return v5;
}

void sub_1D7E63668(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void, uint64_t, void))
{
  if (!*a2)
  {
    v5 = a4(0, MEMORY[0x1E69E6158], a3, MEMORY[0x1E69E6168]);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1D7E636C8(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1D7E637AC(result, 1);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = v9 + 96 * v5;
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = sub_1D80E5C6C(v9 + 96 * a2, v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1D7E637C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_1D7E6383C()
{
  OUTLINED_FUNCTION_6_95();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_2_161();

  *(v0 + 8) = v2;
  return result;
}

uint64_t sub_1D7E63904(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    sub_1D7E61C5C();

    return sub_1D81914F4();
  }

  if (*(a1 + 32) == 1)
  {
    sub_1D7E61C5C();

    return sub_1D81914F4();
  }

  sub_1D7FE814C();
  swift_allocError();
  *v2 = 1;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 4;
  sub_1D7E61C5C();
  return sub_1D81914E4();
}

uint64_t get_enum_tag_for_layout_string_5TeaUI14CommandTracker_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D7E63A08(uint64_t a1)
{
  sub_1D7E61C5C();

  return sub_1D7E63904(a1);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t get_enum_tag_for_layout_string_ypIegn_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D7E63A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    if (a5 != 1)
    {
      return result;
    }
  }
}

void sub_1D7E63B84()
{
  if (!qword_1EDBB2DF0)
  {
    sub_1D7E09C74(255, &qword_1EDBB3390, &type metadata for CommandContextStore.ContextContainer, MEMORY[0x1E69E62F8]);
    v0 = sub_1D8192394();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBB2DF0);
    }
  }
}

uint64_t sub_1D7E63C10()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_12();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_4();
  *v5 = v4;
  *(v3 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D7FDC3F8, 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_10_6();

    return v6();
  }
}

uint64_t sub_1D7E63D38()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_12();
  v1 = *v0;
  OUTLINED_FUNCTION_3_4();
  *v2 = v1;

  OUTLINED_FUNCTION_10_6();

  return v3();
}

uint64_t sub_1D7E63E18(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 16);
  if (v3)
  {
    v5 = result;

    v3(v5, a2);

    return sub_1D7E0E10C(v3);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_5TeaUI17BlueprintViewType_ps5Error_pIeggzo_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D7E63EAC()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_12();
  v3 = v2;
  OUTLINED_FUNCTION_21_17();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_4();
  *v6 = v5;
  *(v3 + 176) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_62();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_5_37();

    return v10();
  }
}

uint64_t OUTLINED_FUNCTION_133_0()
{

  return swift_deallocObject();
}

uint64_t sub_1D7E64060(uint64_t a1)
{
  sub_1D7E640EC(0, &qword_1EDBBB508, sub_1D804D77C, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D7E640EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t CommandContainer.registerCommandObserver<A>(_:handler:)()
{
  OUTLINED_FUNCTION_2_125();
  v5 = *v4;
  v6 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  (*(v6 + 104))(v10, v3, v2, v1, *(v5 + 88), ObjectType, v6);
  OUTLINED_FUNCTION_1_139();
  sub_1D7E642AC();
  OUTLINED_FUNCTION_0_194();
  v8 = *(v0 + 104);
  *(v8 + 16) = v2 + 1;
  sub_1D7E05450(v10, v8 + 40 * v2 + 32);
  *(v0 + 104) = v8;
  return swift_endAccess();
}

uint64_t sub_1D7E64224(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D7E6426C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

Swift::Void __swiftcall BarCompressionManager.resetBars(animated:traitCollection:)(Swift::Bool animated, UITraitCollection_optional traitCollection)
{
  isa = traitCollection.value.super.isa;
  v5 = *(v2 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_navigationBarAnimation);
  if (v5)
  {
    [v5 prepareForUpdates];
  }

  v6 = OBJC_IVAR____TtC5TeaUI21BarCompressionManager_tabBarAnimation;
  v7 = *(v2 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_tabBarAnimation);
  if (v7)
  {
    [v7 prepareForUpdates];
  }

  v8 = *(v2 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_toolbarAnimation);
  if (v8)
  {
    [v8 prepareForUpdates];
  }

  v9 = sub_1D7E644BC();
  sub_1D7E643CC(v9, animated);
  if (isa)
  {
    v10 = *(v2 + v6);
    if (v10)
    {
      [v10 reloadWithTraitCollection_];
    }
  }

  sub_1D7E648F4();
}

uint64_t sub_1D7E643CC(char a1, char a2)
{
  if (*(v2 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_barState))
  {
    v5 = swift_unknownObjectRetain();
    sub_1D7E64794(v5, a1 & 1, a2 & 1);
    swift_unknownObjectRelease();
    v6 = swift_unknownObjectRetain();
    sub_1D7E64794(v6, a1 & 1, a2 & 1);
    swift_unknownObjectRelease();
    v7 = swift_unknownObjectRetain();
    sub_1D7E64794(v7, a1 & 1, a2 & 1);

    return swift_unknownObjectRelease();
  }

  else
  {

    return sub_1D7E648F4();
  }
}

BOOL sub_1D7E644BC()
{
  v1 = *(v0 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_scrollView);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v0 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_navigationBarAnimation);
  if (!v2)
  {
    return 0;
  }

  v3 = v1;
  if (([v2 shouldCompressAtTop] & 1) == 0)
  {

    return 0;
  }

  sub_1D7FA6478();
  if (v4 > 0.0)
  {
    [v3 contentSize];
    v6 = v5;
    v8 = v7;

    if (v6 == 0.0)
    {
      return v8 == 0.0;
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1D7E64574(void *a1)
{
  v1 = [a1 name];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D8190F14();

  return v3;
}

uint64_t sub_1D7E645D8()
{
  OUTLINED_FUNCTION_9_14();
  v12 = v0;
  OUTLINED_FUNCTION_25_16(v0 + 73);
  OUTLINED_FUNCTION_25_16(v0 + 2);
  if (sub_1D7E648D4((v0 + 2)) == 1)
  {
    sub_1D8191534();
    v0[294] = sub_1D8191524();
    v2 = sub_1D81914D4();

    return MEMORY[0x1EEE6DFA0](sub_1D7E6B440, v2, v1);
  }

  else
  {
    memcpy(v11, v0 + 2, 0x235uLL);
    memcpy(v0 + 144, v0 + 73, 0x235uLL);
    sub_1D7E222B8((v0 + 144), (v0 + 215));
    v3 = sub_1D7E6B5F4(v11);
    v0[291] = v3;
    v4 = v3;
    swift_task_alloc();
    OUTLINED_FUNCTION_35_2();
    v0[292] = v5;
    *v5 = v6;
    v5[1] = sub_1D808B3B4;
    v7 = OUTLINED_FUNCTION_14_35();

    return sub_1D7E6B950(v7, v8, v9, v4);
  }
}

id sub_1D7E64794(void *a1, char a2, char a3)
{
  v7 = (a2 & 1) == 0;
  v8 = *(v3 + OBJC_IVAR____TtC5TeaUI21BarCompressionManager_barAnimator);
  if ([v8 state] != v7)
  {
    v10 = sel_attemptTransitionToState_animated_;
    v11 = a3 & 1;
    v12 = v8;
    v13 = v7;

    return [v12 v10];
  }

  result = [v8 state];
  if (a2)
  {
    if (!result)
    {
      if (!a1)
      {
        return result;
      }

      [a1 updateWithPercentage_];
      goto LABEL_13;
    }

LABEL_12:
    if (a1)
    {
LABEL_13:
      sub_1D7FA6478();
      v15 = v14 <= 0.0;
      sub_1D7FA6478();
      v10 = sel_scrollViewIsAtTop_offset_;
      v12 = a1;
      v13 = v15;

      return [v12 v10];
    }

    return result;
  }

  if (result != 1)
  {
    goto LABEL_12;
  }

  if (a1)
  {
    [a1 updateWithPercentage_];
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1D7E648D4(uint64_t a1)
{
  v1 = *(a1 + 128);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D7E648F4()
{

  sub_1D818FA54();
}

uint64_t sub_1D7E64940(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1D7E64994(char a1, uint64_t a2, void *a3, void *a4)
{
  if (a1)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    v7 = swift_allocObject();
    *(v7 + 16) = a3;
    *(v7 + 24) = a4;
    v8 = a3;
    v9 = a4;
    v10 = sub_1D818EE74();
    Bootstrapper.afterBootstrap(on:run:)(v10, sub_1D8034EB8, v7);
  }

  v11 = swift_unknownObjectUnownedLoadStrong();

  sub_1D818F1D4();
}

uint64_t sub_1D7E64A74()
{

  return swift_deallocObject();
}

void sub_1D7E64AE4(uint64_t a1)
{
  if (*(a1 + 217) == 1)
  {
    v2 = [objc_opt_self() sharedApplication];
    v3 = [v2 applicationState];

    if (v3 == 2)
    {
      if (qword_1EDBBC3C8 != -1)
      {
        swift_once();
      }

      v4 = sub_1D818FE34();
      __swift_project_value_buffer(v4, qword_1EDBC6120);
      oslog = sub_1D818FE14();
      v5 = sub_1D81919E4();
      if (os_log_type_enabled(oslog, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_1D7DFF000, oslog, v5, "Presentation Operation Manager ignoring launch since application is in background.", v6, 2u);
        MEMORY[0x1DA715D00](v6, -1, -1);
      }
    }

    else
    {
      if (qword_1EDBBC3C8 != -1)
      {
        swift_once();
      }

      v7 = sub_1D818FE34();
      __swift_project_value_buffer(v7, qword_1EDBC6120);
      v8 = sub_1D818FE14();
      v9 = sub_1D81919E4();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_1D7DFF000, v8, v9, "Beginning initial presentation processing . . .", v10, 2u);
        MEMORY[0x1DA715D00](v10, -1, -1);
      }

      sub_1D7E64CF4(1);
      *(a1 + 217) = 0;
    }
  }
}

uint64_t sub_1D7E64CF4(char a1)
{
  swift_beginAccess();
  if (*(v1 + 56) == 1)
  {
    if (qword_1EDBBC3C8 != -1)
    {
      swift_once();
    }

    v3 = sub_1D818FE34();
    __swift_project_value_buffer(v3, qword_1EDBC6120);
    v4 = sub_1D818FE14();
    v5 = sub_1D81919E4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1D7DFF000, v4, v5, "Skipping all presentations as processing is disabled...", v6, 2u);
      MEMORY[0x1DA715D00](v6, -1, -1);
    }

    sub_1D7E650E4();
    return sub_1D818F184();
  }

  else
  {
    sub_1D818F154();
    sub_1D7E650E4();
    sub_1D818F184();
    sub_1D818FC24();
    v8 = swift_allocObject();
    *(v8 + 16) = a1 & 1;
    *(v8 + 24) = v1;

    v9 = sub_1D818FA14();
    sub_1D7E651EC(0, &qword_1EDBB32D0);
    sub_1D818FAB4();

    v10 = swift_allocObject();
    *(v10 + 16) = v15 == 1;
    *(v10 + 24) = v1;

    v11 = sub_1D818FA14();
    sub_1D7E65390();
    sub_1D818FAB4();

    v12 = sub_1D818FA14();
    sub_1D7E65968();
    sub_1D818FAB4();

    sub_1D7E0A1A8(0, &qword_1EDBBC7C0);
    v13 = sub_1D8191AB4();

    sub_1D818FAC4();

    v14 = sub_1D8191AB4();

    sub_1D818FB04();
  }
}

uint64_t sub_1D7E650A8()
{

  return swift_deallocObject();
}

unint64_t sub_1D7E650E4()
{
  result = qword_1EDBB6380;
  if (!qword_1EDBB6380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBB6380);
  }

  return result;
}

uint64_t sub_1D7E65154(void *a1)
{
  v1 = a1[15];
  v2 = a1[16];
  __swift_project_boxed_opaque_existential_1(a1 + 12, v1);
  return (*(v2 + 8))(v1, v2);
}

void sub_1D7E651EC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1D7E65244(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_1D7E0E7CC(0, &qword_1EDBBC3E8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6B18]);
    swift_allocObject();
    sub_1D818FB44();
  }

  else
  {
    sub_1D7FC943C(*(a1 + 24));
  }

  sub_1D7E0E7CC(0, &qword_1EDBBC3F0, &type metadata for LaunchPresentationConfiguration, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  sub_1D8190DB4();
  sub_1D818FB44();
  v2 = sub_1D818FBE4();

  return v2;
}

void sub_1D7E65390()
{
  if (!qword_1EDBB3280)
  {
    sub_1D7E654C4(255, &unk_1EDBB3440, MEMORY[0x1E69E5E28]);
    sub_1D7E33568();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EDBB3280);
    }
  }
}

uint64_t BlueprintPrewarmState.description.getter()
{
  v0 = BlueprintPrewarmState.state.getter();
  if (v0 >> 62)
  {
    if (v0 >> 62 == 1)
    {
      return 0x64656873696E6966;
    }

    else if (v0 == 0x8000000000000000)
    {
      return 0x676E6974696177;
    }

    else
    {
      return 0x676E696E6E7572;
    }
  }

  else
  {
    sub_1D7E50878(v0);
    return 0x64656C696166;
  }
}

void sub_1D7E654C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6530], MEMORY[0x1E69E6168]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D7E65570(_BYTE *a1, char a2, void *a3)
{
  if (*a1)
  {
    a3[8] = 0;
    swift_beginAccess();
    sub_1D7E654C4(0, &qword_1EDBB3488, MEMORY[0x1E69E5E18]);
    sub_1D8190DB4();
    sub_1D8190DE4();
    swift_endAccess();
    v5 = a3[20];
    v6 = a3[21];
    __swift_project_boxed_opaque_existential_1(a3 + 17, v5);
    (*(v6 + 8))(v5, v6);
    v7 = a3[20];
    v8 = a3[21];
    __swift_project_boxed_opaque_existential_1(a3 + 17, v7);
    (*(v8 + 24))(v7, v8);
    v9 = a3[20];
    v10 = a3[21];
    __swift_project_boxed_opaque_existential_1(a3 + 17, v9);
    (*(v10 + 40))(v9, v10);
    v11 = a3[20];
    v12 = a3[21];
    __swift_project_boxed_opaque_existential_1(a3 + 17, v11);
    (*(v12 + 56))(v11, v12);
    v14 = a3[20];
    v13 = a3[21];
    __swift_project_boxed_opaque_existential_1(a3 + 17, v14);
    (*(v13 + 72))(v14, v13);
    sub_1D7E0E7CC(0, &qword_1EDBBC3F0, &type metadata for LaunchPresentationConfiguration, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    sub_1D818FB44();
    v3 = sub_1D818FBC4();
  }

  else
  {
    if (a2)
    {
      if (qword_1EDBBC3C8 != -1)
      {
        swift_once();
      }

      v15 = sub_1D818FE34();
      __swift_project_value_buffer(v15, qword_1EDBC6120);
      v16 = sub_1D818FE14();
      v17 = sub_1D81919E4();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_1D7DFF000, v16, v17, ". . .Resuming presentation processing from suspension.", v18, 2u);
        MEMORY[0x1DA715D00](v18, -1, -1);
      }

      v19 = sub_1D818FC24();
      sub_1D7E0A1A8(0, &qword_1EDBBC7C0);
      v20 = sub_1D8191AB4();

      v3 = v19;
      sub_1D818FB04();
    }

    sub_1D7FCB9A4();
    swift_allocError();
    swift_willThrow();
  }

  return v3;
}

void sub_1D7E65968()
{
  if (!qword_1EDBB2B88)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EDBB2B88);
    }
  }
}

uint64_t sub_1D7E659E8(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  swift_beginAccess();
  a2[6] = v4;
  swift_beginAccess();
  a2[9] = v5;
  sub_1D8190DB4();

  swift_beginAccess();
  a2[10] = v6;
  sub_1D8190DB4();

  swift_beginAccess();
  a2[11] = v7;
  sub_1D8190DB4();

  v11 = a2[6];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    if (v8 <= v3)
    {
      v14 = v3;
    }

    else
    {
      v14 = v8;
    }

    a2[6] = v13;
    swift_beginAccess();
    a2[5] = v9;
    sub_1D8190DB4();

    v15 = a2[20];
    v16 = a2[21];
    __swift_project_boxed_opaque_existential_1(a2 + 17, v15);
    (*(v16 + 32))(a2[6], v15, v16);
    v17 = a2[20];
    v18 = a2[21];
    __swift_project_boxed_opaque_existential_1(a2 + 17, v17);
    (*(v18 + 16))(v14, v17, v18);
    sub_1D7E65BF0();
    v19 = sub_1D818FBD4();

    return v19;
  }

  return result;
}

uint64_t sub_1D7E65BF0()
{
  v1 = v0;
  v114 = MEMORY[0x1E69E7CC0];
  if (qword_1EDBBC3C8 != -1)
  {
LABEL_72:
    swift_once();
  }

  v2 = sub_1D818FE34();
  __swift_project_value_buffer(v2, qword_1EDBC6120);

  v3 = sub_1D818FE14();
  v4 = sub_1D81919E4();

  v109 = v1;
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    __dst[0] = v6;
    *v5 = 136315138;
    swift_beginAccess();
    v7 = sub_1D8190DB4();
    v8 = MEMORY[0x1DA713540](v7, &type metadata for PresentationOperation);
    v10 = v9;

    v11 = sub_1D7E1C3D8(v8, v10, __dst);

    *(v5 + 4) = v11;
    v1 = v109;
    _os_log_impl(&dword_1D7DFF000, v3, v4, "Beginning filtering of eligible presentation operations. | Potential presentation operations: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1DA715D00](v6, -1, -1);
    MEMORY[0x1DA715D00](v5, -1, -1);
  }

  sub_1D7E15A3C((v1 + 22), __dst);
  v12 = __dst[3];
  if (__dst[3])
  {
    v13 = __dst[4];
    __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
    (*(v13 + 8))(&v112, v12, v13);
    v105 = v112;
    __swift_destroy_boxed_opaque_existential_1Tm(__dst);
  }

  else
  {
    sub_1D7E15B28(__dst, &qword_1EDBB6748, &unk_1EDBB6750, &protocol descriptor for LaunchConditionProviderType, sub_1D7E0631C);
    v105 = 0;
  }

  v106 = swift_allocObject();
  *(v106 + 16) = MEMORY[0x1E69E7CD0];
  swift_beginAccess();
  v14 = v1[5];
  v108 = *(v14 + 16);
  if (!v108)
  {
LABEL_69:
    MEMORY[0x1EEE9AC00](v14);
    sub_1D7E0E7CC(0, &qword_1EDBB32D8, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E62F8]);
    sub_1D818FC24();
    v100 = sub_1D818EE74();

    sub_1D818FAD4();

    v101 = sub_1D818FA14();
    v102 = sub_1D818FB04();

    return v102;
  }

  v104 = v12;
  v107 = v14 + 32;
  sub_1D8190DB4();
  swift_beginAccess();
  swift_beginAccess();
  v15 = 0;
  while (1)
  {
    memcpy(__dst, (v107 + 104 * v15), 0x61uLL);
    v16 = __dst[2];
    v17 = __dst[3];
    if (__dst[10])
    {
      v18 = v1[11];
      if (*(v18 + 16))
      {
        sub_1D81927E4();
        sub_1D7E68F40(__dst, &v112);
        sub_1D8190DB4();
        sub_1D8190DB4();
        sub_1D8190FF4();
        v19 = sub_1D8192824();
        v20 = ~(-1 << *(v18 + 32));
        do
        {
          v21 = v19 & v20;
          if (((*(v18 + 56 + (((v19 & v20) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v20)) & 1) == 0)
          {

            v1 = v109;
            goto LABEL_21;
          }

          v22 = (*(v18 + 48) + 16 * v21);
          if (*v22 == v16 && v22[1] == v17)
          {
            break;
          }

          v24 = sub_1D8192634();
          v19 = v21 + 1;
        }

        while ((v24 & 1) == 0);

        sub_1D7E68F40(__dst, &v112);
        v25 = sub_1D818FE14();
        v26 = sub_1D81919E4();
        sub_1D7E69A3C(__dst);
        if (!os_log_type_enabled(v25, v26))
        {
          goto LABEL_48;
        }

        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        *&v112 = v28;
        *v27 = 136315138;
        sub_1D8190DB4();
        sub_1D7E69A3C(__dst);
        v29 = sub_1D7E1C3D8(v16, v17, &v112);

        *(v27 + 4) = v29;
        v30 = v26;
        v31 = v25;
        v33 = v27;
        v34 = 12;
LABEL_38:
        _os_log_impl(&dword_1D7DFF000, v31, v30, v32, v33, v34);
        __swift_destroy_boxed_opaque_existential_1Tm(v28);
        MEMORY[0x1DA715D00](v28, -1, -1);
        MEMORY[0x1DA715D00](v27, -1, -1);

        goto LABEL_60;
      }
    }

    sub_1D7E68F40(__dst, &v112);
LABEL_21:
    if ((__dst[12] & 1) == 0)
    {
      break;
    }

LABEL_40:
    v54 = __dst[0];
    v55 = __dst[1];
    swift_beginAccess();
    v56 = v1[4];
    if (!*(v56 + 16) || (v57 = sub_1D7E11428(v54, v55), (v58 & 1) == 0))
    {
      swift_endAccess();
      sub_1D7E68F40(__dst, &v112);
      v67 = sub_1D818FE14();
      v68 = sub_1D81919E4();
      sub_1D7E69A3C(__dst);
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        *&v112 = v70;
        *v69 = 136315394;
        sub_1D8190DB4();
        v71 = sub_1D7E1C3D8(v54, v55, &v112);

        *(v69 + 4) = v71;
        *(v69 + 12) = 2080;
        sub_1D8190DB4();
        sub_1D7E69A3C(__dst);
        v72 = sub_1D7E1C3D8(v16, v17, &v112);

        *(v69 + 14) = v72;
        _os_log_impl(&dword_1D7DFF000, v67, v68, "Presentation handler UID (%s) does not have a presentation handler with a matching UID registered. | The operation (%s will NOT be presented.", v69, 0x16u);
        swift_arrayDestroy();
        v73 = v70;
        v1 = v109;
        MEMORY[0x1DA715D00](v73, -1, -1);
        MEMORY[0x1DA715D00](v69, -1, -1);
      }

      else
      {

        sub_1D7E69A3C(__dst);
      }

      goto LABEL_67;
    }

    v59 = __dst[4];
    sub_1D7E0E768(*(v56 + 56) + 40 * v57, &v112);
    sub_1D7E05450(&v112, v110);
    v60 = swift_endAccess();
    if (v1[6] < v59)
    {

      sub_1D7E68F40(__dst, &v112);
      v61 = sub_1D818FE14();
      v62 = sub_1D81919E4();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        *&v112 = v64;
        *v63 = 136315650;
        sub_1D8190DB4();
        v65 = sub_1D7E1C3D8(v16, v17, &v112);

        *(v63 + 4) = v65;
        *(v63 + 12) = 2048;
        sub_1D7E69A3C(__dst);
        *(v63 + 14) = v59;
        sub_1D7E69A3C(__dst);
        *(v63 + 22) = 2048;
        *(v63 + 24) = v109[6];

        _os_log_impl(&dword_1D7DFF000, v61, v62, "Presentation operation (%s) has a requiredAppLaunchCount value of %ld, but our appLaunchCount is %ld. | This operation will NOT be presented.", v63, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v64);
        v66 = v64;
        v1 = v109;
        MEMORY[0x1DA715D00](v66, -1, -1);
        MEMORY[0x1DA715D00](v63, -1, -1);
      }

      else
      {

        sub_1D7E69A3C(__dst);

        sub_1D7E69A3C(__dst);
      }

      goto LABEL_66;
    }

    v74 = __dst[9];
    if (__dst[9])
    {
      sub_1D7E15A3C((v109 + 22), &v112);
      v75 = v113;
      v60 = sub_1D7E15B28(&v112, &qword_1EDBB6748, &unk_1EDBB6750, &protocol descriptor for LaunchConditionProviderType, sub_1D7E0631C);
      if (!v75)
      {
        sub_1D7E68F40(__dst, &v112);
        v76 = sub_1D818FE14();
        v93 = sub_1D81919E4();
        sub_1D7E69A3C(__dst);
        if (os_log_type_enabled(v76, v93))
        {
          v94 = swift_slowAlloc();
          v95 = swift_slowAlloc();
          *&v112 = v95;
          *v94 = 136315394;
          sub_1D8190DB4();
          sub_1D7E69A3C(__dst);
          v96 = sub_1D7E1C3D8(v16, v17, &v112);

          *(v94 + 4) = v96;
          *(v94 + 12) = 2080;
          v111 = v74;
          v97 = PresentationOperation.LaunchConditions.description.getter();
          v99 = sub_1D7E1C3D8(v97, v98, &v112);

          *(v94 + 14) = v99;
          _os_log_impl(&dword_1D7DFF000, v76, v93, "Presentation operation (%s) is configured to be suppressed by launch conditions: %s, but there is no LaunchConditionProvider to ensure conditions are compliant. | This operation will NOT be presented.", v94, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1DA715D00](v95, -1, -1);
          v87 = v94;
LABEL_63:
          MEMORY[0x1DA715D00](v87, -1, -1);

LABEL_65:
          v1 = v109;
LABEL_66:
          __swift_destroy_boxed_opaque_existential_1Tm(v110);
          goto LABEL_67;
        }

LABEL_64:

        sub_1D7E69A3C(__dst);
        goto LABEL_65;
      }
    }

    if (v104 && (v74 & v105) != 0)
    {
      sub_1D7E68F40(__dst, &v112);
      v76 = sub_1D818FE14();
      v77 = sub_1D81919E4();
      sub_1D7E69A3C(__dst);
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        *&v112 = v79;
        *v78 = 136315650;
        sub_1D8190DB4();
        sub_1D7E69A3C(__dst);
        v80 = sub_1D7E1C3D8(v16, v17, &v112);

        *(v78 + 4) = v80;
        *(v78 + 12) = 2080;
        v111 = v74;
        v81 = PresentationOperation.LaunchConditions.description.getter();
        v83 = sub_1D7E1C3D8(v81, v82, &v112);

        *(v78 + 14) = v83;
        *(v78 + 22) = 2080;
        v111 = v105;
        v84 = PresentationOperation.LaunchConditions.description.getter();
        v86 = sub_1D7E1C3D8(v84, v85, &v112);

        *(v78 + 24) = v86;
        _os_log_impl(&dword_1D7DFF000, v76, v77, "Presentation operation (%s) is configured to be suppressed by launch conditions: %s, and our current launch conditions are %s. | This operation will NOT be presented.", v78, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1DA715D00](v79, -1, -1);
        v87 = v78;
        goto LABEL_63;
      }

      goto LABEL_64;
    }

    MEMORY[0x1EEE9AC00](v60);
    sub_1D818FC24();
    v88 = swift_allocObject();
    memcpy((v88 + 16), __dst, 0x61uLL);
    sub_1D7E68F40(__dst, &v112);
    v89 = sub_1D818FA14();
    sub_1D818FB74();

    v90 = sub_1D818EE74();
    v91 = swift_allocObject();
    *(v91 + 16) = v106;
    memcpy((v91 + 24), __dst, 0x61uLL);

    sub_1D818FAE4();

    MEMORY[0x1DA713500](v92);
    if (*((v114 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v114 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D81913B4();
    }

    sub_1D8191404();

    __swift_destroy_boxed_opaque_existential_1Tm(v110);
LABEL_60:
    v1 = v109;
LABEL_67:
    if (++v15 == v108)
    {

      goto LABEL_69;
    }
  }

  v35 = __dst[11];
  swift_beginAccess();
  if (*(v1[10] + 16))
  {
    sub_1D7E11428(v16, v17);
    if (v36)
    {
LABEL_33:
      swift_endAccess();
      swift_beginAccess();
      v48 = v1[10];
      if (*(v48 + 16) && (v49 = sub_1D7E11428(v16, v17), (v50 & 1) != 0))
      {
        v51 = *(*(v48 + 56) + 8 * v49);
        swift_endAccess();
        if (v51 >= v35)
        {
          sub_1D7E68F40(__dst, &v112);
          v25 = sub_1D818FE14();
          v52 = sub_1D81919E4();
          sub_1D7E69A3C(__dst);
          if (!os_log_type_enabled(v25, v52))
          {
LABEL_48:

            sub_1D7E69A3C(__dst);
            goto LABEL_60;
          }

          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          *&v112 = v28;
          *v27 = 136315650;
          sub_1D8190DB4();
          sub_1D7E69A3C(__dst);
          v53 = sub_1D7E1C3D8(v16, v17, &v112);

          *(v27 + 4) = v53;
          *(v27 + 12) = 2048;
          *(v27 + 14) = v51;
          *(v27 + 22) = 2048;
          *(v27 + 24) = v35;
          v30 = v52;
          v31 = v25;
          v32 = "Presentation operation (%s) has a retry count of %ld and a maximum retry value of %ld. | This operation will NOT be presented.";
          v33 = v27;
          v34 = 32;
          goto LABEL_38;
        }
      }

      else
      {
        swift_endAccess();
      }

      goto LABEL_40;
    }
  }

  swift_endAccess();
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v110[0] = v1[10];
  v37 = v110[0];
  v1[10] = 0x8000000000000000;
  v38 = sub_1D7E11428(v16, v17);
  if (__OFADD__(*(v37 + 16), (v39 & 1) == 0))
  {
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v40 = v38;
  v1 = v39;
  sub_1D7E654C4(0, &qword_1EDBB2DD0, MEMORY[0x1E69E6DC8]);
  if ((sub_1D8192374() & 1) == 0)
  {
LABEL_28:
    v43 = v110[0];
    if (v1)
    {
      *(*(v110[0] + 56) + 8 * v40) = -1;
    }

    else
    {
      *(v110[0] + 8 * (v40 >> 6) + 64) |= 1 << v40;
      v44 = (v43[6] + 16 * v40);
      *v44 = v16;
      v44[1] = v17;
      *(v43[7] + 8 * v40) = -1;
      v45 = v43[2];
      v46 = __OFADD__(v45, 1);
      v47 = v45 + 1;
      if (v46)
      {
        goto LABEL_71;
      }

      v43[2] = v47;
      sub_1D8190DB4();
    }

    v1 = v109;
    v109[10] = v43;
    goto LABEL_33;
  }

  v41 = sub_1D7E11428(v16, v17);
  if ((v1 & 1) == (v42 & 1))
  {
    v40 = v41;
    goto LABEL_28;
  }

  result = sub_1D8192714();
  __break(1u);
  return result;
}

uint64_t sub_1D7E66CA0()
{

  return swift_deallocObject();
}

uint64_t sub_1D7E66CD8()
{

  return swift_deallocObject();
}

Swift::Void __swiftcall BlueprintViewportMonitor.startUpdates(view:)(UIView *view)
{
  v3 = v1;
  sub_1D8190C74();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_140();
  sub_1D7E11E0C();
  *v2 = sub_1D8191AB4();
  v6 = OUTLINED_FUNCTION_4_82();
  v7(v6);
  v8 = sub_1D8190CA4();
  v9 = OUTLINED_FUNCTION_4_8();
  v10(v9);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_7:
    OUTLINED_FUNCTION_3_17();
    goto LABEL_4;
  }

  if ((v3[OBJC_IVAR____TtC5TeaUI24BlueprintViewportMonitor_options] & 2) == 0)
  {
    return;
  }

  if (qword_1EDBBB700 != -1)
  {
    goto LABEL_7;
  }

LABEL_4:
  sub_1D80D425C(v3, view, qword_1EDBBB708);
}

uint64_t PresentationOperation.LaunchConditions.description.getter()
{
  v1 = *v0;
  if (qword_1EDBB9040 != -1)
  {
LABEL_30:
    swift_once();
  }

  v2 = off_1EDBB9048;
  v3 = off_1EDBB9048 + 64;
  v4 = 1 << *(off_1EDBB9048 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(off_1EDBB9048 + 8);
  v7 = (v4 + 63) >> 6;
  sub_1D8190DB4();
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (v6)
  {
LABEL_10:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = *(v2[6] + ((v8 << 9) | (8 * v11)));
    if ((v12 & ~v1) == 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D7F08E54(0, *(v9 + 16) + 1, 1);
      }

      v14 = *(v9 + 16);
      v13 = *(v9 + 24);
      v15 = v14 + 1;
      if (v14 >= v13 >> 1)
      {
        sub_1D7F08E54(v13 > 1, v14 + 1, 1);
        v15 = v14 + 1;
      }

      *(v9 + 16) = v15;
      *(v9 + 8 * v14 + 32) = v12;
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v10 >= v7)
    {
      break;
    }

    v6 = *&v3[8 * v10];
    ++v8;
    if (v6)
    {
      v8 = v10;
      goto LABEL_10;
    }
  }

  v16 = *(v9 + 16);
  if (v16)
  {
    v17 = MEMORY[0x1E69E7CC0];
    v18 = 32;
    do
    {
      if (v2[2])
      {
        v19 = sub_1D7F04F80();
        if (v20)
        {
          v21 = (v2[7] + 16 * v19);
          v23 = *v21;
          v22 = v21[1];
          sub_1D8190DB4();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1D7E2D320();
            v17 = v26;
          }

          v24 = *(v17 + 16);
          if (v24 >= *(v17 + 24) >> 1)
          {
            sub_1D7E2D320();
            v17 = v27;
          }

          *(v17 + 16) = v24 + 1;
          v25 = v17 + 16 * v24;
          *(v25 + 32) = v23;
          *(v25 + 40) = v22;
        }
      }

      v18 += 8;
      --v16;
    }

    while (v16);
  }

  else
  {

    v17 = MEMORY[0x1E69E7CC0];
  }

  v28 = MEMORY[0x1E69E6158];
  sub_1D7E0E7CC(0, &qword_1EDBB2C60, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1D819FAB0;
  *(v29 + 32) = sub_1D81925B4();
  *(v29 + 40) = v30;
  sub_1D7E675D4(v17);
  sub_1D7E0E7CC(0, &qword_1EDBB3330, v28, MEMORY[0x1E69E62F8]);
  sub_1D7E1B6BC();
  v31 = sub_1D8190E94();

  return v31;
}

void *sub_1D7E671B8()
{
  sub_1D7E671F8();
  result = sub_1D8190D94();
  off_1EDBB9048 = result;
  return result;
}

unint64_t sub_1D7E671F8()
{
  result = qword_1EDBB9038;
  if (!qword_1EDBB9038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBB9038);
  }

  return result;
}

double sub_1D7E6724C(void *a1)
{
  v1 = a1;
  v2 = sub_1D7E673E8();

  return v2;
}

uint64_t sub_1D7E67298()
{
  OUTLINED_FUNCTION_43_10();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_51_7(v4);
  v0 = OUTLINED_FUNCTION_42_9();
  memcpy(v0, v1, 0x4E8uLL);
  return sub_1D7E67428(v4, &v3);
}

void *sub_1D7E67328@<X0>(void *a1@<X8>)
{
  sub_1D7E67298();
  memcpy(__dst, __src, 0x4E8uLL);
  if (sub_1D7E67500(__dst) == 1)
  {
    return sub_1D7E6748C();
  }

  else
  {
    return memcpy(a1, __src, 0x4E8uLL);
  }
}

unint64_t sub_1D7E67394()
{
  result = qword_1EDBB9030;
  if (!qword_1EDBB9030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBB9030);
  }

  return result;
}

double sub_1D7E673E8()
{
  sub_1D7E67328(&v1);
  sub_1D7E598FC(&v1);
  return v1;
}

uint64_t sub_1D7E67428(uint64_t a1, uint64_t a2)
{
  sub_1D7E54FF4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7E6748C()
{
  OUTLINED_FUNCTION_43_10();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_51_7(v4);
  v0 = OUTLINED_FUNCTION_42_9();
  memcpy(v0, v1, 0x4E8uLL);
  return sub_1D7E6755C(v4, &v3);
}

uint64_t sub_1D7E67500(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D7E67518(uint64_t a1, uint64_t a2)
{
  sub_1D81927E4();
  MEMORY[0x1DA714A00](a2);
  return sub_1D8192824();
}

void sub_1D7E675D4(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_0_19(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1D7E68654(v4, 1);
  OUTLINED_FUNCTION_4_15();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_21();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_7_14();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_3_26();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1D7E67664(int a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v145 = a2;
  v16 = sub_1D818E8B4();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_15();
  v20 = v19 - v18;
  v21 = type metadata accessor for BlueprintInfiniteScroll();
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_15();
  v25 = (v24 - v23);
  sub_1D818F154();
  *&v151 = v21;
  if (!*(*&v25[*(v21 + 24)] + 16))
  {
    goto LABEL_60;
  }

  swift_beginAccess();
  v26 = *(v8 + 48);
  v150 = v8 + 48;
  v153 = v8;
  v143 = v16;
  v142 = v17;
  v141 = v20;
  LODWORD(v147) = a1;
  if ((v26 & 0xC000000000000001) != 0)
  {
    sub_1D8190DB4();
    sub_1D8192064();
    type metadata accessor for BlueprintInfiniteScrollRequest();
    sub_1D80C182C(&qword_1EDBB5F38, type metadata accessor for BlueprintInfiniteScrollRequest);
    sub_1D81916A4();
    v26 = v159;
    v27 = v160;
    v28 = v161;
    v29 = v162;
    v30 = v163;
  }

  else
  {
    v31 = -1 << *(v26 + 32);
    v27 = v26 + 56;
    v28 = ~v31;
    v32 = -v31;
    v33 = v32 < 64 ? ~(-1 << v32) : -1;
    v30 = v33 & *(v26 + 56);
    sub_1D8190DB4();
    v29 = 0;
  }

  v144 = v28;
  v34 = (v28 + 64) >> 6;
  OUTLINED_FUNCTION_27();
  v140 = v35;
  OUTLINED_FUNCTION_27();
  v139 = v36;
  OUTLINED_FUNCTION_27();
  v138 = v37;
  OUTLINED_FUNCTION_27();
  v137 = v38;
  v148 = xmmword_1D819FAC0;
  v146 = v25;
  v149 = v26;
  while ((v26 & 0x8000000000000000) == 0)
  {
    v39 = v29;
    v40 = v30;
    if (!v30)
    {
      while (1)
      {
        v29 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          break;
        }

        if (v29 >= v34)
        {
          goto LABEL_37;
        }

        v40 = *(v27 + 8 * v29);
        ++v39;
        if (v40)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

LABEL_14:
    v41 = (v40 - 1) & v40;
    v42 = *(*(v26 + 48) + ((v29 << 9) | (8 * __clz(__rbit64(v40)))));

    if (!v42)
    {
      goto LABEL_37;
    }

LABEL_18:
    *&v152 = v41;
    v44 = *&v25[*(v151 + 28)];
    if (*(v44 + 16))
    {
      v46 = *(v42 + 16);
      v45 = *(v42 + 24);
      sub_1D81927E4();
      sub_1D8190DB4();
      sub_1D8190FF4();
      v47 = sub_1D8192824();
      v48 = ~(-1 << *(v44 + 32));
      while (1)
      {
        v49 = v47 & v48;
        if (((*(v44 + 56 + (((v47 & v48) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v47 & v48)) & 1) == 0)
        {
          break;
        }

        v50 = (*(v44 + 48) + 16 * v49);
        if (*v50 != v46 || v50[1] != v45)
        {
          v52 = sub_1D8192634();
          v47 = v49 + 1;
          if ((v52 & 1) == 0)
          {
            continue;
          }
        }

        v25 = v146;
        v26 = v149;
        goto LABEL_36;
      }

      v26 = v149;
    }

    sub_1D81919A4();
    OUTLINED_FUNCTION_0_189();
    sub_1D7E30644(0, &qword_1EDBBE100, v53, MEMORY[0x1E69E6F90]);
    v54 = swift_allocObject();
    *(v54 + 16) = v148;
    v56 = *(v42 + 16);
    v55 = *(v42 + 24);
    *(v54 + 56) = MEMORY[0x1E69E6158];
    v57 = sub_1D7E13BF4();
    *(v54 + 64) = v57;
    *(v54 + 32) = v56;
    *(v54 + 40) = v55;
    v58 = 0xEF65746164705574;
    v59 = 0x6E69727065756C62;
    switch(v145)
    {
      case 1:
        v59 = 0xD000000000000010;
        v60 = &v156 + 8;
        goto LABEL_34;
      case 2:
        v59 = 0xD000000000000013;
        v60 = &v157;
        goto LABEL_34;
      case 3:
        v59 = 0xD000000000000019;
        v60 = &v157 + 8;
        goto LABEL_34;
      case 4:
        v59 = 0x6C6C695777656976;
        v58 = 0xEE00726165707041;
        break;
      case 5:
        v59 = 0xD00000000000001ALL;
        v60 = &v158;
LABEL_34:
        v58 = *(v60 - 32);
        break;
      default:
        break;
    }

    *(v54 + 96) = MEMORY[0x1E69E6158];
    *(v54 + 104) = v57;
    *(v54 + 72) = v59;
    *(v54 + 80) = v58;
    sub_1D8190DB4();
    sub_1D818FD44();

    sub_1D80D6B1C();

    v25 = v146;
LABEL_36:
    v30 = v152;
  }

  v43 = sub_1D81920D4();
  if (v43)
  {
    v154[0] = v43;
    type metadata accessor for BlueprintInfiniteScrollRequest();
    swift_dynamicCast();
    v42 = v156;
    v41 = v30;
    if (v156)
    {
      goto LABEL_18;
    }
  }

LABEL_37:
  sub_1D7E4507C();
  v61 = v153;
  v62 = *(v153 + OBJC_IVAR____TtC5TeaUI30BlueprintInfiniteScrollManager_maxInflightRequests);
  v63 = 0x7FFFFFFFFFFFFFFFLL;
  v64 = v147;
  if (v62 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_40;
  }

  v65 = sub_1D8190DB4();
  v66 = sub_1D80C064C(v65);

  v63 = v62 - v66;
  if (__OFSUB__(v62, v66))
  {
    goto LABEL_89;
  }

  if (v63 < 1)
  {
LABEL_60:
    v93 = 0;
    goto LABEL_86;
  }

LABEL_40:
  v140 = v63;
  v144 = v62;
  sub_1D7EB3EE0(v64 & 1, a3, a4, a5, a6, a7, a8);
  v68 = v67;
  v69 = OBJC_IVAR____TtC5TeaUI30BlueprintInfiniteScrollManager_rangeCache;
  swift_beginAccess();
  v70 = v142;
  v71 = v141;
  v72 = v143;
  (*(v142 + 16))(v141, v61 + v69, v143);
  v73 = sub_1D818E884();
  (*(v70 + 8))(v71, v72);
  if ((v73 & 1) == 0)
  {
    goto LABEL_60;
  }

  sub_1D7EB4228(v68);
  v75 = v74;
  v76 = 0;
  v149 = *(v74 + 16);
  *&v148 = v74 + 32;
  v77 = MEMORY[0x1E69E7CC0];
  v147 = v69;
LABEL_42:
  while (v76 != v149)
  {
    if (v76 >= *(v75 + 16))
    {
      goto LABEL_88;
    }

    v78 = (v148 + 48 * v76);
    v80 = *v78;
    v79 = v78[1];
    v81 = *(v78 + 2);
    v152 = *(v78 + 1);
    v151 = v81;
    ++v76;
    v82 = *(v61 + 40);
    if (*(v82 + 16))
    {
      sub_1D81927E4();
      sub_1D8190DB4();
      sub_1D8190DB4();
      sub_1D8190DB4();
      sub_1D8190FF4();
      v83 = sub_1D8192824();
      v84 = ~(-1 << *(v82 + 32));
      while (1)
      {
        v85 = v83 & v84;
        if (((*(v82 + 56 + (((v83 & v84) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v83 & v84)) & 1) == 0)
        {
          break;
        }

        v86 = (*(v82 + 48) + 16 * v85);
        if (*v86 != v80 || v86[1] != v79)
        {
          v88 = sub_1D8192634();
          v83 = v85 + 1;
          if ((v88 & 1) == 0)
          {
            continue;
          }
        }

        v61 = v153;
        goto LABEL_42;
      }

      v61 = v153;
    }

    else
    {
      sub_1D8190DB4();
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v154[0] = v77;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D7EB4894();
      v77 = v154[0];
    }

    v90 = *(v77 + 16);
    if (v90 >= *(v77 + 24) >> 1)
    {
      sub_1D7EB4894();
      v77 = v154[0];
    }

    *(v77 + 16) = v90 + 1;
    v91 = v77 + 48 * v90;
    *(v91 + 32) = v80;
    *(v91 + 40) = v79;
    v92 = v151;
    *(v91 + 48) = v152;
    *(v91 + 64) = v92;
  }

  if (v144 != 0x7FFFFFFFFFFFFFFFLL && v140 < *(v77 + 16))
  {
    v94 = sub_1D80C089C(v146, v77, v140, a5, a6, a7, a8);

    v77 = v94;
  }

  v95 = *(v77 + 16);
  v96 = v77;
  if (!v95)
  {
    sub_1D81919C4();
    OUTLINED_FUNCTION_0_189();
    sub_1D7E30644(0, v130, v131, MEMORY[0x1E69E6F90]);
    v132 = swift_allocObject();
    *(v132 + 16) = xmmword_1D819FAB0;
    v133 = sub_1D7EB48B4(v145);
    v135 = v134;
    *(v132 + 56) = MEMORY[0x1E69E6158];
    *(v132 + 64) = sub_1D7E13BF4();
    *(v132 + 32) = v133;
    *(v132 + 40) = v135;
    sub_1D818FD44();

    v93 = 0;
    goto LABEL_85;
  }

  v155 = MEMORY[0x1E69E7CC0];
  sub_1D81922A4();
  v97 = 32;
  do
  {
    v98 = *(v96 + v97 + 16);
    v99 = *(v96 + v97);
    v158 = *(v96 + v97 + 32);
    v156 = v99;
    v157 = v98;
    v100 = v99;
    v101 = swift_allocObject();
    swift_weakInit();
    v102 = swift_allocObject();
    *(v102 + 16) = v101;
    v103 = v157;
    *(v102 + 24) = v156;
    *(v102 + 40) = v103;
    *(v102 + 56) = v158;
    type metadata accessor for BlueprintInfiniteScrollRequest();
    swift_allocObject();
    v104 = sub_1D80D6C60(v100, *(&v100 + 1), sub_1D80C16EC, v102);
    swift_beginAccess();
    v105 = *(v104 + 16);
    v106 = *(v104 + 24);
    sub_1D80C16F8(&v156, v154);
    sub_1D8190DB4();
    sub_1D80C16F8(&v156, v154);
    sub_1D8190DB4();
    sub_1D7E91548(v154, v105, v106);

    sub_1D7F59C9C(v154, v104);

    swift_endAccess();
    swift_beginAccess();
    sub_1D818E854();
    swift_endAccess();
    sub_1D80C1754(&v156);
    sub_1D8192274();
    sub_1D81922B4();
    sub_1D81922C4();
    sub_1D8192284();
    v97 += 48;
    --v95;
  }

  while (v95);
  v153 = v96;
  v107 = v155;
  v108 = *(v61 + OBJC_IVAR____TtC5TeaUI30BlueprintInfiniteScrollManager_log);
  OUTLINED_FUNCTION_0_189();
  sub_1D7E30644(0, v109, v110, MEMORY[0x1E69E6F90]);
  v111 = swift_allocObject();
  v112 = v111;
  *(v111 + 16) = xmmword_1D81A1B70;
  if (*(v61 + OBJC_IVAR____TtC5TeaUI30BlueprintInfiniteScrollManager_direction))
  {
    v113 = 0x647261776B636162;
  }

  else
  {
    v113 = 0x64726177726F66;
  }

  if (*(v61 + OBJC_IVAR____TtC5TeaUI30BlueprintInfiniteScrollManager_direction))
  {
    v114 = 0xE800000000000000;
  }

  else
  {
    v114 = 0xE700000000000000;
  }

  v115 = MEMORY[0x1E69E6158];
  *(v111 + 56) = MEMORY[0x1E69E6158];
  v116 = sub_1D7E13BF4();
  v112[8] = v116;
  v112[4] = v113;
  v112[5] = v114;
  v117 = sub_1D7EB48B4(v145);
  v112[12] = v115;
  v112[13] = v116;
  v112[9] = v117;
  v112[10] = v118;
  v119 = sub_1D7E36AB8(v107);
  v120 = MEMORY[0x1E69E7CC0];
  if (!v119)
  {
    goto LABEL_83;
  }

  v121 = v119;
  *&v151 = v112;
  *&v152 = v108;
  v154[0] = MEMORY[0x1E69E7CC0];
  sub_1D7F08E34();
  if (v121 < 0)
  {
LABEL_90:
    __break(1u);
    JUMPOUT(0x1D7E685C4);
  }

  v122 = 0;
  v120 = v154[0];
  do
  {
    if ((v107 & 0xC000000000000001) != 0)
    {
      v123 = MEMORY[0x1DA714420](v122, v107);
    }

    else
    {
      v123 = *(v107 + 8 * v122 + 32);
    }

    v125 = *(v123 + 16);
    v124 = *(v123 + 24);
    sub_1D8190DB4();

    v154[0] = v120;
    v126 = *(v120 + 16);
    if (v126 >= *(v120 + 24) >> 1)
    {
      sub_1D7F08E34();
      v120 = v154[0];
    }

    ++v122;
    *(v120 + 16) = v126 + 1;
    v127 = v120 + 16 * v126;
    *(v127 + 32) = v125;
    *(v127 + 40) = v124;
  }

  while (v121 != v122);
  v112 = v151;
LABEL_83:
  sub_1D7EA30C0();
  v112[17] = v128;
  v112[18] = sub_1D80C182C(&qword_1EDBB3320, sub_1D7EA30C0);
  v112[14] = v120;
  sub_1D81919E4();
  sub_1D818FD44();

  sub_1D7FF6928(v107);
  v93 = v129;

LABEL_85:
  v25 = v146;
LABEL_86:
  sub_1D7E306A8(v25);
  return v93;
}

uint64_t sub_1D7E685DC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D7E68614()
{

  return swift_deallocObject();
}

void sub_1D7E687E4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC5TeaUI25SwipeActionCollectionView_dependencyCleanupBlocks;
  swift_beginAccess();
  v3 = *&v0[v2];
  v4 = *(v3 + 16);
  if (v4)
  {
    sub_1D8190DB4();
    v5 = v3 + 40;
    do
    {
      v6 = *(v5 - 8);

      v6(v7);

      v5 += 16;
      --v4;
    }

    while (v4);
  }

  v8 = MEMORY[0x1E69E7CC0];
  *&v1[v2] = MEMORY[0x1E69E7CC0];

  v9 = OBJC_IVAR____TtC5TeaUI25SwipeActionCollectionView_coordinatingResetBlocks;
  swift_beginAccess();
  v61 = v9;
  *&v1[v9] = v8;

  v10 = OBJC_IVAR____TtC5TeaUI25SwipeActionCollectionView_coordinatingCancelBlocks;
  swift_beginAccess();
  v60 = v10;
  *&v1[v10] = v8;

  v11 = [v1 superview];
  v59 = OBJC_IVAR____TtC5TeaUI25SwipeActionCollectionView_swipeActionManager;
  if (v11)
  {
    do
    {
      v12 = swift_dynamicCastObjCProtocolConditional();
      if (v12)
      {
        v13 = v12;
        v14 = v11;
        v15 = [v13 coordinatingSwipeActionPanGestureRecognizer];
        [v15 addTarget:v1 action:sel_handlePanGestureWithGestureRecognizer_];

        v16 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v17 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v18 = swift_allocObject();
        *(v18 + 16) = v16;
        *(v18 + 24) = v17;
        swift_beginAccess();
        v19 = *&v1[v2];
        v20 = v14;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v1[v2] = v19;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D7EE4AB0(0, *(v19 + 16) + 1, 1, v19);
          v19 = v51;
          *&v1[v2] = v51;
        }

        v23 = *(v19 + 16);
        v22 = *(v19 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_1D7EE4AB0(v22 > 1, v23 + 1, 1, v19);
          v19 = v52;
        }

        *(v19 + 16) = v23 + 1;
        v24 = v19 + 16 * v23;
        *(v24 + 32) = sub_1D8085E8C;
        *(v24 + 40) = v18;
        *&v1[v2] = v19;
        swift_endAccess();

        v25 = swift_allocObject();
        swift_unknownObjectWeakInit();
        swift_beginAccess();
        v26 = *&v1[v61];

        v27 = swift_isUniquelyReferenced_nonNull_native();
        *&v1[v61] = v26;
        if ((v27 & 1) == 0)
        {
          sub_1D7EE4AB0(0, *(v26 + 16) + 1, 1, v26);
          v26 = v53;
          *&v1[v61] = v53;
        }

        v29 = *(v26 + 16);
        v28 = *(v26 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_1D7EE4AB0(v28 > 1, v29 + 1, 1, v26);
          v26 = v54;
        }

        *(v26 + 16) = v29 + 1;
        v30 = v26 + 16 * v29;
        *(v30 + 32) = sub_1D8085E94;
        *(v30 + 40) = v25;
        *&v1[v61] = v26;
        swift_endAccess();

        v31 = swift_allocObject();
        swift_unknownObjectWeakInit();

        swift_beginAccess();
        v32 = *&v1[v60];

        v33 = swift_isUniquelyReferenced_nonNull_native();
        *&v1[v60] = v32;
        if ((v33 & 1) == 0)
        {
          sub_1D7EE5044(0, *(v32 + 16) + 1, 1, v32);
          v32 = v55;
          *&v1[v60] = v55;
        }

        v35 = *(v32 + 16);
        v34 = *(v32 + 24);
        if (v35 >= v34 >> 1)
        {
          sub_1D7EE5044(v34 > 1, v35 + 1, 1, v32);
          v32 = v56;
        }

        *(v32 + 16) = v35 + 1;
        v36 = v32 + 16 * v35;
        *(v36 + 32) = sub_1D8085E9C;
        *(v36 + 40) = v31;
        *&v1[v60] = v32;
        swift_endAccess();
      }

      objc_opt_self();
      v37 = swift_dynamicCastObjCClass();
      if (v37)
      {
        v38 = v37;
        v39 = v11;
        v40 = [v38 panGestureRecognizer];
        [v40 addTarget:v1 action:sel_handlePanGestureWithGestureRecognizer_];

        v41 = [v38 panGestureRecognizer];
        [v41 requireGestureRecognizerToFail_];

        v42 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v43 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v44 = swift_allocObject();
        *(v44 + 16) = v42;
        *(v44 + 24) = v43;
        swift_beginAccess();
        v45 = *&v1[v2];

        v46 = swift_isUniquelyReferenced_nonNull_native();
        *&v1[v2] = v45;
        if ((v46 & 1) == 0)
        {
          sub_1D7EE4AB0(0, *(v45 + 16) + 1, 1, v45);
          v45 = v57;
          *&v1[v2] = v57;
        }

        v48 = *(v45 + 16);
        v47 = *(v45 + 24);
        if (v48 >= v47 >> 1)
        {
          sub_1D7EE4AB0(v47 > 1, v48 + 1, 1, v45);
          v45 = v58;
        }

        *(v45 + 16) = v48 + 1;
        v49 = v45 + 16 * v48;
        *(v49 + 32) = sub_1D8085E84;
        *(v49 + 40) = v44;
        *&v1[v2] = v45;
        swift_endAccess();
      }

      v50 = [v11 superview];

      v11 = v50;
    }

    while (v50);
  }
}

uint64_t sub_1D7E68E90()
{
  MEMORY[0x1DA715E30](v0 + 16);
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

void sub_1D7E68ED4(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  MastheadViewController.traitCollectionDidChange(_:)(v9);
}

Swift::Void __swiftcall MastheadViewController.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, sel_traitCollectionDidChange_, isa);
  v3 = MastheadViewController.navigationItem.getter();
  v4 = [v1 traitCollection];
  v5 = sub_1D7E4E53C(v4);

  [v3 setTitleView_];
  v6 = [v1 view];
  if (v6)
  {
    v7 = v6;
    [v6 setNeedsLayout];

    if (sub_1D8190B24())
    {
      [*&v1[qword_1EDBB88A8] setNeedsLayout];
    }
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall SwipeActionCollectionView.didMoveToWindow()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_didMoveToWindow);
  sub_1D7E6931C();
}

uint64_t sub_1D7E6912C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1D8190C64();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - v9;
  sub_1D7E0E7CC(0, &qword_1EDBBC3E8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6B18]);
  sub_1D8190C54();
  sub_1D8190C94();
  v11 = *(v5 + 8);
  v11(v8, v4);
  v12 = a3[3];
  v13 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v12);
  (*(v13 + 16))(v12, v13);
  v14 = sub_1D818FA14();
  v15 = sub_1D818FB84();

  v11(v10, v4);
  return v15;
}

void sub_1D7E6931C()
{
  OUTLINED_FUNCTION_98();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_0_206();
  sub_1D7E1D458(0, v8, v9, MEMORY[0x1E69E6720]);
  v11 = OUTLINED_FUNCTION_50(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_28_0();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v16 = OUTLINED_FUNCTION_24_26();
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_15();
  v20 = v19 - v18;
  v21 = OBJC_IVAR____TtC5TeaUI18SwipeActionManager_swipeState;
  OUTLINED_FUNCTION_8_4();
  sub_1D7E699A8(v0 + v21, v0);
  if (__swift_getEnumTagSinglePayload(v0, 1, v16) == 1)
  {
    OUTLINED_FUNCTION_0_206();
    v24 = sub_1D7E537D8(v0, v22, v23);
    if (!v5)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  sub_1D80FFE94(v0, v20);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v26 = Strong;
    v40 = v7;
    v27 = sub_1D818E8E4();
    v28 = [v26 cellForItemAtIndexPath_];

    v41 = v28;
    if (v28)
    {
      v29 = v28;
      v30 = [v29 contentView];
      [v30 center];
      v32 = v31;

      if (v32 != *(v20 + v16[7]))
      {
        v39 = v29;
        v35 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v36 = v3;
        v37 = swift_allocObject();
        v37[2] = v35;
        v37[3] = v5;
        v37[4] = v36;

        sub_1D7E19F24(v5);
        sub_1D80F9A74(0, v20, v40 & 1, sub_1D8100CF0, v37);

LABEL_13:
        __swift_storeEnumTagSinglePayload(v14, 1, 1, v16);
        sub_1D80F8EE8(v14);

        swift_beginAccess();
        sub_1D80FFDA8(v14, v1 + v21);
        swift_endAccess();
        OUTLINED_FUNCTION_3_119();
        sub_1D80FFE3C(v20, v38);
        goto LABEL_14;
      }
    }

    [*(v20 + v16[10]) removeFromSuperview];
    sub_1D80F928C(v20, 1);
    v33 = [*(v20 + v16[14]) removeFromSuperview];
    if (v5)
    {
      v5(v33);
    }

    goto LABEL_13;
  }

  OUTLINED_FUNCTION_3_119();
  v24 = sub_1D80FFE3C(v20, v34);
  if (v5)
  {
LABEL_11:
    v5(v24);
  }

LABEL_14:
  OUTLINED_FUNCTION_97();
}

uint64_t sub_1D7E69678()
{
  MEMORY[0x1DA715E30](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D7E696B0()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

void sub_1D7E696F8(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  if (v5 == 1)
  {
    v7 = *(a4 + 16);
    v8 = *(a4 + 24);
    swift_beginAccess();
    sub_1D8190DB4();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(a3 + 16);
    sub_1D7FCB774(v7, v8, isUniquelyReferenced_nonNull_native);
    *(a3 + 16) = v21;
  }

  else
  {
    v11 = *(a4 + 16);
    v12 = *(a4 + 24);
    swift_beginAccess();
    v13 = sub_1D7E69954(v11, v12, *(a2 + 80));
    if ((v14 & 1) == 0)
    {
      v15 = v13;
      swift_endAccess();
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        return;
      }

      swift_beginAccess();
      swift_isUniquelyReferenced_nonNull_native();
      v22 = *(a2 + 80);
      sub_1D7E63458();
      *(a2 + 80) = v22;
    }
  }

  swift_endAccess();
  if (qword_1EDBBC3C8 != -1)
  {
    swift_once();
  }

  v16 = sub_1D818FE34();
  __swift_project_value_buffer(v16, qword_1EDBC6120);
  sub_1D7E68F40(a4, v23);
  v17 = sub_1D818FE14();
  v18 = sub_1D81919E4();
  sub_1D7E69A3C(a4);
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v23[0] = v20;
    *v19 = 136315394;
    *(v19 + 4) = sub_1D7E1C3D8(*(a4 + 16), *(a4 + 24), v23);
    *(v19 + 12) = 1024;
    *(v19 + 14) = v5;
    _os_log_impl(&dword_1D7DFF000, v17, v18, "(%s) Presentation Required: %{BOOL}d", v19, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x1DA715D00](v20, -1, -1);
    MEMORY[0x1DA715D00](v19, -1, -1);
  }
}

uint64_t sub_1D7E69954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_1D7E11428(a1, a2);
  if (v4)
  {
    return OUTLINED_FUNCTION_3_19(v3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D7E699A8(uint64_t a1, uint64_t a2)
{
  sub_1D7E1D458(0, qword_1EDBB1158, type metadata accessor for SwipeActionState, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D7E69A6C()
{
  v1 = v0;
  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 applicationState];

  if (qword_1EDBBC3C8 != -1)
  {
    swift_once();
  }

  v4 = sub_1D818FE34();
  __swift_project_value_buffer(v4, qword_1EDBC6120);
  v5 = sub_1D818FE14();
  v6 = sub_1D81919E4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = v3;
    _os_log_impl(&dword_1D7DFF000, v5, v6, "App State During Processing:  %ld", v7, 0xCu);
    MEMORY[0x1DA715D00](v7, -1, -1);
  }

  if (v3 == 2)
  {
    v8 = sub_1D818FE14();
    v9 = sub_1D81919E4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "Attempted to process the presentation queue while app is in the background.  Suspending further processing. . .";
LABEL_20:
      _os_log_impl(&dword_1D7DFF000, v8, v9, v11, v10, 2u);
      MEMORY[0x1DA715D00](v10, -1, -1);
      goto LABEL_21;
    }

    goto LABEL_21;
  }

  if (*(v1 + 232) != 1)
  {
    v8 = sub_1D818FE14();
    v9 = sub_1D81919E4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "Attempted to process the presentation queue while keyboard is onscreen.  Suspending further processing. . .";
      goto LABEL_20;
    }

LABEL_21:

    LOBYTE(__dst[0]) = 1;
    sub_1D7E650E4();
    sub_1D818F184();
    return;
  }

  sub_1D818F154();
  if (LOBYTE(__dst[0]))
  {
    LOBYTE(__dst[0]) = 0;
    sub_1D7E650E4();
    sub_1D818F184();
  }

  swift_beginAccess();
  v12 = *(v1 + 40);
  if (*(v12 + 16))
  {
    memcpy(__dst, (v12 + 32), 0x61uLL);
    v13 = __dst[2];
    v14 = __dst[3];
    sub_1D7E68F40(__dst, v60);
    sub_1D7E68F40(__dst, v60);
    v15 = sub_1D818FE14();
    v16 = sub_1D81919E4();
    sub_1D7E69A3C(__dst);
    v58 = v13;
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v60[0] = v18;
      *v17 = 136315138;
      sub_1D8190DB4();
      v19 = sub_1D7E1C3D8(v13, v14, v60);

      *(v17 + 4) = v19;
      _os_log_impl(&dword_1D7DFF000, v15, v16, "Beginning processing for presentation operation (%s) . . .", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x1DA715D00](v18, -1, -1);
      MEMORY[0x1DA715D00](v17, -1, -1);
    }

    v20 = __dst[7];
    v21 = __dst[8];
    if ((__dst[6] & 1) != 0 || (v22 = __dst[5], __dst[5] >= *(v1 + 64)))
    {
      if ((__dst[8] & 1) == 0)
      {
        swift_beginAccess();
        v30 = sub_1D7E69954(v58, v14, *(v1 + 72));
        v32 = v31;
        swift_endAccess();
        v33 = (v32 & 1) != 0 ? 0 : v30;
        if (v33 >= v20)
        {
          sub_1D7E68F40(__dst, v60);
          v46 = sub_1D818FE14();
          v47 = sub_1D81919E4();
          sub_1D7E69A3C(__dst);
          if (os_log_type_enabled(v46, v47))
          {
            v48 = swift_slowAlloc();
            v49 = v20;
            v50 = swift_slowAlloc();
            v60[0] = v50;
            *v48 = 136315650;
            sub_1D8190DB4();
            sub_1D7E69A3C(__dst);
            v51 = sub_1D7E1C3D8(v58, v14, v60);

            *(v48 + 4) = v51;
            *(v48 + 12) = 2048;
            *(v48 + 14) = v49;
            *(v48 + 22) = 2048;
            *(v48 + 24) = v33;
            _os_log_impl(&dword_1D7DFF000, v46, v47, "Presentation operation (%s) has a maxPresentationAttempts value of %ld, but its attemptedPresentationCount is %ld. | This operation will NOT be presented.", v48, 0x20u);
            __swift_destroy_boxed_opaque_existential_1Tm(v50);
            MEMORY[0x1DA715D00](v50, -1, -1);
            MEMORY[0x1DA715D00](v48, -1, -1);
          }

          else
          {

            sub_1D7E69A3C(__dst);
          }

          swift_beginAccess();
          if (*(*(v1 + 40) + 16))
          {
            sub_1D7E6AF1C(0, 1);
            v56 = swift_endAccess();
LABEL_46:
            sub_1D7E69A6C(v56);
            return;
          }

          goto LABEL_49;
        }
      }

      v34 = __dst[0];
      v35 = __dst[1];
      swift_beginAccess();
      sub_1D7EE2804(v60, v34, v35, *(v1 + 32));
      swift_endAccess();
      v36 = v61;
      if (!v61)
      {
LABEL_50:
        __break(1u);
        return;
      }

      v37 = v62;
      __swift_project_boxed_opaque_existential_1(v60, v61);
      v38 = (*(v37 + 24))(v36, v37);
      __swift_destroy_boxed_opaque_existential_1Tm(v60);
      v39 = *(v1 + 64);
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (!v40)
      {
        *(v1 + 64) = v41;
        v42 = swift_allocObject();
        *(v42 + 16) = v1;
        memcpy((v42 + 24), __dst, 0x61uLL);

        v38(sub_1D7FCB638, v42);

        return;
      }

      __break(1u);
    }

    else
    {
      sub_1D7E68F40(__dst, v60);

      v23 = sub_1D818FE14();
      v24 = sub_1D81919E4();
      sub_1D7E69A3C(__dst);
      v57 = v14;
      if (os_log_type_enabled(v23, v24))
      {
        v25 = v20;
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v60[0] = v27;
        *v26 = 136315650;
        sub_1D8190DB4();
        v28 = sub_1D7E1C3D8(v58, v14, v60);

        *(v26 + 4) = v28;
        *(v26 + 12) = 2048;
        *(v26 + 14) = v22;
        *(v26 + 22) = 2048;
        *(v26 + 24) = *(v1 + 64);

        _os_log_impl(&dword_1D7DFF000, v23, v24, "Presentation operation (%s) has a maxPrecedingSameSessionPresentations value of %ld, but our presentationCount is %ld. | This operation will NOT be presented.", v26, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v27);
        MEMORY[0x1DA715D00](v27, -1, -1);
        v29 = v26;
        v20 = v25;
        MEMORY[0x1DA715D00](v29, -1, -1);
      }

      else
      {
      }

      swift_beginAccess();
      if (*(*(v1 + 40) + 16))
      {
        sub_1D7E6AF1C(0, 1);
        swift_endAccess();
        swift_beginAccess();
        v52 = sub_1D7E69954(v58, v57, *(v1 + 72));
        v54 = v53;
        swift_endAccess();
        if (v54)
        {
          v52 = 0;
        }

        if ((v21 & 1) == 0 && v52 < v20)
        {
          swift_beginAccess();
          swift_isUniquelyReferenced_nonNull_native();
          v59 = *(v1 + 72);
          sub_1D7E63458();
          *(v1 + 72) = v59;
          swift_endAccess();
          sub_1D7E69A3C(__dst);
          sub_1D818FC24();
          sub_1D7E0A1A8(0, &qword_1EDBBC7C0);
          v55 = sub_1D8191AB4();
          sub_1D818FAE4();

          return;
        }

        v56 = sub_1D7E69A3C(__dst);
        goto LABEL_46;
      }
    }

    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v43 = sub_1D818FE14();
  v44 = sub_1D81919E4();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_1D7DFF000, v43, v44, "All pending presentation operations have completed!", v45, 2u);
    MEMORY[0x1DA715D00](v45, -1, -1);
  }

  sub_1D7E7017C();
}

id sub_1D7E6A3F8()
{
  type metadata accessor for ImageView();
  OUTLINED_FUNCTION_0_108();
  return objc_msgSendSuper2(v0, v1);
}

uint64_t sub_1D7E6A42C()
{
  sub_1D7E0E7CC(0, &qword_1EDBBC3E0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
  sub_1D8190DB4();
  v0 = sub_1D818FA14();
  sub_1D7E6A548();
  sub_1D7E0EFD4(&qword_1EDBB33A8, 255, sub_1D7E6A548);
  v1 = sub_1D818FA94();

  return v1;
}

void sub_1D7E6A548()
{
  if (!qword_1EDBB33B0)
  {
    sub_1D7E0E7CC(255, &qword_1EDBBC3E0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
    v0 = sub_1D8191484();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBB33B0);
    }
  }
}

void sub_1D7E6A618(void *a1)
{
  v1 = a1;
  MastheadViewController.viewSafeAreaInsetsDidChange()();
}

Swift::Void __swiftcall MastheadViewController.viewSafeAreaInsetsDidChange()()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, sel_viewSafeAreaInsetsDidChange);
  sub_1D7E6ACB4();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  if ((sub_1D8190B24() & 1) != 0 && (*&v0[qword_1EDBB8858 + 8] != v4 || *&v0[qword_1EDBB8858 + 24] != v8))
  {
    v13 = 1;
    goto LABEL_9;
  }

  v9 = [v0 view];
  if (v9)
  {
    v10 = v9;
    [v9 safeAreaInsets];
    v12 = v11;

    if (v12 == v2)
    {
      goto LABEL_10;
    }

    memcpy(__dst, &v0[qword_1EDBB8830], 0x122uLL);
    if (sub_1D7E648D4(__dst) == 1)
    {
      goto LABEL_10;
    }

    v13 = 0;
LABEL_9:
    MastheadViewController.relayout(shouldBustLayoutCache:)(v13);
LABEL_10:
    v14 = &v0[qword_1EDBB8858];
    *v14 = v2;
    v14[1] = v4;
    *(v14 + 2) = v6;
    v14[3] = v8;
    return;
  }

  __break(1u);
}

uint64_t sub_1D7E6A788(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  swift_beginAccess();
  sub_1D7E6A9D8(a2 + 5, (a3 + 16));
  if (v3)
  {
    result = swift_endAccess();
    __break(1u);
    return result;
  }

  v7 = *(a2[5] + 16);
  if (v7 < v6)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1D7E6AF1C(v6, v7);
  swift_endAccess();
  if (qword_1EDBBC3C8 != -1)
  {
LABEL_8:
    swift_once();
  }

  v8 = sub_1D818FE34();
  __swift_project_value_buffer(v8, qword_1EDBC6120);

  v9 = sub_1D818FE14();
  v10 = sub_1D81919E4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24[0] = v12;
    *v11 = 136315138;
    v13 = sub_1D8190DB4();
    v14 = MEMORY[0x1DA713540](v13, &type metadata for PresentationOperation);
    v16 = v15;

    v17 = sub_1D7E1C3D8(v14, v16, v24);

    *(v11 + 4) = v17;
    _os_log_impl(&dword_1D7DFF000, v9, v10, "Completed required presentation filtering. Operations requiring presentation: %s.", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x1DA715D00](v12, -1, -1);
    MEMORY[0x1DA715D00](v11, -1, -1);
  }

  v18 = a2[20];
  v19 = a2[21];
  __swift_project_boxed_opaque_existential_1(a2 + 17, v18);
  swift_beginAccess();
  v20 = *(v19 + 64);
  v21 = sub_1D8190DB4();
  v22 = v20(v21, v18, v19);

  return v22;
}

void sub_1D7E6A9D8(uint64_t *a1, uint64_t *a2)
{
  v3 = a2;
  v5 = *a1;
  v6 = sub_1D7E6AD8C(*a1, a2);
  v8 = v6;
  if (!v2 && (v7 & 1) == 0)
  {
    v26 = a1;
    v9 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
LABEL_39:
      __break(1u);
    }

    else
    {
      swift_beginAccess();
      v27 = v3;
      while (1)
      {
        v10 = *(v5 + 16);
        if (v9 == v10)
        {
          break;
        }

        if (v9 >= v10)
        {
          __break(1u);
LABEL_32:
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
          goto LABEL_39;
        }

        v11 = v5 + 32;
        memcpy(__dst, (v5 + 32 + 104 * v9), 0x61uLL);
        v12 = *v3;
        if (*(*v3 + 16))
        {
          v28 = 104 * v9;
          v34 = v5;
          v13 = __dst[2];
          v14 = __dst[3];
          sub_1D81927E4();
          sub_1D7E68F40(__dst, __src);
          sub_1D8190DB4();
          sub_1D8190FF4();
          v15 = sub_1D8192824();
          v16 = ~(-1 << *(v12 + 32));
          do
          {
            v17 = v15 & v16;
            if (((*(v12 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
            {

              sub_1D7E69A3C(__dst);
              v3 = v27;
              v5 = v34;
              goto LABEL_27;
            }

            v18 = (*(v12 + 48) + 16 * v17);
            if (*v18 == v13 && v18[1] == v14)
            {
              break;
            }

            v20 = sub_1D8192634();
            v15 = v17 + 1;
          }

          while ((v20 & 1) == 0);

          sub_1D7E69A3C(__dst);
          if (v8 == v9)
          {
            v3 = v27;
            v5 = v34;
          }

          else
          {
            v5 = v34;
            if ((v8 & 0x8000000000000000) != 0)
            {
              goto LABEL_34;
            }

            v21 = *(v34 + 16);
            if (v8 >= v21)
            {
              goto LABEL_35;
            }

            v22 = 104 * v8;
            memcpy(v31, (v11 + 104 * v8), 0x61uLL);
            if (v9 >= v21)
            {
              goto LABEL_36;
            }

            memcpy(__src, (v11 + v28), 0x61uLL);
            sub_1D7E68F40(v31, v30);
            sub_1D7E68F40(__src, v30);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1D80E71C0();
              v5 = v25;
            }

            if (v8 >= *(v5 + 16))
            {
              goto LABEL_37;
            }

            v23 = v5 + 32;
            memcpy(v29, (v5 + 32 + v22), 0x61uLL);
            memcpy((v5 + 32 + v22), __src, 0x61uLL);
            sub_1D7E69A3C(v29);
            if (v9 >= *(v5 + 16))
            {
              goto LABEL_38;
            }

            memcpy(v30, (v23 + v28), 0x61uLL);
            memcpy((v23 + v28), v31, 0x61uLL);
            sub_1D7E69A3C(v30);
            v3 = v27;
            *v26 = v5;
          }

          v24 = __OFADD__(v8++, 1);
          if (v24)
          {
            goto LABEL_33;
          }
        }

LABEL_27:
        v24 = __OFADD__(v9++, 1);
        if (v24)
        {
          goto LABEL_32;
        }
      }
    }
  }
}

void sub_1D7E6ACB4()
{
  v1 = sub_1D7E62A24();
  if (v1)
  {
    v2 = v1;
    v3 = [v1 view];
    if (v3)
    {
      v4 = v3;
      [v3 safeAreaInsets];

LABEL_6:
      return;
    }

    __break(1u);
  }

  else
  {
    v5 = [v0 view];
    if (v5)
    {
      v4 = v5;
      [v5 safeAreaInsets];
      goto LABEL_6;
    }
  }

  __break(1u);
}

uint64_t sub_1D7E6AD8C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 16);
  swift_beginAccess();
  v4 = 0;
LABEL_2:
  if (v4 == v3)
  {
    return 0;
  }

  v5 = *a2;
  if (*(*a2 + 16))
  {
    v6 = a1 + 32 + 104 * v4;
    v7 = *(v6 + 16);
    v8 = *(v6 + 24);
    sub_1D81927E4();
    sub_1D8190DB4();
    sub_1D8190DB4();
    sub_1D8190DB4();
    sub_1D8190FF4();
    v9 = sub_1D8192824();
    v10 = ~(-1 << *(v5 + 32));
    while (1)
    {
      v11 = v9 & v10;
      if (((*(v5 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
      {
        break;
      }

      v12 = (*(v5 + 48) + 16 * v11);
      if (*v12 != v7 || v12[1] != v8)
      {
        v14 = sub_1D8192634();
        v9 = v11 + 1;
        if ((v14 & 1) == 0)
        {
          continue;
        }
      }

      ++v4;
      goto LABEL_2;
    }
  }

  return v4;
}

uint64_t sub_1D7E6AF1C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1D7E6AFFC(result, 1);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = (v9 + 104 * v5);
  OUTLINED_FUNCTION_11_0();
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = sub_1D7E6B11C((v9 + 104 * a2), v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_1D7E6B014()
{
  OUTLINED_FUNCTION_32_0();
  if ((v5 & 1) == 0 || (OUTLINED_FUNCTION_2_16(), v6 == v7))
  {
LABEL_6:
    OUTLINED_FUNCTION_24_2();
    if (v4)
    {
      v8 = OUTLINED_FUNCTION_29_1();
      sub_1D7E1B5C8(v8, v9, v2, v10);
      v11 = swift_allocObject();
      v12 = _swift_stdlib_malloc_size(v11);
      OUTLINED_FUNCTION_30_4(v12);
      if (v3)
      {
LABEL_8:
        v13 = OUTLINED_FUNCTION_25_1();
        v1(v13);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v3)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_27_1();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_12_4();
  if (!v6)
  {
    OUTLINED_FUNCTION_1_10();
    goto LABEL_6;
  }

  __break(1u);
}

char *sub_1D7E6B11C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[104 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_143(a3, result, 104 * a2);
  }

  return result;
}

uint64_t sub_1D7E6B440()
{
  OUTLINED_FUNCTION_9_14();
  v1 = v0[290];

  sub_1D7E6B4FC(v1, v0 + 286);
  v0[295] = v0[286];
  OUTLINED_FUNCTION_62();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1D7E6B4FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v5 = *(*(a1 + *(*a1 + 144)) + 24);
  ObjectType = swift_getObjectType();
  v7 = *(v5 + 8);
  swift_unknownObjectRetain();
  v7(__src, ObjectType, v5);
  swift_unknownObjectRelease();
  v8 = sub_1D7E6B5F4(__src);
  if (v3)
  {
    memcpy(v11, __src, 0x235uLL);
    return sub_1D7E4C1A0(v11);
  }

  else
  {
    v10 = v8;
    memcpy(v11, __src, 0x235uLL);
    result = sub_1D7E4C1A0(v11);
    *a2 = v10;
  }

  return result;
}

uint64_t sub_1D7E6B5F4(void *__src)
{
  memcpy(__dst, __src, 0x235uLL);
  v3 = __dst[16];
  if ([__dst[16] horizontalSizeClass] && objc_msgSend(v3, sel_verticalSizeClass))
  {
    memcpy(v8, __src, 0x235uLL);
    sub_1D7E222B8(__dst, v7);
    v4 = sub_1D7E6B704(v8);
    type metadata accessor for BlueprintLayoutCollectionPipelineProcessorState();
    v1 = swift_allocObject();
    memcpy((v1 + 16), __dst, 0x235uLL);
    *(v1 + 584) = v4;
  }

  else
  {
    sub_1D7FE814C();
    swift_allocError();
    *v5 = 4;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    *(v5 + 24) = 0;
    *(v5 + 32) = 4;
    swift_willThrow();
  }

  return v1;
}

uint64_t sub_1D7E6B704(uint64_t a1)
{
  if (*(v1 + *(*v1 + 160)))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = *(a1 + 384);
  v4 = *(a1 + 392);
  v15 = *(a1 + 376);
  v14 = *(a1 + 368);
  v12 = *(a1 + 16);
  v13 = *(a1 + 8);
  v16[0] = *a1;
  v16[1] = v13;
  v16[2] = v12;
  memcpy(v17, (a1 + 24), sizeof(v17));
  v18 = v14;
  v19 = v15;
  v20 = v5;
  v21 = v4;
  memcpy(v22, (a1 + 400), sizeof(v22));
  v6 = sub_1D7E9EA44(v16);
  sub_1D7E9EBD8(0, &qword_1EDBB2C80, &unk_1F5306D08, MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *&v8 = v13;
  *(&v8 + 1) = v12;
  *&v9 = v14;
  *(&v9 + 1) = v15;
  *(v7 + 32) = v8;
  *(v7 + 48) = v9;
  *(v7 + 16) = xmmword_1D819FAB0;
  *(v7 + 64) = v5;
  *(v7 + 72) = v4;
  v10 = sub_1D7E9EC28(v7, v6);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v2 = sub_1D7FFBA7C(sub_1D808C6B4, v1, v10);

  return v2;
}

uint64_t sub_1D7E6B8A4()
{
  OUTLINED_FUNCTION_6();
  [objc_opt_self() setCurrentTraitCollection_];
  swift_task_alloc();
  OUTLINED_FUNCTION_35_2();
  *(v0 + 2368) = v1;
  *v1 = v2;
  v1[1] = sub_1D7E7F800;
  v3 = OUTLINED_FUNCTION_14_35();

  return sub_1D7E6B950(v3, v4, v5, v6);
}

uint64_t sub_1D7E6B950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[577] = a4;
  v5[578] = v4;
  v5[576] = a3;
  v5[575] = a2;
  v5[574] = a1;
  v5[579] = *v4;
  v6 = *v4;
  v5[580] = *v4;
  v5[581] = *(v6 + 112);
  v5[582] = *(v6 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedConformanceWitness();
  v5[570] = AssociatedTypeWitness;
  v5[571] = v8;
  v5[572] = AssociatedConformanceWitness;
  v5[573] = v10;
  v11 = type metadata accessor for Blueprint();
  v5[583] = v11;
  v12 = *(v11 - 8);
  v5[584] = v12;
  v5[585] = *(v12 + 64);
  v5[586] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D7E6BB60, 0, 0);
}

uint64_t sub_1D7E6BB60()
{
  OUTLINED_FUNCTION_9_14();
  v1 = *(v0[576] + 592);
  v0[587] = v1;
  if (sub_1D7E3A3F4(4, v1))
  {
    v2 = v0[576];
    v3 = sub_1D81919E4();
    v4._object = 0x80000001D81D2C20;
    v4._countAndFlagsBits = 0xD000000000000028;
    BlueprintPipelineRecorder.log(_:type:)(v4, v3);
    [*(v2 + 600) cancelAllOperations];
  }

  OUTLINED_FUNCTION_25_16(v0 + 73);
  OUTLINED_FUNCTION_25_16(v0 + 144);
  sub_1D7E222B8((v0 + 73), (v0 + 215));
  v5 = swift_task_alloc();
  v0[588] = v5;
  *v5 = v0;
  v5[1] = sub_1D7E7EE40;
  v6 = v0[576];
  v7 = v0[575];

  return sub_1D7E6BC78(v7, v0 + 144, v6);
}

uint64_t sub_1D7E6BC78(uint64_t a1, const void *a2, uint64_t a3)
{
  v4[643] = v3;
  v4[642] = a3;
  v4[641] = a1;
  v5 = *v3;
  v4[644] = *v3;
  v4[645] = v5[13];
  v4[646] = v5[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[647] = AssociatedTypeWitness;
  v7 = swift_getAssociatedTypeWitness();
  v4[648] = v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4[649] = AssociatedConformanceWitness;
  v9 = AssociatedConformanceWitness;
  v23 = AssociatedConformanceWitness;
  v22 = swift_getAssociatedConformanceWitness();
  v4[650] = v22;
  v4[610] = AssociatedTypeWitness;
  v4[611] = v7;
  v4[612] = v9;
  v4[613] = v22;
  v10 = type metadata accessor for BlueprintLayoutSection();
  v4[651] = v10;
  v4[652] = *(v10 - 8);
  v4[653] = swift_task_alloc();
  v4[654] = v5[14];
  v4[655] = v5[11];
  v11 = swift_getAssociatedTypeWitness();
  v12 = swift_getAssociatedTypeWitness();
  v13 = swift_getAssociatedConformanceWitness();
  v14 = swift_getAssociatedConformanceWitness();
  v4[614] = v11;
  v4[615] = v12;
  v4[616] = v13;
  v4[617] = v14;
  v15 = type metadata accessor for BlueprintSection();
  v4[656] = v15;
  v4[657] = *(v15 - 8);
  v4[658] = swift_task_alloc();
  v4[659] = swift_getTupleTypeMetadata2();
  sub_1D8191E84();
  v4[660] = swift_task_alloc();
  v4[618] = v11;
  v4[619] = v12;
  v4[620] = v13;
  v4[621] = v14;
  v16 = type metadata accessor for Blueprint();
  v4[661] = v16;
  v4[622] = AssociatedTypeWitness;
  v4[623] = v7;
  v4[624] = v23;
  v4[625] = v22;
  v17 = type metadata accessor for BlueprintLayout();
  v4[662] = v17;
  WitnessTable = swift_getWitnessTable();
  v4[663] = WitnessTable;
  v19 = swift_getWitnessTable();
  v4[664] = v19;
  v4[626] = v16;
  v4[627] = v17;
  v4[628] = WitnessTable;
  v4[629] = v19;
  v4[665] = sub_1D81921E4();
  v4[666] = swift_task_alloc();
  v4[630] = v16;
  v4[631] = v17;
  v4[632] = WitnessTable;
  v4[633] = v19;
  v20 = sub_1D81921D4();
  v4[667] = v20;
  v4[668] = *(v20 - 8);
  v4[669] = swift_task_alloc();
  memcpy(v4 + 468, a2, 0x235uLL);

  return MEMORY[0x1EEE6DFA0](sub_1D7E6C25C, 0, 0);
}

BOOL BlueprintCollectionViewLayoutTransition.isTransitioning.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_0_136(a1, &qword_1EDBB4678);
  OUTLINED_FUNCTION_50(v2);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v11 - v4;
  v6 = OBJC_IVAR____TtC5TeaUI39BlueprintCollectionViewLayoutTransition_state;
  OUTLINED_FUNCTION_4_57();
  sub_1D7E6C3B4(v1 + v6, v5);
  v7 = type metadata accessor for BlueprintCollectionViewLayoutTransition.State(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v7);
  if (EnumTagSinglePayload != 1)
  {
    sub_1D818E794();
    OUTLINED_FUNCTION_8();
    (*(v9 + 8))(v5);
  }

  return EnumTagSinglePayload != 1;
}

uint64_t sub_1D7E6C25C()
{
  v1 = *(v0 + 5144);
  v2 = *(v0 + 5136);
  v3 = *(v0 + 5128);
  v4 = *(v0 + 3744);
  v5 = swift_task_alloc();
  *(v0 + 5360) = v5;
  v5[2] = v1;
  v5[3] = v3;
  v5[4] = v0 + 3744;
  v5[5] = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_35_2();
  *(v0 + 5368) = v6;
  *v6 = v7;
  v6[1] = sub_1D7E75C14;
  v8 = *(v0 + 5296);
  if (v4 == 2)
  {
    v9 = 7;
  }

  else
  {
    v9 = 5;
  }

  if (v4 == 2)
  {
    v10 = 8;
  }

  else
  {
    v10 = 6;
  }

  return sub_1D7E554B8(v0 + 2528, v9, v10, &unk_1D81B59A0, v5, v8);
}

uint64_t sub_1D7E6C36C(uint64_t a1, uint64_t a2)
{
  sub_1D7E319A8();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1D7E6C3B4(uint64_t a1, uint64_t a2)
{
  sub_1D7E31954(0, &qword_1EDBB4678, type metadata accessor for BlueprintCollectionViewLayoutTransition.State);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7E6C434(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  swift_task_alloc();
  OUTLINED_FUNCTION_35_2();
  *(v2 + 16) = v8;
  *v8 = v9;
  v8[1] = sub_1D7E5B0D8;

  return sub_1D7E6C4F0(a1, v4, v5, v7, v6);
}

uint64_t sub_1D7E6C4F0(uint64_t a1, uint64_t *a2, uint64_t a3, void *__src, uint64_t a5)
{
  v9 = *a2;
  memcpy((v5 + 16), __src, 0x235uLL);
  v10 = *(v9 + 112);
  v11 = *(v9 + 88);
  v14 = (*(v10 + 72) + **(v10 + 72));
  v12 = swift_task_alloc();
  *(v5 + 584) = v12;
  *v12 = v5;
  v12[1] = sub_1D7E75710;

  return v14(a1, a3, v5 + 16, a5, v11, v10);
}

uint64_t sub_1D7E6C688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 - 8);
  (*(v5 + 16))(a2, v2, a1);
  swift_getWitnessTable();
  v6 = *(sub_1D8192344() + 36);
  Blueprint.startIndex.getter();
  v8 = v7;
  result = (*(v5 + 8))(v2, a1);
  *(a2 + v6) = v8;
  return result;
}

double sub_1D7E6C774(uint64_t a1)
{
  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 120) = 512;
  return result;
}

double BlueprintLayoutSection.init(descriptor:items:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X2>, unint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t a5@<X8>)
{
  OUTLINED_FUNCTION_2();
  v11 = v10;
  (*(v12 + 16))(a5, a1);
  v16.n128_u64[0] = a2;
  v16.n128_u64[1] = a3;
  v13 = type metadata accessor for BlueprintLayoutSection();
  OUTLINED_FUNCTION_2_89(v13);
  *v14 = MEMORY[0x1E69E7CC0];
  *(v14 + 8) = 0x80;
  sub_1D8190DB4();
  BlueprintLayoutSectionViewState.init<A>(items:)();
  (*(v11 + 8))(a1, a2);
  *&result = OUTLINED_FUNCTION_1_96(a4, v16).n128_u64[0];
  return result;
}

uint64_t BlueprintLayoutSectionViewState.init<A>(items:)()
{
  OUTLINED_FUNCTION_7_11();
  type metadata accessor for BlueprintLayoutItem();
  sub_1D8191414();
  OUTLINED_FUNCTION_5_4();
  sub_1D8190DB4();
  OUTLINED_FUNCTION_1_14();
  OUTLINED_FUNCTION_6_6();
  v2 = sub_1D8191414();

  v3 = OUTLINED_FUNCTION_0_7();
  v7 = OUTLINED_FUNCTION_10_12(v3, v4, v5, &type metadata for BlueprintLayoutItemViewState, MEMORY[0x1E69E73E0], v3, MEMORY[0x1E69E7410], v6, v9);

  *v0 = v1;
  v0[1] = v2;
  v0[2] = v7;
  return result;
}

{
  OUTLINED_FUNCTION_7_11();
  type metadata accessor for BlueprintLayoutItem();
  sub_1D8191414();
  OUTLINED_FUNCTION_5_4();
  sub_1D8190DB4();
  OUTLINED_FUNCTION_1_14();
  OUTLINED_FUNCTION_6_6();
  v2 = sub_1D8191414();

  v3 = OUTLINED_FUNCTION_0_7();
  v7 = OUTLINED_FUNCTION_10_12(v3, v4, v5, &type metadata for BlueprintLayoutItemViewState, MEMORY[0x1E69E73E0], v3, MEMORY[0x1E69E7410], v6, v9);

  *v0 = v1;
  v0[1] = v2;
  v0[2] = v7;
  return result;
}

void sub_1D7E6C9D4(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        return;
      case 2:
        *&a1[v8] = v14;
        return;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        return;
      default:
        return;
    }
  }

  switch(v12)
  {
    case 1:
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_24;
    case 2:
      *&a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_24;
    case 3:
LABEL_37:
      __break(1u);
      JUMPOUT(0x1D7E6CBD8);
    case 4:
      *&a1[v8] = 0;
      goto LABEL_23;
    default:
LABEL_23:
      if (a2)
      {
LABEL_24:

        __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
      }

      return;
  }
}

uint64_t sub_1D7E6CC00(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

double BlueprintLayoutFrameAttributesType.height.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))();

  return CGRectGetHeight(*&v2);
}

uint64_t sub_1D7E6CDC0(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = a8;
  v44 = a1;
  v45 = a2;
  OUTLINED_FUNCTION_2();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_2();
  v46 = v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2();
  v48 = v14;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v33 - v17;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13_2();
  v42 = v19;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2();
  v36 = v21;
  v37 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v33 - v22;
  v24 = sub_1D8191774();
  if (!v24)
  {
    return sub_1D81913C4();
  }

  v47 = v24;
  v51 = sub_1D81922E4();
  v38 = sub_1D81922F4();
  sub_1D8192294();
  result = sub_1D8191724();
  if ((v47 & 0x8000000000000000) == 0)
  {
    v33 = v11;
    v34 = a5;
    v26 = 0;
    v39 = (v48 + 16);
    v40 = v48 + 8;
    v41 = v8;
    while (!__OFADD__(v26, 1))
    {
      v48 = v26 + 1;
      v27 = sub_1D81918F4();
      (*v39)(v18);
      v27(v50, 0);
      v28 = v49;
      v44(v18, v46);
      if (v28)
      {
        v31 = OUTLINED_FUNCTION_9_3();
        v32(v31);
        (*(v36 + 8))(v23, v37);

        return (*(v33 + 32))(v35, v46, v34);
      }

      v49 = 0;
      v29 = OUTLINED_FUNCTION_9_3();
      v30(v29);
      sub_1D81922D4();
      result = sub_1D81917C4();
      ++v26;
      if (v48 == v47)
      {
        (*(v36 + 8))(v23, v37);
        return v51;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1D7E6D194(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  MastheadViewController.scrollViewDidScroll(_:)(v4);
}

void sub_1D7E6D248(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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
  v10 = ((((v9 + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((v9 + 23) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (a2 > v8)
  {
    if (((((v9 + 23) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((v9 + 23) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((((v9 + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        return;
      case 2:
        *&a1[v10] = v15;
        return;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v10] = v15;
        return;
      default:
        return;
    }
  }

  switch(v14)
  {
    case 1:
      a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    case 2:
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    case 3:
LABEL_42:
      __break(1u);
      JUMPOUT(0x1D7E6D42CLL);
    case 4:
      *&a1[v10] = 0;
      goto LABEL_31;
    default:
LABEL_31:
      if (a2)
      {
LABEL_32:
        if (v7 < 0x7FFFFFFF)
        {
          v17 = (&a1[v9 + 23] & 0xFFFFFFFFFFFFFFF8);
          if ((a2 & 0x80000000) != 0)
          {
            v17[1] = 0;
            v17[2] = 0;
            *v17 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v17[2] = (a2 - 1);
          }
        }

        else
        {

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }
      }

      return;
  }
}

Swift::Void __swiftcall MastheadViewController.scrollViewDidScroll(_:)(UIScrollView *a1)
{
  __swift_project_boxed_opaque_existential_1((v1 + qword_1EDBB8880), *(v1 + qword_1EDBB8880 + 24));
  v3 = OUTLINED_FUNCTION_11_0();
  v4(v3);

  sub_1D805D6DC(a1);
}

uint64_t sub_1D7E6D4D4(_DWORD *a1, unsigned int a2, uint64_t a3)
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
    return 0;
  }

  if (v7 < a2)
  {
    v8 = ((((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8;
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
        v14 = *(a1 + v8);
        if (!v14)
        {
          break;
        }

        goto LABEL_22;
      case 2:
        v14 = *(a1 + v8);
        if (v14)
        {
          goto LABEL_22;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x1D7E6D618);
      case 4:
        v14 = *(a1 + v8);
        if (!v14)
        {
          break;
        }

LABEL_22:
        v16 = v14 - 1;
        if (v10)
        {
          v16 = 0;
          LODWORD(v10) = *a1;
        }

        return v7 + (v10 | v16) + 1;
      default:
        break;
    }
  }

  if (v5 >= 0x7FFFFFFF)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v17 = *(((a1 + v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

unint64_t sub_1D7E6D62C(uint64_t a1)
{
  result = sub_1D7E6D830();
  *(a1 + 8) = result;
  return result;
}

id sub_1D7E6D654()
{
  v1 = v0;
  if (v0[qword_1EDBB8900 + 16])
  {
    v2 = -1.79769313e308;
  }

  else
  {
    v2 = *&v0[qword_1EDBB8900 + 8];
  }

  v3 = MastheadViewController.contentHeight.getter();
  result = [v0 view];
  if (result)
  {
    v5 = result;
    [result safeAreaInsets];
    v7 = v6;

    v8 = v7 - v3;
    v9 = qword_1EDBB88D0;
    result = swift_beginAccess();
    if (v2 < v8 != v1[v9])
    {
      v10 = &v1[qword_1EDBB87F8];
      swift_beginAccess();
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v11 = *(v10 + 1);
        ObjectType = swift_getObjectType();
        (*(v11 + 8))(v1, &protocol witness table for MastheadViewController<A>, v2 < v8, ObjectType, v11);
        result = swift_unknownObjectRelease();
      }
    }

    v1[v9] = v2 < v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7E6D7B8(char a1, char a2)
{
  v3 = sub_1D7E51D20(a1);
  v5 = v4;
  if (v3 == sub_1D7E51D20(a2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_10_10();
  }

  return v8 & 1;
}

unint64_t sub_1D7E6D830()
{
  result = qword_1EDBAFE60;
  if (!qword_1EDBAFE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBAFE60);
  }

  return result;
}

double MastheadViewController.contentHeight.getter()
{
  [*(v0 + qword_1EDBB88A0) frame];

  return CGRectGetHeight(*&v1);
}

CGSize __swiftcall BlueprintCellAccessory.accessorySize(contentSizeCategory:)(__C::UIContentSizeCategory contentSizeCategory)
{
  v2 = sub_1D7E6DB24(v1, contentSizeCategory._rawValue, sub_1D7E6F224);
  result.height = v3;
  result.width = v2;
  return result;
}

double BlueprintLayoutOptions.size(of:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v1 = OUTLINED_FUNCTION_109();
  *&result = *&BlueprintCellAccessory.accessorySize(contentSizeCategory:)(v1);
  return result;
}

TeaUI::CellReorderControlAccessory __swiftcall CellReorderControlAccessory.init()()
{
  OUTLINED_FUNCTION_2_138();
  OUTLINED_FUNCTION_0_209(v0);
  result.systemSymbolName._object = v4;
  result.systemSymbolName._countAndFlagsBits = v3;
  result.identifier._object = v2;
  result.identifier._countAndFlagsBits = v1;
  return result;
}

id sub_1D7E6D994(void *a1)
{
  v1 = a1;
  sub_1D7E6DCE8();
  v3 = v2;

  if (v3)
  {
    sub_1D7E0A1A8(0, &qword_1EDBB3020);
    v4 = sub_1D8191304();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_1D7E6DA44(uint64_t a1, uint64_t a2, char a3, double a4, double a5)
{
  v6 = v5;
  v12 = type metadata accessor for BlueprintInfiniteScroll();
  v13 = OUTLINED_FUNCTION_50(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_15();
  v16 = (v15 - v14);
  if ((a3 & 1) == 0)
  {
    sub_1D818F154();
    v17 = *v16;
    sub_1D7E306A8(v16);
    if (v17 == 1)
    {
      v18 = *&a2 <= a5;
      if (*&a2 < a5)
      {
LABEL_4:
        v19 = 0;
LABEL_8:
        *(v6 + OBJC_IVAR____TtC5TeaUI30BlueprintInfiniteScrollManager_direction) = v19;
        return;
      }
    }

    else
    {
      v18 = *&a1 <= a4;
      if (*&a1 < a4)
      {
        goto LABEL_4;
      }
    }

    if (v18)
    {
      return;
    }

    v19 = 1;
    goto LABEL_8;
  }
}

double sub_1D7E6DB24(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = sub_1D818EF94();
  v8 = v7;
  v9 = sub_1D8190F14();
  v11 = v10;
  v18[0] = v6;
  v18[1] = v8;
  sub_1D8190DB4();
  MEMORY[0x1DA713260](v9, v11);

  if (qword_1EDBB0740 != -1)
  {
    v12 = swift_once();
  }

  v13 = qword_1EDBB0748;
  MEMORY[0x1EEE9AC00](v12);
  os_unfair_lock_lock((v13 + 24));
  sub_1D7E6EB40(v13 + 16, v18);
  os_unfair_lock_unlock((v13 + 24));
  if (v19)
  {
    v14 = a3(a1, a2);
    v16 = v15;
    MEMORY[0x1EEE9AC00](v14);
    os_unfair_lock_lock((v13 + 24));
    sub_1D7E70994((v13 + 16));
    os_unfair_lock_unlock((v13 + 24));
  }

  else
  {
    v16 = *v18;
  }

  return v16;
}

void sub_1D7E6DCE8()
{
  OUTLINED_FUNCTION_70();
  CGRectIntegral(v40);
  OUTLINED_FUNCTION_9_0();
  sub_1D7E6E120();
  OUTLINED_FUNCTION_8_0();
  sub_1D7E6E18C();
  OUTLINED_FUNCTION_16_1();

  if (v0)
  {
    v4 = *(v0 + 16);
    __src[0] = MEMORY[0x1E69E7CC0];
    sub_1D7E36AB8(v4);
    OUTLINED_FUNCTION_50_7();
    for (i = 0; v1 != i; ++i)
    {
      if (v2)
      {
        v6 = MEMORY[0x1DA714420](i, v4);
      }

      else
      {
        if (i >= *(v3 + 16))
        {
          goto LABEL_38;
        }

        v6 = *(v4 + 8 * i + 32);
      }

      v7 = v6;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      [v6 frame];
      if (OUTLINED_FUNCTION_48_8(v8, v9, v10, v11))
      {
      }

      else
      {
        sub_1D8192274();
        sub_1D81922B4();
        sub_1D81922C4();
        sub_1D8192284();
      }
    }

    if ((__src[0] & 0x8000000000000000) == 0 && (__src[0] & 0x4000000000000000) == 0)
    {
      sub_1D8190DB4();
      sub_1D81926A4();
      sub_1D7E0A1A8(0, &qword_1EDBB3020);

      goto LABEL_16;
    }

LABEL_41:
    sub_1D7E0A1A8(0, &qword_1EDBB3020);
    sub_1D8190DB4();
    sub_1D81923B4();

    goto LABEL_42;
  }

  sub_1D7E6E234(v39);
  sub_1D7E67328(__src);
  v33 = *&v39[1];
  v34 = *v39;
  v12 = *&v39[2];
  v13 = *&v39[3];
  v14 = *&v39[4];
  v15 = *&v39[5];
  memcpy(__dst, &__src[5], sizeof(__dst));
  sub_1D7E6EB58(&__src[5], v35);
  sub_1D7E6ED1C();
  memcpy(v36, __dst, 0x236uLL);
  sub_1D7E6F268(v36);
  memcpy(v35, __src, sizeof(v35));
  v16 = OUTLINED_FUNCTION_8_0();
  sub_1D7EAED38(v17, v18, v16, v19, v20, v21, v34, v33, v12, v13, v14, v15);
  v23 = v22;
  sub_1D7E598FC(__src);
  if (v23)
  {
    if (*(v23 + 72))
    {
      sub_1D7E6E120();
      swift_retain_n();
      OUTLINED_FUNCTION_8_0();
      sub_1D7EAFCA0(v24);
    }

    else
    {
    }

    v25 = *(v23 + 16);
    v35[0] = MEMORY[0x1E69E7CC0];
    sub_1D7E36AB8(v25);
    OUTLINED_FUNCTION_50_7();
    for (j = 0; v1 != j; ++j)
    {
      if (v2)
      {
        v27 = MEMORY[0x1DA714420](j, v25);
      }

      else
      {
        if (j >= *(v3 + 16))
        {
          goto LABEL_40;
        }

        v27 = *(v25 + 8 * j + 32);
      }

      v28 = v27;
      if (__OFADD__(j, 1))
      {
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      [v27 frame];
      if (OUTLINED_FUNCTION_48_8(v29, v30, v31, v32))
      {
      }

      else
      {
        sub_1D8192274();
        sub_1D81922B4();
        sub_1D81922C4();
        sub_1D8192284();
      }
    }

    if ((v35[0] & 0x8000000000000000) != 0 || (v35[0] & 0x4000000000000000) != 0)
    {
      sub_1D7E0A1A8(0, &qword_1EDBB3020);
      sub_1D8190DB4();
      sub_1D81923B4();

LABEL_42:

      goto LABEL_18;
    }

    sub_1D8190DB4();
    sub_1D81926A4();
    sub_1D7E0A1A8(0, &qword_1EDBB3020);

LABEL_16:
  }

LABEL_18:
  OUTLINED_FUNCTION_72();
}

uint64_t sub_1D7E6E18C()
{
  OUTLINED_FUNCTION_19_20();
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (*(v1 + 16) && (OUTLINED_FUNCTION_80(), v2 = sub_1D7EAFE50(), (v3 & 1) != 0))
  {
    v4 = *(*(v1 + 56) + 8 * v2);
  }

  else
  {
    v4 = 0;
  }

  swift_endAccess();
  return v4;
}

void sub_1D7E6E234(uint64_t a1@<X8>)
{
  v7 = [v1 collectionView];
  if (!v7)
  {
    MinY = *MEMORY[0x1E69DDCE0];
    v3 = *(MEMORY[0x1E69DDCE0] + 8);
    v4 = *(MEMORY[0x1E69DDCE0] + 16);
    v5 = *(MEMORY[0x1E69DDCE0] + 24);
    v16 = 0;
    v24 = 0.0;
    goto LABEL_11;
  }

  v8 = v7;
  if (![v7 tu_deriveVisibleBoundsFromContainingScrollView])
  {
LABEL_8:
    [v8 contentOffset];
    v16 = v25;
    v24 = v26;
    sub_1D7E6E66C(v8, 0, 1);
    OUTLINED_FUNCTION_14_26();

    goto LABEL_11;
  }

  v8 = v8;
  v9 = [v8 superview];
  v10 = sub_1D8043A7C(v9);

  if (!v10)
  {

    goto LABEL_8;
  }

  [v8 bounds];
  OUTLINED_FUNCTION_9_0();

  v11 = OUTLINED_FUNCTION_8_0();
  [v12 v13];
  OUTLINED_FUNCTION_14_26();
  v14 = v10;
  [v14 contentOffset];
  v16 = v15;
  [v14 contentOffset];
  v18 = v17;

  v30.origin.x = MinY;
  v30.origin.y = v3;
  v30.size.width = v4;
  v30.size.height = v5;
  MinY = CGRectGetMinY(v30);
  [v14 collectionViewLayout];
  sub_1D7E0A1A8(0, &qword_1EDBB3098);
  OUTLINED_FUNCTION_113();
  sub_1D8041FDC();
  if (swift_dynamicCast())
  {
    v19 = *(&v28 + 1);
    v20 = v29;
    __swift_project_boxed_opaque_existential_1(&v27, *(&v28 + 1));
    v21 = (*(v20 + 8))(v19, v20);
    v23 = v22;
    __swift_destroy_boxed_opaque_existential_1Tm(&v27);
  }

  else
  {
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    sub_1D7E54AFC(&v27, &qword_1EDBAFE58, sub_1D8041FDC);
    v21 = 0;
    v23 = 1;
  }

  v24 = v18 - MinY;
  sub_1D7E6E66C(v8, v21, v23 & 1);
  OUTLINED_FUNCTION_14_26();

LABEL_11:
  *a1 = v16;
  *(a1 + 8) = v24;
  *(a1 + 16) = MinY;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
}

uint64_t sub_1D7E6E4C4()
{
  type metadata accessor for CGSize();
  v0 = sub_1D8190D94();
  sub_1D7E6E604();
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v0;
  qword_1EDBB0748 = result;
  return result;
}

void sub_1D7E6E530()
{
  if (!qword_1EDBAE660)
  {
    type metadata accessor for CGSize();
    v0 = sub_1D8190E14();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBAE660);
    }
  }
}

void sub_1D7E6E604()
{
  if (!qword_1EDBAE3E0)
  {
    sub_1D7E6E530();
    type metadata accessor for os_unfair_lock_s();
    v0 = sub_1D8192244();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBAE3E0);
    }
  }
}

double sub_1D7E6E66C(void *a1, uint64_t a2, char a3)
{
  v5 = [a1 refreshControl];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 isRefreshing];
  }

  else
  {
    v7 = 0;
  }

  if ((a3 & 1) == 0)
  {
    goto LABEL_9;
  }

  v8 = sub_1D7E6E97C();
  if ((v9 & 1) == 0)
  {
    a2 = v8;
LABEL_9:
    v11 = *&a2;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_52_2();
  v11 = v10;
  if (!v7)
  {
    return v11;
  }

  v11 = v10 + -60.0;
LABEL_10:
  OUTLINED_FUNCTION_52_2();
  OUTLINED_FUNCTION_52_2();
  OUTLINED_FUNCTION_52_2();
  return v11;
}

Swift::Void __swiftcall BlueprintViewportMonitor.scrollViewDidScroll(_:)(UIScrollView *a1)
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_17_34();
  OUTLINED_FUNCTION_9();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_140();
  if ((v1[OBJC_IVAR____TtC5TeaUI24BlueprintViewportMonitor_options] & 1) == 0)
  {
    goto LABEL_17;
  }

  v24 = 0;
  sub_1D7E11E0C();
  v7 = v1;
  v23 = v2;
  *v3 = sub_1D8191AB4();
  v8 = OUTLINED_FUNCTION_4_82();
  v9(v8);
  v10 = sub_1D8190CA4();
  v11 = v5 + 8;
  v12 = OUTLINED_FUNCTION_4_8();
  v13(v12);
  if (v10)
  {
    v14 = OBJC_IVAR____TtC5TeaUI24BlueprintViewportMonitor_observers;
    OUTLINED_FUNCTION_8_4();
    v15 = *&v7[v14];
    if (!sub_1D7E36AB8(v15))
    {

LABEL_16:

LABEL_17:
      OUTLINED_FUNCTION_100();
      return;
    }

    OUTLINED_FUNCTION_14_40();
    if (v16 == v17)
    {
      sub_1D8190DB4();
      v18 = 0;
      do
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          OUTLINED_FUNCTION_12_44();
          v11 = v19;
        }

        else
        {
          OUTLINED_FUNCTION_5_69();
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          v20 = *(v11 + 24);
          ObjectType = swift_getObjectType();
          if ((*(v20 + 16))(ObjectType, v20))
          {
            v22 = sub_1D80D3D1C(&v24, v23);
            (*(v20 + 24))(v7, v22, ObjectType, v20);
            swift_unknownObjectRelease();
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }

        v18 = (v18 + 1);
      }

      while (v3 != v18);

      goto LABEL_16;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1D7E6E97C()
{
  OUTLINED_FUNCTION_3_7();
  v2 = v0 + *(v1 + 120);
  OUTLINED_FUNCTION_8_4();
  return *v2;
}

uint64_t OUTLINED_FUNCTION_51_3()
{

  return BlueprintItem.identifier.getter();
}

uint64_t OUTLINED_FUNCTION_51_5()
{

  return swift_dynamicCast();
}

void *OUTLINED_FUNCTION_51_7(void *a1)
{

  return memcpy(a1, (v1 + v2), 0x4E8uLL);
}

uint64_t *OUTLINED_FUNCTION_51_9@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 1000) = a1;

  return __swift_allocate_boxed_opaque_existential_0((v1 + 968));
}

void OUTLINED_FUNCTION_51_10(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t sub_1D7E6EBB4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *result;
  v6 = 0uLL;
  if (*(*result + 16))
  {
    result = sub_1D7E11428(a2, a3);
    if (v7)
    {
      v8 = 0;
      v6 = *(*(v5 + 56) + 16 * result);
    }

    else
    {
      v8 = 1;
      v6 = 0uLL;
    }
  }

  else
  {
    v8 = 1;
  }

  *a4 = v6;
  *(a4 + 16) = v8;
  return result;
}

id sub_1D7E6EC2C(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for CardSplitViewController();
  objc_msgSendSuper2(&v4, sel_viewDidAppear_, a1 & 1);
  return [v1 toggleResponderPane];
}

uint64_t sub_1D7E6EC80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void *))
{
  v9[0] = a2;
  v9[1] = a3;
  v9[2] = a4;
  v9[3] = a5;
  v8[2] = a1;
  v8[3] = v9;
  return a7(a2, a3, a4, a5, a1, a6, v8);
}

void sub_1D7E6ED1C()
{
  v1 = *(v0 + 1);
  if (*(v0 + 565) == 1)
  {
    v2 = *(v0 + 16);
    if (v1 == 1)
    {
      v3 = *(v0 + 64);
    }

    else
    {
      v3 = *(v0 + 96);
    }

    if (!*(v0 + 1))
    {
      v3 = *(v0 + 16);
    }

    if (v3 == 0.0)
    {
      goto LABEL_43;
    }

    v25.origin.x = OUTLINED_FUNCTION_80();
    CGRectGetMinY(v25);
    OUTLINED_FUNCTION_3_103();
    if (!v1)
    {
      v5 = v2;
    }

    v6 = OUTLINED_FUNCTION_0_176(v4, v5);
    if (!(v8 ^ v9 | v7))
    {
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    if (v6 <= -9.22337204e18)
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    OUTLINED_FUNCTION_1_48();
    if (!v8)
    {
      goto LABEL_48;
    }

    v11 = v10;
    v0 = v10 & ~(v10 >> 63);
    v26.origin.x = OUTLINED_FUNCTION_80();
    CGRectGetMaxY(v26);
    OUTLINED_FUNCTION_3_103();
    if (!v1)
    {
      v13 = v2;
    }

    v14 = OUTLINED_FUNCTION_0_176(v12, v13);
    if (!(v8 ^ v9 | v7))
    {
      goto LABEL_50;
    }

    if (v14 <= -9.22337204e18)
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    OUTLINED_FUNCTION_1_48();
    if (v8)
    {
LABEL_42:
      if ((v15 & ~(v15 >> 63)) >= v11)
      {
        return;
      }

      goto LABEL_43;
    }

    __break(1u);
  }

  v16 = *(v0 + 8);
  if (v1 == 1)
  {
    v17 = *(v0 + 56);
  }

  else
  {
    v17 = *(v0 + 88);
  }

  if (!v1)
  {
    v17 = *(v0 + 8);
  }

  if (v17 != 0.0)
  {
    v27.origin.x = OUTLINED_FUNCTION_80();
    CGRectGetMinX(v27);
    OUTLINED_FUNCTION_3_103();
    if (!v1)
    {
      v19 = v16;
    }

    v20 = OUTLINED_FUNCTION_0_176(v18, v19);
    if (!(v8 ^ v9 | v7))
    {
      goto LABEL_45;
    }

    if (v20 <= -9.22337204e18)
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
      goto LABEL_52;
    }

    OUTLINED_FUNCTION_1_48();
    if (!v8)
    {
      goto LABEL_49;
    }

    v11 = v21;
    v28.origin.x = OUTLINED_FUNCTION_80();
    CGRectGetMaxX(v28);
    OUTLINED_FUNCTION_3_103();
    if (!v1)
    {
      v23 = v16;
    }

    v24 = OUTLINED_FUNCTION_0_176(v22, v23);
    if (!(v8 ^ v9 | v7))
    {
      goto LABEL_51;
    }

    if (v24 <= -9.22337204e18)
    {
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_1_48();
    if (!v8)
    {
      goto LABEL_54;
    }

    goto LABEL_42;
  }

LABEL_43:
  sub_1D7E6F1D0();
  swift_allocError();
  swift_willThrow();
}

void sub_1D7E6EF54()
{
  if (([v0 isCollapsed] & 1) == 0)
  {
    v1 = OUTLINED_FUNCTION_41_0();
    sub_1D7E0A1A8(0, &qword_1EDBB31B0);
    OUTLINED_FUNCTION_6_35();
    v2 = sub_1D8191314();

    v3 = sub_1D7E36AB8(v2);

    if (v3 >= 2)
    {
      v4 = sub_1D808F510(*&v0[OBJC_IVAR____TtC5TeaUI23CardSplitViewController_primaryCardContainerController]);
      v5 = OUTLINED_FUNCTION_41_0();
      v6 = sub_1D8191314();

      sub_1D7E33DD8(1, (v6 & 0xC000000000000001) == 0, v6);
      if ((v6 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1DA714420](1, v6);
      }

      else
      {
        v7 = *(v6 + 40);
      }

      v8 = v7;

      v9 = sub_1D808F510(v8);

      if (([v9 isFirstResponder] & 1) != 0 || (objc_msgSend(v9, sel_canBecomeFirstResponder) & 1) == 0)
      {
        v11 = swift_dynamicCastObjCProtocolConditional();
        if (v11)
        {
          [v11 startTraversingWithDirection_];
        }

        else
        {
          [v4 becomeFirstResponder];
        }

        v0[OBJC_IVAR____TtC5TeaUI23CardSplitViewController_splitViewFocus] = 0;
        v12 = [v0 childViewControllers];
        v13 = sub_1D8191314();

        sub_1D7FBDDAC(v13, v0);
      }

      else
      {
        v10 = swift_dynamicCastObjCProtocolConditional();
        if (v10)
        {
          [v10 startTraversingWithDirection_];
        }

        else
        {
          [v9 becomeFirstResponder];
        }

        v0[OBJC_IVAR____TtC5TeaUI23CardSplitViewController_splitViewFocus] = 1;
        v14 = [v0 childViewControllers];
        v15 = sub_1D8191314();

        sub_1D7FBDDC8(v15, v0);
      }
    }
  }
}

unint64_t sub_1D7E6F1D0()
{
  result = qword_1EDBB4440[0];
  if (!qword_1EDBB4440[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDBB4440);
  }

  return result;
}

CGImage *UIImage.scaledImage(with:targetScale:clipPath:supplementActions:)(void *a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  v7 = v6;
  [v7 size];
  v15 = v14;
  v17 = v16;
  [v7 scale];
  v19 = v18;
  v20 = [v7 imageOrientation];
  if (v15 < a4 && v17 < a5)
  {
    v41 = OUTLINED_FUNCTION_112();
    return UIImage.apply(supplementActions:)(v41, v42);
  }

  else
  {
    v22 = v20;
    result = [v7 CGImage];
    if (result)
    {
      v24 = result;
      v25 = a4 / v15;
      if (a5 / v17 < a4 / v15)
      {
        v25 = a5 / v17;
      }

      v26 = a6 / v19 * v25;
      v27 = v15 * v19 * v26;
      v28 = v17 * v19 * v26;
      v29 = v26 * CGImageGetWidth(result);
      v30 = v26 * CGImageGetHeight(v24);
      v45 = 0;
      v43 = MEMORY[0x1DA715170]();
      v31 = [v7 imageRendererFormat];
      [v31 setScale_];
      [v31 setOpaque_];
      v32 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize:v31 format:{v29, v30}];
      v33 = swift_allocObject();
      *(v33 + 16) = a1;
      *(v33 + 24) = v30;
      *(v33 + 32) = v27;
      *(v33 + 40) = v28;
      *(v33 + 48) = a2;
      *(v33 + 56) = a3;
      *(v33 + 64) = v24;
      *(v33 + 72) = &v45;
      *(v33 + 80) = a6;
      *(v33 + 88) = v22;
      OUTLINED_FUNCTION_0_32();
      v34 = swift_allocObject();
      *(v34 + 16) = sub_1D7E6FBCC;
      *(v34 + 24) = v33;
      aBlock[4] = sub_1D7E6FA30;
      aBlock[5] = v34;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      OUTLINED_FUNCTION_0_93();
      aBlock[2] = v35;
      aBlock[3] = &block_descriptor_53;
      v36 = _Block_copy(aBlock);
      v37 = a1;
      v38 = OUTLINED_FUNCTION_112();
      sub_1D7E19F24(v38);
      v39 = v24;

      v40 = [v32 imageWithActions_];

      _Block_release(v36);
      LOBYTE(v40) = swift_isEscapingClosureAtFileLocation();

      if (v40)
      {
        __break(1u);
      }

      else
      {
        objc_autoreleasePoolPop(v43);

        return v45;
      }
    }
  }

  return result;
}

uint64_t sub_1D7E6F5C8()
{
  if (*(v0 + 48))
  {
  }

  return swift_deallocObject();
}

uint64_t CommandContainer.registerCommand(_:tracker:handler:)(uint64_t a1, uint64_t a2)
{
  sub_1D7E62C7C(a2, &v4);
  if (v5)
  {
    sub_1D7E05450(&v4, v6);
  }

  else
  {
    sub_1D7E62C7C(v2 + 32, v6);
    if (v5)
    {
      sub_1D7E64060(&v4);
    }
  }

  swift_getObjectType();
  CommandCenterType.add(_:for:tracker:closure:)();
  return sub_1D7E64060(v6);
}

double sub_1D7E6F6DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t))
{
  v21[0] = a1;
  v21[1] = a2;
  v21[2] = a3;
  v21[3] = a4;
  v10 = sub_1D8190F14();
  v12 = v11;
  v19[0] = a1;
  v19[1] = a2;
  sub_1D8190DB4();
  MEMORY[0x1DA713260](v10, v12);

  if (qword_1EDBB0740 != -1)
  {
    v13 = swift_once();
  }

  v14 = qword_1EDBB0748;
  MEMORY[0x1EEE9AC00](v13);
  os_unfair_lock_lock((v14 + 24));
  sub_1D7E6E9D8(v14 + 16, v19);
  os_unfair_lock_unlock((v14 + 24));
  if (v20)
  {
    v15 = a6(v21, a5);
    v17 = v16;
    MEMORY[0x1EEE9AC00](v15);
    os_unfair_lock_lock((v14 + 24));
    sub_1D7E70020((v14 + 16));
    os_unfair_lock_unlock((v14 + 24));
  }

  else
  {
    v17 = *v19;
  }

  return v17;
}

void sub_1D7E6F8AC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t CommandCenterType.add(_:for:tracker:closure:)()
{
  OUTLINED_FUNCTION_26_24();
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1D7E74D44;
  *(v6 + 24) = v5;
  v7 = *(v0 + 16);

  v7(v4, v3);
}

uint64_t sub_1D7E6F9F0()
{

  return swift_deallocObject();
}

void sub_1D7E6FAA0()
{
  v0 = [objc_opt_self() preferredFontForTextStyle_];
  v1 = sub_1D7E6FD54();
  v2 = [objc_opt_self() configurationWithFont:v0 scale:v1];

  sub_1D7E471D0();
  sub_1D8190DB4();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_109();
  v6 = sub_1D7E6FE24(v4, v5, v2);
  if (v6)
  {
    v7 = v6;
    [v6 size];
  }

  else
  {
    __break(1u);
  }
}

void sub_1D7E6FBEC(void *a1, id a2, void (*a3)(void *, double, double, double, double), double a4, double a5, double a6, double a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11)
{
  [a2 addClip];
  c = [a1 CGContext];
  CGContextSetInterpolationQuality(c, kCGInterpolationHigh);
  CGContextScaleCTM(c, 1.0, -1.0);
  CGContextTranslateCTM(c, 0.0, -a4);
  if (a3)
  {
    a3(a1, 0.0, 0.0, a5, a6);
  }

  sub_1D8191964();
  Image = CGBitmapContextCreateImage(c);
  if (Image)
  {
    v20 = Image;
    v21 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage:Image scale:a11 orientation:a7];

    v22 = *a10;
    *a10 = v21;
  }

  else
  {
    v22 = c;
  }
}

uint64_t sub_1D7E6FD54()
{
  if ((sub_1D8191B84() & 1) == 0)
  {
    return 3;
  }

  if (sub_1D8191B94())
  {
    return 1;
  }

  if (sub_1D8191B94())
  {
    return 2;
  }

  return 3;
}

id CachedFont.font.getter()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 32);
  }

  else
  {
    v3 = v0;
    v4 = (*(v0 + 16))();
    v5 = *(v0 + 32);
    *(v3 + 32) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

id sub_1D7E6FE24(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1D8190EE4();

  v5 = [swift_getObjCClassFromMetadata() systemImageNamed:v4 withConfiguration:a3];

  return v5;
}

id static UIFont.scaledMonospacedDigitSystemFont(ofSize:style:maxSize:weight:traits:traitCollection:)(uint64_t a1, int a2, uint64_t a3, double a4, double a5, double a6)
{
  v11 = [objc_allocWithZone(MEMORY[0x1E69DCA40]) initForTextStyle_];
  [v11 scaledValueForValue:a3 compatibleWithTraitCollection:a4];
  v13 = v12;

  if (v13 < a5)
  {
    a5 = v13;
  }

  sub_1D7E4E810();
  return static UIFont.monospacedDigitSystemFont(ofSize:weight:traits:)(a2, a5, a6);
}

void sub_1D7E6FFD8(void *a1)
{
  v1 = a1;
  MastheadViewController.viewWillLayoutSubviews()();
}

Swift::Void __swiftcall MastheadViewController.viewWillLayoutSubviews()()
{
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, sel_viewWillLayoutSubviews);
  OUTLINED_FUNCTION_27_18();
  v4 = [v2 v3];
  if (v4)
  {
    v5 = v4;
    v6 = [v0 (v1 + 2808)];
    if (v6)
    {
      v7 = v6;
      [v6 bounds];
      OUTLINED_FUNCTION_9_0();

      v8 = OUTLINED_FUNCTION_8_0();
      [v9 v10];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1D7E70134(void *a1)
{
  v1 = a1;
  MastheadViewController.viewDidLayoutSubviews()();
}

void sub_1D7E701C0(uint64_t *a1)
{
  swift_isUniquelyReferenced_nonNull_native();
  v2 = *a1;
  sub_1D7E70764();
  *a1 = v2;
}

Swift::Void __swiftcall MastheadViewController.viewDidLayoutSubviews()()
{
  (MEMORY[0x1EEE9AC00])();
  v1 = v0;
  v29.receiver = v0;
  v29.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v29, sel_viewDidLayoutSubviews);
  sub_1D7E41C50(&v0[qword_1EDBB88C8], &v26);
  if (v27)
  {
    sub_1D7E05450(&v26, v28);
    MastheadViewController.layoutOptions.getter(__src);
    memcpy(__dst, __src, 0x122uLL);
    nullsub_1(__dst);
    v2 = qword_1EDBB8820;
    memcpy(v24, &v0[qword_1EDBB8820], 0x122uLL);
    memcpy(v21, __dst, 0x122uLL);
    memcpy(&v21[296], &v0[qword_1EDBB8820], 0x122uLL);
    memcpy(v25, __dst, 0x122uLL);
    if (sub_1D7E648D4(v25) == 1)
    {
      memcpy(v19, &v21[296], 0x122uLL);
      if (sub_1D7E648D4(v19) == 1)
      {
        OUTLINED_FUNCTION_24_16(v20);
        OUTLINED_FUNCTION_22_17(v24, v18);
        OUTLINED_FUNCTION_32_11(v20);
LABEL_13:
        v7 = 0;
        goto LABEL_14;
      }

      sub_1D7E727A8(__src, v20);
      sub_1D7E727A8(__src, v20);
      sub_1D7E5C9DC(v24, v20, &qword_1EDBB7608);
    }

    else
    {
      OUTLINED_FUNCTION_24_16(v20);
      OUTLINED_FUNCTION_24_16(v18);
      memcpy(v19, &v21[296], 0x122uLL);
      if (sub_1D7E648D4(v19) != 1)
      {
        memcpy(v14, &v21[296], 0x122uLL);
        sub_1D7E727A8(__src, v13);
        sub_1D7E727A8(__src, v13);
        OUTLINED_FUNCTION_22_17(v24, v13);
        OUTLINED_FUNCTION_22_17(v20, v13);
        v9 = static MastheadViewLayoutOptions.== infix(_:_:)(v18, v14);
        memcpy(v15, v14, 0x122uLL);
        sub_1D7E72850(v15);
        memcpy(v16, v18, 0x122uLL);
        sub_1D7E72850(v16);
        OUTLINED_FUNCTION_24_16(v17);
        OUTLINED_FUNCTION_32_11(v17);
        if (v9)
        {
          sub_1D7E72850(__src);
          sub_1D7E72850(__src);
          goto LABEL_13;
        }

LABEL_10:
        memcpy(v21, &v0[v2], 0x122uLL);
        memcpy(&v0[v2], __dst, 0x122uLL);
        sub_1D7E74104(v21, &qword_1EDBB7608);
        __swift_project_boxed_opaque_existential_1(v28, v28[3]);
        OUTLINED_FUNCTION_0_120();
        v8();
        sub_1D7E72850(__src);
        v7 = 1;
LABEL_14:
        __swift_destroy_boxed_opaque_existential_1Tm(v28);
        goto LABEL_15;
      }

      OUTLINED_FUNCTION_24_16(v17);
      sub_1D7E727A8(__src, v16);
      sub_1D7E727A8(__src, v16);
      OUTLINED_FUNCTION_22_17(v24, v16);
      OUTLINED_FUNCTION_22_17(v20, v16);
      sub_1D7E72850(v17);
    }

    memcpy(v19, v21, 0x24AuLL);
    sub_1D7E728FC(v19);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_0_152();
  sub_1D805F144(&v26, v3, v4, v5, v6);
  v7 = 0;
LABEL_15:
  if (*&v1[qword_1EDBB8890] && (v10 = qword_1EDBB8810, OUTLINED_FUNCTION_7(), swift_beginAccess(), *&v1[v10]))
  {

    v11 = OUTLINED_FUNCTION_11_0();
    sub_1D805CEF4(v11, v12, v7);
  }

  else
  {
    sub_1D7E70B80(0);
  }
}

id static UIFont.monospacedDigitSystemFont(ofSize:weight:traits:)(int a1, double a2, double a3)
{
  v6 = objc_opt_self();
  result = [v6 monospacedDigitSystemFontOfSize:a2 weight:a3];
  v8 = result;
  if (a1)
  {
    v9 = [result fontDescriptor];
    v10 = [v9 fontDescriptorWithSymbolicTraits_];
    if (!v10)
    {
      v10 = v9;
    }

    v11 = [v6 fontWithDescriptor:v10 size:a2];

    return v11;
  }

  return result;
}

void sub_1D7E70764()
{
  OUTLINED_FUNCTION_71_0();
  OUTLINED_FUNCTION_132();
  sub_1D7E11428(v6, v7);
  OUTLINED_FUNCTION_4_10();
  if (v8)
  {
    __break(1u);
LABEL_12:
    sub_1D8192714();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_92_0();
  sub_1D7E145C0(0, &unk_1EDBAE358);
  if (OUTLINED_FUNCTION_29_2())
  {
    v9 = OUTLINED_FUNCTION_97_0();
    sub_1D7E11428(v9, v0);
    OUTLINED_FUNCTION_31_2();
    if (!v11)
    {
      goto LABEL_12;
    }

    v3 = v10;
  }

  if (v2)
  {
    v12 = (*(*v1 + 56) + 16 * v3);
    *v12 = v5;
    v12[1] = v4;
    OUTLINED_FUNCTION_133();
  }

  else
  {
    v13 = OUTLINED_FUNCTION_43_1();
    sub_1D7E70954(v13, v14, v15, v16);
    OUTLINED_FUNCTION_133();

    sub_1D8190DB4();
  }
}

uint64_t OUTLINED_FUNCTION_93_1()
{

  return sub_1D8190DB4();
}

Swift::Void __swiftcall BlurStatusBarView.layoutSubviews()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC5TeaUI17BlurStatusBarView_barView];
  [v0 bounds];
  [v1 setFrame_];
}

void sub_1D7E70954(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = OUTLINED_FUNCTION_2_40(a1, a2, a3, a4);
  v6 = (v5[6] + 16 * v4);
  *v6 = v7;
  v6[1] = v8;
  v9 = (v5[7] + 16 * v4);
  *v9 = v10;
  v9[1] = v11;
  v12 = v5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_5_19(v5, v14);
  }
}

Swift::Void __swiftcall BarView.layoutSubviews()()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC5TeaUI7BarView_tintView];
  OUTLINED_FUNCTION_3_16();
  [v1 setFrame_];
  v2 = objc_opt_self();
  v3 = [v2 mainScreen];
  [v3 scale];
  v5 = v4;

  v6 = 0.5;
  if (v5 > 0.0)
  {
    v7 = [v2 mainScreen];
    [v7 scale];
    v6 = v8;
  }

  v9 = OBJC_IVAR____TtC5TeaUI7BarView_separator;
  OUTLINED_FUNCTION_10();
  v10 = v0[v9];
  v11 = *&v0[OBJC_IVAR____TtC5TeaUI7BarView_separatorView];
  if (v10)
  {
    v12 = 1.0 / v6;
    if (v10 == 1)
    {
      OUTLINED_FUNCTION_3_16();
      Width = CGRectGetWidth(v17);
      v14 = 0.0;
    }

    else
    {
      OUTLINED_FUNCTION_3_16();
      v14 = CGRectGetHeight(v18) - v12;
      OUTLINED_FUNCTION_3_16();
      Width = CGRectGetWidth(v19);
    }

    [v11 setFrame_];
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  [v11 setHidden_];
}

void sub_1D7E70B80(char a1)
{
  if (qword_1EDBBC390 != -1)
  {
    swift_once();
  }

  v2 = sub_1D818FE34();
  __swift_project_value_buffer(v2, qword_1EDBC60F0);
  v3 = sub_1D818FE14();
  v4 = sub_1D81919B4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = a1 & 1;
    _os_log_impl(&dword_1D7DFF000, v3, v4, "Masthead updateLayoutToPrepareForScrolling: restorePreviousOffset=%{BOOL}d", v5, 8u);
    MEMORY[0x1DA715D00](v5, -1, -1);
  }

  sub_1D7E70FA8(v6);
  v7 = MastheadViewController.displayOptions.getter();
  v8 = *&v7[OBJC_IVAR___TSMastheadDisplayOptions_statusBarMode];
  v9 = v7[OBJC_IVAR___TSMastheadDisplayOptions_statusBarMode + 8];

  v11 = v8;
  v12 = v9;
  sub_1D7E747F8(&v11, a1 & 1);
  v10 = MastheadViewController.scrollView.getter();
  sub_1D805D6DC(v10);
}

uint64_t sub_1D7E70CE0()
{
  v1 = OUTLINED_FUNCTION_76_0();
  v2(v1);
  OUTLINED_FUNCTION_8();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1D7E70D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  a5(0);
  OUTLINED_FUNCTION_8();
  (*(v6 + 8))(a1);
  return a1;
}

uint64_t sub_1D7E70D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1D7E70DEC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1D7E70E44(uint64_t a1, unint64_t *a2)
{
  sub_1D7E09D14(0, a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D7E70EA0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t BlueprintViewController.hasPerformedInitialLayout.getter()
{
  OUTLINED_FUNCTION_3_7();
  v2 = *(v1 + 224);
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  return *(v0 + v2);
}

id sub_1D7E70FA8(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v3 = *MEMORY[0x1E69E7D40] & *v1;
  MastheadViewController.layoutOptions.getter(__src);
  memcpy(__dst, __src, 0x122uLL);
  nullsub_1(__dst);
  v4 = qword_1EDBB8830;
  memcpy(v67, &v1[qword_1EDBB8830], 0x122uLL);
  memcpy(v64, __dst, 0x122uLL);
  memcpy(&v64[37], &v1[qword_1EDBB8830], 0x122uLL);
  memcpy(v68, __dst, 0x122uLL);
  if (sub_1D7E648D4(v68) == 1)
  {
    memcpy(v62, &v64[37], 0x122uLL);
    if (sub_1D7E648D4(v62) == 1)
    {
      memcpy(v63, v64, 0x122uLL);
      sub_1D7E727A8(__src, v61);
      sub_1D7E5C9DC(v67, v61, &qword_1EDBB7608);
      v5 = v63;
LABEL_9:
      sub_1D7E74104(v5, &qword_1EDBB7608);
      goto LABEL_10;
    }

    sub_1D7E727A8(__src, v63);
    sub_1D7E727A8(__src, v63);
    sub_1D7E5C9DC(v67, v63, &qword_1EDBB7608);
    goto LABEL_7;
  }

  memcpy(v63, v64, 0x122uLL);
  memcpy(v61, v64, 0x122uLL);
  memcpy(v62, &v64[37], 0x122uLL);
  if (sub_1D7E648D4(v62) == 1)
  {
    memcpy(v60, v64, 0x122uLL);
    sub_1D7E727A8(__src, v59);
    sub_1D7E727A8(__src, v59);
    sub_1D7E5C9DC(v67, v59, &qword_1EDBB7608);
    sub_1D7E5C9DC(v63, v59, &qword_1EDBB7608);
    sub_1D7E72850(v60);
LABEL_7:
    memcpy(v62, v64, 0x24AuLL);
    sub_1D7E728FC(v62);
LABEL_8:
    v6 = *&v1[qword_1EDBB8880 + 24];
    v7 = *&v1[qword_1EDBB8880 + 32];
    __swift_project_boxed_opaque_existential_1(&v1[qword_1EDBB8880], v6);
    memcpy(v64, __src, 0x122uLL);
    (*(v7 + 32))(v64, *&v1[qword_1EDBB88B8], *(v3 + 88), v6, v7);
    memcpy(v64, &v1[v4], 0x122uLL);
    memcpy(&v1[v4], __dst, 0x122uLL);
    v5 = v64;
    goto LABEL_9;
  }

  memcpy(v57, &v64[37], 0x122uLL);
  sub_1D7E727A8(__src, &v56);
  sub_1D7E727A8(__src, &v56);
  sub_1D7E5C9DC(v67, &v56, &qword_1EDBB7608);
  sub_1D7E5C9DC(v63, &v56, &qword_1EDBB7608);
  v51 = static MastheadViewLayoutOptions.== infix(_:_:)(v61, v57);
  memcpy(v58, v57, 0x122uLL);
  sub_1D7E72850(v58);
  memcpy(v59, v61, 0x122uLL);
  sub_1D7E72850(v59);
  memcpy(v60, v64, 0x122uLL);
  sub_1D7E74104(v60, &qword_1EDBB7608);
  if ((v51 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_1D7E72850(__src);
LABEL_10:
  v8 = *&v1[qword_1EDBB88A0];
  result = [v1 view];
  if (result)
  {
    v10 = result;
    [result bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v69.origin.x = v12;
    v69.origin.y = v14;
    v69.size.width = v16;
    v69.size.height = v18;
    Width = CGRectGetWidth(v69);
    v20 = &v2[qword_1EDBB8880];
    v21 = *&v2[qword_1EDBB8880 + 24];
    v22 = *&v2[qword_1EDBB8880 + 32];
    __swift_project_boxed_opaque_existential_1(&v2[qword_1EDBB8880], v21);
    v23 = (*(v22 + 8))(v21, v22);
    [v23 bounds];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;

    v70.origin.x = v25;
    v70.origin.y = v27;
    v70.size.width = v29;
    v70.size.height = v31;
    Height = CGRectGetHeight(v70);
    sub_1D7E74344();
    [v8 setFrame_];
    v34 = *&v2[qword_1EDBB88F0];
    [v8 frame];
    [v34 setFrame_];
    sub_1D7E0E768(v20, v64);
    v35 = v64[3];
    v36 = v64[4];
    __swift_project_boxed_opaque_existential_1(v64, v64[3]);
    result = [v2 view];
    if (result)
    {
      v37 = result;
      v38 = [result traitCollection];

      v39 = (*(v36 + 80))(v38, v35, v36);
      [v34 setBackgroundColor_];

      __swift_destroy_boxed_opaque_existential_1Tm(v64);
      sub_1D7E74344();
      sub_1D805BDE8(v40);
      v41 = MastheadViewController.displayOptions.getter();
      LOBYTE(v39) = v41[OBJC_IVAR___TSMastheadDisplayOptions_statusBarMode + 8];

      if ((v39 & 1) != 0 && ![v8 isHidden])
      {
        [v8 bounds];
        v46 = CGRectGetHeight(v71) - __src[18];
        v42 = *&v2[qword_1EDBB88B8];
        [v42 additionalSafeAreaInsets];
        if (v55 == v46 && v52 == 0.0 && v53 == 0.0 && v54 == 0.0)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v42 = *&v2[qword_1EDBB88B8];
        [v42 additionalSafeAreaInsets];
        v46 = *MEMORY[0x1E69DDCE0];
        if (v47 == *MEMORY[0x1E69DDCE0] && v43 == *(MEMORY[0x1E69DDCE0] + 8) && v44 == *(MEMORY[0x1E69DDCE0] + 16) && v45 == *(MEMORY[0x1E69DDCE0] + 24))
        {
          goto LABEL_25;
        }
      }

      [v42 setAdditionalSafeAreaInsets_];
LABEL_25:
      sub_1D7E74368();
      return sub_1D7E72850(__src);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void MastheadViewController.layoutOptions.getter(uint64_t a1@<X8>)
{
  v6 = OUTLINED_FUNCTION_21_22();
  if (v6)
  {
    v7 = v6;
    v8 = [v6 navigationBar];
  }

  else
  {
    v8 = 0;
  }

  v9 = OUTLINED_FUNCTION_21_22();
  v10 = 0.0;
  if (v9 && (v11 = v9, v12 = [v9 isNavigationBarHidden], v11, (v12 & 1) == 0))
  {
    MinY = 0.0;
    Width = 0.0;
    if (v8)
    {
      v18 = v8;
      v19 = [v18 topItem];
      if (v19)
      {
        v20 = sub_1D7E38C7C(v19);
        if (v20)
        {
          v21 = OUTLINED_FUNCTION_7_48(v20);

          if (v21)
          {
            v22 = [v21 ts_barButtonItemView];

            if (v22)
            {
              [v22 frame];
              [v18 convertPoint:v22 fromCoordinateSpace:{v23, 0.0}];
              v10 = v24;
            }
          }
        }
      }

      v25 = v18;
      v26 = [v25 topItem];
      if (v26 && (v27 = sub_1D7E3443C(v26)) != 0 && (v28 = OUTLINED_FUNCTION_7_48(v27), , v28) && (v29 = [v28 ts_barButtonItemView], v28, v29))
      {
        v25 = v25;
        [v25 convertPoint:v29 fromCoordinateSpace:{0.0, 0.0}];
        if (v30 <= 0.0)
        {
          [v25 frame];
          OUTLINED_FUNCTION_9_0();

          v136.origin.x = OUTLINED_FUNCTION_8_0();
          Width = CGRectGetWidth(v136);

          v25 = v29;
        }

        else
        {
          Width = v30;
        }
      }

      else
      {
        [v25 frame];
        Width = CGRectGetWidth(v133);
      }
    }

    v31 = OUTLINED_FUNCTION_21_22();
    if (v31)
    {
      v32 = v31;
      v33 = [v31 navigationBar];

      [v33 frame];
      OUTLINED_FUNCTION_31_11();
      v134.origin.x = OUTLINED_FUNCTION_5_13();
      MinY = CGRectGetMinY(v134);
    }

    v34 = OUTLINED_FUNCTION_21_22();
    v130 = MinY;
    if (v34)
    {
      v35 = v34;
      v36 = [v34 navigationBar];

      [v36 frame];
      OUTLINED_FUNCTION_31_11();
      v135.origin.x = OUTLINED_FUNCTION_5_13();
      MaxY = CGRectGetMaxY(v135);
    }

    else
    {
      MaxY = 0.0;
    }

    v13 = 0;
    v14 = Width - v10;
  }

  else
  {
    v13 = 1;
    v130 = 0.0;
    v14 = 0.0;
    MaxY = 0.0;
  }

  v37 = OUTLINED_FUNCTION_21_22();
  if (!v37 || (v38 = v37, v39 = [v37 view], v38, !v39))
  {
    v40 = [*&v1[qword_1EDBB88B8] view];
    if (!v40)
    {
LABEL_71:
      __break(1u);
      return;
    }

    v39 = v40;
  }

  [v39 safeAreaInsets];
  v42 = v41;

  v43 = [v1 tabBarController];
  v44 = v43;
  if (!v43)
  {
    goto LABEL_38;
  }

  v45 = [v43 selectedViewController];

  if (!v45)
  {
    v44 = 0;
    goto LABEL_40;
  }

  v44 = [v45 _hostingNavigationBar];

  if (!v44)
  {
    goto LABEL_38;
  }

  v46 = [v44 topItem];
  v45 = v46;
  if (!v46)
  {
    goto LABEL_40;
  }

  v47 = [v46 titleView];

  if (!v47)
  {
LABEL_38:
    v45 = 0;
    goto LABEL_40;
  }

  type metadata accessor for FloatingTabBarNavigationTitleView();
  v45 = swift_dynamicCastClass();
  if (!v45)
  {
  }

LABEL_40:
  v48 = OUTLINED_FUNCTION_17_22();
  if (!v48)
  {
    __break(1u);
    goto LABEL_64;
  }

  v49 = v48;
  v129 = v42;
  v50 = [v48 traitCollection];

  sub_1D805BA38();
  v127 = v51;
  v128 = v52;
  v126 = [v50 horizontalSizeClass];

  v53 = OUTLINED_FUNCTION_17_22();
  if (!v53)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v54 = v53;
  [v53 bounds];
  OUTLINED_FUNCTION_9_0();

  sub_1D7E6ACB4();
  v55 = OUTLINED_FUNCTION_8_0();
  static BlueprintLayoutOptions.constrainedSafeAreaInsets(bounds:safeAreaInsets:)(v55, v56, v57, v58, v59);
  OUTLINED_FUNCTION_9_0();
  v60 = OUTLINED_FUNCTION_17_22();
  if (!v60)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v61 = v60;
  [v60 layoutMargins];
  v63 = v62;

  v64 = OUTLINED_FUNCTION_17_22();
  if (!v64)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v65 = v64;
  v125 = v3;
  [v64 layoutMargins];
  v124 = v66;

  v67 = OUTLINED_FUNCTION_17_22();
  if (!v67)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v68 = v67;
  v119 = v2;
  [v67 bounds];
  v122 = v70;
  v123 = v69;
  v120 = v72;
  v121 = v71;

  v73 = OUTLINED_FUNCTION_17_22();
  if (!v73)
  {
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v74 = v73;
  v117 = v4;
  v75 = [v73 traitCollection];

  v76 = MastheadViewController.isStatusBannerVisible.getter();
  v77 = 0.0;
  if (v76)
  {
    MastheadViewController.statusBannerHeight.getter();
    v77 = v78 * 0.5;
  }

  v79 = v42;
  v118 = v77;
  v80 = OUTLINED_FUNCTION_17_22();
  if (!v80)
  {
    goto LABEL_69;
  }

  v81 = v80;
  v82 = MaxY;
  v115 = v14;
  v116 = v10;
  [v80 &selRef_accessibilityContainerType];
  v84 = v83;

  v85 = OUTLINED_FUNCTION_17_22();
  if (!v85)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v86 = v85;
  v113 = v63;
  v87 = [v85 window];

  v88 = 0;
  v89 = 0;
  OUTLINED_FUNCTION_14_28();
  if (v87)
  {
    v90 = [v87 windowScene];

    if (v90)
    {
      v91 = [v90 statusBarManager];

      if (v91)
      {
        [v91 statusBarFrame];
        v89 = v92;
        MaxY = v93;
        v3 = v94;
        v2 = v95;
      }
    }
  }

  v109 = v2;
  v110 = v3;
  v111 = MaxY;
  v112 = v84;
  v114 = v79;
  if (v13)
  {
    v96 = v117;
    OUTLINED_FUNCTION_14_28();
  }

  else
  {
    v96 = v117;
    v97 = [v1 navigationController];
    OUTLINED_FUNCTION_14_28();
    if (v98)
    {
      v99 = v98;
      v100 = [v98 navigationBar];

      [v100 bounds];
      v88 = v101;
      MaxY = v102;
      v3 = v103;
      v2 = v104;
    }
  }

  if (v126 == 2)
  {
    v105 = 40.0;
  }

  else
  {
    v105 = 16.0;
  }

  v106 = MastheadViewController.displayOptions.getter();
  v107 = UIViewController.isPreviewing.getter();
  sub_1D805BB9C(v45, v1, &v131);

  v108 = v132;
  *a1 = v123;
  *(a1 + 8) = v122;
  *(a1 + 16) = v121;
  *(a1 + 24) = v120;
  *(a1 + 32) = v113;
  *(a1 + 40) = v105 + v119;
  *(a1 + 48) = v124;
  *(a1 + 56) = v105 + v96;
  *(a1 + 64) = v127;
  *(a1 + 72) = v105;
  *(a1 + 80) = v128;
  *(a1 + 88) = v105;
  *(a1 + 96) = v114;
  *(a1 + 104) = v119;
  *(a1 + 112) = v125;
  *(a1 + 120) = v96;
  *(a1 + 128) = v75;
  *(a1 + 136) = v118;
  *(a1 + 144) = v112;
  *(a1 + 152) = v129;
  *(a1 + 160) = v89;
  *(a1 + 168) = v111;
  *(a1 + 176) = v110;
  *(a1 + 184) = v109;
  *(a1 + 192) = v88;
  *(a1 + 200) = MaxY;
  *(a1 + 208) = v3;
  *(a1 + 216) = v2;
  *(a1 + 224) = v116;
  *(a1 + 232) = v130;
  *(a1 + 240) = v115;
  *(a1 + 248) = v82;
  *(a1 + 256) = v106;
  *(a1 + 264) = v107 & 1;
  *(a1 + 272) = v131;
  *(a1 + 288) = v108;
}