double sub_1E3F55048(char a1)
{
  v2 = *(v1 + 288);
  if (v2)
  {
    v3 = a1 == 7;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {

    v5 = sub_1E3A253B8(a1);
    sub_1E3277E60(v5, v6, v2, &v15);

    if (v16)
    {
      if (OUTLINED_FUNCTION_8_17())
      {
        return v14;
      }
    }

    else
    {
      sub_1E329505C(&v15);
    }
  }

  OUTLINED_FUNCTION_8();
  v7 = 1.0;
  if ((*(v8 + 392))())
  {
    type metadata accessor for ImageLayout();
    v9 = swift_dynamicCastClass();
    if (v9)
    {
      *&v10 = COERCE_DOUBLE((*(*v9 + 432))());
      v12 = v11;

      if ((v12 & 1) == 0)
      {
        return *&v10;
      }
    }

    else
    {
    }
  }

  return v7;
}

uint64_t sub_1E3F5519C()
{
  v1 = *(v0 + 248);
  if (!v1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return *(v1 + 48);
}

uint64_t sub_1E3F551E4()
{
  v1 = *(v0 + 248);
  if (!v1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return *(v1 + 50);
}

uint64_t sub_1E3F5522C()
{
}

uint64_t sub_1E3F5527C()
{
  v0 = ViewModel.deinit();

  return v0;
}

uint64_t sub_1E3F552D4()
{
  v0 = sub_1E3F5527C();

  return MEMORY[0x1EEE6BDC0](v0, 304, 7);
}

id sub_1E3F55304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  OUTLINED_FUNCTION_5_16();
  v10 = v9;
  v43 = 0;
  if (v11 == 0.0 && v5 == 0.0)
  {
    if (a4)
    {
      OUTLINED_FUNCTION_111();
      (*(v12 + 2288))();
      *(&v14 + 1) = v13;
    }

    else
    {
      v14 = 0uLL;
    }

    v49 = v14;
    v50 = a4 == 0;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AD70);
    sub_1E4148C68(sub_1E3F55860, v15, &v44);
    v6 = v44;
    v5 = v45;
  }

  if (v10)
  {
    if (v10 != 2)
    {
      sub_1E3280A90(0, &qword_1EE23AF98);

      v18 = OUTLINED_FUNCTION_6_12();
      v23 = sub_1E3F55868(v18, v22, v6, v5, v19, v20, v21);
      goto LABEL_17;
    }

    if (!a4)
    {
      v17 = 0;
      goto LABEL_16;
    }
  }

  else if (!a4)
  {
    v17 = 0;
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_111();
  v17 = (*(v16 + 1944))();
LABEL_16:
  objc_allocWithZone(MEMORY[0x1E69DF778]);

  OUTLINED_FUNCTION_6_12();
  v23 = sub_1E3F57358(v24, v25, v17);
LABEL_17:
  v26 = v23;
  v43 = v23;
  if (v23)
  {
    v27 = v7;
    v28 = (*(*v7 + 904))();
    if (v29)
    {
      sub_1E4205ED4();
      OUTLINED_FUNCTION_31_4();
    }

    else
    {
      v27 = 0;
    }

    OUTLINED_FUNCTION_13_0(v28, sel_setAccessibilityText_);

    if (a4)
    {
      OUTLINED_FUNCTION_111();
      v31 = (*(v30 + 672))();
      OUTLINED_FUNCTION_13_0(v31, sel_setTintColor_);

      v32 = (*(*a4 + 864))();
      v33 = v32;
    }

    else
    {
      v32 = [v26 setTintColor_];
      v33 = 0;
    }

    OUTLINED_FUNCTION_13_0(v32, sel_setHighlightColor_);

    if (!a4)
    {
      [v26 setRenderAsTemplate_];
      [v26 setBorderColor_];
      [v26 setBorderWidth_];
      return v26;
    }

    OUTLINED_FUNCTION_111();
    [v26 setRenderAsTemplate_];
LABEL_28:
    OUTLINED_FUNCTION_111();
    (*(v35 + 552))(&v44);
    if (v48)
    {
      if (!v26)
      {
        goto LABEL_36;
      }
    }

    else
    {
      if (!v26)
      {
LABEL_36:
        OUTLINED_FUNCTION_111();
        v40 = (*(v39 + 1800))();
        MEMORY[0x1EEE9AC00](v40);
        OUTLINED_FUNCTION_32_79();
        *(v41 - 16) = &v43;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AC58);
        sub_1E4148DE0(sub_1E3F5760C);
        return v43;
      }

      [v26 setBorderRadii_];
    }

    OUTLINED_FUNCTION_111();
    v37 = (*(v36 + 1824))();
    OUTLINED_FUNCTION_13_0(v37, sel_setBorderColor_);

    (*(*a4 + 1848))(&v49);
    v38 = *&v49;
    if (v51)
    {
      v38 = 0.0;
    }

    [v26 setBorderWidth_];
    goto LABEL_36;
  }

  if (a4)
  {
    goto LABEL_28;
  }

  return 0;
}

id sub_1E3F55868(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, SEL *a7)
{
  v13 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  OUTLINED_FUNCTION_31_4();
  v14 = sub_1E4205ED4();

  v15 = [v7 *a7];

  return v15;
}

uint64_t sub_1E3F55908(id a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_47_0();
    v5 = (*(v4 + 744))();
    OUTLINED_FUNCTION_2_34(v5, sel_setBackgroundColor_);

    OUTLINED_FUNCTION_13();
    v7 = (*(v6 + 672))();
    v8 = v7;
  }

  else
  {
    v7 = [a1 setBackgroundColor_];
    v8 = 0;
  }

  OUTLINED_FUNCTION_2_34(v7, sel_setTintColor_);

  if (a2)
  {
    OUTLINED_FUNCTION_47_0();
    v10 = (*(v9 + 864))();
    OUTLINED_FUNCTION_2_34(v10, sel_setHighlightColor_);

    OUTLINED_FUNCTION_13();
    (*(v11 + 552))(v46);
    if ((v47 & 1) == 0)
    {
      [a1 setBorderRadii_];
    }

    OUTLINED_FUNCTION_47_0();
    v13 = (*(v12 + 1824))();
    v14 = v13;
  }

  else
  {
    v13 = [a1 setHighlightColor_];
    v14 = 0;
  }

  OUTLINED_FUNCTION_2_34(v13, sel_setBorderColor_);

  if (a2)
  {
    OUTLINED_FUNCTION_47_0();
    (*(v15 + 1848))(v48);
    v16 = v48[0];
    if (v49)
    {
      v16 = 0.0;
    }

    [a1 setBorderWidth_];
    OUTLINED_FUNCTION_13();
    v18 = (*(v17 + 1872))();
  }

  else
  {
    [a1 setBorderWidth_];
    v18 = 0;
  }

  [a1 setContinuousBorder_];
  if (a2)
  {
    OUTLINED_FUNCTION_47_0();
    [a1 setRenderAsTemplate_];
    OUTLINED_FUNCTION_13();
    v21 = (*(v20 + 600))();
    v22 = v21;
  }

  else
  {
    v21 = [a1 setRenderAsTemplate_];
    v22 = 0;
  }

  OUTLINED_FUNCTION_2_34(v21, sel_setShadow_);

  if (a2)
  {
    OUTLINED_FUNCTION_47_0();
    v24 = (*(v23 + 2208))();
  }

  else
  {
    v24 = 0;
  }

  v25 = [a1 setDisplayScaleIsPointMultiplier_];
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_4_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B850);
  v26 = OUTLINED_FUNCTION_3_34();
  result = sub_1E4148DE0(v26);
  if (a2)
  {
    OUTLINED_FUNCTION_47_0();
    v29 = (*(v28 + 1992))();
    MEMORY[0x1EEE9AC00](v29);
    OUTLINED_FUNCTION_4_15();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AC48);
    v30 = OUTLINED_FUNCTION_3_34();
    v31 = sub_1E4148DE0(v30);
    v32 = (*(*a2 + 1576))(v31);
    if (v32)
    {
      v33 = v32;
      v34 = [v32 vuiPreferredContentSizeCategory];

      if (([objc_opt_self() isAXSmallEnabled_] & 1) == 0)
      {
        v35 = OUTLINED_FUNCTION_46_57();
        [v35 v36];
      }
    }

    OUTLINED_FUNCTION_47_0();
    v45 = (*(v37 + 1968))();
    MEMORY[0x1EEE9AC00](v45);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AC50);
    v38 = OUTLINED_FUNCTION_3_34();
    sub_1E4148DE0(v38);

    OUTLINED_FUNCTION_13();
    v40 = (*(v39 + 1800))();
    MEMORY[0x1EEE9AC00](v40);
    OUTLINED_FUNCTION_4_15();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AC58);
    v41 = OUTLINED_FUNCTION_3_34();
    sub_1E4148DE0(v41);
    OUTLINED_FUNCTION_13();
    v43 = (*(v42 + 624))();
    MEMORY[0x1EEE9AC00](v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AC60);
    v44 = OUTLINED_FUNCTION_3_34();
    return sub_1E4148DE0(v44);
  }

  return result;
}

uint64_t sub_1E3F55FE4()
{
  v1 = v0;
  OUTLINED_FUNCTION_40_64();
  sub_1E42074B4();
  v52 = v49;
  MEMORY[0x1E69109E0](0x203A637273, 0xE500000000000000);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v2 = *(v0 + 24);
  if (v2)
  {
    v3 = *(v0 + 16);
  }

  else
  {
    OUTLINED_FUNCTION_3_222();
  }

  OUTLINED_FUNCTION_34_70(v2, v3);
  v4 = sub_1E3294FA4(&v49);
  MEMORY[0x1E69109E0](v4);

  MEMORY[0x1E69109E0](0x72536B7261640A2CLL, 0xEB00000000203A63);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v5 = *(v0 + 40);
  if (v5)
  {
    v6 = *(v0 + 32);
  }

  else
  {
    OUTLINED_FUNCTION_3_222();
  }

  OUTLINED_FUNCTION_34_70(v5, v6);
  v7 = sub_1E3294FA4(&v49);
  MEMORY[0x1E69109E0](v7);

  OUTLINED_FUNCTION_51_45();
  v8 = *(v0 + 144);
  if (v8)
  {
    v9 = *(v0 + 136);
  }

  else
  {
    OUTLINED_FUNCTION_3_222();
  }

  OUTLINED_FUNCTION_34_70(v8, v9);
  v10 = sub_1E3294FA4(&v49);
  MEMORY[0x1E69109E0](v10);

  MEMORY[0x1E69109E0](0x203A706F72630A2CLL, 0xE800000000000000);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v11 = *(v0 + 160);
  if (v11)
  {
    v12 = *(v0 + 152);
  }

  else
  {
    OUTLINED_FUNCTION_3_222();
  }

  OUTLINED_FUNCTION_34_70(v11, v12);
  v13 = sub_1E3294FA4(&v49);
  MEMORY[0x1E69109E0](v13);

  MEMORY[0x1E69109E0](0x74616D726F660A2CLL, 0xEA0000000000203ALL);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v14 = *(v0 + 64);
  if (v14)
  {
    v15 = *(v0 + 56);
  }

  else
  {
    OUTLINED_FUNCTION_3_222();
  }

  OUTLINED_FUNCTION_34_70(v14, v15);
  v16 = sub_1E3294FA4(&v49);
  MEMORY[0x1E69109E0](v16);

  MEMORY[0x1E69109E0](0x6365705333700A2CLL, 0xEF203A7265696669);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v17 = *(v0 + 112);
  if (v17)
  {
    v18 = *(v0 + 104);
  }

  else
  {
    OUTLINED_FUNCTION_3_222();
  }

  OUTLINED_FUNCTION_34_70(v17, v18);
  v19 = sub_1E3294FA4(&v49);
  MEMORY[0x1E69109E0](v19);

  v20 = OUTLINED_FUNCTION_44_58();
  MEMORY[0x1E69109E0](v20 | 0x706D655400000000, 0xEF203A646574616CLL);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (*(v0 + 52))
  {
    v21 = 1702195828;
  }

  else
  {
    v21 = 0x65736C6166;
  }

  if (*(v0 + 52))
  {
    v22 = 0xE400000000000000;
  }

  else
  {
    v22 = 0xE500000000000000;
  }

  MEMORY[0x1E69109E0](v21, v22);

  v23 = OUTLINED_FUNCTION_44_58();
  MEMORY[0x1E69109E0](v23 | 0x6F73655200000000, 0xEE00203A65637275);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v24 = OUTLINED_FUNCTION_41_63(*(v0 + 48));
  if (v25)
  {
    v26 = 0xE500000000000000;
  }

  else
  {
    v26 = 0xE400000000000000;
  }

  MEMORY[0x1E69109E0](v24, v26);

  MEMORY[0x1E69109E0](0xD000000000000014, 0x80000001E4289F30);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v27 = OUTLINED_FUNCTION_41_63(*(v0 + 49));
  if (v25)
  {
    v28 = 0xE500000000000000;
  }

  else
  {
    v28 = 0xE400000000000000;
  }

  MEMORY[0x1E69109E0](v27, v28);

  v29 = OUTLINED_FUNCTION_44_58();
  MEMORY[0x1E69109E0](v29 | 0x626D795300000000, 0xEC000000203A6C6FLL);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v30 = OUTLINED_FUNCTION_41_63(*(v0 + 50));
  if (v25)
  {
    v31 = 0xE500000000000000;
  }

  else
  {
    v31 = 0xE400000000000000;
  }

  MEMORY[0x1E69109E0](v30, v31);

  v32 = OUTLINED_FUNCTION_44_58();
  MEMORY[0x1E69109E0](v32 | 0x3A47565300000000, 0xE900000000000020);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v33 = OUTLINED_FUNCTION_41_63(*(v0 + 51));
  if (v25)
  {
    v34 = 0xE500000000000000;
  }

  else
  {
    v34 = 0xE400000000000000;
  }

  MEMORY[0x1E69109E0](v33, v34);

  MEMORY[0x1E69109E0](0x3A656D6568740A2CLL, 0xE900000000000020);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v35 = *(v0 + 80);
  if (v35)
  {
    v36 = *(v0 + 72);
  }

  else
  {
    OUTLINED_FUNCTION_3_222();
  }

  OUTLINED_FUNCTION_34_70(v35, v36);
  v37 = sub_1E3294FA4(&v49);
  MEMORY[0x1E69109E0](v37);

  MEMORY[0x1E69109E0](0x6F6C6F4367620A2CLL, 0xEB00000000203A72);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v38 = *(v0 + 88);
  if (v38)
  {
    v39 = sub_1E3280A90(0, &qword_1EE23AE20);
  }

  else
  {
    v39 = 0;
    *(&v49 + 1) = 0;
    v50 = 0;
  }

  *&v49 = v38;
  v51 = v39;
  v40 = v38;
  v41 = sub_1E3294FA4(&v49);
  MEMORY[0x1E69109E0](v41);

  MEMORY[0x1E69109E0](0xD000000000000012, 0x80000001E4289F50);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v42 = *(v1 + 96);
  v51 = MEMORY[0x1E69E6370];
  LOBYTE(v49) = v42;
  v43 = sub_1E3294FA4(&v49);
  MEMORY[0x1E69109E0](v43);

  OUTLINED_FUNCTION_51_45();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (*(v1 + 184))
  {
    v44 = 0;
    v50 = 0;
    v45 = 0uLL;
  }

  else
  {
    v48 = *(v1 + 168);
    type metadata accessor for CGSize(0);
    v45 = v48;
  }

  v49 = v45;
  v51 = v44;
  v46 = sub_1E3294FA4(&v49);
  MEMORY[0x1E69109E0](v46);

  MEMORY[0x1E69109E0](44, 0xE100000000000000);
  return v52;
}

uint64_t sub_1E3F565C0(uint64_t a1, char a2)
{
  v3 = v2;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 104) = 0;
  *(v2 + 120) = 0;
  v5 = v2 + 120;
  *(v2 + 45) = 0;
  *(v2 + 81) = 0u;
  *(v2 + 112) = 0;
  *(v2 + 128) = 0xF000000000000000;
  *(v2 + 152) = 0u;
  v4 = (v2 + 16);
  *(v2 + 168) = 0u;
  *(v2 + 136) = 0u;
  *(v2 + 184) = 1;
  v6 = MEMORY[0x1E69E7CA0];
  if (a2 != 5)
  {
    v48 = &unk_1F5D7C258;
    v49 = &off_1F5D7BCB8;
    LOBYTE(v47[0]) = a2;
    OUTLINED_FUNCTION_12_149();

    if (v51)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
      if (OUTLINED_FUNCTION_11_163())
      {
        __swift_destroy_boxed_opaque_existential_1(v47);
        goto LABEL_5;
      }

      __swift_destroy_boxed_opaque_existential_1(v47);
    }

    else
    {

      OUTLINED_FUNCTION_8_177();
    }

    return 0;
  }

LABEL_5:
  v48 = &unk_1F5D7BDD8;
  v49 = &off_1F5D7BC38;
  LOBYTE(v47[0]) = 0;
  OUTLINED_FUNCTION_12_149();
  if (v51)
  {
    OUTLINED_FUNCTION_11_163();
    OUTLINED_FUNCTION_5_204();
    if (v8)
    {
      v9 = 0;
    }

    else
    {
      v9 = v7;
    }

    __swift_destroy_boxed_opaque_existential_1(v47);
  }

  else
  {
    OUTLINED_FUNCTION_8_177();
    v5 = 0;
    v9 = 0;
  }

  OUTLINED_FUNCTION_3_0();
  *(v2 + 16) = v5;
  *(v2 + 24) = v9;

  v48 = &unk_1F5D7BDD8;
  v49 = &off_1F5D7BC38;
  LOBYTE(v47[0]) = 1;
  OUTLINED_FUNCTION_12_149();
  if (v51)
  {
    OUTLINED_FUNCTION_11_163();
    OUTLINED_FUNCTION_5_204();
    if (v8)
    {
      v6 = 0;
    }

    else
    {
      v6 = v10;
    }

    __swift_destroy_boxed_opaque_existential_1(v47);
  }

  else
  {
    OUTLINED_FUNCTION_8_177();
    OUTLINED_FUNCTION_47_52();
  }

  OUTLINED_FUNCTION_3_0();
  *(v2 + 32) = v5;
  *(v2 + 40) = v6;

  if (!*(v2 + 24) && !*(v2 + 40))
  {

    return 0;
  }

  v48 = &unk_1F5D7BDD8;
  v49 = &off_1F5D7BC38;
  v11 = OUTLINED_FUNCTION_1_259(2);
  OUTLINED_FUNCTION_35_70(v11);
  if (v51)
  {
    if (OUTLINED_FUNCTION_6_195())
    {
      v12 = v45;
      __swift_destroy_boxed_opaque_existential_1(v47);
      goto LABEL_26;
    }

    __swift_destroy_boxed_opaque_existential_1(v47);
  }

  else
  {
    OUTLINED_FUNCTION_8_177();
  }

  v12 = 0;
LABEL_26:
  OUTLINED_FUNCTION_3_0();
  *(v2 + 52) = v12;
  v48 = &unk_1F5D7BDD8;
  v49 = &off_1F5D7BC38;
  v13 = OUTLINED_FUNCTION_1_259(3);
  OUTLINED_FUNCTION_35_70(v13);
  if (v51)
  {
    v14 = OUTLINED_FUNCTION_6_195();
    if (v14)
    {
      v15 = v45;
    }

    else
    {
      v15 = 0;
    }

    if (v14)
    {
      v16 = *(&v45 + 1);
    }

    else
    {
      v16 = 0;
    }

    __swift_destroy_boxed_opaque_existential_1(v47);
  }

  else
  {
    OUTLINED_FUNCTION_8_177();
    v15 = 0;
    v16 = 0;
  }

  v17 = *(v2 + 144);
  *(v2 + 136) = v15;
  *(v2 + 144) = v16;

  OUTLINED_FUNCTION_3_0();
  *(v2 + 152) = v15;
  *(v2 + 160) = v16;

  v48 = &unk_1F5D7BDD8;
  v49 = &off_1F5D7BC38;
  v18 = OUTLINED_FUNCTION_1_259(4);
  OUTLINED_FUNCTION_35_70(v18);
  if (v51)
  {
    OUTLINED_FUNCTION_6_195();
    OUTLINED_FUNCTION_5_204();
    if (v8)
    {
      v15 = 0;
    }

    else
    {
      v15 = v19;
    }

    __swift_destroy_boxed_opaque_existential_1(v47);
  }

  else
  {
    OUTLINED_FUNCTION_8_177();
    OUTLINED_FUNCTION_47_52();
  }

  OUTLINED_FUNCTION_3_0();
  *(v2 + 56) = v17;
  *(v2 + 64) = v15;

  v48 = &unk_1F5D7BDD8;
  v49 = &off_1F5D7BC38;
  v20 = OUTLINED_FUNCTION_1_259(5);
  OUTLINED_FUNCTION_35_70(v20);
  if (v51)
  {
    OUTLINED_FUNCTION_6_195();
    OUTLINED_FUNCTION_5_204();
    if (v8)
    {
      v15 = 0;
    }

    else
    {
      v15 = v21;
    }

    __swift_destroy_boxed_opaque_existential_1(v47);
  }

  else
  {
    OUTLINED_FUNCTION_8_177();
    OUTLINED_FUNCTION_47_52();
  }

  OUTLINED_FUNCTION_3_0();
  *(v2 + 104) = v17;
  *(v2 + 112) = v15;

  v48 = &unk_1F5D7BDD8;
  v49 = &off_1F5D7BC38;
  v22 = OUTLINED_FUNCTION_1_259(6);
  OUTLINED_FUNCTION_35_70(v22);
  if (v51)
  {
    OUTLINED_FUNCTION_6_195();
    OUTLINED_FUNCTION_5_204();
    if (v8)
    {
      v15 = 0;
    }

    else
    {
      v15 = v23;
    }

    __swift_destroy_boxed_opaque_existential_1(v47);
  }

  else
  {
    OUTLINED_FUNCTION_8_177();
    OUTLINED_FUNCTION_47_52();
  }

  OUTLINED_FUNCTION_3_0();
  *(v2 + 72) = v17;
  *(v2 + 80) = v15;

  v48 = &type metadata for ViewLayoutKeys;
  v49 = &off_1F5D82368;
  LOBYTE(v47[0]) = 24;
  OUTLINED_FUNCTION_35_70(v47);
  if (v46)
  {
    sub_1E329504C(&v45, &v50);
    __swift_destroy_boxed_opaque_existential_1(v47);
    sub_1E3280A90(0, &qword_1EE23AE20);
    v24 = sub_1E39F8BAC(&v50);
    __swift_destroy_boxed_opaque_existential_1(&v50);
    OUTLINED_FUNCTION_3_0();
    v25 = v4[9];
    v4[9] = v24;
  }

  else
  {
    sub_1E329505C(&v45);
    __swift_destroy_boxed_opaque_existential_1(v47);
  }

  v48 = &unk_1F5D7BDD8;
  v49 = &off_1F5D7BC38;
  v26 = OUTLINED_FUNCTION_1_259(8);
  sub_1E3F9F164(v26);
  if (v51)
  {
    if (OUTLINED_FUNCTION_11_163())
    {
      v27 = v45;
      __swift_destroy_boxed_opaque_existential_1(v47);
      goto LABEL_62;
    }

    __swift_destroy_boxed_opaque_existential_1(v47);
  }

  else
  {
    OUTLINED_FUNCTION_8_177();
  }

  v27 = 0;
