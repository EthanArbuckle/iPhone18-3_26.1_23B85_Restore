BOOL sub_1E396583C()
{
  v0 = sub_1E3C27024();
  if (!v1)
  {
    return 1;
  }

  v2 = v0;
  v3 = v1;

  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v2 & 0xFFFFFFFFFFFFLL;
  }

  return v4 == 0;
}

void sub_1E3965894()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v25 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_103();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2EEA0);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_28_6();
  v15 = *(v3 + 120);

  OUTLINED_FUNCTION_18();
  sub_1E3F23370();
  OUTLINED_FUNCTION_0_21();
  sub_1E4202EA4();
  (*(v7 + 8))(v0, v5);
  *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2EEA8) + 52)) = v15;
  v16 = sub_1E417F864();
  *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2EEB0) + 36)) = v16;
  v17 = sub_1E417F85C();
  v18 = (v1 + *(v10 + 44));
  *v18 = v17;
  v18[1] = v15;
  v19 = OUTLINED_FUNCTION_124();
  sub_1E3743538(v19, v20, &qword_1ECF2EEA0);
  OUTLINED_FUNCTION_21_1();
  sub_1E3743538(v21, v22, v23);
  v24 = v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2EEB8) + 48);
  *v24 = 0;
  *(v24 + 8) = 0;

  sub_1E325F69C(v1, &qword_1ECF2EEA0);
  sub_1E325F69C(v13, &qword_1ECF2EEA0);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3965AC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  sub_1E42038E4();

  sub_1E39663B4();

  result = sub_1E42038E4();
  *a3 = a1;
  *(a3 + 8) = a4;
  *(a3 + 16) = a5;
  *(a3 + 24) = a2;
  *(a3 + 32) = v11;
  *(a3 + 40) = v12;
  *(a3 + 48) = v11;
  *(a3 + 56) = v12;
  return result;
}

void *sub_1E3965B98@<X0>(void *__src@<X3>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, void *a5@<X8>)
{
  *a5 = a2;
  a5[1] = a3;
  a5[2] = a4;
  return memcpy(a5 + 3, __src, 0x48uLL);
}

void sub_1E3965BB0()
{
  OUTLINED_FUNCTION_93();
  v3 = v0;
  v33 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2EEC0) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_20_1();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2EEC8) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_21_3();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2EED0) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2EED8) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v15);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2EEE0) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v17);
  *v1 = sub_1E4201B84();
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2EEE8);
  sub_1E3965F7C();
  OUTLINED_FUNCTION_5_0();
  sub_1E4203DA4();
  sub_1E4200D94();
  v18 = (v1 + *(v5 + 44));
  v19 = v37;
  *v18 = v36;
  v18[1] = v19;
  v18[2] = v38;
  v39 = v3[8];
  v34 = v3[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0);
  sub_1E42038F4();
  v20 = 0.0;
  if (v35)
  {
    v21 = 0.0;
  }

  else
  {
    v21 = -10.0;
  }

  sub_1E3741EA0(v1, v2, &qword_1ECF2EEC0);
  v22 = v2 + *(v7 + 44);
  *v22 = 0;
  *(v22 + 8) = v21;
  OUTLINED_FUNCTION_54_11();
  if (v35)
  {
    v20 = 1.0;
  }

  sub_1E3741EA0(v2, v12, &qword_1ECF2EEC8);
  *&v12[*(v9 + 44)] = v20;
  v23 = sub_1E417FAA8();
  OUTLINED_FUNCTION_54_11();
  v24 = v35;
  v25 = v30;
  sub_1E3741EA0(v12, v30, &qword_1ECF2EED0);
  v26 = v25 + *(v13 + 44);
  *v26 = v23;
  *(v26 + 8) = v24;
  v27 = swift_allocObject();
  memcpy((v27 + 16), v3, 0x90uLL);
  v28 = v31;
  sub_1E3741EA0(v25, v31, &qword_1ECF2EED8);
  v29 = (v28 + *(v32 + 44));
  *v29 = sub_1E3968E5C;
  v29[1] = v27;
  v29[2] = 0;
  v29[3] = 0;
  sub_1E3741EA0(v28, v33, &qword_1ECF2EEE0);
  sub_1E3968EB4(v3, &v34);
  OUTLINED_FUNCTION_54_0();
}

void sub_1E3965F7C()
{
  OUTLINED_FUNCTION_93();
  v3 = v2;
  v30 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2EE30);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_44();
  v27 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2EEF0);
  v9 = OUTLINED_FUNCTION_17_2(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_19_7();
  v11 = *(v3 + 16);
  memcpy(v35, (v3 + 40), sizeof(v35));
  v34 = *(v3 + 112);
  v12 = *(&v34 + 1);

  sub_1E3743538(&v34, v32, &qword_1ECF2EE90);
  sub_1E3964AC8(v35, v32);
  type metadata accessor for PlayerStatsViewModel();
  OUTLINED_FUNCTION_1_103();
  sub_1E39699C0(v13);
  v14 = sub_1E42010C4();
  v29 = v15;
  type metadata accessor for PlayerStatsLayout();
  OUTLINED_FUNCTION_0_91();
  sub_1E39699C0(v16);
  v17 = sub_1E42010C4();
  v28 = v18;
  memcpy(v36, v35, sizeof(v36));
  if (v11)
  {
    OUTLINED_FUNCTION_5_0();
    v19 = *(v12 + 104);
    swift_retain_n();
    v20 = sub_1E4047950();
    sub_1E3965AC4(v11, v20, v33, v19, v19);
    if (*(v11 + 24))
    {
      v21 = *(v11 + 16);
      v22 = *(v11 + 24);
    }

    else
    {
      v21 = 0;
      v22 = 0xE000000000000000;
    }

    *v31 = v33[0];
    *&v31[16] = v33[1];
    *&v31[32] = v33[2];
    *&v31[48] = v33[3];
    *&v31[64] = v21;
    *&v31[72] = v22;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2EE68);
    OUTLINED_FUNCTION_16_46();
    sub_1E3743478(v23);
    sub_1E4202EA4();

    memcpy(v32, v31, 0x50uLL);
    sub_1E325F69C(v32, &qword_1ECF2EE68);
    sub_1E3741EA0(v27, v1, &qword_1ECF2EE30);
    __swift_storeEnumTagSinglePayload(v1, 0, 1, v5);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v1, 1, 1, v5);
  }

  v24 = OUTLINED_FUNCTION_53();
  sub_1E3743538(v24, v25, &qword_1ECF2EEF0);
  *v31 = v14;
  *&v31[8] = v29;
  memcpy(&v31[16], v36, 0x48uLL);
  *&v31[88] = v17;
  *&v31[96] = v28;
  memcpy(v30, v31, 0x68uLL);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2EEF8);
  sub_1E3743538(v0, v30 + *(v26 + 48), &qword_1ECF2EEF0);
  sub_1E3968DF4(v31, v32);
  sub_1E325F69C(v1, &qword_1ECF2EEF0);
  sub_1E325F69C(v0, &qword_1ECF2EEF0);
  v32[0] = v14;
  v32[1] = v29;
  memcpy(&v32[2], v36, 0x48uLL);
  v32[11] = v17;
  v32[12] = v28;
  sub_1E3968E2C(v32);
  OUTLINED_FUNCTION_54_0();
}

BOOL sub_1E39663B4()
{
  v0 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  OUTLINED_FUNCTION_36();
  v8 = (*(v7 + 488))();
  if (v8)
  {
    v9 = sub_1E373E010(39, v8);

    if (v9)
    {
      type metadata accessor for ImageViewModel();
      v10 = swift_dynamicCastClass();
      if (v10)
      {
        v11 = v10;
        type metadata accessor for LayoutGrid();
        v12 = sub_1E3A256EC();
        v13 = (*(*v11 + 1016))(v12);
        v15 = v14;

        if (v15)
        {

          v16 = HIBYTE(v15) & 0xF;
          if ((v15 & 0x2000000000000000) == 0)
          {
            v16 = v13 & 0xFFFFFFFFFFFFLL;
          }

          return v16 == 0;
        }
      }

      else
      {
      }
    }
  }

  v18 = sub_1E3E37F30();
  (*(v2 + 16))(v6, v18, v0);
  v19 = sub_1E41FFC94();
  v20 = sub_1E42067E4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1E323F000, v19, v20, "PlayerMonogram.playerImageView -- Stats Failure: Invalid player image url", v21, 2u);
    MEMORY[0x1E69143B0](v21, -1, -1);
  }

  (*(v2 + 8))(v6, v0);
  return 1;
}

void sub_1E39665F0()
{
  OUTLINED_FUNCTION_31_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2EFE8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_19_2();
  *v1 = sub_1E4203DA4();
  v1[1] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2EFF0);
  sub_1E39667F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AB88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4299720;
  v5 = sub_1E4202704();
  *(inited + 32) = v5;
  v6 = sub_1E42026E4();
  *(inited + 33) = v6;
  sub_1E42026F4();
  sub_1E42026F4();
  if (sub_1E42026F4() != v5)
  {
    sub_1E42026F4();
  }

  sub_1E42026F4();
  if (sub_1E42026F4() != v6)
  {
    sub_1E42026F4();
  }

  v7 = swift_allocObject();
  v8 = v0[1];
  v7[1] = *v0;
  v7[2] = v8;
  v9 = v0[3];
  v7[3] = v0[2];
  v7[4] = v9;
  sub_1E3969870(v0, &v11);
  sub_1E4203DA4();
  OUTLINED_FUNCTION_17_5();
  sub_1E3743478(v10);
  sub_1E42032A4();

  sub_1E325F69C(v1, &qword_1ECF2EFE8);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E39667F4()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v36 = v4;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F000);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v34 - v10;
  v34[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F008);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_21_3();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F010);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_20_1();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F018);
  v16 = OUTLINED_FUNCTION_17_2(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4_6();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v34 - v18;
  v38 = *(v3 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0);
  sub_1E42038F4();
  if (v37 == 1)
  {
    OUTLINED_FUNCTION_55_16();
    sub_1E3966B70();
  }

  else
  {
    v38 = *(v3 + 48);
    sub_1E42038F4();
    if (v37 != 1)
    {
      v20 = 1;
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_55_16();
    sub_1E3966DE4();
  }

  *(v0 + *(v13 + 36)) = sub_1E417FA4C();
  sub_1E3743538(v0, v1, &qword_1ECF2F010);
  swift_storeEnumTagMultiPayload();
  sub_1E39698A8();
  sub_1E4201F44();
  sub_1E325F69C(v0, &qword_1ECF2F010);
  v20 = 0;
  v8 = v34[1];
LABEL_7:
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F020);
  __swift_storeEnumTagSinglePayload(v19, v20, 1, v21);
  sub_1E3966B70();
  *&v11[*(v35 + 36)] = 0;
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v22, v23, v24);
  sub_1E3743538(v11, v8, &qword_1ECF2F000);
  v25 = v36;
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v26, v27, v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F028);
  sub_1E3743538(v8, v25 + *(v29 + 48), &qword_1ECF2F000);
  sub_1E325F69C(v11, &qword_1ECF2F000);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v30, v31);
  sub_1E325F69C(v8, &qword_1ECF2F000);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v32, v33);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3966B70()
{
  OUTLINED_FUNCTION_31_1();
  type metadata accessor for Monogram();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  v4 = (v3 - v2);
  v5 = *v0;
  v6 = *(v0 + 8);
  v7 = *(v0 + 16);

  j__OUTLINED_FUNCTION_51_1();
  j__OUTLINED_FUNCTION_18();
  v25 = j__OUTLINED_FUNCTION_18() & 1;
  OUTLINED_FUNCTION_50_13();
  OUTLINED_FUNCTION_71_12();
  OUTLINED_FUNCTION_6_14(v6, v7, v8, v9, v19, v20, v21, v22, v23, v24, SHIBYTE(v24), v25);
  v10 = *(v0 + 24);
  v11 = swift_allocObject();
  v12 = *(v0 + 16);
  v11[1] = *v0;
  v11[2] = v12;
  v13 = *(v0 + 48);
  v11[3] = *(v0 + 32);
  v11[4] = v13;

  sub_1E3969870(v0, v26);
  sub_1E3BD63E4(v5, 0, v27, v10, sub_1E3969A54, v11, 0, 0, v4);
  OUTLINED_FUNCTION_36();
  (*(v14 + 776))(v26);
  if (!v26[3])
  {
    sub_1E325F69C(v26, &unk_1ECF296E0);
    goto LABEL_5;
  }

  sub_1E3755B54();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v16 = [objc_opt_self() whiteColor];
    v15 = [v16 colorWithAlphaComponent_];

    goto LABEL_6;
  }

  v15 = v27[12];
LABEL_6:
  OUTLINED_FUNCTION_22_29();
  sub_1E39699C0(v17);
  sub_1E39B87A4(v15);

  OUTLINED_FUNCTION_21_39();
  sub_1E3969C7C(v4, v18);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3966DE4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  type metadata accessor for Monogram();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v5 = (v4 - v3);
  v6 = *v0;
  v7 = (*(**v0 + 672))();
  *(&v41 + 1) = &type metadata for ViewModelKeys;
  v42 = &off_1F5D7BCA8;
  LOBYTE(v40) = 13;

  v8 = sub_1E39BD1A0(&v40, v7);

  __swift_destroy_boxed_opaque_existential_1(&v40);
  if (v8)
  {
    sub_1E384EE08(39);
    v11 = sub_1E327D33C(v9, v10);
    if (v12)
    {
      v13 = v11;
      swift_isUniquelyReferenced_nonNull_native();
      *&v44[0] = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F310);
      sub_1E4207644();
      v8 = *&v44[0];

      sub_1E329504C((*(v8 + 56) + 32 * v13), &v40);
      sub_1E4207664();
    }

    else
    {
      v40 = 0u;
      v41 = 0u;
    }

    sub_1E325F69C(&v40, &unk_1ECF296E0);
  }

  ViewModelKeys.rawValue.getter(13);
  v15 = v14;
  v17 = v16;
  if (v8)
  {
    *(&v41 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
    *&v40 = v8;
    sub_1E329504C(&v40, v44);

    swift_isUniquelyReferenced_nonNull_native();
    v43 = v7;
    sub_1E32A87C0(v44, v15, v17);

    v7 = v43;
  }

  else
  {
    v40 = 0u;
    v41 = 0u;
    sub_1E325F69C(&v40, &unk_1ECF296E0);
    v18 = sub_1E327D33C(v15, v17);
    if (v19)
    {
      v20 = v18;
      swift_isUniquelyReferenced_nonNull_native();
      v43 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F310);
      sub_1E4207644();
      v7 = v43;

      sub_1E329504C((*(v7 + 56) + 32 * v20), v44);
      sub_1E4207664();
    }

    else
    {
      memset(v44, 0, 32);
    }

    sub_1E325F69C(v44, &unk_1ECF296E0);
  }

  type metadata accessor for ViewModel();
  v21 = (*(*v6 + 624))();
  v22 = sub_1E39BED80(41, v7, v21);

  if (v22)
  {
    v6 = v22;
  }

  else
  {
  }

  j__OUTLINED_FUNCTION_51_1();
  j__OUTLINED_FUNCTION_18();
  v39 = j__OUTLINED_FUNCTION_18() & 1;
  OUTLINED_FUNCTION_50_13();
  OUTLINED_FUNCTION_71_12();
  v23 = OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_6_14(v23, v24, v25, v26, v33, v34, v35, v36, v37, v38, SHIBYTE(v38), v39);
  v27 = v1[3];

  sub_1E3BD63E4(v6, 0, &v40, v27, 0, 0, 0, 0, v5);
  v28 = [objc_opt_self() whiteColor];
  v29 = [v28 colorWithAlphaComponent_];

  OUTLINED_FUNCTION_22_29();
  sub_1E39699C0(v30);
  v31 = OUTLINED_FUNCTION_53();
  sub_1E39B87A4(v31);

  OUTLINED_FUNCTION_21_39();
  sub_1E3969C7C(v5, v32);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E396729C(uint64_t a1)
{
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  if (!a1)
  {
    v9 = sub_1E3E37F30();
    (*(v4 + 16))(v8, v9, v2);
    v10 = sub_1E41FFC94();
    v11 = sub_1E42067E4();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1E323F000, v10, v11, "PlayerMonogram.playerImageView -- Stats Failure: Player image failed to load", v12, 2u);
      MEMORY[0x1E69143B0](v12, -1, -1);
    }

    (*(v4 + 8))(v8, v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0);
  return sub_1E4203904();
}

uint64_t sub_1E3967468()
{
  sub_1E4206014();
  type metadata accessor for TextViewModel();
  OUTLINED_FUNCTION_25_36();
  sub_1E39699C0(v1);
  OUTLINED_FUNCTION_12_54();
  sub_1E4205DB4();
  sub_1E4206014();
  OUTLINED_FUNCTION_12_54();
  sub_1E4205DB4();
  OUTLINED_FUNCTION_12_54();
  sub_1E4205DB4();
  if (!*(v0 + 64))
  {
    return sub_1E4207B64();
  }

  sub_1E4207B64();
  return sub_1E4206014();
}

uint64_t sub_1E3967560()
{
  sub_1E4207B44();
  sub_1E3967468();
  return sub_1E4207BA4();
}

uint64_t sub_1E39675A0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  return result;
}

uint64_t sub_1E39675C4()
{
  sub_1E4207B44();
  sub_1E3967468();
  return sub_1E4207BA4();
}

unint64_t sub_1E396761C()
{
  result = qword_1ECF2ED48;
  if (!qword_1ECF2ED48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2ED48);
  }

  return result;
}

unint64_t sub_1E3967674()
{
  result = qword_1ECF2ED50;
  if (!qword_1ECF2ED50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2ED50);
  }

  return result;
}

uint64_t sub_1E39676CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1E396771C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_1E3967758(uint64_t result, int a2, int a3)
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
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

      return OUTLINED_FUNCTION_5_25(result, a2);
    }

    *(result + 136) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_5_25(result, a2);
    }
  }

  return result;
}

uint64_t sub_1E39677BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0 && *(a1 + 96))
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

  return OUTLINED_FUNCTION_17_7(v2);
}

uint64_t sub_1E39677F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E396785C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1E3967898(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

      return OUTLINED_FUNCTION_5_25(result, a2);
    }

    *(result + 72) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_5_25(result, a2);
    }
  }

  return result;
}

unint64_t sub_1E39678EC()
{
  result = qword_1ECF2ED58;
  if (!qword_1ECF2ED58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2ED40);
    sub_1E3967E14(&unk_1ECF2ED60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2ED58);
  }

  return result;
}

unint64_t sub_1E39679A4()
{
  result = qword_1ECF2ED68;
  if (!qword_1ECF2ED68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2ED70);
    sub_1E3967A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2ED68);
  }

  return result;
}

unint64_t sub_1E3967A30()
{
  result = qword_1ECF2ED78;
  if (!qword_1ECF2ED78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2ED80);
    sub_1E3967B14(&unk_1ECF2ED88);
    sub_1E3967B14(&unk_1ECF2EDB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2ED78);
  }

  return result;
}

unint64_t sub_1E3967B14(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_40_2(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6);
    v5();
    sub_1E3743478(&qword_1EE2889D0);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1E3967BBC()
{
  result = qword_1ECF2ED98;
  if (!qword_1ECF2ED98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2EDA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2EDA8);
    sub_1E3743478(&unk_1ECF2EDB0);
    swift_getOpaqueTypeConformance2();
    sub_1E39699C0(&qword_1EE288768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2ED98);
  }

  return result;
}

unint64_t sub_1E3967CE8()
{
  result = qword_1ECF2EDC8;
  if (!qword_1ECF2EDC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2EDD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2EDD8);
    sub_1E3967E14(&unk_1ECF2EDE0);
    swift_getOpaqueTypeConformance2();
    sub_1E39699C0(&qword_1EE288768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2EDC8);
  }

  return result;
}

unint64_t sub_1E3967E14(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_40_2(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6);
    v5();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1E3967E88()
{
  result = qword_1ECF2EDE8;
  if (!qword_1ECF2EDE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2EDF0);
    sub_1E3743478(&unk_1ECF2EDF8);
    sub_1E3743478(&unk_1ECF2EE08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2EDE8);
  }

  return result;
}

uint64_t sub_1E3967F70(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0 && *(a1 + 160))
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

  return OUTLINED_FUNCTION_17_7(v2);
}

void *sub_1E3967FAC(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    result[19] = 0;
    *(result + 17) = 0u;
    result = OUTLINED_FUNCTION_63_11(result, a2 & 0x7FFFFFFF, 0);
    if (v3 < 0)
    {
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_22(result, a2);
    }
  }

  return result;
}

uint64_t sub_1E3968010(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0 && *(a1 + 144))
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

  return OUTLINED_FUNCTION_17_7(v2);
}

void *sub_1E396804C(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    result[17] = 0;
    result = OUTLINED_FUNCTION_63_11(result, a2 & 0x7FFFFFFF, 0);
    if (v3 < 0)
    {
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_22(result, a2);
    }
  }

  return result;
}

void sub_1E39680D4(uint64_t a1@<X8>)
{
  *a1 = sub_1E4201B84();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F038);
  sub_1E3968124();
}

void sub_1E3968124()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v46 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F040);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_19_7();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F048);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v47 - v14 + 96;
  memcpy(v47, v3 + 2, sizeof(v47));
  sub_1E3964AC8(v47, &v49);
  sub_1E3964AC8(v47, &v49);
  v16 = v47[8];
  if (v47[8] && (v17 = v47[7], sub_1E3755B54(), (v18 = sub_1E39F9114(v17, v16)) != 0))
  {
    v19 = v18;
    v20 = sub_1E38F08C4(v18);
  }

  else
  {
    v20 = sub_1E4203744();
  }

  sub_1E39684B8(v20, v15);

  v21 = sub_1E4202764();
  OUTLINED_FUNCTION_5_0();
  sub_1E4200A54();
  v22 = &v15[*(v8 + 36)];
  *v22 = v21;
  OUTLINED_FUNCTION_44_9(v22, v23, v24, v25, v26);
  *v1 = sub_1E4201B34();
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F050);
  sub_1E3968970(v3, v1 + *(v27 + 44));
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F058);
  memcpy((v1 + *(v28 + 52)), v47, 0x48uLL);
  v29 = sub_1E417F864();
  *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F060) + 36)) = v29;
  v30 = sub_1E417F85C();
  v48[0] = v30;
  memcpy(&v48[1], v47, 0x48uLL);
  memcpy((v1 + *(v5 + 36)), v48, 0x50uLL);
  v49 = v30;
  memcpy(v50, v47, sizeof(v50));
  OUTLINED_FUNCTION_18_5();
  sub_1E3743538(v31, v32, v33);
  OUTLINED_FUNCTION_82();
  sub_1E325F69C(v34, v35);
  sub_1E3743538(v15, v12, &qword_1ECF2F048);
  v36 = OUTLINED_FUNCTION_53();
  sub_1E3743538(v36, v37, &qword_1ECF2F040);
  v38 = v12;
  v39 = v12;
  v40 = v0;
  v41 = v46;
  sub_1E3743538(v38, v46, &qword_1ECF2F048);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F070);
  sub_1E3743538(v40, v41 + *(v42 + 48), &qword_1ECF2F040);
  v43 = v41 + *(v42 + 64);
  *v43 = 0;
  *(v43 + 8) = 0;
  sub_1E325F69C(v1, &qword_1ECF2F040);
  sub_1E325F69C(v15, &qword_1ECF2F048);
  v44 = OUTLINED_FUNCTION_8_6();
  sub_1E325F69C(v44, v45);
  sub_1E325F69C(v39, &qword_1ECF2F048);
  OUTLINED_FUNCTION_25_2();
}

double sub_1E39684B8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = sub_1E4201C44();
  v3 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v7 = sub_1E4203AF4();
  v8 = OUTLINED_FUNCTION_17_2(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0A8) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_26_2();
  v34 = *MEMORY[0x1E697F468];
  v14 = *(v3 + 104);
  v14(v11);
  v32 = v14;
  sub_1E4203704();
  v33 = sub_1E4203734();

  OUTLINED_FUNCTION_5_0();
  sub_1E4200BF4();
  sub_1E3969C18(v11, v2);
  (v14)(v6, *MEMORY[0x1E697F480], v31);
  LOBYTE(v14) = sub_1E4201C34();
  (*(v3 + 8))(v6, v31);
  v15 = COERCE_UNSIGNED_INT64(v38 * 0.5) & 0xFFFFFFFFFFFFFFFELL | ((v14 & 1) == 0);
  v16 = sub_1E4203DA4();
  v18 = v17;
  v19 = v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E0F0) + 68);
  *v19 = v15;
  *(v19 + 8) = v38;
  *(v19 + 16) = v39;
  *(v19 + 24) = v40;
  *(v19 + 32) = v41;
  *(v19 + 40) = v42;
  *(v19 + 48) = v33;
  *(v19 + 56) = 256;
  *(v19 + 64) = v16;
  *(v19 + 72) = v18;
  sub_1E3969C7C(v11, MEMORY[0x1E6981998]);
  v20 = v2 + *(v12 + 44);
  (v32)(v20, v34, v31);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0B0);
  *(v20 + *(v21 + 52)) = a1;
  *(v20 + *(v21 + 56)) = 256;

  v22 = sub_1E4203DA4();
  v24 = v23;
  v25 = (v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0B8) + 36));
  *v25 = v22;
  v25[1] = v24;
  v26 = *(**(v35 + 8) + 848);
  v26(v43);
  if (v44 != 255)
  {
    sub_1E325F69C(v43, &qword_1ECF2F0C8);
  }

  v27 = OUTLINED_FUNCTION_5_0();
  (v26)(v45, v27);
  if (v46 != 255)
  {
    sub_1E325F69C(v45, &qword_1ECF2F0C8);
  }

  OUTLINED_FUNCTION_5_0();
  sub_1E4203DA4();
  sub_1E4200D94();
  sub_1E3741EA0(v2, a2, &qword_1ECF2F0A8);
  v28 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0C0) + 36));
  v29 = v48;
  *v28 = v47;
  v28[1] = v29;
  result = *&v49;
  v28[2] = v49;
  return result;
}

