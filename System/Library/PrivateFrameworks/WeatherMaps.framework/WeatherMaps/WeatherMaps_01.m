id sub_220E311F4()
{
  if (sub_220E3070C())
  {
    sub_220E30510();
    v0 = sub_220FC2A00();

    return v0;
  }

  else
  {
    v2 = [objc_opt_self() clearColor];

    return v2;
  }
}

void sub_220E312A4()
{
  v0 = sub_220FBB0A8();
  v1 = 0;
  v2 = *(v0 + 16);
  v3 = MEMORY[0x277D84F90];
LABEL_2:
  v4 = 56 * v1;
  while (1)
  {
    if (v2 == v1)
    {
      v17 = v3[2];

      if (v17 < 2)
      {

        OUTLINED_FUNCTION_3_0();

        sub_220E30510();
        return;
      }

      v18 = 0;
      v19 = 0;
      v20 = (v17 - 1);
      v21 = MEMORY[0x277D84F90];
      v22 = 0.0;
      v23 = 0.0;
LABEL_13:
      v40 = v18;
      for (i = v19; ; ++i)
      {
        v25 = v0 + 56 + 56 * i;
        for (j = 56 * i + 96; ; j += 56)
        {
          if (v2 == i)
          {
            goto LABEL_47;
          }

          if (i >= *(v0 + 16))
          {
            __break(1u);
LABEL_49:
            __break(1u);
            return;
          }

          v27 = *(v25 - 16);
          sub_220E31740();

          swift_bridgeObjectRetain_n();
          v28 = sub_220FC3220();
          v29 = sub_220FC3210();

          if (v27)
          {

            v3 = v29;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_1_6();
              v21 = v37;
            }

            v33 = *(v21 + 24);
            if (*(v21 + 16) >= v33 >> 1)
            {
              OUTLINED_FUNCTION_0_1(v33);
              sub_220F36E74();
              v21 = v38;
            }

            v22 = v40 / v20;
            OUTLINED_FUNCTION_2_6();
            v18 = v40 + 1;
            if (__OFADD__(v40, 1))
            {
              goto LABEL_49;
            }

            v19 = i + 1;
            v34 = *(v0 + 16);
            if (i + 1 >= v34)
            {
              goto LABEL_46;
            }

            for (k = i + 1; ; ++k)
            {
              if (k >= v34)
              {
                k = *(v0 + 16);
                goto LABEL_37;
              }

              if (*(v0 + j))
              {
                break;
              }

              j += 56;
            }

            if (v34 != k)
            {

              goto LABEL_40;
            }

LABEL_37:
            v36 = *(v0 - 16 + 56 * v34);

            if (!v36)
            {
              goto LABEL_47;
            }

LABEL_40:
            if ((k - i) >= 1)
            {
              v23 = 1.0 / (v20 * (k - i));
              v19 = i + 1;
            }

            goto LABEL_13;
          }

          if (v23 > 0.0)
          {
            break;
          }

          v25 += 56;
          ++i;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_1_6();
          v21 = v31;
        }

        v30 = *(v21 + 24);
        if (*(v21 + 16) >= v30 >> 1)
        {
          OUTLINED_FUNCTION_0_1(v30);
          sub_220F36E74();
          v21 = v32;
        }

        v22 = v22 + v23;
        OUTLINED_FUNCTION_2_6();
      }
    }

    if (v1 >= *(v0 + 16))
    {
      break;
    }

    ++v1;
    v5 = v4 + 56;
    v6 = *(v0 + v4 + 40);
    v4 += 56;
    if (v6)
    {
      v7 = *(v0 + v5 - 24);
      v8 = *(v0 + v5 - 8);
      v9 = *(v0 + v5);
      v10 = *(v0 + v5 + 8);
      v11 = *(v0 + v5 + 16);
      v12 = *(v0 + v5 + 24);

      v41 = v12;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_220F0B140(0, v3[2] + 1, 1);
      }

      v14 = v3[2];
      v13 = v3[3];
      if (v14 >= v13 >> 1)
      {
        v16 = OUTLINED_FUNCTION_0_1(v13);
        sub_220F0B140(v16, v14 + 1, 1);
      }

      v3[2] = v14 + 1;
      v15 = &v3[7 * v14];
      v15[4] = v7;
      v15[5] = v6;
      v15[6] = v8;
      v15[7] = v9;
      v15[8] = v10;
      v15[9] = v11;
      *(v15 + 80) = v41;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_46:

LABEL_47:

  OUTLINED_FUNCTION_3_0();
}

double Double.normalize(range:)(double a1, double a2, double a3)
{
  if (a1 > a3)
  {
    a3 = a1;
  }

  if (a3 >= a2)
  {
    a3 = a2;
  }

  return (a3 - a1) / (a2 - a1);
}

uint64_t sub_220E316F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = (*(v2 + 16))(*(a1 + 8), *a1);
  *a2 = v5;
  a2[1] = result;
  return result;
}

unint64_t sub_220E31740()
{
  result = qword_2812C5B58;
  if (!qword_2812C5B58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2812C5B58);
  }

  return result;
}

uint64_t sub_220E317E0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 97))
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

uint64_t sub_220E31820(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_220E3188C(unsigned __int8 *__src, unsigned __int8 *a2)
{
  memcpy(v8, __src, sizeof(v8));
  v4 = __src[96];
  memcpy(__dst, a2, sizeof(__dst));
  v5 = a2[96];
  if ((sub_220FBB128(v8, __dst) & 1) == 0)
  {
    return 0;
  }

  if (v4 == 5)
  {
    if (v5 == 5)
    {
      return 1;
    }
  }

  else
  {
    if (v4 != 4)
    {
      if (v4 == 3)
      {
        if (v5 != 3)
        {
          return 0;
        }
      }

      else if ((v5 - 6) > 0xFFFFFFFC || v4 != v5)
      {
        return 0;
      }

      return 1;
    }

    if (v5 == 4)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_220E31948@<X0>(uint64_t *a1@<X8>)
{
  memcpy(__dst, v1, sizeof(__dst));
  v3 = v1[96];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CA90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220FC8E10;
  *(inited + 32) = 0x656C616373;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 72) = &unk_283488D08;
  v5 = swift_allocObject();
  *(inited + 48) = v5;
  memcpy((v5 + 16), __dst, 0x60uLL);
  *(inited + 80) = 0x4B79616C7265766FLL;
  *(inited + 88) = 0xEB00000000646E69;
  *(inited + 120) = &type metadata for WeatherMapOverlayKind;
  *(inited + 96) = v3;
  sub_220E31B58(__dst, &v7);
  sub_220FC2600();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CA98);
  a1[4] = sub_220E31BB4();
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_220FC12A0();
}

uint64_t sub_220E31AC4()
{
  sub_220E31C60();

  return sub_220FC1290();
}

unint64_t sub_220E31B04()
{
  result = qword_27CF9CA88;
  if (!qword_27CF9CA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9CA88);
  }

  return result;
}

unint64_t sub_220E31BB4()
{
  result = qword_27CF9CAA0;
  if (!qword_27CF9CAA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9CA98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9CAA0);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_220E31C60()
{
  result = qword_27CF9CAA8;
  if (!qword_27CF9CAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9CAA8);
  }

  return result;
}

id sub_220E31CB4(const void *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, char a10, char a11)
{
  ObjectType = swift_getObjectType();
  memcpy(__dst, a1, 0x78uLL);
  v14 = &v11[OBJC_IVAR____TtC11WeatherMaps10ButtonView_menuDelegate];
  *&v11[OBJC_IVAR____TtC11WeatherMaps10ButtonView_menuDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v15 = &v11[OBJC_IVAR____TtC11WeatherMaps10ButtonView_actionDelegate];
  *&v11[OBJC_IVAR____TtC11WeatherMaps10ButtonView_actionDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v16 = &v11[OBJC_IVAR____TtC11WeatherMaps10ButtonView_fixedWidth];
  *v16 = 0;
  v16[8] = 1;
  v17 = &v11[OBJC_IVAR____TtC11WeatherMaps10ButtonView_fixedHeight];
  *v17 = 0;
  v17[8] = 1;
  memcpy(&v11[OBJC_IVAR____TtC11WeatherMaps10ButtonView_button], a1, 0x78uLL);
  *v16 = a7;
  v16[8] = a8 & 1;
  *v17 = a9;
  v17[8] = a10 & 1;
  *&v11[OBJC_IVAR____TtC11WeatherMaps10ButtonView_cornerRadius] = a2;
  v11[OBJC_IVAR____TtC11WeatherMaps10ButtonView_useLargeIcons] = a11;
  *(v14 + 1) = a4;
  swift_unknownObjectWeakAssign();
  *(v15 + 1) = a6;
  swift_unknownObjectWeakAssign();
  sub_220E32EEC(__dst, v86);
  v85.receiver = v11;
  v85.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v85, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v19 = __dst[0];
  v20 = __dst[1];
  if (LOBYTE(__dst[2]) == 1)
  {
    v21 = objc_opt_self();

    v22 = &selRef_secondaryLabelColor;
    if ((a11 & 1) == 0)
    {
      v22 = &selRef_labelColor;
    }

    v23 = [v21 *v22];
    sub_220E1966C(0, &qword_2812C5B50);
    v24 = [objc_opt_self() configurationWithPointSize:4 weight:17.0];
    v25 = sub_220F6DBDC(v19, v20, v24);
    v26 = v25;
    if (v25)
    {
      v27 = [v25 imageWithTintColor:v23 renderingMode:1];
    }

    else
    {
      v27 = 0;
    }

    [v18 setImage:v27 forState:0];
    if (v26)
    {
      v34 = v26;
      v35 = [v23 colorWithAlphaComponent_];
      v36 = [v34 imageWithTintColor:v35 renderingMode:1];
    }

    else
    {
      v36 = 0;
    }

    [v18 setImage:v36 forState:1];

    if (a11)
    {
      v37 = OUTLINED_FUNCTION_4_0();
      v38 = [objc_opt_self() blackColor];
      v39 = [v38 colorWithAlphaComponent_];

      v40 = [v39 CGColor];
      [v37 setShadowColor_];

      v41 = OUTLINED_FUNCTION_4_0();
      [v41 setShadowOffset_];

      v42 = OUTLINED_FUNCTION_4_0();
      LODWORD(v43) = 1.0;
      [v42 setShadowOpacity_];

      v44 = OUTLINED_FUNCTION_4_0();
      [v44 setShadowRadius_];
    }
  }

  else
  {

    sub_220E32F48(v19, v20, 0, v18);
    v28 = objc_opt_self();
    v29 = [v28 labelColor];
    [v18 setTitleColor:v29 forState:0];

    v30 = [v28 labelColor];
    v31 = [v30 colorWithAlphaComponent_];

    [v18 setTitleColor:v31 forState:1];
    v32 = [v18 titleLabel];
    if (!v32)
    {
      goto LABEL_16;
    }

    v33 = v32;
    sub_220E1966C(0, &qword_2812C5B80);
    v26 = sub_220E417BC(*MEMORY[0x277D76918], 0x8000u, 0, 1, *MEMORY[0x277D76808], 0, *MEMORY[0x277D74420]);
    [v33 setFont_];
  }

LABEL_16:
  v45 = __dst[7];
  if (LOBYTE(__dst[7]) == 255)
  {
    goto LABEL_23;
  }

  v46 = __dst[5];
  if (LOBYTE(__dst[7]) != 1)
  {
    v62 = OUTLINED_FUNCTION_0_2();
    sub_220E33010(v62, v63, v64, v65, v45);
    goto LABEL_21;
  }

  v47 = 1;
  v48 = OUTLINED_FUNCTION_0_2();
  sub_220E33010(v48, v49, v50, v51, 1);
  v52 = OUTLINED_FUNCTION_0_2();
  sub_220E33010(v52, v53, v54, v55, 1);

  if (!v46)
  {
LABEL_21:
    v47 = 0x2000;
    goto LABEL_22;
  }

  sub_220E1966C(0, &qword_27CF9DBE0);
  OUTLINED_FUNCTION_2_3();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v56 = swift_allocObject();
  *(OUTLINED_FUNCTION_3_1(v56) + 56) = 1;
  v57 = OUTLINED_FUNCTION_0_2();
  sub_220E33010(v57, v58, v59, v60, 1);
  v61 = OUTLINED_FUNCTION_1_7();
  [v18 addAction:v61 forControlEvents:{448, 0, 0}];
  sub_220E2DD2C(v46);

LABEL_22:
  sub_220E1966C(0, &qword_27CF9DBE0);
  OUTLINED_FUNCTION_2_3();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v66 = swift_allocObject();
  *(OUTLINED_FUNCTION_3_1(v66) + 56) = v45;
  v67 = OUTLINED_FUNCTION_0_2();
  sub_220E33010(v67, v68, v69, v70, v45);
  v71 = OUTLINED_FUNCTION_1_7();
  [v18 addAction:v71 forControlEvents:{v47, 0, 0}];
  v72 = OUTLINED_FUNCTION_0_2();
  sub_220E33154(v72, v73, v74, v75, v45);

LABEL_23:
  sub_220E32FBC(__dst);
  if ((__dst[7] & 0x100) == 0)
  {
    v76 = v18;
    v77 = sub_220E324F4();
    [v76 setMenu_];

    [v76 setShowsMenuAsPrimaryAction_];
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v18;
}

void sub_220E32444()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_220E80178();

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_220E324F4()
{
  sub_220E1966C(0, &qword_27CF9CAE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9DBB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_220FC8F40;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6[4] = sub_220E331D4;
  v6[5] = v2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_220E32710;
  v6[3] = &block_descriptor;
  v3 = _Block_copy(v6);

  v4 = [v1 elementWithUncachedProvider_];
  _Block_release(v3);
  *(v0 + 32) = v4;
  return sub_220FC3190();
}

uint64_t sub_220E3264C(void (*a1)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_220E7F95C();
      a1();

      swift_unknownObjectRelease();
    }
  }

  return (a1)(MEMORY[0x277D84F90]);
}

uint64_t sub_220E32710(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  OUTLINED_FUNCTION_2_3();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_220E331F4, v4);
}

void sub_220E327A0(uint64_t a1, uint64_t a2)
{
  sub_220E1966C(0, &unk_27CF9DBA0);
  v3 = sub_220FC2960();
  (*(a2 + 16))(a2, v3);
}

void sub_220E3281C()
{
  *(v0 + OBJC_IVAR____TtC11WeatherMaps10ButtonView_menuDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC11WeatherMaps10ButtonView_actionDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = v0 + OBJC_IVAR____TtC11WeatherMaps10ButtonView_fixedWidth;
  *v1 = 0;
  *(v1 + 8) = 1;
  v2 = v0 + OBJC_IVAR____TtC11WeatherMaps10ButtonView_fixedHeight;
  *v2 = 0;
  *(v2 + 8) = 1;
  sub_220FC3740();
  __break(1u);
}

void sub_220E328EC(void *a1)
{
  v2 = [a1 state];
  if (v2 == 3)
  {

    [v1 setBackgroundImage:0 forState:0];
  }

  else if (v2 == 1)
  {
    sub_220E1966C(0, &qword_2812C5B50);
    sub_220E1966C(0, &qword_2812C5B58);
    v3 = sub_220FAE570();
    sub_220F6DC4C(v3, -1, *&v1[OBJC_IVAR____TtC11WeatherMaps10ButtonView_cornerRadius]);
    v5 = v4;

    [v1 setBackgroundImage:v5 forState:0];
  }
}

id sub_220E32A78(double a1, double a2)
{
  v6.receiver = v2;
  v6.super_class = swift_getObjectType();
  result = objc_msgSendSuper2(&v6, sel_sizeThatFits_, a1, a2);
  if ((*(v2 + OBJC_IVAR____TtC11WeatherMaps10ButtonView_fixedWidth + 8) & 1) != 0 && (*(v2 + OBJC_IVAR____TtC11WeatherMaps10ButtonView_useLargeIcons) & 1) == 0)
  {
    return sub_220FC1110();
  }

  return result;
}

id sub_220E32BD4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_220E32C98(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, sel_menuAttachmentPointForConfiguration_, a1);
}

uint64_t sub_220E32D68(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4, void (*a5)(void *))
{
  v12.receiver = v5;
  v12.super_class = swift_getObjectType();
  result = objc_msgSendSuper2(&v12, *a4, a1, a2, a3);
  if ((*(v5 + OBJC_IVAR____TtC11WeatherMaps10ButtonView_button + 57) & 1) == 0)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      a5(v5);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_220E32E38(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, SEL *a6, void (*a7)(void *))
{
  v12 = a3;
  v13 = a4;
  swift_unknownObjectRetain();
  v14 = a1;
  sub_220E32D68(v12, v13, a5, a6, a7);

  swift_unknownObjectRelease();
}

void sub_220E32F48(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_220FC26C0();

  [a4 setTitle:v6 forState:a3];
}

void sub_220E33010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 2)
  {
LABEL_8:

    return;
  }

  if (a5 != 1)
  {
    if (a5)
    {
      return;
    }

    goto LABEL_8;
  }

  sub_220E1AADC(a3);
}

void sub_220E330A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 2)
  {
LABEL_8:

    return;
  }

  if (a5 != 1)
  {
    if (a5)
    {
      return;
    }

    goto LABEL_8;
  }

  sub_220E2DD2C(a3);
}

void sub_220E33154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    sub_220E330A0(a1, a2, a3, a4, a5);
  }
}

uint64_t objectdestroy_2Tm()
{

  sub_220E330A0(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_220E33218()
{
  v0 = sub_220FC17A0();
  __swift_allocate_value_buffer(v0, qword_27CF9CAF0);
  __swift_project_value_buffer(v0, qword_27CF9CAF0);
  return sub_220FC1790();
}

uint64_t sub_220E33304()
{
  v0 = sub_220FC17A0();
  __swift_allocate_value_buffer(v0, qword_27CF9CB08);
  __swift_project_value_buffer(v0, qword_27CF9CB08);
  return sub_220FC1790();
}

uint64_t sub_220E33514()
{
  OUTLINED_FUNCTION_1_8();
  if (!v2)
  {
    swift_once();
  }

  v3 = sub_220FC17A0();
  v4 = __swift_project_value_buffer(v3, v1);
  v5 = *(*(v3 - 8) + 16);

  return v5(v0, v4, v3);
}

uint64_t sub_220E335D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220E3379C(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF70);
  __swift_allocate_value_buffer(v3, a2);
  v4 = __swift_project_value_buffer(v3, a2);
  v5 = sub_220FC17A0();

  return __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
}

uint64_t sub_220E33838()
{
  OUTLINED_FUNCTION_1_8();
  if (!v2)
  {
    swift_once();
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF70);
  v4 = __swift_project_value_buffer(v3, v1);

  return sub_220E335D0(v4, v0);
}

uint64_t sub_220E33898(char a1)
{
  sub_220FC3A40();
  MEMORY[0x223D9CFA0](a1 & 1);
  return sub_220FC3A90();
}

void *sub_220E338E8()
{
  v0 = sub_220FC18A0();
  v43 = *(v0 - 8);
  v44 = v0;
  v2 = MEMORY[0x28223BE20](v0, v1);
  v45 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2, v4);
  v41 = &v39 - v5;
  v42 = sub_220FC32C0();
  v6 = *(v42 - 8);
  MEMORY[0x28223BE20](v42, v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CD48);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v39 - v12;
  v14 = sub_220FC18F0();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_220FC3320();
  v40 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19, v20);
  v23 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v39 - v25;
  sub_220FC3280();
  v27 = [objc_opt_self() labelColor];
  sub_220FC32E0();
  sub_220FC1900();
  v46 = v18;
  v47 = v15;
  v28 = v15;
  v29 = v41;
  (*(v28 + 16))(v13, v18, v14);
  v48 = v14;
  v30 = v14;
  v31 = v19;
  v32 = v40;
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v30);
  v33 = v43;
  sub_220FC32F0();
  (*(v6 + 104))(v9, *MEMORY[0x277D74FF8], v42);
  v34 = v44;
  sub_220FC32D0();
  sub_220FC32B0();
  sub_220FC1890();
  sub_220FC1880();
  (*(v33 + 16))(v45, v29, v34);
  sub_220FC3270();
  sub_220E1966C(0, &qword_27CF9CD50);
  (*(v32 + 16))(v23, v26, v31);
  v35 = sub_220FC3330();
  [v35 setPreferredBehavioralStyle_];
  v36 = [v35 titleLabel];
  if (v36)
  {
    v37 = v36;
    [v36 setNumberOfLines_];
  }

  [v35 setMaximumContentSizeCategory_];
  (*(v33 + 8))(v29, v34);
  (*(v47 + 8))(v46, v48);
  (*(v32 + 8))(v26, v31);
  return v35;
}

uint64_t sub_220E33DC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_220FBFFA0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  sub_220E1966C(0, &qword_2812C5B80);
  sub_220E417BC(*MEMORY[0x277D76968], 0x8000u, 0, 1, 0, 0, *MEMORY[0x277D743F8]);
  sub_220E3B4D8();
  return sub_220FBFFB0();
}

uint64_t sub_220E33EA0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_bar);
  v4 = OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_current;
  OUTLINED_FUNCTION_5_1();
  sub_220FC02B0();
  OUTLINED_FUNCTION_2();
  return (*(v5 + 16))(a1, v3 + v4);
}

uint64_t sub_220E33F28(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for MapScrubberOverlayViewModel(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v4, v5);
  OUTLINED_FUNCTION_3();
  v8 = v7 - v6;
  type metadata accessor for MapScrubberOverlayViewModel.Active(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v9, v10);
  OUTLINED_FUNCTION_3();
  v13 = v12 - v11;
  v14 = sub_220FC02B0();
  OUTLINED_FUNCTION_6();
  v16 = v15;
  MEMORY[0x28223BE20](v17, v18);
  OUTLINED_FUNCTION_3();
  v21 = v20 - v19;
  (*(v16 + 16))(v20 - v19, a1, v14);
  sub_220FAED98(v21);
  v22 = OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_model;
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_1_9();
  sub_220E3B420(v2 + v22, v8, v23);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_0_4();
    sub_220E3B480(v8, v24);
    sub_220E341B8();
    return (*(v16 + 8))(a1, v14);
  }

  else
  {
    sub_220E3AF84(v8, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CD18);
    sub_220FAEC0C(a1, v21);
    sub_220E3AFE8();
    v26 = sub_220FC2680();
    v27 = *(v16 + 8);
    v27(v21, v14);
    if ((v26 & 1) == 0 && !sub_220FAEE64())
    {
      sub_220FAEED0();
    }

    sub_220E341B8();
    v27(a1, v14);
    return sub_220E3B480(v13, type metadata accessor for MapScrubberOverlayViewModel.Active);
  }
}

id sub_220E341B8()
{
  v1 = sub_220FC02B0();
  v57 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v2);
  v56 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MapScrubberOverlayViewModel.Labels(0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MapScrubberOverlayViewModel.Active(0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = (&v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for MapScrubberOverlayViewModel(0);
  v14 = MEMORY[0x28223BE20](v12, v13);
  v55 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v52 - v17;
  v19 = OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_model;
  swift_beginAccess();
  v20 = v0;
  sub_220E3B420(&v0[v19], v18, type metadata accessor for MapScrubberOverlayViewModel);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (!*(v18 + 1))
    {
      v22 = v0;
      [*&v0[OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_titleDateContainer] setHidden_];
      [*&v0[OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_affordanceActionIcon] setHidden_];
      return [v22 setNeedsLayout];
    }

    v21 = *(v18 + 3);
    v22 = v0;
    goto LABEL_6;
  }

  v53 = v1;
  sub_220E3AF84(v18, v11);
  v23 = *v11;
  v24 = v11[1];
  v25 = v11[2];
  v21 = v11[3];
  sub_220E3B420(v11 + *(v8 + 24), v7, type metadata accessor for MapScrubberOverlayViewModel.Labels);
  v54 = v25;
  sub_220E3B040(v23, v24);
  sub_220E3B480(v11, type metadata accessor for MapScrubberOverlayViewModel.Active);
  v26 = v7[*(v4 + 24)];
  sub_220E3B480(v7, type metadata accessor for MapScrubberOverlayViewModel.Labels);
  if (v24)
  {
    v22 = v20;
LABEL_6:
    v27 = *&v22[OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_titleLabel];
    v28 = sub_220FC26C0();
    [v27 setText_];

    v29 = *&v22[OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_dateLabel];
    if (v21)
    {

      v30 = sub_220FC26C0();
      swift_bridgeObjectRelease_n();
    }

    else
    {
      v30 = 0;
    }

    [v29 setText_];

    [*&v22[OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_titleDateContainer] setHidden_];
    [*&v22[OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_affordanceActionIcon] setHidden_];
    return [v22 setNeedsLayout];
  }

  v22 = v20;
  v32 = sub_220E382E0(v26);
  v33 = *&v20[OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_titleLabel];
  if (v26)
  {
    v34 = &v20[v19];
    v35 = v55;
    sub_220E3B420(v34, v55, type metadata accessor for MapScrubberOverlayViewModel);
    v36 = sub_220E5C120();
    v38 = v37;
    sub_220E3B480(v35, type metadata accessor for MapScrubberOverlayViewModel);
    v39 = sub_220E383C4(v36, v38 & 1);
  }

  else
  {
    if (qword_2812C5B30 != -1)
    {
      swift_once();
    }

    v41 = qword_2812CE4B0;
    v42 = sub_220FBFF80();
    v44 = v43;

    v39 = v42;
    v40 = v44;
  }

  sub_220F05198(v39, v40, v33);
  v45 = *&v20[OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_dateLabel];
  v46 = *&v22[OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_bar] + OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_current;
  swift_beginAccess();
  v48 = v56;
  v47 = v57;
  v49 = v53;
  (*(v57 + 16))(v56, v46, v53);
  v50 = sub_220FC01D0();
  (*(v47 + 8))(v48, v49);
  v51 = [v32 stringForObjectValue_];

  [v45 setText_];
  [*&v22[OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_titleDateContainer] setHidden_];
  [*&v22[OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_affordanceActionIcon] setHidden_];

  return [v22 setNeedsLayout];
}

void sub_220E347D8(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_representsIsPlaying) != (a1 & 1))
  {
    sub_220E347F8();
  }
}

void sub_220E347F8()
{
  v1 = type metadata accessor for MapScrubberOverlayViewModel(0);
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_model;
  swift_beginAccess();
  sub_220E3B420(&v0[v5], v4, type metadata accessor for MapScrubberOverlayViewModel);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    if (v0[OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_representsIsPlaying] == 1)
    {
      if (qword_27CF9C030 != -1)
      {
        swift_once();
      }

      v12 = qword_2812C5B30;
      v7 = qword_27CFAF440;
      if (v12 == -1)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (qword_27CF9C040 != -1)
      {
        swift_once();
      }

      v13 = qword_2812C5B30;
      v7 = qword_27CFAF450;
      if (v13 == -1)
      {
        goto LABEL_15;
      }
    }

    swift_once();
LABEL_15:
    v14 = qword_2812CE4B0;
    v9 = sub_220FBFF80();
    v11 = v15;

    sub_220E3B480(v4, type metadata accessor for MapScrubberOverlayViewModel);
    goto LABEL_16;
  }

  sub_220E3B480(v4, type metadata accessor for MapScrubberOverlayViewModel);
  if (qword_27CF9C038 != -1)
  {
    swift_once();
  }

  v6 = qword_2812C5B30;
  v7 = qword_27CFAF448;
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = qword_2812CE4B0;
  v9 = sub_220FBFF80();
  v11 = v10;

LABEL_16:
  v16 = *&v0[OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_playPauseButton];
  [v16 setImage:v7 forState:0];

  [v16 sizeToFit];
  sub_220FB516C(v9, v11, v16);
  [v0 setNeedsLayout];
}

void sub_220E34BF4(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_representsIsPlaying);
  *(v1 + OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_representsIsPlaying) = a1;
  sub_220E347D8(v2);
}

void sub_220E34C0C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_220FC02B0();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MapScrubberOverlayBar.ViewModel(0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MapScrubberOverlayViewModel(0);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_model;
  swift_beginAccess();
  sub_220E3B420(v2 + v16, v15, type metadata accessor for MapScrubberOverlayViewModel);
  LOBYTE(a1) = sub_220E5C410(a1, v15);
  sub_220E3B480(v15, type metadata accessor for MapScrubberOverlayViewModel);
  if ((a1 & 1) == 0)
  {
    sub_220E34DC4(v11);
    sub_220FAF070(v11);
    sub_220E33EA0(v7);
    sub_220FAED98(v7);
    sub_220E35238();
  }
}