LABEL_62:
  OUTLINED_FUNCTION_3_0();
  *(v3 + 96) = v27;
  if (*(v3 + 24))
  {
    v28 = *v4;
    v29 = *(v3 + 24);
LABEL_66:
    swift_bridgeObjectRetain_n();
    OUTLINED_FUNCTION_38_64();
    v30 = OUTLINED_FUNCTION_54_46();

    goto LABEL_67;
  }

  v28 = *(v3 + 32);
  v29 = *(v3 + 40);
  if (v29)
  {
    swift_bridgeObjectRetain_n();
    goto LABEL_66;
  }

  v30 = 0;
LABEL_67:
  OUTLINED_FUNCTION_3_0();
  *(v4 + 32) = v30 & 1;
  if (v29)
  {

    v31 = OUTLINED_FUNCTION_54_46();

    OUTLINED_FUNCTION_3_0();
    *(v4 + 33) = v31 & 1;

    OUTLINED_FUNCTION_55_45();
    v32 = OUTLINED_FUNCTION_54_46();
  }

  else
  {
    OUTLINED_FUNCTION_3_0();
    v32 = 0;
    *(v4 + 33) = 0;
  }

  OUTLINED_FUNCTION_3_0();
  *(v4 + 34) = v32 & 1;
  if (v29)
  {

    v33 = OUTLINED_FUNCTION_54_46();

    OUTLINED_FUNCTION_3_0();
    *(v4 + 35) = v33 & 1;
    if (v33)
    {
      v47[0] = v28;
      v47[1] = v29;
      *&v50 = 0x2F2F3A677673;
      *(&v50 + 1) = 0xE600000000000000;
      sub_1E32822E0();
      sub_1E42071F4();

      v34 = sub_1E41FE444();
      v36 = v35;

      OUTLINED_FUNCTION_3_0();
      v37 = *(v3 + 120);
      v38 = *(v3 + 128);
      *(v3 + 120) = v34;
      *(v3 + 128) = v36;
      sub_1E38DCE1C(v37, v38);
      goto LABEL_75;
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_0();
    *(v4 + 35) = 0;
  }

LABEL_75:
  v48 = &unk_1F5D7BDD8;
  v49 = &off_1F5D7BC38;
  v39 = OUTLINED_FUNCTION_1_259(10);
  sub_1E3F9F164(v39);
  if (v51)
  {
    if (OUTLINED_FUNCTION_50_50())
    {
      v40 = v44;
      __swift_destroy_boxed_opaque_existential_1(v47);
      goto LABEL_81;
    }

    __swift_destroy_boxed_opaque_existential_1(v47);
  }

  else
  {
    OUTLINED_FUNCTION_8_177();
  }

  v40 = 0.0;
LABEL_81:
  v48 = &unk_1F5D7BDD8;
  v49 = &off_1F5D7BC38;
  v41 = OUTLINED_FUNCTION_1_259(11);
  sub_1E3F9F164(v41);

  if (v51)
  {
    if (OUTLINED_FUNCTION_50_50())
    {
      v42 = v44;
      __swift_destroy_boxed_opaque_existential_1(v47);
      goto LABEL_87;
    }

    __swift_destroy_boxed_opaque_existential_1(v47);
  }

  else
  {
    OUTLINED_FUNCTION_8_177();
  }

  v42 = 0.0;
LABEL_87:
  if (v40 * v42 > 0.0)
  {
    OUTLINED_FUNCTION_3_0();
    *(v3 + 168) = v40;
    *(v3 + 176) = v42;
    *(v3 + 184) = 0;
  }

  return v3;
}

uint64_t sub_1E3F56E00()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960);
  sub_1E4148DE0(sub_1E3F577C8);

  OUTLINED_FUNCTION_25();
  swift_beginAccess();

  sub_1E4148DE0(sub_1E3F5756C);
}

uint64_t sub_1E3F56EF4(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v6 = *(a2 + 24);
    if (v5)
    {
      if (!v6)
      {
        goto LABEL_43;
      }

      v7 = v4 == *(a2 + 16) && v5 == v6;
      if (!v7 && (OUTLINED_FUNCTION_26_104() & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    else if (v6)
    {
      goto LABEL_43;
    }

    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v11 = *(a2 + 40);
    if (v10)
    {
      if (!v11)
      {
        goto LABEL_43;
      }

      v12 = v9 == *(a2 + 32) && v10 == v11;
      if (!v12 && (OUTLINED_FUNCTION_26_104() & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    else if (v11)
    {
      goto LABEL_43;
    }

    v13 = *(a1 + 144);
    v14 = *(a2 + 144);
    if (v13)
    {
      if (!v14)
      {
        goto LABEL_43;
      }

      v15 = *(a1 + 136) == *(a2 + 136) && v13 == v14;
      if (!v15 && (sub_1E42079A4() & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    else if (v14)
    {
      goto LABEL_43;
    }

    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v16 = *(a1 + 56);
    v17 = *(a1 + 64);
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v18 = *(a2 + 64);
    if (v17)
    {
      if (!v18)
      {
        goto LABEL_43;
      }

      v19 = v16 == *(a2 + 56) && v17 == v18;
      if (!v19 && (OUTLINED_FUNCTION_26_104() & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    else if (v18)
    {
      goto LABEL_43;
    }

    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v20 = *(a1 + 48);
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    if (v20 != *(a2 + 48))
    {
      goto LABEL_43;
    }

    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v21 = *(a1 + 49);
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    if (v21 != *(a2 + 49))
    {
      goto LABEL_43;
    }

    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v22 = *(a1 + 50);
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    if (v22 != *(a2 + 50))
    {
      goto LABEL_43;
    }

    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v23 = *(a1 + 51);
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    if (v23 != *(a2 + 51))
    {
      goto LABEL_43;
    }

    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v25 = *(a1 + 72);
    v26 = *(a1 + 80);
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v27 = *(a2 + 80);
    if (v26)
    {
      if (!v27)
      {
        goto LABEL_43;
      }

      v28 = v25 == *(a2 + 72) && v26 == v27;
      if (!v28 && (OUTLINED_FUNCTION_26_104() & 1) == 0)
      {
        goto LABEL_43;
      }

LABEL_54:
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      v29 = *(a1 + 52);
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      v8 = v29 ^ *(a2 + 52) ^ 1;
      return v8 & 1;
    }

    if (!v27)
    {
      goto LABEL_54;
    }

LABEL_43:
    v8 = 0;
    return v8 & 1;
  }

  v8 = 1;
  return v8 & 1;
}

uint64_t sub_1E3F571B8()
{

  sub_1E38DCE1C(*(v0 + 120), *(v0 + 128));

  return v0;
}

uint64_t sub_1E3F57218()
{
  sub_1E3F571B8();
  OUTLINED_FUNCTION_45_64();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E3F57248()
{
  sub_1E4207B44();
  sub_1E3F56E00();
  return sub_1E4207BA4();
}

uint64_t sub_1E3F572D0()
{
  sub_1E4207B44();
  sub_1E3F56E00();
  return sub_1E4207BA4();
}

id sub_1E3F57358(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_5_16();
  v4 = sub_1E4205ED4();

  v5 = OUTLINED_FUNCTION_6_12();
  v8 = [v6 v7];

  return v8;
}

unint64_t sub_1E3F573D4(uint64_t a1)
{
  sub_1E3F5310C();
  v2 = sub_1E4205DA4();
  return sub_1E3F57440(a1, v2);
}

unint64_t sub_1E3F57440(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_1E37F9A28();
    if (sub_1E4205E84())
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1E3F57528(void *a1)
{
  **(v1 + 16) = *a1;
}

uint64_t sub_1E3F575B0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ImageViewModel.IndvidualImageRecord();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1E3F5760C(unsigned __int8 *a1)
{
  v2 = **(v1 + 16);
  if (v2)
  {
    v3 = *a1;
    v4 = v2;
    [v4 setScaleMode_];
  }
}

void sub_1E3F57688()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_8();
  if ((*(v2 + 2232))())
  {
    sub_1E37FB7F0(0, 0xE000000000000000, v1, &selRef_setCropCode_);
  }
}

void sub_1E3F576F0(void **a1)
{
  v2 = *(v1 + 24);
  v3 = *a1;
  if (**(v1 + 16) == 1)
  {
    if (!*(v1 + 32) || (OUTLINED_FUNCTION_8(), (v5 = (*(v4 + 768))()) == 0))
    {
      v5 = v3;
    }

    v7 = v5;
    [v2 setPlaceholderColor_];
  }

  else
  {
    v6 = *(v1 + 24);

    [v6 setPlaceholderColor_];
  }
}

uint64_t sub_1E3F577E0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8VideosUI25LandingPageViewController_collectionImpressioner;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return sub_1E3294EE4(v1 + v3, a1, &unk_1ECF296D0);
}

uint64_t sub_1E3F57844(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI25LandingPageViewController_collectionImpressioner;
  swift_beginAccess();
  sub_1E37FA198(a1, v1 + v3, &unk_1ECF296D0);
  return swift_endAccess();
}

uint64_t sub_1E3F57900()
{
  v1 = OBJC_IVAR____TtC8VideosUI25LandingPageViewController_recentlySearchedCollectionViewModel;
  OUTLINED_FUNCTION_25();
  result = swift_beginAccess();
  v3 = *(v0 + v1);
  if (v3)
  {
    v4 = *(v0 + OBJC_IVAR____TtC8VideosUI25LandingPageViewController_stackViewController);

    if (!v4)
    {
    }

    OUTLINED_FUNCTION_21();
    v6 = *(v5 + 560);
    v7 = v4;
    v8 = v6();

    if (!v8)
    {
    }

    OUTLINED_FUNCTION_47_0();
    v10 = *(v9 + 464);

    v12 = v10(v11);

    if (v12)
    {
      result = sub_1E32AE9B0(v12);
      if (result)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1E6911E60](0, v12);
        }

        else
        {
          if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }
        }

        type metadata accessor for CollectionViewModel();
        v13 = swift_dynamicCastClass();
        if (v13)
        {
          v14 = v13;
          OUTLINED_FUNCTION_111();
          v16 = *(v15 + 656);

          v16(v17);
          v18 = objc_opt_self();
          if (([v18 isMac] & 1) != 0 || (sub_1E39DFFC8() & 1) != 0 && objc_msgSend(v18, sel_isPad))
          {
            sub_1E3741534();
            v19 = sub_1E4205E84() ^ 1;
          }

          else
          {
            v19 = 1;
          }

          if ((*(*v14 + 1208))())
          {
            v21 = v20;
            ObjectType = swift_getObjectType();
            (*(v21 + 32))(v3, v19 & 1, ObjectType, v21);

            swift_unknownObjectRelease();
          }
        }
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t sub_1E3F57BE4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI25LandingPageViewController_recentlySearchedCollectionViewModel;
  swift_beginAccess();
  *(v1 + v3) = a1;

  sub_1E3F57900();
}

uint64_t sub_1E3F57C54(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_4();
  return OUTLINED_FUNCTION_15_7();
}

uint64_t sub_1E3F57CA4(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1E3F57900();
  }

  return result;
}

uint64_t sub_1E3F57CD8()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1E3F57D24(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC8VideosUI25LandingPageViewController_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  OUTLINED_FUNCTION_57();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1E3F57D8C(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC8VideosUI25LandingPageViewController_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  OUTLINED_FUNCTION_57();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return sub_1E3900F50;
}

uint64_t sub_1E3F57E78()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI25LandingPageViewController_stackViewController);
  if (!v1)
  {
    return 0;
  }

  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x1B8);
  v3 = v1;
  v4 = v2();

  return v4;
}

uint64_t sub_1E3F57F04()
{
  v1 = OBJC_IVAR____TtC8VideosUI25LandingPageViewController_hasFetchedBubbleTipBefore;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1E3F57F44(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI25LandingPageViewController_hasFetchedBubbleTipBefore;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

void *sub_1E3F58098()
{
  v1 = OBJC_IVAR____TtC8VideosUI25LandingPageViewController_cachedDSID;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E3F580E0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI25LandingPageViewController_cachedDSID;
  OUTLINED_FUNCTION_37();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1E3F58174()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
}

uint64_t sub_1E3F581B8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI25LandingPageViewController_landingPagePerformanceReporter;
  OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
}

char *sub_1E3F58280(uint64_t a1)
{
  v2 = v1;
  v4 = v1 + OBJC_IVAR____TtC8VideosUI25LandingPageViewController_collectionImpressioner;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI25LandingPageViewController_recentlySearchedCollectionViewModel) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI25LandingPageViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC8VideosUI25LandingPageViewController_pageMetrics) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI25LandingPageViewController_document) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI25LandingPageViewController_activeServiceRequest) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI25LandingPageViewController_activeServiceRequestCancellable) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI25LandingPageViewController_stackViewController) = 0;
  v5 = OBJC_IVAR____TtC8VideosUI25LandingPageViewController_lastRefreshTime;
  v6 = sub_1E41FE5D4();
  __swift_storeEnumTagSinglePayload(v1 + v5, 1, 1, v6);
  v7 = v1 + OBJC_IVAR____TtC8VideosUI25LandingPageViewController_refreshTTL;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = OBJC_IVAR____TtC8VideosUI25LandingPageViewController_notificationCenter;
  *(v2 + v8) = [objc_opt_self() defaultCenter];
  *(v2 + OBJC_IVAR____TtC8VideosUI25LandingPageViewController_hasFetchedBubbleTipBefore) = 0;
  *(v2 + OBJC_IVAR____TtC8VideosUI25LandingPageViewController_bubbleTipFetchCompletion) = 0;
  *(v2 + OBJC_IVAR____TtC8VideosUI25LandingPageViewController_currentTemplateViewModel) = 0;
  v9 = OBJC_IVAR____TtC8VideosUI25LandingPageViewController_cachedDSID;
  *(v2 + v9) = [objc_opt_self() DSID];
  v10 = OBJC_IVAR____TtC8VideosUI25LandingPageViewController_landingPagePerformanceReporter;
  type metadata accessor for PagePerformanceReporter();
  *(v2 + v10) = sub_1E3C678AC();
  v15 = type metadata accessor for LandingPageViewController();
  OUTLINED_FUNCTION_25();
  v13 = objc_msgSendSuper2(v11, v12, v2, v15);
  *&v13[OBJC_IVAR____TtC8VideosUI25LandingPageViewController_document] = a1;

  return v13;
}

uint64_t type metadata accessor for LandingPageViewController()
{
  result = qword_1EE2964A0;
  if (!qword_1EE2964A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3F58480()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC8VideosUI25LandingPageViewController_collectionImpressioner;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI25LandingPageViewController_recentlySearchedCollectionViewModel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI25LandingPageViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8VideosUI25LandingPageViewController_pageMetrics) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI25LandingPageViewController_document) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI25LandingPageViewController_activeServiceRequest) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI25LandingPageViewController_activeServiceRequestCancellable) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI25LandingPageViewController_stackViewController) = 0;
  v3 = OBJC_IVAR____TtC8VideosUI25LandingPageViewController_lastRefreshTime;
  v4 = sub_1E41FE5D4();
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = v0 + OBJC_IVAR____TtC8VideosUI25LandingPageViewController_refreshTTL;
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = OBJC_IVAR____TtC8VideosUI25LandingPageViewController_notificationCenter;
  *(v1 + v6) = [objc_opt_self() defaultCenter];
  *(v1 + OBJC_IVAR____TtC8VideosUI25LandingPageViewController_hasFetchedBubbleTipBefore) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI25LandingPageViewController_bubbleTipFetchCompletion) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI25LandingPageViewController_currentTemplateViewModel) = 0;
  v7 = OBJC_IVAR____TtC8VideosUI25LandingPageViewController_cachedDSID;
  *(v1 + v7) = [objc_opt_self() DSID];
  v8 = OBJC_IVAR____TtC8VideosUI25LandingPageViewController_landingPagePerformanceReporter;
  type metadata accessor for PagePerformanceReporter();
  *(v1 + v8) = sub_1E3C678AC();
  sub_1E42076B4();
  __break(1u);
}

uint64_t sub_1E3F58644(char a1)
{
  v11.receiver = v1;
  v11.super_class = type metadata accessor for LandingPageViewController();
  objc_msgSendSuper2(&v11, sel_vui_viewWillAppear_, a1 & 1);
  [*&v1[OBJC_IVAR____TtC8VideosUI25LandingPageViewController_notificationCenter] removeObserver:v1 name:*MEMORY[0x1E69DF7E8] object:0];
  v3 = OUTLINED_FUNCTION_27_86();
  [v3 v4];
  NSNotificationName.VUIAuthenticationManagerAccountStoreDidChange.unsafeMutableAddressor();
  v5 = OUTLINED_FUNCTION_27_86();
  [v5 v6];
  sub_1E3B58234();

  v7 = sub_1E4205ED4();

  v8 = OUTLINED_FUNCTION_27_86();
  [v8 v9];

  return sub_1E3F58758();
}

uint64_t sub_1E3F58758()
{
  v1 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v41 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_6();
  MEMORY[0x1EEE9AC00](v4);
  v40 = &v39 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  MEMORY[0x1EEE9AC00](v6 - 8);
  OUTLINED_FUNCTION_4_6();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v39 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v39 - v14;
  v16 = OBJC_IVAR____TtC8VideosUI25LandingPageViewController_lastRefreshTime;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  sub_1E3294EE4(v0 + v16, v15, &unk_1ECF28E20);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v1);
  sub_1E325F6F0(v15, &unk_1ECF28E20);
  if (EnumTagSinglePayload == 1)
  {
    OUTLINED_FUNCTION_12_5();
    (*(v18 + 688))();
    sub_1E41FE5C4();
LABEL_3:
    __swift_storeEnumTagSinglePayload(v12, 0, 1, v1);
    swift_beginAccess();
    sub_1E37FA198(v12, v0 + v16, &unk_1ECF28E20);
    return swift_endAccess();
  }

  sub_1E3294EE4(v0 + v16, v9, &unk_1ECF28E20);
  if (__swift_getEnumTagSinglePayload(v9, 1, v1) == 1)
  {
    sub_1E325F6F0(v9, &unk_1ECF28E20);
  }

  else
  {
    v21 = v40;
    v20 = v41;
    (*(v41 + 32))(v40, v9, v1);
    if (*(v0 + OBJC_IVAR____TtC8VideosUI25LandingPageViewController_refreshTTL + 8))
    {
      (*(v20 + 8))(v21, v1);
    }

    else
    {
      v22 = *(v0 + OBJC_IVAR____TtC8VideosUI25LandingPageViewController_refreshTTL);
      sub_1E41FE5C4();
      sub_1E41FE4F4();
      v24 = v23;
      v25 = *(v20 + 8);
      v26 = OUTLINED_FUNCTION_57();
      v25(v26);
      if (v22 < v24)
      {
        OUTLINED_FUNCTION_12_5();
        (*(v27 + 688))();
        sub_1E41FE5C4();
        (v25)(v21, v1);
        goto LABEL_3;
      }

      (v25)(v21, v1);
    }
  }

  OUTLINED_FUNCTION_12_5();
  v28 += 76;
  v29 = *v28;
  result = (*v28)();
  if (result)
  {

    if ((v29)(v30))
    {
      OUTLINED_FUNCTION_47_0();
      v32 = (*(v31 + 464))();
      if (v32)
      {
        v33 = v32;
        result = sub_1E32AE9B0(v32);
        if (result)
        {
          if ((v33 & 0xC000000000000001) != 0)
          {
            MEMORY[0x1E6911E60](0, v33);
          }

          else
          {
            if (!*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              return result;
            }
          }

          type metadata accessor for UnifiedMessagingViewModel();
          v34 = swift_dynamicCastClass();

          if (v34)
          {
            OUTLINED_FUNCTION_47_0();
            v36 = (*(v35 + 480))(v42);
            if (*v37)
            {
              sub_1E37EF010(0);
            }

            v36(v42, 0);
          }
        }

        else
        {
        }
      }
    }

    OUTLINED_FUNCTION_12_5();
    (*(v38 + 608))();
    sub_1E3F5A1CC();
  }

  return result;
}

id sub_1E3F58CF4(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for LandingPageViewController();
  objc_msgSendSuper2(&v4, sel_vui_viewWillDisappear_, a1 & 1);
  return [*&v1[OBJC_IVAR____TtC8VideosUI25LandingPageViewController_notificationCenter] removeObserver:v1 name:*MEMORY[0x1E69DF7E8] object:0];
}

uint64_t sub_1E3F58DB0(char a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for LandingPageViewController();
  v3 = objc_msgSendSuper2(&v6, sel_vui_viewDidDisappear_, a1 & 1);
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x290))(v3);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_35_6();
  v4();
}

void sub_1E3F58EB8()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for LandingPageViewController();
  objc_msgSendSuper2(&v3, sel_vui_viewDidLayoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC8VideosUI25LandingPageViewController_stackViewController];
  v2 = v1;
  sub_1E3F58F20(v1);
}

id sub_1E3F58F20(id result)
{
  if (!result)
  {
    return result;
  }

  v2 = v1;
  v3 = result;
  result = [v3 vuiView];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = result;
  result = [v2 vuiView];
  if (!result)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  v5 = result;
  [result bounds];
  OUTLINED_FUNCTION_3();

  v6 = OUTLINED_FUNCTION_6();
  [v7 v8];

  v9 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x1A0);
  v10 = v3;
  v9(v17);

  if (v17[3])
  {
    sub_1E327F454(v17, v15);
    sub_1E325F6F0(v17, &unk_1ECF296D0);
    v11 = v16;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    result = [v2 vuiView];
    if (result)
    {
      v12 = result;
      [result bounds];
      OUTLINED_FUNCTION_3();

      v13 = OUTLINED_FUNCTION_6();
      v14(v11, v13);

      return __swift_destroy_boxed_opaque_existential_1(v15);
    }

    goto LABEL_11;
  }

  return sub_1E325F6F0(v17, &unk_1ECF296D0);
}

void sub_1E3F59150()
{
  if (*(v0 + OBJC_IVAR____TtC8VideosUI25LandingPageViewController_document))
  {
    v1 = OBJC_IVAR____TtC8VideosUI25LandingPageViewController_activeServiceRequest;
    if (*(v0 + OBJC_IVAR____TtC8VideosUI25LandingPageViewController_activeServiceRequest))
    {
      OUTLINED_FUNCTION_8();
      v3 = *(v2 + 376);

      v3(v4);
    }

    else
    {
    }

    type metadata accessor for PagePerformanceReporter();
    sub_1E3C678AC();
    OUTLINED_FUNCTION_36_3();
    v5 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & v6) + 0x298))();
    OUTLINED_FUNCTION_36_3();
    v8 = *((*v5 & v7) + 0x290);
    v8();
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_35_6();
    v9();

    type metadata accessor for SearchFragmentRequestContext();
    memset(v21, 0, sizeof(v21));
    v22 = 0;

    v11 = sub_1E3EA42FC(v10, 0, 0, 4uLL, 0, 0, 0, 1, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAE0);
    v12 = sub_1E37B2A00(v11);
    *(v0 + v1) = v12;

    v14 = (v8)(v13);
    (*(*v12 + 304))(v14);

    (v8)(v15);
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_35_6();
    v16();

    v17 = *(v0 + v1);
    if (v17)
    {
      v18 = *(*v17 + 352);

      v18(v19);
      OUTLINED_FUNCTION_16_5();

      OUTLINED_FUNCTION_4_0();
      v20 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v17 = sub_1E41EC148(sub_1E3F5A1C4, v20);
    }

    *(v0 + OBJC_IVAR____TtC8VideosUI25LandingPageViewController_activeServiceRequestCancellable) = v17;
  }
}

