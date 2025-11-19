void sub_1E3F0A528()
{
  OUTLINED_FUNCTION_9_4();
  v78 = v2;
  v79 = v1;
  v76 = v3;
  v80 = v4;
  v6 = v5;
  sub_1E42046B4();
  OUTLINED_FUNCTION_0_10();
  v72 = v8;
  v73 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v71 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7B0);
  v12 = OUTLINED_FUNCTION_17_2(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_128_1();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v71 - v18;
  v81 = sub_1E4204724();
  OUTLINED_FUNCTION_0_10();
  v77 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_4_6();
  v24 = v22 - v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_18_6();
  v74 = v26;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_25_3();
  v75 = v28;
  v29 = sub_1E41FE7A4();
  OUTLINED_FUNCTION_0_10();
  v31 = v30;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5();
  v35 = v34 - v33;
  OUTLINED_FUNCTION_36();
  if (((*(v36 + 296))() & 1) == 0)
  {
    v82[5] = v6;
    sub_1E3280A90(0, &qword_1EE23B120);
    v37 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C250);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v82);
      goto LABEL_13;
    }

    v38 = [v80 collectionViewLayout];
    objc_opt_self();
    v80 = v38;
    v39 = swift_dynamicCastObjCClass();
    if (v39 && (v40 = v39, v41 = [v39 _orthogonalScrollingSections], sub_1E41FE754(), v41, sub_1E41FE854(), LOBYTE(v41) = sub_1E41FE784(), (*(v31 + 8))(v35, v29), (v41 & 1) != 0))
    {
      OUTLINED_FUNCTION_8();
      (*(v42 + 224))();
      v43 = OUTLINED_FUNCTION_55_43();
      v44 = v81;
      OUTLINED_FUNCTION_52(v43, v45, v81);
      if (v59)
      {

        v46 = v19;
      }

      else
      {
        v53 = v77;
        v54 = *(v77 + 32);
        v55 = v75;
        v54(v75, v19, v44);
        OUTLINED_FUNCTION_8();
        (*(v56 + 224))();
        v57 = OUTLINED_FUNCTION_46_54();
        OUTLINED_FUNCTION_52(v57, v58, v44);
        if (!v59)
        {
          v54(v74, v0, v44);
          OUTLINED_FUNCTION_47_0();
          v61 = *(v60 + 96);
          v61();
          v62 = v71;
          sub_1E42046D4();
          v63 = sub_1E4204804();

          (*(v72 + 8))(v62, v73);
          if (v63)
          {
            [v40 vui:sub_1E41FE854() layoutFrameForSection:?];
            OUTLINED_FUNCTION_3();
            OUTLINED_FUNCTION_47_0();
            (*(v64 + 248))();
            v83.origin.x = OUTLINED_FUNCTION_6();
            CGRectOffset(v83, v65, v66);
            OUTLINED_FUNCTION_3();
            v61();
            v67 = v75;
            OUTLINED_FUNCTION_6();
            sub_1E4204824();

            sub_1E4204894();

            v68 = OUTLINED_FUNCTION_61_26();
            v63(v68);
            v69 = v67;
          }

          else
          {

            v70 = OUTLINED_FUNCTION_61_26();
            MEMORY[0](v70);
            v69 = v75;
          }

          (v63)(v69, v44);
          goto LABEL_13;
        }

        (*(v53 + 8))(v55, v44);

        v46 = v0;
      }
    }

    else
    {

      OUTLINED_FUNCTION_8();
      (*(v47 + 224))();
      v48 = v81;
      OUTLINED_FUNCTION_52(v15, 1, v81);
      if (!v59)
      {
        OUTLINED_FUNCTION_202_1();
        v49(v24, v15, v48);
        OUTLINED_FUNCTION_47_0();
        (*(v50 + 96))();
        OUTLINED_FUNCTION_50();
        sub_1E4204894();

        v51 = OUTLINED_FUNCTION_35_67();
        v52(v51);
        goto LABEL_13;
      }

      v46 = v15;
    }

    sub_1E325F6F0(v46, &qword_1ECF2B7B0);
  }

LABEL_13:
  OUTLINED_FUNCTION_10_3();
}

void sub_1E3F0ABA8()
{
  OUTLINED_FUNCTION_9_4();
  sub_1E42046B4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7B0);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_33_5();
  v5 = sub_1E4204724();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  OUTLINED_FUNCTION_8();
  (*(v9 + 224))();
  OUTLINED_FUNCTION_52(v1, 1, v5);
  if (v10)
  {
    sub_1E325F6F0(v1, &qword_1ECF2B7B0);
  }

  else
  {
    (*(v7 + 32))(v0, v1, v5);
    OUTLINED_FUNCTION_47_0();
    (*(v11 + 96))();
    sub_1E42046D4();
    sub_1E42048B4();

    v12 = OUTLINED_FUNCTION_11_6();
    v13(v12);
    v14 = OUTLINED_FUNCTION_124();
    v15(v14);
  }

  OUTLINED_FUNCTION_10_3();
}

uint64_t sub_1E3F0AE08(char a1)
{
  result = OUTLINED_FUNCTION_14_0();
  *(v1 + 48) = a1;
  return result;
}

uint64_t sub_1E3F0AE3C()
{
  OUTLINED_FUNCTION_16_131();
  v0 = swift_allocObject();
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  sub_1E3F07AAC();
  return v0;
}

uint64_t sub_1E3F0AE74()
{
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_16_131();
  swift_allocObject();
  OUTLINED_FUNCTION_37_67();
  sub_1E3F0AEB0();
  return v0;
}

uint64_t sub_1E3F0AEB0()
{
  OUTLINED_FUNCTION_156();
  sub_1E42046B4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4_12();
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  sub_1E327F454(v1, v8);
  v3 = OUTLINED_FUNCTION_45_61();
  v4(v3);
  sub_1E3F095B4();
  v5 = OUTLINED_FUNCTION_35_67();
  v6(v5);
  __swift_destroy_boxed_opaque_existential_1(v1);
  return v0;
}

uint64_t sub_1E3F0AF90()
{
  BaseImpressionManager.deinit();
  v0 = OUTLINED_FUNCTION_16_131();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void (*sub_1E3F0B03C(void *a1))(void *)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  OUTLINED_FUNCTION_5_2();
  v2[4] = (*(v3 + 264))();
  return sub_1E37C4BF8;
}

void (*sub_1E3F0B214(void *a1))(void *)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  OUTLINED_FUNCTION_5_2();
  v2[4] = (*(v3 + 312))();
  return sub_1E37C55D4;
}

uint64_t sub_1E3F0B294()
{
  OUTLINED_FUNCTION_16_131();
  v0 = swift_allocObject();
  sub_1E3F0B2C4();
  return v0;
}

uint64_t sub_1E3F0B2C4()
{
  v1 = sub_1E4204874();
  v2 = OUTLINED_FUNCTION_17_2(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_71_0();
  v3 = sub_1E42049C4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - v8;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  sub_1E3F07AAC();

  sub_1E42049B4();
  v10 = OUTLINED_FUNCTION_124();
  v11(v10);
  sub_1E42049E4();
  swift_allocObject();
  sub_1E42049F4();
  OUTLINED_FUNCTION_111();
  (*(v12 + 128))();
  sub_1E42048E4();
  sub_1E4204864();
  OUTLINED_FUNCTION_111();
  (*(v13 + 120))();
  sub_1E4204884();
  OUTLINED_FUNCTION_111();
  (*(v14 + 104))();

  (*(v5 + 8))(v9, v3);
  return v0;
}

void sub_1E3F0B4F0()
{
  OUTLINED_FUNCTION_9_4();
  v60 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7B0);
  v9 = OUTLINED_FUNCTION_17_2(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v54 - v14;
  v16 = sub_1E4204724();
  OUTLINED_FUNCTION_0_10();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4_6();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_36();
  if (!(*(v24 + 576))())
  {
    v39 = OUTLINED_FUNCTION_46_54();
    __swift_storeEnumTagSinglePayload(v39, v40, 1, v16);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_30();
  (*(v25 + 224))();

  v26 = OUTLINED_FUNCTION_46_54();
  OUTLINED_FUNCTION_52(v26, v27, v16);
  if (v28)
  {
LABEL_8:
    v41 = v15;
    goto LABEL_9;
  }

  v59 = v3;
  v58 = *(v18 + 32);
  v29 = v58(v1, v15, v16);
  v30 = (*(*v5 + 576))(v29);
  if (!v30)
  {
    v42 = OUTLINED_FUNCTION_14_152();
    v43(v42);
    goto LABEL_10;
  }

  v31 = v30;
  if (![v7 vuiCellView])
  {
    v44 = OUTLINED_FUNCTION_14_152();
    v45(v44);
    goto LABEL_13;
  }

  v56 = v31;
  OUTLINED_FUNCTION_8();
  v33 = *(v32 + 96);
  v35 = v34;
  v54[1] = v32 + 96;
  v55 = v33;
  v33();
  v57 = v35;
  [v35 frame];
  OUTLINED_FUNCTION_3();
  sub_1E41FE844();
  OUTLINED_FUNCTION_6();
  sub_1E4204814();

  v63 = v7;
  sub_1E3280A90(0, &qword_1EE23B120);
  v36 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C250);
  if (swift_dynamicCast())
  {
    sub_1E325F6F0(v61, &unk_1ECF429D0);
    v37 = OUTLINED_FUNCTION_14_152();
    v38(v37);

LABEL_13:

    goto LABEL_10;
  }

  v46 = v57;
  v62 = 0;
  memset(v61, 0, sizeof(v61));
  v47 = sub_1E325F6F0(v61, &unk_1ECF429D0);
  (*(*v56 + 224))(v47);
  OUTLINED_FUNCTION_52(v12, 1, v16);
  if (!v28)
  {
    v50 = OUTLINED_FUNCTION_123_1();
    v51 = (v58)(v50);
    (v55)(v51);
    [v46 frame];
    OUTLINED_FUNCTION_3();
    sub_1E41FE844();
    OUTLINED_FUNCTION_6();
    sub_1E4204814();

    v52 = *(v18 + 8);
    v52(v22, v16);
    v53 = OUTLINED_FUNCTION_11_6();
    (v52)(v53);
    goto LABEL_10;
  }

  v48 = OUTLINED_FUNCTION_14_152();
  v49(v48);

  v41 = v12;
LABEL_9:
  sub_1E325F6F0(v41, &qword_1ECF2B7B0);
LABEL_10:
  OUTLINED_FUNCTION_10_3();
}

uint64_t sub_1E3F0B9E4()
{
  v0 = sub_1E4204764();
  __swift_allocate_value_buffer(v0, static BaseImpressionManager.impressionContext);
  __swift_project_value_buffer(v0, static BaseImpressionManager.impressionContext);
  return sub_1E4204754();
}

uint64_t BaseImpressionManager.impressionContext.unsafeMutableAddressor()
{
  if (qword_1EE29C570 != -1)
  {
    OUTLINED_FUNCTION_8_171();
  }

  v0 = sub_1E4204764();

  return __swift_project_value_buffer(v0, static BaseImpressionManager.impressionContext);
}

uint64_t static BaseImpressionManager.impressionContext.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE29C570 != -1)
  {
    OUTLINED_FUNCTION_8_171();
  }

  v2 = sub_1E4204764();
  v3 = __swift_project_value_buffer(v2, static BaseImpressionManager.impressionContext);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static BaseImpressionManager.getParentSnapshotImpressions(responder:)(void *a1)
{
  v1 = a1;
  sub_1E3280A90(0, &qword_1EE23B3D0);
  while (1)
  {
    *&v15 = v1;
    v2 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3E3E0);
    if ((OUTLINED_FUNCTION_19_129() & 1) == 0)
    {
      OUTLINED_FUNCTION_96_0();
LABEL_7:
      sub_1E325F6F0(&v17, &unk_1ECF3E3D0);
      goto LABEL_8;
    }

    if (!v18)
    {
      goto LABEL_7;
    }

    sub_1E3251BE8(&v17, v19);
    __swift_project_boxed_opaque_existential_1(v19, v20);
    v3 = OUTLINED_FUNCTION_30_76();
    v4(v3);
    if (v16)
    {
      goto LABEL_20;
    }

    sub_1E325F6F0(&v15, &qword_1ECF2C970);
    __swift_destroy_boxed_opaque_existential_1(v19);
LABEL_8:
    *&v15 = v2;
    v2 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C260);
    if ((OUTLINED_FUNCTION_19_129() & 1) == 0)
    {
      OUTLINED_FUNCTION_96_0();
      goto LABEL_13;
    }

    if (v18)
    {
      break;
    }

LABEL_13:
    sub_1E325F6F0(&v17, &qword_1ECF3C268);
LABEL_14:
    *&v15 = v2;
    v7 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C270);
    if (OUTLINED_FUNCTION_19_129())
    {
      if (v18)
      {
        sub_1E3251BE8(&v17, v19);
        v8 = v21;
        __swift_project_boxed_opaque_existential_1(v19, v20);
        v9 = OUTLINED_FUNCTION_50();
        v11 = v10(v9, v8);

        goto LABEL_21;
      }
    }

    else
    {
      OUTLINED_FUNCTION_96_0();
    }

    sub_1E325F6F0(&v17, &qword_1ECF3C278);
    v1 = [v7 nextResponder];

    if (!v1)
    {
      return 0;
    }
  }

  sub_1E3251BE8(&v17, v19);
  __swift_project_boxed_opaque_existential_1(v19, v20);
  v5 = OUTLINED_FUNCTION_30_76();
  v6(v5);
  if (!v16)
  {
    sub_1E325F6F0(&v15, &unk_1ECF296D0);
    __swift_destroy_boxed_opaque_existential_1(v19);
    goto LABEL_14;
  }

LABEL_20:
  sub_1E3251BE8(&v15, &v17);
  __swift_project_boxed_opaque_existential_1(&v17, v18);
  v12 = OUTLINED_FUNCTION_50();
  v11 = v13(v12);

  __swift_destroy_boxed_opaque_existential_1(&v17);
LABEL_21:
  __swift_destroy_boxed_opaque_existential_1(v19);
  return v11;
}

uint64_t static BaseImpressionManager.processImpressionsForPrivacy(_:)(uint64_t a1)
{
  if (!a1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = (a1 + 32);
  v3 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v4 = *v2;
    v5 = sub_1E4205F14();
    v7 = v6;
    if (v4[2])
    {
      v8 = v5;

      OUTLINED_FUNCTION_1_28();
      v10 = sub_1E3C69B60(v8, v7, v9);
      v12 = v11;

      if (v12)
      {
        sub_1E328438C(v4[7] + 32 * v10, &v69);
        if (swift_dynamicCast())
        {
          v13 = *(&v68[0] + 1);
          v14 = *&v68[0];
          goto LABEL_10;
        }
      }
    }

    else
    {
    }

    v14 = 0;
    v13 = 0;
LABEL_10:
    v15 = sub_1E3BA48D4();
    if (!v13)
    {

LABEL_18:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_19;
    }

    if (v14 == v15 && v13 == v16)
    {
    }

    else
    {
      v18 = sub_1E42079A4();

      if ((v18 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    v20 = sub_1E4205F14();
    v22 = v21;
    v70 = MEMORY[0x1E69E6158];
    *&v69 = 0;
    *(&v69 + 1) = 0xE000000000000000;
    sub_1E329504C(&v69, v68);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_28();
    v26 = OUTLINED_FUNCTION_65_33(v23, v24, v25);
    if (__OFADD__(v4[2], (v27 & 1) == 0))
    {
      break;
    }

    v28 = v26;
    v29 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F310);
    if (sub_1E4207644())
    {
      OUTLINED_FUNCTION_1_28();
      v33 = OUTLINED_FUNCTION_65_33(v30, v31, v32);
      if ((v29 & 1) != (v34 & 1))
      {
        goto LABEL_48;
      }

      v28 = v33;
    }

    if (v29)
    {
      v35 = (v4[7] + 32 * v28);
      __swift_destroy_boxed_opaque_existential_1(v35);
      sub_1E329504C(v68, v35);
    }

    else
    {
      v4[(v28 >> 6) + 8] |= 1 << v28;
      v36 = (v4[6] + 16 * v28);
      *v36 = v20;
      v36[1] = v22;
      sub_1E329504C(v68, (v4[7] + 32 * v28));
      v37 = v4[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_46;
      }

      v4[2] = v39;
    }

    v40 = sub_1E4205F14();
    v42 = v41;
    v70 = MEMORY[0x1E69E6158];
    *&v69 = 0;
    *(&v69 + 1) = 0xE000000000000000;
    sub_1E329504C(&v69, v68);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_28();
    v46 = OUTLINED_FUNCTION_65_33(v43, v44, v45);
    v48 = v47;
    if (__OFADD__(v4[2], (v47 & 1) == 0))
    {
      goto LABEL_45;
    }

    v49 = v46;
    if (sub_1E4207644())
    {
      OUTLINED_FUNCTION_1_28();
      v53 = OUTLINED_FUNCTION_65_33(v50, v51, v52);
      if ((v48 & 1) != (v54 & 1))
      {
        goto LABEL_48;
      }

      v49 = v53;
    }

    if (v48)
    {
      v55 = (v4[7] + 32 * v49);
      __swift_destroy_boxed_opaque_existential_1(v55);
      sub_1E329504C(v68, v55);
    }

    else
    {
      v4[(v49 >> 6) + 8] |= 1 << v49;
      v56 = (v4[6] + 16 * v49);
      *v56 = v40;
      v56[1] = v42;
      sub_1E329504C(v68, (v4[7] + 32 * v49));
      v57 = v4[2];
      v38 = __OFADD__(v57, 1);
      v58 = v57 + 1;
      if (v38)
      {
        goto LABEL_47;
      }

      v4[2] = v58;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_41:
      OUTLINED_FUNCTION_21_18();
      v3 = sub_1E39239C8(v59, v60, v61, v62);
    }

LABEL_19:
    v19 = v3[2];
    if (v19 >= v3[3] >> 1)
    {
      OUTLINED_FUNCTION_21_18();
      v3 = sub_1E39239C8(v63, v64, v65, v66);
    }

    v3[2] = v19 + 1;
    v3[v19 + 4] = v4;
    ++v2;
    if (!--v1)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  result = sub_1E4207A74();
  __break(1u);
  return result;
}

void sub_1E3F0C2C0()
{
  OUTLINED_FUNCTION_31_1();
  v30 = v1;
  v3 = v2;
  v28 = v4;
  v29 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_12();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7B0);
  OUTLINED_FUNCTION_17_2(v8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - v10;
  v12 = sub_1E4204724();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v18 = v17 - v16;
  sub_1E37E93E8(v3, v11, &qword_1ECF2B7B0);
  v19 = OUTLINED_FUNCTION_55_43();
  OUTLINED_FUNCTION_52(v19, v20, v12);
  if (v21)
  {
    sub_1E325F6F0(v11, &qword_1ECF2B7B0);
  }

  else
  {
    (*(v14 + 32))(v18, v11, v12);
    ObjectType = swift_getObjectType();
    sub_1E41FE5C4();
    if (qword_1EE29C570 != -1)
    {
      OUTLINED_FUNCTION_8_171();
    }

    v23 = sub_1E4204764();
    v24 = __swift_project_value_buffer(v23, static BaseImpressionManager.impressionContext);
    v30(v18, v0, v24, ObjectType, v28);
    (*(v6 + 8))(v0, v29);
    v25 = OUTLINED_FUNCTION_123_1();
    v26(v25);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F0C504()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7B0);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_64_30();
  OUTLINED_FUNCTION_0_10();
  v37 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v40 = v10 - v11;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_25_3();
  v39 = v13;
  if (v4 >> 62)
  {
LABEL_29:
    v14 = sub_1E4207384();
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_30:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v14 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
    goto LABEL_30;
  }

LABEL_3:
  if (v14 >= 1)
  {
    v15 = 0;
    v16 = v4 & 0xC000000000000001;
    v38 = (v37 + 32);
    v35 = v0;
    v36 = v2;
    v41 = v7;
    v34 = v4;
    while (1)
    {
      if (v16)
      {
        v17 = MEMORY[0x1E6911E60](v15, v4);
      }

      else
      {
        v17 = *(v4 + 8 * v15 + 32);
      }

      type metadata accessor for CollectionViewModel();
      if (swift_dynamicCastClass())
      {
        goto LABEL_9;
      }

      if ((*(*v17 + 576))())
      {
        OUTLINED_FUNCTION_30();
        (*(v18 + 224))();
        v19 = OUTLINED_FUNCTION_44_5();
        OUTLINED_FUNCTION_52(v19, v20, v7);
        if (v21)
        {

          sub_1E325F6F0(v0, &qword_1ECF2B7B0);
        }

        else
        {
          v22 = v0;
          v23 = *v38;
          (*v38)(v39, v22, v7);
          (*(v37 + 16))(v40, v39, v7);
          swift_beginAccess();
          v24 = *(v2 + 16);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v2 + 16) = v24;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v24 = sub_1E3885C98(0, *(v24 + 16) + 1, 1, v24);
            *(v2 + 16) = v24;
          }

          v27 = *(v24 + 16);
          v26 = *(v24 + 24);
          if (v27 >= v26 >> 1)
          {
            v24 = sub_1E3885C98(v26 > 1, v27 + 1, 1, v24);
          }

          *(v24 + 16) = v27 + 1;
          v23(v24 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v27, v40, v41);
          v2 = v36;
          *(v36 + 16) = v24;
          v7 = v41;
          swift_endAccess();

          (*(v37 + 8))(v39, v41);
          v4 = v34;
          v0 = v35;
        }
      }

      v28 = (*(*v17 + 488))();
      if (!v28)
      {
        break;
      }

      v29 = v28;
      v30 = *(v28 + 16);
      if (v30)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
        v7 = swift_allocObject();
        v31 = _swift_stdlib_malloc_size(v7);
        v7[2] = v30;
        v7[3] = (2 * ((v31 - 32) / 8)) | 1;
        v32 = sub_1E39E6CC0(&v42, v7 + 4, v30, v29);
        sub_1E34AF4DC();
        if (v32 != v30)
        {
          __break(1u);
          goto LABEL_29;
        }
      }

      else
      {

        v7 = MEMORY[0x1E69E7CC0];
      }

      sub_1E3F0C504(v7, v2);

      v7 = v41;
LABEL_27:
      if (v14 == ++v15)
      {
        goto LABEL_30;
      }
    }

    v33 = (*(*v17 + 464))();
    if (v33)
    {
      sub_1E3F0C504(v33, v2);
    }

LABEL_9:

    goto LABEL_27;
  }

  __break(1u);
}

uint64_t sub_1E3F0C9AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B230);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void static BaseImpressionManager.makeImpressionsData(_:parent:)()
{
  OUTLINED_FUNCTION_31_1();
  v22[1] = v1;
  v22[2] = v0;
  v3 = v2;
  v22[3] = v4;
  v5 = sub_1E4204624();
  v6 = OUTLINED_FUNCTION_17_2(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_71_0();
  v7 = sub_1E42046B4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v22 - v15;
  v17 = sub_1E4205F14();
  sub_1E3277E60(v17, v18, v3, &v23);

  if (v24)
  {
    swift_dynamicCast();
  }

  else
  {
    sub_1E325F6F0(&v23, &unk_1ECF296E0);
  }

  v19 = sub_1E4205F14();
  sub_1E3277E60(v19, v20, v3, &v23);

  if (v24)
  {
    swift_dynamicCast();
  }

  else
  {
    sub_1E325F6F0(&v23, &unk_1ECF296E0);
  }

  sub_1E4204664();
  (*(v9 + 16))(v13, v16, v7);

  sub_1E4204614();
  v21 = MEMORY[0x1E69E7CC0];
  sub_1E37E5C70(MEMORY[0x1E69E7CC0]);
  sub_1E37E5C70(v21);
  sub_1E42046C4();
  (*(v9 + 8))(v16, v7);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3F0CD40(uint64_t a1, uint64_t a2)
{
  (*(a2 + 48))();
  if (!v4)
  {
    v5 = (*(a2 + 32))(a1, a2);
    goto LABEL_5;
  }

  v7[0] = *(a2 + 32);
  v7[1] = v7;
  v8 = (v7[0])(a1, a2);
  MEMORY[0x1EEE9AC00](v8);
  swift_getAssociatedTypeWitness();
  sub_1E4206374();
  OUTLINED_FUNCTION_0_286();
  swift_getWitnessTable();
  sub_1E4206744();

  if (v10 == 1)
  {
    v5 = (v7[0])(a1, a2);
LABEL_5:
    v8 = v5;
    MEMORY[0x1EEE9AC00](v5);
    swift_getAssociatedTypeWitness();
    sub_1E4206374();
    OUTLINED_FUNCTION_0_286();
    swift_getWitnessTable();
    sub_1E4206744();

    return v9;
  }

  return v9;
}

uint64_t sub_1E3F0CF7C()
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v1 = *(AssociatedConformanceWitness + 64);
  v2 = swift_checkMetadataState();
  return v1(v2, AssociatedConformanceWitness) & 1;
}

uint64_t sub_1E3F0D034()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = *(AssociatedConformanceWitness + 8);
  v5 = *(v4 + 16);
  v6 = swift_checkMetadataState();
  if (v5(v6, v4) == v1 && v7 == v2)
  {
  }

  else
  {
    v9 = sub_1E42079A4();

    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  return (*(AssociatedConformanceWitness + 64))(v6, AssociatedConformanceWitness) & 1;
}

id static VUIAction.makeAction(with:appContext:)(uint64_t a1, void *a2)
{
  v58 = sub_1E4205F14();
  v59 = v4;
  v5 = sub_1E4207414();
  v13 = OUTLINED_FUNCTION_1_39(v5, v6, v7, v8, v9, v10, v11, v12, v47, v50, v54, v57[0]);
  sub_1E375D7E8(v13, a1, v14);
  sub_1E375D84C(v57);
  if (v60)
  {
    v15 = OUTLINED_FUNCTION_2_215();
    if (v15)
    {
      v16 = v51;
    }

    else
    {
      v16 = 0;
    }

    if (v15)
    {
      v17 = v55;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    sub_1E329505C(&v58);
    v16 = 0;
    v17 = 0;
  }

  type metadata accessor for VUIActionRef();
  v57[0] = v16;
  v57[1] = v17;
  v18 = OUTLINED_FUNCTION_0_287(&qword_1ECF3C280);
  OUTLINED_FUNCTION_1_39(v18, v19, v18, v20, v21, v22, v23, v24, v48, v51, v55, v57[0]);
  sub_1E4149694();
  v25 = v58;
  v58 = sub_1E4205F14();
  v59 = v26;
  v27 = sub_1E4207414();
  v35 = OUTLINED_FUNCTION_1_39(v27, v28, v29, v30, v31, v32, v33, v34, v49, v52, v56, v57[0]);
  sub_1E375D7E8(v35, a1, v36);
  sub_1E375D84C(v57);
  if (v60)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0);
    if (OUTLINED_FUNCTION_2_215())
    {
      v37 = v53;
    }

    else
    {
      v37 = 0;
    }

    if (!v25)
    {
      goto LABEL_22;
    }

LABEL_16:
    v38 = sub_1E4205F14();
    v40 = v39;
    if (v38 == sub_1E4205F14() && v40 == v41)
    {
    }

    else
    {
      v43 = sub_1E42079A4();

      if ((v43 & 1) == 0)
      {

        goto LABEL_22;
      }
    }

    type metadata accessor for VUIActionAppStoreOffer();
    v45 = a2;
    v44 = sub_1E395E4BC(v37, a2);

    return v44;
  }

  sub_1E329505C(&v58);
  v37 = 0;
  if (v25)
  {
    goto LABEL_16;
  }

LABEL_22:

  return 0;
}

