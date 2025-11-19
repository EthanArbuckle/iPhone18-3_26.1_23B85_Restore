void sub_1E3D4B3B0(void *a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x238);
  if ((v3() & 1) == 0 || !a1)
  {
    return;
  }

  OUTLINED_FUNCTION_3_3();
  v5 = *(v4 + 544);
  v23 = a1;
  v6 = v5();
  if (v6)
  {
    v22 = v6;
    v7 = [v6 navigationController];
    if (v7)
    {
      v8 = v7;
      OUTLINED_FUNCTION_3_3();
      v10 = (*(v9 + 616))();
      if (v10)
      {
        v11 = v10;
      }

      else
      {
        v13 = *(**sub_1E3B7B1C8() + 408);

        v11 = v13(v14);

        if (!v11)
        {
LABEL_25:
          sub_1E3D4B7F0(v1);

          return;
        }
      }

      v15 = v23;

      v16 = sub_1E3D4B954(v15);
      if (v17)
      {
        if (v16 == *(v11 + 72) && v17 == *(v11 + 80))
        {
        }

        else
        {
          v19 = sub_1E42079A4();

          if ((v19 & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        v21 = (v3)(v20);
        sub_1E3D4A928(v11, v21 & 1, v15, v8);
      }

LABEL_24:

      goto LABEL_25;
    }

    v12 = v22;
  }

  else
  {
    v12 = v23;
  }
}

uint64_t sub_1E3D4B638(char a1)
{
  if ((a1 & 1) != 0 && (v2 = MEMORY[0x1E69E7D40], OUTLINED_FUNCTION_12_5(), (v4 = (*(v3 + 544))()) != 0))
  {

    OUTLINED_FUNCTION_3_3();
    (*(v5 + 576))(1);
    (*((*v2 & *v1) + 0x288))(0);
    v6 = *(**sub_1E3B7B1C8() + 408);

    v8 = v6(v7);

    v9 = *((*v2 & *v1) + 0x270);

    return v9(v8);
  }

  else
  {

    return sub_1E3D4B7F0(v1);
  }
}

uint64_t sub_1E3D4B7F0(void *a1)
{
  v1 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x258))(0, 1);
  OUTLINED_FUNCTION_26_3();
  (*((*v1 & v2) + 0x270))(0);
  OUTLINED_FUNCTION_26_3();
  (*((*v1 & v3) + 0x288))(0);
  OUTLINED_FUNCTION_26_3();
  (*((*v1 & v4) + 0x228))(0);
  OUTLINED_FUNCTION_26_3();
  return (*((*v1 & v5) + 0x240))(0);
}

uint64_t sub_1E3D4B954(void *a1)
{
  v2 = [a1 vuiViewControllerIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1E4205F14();

  return v3;
}

unint64_t sub_1E3D4B9C4()
{
  result = qword_1EE23B4A0;
  if (!qword_1EE23B4A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF396B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE23B4A0);
  }

  return result;
}

uint64_t sub_1E3D4BA28()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  if (v2 >> 62)
  {
    result = sub_1E4207384();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v7 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v3) + 0x188))(v5);
  return (*((*v7 & *v4) + 0x180))(v2);
}

id sub_1E3D4BB58(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v6 = [objc_opt_self() currentAppContext];
  v18.receiver = v2;
  v18.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v18, sel_initWithAppContext_, v6);

  v8 = v7;
  v9 = a1;
  OUTLINED_FUNCTION_0_225();
  v10 = sub_1E4205ED4();
  v11 = OUTLINED_FUNCTION_2_172();
  [v11 v12];

  v13 = a2;
  OUTLINED_FUNCTION_1_96();
  v14 = sub_1E4205ED4();
  v15 = OUTLINED_FUNCTION_2_172();
  [v15 v16];

  return v8;
}

id sub_1E3D4BC9C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = [objc_opt_self() currentThread];
  v4 = sub_1E39051FC();

  if (v4)
  {
    OUTLINED_FUNCTION_0_225();
    v5 = sub_1E4205ED4();
    OUTLINED_FUNCTION_3_174();

    OUTLINED_FUNCTION_1_96();
    v6 = sub_1E4205ED4();
    OUTLINED_FUNCTION_3_174();
  }

  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_dealloc);
}

void sub_1E3D4BD78()
{
  OUTLINED_FUNCTION_0_225();
  v1 = sub_1E4205ED4();
  v2 = [v0 jsValueForProperty_];

  if (v2)
  {
    v3 = sub_1E394E11C(MEMORY[0x1E69E7CC0], v2);
    if (!v3)
    {
      goto LABEL_12;
    }

    v4 = v3;
    v5 = [v3 context];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 globalObject];

      if (v7)
      {
        v8 = sub_1E4205ED4();
        v9 = [v7 valueForProperty_];

        if (v9)
        {
          if (sub_1E3A24240())
          {
            v10 = v9;
            v11 = [v4 isInstanceOf_];

            v2 = v4;
            if (v11)
            {
              return;
            }

            goto LABEL_12;
          }
        }

        else
        {
          v9 = v4;
        }

LABEL_12:
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_1E3D4BED8()
{
  v1 = sub_1E4205ED4();
  v2 = [v0 jsValueForProperty_];

  if (v2)
  {
    v3 = sub_1E394E11C(MEMORY[0x1E69E7CC0], v2);
  }

  OUTLINED_FUNCTION_0_225();
  v4 = sub_1E4205ED4();
  v5 = OUTLINED_FUNCTION_2_172();
  [v5 v6];

  v9 = sub_1E4205ED4();
  v7 = OUTLINED_FUNCTION_2_172();
  [v7 v8];
}

id sub_1E3D4C0CC(id *a1)
{
  [*a1 setTextStyle_];
  v1 = OUTLINED_FUNCTION_25_74();

  return [v1 v2];
}

id sub_1E3D4C128(id *a1)
{
  [*a1 setTextStyle_];
  v1 = OUTLINED_FUNCTION_25_74();

  return [v1 v2];
}

uint64_t sub_1E3D4C184()
{
  type metadata accessor for TextLayout();
  v0 = sub_1E383BCC0();
  (*(*v0 + 1696))(19);
  OUTLINED_FUNCTION_36();
  (*(v1 + 1792))(10);

  v2 = *sub_1E3E5FDEC();
  v3 = *(*v0 + 680);
  v4 = v2;
  v3(v2);

  OUTLINED_FUNCTION_36();
  (*(v5 + 2056))(1, 0);
  return v0;
}

id sub_1E3D4C2DC(void *a1)
{
  v1 = [objc_opt_self() preferredFontForTextStyle_];

  return v1;
}

id sub_1E3D4C32C(id *a1)
{
  [*a1 setTextStyle_];
  v1 = OUTLINED_FUNCTION_25_74();

  return [v1 v2];
}

void sub_1E3D4C388()
{
  OUTLINED_FUNCTION_16_109();
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 preferredFontForTextStyle_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28F38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BE0;
  v5 = *MEMORY[0x1E69DB8F0];
  *(inited + 32) = *MEMORY[0x1E69DB8F0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28F40);
  v6 = swift_initStackObject();
  OUTLINED_FUNCTION_15_114(v6, v7, v8, v9, v10, v11, v12, v13, v14);
  v15 = *MEMORY[0x1E69DB990];
  *(v16 + 32) = *MEMORY[0x1E69DB990];
  OUTLINED_FUNCTION_45_0(v16, *MEMORY[0x1E69DB980]);
  OUTLINED_FUNCTION_2_3();
  sub_1E375874C(v17, v18);
  v19 = v5;
  v20 = v15;
  v21 = OUTLINED_FUNCTION_43_5();
  OUTLINED_FUNCTION_28_60(v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28F50);
  OUTLINED_FUNCTION_1_0();
  sub_1E375874C(v22, v23);
  v24 = OUTLINED_FUNCTION_41_14();
  v25 = [v3 fontDescriptor];
  sub_1E3754784(v24);

  v26 = OUTLINED_FUNCTION_42_11();

  v27 = [v25 fontDescriptorByAddingAttributes_];

  [v3 pointSize];
  [v2 fontWithDescriptor:v27 size:?];

  OUTLINED_FUNCTION_17_105();
}

void sub_1E3D4C58C(uint64_t a1)
{
  sub_1E4205BF4();
  OUTLINED_FUNCTION_2_10();
  v4 = v3;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v8, a1, v1, v6);
  if ((*(v4 + 88))(v8, v1) != *MEMORY[0x1E69D3D88])
  {
    v10 = [objc_opt_self() sharedApplication];
    v11 = [v10 preferredContentSizeCategory];

    v12 = sub_1E4205F14();
    v14 = v13;
    if (v12 == sub_1E4205F14() && v14 == v15)
    {
    }

    else
    {
      v17 = OUTLINED_FUNCTION_23_72();

      if ((v17 & 1) == 0)
      {
        v18 = sub_1E4205F14();
        v20 = v19;
        if (v18 == sub_1E4205F14() && v20 == v21)
        {
        }

        else
        {
          v23 = OUTLINED_FUNCTION_23_72();

          if ((v23 & 1) == 0)
          {
            v24 = *MEMORY[0x1E69DDC20];
            v25 = *MEMORY[0x1E69DDC30];
            v26 = v24;
            if ((sub_1E4206CC4() & 1) == 0)
            {
              __break(1u);
              goto LABEL_45;
            }

            if (sub_1E4206CB4())
            {
              v27 = sub_1E4206CC4();

              if (v27)
              {
                type metadata accessor for LayoutGrid();
                v29 = sub_1E3A256EC();
                sub_1E3A2511C(v29);
                v28.n128_u64[0] = 0x4074000000000000;
              }
            }

            else
            {
            }

LABEL_34:
            (*(v4 + 8))(v8, v1, v28);
            return;
          }
        }

        type metadata accessor for LayoutGrid();
        v46 = sub_1E3A256EC();
        sub_1E3A2511C(v46);
        v28.n128_u64[0] = 0x4070200000000000;
        goto LABEL_34;
      }
    }

    type metadata accessor for LayoutGrid();
    v45 = sub_1E3A256EC();
    sub_1E3A2511C(v45);
    v28.n128_u64[0] = 0x406C800000000000;
    goto LABEL_34;
  }

  type metadata accessor for LayoutGrid();
  v9 = sub_1E3A256EC();
  if (sub_1E3A2511C(v9))
  {
    return;
  }

  v30 = [objc_opt_self() sharedApplication];
  v31 = [v30 preferredContentSizeCategory];

  v32 = sub_1E4205F14();
  v34 = v33;
  if (v32 == sub_1E4205F14() && v34 == v35)
  {

    goto LABEL_36;
  }

  OUTLINED_FUNCTION_22_71();
  OUTLINED_FUNCTION_7_8();

  if (v32)
  {
    goto LABEL_36;
  }

  v37 = sub_1E4205F14();
  v39 = v38;
  if (v37 == sub_1E4205F14() && v39 == v40)
  {

    goto LABEL_36;
  }

  OUTLINED_FUNCTION_22_71();
  OUTLINED_FUNCTION_7_8();

  if (v37)
  {
LABEL_36:

    return;
  }

  v42 = *MEMORY[0x1E69DDC20];
  v43 = *MEMORY[0x1E69DDC30];
  v44 = v42;
  if ((sub_1E4206CC4() & 1) == 0)
  {
LABEL_45:
    __break(1u);
    return;
  }

  if (sub_1E4206CB4())
  {
    sub_1E4206CC4();
  }
}

double sub_1E3D4CA60()
{
  v1 = v0;
  type metadata accessor for LayoutGrid();
  v2 = sub_1E3A256EC();
  v3 = sub_1E3A24FDC(v2);
  v4 = sub_1E3A256EC();
  v5 = sub_1E3A2511C(v4);
  v6 = [objc_opt_self() sharedApplication];
  v7 = [v6 preferredContentSizeCategory];

  v8 = sub_1E4206C84();
  result = 430.0;
  if (v3 & 1) == 0 && (v5 & 1) != 0 && (v8)
  {
    return *(v1 + 232);
  }

  return result;
}

void sub_1E3D4CB1C()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 preferredContentSizeCategory];

  LOBYTE(v0) = sub_1E4206C84();
  if ((v0 & 1) == 0)
  {
    v2 = [objc_opt_self() preferredFontForTextStyle_];
    [v2 ascender];
  }
}

id sub_1E3D4CBEC()
{
  v0 = objc_opt_self();
  v1 = [v0 systemFontOfSize:11.0 weight:*MEMORY[0x1E69DB980]];
  v2 = [v1 fontDescriptor];
  v3 = [v2 fontDescriptorWithDesign_];

  if (!v3)
  {
    return v1;
  }

  v4 = [v0 fontWithDescriptor:v3 size:11.0];

  return v4;
}

void sub_1E3D4CCC4()
{
  OUTLINED_FUNCTION_16_109();
  v0 = objc_opt_self();
  v1 = [v0 preferredFontForTextStyle_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28F38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BE0;
  v3 = *MEMORY[0x1E69DB8F0];
  *(inited + 32) = *MEMORY[0x1E69DB8F0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28F40);
  v4 = swift_initStackObject();
  OUTLINED_FUNCTION_15_114(v4, v5, v6, v7, v8, v9, v10, v11, v12);
  v13 = *MEMORY[0x1E69DB990];
  *(v14 + 32) = *MEMORY[0x1E69DB990];
  OUTLINED_FUNCTION_45_0(v14, *MEMORY[0x1E69DB980]);
  OUTLINED_FUNCTION_2_3();
  sub_1E375874C(v15, v16);
  v17 = v3;
  v18 = v13;
  v19 = OUTLINED_FUNCTION_43_5();
  OUTLINED_FUNCTION_28_60(v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28F50);
  OUTLINED_FUNCTION_1_0();
  sub_1E375874C(v20, v21);
  v22 = OUTLINED_FUNCTION_41_14();
  v23 = [v1 fontDescriptor];
  sub_1E3754784(v22);

  v24 = OUTLINED_FUNCTION_42_11();

  v25 = [v23 fontDescriptorByAddingAttributes_];

  v26 = [v25 fontDescriptorWithDesign_];
  if (v26)
  {
    v27 = v26;
    [v1 pointSize];
    [v0 fontWithDescriptor:v27 size:?];

    v25 = v27;
  }

  OUTLINED_FUNCTION_17_105();
}

id sub_1E3D4CF04()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DC888]);

  return [v0 initWithRed:1.0 green:0.31372549 blue:0.4 alpha:1.0];
}

double sub_1E3D4CF58()
{
  type metadata accessor for LayoutGrid();
  sub_1E3A256EC();
  if (sub_1E373F630())
  {
    return 45.0;
  }

  sub_1E3A256EC();
  v1 = sub_1E373F630();
  result = 55.0;
  if (v1)
  {
    return 45.0;
  }

  return result;
}

double sub_1E3D4CFC0()
{
  sub_1E3D4C388();
  v1 = v0;
  [v0 ascender];
  v3 = v2;

  sub_1E3D4C388();
  v5 = v4;
  [v4 capHeight];
  v7 = v6;

  return -(v3 - v7);
}

double sub_1E3D4D034()
{
  v1 = *(v0 + 200);
  sub_1E3D4C388();
  v3 = v2;
  [v2 descender];
  v5 = v4;

  v6 = fabs(v5);
  v7 = [objc_opt_self() preferredFontForTextStyle_];
  [v7 ascender];
  v9 = v8;

  return v1 - (v6 + v9);
}

double sub_1E3D4D0D8()
{
  v0 = [objc_opt_self() preferredFontForTextStyle_];
  [v0 descender];
  v2 = v1;

  return -fabs(v2);
}

id sub_1E3D4D148()
{
  v0 = objc_opt_self();
  v1 = [v0 blackColor];
  v2 = [v0 whiteColor];
  v3 = [v0 vui:v1 dynamicColorWithLightColor:v2 darkColor:?];

  return v3;
}

double sub_1E3D4D1E0()
{
  v0 = objc_opt_self();
  v1 = *MEMORY[0x1E69DDD58];
  v2 = [v0 preferredFontForTextStyle_];
  v3 = sub_1E3DA9F20();

  if (!v3)
  {
    goto LABEL_6;
  }

  v2 = UIFontDescriptor.vuiWithSymbolicTraits(_:)(0x400u);

  if (!v2)
  {
    goto LABEL_6;
  }

  v4 = sub_1E3280A90(0, &qword_1ECF29388);
  v5 = v2;
  v2 = v4;
  v6 = sub_1E3DA9F68(v5, 0.0);
  if (!v6)
  {

LABEL_6:
    v7 = OUTLINED_FUNCTION_27_61([v0 preferredFontForTextStyle_]);
    goto LABEL_7;
  }

  v7 = OUTLINED_FUNCTION_27_61(v6);

LABEL_7:
  return v7;
}

id sub_1E3D4D2F4(uint64_t a1)
{
  sub_1E4201CF4();
  OUTLINED_FUNCTION_2_10();
  v4 = v3;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v8, a1, v1, v6);
  v9 = (*(v4 + 88))(v8, v1);
  if (v9 == *MEMORY[0x1E697F600])
  {
    v10 = sub_1E3E5FDEC();
  }

  else
  {
    if (v9 != *MEMORY[0x1E697F608])
    {
      v13 = sub_1E3E5FDEC();
      v14 = *(v4 + 8);
      v15 = *v13;
      v14(v8, v1);
      return v15;
    }

    v10 = sub_1E3E5FD88();
  }

  v11 = *v10;

  return v11;
}

double sub_1E3D4D458()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 preferredContentSizeCategory];

  LOBYTE(v0) = sub_1E4206C84();
  if (v0)
  {
    return INFINITY;
  }

  type metadata accessor for LayoutGrid();
  sub_1E3A256EC();
  v2 = 129.0;
  if ((sub_1E373F630() & 1) == 0)
  {
    sub_1E3A256EC();
    if ((sub_1E373F630() & 1) == 0)
    {
      sub_1E3A256EC();
      if ((sub_1E373F630() & 1) == 0)
      {
        sub_1E3A256EC();
        if (sub_1E373F630())
        {
          return 129.0;
        }

        else
        {
          return 105.0;
        }
      }
    }
  }

  return v2;
}

double sub_1E3D4D544()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 preferredContentSizeCategory];

  LOBYTE(v0) = sub_1E4206C84();
  if (v0)
  {
    return INFINITY;
  }

  type metadata accessor for LayoutGrid();
  sub_1E3A256EC();
  v2 = 102.0;
  if ((sub_1E373F630() & 1) == 0)
  {
    sub_1E3A256EC();
    if ((sub_1E373F630() & 1) == 0)
    {
      sub_1E3A256EC();
      if ((sub_1E373F630() & 1) == 0)
      {
        sub_1E3A256EC();
        if (sub_1E373F630())
        {
          return 102.0;
        }

        else
        {
          return 77.0;
        }
      }
    }
  }

  return v2;
}

uint64_t sub_1E3D4D630(uint64_t a1)
{
  (*(**a1 + 1696))(19);
  OUTLINED_FUNCTION_36();
  (*(v1 + 2056))(1, 0);
  v2 = [objc_opt_self() systemGray2Color];
  OUTLINED_FUNCTION_36();
  (*(v3 + 680))();
  OUTLINED_FUNCTION_36();
  return (*(v4 + 1792))(10);
}

double sub_1E3D4D748()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 preferredContentSizeCategory];

  LOBYTE(v0) = sub_1E4206C84();
  result = 10.0;
  if (v0)
  {
    return 19.0;
  }

  return result;
}

double sub_1E3D4D7C8()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 preferredContentSizeCategory];

  LOBYTE(v0) = sub_1E4206C84();
  result = 12.0;
  if (v0)
  {
    return 20.0;
  }

  return result;
}

double sub_1E3D4D844()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 preferredContentSizeCategory];

  LOBYTE(v0) = sub_1E4206C84();
  result = 10.0;
  if (v0)
  {
    return 16.0;
  }

  return result;
}

void sub_1E3D4D8C0()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 preferredContentSizeCategory];

  LOBYTE(v0) = sub_1E4206C84();
  if ((v0 & 1) == 0)
  {
    v2 = [objc_opt_self() preferredFontForTextStyle_];
    [v2 leading];
  }
}

void sub_1E3D4D988()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 preferredContentSizeCategory];

  LOBYTE(v0) = sub_1E4206C84();
  if ((v0 & 1) == 0)
  {
    v2 = [objc_opt_self() preferredFontForTextStyle_];
    [v2 leading];
  }
}

void sub_1E3D4DA50()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 preferredContentSizeCategory];

  LOBYTE(v0) = sub_1E4206C84();
  if ((v0 & 1) == 0)
  {
    v2 = [objc_opt_self() preferredFontForTextStyle_];
    [v2 ascender];
  }
}

double sub_1E3D4DB14()
{
  v1 = [objc_opt_self() sharedApplication];
  v2 = [v1 preferredContentSizeCategory];

  sub_1E4205F14();
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_5_18();
  v4 = v4 && v0 == v3;
  if (v4)
  {

    return 40.0;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_0_68();

    result = 40.0;
    if ((v5 & 1) == 0)
    {
      return 30.0;
    }
  }

  return result;
}

void sub_1E3D4DBE8()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 preferredContentSizeCategory];

  LOBYTE(v0) = sub_1E4206C84();
  if ((v0 & 1) == 0)
  {
    sub_1E3D4DB14();
  }
}

double sub_1E3D4DC80()
{
  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 preferredContentSizeCategory];

  sub_1E4205F14();
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_5_18();
  v5 = v5 && v0 == v4;
  if (v5)
  {
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_0_68();
  OUTLINED_FUNCTION_7_8();

  if (v1)
  {
LABEL_6:

    return 8.0;
  }

  sub_1E4205F14();
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_5_18();
  if (v5 && v0 == v6)
  {
LABEL_18:

    return 8.0;
  }

  OUTLINED_FUNCTION_0_68();
  OUTLINED_FUNCTION_7_8();

  if (v1)
  {
    goto LABEL_6;
  }

  sub_1E4205F14();
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_5_18();
  if (v5 && v0 == v8)
  {
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_0_68();
  OUTLINED_FUNCTION_7_8();

  if (v1)
  {
LABEL_17:

    return 20.0;
  }

  sub_1E4205F14();
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_5_18();
  if (v5 && v0 == v11)
  {
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_0_68();
  OUTLINED_FUNCTION_7_8();

  if (v1)
  {
    goto LABEL_17;
  }

  sub_1E4205F14();
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_5_18();
  if (v5 && v0 == v13)
  {
LABEL_32:

    return 20.0;
  }

  v15 = OUTLINED_FUNCTION_0_68();

  result = 6.0;
  if (v15)
  {
    return 20.0;
  }

  return result;
}

id sub_1E3D4DE48(id *a1)
{
  [*a1 setTextStyle_];
  v1 = OUTLINED_FUNCTION_25_74();

  return [v1 v2];
}

void sub_1E3D4DE98()
{
  OUTLINED_FUNCTION_16_109();
  v0 = objc_opt_self();
  v1 = [v0 preferredFontForTextStyle_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28F38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BE0;
  v3 = *MEMORY[0x1E69DB8F0];
  *(inited + 32) = *MEMORY[0x1E69DB8F0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28F40);
  v4 = swift_initStackObject();
  OUTLINED_FUNCTION_15_114(v4, v5, v6, v7, v8, v9, v10, v11, v12);
  v13 = *MEMORY[0x1E69DB990];
  *(v14 + 32) = *MEMORY[0x1E69DB990];
  OUTLINED_FUNCTION_45_0(v14, *MEMORY[0x1E69DB980]);
  OUTLINED_FUNCTION_2_3();
  sub_1E375874C(v15, v16);
  v17 = v3;
  v18 = v13;
  v19 = OUTLINED_FUNCTION_43_5();
  OUTLINED_FUNCTION_28_60(v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28F50);
  OUTLINED_FUNCTION_1_0();
  sub_1E375874C(v20, v21);
  v22 = OUTLINED_FUNCTION_41_14();
  v23 = [v1 fontDescriptor];
  sub_1E3754784(v22);

  v24 = OUTLINED_FUNCTION_42_11();

  v25 = [v23 fontDescriptorByAddingAttributes_];

  [v1 pointSize];
  [v0 fontWithDescriptor:v25 size:?];

  OUTLINED_FUNCTION_17_105();
}

uint64_t sub_1E3D4E638(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 520))
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

uint64_t sub_1E3D4E678(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 504) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 520) = 1;
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

    *(result + 520) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1E3D4E75C()
{
  v1 = OBJC_IVAR___VUIAccountViewController____lazy_storage___accountSettingsViewController;
  v2 = *(v0 + OBJC_IVAR___VUIAccountViewController____lazy_storage___accountSettingsViewController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___VUIAccountViewController____lazy_storage___accountSettingsViewController);
LABEL_8:
    v12 = v2;
    return v3;
  }

  v4 = [objc_allocWithZone(VUIAccountSettingsViewController) init];
  v5 = [v4 navigationItem];
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v7 = result;
    sub_1E3741090(0xD000000000000010, 0x80000001E4280880, result);
    v9 = v8;

    if (v9)
    {
      v10 = sub_1E4205ED4();
    }

    else
    {
      v10 = 0;
    }

    [v5 setTitle_];

    v11 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

id sub_1E3D4E898()
{
  v1 = OBJC_IVAR___VUIAccountViewController____lazy_storage___signInController;
  v2 = *(v0 + OBJC_IVAR___VUIAccountViewController____lazy_storage___signInController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___VUIAccountViewController____lazy_storage___signInController);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E698BB48]) init];
    [v4 setDelegate_];
    [v4 setServiceType_];
    [v4 setAmpServiceType_];
    v5 = [v4 navigationItem];
    [v5 setLargeTitleDisplayMode_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id AccountViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AccountViewController.init()()
{
  OUTLINED_FUNCTION_9_66(&OBJC_IVAR___VUIAccountViewController_activeViewController);
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountViewController();
  return objc_msgSendSuper2(&v2, sel_initWithNibName_bundle_, 0, 0);
}

void sub_1E3D4EA78()
{
  OUTLINED_FUNCTION_9_66(&OBJC_IVAR___VUIAccountViewController_activeViewController);
  sub_1E42076B4();
  __break(1u);
}

Swift::Void __swiftcall AccountViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v36.receiver = v2;
  v36.super_class = type metadata accessor for AccountViewController();
  objc_msgSendSuper2(&v36, sel_viewWillAppear_, a1);
  if ([objc_opt_self() userHasActiveAccount])
  {
    v4 = sub_1E3D4E75C();
  }

  else
  {
    v4 = sub_1E3D4E898();
  }

  v5 = v4;
  v37 = 0;
  v38 = 0xE000000000000000;
  sub_1E42074B4();

  v37 = 0xD00000000000001ELL;
  v38 = 0x80000001E42808A0;
  v6 = [v5 description];
  v7 = sub_1E4205F14();
  v9 = v8;

  MEMORY[0x1E69109E0](v7, v9);

  v10 = v38;
  OUTLINED_FUNCTION_0_58();
  sub_1E3D4F4AC(v11, v10, v12);

  v13 = OBJC_IVAR___VUIAccountViewController_activeViewController;
  v14 = *&v2[OBJC_IVAR___VUIAccountViewController_activeViewController];
  if (v14)
  {
    [v14 vui:0 willMoveToParentViewController:?];
    v14 = *&v2[v13];
    if (v14)
    {
      v15 = [v14 vuiView];
      if (!v15)
      {
LABEL_22:
        __break(1u);
        return;
      }

      v16 = v15;
      [v15 removeFromSuperview];

      v14 = *&v2[v13];
    }
  }

  [v14 vui_removeFromParentViewController];
  [v2 vui:v5 addChildViewController:?];
  [v5 vui:v2 didMoveToParentViewController:?];
  v17 = [v2 vuiView];
  if (!v17)
  {
    __break(1u);
    goto LABEL_21;
  }

  v18 = v17;
  v19 = [v5 vuiView];
  if (!v19)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v20 = v19;
  [v18 addSubview_];

  v21 = *&v2[v13];
  *&v2[v13] = v5;
  v22 = v5;

  v23 = OUTLINED_FUNCTION_6_152();
  v24 = OUTLINED_FUNCTION_2_174();
  if (sub_1E3D4F82C(v24, &selRef_rightBarButtonItems))
  {
    sub_1E3280A90(0, qword_1EE23B2E0);
    v25 = sub_1E42062A4();
  }

  else
  {
    v25 = 0;
  }

  [v5 setRightBarButtonItems_];

  v26 = OUTLINED_FUNCTION_6_152();
  v27 = OUTLINED_FUNCTION_2_174();
  if (sub_1E3D4F82C(v27, &selRef_leftBarButtonItems))
  {
    sub_1E3280A90(0, qword_1EE23B2E0);
    v28 = sub_1E42062A4();
  }

  else
  {
    v28 = 0;
  }

  [v5 setLeftBarButtonItems_];

  v29 = OUTLINED_FUNCTION_6_152();
  v30 = OUTLINED_FUNCTION_2_174();
  sub_1E37AD648(v30);
  if (v31)
  {
    v32 = sub_1E4205ED4();
  }

  else
  {
    v32 = 0;
  }

  [v5 setTitle_];

  v33 = OUTLINED_FUNCTION_6_152();
  v34 = [v22 navigationItem];
  v35 = [v34 largeTitleDisplayMode];

  [v33 setLargeTitleDisplayMode_];
}