uint64_t sub_1E3968970@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  v50 = v8;
  v51 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44();
  v48 = v11;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F078) - 8;
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_4_6();
  v53 = v12 - v13;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_28_6();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F080);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  v18 = v47 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F088);
  v20 = v19 - 8;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4_6();
  v49 = v21 - v22;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v23);
  v25 = v47 - v24;
  v26 = a1[2];
  v47[0] = a1[3];
  v47[1] = v26;
  v27 = a1[5];
  v47[2] = a1[6];
  v47[3] = v27;
  sub_1E4047F50();
  OUTLINED_FUNCTION_18();
  sub_1E3F23370();

  v28 = &v18[*(v15 + 36)];
  v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A248) + 28);
  v30 = *MEMORY[0x1E6980FA8];
  sub_1E4202B84();
  OUTLINED_FUNCTION_2();
  (*(v31 + 104))(v28 + v29, v30);
  *v28 = swift_getKeyPath();
  sub_1E3969B48();
  sub_1E4202EA4();
  sub_1E325F69C(v18, &qword_1ECF2F080);
  LOBYTE(v30) = sub_1E4202764();
  OUTLINED_FUNCTION_5_0();
  sub_1E4200A54();
  v32 = &v25[*(v20 + 44)];
  *v32 = v30;
  OUTLINED_FUNCTION_44_9(v32, v33, v34, v35, v36);
  OUTLINED_FUNCTION_18();
  v37 = v48;
  sub_1E3F23370();
  OUTLINED_FUNCTION_0_21();
  v38 = v50;
  sub_1E4202EA4();
  (*(v51 + 8))(v37, v38);
  LOBYTE(v38) = sub_1E4202764();
  OUTLINED_FUNCTION_5_0();
  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  v39 = v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F098) + 36);
  *v39 = v38;
  *(v39 + 8) = v3;
  *(v39 + 16) = v4;
  *(v39 + 24) = v5;
  *(v39 + 32) = v6;
  *(v39 + 40) = 0;
  *(v2 + *(v52 + 44)) = 0x3FF0000000000000;
  v40 = v49;
  sub_1E3743538(v25, v49, &qword_1ECF2F088);
  v41 = v53;
  sub_1E3743538(v2, v53, &qword_1ECF2F078);
  v42 = v54;
  sub_1E3743538(v40, v54, &qword_1ECF2F088);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0A0);
  sub_1E3743538(v41, v42 + *(v43 + 48), &qword_1ECF2F078);
  v44 = OUTLINED_FUNCTION_124();
  sub_1E325F69C(v44, v45);
  sub_1E325F69C(v25, &qword_1ECF2F088);
  sub_1E325F69C(v41, &qword_1ECF2F078);
  return sub_1E325F69C(v40, &qword_1ECF2F088);
}

unint64_t *sub_1E3968EEC@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v6 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v8 = v2[11];
  if (v6 >= *(v8 + 16))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v9 = v2[3];
  v10 = v2[5];
  memcpy(__dst, (v8 + 96 * v6 + 32), sizeof(__dst));

  sub_1E396915C(__dst, __src);
  type metadata accessor for PlayerStatsLayout();
  OUTLINED_FUNCTION_0_91();
  sub_1E39699C0(v11);

  OUTLINED_FUNCTION_82();
  v12 = sub_1E42010C4();
  v14 = v13;
  sub_1E42038E4();
  v15 = __src[0];
  v16 = __src[1];
  v17 = sub_1E4202744();
  if (v6)
  {
    v18 = (v10 + 136);
  }

  else
  {
    v18 = (v10 + 128);
  }

  OUTLINED_FUNCTION_5_0();
  v19 = *v18;
  memcpy(__src, __dst, sizeof(__src));
  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  v21 = 0;
  *a2 = v9;
  *(a2 + 8) = v6;
  result = memcpy((a2 + 16), __src, 0x60uLL);
  *(a2 + 112) = v12;
  *(a2 + 120) = v14;
  *(a2 + 128) = v15;
  *(a2 + 136) = v16;
  *(a2 + 144) = v17;
  *(a2 + 152) = v19;
  *(a2 + 160) = v3;
  *(a2 + 168) = v4;
  *(a2 + 176) = v5;
  *(a2 + 184) = 0;
  return result;
}

unint64_t sub_1E396907C()
{
  result = qword_1ECF2EF68;
  if (!qword_1ECF2EF68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2EF60);
    sub_1E3969108();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2EF68);
  }

  return result;
}

unint64_t sub_1E3969108()
{
  result = qword_1ECF50BF8;
  if (!qword_1ECF50BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF50BF8);
  }

  return result;
}

unint64_t *sub_1E3969194@<X0>(unint64_t *result@<X0>, void *a2@<X8>)
{
  v4 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *(v2 + 64);
    if (v4 < *(v5 + 16))
    {
      v6 = *(v2 + 24);
      memcpy(__dst, (v5 + 136 * v4 + 32), sizeof(__dst));

      sub_1E39692DC(__dst, &v11);
      type metadata accessor for PlayerStatsLayout();
      OUTLINED_FUNCTION_0_91();
      sub_1E39699C0(v7);

      v8 = sub_1E42010C4();
      v10 = v9;
      *a2 = v6;
      result = memcpy(a2 + 1, __dst, 0x88uLL);
      a2[18] = v8;
      a2[19] = v10;
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1E3969288()
{
  result = qword_1ECF50C00;
  if (!qword_1ECF50C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF50C00);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1E3969328(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0 && *(a1 + 64))
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

  return OUTLINED_FUNCTION_17_7(v2);
}

void *sub_1E3969364(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    result[7] = 0;
    *(result + 5) = 0u;
    *(result + 3) = 0u;
    *(result + 1) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_22(result, a2);
    }
  }

  return result;
}

uint64_t sub_1E39693C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_1E39693FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

      return OUTLINED_FUNCTION_5_25(result, a2);
    }

    *(result + 104) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_5_25(result, a2);
    }
  }

  return result;
}

unint64_t sub_1E3969458()
{
  result = qword_1ECF2EF98;
  if (!qword_1ECF2EF98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2EE28);
    sub_1E3743478(&unk_1ECF2EFA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2EF98);
  }

  return result;
}

unint64_t sub_1E3969510()
{
  result = qword_1ECF2EFA8;
  if (!qword_1ECF2EFA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2EEE0);
    sub_1E396959C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2EFA8);
  }

  return result;
}

unint64_t sub_1E396959C()
{
  result = qword_1ECF2EFB0;
  if (!qword_1ECF2EFB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2EED8);
    sub_1E3969654();
    sub_1E3743478(&unk_1EE2892A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2EFB0);
  }

  return result;
}

unint64_t sub_1E3969654()
{
  result = qword_1ECF2EFB8;
  if (!qword_1ECF2EFB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2EED0);
    sub_1E39696E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2EFB8);
  }

  return result;
}

unint64_t sub_1E39696E0()
{
  result = qword_1ECF2EFC0;
  if (!qword_1ECF2EFC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2EEC8);
    sub_1E396976C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2EFC0);
  }

  return result;
}

unint64_t sub_1E396976C()
{
  result = qword_1ECF2EFC8;
  if (!qword_1ECF2EFC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2EEC0);
    sub_1E3743478(&unk_1ECF2EFD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2EFC8);
  }

  return result;
}

double sub_1E3969854(char a1)
{
  v2 = 8;
  if (a1)
  {
    v2 = 16;
  }

  return *(v1 + v2 + 16);
}

unint64_t sub_1E39698A8()
{
  result = qword_1ECF2F030;
  if (!qword_1ECF2F030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F010);
    type metadata accessor for Monogram();
    sub_1E39699C0(&qword_1EE23BF18);
    swift_getOpaqueTypeConformance2();
    sub_1E3743478(&qword_1EE2889D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2F030);
  }

  return result;
}

unint64_t sub_1E39699C0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t objectdestroy_48Tm()
{

  return swift_deallocObject();
}

uint64_t sub_1E3969A80(uint64_t a1)
{
  v2 = sub_1E4202B84();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1E42017F4();
}

unint64_t sub_1E3969B48()
{
  result = qword_1ECF2F090;
  if (!qword_1ECF2F090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F080);
    swift_getOpaqueTypeConformance2();
    sub_1E3743478(&qword_1EE288798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2F090);
  }

  return result;
}

uint64_t sub_1E3969C18(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4203AF4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3969C7C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_53_17()
{

  return sub_1E4201F44();
}

uint64_t sub_1E3969CF8()
{
  type metadata accessor for ViewLayout();
  v0 = sub_1E3C2F968();
  v1.n128_u64[0] = 0;
  v14[0] = j__OUTLINED_FUNCTION_7_78(v1);
  v14[1] = v2;
  v14[2] = v3;
  v14[3] = v4;
  LOBYTE(v14[4]) = 0;
  v27 = xmmword_1E4296CA0;
  v28 = xmmword_1E4296CA0;
  v29 = 0;
  v24 = xmmword_1E42AE0B0;
  v25 = xmmword_1E42AE0B0;
  v26 = 0;
  v21 = xmmword_1E42AE0C0;
  v22 = xmmword_1E42AE0D0;
  v23 = 0;
  v18 = xmmword_1E42AE0E0;
  v19 = xmmword_1E42AE0F0;
  v20 = 0;
  __asm { FMOV            V0.2D, #20.0 }

  v15 = _Q0;
  v16 = xmmword_1E42AE100;
  v17 = 0;
  type metadata accessor for UIEdgeInsets();
  v11 = v10;
  sub_1E3C2FCB8(v14, __src);
  memcpy(v14, __src, 0xE9uLL);
  v12 = OUTLINED_FUNCTION_18();
  (*(*v0 + 1600))(v14, 1, v12 & 1, v11);
  return v0;
}

uint64_t sub_1E3969E80(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 104) = a1;
}

uint64_t sub_1E3969EC8()
{
  type metadata accessor for ViewLayout();
  v0 = sub_1E3C2F968();
  v1 = (*(*v0 + 312))(0x4059000000000000, 0);
  v1.n128_u64[0] = 0;
  __dst[0] = j__OUTLINED_FUNCTION_7_78(v1);
  __dst[1] = v2;
  __dst[2] = v3;
  __dst[3] = v4;
  LOBYTE(__dst[4]) = 0;
  sub_1E3952C88();
  v46 = v5;
  v47 = v6;
  v48 = v7;
  v49 = v8;
  v50 = 0;
  sub_1E3952C88();
  v41 = v9;
  v42 = v10;
  v43 = v11;
  v44 = v12;
  v45 = 0;
  sub_1E3952C88();
  v36 = v13;
  v37 = v14;
  v38 = v15;
  v39 = v16;
  v40 = 0;
  sub_1E3952C88();
  v31 = v17;
  v32 = v18;
  v33 = v19;
  v34 = v20;
  v35 = 0;
  sub_1E3952C88();
  __dst[30] = v21;
  __dst[31] = v22;
  __dst[32] = v23;
  __dst[33] = v24;
  v30 = 0;
  type metadata accessor for UIEdgeInsets();
  v26 = v25;
  sub_1E3C2FCB8(__dst, __src);
  memcpy(__dst, __src, 0xE9uLL);
  v27 = OUTLINED_FUNCTION_18();
  (*(*v0 + 1600))(__dst, 1, v27 & 1, v26);
  return v0;
}

uint64_t sub_1E396A08C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 112) = a1;
}

uint64_t sub_1E396A108()
{
  *(v0 + 104) = sub_1E3969CF8();
  *(v0 + 112) = sub_1E3969EC8();

  return sub_1E3C2F9A0();
}

uint64_t sub_1E396A160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1E379D7E4(a3 + 32, v5, &unk_1ECF2F0E0);
  v3 = v5[5];
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3;
}

void sub_1E396A1C4()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v29[-v7];
  v9 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_12();
  v13 = v4[4];
  OUTLINED_FUNCTION_177_1(v4);
  v14 = OUTLINED_FUNCTION_60_1();
  v16 = v15(v14, v13);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0F0);
  OUTLINED_FUNCTION_33_11();
  sub_1E4207604();
  OUTLINED_FUNCTION_176_0();
  sub_1E396AA54(AssociatedTypeWitness);
  OUTLINED_FUNCTION_60_1();

  if (v16)
  {
    sub_1E379D7E4(v2, v8, &unk_1ECF363C0);
    if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
    {

      sub_1E325F6F0(v8, &unk_1ECF363C0);
    }

    else
    {
      v18 = (*(v11 + 32))(v0, v8, v9);
      MEMORY[0x1EEE9AC00](v18);
      *&v29[-16] = v0;
      sub_1E396AF34(sub_1E396AED8, &v29[-32], v16);
      v20 = v19;

      if ((v20 & 1) == 0)
      {
        v27 = OUTLINED_FUNCTION_156_4();
        v28(v27, v9);
        goto LABEL_9;
      }

      v21 = OUTLINED_FUNCTION_156_4();
      v22(v21, v9);
    }

    v23 = OUTLINED_FUNCTION_32_0();
    __swift_project_boxed_opaque_existential_1(v23, v24);
    v25 = OUTLINED_FUNCTION_57();
    sub_1E3F0CD40(v25, v26);
  }

LABEL_9:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E396A460(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_1E397A404(0, v1, 0);
    v4 = a1 + 32;
    v2 = v20;
    do
    {
      sub_1E38C6028(v4, v16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0F0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F310);
      swift_dynamicCast();
      v20 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1E397A404((v5 > 1), v6 + 1, 1);
      }

      v7 = v18;
      v8 = v19;
      v9 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
      v10 = MEMORY[0x1EEE9AC00](v9);
      v12 = &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
      (*(v13 + 16))(v12, v10);
      sub_1E397C2CC(v6, v12, &v20, v7, v8, sub_1E37DADF4);
      __swift_destroy_boxed_opaque_existential_1(v17);
      v2 = v20;
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_1E396A64C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1E4207384();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v21 = MEMORY[0x1E69E7CC0];
  result = sub_1E397A404(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v21;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1E6911E60](v5, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = type metadata accessor for RemoteBarItem();
      v19 = v8;
      v20 = &off_1F5D824A8;
      v18[0] = v7;
      v21 = v3;
      v10 = *(v3 + 16);
      v9 = *(v3 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_1E397A404((v9 > 1), v10 + 1, 1);
        v11 = v19;
        v12 = v20;
      }

      else
      {
        v11 = v8;
        v12 = &off_1F5D824A8;
      }

      ++v5;
      v13 = __swift_mutable_project_boxed_opaque_existential_1(v18, v11);
      v14 = MEMORY[0x1EEE9AC00](v13);
      v16 = v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v17 + 16))(v16, v14);
      sub_1E397C2CC(v10, v16, &v21, v11, v12, sub_1E37DADF4);
      __swift_destroy_boxed_opaque_existential_1(v18);
      v3 = v21;
    }

    while (v2 != v5);
    return v3;
  }

  __break(1u);
  return result;
}

void *sub_1E396A850(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1E4207384();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v21 = MEMORY[0x1E69E7CC0];
  result = sub_1E397A464(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v21;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1E6911E60](v5, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = type metadata accessor for RemoteSidebarItem();
      v19 = v8;
      v20 = &off_1EE279A10;
      v18[0] = v7;
      v21 = v3;
      v10 = *(v3 + 16);
      v9 = *(v3 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_1E397A464((v9 > 1), v10 + 1, 1);
        v11 = v19;
        v12 = v20;
      }

      else
      {
        v11 = v8;
        v12 = &off_1EE279A10;
      }

      ++v5;
      v13 = __swift_mutable_project_boxed_opaque_existential_1(v18, v11);
      v14 = MEMORY[0x1EEE9AC00](v13);
      v16 = v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v17 + 16))(v16, v14);
      sub_1E397C2CC(v10, v16, &v21, v11, v12, sub_1E3251BE8);
      __swift_destroy_boxed_opaque_existential_1(v18);
      v3 = v21;
    }

    while (v2 != v5);
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E396AA54(uint64_t a1)
{
  v6 = MEMORY[0x1E69E7CC0];
  v2 = *(a1 + 16);
  sub_1E4207574();
  v3 = a1 + 32;
  if (!v2)
  {
    return v6;
  }

  while (1)
  {
    sub_1E38C6028(v3, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0F0);
    type metadata accessor for RemoteBarItem();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_1E4207544();
    sub_1E4207584();
    sub_1E4207594();
    sub_1E4207554();
    v3 += 40;
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

uint64_t sub_1E396AB60(uint64_t a1)
{
  v2 = *(a1 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  sub_1E397A444(0, v2, 0);
  v3 = a1 + 32;
  v4 = v9;
  if (v2)
  {
    while (1)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v6 = *(v9 + 16);
      v5 = *(v9 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1E397A444((v5 > 1), v6 + 1, 1);
      }

      *(v9 + 16) = v6 + 1;
      *(v9 + 8 * v6 + 32) = v8;
      v3 += 8;
      if (!--v2)
      {
        return v4;
      }
    }

    return 0;
  }

  return v4;
}

uint64_t sub_1E396ACA0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v21 = MEMORY[0x1E69E7CC0];
  sub_1E397A464(0, v2, 0);
  v3 = a1 + 32;
  v4 = v21;
  if (v2)
  {
    while (1)
    {
      sub_1E38C6028(v3, v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F310);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0F0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      sub_1E3251BE8(v15, v20);
      sub_1E3251BE8(v20, v17);
      v21 = v4;
      v6 = *(v4 + 16);
      v5 = *(v4 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1E397A464((v5 > 1), v6 + 1, 1);
      }

      v7 = v18;
      v8 = v19;
      v9 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
      v10 = MEMORY[0x1EEE9AC00](v9);
      v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v13 + 16))(v12, v10);
      sub_1E397C2CC(v6, v12, &v21, v7, v8, sub_1E3251BE8);
      __swift_destroy_boxed_opaque_existential_1(v17);
      v4 = v21;
      v3 += 40;
      if (!--v2)
      {
        return v4;
      }
    }

    v16 = 0;
    memset(v15, 0, sizeof(v15));
    sub_1E325F6F0(v15, &qword_1ECF2EC80);
    return 0;
  }

  return v4;
}

uint64_t sub_1E396AED8()
{
  type metadata accessor for RemoteBarItem();
  sub_1E39E8468();
  return v0 & 1;
}

void sub_1E396AF34(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v5 = sub_1E32AE9B0(a3);
  v6 = 0;
  while (v5 != v6)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1E6911E60](v6, a3);
    }

    else
    {
      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      v7 = *(a3 + 8 * v6 + 32);
    }

    v8 = v7;
    v12 = v7;
    v9 = a1(&v12);

    if (v3 || (v9 & 1) != 0)
    {
      return;
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_1E396B0B4()
{
  result = sub_1E4205F14();
  qword_1EE2AADE0 = result;
  *algn_1EE2AADE8 = v1;
  return result;
}

uint64_t *sub_1E396B0E4()
{
  if (qword_1EE29CE98 != -1)
  {
    OUTLINED_FUNCTION_6_61();
    swift_once();
  }

  return &qword_1EE2AADE0;
}

uint64_t sub_1E396B134(char a1)
{
  if (!a1)
  {
    return 1701736302;
  }

  if (a1 == 1)
  {
    return 0x726142626174;
  }

  return 0x72614265646973;
}

void sub_1E396B188()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_rootControllerConfig;
  v3 = [objc_opt_self() sharedInstance];
  v4 = [v3 rootControllerConfig];

  *&v1[v2] = v4;
  v5 = OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_tabItemsUpdater;
  type metadata accessor for TabItemsUpdater();
  *&v1[v5] = sub_1E374B2FC();
  v6 = OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_defaultSectionManager;
  type metadata accessor for DefaultSectionManager();
  *&v1[v6] = swift_allocObject();
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_preloadedImageViewModelsMap] = 0;
  OUTLINED_FUNCTION_150_4(OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_modeChanged);
  *(OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_mode + v1) = 0;
  v1[OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_hasHandledFirstSelectionFromLaunch] = 0;
  v7 = &v1[OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_selectedIndex];
  *v7 = 0;
  v7[8] = 1;
  v8 = &v1[OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_previousIndex];
  *v8 = 0;
  v8[8] = 1;
  OUTLINED_FUNCTION_150_4(OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_lastSelectedIdentifier);
  *&v1[OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_memoryPressureNotificationSource] = 0;
  v9 = MEMORY[0x1E69E7CC8];
  *&v1[OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_stackExpirationDates] = MEMORY[0x1E69E7CC8];
  *&v1[OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_stackExpirationWorkItems] = v9;
  v10 = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_sideBarSections] = MEMORY[0x1E69E7CC0];
  v11 = &v1[OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_controllerMap];
  sub_1E3280A90(0, &qword_1EE23B250);
  *v11 = sub_1E3CA5CB4();
  v11[1] = v12;
  v1[OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_libraryOnly] = 0;
  v13 = objc_opt_self();
  v14 = [v13 sharedInstance];
  v15 = [v14 tabBarPageMetrics];

  v16 = sub_1E4205C64();
  v17 = sub_1E374BD08(v16);

  if (!v17)
  {
    v17 = sub_1E4205CB4();
  }

  *&v1[OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_tabBarPageDataDict] = v17;
  v18 = [v13 sharedInstance];
  v19 = [v18 sidebarPageMetrics];

  v20 = sub_1E4205C64();
  sub_1E374BD08(v20);
  OUTLINED_FUNCTION_31_4();

  if (!v18)
  {
    v18 = sub_1E4205CB4();
  }

  *&v1[OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_sidebarPageDataDict] = v18;
  v21 = &v1[OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_actionContextTabBar];
  *v21 = 0x726142626174;
  v21[1] = 0xE600000000000000;
  v22 = OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_impressionsTracker;
  sub_1E4204964();
  *&v1[v22] = sub_1E4204954();
  v1[OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_shouldTrackImpressions] = 0;
  v23 = [objc_opt_self() sharedInstance];
  if (v23)
  {
    v24 = v23;
    v25 = OUTLINED_FUNCTION_117_3();
    sub_1E3741090(v25, v26, v24);
    OUTLINED_FUNCTION_9_9();

    if (v20)
    {
      v27 = &v1[OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_libraryTitle];
      *v27 = v22;
      v27[1] = v20;
      *&v1[OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_tabBarItems] = v10;
      swift_unknownObjectWeakInit();
      v1[OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_ignorePurgingRequestsForTransitionBackToSidebar] = 0;
      *&v1[OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_sideBarOnlyItemIdentifiers] = v10;
      *&v1[OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_lastSelectedIdentifierInSectionMap] = v9;
      OUTLINED_FUNCTION_150_4(OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_tipPlacementId);
      *&v1[OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_tipPlacementTabBarItemIndex] = -1;
      OUTLINED_FUNCTION_150_4(OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_tipPlacementSideBarItemIdentifier);
      *&v1[OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_accountMessageViewModel] = 0;
      v1[OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_isUpdatingForModeChange] = 0;
      v1[OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_isUpdatingUI] = 0;
      v29.receiver = v1;
      v29.super_class = type metadata accessor for RootSplitViewManager();
      v28 = objc_msgSendSuper2(&v29, sel_init);
      sub_1E396B61C();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1E396B61C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v21 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_12();
  v20 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  sub_1E4206B44();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  sub_1E3280A90(0, &qword_1EE23B180);
  sub_1E4206B04();
  v13 = sub_1E4206B54();
  v14 = OUTLINED_FUNCTION_17_11();
  v15(v14);
  v16 = OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_memoryPressureNotificationSource;
  *(v2 + OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_memoryPressureNotificationSource) = v13;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  swift_getObjectType();
  OUTLINED_FUNCTION_4_0();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22[4] = sub_1E397C69C;
  v22[5] = v17;
  OUTLINED_FUNCTION_12_0();
  v22[1] = 1107296256;
  OUTLINED_FUNCTION_14_1();
  v22[2] = v18;
  v22[3] = &block_descriptor_63;
  v19 = _Block_copy(v22);

  sub_1E4203FE4();
  sub_1E3979930();
  sub_1E4206B64();
  _Block_release(v19);
  swift_unknownObjectRelease();
  (*(v4 + 8))(v1, v21);
  (*(v7 + 8))(v11, v20);

  if (*(v2 + v16))
  {
    swift_getObjectType();
    OUTLINED_FUNCTION_12_1();
    swift_unknownObjectRetain();
    sub_1E4206B84();
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E396B91C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v42 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v42 - v10;
  OUTLINED_FUNCTION_26_3();
  v12 = MEMORY[0x1E69E7D40];
  v14 = *((*MEMORY[0x1E69E7D40] & v13) + 0x3B8);
  if (v14() & 1) != 0 || (OUTLINED_FUNCTION_46_18(), ((*(v15 + 976))()))
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_0_11();
    v16(v1);
    v17 = v0;
    v18 = sub_1E41FFC94();
    v19 = sub_1E4206814();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v42 = v4;
      v21 = v2;
      v22 = v20;
      *v20 = 67109376;
      v20[1] = v14() & 1;
      *(v22 + 4) = 1024;
      *(v22 + 10) = (*((*MEMORY[0x1E69E7D40] & v17->isa) + 0x3D0))() & 1;

      _os_log_impl(&dword_1E323F000, v18, v19, "    RootSplitViewController::ignoring nav controller request.\n    modeChange = %{BOOL}d, updatingUI = %{BOOL}d", v22, 0xEu);
      v2 = v21;
      v4 = v42;
      OUTLINED_FUNCTION_6_0();
    }

    else
    {

      v18 = v17;
    }

    (*(v4 + 8))(v1, v2);
  }

  else
  {
    OUTLINED_FUNCTION_46_18();
    v24 = (*(v23 + 488))();
    if ((v25 & 1) == 0)
    {
      v26 = v24;
      OUTLINED_FUNCTION_46_18();
      (*(v27 + 1064))(&v44);
      if (v45)
      {
        sub_1E3251BE8(&v44, v46);
        v28 = v12;
        v29 = v47;
        v30 = v48;
        __swift_project_boxed_opaque_existential_1(v46, v47);
        OUTLINED_FUNCTION_33();
        v31 = OUTLINED_FUNCTION_146();
        v32(v31);
        OUTLINED_FUNCTION_16_11();
        (*((*v28 & *v0) + 0x290))();
        *&v44 = v29;
        *(&v44 + 1) = v30;
        sub_1E3280A90(0, &qword_1EE23B250);
        sub_1E3CA4D00();

        v33 = v43;
        if (v43)
        {
          objc_opt_self();
          OUTLINED_FUNCTION_20_2();
          if (!swift_dynamicCastObjCClass())
          {
          }

          __swift_destroy_boxed_opaque_existential_1(v46);
        }

        else
        {
          sub_1E324FBDC();
          OUTLINED_FUNCTION_0_11();
          v38(v11);
          v39 = sub_1E41FFC94();
          v40 = sub_1E42067F4();
          if (os_log_type_enabled(v39, v40))
          {
            v41 = OUTLINED_FUNCTION_6_21();
            *v41 = 134217984;
            *(v41 + 4) = v26;
            OUTLINED_FUNCTION_126_0(&dword_1E323F000, v39, v40, "RootSplitViewController::currentNavigationController no controller for %ld");
            OUTLINED_FUNCTION_21_0();
          }

          (*(v4 + 8))(v11, v2);
          __swift_destroy_boxed_opaque_existential_1(v46);
        }
      }

      else
      {
        sub_1E325F6F0(&v44, &unk_1ECF2F1D0);
        sub_1E324FBDC();
        OUTLINED_FUNCTION_0_11();
        v34(v8);
        v35 = sub_1E41FFC94();
        v36 = sub_1E42067F4();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = OUTLINED_FUNCTION_6_21();
          *v37 = 134217984;
          *(v37 + 4) = v26;
          OUTLINED_FUNCTION_50_6(&dword_1E323F000, v35, v36, "RootSplitViewController::currentNavigationController no item for %ld");
          OUTLINED_FUNCTION_65_0();
        }

        (*(v4 + 8))(v8, v2);
      }
    }
  }

  OUTLINED_FUNCTION_25_2();
}