uint64_t sub_1E3F0D38C(uint64_t a1)
{
  if (!a1)
  {
    v33 = 0u;
    v34 = 0u;
LABEL_8:
    sub_1E329505C(&v33);
    return 0;
  }

  v28 = sub_1E3C7E9C0(0);
  v30 = v2;
  v3 = sub_1E4207414();
  v11 = OUTLINED_FUNCTION_1_39(v3, v4, v5, v6, v7, v8, v9, v10, v26, v28, v30, v32);
  sub_1E375D7E8(v11, a1, v12);
  sub_1E375D84C(&v32);
  if (!*(&v34 + 1))
  {

    goto LABEL_8;
  }

  if ((OUTLINED_FUNCTION_3_216() & 1) == 0)
  {

    return 0;
  }

  v13 = v32;
  *&v33 = sub_1E3C7E9C0(1);
  *(&v33 + 1) = v14;
  v15 = sub_1E4207414();
  v23 = OUTLINED_FUNCTION_1_39(v15, v16, v17, v18, v19, v20, v21, v22, v27, v29, v31, v32);
  sub_1E375D7E8(v23, a1, v24);

  sub_1E375D84C(&v32);
  if (*(&v34 + 1))
  {
    OUTLINED_FUNCTION_3_216();
  }

  else
  {
    sub_1E329505C(&v33);
  }

  return v13;
}

uint64_t sub_1E3F0D4D8(uint64_t a1)
{
  if (!a1)
  {
    v19 = 0u;
    v20 = 0u;
    goto LABEL_6;
  }

  v16 = sub_1E3C7E9C0(2);
  v17 = v2;
  v3 = sub_1E4207414();
  v11 = OUTLINED_FUNCTION_1_39(v3, v4, v5, v6, v7, v8, v9, v10, v15, v16, v17, v18[0]);
  sub_1E375D7E8(v11, a1, v12);
  sub_1E375D84C(v18);
  if (!*(&v20 + 1))
  {
LABEL_6:
    sub_1E329505C(&v19);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C288);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v13 = sub_1E3F0D5C0(v18[0]);

  return v13;
}

uint64_t sub_1E3F0D5C0(uint64_t a1)
{
  v41 = MEMORY[0x1E69E7CC8];
  v48 = MEMORY[0x1E69E7CC8];
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
LABEL_10:
    v10 = __clz(__rbit64(v5)) | (v8 << 6);
    v11 = (*(a1 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    v14 = *(*(a1 + 56) + 8 * v10);

    v44 = sub_1E3C7E9C0(0);
    v45 = v15;
    sub_1E4207414();
    if (*(v14 + 16) && (v16 = sub_1E375D924(&v42), (v17 & 1) != 0))
    {
      sub_1E328438C(*(v14 + 56) + 32 * v16, &v46);
    }

    else
    {
      v46 = 0u;
      v47 = 0u;
    }

    v5 &= v5 - 1;
    sub_1E375D84C(&v42);
    if (*(&v47 + 1))
    {
      if (swift_dynamicCast())
      {
        v39 = v43;
        v40 = v42;
        *&v46 = sub_1E3C7E9C0(1);
        *(&v46 + 1) = v18;
        sub_1E4207414();
        if (*(v14 + 16) && (v19 = sub_1E375D924(&v42), (v20 & 1) != 0))
        {
          sub_1E328438C(*(v14 + 56) + 32 * v19, &v46);
        }

        else
        {
          v46 = 0u;
          v47 = 0u;
        }

        sub_1E375D84C(&v42);
        if (*(&v47 + 1))
        {
          v21 = swift_dynamicCast();
          if (v21)
          {
            v22 = v42;
          }

          else
          {
            v22 = 0;
          }

          if (v21)
          {
            v23 = v43;
          }

          else
          {
            v23 = 0;
          }

          v37 = v23;
          v38 = v22;
        }

        else
        {
          sub_1E329505C(&v46);
          v37 = 0;
          v38 = 0;
        }

        v24 = v41;
        v25 = *(v41 + 16);
        if (*(v41 + 24) <= v25)
        {
          sub_1E3F0DB24(v25 + 1, 1);
          v24 = v48;
        }

        v41 = v24;
        sub_1E4207B44();
        sub_1E4206014();
        result = sub_1E4207BA4();
        v26 = v41 + 64;
        v27 = -1 << *(v41 + 32);
        v28 = result & ~v27;
        v29 = v28 >> 6;
        if (((-1 << v28) & ~*(v41 + 64 + 8 * (v28 >> 6))) == 0)
        {
          v31 = 0;
          v32 = (63 - v27) >> 6;
          while (++v29 != v32 || (v31 & 1) == 0)
          {
            v33 = v29 == v32;
            if (v29 == v32)
            {
              v29 = 0;
            }

            v31 |= v33;
            v34 = *(v26 + 8 * v29);
            if (v34 != -1)
            {
              v30 = __clz(__rbit64(~v34)) + (v29 << 6);
              goto LABEL_42;
            }
          }

          goto LABEL_45;
        }

        v30 = __clz(__rbit64((-1 << v28) & ~*(v41 + 64 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_42:
        *(v26 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
        v35 = (*(v41 + 48) + 16 * v30);
        *v35 = v13;
        v35[1] = v12;
        v36 = (*(v41 + 56) + 32 * v30);
        *v36 = v40;
        v36[1] = v39;
        v36[2] = v38;
        v36[3] = v37;
        ++*(v41 + 16);
      }

      else
      {
      }
    }

    else
    {

      sub_1E329505C(&v46);
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v41;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

void type metadata accessor for VUIActionRef()
{
  if (!qword_1ECF3C290)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1ECF3C290);
    }
  }
}

uint64_t sub_1E3F0D9C0()
{
  sub_1E3F0DAE0(&qword_1ECF3C2A8);
  sub_1E3F0DAE0(&qword_1ECF3C2B0);

  return sub_1E4207764();
}

uint64_t sub_1E3F0DAE0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for VUIActionRef();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E3F0DB24(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C2B8);
  v37 = a2;
  result = sub_1E4207724();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v35 = v2;
  v36 = v5;
  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_32;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      sub_1E373CBF0(0, (v34 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = v19[1];
    v21 = (*(v5 + 56) + 32 * v18);
    v22 = v21[1];
    v39 = *v21;
    v40 = *v19;
    v23 = v21[3];
    v38 = v21[2];
    if ((v37 & 1) == 0)
    {
    }

    sub_1E4207B44();
    sub_1E4206014();
    result = sub_1E4207BA4();
    v24 = -1 << *(v7 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
    {
      break;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = (*(v7 + 48) + 16 * v27);
    *v32 = v40;
    v32[1] = v20;
    v33 = (*(v7 + 56) + 32 * v27);
    *v33 = v39;
    v33[1] = v22;
    v33[2] = v38;
    v33[3] = v23;
    ++*(v7 + 16);
    v5 = v36;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v28 = 0;
  v29 = (63 - v24) >> 6;
  while (++v26 != v29 || (v28 & 1) == 0)
  {
    v30 = v26 == v29;
    if (v26 == v29)
    {
      v26 = 0;
    }

    v28 |= v30;
    v31 = *(v14 + 8 * v26);
    if (v31 != -1)
    {
      v27 = __clz(__rbit64(~v31)) + (v26 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

void *sub_1E3F0DDF4()
{
  v1 = OBJC_IVAR____TtC8VideosUI32SportsCanonicalBannerViewWrapper_backgroundView;
  OUTLINED_FUNCTION_5_0();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E3F0DE38(void *a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI32SportsCanonicalBannerViewWrapper_backgroundView;
  OUTLINED_FUNCTION_13_18();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = OBJC_IVAR____TtC8VideosUI32SportsCanonicalBannerViewWrapper_backgroundView;
  v6 = a1;
  OUTLINED_FUNCTION_5_0();
  [v1 vui:*&v1[v5] addSubview:v4 oldView:?];
  if (*&v1[v5])
  {
    [v1 vui_sendSubviewToBack_];
  }
}

uint64_t sub_1E3F0DED8()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_3_9(v2);
  v3 = OBJC_IVAR____TtC8VideosUI32SportsCanonicalBannerViewWrapper_backgroundView;
  OUTLINED_FUNCTION_5_0();
  v4 = *(v0 + v3);
  *(v1 + 24) = v4;
  v5 = v4;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E3F0DF64()
{
  v1 = OBJC_IVAR____TtC8VideosUI32SportsCanonicalBannerViewWrapper_titleView;
  OUTLINED_FUNCTION_5_0();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1E3F0DFB4()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_3_9(v2);
  v3 = OBJC_IVAR____TtC8VideosUI32SportsCanonicalBannerViewWrapper_titleView;
  OUTLINED_FUNCTION_5_0();
  v4 = *(v0 + v3);
  *(v1 + 24) = v4;
  v5 = v4;
  return OUTLINED_FUNCTION_27_0();
}

void sub_1E3F0E040(uint64_t a1, char a2, void (*a3)(id))
{
  v4 = *a1;
  v6 = (*a1 + 24);
  v5 = *v6;
  if (a2)
  {
    v7 = v5;
    a3(v5);
  }

  else
  {
    a3(*(*a1 + 24));
  }

  free(v4);
}

void *sub_1E3F0E0C0()
{
  v1 = OBJC_IVAR____TtC8VideosUI32SportsCanonicalBannerViewWrapper_contentView;
  OUTLINED_FUNCTION_5_0();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E3F0E110(void *a1, uint64_t *a2)
{
  v5 = *a2;
  OUTLINED_FUNCTION_13_18();
  v6 = *&v2[v5];
  *&v2[v5] = a1;
  v7 = *a2;
  v8 = a1;
  OUTLINED_FUNCTION_5_0();
  [v2 vui:*&v2[v7] addSubview:v6 oldView:?];
}

uint64_t sub_1E3F0E198()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_3_9(v2);
  v3 = OBJC_IVAR____TtC8VideosUI32SportsCanonicalBannerViewWrapper_contentView;
  OUTLINED_FUNCTION_5_0();
  v4 = *(v0 + v3);
  *(v1 + 24) = v4;
  v5 = v4;
  return OUTLINED_FUNCTION_27_0();
}

uint64_t sub_1E3F0E224()
{
  swift_getObjectType();
  v9.receiver = v0;
  v9.super_class = type metadata accessor for SportsCanonicalBannerViewWrapper();
  objc_msgSendSuper2(&v9, sel_invalidateIntrinsicContentSize);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1E3F0E3C8;
  *(v3 + 24) = v2;
  v8[4] = sub_1E379E500;
  v8[5] = v3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1E3839B50;
  v8[3] = &block_descriptor_134;
  v4 = _Block_copy(v8);
  v5 = v0;

  [ObjCClassFromMetadata vui:v4 performWithoutAnimation:?];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_1E3F0E3C8()
{
  v1 = *(v0 + 16);
  v2 = [v1 superview];
  [v2 invalidateIntrinsicContentSize];

  v3 = [v1 superview];
  [v3 vui_setNeedsLayout];
}

double sub_1E3F0E4A4(double a1)
{
  v3 = MEMORY[0x1E69E7D40];
  v4 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x98))();
  if (v4)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_17_4();
    [v7 v8];
  }

  v9 = (*((*v3 & *v1) + 0x80))();
  if (v9)
  {
    v10 = v9;
    v11 = OUTLINED_FUNCTION_17_4();
    [v12 v13];
  }

  return a1;
}

id sub_1E3F0E5E4(char a1, double a2, double a3)
{
  if ((a1 & 1) == 0)
  {
    [v3 bounds];
    v8 = v7;
    OUTLINED_FUNCTION_4_133();
    v10 = (*(v9 + 104))();
    v11 = OUTLINED_FUNCTION_9_159();
    [v12 v13];

    OUTLINED_FUNCTION_4_133();
    v15 = (*(v14 + 128))();
    if (v15)
    {
      OUTLINED_FUNCTION_79_25(v15);
      v30.origin.x = OUTLINED_FUNCTION_9_159();
      CGRectGetWidth(v30);
      v16 = OUTLINED_FUNCTION_76_22();
      [v17 v18];
    }

    OUTLINED_FUNCTION_4_133();
    v20 = (*(v19 + 152))();
    if (v20)
    {
      OUTLINED_FUNCTION_79_25(v20);
      v22 = v21;
      v31.origin.x = OUTLINED_FUNCTION_9_159();
      MinY = CGRectGetMinY(v31);
      v32.origin.x = OUTLINED_FUNCTION_9_159();
      v24 = MinY + CGRectGetHeight(v32) - v22;
      v33.origin.x = OUTLINED_FUNCTION_9_159();
      CGRectGetWidth(v33);
      v25 = OUTLINED_FUNCTION_76_22();
      [v26 v27];
    }
  }

  v29.receiver = v3;
  v29.super_class = type metadata accessor for SportsCanonicalBannerViewWrapper();
  return objc_msgSendSuper2(&v29, sel_vui_layoutSubviews_computationOnly_, a1 & 1, a2, a3);
}

id sub_1E3F0E7E0()
{
  OUTLINED_FUNCTION_0_8();
  *(v0 + OBJC_IVAR____TtC8VideosUI32SportsCanonicalBannerViewWrapper_backgroundView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI32SportsCanonicalBannerViewWrapper_titleView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI32SportsCanonicalBannerViewWrapper_contentView) = 0;
  v5 = type metadata accessor for SportsCanonicalBannerViewWrapper();
  v1 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v2, v3, v1, v0, v5);
}

id sub_1E3F0E874(void *a1)
{
  *&v1[OBJC_IVAR____TtC8VideosUI32SportsCanonicalBannerViewWrapper_backgroundView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI32SportsCanonicalBannerViewWrapper_titleView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI32SportsCanonicalBannerViewWrapper_contentView] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SportsCanonicalBannerViewWrapper();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1E3F0E928()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SportsCanonicalBannerViewWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1E3F0E9EC(uint64_t a1)
{
  v2 = type metadata accessor for SportsCanonicalBannerView();
  v3 = OUTLINED_FUNCTION_17_2(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v4 = OUTLINED_FUNCTION_27_0();
  sub_1E3F161CC(v4, v5);
  v6 = sub_1E4201214();
  sub_1E42011F4();

  sub_1E3F176DC(a1);
  return v6;
}

id sub_1E3F0EA84(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + qword_1ECF68390);
  v5 = *(v4 - 8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_26_2();
  (*(v5 + 16))(v2, a1, v4);
  v7 = sub_1E4201214();
  sub_1E42011F4();

  v8 = OUTLINED_FUNCTION_27_0();
  v9(v8);
  return v7;
}

void sub_1E3F0EC18()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for WrapperHostingView();
  objc_msgSendSuper2(&v3, sel_invalidateIntrinsicContentSize);
  v1 = [v0 superview];
  [v1 invalidateIntrinsicContentSize];

  v2 = [v0 superview];
  [v2 vui_setNeedsLayout];
}

void sub_1E3F0ECF4(void *a1)
{
  v1 = a1;
  sub_1E3F0EC18();
}

id sub_1E3F0ED3C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WrapperHostingView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1E3F0EDB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_8();
  v5 = type metadata accessor for SportsCanonicalBannerView();
  v6 = OUTLINED_FUNCTION_17_2(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = (v8 - v7);
  v10 = objc_allocWithZone(type metadata accessor for SportsCanonicalBannerViewWrapper());
  v11 = OUTLINED_FUNCTION_2_0();
  v14 = [v12 v13];

  sub_1E3F0EF84(a1, a3, v9);
  v15 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C2D8));
  v16 = sub_1E3F0E9EC(v9);
  v17 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v14) + 0xA0))(v16);
  type metadata accessor for ProductGradientView();
  v18 = sub_1E3890DAC();
  (*((*v17 & *v14) + 0x70))(v18);
  return v14;
}

uint64_t type metadata accessor for SportsCanonicalBannerView()
{
  result = qword_1ECF68420;
  if (!qword_1ECF68420)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3F0EF84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for SportsCanonicalBannerView();
  v7 = v6[5];
  *(a3 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20);
  swift_storeEnumTagMultiPayload();
  v8 = v6[6];
  *(a3 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299D8);
  swift_storeEnumTagMultiPayload();
  *(a3 + v6[10]) = 0;
  *(a3 + v6[11]) = 0;
  *(a3 + v6[12]) = 0;
  v9 = (a3 + v6[13]);
  sub_1E42038E4();
  *v9 = v25;
  v9[1] = v26;
  v10 = a3 + v6[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AC60);
  sub_1E42038E4();
  *v10 = v25;
  *(v10 + 1) = v26;
  *(a3 + v6[15]) = 0;
  *(a3 + v6[16]) = 0;
  *(a3 + v6[17]) = 0;
  *(a3 + v6[18]) = 0;
  *(a3 + v6[19]) = 0;
  *(a3 + v6[20]) = 0;
  *(a3 + v6[21]) = 0;
  *(a3 + v6[22]) = 0;
  *(a3 + v6[24]) = a2;
  v11 = (a3 + v6[7]);
  type metadata accessor for SportsCanonicalBannerPresenter(0);
  sub_1E3F174F4(&qword_1ECF3C2E0, type metadata accessor for SportsCanonicalBannerPresenter);

  OUTLINED_FUNCTION_69_28();
  *v11 = sub_1E42010C4();
  v11[1] = v12;
  *(a3 + v6[8]) = a1;
  v13 = a3 + v6[9];
  *v13 = sub_1E379F17C;
  *(v13 + 1) = 0;
  v13[16] = 0;
  v14 = *(*a1 + 392);

  v16 = v14(v15);
  if (!v16)
  {
    goto LABEL_4;
  }

  if (*v16 != _TtC8VideosUI31SportsCanonicalBannerViewLayout)
  {

LABEL_4:
    type metadata accessor for SportsCanonicalBannerViewLayout();
    sub_1E3D3E7F8();
  }

  v17 = (a3 + v6[23]);
  type metadata accessor for SportsCanonicalBannerViewLayout();
  OUTLINED_FUNCTION_22_88();
  sub_1E3F174F4(v18, v19);
  *v17 = sub_1E42010C4();
  v17[1] = v20;
  sub_1E3F111C8();
  v21 = v17[1];
  type metadata accessor for MediaShowcaseHostingView();

  v23 = sub_1E40037C8(v22);

  result = OUTLINED_FUNCTION_13_18();
  *(v21 + 112) = v23;
  return result;
}

uint64_t sub_1E3F0F328()
{
  result = sub_1E39D7838(&unk_1F5D8D200);
  qword_1EE28C7C8 = result;
  return result;
}

void sub_1E3F0F350()
{
  OUTLINED_FUNCTION_9_4();
  v5 = v4;
  v54[4] = v6;
  v54[3] = v7;
  v57 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C2E8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8_4();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C2F0);
  v12 = OUTLINED_FUNCTION_17_2(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v54 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C2F8);
  OUTLINED_FUNCTION_17_2(v19);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  v22 = v54 - v21;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C300);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_49_2();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C308);
  OUTLINED_FUNCTION_70_27(v24);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_31_2();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C310);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v29);
  OUTLINED_FUNCTION_5_0();
  if ((*(v5 + 120) & 0xFE) == 2)
  {
    swift_storeEnumTagMultiPayload();
    sub_1E3F11958();
    OUTLINED_FUNCTION_53();
    sub_1E4201F44();
  }

  else
  {
    v54[0] = v26;
    v54[1] = v9;
    v54[2] = v0;
    *v22 = sub_1E4201B84();
    *(v22 + 1) = 0;
    v22[16] = 1;
    v30 = &v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C338) + 44)];
    sub_1E3F0F820();
    OUTLINED_FUNCTION_81_24(v18, v15);
    OUTLINED_FUNCTION_81_24(v15, v30);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C340);
    OUTLINED_FUNCTION_68_30(v31);
    OUTLINED_FUNCTION_112_1();
    sub_1E325F69C(v32, v33);
    OUTLINED_FUNCTION_112_1();
    sub_1E325F69C(v34, v35);
    sub_1E4203DA4();
    OUTLINED_FUNCTION_51_3();
    OUTLINED_FUNCTION_99_1();
    sub_1E3741EA0(v22, v2, &qword_1ECF3C2F8);
    memcpy((v2 + *(v55 + 36)), v58, 0x70uLL);
    sub_1E3D3E45C(v59);
    if (v60)
    {
      OUTLINED_FUNCTION_5_8();
    }

    else
    {
      v38.n128_u64[0] = v59[2];
      v39.n128_u64[0] = v59[3];
      v36.n128_u64[0] = v59[0];
      v37.n128_u64[0] = v59[1];
      j_nullsub_1(v36, v37, v38, v39);
    }

    OUTLINED_FUNCTION_3();
    v40 = v54[0];
    v41 = sub_1E4202734();
    sub_1E3741EA0(v2, v1, &qword_1ECF3C300);
    v42 = (v1 + *(v56 + 36));
    *v42 = v41;
    OUTLINED_FUNCTION_11_4(v42);
    v43 = sub_1E42013E4();
    v44 = sub_1E4202734();
    sub_1E3741EA0(v1, v3, &qword_1ECF3C308);
    v45 = v3 + *(v40 + 36);
    *v45 = v43;
    *(v45 + 8) = v44;
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v46, v47, v48);
    OUTLINED_FUNCTION_19_1();
    sub_1E3743538(v49, v50, v51);
    swift_storeEnumTagMultiPayload();
    sub_1E3F11958();
    OUTLINED_FUNCTION_125();
    sub_1E4201F44();
    OUTLINED_FUNCTION_21_1();
    sub_1E325F69C(v52, v53);
  }

  OUTLINED_FUNCTION_10_3();
}

void sub_1E3F0F820()
{
  OUTLINED_FUNCTION_31_1();
  v83 = v5;
  v7 = v6;
  v77 = v8;
  v84 = v9;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  v75 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_5();
  v74 = v12;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C5A8);
  OUTLINED_FUNCTION_17_2(v15);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_49_2();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C5B0);
  OUTLINED_FUNCTION_70_27(v17);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_77_0();
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C5B8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238);
  OUTLINED_FUNCTION_0_10();
  v24 = v23;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v71 - v26;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C5C0);
  OUTLINED_FUNCTION_0_10();
  v78 = v28;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_20_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C5C8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_1();
  MEMORY[0x1EEE9AC00](v31);
  if (v7)
  {
    v80 = v32;

    sub_1E3EB9BB4(v85);
    v33 = OUTLINED_FUNCTION_18();
    sub_1E37E8BE8(v7, v85, 0, v33 & 1, 0, 0, v27);
    sub_1E375C31C(v85);
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_41_0();
    View.accessibilityIdentifier(key:location:)();
    (*(v24 + 8))(v27, v22);
    OUTLINED_FUNCTION_36();
    (*(v34 + 352))();
    sub_1E4203DA4();
    OUTLINED_FUNCTION_51_3();
    OUTLINED_FUNCTION_99_1();
    (*(v78 + 32))(v1, v0, v79);
    memcpy((v1 + *(v80 + 36)), v86, 0x70uLL);
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v35, v36, v37);
    OUTLINED_FUNCTION_19_1();
    sub_1E3743538(v38, v39, v40);
    swift_storeEnumTagMultiPayload();
    sub_1E3F1753C();
    sub_1E3F1761C();
    OUTLINED_FUNCTION_59_33();
    sub_1E4201F44();

LABEL_5:
    OUTLINED_FUNCTION_21_1();
    sub_1E325F69C(v60, v61);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C5D0);
    OUTLINED_FUNCTION_114();
    __swift_storeEnumTagSinglePayload(v62, v63, v64, v65);
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v41 = v73;
  v42 = v74;
  v43 = v75;
  v44 = v76;
  v72 = v4;
  v79 = v2;
  v78 = v3;
  if (v77)
  {
    v80 = v32;

    v45 = sub_1E4201B84();
    v46 = v79;
    *v79 = v45;
    *(v46 + 8) = 0;
    *(v46 + 16) = 1;
    v47 = v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C5D8) + 44);
    OUTLINED_FUNCTION_18();
    v48 = v41;
    sub_1E3F23370();
    v49 = *(v43 + 16);
    v49(v42, v48, v44);
    v49(v47, v42, v44);
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C5E0);
    OUTLINED_FUNCTION_68_30(v50);
    v51 = *(v43 + 8);
    v51(v48, v44);
    v51(v42, v44);
    sub_1E3D3DD40();
    OUTLINED_FUNCTION_26_0();
    (*(v52 + 248))();

    sub_1E4203DA4();
    OUTLINED_FUNCTION_51_3();
    OUTLINED_FUNCTION_99_1();
    v53 = v72;
    sub_1E3741EA0(v46, v72, &qword_1ECF3C5A8);
    memcpy((v53 + *(v82 + 36)), v86, 0x70uLL);
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v54, v55, v56);
    OUTLINED_FUNCTION_19_1();
    sub_1E3743538(v57, v58, v59);
    swift_storeEnumTagMultiPayload();
    sub_1E3F1753C();
    sub_1E3F1761C();
    OUTLINED_FUNCTION_59_33();
    sub_1E4201F44();

    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C5D0);
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_25_2();

  __swift_storeEnumTagSinglePayload(v66, v67, v68, v69);
}

uint64_t sub_1E3F10098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = **a1;
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  v7 = *(*a1 + 24);
  v8 = *(*a1 + 32);
  v9 = *(*a1 + 40);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  *(a2 + 40) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C518);
  sub_1E3743538(*(a1 + 8), a2 + v10[12], &qword_1ECF3C4F8);
  sub_1E3743538(*(a1 + 16), a2 + v10[16], &qword_1ECF3C4F0);
  v11 = v10[20];
  v12 = *(a1 + 24);
  v14 = v12[1];
  v13 = v12[2];
  v15 = *v12;
  *&v21[11] = *(v12 + 43);
  v20[1] = v14;
  *v21 = v13;
  v20[0] = v15;
  memmove((a2 + v11), v12, 0x3BuLL);
  sub_1E3743538(*(a1 + 32), a2 + v10[24], &qword_1ECF3C4E8);
  sub_1E3743538(*(a1 + 40), a2 + v10[28], &qword_1ECF3C4E0);
  v16 = v10[32];
  v17 = *(a1 + 48);
  memcpy(__dst, v17, 0x5AuLL);
  memmove((a2 + v16), v17, 0x5AuLL);
  sub_1E3F172BC(v4, v5);
  sub_1E3743538(v20, v19, &qword_1ECF3C510);
  return sub_1E3743538(__dst, v19, &qword_1ECF3C508);
}