Swift::Void __swiftcall AccountViewController.viewDidLayoutSubviews()()
{
  v15.receiver = v0;
  v15.super_class = type metadata accessor for AccountViewController();
  objc_msgSendSuper2(&v15, sel_viewDidLayoutSubviews);
  v1 = *&v0[OBJC_IVAR___VUIAccountViewController_activeViewController];
  if (v1)
  {
    v2 = v1;
    [v2 preferredContentSize];
    [v0 setPreferredContentSize_];
    v3 = [v2 vuiView];
    if (v3)
    {
      v4 = v3;
      v5 = [v0 vuiView];
      if (v5)
      {
        v6 = v5;
        [v5 bounds];
        v8 = v7;
        v10 = v9;
        v12 = v11;
        v14 = v13;

        [v4 setFrame_];
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

id AccountViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1E4205ED4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id AccountViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id AccountViewController.signInControllerDidCancel(_:)()
{
  OUTLINED_FUNCTION_0_58();
  sub_1E3D4F4AC(0xD00000000000001BLL, v0 | 0x8000000000000000, v1);
  OUTLINED_FUNCTION_27_6();
  [v2 v3];
  OUTLINED_FUNCTION_27_6();

  return [v4 v5];
}

id AccountViewController.signInController(_:didCompleteWithOperationsResults:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_1E4205F14();
  v5 = sub_1E378A81C(v3, v4, a2);

  if (v5)
  {
    sub_1E42074B4();

    v6 = [v5 description];
    v7 = sub_1E4205F14();
    v9 = v8;

    MEMORY[0x1E69109E0](v7, v9);

    OUTLINED_FUNCTION_0_58();
    sub_1E3D4F4AC(v10, 0x80000001E4280760, v11);

    v12 = [v5 error];
    if (v12)
    {
      v13 = v12;
      sub_1E42074B4();
      MEMORY[0x1E69109E0](0xD000000000000023, 0x80000001E4280790);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480);
      sub_1E4207614();
      sub_1E3D4F4AC(0, 0xE000000000000000, MEMORY[0x1E69E9440]);
    }
  }

  OUTLINED_FUNCTION_27_6();
  [v14 v15];
  OUTLINED_FUNCTION_27_6();
  return [v16 v17];
}

uint64_t sub_1E3D4F4AC(uint64_t a1, unint64_t a2, uint64_t (*a3)(void))
{
  v7 = sub_1E41FFCB4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E324FBDC();
  (*(v8 + 16))(v10, v11, v7);
  v12 = v3;

  v13 = sub_1E41FFC94();
  v14 = a3();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v19 = v16;
    *v15 = 67109378;
    *(v15 + 4) = [objc_opt_self() userHasActiveAccount];

    *(v15 + 8) = 2080;
    *(v15 + 10) = sub_1E3270FC8(a1, a2, &v19);
    _os_log_impl(&dword_1E323F000, v13, v14, "AccountViewController(SignedIn=%{BOOL}d) - %s", v15, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x1E69143B0](v16, -1, -1);
    MEMORY[0x1E69143B0](v15, -1, -1);
  }

  else
  {
  }

  return (*(v8 + 8))(v10, v7);
}

id AccountViewController.signInControllerDidSkip(_:)()
{
  OUTLINED_FUNCTION_0_58();
  sub_1E3D4F4AC(0xD000000000000019, v0 | 0x8000000000000000, v1);
  OUTLINED_FUNCTION_27_6();
  [v2 v3];
  OUTLINED_FUNCTION_27_6();

  return [v4 v5];
}

uint64_t sub_1E3D4F82C(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  sub_1E3280A90(0, qword_1EE23B2E0);
  v4 = sub_1E42062B4();

  return v4;
}

uint64_t sub_1E3D4F8C4()
{
  type metadata accessor for TextLayout();
  v0 = sub_1E383BCC0();

  v1 = *sub_1E3E5FD88();
  v2 = *(*v0 + 680);
  v3 = v1;
  v2(v1);

  (*(*v0 + 1696))(15);
  (*(*v0 + 2176))(0, 0);
  OUTLINED_FUNCTION_8_132();
  __asm { FMOV            V1.2D, #20.0 }

  v41 = xmmword_1E42AE100;
  v42 = _Q1;
  v43 = 0;
  v38 = _Q1;
  v39 = _Q1;
  v40 = 0;
  v35 = xmmword_1E42AE100;
  v36 = xmmword_1E42AE100;
  v37 = 0;
  __asm { FMOV            V1.2D, #24.0 }

  v32 = xmmword_1E42CDF90;
  v33 = _Q1;
  v34 = 0;
  type metadata accessor for UIEdgeInsets();
  v11 = sub_1E3C3DE00(v10);
  OUTLINED_FUNCTION_107(v11, v12, v13, v14, v15, v16, v17, v18, v30[0], v30[1], v30[2], v30[3], v30[4], v30[5], v30[6], v30[7], v30[8], v30[9], v30[10], v30[11], v30[12], v30[13], v30[14], v30[15], v30[16], v30[17], v30[18], v30[19], v30[20], v30[21], v30[22], v30[23], v30[24], v30[25], v30[26], v30[27], v30[28], v30[29], v30[30], v30[31], v30[32], v30[33], v30[34], v30[35], v31);
  sub_1E3C2FCB8(v30, __src);
  memcpy(v30, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v27 = OUTLINED_FUNCTION_6_153(v19, v20, v21, v22, v23, v24, v25, v26, v30[0]);
  v28(v27);
  return v0;
}

uint64_t sub_1E3D4FADC()
{
  type metadata accessor for TextLayout();
  v0[13] = sub_1E383BCC0();
  v0[14] = sub_1E383BCC0();
  v0[15] = sub_1E383BCC0();
  type metadata accessor for DescriptionTemplateLayout();
  v0[16] = sub_1E3D4F8C4();
  v1 = sub_1E3C2F9A0();

  v2 = *sub_1E3E5FD88();
  v3 = *(*v1 + 1720);
  v4 = v2;
  v5 = v3();
  sub_1E3952C58();
  v91[0] = v6;
  v91[1] = v7;
  v91[2] = v8;
  v91[3] = v9;
  v92 = 0;
  (*(*v5 + 160))(v91);

  (v3)(v10);
  OUTLINED_FUNCTION_2_1();
  v12 = *(v11 + 680);
  v75 = v4;
  v76 = v4;
  v12(v4);

  (v3)(v13);
  OUTLINED_FUNCTION_2_1();
  (*(v14 + 1792))(7);

  (v3)(v15);
  LOBYTE(v77[0]) = 10;
  LOBYTE(v84) = 11;
  LOBYTE(v83) = 11;
  LOBYTE(v82) = 7;
  sub_1E3C3DE00(&qword_1F5D54AF8);
  v16 = OUTLINED_FUNCTION_9_122();
  LOBYTE(v78) = v79;
  OUTLINED_FUNCTION_1_206(v16, v17, v18);
  OUTLINED_FUNCTION_5_157();
  OUTLINED_FUNCTION_14();
  (*(v19 + 1600))(v77, 54, v20 & 1, &qword_1F5D54AF8);

  (v3)(v21);
  v22 = *sub_1E3E60548();
  v77[0] = v22;
  v83 = 0;
  v84 = 0;
  v23 = objc_opt_self();
  v24 = v22;
  v82 = [v23 clearColor];
  v25 = sub_1E3755B54();
  sub_1E3C3DE00(v25);
  v80 = v81;
  v26 = sub_1E3C3DE00(v25);
  v78 = v79;
  OUTLINED_FUNCTION_1_206(v26, v27, v28);
  v30 = v85;
  v29 = v86;
  v31 = v87;
  v32 = v88;
  v34 = v89;
  v33 = v90;
  v77[0] = v85;
  v77[1] = v86;
  v77[2] = v87;
  v77[3] = v88;
  v77[4] = v89;
  v77[5] = v90;
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  (*(v35 + 1600))(v77, 24, v36 & 1, v25);

  v3();
  LOBYTE(v77[0]) = 3;
  LOBYTE(v84) = 27;
  LOBYTE(v83) = 27;
  LOBYTE(v82) = 2;
  sub_1E3C3DE00(&qword_1F5D549D8);
  v37 = OUTLINED_FUNCTION_9_122();
  LOBYTE(v78) = v79;
  OUTLINED_FUNCTION_1_206(v37, v38, v39);
  OUTLINED_FUNCTION_5_157();
  OUTLINED_FUNCTION_14();
  (*(v40 + 1600))(v77, 48, v41 & 1, &qword_1F5D549D8);

  (v3)(v42);
  OUTLINED_FUNCTION_2_1();
  (*(v43 + 2056))(2, 0);

  (v3)(v44);
  OUTLINED_FUNCTION_2_1();
  (*(v45 + 1984))(1);

  (v3)(v46);
  OUTLINED_FUNCTION_2_1();
  (*(v47 + 256))(0x408C500000000000, 0);

  (v3)(v48);
  OUTLINED_FUNCTION_2_1();
  (*(v49 + 1720))(3);

  v51 = *(*v1 + 1768);
  v52 = v51(v50);
  sub_1E3952C94();
  v85 = v53;
  v86 = v54;
  v87 = v55;
  v88 = v56;
  LOBYTE(v89) = 0;
  (*(*v52 + 160))(&v85);

  v51(v57);
  OUTLINED_FUNCTION_2_1();
  (*(v58 + 680))(v75);

  v51(v59);
  OUTLINED_FUNCTION_2_1();
  (*(v60 + 1696))(15);

  v62 = *(*v1 + 1744);
  v62(v61);
  OUTLINED_FUNCTION_2_1();
  (*(v63 + 1696))(15);

  v62(v64);
  OUTLINED_FUNCTION_2_1();
  (*(v65 + 1720))(10);

  v67 = (v3)(v66);
  sub_1E3C37CBC(v67, 23);

  v69 = v51(v68);
  sub_1E3C37CBC(v69, 15);

  v71 = (v62)(v70);
  sub_1E3C37CBC(v71, 24);

  v73 = (*(*v1 + 1792))(v72);
  sub_1E3C37CBC(v73, 9);

  return v1;
}

uint64_t sub_1E3D5030C()
{
  type metadata accessor for TextLayout();
  v0 = sub_1E383BCC0();
  (*(*v0 + 1696))(15);
  OUTLINED_FUNCTION_8_132();
  v42 = xmmword_1E42CA3A0;
  v43 = xmmword_1E42CDFA0;
  v44 = 0;
  type metadata accessor for UIEdgeInsets();
  v2 = v1;
  sub_1E3C2FC98();
  v36 = v39;
  v37 = v40;
  v38 = v41;
  sub_1E3C3DE00(v2);
  v30 = v33;
  v31 = v34;
  v32 = v35;
  sub_1E3C3DE00(v2);
  v24 = v27;
  v25 = v28;
  v26 = v29;
  v3 = sub_1E3C3DE00(v2);
  OUTLINED_FUNCTION_107(v3, v4, v5, v6, v7, v8, v9, v10, v22[0], v22[1], v22[2], v22[3], v22[4], v22[5], v22[6], v22[7], v22[8], v22[9], v22[10], v22[11], v22[12], v22[13], v22[14], v22[15], v22[16], v22[17], v22[18], v22[19], v22[20], v22[21], v22[22], v22[23], v22[24], v22[25], v22[26], v22[27], v22[28], v22[29], v22[30], v22[31], v22[32], v22[33], v22[34], v22[35], v23);
  sub_1E3C2FCB8(v22, __src);
  memcpy(v22, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v19 = OUTLINED_FUNCTION_6_153(v11, v12, v13, v14, v15, v16, v17, v18, v22[0]);
  v20(v19);
  return v0;
}

uint64_t sub_1E3D5047C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37DF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E429A200;
  *(inited + 32) = DocumentType.rawValue.getter(0);
  *(inited + 40) = v1;
  *(inited + 48) = type metadata accessor for DocumentRequestViewController();
  *(inited + 56) = DocumentType.rawValue.getter(1);
  *(inited + 64) = v2;
  *(inited + 72) = type metadata accessor for CanonicalDocumentViewController();
  *(inited + 80) = DocumentType.rawValue.getter(3);
  *(inited + 88) = v3;
  v4 = type metadata accessor for PlayerHUDDocumentViewController();
  *(inited + 96) = v4;
  *(inited + 104) = DocumentType.rawValue.getter(4);
  *(inited + 112) = v5;
  *(inited + 120) = v4;
  *(inited + 128) = DocumentType.rawValue.getter(5);
  *(inited + 136) = v6;
  *(inited + 144) = type metadata accessor for PostPlayDocumentViewController();
  *(inited + 152) = DocumentType.rawValue.getter(7);
  *(inited + 160) = v7;
  *(inited + 168) = type metadata accessor for LivePostPlayDocumentViewController();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37DF8);
  result = sub_1E4205CB4();
  qword_1EE28C478 = result;
  return result;
}

void sub_1E3D50594()
{
  OUTLINED_FUNCTION_31_1();
  v84 = v0;
  v82 = v1;
  v3 = v2;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v83 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v80 - v11;
  v13 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v81 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v19 = MEMORY[0x1EEE9AC00](v18).n128_u64[0];
  v21 = &v80 - v20;
  v22 = [v3 documentRef];
  v23 = sub_1E4205F14();
  v25 = v24;

  v26 = sub_1E4205F14();
  v28 = v27;
  v29 = v23 == v26 && v25 == v27;
  if (v29)
  {

LABEL_8:

    type metadata accessor for TimedMetadataViewController();
    v31 = OUTLINED_FUNCTION_18();
    sub_1E3AEEED4(v31 & 1, 0);
    goto LABEL_9;
  }

  v80 = v4;
  v30 = sub_1E42079A4();

  if (v30)
  {
    goto LABEL_8;
  }

  sub_1E3D50E3C(v23, v25);
  OUTLINED_FUNCTION_30_7();
  sub_1E32859C4(v3, &selRef_controllerRef);
  if (v32)
  {
    OUTLINED_FUNCTION_16_110();
    sub_1E4205F14();
    OUTLINED_FUNCTION_15_115();
    if (v29 && v28 == v33)
    {
    }

    else
    {
      OUTLINED_FUNCTION_1_207();
      OUTLINED_FUNCTION_30_7();

      if ((v30 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    [objc_allocWithZone(VUIDebugViewController) init];
    goto LABEL_9;
  }

LABEL_16:
  sub_1E32859C4(v3, &selRef_controllerRef);
  if (!v35)
  {
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_16_110();
  sub_1E4205F14();
  OUTLINED_FUNCTION_15_115();
  if (v29 && v28 == v36)
  {

    goto LABEL_44;
  }

  OUTLINED_FUNCTION_1_207();
  OUTLINED_FUNCTION_30_7();

  if (v30)
  {
LABEL_44:
    v51 = *MetricsDiskManager.shared.unsafeMutableAddressor();
    type metadata accessor for MetricsRenderSessionListViewController();
    MetricsRenderSessionListViewController.__allocating_init(storageDataSource:)(v51);
    goto LABEL_9;
  }

LABEL_22:
  sub_1E32859C4(v3, &selRef_controllerRef);
  if (!v38)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_16_110();
  sub_1E4205F14();
  OUTLINED_FUNCTION_15_115();
  if (v29 && v28 == v39)
  {
  }

  else
  {
    OUTLINED_FUNCTION_1_207();
    OUTLINED_FUNCTION_30_7();

    if ((v30 & 1) == 0)
    {
LABEL_28:
      sub_1E32859C4(v3, &selRef_controllerRef);
      if (!v41)
      {
        goto LABEL_34;
      }

      OUTLINED_FUNCTION_16_110();
      sub_1E4205F14();
      OUTLINED_FUNCTION_15_115();
      if (v29 && v28 == v42)
      {
      }

      else
      {
        OUTLINED_FUNCTION_1_207();
        OUTLINED_FUNCTION_30_7();

        if ((v30 & 1) == 0)
        {
LABEL_34:
          v44 = sub_1E32859C4(v3, &selRef_controllerRef);
          v46 = v45;
          v47 = sub_1E4205F14();
          if (v46)
          {
            if (v44 == v47 && v46 == v48)
            {

LABEL_65:
              type metadata accessor for SportsPlayByPlaySeeAllViewController();
              sub_1E41A28F0(v3);
              goto LABEL_9;
            }

            OUTLINED_FUNCTION_74();
            v50 = sub_1E42079A4();

            if (v50)
            {
              goto LABEL_65;
            }
          }

          else
          {
          }

          if (!v82)
          {
            goto LABEL_9;
          }

          v66 = v82;
          v67 = sub_1E32859C4(v3, &selRef_controllerRef);
          v69 = v68;
          v70 = sub_1E4205F14();
          if (v69)
          {
            if (v67 == v70 && v69 == v71)
            {

LABEL_78:
              sub_1E3D50FB8(v3);
LABEL_76:

              goto LABEL_9;
            }

            v73 = sub_1E42079A4();

            if (v73)
            {
              goto LABEL_78;
            }
          }

          else
          {
          }

          if ((sub_1E3D510B4(v3) & 1) == 0)
          {
            sub_1E3D51180();
          }

          goto LABEL_76;
        }
      }

      v59 = [v3 prefetchData];
      v60 = v80;
      if (!v59)
      {
        goto LABEL_68;
      }

      v61 = sub_1E3D52904(v59);
      if (!v61)
      {
        goto LABEL_68;
      }

      v62 = v61;
      v85 = sub_1E4205F14();
      v86 = v63;
      sub_1E4207414();
      sub_1E375D7E8(v87, v62, &v88);

      sub_1E375D84C(v87);
      if (v89)
      {
        if ((swift_dynamicCast() & 1) == 0)
        {
LABEL_68:
          v74 = sub_1E324FBDC();
          v75 = v83;
          (*(v83 + 16))(v9, v74, v60);
          v76 = sub_1E41FFC94();
          v77 = sub_1E4206814();
          if (os_log_type_enabled(v76, v77))
          {
            v78 = swift_slowAlloc();
            *v78 = 0;
            _os_log_impl(&dword_1E323F000, v76, v77, "UIFactory: Invalid url provided for opening web view", v78, 2u);
            OUTLINED_FUNCTION_6_0();
          }

          (*(v75 + 8))(v9, v60);
          goto LABEL_9;
        }

        sub_1E41FE404();

        if (__swift_getEnumTagSinglePayload(v12, 1, v13) != 1)
        {
          v79 = v81;
          (*(v81 + 32))(v21, v12, v13);
          type metadata accessor for WebViewController();
          (*(v79 + 16))(v17, v21, v13);
          sub_1E3B97990(v17);
          (*(v79 + 8))(v21, v13);
          goto LABEL_9;
        }

        v64 = &unk_1ECF363C0;
        v65 = v12;
      }

      else
      {
        v64 = &unk_1ECF296E0;
        v65 = &v88;
      }

      sub_1E325F748(v65, v64);
      goto LABEL_68;
    }
  }

  v52 = [objc_opt_self() sharedInstance];
  v53 = [v52 accountViewController];

  type metadata accessor for AccountViewController();
  v54 = swift_dynamicCastClass();
  if (v54)
  {
    v55 = *((*MEMORY[0x1E69E7D40] & *v54) + 0xB8);
    v56 = v53;
    v57 = v55();

    v58 = [v3 uiConfiguration];
    [v58 setNavigationBarHidden_];
  }

LABEL_9:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3D50E3C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E429A230;
  *(inited + 32) = sub_1E4205F14();
  *(inited + 40) = v5;
  *(inited + 48) = sub_1E4205F14();
  *(inited + 56) = v6;
  *(inited + 64) = sub_1E4205F14();
  *(inited + 72) = v7;
  *(inited + 80) = sub_1E4205F14();
  *(inited + 88) = v8;
  *(inited + 96) = sub_1E4205F14();
  *(inited + 104) = v9;
  *(inited + 112) = sub_1E4205F14();
  *(inited + 120) = v10;
  *(inited + 128) = sub_1E4205F14();
  *(inited + 136) = v11;
  v14[0] = a1;
  v14[1] = a2;
  v13[2] = v14;
  LOBYTE(a2) = sub_1E3849DF8(sub_1E3756228, v13, inited);
  swift_setDeallocating();
  sub_1E38272B0();
  return a2 & 1;
}

uint64_t sub_1E3D50F6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1E327D33C(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + 8 * v4);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E3D50FB8(void *a1)
{
  type metadata accessor for Route(0);
  j__OUTLINED_FUNCTION_18();
  v2 = sub_1E3F4C85C();
  type metadata accessor for DocumentContext();
  v3 = a1;

  sub_1E3D98A84(v3, v2, 1);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  type metadata accessor for ExtrasRootHostingController();

  v4 = OUTLINED_FUNCTION_16_0();
  v5 = sub_1E3DFD924(v4);

  return v5;
}

uint64_t sub_1E3D510B4(void *a1)
{
  if ((TVAppFeature.isEnabled.getter(18) & 1) == 0)
  {
    goto LABEL_10;
  }

  v2 = sub_1E32859C4(a1, &selRef_controllerRef);
  v4 = v3;
  v5 = sub_1E4205F14();
  if (!v4)
  {

    v9 = 1;
    return v9 & 1;
  }

  if (v2 == v5 && v4 == v6)
  {

LABEL_10:
    v9 = 0;
    return v9 & 1;
  }

  v8 = sub_1E42079A4();

  v9 = v8 ^ 1;
  return v9 & 1;
}

void *sub_1E3D51180()
{
  OUTLINED_FUNCTION_8_133();
  sub_1E32859C4(v3, &selRef_documentType);
  if (!v4)
  {
    return 0;
  }

  v5._countAndFlagsBits = OUTLINED_FUNCTION_125();
  v6.value = DocumentType.init(rawValue:)(v5).value;
  if (v6.value == VideosUI_DocumentType_unknownDefault)
  {
    goto LABEL_11;
  }

  value = v6.value;
  if (_MergedGlobals_232 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = OUTLINED_FUNCTION_125();
  v11 = sub_1E3D50F6C(v8, v9, v10);
  if (!v11)
  {
    swift_endAccess();
LABEL_11:

    return 0;
  }

  v12 = v11;
  swift_endAccess();

  v13 = sub_1E32859C4(v2, &selRef_controllerRef);
  if (!v14)
  {
    return 0;
  }

  v15 = v13;
  v16 = v14;
  type metadata accessor for DocumentServiceRequestContext();
  memset(&v40, 0, 32);
  v38 = 0u;
  v39 = 0u;
  v17 = OUTLINED_FUNCTION_18();
  v18 = v1;
  v19 = DocumentServiceRequestContext.__allocating_init(documentType:requestType:controllerRef:appContext:contextDataRef:prefetchDataRef:animateUpdates:)(value, 0, v15, v16, v1, &v40, &v38, v17 & 1);
  v20 = [v2 contextData];
  if (v20 && (v21 = v20, v22 = [v20 jsonData], v21, v22))
  {
    v23 = sub_1E4205C64();

    *&v40.withZoomTransition = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0);
    *&v40.loadImmediately = v23;
  }

  else
  {
    memset(&v40, 0, 32);
  }

  (*(*v19 + 224))(&v40);
  v26 = [v2 prefetchData];
  if (v26 && (v27 = v26, v28 = [v26 jsonData], v27, v28))
  {
    v29 = sub_1E4205C64();

    *&v40.withZoomTransition = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0);
    *&v40.loadImmediately = v29;
  }

  else
  {
    memset(&v40, 0, 32);
  }

  (*(*v19 + 248))(&v40);
  v30 = sub_1E32868C0([v2 uiConfiguration], &selRef_viewControllerIdentifier);
  v32 = v31;
  v33 = sub_1E32868C0([v2 uiConfiguration], &selRef_viewControllerDocumentIdentifier);
  v35 = v34;
  DocumentLoadingConfiguration.init(documentDataSource:)(&v40, v2);
  if (v0)
  {
    v0 = sub_1E374BD08(v0);
  }

  v36 = *(v12 + 1568);

  v24 = v36(v37, v0, &v40, 0, v30, v32);
  (*((*MEMORY[0x1E69E7D40] & *v24) + 0x520))(v33, v35);

  return v24;
}

void sub_1E3D5162C(void *a1)
{
  if (a1)
  {
    type metadata accessor for DocumentViewController();
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      v3 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x418);
      v4 = a1;
      v3();
    }
  }
}

void sub_1E3D517BC(uint64_t a1)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_31_1();
    v3 = v2;
    if (v1)
    {
      [v1 integerValue];
      if (!v3)
      {
LABEL_6:
        type metadata accessor for ClipsTemplateViewController();

        OUTLINED_FUNCTION_74();
        sub_1E3D7D02C();
        OUTLINED_FUNCTION_25_2();
        return;
      }
    }

    else if (!v2)
    {
      goto LABEL_6;
    }

    [v3 integerValue];
    goto LABEL_6;
  }

  __break(1u);
}

id sub_1E3D51938(unint64_t a1, uint64_t a2, void *a3, void *a4, char a5)
{
  result = sub_1E374BD08(a2);
  if ((a1 & 0x8000000000000000) == 0)
  {
    v10 = result;
    if (!result)
    {
      v10 = sub_1E4205CB4();
    }

    if (a3)
    {
      v11 = [a3 integerValue];
      if (a4)
      {
LABEL_6:
        v12 = [a4 integerValue];
LABEL_9:
        type metadata accessor for ClipsTemplateViewController();
        return sub_1E3D7DDA4(a1, v10, v11, a3 == 0, v12, a4 == 0, a5 & 1);
      }
    }

    else
    {
      v11 = 0;
      if (a4)
      {
        goto LABEL_6;
      }
    }

    v12 = 0;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

void sub_1E3D51B08()
{
  OUTLINED_FUNCTION_11_122();
  if (!v2)
  {
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_5:
    OUTLINED_FUNCTION_20_83();
    goto LABEL_6;
  }

  sub_1E396AB60(v2);
  if (!v1)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1E396AB60(v1);
  OUTLINED_FUNCTION_20_83();
LABEL_6:
  type metadata accessor for CatchUpToLiveViewController();

  v3 = v0;
  OUTLINED_FUNCTION_4_180();
  sub_1E4152010();
}

void sub_1E3D51BC8()
{
  OUTLINED_FUNCTION_11_122();
  if (!v2)
  {
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_5:
    OUTLINED_FUNCTION_20_83();
    goto LABEL_6;
  }

  sub_1E396AB60(v2);
  if (!v1)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1E396AB60(v1);
  OUTLINED_FUNCTION_20_83();
LABEL_6:
  type metadata accessor for CatchUpToLiveViewController();

  v3 = v0;
  OUTLINED_FUNCTION_4_180();
  sub_1E4151AE4();
}

id sub_1E3D51C88(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, id, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = a5;
  if (a5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0);
    v11 = sub_1E42062B4();
  }

  if (a6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0);
    a6 = sub_1E42062B4();
  }

  if (a7)
  {
    v15 = sub_1E4205F14();
    a7 = v16;
  }

  else
  {
    v15 = 0;
  }

  v17 = a4;
  v18 = a1;
  v19 = a8(a3, v17, v11, a6, v15, a7);

  return v19;
}

uint64_t sub_1E3D51DAC(void *a1, void *a2)
{
  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = type metadata accessor for DocumentRequestViewController();
  v5 = swift_dynamicCastClass();
  v6 = 0;
  if (v5 && a2)
  {
    v7 = v5;
    v8 = swift_dynamicCastClass();
    if (v8)
    {
      v13[3] = v4;
      v13[0] = v8;
      v9 = *((*MEMORY[0x1E69E7D40] & *v7) + 0x628);
      v10 = a1;
      v11 = a2;
      v6 = v9(v13);

      sub_1E325F748(v13, &unk_1ECF296E0);
      return v6 & 1;
    }

LABEL_6:
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1E3D51F14()
{
  type metadata accessor for MultiPlayerLayoutEngine();
  v0 = sub_1E3952C10(20.0, 20.0);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_1E3F9C978();
  sub_1E3F9C984(4, v7, v8, v0, v2, v4, v6);
  type metadata accessor for MultiPlayerViewController();

  return sub_1E386B500();
}

void sub_1E3D5213C(void *a1, char a2, char a3)
{
  if (a1)
  {
    type metadata accessor for DocumentViewController();
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = *((*MEMORY[0x1E69E7D40] & *v6) + 0x4A0);
      v8 = a1;
      v7(a2 & 1, a3 & 1);
    }
  }
}

void sub_1E3D52304()
{
  OUTLINED_FUNCTION_8_133();
  type metadata accessor for LivePostPlayController();
  v3 = v2;
  v4 = v1;
  v5 = v0;
  sub_1E389DB18();
}

uint64_t sub_1E3D523E4@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = sub_1E4205ED4();
  v4 = [v2 URLForResource_];

  if (v4)
  {
    sub_1E41FE3C4();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1E41FE414();

  return __swift_storeEnumTagSinglePayload(a1, v5, 1, v6);
}

id sub_1E3D525D8()
{
  v0 = [objc_opt_self() sharedInstance];
  OUTLINED_FUNCTION_16_0();
  v1 = sub_1E4205ED4();
  v2 = [v0 imageForResource_];

  if (v2)
  {
    return v2;
  }

  v4 = [objc_opt_self() sharedInterfaceFactory];
  v5 = OUTLINED_FUNCTION_16_0();
  v7 = sub_1E3D5297C(v5, v6, v4);

  return v7;
}

id sub_1E3D52728(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 imageProxyForElement:a1 withLayout:a2];

  return v5;
}

id sub_1E3D52810()
{
  OUTLINED_FUNCTION_8_133();
  v3 = [objc_opt_self() sharedInstance];
  v4 = [v3 *v0];

  return v4;
}

id sub_1E3D5288C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  OUTLINED_FUNCTION_17_106();
  v9 = sub_1E3D52810();

  return v9;
}

uint64_t sub_1E3D52904(void *a1)
{
  v2 = [a1 prefetchedDataDict];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1E4205C64();

  return v3;
}

id sub_1E3D5297C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1E4205ED4();
  v5 = [a3 _resourceImageNamed_];

  return v5;
}

unint64_t sub_1E3D529CC()
{
  result = qword_1ECF2C3E0;
  if (!qword_1ECF2C3E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECF2C3E0);
  }

  return result;
}