id sub_1E396BE70()
{
  OUTLINED_FUNCTION_21();
  v1 = (*(v0 + 352))();
  v2 = v1;
  if (v1)
  {
    v3 = [v1 viewControllers];
    sub_1E3280A90(0, &qword_1EE23B250);
    OUTLINED_FUNCTION_20_2();
    v4 = sub_1E42062B4();

    sub_1E37CB21C(v4);
    OUTLINED_FUNCTION_38();

    if (v3)
    {

      return v3;
    }
  }

  return v2;
}

void (*sub_1E396BF50(void *a1))(id **, char)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_appContext;
  v3[4] = v1;
  v3[5] = v4;
  OUTLINED_FUNCTION_11_3();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1E397C6E0;
}

uint64_t sub_1E396BFCC()
{
  OUTLINED_FUNCTION_29_0();
  v0 = OUTLINED_FUNCTION_16_0();
  sub_1E34AF604(v0);
  return OUTLINED_FUNCTION_16_0();
}

uint64_t sub_1E396C00C()
{
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_9_1();
  v3 = *v1;
  *v1 = v2;
  v1[1] = v0;
  return sub_1E34AF594(v3);
}

uint64_t sub_1E396C0A0()
{
  v1 = OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_mode;
  OUTLINED_FUNCTION_0_12();
  return v1[v0];
}

uint64_t sub_1E396C0D4(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_mode;
  OUTLINED_FUNCTION_3_0();
  v4 = v3[v1];
  v3[v1] = a1;
  v5 = OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_mode;
  result = OUTLINED_FUNCTION_5_0();
  if (*(v5 + v1) != v4)
  {
    OUTLINED_FUNCTION_21();
    result = (*(v7 + 416))();
    if (result)
    {
      OUTLINED_FUNCTION_152();
      v5(v4);
      v8 = OUTLINED_FUNCTION_67_0();
      return sub_1E34AF594(v8);
    }
  }

  return result;
}