void sub_1E3F594D8()
{
  OUTLINED_FUNCTION_31_1();
  v101 = v1;
  OUTLINED_FUNCTION_118();
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  v97 = v6 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v94[-v9];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v94[-v12];
  v14 = *(v0 + 8);
  v100 = *v0;
  v96 = v14;
  v95 = *(v0 + 16);
  LODWORD(v98) = *(v0 + 17);
  v15 = sub_1E324FBDC();
  v16 = v2;
  v99 = *(v4 + 16);
  (v99)(v13, v15, v2);
  v17 = sub_1E41FFC94();
  v18 = sub_1E42067E4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = OUTLINED_FUNCTION_125_0();
    *v19 = 0;
    _os_log_impl(&dword_1E323F000, v17, v18, "Search Landing: Received fetch search landing page response", v19, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  v20 = *(v4 + 8);
  v21 = v16;
  (v20)(v13, v16);
  if (v98)
  {
    v98 = v20;
    *&v106[0] = sub_1E3F6FB3C(v100, v96, v95);
    *(&v106[0] + 1) = v22;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960);
    sub_1E4148C68(sub_1E394A5A0, v23, v107);

    v25 = v107[0];
    v24 = v107[1];
    v26 = v97;
    (v99)(v97, v15, v21);

    v27 = sub_1E41FFC94();
    v28 = sub_1E42067E4();

    v29 = v21;
    if (os_log_type_enabled(v27, v28))
    {
      v30 = OUTLINED_FUNCTION_6_21();
      v31 = swift_slowAlloc();
      v107[0] = v31;
      *v30 = 136315138;
      v32 = sub_1E3270FC8(v25, v24, v107);

      *(v30 + 4) = v32;
      _os_log_impl(&dword_1E323F000, v27, v28, "Search Landing: Landing Fetch was a failure - Error: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      (v98)(v26, v29);
    }

    else
    {

      (v98)(v26, v21);
    }

    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      *&Strong[OBJC_IVAR____TtC8VideosUI25LandingPageViewController_activeServiceRequest] = 0;
    }

    v49 = objc_opt_self();
    if (([v49 isTV] & 1) != 0 || (objc_msgSend(v49, sel_isMac) & 1) != 0 || (sub_1E39DFFC8() & 1) != 0 && objc_msgSend(v49, sel_isPad))
    {
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      v50 = swift_unknownObjectWeakLoadStrong();
      if (v50)
      {
        v49 = v50;
        sub_1E3F5A1CC();
      }
    }

LABEL_76:
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      OUTLINED_FUNCTION_4_224();
      (*(v91 + 656))();

      OUTLINED_FUNCTION_47_0();
      OUTLINED_FUNCTION_35_6();
      v92();
    }

    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v93 = swift_unknownObjectWeakLoadStrong();
    if (v93)
    {
      *&v93[OBJC_IVAR____TtC8VideosUI25LandingPageViewController_activeServiceRequestCancellable] = 0;
    }

    OUTLINED_FUNCTION_25_2();
    return;
  }

  (v99)(v10, v15, v16);
  v33 = sub_1E41FFC94();
  v34 = sub_1E42067E4();
  if (OUTLINED_FUNCTION_104(v34))
  {
    v35 = OUTLINED_FUNCTION_125_0();
    *v35 = 0;
    _os_log_impl(&dword_1E323F000, v33, v34, "Landing Fetch was success", v35, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  (v20)(v10, v16);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v36 = swift_unknownObjectWeakLoadStrong();
  v37 = v100;
  v38 = MEMORY[0x1E69E7D40];
  if (v36)
  {
    OUTLINED_FUNCTION_4_224();
    v40 = (*(v39 + 656))();

    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    OUTLINED_FUNCTION_47_0();
    v42 = *(v41 + 216);

    v33 = v40;
    v42(v43);
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v44 = *(v37 + 32);
  if (!v44)
  {
    v49 = objc_opt_self();
    if (([v49 isTV] & 1) != 0 || (objc_msgSend(v49, sel_isMac) & 1) != 0 || (sub_1E39DFFC8() & 1) != 0 && objc_msgSend(v49, sel_isPad))
    {
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      v51 = swift_unknownObjectWeakLoadStrong();
      if (v51)
      {
        v49 = v51;
        sub_1E3F5A1CC();
      }
    }

    goto LABEL_74;
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_4_224();
    v46 = *(v45 + 616);
    v47 = swift_retain_n();
    v46(v47);
  }

  else
  {
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v52 = swift_unknownObjectWeakLoadStrong();
  if (v52)
  {
    v53 = v52;
    v54 = (*((*v38 & *v52) + 0x290))();

    v55 = *(*v44 + 576);

    v55(v56);
    OUTLINED_FUNCTION_16_5();

    OUTLINED_FUNCTION_8();
    (*(v57 + 304))(v107);

    memcpy(v106, v107, 0x70uLL);
    memcpy(v107, v106, sizeof(v107));
    (*(*v54 + 224))(v107);
    sub_1E325F6F0(v106, &qword_1ECF39098);
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v58 = swift_unknownObjectWeakLoadStrong();
  if (!v58)
  {
LABEL_67:
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v81 = swift_unknownObjectWeakLoadStrong();
    if (v81)
    {
      v82 = v81;
      v83 = *(*v44 + 648);

      v83(v84);
      OUTLINED_FUNCTION_16_5();

      *&v82[OBJC_IVAR____TtC8VideosUI25LandingPageViewController_document] = v44;
    }

    v49 = *sub_1E3DBF020();
    OUTLINED_FUNCTION_8();
    v86 = *(v85 + 136);

    v86(v37);

    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      OUTLINED_FUNCTION_4_224();
      v88 = *(v87 + 616);

      v88(v89);
    }

    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      OUTLINED_FUNCTION_16_5();

      sub_1E3F5A1CC();
    }

    else
    {
    }

LABEL_74:
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v90 = swift_unknownObjectWeakLoadStrong();
    if (v90)
    {
      v49 = *&v90[OBJC_IVAR____TtC8VideosUI25LandingPageViewController_activeServiceRequest];
      *&v90[OBJC_IVAR____TtC8VideosUI25LandingPageViewController_activeServiceRequest] = 0;
    }

    goto LABEL_76;
  }

  v59 = v58;
  v60 = sub_1E410F744();
  if (!v60)
  {
LABEL_66:

    goto LABEL_67;
  }

  v61 = v60;
  if (!*(v60 + 16))
  {

    goto LABEL_66;
  }

  v62 = 0;
  v63 = v60 + 64;
  v64 = 1 << *(v60 + 32);
  v65 = -1;
  if (v64 < 64)
  {
    v65 = ~(-1 << v64);
  }

  v66 = v65 & *(v60 + 64);
  v98 = &v59[OBJC_IVAR____TtC8VideosUI25LandingPageViewController_refreshTTL];
  v99 = v59;
  v67 = (v64 + 63) >> 6;
  while (v66)
  {
    v68 = v62;
LABEL_42:
    v69 = __clz(__rbit64(v66));
    v66 &= v66 - 1;
    v70 = v69 | (v68 << 6);
    v71 = (*(v61 + 48) + 16 * v70);
    v73 = *v71;
    v72 = v71[1];
    sub_1E328438C(*(v61 + 56) + 32 * v70, v108);
    *&v109 = v73;
    *(&v109 + 1) = v72;
    sub_1E329504C(v108, &v110);

LABEL_43:
    v106[0] = v109;
    v106[1] = v110;
    v106[2] = v111;
    if (!*(&v109 + 1))
    {

      v37 = v100;
      v59 = v99;
      goto LABEL_66;
    }

    sub_1E329504C(&v106[1], &v109);
    v74 = sub_1E3CB1984();
    if (v74 == 33)
    {
      goto LABEL_59;
    }

    v103 = v74;
    v102 = 1;
    sub_1E3F5C540();
    sub_1E4206254();
    sub_1E4206254();
    if (*&v108[0] == v104 && *(&v108[0] + 1) == v105)
    {
    }

    else
    {
      v76 = sub_1E42079A4();

      if ((v76 & 1) == 0)
      {
        goto LABEL_59;
      }
    }

    sub_1E328438C(&v109, v108);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_59:
      __swift_destroy_boxed_opaque_existential_1(&v109);
    }

    else
    {
      v77 = v104;
      if (!*(v104 + 16) || (v78 = sub_1E327D33C(0x65756C6176, 0xE500000000000000), (v79 & 1) == 0))
      {

        goto LABEL_59;
      }

      sub_1E328438C(*(v77 + 56) + 32 * v78, v108);
      __swift_destroy_boxed_opaque_existential_1(&v109);

      if (swift_dynamicCast())
      {
        v80 = v98;
        *v98 = v104;
        v80[8] = 0;
      }
    }
  }

  while (1)
  {
    v68 = v62 + 1;
    if (__OFADD__(v62, 1))
    {
      break;
    }

    if (v68 >= v67)
    {
      v66 = 0;
      v110 = 0u;
      v111 = 0u;
      v109 = 0u;
      goto LABEL_43;
    }

    v66 = *(v63 + 8 * v68);
    ++v62;
    if (v66)
    {
      v62 = v68;
      goto LABEL_42;
    }
  }

  __break(1u);
}

void sub_1E3F5A1CC()
{
  OUTLINED_FUNCTION_31_1();
  v44 = v0;
  OUTLINED_FUNCTION_118();
  v42 = sub_1E4203FC4();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v43 = v4 - v3;
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  v11 = (v9 - v10);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v40 - v13;
  v15 = sub_1E324FBDC();
  v16 = *(v7 + 16);
  v16(v14, v15, v5);
  v17 = sub_1E41FFC94();
  v18 = sub_1E4206814();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = OUTLINED_FUNCTION_125_0();
    v41 = v15;
    *v19 = 0;
    _os_log_impl(&dword_1E323F000, v17, v18, "LandingPage:: populateStackTemplate", v19, 2u);
    v15 = v41;
    OUTLINED_FUNCTION_6_0();
  }

  v20 = *(v7 + 8);
  v20(v14, v5);
  sub_1E3F5B444();
  v22 = v21;
  if (!v21)
  {
    v16(v11, v15, v5);
    v23 = sub_1E41FFC94();
    v24 = sub_1E42067F4();
    if (OUTLINED_FUNCTION_104(v24))
    {
      v25 = OUTLINED_FUNCTION_125_0();
      *v25 = 0;
      _os_log_impl(&dword_1E323F000, v23, v24, "Unable to create combined landing and search history page", v25, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    v20(v11, v5);

    v22 = v1;
  }

  v26 = [objc_opt_self() isSearchEnabled];
  if (v22)
  {
    v27 = v26;
    OUTLINED_FUNCTION_4_0();
    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = swift_allocObject();
    *(v29 + 16) = v28;
    *(v29 + 24) = v27;
    *(v29 + 32) = v22;
    OUTLINED_FUNCTION_2_12(v29);
    OUTLINED_FUNCTION_2_62(COERCE_DOUBLE(1107296256));
    v46[2] = v30;
    v46[3] = &block_descriptor_34_2;
    _Block_copy(v46);
    v45 = MEMORY[0x1E69E7CC0];
    sub_1E37E7A8C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
    sub_1E378AD28();
    sub_1E42072E4();
    sub_1E4204054();
    swift_allocObject();
    v31 = sub_1E4204024();

    if (v27)
    {
      OUTLINED_FUNCTION_26_105();
      v32 += 73;
      v33 = *v32;
      if ((*v32)())
      {

        if ((v33)(v34))
        {
          sub_1E4204034();
        }

        OUTLINED_FUNCTION_26_105();
        (*(v35 + 592))(0);
      }

      OUTLINED_FUNCTION_26_105();
      v37 = *(v36 + 592);

      v37(v38);
      v39 = *_s8VideosUIAAC33initializeUnifiedMessagingManageryyFZ_0();
      sub_1E3B5AF70(v31, 1);
    }

    else
    {
      sub_1E4204044();
    }
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F5A678(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for LandingPageViewController();
  objc_msgSendSuper2(&v4, sel_vui_willMoveToParentViewController_, a1);
  v3 = *&v1[OBJC_IVAR____TtC8VideosUI25LandingPageViewController_stackViewController];
  if (a1)
  {
    sub_1E3F5A904();
  }

  else
  {
    sub_1E3F5A6F4();
  }
}

void sub_1E3F5A6F4()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_118();
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  sub_1E324FBDC();
  v6 = OUTLINED_FUNCTION_101();
  v7(v6);
  v8 = v1;
  v9 = sub_1E41FFC94();
  v10 = sub_1E4206814();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = OUTLINED_FUNCTION_6_21();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v8;
    *v12 = v1;
    v13 = v8;
    OUTLINED_FUNCTION_54_1(&dword_1E323F000, v14, v15, "SearchController::LandingPage:: removing stack vc %@");
    sub_1E325F6F0(v12, &unk_1ECF28E30);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  (*(v4 + 8))(v0, v2);
  if (!v1)
  {
    goto LABEL_6;
  }

  [v8 vui:0 willMoveToParentViewController:?];
  v16 = [v8 vuiView];
  if (v16)
  {
    v17 = v16;
    [v16 vui_removeFromSuperView];

    [v8 vui_removeFromParentViewController];
LABEL_6:
    OUTLINED_FUNCTION_12_5();
    (*(v18 + 656))();
    sub_1E3C6979C();

    OUTLINED_FUNCTION_25_2();
    return;
  }

  __break(1u);
}

void sub_1E3F5A904()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  OUTLINED_FUNCTION_118();
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  if (!v1)
  {
    goto LABEL_10;
  }

  v25 = v1;
  v7 = [v25 parentViewController];
  if (!v7)
  {
    sub_1E324FBDC();
    v10 = OUTLINED_FUNCTION_101();
    v11(v10);
    v12 = v25;
    v13 = sub_1E41FFC94();
    v14 = sub_1E4206814();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = OUTLINED_FUNCTION_6_21();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      *(v15 + 4) = v12;
      *v16 = v1;
      v17 = v12;
      OUTLINED_FUNCTION_54_1(&dword_1E323F000, v18, v19, "SearchController::LandingPage:: adding stack vc %@");
      sub_1E325F6F0(v16, &unk_1ECF28E30);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v5 + 8))(v0, v3);
    [v0 vui:v12 addChildViewController:?];
    v20 = v12;
    sub_1E3F58F20(v1);

    v21 = [v0 vuiView];
    if (!v21)
    {
      __break(1u);
      return;
    }

    v22 = v21;
    v23 = [v20 vuiView];

    [v22 vui:v23 addSubview:0 oldView:?];
    [v20 vui:v2 didMoveToParentViewController:?];
    OUTLINED_FUNCTION_36_3();
    (*((*MEMORY[0x1E69E7D40] & v24) + 0x290))();
    sub_1E3C69720();

LABEL_10:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F5AC3C(char a1, char a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC8VideosUI25LandingPageViewController_stackViewController);
  if (v3)
  {
    v6 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x5F0);
    v7 = v3;
    v6(a1 & 1, a2 & 1);
  }
}

uint64_t sub_1E3F5AD60()
{
  sub_1E325F6F0(v0 + OBJC_IVAR____TtC8VideosUI25LandingPageViewController_collectionImpressioner, &unk_1ECF296D0);

  sub_1E32AF6F8(v0 + OBJC_IVAR____TtC8VideosUI25LandingPageViewController_delegate);

  sub_1E325F6F0(v0 + OBJC_IVAR____TtC8VideosUI25LandingPageViewController_lastRefreshTime, &unk_1ECF28E20);
}

id sub_1E3F5AE80()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LandingPageViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_1E3F5B090(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  OUTLINED_FUNCTION_21();
  v2[4] = (*(v3 + 328))();
  return sub_1E37BCF0C;
}

void sub_1E3F5B130(uint64_t a1, void *a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_21();
    v5 = *(v4 + 360);
    v11 = a2;
    if (v5())
    {
      v7 = v6;
      ObjectType = swift_getObjectType();
      v9 = *(v7 + 8);
      v10 = v11;
      v9(a1, a2, ObjectType, v7);
      swift_unknownObjectRelease();
    }
  }
}

void sub_1E3F5B238()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  sub_1E324FBDC();
  v4 = OUTLINED_FUNCTION_101();
  v5(v4);
  v6 = v2;
  v7 = sub_1E41FFC94();
  v8 = sub_1E4206814();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = OUTLINED_FUNCTION_6_21();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&dword_1E323F000, v7, v8, "SearchController::LandingPage:: did host stack cv %@", v9, 0xCu);
    sub_1E325F6F0(v10, &unk_1ECF28E30);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  v12 = OUTLINED_FUNCTION_57();
  v13(v12);
  sub_1E4206934();
  OUTLINED_FUNCTION_36_3();
  if ((*((*MEMORY[0x1E69E7D40] & v14) + 0x168))())
  {
    v16 = v15;
    ObjectType = swift_getObjectType();
    (*(v16 + 16))(v6, v0, ObjectType, v16);
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F5B444()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  sub_1E324FBDC();
  v4 = OUTLINED_FUNCTION_101();
  v5(v4);
  v6 = sub_1E41FFC94();
  v7 = sub_1E4206814();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_125_0();
    *v8 = 0;
    _os_log_impl(&dword_1E323F000, v6, v7, "LandingPage:: getCombinedRecentAndLandingPage", v8, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  v9 = OUTLINED_FUNCTION_57();
  v11 = v10(v9);
  v12 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x150))(v11);
  if (!v12)
  {

    goto LABEL_56;
  }

  v13 = v12;
  v14 = *(v0 + OBJC_IVAR____TtC8VideosUI25LandingPageViewController_document);
  v15 = *(*v12 + 656);

  v15(v14);
  if (!v2)
  {
    type metadata accessor for TemplateViewModel();
    sub_1E410D4C8();
    v21 = v20;
    if (v20)
    {
      OUTLINED_FUNCTION_111();
      v23 = *(v22 + 472);
      swift_retain_n();
      v23(MEMORY[0x1E69E7CC0]);
      v25 = (*(*v21 + 480))(v49);
      if (*v24)
      {
        v26 = v24;
        MEMORY[0x1E6910BF0]();
        sub_1E38C5A18(*((*v26 & 0xFFFFFFFFFFFFFF8) + 0x10));
        sub_1E4206324();
      }

      else
      {
      }

      v25(v49, 0);

      goto LABEL_55;
    }

LABEL_56:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  OUTLINED_FUNCTION_111();
  v17 = *(v16 + 464);
  v18 = swift_retain_n();
  if ((v17)(v18))
  {
  }

  else
  {
    OUTLINED_FUNCTION_111();
    v19 = (*(v27 + 472))(MEMORY[0x1E69E7CC0]);
  }

  v28 = (v17)(v19);
  if (v28)
  {
    v29 = v28;
    v30 = sub_1E32AE9B0(v28);
    if (v30)
    {
      v31 = v30;
      v48 = v17;
      v32 = 0;
      while (1)
      {
        if ((v29 & 0xC000000000000001) != 0)
        {
          v33 = MEMORY[0x1E6911E60](v32, v29);
        }

        else
        {
          if (v32 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_58;
          }

          v33 = *(v29 + 8 * v32 + 32);
        }

        v34 = *(v33 + 24);
        v35 = *(v13 + 24);
        if (v34)
        {
          if (v35)
          {
            if (*(v33 + 16) == *(v13 + 16) && v34 == v35)
            {

LABEL_39:
              OUTLINED_FUNCTION_111();
              v40 = (*(v39 + 480))(v49);
              if (*v41)
              {
                sub_1E37EF010(v32);
              }

              v40(v49, 0);
LABEL_42:
              v17 = v48;
              goto LABEL_43;
            }

            v37 = sub_1E42079A4();

            if (v37)
            {
              goto LABEL_37;
            }
          }

          else
          {
          }
        }

        else
        {

          if (!v35)
          {
LABEL_37:

            goto LABEL_39;
          }
        }

        v38 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          break;
        }

        ++v32;
        if (v38 == v31)
        {

          goto LABEL_42;
        }
      }

      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }
  }

LABEL_43:
  v42 = v17();
  if (!v42)
  {
LABEL_50:
    v43 = 0;
    goto LABEL_51;
  }

  v29 = v42;
  if (!sub_1E32AE9B0(v42))
  {

    goto LABEL_50;
  }

  if ((v29 & 0xC000000000000001) != 0)
  {
LABEL_59:
    MEMORY[0x1E6911E60](0, v29);
    goto LABEL_48;
  }

  if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_48:

    type metadata accessor for UnifiedMessagingViewModel();
    v43 = swift_dynamicCastClass() != 0;

LABEL_51:
    OUTLINED_FUNCTION_111();
    v45 = (*(v44 + 480))(v49);
    v47 = *v46;
    if (v47)
    {
      sub_1E37EFABC(v43, v47);
      sub_1E3BAE054(v43, v43, v13);
    }

    else
    {
    }

    v45(v49, 0);

LABEL_55:

    goto LABEL_56;
  }

  __break(1u);
}

id sub_1E3F5BA68()
{
  result = [v0 parentViewController];
  if (result)
  {

    return sub_1E3F58758();
  }

  return result;
}

void sub_1E3F5BACC()
{
  OUTLINED_FUNCTION_31_1();
  v1 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  v8 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  sub_1E32ADE38();
  v15 = sub_1E4206A04();
  OUTLINED_FUNCTION_4_0();
  v16 = swift_allocObject();
  *(v16 + 16) = v0;
  OUTLINED_FUNCTION_2_12(v16);
  OUTLINED_FUNCTION_2_62(COERCE_DOUBLE(1107296256));
  v20[2] = v17;
  v20[3] = &block_descriptor_27_3;
  v18 = _Block_copy(v20);
  v19 = v0;

  sub_1E4203FE4();
  v20[0] = MEMORY[0x1E69E7CC0];
  sub_1E37E7A8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
  sub_1E378AD28();
  OUTLINED_FUNCTION_25_91();
  OUTLINED_FUNCTION_31_78();
  _Block_release(v18);

  (*(v3 + 8))(v7, v1);
  (*(v10 + 8))(v14, v8);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F5BCB8()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v41 = v3;
  v42 = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4_6();
  v6 = (v4 - v5);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v40 - v8;
  v10 = objc_opt_self();
  v11 = [v10 DSID];
  v12 = MEMORY[0x1E69E7D40];
  v13 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x278);
  v14 = v13();
  if (v14)
  {
  }

  else if (v11)
  {
LABEL_9:
    v20 = 1;
    goto LABEL_12;
  }

  v15 = v13();
  if (v15)
  {

    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v16 = v13();
  if (v16)
  {
    v17 = v16;
    if (v11)
    {
      v18 = v11;
      v19 = [v17 isEqualToNumber_];

      v20 = v19 ^ 1;
      goto LABEL_12;
    }
  }

  v20 = 0;
LABEL_12:
  v21 = *((*v12 & *v1) + 0x280);
  v43 = v11;
  v21(v11);
  if (v20)
  {
    sub_1E3DBF020();
    OUTLINED_FUNCTION_8();
    v23 = *(v22 + 144);

    v23(v24);

    (*((*v12 & *v1) + 0x2B0))(v25);
    v26 = [v10 userHasActiveAccount];
    v27 = sub_1E324FBDC();
    v28 = v41;
    v29 = *(v41 + 16);
    if (v26)
    {
      v30 = v42;
      v29(v9, v27, v42);
      v31 = sub_1E41FFC94();
      v32 = sub_1E4206814();
      if (OUTLINED_FUNCTION_104(v32))
      {
        v33 = OUTLINED_FUNCTION_125_0();
        *v33 = 0;
        _os_log_impl(&dword_1E323F000, v31, v32, "SearchController::LandingPage:: signin new account)", v33, 2u);
        OUTLINED_FUNCTION_6_0();
      }

      else
      {
      }

      (*(v28 + 8))(v9, v30);
    }

    else
    {
      v36 = v42;
      v29(v6, v27, v42);
      v37 = sub_1E41FFC94();
      v38 = sub_1E4206814();
      if (OUTLINED_FUNCTION_104(v38))
      {
        v39 = OUTLINED_FUNCTION_125_0();
        *v39 = 0;
        _os_log_impl(&dword_1E323F000, v37, v38, "SearchController::LandingPage:: signout)", v39, 2u);
        OUTLINED_FUNCTION_6_0();
      }

      else
      {
      }

      (*(v28 + 8))(v6, v36);
    }

    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    OUTLINED_FUNCTION_25_2();
  }
}