uint64_t sub_220E34DC4@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CD28);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v44 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CD18);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v44 - v9;
  v11 = type metadata accessor for MapScrubberOverlayViewModel(0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for MapScrubberOverlayViewModel.Active(0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_model;
  swift_beginAccess();
  sub_220E3B420(v1 + v19, v14, type metadata accessor for MapScrubberOverlayViewModel);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_220E3B480(v14, type metadata accessor for MapScrubberOverlayViewModel);
    v20 = type metadata accessor for MapScrubberOverlayBar.ViewModel.Active(0);
    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v20);
  }

  sub_220E3AF84(v14, v18);
  v22 = &v18[*(v15 + 24)];
  v45 = type metadata accessor for MapScrubberOverlayViewModel.Labels(0);
  v23 = *&v22[*(v45 + 20)];
  MEMORY[0x28223BE20](v45, v24);
  *(&v44 - 2) = v18;
  sub_220E39444(sub_220E3B258, (&v44 - 4), 0, v25);
  v27 = v26;
  if (*(v26 + 16) == *(v23 + 16))
  {
    sub_220E39710(v6);
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
    {
      v31 = sub_220E3B3A4(v6, v10, &qword_27CF9CD18);
      MEMORY[0x28223BE20](v31, v32);
      *(&v44 - 2) = v22;
      sub_220E391D8(sub_220E3B274, (&v44 - 4), 0, v33);
      v35 = v34;
      MEMORY[0x28223BE20](v34, v36);
      *(&v44 - 2) = v22;
      sub_220E3930C(sub_220E3B2A8, (&v44 - 4), 0, v37);
      v39 = v38;
      v40 = type metadata accessor for MapScrubberOverlayBar.ViewModel.Active(0);
      v41 = v40[7];
      v42 = sub_220FC02B0();
      (*(*(v42 - 8) + 16))(&a1[v41], v22, v42);
      sub_220E3B3A4(v10, &a1[v40[8]], &qword_27CF9CD18);
      v43 = v22[*(v45 + 24)];
      *a1 = v27;
      *(a1 + 1) = v35;
      *(a1 + 2) = v39;
      a1[v40[9]] = v43;
      v29 = a1;
      v30 = 0;
      v28 = v40;
      goto LABEL_9;
    }

    sub_220E3B2DC(v6, &qword_27CF9CD28);
  }

  else
  {
  }

  v28 = type metadata accessor for MapScrubberOverlayBar.ViewModel.Active(0);
  v29 = a1;
  v30 = 1;
LABEL_9:
  __swift_storeEnumTagSinglePayload(v29, v30, 1, v28);
  return sub_220E3B480(v18, type metadata accessor for MapScrubberOverlayViewModel.Active);
}

void sub_220E35238()
{
  v1 = type metadata accessor for MapScrubberOverlayViewModel(0);
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_model;
  swift_beginAccess();
  sub_220E3B420(v0 + v5, v4, type metadata accessor for MapScrubberOverlayViewModel);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_220E3B480(v4, type metadata accessor for MapScrubberOverlayViewModel);
    [*(v0 + OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_bar) setHidden_];
    [*(v0 + OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_playPauseButton) setHidden_];
  }

  else
  {
    [*(v0 + OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_bar) setHidden_];
    [*(v0 + OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_playPauseButton) setHidden_];
    sub_220E3B480(v4, type metadata accessor for MapScrubberOverlayViewModel);
  }

  sub_220E341B8();
  sub_220E37FD8();
  sub_220E347F8();
  sub_220E38144();
}

uint64_t sub_220E353B4(uint64_t a1)
{
  v3 = type metadata accessor for MapScrubberOverlayViewModel(0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  OUTLINED_FUNCTION_3();
  v7 = v6 - v5;
  v8 = OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_model;
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_1_9();
  sub_220E3B420(v1 + v8, v7, v9);
  swift_beginAccess();
  sub_220E3B1F4(a1, v1 + v8);
  swift_endAccess();
  sub_220E34C0C(v7);
  sub_220E3B480(a1, type metadata accessor for MapScrubberOverlayViewModel);
  return sub_220E3B480(v7, type metadata accessor for MapScrubberOverlayViewModel);
}

uint64_t sub_220E354A0@<X0>(char *a1@<X8>)
{
  v3 = type metadata accessor for MapScrubberOverlayViewModel.Active(0);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MapScrubberOverlayViewModel(0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_model;
  swift_beginAccess();
  sub_220E3B420(v1 + v11, v10, type metadata accessor for MapScrubberOverlayViewModel);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = v10[32];
    result = sub_220E3B0C4(*v10, *(v10 + 1));
  }

  else
  {
    sub_220E3AF84(v10, v6);
    v12 = v6[*(v3 + 32)];
    result = sub_220E3B480(v6, type metadata accessor for MapScrubberOverlayViewModel.Active);
  }

  *a1 = v12;
  return result;
}

id sub_220E35610()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_titleDateContainer;
  *&v0[v2] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v3 = OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_titleLabel;
  *&v0[v3] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v4 = OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_dateLabel;
  *&v0[v4] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v5 = OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_playPauseButton;
  sub_220FC1800();
  *&v0[v5] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_bar;
  *&v0[v6] = [objc_allocWithZone(type metadata accessor for MapScrubberOverlayBar(0)) init];
  v7 = OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_affordanceActionIcon;
  *&v0[v7] = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v8 = OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_temporalityFilter;
  *&v0[v8] = [objc_allocWithZone(MEMORY[0x277D75A08]) init];
  v9 = OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_titleButton;
  *&v0[v9] = sub_220E338E8();
  *&v0[OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_regularBreakpointWidth] = 0x4073100000000000;
  *&v0[OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_wideBreakpointWidth] = 0x4081300000000000;
  v10 = sub_220FC2300();
  v11 = 10.0;
  if (v10)
  {
    v11 = 14.0;
  }

  *&v0[OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_verticalPadding] = v11;
  if (sub_220FC2300())
  {
    v12 = 16.0;
  }

  else
  {
    v12 = 14.0;
  }

  *&v0[OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_horizontalPaddingPlay] = v12;
  v13 = sub_220FC2300();
  v14 = 8.0;
  if (v13)
  {
    v14 = 6.0;
  }

  *&v0[OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_horizontalPaddingPlayToTitle] = v14;
  v15 = sub_220FC2300();
  v16 = 18.0;
  if ((v15 & 1) == 0)
  {
    v16 = 16.0;
  }

  *&v0[OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_horizontalPadding] = v16;
  *&v0[OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_minimumHeight] = 0x4046000000000000;
  *&v0[OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_affordanceIconSpacing] = 0x4010000000000000;
  *&v0[OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_affordanceTextSpacing] = 0x4020000000000000;
  *&v0[OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_barVerticalSpacing] = 0x4020000000000000;
  OUTLINED_FUNCTION_9_0(OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_buttonTouchInsets);
  sub_220FC0450();
  v0[OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_scrubberLayoutStyle] = 0;
  *&v0[OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v0[OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_menuWasOpened] = 0;
  v0[OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_representsIsPlaying] = 0;
  v17 = &v0[OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_model];
  *v17 = 0u;
  *(v17 + 1) = 0u;
  v17[32] = 6;
  type metadata accessor for MapScrubberOverlayViewModel(0);
  swift_storeEnumTagMultiPayload();
  v20.receiver = v0;
  v20.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v20, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_220E358F0();

  return v18;
}

void sub_220E358F0()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_titleLabel];
  sub_220E1966C(0, &qword_2812C5B80);
  v65 = *MEMORY[0x277D76968];
  v3 = sub_220E417BC(*MEMORY[0x277D76968], 0x8000u, 0, 1, 0, 0, *MEMORY[0x277D743F8]);
  [v2 setFont_];

  v4 = objc_opt_self();
  v5 = [v4 labelColor];
  [v2 setTextColor_];

  [v2 setLineBreakMode_];
  v6 = *&v0[OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_dateLabel];
  v7 = *MEMORY[0x277D74418];
  v8 = sub_220E417BC(*MEMORY[0x277D76938], 0x8000u, 0, 1, 0, 1, *MEMORY[0x277D74418]);
  [v6 setFont_];

  v64 = v4;
  v9 = [v4 secondaryLabelColor];
  [v6 setTextColor_];

  [v6 setLineBreakMode_];
  v10 = *&v1[OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_titleButton];
  [v10 addTarget:v1 action:sel_didReceiveMenuAction_ forControlEvents:0x4000];
  v11 = *&v1[OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_titleDateContainer];
  [v11 addSubview_];
  [v11 addSubview_];
  [v11 addSubview_];
  [v1 addSubview_];
  v12 = *&v1[OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_playPauseButton];
  [v12 addTarget:v1 action:sel_playPauseTapped forControlEvents:64];
  sub_220FC17F0();
  [v1 &selRef:v12 contextMenuInteraction:? willEndForConfiguration:? animator:?];
  v13 = *&v1[OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_bar];
  [v13 addTarget:v1 action:sel_barValueChanged_ forControlEvents:4096];
  [v13 addTarget:v1 action:sel_barTouched_ forControlEvents:65];
  [v1 &selRef:v13 contextMenuInteraction:? willEndForConfiguration:? animator:?];
  v14 = &unk_2812C5000;
  if (sub_220FC2300())
  {
    v15 = *&v1[OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_temporalityFilter];
    [v15 addTarget:v1 action:sel_doSegmentChange forControlEvents:4096];
    if (qword_2812C5B30 != -1)
    {
      swift_once();
    }

    v16 = qword_2812CE4B0;
    v17 = sub_220FBFF80();
    v19 = v18;

    sub_220E3B178(v17, v19, 0, 0, v15);
    v20 = qword_2812CE4B0;
    v21 = sub_220FBFF80();
    v23 = v22;

    sub_220E3B178(v21, v23, 1, 0, v15);
    v24 = qword_2812CE4B0;
    v25 = sub_220FBFF80();
    v27 = v26;

    sub_220FB51A4(v25, v27, v15);
    v28 = &property descriptor for MapLocationAccessibilityModel.expiration;
    if ([v15 accessibilityElementAtIndex_])
    {
      sub_220FC3410();
      swift_unknownObjectRelease();
    }

    else
    {
      v67 = 0u;
      v68 = 0u;
    }

    v69 = v67;
    v70 = v68;
    if (*(&v68 + 1))
    {
      sub_220E1966C(0, &qword_2812C5B78);
      if (swift_dynamicCast())
      {
        v29 = qword_2812CE4B0;
        v62 = 0x8000000220FDC090;
        v30 = sub_220FBFF80();
        v32 = v31;

        v28 = &property descriptor for MapLocationAccessibilityModel.expiration;
        sub_220FB51A4(v30, v32, v66);
      }
    }

    else
    {
      sub_220E3B2DC(&v69, &unk_27CF9D6B0);
    }

    if ([v15 v28[287]])
    {
      sub_220FC3410();
      swift_unknownObjectRelease();
    }

    else
    {
      v67 = 0u;
      v68 = 0u;
    }

    v14 = &unk_2812C5000;
    v69 = v67;
    v70 = v68;
    if (*(&v68 + 1))
    {
      sub_220E1966C(0, &qword_2812C5B78);
      if (swift_dynamicCast())
      {
        v33 = qword_2812CE4B0;
        v63 = 0x8000000220FDC030;
        v34 = sub_220FBFF80();
        v36 = v35;

        v37 = v34;
        v14 = &unk_2812C5000;
        sub_220FB51A4(v37, v36, v66);
      }
    }

    else
    {
      sub_220E3B2DC(&v69, &unk_27CF9D6B0);
    }

    [v1 addSubview_];
    [v15 sizeToFit];
  }

  v38 = v14;
  v39 = *&v1[OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_affordanceActionIcon];
  sub_220E1966C(0, &qword_2812C5B50);
  v40 = sub_220F6DD88(0xD000000000000015, 0x8000000220FDBD70, v65, -1, v7, 0, 0, 2);
  [v39 setImage_];

  v41 = [v64 labelColor];
  [v39 setTintColor_];

  [v11 addSubview_];
  sub_220E341B8();
  sub_220E347F8();
  sub_220E37FD8();
  sub_220E38144();
  if (v38[358] != -1)
  {
    swift_once();
  }

  v42 = qword_2812CE4B0;
  v43 = sub_220FBFF80();
  v45 = v44;

  sub_220FB51A4(v43, v45, v1);
  [v1 setAccessibilityContainerType_];
  v46 = qword_2812CE4B0;
  v47 = sub_220FBFF80();
  v49 = v48;

  sub_220FB51A4(v47, v49, v12);
  [v10 setIsAccessibilityElement_];
  v50 = qword_2812CE4B0;
  v51 = sub_220FBFF80();
  v53 = v52;

  sub_220E56298(v51, v53, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CEA0);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_220FC8F90;
  *(v54 + 56) = sub_220FC1800();
  *(v54 + 32) = v12;
  *(v54 + 88) = sub_220E1966C(0, &qword_27CF9CD50);
  *(v54 + 64) = v10;
  *(v54 + 120) = sub_220E1966C(0, &qword_27CF9CD60);
  *(v54 + 96) = v6;
  *(v54 + 152) = sub_220E1966C(0, &qword_27CF9CD68);
  *(v54 + 128) = v39;
  v55 = *&v1[OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_temporalityFilter];
  *(v54 + 184) = sub_220E1966C(0, &qword_27CF9CD70);
  *(v54 + 160) = v55;
  *(v54 + 216) = type metadata accessor for MapScrubberOverlayBar(0);
  *(v54 + 192) = v13;
  v56 = v12;
  v57 = v10;
  v58 = v6;
  v59 = v39;
  v60 = v55;
  v61 = v13;
  sub_220F05570();
}

void sub_220E363C4()
{
  v1 = OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_titleDateContainer;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v2 = OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_titleLabel;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v3 = OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_dateLabel;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v4 = OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_playPauseButton;
  sub_220FC1800();
  *(v0 + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_bar;
  *(v0 + v5) = [objc_allocWithZone(type metadata accessor for MapScrubberOverlayBar(0)) init];
  v6 = OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_affordanceActionIcon;
  *(v0 + v6) = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v7 = OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_temporalityFilter;
  *(v0 + v7) = [objc_allocWithZone(MEMORY[0x277D75A08]) init];
  v8 = OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_titleButton;
  *(v0 + v8) = sub_220E338E8();
  *(v0 + OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_regularBreakpointWidth) = 0x4073100000000000;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_wideBreakpointWidth) = 0x4081300000000000;
  v9 = sub_220FC2300();
  v10 = 10.0;
  if (v9)
  {
    v10 = 14.0;
  }

  *(v0 + OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_verticalPadding) = v10;
  if (sub_220FC2300())
  {
    v11 = 16.0;
  }

  else
  {
    v11 = 14.0;
  }

  *(v0 + OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_horizontalPaddingPlay) = v11;
  v12 = sub_220FC2300();
  v13 = 8.0;
  if (v12)
  {
    v13 = 6.0;
  }

  *(v0 + OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_horizontalPaddingPlayToTitle) = v13;
  v14 = sub_220FC2300();
  v15 = 18.0;
  if ((v14 & 1) == 0)
  {
    v15 = 16.0;
  }

  *(v0 + OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_horizontalPadding) = v15;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_minimumHeight) = 0x4046000000000000;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_affordanceIconSpacing) = 0x4010000000000000;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_affordanceTextSpacing) = 0x4020000000000000;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_barVerticalSpacing) = 0x4020000000000000;
  OUTLINED_FUNCTION_9_0(OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_buttonTouchInsets);
  sub_220FC0450();
  *(v0 + OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_scrubberLayoutStyle) = 0;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_menuWasOpened) = 0;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_representsIsPlaying) = 0;
  v16 = v0 + OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_model;
  *v16 = 0u;
  *(v16 + 16) = 0u;
  *(v16 + 32) = 6;
  type metadata accessor for MapScrubberOverlayViewModel(0);
  swift_storeEnumTagMultiPayload();
  sub_220FC3740();
  __break(1u);
}

void sub_220E366AC()
{
  ObjectType = swift_getObjectType();
  type metadata accessor for MapScrubberOverlayViewModel(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v2, v3);
  OUTLINED_FUNCTION_3();
  v6 = v5 - v4;
  v19.receiver = v0;
  v19.super_class = ObjectType;
  objc_msgSendSuper2(&v19, sel_layoutSubviews);
  v7 = OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_scrubberLayoutStyle;
  v8 = v0[OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_scrubberLayoutStyle];
  [v0 bounds];
  v10 = v9;
  v11 = OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_model;
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_1_9();
  sub_220E3B420(&v0[v11], v6, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_0_4();
    sub_220E3B480(v6, v13);
    [v0 bounds];
    sub_220E371B0(v14);
    v0[v7] = v15 & 1;
  }

  else
  {
    [v0 bounds];
    sub_220E36828(v10 >= 550.0, v16);
    v0[v7] = v17 & 1;
    OUTLINED_FUNCTION_0_4();
    sub_220E3B480(v6, v18);
    v15 = v0[v7];
  }

  if (v8 != (v15 & 1))
  {
    sub_220E341B8();
  }
}

double sub_220E36828(char a1, double a2)
{
  v5 = type metadata accessor for MapScrubberOverlayViewModel(0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_horizontalPadding);
  v10 = a2 - (v9 + v9);
  v11 = [objc_opt_self() sharedApplication];
  v12 = [v11 userInterfaceLayoutDirection];

  v13 = OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_model;
  swift_beginAccess();
  sub_220E3B420(v2 + v13, v8, type metadata accessor for MapScrubberOverlayViewModel);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_220E3B480(v8, type metadata accessor for MapScrubberOverlayViewModel);
    v14 = *(v2 + OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_affordanceActionIcon);
    [v14 sizeToFit];
    [v14 bounds];
    CGRectGetWidth(v76);
    sub_220FC1110();
    v16 = v15;
    v17 = *(v2 + OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_titleLabel);
    [v17 setNumberOfLines_];
    [v17 setTextAlignment_];
    v18 = *(v2 + OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_dateLabel);
    [v18 setNumberOfLines_];
    [v18 setTextAlignment_];
    v19 = *(v2 + OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_titleButton);
    [v19 sizeThatFits_];
    [v19 bounds];
    [v19 setBounds_];
    [v14 bounds];
    v20 = a2 * 0.5 + CGRectGetWidth(v77) * 0.5 + 2.0;
    v21 = *(v2 + OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_verticalPadding);
    [v19 bounds];
    [v19 setCenter_];
    [v18 sizeThatFits_];
    [v18 bounds];
    [v18 setBounds_];
    [v19 frame];
    MaxY = CGRectGetMaxY(v79);
    [v18 bounds];
    [v18 setCenter_];
    [v19 frame];
    MinX = CGRectGetMinX(v81);
    [v14 bounds];
    v24 = MinX - CGRectGetWidth(v82) * 0.5 + -4.0;
    [v19 center];
    [v14 setCenter_];
    v25 = *(v2 + OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_titleDateContainer);
    [v14 bounds];
    Height = CGRectGetHeight(v83);
    [v19 bounds];
    v27 = CGRectGetHeight(v84);
    if (Height <= v27)
    {
      Height = v27;
    }

    [v18 bounds];
    [v25 setFrame_];
    [v25 bounds];
    return v28;
  }

  else
  {
    v30 = *(v2 + OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_playPauseButton);
    v31 = *(v2 + OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_horizontalPaddingPlay);
    if (v12)
    {
      [*(v2 + OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_playPauseButton) bounds];
      v31 = a2 - v31 - CGRectGetWidth(v86);
    }

    v32 = *(v2 + OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_verticalPadding);
    [v30 frame];
    [v30 setFrame_];
    if (sub_220FC2300())
    {
      v33 = *(v2 + OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_temporalityFilter);
      v34 = v9;
      if (!v12)
      {
        [*(v2 + OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_temporalityFilter) bounds];
        v34 = a2 - v9 - CGRectGetWidth(v87);
      }

      [v33 frame];
      [v33 setFrame_];
    }

    v73 = v9;
    v74 = a2;
    v75 = v32;
    [v30 bounds];
    Width = CGRectGetWidth(v88);
    v36 = *(v2 + OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_temporalityFilter);
    v37 = [v36 isHidden];
    v38 = 0.0;
    if ((v37 & 1) == 0)
    {
      [v36 bounds];
      v38 = CGRectGetWidth(v89);
    }

    v72 = v36;
    v39 = v10 - Width + -8.0 - v38;
    v40 = *(v2 + OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_dateLabel);
    [v40 setNumberOfLines_];
    [v40 setTextAlignment_];
    [v40 setAdjustsFontSizeToFitWidth_];
    [v40 setMinimumScaleFactor_];
    v41 = *(v2 + OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_titleButton);
    [v41 intrinsicContentSize];
    v43 = v42;
    v45 = v44;
    [v40 sizeThatFits_];
    v47 = v10;
    v49 = v48;
    if (a1)
    {
      v50 = v46;
      if (v43 > v46)
      {
        v51 = v43;
      }

      else
      {
        v51 = v46;
      }

      [v41 setFrame_];
      [v41 frame];
      [v40 setFrame_];
      v52 = *(v2 + OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_titleDateContainer);
      [v52 setFrame_];
      v29 = v74;
      [v52 center];
      [v52 setCenter_];
      [v52 &selRef_initWithBytes_length_];
      v53 = CGRectGetWidth(v91) * 0.5;
      [v41 center];
      [v41 setCenter_];
      [v52 &selRef_initWithBytes_length_];
      v54 = CGRectGetWidth(v92) * 0.5;
      [v40 center];
      [v40 setCenter_];
    }

    else
    {
      if (v43 >= v39)
      {
        v55 = v39;
      }

      else
      {
        v55 = v43;
      }

      v56 = v55 - v43;
      if (v12)
      {
        v57 = v55 - v39;
      }

      else
      {
        v56 = 0.0;
        v57 = 0.0;
      }

      [v41 setFrame_];
      [v41 frame];
      [v40 setFrame_];
      [v30 frame];
      if (v12)
      {
        v62 = CGRectGetMinX(*&v58) - *(v2 + OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_horizontalPaddingPlayToTitle) - v55;
      }

      else
      {
        v62 = CGRectGetMaxX(*&v58) + *(v2 + OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_horizontalPaddingPlayToTitle);
      }

      v52 = *(v2 + OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_titleDateContainer);
      [v52 setFrame_];
      v47 = v10;
      v29 = v74;
    }

    v63 = *(v2 + OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_bar);
    [v63 sizeToFit];
    [v52 frame];
    v64 = CGRectGetMaxY(v94) + 8.0;
    [v63 &selRef_initWithBytes_length_];
    [v63 setFrame_];
    [v52 frame];
    CGRectGetMidY(v96);
    [v30 center];
    [v30 setCenter_];
    [v52 frame];
    CGRectGetMidY(v97);
    v65 = v72;
    [v72 center];
    [v65 setCenter_];
    [v30 &selRef_initWithBytes_length_];
    v66 = CGRectGetHeight(v98);
    [v41 &selRef_initWithBytes_length_];
    v67 = CGRectGetHeight(v99);
    [v40 &selRef_initWithBytes_length_];
    v68 = v67 + CGRectGetHeight(v100);
    [v65 &selRef_initWithBytes_length_];
    v69 = CGRectGetHeight(v101);
    sub_220E37FA4(MEMORY[0x277D84F90], v66, v68, v69);
    [v63 &selRef_initWithBytes_length_];
    CGRectGetHeight(v102);
    sub_220E3B480(v71, type metadata accessor for MapScrubberOverlayViewModel);
  }

  return v29;
}

double sub_220E371B0(double a1)
{
  v3 = type metadata accessor for MapScrubberOverlayViewModel(0);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_horizontalPadding);
  v8 = a1 - (v7 + v7);
  v9 = *(v1 + OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_titleLabel);
  [v9 setNumberOfLines_];
  [v9 setTextAlignment_];
  v10 = *(v1 + OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_dateLabel);
  [v10 setNumberOfLines_];
  [v10 setTextAlignment_];
  v11 = OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_model;
  swift_beginAccess();
  sub_220E3B420(v1 + v11, v6, type metadata accessor for MapScrubberOverlayViewModel);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_220E3B480(v6, type metadata accessor for MapScrubberOverlayViewModel);
    v12 = *(v1 + OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_affordanceActionIcon);
    [v12 sizeToFit];
    v13 = *(v1 + OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_titleButton);
    [v13 sizeToFit];
    [v10 sizeToFit];
    [*(v1 + OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_temporalityFilter) sizeToFit];
    [v12 bounds];
    v14 = CGRectGetWidth(v42) + 4.0;
    [v13 bounds];
    v15 = v14 + CGRectGetWidth(v43) + 8.0;
    [v10 bounds];
    v16 = v15 + CGRectGetWidth(v44);
    if (v8 >= v16)
    {
      [v12 bounds];
      v30 = v7 + CGRectGetWidth(v59) + 4.0;
      v31 = *(v1 + OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_verticalPadding);
      [v13 frame];
      [v13 setFrame_];
      [v12 bounds];
      v32 = v7 + CGRectGetWidth(v60) + 4.0;
      [v13 bounds];
      v33 = v32 + CGRectGetWidth(v61) + 8.0;
      [v10 frame];
      [v10 setFrame_];
      [v13 frame];
      MinX = CGRectGetMinX(v62);
      [v12 bounds];
      v35 = MinX + CGRectGetWidth(v63) * -0.5 + -4.0;
      [v13 center];
      [v12 setCenter_];
      v36 = *(v1 + OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_titleDateContainer);
      [v12 bounds];
      Height = CGRectGetHeight(v64);
      [v13 bounds];
      v38 = CGRectGetHeight(v65);
      if (Height > v38)
      {
        v38 = Height;
      }

      [v36 setFrame_];
      [v36 bounds];
      return v39;
    }

    else
    {
      return sub_220E36828(0, a1);
    }
  }

  else
  {
    v17 = *(v1 + OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_titleButton);
    [v17 sizeToFit];
    [v10 sizeToFit];
    v18 = *(v1 + OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_temporalityFilter);
    [v18 sizeToFit];
    [v17 frame];
    [v17 setFrame_];
    [v17 frame];
    v19 = CGRectGetMaxX(v45) + 8.0;
    [v17 frame];
    v21 = v20;
    [v10 frame];
    [v10 setFrame_];
    v22 = *(v1 + OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_titleDateContainer);
    [v17 bounds];
    CGRectGetWidth(v46);
    [v10 bounds];
    CGRectGetWidth(v47);
    [v17 frame];
    CGRectGetMaxY(v48);
    [v10 frame];
    CGRectGetMaxY(v49);
    [v22 bounds];
    [v22 setBounds_];
    v23 = *(v1 + OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_verticalPadding);
    [v22 bounds];
    [v22 setCenter_];
    v24 = *(v1 + OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_playPauseButton);
    [v24 frame];
    v25 = v7 + CGRectGetMaxX(v51);
    v26 = *(v1 + OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_bar);
    [v26 sizeToFit];
    [v22 frame];
    v27 = CGRectGetMaxY(v52) + 8.0;
    [v26 bounds];
    [v26 setFrame_];
    [v24 bounds];
    v28 = v7 + CGRectGetWidth(v54) * 0.5;
    [v24 setCenter_];
    [v18 bounds];
    v29 = v8 - CGRectGetWidth(v55) * 0.5;
    [v18 setCenter_];
    [v22 bounds];
    CGRectGetHeight(v56);
    [v24 bounds];
    CGRectGetHeight(v57);
    [v26 bounds];
    CGRectGetHeight(v58);
    sub_220E3B480(v6, type metadata accessor for MapScrubberOverlayViewModel);
  }

  return a1;
}

double sub_220E378A4()
{
  type metadata accessor for MapScrubberOverlayViewModel(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v1, v2);
  OUTLINED_FUNCTION_3();
  v5 = v4 - v3;
  v6 = OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_model;
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_1_9();
  sub_220E3B420(v0 + v6, v5, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_0_4();
    sub_220E3B480(v5, v8);
    v9 = OUTLINED_FUNCTION_8_2();
    return sub_220E371B0(v9);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_8_2();
    v10 = sub_220E36828(v12, v11);
    OUTLINED_FUNCTION_0_4();
    sub_220E3B480(v5, v13);
  }

  return v10;
}

void sub_220E379FC()
{
  if (*(v0 + OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_menuWasOpened) == 1)
  {
    *(v0 + OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_menuWasOpened) = 0;
    v1 = *(v0 + OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_titleButton);
    [v1 setMenu_];
    if (sub_220E37ACC())
    {
      sub_220E1966C(0, &qword_27CF9CAE8);
      sub_220E37B18();
      v2 = sub_220FC3190();
      [v1 setMenu_];
    }
  }
}