void (*sub_1E396C198(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_mode;
  OUTLINED_FUNCTION_5_0();
  *(v3 + 32) = v4[v1];
  return sub_1E396C210;
}

void sub_1E396C210(uint64_t a1)
{
  v1 = *a1;
  sub_1E396C0D4(*(*a1 + 32));

  free(v1);
}

uint64_t sub_1E396C250()
{
  v1 = OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_hasHandledFirstSelectionFromLaunch;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E396C284(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_hasHandledFirstSelectionFromLaunch;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E396C2D0(uint64_t a1, char a2)
{
  result = OUTLINED_FUNCTION_9_1();
  *v2 = a1;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1E396C3A8(uint64_t a1, char a2)
{
  result = OUTLINED_FUNCTION_9_1();
  *v2 = a1;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1E396C508()
{
  OUTLINED_FUNCTION_29_0();

  return OUTLINED_FUNCTION_16_0();
}

uint64_t sub_1E396C550()
{
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_9_1();
  *v1 = v2;
  v1[1] = v0;
}

void sub_1E396C5EC()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_21();
  (*(v1 + 656))();
  OUTLINED_FUNCTION_9_9();
  v2 = sub_1E3280A90(0, &qword_1EE23B250);
  v3 = OUTLINED_FUNCTION_34();
  sub_1E3CA4CF0(v3, v4, v5, v2, v6);
  OUTLINED_FUNCTION_31_4();

  OUTLINED_FUNCTION_4_4();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;

  v12 = 0;
  v13 = 0;
  while (v9)
  {
LABEL_7:
    v15 = *(*(v0 + 56) + ((v12 << 9) | (8 * __clz(__rbit64(v9)))));
    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    if (v16)
    {
      v17 = v16;
      v18 = v15;
      v19 = [v17 viewControllers];
      v20 = sub_1E42062B4();

      if (v20 >> 62)
      {
        v21 = sub_1E4207384();
      }

      else
      {
        v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v21 = 0;
    }

    v9 &= v9 - 1;
    v22 = __OFADD__(v13, v21);
    v13 += v21;
    if (v22)
    {
      goto LABEL_18;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {

      OUTLINED_FUNCTION_25_2();
      return;
    }

    v9 = *(v0 + 64 + 8 * v14);
    ++v12;
    if (v9)
    {
      v12 = v14;
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

uint64_t sub_1E396C7C4()
{
  v1 = OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_libraryOnly;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E396C7F8(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_libraryOnly;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E396C838()
{
  v1 = OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_shouldTrackImpressions;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E396C86C(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_shouldTrackImpressions;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

void sub_1E396C95C(void *a1)
{
  OUTLINED_FUNCTION_37();
  swift_unknownObjectWeakAssign();
}

void (*sub_1E396C9A4(void *a1))(id **, char)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_libraryManager;
  v3[4] = v1;
  v3[5] = v4;
  OUTLINED_FUNCTION_11_3();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1E396CA20;
}

uint64_t sub_1E396CA24()
{
  v1 = OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_ignorePurgingRequestsForTransitionBackToSidebar;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E396CA58(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_ignorePurgingRequestsForTransitionBackToSidebar;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E396CB60()
{
  v1 = OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_tipPlacementTabBarItemIndex;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E396CB94(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_tipPlacementTabBarItemIndex;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E396CBE0()
{
  OUTLINED_FUNCTION_29_0();

  return OUTLINED_FUNCTION_16_0();
}

uint64_t sub_1E396CC28()
{
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_9_1();
  *v1 = v2;
  v1[1] = v0;
}

uint64_t sub_1E396CCA4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_accountMessageViewModel;
  OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
}

uint64_t sub_1E396CCEC()
{
  v1 = OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_isUpdatingForModeChange;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E396CD20(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_isUpdatingForModeChange;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E396CDAC()
{
  v1 = OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_isUpdatingUI;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E396CDE0(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_isUpdatingUI;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

void sub_1E396CE6C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v40 = v3;
  v5 = v4;
  ObjectType = swift_getObjectType();
  v7 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5_9();
  sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v41 = v16;
  v42 = v15;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4_12();
  v17 = sub_1E396AB60(v5);
  if (v17)
  {
    v18 = v17;
    v19 = *sub_1E37AF264();
    OUTLINED_FUNCTION_4_0();
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = swift_allocObject();
    v21[2] = v20;
    v21[3] = v40;
    v21[4] = v2;
    v21[5] = v18;
    v21[6] = ObjectType;
    v43[4] = sub_1E397BF24;
    v43[5] = v21;
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_48_2(COERCE_DOUBLE(1107296256));
    v43[2] = v22;
    v43[3] = &block_descriptor_33;
    v23 = _Block_copy(v43);
    v24 = v19;

    sub_1E4203FE4();
    OUTLINED_FUNCTION_3_79();
    sub_1E3274AB4(v25, v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
    OUTLINED_FUNCTION_47();
    sub_1E328FCF4(v27, v28);
    OUTLINED_FUNCTION_151_0();
    sub_1E42072E4();
    v29 = OUTLINED_FUNCTION_62_0();
    MEMORY[0x1E6911380](v29);
    _Block_release(v23);

    v30 = OUTLINED_FUNCTION_11_6();
    v31(v30);
    (*(v41 + 8))(v0, v42);
  }

  else
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_4_32();
    v32(v13);
    v33 = sub_1E41FFC94();
    v34 = sub_1E42067F4();
    if (OUTLINED_FUNCTION_6_33(v34))
    {
      v35 = OUTLINED_FUNCTION_125_0();
      *v35 = 0;
      OUTLINED_FUNCTION_66_0();
      _os_log_impl(v36, v37, v38, v39, v35, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    (*(v9 + 8))(v13, v7);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E396D1F8()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_123_2();
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_9();
  v8 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_12();
  OUTLINED_FUNCTION_73();
  Strong = swift_unknownObjectWeakLoadStrong();
  v41 = v8;
  if (Strong)
  {
    v13 = Strong;
    v42 = MEMORY[0x1E69E7CC8];
    v14 = *(v2 + 16);
    if (v14)
    {
      v15 = v2 + 32;
      do
      {
        v15 += 8;

        sub_1E396D638(v16, &v42);

        --v14;
      }

      while (v14);
    }

    sub_1E3280A90(0, &qword_1EE23B1D0);
    v17 = sub_1E4206A04();
    OUTLINED_FUNCTION_4_0();
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = v42;
    v20 = swift_allocObject();
    v20[2] = v18;
    v20[3] = v19;
    v20[4] = v6;
    v20[5] = v4;
    v47 = sub_1E397C618;
    v48 = v20;
    OUTLINED_FUNCTION_25_7();
    v44 = 1107296256;
    OUTLINED_FUNCTION_14_1();
    v45 = v21;
    v46 = &block_descriptor_59;
    v22 = _Block_copy(&v43);

    sub_1E4203FE4();
    v43 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_3_79();
    sub_1E3274AB4(v23, v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
    OUTLINED_FUNCTION_47();
    sub_1E328FCF4(v25, v26);
    OUTLINED_FUNCTION_113_4();
    OUTLINED_FUNCTION_151_0();
    sub_1E42072E4();
    v27 = OUTLINED_FUNCTION_62_0();
    MEMORY[0x1E6911380](v27);
    _Block_release(v22);

    v28 = OUTLINED_FUNCTION_11_6();
    v29(v28);
    (*(v10 + 8))(v0, v41);
  }

  else
  {
    sub_1E3280A90(0, &qword_1EE23B1D0);
    v40 = sub_1E4206A04();
    v30 = swift_allocObject();
    *(v30 + 16) = v6;
    *(v30 + 24) = v4;
    v47 = sub_1E379E500;
    v48 = v30;
    OUTLINED_FUNCTION_25_7();
    v44 = 1107296256;
    OUTLINED_FUNCTION_14_1();
    v45 = v31;
    v46 = &block_descriptor_52;
    v32 = _Block_copy(&v43);

    sub_1E4203FE4();
    v43 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_3_79();
    sub_1E3274AB4(v33, v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
    OUTLINED_FUNCTION_47();
    sub_1E328FCF4(v35, v36);
    OUTLINED_FUNCTION_113_4();
    OUTLINED_FUNCTION_151_0();
    sub_1E42072E4();
    v37 = OUTLINED_FUNCTION_62_0();
    MEMORY[0x1E6911380](v37);
    _Block_release(v32);

    v38 = OUTLINED_FUNCTION_11_6();
    v39(v38);
    (*(v10 + 8))(v0, v8);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E396D8D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  OUTLINED_FUNCTION_106();
  v24 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_4_6();
  v30 = v28 - v29;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_18_6();
  v158 = v32;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_25_3();
  v35 = v20[2];
  v164 = v20;
  if (v35)
  {
    v160 = v34;
    v36 = OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_accountMessageViewModel;
    v37 = v20 + 4;
    OUTLINED_FUNCTION_3_0();
    v159 = v36;
    OUTLINED_FUNCTION_3_0();
    v38 = (v26 + 8);
    v39 = MEMORY[0x1E69E6158];
    v157 = v35;
    v161 = MEMORY[0x1E69E7CC0];
    v156 = v24;
    do
    {
      v40 = *v37;
      v168 = sub_1E4205F14();
      v169 = v41;

      OUTLINED_FUNCTION_106_7();
      sub_1E4207414();
      if (*(v40 + 16) && (v42 = sub_1E375D924(&v170), (v43 & 1) != 0))
      {
        OUTLINED_FUNCTION_127_4(v42);
        sub_1E375D84C(&v170);
        if (swift_dynamicCast())
        {

          type metadata accessor for UnifiedMessagingAccountMessageViewModel();
          v44 = OUTLINED_FUNCTION_50();
          v45 = sub_1E375D2E8(v44, v169);

          *(v23 + v159) = v45;

          sub_1E324FBDC();
          OUTLINED_FUNCTION_111_2();
          v46(v160);
          v47 = sub_1E41FFC94();
          v48 = sub_1E4206814();
          if (OUTLINED_FUNCTION_6_33(v48))
          {
            v49 = OUTLINED_FUNCTION_125_0();
            *v49 = 0;
            _os_log_impl(&dword_1E323F000, v47, v160, "RootSplitViewController:: account message: have view model", v49, 2u);
            OUTLINED_FUNCTION_65_0();
          }

          (*v38)(v160, v24);
          goto LABEL_36;
        }
      }

      else
      {
        sub_1E375D84C(&v170);
      }

      v168 = sub_1E4205F14();
      v169 = v50;
      OUTLINED_FUNCTION_106_7();
      sub_1E4207414();
      if (*(v40 + 16) && (v51 = sub_1E375D924(&v170), (v52 & 1) != 0))
      {
        OUTLINED_FUNCTION_127_4(v51);
        sub_1E375D84C(&v170);
        v53 = swift_dynamicCast();
        if (v53)
        {
          if (v168 == sub_1E4205F14() && v169 == v54)
          {

            v39 = MEMORY[0x1E69E6158];
            if (v157 == 1)
            {
              goto LABEL_40;
            }
          }

          else
          {
            OUTLINED_FUNCTION_38_0();
            v56 = OUTLINED_FUNCTION_97_0();

            v39 = MEMORY[0x1E69E6158];
            if (v157 == 1 && (v56 & 1) != 0)
            {
LABEL_40:
              OUTLINED_FUNCTION_91_5();
              *(v23 + v68) = 1;
              sub_1E324FBDC();
              OUTLINED_FUNCTION_111_2();
              v69(v158);
              v39 = v23;
              v70 = sub_1E41FFC94();
              v71 = sub_1E4206814();
              if (os_log_type_enabled(v70, v71))
              {
                v72 = swift_slowAlloc();
                *v72 = 67109120;
                *(v72 + 4) = (*((*MEMORY[0x1E69E7D40] & v39->isa) + 0x2B0))() & 1;

                _os_log_impl(&dword_1E323F000, v70, v71, "RootSplitViewController:: library only %{BOOL}d", v72, 8u);
                v23 = v20;
                OUTLINED_FUNCTION_6_0();
              }

              else
              {

                v70 = v39;
              }

              v24 = v156;
              (*v38)(v158, v156);

              OUTLINED_FUNCTION_116_1();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                OUTLINED_FUNCTION_148_4();
                v80 = OUTLINED_FUNCTION_27();
                v84 = sub_1E397A258(v80, v81, v82, v83);
                OUTLINED_FUNCTION_149_2(v84);
              }

              OUTLINED_FUNCTION_48_19();
              if (v62)
              {
                OUTLINED_FUNCTION_35(v73);
                OUTLINED_FUNCTION_148_4();
                v89 = sub_1E397A258(v85, v86, v87, v88);
                OUTLINED_FUNCTION_149_2(v89);
              }

              OUTLINED_FUNCTION_144_3(&a15);
LABEL_48:
              OUTLINED_FUNCTION_140_1();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v75 = OUTLINED_FUNCTION_27();
                v161 = sub_1E397A258(v75, v76, v77, v78);
              }

              OUTLINED_FUNCTION_48_19();
              if (v62)
              {
                v79 = OUTLINED_FUNCTION_35(v74);
                v161 = sub_1E397A258(v79, v39, 1, v161);
              }

              v63 = &a16;
              goto LABEL_53;
            }
          }
        }
      }

      else
      {
        v53 = sub_1E375D84C(&v170);
      }

      if ((*((*MEMORY[0x1E69E7D40] & *v23) + 0x2B0))(v53))
      {
        OUTLINED_FUNCTION_91_5();
        *(v23 + v57) = 0;
      }

      OUTLINED_FUNCTION_81_6();
      v168 = sub_1E4205F14();
      v169 = v58;
      OUTLINED_FUNCTION_106_7();
      sub_1E4207414();
      if (!*(v40 + 16) || (v59 = sub_1E375D924(&v170), (v60 & 1) == 0))
      {

        sub_1E375D84C(&v170);
LABEL_33:
        sub_1E324FBDC();
        OUTLINED_FUNCTION_111_2();
        v64(v30);
        v65 = sub_1E41FFC94();
        v66 = sub_1E42067F4();
        if (OUTLINED_FUNCTION_6_33(v66))
        {
          v67 = OUTLINED_FUNCTION_125_0();
          *v67 = 0;
          _os_log_impl(&dword_1E323F000, v65, v30, "RootSplitViewController:: Bar item is missing destination", v67, 2u);
          OUTLINED_FUNCTION_65_0();
        }

        (*v38)(v30, v24);
        goto LABEL_36;
      }

      OUTLINED_FUNCTION_127_4(v59);
      sub_1E375D84C(&v170);
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_33;
      }

      if (v168 != 1)
      {
        goto LABEL_48;
      }

      OUTLINED_FUNCTION_116_1();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_148_4();
        v90 = OUTLINED_FUNCTION_27();
        v94 = sub_1E397A258(v90, v91, v92, v93);
        OUTLINED_FUNCTION_149_2(v94);
      }

      OUTLINED_FUNCTION_48_19();
      if (v62)
      {
        OUTLINED_FUNCTION_35(v61);
        OUTLINED_FUNCTION_148_4();
        v99 = sub_1E397A258(v95, v96, v97, v98);
        OUTLINED_FUNCTION_149_2(v99);
      }

      v63 = &a15;
LABEL_53:
      OUTLINED_FUNCTION_144_3(v63);
LABEL_36:
      ++v37;
      --v35;
      v39 = MEMORY[0x1E69E6158];
    }

    while (v35);
  }

  OUTLINED_FUNCTION_116_1();
  v100 = v23;
  sub_1E396E7D4();
  OUTLINED_FUNCTION_140_1();
  sub_1E396F404();
  v162 = v101;
  v102 = (*((*MEMORY[0x1E69E7D40] & *v23) + 0x278))();
  v103 = 0;
  v104 = *(v102 + 16);
  v105 = v102 + 32;
  v106 = MEMORY[0x1E69E7CC0];
  v107 = &unk_1EE29C000;
  v163 = v104;
  while (v104 != v103)
  {
    if (v103 >= *(v102 + 16))
    {
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
      return;
    }

    sub_1E38C6028(v105, &v170);
    v108 = v171;
    __swift_project_boxed_opaque_existential_1(&v170, v171);
    OUTLINED_FUNCTION_15_2();
    v100 = v109(v108);
    v111 = v110;
    if (v107[467] != -1)
    {
      OUTLINED_FUNCTION_6_61();
      swift_once();
    }

    if (v100 == qword_1EE2AADE0 && v111 == *algn_1EE2AADE8)
    {

LABEL_70:
      __swift_destroy_boxed_opaque_existential_1(&v170);
      goto LABEL_71;
    }

    OUTLINED_FUNCTION_16_0();
    v100 = sub_1E42079A4();

    if (v100)
    {
      goto LABEL_70;
    }

    sub_1E3251BE8(&v170, v165);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v168 = v106;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1E397A464(0, *(v106 + 16) + 1, 1);
      v106 = v168;
    }

    v114 = v107;
    v116 = *(v106 + 16);
    v115 = *(v106 + 24);
    if (v116 >= v115 >> 1)
    {
      v121 = OUTLINED_FUNCTION_35(v115);
      sub_1E397A464(v121, v116 + 1, 1);
    }

    v100 = v166;
    v117 = v167;
    __swift_mutable_project_boxed_opaque_existential_1(v165, v166);
    OUTLINED_FUNCTION_139_2();
    MEMORY[0x1EEE9AC00](v118);
    OUTLINED_FUNCTION_5_9();
    (*(v119 + 16))(0);
    OUTLINED_FUNCTION_37_20();
    sub_1E397C2CC(v116, 0, &v168, v100, v117, v120);
    __swift_destroy_boxed_opaque_existential_1(v165);
    v106 = v168;
    v107 = v114;
    v104 = v163;
LABEL_71:
    v105 += 40;
    ++v103;
  }

  v122 = *(v106 + 16);
  if (v122)
  {
    v123 = MEMORY[0x1E69E7CC0];
    v124 = v106 + 32;
    while (1)
    {
      sub_1E38C6028(v124, &v170);
      v125 = v172;
      __swift_project_boxed_opaque_existential_1(&v170, v171);
      v126 = OUTLINED_FUNCTION_50();
      v127(v126, v125);
      OUTLINED_FUNCTION_106();
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0F0);
      OUTLINED_FUNCTION_16_0();
      sub_1E4207604();
      OUTLINED_FUNCTION_12_1();

      __swift_destroy_boxed_opaque_existential_1(&v170);
      v100 = *(AssociatedTypeWitness + 16);
      v129 = v123[2];
      v130 = v129 + v100;
      if (__OFADD__(v129, v100))
      {
        goto LABEL_101;
      }

      v131 = swift_isUniquelyReferenced_nonNull_native();
      if (!v131 || v130 > v123[3] >> 1)
      {
        if (v129 <= v130)
        {
          v132 = v129 + v100;
        }

        else
        {
          v132 = v129;
        }

        v123 = sub_1E397A120(v131, v132, 1, v123);
      }

      v133 = v164;
      if (*(AssociatedTypeWitness + 16))
      {
        OUTLINED_FUNCTION_138_3();
        if (v134 != v135)
        {
          goto LABEL_103;
        }

        swift_arrayInitWithCopy();

        if (v100)
        {
          v136 = v123[2];
          v135 = __OFADD__(v136, v100);
          v137 = v136 + v100;
          if (v135)
          {
            goto LABEL_104;
          }

          v123[2] = v137;
        }
      }

      else
      {

        if (v100)
        {
          goto LABEL_102;
        }
      }

      v124 += 40;
      if (!--v122)
      {

        goto LABEL_90;
      }
    }
  }

  v123 = MEMORY[0x1E69E7CC0];
  v133 = v164;
LABEL_90:
  v138 = v123[2];
  if (v138)
  {
    v165[0] = MEMORY[0x1E69E7CC0];
    sub_1E377FD30(0, v138, 0);
    v139 = v165[0];
    v140 = (v123 + 4);
    do
    {
      sub_1E38C6028(v140, &v170);
      v141 = v171;
      v100 = v172;
      __swift_project_boxed_opaque_existential_1(&v170, v171);
      OUTLINED_FUNCTION_15_2();
      v143 = v142(v141);
      v145 = v144;
      __swift_destroy_boxed_opaque_existential_1(&v170);
      v165[0] = v139;
      v147 = *(v139 + 16);
      v146 = *(v139 + 24);
      if (v147 >= v146 >> 1)
      {
        v149 = OUTLINED_FUNCTION_35(v146);
        v100 = v165;
        sub_1E377FD30(v149, v147 + 1, 1);
        v139 = v165[0];
      }

      *(v139 + 16) = v147 + 1;
      v148 = v139 + 16 * v147;
      *(v148 + 32) = v143;
      *(v148 + 40) = v145;
      v140 += 40;
      --v138;
    }

    while (v138);
    OUTLINED_FUNCTION_116_1();

    OUTLINED_FUNCTION_140_1();
  }

  else
  {
    OUTLINED_FUNCTION_116_1();

    OUTLINED_FUNCTION_140_1();

    v139 = MEMORY[0x1E69E7CC0];
  }

  v150 = sub_1E32772D8(v162);
  v151 = sub_1E32772D8(v139);
  sub_1E397015C(v150, v151);
  OUTLINED_FUNCTION_50();

  v152 = sub_1E39701B0(v100);
  v153 = OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_sideBarOnlyItemIdentifiers;
  OUTLINED_FUNCTION_3_0();
  *(v133 + v153) = v152;

  OUTLINED_FUNCTION_8();
  if (((*(v154 + 112))() & 1) == 0)
  {
    OUTLINED_FUNCTION_8();
    (*(v155 + 192))();
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E396E640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 1;
  }

  v4 = sub_1E327D33C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 1;
  }

  v6 = *(*(a3 + 56) + 24 * v4);

  return v6;
}

uint64_t sub_1E396E6C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1E327D33C(a1, a2);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E396E710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1E327D33C(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(a3 + 56);
    v10 = sub_1E41FE5D4();
    (*(*(v10 - 8) + 16))(a4, v9 + *(*(v10 - 8) + 72) * v8, v10);
    v11 = a4;
    v12 = 0;
    v13 = v10;
  }

  else
  {
    v13 = sub_1E41FE5D4();
    v11 = a4;
    v12 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v11, v12, 1, v13);
}

void sub_1E396E7D4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v108 = v2;
  v110 = v3;
  OUTLINED_FUNCTION_21();
  v5 = (*(v4 + 632))();
  v6 = 0;
  v7 = *(v5 + 16);
  v8 = v5 + 32;
  v9 = MEMORY[0x1E69E7CC0];
  v10 = &unk_1EE29C000;
  while (1)
  {
    if (v7 == v6)
    {

      v24 = *(v9 + 16);
      if (v24)
      {
        v25 = MEMORY[0x1E69E7CC0];
        v26 = v9 + 32;
        do
        {
          sub_1E38C6028(v26, &v119);
          v27 = v121;
          __swift_project_boxed_opaque_existential_1(&v119, v120);
          v28 = OUTLINED_FUNCTION_38();
          v29(v28, v27);
          OUTLINED_FUNCTION_106();
          AssociatedTypeWitness = swift_getAssociatedTypeWitness();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0F0);
          OUTLINED_FUNCTION_33_11();
          sub_1E4207604();
          OUTLINED_FUNCTION_176_0();
          __swift_destroy_boxed_opaque_existential_1(&v119);
          v31 = *(AssociatedTypeWitness + 16);
          v32 = v25[2];
          v33 = v32 + v31;
          if (__OFADD__(v32, v31))
          {
            goto LABEL_93;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (!isUniquelyReferenced_nonNull_native || v33 > v25[3] >> 1)
          {
            if (v32 <= v33)
            {
              v35 = v32 + v31;
            }

            else
            {
              v35 = v32;
            }

            v25 = sub_1E397A120(isUniquelyReferenced_nonNull_native, v35, 1, v25);
          }

          if (*(AssociatedTypeWitness + 16))
          {
            OUTLINED_FUNCTION_138_3();
            if (v36 != v37)
            {
              goto LABEL_95;
            }

            swift_arrayInitWithCopy();

            if (v31)
            {
              v38 = v25[2];
              v37 = __OFADD__(v38, v31);
              v39 = v38 + v31;
              if (v37)
              {
                goto LABEL_96;
              }

              v25[2] = v39;
            }
          }

          else
          {

            if (v31)
            {
              goto LABEL_94;
            }
          }

          v26 += 40;
          --v24;
        }

        while (v24);
      }

      else
      {

        v25 = MEMORY[0x1E69E7CC0];
      }

      v40 = v25[2];
      if (v40)
      {
        *&v116 = MEMORY[0x1E69E7CC0];
        sub_1E377FD30(0, v40, 0);
        v41 = v116;
        v42 = (v25 + 4);
        do
        {
          sub_1E38C6028(v42, &v119);
          v43 = v120;
          __swift_project_boxed_opaque_existential_1(&v119, v120);
          OUTLINED_FUNCTION_15_2();
          v45 = v44(v43);
          v47 = v46;
          __swift_destroy_boxed_opaque_existential_1(&v119);
          *&v116 = v41;
          v49 = *(v41 + 16);
          v48 = *(v41 + 24);
          if (v49 >= v48 >> 1)
          {
            v51 = OUTLINED_FUNCTION_35(v48);
            sub_1E377FD30(v51, v49 + 1, 1);
            v41 = v116;
          }

          *(v41 + 16) = v49 + 1;
          v50 = v41 + 16 * v49;
          *(v50 + 32) = v45;
          *(v50 + 40) = v47;
          v42 += 40;
          --v40;
        }

        while (v40);
      }

      else
      {

        v41 = MEMORY[0x1E69E7CC0];
      }

      v52 = sub_1E32772D8(v41);
      v122 = v52;
      if (v108)
      {
        OUTLINED_FUNCTION_12_5();
        (*(v53 + 1088))();
      }

      v54 = (v1 + OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_tipPlacementSideBarItemIdentifier);
      OUTLINED_FUNCTION_3_0();
      *v54 = 0;
      v54[1] = 0;

      v115 = MEMORY[0x1E69E7CC0];
      v55 = *(v110 + 16);
      if (v55)
      {
        v56 = v110 + 32;
        v57 = MEMORY[0x1E69E7CC0];
        while (1)
        {

          sub_1E39783A4();
          v59 = v58;

          if (v59)
          {
            break;
          }

LABEL_62:
          v56 += 8;
          if (!--v55)
          {

            v52 = v122;
            goto LABEL_65;
          }
        }

        (*((*MEMORY[0x1E69E7D40] & *v59) + 0x1F0))(0);
        v61 = *(v59 + OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier);
        v60 = *(v59 + OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier + 8);
        v62 = qword_1EE29CE98;

        if (v62 != -1)
        {
          OUTLINED_FUNCTION_6_61();
          swift_once();
        }

        if (v61 == qword_1EE2AADE0 && v60 == *algn_1EE2AADE8)
        {
        }

        else
        {
          OUTLINED_FUNCTION_67_0();
          sub_1E42079A4();
          OUTLINED_FUNCTION_28_3();
          if ((v61 & 1) == 0)
          {
            OUTLINED_FUNCTION_143();
            v64 = *((*MEMORY[0x1E69E7D40] & *v59) + 0x1D8);

            v64(v65, &off_1F5D654F0);
LABEL_59:
            v68 = v59;
            MEMORY[0x1E6910BF0]();
            v69 = *((v115 & 0xFFFFFFFFFFFFFF8) + 0x18);
            if (*((v115 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v69 >> 1)
            {
              OUTLINED_FUNCTION_35(v69);
              sub_1E42062F4();
            }

            sub_1E4206324();

            v57 = v115;
            goto LABEL_62;
          }
        }

        v66 = MEMORY[0x1E69E7D40];
        OUTLINED_FUNCTION_12_5();
        (*(v67 + 760))();
        (*((*v66 & *v59) + 0x1D8))();
        goto LABEL_59;
      }

      v57 = MEMORY[0x1E69E7CC0];
LABEL_65:
      v70 = v52 + 56;
      OUTLINED_FUNCTION_4_4();
      v73 = v72 & v71;
      v75 = (v74 + 63) >> 6;
      v111 = v52;

      v76 = 0;
      v109 = v57;
      if (v73)
      {
        goto LABEL_70;
      }

      while (1)
      {
        v77 = v76 + 1;
        if (__OFADD__(v76, 1))
        {
          goto LABEL_92;
        }

        if (v77 >= v75)
        {
          break;
        }

        v73 = *(v70 + 8 * v77);
        ++v76;
        if (v73)
        {
          v76 = v77;
          do
          {
LABEL_70:
            v78 = (*(v111 + 48) + ((v76 << 10) | (16 * __clz(__rbit64(v73)))));
            v79 = *v78;
            v80 = v78[1];
            OUTLINED_FUNCTION_12_5();
            v82 = *(v81 + 656);
            v83 = swift_bridgeObjectRetain_n();
            v82(v83);
            *&v119 = v79;
            *(&v119 + 1) = v80;
            sub_1E3280A90(0, &qword_1EE23B250);
            sub_1E3CA4D00();

            v84 = v116;
            if (v116)
            {
              objc_opt_self();
              OUTLINED_FUNCTION_20_2();
              v85 = swift_dynamicCastObjCClass();
              if (v85)
              {
                [v85 vui:v1 removeControllerObserver:?];
              }
            }

            v73 &= v73 - 1;
            *&v112 = 0;
            *&v116 = v79;
            *(&v116 + 1) = v80;
            OUTLINED_FUNCTION_12_5();
            v87 = *(v86 + 672);

            v88 = v87(&v119);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F1F0);
            sub_1E3CA4D10();
            v88(&v119, 0);

            v57 = v109;
          }

          while (v73);
        }
      }

      sub_1E396A850(v57);
      OUTLINED_FUNCTION_36_3();
      v90 = v1;
      (*((*MEMORY[0x1E69E7D40] & v89) + 0x280))();
      v91 = sub_1E396A850(v57);
      sub_1E3973704(v91);
      OUTLINED_FUNCTION_50();

      v92 = v1[2];
      if (!v92)
      {

        OUTLINED_FUNCTION_140_1();

LABEL_90:
        v103 = sub_1E3CE4D98();
        v104 = *((*MEMORY[0x1E69E7D40] & **v103) + 0xD8);
        v105 = *v103;
        v106 = OUTLINED_FUNCTION_50();
        v104(v106);

        OUTLINED_FUNCTION_25_2();
        return;
      }

      v93 = v107 + 32;
      v94 = MEMORY[0x1E69E7CC0];
      v90 = &unk_1E42AD1C0;
      while (1)
      {
        sub_1E38C6028(v93, &v119);
        sub_1E3251BE8(&v119, &v116);
        v95 = OUTLINED_FUNCTION_146();
        __swift_instantiateConcreteTypeFromMangledNameV2(v95);
        v96 = OUTLINED_FUNCTION_39_9();
        __swift_instantiateConcreteTypeFromMangledNameV2(v96);
        if (swift_dynamicCast())
        {
          if (*(&v113 + 1))
          {
            sub_1E3251BE8(&v112, &v116);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v99 = OUTLINED_FUNCTION_27();
              v94 = sub_1E397A120(v99, v100, v101, v94);
            }

            v98 = v94[2];
            v97 = v94[3];
            if (v98 >= v97 >> 1)
            {
              v102 = OUTLINED_FUNCTION_35(v97);
              v94 = sub_1E397A120(v102, v98 + 1, 1, v94);
            }

            v94[2] = v98 + 1;
            sub_1E3251BE8(&v116, &v94[5 * v98 + 4]);
            goto LABEL_87;
          }
        }

        else
        {
          v114 = 0;
          v112 = 0u;
          v113 = 0u;
        }

        sub_1E325F6F0(&v112, &qword_1ECF2EC80);
LABEL_87:
        v93 += 40;
        if (!--v92)
        {
          OUTLINED_FUNCTION_81_6();

          OUTLINED_FUNCTION_140_1();

          goto LABEL_90;
        }
      }
    }

    if (v6 >= *(v5 + 16))
    {
      break;
    }

    sub_1E38C6028(v8, &v119);
    v12 = v120;
    v11 = v121;
    __swift_project_boxed_opaque_existential_1(&v119, v120);
    OUTLINED_FUNCTION_15_2();
    v13(v12);
    OUTLINED_FUNCTION_152();
    if (v10[467] != -1)
    {
      OUTLINED_FUNCTION_6_61();
      swift_once();
    }

    if (v12 == qword_1EE2AADE0 && v11 == *algn_1EE2AADE8)
    {

LABEL_17:
      __swift_destroy_boxed_opaque_existential_1(&v119);
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_67_0();
    sub_1E42079A4();
    OUTLINED_FUNCTION_28_3();
    if (v12)
    {
      goto LABEL_17;
    }

    sub_1E3251BE8(&v119, &v116);
    v15 = swift_isUniquelyReferenced_nonNull_native();
    *&v112 = v9;
    if ((v15 & 1) == 0)
    {
      sub_1E397A464(0, *(v9 + 16) + 1, 1);
      v9 = v112;
    }

    v17 = *(v9 + 16);
    v16 = *(v9 + 24);
    if (v17 >= v16 >> 1)
    {
      v23 = OUTLINED_FUNCTION_35(v16);
      sub_1E397A464(v23, v17 + 1, 1);
    }

    v18 = v117;
    v19 = v118;
    __swift_mutable_project_boxed_opaque_existential_1(&v116, v117);
    OUTLINED_FUNCTION_139_2();
    MEMORY[0x1EEE9AC00](v20);
    OUTLINED_FUNCTION_4_12();
    (*(v21 + 16))(v9);
    OUTLINED_FUNCTION_37_20();
    sub_1E397C2CC(v17, v9, &v112, v18, v19, v22);
    __swift_destroy_boxed_opaque_existential_1(&v116);
    v9 = v112;
    v10 = &unk_1EE29C000;
LABEL_18:
    v8 += 40;
    ++v6;
  }

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
}

void sub_1E396F404()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v5 = v4;
  v6 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_9();
  if (v3)
  {
    OUTLINED_FUNCTION_21();
    v105 = (*(v10 + 1088))();
    v108 = v11;
  }

  else
  {
    v105 = 0;
    v108 = 0;
  }

  OUTLINED_FUNCTION_115_2();
  v13 = (*(v12 + 736))();
  v14 = sub_1E32AE9B0(v13);
  v112 = v0;
  if (v14)
  {
    v15 = v14;
    v118 = MEMORY[0x1E69E7CC0];
    sub_1E377FD30(0, v14 & ~(v14 >> 63), 0);
    if (v15 < 0)
    {
      goto LABEL_78;
    }

    v111 = v5;
    v113 = v8;
    v115 = v6;
    v16 = 0;
    v17 = v118;
    do
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x1E6911E60](v16, v13);
      }

      else
      {
        v18 = *(v13 + 8 * v16 + 32);
      }

      v19 = v18;
      v20 = *&v18[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier];
      v21 = *&v18[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier + 8];

      v118 = v17;
      v23 = *(v17 + 16);
      v22 = *(v17 + 24);
      if (v23 >= v22 >> 1)
      {
        v25 = OUTLINED_FUNCTION_35(v22);
        sub_1E377FD30(v25, v23 + 1, 1);
        v17 = v118;
      }

      ++v16;
      *(v17 + 16) = v23 + 1;
      v24 = v17 + 16 * v23;
      *(v24 + 32) = v20;
      *(v24 + 40) = v21;
    }

    while (v15 != v16);

    v8 = v113;
    v6 = v115;
    v5 = v111;
  }

  else
  {

    v17 = MEMORY[0x1E69E7CC0];
  }

  v26 = sub_1E32772D8(v17);
  v123 = v26;
  v122 = MEMORY[0x1E69E7CC0];
  v27 = OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_tipPlacementTabBarItemIndex;
  OUTLINED_FUNCTION_3_0();
  v104 = v27;
  *(v112 + v27) = -1;
  v28 = *(v5 + 16);
  if (v28)
  {
    v29 = (v5 + 32);
    v102 = (v112 + OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_tipPlacementId);
    OUTLINED_FUNCTION_3_0();
    v103 = 0;
    v30 = (v8 + 16);
    v109 = MEMORY[0x1E69E7CC0];
    v106 = MEMORY[0x1E69E7CC0];
    v110 = v1;
    while (1)
    {
      v31 = *v29;
      v116 = sub_1E4205F14();
      v117 = v32;

      sub_1E4207414();
      if (!*(v31 + 16))
      {
        goto LABEL_33;
      }

      v33 = sub_1E375D924(&v118);
      if ((v34 & 1) == 0)
      {
        goto LABEL_33;
      }

      OUTLINED_FUNCTION_129_4(v33);
      sub_1E375D84C(&v118);
      OUTLINED_FUNCTION_118_3();
      if (swift_dynamicCast())
      {
        v35 = sub_1E4205F14();
        OUTLINED_FUNCTION_108_5(v35, v36);
        sub_1E4207414();
        if (!*(v31 + 16) || (v37 = sub_1E375D924(&v118), (v38 & 1) == 0))
        {

LABEL_33:
          sub_1E375D84C(&v118);
          goto LABEL_34;
        }

        OUTLINED_FUNCTION_129_4(v37);
        sub_1E375D84C(&v118);
        OUTLINED_FUNCTION_118_3();
        if (swift_dynamicCast())
        {
          v39 = sub_1E4205F14();
          OUTLINED_FUNCTION_108_5(v39, v40);
          sub_1E4207414();
          if (*(v31 + 16) && (v41 = sub_1E375D924(&v118), (v42 & 1) != 0))
          {
            OUTLINED_FUNCTION_129_4(v41);
            sub_1E375D84C(&v118);
            OUTLINED_FUNCTION_118_3();
            if (swift_dynamicCast())
            {
              if (v108)
              {
                if (v105 == v116 && v108 == v117)
                {
                  v101 = 1;
                }

                else
                {
                  v101 = sub_1E42079A4();
                }
              }

              else
              {
                v101 = 0;
              }

              type metadata accessor for RemoteBarItem();

              sub_1E3D48E60();
              v59 = v58;
              v60 = sub_1E4205F14();
              OUTLINED_FUNCTION_108_5(v60, v61);
              sub_1E4207414();
              sub_1E375D7E8(&v118, v31, &v120);

              sub_1E375D84C(&v118);
              if (v121)
              {
                OUTLINED_FUNCTION_118_3();
                if (swift_dynamicCast())
                {
                  v62 = HIBYTE(v117) & 0xF;
                  if ((v117 & 0x2000000000000000) == 0)
                  {
                    v62 = v116 & 0xFFFFFFFFFFFFLL;
                  }

                  if (v62)
                  {
                    *v102 = v116;
                    v102[1] = v117;

                    OUTLINED_FUNCTION_143();
                    *(v63 + v104) = v103;
                  }

                  else
                  {
                  }
                }
              }

              else
              {
                sub_1E325F6F0(&v120, &unk_1ECF296E0);
              }

              OUTLINED_FUNCTION_104_2();
              OUTLINED_FUNCTION_115_2();
              v107 = v59;
              if ((*(v64 + 440))() == 1)
              {
                v118 = 0;
                v119 = 0xE000000000000000;
                sub_1E42074B4();

                v118 = 0x206465656ELL;
                v119 = 0xE500000000000000;
                v65 = *&v59[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier];
                v66 = *&v59[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier + 8];

                MEMORY[0x1E69109E0](v65, v66);
                v59 = v107;

                MEMORY[0x1E69109E0](0xD000000000000011, 0x80000001E4269420);
                v67 = (*((*MEMORY[0x1E69E7D40] & *v112) + 0x450))(v107, v101 & 1, 1, v118, v119);
              }

              v68 = *&v59[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier];
              v69 = *&v59[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier + 8];

              sub_1E397B708(v68, v69);

              v70 = v107;
              MEMORY[0x1E6910BF0]();
              v71 = *((v122 & 0xFFFFFFFFFFFFFF8) + 0x18);
              if (*((v122 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v71 >> 1)
              {
                OUTLINED_FUNCTION_35(v71);
                sub_1E42062F4();
              }

              sub_1E4206324();
              v106 = v122;
              v72 = v30;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v77 = OUTLINED_FUNCTION_27();
                v109 = sub_1E3740F88(v77, v78, v79, v80);
              }

              v74 = *(v109 + 2);
              v73 = *(v109 + 3);
              if (v74 >= v73 >> 1)
              {
                v81 = OUTLINED_FUNCTION_35(v73);
                v109 = sub_1E3740F88(v81, v74 + 1, 1, v109);
              }

              *(v109 + 2) = v74 + 1;
              v75 = &v109[16 * v74];
              *(v75 + 4) = v116;
              *(v75 + 5) = v117;
              if (__OFADD__(v103++, 1))
              {
                goto LABEL_79;
              }

              v30 = v72;
              goto LABEL_38;
            }
          }

          else
          {

            sub_1E375D84C(&v118);
          }
        }

        else
        {
        }
      }

LABEL_34:
      v44 = sub_1E324FBDC();
      (*v30)(v1, v44, v6);

      v45 = sub_1E41FFC94();
      v46 = sub_1E42067F4();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = OUTLINED_FUNCTION_6_21();
        v114 = v28;
        v48 = v6;
        v49 = v29;
        v50 = OUTLINED_FUNCTION_100();
        v118 = v50;
        *v47 = 136315138;
        v51 = sub_1E4205C74();
        v52 = v30;
        v54 = v53;

        v55 = sub_1E3270FC8(v51, v54, &v118);
        v30 = v52;

        *(v47 + 4) = v55;
        _os_log_impl(&dword_1E323F000, v45, v46, "RootSplitViewController::updateWithSideBarItems recieved side bar item with a zero length id, documentRef or title.\nIgnoring. Item: %s", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v50);
        v29 = v49;
        v6 = v48;
        v1 = v110;
        v28 = v114;
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();
      }

      else
      {
      }

      v56 = OUTLINED_FUNCTION_87_2();
      v57(v56);
LABEL_38:
      ++v29;
      if (!--v28)
      {

        v26 = v123;
        goto LABEL_64;
      }
    }
  }

  v106 = MEMORY[0x1E69E7CC0];
LABEL_64:
  OUTLINED_FUNCTION_4_4();
  v84 = v83 & v82;
  v86 = (v85 + 63) >> 6;

  v87 = 0;
  if (v84)
  {
    goto LABEL_69;
  }

  while (1)
  {
    v88 = v87 + 1;
    if (__OFADD__(v87, 1))
    {
      break;
    }

    if (v88 >= v86)
    {

      OUTLINED_FUNCTION_104_2();
      OUTLINED_FUNCTION_115_2();
      (*(v100 + 744))(v106);
      OUTLINED_FUNCTION_25_2();
      return;
    }

    v84 = *(v26 + 56 + 8 * v88);
    ++v87;
    if (v84)
    {
      v87 = v88;
      do
      {
LABEL_69:
        v89 = (*(v26 + 48) + ((v87 << 10) | (16 * __clz(__rbit64(v84)))));
        v90 = *v89;
        v91 = v89[1];
        OUTLINED_FUNCTION_104_2();
        OUTLINED_FUNCTION_115_2();
        v93 = *(v92 + 656);
        v94 = swift_bridgeObjectRetain_n();
        v93(v94);
        v118 = v90;
        v119 = v91;
        sub_1E3280A90(0, &qword_1EE23B250);
        sub_1E3CA4D00();

        v95 = v120;
        if (v120)
        {
          objc_opt_self();
          v96 = swift_dynamicCastObjCClass();
          if (v96)
          {
            [v96 vui:v112 removeControllerObserver:?];
          }
        }

        v84 &= v84 - 1;
        *&v120 = v90;
        *(&v120 + 1) = v91;
        OUTLINED_FUNCTION_115_2();
        v98 = *(v97 + 672);

        v99 = v98(&v118);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F1F0);
        OUTLINED_FUNCTION_118_3();
        sub_1E3CA4D10();
        v99(&v118, 0);
      }

      while (v84);
    }
  }

  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
}

uint64_t sub_1E397015C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) <= *(a2 + 16) >> 3)
  {
    sub_1E397B104(a1);
    return a2;
  }

  else
  {

    return sub_1E397B230(a1, a2);
  }
}

void *sub_1E39701B0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1E397A388(*(a1 + 16), 0);
  v4 = sub_1E397BFF8(&v6, v3 + 4, v2, a1);
  sub_1E34AF4DC();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

void sub_1E3970240()
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
  OUTLINED_FUNCTION_26_3();
  v11 = MEMORY[0x1E69E7D40];
  v13 = (*((*MEMORY[0x1E69E7D40] & v12) + 0x218))();
  if (v14)
  {
    v15 = v14;
    if (!v1)
    {
      goto LABEL_9;
    }

    v16 = v13;
    if (!sub_1E3862230(v13, v14, v1))
    {
      goto LABEL_9;
    }

    sub_1E3A8ADF4(0);
    if (v16 == v18 && v15 == v17)
    {

      goto LABEL_9;
    }

    OUTLINED_FUNCTION_17_11();
    OUTLINED_FUNCTION_97_0();
    OUTLINED_FUNCTION_28_3();
    if (v1)
    {
LABEL_9:

      goto LABEL_10;
    }

    v113 = v10;
    v114 = v6;
    v115 = v4;
    v119 = v3;
    OUTLINED_FUNCTION_10_53();
    v62 = (*(v61 + 632))();
    v63 = 0;
    v64 = *(v62 + 16);
    for (i = v62 + 32; ; i += 40)
    {
      if (v64 == v63)
      {

        v11 = MEMORY[0x1E69E7D40];
        v3 = v119;
        goto LABEL_10;
      }

      if (v63 >= *(v62 + 16))
      {
        goto LABEL_94;
      }

      sub_1E38C6028(i, &v120);
      v66 = v121;
      __swift_project_boxed_opaque_existential_1(&v120, v121);
      OUTLINED_FUNCTION_15_2();
      if (v67(v66) == 0x746C7561666564 && v68 == 0xE700000000000000)
      {
        break;
      }

      v70 = sub_1E42079A4();

      if (v70)
      {
        goto LABEL_74;
      }

      __swift_destroy_boxed_opaque_existential_1(&v120);
      ++v63;
    }

LABEL_74:

    sub_1E3251BE8(&v120, &v122);
    sub_1E3251BE8(&v122, v125);
    v85 = v127;
    __swift_project_boxed_opaque_existential_1(v125, v126);
    v86 = OUTLINED_FUNCTION_38();
    v88 = v87(v86, v85);
    v11 = MEMORY[0x1E69E7D40];
    v3 = v119;
    if (v89)
    {
      v116 = v88;
      v117 = v89;
      OUTLINED_FUNCTION_10_53();
      v91 = (*(v90 + 1056))();
      v92 = 0;
      v93 = *(v91 + 16);
      v94 = v91;
      for (j = v91 + 32; ; j += 40)
      {
        if (v93 == v92)
        {

          __swift_destroy_boxed_opaque_existential_1(v125);
          v11 = MEMORY[0x1E69E7D40];
          goto LABEL_10;
        }

        if (v92 >= *(v94 + 16))
        {
          goto LABEL_95;
        }

        sub_1E38C6028(j, &v122);
        v96 = v123;
        v97 = v124;
        __swift_project_boxed_opaque_existential_1(&v122, v123);
        OUTLINED_FUNCTION_33();
        if (v98(v96, v97) == v116 && v117 == v99)
        {
          break;
        }

        v101 = sub_1E42079A4();

        __swift_destroy_boxed_opaque_existential_1(&v122);
        if (v101)
        {
          goto LABEL_88;
        }

        ++v92;
        v3 = v119;
      }

      __swift_destroy_boxed_opaque_existential_1(&v122);
LABEL_88:

      sub_1E324FBDC();
      OUTLINED_FUNCTION_69_8();
      v102(v113);

      v103 = sub_1E41FFC94();
      v104 = sub_1E4206814();

      if (os_log_type_enabled(v103, v104))
      {
        v105 = OUTLINED_FUNCTION_49_0();
        *&v122 = swift_slowAlloc();
        *v105 = 136315394;
        v106 = OUTLINED_FUNCTION_17_11();
        v109 = sub_1E3270FC8(v106, v107, v108);

        *(v105 + 4) = v109;
        *(v105 + 12) = 2080;
        v110 = sub_1E3270FC8(v116, v117, &v122);

        *(v105 + 14) = v110;
        _os_log_impl(&dword_1E323F000, v103, v104, "RootSplitViewController:: %s was removed, retargeting selection to %s", v105, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();

        (*(v114 + 8))(v113, v115);
      }

      else
      {

        v111 = OUTLINED_FUNCTION_120_2();
        v112(v111, v115);
      }

      goto LABEL_91;
    }

    __swift_destroy_boxed_opaque_existential_1(v125);
  }

LABEL_10:
  if (v3 != 2)
  {
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_10_53();
  *&v120 = (*(v20 + 632))();
  *&v122 = 0;
  BYTE8(v122) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F1E0);
  OUTLINED_FUNCTION_0_32();
  sub_1E328FCF4(v21, &unk_1ECF2F1E0);
  sub_1E38D2054(&v122, v125);

  if (v126)
  {
    __swift_project_boxed_opaque_existential_1(v125, v126);
    v22 = OUTLINED_FUNCTION_57();
    v24 = sub_1E3F0CD40(v22, v23);
    v26 = v25;
    __swift_destroy_boxed_opaque_existential_1(v125);
    if (v26)
    {
      goto LABEL_17;
    }

    if (!__OFADD__(v24, 1))
    {
      goto LABEL_25;
    }

    __break(1u);
  }

  sub_1E325F6F0(v125, &qword_1ECF2EC80);
LABEL_17:
  OUTLINED_FUNCTION_10_53();
  v28 = (*(v27 + 1056))();
  v29 = sub_1E396ACA0(v28);

  if (v29)
  {
    v30 = 0;
    v31 = *(v29 + 16);
    for (k = v29 + 32; ; k += 40)
    {
      if (v31 == v30)
      {
LABEL_24:

        goto LABEL_25;
      }

      if (v30 >= *(v29 + 16))
      {
        break;
      }

      sub_1E38C6028(k, v125);
      v33 = v127;
      __swift_project_boxed_opaque_existential_1(v125, v126);
      v34 = OUTLINED_FUNCTION_31_4();
      v36 = v35(v34, v33);
      __swift_destroy_boxed_opaque_existential_1(v125);
      if (v36)
      {
        goto LABEL_24;
      }

      ++v30;
    }

    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

LABEL_25:
  v37 = [objc_opt_self() shouldIgnoreLastSelectedTabIndex];
  OUTLINED_FUNCTION_36_3();
  v39 = *((*v11 & v38) + 0x1D0);
  if ((v39() & 1) == 0 && v37)
  {
    v40 = [objc_opt_self() sharedInstance];
    v41 = [v40 dropOnTabConfig];

    v42 = [v41 dropOnTabIdentifier];
    sub_1E4205F14();

    OUTLINED_FUNCTION_36_3();
    v43 = OUTLINED_FUNCTION_125();
    v44(v43);
  }

  if (v37 && (v39() & 1) == 0)
  {
    goto LABEL_71;
  }

  OUTLINED_FUNCTION_10_53();
  (*(v45 + 1088))();
  if (!v46)
  {
    goto LABEL_71;
  }

  OUTLINED_FUNCTION_10_53();
  v48 = (*(v47 + 1096))();
  if (!v49)
  {
    goto LABEL_42;
  }

  v50 = v49;
  v118 = v48;
  OUTLINED_FUNCTION_10_53();
  v52 = *(v51 + 1072);
  v53 = OUTLINED_FUNCTION_17_11();
  v54 = v52(v53);
  v56 = v55;

  if (v3 != 2)
  {
    if (v56)
    {
      (v52)(v118, v50);
    }

LABEL_42:

    goto LABEL_71;
  }

  if ((v56 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_5();
    (*(v57 + 1064))(&v120, v54);
    if (v121)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F310);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0F0);
      if (OUTLINED_FUNCTION_90_0())
      {
        if (v123)
        {
          sub_1E3251BE8(&v122, v125);
          v58 = v127;
          OUTLINED_FUNCTION_177_1(v125);
          v59 = OUTLINED_FUNCTION_60_1();
          if (v60(v59, v58))
          {

            __swift_destroy_boxed_opaque_existential_1(v125);
LABEL_71:
            OUTLINED_FUNCTION_25_2();
            return;
          }

          __swift_destroy_boxed_opaque_existential_1(v125);
          goto LABEL_57;
        }
      }

      else
      {
        v124 = 0;
        OUTLINED_FUNCTION_152_3();
      }
    }

    else
    {
      sub_1E325F6F0(&v120, &unk_1ECF2F1D0);
      OUTLINED_FUNCTION_152_3();
      v124 = 0;
    }

    sub_1E325F6F0(&v122, &qword_1ECF2EC80);
  }

LABEL_57:
  v71 = (v52)(v118, v50);
  v73 = v72;

  if (v73)
  {
    goto LABEL_71;
  }

  OUTLINED_FUNCTION_12_5();
  (*(v74 + 1064))(&v120, v71);
  if (!v121)
  {
LABEL_68:
    sub_1E325F6F0(&v120, &unk_1ECF2F1D0);
    OUTLINED_FUNCTION_152_3();
    v124 = 0;
    goto LABEL_70;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F310);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v124 = 0;
    OUTLINED_FUNCTION_152_3();
    goto LABEL_70;
  }

  if (!v123)
  {
LABEL_70:
    sub_1E325F6F0(&v122, &qword_1ECF2EC80);
    goto LABEL_71;
  }

  sub_1E3251BE8(&v122, v125);
  OUTLINED_FUNCTION_114_4();
  v76 = OUTLINED_FUNCTION_61_8();
  if (v77(v76))
  {
    goto LABEL_91;
  }

  OUTLINED_FUNCTION_114_4();
  v78 = OUTLINED_FUNCTION_61_8();
  v79(v78);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_20_2();
  sub_1E4207604();
  OUTLINED_FUNCTION_12_1();

  v80 = *(v75 + 16);

  if (!v80)
  {
    goto LABEL_91;
  }

  __swift_project_boxed_opaque_existential_1(v125, v126);
  v81 = OUTLINED_FUNCTION_32_0();
  v83 = sub_1E3F0CD40(v81, v82);
  if (v84)
  {
    goto LABEL_91;
  }

  if (!__OFADD__(v71, v83))
  {
    if (!__OFADD__(v71 + v83, 1))
    {
LABEL_91:
      __swift_destroy_boxed_opaque_existential_1(v125);
      goto LABEL_71;
    }

    __break(1u);
    goto LABEL_68;
  }

LABEL_96:
  __break(1u);
}

uint64_t sub_1E3970F08(char a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  result = (*(v5 + 488))();
  if (v7)
  {
    return result;
  }

  v8 = result;
  OUTLINED_FUNCTION_16_1();
  (*(v9 + 1064))(&v90);
  if (!v91)
  {
    return sub_1E325F6F0(&v90, &unk_1ECF2F1D0);
  }

  sub_1E3251BE8(&v90, v93);
  OUTLINED_FUNCTION_114_4();
  OUTLINED_FUNCTION_33();
  v10 = OUTLINED_FUNCTION_24_4();
  v12 = v11(v10);
  v14 = v13;
  OUTLINED_FUNCTION_36_3();
  v16 = *((*v4 & v15) + 0x218);
  v17 = v16();
  v79 = a1;
  v80 = v8;
  if (!v18)
  {

    goto LABEL_14;
  }

  if (v17 == v12 && v18 == v14)
  {
  }

  else
  {
    OUTLINED_FUNCTION_155_3();
    v20 = sub_1E42079A4();

    if ((v20 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  OUTLINED_FUNCTION_16_1();
  if (((*(v21 + 464))() & 1) == 0)
  {
LABEL_14:
    sub_1E3971814();
  }

  v22 = OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_hasHandledFirstSelectionFromLaunch;
  v23 = OUTLINED_FUNCTION_3_0();
  *(v2 + v22) = 1;
  (v16)(v23);
  sub_1E3971B30();

  OUTLINED_FUNCTION_36_3();
  v25 = ((*v4 & v24) + 544);
  v26 = *((*v4 & v24) + 0x220);

  v26(v12, v14);
  OUTLINED_FUNCTION_36_3();
  v28 = (*((*v4 & v27) + 0x2B0))();
  OUTLINED_FUNCTION_36_3();
  result = (*((*v4 & v29) + 0x1B8))();
  if (result == 2)
  {
    v78 = v28;
    v30 = v80 - 1;
    if (__OFSUB__(v80, 1))
    {
LABEL_55:
      __break(1u);
      return result;
    }

    sub_1E38C6028(v93, &v90);
    OUTLINED_FUNCTION_16_1();
    v32 = (*(v31 + 1056))();
    sub_1E396ACA0(v32);
    OUTLINED_FUNCTION_176_0();
    if (v28)
    {
      v33 = v28;
    }

    else
    {
      v33 = MEMORY[0x1E69E7CC0];
    }

    if ((v30 & 0x8000000000000000) == 0)
    {
      OUTLINED_FUNCTION_0_32();
      sub_1E328FCF4(v34, &unk_1ECF2F1E0);
      v77 = v33;
      while (1)
      {
        v86 = v33;
        v81 = v30;
        v82 = 0;
        v35 = OUTLINED_FUNCTION_87_2();
        __swift_instantiateConcreteTypeFromMangledNameV2(v35);
        sub_1E38D2054(&v81, &v83);
        if (v84)
        {
          break;
        }

        sub_1E325F6F0(&v83, &qword_1ECF2EC80);
LABEL_34:
        if (v30-- <= 0)
        {
          goto LABEL_36;
        }
      }

      sub_1E3251BE8(&v83, v87);
      v36 = v89;
      __swift_project_boxed_opaque_existential_1(v87, v88);
      v37 = OUTLINED_FUNCTION_60_1();
      v38(v37, v36);
      OUTLINED_FUNCTION_106();
      swift_getAssociatedTypeWitness();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0F0);
      OUTLINED_FUNCTION_33_11();
      v39 = sub_1E4207604();

      v40 = v39 + 32;
      v41 = -*(v39 + 16);
      v42 = -1;
      while (1)
      {
        if (v41 + v42 == -1)
        {

          __swift_destroy_boxed_opaque_existential_1(v87);
          v33 = v77;
          goto LABEL_34;
        }

        if (++v42 >= *(v39 + 16))
        {
          break;
        }

        sub_1E38C6028(v40, &v83);
        v43 = v84;
        __swift_project_boxed_opaque_existential_1(&v83, v84);
        OUTLINED_FUNCTION_15_2();
        if (v44(v43) == v12 && v45 == v14)
        {

          __swift_destroy_boxed_opaque_existential_1(&v83);
LABEL_38:

          v48 = v88;
          v49 = v89;
          __swift_project_boxed_opaque_existential_1(v87, v88);
          v84 = v48;
          v85 = *(v49 + 8);
          __swift_allocate_boxed_opaque_existential_1(&v83);
          OUTLINED_FUNCTION_37_1();
          (*(v50 + 16))();
          __swift_destroy_boxed_opaque_existential_1(&v90);
          sub_1E3251BE8(&v83, &v90);
          __swift_destroy_boxed_opaque_existential_1(v87);
          goto LABEL_39;
        }

        v40 += 40;
        OUTLINED_FUNCTION_155_3();
        sub_1E42079A4();
        OUTLINED_FUNCTION_28_3();
        result = __swift_destroy_boxed_opaque_existential_1(&v83);
        if (v43)
        {
          goto LABEL_38;
        }
      }

      __break(1u);
      goto LABEL_55;
    }

LABEL_36:

LABEL_39:
    v51 = v92;
    __swift_project_boxed_opaque_existential_1(&v90, v91);
    v52 = OUTLINED_FUNCTION_24_28();
    v53(v52, v51);
    v54 = v92;
    __swift_project_boxed_opaque_existential_1(&v90, v91);
    v55 = OUTLINED_FUNCTION_24_28();
    v25 = v56(v55, v54);
    v28 = v57;
    v58 = OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_lastSelectedIdentifierInSectionMap;
    OUTLINED_FUNCTION_11_3();
    swift_isUniquelyReferenced_nonNull_native();
    *&v83 = *(v2 + v58);
    sub_1E38C5C90(v12, v14, v25, v28);
    *(v2 + v58) = v83;

    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(&v90);
    LOBYTE(v28) = v78;
  }

  v87[0] = v12;
  v87[1] = v14;
  OUTLINED_FUNCTION_16_1();
  (*(v59 + 672))(&v90);
  OUTLINED_FUNCTION_152();
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F1F0);
  sub_1E3CA4F4C(v87, v60);
  v25(&v90, 0);

  if (v28)
  {
  }

  else
  {
    sub_1E32737D4();

    sub_1E41D9070(v93);

    v61 = [objc_opt_self() standardUserDefaults];
    v62 = sub_1E4205ED4();

    OUTLINED_FUNCTION_130_4();
    v63 = sub_1E4205ED4();
    [v61 setValue:v62 forKey:v63];
  }

  OUTLINED_FUNCTION_16_1();
  v64 += 64;
  v65 = *v64;
  v66 = (*v64)();
  if ((v67 & 1) == 0)
  {
    v68 = (v65)(v66);
    if (v69 & 1) == 0 && v68 == v80 && (v79)
    {
      sub_1E3972380();
    }
  }

  sub_1E38C6028(v93, &v90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F310);
  OUTLINED_FUNCTION_106();
  type metadata accessor for LibraryBarItem();
  if (OUTLINED_FUNCTION_90_0())
  {
    v70 = v87[0];
    OUTLINED_FUNCTION_16_1();
    v72 = (*(v71 + 760))();
    if (v72)
    {
      v73 = v72;
      OUTLINED_FUNCTION_31_29();
      v75 = *(v74 + 720);

      v75(v76);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v93);
}

uint64_t sub_1E3971814()
{
  v2 = v0;
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_9();
  OUTLINED_FUNCTION_26_3();
  (*((*MEMORY[0x1E69E7D40] & v7) + 0x1E8))();
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_5();
    (*(v9 + 1064))(&v38);
    if (v39)
    {
      sub_1E3251BE8(&v38, v40);
      v10 = v42;
      __swift_project_boxed_opaque_existential_1(v40, v41);
      v11 = OUTLINED_FUNCTION_24_28();
      v13 = v12(v11, v10);
      v15 = v14;
      __swift_project_boxed_opaque_existential_1(v40, v41);
      v16 = OUTLINED_FUNCTION_61_8();
      v18 = v17(v16);
      if (v19)
      {
        v20 = v18;
        v21 = v19;

        v13 = v20;
        v15 = v21;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B710);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E4297BE0;
      *&v38 = sub_1E4205F14();
      *(&v38 + 1) = v23;
      v24 = MEMORY[0x1E69E6158];
      sub_1E4207414();
      *(inited + 96) = v24;
      *(inited + 72) = v13;
      *(inited + 80) = v15;
      OUTLINED_FUNCTION_146_1();
      v25 = sub_1E4205CB4();
      v26 = [objc_opt_self() defaultCenter];
      sub_1E37E7460(@"TVAppRootViewControllerCurrentNavigationControllerDidChangeNotification", v2, v25, v26);

      return __swift_destroy_boxed_opaque_existential_1(v40);
    }

    sub_1E325F6F0(&v38, &unk_1ECF2F1D0);
  }

  v28 = sub_1E324FBDC();
  (*(v5 + 16))(v1, v28, v3);
  v29 = sub_1E41FFC94();
  v30 = sub_1E42067F4();
  if (OUTLINED_FUNCTION_6_33(v30))
  {
    v31 = OUTLINED_FUNCTION_125_0();
    *v31 = 0;
    OUTLINED_FUNCTION_66_0();
    _os_log_impl(v32, v33, v34, v35, v31, 2u);
    OUTLINED_FUNCTION_65_0();
  }

  v36 = OUTLINED_FUNCTION_74();
  return v37(v36);
}

void sub_1E3971B30()
{
  OUTLINED_FUNCTION_93();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_123_2();
  v8 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_12();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  OUTLINED_FUNCTION_17_2(v10);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v81 = &v74 - v12;
  v83 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4_6();
  v18 = v16 - v17;
  OUTLINED_FUNCTION_49();
  *&v20 = MEMORY[0x1EEE9AC00](v19).n128_u64[0];
  v22 = &v74 - v21;
  [*(v0 + OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_rootControllerConfig) stackActiveDuration];
  v82 = v0;
  if (v7)
  {
    if (v1 != v5 || v3 != v7)
    {
      v25 = v23;
      if ((OUTLINED_FUNCTION_43_17() & 1) == 0 && v25 != 0.0)
      {
        v78 = v3;
        v80 = v8;
        OUTLINED_FUNCTION_21();
        v27 = *(v26 + 656);
        v79 = v1;

        v27(v28);
        v85[0] = v79;
        v85[1] = v7;
        sub_1E3280A90(0, &qword_1EE23B250);
        OUTLINED_FUNCTION_155_3();
        sub_1E3CA4D00();

        v29 = v84;
        if (v84)
        {
          objc_opt_self();
          v30 = swift_dynamicCastObjCClass();
          v3 = v78;
          if (v30)
          {
            v31 = [v30 viewControllers];
            v32 = sub_1E42062B4();

            v33 = sub_1E32AE9B0(v32);

            if (v33 >= 2)
            {
              v77 = v29;
              v34 = sub_1E324FBDC();
              v35 = v83;
              (*(v14 + 16))(v22, v34, v83);

              v36 = sub_1E41FFC94();
              v37 = sub_1E4206814();

              if (os_log_type_enabled(v36, v37))
              {
                OUTLINED_FUNCTION_49_0();
                v76 = v14;
                v38 = OUTLINED_FUNCTION_11_16();
                v75 = v36;
                v39 = v38;
                v85[0] = v38;
                *v14 = 136315394;
                *(v14 + 4) = sub_1E3270FC8(v79, v7, v85);
                *(v14 + 12) = 2048;
                *(v14 + 14) = v25;
                v40 = v37;
                v41 = v75;
                _os_log_impl(&dword_1E323F000, v75, v40, "RootSplitViewController::STACK:: %s expires in %fs", v14, 0x16u);
                __swift_destroy_boxed_opaque_existential_1(v39);
                OUTLINED_FUNCTION_6_0();
                OUTLINED_FUNCTION_21_0();

                v42 = v22;
                v43 = v79;
                (*(v76 + 8))(v42, v35);
              }

              else
              {

                v64 = OUTLINED_FUNCTION_160_1();
                v65(v64);
                v43 = v79;
              }

              v44 = v80;

              sub_1E41FE5C4();
              v66 = v81;
              sub_1E41FE4E4();
              OUTLINED_FUNCTION_114();
              __swift_storeEnumTagSinglePayload(v67, v68, v69, v44);
              v70 = v82;
              OUTLINED_FUNCTION_11_3();
              sub_1E39721B4(v66, v43, v7);
              swift_endAccess();
              OUTLINED_FUNCTION_170_1();
              v72 = v71;
              v73 = OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_stackExpirationWorkItems;
              OUTLINED_FUNCTION_11_3();
              swift_isUniquelyReferenced_nonNull_native();
              v84 = *(v70 + v73);
              sub_1E397AD50(v72, v43, v7);
              v0 = v70;
              *(v70 + v73) = v84;
              v8 = v80;
              swift_endAccess();

              v3 = v78;
              goto LABEL_16;
            }
          }

          v8 = v80;
        }

        else
        {
          v8 = v80;
          v3 = v78;
        }

        v0 = v82;
      }
    }
  }

LABEL_16:
  v45 = OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_stackExpirationWorkItems;
  OUTLINED_FUNCTION_5_0();
  v46 = *(v0 + v45);

  v47 = OUTLINED_FUNCTION_74();
  v49 = sub_1E396E6C0(v47, v48, v46);

  if (v49)
  {
    v50 = sub_1E324FBDC();
    v51 = v83;
    (*(v14 + 16))(v18, v50, v83);

    v52 = sub_1E41FFC94();
    v53 = sub_1E4206814();

    if (os_log_type_enabled(v52, v53))
    {
      OUTLINED_FUNCTION_6_21();
      v80 = v8;
      v54 = OUTLINED_FUNCTION_11_16();
      v84 = v54;
      *v8 = 136315138;
      v55 = OUTLINED_FUNCTION_74();
      *(v8 + 4) = sub_1E3270FC8(v55, v56, v57);
      OUTLINED_FUNCTION_126_0(&dword_1E323F000, v52, v53, "RootSplitViewController::STACK:: %s no longer expiring");
      __swift_destroy_boxed_opaque_existential_1(v54);
      OUTLINED_FUNCTION_6_0();
      v8 = v80;
      OUTLINED_FUNCTION_6_0();

      (*(v14 + 8))(v18, v83);
    }

    else
    {

      (*(v14 + 8))(v18, v51);
    }

    v58 = v81;
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v59, v60, v61, v8);
    OUTLINED_FUNCTION_11_3();

    sub_1E39721B4(v58, v5, v3);
    swift_endAccess();
    OUTLINED_FUNCTION_11_3();
    v62 = OUTLINED_FUNCTION_74();
    sub_1E397A700(v62, v63);
    swift_endAccess();

    sub_1E4204034();
  }

  OUTLINED_FUNCTION_54_0();
}

uint64_t sub_1E39721B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16 - v9;
  v11 = sub_1E41FE5D4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (__swift_getEnumTagSinglePayload(a1, 1, v11) == 1)
  {
    sub_1E325F6F0(a1, &unk_1ECF28E20);
    sub_1E397A7DC(a2, a3, v10);

    return sub_1E325F6F0(v10, &unk_1ECF28E20);
  }

  else
  {
    (*(v12 + 32))(v14, a1, v11);
    swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_1E397AE8C(v14, a2, a3);

    *v4 = v17;
  }

  return result;
}

void sub_1E3972380()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_9();
  OUTLINED_FUNCTION_26_3();
  v8 = (*((*MEMORY[0x1E69E7D40] & v7) + 0x160))();
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = v8;
  OUTLINED_FUNCTION_21();
  v11 = (*(v10 + 360))();
  if (!v11)
  {

LABEL_9:
    v16 = sub_1E324FBDC();
    (*(v5 + 16))(v0, v16, v3);
    v17 = sub_1E41FFC94();
    v18 = sub_1E42067F4();
    if (OUTLINED_FUNCTION_6_33(v18))
    {
      v19 = OUTLINED_FUNCTION_6_21();
      *v19 = 134217984;
      *(v19 + 4) = v2;
      OUTLINED_FUNCTION_66_0();
      OUTLINED_FUNCTION_126_0(v20, v21, v22, v23);
      OUTLINED_FUNCTION_21_0();
    }

    v24 = OUTLINED_FUNCTION_74();
    v25(v24);
    goto LABEL_18;
  }

  v40 = v11;
  v12 = [v9 viewControllers];
  sub_1E3280A90(0, &qword_1EE23B250);
  OUTLINED_FUNCTION_34();
  v13 = sub_1E42062B4();

  if (sub_1E32AE9B0(v13))
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x1E6911E60](0, v13);
    }

    else
    {
      if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v14 = *(v13 + 32);
    }

    v15 = v14;
  }

  else
  {

    v15 = 0;
  }

  v26 = [v9 viewControllers];
  v27 = sub_1E42062B4();

  v28 = sub_1E32AE9B0(v27);

  if (v15)
  {
    type metadata accessor for DocumentViewController();
    if (swift_dynamicCastClass())
    {
      OUTLINED_FUNCTION_64();
      v30 = *(v29 + 1184);
      v31 = v15;
      v30(v28 == 1, 1);
    }
  }

  v32 = [v9 viewControllers];
  v33 = sub_1E42062B4();

  sub_1E32AE9B0(v33);
  OUTLINED_FUNCTION_31_4();

  if (v32 >= 2)
  {
    OUTLINED_FUNCTION_4_0();
    v34 = swift_allocObject();
    *(v34 + 16) = v9;
    v41[4] = sub_1E397C5D8;
    v41[5] = v34;
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_48_2(COERCE_DOUBLE(1107296256));
    v41[2] = v35;
    v41[3] = &block_descriptor_46;
    v36 = _Block_copy(v41);
    v37 = v9;

    [v37 dismissViewControllerAnimated:0 completion:v36];
    _Block_release(v36);

LABEL_18:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E397277C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  v8 = OUTLINED_FUNCTION_17_2(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v77 - v10;
  v12 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v77 - v19;
  if (!v4)
  {
    goto LABEL_15;
  }

  v78 = v18;
  OUTLINED_FUNCTION_21();
  v22 = *(v21 + 1072);
  v77 = v6;
  v23 = v22(v6, v4);
  if (v24)
  {
LABEL_9:
    v30 = sub_1E324FBDC();
    v31 = v78;
    (*(v78 + 16))(v16, v30, v12);
    v32 = OUTLINED_FUNCTION_39_9();
    sub_1E379D7E4(v32, v33, v34);

    v35 = sub_1E41FFC94();
    v36 = sub_1E42067F4();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = OUTLINED_FUNCTION_49_0();
      *&v82 = swift_slowAlloc();
      *v37 = 136315394;
      v38 = OUTLINED_FUNCTION_81_6();
      *(v37 + 4) = sub_1E3270FC8(v38, v4, v39);
      *(v37 + 12) = 2080;
      v40 = OUTLINED_FUNCTION_114_1();
      sub_1E379D7E4(v40, v41, v42);
      v43 = sub_1E41FE414();
      if (__swift_getEnumTagSinglePayload(v0, 1, v43) == 1)
      {
        sub_1E325F6F0(v0, &unk_1ECF363C0);
        v85 = 0u;
        v86 = 0u;
      }

      else
      {
        *(&v86 + 1) = v43;
        __swift_allocate_boxed_opaque_existential_1(&v85);
        OUTLINED_FUNCTION_37_1();
        (*(v44 + 32))();
      }

      sub_1E3294FA4(&v85);
      OUTLINED_FUNCTION_9_9();
      sub_1E325F6F0(v11, &unk_1ECF363C0);
      v45 = OUTLINED_FUNCTION_34();
      v48 = sub_1E3270FC8(v45, v46, v47);

      *(v37 + 14) = v48;
      _os_log_impl(&dword_1E323F000, v35, v36, "RootSplitViewController:: no item found for selection identifier %s, url %s", v37, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_65_0();

      (*(v78 + 8))(v16, v12);
    }

    else
    {

      sub_1E325F6F0(v11, &unk_1ECF363C0);
      (*(v31 + 8))(v16, v12);
    }

    goto LABEL_15;
  }

  v25 = v23;
  OUTLINED_FUNCTION_21();
  (*(v26 + 1064))(&v82);
  if (!v83)
  {
    sub_1E325F6F0(&v82, &unk_1ECF2F1D0);
    goto LABEL_9;
  }

  sub_1E3251BE8(&v82, &v85);
  sub_1E38C6028(&v85, &v81);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F310);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0F0);
  if (!swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(&v85);
    v80 = 0;
    memset(v79, 0, sizeof(v79));
    sub_1E325F6F0(v79, &qword_1ECF2EC80);
    goto LABEL_15;
  }

  sub_1E3251BE8(v79, &v82);
  __swift_project_boxed_opaque_existential_1(&v82, v83);
  v28 = OUTLINED_FUNCTION_114_1();
  if (v29(v28))
  {
    __swift_destroy_boxed_opaque_existential_1(&v85);
LABEL_7:
    __swift_destroy_boxed_opaque_existential_1(&v82);
LABEL_15:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  __swift_project_boxed_opaque_existential_1(&v82, v83);
  v49 = OUTLINED_FUNCTION_114_1();
  v50(v49);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_20_2();
  sub_1E4207604();
  OUTLINED_FUNCTION_176_0();
  v51 = *(v27 + 16);

  v52 = v78;
  if (!v51)
  {
LABEL_21:
    __swift_destroy_boxed_opaque_existential_1(&v82);
    v66 = sub_1E324FBDC();
    (*(v52 + 16))(v20, v66, v12);

    v67 = sub_1E41FFC94();
    v68 = sub_1E4206814();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = OUTLINED_FUNCTION_6_21();
      v70 = OUTLINED_FUNCTION_100();
      *&v82 = v70;
      *v69 = 136315138;
      v71 = OUTLINED_FUNCTION_81_6();
      *(v69 + 4) = sub_1E3270FC8(v71, v4, v72);
      _os_log_impl(&dword_1E323F000, v67, v68, "RootSplitViewController::couldn't find selection index for %s", v69, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v70);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_55();
    }

    v73 = OUTLINED_FUNCTION_38_0();
    v74(v73);
    __swift_destroy_boxed_opaque_existential_1(&v85);
    goto LABEL_15;
  }

  v53 = v84;
  __swift_project_boxed_opaque_existential_1(&v82, v83);
  v54 = OUTLINED_FUNCTION_60_1();
  if (!v55(v54, v53) || (v57 = v56, ObjectType = swift_getObjectType(), v59 = (*(v57 + 24))(&v82, v2, ObjectType, v57), v61 = v60, swift_unknownObjectRelease(), (v61 & 1) != 0))
  {
    v59 = v84;
    __swift_project_boxed_opaque_existential_1(&v82, v83);
    v62 = OUTLINED_FUNCTION_33_11();
    v64 = sub_1E3F0CD40(v62, v63);
    if (v65)
    {
      goto LABEL_21;
    }

    v75 = v64;
    __swift_destroy_boxed_opaque_existential_1(&v85);
    v76 = v25 + v75;
    if (__OFADD__(v25, v75))
    {
      goto LABEL_32;
    }

    v25 = v76 + 1;
    if (!__OFADD__(v76, 1))
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  __swift_destroy_boxed_opaque_existential_1(&v85);
  if (!__OFADD__(v25, v59))
  {
    if (!__OFADD__(v25 + v59, 1))
    {
      goto LABEL_7;
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  __break(1u);
}

void sub_1E3972EBC()
{
  OUTLINED_FUNCTION_31_1();
  v60 = v2;
  v4 = v3;
  OUTLINED_FUNCTION_123_2();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v61 = v6;
  v62 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  v59 = v7 - v8;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_25_3();
  v58 = v10;
  v12 = *&v1[OBJC_IVAR____TtC8VideosUI14LibraryBarItem_identifier];
  v11 = *&v1[OBJC_IVAR____TtC8VideosUI14LibraryBarItem_identifier + 8];
  v13 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x290);

  v13(v14);
  v63[0] = v12;
  v63[1] = v11;
  sub_1E3280A90(0, &qword_1EE23B250);
  sub_1E3CA4D00();

  v15 = v64;
  if (v64)
  {
    goto LABEL_8;
  }

  if ((v4 & 1) == 0)
  {
    v16 = [*(v0 + OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_rootControllerConfig) normalControllerLimit];
    if (v16)
    {
      v17 = v16;
      v18 = [v16 integerValue];

      sub_1E396C5EC();
      if (v19 >= v18)
      {
        if ((v60 & 1) == 0)
        {
          goto LABEL_12;
        }

        OUTLINED_FUNCTION_19_43();
        v20 += 139;
        v21 = *v20;
        v57 = v20;

        OUTLINED_FUNCTION_114();
        v21();
      }
    }
  }

  v22 = OUTLINED_FUNCTION_33_11();
  v15 = sub_1E39733A4(v22, v23);
  if (v15)
  {
LABEL_8:
    objc_opt_self();
    v24 = swift_dynamicCastObjCClass();
    v25 = v15;
    if (v24)
    {
      [v24 vui:v0 addControllerObserver:?];
    }

    v63[5] = v11;
    v63[6] = v15;
    v63[4] = v12;
    OUTLINED_FUNCTION_19_43();
    v27 = *(v26 + 672);

    v28 = v25;
    v29 = v27(v63);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F1F0);
    sub_1E3CA4D10();
    v29(v63, 0);

    goto LABEL_11;
  }

LABEL_12:
  v30 = [*(v0 + OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_rootControllerConfig) normalControllerLimit];
  if (!v30 || (v31 = v30, v32 = [v30 integerValue], v31, sub_1E396C5EC(), v33 < v32) || (v60 & 1) != 0)
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_69_8();
    v45(v59);
    v46 = v1;
    v47 = sub_1E41FFC94();
    sub_1E42067F4();

    if (OUTLINED_FUNCTION_56_4())
    {
      OUTLINED_FUNCTION_6_21();
      v63[0] = OUTLINED_FUNCTION_11_16();
      *v46 = 136315138;
      v48 = OUTLINED_FUNCTION_74();
      *(v46 + 4) = sub_1E3270FC8(v48, v49, v50);
      OUTLINED_FUNCTION_66_0();
      OUTLINED_FUNCTION_126_0(v51, v52, v53, v54);
      OUTLINED_FUNCTION_24_18();
      OUTLINED_FUNCTION_21_0();
    }

    v55 = OUTLINED_FUNCTION_156_4();
    v56(v55, v62);
  }

  else
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_69_8();
    v34(v58);
    v35 = v1;
    v36 = sub_1E41FFC94();
    sub_1E4206814();

    if (OUTLINED_FUNCTION_56_4())
    {
      v37 = OUTLINED_FUNCTION_6_21();
      v63[0] = OUTLINED_FUNCTION_100();
      *v37 = 136315138;
      v38 = OUTLINED_FUNCTION_74();
      *(v37 + 4) = sub_1E3270FC8(v38, v39, v40);
      OUTLINED_FUNCTION_66_0();
      OUTLINED_FUNCTION_50_6(v41, v42, v43, v44);
      OUTLINED_FUNCTION_24_18();
      OUTLINED_FUNCTION_65_0();
    }

    (*(v61 + 8))(v58, v62);
  }

LABEL_11:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E39733A4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_64();
  result = (*(v3 + 760))();
  if (result)
  {
    v5 = result;
    OUTLINED_FUNCTION_64();
    v7 = (*(v6 + 712))(a2);

    return v7;
  }

  return result;
}