uint64_t sub_1E3D52A10()
{
  v1 = v0;
  if ([objc_opt_self() isVision])
  {

    return sub_1E414707C();
  }

  else
  {
    swift_beginAccess();
    v0[28] = 0x4054800000000000;
    sub_1E3D54258(v0[27]);
    swift_beginAccess();
    OUTLINED_FUNCTION_33_58();
    BYTE8(v642) = 0;
    v3 = OUTLINED_FUNCTION_31_56();
    v4 = MEMORY[0x1E69E7DE0];
    v12 = OUTLINED_FUNCTION_12_20(v3, v5, v6, v7, v8, v9, v10, v11, v334, v364, v394, v424, v454, v484, v514, v544, v574, v604, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], v635, *(&v635 + 1), v636, *(&v636 + 1), v637, *(&v637 + 1), v638, *(&v638 + 1), v639, *(&v639 + 1), v640, *(&v640 + 1), v641, *(&v641 + 1), 0x4043000000000000, *(&v642 + 1), 0);
    OUTLINED_FUNCTION_25_12(v12, v13);
    OUTLINED_FUNCTION_15_116(v14, v15, v16, v17, v18, v19, v20, v21, v335, v365, v395, v425, v455, v485, v515, v545, v575, v605, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], v635, *(&v635 + 1), v636, *(&v636 + 1), v637, *(&v637 + 1), v638, *(&v638 + 1), v639, *(&v639 + 1), v640, *(&v640 + 1), v641, *(&v641 + 1), v642, *(&v642 + 1), __src[0]);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v30 = OUTLINED_FUNCTION_70_2(v22, v23, v24, v25, v26, v27, v28, v29, v336, v366, v396, v426, v456, v486, v516, v546, v576, v606, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], v635, *(&v635 + 1), v636, *(&v636 + 1), v637, *(&v637 + 1), v638, *(&v638 + 1), v639, *(&v639 + 1), v640, *(&v640 + 1), v641, *(&v641 + 1), v642, *(&v642 + 1), __src[0]);
    v31(v30, 2);

    LOBYTE(__src[1]) = 0;
    OUTLINED_FUNCTION_33_58();
    BYTE8(v642) = 0;
    v32 = OUTLINED_FUNCTION_31_56();
    v40 = OUTLINED_FUNCTION_12_20(v32, v33, v34, v35, v36, v37, v38, v39, v337, v367, v397, v427, v457, v487, v517, v547, v577, v607, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], v635, *(&v635 + 1), v636, *(&v636 + 1), v637, *(&v637 + 1), v638, *(&v638 + 1), v639, *(&v639 + 1), v640, *(&v640 + 1), v641, *(&v641 + 1), 0x4043000000000000, *(&v642 + 1), 0);
    OUTLINED_FUNCTION_25_12(v40, v41);
    OUTLINED_FUNCTION_15_116(v42, v43, v44, v45, v46, v47, v48, v49, v338, v368, v398, v428, v458, v488, v518, v548, v578, v608, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], v635, *(&v635 + 1), v636, *(&v636 + 1), v637, *(&v637 + 1), v638, *(&v638 + 1), v639, *(&v639 + 1), v640, *(&v640 + 1), v641, *(&v641 + 1), v642, *(&v642 + 1), __src[0]);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v58 = OUTLINED_FUNCTION_70_2(v50, v51, v52, v53, v54, v55, v56, v57, v339, v369, v399, v429, v459, v489, v519, v549, v579, v609, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], v635, *(&v635 + 1), v636, *(&v636 + 1), v637, *(&v637 + 1), v638, *(&v638 + 1), v639, *(&v639 + 1), v640, *(&v640 + 1), v641, *(&v641 + 1), v642, *(&v642 + 1), __src[0]);
    v59(v58, 6);

    swift_beginAccess();
    v60 = OUTLINED_FUNCTION_13_16();
    OUTLINED_FUNCTION_1_15(v60, v61, v62, v63, v64, v65, v66, v67, v340, v370, v400, v430, v460, v490, v520, v550, v580, v610, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], v635, *(&v635 + 1), v636, *(&v636 + 1), v637, *(&v637 + 1), v638, *(&v638 + 1), v639, *(&v639 + 1), v640, *(&v640 + 1), v641, *(&v641 + 1), v642, *(&v642 + 1), __src[0]);
    OUTLINED_FUNCTION_34_2();
    sub_1E3C2FCB8(v68, v69);
    OUTLINED_FUNCTION_15_116(v70, v71, v72, v73, v74, v75, v76, v77, v341, v371, v401, v431, v461, v491, v521, v551, v581, v611, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], v635, *(&v635 + 1), v636, *(&v636 + 1), v637, *(&v637 + 1), v638, *(&v638 + 1), v639, *(&v639 + 1), v640, *(&v640 + 1), v641, *(&v641 + 1), v642, *(&v642 + 1), __src[0]);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v86 = OUTLINED_FUNCTION_70_2(v78, v79, v80, v81, v82, v83, v84, v85, v342, v372, v402, v432, v462, v492, v522, v552, v582, v612, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], v635, *(&v635 + 1), v636, *(&v636 + 1), v637, *(&v637 + 1), v638, *(&v638 + 1), v639, *(&v639 + 1), v640, *(&v640 + 1), v641, *(&v641 + 1), v642, *(&v642 + 1), __src[0]);
    v87(v86, 2);

    v88 = OUTLINED_FUNCTION_13_16();
    OUTLINED_FUNCTION_1_15(v88, v89, v90, v91, v92, v93, v94, v95, v343, v373, v403, v433, v463, v493, v523, v553, v583, v613, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], v635, *(&v635 + 1), v636, *(&v636 + 1), v637, *(&v637 + 1), v638, *(&v638 + 1), v639, *(&v639 + 1), v640, *(&v640 + 1), v641, *(&v641 + 1), v642, *(&v642 + 1), __src[0]);
    OUTLINED_FUNCTION_34_2();
    sub_1E3C2FCB8(v96, v97);
    OUTLINED_FUNCTION_15_116(v98, v99, v100, v101, v102, v103, v104, v105, v344, v374, v404, v434, v464, v494, v524, v554, v584, v614, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], v635, *(&v635 + 1), v636, *(&v636 + 1), v637, *(&v637 + 1), v638, *(&v638 + 1), v639, *(&v639 + 1), v640, *(&v640 + 1), v641, *(&v641 + 1), v642, *(&v642 + 1), __src[0]);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v114 = OUTLINED_FUNCTION_70_2(v106, v107, v108, v109, v110, v111, v112, v113, v345, v375, v405, v435, v465, v495, v525, v555, v585, v615, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], v635, *(&v635 + 1), v636, *(&v636 + 1), v637, *(&v637 + 1), v638, *(&v638 + 1), v639, *(&v639 + 1), v640, *(&v640 + 1), v641, *(&v641 + 1), v642, *(&v642 + 1), __src[0]);
    v115(v114, 6);

    v116 = v0[19];
    OUTLINED_FUNCTION_36();
    v117 = OUTLINED_FUNCTION_15_8();
    v118(v117);
    OUTLINED_FUNCTION_36();
    (*(v119 + 1984))(1);
    OUTLINED_FUNCTION_36();
    (*(v120 + 2008))(1);
    v121 = *sub_1E3E5FDEC();
    v122 = *(*v116 + 680);
    v123 = v121;
    v122(v121);
    OUTLINED_FUNCTION_36();
    (*(v124 + 1720))(10);
    LOBYTE(__dst[0]) = 2;
    LOBYTE(v642) = 0;
    LOBYTE(v641) = 2;
    LOBYTE(v640) = 0;
    v125 = sub_1E3C3DE00(&unk_1F5D999E0);
    LOBYTE(v638) = v639;
    OUTLINED_FUNCTION_1_15(v125, v126, v127, v128, v129, v130, v131, v132, v346, v376, v406, v436, v466, v496, v526, v556, v586, v616, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], v635, *(&v635 + 1), v636, *(&v636 + 1), v637, *(&v637 + 1), v638, *(&v638 + 1), v639, *(&v639 + 1), v640, *(&v640 + 1), v641, *(&v641 + 1), v642, *(&v642 + 1), 11);
    OUTLINED_FUNCTION_34_2();
    sub_1E3C2FCB8(v133, v134);
    OUTLINED_FUNCTION_8_134();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v136 = *(v135 + 1600);
    v145 = OUTLINED_FUNCTION_70_2(v137, v138, v139, v140, v141, v142, v143, v144, v347, v377, v407, v437, v467, v497, v527, v557, v587, v617, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], v635, *(&v635 + 1), v636, *(&v636 + 1), v637, *(&v637 + 1), v638, *(&v638 + 1), v639, *(&v639 + 1), v640, *(&v640 + 1), v641, *(&v641 + 1), v642, *(&v642 + 1), __src[0]);
    v136(v145, 23);
    LOBYTE(__dst[0]) = 1;
    LOBYTE(v642) = 1;
    LOBYTE(v641) = 1;
    LOBYTE(v640) = 1;
    v146 = sub_1E3C3DE00(&unk_1F5D99950);
    LOBYTE(v638) = v639;
    OUTLINED_FUNCTION_1_15(v146, v147, v148, v149, v150, v151, v152, v153, v348, v378, v408, v438, v468, v498, v528, v558, v588, v618, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], v635, *(&v635 + 1), v636, *(&v636 + 1), v637, *(&v637 + 1), v638, *(&v638 + 1), v639, *(&v639 + 1), v640, *(&v640 + 1), v641, *(&v641 + 1), v642, *(&v642 + 1), 4);
    OUTLINED_FUNCTION_34_2();
    sub_1E3C2FCB8(v154, v155);
    OUTLINED_FUNCTION_8_134();
    v156 = OUTLINED_FUNCTION_18();
    v164 = OUTLINED_FUNCTION_70_2(v156, v157, v158, v159, v160, v161, v162, v163, v349, v379, v409, v439, v469, v499, v529, v559, v589, v619, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], v635, *(&v635 + 1), v636, *(&v636 + 1), v637, *(&v637 + 1), v638, *(&v638 + 1), v639, *(&v639 + 1), v640, *(&v640 + 1), v641, *(&v641 + 1), v642, *(&v642 + 1), __src[0]);
    v136(v164, 22);
    LOBYTE(__dst[0]) = 22;
    LOBYTE(v642) = 22;
    LOBYTE(v641) = 14;
    sub_1E3C3DE00(&qword_1F5D549D8);
    OUTLINED_FUNCTION_5_158();
    sub_1E3C3DE00(&qword_1F5D549D8);
    OUTLINED_FUNCTION_0_226();
    sub_1E3C2FCB8(v165, v166);
    OUTLINED_FUNCTION_8_134();
    v167 = OUTLINED_FUNCTION_18();
    v175 = OUTLINED_FUNCTION_33_1(v167, v168, v169, v170, v171, v172, v173, v174, v350, v380, v410, v440, v470, v500, v530, v560, v590, v620, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], v635, *(&v635 + 1), v636, *(&v636 + 1), v637, *(&v637 + 1), v638, *(&v638 + 1), v639, *(&v639 + 1), v640, *(&v640 + 1), v641, *(&v641 + 1), v642, *(&v642 + 1), 27);
    v136(v175, 48);
    LOBYTE(__dst[0]) = 10;
    sub_1E3C2FC98();
    v176 = OUTLINED_FUNCTION_22_72();
    sub_1E3C3DE00(v176);
    OUTLINED_FUNCTION_5_158();
    sub_1E3C3DE00(&qword_1F5D54AF8);
    v177 = OUTLINED_FUNCTION_37_56();
    LOBYTE(v635) = v636;
    v185 = OUTLINED_FUNCTION_12_20(v177, v178, v179, v180, v181, v182, v183, v184, v351, v381, v411, v441, v471, v501, v531, v561, v591, v621, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], v635, *(&v635 + 1), v636, *(&v636 + 1), v637, *(&v637 + 1), v638, *(&v638 + 1), v639, *(&v639 + 1), v640, *(&v640 + 1), v641, *(&v641 + 1), v642, *(&v642 + 1), 10);
    OUTLINED_FUNCTION_24_77(v185, v186);
    OUTLINED_FUNCTION_8_134();
    v187 = OUTLINED_FUNCTION_18();
    v195 = OUTLINED_FUNCTION_33_1(v187, v188, v189, v190, v191, v192, v193, v194, v352, v382, v412, v442, v472, v502, v532, v562, v592, v622, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], v635, *(&v635 + 1), v636, *(&v636 + 1), v637, *(&v637 + 1), v638, *(&v638 + 1), v639, *(&v639 + 1), v640, *(&v640 + 1), v641, *(&v641 + 1), v642, *(&v642 + 1), __src[0]);
    v136(v195, 54);
    v196 = v1[20];
    OUTLINED_FUNCTION_36();
    v197 = OUTLINED_FUNCTION_15_8();
    v198(v197);
    OUTLINED_FUNCTION_36();
    (*(v199 + 1984))(1);
    OUTLINED_FUNCTION_36();
    (*(v200 + 2008))(1);
    v201 = *sub_1E3E5FD88();
    v202 = *(*v196 + 680);
    v203 = v201;
    v202(v201);
    OUTLINED_FUNCTION_36();
    (*(v204 + 1720))(10);
    OUTLINED_FUNCTION_27_62();
    LOBYTE(v641) = 14;
    sub_1E3C3DE00(&qword_1F5D549D8);
    OUTLINED_FUNCTION_5_158();
    sub_1E3C3DE00(&qword_1F5D549D8);
    OUTLINED_FUNCTION_0_226();
    sub_1E3C2FCB8(v205, v206);
    OUTLINED_FUNCTION_2_175();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v208 = *(v207 + 1600);
    v217 = OUTLINED_FUNCTION_70_2(v209, v210, v211, v212, v213, v214, v215, v216, v353, v383, v413, v443, v473, v503, v533, v563, v593, v623, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], v635, *(&v635 + 1), v636, *(&v636 + 1), v637, *(&v637 + 1), v638, *(&v638 + 1), v639, *(&v639 + 1), v640, *(&v640 + 1), v641, *(&v641 + 1), v642, *(&v642 + 1), __src[0]);
    v208(v217, 48);
    LOBYTE(__dst[0]) = 10;
    sub_1E3C2FC98();
    v218 = OUTLINED_FUNCTION_22_72();
    sub_1E3C3DE00(v218);
    OUTLINED_FUNCTION_5_158();
    sub_1E3C3DE00(&qword_1F5D54AF8);
    v219 = OUTLINED_FUNCTION_37_56();
    LOBYTE(v635) = v636;
    v227 = OUTLINED_FUNCTION_12_20(v219, v220, v221, v222, v223, v224, v225, v226, v354, v384, v414, v444, v474, v504, v534, v564, v594, v624, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], v635, *(&v635 + 1), v636, *(&v636 + 1), v637, *(&v637 + 1), v638, *(&v638 + 1), v639, *(&v639 + 1), v640, *(&v640 + 1), v641, *(&v641 + 1), v642, *(&v642 + 1), 10);
    OUTLINED_FUNCTION_24_77(v227, v228);
    OUTLINED_FUNCTION_2_175();
    v229 = OUTLINED_FUNCTION_18();
    v237 = OUTLINED_FUNCTION_33_1(v229, v230, v231, v232, v233, v234, v235, v236, v355, v385, v415, v445, v475, v505, v535, v565, v595, v625, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], v635, *(&v635 + 1), v636, *(&v636 + 1), v637, *(&v637 + 1), v638, *(&v638 + 1), v639, *(&v639 + 1), v640, *(&v640 + 1), v641, *(&v641 + 1), v642, *(&v642 + 1), __src[0]);
    v208(v237, 54);
    v238 = v1[21];
    OUTLINED_FUNCTION_36();
    v239 = OUTLINED_FUNCTION_15_8();
    v240(v239);
    OUTLINED_FUNCTION_36();
    v241 = OUTLINED_FUNCTION_15_8();
    v242(v241);
    OUTLINED_FUNCTION_36();
    v243 = OUTLINED_FUNCTION_15_8();
    v244(v243);
    OUTLINED_FUNCTION_36();
    (*(v245 + 1984))(1);
    OUTLINED_FUNCTION_36();
    (*(v246 + 2008))(1);
    OUTLINED_FUNCTION_36();
    (*(v247 + 1720))(9);
    LOBYTE(__src[1]) = 1;
    LOBYTE(__dst[1]) = 1;
    BYTE8(v642) = 1;
    BYTE8(v641) = 0;
    sub_1E3C3DE00(v4);
    v248 = OUTLINED_FUNCTION_20_84();
    sub_1E3C3DE00(v248);
    OUTLINED_FUNCTION_35_52();
    v257 = OUTLINED_FUNCTION_1_15(v249, v250, v251, v252, v253, v254, v255, v256, v356, v386, v416, v446, v476, v506, v536, v566, v596, v626, 0, __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], v635, *(&v635 + 1), v636, *(&v636 + 1), v637, *(&v637 + 1), v638, *(&v638 + 1), v639, *(&v639 + 1), v640, *(&v640 + 1), 0x4050000000000000, *(&v641 + 1), 0, *(&v642 + 1), 0);
    sub_1E3C2FCB8(v257, v258);
    OUTLINED_FUNCTION_15_116(v259, v260, v261, v262, v263, v264, v265, v266, v357, v387, v417, v447, v477, v507, v537, v567, v597, v627, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], v635, *(&v635 + 1), v636, *(&v636 + 1), v637, *(&v637 + 1), v638, *(&v638 + 1), v639, *(&v639 + 1), v640, *(&v640 + 1), v641, *(&v641 + 1), v642, *(&v642 + 1), __src[0]);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v268 = *(v267 + 1600);
    v277 = OUTLINED_FUNCTION_70_2(v269, v270, v271, v272, v273, v274, v275, v276, v358, v388, v418, v448, v478, v508, v538, v568, v598, v628, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], v635, *(&v635 + 1), v636, *(&v636 + 1), v637, *(&v637 + 1), v638, *(&v638 + 1), v639, *(&v639 + 1), v640, *(&v640 + 1), v641, *(&v641 + 1), v642, *(&v642 + 1), __src[0]);
    v268(v277, 2);
    v278 = *sub_1E3E5FD88();
    v279 = *(*v238 + 680);
    v280 = v278;
    v279(v278);
    OUTLINED_FUNCTION_27_62();
    LOBYTE(v641) = 14;
    sub_1E3C3DE00(&qword_1F5D549D8);
    OUTLINED_FUNCTION_5_158();
    sub_1E3C3DE00(&qword_1F5D549D8);
    OUTLINED_FUNCTION_0_226();
    sub_1E3C2FCB8(v281, v282);
    OUTLINED_FUNCTION_2_175();
    v283 = OUTLINED_FUNCTION_18();
    v291 = OUTLINED_FUNCTION_33_1(v283, v284, v285, v286, v287, v288, v289, v290, v359, v389, v419, v449, v479, v509, v539, v569, v599, v629, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], v635, *(&v635 + 1), v636, *(&v636 + 1), v637, *(&v637 + 1), v638, *(&v638 + 1), v639, *(&v639 + 1), v640, *(&v640 + 1), v641, *(&v641 + 1), v642, *(&v642 + 1), __src[0]);
    v268(v291, 48);
    LOBYTE(__dst[0]) = 10;
    LOBYTE(v642) = 10;
    v292 = OUTLINED_FUNCTION_22_72();
    sub_1E3C3DE00(v292);
    OUTLINED_FUNCTION_5_158();
    sub_1E3C3DE00(&qword_1F5D54AF8);
    OUTLINED_FUNCTION_0_226();
    sub_1E3C2FCB8(v293, v294);
    OUTLINED_FUNCTION_2_175();
    v295 = OUTLINED_FUNCTION_18();
    v303 = OUTLINED_FUNCTION_33_1(v295, v296, v297, v298, v299, v300, v301, v302, v360, v390, v420, v450, v480, v510, v540, v570, v600, v630, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], v635, *(&v635 + 1), v636, *(&v636 + 1), v637, *(&v637 + 1), v638, *(&v638 + 1), v639, *(&v639 + 1), v640, *(&v640 + 1), v641, *(&v641 + 1), v642, *(&v642 + 1), 5);
    v268(v303, 54);
    LOBYTE(__src[1]) = 1;
    LOBYTE(__dst[1]) = 0;
    sub_1E3C2FC98();
    BYTE8(v641) = BYTE8(v642);
    sub_1E3C3DE00(v4);
    v304 = OUTLINED_FUNCTION_20_84();
    sub_1E3C3DE00(v304);
    OUTLINED_FUNCTION_35_52();
    v305 = sub_1E3C3DE00(v4);
    BYTE8(v635) = BYTE8(v636);
    v313 = OUTLINED_FUNCTION_12_20(v305, v306, v307, v308, v309, v310, v311, v312, v361, v391, v421, v451, v481, v511, v541, v571, v601, v631, 0x4030000000000000, __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], v636, *(&v635 + 1), v636, *(&v636 + 1), v637, *(&v637 + 1), v638, *(&v638 + 1), v639, *(&v639 + 1), v640, *(&v640 + 1), v642, *(&v641 + 1), v642, *(&v642 + 1), 0);
    OUTLINED_FUNCTION_23_73(v313, v314);
    OUTLINED_FUNCTION_15_116(v315, v316, v317, v318, v319, v320, v321, v322, v362, v392, v422, v452, v482, v512, v542, v572, v602, v632, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], v635, *(&v635 + 1), v636, *(&v636 + 1), v637, *(&v637 + 1), v638, *(&v638 + 1), v639, *(&v639 + 1), v640, *(&v640 + 1), v641, *(&v641 + 1), v642, *(&v642 + 1), __src[0]);
    v323 = OUTLINED_FUNCTION_18();
    v331 = OUTLINED_FUNCTION_33_1(v323, v324, v325, v326, v327, v328, v329, v330, v363, v393, v423, v453, v483, v513, v543, v573, v603, v633, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], v635, *(&v635 + 1), v636, *(&v636 + 1), v637, *(&v637 + 1), v638, *(&v638 + 1), v639, *(&v639 + 1), v640, *(&v640 + 1), v641, *(&v641 + 1), v642, *(&v642 + 1), __src[0]);
    v268(v331, 52);
    v644[0] = 0;
    v644[1] = 0;
    sub_1E4205F14();
    v332 = MEMORY[0x1E69E6158];
    sub_1E3C2FC98();
    v641 = v642;
    sub_1E3C3DE00(v332);
    v639 = v640;
    sub_1E3C3DE00(v332);
    v637 = v638;
    sub_1E3C3DE00(v332);
    v635 = v636;
    OUTLINED_FUNCTION_23_73(v644, __src);
    memcpy(__dst, __src, sizeof(__dst));
    v333 = OUTLINED_FUNCTION_18();
    (v268)(__dst, 51, v333 & 1, v332);
    memcpy(v644, __dst, 0x60uLL);
    sub_1E325F748(v644, &qword_1ECF346E8);
    sub_1E3D53664();
    return sub_1E3D539CC();
  }
}

uint64_t sub_1E3D53664()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF335F8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v24 - v2;
  v4 = *(v0 + 184);
  v5 = *sub_1E3E5FD88();
  v6 = *(*v4 + 680);
  v7 = v5;
  v6(v5);
  v24[0] = 2;
  LOBYTE(v24[1]) = 0;
  v39 = 1;
  v40 = 0;
  v37 = 1;
  v38 = 0;
  type metadata accessor for SymbolScale(0);
  v9 = v8;
  sub_1E3C3DE00(v8);
  v33 = v35;
  v34 = v36;
  sub_1E3C3DE00(v9);
  v29 = v31;
  v30 = v32;
  sub_1E3C3DE00(v9);
  v25 = v27;
  v26 = v28;
  v10 = OUTLINED_FUNCTION_17_107();
  sub_1E3C2FCB8(v10, v11);
  memcpy(v24, __src, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v13 = *(v12 + 1600);
  v13(v24, 91, v14 & 1, v9);
  v15 = objc_opt_self();
  v16 = 8.0;
  if (([v15 isPad] & 1) == 0 && (objc_msgSend(v15, sel_isPhone) & 1) == 0)
  {
    if ([v15 isMac])
    {
      v16 = 6.0;
    }

    else
    {
      v16 = 10.0;
    }
  }

  v17 = sub_1E42028E4();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v17);
  v18 = sub_1E42029B4();
  sub_1E325F748(v3, &qword_1ECF335F8);
  OUTLINED_FUNCTION_36();
  (*(v19 + 2120))(v18);
  (*(*v4 + 208))(COERCE_DOUBLE(*&v16), 0);
  LOBYTE(v24[0]) = 5;
  LOBYTE(v39) = 6;
  LOBYTE(v37) = 6;
  sub_1E3C3DE00(&qword_1F5D54AF8);
  LOBYTE(v33) = v35;
  sub_1E3C3DE00(&qword_1F5D54AF8);
  LOBYTE(v29) = v31;
  sub_1E3C3DE00(&qword_1F5D54AF8);
  LOBYTE(v25) = v27;
  v20 = OUTLINED_FUNCTION_17_107();
  sub_1E3C2FCB8(v20, v21);
  LODWORD(v24[0]) = __src[0];
  WORD2(v24[0]) = __src[1];
  v22 = OUTLINED_FUNCTION_18();
  return v13(v24, 97, v22 & 1, &qword_1F5D54AF8);
}

uint64_t sub_1E3D539CC()
{
  v1 = sub_1E42012F4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v96 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A250);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v96 - v6;
  v8 = *(v0 + 176);
  v9 = *sub_1E3E5FD88();
  v10 = *(*v8 + 680);
  v11 = v9;
  v10(v9);
  OUTLINED_FUNCTION_13();
  (*(v12 + 1720))(6);
  OUTLINED_FUNCTION_13();
  v13 = OUTLINED_FUNCTION_15_8();
  v14(v13);
  OUTLINED_FUNCTION_13();
  v15 = OUTLINED_FUNCTION_15_8();
  v16(v15);
  OUTLINED_FUNCTION_13();
  v17 = OUTLINED_FUNCTION_15_8();
  v18(v17);
  OUTLINED_FUNCTION_13();
  (*(v19 + 1984))(1);
  OUTLINED_FUNCTION_13();
  (*(v20 + 2008))(1);
  type metadata accessor for TextBadgeLayout();
  v21 = sub_1E39DFD8C(v7);
  sub_1E3831898(v21);
  sub_1E3831908(1, 9, v7, v122);
  v22 = v122[0];
  v23 = v122[3];
  v96 = *&v122[7];
  v97 = *&v122[5];
  (*(v2 + 8))(v4, v1);
  sub_1E325F748(v7, &qword_1ECF2A250);
  v24 = [objc_opt_self() blackColor];
  v25 = [v24 colorWithAlphaComponent_];

  OUTLINED_FUNCTION_13();
  v27 = (*(v26 + 752))(v25);
  v27.n128_u64[0] = v22;
  *&v99[0] = j__OUTLINED_FUNCTION_7_78(v27);
  *(&v99[0] + 1) = v28;
  *&v99[1] = v29;
  *(&v99[1] + 1) = v30;
  LOBYTE(v99[2]) = 0;
  v31.n128_u64[0] = 6.0;
  v32 = j__OUTLINED_FUNCTION_7_78(v31);
  OUTLINED_FUNCTION_21_82(v32, v33, v34, v35);
  type metadata accessor for UIEdgeInsets();
  v37 = v36;
  sub_1E3C2FC98();
  v116 = v119;
  v117 = v120;
  v118 = v121;
  sub_1E3C3DE00(v37);
  v38 = OUTLINED_FUNCTION_18_91();
  sub_1E3C3DE00(v38);
  OUTLINED_FUNCTION_32_64();
  sub_1E3C3DE00(v37);
  v100 = v103;
  v101 = v104;
  v102 = v105;
  OUTLINED_FUNCTION_10_116();
  sub_1E3C2FCB8(v39, v40);
  OUTLINED_FUNCTION_30_62();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_13();
  v42 = *(v41 + 1600);
  (v42)(v99, 17, v43 & 1, v37);
  v99[0] = v97;
  v99[1] = v96;
  LOBYTE(v99[2]) = 0;
  v44 = sub_1E3952C10(7.0, 5.0);
  OUTLINED_FUNCTION_21_82(v44, v45, v46, v47);
  v48 = sub_1E3952C10(7.0, 5.0);
  OUTLINED_FUNCTION_28_61(v48, v49, v50, v51);
  v52 = sub_1E3952C10(9.0, 4.0);
  OUTLINED_FUNCTION_26_80(v52, v53, v54, v55);
  sub_1E3C3DE00(v37);
  v56 = OUTLINED_FUNCTION_18_91();
  sub_1E3C3DE00(v56);
  OUTLINED_FUNCTION_32_64();
  v57 = OUTLINED_FUNCTION_7_166();
  sub_1E3C2FCB8(v57, v58);
  OUTLINED_FUNCTION_30_62();
  OUTLINED_FUNCTION_18();
  v59 = OUTLINED_FUNCTION_9_124();
  v42(v59, 1);
  v60 = *(MEMORY[0x1E69DDCE0] + 16);
  v99[0] = *MEMORY[0x1E69DDCE0];
  v99[1] = v60;
  LOBYTE(v99[2]) = 0;
  sub_1E3952C94();
  OUTLINED_FUNCTION_21_82(v61, v62, v63, v64);
  sub_1E3952C94();
  OUTLINED_FUNCTION_28_61(v65, v66, v67, v68);
  sub_1E3952C94();
  OUTLINED_FUNCTION_26_80(v69, v70, v71, v72);
  sub_1E3952C94();
  *&v112 = v73;
  *(&v112 + 1) = v74;
  v113 = v75;
  v114 = v76;
  v115 = 0;
  sub_1E3952C94();
  *&v108 = v77;
  *(&v108 + 1) = v78;
  v109 = v79;
  v110 = v80;
  v111 = 0;
  v81 = OUTLINED_FUNCTION_7_166();
  sub_1E3C2FCB8(v81, v82);
  OUTLINED_FUNCTION_30_62();
  OUTLINED_FUNCTION_18();
  v83 = OUTLINED_FUNCTION_9_124();
  v42(v83, 0);
  LOBYTE(v99[0]) = 27;
  LOBYTE(v98[0]) = 22;
  LOBYTE(v119) = 22;
  LOBYTE(v116) = 18;
  LOBYTE(v112) = 21;
  sub_1E3C3DE00(&qword_1F5D549D8);
  LOBYTE(v107) = v108;
  v84 = OUTLINED_FUNCTION_7_166();
  sub_1E3C2FCB8(v84, v85);
  OUTLINED_FUNCTION_29_71();
  OUTLINED_FUNCTION_9_124();
  OUTLINED_FUNCTION_36_7();
  (v42)();
  LOBYTE(v99[0]) = 5;
  LOBYTE(v98[0]) = 10;
  LOBYTE(v119) = 10;
  LOBYTE(v116) = 10;
  sub_1E3C3DE00(&qword_1F5D54AF8);
  LOBYTE(v108) = v112;
  sub_1E3C3DE00(&qword_1F5D54AF8);
  LOBYTE(v106) = v107;
  v86 = OUTLINED_FUNCTION_7_166();
  sub_1E3C2FCB8(v86, v87);
  OUTLINED_FUNCTION_29_71();
  OUTLINED_FUNCTION_9_124();
  OUTLINED_FUNCTION_36_7();
  (v42)();
  *&v99[0] = 0;
  BYTE8(v99[0]) = 1;
  v98[0] = 0x402C000000000000;
  LOBYTE(v98[1]) = 0;
  v88 = MEMORY[0x1E69E7DE0];
  sub_1E3C2FC98();
  *&v116 = v119;
  BYTE8(v116) = BYTE8(v119);
  sub_1E3C3DE00(v88);
  *&v108 = v112;
  BYTE8(v108) = BYTE8(v112);
  sub_1E3C3DE00(v88);
  *&v106 = v107;
  BYTE8(v106) = BYTE8(v107);
  sub_1E3C3DE00(v88);
  *&v100 = v103;
  BYTE8(v100) = BYTE8(v103);
  OUTLINED_FUNCTION_10_116();
  sub_1E3C2FCB8(v89, v90);
  memcpy(v99, v122, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_9_124();
  OUTLINED_FUNCTION_36_7();
  (v42)();
  v122[1] = 0;
  v122[0] = 0;
  v98[0] = sub_1E4205F14();
  v98[1] = v91;
  v92 = MEMORY[0x1E69E6158];
  sub_1E3C2FC98();
  v116 = v119;
  sub_1E3C3DE00(v92);
  v108 = v112;
  sub_1E3C3DE00(v92);
  v106 = v107;
  sub_1E3C3DE00(v92);
  v100 = v103;
  OUTLINED_FUNCTION_10_116();
  sub_1E3C2FCB8(v93, v94);
  memcpy(v98, v99, sizeof(v98));
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_36_7();
  (v42)();

  memcpy(v122, v98, 0x60uLL);
  return sub_1E325F748(v122, &qword_1ECF346E8);
}