uint64_t sub_1E3F10248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*a1 + 8);
  v5 = *(*a1 + 16);
  v22 = *(*a1 + 24);
  v6 = *(*a1 + 32);
  v7 = *(*a1 + 40);
  *a2 = **a1;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v22;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C5A0);
  sub_1E3743538(*(a1 + 8), a2 + v8[12], &qword_1ECF3C4F8);
  sub_1E3743538(*(a1 + 16), a2 + v8[16], &qword_1ECF3C4F0);
  v9 = (a2 + v8[20]);
  v11 = *(a1 + 24);
  v10 = *(a1 + 32);
  v12 = *v11;
  v13 = v11[1];
  v14 = v11[2];
  *v9 = *v11;
  v9[1] = v13;
  v9[2] = v14;
  v15 = v8[24];
  v16 = *(v10 + 43);
  v18 = v10[1];
  v17 = v10[2];
  v24[0] = *v10;
  v24[1] = v18;
  v25[0] = v17;
  *(v25 + 11) = v16;
  memmove((a2 + v15), v10, 0x3BuLL);
  sub_1E3743538(*(a1 + 40), a2 + v8[28], &qword_1ECF3C4E8);
  sub_1E3743538(*(a1 + 48), a2 + v8[32], &qword_1ECF3C4E0);
  v19 = v8[36];
  v20 = *(a1 + 56);
  memcpy(__dst, v20, 0x5AuLL);
  memmove((a2 + v19), v20, 0x5AuLL);

  sub_1E3F17474(v12);
  sub_1E3743538(v24, v23, &qword_1ECF3C510);
  return sub_1E3743538(__dst, v23, &qword_1ECF3C508);
}

uint64_t sub_1E3F10430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  v5 = *(*a1 + 24);
  v7 = *(*a1 + 32);
  v8 = *(*a1 + 40);
  *a2 = **a1;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v5;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C598);
  sub_1E3743538(*(a1 + 8), a2 + v9[12], &qword_1ECF3C4F8);
  sub_1E3743538(*(a1 + 16), a2 + v9[16], &qword_1ECF3C4F0);
  sub_1E3743538(*(a1 + 24), a2 + v9[20], &qword_1ECF3C4E8);
  sub_1E3743538(*(a1 + 32), a2 + v9[24], &qword_1ECF3C4E0);
  v10 = v9[28];
  v11 = *(a1 + 40);
  memcpy(__dst, v11, 0x5AuLL);
  memmove((a2 + v10), v11, 0x5AuLL);

  return sub_1E3743538(__dst, &v13, &qword_1ECF3C508);
}

void sub_1E3F105B0()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C610);
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_31_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C618);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8_4();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C620);
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_14_5();
  v17 = sub_1E38D5E2C(v6, v4 & 1);
  v18 = *v8;
  if (v17)
  {
    v19 = (*(v18 + 744))();
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C628);
    OUTLINED_FUNCTION_1_11();
    OUTLINED_FUNCTION_69_28();
    v23 = sub_1E374AD40(v21, v22);
    sub_1E39B87A4(v19);

    (*(v15 + 16))(v0, v2, v13);
    OUTLINED_FUNCTION_35_4();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_3_16();
    swift_getOpaqueTypeConformance2();
    *&v29[0] = v20;
    *(&v29[0] + 1) = v23;
    OUTLINED_FUNCTION_8_3();
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_53();
    sub_1E4201F44();
    (*(v15 + 8))(v2, v13);
  }

  else
  {
    v24 = (*(v18 + 792))();
    memset(v29, 0, sizeof(v29));
    v30 = 1;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C628);
    OUTLINED_FUNCTION_1_11();
    v27 = sub_1E374AD40(v26, &qword_1ECF3C628);
    sub_1E3A6929C(v24, 0, 0, 1, v29, v25, v27);
    (*(v10 + 16))(v0, v1, v28);
    OUTLINED_FUNCTION_35_4();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_3_16();
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_8_3();
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_19_1();
    sub_1E4201F44();
    (*(v10 + 8))(v1, v28);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F1094C()
{
  OUTLINED_FUNCTION_9_4();
  v1 = v0;
  v55 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C460);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = (v47 - v5);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C468);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v8);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C470);
  OUTLINED_FUNCTION_0_10();
  v53 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v11);
  *v6 = sub_1E4203DA4();
  v6[1] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C478);
  v48 = v6;
  sub_1E3F10E54();
  v13 = *(*v1 + 200);
  *&v14 = COERCE_DOUBLE(v13());
  v16 = v15;
  *&v17 = COERCE_DOUBLE(v13());
  v19 = v18;
  v20 = *(*v1 + 304);
  v21 = v20();
  v22 = OUTLINED_FUNCTION_70_27(v21);
  v56 = v23;
  *&v57 = COERCE_DOUBLE((v20)(v22));
  v25 = v24;
  *&v26 = COERCE_DOUBLE(v20());
  v28 = v27;
  sub_1E4203DA4();
  v49 = v14;
  v29 = *&v14;
  if (v16)
  {
    v29 = -INFINITY;
  }

  v47[1] = v17;
  v30 = *&v17;
  if (v19)
  {
    v30 = v29;
  }

  if (v29 > v30)
  {
    goto LABEL_17;
  }

  v31 = v58;
  if (v56)
  {
    v31 = -INFINITY;
  }

  v32 = *&v57;
  if (v25)
  {
    v32 = v31;
  }

  v33 = *&v26;
  if (v28)
  {
    v33 = v32;
  }

  if (v31 > v32 || v32 > v33)
  {
LABEL_17:
    sub_1E4206804();
    v35 = sub_1E42026D4();
    OUTLINED_FUNCTION_108();
  }

  sub_1E42015C4();
  v36 = v50;
  sub_1E3741EA0(v48, v50, &qword_1ECF3C460);
  v37 = memcpy((v36 + *(v51 + 36)), v59, 0x70uLL);
  (*(*v1 + 552))(v60, v37);
  if ((v61 & 1) == 0)
  {
    sub_1E3952BE8(v60[0], v60[1], v60[2], v60[3]);
  }

  sub_1E3F17188();
  v38 = v52;
  sub_1E3E361E8();
  v39 = sub_1E325F69C(v36, &qword_1ECF3C468);
  (*(*v1 + 152))(v62, v39);
  if (v63)
  {
    OUTLINED_FUNCTION_5_8();
  }

  else
  {
    v42.n128_u64[0] = v62[2];
    v43.n128_u64[0] = v62[3];
    v40.n128_u64[0] = v62[0];
    v41.n128_u64[0] = v62[1];
    j_nullsub_1(v40, v41, v42, v43);
  }

  OUTLINED_FUNCTION_3();
  v44 = sub_1E4202734();
  v45 = v55;
  (*(v53 + 32))(v55, v38, v54);
  v46 = (v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C490) + 36));
  *v46 = v44;
  OUTLINED_FUNCTION_11_4(v46);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E3F10E54()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF289B8);
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v12 = (v10 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v21[-v14];
  v16 = sub_1E42036E4();
  KeyPath = swift_getKeyPath();
  memset(v21, 0, 41);
  v21[41] = 1;

  sub_1E382A9B4(v3, v21, v1, v15);
  v18 = *(v8 + 16);
  v18(v12, v15, v6);
  *v5 = v16;
  *(v5 + 8) = 256;
  *(v5 + 16) = v1;
  *(v5 + 24) = KeyPath;
  *(v5 + 32) = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C498);
  v18(v5 + *(v19 + 48), v12, v6);

  sub_1E3F17240(KeyPath, 0);
  v20 = *(v8 + 8);
  v20(v15, v6);
  v20(v12, v6);

  sub_1E38D5FEC(KeyPath, 0);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3F11040()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 440))();
  if (v1)
  {
    v2 = v1;
    result = sub_1E32AE9B0(v1);
    v4 = result;
    for (i = 0; ; ++i)
    {
      if (v4 == i)
      {

        return 0;
      }

      if ((v2 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x1E6911E60](i, v2);
        v6 = result;
      }

      else
      {
        if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v6 = *(v2 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      v8 = &unk_1F5D5D528;
      v9 = &off_1F5D5C858;
      v7[0] = 11;
      sub_1E3E07E10();
      sub_1E39C2B80();
      __swift_destroy_boxed_opaque_existential_1(v7);
      if (v10 != 3)
      {
        v7[0] = v10;
        sub_1E3858078();
        if (sub_1E4205E84())
        {

          return v6;
        }
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

void sub_1E3F111C8()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  OUTLINED_FUNCTION_36();
  v10 = (*(v9 + 464))();
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v12 = sub_1E32AE9B0(v11);
  if (!v12)
  {
LABEL_63:

    v45 = type metadata accessor for SportsCanonicalBannerView();
    v56 = *(v1 + *(v45 + 60));
    MEMORY[0x1EEE9AC00](v45);
    *(&v46 - 2) = v1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29420);
    sub_1E4148DE0(sub_1E3F176D4);

    OUTLINED_FUNCTION_25_2();
    return;
  }

  v14 = v12;
  v15 = 0;
  v54 = v11 + 32;
  v55 = v11 & 0xFFFFFFFFFFFFFF8;
  v49 = (v4 + 16);
  v47 = v0 + 8;
  v48 = (v4 + 8);
  v16 = v11 & 0xC000000000000001;
  *&v13 = 136315138;
  v46 = v13;
  v52 = v11;
  v53 = v11 & 0xC000000000000001;
  v50 = v8;
  v51 = v2;
  while (1)
  {
    if (v16)
    {
      v17 = MEMORY[0x1E6911E60](v15, v11);
      v19 = v17;
    }

    else
    {
      if (v15 >= *(v55 + 16))
      {
        goto LABEL_65;
      }

      v19 = *(v54 + 8 * v15);
    }

    if (__OFADD__(v15++, 1))
    {
      break;
    }

    v21 = v19[49];
    if ((v21 - 53) >= 4)
    {
      switch(v21)
      {
        case 3:
          if (*v19 != _TtC8VideosUI13TextViewModel)
          {

            v19 = 0;
          }

          v27 = *(type metadata accessor for SportsCanonicalBannerView() + 84);
          goto LABEL_25;
        case 4:
          if (*v19 != _TtC8VideosUI13TextViewModel)
          {

            v19 = 0;
          }

          v27 = *(type metadata accessor for SportsCanonicalBannerView() + 76);
          goto LABEL_25;
        case 11:
          if (*v19 != _TtC8VideosUI13TextViewModel)
          {

            v19 = 0;
          }

          v27 = *(type metadata accessor for SportsCanonicalBannerView() + 44);
          goto LABEL_25;
        case 15:
          if (*v19 != _TtC8VideosUI13TextViewModel)
          {

            v19 = 0;
          }

          v27 = *(type metadata accessor for SportsCanonicalBannerView() + 68);
          goto LABEL_25;
        case 17:
          if (*v19 != _TtC8VideosUI13TextViewModel)
          {

            v19 = 0;
          }

          v27 = *(type metadata accessor for SportsCanonicalBannerView() + 80);
          goto LABEL_25;
        case 23:
          if (*v19 != _TtC8VideosUI13TextViewModel)
          {

            v19 = 0;
          }

          v27 = *(type metadata accessor for SportsCanonicalBannerView() + 72);
          goto LABEL_25;
      }

      if (v21 != 50)
      {
        if (v21 == 91)
        {
          v28 = (*(*v19 + 464))(v17, v18);

          v29 = *(type metadata accessor for SportsCanonicalBannerView() + 48);
        }

        else
        {
          if (v21 != 241)
          {
            if (v21 == 234)
            {
              type metadata accessor for SportsCanonicalBannerScoreboardViewModel();
              v22 = swift_dynamicCastClass();
              if (v22)
              {
                v23 = v22;
                v24 = *(type metadata accessor for SportsCanonicalBannerView() + 60);

                *(v1 + v24) = v23;
                v25 = *(*v23 + 1936);

                v25(v26);
                v11 = v52;
              }

              else
              {
                v44 = *(type metadata accessor for SportsCanonicalBannerView() + 60);

                *(v1 + v44) = 0;
              }
            }

            else
            {
              if (_MergedGlobals_251 != -1)
              {
                OUTLINED_FUNCTION_27_82();
                swift_once();
              }

              v30 = qword_1EE28C7C8;
              LOWORD(v56) = v21;
              if (*(qword_1EE28C7C8 + 16))
              {
                v31 = *(qword_1EE28C7C8 + 40);
                sub_1E37414E0();
                sub_1E4205DA4();
                OUTLINED_FUNCTION_60_32();
                while (1)
                {
                  v33 = v32 & v2;
                  if (((*(v31 + (((v32 & v2) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v32 & v2)) & 1) == 0)
                  {
                    break;
                  }

                  v57 = *(*(v30 + 48) + 2 * v33);
                  sub_1E3741534();
                  v34 = sub_1E4205E84();
                  v32 = v33 + 1;
                  if (v34)
                  {

                    goto LABEL_59;
                  }
                }
              }

              v35 = sub_1E3E37F30();
              v36 = v50;
              v2 = v51;
              (*v49)(v50, v35, v51);

              v37 = sub_1E41FFC94();
              v38 = sub_1E4206814();

              if (os_log_type_enabled(v37, v38))
              {
                v39 = swift_slowAlloc();
                v40 = swift_slowAlloc();
                OUTLINED_FUNCTION_78_20(v40);
                v43 = sub_1E3270FC8(v41, v42, &v56);

                *(v39 + 4) = v43;
                v2 = v51;
                _os_log_impl(&dword_1E323F000, v37, v38, "SportsCanonicalBannerView: unhandled view model type [%s]", v39, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v40);
                v36 = v50;
                OUTLINED_FUNCTION_6_0();
                OUTLINED_FUNCTION_6_0();
              }

              (*v48)(v36, v2);
LABEL_59:
              v11 = v52;
            }

            goto LABEL_61;
          }

          type metadata accessor for SportStatsViewModel();
          v28 = swift_dynamicCastClass();
          if (!v28)
          {
          }

          v29 = *(type metadata accessor for SportsCanonicalBannerView() + 64);
        }

        *(v1 + v29) = v28;
LABEL_61:
        v16 = v53;
        goto LABEL_62;
      }
    }

    v27 = *(type metadata accessor for SportsCanonicalBannerView() + 40);
LABEL_25:

    *(v1 + v27) = v19;
LABEL_62:
    if (v15 == v14)
    {
      goto LABEL_63;
    }
  }

  __break(1u);
LABEL_65:
  __break(1u);
}

unint64_t sub_1E3F11958()
{
  result = qword_1ECF3C318;
  if (!qword_1ECF3C318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C310);
    sub_1E3F119E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C318);
  }

  return result;
}

unint64_t sub_1E3F119E4()
{
  result = qword_1ECF3C320;
  if (!qword_1ECF3C320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C308);
    sub_1E3F11A70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C320);
  }

  return result;
}

unint64_t sub_1E3F11A70()
{
  result = qword_1ECF3C328;
  if (!qword_1ECF3C328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C300);
    sub_1E374AD40(&qword_1ECF3C330, &unk_1ECF3C2F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C328);
  }

  return result;
}

uint64_t sub_1E3F11B28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B4C8);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_36();
  (*(v8 + 1640))();
  sub_1E374AD40(&qword_1ECF3C600, &qword_1ECF2B4C8);
  v9 = sub_1E42006B4();
  (*(v6 + 8))(v2, v4);
  if (*(a2 + *(type metadata accessor for SportsCanonicalBannerView() + 64)))
  {
    OUTLINED_FUNCTION_8();
    v11 = *(v10 + 1120);

    v11(v9);
  }
}

void sub_1E3F11CC0()
{
  OUTLINED_FUNCTION_9_4();
  v5 = v0;
  v57 = v6;
  v7 = type metadata accessor for SportsCanonicalBannerView();
  OUTLINED_FUNCTION_0_10();
  v54 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v55 = v10;
  v56 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33D80);
  OUTLINED_FUNCTION_17_2(v11);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_14_5();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C348);
  OUTLINED_FUNCTION_17_2(v13);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_26_2();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C350);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_20_1();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C358);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_49_2();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C360);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_31_2();
  sub_1E3F12158();
  OUTLINED_FUNCTION_36();
  v20 = (*(v19 + 1576))();
  if (v20)
  {
    v21 = v20;
    v22 = [v20 vuiUserInterfaceStyle];

    sub_1E3C5F680(v22, v4);
  }

  else
  {
    sub_1E4200B44();
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  }

  sub_1E3741EA0(v4, v1 + *(v15 + 36), &qword_1ECF33D80);
  v27 = OUTLINED_FUNCTION_125();
  sub_1E3741EA0(v27, v28, v29);
  if (sub_1E39C408C(40))
  {

    sub_1E3D3E4DC(&v59);
  }

  else
  {
    OUTLINED_FUNCTION_8();
    (*(v30 + 152))(&v59);
  }

  v32 = v61;
  v31 = v62;
  v34 = v59;
  v33 = v60;
  v58 = v63;
  if (v63)
  {
    OUTLINED_FUNCTION_5_8();
  }

  else
  {
    v35 = v5 + *(v7 + 56);
    v36 = *v35;
    v37 = *(v35 + 8);
    LOBYTE(v59) = v36;
    v60 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A8F8);
    sub_1E42038F4();
    if (v64)
    {
      v40.n128_f64[0] = 0.0;
    }

    else
    {
      v40.n128_f64[0] = v32;
    }

    v38.n128_u64[0] = v34;
    v39.n128_u64[0] = v33;
    v41.n128_u64[0] = v31;
    j_nullsub_1(v38, v39, v40, v41);
  }

  OUTLINED_FUNCTION_3();
  v42 = sub_1E4202734();
  sub_1E3741EA0(v1, v3, &qword_1ECF3C350);
  v43 = (v3 + *(v52 + 36));
  *v43 = v42;
  OUTLINED_FUNCTION_11_4(v43);
  v44 = v5;
  v45 = v56;
  sub_1E3F161CC(v44, v56);
  v46 = (*(v54 + 80) + 16) & ~*(v54 + 80);
  v47 = swift_allocObject();
  sub_1E3F16230(v45, v47 + v46);
  sub_1E3741EA0(v3, v2, &qword_1ECF3C358);
  v48 = (v2 + *(v53 + 36));
  *v48 = sub_1E3F16294;
  v48[1] = v47;
  v49 = sub_1E42013E4();
  LOBYTE(v46) = sub_1E4202734();
  v50 = v57;
  sub_1E3741EA0(v2, v57, &qword_1ECF3C360);
  v51 = v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C368) + 36);
  *v51 = v49;
  *(v51 + 8) = v46;
  OUTLINED_FUNCTION_10_3();
}

void sub_1E3F12158()
{
  OUTLINED_FUNCTION_31_1();
  v5 = v4;
  v63 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C4A0);
  v8 = OUTLINED_FUNCTION_17_2(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v57 - v13;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C440);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_21_3();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C420);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_14_5();
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C4A8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_44();
  v61 = v18;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C4B0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C3F0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_20_1();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C400);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_49_2();
  v23 = *(v5 + *(type metadata accessor for SportsCanonicalBannerView() + 92) + 8);
  OUTLINED_FUNCTION_5_0();
  v24 = *(v23 + 120);
  if (v24 == 3)
  {
    *v3 = sub_1E4201B84();
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    v36 = v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C4B8) + 44);
    *v14 = sub_1E4201D54();
    *(v14 + 1) = 0;
    v14[16] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C4C0);
    sub_1E3F142A0();
    OUTLINED_FUNCTION_81_24(v14, v11);
    OUTLINED_FUNCTION_81_24(v11, v36);
    v37 = v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C4C8) + 48);
    *v37 = 0;
    *(v37 + 8) = 0;
    OUTLINED_FUNCTION_112_1();
    sub_1E325F69C(v38, v39);
    OUTLINED_FUNCTION_112_1();
    sub_1E325F69C(v40, v41);
    OUTLINED_FUNCTION_19_1();
    sub_1E3743538(v42, v43, v44);
    swift_storeEnumTagMultiPayload();
    sub_1E3F16F0C();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_21_1();
    sub_1E374AD40(v45, v46);
    OUTLINED_FUNCTION_33_74();
    sub_1E4201F44();
    OUTLINED_FUNCTION_21_1();
  }

  else
  {
    if (v24 == 2)
    {
      *v1 = sub_1E4201D44();
      *(v1 + 8) = 0;
      *(v1 + 16) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C4D8);
      sub_1E3F127B0();
      v25 = (v1 + *(v21 + 36));
      v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF291E0) + 28);
      v27 = *MEMORY[0x1E697DBA8];
      sub_1E4200B44();
      OUTLINED_FUNCTION_2();
      (*(v28 + 104))(v25 + v26, v27);
      *v25 = swift_getKeyPath();
      v29 = &qword_1ECF3C400;
      OUTLINED_FUNCTION_21_1();
      sub_1E3743538(v30, v31, v32);
      swift_storeEnumTagMultiPayload();
      sub_1E3F16F98();
      sub_1E3F1707C();
      OUTLINED_FUNCTION_72_28();
      sub_1E4201F44();
      OUTLINED_FUNCTION_66_34();
      swift_storeEnumTagMultiPayload();
      sub_1E3F16F0C();
      OUTLINED_FUNCTION_9_0();
      sub_1E374AD40(v33, v34);
      OUTLINED_FUNCTION_33_74();
      sub_1E4201F44();
      sub_1E325F69C(v0, &qword_1ECF3C3F0);
      v35 = v1;
    }

    else
    {
      *v2 = *sub_1E3E77EE8();
      *(v2 + 8) = 0;
      *(v2 + 16) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C4D0);
      sub_1E3F14A48();
      v48 = (v2 + *(v58 + 36));
      v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF291E0) + 28);
      v50 = *MEMORY[0x1E697DBA8];
      sub_1E4200B44();
      OUTLINED_FUNCTION_2();
      (*(v51 + 104))(v48 + v49, v50);
      *v48 = swift_getKeyPath();
      v29 = &qword_1ECF3C420;
      OUTLINED_FUNCTION_21_1();
      sub_1E3743538(v52, v53, v54);
      swift_storeEnumTagMultiPayload();
      sub_1E3F16F98();
      sub_1E3F1707C();
      OUTLINED_FUNCTION_72_28();
      sub_1E4201F44();
      OUTLINED_FUNCTION_66_34();
      swift_storeEnumTagMultiPayload();
      sub_1E3F16F0C();
      OUTLINED_FUNCTION_9_0();
      sub_1E374AD40(v55, v56);
      OUTLINED_FUNCTION_33_74();
      sub_1E4201F44();
      sub_1E325F69C(v0, &qword_1ECF3C3F0);
      v35 = v2;
    }

    v47 = v29;
  }

  sub_1E325F69C(v35, v47);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F127B0()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v65 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C4E0);
  v5 = OUTLINED_FUNCTION_17_2(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_5();
  v67 = v6;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_25_3();
  v64 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C4E8);
  v10 = OUTLINED_FUNCTION_17_2(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_5();
  v66 = v11;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_25_3();
  v63 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C4F0);
  v15 = OUTLINED_FUNCTION_17_2(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_5();
  v73 = v16;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v60 - v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_25_3();
  v71 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C4F8);
  v23 = OUTLINED_FUNCTION_17_2(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_2_5();
  v72 = v24;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_25_3();
  v74 = v26;
  v27 = type metadata accessor for SportsCanonicalBannerView();
  v28 = *(v2 + *(v27 + 60));
  if (v28 && ((*(*v28 + 1152))() & 1) != 0)
  {
    v60 = 0;
    v61 = 0;
    v69 = 0;
    v70 = 0;
    v62 = 0;
    v68 = 0;
  }

  else
  {
    v29 = *(v2 + *(v27 + 92) + 8);
    OUTLINED_FUNCTION_58_35();
    v30 = OBJC_IVAR____TtC8VideosUI30SportsCanonicalBannerPresenter_badgePresenter;
    OUTLINED_FUNCTION_5_0();
    v31 = *(v0 + v30);
    OUTLINED_FUNCTION_5_0();
    v32 = *(v29 + 264);

    OUTLINED_FUNCTION_69_28();
    sub_1E385EB44(v33, v34, v35, v31, v32, 1, v36);
    v37 = v93;
    v68 = v97;
    v60 = v92;
    v61 = v95;
    v100 = v94;
    v101[0] = v92;
    v62 = v94;
    v98 = v96;
    v99 = v95;
    v69 = v96;
    sub_1E3743538(v101, v89, &qword_1ECF29420);
    v70 = v37;

    sub_1E3743538(&v100, v89, &qword_1ECF2BB28);
    sub_1E3743538(&v99, v89, &qword_1ECF3C500);
    sub_1E3743538(&v98, v89, &qword_1ECF30B28);
  }

  sub_1E3F12EA0();
  if (!v28)
  {
    goto LABEL_9;
  }

  v38 = *(*v28 + 1152);
  v39 = *v28 + 1152;

  if ((v38(v40) & 1) == 0)
  {

LABEL_9:
    v47 = 1;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_58_35();
  v41 = OBJC_IVAR____TtC8VideosUI30SportsCanonicalBannerPresenter_badgePresenter;
  OUTLINED_FUNCTION_5_0();
  v42 = *(v39 + v41);

  OUTLINED_FUNCTION_69_28();
  sub_1E385D788(v43, v44, v45, v42, v46);
  v47 = 0;
LABEL_10:
  v48 = type metadata accessor for SportsCanonicalBannerScoreboardView(0);
  __swift_storeEnumTagSinglePayload(v19, v47, 1, v48);
  v49 = v71;
  sub_1E3741EA0(v19, v71, &qword_1ECF3C4F0);
  v50 = *(v2 + *(v27 + 92) + 8);
  sub_1E3F13240(v86);
  v51 = v63;
  sub_1E3F13498();
  v52 = v64;
  sub_1E3F13A60();
  sub_1E3F13F3C(v50, v88);
  v53 = v60;
  v79 = v60;
  v80 = v70;
  v81 = v62;
  v82 = v61;
  v83 = v69;
  v84 = v68;
  v85[0] = &v79;
  v54 = v72;
  sub_1E3743538(v74, v72, &qword_1ECF3C4F8);
  v85[1] = v54;
  v55 = v73;
  sub_1E3743538(v49, v73, &qword_1ECF3C4F0);
  v76 = v86[0];
  v77 = v86[1];
  v78[0] = v87[0];
  *(v78 + 11) = *(v87 + 11);
  v85[2] = v55;
  v85[3] = &v76;
  v56 = v66;
  sub_1E3743538(v51, v66, &qword_1ECF3C4E8);
  v85[4] = v56;
  v57 = v67;
  sub_1E3743538(v52, v67, &qword_1ECF3C4E0);
  v85[5] = v57;
  memcpy(v75, v88, 0x5AuLL);
  v85[6] = v75;
  sub_1E3F10098(v85, v65);
  sub_1E3F1724C(v53, v70);
  sub_1E325F69C(v52, &qword_1ECF3C4E0);
  sub_1E325F69C(v51, &qword_1ECF3C4E8);
  sub_1E325F69C(v71, &qword_1ECF3C4F0);
  sub_1E325F69C(v74, &qword_1ECF3C4F8);
  memcpy(v89, v75, 0x5AuLL);
  sub_1E325F69C(v89, &qword_1ECF3C508);
  sub_1E325F69C(v57, &qword_1ECF3C4E0);
  v58 = OUTLINED_FUNCTION_35_4();
  sub_1E325F69C(v58, v59);
  v90[0] = v76;
  v90[1] = v77;
  v91[0] = v78[0];
  *(v91 + 11) = *(v78 + 11);
  sub_1E325F69C(v90, &qword_1ECF3C510);
  sub_1E325F69C(v73, &qword_1ECF3C4F0);
  sub_1E325F69C(v72, &qword_1ECF3C4F8);
  sub_1E3F1724C(v79, v80);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F12EA0()
{
  OUTLINED_FUNCTION_9_4();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_21_3();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C558);
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44();
  v41 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B098);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4_6();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_25_3();
  v40 = v19;
  v20 = type metadata accessor for SportsCanonicalBannerView();
  if (!*(v0 + *(v20 + 72)))
  {
LABEL_5:
    OUTLINED_FUNCTION_32_2();
    OUTLINED_FUNCTION_10_3();

    __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
    return;
  }

  v39 = v8;
  if (*(v0 + *(v20 + 60)))
  {
    OUTLINED_FUNCTION_8();
    v22 = *(v21 + 1152);

    if (v22(v23))
    {

      goto LABEL_5;
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_18();
  sub_1E3F23370();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_41_0();
  View.accessibilityIdentifier(key:location:)();
  (*(v6 + 8))(v1, v4);
  v29 = sub_1E4202744();
  v30 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v29)
  {
    v30 = sub_1E4202774();
  }

  if (sub_1E3C27528())
  {
    OUTLINED_FUNCTION_26_0();
    (*(v31 + 152))(&v42);
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();

  (*(v10 + 32))(v17, v41, v39);
  v32 = (v17 + *(v13 + 36));
  *v32 = v30;
  OUTLINED_FUNCTION_11_4(v32);
  OUTLINED_FUNCTION_21_1();
  sub_1E3741EA0(v33, v34, v35);
  sub_1E3741EA0(v40, v3, &qword_1ECF3B098);
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v13);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E3F13240(uint64_t a1@<X8>)
{
  type metadata accessor for SportsCanonicalBannerView();
  LOBYTE(v33[0]) = 0;
  OUTLINED_FUNCTION_8();
  (*(v2 + 776))(v34, v33, &unk_1F5D5E0F8, &off_1F5D5CAF8);
  if (!v35)
  {
    sub_1E325F69C(v34, &unk_1ECF296E0);
LABEL_7:
    v13 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0uLL;
    v29 = 0uLL;
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_7;
  }

  v3 = v33[0];
  v4 = v33[1];
  v5 = sub_1E3285D14();
  v6 = *((*MEMORY[0x1E69E7D40] & **v5) + 0x110);
  v7 = *v5;
  v8 = v6(v3, v4);

  if (!v8)
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_8();
  v10 = *(v9 + 456);
  v11 = v8;
  v10();
  sub_1E3C11690();
  v13 = v12;
  v15 = v14;
  OUTLINED_FUNCTION_8();
  (*(v16 + 152))(v34);
  if (v36)
  {
    *&v21 = OUTLINED_FUNCTION_5_8();
  }

  else
  {
    v19.n128_u64[0] = v34[2];
    v20.n128_u64[0] = v35;
    v17.n128_u64[0] = v34[0];
    v18.n128_u64[0] = v34[1];
    *&v21 = j_nullsub_1(v17, v18, v19, v20);
  }

  *(&v21 + 1) = v22;
  *(&v23 + 1) = v24;
  v31 = v23;
  v32 = v21;
  v30 = sub_1E4202734();

  v29 = v31;
  v28 = v32;
  v25 = 0x10000;
  v27 = v15 & 0xFF01;
  v26 = v30;
LABEL_8:
  *a1 = v13;
  *(a1 + 8) = v27;
  *(a1 + 16) = v26;
  *(a1 + 24) = v28;
  *(a1 + 40) = v29;
  *(a1 + 56) = v25;
  *(a1 + 58) = BYTE2(v25);
}

void sub_1E3F13498()
{
  OUTLINED_FUNCTION_9_4();
  v6 = v5;
  v8 = v7;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C528);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_21_3();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C530);
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_31_2();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C538);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_49_2();
  if (!(*(*v6 + 552))())
  {
    v53 = 0u;
    v54 = 0u;
    goto LABEL_8;
  }

  v51 = v12;
  *(&v56 + 1) = &unk_1F5D7BE68;
  *&v57 = &off_1F5D7BC48;
  LOBYTE(v55) = 6;
  sub_1E3F9F164(&v55);

  __swift_destroy_boxed_opaque_existential_1(&v55);
  if (!*(&v54 + 1))
  {
LABEL_8:
    sub_1E325F69C(&v53, &unk_1ECF296E0);
LABEL_9:
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v14);
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  v16 = *(v55 + 16);

  if (!v16)
  {
    goto LABEL_9;
  }

  v50 = v8;
  v49 = v10;
  if (sub_1E39C408C(61))
  {

    v17 = sub_1E3D3D2A8();
  }

  else
  {
    v17 = sub_1E3D3D23C();
  }

  v21 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DF10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BE0;
  *(inited + 32) = sub_1E4205F14();
  *(inited + 40) = v23;

  v24 = v21;
  sub_1E32ABF64();
  OUTLINED_FUNCTION_8();
  v26 = *(v25 + 96);

  LOBYTE(v26) = v26(v27);

  LOBYTE(v55) = v26 & 1;
  sub_1E4207414();
  v48 = sub_1E4205CB4();
  type metadata accessor for SportsCanonicalBannerView();
  type metadata accessor for ViewRepresentableProperties();
  sub_1E3F174F4(&qword_1EE24D450, type metadata accessor for ViewRepresentableProperties);
  v28 = sub_1E4200BC4();
  sub_1E3820C20(v6, v24, v48, v28, 47, v2);
  sub_1E4203DB4();
  sub_1E4200D94();
  v29 = (v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C540) + 36));
  v30 = v56;
  v31 = v57;
  *v29 = v55;
  v29[1] = v30;
  v29[2] = v31;
  v32 = sub_1E3D3D23C();
  [v32 margin];
  OUTLINED_FUNCTION_3();

  v33.n128_f64[0] = OUTLINED_FUNCTION_17_4();
  v34.n128_u64[0] = v3;
  v35.n128_u64[0] = v4;
  j_nullsub_1(v33, v36, v34, v35);
  OUTLINED_FUNCTION_3();
  v37 = sub_1E4202734();
  v38 = (v2 + *(v52 + 36));
  *v38 = v37;
  OUTLINED_FUNCTION_11_4(v38);
  v39 = sub_1E3F1732C();
  OUTLINED_FUNCTION_41_0();
  View.accessibilityIdentifier(key:location:)();
  sub_1E325F69C(v2, &qword_1ECF3C528);
  v40 = sub_1E3D3D23C();
  v41 = [v40 shadow];

  *&v53 = v52;
  *(&v53 + 1) = v39;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1E3C42EB4(v41, 0, v49, OpaqueTypeConformance2, v1);

  (*(v51 + 8))(v0, v49);
  v43 = v6[3];
  v44 = (v1 + *(v14 + 52));
  *v44 = v6[2];
  v44[1] = v43;
  sub_1E3741EA0(v1, v50, &qword_1ECF3C538);
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v14);