uint64_t sub_1E3973450()
{
  OUTLINED_FUNCTION_21();
  result = (*(v0 + 1056))();
  v2 = result;
  v3 = *(result + 16);
  if (v3)
  {
    v4 = 0;
    v5 = result + 32;
    while (v4 < *(v2 + 16))
    {
      sub_1E38C6028(v5, &v17);
      sub_1E38C6028(&v17, v18);
      v6 = OUTLINED_FUNCTION_24_4();
      __swift_instantiateConcreteTypeFromMangledNameV2(v6);
      OUTLINED_FUNCTION_106();
      type metadata accessor for RemoteBarItem();
      if (OUTLINED_FUNCTION_90_0())
      {

        OUTLINED_FUNCTION_177_1(&v17);
        OUTLINED_FUNCTION_33();
        v7 = OUTLINED_FUNCTION_39_0();
        v9 = v8(v7);
        v11 = v10;
        if (v9 == sub_1E4205F14() && v11 == v12)
        {
        }

        else
        {
          OUTLINED_FUNCTION_17_11();
          v14 = OUTLINED_FUNCTION_97_0();

          if ((v14 & 1) == 0)
          {

            sub_1E3251BE8(&v17, v18);
            v15 = 1;
            goto LABEL_14;
          }
        }
      }

      ++v4;
      result = __swift_destroy_boxed_opaque_existential_1(&v17);
      v5 += 40;
      if (v3 == v4)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    v15 = 0;
    v19 = 0;
    memset(v18, 0, sizeof(v18));
LABEL_14:
    sub_1E325F6F0(v18, &unk_1ECF2F1D0);
    return v15;
  }

  return result;
}

void *sub_1E3973630()
{
  v1 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  if ((*(v2 + 440))() == 2)
  {
    v3 = (*((*v1 & *v0) + 0x278))();
    sub_1E3973704(v3);
  }

  else
  {
    v4 = (*((*v1 & *v0) + 0x2E0))();
    sub_1E396A64C(v4);
  }

  OUTLINED_FUNCTION_50();

  return v0;
}

uint64_t sub_1E3973704(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7CC0];
  sub_1E3978FA4(a1, &v3);
  sub_1E396A460(v3);
  OUTLINED_FUNCTION_50();

  return v1;
}

