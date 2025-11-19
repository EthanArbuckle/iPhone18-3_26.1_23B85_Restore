uint64_t sub_220F31868()
{
  result = sub_220F32B5C(sub_220F346EC);
  *(v0 + OBJC_IVAR____TtC11WeatherMaps15WeatherMapStore_overlayIsTransitioning) = 0;
  return result;
}

void sub_220F318B0()
{
  v1 = type metadata accessor for WeatherMapStore.ViewModel(0);
  v2 = OUTLINED_FUNCTION_8_0(v1);
  MEMORY[0x28223BE20](v2, v3);
  OUTLINED_FUNCTION_3();
  v6 = v5 - v4;
  if ((*(v0 + OBJC_IVAR____TtC11WeatherMaps15WeatherMapStore_isViewModelSubjectPaused) & 1) == 0)
  {
    v7 = OBJC_IVAR____TtC11WeatherMaps15WeatherMapStore_viewModel;
    OUTLINED_FUNCTION_5_1();
    OUTLINED_FUNCTION_1_56();
    sub_220F34790(v0 + v7, v6, v8);
    sub_220FC1980();
    OUTLINED_FUNCTION_0_65();
    sub_220F34738(v6, v9);
  }
}

uint64_t sub_220F3196C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11WeatherMaps15WeatherMapStore_viewModel;
  swift_beginAccess();
  sub_220F34854(a1, v1 + v3);
  swift_endAccess();
  sub_220F318B0();
  OUTLINED_FUNCTION_0_65();
  return sub_220F34738(a1, v4);
}

void sub_220F319DC()
{
  OUTLINED_FUNCTION_29_2();
  v3 = v2;
  v5 = v4;
  v6 = sub_220FC1070();
  OUTLINED_FUNCTION_6();
  v8 = v7;
  MEMORY[0x28223BE20](v9, v10);
  OUTLINED_FUNCTION_4();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v35 - v16;
  MEMORY[0x28223BE20](v18, v19);
  OUTLINED_FUNCTION_10_19();
  v20 = (v0 + *(type metadata accessor for WeatherMapStore.ViewModel(0) + 36));
  v21 = v20[1];
  if (v21)
  {
    v35 = v17;
    v36 = v1;
    v37 = v3;
    v22 = 0;
    v23 = *v20;
    v24 = *(v0 + 40);
    v40 = *(v24 + 16);
    v38 = v5;
    v39 = v8 + 16;
    while (v40 != v22)
    {
      if (v22 >= *(v24 + 16))
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_26_11();
      (*(v8 + 16))(v13, v24 + v25 + *(v8 + 72) * v22, v6);
      if (sub_220FC1020() == v23 && v21 == v26)
      {

LABEL_14:
        v29 = *(v8 + 32);
        v30 = v35;
        v29(v35, v13, v6);
        v31 = v36;
        v29(v36, v30, v6);
        v32 = (v37 & 1) == 0;
        v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EC08);
        v34 = &v38[*(v33 + 48)];
        v29(v38, v31, v6);
        *v34 = v32;
        v34[8] = 1;
        break;
      }

      v28 = sub_220FC3940();

      if (v28)
      {
        goto LABEL_14;
      }

      (*(v8 + 8))(v13, v6);
      ++v22;
    }
  }

  type metadata accessor for InteractiveFocus();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_22();
}

void sub_220F31C5C()
{
  OUTLINED_FUNCTION_5_1();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_220FC0C80();
    sub_220FC0C60();
    v2 = sub_220FC0C40();

    sub_220FC0C60();
    v3 = sub_220FC0C70();

    v4 = v2;
    v5 = v3;

    sub_220F32998(v6, v4, v5, v1);
  }
}

uint64_t sub_220F31D24()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11WeatherMaps15WeatherMapStore_unitObserver;
  OUTLINED_FUNCTION_5_1();
  if (*(v0 + v2))
  {

    sub_220EC2890();
  }

  OUTLINED_FUNCTION_0_65();
  sub_220F34738(v0 + v3, v4);

  v5 = OBJC_IVAR____TtC11WeatherMaps15WeatherMapStore_mapsConfiguration;
  sub_220FC0E70();
  OUTLINED_FUNCTION_2();
  (*(v6 + 8))(v1 + v5);
  __swift_destroy_boxed_opaque_existential_0(v1 + OBJC_IVAR____TtC11WeatherMaps15WeatherMapStore_scaleModelFactory);

  sub_220E3B2DC(v1 + OBJC_IVAR____TtC11WeatherMaps15WeatherMapStore_performanceTestConditions, &qword_27CF9F030);
  return v1;
}