BOOL sub_220E37ACC()
{
  if (sub_220FC2300())
  {
    return 0;
  }

  sub_220E354A0(&v1);
  return v1 != 6 && v1 - 6 < 0xFFFFFFFD;
}

uint64_t sub_220E37B18()
{
  v1 = v0;
  v2 = type metadata accessor for MapScrubberOverlayViewModel(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_220E354A0(v16);
  if (v16[0] == 6 || v16[0] - 3 < 3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9DBB0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_220FC8F40;
    sub_220E1966C(0, &qword_27CF9DBE0);
    *(v6 + 32) = sub_220FC3260();
  }

  else
  {
    v7 = OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_model;
    swift_beginAccess();
    sub_220E3B420(v1 + v7, v5, type metadata accessor for MapScrubberOverlayViewModel);
    v8 = sub_220E5C120();
    v10 = v9;
    sub_220E3B480(v5, type metadata accessor for MapScrubberOverlayViewModel);
    sub_220E383C4(v8, v10 & 1);
    sub_220E1966C(0, &qword_2812C5B50);
    sub_220F349B0();
    sub_220E1966C(0, &qword_27CF9DBE0);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = sub_220FC3260();
    if (qword_2812C5B30 != -1)
    {
      swift_once();
    }

    v12 = qword_2812CE4B0;
    sub_220FBFF80();

    sub_220FC2720();

    sub_220F349B0();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = sub_220FC3260();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9DBB0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_220FC8FA0;
    *(v6 + 32) = v11;
    *(v6 + 40) = v13;
  }

  return v6;
}

uint64_t sub_220E37FA4(uint64_t result, double a2, double a3, double a4)
{
  if (a2 <= a3)
  {
    a2 = a3;
  }

  if (a2 <= a4)
  {
    a2 = a4;
  }

  v4 = *(result + 16);
  if (v4)
  {
    v5 = (result + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      if (a2 <= v6)
      {
        a2 = v7;
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

id sub_220E37FD8()
{
  v1 = v0;
  v2 = sub_220E37ACC();
  v3 = *&v0[OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_titleButton];
  if (v2)
  {
    [*&v0[OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_titleButton] setShowsMenuAsPrimaryAction_];
    [v3 setChangesSelectionAsPrimaryAction_];
    [v3 setUserInteractionEnabled_];
    sub_220E1966C(0, &qword_27CF9CAE8);
    sub_220E37B18();
    v4 = sub_220FC3190();
    [v3 setMenu_];
  }

  else
  {
    [*&v0[OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_titleButton] setShowsMenuAsPrimaryAction_];
    [v3 setChangesSelectionAsPrimaryAction_];
    [v3 setUserInteractionEnabled_];
    sub_220E385A4();
    if (v5)
    {
      v6 = sub_220FC26C0();
    }

    else
    {
      v6 = 0;
    }

    [v3 setTitle:v6 forState:0];

    [v3 setMenu_];
  }

  return [v1 setNeedsLayout];
}

void sub_220E38144()
{
  sub_220E354A0(v9);
  v1 = LOBYTE(v9[0]);
  v2 = *(v0 + OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_temporalityFilter);
  if (LOBYTE(v9[0]) - 3 >= 4)
  {
    [*(v0 + OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_temporalityFilter) setHidden_];
    [v2 setSelectedSegmentIndex_];
    if ([v2 accessibilityElementAtIndex_])
    {
      sub_220FC3410();
      swift_unknownObjectRelease();
    }

    else
    {
      v7 = 0u;
      v8 = 0u;
    }

    v9[0] = v7;
    v9[1] = v8;
    if (*(&v8 + 1))
    {
      sub_220E1966C(0, &qword_2812C5B78);
      if (swift_dynamicCast())
      {
        sub_220E3B108(v6);
        if (v4)
        {
          v5 = sub_220FC26C0();

LABEL_14:
          [v2 setAccessibilityValue_];

          return;
        }
      }
    }

    else
    {
      sub_220E3B2DC(v9, &unk_27CF9D6B0);
    }

    v5 = 0;
    goto LABEL_14;
  }

  v3 = *(v0 + OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_temporalityFilter);

  [v3 setHidden_];
}

id sub_220E382E0(char a1)
{
  if (a1)
  {
    if (qword_27CF9C088 != -1)
    {
      swift_once();
    }

    v1 = &qword_27CFAF4F0;
  }

  else if (sub_220FC0290())
  {
    if (qword_27CF9C090 != -1)
    {
      swift_once();
    }

    v1 = &qword_27CF9E360;
  }

  else
  {
    if (qword_27CF9C098 != -1)
    {
      swift_once();
    }

    v1 = &qword_27CF9E368;
  }

  v2 = *v1;

  return v2;
}

uint64_t sub_220E383C4(uint64_t a1, char a2)
{
  if (a2)
  {
    if (qword_2812C5B30 != -1)
    {
      swift_once();
    }

    v2 = qword_2812CE4B0;
    v3 = sub_220FBFF80();

    return v3;
  }

  else
  {
    if (qword_2812C5B30 != -1)
    {
      swift_once();
    }

    v6 = qword_2812CE4B0;
    sub_220FBFF80();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EBD0);
    v7 = swift_allocObject();
    v8 = MEMORY[0x277D83B88];
    *(v7 + 16) = xmmword_220FC8E30;
    v9 = MEMORY[0x277D83C10];
    *(v7 + 56) = v8;
    *(v7 + 64) = v9;
    *(v7 + 32) = a1;
    v10 = sub_220FC26D0();

    return v10;
  }
}

uint64_t sub_220E385A4()
{
  sub_220E354A0(&v4);
  if (v4 - 3 >= 2 && v4 != 6)
  {
    if (v4 == 5)
    {
      if (qword_2812C5B30 == -1)
      {
        goto LABEL_12;
      }

      goto LABEL_14;
    }

    if (sub_220FC2300())
    {
      if (qword_2812C5B30 == -1)
      {
LABEL_12:
        v2 = qword_2812CE4B0;
        v1 = sub_220FBFF80();

        return v1;
      }

LABEL_14:
      swift_once();
      goto LABEL_12;
    }
  }

  return 0;
}

uint64_t sub_220E38734(uint64_t a1)
{
  v2 = sub_220FC02B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_220E341B8();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = OBJC_IVAR____TtC11WeatherMaps21MapScrubberOverlayBar_current;
    swift_beginAccess();
    (*(v3 + 16))(v6, a1 + v8, v2);
    sub_220EE4790(v6, 1);
    (*(v3 + 8))(v6, v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_220E388F4()
{
  v0 = type metadata accessor for ScrubberStore.ViewModel(0);
  v2 = MEMORY[0x28223BE20](v0, v1);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v13[-v6];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = sub_220FAEE64();
    v11 = *(v9 + OBJC_IVAR____TtC11WeatherMaps29ScrubberOverlayViewController_store);
    v12 = OBJC_IVAR____TtC11WeatherMaps13ScrubberStore_viewModel;
    swift_beginAccess();
    sub_220E3B420(v11 + v12, v7, type metadata accessor for ScrubberStore.ViewModel);
    v7[*(v0 + 44)] = v10;
    sub_220E3B420(v7, v4, type metadata accessor for ScrubberStore.ViewModel);
    sub_220EE3AE8(v4);
    sub_220E3B480(v7, type metadata accessor for ScrubberStore.ViewModel);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_220E38AD8()
{
  sub_220E34BF4((*(v0 + OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_representsIsPlaying) & 1) == 0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_220EE46C8();
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_220E38BAC()
{
  v1 = *(v0 + OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_temporalityFilter);
  if ([v1 selectedSegmentIndex])
  {
    if ([v1 selectedSegmentIndex] != 1)
    {
      goto LABEL_6;
    }

    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  sub_220E38D0C(v2);
LABEL_6:
  if ([v1 accessibilityElementAtIndex_])
  {
    sub_220FC3410();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (!*(&v7 + 1))
  {
    sub_220E3B2DC(v8, &unk_27CF9D6B0);
LABEL_14:
    v4 = 0;
    goto LABEL_15;
  }

  sub_220E1966C(0, &qword_2812C5B78);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_220E3B108(v5);
  if (!v3)
  {
    goto LABEL_14;
  }

  v4 = sub_220FC26C0();

LABEL_15:
  [v1 setAccessibilityValue_];
}

uint64_t sub_220E38D0C(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_5_1();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = a1;
    sub_220F95D74(v1, &v4);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_220E38DC4()
{
  *(v0 + OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_menuWasOpened) = 1;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
  }

  return swift_endAccess();
}

void sub_220E38E94(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  OUTLINED_FUNCTION_5_1();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_220E38D0C(a3);
  }
}

uint64_t sub_220E38EE8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for MapScrubberOverlayViewModel.Active(0);
  return sub_220E38F3C(v3, a2);
}

uint64_t sub_220E38F3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_220FC04B0();
  v28 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_220FC02B0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v25 - v17;
  result = type metadata accessor for MapScrubberOverlayViewModel.Labels(0);
  if (*(*(v3 + *(result + 20)) + 16) <= a1)
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v10);
  }

  else if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v20 = result;
    v26 = v6;
    v27 = a2;
    sub_220FC01C0();
    sub_220FC0270();
    v21 = *(v11 + 8);
    v21(v14, v10);
    if (*(v3 + *(v20 + 24)))
    {
      sub_220FC04A0();
      v22 = v27;
      sub_220FC01A0();
      (*(v28 + 8))(v9, v26);
      v21(v18, v10);
      v23 = v22;
    }

    else
    {
      v24 = v27;
      (*(v11 + 32))(v27, v18, v10);
      v23 = v24;
    }

    return __swift_storeEnumTagSinglePayload(v23, 0, 1, v10);
  }

  return result;
}

void sub_220E391D8(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a3;
  v7 = MEMORY[0x277D84F90];
  while (a4 != v6)
  {
    if (a4 < a3)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      return;
    }

    if (v6 >= a4)
    {
      goto LABEL_16;
    }

    v19 = v6;
    a1(&v17, &v19);
    if (v4)
    {

      return;
    }

    v8 = v18;
    if (v18)
    {
      v9 = v17;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_220F36F34(0, *(v7 + 16) + 1, 1, v7);
        v7 = v13;
      }

      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_220F36F34(v10 > 1, v11 + 1, 1, v7);
        v7 = v14;
      }

      *(v7 + 16) = v11 + 1;
      v12 = v7 + 16 * v11;
      *(v12 + 32) = v9;
      *(v12 + 40) = v8;
    }

    ++v6;
  }
}

void sub_220E3930C(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = a3;
  v9 = MEMORY[0x277D84F90];
  while (a4 != v8)
  {
    if (a4 < a3)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      return;
    }

    if (v8 >= a4)
    {
      goto LABEL_16;
    }

    v16 = v8;
    v7(&v15, &v16);
    if (v4)
    {

      return;
    }

    v10 = v15;
    if (v15 != 4)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_220F36F64();
        v9 = v12;
      }

      v11 = *(v9 + 16);
      if (v11 >= *(v9 + 24) >> 1)
      {
        sub_220F36F64();
        v9 = v13;
      }

      *(v9 + 16) = v11 + 1;
      *(v9 + v11 + 32) = v10;
      v7 = a1;
    }

    ++v8;
  }
}

void sub_220E39444(void (*a1)(void, __n128), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EBC0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v30 - v10;
  v12 = sub_220FC02B0();
  MEMORY[0x28223BE20](v12, v13);
  v36 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15, v16);
  v30 = &v30 - v18;
  v31 = v19;
  v35 = (v19 + 32);
  v20 = MEMORY[0x277D84F90];
  v21 = a3;
  v33 = a1;
  v34 = a3;
  v32 = v22;
  while (a4 != v21)
  {
    if (a4 < a3)
    {
      __break(1u);
LABEL_17:
      __break(1u);
      return;
    }

    if (v21 >= a4)
    {
      goto LABEL_17;
    }

    v38 = v21;
    a1(&v38, v17);
    if (v4)
    {

      return;
    }

    if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
    {
      sub_220E3B2DC(v11, &qword_27CF9EBC0);
    }

    else
    {
      v23 = *v35;
      v24 = v30;
      (*v35)(v30, v11, v12);
      v23(v36, v24, v12);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_220F36F8C(0, *(v20 + 16) + 1, 1, v20);
        v20 = v28;
      }

      v26 = *(v20 + 16);
      v25 = *(v20 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_220F36F8C(v25 > 1, v26 + 1, 1, v20);
        v20 = v29;
      }

      *(v20 + 16) = v26 + 1;
      v27 = v20 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v26;
      v12 = v32;
      v23(v27, v36, v32);
      a1 = v33;
      a3 = v34;
    }

    ++v21;
  }
}

uint64_t sub_220E39710@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CD38);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v4, v5);
  OUTLINED_FUNCTION_4();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9, v10);
  v48 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EBC0);
  MEMORY[0x28223BE20](v12 - 8, v13);
  OUTLINED_FUNCTION_4();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v45 - v19;
  v21 = sub_220FC02B0();
  OUTLINED_FUNCTION_6();
  v23 = v22;
  MEMORY[0x28223BE20](v24, v25);
  OUTLINED_FUNCTION_4();
  v28 = (v26 - v27);
  MEMORY[0x28223BE20](v29, v30);
  v32 = &v45 - v31;
  sub_220E38F3C(0, v20);
  if (__swift_getEnumTagSinglePayload(v20, 1, v21) == 1)
  {
    v16 = v20;
LABEL_5:
    sub_220E3B2DC(v16, &qword_27CF9EBC0);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CD18);
    v36 = a1;
    v37 = 1;
    return __swift_storeEnumTagSinglePayload(v36, v37, 1, v35);
  }

  v46 = v3;
  v47 = a1;
  v33 = *(v23 + 32);
  v33(v32, v20, v21);
  v34 = type metadata accessor for MapScrubberOverlayViewModel.Labels(0);
  sub_220E38F3C(*(*(v1 + *(v34 + 20)) + 16) - 1, v16);
  if (__swift_getEnumTagSinglePayload(v16, 1, v21) == 1)
  {
    (*(v23 + 8))(v32, v21);
    a1 = v47;
    goto LABEL_5;
  }

  v33(v28, v16, v21);
  sub_220E3AFE8();
  result = sub_220FC26A0();
  if (result)
  {
    v39 = v48;
    v33(v48, v32, v21);
    v40 = v46;
    v33((v39 + *(v46 + 48)), v28, v21);
    sub_220E3B334(v39, v8);
    v41 = *(v40 + 48);
    v42 = v47;
    v33(v47, v8, v21);
    v45 = *(v23 + 8);
    v45(v8 + v41, v21);
    sub_220E3B3A4(v39, v8, &qword_27CF9CD38);
    v43 = *(v40 + 48);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CD18);
    v33((v42 + *(v44 + 36)), (v8 + v43), v21);
    v45(v8, v21);
    v36 = v42;
    v37 = 0;
    v35 = v44;
    return __swift_storeEnumTagSinglePayload(v36, v37, 1, v35);
  }

  __break(1u);
  return result;
}

id sub_220E39AD4(uint64_t a1)
{
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CD40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220FC8E30;
  v4 = *(v1 + OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_playPauseButton);
  *(inited + 32) = v4;
  *(inited + 40) = xmmword_220FC8FB0;
  *(inited + 56) = xmmword_220FC8FC0;
  v5 = v4;
  [v5 bounds];
  v10 = UIEdgeInsetsInsetRect(v6, v7, v8, v9, -5.0, -8.0);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = OUTLINED_FUNCTION_8_2();
  [v18 v19];
  v27.x = v20;
  v27.y = v21;
  v28.origin.x = v10;
  v28.origin.y = v12;
  v28.size.width = v14;
  v28.size.height = v16;
  v22 = CGRectContainsPoint(v28, v27);

  if (v22)
  {
    swift_setDeallocating();
    sub_220E5610C();
  }

  else
  {

    swift_setDeallocating();
    sub_220E5610C();
    v23 = OUTLINED_FUNCTION_8_2();
    return objc_msgSendSuper2(v24, v25, a1, v23);
  }

  return v5;
}

uint64_t type metadata accessor for MapScrubberOverlayUIView()
{
  result = qword_27CF9CD00;
  if (!qword_27CF9CD00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220E39E68()
{
  result = sub_220FC0470();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for MapScrubberOverlayViewModel(319);
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MapScrubberOverlayViewModel.Labels.Precision(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MapScrubberOverlayUIView.ScrubberLayoutStyle(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_220E3A0F8()
{
  result = qword_27CF9CD10;
  if (!qword_27CF9CD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9CD10);
  }

  return result;
}

uint64_t sub_220E3A14C(uint64_t a1)
{
  v3 = sub_220FC0470();
  v30 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_220FBFEF0();
  v29 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EBC0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v27 - v13;
  v15 = sub_220FC02B0();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220E38F3C(a1, v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_220E3B2DC(v14, &qword_27CF9EBC0);
    return 4;
  }

  else
  {
    (*(v16 + 32))(v19, v14, v15);
    if (*(v1 + *(type metadata accessor for MapScrubberOverlayViewModel.Labels(0) + 24)))
    {
      (*(v16 + 8))(v19, v15);
      return 3;
    }

    else
    {
      sub_220FC0450();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CD30);
      v21 = sub_220FC0460();
      v22 = *(v21 - 8);
      v23 = *(v22 + 80);
      v28 = v3;
      v24 = (v23 + 32) & ~v23;
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_220FC8E30;
      (*(v22 + 104))(v25 + v24, *MEMORY[0x277CC99A0], v21);
      sub_220F9D290(v25);
      sub_220FC0430();

      (*(v30 + 8))(v6, v28);
      v20 = sub_220F62814();
      (*(v29 + 8))(v10, v7);
      (*(v16 + 8))(v19, v15);
    }
  }

  return v20;
}

uint64_t sub_220E3A528(uint64_t a1)
{
  v3 = sub_220FC0470();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_220FBFEF0();
  v42 = *(v8 - 8);
  v43 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EBC0);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v40 - v14;
  v16 = sub_220FC02B0();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220E38F3C(a1, v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    sub_220E3B2DC(v15, &qword_27CF9EBC0);
    return 0;
  }

  (*(v17 + 32))(v20, v15, v16);
  if ((*(v1 + *(type metadata accessor for MapScrubberOverlayViewModel.Labels(0) + 24)) & 1) == 0)
  {
    v41 = v17;
    sub_220FC0450();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CD30);
    v25 = sub_220FC0460();
    v26 = *(v25 - 8);
    v27 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_220FC8E30;
    (*(v26 + 104))(v28 + v27, *MEMORY[0x277CC99A0], v25);
    sub_220F9D290(v28);
    sub_220FC0430();

    (*(v4 + 8))(v7, v3);
    v29 = sub_220FBFEE0();
    v31 = v30;
    v32 = sub_220FC0290();
    if ((v31 & 1) != 0 || v29)
    {
      if (v32)
      {
        v33 = v41;
        if (qword_27CF9C0B0 != -1)
        {
          swift_once();
        }

        v34 = &qword_27CF9E380;
      }

      else
      {
        v33 = v41;
        if (qword_27CF9C0B8 != -1)
        {
          swift_once();
        }

        v34 = &qword_27CF9E388;
      }
    }

    else
    {
      if ((v32 & 1) == 0)
      {
        if (qword_27CF9C0A0 != -1)
        {
          swift_once();
        }

        v35 = qword_27CFAF4F8;
        v36 = sub_220FC01D0();
        v37 = [v35 stringFromDate_];
        v33 = v41;
        goto LABEL_28;
      }

      if (sub_220FC0290())
      {
        v33 = v41;
        if (qword_27CF9C0B0 != -1)
        {
          swift_once();
        }

        v34 = &qword_27CF9E380;
      }

      else
      {
        v33 = v41;
        if (qword_27CF9C0B8 != -1)
        {
          swift_once();
        }

        v34 = &qword_27CF9E388;
      }
    }

    v38 = *v34;
    v36 = sub_220FC01D0();
    v37 = [v38 stringFromDate_];

LABEL_28:
    v21 = sub_220FC2700();

    (*(v42 + 8))(v11, v43);
    (*(v33 + 8))(v20, v16);
    return v21;
  }

  if (qword_27CF9C0A0 != -1)
  {
    swift_once();
  }

  v22 = qword_27CFAF4F8;
  v23 = sub_220FC01D0();
  v24 = [v22 stringFromDate_];

  v21 = sub_220FC2700();
  (*(v17 + 8))(v20, v16);
  return v21;
}

id sub_220E3AB84()
{
  sub_220E1966C(0, &qword_27CF9CD20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9DBB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_220FC8FA0;
  v1 = objc_opt_self();
  *(v0 + 32) = [v1 labelColor];
  *(v0 + 40) = [v1 quaternaryLabelColor];
  result = sub_220E3AC48();
  qword_27CF9CC40 = result;
  return result;
}

id sub_220E3AC48()
{
  sub_220E1966C(0, &qword_2812C5B58);
  v0 = sub_220FC2960();

  v1 = [swift_getObjCClassFromMetadata() configurationWithPaletteColors_];

  return v1;
}

void sub_220E3ACCC()
{
  v0 = [objc_opt_self() secondarySystemFillColor];
  v1 = [objc_opt_self() configurationWithHierarchicalColor_];

  qword_27CF9CC48 = v1;
}

void sub_220E3AD98(uint64_t a1, uint64_t *a2, void **a3, void *a4)
{
  sub_220E1966C(0, &qword_2812C5B50);
  v7 = *a2;
  v8 = *MEMORY[0x277D76A08];
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = *a3;
  v10 = *MEMORY[0x277D74418];
  v11 = v9;
  v12 = sub_220F6DD88(0xD000000000000011, 0x8000000220FDBC90, v8, -1, v10, 0, v9, 2);

  *a4 = v12;
}

void sub_220E3AE8C()
{
  sub_220E1966C(0, &qword_2812C5B50);
  v0 = qword_27CF9C020;
  v1 = *MEMORY[0x277D76A08];
  if (v0 != -1)
  {
    swift_once();
  }

  v2 = qword_27CF9CC40;
  v3 = *MEMORY[0x277D74418];
  v4 = qword_27CF9CC40;
  v5 = sub_220F6DD88(0xD000000000000010, 0x8000000220FDBCB0, v1, -1, v3, 0, v2, 2);

  qword_27CFAF450 = v5;
}

uint64_t sub_220E3AF84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MapScrubberOverlayViewModel.Active(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_220E3AFE8()
{
  result = qword_2812CA290;
  if (!qword_2812CA290)
  {
    sub_220FC02B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CA290);
  }

  return result;
}

uint64_t sub_220E3B040(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_220E3B0C4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_220E3B108(void *a1)
{
  v2 = [a1 accessibilityLabel];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_220FC2700();

  return v3;
}

void sub_220E3B178(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v8 = sub_220FC26C0();

  [a5 insertSegmentWithTitle:v8 atIndex:a3 animated:a4 & 1];
}

uint64_t sub_220E3B1F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MapScrubberOverlayViewModel(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_220E3B274(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_7(a1);
  result = sub_220E3A528(v2);
  *v1 = result;
  v1[1] = v4;
  return result;
}

uint64_t sub_220E3B2A8(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_7(a1);
  result = sub_220E3A14C(v2);
  *v1 = result;
  return result;
}

uint64_t sub_220E3B2DC(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_220E3B334(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CD38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220E3B3A4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_2();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_220E3B420(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_220E3B480(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_220E3B4D8()
{
  result = qword_27CF9CD58;
  if (!qword_27CF9CD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9CD58);
  }

  return result;
}

id sub_220E3B52C(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
    v6 = *(v1 + v2);
    *(v1 + v2) = v5;
    v4 = v5;

    v3 = 0;
  }

  v7 = v3;
  return v4;
}

void sub_220E3B59C()
{
  v1 = sub_220E3B52C(&OBJC_IVAR____TtC11WeatherMaps29WeatherMapSnapshotDisplayView____lazy_storage___mapLayer);
  v2 = OBJC_IVAR____TtC11WeatherMaps29WeatherMapSnapshotDisplayView_cornerRadius;
  [v1 setCornerRadius_];

  v3 = sub_220E3B52C(&OBJC_IVAR____TtC11WeatherMaps29WeatherMapSnapshotDisplayView____lazy_storage___baseLayer);
  [v3 setCornerRadius_];

  v4 = sub_220E3B52C(&OBJC_IVAR____TtC11WeatherMaps29WeatherMapSnapshotDisplayView____lazy_storage___weatherOverlayLayer);
  [v4 setCornerRadius_];

  v5 = sub_220E3B52C(&OBJC_IVAR____TtC11WeatherMaps29WeatherMapSnapshotDisplayView____lazy_storage___effectOverlayLayer);
  [v5 setCornerRadius_];
}

id sub_220E3B664()
{
  v1 = sub_220E3B52C(&OBJC_IVAR____TtC11WeatherMaps29WeatherMapSnapshotDisplayView____lazy_storage___baseLayer);
  [v1 setContents_];

  v2 = sub_220E3B52C(&OBJC_IVAR____TtC11WeatherMaps29WeatherMapSnapshotDisplayView____lazy_storage___weatherOverlayLayer);
  [v2 setContents_];

  v3 = sub_220E3B52C(&OBJC_IVAR____TtC11WeatherMaps29WeatherMapSnapshotDisplayView____lazy_storage___effectOverlayLayer);
  [v3 setContents_];

  [*(v0 + OBJC_IVAR____TtC11WeatherMaps29WeatherMapSnapshotDisplayView____lazy_storage___baseLayer) setOpacity_];
  [*(v0 + OBJC_IVAR____TtC11WeatherMaps29WeatherMapSnapshotDisplayView____lazy_storage___weatherOverlayLayer) setOpacity_];
  v4 = *(v0 + OBJC_IVAR____TtC11WeatherMaps29WeatherMapSnapshotDisplayView____lazy_storage___effectOverlayLayer);

  return [v4 setOpacity_];
}

uint64_t sub_220E3B74C(uint64_t a1, int a2)
{
  v31 = a2;
  v4 = type metadata accessor for SnapshotManager.Options(0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + OBJC_IVAR____TtC11WeatherMaps29WeatherMapSnapshotDisplayView_needsSetup) == 1)
  {
    *(v2 + OBJC_IVAR____TtC11WeatherMaps29WeatherMapSnapshotDisplayView_needsSetup) = 0;
    sub_220E3B960();
  }

  v8 = sub_220E3B52C(&OBJC_IVAR____TtC11WeatherMaps29WeatherMapSnapshotDisplayView____lazy_storage___baseLayer);
  [v8 setContents_];

  v9 = type metadata accessor for SnapshotManager.Snapshot(0);
  v10 = a1 + v9[8];
  if (*v10)
  {
    v11 = *v10;
    v12 = sub_220E3B52C(&OBJC_IVAR____TtC11WeatherMaps29WeatherMapSnapshotDisplayView____lazy_storage___weatherOverlayLayer);
    [v12 setContents_];
  }

  v13 = *(v10 + 8);
  if (v13)
  {
    v14 = v13;
    v15 = sub_220E3B52C(&OBJC_IVAR____TtC11WeatherMaps29WeatherMapSnapshotDisplayView____lazy_storage___effectOverlayLayer);
    [v15 setContents_];
  }

  v16 = v9[10];
  v17 = a1 + v9[11];
  v18 = *v17;
  v19 = *(v17 + 8);
  v20 = *(v17 + 9);
  v21 = *(v17 + 16);
  v22 = *(v17 + 24);
  sub_220E3C780(a1 + v16, v7);
  v23 = *(v4 + 20);
  v24 = sub_220FC1040();
  v26 = v25;
  v27 = sub_220FC1070();
  (*(*(v27 - 8) + 8))(&v7[v23], v27);
  if (v20)
  {
    v28 = 256;
  }

  else
  {
    v28 = 0;
  }

  sub_220E3BAE8(v31 & 1, v18, v28 | v19, v21, v22, v24, v26);
}

void sub_220E3B960()
{
  v1 = [objc_opt_self() mainScreen];
  [v1 scale];
  v3 = v2;

  v4 = sub_220E3C19C();
  v5 = sub_220F43CDC(v4);
  for (i = 0; v5 != i; ++i)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x223D9CB30](i, v4);
    }

    else
    {
      if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v7 = *(v4 + 8 * i + 32);
    }

    v8 = v7;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    [v7 setContentsScale_];
    v9 = sub_220E3B52C(&OBJC_IVAR____TtC11WeatherMaps29WeatherMapSnapshotDisplayView____lazy_storage___mapLayer);
    [v9 addSublayer_];
  }

  v10 = [v0 layer];
  v11 = sub_220E3B52C(&OBJC_IVAR____TtC11WeatherMaps29WeatherMapSnapshotDisplayView____lazy_storage___mapLayer);
  [v10 addSublayer_];

  sub_220E3C2D4();
}

void sub_220E3BAE8(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v8 = v7;
  if (qword_2812C5EF8 != -1)
  {
    swift_once();
  }

  v14 = sub_220FC17A0();
  __swift_project_value_buffer(v14, qword_2812C5F00);

  v15 = sub_220FC1780();
  v16 = sub_220FC2E30();

  v47 = a1;
  if (os_log_type_enabled(v15, v16))
  {
    v17 = a2 == 1;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v50 = v19;
    *v18 = 141558531;
    *(v18 + 4) = 1752392040;
    *(v18 + 12) = 2081;
    *(v18 + 14) = sub_220E20FF8(a6, a7, &v50);
    *(v18 + 22) = 1026;
    *(v18 + 24) = v17;
    _os_log_impl(&dword_220E15000, v15, v16, "Snapshot: Configuring layers. location=%{private,mask.hash}s, IsLightMode=%{BOOL,public}d", v18, 0x1Cu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x223D9DDF0](v19, -1, -1);
    MEMORY[0x223D9DDF0](v18, -1, -1);
  }

  v20 = objc_opt_self();
  [v20 begin];
  v46 = v20;
  [v20 setDisableActions_];
  v21 = sub_220E3B52C(&OBJC_IVAR____TtC11WeatherMaps29WeatherMapSnapshotDisplayView____lazy_storage___weatherOverlayLayer);
  [v21 setOpacity_];

  v49 = v8;
  v22 = sub_220E3B52C(&OBJC_IVAR____TtC11WeatherMaps29WeatherMapSnapshotDisplayView____lazy_storage___effectOverlayLayer);
  [v22 setOpacity_];

  v23 = *(a5 + 16);
  if (v23)
  {
    v24 = (v8 + OBJC_IVAR____TtC11WeatherMaps29WeatherMapSnapshotDisplayView____lazy_storage___effectOverlayLayer);
    v25 = (v8 + OBJC_IVAR____TtC11WeatherMaps29WeatherMapSnapshotDisplayView____lazy_storage___weatherOverlayLayer);
    v26 = (a5 + 40);
    while (1)
    {
      v28 = *(v26 - 1);
      v27 = *v26 | (*(v26 + 4) << 32);
      *&v28 = v28;
      if ((v27 & 0x8000000000000000) != 0)
      {
        [*v25 setOpacity_];
        v33 = *v25;
        if ((v27 & 0x100000000) != 0)
        {
          sub_220FC2700();
        }

        else
        {
          sub_220EECCB4(v27);
          if (!v34)
          {
            v31 = v33;
            v35 = 0;
LABEL_19:
            [v31 setCompositingFilter_];
            v36 = v25;
            goto LABEL_20;
          }
        }

        v31 = v33;
        v35 = sub_220FC26C0();

        goto LABEL_19;
      }

      [*v24 setOpacity_];
      v29 = *v24;
      if ((v27 & 0x100000000) != 0)
      {
        break;
      }

      sub_220EECCB4(v27);
      if (v30)
      {
        goto LABEL_15;
      }

      v31 = v29;
      v32 = 0;
LABEL_16:
      [v31 setCompositingFilter_];
      v36 = v24;
LABEL_20:

      swift_unknownObjectRelease();
      [*v36 setAllowsGroupBlending_];
      v26 += 2;
      if (!--v23)
      {
        goto LABEL_21;
      }
    }

    sub_220FC2700();
LABEL_15:
    v31 = v29;
    v32 = sub_220FC26C0();

    goto LABEL_16;
  }

LABEL_21:
  v37 = sub_220E3B52C(&OBJC_IVAR____TtC11WeatherMaps29WeatherMapSnapshotDisplayView____lazy_storage___mapLayer);
  [v37 opacity];
  v39 = v38;

  v40 = sub_220E3B52C(&OBJC_IVAR____TtC11WeatherMaps29WeatherMapSnapshotDisplayView____lazy_storage___baseLayer);
  LODWORD(v41) = 1.0;
  [v40 setOpacity_];

  v42 = OBJC_IVAR____TtC11WeatherMaps29WeatherMapSnapshotDisplayView____lazy_storage___mapLayer;
  LODWORD(v43) = 1.0;
  [*(v49 + OBJC_IVAR____TtC11WeatherMaps29WeatherMapSnapshotDisplayView____lazy_storage___mapLayer) setOpacity_];
  [v46 commit];
  if ((v47 & 1) != 0 && v39 == 0.0)
  {
    sub_220E3C7E4();
    v44 = sub_220E3C264(0x7974696361706FLL, 0xE700000000000000);
    v45 = sub_220FC2CA0();
    [v44 setFromValue_];

    v48 = v44;
    [v48 setDuration_];
    [v48 setRemovedOnCompletion_];

    sub_220E3C828(v48, 0x6E4965646166, 0xE600000000000000, *(v49 + v42));
  }
}

void sub_220E3BFD4()
{
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, sel_layoutSubviews);
  v1 = objc_opt_self();
  [v1 begin];
  [v1 setDisableActions_];
  v2 = sub_220E3B52C(&OBJC_IVAR____TtC11WeatherMaps29WeatherMapSnapshotDisplayView____lazy_storage___mapLayer);
  OUTLINED_FUNCTION_0_5();
  [v2 setFrame_];

  v3 = *&v0[OBJC_IVAR____TtC11WeatherMaps29WeatherMapSnapshotDisplayView____lazy_storage___mapLayer];
  [v0 center];
  [v3 setPosition_];

  OUTLINED_FUNCTION_0_5();
  v4 = CGRectGetWidth(v12) * 0.5;
  OUTLINED_FUNCTION_0_5();
  v5 = CGRectGetHeight(v13) * 0.5;
  v6 = sub_220E3C19C();
  v7 = sub_220F43CDC(v6);
  for (i = 0; ; ++i)
  {
    if (v7 == i)
    {

      [v1 commit];
      return;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x223D9CB30](i, v6);
    }

    else
    {
      if (i >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v9 = *(v6 + 8 * i + 32);
    }

    v10 = v9;
    if (__OFADD__(i, 1))
    {
      break;
    }

    OUTLINED_FUNCTION_0_5();
    [v10 setFrame_];
    [v10 setPosition_];
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t sub_220E3C19C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9DBB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_220FC9160;
  *(v0 + 32) = sub_220E3B52C(&OBJC_IVAR____TtC11WeatherMaps29WeatherMapSnapshotDisplayView____lazy_storage___baseLayer);
  *(v0 + 40) = sub_220E3B52C(&OBJC_IVAR____TtC11WeatherMaps29WeatherMapSnapshotDisplayView____lazy_storage___weatherOverlayLayer);
  *(v0 + 48) = sub_220E3B52C(&OBJC_IVAR____TtC11WeatherMaps29WeatherMapSnapshotDisplayView____lazy_storage___effectOverlayLayer);
  return v0;
}

id sub_220E3C264(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_220FC26C0();
  }

  else
  {
    v2 = 0;
  }

  v3 = [swift_getObjCClassFromMetadata() animationWithKeyPath_];

  return v3;
}

void sub_220E3C2D4()
{
  v1 = [objc_opt_self() mainScreen];
  [v1 scale];
  v3 = v2;

  v4 = sub_220E3C19C();
  v5 = sub_220F43CDC(v4);
  v6 = 0;
  v7 = *MEMORY[0x277CDA710];
  while (v5 != v6)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x223D9CB30](v6, v4);
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v8 = *(v4 + 8 * v6 + 32);
    }

    v9 = v8;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    [v8 setContentsGravity_];
    [v9 setContentsScale_];
    [v9 setRasterizationScale_];
    [v9 setOpacity_];

    ++v6;
  }

  v10 = sub_220E3B52C(&OBJC_IVAR____TtC11WeatherMaps29WeatherMapSnapshotDisplayView____lazy_storage___mapLayer);
  [v10 setContentsScale_];

  v11 = OBJC_IVAR____TtC11WeatherMaps29WeatherMapSnapshotDisplayView____lazy_storage___mapLayer;
  [*(v0 + OBJC_IVAR____TtC11WeatherMaps29WeatherMapSnapshotDisplayView____lazy_storage___mapLayer) setRasterizationScale_];
  [*(v0 + v11) setOpacity_];
  [*(v0 + v11) setBorderWidth_];
  v12 = *(v0 + v11);
  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 blackColor];
  v16 = [v15 colorWithAlphaComponent_];

  v17 = [v16 CGColor];
  [v14 setBorderColor_];
}