uint64_t sub_1E3D54258(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_15_8();
  v3(v2);
  OUTLINED_FUNCTION_36();
  v4 = OUTLINED_FUNCTION_15_8();
  v5(v4);
  OUTLINED_FUNCTION_36();
  v6 = OUTLINED_FUNCTION_15_8();
  v7(v6);
  OUTLINED_FUNCTION_36();
  (*(v8 + 1984))(0);
  OUTLINED_FUNCTION_36();
  (*(v9 + 2008))(1);
  v10 = *sub_1E3E5FD88();
  v11 = *(*a1 + 680);
  v12 = v10;
  v11(v10);
  sub_1E4205F14();
  OUTLINED_FUNCTION_36();
  (*(v13 + 1768))();
  OUTLINED_FUNCTION_36();
  (*(v14 + 1840))(4);
  v56 = 0;
  v57 = 1;
  v54 = 0x403C000000000000;
  v55 = 0;
  v52 = 0x404C000000000000;
  v53 = 0;
  v50 = 0x4044000000000000;
  v51 = 0;
  v15 = MEMORY[0x1E69E7DE0];
  v16 = sub_1E3C3DE00(MEMORY[0x1E69E7DE0]);
  __dst[12] = v48;
  v47 = v49;
  v24 = OUTLINED_FUNCTION_19_98(v16, v17, v18, v19, v20, v21, v22, v23, v42, v44, 0);
  sub_1E3C2FCB8(v24, v25);
  memcpy(__dst, __src, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v27 = *(v26 + 1600);
  v29 = v27(__dst, 2, v28 & 1, v15);
  LOBYTE(__dst[1]) = 1;
  v56 = 0x4032000000000000;
  v57 = 0;
  v54 = 0x4032000000000000;
  v55 = 0;
  v52 = 0x4043000000000000;
  v53 = 0;
  v50 = 0x4038000000000000;
  v51 = 0;
  v48 = 0x4036000000000000;
  v49 = 0;
  v37 = OUTLINED_FUNCTION_19_98(v29, v30, v31, v32, v33, v34, v35, v36, v43, v45, 0);
  sub_1E3C2FCB8(v37, v38);
  memcpy(__dst, __src, 0x59uLL);
  v39 = OUTLINED_FUNCTION_18();
  v27(__dst, 52, v39 & 1, v15);
  LOBYTE(__dst[0]) = 5;
  LOBYTE(v56) = 6;
  sub_1E3C2FC98();
  LOBYTE(v52) = v54;
  sub_1E3C3DE00(&qword_1F5D54AF8);
  LOBYTE(v48) = v50;
  sub_1E3C3DE00(&qword_1F5D54AF8);
  sub_1E3C3DE00(&qword_1F5D54AF8);
  sub_1E3C2FCB8(__dst, __src);
  LODWORD(__dst[0]) = __src[0];
  WORD2(__dst[0]) = __src[1];
  v40 = OUTLINED_FUNCTION_18();
  return v27(__dst, 54, v40 & 1, &qword_1F5D54AF8);
}

__n128 OUTLINED_FUNCTION_32_64()
{
  v1 = *(v0 + 544);
  result = *(v0 + 512);
  v3 = *(v0 + 528);
  *(v0 + 464) = result;
  *(v0 + 480) = v3;
  *(v0 + 496) = v1;
  return result;
}

uint64_t sub_1E3D54698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v22[0] = a6;
  v11 = sub_1E42013A4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v22 - v16;

  v23 = sub_1E3D54860(a1, a2, a3);
  MEMORY[0x1E690DE70](&v23, a4, &type metadata for LockupUpdatingDelegateModifier, a5);

  v18 = sub_1E3D54980();
  v22[1] = a5;
  v22[2] = v18;
  OUTLINED_FUNCTION_4_1();
  swift_getWitnessTable();
  v19 = *(v12 + 16);
  v19(v17, v14, v11);
  v20 = *(v12 + 8);
  v20(v14, v11);
  v19(v22[0], v17, v11);
  return (v20)(v17, v11);
}

uint64_t sub_1E3D54860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = dynamic_cast_existential_1_conditional(a1);
  if (v5)
  {
    v7 = v5;
    v8 = v6;
    type metadata accessor for LockupUpdatingDelegateModifier.Proxy();
    v9 = swift_allocObject();
    *(v9 + 16) = a2;
    *(v9 + 24) = a3;
    v10 = *v7;
    v11 = *(v8 + 48);

    v11(v12, &off_1F5D82700, v10, v8);
  }

  else
  {

    return 0;
  }

  return v9;
}

unint64_t sub_1E3D54980()
{
  result = qword_1ECF37E60;
  if (!qword_1ECF37E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF37E60);
  }

  return result;
}

uint64_t sub_1E3D54A28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37E68);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

unint64_t sub_1E3D54AD0()
{
  result = qword_1ECF37E70;
  if (!qword_1ECF37E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF37E68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF37E70);
  }

  return result;
}

id sub_1E3D54B34(double a1, double a2, double a3, double a4)
{
  v9 = objc_opt_self();
  [v9 begin];
  [v9 setDisableActions_];
  [v4 setFrame_];

  return [v9 commit];
}

id sub_1E3D54BF4()
{
  result = [objc_allocWithZone(type metadata accessor for UnifiedMessagingSignalProvider()) init];
  qword_1EE2AA9C0 = result;
  return result;
}

uint64_t *sub_1E3D54C24()
{
  if (qword_1EE292B70 != -1)
  {
    OUTLINED_FUNCTION_9_125();
  }

  return &qword_1EE2AA9C0;
}

void sub_1E3D54C64()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_1E42069F4();
  OUTLINED_FUNCTION_0_10();
  v63 = v3;
  v64 = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v62 = v5 - v4;
  OUTLINED_FUNCTION_138();
  sub_1E4206974();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v7 = sub_1E4203FF4();
  v8 = OUTLINED_FUNCTION_17_2(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v9 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  v13 = OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_engagement;
  *&v0[OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_engagement] = 0;
  v0[OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_upsellOfferPresented] = 0;
  *&v0[OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_lastPlaybackEvent] = 0;
  *&v0[OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_playbackElapsedTime] = 0;
  *&v0[OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_notifAuthStatus] = 0;
  v0[OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_hasEventForTVPlusonLargeTV] = 0;
  v0[OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_hasEventForTVPlusonATV] = 0;
  v0[OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_hasItunesPurchases] = 0;
  v0[OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_hasItunesDownloads] = 0;
  v0[OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_hasSubscriptionDownloads] = 0;
  v0[OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_hasFavoriteTeamsAdded] = 0;
  v0[OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_hasFavoriteTeamsRemoved] = 0;
  v14 = &v0[OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_lastNLSQueryDate];
  *v14 = 0;
  v14[8] = 1;
  v0[OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_hasUsedSportsBridgeButton] = 0;
  v15 = [objc_opt_self() mainBundle];
  v16 = sub_1E3ABF2D0(v15);
  v18 = 0x6C7070612E6D6F63;
  if (v17)
  {
    v18 = v16;
  }

  v19 = 0xEC00000076742E65;
  if (v17)
  {
    v19 = v17;
  }

  v20 = &v0[OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_bundleId];
  *v20 = v18;
  v20[1] = v19;
  v21 = [objc_opt_self() vui_defaultBag];
  if (v21)
  {
    v22 = v21;
    v23 = [objc_allocWithZone(MEMORY[0x1E698C8D8]) initWithBag_];

    v24 = *&v1[v13];
    *&v1[v13] = v23;
  }

  else
  {
    sub_1E324FBDC();
    v25 = OUTLINED_FUNCTION_101();
    v26(v25);
    v27 = sub_1E41FFC94();
    v28 = sub_1E42067F4();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = OUTLINED_FUNCTION_125_0();
      *v29 = 0;
      _os_log_impl(&dword_1E323F000, v27, v28, "UnifiedMessagingSignalProvider::Failed to load AMS bag", v29, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    (*(v11 + 8))(v0, v9);
  }

  sub_1E3280A90(0, &qword_1EE23B1D0);
  sub_1E4203FE4();
  v67 = MEMORY[0x1E69E7CC0];
  sub_1E3274998(&qword_1EE23B1F0, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326B0);
  sub_1E328FD7C(&qword_1EE23B490, &unk_1ECF326B0);
  sub_1E42072E4();
  (*(v63 + 104))(v62, *MEMORY[0x1E69E8090], v64);
  *&v1[OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_downloadAndPurchaseAccessQueue] = sub_1E4206A44();
  v30 = [objc_opt_self() defaultMediaLibrary];
  *&v1[OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_mediaLibrary] = v30;
  *&v1[OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_signalLock] = 0;
  v66.receiver = v1;
  v66.super_class = ObjectType;
  v31 = objc_msgSendSuper2(&v66, sel_init);
  objc_opt_self();
  v32 = v31;
  v33 = OUTLINED_FUNCTION_69_24();
  OUTLINED_FUNCTION_34_59(v33, v34, v35, sel_handleActiveDownloadButtonsDidChange_, @"VUIUnifiedMessagingRegistryActiveButtonsDidChange");

  v36 = OUTLINED_FUNCTION_69_24();
  v37 = VUIPlaybackManagerIsPlaybackUIBeingShownDidChange[0];
  v38 = objc_opt_self();
  v39 = v32;
  v40 = v37;
  v41 = [v38 sharedInstance];
  [v36 addObserver:v39 selector:sel_handleIsPlaybackUIBeingShownDidChange_ name:v40 object:v41];

  v42 = OUTLINED_FUNCTION_69_24();
  OUTLINED_FUNCTION_34_59(v42, v43, v44, sel_handleHasFavoriteTeamsDidChange_, @"VUIUnifiedMessagingRegistryHasFavoriteTeamsDidChange");

  v45 = OUTLINED_FUNCTION_69_24();
  OUTLINED_FUNCTION_34_59(v45, v46, v47, sel_handleLibraryContentsDidChange_, @"VUISideBandContentsDidChangeNotification");

  v48 = OUTLINED_FUNCTION_69_24();
  OUTLINED_FUNCTION_34_59(v48, v49, v50, sel_handleNotifAuthStatusDidChange, *MEMORY[0x1E69DDAB0]);

  v51 = OUTLINED_FUNCTION_69_24();
  OUTLINED_FUNCTION_34_59(v51, v52, v53, sel_handleHasEventforTVPlus_, *MEMORY[0x1E69E1690]);

  if (TVAppFeature.isEnabled.getter(12))
  {
    v54 = _s8VideosUI43VUILocationServiceProxyObjCNotificationNameC30locationAuthorizationDidChangeSo014NSNotificationH0avgZ_0();
  }

  else
  {
    v54 = *MEMORY[0x1E69E16C8];
  }

  v55 = v54;
  v56 = objc_opt_self();
  v57 = v55;
  v58 = [v56 defaultCenter];
  [v58 addObserver:v39 selector:sel_handleLocationStatusDidChange_ name:v57 object:0];

  sub_1E3D553AC();
  sub_1E3D555E0(0);
  sub_1E3D55954();
  v59 = [objc_opt_self() standardUserDefaults];
  sub_1E37BFCC0();

  v60 = sub_1E4205ED4();

  v61 = [v59 BOOLForKey_];

  *(v39 + OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_hasUsedSportsBridgeButton) = v61;
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3D553AC()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_71_0();
  sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v3 = *(v0 + OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_downloadAndPurchaseAccessQueue);
  OUTLINED_FUNCTION_4_0();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_141_0();
  v16[4] = sub_1E3D5BB48;
  v16[5] = v4;
  OUTLINED_FUNCTION_12_0();
  v16[1] = 1107296256;
  OUTLINED_FUNCTION_0_48();
  v16[2] = v5;
  v16[3] = &block_descriptor_81_0;
  v6 = _Block_copy(v16);
  v7 = v3;

  sub_1E4203FE4();
  OUTLINED_FUNCTION_4_2();
  sub_1E3274998(v8, v9);
  v10 = OUTLINED_FUNCTION_153_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(v10);
  OUTLINED_FUNCTION_96_16(&qword_1EE23B5D0);
  OUTLINED_FUNCTION_31_57();
  OUTLINED_FUNCTION_151_0();
  sub_1E42072E4();
  v11 = OUTLINED_FUNCTION_62_0();
  MEMORY[0x1E6911380](v11);
  _Block_release(v6);

  v12 = OUTLINED_FUNCTION_16_80();
  v13(v12);
  v14 = OUTLINED_FUNCTION_41_49();
  v15(v14);

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3D555E0(char a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  v5 = OUTLINED_FUNCTION_17_2(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_71_0();
  v6 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_4_0();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = a1;
  if (TVAppFeature.isEnabled.getter(12))
  {
    if ([objc_opt_self() isRunningInTVExtension])
    {
      sub_1E324FBDC();
      v12 = OUTLINED_FUNCTION_101();
      v13(v12);
      v14 = sub_1E41FFC94();
      sub_1E42067E4();
      OUTLINED_FUNCTION_41_15();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = OUTLINED_FUNCTION_125_0();
        OUTLINED_FUNCTION_50_4(v16);
        OUTLINED_FUNCTION_24_2(&dword_1E323F000, v17, v18, "UnifiedMessagingSignalProvider:: local notification services not available in TV extension.");
        OUTLINED_FUNCTION_6_0();
      }

      else
      {
      }

      (*(v8 + 8))(v1, v6);
    }

    else
    {
      v23 = sub_1E4206474();
      __swift_storeEnumTagSinglePayload(v2, 1, 1, v23);
      OUTLINED_FUNCTION_10_9();
      v24 = swift_allocObject();
      v24[2] = 0;
      v24[3] = 0;
      v24[4] = sub_1E3D5B9E4;
      v24[5] = v11;
      sub_1E376FE58(0, 0, v2, &unk_1E42CE268, v24);
    }
  }

  else
  {
    v19 = [objc_opt_self() vuiNotificationCenter];
    if (v19)
    {
      v20 = v19;
      OUTLINED_FUNCTION_2_4();
      v21 = swift_allocObject();
      *(v21 + 16) = sub_1E3D5B9E4;
      *(v21 + 24) = v11;
      aBlock[4] = sub_1E3D5B9F0;
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1E377674C;
      aBlock[3] = &block_descriptor_54;
      v22 = _Block_copy(aBlock);

      [v20 getNotificationSettingsWithCompletionHandler_];

      _Block_release(v22);
    }

    else
    {
    }
  }
}

void sub_1E3D55954()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  v2 = OUTLINED_FUNCTION_17_2(v1);
  MEMORY[0x1EEE9AC00](v2);
  v4 = aBlock - v3;
  if (TVAppFeature.isEnabled.getter(12))
  {
    v5 = sub_1E4206474();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = v0;
    v7 = v0;
    sub_1E37748D8(0, 0, v4, &unk_1E42CE280, v6);
  }

  else
  {
    v8 = [objc_opt_self() sharedInstance];
    OUTLINED_FUNCTION_4_0();
    v9 = swift_allocObject();
    OUTLINED_FUNCTION_141_0();
    aBlock[4] = sub_1E3D5BFE8;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E39CF930;
    aBlock[3] = &block_descriptor_104_1;
    v10 = _Block_copy(aBlock);

    OUTLINED_FUNCTION_25();
    [v11 v12];

    _Block_release(v10);
  }
}

uint64_t sub_1E3D55BC8()
{
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  sub_1E41FE9C4();
  v1 = sub_1E41FE9A4();
  if (v1)
  {
    v2 = v1;
    v3 = objc_opt_self();
    v4 = @"com.apple.onboarding.tvapp";
    LODWORD(v3) = [v3 acknowledgementNeededForPrivacyIdentifier:v4 account:v2];

    return v3 ^ 1;
  }

  else
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_22_6();
    v6 = OUTLINED_FUNCTION_33_14();
    v7(v6);
    v8 = sub_1E41FFC94();
    v9 = sub_1E42067F4();
    if (OUTLINED_FUNCTION_104(v9))
    {
      v10 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_34_10(v10);
      OUTLINED_FUNCTION_5_20(&dword_1E323F000, v11, v12, "Could not resolve an account to check for acceptance of GDPR, returning false");
      OUTLINED_FUNCTION_65_0();
    }

    v13 = OUTLINED_FUNCTION_13_8();
    v14(v13);
    return 0;
  }
}