uint64_t sub_1E3F5C0D0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_118();
  v6 = sub_1E41FDF34();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  sub_1E41FDEE4();
  v13 = v4;
  a4();

  return (*(v8 + 8))(v12, v6);
}

void sub_1E3F5C1A4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  v8 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  sub_1E32ADE38();
  v15 = sub_1E4206A04();
  OUTLINED_FUNCTION_4_0();
  v16 = swift_allocObject();
  *(v16 + 16) = v0;
  OUTLINED_FUNCTION_2_12(v16);
  OUTLINED_FUNCTION_2_62(COERCE_DOUBLE(1107296256));
  v20[2] = v17;
  v20[3] = &block_descriptor_138;
  v18 = _Block_copy(v20);
  v19 = v0;

  sub_1E4203FE4();
  v20[0] = MEMORY[0x1E69E7CC0];
  sub_1E37E7A8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
  sub_1E378AD28();
  OUTLINED_FUNCTION_25_91();
  OUTLINED_FUNCTION_31_78();
  _Block_release(v18);

  (*(v3 + 8))(v7, v1);
  (*(v10 + 8))(v14, v8);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F5C450()
{
  sub_1E3273C28();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1E3F5C540()
{
  result = qword_1EE254C58;
  if (!qword_1EE254C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE254C58);
  }

  return result;
}

void sub_1E3F5C594()
{
  OUTLINED_FUNCTION_31_1();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (v1)
    {
      v5 = *_s8VideosUIAAC33initializeUnifiedMessagingManageryyFZ_0();
      v6 = OBJC_IVAR____TtC8VideosUI23UnifiedMessagingManager_recentlySearchedBubbleTipViewController;
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      v7 = *(v5 + v6);
      if (v7)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1E429A240;
        *(inited + 32) = 25705;
        *(inited + 40) = 0xE200000000000000;
        v9 = v7;
        v10 = sub_1E3B58270();
        v11 = v10[1];
        v12 = MEMORY[0x1E69E6158];
        *(inited + 48) = *v10;
        *(inited + 56) = v11;
        *(inited + 72) = v12;
        *(inited + 80) = 0x7475626972747461;
        *(inited + 88) = 0xEA00000000007365;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0);
        v13 = swift_initStackObject();
        *(v13 + 16) = xmmword_1E4297BE0;

        v14 = sub_1E3B5827C();
        v16 = *v14;
        v15 = *(v14 + 1);
        *(v13 + 32) = v16;
        *(v13 + 40) = v15;

        v17 = sub_1E3B58264();
        v19 = *v17;
        v18 = v17[1];
        *(v13 + 48) = v19;
        *(v13 + 56) = v18;

        v20 = sub_1E4205CB4();
        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C770);
        *(inited + 96) = v20;
        *(inited + 120) = v21;
        *(inited + 128) = 0x6E6572646C696863;
        *(inited + 136) = 0xE800000000000000;
        v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF311C8);
        *(inited + 144) = MEMORY[0x1E69E7CC0];
        *(inited + 168) = v22;
        *(inited + 176) = 0x4B6E65646C696863;
        *(inited + 184) = 0xEA00000000007965;
        *(inited + 192) = 0x6E6572646C696863;
        *(inited + 200) = 0xE800000000000000;
        *(inited + 216) = v12;
        *(inited + 224) = 0xD000000000000015;
        *(inited + 232) = 0x80000001E4274B90;
        *(inited + 264) = MEMORY[0x1E69E6370];
        *(inited + 240) = 1;
        v23 = sub_1E4205CB4();
        type metadata accessor for UnifiedMessagingBubbleTipViewModel();

        v24 = sub_1E375D8A0(137, v23, v2);
        if (v24)
        {
          v25 = v24;
          v26 = *(*v24 + 880);
          v27 = v4;

          v26(v4, &off_1F5D8EA28);
          v28 = *(*v25 + 904);
          v29 = v9;
          v28(v7);

          v30 = (*(*v2 + 480))(v66);
          v32 = *v31;
          if (v32)
          {
            sub_1E37EFABC(0, v32);

            sub_1E3BAE054(0, 0, v25);
          }

          v30(v66, 0);
        }
      }
    }

    v33 = OBJC_IVAR____TtC8VideosUI25LandingPageViewController_stackViewController;
    v34 = *&v4[OBJC_IVAR____TtC8VideosUI25LandingPageViewController_stackViewController];
    v35 = MEMORY[0x1E69E7D40];
    if (v34)
    {
      v36 = v34;
      j__OUTLINED_FUNCTION_18();
      sub_1E404BB24();
    }

    else
    {
      OUTLINED_FUNCTION_18_1();
      v37 += 82;
      v38 = *v37;
      (*v37)();
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_35_6();
      v39();

      type metadata accessor for SearchStackViewController();

      v40 = sub_1E3E67BE4();
      v41 = *&v4[v33];
      *&v4[v33] = v40;

      v38();
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_35_6();
      v42();

      v43 = *&v4[v33];
      if (v43 && (OUTLINED_FUNCTION_21(), v45 = *(v44 + 1368), v46 = v4, v47 = v43, v45(v4, &off_1F5D8EA10), v47, (v48 = *&v4[v33]) != 0))
      {
        v49 = *((*v35 & *v48) + 0x1A0);
        v50 = v48;
        v49(v66);
      }

      else
      {
        memset(v66, 0, 40);
      }

      OUTLINED_FUNCTION_18_1();
      (*(v51 + 320))(v66);
    }

    OUTLINED_FUNCTION_47_0();
    v52 += 72;
    v53 = *v52;
    (*v52)();
    OUTLINED_FUNCTION_36_3();
    v55 = (*((*v35 & v54) + 0x188))();
    v56 = (v53)(v55);
    if (v56)
    {
      v57 = v56;
      OUTLINED_FUNCTION_18_1();
      if ((*(v58 + 360))())
      {
        v60 = v59;
        ObjectType = swift_getObjectType();
        (*(v60 + 24))(v57, ObjectType, v60);
        swift_unknownObjectRelease();
      }
    }

    v62 = *&v4[v33];
    sub_1E3F5A904();

    type metadata accessor for Accessibility();
    v63 = [v4 vuiView];
    sub_1E40A91FC(v63, 5, v2);

    if (v1)
    {
      OUTLINED_FUNCTION_18_1();
      (*(v64 + 592))(0);
      OUTLINED_FUNCTION_36_3();
      (*((*v35 & v65) + 0x238))(1);
    }
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3F5CCE4()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();

  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1E3F5CD28(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0();
  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
}

uint64_t sub_1E3F5CD70()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();

  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1E3F5CDB4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0();
  *(v2 + 120) = a1;
  *(v2 + 128) = a2;
}

uint64_t sub_1E3F5CDFC()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();

  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1E3F5CE40(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0();
  *(v2 + 136) = a1;
  *(v2 + 144) = a2;
}

BOOL sub_1E3F5CECC()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 224))();
  v2 = sub_1E32AE9B0(v1);

  return v2 == 0;
}

uint64_t sub_1E3F5CF24()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E3F5CF98@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 224))();
  *a2 = result;
  return result;
}

uint64_t sub_1E3F5CFE4(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 232);

  return v2(v3);
}

uint64_t sub_1E3F5D038()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1E4200684();
  OUTLINED_FUNCTION_8();
  v2 = (*(v1 + 224))();
  v3 = (*(*v0 + 280))();
  v4 = sub_1E37D466C(v2, v3);

  return (*(*v0 + 288))(v4);
}

uint64_t (*sub_1E3F5D164(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1E3F5CF24();
  return sub_1E3F5D1AC;
}

uint64_t sub_1E3F5D1AC(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_1E3F5D038();
  }

  sub_1E3F5D038();
}

uint64_t sub_1E3F5D204()
{
  OUTLINED_FUNCTION_11_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33C68);
  sub_1E4200644();
  return swift_endAccess();
}

uint64_t sub_1E3F5D270(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33C70);
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_11_6();
  v7(v6);
  OUTLINED_FUNCTION_11_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33C68);
  sub_1E4200654();
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

void (*sub_1E3F5D38C(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33C70);
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = *(v5 + 64);
  v3[6] = __swift_coroFrameAllocStub(v6);
  v3[7] = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_11_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33C68);
  sub_1E4200644();
  swift_endAccess();
  return sub_1E3F5D4A8;
}

void sub_1E3F5D4A8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    v5 = v2[4];
    v6 = v2[5];
    (*(v6 + 16))(*(*a1 + 48), v4, v5);
    sub_1E3F5D270(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    sub_1E3F5D270(*(*a1 + 56));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1E3F5D55C()
{
  v0 = OUTLINED_FUNCTION_32_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v0);
  sub_1E32752B0(&qword_1EE28A168, &qword_1ECF33C78);
  return sub_1E42006B4();
}

uint64_t sub_1E3F5D5EC()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
}

uint64_t sub_1E3F5D630(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI22LibFamilySharingSource_phoneRecentlyPurchasedMenuItems;
  OUTLINED_FUNCTION_14_0();
  *(v1 + v3) = a1;
}

uint64_t sub_1E3F5D6D0()
{
  v0 = swift_allocObject();
  sub_1E3F5D710();
  return v0;
}

void sub_1E3F5D710()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33C68);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34[-v8];
  v10 = objc_opt_self();
  v11 = [v10 sharedInstance];
  if (!v11)
  {
    __break(1u);
    goto LABEL_10;
  }

  v12 = v11;
  v13 = sub_1E3741090(0xD000000000000016, 0x80000001E426EDA0, v11);
  v15 = v14;

  if (!v15)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  *(v1 + 136) = v13;
  *(v1 + 144) = v15;
  v16 = OBJC_IVAR____TtC8VideosUI22LibFamilySharingSource__menuItems;
  v17 = MEMORY[0x1E69E7CC0];
  *&v35[0] = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33C60);
  sub_1E4200634();
  (*(v6 + 32))(v1 + v16, v9, v4);
  *(v1 + OBJC_IVAR____TtC8VideosUI22LibFamilySharingSource_phoneRecentlyPurchasedMenuItems) = v17;
  v18 = OBJC_IVAR____TtC8VideosUI22LibFamilySharingSource_mediaAPIClient;
  *(v1 + v18) = [objc_opt_self() sharedInstance];
  v19 = OBJC_IVAR____TtC8VideosUI22LibFamilySharingSource_menuItemUpdateSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33C78);
  swift_allocObject();
  *(v1 + v19) = sub_1E4200544();
  v38 = *v3;
  *(v1 + 104) = v38;
  memcpy((v1 + 16), v3, 0x58uLL);
  v36 = v3[1];
  v37 = v36;
  sub_1E383A1D0(&v38, v35);
  sub_1E383A1D0(&v37, v35);
  sub_1E3B8B218(v3, v35);
  MEMORY[0x1E69109E0](32, 0xE100000000000000);
  v20 = *(v3 + 4);
  v21 = *(v3 + 5);
  v35[0] = v36;

  MEMORY[0x1E69109E0](v20, v21);

  v22 = v35[0];
  v23 = [v10 sharedInstance];
  if (!v23)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v24 = v23;
  v25 = sub_1E3741090(0xD000000000000014, 0x80000001E428A220, v23);
  v27 = v26;

  if (v27)
  {
    *&v35[0] = v25;
    *(&v35[0] + 1) = v27;
    *&v36 = 16421;
    *(&v36 + 1) = 0xE200000000000000;
    *&v34[8] = v22;
    sub_1E32822E0();
    OUTLINED_FUNCTION_25();
    v28 = sub_1E42071F4();
    v30 = v29;

LABEL_8:

    sub_1E3F64324(v3);
    *(v1 + 120) = v28;
    *(v1 + 128) = v30;
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v31 = [v10 sharedInstance];
  if (!v31)
  {
    goto LABEL_12;
  }

  v32 = v31;
  v28 = sub_1E3741090(0x5952415242494CLL, 0xE700000000000000, v31);
  v30 = v33;

  if (v30)
  {
    goto LABEL_8;
  }

LABEL_13:
  __break(1u);
}

uint64_t sub_1E3F5DA88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D1C8);
  OUTLINED_FUNCTION_17_2(v6);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v53 = v45 - v8;
  OUTLINED_FUNCTION_138();
  v9 = sub_1E41FDDF4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v51 = v14 - v13;
  OUTLINED_FUNCTION_138();
  v15 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v21 = v20 - v19;
  sub_1E4206BA4();
  v22 = VUISignpostLogObject();
  sub_1E41FFBE4();
  sub_1E41FFBA4();

  (*(v17 + 8))(v21, v15);
  OUTLINED_FUNCTION_4_0();
  v23 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34178);
  v24 = sub_1E4206314();
  v24[2] = 3;
  v24[5] = 0;
  v24[6] = 0;
  v24[4] = 0;
  *(v23 + 16) = v24;
  v47 = (v23 + 16);
  OUTLINED_FUNCTION_4_0();
  v25 = swift_allocObject();
  v55 = v25;
  *(v25 + 16) = 3;
  v46 = (v25 + 16);
  OUTLINED_FUNCTION_10_9();
  v26 = swift_allocObject();
  v26[2] = v3;
  v26[3] = v23;
  v45[0] = a1;
  v45[1] = a2;
  v26[4] = a1;
  v26[5] = a2;
  v54 = v26;
  v49 = v58;
  v50 = (v11 + 32);
  v48 = (v11 + 8);

  v52 = v3;

  v56 = v23;

  for (i = 0; ; ++i)
  {
    if (i == 3)
    {
      goto LABEL_12;
    }

    v29 = byte_1F5D8EAD8[i + 32];
    v30 = (*(*v52 + 144))(v27);
    sub_1E3E95A40();

    v31 = v30;
    v32 = v53;
    sub_1E3F5E7A4(v29, v31, v53);

    if (__swift_getEnumTagSinglePayload(v32, 1, v9) == 1)
    {
      break;
    }

    v33 = v51;
    (*v50)(v51, v32, v9);
    v34 = [objc_opt_self() sharedInstance];
    v35 = sub_1E41FDD94();
    OUTLINED_FUNCTION_4_0();
    v36 = swift_allocObject();
    swift_weakInit();
    OUTLINED_FUNCTION_67_6();
    v37 = swift_allocObject();
    *(v37 + 16) = v36;
    *(v37 + 24) = v29;
    *(v37 + 32) = v56;
    *(v37 + 40) = i;
    v38 = v54;
    *(v37 + 48) = v55;
    *(v37 + 56) = sub_1E3F64378;
    *(v37 + 64) = v38;
    v58[2] = sub_1E3F64384;
    v58[3] = v37;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    v58[0] = sub_1E3F5E8E4;
    v58[1] = &block_descriptor_139;
    v39 = _Block_copy(aBlock);

    [v34 fetchContentForUrl:v35 completion:v39];
    _Block_release(v39);

    v27 = (*v48)(v33, v9);
  }

  sub_1E325F6F0(v32, &qword_1ECF3D1C8);
  v40 = v47;
  OUTLINED_FUNCTION_11_3();
  v41 = *v40;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v40 = v41;
  if ((result & 1) == 0)
  {
    result = sub_1E392937C();
    v41 = result;
    *v40 = result;
  }

  if (i >= *(v41 + 16))
  {
    __break(1u);
  }

  else
  {
    *(v41 + 8 * i + 32) = 0;
    *v40 = v41;
    swift_endAccess();

    v43 = v46;
    result = swift_beginAccess();
    v44 = *v43 - 1;
    if (!__OFSUB__(*v43, 1))
    {
      *v43 = v44;
      if (!v44)
      {
        sub_1E3F5E034();
      }

LABEL_12:
    }
  }

  __break(1u);
  return result;
}

void sub_1E3F5E034()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v24 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  sub_1E32ADE38();
  v13 = sub_1E4206A04();
  OUTLINED_FUNCTION_4_0();
  v14 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_10_9();
  v15 = swift_allocObject();
  v15[2] = v5;
  v15[3] = v14;
  v15[4] = v3;
  v15[5] = v1;
  OUTLINED_FUNCTION_2_12(v15);
  v25[1] = 1107296256;
  OUTLINED_FUNCTION_14_1();
  v25[2] = v16;
  v25[3] = &block_descriptor_97;
  v17 = _Block_copy(v25);

  sub_1E4203FE4();
  v25[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_3_223();
  sub_1E3F64ED4(v18, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
  OUTLINED_FUNCTION_47();
  sub_1E32752B0(v20, v21);
  OUTLINED_FUNCTION_19_133();
  OUTLINED_FUNCTION_27_87();
  _Block_release(v17);

  v22 = OUTLINED_FUNCTION_11_6();
  v23(v22);
  (*(v8 + 8))(v12, v24);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F5E298()
{
  OUTLINED_FUNCTION_31_1();
  v34 = v0;
  v2 = v1;
  sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v32 = v4;
  v33 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v31 = v6 - v5;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v7 = *(v2 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  v38 = MEMORY[0x1E69E7CC0];
  v9 = *(v7 + 16);

  for (i = 0; ; ++i)
  {
    if (v9 == i)
    {

      v35 = sub_1E32AE9B0(v8);
      v13 = v8 & 0xFFFFFFFFFFFFFF8;

      v14 = 0;
      while (1)
      {
        if (v35 == v14)
        {

          goto LABEL_33;
        }

        if ((v8 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1E6911E60](v14, v8);
        }

        else
        {
          if (v14 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_48;
          }
        }

        if (__OFADD__(v14, 1))
        {
          goto LABEL_47;
        }

        sub_1E37D4BA4();
        OUTLINED_FUNCTION_36_63();
        OUTLINED_FUNCTION_33_77();
        if (v38 == v36 && v39 == v37)
        {
          break;
        }

        v16 = sub_1E42079A4();

        if (v16)
        {
          goto LABEL_28;
        }

        OUTLINED_FUNCTION_36_63();
        OUTLINED_FUNCTION_33_77();
        if (v38 == v36 && v39 == v37)
        {
          break;
        }

        v18 = sub_1E42079A4();

        ++v14;
        if (v18)
        {
          goto LABEL_29;
        }
      }

LABEL_28:

LABEL_29:

      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        (*(*Strong + 144))(Strong);

        type metadata accessor for LibMenuItem();
        OUTLINED_FUNCTION_18();
        v20 = sub_1E3A8A680();
        sub_1E37EFABC(0, v8);
        if (sub_1E32AE9B0(v8) < 0)
        {
          goto LABEL_49;
        }

        v21 = sub_1E32AE9B0(v8);
        v22 = __OFADD__(v21, 1);
        v23 = v21 + 1;
        if (v22)
        {
          goto LABEL_50;
        }

        sub_1E3797CDC(v23);
        sub_1E3AD8DE4(0, 0, 1, v20);
        v13 = v8 & 0xFFFFFFFFFFFFFF8;
      }

LABEL_33:
      v24 = sub_1E32AE9B0(v8);
      for (j = 0; v24 != j; ++j)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1E6911E60](j, v8);
        }

        else
        {
          if (j >= *(v13 + 16))
          {
            goto LABEL_46;
          }
        }

        if (__OFADD__(j, 1))
        {
          goto LABEL_45;
        }

        OUTLINED_FUNCTION_8();
        (*(v26 + 264))(1);
      }

      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      v27 = swift_weakLoadStrong();
      if (v27)
      {
        v28 = *(*v27 + 232);

        v28(v29);
      }

      sub_1E4206B94();
      v30 = VUISignpostLogObject();
      sub_1E41FFBE4();
      sub_1E41FFBA4();

      (*(v32 + 8))(v31, v33);
      v34(v8);

      OUTLINED_FUNCTION_25_2();
      return;
    }

    if (i >= *(v7 + 16))
    {
      break;
    }

    if (*(v7 + 8 * i + 32))
    {

      MEMORY[0x1E6910BF0](v12);
      if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        OUTLINED_FUNCTION_14_33();
      }

      sub_1E4206324();
      v8 = v38;
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
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
}

void sub_1E3F5E7A4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  switch(a1)
  {
    case 1:
      OUTLINED_FUNCTION_8_178(a1, a2);

      sub_1E3E95A4C();
      break;
    case 2:
      OUTLINED_FUNCTION_8_178(a1, a2);

      sub_1E3E96184();
      break;
    case 3:
      OUTLINED_FUNCTION_8_178(a1, a2);

      sub_1E3E95DE4();
      break;
    case 4:
      OUTLINED_FUNCTION_8_178(a1, a2);

      sub_1E3E96530();
      break;
    case 5:
      OUTLINED_FUNCTION_8_178(a1, a2);

      sub_1E3E968EC();
      break;
    case 13:

      sub_1E3E974C8();
      break;
    default:
      v4 = sub_1E41FDDF4();

      __swift_storeEnumTagSinglePayload(a3, 1, 1, v4);
      break;
  }
}

void sub_1E3F5E8E4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, v6);
}

void sub_1E3F5E968()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D1C8);
  OUTLINED_FUNCTION_17_2(v14);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v39 - v16;
  v18 = sub_1E41FDDF4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v23 = v22 - v21;
  v24 = v6[32];
  if (v24 > 0xE || ((1 << v24) & 0x403E) == 0)
  {
    v28 = MEMORY[0x1E69E7CC0];
    goto LABEL_12;
  }

  v39 = v9;
  v40 = v7;
  v41 = v23;
  v42 = v20;
  v43 = v0;
  v44 = v2;
  v25 = *&v6[OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier];
  (*(*v6 + 392))();
  if (!v26)
  {
    sub_1E3E95A40();
  }

  v27 = v6[32];
  if (sub_1E38BBD0C())
  {
    sub_1E3E970EC();
  }

  else
  {
    sub_1E3F5E7A4(v27, v25, v17);
  }

  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    sub_1E325F6F0(v17, &qword_1ECF3D1C8);
    v28 = MEMORY[0x1E69E7CC0];
LABEL_12:
    v4(v28);
    goto LABEL_13;
  }

  v29 = v42;
  v30 = v41;
  (*(v42 + 32))();
  sub_1E4206BA4();
  v31 = VUISignpostLogObject();
  sub_1E41FFBE4();
  sub_1E41FFBA4();

  (*(v39 + 8))(v13, v40);
  v32 = [objc_opt_self() sharedInstance];
  v33 = v30;
  v34 = sub_1E41FDD94();
  OUTLINED_FUNCTION_10_9();
  v35 = swift_allocObject();
  v36 = v44;
  v35[2] = v43;
  v35[3] = v6;
  v35[4] = v4;
  v35[5] = v36;
  OUTLINED_FUNCTION_2_12(v35);
  v45[1] = 1107296256;
  OUTLINED_FUNCTION_5_205();
  v45[2] = v37;
  v45[3] = &block_descriptor_24_4;
  v38 = _Block_copy(v45);

  [v32 fetchContentForUrl:v34 completion:v38];
  _Block_release(v38);

  (*(v29 + 8))(v33, v18);