id sub_220E3C538(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC11WeatherMaps29WeatherMapSnapshotDisplayView____lazy_storage___mapLayer] = 0;
  *&v4[OBJC_IVAR____TtC11WeatherMaps29WeatherMapSnapshotDisplayView____lazy_storage___baseLayer] = 0;
  *&v4[OBJC_IVAR____TtC11WeatherMaps29WeatherMapSnapshotDisplayView____lazy_storage___weatherOverlayLayer] = 0;
  *&v4[OBJC_IVAR____TtC11WeatherMaps29WeatherMapSnapshotDisplayView____lazy_storage___effectOverlayLayer] = 0;
  v4[OBJC_IVAR____TtC11WeatherMaps29WeatherMapSnapshotDisplayView_needsSetup] = 1;
  *&v4[OBJC_IVAR____TtC11WeatherMaps29WeatherMapSnapshotDisplayView_cornerRadius] = 0;
  v11.receiver = v4;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_initWithFrame_, a1, a2, a3, a4);
}

id sub_220E3C610(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC11WeatherMaps29WeatherMapSnapshotDisplayView____lazy_storage___mapLayer] = 0;
  *&v1[OBJC_IVAR____TtC11WeatherMaps29WeatherMapSnapshotDisplayView____lazy_storage___baseLayer] = 0;
  *&v1[OBJC_IVAR____TtC11WeatherMaps29WeatherMapSnapshotDisplayView____lazy_storage___weatherOverlayLayer] = 0;
  *&v1[OBJC_IVAR____TtC11WeatherMaps29WeatherMapSnapshotDisplayView____lazy_storage___effectOverlayLayer] = 0;
  v1[OBJC_IVAR____TtC11WeatherMaps29WeatherMapSnapshotDisplayView_needsSetup] = 1;
  *&v1[OBJC_IVAR____TtC11WeatherMaps29WeatherMapSnapshotDisplayView_cornerRadius] = 0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

uint64_t sub_220E3C780(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SnapshotManager.Options(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_220E3C7E4()
{
  result = qword_27CF9CDA8;
  if (!qword_27CF9CDA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CF9CDA8);
  }

  return result;
}

void sub_220E3C828(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_220FC26C0();

  [a4 addAnimation:a1 forKey:v6];
}

uint64_t sub_220E3C8C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  *(v5 + 56) = 1.0 / a4;
  *(v5 + 48) = a4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 40) = a5;
  return v5;
}

uint64_t getEnumTagSinglePayload for Point(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy36_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_220E3C96C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 36))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_220E3C98C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
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

  *(result + 36) = v3;
  return result;
}

uint64_t Assembly.__allocating_init()()
{
  v0 = swift_allocObject();
  Assembly.init()();
  return v0;
}

uint64_t Assembly.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

void sub_220E3CA88()
{
  v1 = v0;
  v2 = type metadata accessor for WeatherMapAnnotationContentViewModel(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_220E3CC28(&OBJC_IVAR____TtC11WeatherMaps31WeatherMapAnnotationContentView____lazy_storage___backgroundView, type metadata accessor for WeatherMapAnnotationContentBackgroundView, sub_220F9B48C);
  v7 = OBJC_IVAR____TtC11WeatherMaps31WeatherMapAnnotationContentView_viewModel;
  swift_beginAccess();
  sub_220E3D2E4(v1 + v7, v5);
  sub_220F9AF24(v5);

  v8 = sub_220E3CC28(&OBJC_IVAR____TtC11WeatherMaps31WeatherMapAnnotationContentView____lazy_storage___foregroundView, type metadata accessor for WeatherMapAnnotationContentForegroundView, sub_220FB755C);
  sub_220E3D2E4(v1 + v7, v5);
  sub_220FB72CC(v5);
}

uint64_t sub_220E3CBBC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11WeatherMaps31WeatherMapAnnotationContentView_viewModel;
  swift_beginAccess();
  sub_220E3D224(a1, v1 + v3);
  swift_endAccess();
  sub_220E3CA88();
  return sub_220E3D288(a1);
}

id sub_220E3CC28(uint64_t *a1, uint64_t (*a2)(void), uint64_t (*a3)(char *))
{
  v7 = v3;
  v8 = type metadata accessor for WeatherMapAnnotationContentViewModel(0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = *(v7 + v12);
  if (v13)
  {
    v14 = *(v7 + v12);
  }

  else
  {
    v15 = OBJC_IVAR____TtC11WeatherMaps31WeatherMapAnnotationContentView_viewModel;
    swift_beginAccess();
    sub_220E3D2E4(v7 + v15, v11);
    v16 = objc_allocWithZone(a2(0));
    v17 = a3(v11);
    v18 = *(v7 + v12);
    *(v7 + v12) = v17;
    v14 = v17;

    v13 = 0;
  }

  v19 = v13;
  return v14;
}

id sub_220E3CD30(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC11WeatherMaps31WeatherMapAnnotationContentView____lazy_storage___backgroundView] = 0;
  *&v2[OBJC_IVAR____TtC11WeatherMaps31WeatherMapAnnotationContentView____lazy_storage___foregroundView] = 0;
  *&v2[OBJC_IVAR____TtC11WeatherMaps31WeatherMapAnnotationContentView_annotation] = a1;
  sub_220E3D2E4(a2, &v2[OBJC_IVAR____TtC11WeatherMaps31WeatherMapAnnotationContentView_viewModel]);
  v9.receiver = v2;
  v9.super_class = ObjectType;
  v6 = a1;
  v7 = objc_msgSendSuper2(&v9, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_220E3CDF8();

  sub_220E3D288(a2);
  return v7;
}

void sub_220E3CDF8()
{
  v1 = sub_220E3CC28(&OBJC_IVAR____TtC11WeatherMaps31WeatherMapAnnotationContentView____lazy_storage___backgroundView, type metadata accessor for WeatherMapAnnotationContentBackgroundView, sub_220F9B48C);
  [v0 addSubview_];

  v2 = sub_220E3CC28(&OBJC_IVAR____TtC11WeatherMaps31WeatherMapAnnotationContentView____lazy_storage___foregroundView, type metadata accessor for WeatherMapAnnotationContentForegroundView, sub_220FB755C);
  [v0 addSubview_];
}

void sub_220E3CED0()
{
  *(v0 + OBJC_IVAR____TtC11WeatherMaps31WeatherMapAnnotationContentView____lazy_storage___backgroundView) = 0;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps31WeatherMapAnnotationContentView____lazy_storage___foregroundView) = 0;
  sub_220FC3740();
  __break(1u);
}

id sub_220E3CF5C()
{
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, sel_layoutSubviews);
  v1 = sub_220E3CC28(&OBJC_IVAR____TtC11WeatherMaps31WeatherMapAnnotationContentView____lazy_storage___backgroundView, type metadata accessor for WeatherMapAnnotationContentBackgroundView, sub_220F9B48C);
  [v1 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v12.origin.x = v3;
  v12.origin.y = v5;
  v12.size.width = v7;
  v12.size.height = v9;
  v13 = CGRectOffset(v12, 2.0, 2.0);
  return [v0 setFrame_];
}