uint64_t sub_1E3973754@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_21();
  v10 = (*(v4 + 1056))();
  v8 = a1;
  v9 = 0;
  v5 = OUTLINED_FUNCTION_32_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v5);
  OUTLINED_FUNCTION_0_32();
  sub_1E328FCF4(v6, &unk_1ECF2F1F8);
  sub_1E38D2054(&v8, a2);
}

void sub_1E397382C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_193();
  a25 = v26;
  a26 = v27;
  v29 = v28;
  v31 = v30;
  OUTLINED_FUNCTION_21();
  v33 = (*(v32 + 1056))();
  v34 = 0;
  v35 = *(v33 + 16);
  for (i = v33 + 32; ; i += 40)
  {
    if (v35 == v34)
    {
      goto LABEL_12;
    }

    if (v34 >= *(v33 + 16))
    {
      break;
    }

    sub_1E38C6028(i, &a10);
    __swift_project_boxed_opaque_existential_1(&a10, a13);
    OUTLINED_FUNCTION_33();
    v37 = OUTLINED_FUNCTION_146();
    if (v38(v37) == v31 && v39 == v29)
    {

      __swift_destroy_boxed_opaque_existential_1(&a10);
LABEL_12:

      OUTLINED_FUNCTION_140_0();
      return;
    }

    v41 = OUTLINED_FUNCTION_43_17();

    __swift_destroy_boxed_opaque_existential_1(&a10);
    if (v41)
    {
      goto LABEL_12;
    }

    ++v34;
  }

  __break(1u);
}

void sub_1E3973964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_193();
  a24 = v25;
  a25 = v26;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  OUTLINED_FUNCTION_21();
  v34 = (*(v33 + 1056))();
  v35 = 0;
  v36 = *(v34 + 16);
  for (i = v34 + 32; ; i += 40)
  {
    if (v36 == v35)
    {

      *(v32 + 32) = 0;
      *v32 = 0u;
      *(v32 + 16) = 0u;
      goto LABEL_13;
    }

    if (v35 >= *(v34 + 16))
    {
      break;
    }

    sub_1E38C6028(i, &a10);
    OUTLINED_FUNCTION_177_1(&a10);
    OUTLINED_FUNCTION_33();
    v38 = OUTLINED_FUNCTION_39_0();
    if (v39(v38) == v30 && v40 == v28)
    {

LABEL_12:

      sub_1E3251BE8(&a10, v32);
LABEL_13:
      OUTLINED_FUNCTION_140_0();
      return;
    }

    v42 = OUTLINED_FUNCTION_43_17();

    if (v42)
    {
      goto LABEL_12;
    }

    __swift_destroy_boxed_opaque_existential_1(&a10);
    ++v35;
  }

  __break(1u);
}

uint64_t sub_1E3973AA0()
{
  v0 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  (*(v1 + 536))();
  if (v2)
  {
    OUTLINED_FUNCTION_9_9();
  }

  else
  {
    sub_1E32737D4();

    sub_1E32774E4();
    OUTLINED_FUNCTION_9_9();

    OUTLINED_FUNCTION_36_3();
    v4 = *((*v0 & v3) + 0x220);

    v5 = OUTLINED_FUNCTION_34();
    v4(v5);
  }

  return OUTLINED_FUNCTION_34();
}

uint64_t sub_1E3973B84()
{
  v0 = [objc_opt_self() standardUserDefaults];
  OUTLINED_FUNCTION_130_4();
  v1 = sub_1E4205ED4();
  v2 = [v0 stringForKey_];

  if (v2)
  {
    sub_1E4205F14();
    OUTLINED_FUNCTION_145();
  }

  return OUTLINED_FUNCTION_57();
}

void sub_1E3973C2C()
{
  OUTLINED_FUNCTION_31_1();
  v68 = v3;
  v69 = v4;
  v6 = v5;
  v7 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v66 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_71_6();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_78();
  v67 = v6;
  v12 = *&v6[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier];
  v11 = *&v6[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier + 8];
  v13 = MEMORY[0x1E69E7D40];
  v14 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x290);

  v14(v15);
  v70[0] = v12;
  v70[1] = v11;
  sub_1E3280A90(0, &qword_1EE23B250);
  sub_1E3CA4D00();

  v16 = v71;
  if (v71)
  {
    goto LABEL_6;
  }

  v64 = v11;
  v65 = v12;
  v61 = v2;
  v62 = v1;
  v63 = v7;
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_rootControllerConfig);
  v17 = [v1 normalControllerLimit];
  if (v17 && (v18 = v17, v19 = [v17 integerValue], v18, sub_1E396C5EC(), v20 >= v19))
  {
    v24 = v67;
    v25 = v69;
    if (v69)
    {
      OUTLINED_FUNCTION_19_43();
      v60 = *(v29 + 1112);

      OUTLINED_FUNCTION_114();
      v60();

      OUTLINED_FUNCTION_26_3();
      v31 = (*((*v13 & v30) + 0x170))();
      OUTLINED_FUNCTION_26_3();
      v16 = (*((*v13 & v32) + 0x460))(v67, v68 & 1, v31, 0);

      if (v16)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_19_43();
    v22 = (*(v21 + 368))();
    OUTLINED_FUNCTION_26_3();
    v24 = v67;
    v16 = (*((*v13 & v23) + 0x460))(v67, v68 & 1, v22, 0);

    v25 = v69;
    if (v16)
    {
LABEL_5:
      v11 = v64;
      v12 = v65;
LABEL_6:
      v70[5] = v11;
      v70[6] = v16;
      v70[4] = v12;
      OUTLINED_FUNCTION_19_43();
      v27 = *(v26 + 672);

      v28 = v16;
      v27(v70);
      OUTLINED_FUNCTION_152();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F1F0);
      sub_1E3CA4D10();
      (v1)(v70, 0);

      goto LABEL_7;
    }
  }

  v33 = [v1 normalControllerLimit];
  if (!v33 || (v34 = v33, v35 = [v33 integerValue], v34, sub_1E396C5EC(), v36 < v35) || (v25 & 1) != 0)
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_69_8();
    v48(v62);
    v49 = v24;
    v50 = sub_1E41FFC94();
    sub_1E42067F4();

    if (OUTLINED_FUNCTION_56_4())
    {
      OUTLINED_FUNCTION_6_21();
      v70[0] = OUTLINED_FUNCTION_11_16();
      *v49 = 136315138;
      v51 = OUTLINED_FUNCTION_74();
      *(v49 + 1) = sub_1E3270FC8(v51, v52, v53);
      OUTLINED_FUNCTION_66_0();
      OUTLINED_FUNCTION_126_0(v54, v55, v56, v57);
      OUTLINED_FUNCTION_24_18();
      OUTLINED_FUNCTION_21_0();
    }

    v58 = OUTLINED_FUNCTION_120_2();
    v59(v58, v7);
  }

  else
  {
    v37 = sub_1E324FBDC();
    (*(v66 + 16))(v61, v37, v7);
    v38 = v24;
    v39 = sub_1E41FFC94();
    sub_1E4206814();

    if (OUTLINED_FUNCTION_56_4())
    {
      v40 = OUTLINED_FUNCTION_6_21();
      v70[0] = OUTLINED_FUNCTION_100();
      *v40 = 136315138;
      v41 = OUTLINED_FUNCTION_74();
      *(v40 + 4) = sub_1E3270FC8(v41, v42, v43);
      OUTLINED_FUNCTION_66_0();
      OUTLINED_FUNCTION_50_6(v44, v45, v46, v47);
      OUTLINED_FUNCTION_24_18();
      OUTLINED_FUNCTION_65_0();
    }

    (*(v66 + 8))(v61, v63);
  }

LABEL_7:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3974220()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v199 = v5;
  v7 = v6;
  v200 = v8;
  v9 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v198 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_18_6();
  v196 = v16;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v175 - v18;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF396A0);
  OUTLINED_FUNCTION_0_10();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_4_6();
  v202 = (v23 - v24);
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_18_6();
  v203 = v26;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v27);
  v29 = (&v175 - v28);
  if (v7)
  {
    goto LABEL_80;
  }

  v30 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v32 = *(v31 + 440);
  v201 = v0;
  if (v32() != 2)
  {
    goto LABEL_80;
  }

  v33 = (*((*v30 & *v201) + 0x310))();
  v34 = v201;
  if (v33)
  {
    goto LABEL_80;
  }

  v187 = v14;
  v184 = v4;
  v185 = v2;
  v186 = v19;
  v195 = v21;
  v193 = v9;
  OUTLINED_FUNCTION_21();
  v194 = (*(v35 + 352))();
  v36 = v30;
  v37 = [objc_opt_self() sharedInstance];
  v38 = [v37 rootControllerConfig];

  v39 = sub_1E397BF30(v38);
  if (!v39)
  {
    v39 = MEMORY[0x1E69E7CC0];
  }

  v197 = sub_1E32772D8(v39);
  v212 = 0xD000000000000026;
  v213 = 0x80000001E4269000;
  v40 = *((*v36 & *v34) + 0x290);
  v192 = (*v36 & *v34) + 656;
  v191 = v40;
  v41 = v40();
  v43 = v42;
  v204 = sub_1E3280A90(0, &qword_1EE23B250);
  v44 = MEMORY[0x1E69E6168];
  sub_1E3CA5084(v41, MEMORY[0x1E69E6158], v204, MEMORY[0x1E69E6168], v29);