LABEL_10:
  OUTLINED_FUNCTION_10_3();
}

void sub_1E3F13A60()
{
  OUTLINED_FUNCTION_9_4();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_21_3();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CC0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_26_2();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29880);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8_4();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C520);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v13);
  v14 = type metadata accessor for SportsCanonicalBannerView();
  v15 = *sub_1E3D3D9F0();
  v16 = (*(v15 + 1976))();

  if (v16 == 5)
  {
    v17 = sub_1E4203DB4();
  }

  else
  {
    v17 = sub_1E4203DA4();
  }

  if (*(v0 + *(v14 + 84)))
  {
    OUTLINED_FUNCTION_70_27(v17);

    sub_1E3D3D9F0();
    OUTLINED_FUNCTION_18();
    sub_1E3F23370();

    sub_1E3D3D9F0();
    OUTLINED_FUNCTION_26_0();
    (*(v18 + 152))(v45);
    v19 = v45[2];
    v20 = v45[3];

    if (v46)
    {
      OUTLINED_FUNCTION_5_8();
    }

    else
    {
      v26.n128_f64[0] = OUTLINED_FUNCTION_17_4();
      v27.n128_u64[0] = v19;
      v28.n128_u64[0] = v20;
      j_nullsub_1(v26, v29, v27, v28);
    }

    OUTLINED_FUNCTION_3();
    v30 = sub_1E4202734();
    (*(v6 + 32))(v1, v4, v42);
    v31 = (v1 + *(v8 + 36));
    *v31 = v30;
    OUTLINED_FUNCTION_11_4(v31);
    sub_1E3D3D9F0();
    OUTLINED_FUNCTION_26_0();
    (*(v32 + 248))();

    OUTLINED_FUNCTION_51_3();
    OUTLINED_FUNCTION_99_1();

    sub_1E3741EA0(v1, v2, &qword_1ECF28CC0);
    memcpy((v2 + *(v43 + 36)), v47, 0x70uLL);
    sub_1E3741EA0(v2, v3, &qword_1ECF29880);
    *(v3 + *(v44 + 36)) = 0x4000000000000000;
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v33, v34, v35);
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v36, v37, v38);
    OUTLINED_FUNCTION_114();
    __swift_storeEnumTagSinglePayload(v39, v40, v41, v44);
    OUTLINED_FUNCTION_10_3();
  }

  else
  {
    OUTLINED_FUNCTION_32_2();
    OUTLINED_FUNCTION_10_3();

    __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
  }
}

uint64_t sub_1E3F13F3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  result = type metadata accessor for SportsCanonicalBannerView();
  v34 = result;
  v7 = *(v2 + *(result + 48));
  if (!v7)
  {
    v18 = 0;
    v19 = 0;
    v20 = 0uLL;
    v21 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    v24 = 0uLL;
LABEL_27:
    *a2 = v20;
    *(a2 + 16) = v21;
    *(a2 + 32) = v22;
    *(a2 + 48) = v23;
    *(a2 + 64) = v24;
    *(a2 + 80) = v18;
    *(a2 + 88) = v19;
    return result;
  }

  result = OUTLINED_FUNCTION_5_0();
  v8 = *(a1 + 120);
  if (v8 == 2)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2 * (v8 == 3);
  }

  *&v37[0] = MEMORY[0x1E69E7CC0];
  if (v7 >> 62)
  {
    result = sub_1E4207384();
    v10 = result;
  }

  else
  {
    v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v33 = v9;
  if (!v10)
  {
    v17 = MEMORY[0x1E69E7CC0];
LABEL_23:
    v25 = *(a1 + 144);
    v26 = *(*a1 + 152);

    v26(v35, v27);
    v28 = v36 & 1;
    if (v28)
    {
      v29 = 0;
    }

    else
    {
      v29 = v35[2];
    }

    v30 = *(v3 + *(v34 + 44));

    sub_1E3E76734(v17, v25, v33, v29, v28, v30, 0, v37);
    result = sub_1E3D3CD34(*(a1 + 120));
    v20 = v37[0];
    v21 = v37[1];
    v22 = v37[2];
    v23 = v37[3];
    v24 = v37[4];
    v19 = result & 1;
    v18 = v38;
    goto LABEL_27;
  }

  if (v10 >= 1)
  {
    v31 = a1;
    v32 = a2;
    v11 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1E6911E60](v11, v7);
      }

      else
      {
        v12 = *(v7 + 8 * v11 + 32);
      }

      if ((*(*v12 + 392))())
      {
        type metadata accessor for ButtonLayout();
        OUTLINED_FUNCTION_40_3();
        v13 = swift_dynamicCastClass();
        if (v13)
        {
          v14 = *(v2 + 8 + *(v34 + 92));
          OUTLINED_FUNCTION_5_0();
          LOBYTE(v35[0]) = *(v14 + 120);
          v39 = 3;
          sub_1E392EDD8();

          v15 = sub_1E4205E84();
          (*(*v13 + 2360))((v15 & 1) == 0);
        }
      }

      MEMORY[0x1E6910BF0](v16);
      if (*((*&v37[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v37[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E42062F4();
      }

      ++v11;
      sub_1E4206324();
    }

    while (v10 != v11);
    v17 = *&v37[0];
    a1 = v31;
    a2 = v32;
    v3 = v2;
    goto LABEL_23;
  }

  __break(1u);
  return result;
}

void sub_1E3F142A0()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v69 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C4E0);
  v5 = OUTLINED_FUNCTION_17_2(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_5();
  v70 = v6;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_25_3();
  v67 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C4E8);
  v10 = OUTLINED_FUNCTION_17_2(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_5();
  v68 = v11;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_25_3();
  v66 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C4F0);
  v15 = OUTLINED_FUNCTION_17_2(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_5();
  v72 = v16;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v17);
  *&v64 = &v58 - v18;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_25_3();
  v65 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C4F8);
  v22 = OUTLINED_FUNCTION_17_2(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_2_5();
  v71 = v23;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_77_0();
  v25 = type metadata accessor for SportsCanonicalBannerView();
  v26 = *(v2 + v25[15]);
  v27 = *(v2 + v25[23] + 8);
  v28 = *(v2 + v25[10]);
  v63 = v25;
  v29 = *(v2 + v25[7] + 8);
  v30 = OBJC_IVAR____TtC8VideosUI30SportsCanonicalBannerPresenter_badgePresenter;
  OUTLINED_FUNCTION_5_0();
  v59 = v30;
  v60 = v29;
  v31 = *(v29 + v30);
  OUTLINED_FUNCTION_5_0();
  v32 = *(v27 + 264);

  swift_retain_n();

  v33 = 1;
  v34 = OUTLINED_FUNCTION_20_13();
  v61 = v28;
  sub_1E385EB44(v34, v35, v28, v31, v32, 1, v36);
  v62 = v0;
  sub_1E3F12EA0();
  if (!v26)
  {
    goto LABEL_5;
  }

  if (((*(*v26 + 1152))() & 1) == 0)
  {

LABEL_5:
    v39 = v64;
    goto LABEL_6;
  }

  v37 = *(v60 + v59);
  v38 = v61;

  v39 = v64;
  v40 = OUTLINED_FUNCTION_20_13();
  sub_1E385D788(v40, v41, v38, v37, v42);
  v33 = 0;
LABEL_6:
  v43 = type metadata accessor for SportsCanonicalBannerScoreboardView(0);
  __swift_storeEnumTagSinglePayload(v39, v33, 1, v43);
  v44 = v65;
  sub_1E3741EA0(v39, v65, &qword_1ECF3C4F0);
  sub_1E3F148B4(v85);
  v64 = v85[0];
  v45 = *&v85[1];
  sub_1E3F13240(v82);
  v46 = v66;
  sub_1E3F13498();
  v47 = v67;
  sub_1E3F13A60();
  sub_1E3F13F3C(v27, v84);
  v79 = v87[5];
  v80[0] = v88[0];
  *(v80 + 9) = *(v88 + 9);
  v81[0] = &v79;
  v48 = v62;
  v49 = v71;
  sub_1E3743538(v62, v71, &qword_1ECF3C4F8);
  v81[1] = v49;
  v50 = v72;
  sub_1E3743538(v44, v72, &qword_1ECF3C4F0);
  v77 = v64;
  v78 = v45;
  v81[2] = v50;
  v81[3] = &v77;
  v74 = v82[0];
  v75 = v82[1];
  v76[0] = v83[0];
  *(v76 + 11) = *(v83 + 11);
  v81[4] = &v74;
  v51 = v68;
  sub_1E3743538(v46, v68, &qword_1ECF3C4E8);
  v81[5] = v51;
  v52 = v70;
  OUTLINED_FUNCTION_112_1();
  sub_1E3743538(v53, v54, v55);
  v81[6] = v52;
  memcpy(v73, v84, 0x5AuLL);
  v81[7] = v73;
  sub_1E3F10248(v81, v69);
  sub_1E325F69C(v47, &qword_1ECF3C4E0);
  sub_1E325F69C(v46, &qword_1ECF3C4E8);
  sub_1E325F69C(v44, &qword_1ECF3C4F0);
  sub_1E325F69C(v48, &qword_1ECF3C4F8);
  memcpy(v85, v73, 0x5AuLL);
  sub_1E325F69C(v85, &qword_1ECF3C508);
  v56 = OUTLINED_FUNCTION_125();
  sub_1E325F69C(v56, v57);
  sub_1E325F69C(v51, &qword_1ECF3C4E8);
  v86[0] = v74;
  v86[1] = v75;
  v87[0] = v76[0];
  *(v87 + 11) = *(v76 + 11);
  sub_1E325F69C(v86, &qword_1ECF3C510);
  sub_1E3F174B4(v77);
  sub_1E325F69C(v72, &qword_1ECF3C4F0);
  sub_1E325F69C(v71, &qword_1ECF3C4F8);

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3F148B4@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for SportsCanonicalBannerView();
  v4 = *(v1 + *(result + 64));
  if (!v4)
  {
    goto LABEL_9;
  }

  if (!*(v1 + *(result + 60)))
  {
LABEL_8:
    v4 = 0;
LABEL_9:
    v10 = 0;
    v12 = 0;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_8();
  v6 = *(v5 + 1088);

  if ((v6(v7) & 1) == 0 || (OUTLINED_FUNCTION_8(), ((*(v8 + 1208))() & 1) == 0) && (OUTLINED_FUNCTION_8(), ((*(v9 + 1216))() & 1) == 0))
  {

    goto LABEL_8;
  }

  type metadata accessor for SportStatsLayout();
  sub_1E3F174F4(&qword_1ECF38950, type metadata accessor for SportStatsLayout);

  v10 = sub_1E42010C4();
  v12 = v11;

LABEL_10:
  *a1 = v4;
  a1[1] = v10;
  a1[2] = v12;
  return result;
}

void sub_1E3F14A48()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v36 = v4;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C560);
  OUTLINED_FUNCTION_0_10();
  v32 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_5();
  v35 = v7;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_77_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C568);
  v10 = OUTLINED_FUNCTION_17_2(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  *v13 = sub_1E4201D54();
  *(v13 + 1) = 0;
  v13[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C570);
  v30 = v13;
  sub_1E3F14EA4();
  v33 = *(*(v3 + *(type metadata accessor for SportsCanonicalBannerView() + 92) + 8) + 240);
  v31 = sub_1E4201D64();
  v39 = 0;
  sub_1E3F13240(v40);
  sub_1E3F148B4(v45);
  v14 = v45[0];
  v15 = *&v45[1];
  v41 = v40[0];
  v42 = v40[1];
  v43[0] = v40[2];
  *(v43 + 11) = *(&v40[2] + 11);
  *(&v37[2] + 11) = *(&v40[2] + 11);
  v37[1] = v40[1];
  v37[2] = v40[2];
  v37[0] = v40[0];
  sub_1E3743538(&v41, v45, &qword_1ECF3C510);
  sub_1E3F17474(v14);
  sub_1E3F174B4(v14);
  v45[0] = v40[0];
  v45[1] = v40[1];
  v45[2] = v40[2];
  *(&v45[2] + 11) = *(&v40[2] + 11);
  sub_1E325F69C(v45, &qword_1ECF3C510);
  v40[0] = v37[0];
  v40[1] = v37[1];
  v40[2] = v37[2];
  v40[3] = v37[3];
  v40[4] = v14;
  *&v40[5] = v15;
  v43[0] = v37[2];
  v43[1] = v37[3];
  v41 = v37[0];
  v42 = v37[1];
  v43[2] = v14;
  v44 = v15;
  sub_1E3743538(v40, v45, &qword_1ECF3C578);
  sub_1E325F69C(&v41, &qword_1ECF3C578);
  memcpy(&v38[7], v40, 0x58uLL);
  v37[0] = v31;
  LOBYTE(v37[1]) = v39;
  memcpy(&v37[1] + 1, v38, 0x5FuLL);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C580);
  v17 = sub_1E374AD40(&qword_1ECF3C588, &qword_1ECF3C580);
  v18 = OUTLINED_FUNCTION_51_1();
  sub_1E3E77F2C(v18 & 1, v16, v17);
  memcpy(v45, v37, 0x70uLL);
  sub_1E325F69C(v45, &qword_1ECF3C580);
  v19 = v1;
  v29 = v1;
  sub_1E3743538(v13, v1, &qword_1ECF3C568);
  v20 = v32;
  v21 = *(v32 + 16);
  v23 = v34;
  v22 = v35;
  v21(v35, v0, v34);
  v24 = v19;
  v25 = v36;
  sub_1E3743538(v24, v36, &qword_1ECF3C568);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C590);
  v27 = v25 + *(v26 + 48);
  *v27 = v33;
  *(v27 + 8) = 0;
  v21(v25 + *(v26 + 64), v22, v23);
  v28 = *(v20 + 8);
  v28(v0, v23);
  sub_1E325F69C(v30, &qword_1ECF3C568);
  v28(v22, v23);
  sub_1E325F69C(v29, &qword_1ECF3C568);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F14EA4()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v66 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C4E0);
  v5 = OUTLINED_FUNCTION_17_2(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_5();
  v68 = v6;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_25_3();
  v65 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C4E8);
  v10 = OUTLINED_FUNCTION_17_2(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_5();
  v67 = v11;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_25_3();
  v63 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C4F0);
  v15 = OUTLINED_FUNCTION_17_2(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_5();
  v64 = v16;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v17);
  v60 = &v56 - v18;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_25_3();
  v62 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C4F8);
  v22 = OUTLINED_FUNCTION_17_2(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_2_5();
  v69 = v23;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_77_0();
  v25 = type metadata accessor for SportsCanonicalBannerView();
  v26 = v25[15];
  v59 = v2;
  v27 = *(v2 + v26);
  v28 = *(v2 + v25[23] + 8);
  v29 = *(v2 + v25[10]);
  v30 = *(v2 + v25[7] + 8);
  v31 = OBJC_IVAR____TtC8VideosUI30SportsCanonicalBannerPresenter_badgePresenter;
  OUTLINED_FUNCTION_5_0();
  v56 = v31;
  v57 = v30;
  v32 = *(v30 + v31);
  OUTLINED_FUNCTION_5_0();
  v33 = *(v28 + 264);

  swift_retain_n();

  v34 = 1;
  v35 = OUTLINED_FUNCTION_20_13();
  v58 = v29;
  sub_1E385EB44(v35, v36, v29, v32, v33, 1, v37);
  v61 = v0;
  sub_1E3F12EA0();
  if (!v27)
  {
    goto LABEL_5;
  }

  if (((*(*v27 + 1152))() & 1) == 0)
  {

LABEL_5:
    v40 = v60;
    goto LABEL_6;
  }

  v38 = *(v57 + v56);
  v39 = v58;

  v40 = v60;
  v41 = OUTLINED_FUNCTION_20_13();
  sub_1E385D788(v41, v42, v39, v38, v43);
  v34 = 0;
LABEL_6:
  v44 = type metadata accessor for SportsCanonicalBannerScoreboardView(0);
  __swift_storeEnumTagSinglePayload(v40, v34, 1, v44);
  v45 = v40;
  v46 = v62;
  sub_1E3741EA0(v45, v62, &qword_1ECF3C4F0);
  v47 = v63;
  sub_1E3F13498();
  v48 = v65;
  sub_1E3F13A60();
  sub_1E3F13F3C(v28, v74);
  v71 = v76;
  v72[0] = v77[0];
  *(v72 + 9) = *(v77 + 9);
  v73[0] = &v71;
  v49 = v61;
  v50 = v69;
  sub_1E3743538(v61, v69, &qword_1ECF3C4F8);
  v73[1] = v50;
  v51 = v64;
  sub_1E3743538(v46, v64, &qword_1ECF3C4F0);
  v73[2] = v51;
  v52 = v67;
  sub_1E3743538(v47, v67, &qword_1ECF3C4E8);
  v73[3] = v52;
  v53 = v68;
  sub_1E3743538(v48, v68, &qword_1ECF3C4E0);
  v73[4] = v53;
  memcpy(v70, v74, 0x5AuLL);
  v73[5] = v70;
  sub_1E3F10430(v73, v66);
  v54 = OUTLINED_FUNCTION_125();
  sub_1E325F69C(v54, v55);
  sub_1E325F69C(v47, &qword_1ECF3C4E8);
  sub_1E325F69C(v46, &qword_1ECF3C4F0);
  sub_1E325F69C(v49, &qword_1ECF3C4F8);
  memcpy(v75, v70, 0x5AuLL);
  sub_1E325F69C(v75, &qword_1ECF3C508);
  sub_1E325F69C(v53, &qword_1ECF3C4E0);
  sub_1E325F69C(v52, &qword_1ECF3C4E8);
  sub_1E325F69C(v51, &qword_1ECF3C4F0);
  sub_1E325F69C(v69, &qword_1ECF3C4F8);

  OUTLINED_FUNCTION_25_2();
}

double sub_1E3F15438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = sub_1E3A79350();
  result = 0.0;
  if (!v7)
  {
    return *a6;
  }

  return result;
}

uint64_t sub_1E3F1547C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_0_8();
  v27 = sub_1E4200F34();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  result = sub_1E3A79350();
  if ((result & 1) == 0)
  {
    v14 = *(a6 + 24);
    v28.origin.x = OUTLINED_FUNCTION_2_0();
    MinY = CGRectGetMinY(v28);
    result = sub_1E3A7992C();
    if (result != v16)
    {
      v17 = result;
      v18 = v16;
      if (v16 >= result)
      {
        if (result >= v16)
        {
LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

        if (result < 0)
        {
LABEL_19:
          __break(1u);
LABEL_20:
          __break(1u);
          return result;
        }

        v19 = *(v14 + 16);
        if (result >= v19 || v16 - 1 >= v19)
        {
          goto LABEL_20;
        }

        v21 = *(a6 + 8);
        v22 = v14 + 32;
        v23 = (v8 + 8);
        v24 = *(v21 + 16);
        v25 = (v21 + 8 * result + 32);
        while (v17 < v24)
        {
          sub_1E4201054();
          v29.origin.x = OUTLINED_FUNCTION_2_0();
          CGRectGetMidX(v29);
          sub_1E4203F34();
          sub_1E4200F04();
          result = (*v23)(v12, v27);
          v24 = *(v21 + 16);
          if (v17 >= v24)
          {
            goto LABEL_16;
          }

          v26 = *v25++;
          MinY = MinY + v26 + *(v22 + 8 * v17++);
          if (v18 == v17)
          {
            return result;
          }
        }

        __break(1u);
LABEL_16:
        __break(1u);
      }

      __break(1u);
      goto LABEL_18;
    }
  }

  return result;
}

uint64_t sub_1E3F15674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_1E3F15788(a1);
  v10 = v9;
  v11 = v8;
  v12 = *(v8 + 16);
  v13 = 0.0;
  v14 = 0.0;
  if (v12)
  {
    v15 = (v8 + 32);
    do
    {
      v16 = *v15++;
      v14 = v14 + v16;
      --v12;
    }

    while (v12);
  }

  v17 = sub_1E3A7992C();
  MEMORY[0x1EEE9AC00](v17);
  v24[2] = a1;
  v24[3] = a2;
  v25 = a3 & 1;
  result = sub_1E3A79A28(sub_1E3F16338, v24, v18, v19);
  v21 = *(result + 16);
  if (v21)
  {
    v22 = (result + 32);
    v13 = 0.0;
    do
    {
      v23 = *v22++;
      v13 = v13 + v23;
      --v21;
    }

    while (v21);
  }

  *a4 = v10;
  *(a4 + 8) = v11;
  *(a4 + 16) = v14;
  *(a4 + 24) = result;
  *(a4 + 32) = v13;
  return result;
}