uint64_t sub_220F31E1C()
{
  sub_220F31D24();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_220F31E9C()
{
  type metadata accessor for WeatherMapStore.ViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_220FC0E70();
    if (v1 <= 0x3F)
    {
      sub_220F32288(319, qword_2812C7FA0, type metadata accessor for WeatherMapPerformanceTestConditions, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_220F32050()
{
  sub_220F322EC(319, &qword_2812C5D30);
  if (v0 <= 0x3F)
  {
    sub_220F32288(319, &qword_2812C5DB0, MEMORY[0x277D7AB60], MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_220F32288(319, &qword_2812CA010, type metadata accessor for WeatherMapOverlay, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_220F322EC(319, &qword_2812C5DC0);
        if (v3 <= 0x3F)
        {
          sub_220F32338();
          if (v4 <= 0x3F)
          {
            type metadata accessor for InteractiveFocus();
            if (v5 <= 0x3F)
            {
              sub_220F3239C();
              if (v6 <= 0x3F)
              {
                type metadata accessor for WeatherMapPresentedPicker(319);
                if (v7 <= 0x3F)
                {
                  sub_220E1966C(319, &unk_2812C5CB0);
                  if (v8 <= 0x3F)
                  {
                    sub_220E1966C(319, &qword_2812C5D00);
                    if (v9 <= 0x3F)
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

void sub_220F32288(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_220F322EC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_220FC33A0();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_220F32338()
{
  if (!qword_2812C5DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9F000);
    v0 = sub_220FC33A0();
    if (!v1)
    {
      atomic_store(v0, &qword_2812C5DC8);
    }
  }
}

void sub_220F3239C()
{
  if (!qword_2812C5DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9F008);
    sub_220F32414();
    v0 = sub_220FC2620();
    if (!v1)
    {
      atomic_store(v0, &qword_2812C5DD0);
    }
  }
}

unint64_t sub_220F32414()
{
  result = qword_2812C9F18;
  if (!qword_2812C9F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C9F18);
  }

  return result;
}

uint64_t sub_220F32468(void (*a1)(uint64_t))
{
  v3 = type metadata accessor for WeatherMapStore.ViewModel(0);
  v4 = OUTLINED_FUNCTION_8_0(v3);
  MEMORY[0x28223BE20](v4, v5);
  OUTLINED_FUNCTION_3();
  v8 = v7 - v6;
  v9 = OBJC_IVAR____TtC11WeatherMaps15WeatherMapStore_isViewModelSubjectPaused;
  *(v1 + OBJC_IVAR____TtC11WeatherMaps15WeatherMapStore_isViewModelSubjectPaused) = 1;
  a1(v1);
  *(v1 + v9) = 0;
  v10 = OBJC_IVAR____TtC11WeatherMaps15WeatherMapStore_viewModel;
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_1_56();
  sub_220F34790(v1 + v10, v8, v11);
  sub_220FC1980();
  OUTLINED_FUNCTION_0_65();
  return sub_220F34738(v8, v12);
}

void sub_220F32544()
{
  OUTLINED_FUNCTION_29_2();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = type metadata accessor for InteractiveFocus();
  v10 = OUTLINED_FUNCTION_8_0(v9);
  MEMORY[0x28223BE20](v10, v11);
  OUTLINED_FUNCTION_3();
  v12 = OUTLINED_FUNCTION_17_11();
  v13 = type metadata accessor for WeatherMapStore.ViewModel(v12);
  v14 = (v8 + v13[9]);

  *v14 = v6;
  v14[1] = v4;
  sub_220F319DC();
  sub_220F347F0(v0, v8 + v13[11]);
  *(v8 + v13[12]) = 1;
  *(v8 + v13[18]) = v2;
  OUTLINED_FUNCTION_22();
}

uint64_t sub_220F32618()
{
  OUTLINED_FUNCTION_28_9();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v3, v4);
  OUTLINED_FUNCTION_3();
  v5 = OUTLINED_FUNCTION_16_12();
  v6 = type metadata accessor for WeatherMapStore.ViewModel(v5);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v7, v8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_15_8();
  MEMORY[0x28223BE20](v9, v10);
  OUTLINED_FUNCTION_10_19();
  v11 = OBJC_IVAR____TtC11WeatherMaps15WeatherMapStore_viewModel;
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_1_56();
  sub_220F34790(v0 + v11, v2, v12);
  v13 = v2 + *(v6 + 44);
  OUTLINED_FUNCTION_5_27();
  v14 = OUTLINED_FUNCTION_27_10();
  sub_220F34790(v14, v15, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  OUTLINED_FUNCTION_2_38();
  sub_220F34738(v13, v18);
  if (EnumCaseMultiPayload == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EC08);
    sub_220FC1070();
    OUTLINED_FUNCTION_2();
    v19 = OUTLINED_FUNCTION_27_10();
    v20(v19);
  }

  OUTLINED_FUNCTION_23_10(1.0);
  *(v2 + *(v6 + 48)) = 1;
  OUTLINED_FUNCTION_1_56();
  sub_220F34790(v2, v1, v21);
  sub_220F3196C(v1);
  OUTLINED_FUNCTION_0_65();
  sub_220F34738(v2, v22);
}

uint64_t sub_220F327D8()
{
  OUTLINED_FUNCTION_28_9();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v3, v4);
  OUTLINED_FUNCTION_3();
  v5 = OUTLINED_FUNCTION_16_12();
  v6 = type metadata accessor for WeatherMapStore.ViewModel(v5);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v7, v8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_15_8();
  MEMORY[0x28223BE20](v9, v10);
  OUTLINED_FUNCTION_10_19();
  v11 = OBJC_IVAR____TtC11WeatherMaps15WeatherMapStore_viewModel;
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_1_56();
  sub_220F34790(v0 + v11, v2, v12);
  v13 = v2 + *(v6 + 44);
  OUTLINED_FUNCTION_5_27();
  v14 = OUTLINED_FUNCTION_27_10();
  sub_220F34790(v14, v15, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  OUTLINED_FUNCTION_2_38();
  sub_220F34738(v13, v18);
  if (EnumCaseMultiPayload == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EC08);
    sub_220FC1070();
    OUTLINED_FUNCTION_2();
    v19 = OUTLINED_FUNCTION_27_10();
    v20(v19);
  }

  OUTLINED_FUNCTION_23_10(-1.0);
  *(v2 + *(v6 + 48)) = 1;
  OUTLINED_FUNCTION_1_56();
  sub_220F34790(v2, v1, v21);
  sub_220F3196C(v1);
  OUTLINED_FUNCTION_0_65();
  sub_220F34738(v2, v22);
}

void sub_220F32998(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v8 = type metadata accessor for WeatherMapStore.ViewModel(0);
  v9 = (v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = __src - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  MEMORY[0x28223BE20](v13, v14);
  v16 = __src - v15 + 16;
  v17 = OBJC_IVAR____TtC11WeatherMaps15WeatherMapStore_viewModel;
  swift_beginAccess();
  sub_220F34790(a1 + v17, v16, type metadata accessor for WeatherMapStore.ViewModel);
  objc_storeStrong(&v16[v9[21]], a2);
  objc_storeStrong(&v16[v9[22]], a3);
  __swift_project_boxed_opaque_existential_1((a4 + OBJC_IVAR____TtC11WeatherMaps15WeatherMapStore_scaleModelFactory), *(a4 + OBJC_IVAR____TtC11WeatherMaps15WeatherMapStore_scaleModelFactory + 24));
  __dst[0] = v16[48];
  sub_220EEFF7C(__dst, &v16[v9[10]], __src);
  v18 = v9[16];
  memcpy(__dst, &v16[v18], 0x61uLL);
  sub_220EA7278(__dst);
  memcpy(&v16[v18], __src, 0x61uLL);
  sub_220F34790(v16, v12, type metadata accessor for WeatherMapStore.ViewModel);
  sub_220F3196C(v12);
  sub_220F34738(v16, type metadata accessor for WeatherMapStore.ViewModel);
}

uint64_t sub_220F32B5C(void (*a1)(uint64_t))
{
  v5 = type metadata accessor for WeatherMapStore.ViewModel(0);
  v6 = OUTLINED_FUNCTION_8_0(v5);
  MEMORY[0x28223BE20](v6, v7);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_15_8();
  MEMORY[0x28223BE20](v8, v9);
  OUTLINED_FUNCTION_10_19();
  v10 = OBJC_IVAR____TtC11WeatherMaps15WeatherMapStore_viewModel;
  OUTLINED_FUNCTION_5_1();
  sub_220F34790(v1 + v10, v3, type metadata accessor for WeatherMapStore.ViewModel);
  a1(v3);
  sub_220F34790(v3, v2, type metadata accessor for WeatherMapStore.ViewModel);
  sub_220F3196C(v2);
  OUTLINED_FUNCTION_0_65();
  return sub_220F34738(v3, v11);
}

void sub_220F32C58()
{
  OUTLINED_FUNCTION_29_2();
  v3 = v2;
  v79 = type metadata accessor for WeatherMapStore.ViewModel(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v4, v5);
  OUTLINED_FUNCTION_3();
  v70 = v7 - v6;
  v72 = type metadata accessor for InteractiveFocus();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v8, v9);
  OUTLINED_FUNCTION_4();
  v73 = v10 - v11;
  MEMORY[0x28223BE20](v12, v13);
  v75 = &v70 - v14;
  v15 = sub_220FC1070();
  OUTLINED_FUNCTION_6();
  v17 = v16;
  MEMORY[0x28223BE20](v18, v19);
  OUTLINED_FUNCTION_4();
  v22 = v20 - v21;
  MEMORY[0x28223BE20](v23, v24);
  OUTLINED_FUNCTION_10_19();
  v25 = v0 + OBJC_IVAR____TtC11WeatherMaps15WeatherMapStore_viewModel;
  swift_beginAccess();
  v26 = *(v25 + 40);
  v78 = v25;
  *(v25 + 40) = v3;
  v27 = v26;

  v71 = v0;
  sub_220F318B0();
  v28 = *(v27 + 16);
  if (!v28)
  {
    LODWORD(v77) = 0;
    goto LABEL_17;
  }

  v74 = v3;
  v29 = 0;
  OUTLINED_FUNCTION_26_11();
  v76 = v27;
  v77 = v27 + v30;
  while (1)
  {
    if (v29 >= *(v27 + 16))
    {
      __break(1u);
      return;
    }

    (*(v17 + 16))(v1, v77 + *(v17 + 72) * v29, v15);
    sub_220FC1020();
    OUTLINED_FUNCTION_21_10();
    if (v32)
    {
      break;
    }

    v38 = OUTLINED_FUNCTION_14_14();
    v39(v38);
LABEL_12:
    ++v29;
    v27 = v76;
    if (v28 == v29)
    {
      LODWORD(v77) = 0;
      goto LABEL_16;
    }
  }

  if (v31 != *v33 || v32 != v1)
  {
    v35 = sub_220FC3940();

    v36 = OUTLINED_FUNCTION_14_14();
    v37(v36);
    if (v35)
    {
      LODWORD(v77) = 1;
      v3 = v74;
      goto LABEL_17;
    }

    goto LABEL_12;
  }

  v40 = OUTLINED_FUNCTION_14_14();
  v41(v40);
  LODWORD(v77) = 1;
LABEL_16:
  v3 = v74;
LABEL_17:

  v42 = *(v3 + 16);
  if (!v42)
  {
    goto LABEL_33;
  }

  v43 = *(v17 + 16);
  OUTLINED_FUNCTION_26_11();
  v45 = v3 + v44;
  v46 = *(v17 + 72);
  while (2)
  {
    v43(v22, v45, v15);
    sub_220FC1020();
    OUTLINED_FUNCTION_21_10();
    if (!v48)
    {

      v54 = OUTLINED_FUNCTION_18_11();
      v55(v54);
LABEL_27:
      v45 += v46;
      if (!--v42)
      {
        goto LABEL_33;
      }

      continue;
    }

    break;
  }

  if (v47 != *v49 || v48 != v22)
  {
    v51 = sub_220FC3940();

    v52 = OUTLINED_FUNCTION_18_11();
    v53(v52);
    if (v51)
    {
      goto LABEL_30;
    }

    goto LABEL_27;
  }

  v56 = OUTLINED_FUNCTION_18_11();
  v57(v56);
LABEL_30:
  if ((v77 & 1) == 0)
  {
    OUTLINED_FUNCTION_5_27();
    v60 = v75;
    sub_220F34790(v59 + v58, v75, v61);
    v62 = v73;
    swift_storeEnumTagMultiPayload();
    v63 = sub_220FAE714(v60, v62);
    sub_220F34738(v62, type metadata accessor for InteractiveFocus);
    sub_220F34738(v60, type metadata accessor for InteractiveFocus);
    if (v63)
    {
      OUTLINED_FUNCTION_1_56();
      v64 = v78;
      v65 = v70;
      sub_220F34790(v78, v70, v66);
      v67 = v75;
      sub_220F319DC();
      OUTLINED_FUNCTION_0_65();
      sub_220F34738(v65, v68);
      swift_beginAccess();
      v69 = v79;
      sub_220F347F0(v67, v64 + *(v79 + 44));
      swift_endAccess();
      sub_220F318B0();
      *(v64 + *(v69 + 48)) = 1;
      sub_220F318B0();
    }
  }

LABEL_33:
  OUTLINED_FUNCTION_22();
}

void sub_220F330CC(uint64_t a1)
{
  OUTLINED_FUNCTION_24_12();
  *(v1 + *(type metadata accessor for WeatherMapStore.ViewModel(0) + 40)) = a1;

  sub_220F318B0();
}

void sub_220F33130(uint64_t a1)
{
  OUTLINED_FUNCTION_24_12();
  *(v1 + *(type metadata accessor for WeatherMapStore.ViewModel(0) + 52)) = a1;

  sub_220F318B0();
}

void *sub_220F33194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 48) = *(a2 + 200);
  v6 = type metadata accessor for WeatherMapStore.ViewModel(0);
  v7 = *(v6 + 32);
  sub_220E3B2DC(a1 + v7, &unk_27CF9EB80);
  sub_220F34790(a2, a1 + v7, type metadata accessor for WeatherMapOverlay);
  v8 = type metadata accessor for WeatherMapOverlay();
  __swift_storeEnumTagSinglePayload(a1 + v7, 0, 1, v8);
  __swift_project_boxed_opaque_existential_1((a3 + OBJC_IVAR____TtC11WeatherMaps15WeatherMapStore_scaleModelFactory), *(a3 + OBJC_IVAR____TtC11WeatherMaps15WeatherMapStore_scaleModelFactory + 24));
  v15[0] = *(a1 + 48);
  sub_220EEFF7C(v15, a1 + v7, __src);
  if (__src[32] && __src[32] != 1)
  {
  }

  else
  {
    v9 = sub_220FC3940();

    if ((v9 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  if (*(a1 + 48) != 3)
  {
LABEL_10:
    v14 = *(v6 + 56);
    memcpy(v15, (a1 + v14), 0x61uLL);
    sub_220EA7278(v15);
    return memcpy((a1 + v14), __src, 0x61uLL);
  }

  sub_220EA7278(__src);
  if (qword_2812C78D8 != -1)
  {
    swift_once();
  }

  v11 = qword_2812CE540;
  v10 = *algn_2812CE548;
  v12 = (a1 + *(v6 + 56));
  memcpy(v15, v12, 0x61uLL);

  result = sub_220EA7278(v15);
  *v12 = 0x616C696176616E75;
  v12[1] = 0xEB00000000656C62;
  v12[2] = 0;
  v12[3] = 0;
  *(v12 + 16) = 2;
  v12[5] = v11;
  v12[6] = v10;
  v12[7] = MEMORY[0x277D84F90];
  v12[8] = 0;
  *(v12 + 72) = 0;
  *(v12 + 5) = xmmword_220FC8E20;
  *(v12 + 96) = 3;
  return result;
}

void sub_220F333E8()
{
  OUTLINED_FUNCTION_29_2();
  v1 = v0;
  v80 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F030);
  v4 = OUTLINED_FUNCTION_8_0(v3);
  MEMORY[0x28223BE20](v4, v5);
  OUTLINED_FUNCTION_4();
  v79 = v6 - v7;
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v75 - v10;
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v75 - v14;
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v75 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D6D0);
  v21 = OUTLINED_FUNCTION_8_0(v20);
  MEMORY[0x28223BE20](v21, v22);
  OUTLINED_FUNCTION_4();
  v25 = v23 - v24;
  MEMORY[0x28223BE20](v26, v27);
  v29 = &v75 - v28;
  v30 = sub_220FC1070();
  OUTLINED_FUNCTION_6();
  v78 = v31;
  MEMORY[0x28223BE20](v32, v33);
  OUTLINED_FUNCTION_4();
  v77 = v34 - v35;
  MEMORY[0x28223BE20](v36, v37);
  v39 = &v75 - v38;
  sub_220ED6038(v1, v19, &qword_27CF9F030);
  v40 = type metadata accessor for WeatherMapPerformanceTestConditions(0);
  OUTLINED_FUNCTION_12_16(v19);
  if (v41)
  {
    sub_220E3B2DC(v19, &qword_27CF9F030);
    OUTLINED_FUNCTION_42();
    __swift_storeEnumTagSinglePayload(v42, v43, v44, v30);
LABEL_5:
    sub_220E3B2DC(v29, &unk_27CF9D6D0);
    goto LABEL_6;
  }

  sub_220ED6038(v19, v29, &unk_27CF9D6D0);
  OUTLINED_FUNCTION_3_36();
  sub_220F34738(v19, v45);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v29, 1, v30);
  if (EnumTagSinglePayload == 1)
  {
    goto LABEL_5;
  }

  v60 = *(v78 + 32);
  v60(v39, v29, v30);
  sub_220ED6038(v1, v15, &qword_27CF9F030);
  OUTLINED_FUNCTION_12_16(v15);
  if (v41)
  {
    sub_220E3B2DC(v15, &qword_27CF9F030);
  }

  else
  {
    v67 = &v15[*(v40 + 20)];
    v76 = *v67;
    v68 = v67[8];
    OUTLINED_FUNCTION_3_36();
    sub_220F34738(v15, v69);
    if ((v68 & 1) == 0)
    {
      v70 = type metadata accessor for WeatherMapStore.ViewModel(0);
      v53 = v80;
      v71 = v80 + *(v70 + 44);
      OUTLINED_FUNCTION_2_38();
      sub_220F34738(v71, v72);
      v73 = v71 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EC08) + 48);
      v60(v71, v39, v30);
      *v73 = v76;
      *(v73 + 8) = 0;
      goto LABEL_22;
    }
  }

  (*(v78 + 8))(v39, v30);
LABEL_6:
  sub_220ED6038(v1, v11, &qword_27CF9F030);
  OUTLINED_FUNCTION_12_16(v11);
  if (v41)
  {
    sub_220E3B2DC(v11, &qword_27CF9F030);
    OUTLINED_FUNCTION_42();
    __swift_storeEnumTagSinglePayload(v47, v48, v49, v30);
    goto LABEL_10;
  }

  sub_220ED6038(v11, v25, &unk_27CF9D6D0);
  OUTLINED_FUNCTION_3_36();
  sub_220F34738(v11, v50);
  v51 = __swift_getEnumTagSinglePayload(v25, 1, v30);
  if (v51 != 1)
  {
    v61 = v77;
    v62 = *(v78 + 32);
    v62(v77, v25, v30);
    v63 = type metadata accessor for WeatherMapStore.ViewModel(0);
    v53 = v80;
    v64 = v80 + *(v63 + 44);
    OUTLINED_FUNCTION_2_38();
    sub_220F34738(v64, v65);
    v66 = v64 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EC08) + 48);
    v62(v64, v61, v30);
    *v66 = 1;
    *(v66 + 8) = 1;
LABEL_22:
    type metadata accessor for InteractiveFocus();
    goto LABEL_23;
  }

LABEL_10:
  sub_220E3B2DC(v25, &unk_27CF9D6D0);
  v52 = v79;
  sub_220ED6038(v1, v79, &qword_27CF9F030);
  OUTLINED_FUNCTION_12_16(v52);
  v53 = v80;
  if (v41)
  {
    sub_220E3B2DC(v52, &qword_27CF9F030);
  }

  else
  {
    v54 = v52 + *(v40 + 20);
    v55 = *v54;
    v56 = *(v54 + 8);
    OUTLINED_FUNCTION_3_36();
    sub_220F34738(v52, v57);
    if ((v56 & 1) == 0)
    {
      v58 = v53 + *(type metadata accessor for WeatherMapStore.ViewModel(0) + 44);
      OUTLINED_FUNCTION_2_38();
      sub_220F34738(v58, v59);
      *v58 = v55;
      *(v58 + 8) = 0;
      type metadata accessor for InteractiveFocus();
LABEL_23:
      swift_storeEnumTagMultiPayload();
    }
  }

  v74 = type metadata accessor for WeatherMapStore.ViewModel(0);
  *(v53 + *(v74 + 48)) = 1;
  *(v53 + *(v74 + 72)) = 0;
  OUTLINED_FUNCTION_22();
}

uint64_t sub_220F33988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CEE8);
  v9 = OUTLINED_FUNCTION_8_0(v8);
  MEMORY[0x28223BE20](v9, v10);
  OUTLINED_FUNCTION_17_11();
  v11 = sub_220FC0760();
  OUTLINED_FUNCTION_6();
  v13 = v12;
  MEMORY[0x28223BE20](v14, v15);
  OUTLINED_FUNCTION_3();
  v16 = OUTLINED_FUNCTION_16_12();
  v17 = *(a2 + *(type metadata accessor for WeatherMapStore.ViewModel(v16) + 40));
  if (!v17)
  {
    OUTLINED_FUNCTION_42();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v11);
    goto LABEL_5;
  }

  v18 = sub_220FC1020();
  sub_220F62B4C(v18, v19, v17, v3);

  if (__swift_getEnumTagSinglePayload(v3, 1, v11) == 1)
  {
LABEL_5:
    sub_220E3B2DC(v3, &qword_27CF9CEE8);
    sub_220FC1070();
    OUTLINED_FUNCTION_2();
    (*(v26 + 16))(a3, a1);
    goto LABEL_6;
  }

  v20 = *(v13 + 32);
  v20(v4, v3, v11);
  sub_220FC1070();
  OUTLINED_FUNCTION_2();
  (*(v21 + 16))(a3, a1);
  v22 = type metadata accessor for WeatherMapAnnotatedLocation(0);
  v20(a3 + *(v22 + 20), v4, v11);
LABEL_6:
  type metadata accessor for WeatherMapAnnotatedLocationData(0);
  return swift_storeEnumTagMultiPayload();
}

void sub_220F33BB4()
{
  OUTLINED_FUNCTION_29_2();
  v1 = v0;
  v3 = v2;
  type metadata accessor for WeatherMapOverlay();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v4, v5);
  OUTLINED_FUNCTION_3();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB80);
  v10 = OUTLINED_FUNCTION_8_0(v9);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v65[-1] - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F010);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v65[-1] - v17;
  v19 = *v3;
  v20 = *(v3 + 8);
  v21 = *(v3 + 16);
  v23 = *v1;
  v22 = *(v1 + 8);
  v24 = *(v1 + 16);
  if (v21 < 0)
  {
    if ((v24 & 0x8000000000000000) == 0)
    {
      goto LABEL_47;
    }

    if (LOBYTE(v20))
    {
      goto LABEL_7;
    }

    if (LOBYTE(v22) & 1 | (v19 != v23))
    {
      goto LABEL_47;
    }
  }

  else
  {
    if (v24 < 0)
    {
      goto LABEL_47;
    }

    v25 = *(v1 + 24);
    v26 = *(v3 + 24);
    if (v21)
    {
      LOBYTE(v22) = v24 & (v26 == v25);
LABEL_7:
      if ((LOBYTE(v22) & 1) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_19;
    }

    if (v24)
    {
      goto LABEL_47;
    }

    v27 = v19 == v23 && v20 == v22;
    if (!v27 || v26 != v25)
    {
      goto LABEL_47;
    }
  }

LABEL_19:
  v29 = *(v3 + 32);
  v30 = *(v1 + 32);
  if (v29 == 2)
  {
    if (v30 != 2)
    {
      goto LABEL_47;
    }
  }

  else if (v30 == 2 || ((v30 ^ v29) & 1) != 0)
  {
    goto LABEL_47;
  }

  sub_220F35194();
  if ((v31 & 1) == 0)
  {
    goto LABEL_47;
  }

  v32 = *(v3 + 48);
  v33 = *(v1 + 48);
  switch(v32)
  {
    case 5:
      if (v33 != 5)
      {
        goto LABEL_47;
      }

      break;
    case 4:
      if (v33 != 4)
      {
        goto LABEL_47;
      }

      break;
    case 3:
      if (v33 != 3)
      {
        goto LABEL_47;
      }

      break;
    default:
      if (v32 != v33 || (v33 - 6) >= 0xFFFFFFFD)
      {
        goto LABEL_47;
      }

      break;
  }

  v64 = type metadata accessor for WeatherMapStore.ViewModel(0);
  v35 = v64[8];
  v36 = *(v14 + 48);
  sub_220ED6038(v3 + v35, v18, &unk_27CF9EB80);
  sub_220ED6038(v1 + v35, &v18[v36], &unk_27CF9EB80);
  OUTLINED_FUNCTION_29_9(v18);
  if (v27)
  {
    OUTLINED_FUNCTION_29_9(&v18[v36]);
    if (v27)
    {
      sub_220E3B2DC(v18, &unk_27CF9EB80);
      goto LABEL_49;
    }

LABEL_46:
    sub_220E3B2DC(v18, &qword_27CF9F010);
    goto LABEL_47;
  }

  sub_220ED6038(v18, v13, &unk_27CF9EB80);
  OUTLINED_FUNCTION_29_9(&v18[v36]);
  if (v37)
  {
    sub_220F34738(v13, type metadata accessor for WeatherMapOverlay);
    goto LABEL_46;
  }

  sub_220EE5C4C(&v18[v36], v8);
  v38 = sub_220F0AA24(v13, v8);
  sub_220F34738(v8, type metadata accessor for WeatherMapOverlay);
  sub_220F34738(v13, type metadata accessor for WeatherMapOverlay);
  sub_220E3B2DC(v18, &unk_27CF9EB80);
  if (!v38)
  {
    goto LABEL_47;
  }

LABEL_49:
  v39 = v64;
  v40 = v64[9];
  v41 = (v3 + v40);
  v42 = *(v3 + v40 + 8);
  v43 = (v1 + v40);
  v44 = v43[1];
  if (v42)
  {
    if (!v44)
    {
      goto LABEL_47;
    }

    v45 = *v41 == *v43 && v42 == v44;
    if (!v45 && (sub_220FC3940() & 1) == 0)
    {
      goto LABEL_47;
    }
  }

  else if (v44)
  {
    goto LABEL_47;
  }

  v46 = v39[10];
  v47 = *(v3 + v46);
  v48 = *(v1 + v46);
  if (v47)
  {
    if (!v48)
    {
      goto LABEL_47;
    }

    sub_220F17768(v47, v48);
    v50 = v49;

    if ((v50 & 1) == 0)
    {
      goto LABEL_47;
    }
  }

  else if (v48)
  {
    goto LABEL_47;
  }

  if ((sub_220FAE714(v3 + v39[11], v1 + v39[11]) & 1) == 0)
  {
    goto LABEL_47;
  }

  OUTLINED_FUNCTION_9_20();
  if (!v27)
  {
    goto LABEL_47;
  }

  sub_220F17BE4(*(v3 + v39[13]), *(v1 + v39[13]));
  if ((v51 & 1) == 0)
  {
    goto LABEL_47;
  }

  v52 = v39[14];
  memcpy(v66, (v3 + v52), 0x61uLL);
  v53 = v39[14];
  memcpy(v67, (v1 + v53), 0x61uLL);
  memcpy(v69, (v3 + v52), sizeof(v69));
  memcpy(v70, (v1 + v53), 0x60uLL);
  sub_220E81E34(v66, v65);
  sub_220E81E34(v67, v65);
  if ((sub_220FBB128(v69, v70) & 1) == 0)
  {
    sub_220EA7278(v67);
    sub_220EA7278(v66);
    goto LABEL_47;
  }

  v54 = v66[96];
  v55 = v67[96];
  switch(v66[96])
  {
    case 5:
      sub_220EA7278(v67);
      sub_220EA7278(v66);
      if (v55 != 5)
      {
        goto LABEL_47;
      }

      goto LABEL_83;
    case 4:
      sub_220EA7278(v67);
      sub_220EA7278(v66);
      if (v55 != 4)
      {
        goto LABEL_47;
      }

      goto LABEL_83;
    case 3:
      sub_220EA7278(v67);
      sub_220EA7278(v66);
      if (v55 != 3)
      {
        goto LABEL_47;
      }

      goto LABEL_83;
  }

  sub_220EA7278(v67);
  sub_220EA7278(v66);
  if ((v55 - 6) <= 0xFFFFFFFC && v54 == v55)
  {
LABEL_83:
    OUTLINED_FUNCTION_9_20();
    if (v27)
    {
      static WeatherMapPresentedPicker.== infix(_:_:)(v3 + v64[16], v1 + v64[16], v57, v58, v59, v60, v61, v62, v64, v65[0], v65[1], v65[2], v65[3], v65[4], v65[5], v65[6], v65[7], v65[8], v65[9], v65[10]);
      if (v63)
      {
        memcpy(v68, (v3 + v64[17]), sizeof(v68));
        memcpy(v65, (v1 + v64[17]), 0x58uLL);
        if (sub_220EA4B30(v68, v65))
        {
          OUTLINED_FUNCTION_9_20();
          if (v27)
          {
            sub_220E1966C(0, &qword_2812C5B20);
            if (sub_220FC3250() & 1) != 0 && (sub_220FC3250())
            {
              OUTLINED_FUNCTION_9_20();
              if (v27)
              {
                OUTLINED_FUNCTION_9_20();
                if (v27)
                {
                  OUTLINED_FUNCTION_9_20();
                  if (v27)
                  {
                    OUTLINED_FUNCTION_9_20();
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_47:
  OUTLINED_FUNCTION_22();
}

uint64_t sub_220F34218@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CA90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220FC8E10;
  *(inited + 32) = 0x4D79616C70736964;
  *(inited + 40) = 0xEB0000000065646FLL;
  v4 = MEMORY[0x277D837D0];
  sub_220FC2600();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EF00);
  v21 = sub_220E453D4(&qword_27CF9EF08, &qword_27CF9EF00);
  __swift_allocate_boxed_opaque_existential_1Tm(v19);
  sub_220FC12A0();
  v5 = v20;
  v6 = __swift_project_boxed_opaque_existential_1(v19, v20);
  *(inited + 72) = v5;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((inited + 48));
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1Tm, v6, v5);
  *(inited + 80) = 0x4B79616C7265766FLL;
  *(inited + 88) = 0xEB00000000646E69;
  v8 = *(v1 + 48);
  switch(v8)
  {
    case 5:
      v9 = 0xE400000000000000;
      v10 = 1684957559;
      break;
    case 4:
      v9 = 0xEB00000000657275;
      v10 = 0x74617265706D6574;
      break;
    case 3:
      v9 = 0xEA00000000007974;
      v10 = 0x696C617551726961;
      break;
    default:
      v9 = 0xED00006E6F697461;
      v10 = 0x7469706963657270;
      break;
  }

  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_220FC8E30;
  *(v11 + 32) = 1701869940;
  *(v11 + 40) = 0xE400000000000000;
  *(v11 + 72) = v4;
  *(v11 + 48) = v10;
  *(v11 + 56) = v9;
  sub_220FC2600();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9DA10);
  v18 = sub_220E453D4(&qword_2812C5F98, &qword_27CF9DA10);
  __swift_allocate_boxed_opaque_existential_1Tm(v16);
  sub_220FC12A0();
  v12 = v17;
  v13 = __swift_project_boxed_opaque_existential_1(v16, v17);
  *(inited + 120) = v12;
  v14 = __swift_allocate_boxed_opaque_existential_1Tm((inited + 96));
  (*(*(v12 - 8) + 16))(v14, v13, v12);
  __swift_destroy_boxed_opaque_existential_0(v16);
  __swift_destroy_boxed_opaque_existential_0(v19);
  sub_220FC2600();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F018);
  a1[4] = sub_220E453D4(&qword_27CF9F020, &qword_27CF9F018);
  __swift_allocate_boxed_opaque_existential_1Tm(a1);
  type metadata accessor for WeatherMapStore.ViewModel(0);
  return sub_220FC12A0();
}

uint64_t sub_220F34660()
{
  sub_220F346F4(&qword_27CF9F028);

  return sub_220FC1290();
}

uint64_t sub_220F346F4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WeatherMapStore.ViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_220F34738(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_220F34790(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_220F347F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InteractiveFocus();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_220F34854(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherMapStore.ViewModel(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_23_10(double a1)
{
  *v1 = v3 + a1;
  *(v1 + 8) = 0;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_24_12()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_28_9()
{

  return type metadata accessor for InteractiveFocus();
}

id sub_220F349B0()
{
  v0 = sub_220FC26C0();

  v1 = [swift_getObjCClassFromMetadata() systemImageNamed_];

  return v1;
}

void sub_220F34A14(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_6_23(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_220F3817C(v4, 1, sub_220F36E74);
  OUTLINED_FUNCTION_31_7();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_13_16();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CA78);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_30_6();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_220F34ADC(unint64_t a1)
{
  v3 = sub_220F43CDC(a1);
  v4 = sub_220F43CDC(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_220F381F4(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_220F38294(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_220F34B88(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_6_23(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_220F38010(v4, 1);
  OUTLINED_FUNCTION_31_7();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v3 + 24) >> 1) - *(v3 + 16);
  sub_220FBFDE0();
  if (v7 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_30_6();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_220F34C70(uint64_t a1)
{
  OUTLINED_FUNCTION_6_23(a1);
  if (v4)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_24_13();
  sub_220F380E4(v5, 1, v6, v7, v8, v9);
  OUTLINED_FUNCTION_31_7();
  if (!v10)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_13_16();
  if (v11 != v4)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_30_6();
  if (!v4)
  {
    *(v3 + 16) = v12;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_220F34D28(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_6_23(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_220F3817C(v4, 1, sub_220F376B8);
  OUTLINED_FUNCTION_31_7();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_13_16();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_30_6();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_220F34DDC(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_6_23(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_220F380E4(v4, 1, &qword_27CF9F048, &unk_220FD4A18, &type metadata for ButtonGroup, sub_220F0CE5C);
  OUTLINED_FUNCTION_31_7();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_13_16();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_30_6();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_220F34EA4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return OUTLINED_FUNCTION_4_1();
  }

  if (!v2 || result == a2)
  {
    return OUTLINED_FUNCTION_27();
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_220F34EF8()
{
  OUTLINED_FUNCTION_29_2();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for LocationPickerViewModel.Row();
  OUTLINED_FUNCTION_42_4();
  MEMORY[0x28223BE20](v5, v6);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v13 = v20 - v12;
  v14 = *(v3 + 16);
  if (v14 == *(v1 + 16) && v14 && v3 != v1)
  {
    v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v16 = v3 + v15;
    v17 = v1 + v15;
    v18 = *(v11 + 72);
    while (1)
    {
      sub_220F39134(v16, v13, type metadata accessor for LocationPickerViewModel.Row);
      sub_220F39134(v17, v8, type metadata accessor for LocationPickerViewModel.Row);
      OUTLINED_FUNCTION_39_4();
      if ((sub_220FC1010() & 1) == 0)
      {
        break;
      }

      memcpy(v20, &v13[*(v4 + 20)], 0x41uLL);
      memcpy(v21, &v8[*(v4 + 20)], 0x41uLL);
      v19 = sub_220EDFD68(v20, v21);
      sub_220F39194(v8, type metadata accessor for LocationPickerViewModel.Row);
      sub_220F39194(v13, type metadata accessor for LocationPickerViewModel.Row);
      if (v19)
      {
        v17 += v18;
        v16 += v18;
        if (--v14)
        {
          continue;
        }
      }

      goto LABEL_11;
    }

    sub_220F39194(v8, type metadata accessor for LocationPickerViewModel.Row);
    sub_220F39194(v13, type metadata accessor for LocationPickerViewModel.Row);
  }

LABEL_11:
  OUTLINED_FUNCTION_22();
}

uint64_t sub_220F35108(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a2 + 104);
    for (i = (a1 + 104); ; i += 15)
    {
      v5 = *(i - 1) == *(v3 - 1) && *i == *v3;
      if (!v5 && (sub_220FC3940() & 1) == 0)
      {
        break;
      }

      v3 += 15;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_220F35194()
{
  OUTLINED_FUNCTION_29_2();
  v1 = v0;
  v3 = v2;
  v4 = sub_220FC1070();
  OUTLINED_FUNCTION_6();
  v6 = v5;
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11, v12);
  v15 = &v29 - v14;
  v16 = *(v3 + 16);
  if (v16 == *(v1 + 16) && v16 && v3 != v1)
  {
    v17 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v18 = v3 + v17;
    v19 = v1 + v17;
    v21 = *(v6 + 16);
    v20 = v6 + 16;
    v22 = (v20 - 8);
    v29 = *(v20 + 56);
    v30 = v21;
    while (1)
    {
      v23 = v30;
      (v30)(v15, v18, v4, v13);
      if (!v16)
      {
        break;
      }

      v24 = v20;
      v23(v10, v19, v4);
      sub_220F28050();
      v25 = sub_220FC26B0();
      v26 = *v22;
      (*v22)(v10, v4);
      v27 = OUTLINED_FUNCTION_39_4();
      (v26)(v27);
      if (v25)
      {
        v19 += v29;
        v18 += v29;
        v28 = v16-- == 1;
        v20 = v24;
        if (!v28)
        {
          continue;
        }
      }

      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    OUTLINED_FUNCTION_22();
  }
}

uint64_t sub_220F35358(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v18 = result + 32;
  v4 = a2 + 32;
  while (v3 != v2)
  {
    v5 = (v18 + 16 * v3);
    v6 = *v5;
    v7 = (v4 + 16 * v3);
    v8 = *v7;
    v9 = *(*v5 + 16);
    if (v9 != *(*v7 + 16))
    {
      return 0;
    }

    v10 = v5[8];
    v11 = v5[9];
    v12 = v7[8];
    v13 = v7[9];
    if (v9)
    {
      v14 = v6 == v8;
    }

    else
    {
      v14 = 1;
    }

    if (!v14)
    {
      v15 = (v8 + 104);
      v16 = (v6 + 104);
      while (v9)
      {
        result = *(v16 - 1);
        if (result != *(v15 - 1) || *v16 != *v15)
        {
          result = sub_220FC3940();
          if ((result & 1) == 0)
          {
            return 0;
          }
        }

        v15 += 15;
        v16 += 15;
        if (!--v9)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
      break;
    }

LABEL_19:
    result = 0;
    if (v10 == v12 && ((v11 ^ v13) & 1) == 0)
    {
      ++v3;
      result = 1;
      if (v3 != v2)
      {
        continue;
      }
    }

    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_220F3548C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v5 = 0;
    do
    {
      v6 = *(a1 + v5 + 40);
      v7 = *(a1 + v5 + 48);
      v8 = *(a1 + v5 + 56);
      v10 = *(a1 + v5 + 64);
      v9 = *(a1 + v5 + 72);
      v11 = *(a1 + v5 + 80);
      v12 = *(a2 + v5 + 40);
      v13 = *(a2 + v5 + 48);
      v14 = *(a2 + v5 + 56);
      v16 = *(a2 + v5 + 64);
      v15 = *(a2 + v5 + 72);
      v17 = *(a2 + v5 + 80);
      if (v6)
      {
        if (!v12)
        {
          return 0;
        }

        v18 = *(a1 + v5 + 32) == *(a2 + v5 + 32) && v6 == v12;
        if (!v18 && (sub_220FC3940() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v12)
      {
        return 0;
      }

      if (v7 == v13 && v8 == v14)
      {
        if (v10 != v16)
        {
          return 0;
        }
      }

      else
      {
        v20 = sub_220FC3940();
        result = 0;
        if ((v20 & 1) == 0 || v10 != v16)
        {
          return result;
        }
      }

      if (v11)
      {
        if (!v17)
        {
          return 0;
        }
      }

      else
      {
        if (v9 == v15)
        {
          v22 = v17;
        }

        else
        {
          v22 = 1;
        }

        if (v22)
        {
          return 0;
        }
      }

      v5 += 56;
      --v2;
    }

    while (v2);
  }

  return 1;
}

void sub_220F355D4()
{
  OUTLINED_FUNCTION_29_2();
  v1 = v0;
  v3 = v2;
  v69 = type metadata accessor for WeatherMapAnnotatedLocation(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_220FC1070();
  OUTLINED_FUNCTION_6();
  v9 = v8;
  MEMORY[0x28223BE20](v10, v11);
  v70 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EC18);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v61 - v15;
  v17 = type metadata accessor for WeatherMapAnnotatedLocationData(0);
  OUTLINED_FUNCTION_42_4();
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v23);
  MEMORY[0x28223BE20](v24, v25);
  v74 = &v61 - v26;
  MEMORY[0x28223BE20](v27, v28);
  v32 = &v61 - v30;
  v33 = *(v3 + 16);
  if (v33 != *(v1 + 16) || !v33 || v3 == v1)
  {
    goto LABEL_20;
  }

  v34 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v35 = v3 + v34;
  v36 = v1 + v34;
  v63 = (v9 + 32);
  v64 = v16;
  v66 = v31;
  v67 = (v9 + 8);
  v37 = *(v29 + 72);
  v65 = v7;
  v72 = v17;
  v62 = &v61 - v30;
  while (1)
  {
    sub_220F39134(v35, v32, type metadata accessor for WeatherMapAnnotatedLocationData);
    v38 = v74;
    sub_220F39134(v36, v74, type metadata accessor for WeatherMapAnnotatedLocationData);
    v39 = *(v73 + 48);
    sub_220F39134(v32, v16, type metadata accessor for WeatherMapAnnotatedLocationData);
    sub_220F39134(v38, &v16[v39], type metadata accessor for WeatherMapAnnotatedLocationData);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    v47 = v37;
    v48 = OUTLINED_FUNCTION_19_12();
    v49 = v66;
    sub_220F39134(v48, v66, v50);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*v67)(v49, v71);
LABEL_16:
      sub_220F0641C(v16);
      goto LABEL_19;
    }

    v51 = &v16[v39];
    v52 = v70;
    v53 = v21;
    v54 = v71;
    (*v63)(v70, v51, v71);
    v68 = sub_220FC1010();
    v55 = *v67;
    v56 = v52;
    v32 = v62;
    (*v67)(v56, v54);
    v57 = v54;
    v21 = v53;
    v16 = v64;
    v55(v49, v57);
    OUTLINED_FUNCTION_8_23();
    v37 = v47;
    if ((v68 & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_12:
    sub_220F39194(v74, type metadata accessor for WeatherMapAnnotatedLocationData);
    sub_220F39194(v32, type metadata accessor for WeatherMapAnnotatedLocationData);
    v36 += v37;
    v35 += v37;
    if (!--v33)
    {
      goto LABEL_20;
    }
  }

  v40 = OUTLINED_FUNCTION_19_12();
  sub_220F39134(v40, v21, v41);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_0_66();
    sub_220F39194(v21, v58);
    goto LABEL_16;
  }

  v42 = &v16[v39];
  v43 = v65;
  sub_220F06360(v42, v65);
  if (sub_220FC1010())
  {
    v44 = sub_220FC0750();
    OUTLINED_FUNCTION_0_66();
    sub_220F39194(v43, v45);
    if ((v44 & 1) == 0)
    {
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_0_66();
    sub_220F39194(v21, v46);
    OUTLINED_FUNCTION_8_23();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_0_66();
  sub_220F39194(v43, v59);
LABEL_18:
  OUTLINED_FUNCTION_0_66();
  sub_220F39194(v21, v60);
  OUTLINED_FUNCTION_8_23();
LABEL_19:
  sub_220F39194(v74, type metadata accessor for WeatherMapAnnotatedLocationData);
  sub_220F39194(v32, type metadata accessor for WeatherMapAnnotatedLocationData);
LABEL_20:
  OUTLINED_FUNCTION_22();
}

uint64_t sub_220F35AB4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return OUTLINED_FUNCTION_4_1();
  }

  if (!v2 || result == a2)
  {
    return OUTLINED_FUNCTION_27();
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_220F35B08()
{
  v1 = *v0;
  v2 = v0[1];
  OUTLINED_FUNCTION_45_6();

  MEMORY[0x223D9BD60](v1, v2);
  return 0xD000000000000023;
}

uint64_t ButtonGroup.Button.Menu.hashValue.getter()
{
  sub_220FC3A40();
  MEMORY[0x223D9CFA0](0);
  return sub_220FC3A90();
}

double ButtonGroup.Button.init(_:identifier:handler:endHandler:)@<D0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v13 = *a1;
  v14 = a1[1];
  v18 = *(a1 + 16);
  if (!a3)
  {
    a2 = sub_220F35B08();
    a3 = v16;
  }

  *a8 = v13;
  *(a8 + 8) = v14;
  *(a8 + 16) = v18;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  *(a8 + 56) = 257;
  *(a8 + 64) = a2;
  *(a8 + 72) = a3;
  result = 0.0;
  *(a8 + 80) = 0u;
  *(a8 + 96) = 0u;
  *(a8 + 112) = 0;
  return result;
}

uint64_t static ButtonGroup.Button.dismiss(_:identifier:handler:)@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *a1;
  v11 = a1[1];
  v12 = *(a1 + 16);
  if (a3)
  {
    sub_220E5696C();
    v14 = a3;
  }

  else
  {
    sub_220E5696C();
    a2 = sub_220F35B08();
  }

  *(a6 + 112) = 0;
  *(a6 + 80) = 0u;
  *(a6 + 96) = 0u;
  *a6 = v10;
  *(a6 + 8) = v11;
  *(a6 + 16) = v12;
  *(a6 + 64) = a2;
  *(a6 + 72) = v14;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  *(a6 + 40) = 0;
  *(a6 + 48) = 0;
  *(a6 + 56) = 258;
}

uint64_t _s11WeatherMaps11ButtonGroupV0C0V5EventO9hashValueSivg_0()
{
  v1 = *v0;
  sub_220FC3A40();
  MEMORY[0x223D9CFA0](v1);
  return sub_220FC3A90();
}

uint64_t ButtonGroup.init(alignment:buttons:)@<X0>(char *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  result = a2();
  *a3 = result;
  *(a3 + 8) = v4;
  *(a3 + 9) = 0;
  return result;
}

uint64_t static ButtonGroup.singleRoundButton(alignment:button:)@<X0>(char *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F040);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_220FC8E30;
  result = a2();
  *(a3 + 8) = v5;
  *(a3 + 9) = 1;
  *a3 = v6;
  return result;
}

uint64_t ButtonGroup.Button.accessibilityLabel(_:)(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_29_10(a1, a2, a3, a4, a5, a6, a7, a8, v13[0], v13[1], v13[2], v13[3], v13[4], v13[5], v13[6], v13[7], v13[8], v13[9], v13[10], v13[11], v13[12], v13[13], v13[14], v14[0]);
  memcpy(v11, v9, 0x78uLL);
  sub_220E32EEC(v14, v13);

  v11[10] = v10;
  v11[11] = v8;
  return result;
}

uint64_t ButtonGroup.Button.accessibilityHint(_:)(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_29_10(a1, a2, a3, a4, a5, a6, a7, a8, v13[0], v13[1], v13[2], v13[3], v13[4], v13[5], v13[6], v13[7], v13[8], v13[9], v13[10], v13[11], v13[12], v13[13], v13[14], v14[0]);
  memcpy(v11, v9, 0x78uLL);
  sub_220E32EEC(v14, v13);

  v11[12] = v10;
  v11[13] = v8;
  return result;
}

void ButtonGroup.Button.accessibilityImage(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  memcpy(__dst, v2, 0x78uLL);
  v5 = __dst[14];
  v6 = OUTLINED_FUNCTION_39_4();
  memcpy(v6, v7, 0x70uLL);
  sub_220E32EEC(__dst, v9);
  v8 = a1;

  *(a2 + 112) = a1;
}

void static ButtonGroupsBuilder.buildBlock(_:)()
{
  OUTLINED_FUNCTION_29_2();
  v1 = *(v0 + 16);
  v2 = (v0 + 32);
  v3 = MEMORY[0x277D84F90];
  if (v1)
  {
    while (1)
    {
      v4 = *v2;
      v5 = *(*v2 + 16);
      v6 = *(v3 + 16);
      v7 = v6 + v5;
      if (__OFADD__(v6, v5))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v7 > *(v3 + 24) >> 1)
      {
        if (v6 <= v7)
        {
          v9 = v6 + v5;
        }

        else
        {
          v9 = v6;
        }

        sub_220F37E74(isUniquelyReferenced_nonNull_native, v9, 1, v3, &qword_27CF9F048, &unk_220FD4A18, &type metadata for ButtonGroup, sub_220F0CE5C);
        v3 = v10;
      }

      if (*(v4 + 16))
      {
        if ((*(v3 + 24) >> 1) - *(v3 + 16) < v5)
        {
          goto LABEL_19;
        }

        swift_arrayInitWithCopy();

        if (v5)
        {
          v11 = *(v3 + 16);
          v12 = __OFADD__(v11, v5);
          v13 = v11 + v5;
          if (v12)
          {
            goto LABEL_20;
          }

          *(v3 + 16) = v13;
        }
      }

      else
      {

        if (v5)
        {
          goto LABEL_18;
        }
      }

      ++v2;
      if (!--v1)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_16:
    OUTLINED_FUNCTION_22();
  }
}

uint64_t static ButtonGroupsBuilder.buildExpression(_:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F048);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_220FC8E30;
  *(v4 + 32) = v1;
  *(v4 + 40) = v2;
  *(v4 + 41) = v3;

  return v4;
}

void static ButtonsBuilder.buildBlock(_:)()
{
  OUTLINED_FUNCTION_29_2();
  v1 = *(v0 + 16);
  v2 = (v0 + 32);
  v3 = MEMORY[0x277D84F90];
  if (v1)
  {
    while (1)
    {
      v4 = *v2;
      v5 = *(*v2 + 16);
      v6 = *(v3 + 16);
      v7 = v6 + v5;
      if (__OFADD__(v6, v5))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v7 > *(v3 + 24) >> 1)
      {
        if (v6 <= v7)
        {
          v9 = v6 + v5;
        }

        else
        {
          v9 = v6;
        }

        v3 = sub_220F37B9C(isUniquelyReferenced_nonNull_native, v9, 1, v3);
      }

      if (*(v4 + 16))
      {
        if ((*(v3 + 24) >> 1) - *(v3 + 16) < v5)
        {
          goto LABEL_19;
        }

        swift_arrayInitWithCopy();

        if (v5)
        {
          v10 = *(v3 + 16);
          v11 = __OFADD__(v10, v5);
          v12 = v10 + v5;
          if (v11)
          {
            goto LABEL_20;
          }

          *(v3 + 16) = v12;
        }
      }

      else
      {

        if (v5)
        {
          goto LABEL_18;
        }
      }

      ++v2;
      if (!--v1)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_16:
    OUTLINED_FUNCTION_22();
  }
}

uint64_t static ButtonsBuilder.buildOptional(_:)(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = MEMORY[0x277D84F90];
  }

  return v1;
}

uint64_t static ButtonsBuilder.buildExpression(_:)(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F040);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_220FC8E30;
  memcpy((v2 + 32), __src, 0x78uLL);
  sub_220E32EEC(__dst, &v4);
  return v2;
}

uint64_t sub_220F36424(char a1)
{
  sub_220FC35C0();
  MEMORY[0x223D9BD60](0xD000000000000042, 0x8000000220FE3910);
  if (a1)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (a1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x223D9BD60](v2, v3);

  return 0;
}

uint64_t static ButtonGroup.Button.locationPicker.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2812C5B30 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  v2 = qword_2812CE4B0;
  v3 = OUTLINED_FUNCTION_11_16();
  v5 = v4;

  sub_220E1966C(0, &qword_2812C5B50);
  sub_220F349B0();
  *a1 = xmmword_220FD49D0;
  OUTLINED_FUNCTION_41_3();
  *(a1 + 56) = 3;
  *(a1 + 57) = 1;
  *(a1 + 64) = 0xD00000000000002CLL;
  *(a1 + 72) = 0x8000000220FE35E0;
  *(a1 + 80) = v3;
  *(a1 + 88) = v5;
  return OUTLINED_FUNCTION_38_7(v6);
}

void static ButtonGroup.Button.overlayMenu.getter()
{
  OUTLINED_FUNCTION_44_5();
  v1 = v0;
  v2 = sub_220FC2300();
  if (qword_2812C5B30 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  v3 = "lay menu in the map controls";
  if (v2)
  {
    v4 = 0xD000000000000017;
  }

  else
  {
    v3 = "n adjective here, not a verb.";
    v4 = 0xD000000000000011;
  }

  v5 = v3 | 0x8000000000000000;
  v6 = qword_2812CE4B0;
  v7 = OUTLINED_FUNCTION_11_16();
  v9 = v8;

  sub_220E1966C(0, &qword_2812C5B50);
  sub_220F349B0();
  *v1 = v4;
  *(v1 + 8) = v5;
  OUTLINED_FUNCTION_41_3();
  *(v1 + 56) = 255;
  *(v1 + 64) = 0xD000000000000029;
  *(v1 + 72) = 0x8000000220FE36C0;
  *(v1 + 80) = v7;
  *(v1 + 88) = v9;
  OUTLINED_FUNCTION_38_7(v10);
  OUTLINED_FUNCTION_43_4();
}

double static ButtonGroup.Button.currentLocation(isPermissionGranted:openSettings:)@<D0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = sub_220F36424(a1);
  v18 = v8;
  v19 = v7;
  v9 = qword_2812C5B30;

  if (v9 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  v10 = a1 & 1;
  v11 = qword_2812CE4B0;
  OUTLINED_FUNCTION_11_16();
  OUTLINED_FUNCTION_32_7();

  v12 = qword_2812CE4B0;
  v13 = OUTLINED_FUNCTION_11_16();
  v15 = v14;

  sub_220E1966C(0, &qword_2812C5B50);
  v16 = sub_220F349B0();
  result = 9.08367203e223;
  *a4 = xmmword_220FD49E0;
  *(a4 + 16) = 1;
  *(a4 + 24) = v10;
  *(a4 + 32) = a2;
  *(a4 + 40) = a3;
  *(a4 + 48) = 0;
  *(a4 + 56) = 0;
  *(a4 + 57) = 1;
  *(a4 + 64) = v19;
  *(a4 + 72) = v18;
  *(a4 + 80) = "square.2.layers.3d.fill";
  *(a4 + 88) = 0x8000000220FE3770;
  *(a4 + 96) = v13;
  *(a4 + 104) = v15;
  *(a4 + 112) = v16;
  return result;
}

void static ButtonGroup.Button.zoomIn(action:endAction:)()
{
  OUTLINED_FUNCTION_44_5();
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_26_12();
  v9 = qword_2812C5B30;

  if (v9 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  v10 = qword_2812CE4B0;
  OUTLINED_FUNCTION_11_16();
  OUTLINED_FUNCTION_32_7();

  sub_220E1966C(0, &qword_2812C5B50);
  v11 = sub_220F349B0();
  if (v11)
  {
    *v0 = xmmword_220FD49F0;
    *(v0 + 16) = v4;
    *(v0 + 24) = v2;
    *(v0 + 32) = v1;
    *(v0 + 40) = v8;
    *(v0 + 48) = v6;
    *(v0 + 56) = 1;
    *(v0 + 57) = v4;
    *(v0 + 64) = 0xD000000000000024;
    *(v0 + 72) = 0x8000000220FE3830;
    *(v0 + 80) = 0x8000000220FE3860;
    *(v0 + 88) = v3;
    OUTLINED_FUNCTION_38_7(v11);
    OUTLINED_FUNCTION_43_4();
  }

  else
  {
    __break(1u);
  }
}

void static ButtonGroup.Button.zoomOut(action:endAction:)()
{
  OUTLINED_FUNCTION_44_5();
  v6 = v5;
  v11 = v7;
  OUTLINED_FUNCTION_26_12();
  v8 = qword_2812C5B30;

  if (v8 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  v9 = qword_2812CE4B0;
  OUTLINED_FUNCTION_11_16();
  OUTLINED_FUNCTION_32_7();

  sub_220E1966C(0, &qword_2812C5B50);
  v10 = sub_220F349B0();
  *v0 = xmmword_220FD4A00;
  *(v0 + 16) = v4;
  *(v0 + 24) = v2;
  *(v0 + 32) = v1;
  *(v0 + 40) = v11;
  *(v0 + 48) = v6;
  *(v0 + 56) = v4;
  *(v0 + 57) = v4;
  *(v0 + 64) = 0xD000000000000025;
  *(v0 + 72) = 0x8000000220FE38A0;
  *(v0 + 80) = 0x8000000220FE38D0;
  *(v0 + 88) = v3;
  OUTLINED_FUNCTION_38_7(v10);
  OUTLINED_FUNCTION_43_4();
}

uint64_t static ButtonGroup.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 9);
  v4 = *(a2 + 8);
  v5 = *(a2 + 9);
  return sub_220F35108(*a1, *a2) & ~(v2 ^ v4) & ~(v3 ^ v5) & 1;
}

uint64_t static ButtonGroup.Button.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 64) == *(a2 + 64) && *(a1 + 72) == *(a2 + 72))
  {
    return OUTLINED_FUNCTION_27();
  }

  else
  {
    return sub_220FC3940();
  }
}

void sub_220F36C18()
{
  OUTLINED_FUNCTION_18_12();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_3_37(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_5_28();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F0A0);
      v6 = OUTLINED_FUNCTION_25_13();
      OUTLINED_FUNCTION_9_21(v6);
      OUTLINED_FUNCTION_7_20(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_4_36();
        sub_220F0CE54(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E978);
    OUTLINED_FUNCTION_15_9();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_14_15();
  if (!v4)
  {
    OUTLINED_FUNCTION_2_39();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_220F36D00()
{
  OUTLINED_FUNCTION_23_11();
  if ((v5 & 1) == 0 || (OUTLINED_FUNCTION_3_37(), v6 == v7))
  {
LABEL_6:
    OUTLINED_FUNCTION_22_12();
    if (v4)
    {
      OUTLINED_FUNCTION_36_6(v8, v9, v10, v11, v12);
      v13 = OUTLINED_FUNCTION_25_13();
      _swift_stdlib_malloc_size(v13);
      OUTLINED_FUNCTION_10_20();
      v13[2] = v3;
      v13[3] = v14;
      if (v2)
      {
LABEL_8:
        v15 = OUTLINED_FUNCTION_20_13();
        v1(v15);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    v16 = OUTLINED_FUNCTION_40_4();
    memcpy(v16, v17, v18);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_14_15();
  if (!v6)
  {
    OUTLINED_FUNCTION_2_39();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_220F36DB4()
{
  OUTLINED_FUNCTION_18_12();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_3_37(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_5_28();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F0A8);
      v6 = OUTLINED_FUNCTION_25_13();
      OUTLINED_FUNCTION_9_21(v6);
      OUTLINED_FUNCTION_7_20(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_4_36();
        sub_220F0CE54(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F0B0);
    OUTLINED_FUNCTION_15_9();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_14_15();
  if (!v4)
  {
    OUTLINED_FUNCTION_2_39();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_220F36E74()
{
  OUTLINED_FUNCTION_18_12();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_3_37(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_5_28();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CA80);
      v6 = OUTLINED_FUNCTION_25_13();
      OUTLINED_FUNCTION_9_21(v6);
      OUTLINED_FUNCTION_7_20(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_4_36();
        sub_220E2DCA8(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CA78);
    OUTLINED_FUNCTION_15_9();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_14_15();
  if (!v4)
  {
    OUTLINED_FUNCTION_2_39();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_220F36FF4()
{
  OUTLINED_FUNCTION_18_12();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_3_37(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_5_28();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F068);
      v6 = OUTLINED_FUNCTION_25_13();
      OUTLINED_FUNCTION_9_21(v6);
      OUTLINED_FUNCTION_7_20(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_4_36();
        sub_220E2DCA8(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F070);
    OUTLINED_FUNCTION_15_9();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_14_15();
  if (!v4)
  {
    OUTLINED_FUNCTION_2_39();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_220F3710C()
{
  OUTLINED_FUNCTION_18_12();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_3_37(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_5_28();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9ED10);
      v6 = OUTLINED_FUNCTION_25_13();
      OUTLINED_FUNCTION_9_21(v6);
      OUTLINED_FUNCTION_7_20(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_4_36();
        sub_220F0AE24(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = OUTLINED_FUNCTION_16_13();
    memcpy(v11, v12, v13);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_14_15();
  if (!v4)
  {
    OUTLINED_FUNCTION_2_39();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_220F371E8()
{
  OUTLINED_FUNCTION_23_11();
  if ((v5 & 1) == 0 || (OUTLINED_FUNCTION_3_37(), v6 == v7))
  {
LABEL_6:
    OUTLINED_FUNCTION_22_12();
    if (v4)
    {
      OUTLINED_FUNCTION_36_6(v8, v9, v10, v11, v12);
      v13 = swift_allocObject();
      v14 = _swift_stdlib_malloc_size(v13);
      v13[2] = v3;
      v13[3] = 2 * v14 - 64;
      if (v2)
      {
LABEL_8:
        v15 = OUTLINED_FUNCTION_20_13();
        v1(v15);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    v16 = OUTLINED_FUNCTION_40_4();
    memcpy(v16, v17, v3);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_14_15();
  if (!v6)
  {
    OUTLINED_FUNCTION_2_39();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_220F372A4()
{
  OUTLINED_FUNCTION_18_12();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_3_37(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_5_28();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F080);
      v6 = OUTLINED_FUNCTION_25_13();
      OUTLINED_FUNCTION_9_21(v6);
      OUTLINED_FUNCTION_7_20(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_4_36();
        sub_220E28FB0(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D900);
    OUTLINED_FUNCTION_15_9();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_14_15();
  if (!v4)
  {
    OUTLINED_FUNCTION_2_39();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_220F373A4()
{
  OUTLINED_FUNCTION_18_12();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_3_37(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_5_28();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F0C0);
      v6 = OUTLINED_FUNCTION_28_10();
      OUTLINED_FUNCTION_9_21(v6);
      OUTLINED_FUNCTION_17_12(v7 / 56);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_4_36();
        sub_220F0AE9C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = OUTLINED_FUNCTION_16_13();
    memcpy(v11, v12, v13);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_14_15();
  if (!v4)
  {
    OUTLINED_FUNCTION_2_39();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_220F37464()
{
  OUTLINED_FUNCTION_18_12();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_3_37(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_5_28();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F090);
      v6 = swift_allocObject();
      OUTLINED_FUNCTION_9_21(v6);
      OUTLINED_FUNCTION_7_20(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_4_36();
        sub_220F0AEC4(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_16_13();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_14_15();
  if (!v4)
  {
    OUTLINED_FUNCTION_2_39();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_220F37550()
{
  OUTLINED_FUNCTION_23_11();
  if ((v5 & 1) == 0 || (OUTLINED_FUNCTION_3_37(), v6 == v7))
  {
LABEL_6:
    OUTLINED_FUNCTION_22_12();
    if (v4)
    {
      OUTLINED_FUNCTION_36_6(v8, v9, v10, v11, v12);
      v13 = OUTLINED_FUNCTION_25_13();
      _swift_stdlib_malloc_size(v13);
      OUTLINED_FUNCTION_10_20();
      v13[2] = v3;
      v13[3] = v14;
      if (v2)
      {
LABEL_8:
        v15 = OUTLINED_FUNCTION_20_13();
        v1(v15);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    v16 = OUTLINED_FUNCTION_40_4();
    memcpy(v16, v17, v18);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_14_15();
  if (!v6)
  {
    OUTLINED_FUNCTION_2_39();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_220F37604()
{
  OUTLINED_FUNCTION_18_12();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_3_37(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_5_28();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EC88);
      v6 = OUTLINED_FUNCTION_25_13();
      OUTLINED_FUNCTION_9_21(v6);
      OUTLINED_FUNCTION_7_20(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_4_36();
        sub_220F0AFB8(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = OUTLINED_FUNCTION_16_13();
    memcpy(v11, v12, v13);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_14_15();
  if (!v4)
  {
    OUTLINED_FUNCTION_2_39();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_220F376B8()
{
  OUTLINED_FUNCTION_18_12();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_3_37(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_5_28();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CEA0);
      v6 = OUTLINED_FUNCTION_25_13();
      OUTLINED_FUNCTION_9_21(v6);
      OUTLINED_FUNCTION_7_20(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_4_36();
        sub_220F0AE24(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_16_13();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_14_15();
  if (!v4)
  {
    OUTLINED_FUNCTION_2_39();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_220F37778()
{
  OUTLINED_FUNCTION_18_12();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_3_37(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_5_28();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F0F0);
      v6 = OUTLINED_FUNCTION_25_13();
      OUTLINED_FUNCTION_9_21(v6);
      OUTLINED_FUNCTION_7_20(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_4_36();
        sub_220F0AFB8(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = OUTLINED_FUNCTION_16_13();
    memcpy(v11, v12, v13);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_14_15();
  if (!v4)
  {
    OUTLINED_FUNCTION_2_39();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_220F378A8(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t (*a6)(void), void (*a7)(unint64_t, uint64_t, unint64_t))
{
  if (a3)
  {
    OUTLINED_FUNCTION_3_37();
    if (v12 != v13)
    {
      OUTLINED_FUNCTION_14_15();
      if (v12)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_39();
    }
  }

  else
  {
    v11 = a2;
  }

  v14 = *(a4 + 16);
  v15 = a5(v14, v11);
  v16 = *(a6(0) - 8);
  if (a1)
  {
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    a7(a4 + v17, v14, v15 + v17);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_220F3799C()
{
  OUTLINED_FUNCTION_18_12();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_3_37(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_5_28();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EC30);
      v6 = OUTLINED_FUNCTION_28_10();
      OUTLINED_FUNCTION_9_21(v6);
      OUTLINED_FUNCTION_17_12(v7 / 56);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_4_36();
        sub_220F0ADBC(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_16_13();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_14_15();
  if (!v4)
  {
    OUTLINED_FUNCTION_2_39();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_220F37A9C(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t *a6, uint64_t a7, void (*a8)(unint64_t, uint64_t, unint64_t))
{
  if (a3)
  {
    OUTLINED_FUNCTION_3_37();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_14_15();
      if (v13)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_39();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  v16 = a5(v15, v12);
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a6) - 8);
  if (a1)
  {
    v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    a8(a4 + v18, v15, v16 + v18);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_220F37B9C(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F040);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 120);
      if (v5)
      {
LABEL_13:
        sub_220F0B0D0((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_220F37CA4()
{
  OUTLINED_FUNCTION_18_12();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_3_37(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_5_28();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F078);
      v6 = OUTLINED_FUNCTION_28_10();
      OUTLINED_FUNCTION_9_21(v6);
      OUTLINED_FUNCTION_17_12(v7 / 184);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_4_36();
        sub_220F0B0F8(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_16_13();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_14_15();
  if (!v4)
  {
    OUTLINED_FUNCTION_2_39();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_220F37D90()
{
  OUTLINED_FUNCTION_23_11();
  if ((v5 & 1) == 0 || (OUTLINED_FUNCTION_3_37(), v6 == v7))
  {
LABEL_6:
    OUTLINED_FUNCTION_22_12();
    if (v4)
    {
      OUTLINED_FUNCTION_36_6(v8, v9, v10, v11, v12);
      v13 = OUTLINED_FUNCTION_25_13();
      _swift_stdlib_malloc_size(v13);
      OUTLINED_FUNCTION_12_17();
      v13[2] = v3;
      v13[3] = v14;
      if (v2)
      {
LABEL_8:
        v15 = OUTLINED_FUNCTION_20_13();
        v1(v15);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    v16 = OUTLINED_FUNCTION_40_4();
    memcpy(v16, v17, v18);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_14_15();
  if (!v6)
  {
    OUTLINED_FUNCTION_2_39();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_220F37E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, uint64_t, void *))
{
  v10 = a1;
  if ((a3 & 1) == 0)
  {
    v11 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_3_37();
  if (v12 == v13)
  {
LABEL_7:
    v14 = *(a4 + 16);
    if (v11 <= v14)
    {
      v15 = *(a4 + 16);
    }

    else
    {
      v15 = v11;
    }

    if (v15)
    {
      OUTLINED_FUNCTION_36_6(a1, a2, a3, a4, a5);
      v16 = OUTLINED_FUNCTION_25_13();
      _swift_stdlib_malloc_size(v16);
      OUTLINED_FUNCTION_12_17();
      v16[2] = v14;
      v16[3] = v17;
      if (v10)
      {
LABEL_12:
        a8(a4 + 32, v14, v16 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v16 = MEMORY[0x277D84F90];
      if (v10)
      {
        goto LABEL_12;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_14_15();
  if (!v12)
  {
    OUTLINED_FUNCTION_2_39();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_220F37F4C()
{
  OUTLINED_FUNCTION_18_12();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_3_37(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_5_28();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9ECD8);
      v6 = OUTLINED_FUNCTION_28_10();
      OUTLINED_FUNCTION_9_21(v6);
      OUTLINED_FUNCTION_17_12(v7 / 24);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_4_36();
        sub_220F0AE00(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_16_13();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_14_15();
  if (!v4)
  {
    OUTLINED_FUNCTION_2_39();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_220F38010(uint64_t a1, char a2)
{
  v5 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!isUniquelyReferenced_nonNull_native || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    sub_220F378A8(isUniquelyReferenced_nonNull_native, v7, a2 & 1, v5, sub_220F2F4C8, MEMORY[0x277CC8918], sub_220F0AE84);
    *v2 = v8;
  }
}

void sub_220F380E4(uint64_t a1, char a2, uint64_t *a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, void *))
{
  v13 = *v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v13;
  if (!isUniquelyReferenced_nonNull_native || a1 > *(v13 + 24) >> 1)
  {
    if (*(v13 + 16) <= a1)
    {
      v15 = a1;
    }

    else
    {
      v15 = *(v13 + 16);
    }

    sub_220F37E74(isUniquelyReferenced_nonNull_native, v15, a2 & 1, v13, a3, a4, a5, a6);
    *v6 = v16;
  }
}

uint64_t sub_220F3817C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
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

uint64_t sub_220F381F4(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_220FC34C0();
LABEL_9:
  result = sub_220FC35F0();
  *v1 = result;
  return result;
}

uint64_t sub_220F38294(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_220FC34C0();
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
    result = sub_220F43CDC(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_220E1966C(0, &unk_27CF9DBA0);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_220F390E0(&qword_27CF9F0D8, &qword_27CF9F0D0);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F0D0);
          v9 = sub_220F3858C(v12, i, a3);
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

uint64_t sub_220F38418(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_220FC34C0();
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
    result = sub_220F43CDC(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for WeatherMapAnnotation();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_220F390E0(&qword_27CF9F0E8, &qword_27CF9F0E0);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F0E0);
          v9 = sub_220F38618(v12, i, a3);
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

uint64_t (*sub_220F3858C(void *a1, uint64_t a2, uint64_t a3))()
{
  v6 = sub_220E29DF8(a3);
  sub_220F227B4(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = MEMORY[0x223D9CB30](a2, a3);
  }

  *a1 = v7;
  return sub_220F3920C;
}

void (*sub_220F38618(void *a1, uint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_220E29DF8(a3);
  sub_220F227B4(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_39_4();
    v7 = MEMORY[0x223D9CB30](v9);
  }

  *a1 = v7;
  return sub_220F386A0;
}

uint64_t _s11WeatherMaps19ButtonGroupsBuilderO10buildArrayySayAA0C5GroupVGSayAGGFZ_0(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = result + 32;
  v7 = MEMORY[0x277D84F90];
  v8 = MEMORY[0x277D84F90] + 32;
  while (1)
  {
    while (v3)
    {
      v9 = *(v3 + 16);
      if (v2 == v9)
      {
        break;
      }

      if (v2 >= v9)
      {
        goto LABEL_31;
      }

      v12 = v3 + 16 * v2;
      v13 = *(v12 + 32);
      v28 = *(v12 + 41);
      v29 = *(v12 + 40);
      if (v4)
      {

        v14 = v7;
      }

      else
      {
        v15 = v7[3];
        if (((v15 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v16 = v15 & 0xFFFFFFFFFFFFFFFELL;
        if (v16 <= 1)
        {
          v17 = 1;
        }

        else
        {
          v17 = v16;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F048);
        v14 = swift_allocObject();
        v18 = (_swift_stdlib_malloc_size(v14) - 32) / 16;
        v14[2] = v17;
        v14[3] = 2 * v18;
        v19 = v14 + 4;
        v20 = v7[3] >> 1;
        v8 = &v14[2 * v20 + 4];
        v4 = (v18 & 0x7FFFFFFFFFFFFFFFLL) - v20;
        if (v7[2])
        {
          v21 = 16 * v20;
          v22 = &v7[2 * v20 + 4];
          if (v14 != v7 || v19 >= v22)
          {
            memmove(v19, v7 + 4, v21);
          }

          v7[2] = 0;
        }

        else
        {
        }
      }

      v24 = __OFSUB__(v4--, 1);
      if (v24)
      {
        goto LABEL_32;
      }

      ++v2;
      *v8 = v13;
      *(v8 + 8) = v29;
      *(v8 + 9) = v28;
      v8 += 16;
      v7 = v14;
    }

    v10 = *(v1 + 16);
    if (v5 == v10)
    {

      v25 = v7[3];
      if (v25 >= 2)
      {
        v26 = v25 >> 1;
        v24 = __OFSUB__(v26, v4);
        v27 = v26 - v4;
        if (v24)
        {
          goto LABEL_33;
        }

        v7[2] = v27;
      }

      return v7;
    }

    if (v5 >= v10)
    {
      break;
    }

    v11 = *(v6 + 8 * v5);

    v2 = 0;
    v3 = v11;
    ++v5;
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t _s11WeatherMaps14ButtonsBuilderO10buildArrayySayAA11ButtonGroupV0G0VGSayAIGFZ_0(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = result + 32;
  v7 = MEMORY[0x277D84F90];
  v8 = (MEMORY[0x277D84F90] + 32);
  while (1)
  {
    while (v3)
    {
      v9 = *(v3 + 16);
      if (v2 == v9)
      {
        break;
      }

      if (v2 >= v9)
      {
        goto LABEL_32;
      }

      result = memcpy(__dst, (v3 + 120 * v2 + 32), 0x78uLL);
      if (v4)
      {
        result = sub_220E32EEC(__dst, v23);
        v12 = v7;
      }

      else
      {
        v13 = v7[3];
        if (((v13 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_35;
        }

        v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
        if (v14 <= 1)
        {
          v15 = 1;
        }

        else
        {
          v15 = v14;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F040);
        v12 = swift_allocObject();
        v16 = (_swift_stdlib_malloc_size(v12) - 32) / 120;
        v12[2] = v15;
        v12[3] = 2 * v16;
        v17 = v7[3] >> 1;
        v8 = &v12[15 * v17 + 4];
        v4 = (v16 & 0x7FFFFFFFFFFFFFFFLL) - v17;
        if (v7[2])
        {
          v18 = v12 < v7 || v12 + 4 >= &v7[15 * v17 + 4];
          if (!v18 && v12 == v7)
          {
            sub_220E32EEC(__dst, v23);
          }

          else
          {
            sub_220E32EEC(__dst, v23);
            memmove(v12 + 4, v7 + 4, 120 * v17);
          }

          v7[2] = 0;
        }

        else
        {
          sub_220E32EEC(__dst, v23);
        }
      }

      v19 = __OFSUB__(v4--, 1);
      if (v19)
      {
        goto LABEL_33;
      }

      ++v2;
      result = memcpy(v8, __dst, 0x78uLL);
      v8 += 120;
      v7 = v12;
    }

    v10 = *(v1 + 16);
    if (v5 == v10)
    {

      v20 = v7[3];
      if (v20 >= 2)
      {
        v21 = v20 >> 1;
        v19 = __OFSUB__(v21, v4);
        v22 = v21 - v4;
        if (v19)
        {
          goto LABEL_34;
        }

        v7[2] = v22;
      }

      return v7;
    }

    if (v5 >= v10)
    {
      break;
    }

    v11 = *(v6 + 8 * v5);

    v2 = 0;
    v3 = v11;
    ++v5;
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

unint64_t sub_220F38AE0()
{
  result = qword_27CF9F050;
  if (!qword_27CF9F050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9F050);
  }

  return result;
}

unint64_t sub_220F38B38()
{
  result = qword_27CF9F058;
  if (!qword_27CF9F058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9F058);
  }

  return result;
}

unint64_t sub_220F38B90()
{
  result = qword_27CF9F060;
  if (!qword_27CF9F060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9F060);
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

uint64_t sub_220F38BF8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 10))
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

uint64_t sub_220F38C38(uint64_t result, int a2, int a3)
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

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_11WeatherMaps11ButtonGroupV0C0V6ActionO(uint64_t a1)
{
  if ((*(a1 + 32) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

uint64_t get_enum_tag_for_layout_string_11WeatherMaps11ButtonGroupV0C0V6ActionOSg(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 > 3)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_220F38CDC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 72);
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

uint64_t sub_220F38D1C(uint64_t result, int a2, int a3)
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
      *(result + 72) = (a2 - 1);
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

uint64_t sub_220F38D88(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_220F38DC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_220F38E48(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 33))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_220F38E88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_220F38ED0(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

_BYTE *sub_220F38EFC(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_220F38FE8(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_4_1();
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

_BYTE *sub_220F39034(_BYTE *result, int a2, int a3)
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

uint64_t sub_220F390E0(unint64_t *a1, uint64_t *a2)
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

uint64_t sub_220F39134(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_220F39194(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_11_16()
{

  return sub_220FBFF80();
}

uint64_t OUTLINED_FUNCTION_15_9()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_28_10()
{

  return swift_allocObject();
}

void *OUTLINED_FUNCTION_29_10(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char __dst)
{

  return memcpy(&__dst, v24, 0x78uLL);
}

uint64_t OUTLINED_FUNCTION_32_7()
{
}

uint64_t OUTLINED_FUNCTION_36_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a5);
}

uint64_t OUTLINED_FUNCTION_38_7(uint64_t result)
{
  v1[12] = 0;
  v1[13] = 0;
  v1[14] = result;
  return result;
}

double OUTLINED_FUNCTION_41_3()
{
  *(v0 + 16) = v1;
  result = 0.0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_45_6()
{

  return sub_220FC35C0();
}

uint64_t sub_220F39458()
{
  result = sub_220FC0170();
  if (!v1)
  {
    v3 = type metadata accessor for WeatherMapOverlayServiceMetadataResponse(0);
    memcpy(v4, (v0 + *(v3 + 20) + 8), 0x15AuLL);
    v4[367] = 1;
    OUTLINED_FUNCTION_10_21();
    sub_220FC1330();
    sub_220F3B85C();
    sub_220F3B8B0();
    sub_220FC29A0();
    OUTLINED_FUNCTION_4_37();
    return sub_220F3A94C();
  }

  return result;
}

void sub_220F3952C()
{
  OUTLINED_FUNCTION_5_0();
  v2 = v1;
  v3 = sub_220FC02B0();
  OUTLINED_FUNCTION_6();
  v5 = v4;
  MEMORY[0x28223BE20](v6, v7);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  sub_220FC0160();
  if (!v0)
  {
    sub_220F3B79C();
    sub_220F3B85C();
    sub_220F3B8B0();
    v11 = sub_220FC2990();
    sub_220F3A6DC();
    memcpy(v13, v14, sizeof(v13));
    (*(v5 + 32))(v2, v10, v3);
    v12 = *(type metadata accessor for WeatherMapOverlayServiceMetadataResponse(0) + 20);
    *(v2 + v12) = v11;
    memcpy((v2 + v12 + 8), v13, 0x15AuLL);
  }

  OUTLINED_FUNCTION_8_10();
}

uint64_t static WeatherMapOverlayKind.read(from:)()
{
  OUTLINED_FUNCTION_21_11();
  result = OUTLINED_FUNCTION_32_8();
  if (!v0)
  {
    v3 = 3;
    switch(v9)
    {
      case 1:
        goto LABEL_10;
      case 2:
        result = OUTLINED_FUNCTION_12_18();
        switch(v8)
        {
          case 3:
            v3 = 2;
            break;
          case 2:
            v3 = 1;
            break;
          case 1:
            v3 = 0;
            break;
          default:
LABEL_7:
            sub_220FC1240();
            OUTLINED_FUNCTION_2_40();
            sub_220F3D600(v4);
            v5 = OUTLINED_FUNCTION_20();
            OUTLINED_FUNCTION_20_14(v5, v6);
            OUTLINED_FUNCTION_5_29();
            (*(v7 + 104))();
            return swift_willThrow();
        }

LABEL_10:
        *v1 = v3;
        break;
      case 3:
        v3 = 4;
        goto LABEL_10;
      case 4:
        v3 = 5;
        goto LABEL_10;
      default:
        goto LABEL_7;
    }
  }

  return result;
}

uint64_t WeatherMapOverlayKind.write(to:)()
{
  v2 = *v0;
  switch(v2)
  {
    case 5:
      return sub_220FC1330();
    case 4:
      return sub_220FC1330();
    case 3:
      return sub_220FC1330();
  }

  result = sub_220FC1330();
  if (!v1)
  {
    return sub_220FC1330();
  }

  return result;
}

uint64_t static WeatherMapPrecipitationOverlayKind.read(from:)@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_32_8();
  if (!v1)
  {
    v4 = v9 - 1;
    if (v4 >= 3)
    {
      sub_220FC1240();
      OUTLINED_FUNCTION_2_40();
      sub_220F3D600(v5);
      v6 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_20_14(v6, v7);
      OUTLINED_FUNCTION_5_29();
      (*(v8 + 104))();
      return swift_willThrow();
    }

    else
    {
      *a1 = v4;
    }
  }

  return result;
}

void *sub_220F39AD0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_220F3B79C();
  if (!v1)
  {
    sub_220F3B85C();
    sub_220F3B8B0();
    v4 = sub_220FC2990();
    OUTLINED_FUNCTION_10_21();
    sub_220F3A6DC();
    *a1 = v4;
    return memcpy(a1 + 1, v5, 0x15AuLL);
  }

  return result;
}

uint64_t sub_220F39B84()
{
  OUTLINED_FUNCTION_15_10();
  result = sub_220FC1330();
  if (!v0)
  {
    sub_220F3B85C();
    sub_220F3B8B0();
    sub_220FC29A0();
    OUTLINED_FUNCTION_10_21();
    return sub_220F3A94C();
  }

  return result;
}

uint64_t sub_220F39C28()
{
  OUTLINED_FUNCTION_21_11();
  result = sub_220FC1320();
  if (!v0)
  {
    OUTLINED_FUNCTION_12_18();
    OUTLINED_FUNCTION_13_17();
    sub_220FC3370();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D068);
    OUTLINED_FUNCTION_1_57();
    sub_220F3BCE4(v3);
    OUTLINED_FUNCTION_0_67();
    sub_220F3BCE4(v4);
    sub_220FC3370();
    sub_220F3BD50();
    sub_220F3BDA4();
    result = sub_220FC25C0();
    *v1 = v9;
    *(v1 + 8) = v8;
    *(v1 + 16) = v6;
    *(v1 + 24) = v7;
    *(v1 + 32) = v5;
    *(v1 + 40) = result;
  }

  return result;
}

uint64_t sub_220F39DC4()
{
  OUTLINED_FUNCTION_6_24();
  result = sub_220FC1330();
  if (!v0)
  {
    OUTLINED_FUNCTION_38_8();
    OUTLINED_FUNCTION_3_38();
    sub_220FC1330();
    OUTLINED_FUNCTION_37_5();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F128);
    OUTLINED_FUNCTION_3_38();
    sub_220FC3380();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F130);
    OUTLINED_FUNCTION_1_57();
    sub_220F3BCE4(v2);
    OUTLINED_FUNCTION_0_67();
    sub_220F3BCE4(v3);
    OUTLINED_FUNCTION_8_24();
    sub_220F3BD50();
    sub_220F3BDA4();
    OUTLINED_FUNCTION_61_4();
    return sub_220FC25D0();
  }

  return result;
}

uint64_t sub_220F39F34()
{
  result = OUTLINED_FUNCTION_32_8();
  if (!v0)
  {
    if (v10 == 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9DEB0);
      OUTLINED_FUNCTION_1_57();
      sub_220F3BE64(v4);
      OUTLINED_FUNCTION_0_67();
      sub_220F3BE64(v5);
      OUTLINED_FUNCTION_61_4();
      return sub_220FC2990();
    }

    else if (v10 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9DEA0);
      OUTLINED_FUNCTION_1_57();
      sub_220F3BEE0(v2);
      OUTLINED_FUNCTION_0_67();
      sub_220F3BEE0(v3);
      OUTLINED_FUNCTION_61_4();
      return sub_220FC2990();
    }

    else
    {
      sub_220FC1240();
      OUTLINED_FUNCTION_2_40();
      sub_220F3D600(v6);
      v7 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_20_14(v7, v8);
      OUTLINED_FUNCTION_5_29();
      (*(v9 + 104))();
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_220F3A0CC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    result = sub_220FC1330();
    if (v3)
    {
      return result;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9DEB0);
    OUTLINED_FUNCTION_1_57();
    sub_220F3BE64(v5);
    OUTLINED_FUNCTION_0_67();
    sub_220F3BE64(v6);
  }

  else
  {
    result = sub_220FC1330();
    if (v3)
    {
      return result;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9DEA0);
    OUTLINED_FUNCTION_1_57();
    sub_220F3BEE0(v7);
    OUTLINED_FUNCTION_0_67();
    sub_220F3BEE0(v8);
  }

  return sub_220FC29A0();
}

uint64_t sub_220F3A1FC@<X0>(uint64_t a1@<X8>)
{
  result = sub_220FC2790();
  if (!v1)
  {
    v5 = result;
    v6 = v4;
    v7 = sub_220FC2790();
    v9 = v8;
    v10 = sub_220F3A488();
    OUTLINED_FUNCTION_25_14();
    OUTLINED_FUNCTION_25_14();
    v11 = sub_220F3A488();
    sub_220F3BF5C();
    sub_220F3BFB0();
    result = sub_220FC2990();
    *a1 = v5;
    *(a1 + 8) = v6;
    *(a1 + 16) = v7;
    *(a1 + 24) = v9;
    *(a1 + 32) = v10 & 1;
    *(a1 + 40) = v13;
    *(a1 + 48) = v12;
    *(a1 + 56) = v11 & 1;
    *(a1 + 64) = result;
  }

  return result;
}

uint64_t sub_220F3A380()
{
  OUTLINED_FUNCTION_15_10();
  result = sub_220FC27A0();
  if (!v0)
  {
    OUTLINED_FUNCTION_10_21();
    sub_220FC27A0();
    OUTLINED_FUNCTION_10_21();
    sub_220F3E3E8();
    OUTLINED_FUNCTION_10_21();
    sub_220FC1330();
    OUTLINED_FUNCTION_10_21();
    sub_220FC1330();
    OUTLINED_FUNCTION_10_21();
    sub_220F3E3E8();
    sub_220F3BF5C();
    sub_220F3BFB0();
    OUTLINED_FUNCTION_61_4();
    return sub_220FC29A0();
  }

  return result;
}

uint64_t sub_220F3A488()
{
  result = OUTLINED_FUNCTION_32_8();
  if (!v0)
  {
    if (v6 == 1)
    {
      return 0;
    }

    else if (v6 == 2)
    {
      return 1;
    }

    else
    {
      sub_220FC1240();
      OUTLINED_FUNCTION_2_40();
      sub_220F3D600(v2);
      v3 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_20_14(v3, v4);
      OUTLINED_FUNCTION_5_29();
      (*(v5 + 104))();
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_220F3A564@<X0>(void *a1@<X8>)
{
  result = sub_220FC3370();
  if (!v1)
  {
    v4 = sub_220FC2790();
    v6 = v5;
    result = OUTLINED_FUNCTION_25_14();
    *a1 = v7;
    a1[1] = v8;
    a1[2] = v4;
    a1[3] = v6;
    a1[4] = v9;
  }

  return result;
}

uint64_t sub_220F3A63C()
{
  OUTLINED_FUNCTION_30_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CFD0);
  OUTLINED_FUNCTION_24_14();
  result = sub_220FC3380();
  if (!v0)
  {
    sub_220FC27A0();
    OUTLINED_FUNCTION_24_14();
    return sub_220FC1330();
  }

  return result;
}

void sub_220F3A6DC()
{
  OUTLINED_FUNCTION_5_0();
  v2 = v1;
  sub_220F3B904();
  sub_220F3B958();
  OUTLINED_FUNCTION_23_12();
  if (!v0)
  {
    v26 = v2;
    sub_220F3B9AC();
    sub_220F3BA00();
    OUTLINED_FUNCTION_23_12();
    v6 = v20;
    v7 = v21;
    v8 = v22;
    v9 = v23;
    v10 = v24;
    v11 = v25;
    memcpy(__dst, v19, sizeof(__dst));
    sub_220F3BA54();
    sub_220F3BAA8();
    OUTLINED_FUNCTION_23_12();
    memcpy(v16, __src, sizeof(v16));
    sub_220F3BAFC();
    sub_220F3BB50();
    OUTLINED_FUNCTION_23_12();
    v4 = v14;
    v5 = v13;
    v3 = v15;
    sub_220F3BC00();
    sub_220F3BC54();
    OUTLINED_FUNCTION_23_12();
    *v26 = v6;
    *(v26 + 8) = v7;
    *(v26 + 16) = v8;
    *(v26 + 24) = v9;
    *(v26 + 32) = v10;
    *(v26 + 40) = v11;
    memcpy((v26 + 48), __dst, 0x58uLL);
    memcpy((v26 + 136), v16, 0x68uLL);
    *(v26 + 240) = v5;
    *(v26 + 256) = v4;
    *(v26 + 272) = v3;
    memcpy((v26 + 280), v12, 0x42uLL);
  }

  OUTLINED_FUNCTION_8_10();
}

uint64_t sub_220F3A94C()
{
  OUTLINED_FUNCTION_15_10();
  v3 = v0[1];
  v8[0] = *v0;
  v8[1] = v3;
  v8[2] = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F110);
  sub_220F3B904();
  sub_220F3B958();
  result = OUTLINED_FUNCTION_8_24();
  if (!v1)
  {
    memcpy(__dst, (v2 + 48), sizeof(__dst));
    memcpy(__src, (v2 + 48), sizeof(__src));
    sub_220E4D214(__dst, v8, &qword_27CF9DF48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9DF48);
    sub_220F3B9AC();
    sub_220F3BA00();
    OUTLINED_FUNCTION_8_24();
    memcpy(v9, __src, sizeof(v9));
    sub_220F3BBA4(v9, &qword_27CF9DF48);
    memcpy(v11, (v2 + 136), sizeof(v11));
    memcpy(v8, (v2 + 136), 0x68uLL);
    sub_220E4D214(v11, v7, &qword_27CF9DF40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9DF40);
    sub_220F3BA54();
    sub_220F3BAA8();
    OUTLINED_FUNCTION_8_24();
    memcpy(v7, v8, sizeof(v7));
    sub_220F3BBA4(v7, &qword_27CF9DF40);
    v5 = *(v2 + 256);
    *v6 = *(v2 + 240);
    *&v6[16] = v5;
    *&v6[32] = *(v2 + 272);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F118);
    sub_220F3BAFC();
    sub_220F3BB50();
    OUTLINED_FUNCTION_7_21();
    sub_220FC3380();
    memcpy(v6, (v2 + 280), sizeof(v6));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F120);
    sub_220F3BC00();
    sub_220F3BC54();
    return OUTLINED_FUNCTION_41_4();
  }

  return result;
}

uint64_t sub_220F3ABF0()
{
  OUTLINED_FUNCTION_21_11();
  result = sub_220FC1320();
  if (!v0)
  {
    OUTLINED_FUNCTION_12_18();
    OUTLINED_FUNCTION_12_18();
    OUTLINED_FUNCTION_13_17();
    sub_220FC3370();
    OUTLINED_FUNCTION_12_18();
    OUTLINED_FUNCTION_12_18();
    OUTLINED_FUNCTION_13_17();
    sub_220FC3370();
    sub_220F3BD50();
    sub_220F3BDA4();
    v5 = OUTLINED_FUNCTION_33_6();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D068);
    OUTLINED_FUNCTION_1_57();
    sub_220F3BCE4(v3);
    OUTLINED_FUNCTION_0_67();
    sub_220F3BCE4(v4);
    result = sub_220FC3370();
    *v1 = v15;
    *(v1 + 8) = v14;
    *(v1 + 16) = v13;
    *(v1 + 24) = v11;
    *(v1 + 32) = v12;
    *(v1 + 40) = v10;
    *(v1 + 48) = v9;
    *(v1 + 56) = v7;
    *(v1 + 64) = v8;
    *(v1 + 72) = v5;
    *(v1 + 80) = v6;
  }

  return result;
}

uint64_t sub_220F3AE58()
{
  OUTLINED_FUNCTION_6_24();
  result = sub_220FC1330();
  if (!v0)
  {
    OUTLINED_FUNCTION_38_8();
    OUTLINED_FUNCTION_3_38();
    sub_220FC1330();
    OUTLINED_FUNCTION_37_5();
    OUTLINED_FUNCTION_3_38();
    sub_220FC1330();
    OUTLINED_FUNCTION_36_7();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F128);
    OUTLINED_FUNCTION_11_17();
    sub_220FC3380();
    OUTLINED_FUNCTION_3_38();
    sub_220FC1330();
    OUTLINED_FUNCTION_3_38();
    sub_220FC1330();
    OUTLINED_FUNCTION_35_8();
    OUTLINED_FUNCTION_11_17();
    sub_220FC3380();
    sub_220F3BD50();
    sub_220F3BDA4();
    OUTLINED_FUNCTION_61_4();
    sub_220FC25D0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F130);
    OUTLINED_FUNCTION_1_57();
    sub_220F3BCE4(v2);
    OUTLINED_FUNCTION_0_67();
    sub_220F3BCE4(v3);
    return OUTLINED_FUNCTION_41_4();
  }

  return result;
}

uint64_t sub_220F3B060()
{
  OUTLINED_FUNCTION_21_11();
  result = sub_220FC1320();
  if (!v0)
  {
    OUTLINED_FUNCTION_12_18();
    OUTLINED_FUNCTION_12_18();
    OUTLINED_FUNCTION_13_17();
    sub_220FC3370();
    OUTLINED_FUNCTION_12_18();
    OUTLINED_FUNCTION_12_18();
    OUTLINED_FUNCTION_13_17();
    sub_220FC3370();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D068);
    OUTLINED_FUNCTION_1_57();
    sub_220F3BCE4(v3);
    OUTLINED_FUNCTION_0_67();
    sub_220F3BCE4(v4);
    sub_220FC3370();
    sub_220F3BD50();
    sub_220F3BDA4();
    v6 = OUTLINED_FUNCTION_33_6();
    OUTLINED_FUNCTION_13_17();
    result = sub_220FC2790();
    *v1 = v16;
    *(v1 + 8) = v15;
    *(v1 + 16) = v14;
    *(v1 + 24) = v12;
    *(v1 + 32) = v13;
    *(v1 + 40) = v11;
    *(v1 + 48) = v10;
    *(v1 + 56) = v8;
    *(v1 + 64) = v9;
    *(v1 + 72) = v7;
    *(v1 + 80) = v6;
    *(v1 + 88) = result;
    *(v1 + 96) = v5;
  }

  return result;
}

uint64_t sub_220F3B2E4()
{
  OUTLINED_FUNCTION_6_24();
  result = sub_220FC1330();
  if (!v0)
  {
    OUTLINED_FUNCTION_38_8();
    OUTLINED_FUNCTION_3_38();
    sub_220FC1330();
    OUTLINED_FUNCTION_37_5();
    OUTLINED_FUNCTION_3_38();
    sub_220FC1330();
    OUTLINED_FUNCTION_36_7();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F128);
    OUTLINED_FUNCTION_11_17();
    sub_220FC3380();
    OUTLINED_FUNCTION_3_38();
    sub_220FC1330();
    OUTLINED_FUNCTION_3_38();
    sub_220FC1330();
    OUTLINED_FUNCTION_35_8();
    OUTLINED_FUNCTION_11_17();
    sub_220FC3380();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F130);
    OUTLINED_FUNCTION_1_57();
    sub_220F3BCE4(v2);
    OUTLINED_FUNCTION_0_67();
    sub_220F3BCE4(v3);
    OUTLINED_FUNCTION_8_24();
    sub_220F3BD50();
    sub_220F3BDA4();
    OUTLINED_FUNCTION_61_4();
    sub_220FC25D0();
    OUTLINED_FUNCTION_10_21();
    return sub_220FC27A0();
  }

  return result;
}

uint64_t sub_220F3B500@<X0>(uint64_t a1@<X8>)
{
  result = sub_220F3B79C();
  if (!v1)
  {
    OUTLINED_FUNCTION_13_17();
    v4 = sub_220FC2790();
    v6 = v5;
    v7 = sub_220FC25C0();
    OUTLINED_FUNCTION_13_17();
    result = sub_220F39F34();
    *a1 = v4;
    *(a1 + 8) = v6;
    *(a1 + 16) = v7;
    *(a1 + 24) = result;
    *(a1 + 32) = v8 & 1;
  }

  return result;
}

uint64_t sub_220F3B5D8(uint64_t a1)
{
  result = sub_220FC1330();
  if (!v2)
  {
    sub_220FC27A0();
    sub_220FC25D0();
    return sub_220F3A0CC(a1, *(v1 + 24), *(v1 + 32));
  }

  return result;
}

uint64_t sub_220F3B68C()
{
  result = sub_220F3B79C();
  if (!v0)
  {
    sub_220F3B85C();
    sub_220F3B8B0();
    return sub_220FC2990();
  }

  return result;
}

uint64_t sub_220F3B6F4()
{
  result = sub_220FC1330();
  if (!v0)
  {
    sub_220F3B85C();
    sub_220F3B8B0();
    return sub_220FC29A0();
  }

  return result;
}

uint64_t sub_220F3B79C()
{
  result = OUTLINED_FUNCTION_32_8();
  if (!v0 && v6 != 1)
  {
    sub_220FC1240();
    OUTLINED_FUNCTION_2_40();
    sub_220F3D600(v2);
    v3 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_20_14(v3, v4);
    OUTLINED_FUNCTION_5_29();
    (*(v5 + 104))();
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_220F3B85C()
{
  result = qword_2812C96F0;
  if (!qword_2812C96F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C96F0);
  }

  return result;
}

unint64_t sub_220F3B8B0()
{
  result = qword_2812C96E8;
  if (!qword_2812C96E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C96E8);
  }

  return result;
}

unint64_t sub_220F3B904()
{
  result = qword_2812C9760;
  if (!qword_2812C9760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C9760);
  }

  return result;
}

unint64_t sub_220F3B958()
{
  result = qword_2812C9758;
  if (!qword_2812C9758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C9758);
  }

  return result;
}

unint64_t sub_220F3B9AC()
{
  result = qword_2812C9740;
  if (!qword_2812C9740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C9740);
  }

  return result;
}

unint64_t sub_220F3BA00()
{
  result = qword_2812C9738;
  if (!qword_2812C9738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C9738);
  }

  return result;
}

unint64_t sub_220F3BA54()
{
  result = qword_2812C9720;
  if (!qword_2812C9720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C9720);
  }

  return result;
}

unint64_t sub_220F3BAA8()
{
  result = qword_2812C9718;
  if (!qword_2812C9718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C9718);
  }

  return result;
}

unint64_t sub_220F3BAFC()
{
  result = qword_2812C9750;
  if (!qword_2812C9750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C9750);
  }

  return result;
}

unint64_t sub_220F3BB50()
{
  result = qword_2812C9748;
  if (!qword_2812C9748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C9748);
  }

  return result;
}

uint64_t sub_220F3BBA4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_20_14(a1, a2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v3);
  (*(*(v4 - 8) + 8))(v2, v4);
  return v2;
}

unint64_t sub_220F3BC00()
{
  result = qword_2812C9730;
  if (!qword_2812C9730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C9730);
  }

  return result;
}

unint64_t sub_220F3BC54()
{
  result = qword_2812C9728;
  if (!qword_2812C9728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C9728);
  }

  return result;
}

unint64_t sub_220F3BCE4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_27_11(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9D068);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_220F3BD50()
{
  result = qword_2812C9700;
  if (!qword_2812C9700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C9700);
  }

  return result;
}

unint64_t sub_220F3BDA4()
{
  result = qword_2812C96F8;
  if (!qword_2812C96F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C96F8);
  }

  return result;
}

unint64_t sub_220F3BDF8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_27_11(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9D218);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_220F3BE64(uint64_t a1)
{
  result = OUTLINED_FUNCTION_27_11(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9DEB0);
    OUTLINED_FUNCTION_1_57();
    sub_220F3BDF8(v3);
    OUTLINED_FUNCTION_0_67();
    sub_220F3BDF8(v4);
    result = OUTLINED_FUNCTION_26_13();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_220F3BEE0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_27_11(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9DEA0);
    OUTLINED_FUNCTION_1_57();
    sub_220F3BE64(v3);
    OUTLINED_FUNCTION_0_67();
    sub_220F3BE64(v4);
    result = OUTLINED_FUNCTION_26_13();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_220F3BF5C()
{
  result = qword_2812C9710;
  if (!qword_2812C9710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C9710);
  }

  return result;
}

unint64_t sub_220F3BFB0()
{
  result = qword_2812C9708;
  if (!qword_2812C9708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C9708);
  }

  return result;
}

uint64_t sub_220F3C004()
{
  OUTLINED_FUNCTION_21_11();
  result = sub_220FC1320();
  if (!v0)
  {
    OUTLINED_FUNCTION_12_18();
    OUTLINED_FUNCTION_13_17();
    sub_220FC3370();
    sub_220F3BD50();
    sub_220F3BDA4();
    result = OUTLINED_FUNCTION_33_6();
    *v1 = v6;
    *(v1 + 8) = v5;
    *(v1 + 16) = v3;
    *(v1 + 24) = v4;
    *(v1 + 32) = result;
  }

  return result;
}

uint64_t sub_220F3C11C()
{
  OUTLINED_FUNCTION_6_24();
  result = sub_220FC1330();
  if (!v0)
  {
    OUTLINED_FUNCTION_38_8();
    OUTLINED_FUNCTION_3_38();
    sub_220FC1330();
    OUTLINED_FUNCTION_37_5();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F128);
    OUTLINED_FUNCTION_3_38();
    sub_220FC3380();
    sub_220F3BD50();
    sub_220F3BDA4();
    OUTLINED_FUNCTION_61_4();
    return sub_220FC25D0();
  }

  return result;
}

uint64_t sub_220F3C22C@<X0>(uint64_t a1@<X8>)
{
  result = sub_220FC1320();
  if (!v1)
  {
    OUTLINED_FUNCTION_42_5();
    OUTLINED_FUNCTION_42_5();
    sub_220FC3370();
    OUTLINED_FUNCTION_42_5();
    OUTLINED_FUNCTION_42_5();
    result = sub_220FC3370();
    *a1 = v12;
    *(a1 + 8) = v11;
    *(a1 + 16) = v10;
    *(a1 + 24) = v8;
    *(a1 + 32) = v9;
    *(a1 + 40) = v7;
    *(a1 + 48) = v6;
    *(a1 + 56) = v4;
    *(a1 + 64) = v5;
  }

  return result;
}

uint64_t sub_220F3C39C()
{
  OUTLINED_FUNCTION_6_24();
  result = sub_220FC1330();
  if (!v0)
  {
    OUTLINED_FUNCTION_4_37();
    sub_220FC1330();
    OUTLINED_FUNCTION_4_37();
    sub_220FC1330();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F128);
    OUTLINED_FUNCTION_7_21();
    sub_220FC3380();
    OUTLINED_FUNCTION_4_37();
    sub_220FC1330();
    OUTLINED_FUNCTION_4_37();
    sub_220FC1330();
    OUTLINED_FUNCTION_7_21();
    return sub_220FC3380();
  }

  return result;
}

uint64_t sub_220F3C518@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_220FC02B0();
  OUTLINED_FUNCTION_6();
  v5 = v4;
  MEMORY[0x28223BE20](v6, v7);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  result = sub_220FC0160();
  if (!v1)
  {
    return (*(v5 + 32))(a1, v10, v3);
  }

  return result;
}

uint64_t sub_220F3C608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for WeatherMapOverlayTimeConstraints();
  MEMORY[0x28223BE20](v5 - 8, v6);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  sub_220F3C780();
  sub_220F3C7D4();
  result = sub_220FC3370();
  if (!v2)
  {
    v18 = v22;
    sub_220F3C91C(a1, v11, v12, v13, v14, v15, v16, v17, v20, v22, SWORD2(v22), SBYTE6(v22), SHIBYTE(v22));
    static WeatherMapOverlayKind.read(from:)();
    sub_220F3D3F0(v9);
    *a2 = v18;
    *(a2 + 8) = v23;
    memcpy((a2 + 16), __src, 0xB8uLL);
    *(a2 + 200) = v21;
    v19 = type metadata accessor for WeatherMapOverlay();
    return sub_220E5AE74(v9, a2 + *(v19 + 28));
  }

  return result;
}

unint64_t sub_220F3C780()
{
  result = qword_27CF9F138;
  if (!qword_27CF9F138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9F138);
  }

  return result;
}

unint64_t sub_220F3C7D4()
{
  result = qword_27CF9F140;
  if (!qword_27CF9F140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9F140);
  }

  return result;
}

void sub_220F3C828()
{
  OUTLINED_FUNCTION_30_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E3A8);
  sub_220F3C780();
  sub_220F3C7D4();
  OUTLINED_FUNCTION_24_14();
  sub_220FC3380();
  if (!v1)
  {
    memcpy(__dst, (v0 + 16), sizeof(__dst));
    sub_220F3CCA0();
    OUTLINED_FUNCTION_24_14();
    WeatherMapOverlayKind.write(to:)();
    type metadata accessor for WeatherMapOverlay();
    sub_220F3D834();
  }
}

void sub_220F3C91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_21_11();
  sub_220FC1320();
  if (!v13)
  {
    switch(a13)
    {
      case 1:
        OUTLINED_FUNCTION_13_17();
        sub_220F3CFC4();
        memcpy(v25, __src, 0x80uLL);
        sub_220F3D824(v25);
        goto LABEL_10;
      case 2:
        OUTLINED_FUNCTION_13_17();
        sub_220F3D1AC();
        memcpy(__dst, v29, sizeof(__dst));
        OUTLINED_FUNCTION_13_17();
        v22 = sub_220FC2790();
        v24 = v23;
        memcpy(v25, __dst, 0xA1uLL);
        v25[21] = v22;
        v25[22] = v24;
        sub_220E21C3C(v25);
        goto LABEL_10;
      case 3:
        OUTLINED_FUNCTION_13_17();
        sub_220F3D1AC();
        memcpy(v25, v30, 0xA1uLL);
        sub_220F3D810(v25);
        goto LABEL_10;
      case 4:
        OUTLINED_FUNCTION_13_17();
        sub_220F3CFC4();
        memcpy(__dst, v31, 0x80uLL);
        sub_220F30094();
        sub_220F3D700();
        sub_220F3D754();
        sub_220F3D644();
        sub_220F3D698();
        v21 = sub_220FC25C0();
        memcpy(v25, __dst, 0x80uLL);
        v25[16] = v21;
        sub_220F3D7FC(v25);
        goto LABEL_10;
      case 5:
        OUTLINED_FUNCTION_13_17();
        sub_220F3D1AC();
        memcpy(__dst, v32, sizeof(__dst));
        sub_220FC0EA0();
        OUTLINED_FUNCTION_16_14();
        sub_220F3D600(v15);
        OUTLINED_FUNCTION_18_13(&unk_27CF9F148);
        OUTLINED_FUNCTION_17_13(&unk_27CF9F150);
        sub_220F3D644();
        sub_220F3D698();
        v20 = sub_220FC25C0();
        memcpy(v25, __dst, 0xA1uLL);
        v25[21] = v20;
        sub_220F3D6EC(v25);
LABEL_10:
        memcpy(v27, v25, sizeof(v27));
        memcpy(v14, v27, 0xB8uLL);
        break;
      default:
        sub_220FC1240();
        OUTLINED_FUNCTION_2_40();
        sub_220F3D600(v16);
        v17 = OUTLINED_FUNCTION_20();
        OUTLINED_FUNCTION_20_14(v17, v18);
        OUTLINED_FUNCTION_5_29();
        (*(v19 + 104))();
        swift_willThrow();
        break;
    }
  }

  OUTLINED_FUNCTION_8_10();
}

void sub_220F3CCA0()
{
  OUTLINED_FUNCTION_5_0();
  memcpy(__dst, v0, sizeof(__dst));
  v2 = sub_220E435CC(__dst);
  v3 = sub_220E22B0C(__dst);
  switch(v2)
  {
    case 1:
      memcpy(v8, v3, sizeof(v8));
      OUTLINED_FUNCTION_14_16();
      sub_220FC1330();
      if (!v1)
      {
        OUTLINED_FUNCTION_14_16();
        sub_220F3D2F0();
        sub_220FC27A0();
      }

      break;
    case 2:
      memcpy(v7, v3, sizeof(v7));
      OUTLINED_FUNCTION_14_16();
      sub_220FC1330();
      if (!v1)
      {
        OUTLINED_FUNCTION_14_16();
        sub_220F3D2F0();
      }

      break;
    case 3:
      memcpy(v9, v3, sizeof(v9));
      OUTLINED_FUNCTION_14_16();
      sub_220FC1330();
      if (!v1)
      {
        OUTLINED_FUNCTION_14_16();
        sub_220F3D0D4();
        sub_220F30094();
        sub_220F3D700();
        sub_220F3D754();
        sub_220F3D644();
        sub_220F3D698();
        goto LABEL_10;
      }

      break;
    case 4:
      memcpy(v10, v3, sizeof(v10));
      OUTLINED_FUNCTION_14_16();
      sub_220FC1330();
      if (!v1)
      {
        OUTLINED_FUNCTION_14_16();
        sub_220F3D2F0();
        sub_220FC0EA0();
        OUTLINED_FUNCTION_16_14();
        sub_220F3D600(v4);
        OUTLINED_FUNCTION_18_13(&unk_27CF9F148);
        OUTLINED_FUNCTION_17_13(&unk_27CF9F150);
        sub_220F3D644();
        sub_220F3D698();
LABEL_10:
        sub_220FC25D0();
      }

      break;
    default:
      memcpy(v6, v3, sizeof(v6));
      OUTLINED_FUNCTION_14_16();
      sub_220FC1330();
      if (!v1)
      {
        OUTLINED_FUNCTION_14_16();
        sub_220F3D0D4();
      }

      break;
  }

  OUTLINED_FUNCTION_8_10();
}

void *sub_220F3CFC4()
{
  OUTLINED_FUNCTION_21_11();
  result = sub_220FC1320();
  if (!v0)
  {
    OUTLINED_FUNCTION_12_18();
    v3 = v10;
    OUTLINED_FUNCTION_13_17();
    sub_220FC3370();
    v4 = v8;
    OUTLINED_FUNCTION_13_17();
    sub_220F3DB34(v5);
    v7 = v9;
    memcpy(&v6[7], __src, 0x60uLL);
    *v1 = v11;
    *(v1 + 8) = v3;
    *(v1 + 16) = v4;
    *(v1 + 24) = v7;
    return memcpy((v1 + 25), v6, 0x67uLL);
  }

  return result;
}

uint64_t sub_220F3D0D4()
{
  OUTLINED_FUNCTION_6_24();
  result = sub_220FC1330();
  if (!v0)
  {
    OUTLINED_FUNCTION_4_37();
    sub_220FC1330();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F128);
    OUTLINED_FUNCTION_4_37();
    sub_220FC3380();
    OUTLINED_FUNCTION_10_21();
    return sub_220F3D8F4();
  }

  return result;
}

uint64_t sub_220F3D1AC()
{
  OUTLINED_FUNCTION_21_11();
  result = sub_220FC1320();
  if (!v0)
  {
    v3 = v12;
    OUTLINED_FUNCTION_12_18();
    v4 = v10;
    OUTLINED_FUNCTION_12_18();
    v5 = v9;
    OUTLINED_FUNCTION_13_17();
    sub_220F3CFC4();
    memcpy(__dst, __src, sizeof(__dst));
    OUTLINED_FUNCTION_13_17();
    sub_220FC3370();
    *v1 = v3;
    *(v1 + 8) = v4;
    *(v1 + 16) = v5;
    result = memcpy((v1 + 24), __dst, 0x80uLL);
    *(v1 + 152) = v6;
    *(v1 + 160) = v7;
  }

  return result;
}

uint64_t sub_220F3D2F0()
{
  OUTLINED_FUNCTION_6_24();
  result = sub_220FC1330();
  if (!v0)
  {
    OUTLINED_FUNCTION_4_37();
    sub_220FC1330();
    OUTLINED_FUNCTION_4_37();
    sub_220FC1330();
    OUTLINED_FUNCTION_10_21();
    sub_220F3D0D4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F128);
    OUTLINED_FUNCTION_4_37();
    return sub_220FC3380();
  }

  return result;
}

uint64_t sub_220F3D3F0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_220FC02B0();
  OUTLINED_FUNCTION_6();
  v5 = v4;
  MEMORY[0x28223BE20](v6, v7);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = v19 - v12;
  result = sub_220FC0160();
  if (!v1)
  {
    sub_220FC0160();
    sub_220FC1320();
    v15 = v19[1];
    sub_220FC1320();
    v16 = v19[0];
    v17 = *(v5 + 32);
    v17(a1, v13, v3);
    v18 = type metadata accessor for WeatherMapOverlayTimeConstraints();
    result = (v17)(a1 + v18[5], v9, v3);
    *(a1 + v18[6]) = v15;
    *(a1 + v18[7]) = v16;
  }

  return result;
}

unint64_t sub_220F3D600(uint64_t a1)
{
  result = OUTLINED_FUNCTION_27_11(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_220F3D644()
{
  result = qword_27CF9F158;
  if (!qword_27CF9F158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9F158);
  }

  return result;
}

unint64_t sub_220F3D698()
{
  result = qword_27CF9F160;
  if (!qword_27CF9F160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9F160);
  }

  return result;
}

unint64_t sub_220F3D700()
{
  result = qword_27CF9F168;
  if (!qword_27CF9F168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9F168);
  }

  return result;
}

unint64_t sub_220F3D754()
{
  result = qword_27CF9F170;
  if (!qword_27CF9F170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9F170);
  }

  return result;
}

uint64_t sub_220F3D834()
{
  OUTLINED_FUNCTION_15_10();
  result = sub_220FC0170();
  if (!v0)
  {
    type metadata accessor for WeatherMapOverlayTimeConstraints();
    OUTLINED_FUNCTION_10_21();
    sub_220FC0170();
    OUTLINED_FUNCTION_10_21();
    sub_220FC1330();
    OUTLINED_FUNCTION_10_21();
    return sub_220FC1330();
  }

  return result;
}

uint64_t sub_220F3D8F4()
{
  OUTLINED_FUNCTION_15_10();
  result = sub_220FC27A0();
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CFD0);
    OUTLINED_FUNCTION_7_21();
    sub_220FC3380();
    OUTLINED_FUNCTION_10_21();
    sub_220F3DE04();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F1C0);
    sub_220F3DF54();
    sub_220F3DFA8();
    sub_220FC3380();
    OUTLINED_FUNCTION_7_21();
    sub_220FC3380();
    sub_220F3DFFC();
    sub_220F3E050();
    OUTLINED_FUNCTION_61_4();
    sub_220FC29A0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F1C8);
    OUTLINED_FUNCTION_1_57();
    sub_220F3E0A4(v2);
    OUTLINED_FUNCTION_0_67();
    sub_220F3E0A4(v3);
    OUTLINED_FUNCTION_7_21();
    sub_220FC3380();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F1D0);
    sub_220F3E108();
    sub_220F3E15C();
    OUTLINED_FUNCTION_7_21();
    sub_220FC3380();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F1D8);
    OUTLINED_FUNCTION_4_37();
    return sub_220FC2D20();
  }

  return result;
}

uint64_t sub_220F3DB34@<X0>(uint64_t a1@<X8>)
{
  result = sub_220FC2790();
  if (!v1)
  {
    v5 = result;
    v6 = v4;
    OUTLINED_FUNCTION_34_7();
    sub_220FC3370();
    OUTLINED_FUNCTION_34_7();
    v7 = sub_220F3DE90();
    sub_220F3DF54();
    sub_220F3DFA8();
    OUTLINED_FUNCTION_28_11();
    sub_220FC3370();
    OUTLINED_FUNCTION_34_7();
    sub_220FC3370();
    sub_220F3DFFC();
    sub_220F3E050();
    OUTLINED_FUNCTION_28_11();
    v10 = sub_220FC2990();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F198);
    OUTLINED_FUNCTION_1_57();
    sub_220F3E0A4(v8);
    OUTLINED_FUNCTION_0_67();
    sub_220F3E0A4(v9);
    sub_220FC3370();
    sub_220F3E108();
    sub_220F3E15C();
    OUTLINED_FUNCTION_28_11();
    sub_220FC3370();
    OUTLINED_FUNCTION_34_7();
    result = sub_220FC2D10();
    *a1 = v5;
    *(a1 + 8) = v6;
    *(a1 + 16) = v15;
    *(a1 + 24) = v16;
    *(a1 + 32) = v7;
    *(a1 + 33) = v18;
    *(a1 + 40) = v13;
    *(a1 + 48) = v14;
    *(a1 + 56) = v10;
    *(a1 + 64) = v12;
    *(a1 + 72) = v17;
    *(a1 + 80) = v11;
  }

  return result;
}

uint64_t sub_220F3DE90()
{
  result = OUTLINED_FUNCTION_32_8();
  if (!v0)
  {
    result = v6 - 1;
    if (result >= 3)
    {
      sub_220FC1240();
      OUTLINED_FUNCTION_2_40();
      sub_220F3D600(v2);
      v3 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_20_14(v3, v4);
      OUTLINED_FUNCTION_5_29();
      (*(v5 + 104))();
      return swift_willThrow();
    }
  }

  return result;
}

unint64_t sub_220F3DF54()
{
  result = qword_27CF9F178;
  if (!qword_27CF9F178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9F178);
  }

  return result;
}

unint64_t sub_220F3DFA8()
{
  result = qword_27CF9F180;
  if (!qword_27CF9F180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9F180);
  }

  return result;
}

unint64_t sub_220F3DFFC()
{
  result = qword_27CF9F188;
  if (!qword_27CF9F188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9F188);
  }

  return result;
}

unint64_t sub_220F3E050()
{
  result = qword_27CF9F190;
  if (!qword_27CF9F190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9F190);
  }

  return result;
}

unint64_t sub_220F3E0A4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_27_11(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9F198);
    sub_220F3DFFC();
    sub_220F3E050();
    result = OUTLINED_FUNCTION_26_13();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_220F3E108()
{
  result = qword_27CF9F1B0;
  if (!qword_27CF9F1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9F1B0);
  }

  return result;
}

unint64_t sub_220F3E15C()
{
  result = qword_27CF9F1B8;
  if (!qword_27CF9F1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9F1B8);
  }

  return result;
}

uint64_t sub_220F3E1B0()
{
  OUTLINED_FUNCTION_30_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CFD0);
  OUTLINED_FUNCTION_14_16();
  result = sub_220FC3380();
  if (!v0)
  {
    OUTLINED_FUNCTION_14_16();
    sub_220FC27A0();
    OUTLINED_FUNCTION_14_16();
    sub_220FC1330();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F1E0);
    OUTLINED_FUNCTION_14_16();
    return sub_220FC3380();
  }

  return result;
}

uint64_t sub_220F3E2B0@<X0>(uint64_t a1@<X8>)
{
  result = sub_220FC3370();
  if (!v1)
  {
    v4 = sub_220FC2790();
    v6 = v5;
    OUTLINED_FUNCTION_25_14();
    result = sub_220FC3370();
    *a1 = v9;
    *(a1 + 8) = v10;
    *(a1 + 16) = v4;
    *(a1 + 24) = v6;
    *(a1 + 32) = v11;
    *(a1 + 40) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

uint64_t sub_220F3E520()
{
  result = OUTLINED_FUNCTION_32_8();
  if (!v0)
  {
    result = v6 - 1;
    if ((v6 - 1) >= 4u)
    {
      sub_220FC1240();
      OUTLINED_FUNCTION_2_40();
      sub_220F3D600(v2);
      v3 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_20_14(v3, v4);
      OUTLINED_FUNCTION_5_29();
      (*(v5 + 104))();
      return swift_willThrow();
    }
  }

  return result;
}

unint64_t OUTLINED_FUNCTION_17_13(uint64_t a1)
{

  return sub_220F3D600(a1);
}

unint64_t OUTLINED_FUNCTION_18_13(uint64_t a1)
{

  return sub_220F3D600(a1);
}

uint64_t OUTLINED_FUNCTION_23_12()
{

  return sub_220FC3370();
}

uint64_t OUTLINED_FUNCTION_26_13()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_31_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{

  return sub_220EAF8B4(v23, v22, v21, v20, v19, a19);
}

uint64_t OUTLINED_FUNCTION_32_8()
{

  return sub_220FC1320();
}

uint64_t OUTLINED_FUNCTION_33_6()
{

  return sub_220FC25C0();
}

uint64_t OUTLINED_FUNCTION_41_4()
{

  return sub_220FC3380();
}

uint64_t OUTLINED_FUNCTION_42_5()
{

  return sub_220FC1320();
}

id static WeatherMapBackground.backgroundColor(for:)(_BYTE *a1)
{
  if (*a1 == 5)
  {
    if (qword_27CF9C100 != -1)
    {
      swift_once();
    }

    v1 = qword_27CF9F1F8;

    return v1;
  }

  else
  {
    v3 = objc_allocWithZone(MEMORY[0x277D75348]);
    return sub_220F3EA48(sub_220F3EA44, 0);
  }
}

id sub_220F3E8B0()
{
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.325 green:0.333 blue:0.349 alpha:1.0];
  qword_27CF9F1E8 = result;
  return result;
}

id sub_220F3E900()
{
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.957 green:0.98 blue:1.0 alpha:1.0];
  qword_27CF9F1F0 = result;
  return result;
}

id sub_220F3E94C()
{
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.0705882353 green:0.376470588 blue:0.62745098 alpha:1.0];
  qword_27CF9F1F8 = result;
  return result;
}

id sub_220F3E99C()
{
  if (sub_220F22204() == 2)
  {
    if (qword_27CF9C0F0 != -1)
    {
      swift_once();
    }

    v0 = &qword_27CF9F1E8;
  }

  else
  {
    if (qword_27CF9C0F8 != -1)
    {
      swift_once();
    }

    v0 = &qword_27CF9F1F0;
  }

  v1 = *v0;

  return v1;
}

id sub_220F3EA48(uint64_t a1, uint64_t a2)
{
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_220F3EB98;
  v6[3] = &block_descriptor_21;
  v3 = _Block_copy(v6);
  v4 = [v2 initWithDynamicProvider_];
  _Block_release(v3);

  return v4;
}

_BYTE *storeEnumTagSinglePayload for WeatherMapBackground(_BYTE *result, int a2, int a3)
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

id sub_220F3EB98(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t View.weatherMapShouldSuspendSnapshotUpdates(_:)()
{
  swift_getKeyPath();
  sub_220FC20A0();
}

uint64_t sub_220F3EC8C()
{
  sub_220F3EDC0();
  sub_220FC1CE0();
  return v1;
}

uint64_t sub_220F3ECC8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_220F3EC8C();
  *a1 = result & 1;
  return result;
}

unint64_t sub_220F3ED5C()
{
  result = qword_2812C5E28;
  if (!qword_2812C5E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9F200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C5E28);
  }

  return result;
}

unint64_t sub_220F3EDC0()
{
  result = qword_2812C5E40;
  if (!qword_2812C5E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C5E40);
  }

  return result;
}

uint64_t sub_220F3EE24@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_4_1();
  *a1 = result & 1;
  return result;
}

void sub_220F3EE74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_220FBFC00();
  OUTLINED_FUNCTION_6();
  v9 = v8;
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220F3EF88(a2, v13);
  v14 = sub_220FBFBB0();
  (*(v9 + 8))(v13, v7);
  v15.receiver = v3;
  v15.super_class = ObjectType;
  objc_msgSendSuper2(&v15, sel_storeCachedResponse_forRequest_, a1, v14);
}

uint64_t sub_220F3EF88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_220FBFB90();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_220FBFC00();
  (*(*(v9 - 8) + 16))(a2, a1, v9);
  (*(v5 + 104))(v8, *MEMORY[0x277D7AB80], v4);
  sub_220FBFB80();
  (*(v5 + 8))(v8, v4);
  sub_220FBFBF0();
}

id sub_220F3F1E0(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_220FBFC00();
  OUTLINED_FUNCTION_6();
  v7 = v6;
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220F3EF88(a1, v11);
  v12 = sub_220FBFBB0();
  (*(v7 + 8))(v11, v5);
  v15.receiver = v2;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, sel_cachedResponseForRequest_, v12);

  return v13;
}

id sub_220F3F3F4(uint64_t a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v6 = sub_220FBFC00();
  OUTLINED_FUNCTION_6();
  v8 = v7;
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = MEMORY[0x28223BE20](v13, v14).n128_u64[0];
  v17 = &v21 - v16;
  v18 = [a2 originalRequest];
  if (v18)
  {
    v19 = v18;
    sub_220FBFBC0();

    (*(v8 + 32))(v17, v12, v6);
    sub_220F3EE74(a1, v17);
    return (*(v8 + 8))(v17, v6);
  }

  else
  {
    v21.receiver = v2;
    v21.super_class = ObjectType;
    return objc_msgSendSuper2(&v21, sel_storeCachedResponse_forDataTask_, a1, a2);
  }
}

uint64_t sub_220F3F5E4()
{
  OUTLINED_FUNCTION_19();
  v1[21] = v2;
  v1[22] = v0;
  v1[23] = swift_getObjectType();
  v3 = sub_220FBFC00();
  v1[24] = v3;
  v1[25] = *(v3 - 8);
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_220F3F6B8, 0, 0);
}

uint64_t sub_220F3F6B8()
{
  v1 = [*(v0 + 168) originalRequest];
  if (v1)
  {
    v2 = v1;
    v4 = *(v0 + 208);
    v3 = *(v0 + 216);
    v5 = *(v0 + 192);
    v6 = *(v0 + 200);
    sub_220FBFBC0();

    (*(v6 + 32))(v3, v4, v5);
    v7 = sub_220F3F1E0(v3);
    (*(v6 + 8))(v3, v5);

    v8 = *(v0 + 8);

    return v8(v7);
  }

  else
  {
    v10 = v0 + 16;
    v11 = *(v0 + 168);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 160;
    *(v0 + 24) = sub_220F3F8BC;
    v15 = *(v0 + 176);
    v12 = swift_continuation_init();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F208);
    *(v0 + 144) = v15;
    v14 = (v0 + 144);
    v14[-1].super_class = v13;
    v14[-4].receiver = MEMORY[0x277D85DD0];
    v14[-4].super_class = 1107296256;
    v14[-3].receiver = sub_220F3F9FC;
    v14[-3].super_class = &block_descriptor_22;
    v14[-2].receiver = v12;
    [(objc_super *)v14 getCachedResponseForDataTask:v11 completionHandler:?];

    return MEMORY[0x282200938](v10);
  }
}

uint64_t sub_220F3F8BC()
{
  OUTLINED_FUNCTION_19();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_220F3F990, 0, 0);
}

uint64_t sub_220F3F990()
{
  OUTLINED_FUNCTION_19();
  v1 = *(v0 + 160);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_220F3F9FC(uint64_t a1, void *a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = a2;

  return sub_220F3FA48(v3, a2);
}

uint64_t sub_220F3FAF0(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_220F3FBB4;

  return sub_220F3F5E4();
}

uint64_t sub_220F3FBB4()
{
  OUTLINED_FUNCTION_32();
  v2 = v1;
  OUTLINED_FUNCTION_27_0();
  v4 = v3[4];
  v5 = v3[3];
  v6 = v3[2];
  v7 = *v0;
  OUTLINED_FUNCTION_8();
  *v8 = v7;

  (v4)[2](v4, v2);
  _Block_release(v4);

  OUTLINED_FUNCTION_32_0();

  return v9();
}

uint64_t sub_220F3FD04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB90);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v12 - v6;
  v8 = sub_220FC2AE0();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_220FD5170;
  v10[5] = v9;
  sub_220F40618(0, 0, v7, &unk_220FD5180, v10);
}

id sub_220F3FE14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  if (a4)
  {
    v10 = sub_220FC26C0();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v5;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, sel_initWithMemoryCapacity_diskCapacity_diskPath_, a1, a2, v10);

  return v11;
}

id sub_220F3FF14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D288);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v17 - v11;
  sub_220E4D214(a3, &v17 - v11, &qword_27CF9D288);
  v13 = sub_220FC0090();
  v14 = 0;
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) != 1)
  {
    v14 = sub_220FC0050();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v17.receiver = v4;
  v17.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v17, sel_initWithMemoryCapacity_diskCapacity_directoryURL_, a1, a2, v14);

  sub_220E45374(a3, &qword_27CF9D288);
  return v15;
}

id sub_220F40154()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_220F401D4()
{
  OUTLINED_FUNCTION_32();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_220E5B0F0;

  return sub_220F3FAF0(v2, v3, v4);
}

uint64_t sub_220F40284(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_220E5B490;

  return v6();
}

uint64_t sub_220F4036C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_220E5B490;

  return sub_220F40284(v2, v3, v4);
}

uint64_t sub_220F4042C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_220E5B0F0;

  return v7();
}

uint64_t objectdestroy_3Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_220F40554(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_43(v6);
  *v7 = v8;
  v7[1] = sub_220E5B490;

  return sub_220F4042C(a1, v3, v4, v5);
}

uint64_t sub_220F40618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB90);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v23 - v11;
  sub_220E4D214(a3, v23 - v11, &unk_27CF9EB90);
  v13 = sub_220FC2AE0();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_220E45374(v12, &unk_27CF9EB90);
  }

  else
  {
    sub_220FC2AD0();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v14 = sub_220FC2A30();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = sub_220FC2770() + 32;
      v18 = swift_allocObject();
      *(v18 + 16) = a4;
      *(v18 + 24) = a5;

      if (v16 | v14)
      {
        v24[0] = 0;
        v24[1] = 0;
        v19 = v24;
        v24[2] = v14;
        v24[3] = v16;
      }

      else
      {
        v19 = 0;
      }

      v23[1] = 7;
      v23[2] = v19;
      v23[3] = v17;
      v21 = swift_task_create();

      sub_220E45374(a3, &unk_27CF9EB90);

      return v21;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_220E45374(a3, &unk_27CF9EB90);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_220F408F4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_220F409EC;

  return v6(a1);
}

uint64_t sub_220F409EC()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_27_0();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  OUTLINED_FUNCTION_32_0();

  return v3();
}

uint64_t sub_220F40AD0()
{
  OUTLINED_FUNCTION_32();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_5(v1);

  return v4(v3);
}

uint64_t sub_220F40B64()
{
  OUTLINED_FUNCTION_32();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_5(v1);

  return v4(v3);
}

uint64_t sub_220F40C10(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_220FC34C0();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_220F40C34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_220F40C98(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t sub_220F40CBC(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

uint64_t sub_220F40D14(char a1)
{
  result = 212;
  switch(a1)
  {
    case 1:
      result = 260;
      break;
    case 2:
      result = 253;
      break;
    case 3:
      result = 10;
      break;
    case 4:
      result = 20;
      break;
    case 5:
      result = 30;
      break;
    case 6:
      return result;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t sub_220F40D8C()
{
  sub_220FC1130();
  if ((*(v0 + 48) & 2) != 0)
  {
    if ([*(v0 + 56) newTextureWithDescriptor_])
    {
      OUTLINED_FUNCTION_1_58();
      swift_beginAccess();
      sub_220F43880(0, *(v0 + 32));
      swift_unknownObjectRetain();
      OUTLINED_FUNCTION_0_68();
      v6 = OUTLINED_FUNCTION_3_39();
      sub_220F430AC(v6, v7, v8, v9, v10);
      swift_endAccess();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_58();
    swift_beginAccess();
    sub_220F43880(0, *(v0 + 32));
    swift_unknownObjectRetain();
    OUTLINED_FUNCTION_0_68();
    v1 = OUTLINED_FUNCTION_3_39();
    sub_220F430AC(v1, v2, v3, v4, v5);
    swift_endAccess();
  }

  return sub_220FC1140();
}

uint64_t sub_220F40E94()
{
  v1 = v0;
  sub_220FC1130();
  if (!sub_220F41D44() && (*(v0 + 48) & 1) != 0)
  {
    sub_220F418C8(0, 1);
  }

  OUTLINED_FUNCTION_1_58();
  swift_beginAccess();
  v2 = sub_220F42274();
  result = swift_endAccess();
  if (!v2)
  {
    if (qword_27CF9BFC0 != -1)
    {
      swift_once();
    }

    v11 = sub_220FC17A0();
    __swift_project_value_buffer(v11, qword_27CF9CB20);

    v12 = sub_220FC1780();
    v13 = sub_220FC2E10();

    if (os_log_type_enabled(v12, v13))
    {
      v2 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v22[0] = v14;
      *v2 = 136446210;
      *(v2 + 4) = sub_220E20FF8(*(v1 + 72), *(v1 + 80), v22);
      OUTLINED_FUNCTION_6_25();
      _os_log_impl(v15, v16, v17, v18, v19, v20);
      __swift_destroy_boxed_opaque_existential_0(v14);
      OUTLINED_FUNCTION_4_38();
      MEMORY[0x223D9DDF0]();
      OUTLINED_FUNCTION_4_38();
      MEMORY[0x223D9DDF0]();
    }

    sub_220F43A48();
    swift_allocError();
    *v21 = 1;
    swift_willThrow();
    sub_220FC1140();
    return v2;
  }

  if ((*(v0 + 48) & 4) == 0)
  {
LABEL_12:
    sub_220FC1140();
    return v2;
  }

  v4 = *(v0 + 96);
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
    goto LABEL_20;
  }

  *(v0 + 96) = v6;
  result = sub_220F41D44();
  v7 = *(v0 + 104);
  v5 = __OFADD__(v7, result);
  v8 = v7 + result;
  if (v5)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  *(v0 + 104) = v8;
  v9 = *(v0 + 96);
  if ((v9 & 0x3F) != 0)
  {
    goto LABEL_12;
  }

  if (v9)
  {
    v10 = v8 / v9;
    *(v0 + 96) = 0;
    *(v0 + 104) = v10;
    if (*(v0 + 24) / 2 < v10)
    {
      sub_220F422D8();
    }

    goto LABEL_12;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_220F410E0@<X0>(uint64_t *a1@<X8>)
{
  result = j__OUTLINED_FUNCTION_0_6();
  *a1 = result;
  return result;
}

uint64_t sub_220F41108@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_220F40C88(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_220F41138@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_220E400B8(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_220F41168@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_220F40C90(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_220F411A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_220F40C98(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_220F411D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_220F40CBC(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_220F41220@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_220F40CE4(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_220F41290@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_220F40C34(a1);
  *a2 = result;
  return result;
}

void *sub_220F412B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11)
{
  v12 = v11;
  v50 = a8;
  v51 = a6;
  v52 = a7;
  v57 = a5;
  v58 = a11;
  v54 = a10;
  v56 = a9;
  v16 = *v11;
  v48 = a1;
  v49 = v16;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF70);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v17, v18);
  v55 = &v45 - v19;
  v20 = sub_220FC1160();
  MEMORY[0x28223BE20](v20, v21);
  v22 = MEMORY[0x277D84F90];
  v11[4] = MEMORY[0x277D84F90];
  v11[5] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E310);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_220FC8E30;
  sub_220FC1150();
  v60 = v23;
  sub_220F4221C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E318);
  sub_220E1E198();
  v24 = v58;
  sub_220FC3430();
  sub_220FC1180();
  swift_allocObject();
  v25 = v48;
  v11[8] = sub_220FC1170();
  v11[12] = 0;
  v11[13] = 0;
  v11[11] = 0;
  v45 = a2;
  v46 = a3;
  v47 = a4;
  v26 = sub_220F41818(v25, a2, a3, a4, v57, v50);
  v60 = v26;
  if (v24)
  {

    v24(&v60);
    sub_220E2DD2C(v24);
    v26 = v60;
  }

  v11[2] = v26;
  v11[3] = 0;
  v27 = v52;
  v11[6] = v52;
  v11[7] = v25;
  v28 = v54;
  v11[9] = v56;
  v11[10] = v28;
  v29 = v26;
  swift_unknownObjectRetain();

  sub_220F418C8(v51, 0);
  v30 = v55;
  if ((v27 & 4) != 0)
  {
    sub_220F41C0C();
  }

  if (qword_27CF9C000 != -1)
  {
    OUTLINED_FUNCTION_0_39();
  }

  v31 = __swift_project_value_buffer(v53, qword_27CF9CBE0);
  sub_220E335D0(v31, v30);
  v32 = sub_220FC17A0();
  if (__swift_getEnumTagSinglePayload(v30, 1, v32) == 1)
  {

    sub_220E2DD2C(v24);
    swift_unknownObjectRelease();

    sub_220E45DAC(v30);
  }

  else
  {
    swift_retain_n();

    v33 = sub_220FC1780();
    v34 = sub_220FC2E30();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v53 = v29;
      v36 = v35;
      v52 = swift_slowAlloc();
      v59 = v52;
      *v36 = 136447490;
      v37 = sub_220E20FF8(v56, v28, &v59);

      *(v36 + 4) = v37;
      *(v36 + 12) = 2082;
      v38 = MEMORY[0x223D9C390](v45);
      v40 = sub_220E20FF8(v38, v39, &v59);

      *(v36 + 14) = v40;
      *(v36 + 22) = 2048;
      v41 = v47;
      *(v36 + 24) = v46;
      *(v36 + 32) = 2048;
      *(v36 + 34) = v41;
      *(v36 + 42) = 2048;
      *(v36 + 44) = v57;
      *(v36 + 52) = 2048;
      v42 = sub_220F41D44();

      *(v36 + 54) = v42;

      _os_log_impl(&dword_220E15000, v33, v34, "OverlayTexturePool: %{public}s: Initialized (%{public}s, %ldx%ldx%ld)... [%ld free]", v36, 0x3Eu);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_4_38();
      MEMORY[0x223D9DDF0]();
      OUTLINED_FUNCTION_4_38();
      MEMORY[0x223D9DDF0]();
      swift_unknownObjectRelease();

      sub_220E2DD2C(v58);
    }

    else
    {

      sub_220E2DD2C(v58);

      swift_unknownObjectRelease();
    }

    OUTLINED_FUNCTION_12();
    (*(v43 + 8))(v30, v32);
  }

  return v12;
}

id sub_220F41818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = [objc_opt_self() texture2DDescriptorWithPixelFormat:a2 width:a3 height:a4 mipmapped:0];
  swift_getObjectType();
  [v7 setStorageMode_];
  [v7 setUsage_];
  return v7;
}

uint64_t sub_220F418C8(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF70);
  result = MEMORY[0x28223BE20](v6, v7);
  v10 = &v28[-1] - v9;
  v11 = v3[3];
  if (a2)
  {
    v12 = v3[3];
  }

  else
  {
    v12 = a1;
  }

  if (__OFADD__(v11, v12))
  {
LABEL_24:
    __break(1u);
  }

  else
  {
    if (v11 + v12 >= 129)
    {
      v12 = 128 - v11;
      if (__OFSUB__(128, v11))
      {
        __break(1u);
        return result;
      }
    }

    if ((v12 & 0x8000000000000000) == 0)
    {
      v27 = v10;
      if (v12)
      {
        v13 = v3[7];
        v14 = v3[2];
        for (i = v12; i; --i)
        {
          if ([v13 newTextureWithDescriptor_])
          {
            swift_beginAccess();
            v16 = swift_unknownObjectRetain();
            MEMORY[0x223D9BEA0](v16);
            if (*((v3[4] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v3[4] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_220FC29C0();
            }

            sub_220FC29F0();
            swift_endAccess();
            swift_unknownObjectRelease();
            v17 = v3[3];
            v18 = __OFADD__(v17, 1);
            v19 = v17 + 1;
            if (v18)
            {
              __break(1u);
              goto LABEL_24;
            }

            v3[3] = v19;
          }
        }
      }

      if (qword_27CF9C000 == -1)
      {
        goto LABEL_17;
      }

      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_26:
  swift_once();
LABEL_17:
  v20 = __swift_project_value_buffer(v6, qword_27CF9CBE0);
  v21 = v27;
  sub_220E335D0(v20, v27);
  v22 = sub_220FC17A0();
  if (__swift_getEnumTagSinglePayload(v21, 1, v22) == 1)
  {
    return sub_220E45DAC(v21);
  }

  v23 = sub_220FC1780();
  v24 = sub_220FC2E30();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v28[0] = v26;
    *v25 = 136446978;
    *(v25 + 4) = sub_220E20FF8(v3[9], v3[10], v28);
    *(v25 + 12) = 2048;
    *(v25 + 14) = v12;
    *(v25 + 22) = 2048;
    *(v25 + 24) = v3[3];

    *(v25 + 32) = 2048;
    *(v25 + 34) = 128;
    _os_log_impl(&dword_220E15000, v23, v24, "OverlayTexturePool: %{public}s: Grow pool by %ld requested, capacity=%ld, limit=%ld", v25, 0x2Au);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x223D9DDF0](v26, -1, -1);
    MEMORY[0x223D9DDF0](v25, -1, -1);
  }

  else
  {
  }

  return (*(*(v22 - 8) + 8))(v21, v22);
}

void sub_220F41C0C()
{
  if (!*(v0 + 88))
  {
    v1 = [objc_opt_self() defaultCenter];
    v2 = *MEMORY[0x277D76670];
    v3 = swift_allocObject();
    swift_weakInit();
    v6[4] = sub_220F42C44;
    v6[5] = v3;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 1107296256;
    v6[2] = sub_220F1352C;
    v6[3] = &block_descriptor_23;
    v4 = _Block_copy(v6);

    v5 = [v1 addObserverForName:v2 object:0 queue:0 usingBlock:v4];
    _Block_release(v4);

    *(v0 + 88) = v5;
    swift_unknownObjectRelease();
  }
}

uint64_t sub_220F41D44()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  if (v1 >> 62)
  {
    return sub_220FC34C0();
  }

  else
  {
    return *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_220F41D9C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF70);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v21 - v5;
  sub_220F41FB0();
  if (qword_27CF9C000 != -1)
  {
    OUTLINED_FUNCTION_0_39();
  }

  v7 = __swift_project_value_buffer(v2, qword_27CF9CBE0);
  sub_220E335D0(v7, v6);
  v8 = sub_220FC17A0();
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    sub_220E45DAC(v6);
  }

  else
  {

    v9 = sub_220FC1780();
    v10 = sub_220FC2E30();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v22 = v12;
      *v11 = 136446210;
      *(v11 + 4) = sub_220E20FF8(*(v1 + 72), *(v1 + 80), &v22);
      OUTLINED_FUNCTION_6_25();
      _os_log_impl(v13, v14, v15, v16, v17, v18);
      __swift_destroy_boxed_opaque_existential_0(v12);
      OUTLINED_FUNCTION_4_38();
      MEMORY[0x223D9DDF0]();
      OUTLINED_FUNCTION_4_38();
      MEMORY[0x223D9DDF0]();
    }

    OUTLINED_FUNCTION_12();
    (*(v19 + 8))(v6, v8);
  }

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v1;
}

void sub_220F41FB0()
{
  v1 = *(v0 + 88);
  if (v1)
  {
    v2 = objc_opt_self();
    swift_unknownObjectRetain();
    v3 = [v2 defaultCenter];
    [v3 removeObserver_];

    swift_unknownObjectRelease();
    *(v0 + 88) = 0;

    swift_unknownObjectRelease();
  }
}

uint64_t sub_220F42054()
{
  sub_220F41D9C();

  return MEMORY[0x2821FE8D8](v0, 112, 7);
}

unint64_t sub_220F420C0()
{
  result = qword_27CF9F210;
  if (!qword_27CF9F210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9F210);
  }

  return result;
}

unint64_t sub_220F42118()
{
  result = qword_27CF9F218;
  if (!qword_27CF9F218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9F218);
  }

  return result;
}

unint64_t sub_220F42170()
{
  result = qword_27CF9F220;
  if (!qword_27CF9F220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9F220);
  }

  return result;
}

unint64_t sub_220F421C8()
{
  result = qword_27CF9F228;
  if (!qword_27CF9F228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9F228);
  }

  return result;
}

unint64_t sub_220F4221C()
{
  result = qword_2812C5FB0;
  if (!qword_2812C5FB0)
  {
    sub_220FC1160();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C5FB0);
  }

  return result;
}

unint64_t sub_220F42274()
{
  if (*v0 >> 62)
  {
    result = sub_220FC34C0();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  result = sub_220F43B28();
  if (!result)
  {
    v2 = sub_220F43CDC(*v0);
    v3 = __OFSUB__(v2, 1);
    result = v2 - 1;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      return sub_220F43A9C(result);
    }
  }

  return result;
}

uint64_t sub_220F422D8()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF70);
  v5 = MEMORY[0x28223BE20](v3, v4);
  v7 = &v31[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v31[-1] - v9;
  v11 = v0[3] / 2;
  v12 = sub_220F41D44();
  if (v11 < v12)
  {
    swift_beginAccess();
    sub_220F42BB8(v11);
    swift_endAccess();
    v13 = v0[3];
    v14 = __OFSUB__(v13, v11);
    v15 = v13 - v11;
    if (!v14)
    {
      v0[3] = v15;
      if (qword_27CF9C000 != -1)
      {
        swift_once();
      }

      v16 = __swift_project_value_buffer(v3, qword_27CF9CBE0);
      sub_220E335D0(v16, v10);
      v17 = sub_220FC17A0();
      if (__swift_getEnumTagSinglePayload(v10, 1, v17) == 1)
      {
        v18 = v10;
        return sub_220E45DAC(v18);
      }

      v26 = sub_220FC1780();
      v27 = sub_220FC2E30();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v31[0] = v29;
        *v28 = 136446978;
        *(v28 + 4) = sub_220E20FF8(v2[9], v2[10], v31);
        *(v28 + 12) = 2048;
        *(v28 + 14) = v11;
        *(v28 + 22) = 2048;
        *(v28 + 24) = v2[3];

        *(v28 + 32) = 2048;
        *(v28 + 34) = 128;
        _os_log_impl(&dword_220E15000, v26, v27, "OverlayTexturePool: %{public}s: Shrink pool by %ld requested, capacity=%ld, limit=%ld", v28, 0x2Au);
        __swift_destroy_boxed_opaque_existential_0(v29);
        MEMORY[0x223D9DDF0](v29, -1, -1);
        MEMORY[0x223D9DDF0](v28, -1, -1);
      }

      else
      {
      }

      return (*(*(v17 - 8) + 8))(v10, v17);
    }

    __break(1u);
    goto LABEL_19;
  }

  v1 = v12;
  if (qword_27CF9C000 != -1)
  {
LABEL_19:
    swift_once();
  }

  v19 = __swift_project_value_buffer(v3, qword_27CF9CBE0);
  sub_220E335D0(v19, v7);
  v20 = sub_220FC17A0();
  if (__swift_getEnumTagSinglePayload(v7, 1, v20) == 1)
  {
    v18 = v7;
    return sub_220E45DAC(v18);
  }

  v22 = sub_220FC1780();
  v23 = sub_220FC2E30();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v31[0] = v25;
    *v24 = 136446722;
    *(v24 + 4) = sub_220E20FF8(v2[9], v2[10], v31);
    *(v24 + 12) = 2048;
    *(v24 + 14) = v11;
    *(v24 + 22) = 2048;
    *(v24 + 24) = v1;
    _os_log_impl(&dword_220E15000, v22, v23, "OverlayTexturePool: %{public}s: Shrink pool by %ld requested, not enough available slots, avail=%ld", v24, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x223D9DDF0](v25, -1, -1);
    MEMORY[0x223D9DDF0](v24, -1, -1);
  }

  return (*(*(v20 - 8) + 8))(v7, v20);
}

uint64_t sub_220F42704(uint64_t a1)
{
  sub_220FC1130();
  OUTLINED_FUNCTION_1_58();
  swift_beginAccess();
  sub_220F43880(0, *(v1 + 40));
  swift_unknownObjectRetain();
  OUTLINED_FUNCTION_0_68();
  sub_220F430AC(0, 0, a1, v3, sub_220F43274);
  swift_endAccess();
  return sub_220FC1140();
}

uint64_t sub_220F427A0()
{
  sub_220FC1130();
  if ((*(v0 + 48) & 2) == 0)
  {
    swift_beginAccess();
    OUTLINED_FUNCTION_7_22();

    v1 = OUTLINED_FUNCTION_3_39();
    sub_220F42DA4(v1, v2, v3);
    swift_endAccess();
LABEL_30:
    *(v0 + 40) = MEMORY[0x277D84F90];

    return sub_220FC1140();
  }

  swift_beginAccess();
  result = sub_220F40C10(*(v0 + 40));
  if (result < 0)
  {
    goto LABEL_33;
  }

  v5 = result;
  if (!result)
  {
    goto LABEL_30;
  }

  v6 = *(v0 + 56);
  v7 = *(v0 + 16);
  while (1)
  {
    v8 = [v6 newTextureWithDescriptor_];
    if (!v8)
    {
      goto LABEL_24;
    }

    v9 = v8;
    OUTLINED_FUNCTION_7_22();
    v10 = *(v0 + 32);
    v11 = v10 >> 62;
    if (v10 >> 62)
    {
      result = sub_220FC34C0();
      if (result < 0)
      {
        goto LABEL_34;
      }

      result = sub_220FC34C0();
      if (result < 0)
      {
        goto LABEL_35;
      }

      result = sub_220FC34C0();
    }

    else
    {
      result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = result + 1;
    if (__OFADD__(result, 1))
    {
      break;
    }

    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *(v0 + 32) = v10;
    if (!isUniquelyReferenced_nonNull_bridgeObject)
    {
      if (v11)
      {
LABEL_15:
        sub_220FC34C0();
      }

LABEL_16:
      v10 = sub_220FC35F0();
      *(v0 + 32) = v10;
      v14 = (v10 & 0xFFFFFFFFFFFFFF8);
      goto LABEL_17;
    }

    if (v11)
    {
      goto LABEL_15;
    }

    v14 = (v10 & 0xFFFFFFFFFFFFFF8);
    if (v12 > *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_16;
    }

LABEL_17:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D960);
    swift_arrayDestroy();
    if (v10 >> 62)
    {
      v15 = sub_220FC34C0();
    }

    else
    {
      v15 = v14[2];
    }

    memmove(v14 + 5, v14 + 4, 8 * v15);
    if (v10 >> 62)
    {
      result = sub_220FC34C0();
    }

    else
    {
      result = v14[2];
    }

    if (__OFADD__(result, 1))
    {
      goto LABEL_32;
    }

    v14[2] = result + 1;
    v14[4] = v9;
    swift_endAccess();
    swift_unknownObjectRelease();
LABEL_24:
    if (!--v5)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_220F42A00()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;

    sub_220FC1130();

    if (qword_27CF9BFC0 != -1)
    {
      swift_once();
    }

    v2 = sub_220FC17A0();
    __swift_project_value_buffer(v2, qword_27CF9CB20);

    v3 = sub_220FC1780();
    v4 = sub_220FC2E30();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v10 = v6;
      *v5 = 136446210;
      v7 = *(v1 + 72);
      v8 = *(v1 + 80);

      v9 = sub_220E20FF8(v7, v8, &v10);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_220E15000, v3, v4, "OverlayTexturePool: %{public}s: Did receive memory warning", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x223D9DDF0](v6, -1, -1);
      MEMORY[0x223D9DDF0](v5, -1, -1);
    }

    sub_220F422D8();
    sub_220FC1140();
  }

  return result;
}

uint64_t sub_220F42BB8(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  v2 = result;
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = sub_220F43CDC(*v1);
  result = sub_220F439FC(v3, -v2, 0);
  if (v4)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  if (v3 < result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  return sub_220F42D00(result, v3);
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_220F42C64(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = sub_220F2F4C4(v2, 0);

    MEMORY[0x223D9CB20](v3 + 4, v2, v1);
    v1 = v4;

    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = sub_220FC34C0();
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

uint64_t sub_220F42D00(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = result;
  v5 = *v2;
  result = sub_220F40C10(*v2);
  if (result < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (__OFSUB__(a2, v4))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = v4 - a2;
  if (__OFSUB__(0, a2 - v4))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = sub_220F40C10(v5);
  v8 = __OFADD__(v7, v6);
  result = v7 + v6;
  if (v8)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_220F39218(result, 1);

  return sub_220F43180(v4, a2, 0);
}

void sub_220F42DA4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = *v3;
  if (sub_220F40C10(*v3) < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = sub_220F40C10(a3);
  v10 = __OFSUB__(v9, v8);
  v11 = v9 - v8;
  if (v10)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v12 = v9;
  v13 = sub_220F40C10(v7);
  v10 = __OFADD__(v13, v11);
  v14 = v13 + v11;
  if (v10)
  {
LABEL_13:
    __break(1u);
    return;
  }

  sub_220F39218(v14, 1);

  sub_220F433DC(a1, a2, v12, a3);
}

uint64_t sub_220F42EA0(uint64_t result, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t *a4, uint64_t a5, void (*a6)(void *, uint64_t, uint64_t))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v12 = result;
  v13 = *v6;
  result = sub_220F40C10(*v6);
  if (result < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (__OFSUB__(a2, v12))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v14 = v12 - a2;
  if (__OFSUB__(0, a2 - v12))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v15 = sub_220F40C10(v13);
  v16 = __OFADD__(v15, v14);
  result = v15 + v14;
  if (!v16)
  {
    a3(result, 1);
    return sub_220F435A4(v12, a2, 0, a4, a5, a6);
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_220F42F68(uint64_t result, uint64_t a2)
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

  sub_220F380B4();
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = (v9 + 16 * v5);
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

  result = sub_220E2DCA8((v9 + 16 * a2), v11 - a2, v10);
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

uint64_t sub_220F430AC(uint64_t result, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v9 = result;
  v10 = *v5;
  result = sub_220F40C10(*v5);
  if (result < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v11 = a2 - v9;
  if (__OFSUB__(a2, v9))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = 1 - v11;
  if (__OFSUB__(1, v11))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v13 = sub_220F40C10(v10);
  v14 = __OFADD__(v13, v12);
  result = v13 + v12;
  if (v14)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  a4(result, 1);

  return a5(v9, a2, 1, a3);
}

uint64_t sub_220F43180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D960);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v9)
  {
    goto LABEL_12;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    goto LABEL_6;
  }

LABEL_16:
  result = sub_220FC34C0();
LABEL_6:
  if (__OFSUB__(result, v6))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_220E28FB0(&v7[v6], result - v6, (v5 + 8 * v3));
  if (v8)
  {
    result = sub_220FC34C0();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_18;
  }

  v4[2] = result + v9;
LABEL_12:
  if (v3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_220F43274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a4;
  v7 = a3;
  v8 = a2;
  v6 = a1;
  v13 = *v5;
  v10 = *v5 & 0xFFFFFFFFFFFFFF8;
  v11 = v10 + 32;
  v9 = v10 + 32 + 8 * a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D960);
  result = swift_arrayDestroy();
  v15 = __OFSUB__(v7, v12);
  v12 = v7 - v12;
  if (v15)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v5 = (v9 + 8 * v7);
  if (!v12)
  {
    goto LABEL_12;
  }

  v9 = v13 >> 62;
  if (!(v13 >> 62))
  {
    result = *(v10 + 16);
    goto LABEL_6;
  }

LABEL_21:
  result = sub_220FC34C0();
LABEL_6:
  if (__OFSUB__(result, v8))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    return result;
  }

  sub_220E28FB0((v11 + 8 * v8), result - v8, v5);
  if (v9)
  {
    result = sub_220FC34C0();
  }

  else
  {
    result = *(v10 + 16);
  }

  if (__OFADD__(result, v12))
  {
    goto LABEL_23;
  }

  *(v10 + 16) = result + v12;
LABEL_12:
  if (v7 < 1)
  {

    return swift_unknownObjectRelease();
  }

  else
  {
    v16 = v10 + 8 * v6;
    *(v16 + 32) = v4;
    if (v16 + 40 < v5)
    {
      result = swift_unknownObjectRetain();
      __break(1u);
    }
  }

  return result;
}

void sub_220F433DC(uint64_t a1, uint64_t a2, uint64_t a3, int64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_22;
  }

  v4 = a4;
  v8 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D960);
  v13 = swift_arrayDestroy();
  v15 = __OFSUB__(v8, v11);
  v11 = v8 - v11;
  if (v15)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v11)
  {
    goto LABEL_12;
  }

  v10 = v12 >> 62;
  if (!(v12 >> 62))
  {
    v16 = v5[2];
    goto LABEL_6;
  }

LABEL_23:
  v16 = sub_220FC34C0();
LABEL_6:
  if (__OFSUB__(v16, v7))
  {
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_220F438D8(v4, sub_220F43B8C);
    goto LABEL_17;
  }

  sub_220E28FB0(&v9[v7], v16 - v7, (v6 + 8 * v8));
  if (v10)
  {
    v13 = sub_220FC34C0();
  }

  else
  {
    v13 = v5[2];
  }

  if (__OFADD__(v13, v11))
  {
    goto LABEL_25;
  }

  v5[2] = v13 + v11;
LABEL_12:
  if (v8 < 1)
  {

    goto LABEL_17;
  }

  MEMORY[0x28223BE20](v13, v14);
  if (v4 < 0 || (v4 & 0x4000000000000000) != 0)
  {
    goto LABEL_26;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) == v8)
  {
    swift_arrayInitWithCopy();
LABEL_17:

    return;
  }

  __break(1u);
}

uint64_t sub_220F435A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, void (*a6)(void *, uint64_t, uint64_t))
{
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_15;
  }

  v8 = a6;
  v6 = a3;
  v10 = a2;
  v14 = *v7;
  v7 = (*v7 & 0xFFFFFFFFFFFFFF8);
  v11 = v7 + 4;
  v9 = &v7[a1 + 4];
  __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  result = swift_arrayDestroy();
  v16 = __OFSUB__(v6, v13);
  v13 = v6 - v13;
  if (v16)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v13)
  {
    goto LABEL_12;
  }

  v12 = v14 >> 62;
  if (!(v14 >> 62))
  {
    result = v7[2];
    goto LABEL_6;
  }

LABEL_16:
  result = sub_220FC34C0();
LABEL_6:
  if (__OFSUB__(result, v10))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8(&v11[v10], result - v10, v9 + 8 * v6);
  if (v12)
  {
    result = sub_220FC34C0();
  }

  else
  {
    result = v7[2];
  }

  if (__OFADD__(result, v13))
  {
    goto LABEL_18;
  }

  v7[2] = result + v13;
LABEL_12:
  if (v6 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_220F436A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a4;
  v7 = a3;
  v8 = a2;
  v6 = a1;
  v13 = *v5;
  v10 = *v5 & 0xFFFFFFFFFFFFFF8;
  v11 = v10 + 32;
  v9 = v10 + 32 + 8 * a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F238);
  result = swift_arrayDestroy();
  v15 = __OFSUB__(v7, v12);
  v12 = v7 - v12;
  if (v15)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v5 = (v9 + 8 * v7);
  if (!v12)
  {
    goto LABEL_12;
  }

  v9 = v13 >> 62;
  if (!(v13 >> 62))
  {
    result = *(v10 + 16);
    goto LABEL_6;
  }

LABEL_21:
  result = sub_220FC34C0();
LABEL_6:
  if (__OFSUB__(result, v8))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    return result;
  }

  sub_220F0CE54((v11 + 8 * v8), result - v8, v5);
  if (v9)
  {
    result = sub_220FC34C0();
  }

  else
  {
    result = *(v10 + 16);
  }

  if (__OFADD__(result, v12))
  {
    goto LABEL_23;
  }

  *(v10 + 16) = result + v12;
LABEL_12:
  if (v7 < 1)
  {
  }

  else
  {
    v16 = v10 + 8 * v6;
    *(v16 + 32) = v4;
    if (v16 + 40 < v5)
    {

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_220F43808(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 == a3)
  {
    if (result)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D960);
      return swift_arrayInitWithCopy();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_220F43880(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = sub_220FC34C0();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t sub_220F438D8(int64_t a1, uint64_t (*a2)(void *, uint64_t))
{
  v3 = sub_220F4393C(a1);
  v4 = v3[2];

  return a2(v3 + 4, v4);
}

void *sub_220F4393C(int64_t a1)
{
  if (a1 < 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v2, MEMORY[0x277D84F90]);
  if (AssociatedObject)
  {
    v4 = AssociatedObject;
  }

  else
  {
    objc_sync_enter(v2);
    v5 = objc_getAssociatedObject(v2, MEMORY[0x277D84F90]);
    if (v5)
    {
      v4 = v5;
      swift_retain_n();
    }

    else
    {
      v4 = sub_220F42C64(a1);

      objc_setAssociatedObject(v2, MEMORY[0x277D84F90], v4, 1);
    }

    objc_sync_exit(v2);
  }

  return v4;
}

uint64_t sub_220F439FC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

unint64_t sub_220F43A48()
{
  result = qword_27CF9F230;
  if (!qword_27CF9F230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9F230);
  }

  return result;
}

uint64_t sub_220F43A9C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_220E98DA8(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v5 - 1 - a1;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1;
    v9 = *(v8 + 0x20);
    sub_220E28FB0((v8 + 40), v7, (v8 + 32));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v9;
  }

  return result;
}

uint64_t sub_220F43B28()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v1 < 0 || (v1 & 0x4000000000000000) != 0)
  {
    result = sub_220E98DA8(v1);
    v1 = result;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    v4 = v3 - 1;
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
    *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OverlayTexturePoolError(_BYTE *result, unsigned int a2, unsigned int a3)
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