LABEL_7:

  while (1)
  {
    v209 = MEMORY[0x1E69E6158];
    v210 = v204;
    v211 = v44;
    swift_getOpaqueTypeConformance2();
    sub_1E4207174();
    v45 = v210;
    if (!v210)
    {
      break;
    }

    v43 = v209;
    v46 = v211;
    objc_opt_self();
    OUTLINED_FUNCTION_20_2();
    v47 = swift_dynamicCastObjCClass();
    if (v47)
    {
      v48 = v47;
      v209 = 0;
      v210 = 0xE000000000000000;
      v49 = v46;
      sub_1E42074B4();
      v50 = [v49 description];
      v51 = sub_1E4205F14();
      v53 = v52;

      v209 = v51;
      v210 = v53;
      MEMORY[0x1E69109E0](40, 0xE100000000000000);
      MEMORY[0x1E69109E0](v43, v45);

      MEMORY[0x1E69109E0](0x207361682029, 0xE600000000000000);
      v54 = [v48 childViewControllers];
      v55 = sub_1E42062B4();

      if (v55 >> 62)
      {
        v43 = sub_1E4207384();
      }

      else
      {
        v43 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v206 = v43;
      v56 = sub_1E4207944();
      MEMORY[0x1E69109E0](v56);

      v57 = OUTLINED_FUNCTION_89_4();
      MEMORY[0x1E69109E0](v57, v58 | 0xED00000A00000000);
      MEMORY[0x1E69109E0](v209, v210);

      goto LABEL_7;
    }
  }

  v59 = *(v195 + 8);
  v195 += 8;
  v190 = v59;
  v59(v29, v205);
  OUTLINED_FUNCTION_142_5();
  v60 = v43 + 56;
  v188 = v198 + 16;
  v189 = v198 + 8;
  *&v61 = 138413058;
  v183 = v61;
LABEL_16:
  sub_1E396C5EC();
  if (v199)
  {
    if (v62 < v200)
    {
      goto LABEL_81;
    }
  }

  else if (v62 <= v200)
  {
LABEL_81:

    OUTLINED_FUNCTION_91_5();

    goto LABEL_76;
  }

  OUTLINED_FUNCTION_49_19();
  v63();
  OUTLINED_FUNCTION_145();
  sub_1E3CA5084(v64, MEMORY[0x1E69E6158], v204, MEMORY[0x1E69E6168], v203);

  while (1)
  {
    sub_1E4207174();
    v65 = v210;
    if (!v210)
    {
      OUTLINED_FUNCTION_11_60();
      v74();
      OUTLINED_FUNCTION_49_19();
      v75();
      OUTLINED_FUNCTION_145();
      sub_1E3CA5084(v76, MEMORY[0x1E69E6158], v204, MEMORY[0x1E69E6168], v202);

      for (LODWORD(v198) = 0; ; LODWORD(v198) = 1)
      {
        while (1)
        {
          sub_1E4207174();
          v77 = v210;
          if (!v210)
          {
            OUTLINED_FUNCTION_11_60();
            v126();
            v125 = v198;
            v123 = v198;
            v124 = v194;
            goto LABEL_62;
          }

          v78 = v209;
          v79 = v211;
          objc_opt_self();
          v80 = swift_dynamicCastObjCClass();
          if (v80)
          {
            break;
          }

LABEL_46:
        }

        v81 = v80;
        v82 = v79;
        v83 = [v81 viewControllers];
        v84 = sub_1E42062B4();

        if (v84 >> 62)
        {
          v85 = sub_1E4207384();
        }

        else
        {
          v85 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v85 > 2)
        {
LABEL_44:

          goto LABEL_46;
        }

        OUTLINED_FUNCTION_142_5();
        if (*(v85 + 16))
        {
          sub_1E4207B44();
          sub_1E4206014();
          v86 = sub_1E4207BA4();
          v87 = ~(-1 << *(v85 + 32));
          while (1)
          {
            v88 = v86 & v87;
            if (((*&v60[((v86 & v87) >> 3) & 0xFFFFFFFFFFFFFF8] >> (v86 & v87)) & 1) == 0)
            {
              break;
            }

            v89 = (*(v85 + 48) + 16 * v88);
            if (*v89 != v78 || v77 != v89[1])
            {
              v91 = sub_1E42079A4();
              v86 = v88 + 1;
              if ((v91 & 1) == 0)
              {
                continue;
              }
            }

            goto LABEL_44;
          }
        }

        OUTLINED_FUNCTION_91_5();
        if (v81 != v92)
        {
          if ([objc_opt_self() isPad])
          {

            OUTLINED_FUNCTION_49_19();
            v93();
            OUTLINED_FUNCTION_145();
            v209 = v78;
            v210 = v77;
            sub_1E3CA4D00();

            v94 = v206;
            if (v206)
            {
              v95 = [v206 parentViewController];

              if (v95)
              {
                type metadata accessor for RootHostingViewController();
                if (swift_dynamicCastClass())
                {
                  OUTLINED_FUNCTION_64();
                  (*(v96 + 160))();
                }
              }
            }
          }

          v207 = v77;
          v208 = 0;
          v206 = v78;
          OUTLINED_FUNCTION_21();
          v98 = *(v97 + 672);

          v98(&v209);
          OUTLINED_FUNCTION_152();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F1F0);
          sub_1E3CA4D10();
          (v98)(&v209, 0);
          sub_1E324FBDC();
          OUTLINED_FUNCTION_54_12();
          v99(v196);
          v100 = v213;
          v180 = v212;
          v101 = v185;

          v182 = v82;

          v102 = sub_1E41FFC94();
          v103 = sub_1E4206814();
          v181 = v100;
          v104 = v101;

          v179 = v103;
          if (os_log_type_enabled(v102, v103))
          {
            v105 = swift_slowAlloc();
            v177 = v102;
            v106 = v105;
            v107 = swift_slowAlloc();
            v176 = v107;
            v178 = swift_slowAlloc();
            v209 = v178;
            *v106 = v183;
            v108 = v182;
            *(v106 + 4) = v182;
            *v107 = v79;
            *(v106 + 12) = 2080;
            v109 = v108;
            v110 = sub_1E3270FC8(v78, v77, &v209);

            *(v106 + 14) = v110;
            *(v106 + 22) = 2080;
            *(v106 + 24) = sub_1E3270FC8(v184, v104, &v209);
            *(v106 + 32) = 2080;
            v111 = v181;

            v112 = sub_1E3270FC8(v180, v111, &v209);

            *(v106 + 34) = v112;
            v113 = v177;
            _os_log_impl(&dword_1E323F000, v177, v179, "RootSplitViewController::STACK:: purged %@(%s) because %s %s", v106, 0x2Au);
            sub_1E325F6F0(v176, &unk_1ECF28E30);
            OUTLINED_FUNCTION_6_0();
            swift_arrayDestroy();
            OUTLINED_FUNCTION_6_0();
            OUTLINED_FUNCTION_6_0();

            OUTLINED_FUNCTION_25_37();
            v114 = OUTLINED_FUNCTION_47_16();
            v115(v114);
            OUTLINED_FUNCTION_142_5();
            v116 = v108;
          }

          else
          {

            OUTLINED_FUNCTION_25_37();
            v117 = OUTLINED_FUNCTION_47_16();
            v118(v117);
            OUTLINED_FUNCTION_142_5();
            v116 = v182;
          }

          v119 = [v81 viewControllers];
          v120 = sub_1E42062B4();

          v121 = sub_1E32AE9B0(v120);

          OUTLINED_FUNCTION_11_60();
          v122();
          if (!v121)
          {
            v123 = 1;
            v124 = v194;
            v125 = v198;
LABEL_62:
            sub_1E324FBDC();
            OUTLINED_FUNCTION_54_12();
            v127(v187);
            v128 = v213;
            v205 = v212;
            v129 = v124;

            v130 = sub_1E41FFC94();
            v131 = sub_1E42067F4();

            if (os_log_type_enabled(v130, v131))
            {
              v132 = swift_slowAlloc();
              v209 = swift_slowAlloc();
              *v132 = 134219522;
              *(v132 + 4) = v200;
              *(v132 + 12) = 1024;
              *(v132 + 14) = 0;
              *(v132 + 18) = 1024;
              *(v132 + 20) = v123;
              *(v132 + 24) = 1024;
              *(v132 + 26) = v125;
              *(v132 + 30) = 2080;
              if (v124 && (v133 = sub_1E397BF94(v129), v134))
              {
                v135 = v134;
              }

              else
              {

                v135 = 0xE700000000000000;
                v133 = 0x6E776F6E6B6E75;
              }

              v168 = sub_1E3270FC8(v133, v135, &v209);

              *(v132 + 32) = v168;
              *(v132 + 40) = 2080;
              v169 = sub_1E4206634();
              v171 = v170;

              v172 = sub_1E3270FC8(v169, v171, &v209);

              *(v132 + 42) = v172;
              *(v132 + 50) = 2080;
              v173 = sub_1E3270FC8(v205, v128, &v209);

              *(v132 + 52) = v173;
              _os_log_impl(&dword_1E323F000, v130, v131, "RootSplitViewController::STACK:: unable to purge a controller. controllerLimit = %ld, stacks with > 2 controllers = %{BOOL}d, valid stacks <= 2 = %{BOOL}d, only valid stacks <= 2 is presented = %{BOOL}d, presented controller = %s, no purge list = %s %s", v132, 0x3Cu);
              swift_arrayDestroy();
              OUTLINED_FUNCTION_6_0();
              OUTLINED_FUNCTION_55();

              OUTLINED_FUNCTION_25_37();
              v164 = OUTLINED_FUNCTION_47_16();
            }

            else
            {

              OUTLINED_FUNCTION_25_37();
              v164 = OUTLINED_FUNCTION_17_11();
            }

            v165(v164);
            goto LABEL_80;
          }

          goto LABEL_16;
        }
      }
    }

    v66 = v209;
    v67 = v211;
    objc_opt_self();
    v68 = swift_dynamicCastObjCClass();
    if (v68)
    {
      break;
    }

LABEL_28:
  }

  v69 = v68;
  v70 = v67;
  v71 = [v69 viewControllers];
  v72 = sub_1E42062B4();

  if (v72 >> 62)
  {
    v73 = sub_1E4207384();
  }

  else
  {
    v73 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v73 < 3)
  {

    goto LABEL_28;
  }

  OUTLINED_FUNCTION_81_6();

  v136 = [v69 viewControllers];
  v137 = sub_1E42062B4();

  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v137 & 0x8000000000000000) != 0 || (v137 & 0x4000000000000000) != 0)
  {
    v137 = sub_1E37EFA58(v137);
  }

  v138 = *((v137 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v138 < 2)
  {
    __break(1u);
    return;
  }

  v139 = v138 - 1;
  v140 = *((v137 & 0xFFFFFFFFFFFFFF8) + 0x28);
  memmove(((v137 & 0xFFFFFFFFFFFFFF8) + 40), ((v137 & 0xFFFFFFFFFFFFFF8) + 48), 8 * v138 - 16);
  *((v137 & 0xFFFFFFFFFFFFFF8) + 0x10) = v139;
  v141 = sub_1E42062A4();

  [v69 setViewControllers_];

  sub_1E324FBDC();
  OUTLINED_FUNCTION_54_12();
  v142 = v186;
  v143(v186);
  v144 = v213;
  v202 = v212;
  v145 = v70;
  v146 = v142;
  v147 = v140;

  v148 = v185;

  v149 = sub_1E41FFC94();
  v150 = sub_1E4206814();

  v204 = v149;
  if (os_log_type_enabled(v149, v150))
  {
    v151 = swift_slowAlloc();
    LODWORD(v200) = v150;
    v152 = v151;
    v153 = v144;
    v154 = swift_slowAlloc();
    v201 = swift_slowAlloc();
    v209 = v201;
    *v152 = 138413314;
    *(v152 + 4) = v147;
    *(v152 + 12) = 2112;
    *(v152 + 14) = v69;
    *v154 = v147;
    v154[1] = v69;
    *(v152 + 22) = 2080;
    v155 = v145;
    v156 = v147;
    v157 = sub_1E3270FC8(v66, v65, &v209);

    *(v152 + 24) = v157;
    *(v152 + 32) = 2080;
    *(v152 + 34) = sub_1E3270FC8(v184, v148, &v209);
    *(v152 + 42) = 2080;

    v158 = sub_1E3270FC8(v202, v153, &v209);

    *(v152 + 44) = v158;
    v159 = v204;
    _os_log_impl(&dword_1E323F000, v204, v200, "RootSplitViewController::STACK:: purged %@ from %@(%s) because %s\n%s", v152, 0x34u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E30);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_65_0();

    OUTLINED_FUNCTION_91_5();
    OUTLINED_FUNCTION_25_37();
    v161 = OUTLINED_FUNCTION_47_16();
    v162(v161);
  }

  else
  {

    OUTLINED_FUNCTION_91_5();

    OUTLINED_FUNCTION_25_37();
    v167(v146, v193);
  }

  OUTLINED_FUNCTION_11_60();
  v163();
LABEL_76:

LABEL_80:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E39755C0()
{
  OUTLINED_FUNCTION_31_1();
  v66 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_12();
  v11 = *&v7[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_documentRef];
  v10 = *&v7[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_documentRef + 8];
  if (v11 == sub_1E4205F14() && v10 == v12)
  {
  }

  else
  {
    OUTLINED_FUNCTION_160_1();
    v14 = OUTLINED_FUNCTION_97_0();

    if ((v14 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  if (([objc_opt_self() isTV] & 1) == 0)
  {
    OUTLINED_FUNCTION_21();
    v23 = (*(v22 + 760))();
    v24 = &selRef_setRenderAsTemplate_;
    if (v23)
    {
      v25 = v23;
      OUTLINED_FUNCTION_64();
      v27 = (*(v26 + 704))();

      if (v27)
      {
        goto LABEL_21;
      }
    }

LABEL_13:
    sub_1E324FBDC();
    OUTLINED_FUNCTION_4_32();
    v28(v1);
    v29 = v7;
    v30 = sub_1E41FFC94();
    sub_1E42067F4();

    if (OUTLINED_FUNCTION_56_4())
    {
      v31 = OUTLINED_FUNCTION_6_21();
      v32 = swift_slowAlloc();
      *v31 = 138412290;
      *(v31 + 4) = v29;
      *v32 = v29;
      v33 = v29;
      OUTLINED_FUNCTION_66_0();
      _os_log_impl(v34, v35, v36, v37, v31, 0xCu);
      sub_1E325F6F0(v32, &unk_1ECF28E30);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    v38 = OUTLINED_FUNCTION_156_4();
    v39(v38, v8);
    goto LABEL_25;
  }

LABEL_9:
  v65 = v8;
  sub_1E3280A90(0, &qword_1EE23B0D0);
  OUTLINED_FUNCTION_60_1();

  OUTLINED_FUNCTION_160_1();
  v15 = sub_1E38A1F34();
  v16 = *&v7[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_uiConfiguration];
  [v15 setShouldLoadPageImmediately_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B710);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BE0;
  sub_1E4205F14();
  if (v3)
  {

    v18 = MEMORY[0x1E69E6158];
    sub_1E4207414();
    v19 = *&v7[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier];
    v20 = *&v7[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier + 8];
    *(inited + 96) = v18;
    *(inited + 72) = v19;
    *(inited + 80) = v20;

    OUTLINED_FUNCTION_146_1();
    v21 = sub_1E4205CB4();
    sub_1E3975D60(v21, v3);
  }

  else
  {
    v40 = MEMORY[0x1E69E6158];
    sub_1E4207414();
    v41 = *&v7[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier];
    v42 = *&v7[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier + 8];
    *(inited + 96) = v40;
    *(inited + 72) = v41;
    *(inited + 80) = v42;

    OUTLINED_FUNCTION_146_1();
    sub_1E4205CB4();
  }

  if ((v7[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_isNonServerTab] & 1) == 0)
  {
    v43 = sub_1E4205F14();
    sub_1E37FB7F0(v43, v44, v15, &selRef_setDocumentType_);
    OUTLINED_FUNCTION_160_1();
    v45 = sub_1E4205ED4();
    OUTLINED_FUNCTION_173_1(v45, sel_setControllerRef_);

    v46 = sub_1E4205ED4();
    OUTLINED_FUNCTION_173_1(v46, sel_setTitle_);

    if (*&v7[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_contextData])
    {
      sub_1E3280A90(0, &qword_1EE23B078);

      v47 = sub_1E37766C4();
      OUTLINED_FUNCTION_173_1(v47, sel_setContextData_);
    }
  }

  OUTLINED_FUNCTION_125();
  v48 = sub_1E4205ED4();
  [v16 setViewControllerDocumentIdentifier_];

  [v16 setIsRootViewController_];
  [v15 setUiConfiguration_];
  v27 = *_s8VideosUIAAC19initializeUIFactoryyyFZ_0();
  sub_1E3D50594();
  OUTLINED_FUNCTION_38();

  v8 = v65;
  v24 = &selRef_setRenderAsTemplate_;
  if (!v27)
  {
    goto LABEL_13;
  }

LABEL_21:
  v49 = objc_allocWithZone(VUIAppNavigationController);
  v50 = v27;
  v51 = [v49 initWithRootViewController_];
  [v51 vui:v66 addControllerObserver:?];
  [v51 setMaxNavControllerStackDepth_];
  v52 = v51;
  OUTLINED_FUNCTION_24_4();
  v53 = sub_1E4205ED4();
  [v52 setVuiViewControllerIdentifier_];

  OUTLINED_FUNCTION_33_11();
  v54 = sub_1E4205ED4();
  [v52 v24[352]];

  v55 = [v52 tabBarItem];
  if (!v55)
  {
    __break(1u);
    goto LABEL_27;
  }

  v56 = v55;
  OUTLINED_FUNCTION_33_11();
  v57 = sub_1E4205ED4();
  OUTLINED_FUNCTION_173_1(v57, v24[352]);

  v58 = [v52 tabBarItem];
  if (!v58)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v59 = v58;
  v60 = type metadata accessor for RemoteBarItem();
  v61 = sub_1E395DF10(v60, &off_1F5D824A8);
  [v59 setImage_];

  v62 = [v52 tabBarItem];
  if (v62)
  {
    v67 = sub_1E4205F14();
    v68 = v63;

    v64 = OUTLINED_FUNCTION_24_4();
    MEMORY[0x1E69109E0](v64);

    sub_1E37FB7F0(v67, v68, v62, &selRef_setAccessibilityIdentifier_);

LABEL_25:
    OUTLINED_FUNCTION_25_2();
    return;
  }

LABEL_28:
  __break(1u);
}

uint64_t sub_1E3975D60(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_1E397BCB8(a1, sub_1E397BCA4, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

void sub_1E3975DE4()
{
  OUTLINED_FUNCTION_93();
  v143 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v142 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v141 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  OUTLINED_FUNCTION_17_2(v7);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v148 = &v141 - v9;
  v10 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_78();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F208);
  v19 = OUTLINED_FUNCTION_17_2(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_25_3();
  v155 = v21;
  v22 = OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_stackExpirationDates;
  OUTLINED_FUNCTION_5_0();
  v144 = v22;
  v152 = v0;
  v154 = *(v0 + v22) + 64;
  OUTLINED_FUNCTION_4_4();
  v25 = v24 & v23;
  v150 = OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_stackExpirationWorkItems;
  v27 = (v26 + 63) >> 6;
  v145 = v12 + 16;
  v156 = v12;
  v161 = (v12 + 8);
  v162 = (v12 + 32);
  v146 = v28;

  v29 = 0;
  v151 = MEMORY[0x1E69E7CC0];
  v164 = MEMORY[0x1E69E7CC0];
  v160 = v10;
  v157 = v16;
  v158 = v1;
  v153 = v2;
  for (i = v27; ; v27 = i)
  {
    if (!v25)
    {
      v32 = v155;
      while (1)
      {
        v31 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        if (v31 >= v27)
        {
          v47 = v16;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F210);
          v43 = v153;
          OUTLINED_FUNCTION_32_2();
          __swift_storeEnumTagSinglePayload(v91, v92, v93, v94);
          v25 = 0;
          goto LABEL_10;
        }

        v25 = *(v154 + 8 * v31);
        ++v29;
        if (v25)
        {
          v30 = v10;
          v29 = v31;
          goto LABEL_9;
        }
      }

      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      sub_1E4207A74();
      __break(1u);
      return;
    }

    v30 = v10;
    v31 = v29;
LABEL_9:
    v33 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v34 = v33 | (v31 << 6);
    v35 = (*(v146 + 48) + 16 * v34);
    v36 = *v35;
    v0 = v35[1];
    v37 = v156;
    v38 = v158;
    (*(v156 + 16))(v158, *(v146 + 56) + *(v156 + 72) * v34, v30);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F210);
    v40 = *(v39 + 48);
    v41 = v153;
    *v153 = v36;
    *(v41 + 1) = v0;
    v10 = v30;
    v42 = v30;
    v43 = v41;
    (*(v37 + 32))(&v41[v40], v38, v42);
    OUTLINED_FUNCTION_114();
    __swift_storeEnumTagSinglePayload(v44, v45, v46, v39);

    v47 = v157;
    v32 = v155;
LABEL_10:
    sub_1E397C370(v43, v32);
    v48 = OUTLINED_FUNCTION_39_9();
    __swift_instantiateConcreteTypeFromMangledNameV2(v48);
    v49 = OUTLINED_FUNCTION_38();
    if (__swift_getEnumTagSinglePayload(v49, 1, v0) == 1)
    {
      break;
    }

    v50 = v32[1];
    v159 = *v32;
    v51 = v47;
    (*v162)(v47, v32 + *(v0 + 48), v10);
    sub_1E41FE5C4();
    OUTLINED_FUNCTION_38_16();
    sub_1E3274AB4(&qword_1ECF2F220, v52);
    OUTLINED_FUNCTION_125();
    v53 = sub_1E4205E14();
    v54 = *v161;
    v55 = OUTLINED_FUNCTION_87_2();
    v54(v55);
    v163 = v50;
    if (v53)
    {
      v56 = v152;
      sub_1E41FE5C4();
      sub_1E41FE4F4();
      v57 = OUTLINED_FUNCTION_87_2();
      v147 = v54;
      v54(v57);
      v58 = v159;
      OUTLINED_FUNCTION_170_1();
      v60 = v59;
      v61 = v150;
      OUTLINED_FUNCTION_11_3();
      swift_isUniquelyReferenced_nonNull_native();
      v165 = *(v56 + v61);
      v62 = v165;
      v63 = v56;
      *(v56 + v61) = 0x8000000000000000;
      v64 = v50;
      v65 = v58;
      v66 = sub_1E327D33C(v58, v64);
      if (__OFADD__(v62[2], (v67 & 1) == 0))
      {
        goto LABEL_50;
      }

      v68 = v66;
      v69 = v67;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F228);
      if (sub_1E4207644())
      {
        v70 = sub_1E327D33C(v65, v163);
        if ((v69 & 1) != (v71 & 1))
        {
          goto LABEL_52;
        }

        v68 = v70;
      }

      v72 = v165;
      if (v69)
      {
        *(v165[7] + 8 * v68) = v60;
      }

      else
      {
        v165[(v68 >> 6) + 8] |= 1 << v68;
        v79 = (v72[6] + 16 * v68);
        v80 = v163;
        *v79 = v65;
        v79[1] = v80;
        *(v72[7] + 8 * v68) = v60;
        v81 = v72[2];
        v82 = __OFADD__(v81, 1);
        v83 = v81 + 1;
        if (v82)
        {
          goto LABEL_51;
        }

        v72[2] = v83;
      }

      *(v63 + v150) = v72;
      swift_endAccess();
      v84 = v151;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v86 = v160;
      v0 = v147;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v105 = OUTLINED_FUNCTION_27();
        v84 = sub_1E3740F88(v105, v106, v107, v84);
      }

      v87 = v157;
      v89 = *(v84 + 2);
      v88 = *(v84 + 3);
      v90 = v89 + 1;
      if (v89 >= v88 >> 1)
      {
        v108 = OUTLINED_FUNCTION_35(v88);
        v84 = sub_1E3740F88(v108, v89 + 1, 1, v84);
      }

      v151 = v84;
      v16 = v87;
      v10 = v86;
    }

    else
    {
      OUTLINED_FUNCTION_21();
      v74 = *(v73 + 656);

      v74(v75);
      v76 = v159;
      v166 = v159;
      v167 = v50;
      sub_1E3280A90(0, &qword_1EE23B250);
      sub_1E3CA4D00();

      v77 = v165;
      v65 = v76;
      if (v165)
      {
        objc_opt_self();
        v78 = swift_dynamicCastObjCClass();
        v0 = v54;
        if (v78)
        {
        }
      }

      else
      {
        v0 = v54;
      }

      v16 = v51;
      v95 = swift_isUniquelyReferenced_nonNull_native();
      v10 = v160;
      if ((v95 & 1) == 0)
      {
        v100 = OUTLINED_FUNCTION_27();
        v164 = sub_1E3740F88(v100, v101, v102, v103);
      }

      v89 = *(v164 + 2);
      v96 = *(v164 + 3);
      v90 = v89 + 1;
      if (v89 >= v96 >> 1)
      {
        v104 = OUTLINED_FUNCTION_35(v96);
        v84 = sub_1E3740F88(v104, v89 + 1, 1, v164);
        v164 = v84;
      }

      else
      {
        v84 = v164;
      }
    }

    v97 = OUTLINED_FUNCTION_17_11();
    (v0)(v97);
    *(v84 + 2) = v90;
    v98 = &v84[16 * v89];
    v99 = v163;
    *(v98 + 4) = v65;
    *(v98 + 5) = v99;
  }

  v109 = *(v164 + 2);
  v110 = 0;
  v111 =  + 40;
  v112 = v144;
  v113 = v152;
  while (v109 != v110)
  {
    if (v110 >= *(v164 + 2))
    {
      goto LABEL_49;
    }

    OUTLINED_FUNCTION_11_3();

    v114 = OUTLINED_FUNCTION_32_12();
    v116 = sub_1E327D33C(v114, v115);
    if (v117)
    {
      v118 = v116;
      swift_isUniquelyReferenced_nonNull_native();
      v165 = *(v113 + v112);
      *(v113 + v112) = 0x8000000000000000;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F218);
      sub_1E4207644();
      v119 = v165;

      v120 = v148;
      v121 = v160;
      (*(v156 + 32))(v148, v119[7] + *(v156 + 72) * v118, v160);
      sub_1E4207664();
      *(v113 + v112) = v119;

      v122 = 0;
    }

    else
    {
      v122 = 1;
      v120 = v148;
      v121 = v160;
    }

    __swift_storeEnumTagSinglePayload(v120, v122, 1, v121);
    sub_1E325F6F0(v120, &unk_1ECF28E20);
    swift_endAccess();

    v111 += 16;
    ++v110;
  }

  v123 = sub_1E324FBDC();
  v124 = v142;
  v125 = v141;
  v126 = v143;
  (*(v142 + 16))(v141, v123, v143);
  v127 = sub_1E41FFC94();
  v128 = sub_1E4206814();
  if (os_log_type_enabled(v127, v128))
  {
    v129 = OUTLINED_FUNCTION_49_0();
    v166 = swift_slowAlloc();
    *v129 = 136315394;

    MEMORY[0x1E6910C30](v164, MEMORY[0x1E69E6158]);
    OUTLINED_FUNCTION_16_11();

    v130 = OUTLINED_FUNCTION_146();
    v133 = sub_1E3270FC8(v130, v131, v132);

    *(v129 + 4) = v133;
    *(v129 + 12) = 2080;

    MEMORY[0x1E6910C30](v134, MEMORY[0x1E69E6158]);

    v135 = OUTLINED_FUNCTION_24_4();
    v138 = sub_1E3270FC8(v135, v136, v137);

    *(v129 + 14) = v138;
    _os_log_impl(&dword_1E323F000, v127, v128, "RootSplitViewController::STACK::willEnterForeground popping %s, begin timers for %s", v129, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    v139 = OUTLINED_FUNCTION_120_2();
    v140(v139, v126);
  }

  else
  {

    (*(v124 + 8))(v125, v126);

    OUTLINED_FUNCTION_81_6();
  }

  OUTLINED_FUNCTION_54_0();
}

void sub_1E3976970()
{
  OUTLINED_FUNCTION_93();
  v2 = v1;
  v4 = v3;
  sub_1E4204014();
  OUTLINED_FUNCTION_0_10();
  v19 = v6;
  v20 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v7);
  sub_1E4203FC4();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_12();
  OUTLINED_FUNCTION_4_0();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = v4;
  v10[4] = v2;
  v21[4] = sub_1E397C5CC;
  v21[5] = v10;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 1107296256;
  OUTLINED_FUNCTION_14_1();
  v21[2] = v11;
  v21[3] = &block_descriptor_40;
  _Block_copy(v21);
  OUTLINED_FUNCTION_3_79();
  sub_1E3274AB4(v12, v13);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
  OUTLINED_FUNCTION_47();
  sub_1E328FCF4(v14, v15);
  sub_1E42072E4();
  sub_1E4204054();
  swift_allocObject();
  sub_1E4204024();

  sub_1E3280A90(0, &qword_1EE23B1D0);
  v16 = sub_1E4206A04();
  sub_1E4204004();
  sub_1E4204074();
  v17 = *(v19 + 8);
  v17(v0, v20);
  sub_1E4206994();

  v18 = OUTLINED_FUNCTION_34();
  (v17)(v18);
  OUTLINED_FUNCTION_54_0();
}

void sub_1E3976C48()
{
  OUTLINED_FUNCTION_31_1();
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  v8 = sub_1E324FBDC();
  (*(v3 + 16))(v7, v8, v1);
  v9 = v0;
  v10 = sub_1E41FFC94();
  v11 = sub_1E4206814();

  v12 = &OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_loadingViewController;
  if (os_log_type_enabled(v10, v11))
  {
    OUTLINED_FUNCTION_6_21();
    OUTLINED_FUNCTION_11_16();
    *v1 = 136315138;
    OUTLINED_FUNCTION_5_0();
    sub_1E4204054();

    sub_1E4205CC4();

    v13 = OUTLINED_FUNCTION_114_1();
    v16 = sub_1E3270FC8(v13, v14, v15);

    *(v1 + 4) = v16;
    v12 = &OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_loadingViewController;
    OUTLINED_FUNCTION_126_0(&dword_1E323F000, v10, v11, "RootSplitViewController::STACK::willEnterBackground stopping timers for %s");
    OUTLINED_FUNCTION_24_18();
    OUTLINED_FUNCTION_21_0();
  }

  (*(v3 + 8))(v7, v1);
  v17 = v12[88];
  OUTLINED_FUNCTION_73();
  v18 = *&v9[v17] + 64;
  OUTLINED_FUNCTION_4_4();
  v21 = v20 & v19;
  v23 = (v22 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v24 = 0;
  if (v21)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v25 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v25 >= v23)
    {

      OUTLINED_FUNCTION_11_3();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F230);
      sub_1E4205D14();
      swift_endAccess();
      OUTLINED_FUNCTION_25_2();
      return;
    }

    v21 = *(v18 + 8 * v25);
    ++v24;
    if (v21)
    {
      v24 = v25;
      do
      {
LABEL_9:
        v21 &= v21 - 1;

        sub_1E4204034();
      }

      while (v21);
      continue;
    }
  }

  __break(1u);
}

void sub_1E3976F10()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v64 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v62 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v61 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  v13 = OUTLINED_FUNCTION_17_2(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  v63 = v14 - v15;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_23_8();
  v17 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v65 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_25_3();
  v22 = v21;
  OUTLINED_FUNCTION_26_3();
  v24 = *((*MEMORY[0x1E69E7D40] & v23) + 0x290);

  v24(v25);
  v26 = v7;
  sub_1E3280A90(0, &qword_1EE23B250);
  sub_1E3CA4D00();

  v27 = v67;
  if (v67)
  {
    objc_opt_self();
    v28 = swift_dynamicCastObjCClass();
    if (!v28)
    {
LABEL_7:

      goto LABEL_14;
    }

    v60 = v28;
    v29 = OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_stackExpirationDates;
    OUTLINED_FUNCTION_5_0();
    v30 = *(v0 + v29);

    v31 = OUTLINED_FUNCTION_32_12();
    sub_1E396E710(v31, v32, v30, v33);

    v34 = v17;
    if (__swift_getEnumTagSinglePayload(v2, 1, v17) == 1)
    {

      sub_1E325F6F0(v2, &unk_1ECF28E20);
      goto LABEL_14;
    }

    v35 = OUTLINED_FUNCTION_160_1();
    v36(v35);
    sub_1E41FE5C4();
    OUTLINED_FUNCTION_38_16();
    sub_1E3274AB4(v37, v38);
    v39 = sub_1E4205E14();
    v40 = *(v65 + 8);
    v40(v1, v34);
    if (v39)
    {
      v40(v22, v34);
      goto LABEL_7;
    }

    v66 = v34;
    v41 = sub_1E324FBDC();
    (*(v62 + 16))(v61, v41, v64);

    v42 = sub_1E41FFC94();
    v43 = sub_1E4206814();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = OUTLINED_FUNCTION_6_21();
      v68 = OUTLINED_FUNCTION_100();
      *v44 = 136315138;
      v45 = OUTLINED_FUNCTION_32_12();
      *(v44 + 4) = sub_1E3270FC8(v45, v46, v47);
      _os_log_impl(&dword_1E323F000, v42, v43, "RootSplitViewController::STACK:: popping %s to root since expired before tab switch", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v68);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_55();

      (*(v62 + 8))(v61, v64);
    }

    else
    {

      v48 = OUTLINED_FUNCTION_160_1();
      v50(v48, v49);
    }

    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v51, v52, v53, v66);
    OUTLINED_FUNCTION_11_3();

    sub_1E39721B4(v63, v26, v5);
    swift_endAccess();
    v54 = OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_stackExpirationWorkItems;
    OUTLINED_FUNCTION_5_0();
    v55 = *(v3 + v54);

    v56 = OUTLINED_FUNCTION_32_12();
    sub_1E396E6C0(v56, v57, v55);
    OUTLINED_FUNCTION_31_4();

    if (v3 + v29)
    {
      sub_1E4204034();
    }

    OUTLINED_FUNCTION_11_3();
    v58 = OUTLINED_FUNCTION_32_12();
    sub_1E397A700(v58, v59);
    swift_endAccess();

    v40(v22, v66);
  }

LABEL_14:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E397747C()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v0;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7B0);
  v12 = OUTLINED_FUNCTION_17_2(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_71_6();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_23_8();
  v14 = sub_1E4204724();
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4_12();
  v18 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v4) + 0x430))(v10, v8);
  if ((v19 & 1) == 0)
  {
    OUTLINED_FUNCTION_31_29();
    (*(v20 + 1064))(&v32);
    if (v33)
    {
      sub_1E3251BE8(&v32, v34);
      sub_1E38C6028(v34, &v32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F310);
      OUTLINED_FUNCTION_106();
      type metadata accessor for RemoteBarItem();
      if (OUTLINED_FUNCTION_90_0())
      {
        OUTLINED_FUNCTION_31_29();
        v22 = (*(v21 + 200))(v6 & 1);
        if (((*((*v18 & *v4) + 0x2C8))(v22) & 1) == 0)
        {
          __swift_destroy_boxed_opaque_existential_1(v34);

          goto LABEL_15;
        }

        OUTLINED_FUNCTION_8();
        (*(v23 + 224))();
        if (__swift_getEnumTagSinglePayload(v3, 1, v14) == 1)
        {
          __swift_destroy_boxed_opaque_existential_1(v34);

          v24 = &qword_1ECF2B7B0;
          v25 = v3;
LABEL_8:
          sub_1E325F6F0(v25, v24);
          goto LABEL_15;
        }

        (*(v16 + 32))(v2, v3, v14);
        type metadata accessor for BaseImpressionManager();
        (*(v16 + 16))(v1, v2, v14);
        OUTLINED_FUNCTION_114();
        __swift_storeEnumTagSinglePayload(v26, v27, v28, v14);
        if (v6)
        {
          static BaseImpressionManager.addElementToTracker(_:impressions:)();
        }

        else
        {
          static BaseImpressionManager.removeElementFromTracker(_:impressions:)();
        }

        sub_1E325F6F0(v1, &qword_1ECF2B7B0);
        v29 = OUTLINED_FUNCTION_38_0();
        v30(v29);
      }

      __swift_destroy_boxed_opaque_existential_1(v34);
      goto LABEL_15;
    }

    v24 = &unk_1ECF2F1D0;
    v25 = &v32;
    goto LABEL_8;
  }