uint64_t type metadata accessor for WeatherMapAnnotationContentView()
{
  result = qword_27CF9CDD0;
  if (!qword_27CF9CDD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220E3D178()
{
  result = type metadata accessor for WeatherMapAnnotationContentViewModel(319);
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_220E3D224(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherMapAnnotationContentViewModel(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_220E3D288(uint64_t a1)
{
  v2 = type metadata accessor for WeatherMapAnnotationContentViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220E3D2E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherMapAnnotationContentViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_220E3D348(void *a1, uint64_t a2, uint64_t a3)
{
  v3[5] = 0;
  v3[2] = a1;
  sub_220E3D588(a1);
  MEMORY[0x223D9BD60](46, 0xE100000000000000);
  v5 = sub_220FAD9CC();
  MEMORY[0x223D9BD60](v5);

  sub_220E3D598(a1);
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

id sub_220E3D3CC()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 40);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x277CD9E08]) init];
    v4 = sub_220FC26C0();
    [v3 setGroupName_];

    [v3 setCaptureOnly_];
    [v3 setScale_];
    v5 = *(v0 + 40);
    *(v0 + 40) = v3;
    v2 = v3;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

id sub_220E3D488(uint64_t a1, char a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = objc_allocWithZone(type metadata accessor for BackgroundEffectView());
  sub_220E3D588(v5);

  return sub_220FADE6C(v5, v6, v7, a1, a2 & 1);
}

uint64_t sub_220E3D500()
{
  sub_220E3D598(*(v0 + 16));

  return v0;
}

uint64_t sub_220E3D530()
{
  sub_220E3D500();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

id sub_220E3D588(id result)
{
  if (result >= 5)
  {
    return result;
  }

  return result;
}

void sub_220E3D598(id a1)
{
  if (a1 >= 5)
  {
  }
}

uint64_t sub_220E3D5D0()
{
  sub_220FC3A40();
  MEMORY[0x223D9CFA0](0);
  return sub_220FC3A90();
}

uint64_t sub_220E3D61C()
{
  sub_220FC3A40();
  MEMORY[0x223D9CFA0](0);
  return sub_220FC3A90();
}

uint64_t sub_220E3D66C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v90 = *MEMORY[0x277D85DE8];
  *(v4 + OBJC_IVAR____TtC11WeatherMaps19HashOverlayRenderer_depthStencilTexture) = 0;
  *(v4 + OBJC_IVAR____TtC11WeatherMaps19HashOverlayRenderer_depthTexture) = 0;
  *(v4 + OBJC_IVAR____TtC11WeatherMaps19HashOverlayRenderer_stencilTexture) = 0;
  *(v4 + OBJC_IVAR____TtC11WeatherMaps19HashOverlayRenderer_multisampleTexture) = 0;
  v81 = OBJC_IVAR____TtC11WeatherMaps19HashOverlayRenderer_imrComputePipelineState;
  *(v4 + OBJC_IVAR____TtC11WeatherMaps19HashOverlayRenderer_imrComputePipelineState) = 0;
  v8 = (v4 + OBJC_IVAR____TtC11WeatherMaps19HashOverlayRenderer_imrThreadgroupSize);
  v8[1] = 0;
  v8[2] = 0;
  *v8 = 0;
  v79 = v8;
  *(v8 + 24) = 1;
  v9 = v4 + OBJC_IVAR____TtC11WeatherMaps19HashOverlayRenderer_imrThreadgroupInGrid;
  *v9 = 0;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  v77 = v9;
  *(v9 + 24) = 1;
  *(v4 + OBJC_IVAR____TtC11WeatherMaps19HashOverlayRenderer_tileResolvePipelineState) = 0;
  *(v4 + OBJC_IVAR____TtC11WeatherMaps19HashOverlayRenderer_vertexBuffers) = MEMORY[0x277D84F90];
  *(v4 + OBJC_IVAR____TtC11WeatherMaps19HashOverlayRenderer_currentVertexBufferIndex) = 0;
  v80 = OBJC_IVAR____TtC11WeatherMaps19HashOverlayRenderer_inflightSemaphore;
  *(v4 + v80) = dispatch_semaphore_create(6);
  v10 = OBJC_IVAR____TtC11WeatherMaps19HashOverlayRenderer_tilesInView;
  sub_220E304BC();
  *(v4 + v10) = sub_220FC2600();
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = OUTLINED_FUNCTION_4_2();
  v13(v12, v11);
  OUTLINED_FUNCTION_1_10();
  v15 = OBJC_IVAR____TtC11WeatherMaps19HashOverlayRenderer_metalDevice;
  *(v4 + OBJC_IVAR____TtC11WeatherMaps19HashOverlayRenderer_metalDevice) = *(v14 + 16);
  swift_unknownObjectRetain();
  __swift_destroy_boxed_opaque_existential_0(v89);
  if (DeviceIsVerySlow())
  {
    *(v4 + OBJC_IVAR____TtC11WeatherMaps19HashOverlayRenderer_msaaType) = 0;
LABEL_6:
    OUTLINED_FUNCTION_3_2();
    goto LABEL_7;
  }

  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_220F44860();
  swift_unknownObjectRelease();
  *(v4 + OBJC_IVAR____TtC11WeatherMaps19HashOverlayRenderer_msaaType) = v16;
  if (!v16)
  {
    goto LABEL_6;
  }

  if (v16 == 1)
  {
    v17 = 1;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_2_7();
LABEL_7:
  v17 = sub_220FC3940();
LABEL_8:
  v84 = v15;
  v85 = a2;

  *(v4 + OBJC_IVAR____TtC11WeatherMaps19HashOverlayRenderer_tileShaderSupported) = v17 & 1;
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  v20 = (*(v19 + 56))(v18, v19);
  v21.i64[0] = 1;
  v22.i64[0] = v20;
  *(v4 + OBJC_IVAR____TtC11WeatherMaps19HashOverlayRenderer_lineColor) = vbslq_s8(vdupq_lane_s64(vceqq_s64(v22, v21).i64[0], 0), xmmword_220FC9320, xmmword_220FC9310);
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v24 = OUTLINED_FUNCTION_4_2();
  v25(v24, v23);
  OUTLINED_FUNCTION_1_10();
  v27 = *(v26 + 72);
  swift_unknownObjectRetain();
  v28 = sub_220FC26C0();
  v29 = [v27 newFunctionWithName_];

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_1_10();
  v31 = *(v30 + 72);
  swift_unknownObjectRetain();
  v32 = sub_220FC26C0();
  v33 = [v31 newFunctionWithName_];

  swift_unknownObjectRelease();
  v34 = [objc_allocWithZone(MEMORY[0x277CD6F78]) init];
  sub_220EF50DC(0xD000000000000012, 0x8000000220FDC5B0, v34);
  [v34 setVertexFunction_];
  [v34 setFragmentFunction_];
  v35 = [v34 colorAttachments];
  v36 = [v35 objectAtIndexedSubscript_];

  if (!v36)
  {
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
  }

  v37 = a1[3];
  v38 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v37);
  [v36 setPixelFormat_];

  v39 = [v34 vertexBuffers];
  v40 = [v39 objectAtIndexedSubscript_];

  if (!v40)
  {
    goto LABEL_60;
  }

  [v40 setMutability_];

  [v34 setDepthAttachmentPixelFormat_];
  [v34 setStencilAttachmentPixelFormat_];
  v41 = OBJC_IVAR____TtC11WeatherMaps19HashOverlayRenderer_msaaType;
  v42 = v84;
  if (*(v5 + OBJC_IVAR____TtC11WeatherMaps19HashOverlayRenderer_msaaType))
  {
    if (*(v5 + OBJC_IVAR____TtC11WeatherMaps19HashOverlayRenderer_msaaType) != 1)
    {
      OUTLINED_FUNCTION_2_7();
    }

    v43 = sub_220FC3940();

    if ((v43 & 1) == 0)
    {
      [v34 setRasterSampleCount_];
    }
  }

  else
  {
  }

  v44 = *(v5 + v84);
  *&v87 = 0;
  v45 = [v44 newRenderPipelineStateWithDescriptor:v34 error:&v87];
  v46 = v45;
  v47 = v87;
  if (!v45)
  {
    v49 = v87;
    sub_220E3FCD0(a4);
    sub_220FBFFE0();

    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_0(v85);
    v50 = 0;
    goto LABEL_47;
  }

  v76 = v45;
  *(v5 + OBJC_IVAR____TtC11WeatherMaps19HashOverlayRenderer_pipelineState) = v45;
  if (*(v5 + v41))
  {
    if (*(v5 + v41) != 1)
    {
      v48 = v47;

      goto LABEL_23;
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_2();
  }

  OUTLINED_FUNCTION_5_2();
  v51 = sub_220FC3940();
  v52 = v47;

  if ((v51 & 1) == 0)
  {
    goto LABEL_42;
  }

LABEL_23:
  OUTLINED_FUNCTION_1_10();
  v54 = *(v53 + 72);
  swift_unknownObjectRetain();
  v55 = sub_220FC26C0();
  v56 = [v54 newFunctionWithName_];

  swift_unknownObjectRelease();
  if (!v56)
  {
LABEL_35:
    if (v79[3])
    {
      goto LABEL_42;
    }

    v65 = *v79;
    v66 = v79[1];
    goto LABEL_37;
  }

  v57 = *(v5 + v84);
  *&v87 = 0;
  v58 = [v57 newComputePipelineStateWithFunction:v56 error:&v87];
  v59 = v87;
  if (!v58)
  {
    v68 = v87;
    sub_220E3FCD0(a4);
    sub_220FBFFE0();

    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0(v85);
    v50 = 0;
LABEL_46:
    v46 = v76;
    goto LABEL_47;
  }

  *(v5 + v81) = v58;
  v60 = v59;
  swift_unknownObjectRelease();
  v61 = *(v5 + v81);
  if (!v61)
  {
    swift_unknownObjectRelease();
    goto LABEL_35;
  }

  v62 = [swift_unknownObjectRetain() maxTotalThreadsPerThreadgroup];
  v63 = [v61 threadExecutionWidth];
  if (!v63)
  {
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (v62 == 0x8000000000000000 && v63 == -1)
  {
    goto LABEL_58;
  }

  MTLSizeMake([v61 threadExecutionWidth], v62 / v63, &v87);
  v66 = *(&v87 + 1);
  v65 = v87;
  v67 = v88;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  *v79 = v65;
  v79[1] = v66;
  v79[2] = v67;
  *(v79 + 24) = 0;
  v42 = v84;
LABEL_37:
  if (__OFADD__(v65, 512))
  {
    __break(1u);
    goto LABEL_54;
  }

  if (!v65)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (__OFADD__(v66, 512))
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (!v66)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  MTLSizeMake((v65 + 511) / v65, (v66 + 511) / v66, &v87);
  v69 = v88;
  *v77 = v87;
  *(v77 + 16) = v69;
  *(v77 + 24) = 0;
LABEL_42:
  v70 = v42;
  v71 = [objc_allocWithZone(MEMORY[0x277CD7000]) init];
  [v71 setReadMask_];
  [v71 setStencilCompareFunction_];
  v72 = [objc_allocWithZone(MEMORY[0x277CD6D60]) init];
  [v72 setFrontFaceStencil_];
  [v72 setDepthWriteEnabled_];
  v73 = [*(v5 + v70) newDepthStencilStateWithDescriptor_];
  if (!v73)
  {
    sub_220E3FCD0(a4);
    sub_220E3FD24();
    swift_allocError();
    swift_willThrow();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_0(v85);
    v50 = 0;
    goto LABEL_46;
  }

  *(v5 + OBJC_IVAR____TtC11WeatherMaps19HashOverlayRenderer_depthStencilState) = v73;
  sub_220E1E2A8(a1, &v87);
  sub_220E1E2A8(v85, v86);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v74 = sub_220F5AA64(&v87, v86, a3, a4);
  if (!v78)
  {
    v50 = v74;

    sub_220E3E248();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_0(v85);
    __swift_destroy_boxed_opaque_existential_0(v89);
    __swift_destroy_boxed_opaque_existential_0(a1);

    return v50;
  }

  __swift_destroy_boxed_opaque_existential_0(v85);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v50 = 1;
  v46 = v76;
LABEL_47:
  __swift_destroy_boxed_opaque_existential_0(v89);
  __swift_destroy_boxed_opaque_existential_0(a1);
  if ((v50 & 1) == 0)
  {
    swift_unknownObjectRelease();
    if (v46)
    {
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_deallocPartialClassInstance();
  }

  return v50;
}

id sub_220E3E248()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC11WeatherMaps19HashOverlayRenderer_msaaType) - 1 <= 1)
  {
    v2 = objc_opt_self();
    v3 = v0[5];
    v4 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
    v5 = [v2 texture2DDescriptorWithPixelFormat:(*(v4 + 40))(v3 width:v4) height:512 mipmapped:512, 0];
    [v5 setTextureType_];
    [v5 setSampleCount_];
    if (*(v1 + OBJC_IVAR____TtC11WeatherMaps19HashOverlayRenderer_tileShaderSupported))
    {
      v6 = 4;
    }

    else
    {
      v6 = 5;
    }

    if (*(v1 + OBJC_IVAR____TtC11WeatherMaps19HashOverlayRenderer_tileShaderSupported))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    [v5 setUsage_];
    [v5 setStorageMode_];
    v8 = [*(v1 + OBJC_IVAR____TtC11WeatherMaps19HashOverlayRenderer_metalDevice) newTextureWithDescriptor_];
    v9 = OBJC_IVAR____TtC11WeatherMaps19HashOverlayRenderer_multisampleTexture;
    *(v1 + OBJC_IVAR____TtC11WeatherMaps19HashOverlayRenderer_multisampleTexture) = v8;
    swift_unknownObjectRelease();
    v10 = *(v1 + v9);
    if (v10)
    {
      swift_unknownObjectRetain();
      v11 = sub_220FC26C0();
      [v10 setLabel_];
      swift_unknownObjectRelease();
    }
  }

  *(v1 + OBJC_IVAR____TtC11WeatherMaps19HashOverlayRenderer_stencilTexture) = sub_220E3FB64(253);
  swift_unknownObjectRelease();
  *(v1 + OBJC_IVAR____TtC11WeatherMaps19HashOverlayRenderer_depthTexture) = sub_220E3FB64(252);
  swift_unknownObjectRelease();
  v12 = OBJC_IVAR____TtC11WeatherMaps19HashOverlayRenderer_vertexBuffers;
  swift_beginAccess();
  *(v1 + v12) = MEMORY[0x277D84F90];

  v13 = 0;
  v14 = *(v1 + OBJC_IVAR____TtC11WeatherMaps19HashOverlayRenderer_metalDevice);
  do
  {
    result = [v14 newBufferWithLength:7680 options:0];
    if (result)
    {
      v16 = result;
      sub_220FC35C0();

      v17 = sub_220FC38F0();
      MEMORY[0x223D9BD60](v17);

      v18 = sub_220FC26C0();

      [v16 setLabel_];

      swift_beginAccess();
      v19 = swift_unknownObjectRetain();
      MEMORY[0x223D9BEA0](v19);
      if (*((*(v1 + v12) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v12) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_220FC29C0();
      }

      sub_220FC29F0();
      swift_endAccess();
      result = swift_unknownObjectRelease();
    }

    ++v13;
  }

  while (v13 != 6);
  return result;
}

uint64_t sub_220E3E618()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

uint64_t sub_220E3E6F8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11WeatherMaps19HashOverlayRenderer_inflightSemaphore;
  v3 = 6;
  do
  {
    v4 = *(v1 + v2);
    sub_220FC30B0();

    --v3;
  }

  while (v3);
  v5 = sub_220F5ADAC();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v5;
}

uint64_t sub_220E3E81C()
{
  v0 = sub_220E3E6F8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for HashOverlayRenderer()
{
  result = qword_27CF9CE78;
  if (!qword_27CF9CE78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220E3E978(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = a4;
  v9 = OBJC_IVAR____TtC11WeatherMaps19HashOverlayRenderer_tilesInView;
  swift_beginAccess();
  sub_220F19244(a1, a2, a3, v8);
  if (v10)
  {
    swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v4 + v9);
    *(v4 + v9) = 0x8000000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CEA8);
    sub_220FC3710();
    sub_220E304BC();
    sub_220FC3730();
    *(v4 + v9) = v12;
  }

  return swift_endAccess();
}

void sub_220E3EA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6, double a7, float a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t *a15)
{
  v16 = v15;
  __dst[33] = *MEMORY[0x277D85DE8];
  v88 = a15[1];
  v90 = *a15;
  v86 = *(a15 + 16);
  v24 = a7;
  v25 = OBJC_IVAR____TtC11WeatherMaps19HashOverlayRenderer_tilesInView;
  swift_beginAccess();
  v26 = *(v15 + v25);
  if (*(v26 + 16) && (v27 = sub_220F19244(a1, a2, a3, v24), (v28 & 1) != 0))
  {
    v29 = *(*(v26 + 56) + 4 * v27);
    swift_endAccess();
    if (v29 == a8)
    {
      return;
    }
  }

  else
  {
    swift_endAccess();
  }

  v30 = *(a11 + 16);
  if (v30)
  {
    v80 = v25;
    v81 = a1;
    v82 = a2;
    v83 = a3;
    v31 = v16[5];
    v32 = v16[6];
    __swift_project_boxed_opaque_existential_1(v16 + 2, v31);
    v33 = v32->n128_u64[1];
    swift_unknownObjectRetain();
    v33(__dst, v31, v32);
    v34 = __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
    v35 = sub_220F744CC(*v34, a5, a6 & 1);
    __swift_destroy_boxed_opaque_existential_0(__dst);
    if (!v35)
    {
      swift_unknownObjectRelease();
      return;
    }

    v84 = v30;
    v36 = OBJC_IVAR____TtC11WeatherMaps19HashOverlayRenderer_inflightSemaphore;
    v37 = *(v16 + OBJC_IVAR____TtC11WeatherMaps19HashOverlayRenderer_inflightSemaphore);
    sub_220FC30A0();

    *&v94 = v90;
    *(&v94 + 1) = v88;
    LOBYTE(v95[0]) = v86;
    sub_220F5C978();
    if (__src[257] == 255)
    {
      sub_220E3FD88(__src);
      v38 = *(v16 + v36);
      sub_220FC30B0();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return;
    }

    memcpy(__dst, __src, 0x102uLL);
    v39 = v16[5];
    v40 = v16[6];
    __swift_project_boxed_opaque_existential_1(v16 + 2, v39);
    (*(v40 + 16))(v39, v40);
    v41 = v16;
    sub_220F5CF88();

    v42 = *(v16 + OBJC_IVAR____TtC11WeatherMaps19HashOverlayRenderer_currentVertexBufferIndex);
    v43 = __OFADD__(v42, 1);
    v44 = v42 + 1;
    if (v43)
    {
      __break(1u);
    }

    else
    {
      v41 = v44 % 6;
      *(v16 + OBJC_IVAR____TtC11WeatherMaps19HashOverlayRenderer_currentVertexBufferIndex) = v44 % 6;
      v45 = OBJC_IVAR____TtC11WeatherMaps19HashOverlayRenderer_vertexBuffers;
      swift_beginAccess();
      v36 = *(v16 + v45);
      sub_220F227B4(v41, (v36 & 0xC000000000000001) == 0, v36);
      if ((v36 & 0xC000000000000001) == 0)
      {
        v46 = *(v36 + 8 * v41 + 32);
        swift_unknownObjectRetain();
        goto LABEL_14;
      }
    }

    v46 = MEMORY[0x223D9CB30](v41, v36);
LABEL_14:
    swift_endAccess();
    v47 = ((*(a4 + OBJC_IVAR____TtC11WeatherMaps11OverlayTile_path + 24) * 512.0) * a8) / (((*(a4 + OBJC_IVAR____TtC11WeatherMaps11OverlayTile_path + 24) * 512.0) / ((*(a4 + OBJC_IVAR____TtC11WeatherMaps11OverlayTile_path + 24) * 512.0) * a8)) * (((*(a4 + OBJC_IVAR____TtC11WeatherMaps11OverlayTile_path + 24) * 512.0) / 160.0) * a8));
    if (COERCE_UNSIGNED_INT(fabs(v47)) > 0x7F7FFFFF)
    {
      __break(1u);
    }

    else if (v47 > -9.2234e18)
    {
      if (v47 < 9.2234e18)
      {
        v32 = v47;
        v41 = [swift_unknownObjectRetain() contents];
        v48 = v46;
        if (qword_27CF9C0E8 == -1)
        {
          goto LABEL_18;
        }

        goto LABEL_60;
      }

LABEL_59:
      __break(1u);
LABEL_60:
      swift_once();
LABEL_18:
      v49 = sub_220F281A0(v32, v41, *&qword_27CFAF5F0, *algn_27CFAF5F8, *&dword_27CFAF600, xmmword_27CFAF610);
      if ((v32 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      if (v32)
      {
        v50 = 0;
        v51 = v32 / 2;
        v52 = *(v16 + OBJC_IVAR____TtC11WeatherMaps19HashOverlayRenderer_lineColor);
        v53 = v49 + 1;
        do
        {
          v54 = v50;
          if (v50 >= v51)
          {
            v54 = (v32 / -2 + v50);
          }

          v55 = (v54 / (v32 / 2)) * 512.0;
          if (v50 >= v51)
          {
            *&v56 = 0.0;
          }

          else
          {
            *&v56 = 512.0;
          }

          *(&v56 + 1) = v55;
          v53[-1].n128_u64[0] = __PAIR64__(v56, LODWORD(v55));
          v53[-1].n128_u64[1] = v56;
          ++v50;
          v53->n128_f32[0] = 1.2 / a8;
          v53[1] = v52;
          v53 += 3;
        }

        while (v32 != v50);
      }

      sub_220E3FDF0(__src, &v94);
      v89 = v46;
      v91 = v35;
      if (v96)
      {
        sub_220E3FE4C(&v94);
LABEL_29:
        v57 = 0;
        goto LABEL_30;
      }

      *&v93[25] = *(v95 + 9);
      *v93 = v94;
      *&v93[16] = v95[0];
      if (BYTE8(v95[1]))
      {
        if (BYTE8(v95[1]) != 1)
        {
          if (BYTE8(v95[1]) != 4 || (v67 = vorrq_s8(*&v93[8], *&v93[24]), *&vorr_s8(*v67.i8, *&vextq_s8(v67, v67, 8uLL)) | *v93))
          {
            sub_220E3FF0C(v93);
          }

          goto LABEL_29;
        }

        v57 = *v93;
      }

      else
      {
        v57 = *v93 == 1.0;
      }

LABEL_30:
      v58 = v16[7];
      [v58 beginScope];
      v59 = sub_220FC26C0();
      [v30 setLabel_];

      v60 = swift_allocObject();
      swift_weakInit();

      sub_220FA339C(sub_220E3FEA0, v60);

      sub_220E3F50C(v35, v57);
      v62 = v61;
      v63 = [v30 renderCommandEncoderWithDescriptor_];
      if (!v63)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CEA0);
        v68 = swift_allocObject();
        *(v68 + 16) = xmmword_220FC8E30;
        *(v68 + 56) = MEMORY[0x277D837D0];
        *(v68 + 32) = 0xD000000000000037;
        *(v68 + 40) = 0x8000000220FDC610;
        sub_220FC3A20();

        [v58 endScope];
        sub_220E3FEA8(v57);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
LABEL_51:
        swift_unknownObjectRelease();
        sub_220E3FE4C(__src);
        sub_220E3FEB8(__dst);
        return;
      }

      v64 = v63;
      [v63 setDepthStencilState_];
      [v64 setRenderPipelineState_];
      [v64 setVertexBuffer:v89 offset:0 atIndex:1];
      v92 = 0x20000000200;
      [v64 setVertexBytes:&v92 length:8 atIndex:2];
      [v64 drawPrimitives:4 vertexStart:0 vertexCount:4 instanceCount:v32];
      [v64 endEncoding];
      if (*(v16 + OBJC_IVAR____TtC11WeatherMaps19HashOverlayRenderer_msaaType))
      {
        v65 = v62;
        v66 = v57;
        if (*(v16 + OBJC_IVAR____TtC11WeatherMaps19HashOverlayRenderer_msaaType) != 1)
        {

          goto LABEL_44;
        }
      }

      else
      {
        v65 = v62;
        v66 = v57;
      }

      OUTLINED_FUNCTION_5_2();
      v69 = sub_220FC3940();

      if ((v69 & 1) == 0)
      {
LABEL_50:
        swift_beginAccess();
        swift_isUniquelyReferenced_nonNull_native();
        *v93 = *(v16 + v80);
        sub_220E9755C(v81, v82, v83, a8, v24);
        *(v16 + v80) = *v93;
        swift_endAccess();
        swift_unknownObjectRelease();

        [v58 endScope];
        sub_220E3FEA8(v66);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        goto LABEL_51;
      }

LABEL_44:
      v70 = *(v16 + OBJC_IVAR____TtC11WeatherMaps19HashOverlayRenderer_imrComputePipelineState);
      if (v70)
      {
        v71 = (v16 + OBJC_IVAR____TtC11WeatherMaps19HashOverlayRenderer_imrThreadgroupInGrid);
        if ((*(v16 + OBJC_IVAR____TtC11WeatherMaps19HashOverlayRenderer_imrThreadgroupInGrid + 24) & 1) == 0)
        {
          v72 = (v16 + OBJC_IVAR____TtC11WeatherMaps19HashOverlayRenderer_imrThreadgroupSize);
          if ((*(v16 + OBJC_IVAR____TtC11WeatherMaps19HashOverlayRenderer_imrThreadgroupSize + 24) & 1) == 0)
          {
            v73 = *v71;
            v74 = v71[1];
            v85 = *v72;
            v87 = v71[2];
            v79 = v72[1];
            v78 = v72[2];
            swift_unknownObjectRetain();
            v75 = [v84 computeCommandEncoder];
            if (v75)
            {
              v76 = v75;
              v77 = sub_220FC26C0();
              [v76 setLabel_];

              [v76 setComputePipelineState_];
              [v76 setTexture:*(v16 + OBJC_IVAR____TtC11WeatherMaps19HashOverlayRenderer_multisampleTexture) atIndex:0];
              [v76 setTexture:v91 atIndex:1];
              *&v94 = v73;
              *(&v94 + 1) = v74;
              *&v95[0] = v87;
              *v93 = v85;
              *&v93[8] = v79;
              *&v93[16] = v78;
              [v76 dispatchThreadgroups:&v94 threadsPerThreadgroup:v93];
              [v76 endEncoding];
              swift_unknownObjectRelease();
            }

            swift_unknownObjectRelease();
          }
        }
      }

      goto LABEL_50;
    }

    __break(1u);
    goto LABEL_59;
  }
}

void sub_220E3F49C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC11WeatherMaps19HashOverlayRenderer_inflightSemaphore);

    sub_220FC30B0();
  }
}

void sub_220E3F50C(uint64_t a1, uint64_t a2)
{
  v5 = [objc_allocWithZone(MEMORY[0x277CD6F50]) init];
  v6 = [v5 colorAttachments];
  v7 = [v6 objectAtIndexedSubscript_];

  if (!v7)
  {
    __break(1u);
    goto LABEL_39;
  }

  [v7 setLoadAction_];

  v8 = [v5 colorAttachments];
  v9 = [v8 objectAtIndexedSubscript_];

  if (!v9)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  [v9 setClearColor_];

  v10 = *(v2 + OBJC_IVAR____TtC11WeatherMaps19HashOverlayRenderer_msaaType) - 1;
  v11 = [v5 colorAttachments];
  v12 = [v11 objectAtIndexedSubscript_];

  if (v10 > 1)
  {
    if (!v12)
    {
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    [v12 setStoreAction_];

    v21 = [v5 colorAttachments];
    v22 = [v21 objectAtIndexedSubscript_];

    if (!v22)
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    [v22 setTexture_];
  }

  else
  {
    if (!v12)
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v13 = *(v2 + OBJC_IVAR____TtC11WeatherMaps19HashOverlayRenderer_tileShaderSupported);
    if (*(v2 + OBJC_IVAR____TtC11WeatherMaps19HashOverlayRenderer_tileShaderSupported))
    {
      v14 = 2;
    }

    else
    {
      v14 = 1;
    }

    [v12 setStoreAction_];

    v15 = [v5 colorAttachments];
    v16 = [v15 objectAtIndexedSubscript_];

    if (!v16)
    {
      goto LABEL_45;
    }

    v17 = *(v2 + OBJC_IVAR____TtC11WeatherMaps19HashOverlayRenderer_multisampleTexture);
    swift_unknownObjectRetain();
    [v16 setTexture_];
    swift_unknownObjectRelease();

    v18 = [v5 colorAttachments];
    v19 = [v18 objectAtIndexedSubscript_];

    if (!v19)
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    if (v13)
    {
      v20 = a1;
    }

    else
    {
      v20 = 0;
    }

    [v19 setResolveTexture_];

    if (v13)
    {
      [v5 setTileWidth_];
      [v5 setTileHeight_];
      [v5 setImageblockSampleLength_];
    }
  }

  v23 = [v5 depthAttachment];
  if (!v23)
  {
    goto LABEL_40;
  }

  v24 = v23;
  [v23 setLoadAction_];

  v25 = [v5 depthAttachment];
  if (!v25)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v26 = v25;
  [v25 setStoreAction_];

  v27 = [v5 stencilAttachment];
  if (!v27)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v28 = v27;
  [v27 setStoreAction_];

  if (!a2)
  {
    goto LABEL_28;
  }

  if (a2 != 1)
  {
    v46 = [v5 depthAttachment];
    if (v46)
    {
      v47 = v46;
      v48 = *(v2 + OBJC_IVAR____TtC11WeatherMaps19HashOverlayRenderer_depthTexture);
      swift_unknownObjectRetain();
      [v47 &off_2784565E8 + 1];
      swift_unknownObjectRelease();

      v49 = [v5 stencilAttachment];
      if (v49)
      {
        v50 = v49;
        [v49 setLoadAction_];

        v51 = [v5 stencilAttachment];
        if (v51)
        {
          v44 = v51;
          [v51 &off_2784565E8 + 1];
          goto LABEL_37;
        }

        goto LABEL_56;
      }

      goto LABEL_53;
    }

    goto LABEL_50;
  }

  v29 = [v5 depthAttachment];
  if (!v29)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v30 = v29;
  v31 = *(v2 + OBJC_IVAR____TtC11WeatherMaps19HashOverlayRenderer_depthTexture);
  swift_unknownObjectRetain();
  [v30 &off_2784565E8 + 1];
  swift_unknownObjectRelease();

  v32 = [v5 stencilAttachment];
  if (!v32)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v33 = v32;
  [v32 setLoadAction_];

  v34 = [v5 stencilAttachment];
  if (!v34)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v35 = v34;
  [v34 setClearStencil_];

  v36 = [v5 stencilAttachment];
  if (v36)
  {
LABEL_32:
    v44 = v36;
    v45 = *(v2 + OBJC_IVAR____TtC11WeatherMaps19HashOverlayRenderer_stencilTexture);
    swift_unknownObjectRetain();
    [v44 &off_2784565E8 + 1];
    swift_unknownObjectRelease();
LABEL_37:

    return;
  }

  __break(1u);
LABEL_28:
  v37 = [v5 depthAttachment];
  if (!v37)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v38 = v37;
  v39 = *(v2 + OBJC_IVAR____TtC11WeatherMaps19HashOverlayRenderer_depthTexture);
  swift_unknownObjectRetain();
  [v38 &off_2784565E8 + 1];
  swift_unknownObjectRelease();

  v40 = [v5 stencilAttachment];
  if (!v40)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v41 = v40;
  [v40 setLoadAction_];

  v42 = [v5 stencilAttachment];
  if (!v42)
  {
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v43 = v42;
  [v42 setClearStencil_];

  v36 = [v5 stencilAttachment];
  if (v36)
  {
    goto LABEL_32;
  }

LABEL_57:
  __break(1u);
}

id sub_220E3FB64(uint64_t a1)
{
  v2 = [objc_opt_self() texture2DDescriptorWithPixelFormat:a1 width:512 height:512 mipmapped:0];
  v3 = v2;
  if (*(v1 + OBJC_IVAR____TtC11WeatherMaps19HashOverlayRenderer_msaaType) - 1 > 1)
  {
    [v2 setSampleCount_];
    v5 = 2;
    v4 = 2;
  }

  else
  {
    v4 = 4;
    [v2 setSampleCount_];
    if (*(v1 + OBJC_IVAR____TtC11WeatherMaps19HashOverlayRenderer_tileShaderSupported))
    {
      v5 = 3;
    }

    else
    {
      v5 = 2;
    }
  }

  [v3 setStorageMode_];
  [v3 setTextureType_];
  [v3 setUsage_];
  v6 = [*(v1 + OBJC_IVAR____TtC11WeatherMaps19HashOverlayRenderer_metalDevice) newTextureWithDescriptor_];
  if (v6)
  {
    swift_unknownObjectRetain();
    v7 = sub_220FC26C0();
    [v6 setLabel_];
    swift_unknownObjectRelease();
  }

  return v6;
}

unint64_t sub_220E3FD24()
{
  result = qword_27CF9CE90;
  if (!qword_27CF9CE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9CE90);
  }

  return result;
}

uint64_t MTLSizeMake@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  a3[2] = 1;
  return result;
}

uint64_t sub_220E3FD88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EA30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_220E3FEA8(unint64_t result)
{
  if (result >= 2)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HashOverlayRendererError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for HashOverlayRendererError(_BYTE *result, int a2, int a3)
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

unint64_t sub_220E40064()
{
  result = qword_27CF9CEB0;
  if (!qword_27CF9CEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9CEB0);
  }

  return result;
}

char *sub_220E400C8()
{
  v1 = *(v0 + OBJC_IVAR____TtC11WeatherMaps20MapDiscreteScaleView_steps);
  v2 = sub_220F43CDC(v1);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = v2;
    v18 = MEMORY[0x277D84F90];
    v5 = v2 & ~(v2 >> 63);

    result = sub_220F0B1C0(0, v5, 0);
    if (v4 < 0)
    {
      __break(1u);
      return result;
    }

    v7 = 0;
    v3 = v18;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x223D9CB30](v7, v1);
      }

      else
      {
        v8 = *(v1 + 8 * v7 + 32);
      }

      v9 = v8;
      sub_220F53C50();
      v11 = v10;

      v13 = *(v18 + 16);
      v12 = *(v18 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_220F0B1C0((v12 > 1), v13 + 1, 1);
      }

      ++v7;
      *(v18 + 16) = v13 + 1;
      *(v18 + 8 * v13 + 32) = v11;
    }

    while (v4 != v7);
  }

  v14 = *(v3 + 16);
  if (v14)
  {
    v15 = (v3 + 32);
    v16 = 0.0;
    do
    {
      v17 = *v15++;
      v16 = v16 + v17;
      --v14;
    }

    while (v14);
  }
}

id sub_220E40224()
{
  v1 = OBJC_IVAR____TtC11WeatherMaps20MapDiscreteScaleView_steps;
  v2 = *(v0 + OBJC_IVAR____TtC11WeatherMaps20MapDiscreteScaleView_steps);
  v3 = sub_220F43CDC(v2);
  v4 = v2 & 0xFFFFFFFFFFFFFF8;

  for (i = 0; v3 != i; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x223D9CB30](i, v2);
    }

    else
    {
      if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_39;
      }

      v6 = *(v2 + 8 * i + 32);
    }

    v7 = v6;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    [v6 removeFromSuperview];
  }

  v37 = v1;

  v38 = v0;
  v8 = *(v0 + OBJC_IVAR____TtC11WeatherMaps20MapDiscreteScaleView_scale + 56);
  v9 = *(v8 + 16);

  v10 = MEMORY[0x277D84F90];
LABEL_10:
  v11 = 56 * v9;
  while (v9)
  {
    if (--v9 >= *(v8 + 16))
    {
      __break(1u);
      goto LABEL_24;
    }

    v12 = v11 - 56;
    v13 = *(v8 + v11 - 16);
    v11 -= 56;
    if (v13)
    {
      v14 = *(v8 + v12 + 32);
      v15 = *(v8 + v12 + 48);
      v16 = *(v8 + v12 + 56);
      v17 = *(v8 + v12 + 64);
      v18 = *(v8 + v12 + 72);
      v19 = *(v8 + v12 + 80);

      v42 = v10;
      v39 = v14;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_220F0B140(0, *(v10 + 16) + 1, 1);
        v10 = v42;
      }

      v21 = *(v10 + 16);
      v20 = *(v10 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_220F0B140((v20 > 1), v21 + 1, 1);
        v10 = v42;
      }

      *(v10 + 16) = v21 + 1;
      v22 = v10 + 56 * v21;
      *(v22 + 32) = v39;
      *(v22 + 40) = v13;
      *(v22 + 48) = v15;
      *(v22 + 56) = v16;
      *(v22 + 64) = v17;
      *(v22 + 72) = v18;
      *(v22 + 80) = v19;
      goto LABEL_10;
    }
  }

  v23 = *(v10 + 16);
  if (!v23)
  {
LABEL_24:

    v31 = MEMORY[0x277D84F90];
    goto LABEL_25;
  }

  v41 = MEMORY[0x277D84F90];
  sub_220FC3670();
  v24 = *(v0 + OBJC_IVAR____TtC11WeatherMaps20MapDiscreteScaleView_backgroundEffectManager);
  v25 = type metadata accessor for MapDiscreteStepView();
  v26 = 0;
  do
  {
    v27 = *(v10 + v26 + 56);
    v28 = *(v10 + v26 + 64);
    v29 = *(v10 + v26 + 72);
    v30 = *(v10 + v26 + 80);
    v40 = *(v10 + v26 + 40);
    v42 = *(v10 + v26 + 32);
    v43 = v40;
    v44 = v27;
    v45 = v28;
    v46 = v29;
    v47 = v30;
    objc_allocWithZone(v25);

    sub_220F53F64(&v42, v24);
    sub_220FC3640();
    sub_220FC3680();
    sub_220FC3690();
    sub_220FC3650();
    v26 += 56;
    --v23;
  }

  while (v23);

  v31 = v41;
LABEL_25:
  v2 = v38;
  *(v38 + v37) = v31;

  v0 = *(v38 + v37);
  v4 = v0 & 0xFFFFFFFFFFFFFF8;
  if (!(v0 >> 62))
  {
    v32 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_27;
  }

LABEL_42:
  v32 = sub_220FC34C0();
LABEL_27:

  for (j = 0; v32 != j; ++j)
  {
    if ((v0 & 0xC000000000000001) != 0)
    {
      v34 = MEMORY[0x223D9CB30](j, v0);
    }

    else
    {
      if (j >= *(v4 + 16))
      {
        goto LABEL_41;
      }

      v34 = v0[j + 4];
    }

    v35 = v34;
    if (__OFADD__(j, 1))
    {
      goto LABEL_40;
    }

    [v2 addSubview_];
  }

  return [v2 setNeedsLayout];
}

id sub_220E40618(const void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC11WeatherMaps20MapDiscreteScaleView_steps] = MEMORY[0x277D84F90];
  *&v2[OBJC_IVAR____TtC11WeatherMaps20MapDiscreteScaleView_minimumSize] = xmmword_220FC94F0;
  *&v2[OBJC_IVAR____TtC11WeatherMaps20MapDiscreteScaleView_stepSpacing] = 0x3FF0000000000000;
  memcpy(&v2[OBJC_IVAR____TtC11WeatherMaps20MapDiscreteScaleView_scale], a1, 0x60uLL);
  *&v2[OBJC_IVAR____TtC11WeatherMaps20MapDiscreteScaleView_backgroundEffectManager] = a2;
  v8.receiver = v2;
  v8.super_class = ObjectType;

  v6 = objc_msgSendSuper2(&v8, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_220E40224();

  return v6;
}

void sub_220E40700()
{
  *(v0 + OBJC_IVAR____TtC11WeatherMaps20MapDiscreteScaleView_steps) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC11WeatherMaps20MapDiscreteScaleView_minimumSize) = xmmword_220FC94F0;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps20MapDiscreteScaleView_stepSpacing) = 0x3FF0000000000000;
  sub_220FC3740();
  __break(1u);
}

void sub_220E407AC()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, sel_layoutSubviews);
  [v0 bounds];
  sub_220E40800(v1);
}

void sub_220E40800(double a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC11WeatherMaps20MapDiscreteScaleView_steps);
  if (v3 >> 62)
  {
    v4 = sub_220FC34C0();
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {

    v5 = 0;
    v6 = 0.0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x223D9CB30](v5, v3);
      }

      else
      {
        v7 = *(v3 + 8 * v5 + 32);
      }

      v8 = v7;
      ++v5;
      sub_220F53C50();
      v10 = v9;
      v11 = v8;
      [v11 bounds];
      [v11 setBounds_];
      [v11 setCenter_];

      v6 = v6 + v10 + 1.0;
    }

    while (v4 != v5);
  }
}

double sub_220E409C4(double a1)
{
  v3 = OBJC_IVAR____TtC11WeatherMaps20MapDiscreteScaleView_steps;
  v4 = *&v1[OBJC_IVAR____TtC11WeatherMaps20MapDiscreteScaleView_steps];
  if (v4 >> 62)
  {
    goto LABEL_20;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    do
    {
      v3 = *&v1[v3];
      v5 = sub_220F43CDC(v3);

      v6 = 0;
      v7 = 0.0;
      v8 = 0.0;
      while (1)
      {
        if (v5 == v6)
        {

          return v8;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x223D9CB30](v6, v3);
        }

        else
        {
          if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_19;
          }

          v9 = *(v3 + 8 * v6 + 32);
        }

        v1 = v9;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        v10 = sub_220F53CB8(1.79769313e308, 1.79769313e308);
        v12 = v11;

        if (v10 > v8)
        {
          v13 = v10;
        }

        else
        {
          v13 = v8;
        }

        if (v13 >= a1)
        {
          v8 = a1;
        }

        else
        {
          v8 = v13;
        }

        v7 = v7 + v12 + 1.0;
        ++v6;
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      ;
    }

    while (sub_220FC34C0());
  }

  return 85.0;
}