LABEL_13:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F5ED70()
{
  OUTLINED_FUNCTION_31_1();
  v70 = v0;
  v69 = v1;
  v72 = v2;
  v4 = v3;
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v12 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v18 = v17 - v16;
  v19 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v71 = v22 - v21;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v23 = *v4;
    v68 = v19;
    v67 = v18;
    v66 = *v4;
    if (v4[40])
    {
      v24 = sub_1E324FBDC();
      (*(v7 + 16))(v11, v24, v5);

      v25 = sub_1E41FFC94();
      v26 = sub_1E4206814();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v74[0] = v63;
        *v27 = 136315394;
        LOBYTE(v76) = *(v72 + 32);
        sub_1E38F53C4();
        v28 = sub_1E4207944();
        v64 = v14;
        v30 = sub_1E3270FC8(v28, v29, v74);

        *(v27 + 4) = v30;
        *(v27 + 12) = 2080;
        v79 = &type metadata for LibCommons.LibError;
        LOBYTE(v76) = v66;
        v31 = sub_1E3294FA4(&v76);
        v33 = sub_1E3270FC8(v31, v32, v74);

        *(v27 + 14) = v33;
        v14 = v64;
        _os_log_impl(&dword_1E323F000, v25, v26, "LibFamilySharingSource:: fetch collection for menu %s with error %s", v27, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E69143B0](v63, -1, -1);
        OUTLINED_FUNCTION_55();
      }

      (*(v7 + 8))(v11, v5);
      sub_1E32ADE38();
      v34 = sub_1E4206A04();
      OUTLINED_FUNCTION_2_4();
      v35 = swift_allocObject();
      *(v35 + 16) = v69;
      *(v35 + 24) = v70;
      OUTLINED_FUNCTION_11_164(v35);
      v77 = 1107296256;
      OUTLINED_FUNCTION_14_1();
      v78 = v36;
      v79 = &block_descriptor_84_2;
      v37 = _Block_copy(&v76);

      sub_1E4203FE4();
      v76 = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_3_223();
      sub_1E3F64ED4(v38, v39);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
      OUTLINED_FUNCTION_47();
      sub_1E32752B0(v40, v41);
      sub_1E42072E4();
      MEMORY[0x1E6911380](0, v71, v67, v37);

      _Block_release(v37);

      (*(v14 + 8))(v67, v12);
      OUTLINED_FUNCTION_15_5();
      v43 = v71;
    }

    else
    {
      v65 = v14;
      v80 = *(v4 + 1);
      *v81 = *(v4 + 17);
      *&v81[15] = *(v4 + 4);
      LOBYTE(v82) = v23;
      *(&v82 + 1) = *(v4 + 1);
      HIDWORD(v82) = *(v4 + 1);
      v83[0] = *(v4 + 24);
      v75 = MEMORY[0x1E69E7CC0];
      v44 = *(v82 + 16);
      if (v44)
      {
        type metadata accessor for LibLockupViewModel();
        v45 = *(*Strong + 144);
        v46 = v82 + 32;
        sub_1E379D7E4(&v82, &v76, &qword_1ECF2E118);
        sub_1E379D7E4(v83, &v76, &qword_1ECF3D960);
        v47 = MEMORY[0x1E69E7CC0];
        do
        {
          sub_1E327F454(v46, &v76);
          v48 = sub_1E327F454(&v76, v74);
          v45(v48);
          j__OUTLINED_FUNCTION_18();
          sub_1E38BC104();
          if (v49)
          {
            v50 = *(*v49 + 1640);

            v50();

            v51 = __swift_destroy_boxed_opaque_existential_1Tm(&v76);
            MEMORY[0x1E6910BF0](v51);
            if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              OUTLINED_FUNCTION_14_33();
            }

            OUTLINED_FUNCTION_11_6();
            sub_1E4206324();
            v47 = v75;
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_1Tm(&v76);
          }

          v46 += 40;
          --v44;
        }

        while (v44);
      }

      else
      {
        sub_1E379D7E4(&v82, &v76, &qword_1ECF2E118);
        sub_1E379D7E4(v83, &v76, &qword_1ECF3D960);
        v47 = MEMORY[0x1E69E7CC0];
      }

      if (sub_1E38BBD0C())
      {
        type metadata accessor for ComposedMediaQuery();
        v52 = sub_1E399FD3C();
        v53 = sub_1E399FD44(v47, MEMORY[0x1E69E7CC0], v52);

        v47 = v53;
      }

      v54 = MEMORY[0x1E69E7CC0];
      sub_1E32ADE38();
      v55 = sub_1E4206A04();
      v56 = swift_allocObject();
      *(v56 + 16) = v72;
      *(v56 + 24) = v66;
      *(v56 + 25) = v80;
      *(v56 + 41) = *v81;
      *(v56 + 56) = *&v81[15];
      *(v56 + 64) = v69;
      *(v56 + 72) = v70;
      *(v56 + 80) = v47;
      OUTLINED_FUNCTION_11_164(v56);
      v77 = 1107296256;
      OUTLINED_FUNCTION_14_1();
      v78 = v57;
      v79 = &block_descriptor_90;
      v58 = _Block_copy(&v76);

      sub_1E4203FE4();
      v76 = v54;
      OUTLINED_FUNCTION_3_223();
      sub_1E3F64ED4(v59, v60);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
      OUTLINED_FUNCTION_47();
      sub_1E32752B0(v61, v62);
      sub_1E42072E4();
      MEMORY[0x1E6911380](0, v71, v67, v58);

      _Block_release(v58);

      (*(v65 + 8))(v67, v12);
      OUTLINED_FUNCTION_15_5();
      v43 = v71;
    }

    v42(v43, v68);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F5F694()
{
  OUTLINED_FUNCTION_31_1();
  v18 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v15 = *(v4 + 24);
  v14 = *(v4 + 32);
  v16 = *(*v6 + 400);

  v16(v15, v14);
  v2(v18);
  sub_1E4206B94();
  v17 = VUISignpostLogObject();
  sub_1E41FFBE4();
  sub_1E41FFBA4();

  (*(v9 + 8))(v13, v7);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F5F804()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v49 = v2;
  v50 = v3;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D1C8);
  OUTLINED_FUNCTION_17_2(v6);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v51 = &v43 - v8;
  OUTLINED_FUNCTION_138();
  v54 = sub_1E41FDDF4();
  OUTLINED_FUNCTION_0_10();
  v47 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v53 = v12 - v11;
  OUTLINED_FUNCTION_138();
  v13 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v19 = v18 - v17;
  v21 = v5[3];
  v20 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v21);
  v22 = (*(*(v20 + 8) + 16))(v21);
  v24 = v23;
  v25 = (*(*v1 + 144))();
  v48 = v26;
  OUTLINED_FUNCTION_4_0();
  v27 = swift_allocObject();
  *(v27 + 16) = MEMORY[0x1E69E7CC0];
  sub_1E4206BA4();
  v28 = VUISignpostLogObject();
  sub_1E41FFBE4();
  v29 = v49;
  sub_1E41FFBA4();

  (*(v15 + 8))(v19, v13);
  v30 = v50;
  OUTLINED_FUNCTION_4_0();
  v31 = swift_allocObject();
  v45 = v1;
  swift_weakInit();
  OUTLINED_FUNCTION_10_9();
  v32 = swift_allocObject();
  v32[2] = v31;
  v32[3] = v27;
  v32[4] = v29;
  v32[5] = v30;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  v46 = v22;
  v33 = v51;
  v52 = v24;
  v34 = v48;
  v44 = v25;
  sub_1E3E96CCC();
  if (__swift_getEnumTagSinglePayload(v33, 1, v54) == 1)
  {
    sub_1E325F6F0(v33, &qword_1ECF3D1C8);
    sub_1E3F5FCB4();
  }

  else
  {
    v35 = v47;
    (*(v47 + 32))();
    v51 = [objc_opt_self() sharedInstance];
    v49 = sub_1E41FDD94();
    OUTLINED_FUNCTION_67_6();
    v36 = swift_allocObject();
    v37 = v46;
    v36[2] = v45;
    v36[3] = sub_1E3F648D8;
    v36[4] = v32;
    v36[5] = v37;
    v38 = v44;
    v36[6] = v52;
    v36[7] = v38;
    v36[8] = v34;
    OUTLINED_FUNCTION_2_12(v36);
    v55[1] = 1107296256;
    OUTLINED_FUNCTION_5_205();
    v55[2] = v39;
    v55[3] = &block_descriptor_37_0;
    v40 = _Block_copy(v55);

    v41 = v51;
    v42 = v49;
    [v51 fetchContentForUrl:v49 completion:v40];
    _Block_release(v40);

    (*(v35 + 8))(v53, v54);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F5FCB4()
{
  OUTLINED_FUNCTION_31_1();
  v59 = v0;
  v58 = v1;
  v3 = v2;
  v64 = v4;
  v6 = v5;
  v7 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v61 = v10 - v9;
  OUTLINED_FUNCTION_138();
  v62 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v60 = v13 - v12;
  OUTLINED_FUNCTION_138();
  v57 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v56 = v16 - v15;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    goto LABEL_48;
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v63 = v3;

  v71 = v65;
  if (v6 >> 62)
  {
    goto LABEL_52;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1E4207384())
  {
    v55 = v7;
    if (!i)
    {
      v18 = v65;

      goto LABEL_35;
    }

    v69 = v6 & 0xC000000000000001;
    v66 = v6 + 32;
    v18 = v65;

    v19 = 0;
    v68 = v6;
    v67 = i;
LABEL_6:
    v7 = v69;
    sub_1E34AF4E4(v19, v69 == 0, v6);
    if (v69)
    {
      v20 = MEMORY[0x1E6911E60](v19, v6);
    }

    else
    {
      v20 = *(v66 + 8 * v19);
    }

    if (!__OFADD__(v19++, 1))
    {
      break;
    }

LABEL_51:
    __break(1u);
LABEL_52:
    ;
  }

  v22 = sub_1E32AE9B0(v18);
  for (j = 0; v22 != j; ++j)
  {
    if ((v18 & 0xC000000000000001) != 0)
    {
      v25 = MEMORY[0x1E6911E60](j, v18);
      v24 = v25;
    }

    else
    {
      if (j >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_50;
      }

      v24 = *(v18 + 8 * j + 32);
    }

    if (__OFADD__(j, 1))
    {
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v26 = (*(*v24 + 184))(v25);
    v6 = v27;
    v28 = (*(*v20 + 184))();
    v7 = v29;
    if (v26 == v28 && v6 == v29)
    {

LABEL_27:
      v32 = (*(*v24 + 512))(v70);
      if (*v33)
      {
        v34 = (*(*v20 + 496))();
        if (!v34)
        {
          v34 = MEMORY[0x1E69E7CC0];
        }

        sub_1E3F61C38(v34);
      }

      v32(v70, 0);

      goto LABEL_32;
    }

    v31 = sub_1E42079A4();

    if (v31)
    {
      goto LABEL_27;
    }
  }

  MEMORY[0x1E6910BF0]();
  if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1E42062F4();
  }

  sub_1E4206324();
  v18 = v71;
LABEL_32:
  v6 = v68;
  if (v19 != v67)
  {
    goto LABEL_6;
  }

LABEL_35:

  swift_beginAccess();
  *(v63 + 16) = v18;

  if ((v64 & 1) == 0)
  {

LABEL_48:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v35 = *(v63 + 16);
  v36 = sub_1E32AE9B0(v35);
  if (!v36)
  {
LABEL_47:
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v42 = *(v63 + 16);
    swift_bridgeObjectRetain_n();
    v70[0] = sub_1E3F64BB8(v42);
    sub_1E3F60664(v70);

    v43 = v70[0];
    sub_1E4206B94();
    v44 = VUISignpostLogObject();
    sub_1E41FFBE4();
    sub_1E41FFBA4();

    OUTLINED_FUNCTION_15_5();
    v45(v56, v57);
    sub_1E32ADE38();
    v46 = sub_1E4206A04();
    v47 = swift_allocObject();
    v47[2] = v58;
    v47[3] = v59;
    v47[4] = v43;
    v70[4] = sub_1E3F64C4C;
    v70[5] = v47;
    v70[0] = MEMORY[0x1E69E9820];
    v70[1] = 1107296256;
    v70[2] = sub_1E378AEA4;
    v70[3] = &block_descriptor_74_1;
    v48 = _Block_copy(v70);

    sub_1E4203FE4();
    v70[0] = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_3_223();
    sub_1E3F64ED4(v49, v50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
    OUTLINED_FUNCTION_47();
    sub_1E32752B0(v51, v52);
    sub_1E42072E4();
    MEMORY[0x1E6911380](0, v60, v61, v48);
    _Block_release(v48);

    OUTLINED_FUNCTION_15_5();
    v53(v61, v55);
    OUTLINED_FUNCTION_15_5();
    v54(v60, v62);
    goto LABEL_48;
  }

  v37 = v36;
  if (v36 >= 1)
  {

    for (k = 0; k != v37; ++k)
    {
      if ((v35 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E6911E60](k, v35);
      }

      else
      {
      }

      OUTLINED_FUNCTION_8();
      v41 = (*(v39 + 512))(v70);
      if (*v40)
      {
        sub_1E3F605E0(v40, sub_1E3F61D70, sub_1E3F61FC0);
      }

      v41(v70, 0);
    }

    goto LABEL_47;
  }

  __break(1u);

  __break(1u);
}

uint64_t sub_1E3F605E0(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void *))
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = a2(v6);
  }

  v7 = *(v6 + 16);
  v9[0] = v6 + 32;
  v9[1] = v7;
  result = a3(v9);
  *a1 = v6;
  return result;
}

uint64_t sub_1E3F60664(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1E34AF5E0(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1E3F61EE0(v6);
  return sub_1E4207554();
}

void *sub_1E3F606E0(unint64_t a1)
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

  v20 = MEMORY[0x1E69E7CC0];
  result = sub_1E3AD8B90(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v20;
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

      v7 = type metadata accessor for LibFamilySharingSeasonMediaEntity();
      v18 = v7;
      v8 = sub_1E3F64ED4(&qword_1ECF33AD0, type metadata accessor for LibFamilySharingSeasonMediaEntity);
      v19 = v8;
      v20 = v3;
      v17[0] = v6;
      v10 = *(v3 + 16);
      v9 = *(v3 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_1E3AD8B90((v9 > 1), v10 + 1, 1);
        v7 = v18;
        v11 = v19;
      }

      else
      {
        v11 = v8;
      }

      ++v5;
      v12 = __swift_mutable_project_boxed_opaque_existential_1(v17, v7);
      v13 = MEMORY[0x1EEE9AC00](v12);
      v15 = v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v16 + 16))(v15, v13);
      sub_1E3F64E3C(v10, v15, &v20, v7, v11);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      v3 = v20;
    }

    while (v2 != v5);
    return v3;
  }

  __break(1u);
  return result;
}

void sub_1E3F60904()
{
  OUTLINED_FUNCTION_31_1();
  v28 = v0;
  v29 = v1;
  v30 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D1C8);
  OUTLINED_FUNCTION_17_2(v11);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - v13;
  v15 = sub_1E41FDDF4();
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  sub_1E3E96CCC();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1E325F6F0(v14, &qword_1ECF3D1C8);
    v29(MEMORY[0x1E69E7CC0], 1);
  }

  else
  {
    (*(v17 + 32))(v0, v14, v15);
    v27 = [objc_opt_self() sharedInstance];
    v26 = sub_1E41FDD94();
    OUTLINED_FUNCTION_67_6();
    v19 = swift_allocObject();
    v20 = v29;
    v19[2] = v28;
    v19[3] = v20;
    v19[4] = v30;
    v19[5] = v10;
    v19[6] = v8;
    v19[7] = v6;
    v19[8] = v4;
    OUTLINED_FUNCTION_2_12(v19);
    v31[1] = 1107296256;
    OUTLINED_FUNCTION_5_205();
    v31[2] = v21;
    v31[3] = &block_descriptor_68_1;
    v22 = _Block_copy(v31);

    v24 = v26;
    v23 = v27;
    [v27 fetchContentForUrl:v26 completion:v22];
    _Block_release(v22);

    (*(v17 + 8))(v0, v15);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3F60B88()
{

  v1 = OBJC_IVAR____TtC8VideosUI22LibFamilySharingSource__menuItems;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33C68);
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t sub_1E3F60C78()
{
  sub_1E3F60B88();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void (*sub_1E3F60DFC(void *a1))(void *)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  OUTLINED_FUNCTION_5_2();
  v2[4] = (*(v3 + 240))();
  return sub_1E37C55D4;
}

void (*sub_1E3F60F40(void *a1))(void *)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  OUTLINED_FUNCTION_5_2();
  v2[4] = (*(v3 + 296))();
  return sub_1E37C4BF8;
}

uint64_t sub_1E3F61154@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_5_2();
  result = (*(v2 + 144))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E3F61198(uint64_t a1, uint64_t a2)
{
  v5 = sub_1E41FDDF4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  v9 = objc_opt_self();
  [v9 initializeWithAppleTVClientIdentifier];
  v10 = [objc_opt_self() familyMembersRequest];
  sub_1E41FDDA4();

  v11 = [v9 sharedInstance];
  v12 = sub_1E41FDD94();
  OUTLINED_FUNCTION_2_4();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v21 = sub_1E3F648E8;
  v22 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  OUTLINED_FUNCTION_5_205();
  v19 = v14;
  v20 = &block_descriptor_43_2;
  v15 = _Block_copy(&aBlock);

  [v11 fetchContentForUrl:v12 completion:{v15, aBlock, v18}];
  _Block_release(v15);

  return (*(v7 + 8))(v2, v5);
}