uint64_t sub_1E3F15788(uint64_t a1)
{
  v4 = sub_1E4200F34();
  OUTLINED_FUNCTION_0_10();
  v65 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_5();
  v70 = v7;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_47_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_25_3();
  v69 = v10;
  v11 = sub_1E4201044();
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30E58) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_20_1();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2ED18);
  v21 = OUTLINED_FUNCTION_17_2(v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2_5();
  v63 = v22;
  OUTLINED_FUNCTION_49();
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v63 - v25;
  (*(v13 + 16))(v17, a1, v11, v24);
  v27 = MEMORY[0x1E697E3C0];
  sub_1E3F174F4(&qword_1EE289D90, MEMORY[0x1E697E3C0]);
  sub_1E4206194();
  v28 = *(v18 + 44);
  sub_1E3F174F4(&qword_1EE289D88, v27);
  OUTLINED_FUNCTION_35_4();
  sub_1E4206724();
  v29 = *(v1 + v28);
  v71 = v4;
  v64 = v26;
  if (v29 == v74[0])
  {
    sub_1E325F69C(v1, &qword_1ECF30E58);
    v30 = v26;
    v31 = 1;
  }

  else
  {
    v32 = OUTLINED_FUNCTION_64_31();
    v33 = v65 + 16;
    v67 = *(v65 + 16);
    v67(v69);
    v32(v74, 0);
    OUTLINED_FUNCTION_77_21();
    v34 = v33;
    v35 = (v33 - 8);
    v68 = v34;
    v66 = (v34 + 16);
    v36 = v71;
    while (1)
    {
      OUTLINED_FUNCTION_35_4();
      sub_1E4206724();
      if (*(v1 + v28) == v74[0])
      {
        break;
      }

      v37 = OUTLINED_FUNCTION_64_31();
      v67(v2);
      v37(v74, 0);
      OUTLINED_FUNCTION_77_21();
      v38 = v69;
      sub_1E4200F24();
      v40 = v39;
      sub_1E4200F24();
      v41 = *v35;
      if (v40 >= v42)
      {
        v41(v2, v36);
      }

      else
      {
        v41(v38, v36);
        (*v66)(v38, v2, v36);
      }
    }

    sub_1E325F69C(v1, &qword_1ECF30E58);
    v26 = v64;
    v4 = v71;
    (*v66)(v64, v69, v71);
    v30 = v26;
    v31 = 0;
  }

  __swift_storeEnumTagSinglePayload(v30, v31, 1, v4);
  v43 = v63;
  sub_1E3743538(v26, v63, &qword_1ECF2ED18);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v43, 1, v4);
  v45 = v65;
  if (EnumTagSinglePayload == 1)
  {
    sub_1E325F69C(v43, &qword_1ECF2ED18);
    v46 = 0;
  }

  else
  {
    sub_1E4201504();
    LOBYTE(v74[0]) = v47 & 1;
    LOBYTE(v73) = v48 & 1;
    sub_1E4200EF4();
    v46 = v49;
    (*(v45 + 8))(v43, v4);
  }

  OUTLINED_FUNCTION_35_4();
  v50 = sub_1E42066D4();
  if (!v50)
  {
    sub_1E325F69C(v26, &qword_1ECF2ED18);
    return MEMORY[0x1E69E7CC0];
  }

  v51 = v50;
  v73 = MEMORY[0x1E69E7CC0];
  sub_1E3887DC4(0, v50 & ~(v50 >> 63), 0);
  v52 = v73;
  OUTLINED_FUNCTION_35_4();
  result = sub_1E42066B4();
  if ((v51 & 0x8000000000000000) == 0)
  {
    v69 = v46;
    v54 = (v45 + 16);
    v55 = (v45 + 8);
    do
    {
      v56 = sub_1E4206764();
      v57 = v70;
      (*v54)(v70);
      v56(v74, 0);
      LOBYTE(v74[0]) = 0;
      v72 = 1;
      sub_1E4200EF4();
      v59 = v58;
      (*v55)(v57, v4);
      v73 = v52;
      v60 = a1;
      v62 = *(v52 + 16);
      v61 = *(v52 + 24);
      if (v62 >= v61 >> 1)
      {
        sub_1E3887DC4((v61 > 1), v62 + 1, 1);
        v52 = v73;
      }

      *(v52 + 16) = v62 + 1;
      *(v52 + 8 * v62 + 32) = v59;
      sub_1E4206734();
      --v51;
      a1 = v60;
      v4 = v71;
    }

    while (v51);
    sub_1E325F69C(v64, &qword_1ECF2ED18);
    return v52;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3F15E0C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, int a3@<W3>, void *a4@<X8>)
{
  v31 = a3;
  v28 = a2;
  v32 = a4;
  sub_1E4200C74();
  OUTLINED_FUNCTION_0_10();
  v29 = v7;
  v30 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - v12;
  v14 = sub_1E4200F34();
  OUTLINED_FUNCTION_0_10();
  v27 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v27 - v18;
  v20 = *a1;
  sub_1E4201044();
  sub_1E3F174F4(&qword_1EE289D88, MEMORY[0x1E697E3C0]);
  sub_1E42066B4();
  sub_1E4206724();
  result = sub_1E4206714();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else if (v20 >= result - 1)
  {
    *v32 = 0;
  }

  else if (v31)
  {
    sub_1E4201054();
    sub_1E4200F14();
    v22 = *(v27 + 8);
    v22(v19, v14);
    sub_1E4201054();
    sub_1E4200F14();
    v22(v4, v14);
    sub_1E4200C54();
    v24 = v23;
    v25 = v30;
    v26 = *(v29 + 8);
    v26(v10, v30);
    result = (v26)(v13, v25);
    *v32 = v24;
  }

  else
  {
    *v32 = v28;
  }

  return result;
}

double sub_1E3F160D4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E3F15674(a1, *v2, *(v2 + 8), v6);
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v7;
  return result;
}

void (*sub_1E3F16128(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1E42009D4();
  return sub_1E37BCF0C;
}

uint64_t sub_1E3F1619C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E42019C4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E3F161CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsCanonicalBannerView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3F16230(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsCanonicalBannerView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3F16294()
{
  v0 = type metadata accessor for SportsCanonicalBannerView();
  OUTLINED_FUNCTION_17_2(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A8F8);
  return sub_1E4203904();
}

unint64_t sub_1E3F1639C()
{
  result = qword_1ECF3C370;
  if (!qword_1ECF3C370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C370);
  }

  return result;
}

uint64_t sub_1E3F16484()
{
  sub_1E3F1694C(319, &qword_1EE289EB0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  OUTLINED_FUNCTION_39_6();
  if (!(!v2 & v1))
  {
    sub_1E3F1694C(319, &qword_1EE289EA8, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
    OUTLINED_FUNCTION_39_6();
    if (!(!v2 & v1))
    {
      sub_1E3F1694C(319, &qword_1EE289EC0, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
      OUTLINED_FUNCTION_39_6();
      if (!(!v2 & v1))
      {
        sub_1E3F16858();
        OUTLINED_FUNCTION_39_6();
        if (!(!v2 & v1))
        {
          type metadata accessor for ViewModel();
          OUTLINED_FUNCTION_39_6();
          if (!(!v2 & v1))
          {
            sub_1E37A6718();
            OUTLINED_FUNCTION_39_6();
            if (!(!v2 & v1))
            {
              sub_1E3F1694C(319, qword_1EE23B6C8, type metadata accessor for ViewModel, MEMORY[0x1E69E6720]);
              OUTLINED_FUNCTION_39_6();
              if (!(!v2 & v1))
              {
                sub_1E3F1694C(319, qword_1EE283398, type metadata accessor for TextViewModel, MEMORY[0x1E69E6720]);
                OUTLINED_FUNCTION_39_6();
                if (!(!v2 & v1))
                {
                  sub_1E3F168EC(319, &qword_1EE23B530, &unk_1ECF2C790, &unk_1E42996A0, MEMORY[0x1E69E6720]);
                  if (v4 > 0x3F)
                  {
                    return v3;
                  }

                  sub_1E3A99200();
                  if (v5 > 0x3F)
                  {
                    return v3;
                  }

                  sub_1E3F168EC(319, &qword_1ECF3C380, &qword_1ECF2AC60, &unk_1E42D7E80, MEMORY[0x1E6981790]);
                  if (v6 > 0x3F)
                  {
                    return v3;
                  }

                  sub_1E3F1694C(319, &qword_1ECF3C388, type metadata accessor for SportsCanonicalBannerScoreboardViewModel, MEMORY[0x1E69E6720]);
                  if (v7 > 0x3F)
                  {
                    return v3;
                  }

                  sub_1E3F1694C(319, &qword_1ECF3C390, type metadata accessor for SportStatsViewModel, MEMORY[0x1E69E6720]);
                  if (v8 > 0x3F)
                  {
                    return v3;
                  }

                  else
                  {
                    sub_1E3F1694C(319, qword_1EE282B40, type metadata accessor for ImageViewModel, MEMORY[0x1E69E6720]);
                    OUTLINED_FUNCTION_39_6();
                    if (!(!v2 & v1))
                    {
                      sub_1E3F169AC();
                      OUTLINED_FUNCTION_39_6();
                      if (!(!v2 & v1))
                      {
                        type metadata accessor for SportsCanonicalBannerProxy(319);
                        OUTLINED_FUNCTION_39_6();
                        if (!(!v2 & v1))
                        {
                          swift_cvw_initStructMetadataWithLayoutString();
                          return 0;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v0;
}

void sub_1E3F16858()
{
  if (!qword_1ECF3C378)
  {
    type metadata accessor for SportsCanonicalBannerPresenter(255);
    sub_1E3F174F4(&qword_1ECF3C2E0, type metadata accessor for SportsCanonicalBannerPresenter);
    v0 = sub_1E42010F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECF3C378);
    }
  }
}

void sub_1E3F168EC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v7 = OUTLINED_FUNCTION_40_3();
    v8 = a5(v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1E3F1694C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v6 = OUTLINED_FUNCTION_40_3();
    v7 = a4(v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1E3F169AC()
{
  if (!qword_1ECF3C398)
  {
    type metadata accessor for SportsCanonicalBannerViewLayout();
    sub_1E3F174F4(&qword_1ECF37B58, type metadata accessor for SportsCanonicalBannerViewLayout);
    v0 = sub_1E42010F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECF3C398);
    }
  }
}

uint64_t getEnumTagSinglePayload for ButtonDisclaimerVStack(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E3F16A70(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0 && *(a1 + 40))
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

  return OUTLINED_FUNCTION_17_7(v2);
}

unint64_t sub_1E3F16ABC()
{
  result = qword_1ECF3C3A0;
  if (!qword_1ECF3C3A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C3A8);
    sub_1E3F11958();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C3A0);
  }

  return result;
}

unint64_t sub_1E3F16B48()
{
  result = qword_1ECF3C3B0;
  if (!qword_1ECF3C3B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C368);
    sub_1E3F16BD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C3B0);
  }

  return result;
}

unint64_t sub_1E3F16BD4()
{
  result = qword_1ECF3C3B8;
  if (!qword_1ECF3C3B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C360);
    sub_1E3F16C8C();
    sub_1E374AD40(&qword_1ECF3C450, &unk_1ECF3C458);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C3B8);
  }

  return result;
}

unint64_t sub_1E3F16C8C()
{
  result = qword_1ECF3C3C0;
  if (!qword_1ECF3C3C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C358);
    sub_1E3F16D18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C3C0);
  }

  return result;
}

unint64_t sub_1E3F16D18()
{
  result = qword_1ECF3C3C8;
  if (!qword_1ECF3C3C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C350);
    sub_1E3F16DD0();
    sub_1E374AD40(&qword_1EE288830, &unk_1ECF3C448);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C3C8);
  }

  return result;
}

unint64_t sub_1E3F16DD0()
{
  result = qword_1ECF3C3D0;
  if (!qword_1ECF3C3D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C348);
    sub_1E3F16E54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C3D0);
  }

  return result;
}

unint64_t sub_1E3F16E54()
{
  result = qword_1ECF3C3D8;
  if (!qword_1ECF3C3D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C3E0);
    sub_1E3F16F0C();
    sub_1E374AD40(&qword_1ECF3C438, &qword_1ECF3C440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C3D8);
  }

  return result;
}

unint64_t sub_1E3F16F0C()
{
  result = qword_1ECF3C3E8;
  if (!qword_1ECF3C3E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C3F0);
    sub_1E3F16F98();
    sub_1E3F1707C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C3E8);
  }

  return result;
}

unint64_t sub_1E3F16F98()
{
  result = qword_1ECF3C3F8;
  if (!qword_1ECF3C3F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C400);
    sub_1E374AD40(&qword_1ECF3C408, &unk_1ECF3C410);
    sub_1E374AD40(&qword_1EE2887D0, &qword_1ECF291E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C3F8);
  }

  return result;
}

unint64_t sub_1E3F1707C()
{
  result = qword_1ECF3C418;
  if (!qword_1ECF3C418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C420);
    sub_1E374AD40(&qword_1ECF3C428, &unk_1ECF3C430);
    sub_1E374AD40(&qword_1EE2887D0, &qword_1ECF291E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C418);
  }

  return result;
}

unint64_t sub_1E3F17188()
{
  result = qword_1ECF3C480;
  if (!qword_1ECF3C480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C468);
    sub_1E374AD40(&qword_1ECF3C488, &unk_1ECF3C460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C480);
  }

  return result;
}

uint64_t sub_1E3F17240(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1E3F1724C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1E3F172BC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1E3F1732C()
{
  result = qword_1ECF3C548;
  if (!qword_1ECF3C548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C528);
    sub_1E3F173B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C548);
  }

  return result;
}

unint64_t sub_1E3F173B8()
{
  result = qword_1ECF3C550;
  if (!qword_1ECF3C550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C540);
    sub_1E3F174F4(&qword_1EE23BD30, type metadata accessor for MediaTags);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C550);
  }

  return result;
}

uint64_t sub_1E3F17474(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1E3F174B4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1E3F174F4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E3F1753C()
{
  result = qword_1ECF3C5E8;
  if (!qword_1ECF3C5E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C5C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29238);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C5E8);
  }

  return result;
}

unint64_t sub_1E3F1761C()
{
  result = qword_1ECF3C5F0;
  if (!qword_1ECF3C5F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C5B0);
    sub_1E374AD40(&qword_1ECF3C5F8, &unk_1ECF3C5A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C5F0);
  }

  return result;
}

uint64_t sub_1E3F176DC(uint64_t a1)
{
  v2 = type metadata accessor for SportsCanonicalBannerView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1E3F17744(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
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

      return OUTLINED_FUNCTION_22(result, a2);
    }

    *(result + 17) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_22(result, a2);
    }
  }

  return result;
}

unint64_t sub_1E3F1778C()
{
  result = qword_1ECF3C608;
  if (!qword_1ECF3C608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C490);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C468);
    sub_1E3F17188();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C608);
  }

  return result;
}

unint64_t sub_1E3F1786C()
{
  result = qword_1ECF3C638;
  if (!qword_1ECF3C638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C640);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C628);
    sub_1E374AD40(&qword_1ECF3C630, &qword_1ECF3C628);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C638);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_68_30(uint64_t result)
{
  v2 = v1 + *(result + 48);
  *v2 = 0;
  *(v2 + 8) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_77_21()
{

  return sub_1E4206734();
}

id OUTLINED_FUNCTION_79_25(void *a1)
{

  return [a1 (v1 + 2424)];
}

uint64_t OUTLINED_FUNCTION_84_18()
{
}

void sub_1E3F17A28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = [v3 appContext];
  if (v7)
  {
    v8 = v7;
    v9 = swift_allocObject();
    v9[2] = v3;
    v9[3] = a1;
    v9[4] = a2;
    v9[5] = ObjectType;
    OUTLINED_FUNCTION_0_155();
    OUTLINED_FUNCTION_1_253();
    v13[2] = v10;
    v13[3] = &block_descriptor_135;
    v11 = _Block_copy(v13);
    v12 = v3;

    [v8 evaluate_];
    _Block_release(v11);
  }
}

void sub_1E3F17B20(void *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = sub_1E3A246B8();
  v19[3] = v5;
  v19[0] = v3;
  v8 = v3;
  v9 = a1;
  v10 = sub_1E3A243F8(v19, a1);
  if (v10)
  {
    v11 = v10;
    OUTLINED_FUNCTION_2_4();
    v12 = swift_allocObject();
    *(v12 + 16) = v4;
    *(v12 + 24) = v6;
    OUTLINED_FUNCTION_2_4();
    v13 = swift_allocObject();
    *(v13 + 16) = v4;
    *(v13 + 24) = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1E4299720;
    swift_retain_n();
    v15 = sub_1E3A242D8(v9, sub_1E3F184F4, v12);
    *(v14 + 56) = v7;
    *(v14 + 32) = v15;
    v16 = sub_1E3A242D8(v9, sub_1E3F186E0, v13);
    *(v14 + 88) = v7;
    *(v14 + 64) = v16;
    v17 = sub_1E4205ED4();
    v18 = sub_1E3A49FB0(v17, v14, v11);
  }
}

id sub_1E3F17CD0(uint64_t a1, unint64_t a2, void (*a3)(void, void, void, void), uint64_t a4)
{
  v8 = sub_1E41FFCB4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1E32AE9B0(a2);
  if (result)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x1E6911E60](0, a2);
    }

    else
    {
      if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_13;
      }

      v13 = *(a2 + 32);
    }

    v14 = v13;
    v15 = [v13 debugDescription];

    v16 = sub_1E4205F14();
    v18 = v17;
  }

  else
  {
    v18 = 0x80000001E426D780;
    v16 = 0xD000000000000015;
  }

  v32 = a4;
  v19 = sub_1E324FBDC();
  (*(v9 + 16))(v11, v19, v8);

  v20 = sub_1E41FFC94();
  v21 = sub_1E42067F4();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v31 = a3;
    v23 = a1;
    v24 = v22;
    v25 = swift_slowAlloc();
    v33 = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_1E3270FC8(v16, v18, &v33);
    _os_log_impl(&dword_1E323F000, v20, v21, "Fetch SearchRACConfiguration - An error occured %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x1E69143B0](v25, -1, -1);
    v26 = v24;
    a1 = v23;
    a3 = v31;
    MEMORY[0x1E69143B0](v26, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  sub_1E3A648A8();
  v27 = swift_allocError();
  *v28 = v16;
  v28[1] = v18;

  a3(v27, 0, 0, 1);

  result = [objc_opt_self() valueWithUndefinedInContext_];
  if (result)
  {
    v29 = result;

    return v29;
  }

LABEL_13:
  __break(1u);
  return result;
}

void sub_1E3F17FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  ObjectType = swift_getObjectType();
  v17 = [v7 appContext];
  if (v17)
  {
    v18 = v17;
    v19 = swift_allocObject();
    v19[2] = v8;
    v19[3] = a6;
    v19[4] = a7;
    v19[5] = a1;
    v19[6] = a2;
    v19[7] = a3;
    v19[8] = a4;
    v19[9] = a5;
    v19[10] = ObjectType;
    OUTLINED_FUNCTION_0_155();
    OUTLINED_FUNCTION_1_253();
    v23[2] = v20;
    v23[3] = &block_descriptor_6_4;
    v21 = _Block_copy(v23);
    v22 = v8;

    [v18 evaluate_];
    _Block_release(v21);
  }

  OUTLINED_FUNCTION_140_0();
}

void sub_1E3F180FC(void *a1)
{
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v24 = v1[7];
  v9 = v1[8];
  v8 = v1[9];
  v10 = v1[10];
  v11 = sub_1E3A246B8();
  v26[3] = v10;
  v26[0] = v4;
  v12 = v4;
  v13 = a1;
  v25 = sub_1E3A243F8(v26, a1);
  if (v25)
  {
    v14 = v13;
    OUTLINED_FUNCTION_5_200();
    OUTLINED_FUNCTION_4_215();
    v15 = sub_1E4205ED4();
    v16 = [v25 hasProperty_];

    if (v16)
    {
      OUTLINED_FUNCTION_2_4();
      v17 = swift_allocObject();
      *(v17 + 16) = v3;
      *(v17 + 24) = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1E4298AD0;
      v19 = MEMORY[0x1E69E6158];
      *(v18 + 32) = v6;
      *(v18 + 40) = v7;
      *(v18 + 88) = v19;
      *(v18 + 56) = v19;
      *(v18 + 64) = v24;
      *(v18 + 72) = v9;
      *(v18 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
      *(v18 + 96) = v8;

      v20 = sub_1E3A242D8(v14, sub_1E3F18434, v17);
      *(v18 + 152) = v11;
      *(v18 + 128) = v20;
      OUTLINED_FUNCTION_4_215();
      OUTLINED_FUNCTION_5_200();
      v21 = sub_1E4205ED4();
      sub_1E3A49FB0(v21, v18, v25);
    }

    OUTLINED_FUNCTION_140_0();
  }

  else
  {
    OUTLINED_FUNCTION_140_0();
  }
}

uint64_t get_enum_tag_for_layout_string_8VideosUI14SearchRACErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1E3F18350(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E3F183A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

id sub_1E3F18434(uint64_t a1, uint64_t a2, unint64_t a3)
{
  result = OUTLINED_FUNCTION_2_216(a1, a2, a3);
  if (result)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1E6911E60](0, v4);
    }

    else
    {
      if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_11;
      }

      v7 = *(v4 + 32);
    }

    v8 = v7;
    v9 = [v7 toBool];
  }

  else
  {
    v9 = 0;
  }

  v5(v9);
  result = [objc_opt_self() valueWithUndefinedInContext_];
  if (!result)
  {
LABEL_11:
    __break(1u);
  }

  return result;
}

id sub_1E3F184F4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  result = OUTLINED_FUNCTION_2_216(a1, a2, a3);
  if (!result)
  {
    v17 = 0u;
    v18 = 0u;
LABEL_12:
    sub_1E329505C(&v17);
    goto LABEL_13;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x1E6911E60](0, v4);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_21;
    }

    v7 = *(v4 + 32);
  }

  v8 = v7;
  v9 = [v7 toObject];

  if (v9)
  {
    sub_1E4207264();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17 = v15;
  v18 = v16;
  if (!*(&v16 + 1))
  {
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    sub_1E4205CB4();
  }

  v10 = sub_1E3A62BE8();
  if (v11)
  {
    v5(v10 & 1);
  }

  else
  {
    sub_1E3A648A8();
    v12 = swift_allocError();
    *v13 = 0;
    v13[1] = 0;
    (v5)(v12, 0, 0, 1);
  }

  result = [objc_opt_self() valueWithUndefinedInContext_];
  if (result)
  {
    v14 = result;

    return v14;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1E3F18718@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *((*(*a1 + 696))() + 16);

  if (v3 <= 1)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = 1.0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF335F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C648);
  sub_1E3B1FF74();
  sub_1E3F18A04();
  sub_1E4202B04();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C668);
  *(a2 + *(result + 36)) = v4;
  return result;
}

uint64_t sub_1E3F18874()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  (*(*v1 + 696))();
  swift_getKeyPath();
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C670);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C660);
  OUTLINED_FUNCTION_5_58(&qword_1ECF3C678);
  OUTLINED_FUNCTION_0_288(&qword_1ECF3C658);
  return OUTLINED_FUNCTION_3_217();
}

uint64_t sub_1E3F189BC()
{
  v1 = OUTLINED_FUNCTION_4_216();
  v2 = sub_1E42028C4();
  result = swift_getKeyPath();
  *v0 = v1;
  v0[1] = result;
  v0[2] = v2;
  return result;
}

unint64_t sub_1E3F18A04()
{
  result = qword_1ECF3C650;
  if (!qword_1ECF3C650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C648);
    sub_1E32752B0(&qword_1ECF3C658, &qword_1ECF3C660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C650);
  }

  return result;
}

uint64_t sub_1E3F18AB4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 16))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_1E3F18B0C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  sub_1E327F454(a1, v11);
  v9 = swift_allocObject();
  sub_1E37DADF4(v11, v9 + 16);
  *(v9 + 56) = a2;
  *(v9 + 64) = a3;
  *(v9 + 72) = a4;
  *(v9 + 80) = a5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C698);
  sub_1E32752B0(&qword_1ECF3C6A0, &qword_1ECF3C698);
  return sub_1E4203964();
}

uint64_t sub_1E3F18C4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  LODWORD(v5) = a3;
  v8 = sub_1E41FFCB4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E41A3110();
  (*(v9 + 16))(v11, v12, v8);
  sub_1E327F454(a1, v36);
  v13 = sub_1E41FFC94();
  v14 = sub_1E4206814();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v30 = v8;
    v16 = v15;
    v17 = swift_slowAlloc();
    v31 = v5;
    v29 = v17;
    v34[0] = v17;
    *v16 = 136315138;
    v5 = a1;
    v18 = a2;
    v32 = a4;
    v20 = v37;
    v19 = v38;
    __swift_project_boxed_opaque_existential_1(v36, v37);
    v21 = v20;
    a2 = v18;
    a1 = v5;
    v22 = (*(v19 + 24))(v21, v19);
    v24 = v23;
    __swift_destroy_boxed_opaque_existential_1(v36);
    v25 = sub_1E3270FC8(v22, v24, v34);
    a4 = v32;

    *(v16 + 4) = v25;
    _os_log_impl(&dword_1E323F000, v13, v14, "tapped %s", v16, 0xCu);
    v26 = v29;
    __swift_destroy_boxed_opaque_existential_1(v29);
    LOBYTE(v5) = v31;
    MEMORY[0x1E69143B0](v26, -1, -1);
    MEMORY[0x1E69143B0](v16, -1, -1);

    (*(v9 + 8))(v11, v30);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
    __swift_destroy_boxed_opaque_existential_1(v36);
  }

  (*(*a2 + 880))(a1);
  LOBYTE(v36[0]) = v5 & 1;
  v36[1] = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0);
  sub_1E42038F4();
  LOBYTE(v34[0]) = v5 & 1;
  v34[1] = a4;
  v33 = (v35 & 1) == 0;
  sub_1E4203904();
}

uint64_t sub_1E3F18F50()
{
  type metadata accessor for LibDataSourceManager();
  sub_1E3B4E86C();
  v0 = sub_1E42010C4();
  sub_1E42038E4();
  return v0;
}

unint64_t sub_1E3F19004()
{
  result = qword_1ECF3C680;
  if (!qword_1ECF3C680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C668);
    sub_1E32752B0(&qword_1ECF3C688, &qword_1ECF3C690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C680);
  }

  return result;
}