uint64_t sub_220E40C7C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_220E40CD8@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X2>, void (*a3)(void, void)@<X3>, void *a4@<X8>)
{
  v108 = a3;
  v125 = a2;
  v127 = a4;
  sub_220FC2560();
  OUTLINED_FUNCTION_6();
  v117 = v6;
  v118 = v5;
  MEMORY[0x28223BE20](v5, v7);
  OUTLINED_FUNCTION_1();
  v116 = v8;
  OUTLINED_FUNCTION_2_2();
  v9 = sub_220FC2540();
  MEMORY[0x28223BE20](v9 - 8, v10);
  OUTLINED_FUNCTION_1();
  v115 = v11;
  OUTLINED_FUNCTION_2_2();
  v110 = sub_220FC2480();
  OUTLINED_FUNCTION_6();
  v109 = v12;
  MEMORY[0x28223BE20](v13, v14);
  OUTLINED_FUNCTION_1();
  v114 = v15;
  OUTLINED_FUNCTION_2_2();
  v16 = sub_220FC06F0();
  MEMORY[0x28223BE20](v16 - 8, v17);
  OUTLINED_FUNCTION_1();
  v124 = v18;
  OUTLINED_FUNCTION_2_2();
  sub_220FC2490();
  OUTLINED_FUNCTION_6();
  v112 = v20;
  v113 = v19;
  MEMORY[0x28223BE20](v19, v21);
  OUTLINED_FUNCTION_1();
  v111 = v22;
  OUTLINED_FUNCTION_2_2();
  v104 = sub_220FC02B0();
  OUTLINED_FUNCTION_6();
  v102 = v23;
  MEMORY[0x28223BE20](v24, v25);
  OUTLINED_FUNCTION_1();
  v101 = v26;
  OUTLINED_FUNCTION_2_2();
  v123 = sub_220FC05E0();
  OUTLINED_FUNCTION_6();
  v107 = v27;
  MEMORY[0x28223BE20](v28, v29);
  OUTLINED_FUNCTION_3_3();
  v106 = v30;
  v33 = MEMORY[0x28223BE20](v31, v32);
  v103 = &v98 - v34;
  v36 = MEMORY[0x28223BE20](v33, v35);
  v38 = &v98 - v37;
  MEMORY[0x28223BE20](v36, v39);
  v105 = &v98 - v40;
  OUTLINED_FUNCTION_2_2();
  v41 = sub_220FC1070();
  OUTLINED_FUNCTION_6();
  v100 = v42;
  MEMORY[0x28223BE20](v43, v44);
  v46 = &v98 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220FC2570();
  OUTLINED_FUNCTION_6();
  v121 = v48;
  v122 = v47;
  MEMORY[0x28223BE20](v47, v49);
  OUTLINED_FUNCTION_3_3();
  v119 = v50;
  MEMORY[0x28223BE20](v51, v52);
  v120 = &v98 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CEE8);
  MEMORY[0x28223BE20](v54 - 8, v55);
  v57 = &v98 - v56;
  v58 = sub_220FC0760();
  OUTLINED_FUNCTION_6();
  v60 = v59;
  MEMORY[0x28223BE20](v61, v62);
  v64 = &v98 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = *a1;
  sub_220F05D10(v57);
  if (__swift_getEnumTagSinglePayload(v57, 1, v58) == 1)
  {
    sub_220E41754(v57);
    v128[0] = v65;
    return sub_220E416D0(v128, v127);
  }

  else
  {
    (*(v60 + 32))(v64, v57, v58);
    if ((v65 - 3) >= 2)
    {
      v99 = v60;
      if (v65 == 5)
      {
        v69 = [objc_opt_self() whiteColor];
        v70 = v108;
        if (v108)
        {
          v71 = v108;
        }

        else
        {
          v71 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.156862745 green:0.156862745 blue:0.156862745 alpha:0.9];
        }

        v93 = v127;
        v94 = *(v99 + 8);
        v95 = v70;
        v96 = OUTLINED_FUNCTION_4_3();
        v94(v96);
        if (v125 == 1)
        {
          v97 = v71;
        }

        else
        {
          v97 = v69;
        }

        if (v125 != 1)
        {
          v69 = v71;
        }

        *v93 = v69;
        type metadata accessor for WeatherMapAnnotationBackground(0);
      }

      else
      {
        sub_220F05E6C(v46);
        v77 = v105;
        sub_220FC0700();
        v78 = v101;
        sub_220FC05B0();
        v108 = *(v107 + 8);
        v108(v77, v123);
        v79 = v120;
        sub_220FC2500();
        (*(v102 + 8))(v78, v104);
        (*(v100 + 8))(v46, v41);
        sub_220FC0700();
        sub_220FC05D0();
        v80 = v38;
        v81 = v123;
        v82 = v108;
        v108(v80, v123);
        (*(v121 + 16))(v119, v79, v122);
        v83 = v103;
        sub_220FC0700();
        LODWORD(v125) = sub_220FC0570();
        v82(v83, v81);
        v84 = DeviceSupportsVFX();
        v85 = sub_220FC2470();
        v86 = MEMORY[0x277D7B410];
        if (!v84)
        {
          v86 = MEMORY[0x277D7B418];
        }

        v87 = v114;
        (*(*(v85 - 8) + 104))(v114, *v86, v85);
        (*(v109 + 104))(v87, *MEMORY[0x277D7B428], v110);
        sub_220FC0700();
        sub_220FC0560();
        v82(v77, v81);
        v88 = v106;
        sub_220FC0700();
        sub_220FC0550();
        v82(v88, v81);
        v89 = v111;
        sub_220FC2460();
        __swift_project_boxed_opaque_existential_1((v126 + 16), *(v126 + 40));
        v90 = v116;
        sub_220FC24C0();
        (*(v112 + 8))(v89, v113);
        (*(v121 + 8))(v120, v122);
        v91 = OUTLINED_FUNCTION_4_3();
        v92(v91);
        (*(v117 + 32))(v127, v90, v118);
        type metadata accessor for WeatherMapAnnotationBackground(0);
      }
    }

    else if (DeviceSupportsMapsControlEffects())
    {
      v67 = OUTLINED_FUNCTION_4_3();
      v68(v67);
      type metadata accessor for WeatherMapAnnotationBackground(0);
    }

    else
    {
      v72 = [objc_opt_self() whiteColor];
      v73 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.156862745 green:0.156862745 blue:0.156862745 alpha:0.9];
      v74 = OUTLINED_FUNCTION_4_3();
      v75(v74);
      if (v125 == 1)
      {
        v76 = v73;
      }

      else
      {
        v76 = v72;
      }

      if (v125 != 1)
      {
        v72 = v73;
      }

      *v127 = v72;
      type metadata accessor for WeatherMapAnnotationBackground(0);
    }

    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_220E416D0@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1 - 3;
  v4 = objc_opt_self();
  v5 = &selRef_whiteColor;
  if (v3 >= 3)
  {
    v5 = &selRef_systemGray3Color;
  }

  *a2 = [v4 *v5];
  type metadata accessor for WeatherMapAnnotationBackground(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_220E41754(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CEE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_220E417BC(void *a1, unsigned int a2, uint64_t a3, char a4, void *a5, char a6, double a7)
{
  v66 = a2;
  v67 = a1;
  v12 = sub_220FC03E0();
  v64 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v13);
  v65 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_opt_self() sharedApplication];
  v68 = [v15 preferredContentSizeCategory];

  if (a5)
  {
    v16 = a5;
    if (sub_220FC30D0())
    {
      v17 = 1;
      goto LABEL_6;
    }
  }

  else
  {
    v16 = *MEMORY[0x277D76808];
  }

  v17 = sub_220FC30C0();
LABEL_6:
  v18 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory_];
  v19 = objc_allocWithZone(MEMORY[0x277D75520]);
  v20 = v67;
  v21 = [v19 initForTextStyle_];
  if (a4)
  {
    sub_220FC3180();
    if ((v17 & 1) == 0)
    {
LABEL_8:
      [v21 scaledValueForValue_];
      goto LABEL_11;
    }
  }

  else
  {
    v22 = *&a3;
    if ((v17 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  [v21 scaledValueForValue:v18 compatibleWithTraitCollection:v22];
LABEL_11:
  v24 = v23;
  if (a6)
  {
    sub_220E41E50();
    OUTLINED_FUNCTION_0_7();
    v25 = sub_220FC3170();
LABEL_21:
    v41 = v25;

    goto LABEL_22;
  }

  v26 = objc_opt_self();
  v27 = [v26 preferredFontForTextStyle_];
  v28 = [v27 fontDescriptor];

  v29 = [v28 fontDescriptorWithSymbolicTraits_];
  v63 = v12;
  if (!v29 || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CEF0), inited = swift_initStackObject(), v60 = v29, v31 = inited, v61 = xmmword_220FC8E30, *(inited + 16) = xmmword_220FC8E30, v62 = v16, v32 = *MEMORY[0x277D74380], *(inited + 32) = *MEMORY[0x277D74380], __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CEF8), v33 = swift_initStackObject(), *(v33 + 16) = v61, v34 = *MEMORY[0x277D74430], *(v33 + 32) = *MEMORY[0x277D74430], *(v33 + 40) = a7, type metadata accessor for TraitKey(0), type metadata accessor for Weight(0), sub_220E41E94(&qword_2812C5C08, type metadata accessor for TraitKey), *&v61 = v26, v35 = v32, v16 = v62, v36 = v34, v20 = v67, v37 = sub_220FC2600(), *(v31 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF00), *(v31 + 40) = v37, type metadata accessor for AttributeName(0), sub_220E41E94(&qword_2812C5BC8, type metadata accessor for AttributeName), sub_220FC2600(), v38 = sub_220FC25B0(), , v39 = v60, v40 = [v60 fontDescriptorByAddingAttributes_], v39, v38, !v40))
  {
    if (qword_2812C5EC8 != -1)
    {
      swift_once();
    }

    v42 = sub_220FC17A0();
    __swift_project_value_buffer(v42, qword_2812C5ED0);
    v43 = v20;
    v44 = sub_220FC1780();
    v45 = sub_220FC2E10();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = v64;
      v48 = v46;
      v62 = swift_slowAlloc();
      v69[0] = v62;
      *v48 = 136446466;
      v49 = v65;
      sub_220FC0390();
      v50 = sub_220FC0300();
      v67 = v18;
      v52 = v51;
      (*(v47 + 8))(v49, v63);
      v53 = sub_220E20FF8(v50, v52, v69);

      *(v48 + 4) = v53;
      *(v48 + 12) = 2082;
      v54 = sub_220FC2700();
      v56 = sub_220E20FF8(v54, v55, v69);

      *(v48 + 14) = v56;
      v18 = v67;
      _os_log_impl(&dword_220E15000, v44, v45, "Couldn't create font from descriptor. locale=%{public}s, textStyle=%{public}s", v48, 0x16u);
      v57 = v62;
      swift_arrayDestroy();
      MEMORY[0x223D9DDF0](v57, -1, -1);
      MEMORY[0x223D9DDF0](v48, -1, -1);
    }

    sub_220E41E50();
    OUTLINED_FUNCTION_0_7();
    v25 = sub_220FC3150();
    goto LABEL_21;
  }

  v41 = [v61 fontWithDescriptor:v40 size:v24];

LABEL_22:
  return v41;
}

unint64_t sub_220E41E50()
{
  result = qword_2812C5B80;
  if (!qword_2812C5B80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2812C5B80);
  }

  return result;
}

uint64_t sub_220E41E94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_220E41EDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, int a3@<W3>, _OWORD *a4@<X8>)
{
  v90 = a3;
  v89 = a2;
  v99 = a1;
  v98 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF08);
  MEMORY[0x28223BE20](v4 - 8, v5);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_4();
  MEMORY[0x28223BE20](v6, v7);
  OUTLINED_FUNCTION_2_4();
  MEMORY[0x28223BE20](v8, v9);
  v11 = OUTLINED_FUNCTION_7_0(&v83 - v10);
  v91 = type metadata accessor for MapScrubberOverlayViewModel.Labels(v11);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v12, v13);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_4();
  MEMORY[0x28223BE20](v14, v15);
  OUTLINED_FUNCTION_2_4();
  MEMORY[0x28223BE20](v16, v17);
  v86 = &v83 - v18;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CD38);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v19, v20);
  OUTLINED_FUNCTION_4();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24, v25);
  OUTLINED_FUNCTION_7_0(&v83 - v26);
  v27 = sub_220FC02B0();
  v94 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v28);
  OUTLINED_FUNCTION_3();
  v31 = v30 - v29;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CD18);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v32, v33);
  OUTLINED_FUNCTION_7_0(&v83 - v34);
  v35 = type metadata accessor for WeatherMapOverlayTimeConstraints();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v36, v37);
  OUTLINED_FUNCTION_3();
  v40 = v39 - v38;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB80);
  MEMORY[0x28223BE20](v41 - 8, v42);
  v44 = &v83 - v43;
  v45 = type metadata accessor for WeatherMapOverlay();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v46, v47);
  OUTLINED_FUNCTION_3();
  v50 = v49 - v48;
  sub_220E43574();
  if (__swift_getEnumTagSinglePayload(v44, 1, v45) == 1)
  {
    sub_220E3B2DC(v44, &unk_27CF9EB80);
    v51 = v98;
    *v98 = 0u;
    v51[1] = 0u;
    *(v51 + 32) = 6;
    type metadata accessor for MapScrubberOverlayViewModel(0);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_220E435D8();
    sub_220E43688();
    v53 = *(v35 + 20);
    sub_220FC01C0();
    sub_220E3AFE8();
    result = sub_220FC26A0();
    if (result)
    {
      v84 = v35;
      v54 = v94;
      v55 = *(v94 + 16);
      v99 = v40;
      v56 = v40 + v53;
      v57 = v93;
      v55(v93, v56, v27);
      v58 = v95;
      v59 = *(v95 + 48);
      v85 = v50;
      v60 = *(v54 + 32);
      v60(v57 + v59, v31, v27);
      sub_220E43574();
      v61 = *(v58 + 48);
      v62 = v97;
      v60(v97, v23, v27);
      v63 = *(v54 + 8);
      v63(v23 + v61, v27);
      sub_220E43630();
      v60(v62 + *(v92 + 36), v23 + *(v58 + 48), v27);
      v64 = v85;
      v63(v23, v27);
      memcpy(__dst, (v64 + 16), sizeof(__dst));
      LODWORD(v62) = sub_220E435CC(__dst);
      sub_220E22B0C(__dst);
      v65 = v98;
      v66 = v96;
      switch(v62)
      {
        case 1:
          v66 = v88;
          v71 = OUTLINED_FUNCTION_3_4();
          sub_220E42D58(v71, v72);
          OUTLINED_FUNCTION_4_4();
          if (v70)
          {
            goto LABEL_12;
          }

          goto LABEL_14;
        case 2:
          v66 = v87;
          v73 = OUTLINED_FUNCTION_3_4();
          sub_220E426F8(v73, v74);
          OUTLINED_FUNCTION_4_4();
          if (!v70)
          {
            goto LABEL_14;
          }

          goto LABEL_12;
        case 4:
          v68 = OUTLINED_FUNCTION_3_4();
          sub_220E426F8(v68, v69);
          OUTLINED_FUNCTION_4_4();
          if (v70)
          {
LABEL_12:
            sub_220E3B2DC(v97, &qword_27CF9CD18);
            OUTLINED_FUNCTION_0_8();
            sub_220E436E0(v99, v75);
            sub_220E3B2DC(v66, &qword_27CF9CF08);
LABEL_13:
            v76 = *(v64 + 200);
            *v65 = 0u;
            v65[1] = 0u;
            *(v65 + 32) = v76;
            type metadata accessor for MapScrubberOverlayViewModel(0);
          }

          else
          {
LABEL_14:
            sub_220E435D8();
            v77 = *(v99 + *(v84 + 28));
            OUTLINED_FUNCTION_0_8();
            sub_220E436E0(v78, v79);
            v80 = *(v64 + 200);
            v81 = type metadata accessor for MapScrubberOverlayViewModel.Active(0);
            sub_220E43630();
            sub_220E435D8();
            *v65 = 0u;
            v65[1] = 0u;
            *(v65 + v81[7]) = v77;
            *(v65 + v81[8]) = v80;
            v82 = v65 + v81[9];
            *v82 = v89;
            v82[8] = v90 & 1;
            type metadata accessor for MapScrubberOverlayViewModel(0);
          }

          swift_storeEnumTagMultiPayload();
          result = sub_220E436E0(v64, type metadata accessor for WeatherMapOverlay);
          break;
        default:
          sub_220E3B2DC(v97, &qword_27CF9CD18);
          OUTLINED_FUNCTION_0_8();
          sub_220E436E0(v99, v67);
          goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_220E426F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v3 = sub_220FC02B0();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v57 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v55 = &v55 - v10;
  MEMORY[0x28223BE20](v9, v11);
  v56 = &v55 - v12;
  v13 = type metadata accessor for WeatherMapOverlay();
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for WeatherMapOverlayFramesMetadata();
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for WeatherMapOverlayTimeConstraints();
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1 + *(v14 + 36);
  sub_220E43688();
  sub_220E43688();
  memcpy(__dst, (a1 + 16), 0xB8uLL);
  LODWORD(a1) = sub_220E435CC(__dst);
  v27 = sub_220E22B0C(__dst);
  switch(a1)
  {
    case 1:
    case 2:
    case 4:
      v28 = sub_220F0AB8C(*v27, v17);
      sub_220E436E0(v17, type metadata accessor for WeatherMapOverlay);
      break;
    default:
      sub_220E436E0(v17, type metadata accessor for WeatherMapOverlay);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF18);
      v29 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_220FC8E30;
      (*(v4 + 16))(v28 + v29, v26, v3);
      break;
  }

  v30 = *(v26 + *(v22 + 28));
  v31 = *(v4 + 16);
  v31(v21, v26, v3);
  *&v21[*(v18 + 20)] = v28;
  *&v21[*(v18 + 24)] = v30;
  if (*(v28 + 16) < 2uLL)
  {
    goto LABEL_12;
  }

  v32 = v56;
  v31(v56, &v25[*(v22 + 20)], v3);
  v33 = v55;
  v31(v55, v25, v3);
  v34 = v32;
  v35 = v57;
  sub_220FC01C0();
  sub_220FC01B0();
  if (v36 <= 1.0)
  {
    v44 = *(v4 + 8);
    v44(v35, v3);
    v44(v33, v3);
    v44(v34, v3);
LABEL_12:
    sub_220E436E0(v25, type metadata accessor for WeatherMapOverlayTimeConstraints);
    sub_220E436E0(v21, type metadata accessor for WeatherMapOverlayFramesMetadata);
    v45 = type metadata accessor for MapScrubberOverlayViewModel.Labels(0);
    v46 = v58;
    v47 = 1;
    return __swift_storeEnumTagSinglePayload(v46, v47, 1, v45);
  }

  sub_220FC01B0();
  v38 = v37 * 0.0625;
  sub_220FC01B0();
  v40 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF10);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_220FC8E30;
  *(v41 + 32) = v40;
  for (i = 5; i != 20; ++i)
  {
    if ((i - 4) >= *(v41 + 24) >> 1)
    {
      sub_220F36FCC();
      v41 = v43;
    }

    *(v41 + 16) = i - 3;
    *(v41 + 8 * i) = v40 + v38 * (i - 4);
  }

  sub_220FC01B0();
  v49 = v48;
  v50 = *(v41 + 16);
  if (v50 >= *(v41 + 24) >> 1)
  {
    sub_220F36FCC();
    v41 = v54;
  }

  v51 = *(v4 + 8);
  v51(v57, v3);
  v51(v56, v3);
  sub_220E436E0(v25, type metadata accessor for WeatherMapOverlayTimeConstraints);
  *(v41 + 16) = v50 + 1;
  *(v41 + 8 * v50 + 32) = v49;
  sub_220E436E0(v21, type metadata accessor for WeatherMapOverlayFramesMetadata);
  v52 = v58;
  (*(v4 + 32))(v58, v33, v3);
  v45 = type metadata accessor for MapScrubberOverlayViewModel.Labels(0);
  *(v52 + *(v45 + 20)) = v41;
  *(v52 + *(v45 + 24)) = 1;
  v46 = v52;
  v47 = 0;
  return __swift_storeEnumTagSinglePayload(v46, v47, 1, v45);
}

uint64_t sub_220E42D58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_220FC04B0();
  v69 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v68 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_220FC02B0();
  v77 = *(v76 - 8);
  v8 = MEMORY[0x28223BE20](v76, v7);
  v71 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = &v68 - v12;
  v15 = MEMORY[0x28223BE20](v11, v14);
  v72 = &v68 - v16;
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v68 - v18;
  v20 = type metadata accessor for WeatherMapOverlay();
  v21 = v20 - 8;
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for WeatherMapOverlayFramesMetadata();
  MEMORY[0x28223BE20](v25, v26);
  v75 = &v68 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for WeatherMapOverlayTimeConstraints();
  MEMORY[0x28223BE20](v28, v29);
  v31 = a1 + *(v21 + 36);
  v74 = &v68 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220E43688();
  sub_220E43688();
  memcpy(__dst, (a1 + 16), sizeof(__dst));
  LODWORD(a1) = sub_220E435CC(__dst);
  v32 = sub_220E22B0C(__dst);
  v73 = a2;
  v70 = v4;
  switch(a1)
  {
    case 1:
    case 2:
    case 4:
      v33 = sub_220F0AB8C(*v32, v24);
      sub_220E436E0(v24, type metadata accessor for WeatherMapOverlay);
      v34 = v76;
      v35 = v77;
      break;
    default:
      sub_220E436E0(v24, type metadata accessor for WeatherMapOverlay);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF18);
      v35 = v77;
      v36 = (*(v77 + 80) + 32) & ~*(v77 + 80);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_220FC8E30;
      v34 = v76;
      (*(v35 + 16))(v33 + v36, v31, v76);
      break;
  }

  v37 = *(v31 + *(v28 + 28));
  v38 = *(v35 + 16);
  v39 = v75;
  v38(v75, v31, v34);
  *(v39 + *(v25 + 20)) = v33;
  *(v39 + *(v25 + 24)) = v37;
  if (*(v33 + 16) < 2uLL)
  {
    v54 = v74;
LABEL_13:
    sub_220E436E0(v54, type metadata accessor for WeatherMapOverlayTimeConstraints);
    sub_220E436E0(v39, type metadata accessor for WeatherMapOverlayFramesMetadata);
    v56 = type metadata accessor for MapScrubberOverlayViewModel.Labels(0);
    v57 = v73;
    v58 = 1;
    return __swift_storeEnumTagSinglePayload(v57, v58, 1, v56);
  }

  v40 = v74;
  v38(v19, v74 + *(v28 + 20), v34);
  v41 = v72;
  v38(v72, v40, v34);
  sub_220FC01C0();
  sub_220FC01B0();
  if (v42 <= 1.0)
  {
    v55 = *(v77 + 8);
    v55(v13, v34);
    v55(v41, v34);
    v55(v19, v34);
    v54 = v40;
    goto LABEL_13;
  }

  v43 = v68;
  sub_220FC04A0();
  v44 = v71;
  sub_220FC01A0();
  (*(v69 + 8))(v43, v70);
  sub_220FC01B0();
  v46 = 600.0 - v45;
  sub_220FC01B0();
  v48 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF10);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_220FC8E30;
  *(v49 + 32) = v48;
  v50 = v48 + v46;
  sub_220FC01B0();
  while (v50 < v51 + -600.0)
  {
    v52 = *(v49 + 16);
    if (v52 >= *(v49 + 24) >> 1)
    {
      sub_220F36FCC();
      v49 = v53;
    }

    *(v49 + 16) = v52 + 1;
    *(v49 + 8 * v52 + 32) = v50;
    v50 = v50 + 600.0;
    sub_220FC01B0();
  }

  sub_220FC01B0();
  v60 = v59;
  v61 = *(v49 + 16);
  if (v61 >= *(v49 + 24) >> 1)
  {
    sub_220F36FCC();
    v49 = v67;
  }

  v62 = v77;
  v63 = *(v77 + 8);
  v64 = v76;
  v63(v44, v76);
  v63(v13, v64);
  v63(v19, v64);
  sub_220E436E0(v74, type metadata accessor for WeatherMapOverlayTimeConstraints);
  *(v49 + 16) = v61 + 1;
  *(v49 + 8 * v61 + 32) = v60;
  sub_220E436E0(v75, type metadata accessor for WeatherMapOverlayFramesMetadata);
  v65 = v73;
  (*(v62 + 32))(v73, v72, v64);
  v56 = type metadata accessor for MapScrubberOverlayViewModel.Labels(0);
  *(v65 + *(v56 + 20)) = v49;
  *(v65 + *(v56 + 24)) = 0;
  v57 = v65;
  v58 = 0;
  return __swift_storeEnumTagSinglePayload(v57, v58, 1, v56);
}

uint64_t sub_220E43574()
{
  OUTLINED_FUNCTION_8_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_2();
  v2 = OUTLINED_FUNCTION_9();
  v3(v2);
  return v0;
}

uint64_t sub_220E435D8()
{
  OUTLINED_FUNCTION_8_1();
  v1(0);
  OUTLINED_FUNCTION_2();
  v2 = OUTLINED_FUNCTION_9();
  v3(v2);
  return v0;
}

uint64_t sub_220E43630()
{
  OUTLINED_FUNCTION_8_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_2();
  v2 = OUTLINED_FUNCTION_9();
  v3(v2);
  return v0;
}

uint64_t sub_220E43688()
{
  OUTLINED_FUNCTION_8_1();
  v1(0);
  OUTLINED_FUNCTION_2();
  v2 = OUTLINED_FUNCTION_9();
  v3(v2);
  return v0;
}

uint64_t sub_220E436E0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_220E43748()
{

  sub_220FC13F0();
}

float sub_220E437A0()
{

  sub_220FC13E0();

  return v1;
}

uint64_t sub_220E437E4()
{

  sub_220FC13F0();
}

uint64_t sub_220E43828()
{
  sub_220E437E4();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_220E43890();
  }

  return result;
}

uint64_t sub_220E43890()
{
  v1 = sub_220FC2340();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_220FC2390();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220FC1130();
  sub_220E43E7C();
  v12 = v11;
  v13 = sub_220E43E38();
  swift_beginAccess();
  v14 = sub_220F43CDC(*(v0 + 24));
  sub_220E44098();
  if ((v12 + 0.01) >= 1.0)
  {
    sub_220FC1080();

    v23 = *(v0 + 56);
    v17 = swift_allocObject();
    *(v17 + 16) = v0;
    *(v17 + 24) = v12;
    *(v17 + 28) = v13;
    *(v17 + 32) = v14;
    aBlock[4] = sub_220E452FC;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_220F6DA78;
    aBlock[3] = &block_descriptor_36;
    v22 = _Block_copy(aBlock);

    sub_220FC2350();
    v24 = MEMORY[0x277D84F90];
    sub_220E4532C(&qword_2812C5E08, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9DBC0);
    v21 = v6;
    sub_220E453D4(&qword_2812C5D88, &unk_27CF9DBC0);
    sub_220FC3430();
    v18 = v22;
    MEMORY[0x223D9C530](0, v10, v5, v22);
    _Block_release(v18);
    (*(v2 + 8))(v5, v1);
    (*(v7 + 8))(v10, v21);
  }

  else
  {
    v15 = swift_allocObject();
    swift_weakInit();
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    *(v16 + 24) = v12;
    *(v16 + 28) = v13;
    *(v16 + 32) = v14;

    sub_220FC1090();
  }

  return sub_220FC1140();
}

uint64_t sub_220E43C80()
{
  sub_220E43748();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_220E43890();
  }

  return result;
}

uint64_t sub_220E43CD8()
{

  swift_weakDestroy();
  return v0;
}

uint64_t sub_220E43D08()
{
  sub_220E43CD8();
  v0 = OUTLINED_FUNCTION_1_11();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_220E43D58()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF30);
  OUTLINED_FUNCTION_3_5();
  *(v0 + 16) = sub_220FC13C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF38);
  OUTLINED_FUNCTION_3_5();
  *(v0 + 24) = sub_220FC13C0();
  swift_weakInit();
  return v0;
}