void sub_1E3F6136C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v25 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  sub_1E32ADE38();
  v15 = sub_1E4206A04();
  OUTLINED_FUNCTION_10_9();
  v16 = swift_allocObject();
  *(v16 + 16) = v7;
  *(v16 + 24) = v5 & 1;
  *(v16 + 32) = v3;
  *(v16 + 40) = v1;
  OUTLINED_FUNCTION_2_12(v16);
  v26[1] = 1107296256;
  OUTLINED_FUNCTION_14_1();
  v26[2] = v17;
  v26[3] = &block_descriptor_57_2;
  v18 = _Block_copy(v26);
  sub_1E3F64B24(v7, v5 & 1);

  sub_1E4203FE4();
  v26[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_3_223();
  sub_1E3F64ED4(v19, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
  OUTLINED_FUNCTION_47();
  sub_1E32752B0(v21, v22);
  OUTLINED_FUNCTION_19_133();
  OUTLINED_FUNCTION_27_87();
  _Block_release(v18);

  v23 = OUTLINED_FUNCTION_11_6();
  v24(v23);
  (*(v10 + 8))(v14, v25);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F615BC()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  if (v4)
  {
    v11 = sub_1E324FBDC();
    (*(v9 + 16))(v0, v11, v7);
    v12 = sub_1E41FFC94();
    v13 = sub_1E4206814();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      sub_1E39FFB10();
      swift_allocError();
      *v16 = v6;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      OUTLINED_FUNCTION_35_71(&dword_1E323F000, v18, v19, "LibFamilySharingSource:: fetch family members error %@");
      sub_1E325F6F0(v15, &unk_1ECF28E30);
      MEMORY[0x1E69143B0](v15, -1, -1);
      OUTLINED_FUNCTION_55();
    }

    (*(v9 + 8))(v0, v7);
    sub_1E39FFB10();
    v20 = swift_allocError();
    *v21 = v6;
    v2(MEMORY[0x1E69E7CC0], v20);
  }

  else
  {
    v2(v6, 0);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3F617B4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  type metadata accessor for LibResponseParser();
  OUTLINED_FUNCTION_4_0();
  v12 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_67_6();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = v11;
  v13[4] = v9;
  v13[5] = v7;
  v13[6] = v5;
  v13[7] = v3;
  v13[8] = v1;

  sub_1E3922084();

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F618B0()
{
  OUTLINED_FUNCTION_31_1();
  v21 = v1;
  v3 = v2;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (v3[40])
    {
      v8 = *v3;
      v9 = sub_1E324FBDC();
      (*(v6 + 16))(v0, v9, v4);
      v10 = sub_1E41FFC94();
      v11 = sub_1E4206814();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *v12 = 138412290;
        sub_1E39FFB10();
        swift_allocError();
        *v14 = v8;
        v15 = _swift_stdlib_bridgeErrorToNSError();
        *(v12 + 4) = v15;
        *v13 = v15;
        OUTLINED_FUNCTION_35_71(&dword_1E323F000, v16, v17, "LibFamilySharingSource:: fetch seasons error %@");
        sub_1E325F6F0(v13, &unk_1ECF28E30);
        MEMORY[0x1E69143B0](v13, -1, -1);
        OUTLINED_FUNCTION_55();
      }

      (*(v6 + 8))(v0, v4);
      v21(MEMORY[0x1E69E7CC0], 1);
    }

    else
    {
      v18 = *(v3 + 4);
      v19 = sub_1E3F61B2C((*(v3 + 1) << 8) | ((*(v3 + 5) | (v3[7] << 16)) << 40) | *v3);
      if (v19)
      {
        v20 = v19;
      }

      else
      {
        v20 = MEMORY[0x1E69E7CC0];
      }

      v21(v20, v18 == 0);

      if (v18)
      {
        sub_1E3F60904();
      }
    }
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3F61B2C(uint64_t a1)
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
    sub_1E327F454(v3, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770);
    type metadata accessor for LibFamilySharingSeasonMediaEntity();
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

int64_t sub_1E3F61C38(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1E3F61D84(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE58);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1E3F61D14(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      type metadata accessor for LibFamilySharingSeasonMediaEntity();
      result = sub_1E4206314();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v1;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

void *sub_1E3F61D84(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > v5[3] >> 1)
  {
    if (v5[2] <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = v5[2];
    }

    result = sub_1E3AF90C0(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

uint64_t sub_1E3F61DEC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1E4207914();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1E4206314();
        *(v6 + 16) = v5;
      }

      v7[0] = v6 + 32;
      v7[1] = v5;
      sub_1E3F6244C(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1E3F620C4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1E3F61EE0(uint64_t *a1)
{
  v3 = a1[1];
  result = sub_1E4207914();
  if (result < v3)
  {
    v5 = result;
    v6 = sub_1E3F61D14(v3 / 2);
    v8[0] = v7;
    v8[1] = v3 / 2;
    result = sub_1E3F62978(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return result;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    return sub_1E3F62198(0, v3, 1, a1);
  }

  return result;
}

uint64_t sub_1E3F61FC0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1E4207914();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE58);
        v6 = sub_1E4206314();
        *(v6 + 16) = v5;
      }

      v7[0] = v6 + 32;
      v7[1] = v5;
      sub_1E3F63104(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1E3F622E0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1E3F620C4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = (*a4 + (a3 << 6));
    v8 = result - a3;
    while (2)
    {
      v9 = v8;
      v10 = v7;
      do
      {
        result = *(v10 + 2);
        if (result == *(v10 - 6) && *(v10 + 3) == *(v10 - 5))
        {
          break;
        }

        result = sub_1E42079A4();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v12 = v10 - 4;
        v14 = v10[2];
        v13 = v10[3];
        v16 = *v10;
        v15 = v10[1];
        v17 = *(v10 - 3);
        *v10 = *(v10 - 4);
        v10[1] = v17;
        v18 = *(v10 - 1);
        v10[2] = *(v10 - 2);
        v10[3] = v18;
        *v12 = v16;
        v12[1] = v15;
        v10 -= 4;
        v12[2] = v14;
        v12[3] = v13;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v7 += 4;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1E3F62198(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = (*a4 + 8 * a3 - 8);
    v7 = result - a3;
    while (2)
    {
      v8 = *(v5 + 8 * v4);
      v9 = v7;
      v18 = v6;
      do
      {
        v10 = *v6;
        v11 = *(*v8 + 520);

        v13 = v11(v12);
        v14 = (*(*v10 + 520))();

        if (v13 >= v14)
        {
          break;
        }

        if (!v5)
        {
          __break(1u);
          return result;
        }

        v15 = *v6;
        v8 = v6[1];
        *v6 = v8;
        v6[1] = v15;
        --v6;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v6 = v18 + 1;
      --v7;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1E3F622E0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 40 * a3;
    v6 = result - a3;
    while (2)
    {
      v28 = a3;
      v7 = v6;
      v21 = v5;
      do
      {
        sub_1E327F454(v5, &v25);
        sub_1E327F454(v5 - 40, v22);
        v8 = v26;
        v9 = v27;
        __swift_project_boxed_opaque_existential_1(&v25, v26);
        v10 = (*(v9 + 24))(v8, v9);
        if (v11)
        {
          v12 = 0;
        }

        else
        {
          v12 = v10;
        }

        v13 = v23;
        v14 = v24;
        __swift_project_boxed_opaque_existential_1(v22, v23);
        v15 = (*(v14 + 24))(v13, v14);
        if (v16)
        {
          v17 = 0;
        }

        else
        {
          v17 = v15;
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v22);
        result = __swift_destroy_boxed_opaque_existential_1Tm(&v25);
        if (v12 >= v17)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        sub_1E3251BE8(v5, &v25);
        v18 = *(v5 - 24);
        *v5 = *(v5 - 40);
        *(v5 + 16) = v18;
        *(v5 + 32) = *(v5 - 8);
        result = sub_1E3251BE8(&v25, v5 - 40);
        v5 -= 40;
      }

      while (!__CFADD__(v7++, 1));
      a3 = v28 + 1;
      v5 = v21 + 40;
      --v6;
      if (v28 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1E3F6244C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v93 = result;
  v98 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7;
      i = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = *a3 + (i << 6);
        result = *(v11 + 16);
        v12 = (*a3 + (v7 << 6));
        if (result == v12[2] && *(v11 + 24) == v12[3])
        {
          v14 = 0;
        }

        else
        {
          result = sub_1E42079A4();
          v14 = result;
        }

        v15 = v9 << 6;
        v16 = v12 + 19;
        for (i = v9 + 2; i < v6; ++i)
        {
          result = *(v16 - 1);
          if (result == *(v16 - 9) && *v16 == *(v16 - 8))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else
          {
            result = sub_1E42079A4();
            if ((v14 ^ result))
            {
              break;
            }
          }

          v16 += 8;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (i < v9)
        {
          goto LABEL_121;
        }

        if (v9 < i)
        {
          v18 = (i << 6) - 64;
          v19 = i;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = (v21 + v18);
              v25 = v22[2];
              v24 = v22[3];
              v27 = *v22;
              v26 = v22[1];
              v28 = v23[3];
              v30 = *v23;
              v29 = v23[1];
              v22[2] = v23[2];
              v22[3] = v28;
              *v22 = v30;
              v22[1] = v29;
              *v23 = v27;
              v23[1] = v26;
              v23[2] = v25;
              v23[3] = v24;
            }

            ++v20;
            v18 -= 64;
            v15 += 64;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v31 = a3[1];
      if (i < v31)
      {
        if (__OFSUB__(i, v9))
        {
          goto LABEL_120;
        }

        if (i - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v31)
          {
            v32 = a3[1];
          }

          else
          {
            v32 = (v9 + a4);
          }

          if (v32 < v9)
          {
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
            return result;
          }

          if (i != v32)
          {
            v33 = *a3;
            v34 = *a3 + (i << 6);
            v95 = v9;
            v35 = (v9 - i);
            do
            {
              v36 = i;
              v37 = v35;
              v38 = v34;
              do
              {
                result = *(v38 + 2);
                if (result == *(v38 - 6) && *(v38 + 3) == *(v38 - 5))
                {
                  break;
                }

                result = sub_1E42079A4();
                if ((result & 1) == 0)
                {
                  break;
                }

                if (!v33)
                {
                  goto LABEL_124;
                }

                v40 = v38 - 4;
                v42 = v38[2];
                v41 = v38[3];
                v44 = *v38;
                v43 = v38[1];
                v45 = *(v38 - 3);
                *v38 = *(v38 - 4);
                v38[1] = v45;
                v46 = *(v38 - 1);
                v38[2] = *(v38 - 2);
                v38[3] = v46;
                *v40 = v44;
                v40[1] = v43;
                v38 -= 4;
                v40[2] = v42;
                v40[3] = v41;
              }

              while (!__CFADD__(v37++, 1));
              i = v36 + 1;
              v34 += 64;
              --v35;
            }

            while ((v36 + 1) != v32);
            i = v32;
            v9 = v95;
          }
        }
      }

      if (i < v9)
      {
        goto LABEL_119;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v94 = i;
      if ((result & 1) == 0)
      {
        result = sub_1E37FFF70(0, *(v8 + 16) + 1, 1, v8);
        v8 = result;
      }

      v49 = *(v8 + 16);
      v48 = *(v8 + 24);
      v50 = v49 + 1;
      if (v49 >= v48 >> 1)
      {
        result = sub_1E37FFF70((v48 > 1), v49 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 16) = v50;
      v51 = v8 + 32;
      v52 = (v8 + 32 + 16 * v49);
      *v52 = v9;
      v52[1] = v94;
      v96 = *v93;
      if (!*v93)
      {
        goto LABEL_127;
      }

      if (v49)
      {
        while (1)
        {
          v53 = v50 - 1;
          v54 = (v51 + 16 * (v50 - 1));
          v55 = (v8 + 16 * v50);
          if (v50 >= 4)
          {
            break;
          }

          if (v50 == 3)
          {
            v56 = *(v8 + 32);
            v57 = *(v8 + 40);
            v66 = __OFSUB__(v57, v56);
            v58 = v57 - v56;
            v59 = v66;
LABEL_69:
            if (v59)
            {
              goto LABEL_109;
            }

            v71 = *v55;
            v70 = v55[1];
            v72 = __OFSUB__(v70, v71);
            v73 = v70 - v71;
            v74 = v72;
            if (v72)
            {
              goto LABEL_112;
            }

            v75 = v54[1];
            v76 = v75 - *v54;
            if (__OFSUB__(v75, *v54))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v73, v76))
            {
              goto LABEL_117;
            }

            if (v73 + v76 >= v58)
            {
              if (v58 < v76)
              {
                v53 = v50 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v50 < 2)
          {
            goto LABEL_111;
          }

          v78 = *v55;
          v77 = v55[1];
          v66 = __OFSUB__(v77, v78);
          v73 = v77 - v78;
          v74 = v66;
LABEL_84:
          if (v74)
          {
            goto LABEL_114;
          }

          v80 = *v54;
          v79 = v54[1];
          v66 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v66)
          {
            goto LABEL_116;
          }

          if (v81 < v73)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v53 - 1 >= v50)
          {
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

          if (!*a3)
          {
            goto LABEL_125;
          }

          v85 = (v51 + 16 * (v53 - 1));
          v86 = *v85;
          v87 = (v51 + 16 * v53);
          v88 = v87[1];
          result = sub_1E3F63A04((*a3 + (*v85 << 6)), (*a3 + (*v87 << 6)), (*a3 + (v88 << 6)), v96);
          if (v5)
          {
          }

          if (v88 < v86)
          {
            goto LABEL_104;
          }

          v89 = v8;
          v90 = *(v8 + 16);
          if (v53 > v90)
          {
            goto LABEL_105;
          }

          *v85 = v86;
          v85[1] = v88;
          if (v53 >= v90)
          {
            goto LABEL_106;
          }

          v50 = v90 - 1;
          result = memmove((v51 + 16 * v53), v87 + 2, 16 * (v90 - 1 - v53));
          *(v89 + 16) = v90 - 1;
          v91 = v90 > 2;
          v8 = v89;
          v5 = 0;
          if (!v91)
          {
            goto LABEL_98;
          }
        }

        v60 = v51 + 16 * v50;
        v61 = *(v60 - 64);
        v62 = *(v60 - 56);
        v66 = __OFSUB__(v62, v61);
        v63 = v62 - v61;
        if (v66)
        {
          goto LABEL_107;
        }

        v65 = *(v60 - 48);
        v64 = *(v60 - 40);
        v66 = __OFSUB__(v64, v65);
        v58 = v64 - v65;
        v59 = v66;
        if (v66)
        {
          goto LABEL_108;
        }

        v67 = v55[1];
        v68 = v67 - *v55;
        if (__OFSUB__(v67, *v55))
        {
          goto LABEL_110;
        }

        v66 = __OFADD__(v58, v68);
        v69 = v58 + v68;
        if (v66)
        {
          goto LABEL_113;
        }

        if (v69 >= v63)
        {
          v83 = *v54;
          v82 = v54[1];
          v66 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v66)
          {
            goto LABEL_118;
          }

          if (v58 < v84)
          {
            v53 = v50 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v94;
      if (v94 >= v6)
      {
        v98 = v8;
        break;
      }
    }
  }

  if (!*v93)
  {
    goto LABEL_128;
  }

  sub_1E3F638D8(&v98, *v93, a3);
}

uint64_t sub_1E3F62978(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v103 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_92:
    v108 = *v103;
    if (!*v103)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_94:
      v90 = (v8 + 16);
      v91 = *(v8 + 16);
      while (v91 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_130;
        }

        v92 = v8;
        v93 = (v8 + 16 * v91);
        v94 = *v93;
        v95 = &v90[2 * v91];
        v8 = v95[1];
        sub_1E3F63BE0((*a3 + 8 * *v93), (*a3 + 8 * *v95), (*a3 + 8 * v8), v108);
        if (v5)
        {
          break;
        }

        if (v8 < v94)
        {
          goto LABEL_118;
        }

        if (v91 - 2 >= *v90)
        {
          goto LABEL_119;
        }

        *v93 = v94;
        v93[1] = v8;
        v96 = *v90 - v91;
        if (*v90 < v91)
        {
          goto LABEL_120;
        }

        v91 = *v90 - 1;
        result = memmove(v95, v95 + 2, 16 * v96);
        *v90 = v91;
        v8 = v92;
      }
    }

LABEL_127:
    result = sub_1E37FFF5C(v8);
    v8 = result;
    goto LABEL_94;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 < v6)
    {
      v98 = v5;
      v5 = *(*a3 + 8 * v10);
      v11 = (*a3 + 8 * v7);
      v12 = 8 * v7;
      v14 = *v11;
      v13 = v11 + 2;
      v15 = *(*v5 + 520);
      v108 = v6;

      v105 = v15(v16);
      v104 = (*(*v14 + 520))();

      v17 = v108;
      v101 = v9;
      v18 = v9 + 2;
      while (1)
      {
        v19 = v18;
        if (++v10 >= v17)
        {
          break;
        }

        v5 = *(v13 - 1);
        v20 = *(**v13 + 520);

        v22 = v20(v21);
        v23 = (*(*v5 + 520))();

        v17 = v108;
        ++v13;
        v18 = v19 + 1;
        if (v105 < v104 == v22 >= v23)
        {
          goto LABEL_9;
        }
      }

      v10 = v17;
LABEL_9:
      if (v105 >= v104)
      {
        v5 = v98;
      }

      else
      {
        v24 = v101;
        if (v10 < v101)
        {
          goto LABEL_124;
        }

        if (v101 >= v10)
        {
          v5 = v98;
          v9 = v101;
          goto LABEL_24;
        }

        if (v17 >= v19)
        {
          v25 = v19;
        }

        else
        {
          v25 = v17;
        }

        v26 = 8 * v25 - 8;
        v27 = v10;
        v5 = v98;
        do
        {
          if (v24 != --v27)
          {
            v28 = *a3;
            if (!*a3)
            {
              goto LABEL_131;
            }

            v29 = *(v28 + v12);
            *(v28 + v12) = *(v28 + v26);
            *(v28 + v26) = v29;
          }

          ++v24;
          v26 -= 8;
          v12 += 8;
        }

        while (v24 < v27);
      }

      v9 = v101;
    }

LABEL_24:
    v30 = a3[1];
    if (v10 < v30)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_123;
      }

      if (v10 - v9 < a4)
      {
        break;
      }
    }

LABEL_40:
    if (v10 < v9)
    {
      goto LABEL_122;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1E37FFF70(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v46 = *(v8 + 16);
    v45 = *(v8 + 24);
    v47 = v46 + 1;
    if (v46 >= v45 >> 1)
    {
      result = sub_1E37FFF70((v45 > 1), v46 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v47;
    v48 = v8 + 32;
    v49 = (v8 + 32 + 16 * v46);
    *v49 = v9;
    v49[1] = v10;
    v107 = *v103;
    if (!*v103)
    {
      goto LABEL_132;
    }

    v108 = v10;
    if (v46)
    {
      while (1)
      {
        v50 = v47 - 1;
        v51 = (v48 + 16 * (v47 - 1));
        v52 = (v8 + 16 * v47);
        if (v47 >= 4)
        {
          break;
        }

        if (v47 == 3)
        {
          v53 = *(v8 + 32);
          v54 = *(v8 + 40);
          v63 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          v56 = v63;
LABEL_60:
          if (v56)
          {
            goto LABEL_109;
          }

          v68 = *v52;
          v67 = v52[1];
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_112;
          }

          v72 = v51[1];
          v73 = v72 - *v51;
          if (__OFSUB__(v72, *v51))
          {
            goto LABEL_115;
          }

          if (__OFADD__(v70, v73))
          {
            goto LABEL_117;
          }

          if (v70 + v73 >= v55)
          {
            if (v55 < v73)
            {
              v50 = v47 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        if (v47 < 2)
        {
          goto LABEL_111;
        }

        v75 = *v52;
        v74 = v52[1];
        v63 = __OFSUB__(v74, v75);
        v70 = v74 - v75;
        v71 = v63;
LABEL_75:
        if (v71)
        {
          goto LABEL_114;
        }

        v77 = *v51;
        v76 = v51[1];
        v63 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v63)
        {
          goto LABEL_116;
        }

        if (v78 < v70)
        {
          goto LABEL_89;
        }

LABEL_82:
        if (v50 - 1 >= v47)
        {
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
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (!*a3)
        {
          goto LABEL_129;
        }

        v82 = v8;
        v83 = (v48 + 16 * (v50 - 1));
        v84 = *v83;
        v85 = v48;
        v86 = v50;
        v8 = v48 + 16 * v50;
        v87 = *(v8 + 8);
        sub_1E3F63BE0((*a3 + 8 * *v83), (*a3 + 8 * *v8), (*a3 + 8 * v87), v107);
        if (v5)
        {
        }

        if (v87 < v84)
        {
          goto LABEL_104;
        }

        v5 = *(v82 + 16);
        if (v86 > v5)
        {
          goto LABEL_105;
        }

        *v83 = v84;
        v83[1] = v87;
        if (v86 >= v5)
        {
          goto LABEL_106;
        }

        v88 = v86;
        v47 = v5 - 1;
        result = memmove(v8, (v8 + 16), 16 * (v5 - 1 - v88));
        v8 = v82;
        *(v82 + 16) = v5 - 1;
        v89 = v5 > 2;
        v5 = 0;
        v48 = v85;
        if (!v89)
        {
          goto LABEL_89;
        }
      }

      v57 = v48 + 16 * v47;
      v58 = *(v57 - 64);
      v59 = *(v57 - 56);
      v63 = __OFSUB__(v59, v58);
      v60 = v59 - v58;
      if (v63)
      {
        goto LABEL_107;
      }

      v62 = *(v57 - 48);
      v61 = *(v57 - 40);
      v63 = __OFSUB__(v61, v62);
      v55 = v61 - v62;
      v56 = v63;
      if (v63)
      {
        goto LABEL_108;
      }

      v64 = v52[1];
      v65 = v64 - *v52;
      if (__OFSUB__(v64, *v52))
      {
        goto LABEL_110;
      }

      v63 = __OFADD__(v55, v65);
      v66 = v55 + v65;
      if (v63)
      {
        goto LABEL_113;
      }

      if (v66 >= v60)
      {
        v80 = *v51;
        v79 = v51[1];
        v63 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v63)
        {
          goto LABEL_121;
        }

        if (v55 < v81)
        {
          v50 = v47 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_60;
    }

LABEL_89:
    v6 = a3[1];
    v7 = v108;
    if (v108 >= v6)
    {
      goto LABEL_92;
    }
  }

  v31 = (v9 + a4);
  if (__OFADD__(v9, a4))
  {
    goto LABEL_125;
  }

  if (v31 >= v30)
  {
    v31 = a3[1];
  }

  if (v31 < v9)
  {
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  if (v10 == v31)
  {
    goto LABEL_40;
  }

  v99 = v5;
  v100 = v8;
  v32 = *a3;
  v33 = *a3 + 8 * v10 - 8;
  v102 = v9;
  v34 = v9 - v10;
  v106 = v31;
LABEL_33:
  v108 = v10;
  v35 = *(v32 + 8 * v10);
  v36 = v34;
  v37 = v33;
  while (1)
  {
    v38 = *v37;
    v39 = *(*v35 + 520);

    v41 = v39(v40);
    v42 = (*(*v38 + 520))();

    if (v41 >= v42)
    {
LABEL_38:
      v10 = (v108 + 1);
      v33 += 8;
      --v34;
      if (v108 + 1 == v106)
      {
        v10 = v106;
        v5 = v99;
        v8 = v100;
        v9 = v102;
        goto LABEL_40;
      }

      goto LABEL_33;
    }

    if (!v32)
    {
      break;
    }

    v43 = *v37;
    v35 = v37[1];
    *v37 = v35;
    v37[1] = v43;
    --v37;
    if (__CFADD__(v36++, 1))
    {
      goto LABEL_38;
    }
  }

  __break(1u);
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
  return result;
}

uint64_t sub_1E3F63104(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v121 = result;
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_109:
    v127 = *v121;
    if (!*v121)
    {
      goto LABEL_152;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_111;
    }

    goto LABEL_146;
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v7 = v5;
    v8 = (v5 + 1);
    if ((v5 + 1) < v4)
    {
      v9 = *a3;
      sub_1E327F454(*a3 + 40 * v8, &v132);
      sub_1E327F454(v9 + 40 * v7, v129);
      v10 = v133;
      v11 = v134;
      __swift_project_boxed_opaque_existential_1(&v132, v133);
      v12 = (*(v11 + 24))(v10, v11);
      if (v13)
      {
        v14 = 0;
      }

      else
      {
        v14 = v12;
      }

      v127 = v14;
      v15 = v130;
      v16 = v131;
      __swift_project_boxed_opaque_existential_1(v129, v130);
      v17 = (*(v16 + 24))(v15, v16);
      if (v18)
      {
        v19 = 0;
      }

      else
      {
        v19 = v17;
      }

      v124 = v19;
      if (v135)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v129);
        __swift_destroy_boxed_opaque_existential_1Tm(&v132);
      }

      v117 = v6;
      __swift_destroy_boxed_opaque_existential_1Tm(v129);
      result = __swift_destroy_boxed_opaque_existential_1Tm(&v132);
      v122 = 40 * v7;
      v20 = v9 + 40 * v7 + 80;
      v119 = v7;
      v21 = (v7 + 2);
      while (1)
      {
        v6 = v21;
        v22 = v8 + 1;
        if (v22 >= v4)
        {
          break;
        }

        sub_1E327F454(v20, &v132);
        sub_1E327F454(v20 - 40, v129);
        v23 = v22;
        v24 = v133;
        v25 = v134;
        __swift_project_boxed_opaque_existential_1(&v132, v133);
        v26 = (*(v25 + 24))(v24, v25);
        if (v27)
        {
          v28 = 0;
        }

        else
        {
          v28 = v26;
        }

        v29 = v130;
        v30 = v131;
        __swift_project_boxed_opaque_existential_1(v129, v130);
        v31 = *(v30 + 24);
        v32 = v30;
        v8 = v23;
        v33 = v31(v29, v32);
        if (v34)
        {
          v35 = 0;
        }

        else
        {
          v35 = v33;
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v129);
        result = __swift_destroy_boxed_opaque_existential_1Tm(&v132);
        v20 += 40;
        v21 = v6 + 1;
        if (v127 < v124 == v28 >= v35)
        {
          goto LABEL_22;
        }
      }

      v8 = v4;
LABEL_22:
      if (v127 < v124)
      {
        v7 = v119;
        if (v8 < v119)
        {
          goto LABEL_145;
        }

        if (v119 >= v8)
        {
          v6 = v117;
          goto LABEL_35;
        }

        if (v4 >= v6)
        {
          v36 = v6;
        }

        else
        {
          v36 = v4;
        }

        v37 = 40 * v36 - 40;
        v38 = v8;
        v39 = v119;
        v40 = v122;
        do
        {
          if (v39 != --v38)
          {
            v41 = *a3;
            if (!*a3)
            {
              goto LABEL_150;
            }

            v42 = v41 + v40;
            v43 = v41 + v37;
            sub_1E3251BE8((v41 + v40), &v132);
            v44 = *(v43 + 32);
            v45 = *(v43 + 16);
            *v42 = *v43;
            *(v42 + 16) = v45;
            *(v42 + 32) = v44;
            result = sub_1E3251BE8(&v132, v43);
          }

          ++v39;
          v37 -= 40;
          v40 += 40;
        }

        while (v39 < v38);
      }

      v6 = v117;
      v7 = v119;
    }

LABEL_35:
    v46 = a3[1];
    if (v8 < v46)
    {
      if (__OFSUB__(v8, v7))
      {
        goto LABEL_142;
      }

      if (v8 - v7 < a4)
      {
        break;
      }
    }

LABEL_57:
    if (v8 < v7)
    {
      goto LABEL_141;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1E37FFF70(0, *(v6 + 16) + 1, 1, v6);
      v6 = result;
    }

    v65 = *(v6 + 16);
    v64 = *(v6 + 24);
    v66 = v65 + 1;
    if (v65 >= v64 >> 1)
    {
      result = sub_1E37FFF70((v64 > 1), v65 + 1, 1, v6);
      v6 = result;
    }

    *(v6 + 16) = v66;
    v67 = v6 + 32;
    v68 = (v6 + 32 + 16 * v65);
    *v68 = v7;
    v68[1] = v8;
    v126 = *v121;
    if (!*v121)
    {
      goto LABEL_151;
    }

    v127 = v8;
    if (v65)
    {
      while (1)
      {
        v69 = v66 - 1;
        v70 = (v67 + 16 * (v66 - 1));
        v71 = (v6 + 16 * v66);
        if (v66 >= 4)
        {
          break;
        }

        if (v66 == 3)
        {
          v72 = *(v6 + 32);
          v73 = *(v6 + 40);
          v82 = __OFSUB__(v73, v72);
          v74 = v73 - v72;
          v75 = v82;
LABEL_77:
          if (v75)
          {
            goto LABEL_128;
          }

          v87 = *v71;
          v86 = v71[1];
          v88 = __OFSUB__(v86, v87);
          v89 = v86 - v87;
          v90 = v88;
          if (v88)
          {
            goto LABEL_131;
          }

          v91 = v70[1];
          v92 = v91 - *v70;
          if (__OFSUB__(v91, *v70))
          {
            goto LABEL_134;
          }

          if (__OFADD__(v89, v92))
          {
            goto LABEL_136;
          }

          if (v89 + v92 >= v74)
          {
            if (v74 < v92)
            {
              v69 = v66 - 2;
            }

            goto LABEL_99;
          }

          goto LABEL_92;
        }

        if (v66 < 2)
        {
          goto LABEL_130;
        }

        v94 = *v71;
        v93 = v71[1];
        v82 = __OFSUB__(v93, v94);
        v89 = v93 - v94;
        v90 = v82;
LABEL_92:
        if (v90)
        {
          goto LABEL_133;
        }

        v96 = *v70;
        v95 = v70[1];
        v82 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v82)
        {
          goto LABEL_135;
        }

        if (v97 < v89)
        {
          goto LABEL_106;
        }

LABEL_99:
        if (v69 - 1 >= v66)
        {
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
          goto LABEL_144;
        }

        if (!*a3)
        {
          goto LABEL_148;
        }

        v101 = (v67 + 16 * (v69 - 1));
        v102 = *v101;
        v103 = (v67 + 16 * v69);
        v104 = v103[1];
        v105 = v135;
        sub_1E3F63EE8((*a3 + 40 * *v101), (*a3 + 40 * *v103), *a3 + 40 * v104, v126);
        v135 = v105;
        if (v105)
        {
        }

        if (v104 < v102)
        {
          goto LABEL_123;
        }

        v106 = v6;
        v6 = *(v6 + 16);
        if (v69 > v6)
        {
          goto LABEL_124;
        }

        *v101 = v102;
        v101[1] = v104;
        if (v69 >= v6)
        {
          goto LABEL_125;
        }

        v66 = v6 - 1;
        result = memmove((v67 + 16 * v69), v103 + 2, 16 * (v6 - 1 - v69));
        *(v106 + 16) = v6 - 1;
        v107 = v6 > 2;
        v6 = v106;
        if (!v107)
        {
          goto LABEL_106;
        }
      }

      v76 = v67 + 16 * v66;
      v77 = *(v76 - 64);
      v78 = *(v76 - 56);
      v82 = __OFSUB__(v78, v77);
      v79 = v78 - v77;
      if (v82)
      {
        goto LABEL_126;
      }

      v81 = *(v76 - 48);
      v80 = *(v76 - 40);
      v82 = __OFSUB__(v80, v81);
      v74 = v80 - v81;
      v75 = v82;
      if (v82)
      {
        goto LABEL_127;
      }

      v83 = v71[1];
      v84 = v83 - *v71;
      if (__OFSUB__(v83, *v71))
      {
        goto LABEL_129;
      }

      v82 = __OFADD__(v74, v84);
      v85 = v74 + v84;
      if (v82)
      {
        goto LABEL_132;
      }

      if (v85 >= v79)
      {
        v99 = *v70;
        v98 = v70[1];
        v82 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v82)
        {
          goto LABEL_140;
        }

        if (v74 < v100)
        {
          v69 = v66 - 2;
        }

        goto LABEL_99;
      }

      goto LABEL_77;
    }

LABEL_106:
    v5 = v127;
    v4 = a3[1];
    if (v127 >= v4)
    {
      goto LABEL_109;
    }
  }

  v47 = &v7[a4];
  if (__OFADD__(v7, a4))
  {
    goto LABEL_143;
  }

  if (v47 >= v46)
  {
    v47 = a3[1];
  }

  if (v47 < v7)
  {
LABEL_144:
    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    result = sub_1E37FFF5C(v6);
    v6 = result;
LABEL_111:
    v108 = (v6 + 16);
    v109 = *(v6 + 16);
    while (v109 >= 2)
    {
      if (!*a3)
      {
        goto LABEL_149;
      }

      v110 = v6;
      v111 = (v6 + 16 * v109);
      v112 = *v111;
      v6 = &v108[2 * v109];
      v113 = *(v6 + 8);
      v114 = v135;
      sub_1E3F63EE8((*a3 + 40 * *v111), (*a3 + 40 * *v6), *a3 + 40 * v113, v127);
      v135 = v114;
      if (v114)
      {
        break;
      }

      if (v113 < v112)
      {
        goto LABEL_137;
      }

      if (v109 - 2 >= *v108)
      {
        goto LABEL_138;
      }

      *v111 = v112;
      v111[1] = v113;
      v115 = *v108 - v109;
      if (*v108 < v109)
      {
        goto LABEL_139;
      }

      v109 = *v108 - 1;
      result = memmove(v6, (v6 + 16), 16 * v115);
      *v108 = v109;
      v6 = v110;
    }
  }

  if (v8 == v47)
  {
    goto LABEL_57;
  }

  v118 = v6;
  v120 = v7;
  v48 = *a3;
  v49 = *a3 + 40 * v8;
  v50 = &v7[-v8];
  v123 = v47;
LABEL_44:
  v125 = v49;
  v127 = v8;
  v51 = v50;
  while (1)
  {
    sub_1E327F454(v49, &v132);
    sub_1E327F454(v49 - 40, v129);
    v53 = v133;
    v52 = v134;
    __swift_project_boxed_opaque_existential_1(&v132, v133);
    v54 = (*(v52 + 24))(v53, v52);
    if (v55)
    {
      v56 = 0;
    }

    else
    {
      v56 = v54;
    }

    v57 = v130;
    v58 = v131;
    __swift_project_boxed_opaque_existential_1(v129, v130);
    v59 = (*(v58 + 24))(v57, v58);
    if (v60)
    {
      v61 = 0;
    }

    else
    {
      v61 = v59;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v129);
    result = __swift_destroy_boxed_opaque_existential_1Tm(&v132);
    if (v56 >= v61)
    {
LABEL_55:
      v8 = (v127 + 1);
      v49 = v125 + 40;
      --v50;
      if (v127 + 1 == v123)
      {
        v8 = v123;
        v6 = v118;
        v7 = v120;
        goto LABEL_57;
      }

      goto LABEL_44;
    }

    if (!v48)
    {
      break;
    }

    sub_1E3251BE8(v49, &v132);
    v62 = *(v49 - 24);
    *v49 = *(v49 - 40);
    *(v49 + 16) = v62;
    *(v49 + 32) = *(v49 - 8);
    sub_1E3251BE8(&v132, v49 - 40);
    v49 -= 40;
    if (__CFADD__(v51++, 1))
    {
      goto LABEL_55;
    }
  }

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
  return result;
}

uint64_t sub_1E3F638D8(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1E37FFF5C(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1E3F63A04((*a3 + (*v9 << 6)), (*a3 + (*v11 << 6)), (*a3 + (v12 << 6)), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1E3F63A04(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 64;
  v9 = (a3 - __dst) / 64;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[64 * v8] <= a4)
    {
      memmove(a4, __src, v8 << 6);
    }

    v11 = &v4[64 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_46;
      }

      v13 = *(v6 + 2) == *(v4 + 2) && *(v6 + 3) == *(v4 + 3);
      if (v13 || (sub_1E42079A4() & 1) == 0)
      {
        break;
      }

      v14 = v6;
      v13 = v7 == v6;
      v6 += 64;
      if (!v13)
      {
        goto LABEL_21;
      }

LABEL_22:
      v7 += 64;
    }

    v14 = v4;
    v13 = v7 == v4;
    v4 += 64;
    if (v13)
    {
      goto LABEL_22;
    }

LABEL_21:
    v15 = *v14;
    v16 = *(v14 + 1);
    v17 = *(v14 + 3);
    *(v7 + 2) = *(v14 + 2);
    *(v7 + 3) = v17;
    *v7 = v15;
    *(v7 + 1) = v16;
    goto LABEL_22;
  }

  if (a4 != __dst || &__dst[64 * v9] <= a4)
  {
    memmove(a4, __dst, v9 << 6);
  }

  v11 = &v4[64 * v9];
LABEL_29:
  for (v5 -= 64; v11 > v4 && v6 > v7; v5 -= 64)
  {
    v20 = *(v11 - 6) == *(v6 - 6) && *(v11 - 5) == *(v6 - 5);
    if (!v20 && (sub_1E42079A4() & 1) != 0)
    {
      v24 = v6 - 64;
      v13 = v5 + 64 == v6;
      v6 -= 64;
      if (!v13)
      {
        v25 = *v24;
        v26 = *(v24 + 1);
        v27 = *(v24 + 3);
        *(v5 + 2) = *(v24 + 2);
        *(v5 + 3) = v27;
        *v5 = v25;
        *(v5 + 1) = v26;
        v6 = v24;
      }

      goto LABEL_29;
    }

    if (v11 != v5 + 64)
    {
      v21 = *(v11 - 4);
      v22 = *(v11 - 3);
      v23 = *(v11 - 1);
      *(v5 + 2) = *(v11 - 2);
      *(v5 + 3) = v23;
      *v5 = v21;
      *(v5 + 1) = v22;
    }

    v11 -= 64;
  }

LABEL_46:
  v28 = (v11 - v4) / 64;
  if (v6 != v4 || v6 >= &v4[64 * v28])
  {
    memmove(v6, v4, v28 << 6);
  }

  return 1;
}

uint64_t sub_1E3F63BE0(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 8;
  v9 = (a3 - __dst) / 8;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[8 * v8] <= a4)
    {
      memmove(a4, __src, 8 * v8);
    }

    v11 = &v4[8 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_38;
      }

      v13 = v7;
      v14 = *v4;
      v15 = *(**v6 + 520);

      v17 = v4;
      v18 = v15(v16);
      v19 = (*(*v14 + 520))();

      if (v18 >= v19)
      {
        break;
      }

      v20 = v6;
      v21 = v13;
      v22 = v13 == v6;
      v6 += 8;
      v4 = v17;
      if (!v22)
      {
        goto LABEL_17;
      }

LABEL_18:
      v7 = v21 + 8;
    }

    v20 = v17;
    v4 = v17 + 8;
    v21 = v13;
    if (v13 == v17)
    {
      goto LABEL_18;
    }

LABEL_17:
    *v21 = *v20;
    goto LABEL_18;
  }

  if (a4 != __dst || &__dst[8 * v9] <= a4)
  {
    memmove(a4, __dst, 8 * v9);
  }

  v11 = &v4[8 * v9];
  v37 = v4;
  v36 = v7;
LABEL_25:
  v24 = v6 - 8;
  v5 -= 8;
  while (v11 > v4 && v6 > v7)
  {
    v26 = v24;
    v27 = *v24;
    v28 = *(**(v11 - 1) + 520);

    v30 = v28(v29);
    v31 = (*(*v27 + 520))();

    v32 = v5 + 8;
    if (v30 < v31)
    {
      v22 = v32 == v6;
      v6 = v26;
      v7 = v36;
      v4 = v37;
      if (!v22)
      {
        *v5 = *v26;
        v6 = v26;
      }

      goto LABEL_25;
    }

    if (v11 != v32)
    {
      *v5 = *(v11 - 1);
    }

    v5 -= 8;
    v11 -= 8;
    v7 = v36;
    v4 = v37;
    v24 = v26;
  }

LABEL_38:
  v33 = (v11 - v4) / 8;
  if (v6 != v4 || v6 >= &v4[8 * v33])
  {
    memmove(v6, v4, 8 * v33);
  }

  return 1;
}

uint64_t sub_1E3F63EE8(char *__src, char *__dst, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 40;
  v9 = (a3 - __dst) / 40;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[40 * v8] <= a4)
    {
      memmove(a4, __src, 40 * v8);
    }

    v11 = &v4[40 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_50;
      }

      v13 = v5;
      sub_1E327F454(v6, v55);
      sub_1E327F454(v4, v52);
      v14 = v56;
      v15 = v57;
      __swift_project_boxed_opaque_existential_1(v55, v56);
      v16 = (*(v15 + 24))(v14, v15);
      v18 = (v17 & 1) != 0 ? 0 : v16;
      v19 = v53;
      v20 = v54;
      __swift_project_boxed_opaque_existential_1(v52, v53);
      v21 = (*(v20 + 24))(v19, v20);
      v23 = (v22 & 1) != 0 ? 0 : v21;
      __swift_destroy_boxed_opaque_existential_1Tm(v52);
      __swift_destroy_boxed_opaque_existential_1Tm(v55);
      if (v18 >= v23)
      {
        break;
      }

      v24 = v6;
      v25 = v7 == v6;
      v6 += 40;
      if (!v25)
      {
        goto LABEL_23;
      }

LABEL_24:
      v7 += 40;
      v5 = v13;
    }

    v24 = v4;
    v25 = v7 == v4;
    v4 += 40;
    if (v25)
    {
      goto LABEL_24;
    }

LABEL_23:
    v26 = *v24;
    v27 = *(v24 + 1);
    *(v7 + 4) = *(v24 + 4);
    *v7 = v26;
    *(v7 + 1) = v27;
    goto LABEL_24;
  }

  if (a4 != __dst || &__dst[40 * v9] <= a4)
  {
    memmove(a4, __dst, 40 * v9);
  }

  v29 = &v4[40 * v9];
  v58 = v7;
  v51 = v4;
LABEL_31:
  v30 = (v6 - 40);
  v5 -= 40;
  v31 = (v29 - 40);
  while (1)
  {
    v11 = (v31 + 40);
    if (v31 + 40 <= v4 || v6 <= v7)
    {
      break;
    }

    sub_1E327F454(v31, v55);
    v33 = v30;
    sub_1E327F454(v30, v52);
    v35 = v56;
    v34 = v57;
    __swift_project_boxed_opaque_existential_1(v55, v56);
    v36 = (*(v34 + 24))(v35, v34);
    if (v37)
    {
      v38 = 0;
    }

    else
    {
      v38 = v36;
    }

    v39 = v53;
    v40 = v54;
    __swift_project_boxed_opaque_existential_1(v52, v53);
    v41 = (*(v40 + 24))(v39, v40);
    if (v42)
    {
      v43 = 0;
    }

    else
    {
      v43 = v41;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v52);
    __swift_destroy_boxed_opaque_existential_1Tm(v55);
    if (v38 < v43)
    {
      v29 = (v31 + 40);
      v25 = v5 + 40 == v6;
      v6 = v33;
      v4 = v51;
      v7 = v58;
      if (!v25)
      {
        v46 = *v33;
        v47 = *(v33 + 1);
        *(v5 + 32) = *(v33 + 4);
        *v5 = v46;
        *(v5 + 16) = v47;
        v6 = v33;
      }

      goto LABEL_31;
    }

    if (v11 != (v5 + 40))
    {
      v44 = *v31;
      v45 = *(v31 + 16);
      *(v5 + 32) = *(v31 + 32);
      *v5 = v44;
      *(v5 + 16) = v45;
    }

    v5 -= 40;
    v31 -= 40;
    v4 = v51;
    v7 = v58;
    v30 = v33;
  }

LABEL_50:
  v48 = (v11 - v4) / 40;
  if (v6 != v4 || v6 >= &v4[40 * v48])
  {
    memmove(v6, v4, 40 * v48);
  }

  return 1;
}

char *sub_1E3F6421C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E138);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 64);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[64 * v8] <= v12)
    {
      memmove(v12, v13, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1E3F64384(void *a1)
{
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  v7 = *(v1 + 48);
  v6 = *(v1 + 56);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = sub_1E38BBD0C();
    type metadata accessor for LibResponseParser();
    if (v10)
    {
      v31 = v5;
      v11 = sub_1E3923128(a1);
      if (*(v11 + 16))
      {
        type metadata accessor for LibMenuItem();
        v12 = *(*v9 + 144);
        v12();
        OUTLINED_FUNCTION_18();
        v30 = sub_1E3A8A680();
        *&v35 = v11;

        v3 = 0;
        sub_1E3F605E0(&v35, sub_1E3F64E28, sub_1E3F61DEC);

        v13 = *(v35 + 16);
        if (v13)
        {
          v29 = v7;
          v34 = MEMORY[0x1E69E7CC0];
          v32 = v35;
          sub_1E4207574();
          v14 = 32;
          v3 = v9;
          do
          {
            v15 = *(v32 + v14);
            v16 = *(v32 + v14 + 16);
            v17 = *(v32 + v14 + 48);
            v36[1] = *(v32 + v14 + 32);
            v36[2] = v17;
            v35 = v15;
            v36[0] = v16;
            v18 = sub_1E39241C4(&v35, v33);
            (v12)(v18);
            sub_1E3A8B094();
            sub_1E4207544();
            sub_1E4207584();
            sub_1E4207594();
            sub_1E4207554();
            v14 += 64;
            --v13;
          }

          while (v13);

          v19 = v34;
          v7 = v29;
        }

        else
        {

          v19 = MEMORY[0x1E69E7CC0];
        }

        v20 = v30;
        (*(*v30 + 296))(v19);
        v5 = v31;
      }

      else
      {

        v20 = 0;
        v5 = v31;
      }
    }

    else
    {
      sub_1E3921C2C(a1, &v35);
      if (v35)
      {
        v34 = v35;
        v20 = *(v35 + 16);
        sub_1E325F6F0(&v34, &qword_1ECF2E118);
        v33[0] = *(v36 + 8);
        sub_1E325F6F0(v33, &qword_1ECF3D960);
        if (v20)
        {
          type metadata accessor for LibMenuItem();
          (*(*v9 + 144))();
          OUTLINED_FUNCTION_18();
          v20 = sub_1E3A8A680();
        }
      }

      else
      {
        v20 = 0;
      }
    }
  }

  else
  {
    v20 = 0;
  }

  OUTLINED_FUNCTION_11_3();
  v21 = *(v5 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 16) = v21;
  if (isUniquelyReferenced_nonNull_native)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_19;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v21 = sub_1E392937C();
  *(v5 + 16) = v21;
  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_25;
  }

LABEL_19:
  if (*(v21 + 16) <= v4)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v23 = v21 + 8 * v4;
  v3 = *(v23 + 32);
  *(v23 + 32) = v20;
  *(v5 + 16) = v21;
  swift_endAccess();

  v24 = swift_beginAccess();
  v25 = *(v7 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
LABEL_27:
    __break(1u);

    __break(1u);
    return result;
  }

  *(v7 + 16) = v27;
  if (!v27)
  {
    v6(v24);
  }
}

uint64_t sub_1E3F647E4()
{
  v1 = *(v0 + 40);
  type metadata accessor for LibResponseParser();
  OUTLINED_FUNCTION_4_0();
  v2 = swift_allocObject();
  v5 = *(v0 + 24);
  swift_weakInit();
  OUTLINED_FUNCTION_10_9();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v5;
  *(v3 + 40) = v1;

  sub_1E3921444();
}

uint64_t sub_1E3F648E8(void *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  type metadata accessor for LibResponseParser();
  OUTLINED_FUNCTION_2_4();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  sub_1E3922D3C(a1, sub_1E3F64AFC);
}

uint64_t sub_1E3F64980(uint64_t a1)
{
  result = sub_1E3F64ED4(&qword_1ECF3D1D0, type metadata accessor for LibFamilySharingSource);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for LibFamilySharingSource()
{
  result = qword_1EE29A800;
  if (!qword_1EE29A800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3F64A2C()
{
  sub_1E3B4E63C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1E3F64B08(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1E3F64B24(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t objectdestroy_17Tm_0(void (*a1)(void))
{

  a1(*(v1 + 48));
  a1(*(v1 + 64));
  OUTLINED_FUNCTION_67_6();

  return swift_deallocObject();
}

uint64_t sub_1E3F64BB8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = sub_1E4207384();
    if (v4)
    {
      v5 = v4;
      v2 = sub_1E37FEA14(v4, 0);
      sub_1E3F64CA0((v2 + 4), v5, a1);
      v7 = v6;

      if (v7 == v5)
      {
        return v2;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

  return a1 & 0xFFFFFFFFFFFFFF8;
}

uint64_t sub_1E3F64C4C()
{
  v1 = *(v0 + 16);
  sub_1E3F606E0(*(v0 + 32));
  v1();
}

uint64_t sub_1E3F64CA0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1E4207384();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1E32AE9B0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for LibFamilySharingSeasonMediaEntity();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1E32752B0(&qword_1ECF3D1E0, &qword_1ECF3D1D8);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D1D8);
          v9 = sub_1E38CF91C(v12, i, a3);
          v11 = *v10;

          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3F64E3C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1E3251BE8(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_1E3F64ED4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_11Tm_0()
{

  OUTLINED_FUNCTION_10_9();

  return swift_deallocObject();
}

void *sub_1E3F65000(void *result)
{
  if (result)
  {
    v1 = result;
  }

  return result;
}

void *sub_1E3F65040(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC8VideosUI26ContextMenuPreviewItemView_backgroundComponent];
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  *(v5 + 1) = a2;
  v7 = OUTLINED_FUNCTION_13_8();
  sub_1E3F65000(v7);
  v8 = &v2[OBJC_IVAR____TtC8VideosUI26ContextMenuPreviewItemView_backgroundComponent];
  OUTLINED_FUNCTION_5_0();
  v9 = *v8;
  sub_1E3F65000(*v8);
  sub_1E3C8BDFC(v9, v6);
  sub_1E3F6511C(v9);
  if (*v8)
  {
    [v2 sendSubviewToBack_];
  }

  sub_1E3F6511C(v6);
  v10 = OUTLINED_FUNCTION_13_8();
  return sub_1E3F6511C(v10);
}

void *sub_1E3F6511C(void *result)
{
  if (result)
  {
  }

  return result;
}

void *sub_1E3F6515C(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = v3 + *a3;
  swift_beginAccess();
  v8 = *v7;
  *v7 = a1;
  *(v7 + 8) = a2;
  v9 = OUTLINED_FUNCTION_13_8();
  sub_1E3F65000(v9);
  v10 = (v3 + *a3);
  OUTLINED_FUNCTION_5_0();
  v11 = *v10;
  v12 = OUTLINED_FUNCTION_53();
  sub_1E3F65000(v12);
  sub_1E3C8BDFC(v11, v8);
  v13 = OUTLINED_FUNCTION_53();
  sub_1E3F6511C(v13);
  sub_1E3F6511C(v8);
  v14 = OUTLINED_FUNCTION_13_8();
  return sub_1E3F6511C(v14);
}

id sub_1E3F65218()
{
  OUTLINED_FUNCTION_0_8();
  ObjectType = swift_getObjectType();
  v2 = (v0 + OBJC_IVAR____TtC8VideosUI26ContextMenuPreviewItemView_backgroundComponent);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR____TtC8VideosUI26ContextMenuPreviewItemView_imageViewComponent);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + OBJC_IVAR____TtC8VideosUI26ContextMenuPreviewItemView_titleViewComponent);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR____TtC8VideosUI26ContextMenuPreviewItemView_subtitleViewComponent);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v0 + OBJC_IVAR____TtC8VideosUI26ContextMenuPreviewItemView_eyeBrowViewComponent);
  *v6 = 0;
  v6[1] = 0;
  v7 = (v0 + OBJC_IVAR____TtC8VideosUI26ContextMenuPreviewItemView_accessoryViewComponent);
  *v7 = 0;
  v7[1] = 0;
  v19 = v0;
  v20 = ObjectType;
  v8 = OUTLINED_FUNCTION_2_0();
  v11 = objc_msgSendSuper2(v9, v10, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF379F0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1E4297BE0;
  *(v12 + 32) = sub_1E3F65410();
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF37A00);
  v14 = sub_1E42062A4();

  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v18[4] = sub_1E3F65454;
  v18[5] = v15;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = sub_1E3790FBC;
  v18[3] = &block_descriptor_140;
  v16 = _Block_copy(v18);

  [v13 vui:v14 registerForTraitChanges:v16 withHandler:?];
  _Block_release(v16);

  return v13;
}

unint64_t sub_1E3F65410()
{
  result = qword_1EE23AEE0;
  if (!qword_1EE23AEE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE23AEE0);
  }

  return result;
}

void sub_1E3F65454()
{
  OUTLINED_FUNCTION_5_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong setNeedsLayout];
  }
}