void *sub_1E3F190D0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 48);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  v6 = (*(v5 + 16))(v4, v5);
  v71 = v7;
  v8 = v3[3];
  v9 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v8);
  v10 = (*(v9 + 24))(v8, v9);
  v12 = v11;
  sub_1E327F454(v3, v90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3B640);
  type metadata accessor for LibLocalSource();
  v13 = swift_dynamicCast();
  v14 = v13;
  if (v13)
  {
  }

  v15 = v3[3];
  v16 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v15);
  v17 = (*(v16 + 32))(v15, v16);
  v19 = v18;
  v20 = (*(*v2 + 672))();
  sub_1E37D9AD0(v20, v92);

  v21 = v93;
  if (v93)
  {
    v22 = v94;
    __swift_project_boxed_opaque_existential_1(v92, v93);
    v62 = (*(v22 + 16))(v21, v22);
    v73 = v23;
    __swift_destroy_boxed_opaque_existential_1(v92);
  }

  else
  {
    sub_1E325F748(v92, &unk_1ECF2A740);
    v62 = 0;
    v73 = 0;
  }

  v68 = sub_1E4201B84();
  v91 = 1;
  v67 = sub_1E4201D54();
  LOBYTE(v76[0]) = 1;
  v90[0] = v10;
  v90[1] = v12;
  sub_1E32822E0();

  v24 = sub_1E4202C44();
  v27 = v26;
  v72 = v28;
  v70 = v24;
  if (v14)
  {
    v29 = v24;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
  }

  else
  {
    v90[0] = v17;
    v90[1] = v19;
    v65 = v25;

    v34 = sub_1E4202C44();
    v36 = v35;
    v38 = v37;
    sub_1E4202A74();
    v30 = sub_1E4202C04();
    v31 = v39;
    v63 = v40;
    v33 = v41;

    v42 = v38 & 1;
    v29 = v70;
    sub_1E37434B8(v34, v36, v42);

    v32 = v63 & 1;
    sub_1E37E6F1C(v30, v31, v63 & 1);

    v25 = v65;
  }

  v43 = v25 & 1;
  LOBYTE(v90[0]) = v25 & 1;
  sub_1E37E6F1C(v29, v27, v25 & 1);

  v44 = OUTLINED_FUNCTION_2_217();
  sub_1E39E38F4(v44, v45, v46, v47);
  v48 = OUTLINED_FUNCTION_2_217();
  sub_1E39E3938(v48, v49, v50, v51);
  v52 = OUTLINED_FUNCTION_2_217();
  sub_1E39E3938(v52, v53, v54, v55);
  sub_1E37434B8(v29, v27, v43);

  v56 = v76[0];
  v64 = v33;
  v66 = v30;
  if (v73 && (v6 == v62 ? (v57 = v73 == v71) : (v57 = 0), v57 || (sub_1E42079A4() & 1) != 0))
  {
    v58 = v31;
    v59 = sub_1E42037C4();
  }

  else
  {
    v58 = v31;
    v59 = 0;
  }

  __src[0] = v67;
  __src[1] = 0;
  LOBYTE(__src[2]) = v76[0];
  *(&__src[2] + 1) = v89[0];
  HIDWORD(__src[2]) = *(v89 + 3);
  __src[3] = v29;
  __src[4] = v27;
  LOBYTE(__src[5]) = v43;
  *(&__src[5] + 1) = v88[0];
  HIDWORD(__src[5]) = *(v88 + 3);
  __src[6] = v72;
  __src[7] = v66;
  __src[8] = v58;
  __src[9] = v32;
  __src[10] = v64;
  memcpy(__dst, __src, sizeof(__dst));
  sub_1E3F195F8(__src, v90);

  v76[0] = v67;
  v76[1] = 0;
  v77 = v56;
  *v78 = v89[0];
  *&v78[3] = *(v89 + 3);
  v79 = v70;
  v80 = v27;
  v81 = v43;
  *v82 = v88[0];
  *&v82[3] = *(v88 + 3);
  v83 = v72;
  v84 = v66;
  v85 = v58;
  v86 = v32;
  v87 = v64;
  sub_1E325F748(v76, &qword_1ECF3C6A8);

  memcpy(v90 + 7, __dst, 0x58uLL);
  v60 = v91;
  *a1 = v68;
  *(a1 + 8) = 0;
  *(a1 + 16) = v60;
  result = memcpy((a1 + 17), v90, 0x5FuLL);
  *(a1 + 112) = v59;
  return result;
}

uint64_t sub_1E3F195F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C6A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E3F1966C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = type metadata accessor for GridView();
  v10 = v9[6];
  *(a5 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  swift_storeEnumTagMultiPayload();
  v11 = (a5 + v9[7]);
  type metadata accessor for AppEnvironment();
  OUTLINED_FUNCTION_2_218();
  sub_1E3F1C300(v12, v13);
  *v11 = sub_1E4201754();
  v11[1] = v14;
  v15 = (a5 + v9[10]);
  __src[0] = 0;
  sub_1E42038E4();
  v16 = __dst[1];
  *v15 = __dst[0];
  v15[1] = v16;
  v17 = v9[11];
  sub_1E381BEF8(__src);
  memcpy((a5 + v17), __src, 0x150uLL);
  *(a5 + 16) = sub_1E381AE50;
  *(a5 + 24) = a1;
  *(a5 + 32) = 0;
  *(a5 + v9[12]) = a1;
  *(a5 + v9[14]) = a2;
  memcpy(__dst, (a5 + v17), 0x150uLL);
  memcpy((a5 + v17), a3, 0x150uLL);
  swift_retain_n();
  sub_1E3743538(a3, v67, &qword_1ECF2B5C0);
  sub_1E325F6F0(__dst, &qword_1ECF2B5C0);
  memcpy(v67, a3, sizeof(v67));
  v18 = sub_1E3748B78(v67);
  v19 = 0uLL;
  if (v18 != 1)
  {
    v20 = vdup_n_s32(LOBYTE(v67[27]));
    v21.i64[0] = v20.u32[0];
    v21.i64[1] = v20.u32[1];
    v19 = vandq_s8(*&v67[25], vcgezq_s64(vshlq_n_s64(v21, 0x3FuLL)));
  }

  v65 = *v19.i64;
  v22 = (a5 + v9[8]);
  *v22 = v19;
  v22[1].i64[0] = 0;
  type metadata accessor for LayoutGrid();
  v23 = sub_1E3A2579C(v65);
  v24 = a5 + v9[9];
  *v24 = v23;
  *(v24 + 8) = 0;
  memcpy(v66, a3, sizeof(v66));
  if (sub_1E3748B78(v66) == 1)
  {
    v25 = 0;
  }

  else
  {
    v25 = v66[281];
    sub_1E325F6F0(a3, &qword_1ECF2B5C0);
  }

  *(a5 + v9[13]) = v25 & 1;
  if (!a4)
  {
    type metadata accessor for CollectionEditableModel(0);
    sub_1E3845488(0);
  }

  type metadata accessor for CollectionEditableModel(0);
  OUTLINED_FUNCTION_4_217();
  sub_1E3F1C300(v26, v27);

  OUTLINED_FUNCTION_32_0();
  *a5 = sub_1E42010C4();
  *(a5 + 8) = v28;
  v29 = *(*a1 + 1040);

  v31 = v29(v30);

  v32 = MEMORY[0x1E69E7CC0];
  if (!v31)
  {
    v36 = MEMORY[0x1E69E7CC0];
LABEL_47:
    OUTLINED_FUNCTION_8();
    (*(v57 + 392))(v36);
  }

  result = sub_1E32AE9B0(v31);
  v34 = result;
  v35 = 0;
  v63 = v31 & 0xFFFFFFFFFFFFFF8;
  v64 = v31 & 0xC000000000000001;
  v62 = v31 + 32;
  v36 = v32;
  v59 = result;
  v60 = v31;
  while (1)
  {
    if (v35 == v34)
    {

      goto LABEL_47;
    }

    if (v64)
    {
      result = MEMORY[0x1E6911E60](v35, v31);
      v37 = result;
    }

    else
    {
      if (v35 >= *(v63 + 16))
      {
        goto LABEL_49;
      }

      v37 = *(v62 + 8 * v35);
    }

    v38 = __OFADD__(v35++, 1);
    if (v38)
    {
      break;
    }

    result = (*(*v37 + 872))(result);
    if (!result)
    {
      goto LABEL_30;
    }

    v39 = result;
    if (result >> 62)
    {
      v40 = sub_1E4207384();
      if (!v40)
      {
LABEL_29:

LABEL_30:
        v42 = v32;
        goto LABEL_31;
      }
    }

    else
    {
      v40 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v40)
      {
        goto LABEL_29;
      }
    }

    result = sub_1E3E31650(0, v40 & ~(v40 >> 63), 0);
    if (v40 < 0)
    {
      goto LABEL_53;
    }

    v61 = v36;
    v41 = 0;
    v42 = v32;
    do
    {
      if ((v39 & 0xC000000000000001) != 0)
      {
        v43 = MEMORY[0x1E6911E60](v41, v39);
      }

      else
      {
        v43 = *(v39 + 8 * v41 + 32);
      }

      v44 = *(v43 + 16);
      v45 = *(v43 + 24);

      v47 = v42[2];
      v46 = v42[3];
      if (v47 >= v46 >> 1)
      {
        sub_1E3E31650((v46 > 1), v47 + 1, 1);
      }

      ++v41;
      v42[2] = v47 + 1;
      v48 = &v42[2 * v47];
      v48[4] = v44;
      v48[5] = v45;
    }

    while (v40 != v41);

    v34 = v59;
    v31 = v60;
    v32 = MEMORY[0x1E69E7CC0];
    v36 = v61;
LABEL_31:
    v49 = v42[2];
    v50 = v36[2];
    v51 = v50 + v49;
    if (__OFADD__(v50, v49))
    {
      goto LABEL_50;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || (v52 = v36[3] >> 1, v53 = v36, v52 < v51))
    {
      if (v50 <= v51)
      {
        v54 = v50 + v49;
      }

      else
      {
        v54 = v50;
      }

      result = sub_1E3F1B6AC(result, v54, 1, v36);
      v53 = result;
      v52 = *(result + 24) >> 1;
    }

    if (v42[2])
    {
      if (v52 - v53[2] < v49)
      {
        goto LABEL_52;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960);
      swift_arrayInitWithCopy();

      if (v49)
      {
        v55 = v53[2];
        v38 = __OFADD__(v55, v49);
        v56 = v55 + v49;
        if (v38)
        {
          goto LABEL_54;
        }

        v53[2] = v56;
      }
    }

    else
    {

      if (v49)
      {
        goto LABEL_51;
      }
    }

    v36 = v53;
  }

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
  return result;
}

uint64_t sub_1E3F19CCC@<X0>(uint64_t a1@<X8>)
{
  v195 = a1;
  v2 = type metadata accessor for GridView();
  OUTLINED_FUNCTION_0_10();
  v182 = v3;
  MEMORY[0x1EEE9AC00](v4);
  v191 = v5;
  v192 = &v167 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = sub_1E4202084();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v178 = v8 - v7;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C6B0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_5();
  v181 = v10;
  MEMORY[0x1EEE9AC00](v11);
  v180 = &v167 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C6B8);
  OUTLINED_FUNCTION_17_2(v13);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_44();
  v193 = v15;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C6C0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_44();
  v188 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C6C8);
  OUTLINED_FUNCTION_0_10();
  v185 = v19;
  v186 = v18;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_44();
  v190 = v21;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C6D0);
  OUTLINED_FUNCTION_0_10();
  v184 = v22;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_44();
  v183 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C6D8);
  OUTLINED_FUNCTION_17_2(v25);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_44();
  v196 = v27;
  sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v205 = v28;
  v206 = v29;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5();
  v202 = v31 - v30;
  sub_1E4203C44();
  OUTLINED_FUNCTION_0_10();
  v198 = v33;
  v199 = v32;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5();
  v36 = (v35 - v34);
  sub_1E4203C54();
  OUTLINED_FUNCTION_0_10();
  v203 = v38;
  v204 = v37;
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_2_5();
  v176 = v39;
  MEMORY[0x1EEE9AC00](v40);
  v207 = &v167 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A250);
  OUTLINED_FUNCTION_17_2(v42);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v167 - v44;
  v46 = (v1 + *(v2 + 32));
  v47 = *v46;
  v48 = v46[1];
  v49 = v46[2];
  v216 = *v46;
  v217 = v48;
  v218 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29028);
  sub_1E42038F4();
  if (!*(v1 + *(v2 + 28)))
  {
    goto LABEL_31;
  }

  v50 = v2;
  v51 = *v215[0].i64;
  OUTLINED_FUNCTION_8();
  v53 = *(v52 + 248);

  v53(v54);

  v216 = v47;
  v217 = v48;
  v218 = v49;
  sub_1E42038F4();
  v55 = v50;
  v56 = v50[12];
  v57 = v1;
  v58 = *(v1 + v56);
  v200 = sub_1E3A610FC(v58);
  v59 = (*(*v58 + 960))();
  v201 = v55[6];
  sub_1E3746E10(v45);
  v60 = v205;
  __swift_storeEnumTagSinglePayload(v45, 0, 1, v205);
  memcpy(v215, (v1 + v55[11]), sizeof(v215));
  v61 = sub_1E3748B78(v215);
  v62.i32[0] = 1;
  v63.i32[0] = v61;
  v64 = vdupq_lane_s32(*&vceqq_s32(v63, v62), 0);
  v224 = vbicq_s8(v215[14], v64);
  v225 = vbicq_s8(v215[15], v64);
  v226 = v61 == 1;
  j__OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_5_11();
  v194 = v59;
  sub_1E389BFA8();
  sub_1E325F6F0(v45, &qword_1ECF2A250);
  type metadata accessor for LayoutGrid();
  sub_1E3A25950(v51);
  v66 = v65;
  *v36 = xmmword_1E42DDC30;
  (*(v198 + 13))(v36, *MEMORY[0x1E697D748], v199);
  sub_1E4203D84();
  sub_1E4203C64();
  sub_1E3A258E4(v51);
  v71.n128_f64[0] = j_nullsub_1(v67, v68, v69, v70);
  v73 = v72;
  v75 = v74;
  v76 = (*(*v58 + 1040))(v71);
  if (!v76)
  {
LABEL_9:
    v78 = 0;
    goto LABEL_10;
  }

  v77 = v76;
  if (!sub_1E32AE9B0(v76))
  {

    goto LABEL_9;
  }

  if ((v77 & 0xC000000000000001) != 0)
  {
    v78 = MEMORY[0x1E6911E60](0, v77);
    goto LABEL_7;
  }

  if (*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v78 = *(v77 + 32);

LABEL_7:

LABEL_10:
    v79 = v202;
    sub_1E3746E10(v202);
    v80 = sub_1E389CA24(v58, v79, 0);
    v81 = *(v206 + 8);
    v206 += 8;
    v175 = v81;
    v82 = v81(v79, v60);
    if (v78 && (v83 = (*(*v78 + 872))(v82)) != 0)
    {
      v84 = sub_1E32AE9B0(v83);
    }

    else
    {
      v84 = 0;
    }

    v198 = v55;
    v85 = v57 + v55[9];
    v86 = *v85;
    v87 = *(v85 + 8);
    LOBYTE(v214[0]) = v86;
    v214[1] = v87;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29C18);
    sub_1E42038F4();
    sub_1E3A260B4(v84, v80, 1, v213[0], 1.0);
    v173 = v88;
    v89 = v219;
    v90 = v220;
    sub_1E3F1AE60(v66);
    v91 = (*(*v58 + 392))();
    v174 = sub_1E3BBA798(v91);

    v187 = v57;
    type metadata accessor for CollectionInteractor();
    OUTLINED_FUNCTION_0_289();
    sub_1E3F1C300(v92, v93);
    v94 = OUTLINED_FUNCTION_13_157();
    v95 = OBJC_IVAR____TtC8VideosUI20CollectionInteractor_collectionViewModel;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v96 = *(v94 + v95);

    v98 = (*(*v96 + 968))(v97);

    OUTLINED_FUNCTION_13_157();
    sub_1E37CDDA4();

    if (v78)
    {
      v199 = v98;
      v99 = *(*v78 + 872);

      v101 = v99(v100);

      if (v101)
      {
        v102 = sub_1E32AE9B0(v101);

        if (v102)
        {
          v171 = v73;
          v103 = sub_1E4201D54();
          v104 = v193;
          *v193 = v103;
          v104[1] = 0;
          *(v104 + 16) = 0;
          v105 = OUTLINED_FUNCTION_5_8();
          v107 = v106;
          v109 = v108;
          v111 = v110;
          v112 = v198;
          v113 = v187;
          v170 = *(v187 + v198[13]);
          v172 = v75;
          if (v170 == 1)
          {
            v114 = v202;
            sub_1E3746E10(v202);
            sub_1E3B0352C();
            v115 = OUTLINED_FUNCTION_16_132();
            v116(v115);
            v117 = v114 ^ 1;
            v118 = *(v113 + v112[14]);
          }

          else
          {
            v118 = 0;
            v117 = 0;
          }

          v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C6E0);
          v198 = (v193 + *(v121 + 44));
          v122 = (v113 + v112[10]);
          v123 = *v122;
          v124 = v122[1];
          v169 = v123;
          v213[0] = v123;
          v168 = v124;
          v213[1] = v124;
          v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28868);
          sub_1E4203914();
          v125 = v214[0];
          v126 = v214[1];
          v127 = *&v214[2];

          sub_1E3CEC988(v128, v117 & 1, v118, v125, v126, v221, v105, v107, v109, v111, v127);
          v129 = v176;
          (*(v203 + 16))(v176, v207, v204);
          v130 = sub_1E3E27BC4(v129, v173);
          v177 = &v167;
          MEMORY[0x1EEE9AC00](v130);
          *(&v167 - 4) = v78;
          *(&v167 - 3) = &v216;
          v166 = v113;
          LODWORD(v214[0]) = 0;
          sub_1E3F1C300(&qword_1EE2889E8, MEMORY[0x1E697FCB0]);
          sub_1E4207CD4();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C6E8);
          v165 = sub_1E3F1B834();
          v131 = v180;
          sub_1E4203EB4();

          sub_1E3AB26D4(v222);
          v132 = v131 + *(v179 + 36);
          v133 = v222[1];
          *v132 = v222[0];
          *(v132 + 16) = v133;
          *(v132 + 32) = v223;
          v134 = v181;
          sub_1E32DB380(v131, v181);
          memcpy(v213, v221, sizeof(v213));
          v135 = v198;
          memcpy(v198, v221, 0x50uLL);
          v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C6F8);
          sub_1E32DB380(v134, v135 + *(v136 + 48));
          sub_1E381BF1C(v213, v214);
          sub_1E325F6F0(v131, &qword_1ECF3C6B0);
          sub_1E325F6F0(v134, &qword_1ECF3C6B0);
          memcpy(v214, v221, 0x50uLL);
          sub_1E381BFD4(v214);
          v137 = 0.0;
          if (v170)
          {
            v138 = v202;
            sub_1E3746E10(v202);
            sub_1E3B0352C();
            v139 = OUTLINED_FUNCTION_16_132();
            v140(v139);
            v141 = v182;
            v143 = v171;
            v142 = v172;
            if ((v138 & 1) == 0)
            {
              v209 = v169;
              v210 = v168;
              sub_1E42038F4();
              v137 = v208;
            }
          }

          else
          {
            v141 = v182;
            v143 = v171;
            v142 = v172;
          }

          v144 = sub_1E4202734();
          v145 = v188;
          sub_1E3741EA0(v193, v188, &qword_1ECF3C6B8);
          v146 = v145 + *(v189 + 36);
          *v146 = v144;
          *(v146 + 8) = v89 - v137;
          *(v146 + 16) = v143;
          *(v146 + 24) = v90;
          *(v146 + 32) = v142;
          *(v146 + 40) = 0;
          v209 = v58;
          v147 = v192;
          sub_1E3F1B90C(v113, v192);
          v148 = (*(v141 + 80) + 16) & ~*(v141 + 80);
          v149 = swift_allocObject();
          sub_1E3F1B970(v147, v149 + v148);
          v206 = type metadata accessor for CollectionViewModel();
          v150 = sub_1E3F1BAB0();
          v151 = sub_1E3F1C300(&qword_1EE275068, type metadata accessor for CollectionViewModel);

          v152 = v189;
          v153 = v188;
          sub_1E4203524();

          sub_1E325F6F0(v153, &qword_1ECF3C6C0);
          v154 = v192;
          sub_1E3F1B90C(v187, v192);
          v155 = swift_allocObject();
          sub_1E3F1B970(v154, v155 + v148);
          v209 = v152;
          v210 = v206;
          v211 = v150;
          v212 = v151;
          OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
          v157 = v183;
          v158 = v186;
          v159 = v190;
          sub_1E403796C(1, sub_1E3F1BCE4, v155, v186, OpaqueTypeConformance2);

          sub_1E375B760(&v216);

          (*(v185 + 8))(v159, v158);
          v120 = v196;
          v160 = v197;
          (*(v184 + 32))(v196, v157, v197);
          __swift_storeEnumTagSinglePayload(v120, 0, 1, v160);
          v119 = v195;
          goto LABEL_28;
        }
      }

      sub_1E375B760(&v216);
    }

    else
    {

      sub_1E375B760(&v216);
    }

    v119 = v195;
    v120 = v196;
    __swift_storeEnumTagSinglePayload(v196, 1, 1, v197);
LABEL_28:
    v161 = v207;
    sub_1E3741EA0(v120, v119, &qword_1ECF3C6D8);
    return (*(v203 + 8))(v161, v204);
  }

  __break(1u);
LABEL_31:
  type metadata accessor for AppEnvironment();
  OUTLINED_FUNCTION_2_218();
  sub_1E3F1C300(v163, v164);
  result = sub_1E4201744();
  __break(1u);
  return result;
}

double sub_1E3F1AE60(double a1)
{
  v2 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  type metadata accessor for CollectionInteractor();
  OUTLINED_FUNCTION_0_289();
  sub_1E3F1C300(v9, v10);
  v11 = sub_1E4200BC4();
  v12 = OBJC_IVAR____TtC8VideosUI20CollectionInteractor_collectionViewModel;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v13 = *(v11 + v12);

  v23 = 34;
  v14 = *(*v13 + 776);

  v14(v24, &v23, &unk_1F5D5DAC8, &off_1F5D5C998);
  if (v24[3])
  {
    v15 = swift_dynamicCast();
    if (v15 && (v23 & 1) != 0)
    {

      return a1;
    }
  }

  else
  {
    v15 = sub_1E325F6F0(v24, &unk_1ECF296E0);
  }

  v16 = (*(*v13 + 392))(v15);

  if (!v16 || (OUTLINED_FUNCTION_8(), v18 = COERCE_DOUBLE((*(v17 + 1176))()), v20 = v19, , (v20 & 1) != 0) || (type metadata accessor for GridView(), sub_1E3746E10(v8), v21 = sub_1E3B02A04(), (*(v4 + 8))(v8, v2), (v21 & 1) != 0))
  {
    a1 = *sub_1E3C11B34();
  }

  else
  {

    return v18;
  }

  return a1;
}

uint64_t sub_1E3F1B13C@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v25[1] = a5;
  v9 = type metadata accessor for GridView();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v25[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C6E8);
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v25 - v15;
  if (!a1 || (OUTLINED_FUNCTION_8(), (v18 = (*(v17 + 872))()) == 0))
  {

    v18 = MEMORY[0x1E69E7CC0];
  }

  v26[42] = v18;
  swift_getKeyPath();
  sub_1E3F1B90C(a4, v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v10 + 80) + 360) & ~*(v10 + 80);
  v20 = swift_allocObject();
  memcpy((v20 + 16), a2, 0x150uLL);
  *(v20 + 352) = a3;
  sub_1E3F1B970(v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  sub_1E37E6E1C(a2, v26);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C718);
  sub_1E32752B0(&qword_1EE23B548, &unk_1ECF2C790);
  sub_1E375BEF4();
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29060);
  v22 = OUTLINED_FUNCTION_6_8();
  v26[0] = v21;
  v26[1] = v22;
  swift_getOpaqueTypeConformance2();
  sub_1E4203B34();
  swift_getKeyPath();
  v23 = v25[0];
  sub_1E4203B24();

  return (*(v13 + 8))(v16, v23);
}

uint64_t sub_1E3F1B464(uint64_t *a1, const void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29060);
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v26 - v10;
  v12 = *a1;
  memcpy(__dst, a2, sizeof(__dst));
  OUTLINED_FUNCTION_25();
  sub_1E40EA03C(v13, v14, v15, v16, v17);
  v26[1] = v12;
  if (a3)
  {
    v26[4] = a3;
    type metadata accessor for ViewModel();
    sub_1E3F1C300(&qword_1EE23BA60, type metadata accessor for ViewModel);

    v18 = sub_1E4205E84();

    v19 = 0;
    if (v18)
    {
      type metadata accessor for CollectionInteractor();
      OUTLINED_FUNCTION_0_289();
      sub_1E3F1C300(v20, v21);
      v22 = sub_1E4200BC4();
      v23 = OBJC_IVAR____TtC8VideosUI20CollectionInteractor_paginator;
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      v19 = *(v22 + v23);
    }
  }

  else
  {
    v19 = 0;
  }

  v24 = OUTLINED_FUNCTION_6_8();
  sub_1E3A610C8(v19, v6, v24);

  return (*(v8 + 8))(v11, v6);
}

void *sub_1E3F1B6AC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40750);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t type metadata accessor for GridView()
{
  result = qword_1EE28FB10;
  if (!qword_1EE28FB10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E3F1B834()
{
  result = qword_1ECF3C6F0;
  if (!qword_1ECF3C6F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C6E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29060);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C6F0);
  }

  return result;
}

uint64_t sub_1E3F1B90C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GridView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3F1B970(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GridView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3F1B9D4(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for GridView();
  OUTLINED_FUNCTION_17_2(v3);
  v4 = *a2;
  type metadata accessor for CollectionInteractor();
  OUTLINED_FUNCTION_0_289();
  sub_1E3F1C300(v5, v6);
  sub_1E4200BC4();
  sub_1E37CDC8C(v4);
}

unint64_t sub_1E3F1BAB0()
{
  result = qword_1ECF3C700;
  if (!qword_1ECF3C700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C6C0);
    sub_1E32752B0(&qword_1ECF3C708, &qword_1ECF3C6B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C700);
  }

  return result;
}