uint64_t sub_220E43DE8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_220FC1970();
  *a1 = result;
  return result;
}

float sub_220E43E38()
{

  sub_220FC19A0();

  return v1;
}

uint64_t sub_220E43E7C()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v12 = MEMORY[0x277D84F90];
  v2 = sub_220F43CDC(v1);

  for (i = 0; v2 != i; ++i)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x223D9CB30](i, v1);
    }

    else
    {
      if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      return result;
    }

    if (sub_220E20F44())
    {
    }

    else
    {
      sub_220FC3640();
      sub_220FC3680();
      sub_220FC3690();
      result = sub_220FC3650();
    }
  }

  *(v0 + 24) = v12;

  v5 = *(v0 + 24);
  v6 = sub_220F43CDC(v5);

  v7 = 0;
  v8 = 0.0;
  while (v6 != v7)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x223D9CB30](v7, v5);
    }

    else
    {
      if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }
    }

    if (__OFADD__(v7, 1))
    {
      goto LABEL_26;
    }

    v9 = sub_220E437A0();
    v10 = *(v0 + 24);
    if (v10 >> 62)
    {
      v11 = sub_220FC34C0();
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = v8 + (v9 / v11);
    ++v7;
  }
}

uint64_t sub_220E44098()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 64);
  }

  else
  {
    v2 = v0;
    v3 = *(v0 + 56);
    sub_220FC10B0();
    swift_allocObject();
    v4 = v3;
    v1 = sub_220FC10A0();
    *(v2 + 64) = v1;
  }

  return v1;
}

uint64_t sub_220E4411C()
{
  sub_220FC2FB0();
  OUTLINED_FUNCTION_6();
  v16 = v2;
  v17 = v1;
  MEMORY[0x28223BE20](v1, v3);
  OUTLINED_FUNCTION_3();
  v15 = v5 - v4;
  v6 = sub_220FC2F80();
  MEMORY[0x28223BE20](v6, v7);
  OUTLINED_FUNCTION_3();
  v8 = sub_220FC2390();
  MEMORY[0x28223BE20](v8 - 8, v9);
  OUTLINED_FUNCTION_3();
  v10 = sub_220FC1160();
  MEMORY[0x28223BE20](v10 - 8, v11);
  OUTLINED_FUNCTION_3();
  sub_220FC1150();
  sub_220FC1180();
  OUTLINED_FUNCTION_3_5();
  v12 = sub_220FC1170();
  v13 = MEMORY[0x277D84F90];
  *(v0 + 16) = v12;
  *(v0 + 24) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF20);
  OUTLINED_FUNCTION_3_5();
  *(v0 + 32) = sub_220FC19C0();
  *(v0 + 40) = 0;
  *(v0 + 48) = v13;
  sub_220E1AAEC();
  sub_220FC2350();
  sub_220E4532C(&qword_2812C5CA8, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF28);
  sub_220E453D4(&qword_2812C5D38, &qword_27CF9CF28);
  sub_220FC3430();
  (*(v16 + 104))(v15, *MEMORY[0x277D85260], v17);
  *(v0 + 56) = sub_220FC2FF0();
  *(v0 + 64) = 0;
  return v0;
}

uint64_t sub_220E44404@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for WeatherMapOverlayProgress();
  v4 = swift_allocObject();
  sub_220E43D58();
  swift_weakAssign();
  sub_220FC1130();
  swift_beginAccess();

  MEMORY[0x223D9BEA0](v5);
  sub_220F09670(*((*(v1 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_220FC29F0();
  swift_endAccess();
  sub_220FC1140();
  result = sub_220E43890();
  a1[3] = v3;
  a1[4] = &off_28347D190;
  *a1 = v4;
  return result;
}

uint64_t sub_220E444F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF40);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF48);
  OUTLINED_FUNCTION_6();
  v7 = v6;
  MEMORY[0x28223BE20](v8, v9);
  v11 = v16 - v10;
  v16[1] = *(v0 + 32);
  sub_220E1AAEC();

  v12 = sub_220FC2FC0();
  v16[0] = v12;
  v13 = sub_220FC2FA0();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF20);
  sub_220E453D4(&qword_27CF9CF50, &qword_27CF9CF20);
  sub_220E4532C(&qword_27CF9CF58, sub_220E1AAEC);
  sub_220FC1A00();
  sub_220E45374(v4, &qword_27CF9CF40);

  sub_220E453D4(&unk_27CF9CF60, &qword_27CF9CF48);
  v14 = sub_220FC19D0();
  (*(v7 + 8))(v11, v5);
  return v14;
}

uint64_t sub_220E44768()
{
  sub_220FC1130();
  *(v0 + 40) = 1;
  return sub_220FC1140();
}

uint64_t sub_220E4479C()
{
  sub_220FC1130();
  *(v0 + 40) = 0;
  sub_220FC1140();

  return sub_220E43890();
}

uint64_t sub_220E447DC()
{
  sub_220FC1130();
  swift_beginAccess();
  v1 = MEMORY[0x277D84F90];
  *(v0 + 24) = MEMORY[0x277D84F90];

  swift_beginAccess();
  *(v0 + 48) = v1;

  sub_220FC1140();
  return sub_220E43890();
}

uint64_t sub_220E44868(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;

  v9 = a1;
  sub_220FC1130();

  sub_220FC19A0();

  if (v15 >= 1.0)
  {
    sub_220FC1140();
    sub_220E449F0(v9, a2, a3);
  }

  else
  {
    v10 = swift_allocObject();
    *(v10 + 16) = sub_220E451E4;
    *(v10 + 24) = v8;
    swift_beginAccess();

    sub_220E45278(sub_220F36FF4);
    v11 = *(*(v4 + 48) + 16);
    sub_220F09578(v11);
    v12 = *(v4 + 48);
    *(v12 + 16) = v11 + 1;
    v13 = v12 + 16 * v11;
    *(v13 + 32) = sub_220E451F0;
    *(v13 + 40) = v10;
    *(v4 + 48) = v12;
    swift_endAccess();
    sub_220FC1140();
  }
}

uint64_t sub_220E449F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a1;
  v5 = sub_220FC2340();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_220FC2390();
  v10 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  aBlock[4] = sub_220E451F0;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_220F6DA78;
  aBlock[3] = &block_descriptor_0;
  v15 = _Block_copy(aBlock);

  sub_220FC2350();
  v20 = MEMORY[0x277D84F90];
  sub_220E4532C(&qword_2812C5E08, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9DBC0);
  sub_220E453D4(&qword_2812C5D88, &unk_27CF9DBC0);
  sub_220FC3430();
  MEMORY[0x223D9C530](0, v13, v9, v15);
  _Block_release(v15);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v18);
}

uint64_t sub_220E44CC0(uint64_t a1, float a2, float a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF70);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v16 - v8;
  if ((a2 + 0.01) >= 1.0)
  {
    sub_220E45004();
  }

  result = sub_220E44F98(a2, a3);
  if (result)
  {
    if (a2 > 0.0)
    {
      if (qword_27CF9BFE0 != -1)
      {
        swift_once();
      }

      v11 = __swift_project_value_buffer(v6, qword_27CF9CB80);
      sub_220E335D0(v11, v9);
      v12 = sub_220FC17A0();
      if (__swift_getEnumTagSinglePayload(v9, 1, v12) == 1)
      {
        sub_220E45374(v9, &qword_27CF9CF70);
      }

      else
      {
        v13 = sub_220FC1780();
        v14 = sub_220FC2E30();
        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          *v15 = 134218240;
          *(v15 + 4) = a2;
          *(v15 + 12) = 2048;
          *(v15 + 14) = a1;
          _os_log_impl(&dword_220E15000, v13, v14, "Update overlay loading progress. Progress=%f, count=%ld", v15, 0x16u);
          MEMORY[0x223D9DDF0](v15, -1, -1);
        }

        (*(*(v12 - 8) + 8))(v9, v12);
      }
    }

    sub_220FC1130();
    v16 = a2;
    v17 = a1;

    sub_220FC19B0();

    return sub_220FC1140();
  }

  return result;
}

uint64_t sub_220E44F20(float a1, float a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_220E44CC0(a4, a1, a2);
  }

  return result;
}

uint64_t sub_220E44F98(float a1, float a2)
{
  sub_220FC1130();
  v5 = (a1 + 0.01) < 1.0 || a2 != 0.0;
  v6 = *(v2 + 40);
  sub_220FC1140();
  return v5 & ~v6;
}

uint64_t sub_220E45004()
{
  sub_220FC1130();
  swift_beginAccess();
  v1 = MEMORY[0x277D84F90];
  *(v0 + 24) = MEMORY[0x277D84F90];

  swift_beginAccess();
  v2 = *(v0 + 48);
  v3 = *(v2 + 16);

  v5 = 0;
  for (i = v2 + 40; ; i += 16)
  {
    if (v3 == v5)
    {

      *(v0 + 48) = v1;

      return sub_220FC1140();
    }

    if (v5 >= *(v2 + 16))
    {
      break;
    }

    ++v5;
    v7 = *(i - 8);

    v7(v8);
  }

  __break(1u);
  return result;
}

uint64_t sub_220E45108()
{

  return v0;
}

uint64_t sub_220E45150()
{
  sub_220E45108();

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

uint64_t getEnumTagSinglePayload for ProgressReport(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_220E45278(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_220E4532C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_220E45374(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_220E453D4(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_220E45424(void *a1)
{
  v2 = v1;
  v31 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D84F90];
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 32) = v3;
  *(v1 + 56) = 1;
  *(v1 + 60) = 1064849900;
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = *(v4 + 8);
  v6 = OUTLINED_FUNCTION_0_9();
  v5(v6);
  *(v1 + 16) = *(*__swift_project_boxed_opaque_existential_1(v29, v30) + 16);
  swift_unknownObjectRetain();
  __swift_destroy_boxed_opaque_existential_0(v29);
  v7 = OUTLINED_FUNCTION_0_9();
  v5(v7);
  v8 = *(*__swift_project_boxed_opaque_existential_1(v29, v30) + 72);
  swift_unknownObjectRetain();
  v9 = sub_220FC26C0();
  v10 = [v8 newFunctionWithName_];

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v29);
  v11 = OUTLINED_FUNCTION_0_9();
  v5(v11);
  v12 = *(*__swift_project_boxed_opaque_existential_1(v29, v30) + 72);
  swift_unknownObjectRetain();
  v13 = sub_220FC26C0();
  v14 = [v12 newFunctionWithName_];

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v29);
  v15 = [objc_allocWithZone(MEMORY[0x277CD6F78]) init];
  sub_220EF50DC(0xD00000000000001DLL, 0x8000000220FDC980, v15);
  [v15 setVertexFunction_];
  [v15 setFragmentFunction_];
  v16 = [v15 colorAttachments];
  v17 = [v16 objectAtIndexedSubscript_];

  if (!v17)
  {
    __break(1u);
  }

  v19 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  [v17 setPixelFormat_];

  v20 = v2[2];
  v29[0] = 0;
  v21 = [v20 newRenderPipelineStateWithDescriptor:v15 error:v29];
  v22 = v29[0];
  if (v21)
  {
    v2[3] = v21;
    sub_220E457F8();
    v24 = v23;
    v25 = v22;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v2[4] = v24;
  }

  else
  {
    v26 = v29[0];
    sub_220FBFFE0();

    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    swift_deallocPartialClassInstance();
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v2;
}

double sub_220E457F8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF78);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_220FC9880;
  __asm { FMOV            V0.2S, #-1.0 }

  *(v0 + 32) = _D0;
  *(v0 + 40) = 0x3F80000000000000;
  __asm { FMOV            V1.2S, #1.0 }

  *(v0 + 48) = -_D1;
  *(v0 + 56) = _D1;
  *(v0 + 64) = -_D0;
  *(v0 + 72) = 0;
  *&result = 1065353216;
  *(v0 + 80) = _D1;
  *(v0 + 88) = 1065353216;
  return result;
}

void sub_220E4586C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5, __n128 a6, double a7, double a8, __n128 a9, float a10)
{
  v35 = a6;
  v36 = a9;
  v34 = a5;
  v38[2] = *MEMORY[0x277D85DE8];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF70);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v33 - v18;
  if (*(v10 + 56))
  {
    return;
  }

  v33 = *(v10 + 40);
  sub_220E45BD4(a4);
  v21 = v20;
  v22 = [a1 renderCommandEncoderWithDescriptor_];
  if (v22)
  {
    v23 = v22;
    [v22 setRenderPipelineState_];
    *&v24.f64[0] = v34.n128_u64[0];
    *&v24.f64[1] = v35.n128_u64[0];
    v25 = vcvt_f32_f64(v24);
    *&v24.f64[0] = vcvt_f32_f64(v33);
    v38[0] = vdiv_f32(v25, *&v24.f64[0]);
    v38[1] = vadd_f32(v38[0], vdiv_f32(vdup_lane_s32(v36.n128_u64[0], 0), *&v24.f64[0]));
    [v23 setFragmentTexture:a3 atIndex:0];
    [v23 setFragmentTexture:a2 atIndex:2];
    v19 = &property descriptor for MapLocationAccessibilityModel.expiration;
    [v23 setFragmentBytes:v38 length:16 atIndex:3];
    v37 = (a10 * -0.03) + 1.0;
    [v23 setFragmentBytes:&v37 length:4 atIndex:4];
    v26 = *(v10 + 32);
    v27 = *(v26 + 16);
    if (!(v27 >> 59))
    {
      [v23 setVertexBytes:v26 + 32 length:16 * v27 atIndex:0];
      [v23 drawPrimitives:4 vertexStart:0 vertexCount:*(*(v10 + 32) + 16) instanceCount:1];
      [v23 endEncoding];
      swift_unknownObjectRelease();

      return;
    }

    __break(1u);
  }

  else if (qword_27CF9C000 == -1)
  {
    goto LABEL_6;
  }

  swift_once();
LABEL_6:
  v28 = __swift_project_value_buffer(v16, qword_27CF9CBE0);
  sub_220E335D0(v28, v19);
  v29 = sub_220FC17A0();
  if (__swift_getEnumTagSinglePayload(v19, 1, v29) == 1)
  {

    sub_220E45DAC(v19);
  }

  else
  {
    v30 = sub_220FC1780();
    v31 = sub_220FC2E30();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_220E15000, v30, v31, "[particle trail effect] Could not get make command encoder", v32, 2u);
      MEMORY[0x223D9DDF0](v32, -1, -1);
    }

    (*(*(v29 - 8) + 8))(v19, v29);
  }
}

void sub_220E45BD4(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CD6F50]) init];
  v3 = [v2 colorAttachments];
  v4 = [v3 objectAtIndexedSubscript_];

  if (!v4)
  {
    __break(1u);
    goto LABEL_6;
  }

  [v4 setTexture_];

  v5 = [v2 colorAttachments];
  v6 = [v5 objectAtIndexedSubscript_];

  if (!v6)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  [v6 setLoadAction_];

  v7 = [v2 colorAttachments];
  v8 = [v7 objectAtIndexedSubscript_];

  if (v8)
  {
    [v8 setStoreAction_];

    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_220E45D24()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_220E45D54()
{
  sub_220E45D24();

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_220E45DAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_220E45E14()
{
  v1 = *(v0 + OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationPinView_disablesImplicitAnimations);
  *(*(v0 + OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationPinView_backgroundView) + OBJC_IVAR____TtC11WeatherMaps34WeatherMapAnnotationBackgroundView_disablesImplicitAnimations) = v1;
  *(*(v0 + OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationPinView_strokeLayer) + OBJC_IVAR____TtC11WeatherMaps31WeatherMapAnnotationStrokeLayer_disablesImplicitAnimations) = v1;
}

uint64_t sub_220E45E5C()
{
  v1 = type metadata accessor for WeatherMapAnnotationPinView.ViewModel(0);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationPinView_viewModel;
  swift_beginAccess();
  sub_220E4707C(v0 + v5, v4, type metadata accessor for WeatherMapAnnotationPinView.ViewModel);
  sub_220E45F18(v4);
  return sub_220E47020(v4);
}

id sub_220E45F18(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for WeatherMapAnnotationBackground(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220E4707C(a1, v7, type metadata accessor for WeatherMapAnnotationBackground);
  sub_220F85050(v7);
  v8 = type metadata accessor for WeatherMapAnnotationPinView.ViewModel(0);
  v9 = v8;
  if (*(a1 + *(v8 + 28)) == 2)
  {
    v10 = a1 + *(v8 + 20);
    v11 = *v10;
    v12 = *(v10 + 8);
    if (*(v10 + 24))
    {
      v13 = *(v10 + 16);
      v14 = *&v2[OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationPinView_iconView];
      sub_220E1966C(0, &qword_2812C5B50);
      v15 = sub_220F6DD88(v11, v12, *MEMORY[0x277D769D0], -1, *MEMORY[0x277D74418], 0, 0, v13);
      [v14 setImage_];

      [v14 setTintColor_];
      v16 = 0.0;
      v17 = 1.0;
    }

    else
    {
      v18 = *&v2[OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationPinView_titleLabel];
      v19 = sub_220FC26C0();
      [v18 setText_];

      v16 = 1.0;
      v17 = 0.0;
    }
  }

  else
  {
    [*&v1[OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationPinView_titleLabel] setText_];
    v17 = 0.0;
    v16 = 0.0;
  }

  v20 = *&v2[OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationPinView_titleLabel];
  [v20 setTextColor_];
  [v20 setAlpha_];
  [*&v2[OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationPinView_iconView] setAlpha_];
  sub_220E4690C();
  sub_220E46AC0(a1);
  [v2 setNeedsLayout];
  return [v2 setNeedsDisplay];
}

uint64_t sub_220E4618C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationPinView_viewModel;
  swift_beginAccess();
  sub_220E46FBC(a1, v1 + v3);
  swift_endAccess();
  sub_220E45E5C();
  return sub_220E47020(a1);
}

id sub_220E461F8(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationPinView_backgroundView;
  *&v1[v4] = [objc_allocWithZone(type metadata accessor for WeatherMapAnnotationBackgroundView(0)) init];
  v5 = OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationPinView_strokeLayer;
  *&v1[v5] = [objc_allocWithZone(type metadata accessor for WeatherMapAnnotationStrokeLayer()) init];
  v6 = OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationPinView_outerShadowLayer;
  *&v1[v6] = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v7 = OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationPinView_titleLabel;
  *&v1[v7] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v8 = OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationPinView_iconView;
  *&v1[v8] = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v1[OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationPinView_disablesImplicitAnimations] = 1;
  sub_220E4707C(a1, &v1[OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationPinView_viewModel], type metadata accessor for WeatherMapAnnotationPinView.ViewModel);
  v11.receiver = v1;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_220E4635C();

  sub_220E47020(a1);
  return v9;
}

id sub_220E4635C()
{
  v1 = v0;
  v2 = [v0 layer];
  [v2 addSublayer_];

  [v1 addSubview_];
  v3 = [v1 layer];
  [v3 addSublayer_];

  v4 = *&v1[OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationPinView_titleLabel];
  sub_220E1966C(0, &qword_2812C5B80);
  v5 = sub_220FC3150();
  [v4 setFont_];

  [v4 setTextAlignment_];
  [v4 setAdjustsFontSizeToFitWidth_];
  [v4 setMinimumScaleFactor_];
  [v1 addSubview_];
  v6 = *&v1[OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationPinView_iconView];
  [v6 setContentMode_];

  return [v1 addSubview_];
}

void sub_220E464F4()
{
  v1 = OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationPinView_backgroundView;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for WeatherMapAnnotationBackgroundView(0)) init];
  v2 = OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationPinView_strokeLayer;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for WeatherMapAnnotationStrokeLayer()) init];
  v3 = OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationPinView_outerShadowLayer;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v4 = OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationPinView_titleLabel;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v5 = OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationPinView_iconView;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  *(v0 + OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationPinView_disablesImplicitAnimations) = 1;
  sub_220FC3740();
  __break(1u);
}

id sub_220E46628()
{
  v1 = v0;
  v21.receiver = v0;
  v21.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v21, sel_layoutSubviews);
  v2 = objc_opt_self();
  [v2 begin];
  if (v0[OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationPinView_disablesImplicitAnimations] == 1)
  {
    [v2 setDisableActions_];
  }

  OUTLINED_FUNCTION_2_8();
  CGRectGetWidth(v22);
  OUTLINED_FUNCTION_2_8();
  CGRectGetHeight(v23);
  OUTLINED_FUNCTION_2_8();
  Width = CGRectGetWidth(v24);
  v4 = *&v0[OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationPinView_titleLabel];
  [*&v1[OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationPinView_titleLabel] sizeThatFits_];
  [v4 bounds];
  OUTLINED_FUNCTION_3_6(v5, v6);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_12();
  CGRectGetWidth(v25);
  OUTLINED_FUNCTION_2_8();
  CGRectGetHeight(v26);
  [v4 bounds];
  OUTLINED_FUNCTION_3_6(v7, v8);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_12();
  [v4 setFrame_];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_2_8();
  v10 = v9 * 0.5;
  v20.receiver = v4;
  v20.super_class = type metadata accessor for WeatherMapAnnotationBackgroundView(0);
  objc_msgSendSuper2(&v20, sel__setCornerRadius_, v10);
  sub_220F856C0();
  OUTLINED_FUNCTION_1_12();
  [v4 setFrame_];
  OUTLINED_FUNCTION_2_8();
  [v4 setCornerRadius_];
  OUTLINED_FUNCTION_1_12();
  [v4 setFrame_];
  OUTLINED_FUNCTION_2_8();
  [v4 setCornerRadius_];
  OUTLINED_FUNCTION_2_8();
  v17 = [objc_opt_self() bezierPathWithOvalInRect_];
  v18 = [v17 CGPath];

  [v4 setShadowPath_];
  return [v2 commit];
}

id sub_220E4690C()
{
  v1 = v0;
  sub_220FC0AB0();
  sub_220FC0A90();
  if (qword_2812CA0D8 != -1)
  {
    swift_once();
  }

  DeviceIsSlow();
  v2 = sub_220FC0AA0();

  if (v2)
  {
    v4 = [v0 layer];
    [v4 setShadowPathIsBounds_];

    v5 = [v1 layer];
    [v5 setCornerRadius_];

    v6 = *&v1[OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationPinView_outerShadowLayer];
    LODWORD(v7) = 1045220557;
    [v6 setShadowOpacity_];
    v8 = [objc_opt_self() blackColor];
    v9 = [v8 CGColor];

    [v6 setShadowColor_];
    [v6 setShadowOffset_];

    return [v6 setShadowRadius_];
  }

  return result;
}

id sub_220E46AC0(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationPinView_strokeLayer);
  v4 = type metadata accessor for WeatherMapAnnotationPinView.ViewModel(0);
  v5 = [*(a1 + *(v4 + 32)) CGColor];
  [v3 setBorderColor_];

  v6 = dbl_220FC99D8[*(a1 + *(v4 + 28))];

  return [v3 setBorderWidth_];
}