void sub_1E3F654C8()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI26ContextMenuPreviewItemView_backgroundComponent);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC8VideosUI26ContextMenuPreviewItemView_imageViewComponent);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR____TtC8VideosUI26ContextMenuPreviewItemView_titleViewComponent);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + OBJC_IVAR____TtC8VideosUI26ContextMenuPreviewItemView_subtitleViewComponent);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR____TtC8VideosUI26ContextMenuPreviewItemView_eyeBrowViewComponent);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v0 + OBJC_IVAR____TtC8VideosUI26ContextMenuPreviewItemView_accessoryViewComponent);
  *v6 = 0;
  v6[1] = 0;
  sub_1E42076B4();
  __break(1u);
}

char *sub_1E3F6559C(uint64_t a1, char *a2)
{
  v4 = v2;
  OUTLINED_FUNCTION_26_0();
  v8 = v7;
  v9 = (*(v6 + 488))();
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  if (a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = [objc_allocWithZone(v4) initWithFrame_];
  }

  v12 = a2;
  v13 = sub_1E373E010(39, v10);
  if (v13)
  {
    v14 = v13;
    v15 = _s8VideosUIAAC19initializeUIFactoryyyFZ_0();
    v16 = OUTLINED_FUNCTION_5_206(v15);
    v20 = OUTLINED_FUNCTION_3_224(v16, v17, v18, v19);

    sub_1E373C624(v90);
    if (v20)
    {
      OUTLINED_FUNCTION_12_6();
      v8 = v14;
      if (!(*(v21 + 392))())
      {
        v8 = type metadata accessor for ImageLayout();
        sub_1E3BD61D8();
      }

      v22 = v20;
      OUTLINED_FUNCTION_19_134();
      v23 = OUTLINED_FUNCTION_6_196();
      sub_1E3F6515C(v23, v24, v25);
    }
  }

  if (sub_1E373E010(1, v10))
  {
    v26 = OBJC_IVAR____TtC8VideosUI26ContextMenuPreviewItemView_backgroundComponent;
    OUTLINED_FUNCTION_5_0();
    v27 = *&v11[v26];
    if (v27)
    {
      v28 = v27;
    }

    else
    {
      v28 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    }

    v29 = v28;
    OUTLINED_FUNCTION_12_6();
    v31 = (*(v30 + 392))();
    if (!v31)
    {
      type metadata accessor for ViewLayout();
      v31 = sub_1E3C2F968();
    }

    v32 = v31;
    OUTLINED_FUNCTION_26_0();
    v34 = (*(v33 + 744))();
    [v29 setBackgroundColor_];

    v3 = [v29 layer];
    v8 = v32;
    (*(*v32 + 552))(v91);
    v35 = 0.0;
    if ((v92 & 1) == 0)
    {
      v35 = sub_1E3952BE8(v91[0], v91[1], v91[2], v91[3]);
    }

    [v3 setCornerRadius_];

    v36 = v29;
    OUTLINED_FUNCTION_19_134();
    v37 = OUTLINED_FUNCTION_6_196();
    sub_1E3F65040(v37, v38);
  }

  v39 = sub_1E373E010(23, v10);
  if (v39)
  {
    v40 = v39;
    v41 = _s8VideosUIAAC19initializeUIFactoryyyFZ_0();
    v42 = OUTLINED_FUNCTION_5_206(v41);
    v46 = OUTLINED_FUNCTION_3_224(v42, v43, v44, v45);

    sub_1E373C624(v90);
    if (v46)
    {
      OUTLINED_FUNCTION_12_6();
      v8 = v40;
      if (!(*(v47 + 392))())
      {
        v8 = type metadata accessor for TextLayout();
        sub_1E383BCC0();
      }

      v48 = v46;
      OUTLINED_FUNCTION_19_134();
      v49 = OUTLINED_FUNCTION_6_196();
      sub_1E3F6515C(v49, v50, v51);
    }
  }

  v52 = sub_1E373E010(15, v10);
  if (v52)
  {
    v53 = v52;
    v54 = _s8VideosUIAAC19initializeUIFactoryyyFZ_0();
    v55 = OUTLINED_FUNCTION_5_206(v54);
    v59 = OUTLINED_FUNCTION_3_224(v55, v56, v57, v58);

    sub_1E373C624(v90);
    if (v59)
    {
      OUTLINED_FUNCTION_12_6();
      v8 = v53;
      if (!(*(v60 + 392))())
      {
        v8 = type metadata accessor for TextLayout();
        sub_1E383BCC0();
      }

      v61 = v59;
      OUTLINED_FUNCTION_19_134();
      v62 = OUTLINED_FUNCTION_6_196();
      sub_1E3F6515C(v62, v63, v64);
    }
  }

  v65 = sub_1E373E010(17, v10);
  if (v65)
  {
    v66 = v65;
    v67 = _s8VideosUIAAC19initializeUIFactoryyyFZ_0();
    v68 = OUTLINED_FUNCTION_5_206(v67);
    v72 = OUTLINED_FUNCTION_3_224(v68, v69, v70, v71);

    sub_1E373C624(v90);
    if (v72)
    {
      OUTLINED_FUNCTION_12_6();
      v8 = v66;
      if (!(*(v73 + 392))())
      {
        v8 = type metadata accessor for TextLayout();
        sub_1E383BCC0();
      }

      v74 = v72;
      OUTLINED_FUNCTION_19_134();
      v75 = OUTLINED_FUNCTION_6_196();
      sub_1E3F6515C(v75, v76, v77);
    }
  }

  v78 = sub_1E373E010(31, v10);

  if (v78)
  {
    v79 = _s8VideosUIAAC19initializeUIFactoryyyFZ_0();
    v80 = OUTLINED_FUNCTION_5_206(v79);
    v84 = OUTLINED_FUNCTION_3_224(v80, v81, v82, v83);

    sub_1E373C624(v90);
    if (v84)
    {
      OUTLINED_FUNCTION_12_6();
      v86 = (*(v85 + 392))();
      if (!v86)
      {
        type metadata accessor for ImageLayout();
        v86 = sub_1E3BD61D8();
      }

      v87 = v86;
      v88 = v84;

      sub_1E3F6515C(v84, v87, &OBJC_IVAR____TtC8VideosUI26ContextMenuPreviewItemView_accessoryViewComponent);
    }
  }

  return v11;
}