uint64_t objectdestroyTm_50()
{
  type metadata accessor for GridView();
  OUTLINED_FUNCTION_144();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  sub_1E3264CE0();
  v4 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E42012F4();
    OUTLINED_FUNCTION_2();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  OUTLINED_FUNCTION_20_110();
  OUTLINED_FUNCTION_20_110();
  OUTLINED_FUNCTION_15_140();
  if (!v7)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E3F1BCE4()
{
  v0 = type metadata accessor for GridView();
  OUTLINED_FUNCTION_17_2(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29C18);
  return sub_1E4203904();
}

void sub_1E3F1BDC8()
{
  sub_1E3F1BFE0();
  if (v0 <= 0x3F)
  {
    sub_1E3E290B0();
    if (v1 <= 0x3F)
    {
      sub_1E3F1C074(319, &qword_1EE289EB0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1E381EC50();
        if (v3 <= 0x3F)
        {
          sub_1E3F1C074(319, &qword_1EE288648, type metadata accessor for CGSize, MEMORY[0x1E6981790]);
          if (v5 <= 0x3F)
          {
            OUTLINED_FUNCTION_6_191(v4, &qword_1EE288690, &unk_1F5D6AC00);
            if (v7 <= 0x3F)
            {
              OUTLINED_FUNCTION_6_191(v6, &qword_1EE288680, MEMORY[0x1E69E7DE0]);
              if (v8 <= 0x3F)
              {
                sub_1E3F1C0D8(319, &qword_1EE259C58, &unk_1F5D8B8B8, MEMORY[0x1E69E6720]);
                if (v9 <= 0x3F)
                {
                  type metadata accessor for CollectionViewModel();
                  if (v10 <= 0x3F)
                  {
                    sub_1E3F1C074(319, qword_1EE283808, type metadata accessor for ShowcaseValue, MEMORY[0x1E69E6720]);
                    if (v11 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1E3F1BFE0()
{
  if (!qword_1EE289D20)
  {
    type metadata accessor for CollectionEditableModel(255);
    sub_1E3F1C300(&qword_1EE25D778, type metadata accessor for CollectionEditableModel);
    v0 = sub_1E42010F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE289D20);
    }
  }
}

void sub_1E3F1C074(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1E3F1C0D8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1E3F1C128()
{
  result = qword_1ECF3C710;
  if (!qword_1ECF3C710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C6D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C6C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C6C0);
    type metadata accessor for CollectionViewModel();
    sub_1E3F1BAB0();
    sub_1E3F1C300(&qword_1EE275068, type metadata accessor for CollectionViewModel);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C710);
  }

  return result;
}

uint64_t sub_1E3F1C27C(uint64_t *a1)
{
  v3 = type metadata accessor for GridView();
  OUTLINED_FUNCTION_17_2(v3);
  v4 = *(v1 + 352);

  return sub_1E3F1B464(a1, (v1 + 16), v4);
}

uint64_t sub_1E3F1C300(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1E3F1C348(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8VideosUI16CarouselViewCell_overlayView;
  OUTLINED_FUNCTION_5_0();
  v5 = *&v1[v4];
  if (v5)
  {
    if (v5 == a1)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (a1)
  {
LABEL_3:
    v12 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xE8))();
    MEMORY[0x1EEE9AC00](v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA40);
    sub_1E4148DE0(sub_1E3F1DF48);
  }

LABEL_4:
  v6 = [v1 vuiContentView];
  v7 = [v6 vui:*&v2[v4] addSubview:a1 oldView:?];

  if (v7)
  {
    v8 = *&v2[v4];
    v9 = [v2 vuiContentView];
    OUTLINED_FUNCTION_4_0();
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    MEMORY[0x1EEE9AC00](v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35970);
    sub_1E4148DE0(sub_1E3EE0DA4);
  }

  return [v2 vui_setNeedsLayout];
}

void *sub_1E3F1C564()
{
  v1 = OBJC_IVAR____TtC8VideosUI16CarouselViewCell_overlayView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void (*sub_1E3F1C5C0())(uint64_t a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_3_9(v2);
  v3 = OBJC_IVAR____TtC8VideosUI16CarouselViewCell_overlayView;
  OUTLINED_FUNCTION_4_13();
  v4 = *(v0 + v3);
  *(v1 + 24) = v4;
  v5 = v4;
  return sub_1E3F1C630;
}

uint64_t sub_1E3F1C648()
{
  v1 = OBJC_IVAR____TtC8VideosUI16CarouselViewCell_isCenterGrowth;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E3F1C67C(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI16CarouselViewCell_isCenterGrowth;
  result = OUTLINED_FUNCTION_14_0();
  *(v1 + v3) = a1;
  return result;
}

void *sub_1E3F1C710()
{
  v1 = OBJC_IVAR____TtC8VideosUI16CarouselViewCell_cellImageView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E3F1C74C(void *a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI16CarouselViewCell_cellImageView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = OBJC_IVAR____TtC8VideosUI16CarouselViewCell_cellImageView;
  v6 = a1;
  OUTLINED_FUNCTION_5_0();
  v7 = *(v1 + v5);
  if (!v4)
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v7)
  {
    v8 = v7 == v4;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
LABEL_6:
    OUTLINED_FUNCTION_21();
    v10 = (*(v9 + 280))();
    v11 = *(v1 + v5);
    OUTLINED_FUNCTION_64();
    v13 = *(v12 + 128);
    v14 = v11;
    v13(v11);
  }

LABEL_7:
}

void (*sub_1E3F1C85C())(uint64_t a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_3_9(v2);
  v3 = OBJC_IVAR____TtC8VideosUI16CarouselViewCell_cellImageView;
  OUTLINED_FUNCTION_4_13();
  v4 = *(v0 + v3);
  *(v1 + 24) = v4;
  v5 = v4;
  return sub_1E3F1C8CC;
}

void sub_1E3F1C8E4(uint64_t a1, char a2, void (*a3)(id))
{
  v4 = *a1;
  v6 = (*a1 + 24);
  v5 = *v6;
  if (a2)
  {
    v7 = v5;
    a3(v5);
  }

  else
  {
    a3(*(*a1 + 24));
  }

  free(v4);
}

uint64_t sub_1E3F1C964()
{
  OUTLINED_FUNCTION_21();
  v1 = (*(v0 + 280))();
  OUTLINED_FUNCTION_64();
  v3 = (*(v2 + 144))();

  return v3;
}

void sub_1E3F1C9F0(uint64_t a1)
{
  OUTLINED_FUNCTION_21();
  v4 = (*(v2 + 280))();
  OUTLINED_FUNCTION_4_218();
  (*(v3 + 152))(a1);
}

void (*sub_1E3F1CA9C(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  OUTLINED_FUNCTION_21();
  v3 += 35;
  v4 = *v3;
  *(v5 + 16) = *v3;
  *(v5 + 24) = v3 & 0xFFFFFFFFFFFFLL | 0x70EC000000000000;
  v6 = v4();
  OUTLINED_FUNCTION_4_218();
  v8 = (*(v7 + 144))();

  *a1 = v8;
  return sub_1E3F1CB58;
}

void sub_1E3F1CB58(uint64_t a1, char a2)
{
  v2 = *(a1 + 16);
  v3 = *a1;
  if (a2)
  {
    v4 = v3;
    v2();
    OUTLINED_FUNCTION_64();
    v9 = v6;
    (*(v5 + 152))(v3);
  }

  else
  {
    v2();
    OUTLINED_FUNCTION_64();
    v9 = v8;
    (*(v7 + 152))(v3);
  }
}

uint64_t sub_1E3F1CC44()
{
  OUTLINED_FUNCTION_5_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA40);
  return sub_1E4148DE0(sub_1E3F1DDB8);
}

uint64_t sub_1E3F1CCC8()
{
  v1 = v0 + OBJC_IVAR____TtC8VideosUI16CarouselViewCell_cornerRadius;
  OUTLINED_FUNCTION_5_0();
  return *v1;
}

uint64_t sub_1E3F1CD0C(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC8VideosUI16CarouselViewCell_cornerRadius;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return sub_1E3F1CC44();
}

uint64_t (*sub_1E3F1CD70(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_4();
  return sub_1E3F1CDC4;
}

uint64_t sub_1E3F1CDC4(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1E3F1CC44();
  }

  return result;
}

void sub_1E3F1CDF8(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8VideosUI16CarouselViewCell_shadow;
  OUTLINED_FUNCTION_5_0();
  v5 = *(v2 + v4);
  if (a1)
  {
    if (v5)
    {
      v6 = v5 == a1;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      return;
    }
  }

  else if (!v5)
  {
    return;
  }

  v7 = v5;
  if ([v7 shadowColor])
  {
    sub_1E4207264();
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  v22[0] = v20;
  v22[1] = v21;
  if (*(&v21 + 1))
  {
    sub_1E3755B54();
    v8 = swift_dynamicCast();
    if (v8)
    {
      v9 = v19;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v8 = sub_1E329505C(v22);
    v9 = 0;
  }

  *&v22[0] = v9;
  MEMORY[0x1EEE9AC00](v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AC50);
  sub_1E4148DE0(sub_1E3F1DD14);

  v10 = OUTLINED_FUNCTION_16_133();
  if (v10)
  {
    v11 = v10;
    [v7 shadowOffset];
    [v11 setShadowOffset_];
  }

  v12 = OUTLINED_FUNCTION_16_133();
  if (v12)
  {
    v13 = v12;
    [v7 shadowBlurRadius];
    [v13 setShadowRadius_];
  }

  v14 = OUTLINED_FUNCTION_16_133();
  if (v14)
  {
    v16 = v14;
    LODWORD(v15) = 1.0;
    [v14 setShadowOpacity_];
  }

  v17 = OUTLINED_FUNCTION_16_133();
  if (v17)
  {
    v18 = v17;
    [v17 setShadowPathIsBounds_];
  }
}

void *sub_1E3F1D02C()
{
  v1 = OBJC_IVAR____TtC8VideosUI16CarouselViewCell_shadow;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E3F1D088(void *a1, uint64_t *a2, void (*a3)(void *))
{
  v6 = *a2;
  OUTLINED_FUNCTION_14_0();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  v8 = a1;
  a3(v7);
}

void (*sub_1E3F1D0F4())(uint64_t a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_3_9(v2);
  v3 = OBJC_IVAR____TtC8VideosUI16CarouselViewCell_shadow;
  OUTLINED_FUNCTION_4_13();
  v4 = *(v0 + v3);
  *(v1 + 24) = v4;
  v5 = v4;
  return sub_1E3F1D164;
}

id sub_1E3F1D17C()
{
  v1 = OBJC_IVAR____TtC8VideosUI16CarouselViewCell____lazy_storage___inlinePlaybackView;
  v2 = *&v0[OBJC_IVAR____TtC8VideosUI16CarouselViewCell____lazy_storage___inlinePlaybackView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC8VideosUI16CarouselViewCell____lazy_storage___inlinePlaybackView];
  }

  else
  {
    v4 = v0;
    type metadata accessor for InlinePlaybackView();
    [v0 vuiBounds];
    v5 = sub_1E3B789F8();
    [v5 setVuiClipsToBounds_];
    v6 = [v4 vuiContentView];
    [v6 vui:v5 addSubview:0 oldView:?];

    v7 = *&v4[v1];
    *&v4[v1] = v5;
    v3 = v5;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_1E3F1D250(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8VideosUI16CarouselViewCell____lazy_storage___inlinePlaybackView);
  *(v1 + OBJC_IVAR____TtC8VideosUI16CarouselViewCell____lazy_storage___inlinePlaybackView) = a1;
}

double sub_1E3F1D264()
{
  v1 = OBJC_IVAR____TtC8VideosUI16CarouselViewCell_visibleProgress;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E3F1D298(double a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI16CarouselViewCell_visibleProgress;
  result = OUTLINED_FUNCTION_14_0();
  *(v1 + v3) = a1;
  return result;
}

double sub_1E3F1D2DC(char a1, double a2, double a3)
{
  v13.receiver = v3;
  v13.super_class = type metadata accessor for CarouselViewCell();
  objc_msgSendSuper2(&v13, sel_vui_layoutSubviews_computationOnly_, a1 & 1, a2, a3);
  v8 = v7;
  if ((a1 & 1) == 0)
  {
    sub_1E3F1D3D0();
    OUTLINED_FUNCTION_21();
    v10 = (*(v9 + 136))();
    if (v10)
    {
      v11 = v10;
      [v3 vuiBounds];
      [v11 setFrame_];
    }
  }

  return v8;
}

void sub_1E3F1D3D0()
{
  v1 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v3 = (*(v2 + 304))();
  [v0 bounds];
  v4 = CGRectGetWidth(v7) * v3 * -0.5;
  v5 = (*((*v1 & *v0) + 0x118))();
  [v0 vuiBounds];
  v9 = CGRectOffset(v8, v4, 0.0);
  [v5 setFrame_];
}

id sub_1E3F1D538()
{
  OUTLINED_FUNCTION_0_8();
  *(v0 + OBJC_IVAR____TtC8VideosUI16CarouselViewCell_overlayView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI16CarouselViewCell_isCenterGrowth) = 1;
  *(v0 + OBJC_IVAR____TtC8VideosUI16CarouselViewCell_cellImageView) = 0;
  v1 = v0 + OBJC_IVAR____TtC8VideosUI16CarouselViewCell_cornerRadius;
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC8VideosUI16CarouselViewCell_shadow) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI16CarouselViewCell____lazy_storage___inlinePlaybackView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI16CarouselViewCell_visibleProgress) = 0;
  v9 = type metadata accessor for CarouselViewCell();
  v2 = OUTLINED_FUNCTION_2_0();
  v5 = objc_msgSendSuper2(v3, v4, v2, v0, v9);
  if (TVAppFeature.isEnabled.getter(10))
  {
    v6 = objc_opt_self();
    if (([v6 isPhone] & 1) != 0 || objc_msgSend(v6, sel_isPad))
    {
      v7 = [v5 vuiContentView];
      [v7 setVuiClipsToBounds_];
    }
  }

  return v5;
}

void sub_1E3F1D688()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI16CarouselViewCell_overlayView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI16CarouselViewCell_isCenterGrowth) = 1;
  *(v0 + OBJC_IVAR____TtC8VideosUI16CarouselViewCell_cellImageView) = 0;
  v1 = v0 + OBJC_IVAR____TtC8VideosUI16CarouselViewCell_cornerRadius;
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC8VideosUI16CarouselViewCell_shadow) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI16CarouselViewCell____lazy_storage___inlinePlaybackView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI16CarouselViewCell_visibleProgress) = 0;
  sub_1E42076B4();
  __break(1u);
}

uint64_t sub_1E3F1D75C()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for CarouselViewCell();
  objc_msgSendSuper2(&v6, sel_vui_prepareForReuse);
  OUTLINED_FUNCTION_21();
  v2 = (*(v1 + 136))();
  if (v2)
  {
    v3 = v2;
    [v2 vui:0 setOverrideUserInterfaceStyle:?];
  }

  v4 = OBJC_IVAR____TtC8VideosUI16CarouselViewCell_visibleProgress;
  result = OUTLINED_FUNCTION_14_0();
  *&v0[v4] = 0;
  return result;
}

void sub_1E3F1D840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_21();
  v8 = (*(v6 + 280))();
  OUTLINED_FUNCTION_64();
  (*(v7 + 240))(a1, a2, a3);
}

uint64_t sub_1E3F1D90C()
{
  OUTLINED_FUNCTION_21();
  if ((*(v1 + 160))() & 1) == 0 && (TVAppFeature.isEnabled.getter(20))
  {
    v2 = objc_opt_self();
    OUTLINED_FUNCTION_4_0();
    v3 = swift_allocObject();
    *(v3 + 16) = isEscapingClosureAtFileLocation;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1E3F1E074;
    *(v4 + 24) = v3;
    v19 = sub_1E37D1918;
    v20 = v4;
    OUTLINED_FUNCTION_3_4();
    OUTLINED_FUNCTION_27_43();
    v17 = v5;
    v18 = &block_descriptor_15_2;
    v6 = _Block_copy(v16);
    v7 = isEscapingClosureAtFileLocation;

    [v2 vui:v6 performWithoutAnimation:?];
    _Block_release(v6);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  v9 = objc_opt_self();
  OUTLINED_FUNCTION_4_0();
  v10 = swift_allocObject();
  *(v10 + 16) = isEscapingClosureAtFileLocation;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1E3F1DB80;
  *(v11 + 24) = v10;
  v19 = sub_1E379E500;
  v20 = v11;
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_27_43();
  v17 = v12;
  v18 = &block_descriptor_136;
  v13 = _Block_copy(v16);
  v14 = isEscapingClosureAtFileLocation;

  [v9 vui:v13 performWithoutAnimation:?];
  _Block_release(v13);
  v15 = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
  }

  return result;
}

void sub_1E3F1DB84()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_21();
  v3 = (*(v2 + 136))();
  if (v3)
  {
    v4 = v3;
    [v1 vuiBounds];
    [v4 setFrame_];
  }
}

id sub_1E3F1DC28()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CarouselViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1E3F1DCC8(double a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI16CarouselViewCell_visibleProgress;
  OUTLINED_FUNCTION_14_0();
  *(v1 + v3) = a1;
  sub_1E3F1D3D0();
}

void sub_1E3F1DD14(void **a1)
{
  v2 = *a1;
  v3 = [*(v1 + 16) vuiLayer];
  if (v3)
  {
    v5 = v3;
    v4 = [v2 CGColor];
    [v5 setShadowColor_];
  }
}

void sub_1E3F1DDB8(double *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = MEMORY[0x1E69E7D40];
  v5 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x118))();
  OUTLINED_FUNCTION_4_218();
  (*(v6 + 176))(v3);

  if ((TVAppFeature.isEnabled.getter(17) & 1) != 0 && (v7 = *((*v4 & *v2) + 0x88), v8 = v7(), v9 = [v8 vuiLayer], v8, objc_msgSend(v9, sel_setCornerRadius_, v3), v9, (v10 = v7()) != 0) && (v11 = v10, v14 = objc_msgSend(v10, sel_vuiLayer), v11, v14))
  {
    [v14 setMasksToBounds_];
    OUTLINED_FUNCTION_14_13();
  }

  else
  {
    OUTLINED_FUNCTION_14_13();
  }
}

void sub_1E3F1DF48(double *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_21();
  v3 = *(v2 + 136);
  v4 = v3();
  v5 = [v4 vuiLayer];

  [v5 setCornerRadius_];
  v6 = v3();
  if (v6 && (v7 = v6, v10 = [v6 vuiLayer], v7, v10))
  {
    [v10 setMasksToBounds_];
    OUTLINED_FUNCTION_14_13();
  }

  else
  {
    OUTLINED_FUNCTION_14_13();
  }
}

void sub_1E3F1E07C(unint64_t a1, unint64_t a2)
{
  v4 = sub_1E41FE5D4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() sharedInstance];
  if (v8)
  {
    v9 = v8;
    v10 = [objc_opt_self() sharedInstance];
    if (!v10)
    {
LABEL_15:

      return;
    }

    v11 = a2 - a1;
    if (a2 < a1)
    {
      __break(1u);
    }

    else
    {
      v12 = v10;
      sub_1E41FE5C4();
      sub_1E41FE574();
      v14 = v13;
      v16 = *(v5 + 8);
      v15 = (v5 + 8);
      v16(v7, v4);
      v17 = v14 * 1000.0;
      if (COERCE__INT64(fabs(v14 * 1000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v17 > -1.0)
        {
          if (v17 < 1.84467441e19)
          {
            v18 = v17 - a1;
            if (v17 >= a1)
            {
              v19 = v11 > v18;
              v20 = v11 - v18;
              if (!v19)
              {

                goto LABEL_15;
              }

              v21 = v20 / 0xEA60 % 0x3C;
              v22 = sub_1E4206694();
              OUTLINED_FUNCTION_1_254(v22, v23, v24, v25, v26, v27, v28, v29, v51);
              v31 = v30;

              if (v31)
              {
                if (v20 >= 0x36EE80)
                {
                  v34 = sub_1E4206694();
                  OUTLINED_FUNCTION_1_254(v34, v35, v36, v37, v38, v39, v40, v41, v53);

                  if (v21)
                  {
                    v42 = sub_1E3741090(0xD000000000000024, 0x80000001E42890A0, v9);
                    if (v43)
                    {
                      v44 = OUTLINED_FUNCTION_3_218(v42, v43);
                      v45 = MEMORY[0x1E69E6158];
                      v53 = v44;
                      v54 = v44;
                      v51 = MEMORY[0x1E69E6158];
                      v52 = v44;
                      OUTLINED_FUNCTION_0_290();
                      v46 = sub_1E42071F4();
                      v48 = v47;

                      v55 = v46;
                      v56 = v48;
                      OUTLINED_FUNCTION_2_219();
                      v53 = v44;
                      v54 = v44;
                      v51 = v45;
                      v52 = v44;
                      sub_1E42071F4();
                      OUTLINED_FUNCTION_4_219();
                    }

                    else
                    {
                    }

                    goto LABEL_27;
                  }

                  v49 = sub_1E3741090(0xD00000000000001DLL, 0x80000001E42890D0, v9);
                  if (v50)
                  {
                    v53 = OUTLINED_FUNCTION_3_218(v49, v50);
                    v54 = v53;
                    v51 = MEMORY[0x1E69E6158];
                    v52 = v53;
                    OUTLINED_FUNCTION_0_290();
                    sub_1E42071F4();
                    OUTLINED_FUNCTION_4_219();

                    goto LABEL_27;
                  }
                }

                else
                {
                  if (!v21)
                  {

                    return;
                  }

                  v32 = sub_1E3741090(0xD00000000000001FLL, 0x80000001E4289080, v9);
                  if (v33)
                  {
                    v55 = v32;
                    v56 = v33;
                    OUTLINED_FUNCTION_2_219();
                    v51 = sub_1E32822E0();
                    v52 = v51;
                    OUTLINED_FUNCTION_0_290();
                    sub_1E42071F4();
                    OUTLINED_FUNCTION_4_219();

LABEL_27:

                    return;
                  }
                }

                goto LABEL_27;
              }

LABEL_33:
              __break(1u);
              return;
            }

LABEL_32:
            __break(1u);
            goto LABEL_33;
          }

LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

LABEL_30:
        __break(1u);
        goto LABEL_31;
      }
    }

    __break(1u);
    goto LABEL_30;
  }
}

uint64_t sub_1E3F1E4DC(uint64_t a1)
{
  v2 = v1;
  v4 = *sub_1E3CFEA54();

  v5 = [v2 addedEntityIDs];
  v6 = sub_1E4206624();

  v7 = [v2 removedEntityIDs];
  v8 = sub_1E4206624();

  (*(*v4 + 400))(v6, v8);

  v9 = sub_1E39C2CD0();
  if (!v10)
  {
    return 2;
  }

  v11 = v9;
  v12 = v10;
  v13 = [v2 addedEntityIDs];
  v14 = sub_1E4206624();

  LOBYTE(v13) = sub_1E3862230(v11, v12, v14);

  if (v13)
  {
  }

  else
  {
    v16 = [v2 removedEntityIDs];
    v17 = sub_1E4206624();

    v18 = sub_1E3862230(v11, v12, v17);

    if (!v18)
    {
      return 0;
    }
  }

  v19 = dynamic_cast_existential_1_conditional(a1);
  if (v19)
  {
    v21 = v19;
    v22 = v20;
    v23 = *v19;
    v24 = *(v20 + 40);

    if (v24(v23, v22))
    {
      v26 = v25;
      ObjectType = swift_getObjectType();
      v28 = (*(v26 + 8))(v21, v22, v2, ObjectType, v26);

      swift_unknownObjectRelease();
      return v28;
    }
  }

  return 1;
}

uint64_t sub_1E3F1E814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ContextMenuPreview(0);
  v7 = v6[5];
  *(a3 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  swift_storeEnumTagMultiPayload();
  *(a3 + v6[6]) = a1;
  *(a3 + v6[7]) = a2;
  type metadata accessor for ContextMenuPreviewInteractor(0);
  swift_allocObject();
  result = sub_1E3F21ED4();
  *a3 = sub_1E38074D0;
  *(a3 + 8) = result;
  *(a3 + 16) = 0;
  return result;
}

void sub_1E3F1E928()
{
  OUTLINED_FUNCTION_21_5();
  v1 = v0;
  v126 = v2;
  v3 = type metadata accessor for ContextMenuPreview(0);
  OUTLINED_FUNCTION_0_10();
  v123 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v124 = v6;
  OUTLINED_FUNCTION_17_3(v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C758);
  OUTLINED_FUNCTION_17_2(v7);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C760);
  OUTLINED_FUNCTION_6_4(v10, &v132[5]);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C768);
  OUTLINED_FUNCTION_6_4(v13, &v132[4]);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C770);
  OUTLINED_FUNCTION_6_4(v16, &v132[8]);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C778);
  OUTLINED_FUNCTION_6_4(v19, &v132[10]);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C780);
  OUTLINED_FUNCTION_6_4(v22, &v132[13]);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v24);
  v25 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5();
  v31 = v30 - v29;
  v127 = v3;
  v32 = *sub_1E40602F8();
  v33 = (*(v32 + 544))();
  if (v33)
  {
    v34 = v33;
    v35 = [v33 contextMenuEventDataSource];

    if (v35)
    {
      v36 = [v35 documentDataSource];

      if (v36)
      {
        v37 = [v36 uiConfiguration];
        objc_opt_self();
        v38 = swift_dynamicCastObjCClass();
        if (v38)
        {
          v39 = v38;
          [v38 preferredSize];
          if (v40 > 0.0)
          {
            [v39 preferredSize];
            v42 = v41;
            v44 = v43;

            if (v42 <= 0.0 || v44 != 0.0)
            {
              goto LABEL_14;
            }

            goto LABEL_11;
          }
        }
      }
    }
  }

  type metadata accessor for ContextMenuPreviewItemViewLayout();
  v45 = OUTLINED_FUNCTION_38();
  v42 = sub_1E3E09BD8(v45);
  v44 = 0.0;
  if (v42 <= 0.0)
  {
    goto LABEL_14;
  }

LABEL_11:
  type metadata accessor for ContextMenuPreviewInteractor(0);
  OUTLINED_FUNCTION_0_291();
  sub_1E3F21EF0(v46, v47);
  OUTLINED_FUNCTION_85_1();
  sub_1E4200BC4();
  v48 = sub_1E3F21284();

  if (v48)
  {
    OUTLINED_FUNCTION_8();
    v50 = (*(v49 + 432))();
    v52 = v51;

    v132[0] = v50;
    LOBYTE(v132[1]) = v52 & 1;
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA40);
    sub_1E3A1F10C();
    sub_1E4149AF0(v53, v131);
    if ((BYTE8(v131[0]) & 1) == 0)
    {
      VUIRoundValue();
      v44 = v54;
    }
  }

LABEL_14:

  v55 = v127;
  sub_1E3746E10(v31);
  v56 = sub_1E3B0352C();
  (*(v27 + 8))(v31, v25);
  v57 = v56 | (v44 <= 0.0);
  v58 = v44;
  if (v56 & 1 | (v44 <= 0.0))
  {
    v58 = 0.0;
  }

  v114 = v58;
  type metadata accessor for ContextMenuPreviewInteractor(0);
  OUTLINED_FUNCTION_0_291();
  sub_1E3F21EF0(v59, v60);
  OUTLINED_FUNCTION_33_75();
  v115 = *(v1 + *(v55 + 28));
  sub_1E3F21454(v115);

  v61 = v116;
  sub_1E3F1F454(v1, v116, v42);
  OUTLINED_FUNCTION_33_75();
  v62 = sub_1E3F21284();

  v113[3] = v57;
  if (v62 && (OUTLINED_FUNCTION_8(), (*(v63 + 176))(v129), v64 = v129[0], v65 = v129[1], v66 = v129[2], v67 = v129[3], , (v130 & 1) == 0))
  {
    v68.n128_u64[0] = v64;
    v69.n128_u64[0] = v65;
    v70.n128_u64[0] = v66;
    v71.n128_u64[0] = v67;
    v72 = j_nullsub_1(v68, v69, v70, v71);
  }

  else
  {
    v72 = OUTLINED_FUNCTION_5_8();
  }

  v76 = v72;
  v77 = v73;
  v78 = v74;
  v79 = v75;
  v80 = v119;
  v81 = sub_1E4202734();
  v82 = v117;
  sub_1E3741EA0(v61, v117, &qword_1ECF3C758);
  OUTLINED_FUNCTION_141();
  v84 = v82 + v83;
  *v84 = v81;
  *(v84 + 8) = v76;
  *(v84 + 16) = v77;
  *(v84 + 24) = v78;
  *(v84 + 32) = v79;
  *(v84 + 40) = 0;
  v85 = sub_1E4203D44();
  v87 = v86;
  OUTLINED_FUNCTION_141();
  v88 = v118;
  v90 = v118 + v89;
  sub_1E4200BC4();
  v91 = sub_1E3F21210();

  *&v131[0] = v91;
  v132[2] = v1;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31990);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29240);
  sub_1E4148F70(sub_1E3F22674, v132, v92, v93, v90);

  v94 = (v90 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C788) + 36));
  *v94 = v85;
  v94[1] = v87;
  sub_1E3741EA0(v82, v88, &qword_1ECF3C760);
  sub_1E4203DB4();
  sub_1E4200D94();
  sub_1E3741EA0(v88, v80, &qword_1ECF3C768);
  OUTLINED_FUNCTION_141();
  v96 = (v80 + v95);
  v97 = v131[1];
  *v96 = v131[0];
  v96[1] = v97;
  v96[2] = v131[2];
  sub_1E4203DA4();
  OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_30_8();
  v98 = v80;
  v99 = v120;
  sub_1E3741EA0(v98, v120, &qword_1ECF3C770);
  OUTLINED_FUNCTION_141();
  memcpy((v99 + v100), v132, 0x70uLL);
  sub_1E4060464();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB28);
  sub_1E3DC5070();
  v101 = sub_1E3B501F8();

  v102 = v125;
  sub_1E3F21F38(v1, v125);
  v103 = (*(v123 + 80) + 16) & ~*(v123 + 80);
  v104 = swift_allocObject();
  sub_1E3F21F9C(v102, v104 + v103);
  v105 = v99;
  v106 = v122;
  sub_1E3741EA0(v105, v122, &qword_1ECF3C778);
  v107 = v121;
  *(v106 + *(v121 + 52)) = v101;
  v108 = (v106 + *(v107 + 56));
  *v108 = sub_1E3F22000;
  v108[1] = v104;
  v128 = v115;
  sub_1E3F21F38(v1, v102);
  v109 = swift_allocObject();
  sub_1E3F21F9C(v102, v109 + v103);
  type metadata accessor for ViewModel();
  OUTLINED_FUNCTION_1_33();
  sub_1E32752B0(v110, &qword_1ECF3C780);
  OUTLINED_FUNCTION_11_159();
  sub_1E3F21EF0(v111, v112);

  sub_1E4203524();

  sub_1E325F6F0(v106, &qword_1ECF3C780);
  OUTLINED_FUNCTION_20_0();
}