uint64_t sub_1E3D55D30()
{
  v1 = sub_1E41FF214();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_6();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_78();
  if (TVAppFeature.isEnabled.getter(12))
  {
    sub_1E41FEDE4();
    sub_1E41FEDD4();
    sub_1E41FED94();

    (*(v3 + 32))(v7, v0, v1);
    v9 = OUTLINED_FUNCTION_13_8();
    v11 = v10(v9);
    result = 0;
    if (v11 != *MEMORY[0x1E69D5900])
    {
      if (v11 == *MEMORY[0x1E69D5908])
      {
        return 1;
      }

      else
      {
        v16 = OUTLINED_FUNCTION_13_8();
        v17(v16);
        return -1;
      }
    }
  }

  else
  {
    result = [objc_opt_self() defaultLocationManager];
    if (result)
    {
      v13 = result;
      v14 = [result authorizationStatus];

      if (v14 == 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = -1;
      }

      if (v14)
      {
        return v15;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1E3D55EE8()
{
  result = [objc_opt_self() sharedSettings];
  if (result)
  {
    v1 = result;
    v2 = [result networkStatus];

    if (v2 == 1)
    {
      return 1;
    }

    else
    {
      return 2 * (v2 == 2);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E3D55F60(char *a1, char *a2)
{
  isEscapingClosureAtFileLocation = 0xD00000000000001BLL;
  v6 = [objc_allocWithZone(MEMORY[0x1E698CA08]) initForEngagement];
  OUTLINED_FUNCTION_95_17();
  v7 = sub_1E4205ED4();
  v8 = &selRef_alwaysPrefetchAppConfiguration;
  [v6 setEventType:v7];

  v9 = sub_1E4205ED4();
  OUTLINED_FUNCTION_71_27();
  v10 = sub_1E4205ED4();
  OUTLINED_FUNCTION_66_25(v10, sel_setProperty_forBodyKey_);

  v11 = a1 == 0xD00000000000001ELL && 0x80000001E4280C70 == a2;
  if (v11 || (OUTLINED_FUNCTION_43_17() & 1) != 0)
  {
    goto LABEL_6;
  }

  v23 = a1 == 0xD00000000000001BLL && 0x80000001E4280C90 == a2;
  if (v23 || (OUTLINED_FUNCTION_43_17() & 1) != 0)
  {
    v24 = *(v2 + OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_downloadAndPurchaseAccessQueue);
    OUTLINED_FUNCTION_4_0();
    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_2_4();
    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    *(v26 + 24) = v6;
    v10 = v26;
    OUTLINED_FUNCTION_2_4();
    v27 = swift_allocObject();
    *(v27 + 16) = sub_1E3D5C118;
    *(v27 + 24) = v10;
    v68 = sub_1E379E500;
    v69 = v27;
    OUTLINED_FUNCTION_3_26();
    v65 = 1107296256;
    v66 = sub_1E3839B50;
    v67 = &block_descriptor_127_0;
    v28 = _Block_copy(aBlock);
    v8 = v69;
    v29 = v24;
    v30 = v6;
    v6 = v29;
    v31 = v30;
    v32 = v30;

    dispatch_sync(v6, v28);

    _Block_release(v28);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      v6 = v31;
      v12 = sub_1E3D5C118;
      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_49;
  }

  v34 = a1 == 0xD000000000000010 && 0x80000001E4280CB0 == a2;
  if (v34 || (OUTLINED_FUNCTION_43_17() & 1) != 0)
  {
    goto LABEL_6;
  }

  v35 = a1 == 0xD000000000000012 && 0x80000001E4280CD0 == a2;
  if (v35 || (OUTLINED_FUNCTION_43_17() & 1) != 0)
  {
    sub_1E3D55BC8();
    v36 = sub_1E4206394();
    OUTLINED_FUNCTION_23_74();
  }

  else
  {
    v39 = a1 == 0xD000000000000019 && 0x80000001E4280CF0 == a2;
    if (v39 || (OUTLINED_FUNCTION_43_17() & 1) != 0)
    {
      v10 = sub_1E4206394();
      v40 = sub_1E4205ED4();
      [v6 setProperty:v10 forBodyKey:v40];

      v36 = sub_1E4206394();
    }

    else
    {
      v41 = a1 == 0xD000000000000018 && 0x80000001E4280D10 == a2;
      if (v41 || (OUTLINED_FUNCTION_43_17() & 1) != 0)
      {
        goto LABEL_6;
      }

      v10 = 0xD000000000000017;
      v42 = a1 == 0xD000000000000017 && 0x80000001E4280D30 == a2;
      if (!v42 && (OUTLINED_FUNCTION_43_17() & 1) == 0)
      {
LABEL_49:
        v63 = v6;
        v43 = v2;
        if (a1 == 0x6B63616279616C70 && a2 == 0xEE00646E45646944)
        {
          v12 = 0;
          v10 = 0;
          goto LABEL_61;
        }

        if (OUTLINED_FUNCTION_43_17() & 1) != 0 || ((OUTLINED_FUNCTION_78_17(), v11) ? (v47 = v46 == v45) : (v47 = 0), v47 || (OUTLINED_FUNCTION_73_18()))
        {
LABEL_59:
          v12 = 0;
          v10 = 0;
LABEL_61:
          v6 = v63;
          goto LABEL_7;
        }

        OUTLINED_FUNCTION_78_17();
        v50 = v11 && v48 == v49;
        if (v50 || (OUTLINED_FUNCTION_73_18() & 1) != 0)
        {
          sub_1E3D567E4();
          v36 = sub_1E41FE954();
        }

        else
        {
          v53 = a1 == isEscapingClosureAtFileLocation && 0x80000001E4280D70 == a2;
          if (!v53 && (OUTLINED_FUNCTION_73_18() & 1) == 0)
          {
            OUTLINED_FUNCTION_78_17();
            v56 = v11 && v54 == v55;
            if (v56 || (OUTLINED_FUNCTION_73_18() & 1) != 0)
            {
              sub_1E4146278();

              v57 = sub_1E4146670();

              sub_1E39701B0(v57);
              v36 = sub_1E42062A4();

              sub_1E4205ED4();
              OUTLINED_FUNCTION_83_13();
              [v63 v58];
              v6 = v63;
              goto LABEL_30;
            }

            OUTLINED_FUNCTION_78_17();
            v61 = v11 && v59 == v60;
            if (!v61 && (OUTLINED_FUNCTION_73_18() & 1) == 0)
            {
              goto LABEL_59;
            }

            OUTLINED_FUNCTION_70_24();
            v62 = sub_1E4205ED4();
            [v63 v8[102]];

            v2 = v43;
            v6 = v63;
            v36 = sub_1E4205ED4();
            sub_1E4205ED4();
            OUTLINED_FUNCTION_83_13();
            goto LABEL_69;
          }

          sub_1E3D56848();
          v36 = sub_1E4206694();
        }

        sub_1E4205ED4();
        OUTLINED_FUNCTION_83_13();
        v6 = v63;
LABEL_69:
        OUTLINED_FUNCTION_66_25(v51, v52);
        goto LABEL_30;
      }

      sub_1E3D55D30();
      v36 = sub_1E4206694();
      OUTLINED_FUNCTION_35_53();
    }
  }

  sub_1E4205ED4();
  OUTLINED_FUNCTION_83_13();
  OUTLINED_FUNCTION_66_25(v37, v38);
LABEL_30:

LABEL_6:
  v12 = 0;
  v10 = 0;
LABEL_7:
  v13 = *(v2 + OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_engagement);
  if (v13)
  {
    v14 = v13;
    v15 = [v6 dictionaryForPosting];
    sub_1E4205C64();

    v16 = sub_1E4205C44();

    v17 = [v14 enqueueData_];

    if (v17)
    {
      OUTLINED_FUNCTION_4_0();
      v18 = swift_allocObject();
      OUTLINED_FUNCTION_141_0();
      OUTLINED_FUNCTION_10_9();
      v19 = swift_allocObject();
      v19[2] = v18;
      v19[3] = a1;
      v19[4] = a2;
      v19[5] = v6;
      v68 = sub_1E3D5C10C;
      v69 = v19;
      OUTLINED_FUNCTION_3_26();
      v65 = 1107296256;
      OUTLINED_FUNCTION_27_63();
      v66 = v20;
      v67 = &block_descriptor_117_0;
      v21 = _Block_copy(aBlock);
      v22 = v6;
      v6 = v17;

      [v6 addFinishBlock:v21];

      _Block_release(v21);
    }
  }

  return sub_1E37FAED8(v12, v10);
}

uint64_t sub_1E3D5676C()
{
  v1 = OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_signalLock;
  OUTLINED_FUNCTION_23_2();
  swift_beginAccess();
  os_unfair_lock_lock((v0 + v1));
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_lastNLSQueryDate);
  os_unfair_lock_unlock((v0 + v1));
  swift_endAccess();
  return v2;
}

double sub_1E3D567E4()
{
  OUTLINED_FUNCTION_8_135();
  os_unfair_lock_lock((v0 + v1));
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_playbackElapsedTime);
  os_unfair_lock_unlock((v0 + v1));
  swift_endAccess();
  return v2;
}

uint64_t sub_1E3D56848()
{
  OUTLINED_FUNCTION_8_135();
  os_unfair_lock_lock((v0 + v1));
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_notifAuthStatus);
  os_unfair_lock_unlock((v0 + v1));
  swift_endAccess();
  if ((v2 - 1) >= 4)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

void sub_1E3D568AC()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v51 - v16;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v54 = v3;
    if (v5)
    {
      v20 = v5;
      v21 = sub_1E324FBDC();
      (*(v10 + 16))(v17, v21, v8);
      v22 = v5;

      v23 = sub_1E41FFC94();
      v24 = sub_1E42067F4();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v53 = v8;
        v26 = v25;
        v55 = swift_slowAlloc();
        *(v26 + 4) = OUTLINED_FUNCTION_86_11(4.8151e-34);
        *(v26 + 12) = 2080;
        swift_getErrorValue();
        v27 = sub_1E4207AB4();
        v29 = sub_1E3270FC8(v27, v28, &v55);

        *(v26 + 14) = v29;
        _os_log_impl(&dword_1E323F000, v23, v24, "UnifiedMessagingSignalProvider::Promise for data enqueue %s finish with error: %s", v26, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_6_0();

        (*(v10 + 8))(v17, v53);
      }

      else
      {

        (*(v10 + 8))(v17, v8);
      }
    }

    else
    {
      v30 = [v1 dictionaryForPosting];
      v31 = sub_1E4205C64();

      v32 = sub_1E374BD08(v31);

      sub_1E324FBDC();
      v33 = OUTLINED_FUNCTION_101();
      v34(v33);

      v35 = v7;
      v36 = sub_1E41FFC94();
      v37 = sub_1E4206814();

      if (os_log_type_enabled(v36, v37))
      {
        v53 = v8;
        v38 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v55 = v52;
        *(v38 + 4) = OUTLINED_FUNCTION_86_11(4.8152e-34);
        *(v38 + 12) = 2080;
        if (v7)
        {
          v39 = [v35 debugDescription];
          sub_1E4205F14();
        }

        v43 = OUTLINED_FUNCTION_53();
        v46 = sub_1E3270FC8(v43, v44, v45);

        *(v38 + 14) = v46;
        *(v38 + 22) = 2080;
        if (v32)
        {
          sub_1E4205CA4();
        }

        v47 = OUTLINED_FUNCTION_53();
        v50 = sub_1E3270FC8(v47, v48, v49);

        *(v38 + 24) = v50;
        _os_log_impl(&dword_1E323F000, v36, v37, "UnifiedMessagingSignalProvider::Promise for data enqueue %s did finish with result: %s for data: %s", v38, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();

        v42 = *(v10 + 8);
        v40 = v14;
        v41 = v53;
      }

      else
      {

        v40 = OUTLINED_FUNCTION_153_2();
      }

      v42(v40, v41);
      sub_1E3D56D70();
    }
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3D56D70()
{
  v0 = [objc_opt_self() defaultLocationManager];
  if (v0)
  {
    v1 = v0;
    v3[4] = sub_1E3D592BC;
    v3[5] = 0;
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 1107296256;
    v3[2] = sub_1E39EBA28;
    v3[3] = &block_descriptor_102;
    v2 = _Block_copy(v3);
    [v1 fetchAuthorizationStatus_];
    _Block_release(v2);
  }

  else
  {
    __break(1u);
  }
}

void sub_1E3D56E44()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_signalLock;
    OUTLINED_FUNCTION_23_2();
    swift_beginAccess();
    os_unfair_lock_lock(&v10[v11]);
    v12 = *&v10[OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_notifAuthStatus];
    *&v10[OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_notifAuthStatus] = v4;
    os_unfair_lock_unlock(&v10[v11]);
    swift_endAccess();
    sub_1E324FBDC();
    v13 = OUTLINED_FUNCTION_101();
    v14(v13);
    v15 = sub_1E41FFC94();
    v16 = sub_1E4206814();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 67109376;
      *(v17 + 4) = v12 != v4;
      *(v17 + 8) = 1024;
      *(v17 + 10) = v2 & 1;
      _os_log_impl(&dword_1E323F000, v15, v16, "UnifiedMessagingSignalProvider:: notif auth status changed %{BOOL}d - should notify change %{BOOL}d", v17, 0xEu);
      OUTLINED_FUNCTION_6_0();
    }

    (*(v7 + 8))(v0, v5);
    if ((v2 & 1) != 0 && v12 != v4)
    {
      v18 = OUTLINED_FUNCTION_35_53();
      sub_1E3D55F60(v18, v19);
    }
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3D57030()
{
  OUTLINED_FUNCTION_24();
  v0[2] = v1;
  v0[3] = v2;
  type metadata accessor for LocalNotificationService();
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_56_1(v3);

  return static LocalNotificationService.authorizationStatus()();
}

uint64_t sub_1E3D570C8()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  *(v1 + 40) = v0;

  return MEMORY[0x1EEE6DFA0](sub_1E3D571C0, 0, 0);
}

uint64_t sub_1E3D571C0()
{
  OUTLINED_FUNCTION_24();
  (*(v0 + 16))(*(v0 + 40));
  OUTLINED_FUNCTION_54();

  return v1();
}

uint64_t sub_1E3D57220()
{
  OUTLINED_FUNCTION_24();
  v0[7] = v1;
  v2 = sub_1E41FFCB4();
  v0[8] = v2;
  v0[9] = *(v2 - 8);
  v0[10] = swift_task_alloc();
  v0[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E3D572E8, 0, 0);
}

uint64_t sub_1E3D572E8()
{
  OUTLINED_FUNCTION_24();
  sub_1E41FEE44();
  *(v0 + 96) = sub_1E41FEE24();
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_56_1(v1);

  return MEMORY[0x1EEE43608](0);
}

uint64_t sub_1E3D5738C()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  *(v2 + 112) = v1;
  *(v2 + 120) = v0;

  if (v0)
  {
    v3 = sub_1E3D57704;
  }

  else
  {

    v3 = sub_1E3D574A0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E3D574A0()
{
  v1 = [*(v0 + 112) data];
  sub_1E41FE464();

  OUTLINED_FUNCTION_27_0();
  v2 = sub_1E41FE434();
  v3 = OUTLINED_FUNCTION_27_0();
  sub_1E38DCCB0(v3, v4);
  if (v2)
  {
    v5 = sub_1E4205F14();
    sub_1E3277E60(v5, v6, v2, (v0 + 16));

    if (*(v0 + 40))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
      if (swift_dynamicCast())
      {
        v7 = *(v0 + 112);
        v8 = sub_1E3744600(*(v0 + 48));

        sub_1E3D57A9C(v8);

        goto LABEL_12;
      }
    }

    else
    {
      sub_1E325F6F0(v0 + 16, &unk_1ECF296E0);
    }

    sub_1E324FBDC();
    v19 = OUTLINED_FUNCTION_22_34();
    v20(v19);
    v11 = sub_1E41FFC94();
    sub_1E42067F4();
    OUTLINED_FUNCTION_41_15();
    v22 = os_log_type_enabled(v11, v21);
    v14 = *(v0 + 112);
    if (v22)
    {
      v23 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_50_4(v23);
      v18 = "Configuration response missing data key dictionary";
      goto LABEL_10;
    }
  }

  else
  {
    sub_1E324FBDC();
    v9 = OUTLINED_FUNCTION_22_34();
    v10(v9);
    v11 = sub_1E41FFC94();
    sub_1E42067F4();
    OUTLINED_FUNCTION_41_15();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 112);
    if (v13)
    {
      v15 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_50_4(v15);
      v18 = "Configuration response is not a valid dictionary";
LABEL_10:
      OUTLINED_FUNCTION_48_5(&dword_1E323F000, v16, v17, v18);
      OUTLINED_FUNCTION_6_0();
    }
  }

  v24 = OUTLINED_FUNCTION_27_0();
  v25(v24);
LABEL_12:

  OUTLINED_FUNCTION_54();

  return v26();
}

uint64_t sub_1E3D57704()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

uint64_t sub_1E3D57774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 2;
  }

  v4 = sub_1E327D33C(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + v4);
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1E3D577C0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8D0);
    v2 = sub_1E4207744();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

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
  v7 = v2 + 64;

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    sub_1E374E74C(*(a1 + 48) + 40 * v11, v33);
    sub_1E37E93E8(*(a1 + 56) + 32 * v11, v35, &unk_1ECF296E0);
    v21 = v33[0];
    v23 = v33[1];
    v25 = v34;
    v32[0] = v35[0];
    v32[1] = v35[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0);
    swift_dynamicCast();
    v28 = v21;
    v29 = v23;
    v30 = v25;
    sub_1E329504C(&v27, v31);
    v22 = v28;
    v24 = v29;
    v26 = v30;
    sub_1E329504C(v31, v32);
    result = sub_1E42073F4();
    v12 = -1 << *(v2 + 32);
    v13 = result & ~v12;
    v14 = v13 >> 6;
    if (((-1 << v13) & ~*(v7 + 8 * (v13 >> 6))) == 0)
    {
      v16 = 0;
      v17 = (63 - v12) >> 6;
      while (++v14 != v17 || (v16 & 1) == 0)
      {
        v18 = v14 == v17;
        if (v14 == v17)
        {
          v14 = 0;
        }

        v16 |= v18;
        v19 = *(v7 + 8 * v14);
        if (v19 != -1)
        {
          v15 = __clz(__rbit64(~v19)) + (v14 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v15 = __clz(__rbit64((-1 << v13) & ~*(v7 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
    v20 = *(v2 + 48) + 40 * v15;
    *v20 = v22;
    *(v20 + 16) = v24;
    *(v20 + 32) = v26;
    result = sub_1E329504C(v32, (*(v2 + 56) + 32 * v15));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1E3D57A9C(uint64_t a1)
{
  v2 = sub_1E3D57B10(31350, 0xE200000000000000, a1);
  sub_1E3D59C24(v2 & 1, &OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_hasEventForTVPlusonLargeTV);
  v3 = sub_1E3D57B10(0x5654656C707041, 0xE700000000000000, a1);
  return sub_1E3D59C24(v3 & 1, &OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_hasEventForTVPlusonATV);
}

uint64_t sub_1E3D57B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E4207414();
  sub_1E375D7E8(&v51, a3, &v55);
  sub_1E375D84C(&v51);
  if (!v56)
  {
    v43 = &v55;
LABEL_32:
    sub_1E325F6F0(v43, &unk_1ECF296E0);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  sub_1E3277E60(0x6D726F6674616C70, 0xED00006465735573, 0x706F725072657375, &v51);

  if (!v53)
  {
LABEL_31:
    v43 = &v51;
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_53_36(v6, v7, v8, v9, v10, v11, v12, v13, v44, 0x706F725072657375, 0xE900000000000073, v51, *(&v51 + 1), v52, v53, v54, v55);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  sub_1E3277E60(a1, a2, v55, &v51);

  if (!v53)
  {
    goto LABEL_31;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0);
  OUTLINED_FUNCTION_53_36(v14, v15, v16, v14, v17, v18, v19, v20, v45, v47, v49, v51, *(&v51 + 1), v52, v53, v54, v55);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return 0;
  }

  v22 = v55;
  v23 = *(v55 + 16);
  if (!v23)
  {
LABEL_36:

    return 0;
  }

  v24 = 0;
  v25 = 0x6573776F7242;
  while (1)
  {
    if (v24 >= *(v22 + 16))
    {
      __break(1u);
      return result;
    }

    v26 = *(v22 + 32 + 8 * v24);
    if (*(v26 + 16))
    {

      v27 = sub_1E327D33C(0x73746E657665, 0xE600000000000000);
      if ((v28 & 1) == 0)
      {

        goto LABEL_27;
      }

      sub_1E328438C(*(v26 + 56) + 32 * v27, &v51);

      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420);
      OUTLINED_FUNCTION_53_36(v29, v30, v31, v29, v32, v33, v34, v35, v46, v48, v50, v51, *(&v51 + 1), v52, v53, v54, v55);
      result = swift_dynamicCast();
      if (result)
      {
        break;
      }
    }

LABEL_27:
    if (++v24 == v23)
    {
      goto LABEL_36;
    }
  }

  v36 = v25;
  v46 = v55;
  v37 = (v55 + 40);
  v38 = *(v55 + 16) + 1;
  do
  {
    if (!--v38)
    {

      v25 = v36;
      goto LABEL_27;
    }

    v39 = *(v37 - 1);
    v40 = *v37;
    v41 = v39 == v36 && v40 == 0xE600000000000000;
    if (v41 || (sub_1E42079A4() & 1) != 0)
    {
      break;
    }

    if (v39 == 2036427856 && v40 == 0xE400000000000000)
    {
      break;
    }

    v37 += 2;
  }

  while ((sub_1E42079A4() & 1) == 0);

  return 1;
}

uint64_t sub_1E3D57E54()
{
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  [objc_opt_self() cancelPreviousPerformRequestsWithTarget:v0 selector:sel_debounceActiveDownloadButtonDidChange object:0];
  [v0 performSelector:sel_debounceActiveDownloadButtonDidChange withObject:0 afterDelay:1.0];
  sub_1E324FBDC();
  OUTLINED_FUNCTION_22_6();
  v6(v0);
  v7 = sub_1E41FFC94();
  v8 = sub_1E42067E4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = OUTLINED_FUNCTION_125_0();
    OUTLINED_FUNCTION_34_10(v9);
    _os_log_impl(&dword_1E323F000, v7, v8, "UnifiedMessagingSignalProvider:: scheduled active download buttons notification", v1, 2u);
    OUTLINED_FUNCTION_65_0();
  }

  return (*(v4 + 8))(v0, v2);
}

uint64_t sub_1E3D57FD0()
{
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    sub_1E3D55F60(0xD00000000000001ELL, 0x80000001E4280C70);
    sub_1E324FBDC();
    v3 = OUTLINED_FUNCTION_33_14();
    v4(v3);
    v5 = sub_1E41FFC94();
    sub_1E42067E4();
    OUTLINED_FUNCTION_41_15();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_50_4(v7);
      OUTLINED_FUNCTION_48_5(&dword_1E323F000, v8, v9, "UnifiedMessagingSignalProvider:: handling debounced active download buttons notification");
      OUTLINED_FUNCTION_6_0();
    }

    v10 = OUTLINED_FUNCTION_13_8();
    return v11(v10);
  }

  return result;
}

void sub_1E3D58198()
{
  OUTLINED_FUNCTION_31_1();
  v33 = v0;
  v34 = v1;
  v35 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v38 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_71_0();
  sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v36 = v5;
  v37 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_28_4();
  v6 = sub_1E41FDF34();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1E4203FD4();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v18 = v17 - v16;
  sub_1E3280A90(0, &qword_1EE23B1D0);
  (*(v14 + 104))(v18, *MEMORY[0x1E69E7F98], v12);
  v32 = sub_1E4206A54();
  (*(v14 + 8))(v18, v12);
  OUTLINED_FUNCTION_4_0();
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v8 + 16))(&v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v34, v6);
  v20 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  (*(v8 + 32))(v21 + v20, &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v40[4] = sub_1E3D5BE4C;
  v40[5] = v21;
  OUTLINED_FUNCTION_12_0();
  v40[1] = 1107296256;
  OUTLINED_FUNCTION_0_48();
  v40[2] = v22;
  v40[3] = &block_descriptor_96_0;
  v23 = _Block_copy(v40);

  sub_1E4203FE4();
  v39 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_4_2();
  sub_1E3274998(v24, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
  sub_1E328FD7C(&qword_1EE23B5D0, &qword_1ECF2A730);
  OUTLINED_FUNCTION_31_57();
  OUTLINED_FUNCTION_151_0();
  sub_1E42072E4();
  v26 = OUTLINED_FUNCTION_62_0();
  v27 = v32;
  MEMORY[0x1E6911380](v26);
  _Block_release(v23);

  v28 = OUTLINED_FUNCTION_16_80();
  v29(v28);
  v30 = OUTLINED_FUNCTION_41_49();
  v31(v30);

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3D58580()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v28 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_71_0();
  sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v26 = v5;
  v27 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_28_4();
  v6 = sub_1E4204014();
  v25 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  sub_1E3280A90(0, &qword_1EE23B1D0);
  v23 = sub_1E4206A04();
  sub_1E4204004();
  sub_1E4204074();
  v24 = *(v7 + 8);
  v24(v10, v6);
  OUTLINED_FUNCTION_4_0();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29[4] = sub_1E3D5BDD0;
  v29[5] = v14;
  OUTLINED_FUNCTION_12_0();
  v29[1] = 1107296256;
  v29[2] = sub_1E378AEA4;
  v29[3] = &block_descriptor_85_0;
  v15 = _Block_copy(v29);

  sub_1E4203FE4();
  v29[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_4_2();
  sub_1E3274998(v16, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
  sub_1E328FD7C(&qword_1EE23B5D0, &qword_1ECF2A730);
  OUTLINED_FUNCTION_151_0();
  sub_1E42072E4();
  v18 = v23;
  MEMORY[0x1E69112E0](v13, v1, v0, v15);
  _Block_release(v15);

  v19 = OUTLINED_FUNCTION_16_80();
  v20(v19);
  v21 = OUTLINED_FUNCTION_41_49();
  v22(v21);
  v24(v13, v25);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3D588B8()
{
  OUTLINED_FUNCTION_31_1();
  v1 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v41 = v4 - v3;
  OUTLINED_FUNCTION_138();
  v42 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v40 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = sub_1E4203FD4();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  v17 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    v39 = v1;
    v23 = [objc_opt_self() sharedInstance];
    v24 = [v23 isPlaybackUIBeingShown];

    if (v24)
    {
      sub_1E324FBDC();
      v25 = OUTLINED_FUNCTION_101();
      v26(v25);
      v27 = sub_1E41FFC94();
      v28 = sub_1E42067E4();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = OUTLINED_FUNCTION_125_0();
        *v29 = 0;
        _os_log_impl(&dword_1E323F000, v27, v28, "UnifiedMessagingSignalProvider: handling playback UI shown notification", v29, 2u);
        OUTLINED_FUNCTION_6_0();
      }

      else
      {
      }

      (*(v19 + 8))(v0, v17);
    }

    else
    {
      sub_1E3280A90(0, &qword_1EE23B1D0);
      (*(v12 + 104))(v16, *MEMORY[0x1E69E7F98], v10);
      v38 = sub_1E4206A54();
      (*(v12 + 8))(v16, v10);
      OUTLINED_FUNCTION_4_0();
      v30 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v43[4] = sub_1E3D5BDD8;
      v43[5] = v30;
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 1107296256;
      OUTLINED_FUNCTION_0_48();
      v43[2] = v31;
      v43[3] = &block_descriptor_89_0;
      v32 = _Block_copy(v43);

      sub_1E4203FE4();
      OUTLINED_FUNCTION_4_2();
      sub_1E3274998(v33, v34);
      v35 = OUTLINED_FUNCTION_153_2();
      __swift_instantiateConcreteTypeFromMangledNameV2(v35);
      OUTLINED_FUNCTION_96_16(&qword_1EE23B5D0);
      sub_1E42072E4();
      MEMORY[0x1E6911380](0, v9, v41, v32);
      _Block_release(v32);

      v36 = OUTLINED_FUNCTION_41_49();
      v37(v36, v39);
      (*(v40 + 8))(v9, v42);
    }
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3D58D80()
{
  OUTLINED_FUNCTION_89_12();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_90_16();
  v3 = v1;
  v0();

  v4 = OUTLINED_FUNCTION_53();
  return v5(v4);
}

uint64_t sub_1E3D58E54(void *a1)
{
  v2 = sub_1E41FDF34();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  sub_1E41FDEE4();
  v9 = a1;
  OUTLINED_FUNCTION_13_8();
  sub_1E3D59FD8();

  return (*(v4 + 8))(v8, v2);
}

void sub_1E3D58F58()
{
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  sub_1E324FBDC();
  v5 = OUTLINED_FUNCTION_101();
  v6(v5);
  v7 = sub_1E41FFC94();
  sub_1E4206814();
  OUTLINED_FUNCTION_41_15();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = OUTLINED_FUNCTION_125_0();
    OUTLINED_FUNCTION_50_4(v9);
    OUTLINED_FUNCTION_24_2(&dword_1E323F000, v10, v11, "UnifiedMessagingSignalProvider:: handle notif auth status did change");
    OUTLINED_FUNCTION_6_0();
  }

  (*(v3 + 8))(v0, v1);
  sub_1E3D555E0(1);
}

uint64_t sub_1E3D590C4()
{
  sub_1E41FDF14();
  if (!v7)
  {
    return sub_1E325F6F0(v6, &unk_1ECF296E0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  result = swift_dynamicCast();
  if (result)
  {
    v1 = sub_1E3744600(v5);
    v2 = sub_1E3D57B10(31350, 0xE200000000000000, v1);

    sub_1E3D59C24(v2 & 1, &OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_hasEventForTVPlusonLargeTV);
    v3 = sub_1E3744600(v5);

    v4 = sub_1E3D57B10(7763041, 0xE300000000000000, v3);

    return sub_1E3D59C24(v4 & 1, &OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_hasEventForTVPlusonATV);
  }

  return result;
}

uint64_t sub_1E3D59204()
{
  OUTLINED_FUNCTION_89_12();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_90_16();
  v4 = v1;
  v0(v2);

  v5 = OUTLINED_FUNCTION_53();
  return v6(v5);
}

uint64_t sub_1E3D592BC()
{
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  if (qword_1EE292B70 != -1)
  {
    OUTLINED_FUNCTION_9_125();
  }

  v1 = sub_1E3D595C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BE0;
  v3 = sub_1E3B58240();
  v4 = *(v3 + 1);
  *(inited + 32) = *v3;
  *(inited + 40) = v4;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E4D0);
  *(inited + 48) = v1;

  v5 = MEMORY[0x1E69E6158];
  v23 = sub_1E4205CB4();
  v21 = v5;
  *&v20 = 0x6E6F6349707061;
  *(&v20 + 1) = 0xE700000000000000;
  sub_1E3D5AF54(&v20, 0x64496567646162, 0xE700000000000000, v22);
  sub_1E325F6F0(v22, &unk_1ECF296E0);
  v6 = sub_1E3286BF0();
  v7 = *((*MEMORY[0x1E69E7D40] & **v6) + 0xE0);
  v8 = *v6;
  LOBYTE(v7) = v7();

  if (v7)
  {

    sub_1E324FBDC();
    OUTLINED_FUNCTION_22_6();
    v9 = OUTLINED_FUNCTION_33_14();
    v10(v9);
    v11 = sub_1E41FFC94();
    v12 = sub_1E4206814();
    if (OUTLINED_FUNCTION_104(v12))
    {
      v13 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_34_10(v13);
      OUTLINED_FUNCTION_5_20(&dword_1E323F000, v14, v15, "UnifiedMessagingSignalProvider: suppress fetching app level sheet");
      OUTLINED_FUNCTION_65_0();
    }

    v16 = OUTLINED_FUNCTION_13_8();
    return v17(v16);
  }

  else
  {
    v19 = *_s8VideosUIAAC33initializeUnifiedMessagingManageryyFZ_0();
    sub_1E3B58258();

    OUTLINED_FUNCTION_27_0();
    sub_1E3B584A8();
  }
}

uint64_t sub_1E3D595AC(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = -1;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E3D595C0()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_downloadAndPurchaseAccessQueue);
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  OUTLINED_FUNCTION_141_0();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E4D0);
  sub_1E4206A14();

  return v4;
}

void sub_1E3D59680()
{
  OUTLINED_FUNCTION_31_1();
  v34 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v5 = v4 - v3;
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_71_0();
  sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_28_4();
  v8 = sub_1E4203FD4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v15 = sub_1E3286BF0();
  v16 = *((*MEMORY[0x1E69E7D40] & **v15) + 0xE0);
  v17 = *v15;
  LOBYTE(v16) = v16();

  if (v16)
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_22_6();
    v18(v5);
    v19 = sub_1E41FFC94();
    v20 = sub_1E4206814();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = OUTLINED_FUNCTION_125_0();
      *v21 = 0;
      _os_log_impl(&dword_1E323F000, v19, v20, "UnifiedMessagingSignalProvider: suppress fetching app level sheet", v21, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    (*(v1 + 8))(v5, v34);
  }

  else
  {
    sub_1E3280A90(0, &qword_1EE23B1D0);
    (*(v10 + 104))(v14, *MEMORY[0x1E69E7F98], v8);
    v22 = sub_1E4206A54();
    (*(v10 + 8))(v14, v8);
    OUTLINED_FUNCTION_4_0();
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v35[4] = sub_1E3D5B740;
    v35[5] = v23;
    OUTLINED_FUNCTION_12_0();
    v35[1] = 1107296256;
    OUTLINED_FUNCTION_0_48();
    v35[2] = v24;
    v35[3] = &block_descriptor_4_0;
    v25 = _Block_copy(v35);

    sub_1E4203FE4();
    OUTLINED_FUNCTION_4_2();
    sub_1E3274998(v26, v27);
    v28 = OUTLINED_FUNCTION_153_2();
    __swift_instantiateConcreteTypeFromMangledNameV2(v28);
    OUTLINED_FUNCTION_96_16(&qword_1EE23B5D0);
    OUTLINED_FUNCTION_31_57();
    OUTLINED_FUNCTION_151_0();
    sub_1E42072E4();
    v29 = OUTLINED_FUNCTION_62_0();
    MEMORY[0x1E6911380](v29);
    _Block_release(v25);

    v30 = OUTLINED_FUNCTION_16_80();
    v31(v30);
    v32 = OUTLINED_FUNCTION_41_49();
    v33(v32);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3D59C24(char a1, void *a2)
{
  v5 = OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_signalLock;
  OUTLINED_FUNCTION_23_2();
  swift_beginAccess();
  os_unfair_lock_lock((v2 + v5));
  *(v2 + *a2) = a1;
  os_unfair_lock_unlock((v2 + v5));
  return swift_endAccess();
}

uint64_t sub_1E3D59CA0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_signalLock;
  OUTLINED_FUNCTION_23_2();
  swift_beginAccess();
  os_unfair_lock_lock((v1 + v3));
  *(v1 + OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_lastPlaybackEvent) = a1;
  os_unfair_lock_unlock((v1 + v3));
  return swift_endAccess();
}

uint64_t sub_1E3D59D0C(double a1)
{
  OUTLINED_FUNCTION_8_135();
  os_unfair_lock_lock((v1 + v2));
  *(v1 + OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_playbackElapsedTime) = a1;
  os_unfair_lock_unlock((v1 + v2));
  return swift_endAccess();
}

uint64_t sub_1E3D59D70()
{
  OUTLINED_FUNCTION_8_135();
  os_unfair_lock_lock((v0 + v1));
  *(v0 + OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_hasUsedSportsBridgeButton) = 1;
  os_unfair_lock_unlock((v0 + v1));
  return swift_endAccess();
}

uint64_t sub_1E3D59DCC()
{
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_78();
  if (sub_1E3D56848())
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_22_6();
    v11(v1);
    v12 = sub_1E41FFC94();
    v13 = sub_1E4206814();
    if (OUTLINED_FUNCTION_104(v13))
    {
      v14 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_34_10(v14);
      _os_log_impl(&dword_1E323F000, v12, v13, "UnifiedMessagingSignalProvider: Notification Authorization Status is already set", v2, 2u);
      OUTLINED_FUNCTION_65_0();
    }

    return (*(v5 + 8))(v1, v3);
  }

  else if (*(v0 + OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_lastPlaybackEvent))
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_22_6();
    v16 = OUTLINED_FUNCTION_33_14();
    v17(v16);
    v18 = sub_1E41FFC94();
    v19 = sub_1E4206814();
    if (OUTLINED_FUNCTION_104(v19))
    {
      v20 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_34_10(v20);
      OUTLINED_FUNCTION_5_20(&dword_1E323F000, v21, v22, "UnifiedMessagingSignalProvider: Skip TCC Prompt as last playback event was either an error or upsell presented");
      OUTLINED_FUNCTION_65_0();
    }

    return (*(v5 + 8))(v9, v3);
  }

  else
  {

    return sub_1E3D55F60(0xD000000000000014, 0x80000001E4280D50);
  }
}

void sub_1E3D59FD8()
{
  OUTLINED_FUNCTION_31_1();
  v23 = v0;
  v2 = v1;
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_71_0();
  sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_28_4();
  v5 = sub_1E4203FD4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  sub_1E3280A90(0, &qword_1EE23B1D0);
  (*(v7 + 104))(v11, *MEMORY[0x1E69E7F98], v5);
  v12 = sub_1E4206A54();
  (*(v7 + 8))(v11, v5);
  OUTLINED_FUNCTION_4_0();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24[4] = v2;
  v24[5] = v13;
  OUTLINED_FUNCTION_12_0();
  v24[1] = 1107296256;
  OUTLINED_FUNCTION_0_48();
  v24[2] = v14;
  v24[3] = v23;
  v15 = _Block_copy(v24);

  sub_1E4203FE4();
  OUTLINED_FUNCTION_4_2();
  sub_1E3274998(v16, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
  sub_1E328FD7C(&qword_1EE23B5D0, &qword_1ECF2A730);
  OUTLINED_FUNCTION_31_57();
  OUTLINED_FUNCTION_151_0();
  sub_1E42072E4();
  v18 = OUTLINED_FUNCTION_62_0();
  MEMORY[0x1E6911380](v18);
  _Block_release(v15);

  v19 = OUTLINED_FUNCTION_16_80();
  v20(v19);
  v21 = OUTLINED_FUNCTION_41_49();
  v22(v21);

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3D5A2C8()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_138();
  v29 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_138();
  v9 = sub_1E4203FD4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  v13 = OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_signalLock;
  OUTLINED_FUNCTION_23_2();
  swift_beginAccess();
  os_unfair_lock_lock((v2 + v13));
  swift_endAccess();
  v14 = 0;
  v15 = v2 + OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_lastNLSQueryDate;
  v30 = *(v2 + OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_lastNLSQueryDate);
  v16 = *(v2 + OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_lastNLSQueryDate + 8);
  if ((v4 & 1) == 0 && v6 >= 1)
  {
    if (*(v2 + OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_lastNLSQueryDate + 8) & 1) != 0 || (v31 = v6, v32 = v30, LOBYTE(v33) = 0, v14 = 0, (sub_1E414A6BC(&v32, &v31, MEMORY[0x1E69E7360], MEMORY[0x1E69E7378])))
    {
      *v15 = v6;
      *(v15 + 8) = 0;
      v14 = 1;
    }
  }

  OUTLINED_FUNCTION_23_2();
  swift_beginAccess();
  os_unfair_lock_unlock((v2 + v13));
  swift_endAccess();
  if (v14)
  {
    sub_1E3280A90(0, &qword_1EE23B1D0);
    (*(v11 + 104))(v1, *MEMORY[0x1E69E7F98], v9);
    v28 = sub_1E4206A54();
    (*(v11 + 8))(v1, v9);
    OUTLINED_FUNCTION_4_0();
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    *(v18 + 24) = v30;
    *(v18 + 32) = v16;
    *(v18 + 40) = v6;
    *(v18 + 48) = v4 & 1;
    v36 = sub_1E3D5B8E0;
    v37 = v18;
    v32 = MEMORY[0x1E69E9820];
    v33 = 1107296256;
    v34 = sub_1E329EEC4;
    v35 = &block_descriptor_31_0;
    v19 = _Block_copy(&v32);

    sub_1E4203FE4();
    v31 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_4_2();
    sub_1E3274998(v20, v21);
    v22 = OUTLINED_FUNCTION_153_2();
    __swift_instantiateConcreteTypeFromMangledNameV2(v22);
    OUTLINED_FUNCTION_96_16(&qword_1EE23B5D0);
    OUTLINED_FUNCTION_151_0();
    sub_1E42072E4();
    v23 = OUTLINED_FUNCTION_62_0();
    MEMORY[0x1E6911380](v23);
    _Block_release(v19);

    v24 = OUTLINED_FUNCTION_16_80();
    v25(v24);
    v26 = OUTLINED_FUNCTION_41_49();
    v27(v26, v29);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3D5A6F4(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_91_14();
  *&v69 = 0xD000000000000016;
  *(&v69 + 1) = 0x80000001E4280C50;
  *(&v70 + 1) = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_68_24(isUniquelyReferenced_nonNull_native, v12, v13, v14, v15, v16, v17, v18, v54, aBlock, v59, v60, v61, v62, v63, v64, v65, *(&v65 + 1), v66, *(&v66 + 1), v67);
  sub_1E375D84C(&aBlock);
  *&v69 = 7368801;
  *(&v69 + 1) = 0xE300000000000000;
  OUTLINED_FUNCTION_91_14();
  v19 = *(v4 + OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_bundleId + 8);
  *&v69 = *(v4 + OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_bundleId);
  *(&v69 + 1) = v19;
  *(&v70 + 1) = v10;

  v20 = swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_68_24(v20, v21, v22, v23, v24, v25, v26, v27, v55, aBlock, v59, v60, v61, v62, v63, v64, v65, *(&v65 + 1), v66, *(&v66 + 1), v67);
  sub_1E375D84C(&aBlock);
  v69 = 0u;
  v70 = 0u;
  OUTLINED_FUNCTION_79_19();
  sub_1E4207414();
  v28 = MEMORY[0x1E69E7360];
  if (a2)
  {
    sub_1E37E93E8(&v69, &v67, &unk_1ECF296E0);
  }

  else
  {
    *(&v66 + 1) = MEMORY[0x1E69E7360];
    *&v65 = a1;
    sub_1E329504C(&v65, &v67);
  }

  v65 = v67;
  v66 = v68;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_67_19(v29, v30, v31, v32, v33, v34, v35, v36, v56, aBlock, v59, v60, v61, v62, v63, v64, v65);
  sub_1E375D84C(&aBlock);
  OUTLINED_FUNCTION_79_19();
  sub_1E4207414();
  if (a4)
  {
    sub_1E37E93E8(&v69, &v67, &unk_1ECF296E0);
  }

  else
  {
    *(&v66 + 1) = v28;
    *&v65 = a3;
    sub_1E329504C(&v65, &v67);
  }

  v65 = v67;
  v66 = v68;
  v37 = swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_67_19(v37, v38, v39, v40, v41, v42, v43, v44, v57, aBlock, v59, v60, v61, v62, v63, v64, v65);
  v45 = v64;
  sub_1E375D84C(&aBlock);
  v46 = *(v5 + OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_engagement);
  if (v46)
  {
    v47 = v46;
    sub_1E3D577C0(v45);

    v48 = sub_1E4205C44();

    v49 = [v47 enqueueData_];

    if (v49)
    {
      v62 = sub_1E3D5AA94;
      v63 = 0;
      aBlock = MEMORY[0x1E69E9820];
      v59 = 1107296256;
      OUTLINED_FUNCTION_27_63();
      v60 = v50;
      v61 = &block_descriptor_34_0;
      v51 = _Block_copy(&aBlock);
      v52 = v49;
      [v52 addFinishBlock_];
      _Block_release(v51);
    }
  }

  else
  {
  }

  return sub_1E325F6F0(&v69, &unk_1ECF296E0);
}

uint64_t sub_1E3D5AA30()
{
  OUTLINED_FUNCTION_8_135();
  os_unfair_lock_lock((v0 + v1));
  v2 = v0 + OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_lastNLSQueryDate;
  *v2 = 0;
  *(v2 + 8) = 1;
  os_unfair_lock_unlock((v0 + v1));
  return swift_endAccess();
}

void sub_1E3D5AA94()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_78();
  if (v2)
  {
    v13 = v2;
    v14 = sub_1E324FBDC();
    (*(v7 + 16))(v0, v14, v5);
    v15 = v2;
    v16 = sub_1E41FFC94();
    v17 = sub_1E42067F4();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v32 = v19;
      *v18 = 136315138;
      swift_getErrorValue();
      v20 = sub_1E4207AB4();
      v22 = sub_1E3270FC8(v20, v21, &v32);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_1E323F000, v16, v17, "UnifiedMessagingSignalProvider::Promise for last NLS query change datefinish with error: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    else
    {
    }

    (*(v7 + 8))(v0, v5);
  }

  else
  {
    v23 = sub_1E324FBDC();
    (*(v7 + 16))(v11, v23, v5);
    v24 = v4;
    v25 = sub_1E41FFC94();
    v26 = sub_1E4206814();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v32 = v28;
      *v27 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37E78);
      v29 = sub_1E42070D4();
      v31 = sub_1E3270FC8(v29, v30, &v32);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_1E323F000, v25, v26, "UnifiedMessagingSignalProvider::Promise for last NLS query change datedid finish. %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v7 + 8))(v11, v5);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3D5AD90(unint64_t a1)
{
  v1 = a1;
  if (sub_1E32AE9B0(a1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FBB8);
    v2 = sub_1E4207464();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
  }

  v20 = sub_1E32AE9B0(v1);
  if (v20)
  {
    v3 = 0;
    v4 = v2 + 56;
    v18 = v1;
    v19 = v1 & 0xC000000000000001;
    v17 = v1 + 32;
    while (1)
    {
      sub_1E34AF4E4(v3, v19 == 0, v1);
      result = v19 ? MEMORY[0x1E6911E60](v3, v1) : *(v17 + 8 * v3);
      v6 = result;
      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      result = sub_1E4206F54();
      v8 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v9 = result & v8;
        v10 = (result & v8) >> 6;
        v11 = *(v4 + 8 * v10);
        v12 = 1 << (result & v8);
        if ((v12 & v11) == 0)
        {
          break;
        }

        sub_1E3280A90(0, &unk_1EE23B2B0);
        v13 = *(*(v2 + 48) + 8 * v9);
        v14 = sub_1E4206F64();

        if (v14)
        {

          goto LABEL_17;
        }

        result = v9 + 1;
      }

      *(v4 + 8 * v10) = v12 | v11;
      *(*(v2 + 48) + 8 * v9) = v6;
      v15 = *(v2 + 16);
      v7 = __OFADD__(v15, 1);
      v16 = v15 + 1;
      if (v7)
      {
        goto LABEL_20;
      }

      *(v2 + 16) = v16;
LABEL_17:
      v1 = v18;
      if (v3 == v20)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:

    return v2;
  }

  return result;
}

uint64_t sub_1E3D5AF54@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  swift_isUniquelyReferenced_nonNull_native();
  v16 = *v4;
  v9 = sub_1E327D33C(a2, a3);
  if (__OFADD__(v16[2], (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F310);
  if (sub_1E4207644())
  {
    v13 = sub_1E327D33C(a2, a3);
    if ((v12 & 1) == (v14 & 1))
    {
      v11 = v13;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_1E4207A74();
    __break(1u);
    return result;
  }

LABEL_5:
  if (v12)
  {
    sub_1E329504C((v16[7] + 32 * v11), a4);
    result = sub_1E329504C(a1, (v16[7] + 32 * v11));
  }

  else
  {
    sub_1E32A8908(v11, a2, a3, a1, v16);
    *a4 = 0u;
    a4[1] = 0u;
  }

  *v4 = v16;
  return result;
}

unint64_t sub_1E3D5B0A4(unint64_t result, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 40 * result;
  v5 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a2 + 32);
  v6 = (a4[7] + 32 * result);
  v7 = a3[1];
  *v6 = *a3;
  v6[1] = v7;
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t sub_1E3D5B104(_OWORD *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_1E375D924(a2);
  if (__OFADD__(v6[2], (v8 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = v7;
  v10 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37E80);
  if ((sub_1E4207644() & 1) == 0)
  {
    goto LABEL_5;
  }

  v11 = sub_1E375D924(a2);
  if ((v10 & 1) != (v12 & 1))
  {
LABEL_11:
    result = sub_1E4207A74();
    __break(1u);
    return result;
  }

  v9 = v11;
LABEL_5:
  v13 = *v3;
  if (v10)
  {
    v14 = v13[7] + 32 * v9;

    return sub_1E37EB5D0(a1, v14);
  }

  else
  {
    sub_1E374E74C(a2, v16);
    return sub_1E3D5B0A4(v9, v16, a1, v13);
  }
}

void sub_1E3D5B238(void *a1@<X8>)
{
  v3 = v1[3];
  v5 = v1[4];
  v4 = v1[5];
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v26 = v5;
    LOBYTE(v30) = *(Strong + OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_hasItunesPurchases);
    v8 = MEMORY[0x1E69E6370];
    *(&v31 + 1) = MEMORY[0x1E69E6370];
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_40_50();
    sub_1E3807164(&v30, 0xD000000000000012, 0x80000001E4280AD0);
    v9 = OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_hasSubscriptionDownloads;
    if (v7[OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_hasSubscriptionDownloads])
    {
      v10 = 1;
    }

    else
    {
      v10 = v7[OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_hasItunesDownloads];
    }

    LOBYTE(v30) = v10;
    *(&v31 + 1) = v8;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_40_50();
    sub_1E3807164(&v30, 0x6C6E776F44736168, 0xEC0000007364616FLL);
    LOBYTE(v30) = v7[v9];
    *(&v31 + 1) = v8;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_40_50();
    sub_1E3807164(&v30, 0xD000000000000018, 0x80000001E4280AF0);
    LOBYTE(v30) = sub_1E3D55BC8() & 1;
    *(&v31 + 1) = v8;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_40_50();
    sub_1E3807164(&v30, 0x6563634172706467, 0xEC00000064657470);
    v11 = MEMORY[0x1E69E6530];
    *&v30 = v3;
    *(&v31 + 1) = MEMORY[0x1E69E6530];
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_40_50();
    sub_1E3807164(&v30, 0xD00000000000001BLL, 0x80000001E4280B10);
    *&v30 = sub_1E3D55EE8();
    *(&v31 + 1) = v11;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_40_50();
    sub_1E3807164(&v30, 0x536B726F7774656ELL, 0xED00007375746174);
    v12 = *&v7[OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_notifAuthStatus];
    if ((v12 - 1) >= 4)
    {
      v12 = 0;
    }

    *&v30 = v12;
    *(&v31 + 1) = v11;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_40_50();
    sub_1E3807164(&v30, 0xD000000000000016, 0x80000001E4280B50);
    v13 = v28;
    v30 = 0u;
    v31 = 0u;
    v14 = sub_1E3D5676C();
    if (v15)
    {
      sub_1E37E93E8(&v30, &v28, &unk_1ECF296E0);
    }

    else
    {
      *&v28 = v14;
      *(&v29 + 1) = MEMORY[0x1E69E7360];
    }

    v27[0] = v28;
    v27[1] = v29;
    swift_isUniquelyReferenced_nonNull_native();
    v32 = v13;
    sub_1E3807164(v27, 0xD000000000000010, 0x80000001E4280C10);
    v16 = OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_signalLock;
    OUTLINED_FUNCTION_23_2();
    swift_beginAccess();
    os_unfair_lock_lock(&v7[v16]);
    swift_endAccess();
    LOBYTE(v28) = v7[OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_upsellOfferPresented];
    *(&v29 + 1) = v8;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_28_62();
    OUTLINED_FUNCTION_92_11(v17);
    OUTLINED_FUNCTION_47_41();
    OUTLINED_FUNCTION_28_62();
    OUTLINED_FUNCTION_92_11(v18);
    OUTLINED_FUNCTION_47_41();
    OUTLINED_FUNCTION_28_62();
    sub_1E3807164(v19, 0xD000000000000019, 0x80000001E4280B90);
    v20 = *&v27[0];
    *&v28 = v26;
    *(&v28 + 1) = v4;
    *(&v29 + 1) = MEMORY[0x1E69E6158];

    swift_isUniquelyReferenced_nonNull_native();
    *&v27[0] = v20;
    sub_1E3807164(&v28, 0x5472656767697274, 0xEB00000000657079);
    OUTLINED_FUNCTION_47_41();
    OUTLINED_FUNCTION_28_62();
    sub_1E3807164(v21, 0xD000000000000019, 0x80000001E4280C30);
    v22 = *&v27[0];
    sub_1E4146278();

    v23 = sub_1E4146670();

    v24 = sub_1E39701B0(v23)[2];

    *&v28 = v24;
    *(&v29 + 1) = v11;
    swift_isUniquelyReferenced_nonNull_native();
    *&v27[0] = v22;
    sub_1E3807164(&v28, 0xD000000000000017, 0x80000001E4280BB0);
    v25 = *&v27[0];
    OUTLINED_FUNCTION_23_2();
    swift_beginAccess();
    os_unfair_lock_unlock(&v7[v16]);
    swift_endAccess();
    sub_1E325F6F0(&v30, &unk_1ECF296E0);

    *a1 = v25;
  }

  else
  {
    *a1 = MEMORY[0x1E69E7CC8];
  }
}

void sub_1E3D5B740()
{
  OUTLINED_FUNCTION_7_4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OUTLINED_FUNCTION_35_53();
    sub_1E3D55F60(v2, v3);
  }
}

void sub_1E3D5B78C()
{
  OUTLINED_FUNCTION_7_4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1E3D55F60(0xD000000000000010, 0x80000001E4280CB0);
  }
}

void sub_1E3D5B7E4()
{
  OUTLINED_FUNCTION_7_4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OUTLINED_FUNCTION_24_50();
    sub_1E3D55F60(v2, v3);
  }
}

void sub_1E3D5B830()
{
  OUTLINED_FUNCTION_7_4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1E3D55F60(0xD00000000000001ALL, 0x80000001E4280D90);
  }
}

void sub_1E3D5B888()
{
  OUTLINED_FUNCTION_7_4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1E3D55F60(0xD00000000000001FLL, 0x80000001E4280DB0);
  }
}

void sub_1E3D5B8E0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1E3D5A6F4(v1, v2, v3, v4);
  }
}

uint64_t sub_1E3D5BA24()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_56_1(v1);

  return sub_1E3D57030();
}

void sub_1E3D5BAB0()
{
  OUTLINED_FUNCTION_7_4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1E3D55F60(0xD000000000000017, 0x80000001E4280D30);
  }
}

void sub_1E3D5BB08()
{
  OUTLINED_FUNCTION_7_4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1E3D553AC();
  }
}