double sub_1E3F65B48(char a1, double a2)
{
  v4 = v2;
  v6 = [v2 vuiTraitCollection];
  v7 = [v6 isAXEnabled];

  v8 = &v2[OBJC_IVAR____TtC8VideosUI26ContextMenuPreviewItemView_imageViewComponent];
  OUTLINED_FUNCTION_5_0();
  v9 = MEMORY[0x1E69DDCE0];
  if (*v8 && (v3 = v8[1], type metadata accessor for ImageLayout(), (v10 = swift_dynamicCastClass()) != 0))
  {
    v11 = v10;
    OUTLINED_FUNCTION_26_0();
    v13 = *(v12 + 152);

    v15 = v137;
    v13(v137, v14);
    rect = 0.0;
    if (v138)
    {
      v16 = v9[1];
      v17 = v9[2];
      v15 = v9;
    }

    else
    {
      v16 = *&v137[1];
      v17 = *&v137[2];
    }

    v21 = 0.0;
    v18 = *v15 + 0.0;
    OUTLINED_FUNCTION_8();
    v23 = COERCE_DOUBLE((*(v22 + 200))());
    if ((v24 & 1) == 0)
    {
      v21 = v23;
    }

    if (OUTLINED_FUNCTION_25_92() + v21 > a2)
    {
      OUTLINED_FUNCTION_25_92();
      OUTLINED_FUNCTION_8();
      (*(v25 + 208))();
    }

    OUTLINED_FUNCTION_8();
    v19 = (*(v26 + 2288))();
    v156.size.height = v27;
    v156.origin.x = v16;
    v156.origin.y = v18;
    v156.size.width = v19;
    rect_16 = v156.size.height;
    MaxY = CGRectGetMaxY(v156);
    v128 = (*(*v11 + 576))();
  }

  else
  {
    rect = 0.0;
    v128 = 2;
    v16 = 0.0;
    v18 = 0.0;
    v19 = 0.0;
    rect_16 = 0.0;
    v17 = 0.0;
    MaxY = 0.0;
  }

  v28 = &v4[OBJC_IVAR____TtC8VideosUI26ContextMenuPreviewItemView_backgroundComponent];
  OUTLINED_FUNCTION_5_0();
  v126 = v18;
  v124 = v28;
  rect_8 = v17;
  if (*v28)
  {
    v29 = v28[1];
    OUTLINED_FUNCTION_8();
    v31 = *(v30 + 152);
    v3 = (v30 + 152);

    v33 = v31(v139, v32);
    if (v140)
    {
      v34 = *v9;
    }

    else
    {
      v34 = v139[0];
    }

    if (v140)
    {
      v35 = v9[1];
    }

    else
    {
      v35 = v139[1];
    }

    v36 = COERCE_DOUBLE((*(*v29 + 432))(v33));
    v37 = rect_16;
    if ((v38 & 1) == 0)
    {
      v37 = rect_16;
      if (v36 != 0.0)
      {
        v37 = v19 / v36;
      }
    }

    rect = v35;
    v39 = v35;
    v122 = v37;
    v123 = v34;
    v40 = v34;
    v41 = v19;
    v42 = CGRectGetMaxY(*(&v37 - 3));
    if ((v7 & 1) == 0)
    {
      v157.origin.x = v16;
      v157.origin.y = v18;
      v157.size.width = v19;
      v157.size.height = rect_16;
      v42 = CGRectGetMaxY(v157);
    }

    v136 = v42;
    v43 = v7 ^ 1;

    v121 = v19;
  }

  else
  {
    v136 = MaxY;
    v43 = 0;
    v122 = 0.0;
    v123 = 0.0;
    v121 = 0.0;
  }

  v44 = &v4[OBJC_IVAR____TtC8VideosUI26ContextMenuPreviewItemView_accessoryViewComponent];
  OUTLINED_FUNCTION_5_0();
  v125 = v19;
  if (*v44)
  {
    v3 = *(v44 + 1);
    type metadata accessor for ImageLayout();
    if (swift_dynamicCastClass())
    {
      v45 = a2;
      OUTLINED_FUNCTION_26_0();
      v47 = *(v46 + 152);

      v49 = v141;
      v47(v141, v48);
      if (v142)
      {
        v51 = v9[1];
        v50 = v9[2];
        v49 = v9;
        v52 = v9[3];
      }

      else
      {
        v51 = *&v141[1];
        v50 = *&v141[2];
        v52 = *&v141[3];
      }

      v53 = *v49;
      OUTLINED_FUNCTION_8();
      v55 = COERCE_DOUBLE((*(v54 + 200))());
      if (v56)
      {
        v57 = 0.0;
      }

      else
      {
        v57 = v55;
      }

      v58 = v51;
      v59 = sub_1E3952BE0(v53, v51, v50, v52);
      a2 = v45;
      if (v59 + v57 > v45)
      {
        sub_1E3952BE0(v53, v58, v50, v52);
        OUTLINED_FUNCTION_8();
        (*(v60 + 208))();
      }

      OUTLINED_FUNCTION_8();
      (*(v61 + 2288))();
    }
  }

  v62 = &v4[OBJC_IVAR____TtC8VideosUI26ContextMenuPreviewItemView_eyeBrowViewComponent];
  OUTLINED_FUNCTION_5_0();
  v63 = *v62;
  v127 = v16;
  v130 = v8;
  if (*v62)
  {
    v64 = *(v62 + 1);
    v151 = *v62;
    v152 = v64;
    v65 = v63;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31D38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D218);
    if (OUTLINED_FUNCTION_15_147())
    {
      v66 = v147;
      v3 = v148;
      OUTLINED_FUNCTION_12_6();
      v68 = v143;
      (*(v67 + 152))(v143);
      if (v144)
      {
        v69 = v9[1];
        rect_8 = v9[2];
        v68 = v9;
        v70 = v9[3];
      }

      else
      {
        v69 = *&v143[1];
        rect_8 = *&v143[2];
        v70 = *&v143[3];
      }

      v71 = *v68;
      v72 = *v8;
      if (v72)
      {
        v73 = v72;
      }

      sub_1E3C8B6B4(v72, v71);
      v75 = v74;

      sub_1E3952BE0(v71, v69, rect_8, v70);
      VUIRoundValue();
      [v66 sizeThatFits_];
      v158.size.width = v76;
      v158.size.height = v77;
      v158.origin.x = v69;
      v158.origin.y = v136 + v75;
      v136 = CGRectGetMaxY(v158);
    }
  }

  v78 = &v4[OBJC_IVAR____TtC8VideosUI26ContextMenuPreviewItemView_titleViewComponent];
  OUTLINED_FUNCTION_5_0();
  v79 = *v78;
  v129 = v62;
  if (*v78)
  {
    v80 = *(v78 + 1);
    v151 = *v78;
    v152 = v80;
    v81 = v79;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31D38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D218);
    if (OUTLINED_FUNCTION_15_147())
    {
      v3 = v147;
      v82 = *(*v148 + 152);
      v83 = v145;
      v82(v145);
      if (v146)
      {
        v85 = v9[1];
        v84 = v9[2];
        v83 = v9;
        v86 = v9[3];
      }

      else
      {
        v85 = *&v145[1];
        v84 = *&v145[2];
        v86 = *&v145[3];
      }

      v87 = *v83;
      v88 = *v130;
      if (*v130)
      {
        v89 = v88;
      }

      if (*v62)
      {

        v88 = *v62;
        if (*v62)
        {
          v90 = v88;
        }

        v91 = rect_8;
      }

      else
      {
        v91 = v87;
      }

      sub_1E3C8B6B4(v88, v91);
      v93 = v136 + v92;
      sub_1E3952BE0(v87, v85, v84, v86);
      VUIRoundValue();
      [v3 sizeThatFits_];
      v95 = v94;
      v97 = v96;
      if ((TVAppFeature.isEnabled.getter(10) & 1) == 0)
      {
        goto LABEL_66;
      }

      v95 = a2 - v85;
      v82(&v147);
      if (v150)
      {
        if (!v43)
        {
          goto LABEL_66;
        }
      }

      else
      {
        v95 = v95 - v149;
        if ((v43 & 1) == 0)
        {
LABEL_66:
          v160.origin.x = v85;
          v160.origin.y = v93;
          v160.size.width = v95;
          v160.size.height = v97;
          CGRectGetMaxY(v160);

          goto LABEL_67;
        }
      }

      [v3 bottomMarginWithBaselineMargin_];
      v99 = v98;
      v159.origin.x = rect;
      v159.size.height = v122;
      v159.origin.y = v123;
      v159.size.width = v121;
      v93 = CGRectGetMaxY(v159) - v97 - v99;
      goto LABEL_66;
    }
  }

LABEL_67:
  v100 = &v4[OBJC_IVAR____TtC8VideosUI26ContextMenuPreviewItemView_subtitleViewComponent];
  OUTLINED_FUNCTION_5_0();
  rect_24 = a2;
  if (*v100)
  {
    v3 = *(v100 + 1);
    OUTLINED_FUNCTION_12_6();
    v102 = *(v101 + 152);
    v104 = v103;

    v106 = &v151;
    v102(&v151, v105);
    if (v155)
    {
      v108 = *(MEMORY[0x1E69DDCE0] + 8);
      v107 = *(MEMORY[0x1E69DDCE0] + 16);
      v106 = MEMORY[0x1E69DDCE0];
      v109 = *(MEMORY[0x1E69DDCE0] + 24);
    }

    else
    {
      v108 = v152;
      v107 = v153;
      v109 = v154;
    }

    v110 = *v106;
    v111 = *v78;
    if (*v78)
    {
      v112 = v111;
    }

    sub_1E3C8B6B4(v111, v110);

    sub_1E3952BE0(v110, v108, v107, v109);
    VUIRoundValue();
    [v104 sizeThatFits_];
    v161.origin.x = OUTLINED_FUNCTION_21_104();
    CGRectGetMaxY(v161);
  }

  if ((a1 & 1) == 0)
  {
    [v4 effectiveUserInterfaceLayoutDirection];
    if (*v78)
    {
      OUTLINED_FUNCTION_16_137(*v78);
      OUTLINED_FUNCTION_8_179();
      OUTLINED_FUNCTION_2_6();
      VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
      OUTLINED_FUNCTION_18_124();
    }

    if (*v100)
    {
      OUTLINED_FUNCTION_16_137(*v100);
      OUTLINED_FUNCTION_8_179();
      OUTLINED_FUNCTION_2_6();
      OUTLINED_FUNCTION_21_104();
      VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
      OUTLINED_FUNCTION_18_124();
    }

    if (*v130)
    {
      OUTLINED_FUNCTION_16_137(*v130);
      OUTLINED_FUNCTION_8_179();
      OUTLINED_FUNCTION_2_6();
      VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
      OUTLINED_FUNCTION_18_124();
    }

    if (*v129)
    {
      OUTLINED_FUNCTION_16_137(*v129);
      OUTLINED_FUNCTION_8_179();
      OUTLINED_FUNCTION_2_6();
      VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
      OUTLINED_FUNCTION_18_124();
    }

    if (*v44)
    {
      OUTLINED_FUNCTION_16_137(*v44);
      OUTLINED_FUNCTION_8_179();
      OUTLINED_FUNCTION_2_6();
      VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
      OUTLINED_FUNCTION_18_124();
    }

    if (*v124)
    {
      v113 = OUTLINED_FUNCTION_16_137(*v124);
      [v4 bounds];
      OUTLINED_FUNCTION_2_6();
      VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
      [v113 setFrame_];
    }

    if (v128 != 2 && (v128 & 1) != 0)
    {
      v114 = *v130;
      if (*v130)
      {
        objc_opt_self();
        v115 = swift_dynamicCastObjCClass();
        if (v115)
        {
          v116 = v115;
          v117 = v114;
          v162.origin.x = v127;
          v162.origin.y = v126;
          v162.size.width = v125;
          v162.size.height = rect_16;
          Height = CGRectGetHeight(v162);
          v163.origin.x = v127;
          v163.origin.y = v126;
          v163.size.width = v125;
          v163.size.height = rect_16;
          Width = CGRectGetWidth(v163);
          if (Width >= Height)
          {
            Width = Height;
          }

          [v116 setCornerRadius_];
        }
      }
    }
  }

  return rect_24;
}

double sub_1E3F667C4()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_layoutSubviews);
  [v0 bounds];
  return sub_1E3F65B48(0, v1);
}

uint64_t sub_1E3F66914@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t sub_1E3F66924@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = v2[1];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D220);

  sub_1E4173100();
  v18 = *(v2 + 1);
  v19 = *(v2 + 32);
  OUTLINED_FUNCTION_5_207();
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_1_260(v7);
  *a1 = v4;
  a1[1] = v5;
  v8 = (a1 + *(v6 + 56));
  *v8 = sub_1E3F66AD4;
  v8[1] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D228);

  sub_1E3F66AD8(&v18, v17);
  sub_1E4172FB8();
  OUTLINED_FUNCTION_5_207();
  v11 = swift_allocObject();
  OUTLINED_FUNCTION_1_260(v11);
  v12 = (a1 + *(v10 + 56));
  *v12 = sub_1E3F67304;
  v12[1] = v13;
  OUTLINED_FUNCTION_5_207();
  v14 = swift_allocObject();
  OUTLINED_FUNCTION_1_260(v14);
  v15 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D230) + 36));
  *v15 = sub_1E3F66B48;
  v15[1] = v14;
  v15[2] = 0;
  v15[3] = 0;

  sub_1E3F66AD8(&v18, v17);

  return sub_1E3F66AD8(&v18, v17);
}

uint64_t sub_1E3F66AD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32E18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3F66B48()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    OUTLINED_FUNCTION_0_296();

    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299C8);
    MEMORY[0x1E690E3F0](&v7, v2);
    v3 = v7;
  }

  else
  {
    v3 = 2;
  }

  result = sub_1E4173898();
  if (v3 == 2 || ((result ^ v3) & 1) != 0)
  {
    if (v1)
    {
      OUTLINED_FUNCTION_0_296();
      LOBYTE(v7) = sub_1E4173898() & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299C8);
      sub_1E4203AA4();
    }
  }

  else
  {
    v5 = OUTLINED_FUNCTION_27_0();
    return sub_1E3909004(v5, v6);
  }

  return result;
}

uint64_t objectdestroyTm_54()
{

  if (*(v0 + 40))
  {
  }

  OUTLINED_FUNCTION_5_207();

  return swift_deallocObject();
}

uint64_t get_enum_tag_for_layout_string_7SwiftUI7BindingVySbGSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1E3F66CC8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
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

unint64_t sub_1E3F66D18()
{
  result = qword_1ECF3D238;
  if (!qword_1ECF3D238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D230);
    sub_1E3F66DA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3D238);
  }

  return result;
}

unint64_t sub_1E3F66DA4()
{
  result = qword_1ECF3D240;
  if (!qword_1ECF3D240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D228);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3D240);
  }

  return result;
}

char *sub_1E3F66E18(__objc2_class **a1, uint64_t a2)
{
  type metadata accessor for DownloadStateIndicatorView();
  result = sub_1E3D08E94(a1, a2, 0);
  if (!result)
  {
    return _s8VideosUI26MetricsRecorderFactoryObjCCACycfC_0();
  }

  return result;
}

double sub_1E3F66E68(unint64_t a1, char a2, uint64_t a3, char a4, void *a5, __n128 a6, __n128 a7)
{
  a6.n128_u64[0] = a1;
  a7.n128_u64[0] = 0;
  if (a2)
  {
    a6.n128_f64[0] = 0.0;
  }

  if ((a4 & 1) == 0)
  {
    a7.n128_f64[0] = *&a3;
  }

  return (*((*MEMORY[0x1E69E7D40] & *a5) + 0x130))(a6, a7);
}

uint64_t sub_1E3F66FE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E3F672B0();

  return sub_1E3E36D18(a1, a2, v4);
}

uint64_t sub_1E3F67034()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3F672B0();
  v0 = OUTLINED_FUNCTION_3_5();

  return sub_1E3E36D2C(v0, v1, v2, v3);
}

uint64_t sub_1E3F6710C()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3F6725C();
  v0 = OUTLINED_FUNCTION_3_5();

  return MEMORY[0x1EEDDAA28](v0);
}

uint64_t sub_1E3F67160()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3F6725C();
  v0 = OUTLINED_FUNCTION_3_5();

  return MEMORY[0x1EEDDA9B8](v0);
}

void sub_1E3F671B4()
{
  sub_1E3F6725C();
  sub_1E4201F04();
  __break(1u);
}

unint64_t sub_1E3F671E0()
{
  result = qword_1ECF694A0[0];
  if (!qword_1ECF694A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF694A0);
  }

  return result;
}