uint64_t sub_1E3F1F454@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v119 = a2;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C7A0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v9);
  v114 = v103 - v10;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C7A8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44();
  v117 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C7B0);
  OUTLINED_FUNCTION_17_2(v13);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C7B8);
  OUTLINED_FUNCTION_6_4(v16, &v125);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C7C0);
  OUTLINED_FUNCTION_6_4(v19, &v126);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v21);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C7C8);
  OUTLINED_FUNCTION_0_10();
  v110 = v22;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v24);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C7D0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_17_3(v103 - v27);
  v28 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v30 = v29;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5();
  v34 = v33 - v32;
  v120 = a1;
  type metadata accessor for ContextMenuPreviewInteractor(0);
  OUTLINED_FUNCTION_0_291();
  sub_1E3F21EF0(v35, v36);
  OUTLINED_FUNCTION_20_111();
  v37 = sub_1E3F21118();

  if (!v37 || (OUTLINED_FUNCTION_8(), v39 = (*(v38 + 392))(), , !v39))
  {
LABEL_5:
    v40 = sub_1E4201D44();
    OUTLINED_FUNCTION_20_111();
    OUTLINED_FUNCTION_42_2();
    sub_1E3F21284();
    OUTLINED_FUNCTION_50();

    if (v37)
    {
      OUTLINED_FUNCTION_8();
      v42 = (*(v41 + 1176))();
      v44 = v43;

      if (v44)
      {
        v45 = 0;
      }

      else
      {
        v45 = v42;
      }
    }

    else
    {
      v45 = 0;
    }

    v46 = v113;
    *v113 = v40;
    v46[1] = v45;
    *(v46 + 16) = 0;
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C7D8);
    sub_1E3F208F8(v46 + *(v47 + 44));
    v48 = &qword_1ECF3C7A0;
    v49 = v114;
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v50, v51, v52);
    OUTLINED_FUNCTION_19_1();
    sub_1E3743538(v53, v54, v55);
    swift_storeEnumTagMultiPayload();
    sub_1E3F2269C();
    OUTLINED_FUNCTION_1();
    sub_1E32752B0(v56, &qword_1ECF3C7A0);
    sub_1E4201F44();
    v57 = v49;
    return sub_1E325F6F0(v57, v48);
  }

  type metadata accessor for ContextMenuPreview(0);
  sub_1E3746E10(v34);
  v37 = sub_1E3B0352C();
  (*(v30 + 8))(v34, v28);
  if (v37)
  {

    goto LABEL_5;
  }

  v59 = sub_1E4201D44();
  OUTLINED_FUNCTION_20_111();
  OUTLINED_FUNCTION_42_2();
  sub_1E3F21284();
  OUTLINED_FUNCTION_50();

  if (v37)
  {
    OUTLINED_FUNCTION_8();
    v61 = (*(v60 + 1176))();
    v63 = v62;

    if (v63)
    {
      v64 = 0;
    }

    else
    {
      v64 = v61;
    }
  }

  else
  {
    v64 = 0;
  }

  v65 = v106;
  v66 = v105;
  v67 = v104;
  *v104 = v59;
  *(v67 + 8) = v64;
  *(v67 + 16) = 0;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C808);
  v69 = sub_1E3F1FD9C(v67 + *(v68 + 44));
  (*(*v39 + 176))(v121, v69);
  if (v122)
  {
    OUTLINED_FUNCTION_5_8();
  }

  else
  {
    v72.n128_u64[0] = v121[2];
    v73.n128_u64[0] = v121[3];
    v70.n128_u64[0] = v121[0];
    v71.n128_u64[0] = v121[1];
    j_nullsub_1(v70, v71, v72, v73);
  }

  OUTLINED_FUNCTION_3();
  v74 = v107;
  v75 = sub_1E4202734();
  v76 = sub_1E3741EA0(v67, v66, &qword_1ECF3C7B0);
  v77 = v66 + *(v103[1] + 36);
  *v77 = v75;
  *(v77 + 8) = a3;
  *(v77 + 16) = v3;
  *(v77 + 24) = v4;
  *(v77 + 32) = v5;
  *(v77 + 40) = 0;
  v78 = (*(*v39 + 744))(v76);
  if (!v78)
  {
    v78 = [objc_opt_self() clearColor];
  }

  v79 = v78;
  v80 = sub_1E38F08C4(v78);

  LOBYTE(v79) = sub_1E4202734();
  v81 = sub_1E3741EA0(v66, v65, &qword_1ECF3C7B8);
  v82 = v65 + *(v74 + 36);
  *v82 = v80;
  *(v82 + 8) = v79;
  (*(*v39 + 552))(v123, v81);
  v83 = 0.0;
  if ((v124 & 1) == 0)
  {
    v83 = sub_1E3952BE8(v123[0], v123[1], v123[2], v123[3]);
  }

  v84 = sub_1E3F22790();
  v85 = sub_1E383C8A8();
  v86 = OUTLINED_FUNCTION_18();
  v87 = OUTLINED_FUNCTION_18();
  v88 = v109;
  sub_1E391F7FC(0, v86 & 1, v87 & 1, v74, v84, v85, v83);
  sub_1E325F6F0(v65, &qword_1ECF3C7C0);
  v89 = v108;
  v90 = (v108 + *(v115 + 36));
  v91 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF291E0) + 28);
  v92 = *MEMORY[0x1E697DBA8];
  sub_1E4200B44();
  OUTLINED_FUNCTION_2();
  (*(v93 + 104))(v90 + v91, v92);
  *v90 = swift_getKeyPath();
  (*(v110 + 32))(v89, v88, v111);
  v48 = &qword_1ECF3C7D0;
  v94 = v112;
  OUTLINED_FUNCTION_19_1();
  sub_1E3741EA0(v95, v96, v97);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v98, v99, v100);
  swift_storeEnumTagMultiPayload();
  sub_1E3F2269C();
  OUTLINED_FUNCTION_1();
  sub_1E32752B0(v101, v102);
  sub_1E4201F44();

  v57 = v94;
  return sub_1E325F6F0(v57, v48);
}

uint64_t sub_1E3F1FD9C@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C810);
  v2 = OUTLINED_FUNCTION_17_2(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4_6();
  v50 = v3 - v4;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_18_6();
  v49 = v6;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_18_6();
  v48 = v8;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v44 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C818);
  OUTLINED_FUNCTION_17_2(v14);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v44 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C820);
  v19 = v18 - 8;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_6();
  v52 = v20 - v21;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v44 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v44 - v26;
  sub_1E3F201D0();
  sub_1E4203DA4();
  OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_30_8();
  sub_1E3741EA0(v17, v24, &qword_1ECF3C818);
  memcpy(&v24[*(v19 + 44)], __src, 0x70uLL);
  v45 = v27;
  sub_1E3741EA0(v24, v27, &qword_1ECF3C820);
  v28 = OUTLINED_FUNCTION_9_160();
  v44 = v13;
  sub_1E3F206F8(v28, sub_1E3F22978, v13);
  v29 = OUTLINED_FUNCTION_15_141();
  v30 = v46;
  sub_1E3F206F8(v29, sub_1E3F2293C, v46);
  v31 = OUTLINED_FUNCTION_14_153();
  v32 = v47;
  sub_1E3F206F8(v31, sub_1E3F22900, v47);
  v33 = v52;
  sub_1E3743538(v27, v52, &qword_1ECF3C820);
  v34 = v48;
  OUTLINED_FUNCTION_31_74(v13, v48);
  v35 = v30;
  v36 = v49;
  OUTLINED_FUNCTION_31_74(v30, v49);
  v37 = v32;
  v38 = v32;
  v39 = v50;
  OUTLINED_FUNCTION_31_74(v37, v50);
  v40 = v33;
  v41 = v51;
  sub_1E3743538(v40, v51, &qword_1ECF3C820);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C828);
  OUTLINED_FUNCTION_31_74(v34, v41 + v42[12]);
  OUTLINED_FUNCTION_31_74(v36, v41 + v42[16]);
  OUTLINED_FUNCTION_31_74(v39, v41 + v42[20]);
  OUTLINED_FUNCTION_34_68(v38);
  OUTLINED_FUNCTION_34_68(v35);
  OUTLINED_FUNCTION_34_68(v44);
  sub_1E325F6F0(v45, &qword_1ECF3C820);
  OUTLINED_FUNCTION_34_68(v39);
  OUTLINED_FUNCTION_34_68(v36);
  OUTLINED_FUNCTION_34_68(v34);
  return sub_1E325F6F0(v52, &qword_1ECF3C820);
}

void sub_1E3F201D0()
{
  OUTLINED_FUNCTION_21_5();
  v43 = v2;
  v4 = v3;
  v47 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C830);
  OUTLINED_FUNCTION_6_4(v6, &v52);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_26_2();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238);
  OUTLINED_FUNCTION_0_10();
  v45 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - v10;
  v12 = *(v0 + 16);
  type metadata accessor for ContextMenuPreviewInteractor(0);
  OUTLINED_FUNCTION_0_291();
  sub_1E3F21EF0(v13, v14);
  OUTLINED_FUNCTION_4_220();
  v15 = sub_1E3F21164();

  v44 = v15;
  if (v15)
  {
    type metadata accessor for ContextMenuPreview(0);
    v16 = sub_1E40602F8();
    v17 = OUTLINED_FUNCTION_4_220();
    sub_1E3F21284();
    OUTLINED_FUNCTION_38();

    v18 = 0.0;
    if (v17)
    {
      v19 = sub_1E374E9C4();

      (*(*v19 + 152))(v49, v20);
      v21 = *v49;
      v22 = *&v49[1];
      v23 = *&v49[2];
      v24 = *&v49[3];

      if ((v50 & 1) == 0)
      {
        v18 = sub_1E3952BE0(v21, v22, v23, v24);
      }
    }

    v25 = v4 - v18;
    v26 = OUTLINED_FUNCTION_4_220();
    sub_1E3F21284();
    OUTLINED_FUNCTION_38();

    v42 = v11;
    if (v26)
    {
      v27 = sub_1E3E09EB8(v16);

      *v48 = v27;
      sub_1E3A1F10C();
      sub_1E41499CC(MEMORY[0x1E69E7DE0], v51);
      if (v51[8])
      {
        v26 = 0;
      }

      else
      {
        VUIRoundValue();
        v26 = v34;
      }
    }

    v35 = j__OUTLINED_FUNCTION_18();
    v36 = j__OUTLINED_FUNCTION_18();
    sub_1E3EB9C0C(*&v25, v26, 0, 0, 0, 1, (v43 & 1) == 0, 2, v51, 0, 1, 0, 1, 0, 2, v35 & 1, v36 & 1);

    memcpy(v48, v51, 0x5BuLL);
    OUTLINED_FUNCTION_4_220();
    OUTLINED_FUNCTION_42_2();
    sub_1E3F21284();
    OUTLINED_FUNCTION_50();

    if (v26)
    {
      sub_1E374E9C4();
      OUTLINED_FUNCTION_35_2();
    }

    else
    {
      v12 = 0;
    }

    v37 = v42;
    v38 = OUTLINED_FUNCTION_18();
    sub_1E37E8BE8(v44, v48, v12, v38 & 1, 0, 0, v37);

    sub_1E375C31C(v48);
    v39 = v45;
    v40 = v46;
    (*(v45 + 16))(v1, v37, v46);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29268);
    OUTLINED_FUNCTION_6_15();
    sub_1E3761B90();
    OUTLINED_FUNCTION_19_1();
    sub_1E4201F44();

    (*(v39 + 8))(v37, v40);
  }

  else
  {
    v28 = sub_1E42036E4();
    OUTLINED_FUNCTION_4_220();
    v29 = sub_1E3F21284();

    if (v29)
    {
      v31 = ((*v29)[10].info)(v30);
      v33 = v32;
    }

    else
    {
      v31 = 0;
      v33 = 1;
    }

    *v1 = v28;
    *(v1 + 8) = 256;
    *(v1 + 16) = v31;
    *(v1 + 24) = v33 & 1;
    *(v1 + 25) = 0;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29268);
    OUTLINED_FUNCTION_6_15();
    sub_1E3761B90();
    OUTLINED_FUNCTION_19_1();
    sub_1E4201F44();
  }

  OUTLINED_FUNCTION_20_0();
}

uint64_t sub_1E3F206F8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for ContextMenuPreviewInteractor(0);
  OUTLINED_FUNCTION_0_291();
  sub_1E3F21EF0(v7, v8);
  OUTLINED_FUNCTION_85_1();
  sub_1E4200BC4();
  v9 = a1();

  v15 = v9;
  v14 = v3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29088);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A140);
  sub_1E4148F70(a2, &v13, v10, v11, a3);
}

uint64_t sub_1E3F20808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*a1 + 8);
  *a2 = **a1;
  *(a2 + 8) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C838);
  sub_1E3743538(*(a1 + 8), a2 + v5[12], &qword_1ECF3C818);
  v6 = a2 + v5[16];
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  v9 = *v8;
  LOBYTE(v8) = *(v8 + 8);
  *v6 = v9;
  *(v6 + 8) = v8;
  sub_1E3743538(v7, a2 + v5[20], &qword_1ECF3C810);
  sub_1E3743538(*(a1 + 32), a2 + v5[24], &qword_1ECF3C810);
  return sub_1E3743538(*(a1 + 40), a2 + v5[28], &qword_1ECF3C810);
}

uint64_t sub_1E3F208F8@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C810);
  v2 = OUTLINED_FUNCTION_17_2(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4_6();
  v5 = v3 - v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v33 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v33 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v33 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C818);
  v22 = OUTLINED_FUNCTION_17_2(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_4_6();
  v25 = v23 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v33 - v27;
  sub_1E3F201D0();
  v29 = OUTLINED_FUNCTION_9_160();
  sub_1E3F206F8(v29, sub_1E3F22978, v20);
  v30 = OUTLINED_FUNCTION_15_141();
  sub_1E3F206F8(v30, sub_1E3F2293C, v17);
  v31 = OUTLINED_FUNCTION_14_153();
  sub_1E3F206F8(v31, sub_1E3F22900, v14);
  v37 = 0;
  v38 = 0;
  v39[0] = &v37;
  sub_1E3743538(v28, v25, &qword_1ECF3C818);
  v35 = 0;
  v36 = 0;
  v39[1] = v25;
  v39[2] = &v35;
  sub_1E3743538(v20, v11, &qword_1ECF3C810);
  v39[3] = v11;
  sub_1E3743538(v17, v8, &qword_1ECF3C810);
  v39[4] = v8;
  sub_1E3743538(v14, v5, &qword_1ECF3C810);
  v39[5] = v5;
  sub_1E3F20808(v39, v34);
  OUTLINED_FUNCTION_45_3(v14);
  OUTLINED_FUNCTION_45_3(v17);
  OUTLINED_FUNCTION_45_3(v20);
  sub_1E325F6F0(v28, &qword_1ECF3C818);
  OUTLINED_FUNCTION_45_3(v5);
  OUTLINED_FUNCTION_45_3(v8);
  OUTLINED_FUNCTION_45_3(v11);
  return sub_1E325F6F0(v25, &qword_1ECF3C818);
}

uint64_t sub_1E3F20C08@<X0>(void (*a1)(uint64_t)@<X2>, uint64_t a2@<X8>)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_26_2();
  type metadata accessor for ContextMenuPreviewInteractor(0);
  OUTLINED_FUNCTION_0_291();
  sub_1E3F21EF0(v8, v9);
  OUTLINED_FUNCTION_85_1();
  sub_1E4200BC4();
  v10 = sub_1E3F21284();

  if (v10)
  {
    a1(v11);
  }

  OUTLINED_FUNCTION_18();
  sub_1E3F23370();

  v12 = sub_1E3C27528();
  type metadata accessor for ContextMenuPreview(0);
  sub_1E3F21EF0(&qword_1EE2789E8, type metadata accessor for ContextMenuPreview);
  v13 = OUTLINED_FUNCTION_18();
  sub_1E3883DA0(v12, v13 & 1);

  OUTLINED_FUNCTION_51_3();
  sub_1E42015C4();
  (*(v6 + 32))(a2, v2, v16);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A140);
  memcpy((a2 + *(v14 + 36)), __src, 0x70uLL);
  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v14);
}

uint64_t sub_1E3F20E84@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238);
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_26_2();
  v13 = *a1;
  sub_1E3EB9BB4(v29);
  type metadata accessor for ContextMenuPreviewInteractor(0);
  OUTLINED_FUNCTION_0_291();
  sub_1E3F21EF0(v14, v15);
  sub_1E4200BC4();
  v16 = sub_1E3F21284();

  if (v16)
  {
    v17 = sub_1E3B910AC();
  }

  else
  {
    v17 = 0;
  }

  v18 = OUTLINED_FUNCTION_18();
  sub_1E37E8BE8(v13, v29, v17, v18 & 1, 0, 0, v2);

  v19 = sub_1E375C31C(v29);
  v20 = (*(*v13 + 392))(v19);
  if (v20 && ((*(*v20 + 152))(v30), v3 = v30[0], v4 = v30[1], v5 = v30[2], v6 = v30[3], , (v31 & 1) == 0))
  {
    v21.n128_u64[0] = v3;
    v22.n128_u64[0] = v4;
    v23.n128_u64[0] = v5;
    v24.n128_u64[0] = v6;
    j_nullsub_1(v21, v22, v23, v24);
  }

  else
  {
    OUTLINED_FUNCTION_5_8();
  }

  OUTLINED_FUNCTION_3();
  v25 = sub_1E4202734();
  (*(v11 + 32))(a2, v2, v9);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29240);
  v27 = a2 + *(v26 + 36);
  *v27 = v25;
  *(v27 + 8) = v3;
  *(v27 + 16) = v4;
  *(v27 + 24) = v5;
  *(v27 + 32) = v6;
  *(v27 + 40) = 0;
  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v26);
}

uint64_t sub_1E3F21118()
{
  if (!*(v1 + OBJC_IVAR____TtC8VideosUIP33_5AF57E0CF23AC3B894B436BBBC64D7B928ContextMenuPreviewInteractor_previewItemViewModel))
  {
    return 0;
  }

  sub_1E39C408C(1);
  OUTLINED_FUNCTION_35_2();
  return v0;
}

__objc2_class **sub_1E3F21184(__objc2_class **a1)
{
  if (!*(v1 + OBJC_IVAR____TtC8VideosUIP33_5AF57E0CF23AC3B894B436BBBC64D7B928ContextMenuPreviewInteractor_previewItemViewModel))
  {
    return 0;
  }

  sub_1E39C408C(a1);
  OUTLINED_FUNCTION_35_2();
  if (a1 && *a1 != _TtC8VideosUI13TextViewModel)
  {

    return 0;
  }

  return a1;
}

uint64_t sub_1E3F21218(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC8VideosUIP33_5AF57E0CF23AC3B894B436BBBC64D7B928ContextMenuPreviewInteractor_previewItemViewModel))
  {

    sub_1E39C408C(a1);
    OUTLINED_FUNCTION_35_2();
    if (a1)
    {
      type metadata accessor for ImageViewModel();
      result = swift_dynamicCastClass();
      if (result)
      {
        return result;
      }
    }
  }

  return 0;
}

__objc2_class **sub_1E3F21284()
{
  if (!*(v0 + OBJC_IVAR____TtC8VideosUIP33_5AF57E0CF23AC3B894B436BBBC64D7B928ContextMenuPreviewInteractor_previewItemViewModel))
  {
    return 0;
  }

  OUTLINED_FUNCTION_8();
  v2 = *(v1 + 392);

  (v2)(v3);
  OUTLINED_FUNCTION_35_2();
  if (v2 && *v2 != _TtC8VideosUI32ContextMenuPreviewItemViewLayout)
  {

    return 0;
  }

  return v2;
}

uint64_t sub_1E3F21334(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8VideosUIP33_5AF57E0CF23AC3B894B436BBBC64D7B928ContextMenuPreviewInteractor_previewItemViewModel);
  *(v1 + OBJC_IVAR____TtC8VideosUIP33_5AF57E0CF23AC3B894B436BBBC64D7B928ContextMenuPreviewInteractor_previewItemViewModel) = a1;
  v4 = *(v1 + OBJC_IVAR____TtC8VideosUIP33_5AF57E0CF23AC3B894B436BBBC64D7B928ContextMenuPreviewInteractor_previewItemViewModel);

  if (v4)
  {
    v5 = *(v4 + 98);
    if (!v3)
    {
      if (v5 == 263)
      {
        goto LABEL_16;
      }

      goto LABEL_12;
    }

    v6 = *(v3 + 98);
    if (v5 != 263)
    {
      if (v6 != 263)
      {
        sub_1E3741534();
        if (sub_1E4205E84())
        {
          goto LABEL_16;
        }
      }

      goto LABEL_12;
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_16;
    }

    v6 = *(v3 + 98);
  }

  if (v6 == 263)
  {
    goto LABEL_16;
  }

LABEL_12:
  if (*(v2 + OBJC_IVAR____TtC8VideosUIP33_5AF57E0CF23AC3B894B436BBBC64D7B928ContextMenuPreviewInteractor_cardViewModel))
  {

    if (sub_1E3F21284())
    {

      sub_1E3E09A08(v7);
    }
  }

LABEL_16:
}

uint64_t sub_1E3F21454(uint64_t a1)
{
  sub_1E3F215B0(a1);
  v3 = OBJC_IVAR____TtC8VideosUIP33_5AF57E0CF23AC3B894B436BBBC64D7B928ContextMenuPreviewInteractor_previewItemViewModel;
  v4 = *(v1 + OBJC_IVAR____TtC8VideosUIP33_5AF57E0CF23AC3B894B436BBBC64D7B928ContextMenuPreviewInteractor_previewItemViewModel);
  if (!v4)
  {
    sub_1E3F21628(a1);
    v4 = *(v1 + v3);
  }

  return v4;
}

uint64_t sub_1E3F214BC(uint64_t result)
{
  if (result)
  {
    sub_1E3741534();
    if (sub_1E4205E84())
    {
    }

    else
    {
      result = sub_1E39C408C(230);
      if (!result)
      {
        return result;
      }
    }

    sub_1E3F21334(v1);
    type metadata accessor for ContextMenuPreviewInteractor(0);
    OUTLINED_FUNCTION_0_291();
    sub_1E3F21EF0(v2, v3);
    sub_1E4200514();
    sub_1E4200594();
  }

  return result;
}

uint64_t sub_1E3F215B0(uint64_t result)
{
  if (result)
  {
    v2 = result;
    v3 = OBJC_IVAR____TtC8VideosUIP33_5AF57E0CF23AC3B894B436BBBC64D7B928ContextMenuPreviewInteractor_cardViewModel;
    if (*(v1 + OBJC_IVAR____TtC8VideosUIP33_5AF57E0CF23AC3B894B436BBBC64D7B928ContextMenuPreviewInteractor_cardViewModel) != result)
    {

      sub_1E3F21334(0);
      *(v1 + v3) = v2;
    }
  }

  return result;
}

void sub_1E3F21628(uint64_t a1)
{
  v2 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v44 = a1;
  type metadata accessor for ViewModel();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39490);
  if (swift_dynamicCast())
  {
    sub_1E3251BE8(&v41, aBlock);
    v16 = v39;
    __swift_project_boxed_opaque_existential_1(aBlock, v38);
    v17 = OUTLINED_FUNCTION_50();
    v19 = v18(v17, v16);
    sub_1E3F21334(v19);
LABEL_3:
    __swift_destroy_boxed_opaque_existential_1(aBlock);
    return;
  }

  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  v20 = sub_1E325F6F0(&v41, &qword_1ECF3C798);
  v21 = (*(*a1 + 544))(v20);
  if (v21)
  {
    v22 = v21;
    v23 = [v21 contextMenuEventDataSource];

    if (v23)
    {
      v24 = [v23 documentDataSource];

      if (v24)
      {
        v36 = v4;
        v25 = [v24 prefetchData];
        if (v25 && (v26 = v25, v27 = [v25 jsonData], v26, v27) && (v28 = sub_1E4205C64(), v27, v29 = sub_1E374BD08(v28), , v29))
        {
          v38 = &qword_1F5D5CE68;
          v39 = &off_1F5D5C708;
          LOWORD(aBlock[0]) = 230;
          sub_1E3F9F164(aBlock);

          if (*(&v42 + 1))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
            if ((swift_dynamicCast() & 1) == 0)
            {

              goto LABEL_3;
            }

            v30 = v44;
            __swift_destroy_boxed_opaque_existential_1(aBlock);
            v33 = *sub_1E37AF264();
            v31 = swift_allocObject();
            swift_weakInit();
            v32 = swift_allocObject();
            v32[2] = v31;
            v32[3] = v30;
            v32[4] = a1;
            v39 = sub_1E3F225D4;
            v40 = v32;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_1E329EEC4;
            v38 = &block_descriptor_137;
            v35 = _Block_copy(aBlock);

            v34 = v33;

            sub_1E4203FE4();
            *&v41 = MEMORY[0x1E69E7CC0];
            sub_1E3F21EF0(&qword_1EE2882E0, MEMORY[0x1E69E7F60]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
            sub_1E32752B0(&qword_1EE23B5D0, &qword_1ECF2A730);
            sub_1E42072E4();
            MEMORY[0x1E6911380](0, v15, v8, v35);

            _Block_release(v35);
            (*(v36 + 8))(v8, v2);
            (*(v11 + 8))(v15, v9);
          }

          else
          {

            __swift_destroy_boxed_opaque_existential_1(aBlock);
            sub_1E325F6F0(&v41, &unk_1ECF296E0);
          }
        }

        else
        {
        }
      }
    }
  }
}

uint64_t sub_1E3F21BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - v7;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    type metadata accessor for ViewModel();

    v11 = sub_1E39BED80(230, a2, a3);
    v12 = sub_1E4206474();
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v12);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = v10;
    v13[5] = v11;

    sub_1E3CC3FD0(0, 0, v8, &unk_1E42DDF30, v13);

    return sub_1E325F6F0(v8, &unk_1ECF2C400);
  }

  return result;
}

uint64_t sub_1E3F21D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1E3F21D54, 0, 0);
}