void sub_1E3D5BB48()
{
  OUTLINED_FUNCTION_7_4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [objc_allocWithZone(MEMORY[0x1E6970618]) init];
    sub_1E3280A90(0, &qword_1EE23B020);
    v3 = sub_1E4205F14();
    v11 = OUTLINED_FUNCTION_63_24(v3, v4, v5, v6, v7, v8, v9, v10, v39, v41, v43, v45, 0);
    v12 = sub_1E39A09C0(v11);
    [v2 addFilterPredicate_];
    [v2 setMediaLibrary_];
    v13 = [v2 _hasItems];

    v1[OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_hasItunesPurchases] = v13;
    v14 = [objc_opt_self() vui:1 isLocalPredicate:0 comparison:?];
    v15 = sub_1E4205F14();
    v23 = OUTLINED_FUNCTION_63_24(v15, v16, v17, v18, v19, v20, v21, v22, v40, v42, v44, v46, 0);
    v26 = sub_1E39A0840(v23, v24, v25, 100);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E429DCC0;
    *(inited + 32) = v14;
    *(inited + 40) = v26;
    if (sub_1E32AE9B0(inited))
    {
      v28 = v14;
      v29 = v26;
      v30 = sub_1E3D5AD90(inited);
    }

    else
    {
      swift_setDeallocating();
      v31 = v14;
      v32 = v26;
      sub_1E377D458();
      v30 = MEMORY[0x1E69E7CD0];
    }

    v33 = objc_allocWithZone(MEMORY[0x1E6970618]);
    v34 = sub_1E39A26C0(v30);
    v35 = [v34 _hasItems];

    v1[OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_hasItunesDownloads] = v35;
    v36 = [objc_opt_self() defaultManager];
    v37 = [v36 sidebandMediaLibrary];

    v38 = [v37 countOfDownloadedOrDownloadingOrEnqueuedSubscriptionVideosForNonMainQueue];
    v1[OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_hasSubscriptionDownloads] = v38 != 0;
  }
}

void sub_1E3D5BDF8()
{
  OUTLINED_FUNCTION_7_4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OUTLINED_FUNCTION_13_8();
    sub_1E3D55F60(v2, v3);
  }
}

void sub_1E3D5BE4C()
{
  v0 = sub_1E41FDF34();
  OUTLINED_FUNCTION_17_2(v0);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1E41FDF14();
    if (v11)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF36120);
      if (swift_dynamicCast())
      {
        v3 = sub_1E4205F14();
        v5 = sub_1E3D57774(v3, v4, v9);

        v2[OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_hasFavoriteTeamsAdded] = v5 & 1;
        v6 = sub_1E4205F14();
        v8 = sub_1E3D57774(v6, v7, v9);

        v2[OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_hasFavoriteTeamsRemoved] = v8 & 1;
      }
    }

    else
    {
      sub_1E325F6F0(v10, &unk_1ECF296E0);
    }

    sub_1E3D55F60(0xD000000000000019, 0x80000001E4280CF0);
  }
}

void sub_1E3D5BFE8(void *a1)
{
  OUTLINED_FUNCTION_7_4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [a1 responseDictionary];
    v5 = sub_1E4205C64();

    sub_1E3D57A9C(v5);
  }
}

uint64_t sub_1E3D5C084()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_56_1(v1);

  return sub_1E3D57220();
}

void sub_1E3D5C118()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_1E4206394();
    OUTLINED_FUNCTION_24_50();
    v5 = sub_1E4205ED4();
    [v1 setProperty:v4 forBodyKey:v5];

    v6 = sub_1E4206394();
    OUTLINED_FUNCTION_72_22();
    v7 = sub_1E4205ED4();
    OUTLINED_FUNCTION_5_159(v7);

    v8 = sub_1E4206394();
    OUTLINED_FUNCTION_24_50();
    v9 = sub_1E4205ED4();
    OUTLINED_FUNCTION_5_159(v9);

    v10 = sub_1E4206394();
    v11 = sub_1E4205ED4();
    OUTLINED_FUNCTION_5_159(v11);

    sub_1E3D55BC8();
    v12 = sub_1E4206394();
    OUTLINED_FUNCTION_23_74();
    v13 = sub_1E4205ED4();
    OUTLINED_FUNCTION_5_159(v13);

    sub_1E3D55D30();
    v14 = sub_1E4206694();
    v15 = sub_1E4205ED4();
    OUTLINED_FUNCTION_5_159(v15);

    sub_1E3D5676C();
    if ((v16 & 1) == 0)
    {
      sub_1E4207B04();
    }

    v17 = sub_1E4205ED4();
    OUTLINED_FUNCTION_5_159(v17);

    swift_unknownObjectRelease();
    v18 = sub_1E4206394();
    v19 = sub_1E4205ED4();
    OUTLINED_FUNCTION_5_159(v19);

    v20 = OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_signalLock;
    OUTLINED_FUNCTION_23_2();
    swift_beginAccess();
    os_unfair_lock_lock(&v3[v20]);
    swift_endAccess();
    v21 = sub_1E4206394();
    v22 = sub_1E4205ED4();
    OUTLINED_FUNCTION_5_159(v22);

    v23 = sub_1E4206394();
    v24 = sub_1E4205ED4();
    OUTLINED_FUNCTION_5_159(v24);

    v25 = sub_1E4206394();
    v26 = sub_1E4205ED4();
    OUTLINED_FUNCTION_5_159(v26);

    sub_1E3D55EE8();
    v27 = sub_1E4206694();
    OUTLINED_FUNCTION_65_23();
    v28 = sub_1E4205ED4();
    OUTLINED_FUNCTION_5_159(v28);

    v29 = sub_1E4206694();
    v30 = sub_1E4205ED4();
    OUTLINED_FUNCTION_5_159(v30);

    OUTLINED_FUNCTION_23_2();
    swift_beginAccess();
    os_unfair_lock_unlock(&v3[v20]);
    swift_endAccess();
    v31 = sub_1E4205ED4();
    v32 = sub_1E4205ED4();
    OUTLINED_FUNCTION_5_159(v32);
  }
}

unint64_t OUTLINED_FUNCTION_68_24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  a21 = v21;

  return sub_1E3D5B104((v22 - 96), &a10);
}

id OUTLINED_FUNCTION_69_24()
{

  return [v0 (v1 + 901)];
}

unint64_t OUTLINED_FUNCTION_86_11(float a1)
{
  *v2 = a1;
  v5 = *(v3 - 152);

  return sub_1E3270FC8(v5, v1, (v3 - 112));
}

uint64_t OUTLINED_FUNCTION_89_12()
{

  return sub_1E41FDF34();
}

uint64_t OUTLINED_FUNCTION_91_14()
{

  return sub_1E4207414();
}

uint64_t OUTLINED_FUNCTION_96_16(unint64_t *a1)
{

  return sub_1E328FD7C(a1, v1);
}

id SportsDisplayError.title.getter()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v1 = result;
    v2 = OUTLINED_FUNCTION_0_227();
    v4 = sub_1E3741090(v2, v3, v1);
    v6 = v5;

    if (v6)
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id SportsDisplayError.subtitle.getter(unsigned __int8 a1)
{
  v1 = a1;
  result = [objc_opt_self() sharedInstance];
  v3 = result;
  if (v1 != 1)
  {
    if (result)
    {
      v4 = OUTLINED_FUNCTION_0_227();
      goto LABEL_6;
    }

LABEL_10:
    __break(1u);
    return result;
  }

  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = 0xD00000000000001ALL;
  v5 = 0x80000001E4281000;
LABEL_6:
  v6 = sub_1E3741090(v4, v5, v3);
  v8 = v7;

  if (!v8)
  {
    return 0;
  }

  return v6;
}

uint64_t sub_1E3D5C7A0(uint64_t a1)
{
  v2 = sub_1E4204DD4();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 88))(a1, v2);
  if (v4 == *MEMORY[0x1E69D39D8])
  {
    return 2;
  }

  if (v4 == *MEMORY[0x1E69D39E0])
  {
    return 0;
  }

  if (v4 != *MEMORY[0x1E69D39E8])
  {
    (*(v3 + 8))(a1, v2);
    return 2;
  }

  return 1;
}

uint64_t SportsDisplayError.hashValue.getter(unsigned __int8 a1)
{
  sub_1E4207B44();
  MEMORY[0x1E69124B0](a1);
  return sub_1E4207BA4();
}

uint64_t sub_1E3D5C92C()
{
  v1 = *v0;
  sub_1E4207B44();
  SportsDisplayError.hash(into:)(v3, v1);
  return sub_1E4207BA4();
}

_BYTE *storeEnumTagSinglePayload for SportsDisplayError(_BYTE *result, unsigned int a2, unsigned int a3)
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

void *sub_1E3D5CAB8@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ButtonLayout();
  v2 = sub_1E3B050E8();
  v3 = j__OUTLINED_FUNCTION_18();
  v4 = sub_1E3BBD964(3, 0, v2, v3 & 1);

  v5 = *sub_1E39D021C();

  sub_1E42038E4();
  v6 = __dst[0];
  v7 = __dst[1];

  sub_1E3E5B9FC();
  memcpy(__dst, __src, sizeof(__dst));
  v8 = sub_1E3E5C294();

  result = memcpy(a1, __src, 0x70uLL);
  *(a1 + 112) = v4;
  *(a1 + 120) = v8;
  *(a1 + 128) = v5;
  *(a1 + 136) = v6;
  *(a1 + 144) = v7;
  return result;
}

void sub_1E3D5CBB8(uint64_t a1@<X8>)
{
  v2 = v1;
  v40 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37E88);
  OUTLINED_FUNCTION_0_10();
  v41 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v37 - v6;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37E90);
  MEMORY[0x1EEE9AC00](v42);
  v9 = (&v37 - v8);
  memcpy(v49, v1, sizeof(v49));
  memcpy(v47, v1, 0x70uLL);
  v10 = v1[14];

  sub_1E3D5CA5C(v49, __dst);
  v45 = sub_1E3751C54(v10);
  LOBYTE(v46) = v11;
  v12 = sub_1E3D5D058();
  v13 = sub_1E375320C();
  sub_1E3EC5F84(&v45, &type metadata for DefaultButton, &type metadata for SystemButtonStyle, v12, v13, v14, v15, v16, v37, v38, v39, v40, v41, v42, v43, *(&v43 + 1), v44, v45, v46, v47[0]);

  memcpy(__dst, v47, 0x70uLL);
  sub_1E3D5D0AC(__dst);
  v47[0] = &type metadata for DefaultButton;
  v47[1] = &type metadata for SystemButtonStyle;
  v47[2] = v12;
  v47[3] = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  LOBYTE(v12) = j__OUTLINED_FUNCTION_18();
  v18 = OUTLINED_FUNCTION_51_1();
  sub_1E383F6D4(v10, v12 & 1, 0, 1, v18 & 1, v3, OpaqueTypeConformance2);
  v41[1](v7, v3);
  v48 = *(v2 + 120);
  v19 = v48;
  v20 = swift_allocObject();
  memcpy((v20 + 16), v2, 0x98uLL);
  v21 = v42;
  *(v9 + *(v42 + 52)) = v19;
  v22 = *(v21 + 56);
  v41 = v9;
  v23 = (v9 + v22);
  *v23 = sub_1E3D5D100;
  v23[1] = v20;
  v24 = objc_opt_self();
  sub_1E3D5D158(&v48, v47);
  sub_1E3D5D1C8(v2, v47);
  v25 = [v24 sharedInstance];
  if (v25)
  {
    v26 = v25;
    v27 = OUTLINED_FUNCTION_2_176();
    v29 = sub_1E3741090(v27, v28, v26);
    v31 = v30;

    if (v31)
    {
      v45 = v29;
      v46 = v31;
      v43 = *(v2 + 136);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0);
      v32 = sub_1E4203914();
      v39 = &v37;
      HIDWORD(v38) = LOBYTE(v47[2]);
      MEMORY[0x1EEE9AC00](v32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32160);
      OUTLINED_FUNCTION_1_33();
      sub_1E32752B0(v33, v34);
      sub_1E32822E0();
      OUTLINED_FUNCTION_6_1();
      sub_1E32752B0(v35, &qword_1ECF32160);
      v36 = v41;
      sub_1E4203444();

      sub_1E32D2344(v36);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

unint64_t sub_1E3D5D058()
{
  result = qword_1EE284600;
  if (!qword_1EE284600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE284600);
  }

  return result;
}

uint64_t sub_1E3D5D158(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37E98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1E3D5D200(const void *a1@<X0>, char *a2@<X8>)
{
  v43 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F570);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F428);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v40 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v40 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v40 - v17;
  v19 = objc_opt_self();
  v20 = [v19 sharedInstance];
  if (!v20)
  {
    __break(1u);
    goto LABEL_7;
  }

  v21 = v20;
  v40 = v12;
  v41 = v9;
  v42 = a2;
  v22 = sub_1E3741090(0x4C45434E4143, 0xE600000000000000, v20);
  v24 = v23;

  if (!v24)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v44[0] = v22;
  v44[1] = v24;
  sub_1E4200A14();
  sub_1E4200A34();
  OUTLINED_FUNCTION_4_181();
  sub_1E32822E0();
  sub_1E4203974();
  v25 = [v19 sharedInstance];
  if (!v25)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v26 = v25;
  v27 = OUTLINED_FUNCTION_2_176();
  v29 = sub_1E3741090(v27, v28, v26);
  v31 = v30;

  if (v31)
  {
    v44[19] = v29;
    v44[20] = v31;
    sub_1E4200A04();
    OUTLINED_FUNCTION_4_181();
    v32 = swift_allocObject();
    v33 = v43;
    memcpy((v32 + 16), v43, 0x98uLL);
    sub_1E3D5D1C8(v33, v44);
    sub_1E4203974();
    v34 = *(v6 + 16);
    v35 = v40;
    v34(v40, v18, v4);
    v36 = v41;
    v34(v41, v15, v4);
    v37 = v42;
    v34(v42, v35, v4);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32178);
    v34(&v37[*(v38 + 48)], v36, v4);
    v39 = *(v6 + 8);
    v39(v15, v4);
    v39(v18, v4);
    v39(v36, v4);
    v39(v35, v4);
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_1E3D5D5F8(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() sharedInstance];
  if (v2)
  {
    v3 = v2;
    sub_1E3741090(0xD000000000000025, 0x80000001E4268570, v2);
    v5 = v4;

    if (v5)
    {
      sub_1E32822E0();
      *a1 = sub_1E4202C44();
      *(a1 + 8) = v6;
      *(a1 + 16) = v7 & 1;
      *(a1 + 24) = v8;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1E3D5D71C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_1E3D5D75C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t objectdestroyTm_38()
{

  return swift_deallocObject();
}

void sub_1E3D5D8AC(void *a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_bannerView;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_bannerView;
  v6 = a1;
  OUTLINED_FUNCTION_5_0();
  v7 = *&v1[v5];
  if (v7)
  {
    if (v7 == v4)
    {
      goto LABEL_8;
    }

    if (!v4)
    {
      goto LABEL_7;
    }
  }

  else if (!v4)
  {
    goto LABEL_8;
  }

  [v4 removeFromSuperview];
  v7 = *&v1[v5];
  if (v7)
  {
LABEL_7:
    v8 = v7;
    v9 = [v1 vuiContentView];
    [v9 addSubview_];
  }

LABEL_8:
}

id sub_1E3D5D998()
{
  OUTLINED_FUNCTION_0_8();
  swift_getObjectType();
  *(v0 + OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_layout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_bannerView) = 0;
  OUTLINED_FUNCTION_5_160(&OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_transitionBackgroundView);
  v7 = v1;
  v2 = OUTLINED_FUNCTION_2_0();
  v5 = objc_msgSendSuper2(v3, v4, v2, v0, v7);
  [v5 setAutoresizingMask_];
  return v5;
}

void sub_1E3D5DA50()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_layout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_bannerView) = 0;
  OUTLINED_FUNCTION_5_160(&OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_transitionBackgroundView);
  sub_1E42076B4();
  __break(1u);
}

void sub_1E3D5DAF0(char a1, double a2)
{
  v3 = v2;
  if ((a1 & 1) == 0)
  {
    v16 = OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_layout;
    OUTLINED_FUNCTION_5_0();
    v17 = *&v3[v16];
    if (v17)
    {

      v18 = sub_1E37BD068();

      v20 = (*(*v18 + 936))(v19);

      if (v20 == 2)
      {
        LOBYTE(v17) = 0;
      }

      else
      {
        LOBYTE(v17) = v20 ^ 1;
      }
    }

    v21 = OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_bannerView;
    OUTLINED_FUNCTION_5_0();
    v22 = *&v3[v21];
    if (v22)
    {
      [v22 setIsDescriptionPreferredOnPhoneSizeClass_];
    }

    v23 = objc_opt_self();
    if (([v23 isPad] & 1) == 0 && !objc_msgSend(v23, sel_isMac))
    {
LABEL_74:
      v81 = [v3 vuiContentView];
      [v81 bounds];

      v82 = *&v3[v21];
      if (v82)
      {
        OUTLINED_FUNCTION_15_117(v82);
      }

      v83 = *&v3[OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_transitionBackgroundView];
      if (v83)
      {
        OUTLINED_FUNCTION_15_117(v83);
      }

      v3[OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_hasLayedOutSubviews] = 1;
      goto LABEL_79;
    }

    v24 = [v23 isMac];
    v25 = &OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_loadingViewController;
    v26 = &selRef_textLayout;
    if (!v24 || ((v27 = *&v3[OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_previousSize], v28 = *&v3[OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_previousSize + 8], OUTLINED_FUNCTION_26_9(), v27 == v30) ? (v31 = v28 == v29) : (v31 = 0), v31 || (v32 = *&v3[OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_bgImageViewModel]) == 0))
    {
LABEL_48:
      OUTLINED_FUNCTION_26_9();
      v62 = &v3[v25[405]];
      *v62 = v63;
      *(v62 + 1) = v64;
      v65 = OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_bannerView;
      OUTLINED_FUNCTION_5_0();
      v66 = *&v3[v65];
      if (v66)
      {
        v67 = v66;
        v68 = sub_1E3D603E8(v67);
        if (v68)
        {
          v69 = v68;
          v88 = v21;
          type metadata accessor for LayoutGrid();
          v70 = sub_1E3A2579C(a2);
          v71 = [v3 v26[437]];
          v72 = [v71 isAXEnabled];

          LOBYTE(v71) = sub_1E3A24FDC(v70);
          v73 = sub_1E32AE9B0(v69);
          v74 = v69 & 0xC000000000000001;
          if (v71 & 1) != 0 || (v72)
          {
            for (i = 0; v73 != i; ++i)
            {
              if (v74)
              {
                v79 = MEMORY[0x1E6911E60](i, v69);
              }

              else
              {
                if (i >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_88;
                }

                v79 = *(v69 + 8 * i + 32);
              }

              v80 = v79;
              if (__OFADD__(i, 1))
              {
                __break(1u);
LABEL_87:
                __break(1u);
LABEL_88:
                __break(1u);
LABEL_89:
                __break(1u);
                return;
              }

              if ([v79 vuiTextAlignment] != 1)
              {
                [v80 setVuiTextAlignment_];
              }
            }
          }

          else
          {
            for (j = 0; v73 != j; ++j)
            {
              if (v74)
              {
                v76 = MEMORY[0x1E6911E60](j, v69);
              }

              else
              {
                if (j >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_89;
                }

                v76 = *(v69 + 8 * j + 32);
              }

              v77 = v76;
              if (__OFADD__(j, 1))
              {
                goto LABEL_87;
              }

              if ([v76 vuiTextAlignment] != 4)
              {
                [v77 setVuiTextAlignment_];
              }
            }
          }
        }
      }

      goto LABEL_74;
    }

    OUTLINED_FUNCTION_26_9();
    Width = CGRectGetWidth(v89);
    OUTLINED_FUNCTION_26_9();
    CGRectGetHeight(v90);
    v34 = OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_layout;
    OUTLINED_FUNCTION_5_0();
    if (*&v3[v34])
    {

      v35 = [v3 vuiTraitCollection];
      sub_1E4041CF4(v35, Width);
    }

    type metadata accessor for LayoutGrid();
    v36 = sub_1E3A2579C(Width);
    v37 = *(*v32 + 392);

    v39 = v37(v38);

    if (v39)
    {
      type metadata accessor for ImageLayout();
      v40 = swift_dynamicCastClass();
      if (v40)
      {
        v41 = *(*v40 + 432);
        v42 = v40;

        v44 = v42;
        v45 = v41(v43);
        LOBYTE(v41) = v46;

        v31 = (v41 & 1) == 0;
        v26 = &selRef_textLayout;
        if (!v31)
        {
          v45 = 0x3FF0000000000000;
        }

LABEL_31:
        type metadata accessor for ChannelBannerLayout();
        sub_1E40420F0(v36, v45, 0);
        v49 = sub_1E3C3E520(v47, v48);
        v50 = OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_bannerView;
        OUTLINED_FUNCTION_5_0();
        v51 = *&v3[v50];
        if (v51)
        {
          v52 = [v51 bgImageView];
          if (v52)
          {
            v53 = v52;
            v54 = [v52 imageView];

            if (v54)
            {
              objc_opt_self();
              v55 = swift_dynamicCastObjCClass();
              if (v55)
              {
                v56 = v55;
                v88 = v44;
                v57 = v26;
                v58 = v49;
                v59 = [v56 imageProxy];
                v60 = v59;
                if (!v49)
                {
                  if (!v59)
                  {
                    v26 = v57;
                    v25 = &OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_loadingViewController;
                    goto LABEL_47;
                  }

                  swift_unknownObjectRelease();
                  v26 = v57;
                  v25 = &OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_loadingViewController;
                  goto LABEL_44;
                }

                if (v59)
                {

                  swift_unknownObjectRelease();
                  v31 = v49 == v60;
                  v26 = v57;
                  v25 = &OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_loadingViewController;
                  if (v31)
                  {
                    goto LABEL_45;
                  }

                  goto LABEL_44;
                }

                v26 = v57;
LABEL_43:

                v25 = &OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_loadingViewController;
LABEL_44:
                v56 = v56;
                [v56 setImageProxy_];

                v58 = v56;
LABEL_45:

LABEL_47:

                goto LABEL_48;
              }
            }
          }
        }

        v61 = v49;
        v56 = 0;
        if (!v49)
        {
          v25 = &OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_loadingViewController;
          goto LABEL_47;
        }

        v58 = v61;
        goto LABEL_43;
      }
    }

    v44 = 0;
    v45 = 0x3FF0000000000000;
    goto LABEL_31;
  }

  v5 = OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_bannerView;
  OUTLINED_FUNCTION_5_0();
  v6 = *&v3[v5];
  if (v6)
  {
    v7 = OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_layout;
    OUTLINED_FUNCTION_5_0();
    v8 = *&v3[v7];
    if (v8)
    {
      v9 = *(*v8 + 304);
      v10 = v6;

      v12 = v9(v11);
      v14 = v13;

      v15 = 0.0;
      if ((v14 & 1) == 0)
      {
        v15 = *&v12;
      }
    }

    else
    {
      v10 = v6;
      v15 = 0.0;
    }

    [v10 setHeight_];
  }

LABEL_79:
  v84 = OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_bannerView;
  OUTLINED_FUNCTION_15_0();
  if (*&v3[v84])
  {
    v85 = OUTLINED_FUNCTION_6_12();
    [v86 v87];
  }
}