uint64_t sub_220E46C5C()
{
  result = type metadata accessor for WeatherMapAnnotationPinView.ViewModel(319);
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_220E46D54()
{
  result = type metadata accessor for WeatherMapAnnotationBackground(319);
  if (v1 <= 0x3F)
  {
    result = sub_220E1966C(319, &qword_2812C5B58);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MSAAType(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for WeatherMapAnnotationPinView.Size(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220E46F68()
{
  result = qword_27CF9CFB0;
  if (!qword_27CF9CFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9CFB0);
  }

  return result;
}

uint64_t sub_220E46FBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherMapAnnotationPinView.ViewModel(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_220E47020(uint64_t a1)
{
  v2 = type metadata accessor for WeatherMapAnnotationPinView.ViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220E4707C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_220E470E4(uint64_t *a1@<X0>, char a2@<W2>, uint64_t a3@<X3>, uint64_t *a4@<X5>, uint64_t a5@<X8>, uint64_t a6)
{
  v12 = *(v6 + 16);

  sub_220E65A70(v12, v154);
  if (*(&v154[1] + 1))
  {
    sub_220E1E72C(v154, v153);
    v13 = sub_220E48154(a1, (a4 & 0x8000000000) == 0);
    v14 = __swift_project_boxed_opaque_existential_1(v153, v153[3]);
    sub_220E1E2A8(*v14 + 32, v154);
    sub_220E482F0(a1, v154, v152);
    __swift_destroy_boxed_opaque_existential_0(v154);
    memcpy(v154, a1 + 2, 0xB8uLL);
    v15 = sub_220E435CC(v154);
    if (v15 == 1)
    {
      v136 = v13;
      sub_220E22B0C(v154);
      if (qword_2812C7508 != -1)
      {
        swift_once();
      }

      v50 = sub_220E1B804();

      if ((v50 & 1) != 0 && (a4 & 0x8000000000) == 0)
      {
        sub_220E1E2A8(v153, v150);
        __swift_mutable_project_boxed_opaque_existential_1(v150, v150[3]);
        OUTLINED_FUNCTION_9_1();
        OUTLINED_FUNCTION_1_4();
        MEMORY[0x28223BE20](v51, v52);
        OUTLINED_FUNCTION_3();
        v54 = OUTLINED_FUNCTION_11_2(v53);
        v55(v54);
        v56 = *v50;
        v57 = type metadata accessor for MainOverlayRenderContext();
        v148 = v57;
        v149 = &off_283481CA0;
        v147[0] = v56;
        v58 = type metadata accessor for HashOverlayRendererContext();
        v59 = objc_allocWithZone(v58);
        __swift_mutable_project_boxed_opaque_existential_1(v147, v57);
        OUTLINED_FUNCTION_9_1();
        OUTLINED_FUNCTION_1_4();
        MEMORY[0x28223BE20](v60, v61);
        OUTLINED_FUNCTION_3();
        v63 = OUTLINED_FUNCTION_5_3(v62);
        v64(v63);
        v65 = *a1;
        v145 = v57;
        v146 = &off_283481CA0;
        v144[0] = v65;
        sub_220E1E2A8(v144, v141);
        type metadata accessor for MTLPixelFormat(0);
        sub_220E4D10C();
        OUTLINED_FUNCTION_4_5();
        v66 = sub_220FC2600();
        sub_220E1E2A8(v144, &v139);
        v67 = swift_allocObject();
        sub_220E1E72C(&v139, v67 + 16);
        __swift_mutable_project_boxed_opaque_existential_1(v141, v142);
        OUTLINED_FUNCTION_1_4();
        MEMORY[0x28223BE20](v68, v69);
        OUTLINED_FUNCTION_3();
        v71 = OUTLINED_FUNCTION_6_2(v70);
        v72(v71);
        v73 = sub_220E4CA44(*a4, v136, a6, a3, 1, 0, v151, v66, 512.0, 512.0, sub_220E4D1B4, v67, v59);
        __swift_destroy_boxed_opaque_existential_0(v144);
        __swift_destroy_boxed_opaque_existential_0(v141);
        __swift_destroy_boxed_opaque_existential_0(v147);
        __swift_destroy_boxed_opaque_existential_0(v150);
        *(a5 + 24) = v58;
        *(a5 + 32) = &off_283481C50;
LABEL_29:
        *a5 = v73;
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_12_1();
      if (v150[3])
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (v15 == 4)
      {
        v135 = a3;
        sub_220E22B0C(v154);
        if ((a4 & 0x8000000000) == 0)
        {
          sub_220E1E2A8(v153, v147);
          __swift_mutable_project_boxed_opaque_existential_1(v147, v148);
          OUTLINED_FUNCTION_9_1();
          v131 = v16;
          OUTLINED_FUNCTION_1_4();
          MEMORY[0x28223BE20](v17, v18);
          OUTLINED_FUNCTION_3();
          v20 = OUTLINED_FUNCTION_11_2(v19);
          v21(v20);
          v22 = type metadata accessor for MainOverlayRenderContext();
          v145 = v22;
          v146 = &off_283481CA0;
          OUTLINED_FUNCTION_25_1();
          v133 = type metadata accessor for WindParticleOverlayRenderContext();
          v23 = objc_allocWithZone(v133);
          __swift_mutable_project_boxed_opaque_existential_1(v144, v22);
          OUTLINED_FUNCTION_9_1();
          v129 = v24;
          OUTLINED_FUNCTION_1_4();
          MEMORY[0x28223BE20](v25, v26);
          OUTLINED_FUNCTION_3();
          v28 = OUTLINED_FUNCTION_5_3(v27);
          v29(v28);
          v30 = *a1;

          v142 = v22;
          v143 = &off_283481CA0;
          v141[0] = v30;
          sub_220E1E2A8(v141, &v139);
          type metadata accessor for MTLPixelFormat(0);
          sub_220E4D10C();
          OUTLINED_FUNCTION_4_5();
          sub_220FC2600();

          __swift_mutable_project_boxed_opaque_existential_1(&v139, v140);
          OUTLINED_FUNCTION_9_1();
          OUTLINED_FUNCTION_1_4();
          MEMORY[0x28223BE20](v31, v32);
          OUTLINED_FUNCTION_3();
          v34 = OUTLINED_FUNCTION_5_3(v33);
          v35(v34);
          v36 = *a1;
          v138[3] = v22;
          v138[4] = &off_283481CA0;
          v138[0] = v36;
          v37 = OBJC_IVAR____TtC11WeatherMaps20OverlayRenderContext_texturePools;
          type metadata accessor for OverlayTexturePool();
          sub_220E4D1BC();
          *&v23[v37] = sub_220FC2600();
          v38 = &v23[OBJC_IVAR____TtC11WeatherMaps20OverlayRenderContext_colorMap];
          *v38 = 0u;
          *(v38 + 1) = 0u;
          *(v38 + 4) = 0;
          v38[40] = -1;
          sub_220E1E2A8(v138, &v23[OBJC_IVAR____TtC11WeatherMaps20OverlayRenderContext_mainContext]);
          v39 = OUTLINED_FUNCTION_19_0();
          sub_220E4D214(v39, v40, v41);
          if (v150[3])
          {
            v42 = swift_allocObject();
            memcpy((v42 + 16), v150, 0x78uLL);
            v43 = &off_283481D58;
            v44 = &type metadata for OverlayRenderContext.Shaders;
          }

          else
          {
            sub_220E45374(v150, &qword_27CF9CFC0);
            v44 = 0;
            v43 = 0;
            v42 = 0;
          }

          v126 = &v23[OBJC_IVAR____TtC11WeatherMaps20OverlayRenderContext_shaders];
          *v126 = v42;
          v126[1] = 0;
          v126[2] = 0;
          v126[3] = v44;
          v126[4] = v43;
          v127 = sub_220FC2600();
          swift_beginAccess();
          *&v23[v37] = v127;

          *&v23[OBJC_IVAR____TtC11WeatherMaps20OverlayRenderContext_destinationPixelFormat] = a6;
          v23[OBJC_IVAR____TtC11WeatherMaps20OverlayRenderContext_pixelReaderEnabled] = 0;
          *&v23[OBJC_IVAR____TtC11WeatherMaps20OverlayRenderContext_userInterfaceStyle] = v135;
          v137.receiver = v23;
          v137.super_class = type metadata accessor for OverlayRenderContext();
          v73 = objc_msgSendSuper2(&v137, sel_init, v129, v131);
          sub_220E45374(v151, &qword_27CF9CFC0);
          __swift_destroy_boxed_opaque_existential_0(v141);
          __swift_destroy_boxed_opaque_existential_0(v138);
          __swift_destroy_boxed_opaque_existential_0(&v139);
          __swift_destroy_boxed_opaque_existential_0(v144);
          __swift_destroy_boxed_opaque_existential_0(v147);
          *(a5 + 24) = v133;
          *(a5 + 32) = &off_283481C50;
          goto LABEL_29;
        }

        sub_220E1E2A8(v153, v147);
        sub_220E4D214(v152, v150, &qword_27CF9F3B0);
        __swift_mutable_project_boxed_opaque_existential_1(v147, v148);
        OUTLINED_FUNCTION_9_1();
        OUTLINED_FUNCTION_1_4();
        MEMORY[0x28223BE20](v97, v98);
        OUTLINED_FUNCTION_3();
        v100 = OUTLINED_FUNCTION_5_3(v99);
        v101(v100);
        v102 = type metadata accessor for MainOverlayRenderContext();
        v145 = v102;
        v146 = &off_283481CA0;
        OUTLINED_FUNCTION_25_1();
        v103 = type metadata accessor for WindIntensityOverlayRenderContext();
        v104 = objc_allocWithZone(v103);
        v105 = v102;
        __swift_mutable_project_boxed_opaque_existential_1(v144, v102);
        OUTLINED_FUNCTION_9_1();
        OUTLINED_FUNCTION_1_4();
        MEMORY[0x28223BE20](v106, v107);
        OUTLINED_FUNCTION_3();
        v109 = OUTLINED_FUNCTION_11_2(v108);
        v110(v109);
        v111 = *v13;
        v142 = v102;
        v143 = &off_283481CA0;
        v141[0] = v111;
        sub_220E1E2A8(v141, &v139);
        type metadata accessor for MTLPixelFormat(0);
        sub_220E4D10C();
        OUTLINED_FUNCTION_4_5();
        v112 = sub_220FC2600();
        __swift_mutable_project_boxed_opaque_existential_1(&v139, v140);
        OUTLINED_FUNCTION_1_4();
        MEMORY[0x28223BE20](v113, v114);
        OUTLINED_FUNCTION_3();
        v116 = OUTLINED_FUNCTION_7_1(v115);
        v117(v116);
        v118 = sub_220E4CA44(*v105, v13, a6, a3, 1, a2 & 1, v151, v112, 512.0, 512.0, 0, 0, v104);
        __swift_destroy_boxed_opaque_existential_0(v141);
        __swift_destroy_boxed_opaque_existential_0(&v139);
        v119 = OBJC_IVAR____TtC11WeatherMaps20OverlayRenderContext_colorMap;
        swift_beginAccess();
        v120 = v118;
        sub_220E4D27C(v150, v118 + v119);
        swift_endAccess();

        __swift_destroy_boxed_opaque_existential_0(v144);
        __swift_destroy_boxed_opaque_existential_0(v147);
        *(a5 + 24) = v103;
        *(a5 + 32) = &off_283481C50;
        *a5 = v120;
LABEL_30:
        sub_220E45374(v152, &qword_27CF9F3B0);
LABEL_31:
        __swift_destroy_boxed_opaque_existential_0(v153);
        return;
      }

      OUTLINED_FUNCTION_12_1();
      if (v150[3])
      {
LABEL_20:
        v74 = OUTLINED_FUNCTION_19_0();
        memcpy(v74, v75, 0x78uLL);
        sub_220E1E2A8(v153, v147);
        v76 = OUTLINED_FUNCTION_19_0();
        sub_220E4D0B0(v76, v77);
        type metadata accessor for MTLPixelFormat(0);
        sub_220E4D10C();
        v134 = sub_220FC2600();
        __swift_mutable_project_boxed_opaque_existential_1(v147, v148);
        OUTLINED_FUNCTION_9_1();
        OUTLINED_FUNCTION_1_4();
        MEMORY[0x28223BE20](v78, v79);
        OUTLINED_FUNCTION_3();
        v81 = OUTLINED_FUNCTION_7_1(v80);
        v82(v81);
        v145 = type metadata accessor for MainOverlayRenderContext();
        v146 = &off_283481CA0;
        OUTLINED_FUNCTION_25_1();
        v83 = type metadata accessor for OverlayRenderContext();
        v84 = objc_allocWithZone(v83);
        OUTLINED_FUNCTION_29_0();
        OUTLINED_FUNCTION_1_4();
        MEMORY[0x28223BE20](v85, v86);
        OUTLINED_FUNCTION_3();
        v88 = OUTLINED_FUNCTION_6_2(v87);
        v89(v88);
        v90 = OUTLINED_FUNCTION_10_0();
        v96 = sub_220E4CA44(v91, v92, a6, a3, 1, v93, v94, v134, v90, v95, v128, v130, v132);
        __swift_destroy_boxed_opaque_existential_0(v144);
        __swift_destroy_boxed_opaque_existential_0(v147);
        *(a5 + 24) = v83;
        *(a5 + 32) = &off_283481C50;
        *a5 = v96;
        sub_220E4D160(v151);
        goto LABEL_30;
      }
    }

    sub_220E45374(v150, &qword_27CF9CFC0);
    if (qword_27CF9BFA0 != -1)
    {
      OUTLINED_FUNCTION_0_11();
    }

    v121 = sub_220FC17A0();
    OUTLINED_FUNCTION_23_0(v121, qword_27CF9CAF0);
    v122 = sub_220FC1780();
    v123 = sub_220FC2E10();
    if (OUTLINED_FUNCTION_21_0(v123))
    {
      v124 = OUTLINED_FUNCTION_20_0();
      OUTLINED_FUNCTION_24(v124);
      OUTLINED_FUNCTION_13(&dword_220E15000, v125, v123, "Cannot make overlay rendering shaders");
      OUTLINED_FUNCTION_14_0();
    }

    sub_220E45374(v152, &qword_27CF9F3B0);
    *a5 = 0u;
    *(a5 + 16) = 0u;
    *(a5 + 32) = 0;
    goto LABEL_31;
  }

  sub_220E45374(v154, &qword_27CF9D0D0);
  if (qword_27CF9BFA0 != -1)
  {
    OUTLINED_FUNCTION_0_11();
  }

  v45 = sub_220FC17A0();
  OUTLINED_FUNCTION_23_0(v45, qword_27CF9CAF0);
  v46 = sub_220FC1780();
  v47 = sub_220FC2E10();
  if (OUTLINED_FUNCTION_21_0(v47))
  {
    v48 = OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_24(v48);
    OUTLINED_FUNCTION_13(&dword_220E15000, v49, v47, "Cannot make overlay rendering context - no main render context available.");
    OUTLINED_FUNCTION_14_0();
  }

  *(a5 + 32) = 0;
  *a5 = 0u;
  *(a5 + 16) = 0u;
}

uint64_t sub_220E48154(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FA0];
  v13 = MEMORY[0x277D84FA0];
  v4 = sub_220F7C110();
  v5 = sub_220F62984(a2 & 1, v4);

  if (v5)
  {
    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = 40;
      do
      {
        switch(*(v5 + v7))
        {
          case 2:
            goto LABEL_8;
          case 3:
            if (qword_2812C7508 != -1)
            {
              swift_once();
            }

            v8 = sub_220E1B804();

            if (v8)
            {
LABEL_8:
              v9 = 6;
            }

            else
            {

              v10 = sub_220E20F44();

              if (v10)
              {
                v9 = 6;
              }

              else
              {
                v9 = 4;
              }
            }

            break;
          case 4:
            v9 = 2;
            break;
          case 5:
            v9 = 3;
            break;
          case 6:
            v9 = 5;
            break;
          default:
            v9 = 4;
            break;
        }

        sub_220E49E3C(&v12, v9);
        v7 += 16;
        --v6;
      }

      while (v6);

      return v13;
    }

    else
    {
    }
  }

  return v3;
}

void sub_220E482F0(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  __swift_project_boxed_opaque_existential_1((v3 + 24), *(v3 + 48));
  memcpy(__dst, (a1 + 16), sizeof(__dst));
  sub_220E941E4();
  if (!v7)
  {
    if (qword_27CF9BFA0 != -1)
    {
      swift_once();
    }

    v11 = sub_220FC17A0();
    __swift_project_value_buffer(v11, qword_27CF9CAF0);
    sub_220E4E4D8(a1, v41);
    v12 = sub_220FC1780();
    v13 = sub_220FC2E10();
    sub_220E3FCD0(a1);
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v40 = v15;
      *v14 = 136446466;
      memcpy(__src, a1, sizeof(__src));
      sub_220E4E4D8(a1, v41);
      sub_220E4E534();
      v16 = sub_220FC38F0();
      v18 = v17;
      memcpy(v41, __src, sizeof(v41));
      sub_220E3FCD0(v41);
      v19 = sub_220E20FF8(v16, v18, &v40);

      *(v14 + 4) = v19;
      *(v14 + 12) = 2082;
      __src[0] = 1;
      sub_220E4E588();
      v20 = sub_220FC38F0();
      v22 = sub_220E20FF8(v20, v21, &v40);

      *(v14 + 14) = v22;
      _os_log_impl(&dword_220E15000, v12, v13, "Cannot create color map. descriptor=%{public}s, version=%{public}s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D9DDF0](v15, -1, -1);
      MEMORY[0x223D9DDF0](v14, -1, -1);
    }

    goto LABEL_13;
  }

  v8 = v7;
  v9 = [v7 CGImage];
  if (!v9)
  {
    if (qword_27CF9BFA0 != -1)
    {
      swift_once();
    }

    v23 = sub_220FC17A0();
    __swift_project_value_buffer(v23, qword_27CF9CAF0);
    sub_220E4E4D8(a1, v41);
    v24 = v8;
    v12 = sub_220FC1780();
    v25 = sub_220FC2E10();
    sub_220E3FCD0(a1);

    if (os_log_type_enabled(v12, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v40 = v28;
      *v26 = 136446722;
      memcpy(__src, a1, sizeof(__src));
      sub_220E4E4D8(a1, v41);
      sub_220E4E534();
      v29 = sub_220FC38F0();
      v31 = v30;
      memcpy(v41, __src, sizeof(v41));
      sub_220E3FCD0(v41);
      v32 = sub_220E20FF8(v29, v31, &v40);

      *(v26 + 4) = v32;
      *(v26 + 12) = 2082;
      __src[0] = 1;
      sub_220E4E588();
      v33 = sub_220FC38F0();
      v35 = sub_220E20FF8(v33, v34, &v40);

      *(v26 + 14) = v35;
      *(v26 + 22) = 2114;
      *(v26 + 24) = v24;
      *v27 = v8;
      v36 = v24;
      _os_log_impl(&dword_220E15000, v12, v25, "Cannot get image reference from color map. descriptor=%{public}s, version=%{public}s, image=%{public}@", v26, 0x20u);
      sub_220E45374(v27, &qword_27CF9EF80);
      MEMORY[0x223D9DDF0](v27, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x223D9DDF0](v28, -1, -1);
      MEMORY[0x223D9DDF0](v26, -1, -1);

LABEL_14:
      *(a3 + 32) = 0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      v38 = -1;
      goto LABEL_15;
    }

LABEL_13:
    goto LABEL_14;
  }

  v10 = v9;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v37 = sub_220F82D7C(v10);

  *a3 = v37;
  v38 = 1;
LABEL_15:
  *(a3 + 40) = v38;
}

uint64_t sub_220E48A20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_220E4D214(a2, v67, &qword_27CF9F3B0);
  sub_220E1E2A8(a6, v66);
  v14 = __swift_mutable_project_boxed_opaque_existential_1(v66, v66[3]);
  MEMORY[0x28223BE20](v14, v14);
  v16 = (&v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = sub_220E4E384(v67, a3, a4, *v16, type metadata accessor for OverlayStaticShader, sub_220E4DB58);
  result = __swift_destroy_boxed_opaque_existential_0(v66);
  if (v18)
  {
    v58 = a5;
    v59 = a4;
    v60 = a3;
    v62 = v18;
    memcpy(v67, (a1 + 16), 0xB8uLL);
    v20 = sub_220E435CC(v67);
    v21 = sub_220E22B0C(v67);
    v22 = v20;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    switch(v22)
    {
      case 1:
        if (*v21 < 1)
        {
          goto LABEL_11;
        }

        if (qword_2812C7508 != -1)
        {
          swift_once();
        }

        v29 = sub_220E1B804();

        v30 = v60;
        if (v29)
        {
          v31 = a2;
LABEL_19:
          sub_220E4D214(v31, v66, &qword_27CF9F3B0);
          sub_220E1E2A8(a6, v64);
          v53 = __swift_mutable_project_boxed_opaque_existential_1(v64, v65);
          MEMORY[0x28223BE20](v53, v53);
          v55 = (&v57 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
          (*(v56 + 16))(v55);
          v36 = *v55;
          v37 = v59 & 1;
          v38 = v30;
          goto LABEL_20;
        }

        v39 = sub_220E20F44();

        v31 = a2;
        if ((v39 & 1) == 0)
        {
          goto LABEL_19;
        }

        sub_220E4D214(a2, v66, &qword_27CF9F3B0);
        __swift_project_boxed_opaque_existential_1((v61 + 24), *(v61 + 48));
        v40 = sub_220E952B8(v58);
        sub_220E1E2A8(a6, v64);
        v41 = __swift_mutable_project_boxed_opaque_existential_1(v64, v65);
        MEMORY[0x28223BE20](v41, v41);
        v43 = (&v57 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v44 + 16))(v43);
        v45 = *v43;
        v46 = type metadata accessor for MainOverlayRenderContext();
        v63[3] = v46;
        v63[4] = &off_283481CA0;
        v63[0] = v45;
        v47 = type metadata accessor for OverlayComposedTweeningShader();
        v48 = swift_allocObject();
        v49 = __swift_mutable_project_boxed_opaque_existential_1(v63, v46);
        MEMORY[0x28223BE20](v49, v49);
        v51 = (&v57 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v52 + 16))(v51);
        v23 = sub_220E4DF58(v66, v40, v30, v59 & 1, *v51, v48);
        __swift_destroy_boxed_opaque_existential_0(v63);
        __swift_destroy_boxed_opaque_existential_0(v64);
        v26 = 0;
        v27 = 0;
        v28 = 0;
        if (v23)
        {
          v25 = &off_283486FE8;
        }

        else
        {
          v25 = 0;
        }

        if (v23)
        {
          v24 = v47;
        }

        else
        {
          v24 = 0;
        }

LABEL_24:
        result = type metadata accessor for OverlayStaticShader();
        *(a7 + 24) = result;
        *(a7 + 32) = &off_283487018;
        *a7 = v62;
        *(a7 + 40) = v26;
        *(a7 + 48) = 0;
        *(a7 + 56) = 0;
        *(a7 + 64) = v27;
        *(a7 + 72) = v28;
        *(a7 + 80) = v23;
        *(a7 + 88) = 0;
        *(a7 + 96) = 0;
        *(a7 + 104) = v24;
        *(a7 + 112) = v25;
        break;
      case 2:
        if (*v21 < 1)
        {
LABEL_11:
          v23 = 0;
          v24 = 0;
          v25 = 0;
          v26 = 0;
        }

        else
        {
          sub_220E4D214(a2, v66, &qword_27CF9F3B0);
          sub_220E1E2A8(a6, v64);
          v32 = __swift_mutable_project_boxed_opaque_existential_1(v64, v65);
          MEMORY[0x28223BE20](v32, v32);
          v34 = (&v57 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
          (*(v35 + 16))(v34);
          v36 = *v34;
          v37 = v59 & 1;
          v38 = v60;
LABEL_20:
          v26 = sub_220E4E384(v66, v38, v37, v36, type metadata accessor for OverlayTweeningShader, sub_220E4DD58);
          __swift_destroy_boxed_opaque_existential_0(v64);
          if (v26)
          {
            v27 = type metadata accessor for OverlayTweeningShader();
            v23 = 0;
            v24 = 0;
            v25 = 0;
            v28 = &off_283487000;
            goto LABEL_24;
          }

          v23 = 0;
          v24 = 0;
          v25 = 0;
        }

        v27 = 0;
        v28 = 0;
        goto LABEL_24;
      default:
        goto LABEL_24;
    }
  }

  else
  {
    *(a7 + 112) = 0;
    *(a7 + 80) = 0u;
    *(a7 + 96) = 0u;
    *(a7 + 48) = 0u;
    *(a7 + 64) = 0u;
    *(a7 + 16) = 0u;
    *(a7 + 32) = 0u;
    *a7 = 0u;
  }

  return result;
}

double sub_220E49164@<D0>(uint64_t a1@<X8>)
{
  v74 = *MEMORY[0x277D85DE8];
  v2 = sub_220FC0090();
  OUTLINED_FUNCTION_1_4();
  v4 = v3;
  MEMORY[0x28223BE20](v5, v6);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  v10 = sub_220E49978();
  if (!v10)
  {
    if (qword_27CF9BFA0 != -1)
    {
      OUTLINED_FUNCTION_0_11();
    }

    v36 = sub_220FC17A0();
    OUTLINED_FUNCTION_23_0(v36, qword_27CF9CAF0);
    v37 = sub_220FC1780();
    v38 = sub_220FC2E30();
    if (OUTLINED_FUNCTION_21_0(v38))
    {
      v39 = OUTLINED_FUNCTION_20_0();
      *v39 = 0;
      _os_log_impl(&dword_220E15000, v37, v38, "Not rendering overlays using Metal - no device available", v39, 2u);
      OUTLINED_FUNCTION_15();
    }

    goto LABEL_22;
  }

  v11 = v10;
  v12 = sub_220E49A60(v10);
  if (!v12)
  {
    if (qword_27CF9BFA0 != -1)
    {
      OUTLINED_FUNCTION_0_11();
    }

    v40 = sub_220FC17A0();
    OUTLINED_FUNCTION_23_0(v40, qword_27CF9CAF0);
    v37 = sub_220FC1780();
    v41 = sub_220FC2E30();
    if (OUTLINED_FUNCTION_21_0(v41))
    {
      v42 = OUTLINED_FUNCTION_20_0();
      OUTLINED_FUNCTION_24(v42);
      OUTLINED_FUNCTION_13(&dword_220E15000, v43, v41, "Not rendering overlays using Metal - no commandQueue available");
      OUTLINED_FUNCTION_14_0();
    }

    swift_unknownObjectRelease();
LABEL_22:

    goto LABEL_23;
  }

  v13 = v12;
  if (qword_2812C5B30 != -1)
  {
    swift_once();
  }

  v14 = sub_220E4C9B0(0xD000000000000013, 0x8000000220FDCB00, 0x62696C6C6174656DLL, 0xE800000000000000, qword_2812CE4B0);
  if (!v14)
  {
    if (qword_27CF9BFA0 != -1)
    {
      OUTLINED_FUNCTION_0_11();
    }

    v44 = sub_220FC17A0();
    OUTLINED_FUNCTION_23_0(v44, qword_27CF9CAF0);
    v45 = sub_220FC1780();
    v46 = sub_220FC2E30();
    if (OUTLINED_FUNCTION_21_0(v46))
    {
      v47 = OUTLINED_FUNCTION_20_0();
      OUTLINED_FUNCTION_24(v47);
      OUTLINED_FUNCTION_13(&dword_220E15000, v48, v46, "Cannot find Overlay Rendering Shader Library");
      OUTLINED_FUNCTION_14_0();
    }

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    goto LABEL_23;
  }

  v15 = v14;
  sub_220FC0070();

  v16 = sub_220FC0050();
  v71 = 0;
  v17 = [v11 newLibraryWithURL:v16 error:&v71];

  if (!v17)
  {
    v49 = v71;
    v50 = sub_220FBFFE0();

    swift_willThrow();
    if (qword_27CF9BFA0 != -1)
    {
      OUTLINED_FUNCTION_0_11();
    }

    v51 = sub_220FC17A0();
    OUTLINED_FUNCTION_23_0(v51, qword_27CF9CAF0);
    v52 = v50;
    v53 = sub_220FC1780();
    v54 = sub_220FC2E30();

    if (!os_log_type_enabled(v53, v54))
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      goto LABEL_38;
    }

    v55 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v71 = v66;
    *v55 = 136446210;
    swift_getErrorValue();
    v56 = sub_220FC39D0();
    v58 = sub_220E20FF8(v56, v57, &v71);

    *(v55 + 4) = v58;
    _os_log_impl(&dword_220E15000, v53, v54, "Not rendering overlays using Metal - shaders are unavailable. error=%{public}s", v55, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v66);
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_15();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v59 = OUTLINED_FUNCTION_16_0();
    v60(v59);
LABEL_23:
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return result;
  }

  v18 = v71;
  sub_220E49B4C(v11, &v71);
  if (!v71)
  {
    if (qword_27CF9BFA0 != -1)
    {
      OUTLINED_FUNCTION_0_11();
    }

    v61 = sub_220FC17A0();
    OUTLINED_FUNCTION_23_0(v61, qword_27CF9CAF0);
    v53 = sub_220FC1780();
    v62 = sub_220FC2E30();
    if (!OUTLINED_FUNCTION_21_0(v62))
    {

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      goto LABEL_40;
    }

    *OUTLINED_FUNCTION_20_0() = 0;
    OUTLINED_FUNCTION_28_0(&dword_220E15000, v63, v64, "Not rendering overlays using Metal - cannot allocate buffer to render primitives");
    OUTLINED_FUNCTION_15();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
LABEL_38:

LABEL_40:
    (v4[1])(v9, v2);
    goto LABEL_23;
  }

  v65 = v71;
  v67 = v72;
  v68 = v73;
  if (qword_27CF9BFA0 != -1)
  {
    OUTLINED_FUNCTION_0_11();
  }

  v19 = sub_220FC17A0();
  OUTLINED_FUNCTION_23_0(v19, qword_27CF9CAF0);
  v20 = sub_220FC1780();
  v21 = sub_220FC2E30();
  if (OUTLINED_FUNCTION_21_0(v21))
  {
    *OUTLINED_FUNCTION_20_0() = 0;
    OUTLINED_FUNCTION_28_0(&dword_220E15000, v22, v23, "Successfully set up dynamic overlay rendering");
    OUTLINED_FUNCTION_15();
  }

  v24 = type metadata accessor for OverlayTextureLoader();
  swift_allocObject();
  swift_unknownObjectRetain_n();
  swift_unknownObjectRetain();
  v70[3] = v24;
  v70[4] = &off_283486DC0;
  v70[0] = sub_220F82A30(v11);
  v25 = type metadata accessor for MainOverlayRenderContext();
  v26 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v70, v24);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_1_4();
  MEMORY[0x28223BE20](v27, v28);
  OUTLINED_FUNCTION_3();
  v30 = OUTLINED_FUNCTION_6_2(v29);
  v31(v30);
  v32 = *v4;
  *(v26 + 56) = v24;
  *(v26 + 64) = &off_283486DC0;
  *(v26 + 72) = v17;
  *(v26 + 24) = v13;
  *(v26 + 32) = v32;
  *(v26 + 16) = v11;
  *(v26 + 80) = v65;
  *(v26 + 88) = v67;
  *(v26 + 104) = v68;
  swift_unknownObjectRetain();
  sub_220E4D214(&v71, v69, &qword_27CF9CFB8);
  __swift_destroy_boxed_opaque_existential_0(v70);
  *(a1 + 24) = v25;
  *(a1 + 32) = &off_283481CA0;
  sub_220E45374(&v71, &qword_27CF9CFB8);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  *a1 = v26;
  v33 = OUTLINED_FUNCTION_16_0();
  v34(v33);
  return result;
}

id sub_220E49978()
{
  if (qword_27CF9BFA0 != -1)
  {
    swift_once();
  }

  v0 = sub_220FC17A0();
  __swift_project_value_buffer(v0, qword_27CF9CAF0);
  v1 = sub_220FC1780();
  v2 = sub_220FC2E30();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_220E15000, v1, v2, "Return Metal System Default device", v3, 2u);
    MEMORY[0x223D9DDF0](v3, -1, -1);
  }

  return MTLCreateSystemDefaultDevice();
}

id sub_220E49A60(void *a1)
{
  result = [a1 newCommandQueue];
  if (!result)
  {
    if (qword_27CF9BFA0 != -1)
    {
      swift_once();
    }

    v2 = sub_220FC17A0();
    __swift_project_value_buffer(v2, qword_27CF9CAF0);
    v3 = sub_220FC1780();
    v4 = sub_220FC2E10();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_220E15000, v3, v4, "Unable to create a new commandQueue", v5, 2u);
      MEMORY[0x223D9DDF0](v5, -1, -1);
    }

    return 0;
  }

  return result;
}

void sub_220E49B4C(void *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF78);
  inited = swift_initStackObject();
  __asm { FMOV            V1.2S, #-1.0 }

  *(inited + 32) = _D1;
  *(inited + 16) = xmmword_220FC9880;
  __asm { FMOV            V2.2S, #1.0 }

  *(inited + 40) = 0x3F80000000000000;
  *(inited + 48) = -_D2;
  *(inited + 56) = _D2;
  *(inited + 64) = -_D1;
  *(inited + 72) = 0;
  *(inited + 80) = _D2;
  *(inited + 88) = 1065353216;
  v11 = [a1 newBufferWithBytes:inited + 32 length:64 options:0];

  if (v11)
  {
    v12 = 1;
    v13 = 4;
  }

  else
  {
    if (qword_27CF9BFA0 != -1)
    {
      swift_once();
    }

    v14 = sub_220FC17A0();
    __swift_project_value_buffer(v14, qword_27CF9CAF0);
    v15 = sub_220FC1780();
    v16 = sub_220FC2E10();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_220E15000, v15, v16, "Unable to allocate vertex buffer", v17, 2u);
      MEMORY[0x223D9DDF0](v17, -1, -1);
    }

    v11 = 0;
    v13 = 0;
    v12 = 0;
  }

  *a2 = v11;
  a2[1] = v13;
  a2[2] = v13;
  a2[3] = 0;
  a2[4] = v12;
}