LABEL_15:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3977828()
{
  OUTLINED_FUNCTION_31_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7B0);
  v3 = OUTLINED_FUNCTION_17_2(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_6();
  v29 = v4 - v5;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_78();
  v7 = sub_1E4204724();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v30 = v12 - v11;
  type metadata accessor for Metrics();
  sub_1E3BA769C(*(v0 + OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_sidebarPageDataDict));
  v13 = OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_shouldTrackImpressions;
  v14 = OUTLINED_FUNCTION_3_0();
  *(v0 + v13) = 1;
  v15 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x420))(v14);
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = v15 + 32;
    v28 = v1;
    do
    {
      sub_1E38C6028(v17, &v32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F310);
      OUTLINED_FUNCTION_106();
      type metadata accessor for RemoteBarItem();
      if (OUTLINED_FUNCTION_90_0())
      {
        OUTLINED_FUNCTION_8();
        (*(v18 + 224))();
        if (__swift_getEnumTagSinglePayload(v1, 1, v7) == 1)
        {

          v19 = OUTLINED_FUNCTION_125();
          sub_1E325F6F0(v19, v20);
        }

        else
        {
          v21 = OUTLINED_FUNCTION_34();
          v22(v21);
          type metadata accessor for BaseImpressionManager();
          v23 = OUTLINED_FUNCTION_74();
          v24(v23);
          OUTLINED_FUNCTION_114();
          __swift_storeEnumTagSinglePayload(v25, v26, v27, v7);
          static BaseImpressionManager.addElementToTracker(_:impressions:)();

          v1 = v28;
          sub_1E325F6F0(v29, &qword_1ECF2B7B0);
          (*(v9 + 8))(v30, v7);
        }
      }

      v17 += 40;
      --v16;
    }

    while (v16);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3977B78(uint64_t a1, uint64_t a2, char a3)
{
  v6 = v3;
  v8 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  result = (*(v9 + 1072))();
  if ((v11 & 1) == 0)
  {
    (*((*v8 & *v3) + 0x428))(&v41, result);
    if (!v42)
    {
      return sub_1E325F6F0(&v41, &unk_1ECF2F1D0);
    }

    sub_1E3251BE8(&v41, v40);
    type metadata accessor for BaseImpressionManager();
    static BaseImpressionManager.getSnapshotImpressionsFromTracker(_:)();
    v13 = v12;
    v14 = &OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_tabBarPageDataDict;
    if ((a3 & 1) == 0)
    {
      v14 = &OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_sidebarPageDataDict;
    }

    v15 = *(v3 + *v14);

    sub_1E38C6028(v40, &v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F310);
    OUTLINED_FUNCTION_106();
    type metadata accessor for RemoteBarItem();
    if (!OUTLINED_FUNCTION_90_0())
    {
      sub_1E38C6028(v40, &v41);
      type metadata accessor for LibrarySidebarItem();
      if ((OUTLINED_FUNCTION_90_0() & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_1(v40);
      }

      v21 = *&v39[0];
      if (a3)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1E4297BE0;
        *(inited + 32) = sub_1E4205F14();
        *(inited + 40) = v23;
        v25 = *(v6 + OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_actionContextTabBar);
        v24 = *(v6 + OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_actionContextTabBar + 8);
        *(inited + 72) = MEMORY[0x1E69E6158];
        *(inited + 48) = v25;
        *(inited + 56) = v24;

        OUTLINED_FUNCTION_146_1();
        v26 = sub_1E4205CB4();
      }

      else
      {
        v26 = 0;
      }

      v32 = *&v21[OBJC_IVAR____TtC8VideosUI14LibraryBarItem_title];
      v33 = *&v21[OBJC_IVAR____TtC8VideosUI14LibraryBarItem_title + 8];

      v34 = OUTLINED_FUNCTION_75();
      sub_1E3BA71B8(v34, v35, 1, 1, v32, v33, 0, v13, v36, v15, v26);
      sub_1E3BA6C54();
      sub_1E3814D14(&v41);

      return __swift_destroy_boxed_opaque_existential_1(v40);
    }

    v16 = *&v39[0];
    if (a3)
    {
      type metadata accessor for Metrics();
      v17 = sub_1E3BA54D0();
      OUTLINED_FUNCTION_8();
      if ((*(v18 + 176))())
      {
        sub_1E4205F14();
        OUTLINED_FUNCTION_16_11();
        v19 = *(v3 + OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_actionContextTabBar);
        v20 = *(v3 + OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_actionContextTabBar + 8);
        v42 = MEMORY[0x1E69E6158];
        *&v41 = v19;
        *(&v41 + 1) = v20;
        sub_1E329504C(&v41, v39);

        swift_isUniquelyReferenced_nonNull_native();
        sub_1E32A87C0(v39, v4, v5);
      }

      v37 = *(*v17 + 184);

      v37(v38);
    }

    else
    {
      v17 = *(*&v39[0] + OBJC_IVAR____TtC8VideosUI13RemoteBarItem_metrics);
      v27 = *(*v17 + 200);

      v29 = v27(v28);
      if (v29)
      {
        v30 = v29;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B7A0);
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_1E4297BE0;
        *(v31 + 32) = v30;
LABEL_20:
        (*(*v17 + 288))(1, v13, v31, v15);

        return __swift_destroy_boxed_opaque_existential_1(v40);
      }
    }

    v31 = 0;
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1E397804C()
{
  v1 = v0;
  type metadata accessor for Metrics();
  sub_1E3BA83B8();
  v2 = OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_shouldTrackImpressions;
  result = OUTLINED_FUNCTION_3_0();
  *(v1 + v2) = 0;
  return result;
}

id sub_1E39780B4()
{
  if (*&v0[OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_memoryPressureNotificationSource])
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1E4206B74();
    swift_unknownObjectRelease();
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for RootSplitViewManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E39782F0(uint64_t a1)
{
  sub_1E379D7E4(a1, v3, &unk_1ECF296E0);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
    if (OUTLINED_FUNCTION_21_4())
    {
      type metadata accessor for ImageViewModel();
      return sub_1E3F5321C(39, v2, 0);
    }
  }

  else
  {
    sub_1E325F6F0(v3, &unk_1ECF296E0);
  }

  return 0;
}

void sub_1E39783A4()
{
  OUTLINED_FUNCTION_31_1();
  v5 = v4;
  v7 = v6;
  v103 = v8;
  OUTLINED_FUNCTION_123_2();
  v9 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_78();
  v108 = sub_1E4205F14();
  v112 = v12;
  OUTLINED_FUNCTION_171_1();
  OUTLINED_FUNCTION_93_3();
  sub_1E375D84C(v116);
  if (!v118)
  {
    sub_1E325F6F0(v117, &unk_1ECF296E0);
    goto LABEL_57;
  }

  OUTLINED_FUNCTION_147_3();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_57:
    sub_1E324FBDC();
    OUTLINED_FUNCTION_4_32();
    v52(v3);

    v53 = sub_1E41FFC94();
    v54 = sub_1E42067F4();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = OUTLINED_FUNCTION_6_21();
      v56 = OUTLINED_FUNCTION_100();
      v116[0] = v56;
      *v55 = 136315138;
      v57 = sub_1E4205C74();
      v59 = sub_1E3270FC8(v57, v58, v116);

      *(v55 + 4) = v59;
      OUTLINED_FUNCTION_50_6(&dword_1E323F000, v53, v54, "RootSplitViewController::updateWithSideBarItems recieved side bar item with a zero length id, documentRef or title.\nIgnoring. Item: %s");
      __swift_destroy_boxed_opaque_existential_1(v56);
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_65_0();
    }

    v60 = OUTLINED_FUNCTION_120_2();
    v61(v60, v9);
    goto LABEL_60;
  }

  v102 = v7;
  v13 = v108;
  v14 = v112;
  v109 = sub_1E4205F14();
  v113 = v15;
  OUTLINED_FUNCTION_171_1();
  OUTLINED_FUNCTION_93_3();
  sub_1E375D84C(v116);
  if (!v118)
  {
    goto LABEL_54;
  }

  OUTLINED_FUNCTION_147_3();
  if ((OUTLINED_FUNCTION_21_4() & 1) == 0)
  {
    goto LABEL_56;
  }

  v98 = v13;
  v16 = v113;
  v97 = v109;
  v110 = sub_1E4205F14();
  v114 = v17;
  OUTLINED_FUNCTION_171_1();
  OUTLINED_FUNCTION_93_3();
  sub_1E375D84C(v116);
  if (!v118)
  {

LABEL_54:

    sub_1E325F6F0(v117, &unk_1ECF296E0);
    goto LABEL_57;
  }

  v96 = v16;
  OUTLINED_FUNCTION_147_3();
  if ((OUTLINED_FUNCTION_21_4() & 1) == 0)
  {

LABEL_56:

    goto LABEL_57;
  }

  v100 = v5;
  v18 = v110;
  v115 = MEMORY[0x1E69E7CC0];
  v111 = sub_1E4205F14();
  OUTLINED_FUNCTION_171_1();
  OUTLINED_FUNCTION_93_3();
  sub_1E375D84C(v116);
  v101 = v0;
  v95 = v1;
  if (!v118)
  {
    sub_1E325F6F0(v117, &unk_1ECF296E0);
    v62 = MEMORY[0x1E69E7CC0];
    v19 = v96;
    goto LABEL_64;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F350);
  OUTLINED_FUNCTION_147_3();
  v19 = v96;
  if ((OUTLINED_FUNCTION_21_4() & 1) == 0)
  {
    v62 = MEMORY[0x1E69E7CC0];
    goto LABEL_64;
  }

  v93 = v14;
  v20 = *(v111 + 16);
  v21 = v100;
  if (!v20)
  {

    v62 = MEMORY[0x1E69E7CC0];
    v14 = v93;
    goto LABEL_64;
  }

  v91 = v18;
  v22 = (v0 + OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_tipPlacementId);
  v23 = (v0 + OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_tipPlacementSideBarItemIdentifier);
  v90 = v22;
  OUTLINED_FUNCTION_3_0();
  v89 = v23;
  OUTLINED_FUNCTION_3_0();
  v24 = OUTLINED_FUNCTION_81_6();
  v99 = MEMORY[0x1E69E7CC0];
  v25 = 32;
  do
  {
    v26 = *(v24 + v25);

    v28 = sub_1E39783A4(v27, v103, v102, v21);
    if (!v28)
    {

      goto LABEL_46;
    }

    v29 = v28;
    OUTLINED_FUNCTION_64();
    v31 = (*(v30 + 392))();
    if (v31 >> 62)
    {
      v32 = sub_1E4207384();
    }

    else
    {
      v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v32)
    {
      OUTLINED_FUNCTION_21();
      (*(v33 + 496))(0);
    }

    v34 = v29;
    MEMORY[0x1E6910BF0]();
    v35 = *((v115 & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (*((v115 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v35 >> 1)
    {
      OUTLINED_FUNCTION_35(v35);
      sub_1E42062F4();
    }

    sub_1E4206324();
    v99 = v115;
    v36 = *&v34[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier];
    v37 = *&v34[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier + 8];
    v104 = sub_1E4205F14();
    v106 = v38;

    sub_1E4207414();
    if (*(v26 + 16))
    {
      v39 = sub_1E375D924(v116);
      if (v40)
      {
        sub_1E328438C(*(v26 + 56) + 32 * v39, v117);
        sub_1E375D84C(v116);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_32;
        }

        v41 = HIBYTE(v106) & 0xF;
        if ((v106 & 0x2000000000000000) == 0)
        {
          v41 = v104 & 0xFFFFFFFFFFFFLL;
        }

        if (!v41)
        {

LABEL_32:

          goto LABEL_33;
        }

        v92 = v104;
        v94 = v106;
        v105 = sub_1E4205F14();
        v107 = v42;
        sub_1E4207414();
        if (*(v26 + 16))
        {
          v43 = sub_1E375D924(v116);
          if (v44)
          {
            sub_1E328438C(*(v26 + 56) + 32 * v43, v117);
            sub_1E375D84C(v116);

            if (swift_dynamicCast())
            {
              *v90 = v92;
              v90[1] = v94;

              *v89 = v105;
              v89[1] = v107;
            }

            goto LABEL_32;
          }
        }
      }
    }

    sub_1E375D84C(v116);
LABEL_33:
    if (v102)
    {
      if (v36 == v103 && v37 == v102)
      {
        v46 = 1;
      }

      else
      {
        v46 = sub_1E42079A4();
      }
    }

    else
    {
      v46 = 0;
    }

    OUTLINED_FUNCTION_21();
    if ((*(v47 + 440))() == 1)
    {
      OUTLINED_FUNCTION_143();

      v21 = v100;
    }

    else
    {
      v21 = v100;
      if (v46)
      {
        OUTLINED_FUNCTION_21();
        v50 = (*(v49 + 1104))(v34, 1, 0, 0, 0);
      }

      else
      {
        OUTLINED_FUNCTION_143();
      }
    }

LABEL_46:
    v25 += 8;
    --v20;
    v24 = v111;
  }

  while (v20);

  v14 = v93;
  v19 = v96;
  v18 = v91;
  v62 = v99;
LABEL_64:
  type metadata accessor for RemoteSidebarItem();

  sub_1E3BF2A90(v18, v114, v98, v14, v97, v19, v2, 0, v62);
  v64 = v63;
  v65 = *(v101 + OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_preloadedImageViewModelsMap);
  if (v65 && (, v66 = OUTLINED_FUNCTION_139_0(), v19 = sub_1E396E640(v66, v67, v65), , v19 != 1))
  {
    v79 = MEMORY[0x1E69E7D40];
    OUTLINED_FUNCTION_31_29();
    v81 = *(v80 + 624);

    v81(v82);
    v83 = *((*v79 & *v64) + 0x288);

    v83(v84);
    v85 = *((*v79 & *v64) + 0x2B8);

    v85(v86);
  }

  else if (v98 == sub_1E4205F14() && v14 == v68)
  {
  }

  else
  {
    OUTLINED_FUNCTION_139_0();
    OUTLINED_FUNCTION_97_0();
    OUTLINED_FUNCTION_28_3();
    if ((v19 & 1) == 0)
    {
      sub_1E324FBDC();
      OUTLINED_FUNCTION_4_32();
      v70(v95);

      v71 = sub_1E41FFC94();
      v72 = sub_1E42067F4();

      if (os_log_type_enabled(v71, v72))
      {
        v73 = OUTLINED_FUNCTION_6_21();
        v116[0] = OUTLINED_FUNCTION_100();
        *v73 = 136446210;
        v74 = OUTLINED_FUNCTION_139_0();
        *(v73 + 4) = sub_1E3270FC8(v74, v75, v76);
        OUTLINED_FUNCTION_50_6(&dword_1E323F000, v71, v72, "RootSplitViewManager:: missing preloaded image view models for %{public}s");
        OUTLINED_FUNCTION_24_18();
        OUTLINED_FUNCTION_65_0();
      }

      v77 = OUTLINED_FUNCTION_120_2();
      v78(v77, v9);
    }
  }

  v87 = OUTLINED_FUNCTION_139_0();
  sub_1E397B708(v87, v88);

LABEL_60:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3978FA4(uint64_t result, void **a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v4 = result + 32;
    do
    {
      sub_1E38C6028(v4, v17);
      sub_1E38C6028(v17, v16);
      v5 = *a2;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = OUTLINED_FUNCTION_27();
        v5 = sub_1E397A120(v12, v13, v14, v5);
      }

      v7 = v5[2];
      v6 = v5[3];
      if (v7 >= v6 >> 1)
      {
        v15 = OUTLINED_FUNCTION_35(v6);
        v5 = sub_1E397A120(v15, v7 + 1, 1, v5);
      }

      v5[2] = v7 + 1;
      sub_1E3251BE8(v16, &v5[5 * v7 + 4]);
      *a2 = v5;
      __swift_project_boxed_opaque_existential_1(v17, v17[3]);
      v8 = OUTLINED_FUNCTION_39_9();
      v9(v8);
      __swift_destroy_boxed_opaque_existential_1(v17);
      swift_getAssociatedTypeWitness();
      v10 = OUTLINED_FUNCTION_146();
      __swift_instantiateConcreteTypeFromMangledNameV2(v10);
      v11 = sub_1E4207604();

      sub_1E3978FA4(v11, a2);

      v4 += 40;
      --v2;
    }

    while (v2);
  }

  return result;
}

void sub_1E397913C()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_123_2();
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5_9();
  v17 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_12();
  sub_1E3280A90(0, &qword_1EE23B1D0);
  v5 = sub_1E4206A04();
  OUTLINED_FUNCTION_4_0();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_73();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v18[4] = sub_1E397C6A4;
  v18[5] = v6;
  OUTLINED_FUNCTION_25_7();
  v18[1] = 1107296256;
  OUTLINED_FUNCTION_14_1();
  v18[2] = v8;
  v18[3] = &block_descriptor_67;
  v9 = _Block_copy(v18);

  sub_1E4203FE4();
  v18[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_3_79();
  sub_1E3274AB4(v10, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
  OUTLINED_FUNCTION_47();
  sub_1E328FCF4(v12, v13);
  OUTLINED_FUNCTION_113_4();
  OUTLINED_FUNCTION_151_0();
  sub_1E42072E4();
  v14 = OUTLINED_FUNCTION_62_0();
  MEMORY[0x1E6911380](v14);
  _Block_release(v9);

  v15 = OUTLINED_FUNCTION_11_6();
  v16(v15);
  (*(v3 + 8))(v0, v17);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E397939C()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_106();
  v58 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_9();
  v6 = sub_1E4206B44();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_18_6();
  v57 = v11;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v49 - v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_71_6();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_23_8();
  OUTLINED_FUNCTION_73();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (*&Strong[OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_memoryPressureNotificationSource])
    {
      v56 = Strong;
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1E4206DD4();
      swift_unknownObjectRelease();
      (*(v8 + 32))(v2, v0, v6);
      v18 = sub_1E324FBDC();
      v55 = v4;
      v19 = v1;
      (*(v4 + 16))(v1, v18, v58);
      v20 = *(v8 + 16);
      v20(v14, v2, v6);
      v21 = sub_1E41FFC94();
      v22 = sub_1E4206814();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = OUTLINED_FUNCTION_6_21();
        v51 = v19;
        v24 = v23;
        v53 = OUTLINED_FUNCTION_100();
        v59[3] = v6;
        v60 = v53;
        *v24 = 136315138;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v59);
        v20(boxed_opaque_existential_1, v14, v6);
        v26 = sub_1E3294FA4(v59);
        v50 = v22;
        v27 = v26;
        v54 = v2;
        v29 = v28;
        v30 = *(v8 + 8);
        v52 = v20;
        v31 = v14;
        v32 = v30;
        v30(v31, v6);
        v33 = sub_1E3270FC8(v27, v29, &v60);
        v2 = v54;

        *(v24 + 4) = v33;
        _os_log_impl(&dword_1E323F000, v21, v50, "RootSplitViewController:: received memory pressure event %s", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v53);
        OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_6_0();

        (*(v55 + 8))(v51, v58);
        v34 = v52;
      }

      else
      {

        v35 = v14;
        v32 = *(v8 + 8);
        v32(v35, v6);
        (*(v55 + 8))(v19, v58);
        v34 = v20;
      }

      v34(v57, v2, v6);
      sub_1E4206B14();
      sub_1E3274AB4(&unk_1EE23B188, MEMORY[0x1E69E80E0]);
      OUTLINED_FUNCTION_58_13();
      v36 = OUTLINED_FUNCTION_9_24();
      (v32)(v36);
      v37 = v56;
      if (v21)
      {
        v38 = OUTLINED_FUNCTION_38_0();
        (v32)(v38);
        v39 = 0;
        v40 = 0;
        v41 = 0xE000000000000000;
      }

      else
      {
        v40 = 0xD000000000000025;
        sub_1E4206B24();
        OUTLINED_FUNCTION_58_13();
        v42 = OUTLINED_FUNCTION_9_24();
        (v32)(v42);
        sub_1E4206B34();
        OUTLINED_FUNCTION_58_13();
        v43 = OUTLINED_FUNCTION_9_24();
        (v32)(v43);
        v44 = OUTLINED_FUNCTION_38_0();
        (v32)(v44);
        v45 = [*(v37 + OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_rootControllerConfig) criticalControllerLimit];
        v46 = v45;
        v41 = 0x80000001E4269440;
        if (v45)
        {
          v39 = [v45 integerValue];

          v47 = 0;
          goto LABEL_14;
        }

        v39 = 0;
      }

      v47 = 1;
LABEL_14:
      (*((*MEMORY[0x1E69E7D40] & *v37) + 0x458))(v39, v47, 0, v40, v41);

      v48 = OUTLINED_FUNCTION_11_6();
      (v32)(v48);
      goto LABEL_15;
    }
  }

LABEL_15:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3979930()
{
  sub_1E4203FC4();
  sub_1E3274AB4(&qword_1EE2882E0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
  sub_1E328FCF4(&qword_1EE23B5D0, &qword_1ECF2A730);
  return sub_1E42072E4();
}

void sub_1E3979A1C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v37 - v6;
  v8 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  OUTLINED_FUNCTION_73();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v17 = sub_1E324FBDC();
    (*(v10 + 16))(v14, v17, v8);

    v18 = sub_1E41FFC94();
    v19 = sub_1E4206814();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = OUTLINED_FUNCTION_6_21();
      v37 = v7;
      v21 = v3;
      v22 = v20;
      v23 = OUTLINED_FUNCTION_100();
      v38 = v23;
      *v22 = 136315138;
      v24 = OUTLINED_FUNCTION_11_6();
      *(v22 + 4) = sub_1E3270FC8(v24, v25, v26);
      _os_log_impl(&dword_1E323F000, v18, v19, "RootSplitViewController::STACK:: popping %s to root since expired from timer", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      OUTLINED_FUNCTION_6_0();
      v3 = v21;
      v7 = v37;
      OUTLINED_FUNCTION_6_0();
    }

    (*(v10 + 8))(v14, v8);
    v27 = *((*MEMORY[0x1E69E7D40] & *v16) + 0x290);

    v27(v28);
    v38 = v3;
    v39 = v1;
    sub_1E3280A90(0, &qword_1EE23B250);
    OUTLINED_FUNCTION_155_3();
    sub_1E3CA4D00();

    v29 = v40;
    if (v40)
    {
      objc_opt_self();
      OUTLINED_FUNCTION_20_2();
      v30 = swift_dynamicCastObjCClass();
      if (v30)
      {
      }
    }

    sub_1E41FE5D4();
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
    OUTLINED_FUNCTION_11_3();

    sub_1E39721B4(v7, v3, v1);
    swift_endAccess();
    OUTLINED_FUNCTION_11_3();
    v35 = OUTLINED_FUNCTION_32_12();
    sub_1E397A700(v35, v36);
    swift_endAccess();
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3979D78(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_21();
  (*(v5 + 656))();
  OUTLINED_FUNCTION_16_11();
  sub_1E3280A90(0, &qword_1EE23B250);
  v6 = OUTLINED_FUNCTION_146();
  sub_1E3CA4CF0(v6, v7, v8, v9, v10);
  OUTLINED_FUNCTION_60_1();

  v12 = 0;
  v13 = 1 << *(v2 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v2 + 64);
  v16 = (v13 + 63) >> 6;
  while (v15)
  {
    v17 = v12;
LABEL_10:
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    if (*(*(v2 + 56) + ((v17 << 9) | (8 * v18))) == a1)
    {

      if (a2)
      {
        sub_1E42074B4();
        v19 = sub_1E397BF94(a1);
        if (v20)
        {
          v21 = v20;
        }

        else
        {
          v19 = 0x6E776F6E6B6E75;
          v21 = 0xE700000000000000;
        }

        MEMORY[0x1E69109E0](v19, v21);

        MEMORY[0x1E69109E0](0x726620746E657720, 0xEB00000000206D6FLL);
        OUTLINED_FUNCTION_75();
        v22 = sub_1E4207944();
        MEMORY[0x1E69109E0](v22);

        MEMORY[0x1E69109E0](544175136, 0xE400000000000000);
        OUTLINED_FUNCTION_75();
        v23 = sub_1E4207944();
        MEMORY[0x1E69109E0](v23);

        v24 = OUTLINED_FUNCTION_89_4();
        MEMORY[0x1E69109E0](v24, v25 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000);
        v26 = [*(v2 + OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_rootControllerConfig) normalControllerLimit];
        v27 = v26;
        if (v26)
        {
          v28 = [v26 integerValue];
        }

        else
        {
          v28 = 0;
        }

        OUTLINED_FUNCTION_12_5();
        (*(v29 + 1112))(v28);
      }

      return result;
    }
  }

  while (1)
  {
    v17 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      return result;
    }

    if (v17 >= v16)
    {
      break;
    }

    v15 = *(v2 + 64 + 8 * v17);
    ++v12;
    if (v15)
    {
      v12 = v17;
      goto LABEL_10;
    }
  }
}

void *sub_1E397A120(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F340);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1E397A258(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1E397A388(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F320);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

void *sub_1E397A404(void *a1, int64_t a2, char a3)
{
  result = sub_1E397A5D4(a1, a2, a3, *v3, &unk_1ECF2F330);
  *v3 = result;
  return result;
}

void *sub_1E397A444(void *a1, int64_t a2, char a3)
{
  result = sub_1E397A4A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1E397A464(void *a1, int64_t a2, char a3)
{
  result = sub_1E397A5D4(a1, a2, a3, *v3, &unk_1ECF2F340);
  *v3 = result;
  return result;
}

void *sub_1E397A4A4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B7A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1E397A5D4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = a4[3];
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = a4[2];
  if (v8 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v11[2] = v9;
    v11[3] = 2 * ((v12 - 32) / 40);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  if (v6)
  {
    if (v11 != a4 || &a4[5 * v9 + 4] <= v11 + 4)
    {
      v14 = OUTLINED_FUNCTION_39_0();
      memmove(v14, v15, v16);
    }

    a4[2] = 0;
  }

  else
  {
    v17 = OUTLINED_FUNCTION_67_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v17);
    OUTLINED_FUNCTION_39_0();
    swift_arrayInitWithCopy();
  }

  return v11;
}