uint64_t sub_1E3D5E300(unint64_t a1, void *a2)
{
  if (!a2)
  {
    result = sub_1E42076B4();
    __break(1u);
    return result;
  }

  v4 = a2;
  v5 = [v4 vuiContentView];
  [v5 bounds];

  v6 = OUTLINED_FUNCTION_5_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37EB8);
  sub_1E4148C68(sub_1E3D60384, v9, &v35);

  v10 = v35;
  v11 = v35;
  sub_1E3D5D8AC(v10);
  sub_1E3D5E6E4(a1);
  v12 = OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_transitionBackgroundView;
  if (!*&v4[OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_transitionBackgroundView])
  {
    v13 = OUTLINED_FUNCTION_6_40(objc_allocWithZone(MEMORY[0x1E69DD250]), sel_initWithFrame_);
    [v13 setAlpha_];
    [v13 setUserInteractionEnabled_];
    [v13 setBackgroundColor_];
    v14 = *&v4[OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_transitionBackgroundView];
    *&v4[OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_transitionBackgroundView] = v13;
    v15 = OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_transitionBackgroundView;
    v16 = *&v4[OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_transitionBackgroundView];
    v17 = v13;
    if (v16)
    {
      if (v16 == v14)
      {
        goto LABEL_9;
      }
    }

    else if (!v14)
    {
LABEL_9:

      goto LABEL_10;
    }

    [v14 removeFromSuperview];
    v18 = objc_opt_self();
    v19 = [v18 defaultCenter];
    v34 = *MEMORY[0x1E69DEA38];
    [v19 removeObserver:v4 name:? object:?];

    v20 = *&v4[v15];
    if (v20)
    {
      v21 = v20;
      v22 = [v4 contentView];
      [v22 addSubview_];

      v23 = [v18 defaultCenter];
      [v23 addObserver:v4 selector:sel_onSystemTraitCollectionDidChange_ name:v34 object:0];
    }

    goto LABEL_9;
  }

LABEL_10:
  v24 = [objc_opt_self() mainScreen];
  v25 = [v24 traitCollection];

  v26 = [v25 userInterfaceStyle];
  v27 = *&v4[v12];
  if (v27)
  {
    [v27 setOverrideUserInterfaceStyle_];
  }

  type metadata accessor for Accessibility();
  OUTLINED_FUNCTION_31_4();
  sub_1E40A8408();
  if (v29)
  {
    v30 = v28;
    v31 = v29;
    v32 = v4;
    sub_1E38E89A0(v30, v31, v32);
  }

  return a2;
}

void sub_1E3D5E6E4(unint64_t a1)
{
  v2 = v1;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v149 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v149 - v11;
  v13 = OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_bannerView;
  OUTLINED_FUNCTION_5_0();
  v14 = *(v2 + v13);
  if (!v14)
  {
    return;
  }

  v167 = v12;
  v168 = v10;
  v15 = *(*a1 + 392);
  v16 = v14;
  v17 = v15();
  if (!v17)
  {

    return;
  }

  v18 = v17;
  if (*v17 == _TtC8VideosUI19ChannelBannerLayout)
  {
    v19 = v17;
  }

  else
  {
    v19 = 0;
  }

  if (*v17 != _TtC8VideosUI19ChannelBannerLayout || (v169 = (*(*a1 + 464))()) == 0)
  {

LABEL_88:

    return;
  }

  v164 = v4;
  v20 = v16;
  [v20 bounds];
  Width = CGRectGetWidth(v186);
  v174 = v20;
  [v20 bounds];
  CGRectGetHeight(v187);
  type metadata accessor for LayoutGrid();
  v22 = sub_1E3A2579C(Width);
  type metadata accessor for ChannelBannerLayout();
  v23 = *sub_1E38A86A4();
  v24 = (*(v23 + 432))();
  v153 = v18;
  v26 = v25;

  sub_1E40420F0(v22, v24, v26 & 1);
  v28 = v27;
  v30 = v29;
  v31 = sub_1E38A86A4();
  (*(*v31 + 208))(v28, 0);

  v32 = sub_1E38A86A4();
  (*(*v32 + 312))(v30, 0);

  LOBYTE(v176) = 27;
  (*(*a1 + 776))(&v180, &v176, &unk_1F5D5DAC8, &off_1F5D5C998);
  if (v181[2])
  {
    swift_dynamicCast();
    OUTLINED_FUNCTION_22_73();
    if (v33)
    {
      v34 = sub_1E4205ED4();

      goto LABEL_15;
    }
  }

  else
  {
    sub_1E325F748(&v180, &unk_1ECF296E0);
    OUTLINED_FUNCTION_22_73();
  }

  v34 = 0;
LABEL_15:
  v159 = VUIUserInterfaceStyleFromTheme();

  v35 = MEMORY[0x1E69E7CC0];
  v179 = MEMORY[0x1E69E7CC0];
  v36 = v174;
  v37 = sub_1E3D603E8(v174);
  if (v37)
  {
    v38 = v37;
  }

  else
  {
    v38 = v35;
  }

  v160 = v38;
  v158 = [v36 bgImageView];
  if (!v158)
  {
    v158 = OUTLINED_FUNCTION_6_40(objc_allocWithZone(VUIProductUberBackgroundView), sel_initWithFrame_);
  }

  v39 = sub_1E32AE9B0(a1);
  if (!v39)
  {

    v118 = 0;
    v117 = 0;
    v119 = 0;
    v116 = 0;
    v115 = 0;
    v45 = MEMORY[0x1E69E7CC0];
    goto LABEL_72;
  }

  v41 = v39;
  v150 = v19;
  if (v39 < 1)
  {
    goto LABEL_92;
  }

  v171 = 0;
  v165 = 0;
  v170 = 0;
  v166 = 0;
  v42 = 0;
  v43 = 0;
  v154 = OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_bgImageViewModel;
  v175 = a1 & 0xC000000000000001;
  v44 = v160 & 0xFFFFFFFFFFFFFF8;
  v157 = v160 & 0xFFFFFFFFFFFFFF8;
  if (v160 < 0)
  {
    v44 = v160;
  }

  v149 = v44;
  v152 = v160 & 0xC000000000000001;
  v151 = v160 + 32;
  v162 = v6 + 16;
  v163 = v6 + 8;
  v45 = MEMORY[0x1E69E7CC0];
  *&v40 = 136315138;
  v155 = v40;
  v156 = v2;
  v161 = v39;
  while (2)
  {
    if (v175)
    {
      v46 = MEMORY[0x1E6911E60](v43, a1);
    }

    else
    {
      v46 = *(a1 + 8 * v43 + 32);
    }

    v47 = *(v46 + 98);
    switch(*(v46 + 98))
    {
      case 9:
        type metadata accessor for UIFactory();
        OUTLINED_FUNCTION_31_4();

        v48 = OUTLINED_FUNCTION_116_1();
        v50 = [v48 v49];
        v51 = OUTLINED_FUNCTION_9_5();
        sub_1E3280A90(v51, &qword_1EE23AE80);
        v176 = 0u;
        v177 = 0u;
        v178 = 0;
        v52 = OUTLINED_FUNCTION_0_228();
        sub_1E393D92C(v52, v53, v54, v55);
        OUTLINED_FUNCTION_31_4();

        sub_1E325F748(&v176, &qword_1ECF296C0);
        v56 = &v184;
        goto LABEL_50;
      case 0xA:
      case 0xC:
      case 0xE:
      case 0xF:
      case 0x10:
        goto LABEL_34;
      case 0xB:
        type metadata accessor for UIFactory();
        OUTLINED_FUNCTION_31_4();

        v74 = OUTLINED_FUNCTION_116_1();
        v76 = [v74 v75];
        v77 = OUTLINED_FUNCTION_9_5();
        sub_1E3280A90(v77, &qword_1EE23AD40);
        v176 = 0u;
        v177 = 0u;
        v178 = 0;
        v78 = OUTLINED_FUNCTION_0_228();
        sub_1E393D92C(v78, v79, v80, v81);
        OUTLINED_FUNCTION_31_4();

        sub_1E325F748(&v176, &qword_1ECF296C0);
        v56 = &v185;
        goto LABEL_50;
      case 0xD:
        v173 = v42;
        sub_1E324FBDC();
        OUTLINED_FUNCTION_21_83();
        v84 = OUTLINED_FUNCTION_13_125();
        v85(v84);

        v36 = sub_1E41FFC94();
        v86 = sub_1E4206814();

        if (os_log_type_enabled(v36, v86))
        {
          v35 = swift_slowAlloc();
          v87 = swift_slowAlloc();
          v172 = v45;
          v88 = v87;
          OUTLINED_FUNCTION_12_113(v87);
          sub_1E384EE08(13);
          v91 = sub_1E3270FC8(v89, v90, &v176);
          v2 = v156;

          *(v35 + 4) = v91;
          v41 = v161;
          _os_log_impl(&dword_1E323F000, v36, v86, "Channel banner view factory: unhandled type [%s]", v35, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v88);
          v45 = v172;
          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_6_0();
        }

        v92 = OUTLINED_FUNCTION_11_123();
        v93(v92);
        OUTLINED_FUNCTION_22_73();
        goto LABEL_48;
      case 0x11:
        if (v45 >> 62)
        {
          v36 = sub_1E4207384();
        }

        else
        {
          v36 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v160 >> 62)
        {
          v82 = sub_1E4207384();
        }

        else
        {
          v82 = *(v157 + 16);
        }

        if (v36 >= v82)
        {
          v110 = 0;
          goto LABEL_63;
        }

        if (v45 >> 62)
        {
          v83 = sub_1E4207384();
        }

        else
        {
          v83 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v152)
        {
          v111 = MEMORY[0x1E6911E60](v83, v160);
LABEL_62:
          v110 = v111;
LABEL_63:
          type metadata accessor for UIFactory();
          v112 = OUTLINED_FUNCTION_6_154();
          sub_1E3280A90(v112, &qword_1EE23AD40);

          v35 = sub_1E393D92C(v113, v110, &v176, 0);

          sub_1E325F748(&v176, &qword_1ECF296C0);
          if (v35)
          {
            v114 = v35;
            v36 = &v179;
            MEMORY[0x1E6910BF0]();
            v35 = *((v179 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v35 >= *((v179 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1E42062F4();
            }

            sub_1E4206324();

            v45 = v179;
          }

          else
          {
          }

LABEL_51:
          if (v41 == ++v43)
          {

            v115 = v42;
            v19 = v150;
            v116 = v166;
            v117 = v165;
            v118 = v171;
            v119 = v170;
LABEL_72:
            v120 = v174;
            v170 = v119;
            [v174 setDescriptionTextView:v149];
            v166 = v116;
            [v120 setSubscribeButton:v116];
            sub_1E3280A90(0, &qword_1EE23AD40);
            v172 = v45;
            v121 = sub_1E42062A4();
            [v120 setTextLabels:v121];

            v165 = v117;
            [v120 setAppleTVChannelLogoView:v117];
            v171 = v118;
            [v120 setDisclaimerTextLabel:v118];
            vtable = (*v19)[18].vtable;

            v124 = vtable(v123);
            [v120 setVuiBackgroundColor:v124];
            v125 = v158;
            [v125 setVuiBackgroundColor_];
            v126 = v115;
            [v125 setImageView_];
            [v125 setIsChannelBanner_];
            if (v115)
            {

              OUTLINED_FUNCTION_19_99();
              if (v128)
              {
                v129 = v127;
              }

              else
              {
                v129 = v127 + 1;
              }

              [v125 configureBlurWithInterfaceStyle_];
              [v125 setVuiBackgroundColor_];

              v130 = v174;
              [v174 setVuiBackgroundColor:0];
            }

            else
            {

              [v125 configureBlurWithInterfaceStyle_];
            }

            v131 = OUTLINED_FUNCTION_116_1();
            [v131 v132];
            if ([objc_opt_self() isSUIEnabled])
            {
              sub_1E4040D7C();
              OUTLINED_FUNCTION_30();
              (*(v133 + 304))();

              v134 = OUTLINED_FUNCTION_116_1();
              [v134 v135];
            }

            sub_1E4040D10();
            OUTLINED_FUNCTION_30();
            *&v137 = COERCE_DOUBLE((*(v136 + 304))());
            v139 = v138;

            v140 = *&v137;
            if (v139)
            {
              v140 = 0.0;
            }

            v141 = v174;
            *&v142 = COERCE_DOUBLE(((*v19)[7].vtable)([v174 setLogoHeight:v140]));
            v144 = v143;

            v145 = *&v142;
            if (v144)
            {
              v145 = 0.0;
            }

            [v141 setHeight:v145];
            OUTLINED_FUNCTION_19_99();
            if (v128)
            {
              v147 = v146;
            }

            else
            {
              v147 = v146 + 1;
            }

            [v141 vui_setOverrideUserInterfaceStyle:v147];

            v148 = OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_layout;
            swift_beginAccess();
            *(v2 + v148) = v19;
            goto LABEL_88;
          }

          continue;
        }

        if ((v83 & 0x8000000000000000) == 0)
        {
          if (v83 >= *(v157 + 16))
          {
            goto LABEL_91;
          }

          v111 = *(v151 + 8 * v83);
          goto LABEL_62;
        }

        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
        return;
      default:
        if (v47 != 39)
        {
          if (v47 == 59)
          {
            sub_1E3F86AA4(&v180);
            type metadata accessor for UIFactory();
            OUTLINED_FUNCTION_31_4();

            v94 = OUTLINED_FUNCTION_116_1();
            v35 = [v94 v95];
            *(&v177 + 1) = &type metadata for ButtonViewContext;
            v178 = &off_1F5D8FAD0;
            v96 = swift_allocObject();
            *&v176 = v96;
            *(v96 + 16) = v159;
            memcpy((v96 + 24), v181, 0x52uLL);
            sub_1E3280A90(0, &qword_1EE23AE80);
            v97 = OUTLINED_FUNCTION_0_228();
            sub_1E393D92C(v97, v98, v99, v100);
            OUTLINED_FUNCTION_31_4();

            sub_1E325F748(&v176, &qword_1ECF296C0);
            v56 = &v183;
          }

          else
          {
            if (v47 != 99)
            {
LABEL_34:
              v173 = v42;
              v172 = v45;
              sub_1E324FBDC();
              OUTLINED_FUNCTION_21_83();
              v65 = OUTLINED_FUNCTION_13_125();
              v66(v65);

              v36 = sub_1E41FFC94();
              v67 = sub_1E4206814();

              if (os_log_type_enabled(v36, v67))
              {
                v35 = swift_slowAlloc();
                v68 = swift_slowAlloc();
                OUTLINED_FUNCTION_12_113(v68);
                sub_1E384EE08(v47);
                v71 = sub_1E3270FC8(v69, v70, &v176);

                *(v35 + 4) = v71;
                v41 = v161;
                _os_log_impl(&dword_1E323F000, v36, v67, "Channel banner view factory: unhandled type [%s]", v35, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v68);
                v2 = v156;
                OUTLINED_FUNCTION_6_0();
                OUTLINED_FUNCTION_6_0();
              }

              v72 = OUTLINED_FUNCTION_11_123();
              v73(v72);
              OUTLINED_FUNCTION_22_73();
              v45 = v172;
LABEL_48:
              v42 = v173;
              goto LABEL_51;
            }

            type metadata accessor for UIFactory();
            OUTLINED_FUNCTION_31_4();

            v57 = OUTLINED_FUNCTION_116_1();
            v59 = [v57 v58];
            v60 = OUTLINED_FUNCTION_9_5();
            sub_1E3280A90(v60, &qword_1EE23AE80);
            v176 = 0u;
            v177 = 0u;
            v178 = 0;
            v61 = OUTLINED_FUNCTION_0_228();
            sub_1E393D92C(v61, v62, v63, v64);
            OUTLINED_FUNCTION_31_4();

            sub_1E325F748(&v176, &qword_1ECF296C0);
            v56 = &v182;
          }

LABEL_50:
          *(v56 - 32) = v36;
          goto LABEL_51;
        }

        v101 = v45;
        v102 = [v158 imageView];
        OUTLINED_FUNCTION_9_5();
        type metadata accessor for UIFactory();
        v103 = OUTLINED_FUNCTION_6_154();
        sub_1E3280A90(v103, &qword_1EE23AE80);

        v104 = v35;
        v105 = OUTLINED_FUNCTION_0_228();
        sub_1E393D92C(v105, v106, v107, v108);
        OUTLINED_FUNCTION_31_4();

        sub_1E325F748(&v176, &qword_1ECF296C0);
        type metadata accessor for ImageViewModel();
        v109 = swift_dynamicCastClass();
        if (!v109)
        {

          v109 = 0;
        }

        v45 = v101;
        *(v2 + v154) = v109;

        v42 = v36;
        v41 = v161;
        goto LABEL_51;
    }
  }
}

void sub_1E3D5F93C()
{
  sub_1E41FDF14();
  if (v7)
  {
    sub_1E3280A90(0, &qword_1EE23AD50);
    if (swift_dynamicCast())
    {
      v1 = *(v0 + OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_transitionBackgroundView);
      if (v1)
      {
        v2 = v1;
        v3 = [v5 traitCollection];
        v4 = [v3 userInterfaceStyle];

        [v2 setOverrideUserInterfaceStyle_];
      }
    }
  }

  else
  {
    sub_1E325F748(v6, &unk_1ECF296E0);
  }
}

BOOL sub_1E3D5FB18()
{
  v1 = OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_bannerView;
  OUTLINED_FUNCTION_15_0();
  v2 = *(v0 + v1);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [v3 bgImageView];
  v5 = v4 != 0;
  if (v4)
  {
    v6 = v4;
    v7 = [v4 imageView];

    v3 = v7;
    if (!v7)
    {
      return 0;
    }
  }

  return v5;
}

double sub_1E3D5FBC0()
{
  v1 = [v0 contentView];
  [v1 bounds];
  v3 = v2;

  if ((*(v0 + OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_hasLayedOutSubviews) & 1) == 0)
  {
    [v0 bounds];
    [v0 vui:CGRectGetWidth(v6) sizeThatFits:0.0];
    return v4;
  }

  return v3;
}

id sub_1E3D5FC5C(double a1, double a2)
{
  v5 = [v2 contentView];
  [v5 bounds];
  v7 = v6;

  v8 = OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_bannerView;
  OUTLINED_FUNCTION_15_0();
  v9 = *&v2[v8];
  if (v9)
  {
    [v9 topThreshold];
    v11 = v10 - a2;
    if (v11 < 0.0)
    {
      v12 = 0.0;
    }

    else
    {
      v12 = v11;
    }

    v9 = *&v2[v8];
  }

  else if (0.0 - a2 < 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = 0.0 - a2;
  }

  v13 = v7 - a2;
  v14 = (1.0 - a1) * v7;
  if (v9)
  {
    v15 = [v9 bgImageView];
    [v15 setImageOffset_];
  }

  v16 = *&v2[OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_transitionBackgroundView];
  v17 = (v14 - v12) / (v13 - v12);
  if (v16)
  {
    [v16 setAlpha_];
  }

  v18 = *&v2[v8];
  if (v18)
  {
    [v18 setAlpha_];
  }

  v19 = *sub_1E3E60700();
  v20 = objc_opt_self();
  v21 = v19;
  v22 = [v20 whiteColor];
  v23 = [v22 vui:v21 blendWithColor:v17 percentage:?];

  return v23;
}

void sub_1E3D5FE08(void *a1, double a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_bannerView;
  OUTLINED_FUNCTION_5_0();
  v7 = *&v3[v6];
  if (v7)
  {
    v8 = [v7 bgImageView];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 imageView];
      if (v10)
      {
        v11 = v10;
        objc_opt_self();
        v12 = swift_dynamicCastObjCClass();
        if (v12)
        {
          v13 = *&v3[OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_bgImageViewModel];
          if (v13)
          {
            v14 = v12;
            v15 = OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_layout;
            OUTLINED_FUNCTION_5_0();
            if (*&v3[v15])
            {

              v16 = [v3 vuiTraitCollection];
              v17 = OUTLINED_FUNCTION_6_12();
              sub_1E4041CF4(v18, v17);
            }

            else
            {
            }

            type metadata accessor for LayoutGrid();
            v19 = sub_1E3A2579C(a2);
            v20 = *(*v13 + 392);

            v22 = v20(v21);

            if (v22)
            {
              type metadata accessor for ImageLayout();
              if (swift_dynamicCastClass())
              {
                OUTLINED_FUNCTION_30();
                v24 = *(v23 + 432);

                v26 = v24(v25);
                LOBYTE(v24) = v27;

                if (v24)
                {
                  v26 = 0x3FF0000000000000;
                }

                goto LABEL_18;
              }
            }

            v26 = 0x3FF0000000000000;
LABEL_18:
            type metadata accessor for ChannelBannerLayout();
            OUTLINED_FUNCTION_6_12();
            sub_1E40420F0(v19, v26, 0);
            v30 = sub_1E3C3E520(v28, v29);
            v3[OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_isBackgroundTransitioning] = 1;
            v3[OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_isImageLoadedForBackgroundTransitioning] = 0;
            v31 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v32 = swift_allocObject();
            *(v32 + 16) = v31;
            *(v32 + 24) = v9;
            v45 = sub_1E3D60458;
            v46 = v32;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            v43 = sub_1E38B2C5C;
            v44 = &block_descriptor_103;
            v33 = _Block_copy(aBlock);
            v34 = v9;

            [v14 setImageProxy:v30 clearingExisting:0 completion:v33];
            _Block_release(v33);
            [v34 setMasksBlur_];
            v45 = nullsub_1;
            v46 = 0;
            aBlock[0] = MEMORY[0x1E69E9820];
            OUTLINED_FUNCTION_2_177();
            v43 = v35;
            v44 = &block_descriptor_6_3;
            v36 = _Block_copy(aBlock);
            v37 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v38 = swift_allocObject();
            *(v38 + 16) = v37;
            *(v38 + 24) = v34;
            v45 = sub_1E3D60518;
            v46 = v38;
            aBlock[0] = MEMORY[0x1E69E9820];
            OUTLINED_FUNCTION_2_177();
            v43 = v39;
            v44 = &block_descriptor_13_2;
            v40 = _Block_copy(aBlock);
            v41 = v34;

            [a1 animateAlongsideTransition:v36 completion:v40];
            _Block_release(v40);
            _Block_release(v36);

            v11 = v30;
            goto LABEL_19;
          }
        }
      }

      else
      {
        v11 = v9;
      }

LABEL_19:
    }
  }
}

id sub_1E3D60384@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(VUIChannelBannerView) initWithFrame_];
  *a1 = result;
  return result;
}

uint64_t sub_1E3D603E8(void *a1)
{
  v1 = [a1 textLabels];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1E3280A90(0, &qword_1EE23AD40);
  v3 = sub_1E42062B4();

  return v3;
}

void sub_1E3D60458()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_15_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if ((*(Strong + OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_isBackgroundTransitioning) & 1) == 0)
    {
      [v1 setMasksBlur_];
    }

    v3[OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_isImageLoadedForBackgroundTransitioning] = 1;
  }
}

uint64_t objectdestroy_2Tm_2()
{

  return swift_deallocObject();
}

void sub_1E3D60518()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_15_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    *(Strong + OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_isBackgroundTransitioning) = 0;
    if (*(Strong + OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_isImageLoadedForBackgroundTransitioning) == 1)
    {
      [v1 setMasksBlur_];
    }
  }
}

uint64_t sub_1E3D605D8(uint64_t a1, char a2)
{
  result = OUTLINED_FUNCTION_9_1();
  *v2 = a1;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1E3D60680(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  return *v2;
}

uint64_t sub_1E3D606C8(uint64_t a1, char a2)
{
  result = OUTLINED_FUNCTION_9_1();
  *v2 = a1;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1E3D60764()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI23LibMPEpisodeMediaEntity____lazy_storage___episodeNumber);
  if ((*(v0 + OBJC_IVAR____TtC8VideosUI23LibMPEpisodeMediaEntity____lazy_storage___episodeNumber + 9) & 1) == 0)
  {
    return *v1;
  }

  if ([*(v0 + OBJC_IVAR____TtC8VideosUI20LibMPBaseMediaEntity_mpMediaItem) valueForProperty_])
  {
    sub_1E4207264();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (!*(&v6 + 1))
  {
    sub_1E329505C(v7);
    goto LABEL_10;
  }

  if (!swift_dynamicCast())
  {
LABEL_10:
    result = 0;
    v3 = 1;
    goto LABEL_11;
  }

  v3 = 0;
  result = v4;
LABEL_11:
  *v1 = result;
  v1[8] = v3;
  v1[9] = 0;
  return result;
}

uint64_t sub_1E3D60868(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC8VideosUI23LibMPEpisodeMediaEntity____lazy_storage___episodeNumber;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  *(v3 + 9) = 0;
  return result;
}

uint64_t (*sub_1E3D60888(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  *a1 = sub_1E3D60764();
  *(a1 + 8) = v3 & 1;
  return sub_1E3D608D8;
}

uint64_t sub_1E3D608D8(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *(result + 16) + OBJC_IVAR____TtC8VideosUI23LibMPEpisodeMediaEntity____lazy_storage___episodeNumber;
  *v2 = *result;
  *(v2 + 8) = v1;
  return result;
}

double sub_1E3D60900@<D0>(uint64_t a1@<X8>)
{
  sub_1E3D60A78(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

void sub_1E3D60944(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v1 + OBJC_IVAR____TtC8VideosUI23LibMPEpisodeMediaEntity____lazy_storage____imageData;
  v5 = *(v1 + OBJC_IVAR____TtC8VideosUI23LibMPEpisodeMediaEntity____lazy_storage____imageData);
  v4 = *(v1 + OBJC_IVAR____TtC8VideosUI23LibMPEpisodeMediaEntity____lazy_storage____imageData + 8);
  v6 = *(v1 + OBJC_IVAR____TtC8VideosUI23LibMPEpisodeMediaEntity____lazy_storage____imageData + 16);
  v7 = *(v1 + OBJC_IVAR____TtC8VideosUI23LibMPEpisodeMediaEntity____lazy_storage____imageData + 24);
  v8 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v8;
  v9 = *(v3 + 32);
  *(v3 + 32) = v2;
  sub_1E37C52A4(v5, v4, v6, v7, v9);
}

void (*sub_1E3D60974(void *a1))(void ***a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  sub_1E3D60A78(v3);
  return sub_1E3D609D8;
}

void sub_1E3D609D8(void ***a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[5];
  v5 = **a1;
  v6 = v3[1];
  v7 = v3[2];
  v8 = v3[3];
  v9 = *(v3 + 32);
  v10 = &v4[OBJC_IVAR____TtC8VideosUI23LibMPEpisodeMediaEntity____lazy_storage____imageData];
  *v10 = v5;
  *(v10 + 1) = v6;
  *(v10 + 2) = v7;
  *(v10 + 3) = v8;
  v10[32] = v9;
  if (a2)
  {
    sub_1E37C5358(v5, v6, v7, v8, v9);
    OUTLINED_FUNCTION_7_38();
    sub_1E37C52B8(*v3, v3[1], v3[2], v3[3], *(v3 + 32));
  }

  else
  {
    OUTLINED_FUNCTION_7_38();
  }

  free(v3);
}

id sub_1E3D60A78@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC8VideosUI23LibMPEpisodeMediaEntity____lazy_storage____imageData;
  v4 = *(v1 + OBJC_IVAR____TtC8VideosUI23LibMPEpisodeMediaEntity____lazy_storage____imageData);
  v6 = v1 + OBJC_IVAR____TtC8VideosUI23LibMPEpisodeMediaEntity____lazy_storage____imageData + 8;
  v5 = *v6;
  v7 = *(v1 + OBJC_IVAR____TtC8VideosUI23LibMPEpisodeMediaEntity____lazy_storage____imageData + 16);
  v8 = *(v1 + OBJC_IVAR____TtC8VideosUI23LibMPEpisodeMediaEntity____lazy_storage____imageData + 24);
  v9 = v4;
  v10 = *v6;
  v11 = *(v1 + OBJC_IVAR____TtC8VideosUI23LibMPEpisodeMediaEntity____lazy_storage____imageData + 32);
  v12 = v7;
  v13 = v8;
  v14 = *(v1 + OBJC_IVAR____TtC8VideosUI23LibMPEpisodeMediaEntity____lazy_storage____imageData + 32);
  if (v11 == 254)
  {
    v22 = *(v1 + OBJC_IVAR____TtC8VideosUI23LibMPEpisodeMediaEntity____lazy_storage____imageData + 24);
    v23 = *(v1 + OBJC_IVAR____TtC8VideosUI23LibMPEpisodeMediaEntity____lazy_storage____imageData + 16);
    v24 = *(v1 + OBJC_IVAR____TtC8VideosUI23LibMPEpisodeMediaEntity____lazy_storage____imageData + 8);
    v25 = *(v1 + OBJC_IVAR____TtC8VideosUI23LibMPEpisodeMediaEntity____lazy_storage____imageData);
    v15 = *(v1 + OBJC_IVAR____TtC8VideosUI20LibMPBaseMediaEntity_mpMediaItem);
    v9 = [v15 screenshotArtworkCatalog];
    if (!v9)
    {
      v9 = [v15 artworkCatalog];
    }

    v27[0] = v9;
    memset(&v27[1], 0, 24);
    v28 = 0;
    v16 = *v3;
    v17 = *(v3 + 8);
    v19 = *(v3 + 16);
    v18 = *(v3 + 24);
    *v3 = v9;
    *(v6 + 8) = 0;
    *(v6 + 16) = 0;
    v20 = *(v3 + 32);
    *(v6 + 24) = 0;
    *v6 = 0;
    sub_1E37C5550(v27, v26);
    sub_1E37C52A4(v16, v17, v19, v18, v20);
    v10 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v5 = v24;
    v4 = v25;
    v8 = v22;
    v7 = v23;
  }

  result = sub_1E37C55C0(v4, v5, v7, v8, v11);
  *a1 = v9;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12;
  *(a1 + 24) = v13;
  *(a1 + 32) = v14;
  return result;
}

uint64_t sub_1E3D60C04(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC8VideosUI23LibMPEpisodeMediaEntity_seasonNumber;
  *v2 = 0;
  *(v2 + 8) = 1;
  v3 = v1 + OBJC_IVAR____TtC8VideosUI23LibMPEpisodeMediaEntity_fractionalEpisodeNumber;
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = v1 + OBJC_IVAR____TtC8VideosUI23LibMPEpisodeMediaEntity____lazy_storage___episodeNumber;
  *v4 = 0;
  *(v4 + 8) = 256;
  v5 = v1 + OBJC_IVAR____TtC8VideosUI23LibMPEpisodeMediaEntity____lazy_storage____imageData;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = -2;
  return sub_1E39D8938(a1);
}

uint64_t sub_1E3D60C84()
{
  v0 = sub_1E39D8B04();
  OUTLINED_FUNCTION_7_15(v0, OBJC_IVAR____TtC8VideosUI23LibMPEpisodeMediaEntity____lazy_storage____imageData);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

unint64_t sub_1E3D60DCC(uint64_t a1)
{
  result = sub_1E3D60DF4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E3D60DF4()
{
  result = qword_1ECF37EC0;
  if (!qword_1ECF37EC0)
  {
    type metadata accessor for LibMPEpisodeMediaEntity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF37EC0);
  }

  return result;
}

uint64_t type metadata accessor for LibMPEpisodeMediaEntity()
{
  result = qword_1EE298A80;
  if (!qword_1EE298A80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3D60F48(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC8VideosUI32PostPlayTemplateAttentionMonitor_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1E3D60FB4(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC8VideosUI32PostPlayTemplateAttentionMonitor_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return sub_1E3900F50;
}

char *sub_1E3D61040()
{
  *&v0[OBJC_IVAR____TtC8VideosUI32PostPlayTemplateAttentionMonitor_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v0[OBJC_IVAR____TtC8VideosUI32PostPlayTemplateAttentionMonitor_corrupted] = 0;
  v0[OBJC_IVAR____TtC8VideosUI32PostPlayTemplateAttentionMonitor_isRunning] = 0;
  v1 = OBJC_IVAR____TtC8VideosUI32PostPlayTemplateAttentionMonitor_awarenessClient;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x1E698D348]) init];
  v11.receiver = v0;
  v11.super_class = type metadata accessor for PostPlayTemplateAttentionMonitor();
  v2 = objc_msgSendSuper2(&v11, sel_init);
  v3 = *&v2[OBJC_IVAR____TtC8VideosUI32PostPlayTemplateAttentionMonitor_awarenessClient];
  sub_1E3280A90(0, &qword_1EE23B1D0);
  v4 = v2;
  v5 = v3;
  v6 = sub_1E4206A04();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10[4] = sub_1E3D611F4;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1E377674C;
  v10[3] = &block_descriptor_104;
  v8 = _Block_copy(v10);

  [v5 setEventHandlerWithQueue:v6 block:v8];
  _Block_release(v8);

  return v4;
}

void sub_1E3D611F4(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1E3D6124C(a1);
  }
}

void sub_1E3D6124C(void *a1)
{
  v2 = v1;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  v10 = (v8 - v9);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34[-1] - v12;
  if ((*(v2 + OBJC_IVAR____TtC8VideosUI32PostPlayTemplateAttentionMonitor_corrupted) & 1) == 0)
  {
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    v15 = sub_1E324FBDC();
    v16 = *(v6 + 16);
    if (v14)
    {
      v16(v13, v15, v4);
      v17 = sub_1E41FFC94();
      v18 = sub_1E4206814();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = OUTLINED_FUNCTION_125_0();
        *v19 = 0;
        _os_log_impl(&dword_1E323F000, v17, v18, "PostPlayTemplateAttentionMonitor::digitizer button keyboard attention event detected", v19, 2u);
        OUTLINED_FUNCTION_6_0();
      }

      v20 = (*(v6 + 8))(v13, v4);
      if ((*((*MEMORY[0x1E69E7D40] & *v2) + 0x70))(v20))
      {
        v22 = v21;
        ObjectType = swift_getObjectType();
        (*(v22 + 8))(ObjectType, v22);
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v16(v10, v15, v4);
      v24 = a1;
      v25 = sub_1E41FFC94();
      v26 = sub_1E4206814();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v35 = v28;
        *v27 = 136315138;
        v34[3] = sub_1E3280A90(0, &qword_1ECF37ED8);
        v34[0] = v24;
        v29 = v24;
        v30 = sub_1E3294FA4(v34);
        v32 = sub_1E3270FC8(v30, v31, &v35);

        *(v27 + 4) = v32;
        _os_log_impl(&dword_1E323F000, v25, v26, "PostPlayTemplateAttentionMonitor::attention event detected: %s", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v28);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_65_0();
      }

      (*(v6 + 8))(v10, v4);
    }
  }
}

uint64_t sub_1E3D61584()
{
  v50[9] = *MEMORY[0x1E69E9840];
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_6();
  v48 = (v5 - v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_161();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v45 - v9;
  v11 = sub_1E324FBDC();
  v12 = *(v3 + 16);
  v12(v10, v11, v1);
  v13 = sub_1E41FFC94();
  v14 = sub_1E4206814();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = OUTLINED_FUNCTION_125_0();
    *v15 = 0;
    _os_log_impl(&dword_1E323F000, v13, v14, "PostPlayTemplateAttentionMonitor::start awareness", v15, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  v16 = *(v3 + 8);
  v16(v10, v1);
  v17 = OBJC_IVAR____TtC8VideosUI32PostPlayTemplateAttentionMonitor_isRunning;
  if (*(v49 + OBJC_IVAR____TtC8VideosUI32PostPlayTemplateAttentionMonitor_isRunning) == 1)
  {
    v12(v0, v11, v1);
    v18 = sub_1E41FFC94();
    v19 = sub_1E4206814();
    if (os_log_type_enabled(v18, v19))
    {
      *OUTLINED_FUNCTION_125_0() = 0;
      OUTLINED_FUNCTION_5_20(&dword_1E323F000, v20, v21, "PostPlayTemplateAttentionMonitor::has been running");
      OUTLINED_FUNCTION_65_0();
    }

    v16(v0, v1);
    return 1;
  }

  else if (*(v49 + OBJC_IVAR____TtC8VideosUI32PostPlayTemplateAttentionMonitor_corrupted))
  {
    return 0;
  }

  else
  {
    v46 = v16;
    v47 = OBJC_IVAR____TtC8VideosUI32PostPlayTemplateAttentionMonitor_corrupted;
    v23 = [objc_allocWithZone(MEMORY[0x1E698D350]) init];
    v24 = [objc_opt_self() mainBundle];
    v25 = sub_1E3ABF2D0(v24);
    sub_1E414A7F4(v25, v26);

    v27 = sub_1E4205ED4();
    v28 = v49;

    [v23 setIdentifier_];

    [v23 setEventMask_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37ED0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4297BE0;
    *(inited + 32) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    *(inited + 64) = sub_1E41FE5D4();
    __swift_allocate_boxed_opaque_existential_1((inited + 40));
    sub_1E41FE5C4();
    sub_1E3280A90(0, &qword_1EE23ADD0);
    sub_1E3D61F1C();
    v30 = sub_1E4205CB4();
    sub_1E3D61F84(v30, v23);
    v31 = *(v28 + OBJC_IVAR____TtC8VideosUI32PostPlayTemplateAttentionMonitor_awarenessClient);
    v22 = 1;
    [v31 setConfiguration:v23 shouldReset:1];
    v50[0] = 0;
    if ([v31 resumeWithError_])
    {
      v32 = v50[0];

      *(v28 + v17) = 1;
    }

    else
    {
      v33 = v50[0];
      v34 = sub_1E41FE274();

      swift_willThrow();
      v35 = v48;
      v12(v48, v11, v1);
      v36 = v34;
      v37 = sub_1E41FFC94();
      v38 = sub_1E42067F4();

      v39 = v37;
      if (os_log_type_enabled(v37, v38))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        *v40 = 138412290;
        v42 = v34;
        v43 = _swift_stdlib_bridgeErrorToNSError();
        *(v40 + 4) = v43;
        *v41 = v43;
        _os_log_impl(&dword_1E323F000, v39, v38, "PostPlayTemplateAttentionMonitor::failed to resume awareness with %@", v40, 0xCu);
        sub_1E3A66B00(v41);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_65_0();
      }

      else
      {
      }

      v46(v35, v1);
      v22 = 0;
      *(v49 + v47) = 1;
    }
  }

  return v22;
}

id sub_1E3D61AEC()
{
  v2 = v0;
  v41[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v39 = (v7 - v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_161();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v38 - v11;
  v13 = sub_1E324FBDC();
  v14 = *(v5 + 16);
  v40 = v3;
  v14(v12, v13, v3);
  v15 = sub_1E41FFC94();
  v16 = sub_1E4206814();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = OUTLINED_FUNCTION_125_0();
    *v17 = 0;
    _os_log_impl(&dword_1E323F000, v15, v16, "PostPlayTemplateAttentionMonitor::stop awareness", v17, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  v18 = *(v5 + 8);
  v19 = v40;
  result = v18(v12, v40);
  v21 = OBJC_IVAR____TtC8VideosUI32PostPlayTemplateAttentionMonitor_isRunning;
  if (*(v2 + OBJC_IVAR____TtC8VideosUI32PostPlayTemplateAttentionMonitor_isRunning))
  {
    v22 = OBJC_IVAR____TtC8VideosUI32PostPlayTemplateAttentionMonitor_corrupted;
    if ((*(v2 + OBJC_IVAR____TtC8VideosUI32PostPlayTemplateAttentionMonitor_corrupted) & 1) == 0)
    {
      v23 = *(v2 + OBJC_IVAR____TtC8VideosUI32PostPlayTemplateAttentionMonitor_awarenessClient);
      v41[0] = 0;
      if ([v23 suspendWithError_])
      {
        result = v41[0];
      }

      else
      {
        v38 = v22;
        v28 = v41[0];
        v29 = sub_1E41FE274();

        swift_willThrow();
        v14(v39, v13, v40);
        v30 = v29;
        v31 = sub_1E41FFC94();
        v32 = sub_1E42067F4();

        v33 = v31;
        if (os_log_type_enabled(v31, v32))
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          *v34 = 138412290;
          v36 = v29;
          v37 = _swift_stdlib_bridgeErrorToNSError();
          *(v34 + 4) = v37;
          *v35 = v37;
          _os_log_impl(&dword_1E323F000, v33, v32, "PostPlayTemplateAttentionMonitor::failed to suspend awareness with %@", v34, 0xCu);
          sub_1E3A66B00(v35);
          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_6_0();
        }

        else
        {
        }

        result = v18(v39, v40);
        *(v2 + v38) = 1;
      }

      *(v2 + v21) = 0;
    }
  }

  else
  {
    v14(v1, v13, v19);
    v24 = sub_1E41FFC94();
    v25 = sub_1E4206814();
    if (os_log_type_enabled(v24, v25))
    {
      *OUTLINED_FUNCTION_125_0() = 0;
      OUTLINED_FUNCTION_5_20(&dword_1E323F000, v26, v27, "PostPlayTemplateAttentionMonitor::has been stopped");
      OUTLINED_FUNCTION_65_0();
    }

    return v18(v1, v19);
  }

  return result;
}

id sub_1E3D61E9C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PostPlayTemplateAttentionMonitor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1E3D61F1C()
{
  result = qword_1EE23ADC8;
  if (!qword_1EE23ADC8)
  {
    sub_1E3280A90(255, &qword_1EE23ADD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE23ADC8);
  }

  return result;
}

void sub_1E3D61F84(uint64_t a1, void *a2)
{
  sub_1E3280A90(0, &qword_1EE23ADD0);
  sub_1E3D61F1C();
  v3 = sub_1E4205C44();

  [a2 setAttentionLostTimeoutDictionary_];
}

void sub_1E3D62028()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_70_0();
  v5 = sub_1E4201274();
  OUTLINED_FUNCTION_0_10();
  v73 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33D80);
  v12 = OUTLINED_FUNCTION_17_2(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  v67 = v13 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v61 - v16;
  v18 = type metadata accessor for OrdinalLockup(0);
  v19 = *(v18 + 36);
  *(v0 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  swift_storeEnumTagMultiPayload();
  v72 = v18;
  v20 = *(v18 + 44);
  v66 = objc_opt_self();
  v21 = [v66 blackColor];
  v70 = v20;
  v68 = v21;
  *(v0 + v20) = v21;
  *v0 = v4;
  memcpy(v76, v2, sizeof(v76));
  memcpy(v75, (v2 + 89), sizeof(v75));
  memcpy(v77, v2, 0x58uLL);
  v77[88] = 1;
  memcpy(&v77[89], (v2 + 89), 0x6AuLL);
  memcpy((v0 + 16), v77, 0xC3uLL);
  v22 = *(*v4 + 392);

  sub_1E375C1CC(v2, v74);
  v23 = sub_1E375C1CC(v77, v74);
  if (v22(v23))
  {
    type metadata accessor for OrdinalLockupCellLayout();
    OUTLINED_FUNCTION_20_2();
    v24 = swift_dynamicCastClass();
    if (v24)
    {
      goto LABEL_5;
    }
  }

  type metadata accessor for OrdinalLockupCellLayout();
  v24 = sub_1E3EA6698(0);
LABEL_5:
  *(v0 + 8) = v24;
  v25 = sub_1E4200B44();
  v26 = __swift_storeEnumTagSinglePayload(v17, 1, 1, v25);
  v27 = (*v4 + 488);
  v71 = *v27;
  v28 = (v71)(v26);
  if (v28)
  {
    v69 = v27;
    v29 = sub_1E373E010(39, v28);

    if (v29)
    {
      v65 = v5;
      type metadata accessor for ImageViewModel();
      if (swift_dynamicCastClass())
      {
        v61 = v25;
        v62 = v10;
        OUTLINED_FUNCTION_26_0();
        v30 += 49;
        v31 = *v30;
        v32 = v30;

        v63 = v32;
        v64 = v31;
        if ((v31)(v33))
        {
          OUTLINED_FUNCTION_26_0();
          v35 = (*(v34 + 1560))();
        }

        else
        {
          v35 = 7;
        }

        j__OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_66_3();
        v38 = (*(v36 + 1048))(v35, v37 & 1);
        v10 = v62;
        if (v38)
        {
          v39 = v38;
        }

        else
        {
          v39 = [v66 blackColor];
          v38 = 0;
        }

        v66 = v38;

        *(v0 + v70) = v39;
        if (v64())
        {
          OUTLINED_FUNCTION_26_0();
          v41 = (*(v40 + 1560))();
        }

        else
        {
          v41 = 7;
        }

        OUTLINED_FUNCTION_66_3();
        LODWORD(v70) = (*(v42 + 1040))(v41);
        v43 = v64();

        if (v43)
        {
          OUTLINED_FUNCTION_8();
          v45 = (*(v44 + 1560))();
        }

        else
        {
          v45 = 7;
        }

        OUTLINED_FUNCTION_66_3();
        v47 = (*(v46 + 1032))(v45);
        v49 = v48;

        if ((v49 & 1) == 0)
        {
          v50 = OUTLINED_FUNCTION_146();
          sub_1E325F6F0(v50, v51);
          v52 = v61;
          v53 = MEMORY[0x1E697DBA8];
          if (v47 != 2)
          {
            v53 = MEMORY[0x1E697DBB8];
          }

          v54 = v67;
          (*(*(v61 - 8) + 104))(v67, *v53, v61);
          __swift_storeEnumTagSinglePayload(v54, 0, 1, v52);
          sub_1E3741EA0(v54, v17, &qword_1ECF33D80);
        }
      }

      else
      {

        LODWORD(v70) = 0;
      }

      v5 = v65;
    }

    else
    {
      LODWORD(v70) = 0;
    }
  }

  else
  {
    LODWORD(v70) = 0;
  }

  sub_1E3743538(v17, v0 + *(v72 + 40), &qword_1ECF33D80);
  type metadata accessor for ContextMenuModel();

  v55 = sub_1E3E6CDBC();
  v57 = *v55;
  v56 = v55[1];
  v74[0] = v57;
  v74[1] = v56;

  sub_1E4207414();
  (*(v73 + 104))(v10, *MEMORY[0x1E697E660], v5);
  *(v0 + 216) = sub_1E4188148(v4, v10);
  v58 = v71();

  if (!v58)
  {
    sub_1E37E6F2C(v2);
    sub_1E325F6F0(v17, &qword_1ECF33D80);
    memcpy(v74, v76, 0x58uLL);
    OUTLINED_FUNCTION_65_24();
    sub_1E37E6F2C(v74);
    goto LABEL_32;
  }

  v59 = sub_1E373E010(13, v58);

  sub_1E37E6F2C(v2);
  sub_1E325F6F0(v17, &qword_1ECF33D80);
  memcpy(v74, v76, 0x58uLL);
  OUTLINED_FUNCTION_65_24();
  sub_1E37E6F2C(v74);
  if (!v59)
  {
LABEL_32:
    v60 = 0;
    goto LABEL_33;
  }

  v60 = v70 ^ 1;
LABEL_33:
  *(v0 + 224) = v60 & 1;
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3D627E4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v71 = type metadata accessor for OrdinalLockupCardBody(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v66 = (v4 - v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37EE0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_44();
  v70 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37EE8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  v72 = v8;
  v9 = OUTLINED_FUNCTION_138();
  v69 = type metadata accessor for OrdinalLockupAXCardBody(v9);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v65 = (v12 - v11);
  v13 = OUTLINED_FUNCTION_138();
  v76 = type metadata accessor for OrdinalListLockup(v13);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v68 = (v16 - v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37EF0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_44();
  v77 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37EF8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_44();
  v74 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37F00);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_44();
  v75 = v22;
  v23 = OUTLINED_FUNCTION_138();
  v73 = type metadata accessor for OrdinalAXListLockup(v23);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5();
  v67 = (v26 - v25);
  OUTLINED_FUNCTION_138();
  sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5();
  v30 = v29 - v28;
  v31 = v0[1];
  v32 = *(*v31 + 2304);
  if (v32())
  {
    v33 = type metadata accessor for OrdinalLockup(0);
    sub_1E3746E10(v30);
    v34 = sub_1E3B0352C();
    v35 = OUTLINED_FUNCTION_119_0();
    v36(v35);
    if (v34)
    {
      v37 = *v1;
      memcpy(v78, v1 + 2, sizeof(v78));
      sub_1E3743538(v1 + *(v33 + 40), v67 + *(v73 + 28), &qword_1ECF33D80);
      *v67 = v37;
      v67[1] = v31;
      OUTLINED_FUNCTION_78_18(v67 + 2);
      v38 = type metadata accessor for OrdinalAXListLockup;
      sub_1E3D67368(v67, v74, type metadata accessor for OrdinalAXListLockup);
      swift_storeEnumTagMultiPayload();

      OUTLINED_FUNCTION_80_16();
      OUTLINED_FUNCTION_28_63();
      sub_1E3D67140(&unk_1EE28C4A0);
      OUTLINED_FUNCTION_23_75();
      sub_1E3D67140(&unk_1EE28C4A8);
      sub_1E4201F44();
      sub_1E3743538(v75, v77, &qword_1ECF37F00);
      swift_storeEnumTagMultiPayload();
      sub_1E3D67180();
      sub_1E3D67274();
      sub_1E4201F44();
      v39 = OUTLINED_FUNCTION_119_0();
      sub_1E325F6F0(v39, v40);
      v41 = v67;
LABEL_9:
      v49 = v38;
      goto LABEL_10;
    }
  }

  if ((v32() & 1) == 0)
  {
    v50 = type metadata accessor for OrdinalLockup(0);
    sub_1E3746E10(v30);
    v51 = sub_1E3B0352C();
    v52 = OUTLINED_FUNCTION_119_0();
    v53(v52);
    v54 = *v1;
    OUTLINED_FUNCTION_68_25();
    if (v51)
    {
      v55 = v1[27];
      sub_1E3743538(v1 + *(v50 + 40), v65 + *(v69 + 32), &qword_1ECF33D80);
      v56 = *(v1 + 224);
      *v65 = v54;
      v65[1] = v31;
      OUTLINED_FUNCTION_78_18(v65 + 2);
      v65[27] = v55;
      *(v65 + *(v69 + 36)) = v56;
      v38 = type metadata accessor for OrdinalLockupAXCardBody;
      sub_1E3D67368(v65, v70, type metadata accessor for OrdinalLockupAXCardBody);
      swift_storeEnumTagMultiPayload();

      OUTLINED_FUNCTION_80_16();
      OUTLINED_FUNCTION_25_75();
      sub_1E3D67140(&_MergedGlobals_234);
      OUTLINED_FUNCTION_24_78();
      sub_1E3D67140(&unk_1EE28C498);

      sub_1E4201F44();
      v57 = OUTLINED_FUNCTION_50_39();
      sub_1E3743538(v57, v58, &qword_1ECF37EE8);
      swift_storeEnumTagMultiPayload();
      sub_1E3D67180();
      sub_1E3D67274();
      OUTLINED_FUNCTION_35_54();
      sub_1E325F6F0(v72, &qword_1ECF37EE8);
      v41 = v65;
    }

    else
    {
      v59 = v1[27];
      sub_1E3743538(v1 + *(v50 + 40), v66 + *(v71 + 32), &qword_1ECF33D80);
      v60 = *(v1 + 224);
      *v66 = v54;
      v66[1] = v31;
      OUTLINED_FUNCTION_78_18(v66 + 2);
      v66[27] = v59;
      *(v66 + *(v71 + 36)) = v60;
      v38 = type metadata accessor for OrdinalLockupCardBody;
      sub_1E3D67368(v66, v70, type metadata accessor for OrdinalLockupCardBody);
      swift_storeEnumTagMultiPayload();

      OUTLINED_FUNCTION_80_16();
      OUTLINED_FUNCTION_25_75();
      sub_1E3D67140(&_MergedGlobals_234);
      OUTLINED_FUNCTION_24_78();
      sub_1E3D67140(&unk_1EE28C498);

      sub_1E4201F44();
      v61 = OUTLINED_FUNCTION_50_39();
      sub_1E3743538(v61, v62, &qword_1ECF37EE8);
      swift_storeEnumTagMultiPayload();
      sub_1E3D67180();
      sub_1E3D67274();
      OUTLINED_FUNCTION_35_54();
      v63 = OUTLINED_FUNCTION_119_0();
      sub_1E325F6F0(v63, v64);
      v41 = v66;
    }

    goto LABEL_9;
  }

  v42 = *v1;
  OUTLINED_FUNCTION_68_25();
  v43 = v1[27];
  v44 = v1 + *(type metadata accessor for OrdinalLockup(0) + 40);
  sub_1E3743538(v44, v68 + *(v76 + 32), &qword_1ECF33D80);
  *v68 = v42;
  v68[1] = v31;
  OUTLINED_FUNCTION_78_18(v68 + 2);
  v68[27] = v43;
  v45 = *(v76 + 36);
  *(v68 + v45) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  swift_storeEnumTagMultiPayload();
  sub_1E3D67368(v68, v74, type metadata accessor for OrdinalListLockup);
  swift_storeEnumTagMultiPayload();

  OUTLINED_FUNCTION_80_16();
  OUTLINED_FUNCTION_28_63();
  sub_1E3D67140(&unk_1EE28C4A0);
  OUTLINED_FUNCTION_23_75();
  sub_1E3D67140(&unk_1EE28C4A8);

  sub_1E4201F44();
  OUTLINED_FUNCTION_50_39();
  OUTLINED_FUNCTION_38_2();
  sub_1E3743538(v46, v47, v48);
  swift_storeEnumTagMultiPayload();
  sub_1E3D67180();
  sub_1E3D67274();
  OUTLINED_FUNCTION_35_54();
  sub_1E325F6F0(v75, &qword_1ECF37F00);
  v41 = v68;
  v49 = type metadata accessor for OrdinalListLockup;
LABEL_10:
  sub_1E3D673C4(v41, v49);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3D631A0()
{
  OUTLINED_FUNCTION_93();
  v3 = v0;
  v58 = v4;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37FC0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_26_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37FC8);
  OUTLINED_FUNCTION_0_10();
  v53 = v6;
  v54 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_20_1();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37FD0);
  OUTLINED_FUNCTION_0_10();
  v55 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44();
  v50 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37FD8);
  OUTLINED_FUNCTION_0_10();
  v56 = v13;
  v57 = v12;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_44();
  v51 = v15;
  v16 = *v0;
  memcpy(v61, v3 + 2, 0xC3uLL);
  v17 = v3[1];
  *v1 = v16;
  memcpy(v1 + 1, v3 + 2, 0xC3uLL);
  v1[26] = v17;
  v18 = *(type metadata accessor for OrdinalLockupImage(0) + 28);
  *(v1 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  OUTLINED_FUNCTION_44_45();
  v19 = type metadata accessor for OrdinalLockupCardBody(0);
  v20 = *(v19 + 32);
  v21 = (v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37FE0) + 36));
  v22 = type metadata accessor for OrdinalLockupGradient(0);
  sub_1E3743538(v3 + v20, v21 + *(v22 + 20), &qword_1ECF33D80);
  v23 = *(v3 + *(v19 + 36));
  *v21 = v17;
  *(v21 + *(v22 + 24)) = v23;
  swift_retain_n();

  sub_1E375C1CC(v61, v59);
  v24 = sub_1E4203DA4();
  v26 = v25;
  v27 = (v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37FE8) + 36));
  *v27 = v24;
  v27[1] = v26;
  v28 = sub_1E4203DA4();
  v30 = v29;
  v31 = v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37FF0) + 36);
  sub_1E3D63724();
  v32 = &v31[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37FF8) + 36)];
  *v32 = v28;
  v32[1] = v30;
  v33 = sub_1E4203D44();
  v34 = (v1 + *(v49 + 36));
  *v34 = v16;
  v34[1] = v17;
  v34[2] = v33;
  v34[3] = v35;
  v36 = *(**(v17 + 112) + 552);

  v36(v59, v37);

  if (v60)
  {
    v38 = 0.0;
  }

  else
  {
    v38 = *v59;
  }

  v39 = sub_1E3D67CC4();
  sub_1E391F8C0(v49, v39, v38);
  sub_1E325F6F0(v1, &qword_1ECF37FC0);
  v40 = v3[27];
  OUTLINED_FUNCTION_10_6();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1E4187EA8(v40, v53, OpaqueTypeConformance2);
  (*(v54 + 8))(v2, v53);
  OUTLINED_FUNCTION_3_8();
  v42 = swift_getOpaqueTypeConformance2();
  v43 = j__OUTLINED_FUNCTION_18();
  LOBYTE(OpaqueTypeConformance2) = j__OUTLINED_FUNCTION_18();
  v44 = OUTLINED_FUNCTION_51_1();
  sub_1E383F6D4(v17, v43 & 1, OpaqueTypeConformance2 & 1, 0, v44 & 1, v52, v42);
  (*(v55 + 8))(v50, v52);
  v45 = (v58 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38008) + 36));
  v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF291E0) + 28);
  v47 = *MEMORY[0x1E697DBA8];
  sub_1E4200B44();
  OUTLINED_FUNCTION_2();
  (*(v48 + 104))(v45 + v46, v47);
  *v45 = swift_getKeyPath();
  (*(v56 + 32))(v58, v51, v57);
  OUTLINED_FUNCTION_54_0();
}